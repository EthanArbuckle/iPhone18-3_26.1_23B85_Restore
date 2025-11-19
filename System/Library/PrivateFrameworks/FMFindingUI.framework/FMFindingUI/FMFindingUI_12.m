void sub_24A60CC1C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_stepper);
  sub_24A50D7EC(0, &qword_27EF522A0, 0x277D753C8);
  v3 = v2;
  v4 = sub_24A62F164();

  if (v4)
  {
    [v3 value];
    *&v5 = v5;
  }

  else
  {
    v6 = *(v0 + OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_slider);
    v7 = sub_24A62F164();

    if ((v7 & 1) == 0)
    {
      return;
    }

    [v6 value];
    *&v5 = *(v1 + OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_stepValue) * roundf(*&v5 / *(v1 + OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_stepValue));
  }

  *(v1 + OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_value) = LODWORD(v5);

  sub_24A60BF8C(v5);
}

id sub_24A60CDC4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMFindingDebugSlider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_24A60CE9C()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_titleLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v2 = OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_valueLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v3 = OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_slider;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D75A30]) init];
  v4 = OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_stepper;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x277D75AC0]) init];
  v5 = (v0 + OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_title);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_stepValue) = 1008981770;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_minimumValue) = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_maximumValue) = 1065353216;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_value) = 0;
  sub_24A62F444();
  __break(1u);
}

void sub_24A60CFCC(void *a1, double a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = &v2[OBJC_IVAR____TtC11FMFindingUI16FMPFSKSpriteNode_brightness];
  *v4 = a2;
  *(v4 + 8) = 0;
  v5 = &v2[OBJC_IVAR____TtC11FMFindingUI16FMPFSKSpriteNode_previousBrightness];
  if ((v2[OBJC_IVAR____TtC11FMFindingUI16FMPFSKSpriteNode_previousBrightness + 8] & 1) != 0 || vabdd_f64(*v5, a2) >= 2.22044605e-16)
  {
    *v5 = a2;
    *(v5 + 8) = 0;
    v10 = 1.0;
    v11[0] = 1.0;
    v8 = 1.0;
    v9 = 1.0;
    [a1 getRed:v11 green:&v10 blue:&v9 alpha:&v8];
    v10 = v10 * a2;
    v11[0] = v11[0] * a2;
    v9 = v9 * a2;
    v6 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:v11[0] green:v10 blue:v9 alpha:v8];
    [v2 setColor_];
  }

  v7 = *MEMORY[0x277D85DE8];
}

id sub_24A60D464(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_24A60D4D0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF656C62616C6961;
  v3 = 0x76616E755F627775;
  v4 = a1;
  v5 = 0x800000024A63CE70;
  v6 = 0xD00000000000001CLL;
  if (a1 == 5)
  {
    v6 = 0xD000000000000012;
    v5 = 0x800000024A63CE50;
  }

  v7 = 0x800000024A63CE30;
  v8 = 0xD000000000000017;
  if (a1 != 3)
  {
    v8 = 0x73736563637573;
    v7 = 0xE700000000000000;
  }

  if (a1 <= 4u)
  {
    v9 = v7;
  }

  else
  {
    v8 = v6;
    v9 = v5;
  }

  v10 = 0x800000024A63CDF0;
  if (v4 == 1)
  {
    v11 = 0xD000000000000012;
  }

  else
  {
    v11 = 0xD000000000000010;
  }

  if (v4 != 1)
  {
    v10 = 0x800000024A63CE10;
  }

  if (v4)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0x76616E755F627775;
  }

  if (v4)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0xEF656C62616C6961;
  }

  if (v4 <= 2)
  {
    v14 = v12;
  }

  else
  {
    v14 = v8;
  }

  if (v4 <= 2)
  {
    v15 = v13;
  }

  else
  {
    v15 = v9;
  }

  if (a2 > 2u)
  {
    if (a2 <= 4u)
    {
      if (a2 == 3)
      {
        v2 = 0x800000024A63CE30;
        if (v14 != 0xD000000000000017)
        {
          goto LABEL_44;
        }

        goto LABEL_41;
      }

      v2 = 0xE700000000000000;
      v3 = 0x73736563637573;
      goto LABEL_40;
    }

    if (a2 != 5)
    {
      v2 = 0x800000024A63CE70;
      if (v14 != 0xD00000000000001CLL)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    v2 = 0x800000024A63CE50;
LABEL_35:
    if (v14 != 0xD000000000000012)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  if (a2)
  {
    if (a2 != 1)
    {
      v2 = 0x800000024A63CE10;
      if (v14 != 0xD000000000000010)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    v2 = 0x800000024A63CDF0;
    goto LABEL_35;
  }

LABEL_40:
  if (v14 != v3)
  {
LABEL_44:
    v16 = sub_24A62F634();
    goto LABEL_45;
  }

LABEL_41:
  if (v15 != v2)
  {
    goto LABEL_44;
  }

  v16 = 1;
LABEL_45:

  return v16 & 1;
}

uint64_t sub_24A60D6B4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC0000006E6F6974;
  v3 = 0x63656E6E6F436F6ELL;
  v4 = a1;
  v5 = 0xE700000000000000;
  v6 = 0x6C616974696E69;
  if (a1 != 6)
  {
    v6 = 0x726F727265;
    v5 = 0xE500000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1918985582;
  if (a1 != 4)
  {
    v8 = 0x646E756F66;
    v7 = 0xE500000000000000;
  }

  if (a1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE300000000000000;
  v10 = 6517345;
  if (a1 != 2)
  {
    v10 = 0x776F727261;
    v9 = 0xE500000000000000;
  }

  v11 = 0xE300000000000000;
  v12 = 7496038;
  if (!a1)
  {
    v12 = 0x63656E6E6F436F6ELL;
    v11 = 0xEC0000006E6F6974;
  }

  if (a1 <= 1u)
  {
    v10 = v12;
    v9 = v11;
  }

  if (a1 <= 3u)
  {
    v13 = v10;
  }

  else
  {
    v13 = v6;
  }

  if (v4 <= 3)
  {
    v14 = v9;
  }

  else
  {
    v14 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xE700000000000000;
        if (v13 != 0x6C616974696E69)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v2 = 0xE500000000000000;
        if (v13 != 0x726F727265)
        {
          goto LABEL_41;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE400000000000000;
      if (v13 != 1918985582)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v2 = 0xE500000000000000;
      if (v13 != 0x646E756F66)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xE300000000000000;
        if (v13 != 6517345)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      v2 = 0xE500000000000000;
      v3 = 0x776F727261;
    }

    else if (a2)
    {
      v2 = 0xE300000000000000;
      if (v13 != 7496038)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    if (v13 != v3)
    {
LABEL_41:
      v15 = sub_24A62F634();
      goto LABEL_42;
    }
  }

LABEL_38:
  if (v14 != v2)
  {
    goto LABEL_41;
  }

  v15 = 1;
LABEL_42:

  return v15 & 1;
}

uint64_t sub_24A60D8D4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF65646F4D6E6F69;
  v3 = 0x74617262696C6163;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = 0x800000024A63DD60;
    }

    else
    {
      v6 = 0x800000024A63DD40;
    }

    v5 = 0xD000000000000010;
  }

  else
  {
    if (a1)
    {
      v5 = 0xD000000000000011;
    }

    else
    {
      v5 = 0x74617262696C6163;
    }

    if (v4)
    {
      v6 = 0x800000024A63DD80;
    }

    else
    {
      v6 = 0xEF65646F4D6E6F69;
    }
  }

  v7 = 0x800000024A63DD60;
  if (a2 != 2)
  {
    v7 = 0x800000024A63DD40;
  }

  if (a2)
  {
    v3 = 0xD000000000000011;
    v2 = 0x800000024A63DD80;
  }

  if (a2 <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = 0xD000000000000010;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (v5 == v8 && v6 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_24A62F634();
  }

  return v10 & 1;
}

uint64_t sub_24A60D9F8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA0000000000656ELL;
  v3 = 0x6F6C61646E617473;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 1702060387;
    }

    else
    {
      v5 = 0x6F6C61646E617473;
    }

    if (v4)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xEA0000000000656ELL;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xE700000000000000;
    v5 = 0x6475427466656CLL;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x6475427468676972;
    }

    else
    {
      v5 = 0x636972656E6567;
    }

    if (v4 == 3)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  v7 = 0xE700000000000000;
  v8 = 0x6475427466656CLL;
  v9 = 0xE800000000000000;
  v10 = 0x6475427468676972;
  if (a2 != 3)
  {
    v10 = 0x636972656E6567;
    v9 = 0xE700000000000000;
  }

  if (a2 != 2)
  {
    v8 = v10;
    v7 = v9;
  }

  if (a2)
  {
    v3 = 1702060387;
    v2 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v7;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_24A62F634();
  }

  return v13 & 1;
}

uint64_t sub_24A60DB6C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701869940;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x646E657274;
    }

    else
    {
      v4 = 1953393000;
    }

    if (v3 == 2)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6D6572757361656DLL;
    }

    else
    {
      v4 = 1701869940;
    }

    if (v3)
    {
      v5 = 0xEB00000000746E65;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xE500000000000000;
  v8 = 0x646E657274;
  if (a2 != 2)
  {
    v8 = 1953393000;
    v7 = 0xE400000000000000;
  }

  if (a2)
  {
    v2 = 0x6D6572757361656DLL;
    v6 = 0xEB00000000746E65;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24A62F634();
  }

  return v11 & 1;
}

