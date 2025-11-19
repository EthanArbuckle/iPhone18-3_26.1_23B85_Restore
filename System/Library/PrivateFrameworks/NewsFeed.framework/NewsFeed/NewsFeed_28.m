uint64_t sub_1D5DE952C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 112);
}

uint64_t sub_1D5DE957C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DE95DC()
{

  sub_1D5EB15C4(*(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_1D5DE9634()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DE9674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D68FF5FC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_1D68FF7DC();
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1D5DE9764(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1D68FF5FC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_1D68FF7DC();
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_1D5DE9868()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DE998C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D72585BC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D5DE9A38(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D72585BC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5DE9B24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D72573DC();
  *a1 = result;
  return result;
}

uint64_t sub_1D5DE9C10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D72573DC();
  *a1 = result;
  return result;
}

uint64_t sub_1D5DE9C3C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D72573DC();
  *a1 = result;
  return result;
}

uint64_t sub_1D5DE9CDC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D72573DC();
  *a1 = result;
  return result;
}

uint64_t sub_1D5DE9D34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D72573DC();
  *a1 = result;
  return result;
}

uint64_t sub_1D5DE9D8C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DE9DC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsDataVisualizationResponseEventStatus(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D5DE9E30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsDataVisualizationResponseEventStatus(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D5DE9EA0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for GroupLayoutContext();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1D5DE9F4C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GroupLayoutContext();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5DEA000()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DEA040()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DEA09C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1D5DEA0A8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  return result;
}

uint64_t sub_1D5DEA0F8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 32) = v3;
  return result;
}

uint64_t sub_1D5DEA210(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

unint64_t sub_1D5DEA234(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

void sub_1D5DEA2E0(void *a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t getEnumTagSinglePayload for FeedItemTraits(uint64_t a1, int a2)
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

uint64_t sub_1D5DEA380(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed0B5IssueV9OverridesVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
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

uint64_t sub_1D5DEA3F4(char a1)
{
  if (a1)
  {
    return 1635017060;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1D5DEA420@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = v2;
  a1[1] = v3;
  return sub_1D5BF2DDC(v2, v3);
}

uint64_t sub_1D5DEA42C()
{
  v1 = *(v0 + 40);

  return v1;
}

void *sub_1D5DEA484@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_1D5DEA490(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 57))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D5DEA510(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D5DEA520(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

char *sub_1D5DEDBE8(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadDiffStatusView_onTargetTap;
  sub_1D5DF2B44(0, &qword_1EDF3B450, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D8770]);
  *&v1[v4] = [objc_allocWithZone(v5) init];
  v6 = OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadDiffStatusView_targetButton;
  *&v1[v6] = [objc_opt_self() buttonWithType_];
  *&v1[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadDiffStatusView_maxWidth] = 0;
  v7 = OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadDiffStatusView_statusLabel;
  *&v1[v7] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v8 = OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadDiffStatusView_progressView;
  *&v1[v8] = [objc_allocWithZone(MEMORY[0x1E69DCE48]) initWithFrame_];
  *&v1[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadDiffStatusView_editor] = a1;
  v41.receiver = v1;
  v41.super_class = ObjectType;

  v9 = objc_msgSendSuper2(&v41, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v10 = sub_1D7261A3C();
  v11 = objc_opt_self();
  v12 = &selRef_tertiarySystemBackgroundColor;
  if (v10)
  {
    v12 = &selRef_clearColor;
  }

  v13 = [v11 *v12];
  [v9 setBackgroundColor_];

  [v9 setClipsToBounds_];
  v14 = [v9 layer];

  v15 = sub_1D7261A3C();
  v16 = 4.0;
  if (v15)
  {
    v16 = 0.0;
  }

  [v14 setCornerRadius_];

  v17 = OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadDiffStatusView_statusLabel;
  v18 = *&v9[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadDiffStatusView_statusLabel];
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 secondaryLabelColor];
  [v20 setTextColor_];

  v22 = *&v9[v17];
  v23 = objc_opt_self();
  v24 = v22;
  v25 = [v23 systemFontOfSize_];
  [v24 setFont_];

  [v9 addSubview_];
  v26 = OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadDiffStatusView_targetButton;
  v27 = *&v9[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadDiffStatusView_targetButton];
  v28 = [v19 secondaryLabelColor];
  [v27 setTintColor_];

  v29 = *&v9[v26];
  v30 = sub_1D726203C();
  v31 = [objc_opt_self() systemImageNamed_];

  [v29 setImage:v31 forState:0];
  [*&v9[v26] setPointerInteractionEnabled_];
  [v9 addSubview_];
  v32 = *&v9[v26];
  v33 = *&v9[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadDiffStatusView_onTargetTap];
  v34 = v32;
  sub_1D725F67C();

  v35 = OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadDiffStatusView_progressView;
  [*&v9[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadDiffStatusView_progressView] setProgress_];
  v36 = *&v9[v35];
  v37 = [v19 systemBlueColor];
  [v36 setProgressTintColor_];

  v38 = *&v9[v35];
  v39 = [v19 clearColor];
  [v38 setTrackTintColor_];

  [v9 addSubview_];

  sub_1D725B33C();

  sub_1D725B2EC();

  sub_1D725974C();

  sub_1D725971C();

  sub_1D725974C();

  sub_1D725971C();

  sub_1D725B33C();

  sub_1D725B2EC();

  sub_1D725B33C();

  sub_1D725B2EC();

  return v9;
}

void sub_1D5DEE260()
{
  v1 = sub_1D72580BC();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  sub_1D5B5A498(0, &qword_1EDF1A7E0);
  sub_1D7257F4C();
  v3 = sub_1D726310C();
  v41 = v0;

  sub_1D725972C();

  if (v43)
  {
    v39 = v3;

    sub_1D725972C();

    sub_1D726213C();

    sub_1D5DF2108(0, &qword_1EDF194E0, sub_1D5C09DD4, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    v5 = MEMORY[0x1E69DB648];
    *(inited + 16) = xmmword_1D7270C10;
    v6 = *v5;
    *(inited + 32) = *v5;
    v38 = objc_opt_self();
    v7 = *MEMORY[0x1E69DB950];
    v42 = v6;
    v8 = [v38 systemFontOfSize:11.0 weight:v7];
    v37 = sub_1D5B5A498(0, &qword_1EDF1A720);
    *(inited + 40) = v8;
    v9 = *MEMORY[0x1E69DB650];
    *(inited + 64) = v37;
    *(inited + 72) = v9;
    v36 = objc_opt_self();
    v10 = v9;
    v11 = [v36 systemBlueColor];
    v12 = sub_1D5B5A498(0, qword_1EDF1A6A0);
    *(inited + 104) = v12;
    *(inited + 80) = v11;
    sub_1D5C09CEC(inited);
    swift_setDeallocating();
    sub_1D5C09DD4();
    swift_arrayDestroy();
    v13 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v14 = sub_1D726203C();

    type metadata accessor for Key(0);
    sub_1D5DEF54C(&qword_1EDF1A8E0, type metadata accessor for Key);
    v15 = sub_1D7261D2C();

    v16 = [v13 initWithString:v14 attributes:v15];

    v3 = v39;
    [v39 appendAttributedString_];

    v17 = swift_initStackObject();
    *(v17 + 16) = xmmword_1D7270C10;
    *(v17 + 32) = v42;
    *(v17 + 40) = [v38 systemFontOfSize_];
    *(v17 + 64) = v37;
    *(v17 + 72) = v10;
    v40 = v10;
    v18 = [v36 secondaryLabelColor];
    *(v17 + 104) = v12;
    *(v17 + 80) = v18;
    sub_1D5C09CEC(v17);
    swift_setDeallocating();
    swift_arrayDestroy();
    v19 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v20 = sub_1D726203C();
    v21 = &off_1D7270000;
    v22 = sub_1D7261D2C();

    v23 = [v19 initWithString:v20 attributes:v22];

    [v39 appendAttributedString_];
  }

  else
  {
    v42 = *MEMORY[0x1E69DB648];
    v40 = *MEMORY[0x1E69DB650];
    v21 = &off_1D7270000;
  }

  sub_1D725B31C();

  sub_1D5DF2108(0, &qword_1EDF194E0, sub_1D5C09DD4, MEMORY[0x1E69E6F90]);
  v24 = swift_initStackObject();
  *(v24 + 16) = *(v21 + 193);
  *(v24 + 32) = v42;
  v25 = objc_opt_self();
  v26 = v42;
  v27 = [v25 systemFontOfSize_];
  v28 = sub_1D5B5A498(0, &qword_1EDF1A720);
  *(v24 + 40) = v27;
  *(v24 + 64) = v28;
  *(v24 + 72) = v40;
  v29 = objc_opt_self();
  v30 = v40;
  v31 = [v29 secondaryLabelColor];
  *(v24 + 104) = sub_1D5B5A498(0, qword_1EDF1A6A0);
  *(v24 + 80) = v31;
  sub_1D5C09CEC(v24);
  swift_setDeallocating();
  sub_1D5C09DD4();
  swift_arrayDestroy();
  v32 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v33 = sub_1D726203C();

  type metadata accessor for Key(0);
  sub_1D5DEF54C(&qword_1EDF1A8E0, type metadata accessor for Key);
  v34 = sub_1D7261D2C();

  v35 = [v32 initWithString:v33 attributes:v34];

  [v3 appendAttributedString_];
  [*(v41 + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadDiffStatusView_statusLabel) setAttributedText_];
}

id sub_1D5DEEA0C()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadDiffStatusView_targetButton];
  [v0 bounds];
  Height = CGRectGetHeight(v17);
  [v0 bounds];
  [v1 setFrame_];
  v3 = *&v0[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadDiffStatusView_statusLabel];
  [v0 bounds];
  [v0 bounds];
  CGRectGetHeight(v19);
  sub_1D72632AC();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v0 bounds];
  v12 = CGRectGetHeight(v20);
  [v3 setFrame_];
  v13 = *&v0[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadDiffStatusView_progressView];
  [v0 bounds];
  v14 = CGRectGetHeight(v21) + -3.0;
  [v0 bounds];
  return [v13 setFrame_];
}

id _s8NewsFeed21VideoLogoBackdropViewCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D5DEED18@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1D5DEED70@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1D726193C();
  v2 = *MEMORY[0x1E697C8C0];
  v3 = sub_1D726147C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1D5DEEDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 != 4)
  {
    MEMORY[0x1DA6F8CC0](a5);
  }

  return sub_1D726175C();
}

void sub_1D5DEEEB4()
{
  if (!qword_1EC87E020)
  {
    sub_1D5DEEF68();
    sub_1D5DEF54C(&qword_1EC87E0B8, sub_1D5DEEF68);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC87E020);
    }
  }
}

void sub_1D5DEEF68()
{
  if (!qword_1EC87E028)
  {
    sub_1D5DF2108(255, &qword_1EC87E030, sub_1D5DEF01C, MEMORY[0x1E6981F40]);
    sub_1D5DEF4E8(&qword_1EC87E0B0, &qword_1EC87E030, sub_1D5DEF01C);
    v0 = sub_1D726197C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC87E028);
    }
  }
}

void sub_1D5DEF01C()
{
  if (!qword_1EC87E038)
  {
    sub_1D5DEF1F8(255, &qword_1EC87E040, sub_1D5DEF100);
    sub_1D5DEF17C();
    sub_1D5DEF25C();
    sub_1D5DF2B44(255, &qword_1EC87E098, MEMORY[0x1E6981148], MEMORY[0x1E69E6720]);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EC87E038);
    }
  }
}

void sub_1D5DEF100()
{
  if (!qword_1EC87E048)
  {
    sub_1D5DF2B44(255, &qword_1EC87E050, MEMORY[0x1E69815C0], MEMORY[0x1E69E6720]);
    v0 = sub_1D726157C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC87E048);
    }
  }
}

void sub_1D5DEF17C()
{
  if (!qword_1EC87E058)
  {
    sub_1D5DEF1F8(255, &qword_1EC87E060, sub_1D5DEF100);
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC87E058);
    }
  }
}

void sub_1D5DEF1F8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726101C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5DEF25C()
{
  if (!qword_1EC87E068)
  {
    sub_1D5DF2108(255, &qword_1EC87E070, sub_1D5DEF310, MEMORY[0x1E6981F40]);
    sub_1D5DEF4E8(&qword_1EC87E0A8, &qword_1EC87E070, sub_1D5DEF310);
    v0 = sub_1D726198C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC87E068);
    }
  }
}

void sub_1D5DEF310()
{
  if (!qword_1EC87E078)
  {
    sub_1D5DEF3A8();
    sub_1D5DF2B44(255, &qword_1EC87E098, MEMORY[0x1E6981148], MEMORY[0x1E69E6720]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC87E078);
    }
  }
}

void sub_1D5DEF3A8()
{
  if (!qword_1EC87E080)
  {
    sub_1D5DF2108(255, &qword_1EC87E088, sub_1D5DEF45C, MEMORY[0x1E6981F40]);
    sub_1D5DEF4E8(&qword_1EC87E0A0, &qword_1EC87E088, sub_1D5DEF45C);
    v0 = sub_1D726197C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC87E080);
    }
  }
}

void sub_1D5DEF45C()
{
  if (!qword_1EC87E090)
  {
    sub_1D5DF2B44(255, &qword_1EC87E098, MEMORY[0x1E6981148], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC87E090);
    }
  }
}

uint64_t sub_1D5DEF4E8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D5DF2108(255, a2, a3, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5DEF54C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D5DEF5D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1D5DEF63C()
{
  if (!qword_1EC87E0D0)
  {
    sub_1D7260F7C();
    sub_1D5DEF74C();
    sub_1D5DEF82C();
    sub_1D5DEF1F8(255, &qword_1EC87E0E8, sub_1D5DEF8D4);
    sub_1D5DEF92C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v0 = sub_1D726103C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC87E0D0);
    }
  }
}

void sub_1D5DEF74C()
{
  if (!qword_1EC87E0D8)
  {
    sub_1D5DEF82C();
    sub_1D5DEF1F8(255, &qword_1EC87E0E8, sub_1D5DEF8D4);
    sub_1D5DEF92C();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC87E0D8);
    }
  }
}

void sub_1D5DEF82C()
{
  if (!qword_1EC87E0E0)
  {
    sub_1D5DEF1F8(255, &qword_1EC87E0E8, sub_1D5DEF8D4);
    sub_1D5DEF92C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC87E0E0);
    }
  }
}

void sub_1D5DEF8D4()
{
  if (!qword_1EC87E0F0)
  {
    v0 = sub_1D726149C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC87E0F0);
    }
  }
}

unint64_t sub_1D5DEF92C()
{
  result = qword_1EC87E0F8;
  if (!qword_1EC87E0F8)
  {
    sub_1D5DEF1F8(255, &qword_1EC87E0E8, sub_1D5DEF8D4);
    sub_1D5DEFA00();
    sub_1D5DEF54C(&qword_1EC87E108, sub_1D5DEF8D4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87E0F8);
  }

  return result;
}

unint64_t sub_1D5DEFA00()
{
  result = qword_1EC87E100;
  if (!qword_1EC87E100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87E100);
  }

  return result;
}

unint64_t sub_1D5DEFA54()
{
  result = qword_1EC87E110;
  if (!qword_1EC87E110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87E110);
  }

  return result;
}

unint64_t sub_1D5DEFAA8()
{
  result = qword_1EC87E118;
  if (!qword_1EC87E118)
  {
    sub_1D5DEF5D0(255, &qword_1EC87E0C0, sub_1D5DEF594, &type metadata for DebugFormatInspectorView, MEMORY[0x1E697F960]);
    sub_1D5DEFB60();
    sub_1D5DEFC10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87E118);
  }

  return result;
}

unint64_t sub_1D5DEFB60()
{
  result = qword_1EC87E120;
  if (!qword_1EC87E120)
  {
    sub_1D5DEF594(255);
    sub_1D5DEF54C(&qword_1EC87E128, sub_1D5DEF63C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87E120);
  }

  return result;
}

unint64_t sub_1D5DEFC10()
{
  result = qword_1EC87E130;
  if (!qword_1EC87E130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87E130);
  }

  return result;
}

uint64_t sub_1D5DEFDA0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D5DEFDC0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

uint64_t sub_1D5DF0258@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  v6 = *v2 & *a1;
  result = sub_1D7262E4C();
  if (result)
  {
    v6 = 0;
  }

  else
  {
    *v2 = v5 & ~v4;
  }

  *a2 = v6;
  *(a2 + 8) = result & 1;
  return result;
}

uint64_t sub_1D5DF02BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2 & *a1;
  *v2 |= *a1;
  result = sub_1D7262E4C();
  if (result)
  {
    v6 = 0;
  }

  else
  {
    v6 = v4;
  }

  *a2 = v6;
  *(a2 + 8) = result & 1;
  return result;
}

uint64_t sub_1D5DF0328(uint64_t a1, id *a2)
{
  result = sub_1D726205C();
  *a2 = 0;
  return result;
}

