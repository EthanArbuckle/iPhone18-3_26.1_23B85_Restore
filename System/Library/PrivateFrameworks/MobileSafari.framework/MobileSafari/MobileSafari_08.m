void *sub_18B879B38(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AE0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18B879BE8@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_18B879CA0()
{

  return swift_deallocObject();
}

uint64_t sub_18B879CF0()
{

  return swift_deallocObject();
}

uint64_t sub_18B879D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18BC1EC08();
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

uint64_t sub_18B879DEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_18BC1EC08();
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

uint64_t sub_18B879EA8()
{

  return swift_deallocObject();
}

uint64_t sub_18B879EFC()
{

  return swift_deallocObject();
}

uint64_t sub_18B879F34()
{

  return swift_deallocObject();
}

id sub_18B879F80@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 commandPerformer];
  *a2 = result;
  return result;
}

id sub_18B879FD0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 barItemView];
  *a2 = result;
  return result;
}

id sub_18B87A020@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 preferredPresentedViewContentSize];
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_18B87A068()
{

  return swift_deallocObject();
}

_BYTE *sub_18B87A0D4(_BYTE *result, void *a2)
{
  if (*result)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  *(*a2 + OBJC_IVAR___SFStartPageOnboardingCellConfiguration_layoutType) = v2;
  return result;
}

id sub_18B87A100@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell_configuration;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_18B87A16C@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_18B87A224()
{

  return swift_deallocObject();
}

uint64_t sub_18B87A264@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
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
  return sub_18BACF6CC(v10, v9);
}

uint64_t sub_18B87A2D0(_OWORD *a1)
{
  v2 = a1[1];
  v6[0] = *a1;
  v6[1] = v2;
  v3 = a1[3];
  v6[2] = a1[2];
  v6[3] = v3;
  sub_18BACF6CC(v6, &v5);
  return sub_18BACE85C(a1);
}

double sub_18B87A328@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC12MobileSafari23TabSnapshotRegistration_visibility;
  swift_beginAccess();
  result = *v3;
  v5 = *(v3 + 8);
  *a2 = *v3;
  a2[1] = v5;
  return result;
}

uint64_t sub_18B87A384(void *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  return sub_18BACEC14(v3);
}

uint64_t sub_18B87A3C4()
{

  return swift_deallocObject();
}

uint64_t sub_18B87A400()
{

  return swift_deallocObject();
}

uint64_t sub_18B87A438()
{

  return swift_deallocObject();
}

uint64_t sub_18B87A490()
{

  return swift_deallocObject();
}

uint64_t sub_18B87A4D8()
{
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_18B87A524()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D8C28);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_18B87A5FC()
{

  return swift_deallocObject();
}

uint64_t sub_18B87A644()
{

  return swift_deallocObject();
}

uint64_t sub_18B87A67C()
{

  return swift_deallocObject();
}

uint64_t sub_18B87A6D0()
{

  return swift_deallocObject();
}

uint64_t sub_18B87A708()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D90A8);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_18B87A800()
{

  return swift_deallocObject();
}

uint64_t sub_18B87A838()
{

  return swift_deallocObject();
}

uint64_t sub_18B87A88C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s4ItemVMa();
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

uint64_t sub_18B87A948()
{

  return swift_deallocObject();
}

uint64_t sub_18B87A988()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_18B87A9C0()
{
  v1 = (_s4ItemVMa() - 8);
  v2 = (*(*v1 + 80) + 33) & ~*(*v1 + 80);

  v3 = v1[9];
  v4 = sub_18BC1EC08();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_18B87AAFC()
{

  return swift_deallocObject();
}

uint64_t sub_18B87AB40()
{
  v1 = (_s4ItemVMa() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);

  v3 = v1[9];
  v4 = sub_18BC1EC08();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_18B87AC5C()
{
  v1 = (_s4ItemVMa() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v1[9];
  v4 = sub_18BC1EC08();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_18B87AD9C()
{

  return swift_deallocObject();
}

uint64_t sub_18B87ADE4()
{

  return swift_deallocObject();
}

uint64_t sub_18B87AE1C()
{
  v1 = _s15MoveItemsIntentVMa(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v18 = *(*(v1 - 8) + 64) + v2;

  v3 = v0 + v2;
  _s15MoveItemsIntentV11DestinationOMa(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = _s4PageVMa();
  v6 = v5[8];
  v7 = sub_18BC1EC08();
  v8 = *(*(v7 - 8) + 8);
  v8(v3 + v6, v7);

  v9 = *(v3 + v5[14]);
  if (EnumCaseMultiPayload == 1)
  {
    if (v9 >= 3)
    {
    }

    v10 = v3 + v5[16];
    if (*(v10 + 24))
    {
    }

    v11 = (v3 + v5[18]);
  }

  else
  {
    if (v9 >= 3)
    {
    }

    v12 = v3 + v5[16];
    if (*(v12 + 24))
    {
    }

    v13 = (v3 + v5[18]);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6338);
  }

  v14 = v3 + *(v1 + 20);
  v8(v14 + v5[8], v7);

  if (*(v14 + v5[14]) >= 3uLL)
  {
  }

  v15 = v14 + v5[16];
  if (*(v15 + 24))
  {
  }

  v16 = (v14 + v5[18]);

  if (*(v0 + ((v18 + 7) & 0xFFFFFFFFFFFFFFF8)))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18B87B1A4()
{

  return swift_deallocObject();
}

uint64_t sub_18B87B1DC()
{

  return swift_deallocObject();
}

id sub_18B87B354@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 commandPerformer];
  *a2 = result;
  return result;
}

uint64_t sub_18B87B3A4(uint64_t a1, uint64_t a2)
{
  v4 = _s7ContentVMa(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18B87B410(uint64_t a1, uint64_t a2)
{
  v4 = _s7ContentVMa(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18B87B488(uint64_t a1, uint64_t a2)
{
  v4 = sub_18BC1EDD8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18B87B4F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_18BC1EDD8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18B87B604@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18BC1E0C8();
  *a1 = result;
  return result;
}

uint64_t sub_18B87B630@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18BC1E0C8();
  *a1 = result;
  return result;
}

uint64_t sub_18B87B65C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18BC1E0C8();
  *a1 = result;
  return result;
}

uint64_t sub_18B87B688@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18BC1E0C8();
  *a1 = result;
  return result;
}

uint64_t sub_18B87B6B4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52E0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 60);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_18B87B770(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 64) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 60);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18B87B820()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_18B87B868()
{

  return swift_deallocObject();
}

id sub_18B87B8A0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 intrinsicContentSizeOverride];
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_18B87B8EC()
{
  MEMORY[0x18CFFF000](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18B87B924()
{

  return swift_deallocObject();
}

uint64_t sub_18B87B95C()
{

  return swift_deallocObject();
}

__n128 sub_18B87B9F8(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_18B87BB6C()
{
  v1 = *(_s4ItemVMa_1() - 8);
  v2 = (*(v1 + 80) + 152) & ~*(v1 + 80);
  v3 = (v2 + *(v1 + 64) + 23) & 0xFFFFFFFFFFFFFFF8;

  v4 = sub_18BC1EC08();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);

  return swift_deallocObject();
}

uint64_t sub_18B87BCA4()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_18B87BCDC()
{

  return swift_deallocObject();
}

uint64_t sub_18B87BD14()
{

  return swift_deallocObject();
}

uint64_t sub_18B87BD4C()
{
  v1 = (_s4ItemVMa_4() - 8);
  v2 = (*(*v1 + 80) + 152) & ~*(*v1 + 80);
  v3 = (v2 + *(*v1 + 64) + 23) & 0xFFFFFFFFFFFFFFF8;

  v4 = v1[7];
  v5 = sub_18BC1EC08();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_18B87BF78(uint64_t a1, uint64_t a2)
{
  v4 = sub_18BC1E3B8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18B87BFE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_18BC1E3B8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18B87C0A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18B812A74();
  *a1 = result;
  a1[1] = v3;
  return result;
}

__n128 sub_18B87C10C(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_18B87C120@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18BB468CC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18B87C1C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18BB4719C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_18B87C228@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18BB47300();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_18B87C2C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18BB47738();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_18B87C32C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18BB47A44();
  *a1 = result & 1;
  return result;
}

id sub_18B87C390@<X0>(void *a1@<X8>)
{
  v2 = sub_18BB65B38();
  *a1 = v2;

  return v2;
}

void sub_18B87C3CC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_18BB47C34(v1);
}

uint64_t sub_18B87C408@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_18BB65A78();

  return sub_18BC1E3F8();
}

uint64_t sub_18B87C47C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_18BB65AD8();

  return sub_18BC1E1A8();
}

uint64_t sub_18B87C4B8()
{
  v0 = sub_18BC1E1A8();
  sub_18BB66B0C(v0);
}

uint64_t sub_18B87C508()
{
  type metadata accessor for SFFluidCollectionView.Interaction();
  sub_18BC20E78();
  return swift_getWitnessTable();
}

uint64_t sub_18B87C568()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_18B87C5A0()
{
  MEMORY[0x18CFFF000](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18B87C5DC()
{

  return swift_deallocObject();
}

uint64_t sub_18B87C614()
{

  return swift_deallocObject();
}

uint64_t sub_18B87C64C()
{

  return swift_deallocObject();
}

uint64_t sub_18B87C684()
{

  return swift_deallocObject();
}

uint64_t sub_18B87C6D8()
{

  return swift_deallocObject();
}

id sub_18B87C7B8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 dataSource];
  *a2 = result;
  return result;
}

id sub_18B87C808@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 delegate];
  *a2 = result;
  return result;
}

id sub_18B87C858@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 stepperFocused];
  *a2 = result;
  return result;
}

uint64_t sub_18B87C8A0()
{

  return swift_deallocObject();
}

uint64_t sub_18B87C8E8()
{
  MEMORY[0x18CFFF000](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18B87C954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18BC1EC08();
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

uint64_t sub_18B87CA14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_18BC1EC08();
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

uint64_t sub_18B87CAD0()
{

  return swift_deallocObject();
}

uint64_t sub_18B87CB18()
{
  MEMORY[0x18CFFF000](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18B87CB54()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_18B87CB8C()
{

  return swift_deallocObject();
}

uint64_t sub_18B87CBDC()
{

  return swift_deallocObject();
}

uint64_t sub_18B87CC14()
{

  return swift_deallocObject();
}

uint64_t sub_18B87CC6C()
{

  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18B87CCBC()
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA208);
  v1 = *(v14 - 8);
  v2 = *(v1 + 80);
  v18 = (v2 + 16) & ~v2;
  v3 = *(v1 + 64);
  v15 = (v3 + v2 + v18) & ~v2;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA200);
  v4 = *(v19 - 8);
  v16 = (v15 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v11 = (*(v4 + 64) + v2 + v16) & ~v2;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DA1F0);
  v5 = *(v17 - 8);
  v12 = (v11 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  v6 = (*(v5 + 64) + v2 + v12) & ~v2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3578);
  v7 = *(v13 - 8);
  v8 = (v6 + v3 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v1 + 8);
  v9(v0 + v18, v14);
  v9(v0 + v15, v14);
  (*(v4 + 8))(v0 + v16, v19);
  v9(v0 + v11, v14);
  (*(v5 + 8))(v0 + v12, v17);
  v9(v0 + v6, v14);
  (*(v7 + 8))(v0 + v8, v13);

  return swift_deallocObject();
}

uint64_t sub_18B87CFC8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3570);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_18B87D05C()
{

  return swift_deallocObject();
}

uint64_t sub_18B87D094()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA220);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_18B87D13C()
{

  return swift_deallocObject();
}

uint64_t sub_18B87D17C()
{

  sub_18BB7A414(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_18B87D1C4()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_18B87D1FC()
{

  return swift_deallocObject();
}

uint64_t sub_18B87D23C()
{
  v1 = sub_18BC1EDD8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 25) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_18B87D300()
{

  return swift_deallocObject();
}

uint64_t sub_18B87D340()
{

  return swift_deallocObject();
}

uint64_t sub_18B87D394()
{
  MEMORY[0x18CFFF000](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18B87D3D8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_alpha;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

__n128 sub_18B87D42C@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_cornerRadii;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v4;
  result = *(v3 + 32);
  v6 = *(v3 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v6;
  return result;
}

__n128 sub_18B87D4E0@<Q0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *a1 + OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame;
  result = *v2;
  v4 = *(v2 + 16);
  *a2 = *v2;
  a2[1] = v4;
  return result;
}

void sub_18B87D4FC(double *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = _SFRoundRectToPixels(*a1);
  v4 = v2 + OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame;
  *v4 = v3;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
}

uint64_t sub_18B87D56C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_parentIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
  return sub_18BC1E3F8();
}

uint64_t sub_18B87D5D0()
{

  return swift_deallocObject();
}

uint64_t sub_18B87D608()
{

  return swift_deallocObject();
}

uint64_t sub_18B87D650()
{
  MEMORY[0x18CFFF000](v0 + 16);

  return swift_deallocObject();
}

id sub_18B87D694@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 actionPerformer];
  *a2 = result;
  return result;
}

uint64_t sub_18B87D6E4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(*(type metadata accessor for SFFluidCollectionView.LayoutAttributes() - 8) + 80);

  type metadata accessor for SFFluidCollectionView.Element();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:

      break;
    case 1:
      (*(*(v2 - 8) + 8))(v0 + ((v3 + 72) & ~v3), v2);
      break;
    case 0:
      (*(*(v1 - 8) + 8))(v0 + ((v3 + 72) & ~v3), v1);
      break;
  }

  return swift_deallocObject();
}

uint64_t sub_18B87D908@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18BC1E0A8();
  *a1 = v3;
  return result;
}

uint64_t sub_18B87D9C0()
{

  return swift_deallocObject();
}

uint64_t sub_18B87D9F8@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_18B87DAB0@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

id sub_18B87DB68@<X0>(void *a1@<X8>)
{
  result = SiriLinkDataSource.connection.getter();
  *a1 = result;
  return result;
}

void sub_18B87DB94(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC12MobileSafari18SiriLinkDataSource____lazy_storage___connection);
  *(*a2 + OBJC_IVAR____TtC12MobileSafari18SiriLinkDataSource____lazy_storage___connection) = *a1;
  v3 = v2;
}

uint64_t sub_18B87DBEC()
{

  return swift_deallocObject();
}

uint64_t sub_18B87DC70()
{

  return swift_deallocObject();
}

uint64_t sub_18B87DCB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18BC20488();
  *a1 = result;
  return result;
}

uint64_t sub_18B87DD0C()
{

  return swift_deallocObject();
}

uint64_t sub_18B87DD4C()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_18B87DD84()
{

  return swift_deallocObject();
}

uint64_t sub_18B87DDCC()
{

  return swift_deallocObject();
}

id sub_18B87DE14@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 integerForKey_];
  *a2 = result;
  return result;
}

id sub_18B87DE74@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 integerForKey_];
  *a2 = result;
  return result;
}

id sub_18B87DED4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 integerForKey_];
  *a2 = result;
  return result;
}

id sub_18B87DF34@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 integerForKey_];
  *a2 = result;
  return result;
}

id sub_18B87DF94@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 integerForKey_];
  *a2 = result;
  return result;
}

__n128 sub_18B87E010(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *a2 = result;
  return result;
}

uint64_t sub_18B87E03C()
{
  MEMORY[0x18CFFF000](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18B87E07C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_18BB7F95C(a1, v5);
  Strong = swift_unknownObjectWeakLoadStrong();
  result = sub_18BB7F9B8(v5);
  *a2 = Strong;
  return result;
}

__n128 sub_18B87E0F0(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_18B87E104()
{

  return swift_deallocObject();
}

uint64_t sub_18B87E13C()
{

  return swift_deallocObject();
}

uint64_t sub_18B87E178()
{
  MEMORY[0x18CFFF000](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18B87E1B0()
{

  return swift_deallocObject();
}

uint64_t sub_18B87E1F0()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_18B87E2A0()
{
  v1 = _s8MetadataVMa();
  v15 = *(*(v1 - 8) + 80);
  v13 = *(*(v1 - 8) + 64);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DB1A0);
  v2 = *(v16 - 8);
  v3 = *(v2 + 80);

  v14 = (v15 + 24) & ~v15;
  v4 = v0 + v14;
  v5 = sub_18BC1EB88();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v14, 1, v5))
  {
    (*(v6 + 8))(v4, v5);
  }

  v7 = *(v1 + 28);
  v8 = sub_18BC1EC08();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v4 + v7, v8);
  v11 = *(v1 + 48);
  if (!(*(v9 + 48))(v4 + v11, 1, v8))
  {
    v10(v4 + v11, v8);
  }

  (*(v2 + 8))(v0 + ((((v13 + v14 + 7) & 0xFFFFFFFFFFFFFFF8) + v3 + 16) & ~v3), v16);

  return swift_deallocObject();
}

uint64_t sub_18B87E530()
{
  v1 = sub_18BC1EC08();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DB1A0);
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_18B87E68C(uint64_t a1, uint64_t a2)
{
  v4 = sub_18BC1EA98();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18B87E6F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_18BC1EA98();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18B87E798()
{
  MEMORY[0x18CFFF000](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18B87E7D0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9DB2A0);
  sub_18BC20418();
  sub_18B7B0B08(&qword_1EA9DB2B8, &qword_1EA9DB2A0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_18B87E8D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18BC1EC08();
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

uint64_t sub_18B87E98C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_18BC1EC08();
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

uint64_t sub_18B87EACC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18BC1E0C8();
  *a1 = result;
  return result;
}

uint64_t sub_18B87EAF8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18BC1E0C8();
  *a1 = result;
  return result;
}

id sub_18B87EB24@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 delegate];
  *a2 = result;
  return result;
}

uint64_t sub_18B87EB74()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_18B87EC00()
{
  MEMORY[0x18CFFF000](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18B87EC38()
{

  return swift_deallocObject();
}

uint64_t sub_18B87EC80()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_18B87ECD0()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_18B87ED1C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB6B0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v2 + v4 + 8) & ~v2;
  v6 = v0 + v3;
  v7 = _s4ItemVMa_1();
  v8 = *(*(v7 - 8) + 48);
  if (!v8(v6, 1, v7))
  {
    v9 = sub_18BC1EC08();
    (*(*(v9 - 8) + 8))(v6, v9);
  }

  if (!v8(v0 + v5, 1, v7))
  {
    v10 = sub_18BC1EC08();
    (*(*(v10 - 8) + 8))(v0 + v5, v10);
  }

  return swift_deallocObject();
}

uint64_t sub_18B87EF24()
{

  return swift_deallocObject();
}

