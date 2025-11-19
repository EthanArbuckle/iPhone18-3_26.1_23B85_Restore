uint64_t sub_251975F90(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_251975FA8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + qword_27F469638;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_251976004(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2 + qword_27F469638;
  swift_beginAccess();
  *(v4 + 8) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_251976068()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2519760A8()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 40);
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2519760F0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_251976138()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_251976178()
{
  MEMORY[0x253089950](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2519761B0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2519761E8()
{

  return MEMORY[0x2821FE8E8](v0, 27, 7);
}

uint64_t sub_251976220()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_251976260()
{

  return MEMORY[0x2821FE8E8](v0, 42, 7);
}

uint64_t sub_2519762A0()
{

  return MEMORY[0x2821FE8E8](v0, 26, 7);
}

uint64_t sub_2519762D8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 26, 7);
}

uint64_t sub_251976320@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16HealthMobilityUI19PickerTableViewCell_item;
  swift_beginAccess();
  return sub_251980888(v3 + v4, a2);
}

uint64_t sub_251976394()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2519763CC()
{
  v1 = type metadata accessor for ConfirmDetailsProvider.Details();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 3);

  v6 = *(v0 + 4);

  v7 = *(v0 + 5);

  v8 = &v0[v3];
  v9 = sub_2519AE4C8();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(&v0[v3], 1, v9))
  {
    (*(v10 + 8))(&v0[v3], v9);
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_251976528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_251984C48(0, &qword_27F469938, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

void sub_251976620(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_251984C48(0, &qword_27F469938, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }
}

uint64_t sub_251976708()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251976740()
{
  MEMORY[0x253089950](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251976778()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2519767B0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251976800@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC16HealthMobilityUI46WalkingSteadinessOnboardingStartViewController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_25197685C(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2 + OBJC_IVAR____TtC16HealthMobilityUI46WalkingSteadinessOnboardingStartViewController_delegate;
  swift_beginAccess();
  *(v4 + 8) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_2519768C0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_25197691C(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2 + OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_delegate;
  swift_beginAccess();
  *(v4 + 8) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_251976980@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_baseIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_2519769DC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + qword_27F469C68;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_251976A38(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2 + qword_27F469C68;
  swift_beginAccess();
  *(v4 + 8) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_251976A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25199129C(0, &qword_27F469938, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
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
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

void sub_251976B8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_25199129C(0, &qword_27F469938, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
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
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }
}

uint64_t sub_251976C78()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_251976CB8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_251976CF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16HealthMobilityUI23TitleValueTableViewCell_item;
  swift_beginAccess();
  return sub_251980888(v3 + v4, a2);
}

uint64_t sub_251976D68@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_251976DB8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 24) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_251976E10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16HealthMobilityUI19ConfirmDetailsModel_mostRecentDetails;
  swift_beginAccess();
  return sub_251995C40(v3 + v4, a2, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details);
}

uint64_t sub_251976E90@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC16HealthMobilityUI16WeightPickerItem_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_251976EEC(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2 + OBJC_IVAR____TtC16HealthMobilityUI16WeightPickerItem_delegate;
  swift_beginAccess();
  *(v4 + 8) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_251976F50@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC16HealthMobilityUI16WeightPickerItem_baseIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_251976FAC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_251976FFC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 40);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_25197704C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 40) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_2519770A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16HealthMobilityUI27CalendarPickerTableViewCell_item;
  swift_beginAccess();
  return sub_251980888(v3 + v4, a2);
}

uint64_t sub_251977104()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25197713C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + qword_27F469FA8;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_251977198(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2 + qword_27F469FA8;
  swift_beginAccess();
  *(v4 + 8) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_2519771FC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25197726C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2519772A4()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_251977324()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);
  v5 = *(v0 + v4 + 8);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_2519773BC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2519773F4()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_251977434@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + qword_27F46A110;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_251977490(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2 + qword_27F46A110;
  swift_beginAccess();
  *(v4 + 8) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_25197755C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16HealthMobilityUI24MultiselectTableViewCell_item;
  swift_beginAccess();
  return sub_251980888(v3 + v4, a2);
}

id WalkingSteadinessOnboardingAnalyticsManager.__allocating_init(healthStore:detailsProvider:presentation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR____TtC16HealthMobilityUI43WalkingSteadinessOnboardingAnalyticsManager_healthStore] = a1;
  v10 = &v9[OBJC_IVAR____TtC16HealthMobilityUI43WalkingSteadinessOnboardingAnalyticsManager_presentation];
  *v10 = a3;
  *(v10 + 1) = a4;
  *&v9[OBJC_IVAR____TtC16HealthMobilityUI43WalkingSteadinessOnboardingAnalyticsManager_detailsProvider] = a2;
  v12.receiver = v9;
  v12.super_class = v4;
  return objc_msgSendSuper2(&v12, sel_init);
}

id WalkingSteadinessOnboardingAnalyticsManager.init(healthStore:detailsProvider:presentation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4[OBJC_IVAR____TtC16HealthMobilityUI43WalkingSteadinessOnboardingAnalyticsManager_healthStore] = a1;
  v5 = &v4[OBJC_IVAR____TtC16HealthMobilityUI43WalkingSteadinessOnboardingAnalyticsManager_presentation];
  *v5 = a3;
  *(v5 + 1) = a4;
  *&v4[OBJC_IVAR____TtC16HealthMobilityUI43WalkingSteadinessOnboardingAnalyticsManager_detailsProvider] = a2;
  v7.receiver = v4;
  v7.super_class = type metadata accessor for WalkingSteadinessOnboardingAnalyticsManager();
  return objc_msgSendSuper2(&v7, sel_init);
}

void sub_2519776EC(char *a1, uint64_t *a2, char a3)
{
  ObjectType = swift_getObjectType();
  v6 = *a1;
  v7 = *a2;
  v8 = *&v3[OBJC_IVAR____TtC16HealthMobilityUI43WalkingSteadinessOnboardingAnalyticsManager_healthStore];
  v9 = *(a2 + 8);
  v11 = *&v3[OBJC_IVAR____TtC16HealthMobilityUI43WalkingSteadinessOnboardingAnalyticsManager_presentation];
  v10 = *&v3[OBJC_IVAR____TtC16HealthMobilityUI43WalkingSteadinessOnboardingAnalyticsManager_presentation + 8];
  v12 = *&v3[OBJC_IVAR____TtC16HealthMobilityUI43WalkingSteadinessOnboardingAnalyticsManager_detailsProvider];
  v13 = *(v12 + 88);
  v14 = *(v12 + 96);
  v15 = type metadata accessor for WalkingSteadinessAnalyticsOnboardingEventDataSource();
  v16 = objc_allocWithZone(v15);
  *&v16[OBJC_IVAR____TtC16HealthMobilityUI51WalkingSteadinessAnalyticsOnboardingEventDataSource_healthStore] = v8;
  v17 = &v16[OBJC_IVAR____TtC16HealthMobilityUI51WalkingSteadinessAnalyticsOnboardingEventDataSource_presentation];
  *v17 = v11;
  v17[1] = v10;
  v16[OBJC_IVAR____TtC16HealthMobilityUI51WalkingSteadinessAnalyticsOnboardingEventDataSource_onboardingStep] = v6;
  v18 = &v16[OBJC_IVAR____TtC16HealthMobilityUI51WalkingSteadinessAnalyticsOnboardingEventDataSource_changedDetailItems];
  *v18 = v7;
  v18[8] = v9;
  v19 = &v16[OBJC_IVAR____TtC16HealthMobilityUI51WalkingSteadinessAnalyticsOnboardingEventDataSource_defaultDetailItems];
  *v19 = v13;
  v19[8] = v14;
  v16[OBJC_IVAR____TtC16HealthMobilityUI51WalkingSteadinessAnalyticsOnboardingEventDataSource_acceptDefaults] = a3;
  v28.receiver = v16;
  v28.super_class = v15;

  v20 = v8;
  v21 = objc_msgSendSuper2(&v28, sel_init);
  v22 = swift_allocObject();
  *(v22 + 16) = v6;
  *(v22 + 24) = ObjectType;
  aBlock[4] = sub_251977C00;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_251977C0C;
  aBlock[3] = &block_descriptor;
  v23 = _Block_copy(aBlock);
  v24 = v21;

  [v3 submitOnboardingEventWithDataSource:v24 resultHandler:v23];
  _Block_release(v23);
}

void sub_2519778F4(void *a1, unsigned __int8 a2)
{
  if ([a1 status] == 1)
  {
    if (qword_27F469470 != -1)
    {
      swift_once();
    }

    v4 = sub_2519AEAE8();
    __swift_project_value_buffer(v4, qword_27F469C00);
    v5 = a1;
    oslog = sub_2519AEAC8();
    v6 = sub_2519AEF38();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v24 = v8;
      *v7 = 136446979;
      v9 = sub_2519AF2A8();
      v11 = sub_251978CDC(v9, v10, &v24);

      *(v7 + 4) = v11;
      *(v7 + 12) = 2082;
      *(v7 + 14) = sub_251978CDC(0xD000000000000041, 0x80000002519B2AC0, &v24);
      *(v7 + 22) = 2081;
      v12 = 0xEE00736C69617465;
      v13 = 0x446D7269666E6F63;
      v14 = 0x80000002519B2B10;
      v15 = 0xED0000736E6F6974;
      v16 = 0x6163696669746F6ELL;
      if (a2 != 3)
      {
        v16 = 0x6974656C706D6F63;
        v15 = 0xEA00000000006E6FLL;
      }

      if (a2 == 2)
      {
        v16 = 0xD000000000000017;
      }

      else
      {
        v14 = v15;
      }

      if (!a2)
      {
        v13 = 0xD000000000000016;
        v12 = 0x80000002519B2B30;
      }

      if (a2 <= 1u)
      {
        v17 = v13;
      }

      else
      {
        v17 = v16;
      }

      if (a2 <= 1u)
      {
        v18 = v12;
      }

      else
      {
        v18 = v14;
      }

      v19 = sub_251978CDC(v17, v18, &v24);

      *(v7 + 24) = v19;
      *(v7 + 32) = 2082;
      [v5 error];
      sub_251978684();
      v20 = sub_2519AEE58();
      v22 = sub_251978CDC(v20, v21, &v24);

      *(v7 + 34) = v22;
      _os_log_impl(&dword_251974000, oslog, v6, "[%{public}s.%{public}s] Unable to submit onboarding analytics for step: %{private}s error: %{public}s", v7, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x2530898E0](v8, -1, -1);
      MEMORY[0x2530898E0](v7, -1, -1);
    }

    else
    {
    }
  }
}

void sub_251977C0C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id WalkingSteadinessOnboardingAnalyticsManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WalkingSteadinessOnboardingAnalyticsManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WalkingSteadinessOnboardingAnalyticsManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_251977E38(uint64_t a1, int a2)
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

uint64_t sub_251977E58(uint64_t result, int a2, int a3)
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

