uint64_t sub_1D12458A4(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1D124598C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D1246604(0, &qword_1EC60ABB8, sub_1D10FA010, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1D1245AB4@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1D138D0CC();
    if (v10)
    {
      v11 = sub_1D138D0EC();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1D138D0DC();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1D138D0CC();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1D138D0EC();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1D138D0DC();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1D1245CE4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1D1246004(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1D1083DAC(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1D1245AB4(v13, a3, a4, &v12);
  v10 = v4;
  sub_1D1083DAC(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_1D1246004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1D138D0CC();
  v11 = result;
  if (result)
  {
    result = sub_1D138D0EC();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1D138D0DC();
  sub_1D1245AB4(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_1D12460BC(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1D1083D58(a3, a4);
          return sub_1D1245CE4(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1D1246224(uint64_t a1, uint64_t a2)
{
  if ((sub_1D138D5BC() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for AttachmentContext();
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_1D139162C() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1D12460BC(*(a1 + v4[6]), *(a1 + v4[6] + 8), *(a2 + v4[6]), *(a2 + v4[6] + 8)) & 1) == 0)
  {
    return 0;
  }

  v10 = v4[7];
  v11 = *(a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v11 == *v13 && v12 == v13[1];
  if (!v14 && (sub_1D139162C() & 1) == 0)
  {
    return 0;
  }

  v15 = v4[8];

  return MEMORY[0x1EEE6D368](a1 + v15, a2 + v15);
}

uint64_t sub_1D1246308(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = type metadata accessor for AttachmentContext();
  v6 = sub_1D138EDEC();
  v7 = [v4 sortOrderForType_];

  v8 = sub_1D138EDEC();
  v9 = [v4 sortOrderForType_];

  if (v7 == v9)
  {
    v10 = *(v5 + 20);
    v11 = *(a1 + v10);
    v12 = *(a1 + v10 + 8);
    v13 = (a2 + v10);
    if (v11 == *v13 && v12 == v13[1])
    {
      return 0;
    }

    else
    {

      return sub_1D139162C();
    }
  }

  else
  {
    v16 = sub_1D138EDEC();
    v17 = [v4 sortOrderForType_];

    v18 = sub_1D138EDEC();
    LODWORD(v16) = [v4 sortOrderForType_];

    return v17 < v16;
  }
}

uint64_t sub_1D124646C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D10819BC;

  return sub_1D1242AA0(a1, a2);
}

uint64_t sub_1D1246518(uint64_t a1)
{
  sub_1D1193B98(0, &qword_1EC60E020, &qword_1EC60E028, &protocol descriptor for AttachmentItem, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D12465A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D1246604(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D1246668()
{
  if (!qword_1EC60E048)
  {
    sub_1D12466E8();
    sub_1D1080EA4(255, &qword_1EE06B690);
    v0 = sub_1D139061C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60E048);
    }
  }
}

void sub_1D12466E8()
{
  if (!qword_1EC60E050)
  {
    sub_1D106F934(255, &qword_1EC60E058);
    v0 = sub_1D139052C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60E050);
    }
  }
}

uint64_t sub_1D124677C(uint64_t a1, uint64_t *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1D108077C;

  return sub_1D12419C4(a1, a2, v2);
}

id sub_1D1246828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v13[1] = *MEMORY[0x1E69E9840];
  v7 = sub_1D138D3CC();
  type metadata accessor for DocumentReadingOptionKey(0);
  sub_1D1247DE4(&qword_1EC6095D8, type metadata accessor for DocumentReadingOptionKey);
  v8 = sub_1D138FFEC();

  v13[0] = 0;
  v9 = [v5 initWithData:v7 options:v8 documentAttributes:a4 error:v13];

  if (v9)
  {
    v10 = v13[0];
  }

  else
  {
    v11 = v13[0];
    sub_1D138D2BC();

    swift_willThrow();
  }

  return v9;
}

void *sub_1D1246970(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  v10 = swift_allocObject();
  v10[11] = 0;
  swift_unknownObjectWeakInit();
  v10[12] = 0;
  v10[2] = a1;
  v11 = a1;
  v12 = sub_1D12401D0();
  v14 = v13;

  v10[3] = v12;
  v10[4] = v14;
  v10[5] = [objc_allocWithZone(MEMORY[0x1E696BF18]) initWithHealthStore_];
  v10[6] = sub_1D1247C80;
  v10[7] = v8;
  v10[8] = &unk_1D13AB7F0;
  v10[9] = v9;
  v10[11] = a4;
  swift_unknownObjectWeakAssign();
  return v10;
}

unint64_t sub_1D1246A98(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = sub_1D1098B64(a3);
  objc_allocWithZone(MEMORY[0x1E696AAB0]);
  sub_1D1083D58(a1, a2);
  v8 = sub_1D1246828(a1, a2, v7, 0);
  sub_1D1083DAC(a1, a2);
  if (v3)
  {
    return v4;
  }

  v9 = [objc_allocWithZone(MEMORY[0x1E69C5A30]) initWithAttributedText_];
  v10 = [objc_allocWithZone(MEMORY[0x1E69C5A20]) init];
  [v10 addPrintFormatter:v9 startingAtPageAtIndex:0];
  v11 = sub_1D1390C5C();
  v12 = sub_1D139012C();
  [v10 setValue:v11 forKey:v12];

  if (qword_1EC608DB8 != -1)
  {
    swift_once();
  }

  v13 = sub_1D1390C5C();
  v14 = sub_1D139012C();
  [v10 setValue:v13 forKey:v14];

  if ([v10 numberOfPages] > 20)
  {

    v4 = 0;
LABEL_11:

    return v4;
  }

  v15 = [objc_allocWithZone(MEMORY[0x1E695DF88]) init];
  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  v19.size.width = 0.0;
  v19.size.height = 0.0;
  UIGraphicsBeginPDFContextToData(v15, v19, 0);
  result = [v10 numberOfPages];
  if ((result & 0x8000000000000000) == 0)
  {
    v17 = result;
    if (result)
    {
      v18 = 0;
      do
      {
        UIGraphicsBeginPDFPage();
        PDFContextBounds = UIGraphicsGetPDFContextBounds();
        [v10 drawPageAtIndex:v18++ inRect:{PDFContextBounds.origin.x, PDFContextBounds.origin.y, PDFContextBounds.size.width, PDFContextBounds.size.height}];
      }

      while (v17 != v18);
    }

    UIGraphicsEndPDFContext();
    v4 = MEMORY[0x1D3882D10](v15);

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1246D5C()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  v1 = sub_1D138D3CC();
  v2 = [v0 initWithData_];

  if (v2)
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
    v4 = [objc_allocWithZone(MEMORY[0x1E695DF88]) init];
    v5 = v3;
    [v5 bounds];
    UIGraphicsBeginPDFContextToData(v4, v11, 0);
    UIGraphicsBeginPDFPage();
    v6 = UIGraphicsGetCurrentContext();
    if (v6)
    {
      v7 = v6;
      v8 = [v5 layer];

      [v8 renderInContext_];
      UIGraphicsEndPDFContext();
      v9 = MEMORY[0x1D3882D10](v4);

      return v9;
    }
  }

  return 0;
}

uint64_t sub_1D1246EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = sub_1D138EE7C();
  v3[23] = v4;
  v3[24] = *(v4 - 8);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1246F94, 0, 0);
}

uint64_t sub_1D1246F94()
{
  v1 = v0[25];
  v2 = v0[23];
  v3 = v0[24];
  (*(v3 + 16))(v0[26], v0[22], v2);
  sub_1D138EE1C();
  sub_1D1247DE4(&qword_1EC60E030, MEMORY[0x1E69E8450]);
  v4 = sub_1D139011C();
  v5 = *(v3 + 8);
  v5(v1, v2);
  if (v4)
  {
    v7 = v0[20];
    v6 = v0[21];
    v5(v0[26], v0[23]);
    sub_1D1083D58(v7, v6);
    v8 = v0[20];
    v9 = v0[21];
LABEL_3:

    v10 = v0[1];

    return v10(v8, v9);
  }

  v12 = v0[25];
  v13 = v0[23];
  sub_1D138EE3C();
  v14 = sub_1D139011C();
  v5(v12, v13);
  v15 = v0[23];
  if (v14)
  {
    v5(v0[26], v0[23]);
    sub_1D1246604(0, &qword_1EC60E060, sub_1D1247B8C, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D139E700;
    v17 = *MEMORY[0x1E69DB630];
    *(inited + 32) = *MEMORY[0x1E69DB630];
    v18 = *MEMORY[0x1E69DB658];
    *(inited + 40) = *MEMORY[0x1E69DB658];
    v19 = v17;
    v20 = v18;
    v0[27] = sub_1D109EE84(inited);
    swift_setDeallocating();
    sub_1D1247BFC(inited + 32, sub_1D1247B8C);
    sub_1D13905AC();
    v0[28] = sub_1D139059C();
    v21 = sub_1D139055C();
    v23 = v22;
    v24 = sub_1D1247574;
  }

  else
  {
    v25 = v0[25];
    sub_1D138EE6C();
    v26 = sub_1D139011C();
    v5(v25, v15);
    v27 = v0[23];
    if (v26)
    {
      v5(v0[26], v0[23]);
      sub_1D1246604(0, &qword_1EC60E060, sub_1D1247B8C, MEMORY[0x1E69E6F90]);
      v28 = swift_initStackObject();
      *(v28 + 16) = xmmword_1D139E700;
      v29 = *MEMORY[0x1E69DB630];
      *(v28 + 32) = *MEMORY[0x1E69DB630];
      v30 = *MEMORY[0x1E69DB690];
      *(v28 + 40) = *MEMORY[0x1E69DB690];
      v31 = v29;
      v32 = v30;
      v0[32] = sub_1D109EE84(v28);
      swift_setDeallocating();
      sub_1D1247BFC(v28 + 32, sub_1D1247B8C);
      sub_1D13905AC();
      v0[33] = sub_1D139059C();
      v21 = sub_1D139055C();
      v23 = v33;
      v24 = sub_1D1247728;
    }

    else
    {
      v35 = v0[25];
      v34 = v0[26];
      sub_1D138EE2C();
      v36 = sub_1D139011C();
      v5(v35, v27);
      v5(v34, v27);
      if (v36)
      {
        sub_1D1246604(0, &qword_1EC60E060, sub_1D1247B8C, MEMORY[0x1E69E6F90]);
        v37 = swift_initStackObject();
        *(v37 + 16) = xmmword_1D139E700;
        v38 = *MEMORY[0x1E69DB630];
        *(v37 + 32) = *MEMORY[0x1E69DB630];
        v39 = *MEMORY[0x1E69DB6A0];
        *(v37 + 40) = *MEMORY[0x1E69DB6A0];
        v40 = v38;
        v41 = v39;
        v0[37] = sub_1D109EE84(v37);
        swift_setDeallocating();
        sub_1D1247BFC(v37 + 32, sub_1D1247B8C);
        sub_1D13905AC();
        v0[38] = sub_1D139059C();
        v21 = sub_1D139055C();
        v23 = v42;
        v24 = sub_1D12478DC;
      }

      else
      {
        v43 = v0[25];
        v44 = v0[23];
        sub_1D138EE4C();
        v45 = sub_1D138EE5C();
        v5(v43, v44);
        if ((v45 & 1) == 0)
        {
          v8 = 0;
          v9 = 0xF000000000000000;
          goto LABEL_3;
        }

        sub_1D13905AC();
        v0[42] = sub_1D139059C();
        v21 = sub_1D139055C();
        v23 = v46;
        v24 = sub_1D1247A90;
      }
    }
  }

  return MEMORY[0x1EEE6DFA0](v24, v21, v23);
}

uint64_t sub_1D1247574()
{
  v1 = v0[27];
  v3 = v0[20];
  v2 = v0[21];

  v4 = sub_1D1246A98(v3, v2, v1);
  v0[29] = 0;
  v5 = v4;
  v7 = v6;

  v0[30] = v7;
  v0[31] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D1247628, 0, 0);
}

uint64_t sub_1D1247628()
{
  v1 = v0[30];
  v2 = v0[31];

  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t sub_1D12476A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1247728()
{
  v1 = v0[32];
  v3 = v0[20];
  v2 = v0[21];

  v4 = sub_1D1246A98(v3, v2, v1);
  v0[34] = 0;
  v5 = v4;
  v7 = v6;

  v0[35] = v7;
  v0[36] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D12477DC, 0, 0);
}

uint64_t sub_1D12477DC()
{
  v1 = v0[35];
  v2 = v0[36];

  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t sub_1D124785C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D12478DC()
{
  v1 = v0[37];
  v3 = v0[20];
  v2 = v0[21];

  v4 = sub_1D1246A98(v3, v2, v1);
  v0[39] = 0;
  v5 = v4;
  v7 = v6;

  v0[40] = v7;
  v0[41] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D1247990, 0, 0);
}

uint64_t sub_1D1247990()
{
  v1 = v0[40];
  v2 = v0[41];

  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t sub_1D1247A10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1247A90()
{

  *(v0 + 344) = sub_1D1246D5C();
  *(v0 + 352) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1D1247B0C, 0, 0);
}

uint64_t sub_1D1247B0C()
{
  v1 = v0[43];
  v2 = v0[44];

  v3 = v0[1];

  return v3(v1, v2);
}

void sub_1D1247B8C()
{
  if (!qword_1EC60E068)
  {
    type metadata accessor for DocumentReadingOptionKey(255);
    type metadata accessor for DocumentType(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC60E068);
    }
  }
}

uint64_t sub_1D1247BFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1247CA4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D10819BC;

  return sub_1D12406A8(a1, a2);
}

void sub_1D1247D54()
{
  if (!qword_1EC60E070)
  {
    sub_1D106F934(255, &qword_1EC60E078);
    sub_1D1080EA4(255, &qword_1EE06B690);
    v0 = sub_1D139061C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60E070);
    }
  }
}

uint64_t sub_1D1247DE4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D1247E38()
{
  v1 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI19YearRangePickerCell_dataSource];
  if (!v1)
  {
    return;
  }

  v2 = OBJC_IVAR____TtC15HealthRecordsUI25YearRangePickerDataSource_pickerRange;
  v3 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI25YearRangePickerDataSource_pickerRange);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    while (*(v3 + 32 + 8 * v5) != *(v1 + OBJC_IVAR____TtC15HealthRecordsUI25YearRangePickerDataSource_selectedMinYear))
    {
      if (v4 == ++v5)
      {
        goto LABEL_6;
      }
    }

    v6 = *(*&v0[OBJC_IVAR____TtC15HealthRecordsUI19YearRangePickerCell_pickerView] + OBJC_IVAR____TtC15HealthRecordsUI19YearRangePickerView_minYearPicker);

    [v6 selectRow:v5 inComponent:0 animated:1];
    v3 = *(v1 + v2);
    v4 = *(v3 + 16);
    if (!v4)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

LABEL_6:

  if (v4)
  {
LABEL_10:
    v7 = 0;
    while (*(v3 + 32 + 8 * v7) != *(v1 + OBJC_IVAR____TtC15HealthRecordsUI25YearRangePickerDataSource_selectedMaxYear))
    {
      if (v4 == ++v7)
      {
        goto LABEL_15;
      }
    }

    [*(*&v0[OBJC_IVAR____TtC15HealthRecordsUI19YearRangePickerCell_pickerView] + OBJC_IVAR____TtC15HealthRecordsUI19YearRangePickerView_maxYearPicker) selectRow_inComponent_animated_];
  }

LABEL_15:
  v8 = [v0 contentView];
  v9 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI19YearRangePickerCell_pickerView];
  [v8 addSubview_];

  v10 = [v0 contentView];
  [v9 hk:v10 alignVerticalConstraintsWithView:0.0 margin:?];

  v11 = [v0 contentView];
  [v9 hk:v11 alignHorizontalConstraintsWithView:40.0 margin:?];
}

void sub_1D1248058()
{
  v1 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI19YearRangePickerCell_baseAccessibilityIdentifier + 8];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI19YearRangePickerCell_baseAccessibilityIdentifier];
    sub_1D1086E1C();
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1D139E710;
    *(v3 + 32) = v2;
    *(v3 + 40) = v1;
    *(v3 + 48) = 0x654372656B636950;
    *(v3 + 56) = 0xEA00000000006C6CLL;

    v4 = sub_1D139044C();
    v5 = HKUIJoinStringsForAutomationIdentifier();

    [v0 setAccessibilityIdentifier_];
    v6 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI19YearRangePickerCell_pickerView];
    v7 = *(v6 + OBJC_IVAR____TtC15HealthRecordsUI19YearRangePickerView_minYearPicker);

    sub_1D1121FC4(&unk_1F4D04C40);
    v8 = sub_1D139044C();

    v9 = HKUIJoinStringsForAutomationIdentifier();

    [v7 setAccessibilityIdentifier_];
    v10 = *(v6 + OBJC_IVAR____TtC15HealthRecordsUI19YearRangePickerView_maxYearPicker);
    sub_1D1121FC4(&unk_1F4D04C70);
    v11 = sub_1D139044C();

    v12 = HKUIJoinStringsForAutomationIdentifier();

    [v10 setAccessibilityIdentifier_];
  }
}

char *sub_1D1248264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC15HealthRecordsUI19YearRangePickerCell_dataSource] = 0;
  v6 = &v3[OBJC_IVAR____TtC15HealthRecordsUI19YearRangePickerCell_baseAccessibilityIdentifier];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = OBJC_IVAR____TtC15HealthRecordsUI19YearRangePickerCell_pickerView;
  type metadata accessor for YearRangePickerView();
  *&v3[v7] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (a3)
  {
    v8 = sub_1D139012C();
  }

  else
  {
    v8 = 0;
  }

  v13.receiver = v3;
  v13.super_class = type metadata accessor for YearRangePickerCell();
  v9 = objc_msgSendSuper2(&v13, sel_initWithStyle_reuseIdentifier_, a1, v8);

  v10 = v9;
  [v10 setSelectionStyle_];
  v11 = OBJC_IVAR____TtC15HealthRecordsUI19YearRangePickerCell_pickerView;
  [*(*&v10[OBJC_IVAR____TtC15HealthRecordsUI19YearRangePickerCell_pickerView] + OBJC_IVAR____TtC15HealthRecordsUI19YearRangePickerView_minYearPicker) setDataSource_];
  [*(*&v10[v11] + OBJC_IVAR____TtC15HealthRecordsUI19YearRangePickerView_minYearPicker) setDelegate_];
  [*(*&v10[v11] + OBJC_IVAR____TtC15HealthRecordsUI19YearRangePickerView_maxYearPicker) setDataSource_];
  [*(*&v10[v11] + OBJC_IVAR____TtC15HealthRecordsUI19YearRangePickerView_maxYearPicker) setDelegate_];
  [*&v10[v11] setTranslatesAutoresizingMaskIntoConstraints_];

  return v10;
}

char *sub_1D12486E0(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC15HealthRecordsUI19YearRangePickerView_maxYearPicker;
  v10 = [objc_allocWithZone(MEMORY[0x1E69DCD78]) init];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v9] = v10;
  v11 = OBJC_IVAR____TtC15HealthRecordsUI19YearRangePickerView_minYearPicker;
  v12 = [objc_allocWithZone(MEMORY[0x1E69DCD78]) init];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v11] = v12;
  v13 = OBJC_IVAR____TtC15HealthRecordsUI19YearRangePickerView_stackView;
  v14 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  [v14 setAxis_];
  [v14 setAlignment_];
  [v14 setDistribution_];
  [v14 setSpacing_];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v13] = v14;
  v24.receiver = v4;
  v24.super_class = type metadata accessor for YearRangePickerView();
  v15 = objc_msgSendSuper2(&v24, sel_initWithFrame_, a1, a2, a3, a4);
  v16 = OBJC_IVAR____TtC15HealthRecordsUI19YearRangePickerView_stackView;
  v17 = *&v15[OBJC_IVAR____TtC15HealthRecordsUI19YearRangePickerView_stackView];
  v18 = *&v15[OBJC_IVAR____TtC15HealthRecordsUI19YearRangePickerView_minYearPicker];
  v19 = v15;
  [v17 addArrangedSubview_];
  [*&v15[v16] addArrangedSubview_];
  v20 = *&v15[v16];
  v21 = v19;
  [v21 addSubview_];
  v22 = *&v15[v16];
  [v22 hk:v21 alignConstraintsWithView:?];

  return v21;
}

