void LabelPlaceholder.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = 0;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a7;
  *(a9 + 56) = a6;
  *(a9 + 96) = 0;
  *(a9 + 104) = a8 & 1;
}

void LabelPlaceholder.init(attributedText:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:)(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v15 = [objc_opt_self() preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] compatibleWithTraitCollection:0];
  v16 = a2;

  *a8 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithAttributedString_];
  *(a8 + 8) = 0;
  *(a8 + 16) = 1;
  *(a8 + 24) = v16;
  *(a8 + 32) = a3;
  *(a8 + 40) = a4;
  *(a8 + 48) = a6;
  *(a8 + 56) = a5;
  *(a8 + 96) = 0;

  *(a8 + 104) = a7 & 1;
}

__n128 LabelPlaceholder.layoutTextView.getter@<Q0>(uint64_t *a1@<X8>)
{
  sub_1BAD3C934(v1, v9);
  v3 = type metadata accessor for _LabelPlaceholderLayoutTextView();
  v4 = swift_allocObject();
  v5 = v9[5];
  *(v4 + 80) = v9[4];
  *(v4 + 96) = v5;
  result = v9[6];
  v7 = v9[1];
  *(v4 + 16) = v9[0];
  *(v4 + 32) = v7;
  v8 = v9[3];
  *(v4 + 48) = v9[2];
  *(v4 + 64) = v8;
  *(v4 + 112) = result;
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0u;
  *(v4 + 160) = 0;
  a1[3] = v3;
  a1[4] = &off_1F38E9328;
  *a1 = v4;
  return result;
}

Swift::Bool __swiftcall LabelPlaceholder.isTruncated(whenFitting:)(CGSize whenFitting)
{
  height = whenFitting.height;
  width = whenFitting.width;
  v4 = *v1;
  if (*(v1 + 16))
  {
    if (!v4)
    {
      return v4;
    }

    v4 = [v4 length];
    if (!v4)
    {
      return v4;
    }

    goto LABEL_10;
  }

  v5 = *(v1 + 8);
  if (!v5)
  {
    LOBYTE(v4) = 0;
    return v4;
  }

  if ((v5 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v5) & 0xF;
  }

  else
  {
    v4 &= 0xFFFFFFFFFFFFuLL;
  }

  if (v4)
  {
LABEL_10:
    if (width == 0.0 && height == 0.0)
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      v7 = [objc_opt_self() system];
      v8 = [v7 preferredContentSizeCategory];

      v9 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
      v10 = LabelPlaceholder.willTextTruncate(fitting:with:)(__PAIR128__(*&height, *&width), v9);

      LOBYTE(v4) = v10;
    }
  }

  return v4;
}

double LabelPlaceholder.measurements(fitting:in:)(void *a1, double a2, double a3)
{
  v5 = [a1 traitCollection];
  *&v6 = LabelPlaceholder.measure(toFit:with:)(__PAIR128__(*&a3, *&a2), v5);

  return v6;
}

double sub_1BAD3B670(void *a1, double a2, double a3)
{
  v5 = [a1 traitCollection];
  *&v6 = LabelPlaceholder.measure(toFit:with:)(__PAIR128__(*&a3, *&a2), v5);

  return v6;
}

BOOL sub_1BAD3B6EC()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (*(v0 + 32))
  {
    if (v1)
    {
      v2 = [v1 length] == 0;
    }

    else
    {
      v2 = 1;
    }
  }

  else
  {
    v3 = *(v0 + 24);
    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = v1 & 0xFFFFFFFFFFFFLL;
    }

    v5 = v4 == 0;
    if (v3)
    {
      v2 = v5;
    }

    else
    {
      v2 = 1;
    }
  }

  return !v2;
}

uint64_t sub_1BAD3B778(uint64_t a1)
{
  swift_beginAccess();
  sub_1BAD3C9B4(v1 + 40, v10);
  if (v14)
  {
    v5 = v11;
    v6 = v12;
    *v4 = *v10;
    *&v4[16] = *&v10[16];
    v7 = a1;
    v8 = v13;
    v9 = 1;
  }

  else
  {
    *v4 = *v10;
    *&v4[8] = *&v10[8];
    *&v4[24] = a1;
    *&v5 = v11;
    v9 = 0;
  }

  swift_beginAccess();
  sub_1BAD3CA10(v4, v1 + 40);
  return swift_endAccess();
}

uint64_t sub_1BAD3B830(uint64_t a1)
{
  swift_beginAccess();
  sub_1BAD3C9B4(v1 + 40, &v10);
  if (v14)
  {
    *&v5[16] = *&v11[16];
    v7 = *(&v12 + 1);
    v4 = v10;
    *v5 = *v11;
    v8 = v13;
    v6 = a1;
    v9 = 1;
  }

  else
  {
    v4 = v10;
    *v5 = a1;
    *&v5[8] = *&v11[8];
    v9 = 0;
  }

  swift_beginAccess();
  sub_1BAD3CA10(&v4, v1 + 40);
  return swift_endAccess();
}

uint64_t sub_1BAD3B8E8()
{
  swift_beginAccess();
  sub_1BAD3C9B4(v0 + 40, &v10);
  if ((v15 & 1) == 0)
  {
    return v10;
  }

  v8[2] = v12;
  v8[3] = v13;
  v9 = v14;
  v8[0] = v10;
  v8[1] = v11;
  v1 = *(&v11 + 1);
  v2 = v12;
  __swift_project_boxed_opaque_existential_1(v8, *(&v11 + 1));
  v3 = [objc_opt_self() system];
  v4 = [v3 preferredContentSizeCategory];

  v5 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
  v6 = (*(v2 + 8))(v5, v1, v2);

  sub_1BAD31F30(v8);
  return v6;
}

void sub_1BAD3BA20(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  sub_1BAD3C9B4(v1 + 40, v22);
  if (v25)
  {
    *v21 = *&v22[32];
    *&v21[16] = v23;
    *&v21[32] = v24;
    v19 = *v22;
    v20 = *&v22[16];
    v4 = [objc_opt_self() system];
    v5 = [v4 preferredContentSizeCategory];

    v6 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
    v7 = [objc_opt_self() preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] compatibleWithTraitCollection:0];
    v8 = *(&v20 + 1);
    v9 = *v21;
    __swift_project_boxed_opaque_existential_1(&v19, *(&v20 + 1));
    v10 = (*(v9 + 8))(v6, v8, v9);

    if (a1)
    {
      v11 = *&v21[24];
      v13 = *&v21[8];
      sub_1BAD31F30(&v19);

      v15 = a1;
      v17 = v11;
      v16 = v13;
      v18 = 0;
      swift_beginAccess();
      sub_1BAD3CA10(&v15, v2 + 40);
LABEL_6:
      swift_endAccess();
      return;
    }

    __break(1u);
  }

  else if (a1)
  {
    v12 = *&v22[24];
    v14 = *&v22[8];

    v15 = a1;
    v16 = v14;
    v17 = v12;
    v18 = 0;
    swift_beginAccess();
    sub_1BAD3CA10(&v15, v1 + 40);
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1BAD3BC48()
{
  swift_beginAccess();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  if ((*(v0 + 32) & 1) == 0)
  {
    if (v1)
    {
      v7 = qword_1EDBA61E8;

      if (v7 != -1)
      {
        swift_once();
      }

      v8 = sub_1BAD9C248();
      __swift_project_value_buffer(v8, qword_1EDBA61F0);
      sub_1BAD13DE8();
      sub_1BAD9D5F8();
      v6 = v9;
      sub_1BAD39BCC(v2, v1, 0);
      goto LABEL_10;
    }

LABEL_11:
    v10 = 0;
    return v10 & 1;
  }

  if (!v2)
  {
    goto LABEL_11;
  }

  v3 = [v2 string];
  sub_1BAD9CF68();

  if (qword_1EDBA61E8 != -1)
  {
    swift_once();
  }

  v4 = sub_1BAD9C248();
  __swift_project_value_buffer(v4, qword_1EDBA61F0);
  sub_1BAD13DE8();
  sub_1BAD9D5F8();
  v6 = v5;
  sub_1BAD39BCC(v2, v1, 1);

LABEL_10:
  v10 = v6 ^ 1;
  return v10 & 1;
}

double sub_1BAD3BE0C()
{
  v1 = v0;
  swift_beginAccess();
  sub_1BAD3C9B4(v0 + 40, &v23);
  if (v28)
  {
    v21[2] = v25;
    v21[3] = v26;
    v22 = v27;
    v21[0] = v23;
    v21[1] = v24;
    v2 = *(&v24 + 1);
    v3 = v25;
    __swift_project_boxed_opaque_existential_1(v21, *(&v24 + 1));
    v4 = [objc_opt_self() system];
    v5 = [v4 preferredContentSizeCategory];

    v6 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
    v7 = (*(v3 + 8))(v6, v2, v3);

    v8 = *(v1 + 16);
    v9 = *(v1 + 24);
    v10 = *(v1 + 32);
    sub_1BAD39BA4(v8, v9, v10);
    v11 = v7;
    sub_1BAD61184(v7, v8, v9, v10);
    v13 = v12;

    sub_1BAD39BCC(v8, v9, v10);
    sub_1BAD31F30(v21);
  }

  else
  {
    v14 = v23;
    v15 = *(v1 + 16);
    v16 = *(v1 + 24);
    v17 = *(v1 + 32);
    sub_1BAD39BA4(v15, v16, v17);
    v18 = v14;
    sub_1BAD61184(v14, v15, v16, v17);
    v13 = v19;

    sub_1BAD39BCC(v15, v16, v17);
  }

  return v13;
}

id sub_1BAD3C024()
{
  swift_beginAccess();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  if (*(v0 + 32))
  {
    if (v2)
    {
      return [*(v0 + 16) length];
    }

    v6 = 0;
    v7 = 1;
  }

  else
  {
    if (v1)
    {
      v4 = *(v0 + 24);

      v5 = sub_1BAD9D028();
      sub_1BAD39BCC(v2, v4, 0);
      return v5;
    }

    v6 = *(v0 + 16);
    v7 = 0;
  }

  sub_1BAD39BCC(v6, v1, v7);
  return 0;
}

uint64_t sub_1BAD3C0DC()
{
  sub_1BAD3CA6C(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1BAD3C114()
{
  v1 = *v0;
  swift_beginAccess();
  sub_1BAD3C9B4(v1 + 40, &v6);
  if (v11)
  {
    v4[2] = v8;
    v4[3] = v9;
    v5 = v10;
    v4[0] = v6;
    v4[1] = v7;
    v2 = *(&v9 + 1);
    sub_1BAD31F30(v4);
  }

  else
  {
    v2 = *(&v7 + 1);
  }

  return v2;
}

void (*sub_1BAD3C1C8(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xC0uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 184) = v5;
  swift_beginAccess();
  sub_1BAD3C9B4(v5 + 40, v4);
  if (*(v4 + 72))
  {
    v6 = *(v4 + 48);
    *(v4 + 112) = *(v4 + 32);
    *(v4 + 128) = v6;
    *(v4 + 144) = *(v4 + 64);
    v7 = *(v4 + 16);
    *(v4 + 80) = *v4;
    *(v4 + 96) = v7;
    v8 = *(v4 + 136);
    sub_1BAD31F30(v4 + 80);
  }

  else
  {
    v8 = *(v4 + 24);
  }

  *(v4 + 176) = v8;
  return sub_1BAD3C29C;
}

uint64_t sub_1BAD3C2B4()
{
  v1 = *v0;
  swift_beginAccess();
  sub_1BAD3C9B4(v1 + 40, &v6);
  if (v11)
  {
    v4[2] = v8;
    v4[3] = v9;
    v5 = v10;
    v4[0] = v6;
    v4[1] = v7;
    v2 = v9;
    sub_1BAD31F30(v4);
  }

  else
  {
    v2 = v7;
  }

  return v2;
}

void (*sub_1BAD3C368(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xC0uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 184) = v5;
  swift_beginAccess();
  sub_1BAD3C9B4(v5 + 40, v4);
  if (*(v4 + 72))
  {
    v6 = *(v4 + 48);
    *(v4 + 112) = *(v4 + 32);
    *(v4 + 128) = v6;
    *(v4 + 144) = *(v4 + 64);
    v7 = *(v4 + 16);
    *(v4 + 80) = *v4;
    *(v4 + 96) = v7;
    v8 = *(v4 + 128);
    sub_1BAD31F30(v4 + 80);
  }

  else
  {
    v8 = *(v4 + 16);
  }

  *(v4 + 176) = v8;
  return sub_1BAD3C43C;
}

void sub_1BAD3C454(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v3 = *a1;
  a3(*(*a1 + 176));

  free(v3);
}

void (*sub_1BAD3C4DC(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = *v1;
  *a1 = sub_1BAD3B8E8();
  return sub_1BAD3C528;
}

void sub_1BAD3C528(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_1BAD3BA20(v2);
  }

  else
  {
    sub_1BAD3BA20(*a1);
  }
}

uint64_t sub_1BAD3C600@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  a1[3] = &type metadata for LabelPlaceholder;
  a1[4] = &protocol witness table for LabelPlaceholder;
  v4 = swift_allocObject();
  *a1 = v4;
  return sub_1BAD3C934(v3 + 16, v4 + 16);
}

uint64_t sub_1BAD3C67C(double a1, double a2, double a3, double a4)
{
  v9 = *v4;
  result = swift_beginAccess();
  v9[16] = a1;
  v9[17] = a2;
  v9[18] = a3;
  v9[19] = a4;
  return result;
}

uint64_t sub_1BAD3C734()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 160);
}

uint64_t sub_1BAD3C774(char a1)
{
  v3 = *v1;
  result = swift_beginAccess();
  *(v3 + 160) = a1;
  return result;
}

double sub_1BAD3C834()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 128);
}

double sub_1BAD3C878(void *a1, double a2, double a3)
{
  v7 = *v3;
  swift_beginAccess();
  sub_1BAD3C934(v7 + 16, v11);
  v8 = [a1 traitCollection];
  *&v9 = LabelPlaceholder.measure(toFit:with:)(__PAIR128__(*&a3, *&a2), v8);

  sub_1BAD3CA6C(v11);
  return v9;
}

uint64_t sub_1BAD3CAC4()
{
  result = sub_1BAD9DA48();
  qword_1EBC2A9E0 = result;
  *algn_1EBC2A9E8 = v1;
  return result;
}

uint64_t sub_1BAD3CB14()
{
  result = sub_1BAD9DA48();
  qword_1EBC2A9F0 = result;
  *algn_1EBC2A9F8 = v1;
  return result;
}

char *WritingDirectionsCounts.__allocating_init(summing:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = 0;
  v3 = 0;
  v4 = 0;
  if (!v1)
  {
LABEL_10:

    v13 = objc_allocWithZone(type metadata accessor for WritingDirectionsCounts());
    return WritingDirectionsCounts.init(natural:leftToRight:rightToLeft:)(v4, v3, v2);
  }

  v5 = (a1 + 32);
  while (1)
  {
    v7 = *v5++;
    v6 = v7;
    if (!v7)
    {
      goto LABEL_3;
    }

    result = [v6 writingDirectionsQuantities];
    v9 = *&result[OBJC_IVAR___JUWritingDirectionsCounts_natural];
    v10 = __CFADD__(v4, v9);
    v4 += v9;
    if (v10)
    {
      break;
    }

    v11 = *&result[OBJC_IVAR___JUWritingDirectionsCounts_leftToRight];
    v10 = __CFADD__(v3, v11);
    v3 += v11;
    if (v10)
    {
      goto LABEL_12;
    }

    v12 = *&result[OBJC_IVAR___JUWritingDirectionsCounts_rightToLeft];

    v10 = __CFADD__(v2, v12);
    v2 += v12;
    if (v10)
    {
      __break(1u);
      goto LABEL_10;
    }

LABEL_3:
    if (!--v1)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

void WritingDirectionsCounts.__allocating_init(counting:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
LABEL_14:
    v4 = 0;
    v3 = 0;
    v2 = 0;
LABEL_15:

    v11 = objc_allocWithZone(type metadata accessor for WritingDirectionsCounts());
    WritingDirectionsCounts.init(natural:leftToRight:rightToLeft:)(v2, v3, v4);
    return;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = (a1 + 32);
  while (1)
  {
    v8 = *v5++;
    v7 = v8;
    if (!v8)
    {
      goto LABEL_4;
    }

    v9 = [v7 writingDirectionsQuantities];
    if (v9[OBJC_IVAR___JUWritingDirectionsCounts_isRTLEnough])
    {
      break;
    }

    v10 = v9[OBJC_IVAR___JUWritingDirectionsCounts_hasStronglyTypedCounts];

    if (v10 == 1)
    {
      v6 = __CFADD__(v3++, 1);
      if (v6)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v6 = __CFADD__(v2++, 1);
      if (v6)
      {
        __break(1u);
        goto LABEL_14;
      }
    }

LABEL_4:
    if (!--v1)
    {
      goto LABEL_15;
    }
  }

  v6 = __CFADD__(v4++, 1);
  if (!v6)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

BOOL sub_1BAD3CEE4(uint64_t a1)
{
  sub_1BAD116E0(a1, v6);
  if (v7)
  {
    type metadata accessor for WritingDirectionsCounts();
    if (swift_dynamicCast())
    {
      if (*(v1 + OBJC_IVAR___JUWritingDirectionsCounts_natural) == *&v5[OBJC_IVAR___JUWritingDirectionsCounts_natural] && *(v1 + OBJC_IVAR___JUWritingDirectionsCounts_leftToRight) == *&v5[OBJC_IVAR___JUWritingDirectionsCounts_leftToRight])
      {
        v2 = *(v1 + OBJC_IVAR___JUWritingDirectionsCounts_rightToLeft);
        v3 = *&v5[OBJC_IVAR___JUWritingDirectionsCounts_rightToLeft];

        return v2 == v3;
      }
    }
  }

  else
  {
    sub_1BAD05470(v6);
  }

  return 0;
}

char *+ infix(_:_:)(char *result, uint64_t a2)
{
  v2 = *&result[OBJC_IVAR___JUWritingDirectionsCounts_natural];
  v3 = *(a2 + OBJC_IVAR___JUWritingDirectionsCounts_natural);
  v4 = (v2 + v3);
  if (__CFADD__(v2, v3))
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = *&result[OBJC_IVAR___JUWritingDirectionsCounts_leftToRight];
  v6 = *(a2 + OBJC_IVAR___JUWritingDirectionsCounts_leftToRight);
  v7 = v5 + v6;
  if (__CFADD__(v5, v6))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = *&result[OBJC_IVAR___JUWritingDirectionsCounts_rightToLeft];
  v9 = *(a2 + OBJC_IVAR___JUWritingDirectionsCounts_rightToLeft);
  v10 = v8 + v9;
  if (!__CFADD__(v8, v9))
  {
    v11 = objc_allocWithZone(type metadata accessor for WritingDirectionsCounts());
    return WritingDirectionsCounts.init(natural:leftToRight:rightToLeft:)(v4, v7, v10);
  }

LABEL_7:
  __break(1u);
  return result;
}

char *sub_1BAD3D174()
{
  v0 = objc_allocWithZone(type metadata accessor for WritingDirectionsCounts());
  result = WritingDirectionsCounts.init(natural:leftToRight:rightToLeft:)(0, 0, 0);
  qword_1EBC2AA00 = result;
  return result;
}

id static WritingDirectionsCounts.zero.getter()
{
  if (qword_1EBC29C38 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBC2AA00;

  return v1;
}

uint64_t sub_1BAD3D2D4()
{
  strcpy(v16, "Natural: ");
  WORD1(v16[1]) = 0;
  HIDWORD(v16[1]) = -385875968;
  v1 = sub_1BAD9DA48();
  MEMORY[0x1BFB026B0](v1);

  MEMORY[0x1BFB026B0](8236, 0xE200000000000000);
  v2 = v16[0];
  v3 = v16[1];
  strcpy(v16, "{ Counts: { ");
  MEMORY[0x1BFB026B0](v2, v3);

  sub_1BAD9D7E8();

  v4 = sub_1BAD9DA48();
  MEMORY[0x1BFB026B0](v4);

  MEMORY[0x1BFB026B0](8236, 0xE200000000000000);

  MEMORY[0x1BFB026B0](0x2D6F742D7466654CLL, 0xEF203A7468676972);

  v5 = v16[0];
  sub_1BAD9D7E8();

  v6 = sub_1BAD9DA48();
  MEMORY[0x1BFB026B0](v6);

  MEMORY[0x1BFB026B0](32, 0xE100000000000000);

  MEMORY[0x1BFB026B0](0x6F742D7468676952, 0xEF203A7466656C2DLL);

  MEMORY[0x1BFB026B0](2108541, 0xE300000000000000);

  sub_1BAD9D7E8();

  v16[0] = 0x45204C5452207349;
  v16[1] = 0xEF28206867756F6ELL;
  if (qword_1EBC29C28 != -1)
  {
    swift_once();
  }

  v7 = qword_1EBC2A9E0;
  v8 = *algn_1EBC2A9E8;

  MEMORY[0x1BFB026B0](v7, v8);

  MEMORY[0x1BFB026B0](540682533, 0xE400000000000000);
  if (*(v0 + OBJC_IVAR___JUWritingDirectionsCounts_isRTLEnough))
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___JUWritingDirectionsCounts_isRTLEnough))
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x1BFB026B0](v9, v10);

  MEMORY[0x1BFB026B0](8236, 0xE200000000000000);

  MEMORY[0x1BFB026B0](v16[0], v16[1]);

  sub_1BAD9D7E8();

  v16[0] = 0xD000000000000010;
  v16[1] = 0x80000001BADAA2D0;
  if (qword_1EBC29C30 != -1)
  {
    swift_once();
  }

  v11 = qword_1EBC2A9F0;
  v12 = *algn_1EBC2A9F8;

  MEMORY[0x1BFB026B0](v11, v12);

  MEMORY[0x1BFB026B0](540682533, 0xE400000000000000);
  if (*(v0 + OBJC_IVAR___JUWritingDirectionsCounts_isRTLMinimal))
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___JUWritingDirectionsCounts_isRTLMinimal))
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  MEMORY[0x1BFB026B0](v13, v14);

  MEMORY[0x1BFB026B0](32, 0xE100000000000000);

  MEMORY[0x1BFB026B0](v16[0], v16[1]);

  MEMORY[0x1BFB026B0](125, 0xE100000000000000);

  return v5;
}

id WritingDirectionsCounts.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WritingDirectionsCounts.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WritingDirectionsCounts();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void += infix(_:_:)(void **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + OBJC_IVAR___JUWritingDirectionsCounts_natural);
  v4 = *(a2 + OBJC_IVAR___JUWritingDirectionsCounts_natural);
  v5 = (v3 + v4);
  if (__CFADD__(v3, v4))
  {
    __break(1u);
    goto LABEL_6;
  }

  v7 = *&v2[OBJC_IVAR___JUWritingDirectionsCounts_leftToRight];
  v8 = *(a2 + OBJC_IVAR___JUWritingDirectionsCounts_leftToRight);
  v9 = v7 + v8;
  if (__CFADD__(v7, v8))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v11 = *&v2[OBJC_IVAR___JUWritingDirectionsCounts_rightToLeft];

  v12 = *(a2 + OBJC_IVAR___JUWritingDirectionsCounts_rightToLeft);
  v13 = v11 + v12;
  if (!__CFADD__(v11, v12))
  {
    v14 = objc_allocWithZone(type metadata accessor for WritingDirectionsCounts());
    *a1 = WritingDirectionsCounts.init(natural:leftToRight:rightToLeft:)(v5, v9, v13);
    return;
  }

LABEL_7:
  __break(1u);
}

