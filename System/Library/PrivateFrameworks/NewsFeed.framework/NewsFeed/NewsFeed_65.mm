uint64_t static FeedCursorStoreManager.shared.getter()
{
  if (qword_1EDF37050 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D6125E44()
{
  sub_1D5B87E10(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t FeedCursorStoreManager.deinit()
{

  return v0;
}

uint64_t FeedCursorStoreManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D6125EFC()
{
  v0 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  return v0;
}

BOOL sub_1D61260E4()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
  }

  return Strong != 0;
}

uint64_t sub_1D612612C(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

id sub_1D6126298()
{
  v1 = sub_1D7258AAC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v26[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v0 + 16);
  sub_1D7258A4C();
  v7 = _sSo23NSMutableParagraphStyleC8NewsFeedE06localebC03for0F0ABSo6UIFontC_10Foundation6LocaleVtFZ_0(v6);
  (*(v2 + 8))(v5, v1);
  sub_1D5DF6790();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7279970;
  v9 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v10 = sub_1D5B5A498(0, &qword_1EDF1A720);
  *(inited + 40) = v6;
  v11 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v10;
  *(inited + 72) = v11;
  v12 = *(v0 + 72);
  v13 = sub_1D5B5A498(0, qword_1EDF1A6A0);
  *(inited + 80) = v12;
  v14 = *MEMORY[0x1E69DB688];
  *(inited + 104) = v13;
  *(inited + 112) = v14;
  *(inited + 144) = sub_1D5B5A498(0, &qword_1EDF1A840);
  *(inited + 120) = v7;
  v15 = v9;
  v16 = v6;
  v17 = v11;
  v18 = v12;
  v19 = v14;
  v20 = v7;
  sub_1D5C09CEC(inited);
  swift_setDeallocating();
  sub_1D5C09DD4();
  swift_arrayDestroy();
  v21 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v22 = sub_1D726203C();
  type metadata accessor for Key(0);
  sub_1D5C09E68();
  v23 = sub_1D7261D2C();

  v24 = [v21 initWithString:v22 attributes:v23];

  return v24;
}

id sub_1D612650C()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  [v1 setLineBreakMode_];
  sub_1D5DF6790();
  inited = swift_initStackObject();
  v3 = MEMORY[0x1E69DB648];
  *(inited + 16) = xmmword_1D7279970;
  v4 = *v3;
  *(inited + 32) = *v3;
  v5 = *(v0 + 24);
  v6 = sub_1D5B5A498(0, &qword_1EDF1A720);
  *(inited + 40) = v5;
  v7 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v6;
  *(inited + 72) = v7;
  v8 = *(v0 + 80);
  v9 = sub_1D5B5A498(0, qword_1EDF1A6A0);
  *(inited + 80) = v8;
  v10 = *MEMORY[0x1E69DB688];
  *(inited + 104) = v9;
  *(inited + 112) = v10;
  *(inited + 144) = sub_1D5B5A498(0, &qword_1EDF1A840);
  *(inited + 120) = v1;

  v11 = v4;
  v12 = v5;
  v13 = v7;
  v14 = v8;
  v15 = v10;
  v16 = v1;
  sub_1D5C09CEC(inited);
  swift_setDeallocating();
  sub_1D5C09DD4();
  swift_arrayDestroy();
  v17 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v18 = sub_1D726203C();

  type metadata accessor for Key(0);
  sub_1D5C09E68();
  v19 = sub_1D7261D2C();

  v20 = [v17 initWithString:v18 attributes:v19];

  return v20;
}

id sub_1D612672C()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  [v1 setAlignment_];
  sub_1D5DF6790();
  inited = swift_initStackObject();
  v3 = MEMORY[0x1E69DB648];
  *(inited + 16) = xmmword_1D7279970;
  v4 = *v3;
  *(inited + 32) = *v3;
  v5 = *(v0 + 24);
  v6 = sub_1D5B5A498(0, &qword_1EDF1A720);
  *(inited + 40) = v5;
  v7 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v6;
  *(inited + 72) = v7;
  v8 = *(v0 + 88);
  v9 = sub_1D5B5A498(0, qword_1EDF1A6A0);
  *(inited + 80) = v8;
  v10 = *MEMORY[0x1E69DB688];
  *(inited + 104) = v9;
  *(inited + 112) = v10;
  *(inited + 144) = sub_1D5B5A498(0, &qword_1EDF1A840);
  *(inited + 120) = v1;

  v11 = v4;
  v12 = v5;
  v13 = v7;
  v14 = v8;
  v15 = v10;
  v16 = v1;
  sub_1D5C09CEC(inited);
  swift_setDeallocating();
  sub_1D5C09DD4();
  swift_arrayDestroy();
  v17 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v18 = sub_1D726203C();

  type metadata accessor for Key(0);
  sub_1D5C09E68();
  v19 = sub_1D7261D2C();

  v20 = [v17 initWithString:v18 attributes:v19];

  return v20;
}

id sub_1D612694C(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v3 = sub_1D7258AAC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + 32);
  sub_1D7258A4C();
  v9 = _sSo23NSMutableParagraphStyleC8NewsFeedE06localebC03for0F0ABSo6UIFontC_10Foundation6LocaleVtFZ_0(v8);
  (*(v4 + 8))(v7, v3);
  [v9 setAlignment_];
  sub_1D5DF6790();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7274590;
  v11 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v12 = sub_1D5B5A498(0, &qword_1EDF1A720);
  *(inited + 40) = v8;
  v13 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v12;
  *(inited + 72) = v13;
  v14 = *(v2 + 128);
  v15 = sub_1D5B5A498(0, qword_1EDF1A6A0);
  *(inited + 80) = v14;
  v16 = *MEMORY[0x1E69DB688];
  *(inited + 104) = v15;
  *(inited + 112) = v16;
  v17 = sub_1D5B5A498(0, &qword_1EDF1A840);
  *(inited + 120) = v9;
  v18 = *MEMORY[0x1E69DB660];
  *(inited + 144) = v17;
  *(inited + 152) = v18;
  *(inited + 184) = MEMORY[0x1E69E63B0];
  *(inited + 160) = 0xBFE0000000000000;
  v19 = v11;
  v20 = v8;
  v21 = v13;
  v22 = v14;
  v23 = v16;
  v24 = v9;
  v25 = v18;
  sub_1D5C09CEC(inited);
  swift_setDeallocating();
  sub_1D5C09DD4();
  swift_arrayDestroy();
  v26 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v27 = sub_1D726203C();
  type metadata accessor for Key(0);
  sub_1D5C09E68();
  v28 = sub_1D7261D2C();

  v29 = [v26 initWithString:v27 attributes:v28];

  return v29;
}

id sub_1D6126C00()
{
  v1 = sub_1D7258AAC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 32);
  sub_1D7258A4C();
  v7 = _sSo23NSMutableParagraphStyleC8NewsFeedE06localebC03for0F0ABSo6UIFontC_10Foundation6LocaleVtFZ_0(v6);
  (*(v2 + 8))(v5, v1);
  [v7 setAlignment_];
  sub_1D5DF6790();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7274590;
  v9 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v10 = sub_1D5B5A498(0, &qword_1EDF1A720);
  *(inited + 40) = v6;
  v11 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v10;
  *(inited + 72) = v11;
  v12 = objc_opt_self();
  v13 = v9;
  v14 = v6;
  v15 = v11;
  v16 = [v12 secondaryLabelColor];
  v17 = sub_1D5B5A498(0, qword_1EDF1A6A0);
  *(inited + 80) = v16;
  v18 = *MEMORY[0x1E69DB688];
  *(inited + 104) = v17;
  *(inited + 112) = v18;
  v19 = sub_1D5B5A498(0, &qword_1EDF1A840);
  *(inited + 120) = v7;
  v20 = *MEMORY[0x1E69DB660];
  *(inited + 144) = v19;
  *(inited + 152) = v20;
  *(inited + 184) = MEMORY[0x1E69E63B0];
  *(inited + 160) = 0xBFE0000000000000;
  v21 = v18;
  v22 = v7;
  v23 = v20;
  sub_1D5C09CEC(inited);
  swift_setDeallocating();
  sub_1D5C09DD4();
  swift_arrayDestroy();
  v24 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v25 = sub_1D726203C();
  type metadata accessor for Key(0);
  sub_1D5C09E68();
  v26 = sub_1D7261D2C();

  v27 = [v24 initWithString:v25 attributes:v26];

  return v27;
}

void sub_1D6126ED0(void *a1, _BYTE *a2)
{
  if (*a2)
  {
    if (*a2 == 1)
    {
      [a1 setClipsToBounds_];
      v4 = [a1 layer];
      [v4 setCornerRadius_];

      v5 = *(v2 + 96);
    }

    else
    {
      [a1 setClipsToBounds_];
      v7 = [a1 layer];
      [v7 setCornerRadius_];

      v5 = *(v2 + 104);
    }

    [a1 setBackgroundColor_];
  }

  else
  {
    [a1 setClipsToBounds_];
    v6 = [a1 layer];
    [v6 setCornerRadius_];

    v8 = [objc_opt_self() clearColor];
    [a1 setBackgroundColor_];
  }
}

void sub_1D6127044(char *a1)
{
  v3 = sub_1D725CCCC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC8NewsFeed21CoverViewFollowSwitch_toggleState;
  swift_beginAccess();
  (*(v4 + 16))(v7, &a1[v8], v3);
  v9 = (*(v4 + 88))(v7, v3);
  if (v9 == *MEMORY[0x1E69D7630])
  {
    v10 = [a1 layer];
    [v10 setBorderWidth_];
LABEL_5:

    return;
  }

  if (v9 == *MEMORY[0x1E69D7638])
  {
    v11 = *(v1 + 128);
    v12 = v11;
    sub_1D69EA858(v11);

    v13 = [a1 layer];
    [v13 setBorderWidth_];

    v10 = [a1 layer];
    [a1 bounds];
    [v10 setCornerRadius_];
    goto LABEL_5;
  }

  sub_1D726402C();
  __break(1u);
}

uint64_t sub_1D6127290()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);

  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v8 = *(v0 + 80);
  v9 = *(v0 + 88);
  v10 = *(v0 + 96);
  v11 = *(v0 + 104);
  v12 = *(v0 + 112);
  v13 = *(v0 + 120);

  __swift_destroy_boxed_opaque_existential_1(v0 + 136);

  return swift_deallocClassInstance();
}

id sub_1D61274DC(char *a1)
{
  v3 = *(*v1 + 72);
  v4 = *&a1[OBJC_IVAR____TtC8NewsFeed21CoverViewActionButton_tintColorForNormalState];
  *&a1[OBJC_IVAR____TtC8NewsFeed21CoverViewActionButton_tintColorForNormalState] = v3;
  v5 = v3;

  return [a1 setTintColor_];
}

void sub_1D612754C(void *a1)
{
  [a1 setClipsToBounds_];
  v2 = [a1 layer];
  [v2 setCornerRadius_];

  v3 = [a1 layer];
  v4 = [objc_opt_self() blackColor];
  v5 = [v4 CGColor];

  [v3 setShadowColor_];
  v6 = [a1 layer];
  [v6 setShadowOffset_];

  v7 = [a1 layer];
  LODWORD(v8) = 1045220557;
  [v7 setShadowOpacity_];

  v9 = [a1 layer];
  [v9 setShadowRadius_];

  v10 = [a1 layer];
  [v10 setMasksToBounds_];

  v11 = [a1 layer];
  [a1 bounds];
  v16 = [objc_opt_self() bezierPathWithRect_];
  v17 = [v16 CGPath];

  [v11 setShadowPath_];
}

uint64_t WebEmbedViewController.layoutIdentifier.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_layoutIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t WebEmbedViewController.layoutIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_layoutIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1D61278E0@<X0>(void *a1@<X0>, uint64_t (**a2)(double *a1)@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_onSizeInvalidation);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1D6136654;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1D5DEA510(v4);
}

uint64_t sub_1D6127980(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1D613661C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_onSizeInvalidation);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_1D5DEA510(v3);
  return sub_1D5B74328(v8);
}

void sub_1D6127B08()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
}

void WebEmbedViewController.webLinkPresentingViewController.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();

  swift_unknownObjectWeakAssign();
}

void (*WebEmbedViewController.webLinkPresentingViewController.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webLinkPresentingViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1D6127CB8;
}

void sub_1D6127CB8(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakAssign();
  }

  free(v3);
}

uint64_t sub_1D6127D90(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *a1;
  swift_beginAccess();
  return a2(v2 + v4);
}

uint64_t WebEmbedViewController.resizingProvider.setter()
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*WebEmbedViewController.resizingProvider.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_resizingProvider;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_1D5FE6C14;
}

uint64_t sub_1D6127EDC@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_onEmbedInteraction);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1D5DF8E8C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1D5DEA510(v4);
}

uint64_t sub_1D6127F7C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1D6136614;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_onEmbedInteraction);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_1D5DEA510(v3);
  return sub_1D5B74328(v8);
}

uint64_t sub_1D61280E4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_onNavigationBarConfigurationUpdate);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1D61365E8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1D5DEA510(v4);
}

uint64_t sub_1D6128184(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1D61365B0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_onNavigationBarConfigurationUpdate);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_1D5DEA510(v3);
  return sub_1D5B74328(v8);
}

uint64_t sub_1D612826C(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_1D61282F4(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

uint64_t WebEmbedViewController.showsLoadingSpinner.getter()
{
  v1 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_showsLoadingSpinner;
  swift_beginAccess();
  return *(v0 + v1);
}

id WebEmbedViewController.showsLoadingSpinner.setter(char a1)
{
  v3 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_showsLoadingSpinner;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = 0.0;
  if (a1)
  {
    v4 = 1.0;
  }

  return [*(v1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_activityIndicator) setAlpha_];
}

void (*WebEmbedViewController.showsLoadingSpinner.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_showsLoadingSpinner;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1D61284FC;
}

void sub_1D61284FC(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = 0.0;
    if (*(v4 + v3[4]))
    {
      v5 = 1.0;
    }

    [*(v4 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_activityIndicator) setAlpha_];
  }

  free(v3);
}

uint64_t WebEmbedViewController.WebEmbedErrorPosition.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

uint64_t WebEmbedViewController.errorPosition.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_errorPosition;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t WebEmbedViewController.errorPosition.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_errorPosition;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

id WebEmbedViewController.feedConfiguration.getter()
{
  v1 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_feedConfiguration;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1D61287AC(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_feedConfiguration;
  swift_beginAccess();
  v5 = *&v3[v4];
  *&v3[v4] = v2;
  v6 = v2;

  v7 = [v3 view];
  if (v7)
  {
    v8 = v7;
    [v7 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

void WebEmbedViewController.feedConfiguration.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_feedConfiguration;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = a1;

  v6 = [v1 view];
  if (v6)
  {
    v7 = v6;
    [v6 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

void (*WebEmbedViewController.feedConfiguration.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D612893C;
}

void sub_1D612893C(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = [*(a1 + 24) view];
    if (v4)
    {
      v5 = v4;
      [v4 setNeedsLayout];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1D61289C4(uint64_t a1)
{
  v3 = type metadata accessor for WebEmbedDataVisualization();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5B4D72C(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v20[-v14];
  v16 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_dataVisualization;
  swift_beginAccess();
  sub_1D5C00D08(v1 + v16, v15, sub_1D5B4D72C);
  swift_beginAccess();
  sub_1D6136744(a1, v1 + v16, sub_1D5B4D72C);
  swift_endAccess();
  sub_1D5C00D08(v15, v11, sub_1D5B4D72C);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
    sub_1D613582C(a1, sub_1D5B4D72C);
    sub_1D613582C(v15, sub_1D5B4D72C);
    v15 = v11;
  }

  else
  {
    sub_1D61367AC(v11, v7, type metadata accessor for WebEmbedDataVisualization);
    v17 = *(v1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webEmbedDataSourceManager + 24);
    v18 = *(v1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webEmbedDataSourceManager + 32);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webEmbedDataSourceManager), v17);
    (*(v18 + 24))(v1, &protocol witness table for WebEmbedViewController, v7, v17, v18);
    sub_1D613582C(a1, sub_1D5B4D72C);
    sub_1D613582C(v7, type metadata accessor for WebEmbedDataVisualization);
  }

  return sub_1D613582C(v15, sub_1D5B4D72C);
}

uint64_t sub_1D6128CE4(uint64_t a1, void *a2)
{
  sub_1D72596FC();
  sub_1D72596DC();
  if (*a2 != -1)
  {
    swift_once();
  }

  sub_1D72596CC();
}

uint64_t sub_1D6128D80()
{
  sub_1D6135A28();
  swift_allocObject();
  sub_1D725B59C();
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  sub_1D725B5DC();

  swift_allocObject();
  swift_unknownObjectUnownedInit();
  sub_1D725B5CC();

  sub_1D725AB0C();

  swift_allocObject();
  sub_1D725B59C();
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  sub_1D725B5DC();

  swift_allocObject();
  swift_unknownObjectUnownedInit();
  sub_1D725B5BC();

  swift_allocObject();
  swift_unknownObjectUnownedInit();
  sub_1D725B5CC();

  sub_1D725AB0C();

  swift_allocObject();
  sub_1D725B59C();
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  sub_1D725B5DC();

  swift_allocObject();
  swift_unknownObjectUnownedInit();
  sub_1D725B5CC();

  sub_1D725AB0C();
}

void sub_1D61290CC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1D6129120();
  }
}

id sub_1D6129120()
{
  v1 = v0;
  v2 = sub_1D7258AAC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v127 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FormatPictureInPictureModel();
  v8 = MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v123 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v106 - v11;
  sub_1D5B4D3E0();
  v15 = MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v124 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v128 = &v106 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v126 = &v106 - v22;
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v106 - v24;
  v26 = sub_1D72585BC();
  v27 = *(v26 - 8);
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v125 = &v106 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v31);
  v33 = &v106 - v32;
  v34 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_sourceURL;
  swift_beginAccess();
  sub_1D5C00D08(&v1[v34], v25, sub_1D5B4D3E0);
  v35 = *(v27 + 48);
  if (v35(v25, 1, v26) == 1)
  {
    return sub_1D613582C(v25, sub_1D5B4D3E0);
  }

  v121 = v35;
  v122 = v3;
  v37 = *(v27 + 32);
  v37(v33, v25, v26);
  v38 = *&v1[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_location];
  if (!v38)
  {
    return (*(v27 + 8))(v33, v26);
  }

  v119 = v33;
  v120 = v2;
  v117 = *&v1[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webContentViewController];
  sub_1D5B68374(&v1[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_configurationProvider], v129);
  v116 = __swift_project_boxed_opaque_existential_1(v129, v129[3]);
  v118 = v38;
  swift_unknownObjectRetain();
  result = [v1 view];
  if (result)
  {
    v39 = result;
    [result bounds];
    v115 = v40;
    v114 = v41;
    v113 = v42;
    v111 = v43;

    v44 = *&v1[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_contentFrameView];
    [v44 frame];
    v110 = v45;
    v109 = v46;
    v108 = v47;
    v107 = v48;
    [v44 frame];
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v56 = v55;
    [v44 frame];
    v58 = v57;
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v65 = objc_allocWithZone(MEMORY[0x1E69CE188]);
    v115 = [v65 initWithBounds:*&v115 contentFrame:v114 contentSafeAreaFrame:*&v113 systemSafeAreaFrame:{*&v111, v110, v109, v108, v107, v50, v52, v54, v56, v58, v60, v62, v64}];
    v66 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_dataFeedURL;
    swift_beginAccess();
    sub_1D5C00D08(&v1[v66], v126, sub_1D5B4D3E0);
    sub_1D725ADCC();
    v67 = v12;
    v68 = v123;
    sub_1D61367AC(v67, v123, type metadata accessor for FormatPictureInPictureModel);
    v69 = 1;
    v70 = v27;
    v71 = v26;
    if (v121(v68, 1, v26) != 1)
    {
      v37(v128, v68, v26);
      v69 = 0;
    }

    (*(v70 + 56))(v128, v69, 1, v26);
    v72 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_feedConfiguration;
    swift_beginAccess();
    v73 = *&v1[v72];
    v74 = *&v1[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_liveActivityWebEmbedDatastoreManager + 24];
    v75 = *&v1[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_liveActivityWebEmbedDatastoreManager + 32];
    __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_liveActivityWebEmbedDatastoreManager], v74);
    v76 = *(v75 + 8);
    v123 = v73;
    LODWORD(v114) = v76(v74, v75);
    v77 = *v116;
    v78 = sub_1D6D5A438(v126);
    v79 = *(v77 + OBJC_IVAR____TtC8NewsFeed29WebEmbedConfigurationProvider_storeFront + 8);
    (*(v122 + 16))(v127, v77 + OBJC_IVAR____TtC8NewsFeed29WebEmbedConfigurationProvider_locale, v120);
    v80 = *(v77 + OBJC_IVAR____TtC8NewsFeed29WebEmbedConfigurationProvider_contentEnvironment + 8);
    v81 = [objc_opt_self() sharedApplication];
    v116 = [v81 preferredContentSizeCategory];

    (*(v70 + 16))(v125, v119, v71);
    v82 = v124;
    sub_1D5C00D08(v128, v124, sub_1D5B4D3E0);
    if (v79)
    {
      v79 = sub_1D726203C();
    }

    v113 = sub_1D72589DC();
    if (v80)
    {
      v80 = sub_1D726203C();
    }

    if (v78)
    {
      v111 = sub_1D7261D2C();
    }

    else
    {
      v111 = 0;
    }

    v83 = sub_1D725844C();
    v84 = v121(v82, 1, v71);
    v112 = v71;
    if (v84 == 1)
    {
      v85 = 0;
    }

    else
    {
      v85 = sub_1D725844C();
      (*(v70 + 8))(v82, v71);
    }

    v86 = v118;
    v87 = v70;
    v124 = v85;
    v88 = objc_allocWithZone(MEMORY[0x1E69CE140]);
    LOBYTE(v105) = LOBYTE(v114) & 1;
    v89 = v123;
    v104 = v85;
    v102 = v86;
    v103 = v83;
    v90 = v79;
    v91 = v113;
    v92 = v80;
    v93 = v83;
    v94 = v80;
    v95 = v116;
    v96 = v79;
    v97 = v115;
    v98 = v111;
    v99 = [v88 initWithStoreFront:v90 locale:v113 contentEnvironment:v92 contentSizeCategory:v116 layoutGuide:v115 dataSources:v111 location:v102 sourceURL:v103 activePictureInPictureURL:v104 feedConfiguration:v123 supportsLiveActivities:v105];

    v100 = *(v87 + 8);
    v101 = v112;
    v100(v125, v112);
    (*(v122 + 8))(v127, v120);
    sub_1D613582C(v128, sub_1D5B4D3E0);
    sub_1D613582C(v126, sub_1D5B4D3E0);
    [v117 setConfiguration_];
    swift_unknownObjectRelease();

    v100(v119, v101);
    return __swift_destroy_boxed_opaque_existential_1(v129);
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall WebEmbedViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for WebEmbedStateMachineEvent(0);
  *&v5 = MEMORY[0x1EEE9AC00](v3, v4).n128_u64[0];
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36.receiver = v0;
  v36.super_class = ObjectType;
  objc_msgSendSuper2(&v36, sel_viewDidLoad, v5);
  v8 = [v0 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_16;
  }

  v9 = v8;
  [v8 setClipsToBounds_];

  v10 = *&v0[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webContentViewController];
  [v0 addChildViewController_];
  v11 = [v0 view];
  if (!v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v11;
  v13 = [v10 view];
  if (!v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = v13;
  [v12 addSubview_];

  [v10 prewarm];
  v15 = [v10 view];
  if (!v15)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v16 = v15;
  [v15 setHidden_];

  [v10 didMoveToParentViewController_];
  v17 = [v0 view];
  if (!v17)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v18 = v17;
  [v17 addSubview_];

  v19 = *&v0[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_errorView];
  [v19 setHidden_];
  v20 = [v0 view];
  if (!v20)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v21 = v20;
  [v20 addSubview_];

  v22 = *&v0[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_contentFrameView];
  [v22 setUserInteractionEnabled_];
  v23 = [v0 view];
  if (!v23)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v24 = v23;
  [v23 addSubview_];

  swift_storeEnumTagMultiPayload();
  sub_1D725AB1C();
  sub_1D613582C(v7, type metadata accessor for WebEmbedStateMachineEvent);
  if (qword_1EDF0D758 != -1)
  {
    swift_once();
  }

  if (byte_1EDF0D760 == 1)
  {
    v25 = objc_allocWithZone(type metadata accessor for WebEmbedDebugView());
    v26 = sub_1D69FC9A0(0);
    v27 = [v1 view];
    if (v27)
    {
      v28 = v27;
      [v27 addSubview_];

      v29 = *&v1[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_debugLoadView];
      *&v1[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_debugLoadView] = v26;
      v30 = v26;

      v31 = [objc_allocWithZone(type metadata accessor for WebEmbedLayoutGuideView()) initWithFrame_];
      v32 = [v1 view];
      if (v32)
      {
        v33 = v32;
        [v32 addSubview_];

        v34 = *&v1[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_layoutGuideView];
        *&v1[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_layoutGuideView] = v31;

        return;
      }

LABEL_23:
      __break(1u);
      return;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }
}

Swift::Void __swiftcall WebEmbedViewController.viewDidLayoutSubviews()()
{
  v84.receiver = v0;
  v84.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v84, sel_viewDidLayoutSubviews);
  v1 = [*&v0[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webContentViewController] view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_20;
  }

  v2 = v1;
  v3 = [v0 view];
  if (!v3)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v4 = v3;
  [v3 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v2 setFrame_];
  sub_1D6129120();
  v13 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_errorPosition;
  swift_beginAccess();
  v14 = v0[v13];
  v15 = *&v0[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_errorView];
  if (v14)
  {
    v16 = [v0 view];
    if (!v16)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v17 = v16;
    [v16 bounds];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v26 = v25;
    v27 = v23;
    v28 = v21;
    v29 = v19;
  }

  else
  {
    [*&v0[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_contentFrameView] frame];
  }

  [v15 setFrame_];
  v30 = *&v0[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_activityIndicator];
  v31 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_showsLoadingSpinner;
  swift_beginAccess();
  v32 = 0.0;
  v33 = 0.0;
  v34 = 0.0;
  v35 = 0.0;
  if (v0[v31] == 1)
  {
    v36 = [v0 view];
    if (!v36)
    {
LABEL_26:
      __break(1u);
      return;
    }

    v37 = v36;
    [v36 bounds];
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;

    v35 = v45;
    v34 = v43;
    v33 = v41;
    v32 = v39;
  }

  [v30 setFrame_];
  v46 = *&v0[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_debugLoadView];
  if (!v46)
  {
    goto LABEL_15;
  }

  v47 = v46;
  v48 = [v0 view];
  if (!v48)
  {
    goto LABEL_21;
  }

  v49 = v48;
  [v48 bounds];
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;

  [v47 setFrame_];
  v58 = [v47 layer];
  v59 = [v0 view];
  if (!v59)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v60 = v59;
  v61 = [v59 layer];

  [v61 cornerRadius];
  v63 = v62;

  [v58 setCornerRadius_];
  v64 = [v47 layer];

  v65 = [v0 view];
  if (!v65)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v66 = v65;
  v67 = [v65 layer];

  v68 = [v67 cornerCurve];
  [v64 setCornerCurve_];

LABEL_15:
  v69 = *&v0[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_layoutGuideView];
  if (!v69)
  {
    return;
  }

  v70 = v69;
  v71 = [v0 view];
  if (!v71)
  {
    goto LABEL_23;
  }

  v72 = v71;
  [v71 bounds];
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v80 = v79;

  [v70 setFrame_];
  v81 = *&v0[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_layoutGuide];
  v82 = *&v70[OBJC_IVAR____TtC8NewsFeed23WebEmbedLayoutGuideView_layoutGuide];
  *&v70[OBJC_IVAR____TtC8NewsFeed23WebEmbedLayoutGuideView_layoutGuide] = v81;
  v83 = v81;

  [v70 setNeedsLayout];
}

Swift::Void __swiftcall WebEmbedViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  ObjectType = swift_getObjectType();
  sub_1D5B4D72C(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4D3E0();
  *&v10 = MEMORY[0x1EEE9AC00](v8 - 8, v9).n128_u64[0];
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31.receiver = v1;
  v31.super_class = ObjectType;
  objc_msgSendSuper2(&v31, sel_viewWillAppear_, a1, v10);
  if (qword_1EDF17580 != -1)
  {
    swift_once();
  }

  v13 = sub_1D725C42C();
  __swift_project_value_buffer(v13, qword_1EDFFC6F0);
  v14 = v1;
  v15 = sub_1D725C3FC();
  v16 = sub_1D7262EDC();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v17 = 136315138;
    sub_1D5B62BF4(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1D7273AE0;
    *(v18 + 56) = ObjectType;
    *(v18 + 64) = sub_1D61368DC(&unk_1EDF0D738, type metadata accessor for WebEmbedViewController);
    *(v18 + 32) = v14;
    v19 = v14;
    v20 = sub_1D72620BC();
    v22 = v21;
    v23 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_embedURL;
    swift_beginAccess();
    sub_1D5C00D08(v19 + v23, v12, sub_1D5B4D3E0);
    v24 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_dataVisualization;
    swift_beginAccess();
    sub_1D5C00D08(v19 + v24, v7, sub_1D5B4D72C);
    v25 = sub_1D613520C(v20, v22, v12, v7);
    v27 = sub_1D5BC5100(v25, v26, &v30);

    *(v17 + 4) = v27;
    _os_log_impl(&dword_1D5B42000, v15, v16, "View will appear, %s", v17, 0xCu);
    v28 = v29;
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x1DA6FD500](v28, -1, -1);
    MEMORY[0x1DA6FD500](v17, -1, -1);
  }

  sub_1D612A804();
  sub_1D612AA18();
  sub_1D725AB5C();
  if (v30 == 3)
  {
    sub_1D612AC84();
  }
}

uint64_t sub_1D612A804()
{
  v1 = v0;
  sub_1D5B4D72C(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for WebEmbedDataVisualization();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = sub_1D725AB5C();
  if (v17[8] == 2)
  {
    v12 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_dataVisualization;
    swift_beginAccess();
    sub_1D5C00D08(v1 + v12, v5, sub_1D5B4D72C);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      v13 = sub_1D5B4D72C;
      v14 = v5;
    }

    else
    {
      sub_1D61367AC(v5, v10, type metadata accessor for WebEmbedDataVisualization);
      v15 = *(v1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webEmbedDataSourceManager + 24);
      v16 = *(v1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webEmbedDataSourceManager + 32);
      __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webEmbedDataSourceManager), v15);
      (*(v16 + 16))(v1, &protocol witness table for WebEmbedViewController, v10, v15, v16);
      v13 = type metadata accessor for WebEmbedDataVisualization;
      v14 = v10;
    }

    return sub_1D613582C(v14, v13);
  }

  return result;
}

uint64_t sub_1D612AA18()
{
  v1 = v0;
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1D72585BC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = sub_1D725AB5C();
  if (v19[8] == 2)
  {
    v12 = (v0 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_liveActivityWebEmbedDatastoreManager);
    v13 = *(v0 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_liveActivityWebEmbedDatastoreManager + 24);
    v14 = *(v0 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_liveActivityWebEmbedDatastoreManager + 32);
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_liveActivityWebEmbedDatastoreManager), v13);
    result = (*(v14 + 8))(v13, v14);
    if (result)
    {
      v15 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_embedURL;
      swift_beginAccess();
      sub_1D5C00D08(v1 + v15, v5, sub_1D5B4D3E0);
      if ((*(v7 + 48))(v5, 1, v6) == 1)
      {
        return sub_1D613582C(v5, sub_1D5B4D3E0);
      }

      else
      {
        (*(v7 + 32))(v10, v5, v6);
        v16 = sub_1D725847C();
        result = (*(v7 + 8))(v10, v6);
        if (v16)
        {
          v17 = v12[3];
          v18 = v12[4];
          __swift_project_boxed_opaque_existential_1(v12, v17);
          return (*(v18 + 40))(v1, &protocol witness table for WebEmbedViewController, v17, v18);
        }
      }
    }
  }

  return result;
}

