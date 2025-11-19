uint64_t type metadata accessor for MarketingArtwork()
{
  result = qword_281105FE8;
  if (!qword_281105FE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20C5D3C74()
{
  sub_20C5EDD64();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_20C5D3CE8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20C64E1F0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_20C5D3D3C()
{
  sub_20C5D3CE8(319, &qword_281106818, MEMORY[0x277D09D68]);
  if (v0 <= 0x3F)
  {
    sub_20C5D3CE8(319, &qword_281106840, MEMORY[0x277CC9260]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20C5D3DF8()
{
  if (!qword_281105B78[0])
  {
    sub_20C64D040();
    sub_20C64A3D0(&qword_281106808, MEMORY[0x277D09E00]);
    v0 = sub_20C64D090();
    if (!v1)
    {
      atomic_store(v0, qword_281105B78);
    }
  }
}

uint64_t type metadata accessor for AudioLanguageEngagementSheet()
{
  result = qword_281105C08;
  if (!qword_281105C08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20C5D3ED8()
{
  sub_20C5D4024(319, &qword_281105798, type metadata accessor for MarketingActionItem, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_20C5D4024(319, qword_281105FB8, type metadata accessor for MarketingArtwork, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20C5D4388();
      if (v2 <= 0x3F)
      {
        sub_20C5D4024(319, &qword_281105B40, sub_20C5D43D8, MEMORY[0x277D0A898]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_20C5D4024(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t type metadata accessor for MarketingActionItem()
{
  result = qword_2811067D0;
  if (!qword_2811067D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20C5D40D4()
{
  type metadata accessor for MarketingAction();
  if (v0 <= 0x3F)
  {
    sub_20C5D4338(319, &qword_2811057A8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for MarketingAction()
{
  result = qword_281106110;
  if (!qword_281106110)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20C5D41D8()
{
  sub_20C5D424C();
  if (v0 <= 0x3F)
  {
    sub_20C64CF10();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_20C5D424C()
{
  if (!qword_281105B70)
  {
    sub_20C5D4294();
    if (!v1)
    {
      atomic_store(v0, &qword_281105B70);
    }
  }
}

void sub_20C5D4294()
{
  if (!qword_281105B60)
  {
    sub_20C5D42EC();
    v0 = sub_20C64D0C0();
    if (!v1)
    {
      atomic_store(v0, &qword_281105B60);
    }
  }
}

unint64_t sub_20C5D42EC()
{
  result = qword_281105788;
  if (!qword_281105788)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281105788);
  }

  return result;
}

void sub_20C5D4338(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_20C5D4388()
{
  if (!qword_2811057A8)
  {
    v0 = sub_20C64E1F0();
    if (!v1)
    {
      atomic_store(v0, &qword_2811057A8);
    }
  }
}

unint64_t sub_20C5D43D8()
{
  result = qword_281105770;
  if (!qword_281105770)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281105770);
  }

  return result;
}

unint64_t sub_20C5D4428()
{
  result = qword_281105F58[0];
  if (!qword_281105F58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281105F58);
  }

  return result;
}

uint64_t type metadata accessor for MarketingOffer()
{
  result = qword_2811061B0;
  if (!qword_2811061B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20C5D44C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MarketingAction();
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

uint64_t sub_20C5D4588(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MarketingAction();
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

uint64_t sub_20C5D4644(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CDFE0, &qword_20C64F410);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_20C5D46BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CDFE0, &qword_20C64F410);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

unint64_t sub_20C5D4764()
{
  if (*v0)
  {
    result = 0x746E756F4378616DLL;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_20C5D47FC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_20C64CFE0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for AudioLanguageEngagementSheetLayout();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_20C64CFB0();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE0F8, &qword_20C64FC10);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_20C5D4990(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_20C64CFE0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for AudioLanguageEngagementSheetLayout();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = sub_20C64CFB0();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE0F8, &qword_20C64FC10);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_20C5D4B30()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_20C5D4B6C()
{
  v1 = type metadata accessor for AudioLanguageEngagementSheet();
  v13 = *(*(v1 - 8) + 64);
  v2 = (*(*(v1 - 8) + 80) + 33) & ~*(*(v1 - 8) + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  sub_20C5E3044();
  v6 = v0 + v2;
  v7 = sub_20C64CE50();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v0 + v2, 1, v7))
  {
    (*(v8 + 8))(v0 + v2, v7);
  }

  v10 = *(v1 + 20);
  if (!v9(v6 + v10, 1, v7))
  {
    (*(v8 + 8))(v6 + v10, v7);
  }

  v11 = *(v1 + 24);
  if (!v9(v6 + v11, 1, v7))
  {
    (*(v8 + 8))(v6 + v11, v7);
  }

  return swift_deallocObject();
}

uint64_t sub_20C5D4D2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE2E8, &qword_20C650030);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C5D4DE4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE3F8, &unk_20C650590);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE400, &qword_20C6573B0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_20C5D4F20(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE3F8, &unk_20C650590);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE400, &qword_20C6573B0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_20C5D505C@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_20C5D5094(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C64D070();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_20C5D5100(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C64D070();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_20C5D5170(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE2E0, &qword_20C650FD0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_20C5D51E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE2E0, &qword_20C650FD0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_20C5D5264()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_20C5D529C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_20C5D52D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_20C5E3044();
  v4 = *(v0 + 40);

  v5 = *(v0 + 48);

  v6 = *(v0 + 64);

  v7 = *(v0 + 72);

  return swift_deallocObject();
}

uint64_t sub_20C5D5330(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE740, &qword_20C651A30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C5D53AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE7B0, &unk_20C651C00);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF080, &qword_20C654360);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_20C5D54B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE7B0, &unk_20C651C00);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF080, &qword_20C654360);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_20C5D55D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_20C5D560C()
{
  v1 = type metadata accessor for AudioLanguageEngagementSheet();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v14 = *(*(v1 - 8) + 64);
  v3 = v0 + v2;
  v4 = sub_20C64CE50();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!v6(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v7 = *(v1 + 20);
  if (!v6(v3 + v7, 1, v4))
  {
    (*(v5 + 8))(v3 + v7, v4);
  }

  v8 = *(v1 + 24);
  if (!v6(v3 + v8, 1, v4))
  {
    (*(v5 + 8))(v3 + v8, v4);
  }

  v9 = (v14 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + v9);
  v11 = *(v0 + v9 + 8);
  v12 = *(v0 + v9 + 16);
  sub_20C5E3044();

  return swift_deallocObject();
}

double sub_20C5D57D8(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 185) = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_20C5D57FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEB50, &qword_20C652CB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C5D586C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEB50, &qword_20C652CB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C5D58D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_20C64D3F0();
  *a1 = result;
  return result;
}

uint64_t sub_20C5D593C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_20C5D5974(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = *(a3 + 16);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CECB0, &qword_20C6533E0);
    swift_getFunctionTypeMetadata1();
    v9 = sub_20C64D010();
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
      v14 = *(a3 + 24);
      type metadata accessor for MarketingActionItem();
      type metadata accessor for MarketingOffer();
      swift_getFunctionTypeMetadata();
      v15 = sub_20C64D010();
      return (*(*(v15 - 8) + 48))(a1 + *(a3 + 60), a2, v15);
    }
  }
}

uint64_t sub_20C5D5B18(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v8 = *(a4 + 16);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CECB0, &qword_20C6533E0);
    swift_getFunctionTypeMetadata1();
    v9 = sub_20C64D010();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = *(v10 + 56);
      v13 = v5 + *(a4 + 56);

      return v12(v13, a2, a2, v11);
    }

    else
    {
      v14 = *(a4 + 24);
      type metadata accessor for MarketingActionItem();
      type metadata accessor for MarketingOffer();
      swift_getFunctionTypeMetadata();
      v15 = sub_20C64D010();
      return (*(*(v15 - 8) + 56))(v5 + *(a4 + 60), a2, a2, v15);
    }
  }

  return result;
}

uint64_t sub_20C5D5CC0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC50, &qword_20C653380);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC58, &qword_20C653388);
  sub_20C5E5558(&qword_281105790, &qword_27C7CEC58, &qword_20C653388);
  sub_20C64DD90();
  swift_getWitnessTable();
  sub_20C64DD60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC60, &qword_20C653390);
  sub_20C64D2E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC68, &qword_20C653398);
  sub_20C64D2E0();
  sub_20C5E5558(&qword_281105820, &qword_27C7CEC60, &qword_20C653390);
  swift_getWitnessTable();
  sub_20C5E5558(&qword_2811058E8, &qword_27C7CEC68, &qword_20C653398);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC70, &qword_20C6533A0);
  sub_20C64D560();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC78, &qword_20C6533A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC80, &unk_20C6533B0);
  sub_20C602C18();
  sub_20C5E5558(&qword_2811057F8, &qword_27C7CEC78, &qword_20C6533A8);
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_20C602C6C();
  swift_getOpaqueTypeMetadata2();
  sub_20C64D560();
  sub_20C64DCA0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC88, &qword_20C653700);
  sub_20C64D2E0();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_20C5E5558(&qword_2811058A0, &qword_27C7CEC88, &qword_20C653700);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_20C64D560();
  sub_20C64D560();
  sub_20C64DCA0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC90, &qword_20C6533C0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC98, &qword_20C6533C8);
  sub_20C602CC0();
  sub_20C602E88();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_20C64D2E0();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_20C5D6348(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEC90, &qword_20C6533C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C5D63B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEC90, &qword_20C6533C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C5D6428()
{
  v31 = *(v0 + 16);
  v29 = *(v0 + 24);
  v32 = *(v0 + 40);
  v1 = (type metadata accessor for MarketingButton() - 8);
  v2 = (*(*v1 + 80) + 48) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = type metadata accessor for MarketingOffer();
  v30 = *(*(v4 - 1) + 64);
  v5 = (v2 + v3 + *(*(v4 - 1) + 80)) & ~*(*(v4 - 1) + 80);
  v6 = (v0 + v2);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  sub_20C5E3044();
  v10 = v1[16];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CECB0, &qword_20C6533E0);
  swift_getFunctionTypeMetadata1();
  v11 = sub_20C64D010();
  (*(*(v11 - 8) + 8))(v6 + v10, v11);
  v12 = v1[17];
  type metadata accessor for MarketingActionItem();
  swift_getFunctionTypeMetadata();
  v13 = sub_20C64D010();
  (*(*(v13 - 8) + 8))(v6 + v12, v13);
  v14 = v0 + v5;
  v15 = *(v0 + v5);

  v16 = v0 + v5 + v4[5];
  v17 = type metadata accessor for MarketingArtwork();
  if (!(*(*(v17 - 8) + 48))(v16, 1, v17))
  {
    v18 = sub_20C64D030();
    v19 = *(v18 - 8);
    if (!(*(v19 + 48))(v16, 1, v18))
    {
      (*(v19 + 8))(v16, v18);
    }

    v20 = *(v17 + 20);
    v21 = sub_20C64CF10();
    v22 = *(v21 - 8);
    if (!(*(v22 + 48))(v16 + v20, 1, v21))
    {
      (*(v22 + 8))(v16 + v20, v21);
    }
  }

  v23 = *(v14 + v4[6] + 8);

  v24 = *(v14 + v4[7] + 8);

  v25 = *(v14 + v4[8] + 8);

  v26 = v4[9];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE400, &qword_20C6573B0);
  (*(*(v27 - 8) + 8))(v14 + v26, v27);
  return swift_deallocObject();
}

uint64_t sub_20C5D6848()
{
  v1 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_20C5D6994()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CED10, &qword_20C6536B8);
  sub_20C64D510();
  sub_20C60862C();
  sub_20C6098DC(&qword_281105990, MEMORY[0x277CDDF40]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C5D6A4C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_20C5D6A5C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_20C5D6A84()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_20C5D6AD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MarketingActionItem();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 7)
  {
    return v5 - 6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20C5D6B3C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 6);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for MarketingActionItem();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_20C5D6BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C64CF10();
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

uint64_t sub_20C5D6C7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20C64CF10();
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

uint64_t sub_20C5D6D4C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_20C5D6D98()
{
  v1 = sub_20C64CF10();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_20C5D6E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C64CF10();
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

uint64_t sub_20C5D6EDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20C64CF10();
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

uint64_t get_enum_tag_for_layout_string_s6ResultOySo014AMSCarrierLinkA0Cs5Error_pGIegg_Sg_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_20C5D6FDC@<X0>(void *a1@<X8>)
{
  result = sub_20C64D3D0();
  *a1 = v3;
  return result;
}

uint64_t sub_20C5D7030@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20C64D410();
  *a1 = result;
  return result;
}

uint64_t sub_20C5D705C(uint64_t *a1)
{
  v1 = *a1;

  return sub_20C64D420();
}

uint64_t sub_20C5D7088@<X0>(uint64_t a1@<X8>)
{
  result = sub_20C64D430();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_20C5D70BC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_20C64D440();
}

uint64_t sub_20C5D70F4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_20C5D712C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20C64DCB0();
  *a1 = result;
  return result;
}

uint64_t sub_20C5D71B0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_20C64CFE0();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_3:
    v10 = *(v8 + 48);

    return v10(a1 + v9, a2, v7);
  }

  if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[6] + 16);
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
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEC80, &unk_20C6533B0);
    if (*(*(v14 - 8) + 84) == a2)
    {
      v7 = v14;
      v8 = *(v14 - 8);
      v9 = a3[9];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CECC0, &qword_20C653470);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[11];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_20C5D7348(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_20C64CFE0();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[5];
LABEL_3:
    v12 = *(v10 + 56);

    return v12(a1 + v11, a2, a2, v9);
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[6] + 16) = a2;
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEC80, &unk_20C6533B0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[9];
    goto LABEL_3;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CECC0, &qword_20C653470);
  v15 = *(*(v14 - 8) + 56);
  v16 = a1 + a4[11];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_20C5D74E0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  return swift_deallocObject();
}

uint64_t sub_20C5D7540()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_20C5D75BC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_20C64D2E0();
  sub_20C62E2C4();
  return swift_getWitnessTable();
}

uint64_t sub_20C5D7620()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_20C5D7658()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  sub_20C5E3044();
  v5 = *(v0 + 48);

  v6 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_20C5D76E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_20C5D771C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF9D0, &unk_20C657188);
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
    v12 = *(a1 + *(a3 + 60));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = *(a3 + 16);
    swift_getFunctionTypeMetadata1();
    v14 = sub_20C64D010();
    v15 = *(v14 - 8);
    if (*(v15 + 84) == a2)
    {
      v8 = v14;
      v9 = *(v15 + 48);
      v10 = a1 + *(a3 + 64);
      goto LABEL_3;
    }

    v16 = *(a3 + 24);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CE3F8, &unk_20C650590);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF1B8, &unk_20C657110);
    swift_getFunctionTypeMetadata2();
    v17 = sub_20C64D010();
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + *(a3 + 68);

    return v18(v19, a2, v17);
  }
}

uint64_t sub_20C5D7918(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF9D0, &unk_20C657188);
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
    *(a1 + *(a4 + 60)) = (a2 - 1);
    return result;
  }

  v13 = *(a4 + 16);
  swift_getFunctionTypeMetadata1();
  v14 = sub_20C64D010();
  v15 = *(v14 - 8);
  if (*(v15 + 84) == a3)
  {
    v10 = v14;
    v11 = *(v15 + 56);
    v12 = a1 + *(a4 + 64);
    goto LABEL_3;
  }

  v16 = *(a4 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CE3F8, &unk_20C650590);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF1B8, &unk_20C657110);
  swift_getFunctionTypeMetadata2();
  v17 = sub_20C64D010();
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + *(a4 + 68);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_20C5D7B14(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  v5 = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF9A8, &qword_20C6570B8);
  sub_20C64D700();
  sub_20C64D2E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF168, &unk_20C6570C0);
  sub_20C64D2E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF170, &qword_20C654518);
  swift_getOpaqueTypeMetadata2();
  sub_20C64D2E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF178, &unk_20C6570D0);
  sub_20C64D2E0();
  type metadata accessor for MarketingInlineView.FocusedButton();
  sub_20C64E1F0();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_20C5E5558(&qword_2811058A8, &qword_27C7CF178, &unk_20C6570D0);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_20C64DE30();
  swift_getWitnessTable();
  sub_20C64DD60();
  sub_20C64D2E0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_20C64D340();
  sub_20C64D2E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF180, &qword_20C654520);
  sub_20C64D2E0();
  sub_20C64D2E0();
  sub_20C64D2E0();
  sub_20C64D2E0();
  sub_20C64D2E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF1F0, &qword_20C6570E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF9B0, &qword_20C6570E8);
  sub_20C64D2E0();
  swift_getTupleTypeMetadata3();
  sub_20C64DE30();
  swift_getWitnessTable();
  sub_20C64DD60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF9B8, &qword_20C6570F0);
  sub_20C64D2E0();
  sub_20C64D2E0();
  sub_20C64D2E0();
  sub_20C64D2E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF9C0, &qword_20C6570F8);
  sub_20C64D2E0();
  swift_getWitnessTable();
  sub_20C5E5558(&qword_2811058B0, &qword_27C7CF9B8, &qword_20C6570F0);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_20C5E5558(&qword_281105988, &qword_27C7CF9C0, &qword_20C6570F8);
  swift_getWitnessTable();
  sub_20C64D340();
  sub_20C64D2E0();
  sub_20C64D2E0();
  sub_20C64D2E0();
  sub_20C64D2E0();
  sub_20C64D560();
  sub_20C64DCA0();
  sub_20C630C78();
  swift_getWitnessTable();
  sub_20C5E5558(&qword_27C7CF198, &qword_27C7CF168, &unk_20C6570C0);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_20C5E5558(&qword_281105B18, &qword_27C7CF180, &qword_20C654520);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_20C64D560();
  sub_20C64DCA0();
  sub_20C630CD0();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_20C64D2E0();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C5D84F4()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  return swift_deallocObject();
}