char *sub_1BAD3D958(char *result, uint64_t a2)
{
  v2 = *&result[OBJC_IVAR___JUWritingDirectionsCounts_natural];
  v3 = *(a2 + OBJC_IVAR___JUWritingDirectionsCounts_natural);
  v4 = (v2 + v3);
  if (__CFADD__(v2, v3))
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = *&result[OBJC_IVAR___JUWritingDirectionsCounts_leftToRight];
  v6 = *(a2 + OBJC_IVAR___JUWritingDirectionsCounts_leftToRight);
  v7 = v5 + v6;
  if (__CFADD__(v5, v6))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = *&result[OBJC_IVAR___JUWritingDirectionsCounts_rightToLeft];
  v9 = *(a2 + OBJC_IVAR___JUWritingDirectionsCounts_rightToLeft);
  v10 = v8 + v9;
  if (!__CFADD__(v8, v9))
  {
    v11 = objc_allocWithZone(type metadata accessor for WritingDirectionsCounts());
    return WritingDirectionsCounts.init(natural:leftToRight:rightToLeft:)(v4, v7, v10);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t Models.Button.Kind.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t Models.Button.Kind.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Models.Button.init(kind:title:action:buttonColor:titleColor:impressionMetrics:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = *a1;
  v16 = a1[1];
  v17 = type metadata accessor for Models.Button();
  v18 = (a8 + v17[5]);
  *v18 = v15;
  v18[1] = v16;
  v19 = (a8 + v17[6]);
  *v19 = a2;
  v19[1] = a3;
  v20 = a8 + v17[9];
  v21 = *(a4 + 16);
  *v20 = *a4;
  *(v20 + 16) = v21;
  *(v20 + 32) = *(a4 + 32);
  *(a8 + v17[7]) = a5;
  *(a8 + v17[8]) = a6;

  return sub_1BAD39BDC(a7, a8);
}

uint64_t type metadata accessor for Models.Button()
{
  result = qword_1EBC2AA88;
  if (!qword_1EBC2AA88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Models.Button.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a2;
  v57 = a3;
  v4 = sub_1BAD9C8F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BAD9C7C8();
  v61 = *(v8 - 8);
  v62 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v58 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v50 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v50 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v17 = sub_1BAD9CB28();
  v59 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = a1;
  sub_1BAD9C7D8();
  v20 = v63;
  (*(v5 + 16))(v7, v63, v4);
  v21 = v60;
  sub_1BAD9CB18();
  if (v21)
  {
    (*(v5 + 8))(v20, v4);
    return (*(v61 + 8))(v69, v62);
  }

  else
  {
    v23 = v12;
    v54 = v19;
    v55 = v5;
    v56 = v4;
    v60 = v17;
    sub_1BAD9C7D8();
    v24 = sub_1BAD9C7B8();
    v26 = v25;
    v27 = v62;
    v28 = *(v61 + 8);
    v28(v15, v62);
    if (v26)
    {
      v51 = v24;
      v61 = v26;
      v29 = v23;
      sub_1BAD9C7D8();
      v30 = v63;
      sub_1BAD9CA28();
      v28(v23, v27);
      sub_1BAD3E254();
      sub_1BAD9C7D8();
      v53 = static UIColor.tryToMakeInstance(byDeserializing:using:)(v23, v30);
      v28(v23, v27);
      sub_1BAD9C7D8();
      v52 = static UIColor.tryToMakeInstance(byDeserializing:using:)(v23, v30);
      v31 = v28;
      v28(v29, v27);
      v32 = v58;
      sub_1BAD9C7D8();
      sub_1BAD3E2A0();
      sub_1BAD9C738();
      (*(v55 + 8))(v30, v56);
      v31(v69, v27);
      v31(v32, v27);
      v38 = v64;
      v39 = v65;
      v40 = type metadata accessor for Models.Button();
      v41 = v57;
      v42 = v57 + v40[9];
      v43 = v67;
      *v42 = v66;
      *(v42 + 16) = v43;
      *(v42 + 32) = v68;
      v45 = v59;
      v44 = v60;
      (*(v59 + 32))(v41, v54, v60);
      result = (*(v45 + 56))(v41, 0, 1, v44);
      v46 = (v41 + v40[5]);
      *v46 = v38;
      v46[1] = v39;
      v47 = (v41 + v40[6]);
      v48 = v61;
      *v47 = v51;
      v47[1] = v48;
      v49 = v52;
      *(v41 + v40[7]) = v53;
      *(v41 + v40[8]) = v49;
    }

    else
    {
      v33 = sub_1BAD9CE08();
      sub_1BAD3F058(&qword_1EBC2A488, MEMORY[0x1E69AB6A8]);
      swift_allocError();
      v34 = v28;
      v36 = v35;
      v37 = type metadata accessor for Models.Button();
      *v36 = 0x656C746974;
      v36[1] = 0xE500000000000000;
      v36[2] = v37;
      (*(*(v33 - 8) + 104))(v36, *MEMORY[0x1E69AB690], v33);
      swift_willThrow();
      (*(v55 + 8))(v63, v56);
      v34(v69, v27);
      return (*(v59 + 8))(v54, v60);
    }
  }

  return result;
}

unint64_t sub_1BAD3E254()
{
  result = qword_1EBC2B6A0;
  if (!qword_1EBC2B6A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBC2B6A0);
  }

  return result;
}

unint64_t sub_1BAD3E2A0()
{
  result = qword_1EBC2AA48;
  if (!qword_1EBC2AA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2AA48);
  }

  return result;
}

uint64_t Models.Button.kind.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Models.Button() + 20));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t Models.Button.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for Models.Button() + 24));

  return v1;
}

void *Models.Button.buttonColor.getter()
{
  v1 = *(v0 + *(type metadata accessor for Models.Button() + 28));
  v2 = v1;
  return v1;
}

void *Models.Button.titleColor.getter()
{
  v1 = *(v0 + *(type metadata accessor for Models.Button() + 32));
  v2 = v1;
  return v1;
}

unint64_t sub_1BAD3E504()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 0x6F436E6F74747562;
  v4 = 0x6C6F43656C746974;
  if (v1 != 4)
  {
    v4 = 1684957547;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x6E6F69746361;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
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

uint64_t sub_1BAD3E5C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BAD3F400(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BAD3E5E8(uint64_t a1)
{
  v2 = sub_1BAD3EECC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAD3E624(uint64_t a1)
{
  v2 = sub_1BAD3EECC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Models.Button.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AA50);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v53 = &v45 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A668);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v52 = &v45 - v6;
  v7 = sub_1BAD9C8F8();
  v54 = *(v7 - 8);
  v55 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v58 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BAD9C7C8();
  v56 = *(v9 - 8);
  v57 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v45 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AA58);
  v59 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v45 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = sub_1BAD3EECC();
  v19 = v60;
  sub_1BAD9DBB8();
  if (!v19)
  {
    v48 = v11;
    v49 = v18;
    v50 = v17;
    v60 = v15;
    sub_1BAD14A3C(a1, v63);
    sub_1BAD9C788();
    v20 = v14;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1BAD9DBA8();
    sub_1BAD9C8E8();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AA68);
    LOBYTE(v63[0]) = 0;
    sub_1BAD3EF20();
    v22 = v53;
    sub_1BAD9D988();
    v23 = v59;
    v24 = (*(*(v21 - 8) + 48))(v22, 1, v21);
    v25 = v57;
    if (v24 == 1)
    {
      sub_1BAD1A420(v22, &qword_1EBC2AA50);
      v26 = sub_1BAD9CB28();
      (*(*(v26 - 8) + 56))(v52, 1, 1, v26);
    }

    else
    {
      sub_1BAD1A3B8(v22, v52, &qword_1EBC2A668);
      sub_1BAD1A420(v22, &qword_1EBC2AA68);
    }

    LOBYTE(v63[0]) = 1;
    v47 = sub_1BAD9D998();
    v53 = v28;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1BAD9DBA8();
    sub_1BAD9CC38();

    LOBYTE(v61) = 2;
    sub_1BAD9CB78();
    v46 = sub_1BAD3E254();
    v29 = v48;
    sub_1BAD9C7D8();
    v30 = v58;
    v49 = static UIColor.tryToMakeInstance(byDeserializing:using:)(v29, v58);
    v45 = *(v56 + 1);
    v45(v29, v25);
    v56 = v20;
    v31 = v30;
    sub_1BAD9C7D8();
    v46 = static UIColor.tryToMakeInstance(byDeserializing:using:)(v29, v30);
    v32 = v29;
    v33 = v45;
    v45(v32, v25);
    v65 = 5;
    sub_1BAD3F0A0();
    v34 = v60;
    sub_1BAD9D9C8();
    (*(v54 + 8))(v31, v55);
    v33(v56, v25);
    (*(v23 + 8))(v50, v34);
    v36 = v61;
    v35 = v62;
    v37 = type metadata accessor for Models.Button();
    v39 = v51;
    v38 = v52;
    v40 = v51 + v37[9];
    v41 = v63[1];
    *v40 = v63[0];
    *(v40 + 16) = v41;
    *(v40 + 32) = v64;
    sub_1BAD39BDC(v38, v39);
    v42 = (v39 + v37[5]);
    *v42 = v36;
    v42[1] = v35;
    v43 = (v39 + v37[6]);
    v44 = v53;
    *v43 = v47;
    v43[1] = v44;
    *(v39 + v37[7]) = v49;
    *(v39 + v37[8]) = v46;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1BAD3EECC()
{
  result = qword_1EBC2AA60;
  if (!qword_1EBC2AA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2AA60);
  }

  return result;
}

unint64_t sub_1BAD3EF20()
{
  result = qword_1EBC2AA70;
  if (!qword_1EBC2AA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC2AA68);
    sub_1BAD3EFA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2AA70);
  }

  return result;
}

unint64_t sub_1BAD3EFA4()
{
  result = qword_1EBC2AA78;
  if (!qword_1EBC2AA78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC2A668);
    sub_1BAD3F058(&qword_1EBC2A968, MEMORY[0x1E69AB1E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2AA78);
  }

  return result;
}

uint64_t sub_1BAD3F058(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BAD3F0A0()
{
  result = qword_1EBC2AA80;
  if (!qword_1EBC2AA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2AA80);
  }

  return result;
}

void sub_1BAD3F134()
{
  sub_1BAD3F220(319, &qword_1EBC2A9B0, MEMORY[0x1E69AB1E8]);
  if (v0 <= 0x3F)
  {
    sub_1BAD3F220(319, &qword_1EBC2AA98, sub_1BAD3E254);
    if (v1 <= 0x3F)
    {
      sub_1BAD3F274();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BAD3F220(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BAD9D598();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BAD3F274()
{
  if (!qword_1EBC2AAA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC2AAA8);
    v0 = sub_1BAD9D598();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBC2AAA0);
    }
  }
}

unint64_t sub_1BAD3F2FC()
{
  result = qword_1EBC2AAB0;
  if (!qword_1EBC2AAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2AAB0);
  }

  return result;
}

unint64_t sub_1BAD3F354()
{
  result = qword_1EBC2AAB8;
  if (!qword_1EBC2AAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2AAB8);
  }

  return result;
}

unint64_t sub_1BAD3F3AC()
{
  result = qword_1EBC2AAC0;
  if (!qword_1EBC2AAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2AAC0);
  }

  return result;
}

uint64_t sub_1BAD3F400(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001BADAA1E0 == a2 || (sub_1BAD9DA98() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1BAD9DA98() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000 || (sub_1BAD9DA98() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F436E6F74747562 && a2 == 0xEB00000000726F6CLL || (sub_1BAD9DA98() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C6F43656C746974 && a2 == 0xEA0000000000726FLL || (sub_1BAD9DA98() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000)
  {

    return 5;
  }

  else
  {
    v5 = sub_1BAD9DA98();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

id TraitEnvironmentPlaceholder.__allocating_init(_:)()
{
  sub_1BAD1B4EC();
  v1 = sub_1BAD9D168();

  v2 = [objc_opt_self() traitCollectionWithTraitsFromCollections_];

  v3 = objc_allocWithZone(v0);
  *&v3[OBJC_IVAR____TtC5JetUI27TraitEnvironmentPlaceholder_traitCollection] = v2;
  v5.receiver = v3;
  v5.super_class = v0;
  return objc_msgSendSuper2(&v5, sel_init);
}

id TraitEnvironmentPlaceholder.__allocating_init(traitCollection:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC5JetUI27TraitEnvironmentPlaceholder_traitCollection] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id TraitEnvironmentPlaceholder.init(traitCollection:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC5JetUI27TraitEnvironmentPlaceholder_traitCollection] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id TraitEnvironmentPlaceholder.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TraitEnvironmentPlaceholder.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id UITraitEnvironment.withOverrideTraitCollection(_:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AAD0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BADA3CF0;
  *(v3 + 32) = [v1 traitCollection];
  *(v3 + 40) = a1;
  sub_1BAD1B4EC();
  v4 = a1;
  v5 = sub_1BAD9D168();

  v6 = [objc_opt_self() traitCollectionWithTraitsFromCollections_];

  v7 = type metadata accessor for TraitEnvironmentPlaceholder();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC5JetUI27TraitEnvironmentPlaceholder_traitCollection] = v6;
  v10.receiver = v8;
  v10.super_class = v7;
  return objc_msgSendSuper2(&v10, sel_init);
}

id UITraitEnvironment.withAccessibleContentSizesDisabled.getter()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];
  v3 = sub_1BAD9D528();

  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AAD0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1BADA3CF0;
    *(v4 + 32) = [v0 traitCollection];
    v5 = *MEMORY[0x1E69DDC50];
    v6 = objc_opt_self();
    *(v4 + 40) = [v6 traitCollectionWithPreferredContentSizeCategory_];
    sub_1BAD1B4EC();
    v7 = sub_1BAD9D168();

    v8 = [v6 traitCollectionWithTraitsFromCollections_];

    v9 = type metadata accessor for TraitEnvironmentPlaceholder();
    v10 = objc_allocWithZone(v9);
    *&v10[OBJC_IVAR____TtC5JetUI27TraitEnvironmentPlaceholder_traitCollection] = v8;
    v12.receiver = v10;
    v12.super_class = v9;
    return objc_msgSendSuper2(&v12, sel_init);
  }

  else
  {
    swift_unknownObjectRetain();
  }

  return v0;
}

double VerticalMarginsMeasurable.init(child:topMargin:bottomMargin:skipIfEmpty:shouldMeasureToBaseline:)@<D0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, char a4@<W3>, char a5@<W4>, void *a6@<X8>)
{
  sub_1BAD0B40C(a1, v16);
  sub_1BAD0B40C(a2, v17 + 8);
  sub_1BAD0B40C(a3, &v18);
  v19[24] = a4;
  v19[25] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AAD8);
  v11 = swift_allocObject();
  v12 = v18;
  v11[5] = v17[2];
  v11[6] = v12;
  v11[7] = *v19;
  *(v11 + 122) = *&v19[10];
  v13 = v16[1];
  v11[1] = v16[0];
  v11[2] = v13;
  result = *v17;
  v15 = v17[1];
  v11[3] = v17[0];
  v11[4] = v15;
  *a6 = v11;
  return result;
}

uint64_t VerticalMarginsMeasurable.child.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_1BAD14A3C(v3 + 16, a1);
}

uint64_t VerticalMarginsMeasurable.topMargin.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_1BAD14A3C(v3 + 56, a1);
}

uint64_t VerticalMarginsMeasurable.bottomMargin.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_1BAD14A3C(v3 + 96, a1);
}

uint64_t VerticalMarginsMeasurable.skipIfEmpty.getter()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 136);
}

uint64_t VerticalMarginsMeasurable.shouldMeasureToBaseline.getter()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 137);
}

double VerticalMarginsMeasurable.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  v7 = sub_1BAD9DA68();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *v3;
  swift_beginAccess();
  sub_1BAD14A3C(v11 + 16, v34);
  v12 = v35;
  v13 = v36;
  __swift_project_boxed_opaque_existential_1(v34, v35);
  v14 = (*(v13 + 8))(a1, v12, v13, a2, a3);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  __swift_destroy_boxed_opaque_existential_1(v34);
  v21 = fabs(v16);
  if (fabs(v14) < COERCE_DOUBLE(1) || v21 < COERCE_DOUBLE(1))
  {
    v14 = 0.0;
    if ((*(v11 + 136) & 1) == 0)
    {
      sub_1BAD14A3C(v11 + 56, v34);
      v23 = v35;
      v24 = v36;
      __swift_project_boxed_opaque_existential_1(v34, v35);
      sub_1BAD6EE7C(v10);
      AnyDimension.value(in:rounded:)(a1, v10, v23, v24);
      v25 = *(v8 + 8);
      v25(v10, v7);
      __swift_destroy_boxed_opaque_existential_1(v34);
      sub_1BAD14A3C(v11 + 96, v34);
      v26 = v35;
      v27 = v36;
      __swift_project_boxed_opaque_existential_1(v34, v35);
      sub_1BAD6EE7C(v10);
      AnyDimension.value(in:rounded:)(a1, v10, v26, v27);
      v25(v10, v7);
      __swift_destroy_boxed_opaque_existential_1(v34);
      return a2;
    }
  }

  else
  {
    sub_1BAD14A3C(v11 + 56, v34);
    v28 = v35;
    v29 = v36;
    __swift_project_boxed_opaque_existential_1(v34, v35);
    AnyDimension.topMargin(from:in:)(a1, v28, v29, v14, v16, v18);
    __swift_destroy_boxed_opaque_existential_1(v34);
    sub_1BAD14A3C(v11 + 96, v34);
    v30 = v35;
    v31 = v36;
    __swift_project_boxed_opaque_existential_1(v34, v35);
    AnyDimension.bottomMargin(from:in:)(a1, v30, v31, v14, v16, v18, v20);
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

  return v14;
}

__n128 __swift_memcpy122_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 106) = *(a2 + 106);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1BAD400CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 122))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BAD40114(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 122) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 122) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BAD40188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  sub_1BAD14A3C(a1, a2);
  v12 = MEMORY[0x1E69E7DE0];
  *(a2 + 64) = MEMORY[0x1E69E7DE0];
  *(a2 + 72) = &protocol witness table for CGFloat;
  *(a2 + 40) = a3;
  *(a2 + 104) = v12;
  *(a2 + 112) = &protocol witness table for CGFloat;
  *(a2 + 80) = a4;
  *(a2 + 144) = v12;
  *(a2 + 152) = &protocol witness table for CGFloat;
  *(a2 + 120) = a5;
  *(a2 + 184) = v12;
  *(a2 + 192) = &protocol witness table for CGFloat;
  *(a2 + 160) = a6;

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Margins.init(_:top:leading:bottom:trailing:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X8>)
{
  sub_1BAD0B40C(a1, a6);
  sub_1BAD0B40C(a2, a6 + 40);
  sub_1BAD0B40C(a3, a6 + 80);
  sub_1BAD0B40C(a4, a6 + 120);

  return sub_1BAD0B40C(a5, a6 + 160);
}

double sub_1BAD4029C(void *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AAD0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BAD9F590;
  *(v4 + 32) = a1;
  sub_1BAD1B4EC();
  v5 = a1;
  v6 = sub_1BAD9D168();

  v7 = [objc_opt_self() traitCollectionWithTraitsFromCollections_];

  v8 = type metadata accessor for TraitEnvironmentPlaceholder();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC5JetUI27TraitEnvironmentPlaceholder_traitCollection] = v7;
  v24.receiver = v9;
  v24.super_class = v8;
  v10 = objc_msgSendSuper2(&v24, sel_init);
  v11 = v2[3];
  v12 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v11);
  v13 = (*(v12 + 8))(v10, v11, v12);
  v14 = v2[9];
  __swift_project_boxed_opaque_existential_1(v2 + 5, v2[8]);
  v15 = *(v14 + 8);
  v16 = v10;
  v15();

  v17 = v2[14];
  __swift_project_boxed_opaque_existential_1(v2 + 10, v2[13]);
  v18 = *(v17 + 8);
  v19 = v16;
  v18();

  v20 = v2[19];
  __swift_project_boxed_opaque_existential_1(v2 + 15, v2[18]);
  v21 = *(v20 + 8);
  v22 = v19;
  v21();

  return v13;
}

uint64_t Margins.Placements.union.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1BAD40588(v1, v15);
  Margins.Placements.next()(v9);
  result = sub_1BAD407E4(v15);
  if (v10)
  {
    v4 = v13;
    v5 = v14;
    v7 = v12;
    v8 = v11;
    result = sub_1BAD17170(v9);
    *a1 = v8;
    *(a1 + 16) = v7;
    *(a1 + 32) = v4;
    *(a1 + 40) = v5;
  }

  else
  {
    if (qword_1EBC29BA0 != -1)
    {
      result = swift_once();
    }

    v6 = *&qword_1EBC29BB8;
    *a1 = xmmword_1EBC29BA8;
    *(a1 + 16) = v6;
    *(a1 + 32) = xmmword_1EBC29BC8;
  }

  return result;
}

uint64_t Margins.Placements.next()@<X0>(uint64_t a1@<X8>)
{
  sub_1BAD1ADC4(v1 + 200, &v34);
  if (v35)
  {
    sub_1BAD0B40C(&v34, v36);
    sub_1BAD1A420(v1 + 200, &qword_1EBC2A2B0);
    *(v1 + 200) = 0u;
    *(v1 + 216) = 0u;
    *(v1 + 232) = 0;
    v3 = *(v1 + 32);
    v4 = sub_1BAD4029C(v3);
    v6 = v5;
    v32 = v5;
    v33 = v7;
    v8 = v7;
    v10 = v9;
    v11 = *v1;
    v12 = *(v1 + 8);
    v13 = *(v1 + 16);
    v14 = *(v1 + 24);
    v39.origin.x = *v1;
    v39.origin.y = v12;
    v39.size.width = v13;
    v39.size.height = v14;
    v15 = CGRectGetWidth(v39) - (v6 + v10);
    v40.origin.x = v11;
    v40.origin.y = v12;
    v40.size.width = v13;
    v40.size.height = v14;
    v16 = CGRectGetHeight(v40) - (v4 + v8);
    if (v15 < 0.0)
    {
      v17 = 0.0;
    }

    else
    {
      v17 = v15;
    }

    if (v16 < 0.0)
    {
      v18 = 0.0;
    }

    else
    {
      v18 = v16;
    }

    v19 = v37;
    v20 = v38;
    __swift_project_boxed_opaque_existential_1(v36, v37);
    v21 = (*(v20 + 8))(v3, v19, v20, v17, v18);
    v30 = v22;
    v31 = v21;
    v24 = v23;
    v26 = v25;
    v41.origin.x = v11;
    v41.origin.y = v12;
    v41.size.width = v13;
    v41.size.height = v14;
    v27 = v32 + CGRectGetMinX(v41);
    v42.origin.x = v11;
    v42.origin.y = v12;
    v42.size.width = v13;
    v42.size.height = v14;
    v28 = v4 + CGRectGetMinY(v42);
    sub_1BAD14A3C(v36, &v34);
    sub_1BAD14A3C(&v34, a1);
    *(a1 + 40) = floor(v27);
    *(a1 + 48) = floor(v28);
    *(a1 + 56) = ceil(v31);
    *(a1 + 64) = ceil(v30);
    __swift_destroy_boxed_opaque_existential_1(&v34);
    *(a1 + 72) = floor(v4 + v24);
    *(a1 + 80) = floor(v33 + v26);
    return __swift_destroy_boxed_opaque_existential_1(v36);
  }

  else
  {
    result = sub_1BAD1A420(&v34, &qword_1EBC2A2B0);
    *(a1 + 80) = 0;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  return result;
}

double Margins.Placements.measure.getter()
{
  sub_1BAD40588(v0, v18);
  Margins.Placements.next()(&v12);
  if (*(&v13 + 1))
  {
    v8 = v14;
    v9 = v15;
    v10 = v16;
    v11 = v17;
    v7[0] = v12;
    v7[1] = v13;
    sub_1BAD4029C(*(v0 + 32));
    v2 = v1;
    v4 = v3;
    v19.origin.x = *(&v8 + 1);
    *&v19.origin.y = v9;
    *&v19.size.height = v10;
    v5 = v4 + v2 + CGRectGetWidth(v19);
    v20.origin.x = *(&v8 + 1);
    *&v20.origin.y = v9;
    *&v20.size.height = v10;
    CGRectGetHeight(v20);
    sub_1BAD17170(v7);
    sub_1BAD407E4(v18);
  }

  else
  {
    sub_1BAD407E4(v18);
    return 0.0;
  }

  return v5;
}

__n128 sub_1BAD40954@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 208);
  *(a1 + 192) = *(v1 + 192);
  *(a1 + 208) = v2;
  *(a1 + 224) = *(v1 + 224);
  v3 = *(v1 + 144);
  *(a1 + 128) = *(v1 + 128);
  *(a1 + 144) = v3;
  v4 = *(v1 + 176);
  *(a1 + 160) = *(v1 + 160);
  *(a1 + 176) = v4;
  v5 = *(v1 + 80);
  *(a1 + 64) = *(v1 + 64);
  *(a1 + 80) = v5;
  v6 = *(v1 + 112);
  *(a1 + 96) = *(v1 + 96);
  *(a1 + 112) = v6;
  v7 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v7;
  result = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1BAD40998()
{
  v1 = sub_1BAD83E88(v0);
  sub_1BAD407E4(v0);
  return v1;
}

uint64_t Margins.layout(relativeTo:with:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  sub_1BAD40A84(v6 + 40, a2 + 40);
  sub_1BAD14A3C(v6, v15);
  *(a2 + 216) = 0u;
  *(a2 + 200) = 0u;
  *(a2 + 232) = 0;
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = a6;
  *(a2 + 32) = a1;
  v13 = a1;
  sub_1BAD1A420(a2 + 200, &qword_1EBC2A2B0);
  return sub_1BAD0B40C(v15, a2 + 200);
}

JetUI::_LayoutAlignment __swiftcall Margins._layoutAlignment(with:)(UITraitCollection with)
{
  v3 = v2;
  v5 = v1;
  sub_1BAD14A3C(v3, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AE80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A1B8);
  if (swift_dynamicCast())
  {
    sub_1BAD0B40C(v9, v12);
    v6 = v13;
    v7 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    (*(v7 + 8))(with.super.isa, v6, v7);
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    v8 = sub_1BAD1A420(v9, &qword_1EBC2A1C0);
    *v5 = 0;
  }

  return v8;
}

unint64_t sub_1BAD40BC4(uint64_t a1)
{
  result = sub_1BAD40BEC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BAD40BEC()
{
  result = qword_1EBC29A08;
  if (!qword_1EBC29A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC29A08);
  }

  return result;
}

unint64_t sub_1BAD40C44()
{
  result = qword_1EBC2AAE0;
  if (!qword_1EBC2AAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2AAE0);
  }

  return result;
}

unint64_t sub_1BAD40C9C()
{
  result = qword_1EBC2AAE8;
  if (!qword_1EBC2AAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2AAE8);
  }

  return result;
}

uint64_t sub_1BAD40CF0@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  sub_1BAD40A84(v6 + 40, a2 + 40);
  sub_1BAD14A3C(v6, v15);
  *(a2 + 216) = 0u;
  *(a2 + 200) = 0u;
  *(a2 + 232) = 0;
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = a6;
  *(a2 + 32) = a1;
  v13 = a1;
  sub_1BAD1A420(a2 + 200, &qword_1EBC2A2B0);
  return sub_1BAD0B40C(v15, a2 + 200);
}