uint64_t sub_24A60DCA0@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = result;
    v7 = a2 + 32;
    while (1)
    {
      sub_24A508AE4(v7, v9);
      v8 = v6(v9);
      if (v3)
      {
        return sub_24A508C54(v9);
      }

      if (v8)
      {
        return sub_24A508CA0(v9, a3);
      }

      result = sub_24A508C54(v9);
      v7 += 40;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_24A60DD58(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = *(*(a3 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v9)))));
      v16 = v14;

      v15 = a1(&v16);
      if (v3)
      {

        return v14;
      }

      if (v15)
      {
        break;
      }

      v9 &= v9 - 1;

      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    return v14;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {

        return 0;
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_24A60DE9C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24A62F464())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x24C21ACB0](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

char *sub_24A60DFB0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_24A62F464();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_24A58D8C8(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x24C21ACB0](i, a1);
        sub_24A50D7EC(0, &qword_27EF502B0, 0x277CD9EA0);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_24A58D8C8((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_24A582FBC(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_24A50D7EC(0, &qword_27EF502B0, 0x277CD9EA0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_24A58D8C8((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_24A582FBC(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_24A60E1AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_24A58D908(0, v1, 0);
    v2 = v10;
    v4 = a1 + 32;
    do
    {
      sub_24A508AE4(v4, v8);
      sub_24A508FA4(&unk_27EF4FF20, &unk_24A635E40);
      sub_24A508FA4(&unk_27EF501B0, &unk_24A633B00);
      swift_dynamicCast();
      v10 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_24A58D908((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v6 + 1;
      sub_24A508CA0(&v9, v2 + 40 * v6 + 32);
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_24A60E2E4(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, _BYTE *), void (*a5)(BOOL, uint64_t, uint64_t))
{
  v7 = *(a3 + 16);
  if (v7)
  {
    v8 = a4;
    v9 = result;
    v10 = 0;
    v11 = a3 + 32;
    v12 = MEMORY[0x277D84F90];
    v18 = result;
    while (v10 < *(a3 + 16))
    {
      sub_24A508AE4(v11, v21);
      v13 = v9(v21);
      if (v5)
      {
        sub_24A508C54(v21);

        goto LABEL_15;
      }

      if (v13)
      {
        v8(v21, v20);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v22 = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          a5(0, *(v12 + 16) + 1, 1);
          v12 = v22;
        }

        v16 = *(v12 + 16);
        v15 = *(v12 + 24);
        if (v16 >= v15 >> 1)
        {
          a5(v15 > 1, v16 + 1, 1);
          v12 = v22;
        }

        *(v12 + 16) = v16 + 1;
        v8 = a4;
        result = (a4)(v20, v12 + 40 * v16 + 32);
        v9 = v18;
      }

      else
      {
        result = sub_24A508C54(v21);
      }

      ++v10;
      v11 += 40;
      if (v7 == v10)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
LABEL_15:

    return v12;
  }

  return result;
}

uint64_t sub_24A60E484(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = result;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  v12 = MEMORY[0x277D84F90];
  v18 = result;
  if (v10)
  {
LABEL_10:
    while (1)
    {
      sub_24A508AE4(*(v4 + 56) + 40 * (__clz(__rbit64(v10)) | (v6 << 6)), v20);
      sub_24A508CA0(v20, v21);
      v14 = v5(v21);
      if (v3)
      {
        break;
      }

      v10 &= v10 - 1;
      if (v14)
      {
        sub_24A508CA0(v21, v20);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v22 = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24A58D908(0, *(v12 + 16) + 1, 1);
          v12 = v22;
        }

        v17 = *(v12 + 16);
        v16 = *(v12 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_24A58D908((v16 > 1), v17 + 1, 1);
          v12 = v22;
        }

        *(v12 + 16) = v17 + 1;
        result = sub_24A508CA0(v20, v12 + 40 * v17 + 32);
        v4 = a3;
        v5 = v18;
        if (!v10)
        {
          goto LABEL_6;
        }
      }

      else
      {
        result = sub_24A508C54(v21);
        if (!v10)
        {
          goto LABEL_6;
        }
      }
    }

    sub_24A508C54(v21);

LABEL_19:

    return v12;
  }

  else
  {
LABEL_6:
    while (1)
    {
      v13 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v13 >= v11)
      {
        goto LABEL_19;
      }

      v10 = *(v7 + 8 * v13);
      ++v6;
      if (v10)
      {
        v6 = v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24A60E654(uint64_t a1, uint64_t a2, unsigned __int16 *a3, char *a4, void *a5)
{
  v6 = v5;
  v62 = a5;
  v73 = a4;
  v10 = sub_24A508FA4(&unk_27EF4FEE0, &qword_24A6369F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v55[-v12];
  v60 = sub_24A62E214();
  v59 = *(v60 - 8);
  v14 = *(v59 + 64);
  MEMORY[0x28223BE20](v60);
  v58 = &v55[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for FMFindingSessionState();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v57 = &v55[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = *a3;
  v20 = v6 + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession____lazy_storage___findingLocalizer;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0;
  v21 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_arSession;
  *(v6 + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_arSession) = 0;
  v22 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_uwbAvailabilityHelper;
  *(v6 + v22) = [objc_allocWithZone(type metadata accessor for FMUWBAvailabilityHelper()) init];
  v23 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_stateUpdateLock;
  sub_24A508FA4(&unk_27EF52470, &unk_24A63C130);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v6 + v23) = v24;
  *(v6 + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  if (*(a1 + 16))
  {
    v25 = v73;
    v56 = v19;
    LOWORD(v63[0]) = v19;
    v26 = &unk_27EF522E0;
    sub_24A50D63C(a2, &v70, &unk_27EF522E0, qword_24A637660);
    v61 = a2;
    sub_24A50D63C(a2, &v67, &unk_27EF522E0, qword_24A637660);
    v27 = v68;
    if (v68)
    {
      v28 = v69;
      v26 = sub_24A50A204(&v67, v68);
      (*(v28 + 16))(v27, v28);
      v29 = v59;
      v30 = v60;
      (*(v59 + 56))(v13, 0, 1, v60);
      sub_24A508C54(&v67);
      if ((*(v29 + 6))(v13, 1, v30) != 1)
      {
        v31 = v25;
        v32 = v58;
        (*(v29 + 4))(v58, v13, v30);
        goto LABEL_14;
      }
    }

    else
    {
      sub_24A50D6A4(&v67, &unk_27EF522E0, qword_24A637660);
      v29 = v59;
      v30 = v60;
      (*(v59 + 56))(v13, 1, 1, v60);
    }

    if (!*(a1 + 16))
    {
      __break(1u);
      goto LABEL_23;
    }

    sub_24A508AE4(a1 + 32, &v67);
    v41 = v68;
    v42 = v69;
    sub_24A50A204(&v67, v68);
    v43 = *(v42 + 16);
    v44 = v42;
    v32 = v58;
    v43(v41, v44);
    v31 = v25;
    sub_24A508C54(&v67);
    if ((*(v29 + 6))(v13, 1, v30) != 1)
    {
      sub_24A50D6A4(v13, &unk_27EF4FEE0, &qword_24A6369F0);
    }

LABEL_14:
    v45 = v57;
    sub_24A5AC844(v63, a1, &v70, v32, v31, v57);
    sub_24A61C230(v45, v6 + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state);
    *(v6 + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_findingType) = v56;
    v46 = *(v6 + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_arSession);
    v47 = v62;
    *(v6 + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_arSession) = v62;
    v29 = v47;

    v48 = v6 + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state;
    v49 = swift_beginAccess();
    v50 = *(v48 + 8);
    MEMORY[0x28223BE20](v49);
    v51 = v61;
    *&v55[-16] = v61;

    v27 = sub_24A60E484(sub_24A61C294, &v55[-32], v50);
    v25 = &v65;
    sub_24A50D63C(v51, v66, &unk_27EF522E0, qword_24A637660);
    sub_24A50D63C(v66, &v70, &unk_27EF522E0, qword_24A637660);
    v63[1] = v71;
    v63[0] = v70;
    v64 = v72;
    if (!*(&v71 + 1))
    {
      sub_24A50D6A4(v63, &unk_27EF522E0, qword_24A637660);
      v26 = MEMORY[0x277D84F90];
LABEL_20:
      sub_24A50D6A4((v25 + 32), &unk_27EF522E0, qword_24A637660);
      *&v70 = v26;
      sub_24A5E5DDC(v27);

      v40 = v61;
      goto LABEL_21;
    }

    sub_24A508CA0(v63, &v67);
    v26 = MEMORY[0x277D84F90];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_16:
      v53 = v26[2];
      v52 = v26[3];
      if (v53 >= v52 >> 1)
      {
        v26 = sub_24A617B34((v52 > 1), v53 + 1, 1, v26, &unk_27EF4FF40, &unk_24A635E60, &unk_27EF501B0, &unk_24A633B00);
      }

      v26[2] = v53 + 1;
      sub_24A508CA0(&v67, &v26[5 * v53 + 4]);
      goto LABEL_20;
    }

LABEL_23:
    v26 = sub_24A617B34(0, v26[2] + 1, 1, v26, &unk_27EF4FF40, &unk_24A635E60, &unk_27EF501B0, &unk_24A633B00);
    goto LABEL_16;
  }

  v61 = v23;

  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v33 = sub_24A62E314();
  sub_24A506EB8(v33, qword_27EF5C118);
  v34 = sub_24A62E2F4();
  v35 = sub_24A62EF44();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_24A503000, v34, v35, "🧭 FMFindingSession: Empty findables list passed in.", v36, 2u);
    MEMORY[0x24C21BBE0](v36, -1, -1);
  }

  type metadata accessor for FMFindingSession.Error(0);
  sub_24A61BDB4(&qword_27EF4F668, type metadata accessor for FMFindingSession.Error);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  sub_24A50D6A4(v20, &qword_27EF522C8, &qword_24A63BF10);
  v37 = *(v6 + v61);

  sub_24A52358C(v6 + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_delegate);
  type metadata accessor for FMFindingSession(0);
  v38 = *(*v6 + 48);
  v39 = *(*v6 + 52);
  swift_deallocPartialClassInstance();
  v40 = a2;
LABEL_21:
  sub_24A50D6A4(v40, &unk_27EF522E0, qword_24A637660);
  return v6;
}

uint64_t FMFindingSession.deinit()
{
  v1 = v0;
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v2 = sub_24A62E314();
  sub_24A506EB8(v2, qword_27EF5C118);
  v3 = sub_24A62E2F4();
  v4 = sub_24A62EF64();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24A503000, v3, v4, "FMFindingSession deinit", v5, 2u);
    MEMORY[0x24C21BBE0](v5, -1, -1);
  }

  sub_24A61B070(v1 + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state, type metadata accessor for FMFindingSessionState);
  sub_24A50D6A4(v1 + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession____lazy_storage___findingLocalizer, &qword_27EF522C8, &qword_24A63BF10);

  v6 = *(v1 + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_stateUpdateLock);

  sub_24A52358C(v1 + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_delegate);
  return v1;
}

uint64_t sub_24A60F078()
{
  v1 = sub_24A62E214();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FMFindingSessionState();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state;
  swift_beginAccess();
  sub_24A61C0D4(v0 + v10, v9, type metadata accessor for FMFindingSessionState);
  v11 = *(v9 + 1);
  if (*(v11 + 16) && (v12 = sub_24A515AC8(&v9[*(v6 + 36)]), (v13 & 1) != 0))
  {
    sub_24A508AE4(*(v11 + 56) + 40 * v12, v19);
    sub_24A508CA0(v19, v20);
    sub_24A61B070(v9, type metadata accessor for FMFindingSessionState);
    v14 = v21;
    v15 = v22;
    sub_24A50A204(v20, v21);
    (*(v15 + 16))(v14, v15);
    v16 = sub_24A62E1C4();
    (*(v2 + 8))(v5, v1);
    sub_24A508C54(v20);
    return v16;
  }

  else
  {
    result = sub_24A62F444();
    __break(1u);
  }

  return result;
}

uint64_t sub_24A60F2CC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FMFindingSessionState();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state;
  swift_beginAccess();
  sub_24A61C0D4(v1 + v7, v6, type metadata accessor for FMFindingSessionState);
  v8 = *(v6 + 1);
  if (*(v8 + 16) && (v9 = sub_24A515AC8(&v6[*(v3 + 36)]), (v10 & 1) != 0))
  {
    sub_24A508AE4(*(v8 + 56) + 40 * v9, v12);
    sub_24A508CA0(v12, a1);
    return sub_24A61B070(v6, type metadata accessor for FMFindingSessionState);
  }

  else
  {
    result = sub_24A62F444();
    __break(1u);
  }

  return result;
}

uint64_t sub_24A60F438(uint64_t a1)
{
  v3 = type metadata accessor for FMFindingSessionState();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state;
  swift_beginAccess();
  sub_24A61C1CC(a1, v1 + v7);
  swift_endAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_24A61C0D4(v1 + v7, v6, type metadata accessor for FMFindingSessionState);
    sub_24A60B7F8(v1, v6);
    swift_unknownObjectRelease();
    sub_24A61B070(a1, type metadata accessor for FMFindingSessionState);
    a1 = v6;
  }

  return sub_24A61B070(a1, type metadata accessor for FMFindingSessionState);
}

uint64_t sub_24A60F570@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession____lazy_storage___findingLocalizer;
  swift_beginAccess();
  sub_24A50D63C(v1 + v3, &v15, &qword_27EF522C8, &qword_24A63BF10);
  if (v16)
  {
    return sub_24A508CA0(&v15, a1);
  }

  sub_24A50D6A4(&v15, &qword_27EF522C8, &qword_24A63BF10);
  v5 = v1 + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state;
  swift_beginAccess();
  v6 = *(v5 + 8);
  v7 = *(v6 + 16);
  if (v7)
  {
    v13 = sub_24A5E4FC4(*(v6 + 16), 0);
    v14 = sub_24A5CE86C(&v15, (v13 + 4), v7, v6);

    result = sub_24A55B6D4();
    if (v14 != v7)
    {
      __break(1u);
      return result;
    }

    v8 = v13;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  LOWORD(v15) = *(v1 + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_findingType);
  v9 = *(v1 + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_arSession);
  v10 = type metadata accessor for FMFindingLocalizer();
  objc_allocWithZone(v10);
  v11 = v9;

  v12 = sub_24A54A8E8(v8, &v15, v9, v1, &off_285DAB2A0);
  a1[3] = v10;
  a1[4] = &off_285DA5430;
  *a1 = v12;
  sub_24A508AE4(a1, &v15);
  swift_beginAccess();
  sub_24A61C13C(&v15, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_24A60F768(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMFindingSessionState();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - v9;
  v11 = v1 + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state;
  swift_beginAccess();
  v12 = *(v11 + 16);

  sub_24A616CC8(a1, v12);
  v14 = v13;

  if ((v14 & 1) == 0)
  {
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v16 = sub_24A62E314();
    sub_24A506EB8(v16, qword_27EF5C118);

    v17 = sub_24A62E2F4();
    v18 = sub_24A62EF64();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v33 = v2;
      v34 = v20;
      v21 = v20;
      *v19 = 136315138;
      sub_24A508FA4(&qword_27EF51130, &qword_24A6389E0);
      v32 = v4;
      sub_24A5ABA0C();
      v22 = sub_24A62EE74();
      v24 = sub_24A509BA8(v22, v23, &v34);
      v4 = v32;

      *(v19 + 4) = v24;
      _os_log_impl(&dword_24A503000, v17, v18, "🧭 FMFindingSession: Updating grouped items: %s", v19, 0xCu);
      sub_24A508C54(v21);
      v25 = v21;
      v2 = v33;
      MEMORY[0x24C21BBE0](v25, -1, -1);
      MEMORY[0x24C21BBE0](v19, -1, -1);
    }

    v26 = *(v2 + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_stateUpdateLock);
    os_unfair_lock_lock(v26 + 4);
    sub_24A61C0D4(v11, v7, type metadata accessor for FMFindingSessionState);
    v27 = *v7;
    v28 = *(v7 + 1);
    sub_24A50D63C((v7 + 24), (v10 + 24), &unk_27EF522E0, qword_24A637660);
    v29 = *(v4 + 36);
    v30 = sub_24A62E214();
    (*(*(v30 - 8) + 16))(&v10[v29], &v7[v29], v30);
    v31 = *(v7 + 8);

    sub_24A61B070(v7, type metadata accessor for FMFindingSessionState);
    *v10 = v27;
    *(v10 + 8) = v31;
    *(v10 + 1) = v28;
    *(v10 + 2) = a1;

    os_unfair_lock_unlock(v26 + 4);
    sub_24A61C0D4(v10, v7, type metadata accessor for FMFindingSessionState);
    sub_24A60F438(v7);
    sub_24A6104A8();
    return sub_24A61B070(v10, type metadata accessor for FMFindingSessionState);
  }

  return result;
}

uint64_t sub_24A60FB04(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = type metadata accessor for FMFindingSession.Error(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_storeEnumTagMultiPayload();
    sub_24A60BC20(v6);
    swift_unknownObjectRelease();
    Strong = sub_24A61B070(v6, type metadata accessor for FMFindingSession.Error);
  }

  return a2(Strong);
}

uint64_t sub_24A60FBF0()
{
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v1 = sub_24A62E314();
  sub_24A506EB8(v1, qword_27EF5C118);

  v2 = sub_24A62E2F4();
  v3 = sub_24A62EF64();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13[0] = v5;
    *v4 = 136446210;
    v12 = *(v0 + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_findingType);
    v6 = FindingExperienceType.description.getter();
    v8 = sub_24A509BA8(v6, v7, v13);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_24A503000, v2, v3, "🧭 FMFindingSession: Starting new session with %{public}s", v4, 0xCu);
    sub_24A508C54(v5);
    MEMORY[0x24C21BBE0](v5, -1, -1);
    MEMORY[0x24C21BBE0](v4, -1, -1);
  }

  sub_24A60F570(v13);
  v9 = v14;
  v10 = v15;
  sub_24A50A204(v13, v14);
  (*(v10 + 56))(v9, v10);
  return sub_24A508C54(v13);
}

uint64_t sub_24A60FDA0()
{
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v0 = sub_24A62E314();
  sub_24A506EB8(v0, qword_27EF5C118);
  v1 = sub_24A62E2F4();
  v2 = sub_24A62EF64();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_24A503000, v1, v2, "🧭 FMFindingSession: Stopping finding session", v3, 2u);
    MEMORY[0x24C21BBE0](v3, -1, -1);
  }

  sub_24A60F570(v7);
  v4 = v8;
  v5 = v9;
  sub_24A50A204(v7, v8);
  (*(v5 + 64))(v4, v5);
  return sub_24A508C54(v7);
}

uint64_t sub_24A60FEC8(void *a1)
{
  v2 = type metadata accessor for FMFindingSessionState();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v29[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v29[-v7];
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v9 = sub_24A62E314();
  sub_24A506EB8(v9, qword_27EF5C118);
  sub_24A508AE4(a1, v35);
  v10 = sub_24A62E2F4();
  v11 = sub_24A62EF64();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v34 = v13;
    *v12 = 136315138;
    sub_24A508AE4(v35, v33);
    sub_24A508FA4(&unk_27EF501B0, &unk_24A633B00);
    v14 = v2;
    v15 = sub_24A62EC44();
    v17 = v16;
    sub_24A508C54(v35);
    v18 = sub_24A509BA8(v15, v17, &v34);

    *(v12 + 4) = v18;
    v2 = v14;
    _os_log_impl(&dword_24A503000, v10, v11, "🧭 FMFindingSession: Selecting new part: %s", v12, 0xCu);
    sub_24A508C54(v13);
    MEMORY[0x24C21BBE0](v13, -1, -1);
    MEMORY[0x24C21BBE0](v12, -1, -1);
  }

  else
  {

    sub_24A508C54(v35);
  }

  v19 = v32;
  v31 = *(v32 + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_stateUpdateLock);
  os_unfair_lock_lock(v31 + 4);
  v20 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state;
  swift_beginAccess();
  sub_24A61C0D4(v19 + v20, v6, type metadata accessor for FMFindingSessionState);
  v30 = *v6;
  v21 = v6[1];
  sub_24A50D63C((v6 + 3), (v8 + 24), &unk_27EF522E0, qword_24A637660);
  v22 = a1[3];
  v23 = a1[4];
  sub_24A50A204(a1, v22);
  v24 = *(v23 + 16);
  v25 = *(v2 + 36);

  v24(v22, v23);
  v26 = v6[8];
  v27 = v6[2];

  sub_24A61B070(v6, type metadata accessor for FMFindingSessionState);
  *v8 = v30;
  *(v8 + 8) = v26;
  *(v8 + 1) = v21;
  *(v8 + 2) = v27;
  os_unfair_lock_unlock(v31 + 4);
  sub_24A61C0D4(v8, v6, type metadata accessor for FMFindingSessionState);
  sub_24A60F438(v6);
  return sub_24A61B070(v8, type metadata accessor for FMFindingSessionState);
}

uint64_t sub_24A610228()
{
  v1 = v0;
  v2 = type metadata accessor for FMFindingSessionState();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v9 = sub_24A62E314();
  sub_24A506EB8(v9, qword_27EF5C118);
  v10 = sub_24A62E2F4();
  v11 = sub_24A62EF64();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_24A503000, v10, v11, "🧭 FMFindingSession: Reset", v12, 2u);
    MEMORY[0x24C21BBE0](v12, -1, -1);
  }

  v13 = *(v1 + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_stateUpdateLock);
  os_unfair_lock_lock(v13 + 4);
  v14 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state;
  swift_beginAccess();
  sub_24A61C0D4(v1 + v14, v6, type metadata accessor for FMFindingSessionState);
  sub_24A5ACE64(v8);
  sub_24A61B070(v6, type metadata accessor for FMFindingSessionState);
  os_unfair_lock_unlock(v13 + 4);
  sub_24A61C0D4(v8, v6, type metadata accessor for FMFindingSessionState);
  sub_24A60F438(v6);
  sub_24A6104A8();
  return sub_24A61B070(v8, type metadata accessor for FMFindingSessionState);
}

uint64_t sub_24A610434(uint64_t a1)
{
  sub_24A60F570(v5);
  v2 = v6;
  v3 = v7;
  sub_24A50A204(v5, v6);
  (*(v3 + 80))(a1, v2, v3);
  return sub_24A508C54(v5);
}

uint64_t sub_24A6104A8()
{
  v1 = sub_24A62E214();
  v217 = *(v1 - 8);
  v218 = v1;
  v2 = *(v217 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v199 = &v193[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = MEMORY[0x28223BE20](v3);
  v216 = &v193[-v6];
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v193[-v8];
  MEMORY[0x28223BE20](v7);
  v11 = &v193[-v10];
  v12 = type metadata accessor for FMFindingSessionState();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  i = &v193[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v14);
  v195 = &v193[-v17];
  v18 = MEMORY[0x28223BE20](v16);
  v201 = &v193[-v19];
  v20 = MEMORY[0x28223BE20](v18);
  v196 = &v193[-v21];
  v22 = MEMORY[0x28223BE20](v20);
  v198 = &v193[-v23];
  v24 = MEMORY[0x28223BE20](v22);
  v205 = &v193[-v25];
  v26 = MEMORY[0x28223BE20](v24);
  v213 = &v193[-v27];
  v28 = MEMORY[0x28223BE20](v26);
  v212 = &v193[-v29];
  v30 = MEMORY[0x28223BE20](v28);
  v211 = &v193[-v31];
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v193[-v33];
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v193[-v36];
  MEMORY[0x28223BE20](v35);
  v39 = &v193[-v38];
  v207 = v0;
  v40 = (v0 + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state);
  swift_beginAccess();
  sub_24A61C0D4(v40, v39, type metadata accessor for FMFindingSessionState);
  v41 = *(v39 + 64);
  if (!*(v41 + 16) || (v42 = sub_24A515AC8(v39 + *(v12 + 36)), (v43 & 1) == 0))
  {
    v192 = 0;
    v190 = 38;
LABEL_132:
    v191 = v190;
    sub_24A62F444();
    __break(1u);
    goto LABEL_133;
  }

  v44 = *(v41 + 56) + 104 * v42;
  v46 = *(v44 + 16);
  v45 = *(v44 + 32);
  v229[0] = *v44;
  v229[1] = v46;
  v229[2] = v45;
  v47 = *(v44 + 48);
  v48 = *(v44 + 64);
  v49 = *(v44 + 80);
  *&v230[13] = *(v44 + 93);
  v229[4] = v48;
  *v230 = v49;
  v229[3] = v47;
  sub_24A508CE4(v229, v226);
  sub_24A61B070(v39, type metadata accessor for FMFindingSessionState);
  v50 = 0x27EF4E000uLL;
  v214 = v9;
  v215 = v34;
  if ((*&v230[16] | 0x2000000u) >> 25 == 3)
  {
    goto LABEL_4;
  }

  if (v230[18] < 3u)
  {
    goto LABEL_6;
  }

  if (v230[18] != 3)
  {
LABEL_4:
    sub_24A517ABC(v229);
LABEL_6:
    v39 = 0;
    goto LABEL_7;
  }

  sub_24A61C0D4(v40, v37, type metadata accessor for FMFindingSessionState);
  v143 = *(v37 + 8);
  v39 = *(v143 + 16);
  if (v39)
  {
    v144 = sub_24A5E4FC4(*(v143 + 16), 0);
    v210 = sub_24A5CE86C(&v219, (v144 + 4), v39, v143);
    v206 = *(&v219 + 1);
    v34 = v219;
    v204 = v220;
    v202 = v221;
    v200 = v222;
    swift_bridgeObjectRetain_n();
    sub_24A55B6D4();
    if (v210 != v39)
    {
      goto LABEL_127;
    }

    v34 = v215;
  }

  else
  {
LABEL_116:

    v144 = MEMORY[0x277D84F90];
  }

  *&v219 = v144;
  v39 = 0;
  sub_24A5CDB08(&v219);

  v182 = v219;
  MEMORY[0x28223BE20](v181);
  v191 = v37;
  sub_24A60DCA0(sub_24A61C1AC, v182, &v223);

  sub_24A61B070(v37, type metadata accessor for FMFindingSessionState);
  if (v224)
  {
    sub_24A508CA0(&v223, v226);
    if (*(v50 + 2464) == -1)
    {
      goto LABEL_119;
    }

    goto LABEL_128;
  }

  sub_24A50D6A4(&v223, &unk_27EF522E0, qword_24A637660);
LABEL_7:
  while (1)
  {
    v208 = v12;
    sub_24A61C0D4(v40, v34, type metadata accessor for FMFindingSessionState);
    v51 = *(v34 + 8);
    v34 = *(v51 + 16);
    v209 = v40;
    if (!v34)
    {
      break;
    }

    v52 = v39;
    v53 = sub_24A5E4FC4(v34, 0);
    v210 = sub_24A5CE86C(v226, (v53 + 4), v34, v51);
    v40 = v226[1];
    v39 = v226[2];
    v12 = v227;
    v206 = v228;
    swift_bridgeObjectRetain_n();
    sub_24A55B6D4();
    if (v210 == v34)
    {
      v40 = v209;
      v39 = v52;
      goto LABEL_11;
    }

    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    swift_once();
LABEL_119:
    v183 = sub_24A62E314();
    sub_24A506EB8(v183, qword_27EF5C118);
    v184 = sub_24A62E2F4();
    v185 = sub_24A62EF64();
    if (os_log_type_enabled(v184, v185))
    {
      v186 = v39;
      v187 = v34;
      v188 = swift_slowAlloc();
      *v188 = 0;
      _os_log_impl(&dword_24A503000, v184, v185, "🧭 FMFindingSession: Automatically transitioning to next findable part.", v188, 2u);
      v189 = v188;
      v34 = v187;
      v39 = v186;
      MEMORY[0x24C21BBE0](v189, -1, -1);
    }

    sub_24A60FEC8(v226);
    sub_24A517ABC(v229);
    sub_24A508C54(v226);
  }

  v53 = MEMORY[0x277D84F90];
LABEL_11:
  v226[0] = v53;
  sub_24A5CDB08(v226);
  v12 = v217;
  v34 = v218;
  if (v39)
  {
LABEL_133:

    __break(1u);

    __break(1u);
    return result;
  }

  MEMORY[0x28223BE20](v54);
  v55 = v215;
  v191 = v215;
  v57 = sub_24A60E2E4(sub_24A61C2B4, &v193[-32], v56, sub_24A508CA0, sub_24A58D908);
  sub_24A61B070(v55, type metadata accessor for FMFindingSessionState);
  v58 = *(v57 + 16);
  v59 = MEMORY[0x277D84F90];
  v204 = v57;
  if (v58)
  {
    *&v223 = MEMORY[0x277D84F90];
    sub_24A58D8A8(0, v58, 0);
    v59 = v223;
    v60 = v57 + 32;
    do
    {
      sub_24A508AE4(v60, v226);
      v61 = v227;
      v62 = v228;
      sub_24A50A204(v226, v227);
      (*(v62 + 16))(v61, v62);
      sub_24A508C54(v226);
      *&v223 = v59;
      v64 = *(v59 + 16);
      v63 = *(v59 + 24);
      if (v64 >= v63 >> 1)
      {
        sub_24A58D8A8(v63 > 1, v64 + 1, 1);
        v59 = v223;
      }

      *(v59 + 16) = v64 + 1;
      v12 = v217;
      v34 = v218;
      (*(v217 + 32))(v59 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v217 + 72) * v64, v11, v218);
      v60 += 40;
      --v58;
    }

    while (v58);
    v40 = v209;
  }

  v11 = sub_24A61B0D0(v59);

  v50 = v208;
  if (qword_27EF4E9A0 != -1)
  {
    goto LABEL_125;
  }

LABEL_19:
  v65 = sub_24A62E314();
  v66 = sub_24A506EB8(v65, qword_27EF5C118);

  v200 = v66;
  v67 = sub_24A62E2F4();
  v39 = sub_24A62EF34();

  if (os_log_type_enabled(v67, v39))
  {
    v215 = v11;
    v68 = swift_slowAlloc();
    v210 = swift_slowAlloc();
    *&v219 = v210;
    *v68 = 136315394;
    v69 = v211;
    sub_24A61C0D4(v40, v211, type metadata accessor for FMFindingSessionState);
    v70 = *(v69 + 1);
    if (!*(v70 + 16))
    {
      goto LABEL_131;
    }

    v71 = sub_24A515AC8(&v69[*(v50 + 36)]);
    if ((v72 & 1) == 0)
    {
      goto LABEL_131;
    }

    sub_24A508AE4(*(v70 + 56) + 40 * v71, &v223);
    sub_24A508CA0(&v223, v226);
    sub_24A61B070(v69, type metadata accessor for FMFindingSessionState);
    sub_24A508FA4(&unk_27EF501B0, &unk_24A633B00);
    v73 = sub_24A62EC44();
    v75 = sub_24A509BA8(v73, v74, &v219);

    *(v68 + 4) = v75;
    *(v68 + 12) = 2080;
    v76 = v209;
    v77 = v212;
    sub_24A61C0D4(v209, v212, type metadata accessor for FMFindingSessionState);
    v78 = v50;
    v79 = sub_24A5ABC04();
    v81 = v80;
    sub_24A61B070(v77, type metadata accessor for FMFindingSessionState);
    v82 = v79;
    v50 = v78;
    v83 = sub_24A509BA8(v82, v81, &v219);

    *(v68 + 14) = v83;
    _os_log_impl(&dword_24A503000, v67, v39, "FMFindingSession currentFindable: %s and name: %s", v68, 0x16u);
    v84 = v210;
    swift_arrayDestroy();
    v40 = v76;
    MEMORY[0x24C21BBE0](v84, -1, -1);
    MEMORY[0x24C21BBE0](v68, -1, -1);

    v12 = v217;
    v34 = v218;
    v11 = v215;
  }

  else
  {
  }

  v39 = v213;
  sub_24A61C0D4(v40, v213, type metadata accessor for FMFindingSessionState);
  v85 = *(v39 + 8);
  if (!*(v85 + 16))
  {
    goto LABEL_131;
  }

  v86 = sub_24A515AC8(v39 + *(v50 + 36));
  if ((v87 & 1) == 0)
  {
    goto LABEL_131;
  }

  sub_24A508AE4(*(v85 + 56) + 40 * v86, &v223);
  sub_24A508CA0(&v223, v226);
  sub_24A61B070(v39, type metadata accessor for FMFindingSessionState);
  v88 = v227;
  v89 = v228;
  sub_24A50A204(v226, v227);
  v90 = v214;
  (*(v89 + 16))(v88, v89);
  v91 = sub_24A614790(v90, v11);
  v92 = v11;
  v11 = (v12 + 8);
  v93 = *(v12 + 8);
  v93(v90, v34);
  sub_24A508C54(v226);
  v50 = v209;
  sub_24A50D63C((v209 + 3), &v223, &unk_27EF522E0, qword_24A637660);
  if (!v224)
  {

    result = sub_24A50D6A4(&v223, &unk_27EF522E0, qword_24A637660);
    if (v91)
    {
      return result;
    }

    v119 = sub_24A62E2F4();
    v120 = sub_24A62EF64();
    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      *v121 = 0;
      _os_log_impl(&dword_24A503000, v119, v120, "🧭 FMFindingSession: Trying to find a findable that ranges and is in the same group as seelected part.", v121, 2u);
      MEMORY[0x24C21BBE0](v121, -1, -1);
    }

    v39 = i;
    sub_24A61C0D4(v209, i, type metadata accessor for FMFindingSessionState);
    v122 = *(v39 + 8);
    if (*(v122 + 16))
    {
      v123 = sub_24A515AC8(v39 + *(v208 + 36));
      if (v124)
      {
        sub_24A508AE4(*(v122 + 56) + 40 * v123, &v223);
        sub_24A508CA0(&v223, v226);
        sub_24A61B070(v39, type metadata accessor for FMFindingSessionState);
        sub_24A611E34(v226);
        return sub_24A508C54(v226);
      }
    }

    goto LABEL_131;
  }

  v194 = v91;
  sub_24A508CA0(&v223, v226);
  v215 = v93;
  v94 = v227;
  v95 = v228;
  sub_24A50A204(v226, v227);
  (*(v95 + 16))(v94, v95);
  v197 = sub_24A614790(v90, v92);

  (v215)(v90, v34);
  v96 = *(v50 + 16);
  v97 = (v96 + 56);
  v98 = 1 << *(v96 + 32);
  if (v98 < 64)
  {
    v99 = ~(-1 << v98);
  }

  else
  {
    v99 = -1;
  }

  v100 = v12;
  v12 = v99 & *(v96 + 56);
  v39 = (v98 + 63) >> 6;
  v212 = (v100 + 16);
  v206 = v96;
  swift_bridgeObjectRetain_n();
  v101 = 0;
  v213 = v11;
  v40 = v50;
  v202 = v39;
  for (i = v97; ; v97 = i)
  {
    if (!v12)
    {
      v34 = v208;
      while (1)
      {
        v102 = v101 + 1;
        if (__OFADD__(v101, 1))
        {
          break;
        }

        if (v102 >= v39)
        {

          v125 = 2;
          v126 = v218;
          goto LABEL_55;
        }

        v12 = *&v97[8 * v102];
        ++v101;
        if (v12)
        {
          v101 = v102;
          goto LABEL_39;
        }
      }

      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      swift_once();
      goto LABEL_19;
    }

    v34 = v208;
LABEL_39:
    v103 = v205;
    v11 = *(*(v206 + 48) + ((v101 << 9) | (8 * __clz(__rbit64(v12)))));
    sub_24A61C0D4(v40, v205, type metadata accessor for FMFindingSessionState);
    v104 = *(v103 + 1);
    if (!*(v104 + 16))
    {

      goto LABEL_131;
    }

    v39 = *(v34 + 36);

    v105 = sub_24A515AC8(&v103[v39]);
    if ((v106 & 1) == 0)
    {
      goto LABEL_131;
    }

    sub_24A508AE4(*(v104 + 56) + 40 * v105, &v219);
    sub_24A508CA0(&v219, &v223);
    sub_24A61B070(v103, type metadata accessor for FMFindingSessionState);
    v107 = v224;
    v108 = v225;
    sub_24A50A204(&v223, v224);
    (*(v108 + 16))(v107, v108);
    if (*(v11 + 2))
    {
      v109 = *(v11 + 5);
      sub_24A61BDB4(&qword_27EF52310, MEMORY[0x277CC95F0]);
      v110 = sub_24A62EBB4();
      v111 = -1 << v11[32];
      v112 = v110 & ~v111;
      v211 = v11 + 56;
      if ((*&v11[((v112 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v112))
      {
        break;
      }
    }

LABEL_31:
    v12 &= v12 - 1;
    (v215)(v216, v218);
    sub_24A508C54(&v223);

    v40 = v209;
    v39 = v202;
  }

  v210 = ~v111;
  v113 = *(v217 + 72);
  v114 = *(v217 + 16);
  while (1)
  {
    v50 = v11;
    v115 = v214;
    v116 = v218;
    v114(v214, *(v11 + 6) + v113 * v112, v218);
    sub_24A61BDB4(&qword_27EF501E0, MEMORY[0x277CC95F0]);
    v117 = sub_24A62EBD4();
    (v215)(v115, v116);
    if (v117)
    {
      break;
    }

    v112 = (v112 + 1) & v210;
    v11 = v50;
    if (((*&v211[(v112 >> 3) & 0xFFFFFFFFFFFFFF8] >> v112) & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  v127 = v215;
  v126 = v218;
  (v215)(v216, v218);
  sub_24A508C54(&v223);

  v128 = v227;
  v129 = v228;
  sub_24A50A204(v226, v227);
  v130 = v214;
  (*(v129 + 16))(v128, v129);
  v131 = sub_24A614790(v130, v50);

  v127(v130, v126);
  v125 = v131 & 1;
  v34 = v208;
  v40 = v209;
LABEL_55:
  LODWORD(v217) = v125;
  v11 = v204[2];
  if (!v11)
  {

LABEL_80:
    v39 = v201;
    v142 = v198;
    if ((v197 & 1) == 0)
    {
      if ((v194 & 1) == 0)
      {
        goto LABEL_99;
      }

      v141 = 0;
      goto LABEL_89;
    }

    v141 = 0;
LABEL_82:
    sub_24A61C0D4(v40, v142, type metadata accessor for FMFindingSessionState);
    v145 = *(v142 + 8);
    if (*(v145 + 16))
    {
      v146 = sub_24A515AC8(v142 + *(v34 + 36));
      if (v147)
      {
        sub_24A508AE4(*(v145 + 56) + 40 * v146, &v223);
        sub_24A61B070(v142, type metadata accessor for FMFindingSessionState);
        v148 = v224;
        v149 = v225;
        sub_24A50A204(&v223, v224);
        v150 = v214;
        (*(v149 + 16))(v148, v149);
        v151 = v227;
        v152 = v228;
        sub_24A50A204(v226, v227);
        v153 = v199;
        (*(v152 + 16))(v151, v152);
        sub_24A61BDB4(&qword_27EF501E0, MEMORY[0x277CC95F0]);
        v154 = sub_24A62EBD4();
        v155 = v215;
        (v215)(v153, v126);
        v155(v150, v126);
        sub_24A508C54(&v223);
        v39 = v201;
        if ((v154 & 1) == 0)
        {
          v156 = sub_24A62E2F4();
          v157 = sub_24A62EF64();
          if (os_log_type_enabled(v156, v157))
          {
            v158 = swift_slowAlloc();
            *v158 = 0;
            v159 = "🧭 FMFindingSession: Transitioning back to pre-selected part.";
            goto LABEL_105;
          }

          goto LABEL_106;
        }

LABEL_89:
        sub_24A61C0D4(v40, v39, type metadata accessor for FMFindingSessionState);
        v160 = *(v39 + 8);
        if (*(v160 + 16))
        {
          v161 = sub_24A515AC8(v39 + *(v34 + 36));
          if (v162)
          {
            sub_24A508AE4(*(v160 + 56) + 40 * v161, &v223);
            sub_24A61B070(v39, type metadata accessor for FMFindingSessionState);
            v163 = v224;
            v164 = v225;
            sub_24A50A204(&v223, v224);
            v165 = v214;
            (*(v164 + 16))(v163, v164);
            v166 = v227;
            v167 = v228;
            sub_24A50A204(v226, v227);
            v168 = v199;
            (*(v167 + 16))(v166, v167);
            sub_24A61BDB4(&qword_27EF501E0, MEMORY[0x277CC95F0]);
            v169 = sub_24A62EBD4();
            v170 = v215;
            (v215)(v168, v126);
            v170(v165, v126);
            sub_24A508C54(&v223);
            if (v169 & 1) != 0 || v217 == 2 || (v217)
            {
              if (!v141)
              {
                return sub_24A508C54(v226);
              }

              v171 = sub_24A62E2F4();
              v172 = sub_24A62EF64();
              if (os_log_type_enabled(v171, v172))
              {
                v173 = swift_slowAlloc();
                *v173 = 0;
                _os_log_impl(&dword_24A503000, v171, v172, "🧭 FMFindingSession: Trying to find a findable that supports precise finding and is in the same group as primary part.", v173, 2u);
                MEMORY[0x24C21BBE0](v173, -1, -1);
              }

              sub_24A50D63C((v40 + 3), &v219, &unk_27EF522E0, qword_24A637660);
              if (v221)
              {
                goto LABEL_102;
              }

              v174 = v40;
              v39 = v195;
              goto LABEL_108;
            }

            v156 = sub_24A62E2F4();
            v157 = sub_24A62EF64();
            if (os_log_type_enabled(v156, v157))
            {
              v158 = swift_slowAlloc();
              *v158 = 0;
              v159 = "🧭 FMFindingSession: Current findable is not primary part and it's not grouped with primary part any longer. Transitioning back to pre-selected part.";
LABEL_105:
              _os_log_impl(&dword_24A503000, v156, v157, v159, v158, 2u);
              MEMORY[0x24C21BBE0](v158, -1, -1);
            }

LABEL_106:

            sub_24A60FEC8(v226);
            return sub_24A508C54(v226);
          }
        }
      }
    }

LABEL_131:
    v192 = 0;
    v190 = 30;
    goto LABEL_132;
  }

  v34 = 0;
  v40 = v204;
  v12 = (v204 + 4);
  v50 = 1;
  v37 = -1;
LABEL_58:
  if (v34 >= v40[2])
  {
    goto LABEL_124;
  }

  sub_24A508AE4(v12 + 40 * v34++, &v223);
  v39 = v224;
  v132 = v225;
  sub_24A50A204(&v223, v224);
  v133 = (*(v132 + 32))(v39, v132);
  v134 = 0;
  v135 = 1 << *(v133 + 32);
  if (v135 < 64)
  {
    v136 = ~(-1 << v135);
  }

  else
  {
    v136 = -1;
  }

  v137 = v136 & *(v133 + 56);
  v138 = (v135 + 63) >> 6;
  do
  {
    if (!v137)
    {
      while (1)
      {
        v139 = v134 + 1;
        if (__OFADD__(v134, 1))
        {
          __break(1u);
          goto LABEL_116;
        }

        if (v139 >= v138)
        {
          break;
        }

        v137 = *(v133 + 56 + 8 * v139);
        ++v134;
        if (v137)
        {
          v134 = v139;
          goto LABEL_69;
        }
      }

      sub_24A508C54(&v223);
      if (v34 != v11)
      {
        goto LABEL_58;
      }

      v34 = v208;
      v40 = v209;
      v126 = v218;
      goto LABEL_80;
    }

    v139 = v134;
LABEL_69:
    v140 = __clz(__rbit64(v137));
    v137 &= v137 - 1;
  }

  while ((*(*(v133 + 48) + ((v139 << 7) | (2 * v140))) & 0x80000000) == 0);

  sub_24A508C54(&v223);
  if (v197)
  {
    v141 = 1;
    v34 = v208;
    v40 = v209;
    v126 = v218;
    v142 = v198;
    goto LABEL_82;
  }

  v34 = v208;
  v40 = v209;
  v126 = v218;
  v39 = v201;
  if (v194)
  {
    v141 = 1;
    goto LABEL_89;
  }

LABEL_99:
  v175 = sub_24A62E2F4();
  v176 = sub_24A62EF64();
  if (os_log_type_enabled(v175, v176))
  {
    v177 = swift_slowAlloc();
    *v177 = 0;
    _os_log_impl(&dword_24A503000, v175, v176, "🧭 FMFindingSession: Trying to find a findable that ranges and is in the same group as primary part.", v177, 2u);
    MEMORY[0x24C21BBE0](v177, -1, -1);
  }

  sub_24A50D63C((v40 + 3), &v219, &unk_27EF522E0, qword_24A637660);
  if (v221)
  {
LABEL_102:
    sub_24A508CA0(&v219, &v223);
    goto LABEL_112;
  }

  v174 = v40;
  v39 = v196;
LABEL_108:
  sub_24A61C0D4(v174, v39, type metadata accessor for FMFindingSessionState);
  v178 = *(v39 + 8);
  if (!*(v178 + 16))
  {
    goto LABEL_131;
  }

  v179 = sub_24A515AC8(v39 + *(v34 + 36));
  if ((v180 & 1) == 0)
  {
    goto LABEL_131;
  }

  sub_24A508AE4(*(v178 + 56) + 40 * v179, &v223);
  sub_24A61B070(v39, type metadata accessor for FMFindingSessionState);
  if (v221)
  {
    sub_24A50D6A4(&v219, &unk_27EF522E0, qword_24A637660);
  }

LABEL_112:
  sub_24A611E34(&v223);
  sub_24A508C54(&v223);
  return sub_24A508C54(v226);
}

void sub_24A611E34(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24A62E214();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v31[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_24A508FA4(&unk_27EF52410, &qword_24A633C90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v31[-v11];
  v13 = v2 + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state;
  swift_beginAccess();
  v14 = *(v13 + 16);
  v32 = a1;

  v15 = sub_24A60DD58(sub_24A61BD94, v31, v14);

  if (v15)
  {
    v16 = sub_24A62EE24();
    (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
    sub_24A508AE4(a1, &v34);
    sub_24A62EE04();

    v17 = sub_24A62EDF4();
    v18 = swift_allocObject();
    v19 = MEMORY[0x277D85700];
    v18[2] = v17;
    v18[3] = v19;
    v18[4] = v2;
    v18[5] = v15;
    sub_24A508CA0(&v34, (v18 + 6));
    sub_24A51556C(0, 0, v12, &unk_24A63C0D0, v18);
  }

  else
  {
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v20 = sub_24A62E314();
    sub_24A506EB8(v20, qword_27EF5C118);
    sub_24A508AE4(a1, &v34);
    v21 = sub_24A62E2F4();
    v22 = sub_24A62EF44();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v33 = v24;
      *v23 = 136315138;
      v25 = v35;
      v26 = v36;
      sub_24A50A204(&v34, v35);
      (*(v26 + 16))(v25, v26);
      sub_24A61BDB4(&qword_27EF4F660, MEMORY[0x277CC95F0]);
      v27 = sub_24A62F614();
      v29 = v28;
      (*(v5 + 8))(v8, v4);
      sub_24A508C54(&v34);
      v30 = sub_24A509BA8(v27, v29, &v33);

      *(v23 + 4) = v30;
      _os_log_impl(&dword_24A503000, v21, v22, "🧭 FMFindingSession: Findable: %s does not belong to any group.", v23, 0xCu);
      sub_24A508C54(v24);
      MEMORY[0x24C21BBE0](v24, -1, -1);
      MEMORY[0x24C21BBE0](v23, -1, -1);
    }

    else
    {

      sub_24A508C54(&v34);
    }
  }
}

unint64_t FindingExperienceType.description.getter()
{
  v1 = *v0;
  v2 = (v1 >> 13) & 3;
  if (v2)
  {
    if (v2 != 1)
    {
      return 0xD000000000000013;
    }

    sub_24A62F384();
    v3 = 0x696D69786F72702ELL;
    v4 = 0xEB00000000287974;
  }

  else
  {
    sub_24A62F384();
    v3 = 0x697369636572702ELL;
    v4 = 0xEB00000000286E6FLL;
  }

  MEMORY[0x24C21A5D0](v3, v4);
  if (v1)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0x74696D69786F7270;
  }

  if (v1)
  {
    v6 = 0x800000024A63CED0;
  }

  else
  {
    v6 = 0xEB00000000495579;
  }

  MEMORY[0x24C21A5D0](v5, v6);

  MEMORY[0x24C21A5D0](8236, 0xE200000000000000);
  sub_24A62F434();
  MEMORY[0x24C21A5D0](41, 0xE100000000000000);
  return 0;
}

void sub_24A6125B0(uint64_t a1)
{
  v2 = sub_24A508FA4(&qword_27EF52420, &qword_24A63C0D8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - v5;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  (*(v3 + 16))(v6, a1, v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v6, v2);
  *(v9 + ((v4 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;
  v10 = type metadata accessor for FMR1AvailabilityHelper.FMR1AvailabilityHelperTrampoline();
  v11 = objc_allocWithZone(v10);
  v12 = &v11[OBJC_IVAR____TtCC11FMFindingUI22FMR1AvailabilityHelper32FMR1AvailabilityHelperTrampoline_handler];
  *v12 = sub_24A61C01C;
  v12[1] = v9;
  v19.receiver = v11;
  v19.super_class = v10;

  v13 = objc_msgSendSuper2(&v19, sel_init);
  sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  v14 = v13;
  v15 = sub_24A62F014();
  v16 = [objc_allocWithZone(MEMORY[0x277D43C50]) initWithDelegate:v14 queue:v15];

  swift_beginAccess();
  v17 = *(v7 + 16);
  *(v7 + 16) = v16;
}

void sub_24A6127DC(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v5 = a1;
    sub_24A508FA4(&qword_27EF52420, &qword_24A63C0D8);
    sub_24A62EDD4();
  }

  else
  {
    sub_24A508FA4(&qword_27EF52420, &qword_24A63C0D8);
    sub_24A62EDE4();
  }

  swift_beginAccess();
  v6 = *(a4 + 16);
  swift_beginAccess();
  *(a4 + 16) = 0;
}

void sub_24A612894(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + OBJC_IVAR____TtC11FMFindingUI23FMUWBAvailabilityHelper_handler);
  v5 = *(v2 + OBJC_IVAR____TtC11FMFindingUI23FMUWBAvailabilityHelper_handler);
  v6 = *(v2 + OBJC_IVAR____TtC11FMFindingUI23FMUWBAvailabilityHelper_handler + 8);
  *v4 = a1;
  v4[1] = a2;
  sub_24A5173CC(a1);
  sub_24A50D354(v5);
  v7 = v2 + OBJC_IVAR____TtC11FMFindingUI23FMUWBAvailabilityHelper_result;
  v8 = *(v2 + OBJC_IVAR____TtC11FMFindingUI23FMUWBAvailabilityHelper_result + 8);
  if (v8 == 255)
  {

    sub_24A50D354(a1);
  }

  else
  {
    v9 = *v4;
    if (*v4)
    {
      v10 = *v7;
      v11 = v4[1];
      sub_24A61BD58(*v7, v8);
      sub_24A5173CC(v9);
      v9(v10, v8 & 1);
      sub_24A50D354(a1);
      sub_24A61BD7C(v10, v8);
      v12 = v9;
    }

    else
    {
      v12 = a1;
    }

    sub_24A50D354(v12);
    v13 = *v7;
    *v7 = 0;
    v14 = *(v7 + 8);
    *(v7 + 8) = -1;

    sub_24A61BD7C(v13, v14);
  }
}

void sub_24A612AB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = (v2 + OBJC_IVAR____TtC11FMFindingUI23FMUWBAvailabilityHelper_handler);
  v5 = *(v2 + OBJC_IVAR____TtC11FMFindingUI23FMUWBAvailabilityHelper_handler);
  v6 = v4[1];
  *v4 = a1;
  v4[1] = a2;

  sub_24A50D354(v5);
  v7 = v3 + OBJC_IVAR____TtC11FMFindingUI23FMUWBAvailabilityHelper_result;
  v8 = *(v3 + OBJC_IVAR____TtC11FMFindingUI23FMUWBAvailabilityHelper_result + 8);
  if (v8 != 255)
  {
    v9 = *v7;
    v10 = *v4;
    if (*v4)
    {
      v11 = v4[1];
      v12 = *v7;
      v13 = *(v3 + OBJC_IVAR____TtC11FMFindingUI23FMUWBAvailabilityHelper_result + 8);
      sub_24A61BD58(v9, v8);
      sub_24A5173CC(v10);
      v10(v12, v13 & 1);
      sub_24A61BD7C(v12, v13);
      sub_24A50D354(v10);
      v9 = *v7;
      LOBYTE(v8) = *(v7 + 8);
    }

    *v7 = 0;
    *(v7 + 8) = -1;
    sub_24A61BD7C(v9, v8);
  }

  v14 = OBJC_IVAR____TtC11FMFindingUI23FMUWBAvailabilityHelper_niSession;
  if (!*(v3 + OBJC_IVAR____TtC11FMFindingUI23FMUWBAvailabilityHelper_niSession))
  {
    v15 = [objc_allocWithZone(MEMORY[0x277CD8A68]) init];
    v16 = *(v3 + v14);
    *(v3 + v14) = v15;
    v17 = v15;

    if (v17)
    {
      [v17 setDelegate_];
    }

    v18 = *(v3 + v14);
    if (v18)
    {
      v19 = objc_allocWithZone(MEMORY[0x277CD8A70]);
      v20 = v18;
      v21 = [v19 init];
      [v20 runWithConfiguration_];
    }
  }
}

id sub_24A612CE8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_24A612D8C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for FMFindingLocalizerError(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      v5 = sub_24A62E214();
      (*(*(v5 - 8) + 32))(a2, a1, v5);
    }

    else
    {
      *a2 = *a1;
    }

LABEL_4:
    type metadata accessor for FMFindingSession.Error(0);
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload == 4)
    {
      *a2 = *a1;
    }

    goto LABEL_4;
  }

  v6 = *(a1 + *(sub_24A508FA4(&unk_27EF4FE70, &unk_24A635DC0) + 48));
  v7 = *(sub_24A508FA4(&qword_27EF4F658, &unk_24A633E10) + 48);
  v8 = sub_24A62E214();
  (*(*(v8 - 8) + 32))(a2, a1, v8);
  *(a2 + v7) = v6;
  type metadata accessor for FMFindingSession.Error(0);
LABEL_11:

  return swift_storeEnumTagMultiPayload();
}

uint64_t FMFindingSession.__deallocating_deinit()
{
  FMFindingSession.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void *FMFindingSession.__allocating_init(itemGroupFindables:primaryPart:groupName:findingType:arSession:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unsigned __int16 *a5, uint64_t a6)
{
  v85 = a6;
  v88 = a2;
  v102 = sub_24A62E214();
  v101 = *(v102 - 8);
  v10 = *(v101 + 64);
  MEMORY[0x28223BE20](v102);
  v91 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v94 = &v83 - v13;
  MEMORY[0x28223BE20](v14);
  v90 = &v83 - v15;
  v84 = *a5;
  v16 = *(a1 + 16);
  if (v16)
  {
    v114 = MEMORY[0x277D84F90];
    result = sub_24A58DA18(0, v16, 0);
    v18 = 0;
    v99 = a1 + 32;
    v19 = v114;
    v97 = a1;
    v96 = v16;
    while (1)
    {
      if (v18 >= *(a1 + 16))
      {
        goto LABEL_88;
      }

      v98 = v19;
      v100 = v18;
      v20 = *(v99 + 8 * v18);
      v21 = *(v20 + 16);

      if (v21)
      {
        break;
      }

      v24 = MEMORY[0x277D84F90];
LABEL_19:

      v19 = v98;
      v114 = v98;
      v30 = v98[2];
      v29 = v98[3];
      if (v30 >= v29 >> 1)
      {
        result = sub_24A58DA18((v29 > 1), v30 + 1, 1);
        v19 = v114;
      }

      v18 = v100 + 1;
      v19[2] = v30 + 1;
      v19[v30 + 4] = v24;
      a1 = v97;
      if (v18 == v96)
      {

        goto LABEL_24;
      }
    }

    v22 = 0;
    v23 = v20 + 32;
    v24 = MEMORY[0x277D84F90];
    while (v22 < *(v20 + 16))
    {
      sub_24A508AE4(v23, &v111);
      sub_24A508AE4(&v111, v105);
      sub_24A508FA4(&unk_27EF501B0, &unk_24A633B00);
      sub_24A508FA4(&unk_27EF52300, &qword_24A636230);
      if (swift_dynamicCast())
      {
        sub_24A508CA0(v103, &v109);
        sub_24A508AE4(&v109, v105);
        v107 = type metadata accessor for FMNIFindableGroupItem(0);
        v108 = &off_285DA7A78;
        v25 = sub_24A5292E8(&v106);

        sub_24A5AE0E8(v105, a3, a4, v25);
        sub_24A508C54(&v109);
      }

      else
      {
        v104 = 0;
        memset(v103, 0, sizeof(v103));
        sub_24A50D6A4(v103, &unk_27EF501C0, &unk_24A636238);
        sub_24A508AE4(&v111, &v109);
        v107 = type metadata accessor for FMFindableGroupItem(0);
        v108 = &off_285DA7AA0;
        v26 = sub_24A5292E8(&v106);

        sub_24A5ADA04(&v109, a3, a4, v26);
      }

      sub_24A508C54(&v111);
      if (v107)
      {
        sub_24A508CA0(&v106, &v109);
        sub_24A508CA0(&v109, &v106);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_24A617B34(0, v24[2] + 1, 1, v24, &qword_27EF51AC8, &qword_24A63B088, &unk_27EF4FF20, &unk_24A635E40);
        }

        v28 = v24[2];
        v27 = v24[3];
        if (v28 >= v27 >> 1)
        {
          v24 = sub_24A617B34((v27 > 1), v28 + 1, 1, v24, &qword_27EF51AC8, &qword_24A63B088, &unk_27EF4FF20, &unk_24A635E40);
        }

        v24[2] = v28 + 1;
        sub_24A508CA0(&v106, &v24[5 * v28 + 4]);
      }

      else
      {
        sub_24A50D6A4(&v106, &unk_27EF50520, &unk_24A633B10);
      }

      ++v22;
      v23 += 40;
      if (v21 == v22)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_56:

    sub_24A508C54(&v111);
    v49 = 1;
LABEL_57:
    sub_24A50D63C(v88, &v109, &unk_27EF522E0, qword_24A637660);
    if (v110)
    {
      v51 = sub_24A508CA0(&v109, &v111);
      v52 = MEMORY[0x277D84F90];
      if (v49)
      {
        MEMORY[0x28223BE20](v51);
        *(&v83 - 2) = &v111;
        v53 = v87;
        v54 = sub_24A60E2E4(sub_24A61B850, (&v83 - 4), a4, sub_24A50D850, sub_24A58D9F8);
        v87 = v53;
        v55 = sub_24A60E1AC(v54);

        sub_24A508C54(&v111);
LABEL_63:
        v56 = v98[2];
        if (v56)
        {
          v83 = v55;
          *&v109 = v52;
          sub_24A58D9D8(0, v56, 0);
          result = v98;
          v57 = 0;
          v58 = v109;
          v92 = v98 + 4;
          v99 = v101 + 32;
          v59 = (v101 + 8);
          v93 = v56;
          v89 = v101 + 16;
          while (v57 < result[2])
          {
            v97 = v58;
            v96 = v57;
            v60 = v92[v57];
            v61 = *(v60 + 16);
            v95 = v60;
            if (v61)
            {
              *&v106 = v52;

              sub_24A58D8A8(0, v61, 0);
              v62 = v106;
              v63 = v60 + 32;
              do
              {
                sub_24A508AE4(v63, &v111);
                v65 = v112;
                v64 = v113;
                sub_24A50A204(&v111, v112);
                (*(*(v64 + 8) + 16))(v65);
                sub_24A508C54(&v111);
                *&v106 = v62;
                v67 = *(v62 + 16);
                v66 = *(v62 + 24);
                if (v67 >= v66 >> 1)
                {
                  sub_24A58D8A8(v66 > 1, v67 + 1, 1);
                  v62 = v106;
                }

                *(v62 + 16) = v67 + 1;
                (*(v101 + 32))(v62 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v67, v23, v102);
                v63 += 40;
                --v61;
              }

              while (v61);
            }

            else
            {

              v62 = v52;
            }

            v68 = *(v62 + 16);
            v69 = sub_24A61BDB4(&qword_27EF52310, MEMORY[0x277CC95F0]);
            v70 = v68;
            v71 = v102;
            v111 = MEMORY[0x24C21A7A0](v70, v102, v69);
            v72 = *(v62 + 16);
            if (v72)
            {
              v73 = v62 + ((*(v101 + 80) + 32) & ~*(v101 + 80));
              v100 = *(v101 + 72);
              v74 = *(v101 + 16);
              v75 = v91;
              v76 = v90;
              do
              {
                v74(v76, v73, v71);
                sub_24A617C9C(v75, v76);
                v71 = v102;
                (*v59)(v75, v102);
                v73 += v100;
                --v72;
              }

              while (v72);

              v23 = v94;
              v52 = MEMORY[0x277D84F90];
            }

            else
            {
            }

            v77 = v111;
            v58 = v97;
            *&v109 = v97;
            v79 = *(v97 + 16);
            v78 = *(v97 + 24);
            result = v98;
            if (v79 >= v78 >> 1)
            {
              sub_24A58D9D8((v78 > 1), v79 + 1, 1);
              result = v98;
              v58 = v109;
            }

            v57 = v96 + 1;
            *(v58 + 16) = v79 + 1;
            *(v58 + 8 * v79 + 32) = v77;
            if (v57 == v93)
            {

              v55 = v83;
              goto LABEL_83;
            }
          }

          goto LABEL_87;
        }

        v58 = MEMORY[0x277D84F90];
LABEL_83:
        v80 = sub_24A61B408(v58);

        v81 = v88;
        sub_24A50D63C(v88, &v111, &unk_27EF522E0, qword_24A637660);
        LOWORD(v109) = v84;
        v82 = (*(v86 + 248))(v55, &v111, &v109, v80, v85);
        sub_24A50D6A4(v81, &unk_27EF522E0, qword_24A637660);
        return v82;
      }

      sub_24A508C54(&v111);
    }

    else
    {
      sub_24A50D6A4(&v109, &unk_27EF522E0, qword_24A637660);
      v52 = MEMORY[0x277D84F90];
    }

    v55 = sub_24A60E1AC(a4);

    goto LABEL_63;
  }

  v19 = MEMORY[0x277D84F90];
LABEL_24:
  v31 = v19[2];
  a4 = MEMORY[0x277D84F90];
  v98 = v19;
  if (!v31)
  {
LABEL_42:
    v43 = a4[2];
    if (v43)
    {
      v44 = 0;
      v45 = (a4 + 4);
      v46 = v43 - 1;
      while (v44 < a4[2])
      {
        sub_24A508AE4(v45, &v111);
        v47 = v112;
        v48 = v113;
        sub_24A50A204(&v111, v112);
        (*(v48 + 32))(&v109, v47, v48);
        if (v109 <= 2u && v109)
        {
          v23 = v94;
          if (v109 != 2)
          {
            goto LABEL_56;
          }
        }

        else
        {
          v23 = v94;
        }

        v49 = sub_24A62F634();

        result = sub_24A508C54(&v111);
        if ((v49 & 1) == 0)
        {
          v45 += 40;
          if (v46 != v44++)
          {
            continue;
          }
        }

        goto LABEL_57;
      }

      goto LABEL_89;
    }

    v49 = 0;
    v23 = v94;
    goto LABEL_57;
  }

  v32 = 0;
  v33 = v19 + 4;
  while (v32 < v19[2])
  {
    v34 = v33[v32];
    v35 = *(v34 + 16);
    v36 = a4[2];
    v37 = v36 + v35;
    if (__OFADD__(v36, v35))
    {
      goto LABEL_85;
    }

    v38 = v33[v32];

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v37 <= a4[3] >> 1)
    {
      if (*(v34 + 16))
      {
        goto LABEL_38;
      }
    }

    else
    {
      if (v36 <= v37)
      {
        v39 = v36 + v35;
      }

      else
      {
        v39 = v36;
      }

      result = sub_24A617B34(result, v39, 1, a4, &qword_27EF51AC8, &qword_24A63B088, &unk_27EF4FF20, &unk_24A635E40);
      a4 = result;
      if (*(v34 + 16))
      {
LABEL_38:
        if ((a4[3] >> 1) - a4[2] < v35)
        {
          goto LABEL_90;
        }

        sub_24A508FA4(&unk_27EF4FF20, &unk_24A635E40);
        swift_arrayInitWithCopy();

        v19 = v98;
        if (v35)
        {
          v40 = a4[2];
          v41 = __OFADD__(v40, v35);
          v42 = v40 + v35;
          if (v41)
          {
            goto LABEL_91;
          }

          a4[2] = v42;
        }

        goto LABEL_27;
      }
    }

    v19 = v98;
    if (v35)
    {
      goto LABEL_86;
    }

LABEL_27:
    if (v31 == ++v32)
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
  return result;
}

uint64_t sub_24A613CE8(void *a1, void *a2)
{
  v4 = sub_24A62E214();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  v12 = a1[3];
  v13 = a1[4];
  sub_24A50A204(a1, v12);
  (*(v13 + 32))(&v23, v12, v13);
  if (v23 <= 1u && v23)
  {

    goto LABEL_6;
  }

  v14 = sub_24A62F634();

  if (v14)
  {
LABEL_6:
    v19 = 1;
    return v19 & 1;
  }

  v16 = a1[3];
  v15 = a1[4];
  sub_24A50A204(a1, v16);
  (*(*(v15 + 8) + 16))(v16);
  v17 = a2[3];
  v18 = a2[4];
  sub_24A50A204(a2, v17);
  (*(v18 + 16))(v17, v18);
  v19 = sub_24A62E1E4();
  v20 = *(v5 + 8);
  v20(v8, v4);
  v20(v11, v4);
  return v19 & 1;
}

void *FMFindingSession.__allocating_init(itemGroupFindables:primaryPart:groupName:findingTechnology:arSession:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, __int16 *a5, uint64_t a6)
{
  v11 = *a5;
  sub_24A50D63C(a2, v14, &unk_27EF522E0, qword_24A637660);
  v15 = v11 | 0x4000;
  v12 = FMFindingSession.__allocating_init(itemGroupFindables:primaryPart:groupName:findingType:arSession:)(a1, v14, a3, a4, &v15, a6);
  sub_24A50D6A4(a2, &unk_27EF522E0, qword_24A637660);
  return v12;
}

uint64_t FMFindingSession.__allocating_init(findable:findingType:arSession:)(uint64_t *a1, __int16 *a2, uint64_t a3)
{
  v6 = *a2;
  sub_24A508FA4(&unk_27EF4FF40, &unk_24A635E60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24A633830;
  sub_24A508AE4(a1, inited + 32);
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v11 = v6;
  v8 = _sSh11FMFindingUIShy10Foundation4UUIDVGRszrlE4from9findablesShyAEGSayAA10FMFindable_pG_tFZ_0(inited);
  v9 = (*(v3 + 248))(inited, v12, &v11, v8, a3);
  sub_24A508C54(a1);
  return v9;
}

uint64_t FMFindingSession.__allocating_init(findable:findingTechnology:arSession:)(uint64_t *a1, __int16 *a2, uint64_t a3)
{
  v6 = *a2;
  sub_24A508FA4(&unk_27EF4FF40, &unk_24A635E60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24A633830;
  sub_24A508AE4(a1, inited + 32);
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v11 = v6 | 0x4000;
  v8 = _sSh11FMFindingUIShy10Foundation4UUIDVGRszrlE4from9findablesShyAEGSayAA10FMFindable_pG_tFZ_0(inited);
  v9 = (*(v3 + 248))(inited, v12, &v11, v8, a3);
  sub_24A508C54(a1);
  return v9;
}

uint64_t sub_24A6141E8(uint64_t a1, uint64_t a2, unsigned __int16 *a3, char *a4, void *a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  sub_24A60E654(a1, a2, a3, a4, a5);
  return v13;
}

uint64_t sub_24A614268(void *a1, uint64_t a2)
{
  v4 = sub_24A62E214();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v35 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_24A508FA4(&unk_27EF52480, &unk_24A633B20);
  v8 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v10 = &v34 - v9;
  v11 = sub_24A508FA4(&unk_27EF4FEE0, &qword_24A6369F0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v36 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v34 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v34 - v18;
  v20 = a1[3];
  v21 = a1[4];
  sub_24A50A204(a1, v20);
  (*(v21 + 16))(v20, v21);
  v41 = v5;
  v22 = *(v5 + 56);
  v22(v19, 0, 1, v4);
  sub_24A50D63C(a2, v38, &unk_27EF522E0, qword_24A637660);
  v23 = v39;
  if (v39)
  {
    v24 = v40;
    sub_24A50A204(v38, v39);
    (*(v24 + 16))(v23, v24);
    v22(v17, 0, 1, v4);
    sub_24A508C54(v38);
  }

  else
  {
    sub_24A50D6A4(v38, &unk_27EF522E0, qword_24A637660);
    v22(v17, 1, 1, v4);
  }

  v25 = *(v37 + 48);
  sub_24A50D63C(v19, v10, &unk_27EF4FEE0, &qword_24A6369F0);
  sub_24A50D63C(v17, &v10[v25], &unk_27EF4FEE0, &qword_24A6369F0);
  v26 = *(v41 + 48);
  if (v26(v10, 1, v4) != 1)
  {
    v28 = v36;
    sub_24A50D63C(v10, v36, &unk_27EF4FEE0, &qword_24A6369F0);
    if (v26(&v10[v25], 1, v4) != 1)
    {
      v29 = v41;
      v30 = &v10[v25];
      v31 = v35;
      (*(v41 + 32))(v35, v30, v4);
      sub_24A61BDB4(&qword_27EF501E0, MEMORY[0x277CC95F0]);
      LODWORD(v37) = sub_24A62EBD4();
      v32 = *(v29 + 8);
      v32(v31, v4);
      sub_24A50D6A4(v17, &unk_27EF4FEE0, &qword_24A6369F0);
      sub_24A50D6A4(v19, &unk_27EF4FEE0, &qword_24A6369F0);
      v32(v28, v4);
      sub_24A50D6A4(v10, &unk_27EF4FEE0, &qword_24A6369F0);
      v27 = v37 ^ 1;
      return v27 & 1;
    }

    sub_24A50D6A4(v17, &unk_27EF4FEE0, &qword_24A6369F0);
    sub_24A50D6A4(v19, &unk_27EF4FEE0, &qword_24A6369F0);
    (*(v41 + 8))(v28, v4);
    goto LABEL_9;
  }

  sub_24A50D6A4(v17, &unk_27EF4FEE0, &qword_24A6369F0);
  sub_24A50D6A4(v19, &unk_27EF4FEE0, &qword_24A6369F0);
  if (v26(&v10[v25], 1, v4) != 1)
  {
LABEL_9:
    sub_24A50D6A4(v10, &unk_27EF52480, &unk_24A633B20);
    v27 = 1;
    return v27 & 1;
  }

  sub_24A50D6A4(v10, &unk_27EF4FEE0, &qword_24A6369F0);
  v27 = 0;
  return v27 & 1;
}

uint64_t sub_24A614790(uint64_t a1, uint64_t a2)
{
  v3 = sub_24A62E214();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_24A61BDB4(&qword_27EF52310, MEMORY[0x277CC95F0]), v9 = sub_24A62EBB4(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_24A61BDB4(&qword_27EF501E0, MEMORY[0x277CC95F0]);
      v17 = sub_24A62EBD4();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_24A6149A8(uint64_t *a1, void *a2)
{
  v4 = sub_24A62E214();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a2[3];
  v11 = a2[4];
  sub_24A50A204(a2, v10);
  (*(v11 + 16))(v10, v11);
  LOBYTE(a2) = sub_24A614790(v8, v9);
  (*(v5 + 8))(v8, v4);
  return a2 & 1;
}

uint64_t sub_24A614ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[36] = a5;
  v6[37] = a6;
  v6[35] = a4;
  v7 = type metadata accessor for FMFindingSession.Error(0);
  v6[38] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[39] = swift_task_alloc();
  v9 = sub_24A62E214();
  v6[40] = v9;
  v10 = *(v9 - 8);
  v6[41] = v10;
  v11 = *(v10 + 64) + 15;
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  v6[44] = swift_task_alloc();
  v12 = *(*(type metadata accessor for FMFindingSessionState() - 8) + 64) + 15;
  v6[45] = swift_task_alloc();
  sub_24A62EE04();
  v6[46] = sub_24A62EDF4();
  v14 = sub_24A62EDC4();
  v6[47] = v14;
  v6[48] = v13;

  return MEMORY[0x2822009F8](sub_24A614C38, v14, v13);
}

uint64_t sub_24A614C38()
{
  v96 = v0;
  v1 = *(v0 + 360);
  v2 = *(v0 + 280) + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state;
  swift_beginAccess();
  v93 = v2;
  sub_24A61C0D4(v2, v1, type metadata accessor for FMFindingSessionState);
  v3 = *(v1 + 8);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = sub_24A5E4FC4(*(v3 + 16), 0);
    v6 = sub_24A5CE86C(&v95, (v5 + 4), v4, v3);
    swift_bridgeObjectRetain_n();
    sub_24A55B6D4();
    if (v6 == v4)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = MEMORY[0x277D84F90];
LABEL_5:
  v95 = v5;
  sub_24A5CDB08(&v95);
  v7 = *(v0 + 360);

  v8 = v95;
  v9 = swift_task_alloc();
  *(v9 + 16) = v7;
  v10 = sub_24A60E2E4(sub_24A61BF10, v9, v8, sub_24A508CA0, sub_24A58D908);

  sub_24A61B070(v7, type metadata accessor for FMFindingSessionState);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = *(v0 + 328);
    v95 = MEMORY[0x277D84F90];
    sub_24A58D8A8(0, v11, 0);
    v13 = v95;
    v14 = v10 + 32;
    do
    {
      v15 = *(v0 + 352);
      sub_24A508AE4(v14, v0 + 16);
      v16 = *(v0 + 40);
      v17 = *(v0 + 48);
      sub_24A50A204((v0 + 16), v16);
      (*(v17 + 16))(v16, v17);
      sub_24A508C54((v0 + 16));
      v95 = v13;
      v19 = v13[2];
      v18 = v13[3];
      if (v19 >= v18 >> 1)
      {
        sub_24A58D8A8(v18 > 1, v19 + 1, 1);
        v13 = v95;
      }

      v20 = *(v0 + 352);
      v21 = *(v0 + 320);
      v13[2] = v19 + 1;
      (*(v12 + 32))(v13 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v19, v20, v21);
      v14 += 40;
      --v11;
    }

    while (v11);
  }

  else
  {

    v13 = MEMORY[0x277D84F90];
  }

  v22 = *(v0 + 328);
  v23 = *(v0 + 288);
  v24 = sub_24A61B0D0(v13);

  v25 = sub_24A618CC4(v24, v23);

  v26 = v25 + 56;
  v27 = -1;
  v28 = -1 << v25[32];
  if (-v28 < 64)
  {
    v27 = ~(-1 << -v28);
  }

  v29 = v27 & *(v25 + 7);
  v30 = (63 - v28) >> 6;
  v92 = (v22 + 8);

  v31 = 0;
  v32 = MEMORY[0x277D84F90];
  v91 = v25;
  *(v0 + 392) = MEMORY[0x277D84F90];
  if (v29)
  {
    while (1)
    {
LABEL_22:
      v34 = __clz(__rbit64(v29));
      v29 &= v29 - 1;
      (*(v22 + 16))(*(v0 + 344), *(v25 + 6) + *(v22 + 72) * (v34 | (v31 << 6)), *(v0 + 320));
      v35 = *(v93 + 8);
      if (!*(v35 + 16))
      {
        goto LABEL_17;
      }

      v36 = *(v0 + 344);
      v37 = *(v93 + 8);

      v38 = sub_24A515AC8(v36);
      if (v39)
      {
        v40 = *(v0 + 344);
        v41 = *(v0 + 320);
        sub_24A508AE4(*(v35 + 56) + 40 * v38, v0 + 96);
        (*v92)(v40, v41);

        sub_24A508CA0((v0 + 96), v0 + 56);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_24A617B34(0, v32[2] + 1, 1, v32, &unk_27EF4FF40, &unk_24A635E60, &unk_27EF501B0, &unk_24A633B00);
        }

        v43 = v32[2];
        v42 = v32[3];
        v25 = v91;
        if (v43 >= v42 >> 1)
        {
          v32 = sub_24A617B34((v42 > 1), v43 + 1, 1, v32, &unk_27EF4FF40, &unk_24A635E60, &unk_27EF501B0, &unk_24A633B00);
        }

        v32[2] = v43 + 1;
        sub_24A508CA0((v0 + 56), &v32[5 * v43 + 4]);
        *(v0 + 392) = v32;
        if (!v29)
        {
          goto LABEL_18;
        }
      }

      else
      {

LABEL_17:
        (*v92)(*(v0 + 344), *(v0 + 320));
        *(v0 + 392) = v32;
        if (!v29)
        {
          goto LABEL_18;
        }
      }
    }
  }

  while (1)
  {
LABEL_18:
    v33 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    if (v33 >= v30)
    {
      break;
    }

    v29 = *&v26[8 * v33];
    ++v31;
    if (v29)
    {
      v31 = v33;
      goto LABEL_22;
    }
  }

  v44 = v32[2];
  *(v0 + 400) = v44;
  v45 = (v32 + 4);
  v46 = -v44;
  v47 = -1;
  do
  {
    v48 = v46 + v47;
    if (v46 + v47 == -1)
    {
      break;
    }

    if (++v47 >= v32[2])
    {
      goto LABEL_61;
    }

    v49 = v45 + 40;
    sub_24A508AE4(v45, v0 + 136);
    v50 = *(v0 + 160);
    v51 = *(v0 + 168);
    sub_24A50A204((v0 + 136), v50);
    v52 = (*(v51 + 32))(v50, v51);
    LOBYTE(v50) = sub_24A5E05A8(v52);

    sub_24A508C54((v0 + 136));
    v45 = v49;
  }

  while ((v50 & 1) == 0);
  v53 = *(*(v0 + 280) + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_findingType);
  v54 = (v53 >> 13) & 3;
  if (!v54)
  {
    goto LABEL_43;
  }

  if (v54 == 1)
  {
    v55 = *(v0 + 368);

    if (v48 != -1)
    {
      v56 = *(v0 + 280);
      v57 = *(v56 + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_uwbAvailabilityHelper);

      sub_24A612AB0(sub_24A61BF30, v56);
      goto LABEL_44;
    }

    goto LABEL_45;
  }

  if ((v53 & 0x80000000) != 0 || v48 == -1)
  {
LABEL_43:
    v61 = *(v0 + 368);
LABEL_44:

LABEL_45:
    v62 = *(v0 + 392);
    if (!*(v0 + 400))
    {
      v68 = *(v0 + 392);

      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v69 = *(v0 + 296);
      v70 = sub_24A62E314();
      sub_24A506EB8(v70, qword_27EF5C118);
      sub_24A508AE4(v69, v0 + 216);
      v71 = sub_24A62E2F4();
      v72 = sub_24A62EF64();
      if (os_log_type_enabled(v71, v72))
      {
        v74 = *(v0 + 328);
        v73 = *(v0 + 336);
        v94 = *(v0 + 320);
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v95 = v76;
        *v75 = 136315138;
        v77 = *(v0 + 240);
        v78 = *(v0 + 248);
        sub_24A50A204((v0 + 216), v77);
        (*(v78 + 16))(v77, v78);
        sub_24A61BDB4(&qword_27EF4F660, MEMORY[0x277CC95F0]);
        v79 = sub_24A62F614();
        v81 = v80;
        (*(v74 + 8))(v73, v94);
        sub_24A508C54((v0 + 216));
        v82 = sub_24A509BA8(v79, v81, &v95);

        *(v75 + 4) = v82;
        _os_log_impl(&dword_24A503000, v71, v72, "🧭 FMFindingSession: No ranging parts in the group for findable: %s.", v75, 0xCu);
        sub_24A508C54(v76);
        MEMORY[0x24C21BBE0](v76, -1, -1);
        MEMORY[0x24C21BBE0](v75, -1, -1);
      }

      else
      {

        sub_24A508C54((v0 + 216));
      }

      v83 = *(v0 + 280);
      sub_24A60FEC8(*(v0 + 296));
      goto LABEL_57;
    }

    if (*(v62 + 16))
    {
      sub_24A508AE4(v62 + 32, v0 + 176);

      if (qword_27EF4E9A0 == -1)
      {
LABEL_48:
        v63 = sub_24A62E314();
        sub_24A506EB8(v63, qword_27EF5C118);
        v64 = sub_24A62E2F4();
        v65 = sub_24A62EF64();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          *v66 = 0;
          _os_log_impl(&dword_24A503000, v64, v65, "🧭 FMFindingSession: Automatically transitioning to ranging part.", v66, 2u);
          MEMORY[0x24C21BBE0](v66, -1, -1);
        }

        v67 = *(v0 + 280);

        sub_24A60FEC8((v0 + 176));
        sub_24A508C54((v0 + 176));
LABEL_57:
        v85 = *(v0 + 352);
        v84 = *(v0 + 360);
        v87 = *(v0 + 336);
        v86 = *(v0 + 344);
        v88 = *(v0 + 312);

        v89 = *(v0 + 8);

        return v89();
      }

LABEL_63:
      swift_once();
      goto LABEL_48;
    }

LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v58 = *(MEMORY[0x277D85A40] + 4);
  v59 = swift_task_alloc();
  *(v0 + 408) = v59;
  *v59 = v0;
  v59[1] = sub_24A6156D4;
  v60 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 416, 0, 0, 0x6961764131527369, 0xEF2928656C62616CLL, sub_24A6125B0, 0, v60);
}

uint64_t sub_24A6156D4()
{
  v2 = *(*v1 + 408);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_24A615C04;
  }

  else
  {
    v3 = sub_24A6157EC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24A61580C()
{
  v37 = v0;
  v1 = *(v0 + 417);
  v2 = *(v0 + 368);

  if (v1 == 1)
  {
    v3 = *(v0 + 280);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v0 + 304);
      v5 = *(v0 + 312);
      swift_storeEnumTagMultiPayload();
      sub_24A60BC20(v5);
      swift_unknownObjectRelease();
      sub_24A61B070(v5, type metadata accessor for FMFindingSession.Error);
    }
  }

  v6 = *(v0 + 392);
  if (*(v0 + 400))
  {
    if (*(v6 + 16))
    {
      sub_24A508AE4(v6 + 32, v0 + 176);

      if (qword_27EF4E9A0 == -1)
      {
LABEL_7:
        v7 = sub_24A62E314();
        sub_24A506EB8(v7, qword_27EF5C118);
        v8 = sub_24A62E2F4();
        v9 = sub_24A62EF64();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          *v10 = 0;
          _os_log_impl(&dword_24A503000, v8, v9, "🧭 FMFindingSession: Automatically transitioning to ranging part.", v10, 2u);
          MEMORY[0x24C21BBE0](v10, -1, -1);
        }

        v11 = *(v0 + 280);

        sub_24A60FEC8((v0 + 176));
        sub_24A508C54((v0 + 176));
        goto LABEL_16;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_7;
  }

  v12 = *(v0 + 392);

  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v13 = *(v0 + 296);
  v14 = sub_24A62E314();
  sub_24A506EB8(v14, qword_27EF5C118);
  sub_24A508AE4(v13, v0 + 216);
  v15 = sub_24A62E2F4();
  v16 = sub_24A62EF64();
  if (os_log_type_enabled(v15, v16))
  {
    v18 = *(v0 + 328);
    v17 = *(v0 + 336);
    v35 = *(v0 + 320);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v36 = v20;
    *v19 = 136315138;
    v21 = *(v0 + 240);
    v22 = *(v0 + 248);
    sub_24A50A204((v0 + 216), v21);
    (*(v22 + 16))(v21, v22);
    sub_24A61BDB4(&qword_27EF4F660, MEMORY[0x277CC95F0]);
    v23 = sub_24A62F614();
    v25 = v24;
    (*(v18 + 8))(v17, v35);
    sub_24A508C54((v0 + 216));
    v26 = sub_24A509BA8(v23, v25, &v36);

    *(v19 + 4) = v26;
    _os_log_impl(&dword_24A503000, v15, v16, "🧭 FMFindingSession: No ranging parts in the group for findable: %s.", v19, 0xCu);
    sub_24A508C54(v20);
    MEMORY[0x24C21BBE0](v20, -1, -1);
    MEMORY[0x24C21BBE0](v19, -1, -1);
  }

  else
  {

    sub_24A508C54((v0 + 216));
  }

  v27 = *(v0 + 280);
  sub_24A60FEC8(*(v0 + 296));
LABEL_16:
  v29 = *(v0 + 352);
  v28 = *(v0 + 360);
  v31 = *(v0 + 336);
  v30 = *(v0 + 344);
  v32 = *(v0 + 312);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_24A615C1C()
{
  v33 = v0;
  v1 = v0[46];

  v2 = v0[49];
  if (v0[50])
  {
    if (*(v2 + 16))
    {
      sub_24A508AE4(v2 + 32, (v0 + 22));

      if (qword_27EF4E9A0 == -1)
      {
LABEL_4:
        v3 = sub_24A62E314();
        sub_24A506EB8(v3, qword_27EF5C118);
        v4 = sub_24A62E2F4();
        v5 = sub_24A62EF64();
        if (os_log_type_enabled(v4, v5))
        {
          v6 = swift_slowAlloc();
          *v6 = 0;
          _os_log_impl(&dword_24A503000, v4, v5, "🧭 FMFindingSession: Automatically transitioning to ranging part.", v6, 2u);
          MEMORY[0x24C21BBE0](v6, -1, -1);
        }

        v7 = v0[35];

        sub_24A60FEC8(v0 + 22);
        sub_24A508C54(v0 + 22);
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_4;
  }

  v8 = v0[49];

  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v9 = v0[37];
  v10 = sub_24A62E314();
  sub_24A506EB8(v10, qword_27EF5C118);
  sub_24A508AE4(v9, (v0 + 27));
  v11 = sub_24A62E2F4();
  v12 = sub_24A62EF64();
  if (os_log_type_enabled(v11, v12))
  {
    v14 = v0[41];
    v13 = v0[42];
    v31 = v0[40];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v32 = v16;
    *v15 = 136315138;
    v17 = v0[30];
    v18 = v0[31];
    sub_24A50A204(v0 + 27, v17);
    (*(v18 + 16))(v17, v18);
    sub_24A61BDB4(&qword_27EF4F660, MEMORY[0x277CC95F0]);
    v19 = sub_24A62F614();
    v21 = v20;
    (*(v14 + 8))(v13, v31);
    sub_24A508C54(v0 + 27);
    v22 = sub_24A509BA8(v19, v21, &v32);

    *(v15 + 4) = v22;
    _os_log_impl(&dword_24A503000, v11, v12, "🧭 FMFindingSession: No ranging parts in the group for findable: %s.", v15, 0xCu);
    sub_24A508C54(v16);
    MEMORY[0x24C21BBE0](v16, -1, -1);
    MEMORY[0x24C21BBE0](v15, -1, -1);
  }

  else
  {

    sub_24A508C54(v0 + 27);
  }

  v23 = v0[35];
  sub_24A60FEC8(v0[37]);
LABEL_13:
  v25 = v0[44];
  v24 = v0[45];
  v27 = v0[42];
  v26 = v0[43];
  v28 = v0[39];

  v29 = v0[1];

  return v29();
}

void sub_24A615FB0(char a1, char a2)
{
  v4 = type metadata accessor for FMFindingSession.Error(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 & 1) == 0 && (a1)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_storeEnumTagMultiPayload();
      sub_24A60BC20(v7);
      swift_unknownObjectRelease();
      sub_24A61B070(v7, type metadata accessor for FMFindingSession.Error);
    }
  }
}

uint64_t sub_24A616098(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = result + OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v5 + 8);
      ObjectType = swift_getObjectType();
      (*(v6 + 8))(v4, a2, ObjectType, v6);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A616150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = type metadata accessor for FMFindingSessionState();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v14 = sub_24A62E314();
  sub_24A506EB8(v14, qword_27EF5C118);
  sub_24A508CE4(a2, v39);
  v15 = sub_24A62E2F4();
  v16 = sub_24A62EF34();
  sub_24A517ABC(a2);
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39[0] = v38;
    *v17 = 136315138;
    v18 = sub_24A576980();
    v20 = sub_24A509BA8(v18, v19, v39);
    v37 = a2;
    v21 = v7;
    v22 = v20;

    *(v17 + 4) = v22;
    v7 = v21;
    v4 = v3;
    v23 = v16;
    v24 = v37;
    _os_log_impl(&dword_24A503000, v15, v23, "🧭 FMFindingSession: Received new state from FMFindingLocalizer: %s", v17, 0xCu);
    v25 = v38;
    sub_24A508C54(v38);
    MEMORY[0x24C21BBE0](v25, -1, -1);
    MEMORY[0x24C21BBE0](v17, -1, -1);
  }

  else
  {

    v24 = a2;
  }

  v26 = *(v4 + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_stateUpdateLock);
  os_unfair_lock_lock(v26 + 4);
  v27 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state;
  swift_beginAccess();
  sub_24A61C0D4(v4 + v27, v10, type metadata accessor for FMFindingSessionState);
  v28 = *(v10 + 8);
  sub_24A508CE4(v24, v39);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39[0] = v28;
  sub_24A5578E0(v24, a3, isUniquelyReferenced_nonNull_native);
  v30 = v39[0];
  v31 = *v10;
  v32 = *(v10 + 1);
  sub_24A50D63C((v10 + 24), (v13 + 24), &unk_27EF522E0, qword_24A637660);
  v33 = *(v7 + 36);
  v34 = sub_24A62E214();
  (*(*(v34 - 8) + 16))(&v13[v33], &v10[v33], v34);
  v35 = *(v10 + 2);
  *v13 = v31;
  *(v13 + 8) = v30;
  *(v13 + 1) = v32;
  *(v13 + 2) = v35;

  sub_24A61B070(v10, type metadata accessor for FMFindingSessionState);
  os_unfair_lock_unlock(v26 + 4);
  sub_24A61C0D4(v13, v10, type metadata accessor for FMFindingSessionState);
  sub_24A60F438(v10);
  sub_24A6104A8();
  return sub_24A61B070(v13, type metadata accessor for FMFindingSessionState);
}

void sub_24A6164C0(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  v55 = a4;
  v56 = a1;
  v54 = a3;
  v6 = *(a2 + 64);
  v7 = *(a2 + 80);
  v8 = *(a2 + 32);
  v69 = *(a2 + 48);
  v70 = v6;
  v71[0] = v7;
  v9 = *(a2 + 16);
  v66 = *a2;
  v67 = v9;
  *(v71 + 15) = *(a2 + 95);
  v68 = v8;
  v10 = type metadata accessor for FMFindingSessionState();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v52 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v52 - v18;
  v20 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state;
  swift_beginAccess();
  v57 = v4;
  sub_24A61C0D4(v4 + v20, v19, type metadata accessor for FMFindingSessionState);
  v21 = *(v19 + 8);
  if (!*(v21 + 16) || (v22 = sub_24A515AC8(&v19[*(v10 + 36)]), (v23 & 1) == 0))
  {
    sub_24A62F444();
    __break(1u);
    return;
  }

  v24 = *(v21 + 56) + 104 * v22;
  v26 = *(v24 + 16);
  v25 = *(v24 + 32);
  v60[0] = *v24;
  v60[1] = v26;
  v60[2] = v25;
  v27 = *(v24 + 48);
  v28 = *(v24 + 64);
  v29 = *(v24 + 80);
  *(v61 + 13) = *(v24 + 93);
  v60[4] = v28;
  v61[0] = v29;
  v60[3] = v27;
  sub_24A508CE4(v60, v62);
  sub_24A61B070(v19, type metadata accessor for FMFindingSessionState);
  if ((LODWORD(v61[1]) | 0x2000000u) >> 25 != 3)
  {
    v37 = LODWORD(v61[1]) | (BYTE4(v61[1]) << 32);
    sub_24A517ABC(v60);
    v38 = v57;
    v53 = *(v57 + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_stateUpdateLock);
    os_unfair_lock_lock(v53 + 4);
    v52 = type metadata accessor for FMFindingSessionState;
    sub_24A61C0D4(v38 + v20, v13, type metadata accessor for FMFindingSessionState);
    v62[4] = v70;
    *v63 = v71[0];
    *&v63[15] = *(v71 + 15);
    v62[0] = v66;
    v62[1] = v67;
    v62[2] = v68;
    v62[3] = v69;
    v64 = v54;
    v65 = BYTE4(v37);
    v39 = *(v13 + 8);

    sub_24A55B388(a2, v59);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v59[0] = v39;
    sub_24A5578E0(v62, v55, isUniquelyReferenced_nonNull_native);
    v41 = v59[0];
    v42 = *v13;
    v43 = *(v13 + 1);
    sub_24A50D63C((v13 + 24), (v16 + 24), &unk_27EF522E0, qword_24A637660);
    v44 = *(v10 + 36);
    v45 = sub_24A62E214();
    (*(*(v45 - 8) + 16))(&v16[v44], &v13[v44], v45);
    v46 = *(v13 + 2);
    *v16 = v42;
    *(v16 + 8) = v41;
    *(v16 + 1) = v43;
    *(v16 + 2) = v46;

    sub_24A61B070(v13, type metadata accessor for FMFindingSessionState);
    os_unfair_lock_unlock(v53 + 4);
    sub_24A61C0D4(v16, v13, v52);
    sub_24A60F438(v13);
    v47 = v56[3];
    v48 = v56[4];
    sub_24A50A204(v56, v47);
    (*(v48 + 8))(&v58, v47, v48);
    v49 = (v58 >> 13) & 3;
    if (v49)
    {
      if (v49 == 1)
      {
        v50 = sub_24A62DF44();
        v59[3] = v50;
        v59[4] = sub_24A61BDB4(&qword_27EF4FE90, MEMORY[0x277D08A28]);
        v51 = sub_24A5292E8(v59);
        (*(*(v50 - 8) + 104))(v51, *MEMORY[0x277D089D0], v50);
        LOBYTE(v50) = MEMORY[0x24C219850](v59);
        sub_24A508C54(v59);
        if (v50)
        {
LABEL_15:
          sub_24A61B070(v16, type metadata accessor for FMFindingSessionState);
          return;
        }
      }

      else if ((v58 & 0x8100) == 0x100)
      {
        goto LABEL_15;
      }
    }

    sub_24A6104A8();
    goto LABEL_15;
  }

  sub_24A517ABC(v60);
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v30 = sub_24A62E314();
  sub_24A506EB8(v30, qword_27EF5C118);
  v31 = sub_24A62E2F4();
  v32 = sub_24A62EF34();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_24A503000, v31, v32, "🧭 FMFindingSession: Received new measurement & trend from FMFindingLocalizer, but not updating state", v33, 2u);
    MEMORY[0x24C21BBE0](v33, -1, -1);
  }

  v34 = sub_24A62E2F4();
  v35 = sub_24A62EF34();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_24A503000, v34, v35, "🧭 FMFindingSession: should not update if we're not connected", v36, 2u);
    MEMORY[0x24C21BBE0](v36, -1, -1);
  }
}

uint64_t sub_24A616ABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = result + OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v7 + 8);
      ObjectType = swift_getObjectType();
      (*(v8 + 32))(v6, a2, a3, ObjectType, v8);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A616B90(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for FMFindingLocalizerError(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for FMFindingSession.Error(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = (&v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_24A61C0D4(a2, v6, type metadata accessor for FMFindingLocalizerError);
    sub_24A612D8C(v6, v10);
    sub_24A60BC20(v10);
    swift_unknownObjectRelease();
    return sub_24A61B070(v10, type metadata accessor for FMFindingSession.Error);
  }

  return result;
}

void sub_24A616CC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A62E214();
  v65 = *(v4 - 8);
  v5 = v65[8];
  MEMORY[0x28223BE20](v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v70 = &v51 - v9;
  MEMORY[0x28223BE20](v10);
  v63 = &v51 - v11;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v12 = 0;
    v53 = a1;
    v13 = *(a1 + 56);
    v51 = a1 + 56;
    v14 = 1 << *(a1 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & v13;
    v17 = (v14 + 63) >> 6;
    v18 = a2 + 56;
    v68 = v65 + 2;
    v59 = v65 + 4;
    v19 = (v65 + 1);
    v52 = v17;
    v58 = a2;
    v57 = a2 + 56;
    if (v16)
    {
      while (2)
      {
        v20 = __clz(__rbit64(v16));
        v54 = (v16 - 1) & v16;
LABEL_13:
        v55 = v12;
        v23 = *(*(v53 + 48) + 8 * (v20 | (v12 << 6)));
        v24 = *(a2 + 40);
        sub_24A62F714();

        sub_24A61AE44(v71, v23);
        v25 = sub_24A62F754();
        v26 = -1 << *(a2 + 32);
        v27 = v25 & ~v26;
        if (((*(v18 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
        {
LABEL_40:

          return;
        }

        v28 = ~v26;
        v67 = v23 + 56;
        v69 = v23;
        v56 = ~v26;
        while (1)
        {
          v29 = *(*(a2 + 48) + 8 * v27);
          if (v29 == v23)
          {
            break;
          }

          if (*(v29 + 16) == *(v23 + 16))
          {
            v30 = *(v29 + 56);
            v61 = v29 + 56;
            v62 = v27;
            v31 = 1 << *(v29 + 32);
            if (v31 < 64)
            {
              v32 = ~(-1 << v31);
            }

            else
            {
              v32 = -1;
            }

            v33 = v32 & v30;
            v60 = (v31 + 63) >> 6;

            v35 = 0;
            v66 = v34;
            if (!v33)
            {
LABEL_24:
              v37 = v35;
              while (1)
              {
                v35 = v37 + 1;
                if (__OFADD__(v37, 1))
                {
                  break;
                }

                if (v35 >= v60)
                {

                  a2 = v58;
                  v18 = v57;
                  goto LABEL_37;
                }

                v38 = *(v61 + 8 * v35);
                ++v37;
                if (v38)
                {
                  v36 = __clz(__rbit64(v38));
                  v64 = (v38 - 1) & v38;
                  goto LABEL_29;
                }
              }

              __break(1u);
              goto LABEL_43;
            }

            while (1)
            {
              v36 = __clz(__rbit64(v33));
              v64 = (v33 - 1) & v33;
LABEL_29:
              v39 = v65;
              v40 = v65[9];
              v41 = v65[2];
              v42 = v63;
              v41(v63, *(v34 + 48) + v40 * (v36 | (v35 << 6)), v4);
              (v39[4])(v70, v42, v4);
              v43 = v69;
              v44 = *(v69 + 40);
              sub_24A61BDB4(&qword_27EF52310, MEMORY[0x277CC95F0]);
              v45 = sub_24A62EBB4();
              v46 = -1 << *(v43 + 32);
              v47 = v45 & ~v46;
              if (((*(v67 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
              {
                break;
              }

              v48 = ~v46;
              while (1)
              {
                v41(v7, *(v69 + 48) + v47 * v40, v4);
                sub_24A61BDB4(&qword_27EF501E0, MEMORY[0x277CC95F0]);
                v49 = sub_24A62EBD4();
                v50 = *v19;
                (*v19)(v7, v4);
                if (v49)
                {
                  break;
                }

                v47 = (v47 + 1) & v48;
                if (((*(v67 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
                {
                  goto LABEL_15;
                }
              }

              v50(v70, v4);
              v34 = v66;
              v33 = v64;
              if (!v64)
              {
                goto LABEL_24;
              }
            }

LABEL_15:

            (*v19)(v70, v4);
            a2 = v58;
            v18 = v57;
            v23 = v69;
            v27 = v62;
            v28 = v56;
          }

          v27 = (v27 + 1) & v28;
          if (((*(v18 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
          {
            goto LABEL_40;
          }
        }

LABEL_37:

        v12 = v55;
        v17 = v52;
        v16 = v54;
        if (v54)
        {
          continue;
        }

        break;
      }
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        return;
      }

      v22 = *(v51 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v54 = (v22 - 1) & v22;
        goto LABEL_13;
      }
    }

LABEL_43:
    __break(1u);
  }
}

void sub_24A61725C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A62E214();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v46 = &v35 - v10;
  v13 = MEMORY[0x28223BE20](v11);
  v14 = &v35 - v12;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v15 = 0;
    v16 = *(a1 + 56);
    v35 = a1 + 56;
    v17 = 1 << *(a1 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & v16;
    v20 = (v17 + 63) >> 6;
    v42 = v5 + 32;
    v44 = a2 + 56;
    v45 = v5 + 16;
    v21 = (v5 + 8);
    v36 = v20;
    v37 = &v35 - v12;
    v38 = v5;
    v39 = a1;
    if (v19)
    {
      while (1)
      {
        v22 = __clz(__rbit64(v19));
        v41 = (v19 - 1) & v19;
LABEL_13:
        v25 = *(a1 + 48);
        v43 = *(v5 + 72);
        v26 = *(v5 + 16);
        v26(v14, v25 + v43 * (v22 | (v15 << 6)), v4, v13);
        (*(v5 + 32))(v46, v14, v4);
        v27 = *(a2 + 40);
        sub_24A61BDB4(&qword_27EF52310, MEMORY[0x277CC95F0]);
        v28 = sub_24A62EBB4();
        v29 = -1 << *(a2 + 32);
        v30 = v28 & ~v29;
        if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {
          break;
        }

        v40 = v21 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v31 = a2;
        v32 = ~v29;
        while (1)
        {
          (v26)(v8, *(v31 + 48) + v30 * v43, v4);
          sub_24A61BDB4(&qword_27EF501E0, MEMORY[0x277CC95F0]);
          v33 = sub_24A62EBD4();
          v34 = *v21;
          (*v21)(v8, v4);
          if (v33)
          {
            break;
          }

          v30 = (v30 + 1) & v32;
          if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
          {
            v34(v46, v4);
            return;
          }
        }

        v34(v46, v4);
        a2 = v31;
        v5 = v38;
        a1 = v39;
        v20 = v36;
        v14 = v37;
        v19 = v41;
        if (!v41)
        {
          goto LABEL_8;
        }
      }

      (*v21)(v46, v4);
    }

    else
    {
LABEL_8:
      v23 = v15;
      while (1)
      {
        v15 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v15 >= v20)
        {
          return;
        }

        v24 = *(v35 + 8 * v15);
        ++v23;
        if (v24)
        {
          v22 = __clz(__rbit64(v24));
          v41 = (v24 - 1) & v24;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

char *sub_24A61760C(char *result, int64_t a2, char a3, char *a4)
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
    sub_24A508FA4(&qword_27EF52438, &unk_24A63C0F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_24A617710(char *result, int64_t a2, char a3, char *a4)
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
    sub_24A508FA4(&qword_27EF4F9A0, &unk_24A6349F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_24A61781C(size_t result, int64_t a2, char a3, void *a4)
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

  sub_24A508FA4(&qword_27EF52458, &qword_24A63C118);
  v10 = *(sub_24A508FA4(&unk_27EF52460, &unk_24A63C120) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
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
  v15 = *(sub_24A508FA4(&unk_27EF52460, &unk_24A63C120) - 8);
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

char *sub_24A617A30(char *result, int64_t a2, char a3, char *a4)
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
    sub_24A508FA4(&unk_27EF52400, &qword_24A63B068);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_24A617B34(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

  if (v15)
  {
    sub_24A508FA4(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_24A508FA4(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_24A617C9C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_24A62E214();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_24A61BDB4(&qword_27EF52310, MEMORY[0x277CC95F0]);
  v36 = a2;
  v13 = sub_24A62EBB4();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_24A61BDB4(&qword_27EF501E0, MEMORY[0x277CC95F0]);
      v23 = sub_24A62EBD4();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_24A619BC0(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_24A617F7C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_24A62E2B4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_24A61BDB4(&qword_27EF501F8, MEMORY[0x277CD89F8]);
  v36 = a2;
  v13 = sub_24A62EBB4();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_24A61BDB4(&qword_27EF50200, MEMORY[0x277CD89F8]);
      v23 = sub_24A62EBD4();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_24A619E88(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_24A61825C(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  sub_24A62F714();
  sub_24A61AE44(v20, a2);
  v8 = sub_24A62F754();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);

      sub_24A61725C(v13, a2);
      v15 = v14;

      if (v15)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    *a1 = *(*(v6 + 48) + 8 * v10);

    return 0;
  }

  else
  {
LABEL_5:
    v16 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v20[0] = *v3;

    sub_24A61A150(v18, v10, isUniquelyReferenced_nonNull_native);
    *v3 = *&v20[0];
    *a1 = a2;
    return 1;
  }
}

uint64_t sub_24A61839C(uint64_t a1)
{
  v2 = v1;
  v41 = sub_24A62E214();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_24A508FA4(&qword_27EF52428, &qword_24A63C0E0);
  result = sub_24A62F354();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_24A61BDB4(&qword_27EF52310, MEMORY[0x277CC95F0]);
      result = sub_24A62EBB4();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_24A6186F8(uint64_t a1)
{
  v2 = v1;
  v41 = sub_24A62E2B4();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_24A508FA4(&qword_27EF52430, &qword_24A63C0E8);
  result = sub_24A62F354();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_24A61BDB4(&qword_27EF501F8, MEMORY[0x277CD89F8]);
      result = sub_24A62EBB4();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

unint64_t sub_24A618A54(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_24A508FA4(&unk_27EF52440, &unk_24A63C100);
  result = sub_24A62F354();
  v6 = result;
  if (*(v3 + 16))
  {
    v21 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    for (i = result + 56; v11; ++*(v6 + 16))
    {
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_14:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_24A62F714();
      sub_24A61AE44(v22, v17);
      sub_24A62F754();
      v19 = -1 << *(v6 + 32);
      result = sub_24A62F284();
      *(i + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      *(*(v6 + 48) + 8 * result) = v17;
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        return result;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v20 = 1 << *(v3 + 32);
    if (v20 >= 64)
    {
      bzero((v3 + 56), ((v20 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v20;
    }

    v2 = v21;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

void *sub_24A618C34(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    sub_24A618E88(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void *sub_24A618CC4(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v14 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    sub_24A618E88((v14 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
    v10 = v9;
  }

  else
  {
    v13 = swift_slowAlloc();

    v10 = sub_24A618C34(v13, v6, a2, a1);

    MEMORY[0x24C21BBE0](v13, -1, -1);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

void sub_24A618E88(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v65 = a2;
  v69 = a1;
  v6 = sub_24A62E214();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v78 = v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v64 - v11;
  MEMORY[0x28223BE20](v13);
  v79 = (v64 - v14);
  v16 = MEMORY[0x28223BE20](v15);
  v68 = v64 - v17;
  v18 = *(a3 + 16);
  v19 = *(a4 + 16);
  v80 = v7 + 16;
  v76 = a4;
  v77 = a3;
  v72 = v7;
  if (v19 >= v18)
  {
    v44 = 0;
    v45 = *(a3 + 56);
    v67 = a3 + 56;
    v46 = 1 << *(a3 + 32);
    if (v46 < 64)
    {
      v47 = ~(-1 << v46);
    }

    else
    {
      v47 = -1;
    }

    v48 = v47 & v45;
    v49 = (v46 + 63) >> 6;
    v75 = a4 + 56;
    v79 = (v7 + 8);
    j = v49;
    v71 = 0;
    if (v48)
    {
      goto LABEL_30;
    }

LABEL_31:
    v51 = v44;
    while (1)
    {
      v44 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        break;
      }

      if (v44 >= v49)
      {
LABEL_44:

        sub_24A619898(v69, v65, v71, a3);
        return;
      }

      v52 = *(v67 + 8 * v44);
      ++v51;
      if (v52)
      {
        v50 = __clz(__rbit64(v52));
        for (i = ((v52 - 1) & v52); ; i = ((v48 - 1) & v48))
        {
          v53 = v50 | (v44 << 6);
          v54 = *(a3 + 48);
          v55 = *(v7 + 72);
          v73 = v53;
          v56 = *(v7 + 16);
          v56(v78, v54 + v55 * v53, v6, v16);
          v57 = *(a4 + 40);
          sub_24A61BDB4(&qword_27EF52310, MEMORY[0x277CC95F0]);
          v58 = sub_24A62EBB4();
          v59 = -1 << *(a4 + 32);
          v60 = v58 & ~v59;
          if ((*(v75 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60))
          {
            v68 = (v79 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            v61 = ~v59;
            while (1)
            {
              (v56)(v12, *(v76 + 48) + v60 * v55, v6);
              sub_24A61BDB4(&qword_27EF501E0, MEMORY[0x277CC95F0]);
              v62 = sub_24A62EBD4();
              v63 = *v79;
              (*v79)(v12, v6);
              if (v62)
              {
                break;
              }

              v60 = (v60 + 1) & v61;
              if (((*(v75 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60) & 1) == 0)
              {
                a4 = v76;
                goto LABEL_42;
              }
            }

            v63(v78, v6);
            v7 = v72;
            *(v69 + ((v73 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v73;
            v49 = j;
            v28 = __OFADD__(v71++, 1);
            a4 = v76;
            a3 = v77;
            v48 = i;
            if (v28)
            {
              goto LABEL_47;
            }

            if (!i)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v63 = *v79;
LABEL_42:
            v63(v78, v6);
            a3 = v77;
            v7 = v72;
            v49 = j;
            v48 = i;
            if (!i)
            {
              goto LABEL_31;
            }
          }

LABEL_30:
          v50 = __clz(__rbit64(v48));
        }
      }
    }

    __break(1u);
  }

  else
  {
    v71 = 0;
    v20 = a4;
    v21 = 0;
    v23 = v20 + 56;
    v22 = *(v20 + 56);
    v64[0] = v23;
    v24 = 1 << *(v23 - 24);
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v26 = v25 & v22;
    v27 = (v24 + 63) >> 6;
    v66 = v7 + 32;
    v67 = v27;
    v73 = a3 + 56;
    v78 = (v7 + 8);
    if (v26)
    {
      goto LABEL_9;
    }

LABEL_10:
    v30 = v21;
    while (1)
    {
      v21 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v21 >= v27)
      {
        goto LABEL_44;
      }

      v31 = *(v64[0] + 8 * v21);
      ++v30;
      if (v31)
      {
        v29 = __clz(__rbit64(v31));
        for (j = (v31 - 1) & v31; ; j = (v26 - 1) & v26)
        {
          v32 = *(v7 + 72);
          v33 = *(v76 + 48) + v32 * (v29 | (v21 << 6));
          v34 = v68;
          i = *(v7 + 16);
          v75 = v32;
          i(v68, v33, v6, v16);
          (*(v7 + 32))(v79, v34, v6);
          v35 = *(a3 + 40);
          sub_24A61BDB4(&qword_27EF52310, MEMORY[0x277CC95F0]);
          v36 = sub_24A62EBB4();
          v37 = -1 << *(a3 + 32);
          v38 = v36 & ~v37;
          v39 = v38 >> 6;
          v40 = 1 << v38;
          if (((1 << v38) & *(v73 + 8 * (v38 >> 6))) != 0)
          {
            v64[1] = v78 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v41 = ~v37;
            while (1)
            {
              (i)(v12, *(v77 + 48) + v38 * v75, v6);
              sub_24A61BDB4(&qword_27EF501E0, MEMORY[0x277CC95F0]);
              v42 = sub_24A62EBD4();
              v43 = *v78;
              (*v78)(v12, v6);
              if (v42)
              {
                break;
              }

              v38 = (v38 + 1) & v41;
              v39 = v38 >> 6;
              v40 = 1 << v38;
              if (((1 << v38) & *(v73 + 8 * (v38 >> 6))) == 0)
              {
                a3 = v77;
                goto LABEL_21;
              }
            }

            v43(v79, v6);
            v26 = j;
            v69[v39] |= v40;
            v7 = v72;
            v28 = __OFADD__(v71++, 1);
            a3 = v77;
            v27 = v67;
            if (v28)
            {
              goto LABEL_48;
            }

            if (!v26)
            {
              goto LABEL_10;
            }
          }

          else
          {
            v43 = *v78;
LABEL_21:
            v43(v79, v6);
            v7 = v72;
            v27 = v67;
            v26 = j;
            if (!j)
            {
              goto LABEL_10;
            }
          }

LABEL_9:
          v29 = __clz(__rbit64(v26));
        }
      }
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
}

uint64_t sub_24A619570(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_24A62E2B4();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_24A508FA4(&qword_27EF52430, &qword_24A63C0E8);
  result = sub_24A62F364();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_24A61BDB4(&qword_27EF501F8, MEMORY[0x277CD89F8]);
    result = sub_24A62EBB4();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_24A619898(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_24A62E214();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_24A508FA4(&qword_27EF52428, &qword_24A63C0E0);
  result = sub_24A62F364();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_24A61BDB4(&qword_27EF52310, MEMORY[0x277CC95F0]);
    result = sub_24A62EBB4();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_24A619BC0(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_24A62E214();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24A61839C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_24A61A2DC(MEMORY[0x277CC95F0], &qword_27EF52428, &qword_24A63C0E0);
      goto LABEL_12;
    }

    sub_24A61A664(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_24A61BDB4(&qword_27EF52310, MEMORY[0x277CC95F0]);
  v15 = sub_24A62EBB4();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_24A61BDB4(&qword_27EF501E0, MEMORY[0x277CC95F0]);
      v23 = sub_24A62EBD4();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_24A62F664();
  __break(1u);
  return result;
}

uint64_t sub_24A619E88(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_24A62E2B4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24A6186F8(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_24A61A2DC(MEMORY[0x277CD89F8], &qword_27EF52430, &qword_24A63C0E8);
      goto LABEL_12;
    }

    sub_24A61A980(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_24A61BDB4(&qword_27EF501F8, MEMORY[0x277CD89F8]);
  v15 = sub_24A62EBB4();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_24A61BDB4(&qword_27EF50200, MEMORY[0x277CD89F8]);
      v23 = sub_24A62EBD4();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_24A62F664();
  __break(1u);
  return result;
}

uint64_t sub_24A61A150(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24A618A54(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_24A61A514();
      goto LABEL_12;
    }

    sub_24A61AC9C(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_24A62F714();
  sub_24A61AE44(v21, v5);
  result = sub_24A62F754();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      sub_24A508FA4(&qword_27EF51130, &qword_24A6389E0);
      v12 = *(*(v8 + 48) + 8 * a2);

      sub_24A61725C(v13, v5);
      v15 = v14;

      if (v15)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v16 = *v20;
  *(*v20 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v16 + 48) + 8 * a2) = v5;
  v17 = *(v16 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v16 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_24A62F664();
  __break(1u);
  return result;
}

void *sub_24A61A2DC(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  sub_24A508FA4(a2, a3);
  v12 = *v3;
  v13 = sub_24A62F344();
  v14 = v13;
  if (*(v12 + 16))
  {
    v28 = v6;
    result = (v13 + 56);
    v16 = ((1 << *(v14 + 32)) + 63) >> 6;
    if (v14 != v12 || result >= v12 + 56 + 8 * v16)
    {
      result = memmove(result, (v12 + 56), 8 * v16);
    }

    v18 = 0;
    *(v14 + 16) = *(v12 + 16);
    v19 = 1 << *(v12 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v12 + 56);
    v22 = (v19 + 63) >> 6;
    v29 = v8 + 32;
    for (i = v8 + 16; v21; result = (*(v8 + 32))(*(v14 + 48) + v26, v11, v7))
    {
      v23 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v26 = *(v8 + 72) * (v23 | (v18 << 6));
      (*(v8 + 16))(v11, *(v12 + 48) + v26, v7);
    }

    v24 = v18;
    while (1)
    {
      v18 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v18 >= v22)
      {

        v6 = v28;
        goto LABEL_21;
      }

      v25 = *(v12 + 56 + 8 * v18);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v14;
  }

  return result;
}

void *sub_24A61A514()
{
  v1 = v0;
  sub_24A508FA4(&unk_27EF52440, &unk_24A63C100);
  v2 = *v0;
  v3 = sub_24A62F344();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_24A61A664(uint64_t a1)
{
  v2 = v1;
  v37 = sub_24A62E214();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_24A508FA4(&qword_27EF52428, &qword_24A63C0E0);
  v10 = sub_24A62F354();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_24A61BDB4(&qword_27EF52310, MEMORY[0x277CC95F0]);
      result = sub_24A62EBB4();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_24A61A980(uint64_t a1)
{
  v2 = v1;
  v37 = sub_24A62E2B4();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_24A508FA4(&qword_27EF52430, &qword_24A63C0E8);
  v10 = sub_24A62F354();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_24A61BDB4(&qword_27EF501F8, MEMORY[0x277CD89F8]);
      result = sub_24A62EBB4();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

unint64_t sub_24A61AC9C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_24A508FA4(&unk_27EF52440, &unk_24A63C100);
  result = sub_24A62F354();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    for (i = result + 56; v10; ++*(v6 + 16))
    {
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_14:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
      v17 = *(v6 + 40);
      sub_24A62F714();

      sub_24A61AE44(v19, v16);
      sub_24A62F754();
      v18 = -1 << *(v6 + 32);
      result = sub_24A62F284();
      *(i + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      *(*(v6 + 48) + 8 * result) = v16;
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_16;
      }

      v15 = *(v3 + 56 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_24A61AE44(__int128 *a1, uint64_t a2)
{
  v4 = sub_24A62E214();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  v26 = a1[2];
  v27 = v9;
  v28 = *(a1 + 8);
  v11 = *a1;
  v10 = a1[1];
  v23[0] = a1;
  v24 = v11;
  v25 = v10;
  v12 = sub_24A62F754();
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a2 + 56);
  v16 = (v13 + 63) >> 6;
  v23[2] = v5 + 16;
  v23[3] = v12;
  v23[1] = v5 + 8;

  v18 = 0;
  for (i = 0; v15; v18 ^= v22)
  {
    v20 = i;
LABEL_9:
    v21 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    (*(v5 + 16))(v8, *(a2 + 48) + *(v5 + 72) * (v21 | (v20 << 6)), v4);
    sub_24A61BDB4(&qword_27EF52310, MEMORY[0x277CC95F0]);
    v22 = sub_24A62EBB4();
    result = (*(v5 + 8))(v8, v4);
  }

  while (1)
  {
    v20 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v20 >= v16)
    {

      return MEMORY[0x24C21B040](v18);
    }

    v15 = *(a2 + 56 + 8 * v20);
    ++i;
    if (v15)
    {
      i = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24A61B070(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A61B0D0(uint64_t a1)
{
  v2 = sub_24A62E214();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_24A61BDB4(&qword_27EF52310, MEMORY[0x277CC95F0]);
  result = MEMORY[0x24C21A7A0](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_24A617C9C(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_24A61B26C(uint64_t a1)
{
  v2 = sub_24A62E2B4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_24A61BDB4(&qword_27EF501F8, MEMORY[0x277CD89F8]);
  result = MEMORY[0x24C21A7A0](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_24A617F7C(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_24A61B408(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_24A508FA4(&qword_27EF51130, &qword_24A6389E0);
  v4 = sub_24A5ABA0C();
  result = MEMORY[0x24C21A7A0](v2, v3, v4);
  v9 = result;
  if (v2)
  {
    v6 = (a1 + 32);
    do
    {
      v7 = *v6++;

      sub_24A61825C(&v8, v7);

      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

void sub_24A61B4A4(void *a1)
{
  v2 = [a1 uwbPreciseDistanceAvailability] == 0;
  v3 = *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMUWBAvailabilityHelper_handler);
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMUWBAvailabilityHelper_handler + 8);

    v3(v2, 0);
    sub_24A50D354(v3);
  }

  v5 = v1 + OBJC_IVAR____TtC11FMFindingUI23FMUWBAvailabilityHelper_result;
  v6 = *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMUWBAvailabilityHelper_result);
  *v5 = v2;
  v7 = *(v5 + 8);
  *(v5 + 8) = 0;
  sub_24A61BD7C(v6, v7);

  sub_24A612894(0, 0);
}

void sub_24A61B564(id a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMUWBAvailabilityHelper_handler);
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMUWBAvailabilityHelper_handler + 8);

    v3(a1, 1);
    sub_24A50D354(v3);
  }

  v5 = v1 + OBJC_IVAR____TtC11FMFindingUI23FMUWBAvailabilityHelper_result;
  v6 = *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMUWBAvailabilityHelper_result);
  *v5 = a1;
  v7 = *(v5 + 8);
  *(v5 + 8) = 1;
  v8 = a1;
  sub_24A61BD7C(v6, v7);

  sub_24A612894(0, 0);
}

uint64_t _sSh11FMFindingUIShy10Foundation4UUIDVGRszrlE4from9findablesShyAEGSayAA10FMFindable_pG_tFZ_0(uint64_t a1)
{
  v2 = sub_24A62E214();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v23 = MEMORY[0x277D84F90];
    sub_24A58D8A8(0, v7, 0);
    v8 = v23;
    v9 = a1 + 32;
    do
    {
      sub_24A508AE4(v9, v20);
      v10 = v21;
      v11 = v22;
      sub_24A50A204(v20, v21);
      (*(v11 + 16))(v10, v11);
      sub_24A508C54(v20);
      v23 = v8;
      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_24A58D8A8(v12 > 1, v13 + 1, 1);
        v8 = v23;
      }

      *(v8 + 16) = v13 + 1;
      (*(v3 + 32))(v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v13, v6, v2);
      v9 += 40;
      --v7;
    }

    while (v7);
  }

  v14 = sub_24A61B0D0(v8);

  sub_24A508FA4(&qword_27EF52450, &qword_24A63C110);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24A633830;
  *(inited + 32) = v14;
  v16 = inited + 32;
  v17 = sub_24A61B408(inited);
  swift_setDeallocating();
  sub_24A50D6A4(v16, &qword_27EF51130, &qword_24A6389E0);
  return v17;
}

uint64_t sub_24A61B954()
{
  result = type metadata accessor for FMFindingSessionState();
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

void sub_24A61BB38()
{
  sub_24A61BD0C(319, &qword_27EF4FF80, sub_24A61BC28);
  if (v0 <= 0x3F)
  {
    sub_24A61BD0C(319, &qword_27EF4FF90, MEMORY[0x277CC95F0]);
    if (v1 <= 0x3F)
    {
      sub_24A61BC8C();
      if (v2 <= 0x3F)
      {
        sub_24A61BD0C(319, &qword_27EF523F8, sub_24A61BC28);
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_24A61BC28()
{
  if (!qword_27EF523E0)
  {
    sub_24A50E1E0(&unk_27EF4F990, &unk_24A6349E0);
    v0 = sub_24A62F1C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF523E0);
    }
  }
}

void sub_24A61BC8C()
{
  if (!qword_27EF523E8)
  {
    sub_24A62E214();
    sub_24A50E1E0(&qword_27EF4F9B0, qword_24A6389A0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27EF523E8);
    }
  }
}

void sub_24A61BD0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_24A61BD58(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_24A61BD70(result, a2 & 1);
  }

  return result;
}

id sub_24A61BD70(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

void sub_24A61BD7C(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_24A51909C(a1, a2 & 1);
  }
}

uint64_t sub_24A61BDB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24A61BDFC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  sub_24A508C54(v0 + 6);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_24A61BE4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24A515E5C;

  return sub_24A614ACC(a1, v4, v5, v6, v7, (v1 + 6));
}

uint64_t sub_24A61BF3C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A61BF74()
{
  v1 = sub_24A508FA4(&qword_27EF52420, &qword_24A63C0D8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

void sub_24A61C01C(void *a1, char a2)
{
  v5 = *(sub_24A508FA4(&qword_27EF52420, &qword_24A63C0D8) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_24A6127DC(a1, a2 & 1, v2 + v6, v7);
}

uint64_t sub_24A61C0D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A61C13C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A508FA4(&qword_27EF522C8, &qword_24A63BF10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A61C1CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMFindingSessionState();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A61C230(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMFindingSessionState();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

CVPixelBufferRef sub_24A61C2D0(CVPixelBufferRef result, double a2)
{
  v101[6] = *MEMORY[0x277D85DE8];
  if (!result)
  {
    goto LABEL_70;
  }

  v3 = v2;
  v5 = result;
  v6 = CVPixelBufferGetWidth(v5) * a2;
  v7 = CVPixelBufferGetHeight(v5) * a2;
  sub_24A508FA4(&qword_27EF52490, &qword_24A63C188);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_24A633E60;
  v9 = *MEMORY[0x277CC4DE8];
  v10 = sub_24A62EC34();
  v11 = MEMORY[0x277D837D0];
  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 32) = v10;
  *(v8 + 40) = v12;
  v13 = [objc_allocWithZone(MEMORY[0x277CBEAC0]) init];
  *(v8 + 88) = sub_24A61D22C();
  *(v8 + 64) = v13;
  v14 = *MEMORY[0x277CC4E30];
  v15 = sub_24A62EC34();
  *(v8 + 120) = v11;
  *(v8 + 96) = v15;
  *(v8 + 104) = v16;
  v17 = MEMORY[0x277D84CC0];
  *(v8 + 152) = MEMORY[0x277D84CC0];
  *(v8 + 128) = 1111970369;
  v18 = *MEMORY[0x277CC4EC8];
  v19 = sub_24A62EC34();
  *(v8 + 184) = v11;
  v20 = MEMORY[0x277D85048];
  *(v8 + 160) = v19;
  *(v8 + 168) = v21;
  *(v8 + 216) = v20;
  *(v8 + 192) = v6;
  v22 = *MEMORY[0x277CC4DD8];
  v23 = sub_24A62EC34();
  *(v8 + 248) = v11;
  *(v8 + 224) = v23;
  *(v8 + 232) = v24;
  *(v8 + 280) = v20;
  *(v8 + 256) = v7;
  v25 = sub_24A62EF14();
  swift_beginAccess();
  v26 = *(v2 + 24);
  v27 = MEMORY[0x277CBECE8];
  if (!v26 || (v28 = *(v2 + 16)) == 0 || (v20 = v25, v29 = v28, v30 = sub_24A62F164(), v20, v29, v26 = *(v3 + 24), (v30 & 1) == 0))
  {
    *(v3 + 24) = 0;

    v31 = *v27;
    swift_beginAccess();
    v29 = v25;
    v32 = CVPixelBufferPoolCreate(v31, 0, v29, (v3 + 24));
    swift_endAccess();

    v33 = *(v3 + 24);
    if (v33)
    {
      v20 = v33;
      if (v32 == sub_24A62E324())
      {
        v34 = *(v3 + 16);
        *(v3 + 16) = v25;
        v35 = v29;

        goto LABEL_10;
      }
    }

    sub_24A508FA4(&qword_27EF50530, qword_24A636270);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_24A6383F0;
    if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v6 > -9.22337204e18)
    {
      if (v6 < 9.22337204e18)
      {
        v42 = MEMORY[0x277D83B88];
        v43 = MEMORY[0x277D83C10];
        *(v41 + 56) = MEMORY[0x277D83B88];
        *(v41 + 64) = v43;
        *(v41 + 32) = v6;
        if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v7 > -9.22337204e18)
          {
            if (v7 < 9.22337204e18)
            {
              *(v41 + 96) = v42;
              *(v41 + 104) = v43;
              *(v41 + 72) = v7;
              v44 = MEMORY[0x277D84D30];
              *(v41 + 136) = v17;
              *(v41 + 144) = v44;
              *(v41 + 112) = 66;
              *(v41 + 176) = v17;
              *(v41 + 184) = v44;
              *(v41 + 152) = 71;
              *(v41 + 216) = v17;
              *(v41 + 224) = v44;
              *(v41 + 192) = 82;
              *(v41 + 256) = v17;
              *(v41 + 264) = v44;
              *(v41 + 232) = 65;
              v20 = sub_24A62EC24();
              v25 = v45;
              if (qword_27EF4E990 == -1)
              {
LABEL_25:
                v46 = sub_24A62E314();
                sub_24A506EB8(v46, qword_27EF5C0E8);

                v47 = sub_24A62E2F4();
                v48 = sub_24A62EF64();

                if (os_log_type_enabled(v47, v48))
                {
                  v49 = swift_slowAlloc();
                  v50 = swift_slowAlloc();
                  v101[0] = v50;
                  *v49 = 136315138;
                  v51 = sub_24A509BA8(v20, v25, v101);

                  *(v49 + 4) = v51;
                  _os_log_impl(&dword_24A503000, v47, v48, "%s", v49, 0xCu);
                  sub_24A508C54(v50);
                  MEMORY[0x24C21BBE0](v50, -1, -1);
                  MEMORY[0x24C21BBE0](v49, -1, -1);
                }

                else
                {
                }

                v52 = *(v3 + 24);
                *(v3 + 24) = 0;
                goto LABEL_68;
              }

LABEL_79:
              swift_once();
              goto LABEL_25;
            }

LABEL_78:
            __break(1u);
            goto LABEL_79;
          }

LABEL_77:
          __break(1u);
          goto LABEL_78;
        }

LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    __break(1u);
    goto LABEL_75;
  }

  if (!v26)
  {
    sub_24A508FA4(&qword_27EF50530, qword_24A636270);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_24A6383F0;
    if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v6 > -9.22337204e18)
    {
      if (v6 < 9.22337204e18)
      {
        v65 = MEMORY[0x277D83B88];
        v66 = MEMORY[0x277D83C10];
        *(v64 + 56) = MEMORY[0x277D83B88];
        *(v64 + 64) = v66;
        *(v64 + 32) = v6;
        if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v7 > -9.22337204e18)
          {
            if (v7 < 9.22337204e18)
            {
              *(v64 + 96) = v65;
              *(v64 + 104) = v66;
              *(v64 + 72) = v7;
              v67 = MEMORY[0x277D84D30];
              *(v64 + 136) = v17;
              *(v64 + 144) = v67;
              *(v64 + 112) = 66;
              *(v64 + 176) = v17;
              *(v64 + 184) = v67;
              *(v64 + 152) = 71;
              *(v64 + 216) = v17;
              *(v64 + 224) = v67;
              *(v64 + 192) = 82;
              *(v64 + 256) = v17;
              *(v64 + 264) = v67;
              *(v64 + 232) = 65;
              v3 = sub_24A62EC24();
              v25 = v68;
              if (qword_27EF4E990 == -1)
              {
LABEL_49:
                v69 = sub_24A62E314();
                sub_24A506EB8(v69, qword_27EF5C0E8);

                v70 = sub_24A62E2F4();
                v71 = sub_24A62EF64();

                if (os_log_type_enabled(v70, v71))
                {
                  v72 = swift_slowAlloc();
                  v73 = swift_slowAlloc();
                  v101[0] = v73;
                  *v72 = 136315138;
                  v74 = sub_24A509BA8(v3, v25, v101);

                  *(v72 + 4) = v74;
                  _os_log_impl(&dword_24A503000, v70, v71, "%s", v72, 0xCu);
                  sub_24A508C54(v73);
                  MEMORY[0x24C21BBE0](v73, -1, -1);
                  MEMORY[0x24C21BBE0](v72, -1, -1);
                }

                else
                {
                }

                goto LABEL_69;
              }

LABEL_93:
              swift_once();
              goto LABEL_49;
            }

LABEL_92:
            __break(1u);
            goto LABEL_93;
          }

LABEL_91:
          __break(1u);
          goto LABEL_92;
        }

LABEL_90:
        __break(1u);
        goto LABEL_91;
      }

LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    __break(1u);
    goto LABEL_89;
  }

  v20 = v26;
LABEL_10:
  swift_beginAccess();
  if (!*(v3 + 32))
  {
    swift_beginAccess();
    v36 = VTPixelTransferSessionCreate(0, (v3 + 32));
    swift_endAccess();
    if (v36 != sub_24A62E324())
    {
      sub_24A508FA4(&qword_27EF50530, qword_24A636270);
      v75 = swift_allocObject();
      v76 = MEMORY[0x277D849A8];
      *(v75 + 16) = xmmword_24A633830;
      v77 = MEMORY[0x277D84A20];
      *(v75 + 56) = v76;
      *(v75 + 64) = v77;
      *(v75 + 32) = v36;
      v78 = sub_24A62EC24();
      v80 = v79;
      if (qword_27EF4E990 != -1)
      {
        swift_once();
      }

      v81 = sub_24A62E314();
      sub_24A506EB8(v81, qword_27EF5C0E8);

      v82 = sub_24A62E2F4();
      v83 = sub_24A62EF64();

      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        pixelBufferOut[0] = v85;
        *v84 = 136315138;
        v86 = sub_24A509BA8(v78, v80, pixelBufferOut);

        *(v84 + 4) = v86;
        _os_log_impl(&dword_24A503000, v82, v83, "%s", v84, 0xCu);
        sub_24A508C54(v85);
        MEMORY[0x24C21BBE0](v85, -1, -1);
        MEMORY[0x24C21BBE0](v84, -1, -1);
      }

      else
      {
      }

      v52 = *(v3 + 32);
      *(v3 + 32) = 0;
      goto LABEL_68;
    }
  }

  pixelBufferOut[0] = 0;
  PixelBuffer = CVPixelBufferPoolCreatePixelBuffer(*v27, v20, pixelBufferOut);
  if (!pixelBufferOut[0])
  {
LABEL_30:
    sub_24A508FA4(&qword_27EF50530, qword_24A636270);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_24A6383F0;
    if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v6 > -9.22337204e18)
    {
      if (v6 < 9.22337204e18)
      {
        v54 = MEMORY[0x277D83B88];
        v55 = MEMORY[0x277D83C10];
        *(v53 + 56) = MEMORY[0x277D83B88];
        *(v53 + 64) = v55;
        *(v53 + 32) = v6;
        if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v7 > -9.22337204e18)
          {
            if (v7 < 9.22337204e18)
            {
              *(v53 + 96) = v54;
              *(v53 + 104) = v55;
              *(v53 + 72) = v7;
              v56 = MEMORY[0x277D84D30];
              *(v53 + 136) = v17;
              *(v53 + 144) = v56;
              *(v53 + 112) = 66;
              *(v53 + 176) = v17;
              *(v53 + 184) = v56;
              *(v53 + 152) = 71;
              *(v53 + 216) = v17;
              *(v53 + 224) = v56;
              *(v53 + 192) = 82;
              *(v53 + 256) = v17;
              *(v53 + 264) = v56;
              *(v53 + 232) = 65;
              v29 = sub_24A62EC24();
              v3 = v57;
              if (qword_27EF4E990 == -1)
              {
LABEL_37:
                v58 = sub_24A62E314();
                sub_24A506EB8(v58, qword_27EF5C0E8);

                v59 = sub_24A62E2F4();
                v60 = sub_24A62EF64();

                if (os_log_type_enabled(v59, v60))
                {
                  v61 = swift_slowAlloc();
                  v62 = swift_slowAlloc();
                  v99 = v62;
                  *v61 = 136315138;
                  v63 = sub_24A509BA8(v29, v3, &v99);

                  *(v61 + 4) = v63;
                  _os_log_impl(&dword_24A503000, v59, v60, "%s", v61, 0xCu);
                  sub_24A508C54(v62);
                  MEMORY[0x24C21BBE0](v62, -1, -1);
                  MEMORY[0x24C21BBE0](v61, -1, -1);
                }

                else
                {
                }

                goto LABEL_41;
              }

LABEL_86:
              swift_once();
              goto LABEL_37;
            }

LABEL_85:
            __break(1u);
            goto LABEL_86;
          }

LABEL_84:
          __break(1u);
          goto LABEL_85;
        }

LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    __break(1u);
    goto LABEL_82;
  }

  v38 = PixelBuffer;
  v39 = pixelBufferOut[0];
  v29 = pixelBufferOut[0];
  if (v38 != sub_24A62E324())
  {

    goto LABEL_30;
  }

  result = *(v3 + 32);
  if (result)
  {
    v40 = VTPixelTransferSessionTransferImage(result, v5, v29);
    if (v40 == sub_24A62E324())
    {

      result = v39;
LABEL_70:
      v98 = *MEMORY[0x277D85DE8];
      return result;
    }

    sub_24A508FA4(&qword_27EF50530, qword_24A636270);
    v87 = swift_allocObject();
    *(v87 + 16) = xmmword_24A6383F0;
    if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v6 > -9.22337204e18)
    {
      if (v6 < 9.22337204e18)
      {
        v88 = MEMORY[0x277D83B88];
        v89 = MEMORY[0x277D83C10];
        *(v87 + 56) = MEMORY[0x277D83B88];
        *(v87 + 64) = v89;
        *(v87 + 32) = v6;
        if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v7 > -9.22337204e18)
          {
            if (v7 < 9.22337204e18)
            {
              *(v87 + 96) = v88;
              *(v87 + 104) = v89;
              *(v87 + 72) = v7;
              v90 = MEMORY[0x277D84D30];
              *(v87 + 136) = v17;
              *(v87 + 144) = v90;
              *(v87 + 112) = 66;
              *(v87 + 176) = v17;
              *(v87 + 184) = v90;
              *(v87 + 152) = 71;
              *(v87 + 216) = v17;
              *(v87 + 224) = v90;
              *(v87 + 192) = 82;
              *(v87 + 256) = v17;
              *(v87 + 264) = v90;
              *(v87 + 232) = 65;
              v17 = sub_24A62EC24();
              v3 = v91;
              if (qword_27EF4E990 == -1)
              {
LABEL_62:
                v92 = sub_24A62E314();
                sub_24A506EB8(v92, qword_27EF5C0E8);

                v93 = sub_24A62E2F4();
                v94 = sub_24A62EF64();

                if (os_log_type_enabled(v93, v94))
                {
                  v95 = swift_slowAlloc();
                  v96 = swift_slowAlloc();
                  v99 = v96;
                  *v95 = 136315138;
                  v97 = sub_24A509BA8(v17, v3, &v99);

                  *(v95 + 4) = v97;
                  _os_log_impl(&dword_24A503000, v93, v94, "%s", v95, 0xCu);
                  sub_24A508C54(v96);
                  MEMORY[0x24C21BBE0](v96, -1, -1);
                  MEMORY[0x24C21BBE0](v95, -1, -1);
                }

                else
                {
                }

LABEL_41:
                v52 = pixelBufferOut[0];
LABEL_68:

LABEL_69:
                result = 0;
                goto LABEL_70;
              }

LABEL_100:
              swift_once();
              goto LABEL_62;
            }

LABEL_99:
            __break(1u);
            goto LABEL_100;
          }

LABEL_98:
          __break(1u);
          goto LABEL_99;
        }

LABEL_97:
        __break(1u);
        goto LABEL_98;
      }

LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    __break(1u);
    goto LABEL_96;
  }

  __break(1u);
  return result;
}

uint64_t sub_24A61D1C0()
{

  return swift_deallocClassInstance();
}

unint64_t sub_24A61D22C()
{
  result = qword_27EF52498;
  if (!qword_27EF52498)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF52498);
  }

  return result;
}

id sub_24A61D2A0(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_targetRadius);
  v3 = v2 * a1;
  v4 = *(v1 + OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_targetWidth) + v2 - v2 * a1 + v2 - v2 * a1;
  v5 = *(v1 + OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_collapseSpring);
  v6 = (v5 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
  swift_beginAccess();
  if (vabdd_f64(v6[35] + *(v5 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), *v6 + *(v5 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o)) > *(v5 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
  {
    v7 = *v6 + *(v5 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
  }

  else
  {
    v7 = v6[35] + *(v5 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
  }

  v8 = *(v1 + OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_ringNode);
  v9 = objc_opt_self();
  v10 = v9;
  if (v7 >= 0.7)
  {
    v21 = [v9 whiteColor];
    [v8 setStrokeColor_];

    v22 = [v10 clearColor];
    [v8 setFillColor_];

    Mutable = CGPathCreateMutable();
    sub_24A62EFA4();
  }

  else
  {
    v11 = [v9 clearColor];
    [v8 setStrokeColor_];

    v12 = [v10 whiteColor];
    [v8 setFillColor_];

    v13 = v3 + v4 * 0.5;
    v14 = v3 - v4 * 0.5;
    v15 = -v13;
    v16 = v13 + v13;
    v17 = objc_opt_self();
    v18 = [v17 bezierPathWithOvalInRect_];
    v19 = [v17 bezierPathWithOvalInRect_];
    [v18 appendPath_];
    [v18 setUsesEvenOddFillRule_];
    Mutable = [v18 CGPath];

    v4 = 0.0;
  }

  [v8 setPath_];

  return [v8 setLineWidth_];
}

char *sub_24A61D674(unsigned __int16 *a1)
{
  v2 = v1;
  v3 = *a1;
  *&v1[OBJC_IVAR____TtC11FMFindingUI18FMPFSKBTLevelsNode_findingType] = v3;
  v4 = [objc_opt_self() currentDevice];
  v5 = [v4 userInterfaceIdiom];

  *&v6 = 0x3FECCCCCCCCCCCCDLL;
  if (v5 == 1)
  {
    *&v6 = 1.0;
  }

  v7 = (v3 >> 13) & 3;
  if (!v7)
  {
    goto LABEL_9;
  }

  v26 = v6;
  if (v7 == 1)
  {
    v8 = sub_24A62DF44();
    v27[3] = v8;
    v27[4] = sub_24A5964D0();
    v9 = sub_24A5292E8(v27);
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D089D0], v8);
    LOBYTE(v8) = MEMORY[0x24C219850](v27);
    sub_24A508C54(v27);
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_9:
    v10 = &unk_285D9EA70;
    v11 = qword_285D9EA80;
    if (!qword_285D9EA80)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  if ((v3 & 0x8100) != 0x100)
  {
    goto LABEL_9;
  }

LABEL_6:
  sub_24A508FA4(&qword_27EF52438, &unk_24A63C0F0);
  v10 = swift_allocObject();
  *(v10 + 1) = xmmword_24A633E60;
  *(v10 + 2) = vmulq_n_f64(xmmword_24A63C1A0, *&v26);
  *(v10 + 3) = vmulq_n_f64(xmmword_24A63C1B0, *&v26);
  v11 = *(v10 + 2);
  if (!v11)
  {
LABEL_7:

    v12 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

LABEL_10:
  v27[0] = MEMORY[0x277D84F90];
  sub_24A62F404();
  v13 = 0;
  do
  {
    v14 = v13 + 1;
    sub_24A61D994(v13, v3, *(v10 + v13 + 4));
    sub_24A62F3E4();
    v15 = *(v27[0] + 16);
    sub_24A62F414();
    sub_24A62F424();
    sub_24A62F3F4();
    v13 = v14;
  }

  while (v11 != v14);

  v12 = v27[0];
LABEL_13:
  *&v2[OBJC_IVAR____TtC11FMFindingUI18FMPFSKBTLevelsNode_ringNodes] = v12;
  v16 = type metadata accessor for FMPFSKBTLevelsNode();
  v28.receiver = v2;
  v28.super_class = v16;
  v17 = objc_msgSendSuper2(&v28, sel_init);
  v18 = *&v17[OBJC_IVAR____TtC11FMFindingUI18FMPFSKBTLevelsNode_ringNodes];
  if (v18 >> 62)
  {
    goto LABEL_28;
  }

  v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v20 = v17;

    if (!v19)
    {
      break;
    }

    while (!__OFSUB__(v19--, 1))
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x24C21ACB0](v19, v18);
      }

      else
      {
        if ((v19 & 0x8000000000000000) != 0)
        {
          goto LABEL_26;
        }

        if (v19 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v22 = *(v18 + 32 + 8 * v19);
      }

      v23 = v22;
      [v20 addChild_];

      if (!v19)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    v25 = v17;
    v19 = sub_24A62F464();
    v17 = v25;
  }

LABEL_24:

  return v20;
}

char *sub_24A61D994(uint64_t a1, unsigned int a2, double a3)
{
  v5 = a2;
  v6 = (a2 >> 13) & 3;
  if (!v6)
  {
    goto LABEL_6;
  }

  if (v6 != 1)
  {
    if ((a2 & 0x8100) == 0x100)
    {
      goto LABEL_4;
    }

LABEL_6:
    v9 = a1 * -0.05 + 0.45;
    v10 = 10.0;
    if (!v6)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v7 = sub_24A62DF44();
  v62 = v7;
  v63 = sub_24A5964D0();
  v8 = sub_24A5292E8(v61);
  (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277D089D0], v7);
  LOBYTE(v7) = MEMORY[0x24C219850](v61);
  sub_24A508C54(v61);
  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_4:
  v9 = dbl_24A63C1C0[(a1 & 1) == 0];
  v10 = 10.0;
LABEL_7:
  if (v6 == 1)
  {
    v11 = sub_24A62DF44();
    v62 = v11;
    v63 = sub_24A5964D0();
    v12 = sub_24A5292E8(v61);
    (*(*(v11 - 8) + 104))(v12, *MEMORY[0x277D089D0], v11);
    LOBYTE(v11) = MEMORY[0x24C219850](v61);
    sub_24A508C54(v61);
    if (v11)
    {
      goto LABEL_9;
    }
  }

  else if ((v5 & 0x8100) == 0x100)
  {
LABEL_9:
    if (a1)
    {
      v10 = 10.0;
    }

    else
    {
      v10 = 5.0;
    }
  }

LABEL_12:
  v13 = objc_opt_self();
  v14 = [v13 currentDevice];
  v15 = &property descriptor for FMFindingViewController.dismissedHandler;
  v16 = [v14 userInterfaceIdiom];

  if (v16 == 1)
  {
    v17 = 1.5;
  }

  else
  {
    v17 = 1.0;
  }

  v18 = a3;
  if (!v6)
  {
    goto LABEL_28;
  }

  if (v6 == 1)
  {
    v19 = sub_24A62DF44();
    v62 = v19;
    v20 = sub_24A5964D0();
    v63 = v20;
    v21 = sub_24A5292E8(v61);
    v22 = *MEMORY[0x277D089D0];
    v23 = v5;
    v24 = *(*(v19 - 8) + 104);
    v24(v21, v22, v19);
    v25 = MEMORY[0x24C219850](v61);
    sub_24A508C54(v61);
    if (v25)
    {
      v18 = v17 * a3;
    }

    else
    {
      v18 = a3;
    }

    v62 = v19;
    v63 = v20;
    v26 = sub_24A5292E8(v61);
    v24(v26, v22, v19);
    v15 = &property descriptor for FMFindingViewController.dismissedHandler;
    v5 = v23;
    v27 = MEMORY[0x24C219850](v61);
    sub_24A508C54(v61);
    if ((v27 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v18 = a3;
    if ((v5 & 0x8100) != 0x100)
    {
LABEL_28:
      v31 = [objc_opt_self() mainScreen];
      [v31 bounds];
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v39 = v38;

      v65.origin.x = v33;
      v65.origin.y = v35;
      v65.size.width = v37;
      v65.size.height = v39;
      Height = CGRectGetHeight(v65);
      goto LABEL_29;
    }

    v18 = v17 * a3;
  }

  v28 = [v13 currentDevice];
  v29 = [v28 v15[216]];

  if (v29 != 1)
  {
    goto LABEL_28;
  }

  Height = 1180.0;
LABEL_29:
  v40 = Height * a3 * 0.5;
  v41 = a1 * 0.33 + 1.0;
  v42 = type metadata accessor for FMPFSKBTLevelRingNode();
  v43 = objc_allocWithZone(v42);
  v44 = OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_visibilitySpring;
  *&v43[v44] = sub_24A5B1B2C(0, 0, 0x3F50624DD2F1A9FCLL, 0);
  v45 = OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_collapseSpring;
  *&v43[v45] = sub_24A5B1B2C(0x3FF0000000000000, 0, 0x3F50624DD2F1A9FCLL, 0);
  v46 = OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_ringNode;
  *&v43[v46] = [objc_allocWithZone(MEMORY[0x277CDCF70]) init];
  *&v43[OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_findingType] = v5;
  *&v43[OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_threshold] = v18;
  *&v43[OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_targetAlpha] = v9;
  *&v43[OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_targetWidth] = v10;
  *&v43[OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_targetRadius] = round(v40);
  v47 = (*&v43[v44] + OBJC_IVAR____TtC11FMFindingUI8FLSpring_parameters);
  v48 = *v47;
  v49 = v47[1];
  v50 = v47[2];
  v51 = v47[3];
  v47[2] = v41;
  sub_24A55C5A0(v48, v49, v50, v51);
  v60.receiver = v43;
  v60.super_class = v42;
  v52 = objc_msgSendSuper2(&v60, sel_init);
  v53 = OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_ringNode;
  v54 = *&v52[OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_ringNode];
  v55 = *&v52[OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_targetRadius];
  v56 = v52;
  v57 = v54;
  Mutable = CGPathCreateMutable();
  v61[0] = 0x3FF0000000000000;
  v61[1] = 0;
  v61[2] = 0;
  v62 = 0x3FF0000000000000;
  v63 = 0;
  v64 = 0;
  sub_24A62EFA4();
  [v57 setPath_];

  [*&v52[v53] setLineWidth_];
  [v56 addChild_];

  return v56;
}

void sub_24A61DF70(int a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11FMFindingUI18FMPFSKBTLevelsNode_ringNodes);
  if (v3 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24A62F464())
  {
    v5 = 0;
    v44 = v3 & 0xFFFFFFFFFFFFFF8;
    v45 = v3 & 0xC000000000000001;
    v39 = *MEMORY[0x277D089D0];
    v6 = &OBJC_IVAR____TtC11FMFindingUI8FLSpring__s;
    v41 = a1;
    v40 = v3;
    v43 = i;
    while (1)
    {
      if (v45)
      {
        v13 = MEMORY[0x24C21ACB0](v5, v3);
      }

      else
      {
        if (v5 >= *(v44 + 16))
        {
          goto LABEL_35;
        }

        v13 = *(v3 + 8 * v5 + 32);
      }

      v14 = v13;
      v12 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v15 = OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_visibilitySpring;
      v16 = *&v13[OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_visibilitySpring];
      if ((a1 & 1) == 0)
      {
        sub_24A55C6B4(1.0);
        *(v16 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
        if (UIAccessibilityIsReduceMotionEnabled())
        {
          LOBYTE(v42) = 1;
LABEL_27:
          v27 = *&v14[v15];
          v28 = v6;
          v29 = (v27 + *v6);
          swift_beginAccess();
          v30 = *v29 + *(v27 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
          if (vabdd_f64(v29[35] + *(v27 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v30) <= *(v27 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
          {
            v30 = v29[35] + *(v27 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
          }

          [v14 setAlpha_];
          v31 = *&v14[OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_ringNode];
          v32 = OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_collapseSpring;
          v33 = *&v14[OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_collapseSpring];
          v34 = (v33 + *v28);
          swift_beginAccess();
          v35 = *v34 + *(v33 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
          if (vabdd_f64(v34[35] + *(v33 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v35) <= *(v33 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
          {
            v35 = v34[35] + *(v33 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
          }

          [v31 setAlpha_];
          v36 = *&v14[v15];
          v37 = (v36 + *v28);
          if (v42)
          {
            v38 = v36 + *v28;
            swift_beginAccess();
            [v14 setScale_];
            sub_24A61D2A0(1.0);
            a1 = v41;
            v3 = v40;
            v6 = v28;
          }

          else
          {
            v7 = v36 + *v28;
            swift_beginAccess();
            v8 = *v37 + *(v36 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
            if (vabdd_f64(v37[35] + *(v36 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v8) <= *(v36 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
            {
              v8 = v37[35] + *(v36 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
            }

            [v14 setScale_];
            v9 = *&v14[v32];
            v10 = (v9 + *v28);
            swift_beginAccess();
            v11 = *v10 + *(v9 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
            if (vabdd_f64(v10[35] + *(v9 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v11) <= *(v9 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
            {
              v11 = v10[35] + *(v9 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
            }

            sub_24A61D2A0(v11);
            a1 = v41;
            v3 = v40;
            v6 = v28;
          }

          v12 = v5 + 1;
          goto LABEL_10;
        }

        v23 = *&v14[OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_findingType];
        v24 = (v23 >> 13) & 3;
        if (v24)
        {
          if (v24 == 1)
          {
            v25 = sub_24A62DF44();
            v46[3] = v25;
            v46[4] = sub_24A5964D0();
            v26 = sub_24A5292E8(v46);
            (*(*(v25 - 8) + 104))(v26, v39, v25);
            LOBYTE(v42) = MEMORY[0x24C219850](v46);
            sub_24A508C54(v46);
            goto LABEL_27;
          }

          if ((v23 & 0x8000) == 0)
          {
            v42 = (v23 >> 8) & 1;
            goto LABEL_27;
          }
        }

        LOBYTE(v42) = 0;
        goto LABEL_27;
      }

      v17 = v16 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget;
      *v17 = 0x3FF0000000000000;
      *(v17 + 8) = 0;
      v18 = v6;
      v19 = v16 + *v6;
      swift_beginAccess();
      v20 = v16 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o;
      v21 = *(v16 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
      if (*(v19 + 280) + v21 == 1.79769313e308)
      {
        sub_24A55C6B4(1.0);
        *(v16 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
        v21 = *(v20 + 40);
      }

      v22 = 1.0 - v21;
      *(v19 + 280) = v22;
      *(v19 + 240) = v22;
      *(v19 + 248) = 0;
      v6 = v18;
LABEL_10:

      ++v5;
      if (v12 == v43)
      {
        return;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }
}

void sub_24A61E440(int a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11FMFindingUI18FMPFSKBTLevelsNode_ringNodes);
  if (v3 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24A62F464())
  {
    v5 = 0;
    v44 = v3 & 0xFFFFFFFFFFFFFF8;
    v45 = v3 & 0xC000000000000001;
    v39 = *MEMORY[0x277D089D0];
    v6 = &OBJC_IVAR____TtC11FMFindingUI8FLSpring__s;
    v41 = a1;
    v40 = v3;
    v43 = i;
    while (1)
    {
      if (v45)
      {
        v13 = MEMORY[0x24C21ACB0](v5, v3);
      }

      else
      {
        if (v5 >= *(v44 + 16))
        {
          goto LABEL_35;
        }

        v13 = *(v3 + 8 * v5 + 32);
      }

      v14 = v13;
      v12 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v15 = OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_visibilitySpring;
      v16 = *&v13[OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_visibilitySpring];
      if ((a1 & 1) == 0)
      {
        sub_24A55C6B4(0.0);
        *(v16 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
        if (UIAccessibilityIsReduceMotionEnabled())
        {
          LOBYTE(v42) = 1;
LABEL_27:
          v27 = *&v14[v15];
          v28 = v6;
          v29 = (v27 + *v6);
          swift_beginAccess();
          v30 = *v29 + *(v27 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
          if (vabdd_f64(v29[35] + *(v27 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v30) <= *(v27 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
          {
            v30 = v29[35] + *(v27 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
          }

          [v14 setAlpha_];
          v31 = *&v14[OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_ringNode];
          v32 = OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_collapseSpring;
          v33 = *&v14[OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_collapseSpring];
          v34 = (v33 + *v28);
          swift_beginAccess();
          v35 = *v34 + *(v33 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
          if (vabdd_f64(v34[35] + *(v33 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v35) <= *(v33 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
          {
            v35 = v34[35] + *(v33 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
          }

          [v31 setAlpha_];
          v36 = *&v14[v15];
          v37 = (v36 + *v28);
          if (v42)
          {
            v38 = v36 + *v28;
            swift_beginAccess();
            [v14 setScale_];
            sub_24A61D2A0(1.0);
            a1 = v41;
            v3 = v40;
            v6 = v28;
          }

          else
          {
            v7 = v36 + *v28;
            swift_beginAccess();
            v8 = *v37 + *(v36 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
            if (vabdd_f64(v37[35] + *(v36 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v8) <= *(v36 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
            {
              v8 = v37[35] + *(v36 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
            }

            [v14 setScale_];
            v9 = *&v14[v32];
            v10 = (v9 + *v28);
            swift_beginAccess();
            v11 = *v10 + *(v9 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
            if (vabdd_f64(v10[35] + *(v9 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v11) <= *(v9 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
            {
              v11 = v10[35] + *(v9 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
            }

            sub_24A61D2A0(v11);
            a1 = v41;
            v3 = v40;
            v6 = v28;
          }

          v12 = v5 + 1;
          goto LABEL_10;
        }

        v23 = *&v14[OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_findingType];
        v24 = (v23 >> 13) & 3;
        if (v24)
        {
          if (v24 == 1)
          {
            v25 = sub_24A62DF44();
            v46[3] = v25;
            v46[4] = sub_24A5964D0();
            v26 = sub_24A5292E8(v46);
            (*(*(v25 - 8) + 104))(v26, v39, v25);
            LOBYTE(v42) = MEMORY[0x24C219850](v46);
            sub_24A508C54(v46);
            goto LABEL_27;
          }

          if ((v23 & 0x8000) == 0)
          {
            v42 = (v23 >> 8) & 1;
            goto LABEL_27;
          }
        }

        LOBYTE(v42) = 0;
        goto LABEL_27;
      }

      v17 = v16 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget;
      *v17 = 0;
      *(v17 + 8) = 0;
      v18 = v6;
      v19 = v16 + *v6;
      swift_beginAccess();
      v20 = v16 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o;
      v21 = *(v16 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
      if (*(v19 + 280) + v21 == 1.79769313e308)
      {
        sub_24A55C6B4(0.0);
        *(v16 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
        v21 = *(v20 + 40);
      }

      v22 = 0.0 - v21;
      *(v19 + 280) = v22;
      *(v19 + 240) = v22;
      *(v19 + 248) = 0;
      v6 = v18;
LABEL_10:

      ++v5;
      if (v12 == v43)
      {
        return;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }
}

uint64_t sub_24A61E90C(int a1, double a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC11FMFindingUI18FMPFSKBTLevelsNode_ringNodes);
  v105[0] = MEMORY[0x277D84F90];
  v93 = v5 >> 62;
  if (v5 >> 62)
  {
    goto LABEL_106;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24A62F464())
  {
    if (i)
    {
      v7 = 0;
      do
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x24C21ACB0](v7, v5);
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_99;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
          goto LABEL_102;
        }

        if (*&v8[OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_threshold] > a2)
        {
        }

        else
        {
          sub_24A62F3E4();
          v10 = *(v105[0] + 16);
          sub_24A62F414();
          sub_24A62F424();
          sub_24A62F3F4();
        }

        ++v7;
      }

      while (v9 != i);
      v11 = v105[0];
      v12 = MEMORY[0x277D84F90];
      v92 = v5;
      if ((v105[0] & 0x8000000000000000) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
      v12 = MEMORY[0x277D84F90];
      v92 = v5;
      if ((MEMORY[0x277D84F90] & 0x8000000000000000) == 0)
      {
LABEL_17:
        if ((v11 & 0x4000000000000000) == 0)
        {
          v13 = *(v11 + 16);
          goto LABEL_19;
        }
      }
    }

    v90 = v11;
    v13 = sub_24A62F464();
    v11 = v90;
LABEL_19:
    v5 = &OBJC_IVAR____TtC11FMFindingUI8FLSpring__s;
    v102 = a1;
    if (v13)
    {
      v14 = 0;
      v103 = v11 & 0xC000000000000001;
      v94 = *MEMORY[0x277D089D0];
      v99 = v13;
      v101 = v11;
      while (1)
      {
        if (v103)
        {
          v22 = MEMORY[0x24C21ACB0](v14, v11);
        }

        else
        {
          if (v14 >= *(v11 + 16))
          {
            goto LABEL_101;
          }

          v22 = *(v11 + 8 * v14 + 32);
        }

        v23 = v22;
        v21 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_100;
        }

        v24 = OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_collapseSpring;
        v25 = *&v22[OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_collapseSpring];
        if ((a1 & 1) == 0)
        {
          break;
        }

        v26 = v25 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget;
        *v26 = 0;
        *(v26 + 8) = 0;
        v27 = v25 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s;
        swift_beginAccess();
        v28 = v25 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o;
        v29 = *(v25 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
        if (*(v27 + 280) + v29 == 1.79769313e308)
        {
          sub_24A55C6B4(0.0);
          *(v25 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
          v29 = *(v28 + 40);
        }

        v30 = 0.0 - v29;
        *(v27 + 280) = v30;
        *(v27 + 240) = v30;
        *(v27 + 248) = 0;
LABEL_26:

        ++v14;
        v11 = v101;
        if (v21 == v99)
        {
          goto LABEL_50;
        }
      }

      sub_24A55C6B4(0.0);
      *(v25 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
      if (UIAccessibilityIsReduceMotionEnabled())
      {
        LOBYTE(v96) = 1;
LABEL_43:
        v35 = OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_visibilitySpring;
        v36 = *&v23[OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_visibilitySpring];
        v37 = (v36 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
        swift_beginAccess();
        v38 = *v37 + *(v36 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
        if (vabdd_f64(v37[35] + *(v36 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v38) <= *(v36 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
        {
          v38 = v37[35] + *(v36 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
        }

        [v23 setAlpha_];
        v39 = *&v23[OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_ringNode];
        v40 = *&v23[v24];
        v41 = (v40 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
        swift_beginAccess();
        v42 = *v41 + *(v40 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
        v43 = v41[35] + *(v40 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
        v44 = *(v40 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold);
        v5 = &OBJC_IVAR____TtC11FMFindingUI8FLSpring__s;
        if (vabdd_f64(v43, v42) <= v44)
        {
          v42 = v43;
        }

        [v39 setAlpha_];
        v45 = *&v23[v35];
        v46 = (v45 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
        if (v96)
        {
          swift_beginAccess();
          [v23 setScale_];
          v18 = 1.0;
        }

        else
        {
          swift_beginAccess();
          v15 = *v46 + *(v45 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
          if (vabdd_f64(v46[35] + *(v45 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v15) <= *(v45 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
          {
            v15 = v46[35] + *(v45 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
          }

          [v23 setScale_];
          v16 = *&v23[v24];
          v17 = (v16 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
          swift_beginAccess();
          v18 = *v17 + *(v16 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
          v19 = v17[35] + *(v16 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
          v20 = *(v16 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold);
          v5 = &OBJC_IVAR____TtC11FMFindingUI8FLSpring__s;
          if (vabdd_f64(v19, v18) <= v20)
          {
            v18 = v19;
          }
        }

        sub_24A61D2A0(v18);
        a1 = v102;
        v12 = MEMORY[0x277D84F90];
        v21 = v14 + 1;
        goto LABEL_26;
      }

      v31 = *&v23[OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_findingType];
      v32 = (v31 >> 13) & 3;
      if (v32)
      {
        if (v32 == 1)
        {
          v33 = sub_24A62DF44();
          v106 = v33;
          v107 = sub_24A5964D0();
          v34 = sub_24A5292E8(v105);
          (*(*(v33 - 8) + 104))(v34, v94, v33);
          LOBYTE(v96) = MEMORY[0x24C219850](v105);
          sub_24A508C54(v105);
          goto LABEL_43;
        }

        if ((v31 & 0x8000) == 0)
        {
          v96 = (v31 >> 8) & 1;
          goto LABEL_43;
        }
      }

      LOBYTE(v96) = 0;
      goto LABEL_43;
    }

LABEL_50:

    v105[0] = v12;
    if (v93)
    {
      break;
    }

    v5 = v92;
    v47 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v47)
    {
      goto LABEL_64;
    }

LABEL_52:
    v48 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v49 = MEMORY[0x24C21ACB0](v48, v5);
      }

      else
      {
        if (v48 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_103;
        }

        v49 = *(v5 + 8 * v48 + 32);
      }

      v50 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        break;
      }

      if (*&v49[OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_threshold] <= a2)
      {
      }

      else
      {
        sub_24A62F3E4();
        v51 = *(v105[0] + 16);
        sub_24A62F414();
        sub_24A62F424();
        sub_24A62F3F4();
      }

      ++v48;
      if (v50 == v47)
      {
        v5 = v105[0];
        goto LABEL_65;
      }
    }

LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    ;
  }

  v5 = v92;
  v47 = sub_24A62F464();
  if (v47)
  {
    goto LABEL_52;
  }

LABEL_64:
  v5 = MEMORY[0x277D84F90];
LABEL_65:
  v52 = &OBJC_IVAR____TtC11FMFindingUI8FLSpring__o;
  if ((v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
  {
    v53 = sub_24A62F464();
    if (!v53)
    {
    }

LABEL_68:
    v54 = 0;
    v104 = v5 & 0xC000000000000001;
    v95 = *MEMORY[0x277D089D0];
    a2 = 1.0;
    v97 = v53;
    v98 = v5;
    while (1)
    {
      if (v104)
      {
        v62 = MEMORY[0x24C21ACB0](v54, v5);
      }

      else
      {
        if (v54 >= *(v5 + 16))
        {
          goto LABEL_105;
        }

        v62 = *(v5 + 8 * v54 + 32);
      }

      v63 = v62;
      v61 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        goto LABEL_104;
      }

      v64 = OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_collapseSpring;
      v65 = *&v62[OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_collapseSpring];
      if ((a1 & 1) == 0)
      {
        break;
      }

      v66 = v65 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget;
      *v66 = 0x3FF0000000000000;
      *(v66 + 8) = 0;
      v67 = v65 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s;
      swift_beginAccess();
      v68 = v52;
      v69 = v65 + *v52;
      v70 = *(v69 + 40);
      if (*(v67 + 280) + v70 == 1.79769313e308)
      {
        sub_24A55C6B4(1.0);
        *(v65 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
        v70 = *(v69 + 40);
      }

      v71 = 1.0 - v70;
      *(v67 + 280) = v71;
      *(v67 + 240) = v71;
      *(v67 + 248) = 0;
      v52 = v68;
LABEL_74:

      ++v54;
      if (v61 == v53)
      {
      }
    }

    sub_24A55C6B4(1.0);
    *(v65 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
    if (UIAccessibilityIsReduceMotionEnabled())
    {
      LOBYTE(v100) = 1;
LABEL_91:
      v76 = OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_visibilitySpring;
      v77 = *&v63[OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_visibilitySpring];
      v78 = (v77 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
      swift_beginAccess();
      v79 = (v77 + *v52);
      v80 = *v78 + *v79;
      if (vabdd_f64(v78[35] + v79[5], v80) <= *(v77 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
      {
        v80 = v78[35] + v79[5];
      }

      [v63 setAlpha_];
      v81 = *&v63[OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_ringNode];
      v82 = v52;
      v83 = v64;
      v84 = *&v63[v64];
      v85 = (v84 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
      swift_beginAccess();
      v86 = (v84 + *v82);
      v87 = *v85 + *v86;
      if (vabdd_f64(v85[35] + v86[5], v87) <= *(v84 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
      {
        v87 = v85[35] + v86[5];
      }

      [v81 setAlpha_];
      v88 = *&v63[v76];
      v89 = (v88 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
      if (v100)
      {
        swift_beginAccess();
        [v63 setScale_];
        v60 = 1.0;
      }

      else
      {
        swift_beginAccess();
        v55 = (v88 + *v82);
        v56 = *v89 + *v55;
        if (vabdd_f64(v89[35] + v55[5], v56) <= *(v88 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
        {
          v56 = v89[35] + v55[5];
        }

        [v63 setScale_];
        v57 = *&v63[v83];
        v58 = (v57 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
        swift_beginAccess();
        v59 = (v57 + *v82);
        v60 = *v58 + *v59;
        if (vabdd_f64(v58[35] + v59[5], v60) <= *(v57 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
        {
          v60 = v58[35] + v59[5];
        }
      }

      sub_24A61D2A0(v60);
      a1 = v102;
      v52 = v82;
      v53 = v97;
      v5 = v98;
      v61 = v54 + 1;
      goto LABEL_74;
    }

    v72 = *&v63[OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_findingType];
    v73 = (v72 >> 13) & 3;
    if (v73)
    {
      if (v73 == 1)
      {
        v74 = sub_24A62DF44();
        v106 = v74;
        v107 = sub_24A5964D0();
        v75 = sub_24A5292E8(v105);
        (*(*(v74 - 8) + 104))(v75, v95, v74);
        LOBYTE(v100) = MEMORY[0x24C219850](v105);
        sub_24A508C54(v105);
        goto LABEL_91;
      }

      if ((v72 & 0x8000) == 0)
      {
        v100 = (v72 >> 8) & 1;
        goto LABEL_91;
      }
    }

    LOBYTE(v100) = 0;
    goto LABEL_91;
  }

  v53 = *(v5 + 16);
  if (v53)
  {
    goto LABEL_68;
  }
}

void sub_24A61F414(id a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC11FMFindingUI18FMPFSKBTLevelsNode_ringNodes);
  if (v3 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; a1 = v30)
  {
    v5 = 0;
    v36 = v3 & 0xFFFFFFFFFFFFFF8;
    v37 = v3 & 0xC000000000000001;
    if (a2)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = *&a1;
    }

    v33 = *MEMORY[0x277D089D0];
    v34 = v3;
    v35 = i;
    while (1)
    {
      if (v37)
      {
        *&a1 = COERCE_DOUBLE(MEMORY[0x24C21ACB0](v5, v3));
      }

      else
      {
        if (v5 >= *(v36 + 16))
        {
          goto LABEL_31;
        }

        a1 = *(v3 + 8 * v5 + 32);
      }

      v11 = a1;
      v12 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v38 = v5;
      v13 = OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_visibilitySpring;
      v14 = *(a1 + OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_visibilitySpring);
      sub_24A55C858(v6);
      LOBYTE(v15) = 1;
      *(v14 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
      v39 = OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_collapseSpring;
      v16 = *&v11[OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_collapseSpring];
      sub_24A55C858(v6);
      *(v16 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
      if (!UIAccessibilityIsReduceMotionEnabled())
      {
        v17 = *&v11[OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_findingType];
        v18 = (v17 >> 13) & 3;
        if (!v18)
        {
          goto LABEL_22;
        }

        if (v18 == 1)
        {
          v19 = sub_24A62DF44();
          v41[3] = v19;
          v41[4] = sub_24A5964D0();
          v20 = sub_24A5292E8(v41);
          (*(*(v19 - 8) + 104))(v20, v33, v19);
          LOBYTE(v15) = MEMORY[0x24C219850](v41);
          sub_24A508C54(v41);
        }

        else
        {
          if ((v17 & 0x8000) != 0)
          {
LABEL_22:
            LOBYTE(v15) = 0;
            goto LABEL_23;
          }

          v15 = (v17 >> 8) & 1;
        }
      }

LABEL_23:
      v40 = v12;
      v21 = *&v11[v13];
      v22 = (v21 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
      swift_beginAccess();
      v23 = *v22 + *(v21 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
      if (vabdd_f64(v22[35] + *(v21 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v23) <= *(v21 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
      {
        v23 = v22[35] + *(v21 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
      }

      [v11 setAlpha_];
      v24 = *&v11[OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_ringNode];
      v25 = *&v11[v39];
      v26 = (v25 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
      swift_beginAccess();
      v27 = *v26 + *(v25 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
      if (vabdd_f64(v26[35] + *(v25 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v27) <= *(v25 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
      {
        v27 = v26[35] + *(v25 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
      }

      [v24 setAlpha_];
      v28 = *&v11[v13];
      v29 = (v28 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
      if (v15)
      {
        swift_beginAccess();
        [v11 setScale_];
        v10 = 1.0;
      }

      else
      {
        swift_beginAccess();
        v7 = *v29 + *(v28 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
        if (vabdd_f64(v29[35] + *(v28 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v7) <= *(v28 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
        {
          v7 = v29[35] + *(v28 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
        }

        [v11 setScale_];
        v8 = *&v11[v39];
        v9 = (v8 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
        swift_beginAccess();
        v10 = *v9 + *(v8 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
        if (vabdd_f64(v9[35] + *(v8 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v10) <= *(v8 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
        {
          v10 = v9[35] + *(v8 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
        }
      }

      v3 = v34;
      sub_24A61D2A0(v10);

      v5 = v38 + 1;
      if (v40 == v35)
      {
        return;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    v30 = a1;
    v31 = a2;
    v32 = sub_24A62F464();
    a2 = v31;
    i = v32;
  }
}