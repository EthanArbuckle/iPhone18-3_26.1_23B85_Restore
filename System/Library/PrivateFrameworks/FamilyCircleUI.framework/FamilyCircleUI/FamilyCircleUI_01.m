uint64_t sub_21BB539E8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA800, &unk_21BE44448);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA880, &unk_21BE44510);
  sub_21BD2B0E4();
  sub_21BD2B308();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BB53A8C()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_21BB53ADC()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 64);
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_21BB53B5C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA960, qword_21BE44750);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB56C0, qword_21BE32630);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_21BB53C98(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA960, qword_21BE44750);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB56C0, qword_21BE32630);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21BB53DD8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_21BE25B9C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_21BB53F08()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA970, &unk_21BE44888);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA978, &unk_21BE448A8);
  sub_21BD300A8();
  sub_21BD301F0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BB54048()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB54090()
{

  return swift_deallocObject();
}

uint64_t sub_21BB540D4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_21BE2946C();
  return swift_getWitnessTable();
}

uint64_t sub_21BB54128(int8x16_t *a1)
{
  v3 = a1->i64[0];
  v2 = a1->i64[1];
  sub_21BE2785C();
  v5 = vextq_s8(a1[1], a1[1], 8uLL);
  return swift_getWitnessTable();
}

uint64_t sub_21BB541B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
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
    v12 = *(a1 + *(a3 + 28) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_21BB54284(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
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
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21BB54350()
{
  type metadata accessor for StaticSelectableCellTemplate();
  sub_21BD3A4A4(&qword_27CDB7F90, type metadata accessor for StaticSelectableCellTemplate);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BB543E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AppleCashItem(0);
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

uint64_t sub_21BB544A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AppleCashItem(0);
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

uint64_t sub_21BB54558()
{
  v1 = type metadata accessor for AppleCashItemView(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v4 = type metadata accessor for AppleCashItem(0);
  v5 = v4[5];
  v6 = sub_21BE25B9C();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  v8 = *(v3 + *(v1 + 20));

  v9 = *(v3 + *(v1 + 24) + 8);

  return swift_deallocObject();
}

uint64_t sub_21BB546E0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAEA8, &qword_21BE459C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21BB5479C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAEA8, &qword_21BE459C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21BB5484C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBAE38, &qword_21BE45960);
  sub_21BD3F110(&qword_27CDBAE48, &qword_27CDBAE38, &qword_21BE45960, sub_21BD3F0E0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BB548F0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21BB549AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21BB54A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB56C0, qword_21BE32630);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21BB54B68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB56C0, qword_21BE32630);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21BB54C30()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB000, &unk_21BE45F08);
  sub_21BD4A978();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BB54CB4()
{
  v1 = sub_21BE25B9C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_21BB54DD4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_21BB54E40()
{
  if (*v0)
  {
    result = 0x6F50746369727473;
  }

  else
  {
    result = 0x64656C62616E65;
  }

  *v0;
  return result;
}

uint64_t sub_21BB54EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5EB0, &unk_21BE38920);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_21BB54F8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5EB0, &unk_21BE38920);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21BB55064()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 72);

  return swift_deallocObject();
}

uint64_t sub_21BB550E0()
{
  v1 = type metadata accessor for SharedFamilyGroceryIntroView();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_21BE26F5C();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = *(v4 + v1[6] + 8);

  v8 = v4 + v1[8];
  v9 = *(v8 + 1);

  v10 = *(v4 + v1[9] + 8);

  v11 = *(v4 + v1[10] + 8);

  v12 = v4 + v1[11];

  v13 = *(v12 + 1);

  return swift_deallocObject();
}

uint64_t sub_21BB55268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
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
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_21BB55334(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
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
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21BB553FC()
{
  type metadata accessor for StaticSelectableCellTemplate();
  sub_21BD3A4A4(&qword_27CDB7F90, type metadata accessor for StaticSelectableCellTemplate);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BB55494(uint64_t *a1)
{
  v1 = *a1;
  sub_21BE2719C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB5F0, &qword_21BE47618);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB5F8, &qword_21BE47620);
  swift_getTupleTypeMetadata3();
  sub_21BE286EC();
  swift_getWitnessTable();
  sub_21BE284FC();
  sub_21BE2719C();
  sub_21BE2719C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_21BB555EC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  type metadata accessor for NavigationControllerReader.ReaderRepresentable();
  sub_21BE2719C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_21BE2782C();
  sub_21BE2719C();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_21BB556EC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

id sub_21BB55834@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_21BD64E2C();
  *a2 = result;
  return result;
}

void sub_21BB55860(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl____lazy_storage___viewController);
  *(*a2 + OBJC_IVAR____TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl____lazy_storage___viewController) = *a1;
  v3 = v2;
}

uint64_t sub_21BB55900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB56C0, qword_21BE32630);
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
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_21BB559CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB56C0, qword_21BE32630);
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
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21BB55AA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB9A0, &qword_21BE48008);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BB55B28(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5D50, &qword_21BE36430);
  sub_21BE2719C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC520, &qword_21BE38BA0);
  sub_21BE2719C();
  sub_21BE2946C();
  swift_getTupleTypeMetadata2();
  sub_21BE286EC();
  swift_getWitnessTable();
  sub_21BE284FC();
  swift_getTupleTypeMetadata2();
  sub_21BE286EC();
  swift_getWitnessTable();
  sub_21BE2848C();

  return swift_getWitnessTable();
}

uint64_t sub_21BB55C70(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for RecoveryContactDataItem(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21BB55D1C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for RecoveryContactDataItem(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21BB55DD0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBBA48, &qword_21BE481F8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBBA50, &qword_21BE48228);
  sub_21BBC24D4();
  sub_21BD6A3DC();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BB55EA0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
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
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB60F0, qword_21BE33E00);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[13];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_21BB55FE4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7] + 8) = (a2 - 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB60F0, qword_21BE33E00);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[13];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_21BB56144()
{
  _Block_release(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_21BB56194(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21BE25B9C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB56C0, qword_21BE32630);
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
    v14 = *(a1 + a3[8]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = sub_21BE2934C();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[10];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_21BB56314(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_21BE25B9C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB56C0, qword_21BE32630);
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
    *(a1 + a4[8]) = (a2 - 1);
  }

  else
  {
    v15 = sub_21BE2934C();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[10];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_21BB56498()
{
  v1 = type metadata accessor for DisclosureModalHostingView();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = v0 + v2;
  v6 = sub_21BE25B9C();
  (*(*(v6 - 8) + 8))(v0 + v2, v6);
  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21BE26F5C();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  v10 = *(v5 + v1[6] + 8);

  v11 = *(v5 + v1[7] + 8);

  v12 = v1[10];
  v13 = sub_21BE2934C();
  (*(*(v13 - 8) + 8))(v5 + v12, v13);

  return swift_deallocObject();
}

uint64_t sub_21BB566D0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_21BB56708()
{
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_21BB56754()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_21BB56794()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBBE8, qword_21BE48850);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_21BB56830()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_21BB56918(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBD80, &unk_21BE48EB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BB569D0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8FC0, &qword_21BE49120);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21BB56A8C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8FC0, &qword_21BE49120);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21BB56B6C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_21BB56C18()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_21BB56C50()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_21BB56CDC()
{
  sub_21BE279AC();
  sub_21BD8E0DC(&qword_27CDBC0E8, MEMORY[0x277CDE278]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BB56DC0()
{

  return swift_deallocObject();
}

uint64_t sub_21BB56E14()
{
  _Block_release(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_21BB56EB0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_21BB56EEC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB56F34()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB56F74()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB5704C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB5709C()
{

  return swift_deallocObject();
}

uint64_t sub_21BB570F0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC660, &qword_21BE4AB00);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC668, &qword_21BE4AB30);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC670, &unk_21BE4AB38);
  sub_21BB3B038(&qword_27CDBC678, &qword_27CDBC668, &qword_21BE4AB30);
  sub_21BD9784C();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BB57214@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC14FamilyCircleUI26ScreentimePasscodeListener_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21BB57270(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2 + OBJC_IVAR____TtC14FamilyCircleUI26ScreentimePasscodeListener_delegate;
  swift_beginAccess();
  *(v4 + 8) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21BB572E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_21BB5739C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_21BB57410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BE278CC();
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

uint64_t sub_21BB574CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21BE278CC();
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

uint64_t sub_21BB57584()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC8B8, &qword_21BE4B558);
  sub_21BB3B038(&qword_27CDBC8D0, &qword_27CDBC8B8, &qword_21BE4B558);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BB5761C()
{
  _Block_release(*(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_21BB576FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCA10, &qword_21BE4B868);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BB5776C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCA10, &qword_21BE4B868);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21BB577E8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21BB57820()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB57860()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_21BB578B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_21BB578F0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_21BB5794C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5EB0, &unk_21BE38920);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21BB57A08(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5EB0, &unk_21BE38920);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21BB57C24()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB57C6C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB57CB8()
{
  MEMORY[0x21CF05D90](v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_21BB57CFC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB60F0, qword_21BE33E00);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_21BB57DB8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB60F0, qword_21BE33E00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21BB57E90@<X0>(uint64_t a1@<X8>)
{
  result = sub_21BE274FC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_21BB57EC4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_21BE2750C();
}

uint64_t sub_21BB57EF4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21BE2737C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21BB57F4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCE50, &qword_21BE4CC10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21BB57FB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB50C0, &qword_21BE31098);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BB58050()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBCEC8, &qword_21BE4CD30);
  sub_21BDBCF00();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BB58168(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD070, &unk_21BE4D198);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BB58248@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14FamilyCircleUI37FAPrivacyDisclosureAcknowledgmentHook_delegate;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_21BB582A8()
{
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_21BB582F4()
{
  _Block_release(*(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_21BB58360()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_21BB583AC()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 64);
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_21BB5842C()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_21BB58474()
{

  return swift_deallocObject();
}

void sub_21BB584B0(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  AgeRangeAlertFlowStore.ageRangeRequestModel.setter(v2);
}

void sub_21BB584EC(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  AgeRangeAlertFlowStore.ageRangeAlertModel.setter(v2);
}

void sub_21BB58520(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  AgeRangeAlertFlowStore.privacyVersion.setter(v2);
}

uint64_t sub_21BB58564@<X0>(void *a1@<X8>)
{
  sub_21BDC6168();
  result = sub_21BE2755C();
  *a1 = v3;
  return result;
}

uint64_t sub_21BB585C4()
{
  MEMORY[0x21CF05D90](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21BB585FC()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21BB5863C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_21BB5868C()
{

  return swift_deallocObject();
}

uint64_t sub_21BB586C4()
{

  return swift_deallocObject();
}

uint64_t sub_21BB58708()
{
  sub_21BB47CD0(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_21BB58744()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD290, &qword_21BE4D968);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD288, &qword_21BE4D960);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD280, &qword_21BE4D958);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD278, &qword_21BE4D950);
  sub_21BDD0EAC();
  sub_21BB41FA4();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BB58880()
{
  MEMORY[0x21CF05D90](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21BB588BC()
{
  v1 = sub_21BE25D1C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 24);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21BB58980()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_21BB589C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_21BB589F8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB58A58(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
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
      v13 = sub_21BE2934C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 72);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_21BB58B88(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
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
      v13 = sub_21BE2934C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 72);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21BB58CCC()
{
  v1 = type metadata accessor for StaticSelectableCellTemplate();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = v0 + v2;
  v6 = *(v0 + v2 + 8);

  v7 = v1[5];
  v8 = sub_21BE25B9C();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v2 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  MEMORY[0x21CF05D90](v5 + v1[7]);
  v10 = *(v5 + v1[8] + 8);

  v11 = (v5 + v1[10]);
  if (*v11)
  {
    v12 = v11[1];
  }

  v13 = (v5 + v1[11]);
  v14 = *v13;

  v15 = v13[1];

  v16 = *(v5 + v1[12] + 8);

  v17 = *(v5 + v1[15] + 8);

  v18 = *(v5 + v1[17] + 8);

  v19 = v1[18];
  v20 = sub_21BE2934C();
  (*(*(v20 - 8) + 8))(v5 + v19, v20);

  return swift_deallocObject();
}

uint64_t sub_21BB58ED4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_21BB58FB8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  if (*(v0 + 72))
  {
    v4 = *(v0 + 80);
  }

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
  v5 = *(v0 + 136);

  v6 = *(v0 + 152);

  return swift_deallocObject();
}

uint64_t sub_21BB5904C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  if (*(v0 + 56))
  {
    v3 = *(v0 + 64);
  }

  v4 = *(v0 + 80);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
  v5 = *(v0 + 136);

  v6 = *(v0 + 152);

  return swift_deallocObject();
}

uint64_t sub_21BB59128()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  if (*(v0 + 72))
  {
    v4 = *(v0 + 80);
  }

  v5 = *(v0 + 96);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 104));
  v6 = *(v0 + 152);

  return swift_deallocObject();
}

uint64_t sub_21BB59204(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_21BC54C6C(v4);
}

uint64_t sub_21BB59230()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for FamilyNavigationHost();
  v4 = *(*(v3 - 8) + 64);
  v5 = (v0 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80)));
  v6 = *v5;

  v7 = *(v5 + 1);

  v8 = *(v5 + 3);

  v9 = *(v3 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB68C0, &qword_21BE4E940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_21BE2693C();
    (*(*(v10 - 8) + 8))(&v5[v9], v10);
  }

  else
  {
    v11 = *&v5[v9];
  }

  v12 = *(v3 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDC10, &unk_21BE35940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_21BE2690C();
    (*(*(v13 - 8) + 8))(&v5[v12], v13);
  }

  else
  {
    v14 = *&v5[v12];
  }

  return swift_deallocObject();
}

uint64_t sub_21BB593DC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDBD810, &qword_21BE4EA08);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 40);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB68D0, qword_21BE4EA10);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_21BB59518(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDBD810, &qword_21BE4EA08);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB68D0, qword_21BE4EA10);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21BB59654(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for NavigationManager();
  sub_21BDE3AFC(&qword_27CDB69B0, type metadata accessor for NavigationManager);
  swift_getOpaqueTypeMetadata2();
  sub_21BE2693C();
  swift_getOpaqueTypeConformance2();
  sub_21BDE3AFC(&qword_27CDBD800, MEMORY[0x277D402D0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BB59790()
{
  v1 = sub_21BE2693C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_21BB59828()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB59978()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7F88, &qword_21BE3AA38);
  sub_21BC5E0E4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BB599E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD910, &qword_21BE4EFF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BB59A5C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_21BB59AFC()
{

  return swift_deallocObject();
}

uint64_t sub_21BB59B34()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21BB59B74()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return swift_deallocObject();
}

uint64_t sub_21BB59BB4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7020, &qword_21BE39520);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBDAD0, qword_21BE4F398);
  sub_21BB3B038(&qword_27CDBC4E0, &qword_27CDB7020, &qword_21BE39520);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBDAC8, &qword_21BE4F390);
  sub_21BE2760C();
  sub_21BB3B038(&qword_27CDBDAD8, &qword_27CDBDAC8, &qword_21BE4F390);
  sub_21BDEF9DC();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BB59D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
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
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_21BB59E0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
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
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21BB59EDC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB59F64()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_21BB59FB0()
{

  return swift_deallocObject();
}

uint64_t sub_21BB59FF4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_21BB5A03C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB5A07C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDCA0, &qword_21BE4FF60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21BB5A108()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 80);

  v3 = *(v0 + 96);

  v4 = *(v0 + 112);

  v5 = *(v0 + 128);

  return swift_deallocObject();
}

uint64_t sub_21BB5A1C8()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 64);

  sub_21BCBC920(*(v0 + 80), *(v0 + 88));

  return swift_deallocObject();
}

uint64_t sub_21BB5A21C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBDE00, &qword_21BE502B8);
  sub_21BDFFCE8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BB5A280(uint64_t *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBDE70, &qword_21BE50370);
  swift_getTupleTypeMetadata3();
  sub_21BE286EC();
  swift_getWitnessTable();
  sub_21BE2848C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC520, &qword_21BE38BA0);
  sub_21BE2719C();
  swift_getWitnessTable();
  sub_21BB3B038(&qword_27CDB7970, &qword_27CDBC520, &qword_21BE38BA0);
  swift_getWitnessTable();
  sub_21BE2846C();
  sub_21BE2719C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BB5A454()
{

  return swift_deallocObject();
}