uint64_t sub_251977EA8(uint64_t a1)
{
  v2 = sub_251978354(&qword_27F4695B8, type metadata accessor for HKError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_251977F14(uint64_t a1)
{
  v2 = sub_251978354(&qword_27F4695B8, type metadata accessor for HKError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_251977F84(uint64_t a1)
{
  v2 = sub_251978354(&qword_27F4695F0, type metadata accessor for HKError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_251978010(uint64_t a1)
{
  v2 = sub_251978354(&qword_27F4695F0, type metadata accessor for HKError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_25197807C(uint64_t a1)
{
  v2 = sub_251978354(&qword_27F4695F0, type metadata accessor for HKError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_2519780E8(void *a1, uint64_t a2)
{
  v4 = sub_251978354(&qword_27F4695F0, type metadata accessor for HKError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_25197819C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251978354(&qword_27F4695F0, type metadata accessor for HKError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_251978218()
{
  v2 = *v0;
  sub_2519AF258();
  sub_2519AEDF8();
  return sub_2519AF278();
}

void *sub_251978278@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_251978288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_251978354(&qword_27F4695F0, type metadata accessor for HKError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_251978354(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2519784D0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_251978568()
{
  result = qword_27F4695E0;
  if (!qword_27F4695E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4695E0);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_251978684()
{
  if (!qword_27F4695F8)
  {
    sub_2519786DC();
    v0 = sub_2519AF0E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4695F8);
    }
  }
}

unint64_t sub_2519786DC()
{
  result = qword_27F469600;
  if (!qword_27F469600)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F469600);
  }

  return result;
}

uint64_t sub_25197874C()
{
  v0 = sub_2519AEAE8();
  __swift_allocate_value_buffer(v0, qword_27F469610);
  v1 = __swift_project_value_buffer(v0, qword_27F469610);
  if (qword_27F469468 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27F469BE8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *WalkingSteadinessOnboardingViewControllerFactory.__allocating_init(healthStore:healthExperienceStore:pinnedContentManager:detailsProvider:model:)(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a1;
  sub_251975F90(a2, (v10 + 3));
  sub_251975F90(a3, (v10 + 10));
  v10[8] = a4;
  v10[9] = a5;
  return v10;
}

void *WalkingSteadinessOnboardingViewControllerFactory.init(healthStore:healthExperienceStore:pinnedContentManager:detailsProvider:model:)(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  sub_251975F90(a2, (v5 + 3));
  sub_251975F90(a3, (v5 + 10));
  v5[8] = a4;
  v5[9] = a5;
  return v5;
}

char *sub_2519788E4(_BYTE *a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *a1;
  if (v4 <= 1)
  {
    if (*a1)
    {
      v20 = v1[8];
      v21 = v2[2];
      type metadata accessor for ConfirmDetailsValueFormatterImpl();
      v22 = swift_allocObject();
      v22[4] = 0;
      v22[5] = 0;
      v22[2] = v21;
      v23 = objc_opt_self();

      v24 = [v23 sharedInstanceForHealthStore_];
      v25 = [v24 createHKUnitPreferenceController];

      v22[3] = v25;
      v26 = objc_allocWithZone(type metadata accessor for WalkingSteadinessOnboardingConfirmDetailsViewController());
      v27 = sub_25197926C(v20, v22, v26);

      return v27;
    }

    else
    {
      v7 = objc_allocWithZone(type metadata accessor for WalkingSteadinessOnboardingStartViewController());
      return WalkingSteadinessOnboardingStartViewController.init()();
    }
  }

  else if (v4 == 2)
  {
    v8 = objc_allocWithZone(type metadata accessor for WalkingSteadinessOnboardingLevelsViewController());
    return WalkingSteadinessOnboardingLevelsViewController.init()();
  }

  else if (v4 == 3)
  {
    v5 = objc_allocWithZone(type metadata accessor for WalkingSteadinessOnboardingNotificationsViewController());
    return sub_2519A9158();
  }

  else
  {
    v9 = *(v1[9] + 96);

    os_unfair_lock_lock((v9 + 36));
    v10 = *(v9 + 33);
    os_unfair_lock_unlock((v9 + 36));

    if (v10 == 2)
    {
      if (qword_27F469410 != -1)
      {
        swift_once();
      }

      v11 = sub_2519AEAE8();
      __swift_project_value_buffer(v11, qword_27F469610);
      v12 = sub_2519AEAC8();
      v13 = sub_2519AEF48();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v30[0] = v15;
        *v14 = 136446210;
        v16 = sub_2519AF2A8();
        v18 = sub_251978CDC(v16, v17, v30);

        *(v14 + 4) = v18;
        _os_log_impl(&dword_251974000, v12, v13, "[%{public}s] Setup Complete but notificationsEnabled is nil", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v15);
        MEMORY[0x2530898E0](v15, -1, -1);
        MEMORY[0x2530898E0](v14, -1, -1);
      }

      sub_251979694((v2 + 3), v30);
      sub_251979694((v2 + 10), v29);
      v19 = objc_allocWithZone(type metadata accessor for WalkingSteadinessOnboardingSetupCompleteViewController());
    }

    else
    {
      sub_251979694((v2 + 3), v30);
      sub_251979694((v2 + 10), v29);
      v28 = objc_allocWithZone(type metadata accessor for WalkingSteadinessOnboardingSetupCompleteViewController());
    }

    return WalkingSteadinessOnboardingSetupCompleteViewController.init(healthExperienceStore:pinnedContentManager:notificationsEnabled:)(v30, v29);
  }
}

uint64_t WalkingSteadinessOnboardingViewControllerFactory.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));
  v1 = *(v0 + 64);

  v2 = *(v0 + 72);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 80));
  return v0;
}

uint64_t WalkingSteadinessOnboardingViewControllerFactory.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));
  v1 = *(v0 + 64);

  v2 = *(v0 + 72);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 80));

  return MEMORY[0x2821FE8D8](v0, 120, 7);
}

uint64_t sub_251978CDC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_251978DA8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2519796F8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_251978DA8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_251978EB4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2519AF178();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_251978EB4(uint64_t a1, unint64_t a2)
{
  v4 = sub_251978F00(a1, a2);
  sub_251979030(&unk_2863D95C8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_251978F00(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_25197911C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2519AF178();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2519AEEA8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25197911C(v10, 0);
        result = sub_2519AF138();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_251979030(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_251979184(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_25197911C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_251979754();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_251979184(char *result, int64_t a2, char a3, char *a4)
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
    sub_251979754();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_25197926C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26[3] = type metadata accessor for ConfirmDetailsValueFormatterImpl();
  v26[4] = &protocol witness table for ConfirmDetailsValueFormatterImpl;
  *(a3 + qword_27F469630) = 1;
  v26[0] = a2;
  *(a3 + qword_27F469638 + 8) = 0;
  swift_unknownObjectWeakInit();
  v6 = (a3 + qword_27F469640);
  *v6 = 0xD00000000000002DLL;
  v6[1] = 0x80000002519B2BE0;
  *(a3 + qword_27F469648) = 0;
  sub_251979694(v26, v25);
  v7 = type metadata accessor for ConfirmDetailsModel();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR____TtC16HealthMobilityUI19ConfirmDetailsModel_mostRecentDetails;
  v12 = type metadata accessor for ConfirmDetailsProvider.Details();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v10 + OBJC_IVAR____TtC16HealthMobilityUI19ConfirmDetailsModel_visiblePicker) = 3;
  sub_251975F90(v25, v10 + OBJC_IVAR____TtC16HealthMobilityUI19ConfirmDetailsModel_valueFormatter);
  v13 = type metadata accessor for ConfirmDetailsDataSource();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();

  v16 = ConfirmDetailsDataSource.init(detailsProvider:model:)(a1, v10);
  v17 = qword_27F469650;
  *(a3 + qword_27F469650) = v16;
  if (qword_27F469440 != -1)
  {
    swift_once();
  }

  sub_2519AE4D8();
  sub_2519AE4D8();
  v18 = *(a3 + v17);

  v19 = sub_2519AE938();
  v20 = *&v19[qword_27F469650] + qword_27F469FA8;
  swift_beginAccess();
  *(v20 + 8) = &protocol witness table for WalkingSteadinessOnboardingConfirmDetailsViewController;
  swift_unknownObjectWeakAssign();
  v21 = v19;
  v22 = [v21 headerView];
  LODWORD(v23) = 1036831949;
  [v22 setTitleHyphenationFactor_];

  __swift_destroy_boxed_opaque_existential_0Tm(v26);
  return v21;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_251979694(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2519796F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_251979754()
{
  if (!qword_27F469628)
  {
    v0 = sub_2519AF1F8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F469628);
    }
  }
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

char *WalkingSteadinessOnboardingConfirmDetailsViewController.__allocating_init(detailsProvider:valueFormatter:)(uint64_t a1, uint64_t *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  v8 = sub_25197A62C(a1, v7, v2, v5, v6);

  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  return v8;
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

uint64_t sub_2519798E4()
{
  v1 = v0 + qword_27F469638;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_251979934(uint64_t a1, uint64_t a2)
{
  v4 = v2 + qword_27F469638;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_2519799A0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_27F469638;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_251979A40;
}

char *WalkingSteadinessOnboardingConfirmDetailsViewController.init(detailsProvider:valueFormatter:)(uint64_t a1, uint64_t *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  v8 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v7, v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = sub_25197A2AC(a1, v10, v2, v5, v6);

  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  return v12;
}

void sub_251979B44()
{
  v1 = v0;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for WalkingSteadinessOnboardingConfirmDetailsViewController();
  objc_msgSendSuper2(&v9, sel_viewDidLoad);
  v2 = *&v0[qword_27F469640];
  v3 = *&v0[qword_27F469640 + 8];
  v4 = sub_2519AEE28();
  v5 = [v1 addNextButtonWithBaseIdentifier_];

  v6 = *&v1[qword_27F469648];
  *&v1[qword_27F469648] = v5;
  v7 = v5;

  [v7 setEnabled_];
  v8 = sub_2519AEE28();
}

void sub_251979C80(void *a1)
{
  v1 = a1;
  sub_251979B44();
}

void sub_251979CC8(char *a1)
{
  v2 = &a1[qword_27F469638];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 1);
    swift_getObjectType();
    v4 = *(v3 + 8);
    v5 = a1;
    v4();
    swift_unknownObjectRelease();
  }
}

void sub_251979D74(char *a1)
{
  v2 = &a1[qword_27F469638];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 1);
    swift_getObjectType();
    v4 = *(v3 + 24);
    v5 = a1;
    v4();
    swift_unknownObjectRelease();
  }
}

uint64_t sub_251979E20@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(v1 + qword_27F469650) + qword_27F469FB0);
  v4 = OBJC_IVAR____TtC16HealthMobilityUI19ConfirmDetailsModel_mostRecentDetails;
  swift_beginAccess();
  return sub_25197A770(v3 + v4, a1);
}

void sub_251979E94(uint64_t a1)
{
  v2 = *(v1 + qword_27F469648);
  if (v2)
  {
    v3 = *(**(a1 + qword_27F469FB0) + 112);
    v4 = v2;
    [v4 setEnabled_];
  }
}

void sub_251979F48(void *a1)
{
  v3 = a1;
  v1 = [v3 presentedViewController];
  if (v1)
  {
    v2 = v1;
    [v1 dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_251979FEC()
{
  sub_25197ABDC(v0 + qword_27F469638);
  v1 = *(v0 + qword_27F469640 + 8);

  v2 = *(v0 + qword_27F469650);
}

id WalkingSteadinessOnboardingConfirmDetailsViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WalkingSteadinessOnboardingConfirmDetailsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25197A088(uint64_t a1)
{
  sub_25197ABDC(a1 + qword_27F469638);
  v2 = *(a1 + qword_27F469640 + 8);

  v3 = *(a1 + qword_27F469650);
}

uint64_t (*sub_25197A10C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_27F469638;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_25197AC8C;
}

void sub_25197A1AC(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_25197A234@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(*v1 + qword_27F469650) + qword_27F469FB0);
  v4 = OBJC_IVAR____TtC16HealthMobilityUI19ConfirmDetailsModel_mostRecentDetails;
  swift_beginAccess();
  return sub_25197A770(v3 + v4, a1);
}

char *sub_25197A2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30[3] = a4;
  v30[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  *(a3 + qword_27F469630) = 1;
  *(a3 + qword_27F469638 + 8) = 0;
  swift_unknownObjectWeakInit();
  v10 = (a3 + qword_27F469640);
  *v10 = 0xD00000000000002DLL;
  v10[1] = 0x80000002519B2BE0;
  *(a3 + qword_27F469648) = 0;
  sub_251979694(v30, v29);
  v11 = type metadata accessor for ConfirmDetailsModel();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC16HealthMobilityUI19ConfirmDetailsModel_mostRecentDetails;
  v16 = type metadata accessor for ConfirmDetailsProvider.Details();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  *(v14 + OBJC_IVAR____TtC16HealthMobilityUI19ConfirmDetailsModel_visiblePicker) = 3;
  sub_251975F90(v29, v14 + OBJC_IVAR____TtC16HealthMobilityUI19ConfirmDetailsModel_valueFormatter);
  v17 = type metadata accessor for ConfirmDetailsDataSource();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();

  v20 = ConfirmDetailsDataSource.init(detailsProvider:model:)(a1, v14);
  v21 = qword_27F469650;
  *(a3 + qword_27F469650) = v20;
  if (qword_27F469440 != -1)
  {
    swift_once();
  }

  sub_2519AE4D8();
  sub_2519AE4D8();
  v22 = *(a3 + v21);

  v23 = sub_2519AE938();
  v24 = *&v23[qword_27F469650] + qword_27F469FA8;
  swift_beginAccess();
  *(v24 + 8) = &protocol witness table for WalkingSteadinessOnboardingConfirmDetailsViewController;
  swift_unknownObjectWeakAssign();
  v25 = v23;
  v26 = [v25 headerView];
  LODWORD(v27) = 1036831949;
  [v26 setTitleHyphenationFactor_];

  __swift_destroy_boxed_opaque_existential_0Tm(v30);
  return v25;
}

char *sub_25197A62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_allocWithZone(type metadata accessor for WalkingSteadinessOnboardingConfirmDetailsViewController());
  (*(v9 + 16))(v12, a2, a4);
  return sub_25197A2AC(a1, v12, v13, a4, a5);
}

uint64_t type metadata accessor for WalkingSteadinessOnboardingConfirmDetailsViewController()
{
  result = qword_27F469660;
  if (!qword_27F469660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25197A770(uint64_t a1, uint64_t a2)
{
  sub_25197A7D4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_25197A7D4()
{
  if (!qword_27F469658)
  {
    type metadata accessor for ConfirmDetailsProvider.Details();
    v0 = sub_2519AF0E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F469658);
    }
  }
}

void sub_25197A82C()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v0 action:sel_dismissPresentedViewController];
  v3 = objc_allocWithZone(type metadata accessor for WalkingSteadinessOnboardingAboutHealthDetailsViewController());
  v4 = WalkingSteadinessOnboardingAboutHealthDetailsViewController.init()();
  v5 = [v4 navigationItem];
  [v5 setRightBarButtonItem_];

  v6 = [objc_allocWithZone(MEMORY[0x277D12978]) initWithRootViewController_];
  [v1 presentViewController:v6 animated:1 completion:0];
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t MultiselectItem.reuseIdentifier.getter()
{
  type metadata accessor for MultiselectTableViewCell();
  sub_25197ACC8();
  return sub_2519AE888();
}

unint64_t sub_25197ACC8()
{
  result = qword_27F469670;
  if (!qword_27F469670)
  {
    type metadata accessor for MultiselectTableViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F469670);
  }

  return result;
}

uint64_t MultiselectItem.uniqueIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MultiselectItem.uniqueIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MultiselectItem.title.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MultiselectItem.subtitle.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

void __swiftcall MultiselectItem.init(title:subtitle:state:identifier:)(HealthMobilityUI::MultiselectItem *__return_ptr retstr, Swift::String title, Swift::String subtitle, Swift::Bool state, Swift::String identifier)
{
  object = subtitle._object;
  countAndFlagsBits = subtitle._countAndFlagsBits;
  v8 = title._object;
  v9 = title._countAndFlagsBits;
  if (state)
  {
    v11 = 0x44455443454C4553;
  }

  else
  {
    v11 = 0x5443454C45534E55;
  }

  if (state)
  {
    v12 = 0xE800000000000000;
  }

  else
  {
    v12 = 0xEA00000000004445;
  }

  MEMORY[0x253088EC0](v11, v12);

  retstr->uniqueIdentifier = identifier;
  retstr->title._countAndFlagsBits = v9;
  retstr->title._object = v8;
  retstr->subtitle._countAndFlagsBits = countAndFlagsBits;
  retstr->subtitle._object = object;
  retstr->state = state;
}

unint64_t sub_25197AEF0()
{
  result = qword_27F469678;
  if (!qword_27F469678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F469678);
  }

  return result;
}

uint64_t sub_25197AF44()
{
  type metadata accessor for MultiselectTableViewCell();
  sub_25197ACC8();
  return sub_2519AE888();
}

uint64_t sub_25197AF7C()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_25197AFAC(uint64_t a1)
{
  v2 = sub_25197B0BC();

  return MEMORY[0x282169440](a1, v2);
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_25197B014(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25197B05C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25197B0BC()
{
  result = qword_27F469680;
  if (!qword_27F469680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F469680);
  }

  return result;
}

uint64_t sub_25197B110()
{
  v0 = sub_2519AEAE8();
  __swift_allocate_value_buffer(v0, qword_27F469690);
  v1 = __swift_project_value_buffer(v0, qword_27F469690);
  if (qword_27F469468 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27F469BE8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id WalkingSteadinessOnboardingCoordinator.__allocating_init(rootViewController:model:factory:analyticsManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = objc_allocWithZone(v5);
  *&v10[OBJC_IVAR____TtC16HealthMobilityUI38WalkingSteadinessOnboardingCoordinator_rootViewController + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = a2;
  swift_unknownObjectWeakAssign();
  *&v10[OBJC_IVAR____TtC16HealthMobilityUI38WalkingSteadinessOnboardingCoordinator_model] = a3;
  *&v10[OBJC_IVAR____TtC16HealthMobilityUI38WalkingSteadinessOnboardingCoordinator_factory] = a4;
  *&v10[OBJC_IVAR____TtC16HealthMobilityUI38WalkingSteadinessOnboardingCoordinator_analyticsManager] = a5;
  v14.receiver = v10;
  v14.super_class = v5;

  v11 = a5;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  sub_25197B43C();

  swift_unknownObjectRelease();

  return v12;
}

id WalkingSteadinessOnboardingCoordinator.init(rootViewController:model:factory:analyticsManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *&v5[OBJC_IVAR____TtC16HealthMobilityUI38WalkingSteadinessOnboardingCoordinator_rootViewController + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = a2;
  swift_unknownObjectWeakAssign();
  *&v5[OBJC_IVAR____TtC16HealthMobilityUI38WalkingSteadinessOnboardingCoordinator_model] = a3;
  *&v5[OBJC_IVAR____TtC16HealthMobilityUI38WalkingSteadinessOnboardingCoordinator_factory] = a4;
  *&v5[OBJC_IVAR____TtC16HealthMobilityUI38WalkingSteadinessOnboardingCoordinator_analyticsManager] = a5;
  v12.receiver = v5;
  v12.super_class = type metadata accessor for WalkingSteadinessOnboardingCoordinator();

  v9 = a5;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  sub_25197B43C();

  swift_unknownObjectRelease();

  return v10;
}

void sub_25197B43C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC16HealthMobilityUI38WalkingSteadinessOnboardingCoordinator_model);
  v14 = 5;
  (*(*v2 + 224))(&v15, &v14);
  if (v15 == 5)
  {
    sub_2519AF198();
    __break(1u);
  }

  else
  {
    v13 = v15;
    v12 = sub_25197B810(&v13);
    v3 = v1 + OBJC_IVAR____TtC16HealthMobilityUI38WalkingSteadinessOnboardingCoordinator_rootViewController;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 8);
      ObjectType = swift_getObjectType();
      sub_251980184(0, &qword_27F469750, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_2519B0810;
      *(v6 + 32) = v12;
      v7 = *(v4 + 24);
      v8 = v12;
      v7(v6, 0, ObjectType, v4);

      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = *(v3 + 8);
      v10 = swift_getObjectType();
      v11 = (*(v9 + 8))(v10, v9);
      swift_unknownObjectRelease();
      if (v11)
      {
        [v11 setDelegate_];
      }
    }
  }
}

void sub_25197B66C(_BYTE *a1, unsigned __int8 *a2, char a3)
{
  v5 = *a2;
  LOBYTE(v21[0]) = *a1;
  v6 = sub_25197B810(v21);
  v7 = v3 + OBJC_IVAR____TtC16HealthMobilityUI38WalkingSteadinessOnboardingCoordinator_rootViewController;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    memset(v21, 0, sizeof(v21));
    (*(v9 + 32))(v6, v21, ObjectType, v9);
    swift_unknownObjectRelease();
    Strong = sub_25198001C(v21, &unk_27F469748, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_251980184);
  }

  v11 = *(v3 + OBJC_IVAR____TtC16HealthMobilityUI38WalkingSteadinessOnboardingCoordinator_analyticsManager);
  v20 = v5;
  v12 = *(**(v3 + OBJC_IVAR____TtC16HealthMobilityUI38WalkingSteadinessOnboardingCoordinator_model) + 184);
  v13 = v12(v21, Strong);
  v18 = *&v21[0];
  v19 = BYTE8(v21[0]);
  if (v5 == 3)
  {
    v15 = (a3 & 1) == 0;
  }

  else
  {
    if (v5 != 1 || (v12(&v16, v13), (v17 & 1) != 0))
    {
      v14 = 1;
      goto LABEL_12;
    }

    v15 = v16 == 0;
  }

  v14 = v15;
LABEL_12:
  sub_2519776EC(&v20, &v18, v14);
}

void *sub_25197B810(char *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16HealthMobilityUI38WalkingSteadinessOnboardingCoordinator_factory);
  v12 = *a1;
  v3 = (*(*v2 + 128))(&v12);
  v5 = v4;
  ObjectType = swift_getObjectType();
  v7 = [v3 navigationItem];
  if (qword_27F469440 != -1)
  {
    swift_once();
  }

  sub_2519AE4D8();
  v8 = sub_2519AEE28();

  [v7 setBackButtonTitle_];

  v9 = *(v5 + 24);
  v10 = swift_unknownObjectRetain();
  v9(v10, &protocol witness table for WalkingSteadinessOnboardingCoordinator, ObjectType, v5);
  return v3;
}

uint64_t sub_25197B994(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  if (qword_27F469418 != -1)
  {
    swift_once();
  }

  v7 = sub_2519AEAE8();
  __swift_project_value_buffer(v7, qword_27F469690);
  v8 = a1;
  v9 = sub_2519AEAC8();
  v10 = sub_2519AEF58();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v31 = v28;
    *v11 = 136446722;
    v12 = sub_2519AF2A8();
    v29 = ObjectType;
    v14 = sub_251978CDC(v12, v13, &v31);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2082;
    *(v11 + 14) = sub_251978CDC(0xD00000000000002FLL, 0x80000002519B2DA0, &v31);
    *(v11 + 22) = 2082;
    v15 = swift_getObjectType();
    v16 = *(a2 + 8);
    v16(&v30, v15, a2);
    v17 = sub_2519AEE58();
    v19 = sub_251978CDC(v17, v18, &v31);

    *(v11 + 24) = v19;
    ObjectType = v29;
    _os_log_impl(&dword_251974000, v9, v10, "[%{public}s.%{public}s]: Primary button tapped for stage: %{public}s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2530898E0](v28, -1, -1);
    MEMORY[0x2530898E0](v11, -1, -1);
  }

  else
  {

    v16 = *(a2 + 8);
  }

  v20 = swift_getObjectType();
  v16(&v33, v20, a2);
  v21 = v33;
  v22 = *&v3[OBJC_IVAR____TtC16HealthMobilityUI38WalkingSteadinessOnboardingCoordinator_model];
  v32 = v33;
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  *(v23 + 24) = v3;
  *(v23 + 32) = 0;
  *(v23 + 40) = v8;
  *(v23 + 48) = a2;
  *(v23 + 56) = ObjectType;
  v24 = *(*v22 + 232);
  v25 = v8;
  v26 = v3;
  v24(&v32, v25, a2, 1, sub_25197FAE0, v23);
}

uint64_t sub_25197BC84(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  if (qword_27F469418 != -1)
  {
    swift_once();
  }

  v7 = sub_2519AEAE8();
  __swift_project_value_buffer(v7, qword_27F469690);
  v8 = a1;
  v9 = sub_2519AEAC8();
  v10 = sub_2519AEF58();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v31 = v28;
    *v11 = 136446722;
    v12 = sub_2519AF2A8();
    v29 = ObjectType;
    v14 = sub_251978CDC(v12, v13, &v31);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2082;
    *(v11 + 14) = sub_251978CDC(0xD000000000000031, 0x80000002519B2DD0, &v31);
    *(v11 + 22) = 2082;
    v15 = swift_getObjectType();
    v16 = *(a2 + 8);
    v16(&v30, v15, a2);
    v17 = sub_2519AEE58();
    v19 = sub_251978CDC(v17, v18, &v31);

    *(v11 + 24) = v19;
    ObjectType = v29;
    _os_log_impl(&dword_251974000, v9, v10, "[%{public}s.%{public}s]: Secondary button tapped for stage: %{public}s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2530898E0](v28, -1, -1);
    MEMORY[0x2530898E0](v11, -1, -1);
  }

  else
  {

    v16 = *(a2 + 8);
  }

  v20 = swift_getObjectType();
  v16(&v33, v20, a2);
  v21 = v33;
  v22 = *&v3[OBJC_IVAR____TtC16HealthMobilityUI38WalkingSteadinessOnboardingCoordinator_model];
  v32 = v33;
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  *(v23 + 24) = v3;
  *(v23 + 32) = 1;
  *(v23 + 40) = v8;
  *(v23 + 48) = a2;
  *(v23 + 56) = ObjectType;
  v24 = *(*v22 + 232);
  v25 = v8;
  v26 = v3;
  v24(&v32, v25, a2, 0, sub_251980214, v23);
}

uint64_t sub_25197BF7C(unsigned __int8 *a1, char a2, void *a3, char a4, id a5, uint64_t a6)
{
  v74 = a3;
  v11 = sub_2519AED48();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v67[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_2519AED78();
  v18 = *(*(v17 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v23 = *a1;
  if (v23 >> 6)
  {
    v24 = a4;
    v25 = swift_allocObject();
    v26 = v74;
    *(v25 + 16) = v74;
    if (v23 >> 6 == 1)
    {
      *(v25 + 24) = a5;
      *(v25 + 32) = a6;
      *(v25 + 40) = a2;
      *(v25 + 41) = a4 & 1;
      v27 = a5;
      v28 = sub_2519800E4;
    }

    else
    {
      *(v25 + 24) = a2;
      *(v25 + 25) = a4 & 1;
      v28 = sub_25198012C;
    }

    v43 = v28;
    if (a2 == 3)
    {
      v44 = (v24 & 1) == 0;
      v45 = swift_allocObject();
      *(v45 + 16) = v43;
      *(v45 + 24) = v25;
      v26;

      sub_25197E7B8(v44, a5, a6, sub_2519800F8, v45);
    }

    else
    {
      v28(v26);
    }
  }

  else
  {
    v70 = &v67[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v71 = v22;
    v72 = v12;
    v73 = v20;
    if (a2 == 3 && v23 == 3)
    {
      v29 = v11;
      if (qword_27F469418 != -1)
      {
        swift_once();
      }

      v30 = sub_2519AEAE8();
      __swift_project_value_buffer(v30, qword_27F469690);
      v31 = sub_2519AEAC8();
      v32 = sub_2519AEF58();
      v33 = v16;
      if (os_log_type_enabled(v31, v32))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        aBlock = v35;
        *v34 = 136446466;
        v36 = sub_2519AF2A8();
        v38 = sub_251978CDC(v36, v37, &aBlock);

        *(v34 + 4) = v38;
        *(v34 + 12) = 2082;
        *(v34 + 14) = sub_251978CDC(0xD000000000000028, 0x80000002519B3280, &aBlock);
        _os_log_impl(&dword_251974000, v31, v32, "[%{public}s.%{public}s]: User previously denied notification authorization, alerting but not proceeding", v34, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2530898E0](v35, -1, -1);
        MEMORY[0x2530898E0](v34, -1, -1);
      }

      sub_25197FBF8();
      v39 = sub_2519AF038();
      v40 = swift_allocObject();
      v41 = v74;
      v40[2] = v74;
      v40[3] = a5;
      v40[4] = a6;
      v80 = sub_2519800BC;
      v81 = v40;
      aBlock = MEMORY[0x277D85DD0];
      v77 = 1107296256;
      v42 = &block_descriptor_66;
    }

    else
    {
      v29 = v11;
      if (qword_27F469418 != -1)
      {
        swift_once();
      }

      v47 = sub_2519AEAE8();
      __swift_project_value_buffer(v47, qword_27F469690);
      a5 = a5;
      v48 = sub_2519AEAC8();
      v49 = sub_2519AEF58();

      v33 = v16;
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        aBlock = v69;
        *v50 = 136446978;
        v51 = sub_2519AF2A8();
        v68 = v49;
        v53 = sub_251978CDC(v51, v52, &aBlock);

        *(v50 + 4) = v53;
        *(v50 + 12) = 2082;
        *(v50 + 14) = sub_251978CDC(0xD000000000000028, 0x80000002519B3280, &aBlock);
        *(v50 + 22) = 2080;
        ObjectType = swift_getObjectType();
        (*(a6 + 8))(&v75, ObjectType, a6);
        v55 = sub_2519AEE58();
        v57 = sub_251978CDC(v55, v56, &aBlock);

        *(v50 + 24) = v57;
        *(v50 + 32) = 2080;
        v75 = v23;
        v58 = sub_2519AEE58();
        v60 = sub_251978CDC(v58, v59, &aBlock);

        *(v50 + 34) = v60;
        _os_log_impl(&dword_251974000, v48, v68, "[%{public}s.%{public}s]: Unable to proceed to next stage from %s due to reason: %s", v50, 0x2Au);
        v61 = v69;
        swift_arrayDestroy();
        MEMORY[0x2530898E0](v61, -1, -1);
        MEMORY[0x2530898E0](v50, -1, -1);
      }

      sub_25197FBF8();
      v39 = sub_2519AF038();
      v62 = swift_allocObject();
      v41 = v74;
      *(v62 + 16) = v74;
      *(v62 + 24) = v23;
      *(v62 + 32) = a5;
      *(v62 + 40) = a6;
      v80 = sub_25198007C;
      v81 = v62;
      aBlock = MEMORY[0x277D85DD0];
      v77 = 1107296256;
      v42 = &block_descriptor_60;
    }

    v78 = sub_2519839F0;
    v79 = v42;
    v63 = _Block_copy(&aBlock);
    v64 = a5;
    v65 = v41;

    v66 = v70;
    sub_2519AED68();
    aBlock = MEMORY[0x277D84F90];
    sub_25197FF08(&qword_280DD9240, MEMORY[0x277D85198]);
    sub_25197FD04(0, &unk_280DD9230, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_25197FC7C();
    sub_2519AF108();
    MEMORY[0x253089080](0, v66, v33, v63);
    _Block_release(v63);

    (*(v72 + 8))(v33, v29);
    return (*(v71 + 8))(v66, v73);
  }
}

uint64_t sub_25197C7D0(uint64_t a1, void *a2, uint64_t a3, char a4, char a5)
{
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a4;
  *(v9 + 25) = a5 & 1;

  sub_25197D098(v10, a2, v11, sub_251980174, v9);
}

void sub_25197C8A0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = a4;
    sub_25197C92C(&v11, a5 & 1, a1, a2);
  }
}

void sub_25197C92C(_BYTE *a1, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v64 = a2;
  swift_getObjectType();
  v9 = sub_2519AED48();
  v63 = *(v9 - 8);
  v10 = *(v63 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2519AED78();
  v61 = *(v14 - 8);
  v62 = v14;
  v15 = *(v61 + 64);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v5;
  v19 = *&v5[OBJC_IVAR____TtC16HealthMobilityUI38WalkingSteadinessOnboardingCoordinator_model];
  v20 = *a1;
  LOBYTE(v74) = *a1;
  (*(*v19 + 224))(&aBlock, &v74);
  v21 = aBlock;
  if (aBlock == 5)
  {
    if (qword_27F469418 != -1)
    {
      swift_once();
    }

    v22 = sub_2519AEAE8();
    __swift_project_value_buffer(v22, qword_27F469690);
    v23 = sub_2519AEAC8();
    v24 = sub_2519AEF58();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      aBlock = v26;
      *v25 = 136446722;
      v27 = sub_2519AF2A8();
      v29 = sub_251978CDC(v27, v28, &aBlock);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2082;
      *(v25 + 14) = sub_251978CDC(0xD000000000000035, 0x80000002519B3210, &aBlock);
      *(v25 + 22) = 2080;
      LOBYTE(v74) = v20;
      v30 = sub_2519AEE58();
      v32 = sub_251978CDC(v30, v31, &aBlock);

      *(v25 + 24) = v32;
      _os_log_impl(&dword_251974000, v23, v24, "[%{public}s.%{public}s]: No stage after %s, finishing", v25, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2530898E0](v26, -1, -1);
      MEMORY[0x2530898E0](v25, -1, -1);
    }

    v33 = *&v65[OBJC_IVAR____TtC16HealthMobilityUI38WalkingSteadinessOnboardingCoordinator_analyticsManager];
    v76 = v20;
    v34 = *(*v19 + 184);
    v35 = v34(&aBlock);
    v74 = aBlock;
    v75 = v67;
    if (v20 == 3)
    {
      v57 = (v64 & 1) == 0;
    }

    else
    {
      if (v20 != 1 || ((v34)(&v72, v35), (v73 & 1) != 0))
      {
        v36 = 1;
LABEL_20:
        sub_2519776EC(&v76, &v74, v36);
        sub_25197EFBC(1, 1, a3, a4);
        return;
      }

      v57 = v72 == 0;
    }

    v36 = v57;
    goto LABEL_20;
  }

  if (qword_27F469418 != -1)
  {
    swift_once();
  }

  v60 = v9;
  v37 = sub_2519AEAE8();
  __swift_project_value_buffer(v37, qword_27F469690);
  v38 = sub_2519AEAC8();
  v39 = sub_2519AEF18();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    aBlock = v59;
    *v40 = 136446978;
    v41 = sub_2519AF2A8();
    v43 = sub_251978CDC(v41, v42, &aBlock);

    *(v40 + 4) = v43;
    *(v40 + 12) = 2082;
    *(v40 + 14) = sub_251978CDC(0xD000000000000035, 0x80000002519B3210, &aBlock);
    *(v40 + 22) = 2080;
    LOBYTE(v74) = v20;
    v44 = sub_2519AEE58();
    v46 = sub_251978CDC(v44, v45, &aBlock);

    *(v40 + 24) = v46;
    *(v40 + 32) = 2080;
    LOBYTE(v74) = v21;
    v47 = sub_2519AEE58();
    v49 = sub_251978CDC(v47, v48, &aBlock);

    *(v40 + 34) = v49;
    _os_log_impl(&dword_251974000, v38, v39, "[%{public}s.%{public}s]: Transitioning from %s to %s", v40, 0x2Au);
    v50 = v59;
    swift_arrayDestroy();
    MEMORY[0x2530898E0](v50, -1, -1);
    MEMORY[0x2530898E0](v40, -1, -1);
  }

  sub_25197FBF8();
  v51 = sub_2519AF038();
  v52 = swift_allocObject();
  v53 = v65;
  *(v52 + 16) = v65;
  *(v52 + 24) = v21;
  *(v52 + 25) = v20;
  *(v52 + 26) = v64 & 1;
  v70 = sub_25197FFD0;
  v71 = v52;
  aBlock = MEMORY[0x277D85DD0];
  v67 = 1107296256;
  v68 = sub_2519839F0;
  v69 = &block_descriptor_54;
  v54 = _Block_copy(&aBlock);
  v55 = v53;

  sub_2519AED68();
  aBlock = MEMORY[0x277D84F90];
  sub_25197FF08(&qword_280DD9240, MEMORY[0x277D85198]);
  sub_25197FD04(0, &unk_280DD9230, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_25197FC7C();
  v56 = v60;
  sub_2519AF108();
  MEMORY[0x253089080](0, v18, v13, v54);
  _Block_release(v54);

  (*(v63 + 8))(v13, v56);
  (*(v61 + 8))(v18, v62);
}

void sub_25197D098(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getObjectType();
  if (qword_27F469440 != -1)
  {
    swift_once();
  }

  sub_2519AE4D8();
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  *(v7 + 24) = a5;

  v8 = sub_2519AEE28();

  v37 = sub_25197FF50;
  v38 = v7;
  aBlock = MEMORY[0x277D85DD0];
  v34 = 1107296256;
  v35 = sub_251977C0C;
  v36 = &block_descriptor_42;
  v9 = _Block_copy(&aBlock);

  v10 = objc_opt_self();
  v30 = a4;
  v11 = [v10 actionWithTitle:v8 style:0 handler:{v9, 0xE000000000000000}];
  _Block_release(v9);

  v31 = v11;
  sub_2519AE4D8();
  sub_2519AE4D8();
  v12 = sub_2519AEE28();

  v13 = sub_2519AEE28();

  v14 = [objc_opt_self() alertControllerWithTitle:v12 message:v13 preferredStyle:{0, 0xE000000000000000}];

  sub_2519AE4D8();
  v15 = swift_allocObject();
  *(v15 + 16) = v30;
  *(v15 + 24) = a5;

  v16 = sub_2519AEE28();

  v37 = sub_25197FF90;
  v38 = v15;
  aBlock = MEMORY[0x277D85DD0];
  v34 = 1107296256;
  v35 = sub_251977C0C;
  v36 = &block_descriptor_48;
  v17 = _Block_copy(&aBlock);

  v18 = [v10 actionWithTitle:v16 style:1 handler:{v17, 0xE000000000000000}];
  _Block_release(v17);

  [v14 addAction_];
  if (v31)
  {
    [v14 addAction_];
  }

  if (qword_27F469418 != -1)
  {
    swift_once();
  }

  v19 = sub_2519AEAE8();
  __swift_project_value_buffer(v19, qword_27F469690);
  v20 = sub_2519AEAC8();
  v21 = sub_2519AEF58();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    aBlock = v23;
    *v22 = 136446722;
    v24 = sub_2519AF2A8();
    v26 = sub_251978CDC(v24, v25, &aBlock);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2082;
    *(v22 + 14) = sub_251978CDC(0xD000000000000038, 0x80000002519B31D0, &aBlock);
    *(v22 + 22) = 2082;
    v27 = sub_2519AEE58();
    v29 = sub_251978CDC(v27, v28, &aBlock);

    *(v22 + 24) = v29;
    _os_log_impl(&dword_251974000, v20, v21, "[%{public}s.%{public}s]: Showing warning due to reason %{public}s", v22, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2530898E0](v23, -1, -1);
    MEMORY[0x2530898E0](v22, -1, -1);
  }

  [a2 presentViewController:v14 animated:1 completion:0];
}

uint64_t sub_25197D65C()
{
  v0 = [objc_opt_self() internalPrivacySettingsURLString];
  sub_2519AEE38();

  MEMORY[0x253088EC0](0x4E4F49544F4D2FLL, 0xE700000000000000);
  sub_2519AEE68();
}

void sub_25197D6FC(_BYTE *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  if (*a1 <= 1u)
  {
    if (!*a1)
    {

      sub_25197D098(ObjectType, a2, v5, sub_25197DC20, 0);
      return;
    }

    if (qword_27F469440 == -1)
    {
      goto LABEL_17;
    }

LABEL_22:
    swift_once();
    goto LABEL_17;
  }

  if (*a1 != 2)
  {
    if (qword_27F469418 != -1)
    {
      swift_once();
    }

    v6 = sub_2519AEAE8();
    __swift_project_value_buffer(v6, qword_27F469690);
    v7 = sub_2519AEAC8();
    v8 = sub_2519AEF48();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v31 = v10;
      *v9 = 136446722;
      v11 = sub_2519AF2A8();
      v13 = sub_251978CDC(v11, v12, &v31);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2082;
      *(v9 + 14) = sub_251978CDC(0xD00000000000002BLL, 0x80000002519B30C0, &v31);
      *(v9 + 22) = 2082;
      v14 = sub_2519AEE58();
      v16 = sub_251978CDC(v14, v15, &v31);

      *(v9 + 24) = v16;
      _os_log_impl(&dword_251974000, v7, v8, "[%{public}s.%{public}s]: Handling notification authorization cannot progress reason %{public}s where it should have been handled in a separate pathway.", v9, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2530898E0](v10, -1, -1);
      MEMORY[0x2530898E0](v9, -1, -1);
    }

    if (qword_27F469440 != -1)
    {
      swift_once();
    }

    goto LABEL_17;
  }

  if (qword_27F469440 != -1)
  {
    goto LABEL_22;
  }

LABEL_17:
  v17 = sub_2519AE4D8();
  v19 = v18;
  if (qword_27F469418 != -1)
  {
    swift_once();
  }

  v20 = sub_2519AEAE8();
  __swift_project_value_buffer(v20, qword_27F469690);
  v21 = sub_2519AEAC8();
  v22 = sub_2519AEF58();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v31 = v24;
    *v23 = 136446722;
    v25 = sub_2519AF2A8();
    v27 = sub_251978CDC(v25, v26, &v31);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2082;
    *(v23 + 14) = sub_251978CDC(0xD00000000000002BLL, 0x80000002519B30C0, &v31);
    *(v23 + 22) = 2082;
    v28 = sub_2519AEE58();
    v30 = sub_251978CDC(v28, v29, &v31);

    *(v23 + 24) = v30;
    _os_log_impl(&dword_251974000, v21, v22, "[%{public}s.%{public}s]: Showing blocking alert due to reason %{public}s", v23, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2530898E0](v24, -1, -1);
    MEMORY[0x2530898E0](v23, -1, -1);
  }

  sub_25197FD84(v17, v19, a2);
}

