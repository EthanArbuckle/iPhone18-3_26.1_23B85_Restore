uint64_t sub_1B9F99D40()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F99D78()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F99DB8()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F99DF0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F99E28()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B9F99E68()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B9F99EA8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F99EE0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B9F99F34()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F99F70()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F99FA8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1B9F99FF8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 64);
  return result;
}

uint64_t sub_1B9F9A040(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 64) = v2;
  return result;
}

uint64_t sub_1B9F9A084@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC18HealthExperienceUI10HeaderItem_baseIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1B9F9A0E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = qword_1EBC096C0;
  swift_beginAccess();
  return sub_1B9F0A534(v3 + v4, a2);
}

uint64_t sub_1B9F9A158()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F9A190()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F9A1E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F9A220()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B9F9A270()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B9F9A2B0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F9A2E8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F9A340()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F9A398()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F9A3F4()
{

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B9F9A444()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B9F9A498@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1B9F0A534(v3 + 88, a2);
}

uint64_t sub_1B9F9A4E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 128);
  return result;
}

uint64_t sub_1B9F9A530(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 128) = v2;
  return result;
}

uint64_t sub_1B9F9A574@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_1EBBEE730;
  *a1 = qword_1EBBEE728;
  a1[1] = v2;
}

uint64_t sub_1B9F9A5C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1B9F9A618(uint64_t a1@<X8>)
{
  *a1 = PDFBuilder.Document.drawingContext.getter();
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

__n128 sub_1B9F9A648(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  result = *a1;
  v4 = *(a1 + 16);
  *(v2 + 168) = *a1;
  *(v2 + 184) = v4;
  *(v2 + 200) = 0;
  return result;
}

uint64_t sub_1B9F9A660()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B9F9A6A0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_analyticsDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1B9F9A6FC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_analyticsDelegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1B9F9A760()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F9A7A0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F9A7EC()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void sub_1B9F9A840(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1BA4A6758();
  [v2 setUniqueIdentifier_];
}

uint64_t sub_1B9F9A8A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI27DataTypeNoDataAvailableCell_item;
  swift_beginAccess();
  return sub_1B9F374E8(v3 + v4, a2, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
}

uint64_t sub_1B9F9A91C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC18HealthExperienceUI27DataTypeNoDataAvailableCell_baseIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1B9F9A978()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B9F9A9B8()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1B9F9A9F8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B9F9AA64()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F9AAA0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_columns;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1B9F9AB20()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F9AB68()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F9ABA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BA4A15D8();
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
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1B9F9AC6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BA4A15D8();
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
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B9F9AD30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI21TextTableViewItemCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v3 + v4, a2);
}

uint64_t sub_1B9F9ADA0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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
    v9 = type metadata accessor for DataLoggingPluginViewModel();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 36);

    return v10(v11, a2, v9);
  }
}

void *sub_1B9F9AE58(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = type metadata accessor for DataLoggingPluginViewModel();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B9F9AEFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DataLoggingPluginViewModel();
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

uint64_t sub_1B9F9AFB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DataLoggingPluginViewModel();
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

uint64_t sub_1B9F9B0D0()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F9B108@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController_context;
  swift_beginAccess();
  return sub_1BA04B338(v3 + v4, a2);
}

uint64_t sub_1B9F9B168@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xA8))();
  *a2 = result;
  return result;
}

uint64_t sub_1B9F9B1C4(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xB0);
  v4 = *a1;
  return v3(v2);
}

id sub_1B9F9B22C@<X0>(void *a1@<X8>)
{
  result = sub_1BA233378();
  *a1 = result;
  return result;
}

void sub_1B9F9B258(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___headerImageView);
  *(*a2 + OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___headerImageView) = *a1;
  v3 = v2;
}

id sub_1B9F9B2A8@<X0>(void *a1@<X8>)
{
  result = sub_1BA2334DC();
  *a1 = result;
  return result;
}

void sub_1B9F9B2D4(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___headerTitle);
  *(*a2 + OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___headerTitle) = *a1;
  v3 = v2;
}

uint64_t sub_1B9F9B324()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F9B360()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B9F9B3A0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B9F9B3E0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B9F9B41C()
{
  sub_1B9F892AC(255, &qword_1EDC5F1D0, MEMORY[0x1E697CBE8]);
  sub_1BA23D8A8(255, &qword_1EBBEEDA0, &qword_1EBBEEDA8, &type metadata for ClearButtonView, MEMORY[0x1E69E6720]);
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  sub_1BA4A6428();
  swift_getWitnessTable();
  sub_1BA4A6218();
  sub_1BA4A58F8();
  swift_getTupleTypeMetadata3();
  sub_1BA4A6428();
  swift_getWitnessTable();
  sub_1BA4A6218();
  swift_getTupleTypeMetadata3();
  sub_1BA4A6428();
  swift_getWitnessTable();
  sub_1BA4A6218();
  swift_getTupleTypeMetadata2();
  sub_1BA4A6428();
  swift_getWitnessTable();
  sub_1BA4A5268();
  sub_1BA4A58F8();
  swift_getTupleTypeMetadata2();
  sub_1BA4A6428();
  swift_getWitnessTable();
  sub_1BA4A6268();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for AXLayoutView();
  sub_1BA4A5418();
  sub_1BA239CE0();
  sub_1BA4A5418();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1BA23E13C(&qword_1EBBEEDB8, sub_1BA239CE0);
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1B9F9B7DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BA23CB10(0, &qword_1EDC6B6D0, MEMORY[0x1E697DCC0]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 52));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_1B9F9B8B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1BA23CB10(0, &qword_1EDC6B6D0, MEMORY[0x1E697DCC0]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 52)) = (a2 - 1);
  }
}

uint64_t sub_1B9F9B98C(uint64_t a1)
{
  sub_1BA23DAFC(0, &qword_1EBBEEF00, sub_1BA23DB58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B9F9BA88()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F9BAC0()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F9BAF8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F9BB30()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_1B9F9BB90(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1BA4A16B8();
  [v2 setDateSubmitted_];
}

uint64_t sub_1B9F9BBEC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F9BC24()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B9F9BC7C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_model);
  v4 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_mostRecentDetails;
  swift_beginAccess();
  return sub_1BA24EBC0(v3 + v4, a2, &qword_1EBBEA480, type metadata accessor for ConfirmDetailsProvider.Details);
}

uint64_t sub_1B9F9BD08@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_model);
  v4 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_multiselectValues;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1B9F9BD78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_selectedIndexPath;
  swift_beginAccess();
  return sub_1BA24EBC0(v3 + v4, a2, &qword_1EDC6AE28, MEMORY[0x1E6969C28]);
}

uint64_t sub_1B9F9BDF4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1B9F9BE50(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1B9F9BEB4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F9BEEC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F9BF24@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI24ProfileGradientsProvider_colors;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1B9F9BF84(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1B9F7B6A0();
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_1B9F9C030(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1B9F7B6A0();
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1B9F9C0DC@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_1EBBEF238;
  *a1 = qword_1EBBEF230;
  a1[1] = v2;
}

uint64_t sub_1B9F9C130@<X0>(uint64_t *a1@<X8>)
{
  result = UIMutableTraits.baseAutomationIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

__n128 sub_1B9F9C1C8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1B9F9C22C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_1BA252C6C(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1B9F9C30C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1BA252C6C(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 40);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1B9F9C3E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BA4A1C68();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 44));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1B9F9C4A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BA4A1C68();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 40);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 44)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B9F9C560()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B9F9C598()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F9C5D0()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F9C608()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B9F9C648@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI22ProfileAvatarImageCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v3 + v4, a2);
}

uint64_t sub_1B9F9C6A8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F9C6E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F9C718(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_1B9F3D6D0(0, &qword_1EDC6E440, MEMORY[0x1E6969530]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1B9F9C7E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1B9F3D6D0(0, &qword_1EDC6E440, MEMORY[0x1E6969530]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 28);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1B9F9C8A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B9F9C8E8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B9F9C92C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1B9F9C974(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_1B9F9C9C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_supratitleString;
  swift_beginAccess();
  return sub_1B9F5CCC4(v3 + v4, a2, sub_1B9F51474);
}

uint64_t sub_1B9F9CA8C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F9CACC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F9CB04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = qword_1EDC84C78;
  swift_beginAccess();
  return sub_1B9F12358(v3 + v4, a2, type metadata accessor for SearchDataSource.State);
}

uint64_t sub_1B9F9CB78(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for DirectSearchResult(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1B9F9CC24(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for DirectSearchResult(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B9F9CCC8()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1B9F9CD00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BA4A3428();
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

    return (v10 + 1);
  }
}

uint64_t sub_1B9F9CDC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BA4A3428();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B9F9CE80()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F9CEC0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F9CEF8()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 72);

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1B9F9CF5C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B9F9CF9C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B9F9CFEC()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_1B9F9D0E8@<X0>(void *a1@<X8>)
{
  result = sub_1BA27A7D4();
  *a1 = result;
  return result;
}

void sub_1B9F9D114(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell____lazy_storage___textLabel);
  *(*a2 + OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell____lazy_storage___textLabel) = *a1;
  v3 = v2;
}

id sub_1B9F9D164@<X0>(void *a1@<X8>)
{
  result = sub_1BA27A994();
  *a1 = result;
  return result;
}

void sub_1B9F9D190(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell____lazy_storage___detailTextLabel);
  *(*a2 + OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell____lazy_storage___detailTextLabel) = *a1;
  v3 = v2;
}

uint64_t sub_1B9F9D1E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_showDisclosureIndicator;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1B9F9D32C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B9F9D364()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F9D39C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1B9F9D3EC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B9F9D434()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B9F9D47C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F9D4F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI30CompactDatePickerTableViewCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v3 + v4, a2);
}

uint64_t sub_1B9F9D554()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B9F9D5A4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B9F9D5EC()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B9F9D62C()
{

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1B9F9D684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BA4A1798();
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

uint64_t sub_1B9F9D740(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BA4A1798();
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

uint64_t sub_1B9F9D7F8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F9D830()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F9D868()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F9D8A0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F9D8D8()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1B9F9D924()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B9F9D964()
{

  v1 = *(v0 + 72);
  if (v1 != 1)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 168, 7);
}

id sub_1B9F9D9EC@<X0>(void *a1@<X8>)
{
  v2 = sub_1B9F1E1BC();
  *a1 = v2;

  return v2;
}

__n128 sub_1B9F9DA60(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1B9F9DA6C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B9FED4C0();
  *a1 = result;
  return result;
}

void *sub_1B9F9DB0C()
{
  v0 = sub_1B9F6B730();
  v1 = v0;
  return v0;
}

id sub_1B9F9DB40()
{
  v0 = sub_1B9F6B730();

  return v0;
}

uint64_t sub_1B9F9DB70()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B9F9DBA8()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B9F9DBE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BA4A12C8();
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

uint64_t sub_1B9F9DCB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BA4A12C8();
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

uint64_t sub_1B9F9DD70()
{
  type metadata accessor for SnidgetAnimation();
  sub_1BA4A5418();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B9F9DE04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BA4A12C8();
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
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1B9F9DED0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BA4A12C8();
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

uint64_t sub_1B9F9DF88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BA4A12C8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1B9F9E054(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BA4A12C8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1B9F9E110()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F9E148@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI30SharingVersionMismatchTileView_context;
  swift_beginAccess();
  return sub_1BA04B338(v3 + v4, a2);
}

uint64_t sub_1B9F9E250@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 72);
  *a2 = *(v3 + 64);
  a2[1] = v4;
}

uint64_t sub_1B9F9E2BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 88);
  *a2 = *(v3 + 80);
  a2[1] = v4;
}

uint64_t sub_1B9F9E314()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F9E34C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F9E384()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F9E3D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = qword_1EBC09290;
  swift_beginAccess();
  return sub_1B9F0A534(v3 + v4, a2);
}

id sub_1B9F9E438@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI14ChromeHostView_header;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1B9F9E4A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B9F9E4E8()
{

  return MEMORY[0x1EEE6BDD0](v0, 136, 7);
}

uint64_t sub_1B9F9E554@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingOnboardingSettingUpViewController_selectionFlowContext;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1B9F9E5B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F9E5EC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F9E624()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F9E65C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F9E69C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_providedViewContext;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1B9F9E6FC@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_1B9F9E83C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_baseIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1B9F9E894(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1B9F641A0(v1, v2);
}

uint64_t sub_1B9F9E8FC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B9F9E934()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F9E974()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F9E9BC()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B9F9EA0C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = MessageWithActionVCAutomationBaseProvider.baseIdentifier.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1B9F9EA40(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v6 = *a1;
  v7 = a1[1];

  return MessageWithActionVCAutomationBaseProvider.baseIdentifier.setter(v6, v7, v4, v5);
}

__n128 sub_1B9F9EAA4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1B9F9EAB0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_baseIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1B9F9EB54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtCV18HealthExperienceUI25DismissibleCellHeaderView9ViewModel_backgroundColor;
  swift_beginAccess();
  return sub_1B9F209BC(v3 + v4, a2, sub_1B9F20584);
}

uint64_t sub_1B9F9EBC8@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = sub_1B9F7B0CC;
  a2[1] = v5;
}

uint64_t sub_1B9F9EC38(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1B9F205B8(0, &qword_1EDC6B6D0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

void *sub_1B9F9ED18(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1B9F205B8(0, &qword_1EDC6B6D0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 32);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1B9F9EE38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BA4A6418();
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
    v12 = *(a1 + *(a3 + 28) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1B9F9EEFC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BA4A6418();
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
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B9F9EFD4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F9F0AC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F9F0EC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 5));

  return MEMORY[0x1EEE6BDD0](v0, 82, 7);
}

uint64_t sub_1B9F9F13C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F9F174()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F9F1B0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

id sub_1B9F9F210@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_1EBC09850;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1B9F9F27C@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_1B9F9F334@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_dataSource;
  swift_beginAccess();
  return sub_1B9F6DEE0(v3 + v4, a2);
}

uint64_t sub_1B9F9F444()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F9F5C4@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EBBF0190;
  return result;
}

uint64_t sub_1B9F9F610(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EBBF0190 = v1;
  return result;
}

uint64_t sub_1B9F9F658@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_1EBBF01A0;
  *a1 = qword_1EBBF0198;
  a1[1] = v2;
}

uint64_t sub_1B9F9F6AC@<X0>(_BYTE *a1@<X8>)
{
  result = UIMutableTraits.presentation.getter();
  *a1 = v3;
  return result;
}