uint64_t sub_21BB5A4BC()
{
  MEMORY[0x21CF05D90](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21BB5A4F4()
{

  return swift_deallocObject();
}

uint64_t sub_21BB5A538()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_21BB5A5E0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21BB5A618()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB5A658()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB5A7F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_21BB5A828()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_21BB5A884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
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
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_21BB5A950(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
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
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21BB5AA70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
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
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_21BB5AB3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
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
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21BB5AC0C()
{

  return swift_deallocObject();
}

uint64_t sub_21BB5AC44()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB5ACD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
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
    v12 = *(a1 + *(a3 + 32) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_21BB5ADA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
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
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21BB5AEC4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_21BB5B1F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSTFamilyCircleViewControllerProviderClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!ScreenTimeSettingsUILibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __ScreenTimeSettingsUILibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_2782F29A8;
    v7 = 0;
    ScreenTimeSettingsUILibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (ScreenTimeSettingsUILibraryCore_frameworkLibrary)
    {
      if (!v5[0])
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
  result = objc_getClass("STFamilyCircleViewControllerProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSTFamilyCircleViewControllerProviderClass_block_invoke_cold_1();
  }

  getSTFamilyCircleViewControllerProviderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __ScreenTimeSettingsUILibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ScreenTimeSettingsUILibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_21BB5C508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getHUAddPeopleViewControllerClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!HomeUILibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __HomeUILibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_2782F2A50;
    v7 = 0;
    HomeUILibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (HomeUILibraryCore_frameworkLibrary)
    {
      if (!v5[0])
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
  result = objc_getClass("HUAddPeopleViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getHUAddPeopleViewControllerClass_block_invoke_cold_1();
  }

  getHUAddPeopleViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __HomeUILibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  HomeUILibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getHFHomeURLSchemeSymbolLoc_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!HomeLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __HomeLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_2782F2A68;
    v8 = 0;
    HomeLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v6[0];
    v2 = HomeLibraryCore_frameworkLibrary;
    if (HomeLibraryCore_frameworkLibrary)
    {
      if (!v6[0])
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

  v2 = HomeLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "HFHomeURLScheme");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHFHomeURLSchemeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __HomeLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  HomeLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_21BB5D7B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __getGDPersonEntityTagEventIDSetClass_block_invoke(uint64_t a1)
{
  IntelligencePlatformLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("GDPersonEntityTagEventIDSet");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getGDPersonEntityTagEventIDSetClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getGDPersonEntityTagEventIDSetClass_block_invoke_cold_1();
    IntelligencePlatformLibrary();
  }
}

void IntelligencePlatformLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!IntelligencePlatformLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __IntelligencePlatformLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_2782F2B18;
    v4 = 0;
    IntelligencePlatformLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v2[0];
  if (!IntelligencePlatformLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __IntelligencePlatformLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  IntelligencePlatformLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getGDPersonEntityTaggingStatefulFeedbackClass_block_invoke(uint64_t a1)
{
  IntelligencePlatformLibrary();
  result = objc_getClass("GDPersonEntityTaggingStatefulFeedback");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getGDPersonEntityTaggingStatefulFeedbackClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getGDPersonEntityTaggingStatefulFeedbackClass_block_invoke_cold_1();
    return __getGDConfigurationClass_block_invoke(v3);
  }

  return result;
}

Class __getGDConfigurationClass_block_invoke(uint64_t a1)
{
  IntelligencePlatformLibrary();
  result = objc_getClass("GDConfiguration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getGDConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getGDConfigurationClass_block_invoke_cold_1();
    return __getGDEntityTaggingServiceClass_block_invoke(v3);
  }

  return result;
}

FAImageMarqueeViewControllerWrapper *__getGDEntityTaggingServiceClass_block_invoke(uint64_t a1)
{
  IntelligencePlatformLibrary();
  result = objc_getClass("GDEntityTaggingService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getGDEntityTaggingServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getGDEntityTaggingServiceClass_block_invoke_cold_1();
    return [(FAImageMarqueeViewControllerWrapper *)v3 initWithFamilyCircle:v4, v5];
  }

  return result;
}

void sub_21BB61398(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v29 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21BB617A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21BB61B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getHKHealthStoreClass_block_invoke(uint64_t a1)
{
  HealthKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("HKHealthStore");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKHealthStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getHKHealthStoreClass_block_invoke_cold_1();
    HealthKitLibrary();
  }
}

void HealthKitLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!HealthKitLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __HealthKitLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_2782F2E68;
    v4 = 0;
    HealthKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v2[0];
  if (!HealthKitLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __HealthKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  HealthKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void __getHKMedicalIDStoreClass_block_invoke(uint64_t a1)
{
  HealthKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("HKMedicalIDStore");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKMedicalIDStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getHKMedicalIDStoreClass_block_invoke_cold_1();
    OUTLINED_FUNCTION_0();
  }
}

void sub_21BB68E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_21BB69D2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21BB69FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21BB6A3B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getSOSUtilitiesClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSOSUtilitiesClass_softClass;
  v7 = getSOSUtilitiesClass_softClass;
  if (!getSOSUtilitiesClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getSOSUtilitiesClass_block_invoke;
    v3[3] = &unk_2782F2988;
    v3[4] = &v4;
    __getSOSUtilitiesClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21BB6A944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _EmergencyContactsDidChangeNotification()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:*MEMORY[0x277D08118] object:0];
}

uint64_t getkHKMedicalIDEmergencyContactsDidChangeNotification()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkHKMedicalIDEmergencyContactsDidChangeNotificationSymbolLoc_ptr;
  v7 = getkHKMedicalIDEmergencyContactsDidChangeNotificationSymbolLoc_ptr;
  if (!getkHKMedicalIDEmergencyContactsDidChangeNotificationSymbolLoc_ptr)
  {
    v1 = HealthKitLibrary_0();
    v5[3] = dlsym(v1, "kHKMedicalIDEmergencyContactsDidChangeNotification");
    getkHKMedicalIDEmergencyContactsDidChangeNotificationSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    v3 = +[FAHomeUISoftLinking getURLScheme];
    _Block_object_dispose(&v4, 8);
    _Unwind_Resume(v3);
  }

  return *v0;
}

void sub_21BB6ADC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getHKHealthStoreClass_block_invoke_0(uint64_t a1)
{
  HealthKitLibrary_0();
  result = objc_getClass("HKHealthStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKHealthStoreClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getHKHealthStoreClass_block_invoke_cold_1();
    return HealthKitLibrary_0();
  }

  return result;
}

uint64_t HealthKitLibrary_0()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!HealthKitLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __HealthKitLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2782F3118;
    v6 = 0;
    HealthKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = HealthKitLibraryCore_frameworkLibrary_0;
  v1 = v4[0];
  if (!HealthKitLibraryCore_frameworkLibrary_0)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __HealthKitLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  HealthKitLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getHKMedicalIDStoreClass_block_invoke_0(uint64_t a1)
{
  HealthKitLibrary_0();
  result = objc_getClass("HKMedicalIDStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKMedicalIDStoreClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getHKMedicalIDStoreClass_block_invoke_cold_1();
    return __get_HKMedicalIDDataClass_block_invoke(v3);
  }

  return result;
}

void __getMIUIDisplayConfigurationClass_block_invoke(uint64_t a1)
{
  MedicalIDUILibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MIUIDisplayConfiguration");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMIUIDisplayConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getMIUIDisplayConfigurationClass_block_invoke_cold_1();
    MedicalIDUILibrary();
  }
}

void MedicalIDUILibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!MedicalIDUILibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __MedicalIDUILibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_2782F3130;
    v4 = 0;
    MedicalIDUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v2[0];
  if (!MedicalIDUILibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __MedicalIDUILibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MedicalIDUILibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getMIUIMedicalIDViewControllerClass_block_invoke(uint64_t a1)
{
  MedicalIDUILibrary();
  result = objc_getClass("MIUIMedicalIDViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMIUIMedicalIDViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMIUIMedicalIDViewControllerClass_block_invoke_cold_1();
    return __getSOSUtilitiesClass_block_invoke(v3);
  }

  return result;
}

Class __getSOSUtilitiesClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!SOSLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __SOSLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_2782F3148;
    v7 = 0;
    SOSLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (SOSLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
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
  result = objc_getClass("SOSUtilities");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSOSUtilitiesClass_block_invoke_cold_1();
  }

  getSOSUtilitiesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __SOSLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SOSLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getkHKMedicalIDEmergencyContactsDidChangeNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HealthKitLibrary_0();
  result = dlsym(v2, "kHKMedicalIDEmergencyContactsDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkHKMedicalIDEmergencyContactsDidChangeNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getHKHealthChecklistUtilitiesClass_block_invoke(uint64_t a1)
{
  HealthKitLibrary_0();
  result = objc_getClass("HKHealthChecklistUtilities");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKHealthChecklistUtilitiesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getHKHealthChecklistUtilitiesClass_block_invoke_cold_1();
    return [(FAAgeRangeViewControllerProvider *)v3 ageRangeViewControllerForAccount:v4, v5];
  }

  return result;
}

void sub_21BB6DF8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getSTChildSetupControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSTChildSetupControllerClass_softClass;
  v7 = getSTChildSetupControllerClass_softClass;
  if (!getSTChildSetupControllerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getSTChildSetupControllerClass_block_invoke;
    v3[3] = &unk_2782F2988;
    v3[4] = &v4;
    __getSTChildSetupControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21BB6E0F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSTChildSetupControllerClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!ScreenTimeSettingsUILibraryCore_frameworkLibrary_0)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __ScreenTimeSettingsUILibraryCore_block_invoke_0;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_2782F3220;
    v7 = 0;
    ScreenTimeSettingsUILibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v5[0];
    if (ScreenTimeSettingsUILibraryCore_frameworkLibrary_0)
    {
      if (!v5[0])
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
  result = objc_getClass("STChildSetupController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSTChildSetupControllerClass_block_invoke_cold_1();
  }

  getSTChildSetupControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __ScreenTimeSettingsUILibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ScreenTimeSettingsUILibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_21BB70F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getHKHealthStoreClass_block_invoke_1(uint64_t a1)
{
  HealthKitLibrary_1();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("HKHealthStore");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKHealthStoreClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getHKHealthStoreClass_block_invoke_cold_1();
    HealthKitLibrary_1();
  }
}

void HealthKitLibrary_1()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!HealthKitLibraryCore_frameworkLibrary_1)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __HealthKitLibraryCore_block_invoke_1;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_2782F34B8;
    v4 = 0;
    HealthKitLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  v0 = v2[0];
  if (!HealthKitLibraryCore_frameworkLibrary_1)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __HealthKitLibraryCore_block_invoke_1(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  HealthKitLibraryCore_frameworkLibrary_1 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getHKMedicalIDStoreClass_block_invoke_1(uint64_t a1)
{
  HealthKitLibrary_1();
  result = objc_getClass("HKMedicalIDStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKMedicalIDStoreClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getHKMedicalIDStoreClass_block_invoke_cold_1();
    return __get_HKMedicalIDDataClass_block_invoke_0(v3);
  }

  return result;
}

Class __getSTSetupClientClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!ScreenTimeCoreLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __ScreenTimeCoreLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_2782F34D0;
    v7 = 0;
    ScreenTimeCoreLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (ScreenTimeCoreLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
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
  result = objc_getClass("STSetupClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSTSetupClientClass_block_invoke_cold_1();
  }

  getSTSetupClientClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __ScreenTimeCoreLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ScreenTimeCoreLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void OUTLINED_FUNCTION_2_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t _AAUIHandleFamilyDidChangeNotification(uint64_t a1, void *a2)
{
  v3 = s_knownObservers;
  v6.length = CFArrayGetCount(s_knownObservers);
  v6.location = 0;
  result = CFArrayContainsValue(v3, v6, a2);
  if (result)
  {

    return [a2 _didReceiveNotification];
  }

  return result;
}

uint64_t getINFamilyDidChangeNotification()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getINFamilyDidChangeNotificationSymbolLoc_ptr;
  v7 = getINFamilyDidChangeNotificationSymbolLoc_ptr;
  if (!getINFamilyDidChangeNotificationSymbolLoc_ptr)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getINFamilyDidChangeNotificationSymbolLoc_block_invoke;
    v3[3] = &unk_2782F2988;
    v3[4] = &v4;
    __getINFamilyDidChangeNotificationSymbolLoc_block_invoke(v3);
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    v2 = +[FAHomeUISoftLinking getURLScheme];
    _Block_object_dispose(&v4, 8);
    _Unwind_Resume(v2);
  }

  return *v0;
}

void *__getINFamilyDidChangeNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!iCloudNotificationLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __iCloudNotificationLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_2782F3540;
    v8 = 0;
    iCloudNotificationLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v6[0];
    v2 = iCloudNotificationLibraryCore_frameworkLibrary;
    if (iCloudNotificationLibraryCore_frameworkLibrary)
    {
      if (!v6[0])
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

  v2 = iCloudNotificationLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "INFamilyDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getINFamilyDidChangeNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __iCloudNotificationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  iCloudNotificationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_21BB761B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21BB77370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 48));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21BB78600(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_21BB79310(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 80));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_21BB79CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21BB7A4E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21BB7A810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getPKPeerPaymentAssociatedAccountsControllerClass_block_invoke(uint64_t a1)
{
  PassKitUILibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PKPeerPaymentAssociatedAccountsController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPKPeerPaymentAssociatedAccountsControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getPKPeerPaymentAssociatedAccountsControllerClass_block_invoke_cold_1();
    PassKitUILibrary();
  }
}

void PassKitUILibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!PassKitUILibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __PassKitUILibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_2782F3830;
    v4 = 0;
    PassKitUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v2[0];
  if (!PassKitUILibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __PassKitUILibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PassKitUILibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getPKPeerPaymentAssociatedAccountPresentationContextClass_block_invoke(uint64_t a1)
{
  PassKitUILibrary();
  result = objc_getClass("PKPeerPaymentAssociatedAccountPresentationContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPKPeerPaymentAssociatedAccountPresentationContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getPKPeerPaymentAssociatedAccountPresentationContextClass_block_invoke_cold_1();
    return __getPKPassbookSettingsDefaultBehaviorClass_block_invoke(v3);
  }

  return result;
}

Class __getPKPassbookSettingsDefaultBehaviorClass_block_invoke(uint64_t a1)
{
  PassKitUILibrary();
  result = objc_getClass("PKPassbookSettingsDefaultBehavior");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPKPassbookSettingsDefaultBehaviorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getPKPassbookSettingsDefaultBehaviorClass_block_invoke_cold_1();
    return __getPKPaymentPassDetailViewControllerClass_block_invoke(v3);
  }

  return result;
}

FASharedSubscriptionSpecifierProvider *__getPKPaymentPassDetailViewControllerClass_block_invoke(uint64_t a1)
{
  PassKitUILibrary();
  result = objc_getClass("PKPaymentPassDetailViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPKPaymentPassDetailViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getPKPaymentPassDetailViewControllerClass_block_invoke_cold_1();
    return [(FASharedSubscriptionSpecifierProvider *)v3 initWithAppleAccount:v4 presenter:v5, v6];
  }

  return result;
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x20u);
}

void sub_21BB7F894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSTRootViewControllerProviderClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!ScreenTimeSettingsUILibraryCore_frameworkLibrary_1)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __ScreenTimeSettingsUILibraryCore_block_invoke_1;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_2782F3A40;
    v7 = 0;
    ScreenTimeSettingsUILibraryCore_frameworkLibrary_1 = _sl_dlopen();
    v2 = v5[0];
    if (ScreenTimeSettingsUILibraryCore_frameworkLibrary_1)
    {
      if (!v5[0])
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
  result = objc_getClass("STRootViewControllerProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSTRootViewControllerProviderClass_block_invoke_cold_1();
  }

  getSTRootViewControllerProviderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __ScreenTimeSettingsUILibraryCore_block_invoke_1(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ScreenTimeSettingsUILibraryCore_frameworkLibrary_1 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_21BB81E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_21BB8262C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21BB82D50(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_21BB85880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21BB85BCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21BB87D28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21BB88B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __PassKitUILibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PassKitUILibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_21BB8BB30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 224), 8);
  _Block_object_dispose((v33 - 176), 8);
  _Block_object_dispose((v33 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21BB8DB28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *__getINFamilyDidChangeNotificationSymbolLoc_block_invoke_0(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!iCloudNotificationLibraryCore_frameworkLibrary_0)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __iCloudNotificationLibraryCore_block_invoke_0;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_2782F3F98;
    v8 = 0;
    iCloudNotificationLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v3 = v6[0];
    v2 = iCloudNotificationLibraryCore_frameworkLibrary_0;
    if (iCloudNotificationLibraryCore_frameworkLibrary_0)
    {
      if (!v6[0])
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

  v2 = iCloudNotificationLibraryCore_frameworkLibrary_0;
LABEL_5:
  result = dlsym(v2, "INFamilyDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getINFamilyDidChangeNotificationSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __iCloudNotificationLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  iCloudNotificationLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _FALogSystem()
{
  if (_FALogSystem_onceToken != -1)
  {
    _FALogSystem_cold_1();
  }

  v1 = _FALogSystem_log;

  return v1;
}

id _FAAgeAttestationLogSystem()
{
  if (_FAAgeAttestationLogSystem_onceToken != -1)
  {
    _FAAgeAttestationLogSystem_cold_1();
  }

  v1 = _FAAgeAttestationLogSystem_log;

  return v1;
}

id _FASignpostLogSystem()
{
  if (_FASignpostLogSystem_onceToken != -1)
  {
    _FASignpostLogSystem_cold_1();
  }

  v1 = _FASignpostLogSystem_log;

  return v1;
}

os_signpost_id_t _FASignpostCreate(NSObject *a1)
{
  v1 = os_signpost_id_generate(a1);
  mach_continuous_time();
  return v1;
}

unint64_t _FASignpostGetNanoseconds(uint64_t a1, uint64_t a2)
{
  if (_FASignpostGetNanoseconds_onceToken != -1)
  {
    _FASignpostGetNanoseconds_cold_1();
  }

  v3 = mach_continuous_time();
  LODWORD(v4) = _FASignpostGetNanoseconds_timebase_info;
  LODWORD(v5) = *algn_27CDBE4EC;
  return (v4 / v5 * (v3 - a2));
}

__CFString *FALogStringForQualityOfService(uint64_t a1)
{
  if (a1 <= 16)
  {
    if (a1 == -1)
    {
      return @"Default";
    }

    if (a1 == 9)
    {
      return @"Background";
    }
  }

  else
  {
    switch(a1)
    {
      case 17:
        return @"Utility";
      case 33:
        return @"UserInteractive";
      case 25:
        return @"UserInitiated";
    }
  }

  return @"Unknown";
}

void sub_21BB91A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSTCommunicationLimitsViewControllerProviderClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!ScreenTimeSettingsUILibraryCore_frameworkLibrary_2)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __ScreenTimeSettingsUILibraryCore_block_invoke_2;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_2782F40C0;
    v7 = 0;
    ScreenTimeSettingsUILibraryCore_frameworkLibrary_2 = _sl_dlopen();
    v2 = v5[0];
    if (ScreenTimeSettingsUILibraryCore_frameworkLibrary_2)
    {
      if (!v5[0])
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
  result = objc_getClass("STCommunicationLimitsViewControllerProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSTCommunicationLimitsViewControllerProviderClass_block_invoke_cold_1();
  }

  getSTCommunicationLimitsViewControllerProviderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __ScreenTimeSettingsUILibraryCore_block_invoke_2(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ScreenTimeSettingsUILibraryCore_frameworkLibrary_2 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_21BB96494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21BB96E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getSTManagementStateClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSTManagementStateClass_softClass;
  v7 = getSTManagementStateClass_softClass;
  if (!getSTManagementStateClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getSTManagementStateClass_block_invoke;
    v3[3] = &unk_2782F2988;
    v3[4] = &v4;
    __getSTManagementStateClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21BB9C644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21BB9D31C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21BB9D618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21BB9D83C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21BB9DD58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getSOSUtilitiesClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSOSUtilitiesClass_softClass_0;
  v7 = getSOSUtilitiesClass_softClass_0;
  if (!getSOSUtilitiesClass_softClass_0)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getSOSUtilitiesClass_block_invoke_0;
    v3[3] = &unk_2782F2988;
    v3[4] = &v4;
    __getSOSUtilitiesClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21BB9E240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getHKHealthStoreClass_block_invoke_2(uint64_t a1)
{
  HealthKitLibrary_2();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("HKHealthStore");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKHealthStoreClass_softClass_2 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getHKHealthStoreClass_block_invoke_cold_1();
    HealthKitLibrary_2();
  }
}

void HealthKitLibrary_2()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!HealthKitLibraryCore_frameworkLibrary_2)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __HealthKitLibraryCore_block_invoke_2;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_2782F4348;
    v4 = 0;
    HealthKitLibraryCore_frameworkLibrary_2 = _sl_dlopen();
  }

  v0 = v2[0];
  if (!HealthKitLibraryCore_frameworkLibrary_2)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __HealthKitLibraryCore_block_invoke_2(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  HealthKitLibraryCore_frameworkLibrary_2 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getHKMedicalIDStoreClass_block_invoke_2(uint64_t a1)
{
  HealthKitLibrary_2();
  result = objc_getClass("HKMedicalIDStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKMedicalIDStoreClass_softClass_2 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getHKMedicalIDStoreClass_block_invoke_cold_1();
    return __get_HKMedicalIDDataClass_block_invoke_1(v3);
  }

  return result;
}

void __getSTSetupClientClass_block_invoke_0(uint64_t a1)
{
  ScreenTimeCoreLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("STSetupClient");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSTSetupClientClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getSTSetupClientClass_block_invoke_cold_1();
    ScreenTimeCoreLibrary();
  }
}

void ScreenTimeCoreLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!ScreenTimeCoreLibraryCore_frameworkLibrary_0)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __ScreenTimeCoreLibraryCore_block_invoke_0;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_2782F4360;
    v4 = 0;
    ScreenTimeCoreLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = v2[0];
  if (!ScreenTimeCoreLibraryCore_frameworkLibrary_0)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __ScreenTimeCoreLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ScreenTimeCoreLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getSTManagementStateClass_block_invoke(uint64_t a1)
{
  ScreenTimeCoreLibrary();
  result = objc_getClass("STManagementState");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSTManagementStateClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getSTManagementStateClass_block_invoke_cold_1();
    return __getMIUIDisplayConfigurationClass_block_invoke_0(v3);
  }

  return result;
}

void __getMIUIDisplayConfigurationClass_block_invoke_0(uint64_t a1)
{
  MedicalIDUILibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MIUIDisplayConfiguration");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMIUIDisplayConfigurationClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getMIUIDisplayConfigurationClass_block_invoke_cold_1();
    MedicalIDUILibrary_0();
  }
}

void MedicalIDUILibrary_0()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!MedicalIDUILibraryCore_frameworkLibrary_0)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __MedicalIDUILibraryCore_block_invoke_0;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_2782F4378;
    v4 = 0;
    MedicalIDUILibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = v2[0];
  if (!MedicalIDUILibraryCore_frameworkLibrary_0)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __MedicalIDUILibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MedicalIDUILibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getMIUIMedicalIDViewControllerClass_block_invoke_0(uint64_t a1)
{
  MedicalIDUILibrary_0();
  result = objc_getClass("MIUIMedicalIDViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMIUIMedicalIDViewControllerClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMIUIMedicalIDViewControllerClass_block_invoke_cold_1();
    return __getSOSUtilitiesClass_block_invoke_0(v3);
  }

  return result;
}

