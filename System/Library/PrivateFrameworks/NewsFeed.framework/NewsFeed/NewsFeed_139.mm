uint64_t sub_1D67FFC08()
{
  v0 = sub_1D72641CC();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

void sub_1D67FFC54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

char *sub_1D67FFCB8(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = &v1[OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_sourceFile];
  sub_1D607F0A4(v25);
  v6 = v25[3];
  *(v5 + 2) = v25[2];
  *(v5 + 3) = v6;
  v7 = v25[1];
  *v5 = v25[0];
  *(v5 + 1) = v7;
  v8 = v25[7];
  *(v5 + 6) = v25[6];
  *(v5 + 7) = v8;
  v9 = v25[5];
  *(v5 + 4) = v25[4];
  *(v5 + 5) = v9;
  v10 = &v2[OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_didTapOnHighlight];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_messageLabel;
  sub_1D725D04C();
  *&v2[v11] = sub_1D725D01C();
  v12 = OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_messageFont;
  *&v2[v12] = [objc_opt_self() monospacedSystemFontOfSize:10.0 weight:*MEMORY[0x1E69DB980]];
  v13 = OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_messageTextColor;
  *&v2[v13] = [objc_opt_self() whiteColor];
  v14 = OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_highlight;
  v15 = type metadata accessor for DebugFormatDebuggerSourceHighlight();
  (*(*(v15 - 8) + 56))(&v2[v14], 1, 1, v15);
  *&v2[OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_editor] = a1;
  v24.receiver = v2;
  v24.super_class = ObjectType;

  v16 = objc_msgSendSuper2(&v24, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v17 = OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_messageLabel;
  v18 = *&v16[OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_messageLabel];
  v19 = v16;
  [v18 setTextAlignment_];
  [*&v16[v17] setHidden_];
  [*&v16[v17] setLineBreakMode_];
  [v19 addSubview_];
  v20 = *&v16[v17];
  v21 = sub_1D725D03C();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = sub_1D725F63C();

  return v19;
}

void sub_1D67FFF30()
{
  sub_1D68012B8(0, &qword_1EC88E2E0, type metadata accessor for DebugFormatDebuggerSourceHighlight, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v15 - v2;
  v4 = type metadata accessor for DebugFormatDebuggerSourceHighlight();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_highlight;
    swift_beginAccess();
    sub_1D6800EBC(&v10[v11], v3);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {

      sub_1D6800F50(v3);
    }

    else
    {
      sub_1D679CC64(v3, v8, type metadata accessor for DebugFormatDebuggerSourceHighlight);
      v12 = &v10[OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_didTapOnHighlight];
      swift_beginAccess();
      v13 = *v12;
      if (*v12)
      {
        swift_endAccess();
        v14 = *&v10[OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_messageLabel];

        v13(v8, v14);
        sub_1D5B74328(v13);
        sub_1D6800FDC(v8, type metadata accessor for DebugFormatDebuggerSourceHighlight);
      }

      else
      {
        sub_1D6800FDC(v8, type metadata accessor for DebugFormatDebuggerSourceHighlight);
        swift_endAccess();
      }
    }
  }
}

void sub_1D68001C4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for FormatDebuggerContext();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D68012B8(0, &qword_1EC88E2E0, type metadata accessor for DebugFormatDebuggerSourceHighlight, MEMORY[0x1E69E6720]);
  *&v9 = MEMORY[0x1EEE9AC00](v7 - 8, v8).n128_u64[0];
  v11 = (&v35 - v10);
  v38.receiver = v1;
  v38.super_class = ObjectType;
  objc_msgSendSuper2(&v38, sel_layoutSubviews, v9);
  [v1 setHidden_];
  v12 = OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_highlight;
  swift_beginAccess();
  sub_1D6800EBC(&v1[v12], v11);
  v13 = type metadata accessor for DebugFormatDebuggerSourceHighlight();
  if ((*(*(v13 - 8) + 48))(v11, 1, v13) == 1)
  {
    [v1 setHidden_];
    return;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D679CC64(v11, v6, type metadata accessor for FormatDebuggerContext);
      v15 = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
      sub_1D6800888();
      v17 = v16;
      [v15 appendAttributedString_];

      v18 = sub_1D632416C();
      v36 = 32;
      v37 = 0xE100000000000000;
      MEMORY[0x1DA6F9910](v18);

      v19 = sub_1D6800A58();

      [v15 appendAttributedString_];

      v20 = objc_opt_self();
      v21 = v15;
      v22 = [v20 systemBlueColor];
      sub_1D6800698(v15, v22);

      sub_1D6800FDC(v6, type metadata accessor for FormatDebuggerContext);
      return;
    }

    v32 = [objc_opt_self() systemBlueColor];
    v33 = [v32 colorWithAlphaComponent_];
  }

  else
  {
    v23 = *v11;
    if (*v11)
    {
      v24 = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
      sub_1D6800888();
      v26 = v25;
      [v24 appendAttributedString_];

      v27 = sub_1D68011B4(v23);
      v36 = 32;
      v37 = 0xE100000000000000;
      MEMORY[0x1DA6F9910](v27);

      v28 = sub_1D6800A58();

      [v24 appendAttributedString_];

      v29 = objc_opt_self();
      v30 = v24;
      v31 = [v29 systemRedColor];
      sub_1D6800698(v24, v31);

      return;
    }

    v32 = [objc_opt_self() systemRedColor];
    v33 = [v32 colorWithAlphaComponent_];
  }

  v34 = v33;
  [v1 setBackgroundColor_];

  [*&v1[OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_messageLabel] setHidden_];
}

void sub_1D6800698(void *a1, id a2)
{
  v5 = [a2 colorWithAlphaComponent_];
  [v2 setBackgroundColor_];

  v6 = *&v2[OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_messageLabel];
  [v6 setHidden_];
  if (a1)
  {
    v13 = a1;
    [v6 setHidden_];
    [v6 setBackgroundColor_];
    [v6 setAttributedText_];
    [v6 sizeToFit];
    [v2 bounds];
    v7 = CGRectGetWidth(v15) * 0.5;
    [v2 bounds];
    Width = CGRectGetWidth(v16);
    [v6 frame];
    v9 = Width - CGRectGetWidth(v17);
    if (v7 <= v9)
    {
      v7 = v9;
    }

    [v6 frame];
    v10 = CGRectGetWidth(v18);
    [v2 bounds];
    v11 = CGRectGetWidth(v19) * 0.5;
    if (v11 >= v10)
    {
      v11 = v10;
    }

    v12 = v11 + 8.0;
    [v2 bounds];
    [v6 setFrame_];
  }
}

void sub_1D6800888()
{
  v1 = sub_1D726203C();
  v2 = [objc_opt_self() systemImageNamed_];

  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_messageFont);
    v4 = [objc_opt_self() configurationWithFont_];
    v5 = [v2 imageWithConfiguration_];

    v6 = [objc_opt_self() textAttachmentWithImage_];
    v7 = [objc_opt_self() attributedStringWithAttachment_];
    v8 = *(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_messageTextColor);
    v13 = sub_1D5B5A498(0, qword_1EDF1A6A0);
    v12[0] = v8;
    v9 = v8;
    v10 = sub_1D726311C();

    __swift_destroy_boxed_opaque_existential_1(v12);
    v13 = sub_1D5B5A498(0, &qword_1EDF1A720);
    v12[0] = v3;
    v11 = v3;
    sub_1D726311C();

    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    __break(1u);
  }
}