uint64_t sub_20C5D8554()
{
  v1 = type metadata accessor for MarketingOffer();
  v2 = (*(*(v1 - 1) + 80) + 120) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = type metadata accessor for MarketingActionItem();
  v33 = (v2 + v3 + *(*(v4 - 1) + 80)) & ~*(*(v4 - 1) + 80);
  v32 = *(*(v4 - 1) + 64);
  v5 = *(v0 + 24);

  v6 = *(v0 + 40);

  v7 = *(v0 + 56);

  v8 = *(v0 + 72);

  v9 = *(v0 + 88);

  v10 = *(v0 + 104);

  v11 = v0 + v2;
  v12 = *(v0 + v2);

  v13 = v0 + v2 + v1[5];
  v14 = type metadata accessor for MarketingArtwork();
  if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
  {
    v15 = sub_20C64D030();
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(v13, 1, v15))
    {
      (*(v16 + 8))(v13, v15);
    }

    v17 = *(v14 + 20);
    v18 = sub_20C64CF10();
    v19 = *(v18 - 8);
    if (!(*(v19 + 48))(v13 + v17, 1, v18))
    {
      (*(v19 + 8))(v13 + v17, v18);
    }
  }

  v20 = *(v11 + v1[6] + 8);

  v21 = *(v11 + v1[7] + 8);

  v22 = *(v11 + v1[8] + 8);

  v23 = v1[9];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE400, &qword_20C6573B0);
  (*(*(v24 - 8) + 8))(v11 + v23, v24);
  v25 = v0 + v33;
  type metadata accessor for MarketingAction();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
  {
    v27 = sub_20C64CF10();
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_12;
    }

    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE1A0, " 7");
  }

  (*(*(v27 - 8) + 8))(v25, v27);
LABEL_12:
  v28 = *(v25 + v4[5] + 8);

  v29 = *(v25 + v4[6] + 8);

  v30 = *(v25 + v4[8] + 8);

  return swift_deallocObject();
}

uint64_t sub_20C5D894C()
{
  v1 = sub_20C64CF10();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 112) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for MarketingOffer();
  v40 = *(*(v5 - 1) + 80);
  v6 = (v3 + v4 + v40) & ~v40;
  v7 = *(*(v5 - 1) + 64);
  v8 = type metadata accessor for MarketingActionItem();
  v38 = *(*(v8 - 1) + 80);
  v39 = *(*(v8 - 1) + 64);
  v9 = *(v0 + 3);

  v10 = *(v0 + 5);

  v11 = *(v0 + 7);

  v12 = *(v0 + 9);

  v13 = *(v0 + 11);

  v14 = *(v0 + 13);

  v41 = v1;
  v15 = v1;
  v16 = (v6 + v7 + v38) & ~v38;
  v37 = *(v2 + 8);
  v37(&v0[v3], v15);
  v17 = &v0[v6];
  v18 = *&v0[v6];

  v19 = &v0[v6 + v5[5]];
  v20 = type metadata accessor for MarketingArtwork();
  if (!(*(*(v20 - 8) + 48))(v19, 1, v20))
  {
    v36 = v16;
    v21 = sub_20C64D030();
    v22 = *(v21 - 8);
    if (!(*(v22 + 48))(v19, 1, v21))
    {
      (*(v22 + 8))(v19, v21);
    }

    v23 = *(v20 + 20);
    v16 = v36;
    if (!(*(v2 + 48))(&v19[v23], 1, v41))
    {
      v37(&v19[v23], v41);
    }
  }

  v24 = *&v17[v5[6] + 8];

  v25 = *&v17[v5[7] + 8];

  v26 = *&v17[v5[8] + 8];

  v27 = v5[9];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE400, &qword_20C6573B0);
  (*(*(v28 - 8) + 8))(&v17[v27], v28);
  v29 = &v0[v16];
  type metadata accessor for MarketingAction();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
  {
    v37(&v0[v16], v41);
  }

  else if (!EnumCaseMultiPayload)
  {
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE1A0, " 7");
    (*(*(v31 - 8) + 8))(&v0[v16], v31);
  }

  v32 = *&v29[v8[5] + 8];

  v33 = *&v29[v8[6] + 8];

  v34 = *&v29[v8[8] + 8];

  return swift_deallocObject();
}

uint64_t sub_20C5D8D98()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[16];

  return swift_deallocObject();
}

uint64_t sub_20C5D8E00()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_20C5D8E3C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_20C64CF70();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_20C5D8EE8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_20C64CF70();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20C5D8FA0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_20C5D8FD8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_20C5D9058(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_20C64CFE0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF1B8, &unk_20C657110);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[8] + 16);
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

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF9E8, &qword_20C657250);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[10];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_20C5D91F4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_20C64CFE0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF1B8, &unk_20C657110);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[8] + 16) = a2;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF9E8, &qword_20C657250);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[10];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t MarketingActionItem.identifier.getter()
{
  v1 = (v0 + *(type metadata accessor for MarketingActionItem() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MarketingActionItem.footnote.getter()
{
  v1 = (v0 + *(type metadata accessor for MarketingActionItem() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MarketingActionItem.style.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MarketingActionItem();
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t MarketingActionItem.title.getter()
{
  v1 = (v0 + *(type metadata accessor for MarketingActionItem() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MarketingActionItem.init(identifier:action:footnote:style:title:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v17 = *a6;
  v18 = type metadata accessor for MarketingActionItem();
  v19 = (a9 + v18[5]);
  *v19 = a1;
  v19[1] = a2;
  result = sub_20C5D95DC(a3, a9);
  v21 = (a9 + v18[6]);
  *v21 = a4;
  v21[1] = a5;
  *(a9 + v18[7]) = v17;
  v22 = (a9 + v18[8]);
  *v22 = a7;
  v22[1] = a8;
  return result;
}

uint64_t sub_20C5D95DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MarketingAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t MarketingActionItem.init(_:style:)@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CDF80, &qword_20C64F150);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v40 - v8;
  v10 = type metadata accessor for MarketingAction();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v40 - v16;
  v18 = *a2;
  v19 = [a1 callToActionLabel];
  if (!v19)
  {

    goto LABEL_5;
  }

  v20 = v19;
  v41 = sub_20C64E050();
  v22 = v21;

  v23 = a1;
  sub_20C5FCD30(v23, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {

    sub_20C5D99E4(v9);
LABEL_5:
    v24 = type metadata accessor for MarketingActionItem();
    return (*(*(v24 - 8) + 56))(a3, 1, 1, v24);
  }

  sub_20C5D95DC(v9, v17);
  v26 = [v23 offerID];
  if (v26)
  {
    v27 = v26;
    v40 = sub_20C64E050();
    v29 = v28;
  }

  else
  {
    v40 = 0;
    v29 = 0;
  }

  v30 = v18;
  sub_20C5DA684(v17, v15, type metadata accessor for MarketingAction);
  v31 = [v23 disclaimerText];
  if (v31)
  {
    v32 = v31;
    v33 = sub_20C64E050();
    v35 = v34;

    sub_20C5DA6EC(v17, type metadata accessor for MarketingAction);
  }

  else
  {
    sub_20C5DA6EC(v17, type metadata accessor for MarketingAction);

    v33 = 0;
    v35 = 0;
  }

  v36 = type metadata accessor for MarketingActionItem();
  v37 = (a3 + v36[5]);
  *v37 = v40;
  v37[1] = v29;
  sub_20C5D95DC(v15, a3);
  v38 = (a3 + v36[6]);
  *v38 = v33;
  v38[1] = v35;
  *(a3 + v36[7]) = v30;
  v39 = (a3 + v36[8]);
  *v39 = v41;
  v39[1] = v22;
  return (*(*(v36 - 1) + 56))(a3, 0, 1, v36);
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

uint64_t sub_20C5D99E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CDF80, &qword_20C64F150);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C5D9A4C()
{
  v1 = *v0;
  sub_20C64E4A0();
  MEMORY[0x20F301800](v1);
  return sub_20C64E4E0();
}

uint64_t sub_20C5D9A94()
{
  v1 = *v0;
  sub_20C64E4A0();
  MEMORY[0x20F301800](v1);
  return sub_20C64E4E0();
}

uint64_t sub_20C5D9AD8()
{
  v1 = *v0;
  v2 = 0x6E6F69746361;
  v3 = 0x65746F6E746F6F66;
  v4 = 0x656C797473;
  if (v1 != 3)
  {
    v4 = 0x656C746974;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x696669746E656469;
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

uint64_t sub_20C5D9B6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C5DA944(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20C5D9BAC(uint64_t a1)
{
  v2 = sub_20C5DA0E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5D9BE8(uint64_t a1)
{
  v2 = sub_20C5DA0E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MarketingActionItem.id.getter()
{
  v1 = sub_20C64CF70();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for MarketingActionItem() + 20));
  if (v6[1])
  {
    v7 = *v6;
    v8 = v6[1];
  }

  else
  {
    sub_20C64CF60();
    v7 = sub_20C64CF40();
    (*(v2 + 8))(v5, v1);
  }

  return v7;
}

uint64_t sub_20C5D9D30@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_20C64CF70();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v2 + *(a1 + 20));
  if (v10[1])
  {
    v11 = *v10;
    v12 = v10[1];
  }

  else
  {
    sub_20C64CF60();
    v11 = sub_20C64CF40();
    v12 = v13;
    (*(v6 + 8))(v9, v5);
  }

  *a2 = v11;
  a2[1] = v12;
}

uint64_t MarketingActionItem.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CDF88, &qword_20C64F158);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C5DA0E8();
  sub_20C64E500();
  v22[15] = 0;
  type metadata accessor for MarketingAction();
  sub_20C5DACAC(&qword_27C7CDF98, type metadata accessor for MarketingAction);
  sub_20C64E410();
  if (!v2)
  {
    v11 = type metadata accessor for MarketingActionItem();
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    v22[14] = 1;
    sub_20C64E3C0();
    v15 = (v3 + v11[6]);
    v16 = *v15;
    v17 = v15[1];
    v22[13] = 2;
    sub_20C64E3C0();
    v22[12] = *(v3 + v11[7]);
    v22[11] = 3;
    sub_20C5DA13C();
    sub_20C64E410();
    v18 = (v3 + v11[8]);
    v19 = *v18;
    v20 = v18[1];
    v22[10] = 4;
    sub_20C64E3E0();
  }

  return (*(v6 + 8))(v9, v5);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_20C5DA0E8()
{
  result = qword_27C7CDF90;
  if (!qword_27C7CDF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CDF90);
  }

  return result;
}

unint64_t sub_20C5DA13C()
{
  result = qword_27C7CDFA0;
  if (!qword_27C7CDFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CDFA0);
  }

  return result;
}

uint64_t MarketingActionItem.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = type metadata accessor for MarketingAction();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v33 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CDFA8, &qword_20C64F160);
  v32 = *(v34 - 8);
  v7 = *(v32 + 64);
  MEMORY[0x28223BE20](v34);
  v9 = &v30 - v8;
  v10 = type metadata accessor for MarketingActionItem();
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C5DA0E8();
  v35 = v9;
  sub_20C64E4F0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v32;
  v16 = v13;
  v41 = 0;
  sub_20C5DACAC(&qword_27C7CDFB0, type metadata accessor for MarketingAction);
  v18 = v33;
  v17 = v34;
  sub_20C64E390();
  sub_20C5D95DC(v18, v16);
  v40 = 1;
  v19 = sub_20C64E340();
  v20 = (v16 + v10[5]);
  *v20 = v19;
  v20[1] = v21;
  v39 = 2;
  v22 = sub_20C64E340();
  v23 = (v16 + v10[6]);
  *v23 = v22;
  v23[1] = v24;
  v37 = 3;
  sub_20C5DA630();
  sub_20C64E390();
  *(v16 + v10[7]) = v38;
  v36 = 4;
  v25 = sub_20C64E360();
  v27 = v26;
  (*(v15 + 8))(v35, v17);
  v28 = (v16 + v10[8]);
  *v28 = v25;
  v28[1] = v27;
  sub_20C5DA684(v16, v31, type metadata accessor for MarketingActionItem);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_20C5DA6EC(v16, type metadata accessor for MarketingActionItem);
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

unint64_t sub_20C5DA630()
{
  result = qword_27C7CDFB8;
  if (!qword_27C7CDFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CDFB8);
  }

  return result;
}

uint64_t sub_20C5DA684(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20C5DA6EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t MarketingActionItem.hash(into:)()
{
  MarketingAction.hash(into:)();
  v1 = type metadata accessor for MarketingActionItem();
  v2 = (v0 + v1[5]);
  if (v2[1])
  {
    v3 = *v2;
    sub_20C64E4C0();
    sub_20C64E090();
  }

  else
  {
    sub_20C64E4C0();
  }

  v4 = (v0 + v1[6]);
  if (v4[1])
  {
    v5 = *v4;
    sub_20C64E4C0();
    sub_20C64E090();
  }

  else
  {
    sub_20C64E4C0();
  }

  v6 = *(v0 + v1[7]);
  MEMORY[0x20F301800](v6 >> 7);
  MEMORY[0x20F301800](v6 & 0x7F);
  v7 = (v0 + v1[8]);
  v8 = *v7;
  v9 = v7[1];

  return sub_20C64E090();
}

uint64_t MarketingActionItem.hashValue.getter()
{
  sub_20C64E4A0();
  MarketingActionItem.hash(into:)();
  return sub_20C64E4E0();
}

uint64_t sub_20C5DA8C0()
{
  sub_20C64E4A0();
  MarketingActionItem.hash(into:)();
  return sub_20C64E4E0();
}

uint64_t sub_20C5DA904()
{
  sub_20C64E4A0();
  MarketingActionItem.hash(into:)();
  return sub_20C64E4E0();
}

uint64_t sub_20C5DA944(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v4 || (sub_20C64E430() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_20C64E430() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65746F6E746F6F66 && a2 == 0xE800000000000000 || (sub_20C64E430() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000 || (sub_20C64E430() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_20C64E430();

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

uint64_t _s16FitnessMarketing0B10ActionItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s16FitnessMarketing0B6ActionO2eeoiySbAC_ACtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for MarketingActionItem();
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_20C64E430();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (!v15)
  {
    if (!v17)
    {
      goto LABEL_20;
    }

    return 0;
  }

  if (!v17)
  {
    return 0;
  }

  if (*v14 != *v16 || v15 != v17)
  {
    v19 = v4;
    v20 = sub_20C64E430();
    v4 = v19;
    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_20:
  v21 = v4[7];
  v22 = *(a1 + v21);
  v23 = *(a2 + v21);
  if (*(a1 + v21) < 0)
  {
    v24 = 0;
    if ((v23 & 0x80) == 0 || ((v23 ^ v22) & 0x7F) != 0)
    {
      return v24;
    }
  }

  else if (v22 != v23)
  {
    return 0;
  }

  v26 = v4[8];
  v27 = *(a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  if (v27 == *v29 && v28 == v29[1])
  {
    return 1;
  }

  return sub_20C64E430();
}

uint64_t sub_20C5DACAC(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_20C5DAD2C(uint64_t a1, int a2)
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

uint64_t sub_20C5DAD4C(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for MarketingActionItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MarketingActionItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_20C5DAF00()
{
  result = qword_27C7CDFC8;
  if (!qword_27C7CDFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CDFC8);
  }

  return result;
}

unint64_t sub_20C5DAF58()
{
  result = qword_27C7CDFD0;
  if (!qword_27C7CDFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CDFD0);
  }

  return result;
}

unint64_t sub_20C5DAFB0()
{
  result = qword_27C7CDFD8;
  if (!qword_27C7CDFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CDFD8);
  }

  return result;
}

uint64_t sub_20C5DB010(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CDFE0, &qword_20C64F410);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C5DB088(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CDFE0, &qword_20C64F410);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t BubbleTipLayoutState.init(contentMargins:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20C64D070();
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);

  return sub_20C5DB088(a1, a2);
}

uint64_t sub_20C5DB19C()
{
  sub_20C64E4A0();
  MEMORY[0x20F301800](0);
  return sub_20C64E4E0();
}

uint64_t sub_20C5DB1E0()
{
  sub_20C64E4A0();
  MEMORY[0x20F301800](0);
  return sub_20C64E4E0();
}

uint64_t sub_20C5DB244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4D746E65746E6F63 && a2 == 0xEE00736E69677261)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_20C64E430();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_20C5DB2D4(uint64_t a1)
{
  v2 = sub_20C5DB4B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5DB310(uint64_t a1)
{
  v2 = sub_20C5DB4B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BubbleTipLayoutState.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CDFE8, &qword_20C64F418);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C5DB4B0();
  sub_20C64E500();
  sub_20C64D070();
  sub_20C5DC024(&qword_27C7CDFF8);
  sub_20C64E3D0();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_20C5DB4B0()
{
  result = qword_27C7CDFF0;
  if (!qword_27C7CDFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CDFF0);
  }

  return result;
}

uint64_t BubbleTipLayoutState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CDFE0, &qword_20C64F410);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE000, &qword_20C64F420);
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - v9;
  v11 = type metadata accessor for BubbleTipLayoutState();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20C64D070();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C5DB4B0();
  v17 = v22;
  sub_20C64E4F0();
  if (!v17)
  {
    v18 = v21;
    sub_20C5DC024(&qword_27C7CE008);
    sub_20C64E350();
    (*(v20 + 8))(v10, v7);
    sub_20C5DB088(v6, v14);
    sub_20C5DB828(v14, v18);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_20C5DB7CC(v14);
}

uint64_t type metadata accessor for BubbleTipLayoutState()
{
  result = qword_281105C78;
  if (!qword_281105C78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20C5DB7CC(uint64_t a1)
{
  v2 = type metadata accessor for BubbleTipLayoutState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C5DB828(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BubbleTipLayoutState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C5DB8A4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CDFE8, &qword_20C64F418);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C5DB4B0();
  sub_20C64E500();
  sub_20C64D070();
  sub_20C5DC024(&qword_27C7CDFF8);
  sub_20C64E3D0();
  return (*(v3 + 8))(v6, v2);
}

BOOL _s16FitnessMarketing20BubbleTipLayoutStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C64D070();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CDFE0, &qword_20C64F410);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE028, &qword_20C64F5D8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v23 - v16;
  v18 = *(v15 + 56);
  sub_20C5DB010(a1, &v23 - v16);
  sub_20C5DB010(a2, &v17[v18]);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_20C5DB010(v17, v12);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_20C5DC024(&qword_281106800);
      v21 = sub_20C64E010();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_20C5DBFC4(v17, &qword_27C7CDFE0, &qword_20C64F410);
      return (v21 & 1) != 0;
    }

    (*(v5 + 8))(v12, v4);
LABEL_6:
    sub_20C5DBFC4(v17, &qword_27C7CE028, &qword_20C64F5D8);
    return 0;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_20C5DBFC4(v17, &qword_27C7CDFE0, &qword_20C64F410);
  return 1;
}

void sub_20C5DBD10()
{
  sub_20C5DBD7C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_20C5DBD7C()
{
  if (!qword_2811067F8)
  {
    sub_20C64D070();
    v0 = sub_20C64E1F0();
    if (!v1)
    {
      atomic_store(v0, &qword_2811067F8);
    }
  }
}

uint64_t getEnumTagSinglePayload for BubbleTipLayoutState.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for BubbleTipLayoutState.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_20C5DBEC0()
{
  result = qword_27C7CE010;
  if (!qword_27C7CE010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE010);
  }

  return result;
}

unint64_t sub_20C5DBF18()
{
  result = qword_27C7CE018;
  if (!qword_27C7CE018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE018);
  }

  return result;
}

unint64_t sub_20C5DBF70()
{
  result = qword_27C7CE020;
  if (!qword_27C7CE020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE020);
  }

  return result;
}

uint64_t sub_20C5DBFC4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_20C5DC024(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_20C64D070();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_20C5DC088(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_20C5DC0D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_20C5DC130()
{
  if (*v0)
  {
    result = 0x426465646E756F72;
  }

  else
  {
    result = 0x7475426E69616C70;
  }

  *v0;
  return result;
}

uint64_t sub_20C5DC180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7475426E69616C70 && a2 == 0xEB000000006E6F74;
  if (v6 || (sub_20C64E430() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x426465646E756F72 && a2 == 0xED00006E6F747475)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20C64E430();

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

uint64_t sub_20C5DC268(uint64_t a1)
{
  v2 = sub_20C5DC8AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5DC2A4(uint64_t a1)
{
  v2 = sub_20C5DC8AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C5DC2E0(uint64_t a1)
{
  v2 = sub_20C5DC9FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5DC31C(uint64_t a1)
{
  v2 = sub_20C5DC9FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C5DC358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000020C659760 == a2 || (sub_20C64E430() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x746E756F4378616DLL && a2 == 0xE800000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_20C64E430();

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

uint64_t sub_20C5DC440(uint64_t a1)
{
  v2 = sub_20C5DC900();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5DC47C(uint64_t a1)
{
  v2 = sub_20C5DC900();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MarketingOfferTemplateItem.encode(to:)(void *a1)
{
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE030, &qword_20C64F670);
  v23 = *(v26 - 8);
  v3 = *(v23 + 64);
  MEMORY[0x28223BE20](v26);
  v25 = &v23 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE038, &qword_20C64F678);
  v27 = *(v5 - 8);
  v6 = *(v27 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE040, &qword_20C64F680);
  v30 = *(v28 - 8);
  v9 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  v11 = &v23 - v10;
  v24 = *(v1 + 1);
  v12 = v1[16];
  v13 = a1[4];
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C5DC8AC();
  sub_20C64E500();
  v33 = v12;
  if (v12 < 0)
  {
    v18 = v23;
    LOBYTE(v31) = 1;
    sub_20C5DC900();
    v19 = v25;
    v20 = v28;
    sub_20C64E3B0();
    LOBYTE(v31) = v14;
    v34 = 0;
    sub_20C5DC954();
    v21 = v26;
    v22 = v29;
    sub_20C64E410();
    if (!v22)
    {
      v31 = v24;
      v32 = v33 & 1;
      v34 = 1;
      sub_20C5DC9A8();
      sub_20C64E410();
    }

    (*(v18 + 8))(v19, v21);
    return (*(v30 + 8))(v11, v20);
  }

  else
  {
    LOBYTE(v31) = 0;
    sub_20C5DC9FC();
    v15 = v28;
    sub_20C64E3B0();
    LOBYTE(v31) = v14;
    v34 = 0;
    sub_20C5DC954();
    v16 = v29;
    sub_20C64E410();
    if (!v16)
    {
      v31 = v24;
      v32 = v33 & 1;
      v34 = 1;
      sub_20C5DC9A8();
      sub_20C64E410();
    }

    (*(v27 + 8))(v8, v5);
    return (*(v30 + 8))(v11, v15);
  }
}

unint64_t sub_20C5DC8AC()
{
  result = qword_27C7CE048;
  if (!qword_27C7CE048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE048);
  }

  return result;
}

unint64_t sub_20C5DC900()
{
  result = qword_27C7CE050;
  if (!qword_27C7CE050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE050);
  }

  return result;
}

unint64_t sub_20C5DC954()
{
  result = qword_27C7CE058;
  if (!qword_27C7CE058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE058);
  }

  return result;
}

unint64_t sub_20C5DC9A8()
{
  result = qword_27C7CE060;
  if (!qword_27C7CE060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE060);
  }

  return result;
}

unint64_t sub_20C5DC9FC()
{
  result = qword_27C7CE068;
  if (!qword_27C7CE068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE068);
  }

  return result;
}

uint64_t MarketingOfferTemplateItem.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE070, &qword_20C64F688);
  v36 = *(v34 - 8);
  v3 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  v5 = &v34 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE078, &qword_20C64F690);
  v35 = *(v6 - 8);
  v7 = *(v35 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE080, &qword_20C64F698);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - v13;
  v16 = a1[3];
  v15 = a1[4];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_20C5DC8AC();
  v17 = v38;
  sub_20C64E4F0();
  if (!v17)
  {
    v18 = v37;
    v38 = v11;
    v19 = sub_20C64E3A0();
    if (*(v19 + 16) == 1)
    {
      if (*(v19 + 32))
      {
        LOBYTE(v40) = 1;
        sub_20C5DC900();
        sub_20C64E320();
        v20 = v38;
        v27 = v14;
        LOBYTE(v40) = 0;
        sub_20C5DD048();
        v28 = v34;
        sub_20C64E390();
        v31 = v43;
        v42 = 1;
        sub_20C5DD09C();
        sub_20C64E390();
        (*(v36 + 8))(v5, v28);
        (*(v20 + 8))(v27, v10);
        swift_unknownObjectRelease();
        v32 = v40;
        v33 = v41 | 0x80;
      }

      else
      {
        LOBYTE(v40) = 0;
        sub_20C5DC9FC();
        v25 = v9;
        sub_20C64E320();
        v26 = v38;
        LOBYTE(v40) = 0;
        sub_20C5DD048();
        sub_20C64E390();
        v29 = v43;
        v42 = 1;
        sub_20C5DD09C();
        sub_20C64E390();
        (*(v35 + 8))(v25, v6);
        (*(v26 + 8))(v14, v10);
        swift_unknownObjectRelease();
        v32 = v40;
        v33 = v41;
        v31 = v29;
      }

      *v18 = v31;
      *(v18 + 8) = v32;
      *(v18 + 16) = v33;
    }

    else
    {
      v21 = sub_20C64E290();
      swift_allocError();
      v23 = v22;
      v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE088, &qword_20C64F6A0) + 48);
      *v23 = &type metadata for MarketingOfferTemplateItem;
      sub_20C64E330();
      sub_20C64E280();
      (*(*(v21 - 8) + 104))(v23, *MEMORY[0x277D84160], v21);
      swift_willThrow();
      (*(v38 + 8))(v14, v10);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v39);
}

unint64_t sub_20C5DD048()
{
  result = qword_27C7CE090;
  if (!qword_27C7CE090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE090);
  }

  return result;
}

