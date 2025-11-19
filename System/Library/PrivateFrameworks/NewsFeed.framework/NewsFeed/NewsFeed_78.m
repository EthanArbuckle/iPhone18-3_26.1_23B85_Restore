uint64_t FormatFlexBoxNodeItemFlex.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  if (*v2 >= 3)
  {
    return sub_1D620B270(result, a2, *v2);
  }

  return result;
}

uint64_t FormatFont.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v4 = *v2;
  v5 = *v2 >> 61;
  if (v5 > 2)
  {
    v7 = v4 & 0x1FFFFFFFFFFFFFFFLL;
    if (v5 == 3)
    {
      v8 = *(v7 + 24);
      v9 = *(v7 + 32);
      v10 = *(v7 + 40);
      v13[0] = *(v7 + 16);
      v13[1] = v8;
      v13[2] = v9;
      v14 = v10;
      sub_1D5F58038(v13[0], v8, v9, v10);
      sub_1D607B228(a2);
      return sub_1D5F57FEC(v13[0], v8, v9, v10);
    }

    else
    {
      v11 = *(v7 + 32);
      v15[0] = *(v7 + 16);
      v15[1] = v11;
      v16 = *(v7 + 48);
      v12 = result;
      sub_1D62B50EC(v15, v13, sub_1D62B5154);
      sub_1D6250408(v12, a2);
      return sub_1D62B51D0(v15, sub_1D62B5154);
    }
  }

  else if (v5 >= 2)
  {
    v13[0] = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v6 = result;
    swift_retain_n();

    FormatURL.bind(binder:context:)(v6, a2);
  }

  return result;
}

uint64_t FormatRemoteFont.bind(binder:context:)(uint64_t a1, uint64_t a2)
{

  FormatURL.bind(binder:context:)(a1, a2);
}

void FormatFontLineSizing.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];
  if (!*v2 || (FormatTextNodeStyle.bind(binder:context:)(a1, a2), !v3))
  {
    sub_1D62B41FC(a2, v5);
  }
}

uint64_t FormatTextNodeStyle.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v6 = *(v2 + 48);

  sub_1D623CDD8(a1, a2, v6);
  if (v3)
  {
  }

  if ((~*(v2 + 56) & 0xF000000000000007) != 0)
  {
    *&v49 = *(v2 + 56);

    FormatFont.bind(binder:context:)(a1, a2);
  }

  v8 = *(v2 + 144);
  v45 = *(v2 + 128);
  v46 = v8;
  v9 = *(v2 + 176);
  v47 = *(v2 + 160);
  v48 = v9;
  v10 = *(v2 + 80);
  v41 = *(v2 + 64);
  v42 = v10;
  v11 = *(v2 + 112);
  v43 = *(v2 + 96);
  v44 = v11;
  v55 = v47;
  v56 = v9;
  v53 = v45;
  v54 = v8;
  v51 = v43;
  v52 = v11;
  v49 = v41;
  v50 = v10;
  result = sub_1D5CFD0B8(&v49);
  if (result != 1)
  {
    v29 = v53;
    v30 = v54;
    v31 = v55;
    v32 = v56;
    v25 = v49;
    v26 = v50;
    v27 = v51;
    v28 = v52;
    v35 = v43;
    v36 = v44;
    v33 = v41;
    v34 = v42;
    v39 = v47;
    v40 = v48;
    v37 = v45;
    v38 = v46;
    sub_1D5CFD190(&v33, v24);
    FormatFill.bind(binder:context:)(a1, a2);
    v24[4] = v29;
    v24[5] = v30;
    v24[6] = v31;
    v24[7] = v32;
    v24[0] = v25;
    v24[1] = v26;
    v24[2] = v27;
    v24[3] = v28;
    result = sub_1D5CFD368(v24);
  }

  v12 = *(v2 + 192);
  if (v12)
  {
    result = sub_1D620E744(a1, a2, v12);
  }

  v13 = *(v2 + 248);
  v35 = *(v2 + 232);
  v36 = v13;
  v37 = *(v2 + 264);
  LOBYTE(v38) = *(v2 + 280);
  v14 = v38;
  v15 = *(v2 + 216);
  v33 = *(v2 + 200);
  v34 = v15;
  if (v38 != 254)
  {
    v57 = v2;
    *&v25 = v35;
    swift_retain_n();
    FormatColor.bind(binder:context:)(a1, a2);

    if (v14 <= 2)
    {
      v2 = v57;
      if (!v14)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v2 = v57;
      if (v14 > 4)
      {
        if (v14 != 5)
        {
          goto LABEL_34;
        }

        v19 = a1;
        v20 = a2;
      }

      else
      {
        v19 = a1;
        v20 = a2;
        if (v14 != 3)
        {
          goto LABEL_33;
        }
      }

      sub_1D625E06C(v19, v20);
    }

    v19 = a1;
    v20 = a2;
LABEL_33:
    sub_1D625E06C(v19, v20);
LABEL_34:
    result = sub_1D5D0ABCC(&v33, &qword_1EDF33718, &type metadata for FormatShadow);
    v16 = *(v2 + 512);
    if (!v16)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v16 = *(v2 + 512);
  if (v16)
  {
LABEL_12:
    result = sub_1D620B270(a1, a2, v16);
  }

LABEL_13:
  v17 = *(v2 + 520);
  if (v17 != 9)
  {
    v18 = *(v2 + 528);
    if ((~v18 & 0xF000000000000007) != 0)
    {
      *&v25 = *(v2 + 528);
      sub_1D62B5D18(v17, v18);
      sub_1D5CFCFAC(v18);
      FormatColor.bind(binder:context:)(a1, a2);
      sub_1D62B5D00(v17, v18);
    }

    else
    {
      result = sub_1D62B5D00(*(v2 + 520), *(v2 + 528));
    }
  }

  v21 = *(v2 + 536);
  if (v21 != 9)
  {
    v22 = *(v2 + 544);
    if ((~v22 & 0xF000000000000007) != 0)
    {
      *&v25 = *(v2 + 544);
      sub_1D62B5D18(v21, v22);
      sub_1D5CFCFAC(v22);
      FormatColor.bind(binder:context:)(a1, a2);
      sub_1D62B5D00(v21, v22);
    }

    else
    {
      result = sub_1D62B5D00(*(v2 + 536), *(v2 + 544));
    }
  }

  v23 = *(v2 + 560);
  if (v23)
  {
    return sub_1D620B270(a1, a2, v23);
  }

  return result;
}

void sub_1D6254458(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];
  if (!*v2 || (FormatTextNodeStyle.bind(binder:context:)(a1, a2), !v3))
  {
    sub_1D62B41FC(a2, v5);
  }
}

uint64_t FormatFrameExpressionLogic.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  if (*(v2 + 24) >> 6 <= 1u)
  {
    return sub_1D620B270(a1, a2, v4);
  }

  result = sub_1D620B270(a1, a2, v4);
  if (!v3)
  {
    return FormatTextNodeStyle.bind(binder:context:)(a1, a2);
  }

  return result;
}

uint64_t sub_1D625450C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  if (v9 >> 6 > 1)
  {

    sub_1D620B270(a1, a2, v7);
    if (!v3)
    {
      FormatTextNodeStyle.bind(binder:context:)(a1, a2);
    }
  }

  else
  {

    sub_1D620B270(a1, a2, v7);
  }

  return sub_1D6057D74(v7, v6, v8, v9);
}

uint64_t FormatFrameExpressionLogicTextLines.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  result = sub_1D620B270(a1, a2, *v2);
  if (!v3)
  {
    return FormatTextNodeStyle.bind(binder:context:)(a1, a2);
  }

  return result;
}

uint64_t sub_1D6254634(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  if (*(v2 + 24) >> 6 <= 1u)
  {
    return sub_1D620B270(a1, a2, v4);
  }

  result = sub_1D620B270(a1, a2, v4);
  if (!v3)
  {
    return FormatTextNodeStyle.bind(binder:context:)(a1, a2);
  }

  return result;
}

uint64_t sub_1D6254698(uint64_t a1, uint64_t a2)
{
  result = sub_1D620B270(a1, a2, *v2);
  if (!v3)
  {
    return FormatTextNodeStyle.bind(binder:context:)(a1, a2);
  }

  return result;
}

uint64_t FormatFrameNode.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v4 = v2;
  v10 = *(v2 + 32);
  sub_1D5C82CD8(v10);
  FormatSize.bind(binder:context:)(a1, a2);
  result = sub_1D5C92A8C(v10);
  if (!v3)
  {
    swift_beginAccess();
    v8 = *(v2 + 40);

    sub_1D620EA64(a1, a2, v8);

    if (*(v4 + 48))
    {
      v9 = *(v4 + 80);

      sub_1D5DEA234(v9);

      FormatFlexBoxNodeItem.bind(binder:context:)(a1, a2);

      sub_1D5CBF568(v9);
    }
  }

  return result;
}

uint64_t FormatGeometryNode.bindChildren(binder:context:)(unint64_t a1, uint64_t a2)
{
  v4 = v3;
  if (!v2[8] || (v7 = v2[12], , , , , sub_1D5DEA234(v7), , FormatFlexBoxNodeItem.bind(binder:context:)(a1, a2), , , , , sub_1D5CBF568(v7), result = , !v4))
  {
    swift_beginAccess();
    v9 = v2[7];

    sub_1D6215F90(a1, a2, v9);
  }

  return result;
}

void FormatGlassEffect.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v9 = *(v2 + 32);
  v8 = *(v2 + 40);
  v11 = *(v2 + 48);
  v10 = *(v2 + 56);
  v12 = *(v2 + 64);
  v24 = *(v2 + 88);
  v25 = *(v2 + 80);
  v21 = *(v2 + 104);
  v22 = *(v2 + 96);
  v23 = *(v2 + 112);
  v18 = *(v2 + 128);
  v19 = *(v2 + 120);
  v20 = *(v2 + 136);
  v16 = *(v2 + 152);
  v17 = *(v2 + 144);
  v13 = *(v2 + 160);
  if (!v5 || (sub_1D62B41FC(a2, v5), !v3))
  {
    if (v12 >> 11 <= 0x1E)
    {
      v26 = v10;
      sub_1D5E1DA6C(v6, v7, v9, v8, v11, v10, v12);
      v14 = a1;
      FormatString.bind(binder:context:)(a1, a2);
      sub_1D5E1DE98(v6, v7, v9, v8, v11, v26, v12);
      if (v3)
      {
        return;
      }
    }

    else
    {
      v14 = a1;
    }

    if ((~v25 & 0xF000000000000007) == 0 || (, FormatColor.bind(binder:context:)(v14, a2), , !v3))
    {
      if (!v24 || (sub_1D620B270(v14, a2, v24), !v3))
      {
        v15 = v3;
        if (v23 != 255)
        {
          sub_1D6189668(v22, v21, v23);
          sub_1D60ECF10(a2);
          sub_1D5D2F2C8(v22, v21, v23 & 1);
          if (v3)
          {
            return;
          }

          v15 = 0;
        }

        if (v20 == 255 || (sub_1D6189668(v19, v18, v20), sub_1D60ECF10(a2), sub_1D5D2F2C8(v19, v18, v20 & 1), !v15))
        {
          if (v13 != 255)
          {
            sub_1D6189668(v17, v16, v13);
            sub_1D60ECF10(a2);
            sub_1D5D2F2C8(v17, v16, v13 & 1);
          }
        }
      }
    }
  }
}

uint64_t sub_1D6254C48(uint64_t a1, uint64_t a2)
{
  v7 = v2[6];
  v6 = v2[7];
  result = sub_1D6212DD8(a1, a2, *v2);
  if (!v3)
  {
    if (v7)
    {

      sub_1D620B270(a1, a2, v7);
      sub_1D620B270(a1, a2, v6);
      return sub_1D5CDE22C(v7);
    }
  }

  return result;
}

uint64_t FormatGroup.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v7 = v2[9];
  v6 = v2[10];
  v8 = v2[11];
  v10 = v2[14];
  v9 = v2[15];
  if (v7 < 3 || (v11 = v2[8], sub_1D62B5D30(v11, v7), sub_1D6249614(a1, a2, v11 & 1, v7), result = sub_1D5C5D428(v11, v7), !v3))
  {

    sub_1D62160B4(a1, a2, v8);

    if (!v3)
    {

      sub_1D6213004(a1, a2, v10);

      sub_1D62212CC(a1, a2, v9);

      sub_1D6215F90(a1, a2, v6);
    }
  }

  return result;
}

uint64_t FormatGroupColumnSystem.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 8);
  if (v3 >= 2)
  {
    return sub_1D6249614(result, a2, *v2 & 1, v3);
  }

  return result;
}

uint64_t sub_1D6254E90(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 8);
  if (v3 < 0 && ((2 * *(v2 + 9)) | ((v3 & 0x20) != 0)) == 8)
  {
    return sub_1D6240020(result, a2, *v2, v3 & 0x3F);
  }

  return result;
}

uint64_t sub_1D6254ED8(uint64_t result, uint64_t a2)
{
  if (2 * (*(v2 + 9) & 0x7Fu) >= 6)
  {
    v3 = *(v2 + 8);
    if ((v3 & 0xC0) == 0x80)
    {
      return sub_1D6240020(result, a2, *v2, v3 & 0x3F);
    }
  }

  return result;
}

uint64_t FormatGroupBinding.Image.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v5 = result;
  v6 = *(v2 + 8);
  v8 = *(v2 + 16);
  v7 = *(v2 + 24);
  v9 = *(v2 + 40) >> 5;
  if (v9 > 3)
  {
    if (*(v2 + 40) >> 5 <= 5u)
    {
      v10 = (v6 >> 59) & 2 | (v6 >> 2) & 1;
      if (v10 <= 1)
      {
        if (!v10)
        {

          FormatFont.bind(binder:context:)(v5, a2);
          if (v3)
          {
          }

LABEL_25:

          sub_1D620B270(v5, a2, v8);

          v12 = v5;
          v13 = a2;
          v14 = v7;
LABEL_28:
          sub_1D620B270(v12, v13, v14);
        }

LABEL_23:

        FormatFont.bind(binder:context:)(v5, a2);
        if (v3)
        {
        }

        goto LABEL_25;
      }

LABEL_22:
      if (v10 != 2)
      {
        return result;
      }

      goto LABEL_23;
    }

    if (v9 == 6)
    {
      return FormatSportsEventBinding.Image.bind(binder:context:)(result, a2);
    }
  }

  else
  {
    if (*(v2 + 40) >> 5 <= 1u)
    {
      if (!v9)
      {
        return result;
      }

      v10 = (v6 >> 59) & 2 | (v6 >> 2) & 1;
      if (v10 <= 1)
      {

        FormatFont.bind(binder:context:)(v5, a2);

        if (v3)
        {
          return result;
        }

        sub_1D620B270(v5, a2, v8);

        v12 = v5;
        v13 = a2;
        v14 = v7;
        goto LABEL_28;
      }

      goto LABEL_22;
    }

    if (v9 != 2 && BYTE1(v8) <= 2u)
    {
      if (BYTE1(v8))
      {
        if (BYTE1(v8) == 1)
        {
          if (v6)
          {
            return sub_1D620B270(result, a2, *(v2 + 8));
          }
        }

        else
        {
          return sub_1D620B270(result, a2, *v2);
        }
      }

      else
      {
        return FormatSymbolConfig.Font.bind(binder:context:)(result, a2);
      }
    }
  }

  return result;
}

uint64_t FormatTagBinding.Image.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v5 = result;
  v6 = v2[2];
  v7 = v2[3];
  v8 = (v2[1] >> 59) & 2 | (v2[1] >> 2) & 1;
  if (v8 <= 1)
  {

    FormatFont.bind(binder:context:)(v5, a2);

    if (v3)
    {
      return result;
    }

    sub_1D620B270(v5, a2, v6);

    v9 = v5;
    v10 = a2;
    v11 = v7;
  }

  else
  {
    if (v8 != 2)
    {
      return result;
    }

    FormatFont.bind(binder:context:)(v5, a2);
    if (v3)
    {
    }

    sub_1D620B270(v5, a2, v6);

    v9 = v5;
    v10 = a2;
    v11 = v7;
  }

  sub_1D620B270(v9, v10, v11);
}

uint64_t FormatWeatherBinding.Image.bind(binder:context:)(uint64_t result, uint64_t a2)
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

uint64_t FormatSportsEventBinding.Image.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v5 = result;
  v7 = *(v2 + 8);
  v6 = *(v2 + 16);
  v8 = *(v2 + 24);
  if (*(v2 + 40))
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9 & 0xFFFFFFFE | (v7 >> 1) & 1;
  if (!v10)
  {
    v12 = (v7 >> 59) & 2 | (v7 >> 2) & 1;
    if (v12 <= 1)
    {

      FormatFont.bind(binder:context:)(v5, a2);

      if (v3)
      {
        return result;
      }

      sub_1D620B270(v5, a2, v6);

      v16 = v5;
      v17 = a2;
      v18 = v8;
      goto LABEL_26;
    }

    if (v12 != 2)
    {
      return result;
    }

    goto LABEL_17;
  }

  if (v10 != 1)
  {
    v13 = *(v2 + 32);
    v14 = (v6 >> 59) & 2 | (v6 >> 2) & 1;
    if (v14 > 1)
    {
      if (v14 != 2)
      {
        return result;
      }
    }

    else if (!v14)
    {

      FormatFont.bind(binder:context:)(v5, a2);
      v15 = v3;
      if (v3)
      {
      }

LABEL_22:

      sub_1D620B270(v5, a2, v8);
      if (!v15)
      {

        sub_1D620B270(v5, a2, v13);
      }
    }

    FormatFont.bind(binder:context:)(v5, a2);
    v15 = v3;
    if (v3)
    {
    }

    goto LABEL_22;
  }

  v11 = (v7 >> 59) & 2 | (v7 >> 2) & 1;
  if (v11 <= 1 || v11 == 2)
  {
LABEL_17:

    FormatFont.bind(binder:context:)(v5, a2);
    if (!v3)
    {

      sub_1D620B270(v5, a2, v6);

      v16 = v5;
      v17 = a2;
      v18 = v8;
LABEL_26:
      sub_1D620B270(v16, v17, v18);
    }
  }

  return result;
}

uint64_t FormatGroupBinding.Text.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 8);
  if (((1 << (*(v2 + 48) >> 4)) & 0x1EF7) == 0)
  {
    if (*(v2 + 48) >> 4 == 3)
    {
      v4 = *(v2 + 16);
      *&v9 = *v2;
      *(&v9 + 1) = v3;
      LOWORD(v10) = v4;
      return sub_1D62B416C(a2);
    }

    else if ((v3 & 0x80) != 0)
    {
      v5 = result;
      v12 = v3 & 0x3F;
      sub_1D5B49474(0, &qword_1EDF329A8);
      if (swift_dynamicCast())
      {
        v7 = *(&v10 + 1);
        v8 = v11;
        __swift_project_boxed_opaque_existential_1(&v9, *(&v10 + 1));
        (*(v8 + 8))(v5, a2, v7, v8);
        return __swift_destroy_boxed_opaque_existential_1(&v9);
      }

      else
      {
        v11 = 0;
        v9 = 0u;
        v10 = 0u;
        return sub_1D5BFB774(&v9, &qword_1EDF329A0, &qword_1EDF329A8);
      }
    }
  }

  return result;
}

uint64_t sub_1D62558D8(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 8);
  if (v3 < 0)
  {
    v4 = result;
    v11 = v3 & 0x3F;
    sub_1D5B49474(0, &qword_1EDF329A8);
    if (swift_dynamicCast())
    {
      v6 = *(&v9 + 1);
      v7 = v10;
      __swift_project_boxed_opaque_existential_1(&v8, *(&v9 + 1));
      (*(v7 + 8))(v4, a2, v6, v7);
      return __swift_destroy_boxed_opaque_existential_1(&v8);
    }

    else
    {
      v10 = 0;
      v8 = 0u;
      v9 = 0u;
      return sub_1D5BFB774(&v8, &qword_1EDF329A0, &qword_1EDF329A8);
    }
  }

  return result;
}

uint64_t sub_1D62559E4(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 8);
  if (((1 << (*(v2 + 48) >> 4)) & 0x1EF7) == 0)
  {
    if (*(v2 + 48) >> 4 == 3)
    {
      return sub_1D62B416C(a2);
    }

    else if ((v3 & 0x80) != 0)
    {
      return sub_1D6240020(result, a2, *v2, v3 & 0x3F);
    }
  }

  return result;
}

uint64_t sub_1D6255A70(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 8);
  if (v3 >= 2)
  {
    return sub_1D6249614(result, a2, *v2 & 1, v3);
  }

  return result;
}

unint64_t FormatGroupNode.bindChildren(binder:context:)(unint64_t a1, uint64_t a2)
{
  v4 = v2;
  swift_beginAccess();
  v17 = *(v2 + 32);
  sub_1D5C82CD8(v17);
  FormatSize.bind(binder:context:)(a1, a2);
  if (v3)
  {
    return sub_1D5C92A8C(v17);
  }

  sub_1D5C92A8C(v17);
  swift_beginAccess();
  v8 = *(v2 + 48);

  sub_1D620EA64(a1, a2, v8);

  swift_beginAccess();
  v9 = v4[8];
  if (v9 >> 62 == 1)
  {
    v10 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v11 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    sub_1D5EB1500(v4[8]);
    sub_1D5EB1500(v10);

    sub_1D624919C(a1, a2, v10, v11);
    sub_1D5EB15C4(v10);

    sub_1D5EB15C4(v9);
  }

  if (v4[10])
  {
    FormatGroupNodeStyle.bind(binder:context:)(a1, a2);
  }

  v12 = v4[15];
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

  swift_beginAccess();
  if (v4[16])
  {

    FormatGroupNodeMask.bind(binder:context:)(a1, a2);
  }

  if (v4[17])
  {
    v15 = v4[21];

    sub_1D5DEA234(v15);

    FormatFlexBoxNodeItem.bind(binder:context:)(a1, a2);

    sub_1D5CBF568(v15);
  }

  swift_beginAccess();
  v16 = v4[11];

  sub_1D6215F90(a1, a2, v16);
}

uint64_t FormatGroupNodeStyle.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v6 = *(v2 + 48);

  sub_1D621C350(a1, a2, v6);
  if (v3)
  {
  }

  v8 = *(v2 + 56);
  if (v8)
  {
    sub_1D620B270(a1, a2, v8);
  }

  v9 = *(v2 + 64);
  if (v9)
  {
    sub_1D620E744(a1, a2, v9);
  }

  v10 = *(v2 + 144);
  v71 = *(v2 + 128);
  v72 = v10;
  v73 = *(v2 + 160);
  v74 = *(v2 + 176);
  v11 = v74;
  v12 = *(v2 + 112);
  v70[0] = *(v2 + 96);
  v70[1] = v12;
  if (v74 != 254)
  {
    v75 = v2;
    *&v48 = v71;
    sub_1D62B5354(v70, &v59, &qword_1EDF33718, &type metadata for FormatShadow);

    FormatColor.bind(binder:context:)(a1, a2);

    if (v11 <= 2)
    {
      v2 = v75;
      if (v11)
      {
        v30 = a1;
        v31 = a2;
        if (v11 != 1)
        {
          sub_1D625E06C(a1, a2);
          v30 = a1;
          v31 = a2;
        }

        sub_1D625E06C(v30, v31);
        sub_1D5D0ABCC(v70, &qword_1EDF33718, &type metadata for FormatShadow);
        goto LABEL_9;
      }

      goto LABEL_25;
    }

    v2 = v75;
    if (v11 > 4)
    {
      if (v11 != 5)
      {
LABEL_25:
        sub_1D5D0ABCC(v70, &qword_1EDF33718, &type metadata for FormatShadow);
        goto LABEL_9;
      }
    }

    else if (v11 != 3)
    {
      goto LABEL_24;
    }

    sub_1D625E06C(a1, a2);
LABEL_24:
    sub_1D625E06C(a1, a2);
    goto LABEL_25;
  }

LABEL_9:
  v13 = *(v2 + 296);
  v14 = *(v2 + 328);
  v56 = *(v2 + 312);
  v57 = v14;
  v58 = *(v2 + 344);
  v15 = *(v2 + 232);
  v16 = *(v2 + 264);
  v17 = *(v2 + 280);
  v52 = *(v2 + 248);
  v53 = v16;
  v18 = *(v2 + 264);
  v19 = *(v2 + 296);
  v54 = *(v2 + 280);
  v55 = v19;
  v20 = *(v2 + 200);
  v48 = *(v2 + 184);
  v49 = v20;
  v50 = *(v2 + 216);
  v51 = v15;
  v21 = *(v2 + 328);
  v67 = v56;
  v68 = v21;
  v69 = *(v2 + 344);
  v63 = *(v2 + 248);
  v64 = v18;
  v22 = *(v2 + 232);
  v65 = v17;
  v66 = v13;
  v23 = *(v2 + 200);
  v59 = *(v2 + 184);
  v60 = v23;
  v61 = *(v2 + 216);
  v62 = v22;
  result = sub_1D60081E0(&v59);
  if (result != 1)
  {
    v46[8] = v67;
    v46[9] = v68;
    v47 = v69;
    v46[4] = v63;
    v46[5] = v64;
    v46[6] = v65;
    v46[7] = v66;
    v46[0] = v59;
    v46[1] = v60;
    v46[2] = v61;
    v46[3] = v62;
    result = sub_1D62B4E2C(v46);
    if (result > 1)
    {
      if (result == 2)
      {
        v24 = sub_1D5D04BC4(v46);
        v25 = *(v24 + 144);
        v41 = *(v24 + 128);
        v42 = v25;
        v43 = *(v24 + 160);
        v26 = *(v24 + 80);
        v37 = *(v24 + 64);
        v38 = v26;
        v27 = *(v24 + 112);
        v39 = *(v24 + 96);
        v40 = v27;
        v28 = *(v24 + 16);
        v33 = *v24;
        v34 = v28;
        v29 = *(v24 + 48);
        v35 = *(v24 + 32);
        v36 = v29;
        v44[0] = v48;
        v44[1] = v49;
        v44[4] = v52;
        v44[5] = v53;
        v44[2] = v50;
        v44[3] = v51;
        v45 = v58;
        v44[8] = v56;
        v44[9] = v57;
        v44[6] = v54;
        v44[7] = v55;
        sub_1D60864C0(v44, v32);
        FormatGlassEffect.bind(binder:context:)(a1, a2);
        return sub_1D5D0ABCC(&v48, &qword_1EDF2D860, &type metadata for FormatVisualEffect);
      }
    }

    else
    {
      return sub_1D5D04BC4(v46);
    }
  }

  return result;
}

uint64_t FormatGroupNodeMask.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v4 = v2;
  if (!*(v2 + 16) || (result = FormatGroupNodeMaskStyle.bind(binder:context:)(a1, a2), !v3))
  {
    v8 = *(v2 + 24);
    if (!v8)
    {
      goto LABEL_8;
    }

    v9 = v3;
    swift_beginAccess();
    v10 = *(v8 + 72);
    if (v10)
    {

      sub_1D621397C(a1, a2, v10);

      if (v3)
      {
        return result;
      }

      v9 = 0;
    }

    swift_beginAccess();
    v11 = *(v8 + 88);

    v3 = v9;
    sub_1D621D544(a1, a2, v11);

    if (!v9)
    {
LABEL_8:
      swift_beginAccess();
      v13 = *(v4 + 32);
      sub_1D5C82CD8(v13);
      FormatSize.bind(binder:context:)(a1, a2);
      result = sub_1D5C92A8C(v13);
      if (!v3)
      {
        swift_beginAccess();
        v12 = *(v4 + 40);

        sub_1D620EA64(a1, a2, v12);
      }
    }
  }

  return result;
}

