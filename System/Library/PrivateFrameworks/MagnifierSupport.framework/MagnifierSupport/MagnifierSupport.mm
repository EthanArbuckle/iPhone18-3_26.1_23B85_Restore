uint64_t sub_257BAF5F8()
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_257ECE810();

    return sub_257ECE240();
  }

  else
  {
    sub_257ECE2E0();
    swift_getWitnessTable();
    sub_257ECE780();
    sub_257ECE240();
    sub_257ED00C0();
    swift_getWitnessTable();
    sub_257ECE2E0();
    swift_getWitnessTable();
    sub_257ECE780();
    return sub_257ECE240();
  }
}

uint64_t sub_257BAF75C()
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_257ECE810();
    sub_257ECE240();
  }

  else
  {
    sub_257ECE2E0();
    swift_getWitnessTable();
    sub_257ECE780();
    sub_257ECE240();
    sub_257ED00C0();
    swift_getWitnessTable();
    sub_257ECE2E0();
    swift_getWitnessTable();
    sub_257ECE780();
    sub_257ECE240();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void *sub_257BAF95C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_257BAF9C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_257ECF500();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_257BAF9F4()
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_257ECE1A0();
  }

  else
  {
    sub_257ECE100();
  }

  return sub_257ECE240();
}

uint64_t sub_257BAFA5C()
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_257ECE1A0();
    sub_257ECE240();
    sub_257BD1BA0();
  }

  else
  {
    sub_257ECE100();
    sub_257ECE240();
    sub_257BD212C(&qword_27F8F4978, MEMORY[0x277CDD8B0]);
  }

  return swift_getWitnessTable();
}

uint64_t sub_257BAFB50(uint64_t a1, int a2)
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