uint64_t sub_1D5DF03A0(uint64_t a1, id *a2)
{
  v3 = sub_1D726206C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1D5DF0420@<X0>(uint64_t *a1@<X8>)
{
  sub_1D726207C();
  v2 = sub_1D726203C();

  *a1 = v2;
  return result;
}

uint64_t sub_1D5DF0464()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

uint64_t sub_1D5DF04AC()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

uint64_t sub_1D5DF0610(uint64_t a1)
{
  v2 = sub_1D5DEF54C(&qword_1EDF1A8E0, type metadata accessor for Key);
  v3 = sub_1D5DEF54C(&qword_1EC87F008, type metadata accessor for Key);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D5DF06CC(uint64_t a1)
{
  v2 = sub_1D5DEF54C(&qword_1EC87F210, type metadata accessor for CALayerCornerCurve);
  v3 = sub_1D5DEF54C(&qword_1EC87F218, type metadata accessor for CALayerCornerCurve);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D5DF0788(uint64_t a1)
{
  v2 = sub_1D5DEF54C(&qword_1EC87F010, type metadata accessor for UIContentSizeCategory);
  v3 = sub_1D5DEF54C(&qword_1EC87F018, type metadata accessor for UIContentSizeCategory);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D5DF0844(uint64_t a1)
{
  v2 = sub_1D5DEF54C(&qword_1EC87EFE0, type metadata accessor for FCOperationPurpose);
  v3 = sub_1D5DEF54C(&qword_1EC87EFE8, type metadata accessor for FCOperationPurpose);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D5DF0900(uint64_t a1)
{
  v2 = sub_1D5DEF54C(&qword_1EC87F240, type metadata accessor for TextStyle);
  v3 = sub_1D5DEF54C(&qword_1EC87F248, type metadata accessor for TextStyle);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D5DF09BC(uint64_t a1)
{
  v2 = sub_1D5DEF54C(&qword_1EC87EFF0, type metadata accessor for ActivityType);
  v3 = sub_1D5DEF54C(&unk_1EC87EFF8, type metadata accessor for ActivityType);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D5DF0A78(uint64_t a1)
{
  v2 = sub_1D5DEF54C(&qword_1EC87F1D0, type metadata accessor for Name);
  v3 = sub_1D5DEF54C(&qword_1EC87F1D8, type metadata accessor for Name);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D5DF0B34(uint64_t a1)
{
  v2 = sub_1D5DEF54C(&qword_1EC87EFC0, type metadata accessor for CAShapeLayerLineCap);
  v3 = sub_1D5DEF54C(&qword_1EC87EFC8, type metadata accessor for CAShapeLayerLineCap);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D5DF0BF0(uint64_t a1)
{
  v2 = sub_1D5DEF54C(&qword_1EDF1A790, type metadata accessor for AttributeName);
  v3 = sub_1D5DEF54C(&qword_1EC87F038, type metadata accessor for AttributeName);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D5DF0D3C(uint64_t a1)
{
  v2 = sub_1D5DEF54C(&qword_1EC87F020, type metadata accessor for SystemDesign);
  v3 = sub_1D5DEF54C(&unk_1EC87F028, type metadata accessor for SystemDesign);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D5DF0E88(uint64_t a1)
{
  v2 = sub_1D5DEF54C(&qword_1EC87F200, type metadata accessor for Identifier);
  v3 = sub_1D5DEF54C(&qword_1EC87F208, type metadata accessor for Identifier);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D5DF0F44(uint64_t a1)
{
  v2 = sub_1D5DEF54C(&qword_1EC87F1F0, type metadata accessor for OpenExternalURLOptionsKey);
  v3 = sub_1D5DEF54C(&qword_1EC87F1F8, type metadata accessor for OpenExternalURLOptionsKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D5DF1000(uint64_t a1)
{
  v2 = sub_1D5DEF54C(&qword_1EC87EFB0, type metadata accessor for AVLayerVideoGravity);
  v3 = sub_1D5DEF54C(&qword_1EC87EFB8, type metadata accessor for AVLayerVideoGravity);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D5DF10BC(uint64_t a1)
{
  v2 = sub_1D5DEF54C(&qword_1EC87EFA0, type metadata accessor for CALayerContentsGravity);
  v3 = sub_1D5DEF54C(&qword_1EC87EFA8, type metadata accessor for CALayerContentsGravity);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D5DF1178(uint64_t a1)
{
  v2 = sub_1D5DEF54C(&qword_1EC87EFD0, type metadata accessor for CAMediaTimingFillMode);
  v3 = sub_1D5DEF54C(&qword_1EC87EFD8, type metadata accessor for CAMediaTimingFillMode);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D5DF1234(uint64_t a1)
{
  v2 = sub_1D5DEF54C(&qword_1EC87F1C0, type metadata accessor for OptionKey);
  v3 = sub_1D5DEF54C(&qword_1EC87F1C8, type metadata accessor for OptionKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D5DF12F0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1D726203C();

  *a1 = v2;
  return result;
}

uint64_t sub_1D5DF1338(uint64_t a1)
{
  v2 = sub_1D5DEF54C(&qword_1EC87F1E0, type metadata accessor for URLResourceKey);
  v3 = sub_1D5DEF54C(&qword_1EC87F1E8, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D5DF13F4()
{
  v0 = sub_1D726207C();
  v1 = MEMORY[0x1DA6F99C0](v0);

  return v1;
}

uint64_t sub_1D5DF1430()
{
  sub_1D726207C();
  sub_1D72621EC();
}

void sub_1D5DF1F7C()
{
  v1 = OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadDiffStatusView_onTargetTap;
  sub_1D5DF2B44(0, &qword_1EDF3B450, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D8770]);
  *(v0 + v1) = [objc_allocWithZone(v2) init];
  v3 = OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadDiffStatusView_targetButton;
  *(v0 + v3) = [objc_opt_self() buttonWithType_];
  *(v0 + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadDiffStatusView_maxWidth) = 0;
  v4 = OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadDiffStatusView_statusLabel;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v5 = OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadDiffStatusView_progressView;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x1E69DCE48]) initWithFrame_];
  sub_1D726402C();
  __break(1u);
}

uint64_t sub_1D5DF20D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

void sub_1D5DF2108(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
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
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_1D5DF229C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D5DF22BC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 128) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for FormatPercentage(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for FormatPercentage(uint64_t result, int a2, int a3)
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

void sub_1D5DF2B44(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t _s8NewsFeed16FormatFontMetricO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

uint64_t sub_1D5DF2D5C()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1D5DF2D94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D73BD6B0 == a2)
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

uint64_t sub_1D5DF2E84(uint64_t a1)
{
  v2 = sub_1D5DF3360();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5DF2EC0(uint64_t a1)
{
  v2 = sub_1D5DF3360();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5DF2EFC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  sub_1D5DF33B4(0, &qword_1EC87F560, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5DF3360();
  sub_1D7264B5C();
  v16 = 0;
  sub_1D72643FC();
  if (!v5)
  {
    v15 = 1;
    sub_1D726437C();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1D5DF307C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D5DF316C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1D5DF30CC(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1D72646CC(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (sub_1D72646CC() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1D5DF316C(void *a1)
{
  sub_1D5DF33B4(0, &qword_1EC87F550, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5DF3360();
  sub_1D7264B0C();
  if (!v1)
  {
    v13 = 0;
    v9 = sub_1D72642BC();
    v12 = 1;
    sub_1D726422C();
    (*(v5 + 8))(v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_1D5DF3360()
{
  result = qword_1EC87F558;
  if (!qword_1EC87F558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87F558);
  }

  return result;
}

void sub_1D5DF33B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5DF3360();
    v7 = a3(a1, &type metadata for FormatDerivedDataBundleImageReference.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D5DF342C()
{
  result = qword_1EC87F568;
  if (!qword_1EC87F568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87F568);
  }

  return result;
}

unint64_t sub_1D5DF3484()
{
  result = qword_1EC87F570;
  if (!qword_1EC87F570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87F570);
  }

  return result;
}

unint64_t sub_1D5DF34DC()
{
  result = qword_1EC87F578;
  if (!qword_1EC87F578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87F578);
  }

  return result;
}

uint64_t sub_1D5DF3530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5B7B268(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v61 - v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v61 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v61 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v61 - v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v61 - v27;
  *&v31 = MEMORY[0x1EEE9AC00](v29, v30).n128_u64[0];
  v33 = &v61 - v32;
  v34 = *v2;
  v35 = *(a1 + 40);
  if (v34 <= 1)
  {
    if (*v2)
    {
      v49 = [v35 displayDate];
      if (v49)
      {
        v50 = v49;
        sub_1D72588BC();

        v51 = sub_1D725891C();
        (*(*(v51 - 8) + 56))(v28, 0, 1, v51);
      }

      else
      {
        v59 = sub_1D725891C();
        (*(*(v59 - 8) + 56))(v28, 1, 1, v59);
      }

      v56 = v28;
    }

    else
    {
      v40 = [v35 publishDate];
      if (v40)
      {
        v41 = v40;
        sub_1D72588BC();

        v42 = sub_1D725891C();
        (*(*(v42 - 8) + 56))(v33, 0, 1, v42);
      }

      else
      {
        v58 = sub_1D725891C();
        (*(*(v58 - 8) + 56))(v33, 1, 1, v58);
      }

      v56 = v33;
    }

    return sub_1D5DF42F8(v56, a2);
  }

  if (v34 == 2)
  {
    v43 = [v35 lastModifiedDate];
    if (v43)
    {
      v44 = v43;
      sub_1D72588BC();

      v45 = sub_1D725891C();
      (*(*(v45 - 8) + 56))(v24, 0, 1, v45);
    }

    else
    {
      v55 = sub_1D725891C();
      (*(*(v55 - 8) + 56))(v24, 1, 1, v55);
    }

    v56 = v24;
    return sub_1D5DF42F8(v56, a2);
  }

  if (v34 != 3)
  {
    v46 = [v35 lastFetchedDate];
    if (v46)
    {
      v47 = v46;
      sub_1D72588BC();

      v48 = sub_1D725891C();
      (*(*(v48 - 8) + 56))(v8, 0, 1, v48);
    }

    else
    {
      v57 = sub_1D725891C();
      (*(*(v57 - 8) + 56))(v8, 1, 1, v57);
    }

    v56 = v8;
    return sub_1D5DF42F8(v56, a2);
  }

  v36 = *(a1 + 40);
  if ([v35 respondsToSelector_])
  {
    v37 = [v36 globalExpirationTime];
    if (v37)
    {
      v38 = v37;
      sub_1D72588BC();

      v39 = sub_1D725891C();
      (*(*(v39 - 8) + 56))(v12, 0, 1, v39);
    }

    else
    {
      v60 = sub_1D725891C();
      (*(*(v60 - 8) + 56))(v12, 1, 1, v60);
    }

    sub_1D5DF42F8(v12, v16);
    sub_1D5DF42F8(v16, v20);
    v56 = v20;
    return sub_1D5DF42F8(v56, a2);
  }

  v52 = sub_1D725891C();
  v53 = *(*(v52 - 8) + 56);

  return v53(a2, 1, 1, v52);
}

uint64_t sub_1D5DF3AA0()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D5DF3B98()
{
  sub_1D72621EC();
}

uint64_t sub_1D5DF3C7C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D5DF3D70@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5DF4F2C();
  *a1 = result;
  return result;
}

void sub_1D5DF3DA0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x446873696C627570;
  v4 = 0xD000000000000010;
  v5 = 0x80000001D73B6E60;
  v6 = 0x80000001D73B6E80;
  v7 = 0xD000000000000014;
  if (v2 != 3)
  {
    v7 = 0x637465467473616CLL;
    v6 = 0xEF65746144646568;
  }

  if (v2 != 2)
  {
    v4 = v7;
    v5 = v6;
  }

  if (*v1)
  {
    v3 = 0x4479616C70736964;
  }

  if (*v1 <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v4;
  }

  if (*v1 <= 1u)
  {
    v9 = 0xEB00000000657461;
  }

  else
  {
    v9 = v5;
  }

  *a1 = v8;
  a1[1] = v9;
}

uint64_t FormatHeadlineBinding.DateTime.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D5DF3FA0()
{
  result = qword_1EC87F580;
  if (!qword_1EC87F580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87F580);
  }

  return result;
}

unint64_t sub_1D5DF3FF4(uint64_t a1)
{
  result = sub_1D5DF401C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5DF401C()
{
  result = qword_1EC87F588;
  if (!qword_1EC87F588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87F588);
  }

  return result;
}

unint64_t sub_1D5DF4070(void *a1)
{
  a1[1] = sub_1D5DF40A8();
  a1[2] = sub_1D5DF40FC();
  result = sub_1D5DF3FA0();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5DF40A8()
{
  result = qword_1EDF296E0;
  if (!qword_1EDF296E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF296E0);
  }

  return result;
}

unint64_t sub_1D5DF40FC()
{
  result = qword_1EDF0E170;
  if (!qword_1EDF0E170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E170);
  }

  return result;
}

unint64_t sub_1D5DF41A4()
{
  result = qword_1EC87F590;
  if (!qword_1EC87F590)
  {
    sub_1D5DF41FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87F590);
  }

  return result;
}

void sub_1D5DF41FC()
{
  if (!qword_1EC87F598)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC87F598);
    }
  }
}

unint64_t sub_1D5DF4250()
{
  result = qword_1EC87F5A0;
  if (!qword_1EC87F5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87F5A0);
  }

  return result;
}

unint64_t sub_1D5DF42A4()
{
  result = qword_1EDF296F0;
  if (!qword_1EDF296F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF296F0);
  }

  return result;
}

uint64_t sub_1D5DF42F8(uint64_t a1, uint64_t a2)
{
  sub_1D5B7B268(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5DF438C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v140 = a2;
  v143 = a3;
  sub_1D5B7B268(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v135 = &v129 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v137 = &v129 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v131 = &v129 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v130 = &v129 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v138 = &v129 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v132 = &v129 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v134 = &v129 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v129 - v27;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v129 - v31;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v129 - v35;
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v129 - v39;
  v41 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v41 - 8, v42);
  v133 = (&v129 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v44, v45);
  v136 = &v129 - v46;
  MEMORY[0x1EEE9AC00](v47, v48);
  v50 = (&v129 - v49);
  MEMORY[0x1EEE9AC00](v51, v52);
  v54 = (&v129 - v53);
  MEMORY[0x1EEE9AC00](v55, v56);
  v58 = (&v129 - v57);
  v59 = *a1;
  sub_1D5B7B268(0, &qword_1EC896750, type metadata accessor for FormatInspectionItem, MEMORY[0x1E69E6F90]);
  v60 = *(type metadata accessor for FormatInspectionItem(0) - 8);
  v141 = (*(v60 + 80) + 32) & ~*(v60 + 80);
  v139 = swift_allocObject();
  *(v139 + 16) = xmmword_1D7273AE0;
  if (v59 <= 1)
  {
    if (!v59)
    {
      sub_1D5C0C74C(v140, v58);
      v69 = [v58[5] publishDate];
      if (v69)
      {
        v70 = v69;
        sub_1D72588BC();

        v71 = 0;
      }

      else
      {
        v71 = 1;
      }

      v61 = v139;
      v105 = sub_1D725891C();
      v106 = *(v105 - 8);
      (*(v106 + 56))(v36, v71, 1, v105);
      sub_1D5DF42F8(v36, v40);
      if ((*(v106 + 48))(v40, 1, v105) == 1)
      {
        _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v40);
        v107 = 0;
        v108 = 0;
      }

      else
      {
        v109 = sub_1D72587AC();
        v111 = v110;
        (*(v106 + 8))(v40, v105);
        v108 = v111;
        v107 = v109;
      }

      sub_1D6D0A5F8(v107, v108, v142);
      sub_1D711B30C(0x206873696C627550, 0xEC00000065746144, v142, (v61 + v141));
      v112 = v58;
      goto LABEL_44;
    }

    sub_1D5C0C74C(v140, v54);
    v82 = [v54[5] displayDate];
    if (v82)
    {
      v83 = v82;
      sub_1D72588BC();

      v84 = 0;
    }

    else
    {
      v84 = 1;
    }

    v113 = sub_1D725891C();
    v114 = *(v113 - 8);
    (*(v114 + 56))(v28, v84, 1, v113);
    sub_1D5DF42F8(v28, v32);
    if ((*(v114 + 48))(v32, 1, v113) == 1)
    {
      _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v32);
      v115 = 0;
      v116 = 0;
    }

    else
    {
      v117 = sub_1D72587AC();
      v119 = v118;
      (*(v114 + 8))(v32, v113);
      v116 = v119;
      v115 = v117;
    }

    v93 = v143;
    sub_1D6D0A5F8(v115, v116, v142);
    v61 = v139;
    sub_1D711B30C(0x2079616C70736944, 0xEC00000065746144, v142, (v139 + v141));
    v104 = v54;
  }

  else
  {
    if (v59 == 2)
    {
      sub_1D5C0C74C(v140, v50);
      v72 = [v50[5] lastModifiedDate];
      v61 = v139;
      if (v72)
      {
        v73 = v132;
        v74 = v72;
        sub_1D72588BC();

        v75 = 0;
        v76 = v134;
      }

      else
      {
        v75 = 1;
        v76 = v134;
        v73 = v132;
      }

      v86 = sub_1D725891C();
      v87 = *(v86 - 8);
      (*(v87 + 56))(v73, v75, 1, v86);
      sub_1D5DF42F8(v73, v76);
      if ((*(v87 + 48))(v76, 1, v86) == 1)
      {
        _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v76);
        v88 = 0;
        v89 = 0;
      }

      else
      {
        v90 = sub_1D72587AC();
        v92 = v91;
        (*(v87 + 8))(v76, v86);
        v89 = v92;
        v88 = v90;
      }

      v93 = v143;
      sub_1D6D0A5F8(v88, v89, v142);
      v94 = (v61 + v141);
      v95 = 0xD000000000000012;
      v96 = 0x80000001D73BD710;
    }

    else
    {
      v61 = v139;
      if (v59 == 3)
      {
        v62 = v136;
        sub_1D5C0C74C(v140, v136);
        v63 = *(v62 + 40);
        if ([v63 respondsToSelector_])
        {
          v64 = [v63 globalExpirationTime];
          v65 = v138;
          if (v64)
          {
            v66 = v131;
            v67 = v64;
            sub_1D72588BC();

            v68 = 0;
          }

          else
          {
            v68 = 1;
            v66 = v131;
          }

          v121 = v130;
          v122 = sub_1D725891C();
          v123 = *(v122 - 8);
          (*(v123 + 56))(v66, v68, 1, v122);
          sub_1D5DF42F8(v66, v121);
          sub_1D5DF42F8(v121, v65);
          if ((*(v123 + 48))(v65, 1, v122) != 1)
          {
            v126 = sub_1D72587AC();
            v128 = v127;
            (*(v123 + 8))(v65, v122);
            v125 = v128;
            v124 = v126;
            goto LABEL_43;
          }
        }

        else
        {
          v85 = sub_1D725891C();
          v65 = v138;
          (*(*(v85 - 8) + 56))(v138, 1, 1, v85);
        }

        _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v65);
        v124 = 0;
        v125 = 0;
LABEL_43:
        sub_1D6D0A5F8(v124, v125, v142);
        sub_1D711B30C(0xD000000000000016, 0x80000001D73BD6F0, v142, (v61 + v141));
        v112 = v62;
LABEL_44:
        result = sub_1D5C10040(v112);
        v93 = v143;
        goto LABEL_45;
      }

      v50 = v133;
      sub_1D5C0C74C(v140, v133);
      v77 = [v50[5] lastFetchedDate];
      if (v77)
      {
        v78 = v135;
        v79 = v77;
        sub_1D72588BC();

        v80 = 0;
        v81 = v137;
      }

      else
      {
        v80 = 1;
        v81 = v137;
        v78 = v135;
      }

      v97 = sub_1D725891C();
      v98 = *(v97 - 8);
      (*(v98 + 56))(v78, v80, 1, v97);
      sub_1D5DF42F8(v78, v81);
      if ((*(v98 + 48))(v81, 1, v97) == 1)
      {
        _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v81);
        v99 = 0;
        v100 = 0;
      }

      else
      {
        v101 = sub_1D72587AC();
        v103 = v102;
        (*(v98 + 8))(v81, v97);
        v100 = v103;
        v99 = v101;
      }

      v93 = v143;
      sub_1D6D0A5F8(v99, v100, v142);
      v94 = (v61 + v141);
      v96 = 0x80000001D73BD6D0;
      v95 = 0xD000000000000011;
    }

    sub_1D711B30C(v95, v96, v142, v94);
    v104 = v50;
  }

  result = sub_1D5C10040(v104);
LABEL_45:
  *v93 = v61;
  return result;
}

uint64_t sub_1D5DF4F2C()
{
  v0 = sub_1D72641CC();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D5DF4F84()
{
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](0);
  return sub_1D7264A5C();
}

uint64_t sub_1D5DF4FC8()
{
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](0);
  return sub_1D7264A5C();
}

uint64_t LayeredMediaParser.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void *LayeredMediaParser.__allocating_init(identifier:json:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

void *LayeredMediaParser.init(identifier:json:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

uint64_t LayeredMediaParser.parse()@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D72620DC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D72620CC();
  v8 = sub_1D726208C();
  v10 = v9;
  (*(v4 + 8))(v7, v3);
  if (v10 >> 60 == 15)
  {
    sub_1D5DF537C();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    sub_1D725A6CC();
    swift_allocObject();
    sub_1D725A6BC();
    sub_1D5DF53D0();
    sub_1D725A69C();
    if (v1)
    {

      if (qword_1EDF11618 != -1)
      {
        swift_once();
      }

      sub_1D7262EBC();
      sub_1D5C384A0();
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1D7273AE0;
      *&v18 = 0;
      *(&v18 + 1) = 0xE000000000000000;
      v17 = v1;
      sub_1D5B49474(0, &qword_1EDF3C5D0);
      sub_1D7263F9C();
      v13 = v18;
      *(v12 + 56) = MEMORY[0x1E69E6158];
      *(v12 + 64) = sub_1D5B7E2C0();
      *(v12 + 32) = v13;
      sub_1D725C30C();

      swift_willThrow();
      return sub_1D5B952E4(v8, v10);
    }

    else
    {
      sub_1D5B952E4(v8, v10);

      v14 = v23;
      *(a1 + 64) = v22;
      *(a1 + 80) = v14;
      *(a1 + 96) = v24;
      v15 = v19;
      *a1 = v18;
      *(a1 + 16) = v15;
      v16 = v21;
      *(a1 + 32) = v20;
      *(a1 + 48) = v16;
    }
  }

  return result;
}

unint64_t sub_1D5DF537C()
{
  result = qword_1EC87F5A8;
  if (!qword_1EC87F5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87F5A8);
  }

  return result;
}

unint64_t sub_1D5DF53D0()
{
  result = qword_1EDF12028;
  if (!qword_1EDF12028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12028);
  }

  return result;
}

uint64_t LayeredMediaParser.deinit()
{

  return v0;
}

uint64_t LayeredMediaParser.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1D5DF55D4()
{
  result = qword_1EC87F5B0;
  if (!qword_1EC87F5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87F5B0);
  }

  return result;
}

unsigned __int8 *sub_1D5DF5628(uint64_t a1, unint64_t a2)
{
  v5 = sub_1D726210C();
  v6 = v4;
  if (v5 == 29804 && v4 == 0xE200000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    LODWORD(v7) = 0;
LABEL_5:
    v8 = 1;
LABEL_6:
    LOBYTE(v45[0]) = v8;
    return (v7 | (v8 << 32));
  }

  if (v5 == 29799 && v6 == 0xE200000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    LODWORD(v7) = 1;
    goto LABEL_5;
  }

  if (v5 == 1953461617 && v6 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 1;
    LODWORD(v7) = 2;
    goto LABEL_6;
  }

  if (v5 == 7368033 && v6 == 0xE300000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 1;
    LODWORD(v7) = 3;
    goto LABEL_6;
  }

  if (v5 == 1886610030 && v6 == 0xE400000000000000)
  {

LABEL_23:

    v8 = 1;
    LODWORD(v7) = 4;
    goto LABEL_6;
  }

  v10 = sub_1D72646CC();

  if (v10)
  {
    goto LABEL_23;
  }

  if ((sub_1D726230C() & 1) == 0)
  {
    goto LABEL_87;
  }

  v11 = sub_1D5FD24A4(1uLL, a1, a2);
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = MEMORY[0x1DA6F97E0](v11, v13, v15, v17);
  v20 = v19;

  v21 = HIBYTE(v20) & 0xF;
  v22 = v18 & 0xFFFFFFFFFFFFLL;
  if ((v20 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v20) & 0xF;
  }

  else
  {
    v23 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v23)
  {

    goto LABEL_87;
  }

  if ((v20 & 0x1000000000000000) != 0)
  {
    v46 = 0;
    v7 = sub_1D5FD1064(v18, v20, 10);

    if ((v7 & 0x100000000) != 0)
    {
      goto LABEL_87;
    }

    goto LABEL_91;
  }

  if ((v20 & 0x2000000000000000) == 0)
  {
    if ((v18 & 0x1000000000000000) != 0)
    {
      result = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_1D7263E5C();
    }

    v24 = *result;
    if (v24 == 43)
    {
      if (v22 >= 1)
      {
        v21 = v22 - 1;
        if (v22 != 1)
        {
          LODWORD(v7) = 0;
          if (result)
          {
            v31 = result + 1;
            while (1)
            {
              v32 = *v31 - 48;
              if (v32 > 9)
              {
                goto LABEL_85;
              }

              v33 = 10 * v7;
              if ((v33 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_85;
              }

              LODWORD(v7) = v33 + v32;
              if (__CFADD__(v33, v32))
              {
                goto LABEL_85;
              }

              ++v31;
              if (!--v21)
              {
                goto LABEL_86;
              }
            }
          }

          goto LABEL_77;
        }

        goto LABEL_85;
      }

      goto LABEL_98;
    }

    if (v24 != 45)
    {
      if (v22)
      {
        LODWORD(v7) = 0;
        if (result)
        {
          while (1)
          {
            v37 = *result - 48;
            if (v37 > 9)
            {
              goto LABEL_85;
            }

            v38 = 10 * v7;
            if ((v38 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_85;
            }

            LODWORD(v7) = v38 + v37;
            if (__CFADD__(v38, v37))
            {
              goto LABEL_85;
            }

            ++result;
            if (!--v22)
            {
              goto LABEL_77;
            }
          }
        }

        goto LABEL_77;
      }

LABEL_85:
      LODWORD(v7) = 0;
      LOBYTE(v21) = 1;
LABEL_86:
      v46 = v21;
      v42 = v21;

      if (v42)
      {
LABEL_87:
        sub_1D5DF5BE4();
        swift_allocError();
        *v43 = a1;
        *(v43 + 8) = a2;
        *(v43 + 16) = 0;
        v44 = 7;
LABEL_88:
        *(v43 + 24) = v44;
        return swift_willThrow();
      }

LABEL_91:

      if (v7 >> 16 <= 0x10 && (v7 & 0xFFFFF800) != 0xD800)
      {
        v8 = 0;
        goto LABEL_6;
      }

      sub_1D5DF5BE4();
      swift_allocError();
      *(v43 + 8) = 0;
      *(v43 + 16) = 0;
      *v43 = v7;
      v44 = 8;
      goto LABEL_88;
    }

    if (v22 >= 1)
    {
      v21 = v22 - 1;
      if (v22 != 1)
      {
        LODWORD(v7) = 0;
        if (result)
        {
          v25 = result + 1;
          while (1)
          {
            v26 = *v25 - 48;
            if (v26 > 9)
            {
              goto LABEL_85;
            }

            v27 = 10 * v7;
            if ((v27 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_85;
            }

            LODWORD(v7) = v27 - v26;
            if (v27 < v26)
            {
              goto LABEL_85;
            }

            ++v25;
            if (!--v21)
            {
              goto LABEL_86;
            }
          }
        }

LABEL_77:
        LOBYTE(v21) = 0;
        goto LABEL_86;
      }

      goto LABEL_85;
    }

    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v45[0] = v18;
  v45[1] = v20 & 0xFFFFFFFFFFFFFFLL;
  if (v18 != 43)
  {
    if (v18 != 45)
    {
      if (v21)
      {
        LODWORD(v7) = 0;
        v39 = v45;
        while (1)
        {
          v40 = *v39 - 48;
          if (v40 > 9)
          {
            break;
          }

          v41 = 10 * v7;
          if ((v41 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v7) = v41 + v40;
          if (__CFADD__(v41, v40))
          {
            break;
          }

          ++v39;
          if (!--v21)
          {
            goto LABEL_86;
          }
        }
      }

      goto LABEL_85;
    }

    if (v21)
    {
      if (--v21)
      {
        LODWORD(v7) = 0;
        v28 = v45 + 1;
        while (1)
        {
          v29 = *v28 - 48;
          if (v29 > 9)
          {
            break;
          }

          v30 = 10 * v7;
          if ((v30 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v7) = v30 - v29;
          if (v30 < v29)
          {
            break;
          }

          ++v28;
          if (!--v21)
          {
            goto LABEL_86;
          }
        }
      }

      goto LABEL_85;
    }

    goto LABEL_97;
  }

  if (v21)
  {
    if (--v21)
    {
      LODWORD(v7) = 0;
      v34 = v45 + 1;
      while (1)
      {
        v35 = *v34 - 48;
        if (v35 > 9)
        {
          break;
        }

        v36 = 10 * v7;
        if ((v36 & 0xFFFFFFFF00000000) != 0)
        {
          break;
        }

        LODWORD(v7) = v36 + v35;
        if (__CFADD__(v36, v35))
        {
          break;
        }

        ++v34;
        if (!--v21)
        {
          goto LABEL_86;
        }
      }
    }

    goto LABEL_85;
  }

LABEL_99:
  __break(1u);
  return result;
}

unint64_t sub_1D5DF5BE4()
{
  result = qword_1EC87F5B8;
  if (!qword_1EC87F5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87F5B8);
  }

  return result;
}

uint64_t sub_1D5DF5C38@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FormatFile();
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FormatPackage();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D725BD1C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5DF6830(v1 + OBJC_IVAR____TtC8NewsFeed22DebugFormatUploadEntry_file, v6);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_1D5DF6894(v6, v10);
    (*(v12 + 16))(v15, &v10[*(v7 + 96)], v11);
    sub_1D5DF68F8(v10, type metadata accessor for FormatPackage);
    return (*(v12 + 32))(a1, v15, v11);
  }

  else
  {
    sub_1D5DF68F8(v6, type metadata accessor for FormatFile);
    return (*(v12 + 16))(a1, *(v1 + 16) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_version, v11);
  }
}

id sub_1D5DF5E68()
{
  v1 = sub_1D725BD1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v0;
  v6 = *(v0 + 16);
  v7 = (v6 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__name);
  swift_beginAccess();
  if (v7[1])
  {
    v32 = *v7;
  }

  else
  {
    v32 = *(v6 + 16);
  }

  sub_1D5DF6790();
  v33 = v8;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  v10 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v11 = objc_opt_self();
  v30 = v11;
  v31 = v10;

  v12 = [v11 systemFontOfSize_];
  v13 = sub_1D5B5A498(0, &qword_1EDF1A720);
  *(inited + 64) = v13;
  *(inited + 40) = v12;
  sub_1D5C09CEC(inited);
  swift_setDeallocating();
  sub_1D5DF68F8(inited + 32, sub_1D5C09DD4);
  v14 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v15 = sub_1D726203C();

  type metadata accessor for Key(0);
  v32 = v16;
  sub_1D5DF67E8(&qword_1EDF1A8E0, type metadata accessor for Key);
  v17 = sub_1D7261D2C();

  v18 = [v14 initWithString:v15 attributes:v17];

  sub_1D5DF5C38(v5);
  sub_1D5DF67E8(&unk_1EDF3B8D0, MEMORY[0x1E69D6B38]);
  v35 = sub_1D72644BC();
  v36 = v19;
  (*(v2 + 8))(v5, v1);
  MEMORY[0x1DA6F9910](10, 0xE100000000000000);
  v20 = swift_initStackObject();
  *(v20 + 32) = v31;
  *(v20 + 16) = xmmword_1D7270C10;
  *(v20 + 40) = [v30 systemFontOfSize:10.0 weight:*MEMORY[0x1E69DB980]];
  v21 = *MEMORY[0x1E69DB650];
  *(v20 + 64) = v13;
  *(v20 + 72) = v21;
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 systemBlueColor];
  *(v20 + 104) = sub_1D5B5A498(0, qword_1EDF1A6A0);
  *(v20 + 80) = v24;
  sub_1D5C09CEC(v20);
  swift_setDeallocating();
  sub_1D5C09DD4();
  swift_arrayDestroy();
  v25 = objc_allocWithZone(MEMORY[0x1E696AD40]);
  v26 = sub_1D726203C();

  v27 = sub_1D7261D2C();

  v28 = [v25 initWithString:v26 attributes:v27];

  [v28 appendAttributedString_];
  return v28;
}

id sub_1D5DF6328()
{
  if (*(v0 + OBJC_IVAR____TtC8NewsFeed22DebugFormatUploadEntry_diff))
  {

    v1 = sub_1D5E2E788();

    return v1;
  }

  else
  {
    swift_beginAccess();
    sub_1D5DF6790();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7270C10;
    v4 = *MEMORY[0x1E69DB648];
    *(inited + 32) = *MEMORY[0x1E69DB648];
    v5 = objc_opt_self();

    v6 = v4;
    v7 = [v5 systemFontOfSize_];
    v8 = sub_1D5B5A498(0, &qword_1EDF1A720);
    *(inited + 40) = v7;
    v9 = *MEMORY[0x1E69DB650];
    *(inited + 64) = v8;
    *(inited + 72) = v9;
    v10 = objc_opt_self();
    v11 = v9;
    v12 = [v10 systemGray2Color];
    *(inited + 104) = sub_1D5B5A498(0, qword_1EDF1A6A0);
    *(inited + 80) = v12;
    sub_1D5C09CEC(inited);
    swift_setDeallocating();
    sub_1D5C09DD4();
    swift_arrayDestroy();
    v13 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v14 = sub_1D726203C();

    type metadata accessor for Key(0);
    sub_1D5DF67E8(&qword_1EDF1A8E0, type metadata accessor for Key);
    v15 = sub_1D7261D2C();

    v16 = [v13 initWithString:v14 attributes:v15];

    return v16;
  }
}

uint64_t sub_1D5DF65A8()
{

  sub_1D5DF68F8(v0 + OBJC_IVAR____TtC8NewsFeed22DebugFormatUploadEntry_file, type metadata accessor for FormatFile);
  sub_1D5DF6958(*(v0 + OBJC_IVAR____TtC8NewsFeed22DebugFormatUploadEntry_target), *(v0 + OBJC_IVAR____TtC8NewsFeed22DebugFormatUploadEntry_target + 8), *(v0 + OBJC_IVAR____TtC8NewsFeed22DebugFormatUploadEntry_target + 16));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DebugFormatUploadEntry()
{
  result = qword_1EC87F5C0;
  if (!qword_1EC87F5C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5DF66A4()
{
  result = type metadata accessor for FormatFile();
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

uint64_t sub_1D5DF6758()
{
  v1 = *(*(*v0 + 16) + 16);

  return v1;
}

void sub_1D5DF6790()
{
  if (!qword_1EDF194E0)
  {
    sub_1D5C09DD4();
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF194E0);
    }
  }
}

uint64_t sub_1D5DF67E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5DF6830(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatFile();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5DF6894(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatPackage();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5DF68F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5DF6958(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

unint64_t sub_1D5DF6990(uint64_t a1)
{
  result = sub_1D5DF69B8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5DF69B8()
{
  result = qword_1EC87F5D0;
  if (!qword_1EC87F5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87F5D0);
  }

  return result;
}

unint64_t sub_1D5DF6A0C()
{
  result = qword_1EDF2FB60;
  if (!qword_1EDF2FB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2FB60);
  }

  return result;
}

unint64_t sub_1D5DF6A60()
{
  result = qword_1EDF11080;
  if (!qword_1EDF11080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11080);
  }

  return result;
}

uint64_t LayeredMediaViewRenderer.render(view:renderedViewModel:forceAsync:)(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (qword_1EDF044F8 != -1)
    {
      swift_once();
    }

    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    v6 = a1;

    v7 = sub_1D725BDBC();

    return v7;
  }

  else
  {
    sub_1D5D077AC(0, &unk_1EDF04980, MEMORY[0x1E69E62F8]);
    sub_1D725BDCC();
    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    *(v9 + 24) = a2;
    v10 = a1;

    v11 = sub_1D725B92C();
    v12 = sub_1D725BA7C();

    return v12;
  }
}

uint64_t sub_1D5DF6CB8(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1D5D077AC(0, &unk_1EDF04980, MEMORY[0x1E69E62F8]);
  sub_1D725BDCC();
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  v6 = a2;

  v7 = sub_1D725B92C();
  v8 = sub_1D725BA7C();

  return v8;
}

uint64_t LayeredMediaViewRenderer.render(view:options:forceAsync:)(char *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (qword_1EDF044F8 != -1)
    {
      swift_once();
    }

    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    v6 = *(a2 + 16);
    *(v5 + 24) = *a2;
    *(v5 + 40) = v6;
    *(v5 + 56) = *(a2 + 32);
    v7 = a1;
    v8 = sub_1D725BDBC();

    return v8;
  }

  else
  {
    v10 = *&a1[qword_1EDF11058];
    v11 = *(a2 + 16);
    v17[0] = *a2;
    v17[1] = v11;
    v18 = *(a2 + 32);
    v12 = LayeredMediaViewModelRenderer.render(viewModel:options:)(v10, v17);
    sub_1D5D077AC(0, &unk_1EDF04980, MEMORY[0x1E69E62F8]);
    sub_1D725BDCC();
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = v12;
    v14 = a1;

    v15 = sub_1D725B92C();
    v16 = sub_1D725BA7C();

    return v16;
  }
}

uint64_t sub_1D5DF6FC4(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = *&a2[qword_1EDF11058];
  v5 = *(a3 + 16);
  v12[0] = *a3;
  v12[1] = v5;
  v13 = *(a3 + 32);
  v6 = LayeredMediaViewModelRenderer.render(viewModel:options:)(v4, v12);
  sub_1D5D077AC(0, &unk_1EDF04980, MEMORY[0x1E69E62F8]);
  sub_1D725BDCC();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = v6;
  v8 = a2;

  v9 = sub_1D725B92C();
  v10 = sub_1D725BA7C();

  return v10;
}

uint64_t sub_1D5DF7114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D6F66438(*(a3 + 16));
  v3 = [objc_opt_self() isMainThread];
  if ((v3 & 1) == 0)
  {
    v3 = [objc_opt_self() flush];
  }

  MEMORY[0x1EEE9AC00](v3, v4);
  sub_1D5D077AC(0, &qword_1EDF3B8E0, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BBAC();
}

uint64_t sub_1D5DF7218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = swift_allocObject();
  v11[2] = a5;
  v11[3] = a6;
  v11[4] = sub_1D5DF743C;
  v11[5] = v10;

  v12 = a5;

  sub_1D725BFFC();
}

uint64_t sub_1D5DF72E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (*(a1 + qword_1EDF11058) == *(a2 + 16))
  {
    v4 = *(a1 + qword_1EDF11060);
    a1 = swift_beginAccess();
    v5 = *(v4 + 16);
    *(v4 + 16) = 1;
    if ((v5 & 1) == 0)
    {
      LayeredMediaViewDisplayStateCoordinator.updateDisplay()();
    }
  }

  return a3(a1);
}

uint64_t LayeredMediaViewRenderer.deinit()
{

  return v0;
}

uint64_t LayeredMediaViewRenderer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t AlertEnableNotifications.title.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D725811C();

  return v2;
}

uint64_t AlertEnableNotifications.message.getter()
{
  v2 = *v0;
  v1 = v0[1];
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = objc_opt_self();

  v5 = [v4 bundleForClass_];
  sub_1D725811C();

  sub_1D5C384A0();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D7273AE0;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_1D5B7E2C0();
  *(v6 + 32) = v2;
  *(v6 + 40) = v1;
  v7 = sub_1D72620BC();

  return v7;
}

uint64_t AlertEnableNotifications.preferredActionButton.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D7D90];
  v3 = sub_1D725E0AC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t AlertEnableNotifications.acceptButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D725811C();

  return v2;
}

uint64_t AlertEnableNotifications.rejectButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D725811C();

  return v2;
}

uint64_t sub_1D5DF788C()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D725811C();

  return v2;
}

uint64_t sub_1D5DF7970@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D7D90];
  v3 = sub_1D725E0AC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1D5DF79E8()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D725811C();

  return v2;
}

uint64_t sub_1D5DF7AAC()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D725811C();

  return v2;
}

void *FeedRefreshBounceAnimation.__allocating_init(viewProvider:refreshStateMachine:barCompressionManager:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

void *FeedRefreshBounceAnimation.init(viewProvider:refreshStateMachine:barCompressionManager:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

uint64_t sub_1D5DF7BEC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t (*)(uint64_t (*a1)(void)), double *))
{
  v4 = v3;
  v5 = *v3;
  v6 = v3[2];
  v7 = *(v5 + 80);
  v8 = *(v5 + 88);
  v9 = sub_1D725EA0C();
  [v9 setUserInteractionEnabled_];

  v10 = sub_1D725EA0C();
  [v10 frame];
  v12 = v11;
  v14 = v13;

  v15 = objc_opt_self();
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1D5DF8E84;
  *(v16 + 24) = v4;
  aBlock[4] = sub_1D5DF8E8C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D69C9704;
  aBlock[3] = &block_descriptor;
  v17 = _Block_copy(aBlock);

  [v15 performWithoutAnimation_];
  _Block_release(v17);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }

  else
  {
    v19 = sub_1D725EA0C();
    v20 = [v19 snapshotViewAfterScreenUpdates_];

    if (v20)
    {
      [v20 setFrame_];
      v21 = sub_1D725EA0C();
      v22 = [v21 superview];

      [v22 addSubview_];
      v23 = swift_allocObject();
      swift_weakInit();
      v24 = swift_allocObject();
      *(v24 + 2) = v7;
      *(v24 + 3) = v8;
      *(v24 + 4) = v23;
      *(v24 + 5) = v6;
      v24[7] = 0.0;
      v24[8] = 0.0;
      *(v24 + 6) = v20;
      v24[9] = v12;
      v24[10] = v14;

      swift_unknownObjectRetain();
      v25 = v20;
      a3(sub_1D5DF8E94, v24);
    }

    else
    {
      v26 = sub_1D725EA0C();
      [v26 setUserInteractionEnabled_];

      a3(sub_1D5DF8000, 0);
    }
  }

  return result;
}