Class __getSOSUtilitiesClass_block_invoke_0(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!SOSLibraryCore_frameworkLibrary_0)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __SOSLibraryCore_block_invoke_0;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_2782F4390;
    v7 = 0;
    SOSLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v5[0];
    if (SOSLibraryCore_frameworkLibrary_0)
    {
      if (!v5[0])
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
  result = objc_getClass("SOSUtilities");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSOSUtilitiesClass_block_invoke_cold_1();
  }

  getSOSUtilitiesClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __SOSLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SOSLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void OUTLINED_FUNCTION_0_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_21BB9FA5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21BBA0770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_21BBA1D58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location, char a26)
{
  objc_destroyWeak((v26 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v27 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_21BBA1FE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5558, &qword_21BE32438);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v12[-v6];
  *v7 = sub_21BE2770C();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5580, &qword_21BE32450) + 44)];
  sub_21BE26EEC();
  v13 = a1;
  v14 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5560, &qword_21BE32440);
  sub_21BB3B038(&qword_27CDB5568, &qword_27CDB5558, &qword_21BE32438);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5570, &qword_21BE32448);
  v10 = sub_21BB3B038(&qword_27CDB5578, &qword_27CDB5570, &qword_21BE32448);
  v15 = v9;
  v16 = v10;
  swift_getOpaqueTypeConformance2();
  sub_21BE2817C();
  return sub_21BBA57B0(v7);
}

uint64_t sub_21BBA21AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21BE278CC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5570, &qword_21BE32448);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13[-v9];
  sub_21BE2789C();
  v14 = a1;
  v15 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5588, &qword_21BE32458);
  sub_21BBA5820();
  sub_21BE26EDC();
  v11 = sub_21BB3B038(&qword_27CDB5578, &qword_27CDB5570, &qword_21BE32448);
  MEMORY[0x21CF02AD0](v10, v6, v11);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_21BBA2370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_21BB41FA4();

  sub_21BE2845C();
  v9 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5588, &qword_21BE32458) + 36));
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55B0, &qword_21BE3FF90) + 28);
  v11 = *MEMORY[0x277CDF420];
  v12 = sub_21BE26E7C();
  (*(*(v12 - 8) + 104))(v9 + v10, v11, v12);
  result = swift_getKeyPath();
  *v9 = result;
  return result;
}

uint64_t sub_21BBA2514()
{
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5550, &qword_21BE32430);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5558, &qword_21BE32438);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5560, &qword_21BE32440);
  sub_21BB3B038(&qword_27CDB5568, &qword_27CDB5558, &qword_21BE32438);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5570, &qword_21BE32448);
  sub_21BB3B038(&qword_27CDB5578, &qword_27CDB5570, &qword_21BE32448);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_21BE271BC();
}

unint64_t sub_21BBA2694()
{
  result = qword_27CDB5050;
  if (!qword_27CDB5050)
  {
    sub_21BE2715C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB5050);
  }

  return result;
}

uint64_t sub_21BBA26E0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v33 = a6;
    v34 = a7;
    v35 = v8;
    v32 = sub_21BE2715C();
    v17 = *(v32 - 8);
    v18 = *(v17 + 64);
    MEMORY[0x28223BE20](v32);
    v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!a1)
    {
      v37[0] = 0;
      v37[1] = 0xE000000000000000;
      sub_21BE295EC();

      strcpy(v37, "View.task @ ");
      BYTE5(v37[1]) = 0;
      HIWORD(v37[1]) = -5120;
      MEMORY[0x21CF03CA0](a3, a4);
      MEMORY[0x21CF03CA0](58, 0xE100000000000000);
      v36 = a5;
      v25 = sub_21BE2992C();
      MEMORY[0x21CF03CA0](v25);
    }

    v26 = sub_21BE28DAC();
    v27 = *(*(v26 - 8) + 64);
    MEMORY[0x28223BE20](v26);
    (*(v29 + 16))(&v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), a2);

    sub_21BE2714C();
    sub_21BBA3854(v35, a8, &qword_27CDB5060, &qword_21BE31038);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5068, &unk_21BE31040);
    return (*(v17 + 32))(a8 + *(v30 + 36), v20, v32);
  }

  else
  {
    v21 = (a8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5070, &qword_21BE38B20) + 36));
    v22 = *(sub_21BE2701C() + 20);
    v23 = sub_21BE28DAC();
    (*(*(v23 - 8) + 16))(&v21[v22], a2, v23);
    *v21 = a6;
    *(v21 + 1) = a7;
    return sub_21BBA3854(v8, a8, &qword_27CDB5060, &qword_21BE31038);
  }
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

uint64_t sub_21BBA2A64@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v36 = a6;
    v37 = a7;
    v38 = v8;
    v35 = sub_21BE2715C();
    v17 = *(v35 - 8);
    v18 = *(v17 + 64);
    MEMORY[0x28223BE20](v35);
    v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!a1)
    {
      v40[0] = 0;
      v40[1] = 0xE000000000000000;
      sub_21BE295EC();

      strcpy(v40, "View.task @ ");
      BYTE5(v40[1]) = 0;
      HIWORD(v40[1]) = -5120;
      MEMORY[0x21CF03CA0](a3, a4);
      MEMORY[0x21CF03CA0](58, 0xE100000000000000);
      v39 = a5;
      v27 = sub_21BE2992C();
      MEMORY[0x21CF03CA0](v27);
    }

    v28 = sub_21BE28DAC();
    v29 = *(*(v28 - 8) + 64);
    MEMORY[0x28223BE20](v28);
    (*(v31 + 16))(&v34 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), a2);

    sub_21BE2714C();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5078, &unk_21BE31050);
    (*(*(v32 - 8) + 16))(a8, v38, v32);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5080, &qword_21BE3EDA0);
    return (*(v17 + 32))(a8 + *(v33 + 36), v20, v35);
  }

  else
  {
    v21 = (a8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5088, &unk_21BE31060) + 36));
    v22 = *(sub_21BE2701C() + 20);
    v23 = sub_21BE28DAC();
    (*(*(v23 - 8) + 16))(&v21[v22], a2, v23);
    *v21 = a6;
    *(v21 + 1) = a7;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5078, &unk_21BE31050);
    v25 = *(*(v24 - 8) + 16);

    return v25(a8, v8, v24);
  }
}

uint64_t sub_21BBA2E20@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v33 = a6;
    v34 = a7;
    v35 = v8;
    v32 = sub_21BE2715C();
    v17 = *(v32 - 8);
    v18 = *(v17 + 64);
    MEMORY[0x28223BE20](v32);
    v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!a1)
    {
      v37[0] = 0;
      v37[1] = 0xE000000000000000;
      sub_21BE295EC();

      strcpy(v37, "View.task @ ");
      BYTE5(v37[1]) = 0;
      HIWORD(v37[1]) = -5120;
      MEMORY[0x21CF03CA0](a3, a4);
      MEMORY[0x21CF03CA0](58, 0xE100000000000000);
      v36 = a5;
      v25 = sub_21BE2992C();
      MEMORY[0x21CF03CA0](v25);
    }

    v26 = sub_21BE28DAC();
    v27 = *(*(v26 - 8) + 64);
    MEMORY[0x28223BE20](v26);
    (*(v29 + 16))(&v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), a2);

    sub_21BE2714C();
    sub_21BBA3854(v35, a8, &qword_27CDB5090, &qword_21BE43430);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5098, &qword_21BE31070);
    return (*(v17 + 32))(a8 + *(v30 + 36), v20, v32);
  }

  else
  {
    v21 = (a8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB50A0, &qword_21BE31078) + 36));
    v22 = *(sub_21BE2701C() + 20);
    v23 = sub_21BE28DAC();
    (*(*(v23 - 8) + 16))(&v21[v22], a2, v23);
    *v21 = a6;
    *(v21 + 1) = a7;
    return sub_21BBA3854(v8, a8, &qword_27CDB5090, &qword_21BE43430);
  }
}

uint64_t sub_21BBA315C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v36 = a6;
    v37 = a7;
    v38 = v8;
    v35 = sub_21BE2715C();
    v17 = *(v35 - 8);
    v18 = *(v17 + 64);
    MEMORY[0x28223BE20](v35);
    v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!a1)
    {
      v40[0] = 0;
      v40[1] = 0xE000000000000000;
      sub_21BE295EC();

      strcpy(v40, "View.task @ ");
      BYTE5(v40[1]) = 0;
      HIWORD(v40[1]) = -5120;
      MEMORY[0x21CF03CA0](a3, a4);
      MEMORY[0x21CF03CA0](58, 0xE100000000000000);
      v39 = a5;
      v27 = sub_21BE2992C();
      MEMORY[0x21CF03CA0](v27);
    }

    v28 = sub_21BE28DAC();
    v29 = *(*(v28 - 8) + 64);
    MEMORY[0x28223BE20](v28);
    (*(v31 + 16))(&v34 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), a2);

    sub_21BE2714C();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB50A8, &qword_21BE31080);
    (*(*(v32 - 8) + 16))(a8, v38, v32);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB50B0, &qword_21BE31088);
    return (*(v17 + 32))(a8 + *(v33 + 36), v20, v35);
  }

  else
  {
    v21 = (a8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB50B8, &qword_21BE31090) + 36));
    v22 = *(sub_21BE2701C() + 20);
    v23 = sub_21BE28DAC();
    (*(*(v23 - 8) + 16))(&v21[v22], a2, v23);
    *v21 = a6;
    *(v21 + 1) = a7;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB50A8, &qword_21BE31080);
    v25 = *(*(v24 - 8) + 16);

    return v25(a8, v8, v24);
  }
}

uint64_t sub_21BBA3518@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v33 = a6;
    v34 = a7;
    v35 = v8;
    v32 = sub_21BE2715C();
    v17 = *(v32 - 8);
    v18 = *(v17 + 64);
    MEMORY[0x28223BE20](v32);
    v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!a1)
    {
      v37[0] = 0;
      v37[1] = 0xE000000000000000;
      sub_21BE295EC();

      strcpy(v37, "View.task @ ");
      BYTE5(v37[1]) = 0;
      HIWORD(v37[1]) = -5120;
      MEMORY[0x21CF03CA0](a3, a4);
      MEMORY[0x21CF03CA0](58, 0xE100000000000000);
      v36 = a5;
      v25 = sub_21BE2992C();
      MEMORY[0x21CF03CA0](v25);
    }

    v26 = sub_21BE28DAC();
    v27 = *(*(v26 - 8) + 64);
    MEMORY[0x28223BE20](v26);
    (*(v29 + 16))(&v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), a2);

    sub_21BE2714C();
    sub_21BBA3854(v35, a8, &qword_27CDB50C0, &qword_21BE31098);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB50C8, &unk_21BE310A0);
    return (*(v17 + 32))(a8 + *(v30 + 36), v20, v32);
  }

  else
  {
    v21 = (a8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB50D0, &unk_21BE4CC50) + 36));
    v22 = *(sub_21BE2701C() + 20);
    v23 = sub_21BE28DAC();
    (*(*(v23 - 8) + 16))(&v21[v22], a2, v23);
    *v21 = a6;
    *(v21 + 1) = a7;
    return sub_21BBA3854(v8, a8, &qword_27CDB50C0, &qword_21BE31098);
  }
}