__n128 __swift_memcpy200_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_1BAD40DEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 200))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BAD40E34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 200) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy240_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t sub_1BAD40EF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 240))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BAD40F40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 240) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BAD40FCC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BAD41014(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BAD4108C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  if (!a2)
  {
LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  v5 = a3;
  if (!a3)
  {
LABEL_12:
    v27 = v3[3];
    *(v4 + 32) = v3[2];
    *(v4 + 48) = v27;
    *(v4 + 64) = v3[4];
    *(v4 + 80) = *(v3 + 10);
    v28 = *v3;
    v29 = v3[1];
LABEL_15:
    *v4 = v28;
    *(v4 + 16) = v29;
    return v5;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = a2;
    v7 = 1;
    while (1)
    {
      sub_1BAD1ADC4((v3 + 3), &v33);
      if (!v34)
      {
        break;
      }

      sub_1BAD0B40C(&v33, v35);
      sub_1BAD1A420((v3 + 3), &qword_1EBC2A2B0);
      v3[3] = 0u;
      v3[4] = 0u;
      *(v3 + 10) = 0;
      v8 = v36;
      v9 = v37;
      __swift_project_boxed_opaque_existential_1(v35, v36);
      v10 = *(v3 + 2);
      v11 = *(v3 + 3);
      v12 = (*(v9 + 8))(*(v3 + 4), v8, v9, v10, v11);
      v14 = v13;
      v31 = v16;
      v32 = v15;
      v17 = *v3;
      v18 = *(v3 + 1);
      v50.origin.x = *v3;
      v50.origin.y = v18;
      v50.size.width = v10;
      v50.size.height = v11;
      v19 = CGRectGetMidX(v50) - v12 * 0.5;
      v51.origin.x = v17;
      v51.origin.y = v18;
      v51.size.width = v10;
      v51.size.height = v11;
      v20 = CGRectGetMidY(v51) - v14 * 0.5;
      sub_1BAD14A3C(v35, &v33);
      sub_1BAD14A3C(&v33, &v38);
      *(&v40 + 1) = floor(v19);
      *&v41 = floor(v20);
      *(&v41 + 1) = ceil(v12);
      *&v42 = ceil(v14);
      __swift_destroy_boxed_opaque_existential_1(&v33);
      *(&v42 + 1) = floor(v32);
      v43 = floor(v31);
      __swift_destroy_boxed_opaque_existential_1(v35);
      if (!*(&v39 + 1))
      {
        goto LABEL_14;
      }

      v21 = v41;
      v46 = v40;
      v47 = v41;
      v22 = v42;
      v48 = v42;
      v23 = v43;
      v49 = v43;
      v24 = v38;
      v25 = v39;
      v44 = v38;
      v45 = v39;
      *(v6 + 32) = v40;
      *(v6 + 48) = v21;
      *(v6 + 64) = v22;
      *(v6 + 80) = v23;
      *v6 = v24;
      *(v6 + 16) = v25;
      if (v5 == v7)
      {
        goto LABEL_12;
      }

      v6 += 88;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
        goto LABEL_11;
      }
    }

    sub_1BAD1A420(&v33, &qword_1EBC2A2B0);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0.0;
LABEL_14:
    sub_1BAD1A420(&v38, &qword_1EBC2AAF0);
    v30 = v3[3];
    *(v4 + 32) = v3[2];
    *(v4 + 48) = v30;
    *(v4 + 64) = v3[4];
    *(v4 + 80) = *(v3 + 10);
    v28 = *v3;
    v29 = v3[1];
    v5 = v7 - 1;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

_OWORD *sub_1BAD41320(_OWORD *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  if (!a2)
  {
LABEL_17:
    v5 = 0;
    goto LABEL_18;
  }

  v5 = a3;
  if (!a3)
  {
LABEL_18:
    v40 = *(v3 + 208);
    v4[12] = *(v3 + 192);
    v4[13] = v40;
    v4[14] = *(v3 + 224);
    v41 = *(v3 + 144);
    v4[8] = *(v3 + 128);
    v4[9] = v41;
    v42 = *(v3 + 176);
    v4[10] = *(v3 + 160);
    v4[11] = v42;
    v43 = *(v3 + 80);
    v4[4] = *(v3 + 64);
    v4[5] = v43;
    v44 = *(v3 + 112);
    v4[6] = *(v3 + 96);
    v4[7] = v44;
    v45 = *(v3 + 16);
    *v4 = *v3;
    v4[1] = v45;
    v47 = *(v3 + 32);
    v46 = *(v3 + 48);
LABEL_21:
    v4[2] = v47;
    v4[3] = v46;
    return v5;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = a2;
    v7 = 1;
    while (1)
    {
      sub_1BAD1ADC4(v3 + 200, &v58);
      if (!v59)
      {
        break;
      }

      sub_1BAD0B40C(&v58, v60);
      sub_1BAD1A420(v3 + 200, &qword_1EBC2A2B0);
      *(v3 + 200) = 0u;
      *(v3 + 216) = 0u;
      *(v3 + 232) = 0;
      v8 = *(v3 + 32);
      v9 = sub_1BAD4029C(v8);
      v11 = v10;
      v56 = v10;
      v57 = v12;
      v13 = v12;
      v15 = v14;
      v16 = *v3;
      v17 = *(v3 + 8);
      v18 = *(v3 + 16);
      v19 = *(v3 + 24);
      v75.origin.x = *v3;
      v75.origin.y = v17;
      v75.size.width = v18;
      v75.size.height = v19;
      v20 = CGRectGetWidth(v75) - (v11 + v15);
      v76.origin.x = v16;
      v76.origin.y = v17;
      v76.size.width = v18;
      v76.size.height = v19;
      v21 = CGRectGetHeight(v76) - (v9 + v13);
      if (v20 < 0.0)
      {
        v22 = 0.0;
      }

      else
      {
        v22 = v20;
      }

      if (v21 < 0.0)
      {
        v23 = 0.0;
      }

      else
      {
        v23 = v21;
      }

      v24 = v61;
      v25 = v62;
      __swift_project_boxed_opaque_existential_1(v60, v61);
      v26 = (*(v25 + 8))(v8, v24, v25, v22, v23);
      v54 = v27;
      v55 = v26;
      v29 = v28;
      v31 = v30;
      v77.origin.x = v16;
      v77.origin.y = v17;
      v77.size.width = v18;
      v77.size.height = v19;
      v32 = v56 + CGRectGetMinX(v77);
      v78.origin.x = v16;
      v78.origin.y = v17;
      v78.size.width = v18;
      v78.size.height = v19;
      v33 = v9 + CGRectGetMinY(v78);
      sub_1BAD14A3C(v60, &v58);
      sub_1BAD14A3C(&v58, &v63);
      *(&v65 + 1) = floor(v32);
      *&v66 = floor(v33);
      *(&v66 + 1) = ceil(v55);
      *&v67 = ceil(v54);
      __swift_destroy_boxed_opaque_existential_1(&v58);
      *(&v67 + 1) = floor(v9 + v29);
      v68 = floor(v57 + v31);
      __swift_destroy_boxed_opaque_existential_1(v60);
      if (!*(&v64 + 1))
      {
        goto LABEL_20;
      }

      v34 = v66;
      v71 = v65;
      v72 = v66;
      v35 = v67;
      v73 = v67;
      v36 = v68;
      v74 = v68;
      v37 = v63;
      v38 = v64;
      v69 = v63;
      v70 = v64;
      *(v6 + 32) = v65;
      *(v6 + 48) = v34;
      *(v6 + 64) = v35;
      *(v6 + 80) = v36;
      *v6 = v37;
      *(v6 + 16) = v38;
      if (v5 == v7)
      {
        goto LABEL_18;
      }

      v6 += 88;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    sub_1BAD1A420(&v58, &qword_1EBC2A2B0);
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0.0;
LABEL_20:
    sub_1BAD1A420(&v63, &qword_1EBC2AAF0);
    v48 = *(v3 + 208);
    v4[12] = *(v3 + 192);
    v4[13] = v48;
    v4[14] = *(v3 + 224);
    v49 = *(v3 + 144);
    v4[8] = *(v3 + 128);
    v4[9] = v49;
    v50 = *(v3 + 176);
    v4[10] = *(v3 + 160);
    v4[11] = v50;
    v51 = *(v3 + 80);
    v4[4] = *(v3 + 64);
    v4[5] = v51;
    v52 = *(v3 + 112);
    v4[6] = *(v3 + 96);
    v4[7] = v52;
    v53 = *(v3 + 16);
    *v4 = *v3;
    v4[1] = v53;
    v47 = *(v3 + 32);
    v46 = *(v3 + 48);
    v5 = v7 - 1;
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

_OWORD *sub_1BAD41668(_OWORD *result, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (!a2)
  {
LABEL_47:
    v5 = 0;
    v50 = v4[7];
    result[6] = v4[6];
    result[7] = v50;
    result[8] = v4[8];
    v51 = v4[3];
    result[2] = v4[2];
    result[3] = v51;
    v52 = v4[5];
    result[4] = v4[4];
    result[5] = v52;
    v53 = v4[1];
    *result = *v4;
    result[1] = v53;
    return v5;
  }

  v5 = a3;
  v63 = result;
  if (!a3)
  {
LABEL_48:
    v54 = v4[7];
    v55 = v63;
    v63[6] = v4[6];
    v63[7] = v54;
    v63[8] = v4[8];
    v56 = v4[3];
    v63[2] = v4[2];
    v63[3] = v56;
    v57 = v4[5];
    v63[4] = v4[4];
    v63[5] = v57;
    v59 = *v4;
    v58 = v4[1];
LABEL_51:
    *v55 = v59;
    v55[1] = v58;
    return v5;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = a2;
    v7 = 1;
    while (1)
    {
      sub_1BAD1ADC4(v4 + 104, &v70);
      if (!v71)
      {
        break;
      }

      sub_1BAD0B40C(&v70, v72);
      sub_1BAD1A420(v4 + 104, &qword_1EBC2A2B0);
      *(v4 + 104) = 0u;
      *(v4 + 120) = 0u;
      *(v4 + 17) = 0;
      v8 = *(v4 + 5);
      v9 = *(v4 + 48);
      v10 = *(v4 + 7);
      v11 = *(v4 + 64);
      v12 = *v4;
      v13 = *(v4 + 1);
      v14 = *(v4 + 2);
      v15 = *(v4 + 3);
      v87.origin.x = *v4;
      v87.origin.y = v13;
      v87.size.width = v14;
      v87.size.height = v15;
      Width = CGRectGetWidth(v87);
      v17 = v9 ^ 1;
      v18 = (v9 ^ 1) & (Width < v8);
      v69 = v8;
      if (v18)
      {
        v19 = v8;
      }

      else
      {
        v19 = Width;
      }

      v68 = v10;
      if (Width > v10)
      {
        Width = v10;
      }

      if (v11)
      {
        Width = v19;
      }

      if (v18)
      {
        v20 = v19;
      }

      else
      {
        v20 = Width;
      }

      v21 = *(v4 + 9);
      v22 = *(v4 + 80);
      v23 = *(v4 + 11);
      v24 = *(v4 + 96);
      v88.origin.x = v12;
      v88.origin.y = v13;
      v88.size.width = v14;
      v88.size.height = v15;
      Height = CGRectGetHeight(v88);
      v26 = (v22 ^ 1) & (Height < v21);
      if (v26)
      {
        v27 = v21;
      }

      else
      {
        v27 = Height;
      }

      v28 = v23;
      if (Height > v23)
      {
        Height = v23;
      }

      if (v24)
      {
        Height = v27;
      }

      if (v26)
      {
        v29 = v27;
      }

      else
      {
        v29 = Height;
      }

      v30 = v73;
      v31 = v74;
      __swift_project_boxed_opaque_existential_1(v72, v73);
      v32 = (*(v31 + 8))(*(v4 + 4), v30, v31, v20, v29);
      v34 = v33;
      v66 = v36;
      v67 = v35;
      v89.origin.x = v12;
      v89.origin.y = v13;
      v89.size.width = v14;
      v89.size.height = v15;
      MinX = CGRectGetMinX(v89);
      v90.origin.x = v12;
      v90.origin.y = v13;
      v90.size.width = v14;
      v90.size.height = v15;
      MinY = CGRectGetMinY(v90);
      v39 = v68;
      v38 = v69;
      if ((v17 & (v32 < v69)) == 0)
      {
        v38 = v32;
      }

      if (v32 <= v68)
      {
        v39 = v32;
      }

      if (v17 & (v32 < v69) | v11 & 1)
      {
        v40 = v38;
      }

      else
      {
        v40 = v39;
      }

      if (((v22 ^ 1) & (v34 < v21)) != 0)
      {
        v41 = v21;
      }

      else
      {
        v41 = v34;
      }

      if (v34 <= v28)
      {
        v42 = v34;
      }

      else
      {
        v42 = v28;
      }

      if ((v22 ^ 1) & (v34 < v21) | v24 & 1)
      {
        v43 = v41;
      }

      else
      {
        v43 = v42;
      }

      sub_1BAD14A3C(v72, &v70);
      sub_1BAD14A3C(&v70, &v75);
      *(&v77 + 1) = floor(MinX);
      *&v78 = floor(MinY);
      *(&v78 + 1) = ceil(v40);
      *&v79 = ceil(v43);
      __swift_destroy_boxed_opaque_existential_1(&v70);
      *(&v79 + 1) = floor(v67);
      v80 = floor(v66);
      result = __swift_destroy_boxed_opaque_existential_1(v72);
      if (!*(&v76 + 1))
      {
        goto LABEL_50;
      }

      v44 = v78;
      v83 = v77;
      v84 = v78;
      v45 = v79;
      v85 = v79;
      v46 = v80;
      v86 = v80;
      v47 = v75;
      v48 = v76;
      v81 = v75;
      v82 = v76;
      *(v6 + 32) = v77;
      *(v6 + 48) = v44;
      *(v6 + 64) = v45;
      *(v6 + 80) = v46;
      *v6 = v47;
      *(v6 + 16) = v48;
      v5 = a3;
      if (a3 == v7)
      {
        goto LABEL_48;
      }

      v6 += 88;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
        goto LABEL_47;
      }
    }

    sub_1BAD1A420(&v70, &qword_1EBC2A2B0);
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0.0;
LABEL_50:
    sub_1BAD1A420(&v75, &qword_1EBC2AAF0);
    v60 = v4[7];
    v55 = v63;
    v63[6] = v4[6];
    v63[7] = v60;
    v63[8] = v4[8];
    v61 = v4[3];
    v63[2] = v4[2];
    v63[3] = v61;
    v62 = v4[5];
    v63[4] = v4[4];
    v63[5] = v62;
    v59 = *v4;
    v58 = v4[1];
    v5 = v7 - 1;
    goto LABEL_51;
  }

  __break(1u);
  return result;
}

void sub_1BAD41A3C()
{
  v0 = *MEMORY[0x1E69DDC70];
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 traitCollectionWithPreferredContentSizeCategory_];

  qword_1EDBA5BD8 = v3;
}

id static UITraitCollection.unscaledContentSizeCategory.getter()
{
  if (qword_1EDBA5BD0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDBA5BD8;

  return v1;
}

UIFont __swiftcall FontSource.font(compatibleWith:)(UITraitCollection compatibleWith)
{
  v2 = *(v1 + 40);
  if (v2 < 0)
  {
    v5 = *v1;
    v6 = *(v1 + 1);
    v7 = *(v1 + 3);
    v8 = v2 & 0x7F;
    return _sSo6UIFontC5JetUIE13preferredFont10forUseWith010compatibleH0AbC0eG4CaseO_So17UITraitCollectionCtFZ_0(&v5, compatibleWith.super.isa);
  }

  else
  {
    v3 = [objc_opt_self() preferredFontForTextStyle:*v1 compatibleWithTraitCollection:compatibleWith.super.isa];

    return v3;
  }
}

id sub_1BAD41BB8(void *a1)
{
  v2 = *(v1 + 40);
  if (v2 < 0)
  {
    v5 = *v1;
    v6 = *(v1 + 1);
    v7 = *(v1 + 3);
    v8 = v2 & 0x7F;
    return _sSo6UIFontC5JetUIE13preferredFont10forUseWith010compatibleH0AbC0eG4CaseO_So17UITraitCollectionCtFZ_0(&v5, a1);
  }

  else
  {
    v3 = [objc_opt_self() preferredFontForTextStyle:*v1 compatibleWithTraitCollection:a1];

    return v3;
  }
}

double CGFloat.scalingLike(_:with:)(void *a1, void *a2, double a3)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_project_boxed_opaque_existential_1(a1, v5);

  return sub_1BAD42054(v7, a2, v5, v6, a3);
}

void sub_1BAD41CC4(void *a1)
{
  v3 = [a1 preferredContentSizeCategory];
  v4 = sub_1BAD9CF68();
  v6 = v5;
  if (v4 == sub_1BAD9CF68() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_1BAD9DA98();

    if ((v9 & 1) == 0)
    {
      if (qword_1EDBA5BD0 != -1)
      {
        swift_once();
      }

      v10 = *v1;
      v11 = *(v1 + 40);
      if (v11 < 0)
      {
        v16 = *v1;
        v17 = *(v1 + 1);
        v18 = *(v1 + 3);
        LOBYTE(v19) = v11 & 0x7F;
        v13 = qword_1EDBA5BD8;
        v12 = _sSo6UIFontC5JetUIE13preferredFont10forUseWith010compatibleH0AbC0eG4CaseO_So17UITraitCollectionCtFZ_0(&v16, v13);
      }

      else
      {
        v12 = [objc_opt_self() preferredFontForTextStyle:v10 compatibleWithTraitCollection:qword_1EDBA5BD8];
      }

      [v12 lineHeight];
      [v12 leading];
      if (v11 < 0)
      {
        v16 = v10;
        v17 = *(v1 + 1);
        v18 = *(v1 + 3);
        LOBYTE(v19) = v11 & 0x7F;
        v14 = _sSo6UIFontC5JetUIE13preferredFont10forUseWith010compatibleH0AbC0eG4CaseO_So17UITraitCollectionCtFZ_0(&v16, a1);
      }

      else
      {
        v14 = [objc_opt_self() preferredFontForTextStyle:v10 compatibleWithTraitCollection:a1];
      }

      v15 = v14;
      [v14 lineHeight];
      [v15 leading];
    }
  }
}

double CGFloat.scaled(by:compatibleWith:)(__int128 *a1, void *a2, double a3)
{
  v5 = a1[1];
  v12 = *a1;
  v13[0] = v5;
  *(v13 + 9) = *(a1 + 25);
  sub_1BAD427EC(&v12, &v11);
  sub_1BAD41CC4(a2);
  v7 = v6;
  v9 = v8;
  sub_1BAD42824(&v12);
  return v9 * (a3 / v7);
}

char *Array<A>.scalingLike(_:with:)(void *a1, void *a2, uint64_t a3)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_project_boxed_opaque_existential_1(a1, v5);

  return sub_1BAD42258(v7, a2, a3, v5, v6);
}

char *Array<A>.scaled(by:compatibleWith:)(__int128 *a1, void *a2, uint64_t a3)
{
  v5 = a1[1];
  v9 = *a1;
  v10[0] = v5;
  *(v10 + 9) = *(a1 + 25);
  sub_1BAD427EC(&v9, &v8);
  v6 = sub_1BAD4215C(&v9, a2, a3);
  sub_1BAD42824(&v9);
  return v6;
}

double sub_1BAD42054(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, double a5)
{
  v9 = *(a3 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v10);
  CustomTextStyle.scalingValues(compatibleWith:)(a2, a3, a4);
  v15 = v14 * (a5 / v13);
  (*(v9 + 8))(v12, a3);
  return v15;
}

char *sub_1BAD4215C(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1BAD427EC(a1, &v18);
  sub_1BAD41CC4(a2);
  v7 = v6;
  v9 = v8;
  v10 = *(a3 + 16);
  v11 = sub_1BAD1813C(0, v10, 0, MEMORY[0x1E69E7CC0]);
  v12 = v11;
  if (v10)
  {
    v13 = (a3 + 32);
    v14 = *(v11 + 2);
    do
    {
      v15 = *v13;
      v16 = *(v12 + 3);
      if (v14 >= v16 >> 1)
      {
        v12 = sub_1BAD1813C((v16 > 1), v14 + 1, 1, v12);
      }

      *(v12 + 2) = v14 + 1;
      *&v12[8 * v14 + 32] = v9 * (v15 / v7);
      ++v13;
      ++v14;
      --v10;
    }

    while (v10);
  }

  sub_1BAD42824(a1);
  return v12;
}

char *sub_1BAD42258(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v10);
  CustomTextStyle.scalingValues(compatibleWith:)(a2, a4, a5);
  v14 = v13;
  v16 = v15;
  v17 = *(a3 + 16);
  v18 = sub_1BAD1813C(0, v17, 0, MEMORY[0x1E69E7CC0]);
  v19 = v18;
  if (v17)
  {
    v20 = (a3 + 32);
    v21 = *(v18 + 2);
    do
    {
      v22 = *v20;
      v23 = *(v19 + 3);
      if (v21 >= v23 >> 1)
      {
        v19 = sub_1BAD1813C((v23 > 1), v21 + 1, 1, v19);
      }

      *(v19 + 2) = v21 + 1;
      *&v19[8 * v21 + 32] = v16 * (v22 / v14);
      ++v20;
      ++v21;
      --v17;
    }

    while (v17);
  }

  (*(v9 + 8))(v12, a4);
  return v19;
}

uint64_t _s5JetUI10FontSourceO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *a2;
  v8 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  v40 = v2;
  if (v7 < 0)
  {
    if (v13 < 0)
    {
      v43[0] = *a1;
      v43[1] = v2;
      v43[2] = v5;
      v43[3] = v4;
      v43[4] = v6;
      v44 = v7 & 0x7F;
      v32 = v9;
      v41[0] = v9;
      v41[1] = v8;
      v41[2] = v10;
      v41[3] = v11;
      v41[4] = v12;
      v42 = v13 & 0x7F;
      v28 = v9;
      v35 = v8;
      v37 = v6;
      v29 = v2;
      v30 = v3;
      sub_1BAD42970(v28, v8, v10, v11, v12, v13);
      sub_1BAD42970(v30, v29, v5, v4, v6, v7);
      sub_1BAD42970(v30, v29, v5, v4, v6, v7);
      sub_1BAD42970(v32, v35, v10, v11, v12, v13);
      v27 = _s5JetUI11FontUseCaseO2eeoiySbAC_ACtFZ_0(v43, v41);
      sub_1BAD32580(v30, v40, v5, v4, v37, v7);
      sub_1BAD32580(v32, v35, v10, v11, v12, v13);
      sub_1BAD32580(v32, v35, v10, v11, v12, v13);
      sub_1BAD32580(v30, v40, v5, v4, v37, v7);
      return v27;
    }

    goto LABEL_9;
  }

  if (v13 < 0)
  {
LABEL_9:
    v22 = *(a2 + 16);
    v23 = *(a2 + 24);
    v24 = *(a2 + 32);
    v39 = *(a1 + 40);
    v25 = *(a2 + 8);
    v26 = *a1;
    sub_1BAD42970(v3, v2, v5, v4, v6, v39);
    sub_1BAD42970(v9, v25, v22, v23, v24, v13);
    sub_1BAD32580(v26, v40, v5, v4, v6, v39);
    sub_1BAD32580(v9, v25, v22, v23, v24, v13);
    return 0;
  }

  v38 = *(a2 + 40);
  v14 = *(a2 + 8);
  v15 = *(a2 + 32);
  v33 = *(a1 + 24);
  v36 = *(a1 + 32);
  v16 = *a1;
  v17 = sub_1BAD9CF68();
  v19 = v18;
  if (v17 == sub_1BAD9CF68() && v19 == v20)
  {
    v34 = 1;
  }

  else
  {
    v34 = sub_1BAD9DA98();
  }

  sub_1BAD42970(v9, v14, v10, v11, v15, v38);
  sub_1BAD42970(v16, v40, v5, v33, v36, v7);
  sub_1BAD42970(v16, v40, v5, v33, v36, v7);
  sub_1BAD42970(v9, v14, v10, v11, v15, v38);

  sub_1BAD32580(v16, v40, v5, v33, v36, v7);
  sub_1BAD32580(v9, v14, v10, v11, v15, v38);
  sub_1BAD32580(v9, v14, v10, v11, v15, v38);
  sub_1BAD32580(v16, v40, v5, v33, v36, v7);
  return v34;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1BAD42880(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3F && *(a1 + 41))
  {
    return (*a1 + 63);
  }

  v3 = ((*(a1 + 40) >> 1) & 0x3E | (*(a1 + 40) >> 7)) ^ 0x3F;
  if (v3 >= 0x3E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1BAD428D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3E)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 63;
    if (a3 >= 0x3F)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3F)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 32) = 0;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 40) = 4 * (((-a2 >> 1) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

id sub_1BAD42970(id a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 < 0)
  {
    return sub_1BAD1120C(a1, a2, a3, a4, a5, a6 & 0x7F);
  }

  else
  {
    return a1;
  }
}

uint64_t static Interpolatable.interpolate(between:and:following:forInput:)(uint64_t a1, uint64_t a2, id a3, uint64_t a4, uint64_t a5, double a6)
{
  *&a6 = a6;
  [a3 _solveForInput_];
  v10.n128_f64[0] = v10.n128_f32[0];
  v11 = *(a5 + 8);

  return v11(a1, a2, a4, a5, v10);
}

uint64_t sub_1BAD42A50(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void))
{
  v8 = a7();
  swift_unknownObjectRelease();

  return v8;
}

uint64_t sub_1BAD42AA4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return 0;
  }

  v8 = sub_1BAD42B40(a2, a3, a4, a1);

  return v8;
}

uint64_t sub_1BAD42B40(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a4;
  v29 = a3;
  v26 = *v4;
  v7 = sub_1BAD9C978();
  v8 = sub_1BAD9D598();
  v24 = *(v8 - 8);
  v25 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  v11 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - v13;
  swift_beginAccess();
  v27 = a1;
  v30 = a1;
  v31 = a2;
  type metadata accessor for CollectionContent.SupplementaryViewProvider();

  sub_1BAD9CEB8();

  v15 = v32;
  v16 = v33;
  v17 = v34;
  swift_endAccess();
  if (v17 == 255)
  {
    v35 = 0;
    v36 = 0xE000000000000000;
    sub_1BAD9D7E8();
    v30 = v4;
    sub_1BAD9DA78();
    MEMORY[0x1BFB026B0](0xD000000000000033, 0x80000001BADAA6B0);
    MEMORY[0x1BFB026B0](v27, a2);
    MEMORY[0x1BFB026B0](544497952, 0xE400000000000000);
    sub_1BAD9C408();
    sub_1BAD445EC();
    v20 = sub_1BAD9DA48();
    MEMORY[0x1BFB026B0](v20);
  }

  else
  {
    if (v17)
    {
      v18 = v15(v4, v29, v28);
      sub_1BAD44644(v15, v16, v17);
      return v18;
    }

    v23 = v4;
    sub_1BAD9C3F8();
    sub_1BAD9C5F8();
    if ((*(v11 + 48))(v10, 1, v7) != 1)
    {
      (*(v11 + 32))(v14, v10, v7);
      v18 = v15(v14, v29, v28);
      sub_1BAD44644(v15, v16, v17);
      (*(v11 + 8))(v14, v7);
      return v18;
    }

    (*(v24 + 8))(v10, v25);
    v35 = 0;
    v36 = 0xE000000000000000;
    sub_1BAD9D7E8();
    v30 = v23;
    sub_1BAD9DA78();
    MEMORY[0x1BFB026B0](0xD00000000000001ALL, 0x80000001BADAA6F0);
    MEMORY[0x1BFB026B0](v27, a2);
    MEMORY[0x1BFB026B0](544497952, 0xE400000000000000);
    sub_1BAD9C408();
    sub_1BAD445EC();
    v21 = sub_1BAD9DA48();
    MEMORY[0x1BFB026B0](v21);
  }

  result = sub_1BAD9D8B8();
  __break(1u);
  return result;
}