void sub_1D5DF8028(void (*a1)(void), uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, uint64_t a7, uint64_t a8, void *a9)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v18 = sub_1D725EA0C();
    [v18 adjustedContentInset];
    v20 = v19;

    v21 = sub_1D725EA0C();
    [v21 setContentOffset:0 animated:{0.0, -v20}];

    v22 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
    v23 = sub_1D725EA0C();
    v24 = [v23 superview];

    if (!v24 || (v25 = [v24 superview], v24, !v25) || (v26 = objc_msgSend(v25, sel_backgroundColor), v25, !v26))
    {
      v26 = [objc_opt_self() systemBackgroundColor];
    }

    [v22 setBackgroundColor_];

    v70.origin.x = a3;
    v70.origin.y = a4;
    v70.size.width = a5;
    v70.size.height = a6;
    Width = CGRectGetWidth(v70);
    v28 = sub_1D725EA0C();
    [v28 adjustedContentInset];
    v30 = v29;

    [v22 setFrame_];
    v31 = *(v17 + 32);
    v68 = a1;
    if (v31)
    {
      v32 = v31;
      sub_1D725DFFC();

      v33 = *(v17 + 32);
      if (v33)
      {
        v34 = v33;
        sub_1D725E00C();
      }
    }

    v36 = sub_1D725EA0C();
    v37 = sub_1D5DF8660(300.0);

    [v37 bounds];
    Height = CGRectGetHeight(v71);
    CGAffineTransformMakeTranslation(&aBlock, 0.0, -Height);
    [v37 setTransform_];
    v39 = sub_1D725EA0C();
    v40 = [v39 superview];

    [v40 insertSubview:v22 belowSubview:a9];
    v41 = sub_1D725EA0C();
    v42 = [v41 superview];

    v43 = v22;
    [v42 insertSubview:v37 belowSubview:v22];

    v44 = *(v17 + 32);
    if (v44)
    {
      v45 = v44;
      sub_1D725E00C();
    }

    v46 = objc_allocWithZone(MEMORY[0x1E69793D0]);
    LODWORD(v47) = 1051260355;
    LODWORD(v48) = 1045220557;
    LODWORD(v49) = 1.0;
    v50 = [v46 initWithControlPoints__:v47 :{0.0, v48, v49}];
    v51 = objc_allocWithZone(MEMORY[0x1E69793D0]);
    LODWORD(v52) = 1043878380;
    LODWORD(v53) = 1056293519;
    LODWORD(v54) = 1064178811;
    v55 = [v51 initWithControlPoints__:v52 :{0.0, v53, v54}];
    v67 = objc_opt_self();
    v56 = swift_allocObject();
    v56[2] = a9;
    v56[3] = v37;
    v56[4] = 0x4039000000000000;
    *&aBlock.tx = sub_1D5DF8EAC;
    *&aBlock.ty = v56;
    *&aBlock.a = MEMORY[0x1E69E9820];
    *&aBlock.b = 1107296256;
    *&aBlock.c = sub_1D5B6B06C;
    *&aBlock.d = &block_descriptor_12;
    v66 = _Block_copy(&aBlock);
    v57 = v50;
    v58 = a9;
    v59 = v37;

    v60 = swift_allocObject();
    v60[2] = v55;
    v60[3] = v59;
    v60[4] = v17;
    v60[5] = v58;
    v60[6] = v43;
    v60[7] = v68;
    v60[8] = a2;
    *&aBlock.tx = sub_1D5DF8EB8;
    *&aBlock.ty = v60;
    *&aBlock.a = MEMORY[0x1E69E9820];
    *&aBlock.b = 1107296256;
    *&aBlock.c = sub_1D5DF8CE4;
    *&aBlock.d = &block_descriptor_18;
    v61 = _Block_copy(&aBlock);
    v62 = v58;
    v63 = v59;
    v64 = v55;

    v65 = v43;

    [v67 nu:v57 animateWithDuration:4 delay:v66 timingFunction:v61 options:0.6 animations:0.0 completion:?];
    _Block_release(v61);
    _Block_release(v66);
  }

  else
  {
    v35 = sub_1D725EA0C();
    [v35 setUserInteractionEnabled_];

    a1([a9 removeFromSuperview]);
  }
}

id sub_1D5DF8660(double a1)
{
  [v1 contentOffset];
  v4 = v3;
  v6 = v5;
  [v1 bounds];
  sub_1D726336C();
  v9 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  [v9 setClipsToBounds_];
  v10 = [objc_opt_self() systemBackgroundColor];
  [v9 setBackgroundColor_];

  v11 = [v1 snapshotViewAfterScreenUpdates_];
  if (v11)
  {
    v12 = v11;
    [v1 bounds];
    [v12 setFrame_];
    [v9 addSubview_];
  }

  [v1 bounds];
  [v1 setContentOffset:0 animated:{v4, v6 + v13}];
  [v1 contentOffset];
  v15 = v14;
  v17 = v16;
  [v1 bounds];
  Height = CGRectGetHeight(v26);
  if (a1 > 0.0)
  {
    v19 = Height;
    do
    {
      v23 = [v1 snapshotViewAfterScreenUpdates_];
      if (v23)
      {
        v24 = v23;
        [v1 bounds];
        [v24 setFrame_];
        [v9 addSubview_];
      }

      [v1 bounds];
      [v1 setContentOffset:0 animated:{v15, v17 + v20}];
      [v1 contentOffset];
      v15 = v21;
      v17 = v22;
      [v1 bounds];
      v19 = v19 + CGRectGetHeight(v27);
      [v1 bounds];
      a1 = a1 - CGRectGetHeight(v28);
    }

    while (a1 > 0.0);
  }

  [v1 setContentOffset:0 animated:{v4, v6}];
  return v9;
}

id sub_1D5DF8908(void *a1, id a2, CGFloat a3)
{
  [a2 bounds];
  Height = CGRectGetHeight(v9);
  CGAffineTransformMakeTranslation(&v8, 0.0, Height + a3);
  [a1 setTransform_];
  CGAffineTransformMakeTranslation(&v8, 0.0, a3);
  return [a2 setTransform_];
}

void sub_1D5DF89C0(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v12 = *a4;
  v23 = objc_opt_self();
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  v29 = sub_1D5DF8ECC;
  v30 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_1D5B6B06C;
  v28 = &block_descriptor_24;
  v14 = _Block_copy(&aBlock);
  v15 = a3;

  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = *(v12 + 80);
  v17[3] = *(v12 + 88);
  v17[4] = a5;
  v17[5] = v15;
  v17[6] = a6;
  v17[7] = v16;
  v17[8] = a7;
  v17[9] = a8;
  v29 = sub_1D5DF8F0C;
  v30 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_1D5DF8CE4;
  v28 = &block_descriptor_31;
  v18 = _Block_copy(&aBlock);
  v19 = v15;
  v20 = a5;
  v21 = a6;

  [v23 nu:a2 animateWithDuration:4 delay:v14 timingFunction:v18 options:0.4 animations:0.0 completion:?];
  _Block_release(v18);
  _Block_release(v14);
}

uint64_t sub_1D5DF8BF0(int a1, id a2, void *a3, void *a4, int a5, uint64_t (*a6)(void), int a7, int a8, uint64_t a9)
{
  [a2 removeFromSuperview];
  [a3 removeFromSuperview];
  [a4 removeFromSuperview];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_unknownObjectRetain();

    v12 = sub_1D725EA0C();
    swift_unknownObjectRelease();
    [v12 setUserInteractionEnabled_];
  }

  return a6();
}

uint64_t sub_1D5DF8CE4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t FeedRefreshBounceAnimation.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t FeedRefreshBounceAnimation.__deallocating_deinit()
{
  FeedRefreshBounceAnimation.deinit();

  return swift_deallocClassInstance();
}

id sub_1D5DF8ECC()
{
  v1 = *(v0 + 16);
  v3[0] = 0x3FF0000000000000;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 0x3FF0000000000000;
  v3[4] = 0;
  v3[5] = 0;
  return [v1 setTransform_];
}

unint64_t FormatPercentFillSizing.spacing.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = v2;
  return sub_1D5C07390(v2);
}

BOOL _s8NewsFeed23FormatPercentFillSizingV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1D633A310(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (!v2)
  {
    if (!v3)
    {
      sub_1D5C08648(0);
      sub_1D5C08648(0);
      return 1;
    }

    goto LABEL_9;
  }

  if (v2 != 1)
  {
    if (v3 >= 2)
    {
      sub_1D5C07390(v2);
      sub_1D5C07390(v3);
      sub_1D5C07390(v2);
      sub_1D5C07390(v3);
      v6 = sub_1D633A310(v2, v3);
      sub_1D5C08648(v2);
      sub_1D5C08648(v3);
      sub_1D5C08648(v3);
      sub_1D5C08648(v2);
      return (v6 & 1) != 0;
    }

    goto LABEL_9;
  }

  if (v3 != 1)
  {
LABEL_9:
    sub_1D5C07390(v2);
    sub_1D5C07390(v3);
    sub_1D5C08648(v2);
    sub_1D5C08648(v3);
    return 0;
  }

  v4 = 1;
  sub_1D5C08648(1uLL);
  sub_1D5C08648(1uLL);
  return v4;
}

uint64_t _s8NewsFeed24FormatPercentFillSpacingO2eeoiySbAC_ACtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!*a1)
  {
    if (!v3)
    {
      v2 = 0;
      v4 = 1;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v2 != 1)
  {
    if (v3 >= 2)
    {
      sub_1D5C07390(*a2);
      sub_1D5C07390(v2);
      v4 = sub_1D633A310(v2, v3);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v3 != 1)
  {
LABEL_8:
    sub_1D5C07390(*a2);
    sub_1D5C07390(v2);
    v4 = 0;
    goto LABEL_10;
  }

  v2 = 1;
  v4 = 1;
LABEL_10:
  sub_1D5C08648(v2);
  sub_1D5C08648(v3);
  return v4 & 1;
}

unint64_t sub_1D5DF91A4(uint64_t a1)
{
  result = sub_1D5DF91CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5DF91CC()
{
  result = qword_1EC87F5D8;
  if (!qword_1EC87F5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87F5D8);
  }

  return result;
}

unint64_t sub_1D5DF9260()
{
  result = qword_1EDF27108;
  if (!qword_1EDF27108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27108);
  }

  return result;
}