id sub_1D612AC84()
{
  sub_1D5B4D72C(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v84 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v72 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v72 - v14;
  v16 = sub_1D72585BC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v85 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v72 - v22;
  v24 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_embedURL;
  swift_beginAccess();
  sub_1D5C00D08(&v0[v24], v15, sub_1D5B4D3E0);
  v25 = *(v17 + 48);
  if (v25(v15, 1, v16) == 1)
  {
    return sub_1D613582C(v15, sub_1D5B4D3E0);
  }

  v83 = v4;
  v27 = *(v17 + 32);
  v27(v23, v15, v16);
  if (!*&v0[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_location])
  {
    return (*(v17 + 8))(v23, v16);
  }

  v82 = *&v0[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_location];
  v28 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_sourceURL;
  swift_beginAccess();
  sub_1D5C00D08(&v0[v28], v11, sub_1D5B4D3E0);
  if (v25(v11, 1, v16) == 1)
  {
    (*(v17 + 8))(v23, v16);
    return sub_1D613582C(v11, sub_1D5B4D3E0);
  }

  v29 = v85;
  v27(v85, v11, v16);
  v30 = (*&v0[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_delegate] + OBJC_IVAR____TtC8NewsFeed26WebEmbedURLHandlerDelegate_webEmbedIdentifier);
  v31 = v30[1];
  if (!v31)
  {
    v71 = *(v17 + 8);
    v71(v29, v16);
    return (v71)(v23, v16);
  }

  v80 = *v30;
  v32 = v82;
  swift_unknownObjectRetain();
  v81 = v31;

  result = [v0 view];
  if (result)
  {
    v33 = result;
    [result bounds];
    v79 = v34;
    v78 = v35;
    v77 = v36;
    v76 = v37;

    v38 = *&v0[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_contentFrameView];
    [v38 frame];
    v75 = v39;
    v74 = v40;
    v73 = v41;
    v72 = v42;
    [v38 frame];
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v50 = v49;
    [v38 frame];
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v59 = objc_allocWithZone(MEMORY[0x1E69CE188]);
    v79 = [v59 initWithBounds:*&v79 contentFrame:v78 contentSafeAreaFrame:v77 systemSafeAreaFrame:{v76, v75, v74, v73, v72, v44, v46, v48, v50, v52, v54, v56, v58}];
    v60 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_dataFeedURL;
    swift_beginAccess();
    v61 = v84;
    sub_1D5C00D08(&v0[v60], v84, sub_1D5B4D3E0);
    v62 = *&v0[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_viewportSize];
    v63 = *&v0[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_viewportSize + 8];
    v64 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_dataVisualization;
    swift_beginAccess();
    v65 = v83;
    sub_1D5C00D08(&v0[v64], v83, sub_1D5B4D72C);
    v66 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_feedConfiguration;
    swift_beginAccess();
    v67 = *&v0[v66];
    swift_getObjectType();
    v68 = v67;
    v69 = v79;
    v70 = v85;
    sub_1D613258C(v23, v79, v61, v32, v85, v65, v80, v81, v62, v63, v68, v0);

    swift_unknownObjectRelease();
    sub_1D613582C(v65, sub_1D5B4D72C);
    sub_1D613582C(v61, sub_1D5B4D3E0);
    v71 = *(v17 + 8);
    v71(v70, v16);
    return (v71)(v23, v16);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall WebEmbedViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for WebEmbedDataVisualization();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4D72C(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v55 - v15;
  sub_1D5B4D3E0();
  *&v19 = MEMORY[0x1EEE9AC00](v17 - 8, v18).n128_u64[0];
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63.receiver = v1;
  v63.super_class = ObjectType;
  objc_msgSendSuper2(&v63, sel_viewDidDisappear_, a1, v19);
  if (qword_1EDF17580 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725C42C();
  __swift_project_value_buffer(v22, qword_1EDFFC6F0);
  v23 = v1;
  v24 = sub_1D725C3FC();
  v25 = sub_1D7262EDC();

  v61 = v25;
  v26 = os_log_type_enabled(v24, v25);
  v27 = qword_1EDF3EFA0 + 96;
  if (v26)
  {
    v28 = swift_slowAlloc();
    v59 = v28;
    v60 = swift_slowAlloc();
    v62[0] = v60;
    *v28 = 136315138;
    sub_1D5B62BF4(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v29 = swift_allocObject();
    v57 = v21;
    v58 = v16;
    v30 = v29;
    *(v29 + 16) = xmmword_1D7273AE0;
    *(v29 + 56) = ObjectType;
    *(v29 + 64) = sub_1D61368DC(&unk_1EDF0D738, type metadata accessor for WebEmbedViewController);
    *(v30 + 32) = v23;
    v31 = v23;
    v56 = sub_1D72620BC();
    v33 = v32;
    v34 = v12;
    v35 = v5;
    v36 = v4;
    v37 = v8;
    v38 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_embedURL;
    swift_beginAccess();
    v39 = v57;
    sub_1D5C00D08(&v31[v38], v57, sub_1D5B4D3E0);
    v40 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_dataVisualization;
    swift_beginAccess();
    v41 = &v31[v40];
    v8 = v37;
    v4 = v36;
    v5 = v35;
    v12 = v34;
    v42 = v58;
    sub_1D5C00D08(v41, v58, sub_1D5B4D72C);
    v43 = sub_1D613520C(v56, v33, v39, v42);
    v45 = sub_1D5BC5100(v43, v44, v62);

    v46 = v59;
    *(v59 + 1) = v45;
    v27 = &qword_1EDF3EFA0[12];
    _os_log_impl(&dword_1D5B42000, v24, v61, "View did disappear, %s", v46, 0xCu);
    v47 = v60;
    __swift_destroy_boxed_opaque_existential_1(v60);
    MEMORY[0x1DA6FD500](v47, -1, -1);
    MEMORY[0x1DA6FD500](v46, -1, -1);
  }

  v48 = v27[237];
  swift_beginAccess();
  sub_1D5C00D08(&v23[v48], v12, sub_1D5B4D72C);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    v49 = sub_1D5B4D72C;
    v50 = v12;
  }

  else
  {
    sub_1D61367AC(v12, v8, type metadata accessor for WebEmbedDataVisualization);
    v51 = *&v23[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webEmbedDataSourceManager + 24];
    v52 = *&v23[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webEmbedDataSourceManager + 32];
    __swift_project_boxed_opaque_existential_1(&v23[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webEmbedDataSourceManager], v51);
    (*(v52 + 24))(v23, &protocol witness table for WebEmbedViewController, v8, v51, v52);
    v49 = type metadata accessor for WebEmbedDataVisualization;
    v50 = v8;
  }

  sub_1D613582C(v50, v49);
  v53 = *&v23[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_liveActivityWebEmbedDatastoreManager + 24];
  v54 = *&v23[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_liveActivityWebEmbedDatastoreManager + 32];
  __swift_project_boxed_opaque_existential_1(&v23[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_liveActivityWebEmbedDatastoreManager], v53);
  (*(v54 + 48))(v23, &protocol witness table for WebEmbedViewController, v53, v54);
}

id WebEmbedViewController.viewWillTransition(to:with:)(uint64_t a1, double a2, double a3)
{
  v8.receiver = v3;
  v8.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v8, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  if (v3[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_isResizable] == 1)
  {
    return [*&v3[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_presentationManager] reset];
  }

  return result;
}

uint64_t WebEmbedViewController.accessibilityElements.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webContentViewController) accessibilityElements];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D726267C();

  return v3;
}

uint64_t (*WebEmbedViewController.accessibilityElements.modify(uint64_t *a1))()
{
  v3 = [*(v1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webContentViewController) accessibilityElements];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1D726267C();
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  return sub_1D612BC30;
}

id WebEmbedViewController.prepare(layoutGuide:isResizable:isEmbedded:)(void *a1, char a2, char a3)
{
  sub_1D612BCA0(a1);
  *(v3 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_isResizable) = a2;
  v6 = *(v3 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webContentViewController);

  return [v6 setPocketsEnabled_];
}

void sub_1D612BCA0(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_layoutGuide;
  v5 = *(v1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_layoutGuide);
  sub_1D5B5A498(0, &unk_1EDF1AB30);
  v6 = v5;
  v7 = sub_1D726370C();

  if ((v7 & 1) == 0)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
    v9 = a1;

    v10 = *(v2 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_contentFrameView);
    [v9 contentFrame];
    [v10 setFrame_];
    *(v2 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_layoutGuideDidChange) = 1;
  }
}