uint64_t FormatGroupNodeMaskStyle.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v6 = *(v2 + 48);

  sub_1D621CB10(a1, a2, v6);
  if (v3)
  {
  }

  v8 = *(v2 + 56);
  v9 = *(v2 + 104);
  v30 = *(v2 + 120);
  v10 = *(v2 + 72);
  v28[0] = v8;
  v28[1] = v10;
  v28[2] = *(v2 + 88);
  v29 = v9;
  v11 = v8;
  if (v30 <= 1u)
  {
    if (!v30)
    {
      goto LABEL_12;
    }

    v12 = *(v2 + 72);
    v13 = *(v2 + 104);
    v24 = *(v2 + 88);
    v25 = v13;
    LOBYTE(v26) = *(v2 + 120);
    v22 = *(v2 + 56);
    v23 = v12;
    sub_1D619916C(&v22, v21);
    sub_1D6213184(a1, a2, v11);
    goto LABEL_11;
  }

  if (v30 == 2)
  {
    v14 = v29;
    v15 = *(v2 + 72);
    v16 = *(v2 + 104);
    v24 = *(v2 + 88);
    v25 = v16;
    LOBYTE(v26) = *(v2 + 120);
    v22 = *(v2 + 56);
    v23 = v15;
    sub_1D619916C(&v22, v21);
    sub_1D6212DD8(a1, a2, v11);
    if (v14)
    {

      sub_1D620B270(a1, a2, v14);
      sub_1D620B270(a1, a2, *(&v14 + 1));
      sub_1D5CDE22C(v14);
    }

    goto LABEL_11;
  }

  if (v30 == 3)
  {
LABEL_11:
    result = sub_1D5D0ABCC(v28, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
  }

LABEL_12:
  v17 = *(v2 + 128);
  if (v17)
  {
    result = sub_1D620E744(a1, a2, v17);
  }

  v18 = *(v2 + 184);
  v24 = *(v2 + 168);
  v25 = v18;
  v26 = *(v2 + 200);
  v27 = *(v2 + 216);
  v19 = v27;
  v20 = *(v2 + 152);
  v22 = *(v2 + 136);
  v23 = v20;
  if (v27 != 254)
  {
    v31 = v24;
    sub_1D62B5354(&v22, v21, &qword_1EDF33718, &type metadata for FormatShadow);

    FormatColor.bind(binder:context:)(a1, a2);

    if (v19 <= 2)
    {
      if (v19)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v19 <= 4)
      {
        if (v19 != 3)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

      if (v19 == 5)
      {
LABEL_22:
        sub_1D625E06C(a1, a2);
LABEL_23:
        sub_1D625E06C(a1, a2);
      }
    }

    return sub_1D5D0ABCC(&v22, &qword_1EDF33718, &type metadata for FormatShadow);
  }

  return result;
}

uint64_t FormatGroupNodeMaskPath.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v4 = *v2;
  if (*(v2 + 64) > 1u)
  {
    if (*(v2 + 64) == 2)
    {
      v6 = *(v2 + 48);
      v5 = *(v2 + 56);
      v7 = result;
      result = sub_1D6212DD8(result, a2, v4);
      if (!v3)
      {
        if (v6)
        {

          sub_1D620B270(v7, a2, v6);
          sub_1D620B270(v7, a2, v5);
          return sub_1D5CDE22C(v6);
        }
      }
    }
  }

  else if (*(v2 + 64))
  {
    return sub_1D6213184(result, a2, v4);
  }

  return result;
}

uint64_t sub_1D625682C(uint64_t result, uint64_t a2)
{
  v4 = *v2;
  if (*(v2 + 64) > 1u)
  {
    if (*(v2 + 64) == 2)
    {
      v6 = *(v2 + 48);
      v5 = *(v2 + 56);
      v7 = result;
      result = sub_1D6212DD8(result, a2, v4);
      if (!v3)
      {
        if (v6)
        {

          sub_1D620B270(v7, a2, v6);
          sub_1D620B270(v7, a2, v5);
          return sub_1D5CDE22C(v6);
        }
      }
    }
  }

  else if (*(v2 + 64))
  {
    return sub_1D6213184(result, a2, v4);
  }

  return result;
}

uint64_t FormatShadow.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 80);

  FormatColor.bind(binder:context:)(a1, a2);

  if (!v3)
  {
    if (v6 <= 2)
    {
      if (!v6)
      {
        return result;
      }

      if (v6 == 1)
      {
        return sub_1D625E06C(a1, a2);
      }
    }

    else if (v6 > 4)
    {
      if (v6 != 5)
      {
        return result;
      }
    }

    else if (v6 != 3)
    {
      return sub_1D625E06C(a1, a2);
    }

    sub_1D625E06C(a1, a2);
    return sub_1D625E06C(a1, a2);
  }

  return result;
}

uint64_t FormatGroupNodeMaskStyle.Selector.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v5 = result;
  v6 = *(v2 + 64);
  v33[2] = *(v2 + 48);
  v34 = v6;
  v35 = *(v2 + 80);
  v7 = *(v2 + 32);
  v33[0] = *(v2 + 16);
  v33[1] = v7;
  v8 = *(v2 + 88);
  v9 = *(v2 + 144);
  v37 = *(v2 + 128);
  v38 = v9;
  v39 = *(v2 + 160);
  v40 = *(v2 + 176);
  v10 = *(v2 + 112);
  v36[0] = *(v2 + 96);
  v36[1] = v10;
  v11 = *&v33[0];
  if (v35 <= 1u)
  {
    if (!v35)
    {
      goto LABEL_13;
    }

    v12 = *(v2 + 64);
    v30 = *(v2 + 48);
    v31 = v12;
    v32 = *(v2 + 80);
    v13 = *(v2 + 32);
    v28 = *(v2 + 16);
    v29 = v13;
    v14 = v3;
    sub_1D619916C(&v28, v27);
    sub_1D6213184(v5, a2, v11);
    if (v3)
    {
      v15 = &qword_1EDF273F0;
      v16 = &type metadata for FormatGroupNodeMaskPath;
      v17 = v33;
      return sub_1D5D0ABCC(v17, v15, v16);
    }

    goto LABEL_12;
  }

  if (v35 == 2)
  {
    v18 = v34;
    v19 = *(v2 + 64);
    v30 = *(v2 + 48);
    v31 = v19;
    v32 = *(v2 + 80);
    v20 = *(v2 + 32);
    v28 = *(v2 + 16);
    v29 = v20;
    v14 = v3;
    sub_1D619916C(&v28, v27);
    sub_1D6212DD8(v5, a2, v11);
    if (v3)
    {
      v21 = &qword_1EDF273F0;
      v22 = &type metadata for FormatGroupNodeMaskPath;
      v23 = v33;
      return sub_1D5D0ABCC(v23, v21, v22);
    }

    if (v18)
    {

      sub_1D620B270(v5, a2, v18);
      sub_1D620B270(v5, a2, *(&v18 + 1));
      sub_1D5CDE22C(v18);
    }

LABEL_12:
    result = sub_1D5D0ABCC(v33, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
    v3 = v14;
  }

LABEL_13:
  if (!v8 || (result = sub_1D620E744(v5, a2, v8), !v3))
  {
    v24 = v40;
    if (v40 != 254)
    {
      v41 = v38;
      v27[0] = v37;
      sub_1D62B5354(v36, &v28, &qword_1EDF33718, &type metadata for FormatShadow);

      FormatColor.bind(binder:context:)(v5, a2);
      if (v3)
      {

LABEL_18:
        v15 = &qword_1EDF33718;
        v16 = &type metadata for FormatShadow;
        v17 = v36;
        return sub_1D5D0ABCC(v17, v15, v16);
      }

      if (v24 <= 2)
      {
        if (!v24)
        {
          goto LABEL_18;
        }

        if (v24 != 1)
        {
          goto LABEL_29;
        }
      }

      else
      {
        if (v24 > 4)
        {
          if (v24 != 5)
          {
            goto LABEL_18;
          }

          goto LABEL_29;
        }

        if (v24 == 3)
        {
LABEL_29:
          sub_1D625E06C(v5, a2);
          v25 = v5;
          v26 = a2;
          goto LABEL_30;
        }
      }

      v25 = v5;
      v26 = a2;
LABEL_30:
      sub_1D625E06C(v25, v26);
      v21 = &qword_1EDF33718;
      v22 = &type metadata for FormatShadow;
      v23 = v36;
      return sub_1D5D0ABCC(v23, v21, v22);
    }
  }

  return result;
}

uint64_t FormatGroupNodeStyle.Selector.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 96);
  v60 = *(v2 + 80);
  v61 = v7;
  v62 = *(v2 + 112);
  v63 = *(v2 + 128);
  v8 = *(v2 + 64);
  v59[0] = *(v2 + 48);
  v59[1] = v8;
  v9 = *(v2 + 136);
  v10 = *(v2 + 168);
  v11 = *(v2 + 184);
  v64 = *(v2 + 152);
  v65 = v10;
  v12 = *(v2 + 200);
  v13 = *(v2 + 232);
  v14 = *(v2 + 248);
  v68 = *(v2 + 216);
  v69 = v13;
  v66 = v11;
  v67 = v12;
  v15 = *(v2 + 264);
  v16 = *(v2 + 280);
  v17 = *(v2 + 296);
  v74 = *(v2 + 312);
  v72 = v16;
  v73 = v17;
  v70 = v14;
  v71 = v15;
  if (v6)
  {
    result = sub_1D620E744(a1, a2, v6);
    if (v3)
    {
      return result;
    }
  }

  v19 = v63;
  if (v63 == 254)
  {
    v20 = a1;
    if (v9)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  v75 = *(&v61 + 1);
  *&v46[0] = v60;
  sub_1D62B5354(v59, &v48, &qword_1EDF33718, &type metadata for FormatShadow);

  FormatColor.bind(binder:context:)(a1, a2);
  v21 = v3;
  if (v3)
  {

    return sub_1D5D0ABCC(v59, &qword_1EDF33718, &type metadata for FormatShadow);
  }

  if (v19 <= 2)
  {
    if (v19)
    {
      if (v19 == 1)
      {
        v20 = a1;
        v30 = a1;
        v31 = a2;
LABEL_22:
        sub_1D625E06C(v30, v31);
        sub_1D5D0ABCC(v59, &qword_1EDF33718, &type metadata for FormatShadow);
        goto LABEL_29;
      }

LABEL_21:
      v20 = a1;
      sub_1D625E06C(a1, a2);
      v30 = a1;
      v31 = a2;
      goto LABEL_22;
    }
  }

  else
  {
    if (v19 <= 4)
    {
      if (v19 != 3)
      {
        v20 = a1;
        v22 = a1;
        v23 = a2;
LABEL_27:
        sub_1D625E06C(v22, v23);
        v21 = 0;
        goto LABEL_28;
      }

      goto LABEL_21;
    }

    if (v19 == 5)
    {
      v20 = a1;
      sub_1D625E06C(a1, a2);
      v22 = a1;
      v23 = a2;
      goto LABEL_27;
    }
  }

  v20 = a1;
LABEL_28:
  sub_1D5D0ABCC(v59, &qword_1EDF33718, &type metadata for FormatShadow);
  v3 = v21;
LABEL_29:
  if (v9)
  {
LABEL_5:
    result = sub_1D620B270(v20, a2, v9);
    if (v3)
    {
      return result;
    }
  }

LABEL_6:
  v56 = v72;
  v57 = v73;
  v58 = v74;
  v52 = v68;
  v53 = v69;
  v54 = v70;
  v55 = v71;
  v48 = v64;
  v49 = v65;
  v50 = v66;
  v51 = v67;
  result = sub_1D60081E0(&v48);
  if (result != 1)
  {
    v46[8] = v56;
    v46[9] = v57;
    v47 = v58;
    v46[4] = v52;
    v46[5] = v53;
    v46[6] = v54;
    v46[7] = v55;
    v46[0] = v48;
    v46[1] = v49;
    v46[2] = v50;
    v46[3] = v51;
    result = sub_1D62B4E2C(v46);
    if (result > 1)
    {
      if (result == 2)
      {
        v24 = sub_1D5D04BC4(v46);
        v25 = *(v24 + 144);
        v41 = *(v24 + 128);
        v42 = v25;
        v43 = *(v24 + 160);
        v26 = *(v24 + 80);
        v37 = *(v24 + 64);
        v38 = v26;
        v27 = *(v24 + 112);
        v39 = *(v24 + 96);
        v40 = v27;
        v28 = *(v24 + 16);
        v33 = *v24;
        v34 = v28;
        v29 = *(v24 + 48);
        v35 = *(v24 + 32);
        v36 = v29;
        v44[0] = v64;
        v44[1] = v65;
        v44[4] = v68;
        v44[5] = v69;
        v44[2] = v66;
        v44[3] = v67;
        v45 = v74;
        v44[8] = v72;
        v44[9] = v73;
        v44[6] = v70;
        v44[7] = v71;
        sub_1D60864C0(v44, v32);
        FormatGlassEffect.bind(binder:context:)(v20, a2);
        return sub_1D5D0ABCC(&v64, &qword_1EDF2D860, &type metadata for FormatVisualEffect);
      }
    }

    else
    {
      return sub_1D5D04BC4(v46);
    }
  }

  return result;
}

uint64_t FormatImage.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v4 = *v2;
  v5 = *v2 >> 61;
  if (v5 <= 3)
  {
    if (v5 < 2 || v5 != 2)
    {
      return result;
    }

    v7 = *(*((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) + 24);
    v8 = result;

    sub_1D623CCEC(v8, a2, v7);
    if (!v3)
    {

      FormatImage.bind(binder:context:)(v8, a2);
    }
  }

  if (v5 != 4)
  {
    if (v5 != 5)
    {
      return result;
    }

    v10 = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v11 = result;
    result = FormatImage.bind(binder:context:)(result, a2);
    if (v3 || !v10)
    {
      return result;
    }

    FormatImageNodeStyle.bind(binder:context:)(v11, a2);
  }

  v13 = result;
  result = FormatImage.bind(binder:context:)(result, a2);
  if (!v3)
  {
    return FormatImage.bind(binder:context:)(v13, a2);
  }

  return result;
}

unint64_t FormatImageNodeStyle.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v6 = *(v2 + 48);

  sub_1D62333F0(a1, a2, v6);
  if (v3)
  {
  }

  v8 = *(v2 + 56);
  if (v8)
  {
    sub_1D620B270(a1, a2, v8);
  }

  swift_beginAccess();
  v9 = *(v2 + 64);
  if (v9)
  {

    sub_1D6220E24(a1, a2, v9);
  }

  if ((~*(v2 + 72) & 0xF000000000000007) != 0)
  {
    *&v20[0] = *(v2 + 72);

    FormatBackground.bind(binder:context:)(a1, a2);
  }

  v10 = *(v2 + 80);
  if (v10)
  {
    sub_1D620E744(a1, a2, v10);
  }

  result = *(v2 + 120);
  if (result >= 3)
  {
    if (result != 3)
    {
      v11 = *(result + 16);
      v12 = *(result + 24);
      v13 = *(v2 + 120);
      sub_1D5D0AF9C(result);
      sub_1D5D0AFBC(v11);
      sub_1D5D0AFBC(v12);
      sub_1D5D0AFDC(a1, a2, v11, v12);
      sub_1D5D0AFCC(v11);
      sub_1D5D0AFCC(v12);
      result = sub_1D5D0AFAC(v13);
    }
  }

  else
  {
    result = sub_1D5D0AFAC(result);
  }

  v14 = *(v2 + 192);
  v21 = *(v2 + 176);
  v22 = v14;
  v23 = *(v2 + 208);
  v24 = *(v2 + 224);
  v15 = *(v2 + 160);
  v20[0] = *(v2 + 144);
  v20[1] = v15;
  if (v24 != 254)
  {
    v25 = v21;
    swift_retain_n();
    FormatColor.bind(binder:context:)(a1, a2);

    if (v24 <= 2u)
    {
      if (v24)
      {
        goto LABEL_36;
      }
    }

    else
    {
      if (v24 <= 4u)
      {
        v18 = a1;
        v19 = a2;
        if (v24 != 3)
        {
          goto LABEL_37;
        }

        goto LABEL_35;
      }

      if (v24 == 5)
      {
        v18 = a1;
        v19 = a2;
LABEL_35:
        sub_1D625E06C(v18, v19);
LABEL_36:
        v18 = a1;
        v19 = a2;
LABEL_37:
        sub_1D625E06C(v18, v19);
      }
    }

    result = sub_1D5D0ABCC(v20, &qword_1EDF33718, &type metadata for FormatShadow);
  }

  if ((~*(v2 + 232) & 0xF000000000000007) != 0)
  {
    v25 = *(v2 + 232);

    FormatColor.bind(binder:context:)(a1, a2);
  }

  v17 = *(v2 + 248);
  v16 = *(v2 + 256);
  if (v17)
  {
    if (v17 == 1)
    {
      return result;
    }

    sub_1D62B5D88(v17);

    sub_1D62125B0(a1, a2, v17);
  }

  else
  {
  }

  if (v16)
  {

    sub_1D62125B0(a1, a2, v16);
  }

  return sub_1D62B5D44(v17);
}

uint64_t FormatImageAdjustment.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 112);
  v56[6] = *(v2 + 96);
  v56[7] = v6;
  v57 = *(v2 + 128);
  v7 = *(v2 + 48);
  v56[2] = *(v2 + 32);
  v56[3] = v7;
  v8 = *(v2 + 80);
  v56[4] = *(v2 + 64);
  v56[5] = v8;
  v9 = *(v2 + 16);
  v56[0] = *v2;
  v56[1] = v9;
  v10 = sub_1D5F78DC4(v56);
  if (v10)
  {
    if (v10 != 1)
    {
      return sub_1D5DEA32C(v56);
    }

    v11 = sub_1D5DEA32C(v56);
    v47 = *v11;
    v12 = *(v11 + 64);
    v14 = *(v11 + 16);
    v13 = *(v11 + 32);
    v50 = *(v11 + 48);
    v51 = v12;
    v48 = v14;
    v49 = v13;
    v16 = *(v11 + 96);
    v15 = *(v11 + 112);
    v17 = *(v11 + 80);
    v55 = *(v11 + 128);
    v53 = v16;
    v54 = v15;
    v52 = v17;
    if (sub_1D6011234(&v47) == 1)
    {
      sub_1D5D756B8(&v47);
      v38 = *v11;
      v18 = *(v11 + 64);
      v20 = *(v11 + 16);
      v19 = *(v11 + 32);
      v41 = *(v11 + 48);
      v42 = v18;
      v39 = v20;
      v40 = v19;
      v22 = *(v11 + 96);
      v21 = *(v11 + 112);
      v23 = *(v11 + 80);
      v46 = *(v11 + 128);
      v44 = v22;
      v45 = v21;
      v43 = v23;
      sub_1D5D756B8(&v38);

      FormatColor.bind(binder:context:)(a1, a2);
    }

    v28 = sub_1D5D756B8(&v47);
    v29 = v28[3];
    v31 = *v28;
    v30 = v28[1];
    v40 = v28[2];
    v41 = v29;
    v38 = v31;
    v39 = v30;
    v32 = v28[7];
    v34 = v28[4];
    v33 = v28[5];
    v44 = v28[6];
    v45 = v32;
    v42 = v34;
    v43 = v33;
    v26 = sub_1D6011280(&v38);
    v27 = &v38;
  }

  else
  {
    v25 = sub_1D5DEA32C(v56);
    sub_1D5F78F40(v25, &v38);
    v51 = v42;
    v52 = v43;
    v53 = v44;
    v54 = v45;
    v47 = v38;
    v48 = v39;
    v49 = v40;
    v50 = v41;
    v26 = sub_1D6011280(&v47);
    v27 = &v47;
  }

  v35 = sub_1D5D756C8(v27);
  if (v26 == 1)
  {
    return sub_1D6212DD8(a1, a2, v35[14]);
  }

  v37 = v35[6];
  v36 = v35[7];
  result = sub_1D6212DD8(a1, a2, *v35);
  if (!v3)
  {
    if (v37)
    {

      sub_1D620B270(a1, a2, v37);
      sub_1D620B270(a1, a2, v36);
      return sub_1D5CDE22C(v37);
    }
  }

  return result;
}

uint64_t FormatImageAdjustmentMask.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_1D5F78F40(v4, v12);
  sub_1D5F78F40(v12, v13);
  v14[4] = v13[4];
  v14[5] = v13[5];
  v14[6] = v13[6];
  v14[7] = v13[7];
  v14[0] = v13[0];
  v14[1] = v13[1];
  v14[2] = v13[2];
  v14[3] = v13[3];
  v7 = sub_1D6011280(v14);
  v8 = sub_1D5D756C8(v14);
  if (v7 == 1)
  {
    return sub_1D6212DD8(a1, a2, v8[14]);
  }

  v11 = v8[6];
  v10 = v8[7];
  result = sub_1D6212DD8(a1, a2, *v8);
  if (!v3)
  {
    if (v11)
    {

      sub_1D620B270(a1, a2, v11);
      sub_1D620B270(a1, a2, v10);
      return sub_1D5CDE22C(v11);
    }
  }

  return result;
}

uint64_t FormatImageAdjustmentBlend.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[7];
  v35[6] = v2[6];
  v35[7] = v6;
  v36 = *(v2 + 128);
  v7 = v2[3];
  v35[2] = v2[2];
  v35[3] = v7;
  v8 = v2[5];
  v35[4] = v2[4];
  v35[5] = v8;
  v9 = v2[1];
  v35[0] = *v2;
  v35[1] = v9;
  if (sub_1D6011234(v35) == 1)
  {
    sub_1D5D756B8(v35);
    v10 = v2[3];
    v28 = v2[2];
    v29 = v10;
    v11 = v2[1];
    v26 = *v2;
    v27 = v11;
    v34 = *(v2 + 128);
    v12 = v2[7];
    v32 = v2[6];
    v33 = v12;
    v13 = v2[5];
    v30 = v2[4];
    v31 = v13;
    sub_1D5D756B8(&v26);

    FormatColor.bind(binder:context:)(a1, a2);
  }

  else
  {
    v15 = sub_1D5D756B8(v35);
    v16 = v15[3];
    v18 = *v15;
    v17 = v15[1];
    v28 = v15[2];
    v29 = v16;
    v26 = v18;
    v27 = v17;
    v19 = v15[7];
    v21 = v15[4];
    v20 = v15[5];
    v32 = v15[6];
    v33 = v19;
    v30 = v21;
    v31 = v20;
    v22 = sub_1D6011280(&v26);
    v23 = sub_1D5D756C8(&v26);
    if (v22 == 1)
    {
      return sub_1D6212DD8(a1, a2, v23[14]);
    }

    else
    {
      v25 = v23[6];
      v24 = v23[7];
      result = sub_1D6212DD8(a1, a2, *v23);
      if (!v3)
      {
        if (v25)
        {

          sub_1D620B270(a1, a2, v25);
          sub_1D620B270(a1, a2, v24);
          return sub_1D5CDE22C(v25);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D6257D74(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 112);
  v28[6] = *(v2 + 96);
  v28[7] = v6;
  v29 = *(v2 + 128);
  v7 = *(v2 + 48);
  v28[2] = *(v2 + 32);
  v28[3] = v7;
  v8 = *(v2 + 80);
  v28[4] = *(v2 + 64);
  v28[5] = v8;
  v9 = *(v2 + 16);
  v28[0] = *v2;
  v28[1] = v9;
  v10 = sub_1D5F78DC4(v28);
  if (v10)
  {
    if (v10 == 1)
    {
      v11 = sub_1D5DEA32C(v28);
      v24 = *(v11 + 80);
      v25 = *(v11 + 96);
      v26 = *(v11 + 112);
      v27 = *(v11 + 128);
      v20 = *(v11 + 16);
      v21 = *(v11 + 32);
      v22 = *(v11 + 48);
      v23 = *(v11 + 64);
      v19 = *v11;
      return FormatImageAdjustmentBlend.bind(binder:context:)(a1, a2);
    }

    else
    {
      return sub_1D5DEA32C(v28);
    }
  }

  else
  {
    v13 = sub_1D5DEA32C(v28);
    sub_1D5F78F40(v13, v18);
    v23 = v18[4];
    v24 = v18[5];
    v25 = v18[6];
    v26 = v18[7];
    v19 = v18[0];
    v20 = v18[1];
    v21 = v18[2];
    v22 = v18[3];
    v14 = sub_1D6011280(&v19);
    v15 = sub_1D5D756C8(&v19);
    if (v14 == 1)
    {
      return sub_1D6212DD8(a1, a2, v15[14]);
    }

    else
    {
      v17 = v15[6];
      v16 = v15[7];
      result = sub_1D6212DD8(a1, a2, *v15);
      if (!v3 && v17)
      {

        sub_1D620B270(a1, a2, v17);
        sub_1D620B270(a1, a2, v16);
        return sub_1D5CDE22C(v17);
      }
    }
  }

  return result;
}

uint64_t FormatImageAdjustmentBlend.GradientData.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[5];
  v15[4] = v2[4];
  v15[5] = v6;
  v7 = v2[7];
  v15[6] = v2[6];
  v15[7] = v7;
  v8 = v2[1];
  v15[0] = *v2;
  v15[1] = v8;
  v9 = v2[3];
  v15[2] = v2[2];
  v15[3] = v9;
  v10 = sub_1D6011280(v15);
  v11 = sub_1D5D756C8(v15);
  if (v10 == 1)
  {
    return sub_1D6212DD8(a1, a2, v11[14]);
  }

  v14 = v11[6];
  v13 = v11[7];
  result = sub_1D6212DD8(a1, a2, *v11);
  if (!v3)
  {
    if (v14)
    {

      sub_1D620B270(a1, a2, v14);
      sub_1D620B270(a1, a2, v13);
      return sub_1D5CDE22C(v14);
    }
  }

  return result;
}

uint64_t FormatImageAdjustmentBlend.ColorData.bind(binder:context:)(uint64_t a1, uint64_t a2)
{

  FormatColor.bind(binder:context:)(a1, a2);
}

uint64_t sub_1D62580B4(uint64_t a1, uint64_t a2)
{
  v6 = v2[5];
  v7 = v2[7];
  v46 = v2[6];
  v47 = v7;
  v8 = v2[1];
  v9 = v2[3];
  v42 = v2[2];
  v43 = v9;
  v10 = v2[3];
  v11 = v2[5];
  v44 = v2[4];
  v45 = v11;
  v12 = v2[1];
  v40 = *v2;
  v41 = v12;
  v13 = v2[7];
  v49[6] = v46;
  v49[7] = v13;
  v49[2] = v42;
  v49[3] = v10;
  v49[4] = v44;
  v49[5] = v6;
  v48 = *(v2 + 128);
  v50 = *(v2 + 128);
  v49[0] = v40;
  v49[1] = v8;
  if (sub_1D6011234(v49) == 1)
  {
    v29[0] = *sub_1D5D756B8(v49);
    v33 = v42;
    v34 = v43;
    v31 = v40;
    v32 = v41;
    v39 = v48;
    v37 = v46;
    v38 = v47;
    v35 = v44;
    v36 = v45;
    sub_1D5D756B8(&v31);

    FormatColor.bind(binder:context:)(a1, a2);
  }

  else
  {
    v15 = sub_1D5D756B8(v49);
    v16 = v15[3];
    v18 = *v15;
    v17 = v15[1];
    v30[2] = v15[2];
    v30[3] = v16;
    v30[0] = v18;
    v30[1] = v17;
    v19 = v15[7];
    v21 = v15[4];
    v20 = v15[5];
    v30[6] = v15[6];
    v30[7] = v19;
    v30[4] = v21;
    v30[5] = v20;
    if (sub_1D6011280(v30) == 1)
    {
      v22 = *(sub_1D5D756C8(v30) + 112);
      v39 = v48;
      v37 = v46;
      v38 = v47;
      v33 = v42;
      v34 = v43;
      v35 = v44;
      v36 = v45;
      v31 = v40;
      v32 = v41;
      v23 = sub_1D5D756B8(&v31);
      sub_1D62B73AC(v23, v29);
      sub_1D6212DD8(a1, a2, v22);
    }

    else
    {
      v24 = sub_1D5D756C8(v30);
      v25 = *v24;
      v27 = v24[6];
      v26 = v24[7];
      v31 = v40;
      v32 = v41;
      v37 = v46;
      v38 = v47;
      v39 = v48;
      v33 = v42;
      v34 = v43;
      v35 = v44;
      v36 = v45;
      v28 = sub_1D5D756B8(&v31);
      sub_1D62B73AC(v28, v29);
      sub_1D6212DD8(a1, a2, v25);
      if (!v3)
      {
        if (v27)
        {

          sub_1D620B270(a1, a2, v27);
          sub_1D620B270(a1, a2, v26);
          sub_1D5CDE22C(v27);
        }
      }
    }

    return sub_1D62B7408(&v40);
  }
}

uint64_t sub_1D6258340(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_1D5F78F40(v4, v12);
  sub_1D5F78F40(v12, v13);
  v14[4] = v13[4];
  v14[5] = v13[5];
  v14[6] = v13[6];
  v14[7] = v13[7];
  v14[0] = v13[0];
  v14[1] = v13[1];
  v14[2] = v13[2];
  v14[3] = v13[3];
  v7 = sub_1D6011280(v14);
  v8 = sub_1D5D756C8(v14);
  if (v7 == 1)
  {
    return sub_1D6212DD8(a1, a2, v8[14]);
  }

  v11 = v8[6];
  v10 = v8[7];
  result = sub_1D6212DD8(a1, a2, *v8);
  if (!v3)
  {
    if (v11)
    {

      sub_1D620B270(a1, a2, v11);
      sub_1D620B270(a1, a2, v10);
      return sub_1D5CDE22C(v11);
    }
  }

  return result;
}

unint64_t sub_1D6258468(unint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 8);

  FormatAsyncImageContent.bind(binder:context:)(a1, a2);

  if (!v3)
  {
    if (v6)
    {
      return FormatImageNodeStyle.bind(binder:context:)(a1, a2);
    }
  }

  return result;
}

uint64_t FormatImageNode.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v4 = v2;
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

  if (v4[7])
  {
    FormatImageNodeStyle.bind(binder:context:)(a1, a2);
  }

  v9 = v4[8];
  if (v9)
  {
    swift_beginAccess();
    v10 = *(v9 + 72);
    if (v10)
    {

      sub_1D621397C(a1, a2, v10);
    }

    swift_beginAccess();
    v11 = *(v9 + 88);

    sub_1D621D544(a1, a2, v11);
  }

  FormatAsyncImageContent.bind(binder:context:)(a1, a2);

  result = swift_beginAccess();
  v12 = v4[11];
  if (v12 >> 62 == 1)
  {
    v13 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v14 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    sub_1D5EB1500(v4[11]);
    sub_1D5EB1500(v13);

    sub_1D624919C(a1, a2, v13, v14);
    sub_1D5EB15C4(v13);

    result = sub_1D5EB15C4(v12);
  }

  if (v4[18])
  {
    v15 = v4[22];

    sub_1D5DEA234(v15);

    FormatFlexBoxNodeItem.bind(binder:context:)(a1, a2);

    sub_1D5CBF568(v15);
  }

  return result;
}