__n128 sub_1B9F9F73C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1B9F9F750()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F9F788()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F9F7C8()
{
  sub_1BA2D9474();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1BA4A2E88();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B9F9F8CC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC18HealthExperienceUI29InteractiveGenerationListener_applicationStateProvider;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1B9F9F928(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC18HealthExperienceUI29InteractiveGenerationListener_applicationStateProvider;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1B9F9F98C@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

id sub_1B9F9F9EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedFeedItem;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1B9F9FA58@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI8HostView_sectionContext;
  swift_beginAccess();
  return sub_1B9F75B30(v3 + v4, a2);
}

id sub_1B9F9FAB8@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedViewable;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1B9F9FB28@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_baseIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1B9F9FB84()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F9FBBC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_1B9F9FC0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1BA2DC790(v3 + 40, a2);
}

uint64_t sub_1B9F9FC94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BA2DDFD8(0, &qword_1EDC6E440, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
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
    v12 = *(a1 + *(a3 + 36));
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

void sub_1B9F9FD90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1BA2DDFD8(0, &qword_1EDC6E440, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2;
  }
}

uint64_t sub_1B9F9FE8C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
  return swift_unknownObjectRetain();
}

uint64_t sub_1B9F9FF10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI36CollectionHeaderWithIconReusableView_item;
  swift_beginAccess();
  return sub_1B9F68124(v3 + v4, a2);
}

uint64_t sub_1B9F9FFA8()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F9FFE0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9FA0018()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1B9FA0050()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1B9FA0088()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B9FA00C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9FA00FC()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B9FA0138()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B9FA0178()
{

  return MEMORY[0x1EEE6BDD0](v0, 136, 7);
}

uint64_t sub_1B9FA01D8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9FA0210()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9FA0248()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9FA0280()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9FA02E8(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

id sub_1B9FA0354@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_gradientView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1B9FA03C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_gradientSubscriber;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1B9FA0424@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_gradientColorProvider;
  swift_beginAccess();
  return sub_1B9F0A534(v3 + v4, a2);
}

uint64_t sub_1B9FA0484@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC18HealthExperienceUI13CloudSyncFlow_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1B9FA04E0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC18HealthExperienceUI13CloudSyncFlow_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1B9FA0548()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9FA0584()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1B9FA05DC()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9FA0614()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9FA064C()
{

  v1 = *(v0 + 72);
  if (v1 != 1)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 168, 7);
}

uint64_t sub_1B9FA06BC()
{

  v1 = *(v0 + 88);
  if (v1 != 1)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 224, 7);
}

uint64_t sub_1B9FA0744()
{

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1B9FA07A0()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1B9FA083C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI42ThresholdSpecifierViewControllerDataSource_configuration;
  swift_beginAccess();
  return sub_1B9F0A534(v3 + v4, a2);
}

uint64_t sub_1B9FA089C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9FA08D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9FA0910()
{

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1B9FA0968()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9FA09A0()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9FA09F0()
{

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1B9FA0A30()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9FA0A78@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x60))();
  *a2 = result;
  return result;
}

uint64_t sub_1B9FA0AD4(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x68);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1B9FA0B3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeDetailUnitCell_item;
  swift_beginAccess();
  return sub_1BA0CBC80(v3 + v4, a2, &qword_1EDC6E1A0, sub_1B9FCD918);
}

uint64_t sub_1B9FA0BB8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_1B9FA0C08@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
}

uint64_t sub_1B9FA0C58@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 64);
  return result;
}

uint64_t sub_1B9FA0CA0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 64) = v2;
  return result;
}

uint64_t sub_1B9FA0CE4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 88);
  *a2 = *(v3 + 80);
  a2[1] = v4;
}

uint64_t sub_1B9FA0D34@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 104);
  *a2 = *(v3 + 96);
  a2[1] = v4;
}

uint64_t sub_1B9FA0D84@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI16IconWithNameCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v3 + v4, a2);
}

uint64_t sub_1B9FA0DE4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC18HealthExperienceUI23BiologicalSexPickerItem_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1B9FA0E40(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC18HealthExperienceUI23BiologicalSexPickerItem_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1B9FA0F30()
{

  return MEMORY[0x1EEE6BDD0](v0, 160, 7);
}

uint64_t sub_1B9FA0F98()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1B9FA0FE8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_context;
  swift_beginAccess();
  return sub_1BA114D9C(v3 + v4, a2);
}

id sub_1B9FA1048@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_context;
  swift_beginAccess();
  v4 = *(v3 + 104);
  *a2 = v4;

  return v4;
}

uint64_t sub_1B9FA10B0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_chartImageProvider;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1B9FA110C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_chartImageProvider;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1B9FA1170@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_viewModel;
  swift_beginAccess();
  return sub_1B9F0A534(v3 + v4, a2);
}

uint64_t sub_1B9FA11D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_cancellables;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

id sub_1B9FA1230@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_restorationUserActivity;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1B9FA129C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BA32819C();
  *a1 = result;
  return result;
}

uint64_t sub_1B9FA12C8(void *a1, void *a2)
{
  *(*a2 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController____lazy_storage___personalizedFeedTrainer) = *a1;
}

uint64_t sub_1B9FA1314()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 4));

  __swift_destroy_boxed_opaque_existential_1((v0 + 12));

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 200, 7);
}

uint64_t sub_1B9FA139C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BA32EA70(0, &qword_1EBBEA478, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
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

void sub_1B9FA1488(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1BA32EA70(0, &qword_1EBBEA478, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_1B9FA1570()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9FA15A8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC18HealthExperienceUI24PluginNotificationRouter_sceneProvider;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1B9FA1604(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC18HealthExperienceUI24PluginNotificationRouter_sceneProvider;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1B9FA1668()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9FA16A0()
{
  v1 = sub_1BA4A15D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1B9FA1734()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

BOOL sub_1B9FA1780@<W0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = LayoutConfigurationProviding.respectsSystemLayoutMargins.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result;
  return result;
}

__n128 sub_1B9FA17F4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1B9FA1854(uint64_t a1)
{

  sub_1BA33572C(a1);
}

uint64_t sub_1B9FA18C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *(a1 + 128);
  if (v2)
  {
    v3 = *(a1 + 136);
  }

  else
  {
    v3 = 0;
  }

  *a2 = v2;
  a2[1] = v3;
  return sub_1B9F0F1B8(v2);
}

uint64_t sub_1B9FA18DC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = a1[1];
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a2 + 128);
  sub_1B9F0F1B8(*a1);
  result = sub_1B9F0E310(v5);
  *(a2 + 128) = v3;
  *(a2 + 136) = v4;
  return result;
}

uint64_t sub_1B9FA1944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1BA4A47D8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 88);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1BA4A47C8();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 92);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1B9FA1A68(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v8 = sub_1BA4A47D8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 88);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1BA4A47C8();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 92);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1B9FA1B8C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9FA1BD0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9FA1C28()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9FA1C60()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9FA1C9C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B9FA1CDC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9FA1D14@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

id sub_1B9FA1D64@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI9ImageItem_image;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1B9FA1DD0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI23ImageCollectionViewCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v3 + v4, a2);
}

void sub_1B9FA1E3C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3[0] = v2;
  v3[1] = v1;

  sub_1BA33EE04(v3);
}

uint64_t sub_1B9FA1E88()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9FA1EC0()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B9FA1FA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI35DefaultHeaderCollectionReusableView_item;
  swift_beginAccess();
  return sub_1B9F68124(v3 + v4, a2);
}

uint64_t sub_1B9FA2078@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_1EBBF0E88;
  *a1 = qword_1EBBF0E80;
  a1[1] = v2;
}

uint64_t sub_1B9FA20D0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9FA2124()
{

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1B9FA215C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 80);
  v3 = *(a1 + 88);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = sub_1BA34ED78;
  a2[1] = v5;
}

uint64_t sub_1B9FA2264()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9FA22B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI27TextFieldCollectionViewCell_item;
  swift_beginAccess();
  return sub_1BA353944(v3 + v4, a2, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
}

id sub_1B9FA2328@<X0>(void *a1@<X8>)
{
  result = sub_1BA350478();
  *a1 = result;
  return result;
}

void sub_1B9FA2354(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC18HealthExperienceUI27TextFieldCollectionViewCell____lazy_storage___valueField);
  *(*a2 + OBJC_IVAR____TtC18HealthExperienceUI27TextFieldCollectionViewCell____lazy_storage___valueField) = *a1;
  v3 = v2;
}

uint64_t sub_1B9FA23A4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1BA4A1798();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B9FA2450(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1BA4A1798();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B9FA24F4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9FA2540@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BA4A55B8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1B9FA2598@<X0>(void *a1@<X8>)
{
  result = sub_1BA4A5608();
  *a1 = v3;
  return result;
}

uint64_t sub_1B9FA2634@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1B9FA267C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_1B9FA26C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_1B9FA2748@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_diagramHighlight;
  swift_beginAccess();
  return sub_1B9F7B750(v3 + v4, a2);
}

__n128 sub_1B9FA27A8@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_yValueRange;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_1B9FA2800(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_yValueRange);
  result = swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t sub_1B9FA2858@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_shouldReverseYAxis;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1B9FA28B0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_shouldReverseYAxis;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

double sub_1B9FA2904@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_chartParameters;
  swift_beginAccess();
  result = *(v3 + 32);
  v5 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v5;
  *(a2 + 32) = result;
  return result;
}

__n128 sub_1B9FA2960(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *a2 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_chartParameters;
  swift_beginAccess();
  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v6;
  *(v4 + 32) = v3;
  return result;
}

uint64_t sub_1B9FA29FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BA4A2B98();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 252)
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

  else
  {
    sub_1B9F47FD8(0, &qword_1EDC6E440, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1B9FA2B48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BA4A2B98();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 252)
  {
    *(a1 + *(a4 + 20)) = a2 + 3;
  }

  else
  {
    sub_1B9F47FD8(0, &qword_1EDC6E440, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_1B9FA2C98()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

id sub_1B9FA2CE8@<X0>(void *a1@<X8>)
{
  v2 = sub_1B9F1E1BC();
  *a1 = v2;

  return v2;
}

uint64_t sub_1B9FA2DBC@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1B9F38150();

  return swift_unknownObjectRetain();
}

uint64_t sub_1B9FA2E30@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1B9F34078();
  a1[1] = v2;
}

uint64_t sub_1B9FA2E70(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1BA35AB38(v1, v2);
}

uint64_t sub_1B9FA2ED0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingAlertsSelectionViewController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1B9FA2F2C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingAlertsSelectionViewController_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1B9FA2F90@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingAlertsSelectionViewController_selectedDataTypesContext;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1B9FA2FF0()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9FA3028()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9FA3060()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9FA30A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI19ProfileGradientView_delayAnimation;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1B9FA30F8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI19ProfileGradientView_delayAnimation;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1B9FA3190(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_1B9FA320C()
{
  sub_1BA36E1A8();
  sub_1BA36E0E0();
  sub_1BA36E05C();
  sub_1BA4A4A48();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1B9FA3328()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

__n128 sub_1B9FA33FC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1B9FA3410()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9FA3448()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B9FA3480()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9FA34B8()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B9FA3508@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1B9FA3564(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1B9FA35C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI20SegmentedControlCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v3 + v4, a2);
}

uint64_t sub_1B9FA3628@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureInactiveWithNoDataTileView_context;
  swift_beginAccess();
  return sub_1BA3797E8(v3 + v4, a2, sub_1BA04B39C);
}

uint64_t sub_1B9FA369C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1BA4A2BF8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B9FA3748(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1BA4A2BF8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B9FA37EC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9FA3824()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9FA385C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B9FA389C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B9FA38DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B9FA3924()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B9FA396C()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9FA39A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9FA3A3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BA4A1798();
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

uint64_t sub_1B9FA3AF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BA4A1798();
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

uint64_t sub_1B9FA3BC4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9FA3C04()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9FA3C3C()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9FA3C78()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_1B9FA3CB0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI21ProfileViewController_navigationBarTitleView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1B9FA3D20()
{
  v1 = *(v0 + 56);
  if (v1)
  {
  }

  v2 = *(v0 + 88);
  if (v2)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 144, 7);
}

uint64_t sub_1B9FA3D88()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9FA3DC0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI26SegmentedControlDataSource_segments;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1B9FA3E20@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI26SegmentedControlDataSource_selectedSegmentIndex;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1B9FA3E78(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI26SegmentedControlDataSource_selectedSegmentIndex;
  swift_beginAccess();
  *(v3 + v4) = v2;
  return sub_1BA38A7B4(sub_1BA38B5A8);
}

uint64_t sub_1B9FA3F08(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_1B9FA3F4C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_1B9F80C84(0, &qword_1EDC6B6D0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1B9FA402C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1B9F80C84(0, &qword_1EDC6B6D0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 32);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1B9FA4100@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI31CellWithAccessoryViewController_context;
  swift_beginAccess();
  return sub_1BA04B338(v3 + v4, a2);
}

uint64_t sub_1B9FA4160@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x80))();
  *a2 = result;
  return result;
}

uint64_t sub_1B9FA41BC(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x88);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1B9FA4224@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x98))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1B9FA4280(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xA0);

  return v4(v2, v3);
}

uint64_t sub_1B9FA42F8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for CloudSyncTarget(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B9FA43A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CloudSyncTarget(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B9FA4448@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_1B9FA4498@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
}

uint64_t sub_1B9FA44E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 64);
  return result;
}

uint64_t sub_1B9FA4530(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 64) = v2;
  return result;
}

uint64_t sub_1B9FA4574@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 88);
  *a2 = *(v3 + 80);
  a2[1] = v4;
}

uint64_t sub_1B9FA45C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 104);
  *a2 = *(v3 + 96);
  a2[1] = v4;
}

uint64_t sub_1B9FA4618()
{

  return MEMORY[0x1EEE6BDD0](v0, 136, 7);
}

uint64_t sub_1B9FA4678()
{
  v1 = sub_1BA4A30B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 47) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  __swift_destroy_boxed_opaque_existential_1(v0 + v6);

  return MEMORY[0x1EEE6BDD0](v0, ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1B9FA477C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9FA47B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9FA47EC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9FA482C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA4A1798();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B9FA4898(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA4A1798();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

unint64_t sub_1B9FA4908(uint64_t a1)
{
  result = sub_1B9FE9354();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B9FA4930()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  if (*(v0 + 88))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 64);
  }

  MEMORY[0x1BFAF44B0](v0 + 104);
  if (*(v0 + 136))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 112);
  }

  return MEMORY[0x1EEE6BDD0](v0, 192, 7);
}

uint64_t get_enum_tag_for_layout_string_18HealthExperienceUI22RecentSamplesItemModel_pSg_0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B9FA49C8()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B9FA4A08()
{
  v1 = *(v0 + 56);
  if (v1)
  {
  }

  v2 = *(v0 + 88);
  if (v2)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 144, 7);
}