id sub_1D1248938(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1D12489F0(uint64_t a1, unint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC15HealthRecordsUI19YearRangePickerCell_dataSource);
  if (!v3)
  {
    return;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v4 = OBJC_IVAR____TtC15HealthRecordsUI25YearRangePickerDataSource_pickerRange;
  v5 = *(v3 + OBJC_IVAR____TtC15HealthRecordsUI25YearRangePickerDataSource_pickerRange);
  if (*(v5 + 16) <= a2)
  {
LABEL_31:
    __break(1u);
    return;
  }

  v6 = *(v5 + 8 * a2 + 32);
  sub_1D10C94AC();
  v7 = *(v2 + OBJC_IVAR____TtC15HealthRecordsUI19YearRangePickerCell_pickerView);
  v8 = (v7 + OBJC_IVAR____TtC15HealthRecordsUI19YearRangePickerView_minYearPicker);
  v9 = *(v7 + OBJC_IVAR____TtC15HealthRecordsUI19YearRangePickerView_minYearPicker);

  v10 = v9;
  LOBYTE(v9) = sub_1D1390D8C();

  if (v9)
  {
    v11 = *(v3 + OBJC_IVAR____TtC15HealthRecordsUI25YearRangePickerDataSource_selectedMaxYear);
    if (v11 < v6)
    {
      v12 = *(v3 + v4);
      v13 = *(v12 + 16);
      if (v13)
      {
        v14 = 0;
        v15 = v12 + 32;
        v16 = &OBJC_IVAR____TtC15HealthRecordsUI25YearRangePickerDataSource_selectedMinYear;
        while (*(v15 + 8 * v14) != v11)
        {
          if (v13 == ++v14)
          {
            goto LABEL_24;
          }
        }

LABEL_23:
        [*v8 selectRow_inComponent_animated_];
        goto LABEL_24;
      }

      v16 = &OBJC_IVAR____TtC15HealthRecordsUI25YearRangePickerDataSource_selectedMinYear;
      goto LABEL_24;
    }

    v16 = &OBJC_IVAR____TtC15HealthRecordsUI25YearRangePickerDataSource_selectedMinYear;
  }

  else
  {
    v11 = *(v3 + OBJC_IVAR____TtC15HealthRecordsUI25YearRangePickerDataSource_selectedMinYear);
    if (v6 < v11)
    {
      v17 = *(v3 + v4);
      v18 = *(v17 + 16);
      if (v18)
      {
        v19 = 0;
        v20 = v17 + 32;
        v16 = &OBJC_IVAR____TtC15HealthRecordsUI25YearRangePickerDataSource_selectedMaxYear;
        while (*(v20 + 8 * v19) != v11)
        {
          if (v18 == ++v19)
          {
            goto LABEL_24;
          }
        }

        v8 = (v7 + OBJC_IVAR____TtC15HealthRecordsUI19YearRangePickerView_maxYearPicker);
        v16 = &OBJC_IVAR____TtC15HealthRecordsUI25YearRangePickerDataSource_selectedMaxYear;
        goto LABEL_23;
      }

      v16 = &OBJC_IVAR____TtC15HealthRecordsUI25YearRangePickerDataSource_selectedMaxYear;
LABEL_24:
      v6 = v11;
      goto LABEL_25;
    }

    v16 = &OBJC_IVAR____TtC15HealthRecordsUI25YearRangePickerDataSource_selectedMaxYear;
  }

LABEL_25:
  *(v3 + *v16) = v6;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1D1252CDC();
    swift_unknownObjectRelease();
  }
}

void sub_1D1248C24()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI19YearRangePickerView_maxYearPicker;
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCD78]) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v1) = v2;
  v3 = OBJC_IVAR____TtC15HealthRecordsUI19YearRangePickerView_minYearPicker;
  v4 = [objc_allocWithZone(MEMORY[0x1E69DCD78]) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v3) = v4;
  v5 = OBJC_IVAR____TtC15HealthRecordsUI19YearRangePickerView_stackView;
  v6 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  [v6 setAxis_];
  [v6 setAlignment_];
  [v6 setDistribution_];
  [v6 setSpacing_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v5) = v6;
  sub_1D13913BC();
  __break(1u);
}

char *sub_1D1248D78(void *a1)
{
  v1 = [a1 bodySites];
  if (v1)
  {
    v2 = v1;
    sub_1D1249308();
    v3 = sub_1D139045C();

    if (v3 >> 62)
    {
LABEL_23:
      v4 = sub_1D13910DC();
      if (v4)
      {
LABEL_4:
        v5 = 0;
        v6 = MEMORY[0x1E69E7CC0];
        do
        {
          v7 = v5;
          while (1)
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              v8 = MEMORY[0x1D3886B70](v7, v3);
            }

            else
            {
              if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_22;
              }

              v8 = *(v3 + 8 * v7 + 32);
            }

            v9 = v8;
            v5 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
              __break(1u);
LABEL_22:
              __break(1u);
              goto LABEL_23;
            }

            v10 = [v8 localizedPreferredName];
            if (v10)
            {
              break;
            }

            ++v7;
            if (v5 == v4)
            {
              goto LABEL_25;
            }
          }

          v11 = v10;
          v12 = sub_1D139016C();
          v18 = v13;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_1D10F7284(0, *(v6 + 2) + 1, 1, v6);
          }

          v15 = *(v6 + 2);
          v14 = *(v6 + 3);
          if (v15 >= v14 >> 1)
          {
            v6 = sub_1D10F7284((v14 > 1), v15 + 1, 1, v6);
          }

          *(v6 + 2) = v15 + 1;
          v16 = &v6[16 * v15];
          *(v16 + 4) = v12;
          *(v16 + 5) = v18;
        }

        while (v5 != v4);
        goto LABEL_25;
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
        goto LABEL_4;
      }
    }

    v6 = MEMORY[0x1E69E7CC0];
LABEL_25:

    return v6;
  }

  return MEMORY[0x1E69E7CC0];
}

id sub_1D1248F50(void *a1, SEL *a2)
{
  result = [a1 *a2];
  if (result)
  {
    v3 = result;
    v4 = [result localizedPreferredName];

    if (v4)
    {
      v5 = sub_1D139016C();
      v7 = v6;

      v8 = HIBYTE(v7) & 0xF;
      if ((v7 & 0x2000000000000000) == 0)
      {
        v8 = v5 & 0xFFFFFFFFFFFFLL;
      }

      if (v8)
      {
        return v5;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1D1248FF0(void *a1)
{
  v1 = [a1 status];
  v2 = [v1 localizedPreferredName];

  if (v2)
  {
    v3 = sub_1D139016C();
    v5 = v4;

    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      return v3;
    }
  }

  return 0;
}

char *_s15HealthRecordsUI21PreferredNameProviderPAAE14preferredNames3for5usingSaySSGSaySo9HKConceptCGSgyXK_So0K5StoreCtF_0(uint64_t (*a1)(void))
{
  v1 = a1();
  if (v1)
  {
    v2 = v1;
    v3 = v1 & 0xFFFFFFFFFFFFFF8;
    if (v1 >> 62)
    {
LABEL_23:
      v4 = sub_1D13910DC();
      if (v4)
      {
LABEL_4:
        v5 = 0;
        v6 = MEMORY[0x1E69E7CC0];
        do
        {
          v7 = v5;
          while (1)
          {
            if ((v2 & 0xC000000000000001) != 0)
            {
              v8 = MEMORY[0x1D3886B70](v7, v2);
            }

            else
            {
              if (v7 >= *(v3 + 16))
              {
                goto LABEL_22;
              }

              v8 = *(v2 + 8 * v7 + 32);
            }

            v9 = v8;
            v5 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
              __break(1u);
LABEL_22:
              __break(1u);
              goto LABEL_23;
            }

            v10 = [v8 localizedPreferredName];
            if (v10)
            {
              break;
            }

            ++v7;
            if (v5 == v4)
            {
              goto LABEL_25;
            }
          }

          v11 = v10;
          v12 = sub_1D139016C();
          v18 = v13;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_1D10F7284(0, *(v6 + 2) + 1, 1, v6);
          }

          v15 = *(v6 + 2);
          v14 = *(v6 + 3);
          if (v15 >= v14 >> 1)
          {
            v6 = sub_1D10F7284((v14 > 1), v15 + 1, 1, v6);
          }

          *(v6 + 2) = v15 + 1;
          v16 = &v6[16 * v15];
          *(v16 + 4) = v12;
          *(v16 + 5) = v18;
        }

        while (v5 != v4);
        goto LABEL_25;
      }
    }

    else
    {
      v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
        goto LABEL_4;
      }
    }

    v6 = MEMORY[0x1E69E7CC0];
LABEL_25:

    return v6;
  }

  return MEMORY[0x1E69E7CC0];
}

void *_s15HealthRecordsUI21PreferredNameProviderPAAE09preferredE03for5usingSSSo9HKConceptCSgyXK_So0J5StoreCtF_0(uint64_t (*a1)(void))
{
  result = a1();
  if (result)
  {
    v2 = result;
    v3 = [result localizedPreferredName];

    if (v3)
    {
      v4 = sub_1D139016C();
      v6 = v5;

      v7 = HIBYTE(v6) & 0xF;
      if ((v6 & 0x2000000000000000) == 0)
      {
        v7 = v4 & 0xFFFFFFFFFFFFLL;
      }

      if (v7)
      {
        return v4;
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_1D1249308()
{
  result = qword_1EC609980;
  if (!qword_1EC609980)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC609980);
  }

  return result;
}

uint64_t sub_1D124939C()
{
  v1 = sub_1D138D5EC();
  v2 = *(v1 - 8);
  *&v3 = MEMORY[0x1EEE9AC00](v1).n128_u64[0];
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*(*v0 + 16) identifier];
  sub_1D138D5CC();

  v7 = sub_1D138D59C();
  v9 = v8;
  (*(v2 + 8))(v5, v1);
  v11[0] = 0x44746E756F636341;
  v11[1] = 0xEF2E736C69617465;
  MEMORY[0x1D3885C10](v7, v9);

  return v11[0];
}

uint64_t sub_1D12494DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

uint64_t sub_1D1249658()
{
  v1 = sub_1D138F3FC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC15HealthRecordsUI43MedicalRecordTimelineAccountDetailsItemCell_item;
  swift_beginAccess();
  sub_1D10A71C0(v0 + v5, v13);
  if (!v14)
  {
    return sub_1D10A72B8(v13);
  }

  sub_1D10A7254();
  type metadata accessor for MedicalRecordTimelineAccountDetailsItem();
  result = swift_dynamicCast();
  if (result)
  {
    v7 = v12[1];
    MEMORY[0x1D38864F0]();
    if ([*(v7 + 16) isSourceType])
    {
      if (qword_1EE06AD00 == -1)
      {
LABEL_8:
        sub_1D138D1CC();
        sub_1D138F3BC();
        result = [objc_opt_self() _preferredFontForTextStyle_weight_];
        if (result)
        {
          v8 = sub_1D138F2FC();
          sub_1D138F2CC();
          v8(v13, 0);
          v9 = [objc_opt_self() systemBlueColor];
          v10 = sub_1D138F2FC();
          sub_1D138F2DC();
          v10(v13, 0);
          v14 = v1;
          v15 = MEMORY[0x1E69DC110];
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
          (*(v2 + 16))(boxed_opaque_existential_1, v4, v1);
          MEMORY[0x1D3886480](v13);

          return (*(v2 + 8))(v4, v1);
        }

        else
        {
          __break(1u);
        }

        return result;
      }
    }

    else if (qword_1EE06AD00 == -1)
    {
      goto LABEL_8;
    }

    swift_once();
    goto LABEL_8;
  }

  return result;
}

id sub_1D12499A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicalRecordTimelineAccountDetailsItemCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D1249A0C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI43MedicalRecordTimelineAccountDetailsItemCell_item;
  swift_beginAccess();
  return sub_1D10A71C0(v1 + v3, a1);
}

uint64_t sub_1D1249A64(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI43MedicalRecordTimelineAccountDetailsItemCell_item;
  swift_beginAccess();
  sub_1D10B1300(a1, v1 + v3);
  swift_endAccess();
  sub_1D1249658();
  return sub_1D10A72B8(a1);
}

uint64_t (*sub_1D1249AD0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D1249B34;
}

uint64_t sub_1D1249B34(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1D1249658();
  }

  return result;
}

void sub_1D1249C20(void *a1)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI43MedicalRecordTimelineAccountDetailsItemCell_item;
  swift_beginAccess();
  sub_1D10A71C0(v1 + v3, v21);
  if (v21[3])
  {
    sub_1D10A7254();
    type metadata accessor for MedicalRecordTimelineAccountDetailsItem();
    v4 = swift_dynamicCast();
    if (v4)
    {
      if (qword_1EE069ED0 != -1)
      {
        v4 = swift_once();
      }

      if (qword_1EE06AF70 != -1)
      {
        v4 = swift_once();
      }

      MEMORY[0x1EEE9AC00](v4);
      sub_1D138D96C();
      sub_1D106F934(0, &qword_1EE06B6B0);
      sub_1D1249F88(&qword_1EE06B048, 255, MEMORY[0x1E69A3B50]);

      sub_1D138ED0C();

      v5 = v21[0];
      v6 = [objc_opt_self() sharedBehavior];
      if (v6)
      {
        v7 = v6;
        v8 = [v6 isiPad];

        v9 = *(v20 + 16);
        if (v8)
        {
          LOBYTE(v21[0]) = 0;
          v10 = objc_allocWithZone(type metadata accessor for ClinicalAccountDetailsViewController());
          v11 = v9;
          v12 = v5;
          v13 = sub_1D127988C(v11, v12, v21, 0, 0);
          sub_1D127B668();

          v14 = [objc_allocWithZone(MEMORY[0x1E69A4420]) initWithRootViewController_];
          [a1 presentViewController:v14 animated:1 completion:0];
        }

        else
        {
          LOBYTE(v21[0]) = 0;
          v15 = objc_allocWithZone(type metadata accessor for ClinicalAccountDetailsViewController());
          v16 = v5;
          v17 = sub_1D127988C(v9, v16, v21, 0, 0);
          v18 = [a1 navigationController];
          if (v18)
          {
            v19 = v18;
            [v18 hk:v17 showViewController:1 animated:?];
          }
        }
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    sub_1D10A72B8(v21);
  }
}

uint64_t sub_1D1249F88(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D1249FD0(void *a1)
{
  v47[1] = swift_getObjectType();
  v2 = sub_1D138F0BC();
  v47[5] = *(v2 - 8);
  v47[6] = v2;
  MEMORY[0x1EEE9AC00](v2);
  v49 = v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1D138EFFC();
  v47[2] = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v47[7] = v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D138F02C();
  v47[3] = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  sub_1D1219C30();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D138D39C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138EFEC();
  swift_allocObject();
  v51 = sub_1D138EFDC();
  v54 = MEMORY[0x1E69E7CC0];
  v13 = [a1 mainRecord];
  if (!v13)
  {
    goto LABEL_4;
  }

  v14 = v13;
  sub_1D138EF9C();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {

    sub_1D124CC84(v8);
LABEL_4:
    v15 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
    [v15 setDisplayItemType_];
    v16 = sub_1D139012C();
    v17 = [objc_opt_self() _systemImageNamed_];

    if (qword_1EC608CD0 != -1)
    {
      swift_once();
    }

    v18 = sub_1D138D1CC();
    v20 = v19;
    v50 = v17;
    if (v17)
    {
      v21 = v17;
      v22 = [v21 imageWithRenderingMode_];
      v23 = [objc_opt_self() textAttachmentWithImage_];

      sub_1D106F934(0, &qword_1EC60C410);
      v24 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
      v52 = 8552674;
      v53 = 0xA300000000000000;
      MEMORY[0x1D3885C10](v18, v20);

      v25 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v26 = sub_1D139012C();

      v27 = [v25 initWithString_];

      [v24 appendAttributedString_];
    }

    else
    {
      v40 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v23 = sub_1D139012C();

      v24 = [v40 initWithString_];
    }

    [v15 setAttributedTitle_];
    sub_1D138EFAC();
    v41 = v15;
    MEMORY[0x1D3885D90]();
    v42 = v50;
    if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D13904BC();
    }

    sub_1D13904FC();

    return v54;
  }

  (*(v10 + 32))(v12, v8, v9);
  v28 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
  [v28 setDisplayItemType_];
  v29 = sub_1D139012C();
  v30 = [objc_opt_self() _systemImageNamed_];

  if (qword_1EC608CD0 != -1)
  {
    swift_once();
  }

  v31 = sub_1D138D1CC();
  v33 = v32;
  v50 = v30;
  if (v30)
  {
    v49 = v30;
    v34 = [v49 imageWithRenderingMode_];
    v35 = [objc_opt_self() textAttachmentWithImage_];

    sub_1D106F934(0, &qword_1EC60C410);
    v36 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
    v52 = 8552674;
    v53 = 0xA300000000000000;
    MEMORY[0x1D3885C10](v31, v33);

    v37 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v38 = sub_1D139012C();

    v39 = [v37 initWithString_];

    [v36 appendAttributedString_];
  }

  else
  {
    v43 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v35 = sub_1D139012C();

    v36 = [v43 initWithString_];
  }

  [v28 setAttributedTitle_];
  sub_1D138D2DC();
  v44 = sub_1D139012C();

  [v28 setContextString_];

  v45 = v28;
  MEMORY[0x1D3885D90]();
  if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D13904BC();
  }

  sub_1D13904FC();

  (*(v10 + 8))(v12, v9);
  return v54;
}

id sub_1D124ADB8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SignedClinicalDataRecordFormatter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D124AE20(uint64_t a1)
{
  result = sub_1D124AE48();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D124AE48()
{
  result = qword_1EC60E1B0;
  if (!qword_1EC60E1B0)
  {
    type metadata accessor for SignedClinicalDataRecordFormatter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60E1B0);
  }

  return result;
}

id sub_1D124AE9C(void *a1)
{
  v1 = [a1 subject];
  v2 = [v1 fullName];

  v3 = v2;
  if (!v2)
  {
    sub_1D139016C();
    v3 = sub_1D139012C();
  }

  v4 = sub_1D139016C();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    v8 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
    [v8 setDisplayItemType_];
    if (qword_1EC608CD0 != -1)
    {
      swift_once();
    }

    sub_1D138D1CC();
    v9 = sub_1D139012C();

    [v8 setTitle_];

    [v8 setSubtitle_];
    [v8 setSeparatorStyle_];
    [v8 setSeparatorHidden_];
    [v8 setExtraTopPadding_];
  }

  else
  {

    return 0;
  }

  return v8;
}

id sub_1D124B084(void *a1)
{
  if (qword_1EC608CD0 != -1)
  {
    swift_once();
  }

  v2 = sub_1D138D1CC();
  v4 = v3;
  sub_1D106F934(0, &qword_1EC609BE8);
  v5 = [a1 subject];
  v6 = [v5 birthDate];

  v7 = [a1 meaningfulDateTitle];
  v8 = sub_1D139016C();
  v10 = v9;

  return sub_1D11EDE68(v2, v4, v6, v8, v10);
}

id sub_1D124B1D8(void *a1)
{
  v1 = [a1 subject];
  v2 = [v1 gender];

  if (v2)
  {
    v3 = sub_1D139016C();
    v5 = v4;

    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      v2 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
      [v2 setDisplayItemType_];
      if (qword_1EC608CD0 != -1)
      {
        swift_once();
      }

      sub_1D138D1CC();
      v7 = sub_1D139012C();

      [v2 setTitle_];

      v8 = sub_1D139012C();

      [v2 setSubtitle_];

      [v2 setSeparatorStyle_];
      [v2 setSeparatorHidden_];
      [v2 setExtraTopPadding_];
    }

    else
    {

      return 0;
    }
  }

  return v2;
}

id sub_1D124B3C0(void *a1)
{
  v1 = [a1 subject];
  v2 = [v1 emailAddresses];

  if (v2)
  {
    v3 = sub_1D139045C();

    sub_1D124C8CC(0, &qword_1EE06B0F0, MEMORY[0x1E69E62F8]);
    sub_1D10F73A8();
    v4 = sub_1D139008C();
    v6 = v5;

    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      v2 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
      [v2 setDisplayItemType_];
      if (qword_1EC608CD0 != -1)
      {
        swift_once();
      }

      sub_1D138D1CC();
      v8 = sub_1D139012C();

      [v2 setTitle_];

      v9 = sub_1D139012C();

      [v2 setSubtitle_];

      [v2 setSeparatorStyle_];
      [v2 setSeparatorHidden_];
      [v2 setExtraTopPadding_];
    }

    else
    {

      return 0;
    }
  }

  return v2;
}