void sub_25197DC48(void *a1)
{
  if (qword_27F469440 != -1)
  {
    swift_once();
  }

  sub_2519AE4D8();
  sub_2519AE4D8();
  v1 = sub_2519AEE28();

  v2 = sub_2519AEE28();

  v3 = [objc_opt_self() alertControllerWithTitle:v1 message:v2 preferredStyle:{1, 0xE000000000000000}];

  sub_2519AE4D8();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v5 = sub_2519AEE28();

  v18 = sub_25197FEF8;
  v19 = v4;
  aBlock = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_251977C0C;
  v17 = &block_descriptor_32;
  v6 = _Block_copy(&aBlock);

  v7 = objc_opt_self();
  v12 = [v7 actionWithTitle:v5 style:1 handler:{v6, 0xE000000000000000}];
  _Block_release(v6);

  sub_2519AE4D8();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v9 = sub_2519AEE28();

  v18 = sub_25197FF00;
  v19 = v8;
  aBlock = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_251977C0C;
  v17 = &block_descriptor_36;
  v10 = _Block_copy(&aBlock);

  v11 = [v7 actionWithTitle:v9 style:0 handler:{v10, 0xE000000000000000}];
  _Block_release(v10);

  [v3 addAction_];
  [v3 addAction_];
  [v3 setPreferredAction_];
  [a1 presentViewController:v3 animated:1 completion:0];
}

void *sub_25197E08C()
{
  v0 = sub_2519AE988();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2519AE9A8();
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2519AE978();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v24 - v19;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    (*(v12 + 104))(v20, *MEMORY[0x277D11170], v11);
    (*(v1 + 104))(v5, *MEMORY[0x277D11180], v0);
    (*(v12 + 16))(v17, v20, v11);
    sub_2519AE998();
    v22 = sub_2519AE7B8();
    v23 = sub_2519AE7A8();
    v26[3] = v22;
    v26[4] = MEMORY[0x277D10CD0];
    v26[0] = v23;
    sub_25197FF08(&qword_27F469740, MEMORY[0x277D11188]);
    sub_2519AE7F8();
    (*(v25 + 8))(v10, v6);
    (*(v12 + 8))(v20, v11);
    return __swift_destroy_boxed_opaque_existential_0Tm(v26);
  }

  return result;
}

uint64_t sub_25197E3C0()
{
  v34 = sub_2519AE7D8();
  v0 = *(v34 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v34, v2);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_2519AE988();
  v5 = *(v31 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v31, v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2519AE9A8();
  v32 = *(v10 - 8);
  v33 = v10;
  v11 = *(v32 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2519AE978();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v31 - v23;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    (*(v16 + 104))(v24, *MEMORY[0x277D11158], v15);
    (*(v5 + 104))(v9, *MEMORY[0x277D11180], v31);
    (*(v16 + 16))(v21, v24, v15);
    sub_2519AE998();
    v26 = sub_2519AE7B8();
    v27 = sub_2519AE7A8();
    v35[3] = v26;
    v35[4] = MEMORY[0x277D10CD0];
    v35[0] = v27;
    sub_25197FF08(&qword_27F469740, MEMORY[0x277D11188]);
    v28 = v33;
    sub_2519AE7F8();
    (*(v32 + 8))(v14, v28);
    (*(v16 + 8))(v24, v15);
    __swift_destroy_boxed_opaque_existential_0Tm(v35);
  }

  v29 = v34;
  (*(v0 + 104))(v4, *MEMORY[0x277D10CD8], v34);
  sub_2519AE7C8();
  return (*(v0 + 8))(v4, v29);
}

uint64_t sub_25197E7B8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  v13 = *&v5[OBJC_IVAR____TtC16HealthMobilityUI38WalkingSteadinessOnboardingCoordinator_model];
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = v6;
  v14[5] = a2;
  v14[6] = a3;
  v14[7] = ObjectType;
  v15 = *(*v13 + 240);

  v16 = v6;
  v17 = a2;
  v15(a1, sub_25197FD68, v14);
}

uint64_t sub_25197E8AC(char a1, void *a2, uint64_t (*a3)(void), uint64_t a4, void *a5, void *a6, uint64_t a7)
{
  v67 = a7;
  v68 = a5;
  v12 = sub_2519AED48();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2519AED78();
  v19 = *(*(v18 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v24 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    v63 = v22;
    v64 = v21;
    v65 = v13;
    v66 = a4;
    v62 = a6;
    if (a2)
    {
      v26 = a2;
      if (qword_27F469418 != -1)
      {
        swift_once();
      }

      v27 = sub_2519AEAE8();
      __swift_project_value_buffer(v27, qword_27F469690);
      v28 = a2;
      v29 = sub_2519AEAC8();
      v30 = sub_2519AEF38();

      if (!os_log_type_enabled(v29, v30))
      {

        goto LABEL_14;
      }

      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v61 = a3;
      v33 = v32;
      aBlock[0] = v32;
      *v31 = 136446722;
      v34 = sub_2519AF2A8();
      v36 = sub_251978CDC(v34, v35, aBlock);

      *(v31 + 4) = v36;
      *(v31 + 12) = 2082;
      *(v31 + 14) = sub_251978CDC(0xD00000000000004CLL, 0x80000002519B2F20, aBlock);
      *(v31 + 22) = 2082;
      v69 = a2;
      v37 = a2;
      sub_2519786DC();
      v38 = sub_2519AEE58();
      v40 = sub_251978CDC(v38, v39, aBlock);

      *(v31 + 24) = v40;
      _os_log_impl(&dword_251974000, v29, v30, "[%{public}s.%{public}s]: Attempted to complete onboarding but received error: %{public}s", v31, 0x20u);
      swift_arrayDestroy();
      v41 = v33;
      a3 = v61;
      MEMORY[0x2530898E0](v41, -1, -1);
      MEMORY[0x2530898E0](v31, -1, -1);
    }

    else
    {
      if (qword_27F469418 != -1)
      {
        swift_once();
      }

      v42 = sub_2519AEAE8();
      __swift_project_value_buffer(v42, qword_27F469690);
      v29 = sub_2519AEAC8();
      v43 = sub_2519AEF38();
      if (os_log_type_enabled(v29, v43))
      {
        v44 = swift_slowAlloc();
        v45 = a3;
        v46 = swift_slowAlloc();
        aBlock[0] = v46;
        *v44 = 136446466;
        v47 = sub_2519AF2A8();
        v49 = sub_251978CDC(v47, v48, aBlock);

        *(v44 + 4) = v49;
        *(v44 + 12) = 2082;
        *(v44 + 14) = sub_251978CDC(0xD00000000000004CLL, 0x80000002519B2F20, aBlock);
        _os_log_impl(&dword_251974000, v29, v43, "[%{public}s.%{public}s]: Attempted to complete onboarding but received error: UNKNOWN", v44, 0x16u);
        swift_arrayDestroy();
        v50 = v46;
        a3 = v45;
        MEMORY[0x2530898E0](v50, -1, -1);
        MEMORY[0x2530898E0](v44, -1, -1);
      }
    }

LABEL_14:
    sub_25197FBF8();
    v51 = sub_2519AF038();
    v52 = swift_allocObject();
    v53 = v67;
    v54 = v68;
    v55 = v62;
    v52[2] = v68;
    v52[3] = v55;
    v52[4] = v53;
    aBlock[4] = sub_25197FD78;
    aBlock[5] = v52;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2519839F0;
    aBlock[3] = &block_descriptor_26;
    v56 = _Block_copy(aBlock);
    v57 = v54;
    v58 = v55;

    sub_2519AED68();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_25197FF08(&qword_280DD9240, MEMORY[0x277D85198]);
    sub_25197FD04(0, &unk_280DD9230, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_25197FC7C();
    sub_2519AF108();
    MEMORY[0x253089080](0, v24, v17, v56);
    _Block_release(v56);

    (*(v65 + 8))(v17, v12);
    (*(v63 + 8))(v24, v64);
    v25 = 0;
    return a3(v25);
  }

  v25 = 1;
  return a3(v25);
}

uint64_t sub_25197EEF4(uint64_t a1, void *a2)
{
  if (qword_27F469440 != -1)
  {
    swift_once();
  }

  v3 = sub_2519AE4D8();
  sub_25197FD84(v3, v4, a2);
}

void sub_25197EFBC(char a1, int a2, uint64_t a3, uint64_t a4)
{
  v48 = a3;
  LODWORD(v5) = a2;
  swift_getObjectType();
  v7 = sub_2519AED48();
  v46 = *(v7 - 8);
  v8 = *(v46 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2519AED78();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v49 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F469418 != -1)
  {
    swift_once();
  }

  v17 = sub_2519AEAE8();
  __swift_project_value_buffer(v17, qword_27F469690);
  v18 = sub_2519AEAC8();
  v19 = sub_2519AEF18();
  if (!os_log_type_enabled(v18, v19))
  {

    if ((a1 & 1) == 0)
    {
      return;
    }

    goto LABEL_7;
  }

  v20 = swift_slowAlloc();
  v45 = v5;
  v5 = v20;
  v44 = swift_slowAlloc();
  aBlock[0] = v44;
  *v5 = 136446466;
  v21 = sub_2519AF2A8();
  v23 = sub_251978CDC(v21, v22, aBlock);
  v43 = v18;
  v24 = a4;
  v25 = v13;
  v26 = v11;
  v27 = v12;
  v28 = v7;
  v29 = a1;
  v30 = v23;

  *(v5 + 4) = v30;
  LOBYTE(v30) = v29;
  v7 = v28;
  v12 = v27;
  v11 = v26;
  v13 = v25;
  a4 = v24;
  *(v5 + 12) = 2082;
  *(v5 + 14) = sub_251978CDC(0xD000000000000035, 0x80000002519B2EE0, aBlock);
  v31 = v19;
  v32 = v43;
  _os_log_impl(&dword_251974000, v43, v31, "[%{public}s.%{public}s]: Onboarding finished", v5, 0x16u);
  v33 = v44;
  swift_arrayDestroy();
  MEMORY[0x2530898E0](v33, -1, -1);
  v34 = v5;
  LOBYTE(v5) = v45;
  MEMORY[0x2530898E0](v34, -1, -1);

  if (v30)
  {
LABEL_7:
    sub_25197FBF8();
    v35 = sub_2519AF038();
    v36 = swift_allocObject();
    v38 = v47;
    v37 = v48;
    *(v36 + 16) = v47;
    *(v36 + 24) = v5 & 1;
    *(v36 + 32) = v37;
    *(v36 + 40) = a4;
    aBlock[4] = sub_25197FC44;
    aBlock[5] = v36;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2519839F0;
    aBlock[3] = &block_descriptor_0;
    v39 = _Block_copy(aBlock);
    v40 = v38;
    sub_25197FC6C(v37);

    v41 = v49;
    sub_2519AED68();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_25197FF08(&qword_280DD9240, MEMORY[0x277D85198]);
    sub_25197FD04(0, &unk_280DD9230, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_25197FC7C();
    sub_2519AF108();
    MEMORY[0x253089080](0, v41, v11, v39);
    _Block_release(v39);

    (*(v46 + 8))(v11, v7);
    (*(v13 + 8))(v41, v12);
  }
}

uint64_t sub_25197F474(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  sub_25197FD04(0, &qword_27F469730, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v19 - v11;
  v13 = a1 + OBJC_IVAR____TtC16HealthMobilityUI38WalkingSteadinessOnboardingCoordinator_rootViewController;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = *(v13 + 8);
    ObjectType = swift_getObjectType();
    v17 = HKMobilityWalkingSteadinessDetailRoomURL();
    sub_2519AE588();

    v18 = sub_2519AE598();
    (*(*(v18 - 8) + 56))(v12, 0, 1, v18);
    (*(v15 + 40))(a2 & 1, v12, a3, a4, ObjectType, v15);
    swift_unknownObjectRelease();
    return sub_25198001C(v12, &qword_27F469730, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_25197FD04);
  }

  return result;
}

id WalkingSteadinessOnboardingCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WalkingSteadinessOnboardingCoordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WalkingSteadinessOnboardingCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_25197F770()
{
  swift_getObjectType();
  if (qword_27F469418 != -1)
  {
    swift_once();
  }

  v0 = sub_2519AEAE8();
  __swift_project_value_buffer(v0, qword_27F469690);
  v1 = sub_2519AEAC8();
  v2 = sub_2519AEF58();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136446466;
    v5 = sub_2519AF2A8();
    v7 = sub_251978CDC(v5, v6, &v8);

    *(v3 + 4) = v7;
    *(v3 + 12) = 2082;
    *(v3 + 14) = sub_251978CDC(0xD00000000000002ELL, 0x80000002519B3250, &v8);
    _os_log_impl(&dword_251974000, v1, v2, "[%{public}s.%{public}s]: User pressed cancel button", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530898E0](v4, -1, -1);
    MEMORY[0x2530898E0](v3, -1, -1);
  }

  sub_25197EFBC(1, 0, 0, 0);
}

void sub_25197F928()
{
  swift_getObjectType();
  if (qword_27F469418 != -1)
  {
    swift_once();
  }

  v0 = sub_2519AEAE8();
  __swift_project_value_buffer(v0, qword_27F469690);
  v1 = sub_2519AEAC8();
  v2 = sub_2519AEF18();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136446466;
    v5 = sub_2519AF2A8();
    v7 = sub_251978CDC(v5, v6, &v8);

    *(v3 + 4) = v7;
    *(v3 + 12) = 2082;
    *(v3 + 14) = sub_251978CDC(0xD000000000000025, 0x80000002519B32B0, &v8);
    _os_log_impl(&dword_251974000, v1, v2, "[%{public}s.%{public}s]: User dismissed modal view", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530898E0](v4, -1, -1);
    MEMORY[0x2530898E0](v3, -1, -1);
  }

  sub_25197EFBC(0, 0, 0, 0);
}

unint64_t sub_25197FBF8()
{
  result = qword_280DD9200;
  if (!qword_280DD9200)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DD9200);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25197FC6C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_25197FC7C()
{
  result = qword_280DD9220;
  if (!qword_280DD9220)
  {
    sub_25197FD04(255, &unk_280DD9230, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DD9220);
  }

  return result;
}

void sub_25197FD04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_25197FD84(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2519AEE28();
  v7 = [objc_opt_self() alertControllerWithTitle:0 message:v4 preferredStyle:1];

  if (qword_27F469440 != -1)
  {
    swift_once();
  }

  sub_2519AE4D8();
  v5 = sub_2519AEE28();

  v6 = [objc_opt_self() actionWithTitle:v5 style:1 handler:{0, 0xE000000000000000}];

  [v7 addAction_];
  [a3 presentViewController:v7 animated:1 completion:0];
}

uint64_t sub_25197FF08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25197FF50()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(sub_25197D65C, 0);
}