uint64_t sub_1D612BE20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a2;
  v6 = type metadata accessor for WebEmbedDataVisualization();
  v63 = *(v6 - 8);
  v64 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v59 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4D72C(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v60 = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61358AC(0);
  v61 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v65 = v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D72585BC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BB60D4();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = v58 - v31;
  if (*(v3 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_layoutGuideDidChange))
  {
    return 1;
  }

  v58[1] = a3;
  v33 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_embedURL;
  swift_beginAccess();
  (*(v16 + 16))(v32, a1, v15);
  (*(v16 + 56))(v32, 0, 1, v15);
  v34 = *(v21 + 48);
  sub_1D5C00D08(v3 + v33, v24, sub_1D5B4D3E0);
  sub_1D5C00D08(v32, &v24[v34], sub_1D5B4D3E0);
  v35 = *(v16 + 48);
  if (v35(v24, 1, v15) == 1)
  {
    sub_1D613582C(v32, sub_1D5B4D3E0);
    if (v35(&v24[v34], 1, v15) == 1)
    {
      sub_1D613582C(v24, sub_1D5B4D3E0);
      goto LABEL_9;
    }

LABEL_7:
    v36 = sub_1D5BB60D4;
    v37 = v24;
LABEL_15:
    sub_1D613582C(v37, v36);
    return 1;
  }

  sub_1D5C00D08(v24, v28, sub_1D5B4D3E0);
  if (v35(&v24[v34], 1, v15) == 1)
  {
    sub_1D613582C(v32, sub_1D5B4D3E0);
    (*(v16 + 8))(v28, v15);
    goto LABEL_7;
  }

  (*(v16 + 32))(v19, &v24[v34], v15);
  sub_1D61368DC(&unk_1EDF45B60, MEMORY[0x1E6968FB0]);
  v38 = sub_1D7261FBC();
  v39 = *(v16 + 8);
  v39(v19, v15);
  sub_1D613582C(v32, sub_1D5B4D3E0);
  v39(v28, v15);
  sub_1D613582C(v24, sub_1D5B4D3E0);
  if ((v38 & 1) == 0)
  {
    return 1;
  }

LABEL_9:
  v40 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_dataVisualization;
  swift_beginAccess();
  v41 = *(v61 + 48);
  v42 = v65;
  sub_1D5C00D08(v3 + v40, v65, sub_1D5B4D72C);
  sub_1D5C00D08(v62, v42 + v41, sub_1D5B4D72C);
  v43 = v64;
  v44 = *(v63 + 48);
  if (v44(v42, 1, v64) == 1)
  {
    if (v44(v42 + v41, 1, v43) == 1)
    {
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  v45 = v60;
  sub_1D5C00D08(v42, v60, sub_1D5B4D72C);
  if (v44(v42 + v41, 1, v43) == 1)
  {
    sub_1D613582C(v45, type metadata accessor for WebEmbedDataVisualization);
LABEL_14:
    v36 = sub_1D61358AC;
    v37 = v42;
    goto LABEL_15;
  }

  v47 = v59;
  sub_1D61367AC(v42 + v41, v59, type metadata accessor for WebEmbedDataVisualization);
  v48 = WebEmbedDataVisualization.identifier.getter();
  v50 = v49;
  if (v48 == WebEmbedDataVisualization.identifier.getter() && v50 == v51)
  {

    sub_1D613582C(v47, type metadata accessor for WebEmbedDataVisualization);
    sub_1D613582C(v45, type metadata accessor for WebEmbedDataVisualization);
LABEL_20:
    sub_1D613582C(v42, sub_1D5B4D72C);
    goto LABEL_21;
  }

  v57 = sub_1D72646CC();

  sub_1D613582C(v47, type metadata accessor for WebEmbedDataVisualization);
  sub_1D613582C(v45, type metadata accessor for WebEmbedDataVisualization);
  sub_1D613582C(v42, sub_1D5B4D72C);
  if ((v57 & 1) == 0)
  {
    return 1;
  }

LABEL_21:
  v52 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_feedConfiguration;
  swift_beginAccess();
  v53 = v3;
  v54 = *(v3 + v52);
  sub_1D5B5A498(0, &qword_1EDF1A960);
  v55 = v54;
  v56 = sub_1D726370C();

  if ((v56 & 1) == 0)
  {
    return 1;
  }

  return [*(v53 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_errorView) isHidden] ^ 1;
}

void sub_1D612C618(void *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v62 = a5;
  v8 = type metadata accessor for WebEmbedStateMachineEvent(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4D72C(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D725891C();
  v21 = swift_projectBox();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    v61 = v20;
    if (qword_1EDF17580 != -1)
    {
      swift_once();
    }

    v24 = sub_1D725C42C();
    __swift_project_value_buffer(v24, qword_1EDFFC6F0);
    v25 = a1;
    v26 = v23;
    v59 = a1;
    v27 = v26;
    v28 = sub_1D725C3FC();
    v29 = sub_1D7262EDC();
    v60 = v25;

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v58 = a4;
      v31 = v30;
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v63[0] = v56;
      *v31 = 136315650;
      sub_1D5B62BF4(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1D7273AE0;
      *(v32 + 56) = type metadata accessor for WebEmbedViewController();
      *(v32 + 64) = sub_1D61368DC(&unk_1EDF0D738, type metadata accessor for WebEmbedViewController);
      *(v32 + 32) = v27;
      v33 = v27;
      v57 = v21;
      v34 = v33;
      v35 = sub_1D72620BC();
      v54 = v29;
      v37 = v36;
      v53 = v28;
      v38 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_embedURL;
      swift_beginAccess();
      sub_1D5C00D08(v34 + v38, v19, sub_1D5B4D3E0);
      v39 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_dataVisualization;
      swift_beginAccess();
      v21 = v57;
      sub_1D5C00D08(v34 + v39, v15, sub_1D5B4D72C);
      v40 = sub_1D613520C(v35, v37, v19, v15);
      v42 = sub_1D5BC5100(v40, v41, v63);

      *(v31 + 4) = v42;
      *(v31 + 12) = 2048;
      *(v31 + 14) = a2;
      *(v31 + 22) = 2112;
      v44 = v59;
      v43 = v60;
      *(v31 + 24) = v60;
      v45 = v55;
      *v55 = v44;
      v46 = v43;
      v47 = v53;
      _os_log_impl(&dword_1D5B42000, v53, v54, "Did finish presenting, %s, height=%f, datastore=%@", v31, 0x20u);
      sub_1D613582C(v45, sub_1D5F156F4);
      MEMORY[0x1DA6FD500](v45, -1, -1);
      v48 = v56;
      __swift_destroy_boxed_opaque_existential_1(v56);
      MEMORY[0x1DA6FD500](v48, -1, -1);
      v49 = v31;
      a4 = v58;
      MEMORY[0x1DA6FD500](v49, -1, -1);
    }

    else
    {
    }

    v50 = v61;
    swift_beginAccess();
    Context = type metadata accessor for WebEmbedStateMachineLoadContext(0);
    (*(*(v50 - 8) + 16))(&v11[*(Context + 20)], v21, v50);
    v52 = v62;
    *v11 = a4;
    *(v11 + 1) = v52;

    sub_1D725890C();
    swift_storeEnumTagMultiPayload();
    sub_1D725AB1C();
    sub_1D613582C(v11, type metadata accessor for WebEmbedStateMachineEvent);
    sub_1D612CB88();
  }
}

id sub_1D612CB88()
{
  v1 = &v0[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_layoutIdentifier];
  result = swift_beginAccess();
  v3 = v1[1];
  if (v3 && v0[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_isResizable] == 1)
  {
    v4 = *v1;
    v5 = *&v0[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_presentationManager];

    [v5 height];
    v7 = v6;
    result = [v0 view];
    if (result)
    {
      v8 = result;
      [result bounds];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;

      v28.origin.x = v10;
      v28.origin.y = v12;
      v28.size.width = v14;
      v28.size.height = v16;
      if (v7 == CGRectGetHeight(v28))
      {
      }

      swift_beginAccess();
      if (!swift_weakLoadStrong())
      {
      }

      result = [v0 view];
      if (result)
      {
        v17 = result;
        [result bounds];
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v25 = v24;

        v29.origin.x = v19;
        v29.origin.y = v21;
        v29.size.width = v23;
        v29.size.height = v25;
        Width = CGRectGetWidth(v29);
        [v5 height];
        sub_1D5FE5098(v4, v3, Width, v27, *&v0[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_viewportSize], *&v0[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_viewportSize + 8]);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void sub_1D612CD68()
{
  v0 = type metadata accessor for WebEmbedStateMachineEvent(0);
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = &v38[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5B4D72C(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v38[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v38[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_1D725891C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v38[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = swift_projectBox();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    sub_1D725890C();
    swift_beginAccess();
    (*(v13 + 40))(v17, v16, v12);
    if (qword_1EDF17580 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725C42C();
    __swift_project_value_buffer(v20, qword_1EDFFC6F0);
    v21 = v19;
    v22 = sub_1D725C3FC();
    v23 = sub_1D7262EDC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v40 = v24;
      v41 = swift_slowAlloc();
      v42 = v41;
      *v24 = 136315138;
      sub_1D5B62BF4(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1D7273AE0;
      *(v25 + 56) = type metadata accessor for WebEmbedViewController();
      *(v25 + 64) = sub_1D61368DC(&unk_1EDF0D738, type metadata accessor for WebEmbedViewController);
      *(v25 + 32) = v21;
      v26 = v21;
      v39 = v23;
      v27 = v26;
      v28 = sub_1D72620BC();
      v30 = v29;
      v31 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_embedURL;
      swift_beginAccess();
      sub_1D5C00D08(v27 + v31, v11, sub_1D5B4D3E0);
      v32 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_dataVisualization;
      swift_beginAccess();
      sub_1D5C00D08(v27 + v32, v7, sub_1D5B4D72C);
      v33 = sub_1D613520C(v28, v30, v11, v7);
      v35 = sub_1D5BC5100(v33, v34, &v42);

      v36 = v40;
      *(v40 + 1) = v35;
      _os_log_impl(&dword_1D5B42000, v22, v39, "Will start presenting, %s", v36, 0xCu);
      v37 = v41;
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x1DA6FD500](v37, -1, -1);
      MEMORY[0x1DA6FD500](v36, -1, -1);
    }

    swift_storeEnumTagMultiPayload();
    sub_1D725AB1C();
    sub_1D613582C(v3, type metadata accessor for WebEmbedStateMachineEvent);
  }
}

void sub_1D612D234()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = (Strong + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_onEmbedInteraction);
    v2 = Strong;
    swift_beginAccess();
    v3 = *v1;
    sub_1D5DEA510(*v1);

    if (v3)
    {
      v3();
      sub_1D5B74328(v3);
    }
  }
}

void sub_1D612D2D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v59 = a3;
  v6 = type metadata accessor for WebEmbedStateMachineEvent(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4D72C(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D725891C();
  v60 = swift_projectBox();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v58 = v13;
    if (qword_1EDF17580 != -1)
    {
      swift_once();
    }

    v21 = sub_1D725C42C();
    __swift_project_value_buffer(v21, qword_1EDFFC6F0);
    v22 = a1;
    v23 = v20;
    v24 = sub_1D725C3FC();
    v25 = sub_1D7262EDC();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v53 = v25;
      v27 = v26;
      v28 = swift_slowAlloc();
      v52 = v28;
      v54 = swift_slowAlloc();
      v61[0] = v54;
      *v27 = 138543618;
      v29 = a1;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v30;
      *v28 = v30;
      *(v27 + 12) = 2080;
      sub_1D5B62BF4(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
      v31 = swift_allocObject();
      v56 = v6;
      v32 = v31;
      *(v31 + 16) = xmmword_1D7273AE0;
      *(v31 + 56) = type metadata accessor for WebEmbedViewController();
      *(v32 + 64) = sub_1D61368DC(&unk_1EDF0D738, type metadata accessor for WebEmbedViewController);
      *(v32 + 32) = v23;
      v33 = v23;
      v55 = v18;
      v34 = v33;
      v35 = sub_1D72620BC();
      v57 = a4;
      v37 = v36;
      v51 = v24;
      v38 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_embedURL;
      swift_beginAccess();
      sub_1D5C00D08(v34 + v38, v17, sub_1D5B4D3E0);
      v39 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_dataVisualization;
      swift_beginAccess();
      v40 = v34 + v39;
      v18 = v55;
      v41 = v58;
      sub_1D5C00D08(v40, v58, sub_1D5B4D72C);
      v42 = sub_1D613520C(v35, v37, v17, v41);
      v44 = sub_1D5BC5100(v42, v43, v61);

      *(v27 + 14) = v44;
      a4 = v57;
      v45 = v51;
      _os_log_impl(&dword_1D5B42000, v51, v53, "Failed loading with error=%{public}@, %s", v27, 0x16u);
      v46 = v52;
      sub_1D613582C(v52, sub_1D5F156F4);
      MEMORY[0x1DA6FD500](v46, -1, -1);
      v47 = v54;
      __swift_destroy_boxed_opaque_existential_1(v54);
      MEMORY[0x1DA6FD500](v47, -1, -1);
      MEMORY[0x1DA6FD500](v27, -1, -1);
    }

    else
    {
    }

    v48 = v60;
    swift_beginAccess();
    v49 = type metadata accessor for WebEmbedStateMachineErrorContext(0);
    (*(*(v18 - 8) + 16))(&v9[*(v49 + 20)], v48, v18);
    sub_1D725890C();
    *v9 = v59;
    *(v9 + 1) = a4;
    *&v9[*(v49 + 28)] = a1;
    swift_storeEnumTagMultiPayload();
    v50 = a1;

    sub_1D725AB1C();
    sub_1D613582C(v9, type metadata accessor for WebEmbedStateMachineEvent);
  }
}

void sub_1D612D834(char *a1)
{
  v125 = a1;
  v127 = type metadata accessor for WebEmbedFailureContext();
  MEMORY[0x1EEE9AC00](v127, v1);
  v3 = (&v115 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B4D72C(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v124 = (&v115 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v115 - v9;
  v11 = type metadata accessor for WebEmbedDataVisualization();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v126 = &v115 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v115 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v129 = &v115 - v21;
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v115 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v115 - v28;
  v30 = sub_1D72585BC();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v32);
  v128 = &v115 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v130 = &v115 - v36;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v38 = Strong;
    v123 = v3;
    v39 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_embedURL;
    swift_beginAccess();
    sub_1D5C00D08(&v38[v39], v29, sub_1D5B4D3E0);
    if ((*(v31 + 48))(v29, 1, v30) == 1)
    {

      sub_1D613582C(v29, sub_1D5B4D3E0);
    }

    else
    {
      v122 = v18;
      v40 = v130;
      (*(v31 + 32))(v130, v29, v30);
      v41 = *&v38[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_location];
      if (v41)
      {
        v42 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_dataVisualization;
        swift_beginAccess();
        sub_1D5C00D08(&v38[v42], v10, sub_1D5B4D72C);
        if ((*(v12 + 48))(v10, 1, v11) == 1)
        {
          (*(v31 + 8))(v130, v30);

          sub_1D613582C(v10, sub_1D5B4D72C);
        }

        else
        {
          v120 = v42;
          sub_1D61367AC(v10, v129, type metadata accessor for WebEmbedDataVisualization);
          v43 = qword_1EDF17580;
          swift_unknownObjectRetain();
          if (v43 != -1)
          {
            swift_once();
          }

          v44 = sub_1D725C42C();
          __swift_project_value_buffer(v44, qword_1EDFFC6F0);
          v45 = v125;
          v46 = v38;
          v47 = sub_1D725C3FC();
          v48 = sub_1D7262EDC();

          v119 = v48;
          v49 = os_log_type_enabled(v47, v48);
          v50 = &off_1E84D3000;
          v121 = v41;
          v125 = v46;
          if (v49)
          {
            v51 = swift_slowAlloc();
            v117 = v47;
            v52 = v51;
            v115 = v51;
            v118 = swift_slowAlloc();
            *&v131 = v118;
            *v52 = 136446978;
            v53 = [v45 contentDomain];
            v54 = v45;
            v55 = sub_1D726207C();
            v57 = v56;

            v58 = sub_1D5BC5100(v55, v57, &v131);

            v59 = v115;
            *(v115 + 4) = v58;
            *(v59 + 12) = 2082;
            v116 = v54;
            v60 = [v54 embedName];
            v61 = sub_1D726207C();
            v63 = v62;

            v64 = sub_1D5BC5100(v61, v63, &v131);

            *(v59 + 14) = v64;
            *(v59 + 22) = 2082;
            v65 = [v54 errorType];
            v66 = sub_1D726207C();
            v68 = v67;

            v69 = sub_1D5BC5100(v66, v68, &v131);

            *(v59 + 24) = v69;
            *(v59 + 32) = 2080;
            v70 = v59;
            sub_1D5B62BF4(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
            v71 = swift_allocObject();
            *(v71 + 16) = xmmword_1D7273AE0;
            *(v71 + 56) = type metadata accessor for WebEmbedViewController();
            *(v71 + 64) = sub_1D61368DC(&unk_1EDF0D738, type metadata accessor for WebEmbedViewController);
            v72 = v125;
            *(v71 + 32) = v125;
            v73 = v72;
            v74 = v116;
            v75 = sub_1D72620BC();
            v77 = v76;
            sub_1D5C00D08(&v38[v39], v25, sub_1D5B4D3E0);
            v78 = v120 + v38;
            v79 = v124;
            sub_1D5C00D08(v78, v124, sub_1D5B4D72C);
            v80 = v75;
            v50 = &off_1E84D3000;
            v81 = sub_1D613520C(v80, v77, v25, v79);
            v83 = sub_1D5BC5100(v81, v82, &v131);

            *(v70 + 34) = v83;
            v84 = v117;
            _os_log_impl(&dword_1D5B42000, v117, v119, "Embed posted failure message=(contentDomain: %{public}s, embedName:%{public}s, errorType:%{public}s), %s", v70, 0x2Au);
            v85 = v118;
            swift_arrayDestroy();
            MEMORY[0x1DA6FD500](v85, -1, -1);
            MEMORY[0x1DA6FD500](v70, -1, -1);

            v86 = v130;
          }

          else
          {

            v86 = v130;
            v74 = v45;
          }

          v120 = *(v31 + 16);
          v87 = v128;
          v120(v128, v86, v30);
          v124 = type metadata accessor for WebEmbedDataVisualization;
          v88 = v122;
          sub_1D5C00D08(v129, v122, type metadata accessor for WebEmbedDataVisualization);
          swift_unknownObjectRetain();
          v89 = [v74 v50[387]];
          v90 = sub_1D726207C();
          v92 = v91;

          v93 = v123;
          *v123 = v90;
          v93[1] = v92;
          v94 = [v74 embedName];
          v95 = sub_1D726207C();
          v97 = v96;

          v93[2] = v95;
          v93[3] = v97;
          v98 = [v74 errorType];
          v99 = sub_1D726207C();
          v101 = v100;

          v93[4] = v99;
          v93[5] = v101;
          v102 = v127;
          v120(v93 + *(v127 + 28), v87, v30);
          v103 = [v121 context];
          v104 = sub_1D726207C();
          v106 = v105;

          v107 = (v93 + *(v102 + 32));
          *v107 = v104;
          v107[1] = v106;
          v108 = v126;
          sub_1D5C00D08(v88, v126, v124);
          sub_1D6D21264(v108, &v131);
          swift_unknownObjectRelease();
          sub_1D613582C(v88, type metadata accessor for WebEmbedDataVisualization);
          v109 = *(v31 + 8);
          v109(v128, v30);
          v110 = v132;
          v111 = v93 + *(v102 + 36);
          *v111 = v131;
          v111[16] = v110;
          v112 = v125;
          v113 = *&v125[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webEmbedFailureHandler + 8];
          ObjectType = swift_getObjectType();
          (*(v113 + 8))(v112, v93, ObjectType, v113);
          swift_unknownObjectRelease();
          sub_1D613582C(v93, type metadata accessor for WebEmbedFailureContext);
          sub_1D613582C(v129, type metadata accessor for WebEmbedDataVisualization);
          v109(v130, v30);
        }
      }

      else
      {
        (*(v31 + 8))(v40, v30);
      }
    }
  }
}

void sub_1D612E2F0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_navigationBarConfiguration;
    swift_beginAccess();
    *&v3[v4] = a1;
    swift_unknownObjectRelease();
    v5 = &v3[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_onNavigationBarConfigurationUpdate];
    swift_beginAccess();
    v6 = *v5;
    if (*v5)
    {
      swift_unknownObjectRetain();
      sub_1D5DEA510(v6);
      v6(a1);
      sub_1D5B74328(v6);
    }

    else
    {
      swift_unknownObjectRetain();
    }
  }
}

void sub_1D612E3DC(double a1, double a2)
{
  sub_1D5B4D72C(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v35[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v35[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = Strong + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_preferredSize;
    if ((*(Strong + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_preferredSize + 16) & 1) != 0 || *v14 != a1 || *(v14 + 8) != a2)
    {
      if (qword_1EDF17580 != -1)
      {
        swift_once();
      }

      v15 = sub_1D725C42C();
      __swift_project_value_buffer(v15, qword_1EDFFC6F0);
      v16 = v13;
      v17 = sub_1D725C3FC();
      v18 = sub_1D7262EDC();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v37 = v19;
        v38 = swift_slowAlloc();
        v39[0] = v38;
        *v19 = 136315138;
        sub_1D5B62BF4(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_1D7273AE0;
        *(v20 + 56) = type metadata accessor for WebEmbedViewController();
        *(v20 + 64) = sub_1D61368DC(&unk_1EDF0D738, type metadata accessor for WebEmbedViewController);
        *(v20 + 32) = v16;
        v21 = v16;
        v22 = sub_1D72620BC();
        v24 = v23;
        v36 = v18;
        v25 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_embedURL;
        swift_beginAccess();
        sub_1D5C00D08(&v21[v25], v11, sub_1D5B4D3E0);
        v26 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_dataVisualization;
        swift_beginAccess();
        sub_1D5C00D08(&v21[v26], v7, sub_1D5B4D72C);
        v27 = sub_1D613520C(v22, v24, v11, v7);
        v29 = sub_1D5BC5100(v27, v28, v39);

        v30 = v37;
        *(v37 + 1) = v29;
        _os_log_impl(&dword_1D5B42000, v17, v36, "Preferred size did update, %s", v30, 0xCu);
        v31 = v38;
        __swift_destroy_boxed_opaque_existential_1(v38);
        MEMORY[0x1DA6FD500](v31, -1, -1);
        MEMORY[0x1DA6FD500](v30, -1, -1);
      }

      *v14 = a1;
      *(v14 + 8) = a2;
      *(v14 + 16) = 0;
      v32 = &v16[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_onSizeInvalidation];
      swift_beginAccess();
      v33 = *v32;
      if (*v32)
      {

        v33(v34, a1, a2);
        sub_1D5B74328(v33);
      }
    }
  }
}

void sub_1D612E7D4(uint64_t a1, int a2, int a3)
{
  LODWORD(v3) = a3;
  LODWORD(v4) = a2;
  sub_1D5B4D72C(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    if (qword_1EDF17580 != -1)
    {
      swift_once();
    }

    v15 = sub_1D725C42C();
    __swift_project_value_buffer(v15, qword_1EDFFC6F0);
    v16 = v14;
    v17 = sub_1D725C3FC();
    v18 = sub_1D7262EDC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v37 = v34;
      *v19 = 67109378;
      *(v19 + 4) = v4 & 1;
      *(v19 + 8) = 2080;
      sub_1D5B62BF4(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1D7273AE0;
      *(v20 + 56) = type metadata accessor for WebEmbedViewController();
      *(v20 + 64) = sub_1D61368DC(&unk_1EDF0D738, type metadata accessor for WebEmbedViewController);
      *(v20 + 32) = v16;
      v21 = v16;
      v36 = v3;
      v3 = v21;
      v22 = sub_1D72620BC();
      v35 = v4;
      v24 = v23;
      v25 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_embedURL;
      swift_beginAccess();
      sub_1D5C00D08(&v3[v25], v12, sub_1D5B4D3E0);
      v26 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_dataVisualization;
      swift_beginAccess();
      sub_1D5C00D08(&v3[v26], v8, sub_1D5B4D72C);
      v27 = sub_1D613520C(v22, v24, v12, v8);
      v4 = sub_1D5BC5100(v27, v28, &v37);
      LOBYTE(v3) = v36;

      *(v19 + 10) = v4;
      LOBYTE(v4) = v35;
      _os_log_impl(&dword_1D5B42000, v17, v18, "Did load data visualization data store, isInitialized=%{BOOL}d, %s", v19, 0x12u);
      v29 = v34;
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x1DA6FD500](v29, -1, -1);
      MEMORY[0x1DA6FD500](v19, -1, -1);
    }

    if (v4 & 1) != 0 && (v3)
    {
      v30 = [*&v16[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webContentViewController] view];
      if (!v30)
      {
        __break(1u);
        return;
      }

      v31 = v30;
      [v30 setHidden_];
    }

    v32 = *&v16[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_debugLoadView];
    if (v32)
    {
      v33 = v32;
      sub_1D69FC47C(0);

      v16 = v33;
    }
  }
}

void sub_1D612EBC4()
{
  sub_1D5B4D72C(0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if (qword_1EDF17580 != -1)
    {
      swift_once();
    }

    v10 = sub_1D725C42C();
    __swift_project_value_buffer(v10, qword_1EDFFC6F0);
    v11 = v9;
    v12 = sub_1D725C3FC();
    v13 = sub_1D7262EDC();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = v29;
      *v14 = 136315138;
      sub_1D5B62BF4(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1D7273AE0;
      *(v15 + 56) = type metadata accessor for WebEmbedViewController();
      *(v15 + 64) = sub_1D61368DC(&unk_1EDF0D738, type metadata accessor for WebEmbedViewController);
      *(v15 + 32) = v11;
      v16 = v11;
      v17 = sub_1D72620BC();
      v19 = v18;
      v20 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_embedURL;
      swift_beginAccess();
      sub_1D5C00D08(&v16[v20], v7, sub_1D5B4D3E0);
      v21 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_dataVisualization;
      swift_beginAccess();
      sub_1D5C00D08(&v16[v21], v3, sub_1D5B4D72C);
      v22 = sub_1D613520C(v17, v19, v7, v3);
      v24 = sub_1D5BC5100(v22, v23, &v30);

      *(v14 + 4) = v24;
      _os_log_impl(&dword_1D5B42000, v12, v13, "Did load live activity data store, %s", v14, 0xCu);
      v25 = v29;
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1DA6FD500](v25, -1, -1);
      MEMORY[0x1DA6FD500](v14, -1, -1);
    }

    v26 = *&v11[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_debugLoadView];
    if (v26)
    {
      v27 = v26;
      sub_1D69FC47C(2);
    }
  }
}

uint64_t sub_1D612EF3C(void *a1, uint64_t a2, uint64_t a3)
{
  v44 = a3;
  v46 = a2;
  v5 = sub_1D72585BC();
  v45 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D725C42C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D725C3EC();
  v14 = v3;
  v15 = sub_1D725C3FC();
  v16 = sub_1D7262EDC();

  if (os_log_type_enabled(v15, v16))
  {
    v42 = v9;
    v43 = a1;
    v17 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    aBlock[0] = v41;
    *v17 = 136446210;
    v18 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_embedURL;
    swift_beginAccess();
    if ((*(v45 + 48))(&v14[v18], 1, v5))
    {
      v19 = 0xE500000000000000;
      v20 = 0x3E6C696E3CLL;
    }

    else
    {
      v21 = v5;
      v40 = v5;
      v22 = v45;
      (*(v45 + 16))(v8, &v14[v18], v21);
      v20 = sub_1D72583DC();
      v19 = v23;
      (*(v22 + 8))(v8, v40);
    }

    v24 = sub_1D5BC5100(v20, v19, aBlock);

    *(v17 + 4) = v24;
    _os_log_impl(&dword_1D5B42000, v15, v16, "WebEmbedViewController will inject live activity store, embedURL=%{public}s", v17, 0xCu);
    v25 = v41;
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x1DA6FD500](v25, -1, -1);
    MEMORY[0x1DA6FD500](v17, -1, -1);

    (*(v10 + 8))(v13, v42);
    a1 = v43;
  }

  else
  {

    (*(v10 + 8))(v13, v9);
  }

  v26 = type metadata accessor for LiveActivityEmbedScript();
  v27 = objc_allocWithZone(v26);
  v28 = &v27[OBJC_IVAR____TtC8NewsFeed23LiveActivityEmbedScript_identifier];
  *v28 = 0xD000000000000018;
  v28[1] = 0x80000001D73CAC90;
  v27[OBJC_IVAR____TtC8NewsFeed23LiveActivityEmbedScript_queueable] = 0;
  *&v27[OBJC_IVAR____TtC8NewsFeed23LiveActivityEmbedScript_newDatastore] = a1;
  v48.receiver = v27;
  v48.super_class = v26;
  v29 = a1;
  v30 = objc_msgSendSuper2(&v48, sel_init);
  v31 = *&v14[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webContentViewController];
  v32 = [v31 scriptsManager];

  v33 = sub_1D726203C();

  [v32 removeScriptByIdentifier_];
  swift_unknownObjectRelease();

  v34 = [v31 scriptsManager];
  v35 = v46;
  if (v46)
  {
    aBlock[4] = v46;
    aBlock[5] = v44;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D5B6B06C;
    aBlock[3] = &block_descriptor_22;
    v36 = _Block_copy(aBlock);
    v37 = v30;
    sub_1D5DEA510(v35);
  }

  else
  {
    v38 = v30;
    v36 = 0;
  }

  [v34 executeScript:v30 completion:v36];
  _Block_release(v36);
  swift_unknownObjectRelease();

  [objc_msgSend(v31 scriptsManager)];
  return swift_unknownObjectRelease();
}

void sub_1D612F428(uint64_t a1, uint64_t a2, const char *a3, SEL *a4)
{
  sub_1D5B4D72C(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v38[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v38[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDF17580 != -1)
  {
    swift_once();
  }

  v15 = sub_1D725C42C();
  __swift_project_value_buffer(v15, qword_1EDFFC6F0);

  v16 = sub_1D725C3FC();
  v17 = sub_1D7262EDC();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v43[0] = v41;
    *v18 = 136315138;
    Strong = swift_unknownObjectUnownedLoadStrong();
    v42 = a4;
    v20 = Strong;
    sub_1D5B62BF4(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v21 = swift_allocObject();
    v40 = a3;
    v22 = v21;
    *(v21 + 16) = xmmword_1D7273AE0;
    *(v21 + 56) = type metadata accessor for WebEmbedViewController();
    *(v22 + 64) = sub_1D61368DC(&unk_1EDF0D738, type metadata accessor for WebEmbedViewController);
    *(v22 + 32) = v20;
    v23 = v20;
    v24 = sub_1D72620BC();
    v43[4] = v4;
    v26 = v25;
    v39 = v17;
    v27 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_embedURL;
    swift_beginAccess();
    sub_1D5C00D08(v23 + v27, v14, sub_1D5B4D3E0);
    v28 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_dataVisualization;
    swift_beginAccess();
    sub_1D5C00D08(v23 + v28, v10, sub_1D5B4D72C);
    v29 = sub_1D613520C(v24, v26, v14, v10);
    v31 = v30;

    a4 = v42;
    v32 = sub_1D5BC5100(v29, v31, v43);

    *(v18 + 4) = v32;
    _os_log_impl(&dword_1D5B42000, v16, v39, v40, v18, 0xCu);
    v33 = v41;
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x1DA6FD500](v33, -1, -1);
    MEMORY[0x1DA6FD500](v18, -1, -1);
  }

  v34 = swift_unknownObjectUnownedLoadStrong();
  v35 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_showsLoadingSpinner;
  swift_beginAccess();
  LODWORD(v35) = v34[v35];

  if (v35 == 1)
  {
    v36 = swift_unknownObjectUnownedLoadStrong();
    v37 = *&v36[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_activityIndicator];

    [v37 *a4];
  }
}

void sub_1D612F808()
{
  sub_1D5B4D72C(0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDF17580 != -1)
  {
    swift_once();
  }

  v8 = sub_1D725C42C();
  __swift_project_value_buffer(v8, qword_1EDFFC6F0);

  v9 = sub_1D725C3FC();
  v10 = sub_1D7262EDC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v11 = 136315138;
    Strong = swift_unknownObjectUnownedLoadStrong();
    sub_1D5B62BF4(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1D7273AE0;
    *(v13 + 56) = type metadata accessor for WebEmbedViewController();
    *(v13 + 64) = sub_1D61368DC(&unk_1EDF0D738, type metadata accessor for WebEmbedViewController);
    *(v13 + 32) = Strong;
    v14 = Strong;
    v15 = sub_1D72620BC();
    v17 = v16;
    v18 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_embedURL;
    swift_beginAccess();
    sub_1D5C00D08(v14 + v18, v7, sub_1D5B4D3E0);
    v19 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_dataVisualization;
    swift_beginAccess();
    sub_1D5C00D08(v14 + v19, v3, sub_1D5B4D72C);
    v20 = sub_1D613520C(v15, v17, v7, v3);
    v22 = v21;

    v23 = sub_1D5BC5100(v20, v22, &v27);

    *(v11 + 4) = v23;
    _os_log_impl(&dword_1D5B42000, v9, v10, "Will present as loaded, %s", v11, 0xCu);
    v24 = v26;
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x1DA6FD500](v24, -1, -1);
    MEMORY[0x1DA6FD500](v11, -1, -1);
  }
}

void sub_1D612FB6C(uint64_t a1)
{
  v2 = sub_1D7257ADC();
  v24 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v25[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WebEmbedStateMachineEvent(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v25[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Context = type metadata accessor for WebEmbedStateMachineLoadContext(0);
  MEMORY[0x1EEE9AC00](Context, v11);
  v13 = (&v25[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  Strong = swift_unknownObjectUnownedLoadStrong();
  v15 = *&Strong[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webContentViewController];

  v16 = [v15 view];
  if (v16)
  {
    [v16 setHidden_];

    v17 = swift_unknownObjectUnownedLoadStrong();
    v18 = *&v17[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_presentationManager];
    swift_unknownObjectRetain();

    [v18 setPresentationState_];
    swift_unknownObjectRelease();
    sub_1D5C00D08(a1, v9, type metadata accessor for WebEmbedStateMachineEvent);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1D613582C(v9, type metadata accessor for WebEmbedStateMachineEvent);
    }

    else
    {
      sub_1D61367AC(v9, v13, type metadata accessor for WebEmbedStateMachineLoadContext);
      v19 = swift_unknownObjectUnownedLoadStrong();
      sub_1D5B68374(v19 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_coordinator, v25);

      v20 = v26;
      v21 = v27;
      __swift_project_boxed_opaque_existential_1(v25, v26);
      v22 = *v13;
      v23 = v13[1];
      sub_1D7257A5C();
      (*(v21 + 16))(v22, v23, v5, v20, v21);
      (*(v24 + 8))(v5, v2);
      sub_1D613582C(v13, type metadata accessor for WebEmbedStateMachineLoadContext);
      __swift_destroy_boxed_opaque_existential_1(v25);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1D612FE94()
{
  sub_1D5B4D72C(0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v33[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDF17580 != -1)
  {
    swift_once();
  }

  v8 = sub_1D725C42C();
  __swift_project_value_buffer(v8, qword_1EDFFC6F0);

  v9 = sub_1D725C3FC();
  v10 = sub_1D7262EDC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v35 = v11;
    v36 = swift_slowAlloc();
    v37 = v36;
    *v11 = 136315138;
    Strong = swift_unknownObjectUnownedLoadStrong();
    sub_1D5B62BF4(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    v34 = v10;
    v14 = v13;
    *(v13 + 16) = xmmword_1D7273AE0;
    *(v13 + 56) = type metadata accessor for WebEmbedViewController();
    *(v14 + 64) = sub_1D61368DC(&unk_1EDF0D738, type metadata accessor for WebEmbedViewController);
    *(v14 + 32) = Strong;
    v15 = Strong;
    v16 = sub_1D72620BC();
    v18 = v17;
    v19 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_embedURL;
    swift_beginAccess();
    sub_1D5C00D08(v15 + v19, v7, sub_1D5B4D3E0);
    v20 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_dataVisualization;
    swift_beginAccess();
    sub_1D5C00D08(v15 + v20, v3, sub_1D5B4D72C);
    v21 = sub_1D613520C(v16, v18, v7, v3);
    v23 = v22;

    v24 = sub_1D5BC5100(v21, v23, &v37);

    v25 = v35;
    *(v35 + 1) = v24;
    v26 = v25;
    _os_log_impl(&dword_1D5B42000, v9, v34, "Will present as unloaded, %s", v25, 0xCu);
    v27 = v36;
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x1DA6FD500](v27, -1, -1);
    MEMORY[0x1DA6FD500](v26, -1, -1);
  }

  v28 = swift_unknownObjectUnownedLoadStrong();
  v29 = *&v28[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webContentViewController];

  v30 = [v29 view];
  if (v30)
  {
    [v30 setHidden_];

    v31 = swift_unknownObjectUnownedLoadStrong();
    v32 = *&v31[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_presentationManager];
    swift_unknownObjectRetain();

    [v32 setPresentationState_];
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_1D61302A4(uint64_t a1, uint64_t a2)
{
  v66 = a1;
  v3 = sub_1D7257ADC();
  v65 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v64 = &v55[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for WebEmbedStateMachineEvent(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v55[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v62 = type metadata accessor for WebEmbedStateMachineErrorContext(0);
  MEMORY[0x1EEE9AC00](v62, v10);
  v63 = &v55[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5B4D72C(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v55[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v55[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDF17580 != -1)
  {
    swift_once();
  }

  v20 = sub_1D725C42C();
  __swift_project_value_buffer(v20, qword_1EDFFC6F0);

  v21 = sub_1D725C3FC();
  v22 = sub_1D7262EDC();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v57 = v23;
    v58 = swift_slowAlloc();
    v67[0] = v58;
    *v23 = 136315138;
    Strong = swift_unknownObjectUnownedLoadStrong();
    v61 = v3;
    v25 = Strong;
    sub_1D5B62BF4(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v26 = swift_allocObject();
    v59 = a2;
    v27 = v26;
    *(v26 + 16) = xmmword_1D7273AE0;
    *(v26 + 56) = type metadata accessor for WebEmbedViewController();
    *(v27 + 64) = sub_1D61368DC(&unk_1EDF0D738, type metadata accessor for WebEmbedViewController);
    *(v27 + 32) = v25;
    v28 = v25;
    v29 = sub_1D72620BC();
    v60 = v9;
    v31 = v30;
    v56 = v22;
    v32 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_embedURL;
    swift_beginAccess();
    sub_1D5C00D08(v28 + v32, v19, sub_1D5B4D3E0);
    v33 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_dataVisualization;
    swift_beginAccess();
    sub_1D5C00D08(v28 + v33, v15, sub_1D5B4D72C);
    v34 = sub_1D613520C(v29, v31, v19, v15);
    v36 = v35;

    v3 = v61;
    v37 = sub_1D5BC5100(v34, v36, v67);
    v9 = v60;

    v38 = v57;
    *(v57 + 1) = v37;
    _os_log_impl(&dword_1D5B42000, v21, v56, "Will present as error state, %s", v38, 0xCu);
    v39 = v58;
    __swift_destroy_boxed_opaque_existential_1(v58);
    MEMORY[0x1DA6FD500](v39, -1, -1);
    MEMORY[0x1DA6FD500](v38, -1, -1);
  }

  v40 = swift_unknownObjectUnownedLoadStrong();
  v41 = *&v40[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_errorView];

  [v41 setHidden_];
  v42 = swift_unknownObjectUnownedLoadStrong();
  v43 = [v42 view];

  if (v43)
  {
    v44 = swift_unknownObjectUnownedLoadStrong();
    v45 = *&v44[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_tapGestureRecognizer];

    [v43 addGestureRecognizer_];
    sub_1D5C00D08(v66, v9, type metadata accessor for WebEmbedStateMachineEvent);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v46 = v9;
      v47 = v63;
      sub_1D61367AC(v46, v63, type metadata accessor for WebEmbedStateMachineErrorContext);
      v48 = swift_unknownObjectUnownedLoadStrong();
      sub_1D5B68374(v48 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_coordinator, v67);

      v49 = v68;
      v50 = v69;
      __swift_project_boxed_opaque_existential_1(v67, v68);
      v51 = *v47;
      v52 = v47[1];
      v53 = v62;
      v54 = v64;
      sub_1D7257A5C();
      (*(v50 + 24))(v51, v52, v54, *(v47 + *(v53 + 28)), v49, v50);
      (*(v65 + 8))(v54, v3);
      sub_1D613582C(v47, type metadata accessor for WebEmbedStateMachineErrorContext);
      __swift_destroy_boxed_opaque_existential_1(v67);
    }

    else
    {
      sub_1D613582C(v9, type metadata accessor for WebEmbedStateMachineEvent);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1D6130930()
{
  sub_1D5B4D72C(0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v34[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v34[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDF17580 != -1)
  {
    swift_once();
  }

  v8 = sub_1D725C42C();
  __swift_project_value_buffer(v8, qword_1EDFFC6F0);

  v9 = sub_1D725C3FC();
  v10 = sub_1D7262EDC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v36 = v11;
    v37 = swift_slowAlloc();
    v38 = v37;
    *v11 = 136315138;
    Strong = swift_unknownObjectUnownedLoadStrong();
    sub_1D5B62BF4(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    v35 = v10;
    v14 = v13;
    *(v13 + 16) = xmmword_1D7273AE0;
    *(v13 + 56) = type metadata accessor for WebEmbedViewController();
    *(v14 + 64) = sub_1D61368DC(&unk_1EDF0D738, type metadata accessor for WebEmbedViewController);
    *(v14 + 32) = Strong;
    v15 = Strong;
    v16 = sub_1D72620BC();
    v18 = v17;
    v19 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_embedURL;
    swift_beginAccess();
    sub_1D5C00D08(v15 + v19, v7, sub_1D5B4D3E0);
    v20 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_dataVisualization;
    swift_beginAccess();
    sub_1D5C00D08(v15 + v20, v3, sub_1D5B4D72C);
    v21 = sub_1D613520C(v16, v18, v7, v3);
    v23 = v22;

    v24 = sub_1D5BC5100(v21, v23, &v38);

    v25 = v36;
    *(v36 + 1) = v24;
    v26 = v25;
    _os_log_impl(&dword_1D5B42000, v9, v35, "Will remove error state, %s", v25, 0xCu);
    v27 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x1DA6FD500](v27, -1, -1);
    MEMORY[0x1DA6FD500](v26, -1, -1);
  }

  v28 = swift_unknownObjectUnownedLoadStrong();
  v29 = *&v28[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_errorView];

  [v29 setHidden_];
  v30 = swift_unknownObjectUnownedLoadStrong();
  v31 = [v30 view];

  if (v31)
  {
    v32 = swift_unknownObjectUnownedLoadStrong();
    v33 = *&v32[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_tapGestureRecognizer];

    [v31 removeGestureRecognizer_];
  }

  else
  {
    __break(1u);
  }
}

id WebEmbedViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1D726203C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

Swift::Void __swiftcall WebEmbedViewController.prepareForReuse()()
{
  v1 = v0;
  MEMORY[0x1DA6F6CF0]();

  v2 = (v0 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_onEmbedInteraction);
  swift_beginAccess();
  v3 = *v2;
  *v2 = 0;
  v2[1] = 0;
  sub_1D5B74328(v3);
  v4 = (v1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_onSizeInvalidation);
  swift_beginAccess();
  v5 = *v4;
  *v4 = 0;
  v4[1] = 0;
  sub_1D5B74328(v5);
  v6 = v1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_preferredSize;
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = 1;
}

void sub_1D6131230()
{
  sub_1D61368DC(&qword_1EDF27940, type metadata accessor for WebEmbedViewController);

  JUMPOUT(0x1DA6F6FC0);
}

Swift::Void __swiftcall WebEmbedViewController.refresh()()
{
  v1 = v0;
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1D72585BC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D725AB5C();
  if (v15[8] != 3)
  {
    goto LABEL_4;
  }

  v11 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_embedURL;
  swift_beginAccess();
  sub_1D5C00D08(v1 + v11, v5, sub_1D5B4D3E0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1D613582C(v5, sub_1D5B4D3E0);
LABEL_4:
    [*(v1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_presentationManager) refresh];
    return;
  }

  (*(v7 + 32))(v10, v5, v6);
  if (qword_1EDF0D770 != -1)
  {
    swift_once();
  }

  v12 = byte_1EDF0D781;
  v13 = *(v1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webContentViewController);
  v14 = sub_1D725844C();
  if (v12 == 1)
  {
    [v13 loadURL:v14 cachePolicy:4];
  }

  else
  {
    [v13 loadURL_];
  }

  (*(v7 + 8))(v10, v6);
}

uint64_t WebEmbedViewController.isSelectable.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_interactionProvider) interaction];
  if (!v1)
  {
    LOBYTE(v3) = 0;
    return v3 & 1;
  }

  v2 = [v1 type];
  swift_unknownObjectRelease();
  if (v2 < 3)
  {
    v3 = 4u >> (v2 & 7);
    return v3 & 1;
  }

  result = sub_1D726402C();
  __break(1u);
  return result;
}

uint64_t sub_1D6131604()
{
  v1 = [*(*v0 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_interactionProvider) interaction];
  if (!v1)
  {
    LOBYTE(v3) = 0;
    return v3 & 1;
  }

  v2 = [v1 type];
  swift_unknownObjectRelease();
  if (v2 < 3)
  {
    v3 = 4u >> (v2 & 7);
    return v3 & 1;
  }

  result = sub_1D726402C();
  __break(1u);
  return result;
}

void (*sub_1D61316E0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1D725D26C();
  return sub_1D5FE8C5C;
}

void WebEmbedViewController.webEmbedDataSourceManager(_:dataVisualization:didUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v79 = a3;
  v80 = type metadata accessor for WebEmbedDatastoreUpdate();
  v75 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80, v6);
  v70 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D613588C(0);
  v74 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v76 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5E01820(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v72 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v73 = &v69 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v71 = &v69 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v77 = &v69 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v78 = &v69 - v25;
  v26 = type metadata accessor for WebEmbedDataVisualization();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = &v69 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61358AC(0);
  v32 = v31 - 8;
  MEMORY[0x1EEE9AC00](v31, v33);
  v35 = &v69 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4D72C(0);
  MEMORY[0x1EEE9AC00](v36 - 8, v37);
  v39 = &v69 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v69 - v42;
  sub_1D5C00D08(a2, &v69 - v42, type metadata accessor for WebEmbedDataVisualization);
  (*(v27 + 56))(v43, 0, 1, v26);
  v44 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_dataVisualization;
  swift_beginAccess();
  v45 = *(v32 + 56);
  sub_1D5C00D08(v43, v35, sub_1D5B4D72C);
  sub_1D5C00D08(v4 + v44, &v35[v45], sub_1D5B4D72C);
  v46 = *(v27 + 48);
  if (v46(v35, 1, v26) == 1)
  {
    sub_1D613582C(v43, sub_1D5B4D72C);
    if (v46(&v35[v45], 1, v26) == 1)
    {
      goto LABEL_11;
    }

LABEL_6:
    v47 = sub_1D61358AC;
    v48 = v35;
LABEL_7:
    sub_1D613582C(v48, v47);
    return;
  }

  sub_1D5C00D08(v35, v39, sub_1D5B4D72C);
  if (v46(&v35[v45], 1, v26) == 1)
  {
    sub_1D613582C(v43, sub_1D5B4D72C);
    sub_1D613582C(v39, type metadata accessor for WebEmbedDataVisualization);
    goto LABEL_6;
  }

  sub_1D61367AC(&v35[v45], v30, type metadata accessor for WebEmbedDataVisualization);
  v49 = WebEmbedDataVisualization.identifier.getter();
  v51 = v50;
  if (v49 == WebEmbedDataVisualization.identifier.getter() && v51 == v52)
  {

    sub_1D613582C(v30, type metadata accessor for WebEmbedDataVisualization);
    sub_1D613582C(v43, sub_1D5B4D72C);
    sub_1D613582C(v39, type metadata accessor for WebEmbedDataVisualization);
LABEL_11:
    sub_1D613582C(v35, sub_1D5B4D72C);
    v53 = v80;
    goto LABEL_12;
  }

  v60 = sub_1D72646CC();

  sub_1D613582C(v30, type metadata accessor for WebEmbedDataVisualization);
  sub_1D613582C(v43, sub_1D5B4D72C);
  sub_1D613582C(v39, type metadata accessor for WebEmbedDataVisualization);
  sub_1D613582C(v35, sub_1D5B4D72C);
  v53 = v80;
  if ((v60 & 1) == 0)
  {
    return;
  }

LABEL_12:
  sub_1D725AB5C();
  if (v81 != 2)
  {
    return;
  }

  v80 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController__lastDatastoreUpdate;

  v54 = v78;
  sub_1D725B96C();

  v55 = v77;
  sub_1D5C00D08(v79, v77, type metadata accessor for WebEmbedDatastoreUpdate);
  v56 = v75;
  v69 = *(v75 + 56);
  v69(v55, 0, 1, v53);
  v57 = *(v74 + 48);
  v58 = v76;
  sub_1D5C00D08(v54, v76, sub_1D5E01820);
  sub_1D5C00D08(v55, v58 + v57, sub_1D5E01820);
  v59 = *(v56 + 48);
  if (v59(v58, 1, v53) == 1)
  {
    sub_1D613582C(v55, sub_1D5E01820);
    sub_1D613582C(v54, sub_1D5E01820);
    if (v59(v58 + v57, 1, v53) == 1)
    {
      v47 = sub_1D5E01820;
      v48 = v58;
      goto LABEL_7;
    }
  }

  else
  {
    v61 = v71;
    sub_1D5C00D08(v58, v71, sub_1D5E01820);
    if (v59(v58 + v57, 1, v53) != 1)
    {
      v66 = v70;
      sub_1D61367AC(v58 + v57, v70, type metadata accessor for WebEmbedDatastoreUpdate);
      v67 = v61;
      updated = _s8NewsFeed23WebEmbedDatastoreUpdateV2eeoiySbAC_ACtFZ_0(v61, v66);
      sub_1D613582C(v66, type metadata accessor for WebEmbedDatastoreUpdate);
      sub_1D613582C(v77, sub_1D5E01820);
      sub_1D613582C(v78, sub_1D5E01820);
      sub_1D613582C(v67, type metadata accessor for WebEmbedDatastoreUpdate);
      sub_1D613582C(v58, sub_1D5E01820);
      if (updated)
      {
        return;
      }

      goto LABEL_21;
    }

    sub_1D613582C(v77, sub_1D5E01820);
    sub_1D613582C(v78, sub_1D5E01820);
    sub_1D613582C(v61, type metadata accessor for WebEmbedDatastoreUpdate);
  }

  sub_1D613582C(v58, sub_1D613588C);
LABEL_21:
  v62 = v79;
  v63 = v73;
  sub_1D5C00D08(v79, v73, type metadata accessor for WebEmbedDatastoreUpdate);
  v69(v63, 0, 1, v53);
  sub_1D5C00D08(v63, v72, sub_1D5E01820);

  sub_1D725B97C();

  sub_1D613582C(v63, sub_1D5E01820);
  [*(v4 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webContentViewController) loadLocalDatastore:*(*(v62 + *(v53 + 20)) + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_datastore) options:0 completion:0];
  v64 = *(v4 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_debugLoadView);
  if (v64)
  {
    v65 = v64;
    sub_1D69FC47C(1);
  }
}

uint64_t WebEmbedViewController.liveActivityWebEmbedDatastoreDidChange(datastore:swDatastore:)(uint64_t a1, void *a2)
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1D612EF3C(a2, sub_1D61358CC, v3);
}

void sub_1D61323BC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_debugLoadView);
    if (v2)
    {
      v3 = v2;
      sub_1D69FC47C(3);
    }
  }
}

uint64_t sub_1D6132430(uint64_t a1, void *a2)
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1D612EF3C(a2, sub_1D6136944, v3);
}

Swift::Void __swiftcall WebEmbedViewController.sceneWillEnterForeground()()
{
  sub_1D725AB5C();
  if (v0 == 3)
  {
    sub_1D612AC84();
  }
}

uint64_t sub_1D6132500()
{
  swift_getObjectType();

  return sub_1D725B1EC();
}

id sub_1D613253C()
{
  result = sub_1D725AB5C();
  if (v1 == 3)
  {
    return sub_1D612AC84();
  }

  return result;
}

void sub_1D613258C(uint64_t a1, void *a2, uint64_t a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, uint64_t a11, void *a12)
{
  v375 = a8;
  v374 = a7;
  v377 = a5;
  v378 = a4;
  v376 = a3;
  v379 = a2;
  ObjectType = swift_getObjectType();
  sub_1D5BB60D4();
  v357 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v367 = v338 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4D72C(0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v363 = v338 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v380 = v338 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v360 = v338 - v27;
  v362 = type metadata accessor for WebEmbedDataVisualization();
  v361 = *(v362 - 8);
  MEMORY[0x1EEE9AC00](v362, v28);
  v30 = v338 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v348 = v338 - v33;
  v382 = sub_1D72585BC();
  v34 = *(v382 - 8);
  MEMORY[0x1EEE9AC00](v382, v35);
  v346 = v338 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v345 = v338 - v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  v386 = v338 - v42;
  v43 = sub_1D7258AAC();
  v373 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v44);
  v385 = v338 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for FormatPictureInPictureModel();
  MEMORY[0x1EEE9AC00](v46 - 8, v47);
  v358 = (v338 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v49, v50);
  v369 = (v338 - v51);
  sub_1D5E01820(0);
  MEMORY[0x1EEE9AC00](v52 - 8, v53);
  v371 = v338 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55, v56);
  v58 = v338 - v57;
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v59 - 8, v60);
  v350 = v338 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62, v63);
  v356 = v338 - v64;
  MEMORY[0x1EEE9AC00](v65, v66);
  v366 = v338 - v67;
  MEMORY[0x1EEE9AC00](v68, v69);
  v349 = v338 - v70;
  MEMORY[0x1EEE9AC00](v71, v72);
  v359 = v338 - v73;
  MEMORY[0x1EEE9AC00](v74, v75);
  v381 = v338 - v76;
  MEMORY[0x1EEE9AC00](v77, v78);
  v383 = v338 - v79;
  v80 = (a12 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_viewportSize);
  *v80 = a9;
  v80[1] = a10;
  v384 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_preferredContentSizeCategoryOnPopulate;
  v81 = *(a12 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_preferredContentSizeCategoryOnPopulate);
  v387 = v34;
  v370 = v30;
  if (v81)
  {
    v82 = objc_opt_self();
    v83 = v81;
    v84 = [v82 sharedApplication];
    v85 = [v84 preferredContentSizeCategory];

    v86 = sub_1D726207C();
    v88 = v87;
    if (v86 == sub_1D726207C() && v88 == v89)
    {

      v34 = v387;
    }

    else
    {
      v351 = v58;
      v90 = a6;
      v91 = a1;
      v92 = sub_1D72646CC();

      if (v92)
      {

        a1 = v91;
        v34 = v387;
      }

      else
      {
        [*(a12 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webContentViewController) prewarm];

        v34 = v387;
        v93 = v383;
        (*(v387 + 56))(v383, 1, 1, v382);
        v94 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_embedURL;
        swift_beginAccess();
        sub_1D61366E0(v93, a12 + v94);
        swift_endAccess();
        a1 = v91;
      }

      a6 = v90;
      v58 = v351;
    }
  }

  if ((sub_1D612BE20(a1, a6, a11) & 1) == 0)
  {
    if (qword_1EDF17580 != -1)
    {
      swift_once();
    }

    v138 = sub_1D725C42C();
    __swift_project_value_buffer(v138, qword_1EDFFC6F0);
    v139 = a12;
    v140 = sub_1D725C3FC();
    v141 = sub_1D7262EDC();

    if (os_log_type_enabled(v140, v141))
    {
      v142 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      v388 = v143;
      *v142 = 136315138;
      sub_1D5B62BF4(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
      v144 = swift_allocObject();
      *(v144 + 16) = xmmword_1D7273AE0;
      *(v144 + 56) = ObjectType;
      *(v144 + 64) = sub_1D61368DC(&unk_1EDF0D738, type metadata accessor for WebEmbedViewController);
      *(v144 + 32) = v139;
      v145 = v139;
      v146 = sub_1D72620BC();
      v148 = v147;
      v149 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_embedURL;
      swift_beginAccess();
      v150 = v383;
      sub_1D5C00D08(v145 + v149, v383, sub_1D5B4D3E0);
      v151 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_dataVisualization;
      swift_beginAccess();
      v152 = v145 + v151;
      v153 = v380;
      sub_1D5C00D08(v152, v380, sub_1D5B4D72C);
      v154 = sub_1D613520C(v146, v148, v150, v153);
      v156 = sub_1D5BC5100(v154, v155, &v388);

      *(v142 + 4) = v156;
      _os_log_impl(&dword_1D5B42000, v140, v141, "Blocked reloading web embed based on configuration, %s", v142, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v143);
      MEMORY[0x1DA6FD500](v143, -1, -1);
      MEMORY[0x1DA6FD500](v142, -1, -1);
    }

    goto LABEL_84;
  }

  v354 = v43;
  v355 = a6;
  sub_1D612BCA0(v379);
  *(a12 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_layoutGuideDidChange) = 0;
  v365 = a11;
  v96 = v34 + 16;
  v95 = *(v34 + 16);
  v97 = v383;
  v364 = a1;
  v98 = v382;
  v95(v383, a1, v382);
  v100 = *(v34 + 56);
  v99 = v34 + 56;
  v100(v97, 0, 1, v98);
  v101 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_embedURL;
  swift_beginAccess();
  v347 = v101;
  sub_1D61366E0(v97, a12 + v101);
  swift_endAccess();
  v102 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_dataFeedURL;
  swift_beginAccess();
  sub_1D6136744(v376, a12 + v102, sub_1D5B4D3E0);
  swift_endAccess();
  *(a12 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_location) = v378;
  swift_unknownObjectRelease();
  v353 = v96;
  v352 = v95;
  v95(v97, v377, v98);
  v372 = v100;
  v100(v97, 0, 1, v98);
  v103 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_sourceURL;
  swift_beginAccess();
  swift_unknownObjectRetain();
  sub_1D61366E0(v97, a12 + v103);
  swift_endAccess();
  v104 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_feedConfiguration;
  swift_beginAccess();
  v105 = *(a12 + v104);
  v106 = v365;
  *(a12 + v104) = v365;
  v107 = v106;

  v108 = [a12 view];
  if (!v108)
  {
    __break(1u);
    goto LABEL_97;
  }

  v109 = v108;
  v343 = v107;
  [v108 setNeedsLayout];

  v110 = type metadata accessor for WebEmbedDatastoreUpdate();
  v111 = *(v110 - 8);
  v112 = *(v111 + 56);
  v113 = 1;
  v340 = v110;
  v339 = v112;
  v338[1] = v111 + 56;
  v112(v58, 1, 1);
  v338[0] = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController__lastDatastoreUpdate;
  sub_1D5C00D08(v58, v371, sub_1D5E01820);

  sub_1D725B97C();

  v351 = v58;
  sub_1D613582C(v58, sub_1D5E01820);
  v114 = (*(a12 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_delegate) + OBJC_IVAR____TtC8NewsFeed26WebEmbedURLHandlerDelegate_webEmbedIdentifier);
  v115 = v375;
  *v114 = v374;
  v114[1] = v115;

  v116 = objc_opt_self();

  v117 = [v116 sharedApplication];
  v118 = [v117 preferredContentSizeCategory];

  v119 = *&v384[a12];
  *&v384[a12] = v118;

  v384 = *(a12 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webContentViewController);
  v120 = __swift_project_boxed_opaque_existential_1(a12 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_configurationProvider, *(a12 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_configurationProvider + 24));
  v121 = v369;
  sub_1D725ADCC();
  v122 = v358;
  sub_1D61367AC(v121, v358, type metadata accessor for FormatPictureInPictureModel);
  v123 = v387;
  v124 = *(v387 + 48);
  v365 = (v387 + 48);
  v369 = v124;
  v125 = v98;
  if (v124(v122, 1, v98) != 1)
  {
    (*(v123 + 32))(v381, v122, v98);
    v113 = 0;
  }

  v126 = v381;
  v344 = v99;
  v372(v381, v113, 1, v98);
  v127 = *(a12 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_liveActivityWebEmbedDatastoreManager + 24);
  v128 = *(a12 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_liveActivityWebEmbedDatastoreManager + 32);
  v358 = a12 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_liveActivityWebEmbedDatastoreManager;
  __swift_project_boxed_opaque_existential_1(a12 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_liveActivityWebEmbedDatastoreManager, v127);
  v341 = (*(v128 + 8))(v127, v128);
  v129 = *v120;
  v130 = sub_1D6D5A438(v376);
  v131 = *(v129 + OBJC_IVAR____TtC8NewsFeed29WebEmbedConfigurationProvider_storeFront + 8);
  (*(v373 + 16))(v385, v129 + OBJC_IVAR____TtC8NewsFeed29WebEmbedConfigurationProvider_locale, v354);
  v132 = *(v129 + OBJC_IVAR____TtC8NewsFeed29WebEmbedConfigurationProvider_contentEnvironment + 8);
  v133 = [v116 sharedApplication];
  v134 = [v133 preferredContentSizeCategory];

  v352(v386, v377, v125);
  v135 = v126;
  v136 = v359;
  sub_1D5C00D08(v135, v359, sub_1D5B4D3E0);
  if (v131)
  {
    v137 = sub_1D726203C();
  }

  else
  {
    v137 = 0;
  }

  v157 = sub_1D72589DC();
  if (v132)
  {
    v132 = sub_1D726203C();
  }

  if (v130)
  {
    v158 = sub_1D7261D2C();
  }

  else
  {
    v158 = 0;
  }

  v159 = sub_1D725844C();
  v160 = v369(v136, 1, v125);
  v342 = a12;
  if (v160 == 1)
  {
    v161 = 0;
    v162 = v387;
  }

  else
  {
    v161 = sub_1D725844C();
    v163 = v136;
    v162 = v387;
    (*(v387 + 8))(v163, v125);
  }

  v164 = objc_allocWithZone(MEMORY[0x1E69CE140]);
  LOBYTE(v337) = v341 & 1;
  v165 = [v164 initWithStoreFront:v137 locale:v157 contentEnvironment:v132 contentSizeCategory:v134 layoutGuide:v379 dataSources:v158 location:v378 sourceURL:v159 activePictureInPictureURL:v161 feedConfiguration:v343 supportsLiveActivities:v337];

  v166 = *(v162 + 8);
  v379 = (v162 + 8);
  v378 = v166;
  v166(v386, v125);
  (*(v373 + 8))(v385, v354);
  sub_1D613582C(v381, sub_1D5B4D3E0);
  [v384 setConfiguration_];

  sub_1D725891C();
  v167 = swift_allocBox();
  sub_1D725890C();
  v168 = v342;
  v169 = *&v342[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_presentationManager];
  v170 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v171 = swift_allocObject();
  v172 = v374;
  v171[2] = v170;
  v171[3] = v172;
  v173 = v375;
  v171[4] = v375;
  v171[5] = v167;
  v393 = sub_1D6136814;
  v394 = v171;
  aBlock = MEMORY[0x1E69E9820];
  v390 = 1107296256;
  v391 = sub_1D6A208B4;
  v392 = &block_descriptor_58;
  v174 = _Block_copy(&aBlock);

  [v169 onPresentable_];
  _Block_release(v174);
  v175 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v176 = swift_allocObject();
  *(v176 + 16) = v175;
  *(v176 + 24) = v167;
  v393 = sub_1D6136820;
  v394 = v176;
  aBlock = MEMORY[0x1E69E9820];
  v390 = 1107296256;
  v391 = sub_1D5B6B06C;
  v392 = &block_descriptor_65;
  v177 = _Block_copy(&aBlock);

  [v169 onLoad_];
  _Block_release(v177);
  v178 = *&v168[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_interactionProvider];
  v179 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v393 = sub_1D6136828;
  v394 = v179;
  aBlock = MEMORY[0x1E69E9820];
  v390 = 1107296256;
  v391 = sub_1D5B6B06C;
  v392 = &block_descriptor_69;
  v180 = _Block_copy(&aBlock);

  [v178 setInteractionBlock_];
  _Block_release(v180);
  v181 = *&v168[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_errorProvider];
  v182 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v183 = swift_allocObject();
  v183[2] = v182;
  v183[3] = v172;
  v183[4] = v173;
  v183[5] = v167;
  v393 = sub_1D6136830;
  v394 = v183;
  aBlock = MEMORY[0x1E69E9820];
  v390 = 1107296256;
  v391 = sub_1D6A20930;
  v392 = &block_descriptor_76;
  v184 = _Block_copy(&aBlock);

  v386 = v167;

  [v181 onError_];
  _Block_release(v184);
  v185 = *&v168[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_failureProvider];
  v186 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v393 = sub_1D613683C;
  v394 = v186;
  aBlock = MEMORY[0x1E69E9820];
  v390 = 1107296256;
  v391 = sub_1D6A20938;
  v392 = &block_descriptor_80;
  v187 = _Block_copy(&aBlock);

  [v185 onEvent_];
  _Block_release(v187);
  v188 = *&v168[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_navigationBarConfigurationProvider];
  v189 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v393 = sub_1D6136844;
  v394 = v189;
  aBlock = MEMORY[0x1E69E9820];
  v390 = 1107296256;
  v391 = sub_1D6A21D50;
  v392 = &block_descriptor_84;
  v190 = _Block_copy(&aBlock);

  [v188 setNavigationBarConfigurationBlock_];
  _Block_release(v190);
  v191 = *&v168[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_preferredSizeManager];
  v192 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v393 = sub_1D613684C;
  v394 = v192;
  aBlock = MEMORY[0x1E69E9820];
  v390 = 1107296256;
  v391 = sub_1D7134058;
  v392 = &block_descriptor_88;
  v193 = _Block_copy(&aBlock);

  [v191 onPreferredSize_];
  _Block_release(v193);
  v194 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_dataVisualization;
  swift_beginAccess();
  v195 = *(v361 + 48);
  v196 = v362;
  v197 = 0;
  v198 = 0;
  if (!v195(&v168[v194], 1, v362))
  {
    v199 = v348;
    sub_1D5C00D08(&v168[v194], v348, type metadata accessor for WebEmbedDataVisualization);
    v197 = WebEmbedDataVisualization.identifier.getter();
    v198 = v200;
    sub_1D613582C(v199, type metadata accessor for WebEmbedDataVisualization);
  }

  v385 = v194;
  v201 = v360;
  sub_1D5C00D08(v355, v360, sub_1D5B4D72C);
  v202 = v195(v201, 1, v196);
  v203 = v364;
  if (v202 == 1)
  {
    sub_1D613582C(v201, sub_1D5B4D72C);
    v204 = v382;
    if (!v198)
    {
      LODWORD(v377) = 1;
      v205 = v370;
      v206 = v355;
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  v207 = WebEmbedDataVisualization.identifier.getter();
  v209 = v208;
  sub_1D613582C(v201, type metadata accessor for WebEmbedDataVisualization);
  v204 = v382;
  if (v198)
  {
    if (v209)
    {
      if (v197 == v207 && v198 == v209)
      {

        LODWORD(v377) = 1;
      }

      else
      {
        LODWORD(v377) = sub_1D72646CC();
      }

      goto LABEL_39;
    }

LABEL_38:
    LODWORD(v377) = 0;
LABEL_39:
    v205 = v370;
    v206 = v355;
LABEL_40:

    goto LABEL_41;
  }

  v205 = v370;
  v206 = v355;
  if (v209)
  {
    LODWORD(v377) = 0;
    goto LABEL_40;
  }

  LODWORD(v377) = 1;
LABEL_41:
  v210 = v380;
  sub_1D5C00D08(v206, v380, sub_1D5B4D72C);
  sub_1D61289C4(v210);
  v376 = *&v168[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_stateMachine];
  sub_1D725AB5C();
  LODWORD(v381) = aBlock;
  v211 = v363;
  sub_1D5C00D08(v206, v363, sub_1D5B4D72C);
  if (v195(v211, 1, v196) == 1)
  {
    sub_1D613582C(v211, sub_1D5B4D72C);
    v212 = v203;
    goto LABEL_53;
  }

  sub_1D61367AC(v211, v205, type metadata accessor for WebEmbedDataVisualization);
  v213 = &v168[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webEmbedDataSourceManager];
  v214 = *&v168[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webEmbedDataSourceManager + 24];
  v215 = *&v168[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webEmbedDataSourceManager + 32];
  __swift_project_boxed_opaque_existential_1(&v168[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webEmbedDataSourceManager], v214);
  v216 = (*(v215 + 32))(v205, v214, v215);
  if (!v216)
  {
    v216 = _s8NewsFeed17WebEmbedDatastoreC5empty3forAcA0cD17DataVisualizationO_tFZ_0(v205);
  }

  v217 = v216;
  v218 = v351;
  sub_1D5C00D08(v205, v351, type metadata accessor for WebEmbedDataVisualization);
  *(v218 + *(v340 + 20)) = v217;
  v339(v218, 0, 1);
  sub_1D5C00D08(v218, v371, sub_1D5E01820);

  sub_1D725B97C();

  sub_1D613582C(v218, sub_1D5E01820);
  if (qword_1EDF17580 != -1)
  {
    swift_once();
  }

  v219 = sub_1D725C42C();
  __swift_project_value_buffer(v219, qword_1EDFFC6F0);
  v220 = v168;
  v221 = sub_1D725C3FC();
  v222 = sub_1D7262EDC();

  v223 = os_log_type_enabled(v221, v222);
  v224 = v381;
  if (v223)
  {
    LODWORD(v375) = v222;
    v225 = v381 == 2;
    v226 = swift_slowAlloc();
    v374 = swift_slowAlloc();
    aBlock = v374;
    *v226 = 67109378;
    *(v226 + 4) = v225;
    *(v226 + 8) = 2080;
    sub_1D5B62BF4(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v227 = swift_allocObject();
    *(v227 + 16) = xmmword_1D7273AE0;
    *(v227 + 56) = ObjectType;
    *(v227 + 64) = sub_1D61368DC(&unk_1EDF0D738, type metadata accessor for WebEmbedViewController);
    *(v227 + 32) = v220;
    v228 = v220;
    v229 = sub_1D72620BC();
    v230 = v220;
    v231 = v217;
    v233 = v232;
    v234 = v383;
    sub_1D5C00D08(&v168[v347], v383, sub_1D5B4D3E0);
    v235 = v380;
    sub_1D5C00D08(&v385[v168], v380, sub_1D5B4D72C);
    v236 = v234;
    v204 = v382;
    v237 = sub_1D613520C(v229, v233, v236, v235);
    v239 = sub_1D5BC5100(v237, v238, &aBlock);

    *(v226 + 10) = v239;
    v217 = v231;
    v220 = v230;
    _os_log_impl(&dword_1D5B42000, v221, v375, "Will load data visualization data store, isInitialized=%{BOOL}d, %s", v226, 0x12u);
    v240 = v374;
    __swift_destroy_boxed_opaque_existential_1(v374);
    MEMORY[0x1DA6FD500](v240, -1, -1);
    v241 = v226;
    v224 = v381;
    MEMORY[0x1DA6FD500](v241, -1, -1);
  }

  v212 = v364;
  v242 = v377;
  if (!((v224 != 2) | v377 & 1))
  {
    v243 = [v384 view];
    if (v243)
    {
      v244 = v243;
      [v243 setHidden_];

      goto LABEL_52;
    }

LABEL_97:
    __break(1u);
    return;
  }

LABEL_52:
  v245 = v224 == 2;
  v246 = *(v217 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_datastore);
  v247 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v248 = swift_allocObject();
  *(v248 + 16) = v247;
  *(v248 + 24) = v245;
  *(v248 + 25) = (v242 ^ 1) & 1;
  v393 = sub_1D613685C;
  v394 = v248;
  aBlock = MEMORY[0x1E69E9820];
  v390 = 1107296256;
  v391 = sub_1D5B6B06C;
  v392 = &block_descriptor_96;
  v249 = _Block_copy(&aBlock);
  v250 = v246;

  [v384 loadLocalDatastore:v250 options:1 completion:v249];
  _Block_release(v249);

  v251 = *(v213 + 3);
  v252 = *(v213 + 4);
  __swift_project_boxed_opaque_existential_1(v213, v251);
  v253 = v370;
  (*(v252 + 16))(v220, &protocol witness table for WebEmbedViewController, v370, v251, v252);

  sub_1D613582C(v253, type metadata accessor for WebEmbedDataVisualization);
LABEL_53:
  v254 = v358;
  v255 = v358[3];
  v256 = v358[4];
  __swift_project_boxed_opaque_existential_1(v358, v255);
  (*(v256 + 48))(v168, &protocol witness table for WebEmbedViewController, v255, v256);
  v257 = v254[3];
  v258 = v254[4];
  __swift_project_boxed_opaque_existential_1(v254, v257);
  v259 = (*(v258 + 8))(v257, v258);
  v260 = v367;
  v261 = v366;
  if (v259)
  {
    v262 = v349;
    sub_1D5C00D08(&v168[v347], v349, sub_1D5B4D3E0);
    if (v369(v262, 1, v204) == 1)
    {
      sub_1D613582C(v262, sub_1D5B4D3E0);
    }

    else
    {
      v263 = v345;
      (*(v387 + 32))(v345, v262, v204);
      v264 = sub_1D725847C();
      v378(v263, v204);
      if (v264)
      {
        v265 = v358[3];
        v266 = v358[4];
        __swift_project_boxed_opaque_existential_1(v358, v265);
        v267 = (*(v266 + 24))(v265, v266);
        if (qword_1EDF17580 != -1)
        {
          swift_once();
        }

        v268 = sub_1D725C42C();
        __swift_project_value_buffer(v268, qword_1EDFFC6F0);
        v269 = v168;
        v270 = sub_1D725C3FC();
        v271 = sub_1D7262EDC();

        if (os_log_type_enabled(v270, v271))
        {
          v272 = swift_slowAlloc();
          v381 = swift_slowAlloc();
          aBlock = v381;
          *v272 = 136315138;
          sub_1D5B62BF4(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
          v273 = swift_allocObject();
          *(v273 + 16) = xmmword_1D7273AE0;
          *(v273 + 56) = ObjectType;
          *(v273 + 64) = sub_1D61368DC(&unk_1EDF0D738, type metadata accessor for WebEmbedViewController);
          *(v273 + 32) = v269;
          v274 = v269;
          v275 = sub_1D72620BC();
          v276 = v267;
          v278 = v277;
          v279 = v383;
          sub_1D5C00D08(&v168[v347], v383, sub_1D5B4D3E0);
          v280 = v380;
          sub_1D5C00D08(&v385[v168], v380, sub_1D5B4D72C);
          v281 = v280;
          v212 = v364;
          v282 = sub_1D613520C(v275, v278, v279, v281);
          v284 = sub_1D5BC5100(v282, v283, &aBlock);

          *(v272 + 4) = v284;
          v267 = v276;
          _os_log_impl(&dword_1D5B42000, v270, v271, "Will load live activity data store, %s", v272, 0xCu);
          v285 = v381;
          __swift_destroy_boxed_opaque_existential_1(v381);
          MEMORY[0x1DA6FD500](v285, -1, -1);
          v286 = v272;
          v204 = v382;
          MEMORY[0x1DA6FD500](v286, -1, -1);
        }

        v287 = swift_allocObject();
        swift_unknownObjectWeakInit();

        sub_1D612EF3C(v267, sub_1D6136854, v287);

        v288 = v358[3];
        v289 = v358[4];
        __swift_project_boxed_opaque_existential_1(v358, v288);
        (*(v289 + 40))(v269, &protocol witness table for WebEmbedViewController, v288, v289);

        v260 = v367;
        v261 = v366;
      }
    }
  }

  v352(v261, v212, v204);
  v290 = 1;
  v372(v261, 0, 1, v204);
  v291 = [v384 loadedURL];
  v292 = v356;
  if (v291)
  {
    v293 = v291;
    sub_1D72584EC();

    v290 = 0;
  }

  v372(v292, v290, 1, v204);
  v294 = *(v357 + 48);
  sub_1D5C00D08(v261, v260, sub_1D5B4D3E0);
  sub_1D5C00D08(v292, v260 + v294, sub_1D5B4D3E0);
  v295 = v369;
  if (v369(v260, 1, v204) == 1)
  {
    sub_1D613582C(v292, sub_1D5B4D3E0);
    sub_1D613582C(v261, sub_1D5B4D3E0);
    v296 = v295(v260 + v294, 1, v204);
    v297 = &dword_1EDF0D000;
    if (v296 == 1)
    {
      sub_1D613582C(v260, sub_1D5B4D3E0);
      v298 = &dword_1EDF0D000;
      goto LABEL_71;
    }

LABEL_69:
    sub_1D613582C(v260, sub_1D5BB60D4);
    v298 = &dword_1EDF0D000;
    goto LABEL_74;
  }

  v299 = v350;
  sub_1D5C00D08(v260, v350, sub_1D5B4D3E0);
  if (v295(v260 + v294, 1, v204) == 1)
  {
    sub_1D613582C(v292, sub_1D5B4D3E0);
    sub_1D613582C(v261, sub_1D5B4D3E0);
    v378(v299, v204);
    v297 = &dword_1EDF0D000;
    goto LABEL_69;
  }

  v300 = v346;
  (*(v387 + 32))(v346, v260 + v294, v204);
  sub_1D61368DC(&unk_1EDF45B60, MEMORY[0x1E6968FB0]);
  LODWORD(v387) = sub_1D7261FBC();
  v301 = v378;
  v378(v300, v204);
  sub_1D613582C(v292, sub_1D5B4D3E0);
  sub_1D613582C(v261, sub_1D5B4D3E0);
  v301(v299, v204);
  sub_1D613582C(v260, sub_1D5B4D3E0);
  v298 = &dword_1EDF0D000;
  v297 = &dword_1EDF0D000;
  if ((v387 & 1) == 0)
  {
    goto LABEL_74;
  }

LABEL_71:
  if (*(v297 + 238) != -1)
  {
    swift_once();
    if (*(v298 + 1921))
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

  if (*(v298 + 1921))
  {
LABEL_74:
    if (qword_1EDF17580 != -1)
    {
      swift_once();
    }

    v302 = sub_1D725C42C();
    __swift_project_value_buffer(v302, qword_1EDFFC6F0);
    v303 = v168;
    v304 = sub_1D725C3FC();
    v305 = sub_1D7262EDC();

    if (os_log_type_enabled(v304, v305))
    {
      v306 = swift_slowAlloc();
      v307 = swift_slowAlloc();
      aBlock = v307;
      *v306 = 136315138;
      sub_1D5B62BF4(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
      v308 = swift_allocObject();
      *(v308 + 16) = xmmword_1D7273AE0;
      *(v308 + 56) = ObjectType;
      *(v308 + 64) = sub_1D61368DC(&unk_1EDF0D738, type metadata accessor for WebEmbedViewController);
      *(v308 + 32) = v303;
      v309 = v303;
      v310 = sub_1D72620BC();
      v312 = v311;
      v313 = v383;
      sub_1D5C00D08(&v168[v347], v383, sub_1D5B4D3E0);
      v314 = &v385[v168];
      v315 = v380;
      sub_1D5C00D08(v314, v380, sub_1D5B4D72C);
      v316 = sub_1D613520C(v310, v312, v313, v315);
      v318 = sub_1D5BC5100(v316, v317, &aBlock);

      *(v306 + 4) = v318;
      _os_log_impl(&dword_1D5B42000, v304, v305, "Load embed web view with URL, %s", v306, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v307);
      MEMORY[0x1DA6FD500](v307, -1, -1);
      MEMORY[0x1DA6FD500](v306, -1, -1);
    }

    if (*(v297 + 238) != -1)
    {
      swift_once();
    }

    v319 = *(v298 + 1921);
    v140 = sub_1D725844C();
    if (v319 == 1)
    {
      [v384 loadURL:v140 cachePolicy:4];
    }

    else
    {
      [v384 loadURL_];
    }

LABEL_84:

    return;
  }

LABEL_73:
  sub_1D725AB5C();
  if (aBlock == 3)
  {
    goto LABEL_74;
  }

  if (qword_1EDF17580 != -1)
  {
    swift_once();
  }

  v320 = sub_1D725C42C();
  __swift_project_value_buffer(v320, qword_1EDFFC6F0);
  v321 = v168;
  v322 = sub_1D725C3FC();
  v323 = sub_1D7262EDC();

  if (os_log_type_enabled(v322, v323))
  {
    v324 = swift_slowAlloc();
    v325 = swift_slowAlloc();
    aBlock = v325;
    *v324 = 136315138;
    sub_1D5B62BF4(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v326 = swift_allocObject();
    *(v326 + 16) = xmmword_1D7273AE0;
    *(v326 + 56) = ObjectType;
    *(v326 + 64) = sub_1D61368DC(&unk_1EDF0D738, type metadata accessor for WebEmbedViewController);
    *(v326 + 32) = v321;
    v327 = v321;
    v328 = sub_1D72620BC();
    v330 = v329;
    v331 = v383;
    sub_1D5C00D08(&v168[v347], v383, sub_1D5B4D3E0);
    v332 = &v385[v168];
    v333 = v380;
    sub_1D5C00D08(v332, v380, sub_1D5B4D72C);
    v334 = sub_1D613520C(v328, v330, v331, v333);
    v336 = sub_1D5BC5100(v334, v335, &aBlock);

    *(v324 + 4) = v336;
    _os_log_impl(&dword_1D5B42000, v322, v323, "Already loaded, %s", v324, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v325);
    MEMORY[0x1DA6FD500](v325, -1, -1);
    MEMORY[0x1DA6FD500](v324, -1, -1);
  }

  [v384 webViewSetNeedsLayout];
}

uint64_t sub_1D613520C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a1;
  v7 = type metadata accessor for WebEmbedDataVisualization();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v36 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D72585BC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D613686C();
  v18 = MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v18 + 56);
  v39 = a3;
  sub_1D5C00D08(a3, v20, sub_1D5B4D3E0);
  v38 = a4;
  sub_1D5C00D08(a4, &v20[v21], sub_1D5B4D72C);
  LODWORD(a3) = (*(v12 + 48))(v20, 1, v11);
  v22 = (*(v8 + 48))(&v20[v21], 1, v7);
  v23 = v22;
  if (a3 == 1)
  {
    if (v22 == 1)
    {
      v40 = 123;
      v41 = 0xE100000000000000;
      MEMORY[0x1DA6F9910](v37, a2);

      MEMORY[0x1DA6F9910](125, 0xE100000000000000);
      v24 = v40;
      sub_1D613582C(v38, sub_1D5B4D72C);
      v25 = sub_1D5B4D3E0;
      v26 = v39;
    }

    else
    {
      v30 = v36;
      sub_1D61367AC(&v20[v21], v36, type metadata accessor for WebEmbedDataVisualization);
      v40 = 0;
      v41 = 0xE000000000000000;
      sub_1D7263D4C();

      v40 = 123;
      v41 = 0xE100000000000000;
      MEMORY[0x1DA6F9910](v37, a2);

      MEMORY[0x1DA6F9910](0xD000000000000010, 0x80000001D73CAD70);
      v31 = WebEmbedDataVisualization.identifier.getter();
      MEMORY[0x1DA6F9910](v31);

      MEMORY[0x1DA6F9910](125, 0xE100000000000000);
      v24 = v40;
      sub_1D613582C(v38, sub_1D5B4D72C);
      sub_1D613582C(v39, sub_1D5B4D3E0);
      v25 = type metadata accessor for WebEmbedDataVisualization;
      v26 = v30;
    }

    sub_1D613582C(v26, v25);
  }

  else
  {
    (*(v12 + 32))(v15, v20, v11);
    if (v23 == 1)
    {
      v40 = 123;
      v41 = 0xE100000000000000;
      MEMORY[0x1DA6F9910](v37, a2);

      MEMORY[0x1DA6F9910](0x3D6C7275202CLL, 0xE600000000000000);
      sub_1D61368DC(&qword_1EDF18AC0, MEMORY[0x1E6968FB0]);
      v27 = sub_1D72644BC();
      MEMORY[0x1DA6F9910](v27);

      MEMORY[0x1DA6F9910](125, 0xE100000000000000);
      v24 = v40;
      sub_1D613582C(v38, sub_1D5B4D72C);
      v28 = sub_1D5B4D3E0;
      v29 = v39;
    }

    else
    {
      v32 = v36;
      sub_1D61367AC(&v20[v21], v36, type metadata accessor for WebEmbedDataVisualization);
      v40 = 0;
      v41 = 0xE000000000000000;
      sub_1D7263D4C();

      v40 = 123;
      v41 = 0xE100000000000000;
      MEMORY[0x1DA6F9910](v37, a2);

      MEMORY[0x1DA6F9910](0x3D6C7275202CLL, 0xE600000000000000);
      sub_1D61368DC(&qword_1EDF18AC0, MEMORY[0x1E6968FB0]);
      v33 = sub_1D72644BC();
      MEMORY[0x1DA6F9910](v33);

      MEMORY[0x1DA6F9910](0xD000000000000010, 0x80000001D73CAD70);
      v34 = WebEmbedDataVisualization.identifier.getter();
      MEMORY[0x1DA6F9910](v34);

      MEMORY[0x1DA6F9910](125, 0xE100000000000000);
      v24 = v40;
      sub_1D613582C(v38, sub_1D5B4D72C);
      sub_1D613582C(v39, sub_1D5B4D3E0);
      v28 = type metadata accessor for WebEmbedDataVisualization;
      v29 = v32;
    }

    sub_1D613582C(v29, v28);
    (*(v12 + 8))(v15, v11);
  }

  return v24;
}

uint64_t sub_1D613582C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D61358D8()
{
  result = qword_1EC884070;
  if (!qword_1EC884070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884070);
  }

  return result;
}

uint64_t keypath_get_1Tm_0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t *a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  swift_beginAccess();
  result = a3(v6 + v7);
  *a4 = result;
  return result;
}

void sub_1D6135A28()
{
  if (!qword_1EDF17B30)
  {
    type metadata accessor for WebEmbedStateMachineEvent(255);
    sub_1D6135AE0();
    sub_1D61368DC(qword_1EDF0BAD0, type metadata accessor for WebEmbedStateMachineEvent);
    v0 = sub_1D725B5EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF17B30);
    }
  }
}

unint64_t sub_1D6135AE0()
{
  result = qword_1EDF16448;
  if (!qword_1EDF16448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF16448);
  }

  return result;
}

void sub_1D6135C04()
{
  v1 = v0;
  sub_1D5E01820(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v35[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v35[-v8];
  v10 = (v0 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_layoutIdentifier);
  *v10 = 0;
  v10[1] = 0;
  v11 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_onReuse;
  sub_1D5BFDBB4();
  *(v1 + v11) = [objc_allocWithZone(v12) init];
  v13 = (v1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_onSizeInvalidation);
  *v13 = 0;
  v13[1] = 0;
  swift_unknownObjectWeakInit();
  v14 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_contentFrameView;
  *(v1 + v14) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  swift_weakInit();
  v15 = (v1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_onEmbedInteraction);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_onNavigationBarConfigurationUpdate);
  *v16 = 0;
  v16[1] = 0;
  *(v1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_showsLoadingSpinner) = 1;
  v17 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_errorView;
  *(v1 + v17) = [objc_allocWithZone(type metadata accessor for WebEmbedErrorView()) initWithFrame_];
  *(v1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_errorPosition) = 0;
  *(v1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_navigationBarConfiguration) = 0;
  *(v1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_preferredContentSizeCategoryOnPopulate) = 0;
  v18 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_embedURL;
  v19 = sub_1D72585BC();
  v20 = *(*(v19 - 8) + 56);
  v20(v1 + v18, 1, 1, v19);
  v20(v1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_dataFeedURL, 1, 1, v19);
  *(v1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_location) = 0;
  v20(v1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_sourceURL, 1, 1, v19);
  v21 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_feedConfiguration;
  *(v1 + v21) = [objc_allocWithZone(MEMORY[0x1E69CE168]) init];
  v22 = (v1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_viewportSize);
  *v22 = 0;
  v22[1] = 0;
  *(v1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_isResizable) = 0;
  v23 = v1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_preferredSize;
  *v23 = 0;
  *(v23 + 8) = 0;
  *(v23 + 16) = 1;
  v24 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_dataVisualization;
  v25 = type metadata accessor for WebEmbedDataVisualization();
  (*(*(v25 - 8) + 56))(v1 + v24, 1, 1, v25);
  v26 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_layoutGuide;
  *(v1 + v26) = [objc_allocWithZone(MEMORY[0x1E69CE188]) initWithBounds:0.0 contentFrame:0.0 contentSafeAreaFrame:0.0 systemSafeAreaFrame:{0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 0, 0, 0}];
  *(v1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_layoutGuideDidChange) = 0;
  v27 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_stateMachine;
  if (qword_1EDF125F0 != -1)
  {
    swift_once();
  }

  v28 = qword_1EDFFC610;
  v35[15] = 0;
  sub_1D5E01854();
  swift_allocObject();
  v29 = v28;
  *(v1 + v27) = sub_1D725AB3C();
  v30 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_activityIndicator;
  *(v1 + v30) = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
  v31 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_tapGestureRecognizer;
  *(v1 + v31) = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:0 action:0];
  v32 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController__lastDatastoreUpdate;
  v33 = type metadata accessor for WebEmbedDatastoreUpdate();
  (*(*(v33 - 8) + 56))(v9, 1, 1, v33);
  sub_1D5C00D08(v9, v5, sub_1D5E01820);
  sub_1D5B62BF4(0, &qword_1EDF17AB8, sub_1D5E01820, MEMORY[0x1E69D6AF0]);
  swift_allocObject();
  v34 = sub_1D725B94C();
  sub_1D613582C(v9, sub_1D5E01820);
  *(v1 + v32) = v34;
  *(v1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_debugLoadView) = 0;
  *(v1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_layoutGuideView) = 0;
  sub_1D726402C();
  __break(1u);
}

uint64_t sub_1D6136158()
{
  v1 = v0;
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1D72585BC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = sub_1D725AB5C();
  if (v16[8] == 3)
  {
    v12 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_embedURL;
    swift_beginAccess();
    sub_1D5C00D08(v1 + v12, v5, sub_1D5B4D3E0);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      return sub_1D613582C(v5, sub_1D5B4D3E0);
    }

    else
    {
      (*(v7 + 32))(v10, v5, v6);
      if (qword_1EDF0D770 != -1)
      {
        swift_once();
      }

      v13 = byte_1EDF0D781;
      v14 = *(v1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webContentViewController);
      v15 = sub_1D725844C();
      if (v13 == 1)
      {
        [v14 loadURL:v15 cachePolicy:4];
      }

      else
      {
        [v14 loadURL_];
      }

      return (*(v7 + 8))(v10, v6);
    }
  }

  return result;
}

void sub_1D61363B4(uint64_t a1, char a2)
{
  sub_1D725CACC();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong view];

    if (v6)
    {
      v7 = [v6 window];

      if (v7)
      {
        v8 = [v7 rootViewController];

        if (v8)
        {
          v9 = sub_1D7262FCC();

          [v9 presentViewController:a1 animated:a2 & 1 completion:0];
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1D61364D4(uint64_t a1)
{
  sub_1D5B68374(v1 + OBJC_IVAR____TtC8NewsFeed26WebEmbedURLHandlerDelegate_webEmbedCoordinator, v9);
  v3 = v10;
  v4 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  if (*(v1 + OBJC_IVAR____TtC8NewsFeed26WebEmbedURLHandlerDelegate_webEmbedIdentifier + 8))
  {
    v5 = *(v1 + OBJC_IVAR____TtC8NewsFeed26WebEmbedURLHandlerDelegate_webEmbedIdentifier);
    v6 = *(v1 + OBJC_IVAR____TtC8NewsFeed26WebEmbedURLHandlerDelegate_webEmbedIdentifier + 8);
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  v7 = *(v4 + 8);

  v7(v5, v6, a1, 0, v3, v4);

  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t sub_1D61365B0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1D613661C(double a1, double a2)
{
  v3 = *(v2 + 16);
  *v5 = a1;
  *&v5[1] = a2;
  return v3(v5);
}

void sub_1D6136680(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1D61366E0(uint64_t a1, uint64_t a2)
{
  sub_1D5B4D3E0();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6136744(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D61367AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D613686C()
{
  if (!qword_1EDF18AB8)
  {
    sub_1D5B4D3E0();
    sub_1D5B4D72C(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF18AB8);
    }
  }
}

uint64_t sub_1D61368DC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D6136994()
{
  v1 = v0;
  v15.receiver = v0;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, sel_viewDidLoad);
  v2 = [v0 navigationItem];
  v3 = sub_1D726203C();
  [v2 setTitle_];

  v4 = sub_1D726203C();
  v5 = [objc_opt_self() systemImageNamed_];

  if (v5)
  {
    v6 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithImage:v5 style:2 target:v1 action:sel_doDismiss];

    v7 = [objc_opt_self() systemGrayColor];
    [v6 setTintColor_];

    v8 = [v1 navigationItem];
    sub_1D5E42B34();
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D72816C0;
    *(v9 + 32) = v6;
    sub_1D5B816F8();
    v10 = v6;
    v11 = sub_1D726265C();

    [v8 setRightBarButtonItems_];

    v12 = *&v1[OBJC_IVAR____TtC8NewsFeed31DebugJournalGroupViewController_tableView];
    [v12 setDelegate_];
    [v12 setDataSource_];
    [v12 setAlwaysBounceVertical_];
    type metadata accessor for DebugJournalTableViewCell();
    sub_1D7262DAC();
    type metadata accessor for FeedItemTableViewCell();
    sub_1D7262DAC();
    v13 = [v1 view];
    if (v13)
    {
      v14 = v13;
      [v13 addSubview_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1D6136DA8(id a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for DebugJournalGroupItem();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v136 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v136 - v13;
  v15 = *(v3 + OBJC_IVAR____TtC8NewsFeed31DebugJournalGroupViewController_sections);
  v16 = sub_1D7258DAC();
  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_106;
  }

  if (v16 >= *(v15 + 16))
  {
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v17 = *(v15 + 24 * v16 + 48);

  v18 = sub_1D7258D7C();
  if ((v18 & 0x8000000000000000) != 0)
  {
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  if (v18 >= *(v17 + 16))
  {
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  sub_1D6139070(v17 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v18, v14, type metadata accessor for DebugJournalGroupItem);

  sub_1D6139070(v14, v10, type metadata accessor for DebugJournalGroupItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v26 = *(v10 + 2);
      v141 = *(v10 + 1);
      v142 = v26;
      v143 = *(v10 + 6);
      a1 = sub_1D6137F58();
      v27 = [a1 textLabel];
      if (v27)
      {
        v28 = v27;
        v29 = sub_1D726203C();

        [v28 setText_];
      }

      else
      {
      }

      v54 = [a1 detailTextLabel];
      if (v54)
      {
        v55 = v54;
        sub_1D6139070(&v141, &v139, sub_1D5F17E28);
        if (v140)
        {
          __swift_project_boxed_opaque_existential_1(&v139, v140);
          sub_1D72644BC();
          __swift_destroy_boxed_opaque_existential_1(&v139);
        }

        else
        {
          sub_1D6138F24(&v139, sub_1D5F17E28);
        }

        v86 = sub_1D726203C();

        [v55 setText_];
      }

      v87 = [a1 imageView];
      if (v87)
      {
        v88 = v87;
        [v87 setImage_];
      }

      sub_1D6138F24(&v141, sub_1D5F17E28);
      goto LABEL_103;
    }

    v37 = *(v10 + 2);
    v36 = *(v10 + 3);
    v38 = v10[32];
    a1 = sub_1D6137F58();
    v39 = [a1 textLabel];
    if (v39)
    {
      v40 = v39;
      v41 = sub_1D726203C();

      [v40 setText_];
    }

    else
    {
    }

    v56 = [a1 detailTextLabel];
    if (!v56)
    {
LABEL_69:
      if (!v38)
      {
        v97 = [a1 imageView];
        if (v97)
        {
          v98 = v97;
          v99 = sub_1D726203C();
          v100 = [objc_opt_self() systemImageNamed_];

          [v98 setImage_];
        }

        v101 = [a1 imageView];
        if (v101)
        {
          v102 = v101;
          v103 = [objc_opt_self() systemRedColor];
          [v102 setTintColor_];
        }

        sub_1D5DF6958(v37, v36, 0);
        goto LABEL_103;
      }

      if (v38 == 1)
      {
        v90 = [a1 imageView];
        if (v90)
        {
          v91 = v90;
          v92 = sub_1D726203C();
          v93 = [objc_opt_self() systemImageNamed_];

          [v91 setImage_];
        }

        v94 = [a1 imageView];
        if (v94)
        {
          v95 = v94;
          v96 = [objc_opt_self() systemGray2Color];
          [v95 setTintColor_];
        }

        sub_1D5DF6958(v37, v36, 1u);
        goto LABEL_103;
      }

      v104 = [a1 imageView];
      v105 = v104;
      if (v37 | v36)
      {
        if (v104)
        {
          v106 = sub_1D726203C();
          v107 = [objc_opt_self() systemImageNamed_];

          [v105 setImage_];
        }

        v108 = [a1 imageView];
        if (!v108)
        {
          goto LABEL_102;
        }

        v109 = v108;
        v110 = [objc_opt_self() systemGray2Color];
      }

      else
      {
        if (v104)
        {
          v131 = sub_1D726203C();
          v132 = [objc_opt_self() systemImageNamed_];

          [v105 setImage_];
        }

        v133 = [a1 imageView];
        if (!v133)
        {
          goto LABEL_102;
        }

        v109 = v133;
        v110 = [objc_opt_self() systemGreenColor];
      }

      v134 = v110;
      [v109 setTintColor_];

LABEL_102:
LABEL_103:
      sub_1D6138F24(v14, type metadata accessor for DebugJournalGroupItem);
      return a1;
    }

    v57 = v56;
    if (v38)
    {
      if (v38 != 1)
      {
LABEL_68:
        v89 = sub_1D726203C();

        [v57 setText_];

        goto LABEL_69;
      }

      v58 = 0x202C70696B53;
      v59 = 0xE600000000000000;
    }

    else
    {
      v58 = 0x202C65766F6D6552;
      v59 = 0xE800000000000000;
    }

    *&v141 = v58;
    *(&v141 + 1) = v59;
    MEMORY[0x1DA6F9910](v37, v36);
    goto LABEL_68;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {

      sub_1D5B63F14(v10, &v141);
      type metadata accessor for FeedItemTableViewCell();
      a1 = sub_1D7262D8C();
      v20 = [a1 textLabel];
      if (v20)
      {
        v21 = v20;
        v23 = *(&v142 + 1);
        v22 = v143;
        __swift_project_boxed_opaque_existential_1(&v141, *(&v142 + 1));
        (*(*(v22 + 8) + 24))(v23);
        if (v24)
        {
          v25 = sub_1D726203C();
        }

        else
        {
          v25 = 0;
        }

        [v21 setText_];
      }

      v60 = [a1 textLabel];
      if (v60)
      {
        v61 = v60;
        v62 = [objc_opt_self() systemFontOfSize_];
        [v61 setFont_];
      }

      v63 = [a1 textLabel];
      if (v63)
      {
        v64 = v63;
        [v63 setNumberOfLines_];
      }

      v65 = [a1 detailTextLabel];
      if (v65)
      {
        v66 = v65;
        v67 = [objc_opt_self() systemFontOfSize_];
        [v66 setFont_];
      }

      [a1 setAccessoryType_];
      v68 = [a1 textLabel];
      if (v68)
      {
        v69 = v68;
        v70 = [objc_opt_self() labelColor];
        [v69 setTextColor_];
      }

      v71 = [a1 detailTextLabel];
      if (v71)
      {
        v72 = v71;
        v73 = [objc_opt_self() secondaryLabelColor];
        [v72 setTextColor_];
      }

      v74 = [a1 detailTextLabel];
      if (v74)
      {
        v75 = v74;
        [v74 setNumberOfLines_];
      }

      v77 = *(&v142 + 1);
      v76 = v143;
      __swift_project_boxed_opaque_existential_1(&v141, *(&v142 + 1));
      v78 = (*(*(v76 + 8) + 48))(v77);
      if (!v78)
      {
        v84 = [a1 detailTextLabel];
        if (!v84)
        {
          goto LABEL_89;
        }

        a2 = v84;
        v85 = sub_1D726203C();
LABEL_88:
        [a2 setText_];

LABEL_89:
        v111 = [a1 imageView];
        if (v111)
        {
          v112 = v111;
          [v111 setImage_];
        }

        v113 = swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_1D5B68374(&v141, &v139);
        sub_1D5B68374(&v139, v138);
        v114 = swift_allocObject();
        *(v114 + 16) = v113;
        sub_1D5B63F14(&v139, v114 + 24);
        __swift_project_boxed_opaque_existential_1(&v141, *(&v142 + 1));

        v115 = sub_1D725AA4C();
        v117 = v116;
        v118 = OBJC_IVAR____TtC8NewsFeed31DebugJournalGroupViewController_feedItemImages;
        swift_beginAccess();
        v119 = *(v3 + v118);
        if (*(v119 + 16))
        {
          v120 = sub_1D5B69D90(v115, v117);
          v122 = v121;

          if (v122)
          {
            v123 = *(*(v119 + 56) + 8 * v120);
            swift_endAccess();
            v124 = v123;
            sub_1D61381B8(v124, v113, v138);

            sub_1D6138F24(v14, type metadata accessor for DebugJournalGroupItem);
LABEL_96:
            __swift_destroy_boxed_opaque_existential_1(v138);

            __swift_destroy_boxed_opaque_existential_1(&v141);
            return a1;
          }
        }

        else
        {
        }

        swift_endAccess();
        v125 = *(&v142 + 1);
        v126 = v143;
        __swift_project_boxed_opaque_existential_1(&v141, *(&v142 + 1));
        v127 = *(v3 + OBJC_IVAR____TtC8NewsFeed31DebugJournalGroupViewController_placeholderImage);
        v128 = swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_1D5B68374(&v141, v137);
        v129 = swift_allocObject();
        v129[2] = v128;
        sub_1D5B63F14(v137, (v129 + 3));
        v129[8] = sub_1D6139054;
        v129[9] = v114;
        v130 = *(v126 + 8);

        sub_1D70A59C8(v127, sub_1D6139060, v129, v125, v130);

        sub_1D6138F24(v14, type metadata accessor for DebugJournalGroupItem);

        goto LABEL_96;
      }

      v79 = v78;
      [v78 sortingScore];

      v80 = [a1 detailTextLabel];
      if (!v80)
      {
        goto LABEL_89;
      }

      a2 = v80;
      if (qword_1EC87DD88 == -1)
      {
LABEL_57:
        v81 = qword_1EC9BAF48;
        v82 = sub_1D725A62C();
        v83 = [v81 stringForObjectValue_];

        if (v83)
        {
          sub_1D726207C();
        }

        else
        {
          sub_1D7262A9C();
        }

        v85 = sub_1D726203C();

        goto LABEL_88;
      }

LABEL_109:
      swift_once();
      goto LABEL_57;
    }

    a1 = sub_1D6137F58();
    v33 = [a1 textLabel];
    if (v33)
    {
      v34 = v33;
      v35 = sub_1D726203C();

      [v34 setText_];
    }

    else
    {
    }

    v50 = [a1 detailTextLabel];
    if (v50)
    {
      v51 = v50;
      [v50 setText_];
    }

    v52 = [a1 imageView];
    if (v52)
    {
      v53 = v52;
      [v52 setImage_];
    }

    goto LABEL_102;
  }

  a1 = sub_1D6137F58();
  v30 = [a1 textLabel];
  if (v30)
  {
    v31 = v30;
    v32 = sub_1D726203C();

    [v31 setText_];
  }

  else
  {
  }

  v42 = [a1 detailTextLabel];
  if (v42)
  {
    v43 = v42;
    v44 = sub_1D726203C();
    [v43 setText_];
  }

  v45 = [a1 imageView];
  if (v45)
  {
    v46 = v45;
    [v45 setImage_];
  }

  sub_1D6138FE8();
  v48 = *(v47 + 48);
  [a1 setSelectionStyle_];
  [a1 setAccessoryType_];

  sub_1D6138F24(v14, type metadata accessor for DebugJournalGroupItem);
  v49 = sub_1D725F88C();
  (*(*(v49 - 8) + 8))(&v10[v48], v49);
  return a1;
}

id sub_1D6137F58()
{
  type metadata accessor for DebugJournalTableViewCell();
  v0 = sub_1D7262D8C();
  v1 = [v0 textLabel];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() systemFontOfSize_];
    [v2 setFont_];
  }

  v4 = [v0 textLabel];
  if (v4)
  {
    v5 = v4;
    v6 = [objc_opt_self() labelColor];
    [v5 setTextColor_];
  }

  v7 = [v0 textLabel];
  if (v7)
  {
    v8 = v7;
    [v7 setNumberOfLines_];
  }

  v9 = [v0 detailTextLabel];
  if (v9)
  {
    v10 = v9;
    v11 = [objc_opt_self() secondaryLabelColor];
    [v10 setTextColor_];
  }

  v12 = [v0 detailTextLabel];
  if (v12)
  {
    v13 = v12;
    v14 = [objc_opt_self() systemFontOfSize_];
    [v13 setFont_];
  }

  v15 = [v0 detailTextLabel];
  if (v15)
  {
    v16 = v15;
    [v15 setNumberOfLines_];
  }

  [v0 setSelectionStyle_];
  [v0 setAccessoryType_];

  return v0;
}

void sub_1D61381B8(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_5:
    v9 = 0;
    v7 = 0;
    goto LABEL_7;
  }

  v6 = Strong;
  v7 = [Strong textLabel];

  if (v7)
  {
    v8 = [v7 text];

    if (v8)
    {
      v9 = sub_1D726207C();
      v7 = v10;

      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v9 = 0;
LABEL_7:
  v11 = a3[3];
  v12 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v11);
  v13 = (*(*(v12 + 8) + 24))(v11);
  if (!v7)
  {
    if (!v14)
    {
      goto LABEL_19;
    }

LABEL_16:

    return;
  }

  if (!v14)
  {
    goto LABEL_16;
  }

  if (v9 == v13 && v7 == v14)
  {
  }

  else
  {
    v16 = sub_1D72646CC();

    if ((v16 & 1) == 0)
    {
      return;
    }
  }

LABEL_19:
  swift_beginAccess();
  v17 = swift_unknownObjectWeakLoadStrong();
  if (v17)
  {
    v18 = v17;
    v19 = [v17 imageView];

    if (v19)
    {
      [v19 setImage_];
    }
  }
}

unint64_t sub_1D6138528(uint64_t a1)
{
  *&v47 = a1;
  v2 = sub_1D725F88C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v46 - v9;
  v11 = type metadata accessor for DebugJournalGroupItem();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v46 - v18;
  v48 = v1;
  v20 = *&v1[OBJC_IVAR____TtC8NewsFeed31DebugJournalGroupViewController_sections];
  result = sub_1D7258DAC();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (result >= *(v20 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v22 = *(v20 + 24 * result + 48);

  result = sub_1D7258D7C();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (result < *(v22 + 16))
  {
    sub_1D6139070(v22 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * result, v19, type metadata accessor for DebugJournalGroupItem);

    sub_1D6139070(v19, v15, type metadata accessor for DebugJournalGroupItem);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        sub_1D6138F24(v19, type metadata accessor for DebugJournalGroupItem);

        v36 = sub_1D5F17E28;
        v37 = (v15 + 16);
        return sub_1D6138F24(v37, v36);
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 2)
      {
        v46[1] = *v15;
        sub_1D6138FE8();
        v39 = v3;
        (*(v3 + 32))(v10, &v15[*(v38 + 48)], v2);
        v40 = sub_1D7258D4C();
        [v47 deselectRowAtIndexPath:v40 animated:1];

        (*(v3 + 16))(v6, v10, v2);
        v41 = objc_allocWithZone(sub_1D725E39C());
        v42 = sub_1D725E38C();
        v43 = [v42 navigationItem];
        v44 = sub_1D726203C();

        [v43 setTitle_];

        v45 = [v48 navigationController];
        [v45 pushViewController:v42 animated:1];

        (*(v39 + 8))(v10, v2);
        goto LABEL_13;
      }

      if (EnumCaseMultiPayload == 3)
      {
        v24 = *(v15 + 5);
        sub_1D5B63F14(v15, v52);
        v25 = sub_1D7258D4C();
        [v47 deselectRowAtIndexPath:v25 animated:1];

        sub_1D5B68374(v52, v51);
        v26 = v48;
        v27 = *&v48[OBJC_IVAR____TtC8NewsFeed31DebugJournalGroupViewController_cloudContext];
        v47 = *&v48[OBJC_IVAR____TtC8NewsFeed31DebugJournalGroupViewController_commandCenter];
        sub_1D5B68374(&v48[OBJC_IVAR____TtC8NewsFeed31DebugJournalGroupViewController_radarAttachmentProvider], v50);
        v28 = type metadata accessor for DebugInspectionViewController();
        v29 = objc_allocWithZone(v28);
        v30 = OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_tableView;
        v31 = objc_allocWithZone(MEMORY[0x1E69DD020]);

        *&v29[v30] = [v31 initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
        *&v29[OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_sections] = MEMORY[0x1E69E7CC0];
        v32 = OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_coverViewManager;
        sub_1D725D7AC();
        swift_allocObject();
        *&v29[v32] = sub_1D725D79C();
        *&v29[OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_inspector] = v24;
        sub_1D5B68374(v51, &v29[OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_feedItem]);
        *&v29[OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_commandCenter] = v47;
        *&v29[OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_cloudContext] = v27;
        sub_1D5B68374(v50, &v29[OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_radarAttachmentProvider]);
        v49.receiver = v29;
        v49.super_class = v28;
        swift_unknownObjectRetain();
        v33 = v27;
        v34 = objc_msgSendSuper2(&v49, sel_initWithNibName_bundle_, 0, 0);
        __swift_destroy_boxed_opaque_existential_1(v50);
        __swift_destroy_boxed_opaque_existential_1(v51);
        v35 = [v26 navigationController];
        [v35 pushViewController:v34 animated:1];

        __swift_destroy_boxed_opaque_existential_1(v52);
LABEL_13:
        v36 = type metadata accessor for DebugJournalGroupItem;
        v37 = v19;
        return sub_1D6138F24(v37, v36);
      }
    }

    sub_1D6138F24(v19, type metadata accessor for DebugJournalGroupItem);
    v37 = v15;
    v36 = type metadata accessor for DebugJournalGroupItem;
    return sub_1D6138F24(v37, v36);
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_1D6138C9C(void *a1, uint64_t a2, void *a3, void (*a4)(id))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    v9 = sub_1D725AA4C();
    v11 = v10;
    if (a1)
    {
      v12 = a1;
    }

    else
    {
      v12 = *&v8[OBJC_IVAR____TtC8NewsFeed31DebugJournalGroupViewController_naImage];
    }

    v13 = OBJC_IVAR____TtC8NewsFeed31DebugJournalGroupViewController_feedItemImages;
    swift_beginAccess();
    v14 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *&v8[v13];
    *&v8[v13] = 0x8000000000000000;
    sub_1D6D7A208(v12, v9, v11, isUniquelyReferenced_nonNull_native);

    *&v8[v13] = v18;
    swift_endAccess();
    v16 = v14;
    if (!a1)
    {
      v16 = *&v8[OBJC_IVAR____TtC8NewsFeed31DebugJournalGroupViewController_naImage];
    }

    v17 = v14;
    a4(v16);
  }
}

uint64_t sub_1D6138F24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D6138F84()
{
  result = qword_1EC884160;
  if (!qword_1EC884160)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC884160);
  }

  return result;
}

void sub_1D6138FE8()
{
  if (!qword_1EC89C820)
  {
    sub_1D725F88C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC89C820);
    }
  }
}

uint64_t sub_1D6139070(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D61390D8()
{
  v1 = OBJC_IVAR____TtC8NewsFeed31DebugJournalGroupViewController_tableView;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
  *&v0[OBJC_IVAR____TtC8NewsFeed31DebugJournalGroupViewController_feedItemImages] = MEMORY[0x1E69E7CC8];
  v27 = OBJC_IVAR____TtC8NewsFeed31DebugJournalGroupViewController_placeholderImage;
  v28 = v0;
  v2 = objc_opt_self();
  v3 = [v2 systemGrayColor];
  v4 = [v2 lightGrayColor];
  v5 = objc_opt_self();
  v6 = *MEMORY[0x1E69DB958];
  v26 = v5;
  v7 = [v5 systemFontOfSize:12.0 weight:*MEMORY[0x1E69DB958]];
  v8 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  v25 = vdupq_n_s64(0x4046000000000000uLL);
  *(v9 + 24) = v25;
  *(v9 + 40) = 0;
  *(v9 + 48) = 0;
  *(v9 + 56) = v7;
  *(v9 + 64) = v4;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1D6139584;
  *(v10 + 24) = v9;
  v33 = sub_1D6139588;
  v34 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = sub_1D62E78B0;
  v32 = &block_descriptor_23;
  v11 = _Block_copy(&aBlock);
  v12 = v3;
  v13 = v7;
  v14 = v4;

  v15 = [v8 imageWithActions_];

  _Block_release(v11);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    goto LABEL_4;
  }

  v11 = v28;
  *&v28[v27] = v15;
  v27 = OBJC_IVAR____TtC8NewsFeed31DebugJournalGroupViewController_naImage;
  v16 = [v2 lightGrayColor];
  v17 = [v26 systemFontOfSize:12.0 weight:v6];
  v18 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = v25;
  *(v19 + 40) = xmmword_1D729E1B0;
  *(v19 + 56) = v17;
  *(v19 + 64) = v16;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1D61395AC;
  *(v20 + 24) = v19;
  v33 = sub_1D61395B0;
  v34 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = sub_1D62E78B0;
  v32 = &block_descriptor_27_0;
  v21 = _Block_copy(&aBlock);
  v22 = v17;
  v23 = v16;

  v15 = [v18 &selRef_darkStyleNavigationChromeBackgroundImage + 2];

  _Block_release(v21);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
LABEL_4:
    __break(1u);
  }

  *&v11[v27] = v15;
  result = sub_1D726402C();
  __break(1u);
  return result;
}

uint64_t sub_1D6139614@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5B7B268(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v31 - v11;
  *&v15 = MEMORY[0x1EEE9AC00](v13, v14).n128_u64[0];
  v17 = &v31 - v16;
  if (*v2)
  {
    if (*v2 == 1)
    {
      v18 = [a1 loadDate];
      if (v18)
      {
        v19 = v18;
        sub_1D72588BC();

        v20 = sub_1D725891C();
        (*(*(v20 - 8) + 56))(v12, 0, 1, v20);
      }

      else
      {
        v27 = sub_1D725891C();
        (*(*(v27 - 8) + 56))(v12, 1, 1, v27);
      }

      v17 = v12;
    }

    else
    {
      v24 = [a1 publisherSpecifiedArticleIDsModifiedDate];
      if (v24)
      {
        v25 = v24;
        sub_1D72588BC();

        v26 = sub_1D725891C();
        (*(*(v26 - 8) + 56))(v8, 0, 1, v26);
      }

      else
      {
        v29 = sub_1D725891C();
        (*(*(v29 - 8) + 56))(v8, 1, 1, v29);
      }

      v17 = v8;
    }
  }

  else
  {
    v21 = [a1 fetchDate];
    if (v21)
    {
      v22 = v21;
      sub_1D72588BC();

      v23 = sub_1D725891C();
      (*(*(v23 - 8) + 56))(v17, 0, 1, v23);
    }

    else
    {
      v28 = sub_1D725891C();
      (*(*(v28 - 8) + 56))(v17, 1, 1, v28);
    }
  }

  return sub_1D5DF42F8(v17, a2);
}

uint64_t sub_1D6139900(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x6574614464616F6CLL;
  v5 = 0x80000001D73B9C60;
  if (v2 != 1)
  {
    v4 = 0xD000000000000028;
    v3 = 0x80000001D73B9C60;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x7461446863746566;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE900000000000065;
  }

  v8 = 0x6574614464616F6CLL;
  if (*a2 == 1)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v8 = 0xD000000000000028;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7461446863746566;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE900000000000065;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D61399FC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6139AA8()
{
  sub_1D72621EC();
}

uint64_t sub_1D6139B40()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6139BE8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D613AD60();
  *a1 = result;
  return result;
}

void sub_1D6139C18(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000065;
  v4 = 0xE800000000000000;
  v5 = 0x6574614464616F6CLL;
  if (v2 != 1)
  {
    v5 = 0xD000000000000028;
    v4 = 0x80000001D73B9C60;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7461446863746566;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t FormatTagBinding.DateTime.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D6139DCC()
{
  result = qword_1EC884168;
  if (!qword_1EC884168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884168);
  }

  return result;
}

unint64_t sub_1D6139E20(uint64_t a1)
{
  result = sub_1D6139E48();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6139E48()
{
  result = qword_1EC884170;
  if (!qword_1EC884170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884170);
  }

  return result;
}

unint64_t sub_1D6139E9C(void *a1)
{
  a1[1] = sub_1D6139ED4();
  a1[2] = sub_1D6139F28();
  result = sub_1D6139DCC();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6139ED4()
{
  result = qword_1EC884178;
  if (!qword_1EC884178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884178);
  }

  return result;
}

unint64_t sub_1D6139F28()
{
  result = qword_1EC884180;
  if (!qword_1EC884180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884180);
  }

  return result;
}

unint64_t sub_1D6139FD0()
{
  result = qword_1EC884188;
  if (!qword_1EC884188)
  {
    sub_1D613A028();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884188);
  }

  return result;
}

void sub_1D613A028()
{
  if (!qword_1EC884190)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC884190);
    }
  }
}

unint64_t sub_1D613A07C()
{
  result = qword_1EC884198;
  if (!qword_1EC884198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884198);
  }

  return result;
}

unint64_t sub_1D613A0D0()
{
  result = qword_1EC8841A0;
  if (!qword_1EC8841A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8841A0);
  }

  return result;
}

size_t sub_1D613A124@<X0>(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v132 = a1;
  v115 = a2;
  sub_1D5B7B268(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v129 = &v115 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v128 = &v115 - v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  v116 = &v115 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v115 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v115 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v126 = &v115 - v21;
  v22 = type metadata accessor for FormatInspectionItem(0);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v125 = &v115 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v124 = &v115 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v123 = &v115 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v122 = &v115 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v121 = &v115 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v120 = &v115 - v40;
  v119 = 0x80000001D73CAF00;
  sub_1D5B7B268(0, &qword_1EC896750, type metadata accessor for FormatInspectionItem, MEMORY[0x1E69E6F90]);
  v135 = v41;
  v42 = 0;
  v136 = *(v23 + 72);
  v134 = *(v23 + 80);
  v43 = (v134 + 32) & ~v134;
  v44 = MEMORY[0x1E69E7CC0];
  v133 = xmmword_1D7273AE0;
  v118 = xmmword_1D729E260;
  v117 = xmmword_1D729E250;
  v127 = v14;
  v130 = v22;
  v131 = v18;
  while (1)
  {
    v45 = byte_1F50F5D98[v42 + 32];
    v46 = swift_allocObject();
    *(v46 + 16) = v133;
    if (!v45)
    {
      v51 = [v132 fetchDate];
      if (v51)
      {
        v52 = v51;
        sub_1D72588BC();

        v53 = 0;
      }

      else
      {
        v53 = 1;
      }

      v68 = sub_1D725891C();
      v69 = *(v68 - 8);
      (*(v69 + 56))(v18, v53, 1, v68);
      v70 = v126;
      sub_1D5DF42F8(v18, v126);
      if ((*(v69 + 48))(v70, 1, v68) == 1)
      {
        _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v70);
      }

      else
      {
        v71 = sub_1D72587AC();
        v73 = v72;
        (*(v69 + 8))(v70, v68);
        if (v73)
        {
          v74 = HIBYTE(v73) & 0xF;
          if ((v73 & 0x2000000000000000) == 0)
          {
            v74 = v71 & 0xFFFFFFFFFFFFLL;
          }

          if (v74)
          {
            *&v137 = v71;
            *(&v137 + 1) = v73;
            *&v138 = 0;
            *(&v138 + 1) = MEMORY[0x1E69E6158];
            v22 = v130;
            v75 = *(v130 + 24);
            v76 = v123;
            sub_1D5EA7510(&v137, &v123[v75]);
            v77 = type metadata accessor for FormatInspectionItem.Value(0);
            swift_storeEnumTagMultiPayload();
            (*(*(v77 - 8) + 56))(&v76[v75], 0, 1, v77);
            *v76 = v118;
            *(v76 + 2) = 0;
            *(v76 + 3) = 0;
            v78 = &v76[*(v22 + 28)];
            *v78 = 0;
            *(v78 + 1) = 0;
            v78[16] = -1;
            sub_1D5EA756C(&v137);
LABEL_41:
            v93 = v76;
            v94 = &v140;
            goto LABEL_42;
          }
        }
      }

      v137 = 0u;
      v138 = 0u;
      v22 = v130;
      v95 = *(v130 + 24);
      v96 = type metadata accessor for FormatInspectionItem.Value(0);
      v76 = v123;
      (*(*(v96 - 8) + 56))(&v123[v95], 1, 1, v96);
      *v76 = v118;
      *(v76 + 2) = 0;
      *(v76 + 3) = 0;
      v97 = &v76[*(v22 + 28)];
      *v97 = 0;
      *(v97 + 1) = 0;
      v97[16] = -1;
      goto LABEL_41;
    }

    if (v45 == 1)
    {
      v47 = [v132 loadDate];
      v48 = v116;
      if (v47)
      {
        v49 = v47;
        sub_1D72588BC();

        v50 = 0;
      }

      else
      {
        v50 = 1;
      }

      v58 = sub_1D725891C();
      v59 = *(v58 - 8);
      (*(v59 + 56))(v48, v50, 1, v58);
      sub_1D5DF42F8(v48, v14);
      if ((*(v59 + 48))(v14, 1, v58) == 1)
      {
        _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v14);
      }

      else
      {
        v60 = sub_1D72587AC();
        v62 = v61;
        (*(v59 + 8))(v14, v58);
        if (v62)
        {
          v63 = HIBYTE(v62) & 0xF;
          if ((v62 & 0x2000000000000000) == 0)
          {
            v63 = v60 & 0xFFFFFFFFFFFFLL;
          }

          if (v63)
          {
            *&v137 = v60;
            *(&v137 + 1) = v62;
            *&v138 = 0;
            *(&v138 + 1) = MEMORY[0x1E69E6158];
            v64 = *(v22 + 24);
            v65 = v124;
            sub_1D5EA7510(&v137, &v124[v64]);
            v66 = type metadata accessor for FormatInspectionItem.Value(0);
            swift_storeEnumTagMultiPayload();
            (*(*(v66 - 8) + 56))(&v65[v64], 0, 1, v66);
            *v65 = v117;
            *(v65 + 2) = 0;
            *(v65 + 3) = 0;
            v67 = &v65[*(v22 + 28)];
            *v67 = 0;
            *(v67 + 1) = 0;
            v67[16] = -1;
            sub_1D5EA756C(&v137);
LABEL_38:
            v93 = v65;
            v94 = &v141;
LABEL_42:
            v98 = *(v94 - 32);
            sub_1D613ADAC(v93, v98);
            v99 = v98;
            goto LABEL_46;
          }
        }
      }

      v137 = 0u;
      v138 = 0u;
      v90 = *(v22 + 24);
      v91 = type metadata accessor for FormatInspectionItem.Value(0);
      v65 = v124;
      (*(*(v91 - 8) + 56))(&v124[v90], 1, 1, v91);
      *v65 = v117;
      *(v65 + 2) = 0;
      *(v65 + 3) = 0;
      v92 = &v65[*(v22 + 28)];
      *v92 = 0;
      *(v92 + 1) = 0;
      v92[16] = -1;
      goto LABEL_38;
    }

    v54 = [v132 publisherSpecifiedArticleIDsModifiedDate];
    v55 = v129;
    if (v54)
    {
      v56 = v54;
      sub_1D72588BC();

      v57 = 0;
    }

    else
    {
      v57 = 1;
    }

    v79 = sub_1D725891C();
    v80 = *(v79 - 8);
    (*(v80 + 56))(v55, v57, 1, v79);
    v81 = v128;
    sub_1D5DF42F8(v55, v128);
    if ((*(v80 + 48))(v81, 1, v79) == 1)
    {
      _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v81);
LABEL_44:
      v137 = 0u;
      v138 = 0u;
      v22 = v130;
      v100 = *(v130 + 24);
      v101 = type metadata accessor for FormatInspectionItem.Value(0);
      v87 = v125;
      (*(*(v101 - 8) + 56))(&v125[v100], 1, 1, v101);
      *v87 = 0xD00000000000002CLL;
      *(v87 + 1) = v119;
      *(v87 + 2) = 0;
      *(v87 + 3) = 0;
      v102 = &v87[*(v22 + 28)];
      *v102 = 0;
      *(v102 + 1) = 0;
      v102[16] = -1;
      goto LABEL_45;
    }

    v82 = sub_1D72587AC();
    v84 = v83;
    (*(v80 + 8))(v81, v79);
    if (!v84)
    {
      goto LABEL_44;
    }

    v85 = HIBYTE(v84) & 0xF;
    if ((v84 & 0x2000000000000000) == 0)
    {
      v85 = v82 & 0xFFFFFFFFFFFFLL;
    }

    if (!v85)
    {

      goto LABEL_44;
    }

    *&v137 = v82;
    *(&v137 + 1) = v84;
    *&v138 = 0;
    *(&v138 + 1) = MEMORY[0x1E69E6158];
    v22 = v130;
    v86 = *(v130 + 24);
    v87 = v125;
    sub_1D5EA7510(&v137, &v125[v86]);
    v88 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v88 - 8) + 56))(&v87[v86], 0, 1, v88);
    *v87 = 0xD00000000000002CLL;
    *(v87 + 1) = v119;
    *(v87 + 2) = 0;
    *(v87 + 3) = 0;
    v89 = &v87[*(v22 + 28)];
    *v89 = 0;
    *(v89 + 1) = 0;
    v89[16] = -1;
    sub_1D5EA756C(&v137);
LABEL_45:
    v103 = v122;
    sub_1D613ADAC(v87, v122);
    v99 = v103;
    v14 = v127;
LABEL_46:
    v18 = v131;
    result = sub_1D613ADAC(v99, v46 + v43);
    v105 = *(v46 + 16);
    v106 = v44[2];
    v107 = v106 + v105;
    if (__OFADD__(v106, v105))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v107 <= v44[3] >> 1)
    {
      if (!v105)
      {
        goto LABEL_2;
      }
    }

    else
    {
      if (v106 <= v107)
      {
        v108 = v106 + v105;
      }

      else
      {
        v108 = v106;
      }

      result = sub_1D698BAE0(result, v108, 1, v44);
      v44 = result;
      if (!v105)
      {
LABEL_2:

        goto LABEL_3;
      }
    }

    if ((v44[3] >> 1) - v44[2] < v105)
    {
      goto LABEL_60;
    }

    swift_arrayInitWithCopy();

    v109 = v44[2];
    v110 = __OFADD__(v109, v105);
    v111 = v109 + v105;
    if (v110)
    {
      goto LABEL_61;
    }

    v44[2] = v111;
LABEL_3:
    if (++v42 == 3)
    {
      v112 = sub_1D5F62998(v44);

      sub_1D6795150(0x6D69542065746144, 0xE900000000000065, 0, 0, v112, &v137);

      v113 = v138;
      v114 = v115;
      *v115 = v137;
      v114[1] = v113;
      *(v114 + 4) = v139;
      return result;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

uint64_t sub_1D613AD60()
{
  v0 = sub_1D72641CC();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D613ADAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatInspectionItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t FormatShineBlend.color.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v9 = *(v1 + 32);
  v10 = v2;
  v11 = *(v1 + 64);
  v3 = v11;
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_1D613AE5C(v8, v7);
}

void FormatShineBlend.alphaProcessor.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 81);
  *a1 = *(v1 + 72);
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

BOOL _s8NewsFeed16FormatShineBlendV2eeoiySbAC_ACtFZ_0(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 48);
  v39 = *(a1 + 32);
  v40 = v3;
  v4 = *(a1 + 16);
  v38[0] = *a1;
  v38[1] = v4;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  v42[2] = a2[2];
  v42[3] = v7;
  v8 = a2[1];
  v9 = a2[2];
  v10 = *a2;
  v42[0] = v5;
  v42[1] = v8;
  v11 = *(a1 + 48);
  v35 = v39;
  v36 = v11;
  v41 = *(a1 + 64);
  v12 = *(a1 + 65);
  v13 = *(a1 + 72);
  v14 = *(a1 + 80);
  v15 = *(a1 + 81);
  v43 = *(a2 + 64);
  v16 = *(a2 + 65);
  v17 = *(a2 + 9);
  v18 = *(a2 + 80);
  v19 = *(a2 + 81);
  v37 = *(a1 + 64);
  v33 = v38[0];
  v34 = v2;
  v20 = a2[3];
  v30 = v9;
  v31 = v20;
  v32 = *(a2 + 64);
  v28 = v10;
  v29 = v6;
  sub_1D613AE5C(v38, v46);
  sub_1D613AE5C(v42, v46);
  v21 = _s8NewsFeed16FormatShineColorO2eeoiySbAC_ACtFZ_0(&v33, &v28);
  v44[2] = v30;
  v44[3] = v31;
  v45 = v32;
  v44[0] = v28;
  v44[1] = v29;
  sub_1D613B3C4(v44);
  v46[2] = v35;
  v46[3] = v36;
  v47 = v37;
  v46[0] = v33;
  v46[1] = v34;
  sub_1D613B3C4(v46);
  if ((v21 & 1) == 0)
  {
    return 0;
  }

  if (v12 == 16)
  {
    if (v16 != 16)
    {
      return 0;
    }

LABEL_4:
    if (v15)
    {
      return (v19 & 1) != 0;
    }

    goto LABEL_11;
  }

  if (v16 == 16)
  {
    return 0;
  }

  LOBYTE(v33) = v12;
  LOBYTE(v28) = v16;
  v23 = FormatBlendMode.rawValue.getter();
  v25 = v24;
  if (v23 != FormatBlendMode.rawValue.getter() || v25 != v26)
  {
    v27 = sub_1D72646CC();

    if ((v27 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_4;
  }

  if (v15)
  {
    return (v19 & 1) != 0;
  }

LABEL_11:
  if ((v19 & 1) == 0)
  {
    if (v14)
    {
      if (v13 == 0.0)
      {
        if ((v18 & 1) != 0 && v17 == 0.0)
        {
          return 1;
        }
      }

      else if ((v18 & 1) != 0 && v17 != 0.0)
      {
        return 1;
      }
    }

    else if ((v18 & 1) == 0 && v13 == v17)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1D613B130(uint64_t a1)
{
  result = sub_1D613B158();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D613B158()
{
  result = qword_1EC8841A8;
  if (!qword_1EC8841A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8841A8);
  }

  return result;
}

unint64_t sub_1D613B1AC(void *a1)
{
  a1[1] = sub_1D613B1E4();
  a1[2] = sub_1D613B238();
  result = sub_1D613B28C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D613B1E4()
{
  result = qword_1EC8841B0;
  if (!qword_1EC8841B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8841B0);
  }

  return result;
}

unint64_t sub_1D613B238()
{
  result = qword_1EC8841B8;
  if (!qword_1EC8841B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8841B8);
  }

  return result;
}

unint64_t sub_1D613B28C()
{
  result = qword_1EC8841C0;
  if (!qword_1EC8841C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8841C0);
  }

  return result;
}

__n128 __swift_memcpy82_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1D613B310(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 82))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 64);
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

uint64_t sub_1D613B358(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 82) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 82) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

BOOL sub_1D613B448(uint64_t *a1, double a2)
{
  v3 = *a1;
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  sub_1D5F3FE24();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 32) = v4;
  *(inited + 40) = 0;
  LOBYTE(v3) = sub_1D633A310(v3, inited);
  swift_setDeallocating();
  sub_1D613B818(0, qword_1EDF2C898, type metadata accessor for FormatEquationToken);
  swift_arrayDestroy();
  return (v3 & 1) == 0;
}

double sub_1D613B53C@<D0>(uint64_t *a1@<X8>, double a2@<D0>)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  sub_1D5F3FE24();
  v5 = swift_allocObject();
  *&result = 1;
  *(v5 + 16) = xmmword_1D7273AE0;
  *(v5 + 32) = v4;
  *(v5 + 40) = 0;
  *a1 = v5;
  return result;
}

double static FormatCodingSelectorFloatEquationZeroStrategy.defaultValue.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  sub_1D5F3FE24();
  v3 = swift_allocObject();
  *&result = 1;
  *(v3 + 16) = xmmword_1D7273AE0;
  *(v3 + 32) = v2;
  *(v3 + 40) = 0;
  v5 = MEMORY[0x1E69E7CC0];
  *a1 = v3;
  a1[1] = v5;
  return result;
}

double sub_1D613B63C@<D0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  sub_1D5F3FE24();
  v3 = swift_allocObject();
  *&result = 1;
  *(v3 + 16) = xmmword_1D7273AE0;
  *(v3 + 32) = v2;
  *(v3 + 40) = 0;
  v5 = MEMORY[0x1E69E7CC0];
  *a1 = v3;
  a1[1] = v5;
  return result;
}

uint64_t _s8NewsFeed45FormatCodingSelectorFloatEquationZeroStrategyV12shouldEncode12wrappedValueSbAA0ce6SimpleM0VyAA0cG0VyAA0cF0OGG_tFZ_0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  sub_1D5F3FE24();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 32) = v3;
  *(inited + 40) = 0;
  if (sub_1D633A310(v2, inited))
  {

    v5 = MEMORY[0x1E69E7CC0];

    v6 = sub_1D634D564(v1, v5);

    swift_bridgeObjectRelease_n();
    if (v6)
    {
      return 0;
    }
  }

  else
  {
  }

  return 1;
}

unint64_t sub_1D613B79C(uint64_t a1)
{
  result = sub_1D613B7C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D613B7C4()
{
  result = qword_1EC8841C8;
  if (!qword_1EC8841C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8841C8);
  }

  return result;
}

void sub_1D613B818(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5C35130();
    v7 = a3(a1, &type metadata for FormatFloat, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D613B87C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D613B818(255, &qword_1EDF32858, type metadata accessor for FormatEquation);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D613B8DC(uint64_t a1)
{
  result = sub_1D613B904();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D613B904()
{
  result = qword_1EC8841D0;
  if (!qword_1EC8841D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8841D0);
  }

  return result;
}

unint64_t sub_1D613B958(uint64_t a1)
{
  result = sub_1D613B980();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D613B980()
{
  result = qword_1EC8841D8;
  if (!qword_1EC8841D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8841D8);
  }

  return result;
}

unint64_t sub_1D613B9D4(uint64_t a1)
{
  result = sub_1D613B9FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D613B9FC()
{
  result = qword_1EC8841E0;
  if (!qword_1EC8841E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8841E0);
  }

  return result;
}

uint64_t sub_1D613BA50(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D613BA94();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D613BA94()
{
  if (!qword_1EDF24728)
  {
    sub_1D613B818(255, &qword_1EDF32858, type metadata accessor for FormatEquation);
    sub_1D613B87C(qword_1EDF32870);
    v0 = type metadata accessor for FormatSelectorSimpleValue();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF24728);
    }
  }
}

uint64_t WebEmbedDataSourcesConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v21 = a2;
  sub_1D613BE14();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D613C1FC(0, &qword_1EC884208, MEMORY[0x1E69E6F48]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v20 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D613BF7C();
  sub_1D7264B0C();
  if (!v2)
  {
    v14 = v10;
    sub_1D613BE6C();
    v16 = v15;
    sub_1D613BFD0();
    sub_1D726427C();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v7, 1, v16) == 1)
    {
      sub_1D613C028(v7);
      v18 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v18 = sub_1D725A74C();
      (*(v17 + 8))(v7, v16);
    }

    (*(v14 + 8))(v13, v9);
    *v21 = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D613BE14()
{
  if (!qword_1EC8841E8)
  {
    sub_1D613BE6C();
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8841E8);
    }
  }
}