unint64_t sub_20C5DD09C()
{
  result = qword_27C7CE098;
  if (!qword_27C7CE098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE098);
  }

  return result;
}

uint64_t sub_20C5DD0F0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20C5DD124()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 7;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20C5DD158()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_20C5DD18C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t sub_20C5DD1B8()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20C5DD1EC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20C5DD220()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 8;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MarketingOfferTemplateItem.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[16];
  if (v3 < 0)
  {
    v4 = 1;
    MEMORY[0x20F301800](1);
    MEMORY[0x20F301800](v1);
    if (v3)
    {
      return MEMORY[0x20F301800](v4);
    }

LABEL_5:
    MEMORY[0x20F301800](0);
    v4 = v2;
    return MEMORY[0x20F301800](v4);
  }

  MEMORY[0x20F301800](0);
  MEMORY[0x20F301800](v1);
  if ((v3 & 1) == 0)
  {
    goto LABEL_5;
  }

  v4 = 1;
  return MEMORY[0x20F301800](v4);
}

uint64_t MarketingOfferTemplateItem.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[16];
  sub_20C64E4A0();
  if (v3 < 0)
  {
    v4 = 1;
    MEMORY[0x20F301800](1);
    MEMORY[0x20F301800](v1);
    if (v3)
    {
      goto LABEL_6;
    }

LABEL_5:
    MEMORY[0x20F301800](0);
    v4 = v2;
    goto LABEL_6;
  }

  MEMORY[0x20F301800](0);
  MEMORY[0x20F301800](v1);
  if ((v3 & 1) == 0)
  {
    goto LABEL_5;
  }

  v4 = 1;
LABEL_6:
  MEMORY[0x20F301800](v4);
  return sub_20C64E4E0();
}

uint64_t sub_20C5DD3D4()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[16];
  sub_20C64E4A0();
  if (v3 < 0)
  {
    v4 = 1;
    MEMORY[0x20F301800](1);
    MEMORY[0x20F301800](v1);
    if (v3)
    {
      goto LABEL_6;
    }

LABEL_5:
    MEMORY[0x20F301800](0);
    v4 = v2;
    goto LABEL_6;
  }

  MEMORY[0x20F301800](0);
  MEMORY[0x20F301800](v1);
  if ((v3 & 1) == 0)
  {
    goto LABEL_5;
  }

  v4 = 1;
LABEL_6:
  MEMORY[0x20F301800](v4);
  return sub_20C64E4E0();
}

uint64_t _s16FitnessMarketing0B17OfferTemplateItemO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  if ((v4 & 0x80000000) == 0)
  {
    if ((v7 & 0x80000000) == 0 && v6 == v3)
    {
      if (v4)
      {
        return (v7 & 1) != 0;
      }

      if ((v7 & 1) == 0 && v2 == v5)
      {
        return 1;
      }
    }

    return 0;
  }

  if ((v7 & 0x80000000) == 0 || v6 != v3)
  {
    return 0;
  }

  if (v4)
  {
    return (v7 & 1) != 0;
  }

  else
  {
    return (v7 & 1) == 0 && v2 == v5;
  }
}

unint64_t sub_20C5DD514()
{
  result = qword_27C7CE0A0;
  if (!qword_27C7CE0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE0A0);
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

uint64_t getEnumTagSinglePayload for MarketingOfferTemplateItem(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1 >> 2;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for MarketingOfferTemplateItem(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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
      *result = 4 * -a2;
      *(result + 8) = 0;
      *(result + 16) = 0;
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20C5DD630(uint64_t result, char a2)
{
  v2 = *(result + 16) & 1 | (a2 << 7);
  *result &= 3uLL;
  *(result + 16) = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MarketingActionItemStyle.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MarketingActionItemStyle.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_20C5DD7D4()
{
  result = qword_27C7CE0A8;
  if (!qword_27C7CE0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE0A8);
  }

  return result;
}

unint64_t sub_20C5DD82C()
{
  result = qword_27C7CE0B0;
  if (!qword_27C7CE0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE0B0);
  }

  return result;
}

unint64_t sub_20C5DD884()
{
  result = qword_27C7CE0B8;
  if (!qword_27C7CE0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE0B8);
  }

  return result;
}

unint64_t sub_20C5DD8DC()
{
  result = qword_27C7CE0C0;
  if (!qword_27C7CE0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE0C0);
  }

  return result;
}

unint64_t sub_20C5DD934()
{
  result = qword_27C7CE0C8;
  if (!qword_27C7CE0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE0C8);
  }

  return result;
}

unint64_t sub_20C5DD98C()
{
  result = qword_27C7CE0D0;
  if (!qword_27C7CE0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE0D0);
  }

  return result;
}

unint64_t sub_20C5DD9E4()
{
  result = qword_27C7CE0D8;
  if (!qword_27C7CE0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE0D8);
  }

  return result;
}

unint64_t sub_20C5DDA3C()
{
  result = qword_27C7CE0E0;
  if (!qword_27C7CE0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE0E0);
  }

  return result;
}

unint64_t sub_20C5DDA94()
{
  result = qword_27C7CE0E8;
  if (!qword_27C7CE0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE0E8);
  }

  return result;
}

uint64_t static MarketingOfferPlacement.fallbackURL.getter()
{
  sub_20C64E250();
  MEMORY[0x20F3013F0](0xD000000000000061, 0x800000020C659780);
  MEMORY[0x20F3013F0](0xD00000000000001ALL, 0x800000020C6596D0);
  sub_20C64CF00();
}

unint64_t MarketingOfferPlacement.rawValue.getter(char a1)
{
  result = 0x726568744F656573;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
    case 12:
      result = 0xD00000000000001ALL;
      break;
    case 3:
      result = 0xD000000000000020;
      break;
    case 4:
    case 7:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 8:
      return result;
    case 9:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0xD000000000000022;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t sub_20C5DDD4C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = MarketingOfferPlacement.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == MarketingOfferPlacement.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_20C64E430();
  }

  return v8 & 1;
}

uint64_t sub_20C5DDDD4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s16FitnessMarketing0B14OfferPlacementO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