id sub_1D6800A58()
{
  sub_1D68012B8(0, &qword_1EDF194E0, sub_1D5C09DD4, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7270C10;
  v2 = *MEMORY[0x1E69DB650];
  *(inited + 32) = *MEMORY[0x1E69DB650];
  v3 = *(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_messageTextColor);
  v4 = sub_1D5B5A498(0, qword_1EDF1A6A0);
  *(inited + 40) = v3;
  v5 = *MEMORY[0x1E69DB648];
  *(inited + 64) = v4;
  *(inited + 72) = v5;
  v6 = *(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_messageFont);
  *(inited + 104) = sub_1D5B5A498(0, &qword_1EDF1A720);
  *(inited + 80) = v6;
  v7 = v2;
  v8 = v3;
  v9 = v5;
  v10 = v6;
  sub_1D5C09CEC(inited);
  swift_setDeallocating();
  sub_1D5C09DD4();
  swift_arrayDestroy();
  v11 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v12 = sub_1D726203C();
  type metadata accessor for Key(0);
  sub_1D5C09E68();
  v13 = sub_1D7261D2C();

  v14 = [v11 initWithString:v12 attributes:v13];

  return v14;
}

uint64_t type metadata accessor for DebugFormatDebuggerSourceHighlightView()
{
  result = qword_1EC88C218;
  if (!qword_1EC88C218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6800DC0()
{
  sub_1D68012B8(319, &qword_1EC88E2E0, type metadata accessor for DebugFormatDebuggerSourceHighlight, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1D6800EBC(uint64_t a1, uint64_t a2)
{
  sub_1D68012B8(0, &qword_1EC88E2E0, type metadata accessor for DebugFormatDebuggerSourceHighlight, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6800F50(uint64_t a1)
{
  sub_1D68012B8(0, &qword_1EC88E2E0, type metadata accessor for DebugFormatDebuggerSourceHighlight, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D6800FDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D680103C()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_sourceFile);
  sub_1D607F0A4(v13);
  v3 = v13[3];
  v2[2] = v13[2];
  v2[3] = v3;
  v4 = v13[1];
  *v2 = v13[0];
  v2[1] = v4;
  v5 = v13[7];
  v2[6] = v13[6];
  v2[7] = v5;
  v6 = v13[5];
  v2[4] = v13[4];
  v2[5] = v6;
  v7 = (v1 + OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_didTapOnHighlight);
  *v7 = 0;
  v7[1] = 0;
  v8 = OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_messageLabel;
  sub_1D725D04C();
  *(v1 + v8) = sub_1D725D01C();
  v9 = OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_messageFont;
  *(v1 + v9) = [objc_opt_self() monospacedSystemFontOfSize:10.0 weight:*MEMORY[0x1E69DB980]];
  v10 = OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_messageTextColor;
  *(v1 + v10) = [objc_opt_self() whiteColor];
  v11 = OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_highlight;
  v12 = type metadata accessor for DebugFormatDebuggerSourceHighlight();
  (*(*(v12 - 8) + 56))(v1 + v11, 1, 1, v12);
  sub_1D726402C();
  __break(1u);
}

uint64_t sub_1D68011B4(void *a1)
{
  v12 = a1;
  v2 = a1;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  sub_1D5B49474(0, &qword_1EC890C50);
  if (swift_dynamicCast())
  {
    sub_1D5B7DDE8(&v11, v8);
    v3 = v9;
    v4 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v5 = (*(v4 + 16))(v3, v4);
    __swift_destroy_boxed_opaque_existential_1(v8);
    return v5;
  }

  else
  {
    v7 = a1;
    return sub_1D72620FC();
  }
}

void sub_1D68012B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t FeedActivityIndicatorCoverStyler.init(indicatorColor:backgroundColor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 100;
  a3[1] = result;
  a3[2] = a2;
  return result;
}

void sub_1D6801354()
{
  v0 = objc_opt_self();
  v1 = [v0 labelColor];
  v2 = [v0 secondarySystemBackgroundColor];
  v3 = [v0 systemBackgroundColor];
  v4 = [v0 ts:v2 dynamicColor:v3 withDarkStyleVariant:?];

  qword_1EDF13328 = 100;
  unk_1EDF13330 = v1;
  qword_1EDF13338 = v4;
}

id static FeedActivityIndicatorCoverStyler.feedBackground.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EDF13320 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_1EDF13330;
  v2 = qword_1EDF13338;
  v6 = qword_1EDF13338;
  *a1 = qword_1EDF13328;
  a1[1] = v1;
  a1[2] = v2;
  v3 = v1;

  return v6;
}

uint64_t FormatTranslate.init(x:y:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for FormatRange();
  v7 = *(*(v6 - 8) + 32);
  v7(a3, a1, v6);
  v8 = type metadata accessor for FormatTranslate();
  return (v7)(a3 + *(v8 + 52), a2, v6);
}

uint64_t FormatTranslate.y.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = type metadata accessor for FormatRange();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t static FormatTranslate.== infix(_:_:)()
{
  if (static FormatRange.== infix(_:_:)())
  {
    type metadata accessor for FormatTranslate();
    v0 = static FormatRange.== infix(_:_:)();
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t sub_1D680172C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6801768(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t sub_1D6801834()
{
  result = type metadata accessor for FormatRange();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D68018AC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = *(v4 + 80);
  v6 = *(*(*(a3 + 16) - 8) + 64);
  v9 = ((((v6 + v8) & ~v8) + v6 + v8) & ~v8) + ((v6 + v8) & ~v8) + v6;
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v12 = ((v7 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_22;
  }

LABEL_11:
  v13 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v13 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v5 + (v9 | v13) + 1;
}

char *sub_1D6801A08(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  v8 = ((*(v5 + 64) + v7) & ~v7) + *(v5 + 64);
  v9 = ((v8 + v7) & ~v7) + v8;
  v10 = a3 >= v6;
  v11 = a3 - v6;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v16 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v16))
      {
        v12 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v12 = v17;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v6 < a2)
  {
    v13 = ~v6 + a2;
    if (v9 < 4)
    {
      v15 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v18 = v13 & ~(-1 << (8 * v9));
        v19 = result;
        bzero(result, v9);
        result = v19;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v19 = v18;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&result[v9] = v15;
              }

              else
              {
                *&result[v9] = v15;
              }

              return result;
            }
          }

          else
          {
            *v19 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v19 = v18;
        v19[2] = BYTE2(v18);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v14 = result;
      bzero(result, v9);
      result = v14;
      *v14 = v13;
      v15 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      result[v9] = v15;
    }

    return result;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v9] = 0;
  }

  else if (v12)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v20 = *(v5 + 56);

  return v20();
}

uint64_t sub_1D6801C3C(void *a1)
{
  v3 = v1;
  sub_1D6804E50(0, &qword_1EC88C358, sub_1D6804DFC, &type metadata for A18_V2.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6804DFC();
  sub_1D7264B5C();
  v11 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v11;
  v14 = 0;
  type metadata accessor for CGRect(0);
  sub_1D6804EB8(&qword_1EC8801E8, type metadata accessor for CGRect);
  sub_1D726443C();
  if (!v2)
  {
    *&v13[0] = *(v3 + 32);
    v14 = 1;
    sub_1D5B49714(0, &qword_1EDF1B268);
    sub_1D5BD47D0(&qword_1EC8806A0, sub_1D5C0B904);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D6801E84(uint64_t a1)
{
  v2 = sub_1D6804DFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6801EC0(uint64_t a1)
{
  v2 = sub_1D6804DFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D6801EFC@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D6804B5C(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_1D6801F5C()
{
  sub_1D6804808();

  return sub_1D725A24C();
}

uint64_t sub_1D6801FD8@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4();
  swift_allocObject();
  v2 = sub_1D725996C();
  sub_1D6804E50(0, &qword_1EDF3BFE8, sub_1D5BE14C0, &type metadata for HeadlineViewLayout.Attributes, MEMORY[0x1E69D7198]);
  swift_allocObject();
  result = sub_1D7259F9C();
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_1D6802094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v83 = a2;
  v71 = a3;
  v7 = type metadata accessor for FeedHeadline(0);
  v80 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v91 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v84 = &v71 - v12;
  v13 = sub_1D725895C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for GroupLayoutContext();
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79, v18);
  v81 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v71 - v22;
  v75 = &v71 - v22;
  v85 = type metadata accessor for GroupLayoutBindingContext();
  v76 = *(v85 - 1);
  MEMORY[0x1EEE9AC00](v85, v24);
  v26 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *v5;
  v28 = *(v5 + 1);
  LOBYTE(v5) = v5[16];
  v82 = a1;
  sub_1D5BE3ED8(a1, v26, type metadata accessor for GroupLayoutBindingContext);
  v77 = type metadata accessor for GroupLayoutContext;
  sub_1D5BE3ED8(v83, v23, type metadata accessor for GroupLayoutContext);
  sub_1D725894C();
  v74 = sub_1D725893C();
  v73 = v29;
  (*(v14 + 8))(v17, v13);
  v89 = &type metadata for A18_V2;
  v30 = sub_1D5ECE334();
  v90 = v30;
  LOBYTE(v87) = v27;
  LOBYTE(v23) = v27;
  *(&v87 + 1) = v28;
  v88 = v5;
  type metadata accessor for GroupLayoutKey();
  v31 = swift_allocObject();
  sub_1D5BEE8A0(v28, v5);
  v86[0] = sub_1D7264C5C();
  v86[1] = v32;
  v86[9] = 95;
  v86[10] = 0xE100000000000000;
  v86[7] = 45;
  v86[8] = 0xE100000000000000;
  sub_1D5BF4D9C();
  v33 = sub_1D7263A6C();
  v35 = v34;

  *(v31 + 16) = v33;
  *(v31 + 24) = v35;
  v36 = (v31 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
  v37 = v73;
  *v36 = v74;
  v36[1] = v37;
  sub_1D5B68374(&v87, v31 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory);
  v38 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
  sub_1D5BDA904(v26, v31 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, type metadata accessor for GroupLayoutBindingContext);
  (*(v76 + 56))(v31 + v38, 0, 1, v85);
  v39 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
  sub_1D5BDA904(v75, v31 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, type metadata accessor for GroupLayoutContext);
  (*(v78 + 56))(v31 + v39, 0, 1, v79);
  __swift_destroy_boxed_opaque_existential_1(&v87);
  v89 = &type metadata for A18_V2;
  v90 = v30;
  v40 = v81;
  LOBYTE(v87) = v23;
  *(&v87 + 1) = v28;
  v88 = v5;
  sub_1D5BE3ED8(v83, v81, v77);
  sub_1D5BD3920(0, qword_1EDF39B38, type metadata accessor for FeedHeadline, type metadata accessor for FeedItemSorter);
  inited = swift_initStackObject();
  v42 = MEMORY[0x1E69E7CC0];
  v83 = inited;
  *(inited + 16) = MEMORY[0x1E69E7CC0];
  v43 = inited + 16;
  swift_beginAccess();
  sub_1D5BEE8A0(v28, v5);
  v44 = sub_1D5C0F8FC(0, 1, 1, v42);
  v46 = v44[2];
  v45 = v44[3];
  v47 = v46 + 1;
  if (v46 >= v45 >> 1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v44[2] = v47;
    v48 = &v44[2 * v46];
    v48[4] = sub_1D63106DC;
    v48[5] = 0;
    *v43 = v44;
    swift_endAccess();
    if (!*(*&v82[v85[14]] + 16) || (sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0), (v49 & 1) == 0) || (v50 = , v47 = sub_1D5C14D80(v50), , !v47))
    {
      if (!qword_1F5113A20)
      {

        v60 = MEMORY[0x1E69E7CC0];
        goto LABEL_29;
      }

      v86[0] = &unk_1F5113A00;
      v4 = v72;
      sub_1D5E239F4(v86);
      if (v4)
      {
        goto LABEL_38;
      }

      v56 = v86[0];
      if (*(v86[0] + 2))
      {
LABEL_19:
        v57 = *(v56 + 4);

        sub_1D5ED8048();
        swift_allocError();
        strcpy(v58, "FeedHeadline");
        v58[13] = 0;
        *(v58 + 7) = -5120;
        *(v58 + 2) = 0;
        *(v58 + 3) = 0;
        *(v58 + 4) = 4;
        *(v58 + 5) = v57;
        *(v58 + 6) = 0;
        *(v58 + 7) = 0;
        v58[64] = 0;
        swift_willThrow();
        swift_setDeallocating();

        sub_1D5BE780C(v40, type metadata accessor for GroupLayoutContext);
        return __swift_destroy_boxed_opaque_existential_1(&v87);
      }

      __break(1u);
      goto LABEL_36;
    }

    v79 = v31;
    v40 = *(v47 + 16);
    if (!v40)
    {
      break;
    }

    v51 = 0;
    v52 = MEMORY[0x1E69E7CC0];
    v43 = v80;
    v44 = v84;
    while (1)
    {
      v45 = *(v47 + 16);
      if (v51 >= v45)
      {
        break;
      }

      v53 = (*(v43 + 80) + 32) & ~*(v43 + 80);
      v46 = *(v43 + 72);
      sub_1D5BE3ED8(v47 + v53 + v46 * v51, v44, type metadata accessor for FeedHeadline);
      if ((v44[4] & 4) != 0)
      {
        sub_1D5BDA904(v44, v91, type metadata accessor for FeedHeadline);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v86[0] = v52;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D5C0F91C(0, *(v52 + 2) + 1, 1);
          v43 = v80;
          v52 = v86[0];
        }

        v31 = *(v52 + 2);
        v55 = *(v52 + 3);
        if (v31 >= v55 >> 1)
        {
          sub_1D5C0F91C(v55 > 1, v31 + 1, 1);
          v43 = v80;
          v52 = v86[0];
        }

        *(v52 + 2) = v31 + 1;
        sub_1D5BDA904(v91, &v52[v53 + v31 * v46], type metadata accessor for FeedHeadline);
        v44 = v84;
      }

      else
      {
        sub_1D5BE780C(v44, type metadata accessor for FeedHeadline);
      }

      if (v40 == ++v51)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_34:
    v44 = sub_1D5C0F8FC((v45 > 1), v47, 1, v44);
  }

  v52 = MEMORY[0x1E69E7CC0];
LABEL_22:
  v61 = v82;
  if ((*v82 & 1) == 0)
  {

    v62 = sub_1D62F071C(v52);

    v52 = v62;
  }

  v63 = *&v61[v85[18]];
  v64 = *&v61[v85[19]];
  if (__OFSUB__(v63, v64))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v65 = sub_1D5C0FAD4(v52, v63 - v64);
  v60 = sub_1D5C11E10(&unk_1F5113A00, v65, v47);

  if (v60)
  {

    goto LABEL_28;
  }

  v60 = sub_1D5C11E10(&unk_1F5113A00, v52, v47);

  if (!v60)
  {
    v86[0] = &unk_1F5113A00;
    v4 = v72;
    sub_1D5E239F4(v86);
    if (v4)
    {
LABEL_38:

      __break(1u);
      return result;
    }

    v56 = v86[0];
    v40 = v81;
    if (*(v86[0] + 2))
    {
      goto LABEL_19;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_28:
  strcpy(v86, "FeedHeadline");
  BYTE5(v86[1]) = 0;
  HIWORD(v86[1]) = -5120;
  v86[2] = 0;
  v86[3] = 0;

  v67 = sub_1D5C107C4(v66);

  sub_1D5BDACA8(v86, v67);
  swift_setDeallocating();

  v40 = v81;
  v31 = v79;
LABEL_29:
  v68 = type metadata accessor for A18_V2.Bound();
  v69 = v71;
  v71[3] = v68;
  v69[4] = sub_1D6804EB8(&qword_1EC88C2B8, type metadata accessor for A18_V2.Bound);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v69);
  *boxed_opaque_existential_1 = v31;
  sub_1D5B63F14(&v87, (boxed_opaque_existential_1 + 1));
  result = sub_1D5BDA904(v40, boxed_opaque_existential_1 + *(v68 + 24), type metadata accessor for GroupLayoutContext);
  *(boxed_opaque_existential_1 + *(v68 + 28)) = v60;
  return result;
}

uint64_t sub_1D6802BE8@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  v3 = sub_1D725A36C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for A18_V2.Bound();
  v9 = v1 + *(v8 + 24);
  v10 = type metadata accessor for GroupLayoutContext();
  v11 = *(*(v9 + *(v10 + 40)) + 16);
  v12 = *(v9 + *(v10 + 32));
  sub_1D5B68374(v11 + 16, v36);
  sub_1D5B68374(v11 + 56, v35);
  v13 = v12 * *(v11 + 96);
  type metadata accessor for FeedLayoutStylerFactory();
  inited = swift_initStackObject();
  sub_1D5B63F14(v36, inited + 16);
  sub_1D5B63F14(v35, inited + 56);
  *(inited + 96) = v13;
  v34[0] = 1;
  FeedLayoutStylerFactory.styler(withHeading:)(v34, v38);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(inited + 16);
  __swift_destroy_boxed_opaque_existential_1(inited + 56);
  v15 = *(v2 + *(v8 + 28));
  v33[2] = v2;
  v33[3] = v38;
  v16 = sub_1D5ECA650(sub_1D680478C, v33, v15);
  v17 = *MEMORY[0x1E69D7130];
  v18 = sub_1D7259D1C();
  (*(*(v18 - 8) + 104))(v7, v17, v18);
  (*(v4 + 104))(v7, *MEMORY[0x1E69D7370], v3);
  v32 = v16;
  sub_1D68048B0(0, &qword_1EC88C2D8, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  v30 = sub_1D725A4CC();
  sub_1D725A4DC();
  v19 = v37;
  sub_1D5BD3920(0, &qword_1EDF1B250, type metadata accessor for HeadlineViewLayout.Context, MEMORY[0x1E69E62F8]);
  sub_1D5B49714(0, &qword_1EDF1B268);
  sub_1D5BD48FC();
  v20 = sub_1D5ED1E1C(&qword_1EDF1B260, &qword_1EDF1B268);
  v28 = v36[1];
  v29 = v36[0];
  *&v36[0] = v16;
  *&v35[0] = v19;
  MEMORY[0x1EEE9AC00](v20, v21);

  v22 = sub_1D725C00C();

  v23 = v31;
  *v31 = 0;
  v24 = v29;
  *(v23 + 24) = v28;
  *(v23 + 8) = v24;
  *&v36[0] = v22;
  sub_1D5B49714(0, &qword_1EDF1B4C8);
  sub_1D5ED1E1C(&qword_1EDF1B4C0, &qword_1EDF1B4C8);
  sub_1D5BDEFF8();
  v25 = sub_1D72623BC();

  v26 = MEMORY[0x1E69E7CC0];
  *(v23 + 5) = v25;
  *(v23 + 6) = v26;
  return __swift_destroy_boxed_opaque_existential_1(v38);
}

uint64_t sub_1D6803054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1D5BE3ED8(a1, v9, type metadata accessor for FeedHeadline);
  sub_1D5B68374(a2, v13);

  return HeadlineViewLayout.Context.init(key:model:styler:)(v10, v9, v13, a3);
}

uint64_t sub_1D680312C(uint64_t a1, uint64_t a2)
{
  sub_1D6804E50(0, &qword_1EC88C2F0, sub_1D68047B4, &type metadata for A18_V2.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v13[-v8];
  v15 = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = 18;
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D7490], v5);
  v14 = a2;
  v11 = MEMORY[0x1E69D7150];
  sub_1D68048B0(0, &qword_1EC88C2F8, MEMORY[0x1E69D7150]);
  sub_1D680486C(&qword_1EC88C300, &qword_1EC88C2F8, v11);
  sub_1D7259A2C();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D6803318(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v23 = sub_1D68047B4;
  sub_1D6804E50(0, &qword_1EC88C2F0, sub_1D68047B4, &type metadata for A18_V2.Layout, MEMORY[0x1E69D74B0]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = (v22 - v7);
  v26 = a1;
  v9 = sub_1D725994C();
  v10 = swift_allocBox();
  (*(*(v9 - 8) + 104))(v11, *MEMORY[0x1E69D6F50], v9);
  *v8 = v10;
  v12 = *(v5 + 104);
  v12(v8, *MEMORY[0x1E69D73C0], v4);
  v13 = MEMORY[0x1E69D6F38];
  sub_1D68048B0(0, &qword_1EC88C308, MEMORY[0x1E69D6F38]);
  v22[1] = v14;
  sub_1D680486C(&qword_1EC88C310, &qword_1EC88C308, v13);
  sub_1D7259A9C();
  v15 = *(v5 + 8);
  v15(v8, v4);
  v26 = a1;
  v12(v8, *MEMORY[0x1E69D7460], v4);
  sub_1D6804934();
  sub_1D6804E50(0, &qword_1EC88C320, v23, &type metadata for A18_V2.Layout, MEMORY[0x1E69D70D8]);
  v17 = v16;
  v18 = *(v16 - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1D7273AE0;
  (*(v18 + 104))(v20 + v19, *MEMORY[0x1E69D7098], v17);
  v25 = v24;
  sub_1D72599EC();

  return (v15)(v8, v4);
}

uint64_t sub_1D6803684(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v18 = a1;
  sub_1D6804E50(0, &qword_1EC88C2F0, sub_1D68047B4, &type metadata for A18_V2.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v17 - v8);
  v21 = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = 9;
  *v9 = v10;
  v11 = *MEMORY[0x1E69D7490];
  v12 = *(v6 + 104);
  v12(v9, v11, v5);
  v20 = a2;
  v13 = MEMORY[0x1E69D6F38];
  sub_1D68048B0(0, &qword_1EC88C308, MEMORY[0x1E69D6F38]);
  sub_1D680486C(&qword_1EC88C310, &qword_1EC88C308, v13);
  sub_1D7259A2C();
  v14 = *(v6 + 8);
  v14(v9, v5);
  v21 = v18;
  v15 = swift_allocObject();
  *(v15 + 16) = 9;
  *v9 = v15;
  v12(v9, v11, v5);
  v19 = v17;
  sub_1D7259A2C();
  return (v14)(v9, v5);
}

uint64_t sub_1D6803928(uint64_t a1, uint64_t a2)
{
  KeyPath = a1;
  v3 = sub_1D725A36C();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v43 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D725A19C();
  v44 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for HeadlineViewLayout.Context(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6804E50(0, &qword_1EC88C2F0, sub_1D68047B4, &type metadata for A18_V2.Layout, MEMORY[0x1E69D74B0]);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v39 - v23;
  v46 = KeyPath;
  KeyPath = swift_getKeyPath();
  (*(v21 + 104))(v24, *MEMORY[0x1E69D7460], v20);
  if (!*(a2 + 16))
  {
    __break(1u);
    goto LABEL_5;
  }

  v39 = v6;
  v40 = v20;
  sub_1D5BE3ED8(a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v18, type metadata accessor for HeadlineViewLayout.Context);
  v25 = v10[5];
  v26 = *MEMORY[0x1E69D7348];
  v27 = sub_1D725A34C();
  v28 = *(v27 - 8);
  (*(v28 + 104))(&v13[v25], v26, v27);
  (*(v28 + 56))(&v13[v25], 0, 1, v27);
  v29 = MEMORY[0x1E69DDC70];
  *v13 = 0;
  *&v13[v10[6]] = 0;
  v30 = *v29;
  *&v13[v10[7]] = v30;
  v31 = qword_1EDF386E8;
  v32 = v30;
  if (v31 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1D725972C();

  v35 = MEMORY[0x1EEE9AC00](v33, v34);
  *(&v39 - 4) = v18;
  *(&v39 - 3) = v13;
  v38 = v9;
  (*(v41 + 104))(v43, *MEMORY[0x1E69D7378], v42, v35);
  sub_1D5BED904();
  swift_allocObject();
  sub_1D725A4CC();
  (*(v44 + 8))(v9, v39);
  sub_1D5BE780C(v13, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D5BE780C(v18, type metadata accessor for HeadlineViewLayout.Context);
  v36 = MEMORY[0x1E69D6F38];
  sub_1D68048B0(0, &qword_1EC88C308, MEMORY[0x1E69D6F38]);
  sub_1D680486C(&qword_1EC88C310, &qword_1EC88C308, v36);
  v38 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v21 + 8))(v24, v40);
}

uint64_t sub_1D6803EF8(uint64_t a1, uint64_t a2)
{
  KeyPath = a1;
  v3 = sub_1D725A36C();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v43 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D725A19C();
  v44 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for HeadlineViewLayout.Context(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6804E50(0, &qword_1EC88C2F0, sub_1D68047B4, &type metadata for A18_V2.Layout, MEMORY[0x1E69D74B0]);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v39 - v23;
  v46 = KeyPath;
  KeyPath = swift_getKeyPath();
  (*(v21 + 104))(v24, *MEMORY[0x1E69D7460], v20);
  if (*(a2 + 16) < 2uLL)
  {
    __break(1u);
    goto LABEL_5;
  }

  v39 = v6;
  v40 = v20;
  sub_1D5BE3ED8(a2 + *(v15 + 72) + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v18, type metadata accessor for HeadlineViewLayout.Context);
  v25 = v10[5];
  v26 = *MEMORY[0x1E69D7348];
  v27 = sub_1D725A34C();
  v28 = *(v27 - 8);
  (*(v28 + 104))(&v13[v25], v26, v27);
  (*(v28 + 56))(&v13[v25], 0, 1, v27);
  v29 = MEMORY[0x1E69DDC70];
  *v13 = 0;
  *&v13[v10[6]] = 0;
  v30 = *v29;
  *&v13[v10[7]] = v30;
  v31 = qword_1EDF386E8;
  v32 = v30;
  if (v31 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1D725972C();

  v35 = MEMORY[0x1EEE9AC00](v33, v34);
  *(&v39 - 4) = v18;
  *(&v39 - 3) = v13;
  v38 = v9;
  (*(v41 + 104))(v43, *MEMORY[0x1E69D7378], v42, v35);
  sub_1D5BED904();
  swift_allocObject();
  sub_1D725A4CC();
  (*(v44 + 8))(v9, v39);
  sub_1D5BE780C(v13, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D5BE780C(v18, type metadata accessor for HeadlineViewLayout.Context);
  v36 = MEMORY[0x1E69D6F38];
  sub_1D68048B0(0, &qword_1EC88C308, MEMORY[0x1E69D6F38]);
  sub_1D680486C(&qword_1EC88C310, &qword_1EC88C308, v36);
  v38 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v21 + 8))(v24, v40);
}

uint64_t sub_1D68044D4@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  memcpy(v21, __src, sizeof(v21));
  sub_1D5BE5E28();
  v10 = v9;
  v11 = swift_allocBox();
  v13 = v12;
  v14 = *(v10 + 48);
  v15 = *(v10 + 64);
  sub_1D5BE3ED8(a3, v12, type metadata accessor for HeadlineViewLayout.Context);
  memcpy((v13 + v14), v21, 0x130uLL);
  v16 = a4 + *(type metadata accessor for A18_V2.Bound() + 24);
  result = type metadata accessor for GroupLayoutContext();
  v18 = *(v16 + *(result + 28));
  v19 = __OFADD__(v18, a2);
  v20 = v18 + a2;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v13 + v15) = v20;
    *a5 = v11 | 0x4000000000000000;
  }

  return result;
}

unint64_t sub_1D68045E8(uint64_t a1)
{
  *(a1 + 8) = sub_1D6804618();
  result = sub_1D680466C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6804618()
{
  result = qword_1EC88C2A8;
  if (!qword_1EC88C2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C2A8);
  }

  return result;
}

unint64_t sub_1D680466C()
{
  result = qword_1EC88C2B0;
  if (!qword_1EC88C2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C2B0);
  }

  return result;
}

uint64_t type metadata accessor for A18_V2.Bound()
{
  result = qword_1EC88C2C0;
  if (!qword_1EC88C2C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6804734(uint64_t a1)
{
  result = sub_1D6804EB8(&qword_1EC88C2D0, type metadata accessor for A18_V2.Bound);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D68047B4()
{
  result = qword_1EC88C2E0;
  if (!qword_1EC88C2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C2E0);
  }

  return result;
}

unint64_t sub_1D6804808()
{
  result = qword_1EC88C2E8;
  if (!qword_1EC88C2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C2E8);
  }

  return result;
}

uint64_t sub_1D680486C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  result = *a1;
  if (!result)
  {
    sub_1D68048B0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D68048B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for A18_V2.Layout;
    v8[1] = &type metadata for A18_V2.Layout.Attributes;
    v8[2] = sub_1D68047B4();
    v8[3] = sub_1D6804808();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D6804934()
{
  if (!qword_1EC88C318)
  {
    sub_1D6804E50(255, &qword_1EC88C320, sub_1D68047B4, &type metadata for A18_V2.Layout, MEMORY[0x1E69D70D8]);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88C318);
    }
  }
}

unint64_t sub_1D6804A00()
{
  result = qword_1EC88C328;
  if (!qword_1EC88C328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C328);
  }

  return result;
}

unint64_t sub_1D6804A58()
{
  result = qword_1EC88C330;
  if (!qword_1EC88C330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C330);
  }

  return result;
}

unint64_t sub_1D6804AB0()
{
  result = qword_1EC88C338;
  if (!qword_1EC88C338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C338);
  }

  return result;
}

unint64_t sub_1D6804B08()
{
  result = qword_1EC88C340;
  if (!qword_1EC88C340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C340);
  }

  return result;
}

uint64_t sub_1D6804B5C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1D6804E50(0, &qword_1EC88C348, sub_1D6804DFC, &type metadata for A18_V2.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6804DFC();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v17;
  type metadata accessor for CGRect(0);
  v20 = 0;
  sub_1D6804EB8(&qword_1EDF1A740, type metadata accessor for CGRect);
  sub_1D726431C();
  v15 = v19;
  v16 = v18;
  sub_1D5B49714(0, &qword_1EDF1B268);
  v20 = 1;
  sub_1D5BD47D0(&qword_1EDF1B258, sub_1D5BEE208);
  sub_1D726431C();
  (*(v10 + 8))(v9, v5);
  v12 = v18;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v14 = v15;
  *v11 = v16;
  *(v11 + 16) = v14;
  *(v11 + 32) = v12;
  return result;
}

unint64_t sub_1D6804DFC()
{
  result = qword_1EC88C350;
  if (!qword_1EC88C350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C350);
  }

  return result;
}

void sub_1D6804E50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1D6804EB8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D6804F14()
{
  result = qword_1EC88C360;
  if (!qword_1EC88C360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C360);
  }

  return result;
}

unint64_t sub_1D6804F6C()
{
  result = qword_1EC88C368;
  if (!qword_1EC88C368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C368);
  }

  return result;
}

unint64_t sub_1D6804FC4()
{
  result = qword_1EC88C370;
  if (!qword_1EC88C370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C370);
  }

  return result;
}

uint64_t sub_1D6805018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  v6[3] = sub_1D726290C();
  v6[4] = sub_1D72628FC();
  v9 = swift_task_alloc();
  v6[5] = v9;
  *v9 = v6;
  v9[1] = sub_1D68050D8;

  return sub_1D6929F84(a5, a6);
}

uint64_t sub_1D68050D8(uint64_t a1)
{
  *(*v1 + 48) = a1;

  v3 = sub_1D726285C();

  return MEMORY[0x1EEE6DFA0](sub_1D680521C, v3, v2);
}

uint64_t sub_1D680521C()
{
  v1 = v0[6];
  v2 = v0[2];

  *(v2 + OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceFeedViewController_sections) = v1;

  [*(v2 + OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceFeedViewController_tableView) reloadData];
  v3 = v0[1];

  return v3();
}

void sub_1D6805360()
{
  v1 = v0;
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_viewDidLoad);
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() systemBackgroundColor];
    [v3 setBackgroundColor_];

    v5 = *&v1[OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceFeedViewController_tableView];
    [v5 setDataSource_];
    [v5 setDelegate_];
    [v5 setAlwaysBounceVertical_];
    v6 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
    [v5 setTableFooterView_];

    type metadata accessor for SubtitleTableViewCell();
    sub_1D7262DAC();
    v7 = [v1 view];
    if (v7)
    {
      v8 = v7;
      [v7 addSubview_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_1D6805720()
{
  v1 = v0;
  result = sub_1D7258DAC();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v3 = *(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceFeedViewController_sections);
  if (result >= *(v3 + 16))
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v4 = *(v3 + 24 * result + 48);

  result = sub_1D7258D9C();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (result < *(v4 + 16))
  {
    v5 = (v4 + 80 * result);
    v70 = v5[2];
    v6 = v5[3];
    v7 = v5[4];
    v8 = v5[5];
    *&v73[9] = *(v5 + 89);
    v72 = v7;
    *v73 = v8;
    v71 = v6;
    sub_1D6806848(&v70, &aBlock);

    type metadata accessor for SubtitleTableViewCell();
    v9 = sub_1D7262D8C();
    v10 = [v9 textLabel];
    if (v10)
    {
      v11 = v10;
      v12 = sub_1D726203C();
      [v11 setText_];
    }

    v13 = [v9 textLabel];
    if (v13)
    {
      v14 = v13;
      [v13 setNumberOfLines_];
    }

    v15 = [v9 textLabel];
    if (v15)
    {
      v16 = v15;
      v17 = [objc_opt_self() systemFontOfSize_];
      [v16 setFont_];
    }

    v18 = [v9 detailTextLabel];
    if (v18)
    {
      v19 = v18;
      if (*&v73[8])
      {

        v20 = sub_1D726203C();
      }

      else
      {
        v20 = 0;
      }

      [v19 setText_];
    }

    v21 = [v9 detailTextLabel];
    if (v21)
    {
      v22 = v21;
      [v21 setNumberOfLines_];
    }

    v23 = [v9 detailTextLabel];
    if (v23)
    {
      v24 = v23;
      v25 = [objc_opt_self() secondaryLabelColor];
      [v24 setTextColor_];
    }

    v26 = [v9 detailTextLabel];
    if (v26)
    {
      v27 = v26;
      v28 = [objc_opt_self() systemFontOfSize_];
      [v27 setFont_];
    }

    v29 = objc_opt_self();
    v30 = v9;
    v31 = [v29 systemBlueColor];
    [v30 setTintColor_];

    v32 = [v30 imageView];
    if (v32)
    {
      v33 = v32;
      v34 = [v29 secondaryLabelColor];
      [v33 setTintColor_];
    }

    v68 = v72;
    v69[0] = *v73;
    *(v69 + 9) = *&v73[9];
    aBlock = v70;
    v67 = v71;
    v35 = *(v1 + OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceFeedViewController_feed);
    v36 = *(v1 + OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceFeedViewController_feed + 8);
    v37 = *(v1 + OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceFeedViewController_feed + 16);

    v38 = sub_1D6C136C4(v35, v36, v37);

    if (v38)
    {
      v39 = 3;
    }

    else
    {
      v39 = 0;
    }

    v40 = *&v73[16];
    v41 = v73[24];
    [v30 setAccessoryType_];
    if (v41)
    {
      v43 = *(&v70 + 1);
      v42 = v71;
      v44 = v40;
      v45 = sub_1D726203C();
      [v30 setAccessibilityIdentifier_];

      v46 = [v30 imageView];
      v47 = v46;
      if (v40)
      {
        if (v46)
        {
          [v46 setImage_];
        }

        v48 = *(*(v1 + OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceFeedViewController_editor) + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_imageCache);
        v49 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v50 = swift_allocObject();
        v51 = v70;
        *(v50 + 40) = v71;
        v52 = *v73;
        *(v50 + 56) = v72;
        *(v50 + 72) = v52;
        *(v50 + 81) = *&v73[9];
        *(v50 + 16) = v49;
        *(v50 + 24) = v51;
        sub_1D6806848(&v70, &aBlock);

        sub_1D725B86C();

        if (v65)
        {
          sub_1D6805F90(v65, v49, &v70);

          sub_1D68068A4(&v70);
        }

        else
        {
          sub_1D5B5A498(0, &qword_1EDF1AA30);
          v64 = sub_1D726308C();
          v57 = swift_allocObject();
          swift_weakInit();
          v58 = *(v48 + 24);
          v59 = swift_allocObject();
          v59[2] = v57;
          v59[3] = v44;
          v59[4] = sub_1D68068F8;
          v59[5] = v50;
          v59[6] = v58;
          v59[7] = v43;
          v59[8] = v42;
          *&v68 = sub_1D6806904;
          *(&v68 + 1) = v59;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          *&v67 = sub_1D5B6B06C;
          *(&v67 + 1) = &block_descriptor_47;
          v60 = _Block_copy(&aBlock);
          v61 = v40;

          v62 = v58;

          v63 = [v44 downloadIfNeededWithCompletionQueue:v64 completion:v60];

          sub_1D68068A4(&v70);
          _Block_release(v60);

          swift_unknownObjectRelease();
        }

        return v30;
      }

      if (v46)
      {
        v56 = *(*(*(v1 + OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceFeedViewController_editor) + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_imageCache) + 16);
        [v47 setImage_];

        sub_1D68068A4(&v70);
        return v30;
      }
    }

    else
    {
      v53 = v40;

      v54 = [v30 imageView];
      if (v54)
      {
        v55 = v54;
        [v54 setImage_];

        sub_1D68068A4(&v70);
        return v30;
      }
    }

    sub_1D68068A4(&v70);
    return v30;
  }

LABEL_45:
  __break(1u);
  return result;
}

void sub_1D6805F90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [Strong accessibilityIdentifier];
    if (v7)
    {
      v8 = v7;
      v9 = sub_1D726207C();
      v11 = v10;

      if (v9 == *(a3 + 8) && v11 == *(a3 + 16))
      {
      }

      else
      {
        v13 = sub_1D72646CC();

        if ((v13 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      v14 = [v6 imageView];
      if (v14)
      {
        v15 = v14;
        [v14 setImage_];
      }
    }

LABEL_12:
  }
}

uint64_t sub_1D680634C(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = [*v3 navigationItem];
  v6 = [v5 *a3];

  if (!v6)
  {
    return 0;
  }

  sub_1D5B5A498(0, &qword_1EDF04590);
  v7 = sub_1D726267C();

  return v7;
}

id sub_1D68063DC(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for DebugFormatWorkspace();
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6, v10);
  v11 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B73DC0();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceFeedViewController_tableView;
  *&v2[v16] = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
  *&v2[OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceFeedViewController_sections] = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceFeedViewController_editor] = a1;
  v17 = (a2 + *(v7 + 28));
  v18 = v17[9];
  v19 = v17[10];
  v20 = v17[11];
  v21 = &v2[OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceFeedViewController_feed];
  *v21 = v18;
  *(v21 + 1) = v19;
  *(v21 + 2) = v20;
  v31.receiver = v2;
  v31.super_class = ObjectType;

  v22 = objc_msgSendSuper2(&v31, sel_initWithNibName_bundle_, 0, 0);
  v23 = sub_1D726294C();
  (*(*(v23 - 8) + 56))(v15, 1, 1, v23);
  sub_1D5FC998C(a2, v11);
  sub_1D726290C();
  v24 = v22;

  v25 = v24;
  v26 = sub_1D72628FC();
  v27 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v28 = swift_allocObject();
  v29 = MEMORY[0x1E69E85E0];
  v28[2] = v26;
  v28[3] = v29;
  v28[4] = v25;
  v28[5] = a1;
  sub_1D676E2D0(v11, v28 + v27);
  sub_1D6BD1334(0, 0, v15, &unk_1D72F28E0, v28);

  sub_1D5EF0664(a2);
  return v25;
}

void sub_1D68066A4()
{
  v1 = sub_1D7258DAC();
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceFeedViewController_sections);
  if (v1 >= *(v2 + 16))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(v2 + 24 * v1 + 48);

  v4 = sub_1D7258D9C();
  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v4 >= *(v3 + 16))
  {
LABEL_11:
    __break(1u);
    return;
  }

  v5 = v3 + 80 * v4;
  v6 = *(v5 + 56);
  v7 = *(v5 + 96);

  v8 = v7;

  v9 = FeedKind.rawValue.getter();
  v10 = (v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceFeedViewController_feed);
  *v10 = v9;
  v10[1] = v11;
  v10[2] = v6;
  swift_retain_n();

  [*(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceFeedViewController_tableView) reloadData];
}