uint64_t sub_1BAD42FCC(uint64_t a1)
{
  swift_beginAccess();
  if (*(v1 + 40) == 1 && (v3 = [*(v1 + 32) window]) != 0)
  {

    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return CollectionContent.apply(_:animatingDifferences:completion:)(a1, v4, 0, 0);
}

uint64_t *CollectionContent.__allocating_init<A>(_:collectionView:cellProvider:)(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  return sub_1BAD43090(a1, a2, a3, a4, &unk_1F38E9890, sub_1BAD44234);
}

{
  return sub_1BAD43090(a1, a2, a3, a4, &unk_1F38E98B8, sub_1BAD4429C);
}

uint64_t *sub_1BAD43090(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *a1;
  v13 = swift_allocObject();
  *(v13 + 16) = *(v6 + 80);
  *(v13 + 32) = a3;
  *(v13 + 40) = a4;
  *(v13 + 48) = a1;
  v14 = *(v12 + 80);
  v15 = *(v12 + 88);
  swift_allocObject();
  v16 = swift_unknownObjectRetain();
  v17 = sub_1BAD43D4C(v16, a2, a6, v13, v14, v15);
  swift_unknownObjectRelease();

  return v17;
}

uint64_t sub_1BAD43198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, char *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, void (*a11)(uint64_t, __n128))
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a9);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v22 - v18;
  a11(a1, v17);
  v20 = a4(a1, a2, v19, a3);
  (*(v16 + 8))(v19, v15);
  return v20;
}

uint64_t CollectionContent.animatePresenterChanges.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 40) = a1;
  return result;
}

uint64_t CollectionContent.animateReloadTriggers.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 41) = a1;
  return result;
}

uint64_t sub_1BAD4345C()
{
  swift_beginAccess();
  type metadata accessor for CollectionContent.SupplementaryViewProvider();
  sub_1BAD9CEA8();

  sub_1BAD9CEC8();
  return swift_endAccess();
}

uint64_t CollectionContent.apply(_:animatingDifferences:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = *(v7 + 80);
  v9[3] = *(v7 + 88);
  v9[4] = a3;
  v9[5] = a4;
  v9[6] = v8;
  sub_1BAD31584(a3);

  sub_1BAD9C608();
}

uint64_t sub_1BAD436BC(void (*a1)(void))
{
  if (a1)
  {
    a1();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1BAD9C6F8();
  }

  return result;
}

uint64_t CollectionContent.indexPath(forSection:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BAD9C618();
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    MEMORY[0x1BFB01A50](0, v2);
    v4 = 0;
  }

  v5 = sub_1BAD9C408();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1, v4, 1, v5);
}

uint64_t CollectionContent.deinit()
{

  return v0;
}

uint64_t CollectionContent.__deallocating_deinit()
{
  CollectionContent.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1BAD4387C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BAD9CED8();

  return sub_1BAD438D8(a1, v6, a2, a3);
}

unint64_t sub_1BAD438D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = sub_1BAD9CF28();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_1BAD43A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_1BAD9D208())
  {
    sub_1BAD9D918();
    v13 = sub_1BAD9D908();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  result = sub_1BAD9D208();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_1BAD9D1E8())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1BAD9D808();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1BAD4387C(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t *sub_1BAD43D4C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v33 = a3;
  v34 = a2;
  v38 = a1;
  v35 = *v7;
  v11 = *(v35 + 80);
  v12 = sub_1BAD9C978();
  v13 = *(v35 + 88);
  v41[0] = v12;
  v41[1] = sub_1BAD9C978();
  v41[2] = swift_getWitnessTable();
  v41[3] = swift_getWitnessTable();
  v36 = sub_1BAD9C558();
  v14 = sub_1BAD9CAF8();
  v39 = *(v14 - 8);
  v40 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v37 = &v32 - v15;
  v41[0] = v12;
  sub_1BAD9C648();
  v16 = swift_allocObject();
  v16[2] = v11;
  v16[3] = v13;
  v16[4] = a5;
  v16[5] = a6;
  v17 = v34;
  v16[6] = v33;
  v16[7] = a4;
  v18 = v17;

  v7[2] = sub_1BAD9C5C8();
  v7[4] = v18;
  v19 = type metadata accessor for CollectionContent.SupplementaryViewProvider();
  v20 = v18;
  v21 = MEMORY[0x1E69E6158];
  swift_getTupleTypeMetadata2();
  v22 = sub_1BAD9D1C8();
  v23 = sub_1BAD43A60(v22, v21, v19, MEMORY[0x1E69E6168]);

  v7[3] = v23;
  *(v7 + 20) = 1;
  sub_1BAD9C718();
  v7[6] = sub_1BAD9C708();
  v24 = v7[2];
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = swift_allocObject();
  v26[2] = v11;
  v26[3] = v13;
  v26[4] = a5;
  v26[5] = a6;
  v26[6] = v25;
  v27 = v24;

  sub_1BAD9C5D8();

  (*(a6 + 32))(a5, a6);
  v28 = swift_allocObject();
  *(v28 + 16) = a5;
  *(v28 + 24) = a6;
  v29 = swift_allocObject();
  v29[2] = a5;
  v29[3] = a6;
  v29[4] = sub_1BAD44530;
  v29[5] = v28;
  sub_1BAD9C718();
  swift_getWitnessTable();
  sub_1BAD996CC();
  v30 = v37;
  sub_1BAD9C998();

  __swift_destroy_boxed_opaque_existential_1(v41);
  (*(v39 + 8))(v30, v40);
  (*(a6 + 40))(a5, a6);
  return v7;
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BAD443E0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1BAD44434(uint64_t a1, unsigned int a2)
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

uint64_t sub_1BAD4447C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t (*sub_1BAD44530(uint64_t a1))(uint64_t a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = *(v1 + 16);
  *(v3 + 32) = a1;

  return sub_1BAD445C8;
}

unint64_t sub_1BAD445EC()
{
  result = qword_1EBC2AB00;
  if (!qword_1EBC2AB00)
  {
    sub_1BAD9C408();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2AB00);
  }

  return result;
}

uint64_t sub_1BAD44644(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1BAD4465C();
  }

  return result;
}

double sub_1BAD44664()
{
  sub_1BAD1A550(v0, v6);
  Constrain.Placements.next()(v3);
  sub_1BAD1A83C(v6);
  if (v4)
  {
    v1 = v5;
    sub_1BAD17170(v3);
  }

  else
  {
    if (qword_1EBC29BA0 != -1)
    {
      swift_once();
    }

    v1 = *&qword_1EBC29BB8;
  }

  return ceil(v1);
}

double sub_1BAD44724()
{
  sub_1BAD47F90(v0, v6);
  Resize.Placements.next()(v3);
  sub_1BAD47FEC(v6);
  if (v4)
  {
    v1 = v5;
    sub_1BAD17170(v3);
  }

  else
  {
    if (qword_1EBC29BA0 != -1)
    {
      swift_once();
    }

    v1 = *&qword_1EBC29BB8;
  }

  return ceil(v1);
}

double sub_1BAD447E8(void *a1, CGFloat a2, CGFloat a3)
{
  v29.origin.x = 0.0;
  v29.origin.y = 0.0;
  v29.size.width = a2;
  v29.size.height = a3;
  if (CGRectGetWidth(v29) == 1.79769313e308)
  {
    a2 = 0.0;
  }

  v30.origin.x = 0.0;
  v30.origin.y = 0.0;
  v30.size.width = a2;
  v30.size.height = a3;
  if (CGRectGetHeight(v30) == 1.79769313e308)
  {
    a3 = 0.0;
  }

  v7 = *(v3 + 40);
  v8 = *(v3 + 48);
  v9 = *(v3 + 56);
  v10 = *(v3 + 64);
  v11 = *(v3 + 72);
  v12 = *(v3 + 80);
  v13 = *(v3 + 88);
  v14 = *(v3 + 96);
  sub_1BAD14A3C(v3, v18);
  v19[0] = 0;
  v19[1] = 0;
  memset(v27, 0, sizeof(v27));
  v28 = 0;
  *&v19[2] = a2;
  *&v19[3] = a3;
  v19[4] = a1;
  v19[5] = v7;
  v20 = v8;
  v21 = v9;
  v22 = v10;
  v23 = v11;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v15 = a1;
  sub_1BAD1E530(v27);
  sub_1BAD1A480(v18, v27);
  v16 = sub_1BAD44664();
  sub_1BAD1A83C(v19);
  return v16;
}

double sub_1BAD4494C(void *a1, CGFloat a2, CGFloat a3)
{
  v15.origin.x = 0.0;
  v15.origin.y = 0.0;
  v15.size.width = a2;
  v15.size.height = a3;
  if (CGRectGetWidth(v15) == 1.79769313e308)
  {
    a2 = 0.0;
  }

  v16.origin.x = 0.0;
  v16.origin.y = 0.0;
  v16.size.width = a2;
  v16.size.height = a3;
  if (CGRectGetHeight(v16) == 1.79769313e308)
  {
    a3 = 0.0;
  }

  sub_1BAD40A84(v3 + 40, &v12);
  sub_1BAD14A3C(v3, v10);
  v11[0] = 0;
  v11[1] = 0;
  memset(v13, 0, sizeof(v13));
  *&v11[2] = a2;
  *&v11[3] = a3;
  v14 = 0;
  v11[4] = a1;
  v7 = a1;
  sub_1BAD1E530(v13);
  sub_1BAD1A480(v10, v13);
  v8 = Margins.Placements.measure.getter();
  sub_1BAD407E4(v11);
  return v8;
}

double sub_1BAD44A6C(void *a1, CGFloat a2, CGFloat a3)
{
  v31.origin.x = 0.0;
  v31.origin.y = 0.0;
  v31.size.width = a2;
  v31.size.height = a3;
  if (CGRectGetWidth(v31) == 1.79769313e308)
  {
    a2 = 0.0;
  }

  v32.origin.x = 0.0;
  v32.origin.y = 0.0;
  v32.size.width = a2;
  v32.size.height = a3;
  Height = CGRectGetHeight(v32);
  v8 = *(v3 + 168);
  v30 = 1;
  v9 = *(v8 + 16);
  v10 = a1;

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A7F0);
    v11 = sub_1BAD9D1D8();
    *(v11 + 16) = v9;
    v12 = 32;
    do
    {
      v13 = v11 + v12;
      *v13 = 0uLL;
      *(v13 + 16) = 0uLL;
      *(v13 + 32) = 1;
      v12 += 40;
      --v9;
    }

    while (v9);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v24 = 0uLL;
  if (Height == 1.79769313e308)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = a3;
  }

  *&v25 = a2;
  *(&v25 + 1) = v14;
  *&v26 = v10;
  *(&v26 + 1) = v8;
  *v27 = v11;
  v28 = 0;
  memset(&v27[8], 0, 32);
  v29 = v30;
  v21 = *&v27[16];
  v22 = 0uLL;
  v23 = v30;
  v17 = v24;
  v18 = v25;
  v19 = v26;
  v20 = *v27;
  DisjointStack.Placements.union.getter(v16);
  sub_1BAD47E84(&v24);
  return ceil(v16[2]);
}

double sub_1BAD44C08(void *a1, CGFloat a2, CGFloat a3)
{
  v18.origin.x = 0.0;
  v18.origin.y = 0.0;
  v18.size.width = a2;
  v18.size.height = a3;
  if (CGRectGetWidth(v18) == 1.79769313e308)
  {
    a2 = 0.0;
  }

  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  v19.size.width = a2;
  v19.size.height = a3;
  if (CGRectGetHeight(v19) == 1.79769313e308)
  {
    a3 = 0.0;
  }

  sub_1BAD47F34(v3 + 40, &v12);
  sub_1BAD47F34(v3 + 88, &v13);
  sub_1BAD47F34(v3 + 136, &v14);
  sub_1BAD47F34(v3 + 184, &v15);
  sub_1BAD14A3C(v3, v10);
  v11[0] = 0;
  v11[1] = 0;
  memset(v16, 0, sizeof(v16));
  *&v11[2] = a2;
  *&v11[3] = a3;
  v17 = 0;
  v11[4] = a1;
  v7 = a1;
  sub_1BAD1E530(v16);
  sub_1BAD1A480(v10, v16);
  v8 = sub_1BAD44724();
  sub_1BAD47FEC(v11);
  return v8;
}

double sub_1BAD44D4C(void *a1, CGFloat a2, CGFloat a3)
{
  v15.origin.x = 0.0;
  v15.origin.y = 0.0;
  v15.size.width = a2;
  v15.size.height = a3;
  if (CGRectGetWidth(v15) == 1.79769313e308)
  {
    a2 = 0.0;
  }

  v16.origin.x = 0.0;
  v16.origin.y = 0.0;
  v16.size.width = a2;
  v16.size.height = a3;
  if (CGRectGetHeight(v16) == 1.79769313e308)
  {
    a3 = 0.0;
  }

  v7 = *(v3 + 40);
  sub_1BAD14A3C(v3, v11);
  v12[0] = 0;
  v12[1] = 0;
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  *&v12[2] = a2;
  *&v12[3] = a3;
  v12[4] = a1;
  v12[5] = v7;
  v8 = a1;
  sub_1BAD1E530(v13);
  sub_1BAD1A480(v11, v13);
  v9 = Center.Placements.measure.getter();
  sub_1BAD1E500(v12);
  return v9;
}

double sub_1BAD44E5C(uint64_t a1, CGFloat a2, CGFloat a3)
{
  v17.origin.x = 0.0;
  v17.origin.y = 0.0;
  v17.size.width = a2;
  v17.size.height = a3;
  if (CGRectGetWidth(v17) == 1.79769313e308)
  {
    a2 = 0.0;
  }

  v18.origin.x = 0.0;
  v18.origin.y = 0.0;
  v18.size.width = a2;
  v18.size.height = a3;
  if (CGRectGetHeight(v18) == 1.79769313e308)
  {
    a3 = 0.0;
  }

  v7 = v3[3];
  v8 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v7);
  (*(v8 + 16))(v14, a1, v7, v8, 0.0, 0.0, a2, a3);
  v9 = v15;
  v10 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  (*(v10 + 16))(v13, v9, v10);
  v11 = ceil(*&v13[2]);
  sub_1BAD48260(v14);
  return v11;
}

double sub_1BAD44FA0(void *a1, CGFloat a2, CGFloat a3)
{
  v15.origin.x = 0.0;
  v15.origin.y = 0.0;
  v15.size.width = a2;
  v15.size.height = a3;
  if (CGRectGetWidth(v15) == 1.79769313e308)
  {
    a2 = 0.0;
  }

  v16.origin.x = 0.0;
  v16.origin.y = 0.0;
  v16.size.width = a2;
  v16.size.height = a3;
  if (CGRectGetHeight(v16) == 1.79769313e308)
  {
    a3 = 0.0;
  }

  *&v11 = a2;
  *(&v11 + 1) = a3;
  *&v12 = a1;
  *(&v12 + 1) = *(v3 + 88);
  *&v13 = 0;

  v7 = a1;
  v17.origin.x = 0.0;
  v17.origin.y = 0.0;
  v17.size.width = a2;
  v17.size.height = a3;
  *(&v13 + 1) = CGRectGetMinX(v17);
  HorizontalStack.Placements.measure.getter();
  v9 = v8;
  v14[0] = 0uLL;
  v14[1] = v11;
  v14[2] = v12;
  v14[3] = v13;
  sub_1BAD17140(v14);
  return v9;
}

double sub_1BAD450AC(void *a1, CGFloat a2, CGFloat a3)
{
  v15.origin.x = 0.0;
  v15.origin.y = 0.0;
  v15.size.width = a2;
  v15.size.height = a3;
  if (CGRectGetWidth(v15) == 1.79769313e308)
  {
    a2 = 0.0;
  }

  v16.origin.x = 0.0;
  v16.origin.y = 0.0;
  v16.size.width = a2;
  v16.size.height = a3;
  if (CGRectGetHeight(v16) == 1.79769313e308)
  {
    a3 = 0.0;
  }

  *&v11 = a2;
  *(&v11 + 1) = a3;
  *&v12 = a1;
  *(&v12 + 1) = *(v3 + 104);
  *&v13 = 0;

  v7 = a1;
  v17.origin.x = 0.0;
  v17.origin.y = 0.0;
  v17.size.width = a2;
  v17.size.height = a3;
  *(&v13 + 1) = CGRectGetMinY(v17);
  VerticalStack.Placements.measure.getter();
  v9 = v8;
  v14[0] = 0uLL;
  v14[1] = v11;
  v14[2] = v12;
  v14[3] = v13;
  sub_1BAD480F8(v14);
  return v9;
}

double sub_1BAD451B8(void *a1, CGFloat a2, CGFloat a3)
{
  v32.origin.x = 0.0;
  v32.origin.y = 0.0;
  v32.size.width = a2;
  v32.size.height = a3;
  if (CGRectGetWidth(v32) == 1.79769313e308)
  {
    a2 = 0.0;
  }

  v33.origin.x = 0.0;
  v33.origin.y = 0.0;
  v33.size.width = a2;
  v33.size.height = a3;
  Height = CGRectGetHeight(v33);
  v8 = *(v3 + 168);
  v31 = 1;
  v9 = *(v8 + 16);
  v10 = a1;

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A7F0);
    v11 = sub_1BAD9D1D8();
    v12 = v11;
    *(v11 + 16) = v9;
    v13 = 32;
    do
    {
      v14 = v11 + v13;
      *v14 = 0uLL;
      *(v14 + 16) = 0uLL;
      *(v14 + 32) = 1;
      v13 += 40;
      --v9;
    }

    while (v9);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v31;
  if (Height == 1.79769313e308)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = a3;
  }

  v20 = 0;
  v21 = 0;
  v22 = a2;
  v23 = v16;
  v24 = v10;
  v25 = v8;
  v26 = v12;
  v27 = 0u;
  v28 = 0u;
  v29 = 0;
  v30 = v31;
  DisjointStack.Placements.union.getter(v19);
  v17 = ceil(v19[2]);
  v20 = 0;
  v21 = 0;
  v22 = a2;
  v23 = v16;
  v24 = v10;
  v25 = v8;
  v26 = v12;
  v27 = 0u;
  v28 = 0u;
  v29 = 0;
  v30 = v15;
  sub_1BAD47E84(&v20);
  return v17;
}

JUMeasurements __swiftcall PrimitiveLayout.measure(toFit:with:)(CGSize toFit, UITraitCollection with)
{
  v4 = v3;
  v5 = v2;
  height = toFit.height;
  width = toFit.width;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v26 - v11;
  v27.origin.x = 0.0;
  v27.origin.y = 0.0;
  v27.size.width = width;
  v27.size.height = height;
  if (CGRectGetWidth(v27) == 1.79769313e308)
  {
    width = 0.0;
  }

  v28.origin.x = 0.0;
  v28.origin.y = 0.0;
  v28.size.width = width;
  v28.size.height = height;
  if (CGRectGetHeight(v28) == 1.79769313e308)
  {
    v13.n128_u64[0] = 0;
  }

  else
  {
    v13.n128_f64[0] = height;
  }

  (*(v4 + 40))(with.super.isa, v5, v4, 0.0, 0.0, width, v13);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  (*(v10 + 8))(v12, AssociatedTypeWitness);
  v22 = v15;
  v23 = v17;
  v24 = v19;
  v25 = v21;
  result.var3 = v25;
  result.var2 = v24;
  result.var1 = v23;
  result.var0 = v22;
  return result;
}

uint64_t sub_1BAD45550(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v11 = *(v5 + 40);
  v12 = *(v5 + 48);
  v13 = *(v5 + 56);
  v14 = *(v5 + 64);
  v15 = *(v5 + 72);
  v16 = *(v5 + 80);
  v17 = *(v5 + 88);
  v18 = *(v5 + 96);
  sub_1BAD14A3C(v5, v50);
  memset(v59, 0, sizeof(v59));
  v60 = 0;
  *v51 = a2;
  *&v51[1] = a3;
  v29 = a5;
  *&v51[2] = a4;
  *&v51[3] = a5;
  v51[4] = a1;
  v51[5] = v11;
  v52 = v12;
  v53 = v13;
  v54 = v14;
  v55 = v15;
  v56 = v16;
  v57 = v17;
  v58 = v18;
  v19 = a1;
  sub_1BAD1E530(v59);
  sub_1BAD1A480(v50, v59);
  sub_1BAD1A550(v51, v50);
  Constrain.Placements.next()(&v44);
  while (*(&v45 + 1))
  {
    v40 = v46;
    v41 = v47;
    v42 = v48;
    v43 = v49;
    v39[0] = v44;
    v39[1] = v45;
    sub_1BAD14A3C(v39, v36);
    v20 = v37;
    v21 = v38;
    __swift_project_boxed_opaque_existential_1(v36, v37);
    x = *(&v40 + 1);
    width = *(&v41 + 1);
    y = *&v41;
    height = *&v42;
    if ([v19 layoutDirection] == 1)
    {
      CGAffineTransformMakeScale(&v35, -1.0, 1.0);
      ty = v35.ty;
      tx = v35.tx;
      v30 = *&v35.c;
      v31 = *&v35.a;
      v61.origin.x = a2;
      v61.origin.y = a3;
      v61.size.width = a4;
      v61.size.height = v29;
      *rect = x;
      MinX = CGRectGetMinX(v61);
      v62.origin.x = a2;
      v62.origin.y = a3;
      v62.size.width = a4;
      v62.size.height = v29;
      MaxX = CGRectGetMaxX(v62);
      *&v35.a = v31;
      *&v35.c = v30;
      v35.tx = tx;
      v35.ty = ty;
      CGAffineTransformTranslate(&rect[1], &v35, -(MinX + MaxX), 0.0);
      v35 = *&rect[1];
      *&v63.origin.x = rect[0];
      v63.origin.y = y;
      v63.size.width = width;
      v63.size.height = height;
      v64 = CGRectApplyAffineTransform(v63, &v35);
      x = v64.origin.x;
      y = v64.origin.y;
      width = v64.size.width;
      height = v64.size.height;
    }

    (*(v21 + 16))(v19, v20, v21, x, y, width, height);
    sub_1BAD17170(v39);
    __swift_destroy_boxed_opaque_existential_1(v36);
    Constrain.Placements.next()(&v44);
  }

  sub_1BAD1A83C(v50);
  return sub_1BAD1A83C(v51);
}