uint64_t FormatImageNodeBinding.bindChildren(binder:context:)(uint64_t result, uint64_t a2)
{
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = (*(v2 + 40) >> 1) & 0xF;
  if (v6 <= 3)
  {
    if (v6 < 2)
    {
      return result;
    }

    if (v6 == 2)
    {
      return FormatGroupBinding.Image.bind(binder:context:)(result, a2);
    }

    v8 = (*(v2 + 8) >> 59) & 2 | (*(v2 + 8) >> 2) & 1;
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        return result;
      }

      v11 = result;

      FormatFont.bind(binder:context:)(v11, a2);
      if (v3)
      {
      }

      sub_1D620B270(v11, a2, v5);

      v13 = v11;
      v14 = a2;
      v15 = v4;
    }

    else
    {
      v9 = result;

      FormatFont.bind(binder:context:)(v9, a2);

      if (v3)
      {
        return result;
      }

      sub_1D620B270(v9, a2, v5);

      v13 = v9;
      v14 = a2;
      v15 = v4;
    }

    sub_1D620B270(v13, v14, v15);
  }

  if (v6 - 4 >= 4 && v6 == 8)
  {
    return FormatSportsEventBinding.Image.bind(binder:context:)(result, a2);
  }

  return result;
}

uint64_t FormatImageNodeRequest.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v5 = result;
  v7 = *v2;
  v6 = v2[1];
  if (!*v2 || (, sub_1D62125B0(v5, a2, v7), result = , !v3))
  {
    if (v6)
    {

      sub_1D62125B0(v5, a2, v6);
    }
  }

  return result;
}

uint64_t sub_1D6258AD0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;

  sub_1D62125B0(a1, a2, v5);
}

uint64_t sub_1D6258B28(uint64_t result, uint64_t a2)
{
  v5 = result;
  v7 = *v2;
  v6 = v2[1];
  if (!*v2 || (, sub_1D62125B0(v5, a2, v7), result = , !v3))
  {
    if (v6)
    {

      sub_1D62125B0(v5, a2, v6);
    }
  }

  return result;
}

uint64_t FormatImageNodeRequestAdjustment.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v4 = *v2;
  switch(*(v2 + 32))
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
      goto LABEL_2;
    case 0xC:
      return result;
    default:
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      v7 = *(v2 + 8);
      v8 = result;
      v9 = a2;
      result = sub_1D620B270(result, a2, v4);
      if (!v3)
      {
        sub_1D620B270(v8, v9, v7);
        sub_1D620B270(v8, v9, v6);
        result = v8;
        a2 = v9;
        v4 = v5;
LABEL_2:
        result = sub_1D620B270(result, a2, v4);
      }

      break;
  }

  return result;
}

uint64_t sub_1D6258C64(uint64_t result, uint64_t a2)
{
  v4 = *v2;
  switch(*(v2 + 32))
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
      goto LABEL_2;
    case 0xC:
      return result;
    default:
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      v7 = *(v2 + 8);
      v8 = result;
      v9 = a2;
      result = sub_1D620B270(result, a2, v4);
      if (!v3)
      {
        sub_1D620B270(v8, v9, v7);
        sub_1D620B270(v8, v9, v6);
        result = v8;
        a2 = v9;
        v4 = v5;
LABEL_2:
        result = sub_1D620B270(result, a2, v4);
      }

      break;
  }

  return result;
}

unint64_t FormatImageRenderingMode.bind(binder:context:)(unint64_t result, uint64_t a2)
{
  v3 = *v2;
  if (*v2 >= 3)
  {
    v4 = *(v3 + 16);
    v5 = *(v3 + 24);
    v6 = result;
    sub_1D5D0AFBC(v4);
    sub_1D5D0AFBC(v5);
    sub_1D5D0AFDC(v6, a2, v4, v5);
    sub_1D5D0AFCC(v4);
    return sub_1D5D0AFCC(v5);
  }

  return result;
}

uint64_t FormatImageNodeStyle.Selector.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v5 = result;
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 104);
  v22 = *(v2 + 88);
  v23 = v8;
  v24 = *(v2 + 120);
  v25 = *(v2 + 136);
  v9 = *(v2 + 72);
  v21[0] = *(v2 + 56);
  v21[1] = v9;
  v10 = *(v2 + 144);
  v11 = *(v2 + 176);
  v12 = *(v2 + 200);
  v19 = *(v2 + 192);
  v20 = *(v2 + 184);
  v13 = *(v2 + 208);
  if ((~v6 & 0xF000000000000007) != 0)
  {
    v26 = v6;

    FormatBackground.bind(binder:context:)(v5, a2);
    if (v3)
    {
    }
  }

  if (v7)
  {
    result = sub_1D620E744(v5, a2, v7);
    if (v3)
    {
      return result;
    }
  }

  if (v25 != 254)
  {
    v26 = v22;
    swift_retain_n();
    FormatColor.bind(binder:context:)(v5, a2);
    v15 = v3;
    if (v3)
    {

      return sub_1D5D0ABCC(v21, &qword_1EDF33718, &type metadata for FormatShadow);
    }

    if (v25 <= 2u)
    {
      if (v25)
      {
        if (v25 == 1)
        {
          sub_1D625E06C(v5, a2);
          result = sub_1D5D0ABCC(v21, &qword_1EDF33718, &type metadata for FormatShadow);
          v14 = v12;
          goto LABEL_9;
        }

        goto LABEL_40;
      }
    }

    else
    {
      if (v25 <= 4u)
      {
        if (v25 != 3)
        {
          sub_1D625E06C(v5, a2);
          v14 = v12;
          goto LABEL_41;
        }

LABEL_40:
        sub_1D625E06C(v5, a2);
        v14 = v12;
        sub_1D625E06C(v5, a2);
LABEL_41:
        v15 = 0;
        goto LABEL_42;
      }

      if (v25 == 5)
      {
        sub_1D625E06C(v5, a2);
        v14 = v12;
        sub_1D625E06C(v5, a2);
        v15 = 0;
LABEL_42:
        result = sub_1D5D0ABCC(v21, &qword_1EDF33718, &type metadata for FormatShadow);
        v3 = v15;
        goto LABEL_9;
      }
    }

    v14 = v12;
    goto LABEL_42;
  }

  v14 = v12;
LABEL_9:
  if ((~v10 & 0xF000000000000007) == 0 || (v26 = v10, , FormatColor.bind(binder:context:)(v5, a2), result = , !v3))
  {
    if (v11 >= 3)
    {
      if (v11 != 3)
      {
        v16 = *(v11 + 16);
        v17 = *(v11 + 24);
        sub_1D5D0AF9C(v11);
        sub_1D5D0AFBC(v16);
        sub_1D5D0AFBC(v17);
        sub_1D5D0AFDC(v5, a2, v16, v17);
        sub_1D5D0AFCC(v16);
        sub_1D5D0AFCC(v17);
        result = sub_1D5D0AFAC(v11);
        if (v3)
        {
          return result;
        }
      }
    }

    else
    {
      result = sub_1D5D0AFAC(v11);
    }

    if (!v20 || (result = sub_1D620B270(v5, a2, v20), !v3))
    {
      if (!v19 || (result = sub_1D6220E24(v5, a2, v19), !v3))
      {
        if (!v14)
        {

          goto LABEL_37;
        }

        if (v14 != 1)
        {
          sub_1D62B5D88(v14);

          sub_1D62125B0(v5, a2, v14);

          if (v3)
          {
            v18 = v14;
            return sub_1D62B5D44(v18);
          }

LABEL_37:
          if (v13)
          {

            sub_1D62125B0(v5, a2, v13);
          }

          v18 = v14;
          return sub_1D62B5D44(v18);
        }
      }
    }
  }

  return result;
}

unint64_t sub_1D6259258(unint64_t result, uint64_t a2)
{
  v3 = *v2;
  if (*v2 >= 3)
  {
    v4 = *(v3 + 16);
    v5 = *(v3 + 24);
    v6 = result;
    sub_1D5D0AFBC(v4);
    sub_1D5D0AFBC(v5);
    sub_1D5D0AFDC(v6, a2, v4, v5);
    sub_1D5D0AFCC(v4);
    return sub_1D5D0AFCC(v5);
  }

  return result;
}

uint64_t FormatIssueCoverNode.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v4 = v2;
  v20 = v2[4];
  sub_1D5C82CD8(v20);
  FormatSize.bind(binder:context:)(a1, a2);
  if (v3)
  {
    return sub_1D5C92A8C(v20);
  }

  sub_1D5C92A8C(v20);
  swift_beginAccess();
  v8 = v2[6];

  sub_1D620EA64(a1, a2, v8);

  if (v4[7])
  {
    FormatIssueCoverNodeStyle.bind(binder:context:)(a1, a2);
  }

  v9 = v4[8];
  if (v9)
  {
    swift_beginAccess();
    v10 = *(v9 + 72);
    if (v10)
    {

      sub_1D621397C(a1, a2, v10);
    }

    swift_beginAccess();
    v11 = *(v9 + 88);

    sub_1D621D544(a1, a2, v11);
  }

  v12 = v4[9];
  if (v12 < 0)
  {
    v17 = v12 & 0x7FFFFFFFFFFFFFFFLL;
    v18 = *(v17 + 16);
    v19 = *(v17 + 24);

    sub_1D6249398(a1, a2, v18, v19);
  }

  result = swift_beginAccess();
  v13 = v4[11];
  if (v13 >> 62 == 1)
  {
    v14 = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v15 = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    sub_1D5EB1500(v4[11]);
    sub_1D5EB1500(v14);

    sub_1D624919C(a1, a2, v14, v15);
    sub_1D5EB15C4(v14);

    result = sub_1D5EB15C4(v13);
  }

  if (v4[17])
  {
    v16 = v4[21];

    sub_1D5DEA234(v16);

    FormatFlexBoxNodeItem.bind(binder:context:)(a1, a2);

    sub_1D5CBF568(v16);
  }

  return result;
}

uint64_t FormatIssueCoverNodeStyle.Selector.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v5 = result;
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 104);
  v15 = *(v2 + 88);
  v16 = v8;
  v17 = *(v2 + 120);
  v18 = *(v2 + 136);
  v9 = *(v2 + 72);
  v14[0] = *(v2 + 56);
  v14[1] = v9;
  if (!v6 || (result = sub_1D620B270(result, a2, v6), !v3))
  {
    if (!v7 || (result = sub_1D620E744(v5, a2, v7), !v3))
    {
      v10 = v18;
      if (v18 != 254)
      {
        v19 = v15;
        sub_1D62B5354(v14, v13, &qword_1EDF33718, &type metadata for FormatShadow);

        FormatColor.bind(binder:context:)(v5, a2);
        if (v3)
        {

          return sub_1D5D0ABCC(v14, &qword_1EDF33718, &type metadata for FormatShadow);
        }

        if (v10 <= 2)
        {
          if (!v10)
          {
            return sub_1D5D0ABCC(v14, &qword_1EDF33718, &type metadata for FormatShadow);
          }

          if (v10 != 1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          if (v10 > 4)
          {
            if (v10 != 5)
            {
              return sub_1D5D0ABCC(v14, &qword_1EDF33718, &type metadata for FormatShadow);
            }

            goto LABEL_17;
          }

          if (v10 == 3)
          {
LABEL_17:
            sub_1D625E06C(v5, a2);
            v11 = v5;
            v12 = a2;
            goto LABEL_18;
          }
        }

        v11 = v5;
        v12 = a2;
LABEL_18:
        sub_1D625E06C(v11, v12);
        return sub_1D5D0ABCC(v14, &qword_1EDF33718, &type metadata for FormatShadow);
      }
    }
  }

  return result;
}

uint64_t FormatItem.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v6 = v2[9];
  v7 = v2[11];
  v9 = v2[13];
  v8 = v2[14];
  if (!v2[10] || (result = FormatItemNodeStyle.bind(binder:context:)(a1, a2), !v3))
  {

    sub_1D62160B4(a1, a2, v7);

    if (!v3)
    {

      sub_1D6213004(a1, a2, v9);

      sub_1D62212CC(a1, a2, v8);

      sub_1D6215F90(a1, a2, v6);
    }
  }

  return result;
}