uint64_t sub_1D6806918(uint64_t a1)
{
  v4 = *(type metadata accessor for DebugFormatWorkspace() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D5B64684;

  return sub_1D6805018(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_1D6806A1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = sub_1D7259BCC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *v2 >> 62;
  if (v13 > 1)
  {
    v19 = v12 & 0x3FFFFFFFFFFFFFFFLL;
    if (v13 == 2)
    {
      v20 = *(v19 + 16);
      v21 = *(v19 + 24);
      sub_1D6807884();
      v22 = swift_allocBox();
      v49 = v20;

      swift_retain_n();
      sub_1D6806A1C(a1);
      if (!v3)
      {

        v49 = v21;

        sub_1D6806A1C(a1);

        *a2 = v22;
        v23 = MEMORY[0x1E69D70F0];
LABEL_16:
        v42 = *v23;
        v43 = sub_1D7259BDC();
        return (*(*(v43 - 8) + 104))(a2, v42, v43);
      }
    }

    else
    {
      v33 = *(v19 + 16);
      v34 = *(v19 + 24);
      sub_1D6807884();
      v35 = swift_allocBox();
      v49 = v33;

      swift_retain_n();
      sub_1D6806A1C(a1);
      if (!v3)
      {

        v49 = v34;

        sub_1D6806A1C(a1);

        *a2 = v35;
        v23 = MEMORY[0x1E69D70E0];
        goto LABEL_16;
      }
    }

    return swift_deallocBox();
  }

  if (!v13)
  {
    v15 = *(v12 + 16);
    v14 = *(v12 + 24);
    v16 = *(v12 + 32);
    sub_1D68078E8(0, &qword_1EC88C3E8, MEMORY[0x1E69D7108]);
    v17 = swift_allocBox();
    *v18 = v15;
    v18[1] = v14;
    v49 = v16;
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    sub_1D6806A1C(a1);
    if (v3)
    {

      return swift_deallocBox();
    }

    *a2 = v17;
    v23 = MEMORY[0x1E69D70E8];
    goto LABEL_16;
  }

  v46 = a2;
  v47 = v9;
  v24 = v12 & 0x3FFFFFFFFFFFFFFFLL;
  v25 = *(v24 + 16);
  v45 = *(v24 + 24);
  sub_1D68078E8(0, &qword_1EDF3BEA8, MEMORY[0x1E69D70F8]);
  v27 = v26;
  v48 = swift_allocBox();
  v49 = a1;
  v44 = v28;
  v29 = off_1F51AF338[0];
  type metadata accessor for FormatNodeContext();

  v30 = v29();
  v31 = sub_1D5E02AFC(v30, v25);
  if (v3)
  {

    return swift_deallocBox();
  }

  else
  {
    v36 = v31;

    v37 = v44;
    *v44 = v36;

    v38 = v47;
    (*(v7 + 104))(v11, **(&unk_1E84CE620 + v45), v47);
    (*(v7 + 32))(&v37[*(v27 + 48)], v11, v38);
    v39 = v46;
    *v46 = v48;
    v40 = *MEMORY[0x1E69D7100];
    v41 = sub_1D7259BDC();
    return (*(*(v41 - 8) + 104))(v39, v40, v41);
  }
}

uint64_t _s8NewsFeed30FormatTextNodeAlternativeLogicO0D5LinesV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  if (sub_1D633A310(*a1, *a2))
  {
    v2 = FormatOperator.rawValue.getter();
    v4 = v3;
    if (v2 == FormatOperator.rawValue.getter() && v4 == v5)
    {
      v6 = 1;
    }

    else
    {
      v6 = sub_1D72646CC();
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t _s8NewsFeed30FormatTextNodeAlternativeLogicO15LogicalOperatorV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2[1];
  v7 = *a2;
  v8 = v2;

  LOBYTE(v2) = _s8NewsFeed30FormatTextNodeAlternativeLogicO2eeoiySbAC_ACtFZ_0(&v8, &v7);

  if (v2)
  {
    v7 = v4;
    v8 = v3;

    v5 = _s8NewsFeed30FormatTextNodeAlternativeLogicO2eeoiySbAC_ACtFZ_0(&v8, &v7);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t _s8NewsFeed30FormatTextNodeAlternativeLogicO0fG0V2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = 0, (sub_1D72646CC() & 1) != 0))
  {
    v7 = v3;
    v8 = v2;

    v5 = _s8NewsFeed30FormatTextNodeAlternativeLogicO2eeoiySbAC_ACtFZ_0(&v8, &v7);
  }

  return v5 & 1;
}

uint64_t _s8NewsFeed30FormatTextNodeAlternativeLogicO2eeoiySbAC_ACtFZ_0(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 62;
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      if (v3 >> 62 != 2)
      {
        goto LABEL_14;
      }
    }

    else if (v3 >> 62 != 3)
    {
      goto LABEL_14;
    }

    v18 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v16 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

    v14 = _s8NewsFeed30FormatTextNodeAlternativeLogicO15LogicalOperatorV2eeoiySbAE_AEtFZ_0(&v18, &v16);
    goto LABEL_12;
  }

  if (v4)
  {
    if (v3 >> 62 != 1)
    {
      goto LABEL_14;
    }

    v9 = v2 & 0x3FFFFFFFFFFFFFFFLL;
    v10 = *(v9 + 24);
    v11 = v3 & 0x3FFFFFFFFFFFFFFFLL;
    v12 = *(v11 + 16);
    v13 = *(v11 + 24);
    *&v18 = *(v9 + 16);
    BYTE8(v18) = v10;
    *&v16 = v12;
    BYTE8(v16) = v13;

    v14 = _s8NewsFeed30FormatTextNodeAlternativeLogicO0D5LinesV2eeoiySbAE_AEtFZ_0(&v18, &v16);
LABEL_12:
    v8 = v14;

    goto LABEL_13;
  }

  if (v3 >> 62)
  {
LABEL_14:
    v8 = 0;
    return v8 & 1;
  }

  v5 = *(v2 + 32);
  v6 = *(v3 + 16);
  v7 = *(v3 + 32);
  v18 = *(v2 + 16);
  v19 = v5;
  v16 = v6;
  v17 = v7;

  v8 = _s8NewsFeed30FormatTextNodeAlternativeLogicO0fG0V2eeoiySbAE_AEtFZ_0(&v18, &v16);

LABEL_13:

  return v8 & 1;
}

unint64_t sub_1D68073B0(uint64_t a1)
{
  result = sub_1D68073D8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D68073D8()
{
  result = qword_1EC88C3A0;
  if (!qword_1EC88C3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C3A0);
  }

  return result;
}

unint64_t sub_1D680746C()
{
  result = qword_1EC88C3A8;
  if (!qword_1EC88C3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C3A8);
  }

  return result;
}

unint64_t sub_1D68074C0(uint64_t a1)
{
  result = sub_1D68074E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D68074E8()
{
  result = qword_1EC88C3B0;
  if (!qword_1EC88C3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C3B0);
  }

  return result;
}

unint64_t sub_1D680757C()
{
  result = qword_1EC88C3B8;
  if (!qword_1EC88C3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C3B8);
  }

  return result;
}

unint64_t sub_1D68075D0(uint64_t a1)
{
  result = sub_1D68075F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D68075F8()
{
  result = qword_1EC88C3C0;
  if (!qword_1EC88C3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C3C0);
  }

  return result;
}

unint64_t sub_1D680768C()
{
  result = qword_1EC88C3C8;
  if (!qword_1EC88C3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C3C8);
  }

  return result;
}

unint64_t sub_1D68076E0(uint64_t a1)
{
  result = sub_1D6807708();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6807708()
{
  result = qword_1EC88C3D0;
  if (!qword_1EC88C3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C3D0);
  }

  return result;
}

uint64_t sub_1D680779C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1D68077F0()
{
  result = qword_1EC88C3D8;
  if (!qword_1EC88C3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C3D8);
  }

  return result;
}

void sub_1D6807884()
{
  if (!qword_1EC88C3E0)
  {
    sub_1D7259BDC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC88C3E0);
    }
  }
}

void sub_1D68078E8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

