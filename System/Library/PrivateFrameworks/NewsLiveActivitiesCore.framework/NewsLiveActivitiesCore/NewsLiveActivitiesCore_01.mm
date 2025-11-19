uint64_t sub_219F52BE4()
{

  return MEMORY[0x2822009F8](sub_219F52CFC, 0, 0);
}

uint64_t sub_219F52CFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219F52D74()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_219F52E6C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_219F52F60()
{

  return MEMORY[0x2822009F8](sub_219F53078, 0, 0);
}

uint64_t objectdestroyTm()
{
  sub_219F63A50(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  v1 = *(v0 + 248);
  if (v1)
  {
    if (v1 == 1)
    {
      goto LABEL_62;
    }

    if (*(v0 + 136))
    {
      sub_219F63A60(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128) | (*(v0 + 132) << 32));
    }

    if (*(v0 + 160))
    {
    }

    if (*(v0 + 184))
    {
    }

    if (*(v0 + 208))
    {
    }

    if (*(v0 + 232))
    {
    }
  }

  if (*(v0 + 448))
  {
    if (*(v0 + 336))
    {
      sub_219F63A60(*(v0 + 264), *(v0 + 272), *(v0 + 280), *(v0 + 288), *(v0 + 296), *(v0 + 304), *(v0 + 312), *(v0 + 320), *(v0 + 328) | (*(v0 + 332) << 32));
    }

    if (*(v0 + 360))
    {
    }

    if (*(v0 + 384))
    {
    }

    if (*(v0 + 408))
    {
    }

    if (*(v0 + 432))
    {
    }
  }

  if (*(v0 + 648))
  {
    if (*(v0 + 536))
    {
      sub_219F63A60(*(v0 + 464), *(v0 + 472), *(v0 + 480), *(v0 + 488), *(v0 + 496), *(v0 + 504), *(v0 + 512), *(v0 + 520), *(v0 + 528) | (*(v0 + 532) << 32));
    }

    if (*(v0 + 560))
    {
    }

    if (*(v0 + 584))
    {
    }

    if (*(v0 + 608))
    {
    }

    if (*(v0 + 632))
    {
    }
  }

  if (*(v0 + 848))
  {
    if (*(v0 + 736))
    {
      sub_219F63A60(*(v0 + 664), *(v0 + 672), *(v0 + 680), *(v0 + 688), *(v0 + 696), *(v0 + 704), *(v0 + 712), *(v0 + 720), *(v0 + 728) | (*(v0 + 732) << 32));
    }

    if (*(v0 + 760))
    {
    }

    if (*(v0 + 784))
    {
    }

    if (*(v0 + 808))
    {
    }

    if (*(v0 + 832))
    {
    }
  }

  if (*(v0 + 1048))
  {
    if (*(v0 + 936))
    {
      sub_219F63A60(*(v0 + 864), *(v0 + 872), *(v0 + 880), *(v0 + 888), *(v0 + 896), *(v0 + 904), *(v0 + 912), *(v0 + 920), *(v0 + 928) | (*(v0 + 932) << 32));
    }

    if (*(v0 + 960))
    {
    }

    if (*(v0 + 984))
    {
    }

    if (*(v0 + 1008))
    {
    }

    if (*(v0 + 1032))
    {
    }
  }

LABEL_62:

  return MEMORY[0x2821FE8E8](v0, 1168, 7);
}

uint64_t objectdestroyTm_0()
{

  sub_219F79CD8();

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t objectdestroyTm_1()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroyTm_2()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t get_enum_tag_for_layout_string_22NewsLiveActivitiesCore7DynamicVyAA17ActivityTextThemeV6TraitsVGSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_219F535EC()
{
  v1 = sub_21A0E52EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_219F53674()
{
  if ((~(*(v0 + 92) << 32) & 0x3E00000000) != 0)
  {
    sub_219F63A60(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88) | (*(v0 + 92) << 32));
  }

  return MEMORY[0x2821FE8E8](v0, 93, 7);
}

uint64_t sub_219F5372C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PrimaryElectionTheme();
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
    v11 = type metadata accessor for ActivityHeaderViewModel();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_219F53850(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PrimaryElectionTheme();
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
    v11 = type metadata accessor for ActivityHeaderViewModel();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_219F53974(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9638);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_219F53A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NewsLiveActivityAttributes(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for NewsLiveActivityContentState(0);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24) + 8);
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

uint64_t sub_219F53B88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for NewsLiveActivityAttributes(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for NewsLiveActivityContentState(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = -a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_219F53CA4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCD96B0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCD96A8);
  sub_219F683EC();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_219F53FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0);
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

uint64_t sub_219F5406C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0);
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

uint64_t sub_219F54134(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrimaryElectionTheme();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_219F541A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrimaryElectionTheme();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_219F543DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ActivityHeaderViewModel();
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
    v12 = *(a1 + *(a3 + 24) + 184);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    v14 = v13 <= 0;
    if (v13 < 0)
    {
      v13 = -1;
    }

    if (v14)
    {
      return 0;
    }

    else
    {
      return v13;
    }
  }
}

uint64_t sub_219F544AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ActivityHeaderViewModel();
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
    *(a1 + *(a4 + 24) + 184) = (a2 + 1);
  }

  return result;
}

uint64_t sub_219F5457C()
{
  if ((~(*(v0 + 92) << 32) & 0x3E00000000) != 0)
  {
    sub_219F63A60(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88) | (*(v0 + 92) << 32));
  }

  return MEMORY[0x2821FE8E8](v0, 93, 7);
}

uint64_t sub_219F545F4()
{
  if ((~(*(v0 + 92) << 32) & 0x3E00000000) != 0)
  {
    sub_219F63A60(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88) | (*(v0 + 92) << 32));
  }

  return MEMORY[0x2821FE8E8](v0, 93, 7);
}

uint64_t sub_219F5474C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for ActivityMinimalAppearanceTheme();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[6];

    return v9(v10, a2, v8);
  }

  else if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[7] + 8);
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
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9610);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[9];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_219F54890(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for ActivityMinimalAppearanceTheme();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[6];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + a4[7] + 8) = a2;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9610);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[9];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_219F549C8@<X0>(uint64_t a1@<X8>)
{
  result = sub_21A0E551C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_219F54A2C@<X0>(void *a1@<X8>)
{
  result = sub_21A0E549C();
  *a1 = v3;
  return result;
}

uint64_t sub_219F54A80()
{
  if ((~(*(v0 + 92) << 32) & 0x3E00000000) != 0)
  {
    sub_219F63A60(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88) | (*(v0 + 92) << 32));
  }

  return MEMORY[0x2821FE8E8](v0, 93, 7);
}

uint64_t sub_219F54BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A0E524C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_21A0E565C();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_219F54CC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21A0E524C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_21A0E565C();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_219F54DC4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_219F54E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NewsLiveActivityAttributes(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for NewsLiveActivityContentState(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_219F54EF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for NewsLiveActivityAttributes(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for NewsLiveActivityContentState(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_219F54FF8@<X0>(_BYTE *a1@<X8>)
{
  sub_219F9AE04();
  result = sub_21A0E555C();
  *a1 = v3;
  return result;
}

uint64_t sub_219F55098(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for BalanceOfPowerData.Entity(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_219F55144(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for BalanceOfPowerData.Entity(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_219F551E8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = type metadata accessor for ElectionEntityTheme();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_219F552A0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v7 = type metadata accessor for ElectionEntityTheme();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_219F55344(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_219F55400(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_219F554B0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for PresidentialElectionData.Entity(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 24)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_219F55554(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for PresidentialElectionData.Entity(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 24)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_219F5566C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21A0E472C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_219F5569C@<X0>(uint64_t *a1@<X8>)
{
  sub_219F3F130();
  result = sub_21A0E676C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_219F556E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLAssetConfiguration.Format(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_219F55754(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLAssetConfiguration.Format(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_219F557C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA6F8);
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

uint64_t sub_219F5588C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA6F8);
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

uint64_t sub_219F55A14()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDA950);
  sub_219FAF45C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_219F55AA4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_219F55AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ActivityFlexibleUpdate.Graphic(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 72);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 <= 2)
    {
      v12 = 2;
    }

    else
    {
      v12 = v11;
    }

    v13 = v12 - 2;
    if (v11 <= 0)
    {
      return 0;
    }

    else
    {
      return v13;
    }
  }
}

uint64_t sub_219F55BC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ActivityFlexibleUpdate.Graphic(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 72) = (a2 + 3);
  }

  return result;
}

uint64_t sub_219F55C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483645)
  {
    v4 = *(a1 + 96);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    v6 = v5 <= 0;
    if (v5 < 0)
    {
      v5 = -1;
    }

    if (v6)
    {
      return 0;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAA08);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_219F55D68(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483645)
  {
    *(result + 96) = (a2 + 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAA08);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_219F55E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PrimaryElectionTheme();
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
    v11 = type metadata accessor for ActivityHeaderViewModel();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_219F55FAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PrimaryElectionTheme();
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
    v11 = type metadata accessor for ActivityHeaderViewModel();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_219F560EC()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x7365697469746E65;
  }
}

uint64_t sub_219F56130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NationalElectionData(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 64);
    if (v10 <= 1)
    {
      return 0;
    }

    else
    {
      return v10 ^ 0xFF;
    }
  }
}

uint64_t sub_219F561EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for NationalElectionData(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 64) = ~a2;
  }

  return result;
}

uint64_t sub_219F562A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PrimaryEntities(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for SecondaryEntities(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_219F56398(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for PrimaryEntities(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for SecondaryEntities(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_219F564B4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_219F56570(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_219F5662C()
{
  v1 = *(type metadata accessor for NewsLiveActivityManager.Event(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {

        goto LABEL_11;
      }
    }

    else if (EnumCaseMultiPayload >= 2)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (EnumCaseMultiPayload <= 5)
  {
LABEL_9:

LABEL_10:

    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 6)
  {

    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 7)
  {

    v7 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB018) + 48);

    v8 = type metadata accessor for NewsLiveActivity(0);
    v9 = v7 + *(v8 + 20);
    v10 = type metadata accessor for ScheduledLiveActivity();
    if (!(*(*(v10 - 8) + 48))(v9, 3, v10))
    {

      v17 = *(v10 + 20);
      v16 = sub_21A0E495C();
      v11 = *(*(v16 - 8) + 8);
      v11(v9 + v17, v16);

      v11(v9 + *(v10 + 28), v16);
    }

    v12 = *(v8 + 24);
    v13 = sub_21A0E495C();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v7 + v12, 1, v13))
    {
      (*(v14 + 8))(v7 + v12, v13);
    }
  }

LABEL_11:

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_219F5691C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_219F56998(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsLiveActivity(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_219F56A04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsLiveActivity(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_219F56A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NewsLiveActivity(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD99E0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_219F56B70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for NewsLiveActivity(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD99E0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_219F56C78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsLiveActivity(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_219F56CE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsLiveActivity(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_219F56D70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityMinimalAppearanceTheme();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_219F56DDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityMinimalAppearanceTheme();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_219F56E5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NationalElectionUpdate.Hero(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_219F56EC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NationalElectionUpdate.Hero(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_219F56F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NationalElectionTheme();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for NationalElectionViewData();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB1C8);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_219F5708C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for NationalElectionTheme();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for NationalElectionViewData();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB1C8);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_219F571EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21A0E54CC();
  *a1 = result;
  return result;
}

uint64_t sub_219F57244()
{
  if ((~(*(v0 + 92) << 32) & 0x3E00000000) != 0)
  {
    sub_219F63A60(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88) | (*(v0 + 92) << 32));
  }

  return MEMORY[0x2821FE8E8](v0, 93, 7);
}

uint64_t sub_219F57360(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A0E495C();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_219F573CC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_21A0E495C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_219F57454()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_219F57528(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NationalElectionUpdate.Hero(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_219F57594(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NationalElectionUpdate.Hero(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_219F5763C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB508);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219F576AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB508);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_219F57714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0);
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
    v12 = *(a1 + *(a3 + 24) + 72);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    v14 = v13 <= 0;
    if (v13 < 0)
    {
      v13 = -1;
    }

    if (v14)
    {
      return 0;
    }

    else
    {
      return v13;
    }
  }
}

uint64_t sub_219F577F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0);
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
    *(a1 + *(a4 + 24) + 72) = (a2 + 1);
  }

  return result;
}

uint64_t sub_219F578BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URLAssetConfiguration(0);
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
    v12 = *(a1 + *(a3 + 28) + 72);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    v14 = v13 <= 0;
    if (v13 < 0)
    {
      v13 = -1;
    }

    if (v14)
    {
      return 0;
    }

    else
    {
      return v13;
    }
  }
}

uint64_t sub_219F5798C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URLAssetConfiguration(0);
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
    *(a1 + *(a4 + 28) + 72) = (a2 + 1);
  }

  return result;
}

uint64_t sub_219F57A54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PrimaryElectionTheme();
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
    v11 = type metadata accessor for ActivityHeaderViewModel();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_219F57B78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PrimaryElectionTheme();
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
    v11 = type metadata accessor for ActivityHeaderViewModel();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_219F57CAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScheduledLiveActivity();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_219F57D18(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for ScheduledLiveActivity();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_219F57DAC()
{
  v1 = *(type metadata accessor for PrimaryElectionStaticAttributes() - 8);
  v2 = *(v1 + 80);
  v37 = *(v1 + 64);
  v38 = v0;
  v36 = (v2 + 16) & ~v2;
  v3 = v0 + v36;
  if ((~*(v0 + v36 + 120) & 0xFFFFFFFE) != 0 || (*(v0 + v36 + 136) & 0xFE00000000) != 0x200000000)
  {
  }

  if ((~*(v3 + 208) & 0xFFFFFFFE) != 0 || (*(v3 + 224) & 0xFE00000000) != 0x200000000)
  {
  }

  v6 = type metadata accessor for PrimaryElectionTheme();
  v7 = v3 + v6[7];

  v8 = v7 + *(type metadata accessor for ActivityHeaderData() + 40);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0);
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    type metadata accessor for ActivityAsset();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      type metadata accessor for URLAssetConfiguration.Format(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v11 = sub_21A0E481C();
      (*(*(v11 - 8) + 8))(v8, v11);
      if (EnumCaseMultiPayload == 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD99C0);

        type metadata accessor for URLAssetConfiguration.Recipe(0);
      }
    }

    else
    {
      sub_219F79CD8();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98C8);
  }

  sub_219F79CD8();
  v12 = v3 + v6[11];
  v13 = type metadata accessor for ActivityMinimalAppearanceTheme();
  v14 = *(*(v13 - 8) + 48);
  if (v14(v12, 1, v13))
  {
    goto LABEL_18;
  }

  type metadata accessor for ActivityAsset();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for URLAssetConfiguration.Format(0);
    v23 = swift_getEnumCaseMultiPayload();
    v24 = sub_21A0E481C();
    (*(*(v24 - 8) + 8))(v12, v24);
    if (v23 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD99C0);

      type metadata accessor for URLAssetConfiguration.Recipe(0);
    }
  }

  else
  {
    sub_219F79CD8();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98C8);

  v27 = v12 + *(v13 + 20);
  v28 = *(v27 + 72);
  if (!v28)
  {
    goto LABEL_46;
  }

  if (v28 != 1)
  {
    sub_219F63A60(*v27, *(v27 + 8), *(v27 + 16), *(v27 + 24), *(v27 + 32), *(v27 + 40), *(v27 + 48), *(v27 + 56), *(v27 + 64) | (*(v27 + 68) << 32));

LABEL_46:
    if (*(v27 + 160))
    {
      sub_219F63A60(*(v27 + 88), *(v27 + 96), *(v27 + 104), *(v27 + 112), *(v27 + 120), *(v27 + 128), *(v27 + 136), *(v27 + 144), *(v27 + 152) | (*(v27 + 156) << 32));
    }
  }

  v29 = v12 + *(v13 + 24);
  v30 = *(v29 + 72);
  if (v30)
  {
    if (v30 == 1)
    {
      goto LABEL_18;
    }

    sub_219F63A60(*v29, *(v29 + 8), *(v29 + 16), *(v29 + 24), *(v29 + 32), *(v29 + 40), *(v29 + 48), *(v29 + 56), *(v29 + 64) | (*(v29 + 68) << 32));
  }

  if (*(v29 + 160))
  {
    sub_219F63A60(*(v29 + 88), *(v29 + 96), *(v29 + 104), *(v29 + 112), *(v29 + 120), *(v29 + 128), *(v29 + 136), *(v29 + 144), *(v29 + 152) | (*(v29 + 156) << 32));
  }

LABEL_18:
  v15 = v3 + v6[12];
  type metadata accessor for ActivityAsset();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for URLAssetConfiguration.Format(0);
    v16 = swift_getEnumCaseMultiPayload();
    v17 = sub_21A0E481C();
    (*(*(v17 - 8) + 8))(v15, v17);
    if (v16 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD99C0);

      type metadata accessor for URLAssetConfiguration.Recipe(0);
    }
  }

  else
  {
    sub_219F79CD8();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98C8);

  v18 = v15 + *(v13 + 20);
  v19 = *(v18 + 72);
  if (v19)
  {
    if (v19 == 1)
    {
      goto LABEL_27;
    }

    sub_219F63A60(*v18, *(v18 + 8), *(v18 + 16), *(v18 + 24), *(v18 + 32), *(v18 + 40), *(v18 + 48), *(v18 + 56), *(v18 + 64) | (*(v18 + 68) << 32));
  }

  if (*(v18 + 160))
  {
    sub_219F63A60(*(v18 + 88), *(v18 + 96), *(v18 + 104), *(v18 + 112), *(v18 + 120), *(v18 + 128), *(v18 + 136), *(v18 + 144), *(v18 + 152) | (*(v18 + 156) << 32));
  }

LABEL_27:
  v20 = v15 + *(v13 + 24);
  v21 = *(v20 + 72);
  if (v21)
  {
    if (v21 == 1)
    {
      goto LABEL_32;
    }

    sub_219F63A60(*v20, *(v20 + 8), *(v20 + 16), *(v20 + 24), *(v20 + 32), *(v20 + 40), *(v20 + 48), *(v20 + 56), *(v20 + 64) | (*(v20 + 68) << 32));
  }

  if (*(v20 + 160))
  {
    sub_219F63A60(*(v20 + 88), *(v20 + 96), *(v20 + 104), *(v20 + 112), *(v20 + 120), *(v20 + 128), *(v20 + 136), *(v20 + 144), *(v20 + 152) | (*(v20 + 156) << 32));
  }

LABEL_32:
  v22 = v3 + v6[13];
  if (v14(v22, 1, v13))
  {
    goto LABEL_33;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for URLAssetConfiguration.Format(0);
    v25 = swift_getEnumCaseMultiPayload();
    v26 = sub_21A0E481C();
    (*(*(v26 - 8) + 8))(v22, v26);
    if (v25 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD99C0);

      type metadata accessor for URLAssetConfiguration.Recipe(0);
    }
  }

  else
  {
    sub_219F79CD8();
  }

  v31 = v22 + *(v13 + 20);
  v32 = *(v31 + 72);
  if (v32)
  {
    if (v32 == 1)
    {
      goto LABEL_59;
    }

    sub_219F63A60(*v31, *(v31 + 8), *(v31 + 16), *(v31 + 24), *(v31 + 32), *(v31 + 40), *(v31 + 48), *(v31 + 56), *(v31 + 64) | (*(v31 + 68) << 32));
  }

  if (*(v31 + 160))
  {
    sub_219F63A60(*(v31 + 88), *(v31 + 96), *(v31 + 104), *(v31 + 112), *(v31 + 120), *(v31 + 128), *(v31 + 136), *(v31 + 144), *(v31 + 152) | (*(v31 + 156) << 32));
  }

LABEL_59:
  v33 = v22 + *(v13 + 24);
  v34 = *(v33 + 72);
  if (v34)
  {
    if (v34 == 1)
    {
      goto LABEL_33;
    }

    sub_219F63A60(*v33, *(v33 + 8), *(v33 + 16), *(v33 + 24), *(v33 + 32), *(v33 + 40), *(v33 + 48), *(v33 + 56), *(v33 + 64) | (*(v33 + 68) << 32));
  }

  if (*(v33 + 160))
  {
    sub_219F63A60(*(v33 + 88), *(v33 + 96), *(v33 + 104), *(v33 + 112), *(v33 + 120), *(v33 + 128), *(v33 + 136), *(v33 + 144), *(v33 + 152) | (*(v33 + 156) << 32));
  }

LABEL_33:

  return MEMORY[0x2821FE8E8](v38, v36 + v37, v2 | 7);
}

uint64_t sub_219F58720()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_219F58758()
{
  if ((~(*(v0 + 92) << 32) & 0x3E00000000) != 0)
  {
    sub_219F63A60(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88) | (*(v0 + 92) << 32));
  }

  return MEMORY[0x2821FE8E8](v0, 93, 7);
}

uint64_t sub_219F587C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB700);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA968);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_219F588CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB700);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA968);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_219F589E0@<X0>(_BYTE *a1@<X8>)
{
  result = MEMORY[0x21CED0BE0]();
  *a1 = result & 1;
  return result;
}

uint64_t sub_219F58A28(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_21A0E481C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_219F58AD4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21A0E481C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_219F58B78(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D8);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_219F58C40(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_219F58CF0()
{
  if ((~(*(v0 + 92) << 32) & 0x3E00000000) != 0)
  {
    sub_219F63A60(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88) | (*(v0 + 92) << 32));
  }

  return MEMORY[0x2821FE8E8](v0, 93, 7);
}

uint64_t sub_219F58D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ActivityFlexibleUpdate(0);
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
    v12 = *(a1 + *(a3 + 28));
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

uint64_t sub_219F58E28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ActivityFlexibleUpdate(0);
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
    *(a1 + *(a4 + 28)) = a2;
  }

  return result;
}