uint64_t sub_257BAFB70(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for MFCardContainerView.Configuration(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MFCardContainerView.Configuration(uint64_t result, int a2, int a3)
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

uint64_t sub_257BAFBF0()
{
  MEMORY[0x259C74920](v0 + 16);

  return swift_deallocObject();
}

uint64_t getEnumTagSinglePayload for PhysicsCategory(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PhysicsCategory(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_257BAFCC0()
{

  return swift_deallocObject();
}

uint64_t sub_257BAFCF8()
{

  return swift_deallocObject();
}

uint64_t sub_257BAFD38()
{

  return swift_deallocObject();
}

uint64_t sub_257BAFD88()
{

  return swift_deallocObject();
}

uint64_t sub_257BAFDCC()
{

  return swift_deallocObject();
}

uint64_t sub_257BAFE14()
{

  return swift_deallocObject();
}

uint64_t sub_257BAFE90()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  }

  return swift_deallocObject();
}

uint64_t sub_257BAFED8()
{

  return swift_deallocObject();
}

uint64_t sub_257BAFF10()
{

  return swift_deallocObject();
}

uint64_t sub_257BAFF48()
{

  return swift_deallocObject();
}

uint64_t sub_257BAFF80()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_257BAFFC4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_257BB0044()
{
  MEMORY[0x259C74920](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_257BB009C()
{
  MEMORY[0x259C74920](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_257BB00E4()
{

  return swift_deallocObject();
}

uint64_t sub_257BB0120()
{

  return swift_deallocObject();
}

uint64_t sub_257BB0178()
{

  return swift_deallocObject();
}

uint64_t sub_257BB02A4()
{
  MEMORY[0x259C74920](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_257BB02E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_257ECCCF0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_257BB03A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_257ECCCF0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_257BB0480()
{

  return swift_deallocObject();
}

uint64_t sub_257BB0730(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6730);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_257BB07EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6730);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_257BB089C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6730);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_257BB0914(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6730);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_257BB0A00()
{

  return swift_deallocObject();
}

uint64_t sub_257BB0A38()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_257BB0A70@<X0>(void *a1@<X8>)
{
  result = sub_257ECE3A0();
  *a1 = v3;
  return result;
}

uint64_t sub_257BB0AFC()
{

  return swift_deallocObject();
}

uint64_t sub_257BB0B3C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_257BB0B7C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_257BB0BBC()
{

  return swift_deallocObject();
}

uint64_t sub_257BB0C14()
{
  MEMORY[0x259C74920](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_257BB0C4C()
{

  return swift_deallocObject();
}

uint64_t sub_257BB0C94()
{

  return swift_deallocObject();
}

uint64_t sub_257BB0CE4()
{

  return swift_deallocObject();
}

uint64_t sub_257BB0D1C()
{

  return swift_deallocObject();
}

uint64_t sub_257BB0D5C()
{

  return swift_deallocObject();
}

uint64_t sub_257BB0D94()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_257BB0DDC()
{

  return swift_deallocObject();
}

uint64_t sub_257BB0E30()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F88);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_257BB0F00()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F88);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_257BB0FFC()
{
  v1 = (type metadata accessor for DetectedTextBlock() - 8);
  v2 = (*(*v1 + 80) + 64) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v5 = v0 + v2;
  v6 = sub_257ECCCF0();
  (*(*(v6 - 8) + 8))(v5, v6);

  __swift_destroy_boxed_opaque_existential_0(v0 + v4);
  __swift_destroy_boxed_opaque_existential_0(v0 + ((v4 + 39) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_257BB1154()
{
  v1 = (type metadata accessor for DetectedTextBlock() - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2;
  v4 = sub_257ECCCF0();
  (*(*(v4 - 8) + 8))(v3, v4);

  return swift_deallocObject();
}

uint64_t sub_257BB1264()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_257BB12A4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_257BB12E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5FE0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_257BB13DC()
{
  MEMORY[0x259C74920](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_257BB1414()
{

  return swift_deallocObject();
}

uint64_t sub_257BB146C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F60F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_257BB14DC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F6108);
  sub_257C383CC();
  return swift_getOpaqueTypeConformance2();
}

BOOL sub_257BB15D4(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

BOOL sub_257BB1604(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != (a1 & 1));
  return v4 != 0;
}

uint64_t sub_257BB18CC()
{

  return swift_deallocObject();
}

uint64_t sub_257BB1904()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_257BB194C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

id sub_257BB198C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_objectPointerParentNode;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_257BB19F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_257ECCCF0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_257ECCC80();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_257BB1AE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_257ECCCF0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_257ECCC80();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_257BB1BEC()
{
  MEMORY[0x259C74920](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_257BB1C24()
{

  return swift_deallocObject();
}

uint64_t sub_257BB1C5C()
{
  swift_unknownObjectRelease();

  sub_257C58C58(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  return swift_deallocObject();
}

uint64_t sub_257BB1CD0()
{

  return swift_deallocObject();
}

uint64_t sub_257BB1D90(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6730);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_257BB1E4C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6730);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_257BB1EFC()
{
  v1 = (type metadata accessor for MFColorPicker() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_257ECE1D0();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_257BB2040()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F8F6770);
  sub_257C5F1C8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_257BB20C0()
{
  MEMORY[0x259C74920](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_257BB20FC()
{
  v1 = sub_257ECCEB0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_257BB21C8()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_257BB2224()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_257BB225C()
{

  return swift_deallocObject();
}

uint64_t sub_257BB2294()
{
  MEMORY[0x259C74920](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_257BB2314()
{

  return swift_deallocObject();
}

uint64_t sub_257BB2354()
{

  return swift_deallocObject();
}

uint64_t sub_257BB23AC()
{

  return swift_deallocObject();
}

uint64_t sub_257BB23EC()
{

  return swift_deallocObject();
}

uint64_t sub_257BB24D4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_257BB2514@<X0>(uint64_t *a1@<X8>)
{
  result = sub_257ECC380();
  *a1 = result;
  return result;
}

uint64_t sub_257BB2568()
{
  MEMORY[0x259C74920](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_257BB25A0()
{

  return swift_deallocObject();
}

uint64_t sub_257BB25E0()
{

  return swift_deallocObject();
}

uint64_t sub_257BB2654()
{

  return swift_deallocObject();
}

uint64_t sub_257BB268C()
{
  MEMORY[0x259C74920](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_257BB26C4()
{

  return swift_deallocObject();
}

uint64_t sub_257BB2AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_257ECCCF0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for MAGOutputEvent.EventType(0);
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

uint64_t sub_257BB2BF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_257ECCCF0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for MAGOutputEvent.EventType(0);
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

uint64_t sub_257BB2D00()
{

  return swift_deallocObject();
}

uint64_t sub_257BB2D40()
{

  return swift_deallocObject();
}

uint64_t sub_257BB2D80@<X0>(uint64_t *a1@<X8>)
{
  result = sub_257ECE4A0();
  *a1 = result;
  return result;
}

uint64_t sub_257BB2DE4()
{
  MEMORY[0x259C74920](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_257BB2E5C()
{

  return swift_deallocObject();
}

uint64_t sub_257BB2EA4()
{

  return swift_deallocObject();
}

uint64_t sub_257BB2EF8()
{

  return swift_deallocObject();
}

uint64_t sub_257BB2F30()
{

  return swift_deallocObject();
}

uint64_t sub_257BB3028()
{

  return swift_deallocObject();
}

uint64_t sub_257BB3068()
{

  return swift_deallocObject();
}

uint64_t sub_257BB30D0()
{

  return swift_deallocObject();
}

uint64_t sub_257BB3124()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_257BB3454()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_257BB3490()
{

  return swift_deallocObject();
}

uint64_t sub_257BB34C8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_257BB35AC()
{
  v1 = type metadata accessor for MAGOutputEvent(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = sub_257ECCCF0();
  v4 = *(*(v3 - 8) + 8);
  v4(v0 + v2, v3);
  v5 = (v0 + v2 + *(v1 + 20));
  type metadata accessor for MAGOutputEvent.EventType(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 0xDu:

      break;
    case 1u:
    case 4u:

      goto LABEL_8;
    case 2u:
      v4(v5, v3);
      if (*(v5 + *(type metadata accessor for DetectedDoor(0) + 44)))
      {
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F38);
      goto LABEL_8;
    case 3u:
    case 6u:
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0x10u:
      goto LABEL_8;
    case 5u:

LABEL_8:

      break;
    default:
      break;
  }

  return swift_deallocObject();
}

uint64_t sub_257BB3898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_257ECCCF0();
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

uint64_t sub_257BB3960(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_257ECCCF0();
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

uint64_t sub_257BB3B98()
{

  return swift_deallocObject();
}

uint64_t sub_257BB3BD0()
{
  MEMORY[0x259C74920](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_257BB3C18()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_257BB3C58()
{
  MEMORY[0x259C74920](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_257BB3C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F76F8);
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
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6730);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_257BB3DE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F76F8);
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
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6730);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_257BB3F70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7758);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257BB3FE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7758);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_257BB4064()
{

  return swift_deallocObject();
}

uint64_t sub_257BB40A4()
{

  return swift_deallocObject();
}

uint64_t sub_257BB40DC()
{

  return swift_deallocObject();
}

uint64_t sub_257BB411C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_257BB4164()
{

  return swift_deallocObject();
}

uint64_t sub_257BB41B0@<X0>(void *a1@<X8>)
{
  result = sub_257ECC360();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_257BB4244()
{
  MEMORY[0x259C74920](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_257BB4284()
{

  return swift_deallocObject();
}

uint64_t sub_257BB42DC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7AA0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_257BB4370()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7AA0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_257BB4450(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6730);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_257BB450C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6730);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_257BB45F0()
{
  v1 = type metadata accessor for MFReaderTextFormatterView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_257ECE1D0();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_257BB47C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7D78);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_257BB48E0()
{
  MEMORY[0x259C74920](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_257BB4918()
{

  return swift_deallocObject();
}

uint64_t sub_257BB4958@<X0>(uint64_t *a1@<X8>)
{
  result = MAGHapticEffect.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_257BB4B0C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_257BB4B48()
{

  return swift_deallocObject();
}

uint64_t sub_257BB4B84()
{

  return swift_deallocObject();
}

uint64_t sub_257BB4BE8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_257BB4C68()
{
  v1 = sub_257ECCB70();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  if (*(v0 + v4))
  {
  }

  return swift_deallocObject();
}

double sub_257BB4D3C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_lastARFrameTimestamp;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_257BB4D94(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_lastARFrameTimestamp;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_257BB4E14()
{

  return swift_deallocObject();
}

uint64_t sub_257BB4E98()
{
  MEMORY[0x259C74920](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_257BB4EDC()
{
  MEMORY[0x259C74920](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_257BB4F1C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6730);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_257BB4FD8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6730);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_257BB5098@<X0>(uint64_t a1@<X8>)
{
  result = sub_257ECE480();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_257BB5104()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F8330);
  sub_257ECE750();
  sub_257BD2D4C(&qword_27F8F8378, &qword_27F8F8330);
  sub_257D2A9C0(&qword_27F8F77F8, MEMORY[0x277CDE0B8]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_257BB51E8()
{
  MEMORY[0x259C74920](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_257BB5228()
{

  return swift_deallocObject();
}

uint64_t sub_257BB5274()
{
  MEMORY[0x259C74920](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_257BB52AC()
{

  return swift_deallocObject();
}

uint64_t sub_257BB52E4()
{

  return swift_deallocObject();
}

uint64_t sub_257BB5320()
{

  return swift_deallocObject();
}

uint64_t sub_257BB5398()
{

  return swift_deallocObject();
}

uint64_t sub_257BB53E0()
{

  return swift_deallocObject();
}

uint64_t sub_257BB5430()
{

  return swift_deallocObject();
}

uint64_t sub_257BB5468()
{
  MEMORY[0x259C74920](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_257BB54B0()
{

  return swift_deallocObject();
}

uint64_t sub_257BB5500()
{

  return swift_deallocObject();
}

uint64_t sub_257BB5590()
{

  return swift_deallocObject();
}

uint64_t sub_257BB55C8()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_257BB5618@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x259C70F50]();
  *a1 = result;
  return result;
}

uint64_t sub_257BB5670@<X0>(uint64_t *a1@<X8>)
{
  result = sub_257ECE3D0();
  *a1 = result;
  return result;
}

uint64_t sub_257BB58A0()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_257BB58E0()
{
  MEMORY[0x259C74920](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_257BB5920()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_257BB5958()
{
  MEMORY[0x259C74920](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_257BB59A0()
{

  return swift_deallocObject();
}

uint64_t sub_257BB59E0()
{

  return swift_deallocObject();
}

uint64_t sub_257BB5A1C()
{

  return swift_deallocObject();
}

uint64_t sub_257BB5A54@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27F8F87B0;
  return result;
}

uint64_t sub_257BB5AA0(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27F8F87B0 = v1;
  return result;
}

uint64_t sub_257BB61C4()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

id sub_257BB64C4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isRunning];
  *a2 = result;
  return result;
}

uint64_t sub_257BB6610@<X0>(uint64_t *a1@<X8>)
{
  result = sub_257ECC7F0();
  *a1 = result;
  return result;
}

uint64_t sub_257BB66BC()
{
  swift_unknownObjectRelease();
  sub_257C6DA74(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_257BB6700@<X0>(uint64_t *a1@<X8>)
{
  result = sub_257ECC380();
  *a1 = result;
  return result;
}

uint64_t sub_257BB672C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_257ECCCF0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 248)
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    if (v10 > 7)
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
    v11 = sub_257ECCC80();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_257BB684C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_257ECCCF0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 248)
  {
    *(a1 + *(a4 + 20) + 16) = -a2;
  }

  else
  {
    v11 = sub_257ECCC80();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_257BB6974()
{

  return swift_deallocObject();
}

uint64_t sub_257BB69AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_257ECE3F0();
  *a1 = result;
  return result;
}

uint64_t sub_257BB6A50()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_257BB6A88()
{
  MEMORY[0x259C74920](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_257BB6B18()
{

  return swift_deallocObject();
}

uint64_t sub_257BB6BC0()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_257BB6BF8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_257BB6C88()
{

  return swift_deallocObject();
}

uint64_t sub_257BB6CC0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_257BB6CF8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_257BB6D5C()
{

  return swift_deallocObject();
}

uint64_t sub_257BB6EA4()
{
  MEMORY[0x259C74920](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_257BB6EDC()
{

  return swift_deallocObject();
}

uint64_t sub_257BB6F2C()
{

  return swift_deallocObject();
}

uint64_t sub_257BB6F64()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_257BB6FC4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8FE0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_257BB706C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_257BB70A4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8FE0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_257BB714C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8FE0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_257BB7230()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_257BB7280()
{
  MEMORY[0x259C74920](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_257BB72B8()
{

  return swift_deallocObject();
}

uint64_t sub_257BB72F8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

id sub_257BB7330@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16MagnifierSupport23MAGDoorDetectionService_openStateConfidenceThreshold;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_257BB739C()
{
  v1 = sub_257ECCC80();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_257BB7478()
{
  MEMORY[0x259C74920](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_257BB750C()
{

  return swift_deallocObject();
}

uint64_t sub_257BB7544()
{
  MEMORY[0x259C74920](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_257BB757C()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_257BB75CC()
{

  return swift_deallocObject();
}

uint64_t sub_257BB7624()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_257BB765C()
{

  return swift_deallocObject();
}

uint64_t sub_257BB76AC()
{

  return swift_deallocObject();
}

uint64_t sub_257BB76F8()
{

  return swift_deallocObject();
}

uint64_t sub_257BB7730()
{

  return swift_deallocObject();
}

uint64_t sub_257BB7800()
{
  MEMORY[0x259C74920](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_257BB7858()
{

  return swift_deallocObject();
}

uint64_t sub_257BB7898()
{

  return swift_deallocObject();
}

uint64_t sub_257BB78E0()
{
  MEMORY[0x259C74920](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_257BB7934()
{

  return swift_deallocObject();
}

uint64_t sub_257BB7A08()
{

  return swift_deallocObject();
}

uint64_t sub_257BB7A7C()
{

  return swift_deallocObject();
}

uint64_t sub_257BB7AB8()
{

  return swift_deallocObject();
}

uint64_t sub_257BB7AF0()
{

  return swift_deallocObject();
}

uint64_t sub_257BB7B30()
{

  return swift_deallocObject();
}

uint64_t sub_257BB7B68()
{

  return swift_deallocObject();
}

uint64_t sub_257BB7BB0()
{

  return swift_deallocObject();
}

uint64_t sub_257BB7BF0()
{

  return swift_deallocObject();
}

uint64_t sub_257BB7C38()
{

  return swift_deallocObject();
}

uint64_t sub_257BB7C70()
{

  return swift_deallocObject();
}

uint64_t sub_257BB7CC4()
{
  MEMORY[0x259C74920](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_257BB7CFC()
{

  return swift_deallocObject();
}

uint64_t sub_257BB7D38()
{

  return swift_deallocObject();
}

uint64_t sub_257BB7E80()
{

  return swift_deallocObject();
}

uint64_t sub_257BB7EB8()
{

  return swift_deallocObject();
}

__n128 sub_257BB7F88@<Q0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView_edgeInsets;
  swift_beginAccess();
  result = *v3;
  v5 = *(v3 + 16);
  *a2 = *v3;
  a2[1] = v5;
  return result;
}

__n128 sub_257BB7FDC(uint64_t a1, void *a2)
{
  v3 = (*a2 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView_edgeInsets);
  swift_beginAccess();
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v5;
  return result;
}

uint64_t sub_257BB803C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16MagnifierSupport12DetectedView_isCenterDetectionEnabled;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_257BB8090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_257ECCCF0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 44));
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

uint64_t sub_257BB8158(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_257ECCCF0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 44)) = a2;
  }

  return result;
}

uint64_t sub_257BB8210(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_257ECCC80();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_257BB82BC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_257ECCC80();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_257BB8370()
{

  return swift_deallocObject();
}

uint64_t sub_257BB83C0()
{

  return swift_deallocObject();
}

uint64_t sub_257BB8410()
{

  return swift_deallocObject();
}

uint64_t sub_257BB8458()
{
  MEMORY[0x259C74920](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_257BB8490()
{

  return swift_deallocObject();
}

uint64_t sub_257BB84D0()
{

  return swift_deallocObject();
}

uint64_t sub_257BB8540()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9A68);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_257BB8614()
{

  return swift_deallocObject();
}

uint64_t sub_257BB8664()
{
  MEMORY[0x259C74920](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_257BB869C()
{

  return swift_deallocObject();
}

uint64_t sub_257BB86E8()
{

  return swift_deallocObject();
}

uint64_t sub_257BB8730()
{

  return swift_deallocObject();
}

uint64_t sub_257BB88D4()
{

  return swift_deallocObject();
}

uint64_t sub_257BB890C()
{

  return swift_deallocObject();
}

uint64_t sub_257BB8AC4()
{

  return swift_deallocObject();
}

uint64_t sub_257BB8B08()
{

  return swift_deallocObject();
}

uint64_t sub_257BB8B48()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_257BB8B90()
{

  return swift_deallocObject();
}

uint64_t sub_257BB8BD8()
{

  return swift_deallocObject();
}

uint64_t sub_257BB8C68()
{

  return swift_deallocObject();
}

uint64_t sub_257BB8CAC()
{

  return swift_deallocObject();
}

uint64_t sub_257BB8CE4()
{

  return swift_deallocObject();
}

uint64_t sub_257BB8D24()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_257BB8DBC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_257D5C5AC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_257BB8EC0()
{

  return swift_deallocObject();
}

uint64_t sub_257BB8F14()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F9F18);
  sub_257ECE750();
  sub_257E2ECCC();
  sub_257E2ED88(&qword_27F8F77F8, MEMORY[0x277CDE0B8]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_257BB8FC8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F9F78);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F9F90);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F9F80);
  sub_257BD2D4C(&qword_27F8F9F88, &qword_27F8F9F80);
  swift_getOpaqueTypeConformance2();
  sub_257BD2D4C(&qword_27F8F9F98, &qword_27F8F9F90);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_257BB9100()
{
  MEMORY[0x259C74920](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_257BB9138()
{

  return swift_deallocObject();
}

uint64_t sub_257BB9174@<X0>(_BYTE *a1@<X8>)
{
  result = sub_257ECE460();
  *a1 = result & 1;
  return result;
}

uint64_t sub_257BB91DC()
{

  return swift_deallocObject();
}

float sub_257BB92B4@<S0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  *a2 = result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_257BB92EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_257CA85E8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_257BB9318@<X0>(uint64_t *a1@<X8>)
{
  result = sub_257D18488();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_257BB939C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_257BB93D4()
{

  return swift_deallocObject();
}

uint64_t sub_257BB940C()
{
  MEMORY[0x259C74920](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_257BB9444()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

id sub_257BB9484@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 videoZoomFactor];
  *a2 = v4;
  return result;
}

uint64_t sub_257BB94CC()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_257BB950C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_257BB954C()
{
  MEMORY[0x259C74920](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_257BB9584()
{

  return swift_deallocObject();
}

uint64_t sub_257BB95E0()
{

  return swift_deallocObject();
}

uint64_t sub_257BB9618()
{

  return swift_deallocObject();
}

uint64_t sub_257BB9650()
{

  return swift_deallocObject();
}

uint64_t sub_257BB96E4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA2B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_257BB97A0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA2B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_257BB9854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA318);
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

uint64_t sub_257BB9920(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA318);
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

uint64_t sub_257BB99E8()
{
  v1 = *(type metadata accessor for TextCollapseButton(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA378);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_257ECE0C0();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_257BB9B1C()
{
  v1 = type metadata accessor for MAGDetectedTextView(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2 + *(v1 + 20);
  v4 = sub_257ECE820();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1, v4))
  {
    (*(v5 + 8))(v3, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA2B0);

  return swift_deallocObject();
}

uint64_t sub_257BB9C9C()
{
  v1 = type metadata accessor for MAGDetectedTextView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = v2 + *(v1 + 20);
  v4 = sub_257ECE820();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1, v4))
  {
    (*(v5 + 8))(v3, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA2B0);

  return swift_deallocObject();
}

uint64_t sub_257BB9E64()
{

  return swift_deallocObject();
}

uint64_t sub_257BB9EBC()
{
  MEMORY[0x259C74920](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_257BB9EF8()
{

  return swift_deallocObject();
}

uint64_t sub_257BB9F48()
{

  return swift_deallocObject();
}

id sub_257BB9FB4(float *a1, id *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a2;
  [*a2 setWidth_];
  [v4 setHeight_];

  return [v4 setLength_];
}

uint64_t sub_257BBA048()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

id sub_257BBA080@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16MagnifierSupport9ImageWell_infiniteSettingsGlyph;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_257BBA0EC()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_257BBA188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA938);
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

uint64_t sub_257BBA254(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA938);
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

uint64_t sub_257BBA330()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_257BBA3BC()
{

  return swift_deallocObject();
}

uint64_t sub_257BBA424@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x259C70E70]();
  *a1 = result;
  return result;
}

uint64_t sub_257BBA484()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F4998);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FA998);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FA9B0);
  sub_257E62F24();
  sub_257BD2D4C(&qword_27F8FA9D0, &qword_27F8FA9B0);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_257BBA598()
{

  return swift_deallocObject();
}

uint64_t sub_257BBA5D0()
{

  return swift_deallocObject();
}

uint64_t sub_257BBA610()
{

  return swift_deallocObject();
}

uint64_t sub_257BBA660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_257ECCCF0();
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

uint64_t sub_257BBA720(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_257ECCCF0();
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

uint64_t sub_257BBA7E0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA318);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_257BBA89C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA318);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_257BBA94C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_257ECE410();
  *a1 = result;
  return result;
}

uint64_t sub_257BBA9AC()
{
  v1 = (type metadata accessor for TranscriptCollapseButton(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA378);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_257ECE0C0();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_257BBAC08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAF60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_257BBAC70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA938);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6730);
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

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_257BBADA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA938);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6730);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_257BBAEC4()
{
  sub_257ED00C0();
  swift_getWitnessTable();
  sub_257ECEEE0();
  sub_257ECE240();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAF30);
  sub_257ECE240();
  sub_257ED00C0();
  swift_getWitnessTable();
  sub_257ECEF20();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAF38);
  sub_257ECE240();
  sub_257ECE240();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAF40);
  sub_257ECE240();
  sub_257ED00C0();
  swift_getWitnessTable();
  sub_257BD2D4C(&qword_27F8FAF48, &qword_27F8FAF38);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_257BD2D4C(&qword_27F8FAF50, &qword_27F8FAF40);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_257ECE130();
  sub_257ECE240();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_257ECE300();
  sub_257ECE240();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_257BD2D4C(&qword_27F8FAF58, &qword_27F8FAF30);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_257ECE750();
  swift_getOpaqueTypeConformance2();
  sub_257E78008(&qword_27F8F77F8, MEMORY[0x277CDE0B8]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_257BBB340()
{
  v1 = *(v0 + 16);
  v16 = *(v0 + 24);
  v2 = type metadata accessor for MFMenu();
  v3 = *(*(v2 - 1) + 80);
  v17 = *(*(v2 - 1) + 64);
  v4 = sub_257ECE0F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + ((v3 + 48) & ~v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5B90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_257ECDF90();
    (*(*(v8 - 8) + 8))(v0 + ((v3 + 48) & ~v3), v8);
  }

  else
  {
  }

  v9 = v2[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_257ECE1D0();
    (*(*(v10 - 8) + 8))(v7 + v9, v10);
  }

  else
  {
  }

  v11 = v2[22];
  v12 = *(v1 - 8);
  if (!(*(v12 + 48))(v7 + v11, 1, v1))
  {
    (*(v12 + 8))(v7 + v11, v1);
  }

  v13 = v2[23];
  v14 = *(v16 - 8);
  if (!(*(v14 + 48))(v7 + v13, 1, v16))
  {
    (*(v14 + 8))(v7 + v13, v16);
  }

  if (*(v7 + v2[26]))
  {
  }

  (*(v5 + 8))(v0 + ((((v3 + 48) & ~v3) + v17 + v6) & ~v6), v4);
  return swift_deallocObject();
}

uint64_t sub_257BBB6EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB118);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_257BBB77C()
{

  return swift_deallocObject();
}

uint64_t sub_257BBB7C4()
{

  return swift_deallocObject();
}

uint64_t sub_257BBB7FC()
{
  MEMORY[0x259C74920](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_257BBB834()
{

  return swift_deallocObject();
}

uint64_t sub_257BBB874()
{
  MEMORY[0x259C74920](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_257BBB8CC()
{

  return swift_deallocObject();
}

uint64_t sub_257BBB904()
{

  return swift_deallocObject();
}

uint64_t sub_257BBB93C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_257BBB984()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_257BBBB0C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27F8FB318;
  return result;
}

uint64_t sub_257BBBB58(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27F8FB318 = v1;
  return result;
}

uint64_t sub_257BBBBB4()
{
  MEMORY[0x259C74920](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_257BBBBEC()
{
  MEMORY[0x259C74920](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_257BBBD14@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = 0;
  return result;
}

uint64_t sub_257BBBD44(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB5A0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_257BBBE0C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB5A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_257BBBEE4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_257BBBF2C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_257BBBF6C()
{

  return swift_deallocObject();
}

uint64_t sub_257BBBFB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_257ECCCF0();
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

uint64_t sub_257BBC07C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_257ECCCF0();
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

uint64_t sub_257BBC134()
{

  return swift_deallocObject();
}

uint64_t sub_257BBC16C()
{

  return swift_deallocObject();
}

uint64_t sub_257BBC1AC@<X0>(unint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  result = _ss6UInt32V16MagnifierSupportE20unicodeScalarLiteralABSS_tcfC_0(*a1, a1[1]);
  *a2 = result;
  return result;
}

float64x2_t sub_257BBC218(float64x2_t *a1, void *a2)
{
  v3 = (*a2 + OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_rect);
  swift_beginAccess();
  __asm { FMOV            V2.2D, #-0.5 }

  result = vaddq_f64(*a1, vmulq_f64(v3[1], _Q2));
  *v3 = result;
  return result;
}

__n128 sub_257BBC27C@<Q0>(void *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_rect);
  swift_beginAccess();
  result = v3[1];
  *a2 = result;
  return result;
}

uint64_t sub_257BBC2D0(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2 + OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_rect;
  result = swift_beginAccess();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  return result;
}

__n128 sub_257BBC328@<Q0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_rect;
  swift_beginAccess();
  result = *v3;
  v5 = *(v3 + 16);
  *a2 = *v3;
  a2[1] = v5;
  return result;
}

__n128 sub_257BBC37C(uint64_t a1, void *a2)
{
  v3 = (*a2 + OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_rect);
  swift_beginAccess();
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v5;
  return result;
}

uint64_t sub_257BBC3D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_classIndex;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_257BBC428(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_classIndex;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_257BBC47C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_heatByClass;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_257BBC50C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_depth;
  result = swift_beginAccess();
  v5 = *(v3 + 4);
  *a2 = *v3;
  *(a2 + 4) = v5;
  return result;
}

uint64_t sub_257BBC568(int *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *a2 + OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_depth;
  result = swift_beginAccess();
  *v4 = v2;
  *(v4 + 4) = v3;
  return result;
}

__n128 sub_257BBC5C8@<Q0>(void *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_centroid3d);
  swift_beginAccess();
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a2 = *v3;
  a2[1].n128_u8[0] = v4;
  return result;
}

uint64_t sub_257BBC624(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2 + OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_centroid3d;
  result = swift_beginAccess();
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  return result;
}

uint64_t sub_257BBC684@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_knownFeaturePoints;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_257BBC6E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_physicalSize;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_257BBC740(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_physicalSize;
  result = swift_beginAccess();
  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

uint64_t sub_257BBC7C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_257ECCCF0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 44));
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

uint64_t sub_257BBC888(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_257ECCCF0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 44)) = a2;
  }

  return result;
}

uint64_t sub_257BBC940()
{

  return swift_deallocObject();
}

uint64_t sub_257BBC978()
{
  MEMORY[0x259C74920](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_257BBC9B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30);
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

uint64_t sub_257BBCA8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30);
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

uint64_t sub_257BBCB50()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_257BBCBC0()
{
  MEMORY[0x259C74920](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_257BBCBF8()
{

  return swift_deallocObject();
}

uint64_t sub_257BBCC38()
{
  v1 = sub_257ECCEB0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_257BBCCFC()
{

  return swift_deallocObject();
}

uint64_t sub_257BBCD34(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6730);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_257BBCDF0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6730);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_257BBCEAC()
{
  v1 = sub_257ECE2A0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (type metadata accessor for MFReaderTextDisplayView() - 8);
  v6 = (v3 + v4 + *(*v5 + 80)) & ~*(*v5 + 80);
  (*(v2 + 8))(v0 + v3, v1);

  v7 = v5[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_257ECE1D0();
    (*(*(v8 - 8) + 8))(v0 + v6 + v7, v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_257BBD1C0()
{

  return swift_deallocObject();
}

uint64_t sub_257BBD30C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MAGPointAndSpeakEvent.PointAndSpeakEventType(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_257BBD378(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MAGPointAndSpeakEvent.PointAndSpeakEventType(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_257BBD3F0()
{

  sub_257ECA614(*(v0 + 64), *(v0 + 72));

  return swift_deallocObject();
}

uint64_t sub_257BBD44C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

float sub_257BBD48C@<S0>(char *a1@<X0>, float *a2@<X8>)
{
  result = flt_257EF2B54[*a1];
  *a2 = result;
  return result;
}

uint64_t sub_257BBD4A4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FBD68);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FBDB0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FBD60);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7B48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FBD58);
  sub_257ECE750();
  sub_257BD2D4C(&qword_27F8FBDA8, &qword_27F8FBD58);
  sub_257ECA660(&qword_27F8F77F8, MEMORY[0x277CDE0B8]);
  swift_getOpaqueTypeConformance2();
  sub_257BD2D4C(&qword_27F8F7C08, &qword_27F8F7B48);
  swift_getOpaqueTypeConformance2();
  sub_257BD2D4C(&qword_27F8FBDB8, &qword_27F8FBDB0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_257BBD6B8()
{

  return swift_deallocObject();
}

uint64_t sub_257BBD6F0()
{

  return swift_deallocObject();
}

unint64_t sub_257BBD7B8(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_257BBD7E4(uint64_t result)
{
  if (result)
  {
    return sub_257ECC3F0();
  }

  return result;
}

void *sub_257BBD7F4@<X0>(void *result@<X0>, char *a2@<X8>)
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

uint64_t *sub_257BBD814@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_257BBD82C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_257ECDCF0();
  *a1 = result;
  return result;
}

uint64_t sub_257BBD88C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_257BBD89C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_257BBD7B8(*a1);
  *a2 = result;
  return result;
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void box3dVol(const float *a1)
{
  if (a1)
  {
    std::vector<float>::vector[abi:ne200100](__A, 3uLL);
    __C = 0.0;
    MEMORY[0x259C74A00](a1 + 3, 1, a1, 1, __A[0], 1, 3);
    vDSP_svesq(__A[0], 1, &__C, 3uLL);
    MEMORY[0x259C74A00](a1 + 6, 1, a1 + 3, 1, __A[0], 1, 3);
    vDSP_svesq(__A[0], 1, &__C, 3uLL);
    MEMORY[0x259C74A00](a1 + 12, 1, a1, 1, __A[0], 1, 3);
    vDSP_svesq(__A[0], 1, &__C, 3uLL);
    if (__A[0])
    {
      __A[1] = __A[0];
      operator delete(__A[0]);
    }
  }
}

void sub_257BBDDC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float boxVolume(_OWORD *a1)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v1 = a1[5];
  v21[4] = a1[4];
  v21[5] = v1;
  v2 = a1[7];
  v21[6] = a1[6];
  v21[7] = v2;
  v3 = a1[1];
  v21[0] = *a1;
  v21[1] = v3;
  v4 = a1[3];
  v21[2] = a1[2];
  v21[3] = v4;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  std::vector<box3d>::__init_with_size[abi:ne200100]<box3d const*,box3d const*>(&v17, v21, v22, 1uLL);
  std::vector<float>::vector[abi:ne200100](__p, 8 * (((v18 - v17) >> 6) + ((v18 - v17) >> 7)));
  v5 = v17;
  if (v18 != v17)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = v6;
      v10 = v7;
      v11 = 8;
      do
      {
        v12 = __p[0] + v9;
        v13 = *&v17[v10];
        *(v12 + 2) = *&v17[v10 + 8];
        *v12 = v13;
        v10 += 16;
        v9 += 12;
        --v11;
      }

      while (v11);
      ++v8;
      v5 = v17;
      v7 += 128;
      v6 += 96;
    }

    while (v8 < (v18 - v17) >> 7);
  }

  if (v5)
  {
    v18 = v5;
    operator delete(v5);
  }

  box3dVol(__p[0]);
  v15 = v14;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v15;
}

void sub_257BBDF38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float32x2_t box3dToCentroidSizeAngle@<D0>(float32x4_t *a1@<X0>, void *a2@<X8>)
{
  v3 = vsubq_f32(*a1, a1[3]);
  v4 = vsubq_f32(*a1, a1[1]);
  v12 = vmulq_f32(v4, v4);
  v13 = vmulq_f32(v3, v3);
  v5 = vsubq_f32(*a1, a1[4]);
  v6 = vmulq_f32(v5, v5);
  v7 = sqrtf(v6.f32[2] + vaddv_f32(*v6.f32));
  v6.i64[0] = 0x3F0000003F000000;
  v6.i64[1] = 0x3F0000003F000000;
  v11 = vmulq_f32(vaddq_f32(*a1, a1[6]), v6);
  v8 = atan2f(v4.f32[0], v4.f32[1]);
  std::vector<float>::vector[abi:ne200100](a2, 7uLL);
  v9 = *a2;
  *(*a2 + 8) = v11.i32[2];
  *v9 = v11.i64[0];
  result = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v13, v13, 8uLL), *&vextq_s8(v12, v12, 8uLL)), vadd_f32(vzip1_s32(*v13.i8, *v12.i8), vzip2_s32(*v13.i8, *v12.i8))));
  *(v9 + 12) = result;
  *(v9 + 20) = v7;
  *(v9 + 24) = v8;
  return result;
}

void box3dFromNSArray(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v18 = v3;
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "[3DOD] box3dFromNSArray takes non-null pointer).");
    goto LABEL_10;
  }

  if ([v3 count] != 8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "[3DOD] box3dFromNSArray takes non-8 corners box).");
LABEL_10:
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279853FE0, MEMORY[0x277D82610]);
  }

  for (i = 0; i != 8; ++i)
  {
    v5 = [v18 objectAtIndexedSubscript:i];
    v6 = [v5 objectAtIndexedSubscript:0];
    [v6 floatValue];
    v17 = v7;
    v8 = [v18 objectAtIndexedSubscript:i];
    v9 = [v8 objectAtIndexedSubscript:1];
    [v9 floatValue];
    v16 = v10;
    v11 = [v18 objectAtIndexedSubscript:i];
    v12 = [v11 objectAtIndexedSubscript:2];
    [v12 floatValue];
    v13 = v17;
    DWORD1(v13) = v16;
    DWORD2(v13) = v14;
    *(a2 + 16 * i) = v13;
  }
}

void sub_257BBE1E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id a14)
{
  __cxa_free_exception(v14);

  _Unwind_Resume(a1);
}

float area(const Polygon *a1)
{
  v1 = *&a1->polyBBox.right - *&a1->polySize;
  if (v1)
  {
    v2 = v1 >> 3;
    if (v2 <= 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    v4 = 0.0;
    v5 = 1;
    v6 = *&a1->polySize;
    do
    {
      v7 = *v6++;
      v4 = (v4 + (*&v7 * COERCE_FLOAT(HIDWORD(*(*&a1->polySize + 8 * v5))))) - (COERCE_FLOAT(*(*&a1->polySize + 8 * v5)) * *(&v7 + 1));
      v5 = (v5 + 1) % v2;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0.0;
  }

  return fabsf(v4) * 0.5;
}

float getLineEquation(float32x2_t *a1, float *a2, _DWORD *a3, float *a4)
{
  if (a2 && a3)
  {
    if (a4)
    {
      v4 = *a1;
      v5 = a1[1];
      LODWORD(v6) = HIDWORD(*a1);
      *a2 = v5.f32[1] - v6;
      *a3 = vsub_f32(v4, v5).u32[0];
      result = vmuls_lane_f32(-v4.f32[0], v5, 1) + (v5.f32[0] * v6);
      *a4 = result;
    }
  }

  return result;
}

uint64_t intersect(int32x2_t *a1, int32x2_t *a2, float32x2_t *a3)
{
  if (!a3)
  {
    return 0;
  }

  v3.i32[0] = *a1;
  v3.i32[1] = HIDWORD(*&a2[1]);
  v4.i32[0] = a1[1];
  v4.i32[1] = HIDWORD(*a2);
  v5 = vsub_f32(v3, v4);
  v4.i32[0] = *a2;
  v8.i32[1] = HIDWORD(*&a1[1]);
  v6.i32[0] = a2[1];
  v6.i32[1] = HIDWORD(*a1);
  v7 = vsub_f32(v8, v6);
  v8.f32[0] = (-v5.f32[1] * v5.f32[0]) + (v7.f32[1] * v7.f32[0]);
  v9 = -v8.f32[0];
  if (v8.f32[0] >= 0.0)
  {
    v9 = (-v5.f32[1] * v5.f32[0]) + (v7.f32[1] * v7.f32[0]);
  }

  if (v9 < 0.00000001)
  {
    return 0;
  }

  v10 = vmla_f32(vmul_f32(vzip2_s32(a2[1], a1[1]), vneg_f32(vzip1_s32(*a2, *a1))), vzip2_s32(*a2, *a1), vzip1_s32(a2[1], a1[1]));
  *a3 = vdiv_f32(vmla_f32(vmul_f32(vrev64_s32(v10), vneg_f32(v7)), v10, v5), vdup_lane_s32(v8, 0));
  return 1;
}

float distance2(float32x2_t *a1, float32x2_t *a2)
{
  v2 = a1[1];
  LODWORD(v3) = HIDWORD(*a1);
  v4 = vsub_f32(*a1, v2);
  v5 = (vmuls_lane_f32(-COERCE_FLOAT(*a1), v2, 1) + (v2.f32[0] * v3)) + (vmul_lane_f32(v4, *a2, 1).f32[0] + ((v2.f32[1] - v3) * COERCE_FLOAT(*a2)));
  return (v5 * v5) / (vmul_f32(v4, v4).f32[0] + ((v2.f32[1] - v3) * (v2.f32[1] - v3)));
}

void clip(const Polygon *a1@<X0>, const Polygon *a2@<X1>, float32x2_t **a3@<X8>)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x4812000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = "";
  v21 = 0;
  v22 = 0;
  __p = 0;
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(&__p, *&a1->polySize, *&a1->polyBBox.right, (*&a1->polyBBox.right - *&a1->polySize) >> 3);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v11 = ___Z4clipRK7PolygonS1__block_invoke;
  v12 = &unk_279854010;
  v13 = &v14;
  v5 = *&a2->polyBBox.right - *&a2->polySize;
  if (v5)
  {
    v6 = 0;
    v7 = v5 >> 3;
    if ((v5 >> 3) <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v5 >> 3;
    }

    v9 = 1;
    do
    {
      (v11)(v10, *(*&a2->polySize + 8 * v6++), *(*&a2->polySize + 8 * v9));
      v9 = (v9 + 1) % v7;
    }

    while (v8 != v6);
  }

  Polygon::Polygon(a3, v15[6], (v15[7] - v15[6]) >> 3);
  _Block_object_dispose(&v14, 8);
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }
}

void sub_257BBE55C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  _Block_object_dispose(&a14, 8);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy_(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose_(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void ___Z4clipRK7PolygonS1__block_invoke(uint64_t a1, int32x2_t a2, int32x2_t a3)
{
  v31[0] = a2;
  v31[1] = a3;
  v4 = *(*(a1 + 32) + 8);
  v29 = 0;
  v30 = 0;
  v28 = 0;
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(&v28, *(v4 + 48), *(v4 + 56), (*(v4 + 56) - *(v4 + 48)) >> 3);
  v26 = 0uLL;
  v27 = 0;
  v5 = v29 - v28;
  if (v29 != v28)
  {
    v6 = 0;
    v7 = v5 >> 3;
    if ((v5 >> 3) <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v5 >> 3;
    }

    v9 = *&a3.i32[1] - *&a2.i32[1];
    v10 = vsub_f32(a2, a3);
    v11 = vmuls_lane_f32(-*a2.i32, a3, 1) + (*a3.i32 * *&a2.i32[1]);
    v12 = vmul_f32(v10, v10).f32[0] + (v9 * v9);
    v22 = v10.f32[0];
    LODWORD(v24) = vsub_f32(a3, a2).u32[0];
    v13 = 1;
    do
    {
      v14 = *&v28[8 * v6];
      v34 = 0;
      v15 = *&v28[8 * v13];
      v34 = v15;
      v33[0] = v14;
      v33[1] = v15;
      v16 = vmuls_lane_f32(v22, v14, 1);
      v17 = ((v24 * (v14.f32[1] - *&a2.i32[1])) - (vsub_f32(v14, a2).f32[0] * v9)) < 0.0;
      if ((((v11 + (v16 + (v9 * v14.f32[0]))) * (v11 + (v16 + (v9 * v14.f32[0])))) / v12) < 0.00000001)
      {
        v17 = 1;
      }

      v18 = vmuls_lane_f32(v22, v15, 1);
      if ((((v11 + (v18 + (v9 * v15.f32[0]))) * (v11 + (v18 + (v9 * v15.f32[0])))) / v12) >= 0.00000001 && ((v24 * (v15.f32[1] - *&a2.i32[1])) - (vsub_f32(v15, a2).f32[0] * v9)) >= 0.0)
      {
        if (v17)
        {
          v32 = 0;
          if (intersect(v33, v31, &v32))
          {
            _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8ne200100ERKS1_(&v26, &v32);
          }
        }
      }

      else
      {
        if (!v17)
        {
          v32 = 0;
          if (intersect(v33, v31, &v32))
          {
            _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8ne200100ERKS1_(&v26, &v32);
          }
        }

        _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8ne200100ERKS1_(&v26, &v34);
      }

      ++v6;
      v13 = (v13 + 1) % v7;
    }

    while (v8 != v6);
  }

  v19 = *(*(a1 + 32) + 8);
  v20 = v19[6];
  if (v20)
  {
    v19[7] = v20;
    operator delete(v20);
    v19[6] = 0;
    v19[7] = 0;
    v19[8] = 0;
  }

  *(v19 + 3) = v26;
  v21 = v28;
  v19[8] = v27;
  if (v21)
  {
    v29 = v21;
    operator delete(v21);
  }
}

void sub_257BBE804(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void box3dIou(float32x4_t *a1@<X0>, float32x4_t *a2@<X1>, uint64_t a3@<X8>)
{
  v78 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v7 = *a2;
  v8 = vsubq_f32(*a1, *a2);
  v9 = vmulq_f32(v8, v8);
  if (sqrtf(v9.f32[2] + vaddv_f32(*v9.f32)) <= 0.001)
  {
    v59 = 1;
    while (v59 != 8)
    {
      v60 = vsubq_f32(a1[v59], a2[v59]);
      v61 = vmulq_f32(v60, v60);
      ++v59;
      if (sqrtf(v61.f32[2] + vaddv_f32(*v61.f32)) > 0.001)
      {
        if ((v59 - 2) < 7)
        {
          goto LABEL_2;
        }

        break;
      }
    }

    __asm { FMOV            V0.2S, #1.0 }

    *a3 = _D0;
    *(a3 + 8) = boxVolume(a1);
    *(a3 + 12) = xmmword_257ED6BF0;
    *(a3 + 28) = xmmword_257ED6C00;
    *(a3 + 44) = 0;
  }

  else
  {
LABEL_2:
    v10 = a1[2];
    v6.i64[1] = a1[1].i64[0];
    v10.i64[1] = a1[3].i64[0];
    v77[0] = v6;
    v77[1] = v10;
    v11 = a2[2];
    v7.i64[1] = a2[1].i64[0];
    v76[0] = v7;
    v11.i64[1] = a2[3].i64[0];
    v76[1] = v11;
    Polygon::Polygon(&v74, v77, 4uLL);
    Polygon::Polygon(&__p, v76, 4uLL);
    clip(&v74, &__p, &v70);
    v12 = 0.0;
    v13 = 0.0;
    v14 = v75 - v74;
    if (v75 != v74)
    {
      if (v14 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = v75 - v74;
      }

      v16 = 1;
      v17 = v74;
      do
      {
        v18 = *v17++;
        v13 = (v13 + (*&v18 * COERCE_FLOAT(HIDWORD(*&v74[v16])))) - (COERCE_FLOAT(*&v74[v16]) * *(&v18 + 1));
        v16 = (v16 + 1) % v14;
        --v15;
      }

      while (v15);
    }

    v19 = fabsf(v13);
    v20 = __p;
    v21 = (v73 - __p) >> 3;
    if (v73 != __p)
    {
      if (v21 <= 1)
      {
        v22 = 1;
      }

      else
      {
        v22 = (v73 - __p) >> 3;
      }

      v12 = 0.0;
      v23 = 1;
      v24 = __p;
      do
      {
        v25 = *v24++;
        v12 = (v12 + (*&v25 * COERCE_FLOAT(HIDWORD(*(__p + v23))))) - (COERCE_FLOAT(*(__p + v23)) * *(&v25 + 1));
        v23 = (v23 + 1) % v21;
        --v22;
      }

      while (v22);
    }

    v26 = v19 * 0.5;
    v27 = fabsf(v12) * 0.5;
    v28 = v70;
    v29 = 0.0;
    v30 = 0.0;
    if (v71 != v70)
    {
      v31 = v71 - v70;
      if (v31 <= 1)
      {
        v32 = 1;
      }

      else
      {
        v32 = v71 - v70;
      }

      v33 = 1;
      v34 = v70;
      do
      {
        v35 = *v34++;
        v30 = (v30 + (*&v35 * COERCE_FLOAT(HIDWORD(*&v70[v33])))) - (COERCE_FLOAT(*&v70[v33]) * *(&v35 + 1));
        v33 = (v33 + 1) % v31;
        --v32;
      }

      while (v32);
    }

    v36 = fabsf(v30) * 0.5;
    v37 = (v26 + v27) - v36;
    v38 = fminf(v26, v27);
    v39 = a1->f32[2];
    v40 = a2->f32[2];
    v41 = a1[4].f32[2];
    v42 = a2[4].f32[2];
    v43 = fmax((fminf(v41, v42) - fmaxf(v39, v40)), 0.0);
    if (v75 != v74)
    {
      if (v14 <= 1)
      {
        v44 = 1;
      }

      else
      {
        v44 = v75 - v74;
      }

      v29 = 0.0;
      v45 = 1;
      v46 = v74;
      do
      {
        v47 = *v46++;
        v29 = (v29 + (*&v47 * COERCE_FLOAT(HIDWORD(*&v74[v45])))) - (COERCE_FLOAT(*&v74[v45]) * *(&v47 + 1));
        v45 = (v45 + 1) % v14;
        --v44;
      }

      while (v44);
    }

    v48 = v36 / v38;
    v49 = v36 / v26;
    v50 = v36 * v43;
    v51 = fabsf(v29) * 0.5;
    v52 = vabds_f32(v41, v39);
    v53 = v36 / v27;
    if (v73 == __p)
    {
      v55 = 0.0;
    }

    else
    {
      if (v21 <= 1)
      {
        v54 = 1;
      }

      else
      {
        v54 = (v73 - __p) >> 3;
      }

      v55 = 0.0;
      v56 = 1;
      v57 = __p;
      do
      {
        v58 = *v57++;
        v55 = (v55 + (*&v58 * COERCE_FLOAT(HIDWORD(*(__p + v56))))) - (COERCE_FLOAT(*(__p + v56)) * *(&v58 + 1));
        v56 = (v56 + 1) % v21;
        --v54;
      }

      while (v54);
    }

    v67 = v52 * v51;
    v68 = vabds_f32(v42, v40) * (fabsf(v55) * 0.5);
    v69 = (v67 + v68) - v50;
    *a3 = v50 / v69;
    *(a3 + 4) = v50;
    *(a3 + 8) = v69;
    *(a3 + 12) = v50 / fminf(v67, v68);
    *(a3 + 16) = v50 / v67;
    *(a3 + 20) = v50 / v68;
    *(a3 + 24) = v36 / v37;
    *(a3 + 28) = v36;
    *(a3 + 32) = v37;
    *(a3 + 36) = v48;
    *(a3 + 40) = v49;
    *(a3 + 44) = v53;
    if (v28)
    {
      v71 = v28;
      operator delete(v28);
      v20 = __p;
    }

    if (v20)
    {
      v73 = v20;
      operator delete(v20);
    }

    if (v74)
    {
      v75 = v74;
      operator delete(v74);
    }
  }
}

void sub_257BBEC34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

float32x2_t **Polygon::Polygon(float32x2_t **a1, char *a2, unint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3)
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPKS1_S7_EEvT_T0_l(a1, a2, &a2[8 * a3], a3);
    if (a3 >= 3)
    {
      v5 = *a1;
      v6 = **a1;
      v7 = a1[1] - *a1;
      if ((v7 >> 3) < 1)
      {
        v9 = **a1;
      }

      else
      {
        v8 = (v7 >> 3) & 0x7FFFFFFF;
        v9 = **a1;
        do
        {
          v10 = *v5++;
          v6 = vbsl_s8(vcgt_f32(v6, v10), v10, v6);
          v9 = vbsl_s8(vcgt_f32(v10, v9), v10, v9);
          --v8;
        }

        while (v8);
      }

      a1[3] = v6;
      a1[4] = v9;
    }
  }

  return a1;
}

void sub_257BBED04(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void Polygon::Polygon(Polygon *this, const CGRect *a2)
{
  *&this->polySize = 0;
  *&this->polyBBox.right = 0;
  this[1].polyBBox = 0;
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE6resizeEm(this, 4uLL);
  MinX = CGRectGetMinX(*a2);
  MinY = CGRectGetMinY(*a2);
  v5.f64[0] = MinX;
  v5.f64[1] = MinY;
  **&this->polySize = vcvt_f32_f64(v5);
  x = a2->origin.x;
  v5.f64[0] = a2->origin.y;
  width = a2->size.width;
  height = a2->size.height;
  v28 = CGRectGetMinX(*(&v5 - 8));
  MaxY = CGRectGetMaxY(*a2);
  v10.f64[0] = v28;
  v10.f64[1] = MaxY;
  *(*&this->polySize + 8) = vcvt_f32_f64(v10);
  v11 = a2->origin.x;
  v10.f64[0] = a2->origin.y;
  v12 = a2->size.width;
  v13 = a2->size.height;
  MaxX = CGRectGetMaxX(*(&v10 - 8));
  v14 = CGRectGetMaxY(*a2);
  v15.f64[0] = MaxX;
  v15.f64[1] = v14;
  *(*&this->polySize + 16) = vcvt_f32_f64(v15);
  v16 = a2->origin.x;
  v15.f64[0] = a2->origin.y;
  v17 = a2->size.width;
  v18 = a2->size.height;
  v30 = CGRectGetMaxX(*(&v15 - 8));
  v19 = CGRectGetMinY(*a2);
  v20.f64[0] = v30;
  v20.f64[1] = v19;
  *(*&this->polySize + 24) = vcvt_f32_f64(v20);
  v21 = *&this->polySize;
  v22 = **&this->polySize;
  v23 = *&this->polyBBox.right - *&this->polySize;
  if ((v23 >> 3) < 1)
  {
    v25 = **&this->polySize;
  }

  else
  {
    v24 = (v23 >> 3) & 0x7FFFFFFF;
    v25 = **&this->polySize;
    do
    {
      v26 = *v21++;
      v22 = vbsl_s8(vcgt_f32(v22, v26), v26, v22);
      v25 = vbsl_s8(vcgt_f32(v26, v25), v26, v25);
      --v24;
    }

    while (v24);
  }

  *&this[1].polyPoints[0].v = v22;
  *&this[2].polyBBox.left = v25;
}

void sub_257BBEE68(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE6resizeEm(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE8__appendEm(a1, a2 - v2);
  }
}

void _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8ne200100ERKS1_(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279853FD0, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void *std::vector<float>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_257BBF10C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, a2);
  }

  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<box3d>::__init_with_size[abi:ne200100]<box3d const*,box3d const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<box3d>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_257BBF224(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<box3d>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 57))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<box3d>>(a1, a2);
  }

  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<box3d>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 57))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void sub_257BBF3BC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(result, a4);
  }

  return result;
}

void sub_257BBF438(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, a2);
  }

  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
}

void *_ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPKS1_S7_EEvT_T0_l(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(v6, v10);
    }

    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 8;
        *v15 = v16;
        v15 += 8;
        v14 += 8;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

void _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE8__appendEm(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void sub_257BBFCC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = PersonDetectionManager;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_257BC1288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_257BC14B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_257BC1A18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  objc_destroyWeak((v8 + 48));
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  objc_destroyWeak((v9 - 40));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_257BC1DF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

double RenderPoseToVisionPose(simd_float4x4 a1)
{
  if (onceToken != -1)
  {
    v12 = a1;
    RenderPoseToVisionPose();
    a1 = v12;
  }

  v1 = 0;
  v2 = VW_RW;
  v3 = VW_RW;
  v4 = VW_RW;
  v5 = VW_RW;
  v13 = a1;
  do
  {
    v14[v1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v2, COERCE_FLOAT(*&v13.columns[v1])), v3, *v13.columns[v1].f32, 1), v4, v13.columns[v1], 2), v5, v13.columns[v1], 3);
    ++v1;
  }

  while (v1 != 4);
  v6 = 0;
  v7 = v14[0];
  v8 = v14[1];
  v9 = v14[2];
  v10 = v14[3];
  v13.columns[0] = RC_VC;
  v13.columns[1] = RC_VC;
  v13.columns[2] = RC_VC;
  v13.columns[3] = RC_VC;
  do
  {
    v14[v6] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v7, COERCE_FLOAT(*&v13.columns[v6])), v8, *v13.columns[v6].f32, 1), v9, v13.columns[v6], 2), v10, v13.columns[v6], 3);
    ++v6;
  }

  while (v6 != 4);
  return *v14;
}

double ___Z22RenderPoseToVisionPose13simd_float4x4_block_invoke()
{
  VW_RW = xmmword_257ED6CB0;
  VW_RW = xmmword_257ED6C00;
  VW_RW = xmmword_257ED6CC0;
  VW_RW = xmmword_257ED6CD0;
  RC_VC = xmmword_257ED6CB0;
  RC_VC = xmmword_257ED6CC0;
  result = 0.0;
  RC_VC = xmmword_257ED6CE0;
  RC_VC = xmmword_257ED6CD0;
  return result;
}

uint64_t *ou_object_group::sortIndices@<X0>(uint64_t *a1@<X0>, uint64_t **a2@<X8>)
{
  std::vector<unsigned long>::vector[abi:ne200100](a2, (a1[1] - *a1) >> 2);
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    v6 = 0;
    v7 = (v5 - v4 - 8) >> 3;
    v8 = vdupq_n_s64(v7);
    v9 = (v7 + 2) & 0x3FFFFFFFFFFFFFFELL;
    v10 = xmmword_257ED6C20;
    v11 = vdupq_n_s64(2uLL);
    do
    {
      v12 = vmovn_s64(vcgeq_u64(v8, v10));
      if (v12.i8[0])
      {
        v4[v6] = v6;
      }

      if (v12.i8[4])
      {
        v4[v6 + 1] = v6 + 1;
      }

      v6 += 2;
      v10 = vaddq_s64(v10, v11);
    }

    while (v9 != v6);
  }

  v13 = 126 - 2 * __clz(v5 - v4);
  v16 = a1;
  if (v5 == v4)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13;
  }

  return std::__introsort<std::_ClassicAlgPolicy,ou_object_group::sortIndices(std::vector<float> const&)::$_0 &,unsigned long *,false>(v4, v5, &v16, v14, 1);
}

void ou_object_group::nmsOnBoxesHelper(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, float a5)
{
  v8 = a1;
  v9 = (a2[1] - *a2) >> 7;
  if (v9 != (a3[1] - *a3) >> 2)
  {
    __assert_rtn("nmsOnBoxesHelper", "OUObjectGroup.mm", 37, "boxes.size() == box_scores.size()");
  }

  LODWORD(__src) = -1082130432;
  std::vector<float>::vector[abi:ne200100](__p, v9);
  std::vector<std::vector<float>>::vector[abi:ne200100](v52, v9);
  v41 = a3;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v11 = *a2;
  v10 = a2[1];
  if (v10 != *a2)
  {
    v12 = 0;
    v13 = *MEMORY[0x277D36D38];
    v14 = *MEMORY[0x277D36D88];
    v45 = *MEMORY[0x277D36D78];
    v15 = 128;
    v16 = 24;
    while (1)
    {
      v17 = v12++;
      if (v12 < (v10 - v11) >> 7)
      {
        break;
      }

      v22 = (v10 - v11) >> 7;
LABEL_17:
      v16 += 24;
      v15 += 128;
      if (v12 >= v22)
      {
        goto LABEL_18;
      }
    }

    v42 = v15;
    v43 = v12;
    v18 = v16;
    while (1)
    {
      v50 = 0u;
      v51 = 0u;
      *__p = 0u;
      box3dIou((v11 + (v17 << 7)), (v11 + v15), __p);
      if (([v8 isEqualToString:{v13, v41}] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", v14))
      {
        v19 = DWORD2(v50);
      }

      else
      {
        if (![v8 isEqualToString:v45])
        {
          goto LABEL_12;
        }

        v19 = __p[0];
      }

      v20 = v52[0];
      *(*(v52[0] + v18) + 4 * v17) = v19;
      *(*(v20 + 24 * v17) + 4 * v12) = v19;
LABEL_12:
      ++v12;
      v11 = *a2;
      v10 = a2[1];
      v21 = v10 - *a2;
      v18 += 24;
      v15 += 128;
      if (v12 >= v21 >> 7)
      {
        v22 = v21 >> 7;
        v15 = v42;
        v12 = v43;
        goto LABEL_17;
      }
    }
  }

LABEL_18:
  ou_object_group::sortIndices(v41, __p);
  *(a4 + 8) = *a4;
  v23 = __p[0];
  if (__p[0] != __p[1])
  {
    do
    {
      v24 = *v23;
      LODWORD(__src) = *v23;
      std::vector<int>::push_back[abi:ne200100](a4, &__src);
      __src = 0;
      v47 = 0;
      v48 = 0;
      v25 = __p[0];
      v26 = __p[1];
      if ((__p[1] - __p[0]) < 9)
      {
        v27 = 0;
        if (!__p[0])
        {
          goto LABEL_38;
        }
      }

      else
      {
        v27 = 0;
        v28 = 24 * v24;
        v29 = 1;
        do
        {
          v30 = v25[v29];
          if (*(*(v52[0] + v28) + 4 * v30) <= a5)
          {
            if (v27 >= v48)
            {
              v31 = __src;
              v32 = v27 - __src;
              v33 = (v27 - __src) >> 3;
              v34 = v33 + 1;
              if ((v33 + 1) >> 61)
              {
                _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
              }

              v35 = v48 - __src;
              if ((v48 - __src) >> 2 > v34)
              {
                v34 = v35 >> 2;
              }

              if (v35 >= 0x7FFFFFFFFFFFFFF8)
              {
                v36 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v36 = v34;
              }

              if (v36)
              {
                _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(&__src, v36);
              }

              v37 = (v27 - __src) >> 3;
              v38 = (8 * v33);
              v39 = (8 * v33 - 8 * v37);
              *v38 = v30;
              v27 = (v38 + 1);
              memcpy(v39, v31, v32);
              v40 = __src;
              __src = v39;
              v47 = v27;
              v48 = 0;
              if (v40)
              {
                operator delete(v40);
              }
            }

            else
            {
              *v27 = v30;
              v27 += 8;
            }

            v47 = v27;
            v25 = __p[0];
            v26 = __p[1];
          }

          ++v29;
        }

        while (v29 < (v26 - v25) >> 3);
        if (!v25)
        {
          goto LABEL_38;
        }
      }

      __p[1] = v25;
      operator delete(v25);
      v27 = v47;
LABEL_38:
      v23 = __src;
      __p[0] = __src;
      __p[1] = v27;
      *&v50 = v48;
    }

    while (__src != v27);
  }

  if (v23)
  {
    __p[1] = v23;
    operator delete(v23);
  }

  __p[0] = v52;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_257BC4434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  __p = &a23;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&__p);

  _Unwind_Resume(a1);
}

void std::vector<int>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void ou_object_group::nmsClasswise(uint64_t *a1@<X0>, void *a2@<X8>, float a3@<S0>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v39 = 0;
  v40 = 0;
  v6 = MEMORY[0x277D36D38];
  v7 = *a1;
  v8 = MEMORY[0x277D36D88];
  v9 = MEMORY[0x277D36D78];
  if (*a1 == a1[1])
  {
    v15 = 0;
    v16 = 0;
  }

  else
  {
    v10 = *MEMORY[0x277D36D38];
    v11 = *MEMORY[0x277D36D88];
    v12 = *a1;
    v13 = *MEMORY[0x277D36D78];
    do
    {
      v14 = *(v12 + 128);
      if ([v14 isEqualToString:v10])
      {
        LODWORD(v36) = -1227133513 * ((v7 - *a1) >> 5);
        std::vector<int>::push_back[abi:ne200100](&v45, &v36);
      }

      else if ([v14 isEqualToString:v11])
      {
        LODWORD(v36) = -1227133513 * ((v7 - *a1) >> 5);
        std::vector<int>::push_back[abi:ne200100](&v42, &v36);
      }

      else if ([v14 isEqualToString:v13])
      {
        LODWORD(v36) = -1227133513 * ((v7 - *a1) >> 5);
        std::vector<int>::push_back[abi:ne200100](&v39, &v36);
      }

      v12 += 224;
      v7 += 224;
    }

    while (v12 != a1[1]);
    v15 = v45;
    v16 = v46;
    v9 = MEMORY[0x277D36D78];
    v8 = MEMORY[0x277D36D88];
    v6 = MEMORY[0x277D36D38];
  }

  v36 = 0;
  v37 = 0;
  v38 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  if (v16 != v15)
  {
    v17 = 0;
    do
    {
      std::vector<box3d>::push_back[abi:ne200100](&v33, (*a1 + 224 * v15[v17]));
      std::vector<float>::push_back[abi:ne200100](&v30, (*a1 + 224 * v45[v17++] + 136));
      v15 = v45;
    }

    while (v17 < v46 - v45);
  }

  ou_object_group::nmsOnBoxesHelper(*v6, &v33, &v30, &v36, a3);
  v18 = v36;
  v19 = v37;
  if (v36 != v37)
  {
    do
    {
      std::vector<OUBox3d>::push_back[abi:ne200100](a2, (*a1 + 224 * v45[*v18++]));
    }

    while (v18 != v19);
    v18 = v36;
  }

  v34 = v33;
  v31 = v30;
  v37 = v18;
  v20 = v42;
  if (v43 != v42)
  {
    v21 = 0;
    do
    {
      std::vector<box3d>::push_back[abi:ne200100](&v33, (*a1 + 224 * v20[v21]));
      std::vector<float>::push_back[abi:ne200100](&v30, (*a1 + 224 * *(v42 + v21++) + 136));
      v20 = v42;
    }

    while (v21 < (v43 - v42) >> 2);
  }

  ou_object_group::nmsOnBoxesHelper(*v8, &v33, &v30, &v36, a3);
  v22 = v36;
  v23 = v37;
  if (v36 != v37)
  {
    do
    {
      std::vector<OUBox3d>::push_back[abi:ne200100](a2, (*a1 + 224 * *(v42 + *v22++)));
    }

    while (v22 != v23);
    v22 = v36;
  }

  v34 = v33;
  v31 = v30;
  v37 = v22;
  v24 = v39;
  if (v40 != v39)
  {
    v25 = 0;
    do
    {
      std::vector<box3d>::push_back[abi:ne200100](&v33, (*a1 + 224 * v24[v25]));
      box3dToCentroidSizeAngle((*a1 + 224 * *(v39 + v25)), __p);
      v28 = (*(__p[0] + 3) * *(__p[0] + 4)) * *(__p[0] + 5);
      std::vector<float>::push_back[abi:ne200100](&v30, &v28);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      ++v25;
      v24 = v39;
    }

    while (v25 < (v40 - v39) >> 2);
  }

  ou_object_group::nmsOnBoxesHelper(*v9, &v33, &v30, &v36, a3);
  v26 = v36;
  v27 = v37;
  if (v36 != v37)
  {
    do
    {
      std::vector<OUBox3d>::push_back[abi:ne200100](a2, (*a1 + 224 * *(v39 + *v26++)));
    }

    while (v26 != v27);
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }

  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }
}

void sub_257BC49F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, void *a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a26)
  {
    v28[1] = a26;
    operator delete(a26);
  }

  v31 = v28[3];
  if (v31)
  {
    v28[4] = v31;
    operator delete(v31);
  }

  v28[3] = v26;
  std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100]((v29 - 128));
  _Unwind_Resume(a1);
}

void std::vector<box3d>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v13 = (v4 - *a1) >> 7;
    v14 = v13 + 1;
    if ((v13 + 1) >> 57)
    {
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
    }

    v15 = v5 - *a1;
    if (v15 >> 6 > v14)
    {
      v14 = v15 >> 6;
    }

    if (v15 >= 0x7FFFFFFFFFFFFF80)
    {
      v16 = 0x1FFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = v14;
    }

    if (v16)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<box3d>>(a1, v16);
    }

    v17 = (v13 << 7);
    v18 = *a2;
    v19 = a2[1];
    v20 = a2[3];
    v17[2] = a2[2];
    v17[3] = v20;
    *v17 = v18;
    v17[1] = v19;
    v21 = a2[4];
    v22 = a2[5];
    v23 = a2[7];
    v17[6] = a2[6];
    v17[7] = v23;
    v17[4] = v21;
    v17[5] = v22;
    v12 = (v13 << 7) + 128;
    v24 = *(a1 + 8) - *a1;
    v25 = v17 - v24;
    memcpy(v17 - v24, *a1, v24);
    v26 = *a1;
    *a1 = v25;
    *(a1 + 8) = v12;
    *(a1 + 16) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = a2[3];
    v4[2] = a2[2];
    v4[3] = v8;
    *v4 = v6;
    v4[1] = v7;
    v9 = a2[4];
    v10 = a2[5];
    v11 = a2[7];
    v4[6] = a2[6];
    v4[7] = v11;
    v4[4] = v9;
    v4[5] = v10;
    v12 = (v4 + 8);
  }

  *(a1 + 8) = v12;
}

void std::vector<float>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t std::vector<OUBox3d>::push_back[abi:ne200100](uint64_t a1, const OUBox3d *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<OUBox3d>::__emplace_back_slow_path<OUBox3d const&>(a1, a2);
  }

  else
  {
    OUBox3d::OUBox3d(*(a1 + 8), a2);
    result = v3 + 224;
    *(a1 + 8) = v3 + 224;
  }

  *(a1 + 8) = result;
  return result;
}

void ou_object_group::boxesFromObjects(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = a1;
  v6 = a2;
  v7 = 0;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  while ([v5 count] > v7)
  {
    v8 = [v5 objectAtIndexedSubscript:v7];
    v9 = [v8 hasBoxesDict:v6];

    if (v9)
    {
      memset(v40, 0, sizeof(v40));
      v10 = [v5 objectAtIndexedSubscript:v7];
      v11 = [v10 boxesDict];
      v12 = [v11 objectForKeyedSubscript:v6];
      box3dFromNSArray(v12, v40);

      v13 = [v5 objectAtIndexedSubscript:v7];
      v30 = [v13 type];
      v14 = [v5 objectAtIndexedSubscript:v7];
      [v14 confidence];
      v16 = v15;
      v17 = [v5 objectAtIndexedSubscript:v7];
      v18 = [v17 identifier];
      OUBox3d::OUBox3d(v31, v40, &v30, v18, v16);
      v19 = a3[1];
      if (v19 >= a3[2])
      {
        v29 = std::vector<OUBox3d>::__emplace_back_slow_path<OUBox3d>(a3, v31);
      }

      else
      {
        v20 = v31[0];
        v21 = v31[1];
        v22 = v31[3];
        *(v19 + 32) = v31[2];
        *(v19 + 48) = v22;
        *v19 = v20;
        *(v19 + 16) = v21;
        v23 = v31[4];
        v24 = v31[5];
        v25 = v31[7];
        *(v19 + 96) = v31[6];
        *(v19 + 112) = v25;
        *(v19 + 64) = v23;
        *(v19 + 80) = v24;
        v26 = v32;
        v32 = 0;
        *(v19 + 128) = v26;
        *(v19 + 136) = v33;
        v27 = v34;
        v34 = 0u;
        *(v19 + 176) = 0;
        *(v19 + 144) = v27;
        *(v19 + 160) = 0u;
        *(v19 + 160) = v35;
        *(v19 + 176) = v36;
        v35 = 0u;
        v36 = 0;
        *(v19 + 184) = __p[0];
        *(v19 + 192) = *&__p[1];
        memset(__p, 0, sizeof(__p));
        v28 = v38;
        v38 = 0;
        *(v19 + 208) = v28;
        *(v19 + 216) = v39;
        v29 = v19 + 224;
      }

      a3[1] = v29;

      if (__p[0])
      {
        operator delete(__p[0]);
      }

      if (v35)
      {
        *(&v35 + 1) = v35;
        operator delete(v35);
      }
    }

    ++v7;
  }
}

void sub_257BC4F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  OUBox3d::~OUBox3d(va);

  std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ou_object_group::box3d_iou_pairwise_matrix(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 64) = 0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v7 = *a1;
  v6 = a1[1];
  v8 = 0x6DB6DB6DB6DB6DB7 * ((v6 - *a1) >> 5);
  v15 = 0;
  std::vector<float>::vector[abi:ne200100](__p, v8);
  std::vector<std::vector<float>>::resize((a3 + 24), v8, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v15 = 0;
  std::vector<float>::vector[abi:ne200100](__p, v8);
  std::vector<std::vector<float>>::resize(a3, v8, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v15 = 0;
  std::vector<float>::vector[abi:ne200100](__p, v8);
  std::vector<std::vector<float>>::resize((a3 + 48), v8, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v6 != v7)
  {
    v9 = 0;
    if (v8 <= 1)
    {
      v8 = 1;
    }

    do
    {
      v10 = 0;
      for (i = 0; i != v8; ++i)
      {
        v13 = 0u;
        v14 = 0u;
        *__p = 0u;
        box3dIou((*a1 + 224 * v9), (*a2 + v10), __p);
        *(*(*a3 + 24 * v9) + 4 * i) = __p[0];
        *(*(*(a3 + 24) + 24 * v9) + 4 * i) = HIDWORD(__p[0]);
        *(*(*(a3 + 48) + 24 * v9) + 4 * i) = __p[1];
        v10 += 224;
      }

      ++v9;
    }

    while (v9 != v8);
  }
}

void sub_257BC51A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  ou_object_group::box3dPairwiseMatrices::~box3dPairwiseMatrices(v10);
  _Unwind_Resume(a1);
}

void std::vector<std::vector<float>>::resize(size_t *a1, unint64_t a2, uint64_t *a3)
{
  v4 = a1[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  v6 = a2 >= v5;
  v7 = a2 - v5;
  if (v7 != 0 && v6)
  {

    std::vector<std::vector<float>>::__append(a1, v7, a3);
  }

  else if (!v6)
  {
    v8 = *a1 + 24 * a2;
    if (v4 != v8)
    {
      v9 = a1[1];
      do
      {
        v11 = *(v9 - 24);
        v9 -= 24;
        v10 = v11;
        if (v11)
        {
          *(v4 - 16) = v10;
          operator delete(v10);
        }

        v4 = v9;
      }

      while (v9 != v8);
    }

    a1[1] = v8;
  }
}

void ou_object_group::box3dPairwiseMatrices::~box3dPairwiseMatrices(void **this)
{
  v2 = this + 6;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 3;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void ou_object_group::removeLargeChairs(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 5);
  LODWORD(__p[0]) = 0;
  std::vector<float>::vector[abi:ne200100](&v23, v6);
  v7 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 5);
  v21 = 0;
  std::vector<float>::vector[abi:ne200100](__p, v7);
  v8 = *a1;
  v9 = a1[1];
  if (v9 != *a1)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = boxVolume((v8 + v10));
      *(__p[0] + v11++) = v12;
      v8 = *a1;
      v9 = a1[1];
      v10 += 224;
    }

    while (v11 < 0x6DB6DB6DB6DB6DB7 * ((v9 - *a1) >> 5));
  }

  v21 = 0;
  if (v9 != v8)
  {
    v13 = 0;
    v14 = *MEMORY[0x277D36D38];
    do
    {
      if ([*(v8 + 224 * v13 + 128) isEqualToString:v14] && *(__p[0] + v21) >= 1.0)
      {
        v16 = *a1;
        v15 = a1[1];
        if (v15 != *a1)
        {
          v17 = 0;
          v18 = 0;
          v19 = 128;
          do
          {
            if (v17 == v21)
            {
              *(v23 + v17) = 0;
            }

            else
            {
              v20 = *(*(*a2 + 24 * v21) + 4 * v17) / *(__p[0] + v17);
              *(v23 + v17) = v20;
              if (v20 > 0.6)
              {
                v18 += [*(v16 + v19) isEqualToString:v14];
                v16 = *a1;
                v15 = a1[1];
              }
            }

            ++v17;
            v19 += 224;
          }

          while (0x6DB6DB6DB6DB6DB7 * ((v15 - v16) >> 5) > v17);
          if (v18 > 1)
          {
            std::vector<int>::push_back[abi:ne200100](a3, &v21);
          }
        }

        if (v24 - v23 >= 1)
        {
          bzero(v23, v24 - v23);
        }
      }

      v13 = ++v21;
      v8 = *a1;
    }

    while (0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 5) > v13);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }
}

void sub_257BC5530(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  v17 = *v15;
  if (*v15)
  {
    *(v15 + 8) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ou_object_group::removeBoxFromList@<X0>(void *a1@<X0>, int **a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::unordered_set<int>::unordered_set<std::__wrap_iter<int const*>>(v8, *a2, a2[1]);
  v7 = 0;
  if (a1[1] != *a1)
  {
    do
    {
      if (!std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(v8, &v7))
      {
        std::vector<OUBox3d>::push_back[abi:ne200100](a3, (*a1 + 224 * v7));
      }

      v5 = ++v7;
    }

    while (0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 5) > v5);
  }

  return std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v8);
}

void sub_257BC5644(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ou_object_group::removeRowCol(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (a2[1] != *a2)
  {
    v5 = 0;
    v6 = a1[1];
    do
    {
      v7 = *a1 + 24 * *(v2 + 4 * v5);
      if (v7 + 24 == v6)
      {
        v10 = v6;
        v6 = *a1 + 24 * *(v2 + 4 * v5);
      }

      else
      {
        do
        {
          v8 = v7 + 24;
          std::vector<float>::__move_assign(v7, (v7 + 24));
          v9 = v7 + 48;
          v7 += 24;
        }

        while (v9 != v6);
        v10 = a1[1];
        v6 = v8;
      }

      if (v10 != v6)
      {
        v11 = v10;
        do
        {
          v13 = *(v11 - 24);
          v11 -= 24;
          v12 = v13;
          if (v13)
          {
            *(v10 - 16) = v12;
            operator delete(v12);
          }

          v10 = v11;
        }

        while (v11 != v6);
      }

      a1[1] = v6;
      ++v5;
      v2 = *a2;
      v14 = a2[1];
    }

    while (v5 < (v14 - *a2) >> 2);
    if (v14 != v2)
    {
      v15 = 0;
      v16 = *a1;
      v17 = v6;
      do
      {
        if (v17 == v16)
        {
          v17 = v16;
        }

        else
        {
          v18 = 0;
          v19 = 0;
          do
          {
            v20 = v16 + v18;
            v21 = *(v16 + v18 + 8);
            v22 = *(v16 + v18) + 4 * *(*a2 + 4 * v15);
            v23 = v21 - (v22 + 4);
            if (v21 != v22 + 4)
            {
              memmove((*(v16 + v18) + 4 * *(*a2 + 4 * v15)), (v22 + 4), v21 - (v22 + 4));
              v16 = *a1;
              v6 = a1[1];
            }

            *(v20 + 8) = v22 + v23;
            ++v19;
            v18 += 24;
          }

          while (v19 < 0xAAAAAAAAAAAAAAABLL * ((v6 - v16) >> 3));
          v2 = *a2;
          v14 = a2[1];
          v17 = v6;
        }

        ++v15;
      }

      while (v15 < (v14 - v2) >> 2);
    }
  }
}

uint64_t ou_object_group::checkChairTableOverlap(float32x4_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (a2[1] == *a2)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = 0;
  v6 = 0;
  v7 = *MEMORY[0x277D36D88];
  v8 = *MEMORY[0x277D36D78];
  v9 = 0xFFFFFFFFLL;
  v10 = 0.0;
  do
  {
    v11 = [*(v2 + v5 + 128) isEqualToString:v7];
    v2 = *a2;
    if ((v11 & 1) != 0 || (v12 = [*(v2 + v5 + 128) isEqualToString:v8], v2 = *a2, v12) && (*(v2 + v5 + 72) - *(v2 + v5 + 8)) < 1.3)
    {
      memset(v14, 0, sizeof(v14));
      box3dIou(a1, (v2 + v5), v14);
      if (*v14 <= v10)
      {
        v9 = v9;
      }

      else
      {
        v9 = v6;
      }

      if (*v14 > v10)
      {
        v10 = *v14;
      }

      v2 = *a2;
    }

    ++v6;
    v5 += 224;
  }

  while (0x6DB6DB6DB6DB6DB7 * ((a2[1] - v2) >> 5) > v6);
  return v9;
}

void ou_object_group::getIndexOverlapAll(void *a1, uint64_t *a2)
{
  v4 = 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 5);
  LODWORD(v21[0]) = 0;
  std::vector<int>::vector[abi:ne200100](v22, v4);
  v5 = *a2;
  v6 = a2[1];
  v7 = MEMORY[0x277D36D38];
  if (v6 != *a2)
  {
    v8 = 0;
    v9 = 0;
    v10 = *MEMORY[0x277D36D38];
    do
    {
      if ([*(v5 + v8 + 128) isEqualToString:v10])
      {
        v11 = ou_object_group::checkChairTableOverlap((*a2 + v8), a2);
        v12 = v11;
        if ((v11 & 0x80000000) == 0)
        {
          box3dToCentroidSizeAngle((*a2 + 224 * v11), v21);
          box3dToCentroidSizeAngle((*a2 + v8), __p);
          v13 = __p[0];
          if ((*(v21[0] + 3) * *(v21[0] + 4)) >= ((*(__p[0] + 3) * *(__p[0] + 4)) + (*(__p[0] + 3) * *(__p[0] + 4))) && vabds_f32(*(*a2 + v8 + 8), *(*a2 + 224 * v12 + 8)) <= 0.3)
          {
            ++*(v22[0] + v12);
          }

          else
          {
            v12 = -1;
          }

          __p[1] = v13;
          operator delete(v13);
          if (v21[0])
          {
            v21[1] = v21[0];
            operator delete(v21[0]);
          }
        }
      }

      else
      {
        v12 = -1;
      }

      if (v9 >= (a1[1] - *a1) >> 2)
      {
        std::vector<int>::__throw_out_of_range[abi:ne200100]();
      }

      *(*a1 + 4 * v9++) = v12;
      v5 = *a2;
      v6 = a2[1];
      v8 += 224;
    }

    while (v9 < 0x6DB6DB6DB6DB6DB7 * ((v6 - *a2) >> 5));
  }

  if (v6 != v5)
  {
    v14 = 0;
    v15 = 0;
    v16 = *v7;
    v17 = *MEMORY[0x277D36D30];
    v18 = *MEMORY[0x277D36D78];
    do
    {
      if ([*(v5 + v14 + 128) isEqualToString:v16])
      {
        if (v15 >= (a1[1] - *a1) >> 2)
        {
          std::vector<int>::__throw_out_of_range[abi:ne200100]();
        }

        v19 = *(*a1 + 4 * v15);
        if ((v19 & 0x80000000) == 0 && *(v22[0] + v19) == 1 && (([*(*a2 + 224 * v19 + 128) isEqualToString:v17] & 1) != 0 || objc_msgSend(*(*a2 + 224 * v19 + 128), "isEqualToString:", v18)) && vaddv_f32(vmul_f32(vsub_f32(*(*a2 + v14 + 16), *(*a2 + v14)), vsub_f32(vmul_f32(vadd_f32(*(*a2 + 224 * v19), *(*a2 + 224 * v19 + 32)), 0x3F0000003F000000), vmul_f32(vadd_f32(*(*a2 + v14), *(*a2 + v14 + 32)), 0x3F0000003F000000)))) < 0.0)
        {
          if (v15 >= (a1[1] - *a1) >> 2)
          {
            std::vector<int>::__throw_out_of_range[abi:ne200100]();
          }

          *(*a1 + 4 * v15) = -1;
        }
      }

      ++v15;
      v5 = *a2;
      v14 += 224;
    }

    while (v15 < 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 5));
  }

  if (v22[0])
  {
    v22[1] = v22[0];
    operator delete(v22[0]);
  }
}

void sub_257BC5C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id ou_object_group::groupTableChair(void *a1)
{
  v81 = *MEMORY[0x277D85DE8];
  v41 = a1;
  ou_object_group::boxesFromObjects(v41, *MEMORY[0x277D36D10], &v77);
  v75 = 0uLL;
  v76 = 0;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  v2 = v77;
  v1 = v78;
  if (v77 == v78)
  {
    goto LABEL_36;
  }

  v3 = 0;
  v45 = *MEMORY[0x277D36D38];
  v4 = *MEMORY[0x277D36D88];
  v5 = *MEMORY[0x277D36D78];
  do
  {
    if (([v2[16] isEqualToString:v45] & 1) != 0 || (objc_msgSend(v2[16], "isEqualToString:", v4) & 1) != 0 || objc_msgSend(v2[16], "isEqualToString:", v5))
    {
      std::vector<OUBox3d>::push_back[abi:ne200100](&v75, v2);
    }

    v3 += [v2[16] isEqualToString:v45];
    v2 += 28;
  }

  while (v2 != v1);
  if (!v3 || v75 == *(&v75 + 1))
  {
LABEL_36:
    v42 = 0;
  }

  else
  {
    ou_object_group::nmsClasswise(&v75, &v66, 0.25);
    std::vector<OUBox3d>::__vdeallocate(&v75);
    v75 = v66;
    v76 = v67;
    v67 = 0;
    v66 = 0uLL;
    v64 = &v66;
    std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](&v64);
    ou_object_group::box3d_iou_pairwise_matrix(&v75, &v75, &v66);
    ou_object_group::removeLargeChairs(&v75, &v68, &v64);
    memset(v63, 0, sizeof(v63));
    std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v63, v66, *(&v66 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v66 + 1) - v66) >> 3));
    memset(v62, 0, sizeof(v62));
    std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v62, v68, v69, 0xAAAAAAAAAAAAAAABLL * ((v69 - v68) >> 3));
    memset(v61, 0, sizeof(v61));
    std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v61, v70, v71, 0xAAAAAAAAAAAAAAABLL * ((v71 - v70) >> 3));
    if (v64 != v65)
    {
      ou_object_group::removeBoxFromList(&v75, &v64, v59);
      std::vector<OUBox3d>::__vdeallocate(&v75);
      v75 = *v59;
      v76 = v60;
      v59[1] = 0;
      v60 = 0;
      v59[0] = 0;
      v57 = v59;
      std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](&v57);
      ou_object_group::removeRowCol(v63, &v64);
      ou_object_group::removeRowCol(v62, &v64);
      ou_object_group::removeRowCol(v61, &v64);
    }

    LODWORD(v57) = 0;
    std::vector<int>::vector[abi:ne200100](v59, 0x6DB6DB6DB6DB6DB7 * ((*(&v75 + 1) - v75) >> 5));
    ou_object_group::getIndexOverlapAll(v59, &v75);
    std::set<int>::set[abi:ne200100]<std::__wrap_iter<int *>>(&v57, v59[0], v59[1]);
    __p = 0;
    v55 = 0;
    v56 = 0;
    v6 = v57;
    if (v57 != v58)
    {
      do
      {
        if ((*(v6 + 7) & 0x80000000) == 0)
        {
          std::vector<int>::push_back[abi:ne200100](&__p, v6 + 7);
        }

        v7 = v6[1];
        if (v7)
        {
          do
          {
            v8 = v7;
            v7 = *v7;
          }

          while (v7);
        }

        else
        {
          do
          {
            v8 = v6[2];
            v9 = *v8 == v6;
            v6 = v8;
          }

          while (!v9);
        }

        v6 = v8;
      }

      while (v8 != v58);
    }

    v42 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v10 = v75;
    if (*(&v75 + 1) != v75)
    {
      v11 = 0;
      v12 = 144;
      do
      {
        v13 = *(v59[0] + v11);
        if ((v13 & 0x80000000) == 0)
        {
          v14 = v10 + 224 * v13;
          v16 = *(v14 + 144);
          v15 = (v14 + 144);
          v17 = [v42 objectForKey:v16];
          v18 = v17 == 0;

          if (v18)
          {
            v19 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{*(v10 + v12), 0}];
            [v42 setObject:v19 forKey:*v15];
          }

          else
          {
            v19 = [v42 objectForKeyedSubscript:*v15];
            [v19 addObject:*(v10 + v12)];
          }
        }

        ++v11;
        v10 = v75;
        v12 += 224;
      }

      while (v11 < 0x6DB6DB6DB6DB6DB7 * ((*(&v75 + 1) - v75) >> 5));
    }

    for (i = v77; i != v78; i += 28)
    {
      v21 = i[16];
      if (([v21 isEqualToString:v45] & 1) == 0 && (objc_msgSend(v21, "isEqualToString:", v4) & 1) == 0 && (objc_msgSend(v21, "isEqualToString:", v5) & 1) == 0)
      {
        std::vector<OUBox3d>::push_back[abi:ne200100](&v75, i);
      }
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    obj = [v42 allValues];
    v23 = [obj countByEnumeratingWithState:&v50 objects:v80 count:16];
    if (v23)
    {
      v24 = 0;
      v44 = *v51;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v51 != v44)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v50 + 1) + 8 * j);
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          v27 = v26;
          v28 = [v27 countByEnumeratingWithState:&v46 objects:v79 count:16];
          if (v28)
          {
            v29 = *v47;
            do
            {
              for (k = 0; k != v28; ++k)
              {
                if (*v47 != v29)
                {
                  objc_enumerationMutation(v27);
                }

                v31 = *(*(&v46 + 1) + 8 * k);
                v32 = [MEMORY[0x277CCABB0] numberWithInt:v24];
                [0 setObject:v32 forKeyedSubscript:v31];
              }

              v28 = [v27 countByEnumeratingWithState:&v46 objects:v79 count:16];
            }

            while (v28);
            v33 = 1;
          }

          else
          {
            v33 = 0;
          }

          v24 = (v33 + v24);
        }

        v23 = [obj countByEnumeratingWithState:&v50 objects:v80 count:16];
      }

      while (v23);
    }

    v34 = *(&v75 + 1);
    v35 = v75;
    if (v75 != *(&v75 + 1))
    {
      v36 = *MEMORY[0x277D36D18];
      do
      {
        std::vector<OUBox3d>::push_back[abi:ne200100](&v72, v35);
        if ([*(v35 + 128) isEqualToString:v45])
        {
          v37 = [0 objectForKeyedSubscript:*(v35 + 144)];
          v38 = v37 == 0;

          if (!v38)
          {
            objc_storeStrong((v73 - 16), v36);
            v39 = [0 objectForKeyedSubscript:*(v35 + 144)];
            v40 = [v39 intValue];
            *(v73 - 8) = v40;
          }
        }

        v35 += 224;
      }

      while (v35 != v34);
    }

    if (__p)
    {
      v55 = __p;
      operator delete(__p);
    }

    std::__tree<int>::destroy(&v57, v58[0]);
    if (v59[0])
    {
      v59[1] = v59[0];
      operator delete(v59[0]);
    }

    v59[0] = v61;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v59);
    v61[0] = v62;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v61);
    v62[0] = v63;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v62);
    if (v64)
    {
      v65 = v64;
      operator delete(v64);
    }

    v64 = &v70;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v64);
    v64 = &v68;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v64);
    v64 = &v66;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v64);
  }

  *&v66 = &v72;
  std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](&v66);
  *&v66 = &v75;
  std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](&v66);
  *&v66 = &v77;
  std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](&v66);

  return v42;
}