void sub_1D613BE6C()
{
  if (!qword_1EC8841F0)
  {
    sub_1D613BED4();
    sub_1D613BF28();
    v0 = sub_1D725AAEC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8841F0);
    }
  }
}

unint64_t sub_1D613BED4()
{
  result = qword_1EC8841F8;
  if (!qword_1EC8841F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8841F8);
  }

  return result;
}

unint64_t sub_1D613BF28()
{
  result = qword_1EC884200;
  if (!qword_1EC884200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884200);
  }

  return result;
}

unint64_t sub_1D613BF7C()
{
  result = qword_1EC884210;
  if (!qword_1EC884210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884210);
  }

  return result;
}

unint64_t sub_1D613BFD0()
{
  result = qword_1EC884218;
  if (!qword_1EC884218)
  {
    sub_1D613BE6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884218);
  }

  return result;
}

uint64_t sub_1D613C028(uint64_t a1)
{
  sub_1D613BE14();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WebEmbedDataSourcesConfiguration.encode(to:)(void *a1)
{
  sub_1D613C1FC(0, &qword_1EC884220, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v11 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D613BF7C();

  sub_1D7264B5C();
  v11[1] = v9;
  sub_1D613C260();
  sub_1D613C2B0();
  sub_1D726443C();

  return (*(v5 + 8))(v8, v4);
}

void sub_1D613C1FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D613BF7C();
    v7 = a3(a1, &type metadata for WebEmbedDataSourcesConfiguration.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1D613C260()
{
  if (!qword_1EC884228)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC884228);
    }
  }
}