uint64_t sub_219F58F48(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_219F59004(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_219F590B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsLiveActivityContent(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_219F59124(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsLiveActivityContent(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_219F59194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NewsLiveActivityContentState(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32));
  if (v14 <= 2)
  {
    v15 = 2;
  }

  else
  {
    v15 = *(a1 + *(a3 + 32));
  }

  v16 = v15 - 2;
  if (v14 >= 2)
  {
    return v16;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_219F592B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for NewsLiveActivityContentState(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32)) = a2 + 2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_219F593C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A0E481C();
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
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_219F59480(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21A0E481C();
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

uint64_t sub_219F59538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = (*(a1 + 48) >> 1) & 0x7FFFFFFF | (*(a1 + 68) >> 1 << 31);
    v5 = -2 - v4;
    if ((-2 - v4) < 0)
    {
      v5 = -1;
    }

    if (v4 > 0x80000000)
    {
      return (v5 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBAB8);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_219F59610(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *(result + 48) = (2 * ~a2);
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 68) = (~a2 >> 30) & 2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBAB8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_219F5970C@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_219F5973C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserDefaultsNewsLiveActivityRepository.Schema.ScheduledActivity(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_219F597A8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for UserDefaultsNewsLiveActivityRepository.Schema.ScheduledActivity(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_219F5982C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_21A0E495C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_219F598D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21A0E495C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_219F5997C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UserDefaultsNewsLiveActivityRepository.Schema.SubscriptionState(0);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_219F59AAC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UserDefaultsNewsLiveActivityRepository.Schema.SubscriptionState(0);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_219F59BDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NationalElectionTheme();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 96);
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

uint64_t sub_219F59C98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for NationalElectionTheme();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 96) = -a2;
  }

  return result;
}

uint64_t sub_219F59D60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ActivityFlexibleUpdate(0);
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
    v12 = *(a1 + *(a3 + 28));
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

uint64_t sub_219F59E2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ActivityFlexibleUpdate(0);
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
    *(a1 + *(a4 + 28)) = a2;
  }

  return result;
}

uint64_t sub_219F59F0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBF28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219F59FC8()
{
  if ((~(*(v0 + 92) << 32) & 0x3E00000000) != 0)
  {
    sub_219F63A60(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88) | (*(v0 + 92) << 32));
  }

  return MEMORY[0x2821FE8E8](v0, 93, 7);
}

uint64_t sub_219F5A078(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for PresidentialElectionData.Entity(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_219F5A124(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for PresidentialElectionData.Entity(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_219F5A1C8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = type metadata accessor for ElectionEntityTheme();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_219F5A280(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v7 = type metadata accessor for ElectionEntityTheme();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_219F5A328()
{
  if ((~(*(v0 + 92) << 32) & 0x3E00000000) != 0)
  {
    sub_219F63A60(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88) | (*(v0 + 92) << 32));
  }

  return MEMORY[0x2821FE8E8](v0, 93, 7);
}

uint64_t sub_219F5A424()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for InternalMessagePlaceholderView() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(*v2 + 64);

  (*(*(v1 - 8) + 8))(v0 + v4 + v2[11], v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_219F5A514()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDC2E0);
  swift_getTupleTypeMetadata2();
  sub_21A0E5E6C();
  swift_getWitnessTable();
  sub_21A0E5DDC();

  return swift_getWitnessTable();
}

uint64_t sub_219F5A5C4()
{
  if ((~(*(v0 + 92) << 32) & 0x3E00000000) != 0)
  {
    sub_219F63A60(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88) | (*(v0 + 92) << 32));
  }

  return MEMORY[0x2821FE8E8](v0, 93, 7);
}

uint64_t sub_219F5A634(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NationalElectionTheme();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_219F5A6A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NationalElectionTheme();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_219F5A710(char a1)
{
  if (!a1)
  {
    return 0x2D746E65746E6F63;
  }

  if (a1 == 1)
  {
    return 0x61642D656C617473;
  }

  return 0x636E6176656C6572;
}

uint64_t sub_219F5A79C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9610);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 72);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    v12 = v11 <= 0;
    if (v11 < 0)
    {
      v11 = -1;
    }

    if (v12)
    {
      return 0;
    }

    else
    {
      return v11;
    }
  }
}

uint64_t sub_219F5A874(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9610);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 72) = (a2 + 1);
  }

  return result;
}

uint64_t sub_219F5A93C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9610);
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
    v12 = *(a1 + *(a3 + 24) + 184);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    v14 = v13 <= 0;
    if (v13 < 0)
    {
      v13 = -1;
    }

    if (v14)
    {
      return 0;
    }

    else
    {
      return v13;
    }
  }
}

uint64_t sub_219F5AA18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9610);
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
    *(a1 + *(a4 + 24) + 184) = (a2 + 1);
  }

  return result;
}

uint64_t sub_219F5AAEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC7C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_219F5AB54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC7C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219F5ABC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC7D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_219F5AC44()
{
  if ((~(*(v0 + 92) << 32) & 0x3E00000000) != 0)
  {
    sub_219F63A60(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88) | (*(v0 + 92) << 32));
  }

  return MEMORY[0x2821FE8E8](v0, 93, 7);
}

uint64_t sub_219F5ACB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ActivityHeaderViewModel();
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
    v12 = *(a1 + *(a3 + 24) + 184);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    v14 = v13 <= 0;
    if (v13 < 0)
    {
      v13 = -1;
    }

    if (v14)
    {
      return 0;
    }

    else
    {
      return v13;
    }
  }
}

uint64_t sub_219F5AD80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ActivityHeaderViewModel();
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
    *(a1 + *(a4 + 24) + 184) = (a2 + 1);
  }

  return result;
}

uint64_t sub_219F5AE90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BalanceOfPowerData(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 4)
    {
      return v10 - 3;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_219F5AF48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for BalanceOfPowerData(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 3;
  }

  return result;
}

uint64_t sub_219F5B000()
{
  if ((~(*(v0 + 92) << 32) & 0x3E00000000) != 0)
  {
    sub_219F63A60(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88) | (*(v0 + 92) << 32));
  }

  return MEMORY[0x2821FE8E8](v0, 93, 7);
}

uint64_t sub_219F5B10C()
{
  v1 = *(type metadata accessor for ActivityAsset() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_21A0E481C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  swift_unknownObjectRelease();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for URLAssetConfiguration.Format(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    (*(v6 + 8))(v0 + v3, v5);
    if (EnumCaseMultiPayload == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD99C0);

      type metadata accessor for URLAssetConfiguration.Recipe(0);
    }
  }

  else
  {
    sub_219F79CD8();
  }

  v10 = (((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + v7 + 40) & ~v7;
  v12 = (v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;

  __swift_destroy_boxed_opaque_existential_1(v0 + v10);
  (*(v6 + 8))(v0 + v11, v5);
  __swift_destroy_boxed_opaque_existential_1(v0 + v12);
  __swift_destroy_boxed_opaque_existential_1(v0 + v12 + 40);

  return MEMORY[0x2821FE8E8](v0, v12 + 96, v2 | v7 | 7);
}

uint64_t sub_219F5B334()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_219F5B36C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21A0E5B4C();
  *a1 = result;
  return result;
}

uint64_t sub_219F5B3AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 72);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    v12 = v11 <= 0;
    if (v11 < 0)
    {
      v11 = -1;
    }

    if (v12)
    {
      return 0;
    }

    else
    {
      return v11;
    }
  }
}

uint64_t sub_219F5B484(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 72) = (a2 + 1);
  }

  return result;
}

uint64_t sub_219F5B550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9610);
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
    v12 = *(a1 + *(a3 + 28) + 8);
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

uint64_t sub_219F5B62C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9610);
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
    *(a1 + *(a4 + 28) + 8) = a2;
  }

  return result;
}

uint64_t sub_219F5B6F8@<X0>(void *a1@<X8>)
{
  result = sub_21A0E543C();
  *a1 = v3;
  return result;
}

uint64_t sub_219F5B760()
{
  if ((~(*(v0 + 92) << 32) & 0x3E00000000) != 0)
  {
    sub_219F63A60(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88) | (*(v0 + 92) << 32));
  }

  return MEMORY[0x2821FE8E8](v0, 93, 7);
}

uint64_t sub_219F5B7D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCBA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_219F5B868(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCBA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219F5B92C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = (*(a1 + 48) >> 1) & 0x7FFFFFFF | (*(a1 + 68) >> 1 << 31);
    v5 = -2 - v4;
    if ((-2 - v4) < 0)
    {
      v5 = -1;
    }

    if (v4 > 0x80000000)
    {
      return (v5 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBAB8);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_219F5BA04(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *(result + 48) = (2 * ~a2);
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 68) = (~a2 >> 30) & 2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBAB8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_219F5BAD4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDCD28);
  sub_21A06CB90();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_219F5BB38()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_219F5BB80()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_219F5BBC0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_219F5BBF8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for NewsLiveActivityAttributes(0);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB408);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_219F5BD28(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for NewsLiveActivityAttributes(0);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB408);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_219F5BEB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9610);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32) + 8);
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

uint64_t sub_219F5BF8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9610);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = a2;
  }

  return result;
}

uint64_t sub_219F5C064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9608);
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_219F5C13C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9608);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_219F5C204@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_21A0E5CDC();
  result = sub_21A0E5C0C();
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_219F5C25C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NationalElectionTheme();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for NationalElectionViewData();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB1C8);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_219F5C3A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for NationalElectionTheme();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for NationalElectionViewData();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB1C8);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_219F5C518()
{
  if ((~(*(v0 + 92) << 32) & 0x3E00000000) != 0)
  {
    sub_219F63A60(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88) | (*(v0 + 92) << 32));
  }

  return MEMORY[0x2821FE8E8](v0, 93, 7);
}

uint64_t sub_219F5C590(char a1)
{
  if (a1)
  {
    return 0x73746E6169726176;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_219F5C5C4(char a1)
{
  if (!a1)
  {
    return 0x65756C6176;
  }

  if (a1 == 1)
  {
    return 0x6F697469646E6F63;
  }

  return 0x73746E6169726176;
}

uint64_t sub_219F5C61C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDD470);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDCB78);
  sub_21A0E53AC();
  sub_21A0E674C();
  swift_getTupleTypeMetadata();
  sub_21A0E5E6C();
  swift_getWitnessTable();
  sub_21A0E5DBC();
  return swift_getWitnessTable();
}