unint64_t sub_20C5DDE04@<X0>(unint64_t *a1@<X8>)
{
  result = MarketingOfferPlacement.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_20C5DDEE0()
{
  v1 = *v0;
  sub_20C64E4A0();
  MarketingOfferPlacement.rawValue.getter(v1);
  sub_20C64E090();

  return sub_20C64E4E0();
}

uint64_t sub_20C5DDF44()
{
  MarketingOfferPlacement.rawValue.getter(*v0);
  sub_20C64E090();
}

uint64_t sub_20C5DDF98()
{
  v1 = *v0;
  sub_20C64E4A0();
  MarketingOfferPlacement.rawValue.getter(v1);
  sub_20C64E090();

  return sub_20C64E4E0();
}

uint64_t _s16FitnessMarketing0B14OfferPlacementO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_20C64E310();

  if (v0 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_20C5DE048()
{
  result = qword_27C7CE0F0;
  if (!qword_27C7CE0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE0F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MarketingOfferPlacement(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MarketingOfferPlacement(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20C5DE1EC()
{
  result = qword_281106280;
  if (!qword_281106280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281106280);
  }

  return result;
}

uint64_t AudioLanguageEngagementSheetState.sheet.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AudioLanguageEngagementSheetState() + 28);

  return sub_20C5DE2D0(v3, a1);
}

uint64_t type metadata accessor for AudioLanguageEngagementSheetState()
{
  result = qword_27C7CE170;
  if (!qword_27C7CE170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20C5DE2D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE0F8, &qword_20C64FC10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AudioLanguageEngagementSheetState.sheet.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AudioLanguageEngagementSheetState() + 28);

  return sub_20C5DE384(a1, v3);
}

uint64_t sub_20C5DE384(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE0F8, &qword_20C64FC10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t AudioLanguageEngagementSheetState.init(activeStorefrontLocale:layout:matchingAudioLanguage:sheet:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_20C64CFE0();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  v11 = type metadata accessor for AudioLanguageEngagementSheetState();
  sub_20C5DE530(a2, a5 + v11[5]);
  v12 = v11[6];
  v13 = sub_20C64CFB0();
  (*(*(v13 - 8) + 32))(a5 + v12, a3, v13);
  v14 = a5 + v11[7];

  return sub_20C5DE594(a4, v14);
}

uint64_t sub_20C5DE530(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioLanguageEngagementSheetLayout();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C5DE594(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE0F8, &qword_20C64FC10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_20C5DE604()
{
  v1 = 0x74756F79616CLL;
  v2 = 0x7465656873;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000015;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000016;
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

uint64_t sub_20C5DE678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C5DF898(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20C5DE6AC(uint64_t a1)
{
  v2 = sub_20C5DEA08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5DE6E8(uint64_t a1)
{
  v2 = sub_20C5DEA08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AudioLanguageEngagementSheetState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE100, &qword_20C64FC18);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C5DEA08();
  sub_20C64E500();
  v14[15] = 0;
  sub_20C64CFE0();
  sub_20C5DF488(&qword_27C7CE110, MEMORY[0x277CC9788]);
  sub_20C64E410();
  if (!v1)
  {
    v9 = type metadata accessor for AudioLanguageEngagementSheetState();
    v10 = v9[5];
    v14[14] = 1;
    type metadata accessor for AudioLanguageEngagementSheetLayout();
    sub_20C5DF488(&qword_27C7CE118, type metadata accessor for AudioLanguageEngagementSheetLayout);
    sub_20C64E410();
    v11 = v9[6];
    v14[13] = 2;
    sub_20C64CFB0();
    sub_20C5DF488(&qword_27C7CE120, MEMORY[0x277CC9640]);
    sub_20C64E410();
    v12 = v9[7];
    v14[12] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE0F8, &qword_20C64FC10);
    sub_20C5DF108(&qword_27C7CE128);
    sub_20C64E410();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_20C5DEA08()
{
  result = qword_27C7CE108;
  if (!qword_27C7CE108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE108);
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

uint64_t AudioLanguageEngagementSheetState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE0F8, &qword_20C64FC10);
  v3 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v40 = &v38 - v4;
  v5 = sub_20C64CFB0();
  v6 = *(v5 - 8);
  v43 = v5;
  v44 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for AudioLanguageEngagementSheetLayout();
  v9 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C64CFE0();
  v45 = *(v12 - 8);
  v13 = *(v45 + 64);
  MEMORY[0x28223BE20](v12);
  v48 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE140, &qword_20C64FC20);
  v46 = *(v50 - 8);
  v15 = *(v46 + 64);
  MEMORY[0x28223BE20](v50);
  v17 = &v38 - v16;
  v18 = type metadata accessor for AudioLanguageEngagementSheetState();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C5DEA08();
  v49 = v17;
  v23 = v51;
  sub_20C64E4F0();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = v11;
  v25 = v46;
  v38 = v21;
  v55 = 0;
  sub_20C5DF488(&qword_27C7CE148, MEMORY[0x277CC9788]);
  v26 = v48;
  sub_20C64E390();
  v27 = v12;
  v28 = *(v45 + 32);
  v29 = v38;
  v51 = v27;
  v28(v38, v26);
  v54 = 1;
  sub_20C5DF488(&qword_27C7CE150, type metadata accessor for AudioLanguageEngagementSheetLayout);
  sub_20C64E390();
  v30 = v18;
  sub_20C5DE530(v24, &v29[*(v18 + 20)]);
  v53 = 2;
  sub_20C5DF488(&qword_27C7CE158, MEMORY[0x277CC9640]);
  v31 = v42;
  v32 = v43;
  sub_20C64E390();
  v33 = v29;
  v34 = a1;
  v48 = v30;
  (*(v44 + 32))(&v33[*(v30 + 6)], v31, v32);
  v52 = 3;
  sub_20C5DF108(&qword_27C7CE160);
  v35 = v40;
  sub_20C64E390();
  (*(v25 + 8))(v49, v50);
  v36 = v38;
  sub_20C5DE594(v35, &v38[*(v48 + 7)]);
  sub_20C5DF1DC(v36, v39);
  __swift_destroy_boxed_opaque_existential_1(v34);
  return sub_20C5DF240(v36, type metadata accessor for AudioLanguageEngagementSheetState);
}

uint64_t sub_20C5DF108(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CE0F8, &qword_20C64FC10);
    sub_20C5DF488(&qword_27C7CE130, type metadata accessor for AudioLanguageEngagementSheet);
    sub_20C5DF488(&qword_27C7CE138, type metadata accessor for AudioLanguageEngagementSheet);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20C5DF1DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioLanguageEngagementSheetState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C5DF240(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static AudioLanguageEngagementSheetState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x20F300320]() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for AudioLanguageEngagementSheetState();
  if (!_s16FitnessMarketing34AudioLanguageEngagementSheetLayoutV2eeoiySbAC_ACtFZ_0(a1 + v4[5], a2 + v4[5]) || (MEMORY[0x20F3002F0](a1 + v4[6], a2 + v4[6]) & 1) == 0)
  {
    return 0;
  }

  v5 = v4[7];
  type metadata accessor for AudioLanguageEngagementSheet();
  sub_20C5DF488(&qword_27C7CE168, type metadata accessor for AudioLanguageEngagementSheet);

  return sub_20C64DED0();
}

uint64_t sub_20C5DF3B0(uint64_t a1, uint64_t a2, int *a3)
{
  if ((MEMORY[0x20F300320]() & 1) == 0 || !_s16FitnessMarketing34AudioLanguageEngagementSheetLayoutV2eeoiySbAC_ACtFZ_0(a1 + a3[5], a2 + a3[5]) || (MEMORY[0x20F3002F0](a1 + a3[6], a2 + a3[6]) & 1) == 0)
  {
    return 0;
  }

  v6 = a3[7];
  type metadata accessor for AudioLanguageEngagementSheet();
  sub_20C5DF488(&qword_27C7CE168, type metadata accessor for AudioLanguageEngagementSheet);

  return sub_20C64DED0();
}

uint64_t sub_20C5DF488(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_20C5DF4F8()
{
  sub_20C64CFE0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AudioLanguageEngagementSheetLayout();
    if (v1 <= 0x3F)
    {
      sub_20C64CFB0();
      if (v2 <= 0x3F)
      {
        sub_20C5DF5AC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_20C5DF5AC()
{
  if (!qword_27C7CE180)
  {
    type metadata accessor for AudioLanguageEngagementSheet();
    sub_20C5DF488(&qword_27C7CE168, type metadata accessor for AudioLanguageEngagementSheet);
    v0 = sub_20C64DEF0();
    if (!v1)
    {
      atomic_store(v0, &qword_27C7CE180);
    }
  }
}

uint64_t getEnumTagSinglePayload for AudioLanguageEngagementSheetState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AudioLanguageEngagementSheetState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_20C5DF794()
{
  result = qword_27C7CE188;
  if (!qword_27C7CE188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE188);
  }

  return result;
}

unint64_t sub_20C5DF7EC()
{
  result = qword_27C7CE190;
  if (!qword_27C7CE190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE190);
  }

  return result;
}

unint64_t sub_20C5DF844()
{
  result = qword_27C7CE198;
  if (!qword_27C7CE198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE198);
  }

  return result;
}

uint64_t sub_20C5DF898(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000016 && 0x800000020C6597F0 == a2;
  if (v4 || (sub_20C64E430() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74756F79616CLL && a2 == 0xE600000000000000 || (sub_20C64E430() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x800000020C659810 == a2 || (sub_20C64E430() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7465656873 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_20C64E430();

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

uint64_t MarketingAction.metricElement.getter()
{
  v1 = type metadata accessor for MarketingAction();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C5DFB04(v0, v4);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_20C5DFB68(v4);
    return 0x726568744F656553;
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE1A0, " 7");
    (*(*(v6 - 8) + 8))(v4, v6);
    return MarketingAction.subscriptionAdamId.getter();
  }
}

uint64_t sub_20C5DFB04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MarketingAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C5DFB68(uint64_t a1)
{
  v2 = type metadata accessor for MarketingAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MarketingAction.subscriptionAdamId.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE1A0, " 7");
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v21 - v5;
  v7 = type metadata accessor for MarketingAction();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C5DFB04(v1, v10);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_20C5DFB68(v10);
    return 0;
  }

  (*(v3 + 32))(v6, v10, v2);
  v11 = sub_20C64D0B0();
  if (!v11 || (v12 = v11, v13 = [v11 dictionary], v12, !v13))
  {
    (*(v3 + 8))(v6, v2);
    return 0;
  }

  v14 = sub_20C64DFF0();

  v15 = *MEMORY[0x277CEE170];
  *&v21[0] = sub_20C64E050();
  *(&v21[0] + 1) = v16;
  sub_20C64E230();
  if (*(v14 + 16) && (v17 = sub_20C5DFE60(v22), (v18 & 1) != 0))
  {
    sub_20C5DFF60(*(v14 + 56) + 32 * v17, v21);
    sub_20C5DFEA4(v22);
  }

  else
  {

    sub_20C5DFEA4(v22);
    memset(v21, 0, sizeof(v21));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE1A8, &qword_20C64FDE8);
  v20 = sub_20C64E1E0();
  sub_20C5DFEF8(v21);
  (*(v3 + 8))(v6, v2);
  return v20;
}

unint64_t sub_20C5DFE60(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_20C64E210();

  return sub_20C5E0034(a1, v5);
}

uint64_t sub_20C5DFEF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE1A8, &qword_20C64FDE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C5DFF60(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_20C5DFFBC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_20C64E4A0();
  sub_20C64E090();
  v6 = sub_20C64E4E0();

  return sub_20C5E00FC(a1, a2, v6);
}

unint64_t sub_20C5E0034(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_20C5E01B4(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x20F301570](v9, a1);
      sub_20C5DFEA4(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_20C5E00FC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_20C64E430())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t AudioLanguageEngagementSheetView.init(store:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *a3 = sub_20C5E0270;
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  return result;
}

uint64_t sub_20C5E0270()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t AudioLanguageEngagementSheetView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE1B0, &qword_20C64FE20);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v32 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE1B8, &qword_20C64FE28);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - v9;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE1C0, &qword_20C64FE30);
  v11 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v13 = &v32 - v12;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE1C8, &qword_20C64FE38);
  v14 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v16 = &v32 - v15;
  v18 = *v1;
  v17 = *(v1 + 8);
  v19 = *(v1 + 16);
  sub_20C5E063C(*v1, v17, v19, v5);
  sub_20C64DE00();
  sub_20C64D330();
  sub_20C5E5658(v5, v10, &qword_27C7CE1B0, &qword_20C64FE20);
  v20 = &v10[*(v7 + 44)];
  v21 = v41;
  *(v20 + 4) = v40;
  *(v20 + 5) = v21;
  *(v20 + 6) = v42;
  v22 = v37;
  *v20 = v36;
  *(v20 + 1) = v22;
  v23 = v39;
  *(v20 + 2) = v38;
  *(v20 + 3) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE1D0, &qword_20C64FE40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C64FE00;
  v25 = sub_20C64D7B0();
  *(inited + 32) = v25;
  v26 = sub_20C64D7C0();
  *(inited + 33) = v26;
  v27 = sub_20C64D7D0();
  sub_20C64D7D0();
  if (sub_20C64D7D0() != v25)
  {
    v27 = sub_20C64D7D0();
  }

  sub_20C64D7D0();
  if (sub_20C64D7D0() != v26)
  {
    v27 = sub_20C64D7D0();
  }

  sub_20C5E5658(v10, v13, &qword_27C7CE1B8, &qword_20C64FE28);
  v13[*(v33 + 36)] = v27;
  v28 = swift_allocObject();
  *(v28 + 16) = v18;
  *(v28 + 24) = v17;
  *(v28 + 32) = v19;
  sub_20C5E5658(v13, v16, &qword_27C7CE1C0, &qword_20C64FE30);
  v29 = v35;
  v30 = &v16[*(v34 + 36)];
  *v30 = sub_20C5E304C;
  v30[1] = v28;
  v30[2] = 0;
  v30[3] = 0;
  sub_20C5E5658(v16, v29, &qword_27C7CE1C8, &qword_20C64FE38);
  return sub_20C5E3070();
}

uint64_t sub_20C5E063C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v57 = a3;
  v58 = a2;
  v56 = a4;
  v5 = sub_20C64D580();
  v47 = *(v5 - 8);
  v48 = v5;
  v6 = *(v47 + 64);
  MEMORY[0x28223BE20](v5);
  v46 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE238, &qword_20C64FF58);
  v50 = *(v55 - 8);
  v8 = *(v50 + 64);
  MEMORY[0x28223BE20](v55);
  v49 = &v43 - v9;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE240, &unk_20C64FF60);
  v10 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v53 = &v43 - v11;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE210, &qword_20C64FF40);
  v51 = *(v54 - 8);
  v12 = *(v51 + 64);
  MEMORY[0x28223BE20](v54);
  v14 = &v43 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE0F8, &qword_20C64FC10);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v43 - v17;
  v19 = type metadata accessor for AudioLanguageEngagementSheet();
  v44 = *(v19 - 8);
  v20 = *(v44 + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v43 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE228, &qword_20C64FF50);
  sub_20C5E5558(&qword_27C7CE230, &qword_27C7CE228, &qword_20C64FF50);
  v45 = a1;
  sub_20C64D220();
  swift_getKeyPath();
  sub_20C64DF30();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_10;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_20C5E5138(v18, v24);
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_20C5DBFC4(v18, &qword_27C7CE0F8, &qword_20C64FC10);
LABEL_10:
    sub_20C64D240();
    v39 = v51;
    v40 = v54;
    (*(v51 + 16))(v53, v14, v54);
    swift_storeEnumTagMultiPayload();
    sub_20C5E5558(&qword_27C7CE208, &qword_27C7CE210, &qword_20C64FF40);
    v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CE218, &qword_20C64FF48);
    v42 = sub_20C5E5558(&qword_27C7CE220, &qword_27C7CE218, &qword_20C64FF48);
    v59 = v41;
    v60 = v42;
    swift_getOpaqueTypeConformance2();
    sub_20C64D550();
    return (*(v39 + 8))(v14, v40);
  }

  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE248, &qword_20C64FF90) + 48);
  sub_20C5E5138(v18, v24);
  v27 = sub_20C64CF30();
  (*(*(v27 - 8) + 8))(&v18[v26], v27);
LABEL_6:
  v28 = v55;
  sub_20C5E5138(v24, v22);
  v29 = (*(v44 + 80) + 33) & ~*(v44 + 80);
  v30 = swift_allocObject();
  v31 = v58;
  *(v30 + 16) = v45;
  *(v30 + 24) = v31;
  *(v30 + 32) = v57 & 1;
  sub_20C5E5138(v22, v30 + v29);
  v59 = sub_20C5E519C;
  v60 = v30;
  sub_20C5E3070();
  v32 = v46;
  sub_20C64D570();
  v33 = sub_20C64D780();
  sub_20C64D770();
  sub_20C64D770();
  if (sub_20C64D770() != v33)
  {
    sub_20C64D770();
  }

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE218, &qword_20C64FF48);
  v35 = sub_20C5E5558(&qword_27C7CE220, &qword_27C7CE218, &qword_20C64FF48);
  v36 = v49;
  sub_20C64DB00();
  (*(v47 + 8))(v32, v48);

  v37 = v50;
  (*(v50 + 16))(v53, v36, v28);
  swift_storeEnumTagMultiPayload();
  sub_20C5E5558(&qword_27C7CE208, &qword_27C7CE210, &qword_20C64FF40);
  v59 = v34;
  v60 = v35;
  swift_getOpaqueTypeConformance2();
  sub_20C64D550();
  return (*(v37 + 8))(v36, v28);
}

uint64_t sub_20C5E0DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v35 = a6;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE250, &qword_20C64FF98);
  v32 = *(v31 - 8);
  v11 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  v13 = &v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE258, &qword_20C64FFA0);
  v33 = *(v14 - 8);
  v34 = v14;
  v15 = *(v33 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v30 - v16;
  v40 = a1;
  v41 = a2;
  v42 = a3;
  v43 = a4 & 1;
  v44 = a5;
  sub_20C64D780();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE260, &qword_20C64FFA8);
  sub_20C5E5558(&qword_27C7CE268, &qword_27C7CE260, &qword_20C64FFA8);
  sub_20C64D1E0();
  v36 = a2;
  v37 = a3;
  v38 = a4 & 1;
  v39 = a5;
  sub_20C64D4D0();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE270, &qword_20C64FFB0);
  sub_20C5E5558(&qword_27C7CE278, &qword_27C7CE250, &qword_20C64FF98);
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CE280, &qword_20C64FFB8);
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CE288, &unk_20C64FFC0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CE290, &unk_20C655580);
  v21 = sub_20C5E5248();
  v22 = sub_20C5E5558(&qword_281105758, &qword_27C7CE290, &unk_20C655580);
  v45 = v19;
  v46 = v20;
  v47 = v21;
  v48 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = v18;
  v46 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v24 = v31;
  sub_20C64DA70();
  (*(v32 + 8))(v13, v24);
  LOBYTE(v13) = sub_20C64D7C0();
  v25 = sub_20C64D7D0();
  sub_20C64D7D0();
  if (sub_20C64D7D0() != v13)
  {
    v25 = sub_20C64D7D0();
  }

  v26 = sub_20C64D2F0();
  v27 = v35;
  (*(v33 + 32))(v35, v17, v34);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE2B0, &qword_20C64FFD8);
  v29 = v27 + *(result + 36);
  *v29 = v26;
  *(v29 + 8) = v25;
  return result;
}

void *sub_20C5E11BC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = sub_20C64D4D0();
  v16 = 1;
  sub_20C5E12C0(a1, a2, a3 & 1, a4, __src);
  memcpy(__dst, __src, 0x159uLL);
  memcpy(v18, __src, 0x159uLL);
  sub_20C5E574C(__dst, v13, &qword_27C7CE330, &qword_20C650090);
  sub_20C5DBFC4(v18, &qword_27C7CE330, &qword_20C650090);
  memcpy(&v15[7], __dst, 0x159uLL);
  v11 = v16;
  *a5 = v10;
  *(a5 + 8) = 0;
  *(a5 + 16) = v11;
  return memcpy((a5 + 17), v15, 0x160uLL);
}