NewsFeed::FormatSlotTransformPolicy_optional __swiftcall FormatSlotTransformPolicy.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 12;
  if (v3 < 0xC)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FormatSlotTransformPolicy.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v7 = 1953656691;
    v8 = 0x65746164696C6176;
    if (v1 != 10)
    {
      v8 = 0x7974706D65;
    }

    if (v1 != 9)
    {
      v7 = v8;
    }

    v9 = 0x7453656C7A7A7570;
    v10 = 0x726F7463656C6573;
    if (v1 != 7)
    {
      v10 = 0x7265746C6966;
    }

    if (v1 != 6)
    {
      v9 = v10;
    }

    if (*v0 <= 8u)
    {
      return v9;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x657571696E75;
    v3 = 0x65726975716572;
    v4 = 0x6F43657269707865;
    if (v1 != 4)
    {
      v4 = 6775156;
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    v5 = 0x74696D696CLL;
    if (v1 != 1)
    {
      v5 = 0x6C616E6F73726570;
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
}

uint64_t sub_1D6807B2C()
{
  v0 = FormatSlotTransformPolicy.rawValue.getter();
  v2 = v1;
  if (v0 == FormatSlotTransformPolicy.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D72646CC();
  }

  return v5 & 1;
}

uint64_t sub_1D6807BC8()
{
  sub_1D7264A0C();
  FormatSlotTransformPolicy.rawValue.getter();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6807C30()
{
  FormatSlotTransformPolicy.rawValue.getter();
  sub_1D72621EC();
}

uint64_t sub_1D6807C94()
{
  sub_1D7264A0C();
  FormatSlotTransformPolicy.rawValue.getter();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6807D04@<X0>(uint64_t *a1@<X8>)
{
  result = FormatSlotTransformPolicy.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D6807D3C@<X0>(char *a1@<X8>)
{
  v2 = *v1;
  v3 = *v1 >> 60;
  if (v3 <= 4)
  {
    if (v3 <= 1)
    {
      if (v3)
      {
        v4 = 3;
      }

      else
      {
        v4 = 1;
      }
    }

    else
    {
      if (v3 == 2)
      {
        return sub_1D6807D3C();
      }

      if (v3 == 3)
      {
        v4 = 4;
      }

      else
      {
        v4 = 5;
      }
    }

    goto LABEL_24;
  }

  if (v3 > 7)
  {
    if (v3 == 8)
    {
      v4 = 9;
      goto LABEL_24;
    }

    if (v3 == 9)
    {
      v4 = 10;
      goto LABEL_24;
    }

    if (v2 == 0xA000000000000000)
    {
      *a1 = 0;
      return result;
    }

    if (v2 == 0xA000000000000008)
    {
      v4 = 2;
      goto LABEL_24;
    }

LABEL_23:
    v4 = 8;
    goto LABEL_24;
  }

  if (v3 == 5)
  {
    v4 = 6;
    goto LABEL_24;
  }

  if (v3 != 6)
  {
    goto LABEL_23;
  }

  v4 = 7;
LABEL_24:
  *a1 = v4;
  return result;
}

uint64_t sub_1D6807E40()
{
  result = type metadata accessor for FormatArrangementTemplate();
  if (v1 <= 0x3F)
  {
    type metadata accessor for FormatArrangementComponentResult();
    result = sub_1D72627FC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D6807EEC(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = 7;
  if (!v5)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((((v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_33:
    if ((v6 & 0x80000000) != 0)
    {
      v20 = (*(v4 + 48))((a1 + v8 + 16) & ~v8);
      if (v20 >= 2)
      {
        return v20 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v19 = *(a1 + 8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

void sub_1D6808074(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if ((v8 & 0x80000000) != 0)
  {
    v19 = ((a1 + v10 + 16) & ~v10);
    if (v8 >= a2)
    {
      v23 = *(v6 + 56);
      v24 = a2 + 1;
      v25 = (a1 + v10 + 16) & ~v10;

      v23(v25, v24);
    }

    else
    {
      if (v11 <= 3)
      {
        v20 = ~(-1 << (8 * v11));
      }

      else
      {
        v20 = -1;
      }

      if (v11)
      {
        v21 = v20 & (~v8 + a2);
        if (v11 <= 3)
        {
          v22 = v11;
        }

        else
        {
          v22 = 4;
        }

        bzero(v19, v11);
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *v19 = v21;
            v19[2] = BYTE2(v21);
          }

          else
          {
            *v19 = v21;
          }
        }

        else if (v22 == 1)
        {
          *v19 = v21;
        }

        else
        {
          *v19 = v21;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    a1[1] = 0;
  }

  else
  {
    a1[1] = a2 - 1;
  }
}

uint64_t sub_1D68082F8()
{
  type metadata accessor for FormatArrangementComponentResult();
  sub_1D72627FC();
  sub_1D609C43C();

  swift_getWitnessTable();
  sub_1D68085A0();
  v0 = sub_1D72624BC();

  return v0;
}

uint64_t sub_1D68083D4@<X0>(uint64_t a1@<X0>, _WORD *a2@<X8>)
{
  v4 = *(v2 + *(a1 + 36));
  type metadata accessor for FormatArrangementComponentResult();

  v5 = 0;
  v6 = 49;
  while (1)
  {
    if (v5 == sub_1D726279C())
    {

      LOWORD(v9) = 0x8000;
      goto LABEL_8;
    }

    v7 = sub_1D726277C();
    result = sub_1D726271C();
    if ((v7 & 1) == 0)
    {
      break;
    }

    if (__OFADD__(v5, 1))
    {
      goto LABEL_10;
    }

    v9 = *(v4 + v6);
    ++v5;
    v6 += 32;
    if ((~v9 & 0xFCC0) != 0)
    {

LABEL_8:
      *a2 = v9;
      return result;
    }
  }

  result = sub_1D7263DBC();
  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1D68084C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for FormatArrangementTemplate();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for FormatArrangementTemplateResult();
  *(a3 + *(result + 36)) = a2;
  return result;
}

uint64_t sub_1D6808560@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D70CE814(*(a1 + 8), *(a1 + 16));
  *a2 = result;
  return result;
}

unint64_t sub_1D68085A0()
{
  result = qword_1EDF049D0[0];
  if (!qword_1EDF049D0[0])
  {
    sub_1D609C43C();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF049D0);
  }

  return result;
}

uint64_t sub_1D68085F8(void *a1, uint64_t *a2)
{
  v3 = a1[7];
  v4 = a1[8];
  __swift_project_boxed_opaque_existential_1(a1 + 4, v3);
  v5 = *a2;
  v6 = type metadata accessor for SportsDataServiceBatchResourceRequest(0);
  return ResourceServiceType.fetchResources(identifiers:qualityOfService:cachePolicy:purpose:)(v5, 25, a2 + *(v6 + 20), *MEMORY[0x1E69B50A8], v3, v4);
}

void sub_1D680867C(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsDataServiceBatchResourceRequest(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EDF17590 != -1)
  {
    swift_once();
  }

  v8 = sub_1D725C42C();
  __swift_project_value_buffer(v8, qword_1EDF17598);
  sub_1D68098C8(a2, v7, type metadata accessor for SportsDataServiceBatchResourceRequest);
  v9 = a1;
  v10 = sub_1D725C3FC();
  v11 = sub_1D7262EBC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136446466;
    v14 = MEMORY[0x1DA6F9D20](*v7, MEMORY[0x1E69E6158]);
    v16 = v15;
    sub_1D6809868(v7, type metadata accessor for SportsDataServiceBatchResourceRequest);
    v17 = sub_1D5BC5100(v14, v16, &v23);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2082;
    v22 = a1;
    v18 = a1;
    sub_1D5BA6EF4();
    v19 = sub_1D72620FC();
    v21 = sub_1D5BC5100(v19, v20, &v23);

    *(v12 + 14) = v21;
    _os_log_impl(&dword_1D5B42000, v10, v11, "Sports data service failed to resolve resources %{public}s, error=%{public}s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6FD500](v13, -1, -1);
    MEMORY[0x1DA6FD500](v12, -1, -1);
  }

  else
  {

    sub_1D6809868(v7, type metadata accessor for SportsDataServiceBatchResourceRequest);
  }
}

uint64_t sub_1D68088E8(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((a1 + 72), *(a1 + 96));
  type metadata accessor for SportsDataServiceURLRequest(0);
  return sub_1D725B44C();
}

char *sub_1D6808954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v81 = a1;
  v82 = a4;
  v84 = type metadata accessor for SportsDataServiceURLRequest(0);
  MEMORY[0x1EEE9AC00](v84, v5);
  v78 = v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  *&v83 = v77 - v9;
  v10 = MEMORY[0x1E69E6720];
  sub_1D5B54858(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = v77 - v13;
  v86 = sub_1D72585BC();
  v88 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86, v15);
  v85 = v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D7257B5C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B54858(0, &unk_1EDF43B50, MEMORY[0x1E69681B8], v10);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = v77 - v24;
  v26 = sub_1D7257C7C();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v31;
  sub_1D7257BCC();
  if ((*(v27 + 48))(v25, 1, v32) == 1)
  {
    sub_1D5B6F19C(v25, &unk_1EDF43B50, MEMORY[0x1E69681B8]);
    sub_1D5F82C30();
    swift_allocError();
    *v33 = 3;
    swift_willThrow();
  }

  else
  {
    v77[1] = a2;
    v80 = v27;
    v34 = *(v27 + 32);
    v77[0] = v32;
    v34(v30, v25, v32);
    sub_1D7257BAC();
    sub_1D7257BBC();
    v79 = v30;
    v36 = sub_1D7257B9C();
    if (*v35)
    {
      v37 = v35;
      sub_1D725BF1C();
      sub_1D7257B2C();

      v38 = *v37;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v37 = v38;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v38 = sub_1D698BCB0(0, v38[2] + 1, 1, v38);
        *v37 = v38;
      }

      v41 = v38[2];
      v40 = v38[3];
      if (v41 >= v40 >> 1)
      {
        v38 = sub_1D698BCB0(v40 > 1, v41 + 1, 1, v38);
        *v37 = v38;
      }

      v42 = v83;
      v38[2] = v41 + 1;
      (*(v18 + 32))(v38 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v41, v21, v17);
      v36(v87, 0);
    }

    else
    {
      v36(v87, 0);
      v42 = v83;
    }

    v30 = v79;
    sub_1D7257BDC();
    v43 = v88;
    v44 = v86;
    v45 = (*(v88 + 48))(v14, 1, v86);
    v46 = v80;
    v47 = v84;
    if (v45 == 1)
    {
      sub_1D5B6F19C(v14, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      sub_1D5F82C30();
      swift_allocError();
      *v48 = 4;
      swift_willThrow();
      (*(v46 + 8))(v30, v77[0]);
    }

    else
    {
      (*(v43 + 32))(v85, v14, v44);
      sub_1D5B54858(0, &qword_1EDF01E00, sub_1D68097E4, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      v83 = xmmword_1D7273AE0;
      *(inited + 16) = xmmword_1D7273AE0;
      strcpy((inited + 32), "X-REQUEST-ID");
      *(inited + 45) = 0;
      *(inited + 46) = -5120;
      sub_1D5B581F0(0, &qword_1EDF195B0, MEMORY[0x1E69E6F90]);
      v50 = swift_allocObject();
      *(v50 + 16) = v83;
      v51 = v82;
      v52 = (v82 + *(v47 + 32));
      v54 = *v52;
      v53 = v52[1];
      *(v50 + 32) = v54;
      *(v50 + 40) = v53;
      *(inited + 48) = v50;

      *&v83 = sub_1D605DB28(inited);
      swift_setDeallocating();
      sub_1D6809868(inited + 32, sub_1D68097E4);
      if (qword_1EDF17590 != -1)
      {
        swift_once();
      }

      v55 = sub_1D725C42C();
      __swift_project_value_buffer(v55, qword_1EDF17598);
      sub_1D68098C8(v51, v42, type metadata accessor for SportsDataServiceURLRequest);
      v56 = v78;
      sub_1D68098C8(v51, v78, type metadata accessor for SportsDataServiceURLRequest);
      v57 = sub_1D725C3FC();
      v58 = sub_1D7262EDC();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v87[0] = v60;
        *v59 = 136446466;
        v61 = (v42 + *(v47 + 32));
        v62 = v42;
        v63 = *v61;
        v64 = v61[1];

        sub_1D6809868(v62, type metadata accessor for SportsDataServiceURLRequest);
        v65 = sub_1D5BC5100(v63, v64, v87);

        *(v59 + 4) = v65;
        *(v59 + 12) = 2082;
        v66 = sub_1D72583DC();
        v68 = v67;
        sub_1D6809868(v56, type metadata accessor for SportsDataServiceURLRequest);
        v69 = sub_1D5BC5100(v66, v68, v87);

        *(v59 + 14) = v69;
        _os_log_impl(&dword_1D5B42000, v57, v58, "SportsDataService executing fetch with identifier=%{public}s, url=%{public}s", v59, 0x16u);
        swift_arrayDestroy();
        v70 = v60;
        v44 = v86;
        MEMORY[0x1DA6FD500](v70, -1, -1);
        v71 = v59;
        v51 = v82;
        MEMORY[0x1DA6FD500](v71, -1, -1);
      }

      else
      {

        sub_1D6809868(v56, type metadata accessor for SportsDataServiceURLRequest);
        sub_1D6809868(v42, type metadata accessor for SportsDataServiceURLRequest);
      }

      v72 = (v51 + *(v47 + 28));
      v84 = sub_1D726207C();
      if (v72[3])
      {
        v73 = *v72;
        v74 = v72[1];
        sub_1D5E3E824(*v72, v74);
        if (v72[3])
        {
        }
      }

      else
      {
        v73 = 0;
        v74 = 0xF000000000000000;
      }

      swift_getObjectType();
      v75 = v85;
      v30 = FCEndpointConnectionType.performHTTPRequest(with:valuesByHTTPHeaderField:method:data:contentType:priority:networkEventType:requiresMescalSigning:callbackQueue:)();

      sub_1D5B952E4(v73, v74);

      (*(v88 + 8))(v75, v44);
      (*(v80 + 8))(v79, v77[0]);
    }
  }

  return v30;
}

uint64_t sub_1D68093C0()
{
  swift_getObjectType();
  sub_1D605DB28(MEMORY[0x1E69E7CC0]);
  sub_1D726207C();
  v0 = FCEndpointConnectionType.performHTTPRequest(with:valuesByHTTPHeaderField:method:data:contentType:priority:networkEventType:requiresMescalSigning:callbackQueue:)();

  return v0;
}

uint64_t sub_1D680949C(uint64_t a1, uint64_t *a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v3 = *a2;
  v4 = a2[1];
  type metadata accessor for SportsDataServiceResourceRequest(0);
  return ResourceServiceType.fetchResource(identifier:qualityOfService:cachePolicy:purpose:)(v3, v4);
}

void sub_1D680952C(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsDataServiceResourceRequest(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EDF17590 != -1)
  {
    swift_once();
  }

  v8 = sub_1D725C42C();
  __swift_project_value_buffer(v8, qword_1EDF17598);
  sub_1D68098C8(a2, v7, type metadata accessor for SportsDataServiceResourceRequest);
  v9 = a1;
  v10 = sub_1D725C3FC();
  v11 = sub_1D7262EBC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136446466;
    v14 = *v7;
    v15 = v7[1];

    sub_1D6809868(v7, type metadata accessor for SportsDataServiceResourceRequest);
    v16 = sub_1D5BC5100(v14, v15, &v22);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2082;
    v21 = a1;
    v17 = a1;
    sub_1D5BA6EF4();
    v18 = sub_1D72620FC();
    v20 = sub_1D5BC5100(v18, v19, &v22);

    *(v12 + 14) = v20;
    _os_log_impl(&dword_1D5B42000, v10, v11, "Sports data service failed to resolve resource %{public}s, error=%{public}s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6FD500](v13, -1, -1);
    MEMORY[0x1DA6FD500](v12, -1, -1);
  }

  else
  {

    sub_1D6809868(v7, type metadata accessor for SportsDataServiceResourceRequest);
  }
}

uint64_t sub_1D680978C()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1(v0 + 72);

  return swift_deallocClassInstance();
}

void sub_1D68097E4()
{
  if (!qword_1EDF05428)
  {
    sub_1D5B581F0(255, &qword_1EDF43BA0, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF05428);
    }
  }
}

uint64_t sub_1D6809868(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D68098C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6809940()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D68099CC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 24) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_1D6809BA8(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
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

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

uint64_t sub_1D6809E7C()
{
  result = type metadata accessor for SportsDataServiceBatchRequest(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SportsDataServiceRequest(255);
    type metadata accessor for SportsDataServiceResponse();
    result = sub_1D72627FC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D6809F6C()
{
  result = qword_1EC88C3F0;
  if (!qword_1EC88C3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C3F0);
  }

  return result;
}

uint64_t FormatFeedConfig.init(selectors:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{

  *a3 = a1;

  a3[1] = a2;
  return result;
}

uint64_t sub_1D680A030()
{
  if (*v0)
  {
    return 0x736E6F6974706FLL;
  }

  else
  {
    return 0x726F7463656C6573;
  }
}

uint64_t sub_1D680A070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F7463656C6573 && a2 == 0xE900000000000073;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D72646CC();

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

uint64_t sub_1D680A154(uint64_t a1)
{
  v2 = sub_1D680A430();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D680A190(uint64_t a1)
{
  v2 = sub_1D680A430();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatFeedConfig.encode(to:)(void *a1)
{
  sub_1D680AEB0(0, &qword_1EC88C400, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v12 - v8;
  v10 = *v1;
  v12 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D680A430();
  sub_1D7264B5C();
  if (!v10 || (v14 = 0, v13 = v10, sub_1D680A484(), sub_1D680A7C4(0), sub_1D680A720(&qword_1EC88C460, sub_1D680A7C4, sub_1D680A88C), sub_1D72647EC(), !v2))
  {
    if (v12)
    {
      v14 = 1;
      v13 = v12;
      sub_1D680A484();
      sub_1D680A4F8(0);
      sub_1D680A720(&qword_1EC88C430, sub_1D680A4F8, sub_1D680A6D8);
      sub_1D72647EC();
    }
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1D680A430()
{
  result = qword_1EC88C408;
  if (!qword_1EC88C408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C408);
  }

  return result;
}

unint64_t sub_1D680A484()
{
  result = qword_1EC88C410;
  if (!qword_1EC88C410)
  {
    sub_1D680AEB0(255, &qword_1EC88C400, MEMORY[0x1E69E6F58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C410);
  }

  return result;
}

void sub_1D680A560(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D680A5C4()
{
  if (!qword_1EC88C428)
  {
    type metadata accessor for FormatOption();
    sub_1D680A690(&unk_1EDF45930, type metadata accessor for FormatOption);
    sub_1D680A690(&qword_1EDF45940, type metadata accessor for FormatOption);
    v0 = type metadata accessor for FormatFeedConfigValue();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88C428);
    }
  }
}

uint64_t sub_1D680A690(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D680A720(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D680A82C()
{
  if (!qword_1EC88C458)
  {
    v0 = type metadata accessor for FormatFeedConfigValue();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88C458);
    }
  }
}

uint64_t FormatFeedConfig.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v35 = a2;
  sub_1D680AD60();
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D680AE08();
  v9 = v8;
  v32 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D680AEB0(0, &qword_1EC88C498, MEMORY[0x1E69E6F48]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v30 - v17;
  v19 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1D680A430();
  v20 = v36;
  sub_1D7264B0C();
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  else
  {
    v36 = v15;
    v31 = v7;
    v22 = v35;
    v41 = 0;
    if (sub_1D726434C())
    {
      v38 = 0;
      sub_1D680A690(&qword_1EC88C4A8, sub_1D680AE08);
      v23 = v9;
      sub_1D726431C();
      v24 = sub_1D725A74C();
      (*(v32 + 8))(v12, v23);
    }

    else
    {
      v24 = 0;
    }

    v40 = 1;
    v25 = sub_1D726434C();
    v26 = v34;
    if (v25)
    {
      v39 = 1;
      sub_1D680A690(&qword_1EC88C4A0, sub_1D680AD60);
      v27 = v31;
      v28 = v33;
      sub_1D726431C();
      v29 = sub_1D725A74C();
      (*(v26 + 8))(v27, v28);
      (*(v36 + 8))(v18, v14);
    }

    else
    {
      (*(v36 + 8))(v18, v14);
      v29 = 0;
    }

    *v22 = v24;
    v22[1] = v29;

    __swift_destroy_boxed_opaque_existential_1(v37);
  }
}

void sub_1D680AD60()
{
  if (!qword_1EC88C478)
  {
    sub_1D680A5C4();
    sub_1D680A690(&qword_1EC88C480, sub_1D680A5C4);
    sub_1D680A790();
    v0 = sub_1D725AAEC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88C478);
    }
  }
}

void sub_1D680AE08()
{
  if (!qword_1EC88C488)
  {
    sub_1D680A82C();
    sub_1D680A690(&qword_1EC88C490, sub_1D680A82C);
    sub_1D680A8D4();
    v0 = sub_1D725AAEC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88C488);
    }
  }
}

void sub_1D680AEB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D680A430();
    v7 = a3(a1, &type metadata for FormatFeedConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D680AF2C(void *a1)
{
  sub_1D680AEB0(0, &qword_1EC88C400, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v12 - v8;
  v10 = *v1;
  v12 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D680A430();
  sub_1D7264B5C();
  if (!v10 || (v14 = 0, v13 = v10, sub_1D680A484(), sub_1D680A7C4(0), sub_1D680A720(&qword_1EC88C460, sub_1D680A7C4, sub_1D680A88C), sub_1D72647EC(), !v2))
  {
    if (v12)
    {
      v14 = 1;
      v13 = v12;
      sub_1D680A484();
      sub_1D680A4F8(0);
      sub_1D680A720(&qword_1EC88C430, sub_1D680A4F8, sub_1D680A6D8);
      sub_1D72647EC();
    }
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D680B190(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

unint64_t sub_1D680B210()
{
  result = qword_1EC88C4B0;
  if (!qword_1EC88C4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C4B0);
  }

  return result;
}

unint64_t sub_1D680B268()
{
  result = qword_1EC88C4B8;
  if (!qword_1EC88C4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C4B8);
  }

  return result;
}

unint64_t sub_1D680B2C0()
{
  result = qword_1EC88C4C0;
  if (!qword_1EC88C4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C4C0);
  }

  return result;
}

uint64_t Array<A>.bind(binder:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a1;
  v21 = a2;
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1D726279C();
  if (result)
  {
    v13 = 0;
    v19 = (v9 + 16);
    v17 = v10;
    v18 = a5 + 8;
    while (1)
    {
      v14 = sub_1D726277C();
      sub_1D726271C();
      if (v14)
      {
        result = (*(v9 + 16))(v11, a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v13, a4);
        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_11;
        }
      }

      else
      {
        result = sub_1D7263DBC();
        if (v17 != 8)
        {
          __break(1u);
          return result;
        }

        v22 = result;
        (*v19)(v11, &v22, a4);
        result = swift_unknownObjectRelease();
        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_11:
          __break(1u);
          return result;
        }
      }

      (*(a5 + 8))(v20, v21, a4, a5);
      result = (*(v9 + 8))(v11, a4);
      if (!v5)
      {
        result = sub_1D726279C();
        ++v13;
        if (v15 != result)
        {
          continue;
        }
      }

      return result;
    }
  }

  return result;
}

uint64_t Dictionary.bind(binder:context:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v71 = a2;
  v70 = a1;
  v65 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v69 = v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v62 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v79 = v62 - v16;
  v64 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v72 = v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = v62 - v23;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v76 = sub_1D726393C();
  v26 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76, v27);
  v67 = v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = v62 - v31;
  v91 = v5;
  v66 = v24;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v33 = sub_1D7263FEC();
    v34 = 0;
    v35 = 0;
    v82 = 0;
    v78 = v33 | 0x8000000000000000;
  }

  else
  {
    v36 = -1 << *(a3 + 32);
    v35 = ~v36;
    v34 = a3 + 64;
    v37 = -v36;
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    else
    {
      v38 = -1;
    }

    v82 = v38 & *(a3 + 64);
    v78 = a3;
  }

  v85 = (v64 + 32);
  v84 = (v65 + 32);
  v75 = TupleTypeMetadata2 - 8;
  v62[1] = v35;
  v39 = (v35 + 64) >> 6;
  v62[2] = v64 + 16;
  v81 = (v65 + 16);
  v73 = (v65 + 8);
  v74 = (v26 + 32);

  v41 = 0;
  v68 = a4;
  v83 = v13;
  v42 = v79;
  v43 = v67;
  v77 = v34;
  v63 = v32;
  v44 = v82;
  while (1)
  {
    v82 = v44;
    v80 = v41;
    if ((v78 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (sub_1D726401C())
    {
      sub_1D726468C();
      v42 = v79;
      swift_unknownObjectRelease();
      sub_1D726468C();
      swift_unknownObjectRelease();
      v46 = v80;
      v87 = v82;
LABEL_22:
      v52 = *(TupleTypeMetadata2 + 48);
      v43 = v67;
      (*v85)();
      (*v84)(&v43[v52], v42, a5);
      v53 = 0;
      v86 = v46;
      v13 = v83;
      goto LABEL_23;
    }

    v53 = 1;
    v86 = v80;
    v87 = v82;
LABEL_23:
    v54 = *(TupleTypeMetadata2 - 8);
    (*(v54 + 56))(v43, v53, 1, TupleTypeMetadata2);
    (*v74)(v32, v43, v76);
    if ((*(v54 + 48))(v32, 1, TupleTypeMetadata2) == 1)
    {
      return sub_1D5B87E38();
    }

    (*v84)(v13, &v32[*(TupleTypeMetadata2 + 48)], a5);
    (*v85)(v72, v32, a4);
    sub_1D680BDA0();
    if (swift_dynamicCast())
    {
      v55 = *(&v89 + 1);
      v56 = v90;
      __swift_project_boxed_opaque_existential_1(&v88, *(&v89 + 1));
      v57 = v91;
      (*(v56 + 8))(v70, v71, v55, v56);
      v91 = v57;
      if (v57)
      {
        (*v73)(v83, a5);
LABEL_35:
        sub_1D5B87E38();
        return __swift_destroy_boxed_opaque_existential_1(&v88);
      }

      __swift_destroy_boxed_opaque_existential_1(&v88);
      a4 = v68;
      v13 = v83;
    }

    else
    {
      v90 = 0;
      v88 = 0u;
      v89 = 0u;
      sub_1D680BE04(&v88);
    }

    (*v81)(v69, v13, a5);
    if (swift_dynamicCast())
    {
      v58 = *(&v89 + 1);
      v59 = v90;
      __swift_project_boxed_opaque_existential_1(&v88, *(&v89 + 1));
      v60 = v91;
      v61 = v58;
      v13 = v83;
      (*(v59 + 8))(v70, v71, v61, v59);
      (*v73)(v13, a5);
      v91 = v60;
      v42 = v79;
      if (v60)
      {
        goto LABEL_35;
      }

      result = __swift_destroy_boxed_opaque_existential_1(&v88);
      v41 = v86;
      v44 = v87;
      a4 = v68;
      v34 = v77;
    }

    else
    {
      (*v73)(v13, a5);
      v90 = 0;
      v88 = 0u;
      v89 = 0u;
      result = sub_1D680BE04(&v88);
      v41 = v86;
      v44 = v87;
      v42 = v79;
      v34 = v77;
    }
  }

  if (v44)
  {
    v45 = v44;
    v46 = v41;
LABEL_21:
    v87 = (v45 - 1) & v45;
    v50 = __clz(__rbit64(v45)) | (v46 << 6);
    v51 = v78;
    (*(v64 + 16))(v66, *(v78 + 48) + *(v64 + 72) * v50, a4);
    (*(v65 + 16))(v42, *(v51 + 56) + *(v65 + 72) * v50, a5);
    v32 = v63;
    goto LABEL_22;
  }

  if (v39 <= v41 + 1)
  {
    v47 = v41 + 1;
  }

  else
  {
    v47 = v39;
  }

  v48 = v47 - 1;
  v49 = v41;
  while (1)
  {
    v46 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      break;
    }

    if (v46 >= v39)
    {
      v86 = v48;
      v87 = 0;
      v53 = 1;
      goto LABEL_23;
    }

    v45 = *(v34 + 8 * v46);
    ++v49;
    if (v45)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D680BDA0()
{
  result = qword_1EDF329A8;
  if (!qword_1EDF329A8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF329A8);
  }

  return result;
}

uint64_t sub_1D680BE04(uint64_t a1)
{
  sub_1D680BE60();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D680BE60()
{
  if (!qword_1EDF329A0)
  {
    sub_1D680BDA0();
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF329A0);
    }
  }
}

BOOL static FormatCodingMetadataStrategy.shouldEncode(wrappedValue:)(void *a1)
{
  v2 = type metadata accessor for FormatMetadata();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static FormatCodingMetadataStrategy.defaultValue.getter(v5);
  LOBYTE(a1) = _s8NewsFeed14FormatMetadataV2eeoiySbAC_ACtFZ_0(a1, v5);
  sub_1D5BFC6D4(v5, type metadata accessor for FormatMetadata);
  return (a1 & 1) == 0;
}

BOOL sub_1D680BF88(void *a1)
{
  v2 = type metadata accessor for FormatMetadata();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static FormatCodingMetadataStrategy.defaultValue.getter(v5);
  LOBYTE(a1) = _s8NewsFeed14FormatMetadataV2eeoiySbAC_ACtFZ_0(a1, v5);
  sub_1D5BFC6D4(v5, type metadata accessor for FormatMetadata);
  return (a1 & 1) == 0;
}

unint64_t sub_1D680C02C(uint64_t a1)
{
  result = sub_1D5B5C758();
  *(a1 + 8) = result;
  return result;
}

uint64_t FormatLayoutContext.annotator.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 16);
  *(a1 + 8) = *(v1 + 24);
  *(a1 + 24) = v2;
}

uint64_t FormatLayoutContext.itemIdentifier.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t FormatLayoutContext.copy(itemFrame:sectionFrame:)@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>, double a8@<D6>, double a9@<D7>)
{
  v10 = *(v9 + 8);
  v11 = *(v9 + 16);
  v12 = *(v9 + 40);
  *a1 = *v9;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11;
  *(a1 + 24) = *(v9 + 24);
  *(a1 + 40) = v12;
  *(a1 + 48) = a2;
  *(a1 + 56) = a3;
  *(a1 + 64) = a4;
  *(a1 + 72) = a5;
  *(a1 + 80) = a6;
  *(a1 + 88) = a7;
  *(a1 + 96) = a8;
  *(a1 + 104) = a9;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
}

Swift::String __swiftcall FormatLayoutContext.sourceIdentifier(layoutIdentifier:)(Swift::String layoutIdentifier)
{
  object = layoutIdentifier._object;
  countAndFlagsBits = layoutIdentifier._countAndFlagsBits;
  if (*(v1 + 120))
  {
    v7 = *(v1 + 112);
    v8 = *(v1 + 120);

    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    MEMORY[0x1DA6F9910](countAndFlagsBits, object);
    countAndFlagsBits = v7;
    object = v8;
  }

  else
  {
  }

  v4 = countAndFlagsBits;
  v5 = object;
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

uint64_t sub_1D680C220@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 16);
  *(a1 + 8) = *(v1 + 24);
  *(a1 + 24) = v2;
}

uint64_t sub_1D680C288()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t sub_1D680C2B8@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>, double a8@<D6>, double a9@<D7>)
{
  v10 = *(v9 + 8);
  v11 = *(v9 + 16);
  v12 = *(v9 + 40);
  *a1 = *v9;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11;
  *(a1 + 24) = *(v9 + 24);
  *(a1 + 40) = v12;
  *(a1 + 48) = a2;
  *(a1 + 56) = a3;
  *(a1 + 64) = a4;
  *(a1 + 72) = a5;
  *(a1 + 80) = a6;
  *(a1 + 88) = a7;
  *(a1 + 96) = a8;
  *(a1 + 104) = a9;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
}

uint64_t sub_1D680C33C(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 120))
  {
    v6 = *(v2 + 112);

    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    MEMORY[0x1DA6F9910](a1, a2);
    return v6;
  }

  else
  {
  }

  return a1;
}

uint64_t sub_1D680C45C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_1D680C4A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t WebEmbedDataVisualizationDataServiceFailure.deinit()
{
  v1 = OBJC_IVAR____TtC8NewsFeed43WebEmbedDataVisualizationDataServiceFailure_fetchDate;
  v2 = sub_1D725891C();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC8NewsFeed43WebEmbedDataVisualizationDataServiceFailure_createdDate, v2);
  v4 = OBJC_IVAR____TtC8NewsFeed43WebEmbedDataVisualizationDataServiceFailure_request;
  v5 = sub_1D72577EC();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t WebEmbedDataVisualizationDataServiceFailure.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC8NewsFeed43WebEmbedDataVisualizationDataServiceFailure_fetchDate;
  v2 = sub_1D725891C();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC8NewsFeed43WebEmbedDataVisualizationDataServiceFailure_createdDate, v2);
  v4 = OBJC_IVAR____TtC8NewsFeed43WebEmbedDataVisualizationDataServiceFailure_request;
  v5 = sub_1D72577EC();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  return swift_deallocClassInstance();
}

uint64_t dispatch thunk of LatestPuzzleProviderType.fetchLatestPuzzles(for:minPuzzles:maxPuzzles:limitedToSamePublishDate:limitedToToday:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = (*(a8 + 8) + **(a8 + 8));
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1D5E97EA8;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1D680C890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  *(v7 + 40) = a4;
  *(v7 + 48) = v6;
  *(v7 + 209) = a6;
  *(v7 + 208) = a5;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v7 + 16) = a1;
  v8 = sub_1D7258C2C();
  *(v7 + 56) = v8;
  *(v7 + 64) = *(v8 - 8);
  *(v7 + 72) = swift_task_alloc();
  sub_1D5B5B2A0();
  *(v7 + 80) = swift_task_alloc();
  *(v7 + 88) = swift_task_alloc();
  v9 = sub_1D725891C();
  *(v7 + 96) = v9;
  *(v7 + 104) = *(v9 - 8);
  *(v7 + 112) = swift_task_alloc();
  *(v7 + 120) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D680CA00, 0, 0);
}

uint64_t sub_1D680CA00()
{
  v1 = v0[6];
  v3 = v0[2];
  v2 = v0[3];
  v4 = [objc_opt_self() cachePolicyWithSoftMaxAge_];
  v0[16] = v4;
  v5 = v1[5];
  v6 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v5);
  sub_1D5C3C480();
  v7 = swift_allocObject();
  v0[17] = v7;
  *(v7 + 16) = xmmword_1D7273AE0;
  *(v7 + 32) = v3;
  *(v7 + 40) = v2;
  v8 = *(v6 + 128);

  v9 = v4;
  v12 = (v8 + *v8);
  v10 = swift_task_alloc();
  v0[18] = v10;
  *v10 = v0;
  v10[1] = sub_1D680CBB8;

  return v12(v7, v4, 25, v5, v6);
}

uint64_t sub_1D680CBB8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 152) = a1;
  *(v3 + 160) = v1;

  if (v1)
  {
    v4 = sub_1D680DC58;
  }

  else
  {

    v4 = sub_1D680CCDC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D680CCDC()
{
  v50 = v0;
  v2 = v0[19];
  if (!(v2 >> 62))
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_31:

    goto LABEL_32;
  }

  if (!sub_1D7263BFC())
  {
    goto LABEL_31;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1DA6FB460](0, v0[19]);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_38;
    }

    v3 = *(v0[19] + 32);
    swift_unknownObjectRetain();
  }

  v4 = [v3 latestPuzzleIDs];
  swift_unknownObjectRelease();
  if (!v4)
  {
LABEL_32:
    v15 = v0[16];
    sub_1D680E84C();
    swift_allocError();
    *v45 = 0;
    *(v45 + 8) = 0;
    *(v45 + 16) = 1;
LABEL_33:
    swift_willThrow();

    v46 = v0[1];

    return v46();
  }

  v5 = v0[4];
  v6 = sub_1D726267C();

  v1 = *(v6 + 16);
  if (v1 < v5)
  {

    if (qword_1EDF3B838 == -1)
    {
LABEL_9:
      v7 = sub_1D725C42C();
      __swift_project_value_buffer(v7, qword_1EDFFCFA8);

      v8 = sub_1D725C3FC();
      v9 = sub_1D7262EBC();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = v0[3];
        v11 = v0[4];
        v12 = v0[2];
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v49[0] = v14;
        *v13 = 134218242;
        *(v13 + 4) = v11;
        *(v13 + 12) = 2080;
        *(v13 + 14) = sub_1D5BC5100(v12, v10, v49);
        _os_log_impl(&dword_1D5B42000, v8, v9, "Failed to meet minimum item requirement of %ld for Puzzle Type %s", v13, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v14);
        MEMORY[0x1DA6FD500](v14, -1, -1);
        MEMORY[0x1DA6FD500](v13, -1, -1);
      }

      v15 = v0[16];
      v16 = v0[4];
      sub_1D680E84C();
      swift_allocError();
      *v17 = v16;
      *(v17 + 8) = v1;
      *(v17 + 16) = 0;
      goto LABEL_33;
    }