uint64_t sub_219F5C710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A0E481C();
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
    v11 = sub_21A0E495C();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_219F5C838(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21A0E481C();
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
    v11 = sub_21A0E495C();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_219F5C980(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for NewsLiveActivityContentState.Payload(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_219F5CA2C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for NewsLiveActivityContentState.Payload(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

double sub_219F5CAD8@<D0>(_OWORD *a1@<X8>)
{
  sub_21A004A50();
  sub_21A0E555C();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_219F5CB2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NewsLiveActivityAttributes(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for NewsLiveActivityContentState(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_219F5CC1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for NewsLiveActivityAttributes(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for NewsLiveActivityContentState(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_219F5CD24(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for PresidentialElectionData.Entity(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_219F5CDC8(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for PresidentialElectionData.Entity(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_219F5CEC0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD720);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_219F5CF54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ActivityFlexibleUpdate.Graphic(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 72);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 <= 2)
    {
      v12 = 2;
    }

    else
    {
      v12 = v11;
    }

    v13 = v12 - 2;
    if (v11 <= 0)
    {
      return 0;
    }

    else
    {
      return v13;
    }
  }
}

uint64_t sub_219F5D02C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ActivityFlexibleUpdate.Graphic(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 72) = (a2 + 3);
  }

  return result;
}

uint64_t sub_219F5D0FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NationalElectionTheme();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for NationalElectionViewData();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB1C8);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_219F5D248(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for NationalElectionTheme();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for NationalElectionViewData();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB1C8);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_219F5D3A0()
{
  sub_21A0E541C();
  type metadata accessor for ActivityColorEnvironment();
  return sub_21A0E54BC();
}

uint64_t sub_219F5D414()
{
  if ((~(*(v0 + 92) << 32) & 0x3E00000000) != 0)
  {
    sub_219F63A60(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88) | (*(v0 + 92) << 32));
  }

  return MEMORY[0x2821FE8E8](v0, 93, 7);
}

uint64_t sub_219F5D48C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9628);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_219F5D548(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9628);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_219F5D5F8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_219F5D6B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_219F5D764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PresidentialElectionData(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for BalanceOfPowerData(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_219F5D854(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for PresidentialElectionData(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for BalanceOfPowerData(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_219F5D954(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for ActivityHeaderData();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[7];
LABEL_3:
    v10 = *(v8 + 48);

    return v10(a1 + v9, a2, v7);
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
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9628);
    if (*(*(v13 - 8) + 84) == a2)
    {
      v7 = v13;
      v8 = *(v13 - 8);
      v9 = a3[11];
      goto LABEL_3;
    }

    v14 = type metadata accessor for ActivityMinimalAppearanceTheme();
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[12];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_219F5DAD0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for ActivityHeaderData();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[7];
LABEL_3:
    v12 = *(v10 + 56);

    return v12(a1 + v11, a2, a2, v9);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[9]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9628);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[11];
    goto LABEL_3;
  }

  v14 = type metadata accessor for ActivityMinimalAppearanceTheme();
  v15 = *(*(v14 - 8) + 56);
  v16 = a1 + a4[12];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_219F5DC4C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_21A0E495C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_219F5DCF8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21A0E495C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_219F5DD9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for PrimaryElectionData();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_219F5DE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for PrimaryElectionData();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_219F5DE90(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_21A0E481C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_219F5DF3C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_21A0E481C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_219F5DFE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9608);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for ActivityMinimalAppearanceTheme();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
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

uint64_t sub_219F5E108(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9608);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for ActivityMinimalAppearanceTheme();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_219F5E220@<X0>(_BYTE *a1@<X8>)
{
  sub_21A02FD4C();
  result = sub_21A0E555C();
  *a1 = v3;
  return result;
}

uint64_t sub_219F5E2BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PresidentialElectionData(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_219F5E328(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PresidentialElectionData(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_219F5E398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ElectionEntityTheme();
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

uint64_t sub_219F5E454(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ElectionEntityTheme();
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

uint64_t sub_219F5E52C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_219F5E564()
{
  v1 = sub_21A0E695C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 73) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_1(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 40, v3 | 7);
}

uint64_t sub_219F5E64C()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1(v0 + 72);
  __swift_destroy_boxed_opaque_existential_1(v0 + 112);

  return MEMORY[0x2821FE8E8](v0, 160, 7);
}

uint64_t sub_219F5E6A4()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_219F5E6E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB1B0);
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_219F5E7C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB1B0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_219F5E888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 253)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D8);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_219F5E9BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 253)
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D8);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(uint64_t a1)
{
  v1 = *(a1 + 184);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_219F5EBE4(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

double sub_219F5EC1C(uint64_t a1)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  return result;
}

uint64_t getEnumTagSinglePayload for DisplayScale(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for DisplayScale(uint64_t result, int a2, int a3)
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

uint64_t Dynamic<A>.resolve(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_21A0E554C();
  MEMORY[0x28223BE20](v6, v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, a1);
  sub_21A0B0F0C(v9, v14);
  v12[0] = v14[0];
  v12[1] = v14[1];
  v13 = v15;
  Dynamic.value(matching:)(v12, a2, a3);
  return sub_219F5ED9C(v14);
}

uint64_t sub_219F5EE30(uint64_t a1, id *a2)
{
  result = sub_21A0E61EC();
  *a2 = 0;
  return result;
}

uint64_t sub_219F5EEA8(uint64_t a1, id *a2)
{
  v3 = sub_21A0E61FC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_219F5EF28@<X0>(uint64_t *a1@<X8>)
{
  sub_21A0E620C();
  v2 = sub_21A0E61DC();

  *a1 = v2;
  return result;
}

uint64_t sub_219F5EF74(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x21CED1CF0](a1, &v6);
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

uint64_t sub_219F5EFC8(uint64_t a1, uint64_t a2)
{
  v3 = sub_21A0E662C();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_219F5F020@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21A0E663C();
  *a1 = result;
  return result;
}

void *sub_219F5F048@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_219F5F064@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_21A0E61DC();

  *a1 = v2;
  return result;
}

uint64_t sub_219F5F0AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21A0E620C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_219F5F0D8()
{
  sub_219F5F224(&qword_27CCD9320, type metadata accessor for URLResourceKey);
  sub_219F5F224(&qword_27CCD9328, type metadata accessor for URLResourceKey);

  return sub_21A0E69FC();
}

uint64_t sub_219F5F224(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_219F5F26C()
{
  sub_219F5F224(&qword_27CCD9310, type metadata accessor for UIBackgroundTaskIdentifier);
  sub_219F5F224(&qword_27CCD9318, type metadata accessor for UIBackgroundTaskIdentifier);
  return sub_21A0E69FC();
}

uint64_t sub_219F5F328()
{
  v0 = sub_21A0E620C();
  v1 = MEMORY[0x21CED19B0](v0);

  return v1;
}

uint64_t sub_219F5F364()
{
  sub_21A0E620C();
  sub_21A0E626C();
}

uint64_t sub_219F5F3B8()
{
  sub_21A0E620C();
  sub_21A0E6DAC();
  sub_21A0E626C();
  v0 = sub_21A0E6DFC();

  return v0;
}

uint64_t sub_219F5F468()
{
  v0 = sub_21A0E620C();
  v2 = v1;
  if (v0 == sub_21A0E620C() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_21A0E6C5C();
  }

  return v5 & 1;
}

uint64_t sub_219F5F630(uint64_t a1, int a2)
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

uint64_t sub_219F5F650(uint64_t result, int a2, int a3)
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

uint64_t get_enum_tag_for_layout_string_22NewsLiveActivitiesCore7DynamicVyAA12ActivityFillOGSg(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_22NewsLiveActivitiesCore7DynamicVyAA17ActivityTextThemeVGSg(uint64_t a1)
{
  v1 = *(a1 + 184);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_22NewsLiveActivitiesCore0B13BlogBodyThemeVSg(uint64_t a1)
{
  v1 = *(a1 + 184);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_219F5F6F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 1152))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 1056);
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

uint64_t sub_219F5F754(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 1144) = 0;
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
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 1152) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 1152) = 0;
    }

    if (a2)
    {
      *(result + 1056) = a2;
    }
  }

  return result;
}

uint64_t sub_219F5F904(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v167 = v3;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9560);
  MEMORY[0x28223BE20](v157, v4);
  v158 = &v157 - v5;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9568);
  v164 = *(v168 - 8);
  MEMORY[0x28223BE20](v168, v6);
  v159 = &v157 - v7;
  v8 = sub_21A0E554C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v157 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9570);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v169 = &v157 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v179 = &v157 - v18;
  memcpy(v329, (v2 + 48), sizeof(v329));
  v19 = *(v2 + 1128);
  v20 = *(v2 + 16);
  v327 = *v2;
  v328[0] = v20;
  v21 = v2;
  *(v328 + 9) = *(v2 + 25);
  LODWORD(v180) = BYTE8(v328[1]);
  v173 = v8;
  v174 = v12;
  v177 = v327;
  v178 = v19;
  v171 = *(&v327 + 1);
  v172 = v9;
  v170 = v20;
  v175 = *&v328[1];
  v176 = *(&v328[0] + 1);
  if (BYTE8(v328[1]) == 1)
  {
    v309 = v327;
    v310 = v328[0];
    v311 = *&v328[1];
    swift_bridgeObjectRetain_n();
    sub_219F45500(v329, v212, &qword_27CCD9578);
    sub_219F45500(&v327, v212, &qword_27CCD9580);
  }

  else
  {
    swift_bridgeObjectRetain_n();
    sub_219F45500(v329, v212, &qword_27CCD9578);
    sub_219F45500(&v327, v212, &qword_27CCD9580);
    sub_21A0E66AC();
    v22 = sub_21A0E575C();
    v19 = v178;
    sub_21A0E512C();

    sub_21A0E553C();
    swift_getAtKeyPath();
    sub_219F6409C(&v327, &qword_27CCD9580);
    (*(v9 + 8))(v12, v8);
  }

  v23 = v2;
  v24 = *(v2 + 1048);
  v25 = v21[132];
  v26 = v21[133];
  v27 = v21[134];
  v28 = v21[135];
  v162 = v21[136];
  v163 = v28;
  v29 = v21[137];
  v160 = v21[138];
  v161 = v29;
  v30 = v21[139];
  v165 = v21[140];
  v166 = v30;
  v305 = v309;
  v306 = v310;
  v307 = v311;
  *&v212[0] = swift_getKeyPath();
  *(v212 + 8) = 0u;
  *(&v212[1] + 8) = 0u;
  BYTE8(v212[2]) = 0;
  memset(&v212[3], 0, 64);
  sub_219F638CC(v308);
  memcpy(&v212[7], v308, 0x3E8uLL);
  v184[0] = v305;
  v184[1] = v306;
  *&v184[2] = v307;

  sub_219F63900(&v305, v183);
  v31 = sub_21A0B892C(v24, v25, v19, v184);
  v33 = v32;
  v35 = v34;
  v36 = v19;
  v38 = v37;
  v184[0] = v305;
  v184[1] = v306;
  *&v184[2] = v307;

  v39 = sub_21A0B892C(v26, v27, v36, v184);
  if (v38 | v42)
  {
    *&v212[3] = v31;
    *(&v212[3] + 1) = v33;
    *&v212[4] = v35;
    *(&v212[4] + 1) = v38;
    *&v212[5] = v39;
    *(&v212[5] + 1) = v40;
    *&v212[6] = v41;
    *(&v212[6] + 1) = v42;
    sub_219F63AC8(v329, &v212[7]);
    memcpy(v182, v212, sizeof(v182));
    memcpy(v183, v212, sizeof(v183));
    sub_219F63B38(v182, v184);
    sub_219F6395C(v183);
    KeyPath = swift_getKeyPath();
    memcpy(v184, v182, 0x458uLL);
    LOBYTE(v181[0]) = 0;
    v44 = v158;
    v45 = &v158[*(v157 + 36)];
    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD95C0) + 28);
    v47 = *MEMORY[0x277CE1050];
    v48 = sub_21A0E5CEC();
    (*(*(v48 - 8) + 104))(v45 + v46, v47, v48);
    *v45 = swift_getKeyPath();
    memcpy(v44, v184, 0x458uLL);
    *(v44 + 1112) = KeyPath;
    *(v44 + 1120) = 1;
    *(v44 + 1128) = 0;
    sub_219F63B38(v182, v181);
    sub_21A0E5E4C();
    sub_21A0E53BC();
    sub_219F6395C(v182);
    v49 = v159;
    sub_219F4D494(v44, v159, &qword_27CCD9560);
    v50 = v168;
    v51 = (v49 + *(v168 + 36));
    v52 = v317;
    v51[4] = v316;
    v51[5] = v52;
    v51[6] = v318;
    v53 = v313;
    *v51 = v312;
    v51[1] = v53;
    v54 = v315;
    v51[2] = v314;
    v51[3] = v54;
    v55 = v49;
    v56 = v179;
    sub_219F4D494(v55, v179, &qword_27CCD9568);
    (*(v164 + 56))(v56, 0, 1, v50);
  }

  else
  {
    sub_219F6409C(v329, &qword_27CCD9578);
    memcpy(v184, v212, 0x458uLL);
    sub_219F6395C(v184);
    (*(v164 + 56))(v179, 1, 1, v168);
  }

  v58 = v177;
  v57 = v178;
  v59 = v174;
  if (v180)
  {
    *&v302 = v177;
    *(&v302 + 1) = v171;
    *&v303 = v170;
    *(&v303 + 1) = v176;
    v304 = v175;
    sub_219F45500(&v327, v212, &qword_27CCD9580);
    v60 = v162;
  }

  else
  {
    sub_219F45500(&v327, v212, &qword_27CCD9580);
    v60 = v162;

    sub_21A0E66AC();
    v61 = sub_21A0E575C();
    sub_21A0E512C();

    sub_21A0E553C();
    swift_getAtKeyPath();
    sub_219F6409C(&v327, &qword_27CCD9580);
    (*(v172 + 8))(v59, v173);
  }

  v212[0] = v302;
  v212[1] = v303;
  *&v212[2] = v304;
  v168 = sub_21A0B892C(v163, v60, v57, v212);
  if (v64)
  {
    v65 = v62;
    v66 = v63;
    memcpy(v183, v329, 0x3E8uLL);
    if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v183) == 1)
    {
      sub_219F639B0(v331);
    }

    else
    {
      v212[10] = *&v183[560];
      v212[11] = *&v183[576];
      *&v212[12] = *&v183[592];
      v212[6] = *&v183[496];
      v212[7] = *&v183[512];
      v212[9] = *&v183[544];
      v212[8] = *&v183[528];
      v212[2] = *&v183[432];
      v212[3] = *&v183[448];
      v212[5] = *&v183[480];
      v212[4] = *&v183[464];
      v212[1] = *&v183[416];
      v212[0] = *&v183[400];
      sub_219F45500(v212, v184, &qword_27CCD95B8);
      v331[10] = v212[10];
      v331[11] = v212[11];
      *&v331[12] = *&v212[12];
      v331[6] = v212[6];
      v331[7] = v212[7];
      v331[9] = v212[9];
      v331[8] = v212[8];
      v331[2] = v212[2];
      v331[3] = v212[3];
      v331[5] = v212[5];
      v331[4] = v212[4];
      v331[1] = v212[1];
      v331[0] = v212[0];
    }

    v330[10] = v331[10];
    v330[11] = v331[11];
    *&v330[12] = *&v331[12];
    v330[6] = v331[6];
    v330[7] = v331[7];
    v330[9] = v331[9];
    v330[8] = v331[8];
    v330[2] = v331[2];
    v330[3] = v331[3];
    v330[5] = v331[5];
    v330[4] = v331[4];
    v330[1] = v331[1];
    v330[0] = v331[0];
    if (qword_27CCD90B8 != -1)
    {
      swift_once();
    }

    v215[0] = xmmword_27CCD9468;
    v215[1] = unk_27CCD9478;
    v216 = xmmword_27CCD9488;
    LODWORD(v217) = dword_27CCD9498;
    v213 = xmmword_27CCD9448;
    v214 = unk_27CCD9458;
    v200[0] = xmmword_27CCD9468;
    v200[1] = unk_27CCD9478;
    v201 = xmmword_27CCD9488;
    LODWORD(v202) = dword_27CCD9498;
    v198 = xmmword_27CCD9448;
    v199 = unk_27CCD9458;
    v184[0] = v23[71];
    sub_219F639D4(&v213, v212);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9588);
    sub_21A0E5D8C();
    if (*&v212[0] >= 2)
    {
      v67 = 6;
    }

    else
    {
      v67 = 8;
    }

    LOBYTE(v227) = v67;
    if (v180)
    {
      *&v255 = v58;
      *(&v255 + 1) = v171;
      *&v256 = v170;
      *(&v256 + 1) = v176;
      *&v257[0] = v175;
      sub_219F45500(&v327, v212, &qword_27CCD9580);
    }

    else
    {
      sub_219F45500(&v327, v212, &qword_27CCD9580);
      sub_21A0E66AC();
      v68 = sub_21A0E575C();
      sub_21A0E512C();

      v69 = v174;
      sub_21A0E553C();
      swift_getAtKeyPath();
      sub_219F6409C(&v327, &qword_27CCD9580);
      (*(v172 + 8))(v69, v173);
    }

    v212[0] = v255;
    v212[1] = v256;
    *&v212[2] = *&v257[0];
    v70 = Text.activityTextModifier(_:fallback:font:environment:)(v330, &v198, &v227, v212, v168, v65, v66 & 1);
    v163 = v71;
    v164 = v70;
    v73 = v72;
    v162 = v74;
    v250 = v212[0];
    v251 = v212[1];
    *&v252[0] = *&v212[2];
    sub_219F5ED9C(&v250);
    v188[0] = v200[0];
    v188[1] = v200[1];
    v189 = v201;
    LODWORD(v190) = v202;
    v186 = v198;
    v187 = v199;
    sub_219F6409C(&v186, &qword_27CCD95B0);
    v283 = v330[10];
    v284 = v330[11];
    *&v285 = *&v330[12];
    v279 = v330[6];
    v280 = v330[7];
    v282 = v330[9];
    v281 = v330[8];
    v275 = v330[2];
    v276 = v330[3];
    v278 = v330[5];
    v277 = v330[4];
    v274 = v330[1];
    v273 = v330[0];
    sub_219F6409C(&v273, &qword_27CCD95B8);
    memcpy(v212, v23, 0x480uLL);
    memcpy(v182, v329, 0x3E8uLL);
    if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v182) == 1)
    {
      sub_219F639B0(&v260);
    }

    else
    {
      v184[10] = *&v182[560];
      v184[11] = *&v182[576];
      *&v184[12] = *&v182[592];
      v184[6] = *&v182[496];
      v184[7] = *&v182[512];
      v184[9] = *&v182[544];
      v184[8] = *&v182[528];
      v184[2] = *&v182[432];
      v184[3] = *&v182[448];
      v184[5] = *&v182[480];
      v184[4] = *&v182[464];
      v184[1] = *&v182[416];
      v184[0] = *&v182[400];
      sub_219F45500(v184, v181, &qword_27CCD95B8);
      v270 = v184[10];
      v271 = v184[11];
      *&v272 = *&v184[12];
      v266 = v184[6];
      v267 = v184[7];
      v269 = v184[9];
      v268 = v184[8];
      v262 = v184[2];
      v263 = v184[3];
      v265 = v184[5];
      v264 = v184[4];
      v261 = v184[1];
      v260 = v184[0];
    }

    v184[10] = v270;
    v184[11] = v271;
    *&v184[12] = v272;
    v184[6] = v266;
    v184[7] = v267;
    v184[9] = v269;
    v184[8] = v268;
    v184[2] = v262;
    v184[3] = v263;
    v184[5] = v265;
    v184[4] = v264;
    v184[1] = v261;
    v184[0] = v260;
    v75 = sub_219F621C8(v184);
    v243 = v184[10];
    v244 = v184[11];
    v245 = *&v184[12];
    v239 = v184[6];
    v240 = v184[7];
    v242 = v184[9];
    v241 = v184[8];
    v235 = v184[2];
    v236 = v184[3];
    v238 = v184[5];
    v237 = v184[4];
    v234 = v184[1];
    v233 = v184[0];
    sub_219F6409C(&v233, &qword_27CCD95B8);
    v76 = swift_getKeyPath();
    v77 = v73 & 1;
    LOBYTE(v286) = v73 & 1;
    LOBYTE(v246) = 0;
    sub_21A0E5E4C();
    sub_21A0E53BC();
    *(&v185[3] + 5) = v322;
    *(&v185[4] + 5) = v323;
    *(&v185[5] + 5) = v324;
    *(&v185[6] + 5) = v325;
    *(v185 + 5) = v319;
    *(&v185[1] + 5) = v320;
    *(&v185[2] + 5) = v321;
    v78 = sub_21A0E5E3C();
    v80 = v79;
    sub_219F63A30(v168, v65, v66 & 1);

    v81 = swift_allocObject();
    memcpy((v81 + 16), v23, 0x480uLL);
    *&v181[2] = v75;
    *(&v181[7] + 11) = v185[4];
    *(&v181[8] + 11) = v185[5];
    *(&v181[9] + 11) = v185[6];
    *(&v181[3] + 11) = v185[0];
    *(&v181[4] + 11) = v185[1];
    *(&v181[5] + 11) = v185[2];
    *&v181[0] = v164;
    *(&v181[0] + 1) = v163;
    LOBYTE(v181[1]) = v77;
    *(&v181[1] + 1) = v162;
    *(&v181[2] + 1) = v76;
    *&v181[3] = 3;
    BYTE8(v181[3]) = 0;
    *(&v181[3] + 9) = 256;
    *(&v181[6] + 11) = v185[3];
    *(&v181[10] + 1) = *(&v185[6] + 13);
    *&v181[11] = sub_219F63A88;
    *(&v181[11] + 1) = v81;
    *&v181[12] = v78;
    *(&v181[12] + 1) = v80;
    nullsub_1(v181, v82);
    sub_219F63A90(v23, v184);
    v299 = v181[10];
    v300 = v181[11];
    v301 = v181[12];
    v295 = v181[6];
    v296 = v181[7];
    v298 = v181[9];
    v297 = v181[8];
    v291 = v181[2];
    v292 = v181[3];
    v294 = v181[5];
    v293 = v181[4];
    v290 = v181[1];
    v289 = v181[0];
    v59 = v174;
    v58 = v177;
    v57 = v178;
  }

  else
  {
    sub_219F6398C(&v289);
  }

  v326 = v23[71];
  v212[0] = v23[71];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9588);
  sub_21A0E5D8C();
  if (*&v184[0] <= 2)
  {
    if (v180)
    {
      *&v250 = v58;
      *(&v250 + 1) = v171;
      *&v251 = v170;
      *(&v251 + 1) = v176;
      *&v252[0] = v175;
      sub_219F45500(&v327, v212, &qword_27CCD9580);
      v83 = v160;
    }

    else
    {
      sub_219F45500(&v327, v212, &qword_27CCD9580);
      v83 = v160;

      sub_21A0E66AC();
      v86 = sub_21A0E575C();
      sub_21A0E512C();

      v57 = v178;
      sub_21A0E553C();
      swift_getAtKeyPath();
      v87 = v173;
      sub_219F6409C(&v327, &qword_27CCD9580);
      (*(v172 + 8))(v59, v87);
    }

    v212[0] = v250;
    v212[1] = v251;
    *&v212[2] = *&v252[0];
    v88 = sub_21A0B892C(v161, v83, v57, v212);
    v168 = v90;
    if (v91)
    {
      v92 = v88;
      v93 = v89;
      memcpy(v184, v329, 0x3E8uLL);
      if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v184) == 1)
      {
        sub_219F639B0(v331);
      }

      else
      {
        *&v212[12] = *(&v184[49] + 1);
        v212[10] = *(&v184[47] + 8);
        v212[11] = *(&v184[48] + 8);
        v212[6] = *(&v184[43] + 8);
        v212[7] = *(&v184[44] + 8);
        v212[9] = *(&v184[46] + 8);
        v212[8] = *(&v184[45] + 8);
        v212[2] = *(&v184[39] + 8);
        v212[3] = *(&v184[40] + 8);
        v212[5] = *(&v184[42] + 8);
        v212[4] = *(&v184[41] + 8);
        v212[1] = *(&v184[38] + 8);
        v212[0] = *(&v184[37] + 8);
        sub_219F45500(v212, v181, &qword_27CCD95B8);
        v331[10] = v212[10];
        v331[11] = v212[11];
        *&v331[12] = *&v212[12];
        v331[6] = v212[6];
        v331[7] = v212[7];
        v331[9] = v212[9];
        v331[8] = v212[8];
        v331[2] = v212[2];
        v331[3] = v212[3];
        v331[5] = v212[5];
        v331[4] = v212[4];
        v331[1] = v212[1];
        v331[0] = v212[0];
      }

      v330[10] = v331[10];
      v330[11] = v331[11];
      *&v330[12] = *&v331[12];
      v330[6] = v331[6];
      v330[7] = v331[7];
      v330[9] = v331[9];
      v330[8] = v331[8];
      v330[2] = v331[2];
      v330[3] = v331[3];
      v330[5] = v331[5];
      v330[4] = v331[4];
      v330[1] = v331[1];
      v330[0] = v331[0];
      if (qword_27CCD90C0 != -1)
      {
        swift_once();
      }

      v200[0] = xmmword_27CCD94C0;
      v200[1] = unk_27CCD94D0;
      v201 = xmmword_27CCD94E0;
      LODWORD(v202) = dword_27CCD94F0;
      v198 = xmmword_27CCD94A0;
      v199 = *algn_27CCD94B0;
      v188[0] = xmmword_27CCD94C0;
      v188[1] = unk_27CCD94D0;
      v189 = xmmword_27CCD94E0;
      LODWORD(v190) = dword_27CCD94F0;
      v186 = xmmword_27CCD94A0;
      v187 = *algn_27CCD94B0;
      v181[0] = v326;
      sub_219F639D4(&v198, v212);
      sub_21A0E5D8C();
      if (*&v212[0] >= 2)
      {
        v94 = 6;
      }

      else
      {
        v94 = 3;
      }

      LOBYTE(v246) = v94;
      if (v180)
      {
        *&v227 = v58;
        *(&v227 + 1) = v171;
        *&v228 = v170;
        *(&v228 + 1) = v176;
        *&v229 = v175;
        sub_219F45500(&v327, v212, &qword_27CCD9580);
      }

      else
      {
        sub_219F45500(&v327, v212, &qword_27CCD9580);
        sub_21A0E66AC();
        v95 = sub_21A0E575C();
        sub_21A0E512C();

        sub_21A0E553C();
        swift_getAtKeyPath();
        sub_219F6409C(&v327, &qword_27CCD9580);
        (*(v172 + 8))(v59, v173);
      }

      v212[0] = v227;
      v212[1] = v228;
      *&v212[2] = v229;
      v96 = Text.activityTextModifier(_:fallback:font:environment:)(v330, &v186, &v246, v212, v92, v93, v168 & 1);
      v163 = v97;
      v164 = v96;
      v99 = v98;
      v162 = v100;
      v286 = v212[0];
      v287 = v212[1];
      v288 = *&v212[2];
      sub_219F5ED9C(&v286);
      v257[0] = v188[0];
      v257[1] = v188[1];
      v258 = v189;
      v259 = v190;
      v255 = v186;
      v256 = v187;
      sub_219F6409C(&v255, &qword_27CCD95B0);
      v283 = v330[10];
      v284 = v330[11];
      *&v285 = *&v330[12];
      v279 = v330[6];
      v280 = v330[7];
      v282 = v330[9];
      v281 = v330[8];
      v275 = v330[2];
      v276 = v330[3];
      v278 = v330[5];
      v277 = v330[4];
      v274 = v330[1];
      v273 = v330[0];
      sub_219F6409C(&v273, &qword_27CCD95B8);
      memcpy(v212, v23, 0x480uLL);
      memcpy(v181, v329, 0x3E8uLL);
      if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v181) == 1)
      {
        sub_219F639B0(&v260);
      }

      else
      {
        v245 = *(&v181[49] + 1);
        v243 = *(&v181[47] + 8);
        v244 = *(&v181[48] + 8);
        v239 = *(&v181[43] + 8);
        v240 = *(&v181[44] + 8);
        v242 = *(&v181[46] + 8);
        v241 = *(&v181[45] + 8);
        v235 = *(&v181[39] + 8);
        v236 = *(&v181[40] + 8);
        v238 = *(&v181[42] + 8);
        v237 = *(&v181[41] + 8);
        v234 = *(&v181[38] + 8);
        v233 = *(&v181[37] + 8);
        sub_219F45500(&v233, &v260, &qword_27CCD95B8);
        v270 = v243;
        v271 = v244;
        *&v272 = v245;
        v266 = v239;
        v267 = v240;
        v269 = v242;
        v268 = v241;
        v262 = v235;
        v263 = v236;
        v265 = v238;
        v264 = v237;
        v261 = v234;
        v260 = v233;
      }

      v222 = v270;
      v223 = v271;
      v224 = v272;
      v218 = v266;
      v219 = v267;
      v221 = v269;
      v220 = v268;
      v215[0] = v262;
      v215[1] = v263;
      v217 = v265;
      v216 = v264;
      v214 = v261;
      v213 = v260;
      v84 = sub_219F621C8(&v213);
      sub_219F63A30(v92, v93, v168 & 1);

      v243 = v222;
      v244 = v223;
      v245 = v224;
      v239 = v218;
      v240 = v219;
      v242 = v221;
      v241 = v220;
      v235 = v215[0];
      v236 = v215[1];
      v238 = v217;
      v237 = v216;
      v234 = v214;
      v233 = v213;
      sub_219F6409C(&v233, &qword_27CCD95B8);
      v161 = swift_getKeyPath();
      LOBYTE(v213) = v99 & 1;
      LOBYTE(v225[0]) = 0;
      v168 = v99 & 1;
      LODWORD(v160) = 0x10000;
      v159 = 1;
    }

    else
    {
      v163 = 0;
      v164 = 0;
      v161 = 0;
      v162 = 0;
      v159 = 0;
      LODWORD(v160) = 0;
      v168 = 0;
      v84 = 0.0;
    }

    v57 = v178;
    if (!v180)
    {
      goto LABEL_51;
    }

LABEL_31:
    *&v286 = v58;
    *(&v286 + 1) = v171;
    *&v287 = v170;
    *(&v287 + 1) = v176;
    v288 = v175;
    sub_219F45500(&v327, v212, &qword_27CCD9580);
    v85 = v165;

    goto LABEL_52;
  }

  v163 = 0;
  v164 = 0;
  v161 = 0;
  v162 = 0;
  v159 = 0;
  LODWORD(v160) = 0;
  v168 = 0;
  v84 = 0.0;
  if (v180)
  {
    goto LABEL_31;
  }

LABEL_51:
  sub_219F45500(&v327, v212, &qword_27CCD9580);
  v85 = v165;

  sub_21A0E66AC();
  v101 = sub_21A0E575C();
  sub_21A0E512C();

  sub_21A0E553C();
  swift_getAtKeyPath();
  v102 = v173;
  sub_219F6409C(&v327, &qword_27CCD9580);
  (*(v172 + 8))(v59, v102);