uint64_t sub_20C5E12C0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v30 = a4;
  v40 = a5;
  v39 = sub_20C64D070();
  v37 = *(v39 - 8);
  v8 = *(v37 + 64);
  MEMORY[0x28223BE20](v39);
  v36 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AudioLanguageEngagementSheetLayout();
  v11 = *(v10 - 8);
  v35 = v10 - 8;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v33 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_20C64D4D0();
  LOBYTE(v42[0]) = 0;
  v32 = a3;
  v31 = a1;
  sub_20C5E1AF8(a2, a3 & 1, &v80);
  v56 = *v81;
  v57 = *&v81[16];
  v58[0] = *&v81[32];
  *(v58 + 10) = *&v81[42];
  v55 = v80;
  v59[1] = *v81;
  v59[2] = *&v81[16];
  v60[0] = *&v81[32];
  *(v60 + 10) = *&v81[42];
  v59[0] = v80;
  sub_20C5E574C(&v55, v75, &qword_27C7CE338, &qword_20C650098);
  sub_20C5DBFC4(v59, &qword_27C7CE338, &qword_20C650098);
  *&v54[23] = v56;
  *&v54[39] = v57;
  *&v54[55] = v58[0];
  *&v54[65] = *(v58 + 10);
  *&v54[7] = v55;
  v41 = LOBYTE(v42[0]);
  v34 = sub_20C64D4E0();
  LOBYTE(v42[0]) = 0;
  sub_20C5E1E18(v30, a1, a2, a3 & 1, &v80);
  v69 = *&v81[112];
  v70[0] = *&v81[128];
  *(v70 + 9) = *&v81[137];
  v65 = *&v81[48];
  v66 = *&v81[64];
  v67 = *&v81[80];
  v68 = *&v81[96];
  v61 = v80;
  v62 = *v81;
  v63 = *&v81[16];
  v64 = *&v81[32];
  v71[7] = *&v81[96];
  v71[8] = *&v81[112];
  v72[0] = *&v81[128];
  *(v72 + 9) = *&v81[137];
  v71[4] = *&v81[48];
  v71[5] = *&v81[64];
  v71[6] = *&v81[80];
  v71[0] = v80;
  v71[1] = *v81;
  v71[2] = *&v81[16];
  v71[3] = *&v81[32];
  sub_20C5E574C(&v61, v75, &qword_27C7CE340, &qword_20C6500A0);
  sub_20C5DBFC4(v71, &qword_27C7CE340, &qword_20C6500A0);
  *(&v51[7] + 7) = v68;
  *(&v51[8] + 7) = v69;
  *(&v51[9] + 7) = v70[0];
  v51[10] = *(v70 + 9);
  *(&v51[3] + 7) = v64;
  *(&v51[4] + 7) = v65;
  *(&v51[5] + 7) = v66;
  *(&v51[6] + 7) = v67;
  *(v51 + 7) = v61;
  *(&v51[1] + 7) = v62;
  *(&v51[2] + 7) = v63;
  LOBYTE(a3) = v42[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE228, &qword_20C64FF50);
  sub_20C5E5558(&qword_27C7CE230, &qword_27C7CE228, &qword_20C64FF50);
  sub_20C64D220();
  swift_getKeyPath();
  v14 = v33;
  sub_20C64DF30();

  v15 = v36;
  v16 = v37;
  v17 = v39;
  (*(v37 + 16))(v36, v14 + *(v35 + 32), v39);
  sub_20C5E5300(v14, type metadata accessor for AudioLanguageEngagementSheetLayout);
  sub_20C64D050();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  (*(v16 + 8))(v15, v17);
  LOBYTE(v15) = sub_20C64D7A0();
  v26 = v38;
  v73[0] = v38;
  v73[1] = 0;
  v74[0] = v41;
  *&v74[1] = *v54;
  *&v74[49] = *&v54[48];
  *&v74[33] = *&v54[32];
  *&v74[65] = *&v54[64];
  v74[81] = v54[80];
  *&v74[17] = *&v54[16];
  v50[0] = v38;
  v50[1] = *v74;
  LOWORD(v50[6]) = *&v74[80];
  v50[4] = *&v74[48];
  v50[5] = *&v74[64];
  v50[2] = *&v74[16];
  v50[3] = *&v74[32];
  v27 = v34;
  v75[0] = v34;
  v75[1] = 0;
  LOBYTE(v76[0]) = a3;
  *(&v76[2] + 1) = v51[2];
  *(&v76[1] + 1) = v51[1];
  *(v76 + 1) = v51[0];
  *(&v76[6] + 1) = v51[6];
  *(&v76[5] + 1) = v51[5];
  *(&v76[4] + 1) = v51[4];
  *(&v76[3] + 1) = v51[3];
  *(&v76[10] + 1) = v51[10];
  *(&v76[9] + 1) = v51[9];
  *(&v76[8] + 1) = v51[8];
  *(&v76[7] + 1) = v51[7];
  *(&v76[11] + 1) = *v53;
  DWORD1(v76[11]) = *&v53[3];
  BYTE8(v76[11]) = v15;
  HIDWORD(v76[11]) = *&v52[3];
  *(&v76[11] + 9) = *v52;
  *&v77 = v19;
  *(&v77 + 1) = v21;
  *&v78 = v23;
  *(&v78 + 1) = v25;
  v79 = 0;
  *(&v50[16] + 8) = v76[9];
  *(&v50[17] + 8) = v76[10];
  *(&v50[19] + 8) = v77;
  *(&v50[20] + 8) = v78;
  *(&v50[18] + 8) = v76[11];
  *(&v50[9] + 8) = v76[2];
  *(&v50[8] + 8) = v76[1];
  *(&v50[7] + 8) = v76[0];
  *(&v50[6] + 8) = v34;
  *(&v50[13] + 8) = v76[6];
  *(&v50[12] + 8) = v76[5];
  *(&v50[11] + 8) = v76[4];
  *(&v50[10] + 8) = v76[3];
  *(&v50[15] + 8) = v76[8];
  *(&v50[14] + 8) = v76[7];
  BYTE8(v50[21]) = 0;
  memcpy(v40, v50, 0x159uLL);
  *&v81[113] = v51[7];
  *&v81[129] = v51[8];
  *&v81[145] = v51[9];
  *&v81[161] = v51[10];
  *&v81[49] = v51[3];
  *&v81[65] = v51[4];
  *&v81[81] = v51[5];
  *&v81[97] = v51[6];
  *&v81[1] = v51[0];
  *&v81[17] = v51[1];
  v80 = v27;
  v81[0] = a3;
  *&v81[33] = v51[2];
  *v82 = *v53;
  *&v82[3] = *&v53[3];
  v83 = v15;
  *v84 = *v52;
  *&v84[3] = *&v52[3];
  v85 = v19;
  v86 = v21;
  v87 = v23;
  v88 = v25;
  v89 = 0;
  sub_20C5E574C(v73, v42, &qword_27C7CE348, &qword_20C6500A8);
  sub_20C5E574C(v75, v42, &qword_27C7CE350, &qword_20C6500B0);
  sub_20C5DBFC4(&v80, &qword_27C7CE350, &qword_20C6500B0);
  v46 = *&v54[32];
  v47 = *&v54[48];
  v48 = *&v54[64];
  v44 = *v54;
  v42[0] = v26;
  v42[1] = 0;
  v43 = v41;
  v49 = v54[80];
  v45 = *&v54[16];
  return sub_20C5DBFC4(v42, &qword_27C7CE348, &qword_20C6500A8);
}

double sub_20C5E1AF8@<D0>(uint64_t a1@<X2>, int a2@<W3>, uint64_t a3@<X8>)
{
  v18[1] = a2;
  v19 = a1;
  v4 = type metadata accessor for AudioLanguageEngagementSheetLayout();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C64DCC0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281105760 != -1)
  {
    swift_once();
  }

  v13 = qword_281109B60;
  sub_20C64DCE0();
  (*(v9 + 104))(v12, *MEMORY[0x277CE0FE0], v8);
  v14 = sub_20C64DCD0();

  (*(v9 + 8))(v12, v8);
  sub_20C64D290();
  sub_20C64D290();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE228, &qword_20C64FF50);
  sub_20C5E5558(&qword_27C7CE230, &qword_27C7CE228, &qword_20C64FF50);
  sub_20C64D220();
  swift_getKeyPath();
  sub_20C64DF30();

  v15 = *&v7[*(v4 + 28)];
  sub_20C5E5300(v7, type metadata accessor for AudioLanguageEngagementSheetLayout);
  sub_20C64DE00();
  sub_20C64D280();
  *&v20[38] = v23;
  *&v20[22] = v22;
  *&v20[6] = v21;
  v16 = *&v20[16];
  *(a3 + 18) = *v20;
  *a3 = v14;
  *(a3 + 8) = 0;
  *(a3 + 16) = 257;
  *(a3 + 34) = v16;
  result = *&v20[32];
  *(a3 + 50) = *&v20[32];
  *(a3 + 64) = *&v20[46];
  *(a3 + 72) = 0;
  return result;
}

uint64_t sub_20C5E1E18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  LODWORD(v106) = a4;
  v107 = a3;
  v105 = a2;
  v113 = a5;
  v6 = sub_20C64D880();
  v111 = *(v6 - 8);
  v112 = v6;
  v7 = *(v111 + 64);
  MEMORY[0x28223BE20](v6);
  v110 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_20C64CFB0();
  v9 = *(v108 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v108);
  v103 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C64CFE0();
  v101 = *(v12 - 8);
  v102 = v12;
  v13 = *(v101 + 64);
  MEMORY[0x28223BE20](v12);
  v114 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE2E0, &qword_20C650FD0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v96 = &v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v91 - v19;
  v21 = sub_20C64CE50();
  v22 = *(v21 - 8);
  v23 = v22[8];
  v24 = MEMORY[0x28223BE20](v21);
  v115 = &v91 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v91 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v91 - v29;
  v93 = type metadata accessor for AudioLanguageEngagementSheet();
  v31 = *(v93 + 20);
  v99 = a1;
  sub_20C5E574C(a1 + v31, v20, &qword_27C7CE2E0, &qword_20C650FD0);
  v94 = v22[6];
  v95 = (v22 + 6);
  v32 = v94(v20, 1, v21);
  v109 = v21;
  v104 = v9;
  v91 = v28;
  v92 = v22;
  if (v32 == 1)
  {
    v33 = v22;
    sub_20C5DBFC4(v20, &qword_27C7CE2E0, &qword_20C650FD0);
    v34 = 0;
    v35 = 0;
    v97 = 0;
    v98 = 0;
    v100 = 0;
  }

  else
  {
    v36 = v22[4];
    v100 = v30;
    v36(v30, v20, v21);
    v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE228, &qword_20C64FF50);
    sub_20C5E5558(&qword_27C7CE230, &qword_27C7CE228, &qword_20C64FF50);
    sub_20C64D220();
    swift_getKeyPath();
    v37 = v114;
    sub_20C64DF30();

    sub_20C64D220();
    swift_getKeyPath();
    v38 = v103;
    sub_20C64DF30();

    sub_20C644E78(v38, v28);
    (*(v104 + 8))(v38, v108);
    (*(v101 + 8))(v37, v102);
    v39 = sub_20C64D960();
    v41 = v40;
    v43 = v42;
    sub_20C64D850();
    sub_20C64D810();

    v45 = v110;
    v44 = v111;
    v46 = v112;
    (*(v111 + 104))(v110, *MEMORY[0x277CE0A10], v112);
    sub_20C64D8A0();

    (*(v44 + 8))(v45, v46);
    v47 = sub_20C64D950();
    v49 = v48;
    LOBYTE(v45) = v50;

    sub_20C5E56C0(v39, v41, v43 & 1);

    *&v138 = sub_20C64DC10();
    v34 = sub_20C64D940();
    v52 = v51;
    v54 = v53;
    v55 = v45 & 1;
    v56 = v47;
    v21 = v109;
    v58 = v57;
    sub_20C5E56C0(v56, v49, v55);

    v33 = v92;
    (v92[1])(v100, v21);
    KeyPath = swift_getKeyPath();
    v60 = v54 & 1;
    v35 = v52;
    v97 = v60;
    sub_20C5E573C(v34, v52, v60);
    v100 = v58;

    v98 = KeyPath;
  }

  v61 = v96;
  sub_20C5E574C(v99 + *(v93 + 24), v96, &qword_27C7CE2E0, &qword_20C650FD0);
  if (v94(v61, 1, v21) == 1)
  {
    sub_20C5DBFC4(v61, &qword_27C7CE2E0, &qword_20C650FD0);
    sub_20C5E56D0(&v138);
  }

  else
  {
    (v33[4])(v115, v61, v21);
    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE228, &qword_20C64FF50);
    sub_20C5E5558(&qword_27C7CE230, &qword_27C7CE228, &qword_20C64FF50);
    v99 = v34;
    v96 = v35;
    sub_20C64D220();
    swift_getKeyPath();
    sub_20C64DF30();

    sub_20C64D220();
    swift_getKeyPath();
    v62 = v103;
    sub_20C64DF30();

    v63 = v114;
    sub_20C644E78(v62, v91);
    (*(v104 + 8))(v62, v108);
    (*(v101 + 8))(v63, v102);
    v114 = sub_20C64D960();
    v107 = v65;
    v108 = v64;
    v67 = v66;
    sub_20C64D850();
    v69 = v110;
    v68 = v111;
    v70 = v112;
    (*(v111 + 104))(v110, *MEMORY[0x277CE0A10], v112);
    v106 = sub_20C64D8A0();

    (*(v68 + 8))(v69, v70);
    v71 = swift_getKeyPath();
    LOBYTE(v70) = v67 & 1;
    LOBYTE(v138) = v67 & 1;
    v72 = sub_20C64D5C0();
    v73 = swift_getKeyPath();
    LODWORD(v68) = sub_20C64D5C0();
    LOBYTE(v69) = sub_20C64D7C0();
    sub_20C64D1A0();
    v75 = v74;
    v77 = v76;
    v79 = v78;
    v81 = v80;
    (v92[1])(v115, v109);
    *&v131 = v114;
    *(&v131 + 1) = v108;
    LOBYTE(v132) = v70;
    *(&v132 + 1) = v107;
    LOWORD(v133) = 256;
    *(&v133 + 1) = v71;
    v35 = v96;
    *&v134 = v106;
    DWORD2(v134) = v72;
    *&v135 = v73;
    BYTE8(v135) = 0;
    HIDWORD(v135) = v68;
    LOBYTE(v136) = v69;
    v34 = v99;
    *(&v136 + 1) = v75;
    *&v137[0] = v77;
    *(&v137[0] + 1) = v79;
    *&v137[1] = v81;
    BYTE8(v137[1]) = 0;
    nullsub_1(&v131);
    v142 = v135;
    v143 = v136;
    v144[0] = v137[0];
    *(v144 + 9) = *(v137 + 9);
    v138 = v131;
    v139 = v132;
    v140 = v133;
    v141 = v134;
  }

  v121 = v142;
  v122 = v143;
  v123[0] = v144[0];
  *(v123 + 9) = *(v144 + 9);
  v117 = v138;
  v118 = v139;
  v119 = v140;
  v120 = v141;
  v126 = v140;
  v127 = v141;
  v124 = v138;
  v125 = v139;
  *(v130 + 9) = *(v144 + 9);
  v129 = v143;
  v130[0] = v144[0];
  v128 = v142;
  v83 = v97;
  v82 = v98;
  v84 = v100;
  sub_20C5E56EC(v34, v35, v97, v100);
  sub_20C5E574C(&v124, &v131, &qword_27C7CE358, &qword_20C6500B8);
  sub_20C5E57B4(v34, v35, v83, v84);
  *(&v116[1] + 7) = v125;
  *(v116 + 7) = v124;
  *(&v116[4] + 7) = v128;
  *(&v116[5] + 7) = v129;
  *(&v116[6] + 7) = v130[0];
  v116[7] = *(v130 + 9);
  *(&v116[2] + 7) = v126;
  *(&v116[3] + 7) = v127;
  v85 = v113;
  *v113 = v34;
  v85[1] = v35;
  v85[2] = v83;
  v85[3] = v84;
  v85[4] = v82;
  *(v85 + 40) = 0;
  v86 = v116[5];
  *(v85 + 105) = v116[4];
  *(v85 + 121) = v86;
  *(v85 + 137) = v116[6];
  v87 = v117;
  *(v85 + 153) = v116[7];
  v88 = v116[1];
  *(v85 + 41) = v116[0];
  *(v85 + 57) = v88;
  v89 = v116[3];
  *(v85 + 73) = v116[2];
  *(v85 + 89) = v89;
  v133 = v119;
  v134 = v120;
  v131 = v87;
  v132 = v118;
  *(v137 + 9) = *(v123 + 9);
  v136 = v122;
  v137[0] = v123[0];
  v135 = v121;
  sub_20C5DBFC4(&v131, &qword_27C7CE358, &qword_20C6500B8);
  return sub_20C5E57B4(v34, v35, v83, v84);
}