unint64_t sub_1D613C2B0()
{
  result = qword_1EC884230;
  if (!qword_1EC884230)
  {
    sub_1D613C260();
    sub_1D613BF28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884230);
  }

  return result;
}

uint64_t sub_1D613C328()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D613C3A4()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D613C3FC@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D72641CC();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1D613C494@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D72641CC();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1D613C4EC(uint64_t a1)
{
  v2 = sub_1D613BF7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D613C528(uint64_t a1)
{
  v2 = sub_1D613BF7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D613C5B8()
{
  result = qword_1EC884238;
  if (!qword_1EC884238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884238);
  }

  return result;
}

unint64_t sub_1D613C610()
{
  result = qword_1EC884240;
  if (!qword_1EC884240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884240);
  }

  return result;
}

unint64_t sub_1D613C668()
{
  result = qword_1EC884248;
  if (!qword_1EC884248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884248);
  }

  return result;
}

uint64_t sub_1D613C6BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = *(a1 + 40);
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      if (v4 == 3)
      {
        if (([*(a1 + 40) respondsToSelector_] & 1) == 0 || (v6 = objc_msgSend(v5, sel_thumbnailImageTextColor)) == 0)
        {
          result = swift_allocObject();
          v8 = 21;
LABEL_20:
          *(result + 16) = v8;
          *(result + 24) = 0x3FF0000000000000;
          *(result + 32) = 0;
          v23 = 0x1000000000000000;
          goto LABEL_23;
        }
      }

      else if (([*(a1 + 40) respondsToSelector_] & 1) == 0 || (v6 = objc_msgSend(v5, sel_thumbnailImageAccentColor)) == 0)
      {
        result = swift_allocObject();
        v8 = 8;
        goto LABEL_20;
      }

      goto LABEL_18;
    }

    if (([*(a1 + 40) respondsToSelector_] & 1) == 0 || (v6 = objc_msgSend(v5, sel_thumbnailImageBackgroundColor)) == 0)
    {
LABEL_19:
      result = swift_allocObject();
      v8 = 29;
      goto LABEL_20;
    }