uint64_t sub_18B87EFA4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_18B87EFEC()
{
  MEMORY[0x18CFFF000](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18B87F07C()
{

  return swift_deallocObject();
}

uint64_t sub_18B87F0B4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_18B87F0FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s15DropDestinationVMa_0(0);
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

uint64_t sub_18B87F1B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = _s15DropDestinationVMa_0(0);
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

uint64_t sub_18B87F270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s4PageVMa();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = _s7SectionVMa_0();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_18B87F3BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = _s4PageVMa();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = _s7SectionVMa_0();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_18B87F514@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_18B87F5DC()
{

  return swift_deallocObject();
}

uint64_t sub_18B87F614()
{

  return swift_deallocObject();
}

uint64_t sub_18B87F654()
{

  return swift_deallocObject();
}

uint64_t sub_18B87F69C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_18B87F6D4()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18B87F714()
{

  return swift_deallocObject();
}

uint64_t sub_18B87F750()
{
  MEMORY[0x18CFFF000](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18B87F788()
{

  return swift_deallocObject();
}

void sub_18B87F7F0()
{
  sub_18B9EA798();
  sub_18BC1E878();
  __break(1u);
}

uint64_t sub_18B87F8B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s4ItemVMa_4();
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

uint64_t sub_18B87F974()
{

  return swift_deallocObject();
}

uint64_t sub_18B87F9B4()
{
  v1 = (_s4ItemVMa_4() - 8);
  v2 = (*(*v1 + 80) + 152) & ~*(*v1 + 80);
  v3 = (v2 + *(*v1 + 64) + 23) & 0xFFFFFFFFFFFFFFF8;

  v4 = v1[7];
  v5 = sub_18BC1EC08();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_18B87FB08()
{
  v1 = (_s17PinchGestureStateVMa(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v1[15] + v2;
  v5 = *(_s4ItemVMa_4() + 20);
  v6 = sub_18BC1EC08();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);

  return swift_deallocObject();
}

uint64_t sub_18B87FC3C()
{

  return swift_deallocObject();
}

uint64_t sub_18B87FC74()
{

  return swift_deallocObject();
}

uint64_t sub_18B87FCB4()
{

  return swift_deallocObject();
}

uint64_t sub_18B87FCEC()
{
  v1 = (_s15PanGestureStateVMa(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v0 + v1[8] + v2;
  v4 = *(_s4ItemVMa_4() + 20);
  v5 = sub_18BC1EC08();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_18B87FE0C()
{
  v1 = (_s4ItemVMa_4() - 8);
  v2 = (*(*v1 + 80) + 25) & ~*(*v1 + 80);

  v3 = v1[7];
  v4 = sub_18BC1EC08();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_18B87FF18()
{
  v1 = *(_s4ItemVMa_1() - 8);
  v2 = (*(v1 + 80) + 152) & ~*(v1 + 80);
  v3 = (v2 + *(v1 + 64) + 23) & 0xFFFFFFFFFFFFFFF8;

  v4 = sub_18BC1EC08();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);

  return swift_deallocObject();
}

uint64_t sub_18B880050()
{
  v1 = _s4PageVMa_0();
  v2 = (*(*(v1 - 8) + 80) + 152) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);

  v4 = sub_18BC1EC08();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  v5 = v0 + v2 + *(v1 + 20);
  if (*(v5 + 32))
  {
  }

  v6 = *(v5 + 88);
  if (v6 != 1)
  {
  }

  v7 = v0 + v2 + *(v1 + 32);
  if (*(v7 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18B8802E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18BC1E0C8();
  *a1 = result;
  return result;
}

uint64_t sub_18B880314@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18BC1E0C8();
  *a1 = result;
  return result;
}

uint64_t sub_18B880340()
{
  _Block_release(*(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_18B880394()
{

  return swift_deallocObject();
}

uint64_t sub_18B8803DC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DB1B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[5] + 8);
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

  else
  {
    v14 = sub_18BC1EC08();
    v15 = *(v14 - 8);
    if (*(v15 + 84) == a2)
    {
      v8 = v14;
      v9 = *(v15 + 48);
      v10 = a1 + a3[7];
      goto LABEL_3;
    }

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AE0);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[12];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_18B880578(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DB1B0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[5] + 8) = a2;
    return result;
  }

  v13 = sub_18BC1EC08();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[7];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AE0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[12];

  return v16(v17, a2, a2, v15);
}

id sub_18B880708@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 icon];
  *a2 = result;
  return result;
}

id sub_18B880758@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 theme];
  *a2 = result;
  return result;
}

uint64_t sub_18B8807A8()
{

  return swift_deallocObject();
}

uint64_t sub_18B8807E8()
{

  return swift_deallocObject();
}

uint64_t sub_18B880828()
{

  return swift_deallocObject();
}

id sub_18B880860@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 stepper];
  *a2 = result;
  return result;
}

uint64_t sub_18B8808B0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_18B8808E8()
{
  MEMORY[0x18CFFF000](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18B880920()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

void __destructor_8_s0_s8_s16(uint64_t a1)
{
  v2 = *(a1 + 16);
}

id backgroundColorForPlatterStyle(unint64_t a1, void *a2, unsigned int a3)
{
  v5 = a2;
  v6 = v5;
  if (a1 == 3)
  {
    if ((_SFIsPrivateTintStyle([v5 tintStyle]) & 1) == 0)
    {
      v8 = [MEMORY[0x1E69DC888] sf_tabSeparatorColor];
      goto LABEL_17;
    }

    goto LABEL_9;
  }

  if (a1 == 4)
  {
    v8 = [MEMORY[0x1E69DC888] sf_colorNamed:raisedTabPlatterColorNames[a3 ^ 1]];
    goto LABEL_17;
  }

  if (a1 != 6)
  {
LABEL_9:
    v9 = [v6 themeColor];
    v37 = 0.0;
    [v9 getHue:0 saturation:0 brightness:&v37 alpha:0];
    v10 = 0.0;
    if (v37 >= 0.1)
    {
      if (v37 <= 0.95)
      {
        if (v37 > 0.85)
        {
          v14 = 0;
          v10 = (v37 + -0.85) / 0.1;
          v12 = tabPlatterColorNames;
          v11 = secondaryDarkTabPlatterColorNames;
          goto LABEL_23;
        }

        v11 = 0;
        v12 = tabPlatterColorNames;
      }

      else
      {
        v11 = 0;
        v12 = secondaryDarkTabPlatterColorNames;
      }
    }

    else
    {
      v11 = 0;
      v12 = secondaryBrightTabPlatterColorNames;
    }

    v14 = 1;
LABEL_23:
    if ([v6 isPrivate])
    {
      if (v9)
      {
        [v9 safari_grayscaleComponent];
        v16 = v15 > 0.1;
      }

      else
      {
        v16 = 1;
      }
    }

    else
    {
      v16 = 0;
    }

    v17 = 0;
    if (a1 <= 5 && ((1 << a1) & 0x2C) != 0)
    {
      v17 = v16 | (([v6 isPrivate] & 1) == 0);
    }

    v18 = v17 + a3;
    v19 = privateTabPlatterColorNames;
    if (!v16)
    {
      v19 = v12;
    }

    v20 = v19[v18];
    v21 = [MEMORY[0x1E69DC888] sf_colorNamed:v20];
    v22 = v21;
    if (v16)
    {
      if (a3)
      {
        v23 = _SFIsDarkTintStyle([v6 tintStyle]);
        v24 = 0.6;
        if (v23)
        {
          v24 = 0.35;
        }

        v25 = [v22 colorWithAlphaComponent:v24];
        goto LABEL_40;
      }
    }

    else if (!v14)
    {
      v26 = [MEMORY[0x1E69DC888] sf_colorNamed:v11[v18]];
      v27 = MEMORY[0x1E69DD1B8];
      if ([v9 safari_meetsThresholdForDarkAppearance])
      {
        v28 = 2;
      }

      else
      {
        v28 = 1;
      }

      v29 = [v27 traitCollectionWithUserInterfaceStyle:v28];
      v30 = [v26 resolvedColorWithTraitCollection:v29];
      [v30 alphaComponent];
      v32 = v31;
      v33 = [v22 resolvedColorWithTraitCollection:v29];
      [v33 alphaComponent];
      v35 = _SFInterpolate(v32, v34, v10);

      v13 = [v26 colorWithAlphaComponent:v35];

      goto LABEL_45;
    }

    v25 = v21;
LABEL_40:
    v13 = v25;
LABEL_45:

    goto LABEL_46;
  }

  if (UIAccessibilityButtonShapesEnabled())
  {
    v7 = MEMORY[0x1E69DC888];
    if (a3)
    {
      v8 = [MEMORY[0x1E69DC888] systemFillColor];
LABEL_17:
      v13 = v8;
      goto LABEL_46;
    }

LABEL_16:
    v8 = [v7 tertiarySystemFillColor];
    goto LABEL_17;
  }

  if (a3)
  {
    v7 = MEMORY[0x1E69DC888];
    goto LABEL_16;
  }

  v13 = 0;
LABEL_46:

  return v13;
}

void __darkModeHighContrastFilter_block_invoke()
{
  v0 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979D78]];
  v1 = darkModeHighContrastFilter_filter;
  darkModeHighContrastFilter_filter = v0;

  v2 = darkModeHighContrastFilter_filter;
  v4[2] = xmmword_18BC3D960;
  v4[3] = *"?5>?";
  v4[4] = xmmword_18BC3D980;
  v4[0] = xmmword_18BC3D940;
  v4[1] = unk_18BC3D950;
  v3 = [MEMORY[0x1E696B098] valueWithBytes:v4 objCType:"{CAColorMatrix=ffffffffffffffffffff}"];
  [v2 setValue:v3 forKey:*MEMORY[0x1E6979AC0]];
}

void __darkModeFilter_block_invoke()
{
  LODWORD(v5) = 0;
  v0 = [MEMORY[0x1E6979378] filterWithType:{*MEMORY[0x1E6979D78], 0, v5}];
  v1 = darkModeFilter_filter;
  darkModeFilter_filter = v0;

  v2 = darkModeFilter_filter;
  HIDWORD(v5) = 1065353216;
  v6 = 0;
  v7 = 0;
  v8 = 1065353216;
  v10 = 0;
  v9 = 0;
  v11 = 1065353216;
  v12 = 0;
  v13 = 0;
  v14 = 0x3D8F5C2900000000;
  v3 = [MEMORY[0x1E696B098] valueWithBytes:&v4 objCType:"{CAColorMatrix=ffffffffffffffffffff}"];
  [v2 setValue:v3 forKey:*MEMORY[0x1E6979AC0]];
}

void __lightModeHighContrastFilter_block_invoke()
{
  v0 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979D78]];
  v1 = lightModeHighContrastFilter_filter;
  lightModeHighContrastFilter_filter = v0;

  v2 = lightModeHighContrastFilter_filter;
  v4[2] = xmmword_18BC3D9B0;
  v4[3] = unk_18BC3D9C0;
  v4[4] = xmmword_18BC3D9D0;
  v4[0] = xmmword_18BC3D990;
  v4[1] = unk_18BC3D9A0;
  v3 = [MEMORY[0x1E696B098] valueWithBytes:v4 objCType:"{CAColorMatrix=ffffffffffffffffffff}"];
  [v2 setValue:v3 forKey:*MEMORY[0x1E6979AC0]];
}

void __lightModeFilter_block_invoke()
{
  *v5 = 0u;
  v0 = [MEMORY[0x1E6979378] filterWithType:{*MEMORY[0x1E6979D78], 0, 0, 0, 0, 0, 0, 0, 0, 0, *&v5[12]}];
  v1 = lightModeFilter_filter;
  lightModeFilter_filter = v0;

  v2 = lightModeFilter_filter;
  *&v5[16] = 1032805417;
  v3 = [MEMORY[0x1E696B098] valueWithBytes:&v4 objCType:"{CAColorMatrix=ffffffffffffffffffff}"];
  [v2 setValue:v3 forKey:*MEMORY[0x1E6979AC0]];
}

uint64_t SFTabOverviewMaximumNumberOfColumns(int a1, double a2, double a3, double a4, double a5)
{
  Width = CGRectGetWidth(*&a2);
  if (a1)
  {
    if (Width <= 896.0)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }

  else if (Width >= 981.0)
  {
    return 4;
  }

  else
  {
    return 3;
  }
}

double SFTabOverviewScaleTranslationForZPosition(double *a1, double *a2, double result, double a4, double a5, double a6, double a7)
{
  v7 = a7 * -0.000908711;
  if (a2)
  {
    result = (result - a5) * v7;
    *a2 = result;
    a2[1] = (a4 - a6) * v7;
  }

  if (a1)
  {
    result = 1.0 - v7;
    *a1 = 1.0 - v7;
  }

  return result;
}

double SFTabOverviewVanishingPointForView(void *a1)
{
  v1 = a1;
  v2 = [v1 window];
  v3 = [v2 screen];

  [v3 bounds];
  MidX = CGRectGetMidX(v10);
  [v3 bounds];
  MidY = CGRectGetMidY(v11);
  v6 = [v3 coordinateSpace];
  [v1 convertPoint:v6 fromCoordinateSpace:{MidX, MidY}];
  v8 = v7;

  return v8;
}

void sub_18B888B54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id createButton(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x1E69DC738];
  v6 = MEMORY[0x1E69DCAB8];
  v7 = a2;
  v8 = [v6 systemImageNamed:a1];
  v9 = [v5 systemButtonWithImage:v8 target:v7 action:a3];

  return v9;
}

id allowedClasses()
{
  v2[1] = *MEMORY[0x1E69E9840];
  v2[0] = objc_opt_class();
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:1];

  return v0;
}

void objectLoader(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = allowedClasses();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __objectLoader_block_invoke;
  v7[3] = &unk_1E721B680;
  v8 = v3;
  v6 = v3;
  [v4 safari_loadObjectOfClasses:v5 completionHandler:v7];
}

void sub_18B890F38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18B896B54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18B8997C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B89C6FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18B89CEF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18B8A17B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18B8A1DA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id overflowCountFormatter()
{
  v0 = overflowCountFormatter_overflowCountFormatter;
  if (!overflowCountFormatter_overflowCountFormatter)
  {
    v1 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    v2 = overflowCountFormatter_overflowCountFormatter;
    overflowCountFormatter_overflowCountFormatter = v1;

    v3 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    [overflowCountFormatter_overflowCountFormatter setLocale:v3];

    [overflowCountFormatter_overflowCountFormatter setNumberStyle:1];
    v4 = [overflowCountFormatter_overflowCountFormatter plusSign];
    [overflowCountFormatter_overflowCountFormatter setPositivePrefix:v4];

    v0 = overflowCountFormatter_overflowCountFormatter;
  }

  return v0;
}

void sub_18B8A4BD8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 + 56));
  objc_destroyWeak((v3 - 104));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18B8A70B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18B8A7B64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B8A8164(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id uiImageFromISImage(void *a1)
{
  v1 = MEMORY[0x1E69DCAB8];
  v2 = a1;
  v3 = [v1 alloc];
  v4 = [v2 CGImage];
  [v2 scale];
  v6 = v5;

  v7 = [v3 initWithCGImage:v4 scale:0 orientation:v6];

  return v7;
}

void sub_18B8AF1F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id getLinkAnimation(uint64_t a1, _OWORD *a2, int a3)
{
  v43 = *MEMORY[0x1E69E9840];
  if (a1 == 1)
  {
    *&v17.m31 = a2[4];
    *&v17.m33 = a2[5];
    *&v17.m41 = a2[6];
    *&v17.m43 = a2[7];
    *&v17.m11 = *a2;
    *&v17.m13 = a2[1];
    *&v17.m21 = a2[2];
    *&v17.m23 = a2[3];
    v4 = toolbarItemAnimationTemplate();
    v34 = *&v17.m31;
    v35 = *&v17.m33;
    v36 = *&v17.m41;
    v37 = *&v17.m43;
    v30 = *&v17.m11;
    v31 = *&v17.m13;
    v32 = *&v17.m21;
    v33 = *&v17.m23;
    v5 = [MEMORY[0x1E696B098] valueWithBytes:&v30 objCType:"{CATransform3D=dddddddddddddddd}"];
    v38 = v5;
    v26 = *&v17.m31;
    v27 = *&v17.m33;
    v28 = *&v17.m41;
    v29 = *&v17.m43;
    v22 = *&v17.m11;
    v23 = *&v17.m13;
    v24 = *&v17.m21;
    v25 = *&v17.m23;
    v6 = [MEMORY[0x1E696B098] valueWithBytes:&v22 objCType:"{CATransform3D=dddddddddddddddd}"];
    v39 = v6;
    v10 = MEMORY[0x1E696B098];
    v20 = v17;
    CATransform3DScale(&v21, &v20, 1.2, 1.2, 1.0);
    v8 = [v10 valueWithBytes:&v21 objCType:"{CATransform3D=dddddddddddddddd}"];
    v40 = v8;
    v9 = MEMORY[0x1E696B098];
    v19 = v17;
    CATransform3DScale(&v20, &v19, 0.8, 0.8, 1.0);
LABEL_5:
    v11 = [v9 valueWithBytes:&v20 objCType:{"{CATransform3D=dddddddddddddddd}", *&v17.m11, *&v17.m13, *&v17.m21, *&v17.m23, *&v17.m31, *&v17.m33, *&v17.m41, *&v17.m43}];
    v41 = v11;
    v19 = v18;
    v12 = [MEMORY[0x1E696B098] valueWithBytes:&v19 objCType:"{CATransform3D=dddddddddddddddd}"];
    v42 = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:5];
    [v4 setValues:v13];

    v45 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
    [v4 setPreferredFrameRateRange:{*&v45.minimum, *&v45.maximum, *&v45.preferred}];
    [v4 setHighFrameRateReason:1638404];
    if (!a3)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (!a1)
  {
    *&v17.m31 = a2[4];
    *&v17.m33 = a2[5];
    *&v17.m41 = a2[6];
    *&v17.m43 = a2[7];
    *&v17.m11 = *a2;
    *&v17.m13 = a2[1];
    *&v17.m21 = a2[2];
    *&v17.m23 = a2[3];
    v4 = toolbarItemAnimationTemplate();
    v34 = *&v17.m31;
    v35 = *&v17.m33;
    v36 = *&v17.m41;
    v37 = *&v17.m43;
    v30 = *&v17.m11;
    v31 = *&v17.m13;
    v32 = *&v17.m21;
    v33 = *&v17.m23;
    v5 = [MEMORY[0x1E696B098] valueWithBytes:&v30 objCType:"{CATransform3D=dddddddddddddddd}"];
    v38 = v5;
    v26 = *&v17.m31;
    v27 = *&v17.m33;
    v28 = *&v17.m41;
    v29 = *&v17.m43;
    v22 = *&v17.m11;
    v23 = *&v17.m13;
    v24 = *&v17.m21;
    v25 = *&v17.m23;
    v6 = [MEMORY[0x1E696B098] valueWithBytes:&v22 objCType:"{CATransform3D=dddddddddddddddd}"];
    v39 = v6;
    v7 = MEMORY[0x1E696B098];
    v20 = v17;
    CATransform3DTranslate(&v21, &v20, 0.0, 8.0, 0.0);
    v8 = [v7 valueWithBytes:&v21 objCType:"{CATransform3D=dddddddddddddddd}"];
    v40 = v8;
    v9 = MEMORY[0x1E696B098];
    v19 = v17;
    CATransform3DTranslate(&v20, &v19, 0.0, -2.66666667, 0.0);
    goto LABEL_5;
  }

  v4 = 0;
  if (a3)
  {
LABEL_6:
    v14 = [v4 keyTimes];
    v15 = [v14 safari_mapObjectsUsingBlock:&__block_literal_global_8];
    [v4 setKeyTimes:v15];
  }

LABEL_7:

  return v4;
}

id linkImageAnimationTimingFunctions()
{
  v7[4] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED8]];
  v7[0] = v0;
  v1 = *MEMORY[0x1E6979ED0];
  v2 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED0]];
  v7[1] = v2;
  v3 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB0]];
  v7[2] = v3;
  v4 = [MEMORY[0x1E69793D0] functionWithName:v1];
  v7[3] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:4];

  return v5;
}

uint64_t __getLinkAnimation_block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  [a2 doubleValue];
  v4 = v3 + -0.7;

  return [v2 numberWithDouble:v4];
}

id toolbarItemAnimationTemplate()
{
  v0 = [MEMORY[0x1E6979390] animationWithKeyPath:@"transform"];
  [v0 setKeyTimes:&unk_1EFF74490];
  v1 = linkImageAnimationTimingFunctions();
  [v0 setTimingFunctions:v1];

  [v0 setDuration:0.9];
  UIAnimationDragCoefficient();
  *&v3 = 1.0 / v2;
  [v0 setSpeed:v3];
  [v0 setAdditive:1];
  v6 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v0 setPreferredFrameRateRange:{*&v6.minimum, *&v6.maximum, *&v6.preferred}];
  [v0 setHighFrameRateReason:1638404];

  return v0;
}

void __shadowImage_block_invoke_2(CGRect *a1, void *a2)
{
  v3 = [a2 CGContext];
  CGContextSaveGState(v3);
  v15 = CGRectInset(a1[1], 12.0, 12.0);
  x = v15.origin.x;
  y = v15.origin.y;
  width = v15.size.width;
  v7 = v15.size.height + -6.0;
  v8 = [MEMORY[0x1E69DC888] colorWithWhite:0.92 alpha:1.0];
  CGContextSetFillColorWithColor(v3, [v8 CGColor]);

  v9 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.08];
  v10 = [v9 CGColor];
  v14.width = 0.0;
  v14.height = 6.0;
  CGContextSetShadowWithColor(v3, v14, 12.0, v10);

  v11 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:x cornerRadius:{y, width, v7, a1[2].origin.x}];
  v12 = [v11 CGPath];

  CGContextAddPath(v3, v12);
  CGContextFillPath(v3);
  CGContextRestoreGState(v3);
  CGContextSetRGBFillColor(v3, 0.0, 0.0, 0.0, 1.0);
  CGContextSetBlendMode(v3, kCGBlendModeDestinationOut);
  CGContextAddPath(v3, v12);

  CGContextFillPath(v3);
}

void sub_18B8B48F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id __makeExplanationItemCollectionViewLayout_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [v3 traitCollection];
  v5 = [v4 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v5);

  v7 = [v3 container];

  [v7 contentSize];
  v9 = v8;

  if (v9 <= 440.0 || IsAccessibilityCategory)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  v12 = MEMORY[0x1E6995588];
  v13 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0 / v11];
  v14 = [MEMORY[0x1E6995558] estimatedDimension:100.0];
  v15 = [v12 sizeWithWidthDimension:v13 heightDimension:v14];

  v16 = [MEMORY[0x1E6995578] itemWithLayoutSize:v15];
  v17 = MEMORY[0x1E6995588];
  v18 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  v19 = [MEMORY[0x1E6995558] estimatedDimension:100.0];
  v20 = [v17 sizeWithWidthDimension:v18 heightDimension:v19];

  v21 = [MEMORY[0x1E6995568] horizontalGroupWithLayoutSize:v20 repeatingSubitem:v16 count:v11];
  v22 = [MEMORY[0x1E6995590] fixedSpacing:20.0];
  [v21 setInterItemSpacing:v22];

  v23 = [MEMORY[0x1E6995580] sectionWithGroup:v21];
  [v23 setInterGroupSpacing:20.0];

  return v23;
}

id getSFContentBlockerManagerClass(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSFContentBlockerManagerClass(void)::softClass;
  v7 = getSFContentBlockerManagerClass(void)::softClass;
  if (!getSFContentBlockerManagerClass(void)::softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = ___ZL31getSFContentBlockerManagerClassv_block_invoke;
    v3[3] = &unk_1E721C528;
    v3[4] = &v4;
    ___ZL31getSFContentBlockerManagerClassv_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18B8B5D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class ___ZL31getSFContentBlockerManagerClassv_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SafariServicesLibraryCore(char **)::frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = ___ZL25SafariServicesLibraryCorePPc_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E721C548;
    v6 = 0;
    SafariServicesLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (SafariServicesLibraryCore(char **)::frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SFContentBlockerManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    ___ZL31getSFContentBlockerManagerClassv_block_invoke_cold_1();
  }

  getSFContentBlockerManagerClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ___ZL25SafariServicesLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  SafariServicesLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

void sub_18B8B6B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getSearchUITableViewCellClass_block_invoke(uint64_t a1)
{
  SearchUILibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SearchUITableViewCell");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSearchUITableViewCellClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getSearchUITableViewCellClass_block_invoke_cold_1();
    SearchUILibrary();
  }
}

void SearchUILibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!SearchUILibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __SearchUILibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E721C5F0;
    v3 = 0;
    SearchUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!SearchUILibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __SearchUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SearchUILibraryCore_frameworkLibrary = result;
  return result;
}

double __getSearchUIClass_block_invoke(uint64_t a1)
{
  SearchUILibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SearchUI");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSearchUIClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getSearchUIClass_block_invoke_cold_1();
    return _SFScreenNativeScale();
  }

  return result;
}

double _SFScreenNativeScale()
{
  result = *&_SFScreenNativeScale::nativeScale;
  if (*&_SFScreenNativeScale::nativeScale == 0.0)
  {
    v1 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v1 nativeScale];
    _SFScreenNativeScale::nativeScale = v2;

    return *&_SFScreenNativeScale::nativeScale;
  }

  return result;
}

double _SFRoundPointToPixels(double a1)
{
  v2 = _SFScreenScale();
  v3 = round(a1 * v2) / v2;
  _SFScreenScale();
  return v3;
}

double _SFRoundSizeToPixels(double a1)
{
  v2 = _SFScreenScale();
  v3 = round(a1 * v2) / v2;
  _SFScreenScale();
  return v3;
}

double SFFloorRectToPixels(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MinX = CGRectGetMinX(*&a1);
  v9 = _SFScreenScale();
  v10 = floor(MinX * v9) / v9;
  v12.origin.x = a1;
  v12.origin.y = a2;
  v12.size.width = a3;
  v12.size.height = a4;
  CGRectGetMinY(v12);
  _SFScreenScale();
  v13.origin.x = a1;
  v13.origin.y = a2;
  v13.size.width = a3;
  v13.size.height = a4;
  CGRectGetMaxX(v13);
  _SFScreenScale();
  v14.origin.x = a1;
  v14.origin.y = a2;
  v14.size.width = a3;
  v14.size.height = a4;
  CGRectGetMaxY(v14);
  _SFScreenScale();
  return v10;
}

uint64_t _SFSizeClassForWidth(double a1)
{
  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    if (_SFDeviceIsPad::onceToken != -1)
    {
      _SFSizeClassForWidth_cold_1();
    }

    if (((a1 > 506.0) & _SFDeviceIsPad::isPad) != 0)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  else if (a1 <= 666.0)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

id _SFResizableImageWithContinuousCurveCorners(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  v11.width = a3 * 2.0 + 1.0;
  v11.height = v11.width;
  UIGraphicsBeginImageContextWithOptions(v11, 0, 0.0);
  v6 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:a1 byRoundingCorners:0.0 cornerRadii:{0.0, a3 * 2.0 + 1.0, a3 * 2.0 + 1.0, a3, a3}];
  [v6 addClip];
  [v5 set];
  v12.origin.x = 0.0;
  v12.origin.y = 0.0;
  v12.size.width = a3 * 2.0 + 1.0;
  v12.size.height = v12.size.width;
  UIRectFill(v12);
  v7 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsPopContext();
  v8 = [v7 resizableImageWithCapInsets:{a3, a3, a3, a3}];

  return v8;
}

id _SFSafariIconLinkImage()
{
  if (_SFSafariIconLinkImage::onceToken != -1)
  {
    _SFSafariIconLinkImage_cold_1();
  }

  v1 = _SFSafariIconLinkImage::image;

  return v1;
}

void sub_18B8B77C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v11;

  _Unwind_Resume(a1);
}

id SFSmallSafariIconLinkImage()
{
  if (SFSmallSafariIconLinkImage::onceToken != -1)
  {
    SFSmallSafariIconLinkImage_cold_1();
  }

  v1 = SFSmallSafariIconLinkImage::image;

  return v1;
}