uint64_t sub_1BAD4580C(void *a1, double a2, double a3, double a4, double a5)
{
  sub_1BAD40A84(v5 + 40, &v73);
  sub_1BAD14A3C(v5, &v68);
  memset(v74, 0, sizeof(v74));
  *v43 = a2;
  *&v43[8] = a3;
  *v72 = a2;
  *&v72[1] = a3;
  *&v43[16] = a4;
  *&v43[24] = a5;
  *&v72[2] = a4;
  *&v72[3] = a5;
  v75 = 0;
  v72[4] = a1;
  v11 = a1;
  sub_1BAD1E530(v74);
  sub_1BAD1A480(&v68, v74);
  sub_1BAD40588(v72, &v68);
  sub_1BAD1ADC4(v70, &v52);
  if (*&v52.d)
  {
    while (1)
    {
      sub_1BAD1A480(&v52, &v56);
      sub_1BAD1E530(v70);
      memset(v70, 0, sizeof(v70));
      v71 = 0;
      v12 = v69;
      v13 = sub_1BAD4029C(v69);
      v49 = v14;
      rect[0] = v15;
      v16 = v15;
      origin = v68.origin;
      width = v68.size.width;
      height = v68.size.height;
      v21 = CGRectGetWidth(v68) - (v14 + v20);
      v76.origin = origin;
      v76.size.width = width;
      v76.size.height = height;
      v22 = CGRectGetHeight(v76) - (v13 + v16);
      v23 = v21 < 0.0 ? 0.0 : v21;
      v24 = v22 < 0.0 ? 0.0 : v22;
      v25 = *(&v57 + 1);
      v26 = v58;
      __swift_project_boxed_opaque_existential_1(&v56, *(&v57 + 1));
      v47 = (*(v26 + 8))(v12, v25, v26, v23, v24);
      v45 = v27;
      v29 = v28;
      v31 = v30;
      v77.origin = origin;
      v77.size.width = width;
      v77.size.height = height;
      v32 = v49 + CGRectGetMinX(v77);
      v78.origin = origin;
      v78.size.width = width;
      v78.size.height = height;
      v33 = v13 + CGRectGetMinY(v78);
      sub_1BAD14A3C(&v56, &v52);
      sub_1BAD14A3C(&v52, &v62);
      *(&v64 + 1) = floor(v32);
      *&v65 = floor(v33);
      *(&v65 + 1) = ceil(v47);
      *&v66 = ceil(v45);
      __swift_destroy_boxed_opaque_existential_1(&v52);
      *(&v66 + 1) = floor(v13 + v29);
      v67 = floor(rect[0] + v31);
      __swift_destroy_boxed_opaque_existential_1(&v56);
      if (!*(&v63 + 1))
      {
        break;
      }

      v58 = v64;
      v59 = v65;
      v60 = v66;
      v61 = v67;
      v56 = v62;
      v57 = v63;
      sub_1BAD14A3C(&v56, v53);
      v34 = v54;
      v35 = v55;
      __swift_project_boxed_opaque_existential_1(v53, v54);
      x = *(&v58 + 1);
      v38 = *(&v59 + 1);
      y = *&v59;
      v39 = *&v60;
      if ([v11 layoutDirection] == 1)
      {
        CGAffineTransformMakeScale(&v52, -1.0, 1.0);
        ty = v52.ty;
        tx = v52.tx;
        v44 = *&v52.c;
        v46 = *&v52.a;
        rect[0] = x;
        MinX = CGRectGetMinX(*v43);
        MaxX = CGRectGetMaxX(*v43);
        *&v52.a = v46;
        *&v52.c = v44;
        v52.tx = tx;
        v52.ty = ty;
        CGAffineTransformTranslate(&rect[1], &v52, -(MinX + MaxX), 0.0);
        v52 = *&rect[1];
        v79.origin.x = rect[0];
        v79.origin.y = y;
        v79.size.width = v38;
        v79.size.height = v39;
        v80 = CGRectApplyAffineTransform(v79, &v52);
        x = v80.origin.x;
        y = v80.origin.y;
        v38 = v80.size.width;
        v39 = v80.size.height;
      }

      (*(v35 + 16))(v11, v34, v35, x, y, v38, v39);
      sub_1BAD17170(&v56);
      __swift_destroy_boxed_opaque_existential_1(v53);
      sub_1BAD1ADC4(v70, &v52);
      if (!*&v52.d)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    sub_1BAD1E530(&v52);
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0.0;
  }

  sub_1BAD407E4(&v68);
  return sub_1BAD407E4(v72);
}

uint64_t sub_1BAD45C28(void *a1, double a2, double a3, double a4, double a5)
{
  *&v21[16] = a4;
  *&v21[24] = a5;
  *v21 = a2;
  *&v21[8] = a3;
  v6 = *(v5 + 168);
  v56 = 1;
  v7 = *(v6 + 16);
  v8 = a1;

  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A7F0);
    v9 = sub_1BAD9D1D8();
    *(v9 + 16) = v7;
    v10 = 32;
    do
    {
      v11 = v9 + v10;
      *v11 = 0uLL;
      *(v11 + 16) = 0uLL;
      *(v11 + 32) = 1;
      v10 += 40;
      --v7;
    }

    while (v7);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v51[0] = *v21;
  v51[1] = *&v21[16];
  *&v52 = v8;
  *(&v52 + 1) = v6;
  *v53 = v9;
  v54 = 0;
  memset(&v53[8], 0, 32);
  v55 = v56;
  v48 = *&v53[16];
  v49 = 0uLL;
  v50 = v56;
  v44 = *v21;
  v45 = *&v21[16];
  v46 = v52;
  v47 = *v53;
  sub_1BAD47E28(v51, &v31);
  DisjointStack.Placements.next()(&v38);
  while (*(&v39 + 1))
  {
    v33 = v40;
    v34 = v41;
    v35 = v42;
    *&v36 = v43;
    v31 = v38;
    v32 = v39;
    sub_1BAD14A3C(&v31, v28);
    v12 = v29;
    v13 = v30;
    __swift_project_boxed_opaque_existential_1(v28, v29);
    x = *(&v33 + 1);
    width = *(&v34 + 1);
    y = *&v34;
    height = *&v35;
    if ([v8 layoutDirection] == 1)
    {
      CGAffineTransformMakeScale(&v27, -1.0, 1.0);
      ty = v27.ty;
      tx = v27.tx;
      v22 = *&v27.c;
      v23 = *&v27.a;
      *rect = x;
      MinX = CGRectGetMinX(*v21);
      MaxX = CGRectGetMaxX(*v21);
      *&v27.a = v23;
      *&v27.c = v22;
      v27.tx = tx;
      v27.ty = ty;
      CGAffineTransformTranslate(&rect[1], &v27, -(MinX + MaxX), 0.0);
      v27 = *&rect[1];
      *&v57.origin.x = rect[0];
      v57.origin.y = y;
      v57.size.width = width;
      v57.size.height = height;
      v58 = CGRectApplyAffineTransform(v57, &v27);
      x = v58.origin.x;
      y = v58.origin.y;
      width = v58.size.width;
      height = v58.size.height;
    }

    (*(v13 + 16))(v8, v12, v13, x, y, width, height);
    sub_1BAD17170(&v31);
    __swift_destroy_boxed_opaque_existential_1(v28);
    DisjointStack.Placements.next()(&v38);
  }

  v35 = v48;
  v36 = v49;
  v37 = v50;
  v31 = v44;
  v32 = v45;
  v33 = v46;
  v34 = v47;
  sub_1BAD31ACC(&v31);
  return sub_1BAD47E84(v51);
}

uint64_t sub_1BAD45F18(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  sub_1BAD47F34(v5 + 40, &v44);
  sub_1BAD47F34(v5 + 88, &v45);
  sub_1BAD47F34(v5 + 136, &v46);
  sub_1BAD47F34(v5 + 184, &v47);
  sub_1BAD14A3C(v5, v42);
  memset(v48, 0, sizeof(v48));
  *v43 = a2;
  *&v43[1] = a3;
  v21 = a5;
  *&v43[2] = a4;
  *&v43[3] = a5;
  v49 = 0;
  v43[4] = a1;
  v11 = a1;
  sub_1BAD1E530(v48);
  sub_1BAD1A480(v42, v48);
  sub_1BAD47F90(v43, v42);
  Resize.Placements.next()(&v36);
  while (*(&v37 + 1))
  {
    v32 = v38;
    v33 = v39;
    v34 = v40;
    v35 = v41;
    v31[0] = v36;
    v31[1] = v37;
    sub_1BAD14A3C(v31, v28);
    v12 = v29;
    v13 = v30;
    __swift_project_boxed_opaque_existential_1(v28, v29);
    x = *(&v32 + 1);
    width = *(&v33 + 1);
    y = *&v33;
    height = *&v34;
    if ([v11 layoutDirection] == 1)
    {
      CGAffineTransformMakeScale(&v27, -1.0, 1.0);
      ty = v27.ty;
      tx = v27.tx;
      v22 = *&v27.c;
      v23 = *&v27.a;
      v50.origin.x = a2;
      v50.origin.y = a3;
      v50.size.width = a4;
      v50.size.height = v21;
      *rect = x;
      MinX = CGRectGetMinX(v50);
      v51.origin.x = a2;
      v51.origin.y = a3;
      v51.size.width = a4;
      v51.size.height = v21;
      MaxX = CGRectGetMaxX(v51);
      *&v27.a = v23;
      *&v27.c = v22;
      v27.tx = tx;
      v27.ty = ty;
      CGAffineTransformTranslate(&rect[1], &v27, -(MinX + MaxX), 0.0);
      v27 = *&rect[1];
      *&v52.origin.x = rect[0];
      v52.origin.y = y;
      v52.size.width = width;
      v52.size.height = height;
      v53 = CGRectApplyAffineTransform(v52, &v27);
      x = v53.origin.x;
      y = v53.origin.y;
      width = v53.size.width;
      height = v53.size.height;
    }

    (*(v13 + 16))(v11, v12, v13, x, y, width, height);
    sub_1BAD17170(v31);
    __swift_destroy_boxed_opaque_existential_1(v28);
    Resize.Placements.next()(&v36);
  }

  sub_1BAD47FEC(v42);
  return sub_1BAD47FEC(v43);
}

uint64_t sub_1BAD461B8(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v11 = *(v5 + 40);
  sub_1BAD14A3C(v5, &v58);
  memset(v65, 0, sizeof(v65));
  v66 = 0;
  v34 = a3;
  *v64 = a2;
  *&v64[1] = a3;
  v35 = a5;
  *&v64[2] = a4;
  *&v64[3] = a5;
  v64[4] = a1;
  v64[5] = v11;
  v12 = a1;
  sub_1BAD1E530(v65);
  sub_1BAD1A480(&v58, v65);
  sub_1BAD1E338(v64, &v58);
  sub_1BAD1ADC4(v62, &v42);
  if (*&v42.d)
  {
    while (1)
    {
      sub_1BAD1A480(&v42, &v46);
      sub_1BAD1E530(v62);
      memset(v62, 0, sizeof(v62));
      v63 = 0;
      v13 = *(&v47 + 1);
      v14 = v48;
      __swift_project_boxed_opaque_existential_1(&v46, *(&v47 + 1));
      v15 = v59;
      v16 = v60;
      v17 = (*(v14 + 8))(v61, v13, v14, v59, v60);
      v19 = v18;
      v39 = v21;
      rect[0] = v20;
      v22 = v58;
      v67.origin = v58;
      v67.size.width = v15;
      v67.size.height = v16;
      v23 = CGRectGetMidX(v67) - v17 * 0.5;
      v68.origin = v22;
      v68.size.width = v15;
      v68.size.height = v16;
      v24 = CGRectGetMidY(v68) - v19 * 0.5;
      sub_1BAD14A3C(&v46, &v42);
      sub_1BAD14A3C(&v42, &v52);
      *(&v54 + 1) = floor(v23);
      *&v55 = floor(v24);
      *(&v55 + 1) = ceil(v17);
      *&v56 = ceil(v19);
      __swift_destroy_boxed_opaque_existential_1(&v42);
      *(&v56 + 1) = floor(rect[0]);
      v57 = floor(v39);
      __swift_destroy_boxed_opaque_existential_1(&v46);
      if (!*(&v53 + 1))
      {
        break;
      }

      v48 = v54;
      v49 = v55;
      v50 = v56;
      v51 = v57;
      v46 = v52;
      v47 = v53;
      sub_1BAD14A3C(&v46, v43);
      v25 = v44;
      v26 = v45;
      __swift_project_boxed_opaque_existential_1(v43, v44);
      x = *(&v48 + 1);
      width = *(&v49 + 1);
      y = *&v49;
      height = *&v50;
      if ([v12 layoutDirection] == 1)
      {
        CGAffineTransformMakeScale(&v42, -1.0, 1.0);
        ty = v42.ty;
        tx = v42.tx;
        v36 = *&v42.c;
        v37 = *&v42.a;
        v69.origin.x = a2;
        v69.origin.y = v34;
        v69.size.width = a4;
        v69.size.height = v35;
        rect[0] = x;
        MinX = CGRectGetMinX(v69);
        v70.origin.x = a2;
        v70.origin.y = v34;
        v70.size.width = a4;
        v70.size.height = v35;
        MaxX = CGRectGetMaxX(v70);
        *&v42.a = v37;
        *&v42.c = v36;
        v42.tx = tx;
        v42.ty = ty;
        CGAffineTransformTranslate(&rect[1], &v42, -(MinX + MaxX), 0.0);
        v42 = *&rect[1];
        v71.origin.x = rect[0];
        v71.origin.y = y;
        v71.size.width = width;
        v71.size.height = height;
        v72 = CGRectApplyAffineTransform(v71, &v42);
        x = v72.origin.x;
        y = v72.origin.y;
        width = v72.size.width;
        height = v72.size.height;
      }

      (*(v26 + 16))(v12, v25, v26, x, y, width, height);
      sub_1BAD17170(&v46);
      __swift_destroy_boxed_opaque_existential_1(v43);
      sub_1BAD1ADC4(v62, &v42);
      if (!*&v42.d)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    sub_1BAD1E530(&v42);
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0.0;
  }

  sub_1BAD1E500(&v58);
  return sub_1BAD1E500(v64);
}

uint64_t sub_1BAD46540(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v11 = *(v5 + 40);
  sub_1BAD14A3C(v5 + 48, v43);
  sub_1BAD14A3C(v5, &v37);
  *v44 = a2;
  *&v44[1] = a3;
  v22 = a5;
  *&v44[2] = a4;
  *&v44[3] = a5;
  v44[4] = a1;
  v45 = 0;
  v46 = v11;
  sub_1BAD1A480(v43, &v47);
  sub_1BAD1A480(&v37, v48);
  v48[40] = 0;
  sub_1BAD47D1C(v44, v43);
  v12 = a1;
  Pin.Placements.next()(&v37);
  while (*(&v38 + 1))
  {
    v33 = v39;
    v34 = v40;
    v35 = v41;
    v36 = v42;
    v32[0] = v37;
    v32[1] = v38;
    sub_1BAD14A3C(v32, v29);
    v13 = v30;
    v14 = v31;
    __swift_project_boxed_opaque_existential_1(v29, v30);
    x = *(&v33 + 1);
    width = *(&v34 + 1);
    y = *&v34;
    height = *&v35;
    if ([v12 layoutDirection] == 1)
    {
      CGAffineTransformMakeScale(&v28, -1.0, 1.0);
      ty = v28.ty;
      tx = v28.tx;
      v23 = *&v28.c;
      v24 = *&v28.a;
      v49.origin.x = a2;
      v49.origin.y = a3;
      v49.size.width = a4;
      v49.size.height = v22;
      *rect = x;
      MinX = CGRectGetMinX(v49);
      v50.origin.x = a2;
      v50.origin.y = a3;
      v50.size.width = a4;
      v50.size.height = v22;
      MaxX = CGRectGetMaxX(v50);
      *&v28.a = v24;
      *&v28.c = v23;
      v28.tx = tx;
      v28.ty = ty;
      CGAffineTransformTranslate(&rect[1], &v28, -(MinX + MaxX), 0.0);
      v28 = *&rect[1];
      *&v51.origin.x = rect[0];
      v51.origin.y = y;
      v51.size.width = width;
      v51.size.height = height;
      v52 = CGRectApplyAffineTransform(v51, &v28);
      x = v52.origin.x;
      y = v52.origin.y;
      width = v52.size.width;
      height = v52.size.height;
    }

    (*(v14 + 16))(v12, v13, v14, x, y, width, height);
    sub_1BAD17170(v32);
    __swift_destroy_boxed_opaque_existential_1(v29);
    Pin.Placements.next()(&v37);
  }

  sub_1BAD47D78(v43);
  return sub_1BAD47D78(v44);
}

uint64_t sub_1BAD467C0(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v11 = v5[3];
  v12 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v11);
  v24 = a5;
  (*(v12 + 16))(v45, a1, v11, v12, a2, a3, a4, a5);
  sub_1BAD48204(v45, &v39);
  v13 = *(&v40 + 1);
  v14 = v41;
  __swift_project_boxed_opaque_existential_1(&v39, *(&v40 + 1));
  (*(v14 + 24))(v13, v14);
  sub_1BAD48260(&v39);
  sub_1BAD9D928();
  while (*(&v40 + 1))
  {
    v35 = v41;
    v36 = v42;
    v37 = v43;
    v38 = v44;
    v34[0] = v39;
    v34[1] = v40;
    sub_1BAD14A3C(v34, v31);
    v15 = v32;
    v16 = v33;
    __swift_project_boxed_opaque_existential_1(v31, v32);
    x = *(&v35 + 1);
    width = *(&v36 + 1);
    y = *&v36;
    height = *&v37;
    if ([a1 layoutDirection] == 1)
    {
      CGAffineTransformMakeScale(&v30, -1.0, 1.0);
      ty = v30.ty;
      tx = v30.tx;
      v25 = *&v30.c;
      v26 = *&v30.a;
      v46.origin.x = a2;
      v46.origin.y = a3;
      v46.size.width = a4;
      v46.size.height = v24;
      *rect = x;
      MinX = CGRectGetMinX(v46);
      v47.origin.x = a2;
      v47.origin.y = a3;
      v47.size.width = a4;
      v47.size.height = v24;
      MaxX = CGRectGetMaxX(v47);
      *&v30.a = v26;
      *&v30.c = v25;
      v30.tx = tx;
      v30.ty = ty;
      CGAffineTransformTranslate(&rect[1], &v30, -(MinX + MaxX), 0.0);
      v30 = *&rect[1];
      *&v48.origin.x = rect[0];
      v48.origin.y = y;
      v48.size.width = width;
      v48.size.height = height;
      v49 = CGRectApplyAffineTransform(v48, &v30);
      x = v49.origin.x;
      y = v49.origin.y;
      width = v49.size.width;
      height = v49.size.height;
    }

    (*(v16 + 16))(a1, v15, v16, x, y, width, height);
    sub_1BAD17170(v34);
    __swift_destroy_boxed_opaque_existential_1(v31);
    sub_1BAD9D928();
  }

  sub_1BAD48260(v45);
}

uint64_t sub_1BAD46A60(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v11 = *(v5 + 104);

  v12 = a1;
  v52.origin.x = a2;
  v52.origin.y = a3;
  v52.size.width = a4;
  v52.size.height = a5;
  *&v23 = a2;
  *(&v23 + 1) = a3;
  v50.a = a2;
  v50.b = a3;
  *&v24 = a4;
  *(&v24 + 1) = a5;
  v50.c = a4;
  v50.d = a5;
  *&v50.tx = v12;
  v50.ty = v11;
  *&v51 = 0;
  MinY = CGRectGetMinY(v52);
  *(&v51 + 1) = MinY;
  v48 = v50;
  v49 = v51;
  sub_1BAD4809C(&v50, &v42);
  VerticalStack.Placements.next()(&v42);
  while (*(&v43 + 1))
  {
    v36 = v44;
    v37 = v45;
    v38 = v46;
    v39 = v47;
    v34 = v42;
    v35 = v43;
    sub_1BAD14A3C(&v34, v31);
    v13 = v32;
    v14 = v33;
    __swift_project_boxed_opaque_existential_1(v31, v32);
    x = *(&v36 + 1);
    width = *(&v37 + 1);
    y = *&v37;
    height = *&v38;
    if ([v12 layoutDirection] == 1)
    {
      CGAffineTransformMakeScale(&v40, -1.0, 1.0);
      ty = v40.ty;
      tx = v40.tx;
      v25 = *&v40.c;
      v26 = *&v40.a;
      v53.origin.x = a2;
      v53.origin.y = a3;
      v53.size.width = a4;
      v53.size.height = *(&v24 + 1);
      rect = height;
      MinX = CGRectGetMinX(v53);
      v54.origin.x = a2;
      v54.origin.y = a3;
      v54.size.width = a4;
      v54.size.height = *(&v24 + 1);
      MaxX = CGRectGetMaxX(v54);
      *&v40.a = v26;
      *&v40.c = v25;
      v40.tx = tx;
      v40.ty = ty;
      CGAffineTransformTranslate(&v30, &v40, -(MinX + MaxX), 0.0);
      v40 = v30;
      v55.origin.x = x;
      v55.origin.y = y;
      v55.size.width = width;
      v55.size.height = rect;
      v56 = CGRectApplyAffineTransform(v55, &v40);
      x = v56.origin.x;
      y = v56.origin.y;
      width = v56.size.width;
      height = v56.size.height;
    }

    (*(v14 + 16))(v12, v13, v14, x, y, width, height);
    sub_1BAD17170(&v34);
    __swift_destroy_boxed_opaque_existential_1(v31);
    VerticalStack.Placements.next()(&v42);
  }

  v40 = v48;
  v41 = v49;
  sub_1BAD480F8(&v40);
  v34 = v23;
  v35 = v24;
  *&v36 = v12;
  *(&v36 + 1) = v11;
  *&v37 = 0;
  *(&v37 + 1) = MinY;
  return sub_1BAD480F8(&v34);
}

uint64_t sub_1BAD46D00(void *a1, double a2, double a3, double a4, double a5)
{
  *&v23[16] = a4;
  *&v23[24] = a5;
  *v23 = a2;
  *&v23[8] = a3;
  v6 = *(v5 + 168);
  v59 = 1;
  v7 = *(v6 + 16);
  v8 = a1;

  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A7F0);
    v9 = sub_1BAD9D1D8();
    v10 = v9;
    *(v9 + 16) = v7;
    v11 = 32;
    do
    {
      v12 = v9 + v11;
      *v12 = 0uLL;
      *(v12 + 16) = 0uLL;
      *(v12 + 32) = 1;
      v11 += 40;
      --v7;
    }

    while (v7);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v54[0] = *v23;
  v54[1] = *&v23[16];
  *&v55 = v8;
  *(&v55 + 1) = v6;
  memset(&v56[8], 0, 32);
  *v56 = v10;
  v57 = 0;
  v13 = v59;
  v58 = v59;
  v53 = v59;
  v51 = *&v56[16];
  v52 = 0uLL;
  *&v49.a = *v23;
  *&v49.c = *&v23[16];
  *&v49.tx = v55;
  v50 = *v56;
  sub_1BAD47E28(v54, &v37);
  DisjointStack.Placements.next()(&v43);
  while (*(&v44 + 1))
  {
    v39 = v45;
    *v40 = v46;
    *&v40[16] = v47;
    *&v40[32] = v48;
    v37 = v43;
    v38 = v44;
    sub_1BAD14A3C(&v37, v29);
    v14 = v30;
    v15 = v31;
    __swift_project_boxed_opaque_existential_1(v29, v30);
    x = *(&v39 + 1);
    width = *&v40[8];
    y = *v40;
    height = *&v40[16];
    if ([v8 layoutDirection] == 1)
    {
      CGAffineTransformMakeScale(&v32, -1.0, 1.0);
      ty = v32.ty;
      tx = v32.tx;
      v24 = *&v32.c;
      v25 = *&v32.a;
      rect[0] = x;
      MinX = CGRectGetMinX(*v23);
      MaxX = CGRectGetMaxX(*v23);
      *&v32.a = v25;
      *&v32.c = v24;
      v32.tx = tx;
      v32.ty = ty;
      CGAffineTransformTranslate(&rect[1], &v32, -(MinX + MaxX), 0.0);
      v32 = *&rect[1];
      v60.origin.x = rect[0];
      v60.origin.y = y;
      v60.size.width = width;
      v60.size.height = height;
      v61 = CGRectApplyAffineTransform(v60, &v32);
      x = v61.origin.x;
      y = v61.origin.y;
      width = v61.size.width;
      height = v61.size.height;
    }

    (*(v15 + 16))(v8, v14, v15, x, y, width, height);
    sub_1BAD17170(&v37);
    __swift_destroy_boxed_opaque_existential_1(v29);
    DisjointStack.Placements.next()(&v43);
  }

  v34 = v51;
  v35 = v52;
  v36 = v53;
  v32 = v49;
  v33 = v50;
  sub_1BAD47E84(&v32);
  v37 = *v23;
  v38 = *&v23[16];
  *&v39 = v8;
  *(&v39 + 1) = v6;
  memset(&v40[8], 0, 32);
  *v40 = v10;
  v41 = 0;
  v42 = v13;
  return sub_1BAD47E84(&v37);
}

uint64_t sub_1BAD47030(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v11 = *(v5 + 88);

  v12 = a1;
  v52.origin.x = a2;
  v52.origin.y = a3;
  v52.size.width = a4;
  v52.size.height = a5;
  *&v23 = a2;
  *(&v23 + 1) = a3;
  v50.a = a2;
  v50.b = a3;
  *&v24 = a4;
  *(&v24 + 1) = a5;
  v50.c = a4;
  v50.d = a5;
  *&v50.tx = v12;
  v50.ty = v11;
  *&v51 = 0;
  MinX = CGRectGetMinX(v52);
  *(&v51 + 1) = MinX;
  v48 = v50;
  v49 = v51;
  sub_1BAD17108(&v50, &v42);
  HorizontalStack.Placements.next()(&v42);
  while (*(&v43 + 1))
  {
    v36 = v44;
    v37 = v45;
    v38 = v46;
    v39 = v47;
    v34 = v42;
    v35 = v43;
    sub_1BAD14A3C(&v34, v31);
    v13 = v32;
    v14 = v33;
    __swift_project_boxed_opaque_existential_1(v31, v32);
    x = *(&v36 + 1);
    width = *(&v37 + 1);
    y = *&v37;
    height = *&v38;
    if ([v12 layoutDirection] == 1)
    {
      CGAffineTransformMakeScale(&v40, -1.0, 1.0);
      ty = v40.ty;
      tx = v40.tx;
      v25 = *&v40.c;
      v26 = *&v40.a;
      v53.origin.x = a2;
      v53.origin.y = a3;
      v53.size.width = a4;
      v53.size.height = *(&v24 + 1);
      rect = height;
      v19 = CGRectGetMinX(v53);
      v54.origin.x = a2;
      v54.origin.y = a3;
      v54.size.width = a4;
      v54.size.height = *(&v24 + 1);
      MaxX = CGRectGetMaxX(v54);
      *&v40.a = v26;
      *&v40.c = v25;
      v40.tx = tx;
      v40.ty = ty;
      CGAffineTransformTranslate(&v30, &v40, -(v19 + MaxX), 0.0);
      v40 = v30;
      v55.origin.x = x;
      v55.origin.y = y;
      v55.size.width = width;
      v55.size.height = rect;
      v56 = CGRectApplyAffineTransform(v55, &v40);
      x = v56.origin.x;
      y = v56.origin.y;
      width = v56.size.width;
      height = v56.size.height;
    }

    (*(v14 + 16))(v12, v13, v14, x, y, width, height);
    sub_1BAD17170(&v34);
    __swift_destroy_boxed_opaque_existential_1(v31);
    HorizontalStack.Placements.next()(&v42);
  }

  v40 = v48;
  v41 = v49;
  sub_1BAD17140(&v40);
  v34 = v23;
  v35 = v24;
  *&v36 = v12;
  *(&v36 + 1) = v11;
  *&v37 = 0;
  *(&v37 + 1) = MinX;
  return sub_1BAD17140(&v34);
}