uint64_t sub_25197FF90()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(nullsub_1, 0);
}

void sub_25197FFD0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 25);
  v3 = *(v0 + 26);
  v5 = *(v0 + 24);
  v4 = v2;
  sub_25197B66C(&v5, &v4, v3);
}

uint64_t sub_25198001C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_25198007C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  sub_25197D6FC(&v4, v2);
}

void sub_2519800BC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_25197DC48(v1);
}

uint64_t sub_2519800F8(uint64_t result)
{
  if (result)
  {
    v2 = *(v1 + 24);
    return (*(v1 + 16))();
  }

  return result;
}

void sub_25198012C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 25);
  v3 = *(v0 + 24);
  sub_25197C92C(&v3, v2, 0, 0);
}

void sub_251980184(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_251980218()
{
  v0 = sub_2519AEAE8();
  __swift_allocate_value_buffer(v0, qword_27F4697C0);
  v1 = __swift_project_value_buffer(v0, qword_27F4697C0);
  if (qword_27F469468 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27F469BE8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_2519802E0(uint64_t a1, uint64_t *a2)
{
  sub_251980888(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16HealthMobilityUI19PickerTableViewCell_item;
  swift_beginAccess();
  sub_251980988(v6, v3 + v4);
  swift_endAccess();
  sub_251980368();
  return sub_251981074(v6, &qword_27F4697E0, &qword_27F4697E8);
}

void sub_251980368()
{
  swift_getObjectType();
  v1 = OBJC_IVAR____TtC16HealthMobilityUI19PickerTableViewCell_item;
  swift_beginAccess();
  sub_251980888(&v0[v1], &v28);
  if (*(&v29 + 1))
  {
    sub_25198112C(0, &qword_27F4697E8);
    sub_25198112C(0, &qword_27F4698D0);
    if (swift_dynamicCast())
    {
      v2 = v25;
      v3 = *&v0[OBJC_IVAR____TtC16HealthMobilityUI19PickerTableViewCell_pickerView];
      ObjectType = swift_getObjectType();
      [v3 setDelegate_];
      [v3 setDataSource_];
      [v3 reloadAllComponents];
      v5 = (*(v26 + 8))(ObjectType, v26);
      v6 = *(v5 + 16);
      if (v6)
      {
        v7 = (v5 + 40);
        do
        {
          [v3 selectRow:*(v7 - 1) inComponent:*v7 animated:0];
          v7 += 2;
          --v6;
        }

        while (v6);
      }

      sub_251980888(&v0[v1], &v25);
      if (v27)
      {
        sub_25198112C(0, &unk_27F4698E0);
        if (swift_dynamicCast())
        {
          if (*(&v29 + 1))
          {
            __swift_project_boxed_opaque_existential_1(&v28, *(&v29 + 1));
            v8 = sub_2519AE968();
            v10 = v9;
            __swift_destroy_boxed_opaque_existential_0Tm(&v28);
            v11 = v8;
            goto LABEL_19;
          }
        }

        else
        {
          v30 = 0;
          v28 = 0u;
          v29 = 0u;
        }
      }

      else
      {
        sub_251981074(&v25, &qword_27F4697E0, &qword_27F4697E8);
        v28 = 0u;
        v29 = 0u;
        v30 = 0;
      }

      sub_251981074(&v28, &qword_27F4698D8, &unk_27F4698E0);
      v11 = 0;
      v10 = 0;
LABEL_19:
      sub_251980B5C(v11, v10);

      if ([v2 respondsToSelector_])
      {
        swift_unknownObjectRetain();
        [v2 pickerView:v3 didSelectRow:objc_msgSend(v3 inComponent:{sel_selectedRowInComponent_, 0), 0}];
        swift_unknownObjectRelease_n();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      return;
    }
  }

  else
  {
    sub_251981074(&v28, &qword_27F4697E0, &qword_27F4697E8);
  }

  if (qword_27F469420 != -1)
  {
    swift_once();
  }

  v12 = sub_2519AEAE8();
  __swift_project_value_buffer(v12, qword_27F4697C0);
  v13 = v0;
  v14 = sub_2519AEAC8();
  v15 = sub_2519AEF38();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *&v28 = v17;
    *v16 = 136446722;
    v18 = sub_2519AF2A8();
    v20 = sub_251978CDC(v18, v19, &v28);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2082;
    *(v16 + 14) = sub_251978CDC(1835365481, 0xE400000000000000, &v28);
    *(v16 + 22) = 2082;
    sub_2519810D0(0, &qword_27F4697E0, &qword_27F4697E8);
    v25 = v21;
    sub_251981014();
    v22 = sub_2519AEE58();
    v24 = sub_251978CDC(v22, v23, &v28);

    *(v16 + 24) = v24;
    _os_log_impl(&dword_251974000, v14, v15, "[%{public}s.%{public}s]: Attempted to set item (%{public}s) that did not conform to PickerTableViewCellSource", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2530898E0](v17, -1, -1);
    MEMORY[0x2530898E0](v16, -1, -1);
  }
}

uint64_t sub_251980830@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16HealthMobilityUI19PickerTableViewCell_item;
  swift_beginAccess();
  return sub_251980888(v1 + v3, a1);
}

uint64_t sub_251980888(uint64_t a1, uint64_t a2)
{
  sub_2519810D0(0, &qword_27F4697E0, &qword_27F4697E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251980904(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16HealthMobilityUI19PickerTableViewCell_item;
  swift_beginAccess();
  sub_251980988(a1, v1 + v3);
  swift_endAccess();
  sub_251980368();
  return sub_251981074(a1, &qword_27F4697E0, &qword_27F4697E8);
}

uint64_t sub_251980988(uint64_t a1, uint64_t a2)
{
  sub_2519810D0(0, &qword_27F4697E0, &qword_27F4697E8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void (*sub_251980A04(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_251980A68;
}

void sub_251980A68(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    sub_251980368();
  }
}

void sub_251980B5C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v5 = *(v2 + OBJC_IVAR____TtC16HealthMobilityUI19PickerTableViewCell_pickerView);
    sub_251980C7C();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_2519B08A0;
    *(v6 + 32) = a1;
    *(v6 + 40) = a2;
    *(v6 + 48) = 0x72656B636950;
    *(v6 + 56) = 0xE600000000000000;

    v7 = sub_2519AEEB8();

    v9 = HKUIJoinStringsForAutomationIdentifier();

    [v5 setAccessibilityIdentifier_];
  }

  else
  {
    v8 = *(v2 + OBJC_IVAR____TtC16HealthMobilityUI19PickerTableViewCell_pickerView);

    [v8 setAccessibilityIdentifier_];
  }
}

void sub_251980C7C()
{
  if (!qword_27F4697F8)
  {
    v0 = sub_2519AF1F8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4697F8);
    }
  }
}

id PickerTableViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PickerTableViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_251980EAC(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16HealthMobilityUI19PickerTableViewCell_item];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v5 = [objc_allocWithZone(MEMORY[0x277D75840]) init];
  *&v2[OBJC_IVAR____TtC16HealthMobilityUI19PickerTableViewCell_pickerView] = v5;
  if (a2)
  {
    v6 = sub_2519AEE28();
  }

  else
  {
    v6 = 0;
  }

  v15.receiver = v2;
  v15.super_class = type metadata accessor for PickerTableViewCell();
  v7 = objc_msgSendSuper2(&v15, sel_initWithStyle_reuseIdentifier_, 0, v6);

  v8 = OBJC_IVAR____TtC16HealthMobilityUI19PickerTableViewCell_pickerView;
  v9 = *&v7[OBJC_IVAR____TtC16HealthMobilityUI19PickerTableViewCell_pickerView];
  v10 = v7;
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  v11 = [v10 contentView];
  [v11 addSubview_];

  v12 = *&v7[v8];
  v13 = [v10 contentView];

  [v12 hk:v13 alignConstraintsWithView:?];
  return v10;
}

unint64_t sub_251981014()
{
  result = qword_27F4698C8;
  if (!qword_27F4698C8)
  {
    sub_2519810D0(255, &qword_27F4697E0, &qword_27F4697E8);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27F4698C8);
  }

  return result;
}

uint64_t sub_251981074(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  sub_2519810D0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2519810D0(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_25198112C(255, a3);
    v4 = sub_2519AF0E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_25198112C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t WeightItem.reuseIdentifier.getter()
{
  type metadata accessor for TitleValueTableViewCell();
  sub_251981334();
  return sub_2519AE888();
}

unint64_t sub_251981334()
{
  result = qword_27F4698F0;
  if (!qword_27F4698F0)
  {
    type metadata accessor for TitleValueTableViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4698F0);
  }

  return result;
}

uint64_t WeightItem.uniqueIdentifier.getter()
{
  sub_251981444();
  v1 = sub_2519AEE58();
  v2 = *v0;
  sub_25198148C();
  v3 = v2;
  v4 = sub_2519AEE58();
  v6 = v5;

  MEMORY[0x253088EC0](v4, v6);

  return v1;
}

unint64_t sub_251981444()
{
  result = qword_27F4698F8;
  if (!qword_27F4698F8)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27F4698F8);
  }

  return result;
}

void sub_25198148C()
{
  if (!qword_27F469900)
  {
    sub_2519814E4();
    v0 = sub_2519AF0E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F469900);
    }
  }
}

unint64_t sub_2519814E4()
{
  result = qword_27F469908;
  if (!qword_27F469908)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F469908);
  }

  return result;
}

uint64_t WeightItem.baseIdentifier.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t WeightItem.baseIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t WeightItem.init(weight:valueFormatter:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  a3[6] = 0;
  a3[7] = 0;
  *a3 = a1;
  return sub_251975F90(a2, (a3 + 1));
}

uint64_t sub_2519815D0()
{
  type metadata accessor for TitleValueTableViewCell();
  sub_251981334();
  return sub_2519AE888();
}

uint64_t sub_251981608()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t sub_251981638(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_251981690()
{
  sub_251981444();
  v1 = sub_2519AEE58();
  v2 = *v0;
  sub_25198148C();
  v3 = v2;
  v4 = sub_2519AEE58();
  v6 = v5;

  MEMORY[0x253088EC0](v4, v6);

  return v1;
}

uint64_t sub_251981740(uint64_t a1)
{
  v2 = sub_251981AC4();

  return MEMORY[0x282169440](a1, v2);
}

uint64_t WeightItem.title.getter()
{
  if (qword_27F469438 != -1)
  {
    swift_once();
  }

  return sub_2519AE4D8();
}

uint64_t WeightItem.value.getter()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = *(v0 + 32);
    v3 = *(v0 + 40);
    __swift_project_boxed_opaque_existential_1((v0 + 8), v2);
    v8 = 0;
    v4 = *(v3 + 16);
    v5 = v1;
    v6 = v4(&v8, v5, v2, v3);

    return v6;
  }

  else
  {
    if (qword_27F469438 != -1)
    {
      swift_once();
    }

    return sub_2519AE4D8();
  }
}

uint64_t sub_251981920()
{
  if (qword_27F469438 != -1)
  {
    swift_once();
  }

  return sub_2519AE4D8();
}

unint64_t sub_2519819B4()
{
  result = qword_27F469910;
  if (!qword_27F469910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F469910);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_251981A1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_251981A64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_251981AC4()
{
  result = qword_27F469918;
  if (!qword_27F469918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F469918);
  }

  return result;
}