LABEL_38:
    swift_once();
    goto LABEL_9;
  }

  v18 = sub_1D691601C(v0[5], v6);
  v20 = v19;
  v22 = v21;
  v24 = v23;
  if ((v23 & 1) == 0)
  {

LABEL_14:
    sub_1D5EC3274(v18, v20, v22, v24);
    v26 = v25;
LABEL_21:
    swift_unknownObjectRelease();
    goto LABEL_22;
  }

  sub_1D72647AC();
  swift_unknownObjectRetain_n();

  v27 = swift_dynamicCastClass();
  if (!v27)
  {
    swift_unknownObjectRelease();
    v27 = MEMORY[0x1E69E7CC0];
  }

  v28 = *(v27 + 16);

  if (__OFSUB__(v24 >> 1, v22))
  {
    __break(1u);
    goto LABEL_40;
  }

  if (v28 != (v24 >> 1) - v22)
  {
LABEL_40:
    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v26 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v26)
  {
    v26 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_22:
  v0[21] = v26;
  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v29 = sub_1D725C42C();
  v0[22] = __swift_project_value_buffer(v29, qword_1EDFFCFA8);

  v30 = sub_1D725C3FC();
  v31 = sub_1D7262EDC();

  if (os_log_type_enabled(v30, v31))
  {
    v47 = v0[5];
    v33 = v0[2];
    v32 = v0[3];
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v49[0] = v35;
    *v34 = 134218754;
    *(v34 + 4) = *(v26 + 16);

    *(v34 + 12) = 2080;
    *(v34 + 14) = sub_1D5BC5100(v33, v32, v49);
    *(v34 + 22) = 2080;
    v36 = MEMORY[0x1DA6F9D20](v6, MEMORY[0x1E69E6158]);
    v38 = v37;

    v39 = sub_1D5BC5100(v36, v38, v49);

    *(v34 + 24) = v39;
    *(v34 + 32) = 2048;
    *(v34 + 34) = v47;
    _os_log_impl(&dword_1D5B42000, v30, v31, "%ld Puzzle IDs available to be fetched for Puzzle Type %s: %s - Max Number of Puzzles: %ld", v34, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1DA6FD500](v35, -1, -1);
    MEMORY[0x1DA6FD500](v34, -1, -1);
  }

  else
  {
  }

  v40 = v0[6];
  v41 = v40[5];
  v42 = v40[6];
  __swift_project_boxed_opaque_existential_1(v40 + 2, v41);
  v48 = (*(v42 + 56) + **(v42 + 56));
  v43 = swift_task_alloc();
  v0[23] = v43;
  *v43 = v0;
  v43[1] = sub_1D680D3A4;

  return v48(v26, 1, v41, v42);
}

uint64_t sub_1D680D3A4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 192) = a1;
  *(v3 + 200) = v1;

  if (v1)
  {
    v4 = sub_1D680DD08;
  }

  else
  {

    v4 = sub_1D680D4C0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D680D4C0()
{
  v65 = v0;
  v1 = v0;
  v59 = v0;
  if (NFInternalBuild())
  {
    v2 = v0[24];
    if (v2 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D7263BFC())
    {
      v4 = 0;
      v60 = v2 & 0xFFFFFFFFFFFFFF8;
      v62 = v2 & 0xC000000000000001;
      v2 = v1[24] + 32;
      v5 = MEMORY[0x1E69E7CC0];
      while (v62)
      {
        v6 = MEMORY[0x1DA6FB460](v4, v59[24]);
        v7 = (v4 + 1);
        if (__OFADD__(v4, 1))
        {
          goto LABEL_16;
        }

LABEL_8:
        v1 = i;
        v8 = [v6 identifier];
        v9 = sub_1D726207C();
        v11 = v10;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1D5B858EC(0, *(v5 + 2) + 1, 1, v5);
        }

        v13 = *(v5 + 2);
        v12 = *(v5 + 3);
        if (v13 >= v12 >> 1)
        {
          v5 = sub_1D5B858EC((v12 > 1), v13 + 1, 1, v5);
        }

        *(v5 + 2) = v13 + 1;
        v14 = &v5[16 * v13];
        *(v14 + 4) = v9;
        *(v14 + 5) = v11;
        swift_unknownObjectRelease();
        ++v4;
        i = v1;
        if (v7 == v1)
        {
          goto LABEL_20;
        }
      }

      if (v4 >= *(v60 + 16))
      {
        goto LABEL_17;
      }

      v6 = *(v2 + 8 * v4);
      swift_unknownObjectRetain();
      v7 = (v4 + 1);
      if (!__OFADD__(v4, 1))
      {
        goto LABEL_8;
      }

LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

    v5 = MEMORY[0x1E69E7CC0];
LABEL_20:
    v1 = v59;

    v15 = sub_1D725C3FC();
    v16 = sub_1D7262EDC();

    if (os_log_type_enabled(v15, v16))
    {
      v18 = v59[2];
      v17 = v59[3];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v64[0] = v20;
      *v19 = 134218498;
      *(v19 + 4) = *(v5 + 2);
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_1D5BC5100(v18, v17, v64);
      *(v19 + 22) = 2080;

      v22 = MEMORY[0x1DA6F9D20](v21, MEMORY[0x1E69E6158]);
      v24 = v23;

      v25 = sub_1D5BC5100(v22, v24, v64);

      *(v19 + 24) = v25;
      _os_log_impl(&dword_1D5B42000, v15, v16, "Successfully Fetched %ld Puzzles for Puzzle Type %s: %s", v19, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA6FD500](v20, -1, -1);
      MEMORY[0x1DA6FD500](v19, -1, -1);
    }
  }

  v26 = v1[25];
  v27 = v1[6];

  v64[0] = sub_1D680E950(v28, sub_1D5C38490, sub_1D609A6F4);
  sub_1D6810058(v64, v27);
  if (v26)
  {
  }

  v30 = *(v1 + 208);

  v31 = v64[0];
  if (v30)
  {
    if (v64[0] < 0 || (v64[0] & 0x4000000000000000) != 0)
    {
      result = sub_1D7263BFC();
      if (result)
      {
LABEL_31:
        if ((v31 & 0xC000000000000001) != 0)
        {
          v32 = MEMORY[0x1DA6FB460](0, v31);
        }

        else
        {
          if (!*(v31 + 16))
          {
            __break(1u);
            return result;
          }

          v32 = *(v31 + 32);
          swift_unknownObjectRetain();
        }

        v33 = [v32 publishDate];
        swift_unknownObjectRelease();
        if (v33)
        {
          sub_1D72588BC();

          v34 = 0;
        }

        else
        {
          v34 = 1;
        }

        v36 = v1[12];
        v35 = v1[13];
        v38 = v1[10];
        v37 = v1[11];
        (*(v35 + 56))(v38, v34, 1, v36);
        sub_1D5DF42F8(v38, v37);
        if ((*(v35 + 48))(v37, 1, v36) != 1)
        {
          v39 = v1[15];
          v40 = v1[12];
          v41 = v1[13];
          v42 = v1[6];
          (*(v41 + 32))(v39, v1[11], v40);
          v43 = swift_task_alloc();
          v43[2] = v39;
          v43[3] = v42;
          v31 = sub_1D62ECB1C(sub_1D6810104, v43, v31);

          (*(v41 + 8))(v39, v40);
          goto LABEL_42;
        }

        goto LABEL_41;
      }
    }

    else
    {
      result = *(v64[0] + 16);
      if (result)
      {
        goto LABEL_31;
      }
    }

    (*(v1[13] + 56))(v1[11], 1, 1, v1[12]);
LABEL_41:
    _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v1[11]);
  }

LABEL_42:
  if (*(v1 + 209) == 1)
  {
    v64[0] = MEMORY[0x1E69E7CC0];
    if (v31 >> 62)
    {
      goto LABEL_62;
    }

    for (j = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_1D7263BFC())
    {
      v45 = 0;
      v61 = v31 & 0xFFFFFFFFFFFFFF8;
      v63 = v31 & 0xC000000000000001;
      v57 = (v1[13] + 8);
      v58 = (v1[8] + 8);
      while (1)
      {
        if (v63)
        {
          v46 = MEMORY[0x1DA6FB460](v45, v31);
          v47 = v45 + 1;
          if (__OFADD__(v45, 1))
          {
LABEL_58:
            __break(1u);
            goto LABEL_59;
          }

          goto LABEL_51;
        }

        if (v45 >= *(v61 + 16))
        {
          break;
        }

        v46 = *(v31 + 8 * v45 + 32);
        swift_unknownObjectRetain();
        v47 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
          goto LABEL_58;
        }

LABEL_51:
        v48 = [v46 publishDate];
        if (v48)
        {
          v49 = v31;
          v50 = v1[14];
          v51 = v1[12];
          v52 = v1[9];
          v53 = v1[7];
          v54 = v48;
          sub_1D72588BC();

          sub_1D7258BCC();
          LOBYTE(v54) = sub_1D7258AFC();
          (*v58)(v52, v53);
          (*v57)(v50, v51);
          if (v54)
          {
            sub_1D7263E9C();
            sub_1D7263EDC();
            sub_1D7263EEC();
            sub_1D7263EAC();
          }

          else
          {
            swift_unknownObjectRelease();
          }

          v1 = v59;
          v31 = v49;
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v45;
        if (v47 == j)
        {
          v55 = v64[0];
          goto LABEL_64;
        }
      }

      __break(1u);
LABEL_62:
      ;
    }

    v55 = MEMORY[0x1E69E7CC0];
LABEL_64:

    v31 = v55;
  }

  else
  {
LABEL_59:
  }

  v56 = v1[1];

  return v56(v31);
}

uint64_t sub_1D680DC58()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D680DD08()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D680DDB4(void **a1, id *a2, uint64_t a3)
{
  v44 = a3;
  sub_1D5B5B2A0();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v42 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v40 - v10;
  v12 = sub_1D725891C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v43 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v40 - v18;
  *&v22 = MEMORY[0x1EEE9AC00](v20, v21).n128_u64[0];
  v24 = &v40 - v23;
  v25 = *a1;
  v45 = *a2;
  v41 = v25;
  v26 = [v25 publishDate];
  if (v26)
  {
    v27 = v26;
    sub_1D72588BC();

    v28 = *(v13 + 32);
    v28(v11, v19, v12);
    v29 = *(v13 + 56);
    v29(v11, 0, 1, v12);
    v28(v24, v11, v12);
  }

  else
  {
    v29 = *(v13 + 56);
    v29(v11, 1, 1, v12);
    sub_1D725890C();
    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {
      _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v11);
    }
  }

  v30 = [v45 publishDate];
  if (v30)
  {
    v31 = v30;
    sub_1D72588BC();

    v32 = *(v13 + 32);
    v33 = v42;
    v32(v42, v19, v12);
    v29(v33, 0, 1, v12);
    v34 = v43;
    v32(v43, v33, v12);
  }

  else
  {
    v35 = v42;
    v29(v42, 1, 1, v12);
    v34 = v43;
    sub_1D725890C();
    if ((*(v13 + 48))(v35, 1, v12) != 1)
    {
      _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v35);
    }
  }

  if (sub_1D72588EC())
  {
    v36 = [v41 difficulty];
    v37 = v36 < [v45 difficulty];
  }

  else
  {
    v37 = sub_1D725882C();
  }

  v38 = *(v13 + 8);
  v38(v34, v12);
  v38(v24, v12);
  return v37 & 1;
}

uint64_t sub_1D680E198(id *a1)
{
  v2 = sub_1D725891C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x1EEE9AC00](v7, v8).n128_u64[0];
  v11 = &v16 - v10;
  v12 = [*a1 publishDate];
  if (v12)
  {
    v13 = v12;
    sub_1D72588BC();

    (*(v3 + 32))(v11, v6, v2);
    v14 = sub_1D72588EC();
    (*(v3 + 8))(v11, v2);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_1D680E308()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = OBJC_IVAR____TtC8NewsFeed20LatestPuzzleProvider_timeZone;
  v2 = sub_1D7258CFC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1D680E3B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1D5BAF844;

  return sub_1D680C890(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1D680E48C(char *__dst, id *a2, void **a3, uint64_t a4, uint64_t a5)
{
  v6 = a3;
  v7 = __dst;
  v8 = a2 - __dst;
  v9 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v9 = a2 - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - a2;
  v12 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    v14 = a2;
    v15 = a4;
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v16 = &v15[v10];
    if (v8 < 8 || v14 >= v6)
    {
LABEL_21:
      a2 = v7;
      goto LABEL_54;
    }

    v17 = v14;
    while (1)
    {
      v48 = *v17;
      v47 = *v15;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v18 = sub_1D680DDB4(&v48, &v47, a5);
      if (v5)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v35 = v16 - v15 + 7;
        if (v16 - v15 >= 0)
        {
          v35 = v16 - v15;
        }

        if (v7 < v15 || v7 >= (v15 + (v35 & 0xFFFFFFFFFFFFFFF8)) || v7 != v15)
        {
          v36 = 8 * (v35 >> 3);
          v37 = v7;
          goto LABEL_60;
        }

        goto LABEL_62;
      }

      v19 = v18;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if ((v19 & 1) == 0)
      {
        break;
      }

      v20 = v17;
      v21 = v7 == v17++;
      if (!v21)
      {
        goto LABEL_18;
      }

LABEL_19:
      ++v7;
      if (v15 >= v16 || v17 >= v6)
      {
        goto LABEL_21;
      }
    }

    v20 = v15;
    v21 = v7 == v15++;
    if (v21)
    {
      goto LABEL_19;
    }

LABEL_18:
    *v7 = *v20;
    goto LABEL_19;
  }

  if (a4 != a2 || &a2[v13] <= a4)
  {
    v22 = a2;
    v23 = a4;
    memmove(a4, a2, 8 * v13);
    a4 = v23;
    a2 = v22;
  }

  v45 = a4;
  v16 = (a4 + 8 * v13);
  if (v11 < 8 || a2 <= v7)
  {
    v15 = a4;
    goto LABEL_54;
  }

  v24 = -a4;
  v43 = -a4;
LABEL_28:
  v44 = a2;
  v25 = a2 - 1;
  v26 = v16 + v24;
  --v6;
  v27 = v16;
  v28 = v16;
  while (1)
  {
    v29 = *--v28;
    v48 = v29;
    v30 = v25;
    v47 = *v25;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v31 = sub_1D680DDB4(&v48, &v47, a5);
    if (v5)
    {
      break;
    }

    v32 = v31;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v33 = v6 + 1;
    if (v32)
    {
      v34 = v30;
      if (v33 != v44)
      {
        *v6 = *v30;
      }

      v15 = v45;
      v16 = v27;
      if (v27 <= v45 || (a2 = v34, v24 = v43, v34 <= v7))
      {
        a2 = v34;
        goto LABEL_54;
      }

      goto LABEL_28;
    }

    if (v33 != v27)
    {
      *v6 = *v28;
    }

    v26 -= 8;
    --v6;
    v27 = v28;
    v25 = v30;
    if (v28 <= v45)
    {
      v16 = v28;
      a2 = v44;
      v15 = v45;
LABEL_54:
      v41 = v16 - v15 + 7;
      if (v16 - v15 >= 0)
      {
        v41 = v16 - v15;
      }

      if (a2 >= v15 && a2 < (v15 + (v41 & 0xFFFFFFFFFFFFFFF8)) && a2 == v15)
      {
        goto LABEL_62;
      }

      v36 = 8 * (v41 >> 3);
      v37 = a2;
LABEL_60:
      v40 = v15;
LABEL_61:
      memmove(v37, v40, v36);
      goto LABEL_62;
    }
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v26 >= 0)
  {
    v38 = v26;
  }

  else
  {
    v38 = v26 + 7;
  }

  v39 = v38 >> 3;
  v37 = v44;
  v40 = v45;
  if (v44 < v45 || v44 >= (v45 + (v38 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v44, v45, 8 * v39);
    goto LABEL_62;
  }

  if (v44 != v45)
  {
    v36 = 8 * v39;
    goto LABEL_61;
  }

LABEL_62:

  return 1;
}

unint64_t sub_1D680E84C()
{
  result = qword_1EC88C4D0;
  if (!qword_1EC88C4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C4D0);
  }

  return result;
}

