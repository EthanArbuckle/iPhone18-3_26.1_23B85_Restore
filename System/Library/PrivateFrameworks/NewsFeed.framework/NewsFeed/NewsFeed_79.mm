uint64_t sub_1D6267144(uint64_t result, uint64_t a2)
{
  if (*(v2 + 16) == 1)
  {
    return sub_1D6249244(result, a2, *v2, *(v2 + 8));
  }

  return result;
}

uint64_t sub_1D626716C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 8);

  sub_1D6213004(a1, a2, v5);
}

uint64_t FormatSplitBackgroundInsets.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v7 = *v2;
  v6 = v2[1];

  sub_1D620B270(a1, a2, v7);

  if (!v3)
  {

    sub_1D620B270(a1, a2, v6);
  }

  return result;
}

uint64_t FormatSplitBackgroundSide.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  if ((*(v2 + 64) & 1) == 0)
  {
    return FormatColor.bind(binder:context:)(a1, a2);
  }

  v5 = *(v2 + 48);
  v4 = *(v2 + 56);
  result = sub_1D6212DD8(a1, a2, *v2);
  if (!v3)
  {
    if (v5)
    {

      sub_1D620B270(a1, a2, v5);
      sub_1D620B270(a1, a2, v4);
      return sub_1D5CDE22C(v5);
    }
  }

  return result;
}

uint64_t sub_1D6267350(uint64_t a1, uint64_t a2)
{
  v7 = *v2;
  v6 = v2[1];

  sub_1D620B270(a1, a2, v7);

  if (!v3)
  {

    sub_1D620B270(a1, a2, v6);
  }

  return result;
}

uint64_t sub_1D62673DC(uint64_t a1, uint64_t a2)
{
  if ((*(v2 + 64) & 1) == 0)
  {
    return FormatColor.bind(binder:context:)(a1, a2);
  }

  v5 = *(v2 + 48);
  v4 = *(v2 + 56);
  result = sub_1D6212DD8(a1, a2, *v2);
  if (!v3)
  {
    if (v5)
    {

      sub_1D620B270(a1, a2, v5);
      sub_1D620B270(a1, a2, v4);
      return sub_1D5CDE22C(v5);
    }
  }

  return result;
}

unint64_t FormatSponsoredBannerUserInterfaceStyle.bind(binder:context:)(unint64_t result, uint64_t a2)
{
  v3 = *v2;
  if (*v2 >= 2)
  {
    v4 = *(v3 + 16);
    v5 = *(v3 + 24);
    v6 = result;
    sub_1D5D0A57C(v4);
    sub_1D5D0A57C(v5);
    sub_1D6248A90(v6, a2, v4, v5);
    sub_1D5D0A58C(v4);
    return sub_1D5D0A58C(v5);
  }

  return result;
}

uint64_t FormatSponsoredBannerNodeStyle.Selector.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v5 = result;
  v6 = v2[3];
  v7 = v2[5];
  if ((~v2[2] & 0xF000000000000007) == 0 || (, FormatColor.bind(binder:context:)(v5, a2), result = , !v3))
  {
    if ((~v6 & 0xF000000000000007) == 0 || (, FormatColor.bind(binder:context:)(v5, a2), result = , !v3))
    {
      if (v7)
      {
        if (v7 != 1)
        {
          if (v7 != 2)
          {
            v8 = *(v7 + 16);
            v9 = *(v7 + 24);
            sub_1D5D0A59C(v7);
            sub_1D5D0A57C(v8);
            sub_1D5D0A57C(v9);
            sub_1D6248A90(v5, a2, v8, v9);
            sub_1D5D0A58C(v8);
            sub_1D5D0A58C(v9);
            return sub_1D5D0A5AC(v7);
          }

          return result;
        }

        v10 = 1;
      }

      else
      {
        v10 = 0;
      }

      return sub_1D5D0A5AC(v10);
    }
  }

  return result;
}

unint64_t sub_1D62676DC(unint64_t result, uint64_t a2)
{
  v3 = *v2;
  if (*v2 >= 2)
  {
    v4 = *(v3 + 16);
    v5 = *(v3 + 24);
    v6 = result;
    sub_1D5D0A57C(v4);
    sub_1D5D0A57C(v5);
    sub_1D6248A90(v6, a2, v4, v5);
    sub_1D5D0A58C(v4);
    return sub_1D5D0A58C(v5);
  }

  return result;
}

uint64_t sub_1D6267764(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 8);
  if (v3 < 0)
  {
    return sub_1D6240020(result, a2, *v2, v3 & 0x3F);
  }

  return result;
}

uint64_t sub_1D626779C(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 8);
  if ((v3 & 0xC0) == 0x80)
  {
    return sub_1D6240020(result, a2, *v2, v3 & 0x3F);
  }

  return result;
}

uint64_t sub_1D6267804(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 8);
  if (v3 < 0)
  {
    return sub_1D6240020(result, a2, *v2, v3 & 0x3F);
  }

  return result;
}

void FormatStateMachineDefinition.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  if ((*(v2 + 48) & 1) == 0)
  {
    v6 = *(v2 + 24);
    FormatCommandBinding.bind(binder:context:)(a1, a2);
    if (!v3)
    {
      sub_1D620BE38(a1, a2, v6);
      sub_1D6EAF39C(a1, a2);
    }
  }
}

void FormatStateMachineInput.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  if ((*(v2 + 32) & 1) == 0)
  {
    v6 = *(v2 + 8);
    FormatCommandBinding.bind(binder:context:)(a1, a2);
    if (!v3)
    {
      sub_1D620BE38(a1, a2, v6);
      sub_1D6EAF39C(a1, a2);
    }
  }
}

void sub_1D626796C(uint64_t a1, uint64_t a2)
{
  if ((*(v2 + 48) & 1) == 0)
  {
    v6 = *(v2 + 24);
    FormatCommandBinding.bind(binder:context:)(a1, a2);
    if (!v3)
    {
      sub_1D620BE38(a1, a2, v6);
      sub_1D6EAF39C(a1, a2);
    }
  }
}

void sub_1D6267A04(uint64_t a1, uint64_t a2)
{
  if ((*(v2 + 32) & 1) == 0)
  {
    v6 = *(v2 + 8);
    FormatCommandBinding.bind(binder:context:)(a1, a2);
    if (!v3)
    {
      sub_1D620BE38(a1, a2, v6);
      sub_1D6EAF39C(a1, a2);
    }
  }
}

uint64_t FormatStateViewNode.bindChildren(binder:context:)(unint64_t a1, uint64_t a2)
{
  v4 = v2;
  swift_beginAccess();
  v16 = v2[4];
  sub_1D5C82CD8(v16);
  FormatSize.bind(binder:context:)(a1, a2);
  if (v3)
  {
    return sub_1D5C92A8C(v16);
  }

  sub_1D5C92A8C(v16);
  swift_beginAccess();
  v8 = v2[6];

  sub_1D620EA64(a1, a2, v8);

  sub_1D6221808(a1, a2, v4[9]);
  result = swift_beginAccess();
  v9 = v4[11];
  if (v9 >> 62 == 1)
  {
    v10 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v11 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    sub_1D5EB1500(v4[11]);
    sub_1D5EB1500(v10);

    sub_1D624919C(a1, a2, v10, v11);
    sub_1D5EB15C4(v10);

    result = sub_1D5EB15C4(v9);
  }

  v12 = v4[13];
  if (v12)
  {
    swift_beginAccess();
    v13 = *(v12 + 72);
    if (v13)
    {

      sub_1D621397C(a1, a2, v13);
    }

    swift_beginAccess();
    v14 = *(v12 + 88);

    sub_1D621D544(a1, a2, v14);
  }

  if (v4[15])
  {
    v15 = v4[19];

    sub_1D5DEA234(v15);

    FormatFlexBoxNodeItem.bind(binder:context:)(a1, a2);

    sub_1D5CBF568(v15);
  }

  return result;
}

uint64_t sub_1D6267D84(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t))
{
  v7 = *(v3 + 32);

  a3(a1, a2, v7);
}

uint64_t sub_1D6267E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v9 = *(v5 + 32);

  a5(a1, a2, v9);
}

uint64_t FormatString.bindChildren(binder:context:)(uint64_t result, uint64_t a2)
{
  if (*(v2 + 48) < 0)
  {
    return FormatTextNodeBinding.bind(binder:context:)(result, a2);
  }

  return result;
}

unint64_t sub_1D6267EC0(unint64_t a1, uint64_t a2)
{

  FormatAsyncImageContent.bind(binder:context:)(a1, a2);

  if (!v2)
  {
    return FormatImageNodeStyle.bind(binder:context:)(a1, a2);
  }

  return result;
}

uint64_t FormatSupplementary.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v7 = v2[6];
  v6 = v2[7];
  v8 = v2[8];
  v9 = v2[11];
  v10 = v2[12];
  if (v6)
  {
    swift_beginAccess();
    v11 = *(v6 + 56);

    sub_1D621AA44(a1, a2, v11);

    if (v3)
    {
      return result;
    }

    if (*(v6 + 74) != 255)
    {
      v13 = *(v6 + 72) | (*(v6 + 74) << 16);
      v14 = *(v6 + 64);
      sub_1D610CA74(v14, v13, SBYTE2(v13), sub_1D610CA28, sub_1D610CA5C);
      FormatSupplementaryNodePinTrait.bind(binder:context:)(a1, a2);
      sub_1D610CA74(v14, v13, SBYTE2(v13), sub_1D60CF6A8, sub_1D60CF6DC);
    }
  }

  sub_1D62160B4(a1, a2, v8);

  if (!v3)
  {

    sub_1D6213004(a1, a2, v9);

    sub_1D62212CC(a1, a2, v10);

    sub_1D6215F90(a1, a2, v7);
  }

  return result;
}

uint64_t FormatSupplementaryNode.bindChildren(binder:context:)(unint64_t a1, uint64_t a2)
{
  v4 = v2;
  v12 = v2[6];
  sub_1D5C82CD8(v12);
  FormatSize.bind(binder:context:)(a1, a2);
  result = sub_1D5C92A8C(v12);
  if (!v3)
  {
    swift_beginAccess();
    v8 = v2[8];

    sub_1D620EA64(a1, a2, v8);

    swift_beginAccess();
    v9 = v4[9];

    sub_1D62160B4(a1, a2, v9);

    swift_beginAccess();
    v10 = v4[11];

    sub_1D6213004(a1, a2, v10);

    if (v4[15])
    {
      v11 = v4[19];

      sub_1D5DEA234(v11);

      FormatFlexBoxNodeItem.bind(binder:context:)(a1, a2);

      sub_1D5CBF568(v11);
    }
  }

  return result;
}

uint64_t FormatSupplementaryNodePinDistance.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v3 = *v2;
  if ((*(v2 + 9) & 1) == 0)
  {
    return sub_1D620B270(result, a2, v3);
  }

  v4 = *(v2 + 8);
  if (v4 <= 1)
  {
    if (*(v2 + 8))
    {
      if (v3)
      {
        if (v3 == 1)
        {
          v5 = 1;
          v6 = 1;
        }

        else
        {
          v16 = result;
          v18 = v3;
          sub_1D610CA34(v3, 1u);
          sub_1D620B270(v16, a2, v18);
          v5 = v18;
          v6 = 1;
          LOBYTE(v3) = 1;
        }

        return sub_1D60CF6A8(v5, v6, v3);
      }

      v5 = 0;
      v6 = 1;
    }

    else
    {
      if (v3)
      {
        if (v3 == 1)
        {
          v5 = 1;
          v6 = 0;
        }

        else
        {
          v13 = result;
          v15 = v3;
          sub_1D610CA34(v3, 0);
          sub_1D620B270(v13, a2, v15);
          v5 = v15;
          v6 = 0;
          LOBYTE(v3) = 1;
        }

        return sub_1D60CF6A8(v5, v6, v3);
      }

      v5 = 0;
      v6 = 0;
    }
  }

  else if (v4 == 2)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        v5 = 1;
        v6 = 2;
      }

      else
      {
        v7 = result;
        v9 = v3;
        sub_1D610CA34(v3, 2u);
        sub_1D620B270(v7, a2, v9);
        v5 = v9;
        v6 = 2;
        LOBYTE(v3) = 1;
      }

      return sub_1D60CF6A8(v5, v6, v3);
    }

    v5 = 0;
    v6 = 2;
  }

  else
  {
    if (v4 != 3)
    {
      return result;
    }

    if (v3)
    {
      if (v3 == 1)
      {
        v5 = 1;
        v6 = 3;
      }

      else
      {
        v10 = result;
        v12 = v3;
        sub_1D610CA34(v3, 3u);
        sub_1D620B270(v10, a2, v12);
        v5 = v12;
        v6 = 3;
        LOBYTE(v3) = 1;
      }

      return sub_1D60CF6A8(v5, v6, v3);
    }

    v5 = 0;
    v6 = 3;
  }

  LOBYTE(v3) = 1;
  return sub_1D60CF6A8(v5, v6, v3);
}

uint64_t FormatSupplementaryNodePinDistanceAdjustment.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v3 = *v2;
  if (*(v2 + 8) <= 1u)
  {
    if (v3 < 2)
    {
      return result;
    }

    return sub_1D620B270(result, a2, v3);
  }

  if (v3 >= 2)
  {
    return sub_1D620B270(result, a2, v3);
  }

  return result;
}

uint64_t sub_1D62685C8(uint64_t result, uint64_t a2)
{
  v3 = *v2;
  if (*(v2 + 8) <= 1u)
  {
    if (v3 < 2)
    {
      return result;
    }

    return sub_1D620B270(result, a2, v3);
  }

  if (v3 >= 2)
  {
    return sub_1D620B270(result, a2, v3);
  }

  return result;
}

uint64_t FormatSupplementaryNodePinTrait.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  if (*(v2 + 10))
  {
    v4 = *v2;
    v5 = *(v2 + 8);
    if (*(v2 + 10) == 1)
    {
      if ((v5 & 0x100) == 0)
      {
        return sub_1D620B270(result, a2, *v2);
      }

      v12 = *(v2 + 8);
      if (v12 <= 1)
      {
        if (*(v2 + 8))
        {
          if (v4)
          {
            if (v4 != 1)
            {
              v13 = result;
              v14 = v4;
              v15 = v5;
              v16 = 1;
              goto LABEL_40;
            }

LABEL_30:
            v18 = 1;
            return sub_1D610CA74(1, v5, v18, sub_1D60CF6A8, sub_1D60CF6DC);
          }
        }

        else if (v4)
        {
          if (v4 != 1)
          {
            v13 = result;
            v14 = v4;
            v15 = v5;
            v16 = 0;
            goto LABEL_40;
          }

          goto LABEL_30;
        }
      }

      else
      {
        if (v12 != 2)
        {
          if (v12 != 3)
          {
            return result;
          }

          if (v4)
          {
            if (v4 != 1)
            {
              v13 = result;
              v14 = v4;
              v15 = v5;
              v16 = 3;
LABEL_40:
              sub_1D610CA28(v14, v16, 1);
              sub_1D620B270(v13, a2, v4);
              v9 = v4;
              v10 = v15;
              v11 = 1;
              return sub_1D610CA74(v9, v10, v11, sub_1D60CF6A8, sub_1D60CF6DC);
            }

            goto LABEL_30;
          }

          goto LABEL_31;
        }

        if (v4)
        {
          if (v4 != 1)
          {
            v13 = result;
            v14 = v4;
            v15 = v5;
            v16 = 2;
            goto LABEL_40;
          }

          goto LABEL_30;
        }
      }

LABEL_31:
      v19 = 1;
      return sub_1D610CA74(0, v5, v19, sub_1D60CF6A8, sub_1D60CF6DC);
    }

    if (v5 >> 8 > 0xFE)
    {
      return result;
    }

    if ((v5 & 0x100) == 0)
    {
      v6 = result;
      v7 = v4;
      v8 = v5;
LABEL_8:
      sub_1D610CA5C(v7, v5);
      sub_1D620B270(v6, a2, v4);
      v9 = v4;
      v10 = v8;
      goto LABEL_9;
    }

    v17 = *(v2 + 8);
    if (v17 <= 2)
    {
      if (v4)
      {
        if (v4 == 1)
        {
          v18 = 2;
          return sub_1D610CA74(1, v5, v18, sub_1D60CF6A8, sub_1D60CF6DC);
        }

        v20 = result;
        v21 = v5;
        sub_1D610CA5C(v4, v5);
        sub_1D620B270(v20, a2, v4);
        v9 = v4;
        v10 = v21;
LABEL_9:
        v11 = 2;
        return sub_1D610CA74(v9, v10, v11, sub_1D60CF6A8, sub_1D60CF6DC);
      }
    }

    else
    {
      if (v17 != 3)
      {
        return result;
      }

      if (v4)
      {
        if (v4 == 1)
        {
          return sub_1D610CA74(1, v5, 2, sub_1D60CF6A8, sub_1D60CF6DC);
        }

        v6 = result;
        v7 = v4;
        v8 = v5;
        goto LABEL_8;
      }
    }

    v19 = 2;
    return sub_1D610CA74(0, v5, v19, sub_1D60CF6A8, sub_1D60CF6DC);
  }

  return result;
}

uint64_t FormatSupplementaryNodeStyle.Selector.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v4 = *(v2 + 32) | (*(v2 + 34) << 16);
  v5 = WORD1(v4);
  if (*(v2 + 34) != 255 && v5 != 0)
  {
    v7 = *(v2 + 24);
    if (v5 == 1)
    {
      if ((v4 & 0x100) == 0)
      {
        v8 = result;
        sub_1D610CA74(v7, v4, 1, sub_1D610CA28, sub_1D610CA5C);
        sub_1D620B270(v8, a2, v7);
LABEL_25:
        v14 = v7;
        return sub_1D62B6F70(v14, v4);
      }

      if (v4 < 4u)
      {
        if (v7)
        {
          if (v7 != 1)
          {
            v12 = result;
            sub_1D610CA74(v7, v4, 1, sub_1D610CA28, sub_1D610CA5C);
            sub_1D620B270(v12, a2, v7);
            goto LABEL_25;
          }

LABEL_22:
          sub_1D62B6F70(1, v4);
          v14 = 1;
          return sub_1D62B6F70(v14, v4);
        }

LABEL_23:
        sub_1D62B6F70(0, v4);
        return sub_1D62B6F70(0, v4);
      }
    }

    else if (BYTE1(v4) != 255)
    {
      if ((v4 & 0x100) != 0)
      {
        if (v4 < 4u)
        {
          if (!v7)
          {
            goto LABEL_23;
          }

          if (v7 == 1)
          {
            goto LABEL_22;
          }

          v15 = result;
          sub_1D610CA74(v7, v4, 2, sub_1D610CA28, sub_1D610CA5C);
          sub_1D620B270(v15, a2, v7);
          if (v3)
          {
            goto LABEL_25;
          }
        }
      }

      else
      {
        v10 = result;
        sub_1D610CA74(v7, v4, 2, sub_1D610CA28, sub_1D610CA5C);
        sub_1D620B270(v10, a2, v7);
        if (v3)
        {
          goto LABEL_25;
        }
      }
    }

    return sub_1D62B6F70(v7, v4);
  }

  return result;
}

uint64_t FormatSwitchListValue.bindChildren(binder:context:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = type metadata accessor for FormatSwitchListValue.CaseValue();
  return Array<A>.bind(binder:context:)(a1, a2, v5, v6, &off_1F5142218);
}

uint64_t FormatSwitchNode.bindChildren(binder:context:)(uint64_t result, uint64_t a2)
{
  v15 = result;
  v4 = *(v2 + 32);
  if (v4 >> 62)
  {
    goto LABEL_15;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1DA6FB460](v6, v4);
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_14;
          }

          v7 = *(v4 + 8 * v6 + 32);
        }

        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        v9 = v5;

        FormatExpression.bind(binder:context:)(v15, a2);

        if (v16)
        {
        }

        swift_beginAccess();
        v10 = *(v7 + 24);

        sub_1D6215F90(v15, a2, v10);
        v16 = 0;

        ++v6;
        v5 = v9;
        if (v8 == v9)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      result = sub_1D7263BFC();
      v5 = result;
    }

    while (result);
  }

LABEL_16:
  v11 = v14[5];
  if (!v11 || (swift_beginAccess(), v12 = *(v11 + 16), , sub_1D6215F90(v15, a2, v12), result = , !v16))
  {
    if (v14[9])
    {
      v13 = v14[13];

      sub_1D5DEA234(v13);

      FormatFlexBoxNodeItem.bind(binder:context:)(v15, a2);

      sub_1D5CBF568(v13);
    }
  }

  return result;
}

uint64_t FormatSwitchNodeDefault.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);

  sub_1D6215F90(a1, a2, v5);
}

uint64_t FormatSwitchNodeCase.bind(binder:context:)(uint64_t a1, uint64_t a2)
{

  FormatExpression.bind(binder:context:)(a1, a2);

  if (!v3)
  {
    swift_beginAccess();
    v7 = *(v2 + 24);

    sub_1D6215F90(a1, a2, v7);
  }

  return result;
}

uint64_t sub_1D62690E4(uint64_t a1, uint64_t a2)
{
  v6 = *v2;

  FormatExpression.bind(binder:context:)(a1, a2);

  if (!v3)
  {
    swift_beginAccess();
    v8 = *(v6 + 24);

    sub_1D6215F90(a1, a2, v8);
  }

  return result;
}

uint64_t sub_1D6269198(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  v6 = *(v5 + 16);

  sub_1D6215F90(a1, a2, v6);
}

uint64_t FormatSwitchValue.bindChildren(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = type metadata accessor for FormatSwitchValue.CaseValue();
  result = Array<A>.bind(binder:context:)(a1, a2, v6, v7, &off_1F5142208);
  if (!v3)
  {
    v9 = type metadata accessor for FormatSwitchValue.DefaultValue();
    return FormatValue.bind(binder:context:)(a1, a2, v9);
  }

  return result;
}

uint64_t sub_1D62692C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = *v3;

  FormatExpression.bind(binder:context:)(a1, a2);

  if (!v4)
  {
    (*(v9 + 16))(v11, &v3[*(a3 + 36)], v8);
    sub_1D5B49474(0, &qword_1EDF329A8);
    if (swift_dynamicCast())
    {
      v13 = *(&v16 + 1);
      v14 = v17;
      __swift_project_boxed_opaque_existential_1(&v15, *(&v16 + 1));
      (*(v14 + 8))(a1, a2, v13, v14);
      return __swift_destroy_boxed_opaque_existential_1(&v15);
    }

    else
    {
      v17 = 0;
      v15 = 0u;
      v16 = 0u;
      return sub_1D5BFB774(&v15, &qword_1EDF329A0, &qword_1EDF329A8);
    }
  }

  return result;
}

uint64_t FormatSymbolConfig.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  if (*(v2 + 17) <= 2u)
  {
    v3 = *(v2 + 8);
    if (!*(v2 + 17))
    {
      return FormatSymbolConfig.Font.bind(binder:context:)(result, a2);
    }

    if (*(v2 + 17) == 1)
    {
      if (!v3)
      {
        return result;
      }
    }

    else
    {
      v3 = *v2;
    }

    return sub_1D620B270(result, a2, v3);
  }

  return result;
}

uint64_t FormatSymbolConfig.Font.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v5 = *v2;
  v6 = *v2 >> 61;
  if (v6 > 2)
  {
    v11 = v5 & 0x1FFFFFFFFFFFFFFFLL;
    if (v6 == 3)
    {
      v12 = *(v11 + 24);
      v13 = *(v11 + 32);
      v14 = *(v11 + 40);
      v19 = *(v11 + 16);
      v20 = v12;
      v21 = v13;
      v22 = v14;
      sub_1D5F58038(v19, v12, v13, v14);
      sub_1D607B228(a2);
      return sub_1D5F57FEC(v19, v12, v13, v14);
    }

    else
    {
      v15 = *(v11 + 32);
      v23[0] = *(v11 + 16);
      v23[1] = v15;
      v24 = *(v11 + 48);
      v16 = result;
      sub_1D62B50EC(v23, &v19, sub_1D62B5154);
      sub_1D6250408(v16, a2);
      return sub_1D62B51D0(v23, sub_1D62B5154);
    }
  }

  else if (v6 >= 2)
  {
    v7 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    if ((v7 >> 62) >= 2)
    {
      if (v7 >> 62 == 2)
      {
        v9 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
        v10 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
        v8 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v20 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v21 = v9;
        v22 = v10;

        swift_retain_n();
        sub_1D5D27950(v8, v20, v9, v10);
        sub_1D6089844(a2);

        sub_1D5D28C84(v8, v20, v9, v10);
      }

      else
      {
        v17 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v19 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v18 = result;
        swift_retain_n();

        swift_retain_n();
        FormatURL.bind(binder:context:)(v18, a2);
        if (v3)
        {
        }

        sub_1D620FAB4(v18, a2, v17);

        swift_bridgeObjectRelease_n();
      }
    }
  }

  return result;
}

uint64_t FormatSymbolConfig.TextStyle.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 8);
  if (v3)
  {
    return sub_1D620B270(result, a2, v3);
  }

  return result;
}

uint64_t sub_1D62697F0(uint64_t a1, uint64_t a2)
{

  FormatFont.bind(binder:context:)(a1, a2);
}

uint64_t sub_1D6269854(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 8);
  if (v3)
  {
    return sub_1D620B270(result, a2, v3);
  }

  return result;
}

uint64_t sub_1D6269874(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{

  a3(a1, a2);

  if (!v3)
  {

    a3(a1, a2);
  }

  return result;
}

uint64_t FormatSymbolImageColor.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v4 = result;
  v5 = *v2;
  v6 = *v2 >> 62;
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v8 = v5 & 0x3FFFFFFFFFFFFFFFLL;
      v9 = *(v8 + 16);
      v10 = *(v8 + 24);
      sub_1D5F33D5C(v9);

      sub_1D6249738(v4, a2, v9, v10);
      sub_1D5F33D8C(v9);
    }
  }

  else if (v6)
  {

    FormatColor.bind(binder:context:)(v4, a2);
  }

  else
  {
    v7 = *(v5 + 16);

    sub_1D6212DD8(v4, a2, v7);
  }

  return result;
}

uint64_t FormatTagMoreActions.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  if ((~*v2 & 0xF000000000000007) != 0)
  {
    v3 = result;

    FormatTextContent.bind(binder:context:)(v3, a2);
  }

  return result;
}

uint64_t sub_1D6269AD0(uint64_t result, uint64_t a2)
{
  if (*(v2 + 16) == 1 && (*v2 & 0xF000000000000007) != 0xF000000000000007)
  {
    v4 = result;

    FormatTextContent.bind(binder:context:)(v4, a2);
  }

  return result;
}

uint64_t FormatTagIconStyle.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);

  FormatFont.bind(binder:context:)(a1, a2);

  if (!v3)
  {

    sub_1D620B270(a1, a2, v6);

    sub_1D620B270(a1, a2, v7);
  }

  return result;
}