uint64_t sub_251981B18()
{
  v0 = sub_2519AEAE8();
  __swift_allocate_value_buffer(v0, qword_27F469920);
  v1 = __swift_project_value_buffer(v0, qword_27F469920);
  if (qword_27F469468 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27F469BE8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_251981C04()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  v1 = [v0 dateOfBirthComponentsWithError_];
  v2 = v7[0];
  if (v1)
  {
    v3 = v1;
    sub_2519AE4B8();
    v4 = v2;
  }

  else
  {
    v5 = v7[0];
    sub_2519AE568();

    swift_willThrow();
  }

  v6 = *MEMORY[0x277D85DE8];
}

id sub_251981D20(SEL *a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  v2 = [v1 *a1];
  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_2519AE568();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

id sub_251981DF8(uint64_t a1)
{
  v2 = v1;
  v16[1] = *MEMORY[0x277D85DE8];
  sub_251984C48(0, &qword_27F469938, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = v16 - v7;
  sub_251982240(a1, v16 - v7);
  v9 = sub_2519AE4C8();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    v11 = sub_2519AE4A8();
    (*(v10 + 8))(v8, v9);
  }

  v16[0] = 0;
  v12 = [v2 _setDateOfBirthComponents_error_];

  if (v12)
  {
    result = v16[0];
  }

  else
  {
    v14 = v16[0];
    sub_2519AE568();

    result = swift_willThrow();
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_251982010(uint64_t a1, SEL *a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if ([v2 *a2])
  {
    result = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_2519AE568();

    result = swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ConfirmDetailsProvider.Details.init(dateOfBirthComponents:weight:height:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_2519AE4C8();
  (*(*(v8 - 8) + 56))(a4, 1, 1, v8);
  v9 = type metadata accessor for ConfirmDetailsProvider.Details();
  v10 = *(v9 + 20);
  v11 = *(v9 + 24);
  result = sub_2519821A0(a1, a4);
  *(a4 + v10) = a2;
  *(a4 + v11) = a3;
  return result;
}

uint64_t type metadata accessor for ConfirmDetailsProvider.Details()
{
  result = qword_27F469970;
  if (!qword_27F469970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2519821A0(uint64_t a1, uint64_t a2)
{
  sub_251984C48(0, &qword_27F469938, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_251982240(uint64_t a1, uint64_t a2)
{
  sub_251984C48(0, &qword_27F469938, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *ConfirmDetailsProvider.Details.weight.getter()
{
  v1 = *(v0 + *(type metadata accessor for ConfirmDetailsProvider.Details() + 20));
  v2 = v1;
  return v1;
}

void ConfirmDetailsProvider.Details.weight.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ConfirmDetailsProvider.Details() + 20);

  *(v1 + v3) = a1;
}

void *ConfirmDetailsProvider.Details.height.getter()
{
  v1 = *(v0 + *(type metadata accessor for ConfirmDetailsProvider.Details() + 24));
  v2 = v1;
  return v1;
}

void ConfirmDetailsProvider.Details.height.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ConfirmDetailsProvider.Details() + 24);

  *(v1 + v3) = a1;
}

BOOL sub_251982500(void *a1, uint64_t *a2)
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

void *sub_251982530@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_25198255C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_251982638@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

uint64_t sub_251982690()
{
  v2 = *(v0 + 80);
  sub_251984BB0();
  sub_25198585C(&qword_27F469948, sub_251984BB0);
  return sub_2519AECF8();
}

uint64_t ConfirmDetailsProvider.__allocating_init(source:dateGenerator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_251984CAC(a1, a2, a3);

  return v6;
}

uint64_t ConfirmDetailsProvider.init(source:dateGenerator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_251984CAC(a1, a2, a3);

  return v3;
}

uint64_t sub_2519827AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v28 = a2;
  v29 = v6;
  v7 = sub_2519AED48();
  v33 = *(v7 - 8);
  v8 = *(v33 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2519AED78();
  v31 = *(v12 - 8);
  v32 = v12;
  v13 = *(v31 + 64);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ConfirmDetailsProvider.Details();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17 - 8, v20);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  v30 = v3[9];
  sub_25198504C(a1, &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = (*(v18 + 80) + 48) & ~*(v18 + 80);
  v23 = swift_allocObject();
  v23[2] = v28;
  v23[3] = a3;
  v23[4] = v21;
  v23[5] = v3;
  sub_2519850B0(&v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
  *(v23 + ((v19 + v22 + 7) & 0xFFFFFFFFFFFFFFF8)) = v29;
  aBlock[4] = sub_251985114;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2519839F0;
  aBlock[3] = &block_descriptor_1;
  v24 = _Block_copy(aBlock);

  sub_2519AED68();
  v34 = MEMORY[0x277D84F90];
  sub_25198585C(&qword_280DD9240, MEMORY[0x277D85198]);
  v25 = MEMORY[0x277D85198];
  sub_251984C48(0, &unk_280DD9230, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_2519858A4(&qword_280DD9220, &unk_280DD9230, v25);
  sub_2519AF108();
  MEMORY[0x253089080](0, v16, v11, v24);
  _Block_release(v24);
  (*(v33 + 8))(v11, v7);
  (*(v31 + 8))(v16, v32);
}

uint64_t sub_251982BA4(uint64_t a1, unint64_t a2, uint64_t (*a3)(void))
{
  if (qword_27F469428 != -1)
  {
    swift_once();
  }

  v6 = sub_2519AEAE8();
  __swift_project_value_buffer(v6, qword_27F469920);

  v7 = sub_2519AEAC8();
  v8 = sub_2519AEF58();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v16 = a3;
    v10 = swift_slowAlloc();
    v17[0] = v10;
    *v9 = 136446722;
    v11 = sub_2519AF2A8();
    v13 = sub_251978CDC(v11, v12, v17);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    *(v9 + 14) = sub_251978CDC(0xD00000000000001FLL, 0x80000002519B3600, v17);
    *(v9 + 22) = 2082;
    *(v9 + 24) = sub_251978CDC(a1, a2, v17);
    _os_log_impl(&dword_251974000, v7, v8, "[%{public}s.%{public}s]: Saving changes to characteristic %{public}s", v9, 0x20u);
    swift_arrayDestroy();
    v14 = v10;
    a3 = v16;
    MEMORY[0x2530898E0](v14, -1, -1);
    MEMORY[0x2530898E0](v9, -1, -1);
  }

  return a3();
}

void sub_251982F88(void (*a1)(id *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v78 = a5;
  v79 = a6;
  v80 = a3;
  v81 = a2;
  v82 = a1;
  v7 = sub_2519AE4C8();
  v77 = *(v7 - 8);
  v8 = *(v77 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v75 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D83D88];
  sub_251984C48(0, &qword_27F469938, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v76 = &v73 - v15;
  sub_2519856B4();
  v17 = v16;
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251984C48(0, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details, v11);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8, v24);
  v26 = &v73 - v25;
  v27 = type metadata accessor for ConfirmDetailsProvider.Details();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27, v30);
  v32 = &v73 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = 0;
  v33 = a4;
  v34 = *(a4 + 80);

  sub_2519AECB8();

  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    sub_251985644(v26, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details);
    if (qword_27F469428 != -1)
    {
      swift_once();
    }

    v35 = sub_2519AEAE8();
    __swift_project_value_buffer(v35, qword_27F469920);
    v36 = sub_2519AEAC8();
    v37 = sub_2519AEF48();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v85[0] = v39;
      *v38 = 136446466;
      v40 = sub_2519AF2A8();
      v42 = sub_251978CDC(v40, v41, v85);

      *(v38 + 4) = v42;
      *(v38 + 12) = 2082;
      *(v38 + 14) = sub_251978CDC(0xD000000000000021, 0x80000002519B35D0, v85);
      _os_log_impl(&dword_251974000, v36, v37, "[%{public}s.%{public}s]: Attempted to save new details before we received our first set of details.", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530898E0](v39, -1, -1);
      MEMORY[0x2530898E0](v38, -1, -1);
    }

    v43 = v80;
    swift_beginAccess();
    v44 = *(v43 + 16);
    goto LABEL_29;
  }

  sub_2519850B0(v26, v32);
  v45 = *(v17 + 48);
  v74 = v32;
  sub_251982240(v32, v21);
  sub_251982240(v78, &v21[v45]);
  v46 = v77;
  v47 = *(v77 + 48);
  if (v47(v21, 1, v7) == 1)
  {
    v48 = v47(&v21[v45], 1, v7);
    v49 = a4;
    v50 = v78;
    if (v48 == 1)
    {
      v51 = sub_251985644(v21, &qword_27F469938, MEMORY[0x277CC8990]);
      v53 = v80;
      v54 = v74;
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v55 = v76;
  sub_251982240(v21, v76);
  v49 = v33;
  if (v47(&v21[v45], 1, v7) == 1)
  {
    (*(v46 + 8))(v55, v7);
    v50 = v78;
LABEL_12:
    v51 = sub_2519857B4(v21, sub_2519856B4);
    v53 = v80;
    v54 = v74;
LABEL_13:
    MEMORY[0x28223BE20](v51, v52);
    *(&v73 - 4) = v49;
    *(&v73 - 3) = v50;
    *(&v73 - 2) = &v86;
    v51 = sub_251982BA4(0x20666F2065746144, 0xED00006874726942, sub_251985754);
    goto LABEL_14;
  }

  v70 = v75;
  (*(v46 + 32))(v75, &v21[v45], v7);
  sub_25198585C(&qword_27F469988, MEMORY[0x277CC8990]);
  v71 = sub_2519AEE18();
  v72 = *(v46 + 8);
  v72(v70, v7);
  v72(v55, v7);
  v51 = sub_251985644(v21, &qword_27F469938, MEMORY[0x277CC8990]);
  v53 = v80;
  v50 = v78;
  v54 = v74;
  if ((v71 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_14:
  v56 = *(v27 + 20);
  v57 = *(v54 + v56);
  v58 = *(v50 + v56);
  if (!v57)
  {
    if (!v58)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (!v58 || (sub_251985814(0, &qword_27F469908, 0x277CCD7E8), v59 = v58, v60 = v57, v61 = sub_2519AF0C8(), v60, v59, (v61 & 1) == 0))
  {
LABEL_19:
    MEMORY[0x28223BE20](v51, v52);
    *(&v73 - 4) = v49;
    *(&v73 - 3) = v50;
    *(&v73 - 2) = &v86;
    v51 = sub_251982BA4(0x746867696557, 0xE600000000000000, sub_251985774);
  }

LABEL_20:
  v62 = *(v27 + 24);
  v63 = *(v54 + v62);
  v64 = *(v50 + v62);
  if (v63)
  {
    if (v64)
    {
      sub_251985814(0, &qword_27F469908, 0x277CCD7E8);
      v65 = v64;
      v66 = v63;
      v67 = sub_2519AF0C8();

      if (v67)
      {
        goto LABEL_26;
      }
    }

    goto LABEL_25;
  }

  if (v64)
  {
LABEL_25:
    MEMORY[0x28223BE20](v51, v52);
    *(&v73 - 4) = v49;
    *(&v73 - 3) = v50;
    *(&v73 - 2) = &v86;
    sub_251982BA4(0x746867696548, 0xE600000000000000, sub_251985794);
  }

LABEL_26:
  if (v86)
  {
    sub_251983A34();
  }

  sub_2519857B4(v54, type metadata accessor for ConfirmDetailsProvider.Details);
  swift_beginAccess();
  v44 = *(v53 + 16);
LABEL_29:
  v68 = v86;
  if (v44)
  {
    v68 = v44;
  }

  v83 = v68;
  v84 = v44 != 0;
  v69 = v44;
  v82(&v83);
  sub_251985748(v83, v84);
}

uint64_t sub_251983840(void *a1, uint64_t a2, void *a3)
{
  v6 = a1[5];
  v7 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v6);
  result = (*(v7 + 32))(a2, v6, v7);
  if (!v3 && (*a3 & 2) == 0)
  {
    *a3 |= 2uLL;
  }

  return result;
}

uint64_t sub_2519838C8(void *a1, uint64_t a2, void *a3)
{
  v6 = a1[5];
  v7 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v6);
  v8 = type metadata accessor for ConfirmDetailsProvider.Details();
  result = (*(v7 + 40))(*(a2 + *(v8 + 20)), v6, v7);
  if (!v3 && (*a3 & 4) == 0)
  {
    *a3 |= 4uLL;
  }

  return result;
}

uint64_t sub_25198395C(void *a1, uint64_t a2, void *a3)
{
  v6 = a1[5];
  v7 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v6);
  v8 = type metadata accessor for ConfirmDetailsProvider.Details();
  result = (*(v7 + 48))(*(a2 + *(v8 + 24)), v6, v7);
  if (!v3 && (*a3 & 8) == 0)
  {
    *a3 |= 8uLL;
  }

  return result;
}

uint64_t sub_2519839F0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_251983A34()
{
  v1 = *v0;
  v2 = sub_2519AED48();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2519AED78();
  v8 = *(v18 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v18, v10);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = v0[9];
  v13 = swift_allocObject();
  *(v13 + 16) = v0;
  *(v13 + 24) = v1;
  aBlock[4] = sub_2519855E8;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2519839F0;
  aBlock[3] = &block_descriptor_23;
  v14 = _Block_copy(aBlock);

  sub_2519AED68();
  v19 = MEMORY[0x277D84F90];
  sub_25198585C(&qword_280DD9240, MEMORY[0x277D85198]);
  v15 = MEMORY[0x277D85198];
  sub_251984C48(0, &unk_280DD9230, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_2519858A4(&qword_280DD9220, &unk_280DD9230, v15);
  sub_2519AF108();
  MEMORY[0x253089080](0, v12, v7, v14);
  _Block_release(v14);
  (*(v3 + 8))(v7, v2);
  (*(v8 + 8))(v12, v18);
}

uint64_t sub_25198420C(uint64_t a1)
{
  v2 = MEMORY[0x277D83D88];
  sub_251984C48(0, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details, MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v30 - v6;
  sub_251984C48(0, &qword_27F469938, MEMORY[0x277CC8990], v2);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8 - 8, v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v30 - v15;
  sub_251983D38(0x20666F2065746164, 0xED00006874726962, sub_2519855F0);
  v17 = sub_251983FBC(0x746867696568, 0xE600000000000000, sub_25198560C);
  v18 = sub_251983FBC(0x746867696577, 0xE600000000000000, sub_251985628);
  if (*(a1 + 96) == 1)
  {
    v19 = sub_2519AE4C8();
    v20 = (*(*(v19 - 8) + 48))(v16, 1, v19) != 1;
    if (v17)
    {
      v21 = (2 * v20) | 8;
    }

    else
    {
      v21 = 2 * v20;
    }

    if (v18)
    {
      v21 |= 4uLL;
    }

    *(a1 + 88) = v21;
    *(a1 + 96) = 0;
  }

  v22 = *(a1 + 80);
  sub_251982240(v16, v13);
  v23 = sub_2519AE4C8();
  (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
  v24 = type metadata accessor for ConfirmDetailsProvider.Details();
  v31 = v16;
  v26 = *(v24 + 20);
  v25 = *(v24 + 24);
  v27 = v17;

  v28 = v18;
  sub_2519821A0(v13, v7);
  *&v7[v26] = v18;
  *&v7[v25] = v17;
  (*(*(v24 - 8) + 56))(v7, 0, 1, v24);
  sub_2519AECA8();

  sub_251985644(v7, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details);
  return sub_251985644(v31, &qword_27F469938, MEMORY[0x277CC8990]);
}

uint64_t sub_251984598@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[5];
  v5 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v4);
  result = (*(v5 + 8))(v4, v5);
  if (!v2)
  {
    v7 = sub_2519AE4C8();
    return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
  }

  return result;
}

uint64_t sub_251984650@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[5];
  v5 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v4);
  result = (*(v5 + 16))(v4, v5);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2519846C0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[5];
  v5 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v4);
  result = (*(v5 + 24))(v4, v5);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t ConfirmDetailsProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 64);

  v2 = *(v0 + 80);

  return v0;
}

uint64_t ConfirmDetailsProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 64);

  v2 = *(v0 + 80);

  return MEMORY[0x2821FE8D8](v0, 98, 7);
}

uint64_t _s16HealthMobilityUI22ConfirmDetailsProviderC0E0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2519AE4C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251984C48(0, &qword_27F469938, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v39 - v13;
  sub_2519856B4();
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v15 - 8, v17);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v18 + 56);
  sub_251982240(a1, v20);
  sub_251982240(a2, &v20[v21]);
  v22 = *(v5 + 48);
  if (v22(v20, 1, v4) != 1)
  {
    sub_251982240(v20, v14);
    if (v22(&v20[v21], 1, v4) != 1)
    {
      (*(v5 + 32))(v9, &v20[v21], v4);
      sub_25198585C(&qword_27F469988, MEMORY[0x277CC8990]);
      v24 = sub_2519AEE18();
      v25 = *(v5 + 8);
      v25(v9, v4);
      v25(v14, v4);
      sub_251985644(v20, &qword_27F469938, MEMORY[0x277CC8990]);
      if ((v24 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

    (*(v5 + 8))(v14, v4);
LABEL_6:
    sub_2519857B4(v20, sub_2519856B4);
    return 0;
  }

  if (v22(&v20[v21], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_251985644(v20, &qword_27F469938, MEMORY[0x277CC8990]);
LABEL_10:
  v26 = type metadata accessor for ConfirmDetailsProvider.Details();
  v27 = *(v26 + 20);
  v28 = *(a1 + v27);
  v29 = *(a2 + v27);
  if (v28)
  {
    if (!v29)
    {
      return 0;
    }

    sub_251985814(0, &qword_27F469908, 0x277CCD7E8);
    v30 = v29;
    v31 = v28;
    v32 = sub_2519AF0C8();

    if ((v32 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v29)
  {
    return 0;
  }

  v33 = *(v26 + 24);
  v34 = *(a1 + v33);
  v35 = *(a2 + v33);
  if (v34)
  {
    if (v35)
    {
      sub_251985814(0, &qword_27F469908, 0x277CCD7E8);
      v36 = v35;
      v37 = v34;
      v38 = sub_2519AF0C8();

      if (v38)
      {
        return 1;
      }
    }
  }

  else if (!v35)
  {
    return 1;
  }

  return 0;
}

void sub_251984BB0()
{
  if (!qword_27F469940)
  {
    sub_251984C48(255, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details, MEMORY[0x277D83D88]);
    v0 = sub_2519AECC8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F469940);
    }
  }
}

void sub_251984C48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_251984CAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a2;
  v33 = a3;
  v31 = a1;
  sub_251984C48(0, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details, MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v30 = v28 - v7;
  v29 = sub_2519AF028();
  v8 = *(v29 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v29, v10);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2519AEFF8();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13, v15);
  v16 = sub_2519AED78();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v19 = sub_251985814(0, &qword_280DD9200, 0x277D85C78);
  v28[0] = "setOrLog(characteristic:block:)";
  v28[1] = v19;
  sub_2519AED68();
  v34 = MEMORY[0x277D84F90];
  sub_25198585C(&qword_280DD9208, MEMORY[0x277D85230]);
  v20 = MEMORY[0x277D85230];
  sub_251984C48(0, &qword_280DD9218, MEMORY[0x277D85230], MEMORY[0x277D83940]);
  sub_2519858A4(&qword_280DD9210, &qword_280DD9218, v20);
  sub_2519AF108();
  (*(v8 + 104))(v12, *MEMORY[0x277D85260], v29);
  *(v3 + 72) = sub_2519AF058();
  v21 = type metadata accessor for ConfirmDetailsProvider.Details();
  (*(*(v21 - 8) + 56))(v30, 1, 1, v21);
  sub_251984BB0();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  *(v3 + 80) = sub_2519AECD8();
  *(v3 + 88) = 0;
  *(v3 + 96) = 1;
  v25 = v31;
  sub_251979694(v31, v3 + 16);
  v26 = v33;
  *(v3 + 56) = v32;
  *(v3 + 64) = v26;

  sub_251983A34();
  __swift_destroy_boxed_opaque_existential_0Tm(v25);
  return v3;
}

uint64_t sub_25198504C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfirmDetailsProvider.Details();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2519850B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfirmDetailsProvider.Details();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_251985114()
{
  v1 = *(type metadata accessor for ConfirmDetailsProvider.Details() - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_251982F88(v3, v4, v5, v6, v0 + v2, v7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2519851C4()
{
  result = qword_27F469950;
  if (!qword_27F469950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F469950);
  }

  return result;
}

unint64_t sub_25198521C()
{
  result = qword_27F469958;
  if (!qword_27F469958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F469958);
  }

  return result;
}

unint64_t sub_251985274()
{
  result = qword_27F469960;
  if (!qword_27F469960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F469960);
  }

  return result;
}

unint64_t sub_2519852CC()
{
  result = qword_27F469968;
  if (!qword_27F469968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F469968);
  }

  return result;
}

void sub_2519854D0()
{
  sub_251984C48(319, &qword_27F469938, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_25198148C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for ConfirmDetailsProvider.DetailItems(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ConfirmDetailsProvider.DetailItems(uint64_t result, int a2, int a3)
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

uint64_t sub_251985644(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251984C48(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2519856B4()
{
  if (!qword_27F469980)
  {
    sub_251984C48(255, &qword_27F469938, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F469980);
    }
  }
}

void sub_251985748(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_2519857B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251985814(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_25198585C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2519858A4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_251984C48(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id HKMobilityWalkingSteadinessFeatureStatusManager.makeFeatureStatusPublisher(queue:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [objc_opt_self() defaultCenter];
  *a2 = v2;
  a2[1] = v4;
  a2[2] = a1;
  v5 = v2;

  return a1;
}

uint64_t HKMobilityWalkingSteadinessFeatureStatusManager.FeatureStatusPublisher.init(featureStatusManager:notificationCenter:queue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t HKMobilityWalkingSteadinessFeatureStatusManager.FeatureStatusPublisher.receive<A>(subscriber:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = _s22FeatureStatusPublisherV5InnerCMa();
  v7 = sub_2519888C0(a1, v3, v4, v5);
  v9[3] = v6;
  v9[4] = swift_getWitnessTable();
  v9[0] = v7;
  sub_2519AEC68();
  return __swift_destroy_boxed_opaque_existential_0Tm(v9);
}

uint64_t sub_251985B50@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x68);
  swift_beginAccess();
  v6 = *((v4 & v3) + 0x50);
  v7 = *((v4 & v3) + 0x58);
  v8 = sub_2519AEAA8();
  return (*(*(v8 - 8) + 16))(a1, &v1[v5], v8);
}

uint64_t sub_251985C24(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x68);
  swift_beginAccess();
  v6 = *((v4 & v3) + 0x50);
  v7 = *((v4 & v3) + 0x58);
  v8 = sub_2519AEAA8();
  (*(*(v8 - 8) + 40))(&v1[v5], a1, v8);
  return swift_endAccess();
}

uint64_t (*sub_251985D00())()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x68);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_251985D80(uint64_t a1)
{
  v2 = *((*MEMORY[0x277D85000] & *v1) + 0x88);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
  return MEMORY[0x2821F96F8]();
}

uint64_t sub_251985DB0(uint64_t a1)
{
  v2 = *((*MEMORY[0x277D85000] & *v1) + 0x90);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
  return MEMORY[0x2821F96F8]();
}

uint64_t sub_251985DE0(uint64_t a1)
{
  v2 = *((*MEMORY[0x277D85000] & *v1) + 0x98);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
}

uint64_t sub_251985E14()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  v3 = sub_2519AED48();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2519AED78();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[0] = *(v0 + *((v2 & v1) + 0x80));
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  v16[2] = *((v2 & v1) + 0x50);
  v16[3] = *((v2 & v1) + 0x58);
  v16[4] = v15;
  aBlock[4] = sub_251988D94;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2519839F0;
  aBlock[3] = &block_descriptor_29;
  v17 = _Block_copy(aBlock);

  sub_2519AED68();
  v19[1] = MEMORY[0x277D84F90];
  sub_251988FA8(&qword_280DD9240, MEMORY[0x277D85198]);
  sub_251988D00(0, &unk_280DD9230, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_25197FC7C();
  sub_2519AF108();
  MEMORY[0x253089080](0, v14, v8, v17);
  _Block_release(v17);
  (*(v4 + 8))(v8, v3);
  (*(v10 + 8))(v14, v9);
}

uint64_t sub_251986158()
{
  v1 = v0;
  v59[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D85000];
  v3 = *v0;
  v4 = *MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v57 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  v58 = v5;
  sub_2519AEA88();
  swift_getWitnessTable();
  v6 = sub_2519AF298();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v51 - v10;
  v12 = (v0 + *((v4 & v3) + 0x60));
  v13 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  sub_2519AE9D8();
  v14 = *(v1 + *((*v2 & *v1) + 0x70));
  v59[0] = 0;
  v15 = [v14 onboardingStatusWithError_];
  v16 = v59[0];
  if (v15)
  {
    v17 = *((*v2 & *v0) + 0x88);
    v18 = *(v0 + v17);
    *(v0 + v17) = v15;
    v19 = v15;
    v20 = v16;

    v59[0] = 0;
    v21 = [v14 notificationStatusWithError_];
    v22 = v59[0];
    if (v21)
    {
      v23 = *((*v2 & *v1) + 0x90);
      v24 = *(v1 + v23);
      *(v1 + v23) = v21;
      v25 = v21;
      v26 = v22;
      v27 = v25;

      v28 = v12[4];
      __swift_project_boxed_opaque_existential_1(v12, v12[3]);
      v29 = v19;
      v30 = v27;
      sub_2519AE9E8();
      v59[0] = v29;
      v59[1] = v30;
      _s22FeatureStatusPublisherV5InnerCMa();
      swift_getWitnessTable();
      sub_2519AEA48();

      (*(v7 + 8))(v11, v6);
      goto LABEL_11;
    }

    v56 = v6;
    v33 = v59[0];
    v32 = sub_2519AE568();

    swift_willThrow();
  }

  else
  {
    v56 = v6;
    v31 = v59[0];
    v32 = sub_2519AE568();

    swift_willThrow();
  }

  v55 = v7;
  if (qword_280DD9248 != -1)
  {
    swift_once();
  }

  v34 = sub_2519AEAE8();
  __swift_project_value_buffer(v34, qword_280DD9250);
  v35 = v1;
  v36 = v32;
  v37 = sub_2519AEAC8();
  v38 = sub_2519AEF38();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v53 = v40;
    v54 = swift_slowAlloc();
    v59[0] = v54;
    *v39 = 138543618;
    *(v39 + 4) = v35;
    *v40 = v1;
    *(v39 + 12) = 2082;
    swift_getErrorValue();
    v52 = v38;
    v41 = v35;
    v42 = sub_2519AF238();
    v44 = sub_251978CDC(v42, v43, v59);

    *(v39 + 14) = v44;
    _os_log_impl(&dword_251974000, v37, v52, "[%{public}@] Failed to create feature status: %{public}s", v39, 0x16u);
    v45 = v53;
    sub_251988B9C(v53);
    MEMORY[0x2530898E0](v45, -1, -1);
    v46 = v54;
    __swift_destroy_boxed_opaque_existential_0Tm(v54);
    MEMORY[0x2530898E0](v46, -1, -1);
    MEMORY[0x2530898E0](v39, -1, -1);
  }

  v47 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  sub_2519AE9E8();
  v59[0] = v32;
  v48 = v32;
  _s22FeatureStatusPublisherV5InnerCMa();
  swift_getWitnessTable();
  sub_2519AEA58();

  (*(v55 + 8))(v11, v56);
LABEL_11:
  result = sub_251986708();
  v50 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_251986708()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = *v0;
  v4 = *MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & v3) + 0x50);
  v6 = *((*MEMORY[0x277D85000] & v3) + 0x58);
  v7 = sub_2519AEAA8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = aBlock - v11;
  v13 = (v1 + *((v4 & v3) + 0x60));
  v14 = v13[4];
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  sub_2519AE9D8();
  sub_251985B50(v12);
  if ((*(v8 + 88))(v12, v7) == *MEMORY[0x277D11320])
  {
    (*(v8 + 96))(v12, v7);
    (*(*(v5 - 8) + 8))(v12, v5);
    [*(v1 + *((*v2 & *v1) + 0x70)) addObserver:v1 queue:*(v1 + *((*v2 & *v1) + 0x80))];
    v15 = *(v1 + *((*v2 & *v1) + 0x78));
    v16 = sub_2519AF078();
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = swift_allocObject();
    v18[2] = v5;
    v18[3] = v6;
    v18[4] = v17;
    aBlock[4] = sub_251988D64;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_251986DBC;
    aBlock[3] = &block_descriptor_16;
    v19 = _Block_copy(aBlock);

    v20 = [v15 addObserverForName:v16 object:0 queue:0 usingBlock:v19];
    _Block_release(v19);
    swift_unknownObjectRelease();
  }

  else
  {
    (*(v8 + 8))(v12, v7);
  }

  return sub_251986A3C(v1);
}

uint64_t sub_251986A3C(void *a1)
{
  v1 = (a1 + *((*MEMORY[0x277D85000] & *a1) + 0x60));
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  return sub_2519AE9E8();
}

void *sub_251986AA4()
{
  v0 = sub_2519AED48();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2519AED78();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17[1] = *(result + *((*MEMORY[0x277D85000] & *result) + 0x80));
    v13 = result;
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    aBlock[4] = sub_251988D70;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2519839F0;
    aBlock[3] = &block_descriptor_22;
    v15 = _Block_copy(aBlock);
    v16 = v13;
    sub_2519AED68();
    v17[2] = MEMORY[0x277D84F90];
    sub_251988FA8(&qword_280DD9240, MEMORY[0x277D85198]);
    sub_251988D00(0, &unk_280DD9230, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_25197FC7C();
    sub_2519AF108();
    MEMORY[0x253089080](0, v11, v5, v15);
    _Block_release(v15);
    (*(v1 + 8))(v5, v0);
    (*(v7 + 8))(v11, v6);
  }

  return result;
}

uint64_t sub_251986DBC(uint64_t a1)
{
  v2 = sub_2519AE498();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  sub_2519AE488();

  v9(v7);

  return (*(v3 + 8))(v7, v2);
}

void sub_251986EE8(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_251988DC8(v7);
}

void sub_251986F60(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_251988EA0(v7);
}

uint64_t sub_251986FD8()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = *MEMORY[0x277D85000] & *v0;
  v50 = sub_2519AED38();
  v48 = *(v50 - 8);
  v4 = *(v48 + 64);
  MEMORY[0x28223BE20](v50, v5);
  v7 = (&v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = sub_2519AED98();
  v47 = *(v49 - 8);
  v8 = *(v47 + 64);
  v10 = MEMORY[0x28223BE20](v49, v9);
  v45 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v46 = &v44 - v13;
  v14 = sub_2519AED48();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14, v16);
  if (qword_280DD9248 != -1)
  {
    swift_once();
  }

  v17 = sub_2519AEAE8();
  __swift_project_value_buffer(v17, qword_280DD9250);
  v18 = v0;
  v19 = sub_2519AEAC8();
  v20 = sub_2519AEF58();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138543362;
    *(v21 + 4) = v18;
    *v22 = v1;
    v23 = v18;
    _os_log_impl(&dword_251974000, v19, v20, "[%{public}@] Enqueuing send feature status", v21, 0xCu);
    sub_251988B9C(v22);
    v24 = v22;
    v2 = MEMORY[0x277D85000];
    MEMORY[0x2530898E0](v24, -1, -1);
    MEMORY[0x2530898E0](v21, -1, -1);
  }

  v25 = *((*v2 & *v18) + 0x98);
  if (*(v18 + v25))
  {
    v26 = *(v18 + v25);

    sub_2519AEDB8();
  }

  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = swift_allocObject();
  v28[2] = *(v3 + 80);
  v28[3] = *(v3 + 88);
  v28[4] = v27;
  aBlock[4] = sub_251988CB4;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2519839F0;
  aBlock[3] = &block_descriptor_2;
  _Block_copy(aBlock);
  v51 = MEMORY[0x277D84F90];
  sub_251988FA8(&qword_280DD9240, MEMORY[0x277D85198]);
  sub_251988D00(0, &unk_280DD9230, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_25197FC7C();

  sub_2519AF108();
  v29 = sub_2519AEDC8();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  v32 = sub_2519AEDA8();

  v33 = MEMORY[0x277D85000];
  v34 = *((*MEMORY[0x277D85000] & *v18) + 0x98);
  v35 = *(v18 + v34);
  *(v18 + v34) = v32;

  v36 = *(v18 + *((*v33 & *v18) + 0x80));
  v37 = v45;
  sub_2519AED88();
  *v7 = 100;
  v38 = v48;
  v39 = v50;
  (*(v48 + 104))(v7, *MEMORY[0x277D85178], v50);
  v40 = v46;
  MEMORY[0x253088E10](v37, v7);
  (*(v38 + 8))(v7, v39);
  v41 = *(v47 + 8);
  v42 = v49;
  v41(v37, v49);
  sub_2519AF008();

  return (v41)(v40, v42);
}

void sub_2519875A4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    a4();
  }
}

void sub_251987600()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v27 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  sub_2519AEA88();
  swift_getWitnessTable();
  v5 = sub_2519AF298();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v24 - v9;
  v11 = (v0 + *((v3 & v2) + 0x60));
  v12 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  sub_2519AE9D8();
  sub_25198793C(&v28);
  v13 = v28;
  if (v28)
  {
    v25 = v29;
    v26 = v4;
    v14 = v11[4];
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    sub_2519AE9E8();
    if (qword_280DD9248 != -1)
    {
      swift_once();
    }

    v15 = sub_2519AEAE8();
    __swift_project_value_buffer(v15, qword_280DD9250);
    v16 = v0;
    v17 = sub_2519AEAC8();
    v18 = sub_2519AEF58();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138543362;
      *(v19 + 4) = v16;
      *v20 = v1;
      v21 = v16;
      _os_log_impl(&dword_251974000, v17, v18, "[%{public}@] Sending feature status", v19, 0xCu);
      sub_251988B9C(v20);
      MEMORY[0x2530898E0](v20, -1, -1);
      MEMORY[0x2530898E0](v19, -1, -1);
    }

    v22 = v25;
    v28 = v13;
    v29 = v25;
    _s22FeatureStatusPublisherV5InnerCMa();
    swift_getWitnessTable();
    sub_2519AEA48();
    (*(v6 + 8))(v10, v5);
    sub_251988C74(v13, v22);
  }

  else
  {
    v23 = v11[4];
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    sub_2519AE9E8();
  }
}

void sub_25198793C(void *a1@<X8>)
{
  v2 = *(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x88));
  if (v2 && (v3 = *(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x90))) != 0)
  {
    *a1 = v2;
    a1[1] = v3;
    v6 = v3;
    v4 = v2;

    v5 = v6;
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
  }
}