Swift::Void __swiftcall PrimitiveLayout.place(at:with:)(__C::CGRect at, UITraitCollection with)
{
  v4 = v3;
  tx = v2;
  height = at.size.height;
  width = at.size.width;
  y = at.origin.y;
  x = at.origin.x;
  swift_getAssociatedTypeWitness();
  v43 = *(swift_getAssociatedConformanceWitness() + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v34 - v11;
  v13 = swift_checkMetadataState();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v34 - v18;
  v20 = *(v4 + 40);
  v38.origin.x = x;
  v38.origin.y = y;
  v38.size.width = width;
  v38.size.height = height;
  v20(with.super.isa, *&tx, v4, x, y, width, height);
  v34 = v19;
  v35 = v14;
  (*(v14 + 16))(v16, v19, v13);
  sub_1BAD9D0F8();
  v36 = v13;
  swift_getAssociatedConformanceWitness();
  sub_1BAD9D5E8();
  while (*(&v55 + 1))
  {
    v50 = v56;
    v51 = v57;
    v52 = v58;
    v53 = v59;
    v49[0] = v54;
    v49[1] = v55;
    sub_1BAD14A3C(v49, v46);
    v21 = v47;
    v22 = v48;
    __swift_project_boxed_opaque_existential_1(v46, v47);
    v23 = *(&v50 + 1);
    v25 = *(&v51 + 1);
    v24 = *&v51;
    v26 = *&v52;
    if ([(objc_class *)with.super.isa layoutDirection]== 1)
    {
      CGAffineTransformMakeScale(&v45, -1.0, 1.0);
      ty = v45.ty;
      tx = v45.tx;
      v39 = *&v45.c;
      v40 = *&v45.a;
      v28 = v38.origin.x;
      v27 = v38.origin.y;
      v29 = v38.size.width;
      v30 = v38.size.height;
      MinX = CGRectGetMinX(v38);
      v43 = v23;
      v32 = MinX;
      v60.origin.x = v28;
      v60.origin.y = v27;
      v60.size.width = v29;
      v60.size.height = v30;
      MaxX = CGRectGetMaxX(v60);
      *&v45.a = v40;
      *&v45.c = v39;
      v45.tx = tx;
      v45.ty = ty;
      CGAffineTransformTranslate(&v44, &v45, -(v32 + MaxX), 0.0);
      v45 = v44;
      v61.origin.x = v43;
      v61.origin.y = v24;
      v61.size.width = v25;
      v61.size.height = v26;
      v62 = CGRectApplyAffineTransform(v61, &v45);
      v23 = v62.origin.x;
      v24 = v62.origin.y;
      v25 = v62.size.width;
      v26 = v62.size.height;
    }

    (*(v22 + 16))(with.super.isa, v21, v22, v23, v24, v25, v26);
    sub_1BAD17170(v49);
    __swift_destroy_boxed_opaque_existential_1(v46);
    sub_1BAD9D5E8();
  }

  (*(v37 + 8))(v12, AssociatedTypeWitness);
  (*(v35 + 8))(v34, v36);
}

uint64_t sub_1BAD4772C@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AB50);
  a1[4] = &off_1F38E9288;
  v3 = swift_allocObject();
  *a1 = v3;

  return sub_1BAD183C8(v1, v3 + 16);
}

uint64_t PrimitiveLayout._eraseToAnyForTesting(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v3, a2, v6);
  return AnyPrimitiveLayout.init<A>(_:)(v8, a2, a3);
}

uint64_t sub_1BAD4787C@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AB48);
  a1[4] = &off_1F38E9288;
  v3 = swift_allocObject();
  *a1 = v3;

  return sub_1BAD48388(v1, v3 + 16);
}

uint64_t sub_1BAD478F4@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AB40);
  a1[4] = &off_1F38E9288;
  v3 = swift_allocObject();
  *a1 = v3;

  return sub_1BAD4832C(v1, v3 + 16);
}

uint64_t sub_1BAD479A4@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AB30);
  a1[4] = &off_1F38E9288;
  v3 = swift_allocObject();
  *a1 = v3;

  return sub_1BAD481A8(v1, v3 + 16);
}

uint64_t sub_1BAD47A1C@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AB28);
  a1[4] = &off_1F38E9288;
  v3 = swift_allocObject();
  *a1 = v3;

  return sub_1BAD4814C(v1, v3 + 16);
}

uint64_t sub_1BAD47A94@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AB20);
  a1[4] = &off_1F38E9288;
  v3 = swift_allocObject();
  *a1 = v3;

  return sub_1BAD48040(v1, v3 + 16);
}

uint64_t sub_1BAD47B0C@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AB18);
  a1[4] = &off_1F38E9288;
  v3 = swift_allocObject();
  *a1 = v3;

  return sub_1BAD47ED8(v1, v3 + 16);
}

uint64_t sub_1BAD47BB4@<X0>(uint64_t *a1@<X3>, uint64_t (*a2)(uint64_t, uint64_t)@<X6>, uint64_t *a3@<X8>)
{
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  a3[4] = &off_1F38E9288;
  v5 = swift_allocObject();
  *a3 = v5;

  return a2(v3, v5 + 16);
}

uint64_t sub_1BAD47C3C@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AB08);
  a1[4] = &off_1F38E9288;
  v3 = swift_allocObject();
  *a1 = v3;

  return sub_1BAD47CC0(v1, v3 + 16);
}

uint64_t objectdestroy_2Tm()
{
  if (v0[5])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  }

  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  }

  if (v0[15])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 12));
  }

  if (v0[20])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 17));
  }

  return MEMORY[0x1EEE6BDD0](v0, 192, 7);
}

uint64_t VerticalStack.Alignment.hashValue.getter(unsigned __int8 a1)
{
  sub_1BAD9DB48();
  MEMORY[0x1BFB031C0](a1);
  return sub_1BAD9DB88();
}

void VerticalStack.Properties.init()(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for ZeroDimension;
  *(a1 + 32) = &protocol witness table for ZeroDimension;
  *(a1 + 64) = &type metadata for ZeroDimension;
  *(a1 + 72) = &protocol witness table for ZeroDimension;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
}

uint64_t VerticalStack.Properties.topSpacing.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_1BAD0B40C(a1, v1);
}

uint64_t VerticalStack.Properties.bottomSpacing.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 40);

  return sub_1BAD0B40C(a1, v1 + 40);
}

void VerticalStack.Properties.topSpacing(from:with:)(void *a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = v4[11];
  v11 = v4[3];
  v12 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v11);
  if (v10)
  {
    AnyDimension.topMargin(from:with:)(a1, v11, v12, a2, a3, a4);
  }

  else
  {
    AnyDimension.value(with:)(a1, v11, v12);
  }
}

void VerticalStack.Properties.bottomSpacing(from:with:)(void *a1, double a2, double a3, double a4, double a5)
{
  v11 = v5[11];
  v13 = v5[8];
  v12 = v5[9];
  __swift_project_boxed_opaque_existential_1(v5 + 5, v13);
  if ((v11 & 2) != 0)
  {
    AnyDimension.bottomMargin(from:with:)(a1, v13, v12, a2, a3, a4, a5);
  }

  else
  {
    AnyDimension.value(with:)(a1, v13, v12);
  }
}

uint64_t VerticalStack.Placements.union.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v37[0] = *v1;
  v37[1] = v3;
  v4 = v1[3];
  v6 = *v1;
  v5 = v1[1];
  v37[2] = v1[2];
  v37[3] = v4;
  v33 = v6;
  v34 = v5;
  v7 = v1[3];
  v35 = v1[2];
  v36 = v7;
  sub_1BAD4809C(v37, &v27);
  VerticalStack.Placements.next()(&v27);
  if (*(&v28 + 1))
  {
    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    x = *(&v29 + 1);
    width = *(&v30 + 1);
    y = *&v30;
    v12 = *(&v31 + 1);
    height = *&v31;
    v13 = v32;
    sub_1BAD17170(&v21);
    VerticalStack.Placements.next()(&v27);
    if (*(&v28 + 1))
    {
      v19 = v12;
      do
      {
        v20 = v13;
        v23 = v29;
        v24 = v30;
        v25 = v31;
        v26 = v32;
        v21 = v27;
        v22 = v28;
        v14 = *(&v29 + 1);
        v16 = *(&v30 + 1);
        v15 = *&v30;
        v17 = *&v31;
        v38.origin.x = x;
        v38.origin.y = y;
        v38.size.width = width;
        v38.size.height = height;
        v40.origin.x = *(&v29 + 1);
        *&v40.origin.y = v30;
        *&v40.size.height = v31;
        v39 = CGRectUnion(v38, v40);
        x = v39.origin.x;
        y = v39.origin.y;
        width = v39.size.width;
        height = v39.size.height;
        v39.origin.x = v14;
        v39.origin.y = v15;
        v13 = v20;
        v39.size.width = v16;
        v39.size.height = v17;
        if (!CGRectIsEmpty(v39))
        {
          v13 = v26;
        }

        sub_1BAD17170(&v21);
        VerticalStack.Placements.next()(&v27);
      }

      while (*(&v28 + 1));
      v12 = v19;
    }
  }

  else
  {
    v12 = 0;
    v13 = 0.0;
    width = 0.0;
    height = 0.0;
    x = 0.0;
    y = 0.0;
  }

  v21 = v33;
  v22 = v34;
  v23 = v35;
  v24 = v36;
  result = sub_1BAD480F8(&v21);
  *a1 = x;
  *(a1 + 8) = y;
  *(a1 + 16) = width;
  *(a1 + 24) = height;
  *(a1 + 32) = v12;
  *(a1 + 40) = v13;
  return result;
}

void VerticalStack.Placements.next()(uint64_t a1@<X8>)
{
  v4 = v1;
  v6 = *(v1 + 48);
  v7 = *(v4 + 40);
  if (v6 >= *(v7 + 16))
  {
    *(a1 + 80) = 0;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    return;
  }

  if (v6 < 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  sub_1BAD48DD0(v7 + 144 * v6 + 32, v46);
  *(v4 + 48) = v6 + 1;
  v8 = *v4;
  v9 = *(v4 + 8);
  v11 = *(v4 + 16);
  v10 = *(v4 + 24);
  if ((v57 & 1) == 0)
  {
    v58 = *v4;
    width = v58.size.width;
    height = v58.size.height;
    if (CGRectGetHeight(*v4) != 0.0)
    {
      *&v59.origin.x = v8;
      v59.origin.y = v9;
      v59.size.width = v11;
      v59.size.height = v10;
      width = CGRectGetWidth(v59);
      *&v60.origin.x = v8;
      v60.origin.y = v9;
      v60.size.width = v11;
      v60.size.height = v10;
      MaxY = CGRectGetMaxY(v60);
      v18 = *(v4 + 56);
      height = MaxY - v18;
      if (MaxY - v18 <= 0.0)
      {
        *&v63.origin.x = v8;
        v63.origin.y = v9;
        v63.size.width = v11;
        v63.size.height = v10;
        MinX = CGRectGetMinX(v63);
        if (qword_1EDBA5998 != -1)
        {
          swift_once();
        }

        v43 = *(&xmmword_1EDBA59A0 + 1);
        v42 = *&xmmword_1EDBA59A0;
        sub_1BAD14A3C(v46, v45);
        sub_1BAD14A3C(v45, a1);
        *(a1 + 40) = floor(MinX);
        *(a1 + 48) = floor(v18);
        v13 = floor(v42);
        v14 = floor(v43);
        goto LABEL_6;
      }
    }

    v19 = *(v4 + 32);
    v20 = v47;
    v21 = v48;
    __swift_project_boxed_opaque_existential_1(v46, v47);
    v22 = (*(v21 + 8))(v19, v20, v21, width, height);
    v24 = v23;
    v26 = v25;
    v44 = v27;
    if (v55)
    {
      v28 = v8;
      v29 = v9;
      v30 = v11;
      v31 = v10;
      if (v55 == 1)
      {
        v32 = CGRectGetMidX(*&v28) + v22 * -0.5;
        if (v32 >= 0.0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v32 = CGRectGetMaxX(*&v28) - v22;
        if (v32 >= 0.0)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      *&v61.origin.x = v8;
      v61.origin.y = v9;
      v61.size.width = v11;
      v61.size.height = v10;
      v32 = CGRectGetMinX(v61);
      if (v32 >= 0.0)
      {
LABEL_17:
        v33 = v56;
        v34 = v50;
        v35 = v51;
        __swift_project_boxed_opaque_existential_1(v49, v50);
        if (v33)
        {
          v36 = AnyDimension.topMargin(from:with:)(v19, v34, v35, v22, v24, v26);
        }

        else
        {
          v36 = AnyDimension.value(with:)(v19, v34, v35);
        }

        if (v36 < 0.0)
        {
          v36 = 0.0;
        }

        v37 = *(v4 + 56) + v36;
        v38 = v53;
        v39 = v54;
        __swift_project_boxed_opaque_existential_1(v52, v53);
        if ((v33 & 2) != 0)
        {
          v40 = AnyDimension.bottomMargin(from:with:)(v19, v38, v39, v22, v24, v26, v44);
        }

        else
        {
          v40 = AnyDimension.value(with:)(v19, v38, v39);
        }

        *(v4 + 56) = v24 + v37 + v40;
        sub_1BAD14A3C(v46, v45);
        sub_1BAD14A3C(v45, a1);
        *(a1 + 40) = floor(v32);
        *(a1 + 48) = floor(v37);
        *(a1 + 56) = ceil(v22);
        *(a1 + 64) = ceil(v24);
        v13 = floor(v26);
        v14 = floor(v44);
        goto LABEL_26;
      }
    }

    *&v62.origin.x = v8;
    v62.origin.y = v9;
    v62.size.width = v11;
    v62.size.height = v10;
    if (CGRectGetWidth(v62) == 0.0)
    {
      v32 = 0.0;
    }

    goto LABEL_17;
  }

  v2 = CGRectGetMinX(*v4);
  v3 = *(v4 + 56);
  if (qword_1EDBA5998 != -1)
  {
LABEL_33:
    swift_once();
  }

  v12 = xmmword_1EDBA59A0;
  sub_1BAD14A3C(v46, v45);
  sub_1BAD14A3C(v45, a1);
  *(a1 + 40) = floor(v2);
  *(a1 + 48) = floor(v3);
  v13 = floor(*&v12);
  v14 = floor(*(&v12 + 1));
LABEL_6:
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
LABEL_26:
  __swift_destroy_boxed_opaque_existential_1(v45);
  *(a1 + 72) = v13;
  *(a1 + 80) = v14;
  sub_1BAD1A420(v46, &qword_1EBC2A230);
}

uint64_t sub_1BAD48DD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A230);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t VerticalStack.Placements.measure.getter()
{
  v1 = *(v0 + 16);
  v20[0] = *v0;
  v20[1] = v1;
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v23 = *(v0 + 48);
  v21 = v2;
  v22 = v3;
  result = VerticalStack.Placements.union.getter(v30);
  v5 = v31;
  v6 = v32;
  v7 = v33;
  v8 = v34;
  v9 = *(v3 + 16);
  if (v9)
  {
    sub_1BAD48DD0(v3 + 32, v20);
    v10 = v29;
    v11 = v24;
    v12 = v25;
    __swift_project_boxed_opaque_existential_1(&v22, v24);
    if (v10)
    {
      v13 = AnyDimension.topMargin(from:with:)(v2, v11, v12, v5, v6, v7);
    }

    else
    {
      v13 = AnyDimension.value(with:)(v2, v11, v12);
    }

    v14 = v13;
    result = sub_1BAD1A420(v20, &qword_1EBC2A230);
    v15 = 0.0;
    if (v14 >= 0.0)
    {
      v15 = v14;
    }

    if (v9 > *(v3 + 16))
    {
      __break(1u);
    }

    else
    {
      v16 = v6 + v15;
      sub_1BAD48DD0(v3 + 144 * v9 - 112, v20);
      v17 = v29;
      v18 = v27;
      v19 = v28;
      __swift_project_boxed_opaque_existential_1(v26, v27);
      if ((v17 & 2) != 0)
      {
        AnyDimension.bottomMargin(from:with:)(v2, v18, v19, v5, v16, v7, v8);
      }

      else
      {
        AnyDimension.value(with:)(v2, v18, v19);
      }

      return sub_1BAD1A420(v20, &qword_1EBC2A230);
    }
  }

  return result;
}

void *sub_1BAD49018()
{
  v1 = v0[1];
  v5[0] = *v0;
  v5[1] = v1;
  v2 = v0[3];
  v5[2] = v0[2];
  v5[3] = v2;
  v3 = sub_1BAD833FC(v5);
  sub_1BAD480F8(v5);
  return v3;
}

uint64_t VerticalStack.init(with:)@<X0>(void (*a1)(_BYTE *)@<X0>, uint64_t a2@<X8>)
{
  v6 = &type metadata for ZeroDimension;
  v7 = &protocol witness table for ZeroDimension;
  v8 = &type metadata for ZeroDimension;
  v9 = &protocol witness table for ZeroDimension;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  if (a1)
  {
    a1(v5);
  }

  sub_1BAD499FC(v5, a2);
  sub_1BAD17DC0(a1);
  result = sub_1BAD49A34(v5);
  *(a2 + 104) = MEMORY[0x1E69E7CC0];
  return result;
}

double VerticalStack.add(_:with:)(uint64_t a1, void (*a2)(_OWORD *))
{
  v3 = v2;
  sub_1BAD14A3C(a1, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AE80);
  if (swift_dynamicCast())
  {
    v25[2] = v19;
    v25[3] = v20;
    v25[4] = v21;
    v26 = v22;
    v25[0] = v17;
    v25[1] = v18;
    if (BYTE8(v19) == 1)
    {
      sub_1BAD9CB88();
    }

    sub_1BAD18374(v25);
  }

  __swift_destroy_boxed_opaque_existential_1(v27);
  sub_1BAD499FC(v2, v25);
  if (a2)
  {
    a2(v25);
  }

  sub_1BAD14A3C(a1, &v17);
  sub_1BAD499FC(v25, &v19 + 8);
  v6 = *(v2 + 104);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_1BAD18A9C(0, v6[2] + 1, 1, v6);
  }

  v8 = v6[2];
  v7 = v6[3];
  if (v8 >= v7 >> 1)
  {
    v6 = sub_1BAD18A9C((v7 > 1), v8 + 1, 1, v6);
  }

  sub_1BAD49A34(v25);
  v6[2] = v8 + 1;
  v9 = &v6[18 * v8];
  v10 = v21;
  v12 = v18;
  v11 = v19;
  v9[5] = v20;
  v9[6] = v10;
  v9[3] = v12;
  v9[4] = v11;
  v14 = v23;
  v13 = v24[0];
  v15 = v22;
  *(v9 + 153) = *(v24 + 9);
  v9[8] = v14;
  v9[9] = v13;
  v9[7] = v15;
  result = *&v17;
  v9[2] = v17;
  *(v3 + 104) = v6;
  return result;
}

uint64_t VerticalStack.insert(_:at:with:)(uint64_t a1, int64_t a2, void (*a3)(_BYTE *))
{
  sub_1BAD14A3C(a1, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AE80);
  if (swift_dynamicCast())
  {
    v10 = v18;
    v11 = v19;
    v12 = v20;
    *&v13 = v21;
    v8 = v16;
    v9 = v17;
    if (BYTE8(v18) == 1)
    {
      sub_1BAD9CB88();
    }

    sub_1BAD18374(&v8);
  }

  __swift_destroy_boxed_opaque_existential_1(v24);
  sub_1BAD499FC(v3, v24);
  if (a3)
  {
    a3(v24);
  }

  sub_1BAD14A3C(a1, &v16);
  result = sub_1BAD499FC(v24, &v18 + 8);
  if (*(*(v3 + 104) + 16) < a2)
  {
    __break(1u);
  }

  else if ((a2 & 0x8000000000000000) == 0)
  {
    v14 = v22;
    v15[0] = v23[0];
    *(v15 + 9) = *(v23 + 9);
    v10 = v18;
    v11 = v19;
    v12 = v20;
    v13 = v21;
    v8 = v16;
    v9 = v17;
    sub_1BAD19AC8(a2, a2, &v8);
    return sub_1BAD49A34(v24);
  }

  __break(1u);
  return result;
}

void VerticalStack.layout(relativeTo:with:)(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v13 = *(v6 + 104);
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = a6;
  *(a2 + 32) = a1;
  *(a2 + 40) = v13;
  *(a2 + 48) = 0;

  v14 = a1;
  v15.origin.x = a3;
  v15.origin.y = a4;
  v15.size.width = a5;
  v15.size.height = a6;
  *(a2 + 56) = CGRectGetMinY(v15);
}

uint64_t sub_1BAD495F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  sub_1BAD14A3C(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AE80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A1B8);
  if (swift_dynamicCast())
  {
    sub_1BAD0B40C(v10, v13);
    v6 = v14;
    v7 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    (*(v7 + 8))(v12, a2, v6, v7);
    v8 = BYTE1(v12[0]);
    *a3 = *(a1 + 120) + 1;
    a3[1] = v8;
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    result = sub_1BAD1A420(v10, &qword_1EBC2A1C0);
    *a3 = *(a1 + 120) + 1;
    a3[1] = 0;
  }

  return result;
}

JetUI::_LayoutAlignment __swiftcall VerticalStack._layoutAlignment(with:)(UITraitCollection with)
{
  v3 = v1;
  v4 = *(v2 + 104);
  if (*(v4 + 16))
  {
    isa = with.super.isa;
    sub_1BAD48DD0(v4 + 32, v35);
    sub_1BAD495F8(v35, isa, &v33);
    v6 = *(v4 + 16);
    v7 = v6 - 1;
    if (v6 > 1)
    {
      v23 = v3;
      v24 = isa;
      v8 = v33;
      v9 = v34;

      v10 = &qword_1EBC2AE80;
      v11 = &unk_1BADA5D40;
      v12 = &qword_1EBC2A1B8;
      v13 = v4 + 176;
      do
      {
        sub_1BAD48DD0(v13, v31);
        sub_1BAD14A3C(v31, v27);
        __swift_instantiateConcreteTypeFromMangledNameV2(v10);
        __swift_instantiateConcreteTypeFromMangledNameV2(v12);
        if (swift_dynamicCast())
        {
          sub_1BAD0B40C(v25, v28);
          v14 = v12;
          v15 = v11;
          v16 = v10;
          v17 = v29;
          v18 = v30;
          __swift_project_boxed_opaque_existential_1(v28, v29);
          v19 = *(v18 + 8);
          v20 = v18;
          v10 = v16;
          v11 = v15;
          v12 = v14;
          v19(v27, v24, v17, v20);
          v21 = BYTE1(v27[0]);
          v22 = v32;
          sub_1BAD1A420(v31, &qword_1EBC2A230);
          __swift_destroy_boxed_opaque_existential_1(v28);
        }

        else
        {
          v26 = 0;
          memset(v25, 0, sizeof(v25));
          sub_1BAD1A420(v25, &qword_1EBC2A1C0);
          v22 = v32;
          sub_1BAD1A420(v31, &qword_1EBC2A230);
          v21 = 0;
        }

        if (v8 != (v22 + 1))
        {
          v8 = 0;
        }

        if (v21 != v9)
        {
          v9 = 0;
        }

        v13 += 144;
        --v7;
      }

      while (v7);

      v3 = v23;
    }

    else
    {
      v8 = v33;
      v9 = v34;
    }

    LOWORD(with.super.isa) = sub_1BAD1A420(v35, &qword_1EBC2A230);
    *v3 = v8;
    v3[1] = v9;
  }

  else
  {
    *v1 = *(v2 + 80) + 1;
    v1[1] = 0;
  }

  return with.super.isa;
}

void sub_1BAD49978(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v13 = *(v6 + 104);
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = a6;
  *(a2 + 32) = a1;
  *(a2 + 40) = v13;
  *(a2 + 48) = 0;

  v14 = a1;
  v15.origin.x = a3;
  v15.origin.y = a4;
  v15.size.width = a5;
  v15.size.height = a6;
  *(a2 + 56) = CGRectGetMinY(v15);
}

unint64_t sub_1BAD49A68()
{
  result = qword_1EBC2AB58;
  if (!qword_1EBC2AB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2AB58);
  }

  return result;
}

unint64_t sub_1BAD49AC0()
{
  result = qword_1EBC2AB60;
  if (!qword_1EBC2AB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2AB60);
  }

  return result;
}

unint64_t sub_1BAD49B18()
{
  result = qword_1EBC2AB68;
  if (!qword_1EBC2AB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2AB68);
  }

  return result;
}

unint64_t sub_1BAD49B70()
{
  result = qword_1EBC2AB70;
  if (!qword_1EBC2AB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2AB70);
  }

  return result;
}

unint64_t sub_1BAD49BC8()
{
  result = qword_1EBC2AB78;
  if (!qword_1EBC2AB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2AB78);
  }

  return result;
}

unint64_t sub_1BAD49C1C(uint64_t a1)
{
  result = sub_1BAD49C44();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BAD49C44()
{
  result = qword_1EBC2AB80;
  if (!qword_1EBC2AB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2AB80);
  }

  return result;
}

unint64_t sub_1BAD49C9C()
{
  result = qword_1EBC2AB88;
  if (!qword_1EBC2AB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2AB88);
  }

  return result;
}

unint64_t sub_1BAD49CF4()
{
  result = qword_1EBC2AB90;
  if (!qword_1EBC2AB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2AB90);
  }

  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1BAD49D6C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BAD49DB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

UIEdgeInsets __swiftcall ZeroDimension.languageAwareOutsets(compatibleWith:)(UITraitCollection compatibleWith)
{
  v1 = *MEMORY[0x1E69DDCE0];
  v2 = *(MEMORY[0x1E69DDCE0] + 8);
  v3 = *(MEMORY[0x1E69DDCE0] + 16);
  v4 = *(MEMORY[0x1E69DDCE0] + 24);
  result.right = v4;
  result.bottom = v3;
  result.left = v2;
  result.top = v1;
  return result;
}

double static LayoutViewPlaceholder.withIdentityMeasurement.getter()
{
  v0 = swift_allocObject();
  *(v0 + 32) = 1;
  result = 0.0;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0;
  *(v0 + 16) = sub_1BAD49F18;
  *(v0 + 24) = 0;
  return result;
}

double LayoutViewPlaceholder.__allocating_init(measureWith:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 32) = 1;
  result = 0.0;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  return result;
}