uint64_t sub_21BBA3854(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_21BBA38C4@<X0>(int a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  v6 = *(v3 + 48);
  v7 = *(v3 + 56);
  v8 = *(v3 + 16);
  *a3 = *v3;
  *(a3 + 16) = v8;
  v9 = *(v3 + 48);
  *(a3 + 32) = *(v3 + 32);
  *(a3 + 48) = v9;
  *(a3 + 64) = a1;
  *(a3 + 68) = a2;
  sub_21BBA4A38(v4, v5, *(v3 + 40) & 1);
}

uint64_t sub_21BBA3938()
{
  v1 = *v0;
  sub_21BE29ACC();
  MEMORY[0x21CF04C80](v1);
  return sub_21BE29B0C();
}

uint64_t sub_21BBA3980()
{
  v1 = *v0;
  sub_21BE29ACC();
  MEMORY[0x21CF04C80](v1);
  return sub_21BE29B0C();
}

uint64_t sub_21BBA39CC()
{
  v1 = *v0;
  sub_21BE29ACC();
  sub_21BE29AFC();
  return sub_21BE29B0C();
}

uint64_t sub_21BBA3A40()
{
  v1 = *v0;
  sub_21BE29ACC();
  sub_21BE29AFC();
  return sub_21BE29B0C();
}

_DWORD *sub_21BBA3A98@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_21BBA3AA8(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x21CF04040](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_21BBA3AFC(uint64_t a1, uint64_t a2)
{
  v3 = sub_21BE28EAC();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_21BBA3B54(uint64_t a1)
{
  v2 = sub_21BBA4B1C(&qword_27CDB5220, type metadata accessor for AgeRangeError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_21BBA3BC0(uint64_t a1)
{
  v2 = sub_21BBA4B1C(&qword_27CDB5220, type metadata accessor for AgeRangeError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_21BBA3C30(uint64_t a1)
{
  v2 = sub_21BBA4B1C(&qword_27CDB5258, type metadata accessor for AgeRangeError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_21BBA3C9C(uint64_t a1, id *a2)
{
  result = sub_21BE289EC();
  *a2 = 0;
  return result;
}

uint64_t sub_21BBA3D14(uint64_t a1, id *a2)
{
  v3 = sub_21BE289FC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_21BBA3D94@<X0>(uint64_t *a1@<X8>)
{
  sub_21BE28A0C();
  v2 = sub_21BE289CC();

  *a1 = v2;
  return result;
}

BOOL sub_21BBA3E14(void *a1, uint64_t *a2)
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

void *sub_21BBA3E44@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_21BBA3E70@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_21BBA3F58(uint64_t a1)
{
  v2 = sub_21BBA4B1C(&qword_27CDB5258, type metadata accessor for AgeRangeError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_21BBA3FC4(uint64_t a1)
{
  v2 = sub_21BBA4B1C(&qword_27CDB5258, type metadata accessor for AgeRangeError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_21BBA4030(void *a1, uint64_t a2)
{
  v4 = sub_21BBA4B1C(&qword_27CDB5258, type metadata accessor for AgeRangeError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_21BBA40E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21BBA4B1C(&qword_27CDB5258, type metadata accessor for AgeRangeError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_21BBA4160()
{
  v2 = *v0;
  sub_21BE29ACC();
  sub_21BE2895C();
  return sub_21BE29B0C();
}

uint64_t sub_21BBA41C0()
{
  sub_21BBA4B1C(&qword_27CDB5270, type metadata accessor for FACircleEventType);
  sub_21BBA4B1C(&qword_27CDB5278, type metadata accessor for FACircleEventType);

  return sub_21BE297FC();
}

uint64_t sub_21BBA427C()
{
  sub_21BBA4B1C(&qword_27CDB55F0, type metadata accessor for Name);
  sub_21BBA4B1C(&qword_27CDB55F8, type metadata accessor for Name);

  return sub_21BE297FC();
}

uint64_t sub_21BBA4338()
{
  sub_21BBA4B1C(&qword_27CDB5530, type metadata accessor for Dataclass);
  sub_21BBA4B1C(&qword_27CDB5538, type metadata accessor for Dataclass);

  return sub_21BE297FC();
}

uint64_t sub_21BBA43F4()
{
  sub_21BBA4B1C(&unk_280BD6960, type metadata accessor for AIDAServiceType);
  sub_21BBA4B1C(&qword_27CDB5528, type metadata accessor for AIDAServiceType);

  return sub_21BE297FC();
}

uint64_t sub_21BBA44B0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_21BD8AD30();

  *a1 = v2;
  return result;
}

uint64_t sub_21BBA44F0()
{
  v2 = *v0;
  sub_21BBA4B1C(&qword_27CDB5260, type metadata accessor for RequestContext);
  sub_21BBA4B1C(&qword_27CDB5268, type metadata accessor for RequestContext);
  return sub_21BE297FC();
}

uint64_t sub_21BBA45AC()
{
  sub_21BBA4B1C(&qword_27CDB5510, type metadata accessor for FAUpdateMemberFlagKey);
  sub_21BBA4B1C(&unk_27CDB5518, type metadata accessor for FAUpdateMemberFlagKey);

  return sub_21BE297FC();
}

uint64_t sub_21BBA4668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BBA4B1C(&qword_27CDB5258, type metadata accessor for AgeRangeError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_21BBA46EC()
{
  v2 = *v0;
  sub_21BBA4B1C(&qword_27CDB5500, type metadata accessor for RequestEntryPoint);
  sub_21BBA4B1C(&qword_27CDB5508, type metadata accessor for RequestEntryPoint);
  return sub_21BE297FC();
}

uint64_t sub_21BBA47A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_21BE289CC();

  *a2 = v5;
  return result;
}

uint64_t sub_21BBA47F0()
{
  sub_21BBA4B1C(&qword_27CDB54F0, type metadata accessor for OpenExternalURLOptionsKey);
  sub_21BBA4B1C(&qword_27CDB54F8, type metadata accessor for OpenExternalURLOptionsKey);

  return sub_21BE297FC();
}

uint64_t sub_21BBA48AC()
{
  v1 = *v0;
  v2 = sub_21BE28A0C();
  v3 = MEMORY[0x21CF03D20](v2);

  return v3;
}

uint64_t sub_21BBA48E8()
{
  v1 = *v0;
  sub_21BE28A0C();
  sub_21BE28ABC();
}

uint64_t sub_21BBA493C()
{
  v1 = *v0;
  sub_21BE28A0C();
  sub_21BE29ACC();
  sub_21BE28ABC();
  v2 = sub_21BE29B0C();

  return v2;
}

uint64_t sub_21BBA49B0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_21BE28A0C();
  v6 = v5;
  if (v4 == sub_21BE28A0C() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_21BE2995C();
  }

  return v9 & 1;
}

uint64_t sub_21BBA4A38(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_21BBA4B1C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21BBA4F24()
{
  result = qword_27CDB5248;
  if (!qword_27CDB5248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB5248);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_21BBA50B4(uint64_t a1, int a2)
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

uint64_t sub_21BBA50D4(uint64_t result, int a2, int a3)
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

uint64_t sub_21BBA5694(uint64_t *a1, int a2)
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

uint64_t sub_21BBA56DC(uint64_t result, int a2, int a3)
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

uint64_t sub_21BBA57B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5558, &qword_21BE32438);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21BBA5820()
{
  result = qword_27CDB5590;
  if (!qword_27CDB5590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5588, &qword_21BE32458);
    sub_21BB3B038(&qword_27CDB5598, &unk_27CDB55A0, &unk_21BE32460);
    sub_21BB3B038(&unk_27CDBC4F0, &unk_27CDB55B0, &qword_21BE3FF90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB5590);
  }

  return result;
}

uint64_t sub_21BBA5904()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_21BBA5940(uint64_t a1, unint64_t *a2)
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

uint64_t type metadata accessor for SharedPasswordsFlowView()
{
  result = qword_27CDB56C8;
  if (!qword_27CDB56C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BBA5B48()
{
  sub_21BBA5C1C(319, &qword_27CDB56D8, type metadata accessor for ChecklistStateVars);
  if (v0 <= 0x3F)
  {
    sub_21BBA5C1C(319, &qword_280BD6A40, MEMORY[0x277CDD848]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for SharedPasswordsItemModel();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21BBA5C1C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21BE26E8C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21BBA5C8C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21BE2754C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for SharedPasswordsFlowView();
  sub_21BBA6B58(v1 + *(v12 + 20), v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_21BE26F5C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_21BE28FEC();
    v16 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_21BBA5E7C(uint64_t a1)
{
  v2 = sub_21BE2754C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v20 - v9);
  v11 = sub_21BE26F5C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SharedPasswordsFlowView();
  sub_21BBA6B58(a1 + *(v16 + 20), v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 32))(v15, v10, v11);
  }

  else
  {
    v17 = *v10;
    sub_21BE28FEC();
    v18 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
  }

  sub_21BE26F4C();
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_21BBA60F0(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_21BE26A4C();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_21BE26F5C();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  sub_21BE28D7C();
  v1[9] = sub_21BE28D6C();
  v9 = sub_21BE28D0C();
  v1[10] = v9;
  v1[11] = v8;

  return MEMORY[0x2822009F8](sub_21BBA6240, v9, v8);
}

uint64_t sub_21BBA6240()
{
  if ([*(*(v0[2] + *(type metadata accessor for SharedPasswordsFlowView() + 24)) + 24) isKeychainSyncEnabled])
  {
    v2 = v0[8];
    v1 = v0[9];
    v3 = v0[2];

    sub_21BCE3398();
    sub_21BBA5C8C(v2);
    sub_21BE26F4C();
    v4 = v0[5];
    (*(v0[7] + 8))(v0[8], v0[6]);

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = swift_task_alloc();
    v0[12] = v7;
    *v7 = v0;
    v7[1] = sub_21BBA638C;

    return sub_21BCE3690();
  }
}

uint64_t sub_21BBA638C()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v6 = *v0;

  v3 = *(v1 + 88);
  v4 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_21BBA64AC, v4, v3);
}

uint64_t sub_21BBA64AC()
{
  v1 = v0[9];

  sub_21BE28DFC();
  v2 = v0[8];
  v3 = v0[2];
  sub_21BCE3398();
  sub_21BBA5C8C(v2);
  sub_21BE26F4C();
  v4 = v0[8];
  v5 = v0[5];
  (*(v0[7] + 8))(v4, v0[6]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_21BBA65D4@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_21BBA673C(v2, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_21BBA67A0(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  sub_21BBA673C(v2, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = swift_allocObject();
  sub_21BBA67A0(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v6);
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB56E0, &unk_21BE326D0) + 36));
  v10 = v9 + *(sub_21BE2701C() + 20);
  result = sub_21BE28D8C();
  *v9 = &unk_21BE326C8;
  v9[1] = v8;
  *a2 = sub_21BBA6804;
  a2[1] = v7;
  return result;
}

uint64_t sub_21BBA673C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedPasswordsFlowView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BBA67A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedPasswordsFlowView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BBA6804()
{
  v1 = *(type metadata accessor for SharedPasswordsFlowView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21BBA5E7C(v2);
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for SharedPasswordsFlowView();
  v2 = *(*(v1 - 8) + 64);
  v3 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));
  v4 = *v3;

  v5 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21BE26F5C();
    (*(*(v6 - 8) + 8))(&v3[v5], v6);
  }

  else
  {
    v7 = *&v3[v5];
  }

  v8 = *&v3[*(v1 + 24)];

  return swift_deallocObject();
}

uint64_t sub_21BBA6998()
{
  v2 = *(type metadata accessor for SharedPasswordsFlowView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21BBA6A64;

  return sub_21BBA60F0(v0 + v3);
}

uint64_t sub_21BBA6A64()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_21BBA6B58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21BBA6BC8()
{
  result = qword_27CDB56E8;
  if (!qword_27CDB56E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB56E0, &unk_21BE326D0);
    sub_21BBA6C54();
    sub_21BBA6CA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB56E8);
  }

  return result;
}

unint64_t sub_21BBA6C54()
{
  result = qword_27CDB56F0;
  if (!qword_27CDB56F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB56F0);
  }

  return result;
}

unint64_t sub_21BBA6CA8()
{
  result = qword_27CDB5058;
  if (!qword_27CDB5058)
  {
    sub_21BE2701C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB5058);
  }

  return result;
}

id static DefaultSTRemotePasscodeController.activateRemotePINUI()()
{
  v0 = objc_opt_self();

  return [v0 activateRemotePINUI];
}

id sub_21BBA6D90()
{
  v0 = objc_opt_self();

  return [v0 activateRemotePINUI];
}

uint64_t getEnumTagSinglePayload for DefaultSTRemotePasscodeController(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for DefaultSTRemotePasscodeController(_WORD *result, int a2, int a3)
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

uint64_t sub_21BBA6FD0()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_21BBA7030(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_21BBA70C8;
}

void sub_21BBA70C8(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
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

void *sub_21BBA7194()
{
  v1 = OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2__presenter;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_21BBA7240(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2__presenter;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_21BBA7298(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2__presenter;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id FAFamilySettingsViewControllerV2.__allocating_init(appleAccount:grandSlamSigner:familyCircle:pictureStore:accountManager:peopleDiscoveryService:)(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  swift_getObjectType();

  return sub_21BBB46D4(a1, a2, a3, a4, a5, a6);
}

id FAFamilySettingsViewControllerV2.init(appleAccount:grandSlamSigner:familyCircle:pictureStore:accountManager:peopleDiscoveryService:)(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  swift_getObjectType();

  return sub_21BBB475C(a1, a2, a3, a4, a5, a6, v6);
}

uint64_t sub_21BBA7464(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  sub_21BE28D7C();
  *(v2 + 48) = sub_21BE28D6C();
  v4 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BBA74FC, v4, v3);
}

uint64_t sub_21BBA74FC()
{
  v2 = v0[5];
  v1 = v0[6];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_21BBABB40();
  }

  v5 = v0[1];

  return v5();
}

id sub_21BBA76B4()
{
  v1 = [v0 parentViewController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 parentViewController];

    if (v3)
    {
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4)
      {
        v5 = [v4 navigationItem];
LABEL_8:
        v7 = v5;

        return v7;
      }
    }
  }

  v6 = [v0 parentViewController];
  if (v6)
  {
    v3 = v6;
    v5 = [v6 navigationItem];
    goto LABEL_8;
  }

  v10.receiver = v0;
  v10.super_class = type metadata accessor for FAFamilySettingsViewControllerV2();
  v9 = objc_msgSendSuper2(&v10, sel_navigationItem);

  return v9;
}

void sub_21BBA77CC()
{
  v1 = v0;
  v2 = type metadata accessor for FamilyLandingPageMainView();
  v3 = *(*(v2 - 1) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v127 = &v121 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v121 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v121 - v9;
  v11 = type metadata accessor for FAFamilySettingsViewControllerV2();
  v134.receiver = v0;
  v134.super_class = v11;
  objc_msgSendSuper2(&v134, sel_viewDidLoad);
  sub_21BE2638C();
  v12 = [v0 navigationItem];
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v128 = objc_opt_self();
  v129 = ObjCClassFromMetadata;
  v14 = [v128 bundleForClass_];
  sub_21BE2599C();

  v15 = sub_21BE289CC();

  [v12 setBackButtonTitle_];

  v16 = [v1 navigationItem];
  [v16 setLargeTitleDisplayMode_];

  v17 = *&v1[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_viewModel];
  v18 = *&v1[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_locationViewModel];
  v122 = *&v1[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_pictureStore];
  v19 = *&v1[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_appleAccount];
  v123 = *&v1[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_accountManager];
  v124 = v18;
  v125 = *&v1[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_appleCardFamilySettingsViewModel];
  v20 = objc_allocWithZone(FAChecklistStore);
  v126 = v19;
  v21 = [v20 init];
  LOBYTE(v131) = 1;
  v22 = v21;
  sub_21BE283EC();
  v23 = v133;
  v10[40] = v132;
  *(v10 + 6) = v23;
  v24 = v2[7];
  *&v10[v24] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5740, &qword_21BE327B0);
  swift_storeEnumTagMultiPayload();
  v25 = v2[8];
  *&v10[v25] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDC10, &unk_21BE35940);
  swift_storeEnumTagMultiPayload();
  v26 = &v10[v2[10]];
  LOBYTE(v131) = 0;
  sub_21BE283EC();
  v27 = v133;
  *v26 = v132;
  *(v26 + 1) = v27;
  v28 = v2[13];
  swift_unknownObjectWeakInit();
  v29 = &v10[v2[14]];
  LOBYTE(v131) = 0;
  sub_21BE283EC();
  v30 = v133;
  *v29 = v132;
  *(v29 + 1) = v30;
  v31 = &v10[v2[18]];
  LOBYTE(v131) = 0;
  sub_21BE283EC();
  v32 = v133;
  *v31 = v132;
  *(v31 + 1) = v32;
  v33 = &v10[v2[20]];
  *v33 = sub_21BBDC524;
  *(v33 + 1) = 0;
  v33[16] = 0;
  v34 = &v10[v2[21]];
  v35 = type metadata accessor for ChecklistStateVars();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  v131 = ChecklistStateVars.init()();
  sub_21BE283EC();
  v38 = v133;
  *v34 = v132;
  v34[1] = v38;
  v39 = &v10[v2[22]];
  v131 = 0;
  sub_21BE283EC();
  v40 = v133;
  *v39 = v132;
  v39[1] = v40;
  v41 = swift_allocObject();
  *(v41 + 16) = v17;
  *v10 = sub_21BBB510C;
  *(v10 + 1) = v41;
  v10[16] = 0;
  v42 = swift_allocObject();
  *(v42 + 16) = v22;
  v43 = &v10[v2[15]];
  *v43 = sub_21BBB510C;
  *(v43 + 1) = v42;
  v43[16] = 0;
  v44 = &v10[v2[17]];
  *v44 = sub_21BBFE74C;
  *(v44 + 1) = 0;
  v44[16] = 0;
  v45 = qword_280BD76F0;
  v46 = v22;
  v47 = v17;
  if (v45 != -1)
  {
    swift_once();
  }

  v48 = &v10[v2[9]];
  type metadata accessor for ServicesStore();
  sub_21BBB5114(&qword_27CDB5750, type metadata accessor for ServicesStore);

  *v48 = sub_21BE270CC();
  v48[1] = v49;
  v50 = type metadata accessor for FamilySignpost();
  v51 = *(v50 + 48);
  v52 = *(v50 + 52);
  swift_allocObject();
  *&v10[v2[23]] = sub_21BC84D18(0x20676E69646E614CLL, 0xEC00000065676170, "initToView", 10, 2);
  v53 = &v10[v2[16]];
  *v53 = sub_21BBFE770;
  *(v53 + 1) = 0;
  v53[16] = 0;
  v54 = &v10[v2[11]];
  sub_21BB3A2A4(0, &qword_280BD8A10, off_2782F0CC0);
  sub_21BB3CC48(&qword_280BD8A20, &qword_280BD8A10, off_2782F0CC0);
  v55 = v122;
  *v54 = sub_21BE270CC();
  v54[1] = v56;
  swift_unknownObjectWeakAssign();
  v57 = v123;
  *&v10[v2[12]] = v123;
  type metadata accessor for LocationViewModel();
  sub_21BBB5114(&qword_27CDBDC20, type metadata accessor for LocationViewModel);
  v58 = v57;
  v59 = v124;
  *(v10 + 3) = sub_21BE270CC();
  *(v10 + 4) = v60;
  v61 = &v10[v2[19]];
  type metadata accessor for AppleCardFamilySettingsViewModel();
  sub_21BBB5114(&unk_27CDB5760, type metadata accessor for AppleCardFamilySettingsViewModel);
  v62 = v125;
  v63 = sub_21BE270CC();
  v65 = v64;

  *v61 = v63;
  v61[1] = v65;
  *&v10[v2[24]] = v1;
  sub_21BBB515C(v10, v8);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDC30, &unk_21BE327F0);
  v67 = objc_allocWithZone(v66);
  v68 = MEMORY[0x277D85000];
  sub_21BBB515C(v8, v67 + *((*MEMORY[0x277D85000] & *v67) + 0x70));
  sub_21BBB515C(v8, v127);
  sub_21BBB5114(&qword_27CDB5770, type metadata accessor for FamilyLandingPageMainView);
  v69 = v1;
  v132 = sub_21BE2852C();
  v70 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5778, &qword_21BE4F700));
  *(v67 + *((*v68 & *v67) + 0x60)) = sub_21BE2774C();
  v71 = (v67 + *((*v68 & *v67) + 0x68));
  *v71 = 0;
  v71[1] = 0;
  v130.receiver = v67;
  v130.super_class = v66;
  v72 = objc_msgSendSuper2(&v130, sel_initWithNibName_bundle_, 0, 0);
  sub_21BBB51C0(v8);

  sub_21BBB51C0(v10);
  v73 = [objc_opt_self() currentDevice];
  v74 = [v73 userInterfaceIdiom];

  v75 = &qword_27CDB5000;
  v76 = *&v69[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_addMemberButton];
  if (v74 == 1)
  {
    v78 = v128;
    v77 = v129;
    v79 = [v128 bundleForClass_];
    sub_21BE2599C();

    v75 = &qword_27CDB5000;
    v80 = sub_21BE289CC();

    [v76 setTitle_];
  }

  else
  {
    v81 = sub_21BE289CC();
    v82 = [objc_opt_self() systemImageNamed_];

    [v76 setImage_];
    v78 = v128;
    v77 = v129;
  }

  v83 = v75[240];
  [*&v69[v83] setTarget_];
  [*&v69[v83] setAction_];
  v84 = *&v69[v83];
  v85 = [v78 bundleForClass_];
  sub_21BE2599C();

  v86 = sub_21BE289CC();

  [v84 setAccessibilityLabel_];

  [v69 addChildViewController_];
  v87 = [v69 view];
  if (!v87)
  {
    __break(1u);
    goto LABEL_19;
  }

  v88 = v87;
  v89 = [v72 view];
  if (!v89)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v90 = v89;
  [v88 addSubview_];

  v91 = [v72 view];
  if (!v91)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v92 = v91;
  [v91 setTranslatesAutoresizingMaskIntoConstraints_];

  v93 = [v72 view];
  if (!v93)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v94 = v93;
  v95 = [v93 topAnchor];

  v96 = [v69 view];
  if (!v96)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v97 = v96;
  v98 = [v96 topAnchor];

  v99 = [v95 constraintEqualToAnchor_];
  [v99 setActive_];

  v100 = [v72 view];
  if (!v100)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v101 = v100;
  v102 = [v100 leadingAnchor];

  v103 = [v69 view];
  if (!v103)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v104 = v103;
  v105 = [v103 leadingAnchor];

  v106 = [v102 constraintEqualToAnchor_];
  [v106 setActive_];

  v107 = [v72 view];
  if (!v107)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v108 = v107;
  v109 = [v107 trailingAnchor];

  v110 = [v69 view];
  if (!v110)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v111 = v110;
  v112 = [v110 trailingAnchor];

  v113 = [v109 constraintEqualToAnchor_];
  [v113 setActive_];

  v114 = [v72 view];
  if (!v114)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v115 = v114;
  v116 = [v114 bottomAnchor];

  v117 = [v69 view];
  if (v117)
  {
    v118 = v117;
    v119 = [v117 bottomAnchor];

    v120 = [v116 constraintEqualToAnchor_];
    [v120 setActive_];

    [v72 didMoveToParentViewController_];
    [*&v69[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_peopleDiscoveryService] startMonitoringProximity];

    return;
  }

LABEL_28:
  __break(1u);
}

void sub_21BBA86A8(char a1)
{
  v3 = [v1 navigationItem];
  if (a1)
  {
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = [objc_opt_self() bundleForClass_];
    v6 = 0x800000021BE563D0;
    sub_21BE2599C();

    v7 = sub_21BE289CC();
  }

  else
  {
    v7 = sub_21BE289CC();
  }

  [v3 setTitle_];
}

uint64_t sub_21BBA87D4(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v20 - v8;
  v10 = *&v3[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_grandSlamSigner];
  *&v3[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_grandSlamSigner] = a1;
  v11 = a1;

  v12 = *&v3[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_appleAccount];
  *&v3[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_appleAccount] = a2;
  v13 = a2;

  v21.value.super.isa = v13;
  result = ACAccount.isSameUser(_:)(v21);
  if ((result & 1) == 0)
  {
    v15 = sub_21BE28DAC();
    (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
    sub_21BE28D7C();
    v16 = v3;
    v17 = sub_21BE28D6C();
    v18 = swift_allocObject();
    v19 = MEMORY[0x277D85700];
    v18[2] = v17;
    v18[3] = v19;
    v18[4] = v16;
    sub_21BBA932C(0, 0, v9, &unk_21BE32A70, v18);
  }

  return result;
}

uint64_t sub_21BBA8948()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800) - 8) + 64) + 15;
  v0[3] = swift_task_alloc();
  v0[4] = sub_21BE28D7C();
  v0[5] = sub_21BE28D6C();
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_21BBA8A2C;

  return sub_21BBA9C6C();
}

uint64_t sub_21BBA8A2C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  v8 = *v0;

  v6 = sub_21BE28D0C();
  *(v1 + 56) = v6;
  *(v1 + 64) = v5;

  return MEMORY[0x2822009F8](sub_21BBA8B70, v6, v5);
}

uint64_t sub_21BBA8B70()
{
  if (qword_280BD76F0 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v0[9] = qword_280BDCB98;
  v0[10] = sub_21BE28D6C();
  v3 = sub_21BE28D0C();
  v0[11] = v3;
  v0[12] = v2;

  return MEMORY[0x2822009F8](sub_21BBA8C38, v3, v2);
}

void sub_21BBA8C38()
{
  v1 = *(v0[9] + 40);
  v0[13] = v1;
  if (v1)
  {
    v2 = v0[3];
    v3 = sub_21BE28DAC();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v4 = *(MEMORY[0x277D07FF8] + 4);
    v7 = (*MEMORY[0x277D07FF8] + MEMORY[0x277D07FF8]);

    v5 = swift_task_alloc();
    v0[14] = v5;
    *v5 = v0;
    v5[1] = sub_21BBA8D4C;
    v6 = v0[3];

    v7(v0 + 2, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BBA8D4C()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 112);
  v5 = *v1;

  v6 = *(v2 + 104);
  v7 = *(v2 + 24);
  if (v0)
  {

    sub_21BB3A4CC(v7, &qword_27CDB5790, &qword_21BE32800);
    v8 = *(v3 + 88);
    v9 = *(v3 + 96);
    v10 = sub_21BBA8FB4;
  }

  else
  {
    sub_21BB3A4CC(v7, &qword_27CDB5790, &qword_21BE32800);

    v8 = *(v3 + 88);
    v9 = *(v3 + 96);
    v10 = sub_21BBA8EDC;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_21BBA8EDC()
{
  v1 = v0[10];

  v2 = v0[2];

  v3 = v0[7];
  v4 = v0[8];

  return MEMORY[0x2822009F8](sub_21BBA8F48, v3, v4);
}

uint64_t sub_21BBA8F48()
{
  v1 = v0[5];
  v2 = v0[3];

  v3 = v0[1];

  return v3();
}

uint64_t sub_21BBA8FB4()
{
  v1 = v0[10];

  v2 = v0[7];
  v3 = v0[8];

  return MEMORY[0x2822009F8](sub_21BBB7E9C, v2, v3);
}

uint64_t sub_21BBA9018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_21BBA3854(a3, v27 - v11, &qword_27CDB5790, &qword_21BE32800);
  v13 = sub_21BE28DAC();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_21BB3A4CC(v12, &qword_27CDB5790, &qword_21BE32800);
  }

  else
  {
    sub_21BE28D9C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_21BE28D0C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_21BE28A8C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB58F0, &qword_21BE32A98);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_21BB3A4CC(a3, &qword_27CDB5790, &qword_21BE32800);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21BB3A4CC(a3, &qword_27CDB5790, &qword_21BE32800);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB58F0, &qword_21BE32A98);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_21BBA932C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_21BBA3854(a3, v27 - v11, &qword_27CDB5790, &qword_21BE32800);
  v13 = sub_21BE28DAC();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_21BB3A4CC(v12, &qword_27CDB5790, &qword_21BE32800);
  }

  else
  {
    sub_21BE28D9C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_21BE28D0C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_21BE28A8C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_21BB3A4CC(a3, &qword_27CDB5790, &qword_21BE32800);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21BB3A4CC(a3, &qword_27CDB5790, &qword_21BE32800);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_21BBA962C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_21BBA3854(a3, v27 - v11, &qword_27CDB5790, &qword_21BE32800);
  v13 = sub_21BE28DAC();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_21BB3A4CC(v12, &qword_27CDB5790, &qword_21BE32800);
  }

  else
  {
    sub_21BE28D9C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_21BE28D0C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v27[0] = a3;
      v21 = sub_21BE28A8C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;
      sub_21BB3A2A4(0, &unk_27CDB5910, 0x277D08230);

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_21BB3A4CC(v27[0], &qword_27CDB5790, &qword_21BE32800);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21BB3A4CC(a3, &qword_27CDB5790, &qword_21BE32800);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_21BB3A2A4(0, &unk_27CDB5910, 0x277D08230);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_21BBA9958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_21BBA3854(a3, v27 - v11, &qword_27CDB5790, &qword_21BE32800);
  v13 = sub_21BE28DAC();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_21BB3A4CC(v12, &qword_27CDB5790, &qword_21BE32800);
  }

  else
  {
    sub_21BE28D9C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_21BE28D0C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_21BE28A8C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB58D0, &qword_21BE50610);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_21BB3A4CC(a3, &qword_27CDB5790, &qword_21BE32800);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21BB3A4CC(a3, &qword_27CDB5790, &qword_21BE32800);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB58D0, &qword_21BE50610);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_21BBA9C6C()
{
  v1[6] = v0;
  v2 = sub_21BE26A4C();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  sub_21BE28D7C();
  v1[11] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  v1[12] = v6;
  v1[13] = v5;

  return MEMORY[0x2822009F8](sub_21BBA9D6C, v6, v5);
}

uint64_t sub_21BBA9D6C()
{
  v1 = v0[10];
  sub_21BE2614C();
  v2 = sub_21BE26A2C();
  v3 = sub_21BE28FCC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21BB35000, v2, v3, "FAFamilySettingsViewControllerV2 reloading family", v4, 2u);
    MEMORY[0x21CF05C50](v4, -1, -1);
  }

  v5 = v0[10];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[6];

  v9 = *(v7 + 8);
  v0[14] = v9;
  v9(v5, v6);
  sub_21BBAB960(0);
  v10 = *(v8 + OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_circleStore + 24);
  v11 = *(v8 + OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_circleStore + 32);
  __swift_project_boxed_opaque_existential_1Tm((v8 + OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_circleStore), v10);
  v12 = *(v11 + 80);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  v0[15] = v14;
  *v14 = v0;
  v14[1] = sub_21BBA9F48;

  return v16(v10, v11);
}

uint64_t sub_21BBA9F48(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v7 = *(v4 + 96);
    v8 = *(v4 + 104);
    v9 = sub_21BBAA194;
  }

  else
  {

    v7 = *(v4 + 96);
    v8 = *(v4 + 104);
    v9 = sub_21BBAA070;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_21BBAA070()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 48);

  sub_21BBABB40();
  v3 = [*(v0 + 48) navigationItem];
  v4 = [v3 rightBarButtonItem];

  if (v4)
  {
    v5 = *(v0 + 48);

    [*&v5[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_activityIndicatorView] stopAnimating];
    [*&v5[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_activityIndicatorViewForAdd] stopAnimating];
    v6 = [v5 view];
    if (v6)
    {
      v7 = v6;
      [v6 setUserInteractionEnabled_];
    }

    v8 = *(v0 + 48);
    sub_21BBABB40();
  }

  v10 = *(v0 + 72);
  v9 = *(v0 + 80);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_21BBAA194()
{
  v35 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);

  sub_21BE2614C();
  v4 = v1;
  v5 = sub_21BE26A2C();
  v6 = sub_21BE28FDC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 128);
    v8 = *(v0 + 64);
    v32 = *(v0 + 72);
    v33 = *(v0 + 112);
    v9 = *(v0 + 56);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v34 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v13 = *(v0 + 16);
    v12 = *(v0 + 24);
    v14 = *(v0 + 32);
    v15 = sub_21BE29A5C();
    v17 = sub_21BB3D81C(v15, v16, &v34);

    *(v10 + 4) = v17;
    _os_log_impl(&dword_21BB35000, v5, v6, "Error fetching family information: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x21CF05C50](v11, -1, -1);
    MEMORY[0x21CF05C50](v10, -1, -1);

    v33(v32, v9);
  }

  else
  {
    v18 = *(v0 + 112);
    v20 = *(v0 + 64);
    v19 = *(v0 + 72);
    v21 = *(v0 + 56);

    v18(v19, v21);
  }

  v22 = [*(v0 + 48) navigationItem];
  v23 = [v22 rightBarButtonItem];

  if (v23)
  {
    v24 = *(v0 + 48);

    [*&v24[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_activityIndicatorView] stopAnimating];
    [*&v24[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_activityIndicatorViewForAdd] stopAnimating];
    v25 = [v24 view];
    if (v25)
    {
      v26 = v25;
      [v25 setUserInteractionEnabled_];
    }

    v27 = *(v0 + 48);
    sub_21BBABB40();
  }

  v29 = *(v0 + 72);
  v28 = *(v0 + 80);

  v30 = *(v0 + 8);

  return v30();
}

void sub_21BBAA430(char a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for FAFamilySettingsViewControllerV2();
  objc_msgSendSuper2(&v5, sel_viewWillAppear_, a1 & 1);
  sub_21BBABB40();
  v3 = [v1 navigationItem];
  v4 = sub_21BE289CC();
  [v3 setTitle_];
}

uint64_t sub_21BBAA56C(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - v6;
  v8 = sub_21BE25FCC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FAFamilySettingsViewControllerV2();
  v24.receiver = v2;
  v24.super_class = v13;
  objc_msgSendSuper2(&v24, sel_viewDidAppear_, a1 & 1);
  v14 = *&v2[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_familySettingsHelper];
  v15 = [v2 navigationController];
  [v14 setNavigationController_];

  v16 = *&v2[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_timeToView];
  result = sub_21BC852D8();
  if (!*&v2[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_disclosureViewController])
  {
    (*(v9 + 104))(v12, *MEMORY[0x277D07F28], v8);
    v18 = MEMORY[0x21CF01150](v12);
    result = (*(v9 + 8))(v12, v8);
    if (v18)
    {
      v19 = sub_21BE28DAC();
      (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
      sub_21BE28D7C();
      v20 = v2;
      v21 = sub_21BE28D6C();
      v22 = swift_allocObject();
      v23 = MEMORY[0x277D85700];
      v22[2] = v21;
      v22[3] = v23;
      v22[4] = v20;
      sub_21BBA932C(0, 0, v7, &unk_21BE32810, v22);
    }
  }

  return result;
}

uint64_t sub_21BBAA7EC()
{
  v0[2] = sub_21BE28D7C();
  v0[3] = sub_21BE28D6C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21BBAA898;

  return sub_21BBAA9D4();
}

uint64_t sub_21BBAA898()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BBB7ECC, v5, v4);
}

uint64_t sub_21BBAA9D4()
{
  v1[23] = v0;
  v2 = sub_21BE26A4C();
  v1[24] = v2;
  v3 = *(v2 - 8);
  v1[25] = v3;
  v4 = *(v3 + 64) + 15;
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB56C0, qword_21BE32630) - 8) + 64) + 15;
  v1[30] = swift_task_alloc();
  v6 = type metadata accessor for DisclosureModalHostingView();
  v1[31] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v1[32] = swift_task_alloc();
  v8 = sub_21BE25B9C();
  v1[33] = v8;
  v9 = *(v8 - 8);
  v1[34] = v9;
  v10 = *(v9 + 64) + 15;
  v1[35] = swift_task_alloc();
  sub_21BE28D7C();
  v1[36] = sub_21BE28D6C();
  v12 = sub_21BE28D0C();
  v1[37] = v12;
  v1[38] = v11;

  return MEMORY[0x2822009F8](sub_21BBAABB0, v12, v11);
}