id sub_1D124B604(void *a1)
{
  v1 = [a1 subject];
  v2 = [v1 phoneNumbers];

  if (v2)
  {
    v3 = sub_1D139045C();

    sub_1D124C8CC(0, &qword_1EE06B0F0, MEMORY[0x1E69E62F8]);
    sub_1D10F73A8();
    v4 = sub_1D139008C();
    v6 = v5;

    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      v2 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
      [v2 setDisplayItemType_];
      if (qword_1EC608CD0 != -1)
      {
        swift_once();
      }

      sub_1D138D1CC();
      v8 = sub_1D139012C();

      [v2 setTitle_];

      v9 = sub_1D139012C();

      [v2 setSubtitle_];

      [v2 setSeparatorStyle_];
      [v2 setSeparatorHidden_];
      [v2 setExtraTopPadding_];
    }

    else
    {

      return 0;
    }
  }

  return v2;
}

id sub_1D124B848(void *a1)
{
  v1 = [a1 subject];
  v2 = [v1 addresses];

  if (v2)
  {
    v3 = sub_1D139045C();

    sub_1D124C8CC(0, &qword_1EE06B0F0, MEMORY[0x1E69E62F8]);
    sub_1D10F73A8();
    v4 = sub_1D139008C();
    v6 = v5;

    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      v2 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
      [v2 setDisplayItemType_];
      if (qword_1EC608CD0 != -1)
      {
        swift_once();
      }

      sub_1D138D1CC();
      v8 = sub_1D139012C();

      [v2 setTitle_];

      v9 = sub_1D139012C();

      [v2 setSubtitle_];

      [v2 setSeparatorStyle_];
      [v2 setSeparatorHidden_];
      [v2 setExtraTopPadding_];
    }

    else
    {

      return 0;
    }
  }

  return v2;
}

id sub_1D124BA8C(void *a1)
{
  v1 = [a1 subject];
  v2 = [v1 maritalStatus];

  if (v2)
  {
    v3 = sub_1D139016C();
    v5 = v4;

    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      v2 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
      [v2 setDisplayItemType_];
      if (qword_1EC608CD0 != -1)
      {
        swift_once();
      }

      sub_1D138D1CC();
      v7 = sub_1D139012C();

      [v2 setTitle_];

      v8 = sub_1D139012C();

      [v2 setSubtitle_];

      [v2 setSeparatorStyle_];
      [v2 setSeparatorHidden_];
      [v2 setExtraTopPadding_];
    }

    else
    {

      return 0;
    }
  }

  return v2;
}

id sub_1D124BC74(void *a1)
{
  v1 = [a1 subject];
  v2 = [v1 race];

  if (v2)
  {
    v3 = sub_1D139016C();
    v5 = v4;

    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      v2 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
      [v2 setDisplayItemType_];
      if (qword_1EC608CD0 != -1)
      {
        swift_once();
      }

      sub_1D138D1CC();
      v7 = sub_1D139012C();

      [v2 setTitle_];

      v8 = sub_1D139012C();

      [v2 setSubtitle_];

      [v2 setSeparatorStyle_];
      [v2 setSeparatorHidden_];
      [v2 setExtraTopPadding_];
    }

    else
    {

      return 0;
    }
  }

  return v2;
}

id sub_1D124BE5C(void *a1)
{
  v1 = [a1 subject];
  v2 = [v1 ethnicity];

  if (v2)
  {
    v3 = sub_1D139016C();
    v5 = v4;

    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      v2 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
      [v2 setDisplayItemType_];
      if (qword_1EC608CD0 != -1)
      {
        swift_once();
      }

      sub_1D138D1CC();
      v7 = sub_1D139012C();

      [v2 setTitle_];

      v8 = sub_1D139012C();

      [v2 setSubtitle_];

      [v2 setSeparatorStyle_];
      [v2 setSeparatorHidden_];
      [v2 setExtraTopPadding_];
    }

    else
    {

      return 0;
    }
  }

  return v2;
}

id sub_1D124C044(void *a1)
{
  v1 = [a1 subject];
  v2 = [v1 birthSex];

  if (v2)
  {
    v3 = sub_1D139016C();
    v5 = v4;

    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      v2 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
      [v2 setDisplayItemType_];
      if (qword_1EC608CD0 != -1)
      {
        swift_once();
      }

      sub_1D138D1CC();
      v7 = sub_1D139012C();

      [v2 setTitle_];

      v8 = sub_1D139012C();

      [v2 setSubtitle_];

      [v2 setSeparatorStyle_];
      [v2 setSeparatorHidden_];
      [v2 setExtraTopPadding_];
    }

    else
    {

      return 0;
    }
  }

  return v2;
}

unint64_t sub_1D124C22C(void *a1)
{
  v1 = [a1 subject];
  v2 = [v1 identifiers];

  if (!v2)
  {
    return 0;
  }

  sub_1D124C8CC(0, &qword_1EE06B0F0, MEMORY[0x1E69E62F8]);
  v3 = sub_1D139045C();

  v4 = *(v3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v35 = MEMORY[0x1E69E7CC0];
    sub_1D10FDC7C(0, v4, 0);
    for (i = 0; i != v4; ++i)
    {
      if (i >= *(v3 + 16))
      {
        __break(1u);
        goto LABEL_34;
      }

      v7 = *(v3 + 8 * i + 32);
      v8 = v7[2];
      if (v8)
      {
        v9 = v7[4];
        v10 = v7[5];
        v11 = &v7[2 * v8 + 4];
        v12 = *(v11 - 16);
        v13 = *(v11 - 8);
        v14 = HIBYTE(v10) & 0xF;
        if ((v10 & 0x2000000000000000) == 0)
        {
          v14 = v9 & 0xFFFFFFFFFFFFLL;
        }

        if (v14)
        {
        }

        else
        {
          v15 = qword_1EC608CD0;

          if (v15 != -1)
          {
            swift_once();
          }

          v9 = sub_1D138D1CC();
          v10 = v16;
        }

        sub_1D124C8CC(0, &qword_1EE06B560, MEMORY[0x1E69E6F90]);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_1D139E710;
        *(v17 + 32) = v9;
        *(v17 + 40) = v10;
        *(v17 + 48) = v12;
        *(v17 + 56) = v13;

        v7 = v17;
      }

      else
      {
      }

      v5 = *(v35 + 16);
      v18 = *(v35 + 24);
      if (v5 >= v18 >> 1)
      {
        sub_1D10FDC7C((v18 > 1), v5 + 1, 1);
      }

      *(v35 + 16) = v5 + 1;
      *(v35 + 8 * v5 + 32) = v7;
    }

    v5 = MEMORY[0x1E69E7CC0];
    v19 = *(v35 + 16);
    if (!v19)
    {
      goto LABEL_25;
    }
  }

  else
  {

    v19 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v19)
    {
      goto LABEL_25;
    }
  }

  sub_1D10FDBA4(0, v19, 0);
  v20 = v5;
  v21 = 32;
  sub_1D10F73A8();
  do
  {

    v22 = sub_1D139008C();
    v24 = v23;

    v26 = *(v20 + 16);
    v25 = *(v20 + 24);
    if (v26 >= v25 >> 1)
    {
      sub_1D10FDBA4((v25 > 1), v26 + 1, 1);
    }

    *(v20 + 16) = v26 + 1;
    v27 = v20 + 16 * v26;
    *(v27 + 32) = v22;
    *(v27 + 40) = v24;
    v21 += 8;
    --v19;
  }

  while (v19);
LABEL_25:

  sub_1D10F73A8();
  v28 = sub_1D139008C();
  v30 = v29;

  v31 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v31 = v28 & 0xFFFFFFFFFFFFLL;
  }

  if (!v31)
  {

    return 0;
  }

  v5 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
  [v5 setDisplayItemType_];
  if (qword_1EC608CD0 != -1)
  {
LABEL_34:
    swift_once();
  }

  sub_1D138D1CC();
  v32 = sub_1D139012C();

  [v5 setTitle_];

  v33 = sub_1D139012C();

  [v5 setSubtitle_];

  [v5 setSeparatorStyle_];
  [v5 setSeparatorHidden_];
  [v5 setExtraTopPadding_];

  return v5;
}