void __SFSmallSafariIconLinkImage_block_invoke()
{
  v0 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:2];
  v1 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x1E69DDC70]];
  v10 = [v0 configurationWithTraitCollection:v1];

  v2 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"safari" withConfiguration:v10];
  v3 = SFSmallSafariIconLinkImage::image;
  SFSmallSafariIconLinkImage::image = v2;

  v4 = SFSmallSafariIconLinkImage::image;
  v5 = [MEMORY[0x1E69DC888] sf_safariAccentColor];
  [SFSmallSafariIconLinkImage::image size];
  v8 = SFTintImage(v4, v5, 0, v6, v7);
  v9 = SFSmallSafariIconLinkImage::image;
  SFSmallSafariIconLinkImage::image = v8;
}

void sub_18B8B7988(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

id SFTintImage(void *a1, void *a2, char a3, double a4, double a5)
{
  v9 = a1;
  v10 = a2;
  v11 = objc_alloc(MEMORY[0x1E69DCA78]);
  v12 = [MEMORY[0x1E69DCA80] preferredFormat];
  v13 = [v11 initWithBounds:v12 format:{0.0, 0.0, a4, a5}];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __SFTintImage_block_invoke;
  v18[3] = &unk_1E721C630;
  v14 = v9;
  v21 = 0;
  v22 = 0;
  v19 = v14;
  v23 = a4;
  v24 = a5;
  v15 = v10;
  v20 = v15;
  v25 = a3;
  v16 = [v13 imageWithActions:v18];

  return v16;
}

void __SFTintImage_block_invoke(uint64_t a1)
{
  [*(a1 + 32) drawInRect:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  [*(a1 + 40) set];
  UIRectFillUsingBlendMode(*(a1 + 48), kCGBlendModeSourceIn);
  if (*(a1 + 80) == 1)
  {
    v2 = [MEMORY[0x1E69DD1B8] currentTraitCollection];
    v3 = [v2 userInterfaceStyle] == 2;

    v4 = *(a1 + 32);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    v8 = *(a1 + 72);
    v9 = dbl_18BC3DD70[v3];

    [v4 drawInRect:15 blendMode:v5 alpha:{v6, v7, v8, v9}];
  }
}

uint64_t _SFPointIsInvalid()
{
  if (CGFloatIsValid())
  {
    return CGFloatIsValid() ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t _SFInsetIsInvalid()
{
  if (CGFloatIsValid() && CGFloatIsValid() && CGFloatIsValid())
  {
    return CGFloatIsValid() ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t _SFRectIsInvalid()
{
  if (CGFloatIsValid() && CGFloatIsValid() && CGFloatIsValid())
  {
    return CGFloatIsValid() ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t _SFDeviceHasRectangularScreen()
{
  if (_SFDeviceHasRectangularScreen::onceToken != -1)
  {
    _SFDeviceHasRectangularScreen_cold_1();
  }

  return _SFDeviceHasRectangularScreen::hasRectangularScreen;
}

uint64_t _SFDeviceHasHomeButton()
{
  if (_SFDeviceHasHomeButton::onceToken != -1)
  {
    _SFDeviceHasHomeButton_cold_1();
  }

  return _SFDeviceHasHomeButton::hasHomeButton;
}

uint64_t SFDeviceSupportsPointerInteractions()
{
  if (_SFDeviceIsPad::onceToken != -1)
  {
    _SFSizeClassForWidth_cold_1();
  }

  return _SFDeviceIsPad::isPad;
}

uint64_t SFDeviceIsAlwaysReachable()
{
  if (SFDeviceIsAlwaysReachable::onceToken != -1)
  {
    SFDeviceIsAlwaysReachable_cold_1();
  }

  return SFDeviceIsAlwaysReachable::isReachable;
}

uint64_t __SFDeviceIsAlwaysReachable_block_invoke()
{
  result = MGGetBoolAnswer();
  SFDeviceIsAlwaysReachable::isReachable = result ^ 1;
  return result;
}

uint64_t _SFDeviceAlertStyle()
{
  if (_SFDeviceAlertStyle::onceToken != -1)
  {
    _SFDeviceAlertStyle_cold_1();
  }

  return _SFDeviceAlertStyle::style;
}

BOOL _SFDeviceStatusBarHasNonTransparentBackground()
{
  if (_SFDeviceStatusBarHasNonTransparentBackground::onceToken != -1)
  {
    _SFDeviceStatusBarHasNonTransparentBackground_cold_1();
  }

  return _SFDeviceStatusBarHasNonTransparentBackground::canHaveBackground == 1 && [MEMORY[0x1E69DCFA8] getStyleOverrides] != 0;
}

NSString *_SFToolbarContentSizeCategoryForPreferredCategory(void *a1)
{
  v1 = a1;
  v2 = *MEMORY[0x1E69DDC70];
  if (UIContentSizeCategoryCompareToCategory(v1, v2) != NSOrderedAscending)
  {
    v3 = *MEMORY[0x1E69DDC58];
    v4 = UIContentSizeCategoryCompareToCategory(v1, v3);
    if (v4 == NSOrderedDescending)
    {
      v5 = v3;
    }

    else
    {
      v5 = v1;
    }

    if (v4 == NSOrderedDescending)
    {
      v6 = 0;
    }

    else
    {
      v1 = 0;
      v6 = v3;
    }

    v2 = v5;
  }

  return v2;
}

uint64_t SFContrastingStatusBarStyleForInterfaceStyle(uint64_t a1)
{
  v1 = 3;
  if (a1 != 1)
  {
    v1 = 0;
  }

  if (a1 == 2)
  {
    return 1;
  }

  else
  {
    return v1;
  }
}

id SFInterpolateColor(void *a1, void *a2, double a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (a3 <= 0.0)
  {
    v11 = 0;
    v10 = v6;
  }

  else
  {
    if (a3 >= 1.0)
    {
      v10 = 0;
    }

    else
    {
      v17 = 0.0;
      v18 = 0.0;
      v16 = 0.0;
      [v5 getRed:&v18 green:&v17 blue:&v16 alpha:0];
      v14 = 0.0;
      v15 = 0.0;
      v13 = 0.0;
      [v7 getRed:&v15 green:&v14 blue:&v13 alpha:0];
      v8 = _SFInterpolate(v18, v15, a3);
      v9 = _SFInterpolate(v17, v14, a3);
      v6 = [MEMORY[0x1E69DC888] colorWithRed:v8 green:v9 blue:_SFInterpolate(v16 alpha:{v13, a3), 1.0}];
      v10 = v7;
    }

    v11 = v5;
    v5 = v6;
  }

  return v5;
}

id subtitleFont()
{
  v0 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD08]];
  v1 = [v0 fontDescriptorWithSymbolicTraits:0];

  v2 = MEMORY[0x1E69DB878];
  [v1 pointSize];
  v3 = [v2 fontWithDescriptor:v1 size:?];

  return v3;
}

void sub_18B8BC23C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B8BC3C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B8C16DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B8C23C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_18B8C2660(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B8C2870(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id turnOnButtonFont()
{
  if (turnOnButtonFont_onceToken != -1)
  {
    turnOnButtonFont_cold_1();
  }

  v1 = turnOnButtonFont_turnOnButtonFont;

  return v1;
}

id __makeDismissButton_block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  if (UIAccessibilityButtonShapesEnabled())
  {
    v9 = [MEMORY[0x1E69DCDD0] styleWithEffect:v7 shape:v8];
  }

  else
  {
    v10 = MEMORY[0x1E69DCDB8];
    v11 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:v6];
    v12 = [v10 effectWithPreview:v11];

    v13 = MEMORY[0x1E69DCDC8];
    v14 = MEMORY[0x1E69DC728];
    v15 = [v6 imageView];
    [v15 frame];
    v16 = [v14 bezierPathWithOvalInRect:?];
    v17 = [v13 shapeWithPath:v16];

    v9 = [MEMORY[0x1E69DCDD0] styleWithEffect:v12 shape:v17];
  }

  return v9;
}

void __turnOnButtonFont_block_invoke()
{
  v0 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
  v1 = turnOnButtonFont_turnOnButtonFont;
  turnOnButtonFont_turnOnButtonFont = v0;
}

id flattenedNavigationIntents(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 safari_containsObjectPassingTest:&__block_literal_global_17])
  {
    v2 = [MEMORY[0x1E695DF70] array];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v12 + 1) + 8 * i);
          [v8 setPolicy:{0, v12}];
          [v8 setIsChildIntent:1];
          if ([v8 type] == 11)
          {
            v9 = [v8 navigationIntents];
            v10 = flattenedNavigationIntents();
            [v2 addObjectsFromArray:v10];
          }

          else
          {
            [v2 addObject:v8];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v2 = v1;
  }

  return v2;
}

id localObjectLoader_0(void *a1)
{
  v1 = a1;
  v2 = [v1 _sf_localBookmark];
  if (v2)
  {
    if (bookmarkCollectionFactory)
    {
      v3 = (*(bookmarkCollectionFactory + 16))();
    }

    else
    {
      v3 = 0;
    }

    if ([v3 bookmarkContainsLeafBookmark:v2])
    {
      v5 = v2;
    }

    else
    {
      v5 = 0;
    }

    v4 = v5;
  }

  else
  {
    v4 = [v1 _sf_localURL];
  }

  return v4;
}

id allowedClasses_0()
{
  v2[2] = *MEMORY[0x1E69E9840];
  v2[0] = objc_opt_class();
  v2[1] = objc_opt_class();
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:2];

  return v0;
}

void objectLoader_0(void *a1, void *a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *MEMORY[0x1E696F0C8];
  v5 = a1;
  if ([v5 hasItemConformingToTypeIdentifier:v4])
  {
    v18[0] = objc_opt_class();
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __objectLoader_block_invoke_0;
    v16[3] = &unk_1E721B680;
    v7 = &v17;
    v17 = v3;
    v8 = v3;
    v9 = v16;
  }

  else
  {
    v6 = allowedClasses_0();
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __objectLoader_block_invoke_2;
    v14 = &unk_1E721B680;
    v7 = &v15;
    v15 = v3;
    v10 = v3;
    v9 = &v11;
  }

  [v5 safari_loadObjectOfClasses:v6 completionHandler:{v9, v11, v12, v13, v14}];
}

uint64_t __flattenedNavigationIntents_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 type] == 11 || objc_msgSend(v2, "policy"))
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isChildIntent] ^ 1;
  }

  return v3;
}

void sub_18B8CB9C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

double pinFrame(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  MinX = CGRectGetMinX(*&a1);
  v20.origin.x = a5;
  v20.origin.y = a6;
  v20.size.width = a7;
  v20.size.height = a8;
  v17 = fmax(MinX, CGRectGetMinX(v20));
  v21.origin.x = a5;
  v21.origin.y = a6;
  v21.size.width = a7;
  v21.size.height = a8;
  MaxX = CGRectGetMaxX(v21);
  v22.origin.x = a1;
  v22.origin.y = a2;
  v22.size.width = a3;
  v22.size.height = a4;
  return fmin(v17, MaxX - CGRectGetWidth(v22));
}

void sub_18B8CF3BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_18B8D01A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18B8D076C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18B8D0A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_18B8D0C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18B8D1234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __shouldSquishActiveItem_block_invoke()
{
  v0 = [MEMORY[0x1E695E000] safari_browserDefaults];
  shouldSquishActiveItem_shouldSquishActiveItem = [v0 safari_BOOLForKey:@"DebugUnifiedBarSquishActiveTab" defaultValue:1];
}

void sub_18B8D3BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  objc_destroyWeak((v15 + 48));

  objc_destroyWeak((v16 - 40));
  _Unwind_Resume(a1);
}

void sub_18B8D3E20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_18B8D4A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, void *a18)
{
  v24 = v23;

  _Unwind_Resume(a1);
}

void sub_18B8D639C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v16 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B8D6588(_Unwind_Exception *a1)
{
  v3 = v1;

  _Unwind_Resume(a1);
}

void sub_18B8D71F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *_SFStringForTintStyle(unint64_t a1)
{
  if (a1 > 5)
  {
    return @"unknown";
  }

  else
  {
    return off_1E721D248[a1];
  }
}

uint64_t _SFDarkTintStyleForStyle(unint64_t a1)
{
  if (a1 > 5)
  {
    return 4;
  }

  else
  {
    return qword_18BC3DED0[a1];
  }
}

unint64_t _SFLightTintStyleForStyle(unint64_t result)
{
  if (result <= 5 && ((0x35u >> result) & 1) != 0)
  {
    return qword_18BC3DF00[result];
  }

  return result;
}

void sub_18B8D9974(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void SFCapsuleTopBarPaddingForTopLayoutStyleWithStatusBar()
{
  if (SFCapsuleTopBarPaddingForTopLayoutStyleWithStatusBar_onceToken != -1)
  {
    SFCapsuleTopBarPaddingForTopLayoutStyleWithStatusBar_cold_1();
  }
}

void __SFCapsuleTopBarPaddingForTopLayoutStyleWithStatusBar_block_invoke()
{
  v0 = 10.0;
  if (_SFDeviceHasHomeButton())
  {
    v0 = _SFRoundFloatToPixels(10.5);
  }

  SFCapsuleTopBarPaddingForTopLayoutStyleWithStatusBar_result_0 = 0x4010000000000000;
  SFCapsuleTopBarPaddingForTopLayoutStyleWithStatusBar_result_1 = 0x4022000000000000;
  SFCapsuleTopBarPaddingForTopLayoutStyleWithStatusBar_result_2 = *&v0;
  SFCapsuleTopBarPaddingForTopLayoutStyleWithStatusBar_result_3 = 0x4022000000000000;
  SFCapsuleTopBarPaddingForTopLayoutStyleWithStatusBar_noStatusBarInsets_0 = 0x401C000000000000;
  SFCapsuleTopBarPaddingForTopLayoutStyleWithStatusBar_noStatusBarInsets_1 = 0x4022000000000000;
  SFCapsuleTopBarPaddingForTopLayoutStyleWithStatusBar_noStatusBarInsets_2 = 0x401C000000000000;
  SFCapsuleTopBarPaddingForTopLayoutStyleWithStatusBar_noStatusBarInsets_3 = 0x4022000000000000;
}

double SFCapsuleBottomBarPaddingForTopLayoutStyle()
{
  if (SFCapsuleBottomBarPaddingForTopLayoutStyle_onceToken != -1)
  {
    SFCapsuleBottomBarPaddingForTopLayoutStyle_cold_1();
  }

  return *&SFCapsuleBottomBarPaddingForTopLayoutStyle_result_0;
}

void __SFCapsuleBottomBarPaddingForTopLayoutStyle_block_invoke()
{
  HasHomeButton = _SFDeviceHasHomeButton();
  v1 = 5.49;
  if (HasHomeButton)
  {
    v1 = 0.5;
  }

  SFCapsuleBottomBarPaddingForTopLayoutStyle_result_0 = _SFRoundFloatToPixels(v1);
  SFCapsuleBottomBarPaddingForTopLayoutStyle_result_2 = 0x4008000000000000;
}

double SFCapsuleSideMarginForViewWithBoundsSafeAreaInsets(double a1, double a2, double a3, double a4)
{
  Width = CGRectGetWidth(*&a1);
  if (Width > 427.0)
  {
    return 36.0;
  }

  v5 = 28.0;
  if (Width <= 389.0)
  {
    v5 = 8.0;
    if (Width >= 321.0)
    {
      return 22.0;
    }
  }

  return v5;
}

id SFCapsuleCollectionViewMaximumContentSizeCategoryForMinibar(void *a1)
{
  v1 = [a1 window];
  v2 = v1;
  if (v1 && ([v1 bounds], CGRectGetWidth(v7) <= 320.0))
  {
    v3 = MEMORY[0x1E69DDC70];
  }

  else
  {
    v3 = MEMORY[0x1E69DDC50];
  }

  v4 = *v3;
  v5 = *v3;

  return v4;
}

id makeLabel()
{
  v0 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v0 setAdjustsFontForContentSizeCategory:1];
  v1 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD00]];
  [v0 setFont:v1];

  [v0 setAdjustsFontForContentSizeCategory:1];
  v2 = [MEMORY[0x1E69DC888] tintColor];
  [v0 setTextColor:v2];

  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v0;
}