void sub_2519879E8()
{
  v1 = v0;
  v50 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v4 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  sub_2519AEA88();
  swift_getWitnessTable();
  v5 = sub_2519AF298();
  v46 = *(v5 - 1);
  v47 = v5;
  v6 = *(v46 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v45 = &v44 - v8;
  if (qword_280DD93D8 != -1)
  {
    swift_once();
  }

  v44 = sub_2519AEAE8();
  __swift_project_value_buffer(v44, qword_280DD93E0);
  v9 = v0;
  v10 = sub_2519AEAC8();
  v11 = sub_2519AEF58();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v48 = v14;
    *v12 = 138543618;
    *(v12 + 4) = v9;
    *v13 = v1;
    *(v12 + 12) = 2082;
    v15 = v9;
    v2 = MEMORY[0x277D85000];
    *(v12 + 14) = sub_251978CDC(0xD000000000000028, 0x80000002519B3740, &v48);
    _os_log_impl(&dword_251974000, v10, v11, "[%{public}@.%{public}s] Notified that notification settings changed, updating downstream.", v12, 0x16u);
    sub_251988B9C(v13);
    MEMORY[0x2530898E0](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x2530898E0](v14, -1, -1);
    MEMORY[0x2530898E0](v12, -1, -1);
  }

  v16 = (v9 + *((*v2 & *v9) + 0x60));
  v17 = v16[4];
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  sub_2519AE9D8();
  v18 = *(v9 + *((*v2 & *v9) + 0x70));
  v48 = 0;
  v19 = [v18 notificationStatusWithError_];
  v20 = v48;
  if (v19)
  {
    v21 = *((*v2 & *v9) + 0x90);
    v22 = *(v9 + v21);
    *(v9 + v21) = v19;
    v23 = v20;

    sub_25198793C(&v48);
    v24 = v48;
    if (v48)
    {
      v25 = v49;
      v26 = v16[4];
      __swift_project_boxed_opaque_existential_1(v16, v16[3]);
      sub_2519AE9E8();
      v48 = v24;
      v49 = v25;
      _s22FeatureStatusPublisherV5InnerCMa();
      swift_getWitnessTable();
      v27 = v45;
      sub_2519AEA48();
      (*(v46 + 8))(v27, v47);
      sub_251988C74(v24, v25);
    }

    else
    {
      v42 = v16[4];
      __swift_project_boxed_opaque_existential_1(v16, v16[3]);
      sub_2519AE9E8();
    }
  }

  else
  {
    v28 = v48;
    v29 = sub_2519AE568();

    swift_willThrow();
    if (qword_280DD9248 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v44, qword_280DD9250);
    v30 = v9;
    v31 = v29;
    v32 = sub_2519AEAC8();
    v33 = sub_2519AEF38();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v48 = v47;
      *v34 = 138543618;
      *(v34 + 4) = v30;
      *v35 = v1;
      *(v34 + 12) = 2082;
      swift_getErrorValue();
      v36 = v30;
      v37 = sub_2519AF238();
      v39 = sub_251978CDC(v37, v38, &v48);

      *(v34 + 14) = v39;
      _os_log_impl(&dword_251974000, v32, v33, "[%{public}@] Failed to create feature status: %{public}s", v34, 0x16u);
      sub_251988B9C(v35);
      MEMORY[0x2530898E0](v35, -1, -1);
      v40 = v47;
      __swift_destroy_boxed_opaque_existential_0Tm(v47);
      MEMORY[0x2530898E0](v40, -1, -1);
      MEMORY[0x2530898E0](v34, -1, -1);
    }

    v41 = v16[4];
    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    sub_2519AE9E8();
  }

  v43 = *MEMORY[0x277D85DE8];
}

id sub_251988008(void *a1)
{
  v1 = a1;
  sub_251988070();

  v2 = sub_2519AEE28();

  return v2;
}

uint64_t sub_251988070()
{
  MEMORY[0x253088EC0](60, 0xE100000000000000);
  MEMORY[0x253088EC0](0xD000000000000046, 0x80000002519B37B0);

  MEMORY[0x253088EC0](32, 0xE100000000000000);
  sub_2519AF188();
  MEMORY[0x253088EC0](62, 0xE100000000000000);
  return 0;
}

void sub_25198812C(void *a1)
{
  v1 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  sub_251988F78();
}

id sub_25198816C()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  v4.receiver = v0;
  v4.super_class = _s22FeatureStatusPublisherV5InnerCMa();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_2519881DC(char *a1)
{
  v2 = *a1;
  v3 = MEMORY[0x277D85000];
  v4 = *MEMORY[0x277D85000];
  __swift_destroy_boxed_opaque_existential_0Tm(&a1[*((*MEMORY[0x277D85000] & *a1) + 0x60)]);
  v5 = *((*v3 & *a1) + 0x68);
  v6 = *((v4 & v2) + 0x50);
  v7 = *((v4 & v2) + 0x58);
  v8 = sub_2519AEAA8();
  (*(*(v8 - 8) + 8))(&a1[v5], v8);

  v9 = *&a1[*((*v3 & *a1) + 0x98)];
}

void (*sub_2519883A4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_251985D00();
  return sub_251988414;
}

void sub_251988414(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_25198845C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v2 = *(a2 + 88);
  _s22FeatureStatusPublisherV5InnerCMa();

  return sub_2519AEA48();
}

uint64_t sub_2519884BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v2 = *(a2 + 88);
  _s22FeatureStatusPublisherV5InnerCMa();

  return sub_2519AEA58();
}

uint64_t sub_251988524()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_2519AEA78();
}

uint64_t sub_25198857C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_2519AEA68();
}

id sub_251988604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v26 = a3;
  v27 = a4;
  v24 = a1;
  v25 = a2;
  v6 = *v4;
  v7 = MEMORY[0x277D85000];
  v8 = *MEMORY[0x277D85000];
  v9 = *((*MEMORY[0x277D85000] & v6) + 0x50);
  v10 = *((*MEMORY[0x277D85000] & v6) + 0x58);
  v11 = sub_2519AEAA8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v24 - v15;
  v17 = &v5[*((v8 & v6) + 0x60)];
  v18 = sub_2519AE738();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = sub_2519AE728();
  v17[3] = v18;
  v17[4] = sub_251988FA8(&qword_280DD93B8, MEMORY[0x277D11D58]);
  *v17 = v21;
  *&v5[*((*v7 & *v5) + 0x88)] = 0;
  *&v5[*((*v7 & *v5) + 0x90)] = 0;
  *&v5[*((*v7 & *v5) + 0x98)] = 0;
  sub_2519AEA98();
  (*(v12 + 32))(&v5[*((*v7 & *v5) + 0x68)], v16, v11);
  *&v5[*((*v7 & *v5) + 0x70)] = v25;
  *&v5[*((*v7 & *v5) + 0x78)] = v26;
  *&v5[*((*v7 & *v5) + 0x80)] = v27;
  v22 = _s22FeatureStatusPublisherV5InnerCMa();
  v28.receiver = v5;
  v28.super_class = v22;
  return objc_msgSendSuper2(&v28, sel_init, v24);
}

id sub_2519888C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 80);
  v10 = *(v4 + 88);
  v11 = objc_allocWithZone(_s22FeatureStatusPublisherV5InnerCMa());
  return sub_251988604(a1, a2, a3, a4);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_25198893C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_251988984(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2519889E4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_251988A2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_251988A80(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 88);
  result = sub_2519AEAA8();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_251988B9C(uint64_t a1)
{
  sub_251988D00(0, &qword_280DD9160, sub_251988C28, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_251988C28()
{
  result = qword_280DD9168;
  if (!qword_280DD9168)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DD9168);
  }

  return result;
}

void sub_251988C74(void *a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_251988D00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *sub_251988D64()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_251986AA4();
}

uint64_t sub_251988DC8(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  v5 = (v1 + *((*MEMORY[0x277D85000] & *v1) + 0x60));
  v6 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_2519AE9D8();
  v7 = *((*v4 & *v1) + 0x88);
  v8 = *(v1 + v7);
  *(v2 + v7) = a1;
  v9 = a1;

  sub_251986FD8();
  v10 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  return sub_2519AE9E8();
}

uint64_t sub_251988EA0(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  v5 = (v1 + *((*MEMORY[0x277D85000] & *v1) + 0x60));
  v6 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_2519AE9D8();
  v7 = *((*v4 & *v1) + 0x90);
  v8 = *(v1 + v7);
  *(v2 + v7) = a1;
  v9 = a1;

  sub_251986FD8();
  v10 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  return sub_2519AE9E8();
}

uint64_t sub_251988FA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_251989064()
{
  v0 = sub_2519AEAE8();
  __swift_allocate_value_buffer(v0, qword_27F4699F0);
  v1 = __swift_project_value_buffer(v0, qword_27F4699F0);
  if (qword_27F469468 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27F469BE8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_251989140()
{
  v1 = v0 + OBJC_IVAR____TtC16HealthMobilityUI46WalkingSteadinessOnboardingStartViewController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_251989190(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC16HealthMobilityUI46WalkingSteadinessOnboardingStartViewController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_2519891FC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16HealthMobilityUI46WalkingSteadinessOnboardingStartViewController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_251979A40;
}

id WalkingSteadinessOnboardingStartViewController.init()()
{
  v1 = &v0[OBJC_IVAR____TtC16HealthMobilityUI46WalkingSteadinessOnboardingStartViewController_baseIdentifier];
  *v1 = 0xD000000000000024;
  v1[1] = 0x80000002519B3800;
  v0[OBJC_IVAR____TtC16HealthMobilityUI46WalkingSteadinessOnboardingStartViewController_stage] = 0;
  *&v0[OBJC_IVAR____TtC16HealthMobilityUI46WalkingSteadinessOnboardingStartViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  if (qword_27F469440 != -1)
  {
    swift_once();
  }

  sub_2519AE4D8();
  v2 = sub_2519AEE28();

  sub_2519AE4D8();
  v3 = sub_2519AEE28();

  if (qword_280DD9170 != -1)
  {
    swift_once();
  }

  v4 = qword_280DD9178;
  v5 = sub_2519AEE28();
  v6 = [objc_opt_self() imageNamed:v5 inBundle:v4 compatibleWithTraitCollection:{0, 0xE000000000000000}];

  v13.receiver = v0;
  v13.super_class = type metadata accessor for WalkingSteadinessOnboardingStartViewController();
  v7 = objc_msgSendSuper2(&v13, sel_initWithTitle_detailText_icon_contentLayout_, v2, v3, v6, 2);

  v8 = v7;
  v9 = [v8 headerView];
  LODWORD(v10) = 1036831949;
  [v9 setTitleHyphenationFactor_];

  v11 = [v8 headerView];
  [v11 setAllowFullWidthIcon_];

  return v8;
}

void sub_251989548()
{
  ObjectType = swift_getObjectType();
  v9.receiver = v0;
  v9.super_class = type metadata accessor for WalkingSteadinessOnboardingStartViewController();
  objc_msgSendSuper2(&v9, sel_viewDidLoad);
  sub_25198A0F8(0, &qword_27F469A20, sub_251989F7C, MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2519B0FA0;
  v3 = sub_2519AEB08();
  v4 = MEMORY[0x277D74BF0];
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  *(swift_allocObject() + 16) = ObjectType;
  sub_2519AEFA8();
  swift_unknownObjectRelease();

  v5 = *&v0[OBJC_IVAR____TtC16HealthMobilityUI46WalkingSteadinessOnboardingStartViewController_baseIdentifier];
  v6 = *&v0[OBJC_IVAR____TtC16HealthMobilityUI46WalkingSteadinessOnboardingStartViewController_baseIdentifier + 8];
  v7 = sub_2519AEE28();

  v8 = sub_2519AEE28();
}

void sub_251989714(void *a1)
{
  v2 = [a1 traitCollection];
  if (qword_280DD9170 != -1)
  {
    swift_once();
  }

  v3 = qword_280DD9178;
  v4 = sub_2519AEE28();
  v5 = [objc_opt_self() imageNamed:v4 inBundle:v3 compatibleWithTraitCollection:v2];

  if (v5)
  {
    oslog = [a1 headerView];
    [oslog setIcon:v5 accessibilityLabel:0];
  }

  else
  {
    if (qword_27F469430 != -1)
    {
      swift_once();
    }

    v6 = sub_2519AEAE8();
    __swift_project_value_buffer(v6, qword_27F4699F0);
    v7 = a1;
    oslog = sub_2519AEAC8();
    v8 = sub_2519AEF48();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v9 = 136446466;
      v12 = sub_2519AF2A8();
      v14 = sub_251978CDC(v12, v13, &v17);

      *(v9 + 4) = v14;
      *(v9 + 12) = 2112;
      v15 = [v7 traitCollection];
      *(v9 + 14) = v15;
      *v10 = v15;
      _os_log_impl(&dword_251974000, oslog, v8, "[%{public}s] Unable to load icon for %@", v9, 0x16u);
      sub_251988B9C(v10);
      MEMORY[0x2530898E0](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x2530898E0](v11, -1, -1);
      MEMORY[0x2530898E0](v9, -1, -1);
    }
  }
}

id WalkingSteadinessOnboardingStartViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_2519AEE28();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_2519AEE28();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_2519AEE28();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id WalkingSteadinessOnboardingStartViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_2519AEE28();

  if (a4)
  {
    v12 = sub_2519AEE28();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id WalkingSteadinessOnboardingStartViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WalkingSteadinessOnboardingStartViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t (*sub_251989EB8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16HealthMobilityUI46WalkingSteadinessOnboardingStartViewController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_25197AC8C;
}

unint64_t sub_251989F7C()
{
  result = qword_27F469A28;
  if (!qword_27F469A28)
  {
    sub_251989FC4();
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_27F469A28);
  }

  return result;
}

unint64_t sub_251989FC4()
{
  result = qword_27F469A30;
  if (!qword_27F469A30)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F469A30);
  }

  return result;
}

void sub_25198A0F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_25198A15C()
{
  v1 = *(v0 + OBJC_IVAR____TtC16HealthMobilityUI51WalkingSteadinessAnalyticsOnboardingEventDataSource_onboardingStep);
  if (v1 <= 1)
  {
    if (*(v0 + OBJC_IVAR____TtC16HealthMobilityUI51WalkingSteadinessAnalyticsOnboardingEventDataSource_onboardingStep))
    {
      return 0x446D7269666E6F63;
    }

    else
    {
      return 0xD000000000000016;
    }
  }

  else if (v1 == 2)
  {
    return 0xD000000000000017;
  }

  else if (v1 == 3)
  {
    return 0x6163696669746F6ELL;
  }

  else
  {
    return 0x6974656C706D6F63;
  }
}

uint64_t sub_25198A3DC()
{
  v1 = *(v0 + OBJC_IVAR____TtC16HealthMobilityUI51WalkingSteadinessAnalyticsOnboardingEventDataSource_presentation);
  v2 = *(v0 + OBJC_IVAR____TtC16HealthMobilityUI51WalkingSteadinessAnalyticsOnboardingEventDataSource_presentation + 8);

  return v1;
}

uint64_t sub_25198A478()
{
  v0 = [objc_opt_self() activeWatchProductType];
  v1 = sub_2519AEE38();

  return v1;
}

uint64_t sub_25198A55C(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC16HealthMobilityUI51WalkingSteadinessAnalyticsOnboardingEventDataSource_onboardingStep) != 1)
  {
    return 0;
  }

  if (*(v1 + OBJC_IVAR____TtC16HealthMobilityUI51WalkingSteadinessAnalyticsOnboardingEventDataSource_defaultDetailItems + 8))
  {
    if (result)
    {
      v2 = result;
      type metadata accessor for HKError(0);
      sub_25198AF28(MEMORY[0x277D84F90]);
      sub_25198B02C();
      sub_2519AE548();
      v3 = sub_2519AE558();

      v4 = v3;
      result = 0;
      *v2 = v3;
    }
  }

  else
  {
    v5 = *(v1 + OBJC_IVAR____TtC16HealthMobilityUI51WalkingSteadinessAnalyticsOnboardingEventDataSource_defaultDetailItems);
    return sub_2519AEED8();
  }

  return result;
}

uint64_t sub_25198A680(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC16HealthMobilityUI51WalkingSteadinessAnalyticsOnboardingEventDataSource_onboardingStep) != 1)
  {
    return 0;
  }

  if (*(v1 + OBJC_IVAR____TtC16HealthMobilityUI51WalkingSteadinessAnalyticsOnboardingEventDataSource_defaultDetailItems + 8))
  {
    if (result)
    {
      v2 = result;
      type metadata accessor for HKError(0);
      sub_25198AF28(MEMORY[0x277D84F90]);
      sub_25198B02C();
      sub_2519AE548();
      v3 = sub_2519AE558();

      v4 = v3;
      result = 0;
      *v2 = v3;
    }
  }

  else
  {
    v5 = *(v1 + OBJC_IVAR____TtC16HealthMobilityUI51WalkingSteadinessAnalyticsOnboardingEventDataSource_defaultDetailItems);
    return sub_2519AEED8();
  }

  return result;
}

uint64_t sub_25198A7A4(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC16HealthMobilityUI51WalkingSteadinessAnalyticsOnboardingEventDataSource_onboardingStep) != 1)
  {
    return 0;
  }

  if (*(v1 + OBJC_IVAR____TtC16HealthMobilityUI51WalkingSteadinessAnalyticsOnboardingEventDataSource_changedDetailItems + 8))
  {
    if (result)
    {
      v2 = result;
      type metadata accessor for HKError(0);
      sub_25198AF28(MEMORY[0x277D84F90]);
      sub_25198B02C();
      sub_2519AE548();
      v3 = sub_2519AE558();

      v4 = v3;
      result = 0;
      *v2 = v3;
    }
  }

  else
  {
    v5 = (*(v1 + OBJC_IVAR____TtC16HealthMobilityUI51WalkingSteadinessAnalyticsOnboardingEventDataSource_changedDetailItems) & 8) == 0;
    return sub_2519AEED8();
  }

  return result;
}

uint64_t sub_25198A8CC(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC16HealthMobilityUI51WalkingSteadinessAnalyticsOnboardingEventDataSource_onboardingStep) != 1)
  {
    return 0;
  }

  if (*(v1 + OBJC_IVAR____TtC16HealthMobilityUI51WalkingSteadinessAnalyticsOnboardingEventDataSource_changedDetailItems + 8))
  {
    if (result)
    {
      v2 = result;
      type metadata accessor for HKError(0);
      sub_25198AF28(MEMORY[0x277D84F90]);
      sub_25198B02C();
      sub_2519AE548();
      v3 = sub_2519AE558();

      v4 = v3;
      result = 0;
      *v2 = v3;
    }
  }

  else
  {
    v5 = (*(v1 + OBJC_IVAR____TtC16HealthMobilityUI51WalkingSteadinessAnalyticsOnboardingEventDataSource_changedDetailItems) & 4) == 0;
    return sub_2519AEED8();
  }

  return result;
}

uint64_t sub_25198A9F4()
{
  if (*(v0 + OBJC_IVAR____TtC16HealthMobilityUI51WalkingSteadinessAnalyticsOnboardingEventDataSource_onboardingStep) == 3 && *(v0 + OBJC_IVAR____TtC16HealthMobilityUI51WalkingSteadinessAnalyticsOnboardingEventDataSource_acceptDefaults) != 2)
  {
    return sub_2519AEED8();
  }

  else
  {
    return 0;
  }
}

id sub_25198AAAC(void *a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];

  return sub_25198ABB8(a1, &selRef_ageWithHealthStore_error_);
}

id sub_25198AB58(void *a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];

  return sub_25198ABB8(a1, &selRef_biologicalSexWithHealthStore_error_);
}

id sub_25198ABB8(void *a1, SEL *a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = objc_opt_self();
  v6 = *(v2 + OBJC_IVAR____TtC16HealthMobilityUI51WalkingSteadinessAnalyticsOnboardingEventDataSource_healthStore);
  v13[0] = 0;
  v7 = [v5 *a2];
  v8 = v13[0];
  if (!v7)
  {
    v9 = v8;
    v10 = sub_2519AE568();

    swift_willThrow();
    if (a1)
    {
      *a1 = sub_2519AE558();
    }

    v7 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

id WalkingSteadinessAnalyticsOnboardingEventDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WalkingSteadinessAnalyticsOnboardingEventDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WalkingSteadinessAnalyticsOnboardingEventDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_25198ADF8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2519AF258();
  sub_2519AEE78();
  v6 = sub_2519AF278();

  return sub_25198AE70(a1, a2, v6);
}

unint64_t sub_25198AE70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2519AF208())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_25198AF28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_25198B2FC();
    v3 = sub_2519AF1B8();
    v4 = a1 + 32;

    while (1)
    {
      sub_25198B360(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_25198ADF8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_25198B428(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25198B02C()
{
  result = qword_27F4695F0;
  if (!qword_27F4695F0)
  {
    type metadata accessor for HKError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4695F0);
  }

  return result;
}

void sub_25198B2FC()
{
  if (!qword_27F469AE0)
  {
    v0 = sub_2519AF1C8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F469AE0);
    }
  }
}

uint64_t sub_25198B360(uint64_t a1, uint64_t a2)
{
  sub_25198B3C4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_25198B3C4()
{
  if (!qword_27F469AE8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F469AE8);
    }
  }
}