uint64_t sub_21BBAABB0()
{
  v1 = v0[23];
  v2 = OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_disclosureViewController;
  v0[39] = OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_disclosureViewController;
  if (*(v1 + v2))
  {
    v3 = v0[36];
    v4 = v0[26];

    sub_21BE2614C();
    v5 = sub_21BE26A2C();
    v6 = sub_21BE28FDC();
    v7 = os_log_type_enabled(v5, v6);
    v9 = v0[25];
    v8 = v0[26];
    v10 = v0[24];
    if (v7)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_21BB35000, v5, v6, "Disclosure view not being presented", v11, 2u);
      MEMORY[0x21CF05C50](v11, -1, -1);
    }

    (*(v9 + 8))(v8, v10);
    v12 = v0[35];
    v13 = v0[32];
    v15 = v0[29];
    v14 = v0[30];
    v17 = v0[27];
    v16 = v0[28];
    v18 = v0[26];

    v19 = v0[1];

    return v19();
  }

  else
  {
    v21 = [objc_allocWithZone(MEMORY[0x277D08348]) init];
    v0[40] = v21;
    v0[2] = v0;
    v0[7] = v0 + 22;
    v0[3] = sub_21BBAAE24;
    v22 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5808, &qword_21BE328C8);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_21BBB25CC;
    v0[13] = &block_descriptor_206;
    v0[14] = v22;
    [v21 fetchAAURLConfigurationWithCompletion_];

    return MEMORY[0x282200938](v0 + 2);
  }
}