uint64_t sub_1B9FA4A70()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B9FA4AA8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9FA4AF0()
{
  sub_1BA3B1DBC(255, &qword_1EBBF1978, sub_1BA3B0B28, &qword_1EBBF1980, sub_1BA3B0B28);
  sub_1BA3B0B28();
  sub_1BA4A5938();
  sub_1BA3B0C00(&qword_1EBBF1980, sub_1BA3B0B28);
  swift_getOpaqueTypeConformance2();
  sub_1B9F252FC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1B9FA4C68(uint64_t a1, uint64_t a2)
{
  sub_1BA3B0CF0(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9FA4CCC(uint64_t a1, uint64_t a2)
{
  sub_1BA3B0E04(0, &qword_1EBBF1A00, sub_1BA3B0CF0, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9FA4D60(uint64_t a1)
{
  sub_1BA3B0E04(0, &qword_1EBBF1A00, sub_1BA3B0CF0, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B9FA4DF0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9FA4E70()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9FA4EA8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9FA4EE0()
{
  sub_1BA3B1DBC(255, &qword_1EBBF1AF0, sub_1BA3B19C4, &qword_1EBBF1AF8, sub_1BA3B19C4);
  sub_1BA3B19C4();
  sub_1BA4A5938();
  sub_1BA3B0C00(&qword_1EBBF1AF8, sub_1BA3B19C4);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1B9FA503C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B9FA5084()
{
  sub_1BA3B1DBC(255, &qword_1EBBF1BB0, sub_1BA3B23F0, &qword_1EBBF1BB8, sub_1BA3B23F0);
  sub_1BA3B23F0(255);
  sub_1BA4A5938();
  sub_1BA3B0C00(&qword_1EBBF1BB8, sub_1BA3B23F0);
  swift_getOpaqueTypeConformance2();
  sub_1B9F252FC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1B9FA51F0()
{
  sub_1BA3B29F8(255);
  sub_1BA4A5938();
  sub_1BA3B0C00(&qword_1EBBF1C68, sub_1BA3B29F8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1B9FA52E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9FA5324()
{

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1B9FA537C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_1B9F2F3D8(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1B9FA545C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1B9F2F3D8(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 40);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1B9FA5530@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_1B9FA55E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v3 + v4, a2);
}

uint64_t sub_1B9FA5648()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9FA5680()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B9FA56C0()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9FA5700@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC18HealthExperienceUI16WeightPickerItem_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1B9FA575C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC18HealthExperienceUI16WeightPickerItem_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1B9FA57C0@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_1EBBF1F78;
  *a1 = qword_1EBBF1F70;
  a1[1] = v2;
}

uint64_t sub_1B9FA5814@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI23TitleValueTableViewCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v3 + v4, a2);
}

uint64_t sub_1B9FA5878()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B9FA58C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9FA5918()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_1B9FA5950@<X0>(void *a1@<X8>)
{
  result = sub_1B9F2192C();
  *a1 = result;
  return result;
}

void sub_1B9FA597C(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController____lazy_storage___searchController);
  *(*a2 + OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController____lazy_storage___searchController) = *a1;
  v3 = v2;
}

uint64_t sub_1B9FA59F0@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_1B9FA5AA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_dataSource;
  swift_beginAccess();
  return sub_1B9F6DEE0(v3 + v4, a2);
}

uint64_t sub_1B9FA5BBC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B9FA5BF4()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1B9FA5C2C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI29BrowsePinnedContentDataSource_pinnedFeedItemsPublisher;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1B9FA5C8C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B9FA5CD4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1B9FA5D50()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B9FA5D88()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9FA5DF0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_baseIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1B9FA5E4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_context;
  swift_beginAccess();
  return sub_1BA3E2F04(v3 + v4, a2, &qword_1EDC6C130, &qword_1EDC6C140, &protocol descriptor for FeedItemViewControllerContext);
}

id sub_1B9FA5EC4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_accessoryColor;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

id sub_1B9FA5F30@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_accessoryLabel;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

id sub_1B9FA5FB0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 sortOrder];
  *a2 = result;
  return result;
}

uint64_t sub_1B9FA5FF8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9FA604C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9FA6084()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9FA60BC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9FA60FC()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B9FA614C()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9FA6184()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9FA61C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9FA61FC()
{
  if (*(v0 + 24) >= 2uLL)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9FA624C()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9FA6284()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_1B9FA62BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI31ProfileCategoriesViewController_navigationBarTitleView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1B9FA632C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9FA6370()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9FA63B4()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9FA63FC()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B9FA6434()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1B9FA646C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9FA64A4()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9FA64E4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B9FA651C@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

id sub_1B9FA65D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI23DataTypeDetailChartCell_chartViewController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1B9FA6640@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI23DataTypeDetailChartCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v3 + v4, a2);
}

uint64_t sub_1B9FA66A0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9FA66E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9FA671C()
{
  if (*(v0 + 32))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

id sub_1B9FA676C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController_loadingView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1B9FA67D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController_hasShownIntroduction;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1B9FA6830(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController_hasShownIntroduction;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_1B9FA6884@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController_introductionView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

id sub_1B9FA68F4@<X0>(void *a1@<X8>)
{
  result = sub_1BA406DA0();
  *a1 = result;
  return result;
}

void sub_1B9FA6920(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController____lazy_storage___dataScannerViewController);
  *(*a2 + OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController____lazy_storage___dataScannerViewController) = *a1;
  v3 = v2;
}

id sub_1B9FA6970@<X0>(void *a1@<X8>)
{
  result = sub_1BA407920();
  *a1 = result;
  return result;
}

void sub_1B9FA699C(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController____lazy_storage___closeButton);
  *(*a2 + OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController____lazy_storage___closeButton) = *a1;
  v3 = v2;
}

uint64_t sub_1B9FA6A00()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9FA6A38@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + qword_1EBBF23F0;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1B9FA6A94(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + qword_1EBBF23F0;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1B9FA6AFC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B9FA6B3C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_1B9FA6B8C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
}

uint64_t sub_1B9FA6BDC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 64);
  return result;
}

uint64_t sub_1B9FA6C24(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 64) = v2;
  return result;
}

uint64_t sub_1B9FA6C68@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 80);
  *a2 = *(v3 + 72);
  a2[1] = v4;
}

uint64_t sub_1B9FA6CB8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 96);
  *a2 = *(v3 + 88);
  a2[1] = v4;
}

uint64_t sub_1B9FA6D14@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_1B9FA6DCC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_dataSource;
  swift_beginAccess();
  return sub_1B9F6DEE0(v3 + v4, a2);
}

id sub_1B9FA6E2C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessoryColor;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1B9FA6F48()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9FA6F80()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B9FA6FC8()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9FA7014()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9FA704C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B9FA708C()
{

  if (*(v0 + 88))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1B9FA70F4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9FA7134()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B9FA7184()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9FA71BC()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B9FA7204()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B9FA7248@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView_item;
  swift_beginAccess();
  return sub_1B9F68124(v3 + v4, a2);
}

id sub_1B9FA72B0@<X0>(void *a1@<X8>)
{
  result = sub_1BA420320();
  *a1 = result;
  return result;
}

void sub_1B9FA72DC(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView____lazy_storage___spinner);
  *(*a2 + OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView____lazy_storage___spinner) = *a1;
  v3 = v2;
}

uint64_t sub_1B9FA732C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_1B9FA737C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
}

uint64_t sub_1B9FA73CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 96);
  *a2 = *(v3 + 88);
  a2[1] = v4;
}

uint64_t sub_1B9FA741C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI15SidebarListCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v3 + v4, a2);
}

uint64_t sub_1B9FA7480()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1B9FA74B8()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

id sub_1B9FA74F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

uint64_t sub_1B9FA7554@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  v5 = *(v3 + 80);
  *a2 = *(v3 + 72);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1B9FA75F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1B9FA7644@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_1B9FA7694()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

id sub_1B9FA77A4@<X0>(void *a1@<X8>)
{
  result = sub_1BA42A144();
  *a1 = result;
  return result;
}

void sub_1B9FA77D0(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC18HealthExperienceUI31FeatureStatusTileViewController____lazy_storage___featureStatusPlatformView);
  *(*a2 + OBJC_IVAR____TtC18HealthExperienceUI31FeatureStatusTileViewController____lazy_storage___featureStatusPlatformView) = *a1;
  v3 = v2;
}

uint64_t sub_1B9FA7820()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9FA7858()
{
  v1 = sub_1BA4A1A48();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B9FA78E0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B9FA7924()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1B9FA7AEC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9FA7B54()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B9FA7B8C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI27HealthDetailsViewController_isInEditMode;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1B9FA7BE4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI27HealthDetailsViewController_isInEditMode;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1B9FA7C38()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 136, 7);
}

uint64_t sub_1B9FA7CA0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1B9FA7CE8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B9FA7D3C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

__n128 sub_1B9FA7D90(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1B9FA7E38(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1BA4A1798();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_1B9F664A8(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 48);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1B9FA7F78(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1BA4A1798();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_1B9F664A8(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 48);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1B9FA80B8()
{
  v1 = type metadata accessor for PickerItem();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[9];
  v7 = sub_1BA4A1798();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  v8 = v1[12];
  v9 = sub_1BA4A4168();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v5 + v8, v9);
  }

  if (*(v5 + v1[14]))
  {
  }

  if (*(v5 + v1[15]))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B9FA8288()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for PickerItem();
  v3 = *(*(v2 - 1) + 80);
  v15 = *(*(v2 - 1) + 64);
  v4 = *(v1 - 8);
  v5 = *(v4 + 80);
  v16 = *(v4 + 64);
  v6 = v0 + ((v3 + 32) & ~v3);

  v7 = v2[9];
  v8 = sub_1BA4A1798();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);

  v9 = v2[12];
  v10 = sub_1BA4A4168();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v6 + v9, 1, v10))
  {
    (*(v11 + 8))(v6 + v9, v10);
  }

  if (*(v6 + v2[14]))
  {
  }

  if (*(v6 + v2[15]))
  {
  }

  v12 = v3 | v5;
  v13 = (((v3 + 32) & ~v3) + v15 + v5) & ~v5;

  (*(v4 + 8))(v0 + v13, v1);

  return MEMORY[0x1EEE6BDD0](v0, v13 + v16, v12 | 7);
}

uint64_t sub_1B9FA84E8()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B9FA8550()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_1B9FA85E4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_1(v0 + v6);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 42, v3 | 7);
}

uint64_t sub_1B9FA86CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9FA8704()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B9FA8744()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9FA878C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_1B9FA87D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_changeObservers;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1B9FA8844()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1B9FA888C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9FA88C4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView_baseIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

id sub_1B9FA8920@<X0>(void *a1@<X8>)
{
  result = sub_1BA44666C();
  *a1 = result;
  return result;
}

void sub_1B9FA894C(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView____lazy_storage___label);
  *(*a2 + OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView____lazy_storage___label) = *a1;
  v3 = v2;
}

uint64_t sub_1B9FA899C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailDisclosureCell_item;
  swift_beginAccess();
  return sub_1B9F374E8(v3 + v4, a2, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
}

uint64_t sub_1B9FA8A14@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_1B9FA8ACC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI36EmbeddedDataSourceCollectionViewCell_eventHandlerSink;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1B9FA8B2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI36EmbeddedDataSourceCollectionViewCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v3 + v4, a2);
}

uint64_t sub_1B9FA8B8C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9FA8BD4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9FA8C14()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9FA8C4C()
{

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1B9FA8C94()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B9FA8CDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BA4A33C8();
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

uint64_t sub_1B9FA8D98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BA4A33C8();
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

uint64_t sub_1B9FA8E50@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_1EBBF2D10;
  *a1 = qword_1EBBF2D08;
  a1[1] = v2;
}

uint64_t sub_1B9FA8EAC()
{

  return MEMORY[0x1EEE6BDD0](v0, 65, 7);
}

uint64_t sub_1B9FA8F04()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B9FA8F60()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  __swift_destroy_boxed_opaque_existential_1((v0 + 10));

  return MEMORY[0x1EEE6BDD0](v0, 136, 7);
}

uint64_t sub_1B9FA8FC0()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1B9FA9030()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B9FA9070()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B9FA90CC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9FA9104()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B9FA913C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1B9FA918C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1B9FA91C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_providedViewContext;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1B9FA9224@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_1B9FA92DC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_baseIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1B9FA9338@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_item;
  swift_beginAccess();
  return sub_1B9F374E8(v3 + v4, a2, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
}

uint64_t sub_1B9FA93B0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9FA93E8()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B9FA9430()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B9FA948C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI33AllHighlightsByCategoryDataSource_healthExperienceStore;
  swift_beginAccess();
  return sub_1B9F0A534(v3 + v4, a2);
}

uint64_t sub_1B9FA94EC()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B9FA952C()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1B9FA9584()
{

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1B9FA95DC()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1B9FA962C()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1B9FA9684()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1B9FA96CC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1B9FA9714()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9FA974C()
{

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1B9FA97A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI27CalendarPickerTableViewCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v3 + v4, a2);
}

uint64_t sub_1B9FA9804@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BA4711C0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B9FA9830(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = swift_unknownObjectRetain();
  return sub_1B9F7CB5C(v2, v1);
}

__n128 sub_1B9FA9878(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

id sub_1B9FA9884@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contentSize];
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1B9FA98CC()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9FA9904()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B9FA9984()
{
  if (v0[6])
  {
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 15));

  return MEMORY[0x1EEE6BDD0](v0, 185, 7);
}

uint64_t sub_1B9FA99E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B9FA9A24()
{

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1B9FA9A6C()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B9FA9AAC()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B9FA9AE4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B9FA9B34()
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

  return MEMORY[0x1EEE6BDD0](v0, 137, 7);
}

uint64_t sub_1B9FA9B94()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B9FA9BCC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for DatePickerItem() + 32));
  v4 = *v3;
  if (*v3)
  {
    v5 = v3[1];
  }

  else
  {
    v5 = 0;
  }

  *a2 = v4;
  a2[1] = v5;

  return sub_1B9F0F1B8(v4);
}

uint64_t sub_1B9FA9C2C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_baseIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1B9FA9C88@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_item;
  swift_beginAccess();
  return sub_1BA478734(v3 + v4, a2, &qword_1EDC6E1A0, sub_1B9FCD918);
}