void sub_257BC63D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, void *__p, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  a39 = &a43;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a39);
  a43 = &a46;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a43);
  a46 = &a49;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a46);
  if (__p)
  {
    a53 = __p;
    operator delete(__p);
  }

  ou_object_group::box3dPairwiseMatrices::~box3dPairwiseMatrices(&a55);
  a55 = &a64;
  std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](&a55);
  a55 = &a67;
  std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](&a55);
  a55 = &a70;
  std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](&a55);

  _Unwind_Resume(a1);
}

id ou_object_group::groupStorage(void *a1)
{
  v1 = a1;
  v2 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v3 = *MEMORY[0x277D36D30];
  v39 = *MEMORY[0x277D36D28];
  v38 = *MEMORY[0x277D36D78];
  v36 = *MEMORY[0x277D36D58];
  while (1)
  {
    __p.i32[0] = v2;
    if ([v1 count] <= v2)
    {
      break;
    }

    v4 = [v1 objectAtIndexedSubscript:__p.i32[0]];
    v5 = [v4 type];
    if ([v5 isEqualToString:v3])
    {
      goto LABEL_8;
    }

    v6 = [v1 objectAtIndexedSubscript:__p.i32[0]];
    v7 = [v6 type];
    if ([v7 isEqualToString:v39])
    {
      goto LABEL_7;
    }

    v8 = [v1 objectAtIndexedSubscript:__p.i32[0]];
    v9 = [v8 type];
    if ([v9 isEqualToString:v38])
    {

LABEL_7:
LABEL_8:

LABEL_9:
      std::vector<int>::push_back[abi:ne200100](&v47, &__p);
      goto LABEL_10;
    }

    v10 = [v1 objectAtIndexedSubscript:__p.i32[0]];
    v11 = [v10 type];
    v37 = [v11 isEqualToString:v36];

    if (v37)
    {
      goto LABEL_9;
    }

LABEL_10:
    v2 = __p.i32[0] + 1;
  }

  v12 = v47;
  if (v47 == v48)
  {
    v28 = 0;
    if (v47)
    {
      goto LABEL_32;
    }
  }

  else
  {
    memset(v46, 0, sizeof(v46));
    v13 = (v48 - v47) >> 2;
    v41[0].i32[0] = 0;
    std::vector<int>::vector[abi:ne200100](&__p, v13);
    std::vector<std::vector<int>>::resize(v46, v13, &__p);
    if (__p.i64[0])
    {
      __p.i64[1] = __p.i64[0];
      operator delete(__p.i64[0]);
    }

    v14 = v47;
    v15 = v48;
    if (v48 != v47)
    {
      v16 = 0;
      v17 = *MEMORY[0x277D36D10];
      do
      {
        if ((v15 - v14) <= 4)
        {
          v27 = (v15 - v14) >> 2;
        }

        else
        {
          v18 = *&v14[4 * v16];
          v19 = 1;
          do
          {
            v20 = *&v14[4 * v19];
            v21 = [v1 objectAtIndexedSubscript:v18];
            v22 = [v21 boxesDict];
            v23 = [v22 objectForKey:v17];
            box3dFromNSArray(v23, &__p);

            v24 = [v1 objectAtIndexedSubscript:v20];
            v25 = [v24 boxesDict];
            v26 = [v25 objectForKey:v17];
            box3dFromNSArray(v26, v41);

            memset(v40, 0, sizeof(v40));
            box3dIou(&__p, v41, v40);
            *(*(v46[0] + 24 * v16) + 4 * v19++) = *v40 > 0.05;
            v14 = v47;
            v15 = v48;
            v27 = (v48 - v47) >> 2;
          }

          while (v27 > v19);
        }

        ++v16;
      }

      while (v27 > v16);
    }

    ou_object_group::RelationGrouping::RelationGrouping(&__p, v46);
    ou_object_group::RelationGrouping::groupItems(&__p);
    v28 = [MEMORY[0x277CBEB18] arrayWithCapacity:0xCCCCCCCCCCCCCCCDLL * ((v45 - v44) >> 3)];
    v29 = v44;
    v30 = v45;
    while (v29 != v30)
    {
      v31 = [MEMORY[0x277CBEB18] array];
      for (i = *(v29 + 16); i; i = *i)
      {
        v33 = [v1 objectAtIndexedSubscript:*&v47[4 * *(i + 4)]];
        v34 = [v33 identifier];
        [v31 addObject:v34];
      }

      [v28 addObject:v31];

      v29 += 40;
    }

    v41[0].i64[0] = &v44;
    std::vector<ou_object_group::ItemGroup>::__destroy_vector::operator()[abi:ne200100](v41);
    if (v43)
    {
      operator delete(v43);
    }

    v41[0].i64[0] = &__p;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v41);
    __p.i64[0] = v46;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&__p);
    v12 = v47;
    if (v47)
    {
LABEL_32:
      v48 = v12;
      operator delete(v12);
    }
  }

  return v28;
}