void sub_18B8DCD94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSTBlockingViewControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!ScreenTimeUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __ScreenTimeUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E721D318;
    v6 = 0;
    ScreenTimeUILibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (ScreenTimeUILibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("STBlockingViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSTBlockingViewControllerClass_block_invoke_cold_1();
  }

  getSTBlockingViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ScreenTimeUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ScreenTimeUILibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t WBS_LOG_CHANNEL_PREFIXBanners()
{
  if (WBS_LOG_CHANNEL_PREFIXBanners_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXBanners_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXBanners_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXBookmarkSync()
{
  if (WBS_LOG_CHANNEL_PREFIXBookmarkSync_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXBookmarkSync_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXBookmarkSync_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXDownloads()
{
  if (WBS_LOG_CHANNEL_PREFIXDownloads_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXDownloads_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXDownloads_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXItemProvider()
{
  if (WBS_LOG_CHANNEL_PREFIXItemProvider_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXItemProvider_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXItemProvider_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXMediaCapture()
{
  if (WBS_LOG_CHANNEL_PREFIXMediaCapture_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXMediaCapture_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXMediaCapture_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXOther()
{
  if (WBS_LOG_CHANNEL_PREFIXOther_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXOther_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXOther_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXPencilInput()
{
  if (WBS_LOG_CHANNEL_PREFIXPencilInput_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXPencilInput_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXPencilInput_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXSiteMetadata()
{
  if (WBS_LOG_CHANNEL_PREFIXSiteMetadata_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXSiteMetadata_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXSiteMetadata_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXStartPage()
{
  if (WBS_LOG_CHANNEL_PREFIXStartPage_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXStartPage_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXStartPage_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXStatePersistence()
{
  if (WBS_LOG_CHANNEL_PREFIXStatePersistence_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXStatePersistence_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXStatePersistence_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXTabBar()
{
  if (WBS_LOG_CHANNEL_PREFIXTabBar_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXTabBar_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXTabBar_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXTabDialogs()
{
  if (WBS_LOG_CHANNEL_PREFIXTabDialogs_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXTabDialogs_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXTabDialogs_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXTabGroup()
{
  if (WBS_LOG_CHANNEL_PREFIXTabGroup_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXTabGroup_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXTabGroup_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXUserInterface()
{
  if (WBS_LOG_CHANNEL_PREFIXUserInterface_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXUserInterface_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXUserInterface_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXViewService()
{
  if (WBS_LOG_CHANNEL_PREFIXViewService_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXViewService_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXViewService_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXWebExtensions()
{
  if (WBS_LOG_CHANNEL_PREFIXWebExtensions_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXWebExtensions_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXWebExtensions_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXProfiles()
{
  if (WBS_LOG_CHANNEL_PREFIXProfiles_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXProfiles_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXProfiles_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXExport()
{
  if (WBS_LOG_CHANNEL_PREFIXExport_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXExport_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXExport_log;
}

id badgeTintColor()
{
  v0 = badgeTintColor_badgeColor;
  if (!badgeTintColor_badgeColor)
  {
    v1 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:&__block_literal_global_29];
    v2 = badgeTintColor_badgeColor;
    badgeTintColor_badgeColor = v1;

    v0 = badgeTintColor_badgeColor;
  }

  return v0;
}

id __badgeTintColor_block_invoke(uint64_t a1, void *a2)
{
  if ([a2 safari_barTintStyle] == 2)
  {
    [MEMORY[0x1E69DC888] tintColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemPurpleColor];
  }
  v2 = ;

  return v2;
}

void OUTLINED_FUNCTION_8(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + a2);
  *(a4 + a2) = a1;
}

uint64_t OUTLINED_FUNCTION_9@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + a1);

  return [v4 setAlpha:v3];
}

uint64_t OUTLINED_FUNCTION_12(void *a1, const char *a2)
{

  return [a1 sizeThatFits:{v3, v4}];
}

Class __getCPSClipMetadataRequestClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!ClipServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __ClipServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E721D3F8;
    v6 = 0;
    ClipServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (ClipServicesLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("CPSClipMetadataRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCPSClipMetadataRequestClass_block_invoke_cold_1();
  }

  getCPSClipMetadataRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ClipServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ClipServicesLibraryCore_frameworkLibrary = result;
  return result;
}

id SFMorePageMenuSections()
{
  if (SFMorePageMenuSections_onceToken != -1)
  {
    SFMorePageMenuSections_cold_1();
  }

  v1 = SFMorePageMenuSections_sections;

  return v1;
}

void __SFMorePageMenuSections_block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v4[0] = @"PageMenuSectionWebsiteActions";
  v4[1] = @"PageMenuSectionCurrentTab";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];
  v1 = SFMorePageMenuSections_sections;
  SFMorePageMenuSections_sections = v0;

  if ([MEMORY[0x1E69C8880] isInternalInstall])
  {
    v2 = [SFMorePageMenuSections_sections arrayByAddingObject:@"PageMenuSectionInternalDebug"];
    v3 = SFMorePageMenuSections_sections;
    SFMorePageMenuSections_sections = v2;
  }
}

id SFUnconfigurableMenuAcitons()
{
  if (SFUnconfigurableMenuAcitons_onceToken != -1)
  {
    SFUnconfigurableMenuAcitons_cold_1();
  }

  v1 = SFUnconfigurableMenuAcitons_actions;

  return v1;
}

void __SFUnconfigurableMenuAcitons_block_invoke()
{
  v2[7] = *MEMORY[0x1E69E9840];
  v2[0] = @"PageMenuActionToggleContentBlockers";
  v2[1] = @"PageMenuActionToggleAdvancedPrivacyProtections";
  v2[2] = @"PageMenuActionToggleMediaState";
  v2[3] = @"PageMenuActionToggleOtherTabsAudio";
  v2[4] = @"PageMenuActionToggleAllAnimations";
  v2[5] = @"PageMenuActionReportWebCompatibilityIssueAfterReload";
  v2[6] = @"PageMenuActionListenToPage";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:7];
  v1 = SFUnconfigurableMenuAcitons_actions;
  SFUnconfigurableMenuAcitons_actions = v0;
}

id SFSectionToConfigurableMenuActions()
{
  if (SFSectionToConfigurableMenuActions_onceToken != -1)
  {
    SFSectionToConfigurableMenuActions_cold_1();
  }

  v1 = SFSectionToConfigurableMenuActions_sectionToActions;

  return v1;
}

void __SFSectionToConfigurableMenuActions_block_invoke()
{
  v15[2] = *MEMORY[0x1E69E9840];
  v14[0] = @"PageMenuSectionCurrentTab";
  v13[0] = @"PageMenuActionAddToFavorites";
  v13[1] = @"PageMenuActionAddBookmark";
  v13[2] = @"PageMenuActionAddToQuickNote";
  v13[3] = @"PageMenuActionAddToReadingList";
  v13[4] = @"PageMenuActionMoveToTabGroup";
  v13[5] = @"PageMenuActionTogglePinningTab";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:6];
  v14[1] = @"PageMenuSectionWebsiteActions";
  v15[0] = v0;
  v12[0] = @"PageMenuActionScribble";
  v12[1] = @"PageMenuActionPrivacyReport";
  v12[2] = @"PageMenuActionHideToolbar";
  v12[3] = @"PageMenuActionRequestDesktopOrMobileWebsite";
  v12[4] = @"PageMenuActionTogglePrivateRelay";
  v12[5] = @"PageMenuActionPrintCurrentTab";
  v12[6] = @"PageMenuActionReportWebCompatibilityIssue";
  v12[7] = @"PageMenuActionReportAutoFillIssue";
  v12[8] = @"PageMenuActionViewSecurityInformation";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:9];
  v15[1] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v3 = SFSectionToConfigurableMenuActions_sectionToActions;
  SFSectionToConfigurableMenuActions_sectionToActions = v2;

  if ([MEMORY[0x1E69C8880] shouldShowInternalUI])
  {
    v4 = SFSectionToConfigurableMenuActions_sectionToActions;
    v9 = @"PageMenuActionEditTabBar";
    v10 = @"PageMenuSectionInternalDebug";
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];
    v11 = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v7 = [v4 safari_dictionaryByMergingWithDictionary:v6];
    v8 = SFSectionToConfigurableMenuActions_sectionToActions;
    SFSectionToConfigurableMenuActions_sectionToActions = v7;
  }
}

id SFConfigurableMenuActions()
{
  if (SFConfigurableMenuActions_onceToken != -1)
  {
    SFConfigurableMenuActions_cold_1();
  }

  v1 = SFConfigurableMenuActions_actions;

  return v1;
}

void __SFConfigurableMenuActions_block_invoke()
{
  v17 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DEC8] array];
  v1 = SFConfigurableMenuActions_actions;
  SFConfigurableMenuActions_actions = v0;

  v2 = SFSectionToConfigurableMenuActions();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = SFMorePageMenuSections();
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = SFConfigurableMenuActions_actions;
        v9 = [v2 objectForKeyedSubscript:{*(*(&v12 + 1) + 8 * v7), v12}];
        v10 = [v8 arrayByAddingObjectsFromArray:v9];
        v11 = SFConfigurableMenuActions_actions;
        SFConfigurableMenuActions_actions = v10;

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

uint64_t SFIsMenuActionConfigurable(void *a1)
{
  v1 = SFIsMenuActionConfigurable_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    SFIsMenuActionConfigurable_cold_1();
  }

  v3 = [SFIsMenuActionConfigurable_configurableMenuActionsSet containsObject:v2];

  return v3;
}

void __SFIsMenuActionConfigurable_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v3 = SFConfigurableMenuActions();
  v1 = [v0 initWithArray:v3];
  v2 = SFIsMenuActionConfigurable_configurableMenuActionsSet;
  SFIsMenuActionConfigurable_configurableMenuActionsSet = v1;
}

void sub_18B8E2C88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v19 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _settingsBundleUpdatedWallpaper(__CFNotificationCenter *a1, void *a2, const __CFString *a3, const void *a4, const __CFDictionary *a5)
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 postNotificationName:*MEMORY[0x1E69C9950] object:0];
}

void sub_18B8E2E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = SFStartPageViewController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_18B8E6218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30)
{
  objc_destroyWeak(v32);

  objc_destroyWeak(v31);
  objc_destroyWeak((v34 - 88));

  _Unwind_Resume(a1);
}

uint64_t SFDataOwnerForWebViewInteraction(int a1, void *a2)
{
  v3 = [a2 URL];
  v4 = [v3 safari_URLByNormalizingBlobURL];

  v5 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v6 = [v5 isURLManaged:v4];

  v7 = 2;
  if (!v6)
  {
    v7 = 3;
  }

  v8 = 1;
  if (v6)
  {
    v8 = 2;
  }

  if (a1)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  return v9;
}

__CFString *NSStringFromNavigationIntentType(uint64_t a1)
{
  if ((a1 - 1) > 0xA)
  {
    return @"Bookmark";
  }

  else
  {
    return off_1E721D6F0[a1 - 1];
  }
}

__CFString *NSStringFromNavigationIntentPolicy(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"Current Tab";
  }

  else
  {
    return off_1E721D748[a1 - 1];
  }
}

id titleTextStyleForRole(id a1)
{
  if (a1 <= 2)
  {
    a1 = **(&unk_1E721DA98 + a1);
  }

  return a1;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18B8EB62C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_18B8EC630(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_18B8EF138(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_18B8F58E8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v3 - 192), 8);
  objc_destroyWeak((v2 + 40));
  _Block_object_dispose((v3 - 144), 8);
  objc_destroyWeak((v1 + 40));
  _Unwind_Resume(a1);
}

id makeBasicDialogResponse(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x1E695DF90];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1];
  v9 = [v7 dictionaryWithObject:v8 forKey:@"selectedActionIndex"];

  if (v5)
  {
    [v9 setObject:v5 forKeyedSubscript:@"text"];
  }

  if (v6)
  {
    [v9 setObject:v6 forKeyedSubscript:@"password"];
  }

  return v9;
}

void sub_18B8F67C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id processIdentifierString()
{
  v0 = MEMORY[0x1E696AEC0];
  v1 = [MEMORY[0x1E696AE30] processInfo];
  v2 = [v0 stringWithFormat:@"%i", objc_msgSend(v1, "processIdentifier")];

  return v2;
}

void sub_18B8FD788(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak(&STACK[0x208]);
  _Unwind_Resume(a1);
}

id _SFSFAppContainerURL()
{
  v0 = [MEMORY[0x1E69635F8] bundleRecordWithBundleIdentifier:@"com.apple.sfapp" allowPlaceholder:0 error:0];
  v1 = [v0 dataContainerURL];

  return v1;
}

id _SFSafariTemporaryDirectoryPath()
{
  v0 = _SFSafariContainerPath();
  v1 = [v0 stringByAppendingPathComponent:@"tmp"];

  return v1;
}

uint64_t _SFSafariPreferencesDomain()
{
  if (_SFSafariPreferencesDomain::onceToken != -1)
  {
    _SFSafariPreferencesDomain_cold_1();
  }

  return _SFSafariPreferencesDomain::domain;
}

id _SFSafariSavedStateDirectoryPath()
{
  v0 = _SFSafariContainerPath();
  v1 = [v0 stringByAppendingPathComponent:@"Library/Safari/SuspendedState"];

  return v1;
}

id _SFContentBlockerStateURL()
{
  {
    v2 = _SFSafariGroupContainerURL();
    _SFContentBlockerStateURL::contentBlockerStateURL = [v2 URLByAppendingPathComponent:@"Library/Safari/ContentBlockers.plist" isDirectory:0];
  }

  v0 = _SFContentBlockerStateURL::contentBlockerStateURL;

  return v0;
}

id _SFWebExtensionContentBlockerStoreURL()
{
  {
    v2 = _SFSafariContainerURL();
    _SFWebExtensionContentBlockerStoreURL::contentBlockerStoreURL = [v2 URLByAppendingPathComponent:@"Library/WebKit/WebExtensions" isDirectory:1];
  }

  v0 = _SFWebExtensionContentBlockerStoreURL::contentBlockerStoreURL;

  return v0;
}

id _SFWebExtensionContentBlockerStoreURLForProfileServerID(void *a1)
{
  v1 = a1;
  if ([MEMORY[0x1E69C98E0] isProfileServerIDForDefaultProfile:v1])
  {
    v2 = _SFWebExtensionContentBlockerStoreURL();
  }

  else
  {
    v3 = _SFWebExtensionContentBlockerStoreURL();
    v2 = [v3 URLByAppendingPathComponent:v1 isDirectory:1];
  }

  return v2;
}

id _SFSafariTestContentDirectoryPath()
{
  v0 = _SFSafariContainerPath();
  v1 = [v0 stringByAppendingPathComponent:@"Library/Safari/TestContent/"];

  return v1;
}

id _SFSafariCloudTabsMetadataPath()
{
  v0 = _SFSafariNonContaineredSettingsDirectoryPath();
  v1 = [v0 stringByAppendingPathComponent:@"SyncedTabsMetadata.plist"];
  v2 = [v1 stringByResolvingSymlinksInPath];

  return v2;
}

id _SFSafeBrowsingPreferencesPlistPath()
{
  if (_SFSafeBrowsingPreferencesPlistPath::onceToken != -1)
  {
    _SFSafeBrowsingPreferencesPlistPath_cold_1();
  }

  v1 = _SFSafeBrowsingPreferencesPlistPath::safeBrowsingPreferencesPlistPath;

  return v1;
}

void sub_18B8FF674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  _Block_object_dispose(&a26, 8);

  _Block_object_dispose((v40 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_18B8FFB70(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_18B8FFD30(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_18B8FFE80(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_18B9007B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void defaultLayoutMargins()
{
  if (([MEMORY[0x1E69C8880] isSolariumEnabled] & 1) == 0)
  {
    if (_SFDeviceIsPad())
    {
      +[SFUnifiedBarMetrics defaultItemHeight];
      _SFRoundFloatToPixels((50.0 - v0) * 0.5);
    }
  }
}

CGAffineTransform *makeSquishTransformWithMinimumScale@<X0>(uint64_t a1@<X8>, double a2@<D4>, double a3@<D5>, double a4@<D6>, double a5@<D7>, double a6)
{
  if (a4 == 1.0)
  {
    v7 = MEMORY[0x1E695EFD0];
    v8 = *(MEMORY[0x1E695EFD0] + 16);
    *a1 = *MEMORY[0x1E695EFD0];
    *(a1 + 16) = v8;
    v9 = *(v7 + 32);
  }

  else
  {
    v13 = _SFInterpolate(a6, 1.0, a4);
    UIRectGetCenter();
    v15 = v14;
    v17 = _SFInterpolate(a2 - v16, 0.0, v13);
    v18 = _SFInterpolate(a3 - v15, 0.0, a4);
    v19 = _SFInterpolate(a5, 0.0, a4);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    CGAffineTransformMakeTranslation(a1, v17, v18 - v19);
    v20 = *(a1 + 16);
    *&v24.a = *a1;
    *&v24.c = v20;
    *&v24.tx = *(a1 + 32);
    result = CGAffineTransformScale(&v25, &v24, v13, v13);
    v22 = *&v25.c;
    *a1 = *&v25.a;
    *(a1 + 16) = v22;
    v9 = *&v25.tx;
  }

  *(a1 + 32) = v9;
  return result;
}

void sub_18B9029A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18B903214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18B903934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id borderColorForTraitCollection(void *a1)
{
  if ([a1 userInterfaceStyle] == 2)
  {
    v1 = 1.0;
    v2 = 0.25;
  }

  else
  {
    v2 = 0.42;
    v1 = 0.0;
  }

  v3 = [MEMORY[0x1E69DC888] colorWithWhite:v1 alpha:v2];

  return v3;
}

SFDialogTextField *newTextField()
{
  v0 = objc_alloc_init(SFDialogTextField);
  LODWORD(v1) = 1148846080;
  [(SFDialogTextField *)v0 setContentCompressionResistancePriority:1 forAxis:v1];
  LODWORD(v2) = 1148846080;
  [(SFDialogTextField *)v0 setContentHuggingPriority:1 forAxis:v2];
  [(SFDialogTextField *)v0 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v0;
}

void sub_18B908160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t objectIsKindOfClass(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  if (v3)
  {
    v4 = v3;
    do
    {
      v5 = NSStringFromClass(v4);
      v6 = [v5 isEqualToString:v2];

      if (v6)
      {
        break;
      }

      v4 = [(objc_class *)v4 superclass];
    }

    while (v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id SFCreditCardIconForType(uint64_t a1)
{
  if ((a1 - 1) > 7)
  {
    v3 = @"CreditCardGeneric";
  }

  else
  {
    v3 = off_1E721E360[a1 - 1];
  }

  v4 = [MEMORY[0x1E69DCAB8] sf_imageNamed:{v3, v1}];

  return v4;
}

id SFLargeCreditCardIconForType(uint64_t a1)
{
  if ((a1 - 1) > 7)
  {
    v3 = @"CreditCardGenericLarge";
  }

  else
  {
    v3 = off_1E721E3A0[a1 - 1];
  }

  v4 = [MEMORY[0x1E69DCAB8] sf_imageNamed:{v3, v1}];

  return v4;
}

id _SFMacSafariUserAgentString()
{
  v0 = &OBJC_IVAR___SFStepperContainer_stepper;
  v1 = _SFMacSafariUserAgentString::desktopUserAgent;
  if (!_SFMacSafariUserAgentString::desktopUserAgent)
  {
    {
      _SFMacSafariUserAgentString::bundle = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v0 = &OBJC_IVAR___SFStepperContainer_stepper;
    }

    v2 = &OBJC_IVAR___SFStepperContainer_stepper;
    {
      v2 = &OBJC_IVAR___SFStepperContainer_stepper;
      if (v6)
      {
        _SFMacSafariUserAgentString::bundleShortVersion = [_SFMacSafariUserAgentString::bundle objectForInfoDictionaryKey:*MEMORY[0x1E695E148]];
        v2 = &OBJC_IVAR___SFStepperContainer_stepper;
      }
    }

    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Mozilla/5.0 (Macintosh Intel Mac OS X %@) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/%@ Safari/605.1.15", @"10_15_6", v2[199]];;
    v4 = v0[196];
    v0[196] = v3;

    v1 = v0[196];
  }

  return v1;
}

id _SFIPhoneSafariUserAgentString()
{
  v0 = _SFIPhoneSafariUserAgentString::iPhoneUserAgent;
  if (!_SFIPhoneSafariUserAgentString::iPhoneUserAgent)
  {
    v1 = MEMORY[0x1E696AEC0];
    v2 = _SFApplicationNameForUserAgent();
    v3 = [v1 stringWithFormat:@"Mozilla/5.0 (iPhone CPU iPhone OS %@ like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) %@", @"26_1", v2];;
    v4 = _SFIPhoneSafariUserAgentString::iPhoneUserAgent;
    _SFIPhoneSafariUserAgentString::iPhoneUserAgent = v3;

    v0 = _SFIPhoneSafariUserAgentString::iPhoneUserAgent;
  }

  return v0;
}

void sub_18B910ED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B912350(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id location)
{
  objc_destroyWeak(&a39);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B913AB4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

id SFValueFromKeyValueString(void *a1)
{
  v1 = a1;
  v2 = [v1 rangeOfString:@"="];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL || (v3 = v2 + 1, v4 = [v1 length], v4 == v3))
  {
    v5 = 0;
  }

  else
  {
    v6 = [v1 substringWithRange:{v3, v4 - v3}];
    v7 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v5 = [v6 stringByTrimmingCharactersInSet:v7];
  }

  return v5;
}

void SFCreateAppSuggestionBannerFromMetaTagContent(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__7;
  v29 = __Block_byref_object_dispose__7;
  v30 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __SFCreateAppSuggestionBannerFromMetaTagContent_block_invoke;
  aBlock[3] = &unk_1E721E608;
  v11 = v10;
  v23 = v11;
  v24 = &v25;
  v12 = _Block_copy(aBlock);
  v13 = v26[5];
  v26[5] = v12;

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __SFCreateAppSuggestionBannerFromMetaTagContent_block_invoke_2;
  v18[3] = &unk_1E721E740;
  v21 = &v25;
  v14 = v8;
  v19 = v14;
  v15 = v9;
  v20 = v15;
  v16 = _Block_copy(v18);
  v17 = v16;
  if (v7)
  {
    (*(v16 + 2))(v16, v7);
  }

  _Block_object_dispose(&v25, 8);
}

void sub_18B91A4D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__7(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void __SFCreateAppSuggestionBannerFromMetaTagContent_block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void __SFCreateAppSuggestionBannerFromMetaTagContent_block_invoke_2(uint64_t a1, void *a2)
{
  v57 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __SFCreateAppSuggestionBannerFromMetaTagContent_block_invoke_3;
    block[3] = &unk_1E721C5D0;
    block[4] = *(a1 + 48);
    dispatch_async(MEMORY[0x1E69E96A0], block);
    goto LABEL_48;
  }

  v34 = a1;
  v35 = v3;
  [v3 componentsSeparatedByString:{@", "}];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v54 = 0u;
  v5 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (!v5)
  {
    v37 = 0;
    v38 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v36 = 0;
    v10 = 0;
    goto LABEL_40;
  }

  v6 = v5;
  v37 = 0;
  v38 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v36 = 0;
  v10 = 0;
  v11 = *v52;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v52 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v51 + 1) + 8 * i);
      v14 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
      v15 = [v13 stringByTrimmingCharactersInSet:v14];

      if (!v10 && [v15 rangeOfString:@"app-id" options:9] != 0x7FFFFFFFFFFFFFFFLL)
      {
        v16 = MEMORY[0x1E696AD98];
        v17 = SFValueFromKeyValueString(v15);
        v10 = [v16 numberWithUnsignedInteger:{objc_msgSend(v17, "longLongValue")}];
LABEL_34:

        goto LABEL_35;
      }

      if (!v9 && [v15 rangeOfString:@"app-clip-registered-link" options:9] != 0x7FFFFFFFFFFFFFFFLL)
      {
        v18 = MEMORY[0x1E696AD98];
        v17 = SFValueFromKeyValueString(v15);
        v9 = [v18 numberWithBool:{objc_msgSend(v17, "BOOLValue")}];
        goto LABEL_34;
      }

      if (!v8 && [v15 rangeOfString:@"app-clip-bundle-id" options:9] != 0x7FFFFFFFFFFFFFFFLL)
      {
        v8 = SFValueFromKeyValueString(v15);
        goto LABEL_35;
      }

      if (!v7 && [v15 rangeOfString:@"app-clip-action-title" options:9] != 0x7FFFFFFFFFFFFFFFLL)
      {
        v7 = SFValueFromKeyValueString(v15);
        goto LABEL_35;
      }

      if (!v38 && [v15 rangeOfString:@"app-clip-display" options:9] != 0x7FFFFFFFFFFFFFFFLL)
      {
        v17 = SFValueFromKeyValueString(v15);
        if ([v17 caseInsensitiveCompare:@"card"])
        {
          v19 = [v17 caseInsensitiveCompare:@"banner"];
          v20 = MEMORY[0x1E695E110];
          if (v19)
          {
            v20 = 0;
          }
        }

        else
        {
          v20 = MEMORY[0x1E695E118];
        }

        v38 = v20;
        goto LABEL_34;
      }

      if (v37 || [v15 rangeOfString:@"affiliate-data" options:9] == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (!v36)
        {
          if ([v15 rangeOfString:@"app-argument" options:9] == 0x7FFFFFFFFFFFFFFFLL)
          {
            v36 = 0;
          }

          else
          {
            v36 = SFValueFromKeyValueString(v15);
          }
        }
      }

      else
      {
        v37 = SFValueFromKeyValueString(v15);
      }

LABEL_35:
    }

    v6 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
  }

  while (v6);
LABEL_40:
  v21 = actionTitleFromString_onceToken;
  v22 = v7;
  if (v21 != -1)
  {
    __SFCreateAppSuggestionBannerFromMetaTagContent_block_invoke_2_cold_1();
  }

  v23 = actionTitleFromString_actionMapping;
  v24 = [v22 lowercaseString];

  v25 = [v23 objectForKeyedSubscript:v24];
  v26 = v25;
  v27 = actionTitleFromString_defaultTitle;
  if (v25)
  {
    v27 = v25;
  }

  v28 = v27;

  if (v10 | v8)
  {
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __SFCreateAppSuggestionBannerFromMetaTagContent_block_invoke_52;
    v40[3] = &unk_1E721E718;
    v41 = v10;
    v29 = *(v34 + 32);
    v30 = *(v34 + 48);
    v42 = v29;
    v49 = v30;
    v31 = v37;
    v43 = v37;
    v32 = v36;
    v44 = v36;
    v45 = v8;
    v46 = v28;
    v33 = v38;
    v47 = v38;
    v48 = *(v34 + 40);
    dispatch_async(MEMORY[0x1E69E96A0], v40);

    v4 = v35;
  }

  else
  {
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __SFCreateAppSuggestionBannerFromMetaTagContent_block_invoke_4;
    v50[3] = &unk_1E721C5D0;
    v50[4] = *(v34 + 48);
    dispatch_async(MEMORY[0x1E69E96A0], v50);
    v4 = v35;
    v32 = v36;
    v31 = v37;
    v33 = v38;
  }

LABEL_48:
}

uint64_t __SFCreateAppSuggestionBannerFromMetaTagContent_block_invoke_4(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXBanners();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __SFCreateAppSuggestionBannerFromMetaTagContent_block_invoke_4_cold_1(v2);
  }

  return (*(*(*(*(a1 + 32) + 8) + 40) + 16))();
}

void __SFCreateAppSuggestionBannerFromMetaTagContent_block_invoke_52(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __SFCreateAppSuggestionBannerFromMetaTagContent_block_invoke_2_53;
  aBlock[3] = &unk_1E721E680;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v25 = *(a1 + 96);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  *&v7 = v2;
  *(&v7 + 1) = v3;
  v23 = v7;
  v24 = v6;
  v8 = _Block_copy(aBlock);
  if (!*(a1 + 64))
  {
    goto LABEL_8;
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x2050000000;
  v9 = getCPSClipURLClass_softClass;
  v30 = getCPSClipURLClass_softClass;
  if (!getCPSClipURLClass_softClass)
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __getCPSClipURLClass_block_invoke;
    v26[3] = &unk_1E721C5D0;
    v26[4] = &v27;
    __getCPSClipURLClass_block_invoke(v26);
    v9 = v28[3];
  }

  v10 = v9;
  _Block_object_dispose(&v27, 8);
  if ([v9 isSupported] && (v11 = *(a1 + 40)) != 0 && (objc_msgSend(v11, "safari_isHTTPFamilyURL") & 1) != 0)
  {
    v12 = [[SFClipLink alloc] initWithURL:*(a1 + 40) bundleIdentifier:*(a1 + 64) actionTitle:*(a1 + 72)];
    -[SFClipLink setSiteRequestsShowCard:](v12, "setSiteRequestsShowCard:", [*(a1 + 80) BOOLValue]);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __SFCreateAppSuggestionBannerFromMetaTagContent_block_invoke_61;
    v19[3] = &unk_1E721E6C8;
    v20 = v12;
    v21 = *(a1 + 88);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __SFCreateAppSuggestionBannerFromMetaTagContent_block_invoke_65;
    v16[3] = &unk_1E721E6F0;
    v13 = v8;
    v14 = *(a1 + 96);
    v17 = v13;
    v18 = v14;
    v15 = v12;
    [SFClipLinkBanner getClipLinkBannerForClipLink:v15 openActionHandler:v19 completionHandler:v16];
  }

  else
  {
LABEL_8:
    v8[2](v8);
  }
}

void __SFCreateAppSuggestionBannerFromMetaTagContent_block_invoke_2_53(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v3 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __SFCreateAppSuggestionBannerFromMetaTagContent_block_invoke_3_54;
    block[3] = &unk_1E721E680;
    v10 = v1;
    v4 = *(a1 + 40);
    v5 = *(a1 + 64);
    v6 = *(a1 + 48);
    *&v7 = *(a1 + 56);
    *(&v7 + 1) = v5;
    *&v8 = v4;
    *(&v8 + 1) = v6;
    v11 = v8;
    v12 = v7;
    dispatch_async(v3, block);
  }
}

void __SFCreateAppSuggestionBannerFromMetaTagContent_block_invoke_3_54(uint64_t a1)
{
  v2 = +[SFStoreBannerTracker sharedTracker];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) safari_userVisibleHost];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __SFCreateAppSuggestionBannerFromMetaTagContent_block_invoke_4_56;
  v11[3] = &unk_1E721E658;
  v5 = *(a1 + 32);
  v14 = *(a1 + 64);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *&v10 = v5;
  *(&v10 + 1) = v6;
  v12 = v10;
  v13 = v9;
  [v2 isProductBannerBlocked:v3 forHost:v4 completion:v11];
}

void __SFCreateAppSuggestionBannerFromMetaTagContent_block_invoke_4_56(uint64_t a1, char a2)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __SFCreateAppSuggestionBannerFromMetaTagContent_block_invoke_5;
  v9[3] = &unk_1E721E630;
  v13 = a2;
  v3 = *(a1 + 32);
  v12 = *(a1 + 64);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v10 = v8;
  v11 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

void __SFCreateAppSuggestionBannerFromMetaTagContent_block_invoke_5(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(a1 + 72) == 1)
  {
    v2 = WBS_LOG_CHANNEL_PREFIXBanners();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      v4 = v2;
      v9 = 67174657;
      v10 = [v3 intValue];
      _os_log_impl(&dword_18B7AC000, v4, OS_LOG_TYPE_INFO, "Not showing banner for app '%{private}i' because of the user's preference", &v9, 8u);
    }

    (*(*(*(*(a1 + 64) + 8) + 40) + 16))();
  }

  else
  {
    v5 = [[SFStoreBanner alloc] initWithProductID:*(a1 + 32) mainDocumentURL:*(a1 + 40) affiliateData:*(a1 + 48) applicationLaunchArgument:*(a1 + 56)];
    v6 = WBS_LOG_CHANNEL_PREFIXBanners();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v8 = v6;
      v9 = 67174657;
      v10 = [v7 intValue];
      _os_log_impl(&dword_18B7AC000, v8, OS_LOG_TYPE_INFO, "Showing banner for app '%{private}i'", &v9, 8u);
    }

    (*(*(*(*(a1 + 64) + 8) + 40) + 16))();
  }
}

void __SFCreateAppSuggestionBannerFromMetaTagContent_block_invoke_61(uint64_t a1, void *a2)
{
  v3 = a2;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2050000000;
  v4 = getCPSClipRequestClass_softClass;
  v31 = getCPSClipRequestClass_softClass;
  if (!getCPSClipRequestClass_softClass)
  {
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __getCPSClipRequestClass_block_invoke;
    v27[3] = &unk_1E721C5D0;
    v27[4] = &v28;
    __getCPSClipRequestClass_block_invoke(v27);
    v4 = v29[3];
  }

  v5 = v4;
  _Block_object_dispose(&v28, 8);
  v6 = [v4 alloc];
  v7 = [*(a1 + 32) url];
  v8 = [*(a1 + 32) bundleIdentifier];
  v9 = [v6 initWithURL:v7 fallbackClipBundleID:v8];

  v10 = [v9 sessionProxy];
  v11 = [v10 configuration];

  if (*(a1 + 40))
  {
    [v11 setReferrerBundleID:?];
  }

  else
  {
    v12 = [MEMORY[0x1E69DC668] sharedApplication];
    v13 = [v12 _systemNavigationAction];
    v14 = [v13 info];
    v15 = [v14 objectForSetting:1];

    if (v15)
    {
      v16 = [v15 bundleId];
      v17 = v16;
      if (v16)
      {
        v18 = v16;
      }

      else
      {
        v20 = [v15 sceneIdentifier];
        v21 = [@"sceneID:" length];
        v22 = [MEMORY[0x1E696AFB0] UUID];
        v23 = [v22 UUIDString];
        v24 = [v23 length];

        v25 = v21 + v24 + 1;
        v26 = [v20 length];
        if (v26 <= v25)
        {
          v18 = 0;
        }

        else
        {
          v18 = [v20 substringWithRange:{v21, v26 - v25}];
        }
      }

      if ([v18 isEqualToString:@"com.apple.springboard.spotlight-placeholder"])
      {
        v19 = 0;
      }

      else
      {
        v19 = v18;
      }
    }

    else
    {
      v19 = 0;
    }

    [v11 setReferrerBundleID:v19];
  }

  [v9 requestClipWithCompletion:&__block_literal_global_45];
}

void sub_18B91B604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __SFCreateAppSuggestionBannerFromMetaTagContent_block_invoke_2_62(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXBanners();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = v4;
      v6 = [v3 safari_privacyPreservingDescription];
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&dword_18B7AC000, v5, OS_LOG_TYPE_INFO, "Failed to request clip with error %{public}@", &v7, 0xCu);
    }
  }
}

uint64_t __SFCreateAppSuggestionBannerFromMetaTagContent_block_invoke_65(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(*(*(*(a1 + 40) + 8) + 40) + 16);

    return v3();
  }

  else
  {
    v5 = WBS_LOG_CHANNEL_PREFIXBanners();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_18B7AC000, v5, OS_LOG_TYPE_DEFAULT, "Falling back to full app's smart app banner", v6, 2u);
    }

    return (*(*(a1 + 32) + 16))();
  }
}

void __actionTitleFromString_block_invoke()
{
  v7[3] = *MEMORY[0x1E69E9840];
  v0 = _WBSLocalizedString();
  v1 = actionTitleFromString_defaultTitle;
  actionTitleFromString_defaultTitle = v0;

  v7[0] = actionTitleFromString_defaultTitle;
  v6[0] = @"open";
  v6[1] = @"view";
  v2 = _WBSLocalizedString();
  v7[1] = v2;
  v6[2] = @"play";
  v3 = _WBSLocalizedString();
  v7[2] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:3];
  v5 = actionTitleFromString_actionMapping;
  actionTitleFromString_actionMapping = v4;
}

void __getCPSClipURLClass_block_invoke(uint64_t a1)
{
  ClipServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CPSClipURL");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCPSClipURLClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getCPSClipURLClass_block_invoke_cold_1();
    ClipServicesLibrary();
  }
}

void ClipServicesLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!ClipServicesLibraryCore_frameworkLibrary_0)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __ClipServicesLibraryCore_block_invoke_0;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E721E760;
    v3 = 0;
    ClipServicesLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!ClipServicesLibraryCore_frameworkLibrary_0)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __ClipServicesLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  ClipServicesLibraryCore_frameworkLibrary_0 = result;
  return result;
}

__CFString *__getCPSClipRequestClass_block_invoke(uint64_t a1)
{
  ClipServicesLibrary();
  result = objc_getClass("CPSClipRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCPSClipRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getCPSClipRequestClass_block_invoke_cold_1();
    return SFAccessibilityIdentifierForUnifiedTabBarItemAccessoryButtonType(v3);
  }

  return result;
}

__CFString *SFAccessibilityIdentifierForUnifiedTabBarItemAccessoryButtonType(uint64_t a1)
{
  if ((a1 - 1) > 0x10)
  {
    return @"CloseTabBarItemButton";
  }

  else
  {
    return off_1E721E7A0[a1 - 1];
  }
}

uint64_t SFUnifiedTabBarItemAccessoryButtonTypeEnumerateCases(uint64_t a1)
{
  for (i = 0; i != 17; ++i)
  {
    result = (*(a1 + 16))(a1, i);
  }

  return result;
}

void SFUserNotificationRunLoopSourceCallback(uint64_t a1, char a2)
{
  if (activeNotification && *(activeNotification + 8) == a1)
  {
    v8 = activeNotification;
    v3 = activeNotification;
    activeNotification = 0;

    v4 = [v8 completionBlock];
    v5 = v4;
    v6 = 1;
    if ((a2 & 3) != 0)
    {
      v6 = 2;
    }

    if ((a2 & 3) == 2)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }

    (*(v4 + 16))(v4, v7);
  }
}

void sub_18B9226C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18B92573C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t deleteOneWord(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v8 = 0;
  if (a2)
  {
    while (1)
    {
      v9 = [v5 characterAtIndex:v8];
      if (([v7 characterIsMember:v9] & 1) != 0 || v6 && !objc_msgSend(v6, "characterIsMember:", v9))
      {
        break;
      }

      if (a2 == ++v8)
      {
        v8 = a2;
        break;
      }
    }
  }

  if (v8 == [v5 length] || !objc_msgSend(v7, "characterIsMember:", objc_msgSend(v5, "characterAtIndex:", v8)))
  {
    v10 = 0;
  }

  else
  {
    v10 = v8 + 1;
    [v5 deleteCharactersInRange:{0, v10}];
  }

  return v10;
}

uint64_t __maximumTruncationIndexForTitle_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = a2;
  v7 = [v6 compare:v5 options:{objc_msgSend(v4, "tabBarTitleTruncationCompareOptions")}];

  return v7;
}

void __maximumTruncationIndexForTitle_block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v17 = a2;
  v6 = [v17 length];
  v7 = v17;
  if (v6 <= *(*(*(a1 + 40) + 8) + 24))
  {
    goto LABEL_12;
  }

  v8 = [*(a1 + 32) isEqualToString:v17];
  v7 = v17;
  if (v8)
  {
    goto LABEL_12;
  }

  v9 = 0;
  if (!v17)
  {
    goto LABEL_8;
  }

  v10 = *(a1 + 32);
  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = MEMORY[0x1E696AEC0];
  v12 = v10;
  v13 = v17;
  v14 = [v12 commonPrefixWithString:v13 options:{objc_msgSend(v11, "tabBarTitleTruncationCompareOptions")}];

  v9 = [v14 length];
  v15 = *(*(a1 + 40) + 8);
  v16 = *(v15 + 24);
  if (v9 <= v16)
  {
    v7 = v17;
LABEL_8:
    *a4 = 1;
    v15 = *(*(a1 + 40) + 8);
    v16 = *(v15 + 24);
    goto LABEL_9;
  }

  v7 = v17;
LABEL_9:
  if (v9 > v16)
  {
    v16 = v9;
  }

  *(v15 + 24) = v16;
LABEL_12:
}

uint64_t SFDebugMenuEnabled()
{
  result = [MEMORY[0x1E69C8880] hasInternalContent];
  if (result)
  {
    v1 = [MEMORY[0x1E695E000] safari_browserDefaults];
    v2 = [v1 BOOLForKey:@"DebugShowInternalActions"];

    return v2;
  }

  return result;
}

void sub_18B925B2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B92630C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B92661C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B92C6A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getASCOfferThemeClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getASCOfferThemeClass_softClass;
  v7 = getASCOfferThemeClass_softClass;
  if (!getASCOfferThemeClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getASCOfferThemeClass_block_invoke;
    v3[3] = &unk_1E721C5D0;
    v3[4] = &v4;
    __getASCOfferThemeClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18B92CE50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSKProductPageViewControllerClass_block_invoke(uint64_t a1)
{
  StoreKitUILibrary();
  result = objc_getClass("SKProductPageViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSKProductPageViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getSKProductPageViewControllerClass_block_invoke_cold_1();
    return StoreKitUILibrary();
  }

  return result;
}

uint64_t StoreKitUILibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!StoreKitUILibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __StoreKitUILibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E721EAD0;
    v5 = 0;
    StoreKitUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = StoreKitUILibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!StoreKitUILibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __StoreKitUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  StoreKitUILibraryCore_frameworkLibrary = result;
  return result;
}

void *__getSKStoreProductParameterITunesItemIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!StoreKitLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __StoreKitLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E721EAE8;
    v7 = 0;
    StoreKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = StoreKitLibraryCore_frameworkLibrary;
    if (StoreKitLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = StoreKitLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "SKStoreProductParameterITunesItemIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSKStoreProductParameterITunesItemIdentifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __StoreKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  StoreKitLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getASCLockupViewClass_block_invoke(uint64_t a1)
{
  AppStoreComponentsLibrary();
  result = objc_getClass("ASCLockupView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getASCLockupViewClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getASCLockupViewClass_block_invoke_cold_1();
    return AppStoreComponentsLibrary();
  }

  return result;
}

uint64_t AppStoreComponentsLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!AppStoreComponentsLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __AppStoreComponentsLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E721EB00;
    v5 = 0;
    AppStoreComponentsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = AppStoreComponentsLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!AppStoreComponentsLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __AppStoreComponentsLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AppStoreComponentsLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getASCOfferThemeClass_block_invoke(uint64_t a1)
{
  AppStoreComponentsLibrary();
  result = objc_getClass("ASCOfferTheme");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getASCOfferThemeClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getASCOfferThemeClass_block_invoke_cold_1();
    return __getASCLockupRequestClass_block_invoke(v3);
  }

  return result;
}

Class __getASCLockupRequestClass_block_invoke(uint64_t a1)
{
  AppStoreComponentsLibrary();
  result = objc_getClass("ASCLockupRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getASCLockupRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getASCLockupRequestClass_block_invoke_cold_1();
    return __getASCAdamIDClass_block_invoke(v3);
  }

  return result;
}

Class __getASCAdamIDClass_block_invoke(uint64_t a1)
{
  AppStoreComponentsLibrary();
  result = objc_getClass("ASCAdamID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getASCAdamIDClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getASCAdamIDClass_block_invoke_cold_1();
    return __getASCLockupKindAppSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getASCLockupKindAppSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppStoreComponentsLibrary();
  result = dlsym(v2, "ASCLockupKindApp");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getASCLockupKindAppSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getASCLockupContextStandardSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppStoreComponentsLibrary();
  result = dlsym(v2, "ASCLockupContextStandard");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getASCLockupContextStandardSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getASCAppStateWaitingSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppStoreComponentsLibrary();
  result = dlsym(v2, "ASCAppStateWaiting");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getASCAppStateWaitingSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getASCAppStateInstallingSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppStoreComponentsLibrary();
  result = dlsym(v2, "ASCAppStateInstalling");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getASCAppStateInstallingSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getASCAppStateOpenableSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppStoreComponentsLibrary();
  result = dlsym(v2, "ASCAppStateOpenable");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getASCAppStateOpenableSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getASCOfferMetadataClass_block_invoke(uint64_t a1)
{
  AppStoreComponentsLibrary();
  result = objc_getClass("ASCOfferMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getASCOfferMetadataClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getASCOfferMetadataClass_block_invoke_cold_1();
    return __getASCLocalOfferClass_block_invoke(v3);
  }

  return result;
}

Class __getASCLocalOfferClass_block_invoke(uint64_t a1)
{
  AppStoreComponentsLibrary();
  result = objc_getClass("ASCLocalOffer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getASCLocalOfferClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getASCLocalOfferClass_block_invoke_cold_1();
    return __getSKUIMetricsLaunchApplicationWithIdentifierAndURLAndLaunchOptionsSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getSKUIMetricsLaunchApplicationWithIdentifierAndURLAndLaunchOptionsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreKitUILibrary();
  result = dlsym(v2, "SKUIMetricsLaunchApplicationWithIdentifierAndURLAndLaunchOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSKUIMetricsLaunchApplicationWithIdentifierAndURLAndLaunchOptionsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void SFDeferrableUpdateViewDidMoveToWindow(void *a1)
{
  v1 = a1;
  v2 = [v1 deferrableUpdateViewState];
  v3 = v1;
  v4 = [v3 window];
  v5 = [v4 windowScene];

  if (*v2)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 == 0;
  }

  if (!v6)
  {
    *(v2 + 17) = [v5 activationState] < 2;
    objc_initWeak(&location, v3);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __setUpNotificationObserversIfNeeded_block_invoke;
    aBlock[3] = &unk_1E721EB20;
    objc_copyWeak(v18, &location);
    v18[1] = v2;
    v7 = _Block_copy(aBlock);
    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    v9 = [MEMORY[0x1E696ADC8] mainQueue];
    v10 = [v8 addObserverForName:*MEMORY[0x1E69DE360] object:v5 queue:v9 usingBlock:v7];
    v11 = *v2;
    *v2 = v10;

    v12 = [v8 addObserverForName:*MEMORY[0x1E69DE348] object:v5 queue:v9 usingBlock:v7];
    v13 = *(v2 + 8);
    *(v2 + 8) = v12;

    objc_destroyWeak(v18);
    objc_destroyWeak(&location);
  }

  v14 = v3;
  v15 = v14;
  if (*(v2 + 16) == 1 && *(v2 + 17) == 1)
  {
    v16 = [v14 window];

    if (v16)
    {
      [v15 updateContents];
      *(v2 + 16) = 0;
    }
  }
}

void sub_18B92EA50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t SFDeferrableUpdateViewShouldAttemptToUpdateContents(void *a1)
{
  v1 = a1;
  v2 = [v1 deferrableUpdateViewState];
  if (*(v2 + 17) == 1 && ([v1 window], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = 0;
    v5 = 1;
  }

  else
  {
    v5 = 0;
    v4 = 1;
  }

  *(v2 + 16) = v4;

  return v5;
}

BOOL SFDeferrableUpdateViewCanUpdateContents(void *a1)
{
  v1 = a1;
  if (*([v1 deferrableUpdateViewState] + 17) == 1)
  {
    v2 = [v1 window];
    v3 = v2 != 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __setUpNotificationObserversIfNeeded_block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v10 name];
    v5 = [v4 isEqualToString:*MEMORY[0x1E69DE360]];

    v6 = *(a1 + 40);
    *(v6 + 17) = v5;
    v7 = WeakRetained;
    v8 = v7;
    if (*(v6 + 16) == 1 && *(v6 + 17) == 1)
    {
      v9 = [v7 window];

      if (v9)
      {
        [v8 updateContents];
        *(v6 + 16) = 0;
      }
    }
  }
}

void sub_18B92F164(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&a24);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id windowCreationNavigationIntentDictionary()
{
  v0 = windowCreationNavigationIntentDictionary_dictionary;
  if (!windowCreationNavigationIntentDictionary_dictionary)
  {
    v1 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2 = windowCreationNavigationIntentDictionary_dictionary;
    windowCreationNavigationIntentDictionary_dictionary = v1;

    v0 = windowCreationNavigationIntentDictionary_dictionary;
  }

  return v0;
}

uint64_t _SFAccessibilityIdentifierForBarItem(unint64_t a1)
{
  if (a1 > 0x10)
  {
    return 0;
  }

  else
  {
    return *(&off_1E721EC00 + a1);
  }
}

__CFString *_SFStringForBarItem(uint64_t a1)
{
  if ((a1 - 1) > 0x10)
  {
    return @"back";
  }

  else
  {
    return *(&off_1E721EC88 + a1 - 1);
  }
}

Class __getCPSInlineCardViewControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!ClipUIServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __ClipUIServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E721ED10;
    v6 = 0;
    ClipUIServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (ClipUIServicesLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("CPSInlineCardViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCPSInlineCardViewControllerClass_block_invoke_cold_1();
  }

  getCPSInlineCardViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ClipUIServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ClipUIServicesLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t __SafariServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SafariServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_18B937304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __debugOpaqueInPopover_block_invoke()
{
  v0 = [MEMORY[0x1E695E000] safari_browserDefaults];
  debugOpaqueInPopover_flag = [v0 BOOLForKey:@"DebugStartPageCellsAreOpaqueInPopover"];
}

void sub_18B93941C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id groupIdentifiersForItems(void *a1)
{
  v1 = MEMORY[0x1E695DFD8];
  v2 = [a1 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_59];
  v3 = [v1 setWithArray:v2];

  return v3;
}

void sub_18B93FFD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18B946C68(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_18B9485FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B94A88C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18B94B56C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  objc_destroyWeak((v26 + 56));
  objc_destroyWeak((v26 + 48));
  objc_destroyWeak(&a26);
  objc_destroyWeak((v27 - 120));
  objc_destroyWeak((v27 - 112));
  _Unwind_Resume(a1);
}

void sub_18B94BB34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _SFContextInfoWithComment(void *a1, void *a2)
{
  v3 = a1;
  v4 = v3;
  if (a2)
  {
    v5 = a2;
    v6 = [v5 coordinateSpace];
    [v6 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v15 = MEMORY[0x1E696AEC0];
    v16 = [v5 activationState];

    if ((v16 + 1) > 2)
    {
      v17 = @"background";
    }

    else
    {
      v17 = off_1E721F258[v16 + 1];
    }

    v23.origin.x = v8;
    v23.origin.y = v10;
    v23.size.width = v12;
    v23.size.height = v14;
    Width = CGRectGetWidth(v23);
    v24.origin.x = v8;
    v24.origin.y = v10;
    v24.size.width = v12;
    v24.size.height = v14;
    v18 = [v15 stringWithFormat:@"%@, scene: %@, %dx%d", v4, v17, Width, CGRectGetHeight(v24)];
  }

  else
  {
    v18 = v3;
  }

  v20 = v18;

  return v20;
}

void _SFPopoverSourceInfoUnwrap(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (objc_opt_respondsToSelector())
  {
    v14 = [v9 barButtonItem];
    if (v14)
    {
      v15 = v14;
      v12[2](v12, v14);
LABEL_8:

      goto LABEL_14;
    }
  }

  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v16 = [v9 popoverSourceView];
    if (v16)
    {
      v15 = v16;
      [v9 popoverSourceRect];
      v11[2](v11, v15);
      goto LABEL_8;
    }
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [v9 shouldDismissIfSourceRemovedAfterRepositioning])
  {
    v13[2](v13, 1);
  }

  else
  {
    v17 = WBS_LOG_CHANNEL_PREFIXUserInterface();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      _SFPopoverSourceInfoUnwrap_cold_1(v9, v10, v17);
    }
  }

LABEL_14:
}

SFUIBarButtonItemPopoverSourceInfo *_SFPopoverSourceInfoForViewController(void *a1)
{
  v1 = a1;
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v1 safari_popoverSourceInfo], (v2 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if ([v1 modalPresentationStyle] == 7)
    {
      v3 = [v1 popoverPresentationController];
      v4 = [v3 barButtonItem];
      if (v4)
      {
        v2 = [[SFUIBarButtonItemPopoverSourceInfo alloc] initWithItem:v4];
      }

      else
      {
        v5 = [v3 sourceView];
        if (v5)
        {
          v6 = [_SFUIViewPopoverSourceInfo alloc];
          [v3 sourceRect];
          v2 = [(_SFUIViewPopoverSourceInfo *)v6 initWithView:v5 rect:?];
        }

        else
        {
          v2 = 0;
        }
      }
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

void sub_18B94D51C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  v21 = v18;

  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_18B94D840(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

void sub_18B94E4EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = SFManageExtensionsViewController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_18B94EFBC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_18B950098(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_18B950818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_18B951FF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(va);
  _Unwind_Resume(a1);
}

void sub_18B95351C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 64), 8);

  _Unwind_Resume(a1);
}

void sub_18B953928(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(va);
  _Unwind_Resume(a1);
}

void sub_18B953A78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(va);
  _Unwind_Resume(a1);
}

void sub_18B953B98(_Unwind_Exception *a1)
{
  MEMORY[0x18CFFE140](v2, 0x1080C40D2F62047);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18B953F90(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

id SafariShared::WBSSQLiteDatabaseFetch<NSString * {__strong}>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v5 query:v6];
  [v7 bindString:*a3 atParameterIndex:1];
  v8 = [v7 fetch];

  return v8;
}

id SafariShared::WBSSQLiteDatabaseFetch<NSString * {__strong}&>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v5 query:v6];
  [v7 bindString:*a3 atParameterIndex:1];
  v8 = [v7 fetch];

  return v8;
}

id SafariShared::WBSSQLiteDatabaseFetch<long>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v5 query:v6];
  [v7 bindInt64:*a3 atParameterIndex:1];
  v8 = [v7 fetch];

  return v8;
}