unint64_t FormatItemNodeStyle.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_1D5B54684(0, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v24 - v9;
  v34 = *(v2 + 112);
  v11 = *(v2 + 64);
  v33[0] = *(v2 + 48);
  v33[1] = v11;
  v12 = *(v2 + 96);
  v33[2] = *(v2 + 80);
  v33[3] = v12;
  v13 = *&v33[0];
  if ((v34 & 0xFE) != 0x7E && (*&v33[0] & 0xF000000000000007) != 0xF000000000000007)
  {
    *&v30 = *&v33[0];
    sub_1D62B5354(v33, v24, &qword_1EDF270D0, &type metadata for FormatPreviewParameters);
    sub_1D5CFCFAC(v13);
    FormatColor.bind(binder:context:)(a1, a2);
    if (v3)
    {
      sub_1D5D0ABCC(v33, &qword_1EDF270D0, &type metadata for FormatPreviewParameters);
    }

    sub_1D5D0ABCC(v33, &qword_1EDF270D0, &type metadata for FormatPreviewParameters);
  }

  v16 = *(v2 + 176);
  if (v16 != 255)
  {
    v17 = *(v2 + 136);
    v30 = *(v2 + 120);
    v31 = v17;
    v32[0] = *(v2 + 152);
    *&v32[1] = *(v2 + 168);
    BYTE8(v32[1]) = v16;
    v24[0] = v30;
    v24[1] = v17;
    v24[2] = v32[0];
    v25 = *&v32[1];
    v26 = v16;
    sub_1D62B5E68(v24, &v27);
    FormatCellSelection.bind(binder:context:)(a1, a2);
    if (v3)
    {
      v27 = v30;
      v28 = v31;
      v29[0] = v32[0];
      *(v29 + 9) = *(v32 + 9);
      return sub_1D62B5EC4(&v27);
    }

    v27 = v30;
    v28 = v31;
    v29[0] = v32[0];
    *(v29 + 9) = *(v32 + 9);
    sub_1D62B5EC4(&v27);
  }

  sub_1D5C00D70(v2 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_cellAction, v10, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
  v18 = type metadata accessor for FormatItemNodeAction();
  if ((*(*(v18 - 8) + 48))(v10, 1, v18) == 1)
  {
    sub_1D5B6EF64(v10, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
  }

  else
  {
    FormatItemNodeAction.bind(binder:context:)(a1, a2);
    result = sub_1D62B51D0(v10, type metadata accessor for FormatItemNodeAction);
    if (v3)
    {
      return result;
    }
  }

  v19 = *(v2 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle);
  if (v19 >= 3)
  {
    if (v19 != 3)
    {
      v22 = *(v2 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle);
      v23 = *(v2 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle + 8);
      sub_1D62B5DD0(v19);
      sub_1D620B270(a1, a2, v22);
      if (v3)
      {
        return sub_1D62B5E14(v22);
      }

      sub_1D620B270(a1, a2, v23);
      sub_1D62B5E14(v22);
    }
  }

  else
  {
    sub_1D62B5E14(v19);
  }

  v20 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle__selectors;
  swift_beginAccess();
  v21 = *(v4 + v20);

  sub_1D62188B8(a1, a2, v21);
}

uint64_t FormatItemBindingsNode.bindChildren(binder:context:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v6 = v2[7];

  sub_1D6213004(a1, a2, v6);

  if (!v3)
  {
    swift_beginAccess();
    v8 = v2[8];

    sub_1D62160B4(a1, a2, v8);

    swift_beginAccess();
    v9 = v2[9];

    sub_1D6215F90(a1, a2, v9);
  }

  return result;
}

unint64_t FormatItemNode.bindChildren(binder:context:)(unint64_t a1, uint64_t a2)
{
  v4 = v2;
  v16 = v2[6];
  sub_1D5C82CD8(v16);
  FormatSize.bind(binder:context:)(a1, a2);
  if (v3)
  {
    return sub_1D5C92A8C(v16);
  }

  sub_1D5C92A8C(v16);
  swift_beginAccess();
  v8 = v2[8];

  sub_1D620EA64(a1, a2, v8);

  swift_beginAccess();
  v9 = v4[9];

  sub_1D62160B4(a1, a2, v9);

  swift_beginAccess();
  v10 = v4[11];

  sub_1D6213004(a1, a2, v10);

  swift_beginAccess();
  v11 = v4[14];
  if (v11 >> 62 == 1)
  {
    v12 = *((v11 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v13 = *((v11 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    sub_1D5EB1500(v4[14]);
    sub_1D5EB1500(v12);

    sub_1D624919C(a1, a2, v12, v13);
    sub_1D5EB15C4(v12);

    sub_1D5EB15C4(v11);
  }

  swift_beginAccess();
  v14 = v4[15];

  sub_1D6230F7C(a1, a2, v14);

  if (v4[16])
  {
    v15 = v4[20];

    sub_1D5DEA234(v15);

    FormatFlexBoxNodeItem.bind(binder:context:)(a1, a2);

    sub_1D5CBF568(v15);
  }

  return result;
}

uint64_t FormatItemNodeAction.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for FormatCommandOpenURL();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for FormatItemNodeAction();
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v15[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D62B50EC(v3, v13, type metadata accessor for FormatItemNodeAction);
  result = swift_getEnumCaseMultiPayload();
  if ((result - 2) >= 6)
  {
    if (result)
    {
      sub_1D5D5E33C(v13, v9, type metadata accessor for FormatCommandOpenURL);
      sub_1D5F86DA0(a2);
      return sub_1D62B51D0(v9, type metadata accessor for FormatCommandOpenURL);
    }

    else
    {
      sub_1D62B5F18(v13, v16);
      sub_1D62B5F18(v16, v15);
      FormatItemNodeActionBinding.bind(binder:context:)(a1, a2);
      return sub_1D62B5F74(v16);
    }
  }

  return result;
}

void FormatItemNodeActionBinding.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = v2[3];
  if (*(v2 + 50))
  {
    v5 = 8;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 & 0xFFFFFFF8 | (*(v2 + 24) >> 11) & 7;
  if (v6 <= 3)
  {
    if ((v6 - 1) < 2)
    {
      return;
    }

    if (v6)
    {
      if (v2[2] == 1 && (v3 & 0xF000000000000007) != 0xF000000000000007)
      {
        goto LABEL_30;
      }

      return;
    }

    v7 = (v4 >> 3) & 7;
    if (v7 <= 1)
    {
      if (v7)
      {
        return;
      }
    }

    else if (v7 != 2 && v7 != 3)
    {
      v8 = v2[3];
      if (v8 >> 6 >= 2)
      {
        if ((v8 & 7) == 1)
        {
          goto LABEL_10;
        }

        return;
      }
    }
  }

  else
  {
    if (((1 << v6) & 0x330) != 0)
    {
      return;
    }

    if (v6 != 6)
    {
      FormatString.bind(binder:context:)(a1, a2);
      return;
    }

    if (v4 >> 6 && v4 >> 6 != 1)
    {
      if ((v4 & 0x3F) != 1)
      {
        return;
      }

LABEL_10:
      if ((v2[1] & 0xF000000000000007) == 0xF000000000000007)
      {
        return;
      }

      goto LABEL_30;
    }
  }

  if (v2[2] == 1 && (v3 & 0xF000000000000007) != 0xF000000000000007)
  {
LABEL_30:

    FormatTextContent.bind(binder:context:)(a1, a2);
  }
}

uint64_t FormatPreviewParameters.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  if ((~*v2 & 0xF000000000000007) != 0)
  {
    v3 = result;

    FormatColor.bind(binder:context:)(v3, a2);
  }

  return result;
}

uint64_t FormatItemNodeSwipeActionStyle.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v4 = *v2;
  if (*v2 >= 3)
  {
    v5 = v2[1];
    v6 = result;
    result = sub_1D620B270(result, a2, v4);
    if (!v3)
    {
      return sub_1D620B270(v6, a2, v5);
    }
  }

  return result;
}

unint64_t FormatItemNodeStyle.Selector.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v4 = v2;
  v51 = a1;
  v6 = type metadata accessor for FormatCommandOpenURL();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FormatItemNodeAction();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v43 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B54684(0, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v36 - v16;
  v50 = *(v4 + 80);
  v18 = *(v4 + 32);
  v49[0] = *(v4 + 16);
  v49[1] = v18;
  v19 = *(v4 + 64);
  v49[2] = *(v4 + 48);
  v49[3] = v19;
  if ((v50 & 0xFE) != 0x7E)
  {
    v20 = *&v49[0];
    if ((*&v49[0] & 0xF000000000000007) != 0xF000000000000007)
    {
      v42 = &v36 - v16;
      v47[0] = *&v49[0];
      sub_1D62B5354(v49, &v44, &qword_1EDF270D0, &type metadata for FormatPreviewParameters);
      sub_1D5CFCFAC(v20);
      FormatColor.bind(binder:context:)(v51, a2);
      if (v3)
      {

        return sub_1D5D0ABCC(v49, &qword_1EDF270D0, &type metadata for FormatPreviewParameters);
      }

      sub_1D5D0ABCC(v49, &qword_1EDF270D0, &type metadata for FormatPreviewParameters);
      v17 = v42;
    }
  }

  v22 = *(v4 + 88);
  *(v46 + 9) = *(v4 + 129);
  v23 = *(v4 + 104);
  v44 = v22;
  v45 = v23;
  v46[0] = *(v4 + 120);
  if (BYTE8(v46[1]) > 1u)
  {
    goto LABEL_15;
  }

  v42 = a2;
  v24 = v44;
  v25 = *&v46[1];
  if (BYTE8(v46[1]))
  {
    if ((v44 & 0xF000000000000007) != 0xD000000000000007 && (v44 & 0xF000000000000007) != 0xF000000000000007)
    {
      v41 = v9;
      v35 = *(&v44 + 1);
      v48[0] = v44;
      v39 = *(&v45 + 1);
      v40 = v45;
      v37 = *(&v46[0] + 1);
      v38 = *&v46[0];
      sub_1D62B5354(&v44, v47, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
      sub_1D62B54E4(v24, v35, v40, v39, v38, v37, v25, 1);
      a2 = v42;
      FormatFloat.bind(binder:context:)(v51, v42);
      if (v3)
      {
        sub_1D5D0ABCC(&v44, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
      }

      sub_1D5D0ABCC(&v44, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);

      v9 = v41;
      goto LABEL_15;
    }

LABEL_14:
    sub_1D5D0ABCC(&v44, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
    a2 = v42;
    goto LABEL_15;
  }

  if ((*&v46[1] & 0xF000000000000007) == 0xD000000000000007)
  {
    goto LABEL_14;
  }

  v40 = *&v46[1] & 0xF000000000000007;
  v41 = v9;
  if ((~v44 & 0xF000000000000007) != 0)
  {
    v48[0] = v44;
    sub_1D62B5354(&v44, v47, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
    sub_1D62B5354(&v44, v47, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
    sub_1D5CFCFAC(v24);
    FormatColor.bind(binder:context:)(v51, v42);
    if (v3)
    {

      sub_1D5D0ABCC(&v44, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
      return sub_1D5D0ABCC(&v44, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
    }
  }

  else
  {
    v26 = *(&v44 + 1);
    v38 = *(&v45 + 1);
    v39 = v45;
    v36 = *(&v46[0] + 1);
    v37 = *&v46[0];
    sub_1D62B5354(&v44, v47, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
    sub_1D62B54E4(v24, v26, v39, v38, v37, v36, v25, 0);
  }

  a2 = v42;
  if (v40 == 0xF000000000000007)
  {
    sub_1D5D0ABCC(&v44, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
    sub_1D5D0ABCC(&v44, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
    v9 = v41;
  }

  else
  {
    v47[0] = v25;

    FormatFloat.bind(binder:context:)(v51, a2);

    sub_1D5D0ABCC(&v44, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
    result = sub_1D5D0ABCC(&v44, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
    if (v3)
    {
      return result;
    }

    v9 = v41;
  }

LABEL_15:
  v27 = type metadata accessor for FormatItemNodeStyle.Selector(0);
  sub_1D5C00D70(v4 + *(v27 + 28), v17, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
  if ((*(v11 + 48))(v17, 1, v10) == 1)
  {
    result = sub_1D5B6EF64(v17, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
    goto LABEL_20;
  }

  v28 = a2;
  v29 = v43;
  sub_1D62B50EC(v17, v43, type metadata accessor for FormatItemNodeAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 2) >= 6)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1D5D5E33C(v29, v9, type metadata accessor for FormatCommandOpenURL);
      a2 = v28;
      sub_1D5F86DA0(v28);
      if (!v3)
      {
        sub_1D62B51D0(v9, type metadata accessor for FormatCommandOpenURL);
        goto LABEL_19;
      }

      sub_1D62B51D0(v9, type metadata accessor for FormatCommandOpenURL);
    }

    else
    {
      sub_1D62B5F18(v29, v47);
      sub_1D62B5F18(v47, v48);
      a2 = v28;
      FormatItemNodeActionBinding.bind(binder:context:)(v51, v28);
      if (!v3)
      {
        sub_1D62B5F74(v47);
        goto LABEL_19;
      }

      sub_1D62B5F74(v47);
    }

    return sub_1D62B51D0(v17, type metadata accessor for FormatItemNodeAction);
  }

  a2 = v28;
LABEL_19:
  result = sub_1D62B51D0(v17, type metadata accessor for FormatItemNodeAction);
LABEL_20:
  v31 = (v4 + *(v27 + 40));
  v32 = *v31;
  if (*v31 >= 4)
  {
    v33 = v31[1];
    sub_1D62B5DD0(*v31);
    v34 = v51;
    sub_1D620B270(v51, a2, v32);
    if (!v3)
    {
      sub_1D620B270(v34, a2, v33);
    }

    return sub_1D62B5E14(v32);
  }

  return result;
}

uint64_t sub_1D625ADCC(uint64_t a1, uint64_t a2)
{
  v6 = v2[1];
  result = sub_1D620B270(a1, a2, *v2);
  if (!v3)
  {
    return sub_1D620B270(a1, a2, v6);
  }

  return result;
}

uint64_t sub_1D625AE14(uint64_t result, uint64_t a2)
{
  v4 = *v2;
  if (*v2 >= 3)
  {
    v5 = v2[1];
    v6 = result;
    result = sub_1D620B270(result, a2, v4);
    if (!v3)
    {
      return sub_1D620B270(v6, a2, v5);
    }
  }

  return result;
}

uint64_t sub_1D625AE80(uint64_t result, uint64_t a2)
{
  v5 = result;
  v6 = v2[1];
  v7 = v2[2];
  if ((~*v2 & 0xF000000000000007) == 0 || (, FormatColor.bind(binder:context:)(v5, a2), result = , !v3))
  {
    if ((~v6 & 0xF000000000000007) == 0 || (, FormatFloat.bind(binder:context:)(v5, a2), result = , !v3))
    {
      if ((~v7 & 0xF000000000000007) != 0)
      {

        FormatFloat.bind(binder:context:)(v5, a2);
      }
    }
  }

  return result;
}

unint64_t FormatLayeredMediaNode.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = v2[4];
  if ((v7 & 0x8000000000000000) == 0)
  {
    if (!v2[5])
    {
      goto LABEL_8;
    }

    goto LABEL_3;
  }

  v9 = v7 & 0x7FFFFFFFFFFFFFFFLL;
  v10 = *(v9 + 16);
  v11 = *(v9 + 24);

  sub_1D6248FB8(a1, a2, v10, v11);
  if (v3)
  {
  }

  if (v4[5])
  {
LABEL_3:
    result = FormatLayeredMediaNodeStyle.bind(binder:context:)(a1, a2);
    if (v3)
    {
      return result;
    }
  }

LABEL_8:
  v12 = v4[6];
  if (v12)
  {
    swift_beginAccess();
    v13 = *(v12 + 72);
    if (v13)
    {

      sub_1D621397C(a1, a2, v13);
      if (v3)
      {
      }
    }

    swift_beginAccess();
    v14 = *(v12 + 88);

    sub_1D621D544(a1, a2, v14);
    if (v3)
    {
    }
  }

  v20 = v4[7];
  sub_1D5C82CD8(v20);
  FormatSize.bind(binder:context:)(a1, a2);
  result = sub_1D5C92A8C(v20);
  if (!v3)
  {
    swift_beginAccess();
    v15 = v4[9];

    sub_1D620EA64(a1, a2, v15);

    result = swift_beginAccess();
    v16 = v4[11];
    if (v16 >> 62 == 1)
    {
      v17 = *((v16 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v18 = *((v16 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(v4[11]);
      sub_1D5EB1500(v17);

      sub_1D624919C(a1, a2, v17, v18);
      sub_1D5EB15C4(v17);

      result = sub_1D5EB15C4(v16);
    }

    if (v4[16])
    {
      v19 = v4[20];

      sub_1D5DEA234(v19);

      FormatFlexBoxNodeItem.bind(binder:context:)(a1, a2);

      sub_1D5CBF568(v19);
    }
  }

  return result;
}

uint64_t sub_1D625B32C(uint64_t result, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if ((*v3 & 0x8000000000000000) != 0)
  {
    v5 = *v3 & 0x7FFFFFFFFFFFFFFFLL;
    v6 = *(v5 + 0x10);
    v7 = *(v5 + 24);
    v8 = result;

    a3(v8, a2, v6, v7);
  }

  return result;
}

uint64_t FormatLayeredMediaNodeStyle.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v6 = *(v2 + 48);

  sub_1D6233270(a1, a2, v6);
  if (v3)
  {
  }

  v8 = *(v2 + 56);
  if (v8)
  {
    result = sub_1D620B270(a1, a2, v8);
  }

  if ((~*(v2 + 64) & 0xF000000000000007) != 0)
  {
    *&v23[0] = *(v2 + 64);

    FormatBackground.bind(binder:context:)(a1, a2);
  }

  v9 = *(v2 + 72);
  if (v9)
  {
    result = sub_1D620E744(a1, a2, v9);
  }

  v10 = *(v2 + 152);
  v24 = *(v2 + 136);
  v25 = v10;
  v26 = *(v2 + 168);
  v27 = *(v2 + 184);
  v11 = v27;
  v12 = *(v2 + 120);
  v23[0] = *(v2 + 104);
  v23[1] = v12;
  if (v27 != 254)
  {
    v28 = v24;
    sub_1D62B5354(v23, &v20, &qword_1EDF33718, &type metadata for FormatShadow);

    FormatColor.bind(binder:context:)(a1, a2);

    if (v11 <= 2)
    {
      if (v11)
      {
        sub_1D625E06C(a1, a2);
        result = sub_1D5D0ABCC(v23, &qword_1EDF33718, &type metadata for FormatShadow);
        goto LABEL_11;
      }
    }

    else
    {
      if (v11 <= 4)
      {
        v18 = a1;
        v19 = a2;
        if (v11 != 3)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }

      if (v11 == 5)
      {
        v18 = a1;
        v19 = a2;
LABEL_25:
        sub_1D625E06C(v18, v19);
        v18 = a1;
        v19 = a2;
LABEL_26:
        sub_1D625E06C(v18, v19);
      }
    }

    result = sub_1D5D0ABCC(v23, &qword_1EDF33718, &type metadata for FormatShadow);
  }

LABEL_11:
  v13 = *(v2 + 208);
  if (v13 != 255)
  {
    v14 = *(v2 + 200);
    v20 = *(v2 + 192);
    v21 = v14;
    v22 = v13 & 1;
    sub_1D6189668(v20, v14, v13);
    sub_1D60ECF10(a2);
    result = sub_1D5D2F2C8(v20, v21, v22);
  }

  v15 = *(v2 + 232);
  if (v15 != 255)
  {
    v16 = *(v2 + 224);
    v20 = *(v2 + 216);
    v21 = v16;
    v22 = v15 & 1;
    sub_1D6189668(v20, v16, v15);
    sub_1D60ECF10(a2);
    result = sub_1D5D2F2C8(v20, v21, v22);
  }

  v17 = *(v2 + 240);
  if (v17)
  {
    return sub_1D620E8A0(a1, a2, v17);
  }

  return result;
}

uint64_t sub_1D625B7B4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if ((*v5 & 0x8000000000000000) != 0)
  {
    v7 = *v5 & 0x7FFFFFFFFFFFFFFFLL;
    v8 = *(v7 + 0x10);
    v9 = *(v7 + 24);
    v10 = result;

    a5(v10, a2, v8, v9);
  }

  return result;
}

uint64_t FormatLayeredMediaNodeStyle.Selector.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v5 = result;
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 112);
  v28 = *(v2 + 96);
  v29 = v9;
  v30 = *(v2 + 128);
  v31 = *(v2 + 144);
  v10 = *(v2 + 80);
  v27[0] = *(v2 + 64);
  v27[1] = v10;
  v11 = *(v2 + 152);
  v12 = *(v2 + 160);
  v13 = *(v2 + 168);
  v21 = *(v2 + 184);
  v22 = *(v2 + 176);
  v23 = *(v2 + 192);
  v14 = *(v2 + 200);
  if (v6)
  {
    result = sub_1D620B270(result, a2, v6);
    if (v3)
    {
      return result;
    }
  }

  if ((~v7 & 0xF000000000000007) != 0)
  {
    v24 = v7;

    FormatBackground.bind(binder:context:)(v5, a2);
    if (v3)
    {
    }
  }

  if (v8)
  {
    result = sub_1D620E744(v5, a2, v8);
    if (v3)
    {
      return result;
    }
  }

  v15 = v3;
  v16 = v31;
  if (v31 != 254)
  {
    v32 = v28;
    sub_1D62B5354(v27, &v24, &qword_1EDF33718, &type metadata for FormatShadow);

    FormatColor.bind(binder:context:)(v5, a2);
    if (v3)
    {

      return sub_1D5D0ABCC(v27, &qword_1EDF33718, &type metadata for FormatShadow);
    }

    if (v16 <= 2)
    {
      if (v16)
      {
        if (v16 == 1)
        {
          v17 = v5;
          v18 = a2;
LABEL_30:
          sub_1D625E06C(v17, v18);
          result = sub_1D5D0ABCC(v27, &qword_1EDF33718, &type metadata for FormatShadow);
          v15 = 0;
          goto LABEL_10;
        }

LABEL_29:
        sub_1D625E06C(v5, a2);
        v17 = v5;
        v18 = a2;
        goto LABEL_30;
      }
    }

    else
    {
      if (v16 <= 4)
      {
        if (v16 == 3)
        {
          goto LABEL_29;
        }

        v19 = v5;
        v20 = a2;
        goto LABEL_32;
      }

      if (v16 == 5)
      {
        sub_1D625E06C(v5, a2);
        v19 = v5;
        v20 = a2;
LABEL_32:
        sub_1D625E06C(v19, v20);
        v15 = 0;
      }
    }

    result = sub_1D5D0ABCC(v27, &qword_1EDF33718, &type metadata for FormatShadow);
  }

LABEL_10:
  if (v13 != 255)
  {
    v24 = v11;
    v25 = v12;
    v26 = v13 & 1;
    sub_1D6189668(v11, v12, v13);
    sub_1D60ECF10(a2);
    result = sub_1D5D2F2C8(v24, v25, v26);
    if (v15)
    {
      return result;
    }

    v15 = 0;
  }

  if (v23 == 255 || (v24 = v22, v25 = v21, v26 = v23 & 1, sub_1D6189668(v22, v21, v23), sub_1D60ECF10(a2), result = sub_1D5D2F2C8(v24, v25, v26), !v15))
  {
    if (v14)
    {
      return sub_1D620E8A0(v5, a2, v14);
    }
  }

  return result;
}

uint64_t FormatMediaTimingFunction.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  if (*(v2 + 32) == 1)
  {
    v5 = result;
    v7 = *(v2 + 16);
    v6 = *(v2 + 24);
    v8 = *(v2 + 8);
    result = sub_1D620B270(result, a2, *v2);
    if (!v3)
    {
      sub_1D620B270(v5, a2, v8);
      sub_1D620B270(v5, a2, v7);
      return sub_1D620B270(v5, a2, v6);
    }
  }

  return result;
}

uint64_t sub_1D625BD00(uint64_t a1, uint64_t a2)
{
  v6 = v2[1];
  v8 = v2[2];
  v7 = v2[3];
  result = sub_1D620B270(a1, a2, *v2);
  if (!v3)
  {
    sub_1D620B270(a1, a2, v6);
    sub_1D620B270(a1, a2, v8);
    return sub_1D620B270(a1, a2, v7);
  }

  return result;
}

uint64_t sub_1D625BD7C(uint64_t result, uint64_t a2)
{
  if (*(v2 + 32) == 1)
  {
    v5 = result;
    v7 = *(v2 + 16);
    v6 = *(v2 + 24);
    v8 = *(v2 + 8);
    result = sub_1D620B270(result, a2, *v2);
    if (!v3)
    {
      sub_1D620B270(v5, a2, v8);
      sub_1D620B270(v5, a2, v7);
      return sub_1D620B270(v5, a2, v6);
    }
  }

  return result;
}

void sub_1D625BE1C(unint64_t a1, uint64_t a2)
{
  v4 = a2;
  v6 = v2[1];
  v8 = v2[3];
  v7 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2[8];
  if ((~v6 & 0xF000000000000007) != 0 || (v2[3] & 7) != 7)
  {
    v20 = v2[5];
    v21 = v2[8];
    v14 = *v2;
    v15 = v2[2];
    if ((v8 & 4) != 0)
    {
      sub_1D62B7098(v14, v6, v15, v8);
      FormatTextContent.bind(binder:context:)(a1, a2);
      sub_1D62B7110(v14, v6, v15, v8);
      if (v3)
      {
        return;
      }

      v4 = a2;
    }

    else
    {
      sub_1D62B7098(*v2, v6, v2[2], v8);
      sub_1D6245970(a1, a2, v14, v6, v15, v8);
      sub_1D62B7110(v14, v6, v15, v8);
      if (v3)
      {
        return;
      }

      v4 = a2;
    }

    v9 = v20;
    v11 = v21;
  }

  if ((~(v7 & v10) & 0x3000000000000007) == 0 || ((v10 & 0x2000000000000000) != 0 ? (v19 = v9, sub_1D62B6FC0(v7, v9, v10), FormatSyncImageContent.bind(binder:context:)(a1, v4), v17 = v7, v18 = v19) : (v16 = v9, sub_1D62B6FC0(v7, v9, v10), sub_1D6209F10(a1, v4, v7, v16), v17 = v7, v18 = v16), sub_1D62B7020(v17, v18, v10), !v3))
  {
    sub_1D6223ECC(a1, v4, v11);
  }
}

void FormatMenuTitle.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  if ((v3 & 4) != 0)
  {
    FormatTextContent.bind(binder:context:)(a1, a2);
  }

  else
  {
    sub_1D6245970(a1, a2, *v2, v2[1], v2[2], v3);
  }
}

void FormatMenuImage.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  if ((v2[2] & 0x2000000000000000) != 0)
  {
    FormatSyncImageContent.bind(binder:context:)(a1, a2);
  }

  else
  {
    sub_1D6209F10(a1, a2, *v2, v2[1]);
  }
}

void FormatMenuGroupData.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 56);
  if (v6 != 255 && (v6 & 1) != 0)
  {
    v15 = *(v2 + 56);
    v10 = *v2;
    v11 = *(v2 + 8);
    v12 = *(*v2 + 24);
    sub_1D5F26358(v10, v11, 1);
    sub_1D621E2E4(a1, a2, v12);
    if (v3)
    {
      sub_1D62B5FEC(v10, v11, v6);
      return;
    }

    sub_1D6251BE4(a1, a2);
    sub_1D62B5FEC(v10, v11, v6);
    v9 = v15;
  }

  if (v8 != 255 && (v8 & 1) != 0)
  {
    v13 = v9;
    v14 = *(v7 + 24);
    sub_1D62B5FC8(v7, 1);
    sub_1D621E140(a1, a2, v14);
    if (v3)
    {
      sub_1D62B5FD4(v7, v8);
      return;
    }

    sub_1D6251AD4(a1, a2, *(v7 + 32));
    sub_1D62B5FD4(v7, v8);
    v9 = v13;
  }

  sub_1D621E474(a1, a2, v9);
}

uint64_t FormatMenuTitleData.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  if (v2[16] == 1)
  {
    v4 = *(*v2 + 24);
    v5 = result;
    result = sub_1D621E2E4(result, a2, v4);
    if (!v3)
    {
      return sub_1D6251BE4(v5, a2);
    }
  }

  return result;
}

uint64_t FormatMenuImageData.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  if (v2[8] == 1)
  {
    v4 = *v2;
    v5 = *(*v2 + 24);
    v6 = result;
    result = sub_1D621E140(result, a2, v5);
    if (!v3)
    {
      return sub_1D6251AD4(v6, a2, *(v4 + 32));
    }
  }

  return result;
}

uint64_t sub_1D625C2EC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 61;
  if ((a3 >> 61) <= 1)
  {
    if (v6)
    {
      v19 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v28 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      *v29 = v19;
      *&v29[16] = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      v30 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
      v20 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v27 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v21 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v22 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      v25[1] = v20;
      v25[2] = v21;
      v25[3] = v22;
      v26 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
      v25[0] = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      sub_1D62B72DC(&v27, v24);
      sub_1D625BE1C(v5, a2);
      return sub_1D62B7338(&v27);
    }

    v11 = *(a3 + 32);
    v27 = *(a3 + 16);
    v28 = v11;
    v12 = *(a3 + 64);
    *v29 = *(a3 + 48);
    *&v29[16] = v12;
    v13 = v27;
    v14 = *(&v28 + 1);
    if ((BYTE8(v28) & 4) != 0)
    {
      v24[0] = v27;
      sub_1D5CFBAA8(&v27, v25);
      FormatTextContent.bind(binder:context:)(v5, a2);
      if (!v3)
      {
LABEL_14:
        if ((*&v29[16] & 0x2000000000000000) != 0)
        {
          *&v25[0] = *v29;
          FormatSyncImageContent.bind(binder:context:)(v5, a2);
        }

        else
        {
          sub_1D6209F10(v5, a2, *v29, *&v29[8]);
        }

        sub_1D625CCA8(v5, a2, *&v29[24]);
      }
    }

    else
    {
      v16 = *(&v27 + 1);
      v15 = v28;
      sub_1D5CFBAA8(&v27, v25);
      sub_1D6245970(v5, a2, v13, v16, v15, v14);
      if (!v3)
      {
        goto LABEL_14;
      }
    }

    return sub_1D5D08954(&v27);
  }

  if (v6 == 2)
  {
    v17 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v18 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

    sub_1D62433FC(v5, a2, v17, v18);
  }

  else if (v6 == 3)
  {
    v7 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v8 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v9 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v10 = *(v7 + 32);
    v27 = *(v7 + 16);
    v28 = v10;
    *v29 = *(v7 + 48);
    *&v29[15] = *(v7 + 63);

    FormatCommandBinding.bind(binder:context:)(v5, a2);
    if (!v3)
    {
      sub_1D62218D8(v5, a2, v8);
      sub_1D625C2EC(v5, a2, v9, v23);
    }
  }

  return result;
}

void sub_1D625C590(unint64_t a1, uint64_t a2)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  if ((v6 & 4) != 0)
  {
    FormatTextContent.bind(binder:context:)(a1, a2);
    if (v3)
    {
      return;
    }
  }

  else
  {
    sub_1D6245970(a1, a2, *v2, v2[1], v2[2], v6);
    if (v3)
    {
      return;
    }
  }

  if ((v9 & 0x2000000000000000) != 0)
  {
    FormatSyncImageContent.bind(binder:context:)(a1, a2);
  }

  else
  {
    sub_1D6209F10(a1, a2, v7, v8);
  }

  sub_1D625CCA8(a1, a2, v10);
}

uint64_t FormatMenuGroupableData.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v4 = *v2;
  v5 = *v2 >> 61;
  if (v5 <= 2)
  {
    v7 = result;
    if (v5)
    {
      v8 = (v4 & 0x1FFFFFFFFFFFFFFFLL);
      if (v5 == 1)
      {
        v9 = v8[2];
        v22[0] = v8[1];
        v22[1] = v9;
        v10 = v8[4];
        v22[2] = v8[3];
        v22[3] = v10;
        v11 = v8[2];
        v21[4] = v8[1];
        v21[5] = v11;
        v12 = v8[4];
        v21[6] = v8[3];
        v21[7] = v12;
        sub_1D62B6004(v22, v21);
        FormatMenuGroupData.bind(binder:context:)(v7, a2);
        return sub_1D62B6060(v22);
      }

      v19 = *(v8 + 2);
      v20 = *(v19 + 24);

      sub_1D621DA6C(v7, a2, v20);
      if (!v3)
      {
        sub_1D6251838(v7, a2, *(v19 + 32));
      }
    }

    v14 = *(v4 + 16);
    v13 = *(v4 + 24);
    v15 = *(v4 + 32);
    v16 = *(v4 + 40);
    v17 = *(v4 + 48);
    if (v15)
    {
      v23 = *(v4 + 32);
      v18 = *(v14 + 24);
      sub_1D5F26358(v14, v13, 1);
      sub_1D62B5FC8(v16, v17);

      sub_1D621E2E4(v7, a2, v18);
      if (v3)
      {
        sub_1D5F26348(v14, v13, 1);
        sub_1D5FC4E9C(v16, v17);
      }

      sub_1D6251BE4(v7, a2);
      v15 = v23;
      if (!v17)
      {
LABEL_18:
        sub_1D5F26348(v14, v13, v15);
        sub_1D5FC4E9C(v16, 0);
      }
    }

    else
    {
      sub_1D5F26358(*(v4 + 16), *(v4 + 24), 0);
      sub_1D62B5FC8(v16, v17);

      if (!v17)
      {
        goto LABEL_18;
      }
    }

    sub_1D621E140(v7, a2, *(v16 + 24));
    if (!v3)
    {
      sub_1D6251AD4(v7, a2, *(v16 + 32));
    }

    sub_1D5F26348(v14, v13, v15);
    sub_1D5FC4E9C(v16, 1);
  }

  return result;
}

uint64_t FormatMenuItemData.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v5 = result;
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  if (*(v2 + 16) == 1)
  {
    result = sub_1D621E2E4(result, a2, *(*v2 + 24));
    if (v3)
    {
      return result;
    }

    result = sub_1D6251BE4(v5, a2);
  }

  if (v7)
  {
    result = sub_1D621E140(v5, a2, *(v6 + 24));
    if (!v3)
    {
      return sub_1D6251AD4(v5, a2, *(v6 + 32));
    }
  }

  return result;
}

uint64_t FormatSyncImageContent.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v5 = result;
  v6 = *v2;
  v7 = *v2 >> 62;
  if (!v7)
  {
    v15 = *(v6 + 80);
    v29[3] = *(v6 + 64);
    v29[4] = v15;
    v29[5] = *(v6 + 96);
    v30 = *(v6 + 112);
    v16 = *(v6 + 32);
    v29[0] = *(v6 + 16);
    v29[1] = v16;
    v29[2] = *(v6 + 48);
    v17 = *(v6 + 96);
    v26 = *(v6 + 80);
    v27 = v17;
    v28 = *(v6 + 112);
    v18 = *(v6 + 32);
    v22 = *(v6 + 16);
    v23 = v18;
    v19 = *(v6 + 64);
    v24 = *(v6 + 48);
    v25 = v19;
    sub_1D5D0322C(v29, v21);
    FormatSymbolImage.bind(binder:context:)(v5, a2);
    return sub_1D5D07BBC(v29);
  }

  v8 = v6 & 0x3FFFFFFFFFFFFFFFLL;
  if (v7 == 1)
  {
    v10 = *(v8 + 48);
    v9 = *(v8 + 56);
    v11 = *(v8 + 64);
    if (v11 > 1)
    {
      if (v11 != 2)
      {
        return result;
      }

      sub_1D5E433E0(v10, v9, 2u);
      sub_1D620B270(v5, a2, v10);
      if (!v3)
      {
        sub_1D620B270(v5, a2, v9);
      }

      v12 = v10;
      v13 = v9;
      v14 = 2;
    }

    else if (v11)
    {
      sub_1D5E433E0(v10, v9, 1u);
      sub_1D620B270(v5, a2, v10);
      v12 = v10;
      v13 = v9;
      v14 = 1;
    }

    else
    {
      sub_1D5E433E0(v10, v9, 0);
      sub_1D620B270(v5, a2, v10);
      v12 = v10;
      v13 = v9;
      v14 = 0;
    }

    return sub_1D5E4342C(v12, v13, v14);
  }

  else
  {
    v20 = *(v8 + 24);
    *&v29[0] = *(v8 + 16);
    swift_retain_n();

    FormatSyncImageContent.bind(binder:context:)(v5, a2);
    if (v3)
    {
    }

    else
    {

      sub_1D622B230(v5, a2, v20);
    }
  }
}

void sub_1D625CC10(uint64_t a1, uint64_t a2)
{
  if ((v2[2] & 0x2000000000000000) != 0)
  {
    FormatSyncImageContent.bind(binder:context:)(a1, a2);
  }

  else
  {
    sub_1D6209F10(a1, a2, *v2, v2[1]);
  }
}

uint64_t sub_1D625CC50(uint64_t result, uint64_t a2)
{
  if (v2[8] == 1)
  {
    v4 = *v2;
    v5 = *(*v2 + 24);
    v6 = result;
    result = sub_1D621E140(result, a2, v5);
    if (!v3)
    {
      return sub_1D6251AD4(v6, a2, *(v4 + 32));
    }
  }

  return result;
}

void sub_1D625CCA8(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for FormatCommandOpenURL();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v10 == 2)
    {
      v12 = a3 & 0x3FFFFFFFFFFFFFFFLL;
      v13 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v14 = *(v12 + 24);

      sub_1D6245CC4(a1, a2, v13, v14);
    }

    return;
  }

  if (!v10)
  {
    v11 = swift_projectBox();
    sub_1D62B50EC(v11, v9, type metadata accessor for FormatCommandOpenURL);
    sub_1D5F86DA0(a2);
    sub_1D62B51D0(v9, type metadata accessor for FormatCommandOpenURL);
    return;
  }

  v15 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v16 = *(v15 + 32);
  v29[0] = *(v15 + 16);
  v29[1] = v16;
  v17 = *(v15 + 48);
  *&v30[15] = *(v15 + 63);
  *v30 = v17;
  v18 = v29[0];
  if (v30[18])
  {
    v19 = 8;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19 & 0xFFFFFFF8 | (*&v30[16] >> 11) & 7;
  if (v20 > 4)
  {
    if (v20 > 6)
    {
      if (v20 != 7)
      {
        return;
      }

      v25 = v29[0];
      v26 = v16;
      v27 = *v30;
      v28 = *&v30[16] & 0xC7FF;

      sub_1D62B5248(v29, v24);
      FormatString.bind(binder:context:)(a1, a2);
LABEL_39:
      sub_1D5D085FC(v29);
      goto LABEL_40;
    }

    if (v20 == 5)
    {
      return;
    }

    if (BYTE8(v16) >> 6 && BYTE8(v16) >> 6 != 1)
    {
      v23 = BYTE8(v16) & 0x3F;
      if (v23 > 1)
      {
LABEL_27:
        if (v23 == 2)
        {
          return;
        }

        goto LABEL_45;
      }

      goto LABEL_44;
    }

LABEL_32:
    v21 = v16;
    if (v16 > 1u)
    {
LABEL_36:
      if (v21 == 2)
      {
        return;
      }

LABEL_45:
      sub_1D5D085FC(v29);
      return;
    }

    if (!v16)
    {
      goto LABEL_45;
    }

    if ((~*&v29[0] & 0xF000000000000007) == 0)
    {
      return;
    }

    *&v25 = *&v29[0];

    sub_1D62B5248(v29, v24);
    sub_1D5CFCFAC(v18);
    FormatTextContent.bind(binder:context:)(a1, a2);
    goto LABEL_48;
  }

  if (v20 > 1)
  {
    if (v20 != 3)
    {
      return;
    }

    goto LABEL_13;
  }

  if (v20)
  {
    return;
  }

  v22 = (DWORD2(v16) >> 3) & 7;
  if (v22 > 1)
  {
    if (v22 == 2 || v22 == 3)
    {
      goto LABEL_13;
    }

    if (BYTE8(v16) >> 6 && BYTE8(v16) >> 6 != 1)
    {
      v23 = BYTE8(v16) & 7;
      if (v23 > 1)
      {
        goto LABEL_27;
      }

LABEL_44:
      if (!v23)
      {
        goto LABEL_45;
      }

      if ((~*(&v29[0] + 1) & 0xF000000000000007) == 0)
      {
        return;
      }

      *&v25 = *(&v29[0] + 1);

      sub_1D62B5248(v29, v24);
      sub_1D5CFCFAC(*(&v18 + 1));
      FormatTextContent.bind(binder:context:)(a1, a2);
LABEL_48:

      goto LABEL_39;
    }

    goto LABEL_32;
  }

  if (v22)
  {
    goto LABEL_45;
  }

LABEL_13:
  v21 = v16;
  if (v16 > 1u)
  {
    goto LABEL_36;
  }

  if (!v16)
  {
    goto LABEL_45;
  }

  if ((~*&v29[0] & 0xF000000000000007) != 0)
  {
    *&v25 = *&v29[0];

    sub_1D62B5248(v29, v24);
    sub_1D5CFCFAC(v18);
    FormatTextContent.bind(binder:context:)(a1, a2);
    sub_1D5D085FC(v29);

LABEL_40:
  }
}

uint64_t sub_1D625D0BC(uint64_t result, uint64_t a2)
{
  v5 = result;
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  if (*(v2 + 16) == 1)
  {
    result = sub_1D621E2E4(result, a2, *(*v2 + 24));
    if (v3)
    {
      return result;
    }

    result = sub_1D6251BE4(v5, a2);
  }

  if (v7)
  {
    result = sub_1D621E140(v5, a2, *(v6 + 24));
    if (!v3)
    {
      return sub_1D6251AD4(v5, a2, *(v6 + 32));
    }
  }

  return result;
}

void sub_1D625D158(unint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  if ((v3 & 4) != 0)
  {
    FormatTextContent.bind(binder:context:)(a1, a2);
  }

  else
  {
    sub_1D6245970(a1, a2, *v2, v2[1], v2[2], v3);
  }
}

uint64_t sub_1D625D198(uint64_t result, uint64_t a2)
{
  if (v2[16] == 1)
  {
    v4 = *(*v2 + 24);
    v5 = result;
    result = sub_1D621E2E4(result, a2, v4);
    if (!v3)
    {
      return sub_1D6251BE4(v5, a2);
    }
  }

  return result;
}

uint64_t FormatMicaNodeContent.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v5 = result;
  v6 = *v2;
  v7 = *v2 >> 62;
  if (!v7)
  {
    v9 = *(v6 + 16);
    if ((v9 >> 62) < 2)
    {
      return result;
    }

    if (v9 >> 62 == 2)
    {
      v10 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v11 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v12 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v13 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);

      sub_1D5D27950(v10, v11, v12, v13);
      sub_1D6089844(a2);
      sub_1D5D28C84(v10, v11, v12, v13);
    }

    v15 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    swift_retain_n();

    FormatURL.bind(binder:context:)(v5, a2);
    if (!v3)
    {

      sub_1D620FAB4(v5, a2, v15);

      swift_bridgeObjectRelease_n();
    }
  }

  v8 = v6 & 0x3FFFFFFFFFFFFFFFLL;
  if (v7 != 1)
  {
    v14 = *(v8 + 24);
    swift_retain_n();

    FormatMicaNodeContent.bind(binder:context:)(v5, a2);
    if (!v3)
    {

      sub_1D62336A0(v5, a2, v14);
    }
  }

  sub_1D6248C08(v5, a2);
}