void sub_257BC69E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
{
  ou_object_group::RelationGrouping::~RelationGrouping(&__p);
  a13 = v37 - 152;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a13);
  v39 = *(v37 - 128);
  if (v39)
  {
    *(v37 - 120) = v39;
    operator delete(v39);
  }

  _Unwind_Resume(a1);
}

void std::vector<std::vector<int>>::resize(size_t *a1, unint64_t a2, uint64_t *a3)
{
  v4 = a1[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  v6 = a2 >= v5;
  v7 = a2 - v5;
  if (v7 != 0 && v6)
  {

    std::vector<std::vector<int>>::__append(a1, v7, a3);
  }

  else if (!v6)
  {
    v8 = *a1 + 24 * a2;
    if (v4 != v8)
    {
      v9 = a1[1];
      do
      {
        v11 = *(v9 - 24);
        v9 -= 24;
        v10 = v11;
        if (v11)
        {
          *(v4 - 16) = v10;
          operator delete(v10);
        }

        v4 = v9;
      }

      while (v9 != v8);
    }

    a1[1] = v8;
  }
}

uint64_t *ou_object_group::RelationGrouping::groupItems(uint64_t *this)
{
  v2 = *this;
  v1 = this[1];
  if (v1 != *this)
  {
    v3 = this;
    v4 = 0;
    do
    {
      if (((*(v3[3] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        memset(v7, 0, sizeof(v7));
        v8 = 1065353216;
        ou_object_group::RelationGrouping::dfs(v3, v4, v7);
        v5 = v3[7];
        if (v5 >= v3[8])
        {
          v6 = std::vector<ou_object_group::ItemGroup>::__emplace_back_slow_path<ou_object_group::ItemGroup const&>((v3 + 6), v7);
        }

        else
        {
          std::unordered_set<int>::unordered_set(v3[7], v7);
          v6 = v5 + 40;
          v3[7] = v5 + 40;
        }

        v3[7] = v6;
        this = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v7);
        v2 = *v3;
        v1 = v3[1];
      }

      ++v4;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v1 - v2) >> 3) > v4);
  }

  return this;
}

void sub_257BC6CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 56) = v10;
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a9);
  _Unwind_Resume(a1);
}