uint64_t sub_20C5E29B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v23 = a5;
  v24 = sub_20C64D4C0();
  v9 = *(v24 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v24);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE280, &qword_20C64FFB8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  v25 = a1;
  v26 = a2;
  LOBYTE(v27) = a3 & 1;
  sub_20C5E2BFC(a4, &v23 - v16);
  sub_20C64D4B0();
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CE288, &unk_20C64FFC0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CE290, &unk_20C655580);
  v20 = sub_20C5E5248();
  v21 = sub_20C5E5558(&qword_281105758, &qword_27C7CE290, &unk_20C655580);
  v25 = v18;
  v26 = v19;
  v27 = v20;
  v28 = v21;
  swift_getOpaqueTypeConformance2();
  sub_20C64DAE0();
  (*(v9 + 8))(v12, v24);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_20C5E2BFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE290, &unk_20C655580);
  v4 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v44 = &v39 - v5;
  v6 = sub_20C64D070();
  v42 = *(v6 - 8);
  v43 = v6;
  v7 = *(v42 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AudioLanguageEngagementSheetLayout();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE288, &unk_20C64FFC0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v39 - v16;
  v18 = *v2;
  v19 = *(v2 + 8);
  v20 = *(v2 + 16);
  *v17 = sub_20C64D4D0();
  *(v17 + 1) = 0;
  v17[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE2B8, &qword_20C64FFE0);
  sub_20C5E3094(a1, v18, v19, v20, &v17[*(v21 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE228, &qword_20C64FF50);
  sub_20C5E5558(&qword_27C7CE230, &qword_27C7CE228, &qword_20C64FF50);
  v22 = v14;
  sub_20C64D220();
  swift_getKeyPath();
  sub_20C64DF30();

  v24 = v42;
  v23 = v43;
  (*(v42 + 16))(v9, v13, v43);
  sub_20C5E5300(v13, type metadata accessor for AudioLanguageEngagementSheetLayout);
  sub_20C64D050();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  (*(v24 + 8))(v9, v23);
  v33 = v44;
  v34 = sub_20C64D7A0();
  v35 = &v17[*(v22 + 36)];
  *v35 = v34;
  *(v35 + 1) = v26;
  *(v35 + 2) = v28;
  *(v35 + 3) = v30;
  *(v35 + 4) = v32;
  v35[40] = 0;
  v36 = *MEMORY[0x277CDFA10];
  v37 = sub_20C64D2B0();
  (*(*(v37 - 8) + 104))(v33, v36, v37);
  sub_20C5E55A0(&qword_281105B08, MEMORY[0x277CDFA28]);
  result = sub_20C64E010();
  if (result)
  {
    sub_20C5E5248();
    sub_20C5E5558(&qword_281105758, &qword_27C7CE290, &unk_20C655580);
    sub_20C64DAB0();
    sub_20C5DBFC4(v33, &qword_27C7CE290, &unk_20C655580);
    return sub_20C5DBFC4(v17, &qword_27C7CE288, &unk_20C64FFC0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20C5E304C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_20C5E43C8();
}

uint64_t sub_20C5E3094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v155 = a4;
  v144 = a2;
  v154 = a1;
  v152 = a5;
  v166 = sub_20C64D5E0();
  v165 = *(v166 - 8);
  v6 = *(v165 + 64);
  MEMORY[0x28223BE20](v166);
  v164 = v127 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_20C64DBE0();
  v140 = *(v141 - 8);
  v8 = *(v140 + 64);
  MEMORY[0x28223BE20](v141);
  v139 = v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_20C64DC80();
  v162 = *(v163 - 8);
  v10 = *(v162 + 64);
  v11 = MEMORY[0x28223BE20](v163);
  v159 = v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v160 = v127 - v14;
  MEMORY[0x28223BE20](v13);
  v161 = v127 - v15;
  v153 = type metadata accessor for AudioLanguageEngagementSheetLayout();
  v16 = *(*(v153 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v153);
  v145 = v127 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v142 = v127 - v20;
  MEMORY[0x28223BE20](v19);
  v134 = v127 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE2C0, &qword_20C650008);
  v156 = *(v22 - 8);
  v23 = *(v156 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v147 = v127 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v133 = v127 - v26;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE2C8, &qword_20C650010);
  v27 = *(*(v167 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v167);
  v150 = v127 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v135 = v127 - v30;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE2D0, &qword_20C650018);
  v157 = *(v158 - 8);
  v31 = *(v157 + 64);
  v32 = MEMORY[0x28223BE20](v158);
  v151 = v127 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v149 = v127 - v35;
  MEMORY[0x28223BE20](v34);
  v138 = v127 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE2D8, &unk_20C650020);
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  v40 = MEMORY[0x28223BE20](v37);
  v136 = v127 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v137 = v127 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE2E0, &qword_20C650FD0);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43 - 8);
  v46 = v127 - v45;
  v47 = sub_20C64CE50();
  v48 = *(v47 - 8);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47);
  v143 = v127 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE2E8, &qword_20C650030);
  v52 = *(*(v51 - 8) + 64);
  v53 = MEMORY[0x28223BE20](v51 - 8);
  v146 = v127 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v56 = v127 - v55;
  sub_20C5E574C(v154, v46, &qword_27C7CE2E0, &qword_20C650FD0);
  v57 = (*(v48 + 48))(v46, 1, v47);
  v154 = v56;
  v148 = v22;
  if (v57 == 1)
  {
    sub_20C5DBFC4(v46, &qword_27C7CE2E0, &qword_20C650FD0);
    (*(v38 + 56))(v56, 1, 1, v37);
    v58 = v155;
    v59 = v153;
    v60 = v144;
    v61 = v147;
  }

  else
  {
    v62 = v159;
    v131 = v38;
    v132 = v37;
    (*(v48 + 32))(v143, v46, v47);
    v63 = swift_allocObject();
    v129 = v47;
    v60 = v144;
    *(v63 + 16) = v144;
    *(v63 + 24) = a3;
    v64 = v155 & 1;
    *(v63 + 32) = v155 & 1;
    MEMORY[0x28223BE20](v63);
    v128 = v48;
    sub_20C5E3070();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE2F0, &qword_20C650038);
    sub_20C5E5390();
    v65 = v133;
    sub_20C64DD40();
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE228, &qword_20C64FF50);
    v67 = sub_20C5E5558(&qword_27C7CE230, &qword_27C7CE228, &qword_20C64FF50);
    v130 = v64;
    v127[2] = v66;
    v127[1] = v67;
    sub_20C64D220();
    swift_getKeyPath();
    v68 = v134;
    sub_20C64DF30();

    v69 = *(v68 + *(v153 + 20));
    sub_20C5E5300(v68, type metadata accessor for AudioLanguageEngagementSheetLayout);
    sub_20C64DE00();
    v134 = a3;
    sub_20C64D330();
    v70 = v135;
    (*(v156 + 32))(v135, v65, v22);
    v71 = (v70 + *(v167 + 36));
    v72 = v173;
    v71[4] = v172;
    v71[5] = v72;
    v71[6] = v174;
    v73 = v169;
    *v71 = v168;
    v71[1] = v73;
    v74 = v171;
    v71[2] = v170;
    v71[3] = v74;
    sub_20C64DC60();
    v75 = v160;
    MEMORY[0x20F300FC0](1);
    v76 = *(v162 + 8);
    v77 = v62;
    v78 = v163;
    v76(v77, v163);
    (*(v140 + 104))(v139, *MEMORY[0x277CE0EE0], v141);
    sub_20C64DC30();
    v79 = v161;
    sub_20C64DC50();

    v76(v75, v78);
    v80 = v164;
    sub_20C64D5D0();
    sub_20C5E54A0();
    sub_20C5E55A0(&qword_27C7CE320, MEMORY[0x277CE0638]);
    v81 = v138;
    v82 = v166;
    sub_20C64DA60();
    (*(v165 + 8))(v80, v82);
    v76(v79, v78);
    sub_20C5DBFC4(v70, &qword_27C7CE2C8, &qword_20C650010);
    LOBYTE(v82) = sub_20C64D7C0();
    v83 = v134;
    sub_20C64D220();
    swift_getKeyPath();
    v84 = v142;
    sub_20C64DF30();

    v59 = v153;
    v85 = *(v84 + *(v153 + 32));
    sub_20C5E5300(v84, type metadata accessor for AudioLanguageEngagementSheetLayout);
    sub_20C64D1A0();
    v87 = v86;
    v89 = v88;
    v91 = v90;
    v93 = v92;
    v94 = v136;
    (*(v157 + 32))(v136, v81, v158);
    v95 = v132;
    v96 = &v94[*(v132 + 36)];
    *v96 = v82;
    *(v96 + 1) = v87;
    *(v96 + 2) = v89;
    *(v96 + 3) = v91;
    *(v96 + 4) = v93;
    v96[40] = 0;
    v97 = v94;
    v98 = v137;
    sub_20C5E5658(v97, v137, &qword_27C7CE2D8, &unk_20C650020);
    v99 = v98;
    v100 = v154;
    sub_20C5E5658(v99, v154, &qword_27C7CE2D8, &unk_20C650020);
    (*(v131 + 56))(v100, 0, 1, v95);
    (*(v128 + 8))(v143, v129);
    a3 = v83;
    v61 = v147;
    v58 = v155;
  }

  v101 = swift_allocObject();
  *(v101 + 16) = v60;
  *(v101 + 24) = a3;
  *(v101 + 32) = v58 & 1;
  MEMORY[0x28223BE20](v101);
  sub_20C5E3070();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE2F0, &qword_20C650038);
  sub_20C5E5390();
  sub_20C64DD40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE228, &qword_20C64FF50);
  sub_20C5E5558(&qword_27C7CE230, &qword_27C7CE228, &qword_20C64FF50);
  sub_20C64D220();
  swift_getKeyPath();
  v102 = v145;
  sub_20C64DF30();

  v103 = *(v102 + *(v59 + 20));
  sub_20C5E5300(v102, type metadata accessor for AudioLanguageEngagementSheetLayout);
  sub_20C64DE00();
  sub_20C64D330();
  v104 = v150;
  (*(v156 + 32))(v150, v61, v148);
  v105 = (v104 + *(v167 + 36));
  v106 = v180;
  v105[4] = v179;
  v105[5] = v106;
  v105[6] = v181;
  v107 = v176;
  *v105 = v175;
  v105[1] = v107;
  v108 = v178;
  v105[2] = v177;
  v105[3] = v108;
  v109 = v159;
  sub_20C64DC60();
  v110 = v160;
  MEMORY[0x20F300FC0](1);
  v111 = *(v162 + 8);
  v112 = v163;
  v111(v109, v163);
  sub_20C64DC00();
  v113 = v161;
  sub_20C64DC50();

  v111(v110, v112);
  v114 = v164;
  sub_20C64D5D0();
  sub_20C5E54A0();
  sub_20C5E55A0(&qword_27C7CE320, MEMORY[0x277CE0638]);
  v115 = v149;
  v116 = v166;
  sub_20C64DA60();
  (*(v165 + 8))(v114, v116);
  v111(v113, v112);
  sub_20C5DBFC4(v104, &qword_27C7CE2C8, &qword_20C650010);
  v117 = v154;
  v118 = v146;
  sub_20C5D4D2C(v154, v146);
  v119 = v157;
  v120 = *(v157 + 16);
  v121 = v151;
  v122 = v158;
  v120(v151, v115, v158);
  v123 = v152;
  sub_20C5D4D2C(v118, v152);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE328, &qword_20C650048);
  v120((v123 + *(v124 + 48)), v121, v122);
  v125 = *(v119 + 8);
  v125(v115, v122);
  sub_20C5DBFC4(v117, &qword_27C7CE2E8, &qword_20C650030);
  v125(v121, v122);
  return sub_20C5DBFC4(v118, &qword_27C7CE2E8, &qword_20C650030);
}

uint64_t sub_20C5E43C8()
{
  v0 = type metadata accessor for AudioLanguageEngagementSheetAction();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE228, &qword_20C64FF50);
  sub_20C5E5558(&qword_27C7CE230, &qword_27C7CE228, &qword_20C64FF50);
  sub_20C64D220();
  swift_storeEnumTagMultiPayload();
  sub_20C64DF40();

  return sub_20C5E5300(v3, type metadata accessor for AudioLanguageEngagementSheetAction);
}

__n128 sub_20C5E4504@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v38 = a2;
  v43 = a1;
  v42 = sub_20C64CFB0();
  v40 = *(v42 - 8);
  v4 = *(v40 + 64);
  MEMORY[0x28223BE20](v42);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_20C64CFE0();
  v39 = *(v41 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x28223BE20](v41);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C64CE50();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v37 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE228, &qword_20C64FF50);
  sub_20C5E5558(&qword_27C7CE230, &qword_27C7CE228, &qword_20C64FF50);
  sub_20C64D220();
  swift_getKeyPath();
  sub_20C64DF30();

  sub_20C64D220();
  swift_getKeyPath();
  sub_20C64DF30();

  sub_20C644E78(v6, v37);
  (*(v40 + 8))(v6, v42);
  (*(v39 + 8))(v9, v41);
  v13 = sub_20C64D960();
  v15 = v14;
  v17 = v16;
  sub_20C64D800();
  sub_20C64D810();

  v18 = sub_20C64D950();
  v20 = v19;
  v22 = v21;

  sub_20C5E56C0(v13, v15, v17 & 1);

  *&v47 = sub_20C64DBF0();
  v23 = sub_20C64D940();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_20C5E56C0(v18, v20, v22 & 1);

  sub_20C64DE00();
  sub_20C64D330();
  v54 = v27 & 1;
  sub_20C64DE00();
  sub_20C64D280();
  *a3 = v23;
  *(a3 + 8) = v25;
  *(a3 + 16) = v27 & 1;
  *(a3 + 24) = v29;
  v30 = v52;
  *(a3 + 96) = v51;
  *(a3 + 112) = v30;
  result = v53;
  v32 = v48;
  *(a3 + 32) = v47;
  *(a3 + 48) = v32;
  v33 = v50;
  *(a3 + 64) = v49;
  *(a3 + 80) = v33;
  v34 = v44;
  v35 = v46;
  *(a3 + 160) = v45;
  *(a3 + 176) = v35;
  *(a3 + 128) = result;
  *(a3 + 144) = v34;
  return result;
}

__n128 sub_20C5E4984@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_20C64CFE0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_20C64E030();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_20C64E020();
  if (qword_281105760 != -1)
  {
    swift_once();
  }

  v6 = qword_281109B60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE228, &qword_20C64FF50);
  sub_20C5E5558(&qword_27C7CE230, &qword_27C7CE228, &qword_20C64FF50);
  sub_20C64D220();
  swift_getKeyPath();
  sub_20C64DF30();

  v7 = sub_20C64D8D0();
  v9 = v8;
  v11 = v10;
  sub_20C64D800();
  sub_20C64D810();

  v12 = sub_20C64D950();
  v14 = v13;
  v16 = v15;

  sub_20C5E56C0(v7, v9, v11 & 1);

  v17 = [objc_opt_self() lightGrayColor];
  *&v29 = sub_20C64DC40();
  v18 = sub_20C64D940();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_20C5E56C0(v12, v14, v16 & 1);

  sub_20C64DE00();
  sub_20C64D330();
  sub_20C64DE00();
  sub_20C64D280();
  *a1 = v18;
  *(a1 + 8) = v20;
  *(a1 + 16) = v22 & 1;
  *(a1 + 24) = v24;
  *(a1 + 96) = v33;
  *(a1 + 112) = v34;
  result = v35;
  *(a1 + 32) = v29;
  *(a1 + 48) = v30;
  *(a1 + 64) = v31;
  *(a1 + 80) = v32;
  *(a1 + 160) = v27;
  *(a1 + 176) = v28;
  *(a1 + 128) = v35;
  *(a1 + 144) = v26;
  return result;
}

uint64_t sub_20C5E4D44(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_20C5E4D8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

unint64_t sub_20C5E4DE0()
{
  result = qword_27C7CE1D8;
  if (!qword_27C7CE1D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CE1C8, &qword_20C64FE38);
    sub_20C5E4E6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE1D8);
  }

  return result;
}

unint64_t sub_20C5E4E6C()
{
  result = qword_27C7CE1E0;
  if (!qword_27C7CE1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CE1C0, &qword_20C64FE30);
    sub_20C5E4EF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE1E0);
  }

  return result;
}

unint64_t sub_20C5E4EF8()
{
  result = qword_27C7CE1E8;
  if (!qword_27C7CE1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CE1B8, &qword_20C64FE28);
    sub_20C5E4F84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE1E8);
  }

  return result;
}

unint64_t sub_20C5E4F84()
{
  result = qword_27C7CE1F0;
  if (!qword_27C7CE1F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CE1B0, &qword_20C64FE20);
    sub_20C5E5008();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE1F0);
  }

  return result;
}

unint64_t sub_20C5E5008()
{
  result = qword_27C7CE1F8;
  if (!qword_27C7CE1F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CE200, &qword_20C64FF38);
    sub_20C5E5558(&qword_27C7CE208, &qword_27C7CE210, &qword_20C64FF40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CE218, &qword_20C64FF48);
    sub_20C5E5558(&qword_27C7CE220, &qword_27C7CE218, &qword_20C64FF48);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE1F8);
  }

  return result;
}

uint64_t sub_20C5E5138(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioLanguageEngagementSheet();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C5E519C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AudioLanguageEngagementSheet() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = v2 + ((*(v5 + 80) + 33) & ~*(v5 + 80));

  return sub_20C5E0DAC(a1, v6, v7, v8, v9, a2);
}

unint64_t sub_20C5E5248()
{
  result = qword_27C7CE298;
  if (!qword_27C7CE298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CE288, &unk_20C64FFC0);
    sub_20C5E5558(&qword_27C7CE2A0, &qword_27C7CE2A8, &qword_20C64FFD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE298);
  }

  return result;
}

uint64_t sub_20C5E5300(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20C5E5360()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_20C5E43C8();
}

double sub_20C5E5384@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *&result = sub_20C5E4984(a1).n128_u64[0];
  return result;
}

unint64_t sub_20C5E5390()
{
  result = qword_27C7CE2F8;
  if (!qword_27C7CE2F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CE2F0, &qword_20C650038);
    sub_20C5E541C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE2F8);
  }

  return result;
}

unint64_t sub_20C5E541C()
{
  result = qword_27C7CE300;
  if (!qword_27C7CE300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CE308, &qword_20C650040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE300);
  }

  return result;
}

unint64_t sub_20C5E54A0()
{
  result = qword_27C7CE310;
  if (!qword_27C7CE310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CE2C8, &qword_20C650010);
    sub_20C5E5558(&qword_27C7CE318, &qword_27C7CE2C0, &qword_20C650008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE310);
  }

  return result;
}

uint64_t sub_20C5E5558(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_20C5E55A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_20C5E3044();

  return swift_deallocObject();
}

uint64_t sub_20C5E5624()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_20C5E43C8();
}

double sub_20C5E5648@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 40);
  *&result = sub_20C5E4504(*(v1 + 16), *(v1 + 32), a1).n128_u64[0];
  return result;
}

uint64_t sub_20C5E5658(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_20C5E56C0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

double sub_20C5E56D0(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 105) = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_20C5E56EC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_20C5E573C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_20C5E573C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_20C5E574C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_20C5E57B4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_20C5E56C0(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_20C5E5818()
{
  if (*v0)
  {
    result = 0x6465646E756F72;
  }

  else
  {
    result = 0x6E69616C70;
  }

  *v0;
  return result;
}

uint64_t sub_20C5E5850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E69616C70 && a2 == 0xE500000000000000;
  if (v6 || (sub_20C64E430() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6465646E756F72 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20C64E430();

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

uint64_t sub_20C5E5928(uint64_t a1)
{
  v2 = sub_20C5E5E6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5E5964(uint64_t a1)
{
  v2 = sub_20C5E5E6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C5E59A0(uint64_t a1)
{
  v2 = sub_20C5E5F14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5E59DC(uint64_t a1)
{
  v2 = sub_20C5E5F14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C5E5A18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000020C659760 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_20C64E430();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_20C5E5AAC(uint64_t a1)
{
  v2 = sub_20C5E5EC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5E5AE8(uint64_t a1)
{
  v2 = sub_20C5E5EC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MarketingActionItemStyle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE360, &qword_20C650120);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v22 = &v22 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE368, &qword_20C650128);
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - v8;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE370, &qword_20C650130);
  v10 = *(v26 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v26);
  v13 = &v22 - v12;
  v14 = *v1;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C5E5E6C();
  sub_20C64E500();
  if (v14 < 0)
  {
    v18 = v14 & 0x7F;
    v30 = 1;
    sub_20C5E5EC0();
    v19 = v22;
    v20 = v26;
    sub_20C64E3B0();
    v29 = v18;
    sub_20C5DC954();
    v21 = v24;
    sub_20C64E410();
    (*(v23 + 8))(v19, v21);
    return (*(v10 + 8))(v13, v20);
  }

  else
  {
    v28 = 0;
    sub_20C5E5F14();
    v16 = v26;
    sub_20C64E3B0();
    v27 = v14;
    sub_20C5DC954();
    sub_20C64E410();
    (*(v25 + 8))(v9, v6);
    return (*(v10 + 8))(v13, v16);
  }
}

unint64_t sub_20C5E5E6C()
{
  result = qword_27C7CE378;
  if (!qword_27C7CE378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE378);
  }

  return result;
}

unint64_t sub_20C5E5EC0()
{
  result = qword_27C7CE380;
  if (!qword_27C7CE380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE380);
  }

  return result;
}

unint64_t sub_20C5E5F14()
{
  result = qword_27C7CE388;
  if (!qword_27C7CE388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE388);
  }

  return result;
}

uint64_t MarketingActionItemStyle.init(from:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE390, &qword_20C650138);
  v4 = *(v3 - 8);
  v37 = v3;
  v38 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE398, &qword_20C650140);
  v36 = *(v8 - 8);
  v9 = *(v36 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE3A0, &unk_20C650148);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  v18 = a1[3];
  v17 = a1[4];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_20C5E5E6C();
  v19 = v40;
  sub_20C64E4F0();
  if (!v19)
  {
    v35 = v8;
    v20 = v39;
    v40 = v13;
    v21 = sub_20C64E3A0();
    v22 = (2 * *(v21 + 16)) | 1;
    v42 = v21;
    v43 = v21 + 32;
    v44 = 0;
    v45 = v22;
    v23 = sub_20C5DDAF0();
    if (v23 == 2 || v44 != v45 >> 1)
    {
      v26 = sub_20C64E290();
      swift_allocError();
      v28 = v27;
      v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE088, &qword_20C64F6A0) + 48);
      *v28 = &type metadata for MarketingActionItemStyle;
      sub_20C64E330();
      sub_20C64E280();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D84160], v26);
      swift_willThrow();
      (*(v40 + 8))(v16, v12);
      swift_unknownObjectRelease();
    }

    else if (v23)
    {
      v46 = 1;
      sub_20C5E5EC0();
      sub_20C64E320();
      v24 = v40;
      sub_20C5DD048();
      v25 = v37;
      sub_20C64E390();
      (*(v38 + 8))(v7, v25);
      (*(v24 + 8))(v16, v12);
      swift_unknownObjectRelease();
      *v20 = v46 | 0x80;
    }

    else
    {
      v46 = 0;
      sub_20C5E5F14();
      v31 = v11;
      sub_20C64E320();
      v32 = v40;
      sub_20C5DD048();
      v33 = v35;
      sub_20C64E390();
      (*(v36 + 8))(v31, v33);
      (*(v32 + 8))(v16, v12);
      swift_unknownObjectRelease();
      *v20 = v46;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v41);
}