LABEL_52:
  v212[0] = v286;
  v212[1] = v287;
  *&v212[2] = v288;
  v103 = sub_21A0B892C(v166, v85, v57, v212);
  if (v106)
  {
    v107 = v103;
    v108 = v104;
    v109 = v105;
    memcpy(v331, v329, 0x3E8uLL);
    if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v331) == 1)
    {
      sub_219F639B0(&v273);
    }

    else
    {
      v212[10] = v331[60];
      v212[11] = v331[61];
      *&v212[12] = *&v331[62];
      v212[6] = v331[56];
      v212[7] = v331[57];
      v212[9] = v331[59];
      v212[8] = v331[58];
      v212[2] = v331[52];
      v212[3] = v331[53];
      v212[5] = v331[55];
      v212[4] = v331[54];
      v212[1] = v331[51];
      v212[0] = v331[50];
      sub_219F45500(v212, v330, &qword_27CCD95B8);
      v283 = v212[10];
      v284 = v212[11];
      *&v285 = *&v212[12];
      v279 = v212[6];
      v280 = v212[7];
      v282 = v212[9];
      v281 = v212[8];
      v275 = v212[2];
      v276 = v212[3];
      v278 = v212[5];
      v277 = v212[4];
      v274 = v212[1];
      v273 = v212[0];
    }

    v270 = v283;
    v271 = v284;
    *&v272 = v285;
    v266 = v279;
    v267 = v280;
    v269 = v282;
    v268 = v281;
    v262 = v275;
    v263 = v276;
    v265 = v278;
    v264 = v277;
    v261 = v274;
    v260 = v273;
    v111 = v175;
    v110 = v176;
    if (qword_27CCD90C8 != -1)
    {
      v154 = v176;
      v155 = v107;
      v156 = v175;
      swift_once();
      v111 = v156;
      v107 = v155;
      v110 = v154;
    }

    v257[0] = xmmword_27CCD9518;
    v257[1] = unk_27CCD9528;
    v258 = xmmword_27CCD9538;
    v259 = dword_27CCD9548;
    v255 = xmmword_27CCD94F8;
    v256 = unk_27CCD9508;
    v252[0] = xmmword_27CCD9518;
    v252[1] = unk_27CCD9528;
    v253 = xmmword_27CCD9538;
    v254 = dword_27CCD9548;
    v250 = xmmword_27CCD94F8;
    v251 = unk_27CCD9508;
    v249 = 9;
    if (v180)
    {
      *&v246 = v177;
      *(&v246 + 1) = v171;
      *&v247 = v170;
      *(&v247 + 1) = v110;
      v248 = v111;
      sub_219F45500(&v327, v212, &qword_27CCD9580);
      sub_219F639D4(&v255, v212);
    }

    else
    {
      sub_219F45500(&v327, v212, &qword_27CCD9580);
      sub_219F639D4(&v255, v212);
      sub_21A0E66AC();
      v112 = sub_21A0E575C();
      sub_21A0E512C();

      v113 = v174;
      sub_21A0E553C();
      swift_getAtKeyPath();
      sub_219F6409C(&v327, &qword_27CCD9580);
      (*(v172 + 8))(v113, v173);
    }

    v212[0] = v246;
    v212[1] = v247;
    *&v212[2] = v248;
    v180 = v109;
    v114 = v109 & 1;
    v115 = v108;
    v116 = Text.activityTextModifier(_:fallback:font:environment:)(&v260, &v250, &v249, v212, v107, v108, v114);
    v118 = v117;
    LODWORD(v178) = v119;
    v121 = v120;
    v225[0] = v212[0];
    v225[1] = v212[1];
    v226 = *&v212[2];
    sub_219F5ED9C(v225);
    v229 = v252[0];
    v230 = v252[1];
    v231 = v253;
    v232 = v254;
    v227 = v250;
    v228 = v251;
    sub_219F6409C(&v227, &qword_27CCD95B0);
    v243 = v270;
    v244 = v271;
    v245 = v272;
    v239 = v266;
    v240 = v267;
    v242 = v269;
    v241 = v268;
    v235 = v262;
    v236 = v263;
    v238 = v265;
    v237 = v264;
    v234 = v261;
    v233 = v260;
    sub_219F6409C(&v233, &qword_27CCD95B8);
    memcpy(v212, v23, 0x480uLL);
    memcpy(v330, v329, 0x3E8uLL);
    if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v330) == 1)
    {
      sub_219F639B0(&v213);
    }

    else
    {
      v207 = v330[60];
      v208 = v330[61];
      v209 = *&v330[62];
      v203 = v330[56];
      v204 = v330[57];
      v206 = v330[59];
      v205 = v330[58];
      v200[0] = v330[52];
      v200[1] = v330[53];
      v202 = v330[55];
      v201 = v330[54];
      v199 = v330[51];
      v198 = v330[50];
      sub_219F45500(&v198, &v213, &qword_27CCD95B8);
      v222 = v207;
      v223 = v208;
      v224 = v209;
      v218 = v203;
      v219 = v204;
      v221 = v206;
      v220 = v205;
      v215[0] = v200[0];
      v215[1] = v200[1];
      v217 = v202;
      v216 = v201;
      v214 = v199;
      v213 = v198;
    }

    v195 = v222;
    v196 = v223;
    v197 = v224;
    v191 = v218;
    v192 = v219;
    v194 = v221;
    v193 = v220;
    v188[0] = v215[0];
    v188[1] = v215[1];
    v190 = v217;
    v189 = v216;
    v187 = v214;
    v186 = v213;
    v122 = sub_219F621C8(&v186);
    sub_219F63A30(v107, v115, v180 & 1);

    v207 = v195;
    v208 = v196;
    v209 = v197;
    v203 = v191;
    v204 = v192;
    v206 = v194;
    v205 = v193;
    v200[0] = v188[0];
    v200[1] = v188[1];
    v202 = v190;
    v201 = v189;
    v199 = v187;
    v198 = v186;
    sub_219F6409C(&v198, &qword_27CCD95B8);
    v123 = swift_getKeyPath();
    v124 = v178 & 1;
    v211 = v178 & 1;
    v210 = 0;
    sub_219F63A40(v116, v118, v178 & 1);
    *&v186 = v116;
    *(&v186 + 1) = v118;
    LOBYTE(v187) = v124;
    *(&v187 + 1) = v121;
    *v188 = v122;
    *(&v188[0] + 1) = v123;
    *&v188[1] = 1;
    BYTE8(v188[1]) = 0;
  }

  else
  {
    memset(v188, 0, 25);
    v187 = 0u;
    v186 = 0u;
  }

  v125 = v169;
  sub_219F45500(v179, v169, &qword_27CCD9570);
  v270 = v299;
  v271 = v300;
  v272 = v301;
  v266 = v295;
  v267 = v296;
  v269 = v298;
  v268 = v297;
  v262 = v291;
  v263 = v292;
  v265 = v294;
  v264 = v293;
  v261 = v290;
  v260 = v289;
  v250 = v186;
  v251 = v187;
  v252[0] = v188[0];
  *(v252 + 9) = *(v188 + 9);
  v126 = v125;
  v127 = v167;
  sub_219F45500(v126, v167, &qword_27CCD9570);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9590);
  v129 = v128[12];
  v130 = v271;
  v131 = v270;
  v283 = v270;
  v284 = v271;
  v132 = v272;
  v285 = v272;
  v133 = v267;
  v134 = v266;
  v279 = v266;
  v280 = v267;
  v135 = v268;
  v136 = v269;
  v282 = v269;
  v281 = v268;
  v137 = v264;
  v138 = v265;
  v278 = v265;
  v277 = v264;
  v139 = v263;
  v276 = v263;
  v275 = v262;
  v140 = v261;
  v141 = v260;
  v274 = v261;
  v273 = v260;
  v142 = (v127 + v129);
  v142[2] = v262;
  v142[3] = v139;
  v142[6] = v134;
  v142[7] = v133;
  v142[4] = v137;
  v142[5] = v138;
  v142[11] = v130;
  v142[12] = v132;
  v142[9] = v136;
  v142[10] = v131;
  v142[8] = v135;
  *v142 = v141;
  v142[1] = v140;
  v143 = (v127 + v128[16]);
  v144 = v163;
  v145 = v164;
  *&v213 = v164;
  *(&v213 + 1) = v163;
  *&v214 = v168;
  v147 = v161;
  v146 = v162;
  *(&v214 + 1) = v162;
  *v215 = v84;
  *(&v215[0] + 1) = v161;
  v148 = v159;
  *&v215[1] = v159;
  v149 = v160;
  LODWORD(v180) = WORD1(v160);
  BYTE10(v215[1]) = BYTE2(v160);
  WORD4(v215[1]) = v160;
  v150 = v214;
  *v143 = v213;
  v143[1] = v150;
  v143[2] = v215[0];
  *(v143 + 43) = *(v215 + 11);
  v151 = (v127 + v128[20]);
  *(v257 + 9) = *(v252 + 9);
  v257[0] = v252[0];
  v256 = v251;
  v255 = v250;
  sub_219F45500(&v273, v212, &qword_27CCD9598);
  sub_219F45500(&v213, v212, &qword_27CCD95A0);
  sub_219F45500(&v255, v212, &qword_27CCD95A8);
  sub_219F6409C(&v186, &qword_27CCD95A8);
  sub_219F6409C(v179, &qword_27CCD9570);
  v152 = v256;
  *v151 = v255;
  v151[1] = v152;
  v151[2] = v257[0];
  *(v151 + 41) = *(v257 + 9);
  v198 = v250;
  v199 = v251;
  v200[0] = v252[0];
  *(v200 + 9) = *(v252 + 9);
  sub_219F6409C(&v198, &qword_27CCD95A8);
  *&v233 = v145;
  *(&v233 + 1) = v144;
  *&v234 = v168;
  *(&v234 + 1) = v146;
  *&v235 = v84;
  *(&v235 + 1) = v147;
  *&v236 = v148;
  BYTE10(v236) = v180;
  WORD4(v236) = v149;
  sub_219F6409C(&v233, &qword_27CCD95A0);
  v212[10] = v270;
  v212[11] = v271;
  v212[12] = v272;
  v212[6] = v266;
  v212[7] = v267;
  v212[9] = v269;
  v212[8] = v268;
  v212[2] = v262;
  v212[3] = v263;
  v212[5] = v265;
  v212[4] = v264;
  v212[1] = v261;
  v212[0] = v260;
  sub_219F6409C(v212, &qword_27CCD9598);
  return sub_219F6409C(v169, &qword_27CCD9570);
}

double sub_219F621C8(__int128 *a1)
{
  v3 = sub_21A0E554C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[8];
  v91 = a1[9];
  v9 = a1[11];
  v92 = a1[10];
  v93 = v9;
  v11 = a1[6];
  v10 = a1[7];
  v94 = *(a1 + 24);
  v89 = v10;
  v90 = v8;
  v12 = a1[3];
  v84 = a1[2];
  v85 = v12;
  v13 = a1[4];
  v87 = a1[5];
  v88 = v11;
  v86 = v13;
  v14 = a1[1];
  v82 = *a1;
  v83 = v14;
  v16 = *v1;
  v15 = *(v1 + 8);
  v17 = *(v1 + 24);
  *&v31 = *(v1 + 16);
  *(&v31 + 1) = v17;
  v18 = *(v1 + 32);
  v19 = *(v1 + 40);
  v20 = sub_219F63C20(&v82);
  result = 0.0;
  if (v20 != 1)
  {
    v30 = v18;
    if (v19)
    {
      *&v66 = v16;
      *(&v66 + 1) = v15;
      v67 = v31;
      v68 = v18;
      *&v51 = v16;
      *(&v51 + 1) = v15;
      v52 = v31;
      *&v53 = v18;
      BYTE8(v53) = 1;
      sub_219F63900(&v51, &v39);
    }

    else
    {

      sub_21A0E66AC();
      v22 = sub_21A0E575C();
      sub_21A0E512C();

      sub_21A0E553C();
      swift_getAtKeyPath();
      sub_219F63A50(v16, v15, v31, *(&v31 + 1), v30, 0);
      (*(v4 + 8))(v7, v3);
    }

    v29 = v4;
    v39 = v66;
    v40 = v67;
    v81 = v94;
    v79 = v92;
    v80 = v93;
    v75 = v88;
    v76 = v89;
    v77 = v90;
    v78 = v91;
    v71 = v84;
    v72 = v85;
    v73 = v86;
    v74 = v87;
    v69 = v82;
    v70 = v83;
    *&v41[0] = v68;
    *(&v42 + 1) = MEMORY[0x277D84F90];
    sub_219F63C38(&v82, &v35);
    if (qword_27CCD9198 != -1)
    {
      swift_once();
    }

    *(&v41[8] + 8) = v90;
    *(&v41[9] + 8) = v91;
    *(&v41[10] + 8) = v92;
    *(&v41[4] + 8) = v86;
    *(&v41[5] + 8) = v87;
    *(&v41[6] + 8) = v88;
    *(&v41[7] + 8) = v89;
    *(v41 + 8) = v82;
    *(&v41[1] + 8) = v83;
    *(&v41[2] + 8) = v84;
    *(&v41[3] + 8) = v85;
    *(&v41[11] + 1) = v93;
    *&v42 = qword_27CCDBDB0;

    sub_219F8AD10(&v39);
    v47 = *(&v41[8] + 8);
    v48 = *(&v41[9] + 8);
    v49 = *(&v41[10] + 8);
    v50 = *(&v41[11] + 1);
    v43[4] = *(&v41[4] + 8);
    v44 = *(&v41[5] + 8);
    v45 = *(&v41[6] + 8);
    v46 = *(&v41[7] + 8);
    v43[0] = *(v41 + 8);
    v43[1] = *(&v41[1] + 8);
    v43[2] = *(&v41[2] + 8);
    v43[3] = *(&v41[3] + 8);
    v63 = v41[10];
    v64 = v41[11];
    v65 = v42;
    v59 = v41[6];
    v60 = v41[7];
    v61 = v41[8];
    v62 = v41[9];
    v55 = v41[2];
    v56 = v41[3];
    v57 = v41[4];
    v58 = v41[5];
    v51 = v39;
    v52 = v40;
    v53 = v41[0];
    v54 = v41[1];
    sub_219F63C38(v43, &v35);
    sub_219F6409C(&v51, &qword_27CCD95C8);
    v23 = *(&v44 + 1);
    v24 = v45;
    sub_219F63C94(*(&v44 + 1), v45);
    sub_219F63CD8(v43);
    if (v24)
    {
      if (v19)
      {
        *&v32 = v16;
        *(&v32 + 1) = v15;
        v33 = v31;
        v34 = v30;
        *&v39 = v16;
        *(&v39 + 1) = v15;
        v40 = v31;
        *&v41[0] = v30;
        BYTE8(v41[0]) = 1;
        sub_219F63900(&v39, &v35);
      }

      else
      {

        sub_21A0E66AC();
        v25 = sub_21A0E575C();
        v28 = v3;
        v26 = v25;
        sub_21A0E512C();

        sub_21A0E553C();
        swift_getAtKeyPath();
        sub_219F63A50(v16, v15, v31, *(&v31 + 1), v30, 0);
        (*(v29 + 8))(v7, v28);
      }

      v35 = v32;
      v36 = v33;
      *&v37 = v34;
      *(&v37 + 1) = v23;
      *&v38 = qword_27CCDBDB0;
      *(&v38 + 1) = MEMORY[0x277D84F90];

      sub_219F8AB60(&v35, v23, v24, *(&v24 + 1));
      sub_219F63D2C(v23, v24);
      v27 = BYTE8(v37);
      v39 = v35;
      v40 = v36;
      v41[0] = v37;
      v41[1] = v38;
      sub_219F6409C(&v39, &qword_27CCD95D0);
      result = 1.0;
      if ((v27 & 4) == 0)
      {
        return 0.0;
      }
    }

    else
    {
      return 0.0;
    }
  }

  return result;
}

uint64_t sub_219F62738@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_21A0E52EC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v10 = sub_21A0E5BEC();
  (*(v7 + 16))(&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v13 = swift_allocObject();
  memcpy((v13 + 16), a2, 0x480uLL);
  *a3 = v10;
  a3[1] = sub_219F63B70;
  a3[2] = v12;
  a3[3] = sub_219F63BD4;
  a3[4] = v13;
  return sub_219F63A90(a2, &v16);
}

void sub_219F628CC(double a1)
{
  v2 = [objc_opt_self() preferredFontForTextStyle_];
  [v2 lineHeight];
  v4 = v3;

  if (v4 + v4 <= a1 && v4 + v4 > v4 * 3.0)
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9588);
    sub_21A0E5D9C();
  }
}

uint64_t sub_219F629D0@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v64 = a2;
  v60 = sub_21A0E554C();
  v62 = *(v60 - 8);
  MEMORY[0x28223BE20](v60, v3);
  v61 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 9))
  {
    v5 = *(a1 + 6);
    v6 = *(a1 + 7);
    v7 = *(a1 + 16);
    memcpy(v132, a1 + 7, sizeof(v132));
    if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v132) == 1)
    {
      sub_219F639B0(v133);
    }

    else
    {
      v127 = *&v132[160];
      v128 = *&v132[176];
      v129 = *&v132[192];
      v123 = *&v132[96];
      v124 = *&v132[112];
      v126 = *&v132[144];
      v125 = *&v132[128];
      v119 = *&v132[32];
      v120 = *&v132[48];
      v121 = *&v132[64];
      v122 = *&v132[80];
      v117 = *v132;
      v118 = *&v132[16];
      sub_219F45500(&v117, v133, &qword_27CCD95B8);
      v133[10] = v127;
      v133[11] = v128;
      *&v133[12] = v129;
      v133[6] = v123;
      v133[7] = v124;
      v133[9] = v126;
      v133[8] = v125;
      v133[2] = v119;
      v133[3] = v120;
      v133[5] = v122;
      v133[4] = v121;
      v133[1] = v118;
      v133[0] = v117;
    }

    v127 = v133[10];
    v128 = v133[11];
    v129 = *&v133[12];
    v123 = v133[6];
    v124 = v133[7];
    v126 = v133[9];
    v125 = v133[8];
    v119 = v133[2];
    v120 = v133[3];
    v121 = v133[4];
    v122 = v133[5];
    v117 = v133[0];
    v118 = v133[1];
    sub_219F63A40(v5, v6, v7 & 1);
    v14 = qword_27CCD90B0;

    if (v14 != -1)
    {
      swift_once();
    }

    v79 = xmmword_27CCD9410;
    v80 = unk_27CCD9420;
    v81 = xmmword_27CCD9430;
    LODWORD(v82) = dword_27CCD9440;
    v77 = xmmword_27CCD93F0;
    v78 = unk_27CCD9400;
    v113 = xmmword_27CCD9410;
    v114 = unk_27CCD9420;
    v115 = xmmword_27CCD9430;
    v116 = dword_27CCD9440;
    v111 = xmmword_27CCD93F0;
    v112 = unk_27CCD9400;
    LOBYTE(v73[0]) = 9;
    v15 = *a1;
    v16 = a1[1];
    *&v131[25] = *(a1 + 25);
    *&v131[16] = v16;
    *v131 = v15;
    if (v131[40] == 1)
    {
      *&v75[0] = *v131;
      *(v75 + 8) = *&v131[8];
      *(&v75[1] + 8) = *&v131[24];
      sub_219F639D4(&v77, &v98);
      sub_219F45500(v131, &v98, &qword_27CCD9580);
    }

    else
    {
      sub_219F639D4(&v77, &v98);
      sub_219F45500(v131, &v98, &qword_27CCD9580);
      sub_21A0E66AC();
      v17 = sub_21A0E575C();
      sub_21A0E512C();

      v19 = v60;
      v18 = v61;
      sub_21A0E553C();
      swift_getAtKeyPath();
      sub_219F6409C(v131, &qword_27CCD9580);
      (*(v62 + 8))(v18, v19);
    }

    *v90 = v75[0];
    *&v90[16] = v75[1];
    *&v90[32] = *&v75[2];
    v20 = Text.activityTextModifier(_:fallback:font:environment:)(&v117, &v111, v73, v90, v5, v6, v7 & 1);
    v22 = v21;
    v24 = v23;
    v25 = v5;
    v27 = v26;
    sub_219F63A30(v25, v6, v7 & 1);

    *v130 = *v90;
    *&v130[16] = *&v90[16];
    *&v130[32] = *&v90[32];
    sub_219F5ED9C(v130);
    v94 = v113;
    v95 = v114;
    v96 = v115;
    v97 = v116;
    v92 = v111;
    v93 = v112;
    sub_219F6409C(&v92, &qword_27CCD95B0);
    v108 = v127;
    v109 = v128;
    v110 = v129;
    v104 = v123;
    v105 = v124;
    v106 = v125;
    v107 = v126;
    v100 = v119;
    v101 = v120;
    v102 = v121;
    v103 = v122;
    v98 = v117;
    v99 = v118;
    sub_219F6409C(&v98, &qword_27CCD95B8);
    KeyPath = swift_getKeyPath();
    v68 = v22;
    v69 = v20;
    v63 = v24 & 1;
    sub_219F63A40(v20, v22, v24 & 1);
    v66 = v27;

    v67 = KeyPath;

    v65 = 1;
    v8 = *(a1 + 13);
    if (v8)
    {
      goto LABEL_13;
    }

LABEL_5:
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    goto LABEL_22;
  }

  v68 = 0;
  v69 = 0;
  v63 = 0;
  v66 = 0;
  v67 = 0;
  v65 = 0;
  v8 = *(a1 + 13);
  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_13:
  v29 = *(a1 + 10);
  v30 = *(a1 + 11);
  v31 = *(a1 + 24);
  memcpy(v133, a1 + 7, 0x3E8uLL);
  if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v133) == 1)
  {
    sub_219F639B0(&v117);
  }

  else
  {
    v110 = *(&v133[24] + 1);
    v100 = *(&v133[14] + 8);
    v101 = *(&v133[15] + 8);
    v98 = *(&v133[12] + 8);
    v99 = *(&v133[13] + 8);
    v108 = *(&v133[22] + 8);
    v109 = *(&v133[23] + 8);
    v104 = *(&v133[18] + 8);
    v105 = *(&v133[19] + 8);
    v106 = *(&v133[20] + 8);
    v107 = *(&v133[21] + 8);
    v102 = *(&v133[16] + 8);
    v103 = *(&v133[17] + 8);
    sub_219F45500(&v98, &v117, &qword_27CCD95B8);
    v127 = v108;
    v128 = v109;
    v129 = v110;
    v123 = v104;
    v124 = v105;
    v126 = v107;
    v125 = v106;
    v119 = v100;
    v120 = v101;
    v121 = v102;
    v122 = v103;
    v117 = v98;
    v118 = v99;
  }

  v108 = v127;
  v109 = v128;
  v110 = v129;
  v104 = v123;
  v105 = v124;
  v106 = v125;
  v107 = v126;
  v100 = v119;
  v101 = v120;
  v102 = v121;
  v103 = v122;
  v98 = v117;
  v99 = v118;
  sub_219F63A40(v29, v30, v31 & 1);
  v32 = qword_27CCD90B0;

  if (v32 != -1)
  {
    swift_once();
  }

  v113 = xmmword_27CCD9410;
  v114 = unk_27CCD9420;
  v115 = xmmword_27CCD9430;
  v116 = dword_27CCD9440;
  v111 = xmmword_27CCD93F0;
  v112 = unk_27CCD9400;
  v94 = xmmword_27CCD9410;
  v95 = unk_27CCD9420;
  v96 = xmmword_27CCD9430;
  v97 = dword_27CCD9440;
  v92 = xmmword_27CCD93F0;
  v93 = unk_27CCD9400;
  v91 = 9;
  v33 = *a1;
  v34 = a1[1];
  *&v130[25] = *(a1 + 25);
  *&v130[16] = v34;
  *v130 = v33;
  if (v130[40] == 1)
  {
    *v90 = *v130;
    *&v90[8] = *&v130[8];
    *&v90[24] = *&v130[24];
    sub_219F639D4(&v111, &v77);
    sub_219F45500(v130, &v77, &qword_27CCD9580);
  }

  else
  {
    sub_219F639D4(&v111, &v77);
    sub_219F45500(v130, &v77, &qword_27CCD9580);
    sub_21A0E66AC();
    v35 = v29;
    v36 = sub_21A0E575C();
    sub_21A0E512C();

    v29 = v35;
    v37 = v61;
    sub_21A0E553C();
    swift_getAtKeyPath();
    sub_219F6409C(v130, &qword_27CCD9580);
    (*(v62 + 8))(v37, v60);
  }

  v70 = *v90;
  v71 = *&v90[16];
  v72 = *&v90[32];
  v38 = Text.activityTextModifier(_:fallback:font:environment:)(&v98, &v92, &v91, &v70, v29, v30, v31 & 1);
  v40 = v39;
  v41 = v29;
  v43 = v42;
  v45 = v44;
  sub_219F63A30(v41, v30, v31 & 1);

  v73[0] = v70;
  v73[1] = v71;
  v74 = v72;
  sub_219F5ED9C(v73);
  v75[2] = v94;
  v75[3] = v95;
  v75[4] = v96;
  v76 = v97;
  v75[0] = v92;
  v75[1] = v93;
  sub_219F6409C(v75, &qword_27CCD95B0);
  v87 = v108;
  v88 = v109;
  v89 = v110;
  v83 = v104;
  v84 = v105;
  v85 = v106;
  v86 = v107;
  v79 = v100;
  v80 = v101;
  v81 = v102;
  v82 = v103;
  v77 = v98;
  v78 = v99;
  sub_219F6409C(&v77, &qword_27CCD95B8);
  v46 = swift_getKeyPath();
  v47 = v43 & 1;
  v8 = v38;
  v48 = v38;
  v9 = v40;
  v10 = v47;
  sub_219F63A40(v48, v40, v47);
  v11 = v45;

  v12 = v46;

  v13 = 1;