void sub_18B954B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(va);
  _Unwind_Resume(a1);
}

void sub_18B954DF4(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, ...)
{
  va_start(va, a10);

  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(va);
  _Unwind_Resume(a1);
}

void sub_18B9553F8(_Unwind_Exception *a1)
{
  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler((v5 - 152));

  _Unwind_Resume(a1);
}

void sub_18B955910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, id a26)
{
  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(&a26);

  _Unwind_Resume(a1);
}

void sub_18B955DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(va);
  _Unwind_Resume(a1);
}

void sub_18B9567C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_18B956AF4(_Unwind_Exception *a1)
{
  MEMORY[0x18CFFE140](v2, 0x1080C40D2F62047);

  _Unwind_Resume(a1);
}

void sub_18B956E44(_Unwind_Exception *a1)
{
  MEMORY[0x18CFFE140](v2, 0x1080C40D2F62047);

  _Unwind_Resume(a1);
}

void sub_18B95720C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(va);
  _Unwind_Resume(a1);
}

void sub_18B957400(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(va);
  _Unwind_Resume(a1);
}

void sub_18B957A58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(va);
  _Unwind_Resume(a1);
}

void generateUUID(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x1E696AFB0] UUID];
  v6 = [v5 UUIDString];
  sqlite3_result_text(a1, [v6 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);

  objc_autoreleasePoolPop(v4);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,unsigned long &,long,NSString * {__strong},int>(void *a1, void *a2, void *a3, void *a4, unsigned int *a5)
{
  v9 = a1;
  [v9 bindInt64:*a2 atParameterIndex:1];
  SafariShared::_WBSSQLiteStatementBindAllParameters<2,long,NSString * {__strong},int>(v9, a3, a4, a5);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<2,long,NSString * {__strong},int>(void *a1, void *a2, void *a3, unsigned int *a4)
{
  v7 = a1;
  [v7 bindInt64:*a2 atParameterIndex:2];
  SafariShared::_WBSSQLiteStatementBindAllParameters<3,NSString * {__strong},int>(v7, a3, a4);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<3,NSString * {__strong},int>(void *a1, void *a2, unsigned int *a3)
{
  v5 = a1;
  [v5 bindString:*a2 atParameterIndex:3];
  [v5 bindInt:*a3 atParameterIndex:4];
}

uint64_t SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong},NSString * {__strong}>(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a3;
  v18 = 0;
  v11 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v9 query:v10 error:&v18];
  v12 = v18;
  v13 = v12;
  if (v11)
  {
    SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * {__strong},NSString * {__strong}>(v11, a4, a5);
    v14 = [v11 execute];
    [v11 invalidate];
    if ((v14 - 100) >= 2 && v14 != 0)
    {
      [v9 reportErrorWithCode:v14 statement:objc_msgSend(v11 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v16 = v12;
      *a2 = v13;
    }

    v14 = [v13 code];
  }

  return v14;
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * {__strong},NSString * {__strong}>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  [v5 bindString:*a2 atParameterIndex:1];
  [v5 bindString:*a3 atParameterIndex:2];
}

uint64_t SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<SFBrowserWindowType,NSString * const {__strong}&>(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a3;
  v18 = 0;
  v11 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v9 query:v10 error:&v18];
  v12 = v18;
  v13 = v12;
  if (v11)
  {
    SafariShared::_WBSSQLiteStatementBindAllParameters<1,SFBrowserWindowType,NSString * const {__strong}&>(v11, a4, a5);
    v14 = [v11 execute];
    [v11 invalidate];
    if ((v14 - 100) >= 2 && v14 != 0)
    {
      [v9 reportErrorWithCode:v14 statement:objc_msgSend(v11 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v16 = v12;
      *a2 = v13;
    }

    v14 = [v13 code];
  }

  return v14;
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,SFBrowserWindowType,NSString * const {__strong}&>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  [v5 bindInt64:*a2 atParameterIndex:1];
  [v5 bindString:*a3 atParameterIndex:2];
}

uint64_t SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<long,long,SFBrowserWindowType,long &>(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a1;
  v14 = a3;
  v22 = 0;
  v15 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v13 query:v14 error:&v22];
  v16 = v22;
  v17 = v16;
  if (v15)
  {
    SafariShared::_WBSSQLiteStatementBindAllParameters<1,long,long,SFBrowserWindowType,long &>(v15, a4, a5, a6, a7);
    v18 = [v15 execute];
    [v15 invalidate];
    if ((v18 - 100) >= 2 && v18 != 0)
    {
      [v13 reportErrorWithCode:v18 statement:objc_msgSend(v15 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v20 = v16;
      *a2 = v17;
    }

    v18 = [v17 code];
  }

  return v18;
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,long,long,SFBrowserWindowType,long &>(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  [v9 bindInt64:*a2 atParameterIndex:1];
  SafariShared::_WBSSQLiteStatementBindAllParameters<2,long,SFBrowserWindowType,long &>(v9, a3, a4, a5);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<2,long,SFBrowserWindowType,long &>(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  [v7 bindInt64:*a2 atParameterIndex:2];
  SafariShared::_WBSSQLiteStatementBindAllParameters<3,SFBrowserWindowType,long &>(v7, a3, a4);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<3,SFBrowserWindowType,long &>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  [v5 bindInt64:*a2 atParameterIndex:3];
  [v5 bindInt64:*a3 atParameterIndex:4];
}

uint64_t SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong},NSString * {__strong},long,long,long,SFBrowserWindowType,NSString * {__strong}>(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10)
{
  v17 = a1;
  v18 = a3;
  v26 = 0;
  v19 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v17 query:v18 error:&v26];
  v20 = v26;
  v21 = v20;
  if (v19)
  {
    SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * {__strong},NSString * {__strong},long,long,long,SFBrowserWindowType,NSString * {__strong}>(v19, a4, a5, a6, a7, a8, a9, a10);
    v22 = [v19 execute];
    [v19 invalidate];
    if ((v22 - 100) >= 2 && v22 != 0)
    {
      [v17 reportErrorWithCode:v22 statement:objc_msgSend(v19 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v24 = v20;
      *a2 = v21;
    }

    v22 = [v21 code];
  }

  return v22;
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * {__strong},NSString * {__strong},long,long,long,SFBrowserWindowType,NSString * {__strong}>(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v15 = a1;
  [v15 bindString:*a2 atParameterIndex:1];
  SafariShared::_WBSSQLiteStatementBindAllParameters<2,NSString * {__strong},long,long,long,SFBrowserWindowType,NSString * {__strong}>(v15, a3, a4, a5, a6, a7, a8);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<2,NSString * {__strong},long,long,long,SFBrowserWindowType,NSString * {__strong}>(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a1;
  [v13 bindString:*a2 atParameterIndex:2];
  SafariShared::_WBSSQLiteStatementBindAllParameters<3,long,long,long,SFBrowserWindowType,NSString * {__strong}>(v13, a3, a4, a5, a6, a7);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<3,long,long,long,SFBrowserWindowType,NSString * {__strong}>(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a1;
  [v11 bindInt64:*a2 atParameterIndex:3];
  SafariShared::_WBSSQLiteStatementBindAllParameters<4,long,long,SFBrowserWindowType,NSString * {__strong}>(v11, a3, a4, a5, a6);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<4,long,long,SFBrowserWindowType,NSString * {__strong}>(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  [v9 bindInt64:*a2 atParameterIndex:4];
  SafariShared::_WBSSQLiteStatementBindAllParameters<5,long,SFBrowserWindowType,NSString * {__strong}>(v9, a3, a4, a5);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<5,long,SFBrowserWindowType,NSString * {__strong}>(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  [v7 bindInt64:*a2 atParameterIndex:5];
  SafariShared::_WBSSQLiteStatementBindAllParameters<6,SFBrowserWindowType,NSString * {__strong}>(v7, a3, a4);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<6,SFBrowserWindowType,NSString * {__strong}>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  [v5 bindInt64:*a2 atParameterIndex:6];
  [v5 bindString:*a3 atParameterIndex:7];
}

uint64_t SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong},NSString * {__strong},NSString * {__strong},long,double,int,BOOL,BOOL,long,BOOL,BOOL,NSString * {__strong},long,NSString * {__strong},NSString * {__strong},NSString * {__strong}>(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, double *a8, unsigned int *a9, unsigned __int8 *a10, unsigned __int8 *a11, void *a12, unsigned __int8 *a13, unsigned __int8 *a14, void *a15, void *a16, void *a17, void *a18, void *a19)
{
  v26 = a1;
  v27 = a3;
  v34[0] = 0;
  v28 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v26 query:v27 error:v34];
  v29 = v34[0];
  v30 = v29;
  if (v28)
  {
    SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * {__strong},NSString * {__strong},NSString * {__strong},long,double,int,BOOL,BOOL,long,BOOL,BOOL,NSString * {__strong},long,NSString * {__strong},NSString * {__strong},NSString * {__strong}>(v28, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);
    v31 = [v28 execute];
    [v28 invalidate];
    if ((v31 - 100) >= 2 && v31)
    {
      [v26 reportErrorWithCode:v31 statement:objc_msgSend(v28 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v32 = v29;
      *a2 = v30;
    }

    v31 = [v30 code];
  }

  return v31;
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * {__strong},NSString * {__strong},NSString * {__strong},long,double,int,BOOL,BOOL,long,BOOL,BOOL,NSString * {__strong},long,NSString * {__strong},NSString * {__strong},NSString * {__strong}>(void *a1, void *a2, void *a3, void *a4, void *a5, double *a6, unsigned int *a7, unsigned __int8 *a8, unsigned __int8 *a9, void *a10, unsigned __int8 *a11, unsigned __int8 *a12, void *a13, void *a14, void *a15, void *a16, void *a17)
{
  v24 = a1;
  [v24 bindString:*a2 atParameterIndex:1];
  SafariShared::_WBSSQLiteStatementBindAllParameters<2,NSString * {__strong},NSString * {__strong},long,double,int,BOOL,BOOL,long,BOOL,BOOL,NSString * {__strong},long,NSString * {__strong},NSString * {__strong},NSString * {__strong}>(v24, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<2,NSString * {__strong},NSString * {__strong},long,double,int,BOOL,BOOL,long,BOOL,BOOL,NSString * {__strong},long,NSString * {__strong},NSString * {__strong},NSString * {__strong}>(void *a1, void *a2, void *a3, void *a4, double *a5, unsigned int *a6, unsigned __int8 *a7, unsigned __int8 *a8, void *a9, unsigned __int8 *a10, unsigned __int8 *a11, void *a12, void *a13, void *a14, void *a15, void *a16)
{
  v23 = a1;
  [v23 bindString:*a2 atParameterIndex:2];
  SafariShared::_WBSSQLiteStatementBindAllParameters<3,NSString * {__strong},long,double,int,BOOL,BOOL,long,BOOL,BOOL,NSString * {__strong},long,NSString * {__strong},NSString * {__strong},NSString * {__strong}>(v23, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<3,NSString * {__strong},long,double,int,BOOL,BOOL,long,BOOL,BOOL,NSString * {__strong},long,NSString * {__strong},NSString * {__strong},NSString * {__strong}>(void *a1, void *a2, void *a3, double *a4, unsigned int *a5, unsigned __int8 *a6, unsigned __int8 *a7, void *a8, unsigned __int8 *a9, unsigned __int8 *a10, void *a11, void *a12, void *a13, void *a14, void *a15)
{
  v22 = a1;
  [v22 bindString:*a2 atParameterIndex:3];
  SafariShared::_WBSSQLiteStatementBindAllParameters<4,long,double,int,BOOL,BOOL,long,BOOL,BOOL,NSString * {__strong},long,NSString * {__strong},NSString * {__strong},NSString * {__strong}>(v22, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<4,long,double,int,BOOL,BOOL,long,BOOL,BOOL,NSString * {__strong},long,NSString * {__strong},NSString * {__strong},NSString * {__strong}>(void *a1, void *a2, double *a3, unsigned int *a4, unsigned __int8 *a5, unsigned __int8 *a6, void *a7, unsigned __int8 *a8, unsigned __int8 *a9, void *a10, void *a11, void *a12, void *a13, void *a14)
{
  v21 = a1;
  [v21 bindInt64:*a2 atParameterIndex:4];
  SafariShared::_WBSSQLiteStatementBindAllParameters<5,double,int,BOOL,BOOL,long,BOOL,BOOL,NSString * {__strong},long,NSString * {__strong},NSString * {__strong},NSString * {__strong}>(v21, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<5,double,int,BOOL,BOOL,long,BOOL,BOOL,NSString * {__strong},long,NSString * {__strong},NSString * {__strong},NSString * {__strong}>(void *a1, double *a2, unsigned int *a3, unsigned __int8 *a4, unsigned __int8 *a5, void *a6, unsigned __int8 *a7, unsigned __int8 *a8, void *a9, void *a10, void *a11, void *a12, void *a13)
{
  v20 = a1;
  [v20 bindDouble:5 atParameterIndex:*a2];
  SafariShared::_WBSSQLiteStatementBindAllParameters<6,int,BOOL,BOOL,long,BOOL,BOOL,NSString * {__strong},long,NSString * {__strong},NSString * {__strong},NSString * {__strong}>(v20, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<6,int,BOOL,BOOL,long,BOOL,BOOL,NSString * {__strong},long,NSString * {__strong},NSString * {__strong},NSString * {__strong}>(void *a1, unsigned int *a2, unsigned __int8 *a3, unsigned __int8 *a4, void *a5, unsigned __int8 *a6, unsigned __int8 *a7, void *a8, void *a9, void *a10, void *a11, void *a12)
{
  v19 = a1;
  [v19 bindInt:*a2 atParameterIndex:6];
  SafariShared::_WBSSQLiteStatementBindAllParameters<7,BOOL,BOOL,long,BOOL,BOOL,NSString * {__strong},long,NSString * {__strong},NSString * {__strong},NSString * {__strong}>(v19, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<7,BOOL,BOOL,long,BOOL,BOOL,NSString * {__strong},long,NSString * {__strong},NSString * {__strong},NSString * {__strong}>(void *a1, unsigned __int8 *a2, unsigned __int8 *a3, void *a4, unsigned __int8 *a5, unsigned __int8 *a6, void *a7, void *a8, void *a9, void *a10, void *a11)
{
  v18 = a1;
  [v18 bindInt:*a2 atParameterIndex:7];
  SafariShared::_WBSSQLiteStatementBindAllParameters<8,BOOL,long,BOOL,BOOL,NSString * {__strong},long,NSString * {__strong},NSString * {__strong},NSString * {__strong}>(v18, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<8,BOOL,long,BOOL,BOOL,NSString * {__strong},long,NSString * {__strong},NSString * {__strong},NSString * {__strong}>(void *a1, unsigned __int8 *a2, void *a3, unsigned __int8 *a4, unsigned __int8 *a5, void *a6, void *a7, void *a8, void *a9, void *a10)
{
  v17 = a1;
  [v17 bindInt:*a2 atParameterIndex:8];
  SafariShared::_WBSSQLiteStatementBindAllParameters<9,long,BOOL,BOOL,NSString * {__strong},long,NSString * {__strong},NSString * {__strong},NSString * {__strong}>(v17, a3, a4, a5, a6, a7, a8, a9, a10);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<9,long,BOOL,BOOL,NSString * {__strong},long,NSString * {__strong},NSString * {__strong},NSString * {__strong}>(void *a1, void *a2, unsigned __int8 *a3, unsigned __int8 *a4, void *a5, void *a6, void *a7, void *a8, void *a9)
{
  v16 = a1;
  [v16 bindInt64:*a2 atParameterIndex:9];
  SafariShared::_WBSSQLiteStatementBindAllParameters<10,BOOL,BOOL,NSString * {__strong},long,NSString * {__strong},NSString * {__strong},NSString * {__strong}>(v16, a3, a4, a5, a6, a7, a8, a9);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<10,BOOL,BOOL,NSString * {__strong},long,NSString * {__strong},NSString * {__strong},NSString * {__strong}>(void *a1, unsigned __int8 *a2, unsigned __int8 *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v15 = a1;
  [v15 bindInt:*a2 atParameterIndex:10];
  SafariShared::_WBSSQLiteStatementBindAllParameters<11,BOOL,NSString * {__strong},long,NSString * {__strong},NSString * {__strong},NSString * {__strong}>(v15, a3, a4, a5, a6, a7, a8);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<11,BOOL,NSString * {__strong},long,NSString * {__strong},NSString * {__strong},NSString * {__strong}>(void *a1, unsigned __int8 *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a1;
  [v13 bindInt:*a2 atParameterIndex:11];
  SafariShared::_WBSSQLiteStatementBindAllParameters<12,NSString * {__strong},long,NSString * {__strong},NSString * {__strong},NSString * {__strong}>(v13, a3, a4, a5, a6, a7);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<12,NSString * {__strong},long,NSString * {__strong},NSString * {__strong},NSString * {__strong}>(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a1;
  [v11 bindString:*a2 atParameterIndex:12];
  SafariShared::_WBSSQLiteStatementBindAllParameters<13,long,NSString * {__strong},NSString * {__strong},NSString * {__strong}>(v11, a3, a4, a5, a6);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<13,long,NSString * {__strong},NSString * {__strong},NSString * {__strong}>(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  [v9 bindInt64:*a2 atParameterIndex:13];
  SafariShared::_WBSSQLiteStatementBindAllParameters<14,NSString * {__strong},NSString * {__strong},NSString * {__strong}>(v9, a3, a4, a5);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<14,NSString * {__strong},NSString * {__strong},NSString * {__strong}>(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  [v7 bindString:*a2 atParameterIndex:14];
  SafariShared::_WBSSQLiteStatementBindAllParameters<15,NSString * {__strong},NSString * {__strong}>(v7, a3, a4);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<15,NSString * {__strong},NSString * {__strong}>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  [v5 bindString:*a2 atParameterIndex:15];
  [v5 bindString:*a3 atParameterIndex:16];
}

uint64_t SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSData * {__strong},unsigned long,NSString * {__strong}>(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a1;
  v12 = a3;
  v20 = 0;
  v13 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v11 query:v12 error:&v20];
  v14 = v20;
  v15 = v14;
  if (v13)
  {
    SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSData * {__strong},unsigned long,NSString * {__strong}>(v13, a4, a5, a6);
    v16 = [v13 execute];
    [v13 invalidate];
    if ((v16 - 100) >= 2 && v16 != 0)
    {
      [v11 reportErrorWithCode:v16 statement:objc_msgSend(v13 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v18 = v14;
      *a2 = v15;
    }

    v16 = [v15 code];
  }

  return v16;
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSData * {__strong},unsigned long,NSString * {__strong}>(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  [v7 bindData:*a2 atParameterIndex:1];
  SafariShared::_WBSSQLiteStatementBindAllParameters<2,unsigned long,NSString * {__strong}>(v7, a3, a4);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<2,unsigned long,NSString * {__strong}>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  [v5 bindInt64:*a2 atParameterIndex:2];
  [v5 bindString:*a3 atParameterIndex:3];
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * {__strong},NSString * {__strong},NSString * {__strong},NSString * {__strong},long,double,int,BOOL,BOOL,long,BOOL,BOOL,NSString * {__strong},long,NSString * {__strong},NSString * {__strong}>(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, double *a7, unsigned int *a8, unsigned __int8 *a9, unsigned __int8 *a10, void *a11, unsigned __int8 *a12, unsigned __int8 *a13, void *a14, void *a15, void *a16, void *a17)
{
  v24 = a1;
  [v24 bindString:*a2 atParameterIndex:1];
  SafariShared::_WBSSQLiteStatementBindAllParameters<2,NSString * {__strong},NSString * {__strong},NSString * {__strong},long,double,int,BOOL,BOOL,long,BOOL,BOOL,NSString * {__strong},long,NSString * {__strong},NSString * {__strong}>(v24, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<2,NSString * {__strong},NSString * {__strong},NSString * {__strong},long,double,int,BOOL,BOOL,long,BOOL,BOOL,NSString * {__strong},long,NSString * {__strong},NSString * {__strong}>(void *a1, void *a2, void *a3, void *a4, void *a5, double *a6, unsigned int *a7, unsigned __int8 *a8, unsigned __int8 *a9, void *a10, unsigned __int8 *a11, unsigned __int8 *a12, void *a13, void *a14, void *a15, void *a16)
{
  v23 = a1;
  [v23 bindString:*a2 atParameterIndex:2];
  SafariShared::_WBSSQLiteStatementBindAllParameters<3,NSString * {__strong},NSString * {__strong},long,double,int,BOOL,BOOL,long,BOOL,BOOL,NSString * {__strong},long,NSString * {__strong},NSString * {__strong}>(v23, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<3,NSString * {__strong},NSString * {__strong},long,double,int,BOOL,BOOL,long,BOOL,BOOL,NSString * {__strong},long,NSString * {__strong},NSString * {__strong}>(void *a1, void *a2, void *a3, void *a4, double *a5, unsigned int *a6, unsigned __int8 *a7, unsigned __int8 *a8, void *a9, unsigned __int8 *a10, unsigned __int8 *a11, void *a12, void *a13, void *a14, void *a15)
{
  v22 = a1;
  [v22 bindString:*a2 atParameterIndex:3];
  SafariShared::_WBSSQLiteStatementBindAllParameters<4,NSString * {__strong},long,double,int,BOOL,BOOL,long,BOOL,BOOL,NSString * {__strong},long,NSString * {__strong},NSString * {__strong}>(v22, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<4,NSString * {__strong},long,double,int,BOOL,BOOL,long,BOOL,BOOL,NSString * {__strong},long,NSString * {__strong},NSString * {__strong}>(void *a1, void *a2, void *a3, double *a4, unsigned int *a5, unsigned __int8 *a6, unsigned __int8 *a7, void *a8, unsigned __int8 *a9, unsigned __int8 *a10, void *a11, void *a12, void *a13, void *a14)
{
  v21 = a1;
  [v21 bindString:*a2 atParameterIndex:4];
  SafariShared::_WBSSQLiteStatementBindAllParameters<5,long,double,int,BOOL,BOOL,long,BOOL,BOOL,NSString * {__strong},long,NSString * {__strong},NSString * {__strong}>(v21, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<5,long,double,int,BOOL,BOOL,long,BOOL,BOOL,NSString * {__strong},long,NSString * {__strong},NSString * {__strong}>(void *a1, void *a2, double *a3, unsigned int *a4, unsigned __int8 *a5, unsigned __int8 *a6, void *a7, unsigned __int8 *a8, unsigned __int8 *a9, void *a10, void *a11, void *a12, void *a13)
{
  v20 = a1;
  [v20 bindInt64:*a2 atParameterIndex:5];
  SafariShared::_WBSSQLiteStatementBindAllParameters<6,double,int,BOOL,BOOL,long,BOOL,BOOL,NSString * {__strong},long,NSString * {__strong},NSString * {__strong}>(v20, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<6,double,int,BOOL,BOOL,long,BOOL,BOOL,NSString * {__strong},long,NSString * {__strong},NSString * {__strong}>(void *a1, double *a2, unsigned int *a3, unsigned __int8 *a4, unsigned __int8 *a5, void *a6, unsigned __int8 *a7, unsigned __int8 *a8, void *a9, void *a10, void *a11, void *a12)
{
  v19 = a1;
  [v19 bindDouble:6 atParameterIndex:*a2];
  SafariShared::_WBSSQLiteStatementBindAllParameters<7,int,BOOL,BOOL,long,BOOL,BOOL,NSString * {__strong},long,NSString * {__strong},NSString * {__strong}>(v19, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<7,int,BOOL,BOOL,long,BOOL,BOOL,NSString * {__strong},long,NSString * {__strong},NSString * {__strong}>(void *a1, unsigned int *a2, unsigned __int8 *a3, unsigned __int8 *a4, void *a5, unsigned __int8 *a6, unsigned __int8 *a7, void *a8, void *a9, void *a10, void *a11)
{
  v18 = a1;
  [v18 bindInt:*a2 atParameterIndex:7];
  SafariShared::_WBSSQLiteStatementBindAllParameters<8,BOOL,BOOL,long,BOOL,BOOL,NSString * {__strong},long,NSString * {__strong},NSString * {__strong}>(v18, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<8,BOOL,BOOL,long,BOOL,BOOL,NSString * {__strong},long,NSString * {__strong},NSString * {__strong}>(void *a1, unsigned __int8 *a2, unsigned __int8 *a3, void *a4, unsigned __int8 *a5, unsigned __int8 *a6, void *a7, void *a8, void *a9, void *a10)
{
  v17 = a1;
  [v17 bindInt:*a2 atParameterIndex:8];
  SafariShared::_WBSSQLiteStatementBindAllParameters<9,BOOL,long,BOOL,BOOL,NSString * {__strong},long,NSString * {__strong},NSString * {__strong}>(v17, a3, a4, a5, a6, a7, a8, a9, a10);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<9,BOOL,long,BOOL,BOOL,NSString * {__strong},long,NSString * {__strong},NSString * {__strong}>(void *a1, unsigned __int8 *a2, void *a3, unsigned __int8 *a4, unsigned __int8 *a5, void *a6, void *a7, void *a8, void *a9)
{
  v16 = a1;
  [v16 bindInt:*a2 atParameterIndex:9];
  SafariShared::_WBSSQLiteStatementBindAllParameters<10,long,BOOL,BOOL,NSString * {__strong},long,NSString * {__strong},NSString * {__strong}>(v16, a3, a4, a5, a6, a7, a8, a9);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<10,long,BOOL,BOOL,NSString * {__strong},long,NSString * {__strong},NSString * {__strong}>(void *a1, void *a2, unsigned __int8 *a3, unsigned __int8 *a4, void *a5, void *a6, void *a7, void *a8)
{
  v15 = a1;
  [v15 bindInt64:*a2 atParameterIndex:10];
  SafariShared::_WBSSQLiteStatementBindAllParameters<11,BOOL,BOOL,NSString * {__strong},long,NSString * {__strong},NSString * {__strong}>(v15, a3, a4, a5, a6, a7, a8);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<11,BOOL,BOOL,NSString * {__strong},long,NSString * {__strong},NSString * {__strong}>(void *a1, unsigned __int8 *a2, unsigned __int8 *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a1;
  [v13 bindInt:*a2 atParameterIndex:11];
  SafariShared::_WBSSQLiteStatementBindAllParameters<12,BOOL,NSString * {__strong},long,NSString * {__strong},NSString * {__strong}>(v13, a3, a4, a5, a6, a7);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<12,BOOL,NSString * {__strong},long,NSString * {__strong},NSString * {__strong}>(void *a1, unsigned __int8 *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a1;
  [v11 bindInt:*a2 atParameterIndex:12];
  SafariShared::_WBSSQLiteStatementBindAllParameters<13,NSString * {__strong},long,NSString * {__strong},NSString * {__strong}>(v11, a3, a4, a5, a6);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<13,NSString * {__strong},long,NSString * {__strong},NSString * {__strong}>(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  [v9 bindString:*a2 atParameterIndex:13];
  SafariShared::_WBSSQLiteStatementBindAllParameters<14,long,NSString * {__strong},NSString * {__strong}>(v9, a3, a4, a5);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<14,long,NSString * {__strong},NSString * {__strong}>(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  [v7 bindInt64:*a2 atParameterIndex:14];
  SafariShared::_WBSSQLiteStatementBindAllParameters<15,NSString * {__strong},NSString * {__strong}>(v7, a3, a4);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * {__strong},NSData * {__strong},unsigned long>(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  [v7 bindString:*a2 atParameterIndex:1];
  SafariShared::_WBSSQLiteStatementBindAllParameters<2,NSData * {__strong},unsigned long>(v7, a3, a4);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<2,NSData * {__strong},unsigned long>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  [v5 bindData:*a2 atParameterIndex:2];
  [v5 bindInt64:*a3 atParameterIndex:3];
}

uint64_t SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<long,NSString * {__strong},long const&,NSString * {__strong}>(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a1;
  v14 = a3;
  v22 = 0;
  v15 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v13 query:v14 error:&v22];
  v16 = v22;
  v17 = v16;
  if (v15)
  {
    SafariShared::_WBSSQLiteStatementBindAllParameters<1,long,NSString * {__strong},long const&,NSString * {__strong}>(v15, a4, a5, a6, a7);
    v18 = [v15 execute];
    [v15 invalidate];
    if ((v18 - 100) >= 2 && v18 != 0)
    {
      [v13 reportErrorWithCode:v18 statement:objc_msgSend(v15 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v20 = v16;
      *a2 = v17;
    }

    v18 = [v17 code];
  }

  return v18;
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,long,NSString * {__strong},long const&,NSString * {__strong}>(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  [v9 bindInt64:*a2 atParameterIndex:1];
  SafariShared::_WBSSQLiteStatementBindAllParameters<2,NSString * {__strong},long const&,NSString * {__strong}>(v9, a3, a4, a5);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<2,NSString * {__strong},long const&,NSString * {__strong}>(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  [v7 bindString:*a2 atParameterIndex:2];
  SafariShared::_WBSSQLiteStatementBindAllParameters<3,long const&,NSString * {__strong}>(v7, a3, a4);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<3,long const&,NSString * {__strong}>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  [v5 bindInt64:*a2 atParameterIndex:3];
  [v5 bindString:*a3 atParameterIndex:4];
}

uint64_t SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * const {__strong}&>(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  v16 = 0;
  v9 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v7 query:v8 error:&v16];
  v10 = v16;
  v11 = v10;
  if (v9)
  {
    [v9 bindString:*a4 atParameterIndex:1];
    v12 = [v9 execute];
    [v9 invalidate];
    if ((v12 - 100) >= 2 && v12 != 0)
    {
      [v7 reportErrorWithCode:v12 statement:objc_msgSend(v9 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v14 = v10;
      *a2 = v11;
    }

    v12 = [v11 code];
  }

  return v12;
}

uint64_t __AssistantServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AssistantServicesLibraryCore_frameworkLibrary = result;
  return result;
}

Class __dictationControllerClass_block_invoke()
{
  result = NSClassFromString(&cfstr_Uidictationcon.isa);
  dictationControllerClass_cachedClass = result;
  return result;
}

void *__getAFDictationRestrictedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AssistantServicesLibrary();
  result = dlsym(v2, "AFDictationRestricted");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFDictationRestrictedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id SFNSStringFromScrollIndicatorInsets(UIEdgeInsets *a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = NSStringFromUIEdgeInsets(*a1);
  v4 = NSStringFromUIEdgeInsets(a1[1]);
  v5 = [v2 stringWithFormat:@"{horizontal: %@, vertical: %@}", v3, v4];

  return v5;
}

BOOL _SFCGPointsEqualWithEpsilon(double a1, double a2, double a3, double a4, double a5)
{
  v5 = vabdd_f64(a1, a3);
  if (a1 != a3 && v5 > a5)
  {
    return 0;
  }

  if (vabdd_f64(a2, a4) <= a5)
  {
    return 1;
  }

  return a2 == a4;
}

double _SFCGRectGrowToSize(uint64_t a1, double result, double a3, double a4, double a5, double a6)
{
  if (a4 < a6)
  {
    v6 = a6 - a4;
    if (a1 == 2)
    {
      return result - v6;
    }

    else if (!a1)
    {
      return result + v6 * -0.5;
    }
  }

  return result;
}

double _SFCGRectOfSizeAlignedWithinRect(uint64_t a1, uint64_t a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  if (a1 == 2)
  {
    v18.origin.x = a5;
    v18.origin.y = a6;
    v18.size.width = a7;
    v18.size.height = a8;
    MinX = CGRectGetMaxX(v18) - a3;
  }

  else if (a1 == 1)
  {
    v17.origin.x = a5;
    v17.origin.y = a6;
    v17.size.width = a7;
    v17.size.height = a8;
    MinX = CGRectGetMinX(v17);
  }

  else
  {
    MinX = 0.0;
    if (!a1)
    {
      v16.origin.x = a5;
      v16.origin.y = a6;
      v16.size.width = a7;
      v16.size.height = a8;
      MinX = CGRectGetMidX(v16) + a3 * -0.5;
    }
  }

  switch(a2)
  {
    case 2:
      v21.origin.x = a5;
      v21.origin.y = a6;
      v21.size.width = a7;
      v21.size.height = a8;
      CGRectGetMaxX(v21);
      break;
    case 1:
      v20.origin.x = a5;
      v20.origin.y = a6;
      v20.size.width = a7;
      v20.size.height = a8;
      CGRectGetMinY(v20);
      break;
    case 0:
      v19.origin.x = a5;
      v19.origin.y = a6;
      v19.size.width = a7;
      v19.size.height = a8;
      CGRectGetMidY(v19);
      break;
  }

  return MinX;
}

double _SFCGRectOfSizeAlignedWithPoint(uint64_t a1, double a2, double a3, double a4)
{
  if (a1 == 2)
  {
    return a4 - a2;
  }

  if (a1 == 1)
  {
    return a4;
  }

  result = 0.0;
  if (!a1)
  {
    return a4 + a2 * -0.5;
  }

  return result;
}

double _SFContinuousCornerRadiusMatchingRadiusWithInset(double a1, double a2)
{
  if (a2 != 0.0)
  {
    [MEMORY[0x1E6979398] cornerCurveExpansionFactor:*MEMORY[0x1E69796E8]];
    return -(a2 - a1 * v4) / v4;
  }

  return a1;
}

double SFRubberBandOffsetForOffset(double result, double a2, double a3, double a4)
{
  if (a4 != 0.0)
  {
    if (result <= a3)
    {
      if (result < a2)
      {
        return a2 - (1.0 - 1.0 / ((a2 - result) / a4 * 0.55 + 1.0)) * a4;
      }
    }

    else
    {
      return a3 + (1.0 - 1.0 / ((result - a3) / a4 * 0.55 + 1.0)) * a4;
    }
  }

  return result;
}

long double SFProjectedOffsetForOffsetWithVelocity(double a1, double a2, double a3, double a4, long double a5, long double a6)
{
  v7 = a1 - a3 / 1000.0 / log(a5);
  log(a6);
  return v7;
}

void SFCACornerRadiiMake(double *a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  a1[1] = a2;
  a1[2] = a2;
  a1[3] = a2;
  a1[4] = a2;
  a1[5] = a2;
  a1[6] = a2;
  a1[7] = a2;
}

float64x2_t SFOutsetCACornerRadii@<Q0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X8>, uint64_t a3@<D0>)
{
  v3 = vdupq_lane_s64(a3, 0);
  v4 = vaddq_f64(a1[1], v3);
  *a2 = vaddq_f64(*a1, v3);
  a2[1] = v4;
  v5 = vaddq_f64(a1[2], v3);
  result = vaddq_f64(a1[3], v3);
  a2[2] = v5;
  a2[3] = result;
  return result;
}

void sub_18B95C774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = SFStartPageCustomizationViewController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_18B95CD70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, id location)
{
  v24 = v20;

  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_18B95DC6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void configureSnapshotWithCustomizationItemsSection(void *a1, void *a2, void *a3, void *a4)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v19 = a3;
  v9 = a4;
  [v9 removeAllObjects];
  if ([v19 count])
  {
    v26[0] = v8;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    [v7 appendSectionsWithIdentifiers:v10];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = v19;
    v12 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v12)
    {
      v13 = *v21;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v20 + 1) + 8 * i);
          v16 = [v15 identifier];
          [v9 setObject:v15 forKeyedSubscript:v16];

          v17 = [v15 identifier];
          v24 = v17;
          v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
          [v7 appendItemsWithIdentifiers:v18 intoSectionWithIdentifier:v8];
        }

        v12 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v12);
    }
  }
}

void sub_18B95EA98(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_18B95EEBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, void *a30, void *a31, void *a32, void *a33, id a34)
{
  objc_destroyWeak((v36 + 48));

  objc_destroyWeak(&a34);
  objc_destroyWeak((v38 - 112));

  _Unwind_Resume(a1);
}

void sub_18B95F698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  objc_destroyWeak((v7 + 32));

  objc_destroyWeak((v8 - 56));
  _Unwind_Resume(a1);
}

void sub_18B960000(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sectionTextAttributes(void)
{
  if (sectionTextAttributes(void)::onceToken != -1)
  {
    sectionTextAttributes();
  }

  v1 = sectionTextAttributes(void)::attributes;

  return v1;
}

void sub_18B960408(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B960590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v16 = v13;

  _Unwind_Resume(a1);
}

void sub_18B9606D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B960A10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_18B960B28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B960D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  objc_destroyWeak((v12 + 56));
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_18B960E84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_18B960FA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B9610A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_18B9611D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_18B9612F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B961448(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v16 = v13;

  _Unwind_Resume(a1);
}

void sub_18B962828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void ___ZL21sectionTextAttributesv_block_invoke()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  LODWORD(v1) = 1036831949;
  [v0 setHyphenationFactor:v1];
  v5 = *MEMORY[0x1E69DB688];
  v2 = [v0 copy];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v4 = sectionTextAttributes(void)::attributes;
  sectionTextAttributes(void)::attributes = v3;
}

void ___ZL29getPHPickerConfigurationClassv_block_invoke(uint64_t a1)
{
  PhotosUILibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PHPickerConfiguration");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPHPickerConfigurationClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    ___ZL29getPHPickerConfigurationClassv_block_invoke_cold_1();
    PhotosUILibrary();
  }
}

void PhotosUILibrary(void)
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!PhotosUILibraryCore(char **)::frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = ___ZL19PhotosUILibraryCorePPc_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E721FAC8;
    v3 = 0;
    PhotosUILibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!PhotosUILibraryCore(char **)::frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t ___ZL19PhotosUILibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  PhotosUILibraryCore(char **)::frameworkLibrary = result;
  return result;
}

Class ___ZL22getPHPickerFilterClassv_block_invoke(uint64_t a1)
{
  PhotosUILibrary();
  result = objc_getClass("PHPickerFilter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPHPickerFilterClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = ___ZL22getPHPickerFilterClassv_block_invoke_cold_1();
    return ___ZL30getPHPickerViewControllerClassv_block_invoke(v3);
  }

  return result;
}

Class ___ZL30getPHPickerViewControllerClassv_block_invoke(uint64_t a1)
{
  PhotosUILibrary();
  result = objc_getClass("PHPickerViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPHPickerViewControllerClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = ___ZL30getPHPickerViewControllerClassv_block_invoke_cold_1();
    return [UIFont(MobileSafariFrameworkExtras) safari_monospacedDigitFontForTextStyle:v3];
  }

  return result;
}

void sub_18B9640A0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_18B96420C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = SFQuickLookDocument;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_18B96445C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

id getQLPreviewConverterClass(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getQLPreviewConverterClass(void)::softClass;
  v7 = getQLPreviewConverterClass(void)::softClass;
  if (!getQLPreviewConverterClass(void)::softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = ___ZL26getQLPreviewConverterClassv_block_invoke;
    v3[3] = &unk_1E721C528;
    v3[4] = &v4;
    ___ZL26getQLPreviewConverterClassv_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18B9652C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class ___ZL26getQLPreviewConverterClassv_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!QuickLookLibraryCore(char **)::frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = ___ZL20QuickLookLibraryCorePPc_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E721FB20;
    v6 = 0;
    QuickLookLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (QuickLookLibraryCore(char **)::frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("QLPreviewConverter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    ___ZL26getQLPreviewConverterClassv_block_invoke_cold_1();
  }

  getQLPreviewConverterClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ___ZL20QuickLookLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  QuickLookLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

id newGradientLayer(int a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E6979380]);
  v3 = gradientLayerColors(a1);
  [v2 setColors:v3];

  if (a1)
  {
    v4 = &unk_1EFF74688;
  }

  else
  {
    v4 = &unk_1EFF74670;
  }

  [v2 setLocations:v4];

  return v2;
}

id gradientLayerColors(char a1)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  v8[0] = [v2 CGColor];
  v3 = [v2 colorWithAlphaComponent:0.0];
  v8[1] = [v3 CGColor];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];

  if (a1)
  {
    v5 = [v4 reverseObjectEnumerator];
    v6 = [v5 allObjects];
  }

  else
  {
    v6 = v4;
  }

  return v6;
}

id _SFImageForMediaStateIcon(uint64_t a1)
{
  v1 = MEMORY[0x1E69DCAB8];
  v2 = SFSystemImageNameForMediaStateIcon(a1);
  v3 = [v1 systemImageNamed:v2];
  v4 = [v3 imageWithRenderingMode:1];

  return v4;
}

__CFString *SFSystemImageNameForMediaStateIcon(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return off_1E721FBA0[a1 - 1];
  }
}

__CFString *SFSystemImageNameForTogglingMediaStateIcon(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return off_1E721FBD0[a1 - 1];
  }
}

__CFString *SFUnfilledSystemImageNameForTogglingMediaStateIcon(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return off_1E721FC00[a1 - 1];
  }
}

__CFString *SFTitleForTogglingMediaStateIcon(uint64_t a1)
{
  v3 = &stru_1EFF36230;
  if (a1 > 3)
  {
    if (a1 == 4 || a1 == 5 || a1 == 6)
    {
      goto LABEL_9;
    }
  }

  else if (a1 == 1 || a1 == 2 || a1 == 3)
  {
LABEL_9:
    v3 = _WBSLocalizedString();
  }

  return v3;
}

__CFString *SFOtherTabsTitleForTogglingMediaStateIcon(uint64_t a1)
{
  if ((a1 - 1) >= 4)
  {
    if (a1 == 5 || a1 == 6)
    {
      v1 = _WBSLocalizedString();
    }

    else
    {
      v1 = &stru_1EFF36230;
    }
  }

  else
  {
    v1 = SFTitleForTogglingMediaStateIcon(a1);
  }

  return v1;
}

__CFString *SFMultipleOtherTabsTitleForTogglingMediaStateIcon(uint64_t a1)
{
  if ((a1 - 1) >= 4)
  {
    if (a1 == 5 || a1 == 6)
    {
      v1 = _WBSLocalizedString();
    }

    else
    {
      v1 = &stru_1EFF36230;
    }
  }

  else
  {
    v1 = SFTitleForTogglingMediaStateIcon(a1);
  }

  return v1;
}

uint64_t _SFMediaStateIconMutedVariant(unint64_t a1)
{
  if (a1 > 6)
  {
    return 6;
  }

  else
  {
    return qword_18BC3E310[a1];
  }
}

uint64_t _SFAudioStateForTogglingNonMirroredMediaStateIcon(uint64_t a1)
{
  if (a1 == 5)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

id SFColorForMediaStateIcon(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  if (a1 <= 3)
  {
    if (a1 == 1)
    {
LABEL_5:
      v3 = [MEMORY[0x1E69DC888] systemOrangeColor];
      goto LABEL_11;
    }

    if (a1 != 2)
    {
      if (a1 != 3)
      {
        goto LABEL_11;
      }

      goto LABEL_5;
    }

    goto LABEL_10;
  }

  switch(a1)
  {
    case 4:
LABEL_10:
      v3 = [MEMORY[0x1E69DC888] systemGreenColor];
      break;
    case 6:
      if ((a2 - 1) > 1)
      {
        v3 = 0;
      }

      else
      {
        v3 = [MEMORY[0x1E69DC888] secondaryLabelColor];
      }

      break;
    case 5:
      v3 = [MEMORY[0x1E69DC888] systemBlueColor];
      break;
  }

LABEL_11:

  return v3;
}

double iconDimension(void *a1)
{
  v1 = MEMORY[0x1E69DCA40];
  v2 = a1;
  v3 = [v1 alloc];
  v4 = [v3 initForTextStyle:*MEMORY[0x1E69DDD08]];
  [v4 scaledValueForValue:v2 compatibleWithTraitCollection:80.0];
  v6 = v5;

  return v6;
}

void sub_18B96AC78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = _SFBrowserSavedState;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_18B96BA48(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_18B96C220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, ...)
{
  va_start(va, a16);

  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(va);
  _Unwind_Resume(a1);
}

void sub_18B96C778(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_18B96D0D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 104));
  _Unwind_Resume(a1);
}

void sub_18B96D484(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B96D834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B96D958(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_18B96DD78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B96EB2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B97139C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_18B973B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18B973FBC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_18B9754F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

id __makeDismissButton_block_invoke_0(uint64_t a1, uint64_t a2)
{
  v5 = 0.0;
  v2 = [*(a1 + 32) resolvedColorWithTraitCollection:a2];
  [v2 getRed:0 green:0 blue:0 alpha:&v5];
  v3 = [v2 colorWithAlphaComponent:v5 * 0.5];

  return v3;
}

uint64_t sub_18B976E80()
{
  v1 = OBJC_IVAR____TtCE12MobileSafariCSo32SFEffectViewEditorViewController4Item_id;
  v2 = sub_18BC1EC08();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_18B988BAC(v0 + OBJC_IVAR____TtCE12MobileSafariCSo32SFEffectViewEditorViewController4Item_layer, &unk_1EA9DA1B0);

  return swift_deallocClassInstance();
}

uint64_t sub_18B976F60()
{
  sub_18BC22158();
  sub_18BC1EC08();
  sub_18B987260(&qword_1EA9D3970, MEMORY[0x1E69695A8]);
  sub_18BC20A78();
  sub_18BC1E3F8();
  sub_18BC20C28();

  return sub_18BC221A8();
}

uint64_t sub_18B977030()
{
  sub_18BC1EC08();
  sub_18B987260(&qword_1EA9D3970, MEMORY[0x1E69695A8]);
  sub_18BC20A78();
  sub_18BC1E3F8();
  sub_18BC20C28();
}

uint64_t sub_18B9770F4()
{
  sub_18BC22158();
  sub_18BC1EC08();
  sub_18B987260(&qword_1EA9D3970, MEMORY[0x1E69695A8]);
  sub_18BC20A78();
  sub_18BC1E3F8();
  sub_18BC20C28();

  return sub_18BC221A8();
}

uint64_t sub_18B9771C0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((_s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  if (*(v2 + OBJC_IVAR____TtCE12MobileSafariCSo32SFEffectViewEditorViewController4Item_subtitle) == *(v3 + OBJC_IVAR____TtCE12MobileSafariCSo32SFEffectViewEditorViewController4Item_subtitle) && *(v2 + OBJC_IVAR____TtCE12MobileSafariCSo32SFEffectViewEditorViewController4Item_subtitle + 8) == *(v3 + OBJC_IVAR____TtCE12MobileSafariCSo32SFEffectViewEditorViewController4Item_subtitle + 8))
  {
    return 1;
  }

  return sub_18BC21FD8();
}

uint64_t sub_18B97724C()
{
  sub_18BC22158();
  sub_18BC20C28();
  return sub_18BC221A8();
}

uint64_t sub_18B9772A0()
{
  sub_18BC22158();
  sub_18BC20C28();
  return sub_18BC221A8();
}

uint64_t sub_18B9772E8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40))
  {
    return 1;
  }

  else
  {
    return sub_18BC21FD8();
  }
}

uint64_t sub_18B977318()
{
  v1 = sub_18B7B0AC0(0, &unk_1EA9DADD0);
  v2 = OBJC_IVAR___SFEffectViewEditorViewController_sections;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = MEMORY[0x1E69E7CC0];
  v30 = MEMORY[0x1E69E7CC0];
  v5 = *(v3 + 16);
  v6 = sub_18BC1E3F8();
  v7 = 0;
  v8 = v4;
LABEL_2:
  v9 = 48 * v7;
  while (v5 != v7)
  {
    if (v7 >= *(v6 + 16))
    {
      __break(1u);
      goto LABEL_15;
    }

    ++v7;
    v10 = v9 + 48;
    v11 = *(v6 + v9 + 32);
    v9 += 48;
    if (v11)
    {
      v25 = v6;
      v26 = v1;
      v28 = *(v6 + v10 - 8);
      v12 = *(v6 + v10 + 8);
      v29 = *(v6 + v10 + 16);
      v13 = *(v6 + v10 + 24);
      v27 = v11;
      swift_bridgeObjectRetain_n();
      sub_18BC1E3F8();
      sub_18BC1E1A8();
      sub_18BC21B98();
      sub_18B7B0AC0(0, &qword_1EA9D52D0);
      v14 = 0;
      do
      {
        v15 = byte_1EFF19E68[v14++ + 32];
        v16 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v17 = swift_allocObject();
        *(v17 + 16) = v16;
        *(v17 + 24) = v15;
        *(v17 + 32) = v11;
        *(v17 + 40) = v28;
        *(v17 + 56) = v12;
        *(v17 + 64) = v29;
        *(v17 + 72) = v13;
        sub_18BC1E3F8();
        sub_18BC1E3F8();
        sub_18BC1E1A8();
        v18 = v27;
        sub_18BC215E8();
        sub_18BC21B68();
        sub_18BC21BA8();
        sub_18BC21BB8();
        sub_18BC21B78();
      }

      while (v14 != 3);
      v1 = v26;
      sub_18BC214D8();

      MEMORY[0x18CFFC270](v19, v20, v21, v22, v23);
      if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_18BC20DD8();
      }

      sub_18BC20E18();
      v8 = v30;
      v6 = v25;
      goto LABEL_2;
    }
  }

  if (!(v8 >> 62))
  {
    sub_18BC1E3F8();
    sub_18BC22008();
    sub_18B7B0AC0(0, &qword_1EA9D39D0);
    goto LABEL_13;
  }

LABEL_15:
  sub_18B7B0AC0(0, &qword_1EA9D39D0);
  sub_18BC1E3F8();
  sub_18BC21D08();

LABEL_13:

  return sub_18BC214D8();
}

void sub_18B977760(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_18B984C50(a3, *a4, *(a4 + 16), *(a4 + 24));
  }
}

void sub_18B9777D4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DA1B0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v68 - v2;
  v90 = _s5LayerVMa();
  v71 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v5 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v68 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3A68);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v68 - v11;
  v13 = *(v0 + OBJC_IVAR___SFEffectViewEditorViewController_dataSource);
  if (v13)
  {
    v70 = v5;
    v69 = v10;
    v88 = v3;
    v14 = _s4ItemCMa();
    sub_18B9889EC();
    sub_18B987260(&qword_1EA9D3A78, _s4ItemCMa);
    v68 = v13;
    v91 = v14;
    sub_18BC1FB28();
    v15 = OBJC_IVAR___SFEffectViewEditorViewController_sections;
    swift_beginAccess();
    sub_18BC1E3F8();
    v82 = v9;
    sub_18BC1FA88();

    v16 = *(v0 + v15);
    v17 = v12;
    v79 = *(v16 + 16);
    if (v79)
    {
      v75 = v16 + 32;
      v18 = (v71 + 56);
      sub_18BC1E3F8();
      v19 = 0;
      v72 = xmmword_18BC3E3E0;
      v78 = v12;
      v77 = v16;
      v76 = v18;
      v87 = v8;
      while (1)
      {
        if (v19 >= *(v16 + 16))
        {
          __break(1u);
          return;
        }

        v83 = v19;
        v20 = (v75 + 48 * v19);
        v22 = *v20;
        v21 = v20[1];
        v23 = v20[2];
        v24 = v20[3];
        v25 = v20[5];
        v84 = v20[4];
        v85 = v23;
        v26 = *(v21 + 2);
        v86 = v21;
        if (v26)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
          v89 = swift_allocObject();
          *(v89 + 16) = v72;
          v27 = *(v21 + 2);
          if (v27)
          {
            v93 = MEMORY[0x1E69E7CC0];
            v81 = v22;
            sub_18BC1E3F8();
            sub_18BC1E1A8();
            sub_18BC1E3F8();
            sub_18BC21B98();
            v28 = (v21 + 32);
            v29 = &unk_1EA9F7000;
            do
            {
              v30 = *v28;
              v28 += 3;
              v31 = v30;
              sub_18BC21B68();
              sub_18BC21BA8();
              sub_18BC21BB8();
              sub_18BC21B78();
              --v27;
            }

            while (v27);
            v32 = v93;
            v33 = v90;
            v34 = v81;
          }

          else
          {
            v34 = v22;
            sub_18BC1E3F8();
            sub_18BC1E1A8();
            sub_18BC1E3F8();
            v32 = MEMORY[0x1E69E7CC0];
            v29 = &unk_1EA9F7000;
            v33 = v90;
          }

          v36 = swift_allocObject();
          (*v76)(v36 + v29[267], 1, 1, v33);
          *(v36 + OBJC_IVAR____TtCE12MobileSafariCSo32SFEffectViewEditorViewController4Item_properties) = 0;
          v37 = v34;
          sub_18BC1E3F8();
          sub_18BC1E1A8();
          sub_18BC1E3F8();
          sub_18BC1DE28();
          v38 = sub_18B9848C0(v32);
          v40 = v39;

          v41 = (v36 + OBJC_IVAR____TtCE12MobileSafariCSo32SFEffectViewEditorViewController4Item_subtitle);
          *v41 = v38;
          v41[1] = v40;
          v42 = v86;
          *(v36 + OBJC_IVAR____TtCE12MobileSafariCSo32SFEffectViewEditorViewController4Item_properties) = v32;

          *(v89 + 32) = v36;
          v93 = v22;
          v94 = v42;
          v95 = v85;
          v96 = v24;
          v97 = v84;
          v98 = v25;
          v43 = v37;
          sub_18BC1E3F8();
          sub_18BC1E1A8();
          sub_18BC1E3F8();
          v17 = v78;
          sub_18BC1FA38();

          v16 = v77;
          if (v22)
          {
LABEL_16:
            v80 = v25;
            v81 = v24;
            v44 = OBJC_IVAR___SFEditableEffect_layers;
            swift_beginAccess();
            v45 = *&v22[v44];
            v46 = *(v45 + 16);
            if (v46)
            {
              v92 = MEMORY[0x1E69E7CC0];
              v74 = v22;
              v47 = v22;
              sub_18BC1E3F8();
              sub_18BC21B98();
              v48 = (*(v71 + 80) + 32) & ~*(v71 + 80);
              v73 = v45;
              v49 = v45 + v48;
              v89 = *(v71 + 72);
              v50 = v70;
              v51 = v76;
              do
              {
                v52 = v87;
                sub_18B9876B0(v49, v87);
                sub_18B9876B0(v52, v50);
                v53 = swift_allocObject();
                v54 = OBJC_IVAR____TtCE12MobileSafariCSo32SFEffectViewEditorViewController4Item_layer;
                v55 = *v51;
                v56 = v90;
                (*v51)(v53 + OBJC_IVAR____TtCE12MobileSafariCSo32SFEffectViewEditorViewController4Item_layer, 1, 1, v90);
                *(v53 + OBJC_IVAR____TtCE12MobileSafariCSo32SFEffectViewEditorViewController4Item_properties) = 0;
                v57 = v88;
                sub_18B9876B0(v50, v88);
                v55(v57, 0, 1, v56);
                swift_beginAccess();
                sub_18B988A40(v57, v53 + v54);
                swift_endAccess();
                v58 = *(v56 + 60);
                v59 = OBJC_IVAR____TtCE12MobileSafariCSo32SFEffectViewEditorViewController4Item_id;
                v60 = sub_18BC1EC08();
                (*(*(v60 - 8) + 16))(v53 + v59, v50 + v58, v60);
                v61 = sub_18B9845E4(v50);
                v63 = v62;
                sub_18B987654(v50);
                sub_18B987654(v52);
                v64 = (v53 + OBJC_IVAR____TtCE12MobileSafariCSo32SFEffectViewEditorViewController4Item_subtitle);
                *v64 = v61;
                v64[1] = v63;
                sub_18BC21B68();
                sub_18BC21BA8();
                sub_18BC21BB8();
                sub_18BC21B78();
                v49 += v89;
                --v46;
              }

              while (v46);

              v17 = v78;
              v16 = v77;
              v22 = v74;
            }

            else
            {
              v65 = v22;
            }

            v93 = v22;
            v94 = v86;
            v95 = v85;
            v96 = v81;
            v97 = v84;
            v98 = v80;
            v66 = v22;
            sub_18BC1E3F8();
            sub_18BC1E1A8();
            sub_18BC1E3F8();
            sub_18BC1FA38();
            swift_bridgeObjectRelease_n();

            swift_bridgeObjectRelease_n();

            goto LABEL_5;
          }
        }

        else
        {
          v35 = v22;
          sub_18BC1E3F8();
          sub_18BC1E1A8();
          sub_18BC1E3F8();
          if (v22)
          {
            goto LABEL_16;
          }
        }

LABEL_5:

        v19 = v83 + 1;
        if (v83 + 1 == v79)
        {

          break;
        }
      }
    }

    v67 = v68;
    sub_18BC1FDC8();

    (*(v69 + 8))(v17, v82);
  }
}

void sub_18B978100(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  [a1 copyWithZone_];
  sub_18BC218B8();
  swift_unknownObjectRelease();
  type metadata accessor for SFEditableEffect(0);
  swift_dynamicCast();
  v10 = OBJC_IVAR___SFEffectViewEditorViewController_sections;
  swift_beginAccess();
  v11 = *(v5 + v10);
  sub_18BC1E3F8();
  sub_18BC1E1A8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + v10) = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_18B9B5464(0, *(v11 + 2) + 1, 1, v11);
    *(v5 + v10) = v11;
  }

  v14 = *(v11 + 2);
  v13 = *(v11 + 3);
  if (v14 >= v13 >> 1)
  {
    v11 = sub_18B9B5464((v13 > 1), v14 + 1, 1, v11);
  }

  *(v11 + 2) = v14 + 1;
  v15 = MEMORY[0x1E69E7CC0];
  v16 = &v11[48 * v14];
  *(v16 + 4) = v17;
  *(v16 + 5) = v15;
  *(v16 + 6) = a4;
  *(v16 + 7) = a5;
  *(v16 + 8) = a2;
  *(v16 + 9) = a3;
  *(v5 + v10) = v11;
  swift_endAccess();
  sub_18B9777D4();
}

id sub_18B9783C8()
{
  v1 = OBJC_IVAR___SFEffectViewEditorViewController_dataSource;
  v2 = *(v0 + OBJC_IVAR___SFEffectViewEditorViewController_dataSource);
  if (v2)
  {
    v3 = v0;
    v4 = v2;
    sub_18BC1FD18();

    v5 = v21;
    if (v21)
    {
      v6 = *(v3 + v1);
      if (v6)
      {
        v7 = v6;
        sub_18BC1EDC8();
        sub_18BC1FD38();

        v8 = v22;
        if (v22)
        {
          v9 = v21;
          v10 = v24;
          v11 = v26;
          v12 = v23;
          v13 = v25;
          v14 = swift_allocObject();
          swift_unknownObjectUnownedInit();
          v15 = swift_allocObject();
          v15[2] = v21;
          v15[3] = v5;
          v15[4] = v14;
          v15[5] = v9;
          v15[6] = v8;
          v15[7] = v12;
          v15[8] = v10;
          v15[9] = v13;
          v15[10] = v11;
          v16 = v9;
          sub_18BC1E1A8();
          sub_18BC1E1A8();
          sub_18BC1E3F8();
          sub_18BC1E1A8();
          sub_18BC1E3F8();
          v17 = sub_18BC20B98();
          v25 = sub_18B988B9C;
          v26 = v15;
          v21 = MEMORY[0x1E69E9820];
          v22 = 1107296256;
          v23 = sub_18BB70560;
          v24 = &block_descriptor_294;
          v18 = _Block_copy(&v21);
          v19 = [objc_opt_self() contextualActionWithStyle:1 title:v17 handler:v18];

          _Block_release(v18);

          return v19;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_18B978638(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = OBJC_IVAR___SFEditableEffect_layers;
  swift_beginAccess();
  sub_18BC1E1A8();
  v13 = sub_18B985760((a5 + v12), a6);

  v14 = *(*(a5 + v12) + 16);
  if (v14 < v13)
  {
    __break(1u);
    result = swift_endAccess();
    __break(1u);
  }

  else
  {
    sub_18BB7A574(v13, v14);
    swift_endAccess();
    Strong = swift_unknownObjectUnownedLoadStrong();
    if (*a8)
    {
      v16 = *a8;
      sub_18B9777D4();
      (*(a8 + 16))(Strong, v16);
    }

    return a3(1);
  }

  return result;
}

Swift::Void __swiftcall SFEffectViewEditorViewController.loadView()()
{
  v1 = v0;
  v2 = sub_18BC1FEB8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18BC1FEA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_18BC1FF18();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v9, *MEMORY[0x1E69DC248], v6, v12);
  sub_18BC1FEC8();
  (*(v3 + 104))(v5, *MEMORY[0x1E69DC280], v2);
  sub_18BC1FED8();
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  sub_18BC1FE98();
  sub_18B7B0AC0(0, &qword_1EA9D3560);
  v15 = sub_18BC214A8();
  v16 = [objc_allocWithZone(MEMORY[0x1E69DC7F0]) initWithFrame:v15 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];
  v17 = *&v1[OBJC_IVAR___SFEffectViewEditorViewController_collectionView];
  *&v1[OBJC_IVAR___SFEffectViewEditorViewController_collectionView] = v16;
  v18 = v16;

  [v1 setView_];
  (*(v11 + 8))(v14, v10);
}

id sub_18B978A54()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = sub_18B9783C8();

  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_18BC3E3E0;
    *(v2 + 32) = v1;
    sub_18B7B0AC0(0, &unk_1EA9D3AD0);
    v3 = v1;
    v4 = sub_18BC20D88();

    v1 = [objc_opt_self() configurationWithActions_];
  }

  return v1;
}

Swift::Void __swiftcall SFEffectViewEditorViewController.viewDidLoad()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3570);
  v90 = *(v2 - 8);
  v91 = v2;
  v3 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v82 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3578);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v89 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v82 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v95 = &v82 - v14;
  *&v16 = MEMORY[0x1EEE9AC00](v15).n128_u64[0];
  v18 = &v82 - v17;
  v19 = [v1 view];
  if (!v19)
  {
    __break(1u);
    goto LABEL_10;
  }

  v20 = v19;
  v93 = v7;
  v94 = v18;
  *&v85 = v3;
  v86 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = v6;
  v21 = [objc_opt_self() systemBackgroundColor];
  [v20 setBackgroundColor_];

  v22 = OBJC_IVAR___SFEffectViewEditorViewController_collectionView;
  v23 = *&v1[OBJC_IVAR___SFEffectViewEditorViewController_collectionView];
  if (!v23)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  [v23 setDelegate_];
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  sub_18B7B0AC0(0, &qword_1EA9D3580);
  _s4ItemCMa();
  v24 = v94;
  sub_18BC21298();
  v25 = v95;
  sub_18BC21298();
  v88 = v1;
  v26 = *&v1[v22];
  if (!v26)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v27 = *(v8 + 16);
  v28 = v93;
  v27(v12, v24, v93);
  v29 = v89;
  v27(v89, v25, v28);
  v30 = *(v8 + 80);
  v31 = (v30 + 16) & ~v30;
  v32 = (v9 + v30 + v31) & ~v30;
  v33 = swift_allocObject();
  v87 = v8;
  v34 = *(v8 + 32);
  v34(v33 + v31, v12, v28);
  v34(v33 + v32, v29, v28);
  v35 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3588));
  v36 = v26;
  v37 = sub_18BC1FCE8();
  v38 = OBJC_IVAR___SFEffectViewEditorViewController_dataSource;
  v39 = v88;
  v40 = *&v88[OBJC_IVAR___SFEffectViewEditorViewController_dataSource];
  *&v88[OBJC_IVAR___SFEffectViewEditorViewController_dataSource] = v37;

  sub_18BC20BD8();
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  v41 = v92;
  sub_18BC212A8();
  v42 = *&v39[v38];
  if (v42)
  {
    v44 = v90;
    v43 = v91;
    v45 = v86;
    (*(v90 + 16))(v86, v41, v91);
    v46 = (*(v44 + 80) + 16) & ~*(v44 + 80);
    v47 = swift_allocObject();
    (*(v44 + 32))(v47 + v46, v45, v43);
    v48 = v42;
    sub_18BC1FD08();

    v49 = *&v39[v38];
    if (v49)
    {
      *(swift_allocObject() + 16) = v39;
      v50 = v49;
      v51 = v39;
      v52 = sub_18BC1FD78();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3598);
      sub_18BC1FD48();
      v52(v96, 0);

      v53 = *&v39[v38];
      if (v53)
      {
        v54 = v53;
        v55 = sub_18BC1FD78();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3598);
        sub_18BC1FD58();
        v55(v96, 0);
      }
    }
  }

  sub_18B9777D4();
  v89 = [v39 navigationItem];
  v86 = sub_18B7B0AC0(0, &unk_1EA9D35A0);
  v56 = sub_18BC20B98();
  v57 = objc_opt_self();
  *&v85 = [v57 systemImageNamed_];

  v83 = sub_18B7B0AC0(0, &unk_1EA9DADD0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
  v58 = swift_allocObject();
  v82 = xmmword_18BC3E3F0;
  *(v58 + 16) = xmmword_18BC3E3F0;
  v59 = swift_allocObject();
  *(v59 + 16) = v82;
  sub_18B7B0AC0(0, &qword_1EA9D52D0);
  v60 = sub_18BC20B98();
  v61 = [v57 __systemImageNamedSwift_];

  swift_allocObject();
  swift_unknownObjectUnownedInit();
  *(v59 + 32) = sub_18BC215E8();
  v62 = sub_18BC20B98();
  v63 = [v57 __systemImageNamedSwift_];

  swift_allocObject();
  swift_unknownObjectUnownedInit();
  *(v59 + 40) = sub_18BC215E8();
  v64 = sub_18BC20B98();
  v65 = [v57 __systemImageNamedSwift_];

  swift_allocObject();
  swift_unknownObjectUnownedInit();
  *(v59 + 48) = sub_18BC215E8();
  *(v58 + 32) = sub_18BC214D8();
  v66 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  sub_18BC1E1A8();
  sub_18B97BF3C(sub_18B97D188, v66);

  *(v58 + 40) = sub_18BC214D8();
  v67 = sub_18BC20B98();
  v68 = [v57 __systemImageNamedSwift_];

  v69 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  sub_18BC1E1A8();
  sub_18B97BF3C(sub_18B97D1F0, v69);

  *(v58 + 48) = sub_18BC214D8();
  sub_18BC214D8();
  v70 = sub_18BC21278();
  v71 = swift_allocObject();
  v85 = xmmword_18BC3E3E0;
  *(v71 + 16) = xmmword_18BC3E3E0;
  *(v71 + 32) = [v70 creatingFixedGroup];
  sub_18B7B0AC0(0, &unk_1EA9D35C0);
  v72 = sub_18BC20D88();

  v73 = v89;
  [v89 setLeadingItemGroups_];

  v74 = [v39 navigationItem];
  v75 = sub_18BC20B98();
  v76 = [v57 systemImageNamed_];

  sub_18B977318();
  v77 = sub_18BC21278();
  v78 = swift_allocObject();
  *(v78 + 16) = v85;
  *(v78 + 32) = [v77 creatingFixedGroup];
  v79 = sub_18BC20D88();

  [v74 setTrailingItemGroups_];

  (*(v90 + 8))(v92, v91);
  v80 = *(v87 + 8);
  v81 = v93;
  v80(v95, v93);
  v80(v94, v81);
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

void sub_18B979918(uint64_t a1, void *a2, uint64_t *a3)
{
  v60 = a2;
  v62 = a1;
  v51 = sub_18BC1F538();
  v59 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v58 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v57 = &v41 - v6;
  v53 = sub_18BC1F438();
  v52 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v50 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_18BC1F418();
  v55 = *(v8 - 8);
  v56 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v54 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s5LayerVMa();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DA1B0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v41 - v15;
  v17 = sub_18BC1FA08();
  v61 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = *a3;
  v20 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1F7D8();
  Strong = swift_unknownObjectUnownedLoadStrong();
  v22 = *&Strong[OBJC_IVAR___SFEffectViewEditorViewController_dataSource];
  v23 = v22;

  if (!v22)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_18BC1EDC8();
  sub_18BC1FD38();

  if (!v65)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v24 = v64;
  if (!v64)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v49 = v65;
  v47 = v68;
  v48 = v66;
  v25 = OBJC_IVAR___SFEditableEffect_layers;
  swift_beginAccess();
  v60 = v24;
  v26 = *&v24[v25];
  v27 = OBJC_IVAR____TtCE12MobileSafariCSo32SFEffectViewEditorViewController4Item_layer;
  swift_beginAccess();
  sub_18B7CA054(v19 + v27, v16, &unk_1EA9DA1B0);
  if ((*(v11 + 48))(v16, 1, v10) == 1)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v28 = *(v26 + 16);
  sub_18BC1E3F8();
  if (v28)
  {
    v23 = 0;
    while (v23 < *(v26 + 16))
    {
      sub_18B9876B0(v26 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v23, v13);
      v29 = sub_18B993064(v13, v16);
      sub_18B987654(v13);
      if (v29)
      {
        goto LABEL_11;
      }

      if (v28 == ++v23)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

LABEL_10:

  sub_18B987654(v16);
  __break(1u);
LABEL_11:

  sub_18B987654(v16);
  v64 = 0x2320726579614CLL;
  v65 = 0xE700000000000000;
  v63 = (v23 + 1);
  v30 = sub_18BC21F48();
  MEMORY[0x18CFFC150](v30);

  sub_18BC1F9B8();
  sub_18BC1E3F8();
  v46 = v20;
  sub_18BC1F7E8();
  v66 = v17;
  v67 = MEMORY[0x1E69DC110];
  v45 = v17;
  v31 = __swift_allocate_boxed_opaque_existential_0Tm(&v64);
  (*(v61 + 16))(v31, v20, v17);
  MEMORY[0x18CFFC900](&v64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D64F0);
  v43 = *(*(sub_18BC1F598() - 8) + 72);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_18BC3E400;
  v42 = *MEMORY[0x1E69DBF28];
  v32 = v55;
  v41 = *(v55 + 104);
  v33 = v54;
  v34 = v56;
  v41(v54);
  v35 = sub_18BC1F448();
  v36 = *(*(v35 - 8) + 56);
  v37 = v57;
  v36(v57, 1, 1, v35);
  v38 = v50;
  sub_18BC1F428();
  sub_18BC1F558();
  (*(v52 + 8))(v38, v53);
  v39 = *(v32 + 8);
  v39(v33, v34);
  (v41)(v33, v42, v34);
  v36(v37, 1, 1, v35);
  v40 = v58;
  sub_18BC1F528();
  sub_18BC1F4C8();
  (*(v59 + 8))(v40, v51);
  v39(v33, v34);
  sub_18BC21458();

  (*(v61 + 8))(v46, v45);
}