uint64_t LayoutViewPlaceholder.init(measureWith:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = 1;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t LayoutViewPlaceholder.__allocating_init(measurements:)(double a1, double a2, double a3, double a4)
{
  v8 = swift_allocObject();
  *(v8 + 32) = 1;
  *(v8 + 40) = 0u;
  *(v8 + 56) = 0u;
  *(v8 + 72) = 0;
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  *(v8 + 16) = sub_1BAD4A154;
  *(v8 + 24) = v9;
  swift_beginAccess();
  *(v8 + 32) = fmin(fabs(a1), fabs(a2)) >= COERCE_DOUBLE(1);
  return v8;
}

uint64_t LayoutViewPlaceholder.init(measurements:)(double a1, double a2, double a3, double a4)
{
  *(v4 + 32) = 1;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0;
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  *(v4 + 16) = sub_1BAD4A698;
  *(v4 + 24) = v9;
  swift_beginAccess();
  *(v4 + 32) = fmin(fabs(a1), fabs(a2)) >= COERCE_DOUBLE(1);
  return v4;
}

uint64_t LayoutViewPlaceholder.__allocating_init(representing:)(double a1, double a2)
{
  v4 = swift_allocObject();
  *(v4 + 32) = 1;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a2;
  *(v5 + 40) = 0;
  *(v4 + 16) = sub_1BAD4A698;
  *(v4 + 24) = v5;
  swift_beginAccess();
  *(v4 + 32) = fmin(fabs(a1), fabs(a2)) >= COERCE_DOUBLE(1);
  return v4;
}

uint64_t LayoutViewPlaceholder.init(representing:)(double a1, double a2)
{
  *(v2 + 32) = 1;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a2;
  *(v5 + 40) = 0;
  *(v2 + 16) = sub_1BAD4A698;
  *(v2 + 24) = v5;
  swift_beginAccess();
  *(v2 + 32) = fmin(fabs(a1), fabs(a2)) >= COERCE_DOUBLE(1);
  return v2;
}

uint64_t LayoutViewPlaceholder.hasContent.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t LayoutViewPlaceholder.frame.setter(double a1, double a2, double a3, double a4)
{
  result = swift_beginAccess();
  v4[5] = a1;
  v4[6] = a2;
  v4[7] = a3;
  v4[8] = a4;
  return result;
}

uint64_t LayoutViewPlaceholder.isHidden.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 72) = a1;
  return result;
}

uint64_t LayoutViewPlaceholder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BAD4A5B0()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 32);
}

id TextAppearance.init()@<X0>(void *a1@<X8>)
{
  result = [objc_opt_self() preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] compatibleWithTraitCollection:0];
  *a1 = result;
  a1[1] = 4;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  return result;
}

id TextAppearance.withFont(_:)@<X0>(id a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = *(v2 + 8);
  *(a2 + 24) = *(v2 + 24);
  *a2 = a1;
  return a1;
}

id TextAppearance.withTextAlignment(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = *(v2 + 32);
  *(a2 + 16) = *(v2 + 16);
  *(a2 + 32) = v4;
  *a2 = v3;
  *(a2 + 8) = a1;
  return v3;
}

id TextAppearance.withLineBreakMode(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = *(v2 + 8);
  *a2 = *v2;
  *(a2 + 8) = v4;
  *(a2 + 24) = *(v2 + 24);
  *(a2 + 16) = a1;
  return v3;
}

id TextAppearance.withLineSpacing(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = *(v2 + 24);
  *a2 = *v2;
  *(a2 + 8) = *(v2 + 8);
  *(a2 + 24) = v4;
  *(a2 + 32) = a1;
  return v3;
}

id TextAppearance.withNumberOfLines(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = *(v2 + 32);
  *a2 = *v2;
  *(a2 + 8) = *(v2 + 8);
  *(a2 + 24) = a1;
  *(a2 + 32) = v4;
  return v3;
}

BOOL _s5JetUI14TextAppearanceV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  sub_1BAD117DC();
  v10 = sub_1BAD9D568();
  result = 0;
  if ((v10 & 1) != 0 && v2 == v6)
  {
    return v3 == v7 && v4 == v8 && v5 == v9;
  }

  return result;
}

uint64_t sub_1BAD4A930(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1BAD4A978(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t Models.Video.Behavior.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v25 = a2;
  v26 = a3;
  v4 = sub_1BAD9C7C8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v24 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - v11;
  sub_1BAD9C7D8();
  v13 = sub_1BAD9C778();
  v14 = *(v5 + 8);
  v14(v12, v4);
  sub_1BAD9C7D8();
  v15 = sub_1BAD9C778();
  v14(v9, v4);
  v16 = v13 & 1 | 2;
  if ((v15 & 1) == 0)
  {
    v16 = v13 & 1;
  }

  if (v15 == 2)
  {
    v17 = v13 & 1;
  }

  else
  {
    v17 = v16;
  }

  v18 = v24;
  sub_1BAD9C7D8();
  v19 = sub_1BAD9C778();
  v14(v18, v4);
  if (v19 == 2 || (v19 & 1) == 0)
  {
    v22 = sub_1BAD9C8F8();
    (*(*(v22 - 8) + 8))(v25, v22);
    result = (v14)(a1, v4);
  }

  else
  {
    v20 = sub_1BAD9C8F8();
    (*(*(v20 - 8) + 8))(v25, v20);
    result = (v14)(a1, v4);
    v17 |= 4uLL;
  }

  *v26 = v17;
  return result;
}

uint64_t Models.Video.init(videoURL:preview:behavior:playbackControls:autoPlayPlaybackControls:templateMediaEvent:templateClickEvent:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v42 = a6;
  v43 = a7;
  v41 = a1;
  v14 = sub_1BAD9C358();
  v44 = *(v14 - 8);
  v45 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a3;
  v18 = *a4;
  v19 = *a5;
  LOBYTE(a5) = *(a5 + 8);
  v40 = sub_1BAD9C2C8();
  v20 = *(v40 - 8);
  (*(v20 + 16))(a8, a1, v40);
  v21 = type metadata accessor for Models.Video();
  v22 = (a8 + v21[5]);
  v23 = a2[3];
  v22[2] = a2[2];
  v22[3] = v23;
  v22[4] = a2[4];
  *(v22 + 74) = *(a2 + 74);
  v24 = a2[1];
  *v22 = *a2;
  v22[1] = v24;
  *(a8 + v21[6]) = v17;
  *(a8 + v21[7]) = v18;
  v25 = a8 + v21[8];
  *v25 = v19;
  *(v25 + 8) = a5;
  v26 = v21[9];
  v27 = sub_1BAD9C928();
  v28 = *(v27 - 8);
  v29 = *(v28 + 16);
  v30 = v42;
  v29(a8 + v26, v42, v27);
  v31 = v43;
  v29(a8 + v21[10], v43, v27);
  sub_1BAD9C348();
  v32 = v16;
  v39 = sub_1BAD9C338();
  v34 = v33;
  v35 = *(v28 + 8);
  v35(v31, v27);
  v35(v30, v27);
  (*(v20 + 8))(v41, v40);
  result = (*(v44 + 8))(v32, v45);
  v37 = (a8 + v21[11]);
  *v37 = v39;
  v37[1] = v34;
  return result;
}

uint64_t type metadata accessor for Models.Video()
{
  result = qword_1EBC2AC60;
  if (!qword_1EBC2AC60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Models.Video.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v129 = a2;
  v100 = a3;
  v99 = sub_1BAD9C358();
  v98 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v96 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_1BAD9C928();
  v105 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v103 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v108 = &v90 - v7;
  v120 = sub_1BAD9C8F8();
  v118 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v102 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v107 = &v90 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v110 = &v90 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v114 = &v90 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v112 = &v90 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AB98);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v90 - v18;
  v20 = sub_1BAD9C7C8();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v101 = &v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v106 = &v90 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v109 = &v90 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v113 = &v90 - v28;
  MEMORY[0x1EEE9AC00](v29);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v90 - v31;
  v33 = sub_1BAD9C2C8();
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v116 = &v90 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v117 = &v90 - v37;
  v119 = a1;
  sub_1BAD9C7D8();
  sub_1BAD9C768();
  v40 = *(v21 + 8);
  v39 = v21 + 8;
  v38 = v40;
  v40(v32, v20);
  if ((*(v34 + 48))(v19, 1, v33) == 1)
  {
    sub_1BAD4BDCC(v19);
    v41 = sub_1BAD9CE08();
    v42 = v118;
    v43 = v41;
    sub_1BAD4D9D8(&qword_1EBC2A488, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    v45 = v44;
    v46 = type metadata accessor for Models.Video();
    *v45 = 0x4C52556F65646976;
    v45[1] = 0xE800000000000000;
    v45[2] = v46;
    (*(*(v43 - 8) + 104))(v45, *MEMORY[0x1E69AB690], v43);
    swift_willThrow();
    (*(v42 + 8))(v129, v120);
    return v38(v119, v20);
  }

  else
  {
    v92 = v38;
    v97 = v39;
    v93 = v20;
    v111 = v34;
    (*(v34 + 32))(v117, v19, v33);
    sub_1BAD9C7D8();
    v48 = (v118 + 16);
    v49 = *(v118 + 16);
    v50 = v112;
    v51 = v129;
    v94 = v33;
    v52 = v120;
    v49(v112, v129);
    sub_1BAD4BE34();
    sub_1BAD9CB08();
    v53 = *&v127[0];
    if (BYTE8(v127[0]))
    {
      v53 = 31;
    }

    v95 = v53;
    sub_1BAD9C7D8();
    (v49)(v50, v51, v52);
    sub_1BAD9CB08();
    v54 = *&v127[0];
    if (BYTE8(v127[0]))
    {
      v54 = v95;
    }

    v91 = v54;
    v55 = v111;
    v56 = (v111 + 16);
    v57 = v117;
    v58 = v94;
    v90 = *(v111 + 16);
    v90(v116, v117, v94);
    v59 = v113;
    sub_1BAD9C7D8();
    v60 = v114;
    v112 = v48;
    (v49)(v114, v129, v120);
    v61 = v49;
    v62 = v115;
    Models.Artwork.init(deserializing:using:)(v59, v60, v127);
    if (v62)
    {
      (*(v118 + 8))(v129, v120);
      v92(v119, v93);
      v63 = *(v55 + 8);
      v63(v116, v58);
      return (v63)(v57, v58);
    }

    else
    {
      v115 = v56;
      v124 = v127[2];
      v125 = v127[3];
      *v126 = *v128;
      *&v126[10] = *&v128[10];
      v122 = v127[0];
      v123 = v127[1];
      v64 = v109;
      v65 = v119;
      sub_1BAD9C7D8();
      v66 = v110;
      v67 = v120;
      v61(v110, v129, v120);
      Models.Video.Behavior.init(deserializing:using:)(v64, v66, &v121);
      v68 = v121;
      sub_1BAD9C7D8();
      v61(v107, v129, v67);
      sub_1BAD9C918();
      sub_1BAD9C7D8();
      v61(v102, v129, v67);
      v69 = v103;
      sub_1BAD9C918();
      v70 = v100;
      v90(v100, v116, v58);
      v71 = type metadata accessor for Models.Video();
      v72 = v70;
      v73 = &v70[v71[5]];
      v74 = v125;
      *(v73 + 2) = v124;
      *(v73 + 3) = v74;
      *(v73 + 4) = *v126;
      *(v73 + 74) = *&v126[10];
      v75 = v123;
      *v73 = v122;
      *(v73 + 1) = v75;
      *&v70[v71[6]] = v68;
      *&v70[v71[7]] = v95;
      v76 = &v70[v71[8]];
      *v76 = v91;
      v76[8] = 0;
      v77 = v71[9];
      v78 = v71;
      v115 = v71;
      v79 = v69;
      v80 = *(v105 + 16);
      v81 = v72;
      v82 = v104;
      v80(&v72[v77], v108, v104);
      v80(&v81[v78[10]], v69, v82);
      v83 = v96;
      sub_1BAD9C348();
      v114 = sub_1BAD9C338();
      v85 = v84;
      (*(v118 + 8))(v129, v67);
      v92(v65, v93);
      (*(v98 + 8))(v83, v99);
      v86 = *(v105 + 8);
      v86(v79, v82);
      v86(v108, v82);
      v87 = *(v111 + 8);
      v88 = v94;
      v87(v116, v94);
      result = (v87)(v117, v88);
      v89 = &v100[v115[11]];
      *v89 = v114;
      *(v89 + 1) = v85;
    }
  }

  return result;
}

uint64_t sub_1BAD4BDCC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AB98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BAD4BE34()
{
  result = qword_1EBC2ABA0;
  if (!qword_1EBC2ABA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2ABA0);
  }

  return result;
}

uint64_t Models.Video.videoURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BAD9C2C8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Models.Video.preview.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Models.Video() + 20));
  v4 = v3[3];
  v12 = v3[2];
  v13 = v4;
  v14[0] = v3[4];
  v5 = v14[0];
  *(v14 + 10) = *(v3 + 74);
  v6 = *(v14 + 10);
  v7 = v3[1];
  v11[0] = *v3;
  v8 = v11[0];
  v11[1] = v7;
  a1[2] = v12;
  a1[3] = v4;
  a1[4] = v5;
  *(a1 + 74) = v6;
  *a1 = v8;
  a1[1] = v7;
  return sub_1BAD4BFB8(v11, &v10);
}

uint64_t Models.Video.behavior.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for Models.Video();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t Models.Video.playbackControls.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for Models.Video();
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t Models.Video.autoPlayPlaybackControls.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for Models.Video();
  v4 = (v1 + *(result + 32));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t Models.Video.templateMediaEvent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Models.Video() + 36);
  v4 = sub_1BAD9C928();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Models.Video.templateClickEvent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Models.Video() + 40);
  v4 = sub_1BAD9C928();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Models.Video.playbackID.getter()
{
  v1 = *(v0 + *(type metadata accessor for Models.Video() + 44));

  return v1;
}

uint64_t Models.Video.Behavior.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1BAD9C8F8();
  v30 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  v11 = sub_1BAD9C7C8();
  v27 = *(v11 - 8);
  v28 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  sub_1BAD14A3C(a1, v29);
  sub_1BAD9C788();
  if (v2)
  {
    v23 = a1;
  }

  else
  {
    v25 = a2;
    v17 = a1[3];
    v26 = a1;
    __swift_project_boxed_opaque_existential_1(a1, v17);
    v18 = v5;
    sub_1BAD9DBA8();
    sub_1BAD9C8E8();
    v20 = v27;
    v19 = v28;
    (*(v27 + 16))(v13, v16, v28);
    v21 = v30;
    (*(v30 + 16))(v7, v10, v18);
    Models.Video.Behavior.init(deserializing:using:)(v13, v7, v29);
    (*(v21 + 8))(v10, v18);
    (*(v20 + 8))(v16, v19);
    v23 = v26;
    *v25 = v29[0];
  }

  return __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t Models.Video.Behavior.encode(to:)(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAD9DBC8();
  sub_1BAD1FC04(MEMORY[0x1E69E7CC0]);
  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1BAD14278(1, 1886351212, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v5 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BAD14278(1, 0x747541776F6C6C61, 0xED000079616C506FLL, v5);
  if ((v2 & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((v2 & 4) != 0)
  {
LABEL_4:
    v3 = swift_isUniquelyReferenced_nonNull_native();
    sub_1BAD14278(1, 0x6C7546776F6C6C61, 0xEF6E65657263536CLL, v3);
  }

LABEL_5:
  __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2ABA8);
  sub_1BAD4D600();
  sub_1BAD9DAB8();

  return __swift_destroy_boxed_opaque_existential_1(v7);
}

unint64_t sub_1BAD4C694()
{
  v1 = *v0;
  v2 = 0x4C52556F65646976;
  v3 = 0xD000000000000012;
  if (v1 != 5)
  {
    v3 = 0xD000000000000012;
  }

  v4 = 0x77656976657270;
  if (v1 != 3)
  {
    v4 = 0x726F697661686562;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000018;
  if (v1 == 1)
  {
    v5 = 0xD000000000000010;
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

uint64_t sub_1BAD4C778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BAD4DDE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BAD4C7A0(uint64_t a1)
{
  v2 = sub_1BAD4D684();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAD4C7DC(uint64_t a1)
{
  v2 = sub_1BAD4D684();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Models.Video.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v52 = sub_1BAD9C358();
  v51 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v50 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1BAD9C928();
  v54 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v55 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v42 - v6;
  v8 = sub_1BAD9C2C8();
  v56 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v42 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2ABB8);
  v58 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v42 - v15;
  v17 = a1[3];
  v73 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1BAD4D684();
  v18 = v59;
  sub_1BAD9DBB8();
  if (!v18)
  {
    v49 = v7;
    v59 = v10;
    v19 = v57;
    v20 = v56;
    LOBYTE(v68) = 0;
    sub_1BAD4D9D8(&qword_1EBC2ABC8, MEMORY[0x1E6968FB0]);
    v21 = v16;
    sub_1BAD9D9C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2ABD0);
    LOBYTE(v62) = 1;
    sub_1BAD4D6D8();
    sub_1BAD9D988();
    v48 = v13;
    if (BYTE9(v68) & 1) != 0 || (BYTE8(v68))
    {
      v22 = 31;
    }

    else
    {
      v22 = v68;
    }

    v47 = v22;
    LOBYTE(v62) = 2;
    sub_1BAD9D988();
    if (BYTE9(v68))
    {
      v24 = v47;
    }

    else
    {
      v24 = v47;
      if ((BYTE8(v68) & 1) == 0)
      {
        v24 = v68;
      }
    }

    v46 = v24;
    v25 = v20;
    v45 = *(v20 + 16);
    (v45)(v59, v48, v8);
    v67 = 3;
    sub_1BAD4D834();
    sub_1BAD9D9C8();
    v44 = v20 + 16;
    v64 = v70;
    v65 = v71;
    *v66 = *v72;
    *&v66[10] = *&v72[10];
    v62 = v68;
    v63 = v69;
    v60 = 4;
    sub_1BAD4D888();
    sub_1BAD9D9C8();
    v26 = v61;
    v60 = 5;
    sub_1BAD4D9D8(&qword_1EBC2AC08, MEMORY[0x1E69AAF48]);
    v27 = v19;
    v43 = v21;
    sub_1BAD9D9C8();
    v42 = v26;
    v60 = 6;
    sub_1BAD9D9C8();
    v28 = v53;
    (v45)(v53, v59, v8);
    v29 = type metadata accessor for Models.Video();
    v45 = v29;
    v30 = (v28 + v29[5]);
    v31 = v65;
    v30[2] = v64;
    v30[3] = v31;
    v30[4] = *v66;
    *(v30 + 74) = *&v66[10];
    v32 = v63;
    *v30 = v62;
    v30[1] = v32;
    *(v28 + v29[6]) = v42;
    *(v28 + v29[7]) = v47;
    v33 = v28 + v29[8];
    *v33 = v46;
    *(v33 + 8) = 0;
    v34 = v54;
    v35 = *(v54 + 16);
    v35(v28 + v29[9], v49, v27);
    v35(v28 + v45[10], v55, v27);
    v36 = v50;
    sub_1BAD9C348();
    v47 = sub_1BAD9C338();
    v46 = v37;
    (*(v51 + 8))(v36, v52);
    v38 = *(v34 + 8);
    v38(v55, v27);
    v38(v49, v27);
    v39 = *(v25 + 8);
    v39(v59, v8);
    v39(v48, v8);
    (*(v58 + 8))(v43, v14);
    v40 = (v28 + v45[11]);
    v41 = v46;
    *v40 = v47;
    v40[1] = v41;
  }

  return __swift_destroy_boxed_opaque_existential_1(v73);
}

uint64_t Models.Video.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AC10);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAD4D684();
  sub_1BAD9DBD8();
  LOBYTE(v27[0]) = 0;
  sub_1BAD9C2C8();
  sub_1BAD4D9D8(&qword_1EBC2AC18, MEMORY[0x1E6968FB0]);
  sub_1BAD9DA28();
  if (!v2)
  {
    v34 = type metadata accessor for Models.Video();
    *&v27[0] = *(v3 + v34[7]);
    LOBYTE(v22) = 1;
    sub_1BAD4D8DC();
    sub_1BAD9DA28();
    v9 = (v3 + v34[8]);
    v10 = *v9;
    LOBYTE(v9) = *(v9 + 8);
    v32 = v10;
    v33 = v9;
    v31 = 2;
    sub_1BAD9D9E8();
    v11 = (v3 + v34[5]);
    v12 = v11[3];
    v13 = v11[1];
    v28 = v11[2];
    v29 = v12;
    v14 = v11[3];
    *v30 = v11[4];
    *&v30[10] = *(v11 + 74);
    v15 = v11[1];
    v27[0] = *v11;
    v27[1] = v15;
    v24 = v28;
    v25 = v14;
    v26[0] = v11[4];
    *(v26 + 10) = *(v11 + 74);
    v22 = v27[0];
    v23 = v13;
    v21 = 3;
    sub_1BAD4BFB8(v27, v19);
    sub_1BAD4D930();
    sub_1BAD9DA28();
    v19[2] = v24;
    v19[3] = v25;
    *v20 = v26[0];
    *&v20[10] = *(v26 + 10);
    v19[0] = v22;
    v19[1] = v23;
    sub_1BAD4BE88(v19);
    v18 = *(v3 + v34[6]);
    v17[7] = 4;
    sub_1BAD4D984();
    sub_1BAD9DA28();
    LOBYTE(v18) = 5;
    sub_1BAD9C928();
    sub_1BAD4D9D8(&qword_1EBC2AC38, MEMORY[0x1E69AAF48]);
    sub_1BAD9DA28();
    LOBYTE(v18) = 6;
    sub_1BAD9DA28();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_1BAD4D600()
{
  result = qword_1EBC2ABB0;
  if (!qword_1EBC2ABB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC2ABA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2ABB0);
  }

  return result;
}

unint64_t sub_1BAD4D684()
{
  result = qword_1EBC2ABC0;
  if (!qword_1EBC2ABC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2ABC0);
  }

  return result;
}

unint64_t sub_1BAD4D6D8()
{
  result = qword_1EBC2ABD8;
  if (!qword_1EBC2ABD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC2ABD0);
    sub_1BAD4D75C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2ABD8);
  }

  return result;
}

unint64_t sub_1BAD4D75C()
{
  result = qword_1EBC2ABE0;
  if (!qword_1EBC2ABE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC2ABE8);
    sub_1BAD4D7E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2ABE0);
  }

  return result;
}

unint64_t sub_1BAD4D7E0()
{
  result = qword_1EBC2ABF0;
  if (!qword_1EBC2ABF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2ABF0);
  }

  return result;
}

unint64_t sub_1BAD4D834()
{
  result = qword_1EBC2ABF8;
  if (!qword_1EBC2ABF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2ABF8);
  }

  return result;
}

unint64_t sub_1BAD4D888()
{
  result = qword_1EBC2AC00;
  if (!qword_1EBC2AC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2AC00);
  }

  return result;
}

unint64_t sub_1BAD4D8DC()
{
  result = qword_1EBC2AC20;
  if (!qword_1EBC2AC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2AC20);
  }

  return result;
}

unint64_t sub_1BAD4D930()
{
  result = qword_1EBC2AC28;
  if (!qword_1EBC2AC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2AC28);
  }

  return result;
}

unint64_t sub_1BAD4D984()
{
  result = qword_1EBC2AC30;
  if (!qword_1EBC2AC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2AC30);
  }

  return result;
}

uint64_t sub_1BAD4D9D8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BAD4DA24()
{
  result = qword_1EBC2AC40;
  if (!qword_1EBC2AC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2AC40);
  }

  return result;
}

unint64_t sub_1BAD4DA7C()
{
  result = qword_1EBC2AC48;
  if (!qword_1EBC2AC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2AC48);
  }

  return result;
}

unint64_t sub_1BAD4DAD4()
{
  result = qword_1EBC2AC50;
  if (!qword_1EBC2AC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2AC50);
  }

  return result;
}

unint64_t sub_1BAD4DB2C()
{
  result = qword_1EBC2AC58;
  if (!qword_1EBC2AC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2AC58);
  }

  return result;
}

void sub_1BAD4DBA8()
{
  sub_1BAD9C2C8();
  if (v0 <= 0x3F)
  {
    sub_1BAD4DC70();
    if (v1 <= 0x3F)
    {
      sub_1BAD9C928();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BAD4DC70()
{
  if (!qword_1EBC2AC70)
  {
    v0 = sub_1BAD9D598();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBC2AC70);
    }
  }
}

unint64_t sub_1BAD4DCE4()
{
  result = qword_1EBC2AC78;
  if (!qword_1EBC2AC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2AC78);
  }

  return result;
}

unint64_t sub_1BAD4DD3C()
{
  result = qword_1EBC2AC80;
  if (!qword_1EBC2AC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2AC80);
  }

  return result;
}

unint64_t sub_1BAD4DD94()
{
  result = qword_1EBC2AC88;
  if (!qword_1EBC2AC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2AC88);
  }

  return result;
}