uint64_t sub_21BBAAE24()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 328) = v3;
  v4 = *(v1 + 304);
  v5 = *(v1 + 296);
  if (v3)
  {
    v6 = sub_21BBAB624;
  }

  else
  {
    v6 = sub_21BBAAF54;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BBAAF54()
{
  v74 = v0;
  v1 = *(v0 + 320);
  v2 = *(v0 + 288);

  v3 = *(v0 + 176);

  v4 = [v3 urlForEndpoint_];
  if (v4)
  {
    v5 = *(v0 + 280);
    v6 = *(v0 + 184);
    v7 = v4;
    sub_21BE25B5C();

    *(v6 + OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_disclosureHookWasCalled) = 0;
    if (sub_21BBB58B4())
    {
      v8 = *(v0 + 272);
      v9 = *(v0 + 280);
      v10 = *(v0 + 256);
      v11 = *(v0 + 264);
      v12 = *(v0 + 240);
      v13 = *(v0 + 248);
      *v12 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
      swift_storeEnumTagMultiPayload();
      (*(v8 + 16))(v10, v9, v11);
      sub_21BBB7D84(v12, v10 + v13[5], &qword_27CDB56C0, qword_21BE32630);
      v14 = v10 + v13[6];
      *(v0 + 336) = 1;
      sub_21BE283EC();
      v15 = *(v0 + 152);
      *v14 = *(v0 + 144);
      *(v14 + 8) = v15;
      v16 = v10 + v13[7];
      *(v0 + 337) = 0;
      sub_21BE283EC();
      v17 = *(v0 + 168);
      *v16 = *(v0 + 160);
      *(v16 + 8) = v17;
      v18 = v13[8];
      type metadata accessor for FamilyDisclosureController();
      *(v10 + v18) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v19 = v13[9];
      v20 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
      v21 = sub_21BE289CC();
      v22 = [v20 initWithSuiteName_];

      if (!v22)
      {
        v22 = [objc_opt_self() standardUserDefaults];
      }

      v23 = *(v0 + 248);
      v24 = *(v0 + 256);
      *(v10 + v19) = v22;
      v25 = *(v23 + 40);
      sub_21BB3A2A4(0, &qword_280BD6908, 0x277CCA9A0);
      v26 = [swift_getObjCClassFromMetadata() defaultCenter];
      if (qword_27CDB4FC8 != -1)
      {
        swift_once();
      }

      v27 = *(v0 + 312);
      v28 = *(v0 + 256);
      v29 = *(v0 + 184);
      sub_21BE2935C();

      v30 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5970, &unk_21BE32B90));
      v31 = sub_21BE2774C();
      v32 = *&v29[v27];
      *&v29[v27] = v31;
      v33 = v31;

      v34 = [v29 navigationController];
      if (v34)
      {
        v35 = v34;
        [v34 presentViewController:v33 animated:1 completion:0];
      }

      [v33 setModalInPresentation_];
      v36 = objc_opt_self();
      v37 = [v36 defaultCenter];
      if (qword_27CDB4FC0 != -1)
      {
        swift_once();
      }

      [v37 addObserver:*(v0 + 184) selector:? name:? object:?];

      v38 = [v36 defaultCenter];
      if (qword_27CDB4F08 != -1)
      {
        swift_once();
      }

      v40 = *(v0 + 272);
      v39 = *(v0 + 280);
      v41 = *(v0 + 264);
      [v38 addObserver:*(v0 + 184) selector:? name:? object:?];

      (*(v40 + 8))(v39, v41);
    }

    else
    {
      v51 = v3;
      v52 = *(v0 + 232);
      sub_21BE2614C();
      v53 = sub_21BE26A2C();
      v54 = sub_21BE28FFC();
      v55 = os_log_type_enabled(v53, v54);
      v57 = *(v0 + 272);
      v56 = *(v0 + 280);
      v58 = *(v0 + 264);
      v59 = *(v0 + 232);
      v61 = *(v0 + 192);
      v60 = *(v0 + 200);
      if (v55)
      {
        v72 = *(v0 + 280);
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&dword_21BB35000, v53, v54, "No disclosure required", v62, 2u);
        MEMORY[0x21CF05C50](v62, -1, -1);

        (*(v60 + 8))(v59, v61);
        (*(v57 + 8))(v72, v58);
      }

      else
      {

        (*(v60 + 8))(v59, v61);
        (*(v57 + 8))(v56, v58);
      }
    }
  }

  else
  {
    v42 = *(v0 + 224);
    sub_21BE2614C();
    v43 = sub_21BE26A2C();
    v44 = sub_21BE28FDC();
    v45 = os_log_type_enabled(v43, v44);
    v46 = *(v0 + 224);
    v47 = *(v0 + 192);
    v48 = *(v0 + 200);
    if (v45)
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v73 = v50;
      *v49 = 136315138;
      *(v49 + 4) = sub_21BB3D81C(0xD000000000000017, 0x800000021BE56560, &v73);
      _os_log_impl(&dword_21BB35000, v43, v44, "%s url failure", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v50);
      MEMORY[0x21CF05C50](v50, -1, -1);
      MEMORY[0x21CF05C50](v49, -1, -1);
    }

    (*(v48 + 8))(v46, v47);
  }

  v63 = *(v0 + 280);
  v64 = *(v0 + 256);
  v66 = *(v0 + 232);
  v65 = *(v0 + 240);
  v68 = *(v0 + 216);
  v67 = *(v0 + 224);
  v69 = *(v0 + 208);

  v70 = *(v0 + 8);

  return v70();
}

uint64_t sub_21BBAB624()
{
  v23 = v0;
  v2 = v0[40];
  v1 = v0[41];
  v3 = v0[36];
  v4 = v0[27];

  swift_willThrow();

  sub_21BE2614C();
  v5 = sub_21BE26A2C();
  v6 = sub_21BE28FDC();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[27];
  v9 = v0[24];
  v10 = v0[25];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_21BB3D81C(0xD000000000000017, 0x800000021BE56560, &v22);
    _os_log_impl(&dword_21BB35000, v5, v6, "%s failed to get configuration", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x21CF05C50](v12, -1, -1);
    MEMORY[0x21CF05C50](v11, -1, -1);
  }

  (*(v10 + 8))(v8, v9);
  v13 = v0[35];
  v14 = v0[32];
  v16 = v0[29];
  v15 = v0[30];
  v18 = v0[27];
  v17 = v0[28];
  v19 = v0[26];

  v20 = v0[1];

  return v20();
}

void sub_21BBAB844(char a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for FAFamilySettingsViewControllerV2();
  objc_msgSendSuper2(&v8, sel_viewDidDisappear_, a1 & 1);
  [*&v1[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_peopleDiscoveryService] stopMonitoringProximity];
  v3 = OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_disclosureViewController;
  [*&v1[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_disclosureViewController] removeFromParentViewController];
  v4 = *&v1[v3];
  if (!v4)
  {
    v7 = 0;
    goto LABEL_5;
  }

  v5 = [v4 view];
  if (v5)
  {
    v6 = v5;
    [v5 removeFromSuperview];

    v7 = *&v1[v3];
LABEL_5:
    *&v1[v3] = 0;

    return;
  }

  __break(1u);
}

void sub_21BBAB960(char a1)
{
  if (a1)
  {
    v2 = OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_activityIndicatorViewForAdd;
    v3 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithCustomView_];
    [*&v1[v2] startAnimating];
    v4 = [v1 navigationItem];
LABEL_9:
    v13 = v4;
    [v13 setRightBarButtonItem_];

    v10 = v13;
    goto LABEL_10;
  }

  v5 = [v1 navigationItem];
  v6 = [v5 rightBarButtonItem];

  if (v6)
  {

    [*&v1[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_activityIndicatorView] stopAnimating];
    [*&v1[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_activityIndicatorViewForAdd] stopAnimating];
    v7 = [v1 view];
    if (v7)
    {
      v8 = v7;
      [v7 setUserInteractionEnabled_];
    }

    sub_21BBABB40();
  }

  v9 = [v1 navigationItem];
  v12 = [v9 rightBarButtonItem];

  v10 = v12;
  if (!v12)
  {
    v11 = OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_activityIndicatorView;
    v3 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithCustomView_];
    [*&v1[v11] startAnimating];
    v4 = [v1 navigationItem];
    goto LABEL_9;
  }

LABEL_10:
}

void sub_21BBABB40()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_circleStore];
  v3 = *&v0[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_circleStore + 24];
  v4 = *&v0[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_circleStore + 32];
  __swift_project_boxed_opaque_existential_1Tm(&v0[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_circleStore], v3);
  v5 = (*(v4 + 8))(v3, v4);
  if (!v5)
  {
    v5 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v6 = v5;
  v7 = [v5 showAddMemberButton];

  if (v7)
  {
    v8 = OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_addMemberButton;
    v9 = *&v1[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_addMemberButton];
    v10 = *(v2 + 3);
    v11 = *(v2 + 4);
    __swift_project_boxed_opaque_existential_1Tm(v2, v10);
    v12 = *(v11 + 8);
    v13 = v9;
    v14 = v12(v10, v11);
    if (!v14)
    {
      v14 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
    }

    v15 = v14;
    v16 = [v14 canAddMembers];

    [v13 setEnabled_];
    v17 = *&v1[v8];
    v18 = sub_21BE289CC();
    [v17 setAccessibilityIdentifier_];

    v19 = [v1 navigationItem];
    [v19 setRightBarButtonItem:*&v1[v8] animated:0];
  }

  else
  {
    v19 = [v1 navigationItem];
    [v19 setRightBarButtonItem_];
  }
}

uint64_t sub_21BBABD48()
{
  v1[2] = v0;
  v2 = sub_21BE26A4C();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  sub_21BE28D7C();
  v1[6] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  v1[7] = v6;
  v1[8] = v5;

  return MEMORY[0x2822009F8](sub_21BBABE3C, v6, v5);
}

uint64_t sub_21BBABE3C()
{
  v1 = v0[5];
  sub_21BE2614C();
  v2 = sub_21BE26A2C();
  v3 = sub_21BE28FFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21BB35000, v2, v3, "Attempting to add family member", v4, 2u);
    MEMORY[0x21CF05C50](v4, -1, -1);
  }

  v6 = v0[4];
  v5 = v0[5];
  v8 = v0[2];
  v7 = v0[3];

  (*(v6 + 8))(v5, v7);
  v9 = [v8 view];
  if (v9)
  {
    v10 = v9;
    [v9 setUserInteractionEnabled_];
  }

  v11 = v0[2];
  v12 = OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_activityIndicatorViewForAdd;
  v13 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithCustomView_];
  [*&v11[v12] startAnimating];
  v14 = [v11 navigationItem];
  [v14 setRightBarButtonItem_];

  v15 = [objc_allocWithZone(FACircleContext) initWithEventType_];
  v0[9] = v15;
  v16 = swift_task_alloc();
  v0[10] = v16;
  *v16 = v0;
  v16[1] = sub_21BBAC050;
  v17 = v0[2];

  return sub_21BBAC1F4(v15);
}

uint64_t sub_21BBAC050(void *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v8 = *v1;

  v5 = *(v3 + 64);
  v6 = *(v3 + 56);

  return MEMORY[0x2822009F8](sub_21BBAC180, v6, v5);
}

uint64_t sub_21BBAC180()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21BBAC1F4(uint64_t a1)
{
  v2[29] = a1;
  v2[30] = v1;
  v3 = sub_21BE26A4C();
  v2[31] = v3;
  v4 = *(v3 - 8);
  v2[32] = v4;
  v5 = *(v4 + 64) + 15;
  v2[33] = swift_task_alloc();
  sub_21BE28D7C();
  v2[34] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();
  v2[35] = v7;
  v2[36] = v6;

  return MEMORY[0x2822009F8](sub_21BBAC2E8, v7, v6);
}

uint64_t sub_21BBAC2E8()
{
  v1 = v0[29];
  v2 = v0[30];
  v3 = [v2 navigationController];
  v4 = [objc_allocWithZone(FACircleStateController) initWithPresenter_];
  v0[37] = v4;

  v5 = *&v2[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_currentStateController];
  *&v2[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_currentStateController] = v4;
  v6 = v4;
  [v5 cancel];

  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  v0[22] = sub_21BBB7C88;
  v0[23] = v7;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_21BB42A18;
  v0[21] = &block_descriptor_185;
  v8 = _Block_copy(v0 + 18);
  v9 = v0[23];
  v10 = v2;

  [v6 setPresentationHandler_];
  _Block_release(v8);
  v11 = [v1 eventType];
  v12 = sub_21BE28A0C();
  v14 = v13;
  if (v12 == sub_21BE28A0C() && v14 == v15)
  {

    goto LABEL_5;
  }

  v16 = sub_21BE2995C();

  if (v16)
  {
LABEL_5:
    v17 = (v0[30] + OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_circleStore);
    v18 = v17[3];
    v19 = v17[4];
    __swift_project_boxed_opaque_existential_1Tm(v17, v18);
    v20 = (*(v19 + 8))(v18, v19);
    if (!v20)
    {
      v20 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
    }

    v21 = v20;
    v22 = sub_21BE2904C();

    if (v22)
    {
      goto LABEL_12;
    }
  }

  v23 = [v0[29] eventType];
  v24 = sub_21BE28A0C();
  v26 = v25;
  if (v24 == sub_21BE28A0C() && v26 == v27)
  {
  }

  else
  {
    v28 = sub_21BE2995C();

    if ((v28 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

LABEL_12:
  [v6 setPresentationType_];
LABEL_13:
  v29 = v0[29];
  v0[2] = v0;
  v0[7] = v0 + 27;
  v0[3] = sub_21BBAC6E4;
  v30 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5950, &qword_21BE32B20);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21BC2D85C;
  v0[13] = &block_descriptor_188;
  v0[14] = v30;
  [v6 performWithContext:v29 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21BBAC6E4()
{
  v1 = *(*v0 + 288);
  v2 = *(*v0 + 280);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21BBAC7EC, v2, v1);
}

uint64_t sub_21BBAC7EC()
{
  v28 = v0;
  v1 = *(v0 + 272);

  v2 = *(v0 + 216);
  v3 = [v2 error];
  if (v3)
  {
    v4 = v3;
    v5 = *(v0 + 264);
    sub_21BE2614C();
    v6 = v4;
    v7 = sub_21BE26A2C();
    v8 = sub_21BE28FDC();

    v9 = os_log_type_enabled(v7, v8);
    v11 = *(v0 + 256);
    v10 = *(v0 + 264);
    v12 = *(v0 + 248);
    if (v9)
    {
      v26 = *(v0 + 296);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v27 = v14;
      *v13 = 136315138;
      swift_getErrorValue();
      v25 = v10;
      v16 = *(v0 + 192);
      v15 = *(v0 + 200);
      v17 = *(v0 + 208);
      v18 = sub_21BE29A5C();
      v24 = v12;
      v20 = sub_21BB3D81C(v18, v19, &v27);

      *(v13 + 4) = v20;
      _os_log_impl(&dword_21BB35000, v7, v8, "Error loading stateController: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x21CF05C50](v14, -1, -1);
      MEMORY[0x21CF05C50](v13, -1, -1);

      (*(v11 + 8))(v25, v24);
    }

    else
    {

      (*(v11 + 8))(v10, v12);
    }
  }

  else
  {
  }

  v21 = *(v0 + 264);
  sub_21BBADA40(*(v0 + 240), *(v0 + 232));

  v22 = *(v0 + 8);

  return v22(v2);
}

id FAFamilySettingsViewControllerV2.__deallocating_deinit()
{
  v1 = *&v0[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_currentStateController];
  if (v1)
  {
    [v1 cancel];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for FAFamilySettingsViewControllerV2();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_21BBACC24(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_21BE2870C();
  v21 = *(v6 - 8);
  v7 = *(v21 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_21BE2874C();
  v10 = *(v20 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v20);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FAFamilySettingsViewControllerV2();
  v23.receiver = v3;
  v23.super_class = v14;
  objc_msgSendSuper2(&v23, sel_viewDidMoveToWindow_shouldAppearOrDisappear_, a1, a2 & 1);
  sub_21BB3A2A4(0, &qword_280BD6930, 0x277D85C78);
  v15 = sub_21BE2925C();
  v16 = swift_allocObject();
  *(v16 + 16) = v3;
  aBlock[4] = sub_21BBB52D0;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21BB42A18;
  aBlock[3] = &block_descriptor;
  v17 = _Block_copy(aBlock);
  v18 = v3;

  sub_21BE2872C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21BBB5114(&qword_280BD69E0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBAF0, &unk_21BE3B600);
  sub_21BB3B038(&qword_280BD69A0, &qword_27CDBBAF0, &unk_21BE3B600);
  sub_21BE294DC();
  MEMORY[0x21CF04410](0, v13, v9, v17);
  _Block_release(v17);

  (*(v21 + 8))(v9, v6);
  return (*(v10 + 8))(v13, v20);
}

void sub_21BBACF40(char *a1)
{
  v2 = [a1 navigationController];
  if (!v2)
  {
    v3 = *&a1[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_currentStateController];
    v4 = v3;
    *&a1[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_currentStateController] = 0;
    [v3 cancel];
    v2 = v4;
  }
}

id FAFamilySettingsViewControllerV2.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_21BE289CC();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

uint64_t FAFamilySettingsViewControllerV2.didSelectSubscriptionWithURL(_:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_21BE28D7C();
  v2[4] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](sub_21BBAD198, v4, v3);
}

uint64_t sub_21BBAD198()
{
  v1 = v0[2];
  v2 = [objc_allocWithZone(FACircleContext) initWithEventType_];
  v0[7] = v2;
  v3 = sub_21BE25B2C();
  [v2 setUrlForContext_];

  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_21BBAD280;
  v5 = v0[3];

  return sub_21BBAC1F4(v2);
}

uint64_t sub_21BBAD280(void *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 64);
  v8 = *v1;

  v5 = *(v3 + 48);
  v6 = *(v3 + 40);

  return MEMORY[0x2822009F8](sub_21BBAD3B0, v6, v5);
}

uint64_t sub_21BBAD3B0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21BBAD5A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_21BE25B9C();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = sub_21BE28D7C();
  v3[9] = sub_21BE28D6C();
  v8 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BBAD6A0, v8, v7);
}

uint64_t sub_21BBAD6A0()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  v0[10] = _Block_copy(v4);
  sub_21BE25B5C();
  v7 = v5;
  v0[11] = sub_21BE28D6C();
  v9 = sub_21BE28D0C();
  v0[12] = v9;
  v0[13] = v8;

  return MEMORY[0x2822009F8](sub_21BBAD768, v9, v8);
}

uint64_t sub_21BBAD768()
{
  v1 = v0[7];
  v2 = [objc_allocWithZone(FACircleContext) initWithEventType_];
  v0[14] = v2;
  v3 = sub_21BE25B2C();
  [v2 setUrlForContext_];

  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_21BBAD850;
  v5 = v0[4];

  return sub_21BBAC1F4(v2);
}

uint64_t sub_21BBAD850(void *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 120);
  v8 = *v1;

  v5 = *(v3 + 104);
  v6 = *(v3 + 96);

  return MEMORY[0x2822009F8](sub_21BBAD980, v6, v5);
}

uint64_t sub_21BBAD980()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);

  (*(v4 + 8))(v3, v5);
  v1[2](v1);
  _Block_release(v1);

  v7 = *(v0 + 8);

  return v7();
}