uint64_t sub_1B9FA9D04(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_1BA4A1798();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  sub_1B9F481BC(0, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[13];
    goto LABEL_9;
  }

  sub_1B9F481BC(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + a3[15];

  return v16(v17, a2, v15);
}

uint64_t sub_1B9FA9EA8(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1BA4A1798();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  sub_1B9F481BC(0, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[13];
    goto LABEL_7;
  }

  sub_1B9F481BC(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = v5 + a4[15];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1B9FAA04C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9FAA088@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI27AllHealthDataViewController_providedPresentation;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1B9FAA0E0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI27AllHealthDataViewController_providedPresentation;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1B9FAA160(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_1BA0D0F10(0);
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
      sub_1B9F20584(0);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1B9FAA284(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1BA0D0F10(0);
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
      sub_1B9F20584(0);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 24);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1B9FAA3FC(uint64_t a1, uint64_t a2)
{
  sub_1BA485E6C(0, &qword_1EBBF3110, sub_1BA483814, sub_1BA483C28, MEMORY[0x1E697F960]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9FAA4B4()
{
  sub_1BA487914();
  sub_1BA4A5938();
  sub_1BA487E8C(&qword_1EBBF33A0, sub_1BA487914);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1B9FAA554()
{
  sub_1BA488754();
  sub_1BA48856C();
  sub_1BA4A5938();
  sub_1BA487E8C(&qword_1EBBF33E8, sub_1BA48856C);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1B9FAA634()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9FAA674()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B9FAA6B4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B9FAA6FC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B9FAA73C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

id sub_1B9FAA77C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI38CameraScannerTextOverlayViewController_overlayView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1B9FAA7E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI38CameraScannerTextOverlayViewController_showsBackground;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1B9FAA844()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9FAA87C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B9FAA8B4()
{
  v1 = sub_1BA4A1F38();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B9FAA964(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1BA0D0F10(0);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

void *sub_1B9FAAA10(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1BA0D0F10(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 32);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1B9FAAAB4(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1BA49AC7C(0, &qword_1EDC6B6D0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for PromptTileViewModel(0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[8]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_1B9FAABEC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1BA49AC7C(0, &qword_1EDC6B6D0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
  }

  else
  {
    result = type metadata accessor for PromptTileViewModel(0);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[8]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[7];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_1B9FAAD68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BA49AC7C(0, &qword_1EDC6B6D0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
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
    v12 = *(a1 + *(a3 + 24) + 8);
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

void sub_1B9FAAE68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1BA49AC7C(0, &qword_1EDC6B6D0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }
}

uint64_t sub_1B9FAAF58(uint64_t a1, uint64_t a2)
{
  sub_1BA49A4D8(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9FAAFBC(uint64_t a1)
{
  sub_1BA49A4D8(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B9FAB028@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BA4A5588();
  *a1 = result;
  return result;
}

uint64_t sub_1B9FAB080()
{
  v1 = _s18HealthExperienceUI33ContentSecondaryTextAndActionViewVMa_0(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_1B9F84D1C(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16));
  v6 = *(v1 + 20);
  sub_1BA49AC7C(0, &qword_1EDC6B6E0, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1BA4A53C8();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  if (*(v5 + *(v1 + 32)))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v4 + v3, v2 | 7);
}

uint64_t sub_1B9FAB208@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BA4A56E8();
  *a1 = result;
  return result;
}

uint64_t sub_1B9FAB3DC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1B9FAB42C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1B9FAB484()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B9FAB4BC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9FAB4F4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9FAB52C()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 81, 7);
}

uint64_t sub_1B9FAB65C@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

void *sub_1B9FAB698()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void *sub_1B9FAB728()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessoryLabel;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1B9FAEEA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B9FB01A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B9FB0990(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B9FB0B70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B9FB20D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B9FB5F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 144), 8);
  _Block_object_dispose((v29 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1B9FB8140(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id HABundle()
{
  v0 = HABundle___ClassBundle;
  if (!HABundle___ClassBundle)
  {
    v1 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v2 = HABundle___ClassBundle;
    HABundle___ClassBundle = v1;

    v0 = HABundle___ClassBundle;
  }

  return v0;
}

void sub_1B9FBB0A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B9FBCE1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, uint64_t a10, __int16 a11, __int16 a12, __int16 a13, __int16 a14, uint64_t a15, __int16 a16, uint64_t a17)
{
  if (a2 == 1)
  {
    v17 = objc_begin_catch(exception_object);
    _HKInitializeLogging();
    v18 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      a9 = 138543874;
      WORD2(a10) = 2114;
      a14 = 2114;
      a15 = v17;
      _os_log_error_impl(&dword_1B9F07000, v18, OS_LOG_TYPE_ERROR, "%{public}@ tryToInstantiateViewControllerWithIdentifier: Failed to create view controller with identifier: %{public}@ exception: %{public}@", &a9, 0x20u);
    }

    objc_end_catch();
    JUMPOUT(0x1B9FBCDD4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B9FBE748(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B9FC11CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_1B9FC683C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_1B9FC839C(uint64_t a1, int a2)
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

uint64_t sub_1B9FC83BC(uint64_t result, int a2, int a3)
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

uint64_t sub_1B9FC8434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24[1] = a2;
  v25 = a1;
  v2 = sub_1BA4A3EA8();
  v26 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BA4A1B28();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A1B58();
  sub_1BA4A1B48();
  v9 = v33;
  sub_1BA4A1B38();
  if (v9)
  {
  }

  v11 = v26;
  v12 = sub_1BA4A1B18();
  (*(v6 + 8))(v8, v5);
  sub_1BA2FCB20(&v27);

  if (v28)
  {
    sub_1B9F1134C(&v27, v29);
    v13 = v31;
    v14 = v32;
    __swift_project_boxed_opaque_existential_1(v29, v31);
    (*(v14 + 8))(v25, v13, v14);
    return __swift_destroy_boxed_opaque_existential_1(v29);
  }

  else
  {
    sub_1B9FCB404(&v27);
    v15 = v4;
    sub_1BA4A3E08();
    v16 = sub_1BA4A3E88();
    v17 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&v27 = v19;
      *v18 = 136315650;
      *(v18 + 4) = sub_1B9F0B82C(0xD00000000000002BLL, 0x80000001BA4E1690, &v27);
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_1B9F0B82C(0xD000000000000033, 0x80000001BA4E16C0, &v27);
      *(v18 + 22) = 2080;
      v29[0] = 0;
      v29[1] = 0;
      v30 = 3;
      v20 = sub_1BA4A6828();
      v22 = sub_1B9F0B82C(v20, v21, &v27);

      *(v18 + 24) = v22;
      _os_log_impl(&dword_1B9F07000, v16, v17, "%s %s %s", v18, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v19, -1, -1);
      MEMORY[0x1BFAF43A0](v18, -1, -1);
    }

    (*(v11 + 8))(v15, v2);
    sub_1B9FCB51C();
    swift_allocError();
    *v23 = 0;
    *(v23 + 8) = 0;
    *(v23 + 16) = 3;
    return swift_willThrow();
  }
}

uint64_t sub_1B9FC87F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

uint64_t sub_1B9FC8854(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x1BFAEC450](a1, &v6);
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

uint64_t sub_1B9FC88A8(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x1BFAEC460](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return v3 & 1;
}

uint64_t sub_1B9FC8930(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x1BFAF1760](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return result;
}

uint64_t sub_1B9FC8984(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x1BFAF1770](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return v3 & 1;
}

BOOL sub_1B9FC8A48(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_1B9FC8A78@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_1B9FC8AA4@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t sub_1B9FC8C40()
{
  sub_1BA4A8488();
  swift_getWitnessTable();
  sub_1BA4A1AB8();
  return sub_1BA4A84D8();
}

void *sub_1B9FC8CBC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1B9FC8CE8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1B9FC8D58()
{
  v1 = *v0;
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](v1);
  return sub_1BA4A84D8();
}

uint64_t sub_1B9FC8DA0()
{
  v1 = *v0;
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](v1);
  return sub_1BA4A84D8();
}

uint64_t sub_1B9FC8DE4(uint64_t a1, id *a2)
{
  result = sub_1BA4A6778();
  *a2 = 0;
  return result;
}

uint64_t sub_1B9FC8E5C@<X0>(uint64_t *a1@<X8>)
{
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v2 = sub_1BA4A6758();

  *a1 = v2;
  return result;
}

uint64_t sub_1B9FC8EA0(uint64_t a1)
{
  v2 = sub_1B9F28F90(&qword_1EBBE9058, type metadata accessor for HKError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B9FC8F0C(uint64_t a1)
{
  v2 = sub_1B9F28F90(&qword_1EBBE9058, type metadata accessor for HKError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1B9FC8F78(uint64_t a1)
{
  v2 = sub_1B9F28F90(&qword_1EBBE9090, type metadata accessor for HKError);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1B9FC8FF8@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_1B9FCB340(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1B9FC9048()
{
  sub_1B9F28F90(&qword_1EBBE9090, type metadata accessor for HKError);

  return sub_1BA4A1468();
}

uint64_t sub_1B9FC90B4(uint64_t a1)
{
  v2 = sub_1B9F28F90(&qword_1EBBE9090, type metadata accessor for HKError);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1B9FC9120(void *a1, uint64_t a2)
{
  v4 = sub_1B9F28F90(&qword_1EBBE9090, type metadata accessor for HKError);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1B9FC91B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9F28F90(&qword_1EBBE9090, type metadata accessor for HKError);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

double sub_1B9FC9238@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_1B9FC9244(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6C290](v4, v5, a3, WitnessTable);
}

uint64_t sub_1B9FC92B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1B9FCB378(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1B9FC9300()
{
  sub_1B9F28F90(&qword_1EBBE9400, type metadata accessor for CSSearchQueryError);

  return sub_1BA4A1468();
}

uint64_t sub_1B9FC936C(uint64_t a1)
{
  v2 = sub_1B9F28F90(&qword_1EBBE9400, type metadata accessor for CSSearchQueryError);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1B9FC93D8(void *a1, uint64_t a2)
{
  v4 = sub_1B9F28F90(&qword_1EBBE9400, type metadata accessor for CSSearchQueryError);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1B9FC9468(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9F28F90(&qword_1EBBE9400, type metadata accessor for CSSearchQueryError);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1B9FC94E4()
{
  sub_1BA4A8488();
  sub_1BA4A66A8();
  return sub_1BA4A84D8();
}

uint64_t sub_1B9FC9544()
{
  sub_1B9F28F90(&qword_1EBBE90F8, type metadata accessor for TextStyle);
  sub_1B9F28F90(&unk_1EBBE9100, type metadata accessor for TextStyle);

  return sub_1BA4A80F8();
}

uint64_t sub_1B9FC9600()
{
  sub_1B9F28F90(&qword_1EBBE9128, type metadata accessor for Weight);
  sub_1B9F28F90(&qword_1EBBE9130, type metadata accessor for Weight);
  sub_1B9FCB3B0();
  return sub_1BA4A80F8();
}

float sub_1B9FC96C8@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_1B9FC96D4()
{
  sub_1B9F28F90(&qword_1EBBE9430, type metadata accessor for UILayoutPriority);
  sub_1B9F28F90(&qword_1EBBE9438, type metadata accessor for UILayoutPriority);
  return sub_1BA4A80F8();
}

uint64_t sub_1B9FC9790()
{
  sub_1B9F28F90(&qword_1EDC5E3D0, type metadata accessor for Key);
  sub_1B9F28F90(&qword_1EBBE9120, type metadata accessor for Key);

  return sub_1BA4A80F8();
}

uint64_t sub_1B9FC984C()
{
  sub_1B9F28F90(&qword_1EBBE9098, type metadata accessor for CALayerCornerCurve);
  sub_1B9F28F90(&qword_1EBBE90A0, type metadata accessor for CALayerCornerCurve);

  return sub_1BA4A80F8();
}

uint64_t sub_1B9FC9908()
{
  sub_1B9F28F90(&qword_1EBBE90A8, type metadata accessor for Name);
  sub_1B9F28F90(&qword_1EBBE90B0, type metadata accessor for Name);

  return sub_1BA4A80F8();
}

uint64_t sub_1B9FC99C4()
{
  sub_1B9F28F90(&qword_1EBBE9420, type metadata accessor for HKFeatureAvailabilityContext);
  sub_1B9F28F90(&qword_1EBBE9428, type metadata accessor for HKFeatureAvailabilityContext);

  return sub_1BA4A80F8();
}

uint64_t sub_1B9FC9A80()
{
  sub_1B9F28F90(&qword_1EBBE9140, type metadata accessor for ActivityType);
  sub_1B9F28F90(&qword_1EBBE9148, type metadata accessor for ActivityType);

  return sub_1BA4A80F8();
}

uint64_t sub_1B9FC9B3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B9F28F90(&qword_1EBBE9090, type metadata accessor for HKError);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1B9FC9CE0()
{
  sub_1B9F28F90(&qword_1EBBE9440, type metadata accessor for HKChartOverlayVersion);
  sub_1B9F28F90(&qword_1EBBE9448, type metadata accessor for HKChartOverlayVersion);

  return sub_1BA4A80F8();
}

uint64_t sub_1B9FC9D9C()
{
  sub_1B9F28F90(&qword_1EBBE90C8, type metadata accessor for HKFeatureIdentifier);
  sub_1B9F28F90(&unk_1EBBE90D0, type metadata accessor for HKFeatureIdentifier);

  return sub_1BA4A80F8();
}

uint64_t sub_1B9FC9E58()
{
  sub_1B9F28F90(&qword_1EBBE9498, type metadata accessor for HKFeatureAvailabilityRequirementIdentifier);
  sub_1B9F28F90(&unk_1EBBE94A0, type metadata accessor for HKFeatureAvailabilityRequirementIdentifier);

  return sub_1BA4A80F8();
}

uint64_t sub_1B9FC9F14()
{
  sub_1B9F28F90(&qword_1EDC6E3A8, type metadata accessor for AttributeName);
  sub_1B9F28F90(&unk_1EBBE9110, type metadata accessor for AttributeName);

  return sub_1BA4A80F8();
}

uint64_t sub_1B9FC9FD0()
{
  sub_1B9F28F90(&qword_1EDC6E3D8, type metadata accessor for TraitKey);
  sub_1B9F28F90(&qword_1EBBE90E0, type metadata accessor for TraitKey);

  return sub_1BA4A80F8();
}

uint64_t sub_1B9FCA08C()
{
  sub_1B9F28F90(&qword_1EBBE90E8, type metadata accessor for SystemDesign);
  sub_1B9F28F90(&qword_1EBBE90F0, type metadata accessor for SystemDesign);

  return sub_1BA4A80F8();
}

uint64_t sub_1B9FCA148()
{
  sub_1B9F28F90(&qword_1EBBE9410, type metadata accessor for RBDisplayListRenderKey);
  sub_1B9F28F90(&qword_1EBBE9418, type metadata accessor for RBDisplayListRenderKey);

  return sub_1BA4A80F8();
}

uint64_t sub_1B9FCA204(uint64_t a1)
{
  v2 = sub_1B9F28F90(&qword_1EBBE93D0, type metadata accessor for CSSearchQueryError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B9FCA270(uint64_t a1)
{
  v2 = sub_1B9F28F90(&qword_1EBBE93D0, type metadata accessor for CSSearchQueryError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1B9FCA2DC(uint64_t a1)
{
  v2 = sub_1B9F28F90(&qword_1EBBE9400, type metadata accessor for CSSearchQueryError);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1B9FCA348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B9F28F90(&qword_1EBBE9400, type metadata accessor for CSSearchQueryError);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1B9FCA3CC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1BA4A6758();

  *a1 = v2;
  return result;
}

uint64_t sub_1B9FCA414()
{
  sub_1B9F28F90(&qword_1EBBE90B8, type metadata accessor for ImageInitializationOption);
  sub_1B9F28F90(&qword_1EBBE90C0, type metadata accessor for ImageInitializationOption);

  return sub_1BA4A80F8();
}

uint64_t sub_1B9FCA4D8()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x1BFAF2F00](*&v1);
}

uint64_t sub_1B9FCA58C()
{
  v0 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v1 = MEMORY[0x1BFAF13E0](v0);

  return v1;
}

uint64_t sub_1B9FCA5C8()
{
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1BA4A68C8();
}

unint64_t sub_1B9FCB25C()
{
  result = qword_1EDC5E890;
  if (!qword_1EDC5E890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5E890);
  }

  return result;
}

uint64_t sub_1B9FCB340(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_1B9FCB378(uint64_t a1)
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

unint64_t sub_1B9FCB3B0()
{
  result = qword_1EBBE9138;
  if (!qword_1EBBE9138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE9138);
  }

  return result;
}

uint64_t sub_1B9FCB404(uint64_t a1)
{
  sub_1B9FCB460();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B9FCB460()
{
  if (!qword_1EBBE92D0)
  {
    sub_1B9FCB4B8();
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBE92D0);
    }
  }
}

unint64_t sub_1B9FCB4B8()
{
  result = qword_1EBBE92D8;
  if (!qword_1EBBE92D8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EBBE92D8);
  }

  return result;
}

unint64_t sub_1B9FCB51C()
{
  result = qword_1EBBE92E0;
  if (!qword_1EBBE92E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE92E0);
  }

  return result;
}

id AdvertisableFeatureOnboardingViewController.__allocating_init(featureManager:featureIdentifiers:title:detailText:subtitleText:icon:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, uint64_t a8, uint64_t a9, void *a10)
{
  v15 = objc_allocWithZone(v10);
  type metadata accessor for AdvertisableFeatureDataSource();
  swift_allocObject();

  swift_unknownObjectRetain();

  v16 = AdvertisableFeatureDataSource.init(featureManager:featureIdentifiers:sectionTitle:)(a1, a2, a3, a8, a9);
  v17 = OBJC_IVAR____TtC18HealthExperienceUI43AdvertisableFeatureOnboardingViewController_dataSource;
  *&v15[OBJC_IVAR____TtC18HealthExperienceUI43AdvertisableFeatureOnboardingViewController_dataSource] = v16;

  v15[OBJC_IVAR____TtC18HealthExperienceUI43AdvertisableFeatureOnboardingViewController_hasSectionHeader] = a9 != 0;
  v19 = *&v15[v17];
  if (v19)
  {

    *&v15[OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_dataSourceAdaptor] = 0;
    v20 = &v15[OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_dataSource];
    *v20 = v19;
    v20[1] = &protocol witness table for MutableArrayDataSource;
    *&v15[OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_tableViewStyle] = 0;
    v15[OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_useSystemMargins] = 0;
    v15[OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_allowAnimations] = 0;
    v21 = sub_1BA4A6758();

    v22 = sub_1BA4A6758();

    v25.receiver = v15;
    v25.super_class = type metadata accessor for OnboardingTableViewController();
    v23 = objc_msgSendSuper2(&v25, sel_initWithTitle_detailText_icon_adoptTableViewScrollView_, v21, v22, a10, 1);

    v24 = v23;
    [v24 setModalInPresentation_];
    swift_unknownObjectRelease();

    return v24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t AdvertisableFeatureOnboardingViewController.init(featureManager:featureIdentifiers:title:detailText:subtitleText:icon:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v11 = v10;
  type metadata accessor for AdvertisableFeatureDataSource();
  swift_allocObject();

  swift_unknownObjectRetain();

  v16 = AdvertisableFeatureDataSource.init(featureManager:featureIdentifiers:sectionTitle:)(a1, a2, a3, a8, a9);
  v17 = OBJC_IVAR____TtC18HealthExperienceUI43AdvertisableFeatureOnboardingViewController_dataSource;
  *&v11[OBJC_IVAR____TtC18HealthExperienceUI43AdvertisableFeatureOnboardingViewController_dataSource] = v16;

  v11[OBJC_IVAR____TtC18HealthExperienceUI43AdvertisableFeatureOnboardingViewController_hasSectionHeader] = a9 != 0;
  v19 = *&v11[v17];
  if (v19)
  {

    *&v11[OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_dataSourceAdaptor] = 0;
    v20 = &v11[OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_dataSource];
    *v20 = v19;
    v20[1] = &protocol witness table for MutableArrayDataSource;
    *&v11[OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_tableViewStyle] = 0;
    v11[OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_useSystemMargins] = 0;
    v11[OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_allowAnimations] = 0;
    v21 = sub_1BA4A6758();

    v22 = sub_1BA4A6758();

    v25.receiver = v11;
    v25.super_class = type metadata accessor for OnboardingTableViewController();
    v23 = objc_msgSendSuper2(&v25, sel_initWithTitle_detailText_icon_adoptTableViewScrollView_, v21, v22, a10, 1);

    v24 = v23;
    [v24 setModalInPresentation_];
    swift_unknownObjectRelease();

    return v24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B9FCC284()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for AdvertisableFeatureOnboardingViewController();
  objc_msgSendSuper2(&v9, sel_viewDidLoad);
  v1 = [v0 tableView];
  if (!v1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = v1;
  [v1 setSeparatorStyle_];

  v3 = [v0 tableView];
  if (!v3)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = v3;
  [v3 setAllowsSelection_];

  v5 = v0[OBJC_IVAR____TtC18HealthExperienceUI43AdvertisableFeatureOnboardingViewController_hasSectionHeader];
  v6 = [v0 tableView];
  v7 = v6;
  if (v5 == 1)
  {
    v8 = 0.0;
    if (v6)
    {
LABEL_7:
      [v6 setSectionHeaderTopPadding_];

      return;
    }

    __break(1u);
  }

  v8 = 4.0;
  if (v6)
  {
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
}

BOOL sub_1B9FCC3D4()
{
  if (*(v0 + OBJC_IVAR____TtC18HealthExperienceUI43AdvertisableFeatureOnboardingViewController_dataSource))
  {
    sub_1B9FCC42C(v3);
    v1 = v4 != 0;
    sub_1B9FCD638(v3);
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B9FCC42C@<X0>(uint64_t a1@<X8>)
{
  sub_1B9F12538();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38 - v8;
  v10 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  v11 = v5 + 16;
  v12 = *(v5 + 16);
  v42 = v10;
  v43 = v1;
  v12(v9, v1 + v10, v4);
  v13 = sub_1BA4A4548();
  v14 = *(v5 + 8);
  v44 = v5 + 8;
  result = v14(v9, v4);
  if (v13 < 0)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
    v38 = a1;
    if (v13)
    {
      v16 = 0;
      v17 = 0;
      v39 = v4;
      v40 = v11;
      while (1)
      {
        v12(v9, v43 + v42, v4);
        v18 = sub_1BA4A4548();
        result = v14(v9, v4);
        if (v17 < v18)
        {
          v19 = v42;
          v20 = v43;
          v12(v9, v43 + v42, v4);
          v21 = v20 + v19;
          v22 = v41;
          v12(v41, v21, v4);
          v23 = sub_1BA4A4578();
          result = v14(v22, v4);
          if (v17 >= *(v23 + 16))
          {
            __break(1u);
            goto LABEL_18;
          }

          v24 = *(v23 + v16 + 32);
          v25 = *(v23 + v16 + 40);

          v45 = v24;
          v46 = v25;
          v4 = v39;
          v26 = sub_1BA4A44A8();

          result = v14(v9, v4);
          if (v26 > 0)
          {
            break;
          }
        }

        ++v17;
        v16 += 16;
        if (v13 == v17)
        {
          goto LABEL_11;
        }
      }

      v12(v9, v43 + v42, v4);
      v27 = sub_1BA4A4578();
      result = v14(v9, v4);
      if (v17 >= *(v27 + 16))
      {
        goto LABEL_19;
      }

      v28 = v27 + v16;
      v29 = *(v27 + v16 + 32);
      v30 = *(v28 + 40);

      v12(v9, v43 + v42, v4);
      v45 = v29;
      v46 = v30;
      sub_1BA4A44E8();
      v32 = v31;
      v14(v9, v4);
      if (v32)
      {

        v33 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v12(v9, v43 + v42, v4);
        v45 = v29;
        v46 = v30;
        v33 = sub_1BA4A4528();
        v14(v9, v4);
      }

      v35 = v38;
      if (v33[2])
      {
        v36 = v33[4];
        v37 = v33[5];

        sub_1B9F3AB98(v36, v37, v35);
      }

      else
      {

        *(v35 + 32) = 0;
        *v35 = 0u;
        *(v35 + 16) = 0u;
      }
    }

    else
    {
LABEL_11:
      v34 = v38;
      *(v38 + 32) = 0;
      *v34 = 0u;
      v34[1] = 0u;
    }
  }

  return result;
}

id AdvertisableFeatureOnboardingViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AdvertisableFeatureOnboardingViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B9FCC900()
{
  v1 = v0;
  v2 = type metadata accessor for AdvertisableFeatureTableViewCell();
  v3 = swift_conformsToProtocol2();
  if (v3 && v2)
  {
    v4 = v3;
    v5 = (*(v3 + 24))(v2, v3);
    (*(*(v4 + 16) + 8))(v2);
    v7 = sub_1BA4A6758();

    [v1 registerNib:v5 forCellReuseIdentifier:v7];
  }

  else
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_1BA4A2ED8();
    v7 = sub_1BA4A6758();

    [v1 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v7];
  }
}

void sub_1B9FCCA88(uint64_t (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  v6 = v3;
  v7 = a1(0);
  v8 = swift_conformsToProtocol2();
  if (v8 && v7)
  {
    v9 = v8;
    v10 = (*(v8 + 24))(v7, v8);
    (*(*(v9 + 16) + 8))(v7);
    v13 = sub_1BA4A6758();

    [v6 registerNib:v10 forCellReuseIdentifier:v13];
  }

  else
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_1B9FCD7FC(0, a2, a3);
    sub_1BA4A6808();
    v12 = sub_1BA4A6758();

    [v6 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v12];
  }
}

unint64_t sub_1B9FCCCE8(uint64_t a1)
{
  v2 = v1;
  sub_1B9F12538();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v84 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v70 - v9;
  v79 = a1;
  v11 = sub_1BA4A1968();
  v12 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  v13 = *(v6 + 16);
  v82 = (v6 + 16);
  v83 = v12;
  v81 = v13;
  (v13)(v10, v2 + v12, v5);
  v14 = sub_1BA4A4578();
  v15 = *(v6 + 8);
  v85 = v6 + 8;
  v86 = v5;
  v80 = v15;
  (v15)(v10, v5);
  v16 = *(v14 + 16);
  v17 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_sections;
  result = swift_beginAccess();
  if (!v16)
  {
    v21 = MEMORY[0x1E69E7CC0];
    goto LABEL_17;
  }

  v19 = 0;
  v20 = v14 + 40;
  v77 = v16 - 1;
  v21 = MEMORY[0x1E69E7CC0];
  v87 = v11;
  v78 = v14 + 40;
  do
  {
    v22 = (v20 + 16 * v19);
    v23 = v19;
    while (1)
    {
      if (v23 >= *(v14 + 16))
      {
        __break(1u);
        goto LABEL_40;
      }

      v24 = *(v2 + v17);
      if (*(v24 + 16))
      {
        break;
      }

LABEL_4:
      ++v23;
      v22 += 2;
      if (v16 == v23)
      {
        v11 = v87;
        goto LABEL_17;
      }
    }

    v25 = *(v22 - 1);
    v26 = *v22;

    v27 = sub_1B9F24A34(v25, v26);
    if ((v28 & 1) == 0)
    {

      goto LABEL_4;
    }

    v29 = (*(v24 + 56) + 48 * v27);
    v30 = v29[1];
    v72 = *v29;
    v31 = v29[2];
    v71 = v29[3];
    v32 = v29[5];
    v74 = v29[4];
    v76 = v30;

    v75 = v31;
    v33 = v71;

    v73 = v32;

    result = swift_isUniquelyReferenced_nonNull_native();
    v34 = v72;
    if ((result & 1) == 0)
    {
      result = sub_1B9F21540(0, *(v21 + 16) + 1, 1, v21);
      v21 = result;
    }

    v36 = *(v21 + 16);
    v35 = *(v21 + 24);
    if (v36 >= v35 >> 1)
    {
      result = sub_1B9F21540((v35 > 1), v36 + 1, 1, v21);
      v21 = result;
    }

    v19 = v23 + 1;
    *(v21 + 16) = v36 + 1;
    v37 = (v21 + 48 * v36);
    v38 = v76;
    v37[4] = v34;
    v37[5] = v38;
    v37[6] = v75;
    v37[7] = v33;
    v39 = v73;
    v37[8] = v74;
    v37[9] = v39;
    v20 = v78;
    v11 = v87;
  }

  while (v77 != v23);
LABEL_17:

  v40 = *(v21 + 16);

  if (v11 >= v40)
  {
    return 0;
  }

  v41 = v84;
  v42 = v86;
  (v81)(v84, v2 + v83, v86);
  v43 = sub_1BA4A4578();
  (v80)(v41, v42);
  v44 = *(v43 + 16);
  result = swift_beginAccess();
  if (v44)
  {
    v45 = 0;
    v46 = v43 + 40;
    v85 = v44 - 1;
    v47 = MEMORY[0x1E69E7CC0];
    v86 = v43 + 40;
LABEL_20:
    v87 = v47;
    v48 = (v46 + 16 * v45);
    v49 = v45;
    while (v49 < *(v43 + 16))
    {
      v50 = *(v2 + v17);
      if (*(v50 + 16))
      {
        v51 = *(v48 - 1);
        v52 = *v48;

        v53 = sub_1B9F24A34(v51, v52);
        if (v54)
        {
          v55 = (*(v50 + 56) + 48 * v53);
          v56 = v55[1];
          v84 = *v55;
          v57 = v55[2];
          v58 = v55[3];
          v59 = v55[5];
          v82 = v55[4];
          v80 = v56;

          v83 = v58;

          v81 = v59;

          v60 = v87;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1B9F21540(0, *(v60 + 16) + 1, 1, v60);
            v60 = result;
          }

          v61 = v60;
          v62 = *(v60 + 16);
          v63 = v61;
          v64 = *(v61 + 24);
          if (v62 >= v64 >> 1)
          {
            result = sub_1B9F21540((v64 > 1), v62 + 1, 1, v63);
            v63 = result;
          }

          v45 = v49 + 1;
          *(v63 + 16) = v62 + 1;
          v65 = (v63 + 48 * v62);
          v47 = v63;
          v66 = v80;
          v65[4] = v84;
          v65[5] = v66;
          v67 = v82;
          v68 = v83;
          v65[6] = v57;
          v65[7] = v68;
          v65[8] = v67;
          v65[9] = v81;
          v46 = v86;
          if (v85 != v49)
          {
            goto LABEL_20;
          }

          goto LABEL_35;
        }
      }

      ++v49;
      v48 += 2;
      if (v44 == v49)
      {
        v47 = v87;
        goto LABEL_35;
      }
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v47 = MEMORY[0x1E69E7CC0];
LABEL_35:

  result = sub_1BA4A1968();
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_41;
  }

  if (result >= *(v47 + 16))
  {
LABEL_42:
    __break(1u);
  }

  else
  {
    v69 = *(v47 + 48 * result + 32);

    return v69;
  }

  return result;
}

double AdvertisableFeatureDataSource.supplementaryContentConfiguration(ofKind:at:)@<D0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  sub_1BA4A1968();
  if ((v5 & 1) != 0 || (sub_1B9FCCCE8(a2), !v6))
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    v7 = sub_1BA4A4428();
    v8 = MEMORY[0x1E69DC110];
    *(a3 + 24) = v7;
    *(a3 + 32) = v8;
    __swift_allocate_boxed_opaque_existential_1(a3);
    sub_1BA4A43F8();

    sub_1BA4A43B8();
    sub_1B9F6B774(*MEMORY[0x1E69DDDC8], *MEMORY[0x1E69DB958], 0, 0, 0, 0, 1);
    v9 = sub_1BA4A4238();
    sub_1BA4A41E8();
    v9(v13, 0);
    v10 = [objc_opt_self() labelColor];
    v11 = sub_1BA4A4238();
    sub_1BA4A41F8();
    v11(v13, 0);
  }

  return result;
}

unint64_t AdvertisableFeatureDataSource.supplementaryItem(ofKind:at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x80000001BA4E1530 == a2 || (sub_1BA4A8338()) && (sub_1B9FCCCE8(a3), v6))
  {

    v7 = *MEMORY[0x1E69DE3D0];
    a4[3] = &type metadata for UITableView.HeightItem;
    result = sub_1B9FCD740();
    a4[4] = result;
    *a4 = v7;
  }

  else
  {
    a4[3] = &type metadata for UITableView.EmptyItem;
    result = sub_1B9FCD6EC();
    a4[4] = result;
  }

  return result;
}

unint64_t sub_1B9FCD548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x80000001BA4E1530 == a2 || (sub_1BA4A8338()) && (sub_1B9FCCCE8(a3), v6))
  {

    v7 = *MEMORY[0x1E69DE3D0];
    a4[3] = &type metadata for UITableView.HeightItem;
    result = sub_1B9FCD740();
    a4[4] = result;
    *a4 = v7;
  }

  else
  {
    a4[3] = &type metadata for UITableView.EmptyItem;
    result = sub_1B9FCD6EC();
    a4[4] = result;
  }

  return result;
}

uint64_t sub_1B9FCD638(uint64_t a1)
{
  sub_1B9FCD694();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B9FCD694()
{
  if (!qword_1EDC6AD40)
  {
    sub_1B9F32244();
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6AD40);
    }
  }
}

unint64_t sub_1B9FCD6EC()
{
  result = qword_1EBBE9700;
  if (!qword_1EBBE9700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE9700);
  }

  return result;
}

unint64_t sub_1B9FCD740()
{
  result = qword_1EBBE9708;
  if (!qword_1EBBE9708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE9708);
  }

  return result;
}

uint64_t sub_1B9FCD7FC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1B9FCD870()
{
  v1 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x88))(v3);
  (*((*v1 & *v0) + 0x1E0))(v3);
  return sub_1B9F7B644(v3);
}

unint64_t sub_1B9FCD918()
{
  result = qword_1EDC6E1B0;
  if (!qword_1EDC6E1B0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDC6E1B0);
  }

  return result;
}

id NavigationCollectionViewCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id NavigationCollectionViewCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for NavigationCollectionViewCell();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id NavigationCollectionViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id NavigationCollectionViewCell.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for NavigationCollectionViewCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id NavigationCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NavigationCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t (*sub_1B9FCDC8C(void *a1))()
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
  v2[4] = SpecifierViewControllerDataSource.eventHandler.modify(v2);
  return sub_1B9FCDCF4;
}

uint64_t (*SpecifierViewControllerDataSource.eventHandler.modify(void *a1))()
{
  *a1 = 0;
  a1[1] = 0;
  return sub_1B9FCDD1C;
}

uint64_t (*sub_1B9FCDD30(void *a1))()
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
  v2[4] = SpecifierViewControllerDataSource.presentationContext.modify(v2);
  return sub_1B9FCF2C4;
}

void sub_1B9FCDD98(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t (*SpecifierViewControllerDataSource.presentationContext.modify(void *a1))()
{
  *a1 = 0;
  a1[1] = 0;
  return sub_1B9FCF2B8;
}

double SpecifierViewControllerDataSource.makeHeaderConfiguration()@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

void sub_1B9FCE184()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:v0 action:sel_dismissNavigationController];
  sub_1BA4A7DF8();
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  MEMORY[0x1BFAF1350](0xD000000000000016, 0x80000001BA4E1B10);
  v2 = sub_1BA4A6758();

  [v1 setAccessibilityIdentifier_];

  v3 = [v0 navigationItem];
  [v3 setRightBarButtonItem_];
}

char *sub_1B9FCE338()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC18HealthExperienceUI23SpecifierViewController_dataSource];
  v3 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI23SpecifierViewController_dataSource];
  v4 = *(v2 + 1);
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 64);
  v7 = v3;
  v8 = v6(ObjectType, v4);

  v9 = *v2;
  v10 = *(v2 + 1);
  v11 = swift_getObjectType();
  v12 = *(v10 + 56);
  v13 = v9;
  v12(v27, v11, v10);

  v14 = v30;
  if (v30)
  {
    v26 = v1;
    v16 = v27[0];
    v15 = v27[1];
    v17 = v28;
    v18 = v29;
    v19 = sub_1B9FCEED4(v27);
    if (v19)
    {
      v20 = v19;
      sub_1B9F1C048(0, &qword_1EDC6B400);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1BA4B5470;
      *(v21 + 32) = v20;
      v27[0] = v21;
      v22 = v20;
      sub_1B9FE23B8(v8);
      sub_1B9FCF068(v16, v15, v17, v18, v14);

      v8 = v27[0];
    }

    else
    {
      sub_1B9FCF068(v16, v15, v17, v18, v14);
    }

    v1 = v26;
  }

  sub_1B9FE511C(v8);
  v23 = sub_1BA4A6AE8();

  [v1 setSpecifiers_];

  v24 = sub_1B9FE511C(v8);

  return v24;
}

void sub_1B9FCE5A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BA4A18F8();
  v14.receiver = v3;
  v14.super_class = type metadata accessor for SpecifierViewController();
  objc_msgSendSuper2(&v14, sel_tableView_didSelectRowAtIndexPath_, a1, v6);

  v7 = sub_1BA4A18F8();
  v8 = [v3 specifierAtIndexPath_];

  if (v8)
  {
    v9 = &v3[OBJC_IVAR____TtC18HealthExperienceUI23SpecifierViewController_delegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v10 = *(v9 + 1);
      ObjectType = swift_getObjectType();
      v12 = *(v10 + 8);
      v13 = v8;
      v12(a1, v13, a2, ObjectType, v10);

      if (v3[OBJC_IVAR____TtC18HealthExperienceUI23SpecifierViewController_shouldReloadSpecifiersAfterSelection] == 1)
      {
        [v3 reloadSpecifiers];
      }

      swift_unknownObjectRelease();
    }
  }
}

void sub_1B9FCE7DC()
{
  v1 = v0;
  v2 = sub_1BA4A6758();
  v22 = [v0 specifierForID_];

  if (v22)
  {
    v3 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI23SpecifierViewController_dataSource];
    v4 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI23SpecifierViewController_dataSource + 8];
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 56);
    v7 = v3;
    v6(&aBlock, ObjectType, v4);

    v8 = v28;
    if (v28)
    {
      v10 = aBlock;
      v9 = v25;
      v12 = v26;
      v11 = v27;
      v13 = sub_1B9FCEED4(&aBlock);
      if (v13)
      {
        v14 = v13;
        v20 = v12;
        v21 = objc_opt_self();
        v15 = swift_allocObject();
        v15[2] = v1;
        v15[3] = v22;
        v15[4] = v14;
        v16 = swift_allocObject();
        *(v16 + 16) = sub_1B9FCF0C4;
        *(v16 + 24) = v15;
        v28 = sub_1B9F7B0CC;
        v29 = v16;
        aBlock = MEMORY[0x1E69E9820];
        v25 = 1107296256;
        v26 = sub_1B9F7B0FC;
        v27 = &block_descriptor;
        v17 = _Block_copy(&aBlock);
        v18 = v1;
        v23 = v22;
        v19 = v14;

        [v21 performWithoutAnimation_];
        _Block_release(v17);
        LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

        if (v17)
        {
          __break(1u);
        }

        else
        {
          [v18 _setContentOverlayInsets_];

          sub_1B9FCF068(v10, v9, v20, v11, v8);
        }
      }

      else
      {
        sub_1B9FCF068(v10, v9, v12, v11, v8);
      }
    }

    else
    {
    }
  }
}

void sub_1B9FCEAE8(void *a1, void *a2, void *a3)
{
  sub_1B9F1C048(0, &unk_1EDC6B3F0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BA4B5480;
  v7 = sub_1B9FCF0D0();
  *(v6 + 56) = v7;
  *(v6 + 32) = a2;
  v8 = a2;
  v9 = sub_1BA4A6AE8();

  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BA4B5480;
  *(v10 + 56) = v7;
  *(v10 + 32) = a3;
  v11 = a3;
  v12 = sub_1BA4A6AE8();

  [a1 updateSpecifiers:v9 withSpecifiers:v12];
}

id sub_1B9FCEC40()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpecifierViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B9FCECF8(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_1BA4A6758();
  [v3 reloadSpecifierID:v5 animated:a3 & 1];
}

void sub_1B9FCED54(unint64_t a1)
{
  sub_1B9FE511C(a1);
  v2 = sub_1BA4A6AE8();

  v3 = sub_1BA4A6758();
  [v1 insertContiguousSpecifiers:v2 afterSpecifierID:v3 animated:1];
}

void sub_1B9FCEDF8(unint64_t a1)
{
  sub_1B9FE511C(a1);
  v2 = sub_1BA4A6AE8();

  [v1 removeContiguousSpecifiers:v2 animated:1];
}

BOOL sub_1B9FCEE6C()
{
  v1 = sub_1BA4A6758();
  v2 = [v0 specifierForID_];

  if (v2)
  {
  }

  return v2 != 0;
}

id sub_1B9FCEED4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = objc_opt_self();
  v5 = sub_1BA4A6758();
  v6 = [v4 groupSpecifierWithID_];

  if (v6)
  {
    type metadata accessor for SpecifierHeaderView();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = NSStringFromClass(ObjCClassFromMetadata);
    if (!v8)
    {
      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v8 = sub_1BA4A6758();
    }

    [v6 setProperty:v8 forKey:*MEMORY[0x1E69C5908]];

    sub_1B9FCF11C(v1, v2, v3);

    v9 = sub_1BA4A8398();
    v10 = sub_1BA4A6758();
    [v6 setProperty:v9 forKey:v10];
    swift_unknownObjectRelease();
  }

  return v6;
}

void *sub_1B9FCF068(void *result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    sub_1B9FCF0B4(result, a2, a3);
  }

  return result;
}

void sub_1B9FCF0B4(void *a1, uint64_t a2, char a3)
{
  if (a3 < 0)
  {
  }

  else
  {
  }
}

unint64_t sub_1B9FCF0D0()
{
  result = qword_1EBBE9758;
  if (!qword_1EBBE9758)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBBE9758);
  }

  return result;
}

id sub_1B9FCF11C(void *a1, uint64_t a2, char a3)
{
  if (a3 < 0)
  {
  }

  else
  {
    return a1;
  }
}

char *sub_1B9FCF12C(void *a1, uint64_t a2, uint64_t a3, char a4, _BYTE *a5, uint64_t a6, uint64_t a7)
{
  *&a5[OBJC_IVAR____TtC18HealthExperienceUI23SpecifierViewController_delegate + 8] = 0;
  v12 = swift_unknownObjectWeakInit();
  a5[OBJC_IVAR____TtC18HealthExperienceUI23SpecifierViewController_shouldReloadSpecifiersAfterSelection] = 0;
  a5[OBJC_IVAR____TtC18HealthExperienceUI23SpecifierViewController_shouldReloadSpecifiersOnViewWillAppear] = 1;
  v13 = &a5[OBJC_IVAR____TtC18HealthExperienceUI23SpecifierViewController_dataSource];
  *v13 = a1;
  v13[1] = a7;
  *(v12 + 8) = a3;
  swift_unknownObjectWeakAssign();
  v29.receiver = a5;
  v29.super_class = type metadata accessor for SpecifierViewController();
  v14 = a1;
  v15 = objc_msgSendSuper2(&v29, sel_initWithNibName_bundle_, 0, 0);
  v16 = &v15[OBJC_IVAR____TtC18HealthExperienceUI23SpecifierViewController_dataSource];
  v17 = *&v15[OBJC_IVAR____TtC18HealthExperienceUI23SpecifierViewController_dataSource];
  v18 = *&v15[OBJC_IVAR____TtC18HealthExperienceUI23SpecifierViewController_dataSource + 8];
  ObjectType = swift_getObjectType();
  v20 = *(v18 + 16);
  v21 = v15;
  v22 = v17;
  v20(v15, &off_1F37FEA68, ObjectType, v18);

  v23 = *v16;
  v24 = *(v16 + 1);
  v25 = swift_getObjectType();
  v26 = *(v24 + 40);
  v27 = v23;
  v26(v15, &off_1F37FEA58, v25, v24);

  if (a4)
  {
    sub_1B9FCE184();
  }

  return v21;
}

uint64_t sub_1B9FCF2C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B9FD1FEC();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.healthStore.getter()
{
  sub_1B9F64FA8();
  sub_1BA4A5748();
  return v1;
}

void (*EnvironmentValues.healthStore.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_1B9F64FA8();
  sub_1BA4A5748();
  return sub_1B9FCF404;
}

void sub_1B9FCF404(uint64_t a1, char a2)
{
  v2 = *a1;
  *(a1 + 8) = *a1;
  if (a2)
  {
    v4 = v2;
    sub_1BA4A5758();
    v5 = *a1;
  }

  else
  {
    sub_1BA4A5758();
  }
}

uint64_t View.baseAutomationIdentifier(_:)()
{
  swift_getKeyPath();
  sub_1BA4A5EB8();
}

uint64_t sub_1B9FCF518()
{
  sub_1B9F5B440();

  return sub_1BA4A5738();
}

uint64_t sub_1B9FCF578@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  *a1 = v3;
  return result;
}

uint64_t sub_1B9FCF5F8(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  v2 = v1;
  return sub_1BA4A4F38();
}

uint64_t sub_1B9FCF670()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1BA4A4F38();
}

uint64_t (*sub_1B9FCF6E0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1BA4A4F18();
  return sub_1B9FD2044;
}

uint64_t (*sub_1B9FCF7DC(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_1B9F2AC84(0, &qword_1EBBE9760, sub_1B9F2ACE8, MEMORY[0x1E695C060]);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC18HealthExperienceUI19ProvidedViewContext__healthStore;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_1B9F2AC84(0, &qword_1EDC6B6F0, sub_1B9F2ACE8, MEMORY[0x1E695C070]);
  v5[16] = v11;
  sub_1BA4A4EF8();
  swift_endAccess();
  return sub_1B9FD2048;
}

uint64_t sub_1B9FCF994()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();
}

uint64_t sub_1B9FCFA10(uint64_t a1)
{
  sub_1B9F0A534(a1, v3);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B9F0A534(v3, &v2);

  sub_1BA4A4F38();
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t sub_1B9FCFA9C(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B9F0A534(a1, v3);

  sub_1BA4A4F38();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t (*sub_1B9FCFB1C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1BA4A4F18();
  return sub_1B9FD2044;
}

uint64_t sub_1B9FCFBC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  swift_beginAccess();
  sub_1B9F2AC84(0, a5, a6, MEMORY[0x1E695C070]);
  sub_1BA4A4EF8();
  return swift_endAccess();
}

uint64_t sub_1B9FCFC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7, unint64_t *a8)
{
  v21 = a8;
  sub_1B9F2AC84(0, a5, a6, MEMORY[0x1E695C060]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v21 - v17;
  v19 = *(v12 + 16);
  v19(&v21 - v17, a1, v11, v16);
  (v19)(v14, v18, v11);
  swift_beginAccess();
  sub_1B9F2AC84(0, v21, a6, MEMORY[0x1E695C070]);
  sub_1BA4A4F08();
  swift_endAccess();
  return (*(v12 + 8))(v18, v11);
}

uint64_t sub_1B9FCFE30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  swift_beginAccess();
  sub_1B9F2AC84(0, a2, a3, MEMORY[0x1E695C070]);
  sub_1BA4A4EF8();
  return swift_endAccess();
}

uint64_t sub_1B9FCFEF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, unint64_t *a5)
{
  sub_1B9F2AC84(0, a2, a3, MEMORY[0x1E695C060]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8);
  (*(v10 + 16))(&v14 - v12, a1, v9, v11);
  swift_beginAccess();
  sub_1B9F2AC84(0, a5, a3, MEMORY[0x1E695C070]);
  sub_1BA4A4F08();
  swift_endAccess();
  return (*(v10 + 8))(a1, v9);
}

uint64_t (*sub_1B9FD0050(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_1B9F2AC84(0, &qword_1EBBE9768, sub_1B9F1F4BC, MEMORY[0x1E695C060]);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC18HealthExperienceUI19ProvidedViewContext__healthExperienceStore;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_1B9F2AC84(0, &qword_1EDC6B710, sub_1B9F1F4BC, MEMORY[0x1E695C070]);
  v5[16] = v11;
  sub_1BA4A4EF8();
  swift_endAccess();
  return sub_1B9FD2048;
}

uint64_t ProvidedViewContext.__allocating_init(healthStore:pinnedContentManagerProvider:pinnedContentManager:healthExperienceStore:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  swift_beginAccess();
  v11 = a1;
  sub_1B9F2ACE8();
  v9 = a1;
  sub_1BA4A4EE8();
  swift_endAccess();
  *(v8 + OBJC_IVAR____TtC18HealthExperienceUI19ProvidedViewContext_pinnedContentManagerProvider) = a2;
  sub_1B9F0A534(a3, v8 + OBJC_IVAR____TtC18HealthExperienceUI19ProvidedViewContext_pinnedContentManager);
  sub_1B9F0A534(a4, v12);
  swift_beginAccess();
  sub_1B9F0A534(v12, &v11);
  sub_1B9F1F4BC();

  sub_1BA4A4EE8();
  __swift_destroy_boxed_opaque_existential_1(v12);
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v8;
}

uint64_t ProvidedViewContext.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI19ProvidedViewContext__healthStore;
  v2 = MEMORY[0x1E695C070];
  sub_1B9F2AC84(0, &qword_1EDC6B6F0, sub_1B9F2ACE8, MEMORY[0x1E695C070]);
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = OBJC_IVAR____TtC18HealthExperienceUI19ProvidedViewContext__healthExperienceStore;
  sub_1B9F2AC84(0, &qword_1EDC6B710, sub_1B9F1F4BC, v2);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18HealthExperienceUI19ProvidedViewContext_pinnedContentManager);
  return v0;
}

uint64_t sub_1B9FD048C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ProvidedViewContext(0);
  result = sub_1BA4A4D78();
  *a1 = result;
  return result;
}