uint64_t FormatMicaNode.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v4 = v2;
  *&v52 = *(v2 + 32);
  sub_1D5C82CD8(v52);
  FormatSize.bind(binder:context:)(a1, a2);
  if (v3)
  {
    return sub_1D5C92A8C(v52);
  }

  sub_1D5C92A8C(v52);
  swift_beginAccess();
  v8 = *(v2 + 48);

  sub_1D620EA64(a1, a2, v8);

  if (*(v4 + 56))
  {
    FormatMicaNodeStyle.bind(binder:context:)(a1, a2);
  }

  v60 = *(v4 + 64);

  FormatMicaNodeContent.bind(binder:context:)(a1, a2);

  v9 = *(v4 + 152);
  v10 = *(v4 + 184);
  v50 = *(v4 + 168);
  v51[0] = v10;
  *(v51 + 9) = *(v4 + 193);
  v11 = *(v4 + 88);
  v12 = *(v4 + 120);
  v46 = *(v4 + 104);
  v47 = v12;
  v48 = *(v4 + 136);
  v49 = v9;
  v44 = *(v4 + 72);
  v45 = v11;
  v13 = *(v4 + 152);
  v14 = *(v4 + 184);
  v58 = *(v4 + 168);
  v59[0] = v14;
  *(v59 + 9) = *(v4 + 193);
  v15 = *(v4 + 88);
  v16 = *(v4 + 120);
  v54 = *(v4 + 104);
  v55 = v16;
  v56 = *(v4 + 136);
  v57 = v13;
  v52 = *(v4 + 72);
  v53 = v15;
  if (sub_1D60486AC(&v52) != 1)
  {
    v34 = v58;
    v35[0] = v59[0];
    *(v35 + 9) = *(v59 + 9);
    v30 = v54;
    v31 = v55;
    v32 = v56;
    v33 = v57;
    v28 = v52;
    v29 = v53;
    v42 = v50;
    v43[0] = v51[0];
    *(v43 + 9) = *(v51 + 9);
    v38 = v46;
    v39 = v47;
    v40 = v48;
    v41 = v49;
    v36 = v44;
    v37 = v45;
    sub_1D62B4994(&v36, v26);
    FormatMediaTiming.bind(binder:context:)(a1, a2);
    v26[6] = v34;
    v27[0] = v35[0];
    *(v27 + 9) = *(v35 + 9);
    v26[2] = v30;
    v26[3] = v31;
    v26[4] = v32;
    v26[5] = v33;
    v26[0] = v28;
    v26[1] = v29;
    sub_1D62B49F0(v26);
  }

  result = swift_beginAccess();
  v17 = *(v4 + 232);
  if (v17 >> 62 == 1)
  {
    v18 = *((v17 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v19 = *((v17 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    sub_1D5EB1500(*(v4 + 232));
    sub_1D5EB1500(v18);

    sub_1D624919C(a1, a2, v18, v19);
    sub_1D5EB15C4(v18);

    result = sub_1D5EB15C4(v17);
  }

  v20 = *(v4 + 272);
  if (v20)
  {
    v22 = *(v4 + 304);
    v21 = *(v4 + 312);
    v24 = *(v4 + 288);
    v23 = *(v4 + 296);
    v25 = *(v4 + 280);
    *&v36 = v20;
    *(&v36 + 1) = v25;
    *&v37 = v24;
    *(&v37 + 1) = v23;
    *&v38 = v22;
    *(&v38 + 1) = v21;

    sub_1D5DEA234(v22);
    v61 = v21;

    FormatFlexBoxNodeItem.bind(binder:context:)(a1, a2);

    sub_1D5CBF568(v22);
  }

  return result;
}

uint64_t sub_1D625D82C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t))
{
  swift_beginAccess();
  v8 = *(v3 + 48);

  a3(a1, a2, v8);
  if (v4)
  {
  }

  v10 = *(v3 + 56);
  if (v10)
  {
    result = sub_1D620B270(a1, a2, v10);
  }

  v11 = *(v3 + 64);
  if (v11)
  {
    result = sub_1D620E744(a1, a2, v11);
  }

  v12 = *(v3 + 144);
  v17 = *(v3 + 128);
  v18 = v12;
  v19 = *(v3 + 160);
  v20 = *(v3 + 176);
  v13 = v20;
  v14 = *(v3 + 112);
  v16[0] = *(v3 + 96);
  v16[1] = v14;
  if (v20 != 254)
  {
    v21 = v17;
    sub_1D62B5354(v16, v15, &qword_1EDF33718, &type metadata for FormatShadow);

    FormatColor.bind(binder:context:)(a1, a2);

    if (v13 <= 2)
    {
      if (v13)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (v13 <= 4)
      {
        if (v13 != 3)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

      if (v13 == 5)
      {
LABEL_16:
        sub_1D625E06C(a1, a2);
LABEL_17:
        sub_1D625E06C(a1, a2);
      }
    }

    return sub_1D5D0ABCC(v16, &qword_1EDF33718, &type metadata for FormatShadow);
  }

  return result;
}

uint64_t FormatMicaNodeArchive.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v4 = *v2;
  v5 = *v2 >> 62;
  if (v5 >= 2)
  {
    if (v5 == 2)
    {
      v7 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      v10 = *(v7 + 16);
      v11 = *(v7 + 24);
      v12 = *(v7 + 32);
      v13 = *(v7 + 40);
      sub_1D5D27950(v10, v11, v12, v13);
      sub_1D6089844(a2);
      return sub_1D5D28C84(v10, v11, v12, v13);
    }

    else
    {
      v8 = result;
      v9 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      swift_retain_n();

      FormatURL.bind(binder:context:)(v8, a2);
      if (v3)
      {
      }

      else
      {

        sub_1D620FAB4(v8, a2, v9);
        swift_bridgeObjectRelease_n();
      }
    }
  }

  return result;
}

uint64_t FormatURL.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v4 = *v2;
  v5 = *v2 >> 62;
  if (v5 >= 2)
  {
    if (v5 == 2)
    {
      v7 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      v10 = *(v7 + 16);
      v11 = *(v7 + 24);
      v12 = *(v7 + 32);
      v13 = *(v7 + 40);
      sub_1D5D27950(v10, v11, v12, v13);
      sub_1D6089844(a2);
      return sub_1D5D28C84(v10, v11, v12, v13);
    }

    else
    {
      v8 = result;
      v9 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      swift_retain_n();

      FormatURL.bind(binder:context:)(v8, a2);
      if (v3)
      {
      }

      else
      {

        sub_1D620FAB4(v8, a2, v9);

        return swift_bridgeObjectRelease_n();
      }
    }
  }

  return result;
}

uint64_t FormatMicaNodeStyle.Selector.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v5 = result;
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 104);
  v15 = *(v2 + 88);
  v16 = v8;
  v17 = *(v2 + 120);
  v18 = *(v2 + 136);
  v9 = *(v2 + 72);
  v14[0] = *(v2 + 56);
  v14[1] = v9;
  if (!v6 || (result = sub_1D620B270(result, a2, v6), !v3))
  {
    if (!v7 || (result = sub_1D620E744(v5, a2, v7), !v3))
    {
      v10 = v18;
      if (v18 != 254)
      {
        v19 = v15;
        sub_1D62B5354(v14, v13, &qword_1EDF33718, &type metadata for FormatShadow);

        FormatColor.bind(binder:context:)(v5, a2);
        if (v3)
        {

          return sub_1D5D0ABCC(v14, &qword_1EDF33718, &type metadata for FormatShadow);
        }

        if (v10 <= 2)
        {
          if (!v10)
          {
            return sub_1D5D0ABCC(v14, &qword_1EDF33718, &type metadata for FormatShadow);
          }

          if (v10 != 1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          if (v10 > 4)
          {
            if (v10 != 5)
            {
              return sub_1D5D0ABCC(v14, &qword_1EDF33718, &type metadata for FormatShadow);
            }

            goto LABEL_17;
          }

          if (v10 == 3)
          {
LABEL_17:
            sub_1D625E06C(v5, a2);
            v11 = v5;
            v12 = a2;
            goto LABEL_18;
          }
        }

        v11 = v5;
        v12 = a2;
LABEL_18:
        sub_1D625E06C(v11, v12);
        return sub_1D5D0ABCC(v14, &qword_1EDF33718, &type metadata for FormatShadow);
      }
    }
  }

  return result;
}

uint64_t FormatMotion.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v4 = *(v2 + 40);
  if (v4 > 2)
  {
    if (v4 == 4)
    {
      return sub_1D625E06C(result, a2);
    }
  }

  else
  {
    if (!*(v2 + 40))
    {
      return result;
    }

    if (v4 == 1)
    {
      return sub_1D625E06C(result, a2);
    }
  }

  v5 = result;
  v6 = a2;
  result = sub_1D625E06C(result, a2);
  if (v3)
  {
    return result;
  }

  result = v5;
  a2 = v6;
  return sub_1D625E06C(result, a2);
}

uint64_t sub_1D625E06C(uint64_t a1, uint64_t a2)
{
  sub_1D5B49474(0, &qword_1EDF329A8);
  if (swift_dynamicCast())
  {
    v5 = *(&v11 + 1);
    v6 = v12;
    __swift_project_boxed_opaque_existential_1(&v10, *(&v11 + 1));
    (*(v6 + 8))(a1, a2, v5, v6);
    result = __swift_destroy_boxed_opaque_existential_1(&v10);
    if (v2)
    {
      return result;
    }
  }

  else
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    sub_1D5BFB774(&v10, &qword_1EDF329A0, &qword_1EDF329A8);
  }

  if (swift_dynamicCast())
  {
    v8 = *(&v11 + 1);
    v9 = v12;
    __swift_project_boxed_opaque_existential_1(&v10, *(&v11 + 1));
    (*(v9 + 8))(a1, a2, v8, v9);
    return __swift_destroy_boxed_opaque_existential_1(&v10);
  }

  else
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    return sub_1D5BFB774(&v10, &qword_1EDF329A0, &qword_1EDF329A8);
  }
}

uint64_t FormatRange.bind(binder:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = a1;
  v28 = a3;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v13 = *(v7 + 16);
  v13(&v25 - v14, v3, v6, v12);
  sub_1D5B49474(0, &qword_1EDF329A8);
  if (swift_dynamicCast())
  {
    v25 = v13;
    v27 = v3;
    v15 = v4;
    v16 = *(&v30 + 1);
    v17 = v31;
    __swift_project_boxed_opaque_existential_1(&v29, *(&v30 + 1));
    v18 = *(v17 + 8);
    v26 = v5;
    v19 = v32;
    v18(v5, v15, v16, v17);
    result = __swift_destroy_boxed_opaque_existential_1(&v29);
    if (v19)
    {
      return result;
    }

    v32 = 0;
    v4 = v15;
    v5 = v26;
    v25(v9, v27 + *(v28 + 52), v6);
  }

  else
  {
    v31 = 0;
    v29 = 0u;
    v30 = 0u;
    sub_1D5BFB774(&v29, &qword_1EDF329A0, &qword_1EDF329A8);
    (v13)(v9, v3 + *(v28 + 52), v6);
  }

  if (swift_dynamicCast())
  {
    v21 = v5;
    v22 = v4;
    v23 = *(&v30 + 1);
    v24 = v31;
    __swift_project_boxed_opaque_existential_1(&v29, *(&v30 + 1));
    (*(v24 + 8))(v21, v22, v23, v24);
    return __swift_destroy_boxed_opaque_existential_1(&v29);
  }

  else
  {
    v31 = 0;
    v29 = 0u;
    v30 = 0u;
    return sub_1D5BFB774(&v29, &qword_1EDF329A0, &qword_1EDF329A8);
  }
}

uint64_t FormatTranslate.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for FormatRange();
  result = FormatRange.bind(binder:context:)(a1, a2, v5);
  if (!v2)
  {
    return FormatRange.bind(binder:context:)(a1, a2, v5);
  }

  return result;
}

uint64_t FormatMotion.TranslateWithScale.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  result = sub_1D625E06C(a1, a2);
  if (!v2)
  {
    return sub_1D625E06C(a1, a2);
  }

  return result;
}

uint64_t sub_1D625E598(uint64_t result, uint64_t a2)
{
  v4 = *(v2 + 40);
  if (v4 > 2)
  {
    if (v4 == 4)
    {
      return sub_1D625E06C(result, a2);
    }
  }

  else
  {
    if (!*(v2 + 40))
    {
      return result;
    }

    if (v4 == 1)
    {
      return sub_1D625E06C(result, a2);
    }
  }

  v5 = result;
  v6 = a2;
  result = sub_1D625E06C(result, a2);
  if (v3)
  {
    return result;
  }

  result = v5;
  a2 = v6;
  return sub_1D625E06C(result, a2);
}

uint64_t sub_1D625E624(uint64_t a1, uint64_t a2)
{
  result = sub_1D625E06C(a1, a2);
  if (!v2)
  {
    return sub_1D625E06C(a1, a2);
  }

  return result;
}

uint64_t FormatNode.bindChildren(binder:context:)(unint64_t a1, uint64_t a2)
{
  v3 = *v2;
  switch((*v2 >> 58) & 0x3C | (*v2 >> 1) & 3)
  {
    case 2uLL:
    case 3uLL:

      FormatHOverlayNode.bind(binder:context:)(a1, a2);

    case 4uLL:

      FormatViewNode.bind(binder:context:)(a1, a2);

    case 5uLL:

      FormatTextNode.bind(binder:context:)(a1, a2);

    case 6uLL:

      FormatImageNode.bind(binder:context:)(a1, a2);

    case 7uLL:

      FormatItemNode.bind(binder:context:)(a1, a2);

    case 8uLL:

      FormatSpaceNode.bind(binder:context:)(a1, a2);

    case 9uLL:

      FormatSnippetNode.bind(binder:context:)(a1, a2);

    case 0xAuLL:

      FormatSupplementaryNode.bind(binder:context:)(a1, a2);

    case 0xBuLL:

      FormatSwitchNode.bind(binder:context:)(a1, a2);

    case 0xCuLL:

      FormatSlotNode.bind(binder:context:)(a1, a2);

    case 0xDuLL:

      FormatAccessibilityNode.bind(binder:context:)(a1, a2);

    case 0xEuLL:

      FormatButtonNode.bind(binder:context:)(a1, a2);

    case 0xFuLL:

      FormatGroupNode.bind(binder:context:)(a1, a2);

    case 0x10uLL:

      FormatWebEmbedNode.bind(binder:context:)(a1, a2);

    case 0x11uLL:

      FormatFrameNode.bind(binder:context:)(a1, a2);

    case 0x12uLL:

      FormatRepeatNode.bind(binder:context:)(a1, a2);

    case 0x13uLL:

      FormatOptionsNode.bind(binder:context:)(a1, a2);

    case 0x14uLL:

      FormatStateViewNode.bind(binder:context:)(a1, a2);

    case 0x15uLL:

      FormatCustomNode.bind(binder:context:)(a1, a2);

    case 0x16uLL:

      sub_1D6EBCF50(a2);

    case 0x17uLL:

      FormatAdMetricsNode.bind(binder:context:)(a1, a2);

    case 0x18uLL:

      FormatMicaNode.bind(binder:context:)(a1, a2);

    case 0x19uLL:

      FormatLayeredMediaNode.bind(binder:context:)(a1, a2);

    case 0x1AuLL:

      FormatVideoNode.bind(binder:context:)(a1, a2);

    case 0x1BuLL:

      FormatIssueCoverNode.bind(binder:context:)(a1, a2);

    case 0x1CuLL:
      v18 = v3 & 0xFFFFFFFFFFFFFF9;
      v19 = *(v18 + 112);
      v42 = *(v18 + 96);
      v43 = v19;
      v44 = *(v18 + 128);
      v45 = *(v18 + 144);
      v20 = *(v18 + 48);
      v38 = *(v18 + 32);
      v39 = v20;
      v21 = *(v18 + 80);
      v40 = *(v18 + 64);
      v41 = v21;
      v37 = *(v18 + 16);
      v22 = *(v18 + 128);
      v34 = *(v18 + 112);
      v35 = v22;
      v36 = *(v18 + 144);
      v23 = *(v18 + 64);
      v30 = *(v18 + 48);
      v31 = v23;
      v24 = *(v18 + 96);
      v32 = *(v18 + 80);
      v33 = v24;
      v25 = *(v18 + 32);
      v28 = *(v18 + 16);
      v29 = v25;
      sub_1D62B60B4(&v37, v26);
      FormatShareAttributionNode.bind(binder:context:)(a1, a2);
      return sub_1D62B6110(&v37);
    case 0x1DuLL:

      FormatBlockNode.bind(binder:context:)(a1, a2);

    case 0x1EuLL:

      FormatGeometryNode.bind(binder:context:)(a1, a2);

    case 0x1FuLL:

      FormatVideoPlayerNode.bind(binder:context:)(a1, a2);

    case 0x20uLL:

      FormatProgressViewNode.bind(binder:context:)(a1, a2);

    case 0x21uLL:

      FormatItemBindingsNode.bind(binder:context:)(a1, a2);

    case 0x22uLL:

      FormatAuxiliaryNode.bind(binder:context:)(a1);

    case 0x23uLL:
      v15 = *((v3 & 0xFFFFFFFFFFFFFF9) + 0x10);

      v16 = sub_1D6C1BF20(a2);
      swift_beginAccess();
      v17 = *(v15 + 48);

      sub_1D6215F90(a1, v16, v17);

    case 0x24uLL:

      FormatVariableNode.bind(binder:context:)(a1, a2);

    case 0x25uLL:
      v6 = *((v3 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v7 = *(v6 + 112);
      v8 = *(v6 + 144);
      v41 = *(v6 + 128);
      v42 = v8;
      *&v43 = *(v6 + 160);
      v9 = *(v6 + 80);
      v37 = *(v6 + 64);
      v38 = v9;
      v10 = *(v6 + 112);
      v12 = *(v6 + 64);
      v11 = *(v6 + 80);
      v39 = *(v6 + 96);
      v40 = v10;
      v13 = *(v6 + 144);
      v32 = v41;
      v33 = v13;
      v28 = v12;
      v29 = v11;
      *&v34 = *(v6 + 160);
      v30 = v39;
      v31 = v7;

      sub_1D5C5C4CC(&v37, v26);
      FormatSourceMapNode.bind(binder:context:)(a1, a2);

      v26[4] = v32;
      v26[5] = v33;
      v27 = v34;
      v26[0] = v28;
      v26[1] = v29;
      v26[2] = v30;
      v26[3] = v31;
      return sub_1D5C5C540(v26);
    case 0x26uLL:

      FormatPuzzleEmbedNode.bind(binder:context:)(a1, a2);

    case 0x27uLL:

      FormatSponsoredBannerNode.bind(binder:context:)(a1, a2);

    case 0x28uLL:

      FormatFlexBoxNode.bind(binder:context:)(a1, a2);

    default:

      FormatHBoxNode.bind(binder:context:)(a1, a2);
  }
}

unint64_t sub_1D625EDB8(unint64_t a1, uint64_t a2)
{
  v4 = v2;
  swift_beginAccess();
  v11 = *(v2 + 64);
  sub_1D5C82CD8(v11);
  FormatSize.bind(binder:context:)(a1, a2);
  if (v3)
  {
    return sub_1D5C92A8C(v11);
  }

  sub_1D5C92A8C(v11);
  swift_beginAccess();
  v8 = *(v2 + 88);

  sub_1D620EA64(a1, a2, v8);

  swift_beginAccess();
  v12 = *(v4 + 112);
  v13 = *(v4 + 120);
  v14 = *(v4 + 128);
  sub_1D5C75A4C(v12, v13, v14);
  sub_1D60ECF10(a2);
  sub_1D5D2F2C8(v12, v13, v14);
  if (*(v4 + 136))
  {
    v9 = *(v4 + 168);

    sub_1D5DEA234(v9);

    FormatFlexBoxNodeItem.bind(binder:context:)(a1, a2);

    sub_1D5CBF568(v9);
  }

  swift_beginAccess();
  v10 = *(v4 + 96);

  sub_1D6215F90(a1, a2, v10);
}

unint64_t sub_1D625EFD4(unint64_t a1, uint64_t a2)
{
  v4 = v2;
  swift_beginAccess();
  v11 = *(v2 + 88);
  sub_1D5C82CD8(v11);
  FormatSize.bind(binder:context:)(a1, a2);
  if (v3)
  {
    return sub_1D5C92A8C(v11);
  }

  sub_1D5C92A8C(v11);
  swift_beginAccess();
  v8 = *(v2 + 96);

  sub_1D620EA64(a1, a2, v8);

  swift_beginAccess();
  v12 = *(v4 + 120);
  v13 = *(v4 + 128);
  v14 = *(v4 + 136);
  sub_1D5C75A4C(v12, v13, v14);
  sub_1D60ECF10(a2);
  sub_1D5D2F2C8(v12, v13, v14);
  if (*(v4 + 144))
  {
    v9 = *(v4 + 176);

    sub_1D5DEA234(v9);

    FormatFlexBoxNodeItem.bind(binder:context:)(a1, a2);

    sub_1D5CBF568(v9);
  }

  swift_beginAccess();
  v10 = *(v4 + 104);

  sub_1D6215F90(a1, a2, v10);
}

uint64_t FormatViewNode.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v4 = v2;
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

  if (v4[7])
  {
    FormatViewNodeStyle.bind(binder:context:)(a1, a2);
  }

  v9 = v4[8];
  if (v9)
  {
    swift_beginAccess();
    v10 = *(v9 + 72);
    if (v10)
    {

      sub_1D621397C(a1, a2, v10);
    }

    swift_beginAccess();
    v11 = *(v9 + 88);

    sub_1D621D544(a1, a2, v11);
  }

  result = swift_beginAccess();
  v12 = v4[10];
  if (v12 >> 62 == 1)
  {
    v13 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v14 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    sub_1D5EB1500(v4[10]);
    sub_1D5EB1500(v13);

    sub_1D624919C(a1, a2, v13, v14);
    sub_1D5EB15C4(v13);

    result = sub_1D5EB15C4(v12);
  }

  if (v4[17])
  {
    v15 = v4[21];

    sub_1D5DEA234(v15);

    FormatFlexBoxNodeItem.bind(binder:context:)(a1, a2);

    sub_1D5CBF568(v15);
  }

  return result;
}

unint64_t FormatTextNode.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v4 = v2;
  v18 = *(v2 + 32);
  sub_1D5D085B4(v18);
  FormatTextSize.bind(binder:context:)(a1, a2);
  if (v3)
  {
    return sub_1D5D05694(v18);
  }

  sub_1D5D05694(v18);
  swift_beginAccess();
  v8 = *(v2 + 48);

  sub_1D620EA64(a1, a2, v8);

  if (*(v4 + 56))
  {
    FormatTextNodeStyle.bind(binder:context:)(a1, a2);
  }

  v9 = *(v4 + 64);
  if (v9)
  {
    swift_beginAccess();
    v10 = *(v9 + 72);
    if (v10)
    {

      sub_1D621397C(a1, a2, v10);
    }

    swift_beginAccess();
    v11 = *(v9 + 88);

    sub_1D621D544(a1, a2, v11);
  }

  FormatTextContent.bind(binder:context:)(a1, a2);

  if ((*(v4 + 130) >> 1) <= 0x7Eu)
  {
    v12 = *(v4 + 128) | (*(v4 + 130) << 16);
    v19 = *(v4 + 80);
    v20 = *(v4 + 88);
    v21 = *(v4 + 96);
    v22 = *(v4 + 104);
    v23 = *(v4 + 112);
    v24 = *(v4 + 120);
    sub_1D5D0A5BC(v19, v20, v21, v22, v23, v24, v12);
    FormatComputedInvalidation.bind(binder:context:)(a1, a2);
    sub_1D5D0A678(v19, v20, v21, v22, v23, v24, v12);
  }

  swift_beginAccess();
  v13 = *(v4 + 144);
  if (v13 >> 62 == 1)
  {
    v14 = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v15 = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    sub_1D5EB1500(*(v4 + 144));
    sub_1D5EB1500(v14);

    sub_1D624919C(a1, a2, v14, v15);
    sub_1D5EB15C4(v14);

    sub_1D5EB15C4(v13);
  }

  swift_beginAccess();
  v16 = *(v4 + 184);

  sub_1D6230F7C(a1, a2, v16);

  if (*(v4 + 208))
  {
    v17 = *(v4 + 240);

    sub_1D5DEA234(v17);

    FormatFlexBoxNodeItem.bind(binder:context:)(a1, a2);

    sub_1D5CBF568(v17);
  }

  return result;
}