uint64_t OUBox3d::OUBox3d(uint64_t a1, __int128 *a2, id *a3, void *a4, float a5)
{
  v9 = a4;
  v10 = a2[3];
  v12 = *a2;
  v11 = a2[1];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v10;
  *a1 = v12;
  *(a1 + 16) = v11;
  v13 = a2[7];
  v15 = a2[4];
  v14 = a2[5];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v13;
  *(a1 + 64) = v15;
  *(a1 + 80) = v14;
  *(a1 + 128) = *a3;
  *(a1 + 136) = a5;
  *(a1 + 144) = [v9 copy];
  *(a1 + 152) = *MEMORY[0x277D36D20];
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0;
  *(a1 + 216) = -1;

  return a1;
}

void OUBox3d::~OUBox3d(id *this)
{
  v2 = this[23];
  if (v2)
  {
    operator delete(v2);
  }

  v3 = this[20];
  if (v3)
  {
    this[21] = v3;
    operator delete(v3);
  }
}

void *ou_object_group::RelationGrouping::RelationGrouping(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int>*,std::vector<int>*>(a1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  std::vector<BOOL>::vector(a1 + 3, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  return a1;
}

void sub_257BC6EE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int>*,std::vector<int>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<int>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_257BC6F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::vector<int>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(a1, a2);
  }

  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<int>>,std::vector<int>*,std::vector<int>*,std::vector<int>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v4, *v6, v6[1], (v6[1] - *v6) >> 2);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<int>>,std::vector<int>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_257BC7138(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<int>>,std::vector<int>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<int>>,std::vector<int>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<int>>,std::vector<int>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 24);
      v3 -= 24;
      v4 = v5;
      if (v5)
      {
        *(v1 - 16) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

void std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<int>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<int>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void *std::vector<BOOL>::vector(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<BOOL>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = *(a2 + 8);
  if (v2)
  {
    std::vector<BOOL>::__vallocate[abi:ne200100](result, v2);
  }

  return result;
}

void std::vector<BOOL>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, v2);
  }

  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
}