uint64_t sub_1D680E950(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = sub_1D7263BFC();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1D680E9F4(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v207 = a5;
  v187 = a1;
  sub_1D5B5B2A0();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v206 = &v185 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v202 = &v185 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v192 = &v185 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v191 = &v185 - v19;
  v213 = sub_1D725891C();
  MEMORY[0x1EEE9AC00](v213, v20);
  v201 = &v185 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v185 - v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  MEMORY[0x1EEE9AC00](v28, v29);
  v209 = &v185 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v197 = a3;
  v36 = a3[1];
  if (v36 < 1)
  {
    swift_retain_n();
    v38 = MEMORY[0x1E69E7CC0];
LABEL_113:
    v213 = *v187;
    if (!v213)
    {
      goto LABEL_153;
    }

    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = v198;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_115:
      v216 = v38;
      v176 = *(v38 + 2);
      if (v176 >= 2)
      {
        v177 = v207;
        do
        {
          v178 = *v197;
          if (!*v197)
          {
            goto LABEL_151;
          }

          v179 = *&v38[16 * v176];
          v180 = *&v38[16 * v176 + 24];
          v181 = (v178 + 8 * v179);
          v182 = (v178 + 8 * *&v38[16 * v176 + 16]);
          v183 = (v178 + 8 * v180);

          sub_1D680E48C(v181, v182, v183, v213, v177);
          if (v5)
          {
            break;
          }

          if (v180 < v179)
          {
            goto LABEL_140;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v38 = sub_1D62FF50C(v38);
          }

          if (v176 - 2 >= *(v38 + 2))
          {
            goto LABEL_141;
          }

          v184 = &v38[16 * v176];
          *v184 = v179;
          *(v184 + 1) = v180;
          v216 = v38;
          sub_1D62FF480(v176 - 1);
          v38 = v216;
          v176 = *(v216 + 2);
        }

        while (v176 > 1);
      }
    }

LABEL_147:
    v38 = sub_1D62FF50C(v38);
    goto LABEL_115;
  }

  v196 = &v185 - v34;
  v190 = v35;
  v186 = a4;
  v208 = (v33 + 32);
  v211 = (v33 + 56);
  v200 = (v33 + 48);
  v204 = (v33 + 8);
  v205 = OBJC_IVAR____TtC8NewsFeed20LatestPuzzleProvider_timeZone;
  swift_retain_n();
  v37 = 0;
  v38 = MEMORY[0x1E69E7CC0];
  v210 = v25;
  while (1)
  {
    v39 = v37;
    v40 = v37 + 1;
    v193 = v38;
    v188 = v37;
    if (v37 + 1 >= v36)
    {
      goto LABEL_31;
    }

    v41 = *v197;
    v42 = *(*v197 + 8 * v40);
    v214 = *(*v197 + 8 * v37);
    v215 = v42;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v43 = v198;
    LODWORD(v203) = sub_1D680DDB4(&v215, &v214, v207);
    v198 = v43;
    if (v43)
    {

      swift_unknownObjectRelease();
      return swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v40 = v37 + 2;
    v39 = v37;
    if (v37 + 2 >= v36)
    {
      v38 = v193;
      if ((v203 & 1) == 0)
      {
        goto LABEL_31;
      }

LABEL_24:
      if (v40 >= v39)
      {
        if (v39 < v40)
        {
          v77 = v40;
          v78 = 8 * v40 - 8;
          v79 = 8 * v39;
          v80 = v39;
          do
          {
            if (v80 != --v77)
            {
              v81 = *v197;
              if (!*v197)
              {
                goto LABEL_150;
              }

              v82 = *(v81 + v79);
              *(v81 + v79) = *(v81 + v78);
              *(v81 + v78) = v82;
            }

            ++v80;
            v78 -= 8;
            v79 += 8;
          }

          while (v80 < v77);
        }

        goto LABEL_31;
      }

LABEL_146:
      __break(1u);
      goto LABEL_147;
    }

    v199 = v37 + 2;
    v44 = (v41 + 8 * v37 + 16);
    v195 = v36;
    while (1)
    {
      v50 = *(v44 - 1);
      v51 = *v44;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v52 = [v51 publishDate];
      if (v52)
      {
        v53 = v209;
        v54 = v52;
        sub_1D72588BC();

        v55 = *v208;
        v56 = v191;
        v57 = v213;
        (*v208)(v191, v53, v213);
        v58 = *v211;
        (*v211)(v56, 0, 1, v57);
        v55(v196, v56, v57);
      }

      else
      {
        v58 = *v211;
        v59 = v191;
        v60 = v213;
        (*v211)(v191, 1, 1, v213);
        sub_1D725890C();
        if ((*v200)(v59, 1, v60) != 1)
        {
          _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v59);
        }
      }

      v61 = [v50 publishDate];
      v212 = v51;
      if (v61)
      {
        v62 = v209;
        v63 = v61;
        sub_1D72588BC();

        v64 = *v208;
        v65 = v192;
        v66 = v62;
        v67 = v50;
        v68 = v213;
        (*v208)(v192, v66, v213);
        v58(v65, 0, 1, v68);
        v69 = v190;
        v70 = v68;
        v50 = v67;
        v64(v190, v65, v70);
      }

      else
      {
        v71 = v192;
        v72 = v213;
        v58(v192, 1, 1, v213);
        v69 = v190;
        sub_1D725890C();
        if ((*v200)(v71, 1, v72) != 1)
        {
          _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v192);
        }
      }

      v5 = v196;
      if ((sub_1D72588EC() & 1) == 0)
      {
        break;
      }

      v194 = [v212 difficulty];
      v45 = [v50 difficulty];
      v46 = v69;
      v47 = v45;
      v48 = *v204;
      v49 = v213;
      (*v204)(v46, v213);
      v48(v5, v49);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (((v203 ^ (v194 >= v47)) & 1) == 0)
      {
        goto LABEL_20;
      }

LABEL_9:
      ++v44;
      ++v199;
      v40 = v195;
      v38 = v193;
      if (v195 == v199)
      {
        goto LABEL_21;
      }
    }

    v73 = sub_1D725882C();
    v74 = v69;
    v75 = *v204;
    v76 = v213;
    (*v204)(v74, v213);
    v75(v5, v76);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (((v203 ^ v73) & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_20:
    v38 = v193;
    v40 = v199;
LABEL_21:
    v39 = v188;
    if (v203)
    {
      goto LABEL_24;
    }

LABEL_31:
    v83 = v197[1];
    v84 = v40;
    if (v40 >= v83)
    {
      goto LABEL_40;
    }

    if (__OFSUB__(v40, v39))
    {
      goto LABEL_143;
    }

    if (v40 - v39 >= v186)
    {
LABEL_39:
      v84 = v40;
LABEL_40:
      if (v84 < v39)
      {
        goto LABEL_142;
      }

      goto LABEL_41;
    }

    v85 = v39 + v186;
    if (__OFADD__(v39, v186))
    {
      goto LABEL_144;
    }

    if (v85 >= v83)
    {
      v85 = v197[1];
    }

    if (v85 < v39)
    {
LABEL_145:
      __break(1u);
      goto LABEL_146;
    }

    if (v40 == v85)
    {
      goto LABEL_39;
    }

    v203 = *v197;
    v140 = v203 + 8 * v40 - 8;
    v141 = (v39 - v40);
    v189 = v85;
LABEL_92:
    v199 = v40;
    v142 = *(v203 + 8 * v40);
    v194 = v141;
    v195 = v140;
LABEL_93:
    v143 = *v140;
    swift_unknownObjectRetain();
    v212 = v143;
    swift_unknownObjectRetain();
    v144 = [v142 publishDate];
    if (v144)
    {
      v145 = v209;
      v146 = v144;
      sub_1D72588BC();

      v147 = *v208;
      v5 = v202;
      v148 = v213;
      (*v208)(v202, v145, v213);
      v149 = *v211;
      (*v211)(v5, 0, 1, v148);
      v147(v25, v5, v148);
    }

    else
    {
      v149 = *v211;
      v150 = v202;
      v151 = v213;
      (*v211)(v202, 1, 1, v213);
      sub_1D725890C();
      if ((*v200)(v150, 1, v151) != 1)
      {
        _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v150);
      }
    }

    v152 = [v212 publishDate];
    if (v152)
    {
      v153 = v209;
      v154 = v152;
      sub_1D72588BC();

      v155 = *v208;
      v5 = v206;
      v156 = v213;
      (*v208)(v206, v153, v213);
      v149(v5, 0, 1, v156);
      v157 = v201;
      v155(v201, v5, v156);
    }

    else
    {
      v158 = v206;
      v159 = v213;
      v149(v206, 1, 1, v213);
      v157 = v201;
      sub_1D725890C();
      if ((*v200)(v158, 1, v159) != 1)
      {
        _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v206);
      }
    }

    v25 = v210;
    if (sub_1D72588EC())
    {
      v160 = [v142 difficulty];
      v5 = v212;
      v161 = [v212 difficulty];
      v162 = v157;
      v163 = v161;
      v164 = *v204;
      v165 = v213;
      (*v204)(v162, v213);
      v164(v210, v165);
      v25 = v210;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (v160 >= v163)
      {
        goto LABEL_91;
      }
    }

    else
    {
      v166 = sub_1D725882C();
      v167 = v157;
      v168 = v166;
      v169 = *v204;
      v170 = v213;
      (*v204)(v167, v213);
      v169(v25, v170);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if ((v168 & 1) == 0)
      {
        goto LABEL_91;
      }
    }

    if (!v203)
    {
      break;
    }

    v171 = *v140;
    v142 = *(v140 + 8);
    *v140 = v142;
    *(v140 + 8) = v171;
    v140 -= 8;
    if (!__CFADD__(v141++, 1))
    {
      goto LABEL_93;
    }

LABEL_91:
    v40 = v199 + 1;
    v140 = v195 + 8;
    v141 = v194 - 1;
    if (v199 + 1 != v189)
    {
      goto LABEL_92;
    }

    v84 = v189;
    v38 = v193;
    if (v189 < v188)
    {
      goto LABEL_142;
    }

LABEL_41:
    v199 = v84;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = sub_1D698BA94(0, *(v38 + 2) + 1, 1, v38);
    }

    v87 = *(v38 + 2);
    v86 = *(v38 + 3);
    v88 = v87 + 1;
    v89 = v188;
    if (v87 >= v86 >> 1)
    {
      v173 = sub_1D698BA94((v86 > 1), v87 + 1, 1, v38);
      v89 = v188;
      v38 = v173;
    }

    *(v38 + 2) = v88;
    v90 = &v38[16 * v87];
    *(v90 + 4) = v89;
    *(v90 + 5) = v199;
    if (!*v187)
    {
      goto LABEL_152;
    }

    v91 = *v187;
    if (v87)
    {
      while (2)
      {
        v92 = v88 - 1;
        if (v88 >= 4)
        {
          v97 = &v38[16 * v88 + 32];
          v98 = *(v97 - 64);
          v99 = *(v97 - 56);
          v103 = __OFSUB__(v99, v98);
          v100 = v99 - v98;
          if (v103)
          {
            goto LABEL_129;
          }

          v102 = *(v97 - 48);
          v101 = *(v97 - 40);
          v103 = __OFSUB__(v101, v102);
          v95 = v101 - v102;
          v96 = v103;
          if (v103)
          {
            goto LABEL_130;
          }

          v104 = &v38[16 * v88];
          v106 = *v104;
          v105 = *(v104 + 1);
          v103 = __OFSUB__(v105, v106);
          v107 = v105 - v106;
          if (v103)
          {
            goto LABEL_132;
          }

          v103 = __OFADD__(v95, v107);
          v108 = v95 + v107;
          if (v103)
          {
            goto LABEL_135;
          }

          if (v108 >= v100)
          {
            v126 = &v38[16 * v92 + 32];
            v128 = *v126;
            v127 = *(v126 + 1);
            v103 = __OFSUB__(v127, v128);
            v129 = v127 - v128;
            if (v103)
            {
              goto LABEL_139;
            }

            if (v95 < v129)
            {
              v92 = v88 - 2;
            }
          }

          else
          {
LABEL_60:
            if (v96)
            {
              goto LABEL_131;
            }

            v109 = &v38[16 * v88];
            v111 = *v109;
            v110 = *(v109 + 1);
            v112 = __OFSUB__(v110, v111);
            v113 = v110 - v111;
            v114 = v112;
            if (v112)
            {
              goto LABEL_134;
            }

            v115 = &v38[16 * v92 + 32];
            v117 = *v115;
            v116 = *(v115 + 1);
            v103 = __OFSUB__(v116, v117);
            v118 = v116 - v117;
            if (v103)
            {
              goto LABEL_137;
            }

            if (__OFADD__(v113, v118))
            {
              goto LABEL_138;
            }

            if (v113 + v118 < v95)
            {
              goto LABEL_74;
            }

            if (v95 < v118)
            {
              v92 = v88 - 2;
            }
          }
        }

        else
        {
          if (v88 == 3)
          {
            v93 = *(v38 + 4);
            v94 = *(v38 + 5);
            v103 = __OFSUB__(v94, v93);
            v95 = v94 - v93;
            v96 = v103;
            goto LABEL_60;
          }

          v119 = &v38[16 * v88];
          v121 = *v119;
          v120 = *(v119 + 1);
          v103 = __OFSUB__(v120, v121);
          v113 = v120 - v121;
          v114 = v103;
LABEL_74:
          if (v114)
          {
            goto LABEL_133;
          }

          v122 = &v38[16 * v92];
          v124 = *(v122 + 4);
          v123 = *(v122 + 5);
          v103 = __OFSUB__(v123, v124);
          v125 = v123 - v124;
          if (v103)
          {
            goto LABEL_136;
          }

          if (v125 < v113)
          {
            break;
          }
        }

        v130 = v92 - 1;
        if (v92 - 1 >= v88)
        {
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
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
          goto LABEL_145;
        }

        v131 = *v197;
        if (!*v197)
        {
          goto LABEL_149;
        }

        v5 = v38;
        v132 = *&v38[16 * v130 + 32];
        v133 = *&v38[16 * v92 + 40];
        v134 = (v131 + 8 * v132);
        v135 = (v131 + 8 * *&v38[16 * v92 + 32]);
        v38 = (v131 + 8 * v133);
        v136 = v207;

        v137 = v134;
        v138 = v198;
        sub_1D680E48C(v137, v135, v38, v91, v136);
        v198 = v138;
        if (v138)
        {
        }

        if (v133 < v132)
        {
          goto LABEL_127;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1D62FF50C(v5);
        }

        if (v130 >= *(v5 + 2))
        {
          goto LABEL_128;
        }

        v139 = &v5[16 * v130];
        *(v139 + 4) = v132;
        *(v139 + 5) = v133;
        v216 = v5;
        sub_1D62FF480(v92);
        v38 = v216;
        v88 = *(v216 + 2);
        v25 = v210;
        if (v88 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v36 = v197[1];
    v37 = v199;
    if (v199 >= v36)
    {
      goto LABEL_113;
    }
  }

  __break(1u);
LABEL_149:

  __break(1u);
LABEL_150:

  __break(1u);
LABEL_151:

  __break(1u);
LABEL_152:

  __break(1u);
LABEL_153:

  __break(1u);
  return result;
}

void sub_1D680F9CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v71 = a5;
  sub_1D5B5B2A0();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v73 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v61 - v14;
  v78 = sub_1D725891C();
  MEMORY[0x1EEE9AC00](v78, v16);
  v70 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v75 = &v61 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v79 = &v61 - v24;
  v62 = a2;
  if (a3 != a2)
  {
    v25 = v15;
    v26 = *a4;
    v74 = (v23 + 32);
    v76 = (v23 + 56);
    v66 = (v23 + 48);
    v67 = (v23 + 8);
    v68 = OBJC_IVAR____TtC8NewsFeed20LatestPuzzleProvider_timeZone;
    v72 = v26;
    v27 = v26 + 8 * a3 - 8;
    v28 = a1 - a3;
    v69 = v15;
LABEL_5:
    v64 = v27;
    v65 = a3;
    v29 = *(v72 + 8 * a3);
    v63 = v28;
    while (1)
    {
      v30 = *v27;
      swift_unknownObjectRetain();
      v77 = v30;
      swift_unknownObjectRetain();
      v31 = [v29 publishDate];
      if (v31)
      {
        v32 = v31;
        v33 = v75;
        sub_1D72588BC();

        v34 = *v74;
        v35 = v78;
        (*v74)(v25, v33, v78);
        v36 = *v76;
        (*v76)(v25, 0, 1, v35);
        v34(v79, v25, v35);
      }

      else
      {
        v36 = *v76;
        v37 = v78;
        (*v76)(v25, 1, 1, v78);
        sub_1D725890C();
        if ((*v66)(v25, 1, v37) != 1)
        {
          _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v25);
        }
      }

      v38 = [v77 publishDate];
      if (v38)
      {
        v39 = v75;
        v40 = v38;
        sub_1D72588BC();

        v41 = v73;
        v42 = *v74;
        v43 = v78;
        (*v74)(v73, v39, v78);
        v36(v41, 0, 1, v43);
        v44 = v70;
        v42(v70, v41, v43);
      }

      else
      {
        v45 = v73;
        v46 = v78;
        v36(v73, 1, 1, v78);
        v44 = v70;
        sub_1D725890C();
        if ((*v66)(v45, 1, v46) != 1)
        {
          _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v73);
        }
      }

      if (sub_1D72588EC())
      {
        v47 = [v29 difficulty];
        v48 = [v77 difficulty];
        v49 = v44;
        v50 = v48;
        v51 = *v67;
        v52 = v78;
        (*v67)(v49, v78);
        v51(v79, v52);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v25 = v69;
        if (v47 >= v50)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v53 = v79;
        v54 = sub_1D725882C();
        v55 = v44;
        v56 = v54;
        v57 = *v67;
        v58 = v78;
        (*v67)(v55, v78);
        v57(v53, v58);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v25 = v69;
        if ((v56 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      if (!v72)
      {
        break;
      }

      v59 = *v27;
      v29 = *(v27 + 8);
      *v27 = v29;
      *(v27 + 8) = v59;
      v27 -= 8;
      if (__CFADD__(v28++, 1))
      {
LABEL_4:
        a3 = v65 + 1;
        v27 = v64 + 8;
        v28 = v63 - 1;
        if (v65 + 1 == v62)
        {
          return;
        }

        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1D680FEFC(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_retain_n();
  result = sub_1D726449C();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D6152704();
        v8 = sub_1D726276C();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v9[0] = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
      v9[1] = v7;

      sub_1D680E9F4(v9, v10, a1, v6, a2);

      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_1D680F9CC(0, v4, 1, a1, a2);
  }
}

uint64_t sub_1D6810058(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1D630BBB4(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;

  sub_1D680FEFC(v8, a2);

  sub_1D7263EAC();
}

Swift::Bool __swiftcall FeedPrerollAdRequester.hasScheduledRequest(for:)(Swift::String a1)
{
  sub_1D725A7BC();

  sub_1D725B7CC();

  return v2;
}

uint64_t sub_1D68101B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  swift_beginAccess();
  v8 = *(a1 + 16);

  LOBYTE(a3) = sub_1D5BE240C(a2, a3, v8);

  *a4 = a3 & 1;
  return result;
}

uint64_t FeedPrerollAdRequester.scheduleRequest(for:createContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v40 = a2;
  v41 = a3;
  v6 = type metadata accessor for FeedPrerollAdRequester.ScheduledRequest();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v38 - v13;
  v15 = sub_1D726093C();
  v16 = *(v3 + 56);
  v44 = v17;
  v45 = v16;
  v42 = v3;
  v43 = v15;
  sub_1D725A7BC();

  sub_1D725B7CC();

  if (v46)
  {
    if (qword_1EDF1BB68 != -1)
    {
      swift_once();
    }

    sub_1D5B679FC(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1D7273AE0;
    v19 = sub_1D726093C();
    v21 = v20;
    *(v18 + 56) = MEMORY[0x1E69E6158];
    *(v18 + 64) = sub_1D5B7E2C0();
    *(v18 + 32) = v19;
    *(v18 + 40) = v21;
    sub_1D7262EDC();
    sub_1D725C30C();
  }

  else
  {
    v39 = v7;
    sub_1D726093C();
    sub_1D7260CEC();

    sub_1D726093C();
    sub_1D7260D1C();

    if (qword_1EDF1BB68 != -1)
    {
      swift_once();
    }

    sub_1D5B679FC(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1D7273AE0;
    v24 = sub_1D726093C();
    v26 = v25;
    *(v23 + 56) = MEMORY[0x1E69E6158];
    *(v23 + 64) = sub_1D5B7E2C0();
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    sub_1D7262EDC();
    sub_1D725C30C();

    sub_1D725A76C();
    v27 = sub_1D726093C();
    v29 = v28;
    swift_beginAccess();
    sub_1D5B860D0(&v46, v27, v29);
    swift_endAccess();

    v30 = sub_1D726094C();
    (*(*(v30 - 8) + 16))(v14, a1, v30);
    v31 = &v14[*(v6 + 20)];
    v32 = v41;
    *v31 = v40;
    *(v31 + 1) = v32;
    sub_1D6810CCC(v14, v10);
    swift_beginAccess();
    v33 = *(v4 + 24);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + 24) = v33;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v33 = sub_1D699507C(0, v33[2] + 1, 1, v33);
      *(v4 + 24) = v33;
    }

    v36 = v33[2];
    v35 = v33[3];
    v37 = v39;
    if (v36 >= v35 >> 1)
    {
      v33 = sub_1D699507C(v35 > 1, v36 + 1, 1, v33);
    }

    v33[2] = v36 + 1;
    sub_1D6810D30(v10, v33 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v36);
    *(v4 + 24) = v33;
    swift_endAccess();
    sub_1D725A77C();
    return sub_1D6810FA0(v14, type metadata accessor for FeedPrerollAdRequester.ScheduledRequest);
  }
}

uint64_t type metadata accessor for FeedPrerollAdRequester.ScheduledRequest()
{
  result = qword_1EC88C4F0;
  if (!qword_1EC88C4F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FeedPrerollAdRequester.initiateScheduledRequest(for:)(uint64_t a1)
{
  v24 = a1;
  sub_1D6810D94();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B679FC(0, &qword_1EC88C4E0, type metadata accessor for FeedPrerollAdRequester.ScheduledRequest, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v23 - v8;
  v10 = type metadata accessor for FeedPrerollAdRequester.ScheduledRequest();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v1 + 56);
  sub_1D725A7BC();
  sub_1D5B679FC(0, &qword_1EC88C4E8, type metadata accessor for FeedPrerollAdRequester.ScheduledRequest, MEMORY[0x1E69E62F8]);

  v15 = v24;
  sub_1D725B7CC();

  v25 = v15;
  sub_1D5E3EBF4(sub_1D6810E98, v27, v9);

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1D6810EB8(v9);
    if (qword_1EDF1BB68 != -1)
    {
      swift_once();
    }

    sub_1D7262EBC();
    sub_1D5B679FC(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D7273AE0;
    v17 = sub_1D726093C();
    v19 = v18;
    *(v16 + 56) = MEMORY[0x1E69E6158];
    *(v16 + 64) = sub_1D5B7E2C0();
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    sub_1D725C30C();
  }

  else
  {
    sub_1D6810D30(v9, v14);
    v21 = sub_1D726026C();
    MEMORY[0x1EEE9AC00](v21, v22);
    *(&v23 - 2) = v14;
    sub_1D72606DC();

    sub_1D6810FA0(v5, sub_1D6810D94);
    return sub_1D6810FA0(v14, type metadata accessor for FeedPrerollAdRequester.ScheduledRequest);
  }
}

uint64_t sub_1D6810B88()
{
  v0 = sub_1D726093C();
  v2 = v1;
  if (v0 == sub_1D726093C() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1D72646CC();
  }

  return v4 & 1;
}

uint64_t FeedPrerollAdRequester.deinit()
{

  return v0;
}

uint64_t FeedPrerollAdRequester.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D6810CCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedPrerollAdRequester.ScheduledRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6810D30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedPrerollAdRequester.ScheduledRequest();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D6810D94()
{
  if (!qword_1EC88C4D8)
  {
    sub_1D7260A1C();
    sub_1D726094C();
    sub_1D5B473C8(&unk_1EDF43920, MEMORY[0x1E69B41D8]);
    v0 = sub_1D72605CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88C4D8);
    }
  }
}

uint64_t sub_1D6810E50@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 24);
}

uint64_t sub_1D6810EB8(uint64_t a1)
{
  sub_1D5B679FC(0, &qword_1EC88C4E0, type metadata accessor for FeedPrerollAdRequester.ScheduledRequest, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D6810F44(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = type metadata accessor for FeedPrerollAdRequester.ScheduledRequest();
  return (*(v3 + *(v4 + 20)))(a1);
}

uint64_t sub_1D6810FA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D6811040()
{
  result = sub_1D726094C();
  if (v1 <= 0x3F)
  {
    result = sub_1D5B5D9E0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t TagMastheadAlignment.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D6811158()
{
  result = qword_1EC88C500;
  if (!qword_1EC88C500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C500);
  }

  return result;
}

uint64_t PuzzleHintFormatter.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D72745A0;
  type metadata accessor for PuzzleTagConverter();
  v1 = swift_allocObject();
  v1[2] = 23390;
  v1[3] = 0xE200000000000000;
  v1[5] = 0;
  v1[6] = 0;
  v1[4] = 0;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t PuzzleHintFormatter.init()()
{
  *(v0 + 16) = xmmword_1D72745A0;
  type metadata accessor for PuzzleTagConverter();
  v1 = swift_allocObject();
  v1[2] = 23390;
  v1[3] = 0xE200000000000000;
  v1[5] = 0;
  v1[6] = 0;
  v1[4] = 0;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t PuzzleHintFormatter.attributedString(from:format:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  v57 = a3;
  v58._countAndFlagsBits = a1;
  v58._object = a2;
  v59 = a4;
  sub_1D5B542FC(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v51 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v50 = &v50 - v9;
  v10 = sub_1D7257FAC();
  v52 = *(v10 - 8);
  v53 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D7257FBC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D7257FDC();
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  MEMORY[0x1EEE9AC00](v21, v22);
  sub_1D5B542FC(0, &qword_1EC87FF50, MEMORY[0x1E6968848]);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v50 - v29;
  v31 = sub_1D72580BC();
  v54 = *(v31 - 8);
  v55 = v31;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v50 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v50 - v37;
  v39 = sub_1D725815C();
  v41 = MEMORY[0x1EEE9AC00](v39 - 8, v40);
  v56 = &v50 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v57)
  {
    if (*v57 == 1)
    {
      (*(v15 + 104))(v18, *MEMORY[0x1E6968748], v14, v41);
      (*(v52 + 104))(v13, *MEMORY[0x1E6968728], v53);

      sub_1D7257FCC();
      v43 = sub_1D72585BC();
      (*(*(v43 - 8) + 56))(v50, 1, 1, v43);
      sub_1D6812C40();
      sub_1D72580AC();
      v46 = v54;
      v45 = v55;
      (*(v54 + 56))(v30, 0, 1, v55);
      (*(v46 + 32))(v38, v30, v45);
      sub_1D6811AC4(v38, v59);
      return (*(v46 + 8))(v38, v45);
    }

    else
    {
      PuzzleTagConverter.convertToMarkup(html:)(v58);
      (*(v15 + 104))(v18, *MEMORY[0x1E6968748], v14);
      (*(v52 + 104))(v13, *MEMORY[0x1E6968728], v53);

      sub_1D7257FCC();
      v44 = sub_1D72585BC();
      (*(*(v44 - 8) + 56))(v51, 1, 1, v44);
      sub_1D6812C40();
      sub_1D72580AC();
      v49 = v54;
      v48 = v55;
      (*(v54 + 56))(v26, 0, 1, v55);
      (*(v49 + 32))(v34, v26, v48);
      sub_1D6811AC4(v34, v59);
      (*(v49 + 8))(v34, v48);
    }
  }

  else
  {

    sub_1D725814C();
    sub_1D72580CC();
    sub_1D5C14A38();
    v60 = sub_1D72633DC();
    sub_1D62DE440();
    return sub_1D72580DC();
  }
}

uint64_t sub_1D6811AC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D681334C();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1D725804C();
  v56 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59, v9);
  v58 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1D725802C();
  v11 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55, v12);
  v54 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D725805C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6813428();
  v20 = v19 - 8;
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1D72580BC();
  (*(*(v24 - 8) + 16))(a2, a1, v24);
  v25 = [objc_allocWithZone(MEMORY[0x1E69DCA40]) initForTextStyle_];
  [v25 scaledValueForValue_];
  v27 = v26;

  if (v27 <= 19.66665)
  {
    v28 = v27;
  }

  else
  {
    v28 = 19.66665;
  }

  v49 = a2;
  sub_1D725807C();
  (*(v15 + 16))(v23, v18, v14);
  v29 = *(v20 + 44);
  v57 = sub_1D68133E0(&qword_1EDF3C410, MEMORY[0x1E69687C8]);
  sub_1D7262BFC();
  (*(v15 + 8))(v18, v14);
  ++v56;
  v53 = (v11 + 16);
  v52 = (v11 + 8);
  v47[1] = *MEMORY[0x1E69DDD80];
  v60 = v5;
  v48 = v8;
  v51 = v14;
  v50 = v29;
  while (1)
  {
    v32 = v58;
    sub_1D7262C5C();
    sub_1D68133E0(&qword_1EDF18AD8, MEMORY[0x1E69687B0]);
    v33 = v59;
    v34 = sub_1D7261FBC();
    (*v56)(v32, v33);
    if (v34)
    {
      return sub_1D6813510(v23, sub_1D6813428);
    }

    v35 = sub_1D7262D0C();
    v36 = v54;
    v37 = v55;
    (*v53)(v54);
    v35(v64, 0);
    sub_1D7262C6C();
    sub_1D725801C();
    sub_1D68134BC();
    sub_1D725803C();
    (*v52)(v36, v37);
    v38 = v64[0];
    swift_getKeyPath();
    if (v38 > 2)
    {
      if (v38 != 3)
      {
        swift_getKeyPath();
        sub_1D5C14A38();
        v61 = COERCE_DOUBLE(sub_1D72633DC());
        sub_1D68133E0(&qword_1EDF046C0, sub_1D681334C);
        v44 = sub_1D72580EC();
        sub_1D7257EDC();
        sub_1D68133E0(&qword_1EDF3C418, MEMORY[0x1E69DBE88]);
        v45 = sub_1D725821C();
        sub_1D62DE3AC();
        sub_1D62DE440();
        sub_1D725830C();
        v45(v63, 0);

        v44(v64, 0);
        goto LABEL_7;
      }

      swift_getKeyPath();
      sub_1D5C14A38();
      v61 = COERCE_DOUBLE(sub_1D72633DC());
      sub_1D68133E0(&qword_1EDF046C0, sub_1D681334C);
      v41 = sub_1D72580EC();
      sub_1D7257EDC();
      sub_1D68133E0(&qword_1EDF3C418, MEMORY[0x1E69DBE88]);
      v43 = sub_1D725821C();
      sub_1D62DE3AC();
      sub_1D62DE440();
      sub_1D725830C();
      v43(v63, 0);
LABEL_17:

      v41(v64, 0);
      sub_1D6813510(v8, sub_1D681334C);
    }

    else
    {
      if (!v38)
      {
        swift_getKeyPath();
        *&v61 = 1;
        v62 = 0;
        sub_1D68133E0(&qword_1EDF046C0, sub_1D681334C);
        v41 = sub_1D72580EC();
        sub_1D7257EDC();
        sub_1D68133E0(&qword_1EDF3C418, MEMORY[0x1E69DBE88]);
        v42 = sub_1D725821C();
        sub_1D62DE3AC();
        sub_1D62DE614();
        sub_1D725830C();
        v42(v63, 0);
        goto LABEL_17;
      }

      v47[0] = swift_getKeyPath();
      if (v38 == 1)
      {
        v61 = v28 / 3.0;
      }

      else
      {
        v61 = v28 * -0.125;
      }

      v62 = 0;
      sub_1D68133E0(&qword_1EDF046C0, sub_1D681334C);
      v39 = sub_1D72580EC();
      sub_1D7257EDC();
      sub_1D68133E0(&qword_1EDF3C418, MEMORY[0x1E69DBE88]);
      v40 = sub_1D725821C();
      sub_1D62DE3AC();
      sub_1D62DE79C();
      sub_1D725830C();
      v40(v63, 0);

      v39(v64, 0);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1D5C14A38();
      v61 = COERCE_DOUBLE(sub_1D72633DC());
      v8 = v48;
      v30 = sub_1D72580EC();
      v31 = sub_1D725821C();
      sub_1D62DE440();
      sub_1D725830C();
      v31(v63, 0);

      v30(v64, 0);
LABEL_7:
      sub_1D6813510(v8, sub_1D681334C);
    }
  }
}

Swift::String __swiftcall PuzzleTagConverter.convertToMarkup(html:)(Swift::String html)
{
  v2 = v1;
  object = html._object;
  countAndFlagsBits = html._countAndFlagsBits;
  sub_1D68132FC(0, &qword_1EC88C510, MEMORY[0x1E69E67B0], MEMORY[0x1E69E9288]);
  v43 = *(v5 - 8);
  v44 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v42 - v7;
  v9 = sub_1D6812D10();
  v10 = v9[2];
  if (v10)
  {
    sub_1D5BF4D9C();

    v11 = v9 + 7;
    do
    {
      v12 = *(v11 - 3);
      v13 = *(v11 - 2);
      v14 = *(v11 - 1);
      v15 = *v11;
      v49 = countAndFlagsBits;
      v50 = object;
      v47 = v12;
      v48 = v13;
      v45 = v14;
      v46 = v15;
      countAndFlagsBits = sub_1D7263A6C();
      v17 = v16;

      object = v17;
      v11 += 4;
      --v10;
    }

    while (v10);
  }

  else
  {
  }

  v42[1] = v2;
  v18 = sub_1D6812D50();
  v19 = *(v18 + 16);
  if (v19)
  {
    sub_1D5BF4D9C();
    v20 = (v18 + 56);
    do
    {
      v21 = *(v20 - 3);
      v22 = *(v20 - 2);
      v23 = *(v20 - 1);
      v24 = *v20;
      v49 = countAndFlagsBits;
      v50 = object;
      v47 = v21;
      v48 = v22;
      v45 = v23;
      v46 = v24;
      countAndFlagsBits = sub_1D7263A6C();
      v26 = v25;

      v20 += 4;
      object = v26;
      --v19;
    }

    while (v19);
  }

  else
  {
    v26 = object;
  }

  sub_1D725C16C();
  v47 = countAndFlagsBits;
  v48 = v26;
  v45 = 0;
  v46 = 0xE000000000000000;
  sub_1D6812D9C();
  sub_1D6812DF0();
  sub_1D6812E44();
  v27 = v44;
  sub_1D7262D2C();

  v29 = v49;
  v28 = v50;
  v30 = sub_1D681319C();
  v31 = v30[2];
  if (v31)
  {
    sub_1D5BF4D9C();
    v32 = v30 + 7;
    do
    {
      v33 = *(v32 - 3);
      v34 = *(v32 - 2);
      v35 = *(v32 - 1);
      v36 = *v32;
      v49 = v29;
      v50 = v28;
      v47 = v33;
      v48 = v34;
      v45 = v35;
      v46 = v36;
      v29 = sub_1D7263A6C();
      v38 = v37;

      v32 += 4;
      v28 = v38;
      --v31;
    }

    while (v31);
  }

  else
  {
    v38 = v28;
  }

  (*(v43 + 8))(v8, v27);
  v39 = v29;
  v40 = v38;
  result._object = v40;
  result._countAndFlagsBits = v39;
  return result;
}

unint64_t sub_1D6812C40()
{
  result = qword_1EC88C508;
  if (!qword_1EC88C508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C508);
  }

  return result;
}

uint64_t PuzzleHintFormatter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_1D6812D10()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v1 = &unk_1F50F4F48;
    *(v0 + 32) = &unk_1F50F4F48;
  }

  return v1;
}