id sub_21BBADA40(char *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - v6;
  result = [a1 view];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v9 = result;
  [result setUserInteractionEnabled_];

  v10 = [a1 navigationItem];
  v11 = [v10 rightBarButtonItem];

  if (v11)
  {

    [*&a1[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_activityIndicatorView] stopAnimating];
    [*&a1[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_activityIndicatorViewForAdd] stopAnimating];
    v12 = [a1 view];
    [v12 setUserInteractionEnabled_];

    sub_21BBABB40();
  }

  v13 = [a2 eventType];
  v14 = sub_21BE28A0C();
  v16 = v15;
  if (v14 == sub_21BE28A0C() && v16 == v17)
  {
  }

  else
  {
    v18 = sub_21BE2995C();

    if ((v18 & 1) == 0)
    {
      return result;
    }
  }

  v19 = sub_21BE28DAC();
  (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
  sub_21BE28D7C();
  v20 = a1;
  v21 = sub_21BE28D6C();
  v22 = swift_allocObject();
  v23 = MEMORY[0x277D85700];
  v22[2] = v21;
  v22[3] = v23;
  v22[4] = v20;
  sub_21BBA932C(0, 0, v7, &unk_21BE32B30, v22);
}

void sub_21BBADCE8(char *a1)
{
  v2 = [a1 view];
  if (v2)
  {
    v3 = v2;
    [v2 setUserInteractionEnabled_];

    v4 = [a1 navigationItem];
    v5 = [v4 rightBarButtonItem];

    if (v5)
    {

      [*&a1[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_activityIndicatorView] stopAnimating];
      [*&a1[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_activityIndicatorViewForAdd] stopAnimating];
      v6 = [a1 view];
      [v6 setUserInteractionEnabled_];

      sub_21BBABB40();
    }

    v7 = [objc_opt_self() defaultCenter];
    v8 = v7;
    if (qword_27CDB4EE0 != -1)
    {
      swift_once();
      v7 = v8;
    }

    [v7 postNotificationName:qword_27CDB7E90 object:0 userInfo:0 deliverImmediately:1];
  }

  else
  {
    __break(1u);
  }
}

uint64_t FAFamilySettingsViewControllerV2.didSelectSubscriptionWithURLMemberDetails(_:serviceName:familyMemberDSID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[22] = a4;
  v5[23] = v4;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  sub_21BE28D7C();
  v5[24] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();
  v5[25] = v7;
  v5[26] = v6;

  return MEMORY[0x2822009F8](sub_21BBADF18, v7, v6);
}

uint64_t sub_21BBADF18()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = [objc_allocWithZone(FACircleContext) initWithEventType_];
  v0[27] = v3;
  v4 = sub_21BE25B2C();
  [v3 setUrlForContext_];

  if (v1 >= 1)
  {
    v5 = v0[22];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57B8, &qword_21BE32840);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21BE32770;
    *(inited + 32) = 0xD000000000000011;
    *(inited + 40) = 0x800000021BE55FB0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57C0, &qword_21BE32848);
    v7 = swift_initStackObject();
    *(v7 + 16) = xmmword_21BE32770;
    *(v7 + 32) = 0xD000000000000012;
    v8 = v7 + 32;
    *(v7 + 40) = 0x800000021BE55FD0;
    *(v7 + 48) = v5;
    v9 = sub_21BBB5AAC(v7);
    swift_setDeallocating();
    sub_21BB3A4CC(v8, &qword_27CDB57C8, &qword_21BE32850);
    *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57D0, &qword_21BE32858);
    *(inited + 48) = v9;
    sub_21BBB52D8(inited);
    swift_setDeallocating();
    sub_21BB3A4CC(inited + 32, &qword_27CDB57D8, &qword_21BE32860);
    v10 = sub_21BE288EC();

    [v3 setAdditionalParameters_];
  }

  v11 = swift_task_alloc();
  v0[28] = v11;
  *v11 = v0;
  v11[1] = sub_21BBAE17C;
  v12 = v0[23];

  return sub_21BBAC1F4(v3);
}

uint64_t sub_21BBAE17C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 224);
  v5 = *v1;
  v3[29] = a1;

  v6 = swift_task_alloc();
  v3[30] = v6;
  *v6 = v5;
  v6[1] = sub_21BBAE2F8;
  v7 = v3[23];
  v8 = v3[21];
  v9 = v3[20];

  return sub_21BBAE48C(a1, v9, v8);
}

uint64_t sub_21BBAE2F8()
{
  v1 = *v0;
  v2 = *(*v0 + 240);
  v6 = *v0;

  v3 = *(v1 + 208);
  v4 = *(v1 + 200);

  return MEMORY[0x2822009F8](sub_21BBAE418, v4, v3);
}

uint64_t sub_21BBAE418()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 192);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21BBAE48C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[26] = a3;
  v4[27] = v3;
  v4[24] = a1;
  v4[25] = a2;
  sub_21BE28D7C();
  v4[28] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  v4[29] = v6;
  v4[30] = v5;

  return MEMORY[0x2822009F8](sub_21BBAE528, v6, v5);
}

uint64_t sub_21BBAE528()
{
  v1 = *(v0 + 200) == 0x41435F454C505041 && *(v0 + 208) == 0xEA00000000004853;
  if (!v1 && (sub_21BE2995C() & 1) == 0)
  {
    goto LABEL_22;
  }

  v2 = [*(v0 + 192) userInfo];
  if (!v2)
  {
    goto LABEL_15;
  }

  v3 = v2;
  v4 = sub_21BE2890C();

  *(v0 + 176) = 0x6E6F69746361;
  *(v0 + 184) = 0xE600000000000000;
  sub_21BE2958C();
  if (!*(v4 + 16) || (v5 = sub_21BBB31E8(v0 + 80), (v6 & 1) == 0))
  {

    sub_21BBB7238(v0 + 80);
LABEL_15:
    *(v0 + 144) = 0u;
    *(v0 + 160) = 0u;
    goto LABEL_16;
  }

  sub_21BB3DCD4(*(v4 + 56) + 32 * v5, v0 + 144);
  sub_21BBB7238(v0 + 80);

  if (!*(v0 + 168))
  {
LABEL_16:
    v8 = *(v0 + 224);
    sub_21BB3A4CC(v0 + 144, &qword_27CDB5940, &unk_21BE32B10);
LABEL_23:

    goto LABEL_24;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  if (*(v0 + 80) == 0xD000000000000012 && 0x800000021BE56510 == *(v0 + 88))
  {
    v7 = *(v0 + 88);

    goto LABEL_18;
  }

  v9 = *(v0 + 88);
  v10 = sub_21BE2995C();

  if ((v10 & 1) == 0)
  {
LABEL_22:
    v18 = *(v0 + 224);
    goto LABEL_23;
  }

LABEL_18:
  v11 = [*(v0 + 216) navigationController];
  *(v0 + 248) = v11;
  if (!v11)
  {
    goto LABEL_22;
  }

  v12 = *(v0 + 216);
  v13 = [objc_allocWithZone(FAAppleCashPresentationHandler) initWithNavigationController_];
  *(v0 + 256) = v13;
  v14 = *(v12 + OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_appleCashHandler);
  *(v12 + OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_appleCashHandler) = v13;
  v15 = v13;

  if (v15)
  {
    v16 = [*(v0 + 192) userInfo];
    if (v16)
    {
      v17 = v16;
      sub_21BE2890C();
    }

    else
    {
      sub_21BBB5D24(MEMORY[0x277D84F90]);
    }

    v24 = sub_21BE288EC();
    *(v0 + 264) = v24;

    *(v0 + 16) = v0;
    *(v0 + 24) = sub_21BBAE99C;
    v25 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5948, &qword_21BE4DE90);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_21BD44BD8;
    *(v0 + 104) = &block_descriptor_179;
    *(v0 + 112) = v25;
    [v15 presentPeerPaymentControllerWithAttributes:v24 completion:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  v21 = *(v0 + 224);

  v22 = [objc_opt_self() defaultCenter];
  if (qword_27CDB4EE0 != -1)
  {
    swift_once();
  }

  v23 = *(v0 + 248);
  [v22 postNotificationName:qword_27CDB7E90 object:0 userInfo:0 deliverImmediately:1];

LABEL_24:
  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_21BBAE99C()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 232);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21BBAEAA4, v2, v1);
}

uint64_t sub_21BBAEAA4()
{
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[28];

  v4 = [objc_opt_self() defaultCenter];
  if (qword_27CDB4EE0 != -1)
  {
    swift_once();
  }

  v5 = v0[31];
  [v4 postNotificationName:qword_27CDB7E90 object:0 userInfo:0 deliverImmediately:1];

  v6 = v0[1];

  return v6();
}

uint64_t sub_21BBAED34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_21BE25B9C();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  sub_21BE28D7C();
  v5[10] = sub_21BE28D6C();
  v10 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BBAEE30, v10, v9);
}

uint64_t sub_21BBAEE30()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[5];
  v4 = v0[6];
  v6 = v0[2];
  v5 = v0[3];

  v0[11] = _Block_copy(v3);
  sub_21BE25B5C();
  v7 = sub_21BE28A0C();
  v9 = v8;
  v0[12] = v8;
  v10 = v4;
  v11 = swift_task_alloc();
  v0[13] = v11;
  *v11 = v0;
  v11[1] = sub_21BBAEF28;
  v12 = v0[9];
  v13 = v0[6];
  v14 = v0[4];

  return FAFamilySettingsViewControllerV2.didSelectSubscriptionWithURLMemberDetails(_:serviceName:familyMemberDSID:)(v12, v7, v9, v14);
}

uint64_t sub_21BBAEF28()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 72);
  v5 = *(*v0 + 64);
  v6 = *(*v0 + 56);
  v7 = *(*v0 + 48);
  v10 = *v0;

  (*(v5 + 8))(v4, v6);
  v3[2](v3);
  _Block_release(v3);

  v8 = *(v10 + 8);

  return v8();
}

Swift::Void __swiftcall FAFamilySettingsViewControllerV2.stopFamilySharing()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = sub_21BE28DAC();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_21BE28D7C();
  v6 = v0;
  v7 = sub_21BE28D6C();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v6;
  sub_21BBA932C(0, 0, v4, &unk_21BE32870, v8);
}

uint64_t sub_21BBAF20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v4[6] = a4;
  v5 = sub_21BE26A4C();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();
  v8 = sub_21BE25B9C();
  v4[10] = v8;
  v9 = *(v8 - 8);
  v4[11] = v9;
  v10 = *(v9 + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  sub_21BE28D7C();
  v4[14] = sub_21BE28D6C();
  v11 = sub_21BE28D0C();
  v4[15] = v11;
  v4[16] = v12;
  v13 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_21BBAF39C, v11, v12);
}

id sub_21BBAF39C()
{
  v40 = v0;
  v39[1] = *MEMORY[0x277D85DE8];
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong familySettingsViewController2StopFamilySharing_];
    v3 = objc_opt_self();
    v0[5] = 0;
    v4 = [v3 urlDestinationTo:1 error:v0 + 5];
    v5 = v0[5];
    if (v4)
    {
      v7 = v0[12];
      v6 = v0[13];
      v8 = v0[10];
      v9 = v0[11];
      v10 = v4;
      sub_21BE25B5C();
      v11 = v5;

      (*(v9 + 32))(v6, v7, v8);
      result = [objc_opt_self() defaultWorkspace];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v13 = result;
      v15 = v0[13];
      v14 = v0[14];
      v16 = v0[10];
      v17 = v0[11];

      v18 = sub_21BE25B2C();
      sub_21BBB52D8(MEMORY[0x277D84F90]);
      v19 = sub_21BE288EC();

      [v13 openSensitiveURL:v18 withOptions:v19];

      swift_unknownObjectRelease();
      (*(v17 + 8))(v15, v16);
    }

    else
    {
      v22 = v0[14];
      v23 = v0[9];
      v24 = v5;

      v25 = sub_21BE25A8C();

      swift_willThrow();
      sub_21BE260FC();
      v26 = sub_21BE26A2C();
      v27 = sub_21BE28FDC();
      v28 = os_log_type_enabled(v26, v27);
      v30 = v0[8];
      v29 = v0[9];
      v31 = v0[7];
      if (v28)
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v39[0] = v33;
        *v32 = 136315138;
        *(v32 + 4) = sub_21BB3D81C(0xD000000000000013, 0x800000021BE564F0, v39);
        _os_log_impl(&dword_21BB35000, v26, v27, "%s url doesn't exist!", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v33);
        MEMORY[0x21CF05C50](v33, -1, -1);
        MEMORY[0x21CF05C50](v32, -1, -1);

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      (*(v30 + 8))(v29, v31);
    }

    v35 = v0[12];
    v34 = v0[13];
    v36 = v0[9];

    v37 = v0[1];
    v38 = *MEMORY[0x277D85DE8];

    return v37();
  }

  else
  {
    v20 = swift_task_alloc();
    v0[17] = v20;
    *v20 = v0;
    v20[1] = sub_21BBAF79C;
    v21 = *MEMORY[0x277D85DE8];

    return sub_21BD440CC();
  }
}

uint64_t sub_21BBAF79C()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *(*v0 + 136);
  v8 = *v0;

  v3 = *(v1 + 128);
  v4 = *(v1 + 120);
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_21BBAF8F0, v4, v3);
}

uint64_t sub_21BBAF8F0()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = v0[14];

  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[9];

  v5 = v0[1];
  v6 = *MEMORY[0x277D85DE8];

  return v5();
}

Swift::Void __swiftcall FAFamilySettingsViewControllerV2.addFamilyMemberButtonWasTapped()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v13[-v3];
  v5 = sub_21BE28DAC();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_21BE28D7C();
  v6 = v0;
  v7 = sub_21BE28D6C();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v6;
  sub_21BBA932C(0, 0, v4, &unk_21BE32880, v8);

  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v14 = 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = 0xD000000000000016;
  v11 = MEMORY[0x277D839B0];
  *(inited + 40) = 0x800000021BE55FF0;
  *(inited + 72) = v11;
  *(inited + 80) = &protocol witness table for Bool;
  *(inited + 48) = 1;

  v12 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  sub_21BB3A4CC(inited + 32, &qword_27CDB57E8, &qword_21BE32890);
  sub_21BCA55DC(&v14, v12);
}

uint64_t sub_21BBAFCFC()
{
  v0[2] = sub_21BE28D7C();
  v0[3] = sub_21BE28D6C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21BBAFDA8;

  return sub_21BBABD48();
}

uint64_t sub_21BBAFDA8()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BBAFEE4, v5, v4);
}

uint64_t sub_21BBAFEE4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t FAFamilySettingsViewControllerV2.loadMemberDetails(member:navigationController:)(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0) - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v5 = sub_21BE26A4C();
  v3[16] = v5;
  v6 = *(v5 - 8);
  v3[17] = v6;
  v7 = *(v6 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = sub_21BE28D7C();
  v3[20] = sub_21BE28D6C();
  v9 = sub_21BE28D0C();
  v3[21] = v9;
  v3[22] = v8;

  return MEMORY[0x2822009F8](sub_21BBB00C0, v9, v8);
}