LABEL_22:
  LOBYTE(v117) = 1;
  v49 = v68;
  v50 = v63;
  sub_219F640FC(v69, v68, v63, v66);
  sub_219F640FC(v8, v9, v10, v11);
  v51 = v49;
  v52 = v50;
  v53 = v50;
  v54 = v66;
  v55 = v65;
  sub_219F6414C(v69, v51, v52, v66);
  sub_219F6414C(v8, v9, v10, v11);
  v56 = v117;
  v57 = v64;
  v58 = v68;
  *v64 = v69;
  v57[1] = v58;
  v57[2] = v53;
  v57[3] = v54;
  v57[4] = v67;
  v57[5] = v55;
  *(v57 + 48) = 0;
  v57[7] = 0;
  *(v57 + 64) = v56;
  v57[9] = v8;
  v57[10] = v9;
  v57[11] = v10;
  v57[12] = v11;
  v57[13] = v12;
  v57[14] = v13;
  *(v57 + 120) = 0;
  sub_219F6414C(v8, v9, v10, v11);
  return sub_219F6414C(v69, v68, v53, v66);
}

double sub_219F63458@<D0>(uint64_t a1@<X8>)
{
  memcpy(__dst, v1, sizeof(__dst));
  v3 = sub_21A0E55BC();
  v19 = 1;
  sub_219F629D0(__dst, &v11);
  v25 = v15;
  v26 = v16;
  v27[0] = v17[0];
  *(v27 + 9) = *(v17 + 9);
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v28[0] = v11;
  v28[1] = v12;
  v28[2] = v13;
  v28[3] = v14;
  v28[4] = v15;
  v28[5] = v16;
  v29[0] = v17[0];
  *(v29 + 9) = *(v17 + 9);
  sub_219F45500(&v21, &v10, &qword_27CCD95F0);
  sub_219F6409C(v28, &qword_27CCD95F0);
  *&v18[71] = v25;
  *&v18[87] = v26;
  *&v18[103] = v27[0];
  *&v18[112] = *(v27 + 9);
  *&v18[7] = v21;
  *&v18[23] = v22;
  *&v18[39] = v23;
  *&v18[55] = v24;
  v4 = *&v18[80];
  *(a1 + 81) = *&v18[64];
  *(a1 + 97) = v4;
  v5 = *&v18[112];
  *(a1 + 113) = *&v18[96];
  *(a1 + 129) = v5;
  v6 = *&v18[16];
  *(a1 + 17) = *v18;
  *(a1 + 33) = v6;
  result = *&v18[32];
  v8 = *&v18[48];
  *(a1 + 49) = *&v18[32];
  v9 = v19;
  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = v9;
  *(a1 + 65) = v8;
  return result;
}

uint64_t sub_219F635C4@<X0>(uint64_t a1@<X8>)
{
  memcpy(v15, v1, sizeof(v15));
  *a1 = sub_21A0E567C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9550);
  sub_219F5F904(v15, v3);
  v4 = sub_21A0E578C();
  sub_21A0E51EC();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9558);
  v14 = a1 + *(result + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
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

double sub_219F636D8()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 1;
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 92) = 62;
  *(v0 + 88) = 0;
  *&xmmword_27CCD93F0 = v0;
  BYTE4(xmmword_27CCD9430) = 32;
  LODWORD(xmmword_27CCD9430) = 0;
  *(&xmmword_27CCD9430 + 1) = 0;
  dword_27CCD9440 = 394753;
  return result;
}

double sub_219F63754()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 92) = 62;
  *(v0 + 88) = 0;
  *&xmmword_27CCD9448 = v0;
  BYTE4(xmmword_27CCD9488) = 32;
  LODWORD(xmmword_27CCD9488) = 0;
  *(&xmmword_27CCD9488 + 1) = 0;
  dword_27CCD9498 = 395265;
  return result;
}

double sub_219F637D0()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 1;
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 92) = 62;
  *(v0 + 88) = 0;
  *&xmmword_27CCD94A0 = v0;
  BYTE4(xmmword_27CCD94E0) = 32;
  LODWORD(xmmword_27CCD94E0) = 0;
  *(&xmmword_27CCD94E0 + 1) = 0;
  dword_27CCD94F0 = 262913;
  return result;
}

double sub_219F6384C()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 1;
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 92) = 62;
  *(v0 + 88) = 0;
  *&xmmword_27CCD94F8 = v0;
  BYTE4(xmmword_27CCD9538) = 32;
  LODWORD(xmmword_27CCD9538) = 0;
  *(&xmmword_27CCD9538 + 1) = 0;
  dword_27CCD9548 = 50595329;
  return result;
}

void sub_219F638CC(uint64_t a1)
{
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 184) = 1;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  bzero((a1 + 192), 0x328uLL);
}

double sub_219F6398C(_OWORD *a1)
{
  result = 0.0;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

double sub_219F639B0(uint64_t a1)
{
  *(a1 + 192) = 0;
  result = 0.0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_219F63A30(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_219F63A40(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_219F63A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
  }

  else
  {
  }
}

uint64_t sub_219F63A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  v9 = (a9 >> 36) & 3;
  if (v9 == 2)
  {
  }

  if (v9 == 1)
  {
  }

  return result;
}

uint64_t sub_219F63AC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9578);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_219F63B70@<X0>(void *a1@<X8>)
{
  sub_21A0E52EC();
  result = sub_21A0E52DC();
  *a1 = v3;
  return result;
}

void sub_219F63BD4(double *a1)
{
  v2 = *a1;
  memcpy(v3, (v1 + 16), sizeof(v3));
  sub_219F628CC(v2);
}

uint64_t sub_219F63C20(uint64_t a1)
{
  v1 = *(a1 + 184);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_219F63C94(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_219F63D2C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI4TextVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_219F63D9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 1112))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 72);
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

uint64_t sub_219F63DF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 1112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 1112) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2;
    }
  }

  return result;
}

unint64_t sub_219F63F80()
{
  result = qword_27CCD95D8;
  if (!qword_27CCD95D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCD9558);
    sub_219F3E490(&qword_27CCD95E0, &qword_27CCD95E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD95D8);
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

uint64_t sub_219F6409C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219F640FC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_219F63A40(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_219F6414C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_219F63A30(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_219F641B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9608);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9610);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v36 - v11;
  v40 = type metadata accessor for ActivityHeaderViewModel();
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v13);
  v37 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PrimaryElectionContentState();
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PrimaryElectionStaticAttributes();
  v20 = v19 - 8;
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for PrimaryElectionDynamicIsland();
  v39 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v36 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219F65BB8(a1, v27, type metadata accessor for PrimaryElectionTheme);
  v28 = *(a1 + *(v20 + 28));
  if (*(a2 + 25))
  {
    v29 = 0;
    v30 = 1;
  }

  else
  {
    v29 = *a2;
    if (*(a2 + 8))
    {
      v29 = 0;
    }

    if ((*(a2 + 24) & 1) == 0)
    {
      v28 = *(a2 + 16);
    }

    v30 = *(a2 + 8) & 1;
  }

  v42[0] = v29;
  v42[1] = v30;
  v42[2] = v28;
  v43 = 0;
  PrimaryElectionTheme.apply(properties:data:)(v42, a2 + *(v15 + 20));
  sub_219F65BB8(a1, v23, type metadata accessor for PrimaryElectionStaticAttributes);
  sub_219F65BB8(a2, v18, type metadata accessor for PrimaryElectionContentState);
  sub_21A011428(v23, v18, v42);
  *&v27[*(v24 + 20)] = v42[0];
  v31 = type metadata accessor for PrimaryElectionTheme();
  sub_219F65BB8(&v27[*(v31 + 28)], v8, type metadata accessor for ActivityHeaderData);
  v32 = type metadata accessor for ActivityHeaderData();
  (*(*(v32 - 8) + 56))(v8, 0, 1, v32);
  ActivityHeaderViewModel.init(from:)(v8, v12);
  sub_219F65AF4(a2, type metadata accessor for PrimaryElectionContentState);
  sub_219F65AF4(a1, type metadata accessor for PrimaryElectionStaticAttributes);
  if ((*(v38 + 48))(v12, 1, v40) == 1)
  {
    sub_219F6409C(v12, &qword_27CCD9610);
    sub_219F65AF4(v27, type metadata accessor for PrimaryElectionTheme);

    return (*(v39 + 56))(v41, 1, 1, v24);
  }

  else
  {
    v34 = v37;
    sub_219F65A8C(v12, v37, type metadata accessor for ActivityHeaderViewModel);
    sub_219F65A8C(v34, &v27[*(v24 + 24)], type metadata accessor for ActivityHeaderViewModel);
    v35 = v41;
    sub_219F65BB8(v27, v41, type metadata accessor for PrimaryElectionDynamicIsland);
    (*(v39 + 56))(v35, 0, 1, v24);
    return sub_219F65AF4(v27, type metadata accessor for PrimaryElectionDynamicIsland);
  }
}

uint64_t sub_219F646D8@<X0>(uint64_t a1@<X8>)
{
  v41[1] = a1;
  v2 = type metadata accessor for ActivityMinimalAppearanceTheme();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9628);
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = v41 - v13;
  v15 = type metadata accessor for ActivityMinimalView();
  v17 = MEMORY[0x28223BE20](v15, v16);
  v19 = v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v22 = v41 - v21;
  v23 = type metadata accessor for PrimaryElectionTheme();
  sub_219F65BB8(v1 + *(v23 + 48), v14, type metadata accessor for ActivityMinimalAppearanceTheme);
  (*(v3 + 56))(v14, 0, 1, v2);
  sub_219F65A1C(v14, v11);
  v24 = *(v3 + 48);
  if (v24(v11, 1, v2) == 1)
  {
    static ActivityMinimalAppearanceTheme.defaultValue.getter(v6);
    sub_219F6409C(v14, &qword_27CCD9628);
    if (v24(v11, 1, v2) != 1)
    {
      sub_219F6409C(v11, &qword_27CCD9628);
    }
  }

  else
  {
    sub_219F6409C(v14, &qword_27CCD9628);
    sub_219F65A8C(v11, v6, type metadata accessor for ActivityMinimalAppearanceTheme);
  }

  sub_219F65A8C(v6, v19, type metadata accessor for ActivityMinimalAppearanceTheme);
  sub_219F65A8C(v19, v22, type metadata accessor for ActivityMinimalView);
  v25 = (v1 + *(type metadata accessor for PrimaryElectionDynamicIsland() + 24));
  v26 = v25[3];
  v44 = v25[2];
  v45[0] = v26;
  v27 = v25[5];
  v45[1] = v25[4];
  v45[2] = v27;

  v28 = 0;
  v29 = MEMORY[0x277D84F90];
LABEL_6:
  v30 = &v45[2 * v28];
  while (++v28 != 3)
  {
    v31 = v30 + 2;
    v32 = *v30;
    v30 += 2;
    if (v32)
    {
      v33 = *(v31 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_219FA15AC(0, *(v29 + 2) + 1, 1, v29);
      }

      v35 = *(v29 + 2);
      v34 = *(v29 + 3);
      if (v35 >= v34 >> 1)
      {
        v29 = sub_219FA15AC((v34 > 1), v35 + 1, 1, v29);
      }

      *(v29 + 2) = v35 + 1;
      v36 = &v29[16 * v35];
      *(v36 + 4) = v33;
      *(v36 + 5) = v32;
      goto LABEL_6;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9648);
  swift_arrayDestroy();
  v42 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9650);
  sub_219F65B54();
  v37 = sub_21A0E618C();
  v39 = v38;

  v42 = v37;
  v43 = v39;
  sub_219F65D70(&qword_27CCD9640, type metadata accessor for ActivityMinimalView);
  sub_219F3F130();
  sub_21A0E5ACC();

  return sub_219F65AF4(v22, type metadata accessor for ActivityMinimalView);
}

uint64_t sub_219F64B94@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v2 = sub_21A0E573C();
  v50 = *(v2 - 8);
  v51 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v49 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ActivityMinimalAppearanceTheme();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9628);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v44 - v16;
  v47 = type metadata accessor for ActivityMinimalView();
  v19 = MEMORY[0x28223BE20](v47, v18);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v44 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9630);
  v45 = *(v25 - 8);
  v46 = v25;
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v44 - v27;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9638);
  MEMORY[0x28223BE20](v48, v29);
  v31 = &v44 - v30;
  v32 = v1 + *(type metadata accessor for PrimaryElectionTheme() + 52);
  v33 = v5;
  sub_219F65A1C(v32, v17);
  sub_219F65A1C(v17, v14);
  v34 = *(v6 + 48);
  if (v34(v14, 1, v33) == 1)
  {
    static ActivityMinimalAppearanceTheme.defaultValue.getter(v9);
    sub_219F6409C(v17, &qword_27CCD9628);
    if (v34(v14, 1, v33) != 1)
    {
      sub_219F6409C(v14, &qword_27CCD9628);
    }
  }

  else
  {
    sub_219F6409C(v17, &qword_27CCD9628);
    sub_219F65A8C(v14, v9, type metadata accessor for ActivityMinimalAppearanceTheme);
  }

  sub_219F65A8C(v9, v21, type metadata accessor for ActivityMinimalAppearanceTheme);
  sub_219F65A8C(v21, v24, type metadata accessor for ActivityMinimalView);
  v35 = v49;
  sub_21A0E571C();
  v36 = sub_219F65D70(&qword_27CCD9640, type metadata accessor for ActivityMinimalView);
  v37 = v47;
  sub_21A0E5AFC();
  (*(v50 + 8))(v35, v51);
  sub_219F65AF4(v24, type metadata accessor for ActivityMinimalView);
  v53 = v37;
  v54 = v36;
  swift_getOpaqueTypeConformance2();
  v38 = v46;
  sub_21A0E5AEC();
  (*(v45 + 8))(v28, v38);
  sub_21A0E562C();
  v39 = sub_21A0E59DC();
  v41 = v40;
  LOBYTE(v37) = v42;
  sub_21A0E538C();
  sub_219F63A30(v39, v41, v37 & 1);

  return sub_219F53974(v31);
}

uint64_t sub_219F65108@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v2 = sub_21A0E573C();
  v50 = *(v2 - 8);
  v51 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v49 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ActivityMinimalAppearanceTheme();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9628);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v44 - v16;
  v47 = type metadata accessor for ActivityMinimalView();
  v19 = MEMORY[0x28223BE20](v47, v18);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v44 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9630);
  v45 = *(v25 - 8);
  v46 = v25;
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v44 - v27;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9638);
  MEMORY[0x28223BE20](v48, v29);
  v31 = &v44 - v30;
  v32 = v1 + *(type metadata accessor for PrimaryElectionTheme() + 44);
  v33 = v5;
  sub_219F65A1C(v32, v17);
  sub_219F65A1C(v17, v14);
  v34 = *(v6 + 48);
  if (v34(v14, 1, v33) == 1)
  {
    static ActivityMinimalAppearanceTheme.defaultValue.getter(v9);
    sub_219F6409C(v17, &qword_27CCD9628);
    if (v34(v14, 1, v33) != 1)
    {
      sub_219F6409C(v14, &qword_27CCD9628);
    }
  }

  else
  {
    sub_219F6409C(v17, &qword_27CCD9628);
    sub_219F65A8C(v14, v9, type metadata accessor for ActivityMinimalAppearanceTheme);
  }

  sub_219F65A8C(v9, v21, type metadata accessor for ActivityMinimalAppearanceTheme);
  sub_219F65A8C(v21, v24, type metadata accessor for ActivityMinimalView);
  v35 = v49;
  sub_21A0E571C();
  v36 = sub_219F65D70(&qword_27CCD9640, type metadata accessor for ActivityMinimalView);
  v37 = v47;
  sub_21A0E5AFC();
  (*(v50 + 8))(v35, v51);
  sub_219F65AF4(v24, type metadata accessor for ActivityMinimalView);
  v53 = v37;
  v54 = v36;
  swift_getOpaqueTypeConformance2();
  v38 = v46;
  sub_21A0E5AEC();
  (*(v45 + 8))(v28, v38);
  sub_21A0E562C();
  v39 = sub_21A0E59DC();
  v41 = v40;
  LOBYTE(v37) = v42;
  sub_21A0E538C();
  sub_219F63A30(v39, v41, v37 & 1);

  return sub_219F53974(v31);
}

void *sub_219F6567C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for ActivityHeaderExpandedLeadingView(0);
  v6 = *(v5 + 20);
  sub_219F65BB8(v2 + *(a1 + 24), a2 + v6, type metadata accessor for ActivityHeaderViewModel);
  v7 = type metadata accessor for ActivityHeaderViewModel();
  (*(*(v7 - 8) + 56))(a2 + v6, 0, 1, v7);
  sub_219F65C20(v9);
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  return memcpy((a2 + *(v5 + 24)), v9, 0x320uLL);
}

__n128 sub_219F65768@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_219F65BB8(v2 + *(a1 + 24), a2, type metadata accessor for ActivityHeaderViewModel);
  v4 = type metadata accessor for ActivityHeaderViewModel();
  (*(*(v4 - 8) + 56))(a2, 0, 1, v4);
  sub_219F5EC1C(v11);
  v5 = a2 + *(type metadata accessor for ActivityHeaderExpandedTrailingView(0) + 20);
  v6 = v11[9];
  *(v5 + 128) = v11[8];
  *(v5 + 144) = v6;
  *(v5 + 160) = v11[10];
  v7 = v11[5];
  *(v5 + 64) = v11[4];
  *(v5 + 80) = v7;
  v8 = v11[7];
  *(v5 + 96) = v11[6];
  *(v5 + 112) = v8;
  v9 = v11[1];
  *v5 = v11[0];
  *(v5 + 16) = v9;
  result = v11[3];
  *(v5 + 32) = v11[2];
  *(v5 + 48) = result;
  return result;
}

__n128 sub_219F65858@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v2;
  *(a1 + 61) = *(v1 + 61);
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for PrimaryElectionDynamicIsland()
{
  result = qword_27CCD9618;
  if (!qword_27CCD9618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219F658E8()
{
  result = type metadata accessor for PrimaryElectionTheme();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ActivityHeaderViewModel();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_219F65A1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9628);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219F65A8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_219F65AF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_219F65B54()
{
  result = qword_27CCD9658;
  if (!qword_27CCD9658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCD9650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD9658);
  }

  return result;
}

uint64_t sub_219F65BB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_219F65C20(uint64_t a1)
{
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 184) = 1;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  bzero((a1 + 192), 0x260uLL);
}

unint64_t sub_219F65C54()
{
  result = qword_27CCD9660;
  if (!qword_27CCD9660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCD9638);
    type metadata accessor for ActivityMinimalView();
    sub_219F65D70(&qword_27CCD9640, type metadata accessor for ActivityMinimalView);
    swift_getOpaqueTypeConformance2();
    sub_219F65D70(&qword_27CCD9668, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD9660);
  }

  return result;
}

uint64_t sub_219F65D70(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_219F65DB8()
{
  result = qword_27CCD9680;
  if (!qword_27CCD9680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD9680);
  }

  return result;
}

unint64_t sub_219F65E0C()
{
  result = qword_27CCD9688;
  if (!qword_27CCD9688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCD9690);
    sub_219F65D70(&qword_27CCD9640, type metadata accessor for ActivityMinimalView);
    sub_219F65D70(&qword_27CCD9668, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD9688);
  }

  return result;
}