LABEL_18:
    v13 = v6;
    v14 = swift_allocObject();
    [v13 red];
    v16 = v15 * 255.0;
    [v13 green];
    v18 = v17 * 255.0;
    [v13 blue];
    v20 = v19 * 255.0;
    [v13 alpha];
    v22 = v21;

    result = v14;
    *(v14 + 16) = v16;
    *(v14 + 24) = v18;
    *(v14 + 32) = v20;
    *(v14 + 40) = v22;
    v23 = 0x6000000000000000;
    *(v14 + 48) = 0;
    goto LABEL_23;
  }

  if (v4)
  {
    if (([*(a1 + 40) respondsToSelector_] & 1) == 0)
    {
      goto LABEL_19;
    }

    v6 = [v5 thumbnailImagePrimaryColor];
    if (!v6)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v9 = [*(a1 + 40) storyStyle];
  v10 = swift_allocObject();
  if (v9)
  {
    sub_1D613C9EC(v9, &v28);
    v11 = v28;
    sub_1D613CB30(v9, &v27);

    v12 = v27;
    result = v10;
    *(v10 + 16) = v11;
  }

  else
  {
    v24 = swift_allocObject();
    *(v24 + 16) = vdupq_n_s64(0x404E000000000000uLL);
    *(v24 + 32) = 0x4050C00000000000;
    *(v24 + 40) = 0x3FE3333333333333;
    *(v24 + 48) = 0;
    v25 = v24 | 0x6000000000000000;
    v26 = swift_allocObject();
    *(v26 + 16) = vdupq_n_s64(0x4068600000000000uLL);
    *(v26 + 32) = 0x4067800000000000;
    *(v26 + 40) = 0x3FE3333333333333;
    *(v26 + 48) = 0;
    v12 = v26 | 0x6000000000000000;
    result = v10;
    *(v10 + 16) = v25;
  }

  *(v10 + 24) = v12;
  v23 = 0x3000000000000000;
LABEL_23:
  *a2 = v23 | result;
  return result;
}