uint64_t sub_1B9FD04CC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();
}

uint64_t sub_1B9FD0548(uint64_t a1)
{
  v2 = sub_1BA4A40C8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  swift_getKeyPath();
  swift_getKeyPath();
  (v10)(v5, v9, v2);

  sub_1BA4A4F38();
  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_1B9FD06B8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();
}

uint64_t sub_1B9FD0730(uint64_t a1)
{
  v2 = sub_1BA4A40C8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v3 + 16))(v5, a1, v2);

  sub_1BA4A4F38();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_1B9FD0858(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1BA4A4F18();
  return sub_1B9FD08FC;
}

uint64_t (*sub_1B9FD0958(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_1B9F2AC84(0, &qword_1EBBE9770, MEMORY[0x1E69DC0B8], MEMORY[0x1E695C060]);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC18HealthExperienceUI19ObservableCellState__state;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_1B9F2AC84(0, &qword_1EDC6B700, MEMORY[0x1E69DC0B8], MEMORY[0x1E695C070]);
  v5[16] = v11;
  sub_1BA4A4EF8();
  swift_endAccess();
  return sub_1B9FD2048;
}

double sub_1B9FD0B10@<D0>(double *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1B9FD0B90()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1BA4A4F38();
}

double sub_1B9FD0C0C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  return v1;
}