unint64_t sub_1D124C754(void *a1)
{
  v9[4] = sub_1D124AE9C(a1);
  v9[5] = sub_1D124B084(a1);
  v9[6] = sub_1D124B1D8(a1);
  v9[7] = sub_1D124B3C0(a1);
  v9[8] = sub_1D124B604(a1);
  v9[9] = sub_1D124B848(a1);
  v9[10] = sub_1D124BA8C(a1);
  v9[11] = sub_1D124BC74(a1);
  v9[12] = sub_1D124BE5C(a1);
  v9[13] = sub_1D124C044(a1);
  result = sub_1D124C22C(a1);
  v3 = 0;
  v9[14] = result;
  v4 = MEMORY[0x1E69E7CC0];
  v8 = MEMORY[0x1E69E7CC0];
LABEL_2:
  if (v3 <= 0xB)
  {
    v5 = 11;
  }

  else
  {
    v5 = v3;
  }

  while (1)
  {
    if (v3 == 11)
    {
      sub_1D10CD53C();
      swift_arrayDestroy();
      return v4;
    }

    if (v5 == v3)
    {
      break;
    }

    v6 = v9[v3++ + 4];
    if (v6)
    {
      v7 = v6;
      MEMORY[0x1D3885D90]();
      if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D13904BC();
      }

      result = sub_1D13904FC();
      v4 = v8;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

void sub_1D124C8CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_1D124C920(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC15HealthRecordsUI30SignedClinicalDataGroupContext_qrImage);
  if (v2)
  {
    v3 = objc_allocWithZone(WDMedicalRecordDisplayItem);
    v4 = v2;
    v5 = [v3 init];
    [v5 setDisplayItemType_];
    [v5 setRowHeight_];
    [v5 setImage_];
    [v5 setShowSelection_];
  }

  else
  {
    v5 = 0;
  }

  v20[5] = v5;
  v6 = *(a1 + OBJC_IVAR____TtC15HealthRecordsUI30SignedClinicalDataGroupContext_group);
  sub_1D12591F4();
  v7 = &selRef_removeObserver_name_object_;
  if (v8)
  {
    v9 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
    [v9 setDisplayItemType_];
    v10 = sub_1D139012C();

    [v9 setTitle_];

    [v9 setShowDisclosureIndicator_];
  }

  else
  {
    v9 = 0;
  }

  v20[6] = v9;
  v11 = [v6 mainRecord];
  if (v11)
  {
    v12 = objc_allocWithZone(WDMedicalRecordDisplayItem);
    v6 = v11;
    v11 = [v12 init];
    [v11 setDisplayItemType_];
    if (qword_1EC608CD0 != -1)
    {
LABEL_22:
      swift_once();
    }

    sub_1D138D1CC();
    v13 = sub_1D139012C();

    [v11 setTitle_];

    v14 = sub_1D13318F8();
    [v11 setAttributedSubtitle_];

    [v11 *(v7 + 2192)];
  }

  v15 = 0;
  v20[7] = v11;
  v11 = MEMORY[0x1E69E7CC0];
  v20[0] = MEMORY[0x1E69E7CC0];
  v7 = 3;
LABEL_11:
  if (v15 <= 3)
  {
    v16 = 3;
  }

  else
  {
    v16 = v15;
  }

  while (v15 != 3)
  {
    if (v16 == v15)
    {
      __break(1u);
      goto LABEL_22;
    }

    v17 = v20[v15++ + 5];
    if (v17)
    {
      v18 = v17;
      MEMORY[0x1D3885D90]();
      if (*((v20[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D13904BC();
      }

      v6 = v20;
      sub_1D13904FC();
      v11 = v20[0];
      goto LABEL_11;
    }
  }

  sub_1D10CD53C();
  swift_arrayDestroy();
  return v11;
}

uint64_t sub_1D124CC84(uint64_t a1)
{
  sub_1D1219C30();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ClinicalAccountsDisambiguator.__allocating_init(with:)()
{
  v0 = swift_allocObject();
  ClinicalAccountsDisambiguator.init(with:)();
  return v0;
}

uint64_t sub_1D124CD20()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v1 = sub_1D124CD80(v0);
    *(v0 + 32) = v1;
  }

  return v1;
}

uint64_t sub_1D124CD80(uint64_t a1)
{
  v1 = *(a1 + 24);
  result = MEMORY[0x1E69E7CC8];
  v35 = MEMORY[0x1E69E7CC8];
  v32 = *(v1 + 16);
  if (!v32)
  {
    return result;
  }

  v3 = 0;
  v4 = (v1 + 56);
  v31 = v1;
  while (v3 < *(v1 + 16))
  {
    v5 = *(v4 - 3);
    v6 = *(v4 - 2);
    v7 = *(v4 - 1);
    v8 = *v4;
    swift_bridgeObjectRetain_n();
    v33 = v5;
    v9 = v35;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = v9;
    v12 = sub_1D11362EC(v6, v7);
    v13 = v9[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_25;
    }

    v16 = v11;
    if (v9[3] >= v15)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v35 = v9;
        if (v11)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_1D1183F5C();
        v9 = v34[0];
        v35 = v34[0];
        if (v16)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      sub_1D117F5BC(v15, isUniquelyReferenced_nonNull_native);
      v9 = v34[0];
      v17 = sub_1D11362EC(v6, v7);
      if ((v16 & 1) != (v18 & 1))
      {
        goto LABEL_27;
      }

      v12 = v17;
      v35 = v9;
      if (v16)
      {
        goto LABEL_14;
      }
    }

    v9[(v12 >> 6) + 8] |= 1 << v12;
    v19 = (v9[6] + 16 * v12);
    *v19 = v6;
    v19[1] = v7;
    *(v9[7] + 8 * v12) = MEMORY[0x1E69E7CC0];
    v20 = v9[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_26;
    }

    v9[2] = v22;

LABEL_14:
    v23 = v9[7];
    v24 = *(v23 + 8 * v12);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    *(v23 + 8 * v12) = v24;
    if ((v25 & 1) == 0)
    {
      v24 = sub_1D10F9630(0, *(v24 + 2) + 1, 1, v24);
      *(v23 + 8 * v12) = v24;
    }

    v27 = *(v24 + 2);
    v26 = *(v24 + 3);
    if (v27 >= v26 >> 1)
    {
      v24 = sub_1D10F9630((v26 > 1), v27 + 1, 1, v24);
      *(v23 + 8 * v12) = v24;
    }

    *(v24 + 2) = v27 + 1;
    v28 = &v24[32 * v27];
    *(v28 + 4) = v33;
    *(v28 + 5) = v6;
    *(v28 + 6) = v7;
    *(v28 + 7) = v8;
    v30 = sub_1D124D030(v34, v6, v7);
    if (*v29)
    {
      sub_1D124D170(v29);
    }

    (v30)(v34, 0);
    v1 = v31;
    ++v3;
    swift_bridgeObjectRelease_n();

    v4 += 4;
    if (v32 == v3)
    {
      return v35;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1D13916CC();
  __break(1u);
  return result;
}

void (*sub_1D124D030(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1D124EC5C(v6, a2, a3);
  return sub_1D124D0B8;
}

void sub_1D124D0B8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_1D124D104(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D1245FC8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1D124DAF8(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1D124D170(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D12FFAA0(v2);
  }

  v3 = *(v2 + 2);
  v21[0] = (v2 + 32);
  v21[1] = v3;
  result = sub_1D13915BC();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 48;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = *(v12 + 5);
          if (*(v12 + 1) >= v13)
          {
            break;
          }

          v14 = *(v12 + 2);
          v15 = *(v12 + 3);
          v16 = *(v12 + 4);
          v17 = *v12;
          *(v12 + 1) = *(v12 - 1);
          *(v12 + 2) = v17;
          *(v12 - 2) = v14;
          *(v12 - 1) = v15;
          *v12 = v16;
          *(v12 + 1) = v13;
          v12 -= 32;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 32;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1D13904DC();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v19[0] = v7 + 32;
    v19[1] = v6;
    sub_1D124E29C(v19, v20, v21, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

char *ClinicalAccountsDisambiguator.init(with:)()
{
  v1 = v0;
  v35 = sub_1D138D5EC();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 32) = 0;
  *(v0 + 16) = v3;
  if (v3 >> 62)
  {
    v30 = v3;
    v31 = sub_1D13910DC();
    v3 = v30;
    v5 = v31;
  }

  else
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
LABEL_22:
    *(v1 + 24) = v6;
    return v1;
  }

  v39 = MEMORY[0x1E69E7CC0];
  v7 = v3;

  result = sub_1D10FDDEC(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v6 = v39;
    v10 = v7;
    v36 = v7 & 0xC000000000000001;
    v37 = v7;
    v32 = v1;
    v33 = (v2 + 8);
    do
    {
      if (v36)
      {
        v11 = MEMORY[0x1D3886B70](v9, v10);
      }

      else
      {
        v11 = *(v10 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = sub_1D124EFA8(v12);
      if (!*(v13 + 2))
      {
        v14 = [v12 identifier];
        v15 = v34;
        sub_1D138D5CC();

        v16 = sub_1D138D59C();
        v18 = v17;
        (*v33)(v15, v35);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_1D10F7284(0, *(v13 + 2) + 1, 1, v13);
        }

        v20 = *(v13 + 2);
        v19 = *(v13 + 3);
        if (v20 >= v19 >> 1)
        {
          v13 = sub_1D10F7284((v19 > 1), v20 + 1, 1, v13);
        }

        *(v13 + 2) = v20 + 1;
        v21 = &v13[16 * v20];
        *(v21 + 4) = v16;
        *(v21 + 5) = v18;
      }

      v38 = v13;
      sub_1D109CFDC();
      sub_1D124F44C(&qword_1EE06B0E8, sub_1D109CFDC);
      v22 = sub_1D139008C();
      v24 = v23;

      v25 = [v12 gateway];

      if (v25)
      {
        v26 = [v25 minCompatibleAPIVersion];
      }

      else
      {
        v26 = 0;
      }

      v39 = v6;
      v28 = *(v6 + 16);
      v27 = *(v6 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_1D10FDDEC((v27 > 1), v28 + 1, 1);
        v6 = v39;
      }

      ++v9;
      *(v6 + 16) = v28 + 1;
      v29 = (v6 + 32 * v28);
      v29[4] = v12;
      v29[5] = v22;
      v29[6] = v24;
      v29[7] = v26;
      v10 = v37;
    }

    while (v5 != v9);

    v1 = v32;
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

id sub_1D124D634(void *a1)
{
  v2 = sub_1D138D5EC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v28 - v7;
  v9 = a1;
  v10 = sub_1D124F204(v9);
  v12 = v11;
  v14 = v13;
  v30 = v15;

  v16 = sub_1D124CD20();
  if (*(v16 + 16))
  {
    v17 = sub_1D11362EC(v12, v14);
    v19 = v18;

    if (v19)
    {
      v20 = *(*(v16 + 56) + 8 * v17);

      if (v20[2])
      {
        v21 = v20[4];
        v22 = v20[6];
        v28[0] = v20[7];
        v23 = v21;
        v28[1] = v22;

        v29 = v23;
        v24 = [v23 identifier];
        sub_1D138D5CC();

        v25 = [v9 identifier];
        sub_1D138D5CC();

        sub_1D124F44C(&qword_1EC6098A0, MEMORY[0x1E69695A8]);
        LOBYTE(v25) = sub_1D139011C();
        v26 = *(v3 + 8);
        v26(v5, v2);
        v26(v8, v2);

        if (v25)
        {
        }

        else
        {

          if (v30 < v28[0])
          {
            return v29;
          }
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  return 0;
}

uint64_t sub_1D124D914()
{
  v0 = MEMORY[0x1E69E7CC0];
  v14 = MEMORY[0x1E69E7CC0];
  result = sub_1D124CD20();
  v2 = 0;
  v3 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  if (!v6)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v8 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v9 = *(*(result + 56) + ((v2 << 9) | (8 * v8)));
      if (*(v9 + 16))
      {
        break;
      }

      if (!v6)
      {
        goto LABEL_6;
      }
    }

    v11 = result;
    v12 = *(v9 + 32);

    MEMORY[0x1D3885D90](v13);
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D13904BC();
    }

    sub_1D13904FC();

    v0 = v14;
    result = v11;
  }

  while (v6);
LABEL_6:
  while (1)
  {
    v10 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v0;
    }

    v6 = *(v3 + 8 * v10);
    ++v2;
    if (v6)
    {
      v2 = v10;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t ClinicalAccountsDisambiguator.deinit()
{

  return v0;
}

uint64_t ClinicalAccountsDisambiguator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D124DAF8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D13915BC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1D13904DC();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1D124DCC0(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1D124DBF0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D124DBF0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1D139162C(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D124DCC0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1D1245848(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1D124E830((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_1D139162C();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1D139162C();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D10F7610(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1D10F7610((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1D124E830((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1D1245848(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1D12457BC(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_1D139162C(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_1D124E29C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v95 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v95;
    if (!*v95)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1D1245848(v9);
      v9 = result;
    }

    v87 = (v9 + 16);
    v88 = *(v9 + 16);
    if (v88 >= 2)
    {
      while (*a3)
      {
        v89 = (v9 + 16 * v88);
        v90 = *v89;
        v91 = &v87[2 * v88];
        v92 = v91[1];
        sub_1D124EA58((*a3 + 32 * *v89), (*a3 + 32 * *v91), (*a3 + 32 * v92), v5);
        if (v6)
        {
        }

        if (v92 < v90)
        {
          goto LABEL_114;
        }

        if (v88 - 2 >= *v87)
        {
          goto LABEL_115;
        }

        *v89 = v90;
        v89[1] = v92;
        v93 = *v87 - v88;
        if (*v87 < v88)
        {
          goto LABEL_116;
        }

        v88 = *v87 - 1;
        result = memmove(v91, v91 + 2, 16 * v93);
        *v87 = v88;
        if (v88 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v94 = a4;
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v11 = *(*a3 + 32 * v8 + 24);
      v12 = 32 * v10;
      v13 = *a3 + 32 * v10;
      v14 = *(v13 + 24);
      v15 = v10 + 2;
      v16 = (v13 + 88);
      v17 = v11;
      while (v7 != v15)
      {
        v18 = *v16;
        v16 += 4;
        v19 = (v14 < v11) ^ (v17 >= v18);
        ++v15;
        v17 = v18;
        if ((v19 & 1) == 0)
        {
          v8 = v15 - 1;
          if (v14 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v7;
      if (v14 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_119;
      }

      if (v10 < v8)
      {
        v20 = 32 * v8 - 16;
        v21 = v8;
        v22 = v10;
        do
        {
          if (v22 != --v21)
          {
            v29 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = (v29 + v12);
            v24 = (v29 + v20);
            v25 = *v23;
            v26 = *(v23 + 2);
            v27 = *(v23 + 3);
            v28 = *v24;
            *v23 = *(v24 - 1);
            v23[1] = v28;
            *(v24 - 1) = v25;
            *v24 = v26;
            *(v24 + 1) = v27;
          }

          ++v22;
          v20 -= 32;
          v12 += 32;
        }

        while (v22 < v21);
        v7 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v7)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_118;
      }

      if (v8 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_120;
        }

        if (v10 + a4 < v7)
        {
          v7 = v10 + a4;
        }

        if (v7 < v10)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v8 != v7)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D10F7610(0, *(v9 + 16) + 1, 1, v9);
      v9 = result;
    }

    v5 = *(v9 + 16);
    v41 = *(v9 + 24);
    v42 = v5 + 1;
    if (v5 >= v41 >> 1)
    {
      result = sub_1D10F7610((v41 > 1), v5 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 16) = v42;
    v43 = v9 + 32;
    v44 = (v9 + 32 + 16 * v5);
    *v44 = v10;
    v44[1] = v8;
    v96 = *v95;
    if (!*v95)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v42 - 1;
        if (v42 >= 4)
        {
          break;
        }

        if (v42 == 3)
        {
          v45 = *(v9 + 32);
          v46 = *(v9 + 40);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_57:
          if (v48)
          {
            goto LABEL_104;
          }

          v61 = (v9 + 16 * v42);
          v63 = *v61;
          v62 = v61[1];
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_106;
          }

          v67 = (v43 + 16 * v5);
          v69 = *v67;
          v68 = v67[1];
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_111;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v5 = v42 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v42 < 2)
        {
          goto LABEL_112;
        }

        v71 = (v9 + 16 * v42);
        v73 = *v71;
        v72 = v71[1];
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_72:
        if (v66)
        {
          goto LABEL_108;
        }

        v74 = (v43 + 16 * v5);
        v76 = *v74;
        v75 = v74[1];
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_110;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v42)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v82 = (v43 + 16 * (v5 - 1));
        v83 = *v82;
        v84 = (v43 + 16 * v5);
        v85 = v84[1];
        sub_1D124EA58((*a3 + 32 * *v82), (*a3 + 32 * *v84), (*a3 + 32 * v85), v96);
        if (v6)
        {
        }

        if (v85 < v83)
        {
          goto LABEL_99;
        }

        if (v5 > *(v9 + 16))
        {
          goto LABEL_100;
        }

        *v82 = v83;
        v82[1] = v85;
        v86 = *(v9 + 16);
        if (v5 >= v86)
        {
          goto LABEL_101;
        }

        v42 = v86 - 1;
        result = memmove((v43 + 16 * v5), v84 + 2, 16 * (v86 - 1 - v5));
        *(v9 + 16) = v86 - 1;
        if (v86 <= 2)
        {
          goto LABEL_3;
        }
      }

      v49 = v43 + 16 * v42;
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_102;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_103;
      }

      v56 = (v9 + 16 * v42);
      v58 = *v56;
      v57 = v56[1];
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_105;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_107;
      }

      if (v60 >= v52)
      {
        v78 = (v43 + 16 * v5);
        v80 = *v78;
        v79 = v78[1];
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_113;
        }

        if (v47 < v81)
        {
          v5 = v42 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v7 = a3[1];
    a4 = v94;
    if (v8 >= v7)
    {
      goto LABEL_88;
    }
  }

  v30 = *a3;
  v31 = v10 - v8;
  v32 = *a3 + 32 * v8;
LABEL_30:
  v33 = *(v30 + 32 * v8 + 24);
  v34 = v32;
  v35 = v31;
  while (1)
  {
    if (*(v34 - 1) >= v33)
    {
LABEL_29:
      ++v8;
      --v31;
      v32 += 32;
      if (v8 != v7)
      {
        goto LABEL_30;
      }

      v8 = v7;
      goto LABEL_37;
    }

    if (!v30)
    {
      break;
    }

    v36 = *v34;
    v37 = v34[1];
    v38 = v34[2];
    v39 = *(v34 - 1);
    *v34 = *(v34 - 2);
    *(v34 + 1) = v39;
    *(v34 - 3) = v37;
    *(v34 - 2) = v38;
    *(v34 - 1) = v33;
    *(v34 - 4) = v36;
    v34 -= 4;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_1D124E830(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1D139162C() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_1D139162C() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1D124EA58(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[32 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[32 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*(v4 + 3) < *(v6 + 3))
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 32;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 32;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[32 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[32 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_24:
    v5 -= 32;
    do
    {
      v18 = v5 + 32;
      if (*(v6 - 1) < *(v14 - 1))
      {
        v21 = v6 - 32;
        if (v18 != v6)
        {
          v22 = *(v6 - 1);
          *v5 = *v21;
          *(v5 + 1) = v22;
        }

        if (v14 <= v4 || (v6 -= 32, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v19 = v14 - 32;
      if (v18 != v14)
      {
        v20 = *(v14 - 1);
        *v5 = *v19;
        *(v5 + 1) = v20;
      }

      v5 -= 32;
      v14 -= 32;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_35:
  v23 = v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0);
  if (v6 != v4 || v6 >= &v4[v23 & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v6, v4, 32 * (v23 >> 5));
  }

  return 1;
}

void (*sub_1D124EC5C(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_1D124EF74(v7);
  v7[9] = sub_1D124ED68(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1D124ED08;
}

void sub_1D124ED08(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1D124ED68(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_1D11362EC(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_1D1183F5C();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1D117F5BC(v18, a4 & 1);
    v13 = sub_1D11362EC(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1D13916CC();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_1D124EEC0;
}

void sub_1D124EEC0(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_1D133945C(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    v6 = v1[4];
    v7 = *v1[3];
    sub_1D114E434(*(v7 + 48) + 16 * v6);
    sub_1D1226130(v6, v7);
  }

  free(v1);
}

uint64_t (*sub_1D124EF74(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1D124EF9C;
}

char *sub_1D124EFA8(void *a1)
{
  v1 = [a1 gateway];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  v24 = MEMORY[0x1E69E7CD0];
  v3 = [v1 externalID];
  v4 = sub_1D139016C();
  v6 = v5;

  sub_1D10E3C78(&v23, v4, v6);

  v7 = [v2 gatewayVersions];
  if (v7)
  {
    v8 = v7;
    sub_1D124F53C();
    v9 = sub_1D139045C();

    if (v9 >> 62)
    {
      v10 = sub_1D13910DC();
      if (v10)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
LABEL_5:
        if (v10 < 1)
        {
          __break(1u);

          __break(1u);
          return result;
        }

        v11 = 0;
        do
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v12 = MEMORY[0x1D3886B70](v11, v9);
          }

          else
          {
            v12 = *(v9 + 8 * v11 + 32);
          }

          v13 = v12;
          ++v11;
          v14 = [v12 gatewayID];
          v15 = sub_1D139016C();
          v17 = v16;

          sub_1D10E3C78(&v23, v15, v17);
        }

        while (v10 != v11);
      }
    }
  }

  v19 = v24;
  v20 = *(v24 + 16);
  if (!v20)
  {
LABEL_17:

    v21 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  v21 = sub_1D129F730(*(v24 + 16), 0);
  v22 = sub_1D12A27E4(&v23, v21 + 4, v20, v19);
  sub_1D102CC30();
  if (v22 != v20)
  {
    __break(1u);
    goto LABEL_17;
  }

LABEL_18:
  v23 = v21;

  sub_1D124D104(&v23);

  return v23;
}

id sub_1D124F204(void *a1)
{
  v2 = sub_1D138D5EC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1;
  v7 = sub_1D124EFA8(v6);
  if (!*(v7 + 2))
  {
    v8 = [v6 identifier];
    sub_1D138D5CC();

    v9 = sub_1D138D59C();
    v11 = v10;
    (*(v3 + 8))(v5, v2);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1D10F7284(0, *(v7 + 2) + 1, 1, v7);
    }

    v13 = *(v7 + 2);
    v12 = *(v7 + 3);
    if (v13 >= v12 >> 1)
    {
      v7 = sub_1D10F7284((v12 > 1), v13 + 1, 1, v7);
    }

    *(v7 + 2) = v13 + 1;
    v14 = &v7[16 * v13];
    *(v14 + 4) = v9;
    *(v14 + 5) = v11;
  }

  v17[1] = v7;
  sub_1D109CFDC();
  sub_1D124F44C(&qword_1EE06B0E8, sub_1D109CFDC);
  sub_1D139008C();

  v15 = [v6 gateway];

  if (v15)
  {
    [v15 minCompatibleAPIVersion];
  }

  return v6;
}

uint64_t sub_1D124F44C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D124F53C()
{
  result = qword_1EC60E1B8;
  if (!qword_1EC60E1B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC60E1B8);
  }

  return result;
}

uint64_t sub_1D124F588@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  *a2 = v4;
  *(a2 + 8) = v5;
  v6 = *(v3 + 32);
  *(a2 + 16) = v6;
  return sub_1D124F7B4(v4, v5, v6);
}

uint64_t sub_1D124F5DC(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a1 + 16);
  swift_beginAccess();
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  v8 = *(v4 + 32);
  *(v4 + 32) = v5;
  sub_1D124F7B4(v2, v3, v5);
  sub_1D124F854(v6, v7, v8);
  *(v4 + 40) = sub_1D124F690();
  *(v4 + 48) = v9;
}

unint64_t sub_1D124F690()
{
  v2 = *v0;
  v1 = v0[1];
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
      v3 = *v0;

      return v3;
    }

    else
    {
      v6 = v2 | v1;
      if (v2 ^ 1 | v1)
      {
        v7 = 0xD000000000000017;
      }

      else
      {
        v7 = 0xD000000000000014;
      }

      if (v6)
      {
        return v7;
      }

      else
      {
        return 25637;
      }
    }
  }

  else
  {
    v9 = *v0;
    v10 = v1;
    v11 = 0;
    v8 = v2;
    result = sub_1D1250058(&v8);
    if (!v5)
    {
      return 25637;
    }
  }

  return result;
}

uint64_t sub_1D124F764@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = v3;
  *(a1 + 8) = v4;
  v5 = *(v1 + 32);
  *(a1 + 16) = v5;
  return sub_1D124F7B4(v3, v4, v5);
}

uint64_t sub_1D124F7B4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t sub_1D124F7CC(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  swift_beginAccess();
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  *(v2 + 16) = v3;
  *(v2 + 24) = v4;
  v8 = *(v2 + 32);
  *(v2 + 32) = v5;
  sub_1D124F854(v6, v7, v8);
  *(v2 + 40) = sub_1D124F690();
  *(v2 + 48) = v9;
}

uint64_t sub_1D124F854(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t (*sub_1D124F86C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D124F8C0;
}

uint64_t sub_1D124F8C0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    v7 = *(v5 + 16);
    v6 = *(v5 + 24);
    if (*(v5 + 32))
    {
      if (*(v5 + 32) == 1)
      {
      }

      else
      {
        v11 = v7 | v6;
        v12 = v7 ^ 1 | v6;
        v13 = v12 == 0;
        if (v12)
        {
          v14 = 0xD000000000000017;
        }

        else
        {
          v14 = 0xD000000000000014;
        }

        if (v13)
        {
          v15 = 0x80000001D13C69B0;
        }

        else
        {
          v15 = 0x80000001D13C6990;
        }

        if (v11)
        {
          v7 = v14;
        }

        else
        {
          v7 = 25637;
        }

        if (v11)
        {
          v8 = v15;
        }

        else
        {
          v8 = 0xE200000000000000;
        }
      }
    }

    else
    {
      v16 = *(v5 + 16);
      v9 = sub_1D1250058(&v16);
      if (v10)
      {
        v7 = v9;
      }

      else
      {
        v7 = 25637;
      }

      if (v10)
      {
        v8 = v10;
      }

      else
      {
        v8 = 0xE200000000000000;
      }

      v5 = *(a1 + 24);
    }

    *(v5 + 40) = v7;
    *(v5 + 48) = v8;
  }

  return result;
}

uint64_t CountFormatter.__allocating_init(style:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (qword_1EC608C98 != -1)
  {
    swift_once();
  }

  v7 = qword_1EC60C028;
  v6 = unk_1EC60C030;
  v8 = qword_1EC60C038;
  *(v2 + 56) = qword_1EC60C028;
  *(v2 + 64) = v6;
  *(v2 + 72) = v8;
  *(v2 + 16) = v4;
  *(v2 + 24) = v3;
  *(v2 + 32) = v5;
  if (v5)
  {
    if (v5 == 1)
    {
    }

    else
    {
      v11 = v4 | v3;
      v12 = v4 ^ 1 | v3;
      v13 = v12 == 0;
      if (v12)
      {
        v14 = 0xD000000000000017;
      }

      else
      {
        v14 = 0xD000000000000014;
      }

      if (v13)
      {
        v15 = 0x80000001D13C69B0;
      }

      else
      {
        v15 = 0x80000001D13C6990;
      }

      if (v11)
      {
        v4 = v14;
      }

      else
      {
        v4 = 25637;
      }

      if (v11)
      {
        v3 = v15;
      }

      else
      {
        v3 = 0xE200000000000000;
      }
    }
  }

  else
  {
    v19 = v4;
    v20 = v3;
    v21 = 0;
    v18 = v4;
    v9 = sub_1D1250058(&v18);
    if (v10)
    {
      v4 = v9;
    }

    else
    {
      v4 = 25637;
    }

    if (v10)
    {
      v3 = v10;
    }

    else
    {
      v3 = 0xE200000000000000;
    }
  }

  *(v2 + 40) = v4;
  *(v2 + 48) = v3;
  v16 = v7;

  return v2;
}

uint64_t CountFormatter.init(style:)(uint64_t a1)
{
  v2 = v1;
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (qword_1EC608C98 != -1)
  {
    swift_once();
  }

  v7 = qword_1EC60C028;
  v6 = unk_1EC60C030;
  v8 = qword_1EC60C038;
  *(v2 + 56) = qword_1EC60C028;
  *(v2 + 64) = v6;
  *(v2 + 72) = v8;
  *(v2 + 16) = v4;
  *(v2 + 24) = v3;
  *(v2 + 32) = v5;
  if (v5)
  {
    if (v5 == 1)
    {
    }

    else
    {
      v11 = v4 | v3;
      v12 = v4 ^ 1 | v3;
      v13 = v12 == 0;
      if (v12)
      {
        v14 = 0xD000000000000017;
      }

      else
      {
        v14 = 0xD000000000000014;
      }

      if (v13)
      {
        v15 = 0x80000001D13C69B0;
      }

      else
      {
        v15 = 0x80000001D13C6990;
      }

      if (v11)
      {
        v4 = v14;
      }

      else
      {
        v4 = 25637;
      }

      if (v11)
      {
        v3 = v15;
      }

      else
      {
        v3 = 0xE200000000000000;
      }
    }
  }

  else
  {
    v19 = v4;
    v20 = v3;
    v21 = 0;
    v18 = v4;
    v9 = sub_1D1250058(&v18);
    if (v10)
    {
      v4 = v9;
    }

    else
    {
      v4 = 25637;
    }

    if (v10)
    {
      v3 = v10;
    }

    else
    {
      v3 = 0xE200000000000000;
    }
  }

  *(v2 + 40) = v4;
  *(v2 + 48) = v3;
  v16 = v7;

  return v2;
}

uint64_t sub_1D124FC74(uint64_t a1)
{
  sub_1D10CD5A4(0, &qword_1EC60DF40, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  v6 = *(v1 + 56);
  v7 = sub_1D138D67C();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  sub_1D10CD5A4(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E6530];
  *(v8 + 16) = xmmword_1D139E700;
  v10 = MEMORY[0x1E69E65A8];
  *(v8 + 56) = v9;
  *(v8 + 64) = v10;
  *(v8 + 32) = a1;
  v11 = v6;

  v12 = sub_1D138D1CC();

  if (*(v8 + 16))
  {
    v12 = sub_1D139019C();
  }

  sub_1D10CD608(v5);

  return v12;
}

uint64_t CountFormatter.deinit()
{
  sub_1D124F854(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  v1 = *(v0 + 56);

  return v0;
}

uint64_t CountFormatter.__deallocating_deinit()
{
  sub_1D124F854(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  v1 = *(v0 + 56);

  return swift_deallocClassInstance();
}

Swift::String __swiftcall DisplayCategory.Kind.localizedCount(_:)(Swift::Int a1)
{
  v3 = *v1;
  type metadata accessor for CountFormatter();
  inited = swift_initStackObject();
  if (qword_1EC608C98 != -1)
  {
    swift_once();
  }

  v6 = qword_1EC60C028;
  v5 = unk_1EC60C030;
  v7 = qword_1EC60C038;
  *(inited + 56) = qword_1EC60C028;
  *(inited + 64) = v5;
  *(inited + 72) = v7;
  *(inited + 16) = v3;
  *(inited + 24) = 0;
  *(inited + 32) = 0;
  v21 = v3;
  v22 = 0;
  v23 = 0;
  v20 = v3;
  v8 = sub_1D1250058(&v20);
  v10 = 25637;
  if (v9)
  {
    v10 = v8;
    v11 = v9;
  }

  else
  {
    v11 = 0xE200000000000000;
  }

  *(inited + 40) = v10;
  *(inited + 48) = v11;
  v12 = v6;

  v13 = sub_1D124FC74(a1);
  v15 = v14;
  swift_setDeallocating();
  sub_1D124F854(*(inited + 16), *(inited + 24), *(inited + 32));

  v16 = *(inited + 56);

  v17 = v13;
  v18 = v15;
  result._object = v18;
  result._countAndFlagsBits = v17;
  return result;
}

unint64_t sub_1D1250058(_BYTE *a1)
{
  v1 = *a1;
  if (v1 <= 4)
  {
    v6 = 0xD00000000000001ALL;
    v7 = 0xD00000000000001ELL;
    if (v1 != 3)
    {
      v7 = 0xD00000000000001ALL;
    }

    if (v1 != 2)
    {
      v6 = v7;
    }

    v8 = 0xD00000000000001BLL;
    if (!*a1)
    {
      v8 = *a1;
    }

    if (*a1 <= 1u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0xD00000000000001ELL;
    if (v1 == 9)
    {
      v2 = 0xD000000000000019;
    }

    if (v1 == 8)
    {
      v2 = 0xD000000000000017;
    }

    v3 = 0xD00000000000001ALL;
    v4 = 0xD00000000000001DLL;
    if (v1 != 6)
    {
      v4 = 0xD000000000000019;
    }

    if (v1 != 5)
    {
      v3 = v4;
    }

    if (*a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t get_enum_tag_for_layout_string_15HealthRecordsUI14CountFormatterC5StyleO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D12502C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D125030C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1D1250350(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

void sub_1D1250378()
{
  v1 = sub_1D139044C();
  v2 = HKUIJoinStringsForAutomationIdentifier();

  [v0 setAccessibilityIdentifier_];
}

uint64_t sub_1D12503E8()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1D1250454()
{
  v1 = *(*v0 + 64);

  return v1;
}

uint64_t sub_1D1250488()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1Tm((*v0 + 16), v2);
  v4 = (*(v3 + 56))(v2, v3);
  v6 = v5;

  MEMORY[0x1D3885C10](v4, v6);

  return v1;
}

uint64_t sub_1D1250524(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

unint64_t sub_1D1250610()
{
  result = qword_1EC60D4B0;
  if (!qword_1EC60D4B0)
  {
    type metadata accessor for RecordItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60D4B0);
  }

  return result;
}

void sub_1D1250664(void *a1)
{
  v3 = type metadata accessor for PresentationContext(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1D1072E70(v1 + 16, v15);
  sub_1D12507C8();
  sub_1D125082C();
  if (swift_dynamicCast())
  {
    v6 = v14;
    v7 = *(v1 + 56);
    v8 = sub_1D138D5EC();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    objc_allocWithZone(type metadata accessor for MedicalRecordDetailViewController(0));
    v9 = v6;
    v10 = v7;
    v11 = v5;
    v12 = v1;
    v13 = sub_1D131237C(v9, v10, v11);

    [a1 showAdaptively:v13 sender:v12];
  }
}

unint64_t sub_1D12507C8()
{
  result = qword_1EC60AEB0;
  if (!qword_1EC60AEB0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC60AEB0);
  }

  return result;
}

unint64_t sub_1D125082C()
{
  result = qword_1EC60B0A8;
  if (!qword_1EC60B0A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC60B0A8);
  }

  return result;
}

id sub_1D12508A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DiagnosticTestReportFormatter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D1250910(uint64_t a1)
{
  result = sub_1D1250938();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D1250938()
{
  result = qword_1EC60E1D0;
  if (!qword_1EC60E1D0)
  {
    type metadata accessor for DiagnosticTestReportFormatter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60E1D0);
  }

  return result;
}

id sub_1D125098C(void *a1)
{
  v1 = [a1 primaryConcept];
  v2 = [v1 localizedPreferredName];

  if (v2)
  {
    v3 = sub_1D139016C();
    v5 = v4;

    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      v2 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
      [v2 setDisplayItemType_];
      if (qword_1EE06AD00 != -1)
      {
        swift_once();
      }

      sub_1D138D1CC();
      v7 = sub_1D139012C();

      [v2 setTitle_];

      v8 = sub_1D139012C();

      [v2 setSubtitle_];

      [v2 setSeparatorStyle_];
      [v2 setSeparatorHidden_];
      [v2 setExtraTopPadding_];
    }

    else
    {

      return 0;
    }
  }

  return v2;
}

void *sub_1D1250B74(void *a1)
{
  sub_1D1251608(0, &qword_1EC60DF40, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v83 - v3;
  v5 = sub_1D138D57C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v83 - v10;
  v90[4] = sub_1D1201200(a1);
  v90[5] = sub_1D125098C(a1);
  v88 = sub_1D111A42C();
  v12 = [a1 effectiveStartDate];
  v13 = [a1 effectiveEndDate];
  v14 = [a1 meaningfulDateTitle];
  v87 = sub_1D139016C();
  v16 = v15;

  if (v12)
  {
    if (v13)
    {
      v84 = v4;
      v17 = v13;
      v18 = v12;
      v86 = v17;
      v19 = [v17 dateForUTC];
      sub_1D138D52C();

      v85 = v18;
      v20 = [v18 dateForUTC];
      sub_1D138D52C();

      sub_1D138D4CC();
      v22 = v21;
      v23 = *(v6 + 8);
      v23(v8, v5);
      v23(v11, v5);
      if (v22 <= COERCE_DOUBLE(1))
      {
        if (qword_1EE06AD00 != -1)
        {
          swift_once();
        }

        v56 = sub_1D138D1CC();
        v58 = v57;
        v59 = v85;
        v48 = sub_1D11EDE68(v56, v58, v12, v87, v16);
        v60 = v48;

        v61 = v86;
        if (v48)
        {
        }
      }

      else
      {

        v87 = "ETAIL_TITLE_RELEASED";
        v24 = sub_1D138D67C();
        v25 = v84;
        (*(*(v24 - 8) + 56))(v84, 1, 1, v24);
        if (qword_1EC608CB0 != -1)
        {
          swift_once();
        }

        v83 = qword_1EC60C070;
        sub_1D1251608(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_1D139E710;
        v27 = [v85 displayString];
        v28 = sub_1D139016C();
        v30 = v29;

        v31 = MEMORY[0x1E69E6158];
        *(v26 + 56) = MEMORY[0x1E69E6158];
        v32 = sub_1D1089930();
        *(v26 + 64) = v32;
        *(v26 + 32) = v28;
        *(v26 + 40) = v30;
        v33 = [v86 displayString];
        v34 = sub_1D139016C();
        v36 = v35;

        *(v26 + 96) = v31;
        *(v26 + 104) = v32;
        *(v26 + 72) = v34;
        *(v26 + 80) = v36;
        v37 = sub_1D138D1CC();
        v39 = v38;
        if (*(v26 + 16))
        {
          v37 = sub_1D139019C();
          v41 = v40;

          sub_1D10CD608(v25);
          v39 = v41;
        }

        else
        {
          sub_1D10CD608(v25);
        }

        v63 = HIBYTE(v39) & 0xF;
        if ((v39 & 0x2000000000000000) == 0)
        {
          v63 = v37 & 0xFFFFFFFFFFFFLL;
        }

        if (v63)
        {
          v48 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
          [v48 setDisplayItemType_];
          if (qword_1EE06AD00 != -1)
          {
            swift_once();
          }

          sub_1D138D1CC();
          v64 = sub_1D139012C();

          [v48 setTitle_];

          v65 = sub_1D139012C();

          [v48 setSubtitle_];

          [v48 setSeparatorStyle_];
          [v48 setSeparatorHidden_];
          [v48 setExtraTopPadding_];
          v66 = v86;

          v67 = v85;
        }

        else
        {

          v68 = v86;

          v69 = v85;
          v48 = 0;
        }
      }

      goto LABEL_31;
    }

    v50 = qword_1EE06AD00;
    v51 = v12;
    if (v50 != -1)
    {
      swift_once();
    }

    v52 = sub_1D138D1CC();
    v54 = v53;
    v55 = v51;
    v48 = sub_1D11EDE68(v52, v54, v12, v87, v16);
    v49 = v48;

    if (!v48)
    {
      goto LABEL_31;
    }

LABEL_12:

LABEL_31:
    v62 = &selRef_deselectRowAtIndexPath_animated_;
    goto LABEL_32;
  }

  if (v13)
  {
    v42 = qword_1EE06AD00;
    v43 = v13;
    if (v42 != -1)
    {
      swift_once();
    }

    v44 = sub_1D138D1CC();
    v46 = v45;
    v47 = v43;
    v48 = sub_1D11EDE68(v44, v46, v13, v87, v16);
    v49 = v48;

    if (!v48)
    {
      goto LABEL_31;
    }

    goto LABEL_12;
  }

  v48 = 0;
  v62 = &selRef_deselectRowAtIndexPath_animated_;
LABEL_32:
  v90[6] = v48;
  if (qword_1EE06AD00 != -1)
  {
LABEL_45:
    swift_once();
  }

  v70 = sub_1D138D1CC();
  v72 = v71;
  v73 = [a1 issueDate];
  v74 = [a1 v62[359]];
  v75 = sub_1D139016C();
  v77 = v76;

  v90[7] = sub_1D11EDE68(v70, v72, v73, v75, v77);
  v78 = 0;
  v90[8] = sub_1D128719C(a1);
  a1 = MEMORY[0x1E69E7CC0];
  v89 = MEMORY[0x1E69E7CC0];
  v62 = v90;
LABEL_34:
  if (v78 <= 5)
  {
    v79 = 5;
  }

  else
  {
    v79 = v78;
  }

  while (v78 != 5)
  {
    if (v79 == v78)
    {
      __break(1u);
      goto LABEL_45;
    }

    v80 = v90[v78++ + 4];
    if (v80)
    {
      v81 = v80;
      MEMORY[0x1D3885D90]();
      if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D13904BC();
      }

      sub_1D13904FC();
      a1 = v89;
      goto LABEL_34;
    }
  }

  sub_1D1251608(0, &qword_1EC60A678, sub_1D111A42C, MEMORY[0x1E69E6720]);
  swift_arrayDestroy();
  return a1;
}

void sub_1D1251608(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D125166C(void *a1)
{
  v8[4] = sub_1D1201200(a1);
  v2 = 0;
  v8[5] = sub_1D128719C(a1);
  v3 = MEMORY[0x1E69E7CC0];
  v7 = MEMORY[0x1E69E7CC0];
  while (v2 != 2)
  {
    v4 = v8[v2++ + 4];
    if (v4)
    {
      v5 = v4;
      MEMORY[0x1D3885D90]();
      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D13904BC();
      }

      sub_1D13904FC();
      v3 = v7;
    }
  }

  sub_1D1251608(0, &qword_1EC60A678, sub_1D111A42C, MEMORY[0x1E69E6720]);
  swift_arrayDestroy();
  return v3;
}

id sub_1D12517C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoverageIdentifierFormatter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D125187C(uint64_t a1)
{
  result = sub_1D12518A4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D12518A4()
{
  result = qword_1EC60E1F8;
  if (!qword_1EC60E1F8)
  {
    type metadata accessor for CoverageIdentifierFormatter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60E1F8);
  }

  return result;
}

id sub_1D12518F8(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI27CoverageIdentifierFormatter_displayValue + 8);
  if (!v3)
  {
    v5 = MEMORY[0x1E69E7CC0];
    if (!a1)
    {
      goto LABEL_22;
    }

    goto LABEL_7;
  }

  v4 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI27CoverageIdentifierFormatter_displayValue);

  v5 = sub_1D10F7284(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = sub_1D10F7284((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 2) = v7 + 1;
  v8 = &v5[16 * v7];
  *(v8 + 4) = v4;
  *(v8 + 5) = v3;
  if (a1)
  {
LABEL_7:
    v9 = [a1 type];
    if (v9)
    {
      v10 = v9;
      v11 = [a1 value];
      if (v11)
      {
        v12 = v11;
        v13 = sub_1D139016C();
        v15 = v14;

        v16 = 0xE000000000000000;
        v17 = [v10 localizedPreferredName];
        if (v17)
        {
          v18 = v17;
          v19 = sub_1D139016C();
          v16 = v20;

          v21 = HIBYTE(v16) & 0xF;
          if ((v16 & 0x2000000000000000) == 0)
          {
            v21 = v19 & 0xFFFFFFFFFFFFLL;
          }

          if (v21)
          {
            v17 = v19;
          }

          else
          {

            v17 = 0;
            v16 = 0xE000000000000000;
          }
        }

        MEMORY[0x1D3885C10](v17, v16);

        MEMORY[0x1D3885C10](8250, 0xE200000000000000);
        MEMORY[0x1D3885C10](v13, v15);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1D10F7284(0, *(v5 + 2) + 1, 1, v5);
        }

        v23 = *(v5 + 2);
        v22 = *(v5 + 3);
        if (v23 >= v22 >> 1)
        {
          v5 = sub_1D10F7284((v22 > 1), v23 + 1, 1, v5);
        }

        *(v5 + 2) = v23 + 1;
        v24 = &v5[16 * v23];
        *(v24 + 4) = 0;
        *(v24 + 5) = 0xE000000000000000;
      }

      else
      {
      }
    }
  }

LABEL_22:
  v25 = Array<A>.newlineJoined.getter(v5);
  v27 = v26;

  v28 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v28 = v25 & 0xFFFFFFFFFFFFLL;
  }

  if (v28)
  {
    v29 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
    [v29 setDisplayItemType_];

    v30 = sub_1D139012C();

    [v29 setTitle_];

    v31 = sub_1D139012C();

    [v29 setSubtitle_];

    [v29 setSeparatorStyle_];
    [v29 setSeparatorHidden_];
    [v29 setExtraTopPadding_];
  }

  else
  {

    return 0;
  }

  return v29;
}

uint64_t sub_1D1251C6C(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a3;
  v11 = (v5 + OBJC_IVAR____TtC15HealthRecordsUI27CoverageIdentifierFormatter_displayValue);
  *v11 = a2;
  v11[1] = a3;

  v12 = (v5 + OBJC_IVAR____TtC15HealthRecordsUI27CoverageIdentifierFormatter_identifierTitle);
  *v12 = a4;
  v12[1] = a5;

  v13 = a1;
  v14 = a1 >> 62;
  v15 = v13;
  if (v14)
  {
    goto LABEL_34;
  }

  if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_35;
  }

LABEL_3:

  while (1)
  {
    if (v14)
    {
      v16 = sub_1D13910DC();
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = MEMORY[0x1E69E7CC0];
    if (!v16)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v41 = MEMORY[0x1E69E7CC0];
    sub_1D10FDEAC(0, v16 & ~(v16 >> 63), 0);
    if (v16 < 0)
    {
      break;
    }

    v18 = 0;
    v6 = *(v5 + OBJC_IVAR____TtC15HealthRecordsUI27CoverageIdentifierFormatter_context);
    v19 = v41;
    v20 = v15;
    v34 = v15 & 0xFFFFFFFFFFFFFF8;
    v35 = v15 & 0xC000000000000001;
    v9 = v15;
    while (1)
    {
      v14 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v35)
      {
        v21 = MEMORY[0x1D3886B70](v18, v20);
      }

      else
      {
        if (v18 >= *(v34 + 16))
        {
          goto LABEL_33;
        }

        v21 = *(v20 + 8 * v18 + 32);
      }

      v22 = v21;
      if (v6 == 1)
      {
        v23 = sub_1D12518F8(v21);
        v39 = v23;
        v40 = v17;
        if (v23)
        {
          v24 = v23;
          MEMORY[0x1D3885D90]();
          if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D13904BC();
          }

          sub_1D13904FC();
          v17 = v40;
        }

        v25 = &v38;
      }

      else
      {
        if (v6)
        {
          goto LABEL_40;
        }

        v26 = sub_1D12518F8(v21);
        v37 = v26;
        v40 = v17;
        if (v26)
        {
          v27 = v26;
          MEMORY[0x1D3885D90]();
          if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D13904BC();
          }

          sub_1D13904FC();
          v17 = v40;
        }

        v25 = &v36;
      }

      sub_1D1166490((v25 + 32));

      v41 = v19;
      v29 = v19[2];
      v28 = v19[3];
      v15 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        sub_1D10FDEAC((v28 > 1), v29 + 1, 1);
        v19 = v41;
      }

      v19[2] = v15;
      v19[v29 + 4] = v17;
      ++v18;
      v20 = v9;
      v17 = MEMORY[0x1E69E7CC0];
      if (v14 == v16)
      {
        return v19;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    if (sub_1D13910DC())
    {
      goto LABEL_3;
    }

LABEL_35:

    if (v9)
    {
      v30 = sub_1D12518F8(0);
      if (v30)
      {
        v31 = v30;
        sub_1D1252018(0, &qword_1EC60AD08, sub_1D10FAB5C, MEMORY[0x1E69E6F90]);
        v19 = swift_allocObject();
        *(v19 + 1) = xmmword_1D139E700;
        sub_1D106F424();
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_1D139E810;
        *(v32 + 32) = v31;
        v19[4] = v32;
        return v19;
      }
    }
  }

  __break(1u);
LABEL_40:
  v40 = v6;
  result = sub_1D139169C();
  __break(1u);
  return result;
}

void sub_1D1252018(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t *sub_1D125207C@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

id sub_1D1252134()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for YearRangePickerViewController();
  objc_msgSendSuper2(&v9, sel_viewDidLoad);
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  v1 = sub_1D139012C();

  [v0 setTitle_];

  result = [v0 tableView];
  if (result)
  {
    v3 = result;
    sub_1D1253448();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = sub_1D139012C();
    [v3 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v5];

    result = [v0 tableView];
    if (result)
    {
      v6 = result;
      type metadata accessor for YearRangePickerCell();
      v7 = swift_getObjCClassFromMetadata();
      v8 = sub_1D139012C();
      [v6 registerClass:v7 forCellReuseIdentifier:v8];

      *(*&v0[OBJC_IVAR____TtC15HealthRecordsUI29YearRangePickerViewController_dataSource] + OBJC_IVAR____TtC15HealthRecordsUI25YearRangePickerDataSource_delegate + 8) = &off_1F4D10020;
      return swift_unknownObjectWeakAssign();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_1D1252390(void *a1)
{
  v3 = v1;
  v5 = sub_1D138D7FC();
  switch(v5)
  {
    case 2:
      v19 = sub_1D139012C();
      v20 = sub_1D138D7DC();
      v21 = [a1 dequeueReusableCellWithIdentifier:v19 forIndexPath:v20];

      type metadata accessor for YearRangePickerCell();
      v9 = swift_dynamicCastClassUnconditional();
      *&v9[OBJC_IVAR____TtC15HealthRecordsUI19YearRangePickerCell_dataSource] = *(v3 + OBJC_IVAR____TtC15HealthRecordsUI29YearRangePickerViewController_dataSource);
      swift_retain_n();

      sub_1D1247E38();

      *&v9[OBJC_IVAR____TtC15HealthRecordsUI19YearRangePickerCell_baseAccessibilityIdentifier] = xmmword_1D139EAC0;

      sub_1D1248058();
      break;
    case 1:
      v6 = 1;
LABEL_6:
      v7 = sub_1D139012C();
      v8 = sub_1D138D7DC();
      v9 = [a1 dequeueReusableCellWithIdentifier:v7 forIndexPath:v8];

      v10 = [v9 textLabel];
      if (v10)
      {
        v11 = v10;
        v12 = [objc_opt_self() labelColor];
        [v11 setTextColor_];
      }

      v13 = OBJC_IVAR____TtC15HealthRecordsUI29YearRangePickerViewController_selectedRow;
      if (*(v3 + OBJC_IVAR____TtC15HealthRecordsUI29YearRangePickerViewController_selectedRow) == v6)
      {
        v14 = 3;
      }

      else
      {
        v14 = 0;
      }

      [v9 setAccessoryType_];
      v15 = [v9 textLabel];
      v2 = v15;
      if ((v6 & 1) == 0)
      {
        if (v15)
        {
          if (qword_1EE06AD00 != -1)
          {
            swift_once();
          }

          sub_1D138D1CC();
          v16 = sub_1D139012C();

          [v2 setText_];
        }

        v17 = sub_1D139044C();
        v18 = HKUIJoinStringsForAutomationIdentifier();
        goto LABEL_28;
      }

      if (!v15)
      {
LABEL_27:
        [v9 setSeparatorInset_];
        v17 = sub_1D139044C();
        v18 = HKUIJoinStringsForAutomationIdentifier();
LABEL_28:
        v24 = v18;

        [v9 setAccessibilityIdentifier_];
        return v9;
      }

      if (*(v3 + v13) == 1)
      {

        sub_1D1252F2C();

LABEL_26:
        v23 = sub_1D139012C();

        [v2 setText_];

        goto LABEL_27;
      }

LABEL_23:
      if (qword_1EE06AD00 != -1)
      {
        swift_once();
      }

      v26 = 0xE000000000000000;
      sub_1D138D1CC();
      goto LABEL_26;
    case 0:
      v6 = 0;
      goto LABEL_6;
    default:
      v22 = sub_1D139012C();
      v9 = HKErrorTableViewCell();

      if (!v9)
      {
        __break(1u);
        goto LABEL_23;
      }

      break;
  }

  return v9;
}

id sub_1D1252944(void *a1)
{
  v2 = v1;
  result = sub_1D138D7FC();
  if (result == 1)
  {
    v5 = 1;
  }

  else
  {
    if (result)
    {
      return result;
    }

    v5 = 0;
  }

  v6 = sub_1D138D7DC();
  [a1 deselectRowAtIndexPath:v6 animated:1];

  *(v2 + OBJC_IVAR____TtC15HealthRecordsUI29YearRangePickerViewController_selectedRow) = v5;
  if (v5)
  {
    v7 = *(v2 + OBJC_IVAR____TtC15HealthRecordsUI29YearRangePickerViewController_dataSource);
    v8 = *(v7 + OBJC_IVAR____TtC15HealthRecordsUI25YearRangePickerDataSource_selectedMinYear);
    v9 = *(v7 + OBJC_IVAR____TtC15HealthRecordsUI25YearRangePickerDataSource_selectedMaxYear);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = *(Strong + OBJC_IVAR___HRPDFConfigurationViewController_configurationDataSource);
      *(v11 + 16) = v8;
      *(v11 + 24) = v9;
      *(v11 + 32) = 0;
      v12 = *(v11 + 40);
      if (v12)
      {
        *(v12 + OBJC_IVAR____TtC15HealthRecordsUI25YearRangePickerDataSource_selectedMinYear) = v8;
        *(v12 + OBJC_IVAR____TtC15HealthRecordsUI25YearRangePickerDataSource_selectedMaxYear) = v9;
      }

      v13 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    v14 = swift_unknownObjectWeakLoadStrong();
    if (v14)
    {
      v13 = 0;
      v11 = *(v14 + OBJC_IVAR___HRPDFConfigurationViewController_configurationDataSource);
      *(v11 + 16) = 0;
      *(v11 + 24) = 0;
      *(v11 + 32) = 1;
LABEL_12:
      *(v11 + 33) = v13;
      sub_1D11B2198();
      swift_unknownObjectRelease();
    }
  }

  return [a1 reloadData];
}

char *sub_1D1252CDC()
{
  result = [v0 tableView];
  if (result)
  {
    v2 = result;
    [result reloadData];

    v3 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI29YearRangePickerViewController_dataSource];
    v4 = *(v3 + OBJC_IVAR____TtC15HealthRecordsUI25YearRangePickerDataSource_selectedMinYear);
    v5 = *(v3 + OBJC_IVAR____TtC15HealthRecordsUI25YearRangePickerDataSource_selectedMaxYear);
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v6 = v0[OBJC_IVAR____TtC15HealthRecordsUI29YearRangePickerViewController_selectedRow];
      v7 = *&result[OBJC_IVAR___HRPDFConfigurationViewController_configurationDataSource];
      *(v7 + 16) = v4;
      *(v7 + 24) = v5;
      *(v7 + 32) = 0;
      v8 = *(v7 + 40);
      if (v8)
      {
        *(v8 + OBJC_IVAR____TtC15HealthRecordsUI25YearRangePickerDataSource_selectedMinYear) = v4;
        *(v8 + OBJC_IVAR____TtC15HealthRecordsUI25YearRangePickerDataSource_selectedMaxYear) = v5;
      }

      *(v7 + 33) = v6;
      sub_1D11B2198();

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D1252E74()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for YearRangePickerViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D1252F2C()
{
  v1 = v0;
  sub_1D10CD5A4(0, &qword_1EC60DF40, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_1D138D67C();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_1D10CD5A4(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D139E710;
  v7 = sub_1D11F3C64(*(v0 + OBJC_IVAR____TtC15HealthRecordsUI25YearRangePickerDataSource_selectedMinYear));
  v9 = v8;
  v10 = MEMORY[0x1E69E6158];
  *(v6 + 56) = MEMORY[0x1E69E6158];
  v11 = sub_1D1089930();
  *(v6 + 64) = v11;
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  v12 = sub_1D11F3C64(*(v1 + OBJC_IVAR____TtC15HealthRecordsUI25YearRangePickerDataSource_selectedMaxYear));
  *(v6 + 96) = v10;
  *(v6 + 104) = v11;
  *(v6 + 72) = v12;
  *(v6 + 80) = v13;
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  v14 = sub_1D138D1CC();
  if (*(v6 + 16))
  {
    v15 = sub_1D139019C();

    sub_1D10CD608(v4);
  }

  else
  {
    v15 = v14;
    sub_1D10CD608(v4);
  }

  return v15;
}

uint64_t sub_1D12531A4()
{
  sub_1D1092890(v0 + OBJC_IVAR____TtC15HealthRecordsUI25YearRangePickerDataSource_configuration);

  sub_1D102CC38(v0 + OBJC_IVAR____TtC15HealthRecordsUI25YearRangePickerDataSource_delegate);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for YearRangePickerDataSource()
{
  result = qword_1EC60E220;
  if (!qword_1EC60E220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D125327C()
{
  result = _s13ConfigurationVMa();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D1253348()
{
  result = qword_1EC60E230;
  if (!qword_1EC60E230)
  {
    sub_1D12533A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60E230);
  }

  return result;
}

void sub_1D12533A0()
{
  if (!qword_1EC60E238)
  {
    v0 = sub_1D139052C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60E238);
    }
  }
}

unint64_t sub_1D12533F4()
{
  result = qword_1EC60E240;
  if (!qword_1EC60E240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60E240);
  }

  return result;
}

unint64_t sub_1D1253448()
{
  result = qword_1EC60CA50;
  if (!qword_1EC60CA50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC60CA50);
  }

  return result;
}

uint64_t sub_1D1253494(uint64_t a1)
{
  v13 = a1;
  v2 = sub_1D1390A6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D138FF0C();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1D1390A0C();
  MEMORY[0x1EEE9AC00](v7);
  v12[1] = sub_1D106F934(0, &qword_1EE06B760);
  sub_1D1256C08(0, &qword_1EE06A4D0, MEMORY[0x1E69E8030], MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D139E700;
  sub_1D13909FC();
  v14 = v8;
  sub_1D1256EB4(&qword_1EE06B770, MEMORY[0x1E69E8030]);
  sub_1D1256F1C(0);
  sub_1D1256EB4(&qword_1EE06B7A0, sub_1D1256F1C);
  sub_1D139103C();
  sub_1D138FEEC();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8090], v2);
  v9 = sub_1D1390ABC();
  v10 = v13;
  *(v1 + 16) = v9;
  *(v1 + 24) = v10;
  return v1;
}

uint64_t sub_1D12537B0(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a3 + 24);

  a1(&v6);
}

uint64_t static AccountIconProvider.shared()()
{
  if (qword_1EC608DC0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EC60E248);
  v0 = qword_1EC60E250;

  os_unfair_lock_unlock(&dword_1EC60E248);
  return v0;
}

void AccountIconProvider.placeholder(forTitle:size:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = *(a3 + 8);
  v9 = *(a3 + 16);
  v10 = *(a3 + 24);
  if (qword_1EC608EB8 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EC610468);

  os_unfair_lock_unlock(&dword_1EC610468);
  if (v10)
  {
    v11 = v9 | v8;
    if (v9 | v8 | *&v7)
    {
      if (*&v7 != 1 || v11)
      {
        if (v11)
        {
          v13 = 0;
        }

        else
        {
          v13 = *&v7 == 2;
        }

        if (v13)
        {
          v12 = 48.0;
        }

        else
        {
          v12 = 82.0;
        }
      }

      else
      {
        v12 = 40.0;
      }
    }

    else
    {
      v12 = 28.0;
    }
  }

  else
  {
    v12 = v7;
  }

  swift_beginAccess();
  swift_beginAccess();
  v14 = sub_1D1378CC0(a1, a2, v12);
  swift_endAccess();
  swift_endAccess();

  *a4 = 1;
  *(a4 + 8) = v7;
  *(a4 + 16) = v8;
  *(a4 + 24) = v9;
  *(a4 + 32) = v10;
  if (v10)
  {
    v15 = v9 | v8;
    if (v9 | v8 | *&v7)
    {
      if (*&v7 != 1 || v15)
      {
        if (v15)
        {
          v17 = 0;
        }

        else
        {
          v17 = *&v7 == 2;
        }

        v16 = 82.0;
        if (v17)
        {
          v16 = 48.0;
        }
      }

      else
      {
        v16 = 40.0;
      }
    }

    else
    {
      v16 = 28.0;
    }
  }

  else
  {
    v16 = v7;
  }

  v18 = [v14 scaledToTargetSize_];

  *(a4 + 40) = v18;
}

uint64_t AccountIconProvider.fetchIcon(for:size:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 456) = a2;
  *(v4 + 464) = v3;
  *(v4 + 448) = a1;
  v6 = sub_1D138F0BC();
  *(v4 + 472) = v6;
  *(v4 + 480) = *(v6 - 8);
  *(v4 + 488) = swift_task_alloc();
  *(v4 + 496) = *a3;
  *(v4 + 512) = *(a3 + 16);
  *(v4 + 369) = *(a3 + 24);

  return MEMORY[0x1EEE6DFA0](sub_1D1253B90, 0, 0);
}

{
  *(v4 + 296) = a2;
  *(v4 + 304) = v3;
  *(v4 + 288) = a1;
  v6 = sub_1D138F0BC();
  *(v4 + 312) = v6;
  *(v4 + 320) = *(v6 - 8);
  *(v4 + 328) = swift_task_alloc();
  v7 = sub_1D138D5EC();
  *(v4 + 336) = v7;
  *(v4 + 344) = *(v7 - 8);
  *(v4 + 352) = swift_task_alloc();
  *(v4 + 360) = swift_task_alloc();
  *(v4 + 368) = *a3;
  *(v4 + 384) = *(a3 + 16);
  *(v4 + 225) = *(a3 + 24);

  return MEMORY[0x1EEE6DFA0](sub_1D1255C94, 0, 0);
}

uint64_t sub_1D1253B90()
{
  v2 = *(v0 + 456);
  v1 = *(v0 + 464);
  swift_beginAccess();
  v3 = *(v1 + 24);
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  v5 = swift_task_alloc();
  v5[2] = sub_1D1256A14;
  v5[3] = v4;
  v5[4] = v3;
  sub_1D1257018(0, &qword_1EC60DB98, &qword_1EE06AED0, &type metadata for AccountIcon);
  sub_1D1390A9C();

  v6 = *(v0 + 80);
  if (v6)
  {
    v7 = *(v0 + 369);
    v8 = *(v0 + 512);
    *(v0 + 376) = *(v0 + 496);
    *(v0 + 392) = v8;
    *(v0 + 400) = v7;
    v9 = swift_task_alloc();
    *(v9 + 16) = v0 + 376;
    v10 = swift_task_alloc();
    v10[2] = sub_1D1256AD8;
    v10[3] = v9;
    v10[4] = v6;
    sub_1D1256ADC();
    sub_1D1390A9C();

    v22 = *(v0 + 280);
    v23 = *(v0 + 264);
    v11 = *(v0 + 296);
    v12 = *(v0 + 304);
    sub_1D1256FB8(v0 + 80, &qword_1EC60DB98, &qword_1EE06AED0, &type metadata for AccountIcon, sub_1D1257018);
    swift_endAccess();
    if (v12)
    {
      v13 = *(v0 + 448);
      *v13 = v23;
      *(v13 + 16) = v22;
      *(v13 + 32) = v11;
      *(v13 + 40) = v12;

      v14 = *(v0 + 8);

      return v14();
    }
  }

  else
  {
    sub_1D1256FB8(v0 + 80, &qword_1EC60DB98, &qword_1EE06AED0, &type metadata for AccountIcon, sub_1D1257018);
    swift_endAccess();
  }

  v16 = [*(*(v0 + 464) + 16) healthRecordsStore];
  v17 = [v16 healthStore];

  v18 = [objc_allocWithZone(MEMORY[0x1E69A3F10]) initWithHealthStore_];
  *(v0 + 520) = v18;

  v19 = sub_1D138D5AC();
  *(v0 + 528) = v19;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 432;
  *(v0 + 24) = sub_1D1253F40;
  v20 = swift_continuation_init();
  sub_1D1256A40();
  *(v0 + 208) = v21;
  *(v0 + 152) = MEMORY[0x1E69E9820];
  *(v0 + 160) = 1107296256;
  *(v0 + 168) = sub_1D1121DF8;
  *(v0 + 176) = &block_descriptor_47;
  *(v0 + 184) = v20;
  [v18 fetchAccountWithIdentifier:v19 completion:v0 + 152];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1D1253F40()
{
  v1 = *(*v0 + 48);
  *(*v0 + 536) = v1;
  if (v1)
  {
    v2 = sub_1D12542C8;
  }

  else
  {
    v2 = sub_1D1254050;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1254050()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 369);
  v3 = *(v0 + 512);
  v4 = *(v0 + 432);
  *(v0 + 544) = v4;
  v7 = *(v0 + 496);

  *(v0 + 344) = v7;
  *(v0 + 360) = v3;
  *(v0 + 368) = v2;
  v5 = swift_task_alloc();
  *(v0 + 552) = v5;
  *v5 = v0;
  v5[1] = sub_1D1254134;

  return AccountIconProvider.fetchIcon(for:size:)(v0 + 216, v4, v0 + 344);
}

uint64_t sub_1D1254134()
{

  return MEMORY[0x1EEE6DFA0](sub_1D1254230, 0, 0);
}

uint64_t sub_1D1254230()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 448);

  v3 = *(v0 + 240);
  v4 = *(v0 + 248);
  v5 = *(v0 + 256);
  v6 = *(v0 + 224);
  *v2 = *(v0 + 216);
  *(v2 + 8) = v6;
  *(v2 + 24) = v3;
  *(v2 + 32) = v4;
  *(v2 + 40) = v5;

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1D12542C8()
{
  v25 = v0;
  v1 = *(v0 + 536);
  v2 = *(v0 + 528);
  v3 = *(v0 + 520);
  swift_willThrow();

  sub_1D138F06C();
  v4 = v1;
  v5 = sub_1D138F0AC();
  v6 = sub_1D13907FC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 536);
    v8 = *(v0 + 480);
    v23 = *(v0 + 488);
    v9 = *(v0 + 472);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136446210;
    *(v0 + 440) = v7;
    v12 = v7;
    sub_1D10922EC();
    sub_1D13916AC();
    v13 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_1D139101C();
    swift_unknownObjectRelease();
    v14 = sub_1D139020C();
    v16 = sub_1D11DF718(v14, v15, &v24);

    *(v10 + 4) = v16;
    _os_log_impl(&dword_1D101F000, v5, v6, "Unable to fetch account: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1D38882F0](v11, -1, -1);
    MEMORY[0x1D38882F0](v10, -1, -1);

    (*(v8 + 8))(v23, v9);
  }

  else
  {
    v18 = *(v0 + 480);
    v17 = *(v0 + 488);
    v19 = *(v0 + 472);

    (*(v18 + 8))(v17, v19);
  }

  v20 = *(v0 + 448);
  v20[1] = 0u;
  v20[2] = 0u;
  *v20 = 0u;

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1D125453C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D138FECC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    sub_1D1256C08(0, &qword_1EE06A4D8, MEMORY[0x1E69E7F60], MEMORY[0x1E69E6F90]);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D139E700;
    sub_1D138FEBC();
    v11[2] = v9;
    sub_1D1256EB4(&qword_1EE06B7E0, MEMORY[0x1E69E7F60]);
    sub_1D10CBD98();
    sub_1D1256EB4(&qword_1EE06B7B0, sub_1D10CBD98);
    v10 = sub_1D139103C();
    MEMORY[0x1EEE9AC00](v10);
    v11[-4] = a2;
    v11[-3] = 0;
    v11[-2] = v8;
    sub_1D1390A8C();
    (*(v4 + 8))(v6, v3);
  }

  return result;
}

void sub_1D12547A4(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v19 = sub_1D138FECC();
  v11 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[1];
  v29[0] = *a1;
  v29[1] = v14;
  v30 = a1[2];
  v27[0] = a2;
  v27[1] = a3;
  v27[2] = a4;
  v28 = a5 & 1;
  v15 = *v5;
  v24 = v27;
  v25 = v29;
  sub_1D1256C08(0, &qword_1EE06A4D8, MEMORY[0x1E69E7F60], MEMORY[0x1E69E6F90]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D139E700;
  sub_1D138FEBC();
  v26 = v16;
  sub_1D1256EB4(&qword_1EE06B7E0, MEMORY[0x1E69E7F60]);
  sub_1D10CBD98();
  sub_1D1256EB4(&qword_1EE06B7B0, sub_1D10CBD98);
  v17 = v19;
  sub_1D139103C();
  v20 = sub_1D1256F14;
  v21 = &v23;
  v22 = v15;
  sub_1D1390A8C();
  (*(v11 + 8))(v13, v17);
}

uint64_t sub_1D1254A3C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D138FECC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *v2;
  v18 = a2;
  v19 = a1;
  sub_1D1256C08(0, &qword_1EE06A4D8, MEMORY[0x1E69E7F60], MEMORY[0x1E69E6F90]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D139E700;
  sub_1D138FEBC();
  v20 = v10;
  sub_1D1256EB4(&qword_1EE06B7E0, MEMORY[0x1E69E7F60]);
  sub_1D10CBD98();
  sub_1D1256EB4(&qword_1EE06B7B0, sub_1D10CBD98);
  sub_1D139103C();
  v14 = sub_1D1256EAC;
  v15 = &v17;
  v16 = v9;
  sub_1D1390A8C();
  (*(v6 + 8))(v8, v5);
  v11 = sub_1D138D5EC();
  (*(*(v11 - 8) + 8))(a2, v11);
  return sub_1D1256FB8(a1, &unk_1EC60DB98, &qword_1EE06AED0, &type metadata for AccountIcon, sub_1D1257018);
}

void *sub_1D1254CF8(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v20 = sub_1D138FECC();
  v11 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[1];
  v30 = *a1;
  v31 = v14;
  v32 = a1[2];
  v28[0] = a2;
  v28[1] = a3;
  v28[2] = a4;
  v29 = a5 & 1;
  v15 = *v5;
  v25 = v28;
  v26 = &v30;
  sub_1D1256C08(0, &qword_1EE06A4D8, MEMORY[0x1E69E7F60], MEMORY[0x1E69E6F90]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D139E700;
  sub_1D138FEBC();
  v27 = v16;
  sub_1D1256EB4(&qword_1EE06B7E0, MEMORY[0x1E69E7F60]);
  sub_1D10CBD98();
  sub_1D1256EB4(&qword_1EE06B7B0, sub_1D10CBD98);
  v17 = v20;
  sub_1D139103C();
  v21 = sub_1D1257160;
  v22 = &v24;
  v23 = v15;
  sub_1D1390A8C();
  (*(v11 + 8))(v13, v17);
  return sub_1D10A4F58(v30, *(&v30 + 1), v31, *(&v31 + 1), v32);
}

uint64_t sub_1D1254F98(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D138FECC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *v2;
  v17 = a2;
  v18 = a1;
  sub_1D1256C08(0, &qword_1EE06A4D8, MEMORY[0x1E69E7F60], MEMORY[0x1E69E6F90]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D139E700;
  sub_1D138FEBC();
  v19 = v10;
  sub_1D1256EB4(&qword_1EE06B7E0, MEMORY[0x1E69E7F60]);
  sub_1D10CBD98();
  sub_1D1256EB4(&qword_1EE06B7B0, sub_1D10CBD98);
  sub_1D139103C();
  v13 = sub_1D1256F50;
  v14 = &v16;
  v15 = v9;
  sub_1D1390A8C();
  (*(v6 + 8))(v8, v5);
  sub_1D1256F58(a2, type metadata accessor for BrowseCategory);
  return sub_1D1256FB8(a1, &qword_1EE06AED8, &qword_1EE06AEE0, &type metadata for BrowseIcon, sub_1D1257018);
}

uint64_t sub_1D1255238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D138D5EC();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v8 + 16))(v7, a2);
  sub_1D12570EC(a3, v11, &unk_1EC60DB98, &qword_1EE06AED0, &type metadata for AccountIcon, sub_1D1257018);
  return sub_1D1220390(v11, v7);
}

uint64_t sub_1D1255348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for BrowseCategory();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1D1257084(a2, v7, type metadata accessor for BrowseCategory);
  sub_1D12570EC(a3, v10, &qword_1EE06AED8, &qword_1EE06AEE0, &type metadata for BrowseIcon, sub_1D1257018);
  return sub_1D12204F0(v10, v7);
}

uint64_t sub_1D125542C(unsigned __int8 *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D138D5EC();
  v22 = *(v6 - 8);
  v23 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v24 = a2;
  v25 = v9;
  v11 = *(a1 + 1);
  v10 = *(a1 + 2);
  v12 = *(a1 + 3);
  v13 = a1[32];
  v14 = *(a1 + 5);
  v15 = *v3;
  v29[2] = a2;
  v26 = sub_1D12577DC;
  v27 = v29;
  v28 = v15;
  sub_1D1257018(0, &qword_1EC60DB98, &qword_1EE06AED0, &type metadata for AccountIcon);
  sub_1D1390A9C();
  if (v30)
  {
    v36[0] = v32;
    v36[1] = v33;
    v37 = v34;
    v35[0] = v30;
    v35[1] = v31;
    *&v30 = v25;
    *(&v30 + 1) = v11;
    *&v31 = v10;
    *(&v31 + 1) = v12;
    *&v32 = v13;
    *(&v32 + 1) = v14;
    v16 = v14;
    sub_1D12547A4(&v30, v11, v10, v12, v13);
  }

  else
  {
    sub_1D1256FB8(&v30, &qword_1EC60DB98, &qword_1EE06AED0, &type metadata for AccountIcon, sub_1D1257018);
    v17 = sub_1D109D430(MEMORY[0x1E69E7CC0]);
    sub_1D1256E30();
    swift_allocObject();
    *&v35[0] = sub_1D1253494(v17);
    v18 = swift_allocObject();
    swift_weakInit();
    v21[1] = v3;

    sub_1D1096838(sub_1D1256C8C, v18, v35 + 1);
    sub_1D1096860(sub_1D1256C8C, v18, v36 + 1);

    *&v38 = v25;
    *(&v38 + 1) = v11;
    v39 = v10;
    v40 = v12;
    v41 = v13;
    v42 = v14;
    v19 = v14;
    sub_1D12547A4(&v38, v11, v10, v12, v13);
    (*(v22 + 16))(v8, v24, v23);
    sub_1D12570EC(v35, &v30, &qword_1EE06AED0, &type metadata for AccountIcon, type metadata accessor for UnboundedCache, sub_1D1217CE8);
    sub_1D1254A3C(&v30, v8);
  }

  return sub_1D1256FB8(v35, &qword_1EE06AED0, &type metadata for AccountIcon, type metadata accessor for UnboundedCache, sub_1D1217CE8);
}

uint64_t sub_1D12557C0()
{
  if (qword_1EE069550 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE069558;
  type metadata accessor for AccountIconProvider();
  v1 = swift_allocObject();
  v2 = v0;
  v3 = sub_1D109BEB0(MEMORY[0x1E69E7CC0]);
  sub_1D1256C08(0, qword_1EE06A7F0, sub_1D1256C6C, type metadata accessor for Box);
  swift_allocObject();
  v1[3] = sub_1D1253494(v3);
  v4 = swift_allocObject();
  swift_weakInit();

  sub_1D1096838(sub_1D12577D8, v4, v1 + 4);
  sub_1D1096860(sub_1D12577D8, v4, v1 + 8);

  v1[2] = v2;
  dword_1EC60E248 = 0;
  qword_1EC60E250 = v1;
  return result;
}

void *AccountIconProvider.__allocating_init(brandImageManager:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = sub_1D109BEB0(MEMORY[0x1E69E7CC0]);
  sub_1D1256C08(0, qword_1EE06A7F0, sub_1D1256C6C, type metadata accessor for Box);
  swift_allocObject();
  v2[3] = sub_1D1253494(v3);
  v4 = swift_allocObject();
  swift_weakInit();

  sub_1D1096838(sub_1D1256C8C, v4, v2 + 4);
  sub_1D1096860(sub_1D1256C8C, v4, v2 + 8);

  v2[2] = a1;
  return v2;
}

void *AccountIconProvider.init(brandImageManager:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D109BEB0(MEMORY[0x1E69E7CC0]);
  sub_1D1256C08(0, qword_1EE06A7F0, sub_1D1256C6C, type metadata accessor for Box);
  swift_allocObject();
  v2[3] = sub_1D1253494(v4);
  v5 = swift_allocObject();
  swift_weakInit();

  sub_1D1096838(sub_1D12577D8, v5, v2 + 4);
  sub_1D1096860(sub_1D12577D8, v5, v2 + 8);

  v2[2] = a1;
  return v2;
}

uint64_t sub_1D1255C94()
{
  v58 = v0;
  v1 = *(v0 + 360);
  v2 = *(v0 + 304);
  v3 = [*(v0 + 296) identifier];
  sub_1D138D5CC();

  swift_beginAccess();
  v4 = *(v2 + 24);
  v5 = swift_task_alloc();
  *(v5 + 16) = v1;
  v6 = swift_task_alloc();
  v6[2] = sub_1D12577DC;
  v6[3] = v5;
  v6[4] = v4;
  sub_1D1257018(0, &qword_1EC60DB98, &qword_1EE06AED0, &type metadata for AccountIcon);
  sub_1D1390A9C();

  v7 = *(v0 + 16);
  if (v7)
  {
    *(v0 + 200) = *(v0 + 368);
    v8 = *(v0 + 225);
    v53 = *(v0 + 360);
    v9 = *(v0 + 336);
    v10 = *(v0 + 344);
    *(v0 + 216) = *(v0 + 384);
    *(v0 + 224) = v8;
    v11 = swift_task_alloc();
    *(v11 + 16) = v0 + 200;
    v12 = swift_task_alloc();
    v12[2] = sub_1D1257818;
    v12[3] = v11;
    v12[4] = v7;
    sub_1D1256ADC();
    sub_1D1390A9C();

    v13 = *(v0 + 88);
    v14 = *(v0 + 96);
    v15 = *(v0 + 104);
    v16 = *(v0 + 112);
    v18 = *(v0 + 120);
    v17 = *(v0 + 128);
    sub_1D1256FB8(v0 + 16, &qword_1EC60DB98, &qword_1EE06AED0, &type metadata for AccountIcon, sub_1D1257018);
    swift_endAccess();
    v19 = *(v10 + 8);
    v19(v53, v9);
    if (v17)
    {
      v20 = *(v0 + 288);
      *v20 = v13 & 1;
      *(v20 + 8) = v14;
      *(v20 + 16) = v15;
      *(v20 + 24) = v16;
      *(v20 + 32) = v18 & 1;
      *(v20 + 40) = v17;
LABEL_13:

      v47 = *(v0 + 8);

      return v47();
    }
  }

  else
  {
    v21 = *(v0 + 360);
    v22 = *(v0 + 336);
    v23 = *(v0 + 344);
    sub_1D1256FB8(v0 + 16, &qword_1EC60DB98, &qword_1EE06AED0, &type metadata for AccountIcon, sub_1D1257018);
    swift_endAccess();
    v19 = *(v23 + 8);
    v19(v21, v22);
  }

  *(v0 + 392) = v19;
  if (![*(v0 + 296) hasLogo] || (v24 = objc_msgSend(*(v0 + 296), sel_brand)) == 0)
  {
    v40 = *(v0 + 225);
    v41 = *(v0 + 384);
    v54 = *(v0 + 368);
    v42 = *(v0 + 288);
    v43 = [*(v0 + 296) title];
    v44 = sub_1D139016C();
    v46 = v45;

    v55 = v54;
    v56 = v41;
    v57 = v40;
    AccountIconProvider.placeholder(forTitle:size:)(v44, v46, &v55, v42);

    goto LABEL_13;
  }

  v25 = *(v0 + 225);
  v26 = *(v0 + 304);
  v27 = v24;
  v28 = [v27 externalID];
  v29 = sub_1D139016C();
  v31 = v30;

  *(v0 + 400) = v31;
  v32 = [v27 batchID];
  v33 = sub_1D139016C();
  v35 = v34;

  *(v0 + 408) = v35;
  v36 = *(v26 + 16);
  *(v0 + 416) = v36;
  *(v0 + 136) = v29;
  *(v0 + 144) = v31;
  *(v0 + 152) = v33;
  *(v0 + 160) = v35;
  if (v25 == 1)
  {
    v37 = *(v0 + 368);
    if (*(v0 + 376) | *(v0 + 384) | v37)
    {
      if (v37 == 1 && *(v0 + 376) == 0)
      {
        v38 = 6.0;
        v39 = 40.0;
      }

      else
      {
        v49 = *(v0 + 376) == 0;
        v50 = v37 == 2;
        v38 = 12.0;
        if (v50 && v49)
        {
          v38 = 8.0;
        }

        v39 = 82.0;
        if (v50 && v49)
        {
          v39 = 48.0;
        }
      }
    }

    else
    {
      v39 = 28.0;
      v38 = 5.0;
    }
  }

  else
  {
    v39 = *(v0 + 368);
    v38 = *(v0 + 376);
  }

  v51 = v39 - v38;
  v36;
  v52 = swift_task_alloc();
  *(v0 + 424) = v52;
  *v52 = v0;
  v52[1] = sub_1D12561CC;

  return sub_1D11218A8((v0 + 136), *&v51, 0, 0);
}

uint64_t sub_1D12561CC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 432) = a1;
  *(v3 + 440) = v1;

  if (v1)
  {
    v4 = sub_1D125658C;
  }

  else
  {

    v4 = sub_1D1256304;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D1256304()
{
  v34 = v0;
  v1 = *(v0 + 432);
  v2 = *(v0 + 225);
  if (v1)
  {
    v28 = *(v0 + 225);
    if (v28)
    {
      v3 = *(v0 + 376);
      v4 = *(v0 + 384);
      v5 = *(v0 + 368);
      if (*&v3 | v4 | *&v5)
      {
        v6 = *&v5 == 1;
        v7 = (*&v3 | v4) == 0;
        v8 = *&v5 == 2;
        v9 = 8.0;
        if (!v8 || !v7)
        {
          v9 = 12.0;
        }

        v10 = 82.0;
        if (v8 && v7)
        {
          v10 = 48.0;
        }

        if (v6 && v7)
        {
          v10 = 40.0;
        }

        v11 = 6.0;
        if (!v6 || !v7)
        {
          v11 = v9;
        }
      }

      else
      {
        v11 = 5.0;
        v10 = 28.0;
      }
    }

    else
    {
      v10 = *(v0 + 368);
      v11 = *(v0 + 376);
      v4 = *(v0 + 384);
      v3 = v11;
      v5 = v10;
    }

    v18 = *(v0 + 352);
    v25 = *(v0 + 336);
    v27 = *(v0 + 392);
    v19 = *(v0 + 296);
    v20 = *(v0 + 288);
    v21 = [v1 scaledToTargetSize:v10 - v11 - v11 padding:{v10 - v11 - v11, v11, v11}];
    LOBYTE(v29) = 0;
    *(&v29 + 1) = v5;
    v30 = v3;
    v31 = v4;
    v32 = v28;
    v33 = v21;
    v22 = [v19 identifier];
    sub_1D138D5CC();

    swift_beginAccess();
    sub_1D125542C(&v29, v18);
    swift_endAccess();

    v27(v18, v25);
    *v20 = 0;
    *(v20 + 8) = v5;
    *(v20 + 16) = v3;
    *(v20 + 24) = v4;
    *(v20 + 32) = v28;
    *(v20 + 40) = v21;
  }

  else
  {
    v12 = *(v0 + 384);
    *v26 = *(v0 + 368);
    v13 = *(v0 + 288);
    v14 = [*(v0 + 296) title];
    v15 = sub_1D139016C();
    v17 = v16;

    v29 = *v26;
    v30 = v12;
    LOBYTE(v31) = v2;
    AccountIconProvider.placeholder(forTitle:size:)(v15, v17, &v29, v13);
  }

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1D125658C()
{
  v32 = v0;
  v1 = *(v0 + 440);

  sub_1D138F04C();
  v2 = v1;
  v3 = sub_1D138F0AC();
  v4 = sub_1D13907FC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 440);
    v6 = *(v0 + 320);
    v27 = *(v0 + 328);
    v7 = *(v0 + 312);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v29 = v9;
    *v8 = 136446210;
    *(v0 + 280) = v5;
    v10 = v5;
    sub_1D10922EC();
    sub_1D13916AC();
    v11 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_1D139101C();
    swift_unknownObjectRelease();
    v12 = sub_1D139020C();
    v14 = sub_1D11DF718(v12, v13, &v29);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_1D101F000, v3, v4, "Unable to load image: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1D38882F0](v9, -1, -1);
    MEMORY[0x1D38882F0](v8, -1, -1);

    (*(v6 + 8))(v27, v7);
  }

  else
  {
    v16 = *(v0 + 320);
    v15 = *(v0 + 328);
    v17 = *(v0 + 312);

    (*(v16 + 8))(v15, v17);
  }

  v18 = *(v0 + 225);
  v19 = *(v0 + 384);
  v28 = *(v0 + 368);
  v20 = *(v0 + 288);
  v21 = [*(v0 + 296) title];
  v22 = sub_1D139016C();
  v24 = v23;

  v29 = v28;
  v30 = v19;
  v31 = v18;
  AccountIconProvider.placeholder(forTitle:size:)(v22, v24, &v29, v20);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t AccountIconProvider.__deallocating_deinit()
{
  sub_1D1256F58(v0 + 24, sub_1D1256CE8);

  return swift_deallocClassInstance();
}

uint64_t sub_1D12568CC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a2[1];
  sub_1D1257084(a3, v6, sub_1D12576A4);

  return sub_1D1220164(v6, v3, v4);
}

void sub_1D1256938(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a3 + 40);
  if (v8)
  {
    v9 = *(a3 + 32);
    v10 = *(a3 + 24);
    v14 = *a3 & 1;
    v15 = *(a3 + 8);
    v16 = v10;
    v17 = v9 & 1;
    v18 = v8;
    v11 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *a1;
    sub_1D11DAA88(&v14, v4, v5, v6, v7, isUniquelyReferenced_nonNull_native);
    *a1 = v13;
  }

  else
  {
    sub_1D12F5114(*a2, *(a2 + 8), v6, v7, &v14);
  }
}

void sub_1D1256A40()
{
  if (!qword_1EC60E258)
  {
    sub_1D106F934(255, &qword_1EC609A00);
    sub_1D10922EC();
    v0 = sub_1D139061C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60E258);
    }
  }
}

void sub_1D1256ADC()
{
  if (!qword_1EC60E260)
  {
    v0 = sub_1D1390F3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60E260);
    }
  }
}

void *sub_1D1256B2C(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = a3[4];
  if (v8 >> 1 == 0xFFFFFFFF)
  {
    sub_1D12F5400(*a2, *(a2 + 8), v6, v7, &v16);
    return sub_1D10A4F58(v16, *(&v16 + 1), v17, v18, v19);
  }

  else
  {
    v10 = a3[5];
    v12 = a3[2];
    v11 = a3[3];
    v13 = a3[1];
    *&v16 = *a3;
    *(&v16 + 1) = v13;
    v17 = v12;
    v18 = v11;
    v19 = v8;
    v20 = v10;
    sub_1D1257168(v16, v13, v12, v11, v8, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *a1;
    result = sub_1D11DB694(&v16, v4, v5, v6, v7, isUniquelyReferenced_nonNull_native);
    *a1 = v15;
  }

  return result;
}

void sub_1D1256C08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D1256D08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D138D5EC();
    sub_1D1217CE8(255, &qword_1EE06AED0, &type metadata for AccountIcon, type metadata accessor for UnboundedCache);
    v8 = v7;
    v9 = sub_1D1256EB4(&qword_1EE06B4F8, MEMORY[0x1E69695A8]);
    v10 = a3(a1, v6, v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1D1256E30()
{
  if (!qword_1EC60E270)
  {
    sub_1D1217CE8(255, &qword_1EC60E278, &type metadata for AccountIcon, MEMORY[0x1E69E5E28]);
    v0 = type metadata accessor for Box();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60E270);
    }
  }
}

uint64_t sub_1D1256EB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D1256F58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1256FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1D1257018(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1D1217CE8(255, a3, a4, type metadata accessor for UnboundedCache);
    v5 = sub_1D1390F3C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1D1257084(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D12570EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void *sub_1D1257168(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a5 >> 1 != 0xFFFFFFFF)
  {
    return sub_1D10A00EC(a1, a2, a3, a4, a5, a6);
  }

  return a1;
}

uint64_t sub_1D12571D4(uint64_t a1, uint64_t a2, double a3)
{
  v7 = sub_1D138FECC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = a1;
  v22 = a3;
  v11 = *v3;
  v19 = &v22;
  v20 = &v23;
  sub_1D1256C08(0, &qword_1EE06A4D8, MEMORY[0x1E69E7F60], MEMORY[0x1E69E6F90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D139E700;
  sub_1D138FEBC();
  v21 = v12;
  sub_1D1256EB4(&qword_1EE06B7E0, MEMORY[0x1E69E7F60]);
  sub_1D10CBD98();
  sub_1D1256EB4(&qword_1EE06B7B0, sub_1D10CBD98);
  sub_1D139103C();
  v15 = a2;
  v16 = &v18;
  v17 = v11;
  sub_1D1390A8C();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1D1257424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1D138FECC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22[0] = a2;
  v22[1] = a3;
  v11 = *v3;
  v19 = v22;
  v20 = a1;
  sub_1D1256C08(0, &qword_1EE06A4D8, MEMORY[0x1E69E7F60], MEMORY[0x1E69E6F90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D139E700;
  sub_1D138FEBC();
  v21 = v12;
  sub_1D1256EB4(&qword_1EE06B7E0, MEMORY[0x1E69E7F60]);
  sub_1D10CBD98();
  sub_1D1256EB4(&qword_1EE06B7B0, sub_1D10CBD98);
  sub_1D139103C();
  v15 = sub_1D125769C;
  v16 = &v18;
  v17 = v11;
  sub_1D1390A8C();
  (*(v8 + 8))(v10, v7);
  return sub_1D1256F58(a1, sub_1D12576A4);
}

uint64_t sub_1D1257708(uint64_t a1, uint64_t (*a2)(void *, double))
{
  v4 = **(v2 + 16);
  v5 = **(v2 + 24);
  v6 = v5;
  return a2(v5, v4);
}

uint64_t sub_1D1257760()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  swift_beginAccess();
  v1(v2 + 24);
  return swift_endAccess();
}

uint64_t type metadata accessor for DownloadDetailsDataSource()
{
  result = qword_1EC60E2A8;
  if (!qword_1EC60E2A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D12578F8(uint64_t a1)
{
  v1 = *(a1 + qword_1EC60E280);
  sub_1D1257FAC(v1);
}

uint64_t sub_1D125794C(void *a1, uint64_t a2)
{
  *(v2 + qword_1EC60E298) = 0;
  *(v2 + qword_1EC60E2A0) = 0;
  *(v2 + qword_1EC60E280) = a1;
  *(v2 + qword_1EC60E288) = a2;
  *(v2 + qword_1EC60E290) = 0;
  *(swift_allocObject() + 16) = a1;
  v4 = a1;

  v5 = sub_1D138EA8C();

  sub_1D1257FAC(v4);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = type metadata accessor for IngestionStateChangeListener();
  v8 = objc_allocWithZone(v7);
  v15 = 0;
  v16 = 1;
  sub_1D12590D8();
  swift_allocObject();

  *&v8[OBJC_IVAR____TtC15HealthRecordsUI28IngestionStateChangeListener_changePublisher] = sub_1D138F6EC();
  v9 = &v8[OBJC_IVAR____TtC15HealthRecordsUI28IngestionStateChangeListener_handler];
  *v9 = sub_1D12590D0;
  v9[1] = v6;
  v14.receiver = v8;
  v14.super_class = v7;
  v10 = objc_msgSendSuper2(&v14, sel_init);

  v11 = *(v5 + qword_1EC60E298);
  *(v5 + qword_1EC60E298) = v10;

  v12 = sub_1D1258728();

  *(v5 + qword_1EC60E2A0) = v12;

  return v5;
}

uint64_t sub_1D1257B58(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1D138E6BC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - v9;
  if ([a3 state] == 5)
  {
    sub_1D138E60C();
    sub_1D138E5FC();
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    sub_1D138E60C();
  }

  v11 = sub_1D138E6AC();
  (*(v5 + 8))(v10, v4);
  return v11;
}

uint64_t sub_1D1257CA4(uint64_t a1)
{
  v2 = sub_1D138FECC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D138FF0C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = *(result + qword_1EC60E290);
    *(result + qword_1EC60E290) = a1;
    if (v12 != a1)
    {
      sub_1D108310C();
      v13 = sub_1D1390A7C();
      aBlock[4] = sub_1D1259170;
      aBlock[5] = v11;
      v16 = v13;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D10CBD3C;
      aBlock[3] = &block_descriptor_48;
      v14 = _Block_copy(aBlock);

      sub_1D138FEEC();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1D1259070(&qword_1EE06B7E0, MEMORY[0x1E69E7F60]);
      sub_1D1259190(0, &qword_1EE06B7C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
      sub_1D1080CD4();
      sub_1D139103C();
      v15 = v16;
      MEMORY[0x1D3886400](0, v9, v5, v14);
      _Block_release(v14);

      (*(v3 + 8))(v5, v2);
      (*(v7 + 8))(v9, v6);
    }
  }

  return result;
}

uint64_t sub_1D1257FAC(void *a1)
{
  v3 = sub_1D138FF3C();
  v73 = *(v3 - 8);
  v74 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v72 = (&v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v1 + qword_1EC60E280);
  v76 = v1;
  *(v1 + qword_1EC60E280) = a1;
  v6 = a1;

  v7 = sub_1D139016C();
  v9 = v8;
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  v10 = sub_1D138D1CC();
  v68 = v11;
  v69 = v10;
  v67 = v6;
  v12 = [v6 displayableLastDownloadDate];
  v13 = sub_1D139016C();
  v15 = v14;

  sub_1D1086E1C();
  v16 = swift_allocObject();
  v75 = xmmword_1D139E710;
  *(v16 + 16) = xmmword_1D139E710;
  v70 = v7;
  v71 = v9;
  *(v16 + 32) = v7;
  *(v16 + 40) = v9;
  strcpy((v16 + 48), "LastDownloaded");
  *(v16 + 63) = -18;

  v17 = sub_1D139044C();

  v18 = HKUIJoinStringsForAutomationIdentifier();

  if (v18)
  {
    v19 = sub_1D139016C();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  v22 = type metadata accessor for TitleSubtitleDetailItem(0);
  v23 = swift_allocObject();
  sub_1D138D5DC();
  v24 = v68;
  v23[2] = v69;
  v23[3] = v24;
  v23[4] = v13;
  v23[5] = v15;
  v25 = MEMORY[0x1E69E7CC0];
  v23[6] = 0;
  v23[7] = v25;
  v23[8] = v19;
  v23[9] = v21;
  if (*(v76 + qword_1EC60E290) == 3)
  {
    v26 = sub_1D138D1CC();
    v28 = v27;
    v29 = sub_1D138D1CC();
    v31 = v30;
    v32 = swift_allocObject();
    *(v32 + 16) = v75;
    v33 = v71;
    *(v32 + 32) = v70;
    *(v32 + 40) = v33;
    *(v32 + 48) = 0x737574617453;
    *(v32 + 56) = 0xE600000000000000;
    v34 = sub_1D139044C();

    v35 = HKUIJoinStringsForAutomationIdentifier();

    if (v35)
    {
      v36 = sub_1D139016C();
      v38 = v37;
    }

    else
    {
      v36 = 0;
      v38 = 0;
    }

    v53 = type metadata accessor for TitleSubtitleDetailItemWithSpinner(0);
    v54 = swift_allocObject();
    sub_1D138D5DC();
    v54[2] = v26;
    v54[3] = v28;
    v54[4] = v29;
    v54[5] = v31;
    v54[6] = v36;
    v54[7] = v38;
    v78 = v53;
    v79 = sub_1D1259070(&qword_1EC60B260, type metadata accessor for TitleSubtitleDetailItemWithSpinner);
    *&v77 = v54;
  }

  else
  {
    v39 = sub_1D138D1CC();
    v41 = v40;
    v42 = [v67 displayableStatus];
    v43 = sub_1D139016C();
    v45 = v44;

    v46 = swift_allocObject();
    *(v46 + 16) = v75;
    v47 = v71;
    *(v46 + 32) = v70;
    *(v46 + 40) = v47;
    *(v46 + 48) = 0x737574617453;
    *(v46 + 56) = 0xE600000000000000;
    v48 = sub_1D139044C();

    v49 = HKUIJoinStringsForAutomationIdentifier();

    if (v49)
    {
      v50 = sub_1D139016C();
      v52 = v51;
    }

    else
    {
      v50 = 0;
      v52 = 0;
    }

    v55 = swift_allocObject();
    sub_1D138D5DC();
    v55[2] = v39;
    v55[3] = v41;
    v55[4] = v43;
    v55[5] = v45;
    v55[6] = 0;
    v55[7] = MEMORY[0x1E69E7CC0];
    v55[8] = v50;
    v55[9] = v52;
    v78 = v22;
    v79 = sub_1D1259070(&qword_1EC60A700, type metadata accessor for TitleSubtitleDetailItem);
    *&v77 = v55;
  }

  sub_1D102CC18(&v77, v80);
  sub_1D108310C();
  v56 = sub_1D1390A7C();
  v58 = v72;
  v57 = v73;
  *v72 = v56;
  v59 = v74;
  (*(v57 + 104))(v58, *MEMORY[0x1E69E8020], v74);
  v60 = sub_1D138FF5C();
  result = (*(v57 + 8))(v58, v59);
  if (v60)
  {
    sub_1D1259190(0, &qword_1EC60B640, sub_1D1159FC8, MEMORY[0x1E69E6F90]);
    v62 = swift_allocObject();
    *(v62 + 16) = v75;
    *(v62 + 56) = v22;
    *(v62 + 64) = sub_1D1259070(&qword_1EC60AFF8, type metadata accessor for TitleSubtitleDetailItem);
    *(v62 + 32) = v23;
    v63 = v81;
    v64 = v82;
    v65 = __swift_project_boxed_opaque_existential_1Tm(v80, v81);
    *(v62 + 96) = v63;
    *(v62 + 104) = *(v64 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v62 + 72));
    (*(*(v63 - 8) + 16))(boxed_opaque_existential_1, v65, v63);

    sub_1D138E5AC();

    return __swift_destroy_boxed_opaque_existential_1Tm(v80);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D1258728()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1D138F0BC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + qword_1EC60E298);
  if (v7)
  {
    v8 = *(*(v1 + qword_1EC60E288) + 16);
    v9 = v7;
    v10 = [v8 healthStore];
    v11 = [objc_allocWithZone(MEMORY[0x1E69A3F38]) initWithHealthStore_];

    [v11 addIngestionStateListener_];
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = v9;
    type metadata accessor for CancellationToken();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = sub_1D12590B8;
    *(result + 32) = v12;
  }

  else
  {
    sub_1D138F06C();
    v14 = sub_1D138F0AC();
    v15 = sub_1D13907EC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v21[0] = v17;
      v21[1] = v2;
      *v16 = 136446210;
      swift_getMetatypeMetadata();
      v18 = sub_1D13901EC();
      v20 = sub_1D11DF718(v18, v19, v21);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_1D101F000, v14, v15, "[%{public}s]: ingestionStateChangeListener is nil", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x1D38882F0](v17, -1, -1);
      MEMORY[0x1D38882F0](v16, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
    return 0;
  }

  return result;
}

uint64_t sub_1D12589CC()
{
}

uint64_t sub_1D1258A2C()
{
  v1 = *(v0 + qword_1EC60E2A0);
  if (v1)
  {
    swift_beginAccess();
    if ((*(v1 + 16) & 1) == 0)
    {
      *(v1 + 16) = 1;
      swift_beginAccess();
      v2 = *(v1 + 24);

      v2(v3);
    }
  }

  v4 = sub_1D138EABC();

  return v4;
}

uint64_t sub_1D1258B28()
{
  sub_1D1258A2C();

  return swift_deallocClassInstance();
}

uint64_t sub_1D1258BC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_1D138D5EC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D138F3FC();
  MEMORY[0x1EEE9AC00](v11 - 8);
  if (sub_1D139016C() == a1 && v12 == a2)
  {

    goto LABEL_13;
  }

  v14 = sub_1D139162C();

  if (v14)
  {
LABEL_13:
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    sub_1D138D1CC();
    sub_1D138F37C();
    v18 = sub_1D138DE3C();
    swift_allocObject();
    v19 = sub_1D138DE1C();
    a3[3] = v18;
    result = sub_1D1259070(&qword_1EC60B610, MEMORY[0x1E69A34C8]);
    a3[4] = result;
    *a3 = v19;
    return result;
  }

  if (sub_1D139016C() == a1 && v15 == a2)
  {
  }

  else
  {
    v17 = sub_1D139162C();

    if ((v17 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  if ([*(v3 + qword_1EC60E280) state] != 5)
  {
LABEL_21:
    a3[3] = sub_1D138DF7C();
    a3[4] = sub_1D1259070(&qword_1EC60C2A0, MEMORY[0x1E69A35B8]);
    __swift_allocate_boxed_opaque_existential_1(a3);
    return sub_1D138DF6C();
  }

  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  v24[0] = 0x74497265746F6F46;
  v24[1] = 0xEB000000005F6D65;
  sub_1D138D5DC();
  v21 = sub_1D138D59C();
  v23 = v22;
  (*(v8 + 8))(v10, v7);
  MEMORY[0x1D3885C10](v21, v23);

  a3[3] = sub_1D138EA2C();
  a3[4] = sub_1D1259070(&qword_1EC60A048, MEMORY[0x1E69A3798]);
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_1D138EA1C();
}

uint64_t sub_1D1259070(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D12590D8()
{
  if (!qword_1EE06A730)
  {
    sub_1D1259190(255, &unk_1EE06A5D8, type metadata accessor for HKClinicalIngestionState, MEMORY[0x1E69E6720]);
    v0 = sub_1D138F6DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06A730);
    }
  }
}

uint64_t block_copy_helper_48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1D1259190(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_1D12591F4()
{
  result = [v0 medicalRecords];
  if (result)
  {
    v2 = result;
    sub_1D106F934(0, &qword_1EE06B0E0);
    v3 = sub_1D139045C();

    if (v3 >> 62)
    {
      v4 = sub_1D13910DC();
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v4 < 2)
    {
      return 0;
    }

    else
    {
      if (qword_1EC608CC0 != -1)
      {
        swift_once();
      }

      sub_1D138D1CC();
      sub_1D10F48A8();
      v5 = swift_allocObject();
      v6 = MEMORY[0x1E69E6530];
      *(v5 + 16) = xmmword_1D139E700;
      v7 = MEMORY[0x1E69E65A8];
      *(v5 + 56) = v6;
      *(v5 + 64) = v7;
      *(v5 + 32) = v4;
      v8 = sub_1D139013C();

      return v8;
    }
  }

  return result;
}

uint64_t sub_1D1259394(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1D1247E34(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1D125A038(v6);
  return sub_1D13912BC();
}

id sub_1D1259410()
{
  result = [v0 medicalRecords];
  if (result)
  {
    v3 = result;
    sub_1D106F934(0, &qword_1EE06B0E0);
    v4 = sub_1D139045C();

    v73 = MEMORY[0x1E69E7CC0];
    if (v4 >> 62)
    {
      goto LABEL_62;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D13910DC())
    {
      v6 = MEMORY[0x1E69E7CC0];
      if (!i)
      {
        break;
      }

      v7 = 0;
      v1 = (v4 & 0xC000000000000001);
      v8 = v4 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v1)
        {
          v9 = MEMORY[0x1D3886B70](v7, v4);
        }

        else
        {
          if (v7 >= *(v8 + 16))
          {
            goto LABEL_59;
          }

          v9 = *(v4 + 8 * v7 + 32);
        }

        v10 = v9;
        v11 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (sub_1D1390D8C())
        {
        }

        else
        {
          sub_1D13912AC();
          sub_1D13912EC();
          v8 = v4 & 0xFFFFFFFFFFFFFF8;
          sub_1D13912FC();
          sub_1D13912BC();
        }

        ++v7;
        if (v11 == i)
        {
          v6 = MEMORY[0x1E69E7CC0];
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      ;
    }

LABEL_17:

    v73 = sub_1D11131F4(v12);
    sub_1D1259394(&v73);

    v13 = v73;
    if (v73 < 0 || (v73 & 0x4000000000000000) != 0)
    {
      v69 = v73;
      v14 = sub_1D13910DC();
      v13 = v69;
    }

    else
    {
      v14 = *(v73 + 16);
    }

    v4 = 0xD00000000000001FLL;
    if (v14)
    {
      v15 = v13;
      v73 = v6;
      sub_1D10FDBA4(0, v14 & ~(v14 >> 63), 0);
      if (v14 < 0)
      {
        __break(1u);
        goto LABEL_65;
      }

      v16 = 0;
      v1 = v73;
      v17 = v15;
      v72 = v15 & 0xC000000000000001;
      v70 = v14;
      v71 = v15;
      do
      {
        if (v72)
        {
          v18 = MEMORY[0x1D3886B70](v16, v17);
        }

        else
        {
          if ((v16 & 0x8000000000000000) != 0)
          {
            goto LABEL_60;
          }

          if (v16 >= *(v17 + 16))
          {
            goto LABEL_61;
          }

          v18 = *(v17 + 8 * v16 + 32);
        }

        v19 = v18;
        v20 = [v18 meaningfulDateDisplayStringWithPreferredForm:1 showTime:0];
        v21 = sub_1D139016C();
        v23 = v22;

        if (qword_1EC608CD0 != -1)
        {
          swift_once();
        }

        sub_1D138D1CC();
        sub_1D10F48A8();
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_1D139E710;
        v25 = [v19 preferredDisplayName];
        v4 = sub_1D139016C();
        v27 = v26;

        v28 = MEMORY[0x1E69E6158];
        *(v24 + 56) = MEMORY[0x1E69E6158];
        v29 = sub_1D1089930();
        *(v24 + 32) = v4;
        *(v24 + 40) = v27;
        *(v24 + 96) = v28;
        *(v24 + 104) = v29;
        *(v24 + 64) = v29;
        *(v24 + 72) = v21;
        *(v24 + 80) = v23;
        v30 = sub_1D139013C();
        v32 = v31;

        v73 = v1;
        v34 = v1[2];
        v33 = v1[3];
        if (v34 >= v33 >> 1)
        {
          sub_1D10FDBA4((v33 > 1), v34 + 1, 1);
          v1 = v73;
        }

        ++v16;
        v1[2] = v34 + 1;
        v35 = &v1[2 * v34];
        v35[4] = v30;
        v35[5] = v32;
        v17 = v71;
      }

      while (v70 != v16);
    }

    else
    {

      v1 = MEMORY[0x1E69E7CC0];
    }

    v15 = v1[2];
    if (v15 > 1)
    {
      if (v15 == 2)
      {
        if (qword_1EC608CD0 == -1)
        {
LABEL_54:
          v39 = sub_1D138D1CC();
          sub_1D10F48A8();
          v60 = swift_allocObject();
          *(v60 + 16) = xmmword_1D139E710;
          v61 = MEMORY[0x1E69E6158];
          *(v60 + 56) = MEMORY[0x1E69E6158];
          v62 = sub_1D1089930();
          *(v60 + 64) = v62;
          v63 = v1[2];
          if (v63)
          {
            v64 = v62;
            v65 = v1[5];
            *(v60 + 32) = v1[4];
            *(v60 + 40) = v65;
            *(v60 + 96) = v61;
            *(v60 + 104) = v64;
            if (v63 != 1)
            {
              v67 = v1[6];
              v66 = v1[7];

              *(v60 + 72) = v67;
              *(v60 + 80) = v66;
              goto LABEL_57;
            }

            goto LABEL_75;
          }

          __break(1u);
          goto LABEL_73;
        }

LABEL_71:
        swift_once();
        goto LABEL_54;
      }

      if (v15 == 3)
      {
        if (qword_1EC608CD0 == -1)
        {
LABEL_44:
          v39 = sub_1D138D1CC();
          sub_1D10F48A8();
          v40 = swift_allocObject();
          *(v40 + 16) = xmmword_1D139EAB0;
          v41 = MEMORY[0x1E69E6158];
          *(v40 + 56) = MEMORY[0x1E69E6158];
          v42 = sub_1D1089930();
          *(v40 + 64) = v42;
          v43 = v1[2];
          if (v43)
          {
            v44 = v42;
            v45 = v1[5];
            *(v40 + 32) = v1[4];
            *(v40 + 40) = v45;
            *(v40 + 96) = v41;
            *(v40 + 104) = v44;
            if (v43 != 1)
            {
              v46 = v1[7];
              *(v40 + 72) = v1[6];
              *(v40 + 80) = v46;
              *(v40 + 136) = v41;
              *(v40 + 144) = v44;
              if (v43 >= 3)
              {
                v48 = v1[8];
                v47 = v1[9];

                *(v40 + 112) = v48;
                *(v40 + 120) = v47;
                goto LABEL_57;
              }

              goto LABEL_76;
            }

            goto LABEL_74;
          }

          __break(1u);
          goto LABEL_71;
        }

LABEL_69:
        swift_once();
        goto LABEL_44;
      }
    }

    else
    {
      if (!v15)
      {

        return 0;
      }

      if (v15 == 1)
      {
        if (qword_1EC608CD0 == -1)
        {
LABEL_39:
          sub_1D138D1CC();
          sub_1D10F48A8();
          v36 = swift_allocObject();
          *(v36 + 16) = xmmword_1D139E700;
          *(v36 + 56) = MEMORY[0x1E69E6158];
          *(v36 + 64) = sub_1D1089930();
          if (v1[2])
          {
            v38 = v1[4];
            v37 = v1[5];

            *(v36 + 32) = v38;
            *(v36 + 40) = v37;
LABEL_57:
            v68 = sub_1D139013C();

            return v68;
          }

          __break(1u);
          goto LABEL_69;
        }

LABEL_67:
        swift_once();
        goto LABEL_39;
      }
    }

    if (qword_1EC608CD0 == -1)
    {
LABEL_49:
      v39 = sub_1D138D1CC();
      v49 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      sub_1D10F48A8();
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_1D139EAB0;
      v51 = MEMORY[0x1E69E6158];
      *(v50 + 56) = MEMORY[0x1E69E6158];
      v52 = sub_1D1089930();
      *(v50 + 64) = v52;
      v53 = v1[2];
      if (v53)
      {
        v54 = v52;
        v55 = v1[5];
        *(v50 + 32) = v1[4];
        *(v50 + 40) = v55;
        *(v50 + 96) = v51;
        *(v50 + 104) = v54;
        if (v53 != 1)
        {
          v57 = v1[6];
          v56 = v1[7];

          *(v50 + 72) = v57;
          *(v50 + 80) = v56;
          *(v50 + 136) = sub_1D106F934(0, &qword_1EE06B6C0);
          *(v50 + 144) = sub_1D11F6290();
          *(v50 + 112) = v49;
          v58 = v49;
          v59 = sub_1D139013C();

          return v59;
        }

LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);

        __break(1u);
        return result;
      }

      __break(1u);
      goto LABEL_67;
    }

LABEL_65:
    swift_once();
    goto LABEL_49;
  }

  return result;
}

id sub_1D1259D5C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1D1259410();
  v7 = v6;

  if (v7)
  {
    v8 = sub_1D139012C();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_1D1259DE8()
{
  v1 = v0;
  v2 = sub_1D138F0BC();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 mainRecord];
  if (v7)
  {
    v8 = v7;
    sub_1D138EFEC();
    swift_allocObject();
    sub_1D138EFDC();
    sub_1D138EFBC();
    v10 = v9;

    if (v10)
    {

      return 1;
    }
  }

  else
  {
    sub_1D138F06C();
    v12 = v1;
    v13 = sub_1D138F0AC();
    v14 = sub_1D13907FC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = v23;
      *v15 = 136446210;
      v16 = v12;
      v17 = [v16 description];
      v18 = sub_1D139016C();
      v20 = v19;

      v21 = sub_1D11DF718(v18, v20, &v24);

      *(v15 + 4) = v21;
      _os_log_impl(&dword_1D101F000, v13, v14, "%{public}s: no mainRecord on SCD group, cannot determine existing pass in Wallet", v15, 0xCu);
      v22 = v23;
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x1D38882F0](v22, -1, -1);
      MEMORY[0x1D38882F0](v15, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }

  return 0;
}