uint64_t type metadata accessor for NewsContentView()
{
  result = qword_280C88230;
  if (!qword_280C88230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219F65F6C()
{
  type metadata accessor for NewsLiveActivityAttributes(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for NewsLiveActivityContentState(319);
    if (v1 <= 0x3F)
    {
      sub_219F66008();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_219F66008()
{
  if (!qword_27CCD9698)
  {
    v0 = sub_21A0E525C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CCD9698);
    }
  }
}

uint64_t sub_219F66074()
{
  v1 = sub_21A0E537C();
  v42 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21A0E554C();
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v38 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD96A0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD96A8);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v37 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD96B0);
  v40 = *(v17 - 8);
  v41 = v17;
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v37 - v19;
  sub_219F664D0(v12);
  KeyPath = swift_getKeyPath();
  v23 = *v0;
  v22 = v0[1];
  v24 = &v12[*(v9 + 44)];
  *v24 = KeyPath;
  v24[1] = v23;
  v24[2] = v22;

  v25 = v0 + *(type metadata accessor for NewsContentView() + 24);
  v26 = *v25;
  if (v25[8] != 1)
  {

    sub_21A0E66AC();
    v27 = sub_21A0E575C();
    v37 = v5;
    v28 = v27;
    sub_21A0E512C();

    v29 = v38;
    sub_21A0E553C();
    swift_getAtKeyPath();
    sub_219F68370(v26, 0);
    (*(v39 + 8))(v29, v37);
    LOBYTE(v26) = v43;
  }

  if (v26)
  {
    v30 = 5;
  }

  else
  {
    v30 = 4;
  }

  v31 = swift_getKeyPath();
  sub_219F6837C(v12, v16);
  v32 = &v16[*(v13 + 36)];
  *v32 = v31;
  v32[8] = v30;
  v33 = v42;
  (*(v42 + 104))(v4, *MEMORY[0x277CDF9D8], v1);
  v34 = sub_219F683EC();
  sub_21A0E5AAC();
  (*(v33 + 8))(v4, v1);
  sub_219F6409C(v16, &qword_27CCD96A8);
  v43 = v13;
  v44 = v34;
  swift_getOpaqueTypeConformance2();
  v35 = v41;
  sub_21A0E5A7C();
  return (*(v40 + 8))(v20, v35);
}

uint64_t sub_219F664D0@<X0>(uint64_t a1@<X8>)
{
  v193 = a1;
  v195 = type metadata accessor for NewsLiveActivityContentState.Payload(0);
  MEMORY[0x28223BE20](v195, v2);
  v183 = &v147 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = type metadata accessor for NewsLiveActivityAttributes.ActivityType(0);
  MEMORY[0x28223BE20](v194, v4);
  v182 = &v147 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = type metadata accessor for LiveBlogContentView();
  MEMORY[0x28223BE20](v178, v6);
  v166 = &v147 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LiveBlogContentState();
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v162 = &v147 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v171 = &v147 - v13;
  v14 = type metadata accessor for LiveBlogStaticAttributes();
  v16 = MEMORY[0x28223BE20](v14 - 8, v15);
  v161 = &v147 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v170 = &v147 - v19;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9790);
  MEMORY[0x28223BE20](v175, v20);
  v176 = &v147 - v21;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9738);
  MEMORY[0x28223BE20](v189, v22);
  v177 = &v147 - v23;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9798);
  MEMORY[0x28223BE20](v163, v24);
  v165 = (&v147 - v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97A0);
  MEMORY[0x28223BE20](v26 - 8, v27);
  v160 = &v147 - v28;
  v164 = type metadata accessor for PrimaryElectionContentView();
  v159 = *(v164 - 8);
  MEMORY[0x28223BE20](v164, v29);
  v149 = &v147 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9748);
  MEMORY[0x28223BE20](v174, v31);
  v167 = &v147 - v32;
  v33 = type metadata accessor for PrimaryElectionContentState();
  v35 = MEMORY[0x28223BE20](v33 - 8, v34);
  v158 = &v147 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35, v37);
  v173 = &v147 - v38;
  v39 = type metadata accessor for PrimaryElectionStaticAttributes();
  v41 = MEMORY[0x28223BE20](v39 - 8, v40);
  v157 = &v147 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41, v43);
  v172 = &v147 - v44;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97A8);
  MEMORY[0x28223BE20](v153, v45);
  v155 = (&v147 - v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97B0);
  MEMORY[0x28223BE20](v47 - 8, v48);
  v152 = &v147 - v49;
  v154 = type metadata accessor for NationalElectionContentView();
  v151 = *(v154 - 8);
  MEMORY[0x28223BE20](v154, v50);
  v148 = &v147 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9710);
  MEMORY[0x28223BE20](v181, v52);
  v156 = &v147 - v53;
  v54 = type metadata accessor for NationalElectionContentState(0);
  v56 = MEMORY[0x28223BE20](v54 - 8, v55);
  v150 = &v147 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v56, v58);
  v169 = &v147 - v59;
  v60 = type metadata accessor for NationalElectionStaticAttributes();
  v62 = MEMORY[0x28223BE20](v60 - 8, v61);
  v64 = &v147 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v62, v65);
  v168 = &v147 - v66;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97B8);
  MEMORY[0x28223BE20](v190, v67);
  v192 = (&v147 - v68);
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97C0);
  MEMORY[0x28223BE20](v185, v69);
  v187 = &v147 - v70;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97C8);
  MEMORY[0x28223BE20](v179, v71);
  v73 = (&v147 - v72);
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD96F0);
  MEMORY[0x28223BE20](v186, v74);
  v180 = &v147 - v75;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD96E0);
  MEMORY[0x28223BE20](v191, v76);
  v188 = &v147 - v77;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97D0);
  v79 = v78 - 8;
  MEMORY[0x28223BE20](v78, v80);
  v82 = &v147 - v81;
  v83 = *(type metadata accessor for NewsLiveActivityAttributes(0) + 28);
  v84 = (v1 + *(type metadata accessor for NewsContentView() + 20));
  v85 = *(type metadata accessor for NewsLiveActivityContentState(0) + 20);
  v86 = &v82[*(v79 + 56)];
  v87 = v1;
  sub_219F68A94(v1 + v83, v82, type metadata accessor for NewsLiveActivityAttributes.ActivityType);
  v184 = v84;
  sub_219F68A94(v84 + v85, v86, type metadata accessor for NewsLiveActivityContentState.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v98 = swift_getEnumCaseMultiPayload();
      v99 = type metadata accessor for PrimaryElectionContentState;
      if (v98 == 1)
      {
        v100 = v172;
        sub_219F68A2C(v82, v172, type metadata accessor for PrimaryElectionStaticAttributes);
        v101 = v173;
        sub_219F68A2C(v86, v173, type metadata accessor for PrimaryElectionContentState);
        v102 = v157;
        sub_219F68A94(v100, v157, type metadata accessor for PrimaryElectionStaticAttributes);
        v103 = v158;
        sub_219F68A94(v101, v158, type metadata accessor for PrimaryElectionContentState);
        v104 = v160;
        sub_21A006234(v102, v103, v160);
        if ((*(v159 + 48))(v104, 1, v164) == 1)
        {
          sub_219F6409C(v104, &qword_27CCD97A0);
          *&v200 = 0;
          *(&v200 + 1) = 0xE000000000000000;
          sub_21A0E686C();

          *&v200 = 91;
          *(&v200 + 1) = 0xE100000000000000;
          MEMORY[0x21CED1980](*v184, v184[1]);
          MEMORY[0x21CED1980](0xD00000000000002DLL, 0x800000021A109930);
          v106 = *(&v200 + 1);
          v105 = v200;
          v107 = sub_21A0E5B4C();
          v108 = v165;
          *v165 = v105;
          v108[1] = v106;
          v108[2] = v107;
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9728);
          sub_219F689E4(&qword_27CCD9750, type metadata accessor for PrimaryElectionContentView);
          sub_219F3E490(&qword_27CCD9720, &qword_27CCD9728);
          v109 = v167;
          sub_21A0E56BC();
        }

        else
        {
          v141 = v149;
          sub_219F68A2C(v104, v149, type metadata accessor for PrimaryElectionContentView);
          sub_219F68A94(v141, v165, type metadata accessor for PrimaryElectionContentView);
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9728);
          sub_219F689E4(&qword_27CCD9750, type metadata accessor for PrimaryElectionContentView);
          sub_219F3E490(&qword_27CCD9720, &qword_27CCD9728);
          v109 = v167;
          sub_21A0E56BC();
          sub_219F68AFC(v141, type metadata accessor for PrimaryElectionContentView);
        }

        sub_219F45500(v109, v176, &qword_27CCD9748);
        swift_storeEnumTagMultiPayload();
        sub_219F688FC();
        sub_219F689E4(&qword_27CCD9758, type metadata accessor for LiveBlogContentView);
        v142 = v177;
        sub_21A0E56BC();
        sub_219F45500(v142, v187, &qword_27CCD9738);
        swift_storeEnumTagMultiPayload();
        sub_219F686A0();
        sub_219F68840();
        v143 = v188;
        sub_21A0E56BC();
        sub_219F6409C(v142, &qword_27CCD9738);
        sub_219F45500(v143, v192, &qword_27CCD96E0);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9768);
        sub_219F68614();
        sub_219F3E490(&qword_27CCD9760, &qword_27CCD9768);
        sub_21A0E56BC();
        sub_219F6409C(v143, &qword_27CCD96E0);
        sub_219F6409C(v109, &qword_27CCD9748);
        sub_219F68AFC(v173, type metadata accessor for PrimaryElectionContentState);
        v96 = type metadata accessor for PrimaryElectionStaticAttributes;
        v97 = v172;
        return sub_219F68AFC(v97, v96);
      }
    }

    else
    {
      v121 = swift_getEnumCaseMultiPayload();
      v99 = type metadata accessor for LiveBlogContentState;
      if (v121 == 2)
      {
        v122 = v170;
        sub_219F68A2C(v82, v170, type metadata accessor for LiveBlogStaticAttributes);
        v123 = v171;
        sub_219F68A2C(v86, v171, type metadata accessor for LiveBlogContentState);
        v124 = v161;
        sub_219F68A94(v122, v161, type metadata accessor for LiveBlogStaticAttributes);
        v125 = v162;
        sub_219F68A94(v123, v162, type metadata accessor for LiveBlogContentState);
        v126 = v166;
        sub_21A07BABC(v124, v125);
        sub_219F68A94(v126, v176, type metadata accessor for LiveBlogContentView);
        swift_storeEnumTagMultiPayload();
        sub_219F688FC();
        sub_219F689E4(&qword_27CCD9758, type metadata accessor for LiveBlogContentView);
        v127 = v177;
        sub_21A0E56BC();
        sub_219F45500(v127, v187, &qword_27CCD9738);
        swift_storeEnumTagMultiPayload();
        sub_219F686A0();
        sub_219F68840();
        v128 = v188;
        sub_21A0E56BC();
        sub_219F6409C(v127, &qword_27CCD9738);
        sub_219F45500(v128, v192, &qword_27CCD96E0);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9768);
        sub_219F68614();
        sub_219F3E490(&qword_27CCD9760, &qword_27CCD9768);
        sub_21A0E56BC();
        sub_219F6409C(v128, &qword_27CCD96E0);
        sub_219F68AFC(v126, type metadata accessor for LiveBlogContentView);
        sub_219F68AFC(v171, type metadata accessor for LiveBlogContentState);
        v96 = type metadata accessor for LiveBlogStaticAttributes;
        v97 = v170;
        return sub_219F68AFC(v97, v96);
      }
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v89 = *v86;
      v90 = v86[1];
      v91 = sub_21A0E566C();
      v197 = 1;
      sub_219F6818C(v87, v89, v90, v198);

      *(v196 + 7) = v198[0];
      *(&v196[1] + 7) = v198[1];
      *(&v196[2] + 7) = v198[2];
      *(&v196[3] + 7) = v198[3];
      BYTE7(v196[4]) = v199;
      v200 = v91;
      v201[0] = v197;
      *&v201[1] = v196[0];
      *&v201[65] = *&v196[4];
      *&v201[49] = v196[3];
      *&v201[33] = v196[2];
      *&v201[17] = v196[1];
      v92 = *v201;
      *v73 = v91;
      v73[1] = v92;
      v93 = *&v201[32];
      v73[2] = *&v201[16];
      v73[3] = v93;
      v73[4] = *&v201[48];
      *(v73 + 73) = *&v201[57];
      swift_storeEnumTagMultiPayload();
      sub_219F45500(&v200, v196, &qword_27CCD9700);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9700);
      sub_219F3E490(&qword_27CCD96F8, &qword_27CCD9700);
      sub_219F68758();
      v94 = v180;
      sub_21A0E56BC();
      sub_219F45500(v94, v187, &qword_27CCD96F0);
      swift_storeEnumTagMultiPayload();
      sub_219F686A0();
      sub_219F68840();
      v95 = v188;
      sub_21A0E56BC();
      sub_219F6409C(v94, &qword_27CCD96F0);
      sub_219F45500(v95, v192, &qword_27CCD96E0);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9768);
      sub_219F68614();
      sub_219F3E490(&qword_27CCD9760, &qword_27CCD9768);
      sub_21A0E56BC();
      sub_219F6409C(&v200, &qword_27CCD9700);
      sub_219F6409C(v95, &qword_27CCD96E0);
      v96 = type metadata accessor for NewsLiveActivityAttributes.ActivityType;
      v97 = v82;
      return sub_219F68AFC(v97, v96);
    }

    v110 = swift_getEnumCaseMultiPayload();
    v99 = type metadata accessor for NationalElectionContentState;
    if (!v110)
    {
      v111 = v168;
      sub_219F68A2C(v82, v168, type metadata accessor for NationalElectionStaticAttributes);
      v112 = v169;
      sub_219F68A2C(v86, v169, type metadata accessor for NationalElectionContentState);
      sub_219F68A94(v111, v64, type metadata accessor for NationalElectionStaticAttributes);
      v113 = v112;
      v114 = v150;
      sub_219F68A94(v113, v150, type metadata accessor for NationalElectionContentState);
      v115 = v152;
      sub_21A082284(v64, v114, v152);
      if ((*(v151 + 48))(v115, 1, v154) == 1)
      {
        sub_219F6409C(v115, &qword_27CCD97B0);
        *&v200 = 0;
        *(&v200 + 1) = 0xE000000000000000;
        sub_21A0E686C();

        *&v200 = 91;
        *(&v200 + 1) = 0xE100000000000000;
        MEMORY[0x21CED1980](*v184, v184[1]);
        MEMORY[0x21CED1980](0xD00000000000002ELL, 0x800000021A109960);
        v117 = *(&v200 + 1);
        v116 = v200;
        v118 = sub_21A0E5B4C();
        v119 = v155;
        *v155 = v116;
        v119[1] = v117;
        v119[2] = v118;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9728);
        sub_219F689E4(&qword_27CCD9718, type metadata accessor for NationalElectionContentView);
        sub_219F3E490(&qword_27CCD9720, &qword_27CCD9728);
        v120 = v156;
        sub_21A0E56BC();
      }

      else
      {
        v144 = v148;
        sub_219F68A2C(v115, v148, type metadata accessor for NationalElectionContentView);
        sub_219F68A94(v144, v155, type metadata accessor for NationalElectionContentView);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9728);
        sub_219F689E4(&qword_27CCD9718, type metadata accessor for NationalElectionContentView);
        sub_219F3E490(&qword_27CCD9720, &qword_27CCD9728);
        v120 = v156;
        sub_21A0E56BC();
        sub_219F68AFC(v144, type metadata accessor for NationalElectionContentView);
      }

      sub_219F45500(v120, v73, &qword_27CCD9710);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9700);
      sub_219F3E490(&qword_27CCD96F8, &qword_27CCD9700);
      sub_219F68758();
      v145 = v180;
      sub_21A0E56BC();
      sub_219F45500(v145, v187, &qword_27CCD96F0);
      swift_storeEnumTagMultiPayload();
      sub_219F686A0();
      sub_219F68840();
      v146 = v188;
      sub_21A0E56BC();
      sub_219F6409C(v145, &qword_27CCD96F0);
      sub_219F45500(v146, v192, &qword_27CCD96E0);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9768);
      sub_219F68614();
      sub_219F3E490(&qword_27CCD9760, &qword_27CCD9768);
      sub_21A0E56BC();
      sub_219F6409C(v146, &qword_27CCD96E0);
      sub_219F6409C(v120, &qword_27CCD9710);
      sub_219F68AFC(v169, type metadata accessor for NationalElectionContentState);
      v96 = type metadata accessor for NationalElectionStaticAttributes;
      v97 = v168;
      return sub_219F68AFC(v97, v96);
    }
  }

  v129 = 0xEF6E6F697463656CLL;
  v130 = 0xD000000000000010;
  sub_219F68AFC(v86, v99);
  sub_219F68AFC(v82, type metadata accessor for NewsLiveActivityAttributes.ActivityType);
  *&v200 = 0;
  *(&v200 + 1) = 0xE000000000000000;
  sub_21A0E686C();

  *&v200 = 91;
  *(&v200 + 1) = 0xE100000000000000;
  v131 = v184;
  MEMORY[0x21CED1980](*v184, v184[1]);
  MEMORY[0x21CED1980](0xD000000000000010, 0x800000021A109910);
  v132 = v182;
  sub_219F68A94(v87 + v83, v182, type metadata accessor for NewsLiveActivityAttributes.ActivityType);
  v133 = swift_getEnumCaseMultiPayload();
  if (v133)
  {
    v134 = 0x457972616D697270;
    v135 = 0xEF6E6F697463656CLL;
    if (v133 != 1)
    {
      v135 = 0xE800000000000000;
      v134 = 0x676F6C426576696CLL;
    }
  }

  else
  {
    v135 = 0x800000021A109640;
    v134 = 0xD000000000000010;
  }

  sub_219F68AFC(v132, type metadata accessor for NewsLiveActivityAttributes.ActivityType);
  MEMORY[0x21CED1980](v134, v135);

  MEMORY[0x21CED1980](0x6C796170203D2120, 0xED0000282064616FLL);
  v136 = v183;
  sub_219F68A94(v131 + v85, v183, type metadata accessor for NewsLiveActivityContentState.Payload);
  v137 = swift_getEnumCaseMultiPayload();
  if (v137 > 1)
  {
    if (v137 == 2)
    {
      v130 = 0x457972616D697270;
    }

    else
    {
      v129 = 0xE800000000000000;
      v130 = 0x676F6C426576696CLL;
    }
  }

  else if (v137)
  {
    v129 = 0x800000021A109640;
  }

  else
  {
    v129 = 0xE400000000000000;
    v130 = 1953719668;
  }

  sub_219F68AFC(v136, type metadata accessor for NewsLiveActivityContentState.Payload);
  MEMORY[0x21CED1980](v130, v129);

  MEMORY[0x21CED1980](41, 0xE100000000000000);
  v138 = *(&v200 + 1);
  v139 = v192;
  *v192 = v200;
  v139[1] = v138;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9768);
  sub_219F68614();
  sub_219F3E490(&qword_27CCD9760, &qword_27CCD9768);
  return sub_21A0E56BC();
}

uint64_t sub_219F6818C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v15 = *a1;
  sub_219F3F130();

  v7 = sub_21A0E59EC();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  if (a3)
  {
    *&v15 = a2;
    *(&v15 + 1) = a3;

    sub_21A0E59EC();
  }

  else
  {
    sub_21A0E562C();
    sub_21A0E59DC();
  }

  sub_21A0E56BC();
  *a4 = v7;
  *(a4 + 8) = v9;
  *(a4 + 16) = v11 & 1;
  *(a4 + 24) = v13;
  *(a4 + 32) = v15;
  *(a4 + 48) = v16;
  *(a4 + 64) = v17;
  sub_219F63A40(v7, v9, v11 & 1);

  sub_219F68B5C(v15, *(&v15 + 1), v16);
  sub_219F68B98(v15, *(&v15 + 1), v16);
  sub_219F63A30(v7, v9, v11 & 1);
}

uint64_t sub_219F68370(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_219F6837C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD96A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_219F683EC()
{
  result = qword_27CCD96B8;
  if (!qword_27CCD96B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCD96A8);
    sub_219F684A4();
    sub_219F3E490(&qword_27CCD9780, &qword_27CCD9788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD96B8);
  }

  return result;
}

unint64_t sub_219F684A4()
{
  result = qword_27CCD96C0;
  if (!qword_27CCD96C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCD96A0);
    sub_219F6855C();
    sub_219F3E490(&qword_27CCD9770, &qword_27CCD9778);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD96C0);
  }

  return result;
}

unint64_t sub_219F6855C()
{
  result = qword_27CCD96C8;
  if (!qword_27CCD96C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCD96D0);
    sub_219F68614();
    sub_219F3E490(&qword_27CCD9760, &qword_27CCD9768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD96C8);
  }

  return result;
}

unint64_t sub_219F68614()
{
  result = qword_27CCD96D8;
  if (!qword_27CCD96D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCD96E0);
    sub_219F686A0();
    sub_219F68840();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD96D8);
  }

  return result;
}

unint64_t sub_219F686A0()
{
  result = qword_27CCD96E8;
  if (!qword_27CCD96E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCD96F0);
    sub_219F3E490(&qword_27CCD96F8, &qword_27CCD9700);
    sub_219F68758();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD96E8);
  }

  return result;
}

unint64_t sub_219F68758()
{
  result = qword_27CCD9708;
  if (!qword_27CCD9708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCD9710);
    sub_219F689E4(&qword_27CCD9718, type metadata accessor for NationalElectionContentView);
    sub_219F3E490(&qword_27CCD9720, &qword_27CCD9728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD9708);
  }

  return result;
}

unint64_t sub_219F68840()
{
  result = qword_27CCD9730;
  if (!qword_27CCD9730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCD9738);
    sub_219F688FC();
    sub_219F689E4(&qword_27CCD9758, type metadata accessor for LiveBlogContentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD9730);
  }

  return result;
}