uint64_t sub_1B9FD0C80()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1BA4A4F38();
}

uint64_t (*sub_1B9FD0CF8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1BA4A4F18();
  return sub_1B9FD2044;
}

void sub_1B9FD0D9C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_1B9FD0E04()
{
  swift_beginAccess();
  sub_1B9F5FA28(0, &qword_1EDC6B718, MEMORY[0x1E69E7DE0], MEMORY[0x1E695C070]);
  sub_1BA4A4EF8();
  return swift_endAccess();
}

uint64_t sub_1B9FD0E94(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7DE0];
  sub_1B9F5FA28(0, &qword_1EBBE9778, MEMORY[0x1E69E7DE0], MEMORY[0x1E695C060]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  v12 = *(v5 + 16);
  v12(&v14 - v10, a1, v4, v9);
  (v12)(v7, v11, v4);
  swift_beginAccess();
  sub_1B9F5FA28(0, &qword_1EDC6B718, v2, MEMORY[0x1E695C070]);
  sub_1BA4A4F08();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_1B9FD1050()
{
  swift_beginAccess();
  sub_1B9F5FA28(0, &qword_1EDC6B718, MEMORY[0x1E69E7DE0], MEMORY[0x1E695C070]);
  sub_1BA4A4EF8();
  return swift_endAccess();
}

uint64_t sub_1B9FD10DC(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7DE0];
  sub_1B9F5FA28(0, &qword_1EBBE9778, MEMORY[0x1E69E7DE0], MEMORY[0x1E695C060]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3);
  (*(v5 + 16))(&v9 - v7, a1, v4, v6);
  swift_beginAccess();
  sub_1B9F5FA28(0, &qword_1EDC6B718, v2, MEMORY[0x1E695C070]);
  sub_1BA4A4F08();
  swift_endAccess();
  return (*(v5 + 8))(a1, v4);
}