uint64_t FormatSpaceNode.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v4 = v2;
  swift_beginAccess();
  v10 = *(v2 + 32);
  sub_1D5C82CD8(v10);
  FormatSize.bind(binder:context:)(a1, a2);
  result = sub_1D5C92A8C(v10);
  if (!v3)
  {
    swift_beginAccess();
    v8 = *(v2 + 40);

    sub_1D620EA64(a1, a2, v8);

    if (*(v4 + 48))
    {
      v9 = *(v4 + 80);

      sub_1D5DEA234(v9);

      FormatFlexBoxNodeItem.bind(binder:context:)(a1, a2);

      sub_1D5CBF568(v9);
    }
  }

  return result;
}

uint64_t FormatWebEmbedNode.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = v2[4];
  if (v7 >> 62)
  {
    if (v7 >> 62 != 1)
    {
      v8 = v7 & 0x3FFFFFFFFFFFFFFFLL;
      v9 = *(v8 + 16);
      v10 = *(v8 + 24);

      sub_1D62493D8(a1, a2, v9, v10);
      if (v3)
      {
      }
    }
  }

  else
  {
    v21 = *(v7 + 16);
    v23 = *(v7 + 24);
    v24 = *(v7 + 32);
    v25 = *(v7 + 40);
    sub_1D62B6164(v21, v23, v24, v25);
    sub_1D69BBC64(a2);
    result = sub_1D62B61A8(v21, v23, v24, v25);
    if (v3)
    {
      return result;
    }
  }

  v22 = v4[8];
  sub_1D5C82CD8(v22);
  FormatSize.bind(binder:context:)(a1, a2);
  if (v3)
  {
    return sub_1D5C92A8C(v22);
  }

  sub_1D5C92A8C(v22);
  swift_beginAccess();
  v12 = v4[10];

  sub_1D620EA64(a1, a2, v12);

  result = swift_beginAccess();
  v13 = v4[13];
  if (v13 >> 62 == 1)
  {
    v14 = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v15 = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    sub_1D5EB1500(v4[13]);
    sub_1D5EB1500(v14);

    sub_1D624919C(a1, a2, v14, v15);
    sub_1D5EB15C4(v14);

    result = sub_1D5EB15C4(v13);
  }

  if (v4[20])
  {
    v16 = v4[24];

    sub_1D5DEA234(v16);

    FormatFlexBoxNodeItem.bind(binder:context:)(a1, a2);

    sub_1D5CBF568(v16);
  }

  v17 = v4[26];
  if (!v17)
  {
    v20 = 0;
    return sub_1D5D0A5AC(v20);
  }

  if (v17 == 1)
  {
    v20 = 1;
    return sub_1D5D0A5AC(v20);
  }

  if (v17 != 2)
  {
    v18 = *(v17 + 16);
    v19 = *(v17 + 24);
    sub_1D5D0A59C(v17);
    sub_1D5D0A57C(v18);

    sub_1D62490FC(a1, a2, v18, v19);
    sub_1D5D0A58C(v18);

    v20 = v17;
    return sub_1D5D0A5AC(v20);
  }

  return result;
}

uint64_t FormatVideoNode.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v4 = v2;
  *&v35 = *(v2 + 32);
  sub_1D5C82CD8(v35);
  FormatSize.bind(binder:context:)(a1, a2);
  if (v3)
  {
    return sub_1D5C92A8C(v35);
  }

  sub_1D5C92A8C(v35);
  swift_beginAccess();
  v8 = *(v2 + 48);

  sub_1D620EA64(a1, a2, v8);

  if (*(v4 + 56))
  {
    FormatVideoNodeStyle.bind(binder:context:)(a1, a2);
  }

  v9 = *(v4 + 64);
  if (v9)
  {
    swift_beginAccess();
    v10 = *(v9 + 72);
    if (v10)
    {

      sub_1D621397C(a1, a2, v10);
    }

    swift_beginAccess();
    v11 = *(v9 + 88);

    sub_1D621D544(a1, a2, v11);
  }

  *&v35 = *(v4 + 72);

  FormatVideoNodeContent.bind(binder:context:)(a1, a2);

  result = swift_beginAccess();
  v12 = *(v4 + 88);
  if (v12 >> 62 == 1)
  {
    v13 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v14 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    sub_1D5EB1500(*(v4 + 88));
    sub_1D5EB1500(v13);

    sub_1D624919C(a1, a2, v13, v14);
    sub_1D5EB15C4(v13);

    result = sub_1D5EB15C4(v12);
  }

  v15 = *(v4 + 208);
  v39 = *(v4 + 192);
  v40 = v15;
  v41 = *(v4 + 224);
  v16 = *(v4 + 144);
  v35 = *(v4 + 128);
  v36 = v16;
  v17 = *(v4 + 176);
  v37 = *(v4 + 160);
  v38 = v17;
  if (BYTE8(v36) != 254)
  {
    v28 = *(v4 + 128);
    *&v29 = *(v4 + 144);
    *(&v29 + 1) = *(&v36 + 1);
    v18 = *(v4 + 208);
    v32 = *(v4 + 192);
    v33 = v18;
    v34 = *(v4 + 224);
    v19 = *(v4 + 176);
    v30 = *(v4 + 160);
    v31 = v19;
    sub_1D62B5354(&v35, v26, &qword_1EC8854C8, &type metadata for FormatVideoProperties);
    sub_1D62B5550(a2);
    v26[4] = v32;
    v26[5] = v33;
    v27 = v34;
    v26[0] = v28;
    v26[1] = v29;
    v26[2] = v30;
    v26[3] = v31;
    result = sub_1D62B61EC(v26);
  }

  v20 = *(v4 + 232);
  if (v20)
  {
    v22 = *(v4 + 264);
    v21 = *(v4 + 272);
    v23 = *(v4 + 248);
    v24 = *(v4 + 256);
    v25 = *(v4 + 240);
    *&v28 = v20;
    *(&v28 + 1) = v25;
    *&v29 = v23;
    *(&v29 + 1) = v24;
    *&v30 = v22;
    *(&v30 + 1) = v21;
    v42 = v21;

    sub_1D5DEA234(v22);

    FormatFlexBoxNodeItem.bind(binder:context:)(a1, a2);

    sub_1D5CBF568(v22);
  }

  return result;
}