void *std::__fill_n_BOOL[abi:ne200100]<true,std::vector<BOOL>>(void *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 2);
  v5 = *result;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4);
    v2 = a2 - v6;
    *result = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    result = memset(v5, 255, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *v3 = v8;
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F);
  }

  return result;
}

void std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

uint64_t *ou_object_group::RelationGrouping::dfs(uint64_t *a1, int a2, void *a3)
{
  v9 = a2;
  *(a1[3] + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  result = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(a3, &v9);
  v7 = *a1;
  v6 = a1[1];
  if (v6 != *a1)
  {
    v8 = 0;
    do
    {
      if (*(*(v7 + 24 * v9) + 4 * v8) == 1 && ((*(a1[3] + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        result = ou_object_group::RelationGrouping::dfs(a1, v8, a3);
        v7 = *a1;
        v6 = a1[1];
      }

      ++v8;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3) > v8);
  }

  return result;
}

uint64_t *std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t std::vector<ou_object_group::ItemGroup>::__emplace_back_slow_path<ou_object_group::ItemGroup const&>(uint64_t a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ou_object_group::ItemGroup>>(a1, v6);
  }

  v13 = 0;
  v14 = 40 * v2;
  std::unordered_set<int>::unordered_set(40 * v2, a2);
  v15 = 40 * v2 + 40;
  v7 = *(a1 + 8);
  v8 = 40 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ou_object_group::ItemGroup>,ou_object_group::ItemGroup*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<ou_object_group::ItemGroup>::~__split_buffer(&v13);
  return v12;
}

void sub_257BC7B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<ou_object_group::ItemGroup>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_set<int>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(a1, i + 4);
  }

  return a1;
}