unint64_t sub_219F688FC()
{
  result = qword_27CCD9740;
  if (!qword_27CCD9740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCD9748);
    sub_219F689E4(&qword_27CCD9750, type metadata accessor for PrimaryElectionContentView);
    sub_219F3E490(&qword_27CCD9720, &qword_27CCD9728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD9740);
  }

  return result;
}

uint64_t sub_219F689E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_219F68A2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_219F68A94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219F68AFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219F68B5C(uint64_t a1, uint64_t a2, char a3)
{
  sub_219F63A40(a1, a2, a3 & 1);
}

uint64_t sub_219F68B98(uint64_t a1, uint64_t a2, char a3)
{
  sub_219F63A30(a1, a2, a3 & 1);
}

uint64_t sub_219F68C9C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_21A0E516C();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_219F68E2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t PrimaryElectionData.candidates.getter()
{
  type metadata accessor for PrimaryElectionData();
}

uint64_t PrimaryElectionData.candidates.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PrimaryElectionData() + 20);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_219F68F78(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7365697469746E65;
  }

  else
  {
    v3 = 0xD000000000000010;
  }

  if (v2)
  {
    v4 = 0x800000021A109390;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x7365697469746E65;
  }

  else
  {
    v5 = 0xD000000000000010;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0x800000021A109390;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21A0E6C5C();
  }

  return v8 & 1;
}

uint64_t sub_219F69024()
{
  sub_21A0E6DAC();
  sub_21A0E626C();

  return sub_21A0E6DFC();
}

uint64_t sub_219F690AC()
{
  sub_21A0E626C();
}

uint64_t sub_219F69120()
{
  sub_21A0E6DAC();
  sub_21A0E626C();

  return sub_21A0E6DFC();
}

uint64_t sub_219F691A4@<X0>(char *a1@<X8>)
{
  v2 = sub_21A0E6A0C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_219F69204(unint64_t *a1@<X8>)
{
  v2 = 0x800000021A109390;
  v3 = 0xD000000000000010;
  if (*v1)
  {
    v3 = 0x7365697469746E65;
    v2 = 0xE800000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_219F69248()
{
  if (*v0)
  {
    return 0x7365697469746E65;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_219F69288@<X0>(char *a1@<X8>)
{
  v2 = sub_21A0E6A0C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_219F692F8(uint64_t a1)
{
  v2 = sub_219F724B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219F69334(uint64_t a1)
{
  v2 = sub_219F724B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PrimaryElectionData.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219F724B4();
  sub_21A0E6EAC();
  v13 = 0;
  sub_21A0E495C();
  sub_219F44FD0(&qword_27CCD9808, MEMORY[0x277CC9578]);
  sub_21A0E6B6C();
  if (!v2)
  {
    v12 = *(v3 + *(type metadata accessor for PrimaryElectionData() + 20));
    v11[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9810);
    sub_219F7255C(&qword_27CCD9818, sub_219F72508);
    sub_21A0E6BBC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t PrimaryElectionData.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21A0E495C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v15 - v11;
  sub_219F45500(v2, &v15 - v11, &qword_27CCD97F0);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_21A0E6DCC();
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    sub_21A0E6DCC();
    sub_219F44FD0(&qword_27CCD9828, MEMORY[0x277CC9578]);
    sub_21A0E615C();
    (*(v5 + 8))(v8, v4);
  }

  v13 = type metadata accessor for PrimaryElectionData();
  return sub_219F6AE3C(a1, *(v2 + *(v13 + 20)));
}

uint64_t PrimaryElectionData.hashValue.getter()
{
  v1 = v0;
  v2 = sub_21A0E495C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v14[-v9 - 8];
  sub_21A0E6DAC();
  sub_219F45500(v1, v10, &qword_27CCD97F0);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_21A0E6DCC();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_21A0E6DCC();
    sub_219F44FD0(&qword_27CCD9828, MEMORY[0x277CC9578]);
    sub_21A0E615C();
    (*(v3 + 8))(v6, v2);
  }

  v11 = type metadata accessor for PrimaryElectionData();
  sub_219F6AE3C(v14, *(v1 + *(v11 + 20)));
  return sub_21A0E6DFC();
}

uint64_t PrimaryElectionData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v23 = &v19 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9830);
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for PrimaryElectionData();
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21A0E495C();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219F724B4();
  sub_21A0E6E7C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_219F6409C(v14, &qword_27CCD97F0);
  }

  else
  {
    v16 = v21;
    v26 = 0;
    sub_219F44FD0(&qword_27CCD9838, MEMORY[0x277CC9578]);
    v17 = v22;
    sub_21A0E6A8C();
    sub_219F68E2C(v23, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9810);
    v25 = 1;
    sub_219F7255C(&qword_27CCD9840, sub_219F725D4);
    sub_21A0E6ADC();
    (*(v16 + 8))(v10, v17);
    *&v14[*(v11 + 20)] = v24;
    sub_219F7302C(v14, v20, type metadata accessor for PrimaryElectionData);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_219F731B8(v14, type metadata accessor for PrimaryElectionData);
  }
}

uint64_t sub_219F69D1C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v6 = sub_21A0E495C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v16 - v13;
  sub_219F45500(v4, &v16 - v13, &qword_27CCD97F0);
  if ((*(v7 + 48))(v14, 1, v6) == 1)
  {
    sub_21A0E6DCC();
  }

  else
  {
    (*(v7 + 32))(v10, v14, v6);
    sub_21A0E6DCC();
    sub_219F44FD0(&qword_27CCD9828, MEMORY[0x277CC9578]);
    sub_21A0E615C();
    (*(v7 + 8))(v10, v6);
  }

  return sub_219F6AE3C(a1, *(v4 + *(a2 + 20)));
}

uint64_t sub_219F69F1C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_21A0E495C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v16[-v12 - 8];
  sub_21A0E6DAC();
  sub_219F45500(v4, v13, &qword_27CCD97F0);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    sub_21A0E6DCC();
  }

  else
  {
    (*(v6 + 32))(v9, v13, v5);
    sub_21A0E6DCC();
    sub_219F44FD0(&qword_27CCD9828, MEMORY[0x277CC9578]);
    sub_21A0E615C();
    (*(v6 + 8))(v9, v5);
  }

  sub_219F6AE3C(v16, *(v4 + *(a2 + 20)));
  return sub_21A0E6DFC();
}

uint64_t PrimaryElectionData.Candidate.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PrimaryElectionData.Candidate.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_219F6A28C()
{
  v1 = *v0;
  sub_21A0E6DAC();
  MEMORY[0x21CED2490](v1);
  return sub_21A0E6DFC();
}

uint64_t sub_219F6A2D4()
{
  v1 = *v0;
  sub_21A0E6DAC();
  MEMORY[0x21CED2490](v1);
  return sub_21A0E6DFC();
}