void sub_1D613C9EC(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [a1 foreground_color];
  v4 = swift_allocObject();
  v5 = v4;
  if (v3)
  {
    [v3 red];
    v7 = v6 * 255.0;
    [v3 green];
    v9 = v8 * 255.0;
    [v3 blue];
    v11 = v10 * 255.0;
    [v3 alpha];
    v13 = v12;

    *v5[1].i64 = v7;
    *&v5[1].i64[1] = v9;
    *v5[2].i64 = v11;
    v5[2].i64[1] = v13;
    v5[3].i8[0] = 0;
  }

  else
  {
    v4[1] = vdupq_n_s64(0x404E000000000000uLL);
    v4[2].i64[0] = 0x4050C00000000000;
    v4[2].i64[1] = 0x3FE3333333333333;
    v4[3].i8[0] = 0;
    v14 = swift_allocObject();
    v14[1] = vdupq_n_s64(0x4068600000000000uLL);
    v14[2].i64[0] = 0x4067800000000000;
    v14[2].i64[1] = 0x3FE3333333333333;
    v14[3].i8[0] = 0;
  }

  *a2 = v5 | 0x6000000000000000;
}

void sub_1D613CB30(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [a1 dark_style_foreground_color];
  v4 = swift_allocObject();
  v5 = v4;
  if (v3)
  {
    [v3 red];
    v7 = v6 * 255.0;
    [v3 green];
    v9 = v8 * 255.0;
    [v3 blue];
    v11 = v10 * 255.0;
    [v3 alpha];
    v13 = v12;

    *v5[1].i64 = v7;
    *&v5[1].i64[1] = v9;
    *v5[2].i64 = v11;
    v5[2].i64[1] = v13;
    v5[3].i8[0] = 0;
  }

  else
  {
    v4[1] = vdupq_n_s64(0x404E000000000000uLL);
    v4[2].i64[0] = 0x4050C00000000000;
    v4[2].i64[1] = 0x3FE3333333333333;
    v4[3].i8[0] = 0;
    v14 = swift_allocObject();
    v14[1] = vdupq_n_s64(0x4068600000000000uLL);
    v14[2].i64[0] = 0x4067800000000000;
    v14[2].i64[1] = 0x3FE3333333333333;
    v14[3].i8[0] = 0;

    v5 = v14;
  }

  *a2 = v5 | 0x6000000000000000;
}

uint64_t sub_1D613CC88()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D613CD7C()
{
  sub_1D72621EC();
}

uint64_t sub_1D613CE5C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D613CF4C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000065;
  v4 = 0x70795479726F7473;
  v5 = 0x80000001D73B7240;
  v6 = 0xD000000000000018;
  v7 = 0x80000001D73B7260;
  v8 = 0xD000000000000014;
  if (v2 == 3)
  {
    v8 = 0xD000000000000012;
  }

  else
  {
    v7 = 0x80000001D73B7280;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0xD000000000000015;
    v3 = 0x80000001D73B7220;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t FormatHeadlineBinding.Color.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D613D0E8()
{
  result = qword_1EC884250;
  if (!qword_1EC884250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884250);
  }

  return result;
}

unint64_t sub_1D613D13C(uint64_t a1)
{
  result = sub_1D613D164();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D613D164()
{
  result = qword_1EC884258;
  if (!qword_1EC884258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884258);
  }

  return result;
}

unint64_t sub_1D613D1B8(void *a1)
{
  a1[1] = sub_1D5CDAA88();
  a1[2] = sub_1D613D1F0();
  result = sub_1D613D0E8();
  a1[3] = result;
  return result;
}

unint64_t sub_1D613D1F0()
{
  result = qword_1EDF0E1C0;
  if (!qword_1EDF0E1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E1C0);
  }

  return result;
}

unint64_t sub_1D613D280()
{
  result = qword_1EC884260;
  if (!qword_1EC884260)
  {
    sub_1D613D2D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884260);
  }

  return result;
}

void sub_1D613D2D8()
{
  if (!qword_1EC884268)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC884268);
    }
  }
}

unint64_t sub_1D613D32C()
{
  result = qword_1EC884270;
  if (!qword_1EC884270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884270);
  }

  return result;
}

uint64_t sub_1D613D380@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  if (v10 <= 1)
  {
    if (!*a1)
    {
      sub_1D5C0C74C(a2, v9);
      v32 = 0;
      sub_1D613C6BC(v9, &v33);
      v15 = v33;
      v12 = type metadata accessor for FormatInspectionItem(0);
      v16 = *(v12 + 24);
      *(a3 + v16) = v15;
      v17 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v17 - 8) + 56))(a3 + v16, 0, 1, v17);
      *a3 = xmmword_1D729EB30;
      goto LABEL_11;
    }

    v18 = 0x80000001D73BE350;
    sub_1D5C0C74C(a2, v9);
    v32 = 1;
    sub_1D613C6BC(v9, &v33);
    v26 = v33;
    v12 = type metadata accessor for FormatInspectionItem(0);
    v27 = *(v12 + 24);
    *(a3 + v27) = v26;
    v28 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v28 - 8) + 56))(a3 + v27, 0, 1, v28);
    v22 = 0xD000000000000011;
LABEL_10:
    *a3 = v22;
    *(a3 + 8) = v18;
    goto LABEL_11;
  }

  if (v10 == 2)
  {
    v18 = 0x80000001D73BE330;
    sub_1D5C0C74C(a2, v9);
    v32 = 2;
    sub_1D613C6BC(v9, &v33);
    v19 = v33;
    v12 = type metadata accessor for FormatInspectionItem(0);
    v20 = *(v12 + 24);
    *(a3 + v20) = v19;
    v21 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v21 - 8) + 56))(a3 + v20, 0, 1, v21);
    v22 = 0xD000000000000014;
    goto LABEL_10;
  }

  if (v10 != 3)
  {
    v18 = 0x80000001D73BE310;
    sub_1D5C0C74C(a2, v9);
    v32 = 4;
    sub_1D613C6BC(v9, &v33);
    v23 = v33;
    v12 = type metadata accessor for FormatInspectionItem(0);
    v24 = *(v12 + 24);
    *(a3 + v24) = v23;
    v25 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v25 - 8) + 56))(a3 + v24, 0, 1, v25);
    v22 = 0xD000000000000010;
    goto LABEL_10;
  }

  sub_1D5C0C74C(a2, v9);
  v32 = 3;
  sub_1D613C6BC(v9, &v33);
  v11 = v33;
  v12 = type metadata accessor for FormatInspectionItem(0);
  v13 = *(v12 + 24);
  *(a3 + v13) = v11;
  v14 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v14 - 8) + 56))(a3 + v13, 0, 1, v14);
  *a3 = xmmword_1D7278730;
LABEL_11:
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  v29 = a3 + *(v12 + 28);
  *v29 = 0;
  *(v29 + 8) = 0;
  *(v29 + 16) = -1;
  sub_1D5C10040(v9);
  type metadata accessor for FormatInspectionItem(0);
  return (*(*(v12 - 8) + 56))(a3, 0, 1, v12);
}