uint64_t (*sub_1B9FD124C(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_1B9F5FA28(0, &qword_1EBBE9778, MEMORY[0x1E69E7DE0], MEMORY[0x1E695C060]);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC18HealthExperienceUI19ObservableCellState__cellWidth;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_1B9F5FA28(0, &qword_1EDC6B718, MEMORY[0x1E69E7DE0], MEMORY[0x1E695C070]);
  v5[16] = v11;
  sub_1BA4A4EF8();
  swift_endAccess();
  return sub_1B9FD13EC;
}

void sub_1B9FD13F0(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_1BA4A4F08();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_1BA4A4F08();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t ObservableCellState.__allocating_init(state:cellWidth:)(char *a1, double a2)
{
  v4 = sub_1BA4A40C8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  v11 = swift_allocObject();
  v12 = *(v5 + 16);
  v12(v10, a1, v4);
  swift_beginAccess();
  v12(v7, v10, v4);
  sub_1BA4A4EE8();
  v13 = *(v5 + 8);
  v13(v10, v4);
  swift_endAccess();
  swift_beginAccess();
  v15 = a2;
  sub_1BA4A4EE8();
  swift_endAccess();
  v13(a1, v4);
  return v11;
}

uint64_t ObservableCellState.init(state:cellWidth:)(char *a1, double a2)
{
  v5 = sub_1BA4A40C8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  v13 = *(v6 + 16);
  v13(&v16 - v11, a1, v5, v10);
  swift_beginAccess();
  (v13)(v8, v12, v5);
  sub_1BA4A4EE8();
  v14 = *(v6 + 8);
  v14(v12, v5);
  swift_endAccess();
  swift_beginAccess();
  v16 = a2;
  sub_1BA4A4EE8();
  swift_endAccess();
  v14(a1, v5);
  return v2;
}

uint64_t ObservableCellState.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI19ObservableCellState__state;
  sub_1B9F2AC84(0, &qword_1EDC6B700, MEMORY[0x1E69DC0B8], MEMORY[0x1E695C070]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC18HealthExperienceUI19ObservableCellState__cellWidth;
  sub_1B9F5FA28(0, &qword_1EDC6B718, MEMORY[0x1E69E7DE0], MEMORY[0x1E695C070]);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t ObservableCellState.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI19ObservableCellState__state;
  sub_1B9F2AC84(0, &qword_1EDC6B700, MEMORY[0x1E69DC0B8], MEMORY[0x1E695C070]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC18HealthExperienceUI19ObservableCellState__cellWidth;
  sub_1B9F5FA28(0, &qword_1EDC6B718, MEMORY[0x1E69E7DE0], MEMORY[0x1E695C070]);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

unint64_t sub_1B9FD1ED8()
{
  result = qword_1EDC5EC00;
  if (!qword_1EDC5EC00)
  {
    sub_1B9F2AC84(255, &qword_1EDC5EBF8, sub_1B9F2ACE8, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5EC00);
  }

  return result;
}

unint64_t sub_1B9FD1F60()
{
  result = qword_1EBBE9788;
  if (!qword_1EBBE9788)
  {
    sub_1B9F5FA28(255, &qword_1EBBE9780, MEMORY[0x1E69E6158], MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE9788);
  }

  return result;
}

unint64_t sub_1B9FD1FEC()
{
  result = qword_1EDC5E550;
  if (!qword_1EDC5E550)
  {
    sub_1B9F2ACE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5E550);
  }

  return result;
}

uint64_t sub_1B9FD204C(uint64_t a1, uint64_t *a2)
{
  sub_1B9F68124(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileCollectionViewListCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v6, v3 + v4);
  swift_endAccess();
  sub_1B9FD2F6C();
  return sub_1B9F43A50(v6, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
}

uint64_t sub_1B9FD20D4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileCollectionViewListCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1B9FD212C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileCollectionViewListCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1B9FD2F6C();
  return sub_1B9F43A50(a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
}

uint64_t (*sub_1B9FD21B0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1B9FD2214;
}

uint64_t sub_1B9FD2214(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1B9FD2F6C();
  }

  return result;
}

id sub_1B9FD2270(uint64_t *a1, SEL *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = [objc_opt_self() *a2];
    v7 = sub_1B9F6B774(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DB978], 0, 0x8000, 0, 0, 1);
    v8 = [objc_allocWithZone(type metadata accessor for DynamicFontLabel()) initWithFrame_];
    [v8 setTranslatesAutoresizingMaskIntoConstraints_];
    v9 = v8;
    [v9 setAdjustsFontForContentSizeCategory_];
    [v9 setText_];
    [v9 setFont_];
    [v9 setTextColor_];
    [v9 setLineBreakMode_];
    [v9 setNumberOfLines_];

    LODWORD(v10) = 1132068864;
    [v9 setContentHuggingPriority:0 forAxis:v10];
    LODWORD(v11) = 1132068864;
    [v9 setContentCompressionResistancePriority:0 forAxis:v11];

    v12 = *(v2 + v3);
    *(v2 + v3) = v9;
    v5 = v9;

    v4 = 0;
  }

  v13 = v4;
  return v5;
}

id ProfileCollectionViewListCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ProfileCollectionViewListCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI29ProfileCollectionViewListCell_item];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI29ProfileCollectionViewListCell____lazy_storage___textLabel] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI29ProfileCollectionViewListCell____lazy_storage___detailTextLabel] = 0;
  v10 = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI29ProfileCollectionViewListCell_detailTextLabelHiddenConstraints] = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI29ProfileCollectionViewListCell_detailTextLabelVisibleConstraints] = v10;
  v17.receiver = v4;
  v17.super_class = type metadata accessor for ProfileCollectionViewListCell();
  v11 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = [v11 contentView];
  v13 = sub_1B9FD2248();
  [v12 addSubview_];

  v14 = [v11 contentView];
  v15 = sub_1B9FD225C();
  [v14 addSubview_];

  sub_1B9FD27D4();
  [v11 setUserInteractionEnabled_];

  return v11;
}

id ProfileCollectionViewListCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ProfileCollectionViewListCell.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC18HealthExperienceUI29ProfileCollectionViewListCell_item];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI29ProfileCollectionViewListCell____lazy_storage___textLabel] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI29ProfileCollectionViewListCell____lazy_storage___detailTextLabel] = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI29ProfileCollectionViewListCell_detailTextLabelHiddenConstraints] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI29ProfileCollectionViewListCell_detailTextLabelVisibleConstraints] = v4;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for ProfileCollectionViewListCell();
  v5 = objc_msgSendSuper2(&v13, sel_initWithCoder_, a1);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v8 = [v7 contentView];
    v9 = sub_1B9FD2248();
    [v8 addSubview_];

    v10 = [v7 contentView];
    v11 = sub_1B9FD225C();
    [v10 addSubview_];

    sub_1B9FD27D4();
  }

  return v6;
}