uint64_t sub_1D6269C44(uint64_t result, uint64_t a2)
{
  if ((~*v2 & 0xF000000000000007) != 0)
  {
    v3 = result;

    FormatTextContent.bind(binder:context:)(v3, a2);
  }

  return result;
}

uint64_t FormatTemperatureFormat.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  sub_1D5C75A4C(*v2, v6, v7);
  sub_1D60ECF10(a2);
  return sub_1D5D2F2C8(v5, v6, v7);
}

uint64_t sub_1D6269D58(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  sub_1D5C75A4C(*v2, v6, v7);
  sub_1D60ECF10(a2);
  return sub_1D5D2F2C8(v5, v6, v7);
}

uint64_t sub_1D6269E4C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v10 = *(v4 + 8);

  a3(a1, a2);

  if (!v5)
  {
    return a4(a1, a2, v10);
  }

  return result;
}

uint64_t FormatTextNodeAttachment.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);

  FormatSyncImageContent.bind(binder:context:)(a1, a2);

  if (!v3)
  {
    sub_1D5C75A4C(v6, v7, v8);
    sub_1D60ECF10(a2);
    return sub_1D5D2F2C8(v6, v7, v8);
  }

  return result;
}

void FormatTextNodeNumber.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 8))
  {
    if (*(v2 + 8) == 1)
    {
      sub_1D62B41FC(a2, *v2);
    }
  }

  else
  {
    sub_1D620B270(a1, a2, *v2);
  }
}

uint64_t FormatTextNodeLink.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 8);

  FormatTextContent.bind(binder:context:)(a1, a2);

  if (!v3 && (v6 >> 62) >= 2)
  {
    if (v6 >> 62 == 2)
    {
      v9 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v10 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v11 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v12 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      sub_1D5D27950(v9, v10, v11, v12);
      sub_1D6089844(a2);
      return sub_1D5D28C84(v9, v10, v11, v12);
    }

    else
    {
      v8 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      swift_retain_n();

      FormatURL.bind(binder:context:)(a1, a2);

      sub_1D620FAB4(a1, a2, v8);
      swift_bridgeObjectRelease_n();
    }
  }

  return result;
}

unint64_t FormatTextNodeDateTimeFormat.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1D5F33D5C(*v2);
  FormatDateTime.bind(binder:context:)(a1, a2);
  return sub_1D5F33D8C(v5);
}

unint64_t FormatTextSize.bind(binder:context:)(unint64_t result, uint64_t a2)
{
  v4 = result;
  v5 = *v2;
  v6 = *v2 >> 61;
  if (v6 > 2)
  {
    if (v6 > 4)
    {
      if (v6 != 5)
      {
        return result;
      }

      goto LABEL_10;
    }

    v7 = v5 & 0x1FFFFFFFFFFFFFFFLL;
    if (v6 != 3)
    {
LABEL_10:

      FormatTextContent.bind(binder:context:)(v4, a2);
    }

LABEL_8:
    v10 = *(v7 + 16);

    sub_1D6233590(v4, a2, v10);
  }

  if (v6)
  {
    v7 = v5 & 0x1FFFFFFFFFFFFFFFLL;
    if (v6 == 1)
    {
      v8 = *(v7 + 16);
      v9 = *(v7 + 24);

      sub_1D5D085B4(v9);
      sub_1D6248054(v4, a2, v8, v9);

      return sub_1D5D05694(v9);
    }

    goto LABEL_8;
  }

  v11 = *(v5 + 16);
  sub_1D5C82CD8(v11);
  FormatSize.bind(binder:context:)(v4, a2);
  return sub_1D5C92A8C(v11);
}

uint64_t FormatTextNodeAlternative.bind(binder:context:)(unint64_t a1, uint64_t a2)
{

  FormatTextContent.bind(binder:context:)(a1, a2);

  if (!v2)
  {

    FormatTextNodeAlternativeLogic.bind(binder:context:)(a1, a2);
  }

  return result;
}

uint64_t FormatTextNodeAlternativeLogic.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = *v2 >> 62;
  if (v6 > 1)
  {
    if (v6 == 2)
    {

      swift_retain_n();
      FormatTextNodeAlternativeLogic.bind(binder:context:)(a1, a2);
      if (!v3)
      {
        goto LABEL_10;
      }
    }

    else
    {

      swift_retain_n();
      FormatTextNodeAlternativeLogic.bind(binder:context:)(a1, a2);
      if (!v3)
      {
LABEL_10:

        FormatTextNodeAlternativeLogic.bind(binder:context:)(a1, a2);
      }
    }
  }

  if (v6)
  {
    v8 = *((*v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

    sub_1D620B270(a1, a2, v8);
  }

  else
  {
    swift_retain_n();

    FormatTextNodeAlternativeLogic.bind(binder:context:)(a1, a2);
  }
}

uint64_t FormatTextNodeAlternativeLogic.AlternativeLogic.bind(binder:context:)(uint64_t a1, uint64_t a2)
{

  FormatTextNodeAlternativeLogic.bind(binder:context:)(a1, a2);
}

uint64_t FormatTextNodeAlternativeLogic.LogicalOperator.bind(binder:context:)(uint64_t a1, uint64_t a2)
{

  FormatTextNodeAlternativeLogic.bind(binder:context:)(a1, a2);

  if (!v2)
  {

    FormatTextNodeAlternativeLogic.bind(binder:context:)(a1, a2);
  }

  return result;
}

uint64_t sub_1D626A6C4(uint64_t a1, uint64_t a2)
{

  FormatTextNodeAlternativeLogic.bind(binder:context:)(a1, a2);
}

unint64_t sub_1D626A758(unint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1D5F33D5C(*v2);
  FormatDateTime.bind(binder:context:)(a1, a2);
  return sub_1D5F33D8C(v5);
}

uint64_t sub_1D626A804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  v12 = *(v6 + 8);

  a5(a1, a2);

  if (!v7)
  {
    return a6(a1, a2, v12);
  }

  return result;
}

uint64_t FormatTextNodeFormat.Token.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 24);

  FormatTextContent.bind(binder:context:)(a1, a2);

  if (!v3)
  {
    if (v6)
    {
      return FormatTextNodeStyle.bind(binder:context:)(a1, a2);
    }
  }

  return result;
}

uint64_t sub_1D626A910(unint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 24);

  FormatTextContent.bind(binder:context:)(a1, a2);

  if (!v3)
  {
    if (v6)
    {
      return FormatTextNodeStyle.bind(binder:context:)(a1, a2);
    }
  }

  return result;
}

uint64_t FormatUnderline.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  if ((~*(v2 + 8) & 0xF000000000000007) != 0)
  {
    v3 = result;

    FormatColor.bind(binder:context:)(v3, a2);
  }

  return result;
}

uint64_t FormatTextNodeStyle.Selector.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 152);
  v8 = *(v2 + 208);
  v58 = *(v2 + 192);
  v59 = v8;
  v60 = *(v2 + 224);
  v61 = *(v2 + 240);
  v9 = *(v2 + 176);
  v57[0] = *(v2 + 160);
  v57[1] = v9;
  v10 = *(v2 + 472);
  v62 = *(v2 + 480);
  v28 = *(v2 + 504);
  v29 = *(v2 + 488);
  v30 = *(v2 + 520);
  v31 = *(v2 + 496);
  if ((~v6 & 0xF000000000000007) != 0)
  {
    *&v49 = v6;

    FormatFont.bind(binder:context:)(a1, a2);
    v11 = v3;
    if (v3)
    {
    }
  }

  else
  {
    v11 = v3;
  }

  v13 = *(v2 + 104);
  v53 = *(v2 + 88);
  v54 = v13;
  v14 = *(v2 + 136);
  v55 = *(v2 + 120);
  v56 = v14;
  v15 = *(v2 + 40);
  v49 = *(v2 + 24);
  v50 = v15;
  v16 = *(v2 + 72);
  v51 = *(v2 + 56);
  v52 = v16;
  result = sub_1D5CFD0B8(&v49);
  if (result != 1)
  {
    v44 = v53;
    v45 = v54;
    v46 = v55;
    v47 = v56;
    v40 = v49;
    v41 = v50;
    v42 = v51;
    v43 = v52;
    v17 = *(v2 + 24);
    v18 = *(v2 + 40);
    v19 = *(v2 + 72);
    v48[2] = *(v2 + 56);
    v48[3] = v19;
    v48[0] = v17;
    v48[1] = v18;
    v20 = *(v2 + 88);
    v21 = *(v2 + 104);
    v22 = *(v2 + 136);
    v48[6] = *(v2 + 120);
    v48[7] = v22;
    v48[4] = v20;
    v48[5] = v21;
    sub_1D5CFD190(v48, &v32);
    FormatFill.bind(binder:context:)(a1, a2);
    if (v11)
    {
      v36 = v44;
      v37 = v45;
      v38 = v46;
      v39 = v47;
      v32 = v40;
      v33 = v41;
      v34 = v42;
      v35 = v43;
      return sub_1D5CFD368(&v32);
    }

    v36 = v44;
    v37 = v45;
    v38 = v46;
    v39 = v47;
    v32 = v40;
    v33 = v41;
    v34 = v42;
    v35 = v43;
    result = sub_1D5CFD368(&v32);
  }

  v23 = v11;
  if (v7)
  {
    result = sub_1D620E744(a1, a2, v7);
    if (v11)
    {
      return result;
    }
  }

  v24 = v61;
  if (v61 != 254)
  {
    *&v48[0] = v58;
    swift_retain_n();
    FormatColor.bind(binder:context:)(a1, a2);
    if (v11)
    {

      return sub_1D5D0ABCC(v57, &qword_1EDF33718, &type metadata for FormatShadow);
    }

    if (v24 <= 2)
    {
      if (v24)
      {
        if (v24 == 1)
        {
          sub_1D625E06C(a1, a2);
          result = sub_1D5D0ABCC(v57, &qword_1EDF33718, &type metadata for FormatShadow);
          goto LABEL_13;
        }

        goto LABEL_35;
      }
    }

    else
    {
      if (v24 <= 4)
      {
        v26 = a1;
        v27 = a2;
        if (v24 != 3)
        {
LABEL_36:
          sub_1D625E06C(v26, v27);
          goto LABEL_38;
        }

LABEL_35:
        sub_1D625E06C(a1, a2);
        v26 = a1;
        v27 = a2;
        goto LABEL_36;
      }

      if (v24 == 5)
      {
        goto LABEL_35;
      }
    }

LABEL_38:
    result = sub_1D5D0ABCC(v57, &qword_1EDF33718, &type metadata for FormatShadow);
    v23 = 0;
  }

LABEL_13:
  if (!v10 || (result = sub_1D620B270(a1, a2, v10), !v23))
  {
    v25 = v62;
    if (v62 != 9)
    {
      if ((~v29 & 0xF000000000000007) != 0)
      {
        *&v48[0] = v29;
        sub_1D62B5D18(v62, v29);
        sub_1D5CFCFAC(v29);
        FormatColor.bind(binder:context:)(a1, a2);

        result = sub_1D62B5D00(v25, v29);
        if (v23)
        {
          return result;
        }
      }

      else
      {
        result = sub_1D62B5D00(v62, v29);
      }
    }

    if (v31 != 9)
    {
      if ((~v28 & 0xF000000000000007) != 0)
      {
        *&v48[0] = v28;
        sub_1D62B5D18(v31, v28);
        sub_1D5CFCFAC(v28);
        FormatColor.bind(binder:context:)(a1, a2);

        result = sub_1D62B5D00(v31, v28);
        if (v23)
        {
          return result;
        }
      }

      else
      {
        result = sub_1D62B5D00(v31, v28);
      }
    }

    if (v30)
    {
      return sub_1D620B270(a1, a2, v30);
    }
  }

  return result;
}

void FormatType.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v8 = type metadata accessor for FormatPropertyDefinition(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v5 + 80);
  if (v13 >> 6)
  {
    v15 = *(v5 + 32);
    v14 = *(v5 + 40);
    v16 = *(v5 + 48);
    v38 = *(v5 + 56);
    v18 = *(v5 + 64);
    v17 = *(v5 + 72);
    if (v13 >> 6 == 1)
    {
      if (v13)
      {
        return;
      }

      v19 = *(v16 + 32);
      v35 = *(v16 + 16);
      v36 = v19;
      v37[0] = *(v16 + 48);
      *(v37 + 15) = *(v16 + 63);
      v20 = v14;

      v34 = v16;
      sub_1D618ECBC(v16, v38, v18, v17, 0);
      FormatCommandBinding.bind(binder:context:)(a1, a2);
      if (v4)
      {
        v21 = v15;
        v22 = v20;
        v23 = v34;
      }

      else
      {
        v29 = v20;
        v30 = v34;
        sub_1D620BE38(a1, a2, v38);
        sub_1D6EAF39C(a1, a2);
        v21 = v15;
        v22 = v29;
        v23 = v30;
      }

      v28 = v38;
      v26 = v18;
      v27 = v17;
      goto LABEL_16;
    }

    v31 = v14;
    v32 = v18;
    v33 = v17;
    v34 = v16;
    v24 = *(v15 + 16);

    if (!v24)
    {
LABEL_13:
      v21 = v15;
      v22 = v31;
      v26 = v32;
      v27 = v33;
      v23 = v34;
      v28 = v38;
LABEL_16:
      sub_1D60CF6F4(v21, v22, v23, v28, v26, v27, v13);
      return;
    }

    v25 = 0;
    while (v25 < *(v15 + 16))
    {
      sub_1D62B50EC(v15 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v25, v12, type metadata accessor for FormatPropertyDefinition);
      FormatPropertyDefinition.bind(binder:context:)(a1, a2);
      if (v4)
      {
        sub_1D62B51D0(v12, type metadata accessor for FormatPropertyDefinition);
        goto LABEL_13;
      }

      ++v25;
      sub_1D62B51D0(v12, type metadata accessor for FormatPropertyDefinition);
      if (v24 == v25)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

void FormatTypeDefinition.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for FormatPropertyDefinition(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + 48);
  if (v11 >> 6)
  {
    if (v11 >> 6 == 1)
    {
      if ((v11 & 1) == 0)
      {
        v12 = v2[2];
        v13 = v2[3];
        v14 = *(v12 + 32);
        v18[0] = *(v12 + 16);
        v18[1] = v14;
        v19[0] = *(v12 + 48);
        *(v19 + 15) = *(v12 + 63);
        FormatCommandBinding.bind(binder:context:)(a1, a2);
        if (!v3)
        {
          sub_1D620BE38(a1, a2, v13);
          sub_1D6EAF39C(a1, a2);
        }
      }
    }

    else
    {
      v15 = *v2;
      v16 = *(*v2 + 16);
      if (v16)
      {
        v17 = 0;
        while (v17 < *(v15 + 16))
        {
          sub_1D62B50EC(v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v17, v10, type metadata accessor for FormatPropertyDefinition);
          FormatPropertyDefinition.bind(binder:context:)(a1, a2);
          if (v3)
          {
            sub_1D62B51D0(v10, type metadata accessor for FormatPropertyDefinition);
            return;
          }

          ++v17;
          sub_1D62B51D0(v10, type metadata accessor for FormatPropertyDefinition);
          if (v16 == v17)
          {
            return;
          }
        }

        __break(1u);
      }
    }
  }
}

void sub_1D626B3F4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v8 = *(v2 + 56);
  v9 = *(v2 + 64);
  v10 = *(v2 + 72);
  v11 = *(v2 + 80);
  sub_1D618EC0C(v5, v6, v7, v8, v9, v10, v11);
  FormatTypeDefinition.bind(binder:context:)(a1, a2);
  sub_1D60CF6F4(v5, v6, v7, v8, v9, v10, v11);
}

void sub_1D626B4BC(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for FormatPropertyDefinition(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + 48);
  if (v11 >> 6)
  {
    if (v11 >> 6 == 1)
    {
      if ((v11 & 1) == 0)
      {
        v13 = v2[2];
        v12 = v2[3];
        v15 = v2[4];
        v14 = v2[5];
        v16 = *(v13 + 32);
        v20[0] = *(v13 + 16);
        v20[1] = v16;
        v21[0] = *(v13 + 48);
        *(v21 + 15) = *(v13 + 63);

        FormatCommandBinding.bind(binder:context:)(a1, a2);
        if (!v3)
        {
          sub_1D620BE38(a1, a2, v12);
          sub_1D6EAF39C(a1, a2);
        }

        sub_1D5E32940(v13, v12, v15, v14, 0);
      }
    }

    else
    {
      v17 = *v2;
      v18 = *(*v2 + 16);
      if (v18)
      {
        v19 = 0;
        while (v19 < *(v17 + 16))
        {
          sub_1D62B50EC(v17 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v19, v10, type metadata accessor for FormatPropertyDefinition);
          FormatPropertyDefinition.bind(binder:context:)(a1, a2);
          if (v3)
          {
            sub_1D62B51D0(v10, type metadata accessor for FormatPropertyDefinition);
            return;
          }

          ++v19;
          sub_1D62B51D0(v10, type metadata accessor for FormatPropertyDefinition);
          if (v18 == v19)
          {
            return;
          }
        }

        __break(1u);
      }
    }
  }
}

uint64_t FormatURLComponents.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 8);

  FormatURL.bind(binder:context:)(a1, a2);

  if (!v3)
  {

    sub_1D620FAB4(a1, a2, v6);
  }

  return result;
}

void FormatURLComponent.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 104);
  if (((v6 >> 12) & 3) != 0)
  {
    v8 = *(v2 + 56);
    v7 = *(v2 + 64);
    v10 = *(v2 + 72);
    v9 = *(v2 + 80);
    v11 = *(v2 + 88);
    v12 = *v2;
    v19 = *(v2 + 96);
    v13 = *(v2 + 8);
    v14 = *(v2 + 16);
    v15 = *(v2 + 24);
    v16 = *(v2 + 32);
    v17 = *(v2 + 40);
    v18 = *(v2 + 48);
    sub_1D5E1DA6C(*v2, v13, v14, v15, v16, v17, v18);
    FormatString.bind(binder:context:)(a1, a2);
    sub_1D5E1DE98(v12, v13, v14, v15, v16, v17, v18);
    if (!v3)
    {
      sub_1D5E1DA6C(v8, v7, v10, v9, v11, v19, v6 & 0xCFFF);
      FormatString.bind(binder:context:)(a1, a2);
      sub_1D5E1DE98(v8, v7, v10, v9, v11, v19, v6 & 0xCFFF);
    }
  }

  else
  {
    FormatString.bind(binder:context:)(a1, a2);
  }
}

uint64_t FormatURLComponentQueryParameter.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 56);
  v7 = *(v2 + 64);
  v8 = *(v2 + 72);
  v9 = *(v2 + 80);
  v10 = *(v2 + 88);
  v20 = *(v2 + 96);
  v12 = *(v2 + 104);
  v13 = *v2;
  v14 = *(v2 + 8);
  v15 = *(v2 + 16);
  v16 = *(v2 + 24);
  v17 = *(v2 + 32);
  v18 = *(v2 + 40);
  v19 = *(v2 + 48);
  sub_1D5E1DA6C(*v2, v14, v15, v16, v17, v18, v19);
  FormatString.bind(binder:context:)(a1, a2);
  result = sub_1D5E1DE98(v13, v14, v15, v16, v17, v18, v19);
  if (!v3)
  {
    sub_1D5E1DA6C(v6, v7, v8, v9, v10, v20, v12);
    FormatString.bind(binder:context:)(a1, a2);
    return sub_1D5E1DE98(v6, v7, v8, v9, v10, v20, v12);
  }

  return result;
}

uint64_t sub_1D626BA5C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 8);

  FormatURL.bind(binder:context:)(a1, a2);

  if (!v3)
  {

    sub_1D620FAB4(a1, a2, v6);
  }

  return result;
}

uint64_t sub_1D626BB04(uint64_t result, uint64_t a2)
{
  if ((~*(v2 + 8) & 0xF000000000000007) != 0)
  {
    v3 = result;

    FormatColor.bind(binder:context:)(v3, a2);
  }

  return result;
}

uint64_t FormatVariableNode.bindChildren(binder:context:)(unint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v6 = v2[4];

  sub_1D623D0C4(a1, a2, v6);

  if (!v3)
  {
    if (v2[5])
    {
      v8 = v2[9];

      sub_1D5DEA234(v8);

      FormatFlexBoxNodeItem.bind(binder:context:)(a1, a2);

      sub_1D5CBF568(v8);
    }
  }

  return result;
}

void FormatVideoPlayerLive.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 24))
  {
    sub_1D60ECF10(a2);
  }

  else
  {
    sub_1D7245EF4(a2);
  }
}

void sub_1D626BDD4(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 24))
  {
    sub_1D60ECF10(a2);
  }

  else
  {
    sub_1D7245EF4(a2);
  }
}

uint64_t FormatVideoPlayerOverlayContent.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);

  FormatAsyncImageContent.bind(binder:context:)(a1, a2);

  if (!v3)
  {
    if (v6 >= 3)
    {
      sub_1D620B270(a1, a2, v6);
    }

    if (v7)
    {
      FormatImageNodeStyle.bind(binder:context:)(a1, a2);
    }

    sub_1D5C75A4C(v8, v9, v10);
    sub_1D60ECF10(a2);
    return sub_1D5D2F2C8(v8, v9, v10);
  }

  return result;
}

uint64_t sub_1D626BF84(uint64_t result, uint64_t a2)
{
  v5 = result;
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 112);
  v17 = *(v2 + 96);
  v18 = v9;
  v19 = *(v2 + 128);
  v20 = *(v2 + 144);
  v10 = *(v2 + 80);
  v16[0] = *(v2 + 64);
  v16[1] = v10;
  v11 = *(v2 + 152);
  if (!v6 || (result = sub_1D620B270(result, a2, v6), !v3))
  {
    if ((~v7 & 0xF000000000000007) != 0)
    {
      v15[0] = v7;

      FormatBackground.bind(binder:context:)(v5, a2);
      if (v3)
      {
      }
    }

    if (!v8 || (result = sub_1D620E744(v5, a2, v8), !v3))
    {
      v12 = v20;
      if (v20 == 254)
      {
        goto LABEL_10;
      }

      v21 = v17;
      sub_1D62B5354(v16, v15, &qword_1EDF33718, &type metadata for FormatShadow);

      FormatColor.bind(binder:context:)(v5, a2);
      if (v3)
      {

        return sub_1D5D0ABCC(v16, &qword_1EDF33718, &type metadata for FormatShadow);
      }

      if (v12 <= 2)
      {
        if (v12)
        {
          v13 = v5;
          v14 = a2;
          if (v12 == 1)
          {
            goto LABEL_26;
          }

          goto LABEL_24;
        }
      }

      else
      {
        if (v12 <= 4)
        {
          v13 = v5;
          v14 = a2;
          if (v12 != 3)
          {
            goto LABEL_26;
          }

          goto LABEL_24;
        }

        if (v12 == 5)
        {
          v13 = v5;
          v14 = a2;
LABEL_24:
          sub_1D625E06C(v13, v14);
          v13 = v5;
          v14 = a2;
LABEL_26:
          sub_1D625E06C(v13, v14);
          result = sub_1D5D0ABCC(v16, &qword_1EDF33718, &type metadata for FormatShadow);
LABEL_10:
          if ((~v11 & 0xF000000000000007) != 0)
          {
            v15[0] = v11;

            FormatColor.bind(binder:context:)(v5, a2);
          }

          return result;
        }
      }

      result = sub_1D5D0ABCC(v16, &qword_1EDF33718, &type metadata for FormatShadow);
      goto LABEL_10;
    }
  }

  return result;
}

uint64_t FormatViewNodeStyle.Selector.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v5 = result;
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = *(v2 + 104);
  v16 = *(v2 + 88);
  v17 = v8;
  v18 = *(v2 + 120);
  v19 = *(v2 + 136);
  v9 = *(v2 + 72);
  v15[0] = *(v2 + 56);
  v15[1] = v9;
  v10 = *(v2 + 144);
  if ((~v7 & 0xF000000000000007) != 0)
  {
    v14[0] = v7;

    FormatBackground.bind(binder:context:)(v5, a2);
    if (v3)
    {
    }
  }

  if (!v6 || (result = sub_1D620E744(v5, a2, v6), !v3))
  {
    v11 = v19;
    if (v19 == 254)
    {
      goto LABEL_8;
    }

    v20 = v16;
    sub_1D62B5354(v15, v14, &qword_1EDF33718, &type metadata for FormatShadow);

    FormatColor.bind(binder:context:)(v5, a2);
    if (v3)
    {

      return sub_1D5D0ABCC(v15, &qword_1EDF33718, &type metadata for FormatShadow);
    }

    if (v11 <= 2)
    {
      if (v11)
      {
        v12 = v5;
        v13 = a2;
        if (v11 == 1)
        {
          sub_1D625E06C(v5, a2);
          result = sub_1D5D0ABCC(v15, &qword_1EDF33718, &type metadata for FormatShadow);
          goto LABEL_8;
        }

        goto LABEL_22;
      }
    }

    else
    {
      if (v11 <= 4)
      {
        v12 = v5;
        v13 = a2;
        if (v11 != 3)
        {
          goto LABEL_24;
        }

        goto LABEL_22;
      }

      if (v11 == 5)
      {
        v12 = v5;
        v13 = a2;
LABEL_22:
        sub_1D625E06C(v12, v13);
        v12 = v5;
        v13 = a2;
LABEL_24:
        sub_1D625E06C(v12, v13);
        result = sub_1D5D0ABCC(v15, &qword_1EDF33718, &type metadata for FormatShadow);
LABEL_8:
        if (v10)
        {
          return sub_1D620B270(v5, a2, v10);
        }

        return result;
      }
    }

    result = sub_1D5D0ABCC(v15, &qword_1EDF33718, &type metadata for FormatShadow);
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_1D626C58C(uint64_t result, uint64_t a2)
{
  if (*v2 >> 62 == 1)
  {
    v3 = *v2 & 0x3FFFFFFFFFFFFFFFLL;
    v4 = *(v3 + 0x10);
    v5 = *(v3 + 0x18);
    v6 = result;
    sub_1D5EB1500(*(v3 + 16));

    sub_1D624919C(v6, a2, v4, v5);
    sub_1D5EB15C4(v4);
  }

  return result;
}

void sub_1D626C61C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 144);
  v11[8] = *(v2 + 128);
  v11[9] = v5;
  v12 = *(v2 + 160);
  v6 = *(v2 + 80);
  v11[4] = *(v2 + 64);
  v11[5] = v6;
  v7 = *(v2 + 112);
  v11[6] = *(v2 + 96);
  v11[7] = v7;
  v8 = *(v2 + 16);
  v11[0] = *v2;
  v11[1] = v8;
  v9 = *(v2 + 48);
  v11[2] = *(v2 + 32);
  v11[3] = v9;
  v10 = sub_1D62B4E2C(v11);
  if (v10 >= 2)
  {
    if (v10 == 2)
    {
      sub_1D5D04BC4(v11);
      FormatGlassEffect.bind(binder:context:)(a1, a2);
    }
  }

  else
  {
    sub_1D5D04BC4(v11);
  }
}