id sub_21BBB00C0()
{
  v1 = v0[18];
  sub_21BE2614C();
  v2 = sub_21BE26A2C();
  v3 = sub_21BE28FFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21BB35000, v2, v3, "Attempting load member", v4, 2u);
    MEMORY[0x21CF05C50](v4, -1, -1);
  }

  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[16];
  v8 = v0[14];

  (*(v6 + 8))(v5, v7);
  result = [v8 view];
  if (result)
  {
    v10 = result;
    [result setUserInteractionEnabled_];

    v0[23] = [objc_allocWithZone(FACircleContext) initWithEventType_];
    v11 = swift_task_alloc();
    v0[24] = v11;
    *v11 = v0;
    v11[1] = sub_21BBB0268;
    v12 = v0[15];
    v13 = v0[12];

    return FAFamilySettingsViewControllerV2.getPendingMemberURL(member:)(v12, v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21BBB0268()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v6 = *v0;

  v3 = *(v1 + 176);
  v4 = *(v1 + 168);

  return MEMORY[0x2822009F8](sub_21BBB0388, v4, v3);
}

uint64_t sub_21BBB0388()
{
  v1 = v0[15];
  v2 = sub_21BE25B9C();
  v3 = *(v2 - 8);
  v4 = 0;
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    v4 = sub_21BE25B2C();
    (*(v3 + 8))(v1, v2);
  }

  v5 = v0[23];
  v6 = v0[19];
  v7 = v0[13];
  v8 = v0[14];
  v9 = v0[12];
  [v5 setUrlForContext_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57B8, &qword_21BE32840);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  v11 = *MEMORY[0x277D08370];
  *(inited + 32) = sub_21BE28A0C();
  *(inited + 40) = v12;
  *(inited + 72) = sub_21BB3A2A4(0, &qword_280BD8A40, 0x277D08268);
  *(inited + 48) = v9;
  v13 = v9;
  sub_21BBB52D8(inited);
  swift_setDeallocating();
  sub_21BB3A4CC(inited + 32, &qword_27CDB57D8, &qword_21BE32860);
  v14 = sub_21BE288EC();

  [v5 setUserInfo_];

  v15 = [objc_allocWithZone(FACircleStateController) initWithPresenter_];
  v0[25] = v15;
  v16 = swift_task_alloc();
  v0[26] = v16;
  v16[2] = v15;
  v16[3] = v8;
  v16[4] = v5;
  v17 = swift_task_alloc();
  v0[27] = v17;
  *(v17 + 16) = v15;
  v0[28] = sub_21BE28D6C();
  v18 = *(MEMORY[0x277D85A10] + 4);
  v19 = swift_task_alloc();
  v0[29] = v19;
  *v19 = v0;
  v19[1] = sub_21BBB0678;

  return MEMORY[0x282200830]();
}

void sub_21BBB0678()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = v2[27];
    v5 = v2[28];
    v7 = v2[26];

    v8 = v2[21];
    v9 = v2[22];

    MEMORY[0x2822009F8](sub_21BBB07C4, v8, v9);
  }
}

uint64_t sub_21BBB07C4()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);
  v3 = *(v0 + 144);
  v4 = *(v0 + 120);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t FAFamilySettingsViewControllerV2.getPendingMemberURL(member:)(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  v3 = sub_21BE26A4C();
  v2[21] = v3;
  v4 = *(v3 - 8);
  v2[22] = v4;
  v5 = *(v4 + 64) + 15;
  v2[23] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5800, &qword_21BE328C0) - 8) + 64) + 15;
  v2[24] = swift_task_alloc();
  v7 = sub_21BE2590C();
  v2[25] = v7;
  v8 = *(v7 - 8);
  v2[26] = v8;
  v9 = *(v8 + 64) + 15;
  v2[27] = swift_task_alloc();
  v10 = sub_21BE25B9C();
  v2[28] = v10;
  v11 = *(v10 - 8);
  v2[29] = v11;
  v12 = *(v11 + 64) + 15;
  v2[30] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0) - 8) + 64) + 15;
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  sub_21BE28D7C();
  v2[34] = sub_21BE28D6C();
  v15 = sub_21BE28D0C();
  v2[35] = v15;
  v2[36] = v14;

  return MEMORY[0x2822009F8](sub_21BBB0A8C, v15, v14);
}

uint64_t sub_21BBB0A8C()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D08348]) init];
  v0[37] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_21BBB0BC4;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5808, &qword_21BE328C8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21BBB25CC;
  v0[13] = &block_descriptor_30;
  v0[14] = v2;
  [v1 fetchAAURLConfigurationWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21BBB0BC4()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 304) = v3;
  v4 = *(v1 + 288);
  v5 = *(v1 + 280);
  if (v3)
  {
    v6 = sub_21BBB1274;
  }

  else
  {
    v6 = sub_21BBB0CF4;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BBB0CF4()
{
  v1 = v0[37];
  v2 = v0[34];

  v3 = v0[18];

  v4 = [v3 urlForEndpoint_];
  if (v4)
  {
    v5 = v0[32];
    v6 = v4;
    sub_21BE25B5C();

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v9 = v0[32];
  v8 = v0[33];
  v10 = v0[31];
  v11 = v0[28];
  v12 = v0[29];
  v13 = *(v12 + 56);
  v13(v9, v7, 1, v11);
  sub_21BBB7D84(v9, v8, &unk_27CDB57F0, &qword_21BE328A0);
  sub_21BBA3854(v8, v10, &unk_27CDB57F0, &qword_21BE328A0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v14 = v0[31];
    sub_21BB3A4CC(v0[33], &unk_27CDB57F0, &qword_21BE328A0);

    sub_21BB3A4CC(v14, &unk_27CDB57F0, &qword_21BE328A0);
    v15 = v0[28];
    v16 = v0[19];
    v17 = v0[29] + 56;
LABEL_8:
    v13(v16, 1, 1, v15);
    goto LABEL_16;
  }

  v18 = v0[25];
  v19 = v0[26];
  v20 = v0[24];
  (*(v0[29] + 32))(v0[30], v0[31], v0[28]);
  sub_21BE2589C();
  v21 = (*(v19 + 48))(v20, 1, v18);
  v22 = v0[24];
  if (v21 == 1)
  {
    v23 = v0[33];
    v24 = v3;
    v25 = v0[29];
    v26 = v0[30];
    v27 = v0[28];
    v28 = v0[19];

    (*(v25 + 8))(v26, v27);
    sub_21BB3A4CC(v23, &unk_27CDB57F0, &qword_21BE328A0);
    sub_21BB3A4CC(v22, &qword_27CDB5800, &qword_21BE328C0);
    v16 = v28;
    v15 = v27;
    goto LABEL_8;
  }

  v29 = v0[20];
  (*(v0[26] + 32))(v0[27], v0[24], v0[25]);
  v30 = [v29 dsid];
  v31 = v0[20];
  v61 = v3;
  if (v30)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5810, qword_21BE328D0);
    v32 = *(sub_21BE2585C() - 8);
    v33 = *(v32 + 72);
    v34 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    *(swift_allocObject() + 16) = xmmword_21BE32770;
    v35 = *MEMORY[0x277D08378];
    sub_21BE28A0C();
    v36 = [v31 dsid];
    if (v36)
    {
      v37 = v36;
      v38 = [v36 stringValue];

LABEL_14:
      sub_21BE28A0C();
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5810, qword_21BE328D0);
    v39 = *(sub_21BE2585C() - 8);
    v40 = *(v39 + 72);
    v41 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    *(swift_allocObject() + 16) = xmmword_21BE32770;
    v42 = *MEMORY[0x277D08368];
    sub_21BE28A0C();
    v43 = [v31 inviteEmail];
    if (v43)
    {
      v38 = v43;
      goto LABEL_14;
    }
  }

  v44 = v0[29];
  v59 = v0[30];
  v60 = v0[33];
  v45 = v0[27];
  v46 = v0[28];
  v48 = v0[25];
  v47 = v0[26];
  v49 = v0[19];
  sub_21BE2582C();

  sub_21BE2587C();
  sub_21BE258AC();

  (*(v47 + 8))(v45, v48);
  (*(v44 + 8))(v59, v46);
  sub_21BB3A4CC(v60, &unk_27CDB57F0, &qword_21BE328A0);
LABEL_16:
  v51 = v0[32];
  v50 = v0[33];
  v53 = v0[30];
  v52 = v0[31];
  v54 = v0[27];
  v56 = v0[23];
  v55 = v0[24];

  v57 = v0[1];

  return v57();
}

uint64_t sub_21BBB1274()
{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[34];
  v4 = v0[29];
  v6 = v0[22];
  v5 = v0[23];
  v7 = v0[21];

  swift_willThrow();

  sub_21BE2614C();
  v8 = v1;
  sub_21BC51D50(v1);

  (*(v6 + 8))(v5, v7);
  v9 = v0[29] + 56;
  (*(v4 + 56))(v0[19], 1, 1, v0[28]);
  v11 = v0[32];
  v10 = v0[33];
  v13 = v0[30];
  v12 = v0[31];
  v14 = v0[27];
  v16 = v0[23];
  v15 = v0[24];

  v17 = v0[1];

  return v17();
}

uint64_t sub_21BBB13C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = sub_21BE28D7C();
  v4[7] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x2822009F8](sub_21BBB1468, v6, v5);
}

uint64_t sub_21BBB1468()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v11 = *(v0 + 24);
  v3 = sub_21BE28D6C();
  *(v0 + 80) = v3;
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *(v4 + 16) = v11;
  *(v4 + 32) = v2;
  v5 = *(MEMORY[0x277D859E0] + 4);
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  *v6 = v0;
  v6[1] = sub_21BBB158C;
  v7 = *(v0 + 16);
  v8 = MEMORY[0x277D85700];
  v9 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v7, v3, v8, 0xD00000000000002FLL, 0x800000021BE56460, sub_21BBB7B04, v4, v9);
}

uint64_t sub_21BBB158C()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);
  v8 = *v0;

  v5 = *(v1 + 72);
  v6 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_21BBB16EC, v6, v5);
}

uint64_t sub_21BBB16EC()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

void sub_21BBB1750(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v25 = a2;
  v26 = a4;
  v24 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5920, &qword_21BE32AF0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - v9;
  v23 = *(v7 + 16);
  v23(&v21 - v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = (v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  v22 = *(v7 + 32);
  v22(v13 + v11, v10, v6);
  *(v13 + v12) = a3;
  v31 = sub_21BBB7B10;
  v32 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v21 = &v29;
  v29 = sub_21BB42A18;
  v30 = &block_descriptor_168;
  v14 = _Block_copy(&aBlock);
  v15 = a3;

  v16 = v25;
  [v25 setPresentationHandler_];
  _Block_release(v14);
  v23(v10, v24, v6);
  v17 = swift_allocObject();
  v22(v17 + v11, v10, v6);
  *(v17 + v12) = v16;
  *(v17 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = v15;
  v31 = sub_21BBB7BA8;
  v32 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_21BBB1C7C;
  v30 = &block_descriptor_174;
  v18 = _Block_copy(&aBlock);
  v19 = v15;
  v20 = v16;

  [v20 performWithContext:v26 completion:v18];
  _Block_release(v18);
}

void sub_21BBB1A34(uint64_t a1, void *a2)
{
  if (qword_27CDB4F20 != -1)
  {
    swift_once();
  }

  sub_21BC83C2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5920, &qword_21BE32AF0);
  sub_21BE28D2C();
  v3 = [a2 view];
  if (v3)
  {
    v4 = v3;
    [v3 setUserInteractionEnabled_];
  }

  else
  {
    __break(1u);
  }
}

void sub_21BBB1AF8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_21BE26A4C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE260FC();
  v11 = [a1 error];
  sub_21BC51D50(v11);

  (*(v7 + 8))(v10, v6);
  if (([a1 loadSuccess] & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5920, &qword_21BE32AF0);
    sub_21BE28D2C();
  }

  v12 = [a4 view];
  if (v12)
  {
    v13 = v12;
    [v12 setUserInteractionEnabled_];
  }

  else
  {
    __break(1u);
  }
}

void sub_21BBB1C7C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_21BBB1CE4(void *a1)
{
  v2 = sub_21BE26A4C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 cancel];
  sub_21BE260FC();
  v7 = sub_21BE26A2C();
  v8 = sub_21BE28FCC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_21BB3D81C(0xD00000000000002FLL, 0x800000021BE56460, &v13);
    _os_log_impl(&dword_21BB35000, v7, v8, "%s cancelled", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x21CF05C50](v10, -1, -1);
    MEMORY[0x21CF05C50](v9, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_21BBB2020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_21BE28D7C();
  v4[6] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BBB20BC, v6, v5);
}

uint64_t sub_21BBB20BC()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];

  v0[7] = _Block_copy(v3);
  v6 = v5;
  v7 = v4;
  v8 = v2;
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_21BBB2188;
  v10 = v0[5];
  v12 = v0[2];
  v11 = v0[3];

  return FAFamilySettingsViewControllerV2.loadMemberDetails(member:navigationController:)(v12, v11);
}

uint64_t sub_21BBB2188()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 24);
  v5 = *(*v0 + 16);
  v8 = *v0;

  v2[2](v2);
  _Block_release(v2);
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_21BBB22FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = sub_21BE28D7C();
  v5[4] = sub_21BE28D6C();
  v7 = swift_task_alloc();
  v5[5] = v7;
  *v7 = v5;
  v7[1] = sub_21BBB23BC;

  return sub_21BBAC1F4(a5);
}

uint64_t sub_21BBB23BC(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v8 = *v1;
  *(*v1 + 48) = a1;

  v6 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BBB2500, v6, v5);
}

uint64_t sub_21BBB2500()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[2];

  *v3 = v1;
  v4 = v0[1];

  return v4();
}

uint64_t sub_21BBB25CC(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_21BBB26A4()
{
  v1 = v0;
  v2 = sub_21BE26A4C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE2614C();
  v7 = sub_21BE26A2C();
  v8 = sub_21BE28FCC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_21BB3D81C(0xD000000000000012, 0x800000021BE563B0, &v13);
    _os_log_impl(&dword_21BB35000, v7, v8, "%s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x21CF05C50](v10, -1, -1);
    MEMORY[0x21CF05C50](v9, -1, -1);
  }

  result = (*(v3 + 8))(v6, v2);
  *(v1 + OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_disclosureHookWasCalled) = 1;
  return result;
}

void sub_21BBB2898()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v20 - v3;
  v5 = OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_disclosureViewController;
  v6 = *(v0 + OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_disclosureViewController);
  if (v6)
  {
    [v6 dismissViewControllerAnimated:1 completion:0];
    v7 = *(v0 + v5);
    *(v0 + v5) = 0;

    v8 = objc_opt_self();
    v9 = [v8 defaultCenter];
    if (qword_27CDB4FC0 != -1)
    {
      swift_once();
    }

    [v9 removeObserver:v0 name:qword_27CDD4338 object:0];

    v10 = [v8 defaultCenter];
    if (qword_27CDB4F08 != -1)
    {
      swift_once();
    }

    [v10 removeObserver:v0 name:qword_27CDB7EB0 object:0];

    if (*(v0 + OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_disclosureHookWasCalled) & 1) == 0 && (sub_21BBB58B4())
    {
      v11 = OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2__presenter;
      swift_beginAccess();
      v12 = *(v0 + v11);
      if (v12 && (v13 = [v12 navigationController]) != 0)
      {
        v14 = v13;
        v15 = [v13 popViewControllerAnimated_];
      }

      else
      {
        v16 = sub_21BE28DAC();
        (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
        sub_21BE28D7C();
        v17 = sub_21BE28D6C();
        v18 = swift_allocObject();
        v19 = MEMORY[0x277D85700];
        *(v18 + 16) = v17;
        *(v18 + 24) = v19;
        sub_21BBA932C(0, 0, v4, &unk_21BE329F8, v18);
      }
    }
  }
}

uint64_t sub_21BBB2B4C()
{
  v0[2] = sub_21BE28D7C();
  v0[3] = sub_21BE28D6C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21BBAA898;

  return sub_21BD440CC();
}

uint64_t sub_21BBB2C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_21BE26A4C();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  sub_21BE28D7C();
  v4[6] = sub_21BE28D6C();
  v9 = sub_21BE28D0C();
  v4[7] = v9;
  v4[8] = v8;

  return MEMORY[0x2822009F8](sub_21BBB2D40, v9, v8);
}

uint64_t sub_21BBB2D40()
{
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_21BBB2E04;

  return sub_21BD9DCC4();
}

uint64_t sub_21BBB2E04(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v7 = *(v4 + 56);
    v8 = *(v4 + 64);
    v9 = sub_21BBB2F9C;
  }

  else
  {

    v7 = *(v4 + 56);
    v8 = *(v4 + 64);
    v9 = sub_21BBB2F2C;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_21BBB2F2C()
{
  v1 = v0[6];
  v2 = v0[2];

  sub_21BBABB40();
  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_21BBB2F9C()
{
  v1 = v0[10];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v5 = v0[4];

  sub_21BE2614C();
  v6 = v1;
  sub_21BC51D50(v1);

  (*(v5 + 8))(v3, v4);
  v7 = v0[5];

  v8 = v0[1];

  return v8();
}

uint64_t sub_21BBB30BC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_21BBB3120(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(v3 + 40);
  sub_21BE29ACC();
  sub_21BE28ABC();
  v7 = sub_21BE29B0C();

  return a3(a1, a2, v7);
}