void sub_1B9FD27D4()
{
  sub_1B9F109F8();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BA4B5880;
  v2 = v1;
  v3 = [v0 contentView];
  v4 = [v3 heightAnchor];

  v5 = [v4 constraintGreaterThanOrEqualToConstant_];
  v2[4] = v5;
  v6 = sub_1B9FD2248();
  v7 = [v6 topAnchor];

  v8 = [v0 &selRef_fetchSources];
  v9 = [v8 topAnchor];

  v10 = [v7 constraintEqualToAnchor:v9 constant:8.0];
  v2[5] = v10;
  v11 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileCollectionViewListCell____lazy_storage___textLabel;
  v12 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI29ProfileCollectionViewListCell____lazy_storage___textLabel] leadingAnchor];
  v13 = [v0 &selRef_fetchSources];
  v14 = [v13 &selRef__totalDistance + 1];

  v15 = [v12 constraintEqualToAnchor:v14 constant:16.0];
  v2[6] = v15;
  v16 = [*&v0[v11] bottomAnchor];
  v17 = [v0 &selRef_fetchSources];
  v18 = [v17 bottomAnchor];

  v19 = [v16 constraintEqualToAnchor:v18 constant:-8.0];
  v2[7] = v19;
  v20 = [*&v0[v11] heightAnchor];
  v21 = [v20 constraintGreaterThanOrEqualToConstant_];

  v2[8] = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1BA4B5470;
  v23 = [*&v0[v11] trailingAnchor];
  v24 = [v0 &selRef_fetchSources];
  v25 = [v24 &selRef_cloudSyncObserverSyncCompleted_ + 4];

  v26 = [v23 constraintEqualToAnchor:v25 constant:8.0];
  *(v22 + 32) = v26;
  v27 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileCollectionViewListCell_detailTextLabelHiddenConstraints;
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI29ProfileCollectionViewListCell_detailTextLabelHiddenConstraints] = v22;

  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1BA4B5890;
  v29 = sub_1B9FD225C();
  v30 = [v29 topAnchor];

  v31 = [v0 &selRef_fetchSources];
  v32 = [v31 topAnchor];

  v33 = [v30 constraintEqualToAnchor:v32 constant:8.0];
  *(v28 + 32) = v33;
  v34 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileCollectionViewListCell____lazy_storage___detailTextLabel;
  v35 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI29ProfileCollectionViewListCell____lazy_storage___detailTextLabel] bottomAnchor];
  v36 = [v0 &selRef_fetchSources];
  v37 = [v36 bottomAnchor];

  v38 = [v35 constraintEqualToAnchor:v37 constant:-8.0];
  *(v28 + 40) = v38;
  v39 = [*&v0[v34] leadingAnchor];
  v40 = [*&v0[v11] trailingAnchor];
  v41 = [v39 constraintGreaterThanOrEqualToAnchor:v40 constant:8.0];

  *(v28 + 48) = v41;
  v42 = [*&v0[v34] trailingAnchor];
  v43 = [v0 contentView];
  v44 = [v43 trailingAnchor];

  v45 = [v42 constraintEqualToAnchor:v44 constant:-16.0];
  *(v28 + 56) = v45;
  v46 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileCollectionViewListCell_detailTextLabelVisibleConstraints;
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI29ProfileCollectionViewListCell_detailTextLabelVisibleConstraints] = v28;

  if (sub_1B9FD2EC0())
  {
    v47 = v27;
  }

  else
  {
    v47 = v46;
  }

  v48 = *&v0[v47];

  v49 = objc_opt_self();
  sub_1B9F73B50(v48);
  sub_1B9F740B0();
  v50 = sub_1BA4A6AE8();

  [v49 activateConstraints_];
}

void sub_1B9FD2DC4()
{
  sub_1B9FD2EC0();
  v0 = objc_opt_self();
  sub_1B9F740B0();

  v1 = sub_1BA4A6AE8();

  [v0 deactivateConstraints_];

  v2 = sub_1BA4A6AE8();

  [v0 activateConstraints_];
}

uint64_t sub_1B9FD2EC0()
{
  v1 = sub_1B9FD225C();
  v2 = [v1 text];

  if (!v2)
  {
    return 1;
  }

  result = [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileCollectionViewListCell____lazy_storage___detailTextLabel) text];
  if (result)
  {
    v4 = result;
    v5 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v7 = v6;

    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    return v8 == 0;
  }

  return result;
}

uint64_t sub_1B9FD2F6C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileCollectionViewListCell_item;
  swift_beginAccess();
  sub_1B9F68124(v0 + v1, v21);
  if (!v22)
  {
    sub_1B9F43A50(v21, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
    v18 = 0u;
    v19 = 0u;
    v20 = 0;
    return sub_1B9F43A50(&v18, &qword_1EBBE97B8, &qword_1EBBE97C0);
  }

  sub_1B9F0D950(0, &qword_1EDC6E1B0);
  sub_1B9F0D950(0, &qword_1EBBE97C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    return sub_1B9F43A50(&v18, &qword_1EBBE97B8, &qword_1EBBE97C0);
  }

  if (!*(&v19 + 1))
  {
    return sub_1B9F43A50(&v18, &qword_1EBBE97B8, &qword_1EBBE97C0);
  }

  sub_1B9F1134C(&v18, v21);
  v2 = v0;
  v3 = sub_1B9FD2248();
  v4 = v22;
  v5 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  (*(v5 + 16))(v4, v5);
  if (v6)
  {
    v7 = sub_1BA4A6758();
  }

  else
  {
    v7 = 0;
  }

  [v3 setText_];

  v9 = sub_1B9FD225C();
  v10 = v22;
  v11 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  (*(v11 + 24))(v10, v11);
  if (v12)
  {
    v13 = sub_1BA4A6758();
  }

  else
  {
    v13 = 0;
  }

  [v9 setText_];

  v14 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileCollectionViewListCell____lazy_storage___textLabel);
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 labelColor];
  [v16 setTextColor_];

  sub_1B9FD2DC4();
  return __swift_destroy_boxed_opaque_existential_1(v21);
}

id ProfileCollectionViewListCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProfileCollectionViewListCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B9FD3480()
{
  v0 = MEMORY[0x1E69E6720];
  sub_1B9F1D0F4(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v25 = &v22 - v2;
  v3 = sub_1BA4A3FB8();
  v24 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1BA4A3F18();
  v6 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F1D0F4(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8], v0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - v13;
  v15 = sub_1BA31D5B4();
  MEMORY[0x1BFAF1F00](v15);
  v16 = sub_1BA4A4168();
  if ((*(*(v16 - 8) + 48))(v14, 1, v16))
  {
    v17 = MEMORY[0x1E69DC0D8];
    sub_1B9FD7DF0(v14, v11, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
    MEMORY[0x1BFAF1F10](v11);
    sub_1B9FD7E70(v14, &qword_1EDC6B770, v17);
  }

  else
  {
    v18 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    sub_1BA4A4118();
    MEMORY[0x1BFAF1F10](v14);
  }

  sub_1B9F1D0F4(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
  sub_1BA4A3FE8();
  *(swift_allocObject() + 16) = xmmword_1BA4B5480;
  v19 = v23;
  (*(v6 + 104))(v8, *MEMORY[0x1E69DBF28], v23);
  v20 = sub_1BA4A3F48();
  (*(*(v20 - 8) + 56))(v25, 1, 1, v20);
  sub_1BA4A3FA8();
  sub_1BA4A3F78();
  (*(v24 + 8))(v5, v3);
  (*(v6 + 8))(v8, v19);
  return sub_1BA4A75F8();
}

uint64_t sub_1B9FD3904()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v99 = *(v2 - 8);
  v100 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1E69E6720];
  sub_1B9F1D0F4(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v87 - v10);
  v12 = sub_1BA4A4428();
  v94 = *(v12 - 8);
  v95 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v93 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BA4A1798();
  v92 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F1D0F4(0, &qword_1EBBE97C8, MEMORY[0x1E69A33B0], v5);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v87 - v18;
  v98 = sub_1BA4A33C8();
  v20 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v22 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v97 = &v87 - v24;
  v25 = OBJC_IVAR____TtC18HealthExperienceUI16IconWithNameCell_item;
  swift_beginAccess();
  sub_1B9F68124(&v1[v25], v102);
  if (v103)
  {
    v91 = v8;
    sub_1B9F0D950(0, &qword_1EDC6E1B0);
    type metadata accessor for YouAreSharingWithItem();
    if (swift_dynamicCast())
    {
      v99 = v11;
      v26 = v101[0];
      v27 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI21YouAreSharingWithCell_accessibilityIdentifierBase + 8];
      v87 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI21YouAreSharingWithCell_accessibilityIdentifierBase];
      v88 = v27;
      v28 = sub_1BA4A6758();
      [v1 setAccessibilityIdentifier_];

      v29 = OBJC_IVAR____TtC18HealthExperienceUI21YouAreSharingWithItem_sharingEntryProfileInformation;
      v89 = v26;
      swift_beginAccess();
      v90 = *(v20 + 16);
      v30 = v97;
      v100 = v20;
      v31 = v98;
      v90(v97, v26 + v29, v98);
      sub_1BA4A3278();
      sub_1BA4A3358();
      sub_1B9FD6AA8(v19, v30, v16, 1, v1);
      v92[1](v16, v14);
      v32 = MEMORY[0x1E69A33B0];
      sub_1B9FD7E70(v19, &qword_1EBBE97C8, MEMORY[0x1E69A33B0]);
      sub_1BA4A3278();
      ObjectType = v1;
      sub_1B9FD44D8(v19);
      v33 = v19;
      v34 = v89;
      sub_1B9FD7E70(v33, &qword_1EBBE97C8, v32);
      v35 = v93;
      sub_1BA4A4198();
      v90(v22, v34 + v29, v31);
      v36 = v35;
      sub_1BA4A3348();
      v37 = *(v100 + 8);
      v100 += 8;
      v92 = v37;
      (v37)(v22, v31);
      sub_1BA4A43B8();
      v38 = *(v34 + OBJC_IVAR____TtC18HealthExperienceUI21YouAreSharingWithItem_image);
      if (v38)
      {
        v39 = v38;
        sub_1BA4A43D8();
        v40 = sub_1BA4A42D8();
        sub_1BA4A4268();
        v40(v102, 0);
        sub_1BA4A4348();
        v41 = sub_1BA4A43C8();
        if (v41)
        {
          v42 = v41;
          v102[0] = v87;
          v102[1] = v88;

          MEMORY[0x1BFAF1350](0x6567616D492ELL, 0xE600000000000000);
          v43 = sub_1BA4A6758();

          [v42 setAccessibilityIdentifier_];
        }
      }

      v44 = *(v34 + OBJC_IVAR____TtC18HealthExperienceUI21YouAreSharingWithItem_status);
      v45 = ObjectType;
      if (v44)
      {
        v46 = objc_allocWithZone(MEMORY[0x1E696AD40]);
        v47 = v44;
        v48 = [v46 initWithAttributedString_];
        v49 = *MEMORY[0x1E69DB650];
        v50 = v34;
        v51 = *(v34 + OBJC_IVAR____TtC18HealthExperienceUI21YouAreSharingWithItem_disabledState);
        v52 = objc_opt_self();
        v53 = [v52 secondaryLabelColor];
        if (v51 != 2)
        {
          v66 = [v52 secondaryLabelColor];

          v53 = v66;
        }

        v67 = v48;
        [v67 addAttribute:v49 value:v53 range:{0, objc_msgSend(v67, sel_length)}];

        sub_1BA4A4308();
        sub_1BA4A4378();

        v34 = v50;
      }

      v68 = OBJC_IVAR____TtC18HealthExperienceUI21YouAreSharingWithItem_disabledState;
      v69 = *(v34 + OBJC_IVAR____TtC18HealthExperienceUI21YouAreSharingWithItem_disabledState);
      v70 = objc_opt_self();
      v71 = [v70 labelColor];
      if (v69 != 2)
      {
        [v70 secondaryLabelColor];
      }

      v72 = v94;
      v73 = sub_1BA4A4238();
      sub_1BA4A41F8();
      v73(v102, 0);
      v74 = v95;
      v103 = v95;
      v104 = MEMORY[0x1E69DC110];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v102);
      (*(v72 + 16))(boxed_opaque_existential_1, v36, v74);
      MEMORY[0x1BFAF1EF0](v102);
      [v45 setUserInteractionEnabled_];
      v76 = [v45 contentView];
      v77 = v76;
      if (*(v34 + v68))
      {
        v78 = 0.75;
      }

      else
      {
        v78 = 1.0;
      }

      [v76 setAlpha_];

      v79 = v99;
      MEMORY[0x1BFAF1F00]();
      v80 = sub_1BA4A4168();
      if ((*(*(v80 - 8) + 48))(v79, 1, v80))
      {
        v81 = MEMORY[0x1E69DC0D8];
        v82 = v91;
        sub_1B9FD7DF0(v79, v91, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
        MEMORY[0x1BFAF1F10](v82);

        (*(v72 + 8))(v36, v74);
        (v92)(v97, v98);
        return sub_1B9FD7E70(v79, &qword_1EDC6B770, v81);
      }

      else
      {
        v83 = [v70 secondarySystemGroupedBackgroundColor];
        v84 = v83;
        if (*(v34 + v68))
        {
          v85 = 0.75;
        }

        else
        {
          v85 = 1.0;
        }

        v86 = [v83 colorWithAlphaComponent_];

        sub_1BA4A4118();
        MEMORY[0x1BFAF1F10](v79);

        (*(v72 + 8))(v36, v74);
        return (v92)(v97, v98);
      }
    }
  }

  else
  {
    sub_1B9F7B644(v102);
  }

  sub_1BA4A3D88();
  v54 = v1;
  v55 = sub_1BA4A3E88();
  v56 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v101[0] = v58;
    *v57 = 136315394;
    v59 = sub_1BA4A85D8();
    v61 = sub_1B9F0B82C(v59, v60, v101);

    *(v57 + 4) = v61;
    *(v57 + 12) = 2080;
    sub_1B9F68124(&v1[v25], v102);
    sub_1B9F1B310(0, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], MEMORY[0x1E69E6720]);
    v62 = sub_1BA4A6808();
    v64 = sub_1B9F0B82C(v62, v63, v101);

    *(v57 + 14) = v64;
    _os_log_impl(&dword_1B9F07000, v55, v56, "[%s] Expected YouAreSharingWithItem; got %s", v57, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v58, -1, -1);
    MEMORY[0x1BFAF43A0](v57, -1, -1);
  }

  return v99[1](v4, v100);
}