unint64_t sub_1D5DF92B4()
{
  result = qword_1EDF0D470;
  if (!qword_1EDF0D470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D470);
  }

  return result;
}

unint64_t sub_1D5DF9308()
{
  result = qword_1EC87F5E0;
  if (!qword_1EC87F5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87F5E0);
  }

  return result;
}

unint64_t sub_1D5DF935C(uint64_t a1)
{
  result = sub_1D5DF9384();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5DF9384()
{
  result = qword_1EC87F5E8;
  if (!qword_1EC87F5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87F5E8);
  }

  return result;
}

uint64_t sub_1D5DF9418(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5DF946C()
{
  result = qword_1EDF25CF8;
  if (!qword_1EDF25CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF25CF8);
  }

  return result;
}

unint64_t sub_1D5DF94C0()
{
  result = qword_1EDF0CEE8;
  if (!qword_1EDF0CEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0CEE8);
  }

  return result;
}

unint64_t sub_1D5DF9514()
{
  result = qword_1EC87F5F0;
  if (!qword_1EC87F5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87F5F0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed24FormatPercentFillSpacingO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D5DF9590(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D5DF95E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t FormatThumbnailImage.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D72585BC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

BOOL static FormatThumbnailImage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1D72584CC() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for FormatThumbnailImage();
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t sub_1D5DF972C()
{
  if (*v0)
  {
    return 1702521203;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_1D5DF9758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v5 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000)
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

uint64_t sub_1D5DF9834(uint64_t a1)
{
  v2 = sub_1D5DF9A74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5DF9870(uint64_t a1)
{
  v2 = sub_1D5DF9A74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatThumbnailImage.encode(to:)(void *a1)
{
  sub_1D5DF9E1C(0, &qword_1EDF026E8, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5DF9A74();
  sub_1D7264B5C();
  v10[15] = 0;
  sub_1D72585BC();
  sub_1D5DF9F2C(&unk_1EDF45B70, MEMORY[0x1E6968FB0]);
  sub_1D726443C();
  if (!v1)
  {
    type metadata accessor for FormatThumbnailImage();
    v10[14] = 1;
    sub_1D726445C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D5DF9A74()
{
  result = qword_1EDF0ECB0;
  if (!qword_1EDF0ECB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0ECB0);
  }

  return result;
}

uint64_t FormatThumbnailImage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_1D72585BC();
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5DF9E1C(0, &qword_1EDF03A30, MEMORY[0x1E69E6F48]);
  v28 = v8;
  v25 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v23 - v10;
  v12 = type metadata accessor for FormatThumbnailImage();
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5DF9A74();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = v15;
  v16 = v25;
  v17 = v26;
  v30 = 0;
  sub_1D5DF9F2C(&unk_1EDF45B50, MEMORY[0x1E6968FB0]);
  v18 = v27;
  sub_1D726431C();
  (*(v17 + 32))(v23, v7, v18);
  v29 = 1;
  v19 = sub_1D726432C();
  (*(v16 + 8))(v11, v28);
  v21 = v23;
  v20 = v24;
  *&v23[*(v12 + 20)] = v19;
  sub_1D5DFA374(v21, v20, type metadata accessor for FormatThumbnailImage);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D5DFA3DC(v21, type metadata accessor for FormatThumbnailImage);
}

void sub_1D5DF9E1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5DF9A74();
    v7 = a3(a1, &type metadata for FormatThumbnailImage.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D5DF9E80(void *a1)
{
  a1[1] = sub_1D5DF9F2C(&qword_1EDF0EC90, type metadata accessor for FormatThumbnailImage);
  a1[2] = sub_1D5DF9F2C(&qword_1EDF0EC98, type metadata accessor for FormatThumbnailImage);
  result = sub_1D5DF9F2C(&qword_1EC87F5F8, type metadata accessor for FormatThumbnailImage);
  a1[3] = result;
  return result;
}

uint64_t sub_1D5DF9F2C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D5DFA034()
{
  result = qword_1EC87F600;
  if (!qword_1EC87F600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87F600);
  }

  return result;
}

unint64_t sub_1D5DFA08C()
{
  result = qword_1EDF0ECA0;
  if (!qword_1EDF0ECA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0ECA0);
  }

  return result;
}

unint64_t sub_1D5DFA0E4()
{
  result = qword_1EDF0ECA8;
  if (!qword_1EDF0ECA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0ECA8);
  }

  return result;
}

id sub_1D5DFA138(uint64_t a1, void *a2)
{
  sub_1D5B5B410();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FormatThumbnailImage();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5DFA374(a1, v7, sub_1D5B5B410);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1D5DFA3DC(a1, sub_1D5B5B410);

    sub_1D5DFA3DC(v7, sub_1D5B5B410);
    return 0;
  }

  else
  {
    sub_1D5DFA43C(v7, v12);
    v14 = sub_1D725844C();
    v15 = [a2 assetHandleForURL:v14 lifetimeHint:0];

    v16 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v17 = sub_1D725844C();
    v18 = [v16 initWithURL:v17 size:*&v12[*(v8 + 20)] assetHandle:v15];

    sub_1D5DFA3DC(a1, sub_1D5B5B410);
    sub_1D5DFA3DC(v12, type metadata accessor for FormatThumbnailImage);
    return v18;
  }
}

uint64_t sub_1D5DFA374(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5DFA3DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5DFA43C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatThumbnailImage();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5DFA4A0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF3FCD8);
  result = sub_1D725AA8C();
  if (!v14)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF439F8);
  result = sub_1D725AA8C();
  if (!v12)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF40840);
  result = sub_1D725AACC();
  if (!v10)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF3F6D0);
  result = sub_1D725AACC();
  if (v8)
  {
    v5 = type metadata accessor for CategoryViewRenderer();
    v6 = swift_allocObject();
    *(v6 + 176) = 0;
    *(v6 + 184) = 1;
    sub_1D5B63F14(&v13, v6 + 16);
    sub_1D5B63F14(&v11, v6 + 56);
    sub_1D5B63F14(&v9, v6 + 96);
    result = sub_1D5B63F14(&v7, v6 + 136);
    a2[3] = v5;
    a2[4] = &protocol witness table for CategoryViewRenderer;
    *a2 = v6;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D5DFA6C8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF3FCD8);
  result = sub_1D725AA8C();
  if (v4)
  {
    type metadata accessor for CategoryViewLayoutAttributesFactory();
    v2 = swift_allocObject();
    sub_1D5B63F14(&v3, v2 + 16);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D5DFA790()
{
  type metadata accessor for IssueCoverViewLayoutAttributesFactory();

  return swift_allocObject();
}

uint64_t sub_1D5DFA7C4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF3DE00);
  result = sub_1D725AACC();
  if (!v29)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF439F8);
  result = sub_1D725AA8C();
  if (!v27)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FeedItemRendererTool();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for LayeredMediaViewProvider();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3D1F8);
  result = sub_1D725AACC();
  if (!v25)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v22 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for LayeredMediaViewRenderer();
  result = sub_1D725AABC();
  if (result)
  {
    v7 = result;
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v28, v29);
    MEMORY[0x1EEE9AC00](v8, v8);
    v10 = (&v23[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10);
    v12 = *v10;
    v13 = type metadata accessor for ArticleThumbnailViewStyler();
    v23[3] = v13;
    v23[4] = &off_1F51C6380;
    v23[0] = v12;
    v14 = type metadata accessor for ArticleThumbnailViewRenderer();
    v15 = swift_allocObject();
    v16 = __swift_mutable_project_boxed_opaque_existential_1(v23, v13);
    MEMORY[0x1EEE9AC00](v16, v16);
    v18 = (&v23[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18);
    v20 = *v18;
    *(v15 + 80) = v13;
    *(v15 + 88) = &off_1F51C6380;
    *(v15 + 16) = 0u;
    *(v15 + 32) = 0u;
    *(v15 + 48) = 0;
    *(v15 + 56) = v20;
    sub_1D5B63F14(&v26, v15 + 96);
    *(v15 + 136) = v5;
    *(v15 + 144) = v6;
    sub_1D5B63F14(&v24, v15 + 152);
    *(v15 + 192) = v7;
    __swift_destroy_boxed_opaque_existential_1(v23);
    result = __swift_destroy_boxed_opaque_existential_1(v28);
    v21 = v22;
    v22[3] = v14;
    v21[4] = &off_1F512F5D0;
    *v21 = v15;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1D5DFABB0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF3FEB8);
  result = sub_1D725AACC();
  if (v11)
  {
    sub_1D5B63F14(&v10, v12);
    sub_1D5B68374(v12, &v10);
    v4 = v13;
    v5 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    (*(v5 + 32))(v9, v4, v5);
    v6 = type metadata accessor for ArticleThumbnailViewStyler();
    v7 = swift_allocObject();
    v8 = v9[1];
    *(v7 + 16) = v9[0];
    *(v7 + 32) = v8;
    sub_1D5B63F14(&v10, v7 + 48);
    a2[3] = v6;
    a2[4] = &off_1F51C6380;
    *a2 = v7;
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D5DFACE0@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = a2(0);
  result = sub_1D725AABC();
  if (result)
  {
    a4[3] = v7;
    a4[4] = a3;
    *a4 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D5DFAD64()
{
  type metadata accessor for ArticleThumbnailViewLayoutAttributesFactory();

  return swift_allocObject();
}

id sub_1D5DFAD98()
{
  v0 = objc_allocWithZone(type metadata accessor for PuzzleProcessTerminationPolicyDecider());

  return [v0 init];
}

char *sub_1D5DFADD0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for PuzzleEmbedViewController();
  swift_beginAccess();

  v2 = sub_1D725AA7C();

  if (v2)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D5B483C4(0, qword_1EDF3D670);
    result = sub_1D725AACC();
    if (v5)
    {
      v4 = objc_allocWithZone(type metadata accessor for FormatPuzzleEmbedViewController());
      return FormatPuzzleEmbedViewController.init(puzzleEmbedViewController:componentProvider:)(v2, v5, v6);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5DFAEFC(void **a1, void *a2)
{
  v3 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D5B483C4(0, &qword_1EC87F770);
  result = sub_1D725AACC();
  if (v10)
  {
    ObjectType = swift_getObjectType();
    v6 = *(v11 + 40);
    v7 = v3;
    v6(v3, &protocol witness table for FormatPuzzleEmbedViewController, ObjectType, v11);
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_1D725AACC();
    swift_getObjectType();
    v9 = 1;
    v8 = swift_unknownObjectRetain();
    sub_1D6006A30(v8, &v9, v7);
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease_n();
  }

  else
  {
    __break(1u);
    __break(1u);
  }

  return result;
}

uint64_t sub_1D5DFB058(void *a1)
{
  v2 = sub_1D725C9FC();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v74 - v9;
  sub_1D5BB6168(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v74 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF28DA8);
  result = sub_1D725AACC();
  v16 = v96[0];
  if (!v96[0])
  {
    __break(1u);
    goto LABEL_15;
  }

  v82 = v7;
  v83 = v96[1];
  *(v96[0] + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_configuration) = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5A498(0, &unk_1EDF1A7D0);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5534C(0, &unk_1EDF04490);
  result = sub_1D725AABC();
  v88 = result;
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5534C(0, &qword_1EC87F758);
  result = sub_1D725AABC();
  v87 = result;
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v81 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF1EBA8);
  result = sub_1D725AACC();
  v86 = v97;
  if (!v97)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5534C(0, &qword_1EDF1A770);
  swift_unknownObjectRetain_n();
  result = sub_1D725AABC();
  v85 = result;
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3CDC0);
  result = sub_1D725AACC();
  if (!v96[3])
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v80 = v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF0D798);
  result = sub_1D725AACC();
  v84 = v94;
  if (!v94)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v79 = v2;
  v76 = v95;
  v18 = [objc_allocWithZone(MEMORY[0x1E69DD108]) init];
  [v18 setKeyboardType_];
  [v18 setHidePrediction_];
  [v18 setForceDisableDictation_];
  [v18 setReturnKeyType_];
  v92 = type metadata accessor for PuzzleDataManager();
  v93 = &off_1F512AFF8;
  v77 = v92;
  v91[0] = v16;
  v78 = type metadata accessor for PuzzleEmbedViewController();
  v19 = objc_allocWithZone(v78);
  v20 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_activityIndicator;
  v21 = objc_allocWithZone(MEMORY[0x1E69DC638]);
  swift_unknownObjectRetain();
  *&v19[v20] = [v21 initWithActivityIndicatorStyle_];
  v22 = sub_1D72585BC();
  v23 = *(v22 - 8);
  (*(v23 + 56))(v14, 1, 1, v22);
  v24 = sub_1D726203C();
  v25 = 0;
  if ((*(v23 + 48))(v14, 1, v22) != 1)
  {
    v25 = sub_1D725844C();
    (*(v23 + 8))(v14, v22);
  }

  v26 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_embedLocation;
  v27 = [objc_allocWithZone(MEMORY[0x1E69CE190]) initWithContext:v24 URL:v25];

  *&v19[v26] = v27;
  v28 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_onReuse;
  sub_1D5B53DE8(0, &qword_1EDF3B450, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D8770]);
  *&v19[v28] = [objc_allocWithZone(v29) init];
  v30 = &v19[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_reuseIdentifier];
  *v30 = 0;
  v30[1] = 0;
  v19[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_isResizable] = 0;
  v31 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_puzzleData;
  v32 = type metadata accessor for PuzzleData();
  (*(*(v32 - 8) + 56))(&v19[v31], 1, 1, v32);
  *&v19[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v33 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_puzzleSource;
  v34 = type metadata accessor for PuzzleResourceSource();
  (*(*(v34 - 8) + 56))(&v19[v33], 1, 1, v34);
  v35 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_layoutGuide;
  *&v19[v35] = [objc_allocWithZone(MEMORY[0x1E69CE188]) initWithBounds:0.0 contentFrame:0.0 contentSafeAreaFrame:0.0 systemSafeAreaFrame:{0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 0, 0, 0}];
  *&v19[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_layoutGuideView] = 0;
  v36 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_feedConfiguration;
  *&v19[v36] = [objc_allocWithZone(MEMORY[0x1E69CE168]) init];
  v37 = &v19[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_onEmbedInteraction];
  *v37 = 0;
  v37[1] = 0;
  v19[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController____lazy_storage___contentEnvironment] = 8;
  v19[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_hasPuzzleDataLoadAttempted] = 0;
  v38 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_webContentViewController;
  *&v19[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_webContentViewController] = v17;
  v39 = v38;
  v74 = v38;
  *&v19[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_interactionProvider] = v88;
  *&v19[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_actionProvider] = v87;
  v40 = v17;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v41 = [v40 errorProvider];
  *&v19[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_errorProvider] = v41;
  v42 = [v40 failureProvider];
  *&v19[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_failureProvider] = v42;
  v75 = v40;
  v43 = [v40 presentationManager];
  *&v19[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_presentationManager] = v43;
  v44 = &v19[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_puzzleDataManager];
  v45 = v83;
  *v44 = v16;
  v44[1] = v45;
  sub_1D5B68374(v91, &v19[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_puzzleAccessArbiter]);
  *&v19[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_bundleSubscriptionManager] = v85;
  LOBYTE(v90[0]) = 0;
  sub_1D5BB89FC(0, &qword_1EC890280, sub_1D5E01FBC);
  swift_allocObject();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  *&v19[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_puzzleLoadingStateMachine] = sub_1D725AB4C();
  swift_beginAccess();
  v46 = *v37;
  *v37 = 0;
  v37[1] = 0;
  sub_1D5B74328(v46);
  *&v19[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_textInputTraits] = v18;
  sub_1D5B68374(v96, &v19[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_puzzleDifficultyDescriptionProvider]);
  v47 = &v19[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_webEmbedFailureHandler];
  v48 = v76;
  *v47 = v84;
  v47[1] = v48;
  v49 = *&v19[v39];
  sub_1D5BB6168(0, &qword_1EDF01D10, type metadata accessor for Identifier, MEMORY[0x1E69E6F90]);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1D7274590;
  v51 = *MEMORY[0x1E69DE110];
  v52 = v18;
  v53 = *MEMORY[0x1E69DE1B8];
  *(v50 + 32) = *MEMORY[0x1E69DE110];
  *(v50 + 40) = v53;
  v83 = v16;
  v54 = *MEMORY[0x1E69DE1E0];
  v55 = *MEMORY[0x1E69DE1B0];
  *(v50 + 48) = *MEMORY[0x1E69DE1E0];
  *(v50 + 56) = v55;
  type metadata accessor for Identifier(0);
  v76 = v52;
  swift_unknownObjectRetain();
  v56 = v49;
  v57 = v51;
  v58 = v53;
  v59 = v54;
  v60 = v55;
  v61 = sub_1D726265C();

  [v56 removeMenusForIdentifiers_];

  v62 = [*&v19[v74] messageHandlerManager];
  v63 = v86;
  swift_unknownObjectRetain();
  v64 = sub_1D726203C();
  [v62 addMessageHandler:v63 name:v64];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (swift_dynamicCastClass())
  {
    *(v63 + OBJC_IVAR____TtC8NewsFeed28PuzzleProgressMessageHandler_delegate + 8) = &off_1F512AFE8;
    swift_unknownObjectWeakAssign();
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v66 = objc_opt_self();
  v67 = [v66 bundleForClass_];
  sub_1D725811C();

  v68 = [v66 bundleForClass_];
  sub_1D725811C();

  v69 = v81;
  sub_1D725C9EC();
  v70 = v80;
  v71 = v79;
  (*(v80 + 16))(v82, v69, v79);
  v90[3] = sub_1D725CB3C();
  v90[4] = MEMORY[0x1E69D75D0];
  __swift_allocate_boxed_opaque_existential_1(v90);
  sub_1D725CB1C();
  v72 = objc_allocWithZone(sub_1D725FB4C());
  *&v19[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_errorView] = sub_1D725FB3C();
  v89.receiver = v19;
  v89.super_class = v78;
  v73 = objc_msgSendSuper2(&v89, sel_initWithNibName_bundle_, 0, 0);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v96);
  (*(v70 + 8))(v69, v71);
  __swift_destroy_boxed_opaque_existential_1(v91);
  *(*&v73[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_puzzleDataManager] + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_delegate + 8) = &off_1F51A55E8;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease_n();
  return v73;
}

uint64_t sub_1D5DFBE7C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF28DA8);
  result = sub_1D725AACC();
  v3 = v34[0];
  if (!v34[0])
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = v34[1];
  *(v34[0] + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_configuration) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5A498(0, &unk_1EDF1A7D0);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5534C(0, &unk_1EDF04490);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5534C(0, &qword_1EC87F758);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v27 = v6;
  v28 = v5;
  v29 = v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF1EBA8);
  result = sub_1D725AACC();
  if (!v37)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v26 = v38;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF26B90);
  swift_beginAccess();

  sub_1D725AA8C();

  if (!v35)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5534C(0, &qword_1EDF1A770);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = result;
  v25 = v37;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3CDC0);
  result = sub_1D725AACC();
  if (!v33)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = v7;
  v24 = v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF0D798);
  result = sub_1D725AACC();
  v10 = v30;
  if (v30)
  {
    v11 = v31;
    v12 = type metadata accessor for PuzzleEmbedViewController();
    v13 = [objc_allocWithZone(MEMORY[0x1E69DD108]) init];
    [v13 setKeyboardType_];
    [v13 setHidePrediction_];
    [v13 setForceDisableDictation_];
    [v13 setReturnKeyType_];
    v14 = v35;
    v15 = v36;
    v16 = __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
    v23[1] = v23;
    MEMORY[0x1EEE9AC00](v16, v16);
    v18 = v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v18);
    v22 = v15;
    v20 = v28;
    v21 = sub_1D6A26D7C(v28, v27, v9, v24, v29, v25, v26, v18, v8, v32, v10, v11, v13, v12, v14, v22);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v34);
    return v21;
  }

LABEL_19:
  __break(1u);
  return result;
}

void *sub_1D5DFC3B0(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D5B5534C(0, &qword_1EDF043C8);
  result = sub_1D725AABC();
  if (result)
  {
    [result setPresentingViewController_];

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D5DFC444@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF3E9B8);
  result = sub_1D725AACC();
  v5 = v11;
  if (v11)
  {
    v6 = v12;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D5B483C4(0, &unk_1EDF439D0);
    result = sub_1D725AACC();
    if (v10)
    {
      type metadata accessor for PuzzleComponentsViewProvider();
      v7 = swift_allocObject();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v7[2] = [objc_opt_self() bundleForClass_];
      v7[3] = v5;
      v7[4] = v6;
      result = sub_1D5B63F14(&v9, (v7 + 5));
      *a2 = v7;
      a2[1] = &protocol witness table for PuzzleComponentsViewProvider;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5DFC594@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3F490);
  result = sub_1D725AACC();
  if (v6)
  {
    type metadata accessor for PuzzleComponentsStyler();
    v4 = swift_allocObject();
    result = sub_1D5B63F14(&v5, v4 + 16);
    *a2 = v4;
    a2[1] = &protocol witness table for PuzzleComponentsStyler;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1D5DFC640@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for PuzzleHintFormatter();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D72745A0;
  type metadata accessor for PuzzleTagConverter();
  result = swift_allocObject();
  result[2] = 23390;
  result[3] = 0xE200000000000000;
  result[5] = 0;
  result[6] = 0;
  result[4] = 0;
  *(v3 + 32) = result;
  a1[3] = v2;
  a1[4] = &protocol witness table for PuzzleHintFormatter;
  *a1 = v3;
  return result;
}

uint64_t sub_1D5DFC700@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5534C(0, &qword_1EDF1A7A0);
  result = sub_1D725AABC();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF40590);
  result = sub_1D725AACC();
  if (!v30)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF3EE20);
  result = sub_1D725AACC();
  if (!v27)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3CDB8);
  result = sub_1D725AACC();
  if (!v25)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5A498(0, &qword_1EDF1A950);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5534C(0, &qword_1EDF1A770);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3F7E8);
  result = sub_1D725AACC();
  if (!v23)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF3E810);
  result = sub_1D725AACC();
  v8 = v20;
  if (v20)
  {
    v9 = v21;
    v10 = type metadata accessor for PuzzleDataManager();
    v11 = objc_allocWithZone(v10);
    *&v11[OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v12 = OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_configuration;
    v11[OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_configuration] = 1;
    *&v11[OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzle] = 0;
    *&v11[OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_appConfigurationManager] = v5;
    sub_1D5B68374(v29, &v11[OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleService]);
    sub_1D5B68374(v26, &v11[OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleHistoryService]);
    sub_1D5B68374(v24, &v11[OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleNotificationAutoEnableManager]);
    *&v11[OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleTypeSettings] = v6;
    *&v11[OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_bundleSubscriptionManager] = v7;
    v11[v12] = 1;
    sub_1D5B68374(v22, &v11[OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleStatsService]);
    v13 = &v11[OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleGameCenterService];
    *v13 = v8;
    v13[1] = v9;
    v19.receiver = v11;
    v19.super_class = v10;
    swift_unknownObjectRetain();
    v14 = v6;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v15 = objc_msgSendSuper2(&v19, sel_init);
    [v7 addObserver_];
    v16 = v27;
    v17 = v28;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    (*(v17 + 88))(v18, v15, &off_1F512AFD8, v16, v17);
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v18);
    __swift_destroy_boxed_opaque_existential_1(v22);
    __swift_destroy_boxed_opaque_existential_1(v24);
    __swift_destroy_boxed_opaque_existential_1(v29);
    result = __swift_destroy_boxed_opaque_existential_1(v26);
    *a2 = v15;
    a2[1] = &off_1F512B010;
    return result;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1D5DFCB78@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF3EE20);
  result = sub_1D725AACC();
  if (v9)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D5B5534C(0, &qword_1EDF1A770);
    result = sub_1D725AABC();
    if (result)
    {
      v5 = result;
      v6 = type metadata accessor for PuzzleTeaserAccessArbiter();
      v7 = swift_allocObject();
      result = sub_1D5B63F14(&v8, v7 + 16);
      *(v7 + 56) = v5;
      a2[3] = v6;
      a2[4] = &off_1F512FF50;
      *a2 = v7;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1D5DFCC84@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for PuzzleProgressMessageHandler()) init];
  *a1 = result;
  a1[1] = &off_1F5122AD8;
  return result;
}