uint64_t sub_1D6812D50()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    v1 = sub_1D6812EC0(v0);
    *(v0 + 40) = v1;
  }

  return v1;
}

unint64_t sub_1D6812D9C()
{
  result = qword_1EC88C518;
  if (!qword_1EC88C518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C518);
  }

  return result;
}

unint64_t sub_1D6812DF0()
{
  result = qword_1EC88C520;
  if (!qword_1EC88C520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C520);
  }

  return result;
}

unint64_t sub_1D6812E44()
{
  result = qword_1EC88C528;
  if (!qword_1EC88C528)
  {
    sub_1D68132FC(255, &qword_1EC88C510, MEMORY[0x1E69E67B0], MEMORY[0x1E69E9288]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C528);
  }

  return result;
}

uint64_t sub_1D6812EC0(uint64_t a1)
{
  sub_1D68132FC(0, &qword_1EC88C530, &type metadata for PuzzleTagConverter.TagPair, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D72F3820;
  *(v2 + 32) = 4088380;
  *(v2 + 40) = 0xE300000000000000;
  *(v2 + 48) = 10794;
  *(v2 + 56) = 0xE200000000000000;
  *(v2 + 64) = 1046622012;
  *(v2 + 72) = 0xE400000000000000;
  *(v2 + 80) = 10794;
  *(v2 + 88) = 0xE200000000000000;
  *(v2 + 96) = 0x3E676E6F7274733CLL;
  *(v2 + 104) = 0xE800000000000000;
  *(v2 + 112) = 10794;
  *(v2 + 120) = 0xE200000000000000;
  *(v2 + 128) = 0x676E6F7274732F3CLL;
  *(v2 + 136) = 0xE90000000000003ELL;
  *(v2 + 144) = 10794;
  *(v2 + 152) = 0xE200000000000000;
  *(v2 + 160) = 4090172;
  *(v2 + 168) = 0xE300000000000000;
  *(v2 + 176) = 95;
  *(v2 + 184) = 0xE100000000000000;
  *(v2 + 192) = 1047080764;
  *(v2 + 200) = 0xE400000000000000;
  *(v2 + 208) = 95;
  *(v2 + 216) = 0xE100000000000000;
  *(v2 + 224) = 1047356732;
  *(v2 + 232) = 0xE400000000000000;
  *(v2 + 240) = 95;
  *(v2 + 248) = 0xE100000000000000;
  *(v2 + 256) = 0x3E6D652F3CLL;
  *(v2 + 264) = 0xE500000000000000;
  *(v2 + 272) = 95;
  *(v2 + 280) = 0xE100000000000000;
  *(v2 + 288) = 4092732;
  *(v2 + 296) = 0xE300000000000000;
  *(v2 + 304) = 32382;
  *(v2 + 312) = 0xE200000000000000;
  *(v2 + 320) = 1047736124;
  *(v2 + 328) = 0xE400000000000000;
  *(v2 + 336) = 32382;
  *(v2 + 344) = 0xE200000000000000;
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  *(v2 + 352) = 4093244;
  *(v2 + 360) = 0xE300000000000000;
  *(v2 + 368) = v4;
  *(v2 + 376) = v3;
  *(v2 + 384) = 1047867196;
  *(v2 + 392) = 0xE400000000000000;
  *(v2 + 400) = 0xD00000000000001BLL;
  *(v2 + 408) = 0x80000001D73D6E20;
  *(v2 + 416) = 0x3E7075733CLL;
  *(v2 + 424) = 0xE500000000000000;
  *(v2 + 432) = v4;
  *(v2 + 440) = v3;
  *(v2 + 448) = 0x3E7075732F3CLL;
  *(v2 + 456) = 0xE600000000000000;
  *(v2 + 464) = 0xD00000000000001DLL;
  *(v2 + 472) = 0x80000001D73D6E40;
  *(v2 + 480) = 0x3E6275733CLL;
  *(v2 + 488) = 0xE500000000000000;
  *(v2 + 496) = v4;
  *(v2 + 504) = v3;
  *(v2 + 512) = 0x3E6275732F3CLL;
  *(v2 + 520) = 0xE600000000000000;
  *(v2 + 528) = 0xD00000000000001BLL;
  *(v2 + 536) = 0x80000001D73D6E60;
  *(v2 + 544) = 0x3E6769623CLL;
  *(v2 + 552) = 0xE500000000000000;
  *(v2 + 560) = v4;
  *(v2 + 568) = v3;
  *(v2 + 576) = 0x3E6769622F3CLL;
  *(v2 + 584) = 0xE600000000000000;
  *(v2 + 592) = 0xD000000000000018;
  *(v2 + 600) = 0x80000001D73D6E80;
  *(v2 + 608) = 0x3E6C6C616D733CLL;
  *(v2 + 616) = 0xE700000000000000;
  *(v2 + 624) = v4;
  *(v2 + 632) = v3;
  *(v2 + 640) = 0x3E6C6C616D732F3CLL;
  *(v2 + 648) = 0xE800000000000000;
  *(v2 + 656) = 0xD000000000000019;
  *(v2 + 664) = 0x80000001D73D6EA0;
  *(v2 + 672) = 1047683644;
  *(v2 + 680) = 0xE400000000000000;
  *(v2 + 688) = 10;
  *(v2 + 696) = 0xE100000000000000;
  *(v2 + 704) = 0x3E72622F3CLL;
  *(v2 + 712) = 0xE500000000000000;
  *(v2 + 720) = 10;
  *(v2 + 728) = 0xE100000000000000;
  swift_bridgeObjectRetain_n();
  return v2;
}

void *sub_1D681319C()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 48);
  }

  else
  {
    v1 = &unk_1F50F4FC8;
    *(v0 + 48) = &unk_1F50F4FC8;
  }

  return v1;
}

uint64_t PuzzleTagConverter.deinit()
{

  return v0;
}

uint64_t PuzzleTagConverter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1D68132FC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D681334C()
{
  if (!qword_1EDF1AC60)
  {
    sub_1D725808C();
    sub_1D68133E0(&qword_1EDF3C408, MEMORY[0x1E69687E8]);
    v0 = sub_1D7262D5C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1AC60);
    }
  }
}

uint64_t sub_1D68133E0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D6813428()
{
  if (!qword_1EDF1A548)
  {
    sub_1D725805C();
    sub_1D68133E0(&qword_1EDF3C410, MEMORY[0x1E69687C8]);
    v0 = sub_1D7263FAC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A548);
    }
  }
}

unint64_t sub_1D68134BC()
{
  result = qword_1EC88C538;
  if (!qword_1EC88C538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C538);
  }

  return result;
}

uint64_t sub_1D6813510(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t FormatMediaTiming.autoreverses.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 72);
  *(a1 + 16) = v4;
  return sub_1D6189668(v2, v3, v4);
}

uint64_t FormatMediaTiming.timingFunction.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  v4 = *(v1 + 96);
  v5 = *(v1 + 104);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 112);
  *(a1 + 32) = v6;
  return sub_1D66A01E4(v2, v3, v4, v5, v6);
}

uint64_t FormatMediaTiming.removeOnCompletion.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 136);
  *(a1 + 16) = v4;
  return sub_1D6189668(v2, v3, v4);
}

uint64_t sub_1D6813640@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = *(v1 + 32);
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[8];
  v12 = *(v1 + 72);
  v13 = v1[10];
  v14 = v1[11];
  v15 = v1[12];
  v16 = v1[13];
  v17 = *(v1 + 112);
  v18 = v1[15];
  v19 = v1[16];
  v20 = *(v1 + 136);
  v37 = v18;
  if (v17 != 255)
  {
    if (v17)
    {
      v36 = v1[7];
      v33 = v1[8];
      v34 = v1[5];
      v30 = v1[2];
      v31 = v1[3];
      v21 = *v1;
      v35 = *(v1 + 72);
      v32 = v1[16];
      v22 = *(v1 + 136);
      v23 = v7;

      v7 = v23;
      v3 = v21;
      v6 = v30;
      v5 = v31;
      v20 = v22;
      v19 = v32;
      v11 = v33;
      v10 = v36;
      v18 = v37;
      v8 = v34;
      v12 = v35;
      LOBYTE(v17) = 1;
    }

    else
    {
      LOBYTE(v17) = 0;
    }
  }

  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v5;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v12;
  *(a1 + 80) = v13;
  *(a1 + 88) = v14;
  *(a1 + 96) = v15;
  *(a1 + 104) = v16;
  *(a1 + 112) = v17;
  *(a1 + 120) = v18;
  *(a1 + 128) = v19;
  *(a1 + 136) = v20;
  v24 = v10;
  v25 = v11;
  v26 = v12;
  v27 = v19;
  v28 = v20;

  sub_1D6189668(v24, v25, v26);

  return sub_1D6189668(v37, v27, v28);
}

void sub_1D68137D4(uint64_t a1, __int128 *a2)
{
  v4 = v2;
  v5 = a2[7];
  v47 = a2[6];
  *v48 = v5;
  *&v48[9] = *(a2 + 121);
  v6 = a2[3];
  v43 = a2[2];
  v44 = v6;
  v7 = a2[5];
  v45 = a2[4];
  v46 = v7;
  v8 = a2[1];
  v41 = *a2;
  v42 = v8;
  if (sub_1D60486AC(&v41) == 1)
  {
    return;
  }

  v9 = v41;
  if (v41)
  {
    v10 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext();
    v11 = v10();
    v12 = sub_1D5E02AFC(v11, v9);
    if (v3)
    {
      goto LABEL_10;
    }

    v13 = v12;

    [v2 setDuration_];
  }

  v14 = *(&v41 + 1);
  if (!*(&v41 + 1))
  {
    goto LABEL_8;
  }

  v15 = off_1F51AF338[0];
  type metadata accessor for FormatNodeContext();
  v16 = v15();
  v17 = sub_1D5E02AFC(v16, v14);
  if (v3)
  {
LABEL_10:

    return;
  }

  v18 = v17;

  *&v19 = v18;
  [v2 setSpeed_];
LABEL_8:
  v20 = *(&v42 + 1);
  if (*(&v42 + 1))
  {
    v21 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext();
    v22 = v21();
    v23 = sub_1D5E02AFC(v22, v20);
    if (v3)
    {
      goto LABEL_10;
    }

    v24 = v23;

    [v2 setTimeOffset_];
  }

  if (v43 <= 1u)
  {
    if (v43)
    {
      v25 = MEMORY[0x1E69797D8];
    }

    else
    {
      v25 = MEMORY[0x1E69797E8];
    }

    goto LABEL_21;
  }

  if (v43 == 2)
  {
    v25 = MEMORY[0x1E69797E0];
    goto LABEL_21;
  }

  if (v43 == 3)
  {
    v25 = MEMORY[0x1E69797F0];
LABEL_21:
    v26 = *v25;
    [v4 setFillMode_];
  }

  v27 = *(&v43 + 1);
  if (*(&v43 + 1))
  {
    v28 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext();
    v29 = v28();
    v30 = sub_1D5E02AFC(v29, v27);

    if (v3)
    {
      return;
    }

    *&v31 = v30;
    [v4 setRepeatCount_];
  }

  v32 = v44;
  if (v44)
  {
    v33 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext();
    v34 = v33();
    v35 = sub_1D5E02AFC(v34, v32);

    if (v3)
    {
      return;
    }

    [v4 setRepeatDuration_];
  }

  if (BYTE8(v45) != 255)
  {
    sub_1D725A7EC();
    v36 = FormatBoolean.value(contextLayoutOptions:)(v40);

    if (v3)
    {
      return;
    }

    [v4 setAutoreverses_];
  }

  if (v48[24] != 255)
  {
    sub_1D725A7EC();
    v37 = FormatBoolean.value(contextLayoutOptions:)(v40);

    if (v3)
    {
      return;
    }

    [v4 setRemovedOnCompletion_];
  }

  if (v48[0] != 255)
  {
    if (v48[0])
    {
      v38 = sub_1D70714AC();
    }

    else
    {
      v38 = sub_1D69BAFD8();
    }

    if (!v3)
    {
      v39 = v38;
      [v4 setTimingFunction_];
    }
  }
}

BOOL _s8NewsFeed17FormatMediaTimingV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v64 = *(a1 + 32);
  v63 = *(a1 + 40);
  v61 = *(a1 + 48);
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v62 = *(a2 + 40);
  v60 = *(a2 + 48);
  v58 = *(a2 + 56);
  v59 = *(a2 + 64);
  v57 = *(a2 + 72);
  if (*a1)
  {
    if (!v7)
    {
      return 0;
    }

    v53 = *(a2 + 112);
    v54 = *(a1 + 72);
    v55 = *(a1 + 56);
    v56 = *(a1 + 64);
    v44 = *(a2 + 80);
    v45 = *(a2 + 88);
    v46 = *(a2 + 96);
    v47 = *(a2 + 104);
    v48 = *(a1 + 112);
    v49 = *(a1 + 80);
    v50 = *(a1 + 88);
    v51 = *(a1 + 96);
    v52 = *(a1 + 104);
    v40 = *(a2 + 136);
    v38 = *(a2 + 120);
    v39 = *(a2 + 128);
    v43 = *(a1 + 136);
    v41 = *(a1 + 120);
    v42 = *(a1 + 128);

    v11 = sub_1D633A310(v3, v7);

    if ((v11 & 1) == 0)
    {
      return 0;
    }

    if (v2)
    {
      goto LABEL_5;
    }

LABEL_13:
    if (v6)
    {
      return 0;
    }

    if (v4)
    {
      goto LABEL_8;
    }

LABEL_15:
    if (v8)
    {
      return 0;
    }

    goto LABEL_17;
  }

  if (v7)
  {
    return 0;
  }

  v53 = *(a2 + 112);
  v54 = *(a1 + 72);
  v55 = *(a1 + 56);
  v56 = *(a1 + 64);
  v44 = *(a2 + 80);
  v45 = *(a2 + 88);
  v46 = *(a2 + 96);
  v47 = *(a2 + 104);
  v48 = *(a1 + 112);
  v49 = *(a1 + 80);
  v50 = *(a1 + 88);
  v51 = *(a1 + 96);
  v52 = *(a1 + 104);
  v40 = *(a2 + 136);
  v38 = *(a2 + 120);
  v39 = *(a2 + 128);
  v43 = *(a1 + 136);
  v41 = *(a1 + 120);
  v42 = *(a1 + 128);

  if (!v2)
  {
    goto LABEL_13;
  }