uint64_t FormatShareAttributionNode.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v6 = v2[4];
  v15 = v2[6];
  v13 = v2[11];
  v7 = v2[15];
  v14 = v2[2];
  sub_1D5C82CD8(v14);
  FormatSize.bind(binder:context:)(a1, a2);
  result = sub_1D5C92A8C(v14);
  if (!v3)
  {

    sub_1D620EA64(a1, a2, v6);

    if (!(v15 >> 62))
    {
      goto LABEL_5;
    }

    if (v15 >> 62 == 1)
    {
      v9 = *((v15 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v10 = *((v15 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(v15);
      sub_1D5EB1500(v9);

      sub_1D624919C(a1, a2, v9, v10);
      sub_1D5EB15C4(v9);

      result = sub_1D5EB15C4(v15);
LABEL_5:
      v11 = v7;
      if (!v13)
      {
        return result;
      }

      goto LABEL_6;
    }

    v11 = v7;
    if (v15 == 0x8000000000000000)
    {
      v12 = 0x8000000000000000;
    }

    else
    {
      v12 = 0x8000000000000008;
    }

    result = sub_1D5EB15C4(v12);
    if (v13)
    {
LABEL_6:

      sub_1D5DEA234(v11);

      FormatFlexBoxNodeItem.bind(binder:context:)(a1, a2);

      sub_1D5CBF568(v11);
    }
  }

  return result;
}

void FormatVideoPlayerNode.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v4 = v2;
  v24 = *(v2 + 32);
  sub_1D5C82CD8(v24);
  FormatSize.bind(binder:context:)(a1, a2);
  if (v3)
  {
    sub_1D5C92A8C(v24);
  }

  else
  {
    sub_1D5C92A8C(v24);
    swift_beginAccess();
    v7 = *(v2 + 48);

    sub_1D620EA64(a1, a2, v7);

    if (*(v4 + 56))
    {
      FormatVideoPlayerNodeStyle.bind(binder:context:)(a1, a2);
    }

    v8 = *(v4 + 64);
    if (v8)
    {
      swift_beginAccess();
      v9 = *(v8 + 72);
      if (v9)
      {

        sub_1D621397C(a1, a2, v9);
      }

      swift_beginAccess();
      v10 = *(v8 + 88);

      sub_1D621D544(a1, a2, v10);
    }

    v11 = *(v4 + 72);
    if (v11 < 0)
    {
      v14 = v11 & 0x7FFFFFFFFFFFFFFFLL;
      v25 = *(v14 + 16);
      v27 = *(v14 + 24);
      v29 = *(v14 + 32);
      v31 = *(v14 + 40);
      sub_1D62B6240(v25, v27, v29, v31);
      sub_1D6C09C54(a2);
      sub_1D62B628C(v25, v27, v29, v31);
    }

    else
    {
      v12 = *(v11 + 16);
      v13 = *(v11 + 24);

      sub_1D6242FE8(a1, a2, v12, v13);
    }

    FormatAsyncImageContent.bind(binder:context:)(a1, a2);

    if (*(v4 + 88))
    {
      FormatImageNodeStyle.bind(binder:context:)(a1, a2);
    }

    if (*(v4 + 112) != 1)
    {
      v16 = *(v4 + 128);
      v15 = *(v4 + 136);
      v17 = *(v4 + 104);
      v18 = *(v4 + 144) & 1;

      sub_1D5DEA234(v17);

      sub_1D5C75A4C(v16, v15, v18);
      FormatVideoPlayerOverlayContent.bind(binder:context:)(a1, a2);

      sub_1D5CBF568(v17);

      sub_1D5D2F2C8(v16, v15, v18);
    }

    if (*(v4 + 176))
    {
      sub_1D60ECF10(a2);
    }

    else
    {
      sub_1D7245EF4(a2);
    }

    swift_beginAccess();
    v19 = *(v4 + 192);
    if (v19 >> 62 == 1)
    {
      v20 = *((v19 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v21 = *((v19 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(*(v4 + 192));
      sub_1D5EB1500(v20);

      sub_1D624919C(a1, a2, v20, v21);
      sub_1D5EB15C4(v20);

      sub_1D5EB15C4(v19);
    }

    swift_beginAccess();
    v22 = *(v4 + 264);
    if (v22 != 255)
    {
      v26 = *(v4 + 248);
      v28 = *(v4 + 256);
      v30 = v22 & 1;
      sub_1D6189668(v26, v28, v22);
      sub_1D60ECF10(a2);
      sub_1D5D2F2C8(v26, v28, v30);
    }

    if (*(v4 + 272))
    {
      v23 = *(v4 + 304);

      sub_1D5DEA234(v23);

      FormatFlexBoxNodeItem.bind(binder:context:)(a1, a2);

      sub_1D5CBF568(v23);
    }
  }
}

uint64_t FormatProgressViewNode.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v4 = v2;
  swift_beginAccess();
  *&v47[0] = *(v2 + 32);
  sub_1D5C82CD8(*&v47[0]);
  FormatSize.bind(binder:context:)(a1, a2);
  if (v3)
  {
    return sub_1D5C92A8C(*&v47[0]);
  }

  sub_1D5C92A8C(*&v47[0]);
  swift_beginAccess();
  v8 = *(v2 + 48);

  sub_1D620EA64(a1, a2, v8);

  v9 = *(v4 + 72);
  v10 = *(v4 + 104);
  v47[2] = *(v4 + 88);
  v48[0] = v10;
  *(v48 + 15) = *(v4 + 119);
  v47[0] = *(v4 + 56);
  v47[1] = v9;
  v11 = *(v4 + 72);
  v12 = *(v4 + 104);
  v45 = *(v4 + 88);
  v46[0] = v12;
  *(v46 + 15) = *(v4 + 119);
  v43 = *(v4 + 56);
  v44 = v11;
  sub_1D62B62D8(v47, v41);
  FormatProgressViewNodeContent.bind(binder:context:)(a1, a2);
  v41[2] = v45;
  v42[0] = v46[0];
  *(v42 + 15) = *(v46 + 15);
  v41[0] = v43;
  v41[1] = v44;
  sub_1D62B6334(v41);
  swift_beginAccess();
  if (*(v4 + 136))
  {

    FormatProgressViewNodeStyle.bind(binder:context:)(a1, a2);
  }

  swift_beginAccess();
  v13 = *(v4 + 160);
  v38 = *(v4 + 144);
  v39 = v13;
  *v40 = *(v4 + 176);
  *&v40[9] = *(v4 + 185);
  v14 = v13;
  v15 = v40[24] >> 6;
  if (v15)
  {
    if (v15 == 1)
    {
      v26[4] = v38;
      v27 = v39;
      v28 = BYTE8(v13);
      v31 = HIBYTE(v39);
      v30 = *(&v39 + 13);
      v29 = *(&v39 + 9);
      v32 = *v40;
      v33 = *&v40[16];
      v34 = v40[24] & 0x3F;
      *&v37[9] = *(v4 + 185);
      v16 = *(v4 + 160);
      v35 = *(v4 + 144);
      v36 = v16;
      *v37 = *(v4 + 176);
      v37[24] &= 0x3Fu;
      sub_1D62B6388(&v35, v26);
      FormatProgressCircleOptions.bind(binder:context:)(a1, a2);
      sub_1D62B63E4(&v38);
    }
  }

  else
  {
    v35 = v38;
    *&v36 = v39;
    BYTE8(v36) = BYTE8(v39) & 1;
    *v37 = *v40;
    *&v37[16] = *&v40[16];

    sub_1D5C75A4C(*(&v38 + 1), v14, BYTE8(v39) & 1);

    FormatProgressPieOptions.bind(binder:context:)(a1, a2);
    sub_1D62B63E4(&v38);
  }

  result = swift_beginAccess();
  v17 = *(v4 + 208);
  if (v17 >> 62 == 1)
  {
    v18 = *((v17 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v19 = *((v17 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    sub_1D5EB1500(*(v4 + 208));
    sub_1D5EB1500(v18);

    sub_1D624919C(a1, a2, v18, v19);
    sub_1D5EB15C4(v18);

    result = sub_1D5EB15C4(v17);
  }

  v20 = *(v4 + 256);
  if (v20)
  {
    v22 = *(v4 + 288);
    v21 = *(v4 + 296);
    v24 = *(v4 + 272);
    v23 = *(v4 + 280);
    v25 = *(v4 + 264);
    *&v35 = v20;
    *(&v35 + 1) = v25;
    *&v36 = v24;
    *(&v36 + 1) = v23;
    *v37 = v22;
    *&v37[8] = v21;

    sub_1D5DEA234(v22);
    v49 = v21;

    FormatFlexBoxNodeItem.bind(binder:context:)(a1, a2);

    sub_1D5CBF568(v22);
  }

  return result;
}

uint64_t FormatPuzzleEmbedNode.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v4 = v2;
  swift_beginAccess();
  v17 = v2[6];
  sub_1D5C82CD8(v17);
  FormatSize.bind(binder:context:)(a1, a2);
  if (v3)
  {
    return sub_1D5C92A8C(v17);
  }

  sub_1D5C92A8C(v17);
  swift_beginAccess();
  v8 = v2[8];

  sub_1D620EA64(a1, a2, v8);

  v9 = v4[9];
  if (v9 < 0)
  {
    v14 = v9 & 0x7FFFFFFFFFFFFFFFLL;
    v15 = *(v14 + 16);
    v16 = *(v14 + 24);

    sub_1D6248FF8(a1, a2, v15, v16);
  }

  result = swift_beginAccess();
  v10 = v4[20];
  if (v10 >> 62 == 1)
  {
    v11 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v12 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    sub_1D5EB1500(v4[20]);
    sub_1D5EB1500(v11);

    sub_1D624919C(a1, a2, v11, v12);
    sub_1D5EB15C4(v11);

    result = sub_1D5EB15C4(v10);
  }

  if (v4[28])
  {
    v13 = v4[32];

    sub_1D5DEA234(v13);

    FormatFlexBoxNodeItem.bind(binder:context:)(a1, a2);

    sub_1D5CBF568(v13);
  }

  return result;
}

unint64_t FormatSponsoredBannerNode.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v4 = v2;
  v13 = *(v2 + 32);
  sub_1D5C82CD8(v13);
  FormatSize.bind(binder:context:)(a1, a2);
  if (v3)
  {
    return sub_1D5C92A8C(v13);
  }

  sub_1D5C92A8C(v13);
  swift_beginAccess();
  v8 = *(v2 + 48);

  sub_1D620EA64(a1, a2, v8);

  swift_beginAccess();
  v9 = v4[7];
  if (v9 >> 62 == 1)
  {
    v10 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v11 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    sub_1D5EB1500(v4[7]);
    sub_1D5EB1500(v10);

    sub_1D624919C(a1, a2, v10, v11);
    sub_1D5EB15C4(v10);

    sub_1D5EB15C4(v9);
  }

  result = swift_beginAccess();
  if (v4[12])
  {

    FormatSponsoredBannerNodeStyle.bind(binder:context:)(a1, a2);
  }

  if (v4[13])
  {
    v12 = v4[17];

    sub_1D5DEA234(v12);

    FormatFlexBoxNodeItem.bind(binder:context:)(a1, a2);

    sub_1D5CBF568(v12);
  }

  return result;
}

void FormatNodeStyle.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = *v2;
  switch(v4[6] >> 59)
  {
    case 1:
      FormatTextNodeStyle.bind(binder:context:)(a1, a2);
      return;
    case 2:
      FormatImageNodeStyle.bind(binder:context:)(a1, a2);
      return;
    case 3:
      FormatItemNodeStyle.bind(binder:context:)(a1, a2);
      return;
    case 4:
    case 0x10:
      return;
    case 5:
      v17 = *(v5 + 56);
      if (!v17)
      {
        v18 = a1;
        v19 = a2;
LABEL_26:
        swift_beginAccess();
        v20 = *(v5 + 64);

        sub_1D621A990(v18, v19, v20);
        goto LABEL_27;
      }

      v18 = a1;
      v19 = a2;
      sub_1D6213004(a1, a2, v17);
      if (!v3)
      {
        goto LABEL_26;
      }

      return;
    case 6:
      swift_beginAccess();
      v12 = *(v5 + 56);

      v13 = a1;
      v14 = a1;
      v15 = a2;
      sub_1D621AA44(v14, a2, v12);

      if (!v3 && *(v5 + 74) != 255)
      {
        v16 = *(v5 + 72) | (*(v5 + 74) << 16);
        v21 = *(v5 + 64);
        sub_1D610CA74(v21, v16, SBYTE2(v16), sub_1D610CA28, sub_1D610CA5C);
        FormatSupplementaryNodePinTrait.bind(binder:context:)(v13, v15);
        sub_1D610CA74(v21, v16, SBYTE2(v16), sub_1D60CF6A8, sub_1D60CF6DC);
      }

      return;
    case 7:
      FormatMicaNodeStyle.bind(binder:context:)(a1, a2);
      return;
    case 8:
      FormatLayeredMediaNodeStyle.bind(binder:context:)(a1, a2);
      return;
    case 9:
      FormatVideoNodeStyle.bind(binder:context:)(a1, a2);
      return;
    case 0xALL:
      FormatIssueCoverNodeStyle.bind(binder:context:)(a1, a2);
      return;
    case 0xBLL:
      FormatGroupNodeStyle.bind(binder:context:)(a1, a2);
      return;
    case 0xCLL:
      FormatGroupNodeMaskStyle.bind(binder:context:)(a1, a2);
      return;
    case 0xDLL:
      swift_beginAccess();
      v8 = *(v5 + 72);
      if (!v8)
      {
        goto LABEL_7;
      }

      sub_1D621397C(a1, a2, v8);
      if (!v3)
      {

LABEL_7:
        swift_beginAccess();
        v9 = *(v5 + 88);

        sub_1D621D544(a1, a2, v9);
      }

LABEL_27:

      return;
    case 0xELL:
      FormatVideoPlayerNodeStyle.bind(binder:context:)(a1, a2);
      return;
    case 0xFLL:
      FormatProgressViewNodeStyle.bind(binder:context:)(a1, a2);
      return;
    case 0x11:
      FormatSponsoredBannerNodeStyle.bind(binder:context:)(a1, a2);
      return;
    default:
      FormatViewNodeStyle.bind(binder:context:)(a1, a2);
      return;
  }
}

uint64_t FormatViewNodeStyle.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v6 = *(v2 + 48);

  sub_1D62180F8(a1, a2, v6);
  if (v3)
  {
  }

  v8 = *(v2 + 56);
  if (v8)
  {
    result = sub_1D620B270(a1, a2, v8);
  }

  if ((~*(v2 + 64) & 0xF000000000000007) != 0)
  {
    *&v14[0] = *(v2 + 64);

    FormatBackground.bind(binder:context:)(a1, a2);
  }

  v9 = *(v2 + 72);
  if (v9)
  {
    result = sub_1D620E744(a1, a2, v9);
  }

  v10 = *(v2 + 152);
  v15 = *(v2 + 136);
  v16 = v10;
  v17 = *(v2 + 168);
  v18 = *(v2 + 184);
  v11 = v18;
  v12 = *(v2 + 120);
  v14[0] = *(v2 + 104);
  v14[1] = v12;
  if (v18 != 254)
  {
    v19 = v15;
    sub_1D62B5354(v14, v13, &qword_1EDF33718, &type metadata for FormatShadow);

    FormatColor.bind(binder:context:)(a1, a2);

    if (v11 <= 2)
    {
      if (v11)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v11 <= 4)
      {
        if (v11 != 3)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      if (v11 == 5)
      {
LABEL_18:
        sub_1D625E06C(a1, a2);
LABEL_19:
        sub_1D625E06C(a1, a2);
      }
    }

    return sub_1D5D0ABCC(v14, &qword_1EDF33718, &type metadata for FormatShadow);
  }

  return result;
}

uint64_t FormatSupplementaryNodeStyle.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v6 = *(v2 + 56);

  sub_1D621AA44(a1, a2, v6);

  if (!v3 && *(v2 + 74) != 255)
  {
    v8 = *(v2 + 72) | (*(v2 + 74) << 16);
    v9 = *(v2 + 64);
    sub_1D610CA74(v9, v8, SBYTE2(v8), sub_1D610CA28, sub_1D610CA5C);
    FormatSupplementaryNodePinTrait.bind(binder:context:)(a1, a2);
    return sub_1D610CA74(v9, v8, SBYTE2(v8), sub_1D60CF6A8, sub_1D60CF6DC);
  }

  return result;
}

uint64_t sub_1D626190C(uint64_t a1, uint64_t a2, void (*a3)(__int128 *, __int128 *), uint64_t (*a4)(__int128 *))
{
  swift_beginAccess();
  v10 = *(v4 + 48);

  sub_1D6232A3C(a1, a2, v10, a3, a4);
  if (v5)
  {
  }

  v12 = *(v4 + 56);
  if (v12)
  {
    result = sub_1D620B270(a1, a2, v12);
  }

  if ((~*(v4 + 64) & 0xF000000000000007) != 0)
  {
    *&v20[0] = *(v4 + 64);

    FormatBackground.bind(binder:context:)(a1, a2);
  }

  v13 = *(v4 + 72);
  if (v13)
  {
    result = sub_1D620E744(a1, a2, v13);
  }

  v14 = *(v4 + 152);
  v21 = *(v4 + 136);
  v22 = v14;
  v23 = *(v4 + 168);
  v24 = *(v4 + 184);
  v15 = v24;
  v16 = *(v4 + 120);
  v20[0] = *(v4 + 104);
  v20[1] = v16;
  if (v24 != 254)
  {
    v25 = v21;
    sub_1D62B5354(v20, v19, &qword_1EDF33718, &type metadata for FormatShadow);

    FormatColor.bind(binder:context:)(a1, a2);

    if (v15 <= 2)
    {
      if (v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v15 <= 4)
      {
        v17 = a1;
        v18 = a2;
        if (v15 == 3)
        {
          sub_1D625E06C(a1, a2);
LABEL_23:
          sub_1D625E06C(a1, a2);
          result = sub_1D5D0ABCC(v20, &qword_1EDF33718, &type metadata for FormatShadow);
          goto LABEL_11;
        }

        goto LABEL_21;
      }

      if (v15 == 5)
      {
        sub_1D625E06C(a1, a2);
        v17 = a1;
        v18 = a2;
LABEL_21:
        sub_1D625E06C(v17, v18);
      }
    }

    result = sub_1D5D0ABCC(v20, &qword_1EDF33718, &type metadata for FormatShadow);
  }

LABEL_11:
  if ((~*(v4 + 192) & 0xF000000000000007) != 0)
  {
    v19[0] = *(v4 + 192);

    FormatColor.bind(binder:context:)(a1, a2);
  }

  return result;
}

uint64_t FormatProgressViewNodeStyle.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v6 = v2[6];

  sub_1D621D5F8(a1, a2, v6);

  if (!v3)
  {
    v8 = v2[7];
    if (v8)
    {
      result = sub_1D620B270(a1, a2, v8);
    }

    if ((~v2[8] & 0xF000000000000007) != 0)
    {

      FormatColor.bind(binder:context:)(a1, a2);
    }

    if ((~v2[9] & 0xF000000000000007) != 0)
    {

      FormatColor.bind(binder:context:)(a1, a2);
    }
  }

  return result;
}

unint64_t FormatSponsoredBannerNodeStyle.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v6 = v2[6];

  sub_1D621D854(a1, a2, v6);

  if (!v3)
  {
    if ((~v2[7] & 0xF000000000000007) != 0)
    {

      FormatColor.bind(binder:context:)(a1, a2);
    }

    if ((~v2[8] & 0xF000000000000007) != 0)
    {

      FormatColor.bind(binder:context:)(a1, a2);
    }

    v8 = v2[10];
    if (v8)
    {
      if (v8 == 1)
      {
        v11 = 1;
      }

      else
      {
        if (v8 == 2)
        {
          return result;
        }

        v9 = *(v8 + 16);
        v10 = *(v8 + 24);
        sub_1D5D0A59C(v8);
        sub_1D5D0A57C(v9);
        sub_1D5D0A57C(v10);
        sub_1D6248A90(a1, a2, v9, v10);
        sub_1D5D0A58C(v9);
        sub_1D5D0A58C(v10);
        v11 = v8;
      }
    }

    else
    {
      v11 = 0;
    }

    return sub_1D5D0A5AC(v11);
  }

  return result;
}

uint64_t sub_1D6261F40(uint64_t a1, uint64_t a2)
{

  FormatExpression.bind(binder:context:)(a1, a2);
}

void FormatNumber.bind(binder:context:)(uint64_t a1, uint64_t a2)
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

void sub_1D6261FE4(uint64_t a1, uint64_t a2)
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

uint64_t FormatOption.bind(binder:context:)(uint64_t a1, uint64_t a2)
{

  FormatOptionValue.bind(binder:context:)(a1, a2);
}

void FormatOptionValue.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v92 = a2;
  v91 = a1;
  v3 = sub_1D72585BC();
  v90 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5CF4A48(0, &qword_1EDF40040, type metadata accessor for FormatSelectorValue);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v90 - v10;
  v12 = sub_1D725891C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C8E028();
  MEMORY[0x1EEE9AC00](v17, v18);
  v21 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *v2;
  switch(*v2 >> 60)
  {
    case 1uLL:
      v55 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x30);

      swift_bridgeObjectRetain_n();
      v56 = v93;
      sub_1D620F94C(v91, v92, v55);

      swift_bridgeObjectRelease_n();
      if (!v56)
      {
        goto LABEL_23;
      }

      return;
    case 2uLL:
      v44 = v19;
      v45 = swift_projectBox();
      sub_1D62B50EC(v45, v21, sub_1D5C8E028);
      (*(v13 + 16))(v16, v21, v12);
      sub_1D5B49474(0, &qword_1EDF329A8);
      if (swift_dynamicCast())
      {
        v46 = *(&v95 + 1);
        v47 = v96;
        __swift_project_boxed_opaque_existential_1(&v94, *(&v95 + 1));
        v49 = v91;
        v48 = v92;
        v50 = v93;
        (*(v47 + 8))(v91, v92, v46, v47);
        if (v50)
        {
          __swift_destroy_boxed_opaque_existential_1(&v94);
LABEL_48:
          sub_1D62B51D0(v21, sub_1D5C8E028);
          return;
        }

        __swift_destroy_boxed_opaque_existential_1(&v94);
      }

      else
      {
        v96 = 0;
        v94 = 0u;
        v95 = 0u;
        sub_1D5BFB774(&v94, &qword_1EDF329A0, &qword_1EDF329A8);
        v48 = v92;
        v50 = v93;
        v49 = v91;
      }

      sub_1D623CA14(v49, v48, *&v21[*(v44 + 36)]);
      if (v50)
      {
        goto LABEL_48;
      }

      v93 = 0;
      sub_1D62B51D0(v21, sub_1D5C8E028);
      return;
    case 3uLL:
      v51 = v22 & 0xFFFFFFFFFFFFFFFLL;
      v52 = *(v51 + 16);
      v53 = *(v51 + 24);

      v26 = v93;
      sub_1D6249984(v91, v92, v53, v52);
      goto LABEL_18;
    case 4uLL:
      v28 = v22 & 0xFFFFFFFFFFFFFFFLL;
      v30 = *(v28 + 16);
      v29 = *(v28 + 24);

      v31 = v30;
      v26 = v93;
      sub_1D6249AA0(v91, v92, v31, v29);
      goto LABEL_18;
    case 5uLL:
      v57 = (v22 & 0xFFFFFFFFFFFFFFFLL);
      v59 = v57[2];
      v58 = v57[3];
      v60 = v57[4];

      v61 = v59;
      v62 = v93;
      sub_1D6249BB8(v91, v92, v61, v58, v60);
      v54 = v62;

      goto LABEL_22;
    case 6uLL:
      v67 = swift_projectBox();
      sub_1D62B7198(v67, v11, &qword_1EDF40040, type metadata accessor for FormatSelectorValue);
      (*(v90 + 16))(v6, v11, v3);
      sub_1D5B49474(0, &qword_1EDF329A8);
      if (swift_dynamicCast())
      {
        v68 = *(&v95 + 1);
        v69 = v96;
        __swift_project_boxed_opaque_existential_1(&v94, *(&v95 + 1));
        v71 = v91;
        v70 = v92;
        v72 = v93;
        (*(v69 + 8))(v91, v92, v68, v69);
        if (v72)
        {
          __swift_destroy_boxed_opaque_existential_1(&v94);
LABEL_52:
          sub_1D62B7204(v11, &qword_1EDF40040, type metadata accessor for FormatSelectorValue);
          return;
        }

        __swift_destroy_boxed_opaque_existential_1(&v94);
      }

      else
      {
        v96 = 0;
        v94 = 0u;
        v95 = 0u;
        sub_1D5BFB774(&v94, &qword_1EDF329A0, &qword_1EDF329A8);
        v70 = v92;
        v72 = v93;
        v71 = v91;
      }

      sub_1D623C484(v71, v70, *&v11[*(v8 + 36)]);
      if (v72)
      {
        goto LABEL_52;
      }

      v93 = 0;
      sub_1D62B7204(v11, &qword_1EDF40040, type metadata accessor for FormatSelectorValue);
      return;
    case 7uLL:
      *&v94 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

      v73 = v93;
      FormatColor.bind(binder:context:)(v91, v92);
      if (!v73)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    case 8uLL:
      v40 = v22 & 0xFFFFFFFFFFFFFFFLL;
      v41 = *(v40 + 16);
      v42 = *(v40 + 24);

      v43 = v93;
      sub_1D6250710(v91, v92, v41, v42, FormatOptionValue.bind(binder:context:));
      if (v43)
      {

        goto LABEL_32;
      }

      v93 = 0;

      goto LABEL_57;
    case 9uLL:
      *&v94 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

      v73 = v93;
      FormatAsyncImageContent.bind(binder:context:)(v91, v92);
      if (v73)
      {
        goto LABEL_32;
      }

LABEL_34:
      v93 = v73;
      goto LABEL_57;
    case 0xAuLL:
      *&v94 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

      v27 = v93;
      FormatVideoNodeContent.bind(binder:context:)(v91, v92);
      if (v27)
      {
        goto LABEL_32;
      }

      v93 = 0;
      goto LABEL_57;
    case 0xBuLL:
      return;
    case 0xCuLL:
      v32 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      if ((v32 >> 61) > 2)
      {
        if (v32 >> 61 == 3)
        {
          v75 = *((v32 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
          v76 = *((v32 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
          v77 = *((v32 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
          *&v94 = *((v32 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v74 = v94;
          *(&v94 + 1) = v75;
          *&v95 = v76;
          BYTE8(v95) = v77;

          sub_1D5F58038(v74, v75, v76, v77);
          v78 = v93;
          sub_1D607B228(v92);
          if (v78)
          {
            sub_1D5F57FEC(v74, v75, v76, v77);
            goto LABEL_32;
          }

          v93 = 0;
          sub_1D5F57FEC(v74, v75, v76, v77);
        }

        else
        {
          v85 = *((v32 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
          v97[0] = *((v32 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v97[1] = v85;
          v98 = *((v32 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);

          sub_1D62B50EC(v97, &v94, sub_1D62B5154);
          v86 = v93;
          sub_1D6250408(v91, v92);
          if (v86)
          {
            sub_1D62B51D0(v97, sub_1D62B5154);
            goto LABEL_32;
          }

          v93 = 0;
          sub_1D62B51D0(v97, sub_1D62B5154);
        }
      }

      else
      {
        if ((v32 >> 61) < 2)
        {
          return;
        }

        v33 = *((v32 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        v34 = v91;
        if ((v33 >> 62) < 2)
        {
          return;
        }

        if (v33 >> 62 == 2)
        {
          v36 = *((v33 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          v37 = *((v33 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
          v38 = *((v33 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
          *&v94 = *((v33 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v35 = v94;
          *(&v94 + 1) = v36;
          *&v95 = v37;
          BYTE8(v95) = v38;

          swift_retain_n();
          sub_1D5D27950(v35, v36, v37, v38);
          v39 = v93;
          sub_1D6089844(v92);
          v93 = v39;

          sub_1D5D28C84(v35, v36, v37, v38);

          goto LABEL_57;
        }

        v87 = *((v33 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        *&v94 = *((v33 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        swift_retain_n();

        swift_retain_n();
        v89 = v92;
        v88 = v93;
        FormatURL.bind(binder:context:)(v34, v92);
        if (v88)
        {

          return;
        }

        sub_1D620FAB4(v34, v89, v87);
        v93 = 0;

        swift_bridgeObjectRelease_n();
      }

      goto LABEL_57;
    case 0xDuLL:
      v63 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      if (v63 < 0)
      {
        v79 = v63 & 0x7FFFFFFFFFFFFFFFLL;
        v81 = *(v79 + 24);
        v82 = *(v79 + 32);
        v83 = *(v79 + 40);
        *&v94 = *(v79 + 16);
        v80 = v94;
        *(&v94 + 1) = v81;
        *&v95 = v82;
        BYTE8(v95) = v83;

        sub_1D62B6240(v80, v81, v82, v83);
        v84 = v93;
        sub_1D6C09C54(v92);
        if (v84)
        {
          sub_1D62B628C(v80, v81, v82, v83);
LABEL_32:
        }

        else
        {
          v93 = 0;
          sub_1D62B628C(v80, v81, v82, v83);
LABEL_57:
        }
      }

      else
      {
        v64 = *(v63 + 16);
        v65 = *(v63 + 24);

        v66 = v93;
        sub_1D6242FE8(v91, v92, v64, v65);
        if (!v66)
        {
          v93 = 0;
        }
      }

      return;
    default:
      v23 = *(v22 + 16);
      v24 = *(v22 + 24);

      v25 = v23;
      v26 = v93;
      sub_1D6249860(v91, v92, v25, v24);
LABEL_18:
      v54 = v26;
LABEL_22:

      v56 = v54;
      if (!v54)
      {
LABEL_23:
        v93 = v56;
      }

      return;
  }
}

uint64_t sub_1D6262BF0(uint64_t a1, uint64_t a2)
{

  FormatOptionValue.bind(binder:context:)(a1, a2);
}

void FormatOptionCompareValue.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  if ((*(v2 + 16) & 1) == 0)
  {
    FormatOptionValue.bind(binder:context:)(a1, a2);
  }
}

void sub_1D6262C88(uint64_t a1, uint64_t a2)
{
  if ((*(v2 + 16) & 1) == 0)
  {
    FormatOptionValue.bind(binder:context:)(a1, a2);
  }
}

void FormatOptionExpression.Compare.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  if ((*(v2 + 32) & 1) == 0)
  {
    FormatOptionValue.bind(binder:context:)(a1, a2);
  }
}

uint64_t sub_1D6262D48(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 32);
  if ((v3 & 0x80000000) == 0 && (v3 & 1) == 0)
  {
    v4 = *(v2 + 16);
    v5 = *(v2 + 24);
    v6 = result;

    FormatOptionValue.bind(binder:context:)(v6, a2);
    return sub_1D5C581A4(v4, v5, 0);
  }

  return result;
}

void sub_1D6262DC0(uint64_t a1, uint64_t a2)
{
  if ((*(v2 + 32) & 1) == 0)
  {
    FormatOptionValue.bind(binder:context:)(a1, a2);
  }
}

uint64_t FormatVideoNodeContent.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = *v2 >> 61;
  if (v7 <= 1)
  {
    if (v7)
    {
      v27 = v6 & 0x1FFFFFFFFFFFFFFFLL;
      v28 = *(v27 + 16);
      v29 = *(v27 + 24);

      sub_1D6247DA4(a1, a2, v28, v29);
    }

    else
    {
      v12 = *(v6 + 208);
      v42 = *(v6 + 192);
      v43 = v12;
      v13 = *(v6 + 240);
      v44 = *(v6 + 224);
      v45 = v13;
      v14 = *(v6 + 144);
      v38 = *(v6 + 128);
      v39 = v14;
      v15 = *(v6 + 176);
      v40 = *(v6 + 160);
      v41 = v15;
      v16 = *(v6 + 80);
      v34 = *(v6 + 64);
      v35 = v16;
      v17 = *(v6 + 112);
      v36 = *(v6 + 96);
      v37 = v17;
      v18 = *(v6 + 32);
      v31 = *(v6 + 16);
      v32 = v18;
      v33 = *(v6 + 48);
      v19 = *(v6 + 224);
      v30[27] = *(v6 + 208);
      v30[28] = v19;
      v30[29] = *(v6 + 240);
      v20 = *(v6 + 160);
      v30[23] = *(v6 + 144);
      v30[24] = v20;
      v21 = *(v6 + 192);
      v30[25] = *(v6 + 176);
      v30[26] = v21;
      v22 = *(v6 + 96);
      v30[19] = *(v6 + 80);
      v30[20] = v22;
      v23 = *(v6 + 128);
      v30[21] = *(v6 + 112);
      v30[22] = v23;
      v24 = *(v6 + 32);
      v30[15] = *(v6 + 16);
      v30[16] = v24;
      v25 = *(v6 + 64);
      v30[17] = *(v6 + 48);
      v30[18] = v25;
      sub_1D5EEBE38(&v31, v30);
      FormatRemoteVideo.bind(binder:context:)(a1, a2);
      return sub_1D5EEBE94(&v31);
    }
  }

  else
  {
    v8 = (v6 & 0x1FFFFFFFFFFFFFFFLL);
    if (v7 == 2)
    {

      sub_1D6248B70(a1, a2);
    }

    else
    {
      if (v7 == 3)
      {
        v9 = v8[3];
        v10 = v8[4];
        *&v31 = v8[2];
        *(&v31 + 1) = v9;
        *&v32 = v10;

        sub_1D71580D8(a2);
      }

      v26 = v8[3];
      *&v31 = v8[2];
      swift_retain_n();

      FormatVideoNodeContent.bind(binder:context:)(a1, a2);
      if (v3)
      {
      }

      sub_1D6231208(a1, a2, v26);
    }
  }
}

uint64_t FormatVideoPlayerContent.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  if (*v2 < 0)
  {
    v9 = v4 & 0x7FFFFFFFFFFFFFFFLL;
    v10 = *(v9 + 16);
    v11 = *(v9 + 24);
    v12 = *(v9 + 32);
    v13 = *(v9 + 40);
    sub_1D62B6240(v10, v11, v12, v13);
    sub_1D6C09C54(a2);
    return sub_1D62B628C(v10, v11, v12, v13);
  }

  else
  {
    v6 = *(v4 + 16);
    v7 = *(v4 + 24);

    sub_1D6242FE8(a1, a2, v6, v7);
  }
}

uint64_t FormatOptionsNode.bindChildren(binder:context:)(unint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v6 = v2[4];

  sub_1D623D0C4(a1, a2, v6);

  if (!v3)
  {
    if (v2[6])
    {
      v8 = v2[10];

      sub_1D5DEA234(v8);

      FormatFlexBoxNodeItem.bind(binder:context:)(a1, a2);

      sub_1D5CBF568(v8);
    }

    swift_beginAccess();
    v9 = v2[5];

    sub_1D6215F90(a1, a2, v9);
  }

  return result;
}

uint64_t FormatOptionsNodeStatement.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);
  v10[0] = *(v2 + 16);
  v10[1] = v5;
  v11[0] = *(v2 + 48);
  *(v11 + 15) = *(v2 + 63);
  sub_1D5CF5DBC(v10, v8);
  FormatOptionsNodeStatementValue.bind(binder:context:)(a1, a2);
  v6 = *(v2 + 32);
  v8[0] = *(v2 + 16);
  v8[1] = v6;
  v9[0] = *(v2 + 48);
  *(v9 + 15) = *(v2 + 63);
  return sub_1D5CF603C(v8);
}

void FormatOptionsNodeStatementValue.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v9 = *(v2 + 32);
  v8 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = ((4 * *(v2 + 50)) | (v10 >> 11) & 3);
  if (v11 <= 3)
  {
    if (((4 * *(v2 + 50)) | (v10 >> 11) & 3) > 1u)
    {
      if (v11 == 2)
      {
        v31 = *v2;
        v32 = v5;
        v33 = v7;
        v34 = v6;
        v35 = v9;
        v36 = v8;
        v37 = v10 & 0xE7FF;
        FormatString.bind(binder:context:)(a1, a2);
      }
    }

    else if ((4 * *(v2 + 50)) | (v10 >> 11) & 3)
    {
      sub_1D620B270(a1, a2, v4);
    }

    else
    {
      sub_1D62B41FC(a2, *v2);
    }
  }

  else if (((4 * *(v2 + 50)) | (v10 >> 11) & 3) <= 5u)
  {
    if (v11 == 4)
    {
      v31 = *v2;
      v32 = v5;
      v33 = v7;
      v34 = v6;
      v35 = v9;
      v36 = v8;
      v37 = v10;
      FormatOptionsNodeStatementBinding.bind(binder:context:)(a1, a2);
    }

    else
    {

      sub_1D620F94C(a1, a2, v9);
    }
  }

  else if (v11 == 6)
  {
    if ((v4 >> 62) - 2 >= 2)
    {
      if (v4 >> 62)
      {
        v25 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v24 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);

        sub_1D5F33D5C(v24);
        sub_1D620B270(a1, a2, v25);
        if (!v3)
        {
          v31 = v24;
          sub_1D5F33D5C(v24);
          FormatDateTime.bind(binder:context:)(a1, a2);
          sub_1D5F33D8C(v24);
        }

        sub_1D5F33D8C(v24);
      }

      else
      {
        v16 = *(v4 + 24);
        v17 = *(v4 + 32);
        v18 = *(v4 + 40);
        v31 = *(v4 + 16);
        v32 = v16;
        v33 = v17;
        LOBYTE(v34) = v18;
        sub_1D5D27950(v31, v16, v17, v18);
        sub_1D6D9914C(a2);
        sub_1D5D28C84(v31, v16, v17, v18);
      }
    }
  }

  else if (v11 == 7)
  {
    if ((v4 >> 62) >= 2)
    {
      if (v4 >> 62 == 3)
      {
        v12 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v31 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        swift_retain_n();

        FormatURL.bind(binder:context:)(a1, a2);
        if (v3)
        {
        }

        else
        {

          sub_1D620FAB4(a1, a2, v12);
          swift_bridgeObjectRelease_n();
        }
      }

      else
      {
        v28 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v29 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
        v30 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
        v31 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v32 = v28;
        v33 = v29;
        LOBYTE(v34) = v30;
        sub_1D5D27950(v31, v28, v29, v30);
        sub_1D6089844(a2);
        sub_1D5D28C84(v31, v28, v29, v30);
      }
    }
  }

  else
  {
    v19 = *(v4 + 32);
    v38[0] = *(v4 + 16);
    v38[1] = v19;
    v39[0] = *(v4 + 48);
    *(v39 + 11) = *(v4 + 59);
    sub_1D62B6438(v38, &v31, &qword_1EDF2ED78, type metadata accessor for FormatSwitchValue);
    sub_1D6240FD0(a1, a2);
    sub_1D62B6514(v38);
  }
}

uint64_t sub_1D6263738(unint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);
  v10[0] = *(v2 + 16);
  v10[1] = v5;
  v11[0] = *(v2 + 48);
  *(v11 + 15) = *(v2 + 63);
  sub_1D5CF5DBC(v10, v8);
  FormatOptionsNodeStatementValue.bind(binder:context:)(a1, a2);
  v6 = *(v2 + 32);
  v8[0] = *(v2 + 16);
  v8[1] = v6;
  v9[0] = *(v2 + 48);
  *(v9 + 15) = *(v2 + 63);
  return sub_1D5CF603C(v8);
}

void FormatOptionsNodeStatementBinding.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 8);
  v4 = *(v2 + 48);
  v5 = v4 >> 13;
  if (v4 >> 13 > 1)
  {
    v7 = *(v2 + 16);
    v6 = *(v2 + 24);
    if (v5 == 2)
    {
      *&v13 = *v2;
      *(&v13 + 1) = v3;
      *&v14 = v7;
      *(&v14 + 1) = v6;
      v15 = *(v2 + 32);
      v16 = v4 & 0x1FFF;
      FormatTextNodeBinding.bind(binder:context:)(a1, a2);
    }

    else
    {
      *&v13 = *v2;
      *(&v13 + 1) = v3;
      *&v14 = v7;
      BYTE8(v14) = v6;
      if (v5 == 3)
      {
        sub_1D6089844(a2);
      }

      else
      {
        sub_1D6D9914C(a2);
      }
    }

    return;
  }

  if (!v5)
  {
    v8 = v3 >> 12;
    if (((1 << v8) & 0x1D7) == 0)
    {
      if (v8 != 3)
      {
        if ((v3 & 0x80) == 0)
        {
          return;
        }

        v9 = a1;
        v10 = a2;
        goto LABEL_16;
      }

      if ((v3 & 0x80) != 0 && ((v3 >> 7) & 0x1E | (v3 >> 5) & 1) == 8)
      {
        v9 = a1;
        v10 = a2;
LABEL_16:
        v17 = v3 & 0x3F;
        sub_1D5B49474(0, &qword_1EDF329A8);
        if (swift_dynamicCast())
        {
          v11 = *(&v14 + 1);
          v12 = v15;
          __swift_project_boxed_opaque_existential_1(&v13, *(&v14 + 1));
          (*(v12 + 8))(v9, v10, v11, v12);
          __swift_destroy_boxed_opaque_existential_1(&v13);
        }

        else
        {
          *&v15 = 0;
          v13 = 0u;
          v14 = 0u;
          sub_1D5BFB774(&v13, &qword_1EDF329A0, &qword_1EDF329A8);
        }
      }
    }
  }
}

unint64_t FormatOsloSheetPurchaseDataModel.bind(binder:context:)(unint64_t result, uint64_t a2)
{
  v4 = *(v2 + 16);
  if ((v4 & 0xF000000000000007) != 0x7000000000000007)
  {
    v5 = v4 >> 62;
    if (((v4 >> 57) & 0xF8 | v4 & 7 | 0x20) != 0x7F && v5 >= 2)
    {
      if (v5 == 2)
      {
        v8 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v9 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v10 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
        v11 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
        sub_1D614F63C(v4);
        sub_1D5D27950(v8, v9, v10, v11);
        sub_1D6089844(a2);
        sub_1D5D28C84(v8, v9, v10, v11);
      }

      else
      {
        v12 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v13 = result;
        sub_1D614F63C(v4);
        swift_retain_n();

        FormatURL.bind(binder:context:)(v13, a2);
        if (v3)
        {
        }

        else
        {

          sub_1D620FAB4(v13, a2, v12);
          swift_bridgeObjectRelease_n();
        }
      }

      return sub_1D614F680(v4);
    }
  }

  return result;
}

uint64_t FormatPostPurchase.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v4 = *v2 >> 62;
  if (((*v2 >> 57) & 0xF8 | *v2 & 7 | 0x20) != 0x7F && v4 >= 2)
  {
    if (v4 == 2)
    {
      v9 = *((*v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v10 = *((*v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v11 = *((*v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v12 = *((*v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      sub_1D5D27950(v9, v10, v11, v12);
      sub_1D6089844(a2);
      return sub_1D5D28C84(v9, v10, v11, v12);
    }

    else
    {
      v7 = *((*v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v8 = result;
      swift_retain_n();

      FormatURL.bind(binder:context:)(v8, a2);
      if (v3)
      {
      }

      else
      {

        sub_1D620FAB4(v8, a2, v7);
        swift_bridgeObjectRelease_n();
      }
    }
  }

  return result;
}

unint64_t sub_1D6263CF8(unint64_t result, uint64_t a2)
{
  v3 = *(v2 + 16);
  if ((v3 & 0xF000000000000007) != 0x7000000000000007 && ((v3 >> 57) & 0xF8 | v3 & 7 | 0x20) != 0x7F)
  {
    v4 = result;
    sub_1D614F658(v3);
    FormatURL.bind(binder:context:)(v4, a2);
    return sub_1D614F680(v3);
  }

  return result;
}

uint64_t FormatPercentFillSizing.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[1];
  result = sub_1D620B270(a1, a2, *v2);
  if (!v3 && v6 >= 2)
  {
    return sub_1D620B270(a1, a2, v6);
  }

  return result;
}

uint64_t FormatPercentFillSpacing.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  if (*v2 >= 2)
  {
    return sub_1D620B270(result, a2, *v2);
  }

  return result;
}

uint64_t sub_1D6263E08(uint64_t a1, uint64_t a2)
{
  v6 = v2[1];
  result = sub_1D620B270(a1, a2, *v2);
  if (!v3 && v6 >= 2)
  {
    return sub_1D620B270(a1, a2, v6);
  }

  return result;
}

uint64_t sub_1D6263E58(uint64_t result, uint64_t a2)
{
  if (((*v2 >> 57) & 0xF8 | *v2 & 7 | 0x20) != 0x7F)
  {
    return FormatURL.bind(binder:context:)(result, a2);
  }

  return result;
}

uint64_t sub_1D6263EA0(uint64_t result, uint64_t a2)
{
  if ((~*v2 & 0xF000000000000007) != 0)
  {
    v3 = result;

    FormatColor.bind(binder:context:)(v3, a2);
  }

  return result;
}

uint64_t sub_1D6263F10(uint64_t a1, uint64_t a2)
{
  v11 = *(v2 + 65);
  if (v11 == 2)
  {
    v8 = 0u;
    v9 = 0u;
    v10 = 0;
  }

  else
  {
    sub_1D5B49474(0, &qword_1EDF329A8);
    if (swift_dynamicCast())
    {
      v5 = *(&v9 + 1);
      if (*(&v9 + 1))
      {
        v6 = v10;
        __swift_project_boxed_opaque_existential_1(&v8, *(&v9 + 1));
        (*(v6 + 8))(a1, a2, v5, v6);
        return __swift_destroy_boxed_opaque_existential_1(&v8);
      }
    }

    else
    {
      v10 = 0;
      v8 = 0u;
      v9 = 0u;
    }
  }

  return sub_1D5BFB774(&v8, &qword_1EDF329A0, &qword_1EDF329A8);
}

uint64_t sub_1D6264030(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x1E6969530];
  sub_1D5B54684(0, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v15 - v8;
  sub_1D5B5714C();
  sub_1D5C00D70(v2 + *(v10 + 52), v9, &qword_1EDF45B00, v5);
  v11 = sub_1D725891C();
  if ((*(*(v11 - 8) + 48))(v9, 1, v11) == 1)
  {
    sub_1D5B6EF64(v9, &qword_1EDF45B00, MEMORY[0x1E6969530]);
LABEL_6:
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    return sub_1D5BFB774(&v15, &qword_1EDF329A0, &qword_1EDF329A8);
  }

  sub_1D5B49474(0, &qword_1EDF329A8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  v12 = *(&v16 + 1);
  if (*(&v16 + 1))
  {
    v13 = v17;
    __swift_project_boxed_opaque_existential_1(&v15, *(&v16 + 1));
    (*(v13 + 8))(a1, a2, v12, v13);
    return __swift_destroy_boxed_opaque_existential_1(&v15);
  }

  return sub_1D5BFB774(&v15, &qword_1EDF329A0, &qword_1EDF329A8);
}

uint64_t sub_1D6264224(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 80))
  {
    v8 = 0u;
    v9 = 0u;
    v10 = 0;
  }

  else
  {
    sub_1D5B49474(0, &qword_1EDF329A8);
    if (swift_dynamicCast())
    {
      v5 = *(&v9 + 1);
      if (*(&v9 + 1))
      {
        v6 = v10;
        __swift_project_boxed_opaque_existential_1(&v8, *(&v9 + 1));
        (*(v6 + 8))(a1, a2, v5, v6);
        return __swift_destroy_boxed_opaque_existential_1(&v8);
      }
    }

    else
    {
      v10 = 0;
      v8 = 0u;
      v9 = 0u;
    }
  }

  return sub_1D5BFB774(&v8, &qword_1EDF329A0, &qword_1EDF329A8);
}

uint64_t sub_1D626434C(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 80))
  {
    sub_1D5B49474(0, &qword_1EDF329A8);

    if (swift_dynamicCast())
    {
      v5 = *(&v9 + 1);
      if (*(&v9 + 1))
      {
        v6 = v10;
        __swift_project_boxed_opaque_existential_1(&v8, *(&v9 + 1));
        (*(v6 + 8))(a1, a2, v5, v6);
        return __swift_destroy_boxed_opaque_existential_1(&v8);
      }
    }

    else
    {
      v10 = 0;
      v8 = 0u;
      v9 = 0u;
    }
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
    v10 = 0;
  }

  return sub_1D5BFB774(&v8, &qword_1EDF329A0, &qword_1EDF329A8);
}

uint64_t sub_1D6264474(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x1E6968FB0];
  sub_1D5B54684(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v15 - v8;
  sub_1D5CF4A48(0, &qword_1EDF43F78, type metadata accessor for FormatPrimitivePropertyDefinition);
  sub_1D5C00D70(v2 + *(v10 + 52), v9, &qword_1EDF45B40, v5);
  v11 = sub_1D72585BC();
  if ((*(*(v11 - 8) + 48))(v9, 1, v11) == 1)
  {
    sub_1D5B6EF64(v9, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
LABEL_6:
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    return sub_1D5BFB774(&v15, &qword_1EDF329A0, &qword_1EDF329A8);
  }

  sub_1D5B49474(0, &qword_1EDF329A8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  v12 = *(&v16 + 1);
  if (*(&v16 + 1))
  {
    v13 = v17;
    __swift_project_boxed_opaque_existential_1(&v15, *(&v16 + 1));
    (*(v13 + 8))(a1, a2, v12, v13);
    return __swift_destroy_boxed_opaque_existential_1(&v15);
  }

  return sub_1D5BFB774(&v15, &qword_1EDF329A0, &qword_1EDF329A8);
}

uint64_t FormatPrimitivePropertyDefinition.bind(binder:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v8 = sub_1D726393C();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v17 - v12;
  (*(v9 + 16))(&v17 - v12, v3 + *(a3 + 52), v8, v11);
  if ((*(*(v7 - 8) + 48))(v13, 1, v7) == 1)
  {
    (*(v9 + 8))(v13, v8);
LABEL_6:
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    return sub_1D5BFB774(&v17, &qword_1EDF329A0, &qword_1EDF329A8);
  }

  sub_1D5B49474(0, &qword_1EDF329A8);
  if (!swift_dynamicCast())
  {
    goto LABEL_6;
  }

  v14 = *(&v18 + 1);
  if (*(&v18 + 1))
  {
    v15 = v19;
    __swift_project_boxed_opaque_existential_1(&v17, *(&v18 + 1));
    (*(v15 + 8))(a1, a2, v14, v15);
    return __swift_destroy_boxed_opaque_existential_1(&v17);
  }

  return sub_1D5BFB774(&v17, &qword_1EDF329A0, &qword_1EDF329A8);
}

uint64_t FormatProgressCircleOptions.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = *(v2 + 8);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = *(v2 + 40);
  v13 = *(v2 + 32);
  v11 = *(v2 + 48);

  sub_1D620B270(a1, a2, v6);

  if (!v3)
  {
    sub_1D5C75A4C(v7, v8, v9);
    sub_1D60ECF10(a2);
    sub_1D5D2F2C8(v7, v8, v9);

    sub_1D620B270(a1, a2, v13);

    sub_1D620B270(a1, a2, v10);

    sub_1D620B270(a1, a2, v11);
  }

  return result;
}

uint64_t FormatProgressKind.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 56);
  if (!(v3 >> 6))
  {
    return FormatProgressPieOptions.bind(binder:context:)(result, a2);
  }

  if (v3 >> 6 == 1)
  {
    return FormatProgressCircleOptions.bind(binder:context:)(result, a2);
  }

  return result;
}

uint64_t FormatProgressPieOptions.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = *(v2 + 8);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = *(v2 + 40);
  v13 = *(v2 + 32);
  v11 = *(v2 + 48);

  sub_1D620B270(a1, a2, v6);

  if (!v3)
  {
    sub_1D5C75A4C(v7, v8, v9);
    sub_1D60ECF10(a2);
    sub_1D5D2F2C8(v7, v8, v9);
    if (v13)
    {
      sub_1D620B270(a1, a2, v13);
    }

    sub_1D620B270(a1, a2, v10);

    sub_1D620B270(a1, a2, v11);
  }

  return result;
}

uint64_t sub_1D6264C6C(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 56);
  if (!(v3 >> 6))
  {
    return FormatProgressPieOptions.bind(binder:context:)(result, a2);
  }

  if (v3 >> 6 == 1)
  {
    return FormatProgressCircleOptions.bind(binder:context:)(result, a2);
  }

  return result;
}

void FormatProgressViewNodeContent.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  v7 = *(v2 + 40);
  v8 = *(v2 + 66);
  v9 = *(v2 + 64);
  if ((*(v2 + 8) & 1) == 0)
  {
    v23 = *(v2 + 40);
    v10 = *v2;
    v11 = a1;
    v12 = a2;
    sub_1D620B270(a1, a2, v10);
    if (v3)
    {
      return;
    }

    a2 = v12;
    a1 = v11;
    LOBYTE(v7) = v23;
  }

  v13 = v9 | (v8 << 16);
  if ((v13 & 0x80000000) == 0)
  {
    sub_1D620B270(a1, a2, v4);
    return;
  }

  v14 = (v13 >> 13) & 8 | (v13 >> 11) & 7;
  if (v14 > 3)
  {
    if (((1 << v14) & 0x330) != 0)
    {
      return;
    }

    if (v14 != 6)
    {
      FormatString.bind(binder:context:)(a1, a2);
      return;
    }

    if (v7 >> 6 && v7 >> 6 != 1)
    {
      if ((v7 & 0x3F) == 1 && (v5 & 0xF000000000000007) != 0xF000000000000007)
      {
        goto LABEL_16;
      }

      return;
    }

    goto LABEL_24;
  }

  if ((v14 - 1) < 2)
  {
    return;
  }

  if (v14)
  {
    goto LABEL_24;
  }

  v18 = (v7 >> 3) & 7;
  if (v18 <= 1)
  {
    if (v18)
    {
      v21 = 0;
    }

    else
    {
      v21 = v6 == 1;
    }

    if (!v21 || (v4 & 0xF000000000000007) == 0xF000000000000007)
    {
      return;
    }

LABEL_26:
    v19 = a1;
    v20 = a2;

    FormatTextContent.bind(binder:context:)(v19, v20);

    return;
  }

  if (v18 == 2 || v18 == 3 || !(v7 >> 6) || v7 >> 6 == 1)
  {
LABEL_24:
    if (v6 != 1 || (v4 & 0xF000000000000007) == 0xF000000000000007)
    {
      return;
    }

    goto LABEL_26;
  }

  if ((v7 & 7) == 1 && (v5 & 0xF000000000000007) != 0xF000000000000007)
  {
LABEL_16:
    v16 = a1;
    v17 = a2;

    FormatTextContent.bind(binder:context:)(v16, v17);
  }
}

uint64_t FormatProgressViewNodeDuration.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  if ((*(v2 + 8) & 1) == 0)
  {
    return sub_1D620B270(result, a2, *v2);
  }

  return result;
}

void FormatProgressViewNodeProgress.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  if (((*(v2 + 48) | (*(v2 + 50) << 16)) & 0x800000) != 0)
  {
    FormatCommandBinding.bind(binder:context:)(a1, a2);
  }

  else
  {
    sub_1D620B270(a1, a2, *v2);
  }
}

uint64_t sub_1D626501C(uint64_t result, uint64_t a2)
{
  if ((*(v2 + 8) & 1) == 0)
  {
    return sub_1D620B270(result, a2, *v2);
  }

  return result;
}

void sub_1D6265040(uint64_t a1, uint64_t a2)
{
  if (((*(v2 + 48) | (*(v2 + 50) << 16)) & 0x800000) != 0)
  {
    FormatCommandBinding.bind(binder:context:)(a1, a2);
  }

  else
  {
    sub_1D620B270(a1, a2, *v2);
  }
}

uint64_t FormatProgressViewNodeStyle.Selector.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v5 = result;
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  if (!v6 || (result = sub_1D620B270(result, a2, v6), !v3))
  {
    if ((~v7 & 0xF000000000000007) == 0 || (, FormatColor.bind(binder:context:)(v5, a2), result = , !v3))
    {
      if ((~v8 & 0xF000000000000007) != 0)
      {

        FormatColor.bind(binder:context:)(v5, a2);
      }
    }
  }

  return result;
}

uint64_t FormatPropertyDefinition.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v73 = a2;
  v72 = a1;
  sub_1D5C5A0E0(0, &qword_1EDF43F50, sub_1D5B55F44, &type metadata for FormatVideoPlayerContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v70 = &v68 - v4;
  sub_1D5C5A0E0(0, &qword_1EDF43F48, sub_1D5B55668, &type metadata for FormatFont, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v71 = &v68 - v7;
  sub_1D5C5A0E0(0, &qword_1EDF43F60, sub_1D5B57AA8, &type metadata for FormatVideoNodeContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v69 = &v68 - v10;
  sub_1D5C5A0E0(0, &qword_1EDF43F58, sub_1D5B57A00, &type metadata for FormatAsyncImageContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v68 = &v68 - v13;
  sub_1D5CF4A48(0, &qword_1EDF43F78, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v68 - v16;
  sub_1D5B4B554(0, &qword_1EDF43F38, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v68 - v20;
  sub_1D5B4B554(0, &qword_1EDF43F28, MEMORY[0x1E69E6530], &protocol witness table for Int, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v68 - v24;
  sub_1D5C5A0E0(0, &qword_1EDF43F68, sub_1D5B577E4, MEMORY[0x1E69E7DE0], type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v29 = &v68 - v28;
  sub_1D5B5714C();
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v33 = &v68 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C5A0E0(0, &qword_1EDF43F40, sub_1D5B5706C, &type metadata for FormatColor, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v34 - 8, v35);
  v37 = &v68 - v36;
  sub_1D5B4B554(0, &qword_1EDF43F30, MEMORY[0x1E69E6370], &protocol witness table for Bool, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v38 - 8, v39);
  v41 = &v68 - v40;
  v42 = type metadata accessor for FormatPropertyDefinition(0);
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v68 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D62B50EC(v74, v45, type metadata accessor for FormatPropertyDefinition);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        v55 = v45;
        v56 = v69;
        sub_1D62B6808(v55, v69);
        if ((~*(v56 + 72) & 0xF000000000000007) != 0)
        {
          v75 = *(v56 + 72);

          FormatVideoNodeContent.bind(binder:context:)(v72, v73);
        }

        return sub_1D62B68A4(v56);
      }

      else if (EnumCaseMultiPayload == 10)
      {
        v48 = v71;
        sub_1D62B66D8(v45, v71);
        v49 = *(v48 + 72);
        if ((~v49 & 0xF000000000000007) != 0 && (v50 = v49 >> 61, (v49 >> 61) > 1))
        {
          if (v50 == 2)
          {
            v75 = *((v49 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
            sub_1D5D04BD4(v49);
            swift_retain_n();

            FormatURL.bind(binder:context:)(v72, v73);

            sub_1D62B6774(v48);
          }

          else if (v50 == 3)
          {
            v52 = *((v49 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
            v53 = *((v49 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
            v54 = *((v49 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
            v75 = *((v49 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v51 = v75;
            v76 = v52;
            v77 = v53;
            v78 = v54;
            sub_1D5D04BD4(v49);
            sub_1D5F58038(v51, v52, v53, v54);
            sub_1D607B228(v73);
            sub_1D62B6774(v48);
            sub_1D5F57FEC(v51, v52, v53, v54);
          }

          else
          {
            v67 = *((v49 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
            v79[0] = *((v49 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v79[1] = v67;
            v80 = *((v49 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
            sub_1D5D04BD4(v49);
            sub_1D62B50EC(v79, &v75, sub_1D62B5154);
            sub_1D6250408(v72, v73);
            sub_1D62B6774(v48);
            sub_1D62B51D0(v79, sub_1D62B5154);
          }

          return sub_1D5C8500C(v49);
        }

        else
        {
          return sub_1D62B6774(v48);
        }
      }

      else
      {
        v59 = v70;
        sub_1D62B65A8(v45, v70);
        v60 = *(v59 + 72);
        if ((~v60 & 0xF000000000000007) != 0)
        {
          if (v60 < 0)
          {
            v64 = *((v60 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
            v65 = *((v60 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
            v66 = *((v60 & 0x7FFFFFFFFFFFFFFFLL) + 0x28);
            v75 = *((v60 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
            v63 = v75;
            v76 = v64;
            v77 = v65;
            v78 = v66;
            sub_1D612612C(v60);
            sub_1D62B6240(v63, v64, v65, v66);
            sub_1D6C09C54(v73);
            sub_1D62B628C(v63, v64, v65, v66);
          }

          else
          {
            v61 = *(v60 + 16);
            v62 = *(v60 + 24);
            sub_1D612612C(*(v59 + 72));

            sub_1D6242FE8(v72, v73, v61, v62);
          }

          sub_1D5BD9F54(v60);
        }

        return sub_1D62B6644(v59);
      }
    }

    else if (EnumCaseMultiPayload == 6)
    {
      sub_1D5CAD9A4(v45, v21);
      sub_1D626434C(v72, v73);
      return sub_1D62B6AE8(v21);
    }

    else if (EnumCaseMultiPayload == 7)
    {
      sub_1D62B6A68(v45, v17);
      sub_1D6264474(v72, v73);
      return sub_1D62B7204(v17, &qword_1EDF43F78, type metadata accessor for FormatPrimitivePropertyDefinition);
    }

    else
    {
      v57 = v45;
      v58 = v68;
      sub_1D62B6938(v57, v68);
      if ((~*(v58 + 72) & 0xF000000000000007) != 0)
      {
        v75 = *(v58 + 72);

        FormatAsyncImageContent.bind(binder:context:)(v72, v73);
      }

      return sub_1D62B69D4(v58);
    }
  }

  else if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      return sub_1D62B51D0(v45, type metadata accessor for FormatPropertyDefinition);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_1D62B6C88(v45, v29);
      sub_1D6264224(v72, v73);
      return sub_1D62B6D24(v29);
    }

    else
    {
      sub_1D62B6B70(v45, v25);
      sub_1D6264224(v72, v73);
      return sub_1D62B6C00(v25);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D62B6DB8(v45, v37);
      if ((~*(v37 + 9) & 0xF000000000000007) != 0)
      {
        v75 = *(v37 + 9);

        FormatColor.bind(binder:context:)(v72, v73);
      }

      return sub_1D62B6E54(v37);
    }

    else
    {
      sub_1D5D5E33C(v45, v33, sub_1D5B5714C);
      sub_1D6264030(v72, v73);
      return sub_1D62B51D0(v33, sub_1D5B5714C);
    }
  }

  else
  {
    sub_1D5CAE630(v45, v41);
    sub_1D6263F10(v72, v73);
    return sub_1D62B6EE8(v41);
  }
}

uint64_t FormatPublisherLogoSize.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 8);
  if (v3 >= 3)
  {
    return sub_1D620B270(result, a2, v3);
  }

  return result;
}

uint64_t sub_1D6265C58(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 8);
  if (v3 >= 3)
  {
    return sub_1D620B270(result, a2, v3);
  }

  return result;
}

unint64_t FormatPurchaseLandingPage.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 56);
  v8 = *v2;
  v9 = *(v2 + 8);
  v10 = *(v2 + 16);
  v11 = *(v2 + 24);
  v12 = *(v2 + 32);
  v13 = *(v2 + 40);
  v14 = *(v2 + 48);
  sub_1D5E1DA6C(*v2, v9, v10, v11, v12, v13, v14);
  FormatString.bind(binder:context:)(a1, a2);
  result = sub_1D5E1DE98(v8, v9, v10, v11, v12, v13, v14);
  if (!v3 && (v6 & 0xF000000000000007) != 0x7000000000000007 && ((v6 >> 57) & 0xF8 | v6 & 7 | 0x20) != 0x7F)
  {
    sub_1D614F658(v6);
    FormatURL.bind(binder:context:)(a1, a2);
    return sub_1D614F680(v6);
  }

  return result;
}

uint64_t sub_1D6265E58(uint64_t a1, uint64_t a2)
{

  FormatURL.bind(binder:context:)(a1, a2);
}

uint64_t FormatRemoteVideo.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v41 = v2[3];
  v42 = v2[4];
  v38 = v2[5];
  v36 = v2[6];
  v39 = v2[7];
  v35 = v2[8];
  v43 = v2[9];
  v34 = v2[10];
  v44 = v2[11];
  v33 = v2[12];
  v40 = v2[13];
  v37 = v2[15];
  v31 = v2[17];
  v32 = v2[14];
  v29 = v2[18];
  v30 = v2[16];
  v27 = v2[19];
  v28 = v2[20];
  v25 = v2[22];
  v26 = v2[21];
  v6 = v2[25];
  v23 = v2[24];
  v24 = v2[23];
  v7 = v2[26];
  v8 = v2[27];
  v10 = v2[28];
  v9 = v2[29];

  FormatURL.bind(binder:context:)(a1, a2);
  if (v3)
  {
  }

  v22 = v7;
  v20 = v10;
  v21 = v8;

  FormatURL.bind(binder:context:)(a1, a2);
  v11 = a2;

  FormatURL.bind(binder:context:)(a1, a2);

  if ((~v41 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(a1, a2);
    v14 = v43;
    v13 = v44;

    if ((~v42 & 0xF000000000000007) == 0)
    {
      goto LABEL_6;
    }

LABEL_8:

    FormatURL.bind(binder:context:)(a1, v11);
    v15 = v40;

    goto LABEL_9;
  }

  v14 = v43;
  v13 = v44;
  if ((~v42 & 0xF000000000000007) != 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v15 = v40;
LABEL_9:
  v16 = v39;
  if ((~v38 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(a1, v11);

    v16 = v39;
  }

  if ((~v36 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(a1, v11);
    v17 = v37;

    v16 = v39;
  }

  else
  {
    v17 = v37;
  }

  if ((~v16 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(a1, v11);

    v15 = v40;
  }

  if ((~v35 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(a1, v11);
  }

  if ((~v14 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(a1, v11);
  }

  if ((~v34 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(a1, v11);
  }

  if ((~v13 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(a1, v11);
  }

  if ((~v33 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(a1, v11);
  }

  if ((~v15 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(a1, v11);
  }

  if ((~v32 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(a1, v11);
  }

  if ((~v17 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(a1, v11);
  }

  if ((~v30 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(a1, v11);
  }

  if ((~v31 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(a1, v11);
  }

  if ((~v29 & 0xF000000000000007) != 0)
  {

    v18 = a1;
    v19 = v11;
    FormatURL.bind(binder:context:)(a1, v11);
  }

  else
  {
    v18 = a1;
    v19 = v11;
  }

  if ((~v27 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(v18, v19);
  }

  if ((~v28 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(v18, v19);
  }

  if ((~v26 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(v18, v19);
  }

  if ((~v25 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(v18, v19);
  }

  if ((~v24 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(v18, v19);
  }

  if ((~v23 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(v18, v19);
  }

  if ((~v6 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(v18, v19);
  }

  if ((~v22 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(v18, v19);
  }

  if ((~v21 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(v18, v19);
  }

  if ((~v20 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(v18, v19);
  }

  if ((~v9 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(v18, v19);
  }

  return result;
}

void FormatRepeatNode.bindChildren(binder:context:)(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 40) != 1 || (sub_1D62B41FC(a2, *(v2 + 32)), !v3))
  {
    v6 = *(v2 + 48);
    if (!v6 || (sub_1D62B41FC(a2, v6), !v3))
    {
      v7 = *(v2 + 56);
      if (!v7 || (sub_1D62B41FC(a2, v7), !v3))
      {
        v8 = *(v2 + 64);
        if (!v8 || (sub_1D62B41FC(a2, v8), !v3))
        {
          swift_beginAccess();
          v9 = *(v2 + 88);

          sub_1D6215F90(a1, a2, v9);
        }
      }
    }
  }
}

void FormatRepeatNodeIteration.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 8) == 1)
  {
    sub_1D62B41FC(a2, *v2);
  }
}

void sub_1D626693C(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 8) == 1)
  {
    sub_1D62B41FC(a2, *v2);
  }
}

uint64_t FormatResetNode.bindChildren(binder:context:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 48);

  sub_1D6215F90(a1, a2, v5);
}

uint64_t sub_1D6266A1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = MEMORY[0x1EEE9AC00](a1, a2);
  (*(v10 + 16))(&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v3 + *(v9 + 36), v6, v7);
  sub_1D5B49474(0, &qword_1EDF329A8);
  if (swift_dynamicCast())
  {
    v11 = *(&v15 + 1);
    v12 = v16;
    __swift_project_boxed_opaque_existential_1(&v14, *(&v15 + 1));
    (*(v12 + 8))(a1, a2, v11, v12);
    return __swift_destroy_boxed_opaque_existential_1(&v14);
  }

  else
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    return sub_1D5BFB774(&v14, &qword_1EDF329A0, &qword_1EDF329A8);
  }
}

unint64_t FormatSponsoredBannerSizing.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v7 = *v2;
  v6 = v2[1];
  sub_1D5C82CD8(*v2);
  FormatSize.bind(binder:context:)(a1, a2);
  result = sub_1D5C92A8C(v7);
  if (!v3 && (~v6 & 0xF000000000000007) != 0)
  {
    sub_1D5C82CD8(v6);
    FormatSize.bind(binder:context:)(a1, a2);
    return sub_1D5C92A8C(v6);
  }

  return result;
}

uint64_t FormatSlotNode.bindChildren(binder:context:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v6 = *(v2 + 56);

  sub_1D6213004(a1, a2, v6);

  if (!v3)
  {
    swift_beginAccess();
    v8 = *(v2 + 40);

    sub_1D6215F90(a1, a2, v8);
  }

  return result;
}

uint64_t FormatSnippet.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v6 = v2[9];

  sub_1D6213004(a1, a2, v6);

  if (!v3)
  {
    swift_beginAccess();
    v8 = v2[11];

    sub_1D62212CC(a1, a2, v8);

    swift_beginAccess();
    v9 = v2[8];

    sub_1D6215F90(a1, a2, v9);
  }

  return result;
}

uint64_t FormatSnippetNode.bindChildren(binder:context:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 88);

  sub_1D6213004(a1, a2, v5);
}

uint64_t FormatSourceItem.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v4 = result;
  v5 = *v2;
  if (*v2 < 0)
  {
    v8 = *((v5 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);

    sub_1D623D6A4(v4, a2, v8);
  }

  else if (*(v5 + 40))
  {
    v7 = *(v5 + 24);
    v6 = *(v5 + 32);
    sub_1D5F586D0(v7, v6, 1);
    sub_1D6249244(v4, a2, v7, v6);
    return sub_1D5F5870C(v7, v6, 1);
  }

  return result;
}

uint64_t FormatSourceItemTip.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  if (*(v2 + 24) == 1)
  {
    v5 = v2 + 8;
    v4 = *(v2 + 8);
    v3 = *(v5 + 8);
    v6 = result;
    sub_1D5F586D0(v4, v3, 1);
    sub_1D6249244(v6, a2, v4, v3);
    return sub_1D5F5870C(v4, v3, 1);
  }

  return result;
}

uint64_t FormatSourceItemTipTraits.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  if (*(v2 + 16) == 1)
  {
    return sub_1D6249244(result, a2, *v2, *(v2 + 8));
  }

  return result;
}

uint64_t sub_1D62670BC(uint64_t result, uint64_t a2)
{
  if (*(v2 + 24) == 1)
  {
    v5 = v2 + 8;
    v4 = *(v2 + 8);
    v3 = *(v5 + 8);
    v6 = result;
    sub_1D5F586D0(v4, v3, 1);
    sub_1D6249244(v6, a2, v4, v3);
    return sub_1D5F5870C(v4, v3, 1);
  }

  return result;
}