uint64_t std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ou_object_group::ItemGroup>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ou_object_group::ItemGroup>,ou_object_group::ItemGroup*>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__hash_table(a4, v7);
      v7 += 5;
      a4 = v8 + 40;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v6);
      v6 += 40;
    }
  }
}

uint64_t std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__hash_table(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

uint64_t std::__split_buffer<ou_object_group::ItemGroup>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(i - 40);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void ou_object_group::RelationGrouping::~RelationGrouping(ou_object_group::RelationGrouping *this)
{
  v3 = (this + 48);
  std::vector<ou_object_group::ItemGroup>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 3);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = this;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void std::vector<ou_object_group::ItemGroup>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v4 - 40);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *std::vector<unsigned long>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(result, a2);
  }

  return result;
}

void sub_257BC7F20(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__introsort<std::_ClassicAlgPolicy,ou_object_group::sortIndices(std::vector<float> const&)::$_0 &,unsigned long *,false>(uint64_t *result, uint64_t *a2, uint64_t **a3, uint64_t a4, char a5)
{
  v9 = result;
  while (2)
  {
    v10 = v9;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v9 = v10;
          v11 = a2 - v10;
          if (v11 > 2)
          {
            switch(v11)
            {
              case 3:
                v90 = *v10;
                v91 = v10[1];
                v83 = **a3;
                v92 = *(v83 + 4 * v91);
                v93 = *(v83 + (*v10 << 32 >> 30));
                v94 = *(a2 - 1);
                v95 = *(v83 + 4 * v94);
                if (v92 > v93)
                {
                  if (v95 <= v92)
                  {
                    *v10 = v91;
                    v10[1] = v90;
                    v145 = *(a2 - 1);
                    if (*(v83 + 4 * v145) <= v93)
                    {
                      return result;
                    }

                    v10[1] = v145;
                  }

                  else
                  {
                    *v10 = v94;
                  }

                  goto LABEL_170;
                }

                if (v95 <= v92)
                {
                  return result;
                }

                v10[1] = v94;
                *(a2 - 1) = v91;
                v88 = *v10;
                v84 = v10[1];
                v86 = *(v83 + 4 * v84);
LABEL_158:
                if (v86 > *(v83 + 4 * v88))
                {
                  *v10 = v84;
                  v10[1] = v88;
                }

                return result;
              case 4:

                return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,ou_object_group::sortIndices(std::vector<float> const&)::$_0 &,unsigned long *,0>(v10, v10 + 1, v10 + 2, a2 - 1, a3);
              case 5:
                result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,ou_object_group::sortIndices(std::vector<float> const&)::$_0 &,unsigned long *,0>(v10, v10 + 1, v10 + 2, v10 + 3, a3);
                v81 = *(a2 - 1);
                v82 = v10[3];
                v83 = **a3;
                if (*(v83 + 4 * v81) <= *(v83 + 4 * v82))
                {
                  return result;
                }

                v10[3] = v81;
                *(a2 - 1) = v82;
                v85 = v10[2];
                v84 = v10[3];
                v86 = *(v83 + 4 * v84);
                if (v86 <= *(v83 + 4 * v85))
                {
                  return result;
                }

                v10[2] = v84;
                v10[3] = v85;
                v87 = v10[1];
                if (v86 <= *(v83 + 4 * v87))
                {
                  return result;
                }

                v10[1] = v84;
                v10[2] = v87;
                v88 = *v10;
                goto LABEL_158;
            }
          }

          else
          {
            if (v11 < 2)
            {
              return result;
            }

            if (v11 == 2)
            {
              v89 = *(a2 - 1);
              v90 = *v10;
              if (*(**a3 + 4 * v89) <= *(**a3 + (*v10 << 32 >> 30)))
              {
                return result;
              }

              *v10 = v89;
LABEL_170:
              *(a2 - 1) = v90;
              return result;
            }
          }

          if (v11 <= 23)
          {
            if (a5)
            {
              if (v10 != a2)
              {
                v96 = v10 + 1;
                if (v10 + 1 != a2)
                {
                  v97 = 0;
                  v98 = **a3;
                  v99 = v10;
                  do
                  {
                    v101 = *v99;
                    v100 = v99[1];
                    v99 = v96;
                    v102 = *(v98 + 4 * v100);
                    if (v102 > *(v98 + 4 * v101))
                    {
                      v103 = v97;
                      while (1)
                      {
                        *(v10 + v103 + 8) = v101;
                        if (!v103)
                        {
                          break;
                        }

                        v101 = *(v10 + v103 - 8);
                        v103 -= 8;
                        if (v102 <= *(v98 + 4 * v101))
                        {
                          v104 = (v10 + v103 + 8);
                          goto LABEL_124;
                        }
                      }

                      v104 = v10;
LABEL_124:
                      *v104 = v100;
                    }

                    v96 = v99 + 1;
                    v97 += 8;
                  }

                  while (v99 + 1 != a2);
                }
              }
            }

            else if (v10 != a2)
            {
              v140 = v10 + 1;
              if (v10 + 1 != a2)
              {
                v141 = **a3;
                do
                {
                  v143 = *v9;
                  v142 = v9[1];
                  v9 = v140;
                  v144 = *(v141 + 4 * v142);
                  if (v144 > *(v141 + 4 * v143))
                  {
                    do
                    {
                      *v140 = v143;
                      v143 = *(v140 - 2);
                      --v140;
                    }

                    while (v144 > *(v141 + 4 * v143));
                    *v140 = v142;
                  }

                  v140 = v9 + 1;
                }

                while (v9 + 1 != a2);
              }
            }

            return result;
          }

          if (!a4)
          {
            if (v10 != a2)
            {
              v105 = (v11 - 2) >> 1;
              v106 = *a3;
              v107 = v105;
              do
              {
                v108 = v107;
                if (v105 >= v107)
                {
                  v109 = (2 * v107) | 1;
                  v110 = &v10[v109];
                  v111 = 2 * v107 + 2;
                  v112 = *v106;
                  if (v111 < v11)
                  {
                    v113 = vshrq_n_s64(vshlq_n_s64(*v110, 0x20uLL), 0x1EuLL);
                    if (*(v112 + v113.i64[0]) > *(v112 + v113.i64[1]))
                    {
                      v110 = (v110 + 8);
                      v109 = 2 * v108 + 2;
                    }
                  }

                  result = &v10[v108];
                  v114 = v110->i64[0];
                  v115 = *result;
                  v116 = *(v112 + (*result << 32 >> 30));
                  if (*(v112 + (v110->i64[0] << 32 >> 30)) <= v116)
                  {
                    do
                    {
                      v117 = v110;
                      *result = v114;
                      if (v105 < v109)
                      {
                        break;
                      }

                      v118 = 2 * v109;
                      v109 = (2 * v109) | 1;
                      v110 = &v10[v109];
                      v119 = v118 + 2;
                      if (v119 < v11)
                      {
                        v120 = vshrq_n_s64(vshlq_n_s64(*v110, 0x20uLL), 0x1EuLL);
                        if (*(v112 + v120.i64[0]) > *(v112 + v120.i64[1]))
                        {
                          v110 = (v110 + 8);
                          v109 = v119;
                        }
                      }

                      v114 = v110->i64[0];
                      result = v117;
                    }

                    while (*(v112 + (v110->i64[0] << 32 >> 30)) <= v116);
                    *v117 = v115;
                  }
                }

                v107 = v108 - 1;
              }

              while (v108);
              do
              {
                v121 = 0;
                v122 = *v10;
                v123 = *a3;
                v124 = v10;
                do
                {
                  v125 = v124;
                  v126 = &v124->i8[8 * v121];
                  v124 = (v126 + 8);
                  v127 = 2 * v121;
                  v121 = (2 * v121) | 1;
                  v128 = v127 + 2;
                  if (v128 < v11)
                  {
                    v129 = vshrq_n_s64(vshlq_n_s64(*v124, 0x20uLL), 0x1EuLL);
                    result = v129.i64[1];
                    if (*(*v123 + v129.i64[0]) > *(*v123 + v129.i64[1]))
                    {
                      v124 = (v126 + 16);
                      v121 = v128;
                    }
                  }

                  *v125 = v124->i64[0];
                }

                while (v121 <= ((v11 - 2) >> 1));
                if (v124 == --a2)
                {
                  v124->i64[0] = v122;
                }

                else
                {
                  v124->i64[0] = *a2;
                  *a2 = v122;
                  v130 = (v124 - v10 + 8) >> 3;
                  v131 = v130 < 2;
                  v132 = v130 - 2;
                  if (!v131)
                  {
                    v133 = v132 >> 1;
                    v134 = &v10[v133];
                    v135 = *v134;
                    v136 = v124->i64[0];
                    v137 = *v123;
                    v138 = *(v137 + (v124->i64[0] << 32 >> 30));
                    if (*(v137 + (*v134 << 32 >> 30)) > v138)
                    {
                      do
                      {
                        v139 = v134;
                        v124->i64[0] = v135;
                        if (!v133)
                        {
                          break;
                        }

                        v133 = (v133 - 1) >> 1;
                        v134 = &v10[v133];
                        v135 = *v134;
                        v124 = v139;
                      }

                      while (*(v137 + (*v134 << 32 >> 30)) > v138);
                      v139->i64[0] = v136;
                    }
                  }
                }

                v131 = v11-- <= 2;
              }

              while (!v131);
            }

            return result;
          }

          v12 = &v10[v11 >> 1];
          v13 = v12;
          v14 = **a3;
          v15 = *(a2 - 1);
          v16 = *(v14 + 4 * v15);
          if (v11 >= 0x81)
          {
            v17 = *v12;
            v18 = *v10;
            v19 = *(v14 + (*v12 << 32 >> 30));
            v20 = *(v14 + (*v10 << 32 >> 30));
            if (v19 <= v20)
            {
              if (v16 > v19)
              {
                *v12 = v15;
                *(a2 - 1) = v17;
                v25 = *v10;
                if (*(v14 + (*v12 << 32 >> 30)) > *(v14 + (*v10 << 32 >> 30)))
                {
                  *v10 = *v12;
                  *v12 = v25;
                }
              }
            }

            else
            {
              if (v16 <= v19)
              {
                *v10 = v17;
                *v12 = v18;
                v27 = *(a2 - 1);
                if (*(v14 + 4 * v27) <= v20)
                {
                  goto LABEL_28;
                }

                *v12 = v27;
              }

              else
              {
                *v10 = v15;
              }

              *(a2 - 1) = v18;
            }

LABEL_28:
            v28 = v12 - 1;
            v29 = *(v12 - 1);
            v30 = v10[1];
            v31 = *(v14 + 4 * v29);
            v32 = *(v14 + 4 * v30);
            v33 = *(a2 - 2);
            v34 = *(v14 + 4 * v33);
            if (v31 <= v32)
            {
              if (v34 > v31)
              {
                *v28 = v33;
                *(a2 - 2) = v29;
                v35 = v10[1];
                if (*(v14 + (*v28 << 32 >> 30)) > *(v14 + 4 * v35))
                {
                  v10[1] = *v28;
                  *v28 = v35;
                }
              }
            }

            else
            {
              if (v34 <= v31)
              {
                v10[1] = v29;
                *v28 = v30;
                v37 = *(a2 - 2);
                if (*(v14 + 4 * v37) <= v32)
                {
                  goto LABEL_40;
                }

                *v28 = v37;
              }

              else
              {
                v10[1] = v33;
              }

              *(a2 - 2) = v30;
            }

LABEL_40:
            v40 = v12[1];
            v38 = v12 + 1;
            v39 = v40;
            v41 = v10[2];
            v42 = *(v14 + 4 * v40);
            v43 = *(v14 + 4 * v41);
            v44 = *(a2 - 3);
            v45 = *(v14 + 4 * v44);
            if (v42 <= v43)
            {
              if (v45 > v42)
              {
                *v38 = v44;
                *(a2 - 3) = v39;
                v46 = v10[2];
                if (*(v14 + (*v38 << 32 >> 30)) > *(v14 + 4 * v46))
                {
                  v10[2] = *v38;
                  *v38 = v46;
                }
              }
            }

            else
            {
              if (v45 <= v42)
              {
                v10[2] = v39;
                *v38 = v41;
                v47 = *(a2 - 3);
                if (*(v14 + 4 * v47) <= v43)
                {
                  goto LABEL_49;
                }

                *v38 = v47;
              }

              else
              {
                v10[2] = v44;
              }

              *(a2 - 3) = v41;
            }

LABEL_49:
            v48 = *v13;
            v49 = *v28;
            v50 = *(v14 + (*v13 << 32 >> 30));
            v51 = *(v14 + (*v28 << 32 >> 30));
            v52 = *v38;
            v53 = *(v14 + (*v38 << 32 >> 30));
            if (v50 <= v51)
            {
              if (v53 <= v50)
              {
                goto LABEL_56;
              }

              *v13 = v52;
              *v38 = v48;
              v38 = v13;
              v48 = v49;
              if (v53 <= v51)
              {
                v48 = v52;
                goto LABEL_56;
              }
            }

            else if (v53 <= v50)
            {
              *v28 = v48;
              *v13 = v49;
              v28 = v13;
              v48 = v52;
              if (v53 <= v51)
              {
                v48 = v49;
LABEL_56:
                v54 = *v10;
                *v10 = v48;
                *v13 = v54;
                goto LABEL_57;
              }
            }

            *v28 = v52;
            *v38 = v49;
            goto LABEL_56;
          }

          v21 = *v10;
          v22 = *v13;
          v23 = *(v14 + (*v10 << 32 >> 30));
          v24 = *(v14 + (*v13 << 32 >> 30));
          if (v23 <= v24)
          {
            if (v16 > v23)
            {
              *v10 = v15;
              *(a2 - 1) = v21;
              v26 = *v13;
              if (*(v14 + (*v10 << 32 >> 30)) > *(v14 + (*v13 << 32 >> 30)))
              {
                *v13 = *v10;
                *v10 = v26;
              }
            }
          }

          else
          {
            if (v16 > v23)
            {
              *v13 = v15;
LABEL_36:
              *(a2 - 1) = v22;
              goto LABEL_57;
            }

            *v13 = v21;
            *v10 = v22;
            v36 = *(a2 - 1);
            if (*(v14 + 4 * v36) > v24)
            {
              *v10 = v36;
              goto LABEL_36;
            }
          }

LABEL_57:
          --a4;
          v55 = *v10;
          v56 = *v10 << 32 >> 30;
          if (a5)
          {
            break;
          }

          v57 = *(v14 + v56);
          if (*(v14 + (*(v10 - 1) << 32 >> 30)) > v57)
          {
            break;
          }

          if (v57 <= *(v14 + (*(a2 - 1) << 32 >> 30)))
          {
            v73 = v10 + 1;
            do
            {
              v10 = v73;
              if (v73 >= a2)
              {
                break;
              }

              ++v73;
            }

            while (v57 <= *(v14 + (*v10 << 32 >> 30)));
          }

          else
          {
            do
            {
              v72 = v10[1];
              ++v10;
            }

            while (v57 <= *(v14 + 4 * v72));
          }

          v74 = a2;
          if (v10 < a2)
          {
            v74 = a2;
            do
            {
              v75 = *--v74;
            }

            while (v57 > *(v14 + 4 * v75));
          }

          if (v10 < v74)
          {
            v76 = *v10;
            v77 = *v74;
            do
            {
              *v10 = v77;
              *v74 = v76;
              do
              {
                v78 = v10[1];
                ++v10;
                v76 = v78;
              }

              while (v57 <= *(v14 + 4 * v78));
              do
              {
                v79 = *--v74;
                v77 = v79;
              }

              while (v57 > *(v14 + 4 * v79));
            }

            while (v10 < v74);
          }

          v80 = v10 - 1;
          if (v10 - 1 != v9)
          {
            *v9 = *v80;
          }

          a5 = 0;
          *v80 = v55;
        }

        v58 = 0;
        v59 = *(v14 + v56);
        do
        {
          v60 = v10[++v58];
        }

        while (*(v14 + 4 * v60) > v59);
        v61 = &v10[v58];
        v62 = a2;
        if (v58 == 1)
        {
          v62 = a2;
          do
          {
            if (v61 >= v62)
            {
              break;
            }

            v64 = *--v62;
          }

          while (*(v14 + 4 * v64) <= v59);
        }

        else
        {
          do
          {
            v63 = *--v62;
          }

          while (*(v14 + 4 * v63) <= v59);
        }

        if (v61 >= v62)
        {
          v70 = v61 - 1;
        }

        else
        {
          v65 = *v62;
          v66 = &v10[v58];
          v67 = v62;
          do
          {
            *v66 = v65;
            *v67 = v60;
            do
            {
              v68 = v66[1];
              ++v66;
              v60 = v68;
            }

            while (*(v14 + 4 * v68) > v59);
            do
            {
              v69 = *--v67;
              v65 = v69;
            }

            while (*(v14 + 4 * v69) <= v59);
          }

          while (v66 < v67);
          v70 = v66 - 1;
        }

        if (v70 != v10)
        {
          *v10 = *v70;
        }

        *v70 = v55;
        if (v61 >= v62)
        {
          break;
        }

LABEL_80:
        result = std::__introsort<std::_ClassicAlgPolicy,ou_object_group::sortIndices(std::vector<float> const&)::$_0 &,unsigned long *,false>(v9, v70, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v70 + 1;
      }

      v71 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,ou_object_group::sortIndices(std::vector<float> const&)::$_0 &,unsigned long *>(v10, v70, a3);
      v10 = v70 + 1;
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,ou_object_group::sortIndices(std::vector<float> const&)::$_0 &,unsigned long *>(v70 + 1, a2, a3);
      if (result)
      {
        break;
      }

      if (!v71)
      {
        goto LABEL_80;
      }
    }

    a2 = v70;
    if (!v71)
    {
      continue;
    }

    return result;
  }
}