uint64_t sub_1D5DFCCC8(void *a1)
{
  sub_1D5B68374(a1, &v20);
  type metadata accessor for WebEmbedImageWebContentFactory();
  v2 = swift_allocObject();
  sub_1D5B63F14(&v20, v2 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3DE20);
  result = sub_1D725AACC();
  if (v21)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D5B483C4(0, qword_1EDF1DFF8);
    result = sub_1D725AACC();
    if (v19)
    {
      v4 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
      MEMORY[0x1EEE9AC00](v4, v4);
      v6 = (&v17[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v7 + 16))(v6);
      v8 = *v6;
      v9 = type metadata accessor for WebEmbedConfigurationProvider();
      v17[3] = v9;
      v17[4] = &off_1F51C6BA0;
      v17[0] = v8;
      type metadata accessor for WebEmbedImageGenerator();
      v10 = swift_allocObject();
      v11 = __swift_mutable_project_boxed_opaque_existential_1(v17, v9);
      MEMORY[0x1EEE9AC00](v11, v11);
      v13 = (&v17[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v14 + 16))(v13);
      v15 = sub_1D5E019B4(v2, &v20, *v13, v10);

      __swift_destroy_boxed_opaque_existential_1(v17);
      __swift_destroy_boxed_opaque_existential_1(v18);
      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5DFCF70(void *a1)
{
  sub_1D5E01820(0);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v6 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v72 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5A498(0, &unk_1EDF1A7D0);
  result = sub_1D725AABC();
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v11 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5534C(0, &unk_1EDF04490);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF1DFF8);
  result = sub_1D725AACC();
  if (!v97)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5BB6168(0, &qword_1EDF43AC0, type metadata accessor for FormatPictureInPictureModel, MEMORY[0x1E69D6538]);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3DE20);
  result = sub_1D725AACC();
  if (!v95)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3CDB0);
  result = sub_1D725AACC();
  if (!v93)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF269E8);
  result = sub_1D725AACC();
  if (!v91[3])
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D725CAFC();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v77 = v11;
  v78 = v6;
  v79 = result;
  v80 = v13;
  v81 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF0D798);
  result = sub_1D725AACC();
  v14 = v89;
  if (!v89)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v73 = v90;
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v96, v97);
  v76 = &v72;
  MEMORY[0x1EEE9AC00](v15, v15);
  v17 = (&v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = *v17;
  v20 = type metadata accessor for WebEmbedConfigurationProvider();
  v87 = v20;
  v88 = &off_1F51C6BA0;
  v86[0] = v19;
  v74 = type metadata accessor for WebEmbedViewController();
  v21 = objc_allocWithZone(v74);
  v22 = __swift_mutable_project_boxed_opaque_existential_1(v86, v87);
  v75 = &v72;
  MEMORY[0x1EEE9AC00](v22, v22);
  v24 = (&v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24);
  v26 = *v24;
  v85[3] = v20;
  v85[4] = &off_1F51C6BA0;
  v85[0] = v26;
  v27 = &v21[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_layoutIdentifier];
  *v27 = 0;
  v27[1] = 0;
  v28 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_onReuse;
  sub_1D5B53DE8(0, &qword_1EDF3B450, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D8770]);
  *&v21[v28] = [objc_allocWithZone(v29) init];
  v30 = &v21[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_onSizeInvalidation];
  *v30 = 0;
  v30[1] = 0;
  swift_unknownObjectWeakInit();
  v31 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_contentFrameView;
  *&v21[v31] = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  swift_weakInit();
  v32 = &v21[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_onEmbedInteraction];
  *v32 = 0;
  v32[1] = 0;
  v33 = &v21[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_onNavigationBarConfigurationUpdate];
  *v33 = 0;
  v33[1] = 0;
  v21[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_showsLoadingSpinner] = 1;
  v34 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_errorView;
  *&v21[v34] = [objc_allocWithZone(type metadata accessor for WebEmbedErrorView()) initWithFrame_];
  v21[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_errorPosition] = 0;
  *&v21[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_navigationBarConfiguration] = 0;
  *&v21[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_preferredContentSizeCategoryOnPopulate] = 0;
  v35 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_embedURL;
  v36 = sub_1D72585BC();
  v37 = *(*(v36 - 8) + 56);
  v37(&v21[v35], 1, 1, v36);
  v37(&v21[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_dataFeedURL], 1, 1, v36);
  *&v21[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_location] = 0;
  v37(&v21[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_sourceURL], 1, 1, v36);
  v38 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_feedConfiguration;
  *&v21[v38] = [objc_allocWithZone(MEMORY[0x1E69CE168]) init];
  v39 = &v21[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_viewportSize];
  *v39 = 0;
  v39[1] = 0;
  v21[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_isResizable] = 0;
  v40 = &v21[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_preferredSize];
  *v40 = 0;
  *(v40 + 1) = 0;
  v40[16] = 1;
  v41 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_dataVisualization;
  v42 = type metadata accessor for WebEmbedDataVisualization();
  (*(*(v42 - 8) + 56))(&v21[v41], 1, 1, v42);
  v43 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_layoutGuide;
  *&v21[v43] = [objc_allocWithZone(MEMORY[0x1E69CE188]) initWithBounds:0.0 contentFrame:0.0 contentSafeAreaFrame:0.0 systemSafeAreaFrame:{0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 0, 0, 0}];
  v21[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_layoutGuideDidChange] = 0;
  v44 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_stateMachine;
  if (qword_1EDF125F0 != -1)
  {
    swift_once();
  }

  v45 = qword_1EDFFC610;
  v84[0] = 0;
  sub_1D5E01854();
  swift_allocObject();
  v46 = v45;
  *&v21[v44] = sub_1D725AB3C();
  v47 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_activityIndicator;
  *&v21[v47] = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
  v48 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_tapGestureRecognizer;
  *&v21[v48] = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:0 action:0];
  v49 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController__lastDatastoreUpdate;
  v50 = type metadata accessor for WebEmbedDatastoreUpdate();
  (*(*(v50 - 8) + 56))(v9, 1, 1, v50);
  sub_1D5E018F4(v9, v78);
  sub_1D5BB6168(0, &qword_1EDF17AB8, sub_1D5E01820, MEMORY[0x1E69D6AF0]);
  swift_allocObject();
  v51 = sub_1D725B94C();
  sub_1D5E01958(v9);
  *&v21[v49] = v51;
  *&v21[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_debugLoadView] = 0;
  *&v21[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_layoutGuideView] = 0;
  v52 = v77;
  *&v21[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webContentViewController] = v77;
  v53 = v52;
  v54 = [v53 errorProvider];
  *&v21[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_errorProvider] = v54;
  v55 = [v53 failureProvider];
  *&v21[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_failureProvider] = v55;
  v56 = [v53 navigationBarConfigurationProvider];
  *&v21[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_navigationBarConfigurationProvider] = v56;
  v57 = [v53 presentationManager];
  *&v21[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_presentationManager] = v57;
  v58 = [v53 preferredSizeManager];
  *&v21[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_preferredSizeManager] = v58;
  sub_1D5B68374(v85, &v21[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_configurationProvider]);
  v59 = v80;
  *&v21[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_interactionProvider] = v81;
  *&v21[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_pictureInPictureState] = v59;
  sub_1D5B68374(v94, &v21[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webEmbedDataSourceManager]);
  sub_1D5B68374(v92, &v21[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_liveActivityWebEmbedDatastoreManager]);
  sub_1D5B68374(v91, &v21[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_coordinator]);
  v60 = &v21[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webEmbedFailureHandler];
  v61 = v73;
  *v60 = v14;
  v60[1] = v61;
  sub_1D5B68374(v91, v84);
  v62 = type metadata accessor for WebEmbedURLHandlerDelegate();
  v63 = objc_allocWithZone(v62);
  swift_unknownObjectWeakInit();
  v64 = &v63[OBJC_IVAR____TtC8NewsFeed26WebEmbedURLHandlerDelegate_webEmbedIdentifier];
  *v64 = 0;
  *(v64 + 1) = 0;
  sub_1D5B68374(v84, &v63[OBJC_IVAR____TtC8NewsFeed26WebEmbedURLHandlerDelegate_webEmbedCoordinator]);
  *&v63[OBJC_IVAR____TtC8NewsFeed26WebEmbedURLHandlerDelegate_tipManager] = v79;
  v83.receiver = v63;
  v83.super_class = v62;
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();

  v65 = objc_msgSendSuper2(&v83, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v84);
  *&v21[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_delegate] = v65;
  v82.receiver = v21;
  v82.super_class = v74;
  v66 = objc_msgSendSuper2(&v82, sel_initWithNibName_bundle_, 0, 0);
  v67 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webContentViewController;
  v68 = *&v66[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webContentViewController];
  sub_1D6B26744();
  type metadata accessor for Identifier(0);
  v69 = v66;
  v70 = v68;
  v71 = sub_1D726265C();

  [v70 removeMenusForIdentifiers_];

  [*&v69[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_tapGestureRecognizer] addTarget:v69 action:sel_handleTapWithRecognizer_];
  sub_1D6128D80();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1D725ADDC();

  __swift_destroy_boxed_opaque_existential_1(v84);
  [*&v66[v67] setFocusShouldStartInputSession_];

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v91);
  __swift_destroy_boxed_opaque_existential_1(v92);
  __swift_destroy_boxed_opaque_existential_1(v94);
  __swift_destroy_boxed_opaque_existential_1(v85);
  __swift_destroy_boxed_opaque_existential_1(v86);
  __swift_destroy_boxed_opaque_existential_1(v96);
  return v69;
}

void *sub_1D5DFDCDC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D5B5534C(0, &qword_1EDF043C8);
  result = sub_1D725AABC();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  [result setPresentingViewController_];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D5B5A498(0, &qword_1EDF04640);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  [result setDelegate_];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D5B483C4(0, &unk_1EDF3BAC8);
  result = sub_1D725AACC();
  if (v7)
  {
    sub_1D5B63F14(&v6, v8);
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    sub_1D5B471E8(&unk_1EDF0D748, 255, type metadata accessor for WebEmbedViewController);
    sub_1D725B54C();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(&v6);
    return __swift_destroy_boxed_opaque_existential_1(v8);
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_1D5DFDEB8(uint64_t a1)
{
  sub_1D5B68374(a1, v2);
  type metadata accessor for WebEmbedManager();
  swift_allocObject();
  return WebEmbedManager.init(resolver:)(v2);
}

uint64_t sub_1D5DFDF04()
{
  sub_1D5B483C4(0, qword_1EDF1DFF8);

  sub_1D725B53C();

  type metadata accessor for WebEmbedDatastoreURLSchemeHandlerFactory();
  sub_1D725B52C();
}

void *sub_1D5DFDFD0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D7258AAC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7258A4C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5534C(0, &qword_1EDF1AB20);
  result = sub_1D725AABC();
  if (result)
  {
    v10 = [result contentStoreFrontID];
    swift_unknownObjectRelease();
    if (v10)
    {
      v12 = sub_1D726207C();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0;
    }

    if (qword_1EDF43B30 != -1)
    {
      swift_once();
    }

    sub_1D5B471E8(qword_1EDF2FA10, v11, type metadata accessor for RendererAssembly);
    sub_1D725964C();
    v15 = *&aProductistagin[8 * v22];
    v16 = *&aOn_1[8 * v22];
    v17 = type metadata accessor for WebEmbedConfigurationProvider();
    v18 = swift_allocObject();
    result = (*(v5 + 32))(v18 + OBJC_IVAR____TtC8NewsFeed29WebEmbedConfigurationProvider_locale, v8, v4);
    v19 = (v18 + OBJC_IVAR____TtC8NewsFeed29WebEmbedConfigurationProvider_storeFront);
    *v19 = v12;
    v19[1] = v14;
    v20 = (v18 + OBJC_IVAR____TtC8NewsFeed29WebEmbedConfigurationProvider_contentEnvironment);
    *v20 = v15;
    v20[1] = v16;
    a2[3] = v17;
    a2[4] = &off_1F51C6BA0;
    *a2 = v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D5DFE270(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5A498(0, &qword_1EDF1AB10);
  result = sub_1D725AABC();
  if (result)
  {
    v2 = result;
    v3 = type metadata accessor for WebEmbedDatastoreURLSchemeHandlerFactory();
    v4 = objc_allocWithZone(v3);
    *&v4[OBJC_IVAR____TtC8NewsFeed40WebEmbedDatastoreURLSchemeHandlerFactory_assetManager] = v2;
    v5.receiver = v4;
    v5.super_class = v3;
    return objc_msgSendSuper2(&v5, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D5DFE310(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for WebEmbedDatastoreURLSchemeHandlerFactory();
  v3 = sub_1D725AABC();
  if (v3)
  {
    v4 = v3;
    v5 = sub_1D726203C();
    [a1 registerFactory:v4 forScheme:v5];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D5DFE3C8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3FD10);
  result = sub_1D725AACC();
  if (v4)
  {
    type metadata accessor for ShareAttributionViewReuseFactory();
    v2 = swift_allocObject();
    *(v2 + 56) = MEMORY[0x1E69E7CC8];
    sub_1D5B63F14(&v3, v2 + 16);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D5DFE474()
{
  type metadata accessor for FormatShareAttributionNodeRenderer();
  sub_1D725B52C();

  type metadata accessor for ShareAttributionViewReuseManager();
  sub_1D725B52C();
}

uint64_t sub_1D5DFE508()
{
  type metadata accessor for FormatShareAttributionNodeRenderer();

  return swift_allocObject();
}

uint64_t sub_1D5DFE53C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ShareAttributionViewReuseFactory();
  result = sub_1D725AABC();
  if (result)
  {
    v2 = result;
    type metadata accessor for ShareAttributionViewReuseManager();
    v3 = swift_allocObject();
    *(v3 + 24) = v2;
    sub_1D5BB6930();
    swift_allocObject();

    *(v3 + 16) = sub_1D725DD5C();
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D5DFE654@<X0>(void *a1@<X0>, void (*a2)(void)@<X1>, void (*a3)(void)@<X2>, uint64_t *a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5534C(0, &qword_1EDF439C0);
  result = sub_1D725AABC();
  if (result)
  {
    a2(0);
    swift_allocObject();
    a3();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D5B483C4(0, &qword_1EDF439C8);
    result = sub_1D725AACC();
    if (v11)
    {
      v9 = sub_1D725CA3C();
      swift_allocObject();
      result = sub_1D725CA2C();
      v10 = MEMORY[0x1E69D7580];
      a4[3] = v9;
      a4[4] = v10;
      *a4 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5DFE7A4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5534C(0, &qword_1EDF439C0);
  result = sub_1D725AABC();
  if (result)
  {
    type metadata accessor for StubThumbnailProcessor();
    swift_allocObject();
    sub_1D5B471E8(&qword_1EC87F678, 255, type metadata accessor for StubThumbnailProcessor);
    [objc_allocWithZone(type metadata accessor for StubImageDownloader()) init];
    sub_1D5B471E8(&unk_1EC87F680, 255, type metadata accessor for StubImageDownloader);
    v4 = sub_1D725CA3C();
    swift_allocObject();
    result = sub_1D725CA2C();
    v5 = MEMORY[0x1E69D7580];
    a2[3] = v4;
    a2[4] = v5;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D5DFEA0C@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v7 = a1(0);
  swift_allocObject();
  result = a2();
  a4[3] = v7;
  a4[4] = a3;
  *a4 = result;
  return result;
}

uint64_t sub_1D5DFEA74(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3B4F8);
  result = sub_1D725AACC();
  if (!v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF439E0);
  result = sub_1D725AACC();
  v3 = v12;
  if (!v12)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v4 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D725A60C();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5A498(0, &qword_1EDF1AB00);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5534C(0, &qword_1EDF1A978);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF412B0);
  result = sub_1D725AACC();
  if (!v11)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  type metadata accessor for FeedItemRendererTool();
  v7 = swift_allocObject();
  *(v7 + 72) = 0;
  if (qword_1EDF381C0 != -1)
  {
    swift_once();
  }

  *(v7 + 80) = qword_1EDFFCF70;
  sub_1D725DA8C();

  *(v7 + 88) = sub_1D725DA7C();
  sub_1D5B68374(v14, v7 + 32);
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;
  *(v7 + 96) = v5;
  v8 = qword_1EDF3C2D0;
  swift_unknownObjectRetain();

  if (v8 != -1)
  {
    swift_once();
  }

  swift_allocObject();
  swift_weakInit();
  sub_1D5B471E8(qword_1EDF37A70, 255, type metadata accessor for FeedItemRendererTool);
  sub_1D725965C();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  sub_1D5BB26FC(v10);
  __swift_destroy_boxed_opaque_existential_1(v14);
  *(v7 + 72) = v9;
  return v7;
}

uint64_t sub_1D5DFEE38@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3CAC0);
  result = sub_1D725AACC();
  if (!v32)
  {
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3D510);
  result = sub_1D725AACC();
  if (!v30)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF42838);
  result = sub_1D725AACC();
  if (!v27)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF439E0);
  result = sub_1D725AACC();
  if (!v25[5])
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = sub_1D725A60C();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = result;
  v25[3] = v5;
  v25[4] = sub_1D5B471E8(&qword_1EDF3BED0, 255, MEMORY[0x1E698AAC8]);
  v25[0] = v6;
  sub_1D725E83C();
  swift_allocObject();
  v7 = sub_1D725E81C();
  v8 = __swift_mutable_project_boxed_opaque_existential_1(&v31, v32);
  MEMORY[0x1EEE9AC00](v8, v8);
  v10 = (v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = __swift_mutable_project_boxed_opaque_existential_1(&v29, v30);
  MEMORY[0x1EEE9AC00](v12, v12);
  v14 = (v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = sub_1D5BB1834(*v10, *v14, &v26, v7);
  __swift_destroy_boxed_opaque_existential_1(&v29);
  __swift_destroy_boxed_opaque_existential_1(&v31);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF3F6D0);
  result = sub_1D725AACC();
  v17 = v32;
  if (!v32)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  v18 = v33;
  __swift_project_boxed_opaque_existential_1(&v31, v32);
  v19 = (v18[12])(v17, v18);
  __swift_destroy_boxed_opaque_existential_1(&v31);
  if (v19)
  {
    v20 = type metadata accessor for NoopHiddenContentEffectRenderer();
    v21 = swift_allocObject();
    v22 = &off_1F51BE240;
  }

  else
  {
    v20 = type metadata accessor for HiddenContentPlacardViewRenderer();

    v22 = &off_1F51B1EF8;
  }

  v32 = v20;
  v33 = v22;
  *&v31 = v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  result = sub_1D725AACC();
  if (!v30)
  {
    goto LABEL_20;
  }

  v27 = type metadata accessor for HiddenContentPlacardViewRenderer();
  v28 = &off_1F51B1EF8;
  *&v26 = v16;
  v23 = type metadata accessor for SwitchHiddenContentEffectRenderer();
  v24 = swift_allocObject();
  sub_1D72596FC();
  sub_1D72596DC();
  if (qword_1EDF3C360 != -1)
  {
    swift_once();
  }

  sub_1D72596CC();

  *(v24 + 136) = v25[0];
  sub_1D5B63F14(&v31, v24 + 16);
  sub_1D5B63F14(&v26, v24 + 56);
  sub_1D5B63F14(&v29, v24 + 96);
  a2[3] = v23;
  a2[4] = &off_1F51BE260;

  *a2 = v24;
  return result;
}

uint64_t sub_1D5DFF3C4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF3FEB8);
  result = sub_1D725AACC();
  if (v7)
  {
    v4 = type metadata accessor for HiddenContentPlacardViewStyler();
    v5 = swift_allocObject();
    result = sub_1D5B63F14(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_1F519BAF0;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D5DFF478@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1D5B68374(a1, v13);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF354B8);
  result = sub_1D725AACC();
  if (!v12)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5BB6168(0, &qword_1EDF43AC0, type metadata accessor for FormatPictureInPictureModel, MEMORY[0x1E69D6538]);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF3BAC8);
  result = sub_1D725AACC();
  if (!v10)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF439D0);
  result = sub_1D725AACC();
  if (!v8)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  type metadata accessor for FormatVideoPlayerReuseManager();
  v6 = swift_allocObject();
  v6[3] = 0;
  swift_unknownObjectWeakInit();
  if (qword_1EDF1DCB0 != -1)
  {
    swift_once();
  }

  v6[25] = qword_1EDFFC8D8;
  sub_1D5B63F14(v13, (v6 + 4));
  sub_1D5B63F14(&v11, (v6 + 9));
  v6[14] = v5;
  sub_1D5B63F14(&v9, (v6 + 15));
  sub_1D5B63F14(&v7, (v6 + 20));
  *a2 = v6;
  a2[1] = &off_1F51B7A70;
}

uint64_t sub_1D5DFF6E0(uint64_t a1, unint64_t *a2)
{
  sub_1D5B483C4(0, a2);
  sub_1D725B53C();
}

uint64_t sub_1D5DFF738@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for FormatVideoPlayerCoordinator();
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  result = swift_unknownObjectWeakInit();
  a1[3] = v2;
  a1[4] = &off_1F51B7B48;
  *a1 = v3;
  return result;
}

uint64_t sub_1D5DFF7E4()
{
  v0 = sub_1D725B88C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B7B1C8();
  sub_1D725B52C();
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6AC0], v0);
  sub_1D725A71C();

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1D5DFF910(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF40840);
  result = sub_1D725AACC();
  if (v16)
  {
    sub_1D5B7B1C8();
    v3 = v2;
    v4 = objc_allocWithZone(v2);
    v5 = &v4[qword_1EC894F50];
    *v5 = 0;
    *(v5 + 1) = 0;
    sub_1D5B68374(v15, &v4[qword_1EC894F58]);
    v14.receiver = v4;
    v14.super_class = v3;
    v6 = objc_msgSendSuper2(&v14, sel_init);
    sub_1D5B68374(v6 + qword_1EC894F58, v11);
    v7 = v12;
    v8 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    v9 = *(v8 + 16);
    v10 = v6;
    v9(v6, v7, v8);

    __swift_destroy_boxed_opaque_existential_1(v15);
    __swift_destroy_boxed_opaque_existential_1(v11);
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D5DFFA8C@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5534C(0, &qword_1EDF1A7A0);
  result = sub_1D725AABC();
  if (result)
  {
    v8 = result;
    v9 = a2(0);
    result = swift_allocObject();
    *(result + 16) = v8;
    a4[3] = v9;
    a4[4] = a3;
    *a4 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D5DFFB30@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5534C(0, &qword_1EDF1A7A0);
  result = sub_1D725AABC();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF3F7F0);
  result = sub_1D725AACC();
  if (!v11)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF3EE20);
  result = sub_1D725AACC();
  if (v9)
  {
    v6 = type metadata accessor for PuzzleNavigationBarThemeProvider();
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    sub_1D5B63F14(&v10, v7 + 24);
    result = sub_1D5B63F14(&v8, v7 + 64);
    a2[3] = v6;
    a2[4] = &off_1F51453B8;
    *a2 = v7;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D5DFFCB8()
{
  sub_1D5B483C4(0, &qword_1EDF1FE20);
  sub_1D725B53C();

  type metadata accessor for DebugCommandHandler();
  sub_1D725B52C();

  type metadata accessor for WebEmbedDatastoreRadarCommandHandler();
  sub_1D725B52C();

  type metadata accessor for WebEmbedDataSourceRadarCommandHandler();
  sub_1D725B52C();

  type metadata accessor for WebEmbedDatastoreCopyToClipboardCommandHandler();
  sub_1D725B52C();

  type metadata accessor for CopySportsEventUmcIdCommandHandler();
  sub_1D725B52C();

  type metadata accessor for ResetPuzzleProgressCommandHandler();
  sub_1D725B52C();

  type metadata accessor for SetPuzzleStreakEligibleHandler();
  sub_1D725B52C();
}

uint64_t sub_1D5DFFE98@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF3FEB8);
  result = sub_1D725AACC();
  if (!v38)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF3EFA0);
  result = sub_1D725AACC();
  if (!v35)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF3EA80);
  result = sub_1D725AACC();
  v5 = v33;
  if (!v33)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v24 = v34;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF3E738);
  result = sub_1D725AACC();
  v6 = v31;
  if (!v31)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v22 = v32;
  v23 = v35;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF3E5E0);
  result = sub_1D725AACC();
  v7 = v29;
  if (!v29)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = v36;
  v21 = a2;
  v9 = v30;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF3DED8);
  result = sub_1D725AACC();
  v10 = v27;
  if (v27)
  {
    v11 = v28;
    v12 = type metadata accessor for DebugGroupLayoutViewFactory();
    v13 = objc_allocWithZone(v12);
    sub_1D5B68374(v37, &v13[OBJC_IVAR____TtC8NewsFeed27DebugGroupLayoutViewFactory_colorPaletteProvider]);
    sub_1D5B68374(v37, v26);
    type metadata accessor for FeedItemCellSelectionRenderer();
    v14 = swift_allocObject();
    sub_1D5B63F14(v26, v14 + 16);
    *&v13[OBJC_IVAR____TtC8NewsFeed27DebugGroupLayoutViewFactory_cellSelectionRenderer] = v14;
    v15 = &v13[OBJC_IVAR____TtC8NewsFeed27DebugGroupLayoutViewFactory_imageHeadlineViewRenderer];
    *v15 = v23;
    *(v15 + 1) = v8;
    v16 = &v13[OBJC_IVAR____TtC8NewsFeed27DebugGroupLayoutViewFactory_coverIssueViewRenderer];
    *v16 = v5;
    *(v16 + 1) = v24;
    v17 = &v13[OBJC_IVAR____TtC8NewsFeed27DebugGroupLayoutViewFactory_coverChannelViewRenderer];
    *v17 = v6;
    *(v17 + 1) = v22;
    v18 = &v13[OBJC_IVAR____TtC8NewsFeed27DebugGroupLayoutViewFactory_formatLayoutViewRenderer];
    *v18 = v7;
    *(v18 + 1) = v9;
    v19 = &v13[OBJC_IVAR____TtC8NewsFeed27DebugGroupLayoutViewFactory_internalErrorViewRenderer];
    *v19 = v10;
    *(v19 + 1) = v11;
    v25.receiver = v13;
    v25.super_class = v12;
    v20 = objc_msgSendSuper2(&v25, sel_init);
    result = __swift_destroy_boxed_opaque_existential_1(v37);
    v21[3] = v12;
    v21[4] = &off_1F51E3AE8;
    *v21 = v20;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1D5E001D4(void *a1)
{
  sub_1D5B68374(a1, v24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FeedFontManager();
  result = sub_1D725AABC();
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5A498(0, &qword_1EDF1AB00);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5534C(0, &qword_1EDF1A978);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF42D70);
  result = sub_1D725AACC();
  v6 = v22;
  if (!v22)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF412B0);
  result = sub_1D725AACC();
  if (!v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF3DE10);
  result = sub_1D725AACC();
  if (!v19)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF439D0);
  result = sub_1D725AACC();
  if (!v17)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF3F6D0);
  result = sub_1D725AACC();
  if (!v15)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF21CC0);
  sub_1D725AACC();
  if (v10)
  {
    sub_1D5B63F14(&v9, &v11);
  }

  else
  {
    v13 = &protocol witness table for EmptyRadarAttachmentProvider;
    v12 = &type metadata for EmptyRadarAttachmentProvider;
    *&v11 = MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for DebugCommandHandler();
  v8 = swift_allocObject();
  sub_1D5B63F14(v24, (v8 + 2));
  v8[7] = v3;
  v8[8] = v4;
  v8[9] = v5;
  v8[10] = v6;
  v8[11] = v7;
  sub_1D5B63F14(&v20, (v8 + 12));
  sub_1D5B63F14(&v18, (v8 + 17));
  sub_1D5B63F14(&v16, (v8 + 22));
  sub_1D5B63F14(&v14, (v8 + 27));
  sub_1D5B63F14(&v11, (v8 + 32));
  return v8;
}