uint64_t sub_1BAD4DDE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4C52556F65646976 && a2 == 0xE800000000000000;
  if (v4 || (sub_1BAD9DA98() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001BADAA7D0 == a2 || (sub_1BAD9DA98() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001BADAA7F0 == a2 || (sub_1BAD9DA98() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x77656976657270 && a2 == 0xE700000000000000 || (sub_1BAD9DA98() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726F697661686562 && a2 == 0xE800000000000000 || (sub_1BAD9DA98() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001BADAA810 == a2 || (sub_1BAD9DA98() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001BADAA830 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1BAD9DA98();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

CGFloat CGRect.withLayoutDirection(in:relativeTo:)(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v17 = [a1 traitCollection];
  v18 = [v17 layoutDirection];

  if (v18 == 1)
  {
    CGAffineTransformMakeScale(&v28, -1.0, 1.0);
    ty = v28.ty;
    tx = v28.tx;
    v22 = *&v28.c;
    v23 = *&v28.a;
    v29.origin.x = a2;
    v29.origin.y = a3;
    v29.size.width = a4;
    v29.size.height = a5;
    rect = a9;
    MinX = CGRectGetMinX(v29);
    v30.origin.x = a2;
    v30.origin.y = a3;
    v30.size.width = a4;
    v30.size.height = a5;
    MaxX = CGRectGetMaxX(v30);
    *&v28.a = v23;
    *&v28.c = v22;
    v28.tx = tx;
    v28.ty = ty;
    CGAffineTransformTranslate(&v27, &v28, -(MinX + MaxX), 0.0);
    v28 = v27;
    v31.origin.x = a6;
    v31.origin.y = a7;
    v31.size.width = a8;
    v31.size.height = rect;
    *&a6 = CGRectApplyAffineTransform(v31, &v28);
  }

  return a6;
}

__C::CGRect __swiftcall CGRect.withLayoutDirection(_:relativeTo:)(UITraitEnvironmentLayoutDirection _, __C::CGRect relativeTo)
{
  v6 = v4;
  v7 = v3;
  v8 = v2;
  if (_ == UITraitEnvironmentLayoutDirectionRightToLeft)
  {
    x = relativeTo.origin.x;
    y = relativeTo.origin.y;
    height = relativeTo.size.height;
    width = relativeTo.size.width;
    rect = v5;
    CGAffineTransformMakeScale(&v25, -1.0, 1.0);
    ty = v25.ty;
    tx = v25.tx;
    v19 = *&v25.c;
    v20 = *&v25.a;
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    MinX = CGRectGetMinX(v26);
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = width;
    v27.size.height = height;
    MaxX = CGRectGetMaxX(v27);
    *&v25.a = v20;
    *&v25.c = v19;
    v25.tx = tx;
    v25.ty = ty;
    CGAffineTransformTranslate(&v24, &v25, -(MinX + MaxX), 0.0);
    v25 = v24;
    v28.origin.x = v8;
    v28.origin.y = v7;
    v28.size.width = v6;
    v28.size.height = rect;
    v29 = CGRectApplyAffineTransform(v28, &v25);
    v8 = v29.origin.x;
    v7 = v29.origin.y;
    v6 = v29.size.width;
    v5 = v29.size.height;
  }

  v15 = v8;
  v16 = v7;
  v17 = v6;
  v18 = v5;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

uint64_t Models.TitledParagraph.Style.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1BAD9D978();

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

uint64_t Models.TitledParagraph.Style.rawValue.getter()
{
  if (*v0)
  {
    return 0x6C6961746564;
  }

  else
  {
    return 0x776569767265766FLL;
  }
}

uint64_t sub_1BAD4E384(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C6961746564;
  }

  else
  {
    v3 = 0x776569767265766FLL;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x6C6961746564;
  }

  else
  {
    v5 = 0x776569767265766FLL;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1BAD9DA98();
  }

  return v8 & 1;
}

uint64_t sub_1BAD4E428()
{
  sub_1BAD9DB48();
  sub_1BAD9D018();

  return sub_1BAD9DB88();
}

uint64_t sub_1BAD4E4A8()
{
  sub_1BAD9D018();
}

uint64_t sub_1BAD4E514()
{
  sub_1BAD9DB48();
  sub_1BAD9D018();

  return sub_1BAD9DB88();
}

uint64_t sub_1BAD4E590@<X0>(char *a1@<X8>)
{
  v2 = sub_1BAD9D978();

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

void sub_1BAD4E5F0(uint64_t *a1@<X8>)
{
  v2 = 0x776569767265766FLL;
  if (*v1)
  {
    v2 = 0x6C6961746564;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t Models.TitledParagraph.init(text:style:primarySubtitle:secondarySubtitle:isCollapsed:wantsCollapsedNewlines:impressionMetrics:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v35 = a3[1];
  v36 = *a3;
  v33 = *a2;
  v34 = *(a3 + 16);
  v16 = *a4;
  v15 = a4[1];
  v37 = *(a4 + 16);
  v17 = type metadata accessor for Models.TitledParagraph();
  v18 = a8 + v17[5];
  *v18 = v12;
  *(v18 + 8) = v13;
  *(v18 + 16) = v14;
  v38 = v12;
  v39 = v13;
  v40 = v14;
  sub_1BAD39BA4(v12, v13, v14);
  v19 = sub_1BAD3970C(&v38);
  sub_1BAD39BB4(v38, v39, v40);
  *(a8 + v17[6]) = v19;
  if (a6)
  {
    v20 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
    v32 = [v20 length];
    v21 = [v20 mutableString];

    v22 = sub_1BAD9CF38();
    v23 = v15;
    v24 = v16;
    v25 = a5;
    v26 = a7;
    v27 = sub_1BAD9CF38();
    [v21 replaceOccurrencesOfString:v22 withString:v27 options:1024 range:{0, v32}];

    a7 = v26;
    a5 = v25;
    v16 = v24;
    v15 = v23;
    *(a8 + v17[7]) = v20;
  }

  else
  {
    *(a8 + v17[7]) = v19;
    v28 = v19;
  }

  *(a8 + v17[8]) = v33;
  v29 = a8 + v17[9];
  *v29 = v36;
  *(v29 + 8) = v35;
  *(v29 + 16) = v34;
  v30 = a8 + v17[10];
  *v30 = v16;
  *(v30 + 8) = v15;
  *(v30 + 16) = v37;
  *(a8 + v17[11]) = a5 & 1;

  return sub_1BAD39BDC(a7, a8);
}

uint64_t type metadata accessor for Models.TitledParagraph()
{
  result = qword_1EBC2AD08;
  if (!qword_1EBC2AD08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Models.TitledParagraph.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v98 = a2;
  v87 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A668);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v86 = &v73 - v5;
  v6 = sub_1BAD9C8F8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v85 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v88 = &v73 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v90 = &v73 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v73 - v14;
  v16 = sub_1BAD9C7C8();
  v17 = *(v16 - 8);
  v95 = v16;
  v96 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v73 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v73 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v89 = &v73 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v73 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v73 - v32;
  v97 = a1;
  sub_1BAD9C7D8();
  v34 = v98;
  v35 = *(v7 + 16);
  v94 = v6;
  v91 = v7 + 16;
  v92 = v35;
  v35(v15, v98, v6);
  v36 = v93;
  Models.ProgrammedText.init(deserializing:using:)(v33, v15, v106);
  if (v36)
  {
    (*(v7 + 8))(v34, v94);
    return (*(v96 + 8))(v97, v95);
  }

  else
  {
    v82 = v25;
    v79 = v22;
    v80 = v19;
    v93 = v7;
    v83 = v106[0];
    v84 = v106[1];
    v108 = v107;
    sub_1BAD9C7D8();
    sub_1BAD4FEC4();
    sub_1BAD9C728();
    v39 = v96 + 8;
    v38 = *(v96 + 8);
    v38(v30, v95);
    v81 = v109;
    v40 = v89;
    sub_1BAD9C7D8();
    v41 = v90;
    v42 = v94;
    v92(v90, v98, v94);
    Models.ProgrammedText.init(deserializing:using:)(v40, v41, v104);
    v89 = v30;
    v78 = v38;
    v96 = v39;
    v43 = v104[0];
    v90 = v104[1];
    v44 = v105;
    v45 = v82;
    v46 = v97;
    sub_1BAD9C7D8();
    v47 = v98;
    v48 = v88;
    v92(v88, v98, v42);
    Models.ProgrammedText.init(deserializing:using:)(v45, v48, v102);
    v82 = v43;
    LODWORD(v88) = v44;
    v77 = v102[0];
    v76 = v102[1];
    v75 = v103;
    v49 = v79;
    sub_1BAD9C7D8();
    v74 = sub_1BAD9C778();
    v50 = v49;
    v51 = v95;
    v52 = v78;
    v78(v50, v95);
    v53 = v80;
    sub_1BAD9C7D8();
    LODWORD(v79) = sub_1BAD9C778();
    v52(v53, v51);
    sub_1BAD9CB28();
    sub_1BAD9C7D8();
    v92(v85, v47, v94);
    v54 = v86;
    sub_1BAD9CB08();
    v55 = type metadata accessor for Models.TitledParagraph();
    v56 = v87;
    v57 = v87 + v55[5];
    v58 = v83;
    v59 = v84;
    *v57 = v83;
    *(v57 + 8) = v59;
    v60 = v108;
    *(v57 + 16) = v108;
    v99 = v58;
    v100 = v59;
    v101 = v60;
    sub_1BAD39BA4(v58, v59, v60);
    v61 = sub_1BAD3970C(&v99);
    sub_1BAD39BB4(v99, v100, v101);
    *(v56 + v55[6]) = v61;
    if (v79)
    {
      v62 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
      v63 = [v62 length];
      v64 = [v62 mutableString];

      v65 = v46;
      v66 = sub_1BAD9CF38();
      v67 = sub_1BAD9CF38();
      [v64 replaceOccurrencesOfString:v66 withString:v67 options:1024 range:{0, v63}];

      v56 = v87;
      v46 = v65;
      v54 = v86;

      (*(v93 + 8))(v98, v94);
    }

    else
    {
      v68 = *(v93 + 8);
      v62 = v61;
      v68(v98, v94);
    }

    v78(v46, v95);
    *(v56 + v55[7]) = v62;
    *(v56 + v55[8]) = v81;
    v69 = v56 + v55[9];
    v70 = v90;
    *v69 = v82;
    *(v69 + 8) = v70;
    *(v69 + 16) = v88;
    v71 = v56 + v55[10];
    v72 = v76;
    *v71 = v77;
    *(v71 + 8) = v72;
    *(v71 + 16) = v75;
    *(v56 + v55[11]) = v74 & 1;
    return sub_1BAD39BDC(v54, v56);
  }
}

id Models.TitledParagraph.text.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Models.TitledParagraph() + 20);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;

  return sub_1BAD39BA4(v4, v5, v6);
}

id Models.TitledParagraph.attributedText.getter()
{
  v1 = *(v0 + *(type metadata accessor for Models.TitledParagraph() + 24));

  return v1;
}

id Models.TitledParagraph.collapsedAttributedText.getter()
{
  v1 = *(v0 + *(type metadata accessor for Models.TitledParagraph() + 28));

  return v1;
}

uint64_t Models.TitledParagraph.style.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Models.TitledParagraph();
  *a1 = *(v1 + *(result + 32));
  return result;
}

id Models.TitledParagraph.primarySubtitle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Models.TitledParagraph() + 36);
  v4 = *v3;
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  v6 = *(v3 + 16);
  *(a1 + 16) = v6;

  return sub_1BAD3A964(v4, v5, v6);
}

id Models.TitledParagraph.secondarySubtitle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Models.TitledParagraph() + 40);
  v4 = *v3;
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  v6 = *(v3 + 16);
  *(a1 + 16) = v6;

  return sub_1BAD3A964(v4, v5, v6);
}

uint64_t Models.TitledParagraph.isCollapsed.setter(char a1)
{
  result = type metadata accessor for Models.TitledParagraph();
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t sub_1BAD4F4A4()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x656C797473;
    if (v1 != 1)
    {
      v5 = 0x537972616D697270;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 1954047348;
    }
  }

  else
  {
    v2 = 0xD000000000000016;
    v3 = 0xD000000000000011;
    if (v1 != 5)
    {
      v2 = 0xD000000000000011;
    }

    if (v1 != 3)
    {
      v3 = 0x70616C6C6F437369;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1BAD4F590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BAD506A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BAD4F5B8(uint64_t a1)
{
  v2 = sub_1BAD4FF18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAD4F5F4(uint64_t a1)
{
  v2 = sub_1BAD4FF18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Models.TitledParagraph.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v86 = type metadata accessor for Models.TitledParagraph();
  MEMORY[0x1EEE9AC00](v86);
  v4 = &v62[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A668);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v62[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v62[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AC98);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v62[-v13];
  v15 = a1[3];
  v89 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1BAD4FF18();
  v16 = v88;
  sub_1BAD9DBB8();
  if (v16)
  {
    v40 = v89;
  }

  else
  {
    v85 = v10;
    v17 = v12;
    v88 = v4;
    v94 = 0;
    sub_1BAD39DB8();
    sub_1BAD9D9C8();
    v18 = v90;
    v19 = v91;
    v20 = v92;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2ACA8);
    v94 = 1;
    sub_1BAD4FF6C();
    v21 = v14;
    sub_1BAD9D988();
    v83 = v19;
    v84 = v18;
    v93 = v20;
    v22 = v90;
    v23 = v90 != 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2ACD0);
    v94 = 2;
    sub_1BAD500C8();
    sub_1BAD9D988();
    v78 = v23;
    v24 = v91;
    v25 = v92;
    v82 = v90;
    if (v92 == 254)
    {
      v26 = 0;
    }

    else
    {
      v26 = v90;
    }

    if (v92 == 254)
    {
      v27 = 0;
    }

    else
    {
      v27 = v91;
    }

    v80 = v27;
    v81 = v26;
    if (v92 == 254)
    {
      v28 = -1;
    }

    else
    {
      v28 = v92;
    }

    v79 = v28;
    v94 = 3;
    sub_1BAD9D988();
    v77 = v25;
    LODWORD(v71) = v22;
    v76 = v24;
    v30 = v90;
    v29 = v91;
    v31 = v92;
    if (v92 == 254)
    {
      v32 = 0;
    }

    else
    {
      v32 = v90;
    }

    if (v92 == 254)
    {
      v33 = 0;
    }

    else
    {
      v33 = v91;
    }

    v73 = v33;
    v74 = v32;
    if (v92 == 254)
    {
      v34 = -1;
    }

    else
    {
      v34 = v92;
    }

    v72 = v34;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A558);
    v94 = 4;
    sub_1BAD501E4();
    v75 = v35;
    sub_1BAD9D988();
    v70 = v31;
    v68 = v30;
    v69 = v29;
    v36 = v90;
    v37 = v90 != 3;
    v94 = 5;
    sub_1BAD9D988();
    v66 = v37;
    v67 = v36;
    LODWORD(v75) = v90;
    sub_1BAD9CB28();
    LOBYTE(v90) = 6;
    sub_1BAD50268();
    v38 = v85;
    sub_1BAD9D988();
    v39 = v93;
    v64 = v21;
    v65 = v11;
    v63 = v78 & v71;
    v78 = v66 & v67;
    v42 = v70;
    v43 = v83;
    v71 = v7;
    sub_1BAD39CF4(v38, v7);
    v44 = v86;
    v45 = v84;
    v46 = v88;
    v47 = &v88[*(v86 + 20)];
    *v47 = v84;
    *(v47 + 1) = v43;
    v47[16] = v39;
    v90 = v45;
    v91 = v43;
    v92 = v39;
    sub_1BAD502C0(v82, v76, v77);
    sub_1BAD502C0(v68, v69, v42);
    sub_1BAD39BA4(v45, v43, v39);
    v48 = sub_1BAD3970C(&v90);
    sub_1BAD39BB4(v90, v91, v92);
    *(v46 + v44[6]) = v48;
    if (v75 == 3 || (v75 & 1) == 0)
    {
      v52 = v48;
    }

    else
    {
      v49 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
      v50 = [v49 length];
      v51 = [v49 mutableString];
      v52 = v49;

      v53 = sub_1BAD9CF38();
      v54 = sub_1BAD9CF38();
      [v51 replaceOccurrencesOfString:v53 withString:v54 options:1024 range:{0, v50}];
    }

    v55 = v87;
    v56 = v89;
    v57 = v72;
    sub_1BAD501D0(v82, v76, v77);
    sub_1BAD501D0(v68, v69, v70);
    sub_1BAD3A0BC(v85);
    (*(v17 + 8))(v64, v65);
    *(v46 + v44[7]) = v52;
    *(v46 + v44[8]) = v63;
    v58 = v46 + v44[9];
    v59 = v80;
    *v58 = v81;
    *(v58 + 8) = v59;
    *(v58 + 16) = v79;
    v60 = v46 + v44[10];
    v61 = v73;
    *v60 = v74;
    *(v60 + 8) = v61;
    *(v60 + 16) = v57;
    *(v46 + v44[11]) = v78;
    sub_1BAD39BDC(v71, v46);
    sub_1BAD502D4(v46, v55);
    v40 = v56;
  }

  return __swift_destroy_boxed_opaque_existential_1(v40);
}

unint64_t sub_1BAD4FEC4()
{
  result = qword_1EBC2AC90;
  if (!qword_1EBC2AC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2AC90);
  }

  return result;
}

unint64_t sub_1BAD4FF18()
{
  result = qword_1EBC2ACA0;
  if (!qword_1EBC2ACA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2ACA0);
  }

  return result;
}

unint64_t sub_1BAD4FF6C()
{
  result = qword_1EBC2ACB0;
  if (!qword_1EBC2ACB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC2ACA8);
    sub_1BAD4FFF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2ACB0);
  }

  return result;
}

unint64_t sub_1BAD4FFF0()
{
  result = qword_1EBC2ACB8;
  if (!qword_1EBC2ACB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC2ACC0);
    sub_1BAD50074();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2ACB8);
  }

  return result;
}

unint64_t sub_1BAD50074()
{
  result = qword_1EBC2ACC8;
  if (!qword_1EBC2ACC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2ACC8);
  }

  return result;
}

unint64_t sub_1BAD500C8()
{
  result = qword_1EBC2ACD8;
  if (!qword_1EBC2ACD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC2ACD0);
    sub_1BAD5014C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2ACD8);
  }

  return result;
}

unint64_t sub_1BAD5014C()
{
  result = qword_1EBC2ACE0;
  if (!qword_1EBC2ACE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC2ACE8);
    sub_1BAD39DB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2ACE0);
  }

  return result;
}

void sub_1BAD501D0(void *a1, uint64_t a2, char a3)
{
  if (a3 != 254)
  {
    sub_1BAD39BB4(a1, a2, a3);
  }
}

unint64_t sub_1BAD501E4()
{
  result = qword_1EBC2A560;
  if (!qword_1EBC2A560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC2A558);
    sub_1BAD28384();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A560);
  }

  return result;
}

unint64_t sub_1BAD50268()
{
  result = qword_1EBC2A968;
  if (!qword_1EBC2A968)
  {
    sub_1BAD9CB28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A968);
  }

  return result;
}

id sub_1BAD502C0(id result, uint64_t a2, char a3)
{
  if (a3 != 254)
  {
    return sub_1BAD3A964(result, a2, a3);
  }

  return result;
}

uint64_t sub_1BAD502D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Models.TitledParagraph();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BAD5033C()
{
  result = qword_1EBC2ACF0;
  if (!qword_1EBC2ACF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2ACF0);
  }

  return result;
}

unint64_t sub_1BAD50394()
{
  result = qword_1EBC2ACF8;
  if (!qword_1EBC2ACF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC2AD00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2ACF8);
  }

  return result;
}

void sub_1BAD50420()
{
  sub_1BAD3A3D4();
  if (v0 <= 0x3F)
  {
    sub_1BAD504E4();
    if (v1 <= 0x3F)
    {
      sub_1BAD50530();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1BAD504E4()
{
  result = qword_1EDBA5BC0;
  if (!qword_1EDBA5BC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDBA5BC0);
  }

  return result;
}

void sub_1BAD50530()
{
  if (!qword_1EBC2AD18)
  {
    v0 = sub_1BAD9D598();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBC2AD18);
    }
  }
}

unint64_t sub_1BAD505A4()
{
  result = qword_1EBC2AD20;
  if (!qword_1EBC2AD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2AD20);
  }

  return result;
}

unint64_t sub_1BAD505FC()
{
  result = qword_1EBC2AD28;
  if (!qword_1EBC2AD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2AD28);
  }

  return result;
}

unint64_t sub_1BAD50654()
{
  result = qword_1EBC2AD30;
  if (!qword_1EBC2AD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2AD30);
  }

  return result;
}

uint64_t sub_1BAD506A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_1BAD9DA98() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000 || (sub_1BAD9DA98() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x537972616D697270 && a2 == 0xEF656C7469746275 || (sub_1BAD9DA98() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001BADAA850 == a2 || (sub_1BAD9DA98() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x70616C6C6F437369 && a2 == 0xEB00000000646573 || (sub_1BAD9DA98() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001BADAA1C0 == a2 || (sub_1BAD9DA98() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001BADAA1E0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1BAD9DA98();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

JUMeasurements __swiftcall CustomLayout.measure(toFit:with:)(CGSize toFit, UITraitCollection with)
{
  v4 = v3;
  v5 = v2;
  height = toFit.height;
  width = toFit.width;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v26 - v12;
  (*(v4 + 40))(v5, v4, v11);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = (*(AssociatedConformanceWitness + 8))(with.super.isa, AssociatedTypeWitness, AssociatedConformanceWitness, width, height);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  (*(v10 + 8))(v13, AssociatedTypeWitness);
  v22 = v15;
  v23 = v17;
  v24 = v19;
  v25 = v21;
  result.var3 = v25;
  result.var2 = v24;
  result.var1 = v23;
  result.var0 = v22;
  return result;
}

Swift::Void __swiftcall CustomLayout.place(at:with:)(__C::CGRect at, UITraitCollection with)
{
  v4 = v3;
  v5 = v2;
  height = at.size.height;
  width = at.size.width;
  y = at.origin.y;
  x = at.origin.x;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v17 - v14;
  (*(v4 + 40))(v5, v4, v13);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 16))(with.super.isa, AssociatedTypeWitness, AssociatedConformanceWitness, x, y, width, height);
  (*(v12 + 8))(v15, AssociatedTypeWitness);
}

uint64_t CustomLayout._eraseToAnyForTesting(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(a3 + 40))(a2, a3, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AD38);
  if (swift_dynamicCast())
  {
    sub_1BAD0B40C(v11, v13);
    v8 = v14;
    v9 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    (*(v9 + 8))(a1, v8, v9);
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    sub_1BAD50DDC(v11);
    v13[0] = 0;
    v13[1] = 0xE000000000000000;
    sub_1BAD9D7E8();
    sub_1BAD9DA78();
    MEMORY[0x1BFB026B0](0xD000000000000043, 0x80000001BADAA890);
    result = sub_1BAD9D8B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BAD50DDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AD40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static BinaryFloatingPoint<>.interpolateLinearly(between:and:forInput:)(uint64_t a1, double a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v17 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v17 - v13;
  sub_1BAD9CE68();
  sub_1BAD9D3C8();
  v15 = *(v6 + 8);
  v15(v11, a4);
  *&v17[1] = a2;
  sub_1BAD51050();
  sub_1BAD9CE78();
  sub_1BAD9D3C8();
  v15(v8, a4);
  sub_1BAD9D8C8();
  v15(v11, a4);
  return (v15)(v14, a4);
}

unint64_t sub_1BAD51050()
{
  result = qword_1EBC2AD48;
  if (!qword_1EBC2AD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2AD48);
  }

  return result;
}

float sub_1BAD510A4@<S0>(float *a1@<X0>, float *a2@<X1>, float *a3@<X8>, double a4@<D0>)
{
  v5 = *a2;
  v6 = 1.0 - a4;
  v7 = *a1 * v6;
  result = v7 + (v5 * sub_1BAD51128(a4));
  *a3 = result;
  return result;
}

id sub_1BAD5117C()
{
  v1 = OBJC_IVAR___JULanguageAwareTextStorage_textStorage;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1BAD51230(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___JULanguageAwareTextStorage_textStorage;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id LanguageAwareTextStorage.__allocating_init(_:)(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  *&v4[OBJC_IVAR___JULanguageAwareTextStorage_textStorage] = a1;
  v5 = a1;
  v6 = [v5 delegate];
  *&v4[OBJC_IVAR___JULanguageAwareTextStorage_originalTextStorageDelegate] = v6;
  swift_beginAccess();
  v7 = byte_1EBC2B3D1;
  objc_allocWithZone(type metadata accessor for LanguageAwareString());
  v8 = v5;
  v9 = sub_1BAD871C0(v8, v7);

  *&v4[OBJC_IVAR___JULanguageAwareTextStorage_languageAwareString] = v9;
  v12.receiver = v4;
  v12.super_class = v2;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  [v8 setDelegate_];

  return v10;
}

id LanguageAwareTextStorage.init(_:)(void *a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR___JULanguageAwareTextStorage_textStorage] = a1;
  v3 = a1;
  v4 = [v3 delegate];
  *&v2[OBJC_IVAR___JULanguageAwareTextStorage_originalTextStorageDelegate] = v4;
  swift_beginAccess();
  v5 = byte_1EBC2B3D1;
  objc_allocWithZone(type metadata accessor for LanguageAwareString());
  v6 = v3;
  v7 = sub_1BAD871C0(v6, v5);

  *&v2[OBJC_IVAR___JULanguageAwareTextStorage_languageAwareString] = v7;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for LanguageAwareTextStorage();
  v8 = objc_msgSendSuper2(&v10, sel_init);
  [v6 setDelegate_];

  return v8;
}

id sub_1BAD514D4(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + OBJC_IVAR___JULanguageAwareTextStorage_originalTextStorageDelegate);
  if (v6)
  {
    v11 = result;
    result = [v6 respondsToSelector_];
    if (result)
    {

      return [v6 textStorage:v11 willProcessEditing:a2 range:a3 changeInLength:{a4, a5}];
    }
  }

  return result;
}

void sub_1BAD51644(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = a2;
  if ((a2 & 2) != 0)
  {
    swift_beginAccess();
    v12 = byte_1EBC2B3D1;
    objc_allocWithZone(type metadata accessor for LanguageAwareString());
    v13 = a1;
    v14 = sub_1BAD871C0(v13, v12);

    v15 = *(v6 + OBJC_IVAR___JULanguageAwareTextStorage_languageAwareString);
    *(v6 + OBJC_IVAR___JULanguageAwareTextStorage_languageAwareString) = v14;

    v10 |= 1uLL;
  }

  v16 = *(v6 + OBJC_IVAR___JULanguageAwareTextStorage_originalTextStorageDelegate);
  if (v16)
  {
    if ([v16 respondsToSelector_])
    {
      [v16 textStorage:a1 didProcessEditing:v10 range:a3 changeInLength:{a4, a5}];
    }
  }
}

uint64_t sub_1BAD5181C(uint64_t a1, void *a2, void *a3, char a4, double a5)
{
  v11 = *(v5 + OBJC_IVAR___JULanguageAwareTextStorage_languageAwareString);
  sub_1BAD8680C(a1, a2, a3, a4, a5);
  v13 = v12;

  return v13;
}

id LanguageAwareTextStorage.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LanguageAwareTextStorage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LanguageAwareTextStorage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BAD51BA4(void *a1)
{
  result = [v1 length];
  v4 = result;
  if (result < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    while (1)
    {
      result = [a1 characterIsMember_];
      if (!result)
      {
        break;
      }

      if (v4 == ++v5)
      {
        goto LABEL_18;
      }
    }
  }

  if (v5 == v4)
  {
    goto LABEL_18;
  }

  v6 = v4 - 1;
  if (__OFSUB__(v4, 1))
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  while (v6 >= v5)
  {
    result = [a1 characterIsMember_];
    if (!result)
    {
      break;
    }

    if (__OFSUB__(v6--, 1))
    {
      __break(1u);
      break;
    }
  }

  if (__OFADD__(v6, 1))
  {
    goto LABEL_22;
  }

  v8 = v4 - v6;
  if (__OFSUB__(v4, v6))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (__OFSUB__(v8, 1))
  {
LABEL_24:
    __break(1u);
    return result;
  }

  [v1 deleteCharactersInRange_];
  v4 = v5;
LABEL_18:

  return [v1 deleteCharactersInRange_];
}