uint64_t sub_1D626C700(uint64_t result, uint64_t a2)
{
  if (*(v2 + 17) <= 2u)
  {
    v3 = *(v2 + 8);
    if (!*(v2 + 17))
    {
      return FormatSymbolConfig.Font.bind(binder:context:)(result, a2);
    }

    if (*(v2 + 17) == 1)
    {
      if (!v3)
      {
        return result;
      }
    }

    else
    {
      v3 = *v2;
    }

    return sub_1D620B270(result, a2, v3);
  }

  return result;
}

uint64_t FormatWebEmbedNodeContent.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v4 = *v2;
  v5 = *v2 >> 62;
  if (v5)
  {
    if (v5 != 1)
    {
      v6 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      v7 = *(v6 + 16);
      v8 = *(v6 + 24);
      v9 = result;

      sub_1D62493D8(v9, a2, v7, v8);
    }
  }

  else
  {
    v10 = *(v4 + 16);
    v11 = *(v4 + 24);
    v12 = *(v4 + 32);
    v13 = *(v4 + 40);
    sub_1D62B6164(v10, v11, v12, v13);
    sub_1D69BBC64(a2);
    return sub_1D62B61A8(v10, v11, v12, v13);
  }

  return result;
}

uint64_t FormatWebEmbedNodeRendering.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v3 = *v2;
  if (*v2 >= 2)
  {
    v4 = *(v3 + 16);
    v5 = *(v3 + 24);
    v6 = result;
    sub_1D5D0A57C(v4);

    sub_1D62490FC(v6, a2, v4, v5);
    sub_1D5D0A58C(v4);
  }

  return result;
}

uint64_t sub_1D626C940(uint64_t result, uint64_t a2)
{
  v3 = *v2;
  if (*v2 >= 2)
  {
    v4 = *(v3 + 16);
    v5 = *(v3 + 24);
    v6 = result;
    sub_1D5D0A57C(v4);

    sub_1D62490FC(v6, a2, v4, v5);
    sub_1D5D0A58C(v4);
  }

  return result;
}

uint64_t sub_1D626CA0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D628DEA4(a1);
  if (!v3)
  {
    sub_1D6277BD0(a1, a3);

    sub_1D6EFC7A4(a1);
  }

  return result;
}

uint64_t sub_1D626CAA4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D628DEA4(a1);
  if (!v3)
  {
    sub_1D6281C84(a1, a3);

    sub_1D6297BE8(a1);
  }

  return result;
}

uint64_t sub_1D626CB38(unint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D628DEA4(a1);
  if (!v3)
  {
    sub_1D62827E8(a1, a3);

    sub_1D6E5C118(a1);
  }

  return result;
}

uint64_t sub_1D626CBD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D628DEA4(a1);
  if (!v3)
  {
    sub_1D62847D0(a1, a3);

    sub_1D6287A8C(a1);
  }

  return result;
}

uint64_t sub_1D626CC64(uint64_t a1)
{

  sub_1D628CE04(a1);

  if (!v2)
  {
    v5 = *(v1 + 8);
    v6 = type metadata accessor for FormatCommandValue.CaseValue();
    sub_1D69F81A0(a1, v5, v6, &off_1F5142168);
    v7 = type metadata accessor for FormatCommandValue.DefaultValue();
    return sub_1D6285A8C(a1, v7);
  }

  return result;
}

uint64_t sub_1D626CD50(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = type metadata accessor for FormatCommandActionValue.CaseValue();
  result = sub_1D69F81A0(a1, v4, v5, &off_1F5142188);
  if (!v2)
  {
    v7 = type metadata accessor for FormatCommandActionValue.DefaultValue();
    return sub_1D6285A8C(a1, v7);
  }

  return result;
}

uint64_t sub_1D626CE00(uint64_t result)
{
  if ((*v1 & 0x8000000000000000) != 0)
  {
    v3 = result;
    v4 = *((*v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v5 = *(v4 + 24);

    sub_1D627981C(v3, v5);
    if (!v2)
    {
      sub_1D628E5E4(v3, *(v4 + 32));
    }
  }

  return result;
}

uint64_t sub_1D626CE84(uint64_t a1)
{
  v3 = v1;
  swift_beginAccess();
  v15 = *(v1 + 32);
  v16 = *(v1 + 40);
  sub_1D5D07778(v15, v16);
  sub_1D626D094(a1);
  result = sub_1D5D06D9C(v15, v16);
  if (!v2)
  {
    result = swift_beginAccess();
    v6 = *(v1 + 98);
    if ((v6 >> 1) <= 0x7Eu)
    {
      v8 = *(v1 + 96) | (*(v1 + 98) << 16);
      v9 = v3[6];
      v10 = v3[7];
      v11 = v3[8];
      v13 = v3[10];
      v12 = v3[11];
      if (((v6 << 16) & 0x800000) != 0)
      {
        result = sub_1D628DEA4(a1);
      }

      else
      {
        v14 = v3[9];
        sub_1D5D0A5BC(v3[6], v3[7], v3[8], v14, v13, v12, v8);
        sub_1D6273544(a1, v9);
        result = sub_1D5C67600(v9, v10, v11, v14, v13, v12, v8);
      }
    }

    if (v3[13])
    {
      v7 = v3[17];

      sub_1D5DEA234(v7);

      sub_1D626D2A0(a1);

      sub_1D5CBF568(v7);
    }
  }

  return result;
}

uint64_t sub_1D626D094(uint64_t result)
{
  if (*(v1 + 8))
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  if (((*v1 >> 60) & 3 | v2) <= 5)
  {
    return sub_1D6EFC7A4(result);
  }

  return result;
}

uint64_t sub_1D626D110(uint64_t result)
{
  v2 = *v1;
  v3 = *(v1 + 48) | (*(v1 + 50) << 16);
  if ((v3 & 0x80000000) == 0)
  {
    return sub_1D6273544(result, v2);
  }

  v4 = *(v1 + 24);
  v5 = (v3 >> 13) & 8 | (v3 >> 11) & 7;
  if (v5 > 3)
  {
    if (((1 << v5) & 0x330) != 0)
    {
      return result;
    }

    if (v5 != 6)
    {
      return sub_1D690A374(result);
    }

    if (v4 >> 6 && v4 >> 6 != 1)
    {
      v6 = v4 & 0x3F;
      goto LABEL_10;
    }

    goto LABEL_22;
  }

  if ((v5 - 1) < 2)
  {
    return result;
  }

  if (v5)
  {
    goto LABEL_22;
  }

  v9 = (v4 >> 3) & 7;
  if (v9 <= 1)
  {
    if (v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = *(v1 + 16) == 1;
    }

    if (!v10 || (v2 & 0xF000000000000007) == 0xF000000000000007)
    {
      return result;
    }

LABEL_24:
    v8 = result;
    goto LABEL_25;
  }

  if (v9 == 2 || v9 == 3 || !(v4 >> 6) || v4 >> 6 == 1)
  {
LABEL_22:
    if (*(v1 + 16) != 1 || (v2 & 0xF000000000000007) == 0xF000000000000007)
    {
      return result;
    }

    goto LABEL_24;
  }

  v6 = v4 & 7;
LABEL_10:
  if (v6 == 1 && (*(v1 + 8) & 0xF000000000000007) != 0xF000000000000007)
  {
    v8 = result;
LABEL_25:

    sub_1D6E5C118(v8);
  }

  return result;
}

uint64_t sub_1D626D2A0(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = v1[3];
  v9 = v1[4];
  v8 = v1[5];

  sub_1D62744A4(a1, v4);
  if (v2)
  {
  }

  else
  {
    sub_1D62843FC(a1, v5, sub_1D62744A4);

    sub_1D62744A4(a1, v6);
    sub_1D62843FC(a1, v7, sub_1D62744A4);

    sub_1D5DEA234(v9);

    if (v9 >= 3)
    {
      sub_1D6273544(a1, v9);
    }

    sub_1D6284208(a1, v8);
    sub_1D5CBF568(v9);
  }
}

uint64_t sub_1D626D484(unint64_t a1)
{
  v3 = v1;
  v11 = *(v1 + 48);
  sub_1D5C82CD8(v11);
  sub_1D626D654(a1);
  result = sub_1D5C92A8C(v11);
  if (!v2)
  {
    swift_beginAccess();
    v6 = *(v1 + 64);

    sub_1D6274044(a1, v6);

    result = swift_beginAccess();
    v7 = v3[10];
    if (v7 >> 62 == 1)
    {
      v8 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v9 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(v3[10]);
      sub_1D5EB1500(v8);

      sub_1D6288D68(a1, v8, v9);
      sub_1D5EB15C4(v8);

      result = sub_1D5EB15C4(v7);
    }

    if (v3[12])
    {
      v10 = v3[16];

      sub_1D5DEA234(v10);

      sub_1D626D2A0(a1);

      sub_1D5CBF568(v10);
    }
  }

  return result;
}

unint64_t sub_1D626D654(unint64_t result)
{
  v3 = *v1;
  v4 = result;
  switch((*v1 >> 59) & 0x1E | (*v1 >> 2) & 1)
  {
    case 1uLL:
      v8 = v3 & 0xFFFFFFFFFFFFFFBLL;
      v9 = *(v8 + 16);
      v10 = *(v8 + 24);

      sub_1D5C07390(v10);
      sub_1D6273544(v4, v9);
      if (v2)
      {
        goto LABEL_9;
      }

      if (v10)
      {
        if (v10 == 1)
        {

          return sub_1D5C08648(1uLL);
        }

        else
        {
          sub_1D6273544(v4, v10);
LABEL_9:

          return sub_1D5C08648(v10);
        }
      }

      else
      {

        return sub_1D5C08648(0);
      }

    case 2uLL:
      v6 = v3 & 0xFFFFFFFFFFFFFFBLL;
      v7 = *(v6 + 24);
      v23 = *(v6 + 16);
      sub_1D5D0A048(v23);
      sub_1D628FBC4(v4);
      result = sub_1D5D09FB0(v23);
      if (!v2)
      {
        sub_1D5D0A048(v7);
        sub_1D628FBC4(v4);
        return sub_1D5D09FB0(v7);
      }

      return result;
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 0xCuLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
      v3 &= 0xFFFFFFFFFFFFFFBuLL;
      goto LABEL_3;
    case 9uLL:
      v20 = v3 & 0xFFFFFFFFFFFFFFBLL;
      v21 = *(v20 + 24);
      if (*(v20 + 16))
      {

        sub_1D6290E24(v4);
        if (v2)
        {
          goto LABEL_32;
        }
      }

      else
      {
      }

      sub_1D62744A4(v4, v21);
LABEL_32:

    case 0xAuLL:
      return sub_1D6273544(result, *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10));
    case 0xBuLL:
    case 0x15uLL:
    case 0x16uLL:
      return result;
    case 0xDuLL:
      v14 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x18);

      sub_1D6273544(v4, v14);

    case 0xEuLL:
      v18 = v3 & 0xFFFFFFFFFFFFFFBLL;
      v19 = *(v18 + 24);
      if (v19)
      {
        if (v19 == 1)
        {
          v22 = 1;
        }

        else
        {
          if (v19 == 2)
          {
            return sub_1D5CBF568(2uLL);
          }

          sub_1D5DEA234(*(v18 + 24));
          sub_1D6273544(v4, v19);
          v22 = v19;
        }
      }

      else
      {
        v22 = 0;
      }

      return sub_1D5CBF568(v22);
    case 0xFuLL:
      return sub_1D629FB8C(result);
    case 0x10uLL:
      v11 = v3 & 0xFFFFFFFFFFFFFFBLL;
      v13 = *(v11 + 16);
      v12 = *(v11 + 24);

      sub_1D5C82CD8(v12);
      sub_1D6285038(v4, v13);
      if (!v2)
      {
        sub_1D5C82CD8(v12);
        sub_1D626D654(v4);
        sub_1D5C92A8C(v12);
      }

      return sub_1D5C92A8C(v12);
    case 0x14uLL:
      v15 = v3 & 0xFFFFFFFFFFFFFFBLL;
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);

      sub_1D6273544(v4, v16);
      if (!v2)
      {
        sub_1D6273544(v4, v17);
      }

    default:
LABEL_3:
      v5 = *(v3 + 16);

      sub_1D6273544(v4, v5);
  }
}

void sub_1D626DA28(unint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for FormatOption() - 8;
  MEMORY[0x1EEE9AC00](v5, v6);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v12 = *(v7 + 72);
    while (1)
    {
      sub_1D62B50EC(v11, v9, type metadata accessor for FormatOption);
      v13[1] = *(v9 + 2);

      sub_1D629C93C(a1);
      if (v2)
      {
        break;
      }

      sub_1D62B51D0(v9, type metadata accessor for FormatOption);
      v11 += v12;
      if (!--v10)
      {
        return;
      }
    }

    sub_1D62B51D0(v9, type metadata accessor for FormatOption);
  }
}

uint64_t sub_1D626DB9C(uint64_t result, uint64_t a2)
{
  v3 = v2;
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = result;
    v6 = v4 - 1;
    v7 = (a2 + 72);
    v32 = result;
    do
    {
      v41 = v3;
      v8 = *(v7 - 5);
      v9 = *(v7 - 3);
      v10 = *v7;
      v45 = v7[1];
      v12 = v7[2];
      v11 = v7[3];
      v13 = v7[4];
      v14 = v7[5];
      v15 = v7[6];
      v37 = v6;
      v39 = v15;
      v40 = v14;
      v38 = v13;
      if (v9)
      {
        v33 = *(v7 - 4);
        v34 = *(v7 - 1);
        v36 = v8;

        v35 = v11;
        sub_1D5CFDAE4(v10, v45, v12, v11, v13, v14, v15);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = *v5;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D5B4B554(0, &qword_1EC880338, &type metadata for FormatDerivedData._$CopyOnWriteStorage, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6B60]);
          v30 = swift_allocObject();
          swift_beginAccess();
          v31 = v17[2];
          v43[0] = v17[1];
          v43[1] = v31;
          v44[0] = v17[3];
          *(v44 + 14) = *(v17 + 62);
          memmove((v30 + 16), v17 + 1, 0x3EuLL);
          sub_1D5EB9AB0(v43, v42);

          *v5 = v30;
          v17 = v30;
        }

        swift_beginAccess();
        v18 = *(v17 + 3);
        v19 = swift_isUniquelyReferenced_nonNull_native();
        *(v17 + 3) = v18;
        if ((v19 & 1) == 0)
        {
          v18 = sub_1D698F85C(0, *(v18 + 2) + 1, 1, v18);
          *(v17 + 3) = v18;
        }

        v21 = *(v18 + 2);
        v20 = *(v18 + 3);
        if (v21 >= v20 >> 1)
        {
          v18 = sub_1D698F85C((v20 > 1), v21 + 1, 1, v18);
        }

        *(v18 + 2) = v21 + 1;
        v22 = &v18[32 * v21];
        *(v22 + 4) = v33;
        *(v22 + 5) = v9;
        *(v22 + 3) = v34;
        *(v17 + 3) = v18;
        swift_endAccess();
        v23 = v32;
        v24 = v10;
        v25 = v45;
        v26 = v35;
        v27 = v36;
      }

      else
      {
        v27 = v8;

        v28 = v14;
        v29 = v15;
        v24 = v10;
        v23 = v32;
        v25 = v45;
        sub_1D5CFDAE4(v10, v45, v12, v11, v13, v28, v29);
        v26 = v11;
      }

      *&v43[0] = v27;

      sub_1D6299090(v23);
      v3 = v41;

      result = sub_1D5CFDD14(v24, v25, v12, v26, v38, v40, v39);
      if (v41)
      {
        break;
      }

      v5 = v23;
      v6 = v37 - 1;
      v7 += 13;
    }

    while (v37);
  }

  return result;
}