uint64_t sub_1D5E005B0(void *a1, void (*a2)(void), void (*a3)(void), void (*a4)(void))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a2(0);
  result = sub_1D725AABC();
  if (result)
  {
    v9 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    a3(0);
    result = sub_1D725AABC();
    if (result)
    {
      v10 = result;
      a4(0);
      result = swift_allocObject();
      *(result + 16) = v9;
      *(result + 24) = v10;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5E00700()
{
  type metadata accessor for CopySportsEventUmcIdCommandHandler();

  return swift_allocObject();
}

uint64_t sub_1D5E007AC(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for DebugCommandHandler();
  result = sub_1D725AABC();
  if (!result)
  {
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    return result;
  }

  swift_getObjectType();
  if (qword_1EDF3B108 != -1)
  {
    swift_once();
  }

  sub_1D5B471E8(&qword_1EDF2D028, 255, type metadata accessor for DebugCommandHandler);
  sub_1D725D98C();
  if (qword_1EDF3B0C0 != -1)
  {
    swift_once();
  }

  sub_1D725D98C();
  if (qword_1EDF3B140 != -1)
  {
    swift_once();
  }

  sub_1D725D98C();
  if (qword_1EDF3B0F0 != -1)
  {
    swift_once();
  }

  sub_1D725D98C();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for WebEmbedDatastoreRadarCommandHandler();
  result = sub_1D725AABC();
  if (!result)
  {
    goto LABEL_30;
  }

  if (qword_1EDF3AB50 != -1)
  {
    swift_once();
  }

  type metadata accessor for WebEmbedDataVisualization();
  sub_1D5B471E8(qword_1EDF1D060, 255, type metadata accessor for WebEmbedDatastoreRadarCommandHandler);
  sub_1D725D98C();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for WebEmbedDatastoreCopyToClipboardCommandHandler();
  result = sub_1D725AABC();
  if (!result)
  {
    goto LABEL_31;
  }

  if (qword_1EDF3AB38 != -1)
  {
    swift_once();
  }

  sub_1D5B471E8(&qword_1EDF1C098, 255, type metadata accessor for WebEmbedDatastoreCopyToClipboardCommandHandler);
  sub_1D725D98C();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for WebEmbedDataSourceRadarCommandHandler();
  result = sub_1D725AABC();
  if (!result)
  {
    goto LABEL_32;
  }

  if (qword_1EDF3AD48 != -1)
  {
    swift_once();
  }

  sub_1D5B5534C(0, &qword_1EDF1A870);
  sub_1D5B471E8(qword_1EDF1CCB8, 255, type metadata accessor for WebEmbedDataSourceRadarCommandHandler);
  sub_1D725D98C();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for CopySportsEventUmcIdCommandHandler();
  result = sub_1D725AABC();
  if (!result)
  {
    goto LABEL_33;
  }

  if (qword_1EDF3AD10 != -1)
  {
    swift_once();
  }

  sub_1D5B53DE8(0, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  sub_1D5B471E8(&unk_1EDF1DFE8, 255, type metadata accessor for CopySportsEventUmcIdCommandHandler);
  sub_1D725D98C();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ResetPuzzleProgressCommandHandler();
  result = sub_1D725AABC();
  if (!result)
  {
    goto LABEL_34;
  }

  if (qword_1EDF3AD00 != -1)
  {
    swift_once();
  }

  sub_1D5B5534C(0, &qword_1EDF3C750);
  sub_1D5B471E8(qword_1EDF1E298, 255, type metadata accessor for ResetPuzzleProgressCommandHandler);
  sub_1D725D98C();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SetPuzzleStreakEligibleHandler();
  result = sub_1D725AABC();
  if (!result)
  {
    goto LABEL_35;
  }

  if (qword_1EDF3ACE8 != -1)
  {
    swift_once();
  }

  sub_1D5B471E8(qword_1EDF20260, 255, type metadata accessor for SetPuzzleStreakEligibleHandler);
  sub_1D725D98C();
}

uint64_t sub_1D5E00FB0(void *a1)
{
  v2 = type metadata accessor for TagMastheadViewStyler();
  v3 = swift_allocObject();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF439F8);

  result = sub_1D725AA8C();
  if (v21)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    result = sub_1D725AA8C();
    if (v19)
    {
      v17[3] = v2;
      v17[4] = &off_1F512EBC8;
      v17[0] = v3;
      type metadata accessor for TagMastheadViewRenderer();
      v5 = swift_allocObject();
      v6 = __swift_mutable_project_boxed_opaque_existential_1(v17, v2);
      v7 = *(v2 - 8);
      v8 = *(v7 + 64);
      MEMORY[0x1EEE9AC00](v6, v6);
      v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
      v10 = *(v7 + 16);
      v10(&v17[-1] - v9);
      v11 = *(&v17[-1] - v9);
      v5[5] = v2;
      v5[6] = &off_1F512EBC8;
      v5[2] = v11;
      sub_1D5B63F14(&v20, (v5 + 7));
      sub_1D5B63F14(&v18, (v5 + 12));
      __swift_destroy_boxed_opaque_existential_1(v17);
      v21 = v2;
      v22 = &off_1F512EBC8;
      *&v20 = v3;
      type metadata accessor for TagMastheadViewLayoutAttributesFactory();
      v12 = swift_allocObject();
      v13 = __swift_mutable_project_boxed_opaque_existential_1(&v20, v2);
      MEMORY[0x1EEE9AC00](v13, v13);
      v10(&v17[-1] - v9);
      v14 = *(&v17[-1] - v9);
      *(v12 + 40) = v2;
      *(v12 + 48) = &off_1F512EBC8;
      *(v12 + 16) = v14;
      *(v12 + 56) = xmmword_1D72745B0;

      __swift_destroy_boxed_opaque_existential_1(&v20);

      v15 = sub_1D5E01624(v5, v12);

      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5E012A4()
{
  v0 = sub_1D725B88C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B483C4(0, &qword_1EDF439F8);
  sub_1D725B53C();
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6AD0], v0);
  sub_1D725A71C();

  return (*(v1 + 8))(v4, v0);
}

id sub_1D5E01470(uint64_t a1, uint64_t a2, char *a3)
{
  ObjectType = swift_getObjectType();
  v18[3] = type metadata accessor for TagMastheadViewRenderer();
  v18[4] = &off_1F512EB68;
  v18[0] = a1;
  v17[3] = type metadata accessor for TagMastheadViewLayoutAttributesFactory();
  v17[4] = &off_1F512EBE0;
  v17[0] = a2;
  v7 = OBJC_IVAR____TtC8NewsFeed23TagMastheadViewProvider_model;
  v8 = type metadata accessor for TagMastheadModel();
  (*(*(v8 - 8) + 56))(&a3[v7], 1, 1, v8);
  v9 = &a3[OBJC_IVAR____TtC8NewsFeed23TagMastheadViewProvider_parallaxX];
  *v9 = 0;
  v9[8] = 1;
  v10 = OBJC_IVAR____TtC8NewsFeed23TagMastheadViewProvider_mastheadView;
  *&a3[v10] = [objc_allocWithZone(type metadata accessor for TagMastheadView()) initWithFrame_];
  v11 = OBJC_IVAR____TtC8NewsFeed23TagMastheadViewProvider_margins;
  v12 = *MEMORY[0x1E69D7DA8];
  v13 = sub_1D725E11C();
  (*(*(v13 - 8) + 104))(&a3[v11], v12, v13);
  sub_1D5B68374(v18, &a3[OBJC_IVAR____TtC8NewsFeed23TagMastheadViewProvider_renderer]);
  sub_1D5B68374(v17, &a3[OBJC_IVAR____TtC8NewsFeed23TagMastheadViewProvider_layoutAttributesFactory]);
  v16.receiver = a3;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v17);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return v14;
}

id sub_1D5E01624(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v20 = type metadata accessor for TagMastheadViewRenderer();
  v21 = &off_1F512EB68;
  v19[0] = a1;
  v17 = v4;
  v18 = &off_1F512EBE0;
  v16[0] = a2;
  v5 = objc_allocWithZone(type metadata accessor for TagMastheadViewProvider());
  v6 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
  MEMORY[0x1EEE9AC00](v6, v6);
  v8 = (v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8);
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
  MEMORY[0x1EEE9AC00](v10, v10);
  v12 = (v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = sub_1D5E01470(*v8, *v12, v5);
  __swift_destroy_boxed_opaque_existential_1(v16);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v14;
}

void sub_1D5E01854()
{
  if (!qword_1EDF17E70)
  {
    type metadata accessor for WebEmbedStateMachineEvent(255);
    sub_1D5B471E8(qword_1EDF0BAD0, 255, type metadata accessor for WebEmbedStateMachineEvent);
    v0 = sub_1D725AB7C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF17E70);
    }
  }
}

uint64_t sub_1D5E018F4(uint64_t a1, uint64_t a2)
{
  sub_1D5E01820(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5E01958(uint64_t a1)
{
  sub_1D5E01820(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1D5E019B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v27 = a2;
  v7 = sub_1D726307C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v28[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D726304C();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v14 = sub_1D7261B2C();
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v28[3] = type metadata accessor for WebEmbedConfigurationProvider();
  v28[4] = &off_1F51C6BA0;
  v28[0] = a3;
  sub_1D5E01D70();
  swift_allocObject();
  v16 = sub_1D725BE5C();
  v17 = MEMORY[0x1E69E6B60];
  sub_1D5E01E20(0, &qword_1EDF1A580, sub_1D5E01D70, type metadata accessor for os_unfair_lock_s, MEMORY[0x1E69E6B60]);
  v18 = swift_allocObject();
  *(v18 + 24) = 0;
  *(v18 + 16) = v16;
  a4[15] = v18;
  sub_1D5E01E20(0, &qword_1EDF1A568, sub_1D5E01EA4, type metadata accessor for os_unfair_lock_s, v17);
  v19 = swift_allocObject();
  *(v19 + 24) = 0;
  *(v19 + 16) = MEMORY[0x1E69E7CC8];
  a4[16] = v19;
  a4[2] = a1;
  v20 = v27;
  sub_1D5B68374(v27, (a4 + 3));
  sub_1D5B68374(v28, (a4 + 8));
  sub_1D5B5A498(0, &qword_1EDF1AA30);

  sub_1D7261AFC();
  sub_1D726303C();
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8090], v7);
  v21 = sub_1D72630BC();
  a4[13] = v21;
  v22 = objc_allocWithZone(MEMORY[0x1E696ADC8]);
  v23 = v21;
  v24 = [v22 init];
  v25 = sub_1D726203C();
  [v24 setName_];

  [v24 setMaxConcurrentOperationCount_];
  [v24 setQualityOfService_];
  [v24 setUnderlyingQueue_];

  __swift_destroy_boxed_opaque_existential_1(v20);
  __swift_destroy_boxed_opaque_existential_1(v28);
  a4[14] = v24;
  return a4;
}

void sub_1D5E01D70()
{
  if (!qword_1EDF3B8B0)
  {
    type metadata accessor for WebEmbedImageCacheKey();
    type metadata accessor for WebEmbedImage();
    sub_1D5B471E8(qword_1EDF28C58, 255, type metadata accessor for WebEmbedImageCacheKey);
    v0 = sub_1D725BE6C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3B8B0);
    }
  }
}

void sub_1D5E01E20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1D5E01EA4()
{
  if (!qword_1EDF1B780)
  {
    type metadata accessor for UIUserInterfaceStyle(255);
    sub_1D5E01F54();
    sub_1D5B471E8(&qword_1EDF1A920, 255, type metadata accessor for UIUserInterfaceStyle);
    v0 = sub_1D7261E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1B780);
    }
  }
}

void sub_1D5E01F54()
{
  if (!qword_1EDF1AE48)
  {
    sub_1D5B5A498(255, &unk_1EDF1A7D0);
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1AE48);
    }
  }
}

unint64_t sub_1D5E01FBC()
{
  result = qword_1EC87F760;
  if (!qword_1EC87F760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87F760);
  }

  return result;
}

uint64_t sub_1D5E02024(uint64_t a1)
{
  if (a1 < 0)
  {
    v1 = (a1 & 0x7FFFFFFFFFFFFFFFLL) + 24;
  }

  else
  {
    v1 = a1 + 16;
  }

  swift_beginAccess();
  v2 = *(*v1 + 16);
  if (!v2)
  {
    goto LABEL_26;
  }

  v3 = *(*v1 + 8 * v2 + 24);
  if (v3 < 0)
  {
    v8 = v3 & 0x7FFFFFFFFFFFFFFFLL;
    v9 = *(v8 + 16);
    v10 = *(v8 + 24);

    v11 = sub_1D5C73AF8(v9, v10);
    if (v12)
    {
      if (v11 == 32 && v12 == 0xE100000000000000)
      {
        goto LABEL_24;
      }

      goto LABEL_29;
    }
  }

  else
  {
    v4 = qword_1EC87D880;

    if (v4 != -1)
    {
      swift_once();
    }

    v5 = qword_1EC88D0F0;
    v6 = sub_1D726210C();
    LOBYTE(v5) = sub_1D5BE240C(v6, v7, v5);

    if ((v5 & 1) == 0)
    {
      goto LABEL_25;
    }

    swift_beginAccess();

    v15 = sub_1D6C14BB8(v14);
    v17 = v16;

    v18 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v18 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (!v18)
    {

      goto LABEL_26;
    }

    v19 = sub_1D5C73AF8(v15, v17);
    v21 = v20;

    if (v21)
    {
      if (v19 == 32 && v21 == 0xE100000000000000)
      {
LABEL_24:

LABEL_25:

LABEL_26:
        v22 = 0;
        return v22 & 1;
      }

LABEL_29:
      v24 = sub_1D72646CC();

      v22 = v24 ^ 1;
      return v22 & 1;
    }
  }

  v22 = 1;
  return v22 & 1;
}

uint64_t sub_1D5E0223C(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
    v8 = a2 & 0x7FFFFFFFFFFFFFFFLL;
    swift_beginAccess();
    v9 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v8 + 24) = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_1D698BB78(0, *(v9 + 2) + 1, 1, v9);
      *(v8 + 24) = v9;
    }

    v12 = *(v9 + 2);
    v11 = *(v9 + 3);
    if (v12 >= v11 >> 1)
    {
      v9 = sub_1D698BB78((v11 > 1), v12 + 1, 1, v9);
    }

    *(v9 + 2) = v12 + 1;
    *&v9[8 * v12 + 32] = a1;
    *(v8 + 24) = v9;
  }

  else
  {
    swift_beginAccess();
    v4 = *(a2 + 16);
    v5 = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v4;
    if ((v5 & 1) == 0)
    {
      v4 = sub_1D698BB78(0, *(v4 + 2) + 1, 1, v4);
      *(a2 + 16) = v4;
    }

    v7 = *(v4 + 2);
    v6 = *(v4 + 3);
    if (v7 >= v6 >> 1)
    {
      v4 = sub_1D698BB78((v6 > 1), v7 + 1, 1, v4);
    }

    *(v4 + 2) = v7 + 1;
    *&v4[8 * v7 + 32] = a1;
    *(a2 + 16) = v4;
  }

  swift_endAccess();
}

uint64_t sub_1D5E023B4()
{
  sub_1D5E025D0();
  v2 = v1 - 8;
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5E02634();
  (*(*(v6 - 8) + 16))(v5, v0, v6);
  v7 = *(v2 + 44);
  sub_1D5E02684();
  sub_1D7262BFC();
  sub_1D7262C5C();
  if (*&v5[v7] == v16[0])
  {
LABEL_2:
    v8 = 0;
    goto LABEL_15;
  }

  while (1)
  {
    v9 = sub_1D7262D0C();
    v11 = *v10;

    v9(v16, 0);
    sub_1D7262C6C();
    if ((v11 & 0x8000000000000000) == 0)
    {

      goto LABEL_5;
    }

    if (sub_1D726210C() == 6648432 && v12 == 0xE300000000000000)
    {
      break;
    }

    v14 = sub_1D72646CC();

    if (v14)
    {
      goto LABEL_14;
    }

LABEL_5:
    sub_1D7262C5C();
    if (*&v5[v7] == v16[0])
    {
      goto LABEL_2;
    }
  }

LABEL_14:
  v8 = 1;
LABEL_15:
  sub_1D5E026DC(v5);
  return v8;
}

void sub_1D5E025D0()
{
  if (!qword_1EDF04208)
  {
    sub_1D5E02634();
    sub_1D5E02684();
    v0 = sub_1D7263FAC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF04208);
    }
  }
}

void sub_1D5E02634()
{
  if (!qword_1EDF17AD0)
  {
    v0 = sub_1D725B8FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF17AD0);
    }
  }
}

unint64_t sub_1D5E02684()
{
  result = qword_1EDF17AD8;
  if (!qword_1EDF17AD8)
  {
    sub_1D5E02634();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF17AD8);
  }

  return result;
}

uint64_t sub_1D5E026DC(uint64_t a1)
{
  sub_1D5E025D0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FormatProgressPieOptions.radius.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

uint64_t FormatProgressPieOptions.clockwise.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_1D5C75A4C(v2, v3, v4);
}