uint64_t sub_1D613D7F0(void *a1)
{
  v3 = v1;
  sub_1D5BE8F38(0, &qword_1EC884278, sub_1D5BD46E4, &type metadata for A6_V1.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5BD46E4();
  sub_1D7264B5C();
  v11 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v11;
  v14 = 0;
  type metadata accessor for CGRect(0);
  sub_1D5BD3A4C(&qword_1EC8801E8, type metadata accessor for CGRect);
  sub_1D726443C();
  if (!v2)
  {
    *&v13[0] = *(v3 + 32);
    v14 = 1;
    sub_1D5BEE168(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes, MEMORY[0x1E69E62F8]);
    sub_1D5BD484C(&qword_1EC8806A0, sub_1D5C0B904);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D613DA4C(uint64_t a1)
{
  v2 = sub_1D5BD46E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D613DA88(uint64_t a1)
{
  v2 = sub_1D5BD46E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D613DADC()
{
  sub_1D5C0B7A8();

  return sub_1D725A24C();
}

unint64_t sub_1D613DBC4()
{
  result = qword_1EC884280;
  if (!qword_1EC884280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884280);
  }

  return result;
}

void sub_1D613DC18(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  if (*(a3 + 16))
  {
    v6 = sub_1D6D62820(0);
    if (v7)
    {
      a1 = *(*(a3 + 56) + 16 * v6);
    }
  }

  v8 = a1;
  if (v4)
  {
    sub_1D6DFBB8C(v4);
  }

  sub_1D726343C();
}

uint64_t sub_1D613DCC8(void *a1)
{
  if (*a1 >> 62)
  {
    type metadata accessor for UnwrappedSportsTaxonomyGraphNodeWeakReference();
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    *(v1 + 16) = v3;
  }

  else
  {
    type metadata accessor for UnwrappedSportsTaxonomyGraphNodeWeakReference();
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    *(v1 + 16) = v2;
  }

  return v1;
}

uint64_t sub_1D613DD8C()
{

  return swift_deallocClassInstance();
}

size_t sub_1D613DE0C(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  sub_1D613EFE0();
  v13 = *(v12 - 8);
  v62 = v12;
  v63 = v13;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FormatTextLink.Link();
  v60 = *(v17 - 8);
  v61 = v17;
  *&v19 = MEMORY[0x1EEE9AC00](v17, v18).n128_u64[0];
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = MEMORY[0x1E69E7CC0];
  v22 = [a1 length];
  v23 = *MEMORY[0x1E69DB5F8];
  v24 = swift_allocObject();
  *(v24 + 16) = &v65;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1D613F054;
  *(v25 + 24) = v24;
  v57 = v24;
  aBlock[4] = sub_1D613F05C;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D613EB68;
  aBlock[3] = &block_descriptor_24;
  v26 = _Block_copy(aBlock);

  [a1 enumerateAttribute:v23 inRange:0 options:v22 usingBlock:{0, v26}];
  _Block_release(v26);
  LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

  if ((v22 & 1) == 0)
  {
    if (*(v65 + 16))
    {
      v28 = [objc_allocWithZone(MEMORY[0x1E69DB7C0]) init];
      v29 = [objc_allocWithZone(MEMORY[0x1E69DB800]) initWithSize_];
      v30 = [objc_allocWithZone(MEMORY[0x1E69DB850]) initWithAttributedString_];
      [v28 addTextContainer_];
      [v30 addLayoutManager_];
      [v29 setLineFragmentPadding_];
      [v29 setLineBreakMode_];
      [v29 setMaximumNumberOfLines_];
      [v29 setSize_];
      [v28 usedRectForTextContainer_];
      v67 = CGRectIntegral(v66);
      x = v67.origin.x;
      y = v67.origin.y;
      width = v67.size.width;
      height = v67.size.height;
      v67.origin.x = a2;
      v67.origin.y = a3;
      v67.size.width = a4;
      v67.size.height = a5;
      v35 = (CGRectGetWidth(v67) - width) * 0.5 - x;
      v68.origin.x = a2;
      v68.origin.y = a3;
      v68.size.width = a4;
      v68.size.height = a5;
      v36 = CGRectGetHeight(v68);
      *(v6 + 24) = v35;
      *(v6 + 32) = (v36 - height) * 0.5 - y;
      v56 = v6;
      v37 = v65;
      v38 = *(v65 + 16);
      if (v38)
      {
        v58 = v29;
        v54 = v30;
        v59 = v28;
        v55 = a1;
        aBlock[0] = MEMORY[0x1E69E7CC0];

        result = sub_1D6998BB8(0, v38, 0);
        v39 = 0;
        v40 = aBlock[0];
        v41 = v37 + ((*(v63 + 80) + 32) & ~*(v63 + 80));
        while (v39 < *(v37 + 16))
        {
          sub_1D613F0EC(v41 + *(v63 + 72) * v39, v16, sub_1D613EFE0);
          v42 = *v16;
          v43 = *(v16 + 1);
          v44 = *(v62 + 48);
          v45 = sub_1D72585BC();
          (*(*(v45 - 8) + 16))(v21, &v16[v44], v45);
          [v59 boundingRectForGlyphRange:v42 inTextContainer:{v43, v58}];
          v46 = &v21[*(v61 + 20)];
          *v46 = v47;
          *(v46 + 1) = v48;
          *(v46 + 2) = v49;
          *(v46 + 3) = v50;
          sub_1D613F154(v16, sub_1D613EFE0);
          aBlock[0] = v40;
          v52 = *(v40 + 16);
          v51 = *(v40 + 24);
          if (v52 >= v51 >> 1)
          {
            sub_1D6998BB8(v51 > 1, v52 + 1, 1);
            v40 = aBlock[0];
          }

          ++v39;
          *(v40 + 16) = v52 + 1;
          result = sub_1D613F084(v21, v40 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v52, type metadata accessor for FormatTextLink.Link);
          if (v38 == v39)
          {

            goto LABEL_12;
          }
        }

        __break(1u);
        goto LABEL_15;
      }

      v40 = MEMORY[0x1E69E7CC0];
LABEL_12:
      v53 = v56;
      *(v56 + 16) = v40;
    }

    else
    {

      swift_deallocPartialClassInstance();

      return 0;
    }

    return v53;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1D613E4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t *a5)
{
  v70 = a5;
  v67 = a2;
  v68 = a3;
  sub_1D613EFE0();
  v66 = v6;
  v69 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v65 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v64 - v11;
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v64 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v64 - v23;
  v25 = sub_1D72585BC();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v27);
  v64 = &v64 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v64 - v31;
  sub_1D613F0EC(a1, v72, sub_1D5BE1404);
  if (v73)
  {
    v33 = swift_dynamicCast();
    v34 = *(v26 + 56);
    v34(v24, v33 ^ 1u, 1, v25);
    if ((*(v26 + 48))(v24, 1, v25) != 1)
    {
      (*(v26 + 32))(v32, v24, v25);
      v35 = *(v66 + 48);
      v36 = v68;
      *v12 = v67;
      *(v12 + 1) = v36;
      (*(v26 + 16))(&v12[v35], v32, v25);
      v37 = v70;
      v38 = *v70;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v37 = v38;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v38 = sub_1D6992EF8(0, v38[2] + 1, 1, v38);
        *v37 = v38;
      }

      v41 = v38[2];
      v40 = v38[3];
      if (v41 >= v40 >> 1)
      {
        *v37 = sub_1D6992EF8(v40 > 1, v41 + 1, 1, v38);
      }

      (*(v26 + 8))(v32, v25);
      v42 = *v37;
      *(v42 + 16) = v41 + 1;
      v43 = v42 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v41;
      v44 = v12;
      return sub_1D613F084(v44, v43, sub_1D613EFE0);
    }
  }

  else
  {
    sub_1D613F154(v72, sub_1D5BE1404);
    v34 = *(v26 + 56);
    v34(v24, 1, 1, v25);
  }

  sub_1D613F154(v24, sub_1D5B4D3E0);
  sub_1D613F0EC(a1, v72, sub_1D5BE1404);
  if (v73)
  {
    type metadata accessor for FormatAttributedStringLink();
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      return result;
    }

    v46 = v71;
    v47 = [v71 contents];
    if (v47)
    {
      v48 = v47;
      v49 = sub_1D725867C();
      v51 = v50;

      v34(v16, 1, 1, v25);
      sub_1D725842C();
      sub_1D5B952F8(v49, v51);
      sub_1D613F154(v16, sub_1D5B4D3E0);
      if ((*(v26 + 48))(v20, 1, v25) != 1)
      {
        v54 = v64;
        (*(v26 + 32))(v64, v20, v25);
        v55 = v65;
        v56 = *(v66 + 48);
        v57 = v68;
        *v65 = v67;
        *(v55 + 1) = v57;
        (*(v26 + 16))(&v55[v56], v54, v25);
        v58 = v70;
        v59 = *v70;
        v60 = swift_isUniquelyReferenced_nonNull_native();
        *v58 = v59;
        if ((v60 & 1) == 0)
        {
          v59 = sub_1D6992EF8(0, v59[2] + 1, 1, v59);
          *v58 = v59;
        }

        v62 = v59[2];
        v61 = v59[3];
        if (v62 >= v61 >> 1)
        {
          *v58 = sub_1D6992EF8(v61 > 1, v62 + 1, 1, v59);
        }

        (*(v26 + 8))(v54, v25);
        v63 = *v58;
        *(v63 + 16) = v62 + 1;
        v43 = v63 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v62;
        v44 = v55;
        return sub_1D613F084(v44, v43, sub_1D613EFE0);
      }
    }

    else
    {

      v34(v20, 1, 1, v25);
    }

    v52 = sub_1D5B4D3E0;
    v53 = v20;
  }

  else
  {
    v52 = sub_1D5BE1404;
    v53 = v72;
  }

  return sub_1D613F154(v53, v52);
}

uint64_t sub_1D613EB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_1D5B7C390(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return sub_1D613F154(v13, sub_1D5BE1404);
}

void sub_1D613EC18(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v7 = type metadata accessor for FormatTextLink.Link();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + 16);
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = 0;
    v15 = a3 - *(v3 + 32);
    v16 = a2 - *(v3 + 24);
    while (v14 < *(v12 + 16))
    {
      sub_1D613F0EC(v12 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v14, v11, type metadata accessor for FormatTextLink.Link);
      v21.x = v16;
      v21.y = v15;
      if (CGRectContainsPoint(*&v11[*(v7 + 20)], v21))
      {
        v18 = sub_1D72585BC();
        v19 = *(v18 - 8);
        (*(v19 + 32))(a1, v11, v18);
        (*(v19 + 56))(a1, 0, 1, v18);
        return;
      }

      ++v14;
      sub_1D613F154(v11, type metadata accessor for FormatTextLink.Link);
      if (v13 == v14)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    v17 = sub_1D72585BC();
    (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t FormatTextLink.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FormatTextLink.Link()
{
  result = qword_1EDF32320;
  if (!qword_1EDF32320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D613EF5C()
{
  sub_1D72585BC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGRect(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D613EFE0()
{
  if (!qword_1EDF1A620)
  {
    type metadata accessor for _NSRange(255);
    sub_1D72585BC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF1A620);
    }
  }
}

uint64_t sub_1D613F084(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D613F0EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D613F154(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D613F1C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 195);
  v3 = *(a1 + 196);
  v4 = *(a2 + 195);
  v5 = *(a2 + 196);
  v6 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v6 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_11;
  }

  v7 = sub_1D6E23ADC(v2);
  v9 = v8;
  if (v7 == sub_1D6E23ADC(v4) && v9 == v10)
  {
  }

  else
  {
    v12 = sub_1D72646CC();

    if ((v12 & 1) == 0)
    {
LABEL_11:
      v13 = 0;
      return v13 & 1;
    }
  }

  if (v3)
  {
    v14 = 0x70616373646E616CLL;
  }

  else
  {
    v14 = 0x7469617274726F70;
  }

  if (v3)
  {
    v15 = 0xE900000000000065;
  }

  else
  {
    v15 = 0xE800000000000000;
  }

  if (v5)
  {
    v16 = 0x70616373646E616CLL;
  }

  else
  {
    v16 = 0x7469617274726F70;
  }

  if (v5)
  {
    v17 = 0xE900000000000065;
  }

  else
  {
    v17 = 0xE800000000000000;
  }

  if (v14 == v16 && v15 == v17)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1D72646CC();
  }

  return v13 & 1;
}

NewsFeed::ManageChannelNotificationsCommandState_optional __swiftcall ManageChannelNotificationsCommandState.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_1D72641CC();

  if (v1 == 1)
  {
    v2.value = NewsFeed_ManageChannelNotificationsCommandState_showManageNotifications;
  }

  else
  {
    v2.value = NewsFeed_ManageChannelNotificationsCommandState_unknownDefault;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

unint64_t ManageChannelNotificationsCommandState.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_1D613F3B0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000017;
  }

  else
  {
    v3 = 0xD000000000000013;
  }

  if (v2)
  {
    v4 = "";
  }

  else
  {
    v4 = "turnOnNotifications";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000017;
  }

  else
  {
    v6 = 0xD000000000000013;
  }

  if (*a2)
  {
    v7 = "turnOnNotifications";
  }

  else
  {
    v7 = "";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1D72646CC();
  }

  return v9 & 1;
}

uint64_t sub_1D613F45C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D613F4DC()
{
  sub_1D72621EC();
}

uint64_t sub_1D613F548()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D613F5C4@<X0>(char *a1@<X8>)
{
  v2 = sub_1D72641CC();

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

void sub_1D613F624(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000017;
  }

  else
  {
    v2 = 0xD000000000000013;
  }

  if (*v1)
  {
    v3 = "turnOnNotifications";
  }

  else
  {
    v3 = "";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t sub_1D613F664(uint64_t a1)
{
  v2 = sub_1D6140440();

  return MEMORY[0x1EEE48380](a1, v2);
}

NewsFeed::ManageNotificationsContext::TaglessNotification_optional __swiftcall ManageNotificationsContext.TaglessNotification.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ManageNotificationsContext.TaglessNotification.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x73656C7A7A7570;
  v3 = 0x647541664F646E65;
  v4 = 0x7474656C7377656ELL;
  if (v1 != 4)
  {
    v4 = 0x7374726F7073;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x657573734977656ELL;
  if (v1 != 1)
  {
    v5 = 0x6E6974656B72616DLL;
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

uint64_t sub_1D613F7F4()
{
  sub_1D72621EC();
}

void sub_1D613F910(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x73656C7A7A7570;
  v5 = 0xEF6B636172546F69;
  v6 = 0x647541664F646E65;
  v7 = 0xEA00000000007265;
  v8 = 0x7474656C7377656ELL;
  if (v2 != 4)
  {
    v8 = 0x7374726F7073;
    v7 = 0xE600000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE900000000000073;
  v10 = 0x657573734977656ELL;
  if (v2 != 1)
  {
    v10 = 0x6E6974656B72616DLL;
    v9 = 0xE900000000000067;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t ManageNotificationsContext.identifier.getter()
{
  if (*(v0 + 16))
  {
    v1 = *v0;
    v2 = 0x73656C7A7A7570;
    v3 = 0x647541664F646E65;
    v4 = 0x7474656C7377656ELL;
    if (v1 != 4)
    {
      v4 = 0x7374726F7073;
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    v5 = 0x657573734977656ELL;
    if (v1 != 1)
    {
      v5 = 0x6E6974656B72616DLL;
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

  else
  {
    MEMORY[0x1DA6F9910](*v0, *(v0 + 8));
    return 979853684;
  }
}

uint64_t static ContextMenuItem.manageChannelNotifications(context:)(uint64_t a1)
{
  sub_1D613FD88(0, &unk_1EDF3B550, MEMORY[0x1E69D7C80]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  sub_1D613FD88(0, &unk_1EDF3B630, MEMORY[0x1E69D7AE0]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  sub_1D613FD88(0, &unk_1EDF3B610, MEMORY[0x1E69D7AE8]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  if (!a1)
  {
    return 0;
  }

  v8 = qword_1EDF169F8;
  swift_unknownObjectRetain();
  if (v8 != -1)
  {
    swift_once();
  }

  sub_1D5B8D68C();
  swift_unknownObjectRetain();

  sub_1D725DADC();
  sub_1D725DABC();
  sub_1D725DF0C();
  swift_allocObject();
  v9 = sub_1D725D3BC();
  swift_unknownObjectRelease();
  return v9;
}

void sub_1D613FD88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5B8D68C();
    v7 = a3(a1, &type metadata for ManageChannelNotificationsCommandState, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D613FDEC()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D725811C();

  return v2;
}

uint64_t static SharingActivity.manageChannelNotifications(context:)(uint64_t a1)
{
  sub_1D6140124();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  sub_1D6140190();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  if (!a1)
  {
    return 0;
  }

  v6 = qword_1EDF169F8;
  swift_unknownObjectRetain();
  if (v6 != -1)
  {
    swift_once();
  }

  swift_unknownObjectRetain();

  sub_1D726203C();
  sub_1D5B8D68C();
  sub_1D725DAFC();
  sub_1D725DFEC();
  sub_1D725DAFC();
  swift_allocObject();
  v7 = sub_1D725D5BC();
  swift_unknownObjectRelease();
  return v7;
}

void sub_1D6140124()
{
  if (!qword_1EDF17150)
  {
    sub_1D725DFEC();
    sub_1D5B8D68C();
    v0 = sub_1D725DB1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF17150);
    }
  }
}

void sub_1D6140190()
{
  if (!qword_1EDF17140)
  {
    sub_1D5B8D68C();
    v0 = sub_1D725DB1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF17140);
    }
  }
}

void sub_1D61401F4(uint64_t *a1@<X8>)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_1D725811C();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

uint64_t sub_1D61402F4()
{
  sub_1D725F71C();
  sub_1D725F6EC();

  return sub_1D725DFDC();
}

unint64_t sub_1D6140354()
{
  result = qword_1EC884288;
  if (!qword_1EC884288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884288);
  }

  return result;
}

unint64_t sub_1D61403B0()
{
  result = qword_1EC884290;
  if (!qword_1EC884290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884290);
  }

  return result;
}

unint64_t sub_1D6140440()
{
  result = qword_1EC884298;
  if (!qword_1EC884298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884298);
  }

  return result;
}

void sub_1D6140494(char a1)
{
  if ((a1 & 1) == 0)
  {
    sub_1D7262EBC();
    sub_1D5B67930(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1D7279970;
    v2 = sub_1D725F7AC();
    v4 = v3;
    v5 = MEMORY[0x1E69E6158];
    *(v1 + 56) = MEMORY[0x1E69E6158];
    v6 = sub_1D5B7E2C0();
    *(v1 + 64) = v6;
    *(v1 + 32) = v2;
    *(v1 + 40) = v4;
    sub_1D72585BC();
    sub_1D614088C();
    v7 = sub_1D72644BC();
    *(v1 + 96) = v5;
    *(v1 + 104) = v6;
    *(v1 + 72) = v7;
    *(v1 + 80) = v8;
    sub_1D5B67930(0, &qword_1EC8842A0, MEMORY[0x1E69D7E38], MEMORY[0x1E69E6720]);

    v9 = sub_1D72620FC();
    *(v1 + 136) = v5;
    *(v1 + 144) = v6;
    *(v1 + 112) = v9;
    *(v1 + 120) = v10;
    sub_1D5B5F6D0();
    v11 = sub_1D72638FC();
    sub_1D725C30C();
  }
}

uint64_t sub_1D6140634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a5;
  v8 = sub_1D72585BC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v12 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v5;
  v14 = *(*v5 + 40);
  v19[2] = *(*v5 + 48);
  v19[1] = __swift_project_boxed_opaque_existential_1((v13 + 16), v14);
  sub_1D605D330(MEMORY[0x1E69E7CC0]);
  (*(v9 + 16))(v12, a4, v8);
  v15 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v16 = (v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  (*(v9 + 32))(v17 + v15, v12, v8);
  *(v17 + v16) = v20;

  sub_1D725D82C();
}

void sub_1D61407EC(char a1)
{
  sub_1D72585BC();

  sub_1D6140494(a1);
}

unint64_t sub_1D614088C()
{
  result = qword_1EDF18AC0;
  if (!qword_1EDF18AC0)
  {
    sub_1D72585BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF18AC0);
  }

  return result;
}

uint64_t sub_1D61408F4(void *a1)
{
  v3 = v1;
  sub_1D6145614(0, &qword_1EC884358, sub_1D61455C0, &type metadata for A12_V2.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D61455C0();
  sub_1D7264B5C();
  v11 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v11;
  v14 = 0;
  type metadata accessor for CGRect(0);
  sub_1D614567C(&qword_1EC8801E8, type metadata accessor for CGRect);
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

uint64_t sub_1D6140B3C(uint64_t a1)
{
  v2 = sub_1D61455C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6140B78(uint64_t a1)
{
  v2 = sub_1D61455C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D6140BB4@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D6145320(a1, v6);
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

uint64_t sub_1D6140C14()
{
  sub_1D6144FB4();

  return sub_1D725A24C();
}

uint64_t sub_1D6140C90@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4();
  swift_allocObject();
  v2 = sub_1D725996C();
  sub_1D6145614(0, &qword_1EDF3BFE8, sub_1D5BE14C0, &type metadata for HeadlineViewLayout.Attributes, MEMORY[0x1E69D7198]);
  swift_allocObject();
  result = sub_1D7259F9C();
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_1D6140D4C@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v113 = a2;
  v117 = a1;
  v102 = a3;
  v6 = type metadata accessor for FeedHeadline(0);
  v114 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v118 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v112 = &v101 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v130 = &v101 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v115 = &v101 - v17;
  v18 = sub_1D725895C();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for GroupLayoutContext();
  v109 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110, v23);
  v111 = &v101 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v101 - v27;
  v107 = &v101 - v27;
  v116 = type metadata accessor for GroupLayoutBindingContext();
  v29 = *(v116 - 1);
  MEMORY[0x1EEE9AC00](v116, v30);
  v32 = &v101 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *v5;
  v106 = *v5;
  v34 = *(v5 + 1);
  LOBYTE(v5) = v5[16];
  sub_1D5BE3ED8(v117, v32, type metadata accessor for GroupLayoutBindingContext);
  v108 = type metadata accessor for GroupLayoutContext;
  sub_1D5BE3ED8(v113, v28, type metadata accessor for GroupLayoutContext);
  sub_1D725894C();
  v105 = sub_1D725893C();
  v104 = v35;
  (*(v19 + 8))(v22, v18);
  v128 = &type metadata for A12_V2;
  v36 = sub_1D5ECE820();
  v129 = v36;
  LOBYTE(v126) = v33;
  *(&v126 + 1) = v34;
  v127 = v5;
  type metadata accessor for GroupLayoutKey();
  v37 = swift_allocObject();
  v38 = v34;
  sub_1D5BEE8A0(v34, v5);
  v119[0] = sub_1D7264C5C();
  v119[1] = v39;
  v124 = 95;
  v125 = 0xE100000000000000;
  v122 = 45;
  v123 = 0xE100000000000000;
  sub_1D5BF4D9C();
  v40 = sub_1D7263A6C();
  v42 = v41;
  v43 = v111;

  *(v37 + 16) = v40;
  *(v37 + 24) = v42;
  v44 = (v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
  v45 = v104;
  *v44 = v105;
  v44[1] = v45;
  sub_1D5B68374(&v126, v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory);
  v46 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
  sub_1D5BDA904(v32, v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, type metadata accessor for GroupLayoutBindingContext);
  (*(v29 + 56))(v37 + v46, 0, 1, v116);
  v47 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
  sub_1D5BDA904(v107, v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, type metadata accessor for GroupLayoutContext);
  v48 = *(v109 + 56);
  v109 = v37;
  v48(v37 + v47, 0, 1, v110);
  __swift_destroy_boxed_opaque_existential_1(&v126);
  v128 = &type metadata for A12_V2;
  v129 = v36;
  LOBYTE(v126) = v106;
  v49 = v38;
  *(&v126 + 1) = v38;
  v127 = v5;
  sub_1D5BE3ED8(v113, v43, v108);
  sub_1D5BD3920(0, qword_1EDF39B38, type metadata accessor for FeedHeadline, type metadata accessor for FeedItemSorter);
  v51 = v50;
  inited = swift_initStackObject();
  v53 = MEMORY[0x1E69E7CC0];
  v113 = inited;
  *(inited + 16) = MEMORY[0x1E69E7CC0];
  v54 = inited + 16;
  swift_beginAccess();
  sub_1D5BEE8A0(v49, v5);
  v55 = sub_1D5C0F8FC(0, 1, 1, v53);
  v57 = *(v55 + 16);
  v56 = *(v55 + 24);
  v58 = (v57 + 1);
  if (v57 >= v56 >> 1)
  {
    goto LABEL_66;
  }

  while (1)
  {
    *(v55 + 16) = v58;
    v59 = v55 + 16 * v57;
    *(v59 + 32) = sub_1D63106DC;
    *(v59 + 40) = 0;
    *v54 = v55;
    swift_endAccess();
    v57 = v116[14];
    v60 = *&v117[v57];
    if (v60[2] && (v61 = sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0), (v62 & 1) != 0) && (v60 = *&v60[7][8 * v61], v63 = , v58 = sub_1D5C14D80(v63), , v58))
    {
      v108 = v57;
      v110 = v51;
      v51 = *(v58 + 2);
      if (v51)
      {
        v43 = 0;
        v57 = MEMORY[0x1E69E7CC0];
        v54 = v114;
        v55 = v115;
        while (1)
        {
          v56 = *(v58 + 2);
          if (v43 >= v56)
          {
            break;
          }

          v36 = (*(v54 + 80) + 32) & ~*(v54 + 80);
          v53 = *(v54 + 72);
          sub_1D5BE3ED8(&v58[v36 + v53 * v43], v55, type metadata accessor for FeedHeadline);
          if ((*(v55 + 32) & 4) != 0)
          {
            sub_1D5BDA904(v55, v130, type metadata accessor for FeedHeadline);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v119[0] = v57;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1D5C0F91C(0, *(v57 + 16) + 1, 1);
              v54 = v114;
              v57 = v119[0];
            }

            v37 = *(v57 + 16);
            v65 = *(v57 + 24);
            if (v37 >= v65 >> 1)
            {
              sub_1D5C0F91C(v65 > 1, v37 + 1, 1);
              v54 = v114;
              v57 = v119[0];
            }

            *(v57 + 16) = v37 + 1;
            sub_1D5BDA904(v130, v57 + v36 + v37 * v53, type metadata accessor for FeedHeadline);
            v55 = v115;
          }

          else
          {
            sub_1D5BE780C(v55, type metadata accessor for FeedHeadline);
          }

          if (v51 == ++v43)
          {
            goto LABEL_22;
          }
        }

        __break(1u);
        goto LABEL_65;
      }

      v57 = MEMORY[0x1E69E7CC0];
LABEL_22:
      if ((*v117 & 1) == 0)
      {

        v69 = sub_1D62F071C(v57);

        v57 = v69;
      }

      v43 = v111;
      v53 = MEMORY[0x1E69E7CC0];
      v51 = v110;
      v70 = *&v117[v116[18]];
      v71 = *&v117[v116[19]];
      if (__OFSUB__(v70, v71))
      {
        goto LABEL_70;
      }

      v72 = sub_1D5C0FAD4(v57, v70 - v71);
      v36 = sub_1D5C11E10(&unk_1F5111D80, v72, v58);

      if (v36)
      {
      }

      else
      {
        v36 = sub_1D5C11E10(&unk_1F5111D80, v57, v58);

        if (!v36)
        {
          v119[0] = &unk_1F5111D80;
          v4 = v103;
          sub_1D5E239F4(v119);
          if (v4)
          {
            goto LABEL_74;
          }

          if (!*(v119[0] + 2))
          {
            goto LABEL_72;
          }

          v97 = *(v119[0] + 4);

          sub_1D5ED8048();
          swift_allocError();
          strcpy(v98, "FeedHeadline");
          v98[13] = 0;
          *(v98 + 7) = -5120;
          *(v98 + 2) = 0;
          *(v98 + 3) = 0;
          *(v98 + 4) = 4;
          *(v98 + 5) = v97;
          *(v98 + 6) = 0;
          *(v98 + 7) = 0;
          v98[64] = 0;
          swift_willThrow();
          goto LABEL_63;
        }
      }

      strcpy(v119, "FeedHeadline");
      BYTE5(v119[1]) = 0;
      HIWORD(v119[1]) = -5120;
      v120 = 0;
      v121 = 0;

      v74 = sub_1D5C107C4(v73);

      sub_1D5BDACA8(v119, v74);
      swift_setDeallocating();

      v57 = v108;
    }

    else
    {
      if (qword_1F5111DA0)
      {
        v119[0] = &unk_1F5111D80;
        v4 = v103;
        sub_1D5E239F4(v119);
        if (v4)
        {
          goto LABEL_74;
        }

        v66 = *(v119[0] + 2);
        if (v66)
        {
          v67 = *(v119[0] + 4);

          sub_1D5ED8048();
          swift_allocError();
          strcpy(v68, "FeedHeadline");
          v68[13] = 0;
          *(v68 + 7) = -5120;
          *(v68 + 2) = 0;
          *(v68 + 3) = 0;
          *(v68 + 4) = 4;
          *(v68 + 5) = v67;
          *(v68 + 6) = 0;
          *(v68 + 7) = 0;
          v68[64] = 0;
          swift_willThrow();
LABEL_46:

          sub_1D5BE780C(v43, type metadata accessor for GroupLayoutContext);
          return __swift_destroy_boxed_opaque_existential_1(&v126);
        }

        __break(1u);
LABEL_68:
        v58 = sub_1D5C0F8FC((v66 > 1), v37, 1, v58);
        goto LABEL_30;
      }

      v36 = MEMORY[0x1E69E7CC0];
    }

    v75 = swift_initStackObject();
    v130 = v75;
    *(v75 + 16) = v53;
    v60 = (v75 + 16);
    swift_beginAccess();
    v58 = sub_1D5C0F8FC(0, 1, 1, v53);
    v55 = *(v58 + 2);
    v66 = *(v58 + 3);
    v37 = v55 + 1;
    if (v55 >= v66 >> 1)
    {
      goto LABEL_68;
    }

LABEL_30:
    *(v58 + 2) = v37;
    v76 = &v58[16 * v55];
    *(v76 + 4) = sub_1D63106DC;
    *(v76 + 5) = 0;
    *v60 = v58;
    swift_endAccess();
    if (!*(*&v117[v57] + 16))
    {
      break;
    }

    sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0);
    if ((v77 & 1) == 0)
    {
      break;
    }

    v37 = sub_1D5C14D80(v78);

    if (!v37)
    {
      break;
    }

    v115 = v36;
    v43 = *(v37 + 16);
    if (!v43)
    {
      v58 = MEMORY[0x1E69E7CC0];
LABEL_49:
      v86 = v117;
      if ((*v117 & 1) == 0)
      {

        v87 = sub_1D62F071C(v58);

        v58 = v87;
      }

      v88 = *&v86[v116[18]];
      v89 = *&v86[v116[19]];
      if (__OFSUB__(v88, v89))
      {
        goto LABEL_71;
      }

      v90 = sub_1D5C0FAD4(v58, v88 - v89);
      v85 = sub_1D5C11E10(&unk_1F5111DA8, v90, v37);

      if (v85)
      {

LABEL_55:
        strcpy(v119, "FeedHeadline");
        BYTE5(v119[1]) = 0;
        HIWORD(v119[1]) = -5120;
        v120 = 0;
        v121 = 0;

        v92 = sub_1D5C107C4(v91);

        sub_1D5BDACA8(v119, v92);
        swift_setDeallocating();

        v43 = v111;
        v36 = v115;
        goto LABEL_56;
      }

      v85 = sub_1D5C11E10(&unk_1F5111DA8, v58, v37);

      if (v85)
      {
        goto LABEL_55;
      }

      v119[0] = &unk_1F5111DA8;
      v4 = v103;
      sub_1D5E239F4(v119);
      if (v4)
      {
        goto LABEL_74;
      }

      v43 = v111;
      if (!*(v119[0] + 2))
      {
        goto LABEL_73;
      }

      v99 = *(v119[0] + 4);

      sub_1D5ED8048();
      swift_allocError();
      strcpy(v100, "FeedHeadline");
      v100[13] = 0;
      *(v100 + 7) = -5120;
      *(v100 + 2) = 0;
      *(v100 + 3) = 0;
      *(v100 + 4) = 0;
      *(v100 + 5) = v99;
      *(v100 + 6) = 0;
      *(v100 + 7) = 0;
      v100[64] = 0;
      swift_willThrow();
LABEL_63:
      swift_setDeallocating();
      goto LABEL_46;
    }

    v36 = 0;
    v58 = MEMORY[0x1E69E7CC0];
    v54 = v114;
    while (1)
    {
      v56 = *(v37 + 16);
      if (v36 >= v56)
      {
        break;
      }

      v53 = (*(v54 + 80) + 32) & ~*(v54 + 80);
      v51 = *(v54 + 72);
      v79 = v112;
      sub_1D5BE3ED8(v37 + v53 + v51 * v36, v112, type metadata accessor for FeedHeadline);
      sub_1D5BDA904(v79, v118, type metadata accessor for FeedHeadline);
      v80 = swift_isUniquelyReferenced_nonNull_native();
      v119[0] = v58;
      if ((v80 & 1) == 0)
      {
        sub_1D5C0F91C(0, *(v58 + 2) + 1, 1);
        v54 = v114;
        v58 = v119[0];
      }

      v55 = *(v58 + 2);
      v81 = *(v58 + 3);
      v57 = v55 + 1;
      if (v55 >= v81 >> 1)
      {
        sub_1D5C0F91C(v81 > 1, v55 + 1, 1);
        v54 = v114;
        v58 = v119[0];
      }

      ++v36;
      *(v58 + 2) = v57;
      sub_1D5BDA904(v118, &v58[v53 + v55 * v51], type metadata accessor for FeedHeadline);
      if (v43 == v36)
      {
        goto LABEL_49;
      }
    }

LABEL_65:
    __break(1u);
LABEL_66:
    v55 = sub_1D5C0F8FC((v56 > 1), v58, 1, v55);
  }

  if (!qword_1F5111DC8)
  {

    v85 = MEMORY[0x1E69E7CC0];
LABEL_56:
    v119[0] = v36;
    sub_1D5C122E4(v85);
    v93 = v119[0];
    v94 = type metadata accessor for A12_V2.Bound();
    v95 = v102;
    v102[3] = v94;
    v95[4] = sub_1D614567C(&qword_1EC8842B8, type metadata accessor for A12_V2.Bound);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v95);
    *boxed_opaque_existential_1 = v109;
    sub_1D5B63F14(&v126, (boxed_opaque_existential_1 + 1));
    result = sub_1D5BDA904(v43, boxed_opaque_existential_1 + *(v94 + 24), type metadata accessor for GroupLayoutContext);
    *(boxed_opaque_existential_1 + *(v94 + 28)) = v93;
    return result;
  }

  v119[0] = &unk_1F5111DA8;
  v4 = v103;
  sub_1D5E239F4(v119);
  if (!v4)
  {

    if (*(v119[0] + 2))
    {
      v82 = *(v119[0] + 4);

      sub_1D5ED8048();
      swift_allocError();
      strcpy(v83, "FeedHeadline");
      v83[13] = 0;
      *(v83 + 7) = -5120;
      *(v83 + 2) = 0;
      *(v83 + 3) = 0;
      *(v83 + 4) = 0;
      *(v83 + 5) = v82;
      *(v83 + 6) = 0;
      *(v83 + 7) = 0;
      v83[64] = 0;
      swift_willThrow();
      goto LABEL_46;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
  }

LABEL_74:

  __break(1u);
  return result;
}