uint64_t sub_219F6A318()
{
  v1 = 25705;
  v2 = 0x6372655065746F76;
  if (*v0 != 2)
  {
    v2 = 0x746C75736572;
  }

  if (*v0)
  {
    v1 = 0x6E756F4365746F76;
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

uint64_t sub_219F6A394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_219F72D64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_219F6A3BC(uint64_t a1)
{
  v2 = sub_219F72628();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219F6A3F8(uint64_t a1)
{
  v2 = sub_219F72628();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PrimaryElectionData.Candidate.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9850);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v11 - v6;
  v12 = *(v1 + 16);
  HIDWORD(v11) = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219F72628();
  sub_21A0E6EAC();
  v18 = 0;
  v8 = v13;
  sub_21A0E6B7C();
  if (!v8)
  {
    v9 = BYTE4(v11);
    v17 = 1;
    sub_21A0E6BAC();
    v16 = 2;
    sub_21A0E6B9C();
    v15 = v9;
    v14 = 3;
    sub_219F7267C();
    sub_21A0E6B6C();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t PrimaryElectionData.Candidate.hash(into:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_21A0E626C();
  MEMORY[0x21CED2490](v1);
  v4 = 0.0;
  if (v2 != 0.0)
  {
    v4 = v2;
  }

  MEMORY[0x21CED24C0](*&v4);
  if (v3 == 4)
  {
    return sub_21A0E6DCC();
  }

  sub_21A0E6DCC();
  sub_21A0E626C();
}

uint64_t PrimaryElectionData.Candidate.hashValue.getter()
{
  sub_21A0E6DAC();
  PrimaryElectionData.Candidate.hash(into:)();
  return sub_21A0E6DFC();
}

uint64_t PrimaryElectionData.Candidate.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9868);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v18 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219F72628();
  sub_21A0E6E7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = 0;
  v10 = sub_21A0E6A9C();
  v12 = v11;
  v13 = v10;
  v22 = 1;
  v18 = sub_21A0E6ACC();
  v21 = 2;
  sub_21A0E6ABC();
  v15 = v14;
  v19 = 3;
  sub_219F726D0();
  sub_21A0E6A8C();
  (*(v6 + 8))(v9, v5);
  v17 = v20;
  *a2 = v13;
  *(a2 + 8) = v12;
  *(a2 + 16) = v18;
  *(a2 + 24) = v15;
  *(a2 + 32) = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_219F6AA40@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_219F6AA4C()
{
  sub_21A0E6DAC();
  PrimaryElectionData.Candidate.hash(into:)();
  return sub_21A0E6DFC();
}

uint64_t sub_219F6AAB4()
{
  sub_21A0E6DAC();
  PrimaryElectionData.Candidate.hash(into:)();
  return sub_21A0E6DFC();
}

uint64_t sub_219F6AB84(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x21CED2490](v3);
  if (v3)
  {
    v5 = (a2 + 65);
    do
    {
      v6 = *(v5 - 17);
      v7 = *(v5 - 9);
      v8 = *(v5 - 1);
      v9 = *v5;

      sub_21A0E626C();
      MEMORY[0x21CED2490](v6);
      if (v8 == 1)
      {
        sub_21A0E6DCC();
        if (v9 != 4)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_21A0E6DCC();
        MEMORY[0x21CED2490](v7);
        if (v9 != 4)
        {
LABEL_9:
          sub_21A0E6DCC();
          sub_21A0E626C();

          goto LABEL_4;
        }
      }

      sub_21A0E6DCC();
LABEL_4:

      v5 += 40;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_219F6ACFC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x21CED2490](v3);
  if (v3)
  {
    v5 = (a2 + 56);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;

      sub_21A0E626C();
      MEMORY[0x21CED2490](v6);
      sub_21A0E6DCC();
      if (v7 != 4)
      {
        sub_21A0E626C();
      }

      v5 += 32;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_219F6AE3C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x21CED2490](v3);
  if (v3)
  {
    v5 = (a2 + 64);
    do
    {
      v6 = *(v5 - 2);
      v7 = *(v5 - 1);
      v8 = *v5;

      sub_21A0E626C();
      MEMORY[0x21CED2490](v6);
      if (v7 == 0.0)
      {
        v9 = 0.0;
      }

      else
      {
        v9 = v7;
      }

      MEMORY[0x21CED24C0](*&v9);
      sub_21A0E6DCC();
      if (v8 != 4)
      {
        sub_21A0E626C();
      }

      v5 += 40;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_219F6AF9C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x21CED2490](v4);
  if (v4)
  {
    v6 = a2 + 32;
    do
    {
      v7 = *(v6 + 144);
      v8 = *(v6 + 176);
      v44 = *(v6 + 160);
      v45 = v8;
      v9 = *(v6 + 80);
      v10 = *(v6 + 112);
      v40 = *(v6 + 96);
      v41 = v10;
      v11 = *(v6 + 112);
      v12 = *(v6 + 144);
      v42 = *(v6 + 128);
      v43 = v12;
      v13 = *(v6 + 16);
      v14 = *(v6 + 48);
      v36 = *(v6 + 32);
      v37 = v14;
      v15 = *(v6 + 48);
      v16 = *(v6 + 80);
      v38 = *(v6 + 64);
      v39 = v16;
      v17 = *(v6 + 16);
      v35[0] = *v6;
      v35[1] = v17;
      v18 = *(v6 + 176);
      v32 = v44;
      v33 = v18;
      v28 = v40;
      v29 = v11;
      v30 = v42;
      v31 = v7;
      v24 = v36;
      v25 = v15;
      v26 = v38;
      v27 = v9;
      v46 = *(v6 + 192);
      v19 = v46;
      v20 = *(&v45 + 1);
      v34 = *(v6 + 192);
      v22 = v35[0];
      v23 = v13;
      sub_219F45500(v35, v21, &qword_27CCD98F0);
      ActivityTextTheme.hash(into:)(a1);
      sub_219F91544(a1, v20);
      sub_219F6AF9C(a1, v19);
      result = sub_219F6409C(v35, &qword_27CCD98F0);
      v6 += 200;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_219F6B0E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98C8);
  v173 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v195 = &v171[-v6];
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0);
  v201 = *(v194 - 8);
  MEMORY[0x28223BE20](v194, v7);
  v193 = &v171[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D8);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v171[-v11];
  v13 = type metadata accessor for ElectionEntityTheme();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v171[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = *(a2 + 16);
  v202 = a1;
  result = MEMORY[0x21CED2490](v18);
  v192 = v18;
  if (v18)
  {
    v20 = *(v13 + 32);
    v191 = *(v13 + 28);
    v197 = &v17[v20];
    v198 = v12;
    v190 = a2 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v21 = *(v14 + 72);
    v22 = 0;
    v188 = (v201 + 48);
    v189 = v21;
    v187 = v4;
    v196 = v17;
    do
    {
      v23 = v202;
      v201 = v22;
      sub_219F7302C(v190 + v189 * v22, v17, type metadata accessor for ElectionEntityTheme);
      sub_21A0E626C();
      if (*(v17 + 3))
      {
        sub_21A0E6DCC();
        sub_21A0E626C();
      }

      else
      {
        sub_21A0E6DCC();
      }

      v24 = v195;
      sub_21A0E626C();
      sub_219F45500(&v17[v191], v12, &qword_27CCD98D8);
      if ((*v188)(v12, 1, v194) == 1)
      {
        v25 = v12;
        v26 = v17;
        sub_21A0E6DCC();
      }

      else
      {
        v27 = v193;
        sub_219F73094(v12, v193);
        sub_21A0E6DCC();
        ActivityAsset.hash(into:)(v23);
        sub_219F91544(v23, *&v27[*(v4 + 28)]);
        v28 = *&v27[*(v4 + 32)];
        MEMORY[0x21CED2490](*(v28 + 16));
        v29 = *(v28 + 16);
        if (v29)
        {
          v30 = v28 + ((*(v173 + 80) + 32) & ~*(v173 + 80));
          v31 = *(v173 + 72);
          do
          {
            sub_219F45500(v30, v24, &qword_27CCD98C8);
            v32 = sub_219F73104();
            sub_219FC5A20(v23, v4, v32);
            sub_219F6409C(v24, &qword_27CCD98C8);
            v30 += v31;
            --v29;
          }

          while (v29);
        }

        sub_219F6409C(v193, &qword_27CCD98D0);
        v25 = v198;
        v26 = v196;
      }

      v33 = v201;
      v35 = *v197;
      v34 = *(v197 + 1);
      v36 = v197[16];
      v37 = *(v197 + 3);
      v38 = *(v197 + 4);
      v39 = v197[40];
      v40 = *(v197 + 6);
      v41 = v197[56];
      v42 = v197[68];
      v43 = (v42 >> 4) & 3;
      v44 = *(v197 + 10);
      v200 = *(v197 + 9);
      if (v43)
      {
        if (v43 == 1)
        {
          LODWORD(v185) = v41;
          v199 = v44;
          v186 = v40;
          v45 = v36;
          MEMORY[0x21CED2490](1);
          if (v45)
          {
            MEMORY[0x21CED2490](1);
            if ((v35 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v46 = v35;
            }

            else
            {
              v46 = 0;
            }

            MEMORY[0x21CED24C0](v46);
            if ((v34 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v47 = v34;
            }

            else
            {
              v47 = 0;
            }

            MEMORY[0x21CED24C0](v47);
          }

          else
          {
            MEMORY[0x21CED2490](0);
            sub_21A0E626C();
          }

          v59 = v187;
          if (v39)
          {
            MEMORY[0x21CED2490](1);
            if ((v37 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v60 = v37;
            }

            else
            {
              v60 = 0;
            }

            MEMORY[0x21CED24C0](v60);
            if ((v38 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v61 = v38;
            }

            else
            {
              v61 = 0;
            }

            MEMORY[0x21CED24C0](v61);
          }

          else
          {
            MEMORY[0x21CED2490](0);
            sub_21A0E626C();
          }

          v17 = v26;
          v62 = v202;
          if (v185)
          {
            MEMORY[0x21CED2490](1);
            sub_219F6DA14(v62, v186);
          }

          else
          {
            MEMORY[0x21CED2490](0);
            sub_219F6DDE8(v62, v186);
          }

          v4 = v59;
          v12 = v198;
          goto LABEL_3;
        }

        v56 = v44;
        v57 = *(v35 + 40);
        v58 = *(v35 + 72);
        v230 = *(v35 + 56);
        *v231 = v58;
        *&v231[13] = *(v35 + 85);
        *&v229[16] = v57;
        *v229 = *(v35 + 24);
        MEMORY[0x21CED2490](2);
        v12 = v25;
        sub_21A0E626C();

        if ((~(v231[20] << 32) & 0x3E00000000) != 0)
        {
          v199 = v56;
          v72 = *&v231[16] | (v231[20] << 32);
          v185 = *&v229[8];
          v186 = *v229;
          LODWORD(v181) = v229[16];
          DWORD2(v177) = v229[23];
          v73 = *&v229[21];
          v74 = *&v229[17];
          v180 = BYTE8(v230);
          v75 = HIBYTE(v230);
          v76 = *(&v230 + 13);
          v77 = *(&v230 + 9);
          v182 = *&v229[24];
          v183 = *v231;
          LODWORD(v184) = v231[8];
          v78 = v231[15];
          v79 = *&v231[13];
          v178 = v230;
          v179 = *&v231[9];
          sub_21A0E6DCC();
          v80 = (v72 >> 36) & 3;
          if (!v80)
          {
            LODWORD(v176) = v73;
            *&v177 = v74;
            v172 = v76;
            v174 = v75;
            v175 = v77;
            v84 = v79 | (v78 << 16);
            v85 = v186;
            v86 = HIDWORD(v186);
            v87 = HIDWORD(v185);
            v88 = v183;
            v89 = v183 >> 8;
            v90 = HIDWORD(v72) & 0xFFFFFFCF;
            v91 = v179 | (v84 << 32);
            MEMORY[0x21CED2490](0);
            *&v226[6] = __PAIR16__(v184, HIBYTE(v88));
            *&v226[4] = HIDWORD(v88) >> 8;
            *v226 = v89;
            v226[14] = BYTE6(v91);
            *&v226[12] = WORD2(v91);
            *&v226[8] = v91;
            *&v226[15] = v72;
            v226[19] = BYTE4(v72) & 0xCF;
            if (!(v90 >> 6))
            {
              v97 = v177 | ((v176 | (DWORD2(v177) << 16)) << 32);
              v98 = (v90 << 32) | v72;
              v99 = v182;
              v179 = HIDWORD(v182);
              v100 = v97 >> 24;
              *&v226[15] = v98;
              v226[19] = BYTE4(v98) & 0x3F;
              v177 = *&v226[3];
              LODWORD(v184) = BYTE4(v98) & 0x3F;
              v101 = v181 | (v97 << 8);
              MEMORY[0x21CED2490](0);
              *&v224[0] = __PAIR64__(v86, v85);
              *(&v224[0] + 1) = __PAIR64__(v87, v185);
              RGBA.hash(into:)();
              *&v224[0] = __PAIR64__(v100, v101);
              *(&v224[0] + 1) = __PAIR64__(v179, v99);
              RGBA.hash(into:)();
              if (v88)
              {
                sub_21A0E6DCC();
              }

              else
              {
                *&v224[0] = v178;
                DWORD2(v224[0]) = v180 | (v175 << 8);
                HIDWORD(v224[0]) = (v175 | ((v172 | (v174 << 16)) << 32)) >> 24;
                sub_21A0E6DCC();
                RGBA.hash(into:)();
              }

              v114 = v187;
              v12 = v198;
              v17 = v196;
              if (v184)
              {
                sub_21A0E6DCC();
              }

              else
              {
                v224[0] = v177;
                sub_21A0E6DCC();
                RGBA.hash(into:)();
              }

              sub_219F6409C(v229, &qword_27CCD98B8);
              v33 = v201;
              v4 = v114;
              goto LABEL_3;
            }

            if (v90 >> 6 != 1)
            {
              MEMORY[0x21CED2490](2);
              v4 = v187;
              v17 = v196;
              v33 = v201;
              sub_21A0E626C();

              sub_219F6409C(v229, &qword_27CCD98B8);
LABEL_131:
              v12 = v198;
              goto LABEL_3;
            }

            MEMORY[0x21CED2490](1);
            *&v224[0] = __PAIR64__(v86, v85);
            *(&v224[0] + 1) = __PAIR64__(v87, v185);
            RGBA.hash(into:)();
LABEL_110:
            sub_219F6409C(v229, &qword_27CCD98B8);
            v4 = v187;
            v12 = v198;
            goto LABEL_111;
          }

          if (v80 != 1)
          {
            v92 = *(v186 + 40);
            v93 = *(v186 + 72);
            v227 = *(v186 + 56);
            *v228 = v93;
            *&v228[13] = *(v186 + 85);
            *&v226[16] = v92;
            *v226 = *(v186 + 24);
            MEMORY[0x21CED2490](2);
            v224[2] = v230;
            v225[0] = *v231;
            *(v225 + 13) = *&v231[13];
            v224[0] = *v229;
            v224[1] = *&v229[16];
            sub_219F72F28(v224, v221);
            sub_21A0E626C();

            if ((~(v228[20] << 32) & 0x3E00000000) != 0)
            {
              v102 = *&v228[16] | (v228[20] << 32);
              LODWORD(v181) = v226[16];
              LODWORD(v178) = v226[23];
              DWORD2(v177) = *&v226[21];
              v103 = *&v226[17];
              v182 = *&v226[24];
              v183 = *&v226[8];
              v179 = v227;
              v180 = BYTE8(v227);
              v104 = HIBYTE(v227);
              v105 = *(&v227 + 13);
              v106 = *(&v227 + 9);
              v185 = *v228;
              v186 = *v226;
              LODWORD(v184) = v228[8];
              v107 = v228[15];
              v108 = *&v228[13];
              v109 = *&v228[9];
              sub_21A0E6DCC();
              v110 = (v102 >> 36) & 3;
              if (v110)
              {
                if (v110 == 1)
                {
                  MEMORY[0x21CED2490](1);
                  v111 = v186;
                  v4 = v187;
                  v33 = v201;
                  if (v181)
                  {
                    MEMORY[0x21CED2490](1);
                    if ((v111 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                    {
                      v112 = v111;
                    }

                    else
                    {
                      v112 = 0;
                    }

                    MEMORY[0x21CED24C0](v112);
                    if ((v183 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                    {
                      v113 = v183;
                    }

                    else
                    {
                      v113 = 0;
                    }

                    MEMORY[0x21CED24C0](v113);
                    v222 = v227;
                    v223[0] = *v228;
                    *(v223 + 13) = *&v228[13];
                    v221[0] = *v226;
                    v221[1] = *&v226[16];
                    sub_219F72F28(v221, v219);
                    v12 = v198;
                    v17 = v196;
                    if ((v180 & 1) == 0)
                    {
LABEL_90:
                      MEMORY[0x21CED2490](0);
                      sub_21A0E626C();

                      if ((v184 & 1) == 0)
                      {
                        goto LABEL_134;
                      }

LABEL_143:
                      v161 = v202;
                      MEMORY[0x21CED2490](1);
                      sub_219F6DA14(v161, v185);
                      goto LABEL_144;
                    }
                  }

                  else
                  {
                    MEMORY[0x21CED2490](0);
                    v17 = v196;
                    v12 = v198;
                    v222 = v227;
                    v223[0] = *v228;
                    *(v223 + 13) = *&v228[13];
                    v221[0] = *v226;
                    v221[1] = *&v226[16];
                    sub_219F72F28(v221, v219);
                    sub_21A0E626C();

                    if ((v180 & 1) == 0)
                    {
                      goto LABEL_90;
                    }
                  }

                  MEMORY[0x21CED2490](1);
                  if ((v182 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                  {
                    v159 = v182;
                  }

                  else
                  {
                    v159 = 0;
                  }

                  MEMORY[0x21CED24C0](v159);
                  if ((v179 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                  {
                    v160 = v179;
                  }

                  else
                  {
                    v160 = 0;
                  }

                  MEMORY[0x21CED24C0](v160);
                  if (v184)
                  {
                    goto LABEL_143;
                  }

LABEL_134:
                  v158 = v202;
                  MEMORY[0x21CED2490](0);
                  sub_219F6DDE8(v158, v185);
LABEL_144:
                  sub_219F6409C(v226, &qword_27CCD98B8);
                  sub_219F6409C(v229, &qword_27CCD98B8);
                  goto LABEL_3;
                }

                v124 = *(v186 + 40);
                v125 = *(v186 + 72);
                v222 = *(v186 + 56);
                v223[0] = v125;
                *(v223 + 13) = *(v186 + 85);
                v221[1] = v124;
                v221[0] = *(v186 + 24);
                MEMORY[0x21CED2490](2);
                v219[2] = v227;
                v220[0] = *v228;
                *(v220 + 13) = *&v228[13];
                v219[0] = *v226;
                v219[1] = *&v226[16];
                sub_219F72F28(v219, v216);
                sub_21A0E626C();

                if ((~(BYTE4(v223[1]) << 32) & 0x3E00000000) != 0)
                {
                  v131 = LODWORD(v223[1]) | (BYTE4(v223[1]) << 32);
                  LODWORD(v181) = LOBYTE(v221[1]);
                  LODWORD(v178) = BYTE7(v221[1]);
                  DWORD2(v177) = *(&v221[1] + 5);
                  v132 = *(&v221[1] + 1);
                  v182 = *(&v221[1] + 1);
                  v183 = *(&v221[0] + 1);
                  v179 = v222;
                  v180 = BYTE8(v222);
                  v133 = HIBYTE(v222);
                  v134 = *(&v222 + 13);
                  v135 = *(&v222 + 9);
                  v185 = *&v223[0];
                  v186 = *&v221[0];
                  LODWORD(v184) = BYTE8(v223[0]);
                  v136 = HIBYTE(v223[0]);
                  v137 = *(v223 + 13);
                  v138 = *(v223 + 9);
                  sub_21A0E6DCC();
                  v139 = (v131 >> 36) & 3;
                  if (v139)
                  {
                    if (v139 != 1)
                    {
                      v153 = *(v186 + 40);
                      v212 = *(v186 + 24);
                      v213 = v153;
                      v154 = *(v186 + 72);
                      v214 = *(v186 + 56);
                      v215 = v154;
                      v155 = *(v186 + 92);
                      v156 = *(v186 + 88);
                      MEMORY[0x21CED2490](2);
                      v157 = v187;
                      v166 = v156 | (v155 << 32);
                      v217 = v222;
                      v218[0] = v223[0];
                      *(v218 + 13) = *(v223 + 13);
                      v216[0] = v221[0];
                      v216[1] = v221[1];
                      sub_219F72F28(v216, v210);
                      sub_21A0E626C();

                      if ((~v166 & 0x3E00000000) != 0)
                      {
                        v203 = v212;
                        v204 = v213;
                        v205 = v214;
                        v206[0] = v215;
                        BYTE4(v206[1]) = BYTE4(v166);
                        LODWORD(v206[1]) = v166;
                        v167 = v202;
                        sub_21A0E6DCC();
                        v207[0] = v212;
                        v207[1] = v213;
                        v207[2] = v214;
                        v207[3] = v215;
                        v209 = BYTE4(v166);
                        v208 = v166;
                        sub_219F72F28(v207, v210);
                        ActivityFill.hash(into:)(v167);
                        v210[2] = v205;
                        v211[0] = v206[0];
                        *(v211 + 13) = *(v206 + 13);
                        v210[0] = v203;
                        v210[1] = v204;
                        sub_219F72F84(v210);
                      }

                      else
                      {
                        sub_21A0E6DCC();
                      }

                      sub_219F6409C(v221, &qword_27CCD98B8);
                      sub_219F6409C(v226, &qword_27CCD98B8);
                      sub_219F6409C(v229, &qword_27CCD98B8);
                      v12 = v198;
                      v17 = v196;
                      v33 = v201;
                      v4 = v157;
                      goto LABEL_3;
                    }

                    MEMORY[0x21CED2490](1);
                    v140 = v186;
                    v4 = v187;
                    v33 = v201;
                    if (v181)
                    {
                      MEMORY[0x21CED2490](1);
                      if ((v140 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                      {
                        v141 = v140;
                      }

                      else
                      {
                        v141 = 0;
                      }

                      MEMORY[0x21CED24C0](v141);
                      if ((v183 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                      {
                        v142 = v183;
                      }

                      else
                      {
                        v142 = 0;
                      }

                      MEMORY[0x21CED24C0](v142);
                      v217 = v222;
                      v218[0] = v223[0];
                      *(v218 + 13) = *(v223 + 13);
                      v216[0] = v221[0];
                      v216[1] = v221[1];
                      sub_219F72F28(v216, v210);
                      v12 = v198;
                      v17 = v196;
                    }

                    else
                    {
                      MEMORY[0x21CED2490](0);
                      v17 = v196;
                      v12 = v198;
                      v217 = v222;
                      v218[0] = v223[0];
                      *(v218 + 13) = *(v223 + 13);
                      v216[0] = v221[0];
                      v216[1] = v221[1];
                      sub_219F72F28(v216, v210);
                      sub_21A0E626C();
                    }

                    if (v180)
                    {
                      MEMORY[0x21CED2490](1);
                      if ((v182 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                      {
                        v168 = v182;
                      }

                      else
                      {
                        v168 = 0;
                      }

                      MEMORY[0x21CED24C0](v168);
                      if ((v179 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                      {
                        v169 = v179;
                      }

                      else
                      {
                        v169 = 0;
                      }

                      MEMORY[0x21CED24C0](v169);
                    }

                    else
                    {
                      MEMORY[0x21CED2490](0);
                      sub_21A0E626C();
                    }

                    v170 = v202;
                    if (v184)
                    {
                      MEMORY[0x21CED2490](1);
                      sub_219F6DA14(v170, v185);
                    }

                    else
                    {
                      MEMORY[0x21CED2490](0);
                      sub_219F6DDE8(v170, v185);
                    }

                    sub_219F6409C(v221, &qword_27CCD98B8);
                    goto LABEL_144;
                  }

                  v175 = v135;
                  v176 = v132;
                  v172 = v134;
                  v174 = v133;
                  v144 = v137 | (v136 << 16);
                  v146 = v185;
                  v145 = v186;
                  *&v177 = HIDWORD(v186);
                  v147 = v183;
                  v148 = HIDWORD(v183);
                  v149 = v185 >> 8;
                  v150 = HIDWORD(v131) & 0xFFFFFFCF;
                  v151 = v138 | (v144 << 32);
                  MEMORY[0x21CED2490](0);
                  BYTE6(v216[0]) = HIBYTE(v146);
                  WORD2(v216[0]) = HIDWORD(v146) >> 8;
                  LODWORD(v216[0]) = v149;
                  BYTE7(v216[0]) = v184;
                  BYTE14(v216[0]) = BYTE6(v151);
                  WORD6(v216[0]) = WORD2(v151);
                  DWORD2(v216[0]) = v151;
                  *(v216 + 15) = v131;
                  v152 = (v150 << 32) | v131;
                  BYTE3(v216[1]) = BYTE4(v131) & 0xCF;
                  if (!(v150 >> 6))
                  {
                    v162 = v182;
                    v163 = (v176 | ((DWORD2(v177) | (v178 << 16)) << 32)) >> 24;
                    *(v216 + 15) = v152;
                    BYTE3(v216[1]) = BYTE4(v152) & 0x3F;
                    v164 = v146;
                    v165 = v181 | (v176 << 8);
                    *(&v177 + 1) = *(v216 + 3);
                    v178 = HIDWORD(v182);
                    v181 = *(v216 + 11);
                    LODWORD(v184) = BYTE4(v152) & 0x3F;
                    MEMORY[0x21CED2490](0);
                    *&v210[0] = __PAIR64__(v177, v145);
                    *(&v210[0] + 1) = __PAIR64__(v148, v147);
                    RGBA.hash(into:)();
                    *&v210[0] = __PAIR64__(v163, v165);
                    *(&v210[0] + 1) = __PAIR64__(v178, v162);
                    RGBA.hash(into:)();
                    if (v164)
                    {
                      sub_21A0E6DCC();
                    }

                    else
                    {
                      *&v210[0] = v179;
                      DWORD2(v210[0]) = v180 | (v175 << 8);
                      HIDWORD(v210[0]) = (v175 | ((v172 | (v174 << 16)) << 32)) >> 24;
                      sub_21A0E6DCC();
                      RGBA.hash(into:)();
                    }

                    v12 = v198;
                    v17 = v196;
                    v143 = v201;
                    if (v184)
                    {
                      sub_21A0E6DCC();
                    }

                    else
                    {
                      *&v210[0] = *(&v177 + 1);
                      *(&v210[0] + 1) = v181;
                      sub_21A0E6DCC();
                      RGBA.hash(into:)();
                    }

                    sub_219F6409C(v221, &qword_27CCD98B8);
LABEL_126:
                    sub_219F6409C(v226, &qword_27CCD98B8);
                    sub_219F6409C(v229, &qword_27CCD98B8);
                    v33 = v143;
                    v4 = v187;
                    goto LABEL_3;
                  }

                  if (v150 >> 6 == 1)
                  {
                    MEMORY[0x21CED2490](1);
                    *&v210[0] = __PAIR64__(v177, v145);
                    *(&v210[0] + 1) = __PAIR64__(v148, v147);
                    RGBA.hash(into:)();
                  }

                  else
                  {
                    *(v216 + 15) = v131;
                    BYTE3(v216[1]) = BYTE4(v152) & 0x3F;
                    MEMORY[0x21CED2490](2);
                    LOBYTE(v210[0]) = v145;
                    ActivityColor.System.Name.rawValue.getter();
                    sub_21A0E626C();
                  }

                  sub_219F6409C(v221, &qword_27CCD98B8);
                }

                else
                {
                  sub_21A0E6DCC();
                }
              }

              else
              {
                v175 = v106;
                v176 = v103;
                v172 = v105;
                v174 = v104;
                v115 = v108 | (v107 << 16);
                v117 = v185;
                v116 = v186;
                *&v177 = HIDWORD(v186);
                v118 = v183;
                v119 = HIDWORD(v183);
                v120 = v185 >> 8;
                v121 = HIDWORD(v102) & 0xFFFFFFCF;
                v122 = v109 | (v115 << 32);
                MEMORY[0x21CED2490](0);
                BYTE6(v221[0]) = HIBYTE(v117);
                WORD2(v221[0]) = HIDWORD(v117) >> 8;
                LODWORD(v221[0]) = v120;
                BYTE7(v221[0]) = v184;
                BYTE14(v221[0]) = BYTE6(v122);
                WORD6(v221[0]) = WORD2(v122);
                DWORD2(v221[0]) = v122;
                *(v221 + 15) = v102;
                v123 = (v121 << 32) | v102;
                BYTE3(v221[1]) = BYTE4(v102) & 0xCF;
                if (!(v121 >> 6))
                {
                  v127 = v182;
                  v128 = (v176 | ((DWORD2(v177) | (v178 << 16)) << 32)) >> 24;
                  *(v221 + 15) = v123;
                  BYTE3(v221[1]) = BYTE4(v123) & 0x3F;
                  v129 = v117;
                  v130 = v181 | (v176 << 8);
                  *(&v177 + 1) = *(v221 + 3);
                  v178 = HIDWORD(v182);
                  v181 = *(v221 + 11);
                  LODWORD(v184) = BYTE4(v123) & 0x3F;
                  MEMORY[0x21CED2490](0);
                  *&v219[0] = __PAIR64__(v177, v116);
                  *(&v219[0] + 1) = __PAIR64__(v119, v118);
                  RGBA.hash(into:)();
                  *&v219[0] = __PAIR64__(v128, v130);
                  *(&v219[0] + 1) = __PAIR64__(v178, v127);
                  RGBA.hash(into:)();
                  if (v129)
                  {
                    sub_21A0E6DCC();
                  }

                  else
                  {
                    *&v219[0] = v179;
                    DWORD2(v219[0]) = v180 | (v175 << 8);
                    HIDWORD(v219[0]) = (v175 | ((v172 | (v174 << 16)) << 32)) >> 24;
                    sub_21A0E6DCC();
                    RGBA.hash(into:)();
                  }

                  v12 = v198;
                  v17 = v196;
                  v143 = v201;
                  if (v184)
                  {
                    sub_21A0E6DCC();
                  }

                  else
                  {
                    *&v219[0] = *(&v177 + 1);
                    *(&v219[0] + 1) = v181;
                    sub_21A0E6DCC();
                    RGBA.hash(into:)();
                  }

                  goto LABEL_126;
                }

                if (v121 >> 6 == 1)
                {
                  MEMORY[0x21CED2490](1);
                  *&v219[0] = __PAIR64__(v177, v116);
                  *(&v219[0] + 1) = __PAIR64__(v119, v118);
                  RGBA.hash(into:)();
                }

                else
                {
                  *(v221 + 15) = v102;
                  BYTE3(v221[1]) = BYTE4(v123) & 0x3F;
                  MEMORY[0x21CED2490](2);
                  LOBYTE(v219[0]) = v116;
                  ActivityColor.System.Name.rawValue.getter();
                  sub_21A0E626C();
                }
              }

              sub_219F6409C(v226, &qword_27CCD98B8);
            }

            else
            {
              sub_21A0E6DCC();
            }

            goto LABEL_110;
          }

          MEMORY[0x21CED2490](1);
          v81 = v186;
          v4 = v187;
          v33 = v201;
          if (v181)
          {
            MEMORY[0x21CED2490](1);
            if ((v81 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v82 = v81;
            }

            else
            {
              v82 = 0;
            }

            MEMORY[0x21CED24C0](v82);
            if ((v185 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v83 = v185;
            }

            else
            {
              v83 = 0;
            }

            MEMORY[0x21CED24C0](v83);
            v227 = v230;
            *v228 = *v231;
            *&v228[13] = *&v231[13];
            *v226 = *v229;
            *&v226[16] = *&v229[16];
            sub_219F72F28(v226, v224);
            v12 = v198;
            v17 = v196;
          }

          else
          {
            MEMORY[0x21CED2490](0);
            v17 = v196;
            v227 = v230;
            *v228 = *v231;
            *&v228[13] = *&v231[13];
            *v226 = *v229;
            *&v226[16] = *&v229[16];
            sub_219F72F28(v226, v224);
            sub_21A0E626C();

            v12 = v198;
          }

          if (v180)
          {
            MEMORY[0x21CED2490](1);
            if ((v182 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v94 = v182;
            }

            else
            {
              v94 = 0;
            }

            MEMORY[0x21CED24C0](v94);
            if ((v178 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v95 = v178;
            }

            else
            {
              v95 = 0;
            }

            MEMORY[0x21CED24C0](v95);
            if ((v184 & 1) == 0)
            {
LABEL_73:
              v96 = v202;
              MEMORY[0x21CED2490](0);
              sub_219F6DDE8(v96, v183);
LABEL_103:
              sub_219F6409C(v229, &qword_27CCD98B8);
              goto LABEL_3;
            }
          }

          else
          {
            MEMORY[0x21CED2490](0);
            sub_21A0E626C();

            if ((v184 & 1) == 0)
            {
              goto LABEL_73;
            }
          }

          v126 = v202;
          MEMORY[0x21CED2490](1);
          sub_219F6DA14(v126, v183);
          goto LABEL_103;
        }

        sub_21A0E6DCC();
        v4 = v187;
        v17 = v196;
      }

      else
      {
        LODWORD(v181) = v36;
        *&v177 = v39;
        *(&v177 + 1) = v38;
        v182 = v37;
        v199 = v44;
        LODWORD(v179) = v197[23];
        LODWORD(v178) = *(v197 + 21);
        v180 = *(v197 + 17);
        LODWORD(v175) = v197[47];
        v174 = *(v197 + 45);
        v176 = *(v197 + 41);
        v48 = *(v197 + 16) | (v42 << 32);
        v49 = *(v197 + 57);
        v185 = v34;
        v186 = v49;
        v50 = *(v197 + 61);
        v51 = v197[63];
        v183 = HIDWORD(v35);
        v184 = HIDWORD(v34);
        v52 = v40 >> 8;
        v53 = v40;
        v54 = v41;
        MEMORY[0x21CED2490](0);
        v229[6] = HIBYTE(v53);
        *&v229[4] = HIDWORD(v53) >> 8;
        *v229 = v52;
        v229[7] = v54;
        v229[14] = v51;
        *&v229[12] = v50;
        *&v229[8] = v186;
        *&v229[15] = v48;
        v229[19] = BYTE4(v48) & 0xCF;
        v55 = BYTE4(v48) & 0xCF;
        if (!(v55 >> 6))
        {
          v63 = v53;
          v64 = v180 | ((v178 | (v179 << 16)) << 32);
          v65 = (v55 << 32) | v48;
          v66 = v182;
          v67 = HIDWORD(v182);
          v68 = v64 >> 24;
          *&v229[15] = v65;
          v229[19] = BYTE4(v65) & 0x3F;
          v180 = *&v229[3];
          v186 = *&v229[11];
          v69 = BYTE4(v65) & 0x3F;
          v70 = v181 | (v64 << 8);
          v71 = v63;
          MEMORY[0x21CED2490](0);
          *v226 = v35;
          *&v226[4] = v183;
          *&v226[8] = v185;
          *&v226[12] = v184;
          RGBA.hash(into:)();
          *v226 = v70;
          *&v226[4] = v68;
          *&v226[8] = v66;
          *&v226[12] = v67;
          RGBA.hash(into:)();
          if (v71)
          {
            sub_21A0E6DCC();
          }

          else
          {
            *v226 = *(&v177 + 1);
            *&v226[8] = v177 | (v176 << 8);
            *&v226[12] = (v176 | ((v174 | (v175 << 16)) << 32)) >> 24;
            sub_21A0E6DCC();
            RGBA.hash(into:)();
          }

          v4 = v187;
          v17 = v196;
          v33 = v201;
          if (v69)
          {
            sub_21A0E6DCC();
          }

          else
          {
            *v226 = v180;
            *&v226[8] = v186;
            sub_21A0E6DCC();
            RGBA.hash(into:)();
          }

          goto LABEL_131;
        }

        v12 = v198;
        if (v55 >> 6 == 1)
        {
          MEMORY[0x21CED2490](1);
          *v226 = v35;
          *&v226[4] = v183;
          *&v226[8] = v185;
          *&v226[12] = v184;
          RGBA.hash(into:)();
          v4 = v187;
LABEL_111:
          v17 = v196;
          v33 = v201;
          goto LABEL_3;
        }

        MEMORY[0x21CED2490](2);
        v17 = v196;
        v33 = v201;
        sub_21A0E626C();

        v4 = v187;
      }

LABEL_3:
      v22 = v33 + 1;
      sub_21A0E626C();
      result = sub_219F731B8(v17, type metadata accessor for ElectionEntityTheme);
    }

    while (v22 != v192);
  }

  return result;
}