uint64_t MarketingActionItemStyle.hash(into:)()
{
  v1 = *v0;
  MEMORY[0x20F301800](v1 >> 7);
  return MEMORY[0x20F301800](v1 & 0x7F);
}

uint64_t MarketingActionItemStyle.hashValue.getter()
{
  v1 = *v0;
  sub_20C64E4A0();
  MEMORY[0x20F301800](v1 >> 7);
  MEMORY[0x20F301800](v1 & 0x7F);
  return sub_20C64E4E0();
}

uint64_t sub_20C5E6544()
{
  v1 = *v0;
  sub_20C64E4A0();
  MEMORY[0x20F301800](v1 >> 7);
  MEMORY[0x20F301800](v1 & 0x7F);
  return sub_20C64E4E0();
}

uint64_t sub_20C5E6598()
{
  v1 = *v0;
  MEMORY[0x20F301800](v1 >> 7);
  return MEMORY[0x20F301800](v1 & 0x7F);
}

uint64_t sub_20C5E65D8()
{
  v1 = *v0;
  sub_20C64E4A0();
  MEMORY[0x20F301800](v1 >> 7);
  MEMORY[0x20F301800](v1 & 0x7F);
  return sub_20C64E4E0();
}

unint64_t sub_20C5E662C()
{
  result = qword_27C7CE3A8;
  if (!qword_27C7CE3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE3A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MarketingActionItemStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3F)
  {
    goto LABEL_17;
  }

  if (a2 + 193 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 193) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 193;
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

      return (*a1 | (v4 << 8)) - 193;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 193;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 1) & 0x3E | (*a1 >> 7)) ^ 0x3F;
  if (v6 >= 0x3E)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for MarketingActionItemStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 193 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 193) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x3F)
  {
    v4 = 0;
  }

  if (a2 > 0x3E)
  {
    v5 = ((a2 - 63) >> 8) + 1;
    *result = a2 - 63;
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
    *result = 4 * (((-a2 >> 1) & 0x1F) - 32 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20C5E6850()
{
  result = qword_27C7CE3B0;
  if (!qword_27C7CE3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE3B0);
  }

  return result;
}

unint64_t sub_20C5E68A8()
{
  result = qword_27C7CE3B8;
  if (!qword_27C7CE3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE3B8);
  }

  return result;
}

unint64_t sub_20C5E6900()
{
  result = qword_27C7CE3C0;
  if (!qword_27C7CE3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE3C0);
  }

  return result;
}

unint64_t sub_20C5E6958()
{
  result = qword_27C7CE3C8;
  if (!qword_27C7CE3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE3C8);
  }

  return result;
}

unint64_t sub_20C5E69B0()
{
  result = qword_27C7CE3D0;
  if (!qword_27C7CE3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE3D0);
  }

  return result;
}

unint64_t sub_20C5E6A08()
{
  result = qword_27C7CE3D8;
  if (!qword_27C7CE3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE3D8);
  }

  return result;
}

unint64_t sub_20C5E6A60()
{
  result = qword_27C7CE3E0;
  if (!qword_27C7CE3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE3E0);
  }

  return result;
}

unint64_t sub_20C5E6AB8()
{
  result = qword_27C7CE3E8;
  if (!qword_27C7CE3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE3E8);
  }

  return result;
}

unint64_t sub_20C5E6B10()
{
  result = qword_27C7CE3F0;
  if (!qword_27C7CE3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE3F0);
  }

  return result;
}

uint64_t MarketingOffer.artwork.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MarketingOffer() + 20);

  return sub_20C5E6BD0(v3, a1);
}