uint64_t sub_1D5E027E4(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  sub_1D5C75A4C(*a1, v4, v5);
  result = sub_1D5D2F2C8(v6, v7, v8);
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  return result;
}

uint64_t FormatProgressPieOptions.clockwise.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_1D5D2F2C8(*(v1 + 8), *(v1 + 16), *(v1 + 24));
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  return result;
}

uint64_t FormatProgressPieOptions.minPercentage.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 40) = v2;
  return result;
}

uint64_t FormatProgressPieOptions.maxPercentage.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 48) = v2;
  return result;
}

void FormatProgressPieOptions.value(contextLayoutOptions:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + 32);
  v10 = *(v2 + 40);
  v11 = *(v2 + 48);

  v12 = sub_1D5E02AFC(a1, v5);

  if (!v3)
  {
    v18 = v11;
    sub_1D5C75A4C(v6, v7, v8);
    v13 = FormatBoolean.value(contextLayoutOptions:)(a1);
    sub_1D5D2F2C8(v6, v7, v8);
    if (v9)
    {
      v14 = v10;
      v15 = sub_1D5E02AFC(a1, v9);
    }

    else
    {
      v15 = 0.0;
      v14 = v10;
    }

    v16 = sub_1D5E02AFC(a1, v14);

    v17 = sub_1D5E02AFC(a1, v18);

    *a2 = v12;
    *(a2 + 8) = v13 & 1;
    *(a2 + 16) = v15;
    *(a2 + 24) = v16;
    *(a2 + 32) = v17;
  }
}

double sub_1D5E02AFC(uint64_t a1, uint64_t a2)
{
  sub_1D5E04C78(0, &qword_1EDF3BA08);
  v5 = swift_allocBox();
  sub_1D725B8EC();
  sub_1D5E04C78(0, &qword_1EDF3BA00);
  swift_allocBox();
  sub_1D725B8EC();
  v20 = *(a2 + 16);
  if (v20)
  {
    v6 = 0;
    while (1)
    {
      v7 = a2 + 32 + 16 * v6;
      v8 = *v7;
      if (*(v7 + 8))
      {
        break;
      }

      v21 = *v7;

      FormatFloat.value(contextLayoutOptions:)(a1);
      if (v2)
      {

        goto LABEL_37;
      }

      swift_beginAccess();
      sub_1D725B8BC();
      swift_endAccess();

LABEL_6:
      if (++v6 == v20)
      {
        goto LABEL_28;
      }
    }

    v9 = *v7;
    swift_beginAccess();
    sub_1D725B8AC();
    swift_endAccess();
    if (LOBYTE(v21) == 6)
    {
LABEL_3:
      LOBYTE(v21) = v9;
LABEL_4:
      swift_beginAccess();
      sub_1D725B8BC();
LABEL_5:
      swift_endAccess();
      goto LABEL_6;
    }

    if (v9 >= 4)
    {
      if (v9 == 4)
      {
        LOBYTE(v21) = 4;
        goto LABEL_4;
      }

      v10 = 1;
      if (LOBYTE(v21) <= 3u)
      {
LABEL_11:
        v11 = qword_1D7274A68[LOBYTE(v21)];
        if (v9 > 3)
        {
LABEL_12:
          v12 = 2;
LABEL_20:
          if (((v11 >= v12) & ~v10) == 0)
          {
            while (1)
            {
              swift_beginAccess();
              sub_1D725B8AC();
              swift_endAccess();
              if (LOBYTE(v21) > 3uLL || qword_1D7274A68[LOBYTE(v21)] >= v12)
              {
                break;
              }

              sub_1D5E03FEC(v5, a2);
              if (v2)
              {
                goto LABEL_36;
              }
            }

            if (v9 == 5)
            {
              swift_beginAccess();
              sub_1D725B8AC();
              swift_endAccess();
              if (LOBYTE(v21) != 4)
              {
                goto LABEL_35;
              }

              swift_beginAccess();
              sub_1D725B89C();
              goto LABEL_5;
            }
          }

          goto LABEL_3;
        }

LABEL_19:
        v12 = qword_1D7274A68[LOBYTE(v8) & 3];
        goto LABEL_20;
      }
    }

    else
    {
      v10 = 0;
      if (LOBYTE(v21) <= 3u)
      {
        goto LABEL_11;
      }
    }

    v11 = 2;
    if (v9 > 3)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

LABEL_28:
  while (1)
  {
    swift_beginAccess();
    v13 = sub_1D725B8CC();
    swift_endAccess();
    if (v13)
    {
      break;
    }

    sub_1D5E03FEC(v5, a2);
    if (v2)
    {
      goto LABEL_36;
    }
  }

  swift_beginAccess();
  sub_1D725B89C();
  swift_endAccess();
  if ((v22 & 1) == 0)
  {
    v3 = v21;
    swift_beginAccess();
    v14 = sub_1D725B8CC();
    swift_endAccess();
    if (v14)
    {

      return v3;
    }
  }

LABEL_35:
  type metadata accessor for FormatLayoutError();
  sub_1D5D285FC();
  swift_allocError();
  v16 = v15;
  *v15 = sub_1D6936F98(a2);
  v16[1] = v17;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
LABEL_36:

LABEL_37:

  return v3;
}

uint64_t sub_1D5E03020(uint64_t a1, uint64_t a2)
{
  v60 = a1;
  sub_1D5E04C00();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v59 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for FormatOption();
  v7 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58, v8);
  v53 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v52 = &v51 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v51 - v15;
  sub_1D5E04C78(0, &qword_1EDF3B9F8);
  v62 = v17;
  v18 = swift_allocBox();
  v61 = v19;
  sub_1D725B8EC();
  v20 = &type metadata for FormatEquationOperator;
  sub_1D5E04C78(0, &qword_1EDF3BA00);
  v22 = v21;
  v23 = swift_allocBox();
  sub_1D725B8EC();
  v64 = *(a2 + 16);
  if (!v64)
  {
LABEL_39:
    while (1)
    {
      swift_beginAccess();
      v44 = sub_1D725B8CC();
      swift_endAccess();
      if (v44)
      {
        break;
      }

      sub_1D5E0421C(v18, a2);
      if (v2)
      {
        goto LABEL_45;
      }
    }

    swift_beginAccess();
    sub_1D725B89C();
    swift_endAccess();
    if ((v67 & 1) == 0)
    {
      v20 = v66;
      swift_beginAccess();
      v45 = sub_1D725B8CC();
      swift_endAccess();
      if (v45)
      {

        return v20;
      }
    }

LABEL_44:
    type metadata accessor for FormatLayoutError();
    sub_1D5D285FC();
    swift_allocError();
    v20 = v48;
    *v48 = sub_1D6937104(a2);
    *(v20 + 8) = v49;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_45:

    goto LABEL_46;
  }

  v54 = v16;
  v55 = v23;
  v24 = 0;
  v65 = a2 + 32;
  v56 = (v7 + 56);
  v57 = v18;
  v68[4] = v22;
  v63 = a2;
  while (1)
  {
    v26 = v65 + 24 * v24;
    v27 = *v26;
    if ((*(v26 + 17) & 1) == 0)
    {
      break;
    }

    v20 = *v26;
    swift_beginAccess();
    sub_1D725B8AC();
    swift_endAccess();
    if (v66 == 6)
    {
      LOBYTE(v66) = v27;
LABEL_9:
      swift_beginAccess();
      sub_1D725B8BC();
      swift_endAccess();
      a2 = v63;
      goto LABEL_5;
    }

    if (v20 >= 4)
    {
      if (v20 == 4)
      {
        LOBYTE(v66) = 4;
        goto LABEL_9;
      }

      v38 = 1;
      if (v66 <= 3u)
      {
LABEL_16:
        v39 = qword_1D7274A68[v66];
        if (v20 > 3)
        {
          goto LABEL_17;
        }

        goto LABEL_27;
      }
    }

    else
    {
      v38 = 0;
      if (v66 <= 3u)
      {
        goto LABEL_16;
      }
    }

    v39 = 2;
    if (v20 > 3)
    {
LABEL_17:
      v40 = 2;
      goto LABEL_28;
    }

LABEL_27:
    v40 = qword_1D7274A68[v27 & 3];
LABEL_28:
    a2 = v63;
    if (((v39 >= v40) & ~v38) != 0)
    {
      goto LABEL_36;
    }

    while (1)
    {
      swift_beginAccess();
      sub_1D725B8AC();
      swift_endAccess();
      if (v66 > 3uLL || qword_1D7274A68[v66] >= v40)
      {
        break;
      }

      sub_1D5E0421C(v18, a2);
      if (v2)
      {
        goto LABEL_45;
      }
    }

    if (v20 != 5)
    {
LABEL_36:
      LOBYTE(v66) = v20;
      swift_beginAccess();
      sub_1D725B8BC();
    }

    else
    {
      swift_beginAccess();
      sub_1D725B8AC();
      swift_endAccess();
      if (v66 != 4)
      {
        goto LABEL_44;
      }

      swift_beginAccess();
      sub_1D725B89C();
    }

    swift_endAccess();
LABEL_5:
    if (++v24 == v64)
    {
      goto LABEL_39;
    }
  }

  v20 = *(v26 + 8);
  v28 = *(v26 + 16);
  if ((v28 & 1) == 0)
  {
    v25 = *v26;
LABEL_4:
    v66 = v25;
    swift_beginAccess();
    sub_1D725B8BC();
    swift_endAccess();
    sub_1D5E04C68(v27, v20, v28, 0);
    a2 = v63;
    goto LABEL_5;
  }

  v29 = *(v60 + 40);
  v30 = *(v29 + 16);
  swift_beginAccess();
  v31 = *(*(v30 + 16) + 16);
  sub_1D5E04C58(v27, v20, v28, 0);
  sub_1D5C75A4C(v27, v20, 1);
  if (v31 && (sub_1D5B69D90(v27, v20), (v32 & 1) != 0))
  {
    swift_endAccess();
    v33 = v53;
    sub_1D5D25108(v53);
    v34 = v33;
    v35 = v52;
    sub_1D5D247E0(v34, v52);
    v36 = v35;
    v37 = v59;
    sub_1D5D247E0(v36, v59);
  }

  else
  {
    swift_endAccess();
    swift_beginAccess();
    if (!*(*(v29 + 24) + 16) || (sub_1D5B69D90(v27, v20), (v41 & 1) == 0))
    {
      swift_endAccess();
      v46 = v59;
      (*v56)(v59, 1, 1, v58);
      sub_1D5D280B8(v46, sub_1D5E04C00);
      type metadata accessor for FormatLayoutError();
      sub_1D5D285FC();
      swift_allocError();
      *v47 = v27;
      v47[1] = v20;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_1D5E04C68(v27, v20, v28, 0);

      goto LABEL_46;
    }

    swift_endAccess();
    v37 = v59;
    sub_1D5D25108(v59);
  }

  v18 = v57;
  (*v56)(v37, 0, 1, v58);
  sub_1D5E04C68(v27, v20, v28, 0);
  v42 = v54;
  sub_1D5D247E0(v37, v54);
  v68[0] = *(v42 + 16);

  v43 = sub_1D5FD0C58(v68, v60, v42);
  if (!v2)
  {
    v25 = v43;
    sub_1D5D280B8(v42, type metadata accessor for FormatOption);

    goto LABEL_4;
  }

  sub_1D5E04C68(v27, v20, v28, 0);
  sub_1D5D280B8(v42, type metadata accessor for FormatOption);

LABEL_46:

  return v20;
}