_OWORD *sub_25198B428(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_25198B438()
{
  type metadata accessor for PickerTableViewCell();
  sub_25198C798(&qword_27F469AF0, 255, type metadata accessor for PickerTableViewCell);
  return sub_2519AE888();
}

uint64_t sub_25198B4A4()
{
  swift_getObjectType();
  sub_25198B4E0();
  return sub_2519AEE58();
}

unint64_t sub_25198B4E0()
{
  result = qword_27F469AF8;
  if (!qword_27F469AF8)
  {
    type metadata accessor for HeightPickerItem();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27F469AF8);
  }

  return result;
}

uint64_t sub_25198B548()
{
  v1 = v0 + OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_25198B598(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_25198B604(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_25197A1AC;
}

uint64_t sub_25198B6A4()
{
  v1 = OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem____lazy_storage___usesImperialUnits;
  v2 = *(v0 + OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem____lazy_storage___usesImperialUnits);
  if (v2 == 2)
  {
    sub_25198C9C0();
    v3 = *(v0 + OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_valueFormatter + 24);
    v4 = *(v0 + OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_valueFormatter + 32);
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_valueFormatter), v3);
    v8 = 1;
    v5 = (*(v4 + 8))(&v8, v3, v4);
    v6 = [objc_opt_self() footUnit];
    LOBYTE(v2) = sub_2519AF0C8();

    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

uint64_t sub_25198B794(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_baseIdentifier);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_25198B800()
{
  v1 = (v0 + OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_baseIdentifier);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_25198B858(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_baseIdentifier);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

id HeightPickerItem.__allocating_init(initialValue:valueFormatter:)(uint64_t a1, uint64_t *a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_currentHeight;
  *&v5[OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_currentHeight] = 0;
  v5[OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem____lazy_storage___usesImperialUnits] = 2;
  v7 = &v5[OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_baseIdentifier];
  *v7 = 0;
  v7[1] = 0;
  *&v5[v6] = a1;
  sub_251979694(a2, &v5[OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_valueFormatter]);
  v10.receiver = v5;
  v10.super_class = v2;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  return v8;
}

id HeightPickerItem.init(initialValue:valueFormatter:)(uint64_t a1, uint64_t *a2)
{
  *&v2[OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_currentHeight;
  *&v2[OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_currentHeight] = 0;
  v2[OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem____lazy_storage___usesImperialUnits] = 2;
  v6 = &v2[OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_baseIdentifier];
  *v6 = 0;
  v6[1] = 0;
  *&v2[v5] = a1;
  sub_251979694(a2, &v2[OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_valueFormatter]);
  v9.receiver = v2;
  v9.super_class = type metadata accessor for HeightPickerItem();
  v7 = objc_msgSendSuper2(&v9, sel_init);
  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  return v7;
}

id HeightPickerItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HeightPickerItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeightPickerItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25198BBC8()
{
  v1 = (*v0 + OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_baseIdentifier);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_25198BC24(uint64_t a1, uint64_t a2)
{
  v5 = (*v2 + OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_baseIdentifier);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t (*sub_25198BC88())()
{
  v1 = *v0;
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_25198BCEC()
{
  v1 = *v0;
  swift_getObjectType();
  sub_25198B4E0();
  return sub_2519AEE58();
}

uint64_t sub_25198BD28(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282169440](a1, WitnessTable);
}

void HeightPickerItem.initialSelections.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_currentHeight);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_currentHeight);
  }

  else
  {
    v3 = [objc_opt_self() meterUnitWithMetricPrefix_];
    [objc_opt_self() defaultCentimeterValue];
    v2 = [objc_opt_self() quantityWithUnit:v3 doubleValue:v4];

    v1 = 0;
  }

  v5 = v1;
  if (sub_25198B6A4())
  {
    sub_25198C1D4(v2);
    v7 = v6;
    v9 = v8;
    sub_25198BEE8();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_2519B08A0;
    if (!__OFSUB__(v7, 1))
    {
      *(v10 + 32) = v7 - 1;
      *(v10 + 40) = 0;
      *(v10 + 48) = v9;
      *(v10 + 56) = 1;
LABEL_9:

      return;
    }

    __break(1u);
  }

  else
  {
    sub_25198BEE8();
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_2519B0FA0;
    sub_25198C2E0(v2);
    if (!__OFSUB__(v12, 30))
    {
      *(v11 + 32) = v12 - 30;
      *(v11 + 40) = 0;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_25198BEE8()
{
  if (!qword_27F469EE0)
  {
    sub_25198BF40();
    v0 = sub_2519AF1F8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F469EE0);
    }
  }
}

void sub_25198BF40()
{
  if (!qword_27F469B30)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F469B30);
    }
  }
}