void sub_1D626DEC0(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v134 = type metadata accessor for FormatItemNodeStyle.Selector(0);
  v130 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134, v6);
  v135 = v121 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FormatCommandOpenURL();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v121 - v14;
  v132 = type metadata accessor for FormatItemNodeAction();
  v16 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132, v17);
  v125 = v121 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B54684(0, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v129 = v121 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v133 = *(a2 + 16);
  if (!v133)
  {
    return;
  }

  v123 = v11;
  v124 = v121 - v24;
  v121[1] = v8;
  v122 = v15;
  v25 = 0;
  v178 = a2 + 32;
  v128 = (v16 + 48);
  v131 = a1;
  v27 = v132;
  v26 = v133;
  while (2)
  {
    v29 = (v178 + (v25 << 6));
    v30 = v29[1];
    v176[0] = *v29;
    v176[1] = v30;
    v31 = v29[3];
    v176[2] = v29[2];
    v177 = v31;
    ++v25;
    v32 = *&v176[0];
    switch(v31 >> 59)
    {
      case 1uLL:

        v28 = v3;
        sub_1D6290E24(a1);
        goto LABEL_4;
      case 2uLL:

        v28 = v3;
        sub_1D62938C4(a1);
        goto LABEL_4;
      case 3uLL:
        v63 = *(*&v176[0] + 64);
        v160 = *(*&v176[0] + 48);
        v161 = v63;
        v64 = *(*&v176[0] + 96);
        v162 = *(*&v176[0] + 80);
        v163 = v64;
        LOBYTE(v164) = *(*&v176[0] + 112);
        v121[0] = v25;
        if ((v164 & 0xFE) == 0x7E)
        {
        }

        else
        {
          v83 = v160;
          if ((~v160 & 0xF000000000000007) != 0)
          {
            *&v145 = v160;
            sub_1D5C8C900(v176, &v149);
            sub_1D62B5354(&v160, &v149, &qword_1EDF270D0, &type metadata for FormatPreviewParameters);
            sub_1D5CFCFAC(v83);
            sub_1D62895DC(v131);
            if (v3)
            {
              sub_1D5D0ABCC(&v160, &qword_1EDF270D0, &type metadata for FormatPreviewParameters);
              sub_1D5C8C974(v176);

              return;
            }

            sub_1D5D0ABCC(&v160, &qword_1EDF270D0, &type metadata for FormatPreviewParameters);
            a1 = v131;
          }

          else
          {

            a1 = v131;
          }
        }

        v87 = *(v32 + 176);
        if (v87 != 255)
        {
          v88 = *(v32 + 136);
          v145 = *(v32 + 120);
          v146 = v88;
          v147[0] = *(v32 + 152);
          *&v147[1] = *(v32 + 168);
          BYTE8(v147[1]) = v87;
          v149 = v145;
          v150 = v88;
          v151 = v147[0];
          *&v152 = *&v147[1];
          BYTE8(v152) = v87;
          sub_1D62B5E68(&v149, &v141);
          sub_1D628D2F4(a1);
          if (v3)
          {
            sub_1D5C8C974(v176);
            v141 = v145;
            v142 = v146;
            v143[0] = v147[0];
            *(v143 + 9) = *(v147 + 9);
            sub_1D62B5EC4(&v141);
            return;
          }

          v141 = v145;
          v142 = v146;
          v143[0] = v147[0];
          *(v143 + 9) = *(v147 + 9);
          sub_1D62B5EC4(&v141);
        }

        v89 = v124;
        sub_1D5C00D70(v32 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_cellAction, v124, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
        v127 = *v128;
        if (v127(v89, 1, v27) == 1)
        {
          sub_1D5B6EF64(v89, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
        }

        else
        {
          sub_1D62B50EC(v89, v125, type metadata accessor for FormatItemNodeAction);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if ((EnumCaseMultiPayload - 2) >= 6)
          {
            if (EnumCaseMultiPayload)
            {
              v113 = v122;
              sub_1D5D5E33C(v125, v122, type metadata accessor for FormatCommandOpenURL);
              sub_1D62B50EC(v113, v123, type metadata accessor for FormatCommandOpenURL);
              if (swift_getEnumCaseMultiPayload() > 1)
              {
                v115 = *v123;
                v114 = v123[1];
                v116 = v123[2];
                *&v149 = *v123;
                *(&v149 + 1) = v114;
                *&v150 = v116;
                LOBYTE(v145) = 6;

                v117 = sub_1D703E0C8(&v149, &v145);
                if (v3)
                {
                  sub_1D62B51D0(v122, type metadata accessor for FormatCommandOpenURL);

                  goto LABEL_140;
                }

                v118 = v117;

                v119 = swift_allocObject();
                *(v119 + 16) = v115;
                *(v119 + 24) = v114;
                *(v119 + 32) = v118;
                *(v119 + 40) = 0;
                v120 = v131;
                sub_1D6C4D24C(v119 | 0x3000000000000000);
                a1 = v120;

                sub_1D62B51D0(v122, type metadata accessor for FormatCommandOpenURL);
                v27 = v132;
              }

              else
              {
                sub_1D62B51D0(v122, type metadata accessor for FormatCommandOpenURL);
                sub_1D62B51D0(v123, type metadata accessor for FormatCommandOpenURL);
              }
            }

            else
            {
              sub_1D62B5F18(v125, &v149);
              sub_1D62B5F18(&v149, &v145);
              sub_1D6295E98(a1);
              v98 = &v149;
              if (v3)
              {
                goto LABEL_138;
              }

              sub_1D62B5F74(&v149);
            }
          }

          sub_1D62B51D0(v124, type metadata accessor for FormatItemNodeAction);
        }

        v91 = *(v32 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle);
        if (v91 >= 4)
        {
          v92 = a1;
          v93 = *(v32 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle + 8);
          sub_1D62B5DD0(*(v32 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle));
          sub_1D6273544(v92, v91);
          if (v3)
          {
            sub_1D5C8C974(v176);
            sub_1D62B5E14(v91);
            return;
          }

          sub_1D6273544(v92, v93);
          v3 = 0;
          sub_1D62B5E14(v91);
          a1 = v131;
        }

        v94 = v27;
        v95 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle__selectors;
        swift_beginAccess();
        v96 = *(v32 + v95);
        v97 = *(v96 + 16);

        v126 = v97;
        if (!v97)
        {
LABEL_117:

          sub_1D5C8C974(v176);
          v26 = v133;
          v27 = v94;
          v25 = v121[0];
LABEL_6:
          if (v25 == v26)
          {
            return;
          }

          continue;
        }

        v99 = 0;
        while (v99 < *(v96 + 16))
        {
          v100 = v135;
          sub_1D62B50EC(v96 + ((*(v130 + 80) + 32) & ~*(v130 + 80)) + *(v130 + 72) * v99, v135, type metadata accessor for FormatItemNodeStyle.Selector);
          v101 = *(v100 + 8);
          v136[0] = *v100;
          v136[1] = v101;

          sub_1D6EE4610(a1);
          if (v3)
          {

            sub_1D5C8C974(v176);

            sub_1D62B51D0(v100, type metadata accessor for FormatItemNodeStyle.Selector);
            return;
          }

          LOBYTE(v153) = *(v100 + 80);
          v102 = *(v100 + 32);
          v149 = *(v100 + 16);
          v150 = v102;
          v103 = *(v100 + 64);
          v151 = *(v100 + 48);
          v152 = v103;
          if ((v153 & 0xFE) != 0x7E)
          {
            v104 = v149;
            if ((v149 & 0xF000000000000007) == 0xF000000000000007)
            {
              a1 = v131;
            }

            else
            {
              *&v141 = v149;
              sub_1D62B5354(&v149, &v145, &qword_1EDF270D0, &type metadata for FormatPreviewParameters);
              sub_1D5CFCFAC(v104);
              sub_1D62895DC(v131);

              sub_1D5D0ABCC(&v149, &qword_1EDF270D0, &type metadata for FormatPreviewParameters);
              a1 = v131;
              v100 = v135;
            }
          }

          v105 = *(v100 + 144);
          if (v105 != 255)
          {
            v106 = *(v100 + 104);
            v141 = *(v100 + 88);
            v142 = v106;
            v143[0] = *(v100 + 120);
            *&v143[1] = *(v100 + 136);
            BYTE8(v143[1]) = v105;
            v145 = v141;
            v146 = v106;
            v147[0] = v143[0];
            *&v147[1] = *&v143[1];
            BYTE8(v147[1]) = v105;
            sub_1D62B5E68(&v145, &v137);
            sub_1D628D2F4(a1);
            v137 = v141;
            v138 = v142;
            v139[0] = v143[0];
            *(v139 + 9) = *(v143 + 9);
            sub_1D62B5EC4(&v137);
          }

          v107 = v129;
          sub_1D5C00D70(v100 + *(v134 + 28), v129, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
          if (v127(v107, 1, v94) == 1)
          {
            sub_1D5B6EF64(v107, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
          }

          else
          {
            sub_1D6295BD4(a1);
            sub_1D62B51D0(v107, type metadata accessor for FormatItemNodeAction);
          }

          v108 = (v135 + *(v134 + 40));
          v109 = *v108;
          v110 = v108[1];
          if (*v108 > 1)
          {
            if (v109 != 2 && v109 != 3)
            {
LABEL_116:
              sub_1D62B5DD0(*v108);
              sub_1D6273544(a1, v109);
              sub_1D6273544(a1, v110);
              v3 = 0;
              sub_1D62B51D0(v135, type metadata accessor for FormatItemNodeStyle.Selector);
              v98 = sub_1D62B5E14(v109);
              goto LABEL_114;
            }
          }

          else if (v109 >= 2)
          {
            goto LABEL_116;
          }

          v98 = sub_1D62B51D0(v135, type metadata accessor for FormatItemNodeStyle.Selector);
LABEL_114:
          ++v99;
          v94 = v132;
          if (v126 == v99)
          {
            goto LABEL_117;
          }
        }

        __break(1u);
LABEL_138:
        sub_1D62B5F74(v98);
LABEL_140:
        sub_1D5C8C974(v176);
        sub_1D62B51D0(v124, type metadata accessor for FormatItemNodeAction);
        return;
      case 4uLL:
        swift_beginAccess();
        v60 = *(v32 + 96);
        sub_1D5C8C900(v176, &v160);

        sub_1D626FB44(a1, v60);
        if (!v3)
        {
          goto LABEL_82;
        }

        goto LABEL_132;
      case 5uLL:
        v72 = *(*&v176[0] + 56);
        if (v72)
        {

          sub_1D626DA28(a1, v72);
          if (v3)
          {
LABEL_132:
            sub_1D5C8C974(v176);
            return;
          }
        }

        else
        {
        }

        swift_beginAccess();
        v84 = *(v32 + 64);

        v85 = v3;
        sub_1D626FD48(a1, v84);
        goto LABEL_81;
      case 6uLL:
        swift_beginAccess();
        v74 = *(v32 + 56);
        sub_1D5C8C900(v176, &v160);

        sub_1D626FF20(a1, v74);
        if (v3)
        {
          goto LABEL_130;
        }

        if (*(v32 + 74) == 255)
        {
          goto LABEL_5;
        }

        v75 = *(v32 + 72) | (*(v32 + 74) << 16);
        v76 = a1;
        v77 = *(v32 + 64);
        *&v160 = v77;
        WORD4(v160) = v75;
        BYTE10(v160) = BYTE2(v75);
        sub_1D610CA74(v77, v75, SBYTE2(v75), sub_1D610CA28, sub_1D610CA5C);
        sub_1D628F694(v76);
        sub_1D5C8C974(v176);
        sub_1D610CA74(v77, v75, SBYTE2(v75), sub_1D60CF6A8, sub_1D60CF6DC);
        goto LABEL_64;
      case 7uLL:
        swift_beginAccess();
        v65 = *(v32 + 48);
        sub_1D5C8C900(v176, &v160);

        v66 = v3;
        sub_1D62701B4(a1, v65);
        goto LABEL_66;
      case 8uLL:

        v28 = v3;
        sub_1D6296C18(a1);
        goto LABEL_4;
      case 9uLL:

        v39 = sub_1D62B7AA4;
        v40 = sub_1D62B7B00;
        goto LABEL_33;
      case 0xAuLL:
        swift_beginAccess();
        v78 = *(v32 + 48);
        sub_1D5C8C900(v176, &v160);

        v66 = v3;
        sub_1D6270360(a1, v78);
LABEL_66:
        v3 = v66;
        if (v66)
        {
          goto LABEL_130;
        }

        v79 = *(v32 + 56);
        if (v79)
        {

          sub_1D6273544(a1, v79);
        }

        v80 = *(v32 + 64);
        if (v80)
        {
          sub_1D626FA1C(a1, v80);
        }

        LOBYTE(v165) = *(v32 + 176);
        v81 = *(v32 + 144);
        v162 = *(v32 + 128);
        v163 = v81;
        v164 = *(v32 + 160);
        v82 = *(v32 + 112);
        v160 = *(v32 + 96);
        v161 = v82;
        if (v165 != 254)
        {
          goto LABEL_72;
        }

        goto LABEL_5;
      case 0xBuLL:
        swift_beginAccess();
        v41 = *(v32 + 48);
        sub_1D5C8C900(v176, &v160);

        sub_1D6270510(a1, v41);
        if (v3)
        {
          goto LABEL_130;
        }

        v42 = *(v32 + 56);
        if (v42)
        {

          sub_1D6273544(a1, v42);
        }

        v43 = *(v32 + 64);
        if (v43)
        {
          sub_1D626FA1C(a1, v43);
        }

        v175 = *(v32 + 176);
        v44 = *(v32 + 144);
        v172 = *(v32 + 128);
        v173 = v44;
        v174 = *(v32 + 160);
        v45 = *(v32 + 112);
        v171[0] = *(v32 + 96);
        v171[1] = v45;
        if (v175 != 254)
        {
          *&v160 = v172;
          swift_retain_n();
          sub_1D62895DC(a1);

          sub_1D5D0ABCC(v171, &qword_1EDF33718, &type metadata for FormatShadow);
          v26 = v133;
        }

        v46 = *(v32 + 296);
        v47 = *(v32 + 328);
        v157 = *(v32 + 312);
        v158 = v47;
        v159 = *(v32 + 344);
        v48 = *(v32 + 232);
        v49 = *(v32 + 264);
        v50 = *(v32 + 280);
        v153 = *(v32 + 248);
        v154 = v49;
        v52 = *(v32 + 264);
        v51 = *(v32 + 280);
        v156 = *(v32 + 296);
        v155 = v51;
        v53 = *(v32 + 200);
        v149 = *(v32 + 184);
        v150 = v53;
        v54 = *(v32 + 216);
        v152 = v48;
        v151 = v54;
        v55 = *(v32 + 328);
        v168 = v157;
        v169 = v55;
        v170 = *(v32 + 344);
        v164 = *(v32 + 248);
        v165 = v52;
        v56 = *(v32 + 232);
        v167 = v46;
        v166 = v50;
        v57 = *(v32 + 200);
        v160 = *(v32 + 184);
        v161 = v57;
        v58 = *(v32 + 216);
        v163 = v56;
        v162 = v58;
        if (sub_1D60081E0(&v160) == 1)
        {
          goto LABEL_5;
        }

        v147[6] = v168;
        v147[7] = v169;
        v148 = v170;
        v147[2] = v164;
        v147[3] = v165;
        v147[4] = v166;
        v147[5] = v167;
        v145 = v160;
        v146 = v161;
        v147[0] = v162;
        v147[1] = v163;
        v59 = sub_1D62B4E2C(&v145);
        if (v59 <= 1)
        {
          sub_1D5D04BC4(&v145);
          goto LABEL_5;
        }

        if (v59 != 2)
        {
          goto LABEL_5;
        }

        v112 = sub_1D5D04BC4(&v145);
        v139[5] = *(v112 + 112);
        v139[6] = *(v112 + 128);
        v139[7] = *(v112 + 144);
        v140 = *(v112 + 160);
        v139[1] = *(v112 + 48);
        v139[2] = *(v112 + 64);
        v139[3] = *(v112 + 80);
        v139[4] = *(v112 + 96);
        v137 = *v112;
        v138 = *(v112 + 16);
        v139[0] = *(v112 + 32);
        v141 = v149;
        v142 = v150;
        v143[2] = v153;
        v143[3] = v154;
        v143[0] = v151;
        v143[1] = v152;
        v144 = v159;
        v143[6] = v157;
        v143[7] = v158;
        v143[4] = v155;
        v143[5] = v156;
        sub_1D60864C0(&v141, v136);
        sub_1D62914C8(a1);
        sub_1D5C8C974(v176);
        sub_1D5D0ABCC(&v149, &qword_1EDF2D860, &type metadata for FormatVisualEffect);
        goto LABEL_6;
      case 0xCuLL:

        v28 = v3;
        sub_1D673266C(a1);
        goto LABEL_4;
      case 0xDuLL:
        swift_beginAccess();
        v73 = *(v32 + 72);
        if (v73)
        {
          sub_1D5C8C900(v176, &v160);

          sub_1D62707E8(a1, v73);
          if (v3)
          {
            goto LABEL_130;
          }
        }

        else
        {
        }

        swift_beginAccess();
        v86 = *(v32 + 88);

        v85 = v3;
        sub_1D6272D88(a1, v86);
LABEL_81:
        v3 = v85;
        if (v85)
        {
LABEL_130:
          sub_1D5C8C974(v176);

          return;
        }

LABEL_82:

LABEL_5:
        sub_1D5C8C974(v176);
        goto LABEL_6;
      case 0xEuLL:

        v39 = sub_1D62B7C6C;
        v40 = sub_1D62B7CC8;
LABEL_33:
        v28 = v3;
        sub_1D629C434(a1, v39, v40);
LABEL_4:
        v3 = v28;
        if (!v28)
        {
          goto LABEL_5;
        }

        goto LABEL_132;
      case 0xFuLL:
        swift_beginAccess();
        v61 = *(v32 + 48);
        sub_1D5C8C900(v176, &v160);

        sub_1D6272F68(a1, v61);
        if (v3)
        {
          goto LABEL_130;
        }

        v62 = *(v32 + 56);
        if (v62)
        {

          sub_1D6273544(a1, v62);
        }

        if ((~*(v32 + 64) & 0xF000000000000007) != 0)
        {
          *&v160 = *(v32 + 64);

          sub_1D62895DC(a1);
        }

        if ((~*(v32 + 72) & 0xF000000000000007) == 0)
        {
          goto LABEL_41;
        }

        *&v160 = *(v32 + 72);

        sub_1D62895DC(a1);
        sub_1D5C8C974(v176);

        v26 = v133;
        goto LABEL_6;
      case 0x10uLL:
        v38 = *(&v177 + 1);
        sub_1D5C8C900(v176, &v160);

        sub_1D6273154(a1, v38);
        if (v3)
        {
          goto LABEL_130;
        }

        sub_1D5C8C974(v176);

        goto LABEL_6;
      case 0x11uLL:
        swift_beginAccess();
        v67 = *(v32 + 48);
        sub_1D5C8C900(v176, &v160);

        sub_1D627331C(a1, v67);
        if (v3)
        {
          goto LABEL_130;
        }

        if ((~*(v32 + 56) & 0xF000000000000007) != 0)
        {
          *&v160 = *(v32 + 56);

          sub_1D62895DC(a1);
        }

        if ((~*(v32 + 64) & 0xF000000000000007) != 0)
        {
          *&v160 = *(v32 + 64);

          sub_1D62895DC(a1);
        }

        v68 = *(v32 + 80);
        v26 = v133;
        if (v68)
        {
          if (v68 != 1)
          {
            if (v68 == 2)
            {
              goto LABEL_5;
            }

            v69 = a1;
            v71 = *(v68 + 16);
            v70 = *(v68 + 24);
            sub_1D5D0A59C(*(v32 + 80));
            sub_1D5D0A57C(v71);
            sub_1D5D0A57C(v70);
            sub_1D62886C0(v69, v71, v70);
            sub_1D5C8C974(v176);
            sub_1D5D0A58C(v71);
            sub_1D5D0A58C(v70);
            sub_1D5D0A5AC(v68);
LABEL_64:
            a1 = v131;
            v27 = v132;
            v26 = v133;
            goto LABEL_6;
          }

          sub_1D5C8C974(v176);
          v111 = 1;
        }

        else
        {
          sub_1D5C8C974(v176);
          v111 = 0;
        }

        sub_1D5D0A5AC(v111);
        goto LABEL_6;
      default:
        swift_beginAccess();
        v33 = *(v32 + 48);
        sub_1D5C8C900(v176, &v160);

        sub_1D626F824(a1, v33);
        if (v3)
        {
          goto LABEL_130;
        }

        v34 = *(v32 + 56);
        if (v34)
        {

          sub_1D6273544(a1, v34);
        }

        if ((~*(v32 + 64) & 0xF000000000000007) != 0)
        {
          *&v160 = *(v32 + 64);

          sub_1D62891F0(a1);
        }

        v35 = *(v32 + 72);
        if (v35)
        {
          sub_1D626FA1C(a1, v35);
        }

        LOBYTE(v165) = *(v32 + 184);
        v36 = *(v32 + 152);
        v162 = *(v32 + 136);
        v163 = v36;
        v164 = *(v32 + 168);
        v37 = *(v32 + 120);
        v160 = *(v32 + 104);
        v161 = v37;
        if (v165 == 254)
        {
LABEL_41:
          sub_1D5C8C974(v176);
          v26 = v133;
        }

        else
        {
LABEL_72:
          *&v149 = v162;
          swift_retain_n();
          sub_1D62895DC(a1);

          sub_1D5C8C974(v176);
          sub_1D5D0ABCC(&v160, &qword_1EDF33718, &type metadata for FormatShadow);
          v26 = v133;
        }

        goto LABEL_6;
    }
  }
}

uint64_t sub_1D626F824(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = result;
    for (i = (a2 + 32); ; i += 10)
    {
      v6 = i[7];
      v18 = i[6];
      v19 = v6;
      *v20 = i[8];
      *&v20[9] = *(i + 137);
      v7 = i[3];
      v15 = i[2];
      v16[0] = v7;
      v8 = i[5];
      v16[1] = i[4];
      v17 = v8;
      v9 = i[1];
      v13 = *i;
      v14 = v9;
      v12 = v13;
      sub_1D5D044D4(&v13, v11);

      sub_1D6EE4610(v4);
      if (v2)
      {
        break;
      }

      v10 = v14;

      if ((~v10 & 0xF000000000000007) != 0)
      {
        v11[0] = v10;

        sub_1D62891F0(v4);
      }

      if (*(&v14 + 1))
      {
        sub_1D626FA1C(v4, *(&v14 + 1));
      }

      if (v20[8] != 254)
      {
        v11[0] = *(&v17 + 1);
        swift_retain_n();
        sub_1D62895DC(v4);

        sub_1D5D0ABCC(v16 + 8, &qword_1EDF33718, &type metadata for FormatShadow);
      }

      if (*&v20[16])
      {
        sub_1D6273544(v4, *&v20[16]);
      }

      result = sub_1D5D04BEC(&v13);
      if (!--v3)
      {
        return result;
      }
    }

    return sub_1D5D04BEC(&v13);
  }

  return result;
}

uint64_t sub_1D626FA1C(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = result;
    for (i = a2 + 64; ; i += 40)
    {

      swift_retain_n();

      sub_1D62895DC(v4);
      if (v2)
      {
        break;
      }

      sub_1D6012F58();

      if (!--v3)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1D626FB44(uint64_t result, uint64_t a2)
{
  v3 = v2;
  v22 = *(a2 + 16);
  if (v22)
  {
    v4 = result;
    v5 = 0;
    v23 = a2 + 32;
    while (1)
    {
      v6 = v23 + (v5 << 6);
      v7 = *(v6 + 8);
      v32 = *v6;
      v8 = *(v6 + 16);
      v9 = *(v6 + 24);
      v10 = *(v6 + 32);
      v12 = *(v6 + 40);
      v11 = *(v6 + 48);
      v13 = *(v6 + 56);

      v24 = v8;
      v25 = v9;
      v26 = v10;
      sub_1D5ED34B0(v8, v9, v10);
      v27 = v12;
      v28 = v11;
      sub_1D5ED34B0(v12, v11, v13);
      v14 = qword_1EDF2AB18;

      if (v14 != -1)
      {
        swift_once();
      }

      v29[0] = v32;
      v29[1] = v7;
      result = sub_1D6844380(v29);
      v15 = result;
      v16 = *(result + 16);
      if (v16)
      {
        break;
      }

LABEL_3:
      ++v5;
      swift_bridgeObjectRelease_n();

      sub_1D5ED348C(v24, v25, v26);
      result = sub_1D5ED348C(v27, v28, v13);
      if (v5 == v22)
      {
        return result;
      }
    }

    v17 = 0;
    v18 = 32;
    while (v17 < *(v15 + 16))
    {
      v19 = *(v15 + v18);
      v20 = *(v15 + v18 + 16);
      v21 = *(v15 + v18 + 32);
      v31 = *(v15 + v18 + 48);
      v30[1] = v20;
      v30[2] = v21;
      v30[0] = v19;
      sub_1D5E3B610(v30, v29);
      sub_1D6844F60(v4);
      if (v3)
      {

        sub_1D5E3B66C(v30);
        swift_bridgeObjectRelease_n();
        sub_1D5ED348C(v24, v25, v26);
        return sub_1D5ED348C(v27, v28, v13);
      }

      ++v17;
      result = sub_1D5E3B66C(v30);
      v18 += 56;
      if (v16 == v17)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D626FD48(uint64_t result, uint64_t a2)
{
  v20 = *(a2 + 16);
  if (v20)
  {
    v3 = result;
    v4 = 0;
    v5 = a2 + 32;
    p_superclass = &OBJC_METACLASS____TtC8NewsFeed20SavingCommandHandler.superclass;
    v19 = a2 + 32;
    while (1)
    {
      v7 = (v5 + 32 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = v7[3];
      v11 = p_superclass[355];
      swift_bridgeObjectRetain_n();
      v24 = v10;

      if (v11 != -1)
      {
        swift_once();
      }

      v21[0] = v9;
      v21[1] = v8;
      result = sub_1D6844380(v21);
      v12 = result;
      v13 = *(result + 16);
      if (v13)
      {
        break;
      }

LABEL_10:

      if (v24)
      {
        sub_1D626DA28(v3, v24);

        if (v2)
        {
        }
      }

      else
      {
      }

      ++v4;

      v5 = v19;
      p_superclass = (&OBJC_METACLASS____TtC8NewsFeed20SavingCommandHandler + 8);
      if (v4 == v20)
      {
        return result;
      }
    }

    v14 = 0;
    v15 = 32;
    while (v14 < *(v12 + 16))
    {
      v16 = *(v12 + v15);
      v17 = *(v12 + v15 + 16);
      v18 = *(v12 + v15 + 32);
      v23 = *(v12 + v15 + 48);
      v22[1] = v17;
      v22[2] = v18;
      v22[0] = v16;
      sub_1D5E3B610(v22, v21);
      sub_1D6844F60(v3);
      if (v2)
      {

        sub_1D5E3B66C(v22);
      }

      ++v14;
      result = sub_1D5E3B66C(v22);
      v15 += 56;
      if (v13 == v14)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D626FF20(uint64_t result, uint64_t a2)
{
  v3 = v2;
  v23 = *(a2 + 16);
  if (v23)
  {
    v4 = result;
    v5 = 0;
    v6 = a2 + 32;
    p_superclass = &OBJC_METACLASS____TtC8NewsFeed20SavingCommandHandler.superclass;
    v22 = a2 + 32;
    while (1)
    {
      v8 = v6 + 40 * v5;
      v9 = *v8;
      v10 = *(v8 + 8);
      v11 = *(v8 + 24);
      v12 = *(v8 + 32) | (*(v8 + 34) << 16);

      v29 = v11;
      sub_1D62B7DCC(v11, v12);
      v13 = p_superclass[355];

      if (v13 != -1)
      {
        swift_once();
      }

      v24 = v12;
      v25 = v9;
      v26 = v10;
      result = sub_1D6844380(&v25);
      v14 = result;
      v15 = *(result + 16);
      if (v15)
      {
        break;
      }

LABEL_10:

      if (BYTE2(v24) == 255)
      {

        result = sub_1D62B6F70(v29, v24);
      }

      else
      {
        v21 = v29;
        v25 = v29;
        LOWORD(v26) = v24;
        BYTE2(v26) = BYTE2(v24);
        sub_1D610CA74(v29, v24, SBYTE2(v24), sub_1D610CA28, sub_1D610CA5C);
        sub_1D628F694(v4);
        sub_1D610CA74(v21, v24, SBYTE2(v24), sub_1D60CF6A8, sub_1D60CF6DC);

        result = sub_1D62B6F70(v21, v24);
        if (v3)
        {
          return result;
        }
      }

      ++v5;
      v6 = v22;
      p_superclass = (&OBJC_METACLASS____TtC8NewsFeed20SavingCommandHandler + 8);
      if (v5 == v23)
      {
        return result;
      }
    }

    v16 = 0;
    v17 = 32;
    while (v16 < *(v14 + 16))
    {
      v18 = *(v14 + v17);
      v19 = *(v14 + v17 + 16);
      v20 = *(v14 + v17 + 32);
      v28 = *(v14 + v17 + 48);
      v27[1] = v19;
      v27[2] = v20;
      v27[0] = v18;
      sub_1D5E3B610(v27, &v25);
      sub_1D6844F60(v4);
      if (v3)
      {

        sub_1D5E3B66C(v27);
        swift_bridgeObjectRelease_n();
        return sub_1D62B6F70(v29, v24);
      }

      ++v16;
      result = sub_1D5E3B66C(v27);
      v17 += 56;
      if (v15 == v16)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D62701B4(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = result;
    for (i = (a2 + 32); ; i += 9)
    {
      v6 = i[7];
      v18 = i[6];
      *v19 = v6;
      *&v19[10] = *(i + 122);
      v7 = i[1];
      v13 = *i;
      v14 = v7;
      v8 = i[3];
      v15 = i[2];
      v16[0] = v8;
      v9 = i[5];
      v16[1] = i[4];
      v17 = v9;
      v12 = v13;
      sub_1D62B7998(&v13, v11);

      sub_1D6EE4610(v4);
      if (v2)
      {
        break;
      }

      v10 = v14;

      if (v10)
      {
        sub_1D6273544(v4, v10);
      }

      if (*(&v14 + 1))
      {
        sub_1D626FA1C(v4, *(&v14 + 1));
      }

      if (v19[24] != 254)
      {
        v11[0] = *(&v17 + 1);
        swift_retain_n();
        sub_1D62895DC(v4);

        sub_1D5D0ABCC(v16 + 8, &qword_1EDF33718, &type metadata for FormatShadow);
      }

      result = sub_1D62B79F4(&v13);
      if (!--v3)
      {
        return result;
      }
    }

    return sub_1D62B79F4(&v13);
  }

  return result;
}

uint64_t sub_1D6270360(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = result;
    for (i = (a2 + 32); ; i = (i + 152))
    {
      v6 = i[7];
      v18 = i[6];
      v19 = v6;
      v20 = i[8];
      v21 = *(i + 18);
      v7 = i[3];
      v15 = i[2];
      v16[0] = v7;
      v8 = i[5];
      v16[1] = i[4];
      v17 = v8;
      v9 = i[1];
      v13 = *i;
      v14 = v9;
      v12 = v13;
      sub_1D615EAA0(&v13, v11);

      sub_1D6EE4610(v4);
      if (v2)
      {
        break;
      }

      v10 = v14;

      if (v10)
      {
        sub_1D6273544(v4, v10);
      }

      if (*(&v14 + 1))
      {
        sub_1D626FA1C(v4, *(&v14 + 1));
      }

      if (BYTE8(v20) != 254)
      {
        v11[0] = *(&v17 + 1);
        swift_retain_n();
        sub_1D62895DC(v4);

        sub_1D5D0ABCC(v16 + 8, &qword_1EDF33718, &type metadata for FormatShadow);
      }

      result = sub_1D615EAD8(&v13);
      if (!--v3)
      {
        return result;
      }
    }

    return sub_1D615EAD8(&v13);
  }

  return result;
}

uint64_t sub_1D6270510(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = result;
    for (i = (a2 + 32); ; i += 320)
    {
      memcpy(__dst, i, 0x13AuLL);
      v28[0] = __dst[0];
      sub_1D60101A0(__dst, &v30);

      sub_1D6EE4610(v4);
      if (v2)
      {

        return sub_1D60101D8(__dst);
      }

      v6 = *&__dst[1];

      if (v6)
      {
        sub_1D626FA1C(v4, v6);
      }

      if (LOBYTE(__dst[8]) != 254)
      {
        *&v30 = *&__dst[5];
        swift_retain_n();
        sub_1D62895DC(v4);

        sub_1D5D0ABCC(&__dst[3], &qword_1EDF33718, &type metadata for FormatShadow);
      }

      if (*(&__dst[8] + 1))
      {
        sub_1D6273544(v4, *(&__dst[8] + 1));
      }

      v38 = *(&__dst[17] + 8);
      v39 = *(&__dst[18] + 8);
      v40 = WORD4(__dst[19]);
      v34 = *(&__dst[13] + 8);
      v35 = *(&__dst[14] + 8);
      v36 = *(&__dst[15] + 8);
      v37 = *(&__dst[16] + 8);
      v30 = *(&__dst[9] + 8);
      v31 = *(&__dst[10] + 8);
      v32 = *(&__dst[11] + 8);
      v33 = *(&__dst[12] + 8);
      if (sub_1D60081E0(&v30) == 1)
      {
        goto LABEL_15;
      }

      v28[8] = v38;
      v28[9] = v39;
      v29 = v40;
      v28[4] = v34;
      v28[5] = v35;
      v28[6] = v36;
      v28[7] = v37;
      v28[0] = v30;
      v28[1] = v31;
      v28[2] = v32;
      v28[3] = v33;
      v7 = sub_1D62B4E2C(v28);
      if (v7 <= 1)
      {
        break;
      }

      if (v7 != 2)
      {
        goto LABEL_15;
      }

      v8 = sub_1D5D04BC4(v28);
      v9 = *(v8 + 144);
      v23 = *(v8 + 128);
      v24 = v9;
      v25 = *(v8 + 160);
      v10 = *(v8 + 80);
      v19 = *(v8 + 64);
      v20 = v10;
      v11 = *(v8 + 112);
      v21 = *(v8 + 96);
      v22 = v11;
      v12 = *(v8 + 16);
      v15 = *v8;
      v16 = v12;
      v13 = *(v8 + 48);
      v17 = *(v8 + 32);
      v18 = v13;
      v26[0] = *(&__dst[9] + 8);
      v26[1] = *(&__dst[10] + 8);
      v26[4] = *(&__dst[13] + 8);
      v26[5] = *(&__dst[14] + 8);
      v26[2] = *(&__dst[11] + 8);
      v26[3] = *(&__dst[12] + 8);
      v27 = WORD4(__dst[19]);
      v26[8] = *(&__dst[17] + 8);
      v26[9] = *(&__dst[18] + 8);
      v26[6] = *(&__dst[15] + 8);
      v26[7] = *(&__dst[16] + 8);
      sub_1D60864C0(v26, v14);
      sub_1D62914C8(v4);
      sub_1D5D0ABCC(&__dst[9] + 8, &qword_1EDF2D860, &type metadata for FormatVisualEffect);
      result = sub_1D60101D8(__dst);
LABEL_16:
      if (!--v3)
      {
        return result;
      }
    }

    sub_1D5D04BC4(v28);
LABEL_15:
    result = sub_1D60101D8(__dst);
    goto LABEL_16;
  }

  return result;
}

void sub_1D62707E8(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for FormatDerivedDataOption();
  MEMORY[0x1EEE9AC00](v6, v7);
  v203 = &v200 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v202 = &v200 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v208 = &v200 - v14;
  v15 = *(a2 + 16);
  if (!v15)
  {
    return;
  }

  v16 = (a2 + 32);
  v204 = 0x80000001D73CEF10;
  v211 = a1;
  v209 = v6;
  while (1)
  {
    v17 = *v16;
    v242 = v16 + 1;
    if (!(v17 >> 62))
    {
      break;
    }

    if (v17 >> 62 == 1)
    {
      v18 = *((v17 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v19 = *(v6 + 28);
      v20 = qword_1EDF31ED0;

      v210 = v18;

      if (v20 != -1)
      {
        swift_once();
      }

      v21 = sub_1D725BD1C();
      v22 = __swift_project_value_buffer(v21, qword_1EDFFCD50);
      v23 = v208;
      (*(*(v21 - 8) + 16))(v208 + v19, v22, v21);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v24 = type metadata accessor for FormatVersionRequirement(0);
      (*(*(v24 - 8) + 56))(v23 + v19, 0, 1, v24);
      *v23 = 0xD000000000000010;
      v25 = v204;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0;
      *(v23 + 8) = v25;
      *(v23 + 16) = 3;
      *(v23 + 40) = 0;
      *(v23 + 48) = MEMORY[0x1E69E7CC0];
      v26 = swift_allocBox();
      v28 = v27;
      sub_1D62B50EC(v23, v27, type metadata accessor for FormatDerivedDataOption);
      v29 = *v211;
      swift_beginAccess();
      v30 = *(v29 + 16);
      v31 = *(v30 + 16);
      if (v31 && *(v30 + 8 * v31 + 24) >> 60 == 1 && (v32 = swift_projectBox(), v33 = v202, sub_1D62B50EC(v32, v202, type metadata accessor for FormatDerivedDataOption), v207 = v17 & 0x3FFFFFFFFFFFFFFFLL, v34 = v26, v35 = v3, v36 = v15, v37 = v203, sub_1D62B50EC(v28, v203, type metadata accessor for FormatDerivedDataOption), , v38 = sub_1D69E18D4(v33, v37), v39 = v37, v15 = v36, v3 = v35, v26 = v34, sub_1D62B51D0(v39, type metadata accessor for FormatDerivedDataOption), sub_1D62B51D0(v33, type metadata accessor for FormatDerivedDataOption), , v38))
      {

        v6 = v209;
      }

      else
      {
        v59 = v211;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v61 = *v59;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D5B4B554(0, &qword_1EC880338, &type metadata for FormatDerivedData._$CopyOnWriteStorage, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6B60]);
          v184 = swift_allocObject();
          swift_beginAccess();
          v185 = v61[2];
          __dst = v61[1];
          v230 = v185;
          *v231 = v61[3];
          *&v231[14] = *(v61 + 62);
          memmove((v184 + 16), v61 + 1, 0x3EuLL);
          sub_1D5EB9AB0(&__dst, &v221);

          *v211 = v184;
          v61 = v184;
        }

        swift_beginAccess();
        v62 = *(v61 + 2);
        v63 = swift_isUniquelyReferenced_nonNull_native();
        *(v61 + 2) = v62;
        v64 = v15;
        if ((v63 & 1) == 0)
        {
          v62 = sub_1D698F848(0, *(v62 + 2) + 1, 1, v62);
          *(v61 + 2) = v62;
        }

        v66 = *(v62 + 2);
        v65 = *(v62 + 3);
        if (v66 >= v65 >> 1)
        {
          v62 = sub_1D698F848((v65 > 1), v66 + 1, 1, v62);
        }

        *(v62 + 2) = v66 + 1;
        *&v62[8 * v66 + 32] = v26 | 0x1000000000000000;
        *(v61 + 2) = v62;
        swift_endAccess();
        v6 = v209;
        v15 = v64;
      }

      sub_1D62B51D0(v208, type metadata accessor for FormatDerivedDataOption);
      a1 = v211;
      sub_1D62873B8(v211);
      if (v3)
      {
LABEL_250:

        goto LABEL_305;
      }

LABEL_3:

      goto LABEL_4;
    }

    v52 = *((v17 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v53 = *(v52 + 16);

    sub_1D62707E8(a1, v53);
    if (v3)
    {
      goto LABEL_250;
    }

    v54 = *(v52 + 120);
    v226 = *(v52 + 104);
    v227 = v54;
    v228[0] = *(v52 + 136);
    *(v228 + 9) = *(v52 + 145);
    v55 = *(v52 + 56);
    v222 = *(v52 + 40);
    v223 = v55;
    v56 = *(v52 + 88);
    v224 = *(v52 + 72);
    v225 = v56;
    v221 = *(v52 + 24);
    memmove(&__dst, (v52 + 24), 0x89uLL);
    if (sub_1D60486AC(&__dst) == 1)
    {
      goto LABEL_3;
    }

    v57 = __dst;
    if (__dst)
    {
      v219 = v227;
      v220[0] = v228[0];
      *(v220 + 9) = *(v228 + 9);
      v215 = v223;
      v216 = v224;
      v217 = v225;
      v218 = v226;
      v213 = v221;
      v214 = v222;
      sub_1D62B4994(&v213, v212);
      sub_1D6273544(a1, v57);
      v58 = *(&__dst + 1);
      if (!*(&__dst + 1))
      {
        goto LABEL_69;
      }

LABEL_68:
      sub_1D6273544(a1, v58);
      goto LABEL_69;
    }

    v219 = v227;
    v220[0] = v228[0];
    *(v220 + 9) = *(v228 + 9);
    v215 = v223;
    v216 = v224;
    v217 = v225;
    v218 = v226;
    v213 = v221;
    v214 = v222;
    sub_1D62B4994(&v213, v212);
    v58 = *(&__dst + 1);
    if (*(&__dst + 1))
    {
      goto LABEL_68;
    }

LABEL_69:
    if (v230)
    {
      sub_1D6273544(a1, v230);
    }

    if (*(&v230 + 1))
    {
      sub_1D6273544(a1, *(&v230 + 1));
    }

    if (*&v231[8])
    {
      sub_1D6273544(a1, *&v231[8]);
    }

    if (*&v231[16])
    {
      sub_1D6273544(a1, *&v231[16]);
    }

    v81 = v233;
    if (v233 != 255 && (v233 & 1) != 0)
    {
      v82 = *&v231[24];
      v83 = v232;
      sub_1D6189668(*&v231[24], v232, v233);
      sub_1D6189668(v82, v83, v81);
      v84 = sub_1D5E26E28(&unk_1F5112A28);
      v85 = swift_allocObject();
      v210 = 0;
      *(v85 + 16) = v82;
      *(v85 + 24) = v83;
      *(v85 + 32) = v84;
      *(v85 + 40) = 0;
      sub_1D6C4D24C(v85 | 0x3000000000000000);
      sub_1D60107F0(v82, v83, v81);
      v6 = v209;
      v3 = v210;
    }

    v86 = v238;
    if (v238 != 255 && (v238 & 1) != 0)
    {
      v207 = v15;
      v87 = v234;
      v88 = v235;
      v89 = v236;
      v210 = v237;
      sub_1D618903C(v234, v235, v236, v237, 1);
      v90 = v211;
      sub_1D6273544(v211, v87);
      if (v3)
      {
        sub_1D62B4B50(v87, v88, v89, v210, v86);
LABEL_254:

        sub_1D5D0ABCC(&v221, &qword_1EDF10BF0, &type metadata for FormatMediaTiming);
        goto LABEL_305;
      }

      sub_1D6273544(v90, v88);
      sub_1D6273544(v90, v89);
      v91 = v90;
      v92 = v210;
      sub_1D6273544(v91, v210);
      v3 = 0;
      sub_1D62B4B50(v87, v88, v89, v92, v86);
      v6 = v209;
      v15 = v207;
    }

    v93 = v241;
    if (v241 == 255 || (v241 & 1) == 0)
    {

      sub_1D5D0ABCC(&v221, &qword_1EDF10BF0, &type metadata for FormatMediaTiming);

      a1 = v211;
      goto LABEL_5;
    }

    v94 = v239;
    v95 = v240;
    sub_1D6189668(v239, v240, v241);
    sub_1D6189668(v94, v95, v93);
    v96 = sub_1D5E26E28(&unk_1F5112A50);
    v97 = swift_allocObject();
    v207 = v15;
    *(v97 + 16) = v94;
    *(v97 + 24) = v95;
    *(v97 + 32) = v96;
    *(v97 + 40) = 0;
    v98 = v211;
    sub_1D6C4D24C(v97 | 0x3000000000000000);
    v99 = v93;
    a1 = v98;
    sub_1D60107F0(v94, v95, v99);

    v15 = v207;
    v6 = v209;

    sub_1D5D0ABCC(&v221, &qword_1EDF10BF0, &type metadata for FormatMediaTiming);
LABEL_4:

LABEL_5:
    --v15;
    v16 = v242;
    if (!v15)
    {
      return;
    }
  }

  v207 = v15;
  v40 = *(v17 + 16);
  v42 = *(v40 + 16);
  v41 = *(v40 + 24);
  v43 = *(v40 + 40);
  v210 = *(v40 + 32);
  v45 = *(v40 + 48);
  v44 = *(v40 + 56);
  v46 = *(v40 + 64);
  v205 = v44;
  v206 = v45;
  if (v46 > 5)
  {
    if (v46 <= 8)
    {
      if (v46 != 6)
      {
        if (v46 == 7)
        {
          if (v42)
          {

            sub_1D62B753C(v42, v41, v210, v43, v45, v44, 7u);

            sub_1D6273544(a1, v42);
            if (v3)
            {
              goto LABEL_276;
            }

            if (v41)
            {
LABEL_45:

              sub_1D6273544(a1, v41);
              if (v3)
              {
LABEL_276:

                v192 = v42;
                v193 = v41;
                v194 = v210;
                v195 = v43;
                goto LABEL_301;
              }

              v67 = v43;

              v68 = v210;
              if (v210)
              {
LABEL_47:

                sub_1D6273544(a1, v68);
                if (!v3)
                {

                  v49 = v42;
                  v50 = v41;
                  v51 = v68;
LABEL_167:
                  v77 = v67;
                  v116 = v205;
                  v78 = v206;
                  v117 = 7;
                  goto LABEL_192;
                }

                v192 = v42;
                v193 = v41;
                v194 = v68;
                v195 = v67;
LABEL_301:
                v198 = v205;
                v196 = v206;
                v199 = 7;
                goto LABEL_304;
              }

LABEL_166:
              v49 = v42;
              v50 = v41;
              v51 = 0;
              goto LABEL_167;
            }
          }

          else
          {

            sub_1D62B753C(0, v41, v210, v43, v45, v44, 7u);
            if (v41)
            {
              goto LABEL_45;
            }
          }

          v67 = v43;
          v68 = v210;
          if (v210)
          {
            goto LABEL_47;
          }

          goto LABEL_166;
        }

        if (v42)
        {

          sub_1D62B753C(v42, v41, v210, v43, v45, v44, 8u);

          sub_1D6273544(a1, v42);
          if (v3)
          {
            goto LABEL_278;
          }

          if (v41)
          {
LABEL_126:

            sub_1D6273544(a1, v41);
            if (v3)
            {
LABEL_278:

              v192 = v42;
              v193 = v41;
              v194 = v210;
              v195 = v43;
              goto LABEL_293;
            }

            v110 = v43;

            v111 = v210;
            if (v210)
            {
LABEL_128:

              sub_1D6273544(a1, v111);
              if (!v3)
              {

                v49 = v42;
                v50 = v41;
                v51 = v111;
LABEL_183:
                v77 = v110;
                v116 = v205;
                v78 = v206;
                v117 = 8;
                goto LABEL_192;
              }

              v192 = v42;
              v193 = v41;
              v194 = v111;
              v195 = v110;
LABEL_293:
              v198 = v205;
              v196 = v206;
              v199 = 8;
              goto LABEL_304;
            }

LABEL_182:
            v49 = v42;
            v50 = v41;
            v51 = 0;
            goto LABEL_183;
          }
        }

        else
        {

          sub_1D62B753C(0, v41, v210, v43, v45, v44, 8u);
          if (v41)
          {
            goto LABEL_126;
          }
        }

        v110 = v43;
        v111 = v210;
        if (v210)
        {
          goto LABEL_128;
        }

        goto LABEL_182;
      }

      if (v42)
      {

        sub_1D62B753C(v42, v41, v210, v43, v45, v44, 6u);

        sub_1D6273544(a1, v42);
        if (v3)
        {
          goto LABEL_273;
        }

        if (v41)
        {
LABEL_98:

          sub_1D6273544(a1, v41);
          if (v3)
          {
LABEL_273:

            v192 = v42;
            v193 = v41;
            v194 = v210;
            v195 = v43;
            goto LABEL_299;
          }

          v102 = v43;

          v103 = v210;
          if (v210)
          {
LABEL_100:

            sub_1D6273544(a1, v103);
            if (!v3)
            {

              v49 = v42;
              v50 = v41;
              v51 = v103;
LABEL_151:
              v77 = v102;
              v116 = v205;
              v78 = v206;
              v117 = 6;
              goto LABEL_192;
            }

            v192 = v42;
            v193 = v41;
            v194 = v103;
            v195 = v102;
LABEL_299:
            v198 = v205;
            v196 = v206;
            v199 = 6;
            goto LABEL_304;
          }

LABEL_150:
          v49 = v42;
          v50 = v41;
          v51 = 0;
          goto LABEL_151;
        }
      }

      else
      {

        sub_1D62B753C(0, v41, v210, v43, v45, v44, 6u);
        if (v41)
        {
          goto LABEL_98;
        }
      }

      v102 = v43;
      v103 = v210;
      if (v210)
      {
        goto LABEL_100;
      }

      goto LABEL_150;
    }

    if (v46 != 9)
    {
      if (v46 == 10)
      {
        if (v42)
        {

          sub_1D62B753C(v42, v41, v210, v43, v45, v44, 0xAu);

          sub_1D6273544(a1, v42);
          if (v3)
          {
            goto LABEL_269;
          }

          if (v41)
          {
LABEL_63:

            sub_1D6273544(a1, v41);
            if (v3)
            {
LABEL_269:

              v192 = v42;
              v193 = v41;
              v194 = v210;
              v195 = v43;
              goto LABEL_285;
            }

            v79 = v43;

            v80 = v210;
            if (v210)
            {
LABEL_65:

              sub_1D6273544(a1, v80);
              if (!v3)
              {

                v49 = v42;
                v50 = v41;
                v51 = v80;
LABEL_175:
                v77 = v79;
                v116 = v205;
                v78 = v206;
                v117 = 10;
                goto LABEL_192;
              }

              v192 = v42;
              v193 = v41;
              v194 = v80;
              v195 = v79;
LABEL_285:
              v198 = v205;
              v196 = v206;
              v199 = 10;
              goto LABEL_304;
            }

LABEL_174:
            v49 = v42;
            v50 = v41;
            v51 = 0;
            goto LABEL_175;
          }
        }

        else
        {

          sub_1D62B753C(0, v41, v210, v43, v45, v44, 0xAu);
          if (v41)
          {
            goto LABEL_63;
          }
        }

        v79 = v43;
        v80 = v210;
        if (v210)
        {
          goto LABEL_65;
        }

        goto LABEL_174;
      }

      if (v42)
      {

        sub_1D62B753C(v42, v41, v210, v43, v45, v44, 0xBu);

        sub_1D6273544(a1, v42);
        if (v3)
        {
          goto LABEL_272;
        }

        if (v41)
        {
LABEL_140:

          sub_1D6273544(a1, v41);
          if (v3)
          {
LABEL_272:

            v192 = v42;
            v193 = v41;
            v194 = v210;
            v195 = v43;
LABEL_281:
            v198 = v205;
            v196 = v206;
            v199 = 11;
            goto LABEL_304;
          }

          v114 = v43;

          v115 = v210;
          if (v210)
          {
            goto LABEL_142;
          }

          goto LABEL_190;
        }
      }

      else
      {

        sub_1D62B753C(0, v41, v210, v43, v45, v44, 0xBu);
        if (v41)
        {
          goto LABEL_140;
        }
      }

      v114 = v43;
      v115 = v210;
      if (v210)
      {
LABEL_142:

        sub_1D6273544(a1, v115);
        if (v3)
        {

          v192 = v42;
          v193 = v41;
          v194 = v115;
          v195 = v114;
          goto LABEL_281;
        }

        v49 = v42;
        v50 = v41;
        v51 = v115;
        goto LABEL_191;
      }

LABEL_190:
      v49 = v42;
      v50 = v41;
      v51 = 0;
LABEL_191:
      v77 = v114;
      v116 = v205;
      v78 = v206;
      v117 = 11;
      goto LABEL_192;
    }

    if (v42)
    {

      sub_1D62B753C(v42, v41, v210, v43, v45, v44, 9u);

      sub_1D6273544(a1, v42);
      if (v3)
      {
        goto LABEL_277;
      }

      if (v41)
      {
LABEL_112:

        sub_1D6273544(a1, v41);
        if (v3)
        {
LABEL_277:

          v192 = v42;
          v193 = v41;
          v194 = v210;
          v195 = v43;
          goto LABEL_297;
        }

        v106 = v43;

        v107 = v210;
        if (v210)
        {
LABEL_114:

          sub_1D6273544(a1, v107);
          if (!v3)
          {

            v49 = v42;
            v50 = v41;
            v51 = v107;
LABEL_159:
            v77 = v106;
            v116 = v205;
            v78 = v206;
            v117 = 9;
            goto LABEL_192;
          }

          v192 = v42;
          v193 = v41;
          v194 = v107;
          v195 = v106;
LABEL_297:
          v198 = v205;
          v196 = v206;
          v199 = 9;
          goto LABEL_304;
        }

LABEL_158:
        v49 = v42;
        v50 = v41;
        v51 = 0;
        goto LABEL_159;
      }
    }

    else
    {

      sub_1D62B753C(0, v41, v210, v43, v45, v44, 9u);
      if (v41)
      {
        goto LABEL_112;
      }
    }

    v106 = v43;
    v107 = v210;
    if (v210)
    {
      goto LABEL_114;
    }

    goto LABEL_158;
  }

  if (v46 <= 2)
  {
    if (v46)
    {
      if (v46 == 1)
      {
        if (v42)
        {

          sub_1D62B753C(v42, v41, v210, v43, v45, v44, 1u);

          sub_1D6273544(a1, v42);
          if (v3)
          {
            goto LABEL_268;
          }

          if (v41)
          {
LABEL_21:

            sub_1D6273544(a1, v41);
            if (!v3)
            {
              v47 = v43;

              v48 = v210;
              if (v210)
              {
                goto LABEL_23;
              }

LABEL_162:
              v49 = v42;
              v50 = v41;
              v51 = 0;
LABEL_163:
              v77 = v47;
              v116 = v205;
              v78 = v206;
              v117 = 1;
LABEL_192:
              sub_1D62B4A44(v49, v50, v51, v77, v78, v116, v117);
              v120 = *(v40 + 88);
              if (v120 != 255 && (v120 & 1) != 0)
              {
                v210 = v17;
                v121 = *(v40 + 72);
                v122 = *(v40 + 80);
                sub_1D6189668(v121, v122, v120);
                sub_1D6189668(v121, v122, v120);
                v123 = sub_1D5E26E28(&unk_1F51129D8);
                v124 = swift_allocObject();
                v205 = v122;
                v206 = v121;
                *(v124 + 16) = v121;
                *(v124 + 24) = v122;
                *(v124 + 32) = v123;
                *(v124 + 40) = 0;
                v125 = v124 | 0x3000000000000000;
                v126 = *a1;
                swift_beginAccess();
                v127 = *(v126 + 16);
                v128 = *(v127 + 16);
                if (v128 && (v129 = *(v127 + 8 * v128 + 24), , v130 = sub_1D60E14A8(v129, v125), , (v130 & 1) != 0))
                {

                  v131 = v205;
                }

                else
                {
                  v132 = v211;
                  v133 = swift_isUniquelyReferenced_nonNull_native();
                  v134 = *v132;
                  if ((v133 & 1) == 0)
                  {
                    sub_1D5B4B554(0, &qword_1EC880338, &type metadata for FormatDerivedData._$CopyOnWriteStorage, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6B60]);
                    v186 = swift_allocObject();
                    swift_beginAccess();
                    v187 = v134[2];
                    __dst = v134[1];
                    v230 = v187;
                    *v231 = v134[3];
                    *&v231[14] = *(v134 + 62);
                    memmove((v186 + 16), v134 + 1, 0x3EuLL);
                    sub_1D5EB9AB0(&__dst, &v221);

                    *v211 = v186;
                    v134 = v186;
                  }

                  swift_beginAccess();
                  v135 = *(v134 + 2);
                  v136 = swift_isUniquelyReferenced_nonNull_native();
                  *(v134 + 2) = v135;
                  if ((v136 & 1) == 0)
                  {
                    v135 = sub_1D698F848(0, *(v135 + 2) + 1, 1, v135);
                    *(v134 + 2) = v135;
                  }

                  v138 = *(v135 + 2);
                  v137 = *(v135 + 3);
                  if (v138 >= v137 >> 1)
                  {
                    v188 = sub_1D698F848((v137 > 1), v138 + 1, 1, v135);
                    v139 = v125;
                    v135 = v188;
                  }

                  else
                  {
                    v139 = v125;
                  }

                  v131 = v205;
                  *(v135 + 2) = v138 + 1;
                  *&v135[8 * v138 + 32] = v139;
                  *(v134 + 2) = v135;
                  swift_endAccess();
                }

                sub_1D60107F0(v206, v131, v120);
                v17 = v210;
                a1 = v211;
              }

              v140 = *(v40 + 112);
              if (v140 != 255 && (v140 & 1) != 0)
              {
                v210 = v17;
                v141 = *(v40 + 96);
                v142 = *(v40 + 104);
                sub_1D6189668(v141, v142, v140);
                sub_1D6189668(v141, v142, v140);
                v143 = sub_1D5E26E28(&unk_1F5112A00);
                v144 = swift_allocObject();
                v205 = v142;
                v206 = v141;
                *(v144 + 16) = v141;
                *(v144 + 24) = v142;
                *(v144 + 32) = v143;
                *(v144 + 40) = 0;
                v145 = v144 | 0x3000000000000000;
                v146 = *a1;
                swift_beginAccess();
                v147 = *(v146 + 16);
                v148 = *(v147 + 16);
                if (v148 && (v149 = *(v147 + 8 * v148 + 24), , v150 = sub_1D60E14A8(v149, v145), , (v150 & 1) != 0))
                {

                  v151 = v205;
                }

                else
                {
                  v152 = v211;
                  v153 = swift_isUniquelyReferenced_nonNull_native();
                  v154 = *v152;
                  if ((v153 & 1) == 0)
                  {
                    sub_1D5B4B554(0, &qword_1EC880338, &type metadata for FormatDerivedData._$CopyOnWriteStorage, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6B60]);
                    v189 = swift_allocObject();
                    swift_beginAccess();
                    v190 = v154[2];
                    __dst = v154[1];
                    v230 = v190;
                    *v231 = v154[3];
                    *&v231[14] = *(v154 + 62);
                    memmove((v189 + 16), v154 + 1, 0x3EuLL);
                    sub_1D5EB9AB0(&__dst, &v221);

                    *v211 = v189;
                    v154 = v189;
                  }

                  swift_beginAccess();
                  v155 = *(v154 + 2);
                  v156 = swift_isUniquelyReferenced_nonNull_native();
                  *(v154 + 2) = v155;
                  if ((v156 & 1) == 0)
                  {
                    v155 = sub_1D698F848(0, *(v155 + 2) + 1, 1, v155);
                    *(v154 + 2) = v155;
                  }

                  v158 = *(v155 + 2);
                  v157 = *(v155 + 3);
                  if (v158 >= v157 >> 1)
                  {
                    v191 = sub_1D698F848((v157 > 1), v158 + 1, 1, v155);
                    v159 = v145;
                    v155 = v191;
                  }

                  else
                  {
                    v159 = v145;
                  }

                  v151 = v205;
                  *(v155 + 2) = v158 + 1;
                  *&v155[8 * v158 + 32] = v159;
                  *(v154 + 2) = v155;
                  swift_endAccess();
                }

                sub_1D60107F0(v206, v151, v140);
                v17 = v210;
                a1 = v211;
              }

              v160 = *(v40 + 200);
              v161 = *(v40 + 232);
              v227 = *(v40 + 216);
              v228[0] = v161;
              *(v228 + 9) = *(v40 + 241);
              v162 = *(v40 + 136);
              v163 = *(v40 + 168);
              v223 = *(v40 + 152);
              v224 = v163;
              v225 = *(v40 + 184);
              v226 = v160;
              v221 = *(v40 + 120);
              v222 = v162;
              memmove(&__dst, (v40 + 120), 0x89uLL);
              if (sub_1D60486AC(&__dst) == 1)
              {

                goto LABEL_244;
              }

              v164 = __dst;
              if (__dst)
              {
                sub_1D62B5354(&v221, &v213, &qword_1EDF10BF0, &type metadata for FormatMediaTiming);
                sub_1D6273544(a1, v164);
                if (v3)
                {
                  goto LABEL_254;
                }

                v165 = *(&__dst + 1);
                if (!*(&__dst + 1))
                {
                  goto LABEL_226;
                }
              }

              else
              {
                sub_1D62B5354(&v221, &v213, &qword_1EDF10BF0, &type metadata for FormatMediaTiming);
                v165 = *(&__dst + 1);
                if (!*(&__dst + 1))
                {
                  goto LABEL_226;
                }
              }

              sub_1D6273544(a1, v165);
              if (v3)
              {
                goto LABEL_254;
              }

LABEL_226:
              if (v230)
              {
                sub_1D6273544(a1, v230);
                if (v3)
                {
                  goto LABEL_254;
                }
              }

              if (*(&v230 + 1))
              {
                sub_1D6273544(a1, *(&v230 + 1));
                if (v3)
                {
                  goto LABEL_254;
                }
              }

              if (*&v231[8])
              {
                sub_1D6273544(a1, *&v231[8]);
                if (v3)
                {
                  goto LABEL_254;
                }
              }

              if (*&v231[16])
              {
                sub_1D6273544(a1, *&v231[16]);
                if (v3)
                {
                  goto LABEL_254;
                }
              }

              v166 = v233;
              if (v233 != 255 && (v233 & 1) != 0)
              {
                v167 = *&v231[24];
                v168 = v232;
                sub_1D6189668(*&v231[24], v232, v233);
                sub_1D5C75A4C(v167, v168, 1);
                v169 = sub_1D5E26E28(&unk_1F50F4730);
                v170 = swift_allocObject();
                *(v170 + 16) = v167;
                *(v170 + 24) = v168;
                *(v170 + 32) = v169;
                *(v170 + 40) = 0;
                sub_1D6C4D24C(v170 | 0x3000000000000000);
                sub_1D60107F0(v167, v168, v166);
              }

              v171 = v238;
              if (v238 != 255 && (v238 & 1) != 0)
              {
                v210 = v17;
                v173 = v234;
                v172 = v235;
                v175 = v236;
                v174 = v237;
                sub_1D618903C(v234, v235, v236, v237, 1);
                v176 = v211;
                sub_1D6273544(v211, v173);
                if (v3)
                {
                  sub_1D62B4B50(v173, v172, v175, v174, v171);

                  sub_1D5D0ABCC(&v221, &qword_1EDF10BF0, &type metadata for FormatMediaTiming);
                  goto LABEL_305;
                }

                sub_1D6273544(v176, v172);
                sub_1D6273544(v176, v175);
                sub_1D6273544(v176, v174);
                v3 = 0;
                sub_1D62B4B50(v173, v172, v175, v174, v171);
              }

              v177 = v241;
              if (v241 == 255 || (v241 & 1) == 0)
              {

                sub_1D5D0ABCC(&v221, &qword_1EDF10BF0, &type metadata for FormatMediaTiming);

                a1 = v211;
              }

              else
              {
                v178 = v239;
                v179 = v240;
                sub_1D6189668(v239, v240, v241);
                sub_1D5C75A4C(v178, v179, 1);
                v180 = sub_1D5E26E28(&unk_1F50F4758);
                v181 = swift_allocObject();
                *(v181 + 16) = v178;
                *(v181 + 24) = v179;
                *(v181 + 32) = v180;
                *(v181 + 40) = 0;
                v182 = v211;
                sub_1D6C4D24C(v181 | 0x3000000000000000);
                v183 = v177;
                a1 = v182;
                sub_1D60107F0(v178, v179, v183);

                sub_1D5D0ABCC(&v221, &qword_1EDF10BF0, &type metadata for FormatMediaTiming);
LABEL_244:
              }

              v6 = v209;
              v15 = v207;
              goto LABEL_5;
            }

LABEL_268:

            v192 = v42;
            v193 = v41;
            v194 = v210;
            v195 = v43;
LABEL_289:
            v198 = v205;
            v196 = v206;
            v199 = 1;
            goto LABEL_304;
          }
        }

        else
        {

          sub_1D62B753C(0, v41, v210, v43, v45, v44, 1u);
          if (v41)
          {
            goto LABEL_21;
          }
        }

        v47 = v43;
        v48 = v210;
        if (!v210)
        {
          goto LABEL_162;
        }

LABEL_23:

        sub_1D6273544(a1, v48);
        if (!v3)
        {

          v49 = v42;
          v50 = v41;
          v51 = v48;
          goto LABEL_163;
        }

        v192 = v42;
        v193 = v41;
        v194 = v48;
        v195 = v47;
        goto LABEL_289;
      }

      if (v42)
      {

        sub_1D62B753C(v42, v41, v210, v43, v45, v44, 2u);

        sub_1D6273544(a1, v42);
        if (v3)
        {
          goto LABEL_270;
        }

        if (v41)
        {
LABEL_119:

          sub_1D6273544(a1, v41);
          if (!v3)
          {
            v108 = v43;

            v109 = v210;
            if (v210)
            {
              goto LABEL_121;
            }

LABEL_178:
            v49 = v42;
            v50 = v41;
            v51 = 0;
LABEL_179:
            v77 = v108;
            v116 = v205;
            v78 = v206;
            v117 = 2;
            goto LABEL_192;
          }

LABEL_270:

          v192 = v42;
          v193 = v41;
          v194 = v210;
          v195 = v43;
          goto LABEL_287;
        }
      }

      else
      {

        sub_1D62B753C(0, v41, v210, v43, v45, v44, 2u);
        if (v41)
        {
          goto LABEL_119;
        }
      }

      v108 = v43;
      v109 = v210;
      if (!v210)
      {
        goto LABEL_178;
      }

LABEL_121:

      sub_1D6273544(a1, v109);
      if (!v3)
      {

        v49 = v42;
        v50 = v41;
        v51 = v109;
        goto LABEL_179;
      }

      v192 = v42;
      v193 = v41;
      v194 = v109;
      v195 = v108;
LABEL_287:
      v198 = v205;
      v196 = v206;
      v199 = 2;
      goto LABEL_304;
    }

    if (v42)
    {

      sub_1D62B753C(v42, v41, v210, v43, v45, v44, 0);

      sub_1D6273544(a1, v42);
      if (v3)
      {
        goto LABEL_274;
      }

      if (v41)
      {
LABEL_91:

        sub_1D6273544(a1, v41);
        if (!v3)
        {
          v100 = v43;

          v101 = v210;
          if (v210)
          {
            goto LABEL_93;
          }

LABEL_146:
          v49 = v42;
          v50 = v41;
          v51 = 0;
LABEL_147:
          v77 = v100;
          v116 = v205;
          v78 = v206;
          v117 = 0;
          goto LABEL_192;
        }

LABEL_274:

        v192 = v42;
        v193 = v41;
        v194 = v210;
        v195 = v43;
        goto LABEL_291;
      }
    }

    else
    {

      sub_1D62B753C(0, v41, v210, v43, v45, v44, 0);
      if (v41)
      {
        goto LABEL_91;
      }
    }

    v100 = v43;
    v101 = v210;
    if (!v210)
    {
      goto LABEL_146;
    }

LABEL_93:

    sub_1D6273544(a1, v101);
    if (!v3)
    {

      v49 = v42;
      v50 = v41;
      v51 = v101;
      goto LABEL_147;
    }

    v192 = v42;
    v193 = v41;
    v194 = v101;
    v195 = v100;
LABEL_291:
    v198 = v205;
    v196 = v206;
    v199 = 0;
    goto LABEL_304;
  }

  if (v46 == 3)
  {
    if (v42)
    {

      sub_1D62B753C(v42, v41, v210, v43, v45, v44, 3u);

      sub_1D6273544(a1, v42);
      if (v3)
      {
        goto LABEL_271;
      }

      if (v41)
      {
LABEL_105:

        sub_1D6273544(a1, v41);
        if (v3)
        {
LABEL_271:

          v192 = v42;
          v193 = v41;
          v194 = v210;
          v195 = v43;
          goto LABEL_283;
        }

        v104 = v43;

        v105 = v210;
        if (v210)
        {
LABEL_107:

          sub_1D6273544(a1, v105);
          if (!v3)
          {

            v49 = v42;
            v50 = v41;
            v51 = v105;
LABEL_155:
            v77 = v104;
            v116 = v205;
            v78 = v206;
            v117 = 3;
            goto LABEL_192;
          }

          v192 = v42;
          v193 = v41;
          v194 = v105;
          v195 = v104;
LABEL_283:
          v198 = v205;
          v196 = v206;
          v199 = 3;
          goto LABEL_304;
        }

LABEL_154:
        v49 = v42;
        v50 = v41;
        v51 = 0;
        goto LABEL_155;
      }
    }

    else
    {

      sub_1D62B753C(0, v41, v210, v43, v45, v44, 3u);
      if (v41)
      {
        goto LABEL_105;
      }
    }

    v104 = v43;
    v105 = v210;
    if (v210)
    {
      goto LABEL_107;
    }

    goto LABEL_154;
  }

  if (v46 == 4)
  {
    v201 = v42;
    if (v42)
    {

      v69 = v45;
      v70 = v44;
      sub_1D62B753C(v42, v41, v210, v43, v69, v44, 4u);
      sub_1D5D615EC(v42);
      sub_1D6273544(a1, v42);
      if (!v3)
      {
        sub_1D6273544(a1, v41);
        v3 = 0;
        v71 = v42;
        v72 = v43;
        sub_1D5CDE22C(v71);
        v73 = v210;
        if (v210)
        {
          goto LABEL_54;
        }

LABEL_169:
        v43 = v72;
        v75 = v201;
        v76 = v206;
        if (!v206)
        {
LABEL_170:
          v49 = v75;
          v50 = v41;
          v51 = v210;
          v77 = v43;
          v78 = 0;
          goto LABEL_171;
        }

LABEL_56:
        v200 = v43;

        sub_1D6273544(a1, v76);
        if (!v3)
        {
          sub_1D6273544(a1, v70);
          v3 = 0;
          sub_1D5CDE22C(v76);
          v49 = v75;
          v50 = v41;
          v51 = v210;
          v77 = v200;
          v78 = v76;
LABEL_171:
          v116 = v70;
          v117 = 4;
          goto LABEL_192;
        }

        sub_1D5CDE22C(v76);

        v192 = v75;
        v193 = v41;
        v194 = v210;
        v195 = v200;
        v196 = v76;
LABEL_303:
        v198 = v70;
        v199 = 4;
        goto LABEL_304;
      }

      sub_1D5CDE22C(v42);

      v192 = v42;
      v193 = v41;
      v194 = v210;
    }

    else
    {

      v118 = v43;
      v73 = v210;
      v72 = v118;
      v119 = v45;
      v70 = v44;
      sub_1D62B753C(0, v41, v210, v118, v119, v44, 4u);
      if (!v73)
      {
        goto LABEL_169;
      }

LABEL_54:
      v74 = v73;

      v43 = v72;

      sub_1D6273544(a1, v74);
      if (!v3)
      {
        sub_1D6273544(a1, v72);
        v3 = 0;
        v75 = v201;
        sub_1D5CDE22C(v210);
        v76 = v206;
        if (!v206)
        {
          goto LABEL_170;
        }

        goto LABEL_56;
      }

      v197 = v210;
      sub_1D5CDE22C(v210);

      v192 = v201;
      v193 = v41;
      v194 = v197;
    }

    v195 = v43;
    v196 = v206;
    goto LABEL_303;
  }

  if (!v42)
  {

    sub_1D62B753C(0, v41, v210, v43, v45, v44, 5u);
    if (v41)
    {
      goto LABEL_133;
    }

LABEL_185:
    v112 = v43;
    v113 = v210;
    if (v210)
    {
      goto LABEL_135;
    }

    goto LABEL_186;
  }

  sub_1D62B753C(v42, v41, v210, v43, v45, v44, 5u);

  sub_1D6273544(a1, v42);
  if (v3)
  {
    goto LABEL_275;
  }

  if (!v41)
  {
    goto LABEL_185;
  }

LABEL_133:

  sub_1D6273544(a1, v41);
  if (v3)
  {
LABEL_275:

    v192 = v42;
    v193 = v41;
    v194 = v210;
    v195 = v43;
    goto LABEL_295;
  }

  v112 = v43;

  v113 = v210;
  if (!v210)
  {
LABEL_186:
    v49 = v42;
    v50 = v41;
    v51 = 0;
    goto LABEL_187;
  }

LABEL_135:

  sub_1D6273544(a1, v113);
  if (!v3)
  {

    v49 = v42;
    v50 = v41;
    v51 = v113;
LABEL_187:
    v77 = v112;
    v116 = v205;
    v78 = v206;
    v117 = 5;
    goto LABEL_192;
  }

  v192 = v42;
  v193 = v41;
  v194 = v113;
  v195 = v112;
LABEL_295:
  v198 = v205;
  v196 = v206;
  v199 = 5;
LABEL_304:
  sub_1D62B4A44(v192, v193, v194, v195, v196, v198, v199);
LABEL_305:
}

uint64_t sub_1D6272D88(uint64_t result, uint64_t a2)
{
  v20 = *(a2 + 16);
  if (v20)
  {
    v3 = result;
    v4 = 0;
    v5 = a2 + 32;
    p_superclass = &OBJC_METACLASS____TtC8NewsFeed20SavingCommandHandler.superclass;
    v19 = a2 + 32;
    while (1)
    {
      v7 = (v5 + 56 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = v7[5];
      v11 = p_superclass[355];
      swift_bridgeObjectRetain_n();
      v24 = v10;

      if (v11 != -1)
      {
        swift_once();
      }

      v21[0] = v9;
      v21[1] = v8;
      result = sub_1D6844380(v21);
      v12 = result;
      v13 = *(result + 16);
      if (v13)
      {
        break;
      }

LABEL_10:

      if (v24)
      {
        sub_1D62707E8(v3, v24);

        if (v2)
        {
        }
      }

      else
      {
      }

      ++v4;

      v5 = v19;
      p_superclass = (&OBJC_METACLASS____TtC8NewsFeed20SavingCommandHandler + 8);
      if (v4 == v20)
      {
        return result;
      }
    }

    v14 = 0;
    v15 = 32;
    while (v14 < *(v12 + 16))
    {
      v16 = *(v12 + v15);
      v17 = *(v12 + v15 + 16);
      v18 = *(v12 + v15 + 32);
      v23 = *(v12 + v15 + 48);
      v22[1] = v17;
      v22[2] = v18;
      v22[0] = v16;
      sub_1D5E3B610(v22, v21);
      sub_1D6844F60(v3);
      if (v2)
      {

        sub_1D5E3B66C(v22);
      }

      ++v14;
      result = sub_1D5E3B66C(v22);
      v15 += 56;
      if (v13 == v14)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D6272F68(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = result;
    for (i = (a2 + 64); ; i += 6)
    {
      v7 = *(i - 2);
      v6 = *(i - 1);
      v8 = *i;

      sub_1D5CFCFAC(v6);
      sub_1D5CFCFAC(v8);

      sub_1D6EE4610(v4);
      if (v2)
      {
        break;
      }

      if (v7)
      {
        sub_1D6273544(v4, v7);
      }

      if ((~v6 & 0xF000000000000007) != 0)
      {

        sub_1D62895DC(v4);
      }

      if ((~v8 & 0xF000000000000007) != 0)
      {

        sub_1D62895DC(v4);
      }

      else
      {
      }

      sub_1D5C84FF4(v6);
      result = sub_1D5C84FF4(v8);
      if (!--v3)
      {
        return result;
      }
    }

    sub_1D5C84FF4(v6);
    return sub_1D5C84FF4(v8);
  }

  return result;
}

uint64_t sub_1D6273154(uint64_t result, uint64_t a2)
{
  v3 = v2;
  v20 = *(a2 + 16);
  if (v20)
  {
    v4 = result;
    v5 = 0;
    v21 = a2 + 32;
    while (1)
    {
      v6 = v21 + 40 * v5;
      v7 = *v6;
      v8 = *(v6 + 8);
      v10 = *(v6 + 16);
      v9 = *(v6 + 24);
      v11 = *(v6 + 32);

      v22 = v10;
      v26 = v11;
      sub_1D5ED34B0(v10, v9, v11);
      v12 = qword_1EDF2AB18;

      if (v12 != -1)
      {
        swift_once();
      }

      v23[0] = v7;
      v23[1] = v8;
      result = sub_1D6844380(v23);
      v13 = result;
      v14 = *(result + 16);
      if (v14)
      {
        break;
      }

LABEL_3:
      ++v5;
      swift_bridgeObjectRelease_n();

      result = sub_1D5ED348C(v22, v9, v26);
      if (v5 == v20)
      {
        return result;
      }
    }

    v15 = 0;
    v16 = 32;
    while (v15 < *(v13 + 16))
    {
      v17 = *(v13 + v16);
      v18 = *(v13 + v16 + 16);
      v19 = *(v13 + v16 + 32);
      v25 = *(v13 + v16 + 48);
      v24[1] = v18;
      v24[2] = v19;
      v24[0] = v17;
      sub_1D5E3B610(v24, v23);
      sub_1D6844F60(v4);
      if (v3)
      {

        sub_1D5E3B66C(v24);
        swift_bridgeObjectRelease_n();
        return sub_1D5ED348C(v22, v9, v26);
      }

      ++v15;
      result = sub_1D5E3B66C(v24);
      v16 += 56;
      if (v14 == v15)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1D627331C(unint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = result;
    v5 = (a2 + 40);
    v11 = result;
    do
    {
      v7 = v5[1];
      v6 = v5[2];
      v8 = v5[4];

      sub_1D5CFCFAC(v7);
      sub_1D5CFCFAC(v6);
      sub_1D5D0A59C(v8);

      sub_1D6EE4610(v4);
      if (v2)
      {

        sub_1D5C84FF4(v7);
        sub_1D5C84FF4(v6);
        return sub_1D5D0A5AC(v8);
      }

      if ((~v7 & 0xF000000000000007) != 0)
      {

        sub_1D62895DC(v4);
      }

      if ((~v6 & 0xF000000000000007) != 0)
      {

        sub_1D62895DC(v4);
      }

      if (v8 >= 2)
      {
        if (v8 == 2)
        {
          goto LABEL_4;
        }

        v9 = *(v8 + 16);
        v10 = *(v8 + 24);
        sub_1D5D0A59C(v8);
        sub_1D5D0A57C(v9);
        sub_1D5D0A57C(v10);
        sub_1D62886C0(v11, v9, v10);
        sub_1D5D0A58C(v9);
        sub_1D5D0A58C(v10);
        v4 = v11;
      }

      sub_1D5D0A5AC(v8);
LABEL_4:
      v5 += 6;

      sub_1D5C84FF4(v7);
      sub_1D5C84FF4(v6);
      result = sub_1D5D0A5AC(v8);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D6273544(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = v3 - 1;
    v5 = (a2 + 40);
    if (*(a2 + 40))
    {
      goto LABEL_4;
    }

LABEL_3:
    v7 = *(v5 - 1);
    sub_1D62B72CC(v7, 0);

    sub_1D6012F58();
    sub_1D62B72BC(v7, 0);

    if (!v2)
    {
LABEL_4:
      while (v4)
      {
        --v4;
        v5 += 16;
        if ((*v5 & 1) == 0)
        {
          goto LABEL_3;
        }
      }
    }
  }

  return result;
}

unint64_t sub_1D6273600(unint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (!v3)
  {
    return result;
  }

  v4 = result;
  v5 = (a2 + 32);
  while (1)
  {
    v7 = *v5++;
    v6 = v7;
    v8 = v7 >> 61;
    v9 = (v7 >> 61) >= 2;
    if ((v7 >> 61) <= 2)
    {
      break;
    }

    if (v8 == 3)
    {
      sub_1D5ECF0E0(v6);

      sub_1D62895DC(v4);
      if (v2)
      {
        goto LABEL_33;
      }

      goto LABEL_18;
    }

    if (v8 == 4)
    {

      sub_1D5ECF0E0(v6);

      sub_1D62895DC(v4);
      if (v2)
      {

        return sub_1D5ECF11C(v6);
      }

LABEL_18:
      result = sub_1D5ECF11C(v6);
    }

LABEL_4:
    if (!--v3)
    {
      return result;
    }
  }

  if (!v9)
  {
    goto LABEL_4;
  }

  v11 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v10 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  v12 = v11 >> 61;
  if ((v11 >> 61) <= 1 || v12 == 2 || v12 == 3)
  {
    sub_1D5ECF0E0(v6);

    goto LABEL_14;
  }

  v13 = v4;
  v14 = *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  sub_1D5ECF0E0(v6);

  v22 = v4;
  sub_1D62895DC(v4);
  if (!v2)
  {

    if ((v14 & 0x8000000000000000) == 0)
    {
LABEL_21:
      v4 = v13;
      goto LABEL_14;
    }

    v15 = *((v14 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

    sub_1D62895DC(v13);

    if (v15 < 0 && (v16 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x18), , sub_1D62895DC(v13), , v16 < 0) && (v17 = *((v16 & 0x1FFFFFFFFFFFFFFFLL) + 0x18), , sub_1D62895DC(v13), , v17 < 0) && (v18 = *((v17 & 0x1FFFFFFFFFFFFFFFLL) + 0x18), , sub_1D62895DC(v13), , v18 < 0) && (v19 = *((v18 & 0x1FFFFFFFFFFFFFFFLL) + 0x18), , sub_1D62895DC(v13), , v19 < 0) && (v20 = *((v19 & 0x1FFFFFFFFFFFFFFFLL) + 0x18), , sub_1D62895DC(v13), , v20 < 0))
    {
      v21 = *((v20 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

      sub_1D62895DC(v13);

      if ((v21 & 0x8000000000000000) == 0)
      {
        goto LABEL_21;
      }

      v4 = v22;
      sub_1D62895DC(v22);

      sub_1D628DB94(v22);
    }

    else
    {
      v4 = v13;
    }

LABEL_14:
    sub_1D6273600(v4, v10);

    result = sub_1D5ECF11C(v6);
    if (v2)
    {
      return result;
    }

    goto LABEL_4;
  }

LABEL_33:

  return sub_1D5ECF11C(v6);
}

uint64_t sub_1D6273A6C(uint64_t result, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t))
{
  v23 = *(a2 + 16);
  if (v23)
  {
    v4 = result;
    v5 = 0;
    v6 = a2 + 32;
    p_superclass = &OBJC_METACLASS____TtC8NewsFeed20SavingCommandHandler.superclass;
    v22 = a2 + 32;
    while (1)
    {
      v8 = (v6 + 24 * v5);
      v9 = *v8;
      v10 = v8[1];
      v24 = v8[2];
      v11 = p_superclass[355];
      swift_bridgeObjectRetain_n();
      v28 = v24 & 0x7FFFFFFFFFFFFFFFLL;

      if (v11 != -1)
      {
        swift_once();
      }

      v25[0] = v9;
      v25[1] = v10;
      result = sub_1D6844380(v25);
      v12 = result;
      v13 = *(result + 16);
      if (v13)
      {
        break;
      }

LABEL_10:

      if (v24 < 0)
      {
        v19 = *(v28 + 16);
        v20 = *(v28 + 24);

        a3(v4, v19, v20);

        if (v3)
        {
          return result;
        }
      }

      else
      {
      }

      ++v5;
      v6 = v22;
      p_superclass = (&OBJC_METACLASS____TtC8NewsFeed20SavingCommandHandler + 8);
      if (v5 == v23)
      {
        return result;
      }
    }

    v14 = 0;
    v15 = 32;
    while (v14 < *(v12 + 16))
    {
      v16 = *(v12 + v15);
      v17 = *(v12 + v15 + 16);
      v18 = *(v12 + v15 + 32);
      v27 = *(v12 + v15 + 48);
      v26[1] = v17;
      v26[2] = v18;
      v26[0] = v16;
      sub_1D5E3B610(v26, v25);
      sub_1D6844F60(v4);
      if (v3)
      {

        sub_1D5E3B66C(v26);

        return swift_bridgeObjectRelease_n();
      }

      ++v14;
      result = sub_1D5E3B66C(v26);
      v15 += 56;
      if (v13 == v14)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1D6273C90(unint64_t result, uint64_t a2)
{
  v3 = v2;
  v24 = *(a2 + 16);
  if (v24)
  {
    v4 = result;
    v5 = 0;
    v6 = a2 + 32;
    p_superclass = &OBJC_METACLASS____TtC8NewsFeed20SavingCommandHandler.superclass;
    v23 = a2 + 32;
    while (1)
    {
      v8 = (v6 + 24 * v5);
      v9 = *v8;
      v10 = v8[1];
      v11 = v8[2];

      v28 = v11;
      sub_1D5D0A57C(v11);
      v12 = p_superclass[355];

      if (v12 != -1)
      {
        swift_once();
      }

      v25[0] = v9;
      v25[1] = v10;
      result = sub_1D6844380(v25);
      v13 = result;
      v14 = *(result + 16);
      if (v14)
      {
        break;
      }

LABEL_10:

      v20 = v28;
      if (v28 >= 2)
      {
        v22 = *(v28 + 16);
        v21 = *(v28 + 24);
        sub_1D5D0A57C(v22);

        sub_1D6288CD4(v4, v22, v21);
        sub_1D5D0A58C(v22);
        if (v3)
        {
LABEL_16:

          return sub_1D5D0A58C(v20);
        }
      }

      ++v5;

      result = sub_1D5D0A58C(v20);
      v6 = v23;
      p_superclass = (&OBJC_METACLASS____TtC8NewsFeed20SavingCommandHandler + 8);
      if (v5 == v24)
      {
        return result;
      }
    }

    v15 = 0;
    v16 = 32;
    while (v15 < *(v13 + 16))
    {
      v17 = *(v13 + v16);
      v18 = *(v13 + v16 + 16);
      v19 = *(v13 + v16 + 32);
      v27 = *(v13 + v16 + 48);
      v26[1] = v18;
      v26[2] = v19;
      v26[0] = v17;
      sub_1D5E3B610(v26, v25);
      sub_1D6844F60(v4);
      if (v3)
      {

        sub_1D5E3B66C(v26);
        v20 = v28;
        goto LABEL_16;
      }

      ++v15;
      result = sub_1D5E3B66C(v26);
      v16 += 56;
      if (v14 == v15)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D6273EA4(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (!v3)
  {
    return result;
  }

  v4 = result;
  for (i = (a2 + 48); ; i += 3)
  {
    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    if ((~v7 & 0xF000000000000007) == 0)
    {
      sub_1D5CFCFAC(*(i - 2));
      sub_1D5D04BD4(v6);
      sub_1D5D04BD4(v8);
      if ((~v6 & 0xF000000000000007) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    sub_1D5CFCFAC(v7);
    sub_1D5D04BD4(v6);
    sub_1D5D04BD4(v8);
    sub_1D5CFCFAC(v7);
    sub_1D62895DC(v4);
    if (v2)
    {
      break;
    }

    if ((~v6 & 0xF000000000000007) == 0)
    {
      goto LABEL_11;
    }

LABEL_10:

    sub_1D6012F58();

    if (v2)
    {
      goto LABEL_15;
    }

LABEL_11:
    if ((~v8 & 0xF000000000000007) != 0)
    {

      sub_1D6012F58();

      sub_1D5C84FF4(v7);
      sub_1D5C8500C(v6);
      result = sub_1D5C8500C(v8);
      if (v2)
      {
        return result;
      }
    }

    else
    {
      sub_1D5C84FF4(v7);
      sub_1D5C8500C(v6);
      result = sub_1D5C8500C(v8);
    }

    if (!--v3)
    {
      return result;
    }
  }

LABEL_15:
  sub_1D5C84FF4(v7);
  sub_1D5C8500C(v6);
  return sub_1D5C8500C(v8);
}

unint64_t sub_1D6274044(unint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = result;
    v5 = (a2 + 32);
    while (1)
    {
      v6 = *v5++;
      sub_1D5CFEC98(v6);
      sub_1D6285678(v4);
      v7 = v6;
      if (v2)
      {
        break;
      }

      result = sub_1D5CFED88(v7);
      if (!--v3)
      {
        return result;
      }
    }

    return sub_1D5CFED88(v7);
  }

  return result;
}

unint64_t sub_1D62740D0(unint64_t result, uint64_t a2)
{
  v3 = v2;
  v24 = *(a2 + 16);
  if (!v24)
  {
    return result;
  }

  v4 = result;
  v5 = 0;
  v6 = a2 + 32;
  p_superclass = &OBJC_METACLASS____TtC8NewsFeed20SavingCommandHandler.superclass;
  v23 = a2 + 32;
  while (1)
  {
    v8 = (v6 + 24 * v5);
    v9 = *v8;
    v10 = v8[1];
    v11 = v8[2];

    v28 = v11;
    sub_1D5EB1500(v11);
    v12 = p_superclass[355];

    if (v12 != -1)
    {
      swift_once();
    }

    v25[0] = v9;
    v25[1] = v10;
    result = sub_1D6844380(v25);
    v13 = result;
    v14 = *(result + 16);
    if (v14)
    {
      break;
    }

LABEL_10:

    v20 = v28;
    if (v28 >> 62)
    {
      if (v28 >> 62 != 1)
      {
        v6 = v23;
        p_superclass = (&OBJC_METACLASS____TtC8NewsFeed20SavingCommandHandler + 8);

        if (v20 != 0x8000000000000000)
        {
          v20 = 0x8000000000000008;
        }

        goto LABEL_17;
      }

      v22 = *((v28 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v21 = *((v28 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(v22);

      sub_1D6288D68(v4, v22, v21);
      sub_1D5EB15C4(v22);
      if (v3)
      {
LABEL_20:

        return sub_1D5EB15C4(v20);
      }
    }

    v6 = v23;
    p_superclass = (&OBJC_METACLASS____TtC8NewsFeed20SavingCommandHandler + 8);
LABEL_17:
    ++v5;
    result = sub_1D5EB15C4(v20);
    if (v5 == v24)
    {
      return result;
    }
  }

  v15 = 0;
  v16 = 32;
  while (v15 < *(v13 + 16))
  {
    v17 = *(v13 + v16);
    v18 = *(v13 + v16 + 16);
    v19 = *(v13 + v16 + 32);
    v27 = *(v13 + v16 + 48);
    v26[1] = v18;
    v26[2] = v19;
    v26[0] = v17;
    sub_1D5E3B610(v26, v25);
    sub_1D6844F60(v4);
    if (v3)
    {

      sub_1D5E3B66C(v26);
      v20 = v28;
      goto LABEL_20;
    }

    ++v15;
    result = sub_1D5E3B66C(v26);
    v16 += 56;
    if (v14 == v15)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D6274320(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = result;
    for (i = (a2 + 32); ; i += 4)
    {
      v6 = i[1];
      *v12 = *i;
      *&v12[16] = v6;
      *&v12[32] = i[2];
      *&v12[43] = *(i + 43);
      *&v7[0] = *v12;
      sub_1D62B6438(v12, &v9, qword_1EDF2F000, type metadata accessor for FormatSwitchValue.CaseValue);

      sub_1D6285C00(v4);
      if (v2)
      {
        break;
      }

      v9 = *&v12[8];
      v10 = *&v12[24];
      v11[0] = *&v12[40];
      *(v11 + 15) = *&v12[55];
      sub_1D5CF5DBC(&v12[8], v7);
      sub_1D629D254(v4);
      sub_1D62B7904(v12);
      v7[0] = v9;
      v7[1] = v10;
      v8[0] = v11[0];
      *(v8 + 15) = *(v11 + 15);
      result = sub_1D5CF603C(v7);
      if (!--v3)
      {
        return result;
      }
    }

    sub_1D62B7904(v12);
  }

  return result;
}

uint64_t sub_1D62744A4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = result;
    v4 = (a2 + 49);
    v27 = result;
    do
    {
      if ((*v4 & 1) == 0)
      {
        v5 = *(v4 - 17);
        v6 = *(v4 - 9);
        v7 = *(v4 - 1);
        if (v7)
        {
          sub_1D5E04C58(*(v4 - 17), *(v4 - 9), *(v4 - 1), 0);
          sub_1D5E04C58(v5, v6, v7, 0);
          v8 = sub_1D5E26E28(&unk_1F50F4538);
          v9 = swift_allocObject();
          v9[2] = v5;
          v9[3] = v6;
          v9[4] = v8;
          v9[5] = 0;
          v31 = v9;
          v10 = *v3;
          swift_beginAccess();
          v11 = *(v10 + 2);
          v12 = *(v11 + 16);
          if (v12 && (v13 = *(v11 + 8 * v12 + 24), v13 >> 60 == 3) && ((v14 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x20), v26 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x28), *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x10) == v5) ? (v15 = v6 == *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x18)) : (v15 = 0), (v15 || (sub_1D72646CC() & 1) != 0) && (sub_1D5E04C58(v5, v6, v7, 0), , , v16 = sub_1D5E1E5A4(v14, v8), sub_1D5E04C68(v5, v6, v7, 0), , , (v16 & 1) != 0) && !v26))
          {
          }

          else
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v18 = *v3;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1D5B4B554(0, &qword_1EC880338, &type metadata for FormatDerivedData._$CopyOnWriteStorage, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6B60]);
              v24 = swift_allocObject();
              swift_beginAccess();
              v25 = v18[2];
              v29[0] = v18[1];
              v29[1] = v25;
              v30[0] = v18[3];
              *(v30 + 14) = *(v18 + 62);
              memmove((v24 + 16), v18 + 1, 0x3EuLL);
              sub_1D5EB9AB0(v29, v28);

              *v3 = v24;
              v18 = v24;
            }

            swift_beginAccess();
            v19 = *(v18 + 2);
            v20 = swift_isUniquelyReferenced_nonNull_native();
            *(v18 + 2) = v19;
            if ((v20 & 1) == 0)
            {
              v19 = sub_1D698F848(0, *(v19 + 2) + 1, 1, v19);
              *(v18 + 2) = v19;
            }

            v22 = *(v19 + 2);
            v21 = *(v19 + 3);
            if (v22 >= v21 >> 1)
            {
              v19 = sub_1D698F848((v21 > 1), v22 + 1, 1, v19);
            }

            v23 = v31 | 0x3000000000000000;
            *(v19 + 2) = v22 + 1;
            *&v19[8 * v22 + 32] = v23;
            *(v18 + 2) = v19;
            swift_endAccess();
            v3 = v27;
          }
        }

        result = sub_1D5E04C68(v5, v6, v7, 0);
      }

      v4 += 24;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1D62747C4(uint64_t result, uint64_t a2)
{
  v17 = *(a2 + 16);
  if (v17)
  {
    v3 = result;
    v4 = 0;
    v18 = a2 + 32;
    while (1)
    {
      v5 = (v18 + 32 * v4);
      v6 = *v5;
      v7 = v5[1];
      v8 = v5[3];
      v9 = qword_1EDF2AB18;
      swift_bridgeObjectRetain_n();
      v22 = v8;

      if (v9 != -1)
      {
        swift_once();
      }

      v19[0] = v6;
      v19[1] = v7;
      result = sub_1D6844380(v19);
      v10 = result;
      v11 = *(result + 16);
      if (v11)
      {
        break;
      }

LABEL_3:
      ++v4;

      swift_bridgeObjectRelease_n();

      if (v4 == v17)
      {
        return result;
      }
    }

    v12 = 0;
    v13 = 32;
    while (v12 < *(v10 + 16))
    {
      v14 = *(v10 + v13);
      v15 = *(v10 + v13 + 16);
      v16 = *(v10 + v13 + 32);
      v21 = *(v10 + v13 + 48);
      v20[1] = v15;
      v20[2] = v16;
      v20[0] = v14;
      sub_1D5E3B610(v20, v19);
      sub_1D6844F60(v3);
      if (v2)
      {

        sub_1D5E3B66C(v20);

        return swift_bridgeObjectRelease_n();
      }

      ++v12;
      result = sub_1D5E3B66C(v20);
      v13 += 56;
      if (v11 == v12)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t *sub_1D627496C(uint64_t *result, uint64_t a2)
{
  v3 = v2;
  v4 = *(a2 + 16);
  if (!v4)
  {
    return result;
  }

  v5 = (a2 + 32);
  v238 = result;
  while (1)
  {
    v6 = v5[1];
    v232 = *v5;
    v233 = v6;
    v7 = v5[3];
    v234 = v5[2];
    v235 = v7;
    v8 = v5[5];
    v236 = v5[4];
    *v237 = v8;
    *&v237[10] = *(v5 + 90);
    v9 = *(&v232 + 1);
    v10 = v232;
    v12 = *(&v233 + 1);
    v11 = v233;
    v14 = *(&v234 + 1);
    v13 = v234;
    v15 = (*&v237[24] >> 12) & 3;
    v16 = v235;
    if (v15)
    {
      v214 = v236;
      v215 = *(&v235 + 1);
      v17 = *(&v236 + 1);
      v19 = *&v237[8];
      v18 = *&v237[16];
      v20 = v15 == 1;
      v217 = *&v237[24];
      v208 = *v237;
      v21 = v235 >> 14;
      if (v20)
      {
        if (v235 >> 14)
        {
          v200 = *&v237[8];
          if (v21 != 1)
          {
            v193 = *(&v236 + 1);
            v64 = v235;
            switch((v235 >> 7) & 0x7E | (v235 >> 3) & 1)
            {
              case 2u:
                v195 = *(&v233 + 1);
                v168 = v234;
                v169 = v233;
                v170 = v3;
                v171 = *(&v232 + 1);
                *&v231[10] = *(v5 + 90);
                v172 = v5[5];
                v230 = v5[4];
                *v231 = v172;
                v173 = v5[1];
                v227 = *v5;
                v228 = v173;
                v174 = v5[3];
                *v229 = v5[2];
                *&v229[16] = v174;
                *&v231[24] &= 0xCFFFu;
                sub_1D62B7260(&v227, &v221);
                if ((v64 & 0xF0) == 0x30)
                {
                  v227 = __PAIR128__(v171, v10);
                  LOWORD(v228) = v169;
                  sub_1D62921EC(v238);
                  if (v170)
                  {
                    return sub_1D60B2A74(&v232);
                  }
                }

                v60 = v215;
                *&v227 = v10;
                *(&v227 + 1) = v171;
                *&v228 = v169;
                *(&v228 + 1) = v195;
                *v229 = v168;
                v229[16] = v64 & 0xF7;
                v59 = v238;
                sub_1D6292190(v238);
                v3 = v170;
                if (v170)
                {
                  return sub_1D60B2A74(&v232);
                }

                v36 = v214;
                goto LABEL_30;
              case 3u:
              case 4u:
                v221 = v232;
                v222 = v233;
                v220 = 5;
                v213 = v3;
                v188 = *(&v232 + 1);
                v130 = v234;
                v131 = v233;
                v132 = *(&v234 + 1);
                sub_1D60B2AC8(&v232, &v227);
                v199 = v130;
                v207 = v132;
                sub_1D5E1DA6C(v10, v188, v131, v12, v130, v132, v16);

                v133 = sub_1D703E0C8(&v221, &v220);
                if (v213)
                {
                  goto LABEL_125;
                }

                v134 = v133;
                v203 = v18;
                v190 = v131;

                v135 = swift_allocObject();
                *(v135 + 16) = v10;
                *(v135 + 24) = v188;
                *(v135 + 32) = v134;
                *(v135 + 40) = 0;
                v136 = v135 | 0x3000000000000000;
                v137 = *v238;
                swift_beginAccess();
                v138 = *(v137 + 16);
                v139 = *(v138 + 16);
                if (v139 && (v140 = *(v138 + 8 * v139 + 24), , v141 = sub_1D60E14A8(v140, v136), , (v141 & 1) != 0))
                {
                }

                else
                {
                  v158 = v238;
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v160 = *v158;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    sub_1D5B4B554(0, &qword_1EC880338, &type metadata for FormatDerivedData._$CopyOnWriteStorage, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6B60]);
                    v184 = swift_allocObject();
                    swift_beginAccess();
                    v185 = v160[2];
                    v227 = v160[1];
                    v228 = v185;
                    *v229 = v160[3];
                    *&v229[14] = *(v160 + 62);
                    memmove((v184 + 16), v160 + 1, 0x3EuLL);
                    sub_1D5EB9AB0(&v227, &v221);

                    *v158 = v184;
                    v160 = v184;
                  }

                  swift_beginAccess();
                  v161 = *(v160 + 2);
                  v162 = swift_isUniquelyReferenced_nonNull_native();
                  *(v160 + 2) = v161;
                  if ((v162 & 1) == 0)
                  {
                    v161 = sub_1D698F848(0, *(v161 + 2) + 1, 1, v161);
                    *(v160 + 2) = v161;
                  }

                  v164 = *(v161 + 2);
                  v163 = *(v161 + 3);
                  v165 = v164 + 1;
                  if (v164 >= v163 >> 1)
                  {
                    v186 = sub_1D698F848((v163 > 1), v164 + 1, 1, v161);
                    v165 = v164 + 1;
                    v161 = v186;
                  }

                  *(v161 + 2) = v165;
                  *&v161[8 * v164 + 32] = v136;
                  *(v160 + 2) = v161;
                  swift_endAccess();
                }

                *&v227 = v10;
                *(&v227 + 1) = v188;
                *&v228 = v190;
                LOBYTE(v221) = 5;
                sub_1D5E1DA6C(v10, v188, v190, v12, v199, v207, v16);

                v166 = sub_1D703E0C8(&v227, &v221);

                v167 = swift_allocObject();
                *(v167 + 16) = v10;
                *(v167 + 24) = v188;
                *(v167 + 32) = v166;
                *(v167 + 40) = 0;
                v59 = v238;
                sub_1D6C4D24C(v167 | 0x3000000000000000);

                v36 = v214;
                v60 = v215;
                v19 = v200;
                v18 = v203;
                v17 = v193;
                v3 = 0;
                break;
              default:
                *&v231[10] = *(v5 + 90);
                v65 = v5[5];
                v230 = v5[4];
                *v231 = v65;
                v66 = v5[1];
                v227 = *v5;
                v228 = v66;
                v67 = v5[3];
                *v229 = v5[2];
                *&v229[16] = v67;
                *&v231[24] &= 0xCFFFu;
                sub_1D62B7260(&v227, &v221);
                v59 = v238;
                v36 = v214;
                v60 = v215;
LABEL_30:
                v17 = v193;
                v19 = v200;
                break;
            }

            goto LABEL_60;
          }

          v202 = *&v237[16];
          v204 = v4;
          v221 = v232;
          v222 = v233;
          v220 = 5;
          v209 = v3;
          v22 = *(&v232 + 1);
          v23 = v233;
          v24 = v234;
          sub_1D60B2AC8(&v232, &v227);
          sub_1D5E1DA6C(v10, v22, v23, v12, v24, *(&v24 + 1), v16);
          v25 = sub_1D703E0C8(&v221, &v220);
          if (v209)
          {
            return sub_1D60B2A74(&v232);
          }

          v26 = v25;
          v27 = v17;
          v28 = swift_allocObject();
          *(v28 + 16) = v10;
          *(v28 + 24) = v22;
          *(v28 + 32) = v26;
          *(v28 + 40) = 0;
          v29 = v28 | 0x3000000000000000;
          v30 = *v238;
          swift_beginAccess();
          v31 = *(v30 + 16);
          v32 = *(v31 + 16);
          if (v32)
          {
            v33 = *(v31 + 8 * v32 + 24);

            v34 = sub_1D60E14A8(v33, v29);

            v36 = v214;
            v35 = v215;
            if (v34)
            {
LABEL_26:

              v59 = v238;
              v19 = v200;
              v18 = v202;
              v17 = v27;
              v4 = v204;
              v60 = v35;
              v3 = 0;
LABEL_60:
              v100 = v217;
              if (!(v217 >> 14))
              {
                goto LABEL_4;
              }

              if (v217 >> 14 == 1)
              {
                *&v227 = v60;
                *(&v227 + 1) = v36;
                *&v228 = v17;
                LOBYTE(v221) = 5;
                sub_1D5E1DA6C(v60, v36, v17, v208, v19, v18, v217 & 0xCFFF);
                v101 = sub_1D703E0C8(&v227, &v221);
                if (v3)
                {
                  return sub_1D60B2A74(&v232);
                }

                v102 = v101;
                v103 = swift_allocObject();
                *(v103 + 16) = v60;
                *(v103 + 24) = v36;
                *(v103 + 32) = v102;
                *(v103 + 40) = 0;

                sub_1D6C4D24C(v103 | 0x3000000000000000);

                goto LABEL_4;
              }

              v206 = v4;
              if ((((v217 & 0xF00) >> 7) & 0xFFFFFFFE | (v217 >> 3) & 1) - 3 >= 2)
              {
                v211 = v3;
                v104 = v19;
              }

              else
              {
                *&v227 = v60;
                *(&v227 + 1) = v36;
                *&v228 = v17;
                LOBYTE(v221) = 5;
                v104 = v19;
                v105 = v19;
                v106 = v3;
                v107 = v18;
                sub_1D5E1DA6C(v60, v36, v17, v208, v105, v18, v217 & 0xCFFF);

                v108 = sub_1D703E0C8(&v227, &v221);
                if (v106)
                {
LABEL_121:

                  return sub_1D60B2A74(&v232);
                }

                v109 = v108;
                v211 = 0;

                v110 = swift_allocObject();
                *(v110 + 16) = v60;
                *(v110 + 24) = v36;
                *(v110 + 32) = v109;
                *(v110 + 40) = 0;
                sub_1D6C4D24C(v110 | 0x3000000000000000);

                v18 = v107;
                v100 = v217;
              }

              v111 = v100 & 0xFFF;
              *&v227 = v60;
              *(&v227 + 1) = v36;
              *&v228 = v17;
              *(&v228 + 1) = v208;
              *v229 = v104;
              *&v229[8] = v18;
              *&v229[16] = v100 & 0xFFF;
              sub_1D62099A8(v59);
              if (v211)
              {
                return sub_1D60B2A74(&v232);
              }

              *&v221 = v60;
              *(&v221 + 1) = v36;
              v222 = v17;
              v223 = v208;
              v224 = v104;
              v225 = v18;
              v226 = v111;
              sub_1D5FD697C(v59);
              v3 = 0;
              result = sub_1D60B2A74(&v232);
              v4 = v206;
              goto LABEL_5;
            }
          }

          else
          {
          }

          v84 = v238;
          v85 = swift_isUniquelyReferenced_nonNull_native();
          v86 = *v84;
          v3 = 0;
          if (v85)
          {
LABEL_55:
            v4 = v204;
            swift_beginAccess();
            v96 = *(v86 + 16);
            v97 = swift_isUniquelyReferenced_nonNull_native();
            *(v86 + 16) = v96;
            if ((v97 & 1) == 0)
            {
              v96 = sub_1D698F848(0, *(v96 + 2) + 1, 1, v96);
              *(v86 + 16) = v96;
            }

            v99 = *(v96 + 2);
            v98 = *(v96 + 3);
            if (v99 >= v98 >> 1)
            {
              v96 = sub_1D698F848((v98 > 1), v99 + 1, 1, v96);
            }

            *(v96 + 2) = v99 + 1;
            *&v96[8 * v99 + 32] = v29;
            *(v86 + 16) = v96;
            swift_endAccess();
            v59 = v238;
            v36 = v214;
            v19 = v200;
            v18 = v202;
            v17 = v27;
            v60 = v215;
            goto LABEL_60;
          }

LABEL_117:
          sub_1D5B4B554(0, &qword_1EC880338, &type metadata for FormatDerivedData._$CopyOnWriteStorage, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6B60]);
          v180 = swift_allocObject();
          swift_beginAccess();
          v181 = *(v86 + 32);
          v227 = *(v86 + 16);
          v228 = v181;
          *v229 = *(v86 + 48);
          *&v229[14] = *(v86 + 62);
          memmove((v180 + 16), (v86 + 16), 0x3EuLL);
          sub_1D5EB9AB0(&v227, &v221);

          *v238 = v180;
          v86 = v180;
          goto LABEL_55;
        }
      }

      else if (v235 >> 14)
      {
        v198 = v234;
        v210 = v3;
        v202 = *&v237[16];
        if (v21 != 1)
        {
          v194 = *(&v233 + 1);
          v196 = v232;
          v77 = v235 & 0x3FFF;
          v205 = *(&v234 + 1);
          switch((v235 >> 7) & 0x7E | (v235 >> 3) & 1)
          {
            case 2u:
              v192 = v233;
              v81 = *(&v232 + 1);
              *&v231[10] = *(v5 + 90);
              v175 = v5[5];
              v230 = v5[4];
              *v231 = v175;
              v176 = v5[1];
              v227 = *v5;
              v228 = v176;
              v177 = v5[3];
              *v229 = v5[2];
              *&v229[16] = v177;
              *&v231[24] &= 0xCFFFu;
              sub_1D62B7260(&v227, &v221);
              if ((v16 & 0xF0) == 0x30)
              {
                v227 = __PAIR128__(v81, v196);
                LOWORD(v228) = v192;
                v59 = v238;
                sub_1D62921EC(v238);
                v60 = v215;
                if (v210)
                {
                  return sub_1D60B2A74(&v232);
                }

                v83 = v192;
              }

              else
              {
                v60 = v215;
                v59 = v238;
                v83 = v192;
              }

              break;
            case 3u:
            case 4u:
              v201 = *&v237[8];
              v221 = v232;
              v222 = v233;
              v220 = 5;
              v81 = *(&v232 + 1);
              v142 = v233;
              sub_1D60B2AC8(&v232, &v227);
              sub_1D5E1DA6C(v196, v81, v142, v12, v198, v205, v16);

              v143 = sub_1D703E0C8(&v221, &v220);
              if (v210)
              {
                goto LABEL_121;
              }

              v144 = v143;
              v191 = v142;

              v145 = swift_allocObject();
              v146 = v238;
              *(v145 + 16) = v196;
              *(v145 + 24) = v81;
              *(v145 + 32) = v144;
              *(v145 + 40) = 0;
              v147 = v146;
              sub_1D6C4D24C(v145 | 0x3000000000000000);

              v227 = __PAIR128__(v81, v196);
              *&v228 = v191;
              LOBYTE(v221) = 5;
              sub_1D5E1DA6C(v196, v81, v191, v194, v198, v205, v16);

              v148 = sub_1D703E0C8(&v227, &v221);
              v210 = 0;

              v149 = swift_allocObject();
              *(v149 + 16) = v196;
              *(v149 + 24) = 0;
              *(v149 + 32) = v148;
              *(v149 + 40) = 0;
              v59 = v147;
              sub_1D6C4D24C(v149 | 0x3000000000000000);

              v83 = v191;
              v60 = v215;
              v19 = v201;
              break;
            default:
              *&v231[10] = *(v5 + 90);
              v78 = v5[5];
              v230 = v5[4];
              *v231 = v78;
              v79 = v5[1];
              v227 = *v5;
              v228 = v79;
              v80 = v5[3];
              *v229 = v5[2];
              *&v229[16] = v80;
              *&v231[24] &= 0xCFFFu;
              v81 = *(&v232 + 1);
              v82 = v233;
              sub_1D62B7260(&v227, &v221);
              v83 = v82;
              v60 = v215;
              v59 = v238;
              break;
          }

          *&v227 = v196;
          *(&v227 + 1) = v81;
          *&v228 = v83;
          *(&v228 + 1) = v194;
          *v229 = v198;
          *&v229[8] = v205;
          *&v229[16] = v77;
          sub_1D62099A8(v59);
          v3 = v210;
          if (v210)
          {
            return sub_1D60B2A74(&v232);
          }

          v36 = v214;
          v18 = v202;
          goto LABEL_60;
        }

        v204 = v4;
        v221 = v232;
        v222 = v233;
        v220 = 5;
        v48 = *(&v232 + 1);
        v49 = v233;
        v50 = *(&v234 + 1);
        sub_1D60B2AC8(&v232, &v227);
        sub_1D5E1DA6C(v10, v48, v49, v12, v198, v50, v16);
        v51 = sub_1D703E0C8(&v221, &v220);
        if (v210)
        {
          return sub_1D60B2A74(&v232);
        }

        v52 = v51;
        v200 = v19;
        v27 = v17;
        v53 = swift_allocObject();
        *(v53 + 16) = v10;
        *(v53 + 24) = v48;
        *(v53 + 32) = v52;
        *(v53 + 40) = 0;
        v29 = v53 | 0x3000000000000000;
        v54 = *v238;
        swift_beginAccess();
        v55 = *(v54 + 16);
        v56 = *(v55 + 16);
        if (v56)
        {
          v57 = *(v55 + 8 * v56 + 24);

          v58 = sub_1D60E14A8(v57, v29);

          v36 = v214;
          v35 = v215;
          if (v58)
          {
            goto LABEL_26;
          }
        }

        else
        {
        }

        v94 = v238;
        v95 = swift_isUniquelyReferenced_nonNull_native();
        v86 = *v94;
        v3 = 0;
        if (v95)
        {
          goto LABEL_55;
        }

        goto LABEL_117;
      }

      *&v231[10] = *(v5 + 90);
      v61 = v5[5];
      v230 = v5[4];
      *v231 = v61;
      v62 = v5[1];
      v227 = *v5;
      v228 = v62;
      v63 = v5[3];
      *v229 = v5[2];
      *&v229[16] = v63;
      *&v231[24] &= 0xCFFFu;
      sub_1D62B7260(&v227, &v221);
      v36 = v214;
      v60 = v215;
      v59 = v238;
      goto LABEL_60;
    }

    if (!(v235 >> 14))
    {
      goto LABEL_5;
    }

    if (v235 >> 14 == 1)
    {
      v221 = v232;
      v222 = v233;
      v220 = 5;
      v37 = v3;
      v38 = *(&v232 + 1);
      sub_1D60B2AC8(&v232, &v227);
      sub_1D60B2AC8(&v232, &v227);
      v39 = sub_1D703E0C8(&v221, &v220);
      if (v37)
      {
        return sub_1D60B2A74(&v232);
      }

      v40 = v39;
      v41 = swift_allocObject();
      *(v41 + 16) = v10;
      *(v41 + 24) = v38;
      *(v41 + 32) = v40;
      *(v41 + 40) = 0;
      v42 = v41 | 0x3000000000000000;
      v43 = *v238;
      swift_beginAccess();
      v44 = *(v43 + 16);
      v45 = *(v44 + 16);
      if (v45)
      {
        v46 = *(v44 + 8 * v45 + 24);

        v47 = sub_1D60E14A8(v46, v42);

        if (v47)
        {

          result = sub_1D60B2A74(&v232);
          v3 = 0;
          goto LABEL_5;
        }
      }

      else
      {
      }

      v87 = v238;
      v88 = swift_isUniquelyReferenced_nonNull_native();
      v89 = *v87;
      v3 = 0;
      if ((v88 & 1) == 0)
      {
        sub_1D5B4B554(0, &qword_1EC880338, &type metadata for FormatDerivedData._$CopyOnWriteStorage, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6B60]);
        v178 = swift_allocObject();
        swift_beginAccess();
        v179 = v89[2];
        v227 = v89[1];
        v228 = v179;
        *v229 = v89[3];
        *&v229[14] = *(v89 + 62);
        memmove((v178 + 16), v89 + 1, 0x3EuLL);
        sub_1D5EB9AB0(&v227, &v221);

        *v238 = v178;
        v89 = v178;
      }

      swift_beginAccess();
      v90 = *(v89 + 2);
      v91 = swift_isUniquelyReferenced_nonNull_native();
      *(v89 + 2) = v90;
      if ((v91 & 1) == 0)
      {
        v90 = sub_1D698F848(0, *(v90 + 2) + 1, 1, v90);
        *(v89 + 2) = v90;
      }

      v93 = *(v90 + 2);
      v92 = *(v90 + 3);
      if (v93 >= v92 >> 1)
      {
        v90 = sub_1D698F848((v92 > 1), v93 + 1, 1, v90);
      }

      *(v90 + 2) = v93 + 1;
      *&v90[8 * v93 + 32] = v42;
      *(v89 + 2) = v90;
      swift_endAccess();
      goto LABEL_4;
    }

    v68 = *(&v233 + 1);
    v69 = v235;
    v70 = (v235 >> 7) & 0x7E | (v235 >> 3) & 1;
    if (v70 > 4)
    {
      if (((1 << v70) & 0x3EE0) == 0)
      {
        goto LABEL_3;
      }

LABEL_33:
      v71 = v238;
      if (v70 > 7)
      {
        goto LABEL_4;
      }

      goto LABEL_34;
    }

    if (v70 <= 2)
    {
      if (!v70)
      {
LABEL_3:
        sub_1D5E1DA6C(v232, *(&v232 + 1), v233, *(&v233 + 1), v234, *(&v234 + 1), v235);
LABEL_4:
        result = sub_1D60B2A74(&v232);
        goto LABEL_5;
      }

      if (v70 != 1)
      {
        v212 = v3;
        v112 = *(&v232 + 1);
        v114 = *(&v233 + 1);
        v113 = v233;
        v115 = v234;
        v218 = v235;
        sub_1D5E1DA6C(v232, *(&v232 + 1), v233, *(&v233 + 1), v234, *(&v234 + 1), v235);
        v69 = v218;
        if ((v218 & 0xF0) == 0x30)
        {
          v227 = __PAIR128__(v112, v10);
          v116 = v112;
          LOWORD(v228) = v113;
          v71 = v238;
          sub_1D62921EC(v238);
          v3 = v212;
          if (v212)
          {
            return sub_1D60B2A74(&v232);
          }

          v9 = v116;
          v11 = v113;
          v14 = *(&v115 + 1);
          v13 = v115;
          v114 = v68;
          v69 = v218;
        }

        else
        {
          v71 = v238;
          v9 = v112;
          v3 = v212;
          v11 = v113;
          v14 = *(&v115 + 1);
          v13 = v115;
        }

LABEL_114:
        *&v227 = v10;
        *(&v227 + 1) = v9;
        *&v228 = v11;
        *(&v228 + 1) = v114;
        *v229 = v13;
        *&v229[8] = v14;
        v229[16] = v69 & 0xF7;
        sub_1D6292190(v71);
        result = sub_1D60B2A74(&v232);
        if (v3)
        {
          return result;
        }

        goto LABEL_5;
      }

      goto LABEL_33;
    }

    v219 = v235;
    v117 = v234;
    v221 = v232;
    v222 = v233;
    v220 = 5;
    v118 = v3;
    v119 = *(&v232 + 1);
    v120 = v233;
    sub_1D60B2AC8(&v232, &v227);
    sub_1D60B2AC8(&v232, &v227);

    v121 = sub_1D703E0C8(&v221, &v220);
    if (v118)
    {
      break;
    }

    v122 = v121;
    v189 = v120;

    v123 = swift_allocObject();
    v197 = v10;
    *(v123 + 16) = v10;
    *(v123 + 24) = v119;
    v187 = v119;
    *(v123 + 32) = v122;
    *(v123 + 40) = 0;
    v124 = v123 | 0x3000000000000000;
    v125 = *v238;
    swift_beginAccess();
    v126 = *(v125 + 16);
    v127 = *(v126 + 16);
    if (v127 && (v128 = *(v126 + 8 * v127 + 24), , v129 = sub_1D60E14A8(v128, v124), , (v129 & 1) != 0))
    {

      v71 = v238;
      v9 = v187;
      v3 = 0;
    }

    else
    {
      v216 = v124;
      v150 = v238;
      v151 = swift_isUniquelyReferenced_nonNull_native();
      v152 = *v150;
      v3 = 0;
      if ((v151 & 1) == 0)
      {
        sub_1D5B4B554(0, &qword_1EC880338, &type metadata for FormatDerivedData._$CopyOnWriteStorage, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6B60]);
        v182 = swift_allocObject();
        swift_beginAccess();
        v183 = v152[2];
        v227 = v152[1];
        v228 = v183;
        *v229 = v152[3];
        *&v229[14] = *(v152 + 62);
        memmove((v182 + 16), v152 + 1, 0x3EuLL);
        sub_1D5EB9AB0(&v227, &v221);

        *v150 = v182;
        v152 = v182;
      }

      swift_beginAccess();
      v153 = *(v152 + 2);
      v154 = swift_isUniquelyReferenced_nonNull_native();
      *(v152 + 2) = v153;
      if (v154)
      {
        v155 = v152;
      }

      else
      {
        v153 = sub_1D698F848(0, *(v153 + 2) + 1, 1, v153);
        v155 = v152;
        *(v152 + 2) = v153;
      }

      v157 = *(v153 + 2);
      v156 = *(v153 + 3);
      if (v157 >= v156 >> 1)
      {
        v153 = sub_1D698F848((v156 > 1), v157 + 1, 1, v153);
      }

      *(v153 + 2) = v157 + 1;
      *&v153[8 * v157 + 32] = v216;
      *(v155 + 2) = v153;
      swift_endAccess();
      v71 = v238;
      v9 = v187;
    }

    v11 = v189;
    v14 = *(&v117 + 1);
    v10 = v197;
    v13 = v117;
    v69 = v219;
LABEL_34:
    if (v70 > 4)
    {
      goto LABEL_4;
    }

    if ((v70 - 3) >= 2)
    {
      if (v70 == 1)
      {
        goto LABEL_4;
      }

      v114 = v68;
      goto LABEL_114;
    }

    *&v221 = v10;
    *(&v221 + 1) = v9;
    v222 = v11;
    v220 = 5;
    v72 = v3;
    v73 = v9;
    sub_1D60B2AC8(&v232, &v227);

    v74 = v72;
    v75 = sub_1D703E0C8(&v221, &v220);

    if (v74)
    {

      return sub_1D60B2A74(&v232);
    }

    v76 = swift_allocObject();
    *(v76 + 16) = v10;
    *(v76 + 24) = v73;
    *(v76 + 32) = v75;
    *(v76 + 40) = 0;
    sub_1D6C4D24C(v76 | 0x3000000000000000);

    result = sub_1D60B2A74(&v232);
    v3 = 0;
LABEL_5:
    v5 += 7;
    if (!--v4)
    {
      return result;
    }
  }

LABEL_125:

  return sub_1D60B2A74(&v232);
}

uint64_t sub_1D6276054(uint64_t result, uint64_t a2)
{
  v3 = v2;
  v50 = *(a2 + 16);
  if (!v50)
  {
    return result;
  }

  v4 = result;
  v5 = 0;
  v51 = a2 + 32;
  while (2)
  {
    v6 = v51 + 40 * v5;
    v8 = *v6;
    v7 = *(v6 + 8);
    v10 = *(v6 + 16);
    v9 = *(v6 + 24);
    ++v5;
    v11 = *(v6 + 32);
    v53 = v10;
    v52 = v7;
    switch(v11)
    {
      case 1u:
        v24 = *(v8 + 16);

        if (!v24)
        {
          goto LABEL_80;
        }

        v25 = (v8 + 40);
        while (1)
        {
          if ((*v25 & 1) == 0)
          {
            v26 = *(v25 - 1);
            swift_retain_n();
            sub_1D6012F58();
            sub_1D62B72BC(v26, 0);

            if (v3)
            {
              break;
            }
          }

          v25 += 16;
          if (!--v24)
          {
            goto LABEL_80;
          }
        }

        v45 = v8;
        v46 = v52;
        v47 = v53;
        v48 = v9;
        v49 = 1;
        return sub_1D5ECEF00(v45, v46, v47, v48, v49);
      case 2u:
        v27 = *(v8 + 16);

        if (!v27)
        {
          goto LABEL_80;
        }

        v28 = (v8 + 40);
        while (2)
        {
          if (*v28)
          {
            goto LABEL_42;
          }

          v29 = *(v28 - 1);
          swift_retain_n();
          sub_1D6012F58();
          if (!v3)
          {
            sub_1D62B72BC(v29, 0);

LABEL_42:
            v28 += 16;
            if (!--v27)
            {
              goto LABEL_80;
            }

            continue;
          }

          break;
        }

        sub_1D62B72BC(v29, 0);

        v45 = v8;
        v46 = v52;
        v47 = v53;
        v48 = v9;
        v49 = 2;
        return sub_1D5ECEF00(v45, v46, v47, v48, v49);
      case 3u:
        v15 = *(v8 + 16);

        if (!v15)
        {
          goto LABEL_80;
        }

        v16 = (v8 + 40);
        while (2)
        {
          if (*v16)
          {
            goto LABEL_16;
          }

          v17 = *(v16 - 1);
          swift_retain_n();
          sub_1D6012F58();
          if (!v3)
          {
            sub_1D62B72BC(v17, 0);

LABEL_16:
            v16 += 16;
            if (!--v15)
            {
              goto LABEL_80;
            }

            continue;
          }

          break;
        }

        sub_1D62B72BC(v17, 0);

        v45 = v8;
        v46 = v52;
        v47 = v53;
        v48 = v9;
        v49 = 3;
        return sub_1D5ECEF00(v45, v46, v47, v48, v49);
      case 4u:
        v33 = *(v8 + 16);

        if (!v33)
        {
          goto LABEL_80;
        }

        v34 = (v8 + 40);
        while (2)
        {
          if (*v34)
          {
            goto LABEL_55;
          }

          v35 = *(v34 - 1);
          swift_retain_n();
          sub_1D6012F58();
          if (!v3)
          {
            sub_1D62B72BC(v35, 0);

LABEL_55:
            v34 += 16;
            if (!--v33)
            {
              goto LABEL_80;
            }

            continue;
          }

          break;
        }

        sub_1D62B72BC(v35, 0);

        v45 = v8;
        v46 = v52;
        v47 = v53;
        v48 = v9;
        v49 = 4;
        return sub_1D5ECEF00(v45, v46, v47, v48, v49);
      case 5u:
        v36 = *(v8 + 16);

        if (!v36)
        {
          goto LABEL_80;
        }

        v37 = (v8 + 40);
        while (2)
        {
          if (*v37)
          {
            goto LABEL_62;
          }

          v38 = *(v37 - 1);
          swift_retain_n();
          sub_1D6012F58();
          if (!v3)
          {
            sub_1D62B72BC(v38, 0);

LABEL_62:
            v37 += 16;
            if (!--v36)
            {
              goto LABEL_80;
            }

            continue;
          }

          break;
        }

        sub_1D62B72BC(v38, 0);

        v45 = v8;
        v46 = v52;
        v47 = v53;
        v48 = v9;
        v49 = 5;
        return sub_1D5ECEF00(v45, v46, v47, v48, v49);
      case 6u:
        v30 = *(v8 + 16);

        if (!v30)
        {
          goto LABEL_80;
        }

        v31 = (v8 + 40);
        while (2)
        {
          if (*v31)
          {
            goto LABEL_49;
          }

          v32 = *(v31 - 1);
          swift_retain_n();
          sub_1D6012F58();
          if (!v3)
          {
            sub_1D62B72BC(v32, 0);

LABEL_49:
            v31 += 16;
            if (!--v30)
            {
              goto LABEL_80;
            }

            continue;
          }

          break;
        }

        sub_1D62B72BC(v32, 0);

        v45 = v8;
        v46 = v52;
        v47 = v53;
        v48 = v9;
        v49 = 6;
        return sub_1D5ECEF00(v45, v46, v47, v48, v49);
      case 7u:
        v42 = *(v8 + 16);

        if (!v42)
        {
          goto LABEL_80;
        }

        v43 = (v8 + 40);
        while (2)
        {
          if (*v43)
          {
            goto LABEL_76;
          }

          v44 = *(v43 - 1);
          swift_retain_n();
          sub_1D6012F58();
          if (!v3)
          {
            sub_1D62B72BC(v44, 0);

LABEL_76:
            v43 += 16;
            if (!--v42)
            {
              goto LABEL_80;
            }

            continue;
          }

          break;
        }

        sub_1D62B72BC(v44, 0);

        v45 = v8;
        v46 = v52;
        v47 = v53;
        v48 = v9;
        v49 = 7;
        return sub_1D5ECEF00(v45, v46, v47, v48, v49);
      case 8u:
        v21 = *(v8 + 16);

        if (!v21)
        {
          goto LABEL_80;
        }

        v22 = (v8 + 40);
        while (2)
        {
          if (*v22)
          {
            goto LABEL_29;
          }

          v23 = *(v22 - 1);
          swift_retain_n();
          sub_1D6012F58();
          if (!v3)
          {
            sub_1D62B72BC(v23, 0);

LABEL_29:
            v22 += 16;
            if (!--v21)
            {
              goto LABEL_80;
            }

            continue;
          }

          break;
        }

        sub_1D62B72BC(v23, 0);

        v45 = v8;
        v46 = v52;
        v47 = v53;
        v48 = v9;
        v49 = 8;
        return sub_1D5ECEF00(v45, v46, v47, v48, v49);
      case 9u:
        v39 = *(v8 + 16);

        if (!v39)
        {
          goto LABEL_80;
        }

        v40 = (v8 + 40);
        while (2)
        {
          if (*v40)
          {
            goto LABEL_69;
          }

          v41 = *(v40 - 1);
          swift_retain_n();
          sub_1D6012F58();
          if (!v3)
          {
            sub_1D62B72BC(v41, 0);

LABEL_69:
            v40 += 16;
            if (!--v39)
            {
              goto LABEL_80;
            }

            continue;
          }

          break;
        }

        sub_1D62B72BC(v41, 0);

        v45 = v8;
        v46 = v52;
        v47 = v53;
        v48 = v9;
        v49 = 9;
        return sub_1D5ECEF00(v45, v46, v47, v48, v49);
      case 0xAu:
        v12 = *(v8 + 16);

        if (!v12)
        {
          goto LABEL_80;
        }

        v13 = (v8 + 40);
        while (2)
        {
          if (*v13)
          {
            goto LABEL_9;
          }

          v14 = *(v13 - 1);
          swift_retain_n();
          sub_1D6012F58();
          if (!v3)
          {
            sub_1D62B72BC(v14, 0);

LABEL_9:
            v13 += 16;
            if (!--v12)
            {
              goto LABEL_80;
            }

            continue;
          }

          break;
        }

        sub_1D62B72BC(v14, 0);

        v45 = v8;
        v46 = v52;
        v47 = v53;
        v48 = v9;
        v49 = 10;
        return sub_1D5ECEF00(v45, v46, v47, v48, v49);
      case 0xBu:
        v18 = *(v8 + 16);

        if (!v18)
        {
          goto LABEL_80;
        }

        v19 = (v8 + 40);
        while (2)
        {
          if (*v19)
          {
            goto LABEL_23;
          }

          v20 = *(v19 - 1);
          swift_retain_n();
          sub_1D6012F58();
          if (!v3)
          {
            sub_1D62B72BC(v20, 0);

LABEL_23:
            v19 += 16;
            if (!--v18)
            {
              goto LABEL_80;
            }

            continue;
          }

          break;
        }

        sub_1D62B72BC(v20, 0);

        v45 = v8;
        v46 = v52;
        v47 = v53;
        v48 = v9;
        v49 = 11;
        return sub_1D5ECEF00(v45, v46, v47, v48, v49);
      case 0xCu:
        goto LABEL_81;
      default:

        sub_1D6273544(v4, v8);
        if (!v3)
        {
          sub_1D6273544(v4, v7);
          sub_1D6273544(v4, v10);
          sub_1D6273544(v4, v9);
          v3 = 0;
LABEL_80:
          result = sub_1D5ECEF00(v8, v52, v53, v9, v11);
LABEL_81:
          if (v5 == v50)
          {
            return result;
          }

          continue;
        }

        v45 = v8;
        v46 = v7;
        v47 = v10;
        v48 = v9;
        v49 = 0;
        return sub_1D5ECEF00(v45, v46, v47, v48, v49);
    }
  }
}

uint64_t sub_1D627683C(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = result;
    v5 = a2 + 32;
    while (1)
    {
      v5 += 8;

      sub_1D62895DC(v4);
      if (v2)
      {
        break;
      }

      if (!--v3)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1D62768C8(uint64_t result, uint64_t a2)
{
  v10 = result;
  v3 = *(a2 + 16);
  if (v3)
  {
    for (i = (a2 + 48); ; i += 3)
    {
      v6 = *(i - 1);
      v5 = *i;
      *&v11 = *(i - 2);
      *(&v11 + 1) = v6;
      swift_bridgeObjectRetain_n();

      sub_1D6EE4610(v10);
      if (v2)
      {
        break;
      }

      v14 = v5;
      sub_1D5D0ACAC(0, &qword_1EDF1B018, &type metadata for FormatSourceItemTipTrait, MEMORY[0x1E69E62F8]);
      sub_1D5B49474(0, &qword_1EC8854D0);

      if (swift_dynamicCast())
      {
        v9 = v3;
        v7 = *(&v12 + 1);
        v8 = v13;
        __swift_project_boxed_opaque_existential_1(&v11, *(&v12 + 1));
        (*(v8 + 8))(v10, v7, v8);

        result = __swift_destroy_boxed_opaque_existential_1(&v11);
        v3 = v9;
      }

      else
      {

        v13 = 0;
        v11 = 0u;
        v12 = 0u;
        result = sub_1D5BFB774(&v11, &qword_1EC8854D8, &qword_1EC8854D0);
      }

      if (!--v3)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1D6276AB0(uint64_t result, uint64_t a2)
{
  v36 = *(a2 + 16);
  if (!v36)
  {
    return result;
  }

  v3 = result;
  v4 = 0;
  v37 = a2 + 32;
  while (1)
  {
    v5 = v37 + 56 * v4;
    v7 = *v5;
    v6 = *(v5 + 8);
    v8 = *(v5 + 24);
    v39 = *(v5 + 16);
    v9 = *(v5 + 32);
    v10 = *(v5 + 40);
    v11 = *(v5 + 48);
    if (v11 <= 2)
    {
      break;
    }

    if (v11 == 3)
    {
      sub_1D62B7654(v7, v6, v39, v8, *(v5 + 32), *(v5 + 40), 3u);

      sub_1D6273544(v3, v7);
      if (v2)
      {

        v28 = v7;
        v29 = v6;
        v30 = v39;
        v31 = v8;
        v32 = v9;
        v33 = v10;
        v34 = 3;
        return sub_1D62B772C(v28, v29, v30, v31, v32, v33, v34);
      }

      sub_1D6273544(v3, v6);

      sub_1D6273544(v3, v39);
      sub_1D6273544(v3, v8);
      v20 = v8;
      v13 = v9;
      v16 = 0;
      v38 = v20;
LABEL_26:

LABEL_42:
      result = sub_1D62B772C(v7, v6, v39, v38, v13, v10, v11);
      v2 = v16;
      goto LABEL_43;
    }

    if (v11 == 4)
    {
      sub_1D62B7654(v7, v6, v39, v8, *(v5 + 32), *(v5 + 40), 4u);

      sub_1D6273544(v3, v7);
      if (v2)
      {

        v28 = v7;
        v29 = v6;
        v30 = v39;
        v31 = v8;
        v32 = v9;
        v33 = v10;
        v34 = 4;
        return sub_1D62B772C(v28, v29, v30, v31, v32, v33, v34);
      }

      sub_1D6273544(v3, v6);

      sub_1D6273544(v3, v39);
      sub_1D6273544(v3, v8);
      v38 = v8;
      v13 = v9;
      sub_1D6273544(v3, v9);
      v16 = 0;
      LOBYTE(v11) = 4;
      goto LABEL_42;
    }

LABEL_43:
    if (++v4 == v36)
    {
      return result;
    }
  }

  v38 = *(v5 + 24);
  if (!*(v5 + 48))
  {
    v17 = *(v7 + 16);
    v13 = *(v5 + 32);
    v35 = *(v5 + 40);
    sub_1D62B7654(v7, v6, v39, *(v5 + 24), v13, v10, 0);
    if (v17)
    {
      v18 = (v7 + 40);
      while (1)
      {
        if ((*v18 & 1) == 0)
        {
          v19 = *(v18 - 1);
          swift_retain_n();
          sub_1D6012F58();
          sub_1D62B72BC(v19, 0);

          if (v2)
          {
            break;
          }
        }

        v18 += 16;
        if (!--v17)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
LABEL_27:
      v22 = *(v6 + 16);
      if (!v22)
      {
LABEL_33:
        v16 = v2;
        LOBYTE(v11) = 0;
LABEL_41:
        v10 = v35;
        goto LABEL_42;
      }

      v23 = (v6 + 40);
      while (1)
      {
        if ((*v23 & 1) == 0)
        {
          v24 = *(v23 - 1);
          swift_retain_n();
          sub_1D6012F58();
          sub_1D62B72BC(v24, 0);

          if (v2)
          {
            break;
          }
        }

        v23 += 16;
        if (!--v22)
        {
          goto LABEL_33;
        }
      }
    }

    v28 = v7;
    v29 = v6;
    v31 = v38;
    v30 = v39;
    v32 = v13;
    v33 = v35;
    v34 = 0;
    return sub_1D62B772C(v28, v29, v30, v31, v32, v33, v34);
  }

  if (v11 != 1)
  {
    sub_1D62B7654(v7, v6, v39, v8, v9, v10, 2u);

    sub_1D6273544(v3, v7);
    if (v2)
    {

      v28 = v7;
      v29 = v6;
      v30 = v39;
      v31 = v8;
      v32 = v9;
      v33 = v10;
      v34 = 2;
      return sub_1D62B772C(v28, v29, v30, v31, v32, v33, v34);
    }

    sub_1D6273544(v3, v6);

    sub_1D6273544(v3, v39);
    sub_1D6273544(v3, v8);

    sub_1D6273544(v3, v9);
    sub_1D6273544(v3, v10);
    v21 = v9;
    v16 = 0;
    v13 = v21;
    goto LABEL_26;
  }

  v12 = *(v7 + 16);
  v13 = *(v5 + 32);
  v35 = *(v5 + 40);
  sub_1D62B7654(v7, v6, v39, *(v5 + 24), v13, v10, 1u);
  if (v12)
  {
    v14 = (v7 + 40);
    do
    {
      if ((*v14 & 1) == 0)
      {
        v15 = *(v14 - 1);
        swift_retain_n();
        sub_1D6012F58();
        if (v2)
        {
          sub_1D62B72BC(v15, 0);

          return sub_1D62B772C(v7, v6, v39, v38, v13, v35, 1u);
        }

        sub_1D62B72BC(v15, 0);
      }

      v14 += 16;
      --v12;
    }

    while (v12);
  }

  v25 = *(v6 + 16);
  if (!v25)
  {
LABEL_40:
    v16 = v2;
    LOBYTE(v11) = 1;
    goto LABEL_41;
  }

  v26 = (v6 + 40);
  while (1)
  {
    if ((*v26 & 1) == 0)
    {
      v27 = *(v26 - 1);
      swift_retain_n();
      sub_1D6012F58();
      sub_1D62B72BC(v27, 0);

      if (v2)
      {
        break;
      }
    }

    v26 += 16;
    if (!--v25)
    {
      goto LABEL_40;
    }
  }

  v28 = v7;
  v29 = v6;
  v31 = v38;
  v30 = v39;
  v32 = v13;
  v33 = v35;
  v34 = 1;
  return sub_1D62B772C(v28, v29, v30, v31, v32, v33, v34);
}

uint64_t sub_1D6277298(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v36 = result;
    v4 = (a2 + 56);
    do
    {
      v5 = *v4;
      v6 = *v4 >> 61;
      if (v6 <= 2)
      {
        result = *(v4 - 3);
        v7 = *(v4 - 2);
        v8 = *(v4 - 8);
        if (v6)
        {
          v40 = *(v4 - 8);
          if (v6 == 1)
          {
            v37 = *(v4 - 2);
            v39 = v2;
            v9 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v10 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
            v11 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
            v12 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
            v13 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
            v14 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x48);
            v34 = *(v4 - 3);
            v31 = v10;
            if (v13 == 255)
            {
              sub_1D5D03180(result, v7, v8);

              sub_1D62B7ECC(v9, v10, v11);
              sub_1D62B7EE4(v12, 255);

              v15 = v12;
            }

            else if (v13)
            {
              v15 = v12;
              v30 = *(v12 + 24);
              sub_1D5D03180(result, v7, v8);

              sub_1D62B7ECC(v9, v31, v11);
              sub_1D62B7EE4(v12, v13);

              sub_1D62B7EE4(v12, v13);
              sub_1D6277824(v36, v30);
              if (v2)
              {
                sub_1D62B5FD4(v12, v13);
                sub_1D62B5FEC(v9, v31, v11);
                sub_1D62B5FD4(v12, v13);

                sub_1D5D07BA8(v34, v37, v40);
              }

              sub_1D628E4DC(v36, *(v12 + 32));
              v39 = 0;
              sub_1D62B5FD4(v12, v13);
            }

            else
            {
              sub_1D5D03180(result, v7, v8);

              sub_1D62B7ECC(v9, v10, v11);
              v15 = v12;
              sub_1D62B7EE4(v12, v13);
            }

            v2 = v39;
            sub_1D62779BC(v36, v14);
            if (v39)
            {
              sub_1D62B5FEC(v9, v31, v11);
              sub_1D62B5FD4(v15, v13);

              sub_1D5D07BA8(v34, v37, v40);
            }

            sub_1D62B5FEC(v9, v31, v11);
            sub_1D62B5FD4(v15, v13);

            sub_1D5D07BA8(v34, v37, v40);
          }

          else
          {
            v26 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v27 = *(v26 + 24);
            v28 = *(v4 - 3);
            v29 = *(v4 - 2);
            sub_1D5D03180(result, v7, v8);

            sub_1D6277298(v36, v27);
            if (v2)
            {

              sub_1D5D07BA8(v28, v29, v40);
            }

            sub_1D628E374(v36, *(v26 + 32));

            sub_1D5D07BA8(v28, v29, v40);
          }
        }

        else if (*(v5 + 48))
        {
          v16 = *(v5 + 16);
          v17 = *(v5 + 24);
          v18 = *(v5 + 32);
          v19 = *(v5 + 40);
          v35 = *(v4 - 3);
          v38 = v19[3];
          v20 = *(v4 - 2);
          v21 = *(v4 - 8);
          sub_1D5D03180(result, v7, v8);

          v32 = v17;
          v33 = v18;
          sub_1D5F26358(v16, v17, v18);
          sub_1D62B5FC8(v19, 1);

          sub_1D6277824(v36, v38);
          if (v2)
          {
            sub_1D5F26348(v16, v17, v18);
            sub_1D5FC4E9C(v19, 1);

            sub_1D5D07BA8(v35, v20, v21);
          }

          v44 = v19[4];
          v22 = v44;
          sub_1D62B7E2C();
          sub_1D5B49474(0, &qword_1EC8854D0);
          v23 = v22;
          if (swift_dynamicCast())
          {
            v24 = *(&v42 + 1);
            v25 = v43;
            __swift_project_boxed_opaque_existential_1(&v41, *(&v42 + 1));
            v2 = 0;
            (*(v25 + 8))(v36, v24, v25);
            __swift_destroy_boxed_opaque_existential_1(&v41);
            sub_1D5F26348(v16, v32, v33);
            sub_1D5FC4E9C(v19, 1);

            sub_1D5D07BA8(v35, v20, v21);
          }

          else
          {
            v43 = 0;
            v41 = 0u;
            v42 = 0u;
            sub_1D5BFB774(&v41, &qword_1EC8854D8, &qword_1EC8854D0);
            sub_1D5F26348(v16, v32, v18);
            sub_1D5FC4E9C(v19, 1);

            sub_1D5D07BA8(v35, v20, v21);

            v2 = 0;
          }
        }
      }

      v4 += 4;
      --v3;
    }

    while (v3);
  }

  return result;
}