LABEL_5:
  if (!v6)
  {
    return 0;
  }

  v12 = sub_1D633A310(v2, v6);

  if ((v12 & 1) == 0)
  {
    return 0;
  }

  if (!v4)
  {
    goto LABEL_15;
  }

LABEL_8:
  if (!v8)
  {
    return 0;
  }

  v13 = sub_1D633A310(v4, v8);

  if ((v13 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  if (v5)
  {
    if (!v9)
    {
      return 0;
    }

    v14 = sub_1D633A310(v5, v9);

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v9)
    {
      return 0;
    }
  }

  if (v64 == 4)
  {
    if (v10 != 4)
    {
      return 0;
    }
  }

  else if (v10 == 4 || (sub_1D6DE5ADC(v64, v10) & 1) == 0)
  {
    return 0;
  }

  if (v63)
  {
    if (!v62)
    {
      return 0;
    }

    v15 = sub_1D633A310(v63, v62);

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v62)
    {
      return 0;
    }
  }

  if (v61)
  {
    if (!v60)
    {
      return 0;
    }

    v16 = sub_1D633A310(v61, v60);

    if ((v16 & 1) == 0)
    {
      return 0;
    }

LABEL_40:
    if (v54 == 255)
    {
      v19 = -1;
      sub_1D6189668(v55, v56, 255);
      v17 = v57;
      v21 = v58;
      v20 = v59;
      if (v57 == 255)
      {
        sub_1D6189668(v58, v59, 255);
        sub_1D60107F0(v55, v56, 255);
        goto LABEL_50;
      }

      sub_1D6189668(v58, v59, v57);
      v23 = v55;
      v22 = v56;
    }

    else
    {
      v70 = v55;
      v71 = v56;
      LOBYTE(v72) = v54;
      v17 = v57;
      if (v57 != 255)
      {
        v65 = v58;
        v66 = v59;
        LOBYTE(v67) = v57 & 1;
        sub_1D6189668(v55, v56, v54);
        sub_1D6189668(v58, v59, v57);
        sub_1D6189668(v55, v56, v54);
        v18 = _s8NewsFeed13FormatBooleanO2eeoiySbAC_ACtFZ_0(&v70, &v65);
        sub_1D5D2F2C4(v65, v66, v67);
        sub_1D5D2F2C4(v70, v71, v72);
        sub_1D60107F0(v55, v56, v54);
        if ((v18 & 1) == 0)
        {
          return 0;
        }

LABEL_50:
        if (v48 == 255)
        {
          v28 = v49;
          v29 = v50;
          v30 = v51;
          v31 = v52;
          sub_1D66A01E4(v49, v50, v51, v52, 255);
          if (v53 == 255)
          {
            sub_1D66A01E4(v44, v45, v46, v47, 255);
            sub_1D62B4B50(v49, v50, v51, v52, 255);
LABEL_61:
            if (v43 == 255)
            {
              sub_1D6189668(v41, v42, 255);
              if (v40 == 255)
              {
                sub_1D6189668(v38, v39, 255);
                sub_1D60107F0(v41, v42, 255);
                return 1;
              }

              sub_1D6189668(v38, v39, v40);
            }

            else
            {
              v70 = v41;
              v71 = v42;
              LOBYTE(v72) = v43;
              if (v40 != 255)
              {
                v65 = v38;
                v66 = v39;
                LOBYTE(v67) = v40 & 1;
                sub_1D6189668(v41, v42, v43);
                sub_1D6189668(v38, v39, v40);
                sub_1D6189668(v41, v42, v43);
                v37 = _s8NewsFeed13FormatBooleanO2eeoiySbAC_ACtFZ_0(&v70, &v65);
                sub_1D5D2F2C4(v65, v66, v67);
                sub_1D5D2F2C4(v70, v71, v72);
                sub_1D60107F0(v41, v42, v43);
                return (v37 & 1) != 0;
              }

              sub_1D6189668(v41, v42, v43);
              sub_1D6189668(v38, v39, 255);
              sub_1D6189668(v41, v42, v43);
              sub_1D5D2F2C4(v41, v42, v43 & 1);
            }

            sub_1D60107F0(v41, v42, v43);
            v24 = v38;
            v25 = v39;
            v26 = v40;
            goto LABEL_48;
          }

          v33 = v44;
          v32 = v45;
          v35 = v46;
          v34 = v47;
          sub_1D66A01E4(v44, v45, v46, v47, v53);
        }

        else
        {
          v70 = v49;
          v71 = v50;
          v72 = v51;
          v73 = v52;
          v74 = v48;
          if (v53 != 255)
          {
            v65 = v44;
            v66 = v45;
            v67 = v46;
            v68 = v47;
            v69 = v53 & 1;
            sub_1D66A01E4(v49, v50, v51, v52, v48);
            sub_1D66A01E4(v44, v45, v46, v47, v53);
            sub_1D66A01E4(v49, v50, v51, v52, v48);
            v27 = _s8NewsFeed25FormatMediaTimingFunctionO2eeoiySbAC_ACtFZ_0(&v70, &v65);
            sub_1D618909C(v65, v66, v67, v68, v69);
            sub_1D618909C(v70, v71, v72, v73, v74);
            sub_1D62B4B50(v49, v50, v51, v52, v48);
            if ((v27 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_61;
          }

          sub_1D66A01E4(v49, v50, v51, v52, v48);
          v33 = v44;
          v32 = v45;
          v35 = v46;
          v34 = v47;
          sub_1D66A01E4(v44, v45, v46, v47, 255);
          sub_1D66A01E4(v49, v50, v51, v52, v48);
          v28 = v49;
          v29 = v50;
          v30 = v51;
          v31 = v52;
          sub_1D618909C(v49, v50, v51, v52, v48 & 1);
        }

        sub_1D62B4B50(v28, v29, v30, v31, v48);
        sub_1D62B4B50(v33, v32, v35, v34, v53);
        return 0;
      }

      v22 = v56;
      v23 = v55;
      v19 = v54;
      sub_1D6189668(v55, v56, v54);
      v21 = v58;
      v20 = v59;
      sub_1D6189668(v58, v59, 255);
      sub_1D6189668(v55, v56, v54);
      sub_1D5D2F2C4(v55, v56, v54 & 1);
    }

    sub_1D60107F0(v23, v22, v19);
    v24 = v21;
    v25 = v20;
    v26 = v17;
LABEL_48:
    sub_1D60107F0(v24, v25, v26);
    return 0;
  }

  if (!v60)
  {

    goto LABEL_40;
  }

  return 0;
}

unint64_t sub_1D6814414(uint64_t a1)
{
  result = sub_1D681443C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D681443C()
{
  result = qword_1EC88C540;
  if (!qword_1EC88C540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C540);
  }

  return result;
}

unint64_t sub_1D6814490(void *a1)
{
  a1[1] = sub_1D66A0918();
  a1[2] = sub_1D6662A38();
  result = sub_1D68144C8();
  a1[3] = result;
  return result;
}

unint64_t sub_1D68144C8()
{
  result = qword_1EC88C548[0];
  if (!qword_1EC88C548[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC88C548);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed25FormatMediaTimingFunctionOSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy137_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1D6814564(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 137))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1D68145C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 137) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 137) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_1D6814648(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 112);
  v107[6] = *(a1 + 96);
  v107[7] = v3;
  v107[8] = *(a1 + 128);
  v108 = *(a1 + 144);
  v4 = *(a1 + 48);
  v107[2] = *(a1 + 32);
  v107[3] = v4;
  v5 = *(a1 + 80);
  v107[4] = *(a1 + 64);
  v107[5] = v5;
  v6 = *(a1 + 16);
  v107[0] = *a1;
  v107[1] = v6;
  v7 = a2[7];
  v115 = a2[6];
  v116[0] = v7;
  *(v116 + 9) = *(a2 + 121);
  v8 = a2[3];
  v111 = a2[2];
  v112 = v8;
  v9 = a2[4];
  v114 = a2[5];
  v113 = v9;
  v10 = *a2;
  v110 = a2[1];
  v109 = v10;
  v11 = MEMORY[0x1E69E6F90];
  sub_1D5B56088(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1D7273AE0;
  sub_1D5B56088(0, &qword_1EC880490, sub_1D5EA74B8, v11);
  sub_1D5EA74B8();
  v13 = *(*(v12 - 8) + 72);
  v14 = (*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D7279790;
  v47 = v15;
  v16 = (v15 + v14);
  v17 = a2[7];
  v117[6] = a2[6];
  v118[0] = v17;
  *(v118 + 9) = *(a2 + 121);
  v18 = a2[3];
  v117[2] = a2[2];
  v117[3] = v18;
  v19 = a2[5];
  v117[4] = a2[4];
  v117[5] = v19;
  v20 = a2[1];
  v117[0] = *a2;
  v117[1] = v20;
  v21 = 0;
  if (sub_1D60486AC(v117) != 1)
  {
    v21 = *&v117[0];
  }

  sub_1D711B070(0x6E6F697461727544, 0xE800000000000000, v21, v16);
  v22 = type metadata accessor for FormatInspectionItem(0);
  v23 = *(*(v22 - 8) + 56);
  v23(v16, 0, 1, v22);
  v103[6] = v115;
  v104[0] = v116[0];
  *(v104 + 9) = *(v116 + 9);
  v103[2] = v111;
  v103[3] = v112;
  v103[5] = v114;
  v103[4] = v113;
  v103[1] = v110;
  v103[0] = v109;
  v24 = 0;
  if (sub_1D60486AC(v103) != 1)
  {
    v24 = *(&v103[0] + 1);
  }

  sub_1D711B070(0x6465657053, 0xE500000000000000, v24, &v16[v13]);
  v23(&v16[v13], 0, 1, v22);
  v101 = v115;
  v102[0] = v116[0];
  *(v102 + 9) = *(v116 + 9);
  v97 = v111;
  v98 = v112;
  v100 = v114;
  v99 = v113;
  v96 = v110;
  v95 = v109;
  if (sub_1D60486AC(&v95) == 1)
  {
    v25 = 0;
  }

  else
  {
    v25 = v96;
  }

  sub_1D711B070(0x6954206E69676542, 0xEA0000000000656DLL, v25, &v16[2 * v13]);
  v23(&v16[2 * v13], 0, 1, v22);
  v93 = v115;
  v94[0] = v116[0];
  *(v94 + 9) = *(v116 + 9);
  v89 = v111;
  v90 = v112;
  v91 = v113;
  v92 = v114;
  v87 = v109;
  v88 = v110;
  if (sub_1D60486AC(&v87) == 1)
  {
    v26 = 0;
  }

  else
  {
    v26 = *(&v88 + 1);
  }

  sub_1D711B070(0x66664F20656D6954, 0xEB00000000746573, v26, &v16[3 * v13]);
  v23(&v16[3 * v13], 0, 1, v22);
  v85 = v115;
  v86[0] = v116[0];
  *(v86 + 9) = *(v116 + 9);
  v81 = v111;
  v82 = v112;
  v83 = v113;
  v84 = v114;
  v80[0] = v109;
  v80[1] = v110;
  if (sub_1D60486AC(v80) == 1)
  {
    v27 = 4;
  }

  else
  {
    v27 = v81;
  }

  sub_1D71234A4(0x646F4D206C6C6946, 0xE900000000000065, v27, &v16[4 * v13]);
  v23(&v16[4 * v13], 0, 1, v22);
  v78 = v115;
  v79[0] = v116[0];
  *(v79 + 9) = *(v116 + 9);
  v74 = v111;
  v75 = v112;
  v76 = v113;
  v77 = v114;
  v73[0] = v109;
  v73[1] = v110;
  if (sub_1D60486AC(v73) == 1)
  {
    v28 = 0;
  }

  else
  {
    v28 = *(&v74 + 1);
  }

  sub_1D711B070(0x4320746165706552, 0xEC000000746E756FLL, v28, &v16[5 * v13]);
  v23(&v16[5 * v13], 0, 1, v22);
  v71 = v115;
  v72[0] = v116[0];
  *(v72 + 9) = *(v116 + 9);
  v67[2] = v111;
  v68 = v112;
  v69 = v113;
  v70 = v114;
  v67[0] = v109;
  v67[1] = v110;
  if (sub_1D60486AC(v67) == 1)
  {
    v29 = 0;
  }

  else
  {
    v29 = v68;
  }

  sub_1D711B070(0x4420746165706552, 0xEF6E6F6974617275, v29, &v16[6 * v13]);
  v23(&v16[6 * v13], 0, 1, v22);
  v65 = v115;
  v66[0] = v116[0];
  *(v66 + 9) = *(v116 + 9);
  v61[2] = v111;
  v62 = v112;
  v63 = v113;
  v64 = v114;
  v61[0] = v109;
  v61[1] = v110;
  if (sub_1D60486AC(v61) == 1)
  {
    v30 = 0;
    v31 = 0;
    v32 = -1;
  }

  else
  {
    v30 = *(&v62 + 1);
    v31 = v63;
    v32 = BYTE8(v63);
    sub_1D6189668(*(&v62 + 1), v63, SBYTE8(v63));
  }

  sub_1D71237B4(0x657665726F747541, 0xEC00000073657372, v30, v31, v32, &v16[8 * v13 - v13]);
  v23(&v16[8 * v13 - v13], 0, 1, v22);
  v59 = v115;
  *v60 = v116[0];
  *&v60[9] = *(v116 + 9);
  v57[2] = v111;
  v57[3] = v112;
  v57[4] = v113;
  v58 = v114;
  v57[0] = v109;
  v57[1] = v110;
  if (sub_1D60486AC(v57) == 1)
  {
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = -1;
  }

  else
  {
    v34 = *(&v58 + 1);
    v33 = v58;
    v36 = *(&v59 + 1);
    v35 = v59;
    v37 = v60[0];
    sub_1D66A01E4(v58, *(&v58 + 1), v59, *(&v59 + 1), v60[0]);
  }

  *&v49 = v33;
  *(&v49 + 1) = v34;
  *&v50 = v35;
  *(&v50 + 1) = v36;
  LOBYTE(v51) = v37;
  v38 = sub_1D6188A58(v107, &v49);
  sub_1D62B4B50(v49, *(&v49 + 1), v50, *(&v50 + 1), v51);
  sub_1D7120960(0x4620676E696D6954, 0xEF6E6F6974636E75, v38, &v16[8 * v13]);
  v23(&v16[8 * v13], 0, 1, v22);
  v55 = v115;
  *v56 = v116[0];
  *&v56[9] = *(v116 + 9);
  v51 = v111;
  v52 = v112;
  v53 = v113;
  v54 = v114;
  v49 = v109;
  v50 = v110;
  if (sub_1D60486AC(&v49) == 1)
  {
    v39 = 0;
    v40 = 0;
    v41 = -1;
  }

  else
  {
    v39 = *&v56[8];
    v40 = *&v56[16];
    v41 = v56[24];
    sub_1D6189668(*&v56[8], *&v56[16], v56[24]);
  }

  v42 = 9 * v13;
  sub_1D71237B4(0xD000000000000014, 0x80000001D73D6EC0, v39, v40, v41, &v16[v42]);
  v23(&v16[v42], 0, 1, v22);
  sub_1D6795150(0x695420616964654DLL, 0xEC000000676E696DLL, 0, 0, v47, v105);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v48 + 56) = &type metadata for FormatInspectionGroup;
  *(v48 + 64) = &off_1F518B2C0;
  v43 = swift_allocObject();
  *(v48 + 32) = v43;
  v44 = v105[1];
  *(v43 + 16) = v105[0];
  *(v43 + 32) = v44;
  *(v43 + 48) = v106;
  v45 = sub_1D7073500(v48);
  swift_setDeallocating();
  sub_1D5F10AA0(v48 + 32);
  swift_deallocClassInstance();
  return v45;
}

uint64_t FeedItemFilterResultJournal.init(title:initialCount:entries:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t FeedItemFilterResultJournal.title.getter()
{
  v0 = sub_1D5F90834();

  return v0;
}

uint64_t FeedItemFilterResultJournal.remainingCount.getter()
{
  v1 = *(v0 + 16);
  type metadata accessor for FeedItemFilterResultEntry();
  v2 = sub_1D726279C();
  v3 = __OFSUB__(v1, v2);
  result = v1 - v2;
  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t FeedItemFilterResultJournal.removedCount.getter()
{
  type metadata accessor for FeedItemFilterResultEntry();

  return sub_1D726279C();
}

uint64_t sub_1D68150F4(uint64_t a1)
{
  v9[5] = *(v1 + 24);
  v2 = *(a1 + 24);
  v9[2] = *(a1 + 16);
  v9[3] = v2;
  type metadata accessor for FeedItemFilterResultEntry();
  v3 = sub_1D72627FC();
  v4 = type metadata accessor for DebugJournalGroupItem();

  WitnessTable = swift_getWitnessTable();
  v7 = sub_1D5B874E4(sub_1D6815308, v9, v3, v4, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v6);

  return v7;
}

uint64_t sub_1D68151C8@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for FeedItemFilterResultEntry();
  v3 = sub_1D6AB7E9C(v2);
  v5 = 757935405;
  if (v4)
  {
    v5 = v3;
  }

  v6 = 0xE400000000000000;
  if (v4)
  {
    v6 = v4;
  }

  *a1 = v5;
  a1[1] = v6;
  v7 = sub_1D6AB804C(v2, v4);
  v8 = MEMORY[0x1E69E61C8];
  a1[5] = MEMORY[0x1E69E6158];
  a1[6] = v8;
  a1[2] = v7;
  a1[3] = v9;
  type metadata accessor for DebugJournalGroupItem();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D68152B4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

id SharingPuzzleURLActivityItemSource.__allocating_init(puzzle:linkPresentationSource:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_1D6815A84(a1, a2);
  swift_unknownObjectRelease();
  return v6;
}

id SharingPuzzleURLActivityItemSource.init(puzzle:linkPresentationSource:)(void *a1, uint64_t a2)
{
  v2 = sub_1D6815A84(a1, a2);
  swift_unknownObjectRelease();
  return v2;
}

id SharingPuzzleURLActivityItemSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SharingPuzzleURLActivityItemSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

_OWORD *SharingPuzzleURLActivityItemSource.activityViewControllerPlaceholderItem(_:)@<X0>(uint64_t a1@<X8>)
{
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5EB84C0(v1 + OBJC_IVAR____TtC8NewsFeed34SharingPuzzleURLActivityItemSource_puzzleURL, v6);
  v7 = sub_1D72585BC();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    result = sub_1D5E3E404(v6);
    *(a1 + 24) = MEMORY[0x1E69E6158];
    *a1 = 0;
    *(a1 + 8) = 0xE000000000000000;
  }

  else
  {
    v12 = v7;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
    (*(v8 + 32))(boxed_opaque_existential_1, v6, v7);
    return sub_1D5B7C390(v11, a1);
  }

  return result;
}

uint64_t SharingPuzzleURLActivityItemSource.activityViewController(_:itemForActivityType:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = sub_1D726207C();
    v11 = v10;
    if (v9 == sub_1D726207C() && v11 == v12)
    {

      goto LABEL_10;
    }

    v14 = sub_1D72646CC();

    if (v14)
    {
LABEL_10:
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }
  }

  sub_1D5EB84C0(v2 + OBJC_IVAR____TtC8NewsFeed34SharingPuzzleURLActivityItemSource_puzzleURL, v8);
  v16 = sub_1D72585BC();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v8, 1, v16) == 1)
  {
    result = sub_1D5E3E404(v8);
    goto LABEL_10;
  }

  *(a2 + 24) = v16;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return (*(v17 + 32))(boxed_opaque_existential_1, v8, v16);
}

LPLinkMetadata_optional __swiftcall SharingPuzzleURLActivityItemSource.activityViewControllerLinkMetadata(_:)(UIActivityViewController *a1)
{
  if (*(v1 + OBJC_IVAR____TtC8NewsFeed34SharingPuzzleURLActivityItemSource_linkPresentationSource))
  {
    sub_1D725B77C();
    v2 = [v5 linkMetadata];
    swift_unknownObjectRelease();
  }

  else
  {
    v2 = 0;
  }

  v4 = v2;
  result.value.super.isa = v4;
  result.is_nil = v3;
  return result;
}

id sub_1D6815A84(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  sub_1D5B4D3E0();
  *&v8 = MEMORY[0x1EEE9AC00](v6 - 8, v7).n128_u64[0];
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 identifier];
  if (!v11)
  {
    sub_1D726207C();
    v11 = sub_1D726203C();
  }

  v12 = [objc_opt_self() nss:v11 NewsURLForPuzzleID:?];

  if (v12)
  {
    sub_1D72584EC();

    v13 = sub_1D72585BC();
    (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
  }

  else
  {
    v14 = sub_1D72585BC();
    (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  }

  sub_1D5EB8540(v10, &v2[OBJC_IVAR____TtC8NewsFeed34SharingPuzzleURLActivityItemSource_puzzleURL]);
  *&v2[OBJC_IVAR____TtC8NewsFeed34SharingPuzzleURLActivityItemSource_linkPresentationSource] = a2;
  v16.receiver = v2;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, sel_init);
}

uint64_t type metadata accessor for SharingPuzzleURLActivityItemSource()
{
  result = qword_1EC88C5F0;
  if (!qword_1EC88C5F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6815C84()
{
  sub_1D5B4D3E0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1D6815D58()
{
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](0);
  FormatTagBinding.Asset.rawValue.getter();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6815DCC()
{
  MEMORY[0x1DA6FC0B0](0);
  FormatTagBinding.Asset.rawValue.getter();
  sub_1D72621EC();
}

uint64_t sub_1D6815E44()
{
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](0);
  FormatTagBinding.Asset.rawValue.getter();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6815EB4()
{
  v0 = FormatTagBinding.Asset.rawValue.getter();
  v2 = v1;
  if (v0 == FormatTagBinding.Asset.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D72646CC();
  }

  return v5 & 1;
}

unint64_t sub_1D6815F54()
{
  result = qword_1EDF29D08;
  if (!qword_1EDF29D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29D08);
  }

  return result;
}

NewsFeed::FeedScoredTag __swiftcall FeedScoredTag.init(tagID:score:)(Swift::String tagID, Swift::Double score)
{
  *v2 = tagID;
  *(v2 + 16) = score;
  result.tagID = tagID;
  result.score = score;
  return result;
}