Swift::Int __swiftcall HeightPickerItem.numberOfComponents(in:)(UIPickerView *in)
{
  if (sub_25198B6A4())
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

Swift::Int __swiftcall HeightPickerItem.pickerView(_:numberOfRowsInComponent:)(UIPickerView *_, Swift::Int numberOfRowsInComponent)
{
  v3 = sub_25198B6A4();
  v4 = 246;
  if (numberOfRowsInComponent)
  {
    v4 = 0;
  }

  v5 = 12;
  if (numberOfRowsInComponent != 1)
  {
    v5 = 0;
  }

  if (!numberOfRowsInComponent)
  {
    v5 = 9;
  }

  if (v3)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

Swift::String_optional __swiftcall HeightPickerItem.pickerView(_:titleForRow:forComponent:)(UIPickerView *_, Swift::Int titleForRow, Swift::Int forComponent)
{
  v3 = sub_25198C3D4(titleForRow, forComponent);
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

void sub_25198C1D4(void *a1)
{
  v2 = [objc_opt_self() inchUnit];
  [a1 doubleValueForUnit_];
  v4 = v3;

  v5 = round(v4);
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v5 < 9.22337204e18)
  {
    sub_2519AEE08();
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_25198C2E0(void *a1)
{
  v2 = [objc_opt_self() meterUnitWithMetricPrefix_];
  [a1 doubleValueForUnit_];
  v4 = v3;

  v5 = round(v4);
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v5 < 9.22337204e18)
  {
    sub_2519AEE08();
    return;
  }

LABEL_7:
  __break(1u);
}

id sub_25198C3D4(uint64_t a1, uint64_t a2)
{
  if ((sub_25198B6A4() & 1) == 0)
  {
    if (!a2)
    {
      result = [objc_opt_self() meterUnitWithMetricPrefix_];
      if (!__OFADD__(a1, 30))
      {
        v8 = result;
        v9 = [objc_opt_self() quantityWithUnit:result doubleValue:(a1 + 30)];

        v10 = *(v2 + OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_valueFormatter + 24);
        v11 = *(v2 + OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_valueFormatter + 32);
        __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_valueFormatter), v10);
        v14 = 1;
        v12 = (*(v11 + 16))(&v14, v9, v10, v11);
LABEL_14:
        v13 = v12;

        return v13;
      }

      __break(1u);
      goto LABEL_17;
    }

    return 0;
  }

  if (a2 != 1)
  {
    if (!a2)
    {
      result = [objc_opt_self() sharedFormatter];
      if (!result)
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      if (!__OFADD__(a1, 1))
      {
        v6 = result;
        v7 = [result formattedValueForFeet_];
        goto LABEL_12;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    return 0;
  }

  result = [objc_opt_self() sharedFormatter];
  if (result)
  {
    v6 = result;
    v7 = [result formattedValueForInches_];
LABEL_12:
    v9 = v7;

    if (v9)
    {
      v12 = sub_2519AEE38();
      goto LABEL_14;
    }

    return 0;
  }

LABEL_19:
  __break(1u);
  return result;
}

void _s16HealthMobilityUI16HeightPickerItemC10pickerView_12didSelectRow11inComponentySo08UIPickerH0C_S2itF_0(void *a1, uint64_t a2)
{
  if (sub_25198B6A4())
  {
    v5 = [a1 selectedRowInComponent_];
    v6 = (v5 + 1);
    if (!__OFADD__(v5, 1))
    {
      v7 = [a1 selectedRowInComponent_];
      v8 = 12 * v6;
      if ((v6 * 12) >> 64 == (12 * v6) >> 63)
      {
        v9 = v7 + v8;
        if (!__OFADD__(v8, v7))
        {
          v10 = [objc_opt_self() inchUnit];
          goto LABEL_8;
        }

LABEL_14:
        __break(1u);
        return;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = __OFADD__(a2, 30);
  v9 = a2 + 30;
  if (v11)
  {
    goto LABEL_12;
  }

  v10 = [objc_opt_self() meterUnitWithMetricPrefix_];
LABEL_8:
  v12 = v10;
  v13 = [objc_opt_self() quantityWithUnit:v12 doubleValue:v9];

  v14 = *(v2 + OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_currentHeight);
  *(v2 + OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_currentHeight) = v13;
  v15 = v13;

  v16 = v2 + OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v17 = *(v16 + 8);
    ObjectType = swift_getObjectType();
    (*(v17 + 8))(v2, v15, ObjectType, v17);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_25198C798(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_25198C9C0()
{
  result = qword_27F469B48;
  if (!qword_27F469B48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F469B48);
  }

  return result;
}

id sub_25198CA10()
{
  if (qword_280DD9170 != -1)
  {
    swift_once();
  }

  v1 = qword_280DD9178;
  qword_27F469B50 = qword_280DD9178;
  *algn_27F469B58 = 0xD00000000000001CLL;
  qword_27F469B60 = 0x80000002519B3C60;

  return v1;
}

HealthMobilityUI::LocalizationSource __swiftcall LocalizationSource.init(bundle:table:)(NSBundle bundle, Swift::String table)
{
  *v2 = bundle;
  *(v2 + 8) = table;
  result.table = table;
  result.bundle = bundle;
  return result;
}

uint64_t static LocalizationSource.main.getter@<X0>(void *a1@<X8>)
{
  if (qword_27F469438 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = qword_27F469B50;
  v2 = *algn_27F469B58;
  v3 = qword_27F469B60;
  *a1 = qword_27F469B50;
  a1[1] = v2;
  a1[2] = v3;
  v4 = v1;
}

id sub_25198CB24()
{
  if (qword_280DD9170 != -1)
  {
    swift_once();
  }

  v1 = qword_280DD9178;
  qword_27F469B68 = qword_280DD9178;
  unk_27F469B70 = 0xD00000000000001DLL;
  qword_27F469B78 = 0x80000002519B3C40;

  return v1;
}

uint64_t static LocalizationSource.walkingSteadiness.getter@<X0>(void *a1@<X8>)
{
  if (qword_27F469440 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = qword_27F469B68;
  v2 = unk_27F469B70;
  v3 = qword_27F469B78;
  *a1 = qword_27F469B68;
  a1[1] = v2;
  a1[2] = v3;
  v4 = v1;
}

id sub_25198CC2C()
{
  if (qword_27F4694C8 != -1)
  {
    swift_once();
  }

  v1 = qword_27F46CD30;
  qword_27F469B80 = qword_27F46CD30;
  *algn_27F469B88 = 0xD000000000000014;
  qword_27F469B90 = 0x80000002519B3C20;

  return v1;
}

uint64_t static LocalizationSource.healthUI.getter@<X0>(void *a1@<X8>)
{
  if (qword_27F469448 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = qword_27F469B80;
  v2 = *algn_27F469B88;
  v3 = qword_27F469B90;
  *a1 = qword_27F469B80;
  a1[1] = v2;
  a1[2] = v3;
  v4 = v1;
}

id sub_25198CD34()
{
  if (qword_27F4694D0 != -1)
  {
    swift_once();
  }

  v1 = qword_27F46CD38;
  qword_27F469B98 = qword_27F46CD38;
  unk_27F469BA0 = 0xD00000000000001DLL;
  qword_27F469BA8 = 0x80000002519B3C00;

  return v1;
}

uint64_t static LocalizationSource.legacy.getter@<X0>(void *a1@<X8>)
{
  if (qword_27F469450 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = qword_27F469B98;
  v2 = unk_27F469BA0;
  v3 = qword_27F469BA8;
  *a1 = qword_27F469B98;
  a1[1] = v2;
  a1[2] = v3;
  v4 = v1;
}

uint64_t sub_25198CE48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *a4;
  v9 = a4[1];
  v11 = a4[2];
  result = sub_2519AE4D8();
  if (*(a9 + 16))
  {
    v13 = sub_2519AEE48();

    return v13;
  }

  return result;
}

uint64_t LocalizationSource.localized(_:locale:value:comment:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *v8;
  v10 = v8[1];
  v12 = v8[2];
  result = sub_2519AE4D8();
  if (*(a8 + 16))
  {
    v14 = sub_2519AEE48();

    return v14;
  }

  return result;
}

id HKMobilityLocalizedString()
{
  sub_2519AEE38();
  if (qword_27F469438 != -1)
  {
    swift_once();
  }

  sub_2519AE4D8();

  v0 = sub_2519AEE28();

  return v0;
}

Swift::String __swiftcall localizedStringForObjC(_:)(Swift::String a1)
{
  if (qword_27F469438 != -1)
  {
    swift_once();
  }

  v1 = sub_2519AE4D8();
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

id HKMobilityHBXLocalizedString()
{
  sub_2519AEE38();
  if (qword_27F469450 != -1)
  {
    swift_once();
  }

  sub_2519AE4D8();

  v0 = sub_2519AEE28();

  return v0;
}

Swift::String __swiftcall localizedHBXStringForObjC(_:)(Swift::String a1)
{
  if (qword_27F469450 != -1)
  {
    swift_once();
  }

  v1 = sub_2519AE4D8();
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t static DeepLink.openMotionAndFitnessSettings()()
{
  v0 = [objc_opt_self() internalPrivacySettingsURLString];
  sub_2519AEE38();

  MEMORY[0x253088EC0](0x4E4F49544F4D2FLL, 0xE700000000000000);
  sub_2519AEE68();
}

uint64_t static DeepLink.motionAndFitnessSettingsLink.getter()
{
  v0 = [objc_opt_self() internalPrivacySettingsURLString];
  v1 = sub_2519AEE38();

  MEMORY[0x253088EC0](0x4E4F49544F4D2FLL, 0xE700000000000000);
  return v1;
}

uint64_t static DeepLink.heightDataTypeDetailLink.getter()
{
  sub_25198D5CC();
  v1 = *(*(v0 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v0 - 8, v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v16 - v7;
  v9 = [objc_allocWithZone(MEMORY[0x277D0FD60]) init];
  sub_25198D624();
  v10 = MEMORY[0x253088FA0](*MEMORY[0x277CCCBA8]);
  v11 = [v9 URLForDataTypeDetailWithObjectType_];

  if (v11)
  {
    sub_2519AE588();

    v12 = sub_2519AE598();
    (*(*(v12 - 8) + 56))(v5, 0, 1, v12);
  }

  else
  {
    v12 = sub_2519AE598();
    (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  }

  sub_25198D670(v5, v8);
  sub_2519AE598();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_25198D6D4(v8);
    v14 = 0;
  }

  else
  {
    v14 = sub_2519AE578();
    (*(v13 + 8))(v8, v12);
  }

  return v14;
}

void sub_25198D5CC()
{
  if (!qword_27F469730)
  {
    sub_2519AE598();
    v0 = sub_2519AF0E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F469730);
    }
  }
}

unint64_t sub_25198D624()
{
  result = qword_27F469BB0;
  if (!qword_27F469BB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F469BB0);
  }

  return result;
}

uint64_t sub_25198D670(uint64_t a1, uint64_t a2)
{
  sub_25198D5CC();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25198D6D4(uint64_t a1)
{
  sub_25198D5CC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for DeepLink(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for DeepLink(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_25198D870()
{
  v0 = *MEMORY[0x277D11A98];
  result = sub_2519AEE98();
  qword_280DD93C8 = result;
  unk_280DD93D0 = v2;
  return result;
}

uint64_t sub_25198D9CC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = sub_2519AEAE8();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  v6 = *a3;
  if (qword_280DD93C0 != -1)
  {
    swift_once();
  }

  sub_2519AEE98();
  return sub_2519AEAD8();
}

uint64_t sub_25198DAA8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_2519AEAE8();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

void *WalkingSteadinessOnboardingAboutHealthDetailsViewController.init()()
{
  v0 = type metadata accessor for WalkingSteadinessOnboardingAboutHealthDetailsDataSource();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_251992B48();
  if (qword_27F469440 != -1)
  {
    swift_once();
  }

  sub_2519AE4D8();
  sub_2519AE4D8();

  v3 = sub_2519AE938();
  [v3 setModalInPresentation_];

  return v3;
}

void sub_25198DD04()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for WalkingSteadinessOnboardingAboutHealthDetailsViewController();
  objc_msgSendSuper2(&v7, sel_viewDidLoad);
  v1 = [v0 tableView];
  if (v1)
  {
    v2 = v1;
    [v1 setSeparatorStyle_];

    v3 = [v0 tableView];
    if (v3)
    {
      v4 = v3;
      [v3 setContentInset_];

      v5 = [v0 headerView];
      LODWORD(v6) = 1036831949;
      [v5 setTitleHyphenationFactor_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_25198DDFC(void *a1)
{
  v1 = a1;
  sub_25198DD04();
}

id WalkingSteadinessOnboardingAboutHealthDetailsViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WalkingSteadinessOnboardingAboutHealthDetailsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for WalkingSteadinessOnboardingAboutHealthDetailsViewController()
{
  result = qword_27F469C18;
  if (!qword_27F469C18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ConfirmDetailsFooterView.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16HealthMobilityUI24ConfirmDetailsFooterView_configuration;
  v4 = sub_2519AEBF8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id sub_25198E010()
{
  v1 = v0;
  v2 = sub_2519AEB68();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v25 - v10;
  v12 = OBJC_IVAR____TtC16HealthMobilityUI24ConfirmDetailsFooterView____lazy_storage___titleLabel;
  v13 = *(v0 + OBJC_IVAR____TtC16HealthMobilityUI24ConfirmDetailsFooterView____lazy_storage___titleLabel);
  if (v13)
  {
    v14 = *(v0 + OBJC_IVAR____TtC16HealthMobilityUI24ConfirmDetailsFooterView____lazy_storage___titleLabel);
  }

  else
  {
    sub_2519AEB88();
    v15 = sub_2519AEB28();
    v16 = *(v3 + 8);
    v16(v11, v2);
    sub_2519AEB88();
    v17 = sub_2519AEB48();
    v16(v8, v2);
    sub_2519AEBB8();
    v19 = v18;
    v20 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    [v20 setNumberOfLines_];
    [v20 setFont_];
    [v20 setTextColor_];
    if (v19)
    {
      v21 = sub_2519AEE28();

      [v20 setText_];
    }

    v22 = *(v1 + v12);
    *(v1 + v12) = v20;
    v14 = v20;

    v13 = 0;
  }

  v23 = v13;
  return v14;
}

char *sub_25198E228(uint64_t a1, double a2)
{
  *&v2[OBJC_IVAR____TtC16HealthMobilityUI24ConfirmDetailsFooterView____lazy_storage___titleLabel] = 0;
  v5 = OBJC_IVAR____TtC16HealthMobilityUI24ConfirmDetailsFooterView_configuration;
  v6 = sub_2519AEBF8();
  v7 = *(v6 - 8);
  (*(v7 + 16))(&v2[v5], a1, v6);
  v30.receiver = v2;
  v30.super_class = type metadata accessor for ConfirmDetailsFooterView();
  v8 = objc_msgSendSuper2(&v30, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v9 = sub_25198E010();
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];

  v10 = OBJC_IVAR____TtC16HealthMobilityUI24ConfirmDetailsFooterView____lazy_storage___titleLabel;
  [*&v8[OBJC_IVAR____TtC16HealthMobilityUI24ConfirmDetailsFooterView____lazy_storage___titleLabel] setPreferredMaxLayoutWidth_];
  v11 = *&v8[v10];
  v12 = v8;
  [v12 addSubview_];
  v28 = objc_opt_self();
  sub_25198E884();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2519B1270;
  v14 = [*&v8[v10] topAnchor];
  v15 = [v12 topAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:18.0];

  *(v13 + 32) = v16;
  v17 = [*&v8[v10] leadingAnchor];
  v18 = [v12 leadingAnchor];

  v19 = [v17 constraintEqualToAnchor:v18 constant:0.0];
  *(v13 + 40) = v19;
  v20 = [*&v8[v10] trailingAnchor];
  v21 = [v12 trailingAnchor];

  v22 = [v20 constraintLessThanOrEqualToAnchor:v21 constant:-0.0];
  *(v13 + 48) = v22;
  v23 = [*&v8[v10] bottomAnchor];
  v24 = [v12 bottomAnchor];

  v25 = [v23 constraintEqualToAnchor:v24 constant:-18.0];
  *(v13 + 56) = v25;
  sub_25198E8D8();
  v26 = sub_2519AEEB8();

  [v28 activateConstraints_];

  (*(v7 + 8))(a1, v6);
  return v12;
}

id ConfirmDetailsFooterView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ConfirmDetailsFooterView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConfirmDetailsFooterView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ConfirmDetailsFooterView()
{
  result = qword_27F469C30;
  if (!qword_27F469C30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25198E7D4()
{
  result = sub_2519AEBF8();
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

void sub_25198E884()
{
  if (!qword_27F469750)
  {
    v0 = sub_2519AF1F8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F469750);
    }
  }
}

unint64_t sub_25198E8D8()
{
  result = qword_27F469C40;
  if (!qword_27F469C40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F469C40);
  }

  return result;
}

uint64_t sub_25198E970()
{
  v0 = sub_2519AEAE8();
  __swift_allocate_value_buffer(v0, qword_27F469C48);
  v1 = __swift_project_value_buffer(v0, qword_27F469C48);
  if (qword_27F469468 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27F469BE8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_25198EA4C()
{
  v1 = v0 + qword_27F469C68;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_25198EA9C(uint64_t a1, uint64_t a2)
{
  v4 = v2 + qword_27F469C68;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_25198EB08(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_27F469C68;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_251979A40;
}

id WalkingSteadinessOnboardingSetupCompleteViewController.init(healthExperienceStore:pinnedContentManager:notificationsEnabled:)(uint64_t a1, uint64_t *a2)
{
  *(v2 + qword_27F469C60) = 4;
  *(v2 + qword_27F469C68 + 8) = 0;
  swift_unknownObjectWeakInit();
  v5 = (v2 + qword_27F469C70);
  *v5 = 0xD000000000000028;
  v5[1] = 0x80000002519B3F20;
  v6 = HKMobilityWalkingSteadinessType();
  v25 = a1;
  sub_251979694(a1, v27);
  sub_251979694(a2, v26);
  v7 = sub_2519AE958();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = sub_2519AE948();
  v11 = qword_27F469C78;
  *(v2 + qword_27F469C78) = v10;
  if (qword_27F469440 != -1)
  {
    swift_once();
  }

  sub_2519AE4D8();
  sub_2519AE4D8();

  v12 = *(v2 + v11);
  v13 = qword_280DD9170;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = qword_280DD9178;
  v15 = sub_2519AEE28();
  v16 = [objc_opt_self() imageNamed:v15 inBundle:v14 compatibleWithTraitCollection:{0, 0xE000000000000000}];

  LOWORD(v24) = 0;
  v17 = sub_2519AE938();
  v18 = [v17 headerView];
  LODWORD(v19) = 1036831949;
  [v18 setTitleHyphenationFactor_];

  v20 = [v17 headerView];
  [v20 setAllowFullWidthIcon_];

  sub_251985814(0, &qword_27F469BB0, 0x277CCD830);
  v21 = MEMORY[0x253088FA0](*MEMORY[0x277CCC948]);
  v22 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2519AE758();

  __swift_destroy_boxed_opaque_existential_0Tm(v25);
  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  return v17;
}

void sub_25198EF68()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for WalkingSteadinessOnboardingSetupCompleteViewController();
  objc_msgSendSuper2(&v6, sel_viewDidLoad);
  if (qword_27F469440 != -1)
  {
    swift_once();
  }

  sub_2519AE4D8();
  v1 = sub_2519AEE28();

  sub_251980C7C();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2519B12D0;
  v3 = *&v0[qword_27F469C70 + 8];
  *(v2 + 32) = *&v0[qword_27F469C70];
  *(v2 + 40) = v3;
  *(v2 + 48) = 1701736260;
  *(v2 + 56) = 0xE400000000000000;
  *(v2 + 64) = 0x6E6F74747542;
  *(v2 + 72) = 0xE600000000000000;

  v4 = sub_2519AEEB8();

  v5 = HKUIJoinStringsForAutomationIdentifier();
}

void sub_25198F0FC(void *a1)
{
  v1 = a1;
  sub_25198EF68();
}

void sub_25198F144(void *a1, uint64_t a2, uint64_t a3)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for WalkingSteadinessOnboardingSetupCompleteViewController();
  v4 = v6.receiver;
  objc_msgSendSuper2(&v6, sel_viewWillAppear_, a3);
  v5 = [v4 navigationItem];
  [v5 setHidesBackButton_];
}

void sub_25198F1D8(char *a1)
{
  v2 = &a1[qword_27F469C68];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 1);
    swift_getObjectType();
    v4 = *(v3 + 8);
    v5 = a1;
    v4();
    swift_unknownObjectRelease();
  }
}

void sub_25198F284(char *a1)
{
  v2 = &a1[qword_27F469C68];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 1);
    swift_getObjectType();
    v4 = *(v3 + 24);
    v5 = a1;
    v4();
    swift_unknownObjectRelease();
  }
}

void sub_25198F330(void *a1)
{
  swift_getObjectType();
  v23.receiver = v1;
  v23.super_class = type metadata accessor for WalkingSteadinessOnboardingSetupCompleteViewController();
  objc_msgSendSuper2(&v23, sel_traitCollectionDidChange_, a1);
  v3 = [v1 traitCollection];
  v4 = [v3 userInterfaceStyle];
  if (a1 && v4 == [a1 userInterfaceStyle])
  {
  }

  else
  {
    v5 = qword_280DD9170;
    v6 = v3;
    if (v5 != -1)
    {
      swift_once();
    }

    v7 = qword_280DD9178;
    v8 = sub_2519AEE28();
    v9 = [objc_opt_self() imageNamed:v8 inBundle:v7 compatibleWithTraitCollection:v6];

    if (v9)
    {
      v10 = [v1 headerView];
      [v10 setIcon:v9 accessibilityLabel:0];
    }

    else
    {
      if (qword_27F469478 != -1)
      {
        swift_once();
      }

      v11 = sub_2519AEAE8();
      __swift_project_value_buffer(v11, qword_27F469C48);
      v12 = v6;
      v13 = sub_2519AEAC8();
      v14 = sub_2519AEF48();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v22 = v17;
        *v15 = 136446466;
        v18 = sub_2519AF2A8();
        v20 = sub_251978CDC(v18, v19, &v22);

        *(v15 + 4) = v20;
        *(v15 + 12) = 2112;
        *(v15 + 14) = v12;
        *v16 = v3;
        v21 = v12;
        _os_log_impl(&dword_251974000, v13, v14, "[%{public}s] Unable to load icon for %@", v15, 0x16u);
        sub_251988B9C(v16);
        MEMORY[0x2530898E0](v16, -1, -1);
        __swift_destroy_boxed_opaque_existential_0Tm(v17);
        MEMORY[0x2530898E0](v17, -1, -1);
        MEMORY[0x2530898E0](v15, -1, -1);
      }

      else
      {
      }
    }
  }
}

void sub_25198F644(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_25198F330(a3);
}

uint64_t sub_25198F6E0()
{
  sub_25197ABDC(v0 + qword_27F469C68);
  v1 = *(v0 + qword_27F469C78);

  v2 = *(v0 + qword_27F469C70 + 8);
}

id WalkingSteadinessOnboardingSetupCompleteViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WalkingSteadinessOnboardingSetupCompleteViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25198F76C(uint64_t a1)
{
  sub_25197ABDC(a1 + qword_27F469C68);
  v2 = *(a1 + qword_27F469C78);

  v3 = *(a1 + qword_27F469C70 + 8);
}

uint64_t (*sub_25198F7E0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_27F469C68;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_25197AC8C;
}

uint64_t type metadata accessor for WalkingSteadinessOnboardingSetupCompleteViewController()
{
  result = qword_27F469C80;
  if (!qword_27F469C80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25198F8CC()
{
  if (!qword_280DD9160)
  {
    sub_251985814(255, &qword_280DD9168, 0x277D82BB8);
    v0 = sub_2519AF0E8();
    if (!v1)
    {
      atomic_store(v0, &qword_280DD9160);
    }
  }
}

uint64_t sub_25198FAF0()
{
  v0 = sub_2519AEAE8();
  __swift_allocate_value_buffer(v0, qword_27F469C90);
  v1 = __swift_project_value_buffer(v0, qword_27F469C90);
  if (qword_27F469468 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27F469BE8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_25198FBB8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v0 setTimeStyle_];
  result = [v0 setDateStyle_];
  qword_27F469CA8 = v0;
  return result;
}

id sub_25198FC1C()
{
  result = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  qword_27F469CB0 = result;
  return result;
}

uint64_t sub_25198FC50()
{
  v0 = sub_2519AE658();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2519AE6C8();
  __swift_allocate_value_buffer(v6, qword_27F469CB8);
  __swift_project_value_buffer(v6, qword_27F469CB8);
  (*(v1 + 104))(v5, *MEMORY[0x277CC9830], v0);
  sub_2519AE668();
  return (*(v1 + 8))(v5, v0);
}

uint64_t DateOfBirthItem.reuseIdentifier.getter()
{
  type metadata accessor for TitleValueTableViewCell();
  sub_251991254(&qword_27F4698F0, type metadata accessor for TitleValueTableViewCell);
  return sub_2519AE888();
}

uint64_t DateOfBirthItem.uniqueIdentifier.getter()
{
  sub_25199129C(0, &qword_27F469938, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v14 - v4;
  v6 = type metadata accessor for DateOfBirthItem();
  v14[0] = v6;
  sub_25198FF50();
  v7 = sub_2519AEE58();
  v9 = v8;
  sub_251982240(v0 + *(v6 + 20), v5);
  v10 = sub_2519AEE58();
  v12 = v11;
  v14[0] = v7;
  v14[1] = v9;

  MEMORY[0x253088EC0](v10, v12);

  return v14[0];
}

uint64_t type metadata accessor for DateOfBirthItem()
{
  result = qword_27F469CE0;
  if (!qword_27F469CE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_25198FF50()
{
  result = qword_27F469CD0;
  if (!qword_27F469CD0)
  {
    type metadata accessor for DateOfBirthItem();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27F469CD0);
  }

  return result;
}

uint64_t DateOfBirthItem.baseIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DateOfBirthItem.baseIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DateOfBirthItem.init(dateOfBirthComponents:dateGenerator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for DateOfBirthItem();
  *a4 = 0;
  a4[1] = 0;
  result = sub_25199008C(a1, a4 + *(v8 + 20));
  v10 = (a4 + *(v8 + 24));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t sub_25199008C(uint64_t a1, uint64_t a2)
{
  sub_25199129C(0, &qword_27F469938, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_251990120()
{
  type metadata accessor for TitleValueTableViewCell();
  sub_251991254(&qword_27F4698F0, type metadata accessor for TitleValueTableViewCell);
  return sub_2519AE888();
}

uint64_t sub_251990188(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_2519901E0(uint64_t a1)
{
  sub_25199129C(0, &qword_27F469938, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v15 - v6;
  v15[0] = a1;
  sub_25198FF50();
  v8 = sub_2519AEE58();
  v10 = v9;
  sub_251982240(v1 + *(a1 + 20), v7);
  v11 = sub_2519AEE58();
  v13 = v12;
  v15[0] = v8;
  v15[1] = v10;

  MEMORY[0x253088EC0](v11, v13);

  return v15[0];
}

uint64_t sub_251990304(uint64_t a1)
{
  v2 = sub_251991254(&qword_27F469D00, type metadata accessor for DateOfBirthItem);

  return MEMORY[0x282169440](a1, v2);
}

uint64_t DateOfBirthItem.title.getter()
{
  if (qword_27F469438 != -1)
  {
    swift_once();
  }

  return sub_2519AE4D8();
}

uint64_t DateOfBirthItem.value.getter()
{
  v1 = sub_2519AE4C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25199129C(0, &qword_27F469938, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v15 - v10;
  v12 = type metadata accessor for DateOfBirthItem();
  sub_251982240(v0 + *(v12 + 20), v11);
  if ((*(v2 + 48))(v11, 1, v1) == 1)
  {
    if (qword_27F469438 != -1)
    {
      swift_once();
    }

    return sub_2519AE4D8();
  }

  else
  {
    (*(v2 + 32))(v6, v11, v1);
    v14 = sub_25199062C(v6);
    (*(v2 + 8))(v6, v1);
    return v14;
  }
}

uint64_t sub_25199062C(uint64_t a1)
{
  v3 = sub_2519AE4C8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277D83D88];
  sub_25199129C(0, &qword_27F469D08, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v72 = &v71 - v13;
  sub_25199129C(0, &qword_27F469D10, MEMORY[0x277CC9578], v9);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v18 = &v71 - v17;
  v19 = sub_2519AE608();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v23 = MEMORY[0x28223BE20](v19, v22);
  v25 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v26);
  v73 = &v71 - v27;
  if (qword_27F469498 != -1)
  {
    swift_once();
  }

  v28 = sub_2519AE6C8();
  __swift_project_value_buffer(v28, qword_27F469CB8);
  sub_2519AE688();
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_2519913B8(v18, &qword_27F469D10, MEMORY[0x277CC9578]);
    if (qword_27F469480 != -1)
    {
      swift_once();
    }

    v29 = sub_2519AEAE8();
    __swift_project_value_buffer(v29, qword_27F469C90);
    v30 = v4;
    (*(v4 + 16))(v8, a1, v3);
    v31 = sub_2519AEAC8();
    v32 = sub_2519AEF48();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v74 = v34;
      *v33 = 136446722;
      *(v33 + 4) = sub_251978CDC(0x6942664F65746144, 0xEF6D657449687472, &v74);
      *(v33 + 12) = 2082;
      *(v33 + 14) = sub_251978CDC(0xD000000000000020, 0x80000002519B4110, &v74);
      *(v33 + 22) = 2080;
      sub_251991254(&qword_27F469D18, MEMORY[0x277CC8990]);
      v35 = sub_2519AF1E8();
      v37 = v36;
      (*(v30 + 8))(v8, v3);
      v38 = sub_251978CDC(v35, v37, &v74);

      *(v33 + 24) = v38;
      _os_log_impl(&dword_251974000, v31, v32, "[%{public}s.%{public}s]: Unable to create date from birth day components: %s", v33, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2530898E0](v34, -1, -1);
      MEMORY[0x2530898E0](v33, -1, -1);
    }

    else
    {

      (*(v30 + 8))(v8, v3);
    }

    return 0;
  }

  (*(v20 + 32))(v73, v18, v19);
  v39 = sub_2519AE4A8();
  v40 = v1 + *(type metadata accessor for DateOfBirthItem() + 24);
  v41 = *(v40 + 8);
  (*v40)();
  v42 = sub_2519AE5D8();
  v43 = *(v20 + 8);
  v43(v25, v19);
  v44 = [v39 hk:v42 ageWithCurrentDate:?];

  if (qword_27F469490 != -1)
  {
    swift_once();
  }

  v45 = qword_27F469CB0;
  v46 = sub_2519AEEF8();
  v47 = [v45 stringFromNumber_];

  v48 = v72;
  if (!v47)
  {
    if (qword_27F469480 != -1)
    {
      swift_once();
    }

    v65 = sub_2519AEAE8();
    __swift_project_value_buffer(v65, qword_27F469C90);
    v66 = sub_2519AEAC8();
    v67 = sub_2519AEF48();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v74 = v69;
      *v68 = 136446723;
      *(v68 + 4) = sub_251978CDC(0x6942664F65746144, 0xEF6D657449687472, &v74);
      *(v68 + 12) = 2082;
      *(v68 + 14) = sub_251978CDC(0xD000000000000020, 0x80000002519B4110, &v74);
      *(v68 + 22) = 2049;
      *(v68 + 24) = v44;
      _os_log_impl(&dword_251974000, v66, v67, "[%{public}s.%{public}s]: Unable to create age string from age: %{private}ld", v68, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2530898E0](v69, -1, -1);
      MEMORY[0x2530898E0](v68, -1, -1);
    }

    v43(v73, v19);
    return 0;
  }

  v71 = v43;
  v49 = sub_2519AEE38();
  v51 = v50;

  v52 = sub_2519AE648();
  (*(*(v52 - 8) + 56))(v48, 1, 1, v52);
  sub_25199129C(0, &qword_27F469D20, sub_251991300, MEMORY[0x277D84560]);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_2519B08A0;
  if (qword_27F469488 != -1)
  {
    swift_once();
  }

  v54 = qword_27F469CA8;
  v55 = sub_2519AE5D8();
  v56 = [v54 stringFromDate_];

  v57 = sub_2519AEE38();
  v59 = v58;

  v60 = MEMORY[0x277D837D0];
  *(v53 + 56) = MEMORY[0x277D837D0];
  v61 = sub_251991364();
  *(v53 + 32) = v57;
  *(v53 + 40) = v59;
  *(v53 + 96) = v60;
  *(v53 + 104) = v61;
  *(v53 + 64) = v61;
  *(v53 + 72) = v49;
  *(v53 + 80) = v51;
  if (qword_27F469438 != -1)
  {
    swift_once();
  }

  v62 = sub_2519AE4D8();
  v63 = v71;
  if (*(v53 + 16))
  {
    v64 = sub_2519AEE48();
  }

  else
  {
    v64 = v62;
  }

  sub_2519913B8(v48, &qword_27F469D08, MEMORY[0x277CC9788]);
  v63(v73, v19);
  return v64;
}

uint64_t sub_251991030()
{
  if (qword_27F469438 != -1)
  {
    swift_once();
  }

  return sub_2519AE4D8();
}

void sub_2519910E8()
{
  sub_2519911B4();
  if (v0 <= 0x3F)
  {
    sub_25199129C(319, &qword_27F469938, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_251991204();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2519911B4()
{
  if (!qword_27F469CF0)
  {
    v0 = sub_2519AF0E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F469CF0);
    }
  }
}

unint64_t sub_251991204()
{
  result = qword_27F469CF8;
  if (!qword_27F469CF8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27F469CF8);
  }

  return result;
}

uint64_t sub_251991254(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_25199129C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_251991300()
{
  result = qword_27F469D28;
  if (!qword_27F469D28)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F469D28);
  }

  return result;
}

unint64_t sub_251991364()
{
  result = qword_27F469D30;
  if (!qword_27F469D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F469D30);
  }

  return result;
}

uint64_t sub_2519913B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_25199129C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_25199143C(uint64_t a1, uint64_t a2)
{
  sub_2519914A0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2519914A0()
{
  if (!qword_27F469D38)
  {
    sub_2519AE768();
    sub_2519AE748();
    sub_251992A08(&qword_27F469D40, MEMORY[0x277D12068]);
    v0 = sub_2519AF298();
    if (!v1)
    {
      atomic_store(v0, &qword_27F469D38);
    }
  }
}

uint64_t WalkingSteadinessAdvertisableFeatureSourceProvider.__allocating_init(context:)(uint64_t a1)
{
  sub_2519914A0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v14[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2519AE848();
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  sub_2519AE868();
  v7 = sub_2519AE858();
  (*(*(v7 - 8) + 8))(a1, v7);
  v8 = type metadata accessor for WalkingSteadinessAdvertisableFeatureSourceProvider();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  sub_251991728(v6, v11 + OBJC_IVAR____TtC16HealthMobilityUI50WalkingSteadinessAdvertisableFeatureSourceProvider_currentCountry);
  __swift_destroy_boxed_opaque_existential_0Tm(v14);
  return v11;
}

uint64_t WalkingSteadinessAdvertisableFeatureSourceProvider.__allocating_init(currentCountry:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_251991728(a1, v5 + OBJC_IVAR____TtC16HealthMobilityUI50WalkingSteadinessAdvertisableFeatureSourceProvider_currentCountry);
  return v5;
}

uint64_t type metadata accessor for WalkingSteadinessAdvertisableFeatureSourceProvider()
{
  result = qword_27F469D58;
  if (!qword_27F469D58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_251991728(uint64_t a1, uint64_t a2)
{
  sub_2519914A0();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25199178C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D10D08];
  v3 = sub_2519AE7E8();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_251991810()
{
  if (qword_27F469440 != -1)
  {
    swift_once();
  }

  v0 = sub_2519AE4D8();
  v2 = v1;
  v3 = sub_2519AE4D8();
  v5 = v4;
  if (qword_280DD9170 != -1)
  {
    swift_once();
  }

  v6 = qword_280DD9178;
  v7 = sub_2519AEE28();
  v8 = [objc_opt_self() imageNamed:v7 inBundle:{v6, 0xE000000000000000}];

  return MEMORY[0x282169518](v0, v2, v3, v5, v8);
}

id sub_2519919D0()
{
  v0 = *MEMORY[0x277CCBDF0];
  v1 = sub_2519AE9C8();
  v2 = [v1 areAllRequirementsSatisfied];

  return v2;
}

uint64_t sub_251991A1C()
{
  v1 = sub_2519AEAE8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v0;
  sub_2519AEAB8();
  type metadata accessor for WalkingSteadinessAdvertisableFeatureSourceProvider();
  sub_251992A08(&qword_27F469D48, type metadata accessor for WalkingSteadinessAdvertisableFeatureSourceProvider);
  sub_2519AE778();
  return (*(v2 + 8))(v6, v1);
}

uint64_t sub_251991B60(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v20 = a3;
  v8 = *v4;
  sub_251992744();
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9, v13);
  v15 = &v21[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2519AE788();
  __swift_project_boxed_opaque_existential_1(v21, v21[3]);
  sub_2519AE9F8();
  swift_getObjectType();
  v16 = *MEMORY[0x277CCC120];
  sub_2519AEE38();
  sub_2519AEFB8();
  v17 = swift_allocObject();
  *(v17 + 16) = v20;
  *(v17 + 24) = a4;
  *(v17 + 32) = a1;
  *(v17 + 40) = a2;
  *(v17 + 48) = v8;

  v18 = a1;
  sub_2519AF088();
  swift_unknownObjectRelease();

  (*(v11 + 8))(v15, v10);
  return __swift_destroy_boxed_opaque_existential_0Tm(v21);
}

uint64_t sub_251991D3C(char a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v48 = a6;
  v49 = a5;
  sub_251992968();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251992744();
  v46 = *(v17 - 8);
  v47 = v17;
  v18 = *(v46 + 64);
  MEMORY[0x28223BE20](v17, v19);
  v45 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2519AEAE8();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_2519AEAB8();
    v27 = sub_2519AEAC8();
    v28 = sub_2519AEF58();
    v29 = os_log_type_enabled(v27, v28);
    v44 = a7;
    if (v29)
    {
      v30 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v50[0] = v42;
      *v30 = 136446210;
      v31 = sub_2519AF2A8();
      v43 = v16;
      v33 = a3;
      v34 = a4;
      v35 = sub_251978CDC(v31, v32, v50);
      v16 = v43;

      *(v30 + 4) = v35;
      a4 = v34;
      a3 = v33;
      _os_log_impl(&dword_251974000, v27, v28, "[%{public}s] Notification defaults written and synced", v30, 0xCu);
      v36 = v42;
      __swift_destroy_boxed_opaque_existential_0Tm(v42);
      MEMORY[0x2530898E0](v36, -1, -1);
      MEMORY[0x2530898E0](v30, -1, -1);
    }

    (*(v22 + 8))(v26, v21);
    sub_2519AE798();
    if (v48)
    {
      sub_2519AE788();
      __swift_project_boxed_opaque_existential_1(v50, v50[3]);
      sub_2519AE9F8();
      swift_getObjectType();
      v37 = v45;
      sub_2519AEFC8();
      v38 = swift_allocObject();
      v38[2] = a3;
      v38[3] = a4;
      v38[4] = v44;

      sub_2519AF088();
      swift_unknownObjectRelease();

      (*(v46 + 8))(v37, v47);
      return __swift_destroy_boxed_opaque_existential_0Tm(v50);
    }

    sub_2519AE828();
    sub_251992A08(&qword_27F469D70, MEMORY[0x277D10D50]);
    sub_2519AF288();
  }

  else
  {
    if (a2)
    {
      swift_getErrorValue();
      sub_2519AF238();
    }

    else
    {
      v50[0] = 0;
      v50[1] = 0xE000000000000000;
      sub_2519AF148();
      MEMORY[0x253088EC0](91, 0xE100000000000000);
      v40 = sub_2519AF2A8();
      MEMORY[0x253088EC0](v40);

      MEMORY[0x253088EC0](0xD000000000000055, 0x80000002519B42A0);
    }

    sub_2519AE818();
    swift_storeEnumTagMultiPayload();
  }

  a3(v16);
  return sub_251992A50(v16, sub_251992968);
}