uint64_t *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,ou_object_group::sortIndices(std::vector<float> const&)::$_0 &,unsigned long *,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t **a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = **a5;
  v8 = *a2 << 32 >> 30;
  v9 = *(v7 + v8);
  v10 = *result << 32 >> 30;
  v11 = *(v7 + v10);
  v12 = *a3;
  v13 = *(v7 + (*a3 << 32 >> 30));
  if (v9 <= v11)
  {
    if (v13 <= v9)
    {
      v10 = *a3 << 32 >> 30;
      v5 = *a3;
    }

    else
    {
      *a2 = v12;
      *a3 = v5;
      v14 = *result;
      v10 = v8;
      if (*(v7 + (*a2 << 32 >> 30)) > *(v7 + (*result << 32 >> 30)))
      {
        *result = *a2;
        *a2 = v14;
        v5 = *a3;
        v10 = *a3 << 32 >> 30;
      }
    }
  }

  else
  {
    if (v13 <= v9)
    {
      *result = v5;
      *a2 = v6;
      v5 = *a3;
      if (*(v7 + (*a3 << 32 >> 30)) <= v11)
      {
        v10 = *a3 << 32 >> 30;
        goto LABEL_12;
      }

      *a2 = v5;
    }

    else
    {
      *result = v12;
    }

    *a3 = v6;
    v5 = v6;
  }

LABEL_12:
  if (*(v7 + (*a4 << 32 >> 30)) > *(v7 + v10))
  {
    *a3 = *a4;
    *a4 = v5;
    v15 = *a2;
    if (*(v7 + (*a3 << 32 >> 30)) > *(v7 + (*a2 << 32 >> 30)))
    {
      *a2 = *a3;
      *a3 = v15;
      v16 = *result;
      if (*(v7 + (*a2 << 32 >> 30)) > *(v7 + (*result << 32 >> 30)))
      {
        *result = *a2;
        *a2 = v16;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,ou_object_group::sortIndices(std::vector<float> const&)::$_0 &,unsigned long *>(uint64_t *a1, uint64_t *a2, uint64_t **a3)
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v8 = *a1;
        v17 = a1[1];
        v11 = **a3;
        v18 = *(v11 + 4 * v17);
        v19 = *(v11 + (*a1 << 32 >> 30));
        v20 = *(a2 - 1);
        v21 = *(v11 + 4 * v20);
        if (v18 > v19)
        {
          if (v21 > v18)
          {
            *a1 = v20;
            goto LABEL_41;
          }

          *a1 = v17;
          a1[1] = v8;
          v41 = *(a2 - 1);
          if (*(v11 + 4 * v41) > v19)
          {
            a1[1] = v41;
            goto LABEL_41;
          }

          return 1;
        }

        if (v21 <= v18)
        {
          return 1;
        }

        a1[1] = v20;
        *(a2 - 1) = v17;
        v16 = *a1;
        v12 = a1[1];
        v14 = *(v11 + 4 * v12);
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,ou_object_group::sortIndices(std::vector<float> const&)::$_0 &,unsigned long *,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,ou_object_group::sortIndices(std::vector<float> const&)::$_0 &,unsigned long *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a3);
        v9 = *(a2 - 1);
        v10 = a1[3];
        v11 = **a3;
        if (*(v11 + 4 * v9) <= *(v11 + 4 * v10))
        {
          return 1;
        }

        a1[3] = v9;
        *(a2 - 1) = v10;
        v13 = a1[2];
        v12 = a1[3];
        v14 = *(v11 + 4 * v12);
        if (v14 <= *(v11 + 4 * v13))
        {
          return 1;
        }

        a1[2] = v12;
        a1[3] = v13;
        v15 = a1[1];
        if (v14 <= *(v11 + 4 * v15))
        {
          return 1;
        }

        a1[1] = v12;
        a1[2] = v15;
        v16 = *a1;
        break;
      default:
        goto LABEL_16;
    }

    if (v14 > *(v11 + 4 * v16))
    {
      *a1 = v12;
      a1[1] = v16;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = *(a2 - 1);
    v8 = *a1;
    if (*(**a3 + 4 * v7) > *(**a3 + (*a1 << 32 >> 30)))
    {
      *a1 = v7;
LABEL_41:
      *(a2 - 1) = v8;
      return 1;
    }

    return 1;
  }

LABEL_16:
  v23 = a1 + 2;
  v22 = a1[2];
  v24 = a1[1];
  v25 = *a1;
  v26 = **a3;
  v27 = *(v26 + 4 * v24);
  v28 = *(v26 + (*a1 << 32 >> 30));
  v29 = *(v26 + 4 * v22);
  if (v27 > v28)
  {
    v30 = a1;
    v31 = a1 + 2;
    if (v29 <= v27)
    {
      *a1 = v24;
      a1[1] = v25;
      v30 = a1 + 1;
      v31 = a1 + 2;
      if (v29 <= v28)
      {
        goto LABEL_28;
      }
    }

LABEL_27:
    *v30 = v22;
    *v31 = v25;
    goto LABEL_28;
  }

  if (v29 > v27)
  {
    a1[1] = v22;
    *v23 = v24;
    v30 = a1;
    v31 = a1 + 1;
    if (v29 > v28)
    {
      goto LABEL_27;
    }
  }

LABEL_28:
  v32 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v33 = 0;
  for (i = 24; ; i += 8)
  {
    v35 = *v32;
    v36 = *v23;
    v37 = *(v26 + (*v32 << 32 >> 30));
    if (v37 > *(v26 + 4 * v36))
    {
      v38 = i;
      while (1)
      {
        *(a1 + v38) = v36;
        v39 = v38 - 8;
        if (v38 == 8)
        {
          break;
        }

        v36 = *(a1 + v38 - 16);
        v38 -= 8;
        if (v37 <= *(v26 + 4 * v36))
        {
          v40 = (a1 + v39);
          goto LABEL_36;
        }
      }

      v40 = a1;
LABEL_36:
      *v40 = v35;
      if (++v33 == 8)
      {
        break;
      }
    }

    v23 = v32++;
    if (v32 == a2)
    {
      return 1;
    }
  }

  return v32 + 1 == a2;
}

void *std::vector<std::vector<float>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::vector<float>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<std::vector<float>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(a1, a2);
  }

  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_257BC8FF8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<OUBox3d>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<OUBox3d>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<OUBox3d>>::destroy[abi:ne200100]<OUBox3d,0>(a1, i))
  {
    i -= 224;
  }

  *(a1 + 8) = a2;
}

void std::allocator_traits<std::allocator<OUBox3d>>::destroy[abi:ne200100]<OUBox3d,0>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 184);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(a2 + 160);
  if (v4)
  {
    *(a2 + 168) = v4;
    operator delete(v4);
  }

  v5 = *(a2 + 128);
}

uint64_t std::vector<OUBox3d>::__emplace_back_slow_path<OUBox3d const&>(uint64_t a1, const OUBox3d *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 8) - *a1) >> 5);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x124924924924924)
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 5) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 5);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 5)) >= 0x92492492492492)
  {
    v6 = 0x124924924924924;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<OUBox3d>>(a1, v6);
  }

  v13 = 0;
  v14 = 224 * v2;
  OUBox3d::OUBox3d((224 * v2), a2);
  v15 = (224 * v2 + 224);
  v7 = *(a1 + 8);
  v8 = 224 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<OUBox3d>,OUBox3d*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<OUBox3d>::~__split_buffer(&v13);
  return v12;
}

void sub_257BC9258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<OUBox3d>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void OUBox3d::OUBox3d(OUBox3d *this, const OUBox3d *a2)
{
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = *(a2 + 3);
  *(this + 2) = *(a2 + 2);
  *(this + 3) = v6;
  *this = v4;
  *(this + 1) = v5;
  v7 = *(a2 + 4);
  v8 = *(a2 + 5);
  v9 = *(a2 + 7);
  *(this + 6) = *(a2 + 6);
  *(this + 7) = v9;
  *(this + 4) = v7;
  *(this + 5) = v8;
  *(this + 16) = *(a2 + 16);
  *(this + 34) = *(a2 + 34);
  *(this + 18) = *(a2 + 18);
  v10 = *(a2 + 19);
  *(this + 20) = 0;
  *(this + 19) = v10;
  *(this + 21) = 0;
  *(this + 22) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(this + 160, *(a2 + 20), *(a2 + 21), (*(a2 + 21) - *(a2 + 20)) >> 2);
  std::vector<BOOL>::vector(this + 23, a2 + 184);
  *(this + 26) = *(a2 + 26);
  *(this + 108) = *(a2 + 108);
}

void sub_257BC9328(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 168) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void std::vector<BOOL>::__construct_at_end<std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,true,0ul>>(void *a1, void *a2, unsigned int a3, void *a4, int a5, uint64_t a6)
{
  v8 = a1[1];
  v9 = v8 + a6;
  a1[1] = v8 + a6;
  if (!v8 || ((v9 - 1) ^ (v8 - 1)) >= 0x40)
  {
    if (v9 >= 0x41)
    {
      v10 = (v9 - 1) >> 6;
    }

    else
    {
      v10 = 0;
    }

    *(*a1 + 8 * v10) = 0;
  }

  v14 = v6;
  v15 = v7;
  v11 = *a1 + 8 * (v8 >> 6);
  v12 = v8 & 0x3F;
  std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(a2, a3, a4, a5, &v11, v13);
}

void std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(void *a1@<X1>, unint64_t a2@<X2>, void *a3@<X3>, int a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  LODWORD(v6) = a2;
  v7 = *a5;
  v8 = *(a5 + 8);
  if (a1 != a3 || a2 != a4)
  {
    do
    {
      v9 = 1 << v8;
      if ((*a1 >> a2))
      {
        v10 = *v7 | v9;
      }

      else
      {
        v10 = *v7 & ~v9;
      }

      *v7 = v10;
      v11 = v6 == 63;
      v12 = v6 == 63;
      v6 = (a2 + 1);
      if (v11)
      {
        v6 = 0;
      }

      if (v8 == 63)
      {
        v8 = 0;
        *a5 = ++v7;
      }

      else
      {
        ++v8;
      }

      a1 += v12;
      a2 = v6 | a2 & 0xFFFFFFFF00000000;
    }

    while (a1 != a3 || v6 != a4);
    *(a5 + 8) = v8;
  }

  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = v7;
  *(a6 + 24) = v8;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<OUBox3d>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x124924924924925)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<OUBox3d>,OUBox3d*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      std::allocator_traits<std::allocator<OUBox3d>>::construct[abi:ne200100]<OUBox3d,OUBox3d,0>(a1, a4, v7);
      v7 += 14;
      a4 = v12 + 224;
      v12 += 224;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<OUBox3d>>::destroy[abi:ne200100]<OUBox3d,0>(a1, v5);
      v5 += 224;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<OUBox3d>,OUBox3d*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

__n128 std::allocator_traits<std::allocator<OUBox3d>>::construct[abi:ne200100]<OUBox3d,OUBox3d,0>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = a3[3];
  *(a2 + 32) = a3[2];
  *(a2 + 48) = v5;
  *a2 = v3;
  *(a2 + 16) = v4;
  v6 = a3[4];
  v7 = a3[5];
  v8 = a3[7];
  *(a2 + 96) = a3[6];
  *(a2 + 112) = v8;
  *(a2 + 64) = v6;
  *(a2 + 80) = v7;
  v9 = *(a3 + 16);
  *(a3 + 16) = 0;
  *(a2 + 128) = v9;
  *(a2 + 136) = *(a3 + 34);
  v10 = a3[9];
  a3[9] = 0u;
  *(a2 + 144) = v10;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0u;
  *(a2 + 160) = a3[10];
  v11 = *(a3 + 23);
  *(a2 + 176) = *(a3 + 22);
  *(a3 + 22) = 0;
  a3[10] = 0u;
  *(a2 + 184) = v11;
  result = a3[12];
  *(a2 + 192) = result;
  *(a3 + 184) = 0u;
  v13 = *(a3 + 26);
  *(a3 + 25) = 0;
  *(a3 + 26) = 0;
  *(a2 + 208) = v13;
  *(a2 + 216) = *(a3 + 108);
  return result;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<OUBox3d>,OUBox3d*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<OUBox3d>,OUBox3d*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<OUBox3d>,OUBox3d*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 224;
      std::allocator_traits<std::allocator<OUBox3d>>::destroy[abi:ne200100]<OUBox3d,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<OUBox3d>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<OUBox3d>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<OUBox3d>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 224;
    std::allocator_traits<std::allocator<OUBox3d>>::destroy[abi:ne200100]<OUBox3d,0>(v5, v4 - 224);
  }
}

uint64_t std::vector<OUBox3d>::__emplace_back_slow_path<OUBox3d>(uint64_t a1, __int128 *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 8) - *a1) >> 5);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x124924924924924)
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 5) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 5);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 5)) >= 0x92492492492492)
  {
    v6 = 0x124924924924924;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<OUBox3d>>(a1, v6);
  }

  v13 = 0;
  v14 = 224 * v2;
  std::allocator_traits<std::allocator<OUBox3d>>::construct[abi:ne200100]<OUBox3d,OUBox3d,0>(a1, 224 * v2, a2);
  v15 = (224 * v2 + 224);
  v7 = *(a1 + 8);
  v8 = 224 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<OUBox3d>,OUBox3d*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<OUBox3d>::~__split_buffer(&v13);
  return v12;
}

void sub_257BC98E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<OUBox3d>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

size_t *std::vector<std::vector<float>>::__append(size_t *result, unint64_t a2, uint64_t *a3)
{
  v5 = result;
  v7 = result[1];
  v6 = result[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3) >= a2)
  {
    if (a2)
    {
      v12 = &v7[3 * a2];
      v13 = 24 * a2;
      do
      {
        *v7 = 0;
        v7[1] = 0;
        v7[2] = 0;
        result = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v7, *a3, a3[1], (a3[1] - *a3) >> 2);
        v7 += 3;
        v13 -= 24;
      }

      while (v13);
      v7 = v12;
    }

    v5[1] = v7;
  }

  else
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 3);
    v9 = v8 + a2;
    if (v8 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *result) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    v21 = result;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(result, v11);
    }

    v18 = 0;
    v19 = 24 * v8;
    v20 = 24 * v8;
    std::__split_buffer<std::vector<float>>::__construct_at_end(&v18, a2, a3);
    v14 = v5[1] - *v5;
    v15 = v19 - v14;
    memcpy((v19 - v14), *v5, v14);
    v16 = *v5;
    *v5 = v15;
    v17 = v5[2];
    *(v5 + 1) = v20;
    *&v20 = v16;
    *(&v20 + 1) = v17;
    v18 = v16;
    v19 = v16;
    return std::__split_buffer<std::vector<float>>::~__split_buffer(&v18);
  }

  return result;
}