uint64_t sub_1D5E03A24()
{
  v1 = *v0;
  v2 = 0x737569646172;
  v3 = 0x6372655070657473;
  v4 = 0x65637265506E696DLL;
  if (v1 != 3)
  {
    v4 = 0x656372655078616DLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7369776B636F6C63;
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

uint64_t sub_1D5E03AE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5E04A34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5E03B0C(uint64_t a1)
{
  v2 = sub_1D5E045F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5E03B48(uint64_t a1)
{
  v2 = sub_1D5E045F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatProgressPieOptionsResolved.encode(to:)(void *a1)
{
  sub_1D5E04648(0, &qword_1EC87F7F0, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E045F4();
  sub_1D7264B5C();
  v15 = 0;
  sub_1D726441C();
  if (!v1)
  {
    v14 = 1;
    sub_1D726440C();
    v13 = 2;
    sub_1D726441C();
    v12 = 3;
    sub_1D726441C();
    v11 = 4;
    sub_1D726441C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t FormatProgressPieOptionsResolved.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5E04648(0, &qword_1EC87F800, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E045F4();
  sub_1D7264B0C();
  if (!v2)
  {
    v27 = 0;
    sub_1D72642DC();
    v12 = v11;
    v26 = 1;
    v22 = sub_1D72642CC() & 1;
    v25 = 2;
    sub_1D72642DC();
    v14 = v13;
    v24 = 3;
    sub_1D72642DC();
    v16 = v15;
    v23 = 4;
    sub_1D72642DC();
    v19 = v18;
    (*(v7 + 8))(v10, v6);
    v20 = v22;
    *a2 = v12;
    *(a2 + 8) = v20;
    *(a2 + 16) = v14;
    *(a2 + 24) = v16;
    *(a2 + 32) = v19;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D5E03FEC(uint64_t a1, uint64_t a2)
{
  sub_1D5E04C78(0, &qword_1EDF3BA08);
  swift_projectBox();
  sub_1D5E04C78(0, &qword_1EDF3BA00);
  swift_projectBox();
  swift_beginAccess();
  sub_1D725B89C();
  swift_endAccess();
  if ((v8 & 1) != 0 || (swift_beginAccess(), sub_1D725B89C(), swift_endAccess(), (swift_beginAccess(), sub_1D725B89C(), swift_endAccess(), v7 > 2u) && (v7 - 4 < 2 || v7 != 3)))
  {
    type metadata accessor for FormatLayoutError();
    sub_1D5D285FC();
    swift_allocError();
    v4 = v3;
    *v3 = sub_1D6936F98(a2);
    v4[1] = v5;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  else
  {
    swift_beginAccess();
    sub_1D725B8BC();
    return swift_endAccess();
  }
}

uint64_t sub_1D5E0421C(uint64_t a1, uint64_t a2)
{
  sub_1D5E04C78(0, &qword_1EDF3B9F8);
  swift_projectBox();
  sub_1D5E04C78(0, &qword_1EDF3BA00);
  swift_projectBox();
  swift_beginAccess();
  sub_1D725B89C();
  swift_endAccess();
  if (v8)
  {
    goto LABEL_3;
  }

  swift_beginAccess();
  sub_1D725B89C();
  swift_endAccess();
  swift_beginAccess();
  sub_1D725B89C();
  result = swift_endAccess();
  if (v7 > 2u)
  {
    if (v7 - 4 >= 2 && v7 == 3)
    {
      goto LABEL_15;
    }

LABEL_3:
    type metadata accessor for FormatLayoutError();
    sub_1D5D285FC();
    swift_allocError();
    v4 = v3;
    *v3 = sub_1D6937104(a2);
    v4[1] = v5;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  if (v7)
  {
    if (v7 == 1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (!__OFADD__(v7, v7))
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  if ((v7 * v7) >> 64 == (v7 * v7) >> 63)
  {
LABEL_15:
    swift_beginAccess();
    sub_1D725B8BC();
    return swift_endAccess();
  }

  __break(1u);
  __break(1u);
  return result;
}

uint64_t _s8NewsFeed24FormatProgressPieOptionsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v17 = *(a1 + 48);
  v18 = *(a1 + 40);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 40);
  v16 = *(a2 + 48);

  v11 = sub_1D633A310(v2, v6);

  if ((v11 & 1) == 0)
  {
    return 0;
  }

  v22 = v3;
  v23 = v4;
  v24 = v5;
  v19 = v7;
  v20 = v8;
  v21 = v9;
  sub_1D5C75A4C(v3, v4, v5);
  sub_1D5C75A4C(v7, v8, v9);
  v12 = _s8NewsFeed13FormatBooleanO2eeoiySbAC_ACtFZ_0(&v22, &v19);
  sub_1D5D2F2C8(v19, v20, v21);
  sub_1D5D2F2C8(v22, v23, v24);
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  v13 = sub_1D633A310(v18, v10);

  if ((v13 & 1) == 0)
  {
    return 0;
  }

  v14 = sub_1D633A310(v17, v16);

  return v14 & 1;
}

unint64_t sub_1D5E045F4()
{
  result = qword_1EC87F7F8;
  if (!qword_1EC87F7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87F7F8);
  }

  return result;
}

void sub_1D5E04648(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5E045F4();
    v7 = a3(a1, &type metadata for FormatProgressPieOptionsResolved.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D5E046AC(uint64_t a1)
{
  result = sub_1D5E046D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5E046D4()
{
  result = qword_1EC87F808;
  if (!qword_1EC87F808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87F808);
  }

  return result;
}

unint64_t sub_1D5E04728(void *a1)
{
  a1[1] = sub_1D5E04760();
  a1[2] = sub_1D5E047B4();
  result = sub_1D5E04808();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5E04760()
{
  result = qword_1EDF25CC8;
  if (!qword_1EDF25CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF25CC8);
  }

  return result;
}

unint64_t sub_1D5E047B4()
{
  result = qword_1EDF0CEE0;
  if (!qword_1EDF0CEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0CEE0);
  }

  return result;
}

unint64_t sub_1D5E04808()
{
  result = qword_1EC87F810;
  if (!qword_1EC87F810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87F810);
  }

  return result;
}

uint64_t sub_1D5E0486C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 40))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1D5E048C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1D5E04930()
{
  result = qword_1EC87F818;
  if (!qword_1EC87F818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87F818);
  }

  return result;
}

unint64_t sub_1D5E04988()
{
  result = qword_1EC87F820;
  if (!qword_1EC87F820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87F820);
  }

  return result;
}

unint64_t sub_1D5E049E0()
{
  result = qword_1EC87F828;
  if (!qword_1EC87F828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87F828);
  }

  return result;
}

uint64_t sub_1D5E04A34(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737569646172 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7369776B636F6C63 && a2 == 0xE900000000000065 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6372655070657473 && a2 == 0xEE00656761746E65 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65637265506E696DLL && a2 == 0xED0000656761746ELL || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656372655078616DLL && a2 == 0xED0000656761746ELL)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D72646CC();

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

void sub_1D5E04C00()
{
  if (!qword_1EDF337F0)
  {
    type metadata accessor for FormatOption();
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF337F0);
    }
  }
}

uint64_t sub_1D5E04C58(uint64_t result, uint64_t a2, char a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    return sub_1D5C75A4C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1D5E04C68(uint64_t result, uint64_t a2, char a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    return sub_1D5D2F2C8(result, a2, a3 & 1);
  }

  return result;
}

void sub_1D5E04C78(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D725B8FC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t FormatRecipe.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatRecipe.overrides.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1D5C2CA18(0, &qword_1EDF2CA60, sub_1D5E04DE8, &type metadata for FormatCodingRecipeOverridesStrategy, type metadata accessor for FormatCodingDefault);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v9 - v5;
  v7 = OBJC_IVAR____TtC8NewsFeed12FormatRecipe__overrides;
  swift_beginAccess();
  sub_1D5E04E3C(v1 + v7, v6);
  return sub_1D5E1A7D4(v6, a1, type metadata accessor for FormatRecipeOverrides);
}

unint64_t sub_1D5E04DE8()
{
  result = qword_1EDF1D988[0];
  if (!qword_1EDF1D988[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF1D988);
  }

  return result;
}

uint64_t sub_1D5E04E3C(uint64_t a1, uint64_t a2)
{
  sub_1D5C2CA18(0, &qword_1EDF2CA60, sub_1D5E04DE8, &type metadata for FormatCodingRecipeOverridesStrategy, type metadata accessor for FormatCodingDefault);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5E04ED8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5C2CA18(0, &qword_1EDF2CA60, sub_1D5E04DE8, &type metadata for FormatCodingRecipeOverridesStrategy, type metadata accessor for FormatCodingDefault);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v11 - v6;
  v8 = *a1;
  v9 = OBJC_IVAR____TtC8NewsFeed12FormatRecipe__overrides;
  swift_beginAccess();
  sub_1D5E04E3C(v8 + v9, v7);
  return sub_1D5E1A7D4(v7, a2, type metadata accessor for FormatRecipeOverrides);
}

uint64_t sub_1D5E04FD0(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for FormatRecipeOverrides();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5E190A4(a1, v7, type metadata accessor for FormatRecipeOverrides);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC8NewsFeed12FormatRecipe__overrides;
  swift_beginAccess();
  sub_1D5E050FC(v7, v8 + v9);
  return swift_endAccess();
}

uint64_t FormatRecipe.overrides.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8NewsFeed12FormatRecipe__overrides;
  swift_beginAccess();
  sub_1D5E050FC(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1D5E050FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatRecipeOverrides();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5E05244(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
}

uint64_t sub_1D5E052B4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

uint64_t FormatRecipe.__allocating_init(identifier:overrides:selectors:properties:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = OBJC_IVAR____TtC8NewsFeed12FormatRecipe__overrides;
  swift_beginAccess();
  sub_1D5E1A7D4(a3, v10 + v11, type metadata accessor for FormatRecipeOverrides);
  v12 = OBJC_IVAR____TtC8NewsFeed12FormatRecipe__selectors;
  swift_beginAccess();
  *(v10 + v12) = a4;
  v13 = OBJC_IVAR____TtC8NewsFeed12FormatRecipe__properties;
  swift_beginAccess();
  *(v10 + v13) = a5;
  return v10;
}

uint64_t FormatRecipe.init(identifier:overrides:selectors:properties:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v9 = OBJC_IVAR____TtC8NewsFeed12FormatRecipe__overrides;
  swift_beginAccess();
  sub_1D5E1A7D4(a3, v5 + v9, type metadata accessor for FormatRecipeOverrides);
  v10 = OBJC_IVAR____TtC8NewsFeed12FormatRecipe__selectors;
  swift_beginAccess();
  *(v5 + v10) = a4;
  v11 = OBJC_IVAR____TtC8NewsFeed12FormatRecipe__properties;
  swift_beginAccess();
  *(v5 + v11) = a5;
  return v5;
}

uint64_t sub_1D5E05510()
{
  v1 = 0x696669746E656469;
  v2 = 0x726F7463656C6573;
  if (*v0 != 2)
  {
    v2 = 0x69747265706F7270;
  }

  if (*v0)
  {
    v1 = 0x656469727265766FLL;
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

uint64_t sub_1D5E05598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5E18DA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5E055C0(uint64_t a1)
{
  v2 = sub_1D5E05CAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5E055FC(uint64_t a1)
{
  v2 = sub_1D5E05CAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatRecipe.deinit()
{

  sub_1D5E05688(v0 + OBJC_IVAR____TtC8NewsFeed12FormatRecipe__overrides);

  return v0;
}

uint64_t sub_1D5E05688(uint64_t a1)
{
  sub_1D5C2CA18(0, &qword_1EDF2CA60, sub_1D5E04DE8, &type metadata for FormatCodingRecipeOverridesStrategy, type metadata accessor for FormatCodingDefault);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FormatRecipe.__deallocating_deinit()
{

  sub_1D5E05688(v0 + OBJC_IVAR____TtC8NewsFeed12FormatRecipe__overrides);

  return swift_deallocClassInstance();
}

uint64_t FormatRecipe.encode(to:)(void *a1)
{
  v2 = v1;
  sub_1D5C2CA18(0, &qword_1EDF2CA60, sub_1D5E04DE8, &type metadata for FormatCodingRecipeOverridesStrategy, type metadata accessor for FormatCodingDefault);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = (v24 - v6);
  sub_1D5C2CA18(0, &qword_1EDF02810, sub_1D5E05CAC, &type metadata for FormatRecipe.CodingKeys, MEMORY[0x1E69E6F58]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = v24 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E05CAC();
  sub_1D7264B5C();
  v26 = 0;
  v14 = v24[1];
  sub_1D72643FC();
  if (v14)
  {
    return (*(v10 + 8))(v13, v9);
  }

  v16 = OBJC_IVAR____TtC8NewsFeed12FormatRecipe__overrides;
  swift_beginAccess();
  sub_1D5E04E3C(v2 + v16, v7);
  if (qword_1EDF0DF48 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for FormatRecipeOverrides();
  v18 = __swift_project_value_buffer(v17, qword_1EDF0DF50);
  if (!_s8NewsFeed21FormatRecipeOverridesV2eeoiySbAC_ACtFZ_0(v7, v18))
  {
    v25 = 1;
    sub_1D5E18F74(&qword_1EDF02818, &qword_1EDF02810, sub_1D5E05CAC, &type metadata for FormatRecipe.CodingKeys);
    sub_1D5D40B60(&qword_1EDF0DF40, type metadata accessor for FormatRecipeOverrides);
    sub_1D72647EC();
  }

  sub_1D5E05688(v7);
  v19 = OBJC_IVAR____TtC8NewsFeed12FormatRecipe__selectors;
  swift_beginAccess();
  if (*(*(v2 + v19) + 16))
  {

    sub_1D5E09198(v20, v13, 2, &qword_1EDF02810, sub_1D5E05CAC, &type metadata for FormatRecipe.CodingKeys, &qword_1EDF02818);
    v21 = v13;
  }

  else
  {
    v21 = v13;
  }

  v22 = OBJC_IVAR____TtC8NewsFeed12FormatRecipe__properties;
  swift_beginAccess();
  v23 = *(v2 + v22);
  if (*(v23 + 16))
  {
    v27 = 3;
    v24[2] = v23;
    sub_1D5E18F74(&qword_1EDF02818, &qword_1EDF02810, sub_1D5E05CAC, &type metadata for FormatRecipe.CodingKeys);
    sub_1D5B49714(0, &qword_1EDF3C918);
    sub_1D5E18FD8(&qword_1EDF05030, &qword_1EDF3C918, &type metadata for FormatProperty, sub_1D5B59D2C);

    sub_1D72647EC();
  }

  else
  {
  }

  (*(v10 + 8))(v21, v9);
}

unint64_t sub_1D5E05CAC()
{
  result = qword_1EDF12398;
  if (!qword_1EDF12398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12398);
  }

  return result;
}

uint64_t FormatRecipe.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  FormatRecipe.init(from:)(a1);
  return v2;
}

void *FormatRecipe.init(from:)(void *a1)
{
  v3 = v1;
  v45 = *v1;
  v46 = v2;
  sub_1D5E18934();
  v41 = v5;
  v38 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v40 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C8CD38();
  v44 = v8;
  v39 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v42 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2CA18(0, &qword_1EDF2CA60, sub_1D5E04DE8, &type metadata for FormatCodingRecipeOverridesStrategy, type metadata accessor for FormatCodingDefault);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v37 - v13;
  sub_1D5C2CA18(0, &qword_1EDF03B20, sub_1D5E05CAC, &type metadata for FormatRecipe.CodingKeys, MEMORY[0x1E69E6F48]);
  v16 = v15;
  v43 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v37 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E05CAC();
  v20 = v46;
  sub_1D7264B0C();
  if (v20)
  {
    swift_deallocPartialClassInstance();
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v1;
  }

  else
  {
    v21 = v42;
    v22 = v44;
    v46 = a1;
    v51 = 0;
    v23 = v19;
    v24 = v16;
    v3[2] = sub_1D72642BC();
    v3[3] = v25;
    v37 = v3;
    sub_1D5E06394(1, v14);
    sub_1D5E1899C(v14, v37 + OBJC_IVAR____TtC8NewsFeed12FormatRecipe__overrides);
    v50 = 2;
    v27 = sub_1D726434C();
    if (v27)
    {
      v47 = 2;
      sub_1D5D40B60(&qword_1EDF3BE00, sub_1D5C8CD38);
      sub_1D726431C();
      v28 = v23;
      v29 = sub_1D725A74C();
      (*(v39 + 8))(v21, v22);
    }

    else
    {
      v28 = v23;
      v29 = MEMORY[0x1E69E7CD0];
    }

    *(v37 + OBJC_IVAR____TtC8NewsFeed12FormatRecipe__selectors) = v29;
    v49 = 3;
    v30 = v28;
    if (sub_1D726434C())
    {
      v48 = 3;
      sub_1D5D40B60(&qword_1EDF3BD70, sub_1D5E18934);
      v32 = v40;
      v31 = v41;
      v33 = v30;
      sub_1D726431C();
      v34 = sub_1D725A74C();
      (*(v38 + 8))(v32, v31);
      (*(v43 + 8))(v33, v24);
    }

    else
    {
      (*(v43 + 8))(v28, v24);
      v34 = MEMORY[0x1E69E7CC0];
    }

    v35 = v46;
    v36 = v37;
    *(v37 + OBJC_IVAR____TtC8NewsFeed12FormatRecipe__properties) = v34;
    __swift_destroy_boxed_opaque_existential_1(v35);
    return v36;
  }
}

uint64_t sub_1D5E06394@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for FormatRecipeOverrides();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v15 - v11;
  v17 = a1;
  sub_1D5C2CA18(0, &qword_1EDF03B20, sub_1D5E05CAC, &type metadata for FormatRecipe.CodingKeys, MEMORY[0x1E69E6F48]);
  if (sub_1D726434C())
  {
    v16 = a1;
    sub_1D5D40B60(&qword_1EDF0DF38, type metadata accessor for FormatRecipeOverrides);
    result = sub_1D726431C();
    if (v2)
    {
      return result;
    }

    sub_1D5E1A7D4(v8, v12, type metadata accessor for FormatRecipeOverrides);
  }

  else
  {
    if (qword_1EDF0DF48 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v5, qword_1EDF0DF50);
    sub_1D5E190A4(v14, v12, type metadata accessor for FormatRecipeOverrides);
  }

  return sub_1D5E1A7D4(v12, a2, type metadata accessor for FormatRecipeOverrides);
}

void *sub_1D5E065A0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = FormatRecipe.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1D5E06804(uint64_t a1, uint64_t a2, char a3)
{
  v10 = a3;
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = sub_1D5E23CA0(v4, 0);
    v7 = sub_1D5E2A8B4(&v9, v6 + 4, v4, a1);

    sub_1D5B87E38();
    if (v7 != v4)
    {
      __break(1u);
      goto LABEL_8;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v9 = v6;

  sub_1D5E09614(&v9, sub_1D62FFA04, &type metadata for FormatScoreDataVisualizationTrait, sub_1D5E0BCFC, sub_1D5E09994);
  v4 = v3;
  if (!v3)
  {

    sub_1D5C2CA18(0, &qword_1EDF025B0, sub_1D5E1C734, &type metadata for FormatScoreDataVisualization.CodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5E18F74(&qword_1EC87F9C0, &qword_1EDF025B0, sub_1D5E1C734, &type metadata for FormatScoreDataVisualization.CodingKeys);
    sub_1D5B49714(0, &qword_1EC87F9C8);
    sub_1D5E18FD8(&qword_1EC87F9D0, &qword_1EC87F9C8, &type metadata for FormatScoreDataVisualizationTrait, sub_1D5E1C788);
    sub_1D72647EC();
  }

LABEL_8:

  __break(1u);
  return result;
}

uint64_t sub_1D5E06A88(uint64_t a1, uint64_t a2, char a3)
{
  v10 = a3;
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = sub_1D5E23CB4(v4, 0);
    v7 = sub_1D5E24C6C(&v9, v6 + 2, v4, a1);

    sub_1D5B87E38();
    if (v7 != v4)
    {
      __break(1u);
      goto LABEL_8;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v9 = v6;

  sub_1D5E09614(&v9, sub_1D62FFA18, &type metadata for FormatItemKind, sub_1D5E0C390, sub_1D5E09AB4);
  v4 = v3;
  if (!v3)
  {

    sub_1D5C2CA18(0, &qword_1EDF025B8, sub_1D5CDDEAC, &type metadata for FormatSlotDefinitionItemSet.CodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5E18F74(&qword_1EDF025C0, &qword_1EDF025B8, sub_1D5CDDEAC, &type metadata for FormatSlotDefinitionItemSet.CodingKeys);
    sub_1D5B49714(0, &qword_1EDF05048);
    sub_1D5E18FD8(&qword_1EDF05040, &qword_1EDF05048, &type metadata for FormatItemKind, sub_1D5B4C410);
    sub_1D72647EC();
  }

LABEL_8:

  __break(1u);
  return result;
}

uint64_t sub_1D5E06D8C(uint64_t a1, uint64_t a2, char *a3, char *a4, char a5, void (*a6)(void), void (*a7)(void))
{
  v8 = a7;
  v9 = a6;
  v17[5] = a3;
  v17[6] = a4;
  v18 = a5 & 1;
  v10 = *(a1 + 16);
  if (v10)
  {
    v19 = a2;
    v12 = sub_1D5B9A6D8(v10, 0);
    v13 = sub_1D5B9A6EC(v17, v12 + 4, v10, a1);

    sub_1D5B87E38();
    if (v13 != v10)
    {
      __break(1u);
      goto LABEL_8;
    }

    v9 = a6;
    v8 = a7;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v17[0] = v12;

  sub_1D5F81CCC(v17);
  v10 = v7;
  if (!v7)
  {

    v9(0);
    v8();
    sub_1D5B49714(0, &qword_1EDF43BA0);
    sub_1D5E1B878(&qword_1EDF04A90, &qword_1EDF43BA0);
    sub_1D72647EC();
  }

LABEL_8:

  __break(1u);
  return result;
}

uint64_t sub_1D5E06F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11[5] = a3;
  v11[6] = a4;
  v12 = a5 & 1;
  v6 = *(a1 + 16);
  if (v6)
  {
    v13 = a2;
    v8 = sub_1D5E23CC8(v6, 0);
    v9 = sub_1D5E2A8B4(v11, v8 + 4, v6, a1);

    sub_1D5B87E38();
    if (v9 != v6)
    {
      __break(1u);
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v11[0] = v8;

  sub_1D5E09614(v11, sub_1D62FFA2C, &type metadata for FormatGroupItemKind, sub_1D5E0D3B0, sub_1D5E0A048);
  v6 = v5;
  if (!v5)
  {

    sub_1D5E1B7CC(0);
    sub_1D5D40B60(&qword_1EDF03018, sub_1D5E1B7CC);
    sub_1D5B49714(0, &qword_1EDF04F50);
    sub_1D5E18FD8(&qword_1EDF04F48, &qword_1EDF04F50, &type metadata for FormatGroupItemKind, sub_1D5C9F1F0);
    sub_1D72647EC();
  }

LABEL_8:

  __break(1u);
  return result;
}

uint64_t sub_1D5E07168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11[5] = a3;
  v11[6] = a4;
  v12 = a5 & 1;
  v6 = *(a1 + 16);
  if (v6)
  {
    v13 = a2;
    v8 = sub_1D5E23B44(v6, 0);
    v9 = sub_1D5E2A8B4(v11, v8 + 4, v6, a1);

    sub_1D5B87E38();
    if (v9 != v6)
    {
      __break(1u);
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v11[0] = v8;

  sub_1D5E09614(v11, sub_1D62FFA40, &type metadata for FormatButtonNodeState, sub_1D5E0DE24, sub_1D5E0A2B4);
  v6 = v5;
  if (!v5)
  {

    sub_1D5E1BB5C(0);
    sub_1D5D40B60(&qword_1EDF03038, sub_1D5E1BB5C);
    sub_1D5B49714(0, &qword_1EDF04E30);
    sub_1D5E18FD8(&qword_1EDF04E28, &qword_1EDF04E30, &type metadata for FormatButtonNodeState, sub_1D5C95C60);
    sub_1D72647EC();
  }

LABEL_8:

  __break(1u);
  return result;
}

uint64_t sub_1D5E073CC(uint64_t a1, uint64_t a2, char a3)
{
  v10 = a3;
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = sub_1D5E23CDC(v4, 0);
    v7 = sub_1D5E2A8B4(&v9, v6 + 4, v4, a1);

    sub_1D5B87E38();
    if (v7 != v4)
    {
      __break(1u);
      goto LABEL_8;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v9 = v6;

  sub_1D5E09614(&v9, sub_1D62FFA54, &type metadata for SportsDataConfigurationEventStatus, sub_1D5E0E8DC, sub_1D5E0A4A0);
  v4 = v3;
  if (!v3)
  {

    sub_1D5C2CA18(0, &qword_1EC87F840, sub_1D5E18F20, &type metadata for SportsDataConfiguration.CodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5E18F74(&qword_1EC87F848, &qword_1EC87F840, sub_1D5E18F20, &type metadata for SportsDataConfiguration.CodingKeys);
    sub_1D5B49714(0, &qword_1EC87F850);
    sub_1D5E18FD8(&qword_1EC87F858, &qword_1EC87F850, &type metadata for SportsDataConfigurationEventStatus, sub_1D5B70730);
    sub_1D72647EC();
  }

LABEL_8:

  __break(1u);
  return result;
}

uint64_t sub_1D5E078D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11[5] = a3;
  v11[6] = a4;
  v12 = a5 & 1;
  v6 = *(a1 + 16);
  if (v6)
  {
    v13 = a2;
    v8 = sub_1D5E23CB4(v6, 0);
    v9 = sub_1D5E24C6C(v11, v8 + 2, v6, a1);

    sub_1D5B87E38();
    if (v9 != v6)
    {
      __break(1u);
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v11[0] = v8;

  sub_1D5E09614(v11, sub_1D62FFA18, &type metadata for FormatItemKind, sub_1D5E0C390, sub_1D5E09AB4);
  v6 = v5;
  if (!v5)
  {

    sub_1D5E1BF78(0);
    sub_1D5D40B60(&qword_1EDF03458, sub_1D5E1BF78);
    sub_1D5B49714(0, &qword_1EDF05048);
    sub_1D5E18FD8(&qword_1EDF05040, &qword_1EDF05048, &type metadata for FormatItemKind, sub_1D5B4C410);
    sub_1D72647EC();
  }

LABEL_8:

  __break(1u);
  return result;
}

uint64_t sub_1D5E07C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11[5] = a3;
  v11[6] = a4;
  v12 = a5 & 1;
  v6 = *(a1 + 16);
  if (v6)
  {
    v13 = a2;
    v8 = sub_1D5E23CF0(v6, 0);
    v9 = sub_1D5E2A8B4(v11, v8 + 4, v6, a1);

    sub_1D5B87E38();
    if (v9 != v6)
    {
      __break(1u);
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v11[0] = v8;

  sub_1D5E09614(v11, sub_1D62FFA68, &type metadata for FormatGlassEffectOption, sub_1D5E0FB8C, sub_1D5E0AB64);
  v6 = v5;
  if (!v5)
  {

    sub_1D5E1B8DC(0);
    sub_1D5D40B60(&qword_1EDF036A8, sub_1D5E1B8DC);
    sub_1D5B49714(0, &unk_1EDF04D78);
    sub_1D5E18FD8(&qword_1EDF04D70, &unk_1EDF04D78, &type metadata for FormatGlassEffectOption, sub_1D5E1BA98);
    sub_1D72647EC();
  }

LABEL_8:

  __break(1u);
  return result;
}

uint64_t sub_1D5E07E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11[5] = a3;
  v11[6] = a4;
  v12 = a5 & 1;
  v6 = *(a1 + 16);
  if (v6)
  {
    v13 = a2;
    v8 = sub_1D5E23D04(v6, 0);
    v9 = sub_1D5E2A8B4(v11, v8 + 4, v6, a1);

    sub_1D5B87E38();
    if (v9 != v6)
    {
      __break(1u);
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v11[0] = v8;

  sub_1D5E09614(v11, sub_1D62FFA7C, &type metadata for FormatFontTrait, sub_1D5E10738, sub_1D5E0AE64);
  v6 = v5;
  if (!v5)
  {

    sub_1D5D409FC(0);
    sub_1D5D40B60(&qword_1EDF036E8, sub_1D5D409FC);
    sub_1D5B49714(0, &qword_1EDF05018);
    sub_1D5E18FD8(&qword_1EDF05010, &qword_1EDF05018, &type metadata for FormatFontTrait, sub_1D5C48A70);
    sub_1D72647EC();
  }

LABEL_8:

  __break(1u);
  return result;
}

uint64_t sub_1D5E080FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11[5] = a3;
  v11[6] = a4;
  v12 = a5 & 1;
  v6 = *(a1 + 16);
  if (v6)
  {
    v13 = a2;
    v8 = sub_1D5E23D18(v6, 0);
    v9 = sub_1D5E2A8B4(v11, v8 + 4, v6, a1);

    sub_1D5B87E38();
    if (v9 != v6)
    {
      __break(1u);
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v11[0] = v8;

  sub_1D5E09614(v11, sub_1D62FFA90, &type metadata for FormatResizeAutoMask, sub_1D5E11780, sub_1D5E0B444);
  v6 = v5;
  if (!v5)
  {

    sub_1D5E1A278(0);
    sub_1D5D40B60(&qword_1EDF03718, sub_1D5E1A278);
    sub_1D5B49714(0, &qword_1EDF04E78);
    sub_1D5E18FD8(&qword_1EDF04E70, &qword_1EDF04E78, &type metadata for FormatResizeAutoMask, sub_1D5E1A434);
    sub_1D72647EC();
  }

LABEL_8:

  __break(1u);
  return result;
}

uint64_t sub_1D5E08360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11[5] = a3;
  v11[6] = a4;
  v12 = a5 & 1;
  v6 = *(a1 + 16);
  if (v6)
  {
    v13 = a2;
    v8 = sub_1D5E23D2C(v6, 0);
    v9 = sub_1D5E2A8B4(v11, v8 + 4, v6, a1);

    sub_1D5B87E38();
    if (v9 != v6)
    {
      __break(1u);
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v11[0] = v8;

  sub_1D5E09614(v11, sub_1D62FFAA4, &type metadata for FormatJsonConfigKey, sub_1D5E1211C, sub_1D5E0B6A0);
  v6 = v5;
  if (!v5)
  {

    sub_1D5E1B20C(0);
    sub_1D5D40B60(&qword_1EDF03768, sub_1D5E1B20C);
    sub_1D5B49714(0, &qword_1EDF04F30);
    sub_1D5E18FD8(&qword_1EDF04F28, &qword_1EDF04F30, &type metadata for FormatJsonConfigKey, sub_1D5E1B3C8);
    sub_1D72647EC();
  }

LABEL_8:

  __break(1u);
  return result;
}

uint64_t sub_1D5E085C0(uint64_t a1, uint64_t a2, char *a3, char *a4, char a5)
{
  v11[5] = a3;
  v11[6] = a4;
  v12 = a5 & 1;
  v6 = *(a1 + 16);
  if (v6)
  {
    v13 = a2;
    v8 = sub_1D5C104B8(v6, 0);
    v9 = sub_1D5E24B6C(v11, v8 + 4, v6, a1);

    sub_1D5B87E38();
    if (v9 != v6)
    {
      __break(1u);
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v11[0] = v8;

  sub_1D5E239F4(v11);
  v6 = v5;
  if (!v5)
  {

    sub_1D5E1BAEC(0);
    sub_1D5E1BB28();
    sub_1D5B49714(0, &unk_1EDF3C820);
    sub_1D5E1B878(&qword_1EDF04A68, &unk_1EDF3C820);
    sub_1D72647EC();
  }

LABEL_8:

  __break(1u);
  return result;
}

uint64_t sub_1D5E08864(uint64_t a1, uint64_t a2, void *a3, void *a4, char a5)
{
  v13[5] = a3;
  v13[6] = a4;
  v14 = a5 & 1;
  v6 = *(a1 + 16);
  if (v6)
  {
    v15 = a2;
    v8 = sub_1D5E23D40(v6, 0);
    v9 = *(type metadata accessor for FormatRegex() - 8);
    sub_1D5E24ECC(v13, v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v6, a1);
    v11 = v10;

    sub_1D5B87E38();
    if (v11 != v6)
    {
      __break(1u);
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v13[0] = v8;

  sub_1D5E096B0(v13);
  v6 = v5;
  if (!v5)
  {

    sub_1D5E1A488(0);
    sub_1D5E1A644();
    sub_1D5E1A678();
    sub_1D5E1A6D0();
    sub_1D72647EC();
  }

LABEL_8:

  __break(1u);
  return result;
}

uint64_t sub_1D5E08A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11[5] = a3;
  v11[6] = a4;
  v12 = a5 & 1;
  v6 = *(a1 + 16);
  if (v6)
  {
    v13 = a2;
    v8 = sub_1D5E23D74(v6, 0);
    v9 = sub_1D5E2A8B4(v11, v8 + 4, v6, a1);

    sub_1D5B87E38();
    if (v9 != v6)
    {
      __break(1u);
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v11[0] = v8;

  sub_1D5E09614(v11, sub_1D62FFACC, &type metadata for FormatPrintNodeValue, sub_1D5E13224, sub_1D5E0BA30);
  v6 = v5;
  if (!v5)
  {

    sub_1D5E1AC1C(0);
    sub_1D5D40B60(&qword_1EC87F930, sub_1D5E1AC1C);
    sub_1D5B49714(0, &qword_1EC87F938);
    sub_1D5E18FD8(&qword_1EC87F940, &qword_1EC87F938, &type metadata for FormatPrintNodeValue, sub_1D5E1ADD8);
    sub_1D72647EC();
  }

LABEL_8:

  __break(1u);
  return result;
}

uint64_t sub_1D5E08F78(uint64_t a1, uint64_t a2, char *a3, char *a4, char a5)
{
  v11[5] = a3;
  v11[6] = a4;
  v12 = a5 & 1;
  v6 = *(a1 + 16);
  if (v6)
  {
    v13 = a2;
    v8 = sub_1D5E23C8C(v6, 0);
    v9 = sub_1D5E2A8B4(v11, v8 + 32, v6, a1);

    sub_1D5B87E38();
    if (v9 != v6)
    {
      __break(1u);
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v11[0] = v8;

  sub_1D6726FC8(v11);
  v6 = v5;
  if (!v5)
  {

    sub_1D5E1C348(0);
    sub_1D5D40B60(&qword_1EDF02B98, sub_1D5E1C348);
    sub_1D5B49714(0, &qword_1EDF04FD8);
    sub_1D5E18FD8(&qword_1EDF04FD0, &qword_1EDF04FD8, &type metadata for FormatBorderEdge, sub_1D5E1C384);
    sub_1D72647EC();
  }

LABEL_8:

  __break(1u);
  return result;
}