uint64_t sub_20C5E6BD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE3F8, &unk_20C650590);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MarketingOffer.identifier.getter()
{
  v1 = (v0 + *(type metadata accessor for MarketingOffer() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MarketingOffer.subtitle.getter()
{
  v1 = (v0 + *(type metadata accessor for MarketingOffer() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MarketingOffer.title.getter()
{
  v1 = (v0 + *(type metadata accessor for MarketingOffer() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MarketingOffer.underlyingMarketingItem.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MarketingOffer() + 36);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE400, &qword_20C6573B0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MarketingOffer.init(identifier:title:subtitle:actionItems:artwork:underlyingMarketingItem:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v18 = type metadata accessor for MarketingOffer();
  v19 = (a9 + v18[6]);
  *v19 = a1;
  v19[1] = a2;
  v20 = (a9 + v18[8]);
  *v20 = a3;
  v20[1] = a4;
  v21 = (a9 + v18[7]);
  *v21 = a5;
  v21[1] = a6;
  *a9 = a7;
  sub_20C5E6BD0(a8, a9 + v18[5]);
  v22 = v18[9];
  sub_20C5D43D8();
  sub_20C64D0D0();
  return sub_20C5DBFC4(a8, &qword_27C7CE3F8, &unk_20C650590);
}

uint64_t sub_20C5E6E70()
{
  v1 = *v0;
  v2 = 0x74496E6F69746361;
  v3 = 0x656C746974627573;
  v4 = 0x656C746974;
  if (v1 != 4)
  {
    v4 = 0xD000000000000017;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6B726F77747261;
  if (v1 != 1)
  {
    v5 = 0x696669746E656469;
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

uint64_t sub_20C5E6F38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C5E8AC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20C5E6F6C(uint64_t a1)
{
  v2 = sub_20C5E7318();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5E6FA8(uint64_t a1)
{
  v2 = sub_20C5E7318();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MarketingOffer.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE408, &qword_20C6505A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C5E7318();
  sub_20C64E500();
  v25 = *v3;
  v24[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE418, &qword_20C6505A8);
  sub_20C5E7984(&qword_27C7CE420, &qword_27C7CE428);
  sub_20C64E410();
  if (!v2)
  {
    v11 = type metadata accessor for MarketingOffer();
    v12 = v11[5];
    v24[14] = 1;
    type metadata accessor for MarketingArtwork();
    sub_20C5E8D38(&qword_27C7CE430, type metadata accessor for MarketingArtwork);
    sub_20C64E3D0();
    v13 = (v3 + v11[6]);
    v14 = *v13;
    v15 = v13[1];
    v24[13] = 2;
    sub_20C64E3C0();
    v16 = (v3 + v11[7]);
    v17 = *v16;
    v18 = v16[1];
    v24[12] = 3;
    sub_20C64E3C0();
    v19 = (v3 + v11[8]);
    v20 = *v19;
    v21 = v19[1];
    v24[11] = 4;
    sub_20C64E3C0();
    v22 = v11[9];
    v24[10] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE400, &qword_20C6573B0);
    sub_20C5E5558(&qword_27C7CE438, &qword_27C7CE400, &qword_20C6573B0);
    sub_20C64E410();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_20C5E7318()
{
  result = qword_27C7CE410;
  if (!qword_27C7CE410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE410);
  }

  return result;
}

uint64_t MarketingOffer.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE400, &qword_20C6573B0);
  v39 = *(v3 - 8);
  v4 = *(v39 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE3F8, &unk_20C650590);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE440, &qword_20C6505B0);
  v41 = *(v11 - 8);
  v42 = v11;
  v12 = *(v41 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - v13;
  v15 = type metadata accessor for MarketingOffer();
  v16 = *(*(v15 - 1) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = a1[3];
  v20 = a1[4];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_20C5E7318();
  v43 = v14;
  v21 = v44;
  sub_20C64E4F0();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(v45);
  }

  v44 = v10;
  v37 = v3;
  v38 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE418, &qword_20C6505A8);
  v51 = 0;
  sub_20C5E7984(&qword_27C7CE448, &qword_27C7CE450);
  v22 = v42;
  sub_20C64E390();
  v23 = v18;
  *v18 = v52;
  type metadata accessor for MarketingArtwork();
  v50 = 1;
  sub_20C5E8D38(&qword_27C7CE458, type metadata accessor for MarketingArtwork);
  v24 = v44;
  sub_20C64E350();
  sub_20C5E7A20(v24, v18 + v15[5]);
  v49 = 2;
  v25 = sub_20C64E340();
  v26 = (v18 + v15[6]);
  *v26 = v25;
  v26[1] = v27;
  v48 = 3;
  v28 = sub_20C64E340();
  v29 = (v18 + v15[7]);
  *v29 = v28;
  v29[1] = v30;
  v47 = 4;
  v31 = sub_20C64E340();
  v32 = (v18 + v15[8]);
  *v32 = v31;
  v32[1] = v33;
  v46 = 5;
  sub_20C5E5558(&qword_27C7CE460, &qword_27C7CE400, &qword_20C6573B0);
  v35 = v37;
  v34 = v38;
  sub_20C64E390();
  MEMORY[8](v43, v22);
  (*(v39 + 32))(v23 + v15[9], v34, v35);
  sub_20C5E8CD0(v23, v40, type metadata accessor for MarketingOffer);
  __swift_destroy_boxed_opaque_existential_1(v45);
  return sub_20C5E8D80(v23, type metadata accessor for MarketingOffer);
}

uint64_t sub_20C5E7984(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CE418, &qword_20C6505A8);
    sub_20C5E8D38(a2, type metadata accessor for MarketingActionItem);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20C5E7A20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE3F8, &unk_20C650590);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t MarketingOffer.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MarketingArtwork();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE3F8, &unk_20C650590);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v22 - v11;
  sub_20C5E7E48(a1, *v2);
  v13 = type metadata accessor for MarketingOffer();
  sub_20C5E6BD0(v2 + v13[5], v12);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_20C64E4C0();
  }

  else
  {
    sub_20C5E8798(v12, v8);
    sub_20C64E4C0();
    MarketingArtwork.hash(into:)();
    sub_20C5E8D80(v8, type metadata accessor for MarketingArtwork);
  }

  v14 = (v2 + v13[6]);
  if (v14[1])
  {
    v15 = *v14;
    sub_20C64E4C0();
    sub_20C64E090();
  }

  else
  {
    sub_20C64E4C0();
  }

  v16 = (v2 + v13[7]);
  if (v16[1])
  {
    v17 = *v16;
    sub_20C64E4C0();
    sub_20C64E090();
  }

  else
  {
    sub_20C64E4C0();
  }

  v18 = (v2 + v13[8]);
  if (v18[1])
  {
    v19 = *v18;
    sub_20C64E4C0();
    sub_20C64E090();
  }

  else
  {
    sub_20C64E4C0();
  }

  v20 = v13[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE400, &qword_20C6573B0);
  sub_20C5E5558(&qword_281105B48, &qword_27C7CE400, &qword_20C6573B0);
  return sub_20C64E000();
}

uint64_t MarketingOffer.hashValue.getter()
{
  sub_20C64E4A0();
  MarketingOffer.hash(into:)(v1);
  return sub_20C64E4E0();
}

uint64_t sub_20C5E7DC4()
{
  sub_20C64E4A0();
  MarketingOffer.hash(into:)(v1);
  return sub_20C64E4E0();
}

uint64_t sub_20C5E7E08()
{
  sub_20C64E4A0();
  MarketingOffer.hash(into:)(v1);
  return sub_20C64E4E0();
}

uint64_t sub_20C5E7E48(uint64_t a1, uint64_t a2)
{
  v43 = sub_20C64CF10();
  v3 = *(v43 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE1A0, " 7");
  v6 = *(v39 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v39);
  v38 = &v36 - v8;
  v47 = type metadata accessor for MarketingAction();
  v9 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MarketingActionItem();
  v13 = *(v12 - 1);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 + 16);
  result = MEMORY[0x20F301800](v17);
  if (v17)
  {
    v19 = v12[6];
    v46 = &v16[v12[5]];
    v20 = v13;
    v21 = &v16[v19];
    v22 = v12[8];
    v45 = v12[7];
    v23 = v6;
    v24 = &v16[v22];
    v25 = a2 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v40 = (v3 + 8);
    v41 = (v3 + 32);
    v36 = (v23 + 8);
    v37 = (v23 + 32);
    v44 = *(v20 + 72);
    do
    {
      sub_20C5E8CD0(v25, v16, type metadata accessor for MarketingActionItem);
      sub_20C5E8CD0(v16, v11, type metadata accessor for MarketingAction);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        v31 = v42;
        v32 = v43;
        if (EnumCaseMultiPayload == 1)
        {
          (*v41)(v42, v11, v43);
          v33 = 1;
        }

        else
        {
          (*v41)(v42, v11, v43);
          v33 = 2;
        }

        MEMORY[0x20F301800](v33);
        sub_20C5E8D38(&qword_281106850, MEMORY[0x277CC9260]);
        sub_20C64E000();
        v34 = v40;
      }

      else
      {
        v31 = v38;
        v32 = v39;
        (*v37)(v38, v11, v39);
        MEMORY[0x20F301800](0);
        sub_20C5E5558(&qword_281105B68, &qword_27C7CE1A0, " 7");
        sub_20C64E000();
        v34 = v36;
      }

      (*v34)(v31, v32);
      if (*(v46 + 1))
      {
        v35 = *v46;
        sub_20C64E4C0();
        sub_20C64E090();
        if (!*(v21 + 1))
        {
          goto LABEL_15;
        }
      }

      else
      {
        sub_20C64E4C0();
        if (!*(v21 + 1))
        {
LABEL_15:
          sub_20C64E4C0();
          goto LABEL_4;
        }
      }

      v26 = *v21;
      sub_20C64E4C0();
      sub_20C64E090();
LABEL_4:
      v27 = v16[v45];
      MEMORY[0x20F301800](v27 >> 7);
      MEMORY[0x20F301800](v27 & 0x7F);
      v28 = *v24;
      v29 = *(v24 + 1);
      sub_20C64E090();
      result = sub_20C5E8D80(v16, type metadata accessor for MarketingActionItem);
      v25 += v44;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_20C5E8328(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x20F301800](v3);
  if (v3)
  {
    v5 = (a2 + 48);
    do
    {
      v7 = *(v5 - 16);
      v8 = *(v5 - 1);
      v9 = *v5;
      if (v9 < 0)
      {
        MEMORY[0x20F301800](1);
        MEMORY[0x20F301800](v7);
        v6 = 1;
        if (v9)
        {
          goto LABEL_4;
        }
      }

      else
      {
        MEMORY[0x20F301800](0);
        MEMORY[0x20F301800](v7);
        if (v9)
        {
          v6 = 1;
          goto LABEL_4;
        }
      }

      MEMORY[0x20F301800](0);
      v6 = v8;
LABEL_4:
      v5 += 24;
      result = MEMORY[0x20F301800](v6);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t _s16FitnessMarketing0B5OfferV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for MarketingArtwork();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE3F8, &unk_20C650590);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v40 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE480, &unk_20C6507D0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v40 - v15;
  if ((sub_20C5F65BC(*a1, *a2) & 1) == 0)
  {
    goto LABEL_8;
  }

  v17 = type metadata accessor for MarketingOffer();
  v18 = v17[5];
  v19 = *(v13 + 48);
  sub_20C5E6BD0(a1 + v18, v16);
  sub_20C5E6BD0(a2 + v18, &v16[v19]);
  v20 = *(v5 + 48);
  if (v20(v16, 1, v4) != 1)
  {
    sub_20C5E6BD0(v16, v12);
    if (v20(&v16[v19], 1, v4) != 1)
    {
      sub_20C5E8798(&v16[v19], v8);
      v23 = _s16FitnessMarketing0B7ArtworkV2eeoiySbAC_ACtFZ_0(v12, v8);
      sub_20C5E8D80(v8, type metadata accessor for MarketingArtwork);
      sub_20C5E8D80(v12, type metadata accessor for MarketingArtwork);
      sub_20C5DBFC4(v16, &qword_27C7CE3F8, &unk_20C650590);
      if (!v23)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

    sub_20C5E8D80(v12, type metadata accessor for MarketingArtwork);
LABEL_7:
    sub_20C5DBFC4(v16, &qword_27C7CE480, &unk_20C6507D0);
    goto LABEL_8;
  }

  if (v20(&v16[v19], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_20C5DBFC4(v16, &qword_27C7CE3F8, &unk_20C650590);
LABEL_11:
  v24 = v17[6];
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  v28 = v27[1];
  if (v26)
  {
    if (!v28 || (*v25 != *v27 || v26 != v28) && (sub_20C64E430() & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (v28)
  {
    goto LABEL_8;
  }

  v29 = v17[7];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = v32[1];
  if (v31)
  {
    if (!v33 || (*v30 != *v32 || v31 != v33) && (sub_20C64E430() & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (v33)
  {
    goto LABEL_8;
  }

  v34 = v17[8];
  v35 = (a1 + v34);
  v36 = *(a1 + v34 + 8);
  v37 = (a2 + v34);
  v38 = v37[1];
  if (v36)
  {
    if (v38 && (*v35 == *v37 && v36 == v38 || (sub_20C64E430() & 1) != 0))
    {
      goto LABEL_32;
    }
  }

  else if (!v38)
  {
LABEL_32:
    v39 = v17[9];
    sub_20C5D43D8();
    v21 = sub_20C64D0A0();
    return v21 & 1;
  }

LABEL_8:
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_20C5E8798(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MarketingArtwork();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for MarketingOffer.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MarketingOffer.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_20C5E89C0()
{
  result = qword_27C7CE468;
  if (!qword_27C7CE468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE468);
  }

  return result;
}

unint64_t sub_20C5E8A18()
{
  result = qword_27C7CE470;
  if (!qword_27C7CE470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE470);
  }

  return result;
}

unint64_t sub_20C5E8A70()
{
  result = qword_27C7CE478;
  if (!qword_27C7CE478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE478);
  }

  return result;
}

uint64_t sub_20C5E8AC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74496E6F69746361 && a2 == 0xEB00000000736D65;
  if (v4 || (sub_20C64E430() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (sub_20C64E430() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_20C64E430() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_20C64E430() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_20C64E430() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x800000020C6598A0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_20C64E430();

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

uint64_t sub_20C5E8CD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20C5E8D38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20C5E8D80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20C5E8DE0()
{
  v0 = sub_20C64CFB0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C64CF90();
  v5 = sub_20C64CF80();
  v7 = v6;
  result = (*(v1 + 8))(v4, v0);
  qword_27C7CE488 = v5;
  unk_27C7CE490 = v7;
  return result;
}

uint64_t static AudioLanguageEngagementSheetConstants.defaultLanguageIdentifier.getter()
{
  if (qword_27C7CDF70 != -1)
  {
    swift_once();
  }

  v0 = qword_27C7CE488;

  return v0;
}

uint64_t BubbleTipState.placementIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t BubbleTipState.loadState.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  return sub_20C5E8F84(v2, v3);
}

uint64_t sub_20C5E8F84(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t BubbleTipState.loadState.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_20C5E8FFC(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

uint64_t sub_20C5E8FFC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

__n128 BubbleTipState.init(placementIdentifier:loadState:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X2>, __n128 *a4@<X8>)
{
  a4->n128_u64[0] = a1;
  a4->n128_u64[1] = a2;
  result = *a3;
  a4[1] = *a3;
  return result;
}

uint64_t _s16FitnessMarketing14BubbleTipStateV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = 0, (sub_20C64E430() & 1) != 0))
  {
    v11 = v2;
    v12 = v3;
    v9 = v4;
    v10 = v5;
    sub_20C5E8F84(v2, v3);
    sub_20C5E8F84(v4, v5);
    v7 = _s16FitnessMarketing18BubbleTipLoadStateO2eeoiySbAC_ACtFZ_0(&v11, &v9);
    sub_20C5E8FFC(v9, v10);
    sub_20C5E8FFC(v11, v12);
  }

  return v7 & 1;
}

uint64_t get_enum_tag_for_layout_string_16FitnessMarketing18BubbleTipLoadStateO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_20C5E9150(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_20C5E9198(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_20C5E91F8()
{
  v1 = 0x656E6F6870;
  v2 = 0x6863746177;
  if (*v0 != 2)
  {
    v2 = 30324;
  }

  if (*v0)
  {
    v1 = 0x74656C626174;
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

uint64_t sub_20C5E925C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C5E9B98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20C5E9284(uint64_t a1)
{
  v2 = sub_20C5E9924();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5E92C0(uint64_t a1)
{
  v2 = sub_20C5E9924();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C5E9308(uint64_t a1)
{
  v2 = sub_20C5E9A74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5E9344(uint64_t a1)
{
  v2 = sub_20C5E9A74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C5E9380(uint64_t a1)
{
  v2 = sub_20C5E9A20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5E93BC(uint64_t a1)
{
  v2 = sub_20C5E9A20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C5E93F8(uint64_t a1)
{
  v2 = sub_20C5E9978();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5E9434(uint64_t a1)
{
  v2 = sub_20C5E9978();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C5E9470(uint64_t a1)
{
  v2 = sub_20C5E99CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5E94AC(uint64_t a1)
{
  v2 = sub_20C5E99CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MarketingPlatform.encode(to:)(void *a1, int a2)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE498, &qword_20C6508B0);
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v3);
  v32 = &v26 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE4A0, &qword_20C6508B8);
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20](v6);
  v29 = &v26 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE4A8, &qword_20C6508C0);
  v27 = *(v9 - 8);
  v28 = v9;
  v10 = *(v27 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE4B0, &qword_20C6508C8);
  v26 = *(v13 - 8);
  v14 = *(v26 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE4B8, &qword_20C6508D0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v26 - v20;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C5E9924();
  sub_20C64E500();
  if (v35 > 1u)
  {
    if (v35 == 2)
    {
      v38 = 2;
      sub_20C5E99CC();
      v12 = v29;
      sub_20C64E3B0();
      v24 = v30;
      v23 = v31;
    }

    else
    {
      v39 = 3;
      sub_20C5E9978();
      v12 = v32;
      sub_20C64E3B0();
      v24 = v33;
      v23 = v34;
    }

    goto LABEL_8;
  }

  if (v35)
  {
    v37 = 1;
    sub_20C5E9A20();
    sub_20C64E3B0();
    v24 = v27;
    v23 = v28;
LABEL_8:
    (*(v24 + 8))(v12, v23);
    return (*(v18 + 8))(v21, v17);
  }

  v36 = 0;
  sub_20C5E9A74();
  sub_20C64E3B0();
  (*(v26 + 8))(v16, v13);
  return (*(v18 + 8))(v21, v17);
}

unint64_t sub_20C5E9924()
{
  result = qword_27C7CE4C0;
  if (!qword_27C7CE4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE4C0);
  }

  return result;
}

unint64_t sub_20C5E9978()
{
  result = qword_27C7CE4C8;
  if (!qword_27C7CE4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE4C8);
  }

  return result;
}

unint64_t sub_20C5E99CC()
{
  result = qword_27C7CE4D0;
  if (!qword_27C7CE4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE4D0);
  }

  return result;
}

unint64_t sub_20C5E9A20()
{
  result = qword_27C7CE4D8;
  if (!qword_27C7CE4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE4D8);
  }

  return result;
}

unint64_t sub_20C5E9A74()
{
  result = qword_27C7CE4E0;
  if (!qword_27C7CE4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE4E0);
  }

  return result;
}

void *sub_20C5E9AE0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_20C5E9CE8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t MarketingPlatform.hashValue.getter(unsigned __int8 a1)
{
  sub_20C64E4A0();
  MEMORY[0x20F301800](a1);
  return sub_20C64E4E0();
}

uint64_t sub_20C5E9B98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656E6F6870 && a2 == 0xE500000000000000;
  if (v4 || (sub_20C64E430() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74656C626174 && a2 == 0xE600000000000000 || (sub_20C64E430() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6863746177 && a2 == 0xE500000000000000 || (sub_20C64E430() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 30324 && a2 == 0xE200000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_20C64E430();

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

void *sub_20C5E9CE8(uint64_t *a1)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE548, &qword_20C650D88);
  v41 = *(v46 - 8);
  v2 = *(v41 + 64);
  MEMORY[0x28223BE20](v46);
  v49 = &v38 - v3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE550, &qword_20C650D90);
  v43 = *(v47 - 8);
  v4 = *(v43 + 64);
  MEMORY[0x28223BE20](v47);
  v48 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE558, &qword_20C650D98);
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE560, &qword_20C650DA0);
  v42 = *(v10 - 8);
  v11 = *(v42 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE568, &qword_20C650DA8);
  v15 = *(v14 - 8);
  v16 = v15[8];
  MEMORY[0x28223BE20](v14);
  v18 = &v38 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_20C5E9924();
  v21 = v50;
  sub_20C64E4F0();
  if (v21)
  {
    goto LABEL_11;
  }

  v22 = v13;
  v39 = v10;
  v40 = 0;
  v23 = v48;
  v24 = v49;
  v50 = v15;
  v25 = v18;
  v26 = sub_20C64E3A0();
  v27 = (2 * *(v26 + 16)) | 1;
  v52 = v26;
  v53 = v26 + 32;
  v54 = 0;
  v55 = v27;
  v28 = sub_20C5DD0F0();
  if (v28 != 4 && v54 == v55 >> 1)
  {
    v15 = v28;
    if (v28 <= 1u)
    {
      if (v28)
      {
        v56 = 1;
        sub_20C5E9A20();
        v36 = v40;
        sub_20C64E320();
        if (!v36)
        {
          (*(v44 + 8))(v9, v45);
          goto LABEL_18;
        }
      }

      else
      {
        v56 = 0;
        sub_20C5E9A74();
        v29 = v40;
        sub_20C64E320();
        if (!v29)
        {
          (*(v42 + 8))(v22, v39);
LABEL_18:
          (v50[1])(v18, v14);
LABEL_23:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v51);
          return v15;
        }
      }

      goto LABEL_9;
    }

    v34 = v50;
    if (v28 == 2)
    {
      v56 = 2;
      sub_20C5E99CC();
      v35 = v40;
      sub_20C64E320();
      if (!v35)
      {
        (*(v43 + 8))(v23, v47);
LABEL_22:
        (v34[1])(v25, v14);
        goto LABEL_23;
      }
    }

    else
    {
      v56 = 3;
      sub_20C5E9978();
      v37 = v40;
      sub_20C64E320();
      if (!v37)
      {
        (*(v41 + 8))(v24, v46);
        goto LABEL_22;
      }
    }

    (v34[1])(v25, v14);
    goto LABEL_10;
  }

  v30 = sub_20C64E290();
  swift_allocError();
  v15 = v31;
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE088, &qword_20C64F6A0) + 48);
  *v15 = &type metadata for MarketingPlatform;
  sub_20C64E330();
  sub_20C64E280();
  (*(*(v30 - 8) + 104))(v15, *MEMORY[0x277D84160], v30);
  swift_willThrow();
LABEL_9:
  (v50[1])(v18, v14);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v51);
  return v15;
}

unint64_t sub_20C5EA32C()
{
  result = qword_27C7CE4E8;
  if (!qword_27C7CE4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE4E8);
  }

  return result;
}

unint64_t sub_20C5EA3E4()
{
  result = qword_27C7CE4F0;
  if (!qword_27C7CE4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE4F0);
  }

  return result;
}

unint64_t sub_20C5EA43C()
{
  result = qword_27C7CE4F8;
  if (!qword_27C7CE4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE4F8);
  }

  return result;
}

unint64_t sub_20C5EA494()
{
  result = qword_27C7CE500;
  if (!qword_27C7CE500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE500);
  }

  return result;
}

unint64_t sub_20C5EA4EC()
{
  result = qword_27C7CE508;
  if (!qword_27C7CE508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE508);
  }

  return result;
}

unint64_t sub_20C5EA544()
{
  result = qword_27C7CE510;
  if (!qword_27C7CE510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE510);
  }

  return result;
}

unint64_t sub_20C5EA59C()
{
  result = qword_27C7CE518;
  if (!qword_27C7CE518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE518);
  }

  return result;
}

unint64_t sub_20C5EA5F4()
{
  result = qword_27C7CE520;
  if (!qword_27C7CE520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE520);
  }

  return result;
}

unint64_t sub_20C5EA64C()
{
  result = qword_27C7CE528;
  if (!qword_27C7CE528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE528);
  }

  return result;
}

unint64_t sub_20C5EA6A4()
{
  result = qword_27C7CE530;
  if (!qword_27C7CE530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE530);
  }

  return result;
}

unint64_t sub_20C5EA6FC()
{
  result = qword_27C7CE538;
  if (!qword_27C7CE538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE538);
  }

  return result;
}

unint64_t sub_20C5EA754()
{
  result = qword_27C7CE540;
  if (!qword_27C7CE540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE540);
  }

  return result;
}

uint64_t AudioLanguageEngagementSheetLayout.actionButtonsContentMargins.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20C64D070();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AudioLanguageEngagementSheetLayout.bodyContentMargins.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioLanguageEngagementSheetLayout() + 24);
  v4 = sub_20C64D070();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioLanguageEngagementSheetLayout.init(actionButtonsContentMargins:actionButtonMaxWidth:bodyContentMargins:imageHeightMultiplier:submitButtonToSkipButtonSpacing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  v12 = sub_20C64D070();
  v13 = *(*(v12 - 8) + 32);
  v13(a3, a1, v12);
  v14 = type metadata accessor for AudioLanguageEngagementSheetLayout();
  *(a3 + v14[5]) = a4;
  result = (v13)(a3 + v14[6], a2, v12);
  *(a3 + v14[7]) = a5;
  *(a3 + v14[8]) = a6;
  return result;
}

unint64_t sub_20C5EA9E4()
{
  v1 = *v0;
  v2 = 0xD000000000000015;
  if (v1 != 3)
  {
    v2 = 0xD00000000000001FLL;
  }

  if (v1 == 2)
  {
    v2 = 0xD000000000000012;
  }

  v3 = 0xD000000000000014;
  if (!*v0)
  {
    v3 = 0xD00000000000001BLL;
  }

  if (*v0 <= 1u)
  {
    result = v3;
  }

  else
  {
    result = v2;
  }

  *v0;
  return result;
}

uint64_t sub_20C5EAA78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C5EB774(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20C5EAAA0(uint64_t a1)
{
  v2 = sub_20C5EB3F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5EAADC(uint64_t a1)
{
  v2 = sub_20C5EB3F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AudioLanguageEngagementSheetLayout.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE570, &qword_20C650DB0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C5EB3F8();
  sub_20C64E500();
  LOBYTE(v20) = 0;
  sub_20C64D070();
  sub_20C5DC024(&qword_27C7CDFF8);
  v17 = v2;
  v10 = v4;
  v11 = v18;
  sub_20C64E410();
  if (v11)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v18 = v5;
  v13 = type metadata accessor for AudioLanguageEngagementSheetLayout();
  v20 = *(v17 + v13[5]);
  v19 = 1;
  sub_20C5EB44C();
  sub_20C64E410();
  v14 = v13[6];
  LOBYTE(v20) = 2;
  sub_20C64E410();
  v20 = *(v17 + v13[7]);
  v19 = 3;
  sub_20C64E410();
  v15 = v18;
  v20 = *(v17 + v13[8]);
  v19 = 4;
  sub_20C64E410();
  return (*(v15 + 8))(v8, v10);
}

uint64_t AudioLanguageEngagementSheetLayout.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_20C64D070();
  v28 = *(v3 - 8);
  v4 = *(v28 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v29 = &v25 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE588, &qword_20C650DB8);
  v30 = *(v9 - 8);
  v31 = v9;
  v10 = *(v30 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - v11;
  v13 = type metadata accessor for AudioLanguageEngagementSheetLayout();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C5EB3F8();
  v32 = v12;
  v18 = v33;
  sub_20C64E4F0();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = v7;
  v26 = v13;
  v33 = a1;
  LOBYTE(v35) = 0;
  sub_20C5DC024(&qword_27C7CE008);
  v19 = v29;
  sub_20C64E390();
  v20 = v3;
  v21 = *(v28 + 32);
  v21(v16, v19, v20);
  v34 = 1;
  sub_20C5EB4A0();
  sub_20C64E390();
  v29 = v21;
  v22 = v25;
  *&v16[v26[5]] = v35;
  LOBYTE(v35) = 2;
  sub_20C64E390();
  (v29)(&v16[v26[6]], v22, v20);
  v34 = 3;
  sub_20C64E390();
  *&v16[v26[7]] = v35;
  v34 = 4;
  sub_20C64E390();
  (*(v30 + 8))(v32, v31);
  v23 = v27;
  *&v16[v26[8]] = v35;
  sub_20C5EB4F4(v16, v23);
  __swift_destroy_boxed_opaque_existential_1(v33);
  return sub_20C5EB558(v16);
}

BOOL _s16FitnessMarketing34AudioLanguageEngagementSheetLayoutV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x20F3003B0]() & 1) != 0 && (v4 = type metadata accessor for AudioLanguageEngagementSheetLayout(), *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20))) && (v5 = v4, (MEMORY[0x20F3003B0](a1 + *(v4 + 24), a2 + *(v4 + 24))) && *(a1 + *(v5 + 28)) == *(a2 + *(v5 + 28)))
  {
    return *(a1 + *(v5 + 32)) == *(a2 + *(v5 + 32));
  }

  else
  {
    return 0;
  }
}

uint64_t type metadata accessor for AudioLanguageEngagementSheetLayout()
{
  result = qword_27C7CE598;
  if (!qword_27C7CE598)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_20C5EB3F8()
{
  result = qword_27C7CE578;
  if (!qword_27C7CE578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE578);
  }

  return result;
}

unint64_t sub_20C5EB44C()
{
  result = qword_27C7CE580;
  if (!qword_27C7CE580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE580);
  }

  return result;
}

unint64_t sub_20C5EB4A0()
{
  result = qword_27C7CE590;
  if (!qword_27C7CE590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE590);
  }

  return result;
}

uint64_t sub_20C5EB4F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioLanguageEngagementSheetLayout();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C5EB558(uint64_t a1)
{
  v2 = type metadata accessor for AudioLanguageEngagementSheetLayout();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C5EB5DC()
{
  result = sub_20C64D070();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_20C5EB670()
{
  result = qword_27C7CE5A8;
  if (!qword_27C7CE5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE5A8);
  }

  return result;
}

unint64_t sub_20C5EB6C8()
{
  result = qword_27C7CE5B0;
  if (!qword_27C7CE5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE5B0);
  }

  return result;
}

unint64_t sub_20C5EB720()
{
  result = qword_27C7CE5B8;
  if (!qword_27C7CE5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE5B8);
  }

  return result;
}

uint64_t sub_20C5EB774(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001BLL && 0x800000020C6598C0 == a2 || (sub_20C64E430() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000020C6598E0 == a2 || (sub_20C64E430() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000020C659900 == a2 || (sub_20C64E430() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x800000020C659920 == a2 || (sub_20C64E430() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001FLL && 0x800000020C659940 == a2)
  {

    return 4;
  }

  else
  {
    v5 = sub_20C64E430();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

id sub_20C5EB930()
{
  result = [v0 clickstreamMetricsEvent];
  if (result)
  {
    v2 = result;
    v3 = sub_20C64DFF0();

    v4 = sub_20C5EBB2C(v3);

    if (v4)
    {
      if (*(v4 + 16))
      {
        v5 = sub_20C5DFFBC(0x6E6974656B72616DLL, 0xE900000000000067);
        if (v6)
        {
          sub_20C5DFF60(*(v4 + 56) + 32 * v5, v12);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEF50, &qword_20C650FC8);
          if (swift_dynamicCast())
          {
            if (*(v11 + 16) && (v7 = sub_20C5DFFBC(0x6E656D6563616C70, 0xE900000000000074), (v8 & 1) != 0))
            {
              sub_20C5DFF60(*(v11 + 56) + 32 * v7, v12);

              if (swift_dynamicCast())
              {

                return v11;
              }
            }

            else
            {
            }
          }
        }
      }

      if (*(v4 + 16))
      {
        v9 = sub_20C5DFFBC(0x6E656D6563616C70, 0xE900000000000074);
        if (v10)
        {
          sub_20C5DFF60(*(v4 + 56) + 32 * v9, v12);

          if (swift_dynamicCast())
          {
            return v11;
          }

          else
          {
            return 0;
          }
        }
      }
    }

    return 0;
  }

  return result;
}