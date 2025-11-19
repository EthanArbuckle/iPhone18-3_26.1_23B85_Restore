id CameraScannerFlowViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CameraScannerFlowViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void _s18HealthExperienceUI31CameraScannerFlowViewControllerC5coderACSgSo7NSCoderC_tcfc_0()
{
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController_loadingView) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController_hasShownIntroduction) = 0;
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController_introductionView);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController____lazy_storage___dataScannerViewController) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController____lazy_storage___closeButton) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController____lazy_storage___tapToRadarButton) = 0;
  sub_1BA4A8018();
  __break(1u);
}

id sub_1BA408E5C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  [v1 willMoveToParentViewController_];
  [v2 removeFromSuperview];
  result = [v1 removeFromParentViewController];
  if (v3)
  {
    return v3(result);
  }

  return result;
}

unint64_t UITableView.ElementKind.rawValue.getter()
{
  v1 = 0x686E6F6974636573;
  v2 = 0x666E6F6974636573;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
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

uint64_t DiffableTableViewDataSource.__allocating_init(tableView:cellProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(v3);
  *&v6[qword_1EBBF23F0 + 8] = 0;
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  return sub_1BA4A4658();
}

uint64_t sub_1BA40964C(uint64_t a1, uint64_t a2)
{
  v4 = v2 + qword_1EBBF23F0;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1BA4096B8(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_1EBBF23F0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1BA001DB4;
}

id sub_1BA409818(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a3;
  v11 = a1;
  sub_1BA409FE8(a4, a5, a6);
  v13 = v12;

  if (v13)
  {
    v14 = sub_1BA4A6758();
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t DiffableTableViewDataSource.init(tableView:cellProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + qword_1EBBF23F0 + 8) = 0;
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  return sub_1BA4A4658();
}

id DiffableTableViewDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DiffableTableViewDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA409A08()
{
  v0 = objc_allocWithZone(type metadata accessor for DiffableTableViewDataSource());
  *&v0[qword_1EBBF23F0 + 8] = 0;
  swift_unknownObjectWeakInit();
  return sub_1BA4A4658();
}

uint64_t UITableView.ElementKind.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1BA4A8108();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1BA409ADC()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();

  return sub_1BA4A84D8();
}

uint64_t sub_1BA409BB8()
{
  sub_1BA4A68C8();
}

uint64_t sub_1BA409C80()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();

  return sub_1BA4A84D8();
}

void sub_1BA409D64(unint64_t *a1@<X8>)
{
  v2 = 0xED00007265646165;
  v3 = 0x686E6F6974636573;
  v4 = 0xED00007265746F6FLL;
  v5 = 0x666E6F6974636573;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000013;
    v4 = 0x80000001BA4E1560;
  }

  if (*v1)
  {
    v3 = 0xD000000000000013;
    v2 = 0x80000001BA4E1530;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t UITableView.TextItem.text.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t UITableView.TextItem.text.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t UITableView.TextItem.init(text:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1BA409EA4(uint64_t a1)
{
  v2 = sub_1BA40A5B4();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

uint64_t sub_1BA409F38(uint64_t a1)
{
  v2 = sub_1BA40A560();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

uint64_t sub_1BA409F9C(uint64_t a1)
{
  v2 = sub_1BA40A50C();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

uint64_t sub_1BA409FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1BA4A1998();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1BFAEC380](0, a1, v9);
  v12 = v3 + qword_1EBBF23F0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v8 + 8))(v11, v7);
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
LABEL_9:
    sub_1BA1EAFD0(&v20);
    return 0;
  }

  v14 = *(v12 + 8);
  v23[0] = Strong;
  v23[1] = v14;
  sub_1B9F0D9AC(0, &qword_1EDC67F10);
  sub_1B9F0D9AC(0, qword_1EDC648F8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    goto LABEL_8;
  }

  if (!*(&v21 + 1))
  {
LABEL_8:
    (*(v8 + 8))(v11, v7);
    goto LABEL_9;
  }

  sub_1B9F25598(&v20, v23);
  v15 = v24;
  v16 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  (*(v16 + 8))(&v20, a2, a3, v11, v15, v16);
  (*(v8 + 8))(v11, v7);
  sub_1B9F0D9AC(0, &qword_1EDC6AD50);
  if (swift_dynamicCast())
  {
    v17 = v19[1];
    __swift_destroy_boxed_opaque_existential_1(v23);
    return v17;
  }

  __swift_destroy_boxed_opaque_existential_1(v23);
  return 0;
}

uint64_t type metadata accessor for DiffableTableViewDataSource()
{
  result = qword_1EBBF2408;
  if (!qword_1EBBF2408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1BA40A2BC()
{
  result = qword_1EBBF23F8;
  if (!qword_1EBBF23F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF23F8);
  }

  return result;
}

unint64_t sub_1BA40A314()
{
  result = qword_1EBBF2400;
  if (!qword_1EBBF2400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2400);
  }

  return result;
}

unint64_t sub_1BA40A50C()
{
  result = qword_1EBBF2418;
  if (!qword_1EBBF2418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2418);
  }

  return result;
}

unint64_t sub_1BA40A560()
{
  result = qword_1EBBF2420;
  if (!qword_1EBBF2420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2420);
  }

  return result;
}

unint64_t sub_1BA40A5B4()
{
  result = qword_1EBBF2428;
  if (!qword_1EBBF2428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2428);
  }

  return result;
}

uint64_t SnapshotDataSource<>.withCellRegistration(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CellRegistering();
  v8 = swift_allocObject();
  swift_unknownObjectRetain();

  CellRegistering.init<>(_:cellRegistrationBlock:)(v4, a1, a2, a4);
  return v8;
}

uint64_t CellRegistering.__allocating_init<>(_:cellRegistrationBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  CellRegistering.init<>(_:cellRegistrationBlock:)(a1, a2, a3, a4);
  return v8;
}

uint64_t CellRegistering.identifier.getter()
{
  v0 = sub_1B9F25DF0();

  return v0;
}

uint64_t CellRegistering.wrappedDataSource.getter()
{
  sub_1B9F264D0();

  return swift_unknownObjectRetain();
}

uint64_t sub_1BA40A788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v4 = a4();
  swift_unknownObjectRelease();

  return v4;
}

uint64_t *CellRegistering.init<>(_:cellRegistrationBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v5;
  v5[4] = a1;
  v11 = *(v10 + 88);
  v12 = *(v11 + 8);
  v13 = *(v10 + 80);
  swift_unknownObjectRetain();
  v5[2] = v12(v13, v11);
  v5[3] = v14;
  v15 = swift_allocObject();
  v15[2] = v13;
  v15[3] = a4;
  v15[4] = v11;
  v15[5] = a1;
  v15[6] = a2;
  v15[7] = a3;
  v5[5] = sub_1BA40AC50;
  v5[6] = v15;
  return v5;
}

uint64_t CellRegistering.deinit()
{

  swift_unknownObjectRelease();

  return v0;
}

uint64_t CellRegistering.__deallocating_deinit()
{
  CellRegistering.deinit();

  return swift_deallocClassInstance();
}

uint64_t CellRegistering<>.applyReorder(sectionTransactions:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 48);
  v6 = *(*v2 + 80);
  swift_unknownObjectRetain();
  v5(a1, v6, a2);
  return swift_unknownObjectRelease();
}

uint64_t CellRegistering<>.supplementaryItem(ofKind:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v10 = *(*v4 + 80);
  swift_unknownObjectRetain();
  v9(a1, a2, a3, v10, a4);
  return swift_unknownObjectRelease();
}

uint64_t sub_1BA40AC50(uint64_t a1)
{
  v3 = v1[6];
  (*(v1[3] + 8))(a1, v1[2]);
  return v3(a1);
}

uint64_t OrganDonationDataSourceItem.uniqueIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1BA40AD28(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 72) = v3;
  *(v4 + 80) = v2;
}

uint64_t sub_1BA40AD88()
{
  swift_beginAccess();
  v1 = *(v0 + 72);

  return v1;
}

uint64_t sub_1BA40ADD4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
}

uint64_t sub_1BA40AE28(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 88) = v3;
  *(v4 + 96) = v2;
}

uint64_t sub_1BA40AE88()
{
  swift_beginAccess();
  v1 = *(v0 + 88);

  return v1;
}

uint64_t sub_1BA40AED4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
}

void sub_1BA40AF28(int a1, id a2)
{
  v2 = [a2 navigationController];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_allocWithZone(type metadata accessor for OrganDonationStatusViewController()) initWithNibName:0 bundle:0];
    [v3 pushViewController:v4 animated:1];
  }
}

uint64_t OrganDonationDataSourceItem.deinit()
{

  return v0;
}

uint64_t OrganDonationDataSourceItem.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BA40B0D4()
{
  v1 = v0;
  v2 = sub_1BA4A1798();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = 0xD00000000000001CLL;
  v19 = 0x80000001BA5076B0;
  sub_1BA4A1788();
  sub_1BA40B75C(&qword_1EDC6AE60, 255, MEMORY[0x1E69695A8]);
  v6 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v6);

  (*(v3 + 8))(v5, v2);
  v7 = v19;
  *(v0 + 16) = v18;
  *(v0 + 24) = v7;
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = sub_1BA4A1318();
  *(v0 + 40) = v8;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 1;
  v18 = type metadata accessor for CollectionViewListDisclosureCell();
  sub_1BA16A6B4();
  *(v0 + 72) = sub_1BA4A6808();
  *(v0 + 80) = v9;
  sub_1B9F25350();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BA4B5460;
  *(v10 + 32) = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  *(v10 + 40) = v11;
  *(v10 + 48) = 0xD000000000000011;
  *(v10 + 56) = 0x80000001BA507730;
  v12 = sub_1BA4A6AE8();

  v13 = HKUIJoinStringsForAutomationIdentifier();

  if (v13)
  {
    v14 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  *(v1 + 88) = v14;
  *(v1 + 96) = v16;
  return v1;
}

uint64_t sub_1BA40B3A4()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 72);

  return v2;
}

uint64_t sub_1BA40B3F4(uint64_t a1, uint64_t a2)
{
  result = sub_1BA40B75C(&qword_1EBBF2430, a2, type metadata accessor for OrganDonationDataSourceItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BA40B4A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

uint64_t sub_1BA40B75C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_1BA40B7AC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedViewable;
  swift_beginAccess();
  v3 = *&v1[v2];
  if (!v3 || (ObjectType = swift_getObjectType(), (v5 = swift_conformsToProtocol2()) == 0) || (v6 = *(v5 + 16), v7 = v5, v8 = v3, v9 = v6(ObjectType, v7), v8, (v9 & 1) != 0))
  {
    v10 = OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedFeedItem;
    swift_beginAccess();
    v11 = *&v1[v10];
    if (v11 && (v12 = [v11 objectID]) != 0)
    {
      v13 = v12;
      v14 = [v1 viewController];
      if (v14)
      {
        v15 = v14;
        UIViewController.resolvedHealthExperienceStore.getter(&aBlock);

        __swift_project_boxed_opaque_existential_1(&aBlock, v28);
        v16 = sub_1BA4A1B78();
        __swift_destroy_boxed_opaque_existential_1(&aBlock);
        v17 = swift_allocObject();
        v17[2] = v16;
        v17[3] = v13;
        v17[4] = v1;
        v29 = sub_1BA41479C;
        v30 = v17;
        aBlock = MEMORY[0x1E69E9820];
        v26 = 1107296256;
        v27 = sub_1B9F0B040;
        v28 = &block_descriptor_51_0;
        v18 = _Block_copy(&aBlock);
        v19 = v16;
        v20 = v13;
        v21 = v1;

        [v19 performBlock_];
        _Block_release(v18);

        return;
      }
    }

    else
    {
      sub_1BA4A7DF8();

      aBlock = 0xD00000000000001CLL;
      v26 = 0x80000001BA507850;
      v22 = *&v1[v10];
      sub_1BA413EF4(0, &qword_1EBBF24D0, MEMORY[0x1E69A3DD0], MEMORY[0x1E69E6720]);
      v23 = v22;
      v24 = sub_1BA4A6808();
      MEMORY[0x1BFAF1350](v24);
    }

    sub_1BA4A8018();
    __break(1u);
  }
}

uint64_t sub_1BA40BADC()
{
  v1 = sub_1BA4A1728();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TileHeaderDetailKind();
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_dataSource;
  swift_beginAccess();
  sub_1B9F6DEE0(v0 + v8, &v20);
  if (!v21)
  {
    sub_1B9F6F294(&v20, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
    return 0;
  }

  sub_1B9F1134C(&v20, v22);
  v9 = v23;
  v10 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  (*(v10 + 40))(v9, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v15 = *v7;
    __swift_destroy_boxed_opaque_existential_1(v22);
    return v15;
  }

  if (EnumCaseMultiPayload != 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v22);
    return 0;
  }

  sub_1B9F6D6D8();
  v13 = *(v7 + *(v12 + 48));
  (*(v2 + 32))(v4, v7, v1);
  v14 = sub_1BA4A16B8();
  if (v13)
  {
    if (qword_1EDC6E3F8 != -1)
    {
      swift_once();
    }
  }

  else if (qword_1EDC6E3F8 != -1)
  {
    swift_once();
  }

  v17 = HKMostRecentSampleEndDateText();

  if (v17)
  {
    v18 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  }

  else
  {
    v18 = 0;
  }

  (*(v2 + 8))(v4, v1);
  __swift_destroy_boxed_opaque_existential_1(v22);
  return v18;
}

void *sub_1BA40BDE8()
{
  v1 = v0;
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 isDismissible];
  result = 0;
  if (v7)
  {
    type metadata accessor for DynamicFontLabel();
    v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v9 setTranslatesAutoresizingMaskIntoConstraints_];
    v10 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *v9) + 0x68))(*MEMORY[0x1E69DDDC8]);
    (*((*v10 & *v9) + 0x80))(2);
    v11 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_accessoryColor;
    swift_beginAccess();
    v12 = *&v1[v11];
    v43 = v9;
    v13 = v9;
    [v13 setTextColor_];
    [v13 setTextAlignment_];
    [v13 setAdjustsFontSizeToFitWidth_];
    LODWORD(v14) = 1148846080;
    [v13 setContentCompressionResistancePriority:0 forAxis:v14];
    LODWORD(v15) = 1148846080;
    [v13 setContentCompressionResistancePriority:1 forAxis:v15];
    LODWORD(v16) = 1148846080;
    [v13 setContentHuggingPriority:0 forAxis:v16];
    LODWORD(v17) = 1148846080;
    [v13 setContentHuggingPriority:1 forAxis:v17];
    v18 = *MEMORY[0x1E69DDDC0];
    v19 = objc_opt_self();
    v20 = [v19 preferredFontDescriptorWithTextStyle:v18 compatibleWithTraitCollection:0];
    v21 = [v20 fontDescriptorWithSymbolicTraits_];

    if (v21)
    {
      v22 = [objc_opt_self() fontWithDescriptor:v21 size:0.0];
    }

    else
    {
      sub_1BA4A3DD8();
      v23 = v18;
      v24 = sub_1BA4A3E88();
      v25 = sub_1BA4A6FB8();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v46 = v41;
        *v26 = 136315906;
        v27 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v42 = v23;
        v29 = sub_1B9F0B82C(v27, v28, &v46);

        *(v26 + 4) = v29;
        *(v26 + 12) = 2080;
        v44 = 0;
        v45 = 1;
        sub_1BA413EF4(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
        v30 = sub_1BA4A6808();
        v32 = sub_1B9F0B82C(v30, v31, &v46);

        *(v26 + 14) = v32;
        *(v26 + 22) = 2080;
        LODWORD(v44) = 2;
        type metadata accessor for SymbolicTraits(0);
        v33 = sub_1BA4A6808();
        v35 = sub_1B9F0B82C(v33, v34, &v46);
        v23 = v42;

        *(v26 + 24) = v35;
        *(v26 + 32) = 2112;
        v36 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        *(v26 + 34) = v36;
        v37 = v40;
        *v40 = v36;
        _os_log_impl(&dword_1B9F07000, v24, v25, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v26, 0x2Au);
        sub_1B9F6F294(v37, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
        MEMORY[0x1BFAF43A0](v37, -1, -1);
        v38 = v41;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v38, -1, -1);
        MEMORY[0x1BFAF43A0](v26, -1, -1);
      }

      (*(v3 + 8))(v6, v2);
      v21 = [v19 preferredFontDescriptorWithTextStyle_];
      v22 = [objc_opt_self() fontWithDescriptor:v21 size:0.0];
    }

    v39 = v22;

    [v13 setFont_];
    return v43;
  }

  return result;
}

void *sub_1BA40C378()
{
  v1 = v0;
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_dataSource;
  swift_beginAccess();
  sub_1B9F6DEE0(v1 + v6, v55);
  v7 = v56;
  if (v56)
  {
    v8 = v57;
    v9 = __swift_project_boxed_opaque_existential_1(v55, v56);
    v10 = *(v7 - 8);
    v11 = MEMORY[0x1EEE9AC00](v9);
    v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13, v11);
    sub_1B9F6F294(v55, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
    LOBYTE(v8) = (*(v8 + 48))(v7, v8);
    (*(v10 + 8))(v13, v7);
    if (v8)
    {
      return 0;
    }
  }

  else
  {
    sub_1B9F6F294(v55, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
  }

  type metadata accessor for DynamicFontLabel();
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  v15 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v14) + 0x68))(*MEMORY[0x1E69DDDC8]);
  (*((*v15 & *v14) + 0x80))(2);
  v16 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessoryColor;
  swift_beginAccess();
  v17 = *(v1 + v16);
  v18 = v14;
  [v18 setTextColor_];
  [v18 setTextAlignment_];
  [v18 setAdjustsFontSizeToFitWidth_];
  LODWORD(v19) = 1148846080;
  [v18 setContentCompressionResistancePriority:0 forAxis:v19];
  LODWORD(v20) = 1148846080;
  [v18 setContentCompressionResistancePriority:1 forAxis:v20];
  LODWORD(v21) = 1148846080;
  [v18 setContentHuggingPriority:0 forAxis:v21];
  LODWORD(v22) = 1148846080;
  [v18 setContentHuggingPriority:1 forAxis:v22];
  v23 = *MEMORY[0x1E69DDDC0];
  v24 = objc_opt_self();
  v25 = [v24 preferredFontDescriptorWithTextStyle:v23 compatibleWithTraitCollection:0];
  v26 = [v25 fontDescriptorWithSymbolicTraits_];

  if (v26)
  {
    v27 = [objc_opt_self() fontWithDescriptor:v26 size:0.0];
  }

  else
  {
    sub_1BA4A3DD8();
    v28 = v23;
    v29 = sub_1BA4A3E88();
    v30 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v54 = v49;
      *v31 = 136315906;
      v32 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v50 = v3;
      v34 = sub_1B9F0B82C(v32, v33, &v54);
      v51 = v28;
      v35 = v34;

      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      v52 = 0;
      v53 = 1;
      sub_1BA413EF4(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
      v36 = sub_1BA4A6808();
      v38 = sub_1B9F0B82C(v36, v37, &v54);

      *(v31 + 14) = v38;
      *(v31 + 22) = 2080;
      LODWORD(v52) = 2;
      type metadata accessor for SymbolicTraits(0);
      v39 = sub_1BA4A6808();
      v41 = sub_1B9F0B82C(v39, v40, &v54);
      v28 = v51;

      *(v31 + 24) = v41;
      *(v31 + 32) = 2112;
      v42 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v31 + 34) = v42;
      v43 = v48;
      *v48 = v42;
      _os_log_impl(&dword_1B9F07000, v29, v30, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v31, 0x2Au);
      sub_1B9F6F294(v43, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
      MEMORY[0x1BFAF43A0](v43, -1, -1);
      v44 = v49;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v44, -1, -1);
      MEMORY[0x1BFAF43A0](v31, -1, -1);

      (*(v50 + 8))(v5, v2);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }

    v26 = [v24 preferredFontDescriptorWithTextStyle_];
    v27 = [objc_opt_self() fontWithDescriptor:v26 size:0.0];
  }

  v45 = v27;

  [v18 setFont_];
  return v14;
}

void *DismissibleTile.makeAccessoryLabel()(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 72))())
  {
    return 0;
  }

  type metadata accessor for DynamicFontLabel();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  v6 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v5) + 0x68))(*MEMORY[0x1E69DDDC8]);
  (*((*v6 & *v5) + 0x80))(2);
  v7 = *(a2 + 8);
  v8 = v5;
  v9 = v7(a1, a2);
  [v8 setTextColor_];

  [v8 setTextAlignment_];
  [v8 setAdjustsFontSizeToFitWidth_];
  LODWORD(v10) = 1148846080;
  [v8 setContentCompressionResistancePriority:0 forAxis:v10];
  LODWORD(v11) = 1148846080;
  [v8 setContentCompressionResistancePriority:1 forAxis:v11];
  LODWORD(v12) = 1148846080;
  [v8 setContentHuggingPriority:0 forAxis:v12];
  LODWORD(v13) = 1148846080;
  [v8 setContentHuggingPriority:1 forAxis:v13];
  v14 = (*(a2 + 64))(a1, a2);
  [v8 setFont_];

  return v5;
}

void sub_1BA40CCC4(uint64_t *a1, void *a2)
{
  v5 = sub_1BA4A3EA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  swift_beginAccess();
  v10 = *(v2 + v9);
  if (!v10 || (v11 = [v10 font]) == 0)
  {
    v12 = *MEMORY[0x1E69DDDC0];
    v13 = objc_opt_self();
    v14 = [v13 preferredFontDescriptorWithTextStyle:v12 compatibleWithTraitCollection:0];
    v15 = [v14 fontDescriptorWithSymbolicTraits_];

    if (v15)
    {
      v16 = [objc_opt_self() fontWithDescriptor:v15 size:0.0];
    }

    else
    {
      v51 = v2;
      sub_1BA4A3DD8();
      v17 = v12;
      v18 = sub_1BA4A3E88();
      v19 = sub_1BA4A6FB8();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v52 = v48;
        *v20 = 136315906;
        v21 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v49 = v17;
        v23 = sub_1B9F0B82C(v21, v22, &v52);
        v50 = a2;
        v24 = v23;

        *(v20 + 4) = v24;
        *(v20 + 12) = 2080;
        v53 = 0;
        v54 = 1;
        sub_1BA413EF4(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
        v25 = sub_1BA4A6808();
        v27 = sub_1B9F0B82C(v25, v26, &v52);

        *(v20 + 14) = v27;
        *(v20 + 22) = 2080;
        LODWORD(v53) = 2;
        type metadata accessor for SymbolicTraits(0);
        v28 = sub_1BA4A6808();
        v30 = sub_1B9F0B82C(v28, v29, &v52);
        v17 = v49;

        *(v20 + 24) = v30;
        a2 = v50;
        *(v20 + 32) = 2112;
        v31 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        *(v20 + 34) = v31;
        v32 = v19;
        v33 = v47;
        *v47 = v31;
        _os_log_impl(&dword_1B9F07000, v18, v32, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v20, 0x2Au);
        sub_1B9F6F294(v33, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
        MEMORY[0x1BFAF43A0](v33, -1, -1);
        v34 = v48;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v34, -1, -1);
        MEMORY[0x1BFAF43A0](v20, -1, -1);
      }

      (*(v6 + 8))(v8, v5);
      v15 = [v13 preferredFontDescriptorWithTextStyle_];
      v16 = [objc_opt_self() fontWithDescriptor:v15 size:0.0];
      v2 = v51;
    }

    v11 = v16;
  }

  v35 = *a2;
  swift_beginAccess();
  v36 = *(v2 + v35);
  v37 = sub_1BA014D88(v11, v36);

  if (v37)
  {
    v38 = *(v2 + v9);
    if (v38)
    {
      v39 = v38;
      v40 = [v37 imageWithRenderingMode_];
      v41 = [objc_allocWithZone(MEMORY[0x1E69DB7F0]) init];
      if (![v37 isSymbolImage])
      {
        [v41 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
      }

      [v41 setImage_];
      sub_1B9F0ADF8(0, &qword_1EDC6B520);
      v42 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];

      [v39 setAttributedText_];
      v43 = *(v2 + v9);
      if (v43)
      {
        v44 = *(v2 + v35);
        v45 = v43;
        v46 = v44;
        [v45 setTextColor_];
      }
    }
  }
}

Swift::Void __swiftcall DismissibleTile.updateAccessoryLabelImage()()
{
  v2 = v1;
  v3 = v0;
  v9 = (*(v1 + 56))();
  if (v9)
  {
    v4 = (*(v2 + 32))(v3, v2);
    if (v4)
    {
      v5 = v4;
      v6 = [v9 imageWithRenderingMode_];
      v7 = [objc_allocWithZone(MEMORY[0x1E69DB7F0]) init];
      if (([v9 isSymbolImage] & 1) == 0)
      {
        [v7 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
      }

      [v7 setImage_];
      sub_1B9F0ADF8(0, &qword_1EDC6B520);
      v8 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];

      [v5 setAttributedText_];
    }

    DismissibleTile.updateAccessoryLabelColor()();
  }
}

id DismissibleTile.accessoryImage.getter(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 32))();
  if (!v4 || (v5 = v4, v6 = [v4 font], v5, !v6))
  {
    v6 = (*(a2 + 64))(a1, a2);
  }

  v7 = (*(a2 + 8))(a1, a2);
  v8 = sub_1BA014D88(v6, v7);

  return v8;
}

BOOL DismissibleTile.isAccessoryTouch(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1BA15930C(a1);
  result = 0;
  if (v5)
  {
    v6 = v5;
    v7 = (*(a3 + 32))(a2, a3);
    v8 = sub_1BA2EC9D4(v6, v7, 36.0, 36.0);

    if (v8)
    {
      return 1;
    }
  }

  return result;
}

Swift::Void __swiftcall DismissibleTile.updateColorForStartTouch()()
{
  v3 = v1;
  v4 = v0;
  v5 = [v2 viewController];
  if (v5)
  {
    v6 = v5;
    UIViewController.resolvedPresentation.getter(&v22);

    v7 = v22;
  }

  else
  {
    v7 = 0;
  }

  v8 = (*(v3 + 32))(v4, v3);
  if (v8)
  {
    v9 = v8;
    if ((v7 - 6) < 2)
    {
      v16 = objc_opt_self();
      v17 = [v16 systemGray5Color];
      v18 = [v16 tertiarySystemGroupedBackgroundColor];
      v19 = swift_allocObject();
      v19[2] = 0;
      v19[3] = v18;
      v19[4] = 0;
      v19[5] = v17;
      v14 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v26 = sub_1B9FD7F54;
      v27 = v19;
      v22 = MEMORY[0x1E69E9820];
      v23 = 1107296256;
      v15 = &block_descriptor_114;
    }

    else
    {
      if (v7 != 4 && v7 != 12)
      {
        v21 = [objc_opt_self() systemGray5Color];
        goto LABEL_11;
      }

      v10 = objc_opt_self();
      v11 = [v10 systemGray5Color];
      v12 = [v10 systemGray4Color];
      v13 = swift_allocObject();
      v13[2] = 0;
      v13[3] = v12;
      v13[4] = 0;
      v13[5] = v11;
      v14 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v26 = sub_1B9FE1088;
      v27 = v13;
      v22 = MEMORY[0x1E69E9820];
      v23 = 1107296256;
      v15 = &block_descriptor_7_2;
    }

    v24 = sub_1B9F7EBBC;
    v25 = v15;
    v20 = _Block_copy(&v22);
    v21 = [v14 initWithDynamicProvider_];
    _Block_release(v20);

LABEL_11:
    [v9 setTextColor_];
  }
}

Swift::Void __swiftcall DismissibleTile.updateColorForEndTouch()()
{
  v2 = v1;
  v3 = v0;
  v4 = (*(v1 + 32))();
  if (v4)
  {
    v5 = v4;
    v6 = (*(v2 + 8))(v3, v2);
    [v5 setTextColor_];
  }
}

double DismissibleTileHeaderDataSource.headerType.getter@<D0>(_OWORD *a1@<X8>)
{
  *&result = 1;
  *a1 = xmmword_1BA4C92B0;
  return result;
}

Swift::Void __swiftcall DismissibleTile.updateAccessoryLabelColor()()
{
  v2 = v1;
  v3 = v0;
  v4 = (*(v1 + 32))();
  if (v4)
  {
    v5 = *(v2 + 8);
    v6 = v4;
    v7 = v5(v3, v2);
    [v6 setTextColor_];
  }
}

void sub_1BA40DA28(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1BA40DA84(uint64_t *a1))(id **, char)
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
  v5 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_chromeHostView;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0BAB9C;
}

uint64_t sub_1BA40DB1C(uint64_t a1, uint64_t *a2)
{
  sub_1B9F6DEE0(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_dataSource;
  swift_beginAccess();
  sub_1B9F6E028(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_1BA40DB80@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_dataSource;
  swift_beginAccess();
  return sub_1B9F6DEE0(v1 + v3, a1);
}

uint64_t sub_1BA40DBD8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_dataSource;
  swift_beginAccess();
  sub_1B9F6E028(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1BA40DC98(uint64_t a1)
{
  v2 = v1;
  sub_1BA413EF4(0, qword_1EDC6E940, type metadata accessor for TileHeaderDetailKind, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13[-v5];
  sub_1B9F6DEE0(a1, v14);
  v7 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_dataSource;
  swift_beginAccess();
  sub_1B9F6E028(v14, v2 + v7);
  swift_endAccess();
  sub_1BA40ECE8(a1);
  sub_1B9F6DEE0(a1, v14);
  v8 = v15;
  if (v15)
  {
    v9 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    (*(v9 + 40))(v8, v9);
    v10 = type metadata accessor for TileHeaderDetailKind();
    (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    sub_1B9F6F294(v14, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
    v11 = type metadata accessor for TileHeaderDetailKind();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  }

  sub_1BA40DEA8(v6);
  return sub_1BA413F58(v6);
}

void sub_1BA40DEA8(uint64_t a1)
{
  sub_1BA413EF4(0, qword_1EDC6E940, type metadata accessor for TileHeaderDetailKind, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = objc_opt_self();
  v7 = [v6 defaultCenter];
  v8 = *MEMORY[0x1E69DDB88];
  [v7 removeObserver:v1 name:*MEMORY[0x1E69DDB88] object:0];

  sub_1B9F73D48(a1, v5);
  v9 = type metadata accessor for TileHeaderDetailKind();
  if ((*(*(v9 - 8) + 48))(v5, 1, v9) == 1)
  {
    sub_1BA413F58(v5);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1BA4A1728();
    (*(*(v10 - 8) + 8))(v5, v10);
    v11 = [v6 defaultCenter];
    [v11 addObserver:v1 selector:sel_didReceiveSignificantTimeChangeNotification_ name:v8 object:0];
  }

  else
  {
    sub_1BA414740(v5);
  }
}

uint64_t sub_1BA40E098()
{
  v1 = sub_1BA4A6478();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BA4A64C8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  v9 = sub_1BA4A7308();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_1BA414738;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = &block_descriptor_45_2;
  v11 = _Block_copy(aBlock);
  v12 = v0;

  sub_1BA4A64A8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B9F31478();
  sub_1BA413EF4(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1B9F31534();
  sub_1BA4A7C38();
  MEMORY[0x1BFAF1D50](0, v8, v4, v11);
  _Block_release(v11);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

void sub_1BA40E350(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailLabel;
  swift_beginAccess();
  v3 = *(a1 + v2);
  if (v3)
  {
    v4 = v3;
    sub_1BA40BADC();
    if (v5)
    {
      v6 = sub_1BA4A6758();
    }

    else
    {
      v6 = 0;
    }

    [v4 setText_];
  }
}

uint64_t sub_1BA40E4D0(uint64_t a1)
{
  sub_1BA40E5B8();
  sub_1BA40DC98(a1);
  sub_1B9F6DEE0(a1, v7);
  v2 = v8;
  if (v8)
  {
    v3 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v4 = (*(v3 + 16))(v2, v3);
    v2 = v5;
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    sub_1B9F6F294(v7, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
    v4 = 0;
  }

  sub_1BA2D0378(v4, v2);
}

id sub_1BA40E5B8()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailLabel;
  v21 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailLabel;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_titleLabel;
  swift_beginAccess();
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessoryLabel;
  swift_beginAccess();
  v6 = *(v0 + v5);
  v7 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailContainerView;
  swift_beginAccess();
  v8 = *(v0 + v7);
  v20 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessorySeparator;
  v19 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessorySeparator);
  v9 = v2;
  v10 = v4;
  v11 = v6;
  v12 = v8;
  [v9 removeFromSuperview];
  [v10 removeFromSuperview];
  [v11 removeFromSuperview];
  [v12 removeFromSuperview];
  [v19 removeFromSuperview];
  sub_1B9F6DFCC(0, &unk_1EDC5E200, &qword_1EDC6B4A0, 0x1E69DD250, sub_1B9F0ADF8);
  swift_arrayDestroy();
  v13 = *(v0 + v21);
  *(v0 + v21) = 0;

  v14 = *(v0 + v3);
  *(v0 + v3) = 0;

  v15 = *(v0 + v5);
  *(v0 + v5) = 0;

  v16 = *(v0 + v7);
  *(v0 + v7) = 0;

  v17 = *(v0 + v20);
  *(v0 + v20) = 0;

  result = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_heightConstraint);
  if (result)
  {
    return [result setActive_];
  }

  return result;
}

void sub_1BA40E7B8(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessoryColor;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_1BA40E818()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessoryColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1BA40E86C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessoryColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1BA40E924()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailLabel;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1BA40E970(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailLabel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1BA40EA28()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_titleLabel;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1BA40EA74(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_titleLabel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1BA40EB2C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessoryLabel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1BA40EBE4()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailContainerView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1BA40EC30(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailContainerView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1BA40ECE8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F6DEE0(a1, v102);
  if (v103)
  {
    sub_1B9F0D950(0, qword_1EDC6CD18);
    sub_1B9F0D950(0, &qword_1EDC6BE28);
    if (swift_dynamicCast())
    {
      if (*(&v105 + 1))
      {
        sub_1B9F1134C(&v104, v107);
        [v2 setUserInteractionEnabled_];
        v9 = v108;
        v8 = v109;
        __swift_project_boxed_opaque_existential_1(v107, v108);
        v10 = (*(*(v8 + 8) + 32))(v9);
        v13 = &selRef_didTapSave_;
        v14 = 0x1FAFC6000;
        v15 = 0x1FAECA000;
        v16 = MEMORY[0x1E69DDD28];
        if (v11)
        {
          v17 = (v2 + OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_title);
          *v17 = v10;
          v17[1] = v11;

          type metadata accessor for DynamicFontLabel();
          v18 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
          [v18 setNumberOfLines_];
          [v18 setLineBreakMode_];
          [v18 setTranslatesAutoresizingMaskIntoConstraints_];
          LODWORD(v19) = 1148846080;
          [v18 setContentCompressionResistancePriority:1 forAxis:v19];
          LODWORD(v20) = 1148846080;
          [v18 setContentHuggingPriority:1 forAxis:v20];
          v21 = [objc_opt_self() secondaryLabelColor];
          [v18 setTextColor_];

          v22 = sub_1B9F6B774(*v16, *MEMORY[0x1E69DB980], 0, 0, 0, 0, 1);
          [v18 setFont_];

          [v2 addSubview_];
          v23 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_titleLabel;
          swift_beginAccess();
          v24 = *(v2 + v23);
          *(v2 + v23) = v18;
          v13 = 0x1FB2FA000;

          v15 = 0x1FAECA000uLL;
          v14 = 0x1FAFC6000uLL;
        }

        v25 = v14;
        v26 = v15;
        LODWORD(v12) = 1148846080;
        [v2 setContentHuggingPriority:1 forAxis:v12];
        sub_1BA40BADC();
        if (v27)
        {
          type metadata accessor for DynamicFontLabel();
          v28 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) v13 + 2936];
          [v28 (v25 + 2168)];
          [v28 (v26 + 1466)];
          [v28 setAdjustsFontSizeToFitWidth_];
          v29 = sub_1BA4A6758();

          [v28 setText_];

          v30 = [objc_opt_self() secondaryLabelColor];
          [v28 setTextColor_];

          LODWORD(v31) = 1148846080;
          [v28 setContentHuggingPriority:0 forAxis:v31];
          LODWORD(v32) = 1148846080;
          [v28 setContentCompressionResistancePriority:0 forAxis:v32];
          LODWORD(v33) = 1148846080;
          [v28 setContentCompressionResistancePriority:1 forAxis:v33];
          v34 = sub_1B9F6B774(*MEMORY[0x1E69DDD28], *MEMORY[0x1E69DB970], 0, 0, 0, 0, 1);
          [v28 setFont_];

          v35 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailLabel;
          swift_beginAccess();
          v36 = *(v2 + v35);
          *(v2 + v35) = v28;
        }

        v37 = sub_1BA40C378();
        v38 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessoryLabel;
        swift_beginAccess();
        v39 = *(v2 + v38);
        *(v2 + v38) = v37;

        sub_1BA411CB0();
        sub_1B9F6DEE0(a1, &v104);
        v40 = *(&v105 + 1);
        if (*(&v105 + 1))
        {
          v41 = v106;
          __swift_project_boxed_opaque_existential_1(&v104, *(&v105 + 1));
          v42 = (*(v41 + 16))(v40, v41);
          v40 = v43;
          __swift_destroy_boxed_opaque_existential_1(&v104);
        }

        else
        {
          sub_1B9F6F294(&v104, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
          v42 = 0;
        }

        sub_1BA2D0378(v42, v40);

        sub_1BA411804();
        v48 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailLabel;
        swift_beginAccess();
        v49 = *(v2 + v48);
        if (v49)
        {
          v50 = v49;
          sub_1BA40BADC();
          if (v51)
          {
            v52 = sub_1BA4A6758();
          }

          else
          {
            v52 = 0;
          }

          [v50 setText_];
        }

        sub_1BA40CCC4(&OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessoryLabel, &OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessoryColor);
        v101 = MEMORY[0x1E69E7CC0];
        v53 = sub_1BA40FD6C();
        if (v53)
        {
          sub_1B9F73B50(v53);
        }

        v54 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_titleLabel;
        swift_beginAccess();
        v55 = *(v2 + v54);
        if (v55)
        {
          v56 = v55;
          v57 = [v56 topAnchor];
          v58 = [v2 safeAreaLayoutGuide];
          v59 = [v58 topAnchor];

          v60 = [v57 constraintEqualToAnchor:v59 constant:16.0];
          MEMORY[0x1BFAF1510]();
          if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1BA4A6B68();
          }

          sub_1BA4A6BB8();
          v61 = [v56 leadingAnchor];
          v62 = [v2 safeAreaLayoutGuide];
          v63 = [v62 leadingAnchor];

          v64 = [v61 constraintEqualToAnchor:v63 constant:16.0];
          MEMORY[0x1BFAF1510]();
          if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1BA4A6B68();
          }

          sub_1BA4A6BB8();
          v65 = [v2 traitCollection];
          v66 = [v65 preferredContentSizeCategory];

          LOBYTE(v65) = sub_1BA4A74F8();
          if ((v65 & 1) == 0 || !*(v2 + v48))
          {
            v67 = [v56 bottomAnchor];
            v68 = [v2 safeAreaLayoutGuide];
            v69 = [v68 bottomAnchor];

            v70 = [v67 constraintEqualToAnchor:v69 constant:-14.0];
            MEMORY[0x1BFAF1510]();
            if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1BA4A6B68();
            }

            sub_1BA4A6BB8();
          }

          v71 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailContainerView;
          swift_beginAccess();
          if (*(v2 + v71))
          {
          }

          else
          {
            v72 = [v56 trailingAnchor];

            v73 = [v2 safeAreaLayoutGuide];
            v74 = [v73 trailingAnchor];

            v75 = [v72 constraintEqualToAnchor:v74 constant:-16.0];
            MEMORY[0x1BFAF1510]();
            if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1BA4A6B68();
            }

            sub_1BA4A6BB8();
          }
        }

        v76 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailContainerView;
        swift_beginAccess();
        v77 = *(v2 + v76);
        if (v77)
        {
          v78 = *(v2 + v54);
          if (v78)
          {
            v79 = v77;
            v80 = v78;
            v81 = [v80 trailingAnchor];
            v82 = [v79 leadingAnchor];
            v83 = [v81 constraintEqualToAnchor:v82 constant:-8.0];

            MEMORY[0x1BFAF1510]();
            if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1BA4A6B68();
            }

            sub_1BA4A6BB8();
          }

          else
          {
            v84 = [v77 bottomAnchor];
            v85 = [v2 safeAreaLayoutGuide];
            v86 = [v85 bottomAnchor];

            v87 = [v84 constraintEqualToAnchor:v86 constant:-14.0];
            MEMORY[0x1BFAF1510]();
            if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1BA4A6B68();
            }

            sub_1BA4A6BB8();
          }
        }

        v88 = &selRef_constraintGreaterThanOrEqualToConstant_;
        if (!*(v2 + v54) && !*(v2 + v76))
        {
          v88 = &selRef_constraintEqualToConstant_;
        }

        v89 = [v2 heightAnchor];
        v90 = [v89 *v88];

        v91 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_heightConstraint);
        *(v2 + OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_heightConstraint) = v90;
        v92 = v90;

        MEMORY[0x1BFAF1510]();
        if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BA4A6B68();
        }

        v93 = sub_1BA4A6BB8();
        (*((*MEMORY[0x1E69E7D40] & *v2) + 0x258))(v93);
        v95 = v108;
        v94 = v109;
        __swift_project_boxed_opaque_existential_1(v107, v108);
        (*(*(v94 + 8) + 32))(v95);
        if (v96)
        {
        }

        else
        {
          v97 = [objc_opt_self() clearColor];
          [v2 setBackgroundColor_];
        }

        sub_1BA411DE0();
        v98 = objc_opt_self();
        sub_1B9F0ADF8(0, &qword_1EDC6B570);
        v99 = sub_1BA4A6AE8();

        [v98 activateConstraints_];

        return __swift_destroy_boxed_opaque_existential_1(v107);
      }
    }

    else
    {
      v106 = 0;
      v104 = 0u;
      v105 = 0u;
    }
  }

  else
  {
    sub_1B9F6F294(v102, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
    v104 = 0u;
    v105 = 0u;
    v106 = 0;
  }

  sub_1B9F6F294(&v104, &qword_1EBBF2470, &qword_1EDC6BE28, &protocol descriptor for DismissibleTileHeaderDataSource, sub_1B9F0D950);
  sub_1BA4A3DD8();
  v44 = sub_1BA4A3E88();
  v45 = sub_1BA4A6FB8();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_1B9F07000, v44, v45, "Incorrect configuration: expecting a DismissibleTileHeaderDataSource", v46, 2u);
    MEMORY[0x1BFAF43A0](v46, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1BA40FBB4()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_dataSource;
  swift_beginAccess();
  sub_1B9F6DEE0(v0 + v1, v12);
  v2 = v13;
  if (v13)
  {
    v3 = v14;
    v4 = __swift_project_boxed_opaque_existential_1(v12, v13);
    v5 = *(v2 - 8);
    v6 = MEMORY[0x1EEE9AC00](v4);
    v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v5 + 16))(v8, v6);
    sub_1B9F6F294(v12, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
    v9 = (*(v3 + 48))(v2, v3);
    (*(v5 + 8))(v8, v2);
  }

  else
  {
    sub_1B9F6F294(v12, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_1BA40FD6C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailContainerView;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (!v3)
  {
    return 0;
  }

  v39 = MEMORY[0x1E69E7CC0];
  v4 = v3;
  v5 = sub_1BA4102BC();
  if (v5)
  {
    sub_1B9F73B50(v5);
  }

  v6 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_dataSource;
  swift_beginAccess();
  sub_1B9F6DEE0(&v1[v6], v36);
  v7 = v37;
  if (v37)
  {
    v8 = v38;
    v9 = __swift_project_boxed_opaque_existential_1(v36, v37);
    v10 = *(v7 - 8);
    v11 = MEMORY[0x1EEE9AC00](v9);
    v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
    (*(v10 + 16))(v13, v11);
    sub_1B9F6F294(v36, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
    LOBYTE(v8) = (*(v8 + 48))(v7, v8);
    (*(v10 + 8))(v13, v7);
    if ((v8 & 1) == 0)
    {
      v14 = sub_1BA4109E0();
      if (v14)
      {
        sub_1B9F73B50(v14);
      }
    }
  }

  else
  {
    sub_1B9F6F294(v36, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
  }

  v16 = [v4 topAnchor];
  v17 = [v1 safeAreaLayoutGuide];
  v18 = [v17 topAnchor];

  v19 = [v16 constraintEqualToAnchor:v18 constant:16.0];
  MEMORY[0x1BFAF1510]();
  if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BA4A6B68();
  }

  sub_1BA4A6BB8();
  v20 = [v4 trailingAnchor];
  v21 = [v1 safeAreaLayoutGuide];
  v22 = [v21 trailingAnchor];

  v23 = [v20 constraintEqualToAnchor:v22 constant:-16.0];
  MEMORY[0x1BFAF1510]();
  if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BA4A6B68();
  }

  sub_1BA4A6BB8();
  v24 = [v4 widthAnchor];
  v25 = [v1 widthAnchor];
  v26 = [v24 constraintLessThanOrEqualToAnchor:v25 multiplier:0.37];

  MEMORY[0x1BFAF1510]();
  if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BA4A6B68();
  }

  sub_1BA4A6BB8();
  v15 = v39;
  v27 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailLabel;
  swift_beginAccess();
  v28 = *&v1[v27];
  if ((v28 || (v29 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessoryLabel, swift_beginAccess(), (v28 = *&v1[v29]) != 0)) && (v30 = [v28 heightAnchor]) != 0)
  {
    v31 = v30;
    v32 = [v4 heightAnchor];
    v33 = [v32 constraintEqualToAnchor_];

    MEMORY[0x1BFAF1510]();
    if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BA4A6B68();
    }

    sub_1BA4A6BB8();

    return v39;
  }

  else
  {
  }

  return v15;
}

uint64_t sub_1BA4102BC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailLabel;
  swift_beginAccess();
  v3 = *&v1[v2];
  if (!v3)
  {
    return 0;
  }

  v48 = MEMORY[0x1E69E7CC0];
  v4 = v3;
  v5 = [v1 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  LOBYTE(v5) = sub_1BA4A74F8();
  if (v5)
  {
    v7 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_titleLabel;
    swift_beginAccess();
    v8 = *&v1[v7];
    if (v8)
    {
      v9 = v4;
      v10 = v8;
      [v1 addSubview_];
      v11 = [v9 leadingAnchor];
      v12 = [v1 safeAreaLayoutGuide];
      v13 = [v12 leadingAnchor];

      v14 = [v11 constraintEqualToAnchor:v13 constant:16.0];
      MEMORY[0x1BFAF1510]();
      if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BA4A6B68();
      }

      sub_1BA4A6BB8();
      v15 = [v10 bottomAnchor];
      v16 = [v9 topAnchor];

      v17 = [v15 constraintEqualToAnchor:v16 constant:-8.0];
      MEMORY[0x1BFAF1510]();
      if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BA4A6B68();
      }

      sub_1BA4A6BB8();
      v18 = [v9 bottomAnchor];

      v19 = [v1 safeAreaLayoutGuide];
      v20 = [v19 bottomAnchor];

      v21 = [v18 constraintEqualToAnchor:v20 constant:-14.0];
      goto LABEL_22;
    }
  }

  v22 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailContainerView;
  swift_beginAccess();
  v23 = *&v1[v22];
  if (!v23)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v9 = v4;
  v10 = v23;
  [v10 addSubview_];
  v24 = [v9 leadingAnchor];
  v25 = [v10 leadingAnchor];
  v26 = [v24 constraintEqualToAnchor_];

  MEMORY[0x1BFAF1510]();
  if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BA4A6B68();
  }

  sub_1BA4A6BB8();
  v27 = v48;
  v28 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_titleLabel;
  swift_beginAccess();
  v29 = *&v1[v28];
  if (v29)
  {
    v30 = v29;
    v31 = [v9 firstBaselineAnchor];

    v32 = [v30 firstBaselineAnchor];
    v33 = [v31 constraintEqualToAnchor_];

    MEMORY[0x1BFAF1510]();
    if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BA4A6B68();
    }

    sub_1BA4A6BB8();

    v27 = v48;
  }

  else
  {
  }

  v35 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_dataSource;
  swift_beginAccess();
  sub_1B9F6DEE0(&v1[v35], v45);
  v36 = v46;
  if (!v46)
  {

    sub_1B9F6F294(v45, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
    return v27;
  }

  v37 = v47;
  v38 = __swift_project_boxed_opaque_existential_1(v45, v46);
  v39 = *(v36 - 8);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v42 = v45 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  (*(v39 + 16))(v42, v40);
  sub_1B9F6F294(v45, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
  LOBYTE(v37) = (*(v37 + 48))(v36, v37);
  (*(v39 + 8))(v42, v36);
  if ((v37 & 1) == 0)
  {

    return v27;
  }

  v18 = [v9 trailingAnchor];

  v20 = [v10 trailingAnchor];
  v21 = [v18 constraintEqualToAnchor_];
LABEL_22:
  v43 = v21;

  MEMORY[0x1BFAF1510]();
  if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BA4A6B68();
  }

  sub_1BA4A6BB8();

  return v48;
}

uint64_t sub_1BA4109E0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessoryLabel;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (!v3)
  {
    return 0;
  }

  v4 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailContainerView;
  swift_beginAccess();
  v5 = *&v1[v4];
  if (!v5)
  {
    return 0;
  }

  v42 = MEMORY[0x1E69E7CC0];
  v6 = v3;
  v7 = v5;
  [v7 addSubview_];
  v8 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailLabel;
  swift_beginAccess();
  v9 = *&v1[v8];
  if (!v9)
  {

    v10 = v6;
    goto LABEL_12;
  }

  v10 = v9;
  v11 = [v1 traitCollection];
  v12 = [v11 preferredContentSizeCategory];

  LOBYTE(v11) = sub_1BA4A74F8();
  if (v11)
  {
LABEL_12:

    v21 = [v6 leadingAnchor];
    v22 = [v7 leadingAnchor];
    v23 = [v21 constraintEqualToAnchor_];

    MEMORY[0x1BFAF1510]();
    if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BA4A6B68();
    }

    sub_1BA4A6BB8();
    v24 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_titleLabel;
    swift_beginAccess();
    v25 = *&v1[v24];
    if (v25)
    {
      v26 = v25;

      v27 = [v6 centerYAnchor];
      v28 = [v26 centerYAnchor];
      v29 = [v27 constraintEqualToAnchor_];

      LODWORD(v30) = 1144750080;
      [v29 setPriority_];
      v31 = v29;
      MEMORY[0x1BFAF1510]();
      if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BA4A6B68();
      }

      sub_1BA4A6BB8();
      v32 = [v6 topAnchor];

      v33 = [v1 layoutMarginsGuide];
      v34 = [v33 topAnchor];

      v35 = [v32 constraintGreaterThanOrEqualToAnchor_];
      MEMORY[0x1BFAF1510]();
      if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BA4A6B68();
      }

      sub_1BA4A6BB8();
    }

    else
    {

      v36 = [v6 centerYAnchor];
      v37 = [v7 centerYAnchor];
      v38 = [v36 constraintEqualToAnchor_];

      MEMORY[0x1BFAF1510]();
      if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BA4A6B68();
      }

      sub_1BA4A6BB8();
    }

    goto LABEL_23;
  }

  v13 = [v6 centerYAnchor];
  v14 = v10;
  v15 = [v14 centerYAnchor];
  v16 = [v13 constraintEqualToAnchor_];

  MEMORY[0x1BFAF1510]();
  if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BA4A6B68();
  }

  sub_1BA4A6BB8();
  v17 = [v6 leadingAnchor];

  v18 = [v14 trailingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:13.0];

  MEMORY[0x1BFAF1510]();
  if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BA4A6B68();
  }

  sub_1BA4A6BB8();

LABEL_23:
  v39 = [v6 trailingAnchor];

  v40 = [v7 trailingAnchor];
  v41 = [v39 constraintEqualToAnchor:v40 constant:3.0];

  MEMORY[0x1BFAF1510]();
  if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BA4A6B68();
  }

  sub_1BA4A6BB8();

  return v42;
}

void sub_1BA4110C0(void *a1)
{
  v17.receiver = v1;
  v17.super_class = type metadata accessor for DismissibleTileHeaderView();
  objc_msgSendSuper2(&v17, sel_traitCollectionDidChange_, a1);
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!a1)
  {

LABEL_9:
    sub_1BA411274();
    sub_1BA411804();
    v12 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailLabel;
    swift_beginAccess();
    v13 = *&v1[v12];
    if (v13)
    {
      v14 = v13;
      sub_1BA40BADC();
      if (v15)
      {
        v16 = sub_1BA4A6758();
      }

      else
      {
        v16 = 0;
      }

      [v14 setText_];
    }

    sub_1BA40CCC4(&OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessoryLabel, &OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessoryColor);
    return;
  }

  v5 = [a1 preferredContentSizeCategory];
  v6 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v8 = v7;
  if (v6 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v8 == v9)
  {

    return;
  }

  v11 = sub_1BA4A8338();

  if ((v11 & 1) == 0)
  {
    goto LABEL_9;
  }
}

void sub_1BA411274()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_titleLabel;
  swift_beginAccess();
  v6 = *(v0 + v5);
  v7 = MEMORY[0x1E69DDD28];
  if (v6)
  {
    v8 = *MEMORY[0x1E69DDD28];
    v9 = *MEMORY[0x1E69DB980];
    v10 = v6;
    v11 = sub_1B9F6B774(v8, v9, 0, 0, 0, 0, 1);
    [v10 setFont_];
  }

  v12 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailLabel;
  swift_beginAccess();
  v13 = *(v0 + v12);
  if (v13)
  {
    v14 = *v7;
    v15 = *MEMORY[0x1E69DB970];
    v16 = v13;
    v17 = sub_1B9F6B774(v14, v15, 0, 0, 0, 0, 1);
    [v16 setFont_];
  }

  v18 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessoryLabel;
  swift_beginAccess();
  v19 = *(v0 + v18);
  if (v19)
  {
    v20 = *MEMORY[0x1E69DDDC0];
    v21 = objc_opt_self();
    v22 = v19;
    v23 = [v21 preferredFontDescriptorWithTextStyle:v20 compatibleWithTraitCollection:0];
    v24 = [v23 fontDescriptorWithSymbolicTraits_];

    if (v24)
    {
      v25 = [objc_opt_self() fontWithDescriptor:v24 size:0.0];
    }

    else
    {
      sub_1BA4A3DD8();
      v26 = v20;
      v27 = sub_1BA4A3E88();
      v28 = sub_1BA4A6FB8();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v50 = v46;
        *v29 = 136315906;
        v30 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v32 = sub_1B9F0B82C(v30, v31, &v50);
        v47 = v26;
        v33 = v32;

        *(v29 + 4) = v33;
        *(v29 + 12) = 2080;
        v48 = 0;
        v49 = 1;
        sub_1BA413EF4(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
        v34 = sub_1BA4A6808();
        v36 = sub_1B9F0B82C(v34, v35, &v50);

        *(v29 + 14) = v36;
        *(v29 + 22) = 2080;
        LODWORD(v48) = 2;
        type metadata accessor for SymbolicTraits(0);
        v37 = sub_1BA4A6808();
        v39 = sub_1B9F0B82C(v37, v38, &v50);

        *(v29 + 24) = v39;
        v26 = v47;
        *(v29 + 32) = 2112;
        v40 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        *(v29 + 34) = v40;
        v41 = v45;
        *v45 = v40;
        _os_log_impl(&dword_1B9F07000, v27, v28, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v29, 0x2Au);
        sub_1B9F6F294(v41, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
        MEMORY[0x1BFAF43A0](v41, -1, -1);
        v42 = v46;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v42, -1, -1);
        MEMORY[0x1BFAF43A0](v29, -1, -1);
      }

      (*(v2 + 8))(v4, v1);
      v24 = [v21 preferredFontDescriptorWithTextStyle_];
      v25 = [objc_opt_self() fontWithDescriptor:v24 size:0.0];
    }

    v43 = v25;

    [v22 setFont_];
  }
}

void sub_1BA411804()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_titleLabel;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_title + 8);
    if (v3)
    {
      v4 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_title);
      v5 = v2;

      v6 = sub_1BA4A6758();
      [v5 setAccessibilityLabel_];

      v7 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_dataSource;
      swift_beginAccess();
      sub_1B9F6DEE0(v0 + v7, &v33);
      v8 = v35;
      if (v35)
      {
        v9 = v36;
        v10 = __swift_project_boxed_opaque_existential_1(&v33, v35);
        v11 = *(v8 - 8);
        v12 = MEMORY[0x1EEE9AC00](v10);
        v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v11 + 16))(v14, v12);
        sub_1B9F6F294(&v33, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
        v15 = (*(v9 + 24))(v8, v9);
        (*(v11 + 8))(v14, v8);
        if (v15)
        {
          v16 = v5;
          v17 = [v16 font];
          if (!v17)
          {
            __break(1u);
            return;
          }

          v18 = v17;
          v19 = [objc_opt_self() configurationWithFont:v17 scale:-1];

          v20 = [v15 imageWithConfiguration_];
          v21 = [v20 imageWithRenderingMode_];
          v22 = [objc_allocWithZone(MEMORY[0x1E69DB7F0]) init];
          if (([v20 isSymbolImage] & 1) == 0)
          {
            [v22 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
          }

          [v22 setImage_];
          sub_1B9F0ADF8(0, &qword_1EDC6B520);
          v23 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];

          v33 = 9011426;
          v34 = 0xA300000000000000;
          v32[1] = v4;
          v32[2] = v3;
          sub_1B9F252FC();
          v24 = sub_1BA4A7B38();
          v26 = v25;

          MEMORY[0x1BFAF1350](v24, v26);

          v27 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
          v28 = sub_1BA4A6758();

          v29 = [v27 initWithString_];

          [v23 appendAttributedString_];
          v30 = v23;
          [v16 setAttributedText_];

          goto LABEL_11;
        }
      }

      else
      {
        sub_1B9F6F294(&v33, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
      }

      v33 = v4;
      v34 = v3;
      sub_1B9F252FC();
      v31 = v5;
      sub_1BA4A7B38();
      v30 = sub_1BA4A6758();

      [v31 setText_];
LABEL_11:
    }
  }
}

void sub_1BA411CB0()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessoryLabel;
  swift_beginAccess();
  if (*&v0[v1] || (v2 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailLabel, swift_beginAccess(), *&v0[v2]))
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    LODWORD(v4) = 1148846080;
    [v3 setContentHuggingPriority:1 forAxis:v4];
    LODWORD(v5) = 1148846080;
    [v3 setContentCompressionResistancePriority:0 forAxis:v5];
    LODWORD(v6) = 1148846080;
    [v3 setContentCompressionResistancePriority:1 forAxis:v6];
    [v3 setTranslatesAutoresizingMaskIntoConstraints_];
    [v0 addSubview_];
    v7 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailContainerView;
    swift_beginAccess();
    v8 = *&v0[v7];
    *&v0[v7] = v3;
  }
}

uint64_t sub_1BA411DE0()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_dataSource;
  swift_beginAccess();
  sub_1B9F6DEE0(v0 + v1, v25);
  if (!v26)
  {
    sub_1B9F6F294(v25, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
    v22 = 0u;
    v23 = 0u;
    v24 = 0;
    return sub_1B9F6F294(&v22, &qword_1EBBF2470, &qword_1EDC6BE28, &protocol descriptor for DismissibleTileHeaderDataSource, sub_1B9F0D950);
  }

  sub_1B9F0D950(0, qword_1EDC6CD18);
  sub_1B9F0D950(0, &qword_1EDC6BE28);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    return sub_1B9F6F294(&v22, &qword_1EBBF2470, &qword_1EDC6BE28, &protocol descriptor for DismissibleTileHeaderDataSource, sub_1B9F0D950);
  }

  if (!*(&v23 + 1))
  {
    return sub_1B9F6F294(&v22, &qword_1EBBF2470, &qword_1EDC6BE28, &protocol descriptor for DismissibleTileHeaderDataSource, sub_1B9F0D950);
  }

  v2 = v0;
  sub_1B9F1134C(&v22, v25);
  v3 = v26;
  v4 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  if ((*(v4 + 32))(v3, v4))
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    v6 = [objc_opt_self() opaqueSeparatorColor];
    [v5 setBackgroundColor_];

    [v2 addSubview_];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    v7 = objc_opt_self();
    sub_1B9F109F8();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1BA4B5890;
    v9 = [v5 leadingAnchor];
    v10 = [v2 leadingAnchor];
    v11 = [v9 constraintEqualToAnchor_];

    *(v8 + 32) = v11;
    v12 = [v5 trailingAnchor];
    v13 = [v2 trailingAnchor];
    v14 = [v12 constraintEqualToAnchor_];

    *(v8 + 40) = v14;
    v15 = [v5 bottomAnchor];
    v16 = [v2 bottomAnchor];
    v17 = [v15 constraintEqualToAnchor_];

    *(v8 + 48) = v17;
    v18 = [v5 heightAnchor];
    v19 = [v18 constraintEqualToConstant_];

    *(v8 + 56) = v19;
    sub_1B9F0ADF8(0, &qword_1EDC6B570);
    v20 = sub_1BA4A6AE8();

    [v7 activateConstraints_];
  }

  return __swift_destroy_boxed_opaque_existential_1(v25);
}

id sub_1BA4121D8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_dataSource;
  swift_beginAccess();
  sub_1B9F6DEE0(&v1[v2], v38);
  if (!v39)
  {
    sub_1B9F6F294(v38, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
    v40 = 0u;
    v41 = 0u;
    v42 = 0;
    goto LABEL_16;
  }

  sub_1B9F0D950(0, qword_1EDC6CD18);
  sub_1B9F0D950(0, &qword_1EDC6BE28);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v42 = 0;
    v40 = 0u;
    v41 = 0u;
    goto LABEL_16;
  }

  if (!*(&v41 + 1))
  {
LABEL_16:
    sub_1B9F6F294(&v40, &qword_1EBBF2470, &qword_1EDC6BE28, &protocol descriptor for DismissibleTileHeaderDataSource, sub_1B9F0D950);
    goto LABEL_17;
  }

  sub_1B9F1134C(&v40, v43);
  v3 = v44;
  v4 = v45;
  __swift_project_boxed_opaque_existential_1(v43, v44);
  v5 = (*(v4 + 16))(v3, v4);
  if (v5)
  {
    v6 = v5;
    [v1 setBackgroundColor_];
    v7 = v44;
    v8 = v45;
    __swift_project_boxed_opaque_existential_1(v43, v44);
    v9 = (*(v8 + 24))(v7, v8);
    if (!v9)
    {
      v9 = [objc_opt_self() secondaryLabelColor];
    }

    v10 = v9;
    v11 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessoryColor;
    swift_beginAccess();
    v12 = *&v1[v11];
    *&v1[v11] = v10;
    v13 = v10;

    v14 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_titleLabel;
    swift_beginAccess();
    v15 = *&v1[v14];
    if (v15)
    {
      [v15 setTextColor_];
    }

    v16 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailLabel;
    swift_beginAccess();
    v17 = *&v1[v16];
    if (v17)
    {
      [v17 setTextColor_];
    }

    v18 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessoryLabel;
    swift_beginAccess();
    v19 = *&v1[v18];
    if (v19)
    {
      v20 = *&v1[v11];
      v21 = v19;
      v22 = v20;
      [v21 setTextColor_];
    }

    return __swift_destroy_boxed_opaque_existential_1(v43);
  }

  __swift_destroy_boxed_opaque_existential_1(v43);
LABEL_17:
  v24 = objc_opt_self();
  v25 = [v24 clearColor];
  [v1 setBackgroundColor_];

  v26 = [v24 tertiaryLabelColor];
  v27 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessoryColor;
  swift_beginAccess();
  v28 = *&v1[v27];
  *&v1[v27] = v26;

  v29 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_titleLabel;
  swift_beginAccess();
  v30 = *&v1[v29];
  if (v30)
  {
    v31 = v30;
    v32 = [v24 secondaryLabelColor];
    [v31 setTextColor_];
  }

  v33 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailLabel;
  swift_beginAccess();
  v34 = *&v1[v33];
  if (v34)
  {
    v35 = v34;
    v36 = [v24 secondaryLabelColor];
    [v35 setTextColor_];
  }

  v37 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessoryLabel;
  swift_beginAccess();
  result = *&v1[v37];
  if (result)
  {
    return [result setTextColor_];
  }

  return result;
}

void sub_1BA412670(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA15930C(a1);
  if (v4 && (v5 = v4, v6 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessoryLabel, swift_beginAccess(), v7 = *&v2[v6], v8 = v7, LOBYTE(v7) = sub_1BA2EC9D4(v5, v7, 36.0, 36.0), v8, v5, (v7 & 1) != 0))
  {
    sub_1BA3E2640();
  }

  else
  {
    sub_1B9F0ADF8(0, &qword_1EBBECB58);
    sub_1BA3955EC();
    v9 = sub_1BA4A6D68();
    v10.receiver = v2;
    v10.super_class = type metadata accessor for DismissibleTileHeaderView();
    objc_msgSendSuper2(&v10, sel_touchesBegan_withEvent_, v9, a2);
  }
}

void sub_1BA412780(uint64_t a1, uint64_t a2)
{
  sub_1B9F0ADF8(0, &qword_1EBBECB58);
  sub_1BA3955EC();
  v5 = sub_1BA4A6D68();
  v15.receiver = v2;
  v15.super_class = type metadata accessor for DismissibleTileHeaderView();
  objc_msgSendSuper2(&v15, sel_touchesEnded_withEvent_, v5, a2);

  v6 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessoryLabel;
  swift_beginAccess();
  v7 = *&v2[v6];
  if (v7)
  {
    v8 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessoryColor;
    swift_beginAccess();
    [v7 setTextColor_];
  }

  v9 = sub_1BA15930C(a1);
  if (v9)
  {
    v10 = v9;
    v11 = *&v2[v6];
    v12 = v11;
    LOBYTE(v11) = sub_1BA2EC9D4(v10, v11, 36.0, 36.0);

    if (v11)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v14 = Strong;
        sub_1BA40B7AC();
      }
    }
  }
}

uint64_t sub_1BA4128F8(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, void *))
{
  sub_1B9F0ADF8(0, &qword_1EBBECB58);
  sub_1BA3955EC();
  v8 = sub_1BA4A6D78();
  v9 = a4;
  v10 = a1;
  a5(v8, a4);
}

id DismissibleTileHeaderView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DismissibleTileHeaderView.init(frame:)(double a1, double a2, double a3, double a4)
{
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_heightConstraint] = 0;
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_dataSource];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v10 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessoryColor;
  *&v4[v10] = [objc_opt_self() tertiaryLabelColor];
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailLabel] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessoryLabel] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailContainerView] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessorySeparator] = 0;
  v11 = &v4[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_title];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_minimumViewHeight] = 0x4040800000000000;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_titleToTop] = 0x4030000000000000;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_titleToBottom] = 0x402C000000000000;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_titleToDismiss] = 0x4020000000000000;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailToTitle] = 0x4020000000000000;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_dismissToTop] = 0x402A000000000000;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailToDismiss] = 0x402A000000000000;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_dismissToTrailing] = 0x4008000000000000;
  v13.receiver = v4;
  v13.super_class = type metadata accessor for DismissibleTileHeaderView();
  return objc_msgSendSuper2(&v13, sel_initWithFrame_, a1, a2, a3, a4);
}

id DismissibleTileHeaderView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DismissibleTileHeaderView.init(coder:)(void *a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_heightConstraint] = 0;
  v3 = &v1[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_dataSource];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessoryColor;
  *&v1[v4] = [objc_opt_self() tertiaryLabelColor];
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailLabel] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_titleLabel] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessoryLabel] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailContainerView] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessorySeparator] = 0;
  v5 = &v1[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_title];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_minimumViewHeight] = 0x4040800000000000;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_titleToTop] = 0x4030000000000000;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_titleToBottom] = 0x402C000000000000;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_titleToDismiss] = 0x4020000000000000;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailToTitle] = 0x4020000000000000;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_dismissToTop] = 0x402A000000000000;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailToDismiss] = 0x402A000000000000;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_dismissToTrailing] = 0x4008000000000000;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for DismissibleTileHeaderView();
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

id DismissibleTileHeaderView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DismissibleTileHeaderView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1BA413068(uint64_t *a1))(id **, char)
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
  v5 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_chromeHostView;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0C36E0;
}

void sub_1BA413158(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1BA4131B8(uint64_t *a1))(id **, char)
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
  v5 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_chromeHostView;
  *(v3 + 32) = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0C36E0;
}

void sub_1BA413254(void *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 objectWithID_];
  sub_1BA4A27B8();
  v10 = swift_dynamicCastClass();
  if (v10)
  {
    [v10 setHideInDiscover_];
    v23 = 0;
    if ([a1 save_])
    {
      v11 = v23;
      sub_1BA413598();
    }

    else
    {
      v18 = v23;
      v19 = sub_1BA4A1488();

      swift_willThrow();
      v23 = 0;
      v24 = 0xE000000000000000;
      sub_1BA4A7DF8();

      v23 = 0xD000000000000023;
      v24 = 0x80000001BA4E6390;
      v22[1] = v19;
      v20 = v19;
      sub_1B9F0D950(0, &qword_1EDC6E310);
      v21 = sub_1BA4A6828();
      MEMORY[0x1BFAF1350](v21);

      sub_1BA4A8018();
      __break(1u);
    }
  }

  else
  {

    sub_1BA4A3DD8();
    v12 = a2;
    v13 = sub_1BA4A3E88();
    v14 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      *(v15 + 4) = v12;
      *v16 = v12;
      v17 = v12;
      _os_log_impl(&dword_1B9F07000, v13, v14, "Background context could not find object with id: '%@'", v15, 0xCu);
      sub_1B9F6F294(v16, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
      MEMORY[0x1BFAF43A0](v16, -1, -1);
      MEMORY[0x1BFAF43A0](v15, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1BA413598()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1BA4A6478();
  v35 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v34 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BA4A64C8();
  v32 = *(v5 - 8);
  v33 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A3EA8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s18HealthExperienceUI0A44ChecklistStagedFeatureStatusFeedItemProviderPAAE6logger2os6LoggerVvg_0();
  v12 = sub_1BA4A3E88();
  v13 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v30[1] = v1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v31 = v3;
    v17 = v16;
    v36 = v16;
    aBlock[0] = ObjectType;
    *v15 = 136446210;
    swift_getMetatypeMetadata();
    v18 = sub_1BA4A6808();
    v20 = sub_1B9F0B82C(v18, v19, &v36);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_1B9F07000, v12, v13, "[%{public}s]: Dismiss occurred; updating Summary feed", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    v21 = v17;
    v3 = v31;
    MEMORY[0x1BFAF43A0](v21, -1, -1);
    MEMORY[0x1BFAF43A0](v15, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  sub_1B9F0ADF8(0, &qword_1EDC6B5F0);
  v22 = sub_1BA4A7198();
  v23 = objc_allocWithZone(sub_1BA4A3518());
  v24 = sub_1BA4A3508();
  [v22 addOperation_];

  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  v25 = sub_1BA4A7308();
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1BA4147A8;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = &block_descriptor_57;
  v27 = _Block_copy(aBlock);

  sub_1BA4A64A8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B9F31478();
  sub_1BA413EF4(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1B9F31534();
  v28 = v34;
  sub_1BA4A7C38();
  MEMORY[0x1BFAF1D50](0, v7, v28, v27);
  _Block_release(v27);

  (*(v35 + 8))(v28, v3);
  return (*(v32 + 8))(v7, v33);
}

void sub_1BA413A40()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedViewable;
    v2 = Strong;
    swift_beginAccess();
    v3 = *&v2[v1];
    v4 = v3;

    if (v3)
    {
      ObjectType = swift_getObjectType();
      v6 = swift_conformsToProtocol2();
      if (v6)
      {
        (*(v6 + 8))(ObjectType, v6);
      }
    }
  }
}

id _s18HealthExperienceUI15DismissibleTilePAAE13accessoryFontSo6UIFontCvg_0()
{
  v0 = sub_1BA4A3EA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *MEMORY[0x1E69DDDC0];
  v5 = objc_opt_self();
  v6 = [v5 preferredFontDescriptorWithTextStyle:v4 compatibleWithTraitCollection:0];
  v7 = [v6 fontDescriptorWithSymbolicTraits_];

  if (v7)
  {
    v8 = [objc_opt_self() fontWithDescriptor:v7 size:0.0];

    return v8;
  }

  else
  {
    sub_1BA4A3DD8();
    v10 = v4;
    v11 = sub_1BA4A3E88();
    v12 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v33 = v30;
      *v13 = 136315906;
      v14 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v16 = sub_1B9F0B82C(v14, v15, &v33);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2080;
      v31 = 0;
      v32 = 1;
      sub_1BA413EF4(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
      v17 = sub_1BA4A6808();
      v19 = sub_1B9F0B82C(v17, v18, &v33);

      *(v13 + 14) = v19;
      *(v13 + 22) = 2080;
      LODWORD(v31) = 2;
      type metadata accessor for SymbolicTraits(0);
      v20 = sub_1BA4A6808();
      v22 = sub_1B9F0B82C(v20, v21, &v33);

      *(v13 + 24) = v22;
      *(v13 + 32) = 2112;
      v23 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v13 + 34) = v23;
      v24 = v29;
      *v29 = v23;
      _os_log_impl(&dword_1B9F07000, v11, v12, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v13, 0x2Au);
      sub_1B9F6F294(v24, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
      MEMORY[0x1BFAF43A0](v24, -1, -1);
      v25 = v30;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v25, -1, -1);
      MEMORY[0x1BFAF43A0](v13, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    v26 = [v5 preferredFontDescriptorWithTextStyle_];
    v27 = [objc_opt_self() fontWithDescriptor:v26 size:0.0];

    return v27;
  }
}

void sub_1BA413EF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BA413F58(uint64_t a1)
{
  sub_1BA413EF4(0, qword_1EDC6E940, type metadata accessor for TileHeaderDetailKind, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA414740(uint64_t a1)
{
  v2 = type metadata accessor for TileHeaderDetailKind();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PDFChartBorderStyle.init(color:lineWidth:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  return result;
}

void PDFChart.render(context:document:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [a1 CGContext];
  UIGraphicsPushContext(v8);

  v9 = [a1 CGContext];
  CGContextSaveGState(v9);

  v10 = _s18HealthExperienceUI8PDFChartPAAE22boundingRectForContent2inSo6CGRectVAA10PDFBuilderC8DocumentC_tF_0(a2, a3, a4);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [a1 CGContext];
  v34.origin.x = v10;
  v34.origin.y = v12;
  v34.size.width = v14;
  v34.size.height = v16;
  MinX = CGRectGetMinX(v34);
  v35.origin.x = v10;
  v35.origin.y = v12;
  v35.size.width = v14;
  v35.size.height = v16;
  MinY = CGRectGetMinY(v35);
  CGContextTranslateCTM(v17, MinX, MinY);

  v20 = [a1 CGContext];
  if (*(a2 + 96) == 1)
  {
    v21 = sub_1BA4A63E8();
  }

  else
  {
    v21 = sub_1BA4A63D8();
  }

  sub_1BA414A60(v20, v21, v22, a3, a4, v10, v12, v14, v16);

  v36.origin.x = v10;
  v36.origin.y = v12;
  v36.size.width = v14;
  v36.size.height = v16;
  Height = CGRectGetHeight(v36);
  v37.origin.x = PDFBuilder.Document.drawingContext.getter();
  x = v37.origin.x;
  y = v37.origin.y;
  width = v37.size.width;
  v27 = v37.size.height;
  v28 = CGRectGetMinX(v37) + 0.0;
  v38.origin.x = x;
  v38.origin.y = y;
  v38.size.width = width;
  v38.size.height = v27;
  v29 = Height + CGRectGetMinY(v38);
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = v27;
  v30 = CGRectGetWidth(v39);
  v40.origin.x = x;
  v40.origin.y = y;
  v40.size.width = width;
  v40.size.height = v27;
  v31 = CGRectGetHeight(v40);
  *(a2 + 168) = v28;
  *(a2 + 176) = v29;
  *(a2 + 184) = v30;
  *(a2 + 192) = v31 - Height;
  *(a2 + 200) = 0;
  v32 = [a1 CGContext];
  CGContextRestoreGState(v32);

  UIGraphicsPopContext();
}

uint64_t sub_1BA414A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  v51 = a2;
  v52 = a3;
  v53 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v50 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17 = &v40 - v16;
  sub_1BA4151C4();
  v19 = v18;
  v42 = v18;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v43 = AssociatedConformanceWitness;
  v21 = sub_1BA415224();
  v61 = AssociatedTypeWitness;
  v62 = v19;
  v63 = AssociatedConformanceWitness;
  v64 = v21;
  v44 = MEMORY[0x1E695B398];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v47 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v24 = &v40 - v23;
  v46 = sub_1BA4A5418();
  v48 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v40 = &v40 - v27;
  v28 = sub_1BA4A5718();
  MEMORY[0x1EEE9AC00](v28 - 8);
  v49 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
  sub_1BA4A5708();
  v41 = sub_1BA4A53D8();
  (*(a5 + 32))(a4, a5);
  v29 = swift_allocObject();
  *(v29 + 16) = a6;
  *(v29 + 24) = a7;
  *(v29 + 32) = a8;
  *(v29 + 40) = a9;
  *(v29 + 48) = 0x403C000000000000;
  v30 = swift_checkMetadataState();
  v31 = v43;
  sub_1BA4A5E68();

  (*(v50 + 8))(v17, AssociatedTypeWitness);
  v61 = AssociatedTypeWitness;
  v62 = v30;
  v63 = v31;
  v64 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = v40;
  sub_1BA4A5FD8();
  (*(v47 + 8))(v24, OpaqueTypeMetadata2);
  v59 = OpaqueTypeConformance2;
  v60 = MEMORY[0x1E697E040];
  v34 = v46;
  swift_getWitnessTable();
  sub_1BA4A52A8();
  v35 = v48;
  v36 = v45;
  (*(v48 + 16))(v45, v33, v34);
  MEMORY[0x1BFAEFCD0](v36);
  v54 = v41;
  v55 = a6;
  v56 = a7;
  v57 = a8;
  v58 = a9;
  sub_1BA4A5288();
  sub_1B9FDC500(MEMORY[0x1E69E7CC0]);
  type metadata accessor for RBDisplayListRenderKey(0);
  sub_1BA415418(&qword_1EBBE9410, type metadata accessor for RBDisplayListRenderKey);
  v37 = sub_1BA4A6618();

  v38 = v49;
  [v49 renderInContext:v53 options:v37];

  return (*(v35 + 8))(v33, v34);
}

double sub_1BA41504C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BA4A63C8();
  sub_1BA4A5278();
  v4 = sub_1BA4A49A8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  sub_1BA4151C4();
  v6 = (a2 + *(v5 + 36));
  *v6 = v8;
  v6[1] = v9;
  result = *&v10;
  v6[2] = v10;
  return result;
}

void sub_1BA4151C4()
{
  if (!qword_1EBBF24D8)
  {
    sub_1BA4A49A8();
    v0 = sub_1BA4A5418();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF24D8);
    }
  }
}

unint64_t sub_1BA415224()
{
  result = qword_1EBBF24E0;
  if (!qword_1EBBF24E0)
  {
    sub_1BA4151C4();
    sub_1BA415418(&qword_1EBBF24E8, MEMORY[0x1E695B190]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF24E0);
  }

  return result;
}

double sub_1BA41533C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = PDFBuilder.Document.drawingContext.getter();
  (*(a3 + 40))(a2, a3, v6);
  (*(a3 + 48))(a2, a3);
  MinX = CGRectGetMinX(*(a1 + 168));
  CGRectGetMinY(*(a1 + 168));
  return MinX;
}

uint64_t sub_1BA415418(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BA415460(CGContext *a1)
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  CGContextScaleCTM(a1, 1.0, -1.0);
  CGContextTranslateCTM(a1, 0.0, -v3);
  return v4(a1);
}

uint64_t sub_1BA4154C8()
{
  v1 = v0;
  v2 = sub_1BA4A3A28();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E69A38E8])
  {
    (*(v3 + 8))(v6, v2);
    return 0x656972616D6D7553;
  }

  if (v7 == *MEMORY[0x1E69A38F8])
  {
    (*(v3 + 8))(v6, v2);
    return 0x655268746C616548;
  }

  if (v7 == *MEMORY[0x1E69A38F0])
  {
    (*(v3 + 8))(v6, v2);
    return 0xD000000000000018;
  }

  if (v7 == *MEMORY[0x1E69A3900])
  {
    (*(v3 + 8))(v6, v2);
  }

  else if (v7 != *MEMORY[0x1E69A3908])
  {
    v9[0] = 0;
    v9[1] = 0xE000000000000000;
    sub_1BA4A7DF8();
    MEMORY[0x1BFAF1350](0xD000000000000019, 0x80000001BA5079C0);
    sub_1BA4A7FB8();
    result = sub_1BA4A8018();
    __break(1u);
    return result;
  }

  return 0xD00000000000001ALL;
}

void *sub_1BA415798(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1BA4A1798();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = sub_1BA4A1B68();
  sub_1BA4A3358();
  type metadata accessor for SharingEntryProfileInformationDataSource();
  swift_allocObject();
  v10 = sub_1BA19BEB8(v9, v8, 0, 0, 0, 0);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = v3;
  sub_1BA012F10(0);
  swift_allocObject();
  v12 = a2;
  v13 = sub_1BA271888(v10, sub_1BA416F04, v11, 0);

  v14 = swift_allocObject();
  v14[2] = sub_1BA415ECC;
  v14[3] = 0;
  v14[4] = v13;
  sub_1BA012E68(0);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  v17 = *(v13 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
  v16 = *(v13 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier + 8);
  *(v15 + 24) = v17;
  *(v15 + 32) = v16;
  *(v15 + 40) = 0;
  *(v15 + 48) = sub_1BA416F0C;
  *(v15 + 56) = v14;
  sub_1BA416F2C(0, &unk_1EDC69060, sub_1BA012E68, &protocol witness table for DataSourceWithLayout<A>, type metadata accessor for CellRegistering);
  v18 = swift_allocObject();
  v18[4] = v15;
  v18[5] = sub_1BA415FD8;
  v18[6] = 0;
  v18[2] = v17;
  v18[3] = v16;
  swift_bridgeObjectRetain_n();

  return v18;
}

uint64_t sub_1BA415A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37[1] = a4;
  v38 = sub_1BA4A3EA8();
  v6 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA071250();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BA4A33C8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v37 - v17;
  sub_1B9F0A534(a1, v41);
  sub_1B9F0D9AC(0, &qword_1EDC6AD50);
  v19 = swift_dynamicCast();
  v20 = *(v13 + 56);
  if (v19)
  {
    v20(v11, 0, 1, v12);
    (*(v13 + 32))(v18, v11, v12);
    if (sub_1BA4A3388())
    {
      v21 = [objc_allocWithZone(MEMORY[0x1E696C4F0]) initWithHealthStore_];
      sub_1B9F28360();
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1BA4B5480;
      (*(v13 + 16))(v15, v18, v12);
      *(v22 + 56) = &type metadata for SummarySharingPausedItem;
      *(v22 + 64) = sub_1BA13F7F0();
      v23 = swift_allocObject();
      *(v22 + 32) = v23;
      v24 = v21;
      SummarySharingPausedItem.init(profileInformation:summarySharingEntryStore:)(v15, v24, (v23 + 16));

      (*(v13 + 8))(v18, v12);
      return v22;
    }

    (*(v13 + 8))(v18, v12);
  }

  else
  {
    v20(v11, 1, 1, v12);
    sub_1BA416F98(v11, sub_1BA071250);
    sub_1BA4A3DD8();
    sub_1B9F0A534(a1, v41);
    v26 = sub_1BA4A3E88();
    v27 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v40 = v29;
      *v28 = 136315394;
      v30 = sub_1BA4A85D8();
      v32 = sub_1B9F0B82C(v30, v31, &v40);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2080;
      sub_1B9F0A534(v41, v39);
      v33 = sub_1BA4A6808();
      v35 = v34;
      __swift_destroy_boxed_opaque_existential_1(v41);
      v36 = sub_1B9F0B82C(v33, v35, &v40);

      *(v28 + 14) = v36;
      _os_log_impl(&dword_1B9F07000, v26, v27, "[%s)]: Unexpected type returned from mapped data source: %s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v29, -1, -1);
      MEMORY[0x1BFAF43A0](v28, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v41);
    }

    (*(v6 + 8))(v8, v38);
  }

  return MEMORY[0x1E69E7CC0];
}

id sub_1BA415ECC()
{
  if (qword_1EDC6D268 != -1)
  {
    swift_once();
  }

  v14[4] = xmmword_1EDC6D2B0;
  v14[5] = unk_1EDC6D2C0;
  v14[6] = xmmword_1EDC6D2D0;
  v14[7] = unk_1EDC6D2E0;
  v14[0] = xmmword_1EDC6D270;
  v14[1] = *&qword_1EDC6D280;
  v14[2] = xmmword_1EDC6D290;
  v14[3] = *&qword_1EDC6D2A0;
  v4 = xmmword_1EDC6D270;
  v5 = qword_1EDC6D280;
  v0 = *algn_1EDC6D288;
  v2 = xmmword_1EDC6D290;
  v1 = qword_1EDC6D2A0;
  v9 = *(&xmmword_1EDC6D2B0 + 8);
  v10 = unk_1EDC6D2C8;
  v11 = *(&xmmword_1EDC6D2D0 + 8);
  v12 = qword_1EDC6D2E8;
  v8 = *algn_1EDC6D2A8;
  sub_1B9F1D9A4(v14, v13);
  sub_1B9F1DA18(v0, v2, *(&v2 + 1), v1);
  sub_1BA0117AC();
  v6 = 0u;
  v7 = 0u;
  return sub_1B9F293A8(&v4);
}

uint64_t sub_1BA41602C()
{

  swift_unknownObjectRelease();
}

uint64_t sub_1BA4160AC()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1BA4161BC()
{
  sub_1BA4160AC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SummarySharingRelationshipDetailsDataSource()
{
  result = qword_1EBBF25A8;
  if (!qword_1EBBF25A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA4162C8()
{
  if (qword_1EBBE8960 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBF2560;
  v0 = *algn_1EBBF2568;
  v2 = qword_1EBBE8968;

  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_1EBBF2570;
  v3 = *algn_1EBBF2578;
  v5 = qword_1EBBE8970;
  swift_bridgeObjectRetain_n();
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_1EBBF2580;
  v6 = *algn_1EBBF2588;
  v8 = qword_1EBBE8978;

  if (v8 != -1)
  {
    swift_once();
  }

  *&xmmword_1EBBF24F0 = v1;
  *(&xmmword_1EBBF24F0 + 1) = v0;
  qword_1EBBF2500 = v4;
  unk_1EBBF2508 = v3;
  *&xmmword_1EBBF2510 = v4;
  *(&xmmword_1EBBF2510 + 1) = v3;
  qword_1EBBF2520 = v7;
  unk_1EBBF2528 = v6;
  xmmword_1EBBF2530 = xmmword_1EBBF2590;
  qword_1EBBF2540 = sub_1BA416448;
  unk_1EBBF2548 = 0;
}

uint64_t sub_1BA41645C()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF2550 = result;
  *algn_1EBBF2558 = v1;
  return result;
}

uint64_t sub_1BA41651C()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF2560 = result;
  *algn_1EBBF2568 = v1;
  return result;
}

uint64_t sub_1BA4165E0()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF2570 = result;
  *algn_1EBBF2578 = v1;
  return result;
}

uint64_t sub_1BA4166A0()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF2580 = result;
  *algn_1EBBF2588 = v1;
  return result;
}

uint64_t sub_1BA416760()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF2590 = result;
  unk_1EBBF2598 = v1;
  return result;
}

uint64_t sub_1BA416814(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  v64 = *v4;
  v60 = type metadata accessor for SummarySharingSelectionFlow(0);
  MEMORY[0x1EEE9AC00](v60);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BA4A33C8();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingRelationshipDetailsDataSource_stopSharingDataSource;
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingRelationshipDetailsDataSource_stopSharingDataSource) = 0;
  v56 = v13;
  v17 = *(v13 + 16);
  v61 = v13 + 16;
  v62 = v17;
  v59 = a1;
  (v17)(v16, a1, v12, v14);
  type metadata accessor for SummarySharingProfileHeaderDataSource();
  swift_allocObject();
  v18 = sub_1BA452614(v16);
  *&v66 = OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingRelationshipDetailsDataSource_profileHeaderDataSource;
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingRelationshipDetailsDataSource_profileHeaderDataSource) = v18;
  sub_1B9F0A534(a3, &v78);
  type metadata accessor for SummarySharingPreviewButtonDataSource();
  swift_allocObject();
  v19 = a4;
  v20 = sub_1BA093594(&v78, v19);

  v65 = OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingRelationshipDetailsDataSource_previewDataSource;
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingRelationshipDetailsDataSource_previewDataSource) = v20;
  v21 = sub_1BA415798(a3, v19);
  v22 = (v5 + OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingRelationshipDetailsDataSource_isPausedDataSource);
  *v22 = v21;
  *(v22 + 1) = &protocol witness table for CellRegistering<A>;
  v64 = v22;
  sub_1B9F0A534(a3, &v78);
  sub_1BA416EA0(a2, v11);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for SummarySharingAlertsSelectionDataSource(0);
  swift_allocObject();
  v23 = MEMORY[0x1E69E7CC0];
  v24 = sub_1BA16AC90(&v78, MEMORY[0x1E69E7CC0], v11, 1);
  v63 = OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingRelationshipDetailsDataSource_alertsDataSource;
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingRelationshipDetailsDataSource_alertsDataSource) = v24;
  v57 = a3;
  sub_1B9F0A534(a3, v76);
  v58 = a2;
  sub_1BA416EA0(a2, v11);
  v25 = &v78;
  swift_storeEnumTagMultiPayload();
  v78 = 1;
  type metadata accessor for SummarySharingDataTypeSelectionDataSource(0);
  memset(v81, 0, sizeof(v81));
  v79 = 0u;
  v80 = 0u;
  swift_allocObject();
  v26 = v19;
  v27 = v59;
  v28 = sub_1BA3094BC(v76, v26, v23, 1, 0, v11, v23, 0, 0, &v78, 1u);

  v29 = OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingRelationshipDetailsDataSource_topicsDataSource;
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingRelationshipDetailsDataSource_topicsDataSource) = v28;
  v77[3] = v12;
  v77[4] = MEMORY[0x1E69A3418];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v77);
  v60 = v12;
  v62(boxed_opaque_existential_1, v27, v12);
  v31 = qword_1EBBE8958;
  v32 = v26;
  if (v31 != -1)
  {
LABEL_21:
    swift_once();
  }

  v33 = qword_1EBBF2550;
  v34 = *algn_1EBBF2558;
  v35 = qword_1EBBE8950;

  if (v35 != -1)
  {
    swift_once();
  }

  v36 = *&qword_1EBBF2520;
  *(v25 + 2) = xmmword_1EBBF2510;
  *(v25 + 3) = v36;
  v37 = *&qword_1EBBF2540;
  *(v25 + 4) = xmmword_1EBBF2530;
  *(v25 + 5) = v37;
  v38 = *&qword_1EBBF2500;
  *v25 = xmmword_1EBBF24F0;
  *(v25 + 1) = v38;
  v39 = objc_opt_self();
  sub_1BA0711AC(&v78, v76);
  v40 = [v39 secondarySystemBackgroundColor];
  type metadata accessor for EndSharingRelationshipDataSource();
  swift_allocObject();
  v41 = sub_1BA0700CC(v32, v77, 0, 0, v33, v34, v40, &v78);
  v42 = v67;
  *(v5 + v67) = v41;

  v43 = &protocol witness table for MutableArrayDataSource;
  v32 = v68;
  v68[0] = *(v5 + v66);
  v68[1] = &protocol witness table for MutableArrayDataSource;
  v68[2] = *(v5 + v65);
  v68[3] = &protocol witness table for MutableArrayDataSource;
  v66 = *v64;
  v69 = v66;
  v25 = *(v5 + v63);
  v70 = v25;
  v71 = &protocol witness table for MutableArrayDataSource;
  v29 = *(v5 + v29);
  v72 = v29;
  v73 = &protocol witness table for MutableArrayDataSource;
  if (!*(v5 + v42))
  {
    v43 = 0;
  }

  v74 = *(v5 + v42);
  v75 = v43;

  swift_unknownObjectRetain();

  v44 = 0;
  v45 = MEMORY[0x1E69E7CC0];
LABEL_7:
  if (v44 <= 6)
  {
    v46 = 6;
  }

  else
  {
    v46 = v44;
  }

  v47 = v46 + 1;
  v48 = &v68[2 * v44];
  while (v44 != 6)
  {
    if (v47 == ++v44)
    {
      __break(1u);
      goto LABEL_21;
    }

    v49 = v48 + 2;
    v50 = *v48;
    v48 += 2;
    if (v50)
    {
      v25 = *(v49 - 1);
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v76[0] = v45;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v45 = sub_1B9F1E00C(0, *(v45 + 16) + 1, 1, v45);
        v76[0] = v45;
      }

      v29 = *(v45 + 16);
      v52 = *(v45 + 24);
      if (v29 >= v52 >> 1)
      {
        v45 = sub_1B9F1E00C(v52 > 1, v29 + 1, 1, v45);
        v76[0] = v45;
      }

      ObjectType = swift_getObjectType();
      sub_1BA1BA008(v29, v50, v76, ObjectType, v25);
      goto LABEL_7;
    }
  }

  sub_1BA281AC0();
  swift_arrayDestroy();
  v54 = CompoundSectionedDataSource.init(_:)(v45);
  __swift_destroy_boxed_opaque_existential_1(v57);
  sub_1BA416F98(v58, type metadata accessor for SummarySharingRelationshipManagementContext);
  (*(v56 + 8))(v27, v60);
  return v54;
}

uint64_t sub_1BA416EA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummarySharingRelationshipManagementContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BA416F2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1BA416F98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BA417058()
{
}

uint64_t sub_1BA4170A8()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1BA417198()
{
  sub_1BA4170A8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AppsAndReSearchSectionDataSource()
{
  result = qword_1EDC630B8;
  if (!qword_1EDC630B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA4172BC(void *a1)
{
  v2 = v1;
  v31 = sub_1BA4A1798();
  v4 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC18HealthExperienceUI32AppsAndReSearchSectionDataSource_researchStudiesItem;
  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI32AppsAndReSearchSectionDataSource_researchStudiesItem) = 0;
  v8 = OBJC_IVAR____TtC18HealthExperienceUI32AppsAndReSearchSectionDataSource_appSourcesItem;
  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI32AppsAndReSearchSectionDataSource_appSourcesItem) = 0;
  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI32AppsAndReSearchSectionDataSource_healthStore) = a1;
  v9 = a1;
  v10 = [v9 profileIdentifier];
  v11 = [v10 type];

  if (v11 == 4)
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v13 = type metadata accessor for AppSourcesDataSourceItem();
    swift_allocObject();
    v14 = sub_1BA19F130(v9);
    *(v2 + v8) = v14;

    v12 = sub_1BA27EFB4(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v16 = v12[2];
    v15 = v12[3];
    if (v16 >= v15 >> 1)
    {
      v12 = sub_1BA27EFB4((v15 > 1), v16 + 1, 1, v12);
    }

    v33 = v13;
    v34 = sub_1BA4176B4(&qword_1EDC66638, type metadata accessor for AppSourcesDataSourceItem);
    *&v32 = v14;
    v12[2] = v16 + 1;
    sub_1B9F25598(&v32, &v12[5 * v16 + 4]);
  }

  v17 = [v9 profileIdentifier];
  v18 = [v17 type];

  if (v18 == 1)
  {
    v19 = type metadata accessor for ResearchStudySourcesDataSourceItem();
    swift_allocObject();
    v20 = sub_1BA395684(v9);
    *(v2 + v7) = v20;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1BA27EFB4(0, v12[2] + 1, 1, v12);
    }

    v22 = v12[2];
    v21 = v12[3];
    if (v22 >= v21 >> 1)
    {
      v12 = sub_1BA27EFB4((v21 > 1), v22 + 1, 1, v12);
    }

    v33 = v19;
    v34 = sub_1BA4176B4(&qword_1EDC61AC0, type metadata accessor for ResearchStudySourcesDataSourceItem);
    *&v32 = v20;
    v12[2] = v22 + 1;
    sub_1B9F25598(&v32, &v12[5 * v22 + 4]);
  }

  v23 = sub_1B9FE4F98(v12);

  sub_1BA4A1788();
  v24 = sub_1BA4A1748();
  v26 = v25;
  (*(v4 + 8))(v6, v31);
  sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);

  v28 = Array<A>.identifierToIndexDict()(v27);

  sub_1B9FF6758();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = v23;
  *(inited + 56) = v28;
  *(inited + 64) = v24;
  *(inited + 72) = v26;
  return sub_1B9F1DAFC(inited, 1, sub_1B9F5AEA0, 0);
}

uint64_t sub_1BA4176B4(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_1BA4176FC()
{
  v1 = objc_allocWithZone(MEMORY[0x1E6978028]);
  v2 = sub_1BA4A15F8();
  v3 = [v1 initWithData_];

  if (v3)
  {
    [v3 setDelegate_];
  }

  type metadata accessor for PDFImagePreviews();
  v4 = swift_allocObject();
  v4[6] = 0;
  v4[2] = 20;
  v4[3] = v3;
  v5 = MEMORY[0x1E69E6530];
  v6 = sub_1BA4A6B98();
  *(v6 + 16) = 20;
  *&v7 = -1;
  *(&v7 + 1) = -1;
  *(v6 + 32) = v7;
  *(v6 + 48) = v7;
  *(v6 + 64) = v7;
  *(v6 + 80) = v7;
  *(v6 + 96) = v7;
  *(v6 + 112) = v7;
  *(v6 + 128) = v7;
  *(v6 + 144) = v7;
  *(v6 + 160) = v7;
  *(v6 + 176) = v7;
  v4[5] = v6;
  v8 = sub_1B9F0ADF8(0, &qword_1EDC6E370);
  v4[4] = MEMORY[0x1BFAF1080](20, v5, v8, MEMORY[0x1E69E6540]);
  return v4;
}

id sub_1BA4179A0(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:a1 action:sel_didTapCancel_];
  sub_1B9F1C048(0, &qword_1EDC6E330);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BA4B9FD0;
  v4 = *(a1 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_baseIdentifier);
  v5 = *(a1 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_baseIdentifier + 8);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  *(v3 + 48) = 0x6C65636E6143;
  *(v3 + 56) = 0xE600000000000000;
  *(v3 + 64) = 0x6E6F74747542;
  *(v3 + 72) = 0xE600000000000000;
  v6 = v2;

  v7 = sub_1BA4A6AE8();

  v8 = HKUIJoinStringsForAutomationIdentifier();

  [v6 setAccessibilityIdentifier_];
  return v6;
}

id sub_1BA417AE8(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_1BA417B4C(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:9 target:a1 action:sel_didTapSave_];
  [v2 setEnabled_];
  sub_1B9F1C048(0, &qword_1EDC6E330);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BA4B9FD0;
  v4 = *(a1 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_baseIdentifier);
  v5 = *(a1 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_baseIdentifier + 8);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  *(v3 + 48) = 0x6572616853;
  *(v3 + 56) = 0xE500000000000000;
  *(v3 + 64) = 0x6E6F74747542;
  *(v3 + 72) = 0xE600000000000000;
  v6 = v2;

  v7 = sub_1BA4A6AE8();

  v8 = HKUIJoinStringsForAutomationIdentifier();

  [v6 setAccessibilityIdentifier_];
  return v6;
}

id sub_1BA417C88()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___tableView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___tableView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___tableView);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for PDFContentSizedTableView()) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setScrollEnabled_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_1BA417D38()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___collectionView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___collectionView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___collectionView);
  }

  else
  {
    v4 = v0;
    v5 = sub_1BA41903C();
    v6 = objc_allocWithZone(type metadata accessor for PDFPreviewCollectionView());
    v7 = PDFPreviewCollectionView.init(layout:)(v5);
    [v7 setTranslatesAutoresizingMaskIntoConstraints_];
    [v7 setShowsHorizontalScrollIndicator_];
    v8 = *(v4 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_1BA417DE4()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___scrollView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___scrollView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___scrollView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCEF8]) initWithFrame_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1BA417E7C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___pdfPaddingConstraints;
  if (*(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___pdfPaddingConstraints))
  {
    v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___pdfPaddingConstraints);
  }

  else
  {
    sub_1B9F1C048(0, &qword_1EDC6B400);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1BA4B7510;
    v3 = sub_1BA417D38();
    v4 = [v3 topAnchor];

    v5 = sub_1BA417C88();
    v6 = [v5 bottomAnchor];

    v7 = OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pdfPadding;
    v8 = [v4 constraintEqualToAnchor:v6 constant:*(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pdfPadding)];

    *(v2 + 32) = v8;
    v9 = sub_1BA417DE4();
    v10 = [v9 bottomAnchor];

    v11 = [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___collectionView) bottomAnchor];
    v12 = [v10 constraintEqualToAnchor:v11 constant:*(v0 + v7)];

    *(v2 + 40) = v12;
    *(v0 + v1) = v2;
  }

  return v2;
}

id sub_1BA418014()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___pdfHeightConstraint;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___pdfHeightConstraint);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___pdfHeightConstraint);
  }

  else
  {
    v4 = sub_1BA417D38();
    v5 = [v4 heightAnchor];

    v6 = [v5 constraintEqualToConstant_];
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void PDFAsyncConfigurationViewController.init(dataSource:)(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_tableCellIdentifier];
  *v3 = 1819043139;
  *(v3 + 1) = 0xE400000000000000;
  v4 = sub_1BA4A6AE8();
  v5 = HKUIJoinStringsForAutomationIdentifier();

  if (v5)
  {
    v6 = &v1[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_baseIdentifier];
    v7 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v9 = v8;

    *v6 = v7;
    v6[1] = v9;
    *&v1[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___cancelBarButtonItem] = 0;
    *&v1[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___actionBarButtonItem] = 0;
    *&v1[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___tableView] = 0;
    *&v1[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___collectionView] = 0;
    *&v1[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___scrollView] = 0;
    *&v1[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pinchAnimationBackgroundView] = 0;
    *&v1[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pinchAnimationView] = 0;
    *&v1[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pinchedPageImageView] = 0;
    *&v1[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pdfPadding] = 0x403E000000000000;
    *&v1[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___pdfPaddingConstraints] = 0;
    *&v1[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___pdfHeightConstraint] = 0;
    v10 = &v1[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_state];
    *v10 = 0;
    v10[8] = -1;
    *&v1[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_currentTask] = 0;
    *&v1[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_previewDataSource] = [objc_allocWithZone(type metadata accessor for PDFPreviewDataSource()) init];
    sub_1B9F0A534(a1, &v1[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_configurationDataSource]);
    v11.receiver = v1;
    v11.super_class = type metadata accessor for PDFAsyncConfigurationViewController();
    objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, 0, 0);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __break(1u);
  }
}

id PDFAsyncConfigurationViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PDFAsyncConfigurationViewController.__deallocating_deinit()
{
  if (*&v0[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_currentTask])
  {

    sub_1BA4A6C98();
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for PDFAsyncConfigurationViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1BA418578()
{
  v1 = v0;
  v61.receiver = v0;
  v61.super_class = type metadata accessor for PDFAsyncConfigurationViewController();
  objc_msgSendSuper2(&v61, sel_viewDidLoad);
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v2 = sub_1BA4A6758();

  [v0 setTitle_];

  v3 = [v0 navigationItem];
  v4 = sub_1BA417980();
  [v3 setLeftBarButtonItem_];

  v5 = [v1 navigationItem];
  v6 = sub_1BA417AC8();
  [v5 setRightBarButtonItem_];

  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = result;
  v9 = [objc_opt_self() systemGroupedBackgroundColor];
  [v8 setBackgroundColor_];

  v10 = sub_1BA417C88();
  [v10 setDelegate_];

  v11 = OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___tableView;
  [*&v1[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___tableView] setDataSource_];
  v12 = *&v1[v11];
  sub_1B9F0ADF8(0, &unk_1EBBEBD60);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = v12;
  v15 = sub_1BA4A6758();
  [v14 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v15];

  v16 = *&v1[v11];
  v17 = objc_allocWithZone(MEMORY[0x1E69DD250]);
  v18 = v16;
  v19 = [v17 initWithFrame_];
  [v18 setTableFooterView_];

  [*&v1[v11] setSectionFooterHeight_];
  v20 = sub_1BA417D38();
  [v20 setDataSource_];

  v21 = OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___collectionView;
  v22 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___collectionView];
  v23 = objc_allocWithZone(MEMORY[0x1E69DCD80]);
  v24 = v22;
  v25 = [v23 initWithTarget:v1 action:sel_didPinchPDF_];
  [v24 addGestureRecognizer_];

  v26 = *&v1[v21];
  v27 = sub_1BA19CEC8();
  [v26 setBackgroundView_];

  result = [v1 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v28 = result;
  v29 = sub_1BA417DE4();
  [v28 addSubview_];

  v30 = OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___scrollView;
  [*&v1[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___scrollView] addSubview_];
  v60 = v21;
  [*&v1[v30] addSubview_];
  v31 = *&v1[v30];
  v32 = [v1 view];
  [v31 hk:v32 alignConstraintsWithView:?];

  v33 = objc_opt_self();
  sub_1BA417E7C();
  sub_1B9F0ADF8(0, &qword_1EDC6B570);
  v34 = sub_1BA4A6AE8();

  [v33 activateConstraints_];

  sub_1B9F1C048(0, &qword_1EDC6B400);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1BA4BBC90;
  v36 = [*&v1[v11] topAnchor];
  v37 = [*&v1[v30] topAnchor];
  v38 = [v36 constraintEqualToAnchor_];

  *(v35 + 32) = v38;
  v39 = [*&v1[v11] leadingAnchor];
  v40 = [*&v1[v30] leadingAnchor];
  v41 = [v39 constraintEqualToAnchor_];

  *(v35 + 40) = v41;
  v42 = [*&v1[v11] widthAnchor];
  result = [v1 &selRef_textFieldShouldBeginEditing_];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v43 = result;
  v44 = [result widthAnchor];

  v45 = [v42 constraintEqualToAnchor_];
  *(v35 + 48) = v45;
  v46 = [*&v1[v11] trailingAnchor];
  v47 = [*&v1[v30] trailingAnchor];
  v48 = [v46 constraintEqualToAnchor_];

  *(v35 + 56) = v48;
  v49 = [*&v1[v60] leadingAnchor];
  v50 = [*&v1[v30] leadingAnchor];
  v51 = [v49 constraintEqualToAnchor_];

  *(v35 + 64) = v51;
  v52 = [*&v1[v60] widthAnchor];
  result = [v1 view];
  if (result)
  {
    v53 = result;
    v54 = [result widthAnchor];

    v55 = [v52 constraintEqualToAnchor_];
    *(v35 + 72) = v55;
    *(v35 + 80) = sub_1BA418014();
    v56 = [*&v1[v60] trailingAnchor];
    v57 = [*&v1[v30] trailingAnchor];
    v58 = [v56 constraintEqualToAnchor_];

    *(v35 + 88) = v58;
    v59 = sub_1BA4A6AE8();

    [v33 activateConstraints_];

    return sub_1BA419C08();
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_1BA418DE4()
{
  v1 = sub_1BA41903C();
  v2 = sub_1BA417D38();
  [v2 setCollectionViewLayout:v1 animated:0];

  [v1 itemSize];
  v4 = v3;
  v5 = sub_1BA418014();
  [v5 setConstant_];

  v6 = sub_1BA417DE4();
  v7 = [v6 safeAreaLayoutGuide];

  [v7 layoutFrame];
  Height = CGRectGetHeight(v23);
  v9 = sub_1BA417C88();
  [v9 contentSize];
  v11 = v10;

  v12 = (Height - v11 - v4) * 0.5;
  if (v12 <= 30.0)
  {
    v12 = 30.0;
  }

  v13 = OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pdfPadding;
  if (v12 != *&v0[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pdfPadding])
  {
    v21 = v7;
    *&v0[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pdfPadding] = v12;
    v14 = sub_1BA417E7C();
    v15 = v14;
    if (v14 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BA4A7CC8())
    {
      v17 = 0;
      while (1)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x1BFAF2860](v17, v15);
        }

        else
        {
          if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v18 = *(v15 + 8 * v17 + 32);
        }

        v19 = v18;
        v20 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        [v18 setConstant_];

        ++v17;
        if (v20 == i)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

LABEL_17:

    v7 = v21;
  }

  v22.receiver = v0;
  v22.super_class = type metadata accessor for PDFAsyncConfigurationViewController();
  objc_msgSendSuper2(&v22, sel_viewDidLayoutSubviews);
}

id sub_1BA41903C()
{
  result = [v0 view];
  if (result)
  {
    v2 = result;
    [result bounds];
    v4 = v3;

    v5 = [objc_opt_self() mainScreen];
    [v5 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v25.origin.x = v7;
    v25.origin.y = v9;
    v25.size.width = v11;
    v25.size.height = v13;
    v14 = round(CGRectGetHeight(v25) * 0.5);
    v15 = round(v14 / 1.375);
    v16 = round((v4 - v15) * 0.5);
    v17 = round(v4 + -30.0);
    v18 = v4 + -30.0 < v15;
    if (v4 + -30.0 >= v15)
    {
      v19 = v16;
    }

    else
    {
      v19 = 15.0;
    }

    if (v18)
    {
      v20 = v17 * 1.375;
    }

    else
    {
      v20 = v14;
    }

    if (v18)
    {
      v21 = v17;
    }

    else
    {
      v21 = v15;
    }

    v22 = type metadata accessor for PDFCollectionViewLayout();
    v24.receiver = objc_allocWithZone(v22);
    v24.super_class = v22;
    v23 = objc_msgSendSuper2(&v24, sel_init);
    [v23 setScrollDirection_];
    [v23 setMinimumLineSpacing_];
    [v23 setItemSize_];
    [v23 setSectionInset_];

    return v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BA419254(unint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1BA4A3EA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v79 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v79 - v13;
  v15 = sub_1BA4A3C98();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v2[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_state + 8];
  if (v18 == 255 || (v18 & 1) != 0)
  {
    sub_1BA4A3E08();
    v19 = v2;
    v20 = sub_1BA4A3E88();
    v21 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = v5;
      v24 = swift_slowAlloc();
      v85 = v24;
      *v22 = 136446210;
      aBlock[0] = ObjectType;
      swift_getMetatypeMetadata();
      v25 = sub_1BA4A6808();
      v27 = sub_1B9F0B82C(v25, v26, &v85);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_1B9F07000, v20, v21, "[%{public}s]: No PDF data generated", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1BFAF43A0](v24, -1, -1);
      MEMORY[0x1BFAF43A0](v22, -1, -1);

      (*(v6 + 8))(v8, v23);
    }

    else
    {

      (*(v6 + 8))(v8, v5);
    }

    return;
  }

  v81 = a1;
  v82 = v5;
  v83 = v18;
  v28 = *&v2[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_state];
  v29 = objc_allocWithZone(MEMORY[0x1E6978028]);
  sub_1BA41E7E0(v28);
  v30 = sub_1BA4A15F8();
  v31 = [v29 initWithData_];

  if (!v31 || ([v31 setDelegate_], v32 = objc_msgSend(v31, sel_dataRepresentation), v31, !v32))
  {
    sub_1BA4A3E08();
    v47 = v2;
    v48 = sub_1BA4A3E88();
    v49 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v85 = v51;
      *v50 = 136446210;
      aBlock[0] = ObjectType;
      swift_getMetatypeMetadata();
      v52 = sub_1BA4A6808();
      v54 = sub_1B9F0B82C(v52, v53, &v85);

      *(v50 + 4) = v54;
      _os_log_impl(&dword_1B9F07000, v48, v49, "[%{public}s]: No PDF document generated", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v51);
      MEMORY[0x1BFAF43A0](v51, -1, -1);
      MEMORY[0x1BFAF43A0](v50, -1, -1);

      sub_1BA41E7EC(v28, v83);
    }

    else
    {
      sub_1BA41E7EC(v28, v83);
    }

    v55 = *(v6 + 8);
    v56 = v11;
    goto LABEL_17;
  }

  v33 = sub_1BA4A1608();
  v35 = v34;

  v36 = *&v28[OBJC_IVAR____TtCC18HealthExperienceUI35PDFAsyncConfigurationViewControllerP33_41892A8E3AE85A20C0CA0B347A3001CA18PDFGeneratedResult_filename];
  v37 = *&v28[OBJC_IVAR____TtCC18HealthExperienceUI35PDFAsyncConfigurationViewControllerP33_41892A8E3AE85A20C0CA0B347A3001CA18PDFGeneratedResult_filename + 8];

  sub_1B9F206D4(v33, v35);
  sub_1BA4A3C78();
  v38 = objc_allocWithZone(type metadata accessor for ShareFileActivityItemSource());
  v39 = ShareFileActivityItemSource.init(data:filename:contentType:)(v33, v35, v36, v37, v17);
  if (!v39)
  {
    sub_1BA4A3E08();
    v57 = v2;
    v58 = sub_1BA4A3E88();
    v59 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v85 = v61;
      *v60 = 136446210;
      aBlock[0] = ObjectType;
      swift_getMetatypeMetadata();
      v62 = sub_1BA4A6808();
      v81 = v35;
      v64 = sub_1B9F0B82C(v62, v63, &v85);

      *(v60 + 4) = v64;
      _os_log_impl(&dword_1B9F07000, v58, v59, "[%{public}s]: Unable to instantiate activity item source", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v61);
      MEMORY[0x1BFAF43A0](v61, -1, -1);
      MEMORY[0x1BFAF43A0](v60, -1, -1);

      sub_1BA41E7EC(v28, v83);
      sub_1B9F2BB4C(v33, v81);
    }

    else
    {
      sub_1B9F2BB4C(v33, v35);
      sub_1BA41E7EC(v28, v83);
    }

    v55 = *(v6 + 8);
    v56 = v14;
LABEL_17:
    v55(v56, v82);
    return;
  }

  v40 = v39;
  v41 = *&v2[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_configurationDataSource + 24];
  v42 = *&v2[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_configurationDataSource + 32];
  __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_configurationDataSource], v41);
  (*(v42 + 64))(&v85, v41, v42);
  if (!v89)
  {
    v65 = v40;
    sub_1BA41DD7C(v81, v65, v2);
    sub_1B9F2BB4C(v33, v35);

    sub_1BA41E7EC(v28, v83);
    return;
  }

  v43 = v87;
  v79[0] = v88;
  v82 = v86;
  if (!v86)
  {
    v66 = v40;
    v45 = 0;
    if (v43)
    {
      goto LABEL_12;
    }

LABEL_24:
    v46 = 0;
    goto LABEL_25;
  }

  v44 = v40;
  v45 = sub_1BA4A6758();
  if (!v43)
  {
    goto LABEL_24;
  }

LABEL_12:
  v46 = sub_1BA4A6758();
LABEL_25:
  v79[1] = v43;
  v80 = v28;
  v67 = [objc_opt_self() alertControllerWithTitle:v45 message:v46 preferredStyle:{1, v79[0]}];

  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v68 = sub_1BA4A6758();

  v69 = objc_opt_self();
  v70 = [v69 actionWithTitle:v68 style:1 handler:0];

  [v67 addAction_];
  [v67 setPreferredAction_];
  v71 = swift_allocObject();
  v72 = v81;
  v71[2] = v2;
  v71[3] = v72;
  v71[4] = v40;
  v73 = v40;
  v74 = v2;
  v75 = v72;
  v76 = sub_1BA4A6758();
  aBlock[4] = sub_1BA41E81C;
  aBlock[5] = v71;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BA0B06D4;
  aBlock[3] = &block_descriptor_68_1;
  v77 = _Block_copy(aBlock);

  v78 = [v69 actionWithTitle:v76 style:0 handler:v77];
  _Block_release(v77);

  [v67 addAction_];
  [v74 presentViewController:v67 animated:1 completion:0];

  sub_1B9F2BB4C(v33, v35);
  sub_1BA41E7EC(v80, v83);
}

uint64_t sub_1BA419C08()
{
  v1 = v0;
  sub_1B9F0AAD0(0, &qword_1EDC5E5E0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_currentTask;
  if (*&v0[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_currentTask])
  {

    sub_1BA4A6C98();
  }

  v6 = sub_1BA417C88();
  [v6 reloadData];

  v7 = &v1[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_state];
  v8 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_state];
  *v7 = 0;
  v9 = v7[8];
  v7[8] = -1;
  sub_1BA41E7EC(v8, v9);
  sub_1BA41B478();
  v10 = sub_1BA4A6C88();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  sub_1BA4A6C68();
  v11 = v1;
  v12 = sub_1BA4A6C58();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v11;
  *&v1[v5] = sub_1BA0BF220(0, 0, v4, &unk_1BA4DA920, v13);
}

uint64_t sub_1BA419DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v4[8] = swift_getObjectType();
  v5 = sub_1BA4A3EA8();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v6 = sub_1BA4A7F78();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  sub_1BA4A6C68();
  v4[15] = sub_1BA4A6C58();
  v8 = sub_1BA4A6C28();
  v4[16] = v8;
  v4[17] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1BA419F48, v8, v7);
}

uint64_t sub_1BA419F48()
{
  v1 = (v0[7] + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_configurationDataSource);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  (*(v3 + 40))(v2, v3);
  if (v4)
  {
    if (sub_1BA4A6CA8())
    {

      v5 = v0[1];

      return v5();
    }

    else
    {
      v11 = swift_task_alloc();
      v0[20] = v11;
      *v11 = v0;
      v11[1] = sub_1BA41A5F4;

      return sub_1BA41AA30();
    }
  }

  else
  {
    v7 = sub_1BA4A85A8();
    v9 = v8;
    sub_1BA4A83E8();
    v10 = swift_task_alloc();
    v0[18] = v10;
    *v10 = v0;
    v10[1] = sub_1BA41A128;

    return sub_1BA41D8C4(v7, v9, 0, 0, 1);
  }
}

uint64_t sub_1BA41A128()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  *(*v1 + 152) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 136);
  v7 = *(v2 + 128);
  if (v0)
  {
    v8 = sub_1BA41A3A4;
  }

  else
  {
    v8 = sub_1BA41A2C0;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1BA41A2C0()
{
  if (sub_1BA4A6CA8())
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 160) = v3;
    *v3 = v0;
    v3[1] = sub_1BA41A5F4;

    return sub_1BA41AA30();
  }
}

uint64_t sub_1BA41A3A4()
{
  v25 = v0;
  v1 = v0[19];

  if ((sub_1BA4A6CA8() & 1) == 0)
  {
    v2 = v0[7];
    sub_1BA4A3E08();
    v3 = v2;
    v4 = v1;
    v5 = sub_1BA4A3E88();
    v6 = sub_1BA4A6FA8();

    v7 = os_log_type_enabled(v5, v6);
    v9 = v0[10];
    v8 = v0[11];
    v10 = v0[9];
    if (v7)
    {
      v23 = v0[11];
      v11 = v0[8];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v24 = v13;
      *v12 = 136446466;
      v0[5] = v11;
      swift_getMetatypeMetadata();
      v14 = sub_1BA4A6808();
      v16 = sub_1B9F0B82C(v14, v15, &v24);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2080;
      swift_getErrorValue();
      v17 = sub_1BA4A8418();
      v19 = sub_1B9F0B82C(v17, v18, &v24);

      *(v12 + 14) = v19;
      _os_log_impl(&dword_1B9F07000, v5, v6, "[%{public}s]: Error generating PDF: %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v13, -1, -1);
      MEMORY[0x1BFAF43A0](v12, -1, -1);

      (*(v9 + 8))(v23, v10);
    }

    else
    {

      (*(v9 + 8))(v8, v10);
    }

    v20 = v1;
    sub_1BA41B194(v1, 1);
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_1BA41A5F4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 168) = a1;
  *(v4 + 176) = v1;

  v5 = *(v3 + 136);
  v6 = *(v3 + 128);
  if (v1)
  {
    v7 = sub_1BA41A7E0;
  }

  else
  {
    v7 = sub_1BA41A738;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1BA41A738()
{

  v1 = sub_1BA4A6CA8();
  v2 = *(v0 + 168);
  if ((v1 & 1) == 0)
  {
    v3 = v2;
    sub_1BA41B194(v2, 0);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1BA41A7E0()
{
  v25 = v0;
  v1 = v0[22];

  if ((sub_1BA4A6CA8() & 1) == 0)
  {
    v2 = v0[7];
    sub_1BA4A3E08();
    v3 = v2;
    v4 = v1;
    v5 = sub_1BA4A3E88();
    v6 = sub_1BA4A6FA8();

    v7 = os_log_type_enabled(v5, v6);
    v9 = v0[10];
    v8 = v0[11];
    v10 = v0[9];
    if (v7)
    {
      v23 = v0[11];
      v11 = v0[8];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v24 = v13;
      *v12 = 136446466;
      v0[5] = v11;
      swift_getMetatypeMetadata();
      v14 = sub_1BA4A6808();
      v16 = sub_1B9F0B82C(v14, v15, &v24);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2080;
      swift_getErrorValue();
      v17 = sub_1BA4A8418();
      v19 = sub_1B9F0B82C(v17, v18, &v24);

      *(v12 + 14) = v19;
      _os_log_impl(&dword_1B9F07000, v5, v6, "[%{public}s]: Error generating PDF: %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v13, -1, -1);
      MEMORY[0x1BFAF43A0](v12, -1, -1);

      (*(v9 + 8))(v23, v10);
    }

    else
    {

      (*(v9 + 8))(v8, v10);
    }

    v20 = v1;
    sub_1BA41B194(v1, 1);
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_1BA41AA30()
{
  v1[19] = v0;
  sub_1BA4A6C68();
  v1[20] = sub_1BA4A6C58();
  v3 = sub_1BA4A6C28();
  v1[21] = v3;
  v1[22] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1BA41AAC8, v3, v2);
}

uint64_t sub_1BA41AAC8()
{
  v1 = v0[19];
  v2 = OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_configurationDataSource;
  v0[23] = OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_configurationDataSource;
  v3 = *(v1 + v2 + 24);
  v4 = *(v1 + v2 + 32);
  __swift_project_boxed_opaque_existential_1((v1 + v2), v3);
  (*(v4 + 48))(v3, v4);
  v6 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
  v7 = swift_task_alloc();
  v0[24] = v7;
  *v7 = v0;
  v7[1] = sub_1BA41ABC4;

  return PDFConfigurable.generatePDFData()(v6, v5);
}

uint64_t sub_1BA41ABC4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[25] = a1;
  v5[26] = a2;
  v5[27] = v2;

  v6 = v4[22];
  v7 = v4[21];
  if (v2)
  {
    v8 = sub_1BA41B0A8;
  }

  else
  {
    v8 = sub_1BA41AD0C;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1BA41AD0C()
{
  v1 = (v0[19] + v0[23]);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  (*(v3 + 56))(v2, v3);
  v4 = v0[10];
  v5 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v4);
  v8 = (*(v5 + 8) + **(v5 + 8));
  v6 = swift_task_alloc();
  v0[28] = v6;
  *v6 = v0;
  v6[1] = sub_1BA41AE6C;

  return v8(v4, v5);
}

uint64_t sub_1BA41AE6C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 232) = v2;

  if (v2)
  {
    v7 = v6[21];
    v8 = v6[22];
    v9 = sub_1BA41B114;
  }

  else
  {
    v6[30] = a2;
    v6[31] = a1;
    v7 = v6[21];
    v8 = v6[22];
    v9 = sub_1BA41AFA0;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1BA41AFA0()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);

  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  sub_1B9F0A534(v0 + 16, v0 + 96);
  v5 = type metadata accessor for PDFAsyncConfigurationViewController.PDFGeneratedResult();
  v6 = objc_allocWithZone(v5);
  sub_1B9F0A534(v0 + 96, &v6[OBJC_IVAR____TtCC18HealthExperienceUI35PDFAsyncConfigurationViewControllerP33_41892A8E3AE85A20C0CA0B347A3001CA18PDFGeneratedResult_configuration]);
  v7 = &v6[OBJC_IVAR____TtCC18HealthExperienceUI35PDFAsyncConfigurationViewControllerP33_41892A8E3AE85A20C0CA0B347A3001CA18PDFGeneratedResult_pdfData];
  *v7 = v4;
  *(v7 + 1) = v3;
  v8 = &v6[OBJC_IVAR____TtCC18HealthExperienceUI35PDFAsyncConfigurationViewControllerP33_41892A8E3AE85A20C0CA0B347A3001CA18PDFGeneratedResult_filename];
  *v8 = v1;
  *(v8 + 1) = v2;
  *(v0 + 136) = v6;
  *(v0 + 144) = v5;
  v9 = objc_msgSendSuper2((v0 + 136), sel_init);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v10 = *(v0 + 8);

  return v10(v9);
}

uint64_t sub_1BA41B0A8()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BA41B114()
{
  sub_1B9F2BB4C(v0[25], v0[26]);

  __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v1 = v0[1];

  return v1();
}

void sub_1BA41B194(void *a1, char a2)
{
  v5 = ~a2;
  ObjectType = swift_getObjectType();
  v7 = sub_1BA4A3EA8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v2[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_state];
  v12 = *&v2[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_state];
  *v11 = a1;
  v13 = v11[8];
  v11[8] = a2;
  sub_1BA41E7EC(v12, v13);
  if (v5)
  {
    if (a2)
    {
      sub_1BA41E804(a1, a2);
      sub_1BA41E804(a1, a2);
      sub_1BA41E7E0(a1);
      sub_1BA4A3E08();
      sub_1BA41E804(a1, a2);
      v25[1] = v2;
      v14 = v2;
      v15 = sub_1BA4A3E88();
      v16 = sub_1BA4A6FC8();

      sub_1BA41E7EC(a1, a2);
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v25[0] = swift_slowAlloc();
        v25[6] = ObjectType;
        v26 = v25[0];
        *v17 = 136446466;
        swift_getMetatypeMetadata();
        v18 = sub_1BA4A6808();
        v20 = sub_1B9F0B82C(v18, v19, &v26);

        *(v17 + 4) = v20;
        *(v17 + 12) = 2080;
        swift_getErrorValue();
        v21 = sub_1BA4A8418();
        v23 = sub_1B9F0B82C(v21, v22, &v26);

        *(v17 + 14) = v23;
        _os_log_impl(&dword_1B9F07000, v15, v16, "[%{public}s]: No PDF data generated error: %s", v17, 0x16u);
        v24 = v25[0];
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v24, -1, -1);
        MEMORY[0x1BFAF43A0](v17, -1, -1);

        sub_1BA41E7EC(a1, a2);
        sub_1BA41E7EC(a1, a2);
      }

      else
      {
        sub_1BA41E7EC(a1, a2);
        sub_1BA41E7EC(a1, a2);
      }

      (*(v8 + 8))(v10, v7);
    }

    else
    {
      sub_1BA41E7E0(a1);
    }
  }

  sub_1BA41B478();
}

void sub_1BA41B478()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_state + 8);
  if (v2 == 255)
  {
    v12 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_previewDataSource);
    type metadata accessor for PDFImagePreviews();
    v13 = swift_allocObject();
    *(v13 + 48) = 0;
    *(v13 + 16) = xmmword_1BA4C2AD0;
    v14 = MEMORY[0x1E69E6530];
    v15 = sub_1BA4A6B98();
    *(v15 + 16) = 20;
    *&v16 = -1;
    *(&v16 + 1) = -1;
    *(v15 + 32) = v16;
    *(v15 + 48) = v16;
    *(v15 + 64) = v16;
    *(v15 + 80) = v16;
    *(v15 + 96) = v16;
    *(v15 + 112) = v16;
    *(v15 + 128) = v16;
    *(v15 + 144) = v16;
    *(v15 + 160) = v16;
    *(v15 + 176) = v16;
    *(v13 + 40) = v15;
    v17 = sub_1B9F0ADF8(0, &qword_1EDC6E370);
    *(v13 + 32) = MEMORY[0x1BFAF1080](20, v14, v17, MEMORY[0x1E69E6540]);
    *(v12 + OBJC_IVAR____TtC18HealthExperienceUI20PDFPreviewDataSource_previewImages) = v13;

    v18 = sub_1BA417AC8();
    [v18 setEnabled_];

    v10 = sub_1BA417D38();
    v11 = sub_1BA19CEC8();
    goto LABEL_5;
  }

  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_previewDataSource);
    type metadata accessor for PDFImagePreviews();
    v4 = swift_allocObject();
    *(v4 + 48) = 0;
    *(v4 + 16) = xmmword_1BA4C2AD0;
    v5 = MEMORY[0x1E69E6530];
    v6 = sub_1BA4A6B98();
    *(v6 + 16) = 20;
    *&v7 = -1;
    *(&v7 + 1) = -1;
    *(v6 + 32) = v7;
    *(v6 + 48) = v7;
    *(v6 + 64) = v7;
    *(v6 + 80) = v7;
    *(v6 + 96) = v7;
    *(v6 + 112) = v7;
    *(v6 + 128) = v7;
    *(v6 + 144) = v7;
    *(v6 + 160) = v7;
    *(v6 + 176) = v7;
    *(v4 + 40) = v6;
    v8 = sub_1B9F0ADF8(0, &qword_1EDC6E370);
    *(v4 + 32) = MEMORY[0x1BFAF1080](20, v5, v8, MEMORY[0x1E69E6540]);
    *(v3 + OBJC_IVAR____TtC18HealthExperienceUI20PDFPreviewDataSource_previewImages) = v4;

    v9 = sub_1BA417AC8();
    [v9 setEnabled_];

    v10 = sub_1BA417D38();
    v11 = sub_1BA19CCA0();
LABEL_5:
    v19 = v11;
    [v10 setBackgroundView_];

    goto LABEL_7;
  }

  v20 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_state);
  v21 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_previewDataSource);
  sub_1BA41E7E0(v20);
  *(v21 + OBJC_IVAR____TtC18HealthExperienceUI20PDFPreviewDataSource_previewImages) = sub_1BA4176FC();

  v22 = sub_1BA417AC8();
  [v22 setEnabled_];

  v23 = sub_1BA417D38();
  [v23 setBackgroundView_];

  v24 = OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___collectionView;
  [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___collectionView) reloadData];
  [*(v1 + v24) setContentOffset:1 animated:{0.0, 0.0}];
  sub_1BA41E7EC(v20, v2);
LABEL_7:
  v25 = sub_1BA417D38();
  [v25 reloadData];
}

id PDFAsyncConfigurationViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

Swift::Int __swiftcall PDFAsyncConfigurationViewController.tableView(_:numberOfRowsInSection:)(UITableView *_, Swift::Int numberOfRowsInSection)
{
  v3 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_configurationDataSource + 24);
  v4 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_configurationDataSource + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_configurationDataSource), v3);
  return (*(v4 + 8))(v3, v4);
}

id PDFAsyncConfigurationViewController.tableView(_:cellForRowAt:)(void *a1)
{
  v3 = sub_1BA4A4428();
  v46 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A6758();
  v7 = sub_1BA4A18F8();
  v8 = [a1 dequeueReusableCellWithIdentifier:v6 forIndexPath:v7];

  v9 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_configurationDataSource + 24);
  v10 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_configurationDataSource + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_configurationDataSource), v9);
  v11 = sub_1BA4A1938();
  (*(v10 + 24))(v55, v11, v9, v10);
  v12 = v56;
  v13 = v57;
  __swift_project_boxed_opaque_existential_1(v55, v56);
  v14 = (*(v13 + 8))(v12, v13);
  v16 = v15;
  sub_1BA4A4418();

  sub_1BA4A43B8();
  v17 = v56;
  v18 = v57;
  __swift_project_boxed_opaque_existential_1(v55, v56);
  (*(v18 + 16))(v17, v18);
  sub_1BA4A41A8();
  v19 = objc_opt_self();
  v20 = [v19 labelColor];
  v21 = sub_1BA4A4238();
  sub_1BA4A41F8();
  v21(&v51, 0);
  v22 = v46;
  v23 = [v19 secondaryLabelColor];
  v24 = sub_1BA4A4318();
  sub_1BA4A41F8();
  v24(&v51, 0);
  v53 = v3;
  v54 = MEMORY[0x1E69DC110];
  v25 = __swift_allocate_boxed_opaque_existential_1(&v51);
  (*(v22 + 16))(v25, v5, v3);
  MEMORY[0x1BFAF1B80](&v51);
  v26 = v56;
  v27 = v57;
  __swift_project_boxed_opaque_existential_1(v55, v56);
  v28 = (*(v27 + 24))(v26, v27);
  if (v29)
  {
    v30 = 0;
  }

  else
  {
    v30 = v28;
  }

  [v8 setSelectionStyle_];
  v31 = v56;
  v32 = v57;
  __swift_project_boxed_opaque_existential_1(v55, v56);
  v33 = (*(v32 + 32))(v31, v32);
  if (v34)
  {
    v35 = 0;
  }

  else
  {
    v35 = v33;
  }

  [v8 setAccessoryType_];
  if (v16)
  {
    v51 = v14;
    v52 = v16;
    v49 = 32;
    v50 = 0xE100000000000000;
    v47 = 0;
    v48 = 0xE000000000000000;
    sub_1B9F252FC();
    v36 = sub_1BA4A7B58();
    v38 = v37;

    sub_1B9F1C048(0, &qword_1EDC6E330);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1BA4B5460;
    *(v39 + 32) = 0xD000000000000015;
    *(v39 + 40) = 0x80000001BA507C00;
    v51 = v36;
    v52 = v38;
    v40 = v8;

    MEMORY[0x1BFAF1350](1819043139, 0xE400000000000000);

    v41 = v52;
    *(v39 + 48) = v51;
    *(v39 + 56) = v41;
    v42 = sub_1BA4A6AE8();

    v43 = HKUIJoinStringsForAutomationIdentifier();

    [v40 setAccessibilityIdentifier_];
  }

  (*(v22 + 8))(v5, v3);
  __swift_destroy_boxed_opaque_existential_1(v55);
  return v8;
}

uint64_t PDFAsyncConfigurationViewController.tableView(_:didSelectRowAt:)(void *a1)
{
  v3 = sub_1BA4A18F8();
  [a1 deselectRowAtIndexPath:v3 animated:1];

  v4 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_configurationDataSource + 24);
  v5 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_configurationDataSource + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_configurationDataSource), v4);
  v6 = sub_1BA4A1938();
  (*(v5 + 32))(v6, v4, v5);

  return sub_1BA419C08();
}

void sub_1BA41C144(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1BA4A1998();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_1BA4A3EA8();
  v9 = *(v121 - 1);
  MEMORY[0x1EEE9AC00](v121);
  v11 = &v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v114 - v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v114 - v17;
  v19 = [a1 state];
  if ((v19 - 4) < 2)
  {
    sub_1BA4A3E08();
    v96 = v2;
    v97 = sub_1BA4A3E88();
    v98 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v122 = ObjectType;
      v123 = v100;
      *v99 = 136446210;
      swift_getMetatypeMetadata();
      v101 = sub_1BA4A6808();
      v103 = sub_1B9F0B82C(v101, v102, &v123);

      *(v99 + 4) = v103;
      _os_log_impl(&dword_1B9F07000, v97, v98, "[%{public}s]: PDF zoom gesture failed or was cancelled", v99, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v100);
      MEMORY[0x1BFAF43A0](v100, -1, -1);
      MEMORY[0x1BFAF43A0](v99, -1, -1);
    }

    (*(v9 + 8))(v14, v121);
LABEL_22:
    sub_1BA41CB94();
    return;
  }

  if (v19 == 3)
  {
    sub_1BA4A3E08();
    v104 = v2;
    v105 = sub_1BA4A3E88();
    v106 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v122 = ObjectType;
      v123 = v108;
      *v107 = 136446210;
      swift_getMetatypeMetadata();
      v109 = sub_1BA4A6808();
      v111 = sub_1B9F0B82C(v109, v110, &v123);

      *(v107 + 4) = v111;
      _os_log_impl(&dword_1B9F07000, v105, v106, "[%{public}s]: PDF zoom gesture ended", v107, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v108);
      MEMORY[0x1BFAF43A0](v108, -1, -1);
      MEMORY[0x1BFAF43A0](v107, -1, -1);
    }

    (*(v9 + 8))(v11, v121);
    [a1 scale];
    if (v112 > 1.2)
    {
      sub_1BA41CC40();
      return;
    }

    goto LABEL_22;
  }

  if (v19 == 1)
  {
    v119 = v6;
    sub_1BA4A3E08();
    v20 = v2;
    v21 = sub_1BA4A3E88();
    v22 = sub_1BA4A6FC8();
    v120 = v20;

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v118 = v5;
      v24 = v23;
      v25 = swift_slowAlloc();
      v122 = ObjectType;
      v123 = v25;
      *v24 = 136446210;
      swift_getMetatypeMetadata();
      v26 = sub_1BA4A6808();
      v28 = sub_1B9F0B82C(v26, v27, &v123);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_1B9F07000, v21, v22, "[%{public}s]: PDF zoom gesture began", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x1BFAF43A0](v25, -1, -1);
      v29 = v24;
      v5 = v118;
      MEMORY[0x1BFAF43A0](v29, -1, -1);
    }

    (*(v9 + 8))(v18, v121);
    v30 = v120;
    v31 = sub_1BA417D38();
    v32 = OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___collectionView;
    [a1 locationInView_];
    v33 = [v31 indexPathForItemAtPoint_];

    if (v33)
    {
      sub_1BA4A1918();

      v34 = *&v30[v32];
      v35 = sub_1BA4A18F8();
      v36 = [v34 cellForItemAtIndexPath_];

      v37 = v119;
      if (v36)
      {
        type metadata accessor for PDFImageCell();
        v38 = swift_dynamicCastClass();
        if (v38)
        {
          v118 = v5;
          v39 = *(v38 + OBJC_IVAR____TtC18HealthExperienceUI12PDFImageCell_imageView);
          v40 = OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pinchedPageImageView;
          v41 = *&v30[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pinchedPageImageView];
          *&v30[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pinchedPageImageView] = v39;
          v42 = v39;

          v43 = [v30 view];
          if (v43)
          {
            v44 = v43;
            [v43 bounds];
            v46 = v45;
            v48 = v47;
            v50 = v49;
            v52 = v51;

            v53 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
            v54 = OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pinchAnimationBackgroundView;
            v55 = *&v30[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pinchAnimationBackgroundView];
            *&v30[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pinchAnimationBackgroundView] = v53;

            v56 = [v42 image];
            v57 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];

            v58 = OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pinchAnimationView;
            v59 = *&v30[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pinchAnimationView];
            *&v30[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pinchAnimationView] = v57;

            v60 = v42;
            v61 = [v60 window];
            if (!v61)
            {
LABEL_34:

              sub_1BA41CB94();
              goto LABEL_35;
            }

            v62 = v61;
            v63 = [v60 superview];
            if (!v63)
            {
LABEL_33:

              goto LABEL_34;
            }

            v121 = v63;
            v64 = [v30 view];
            if (v64)
            {
              v65 = v64;
              v66 = [v64 superview];

              if (v66)
              {
                v117 = v66;
                v67 = v120;
                v68 = *&v120[v54];
                if (v68)
                {
                  v69 = *&v120[v40];
                  if (v69)
                  {
                    v70 = *&v120[v58];
                    if (v70)
                    {
                      v115 = v70;
                      v71 = v69;
                      v72 = v67;
                      v73 = v68;
                      v116 = v71;
                      [v71 setAlpha_];
                      v74 = [v72 view];
                      if (v74)
                      {
                        v75 = v74;
                        [v74 frame];
                        v77 = v76;
                        v79 = v78;

                        [v117 convertPoint:v62 toCoordinateSpace:{v77, v79}];
                        v81 = v80;
                        v83 = v82;
                        [v73 frame];
                        [v73 setFrame_];
                        v84 = [objc_opt_self() whiteColor];
                        [v73 setBackgroundColor_];

                        [v73 setAlpha_];
                        v85 = [v73 layer];
                        [v85 setCornerRadius_];

                        [v73 setClipsToBounds_];
                        [v62 addSubview_];
                        [v62 bringSubviewToFront_];
                        v86 = v115;
                        [v60 bounds];
                        [v86 bounds];
                        [v86 setBounds_];
                        [v60 frame];
                        v88 = v87;
                        v90 = v89;

                        v91 = v121;
                        [v121 convertPoint:v62 toCoordinateSpace:{v88, v90}];
                        v93 = v92;
                        v95 = v94;
                        [v86 frame];
                        [v86 setFrame_];

                        [v62 addSubview_];
                        [v62 bringSubviewToFront_];

LABEL_35:
                        (*(v119 + 8))(v8, v118);
                        return;
                      }

                      goto LABEL_38;
                    }
                  }
                }

                v62 = v121;
                v113 = v117;
              }

              else
              {
                v113 = v121;
              }

              v62 = v113;
              goto LABEL_33;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
LABEL_38:
          __break(1u);
          return;
        }
      }

      (*(v37 + 8))(v8, v5);
    }
  }
}

void sub_1BA41CB94()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pinchedPageImageView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pinchedPageImageView);
  if (v2)
  {
    [v2 setAlpha_];
  }

  v3 = OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pinchAnimationBackgroundView;
  [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pinchAnimationBackgroundView) removeFromSuperview];
  v4 = OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pinchAnimationView;
  v5 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pinchAnimationView);
  if (v5)
  {
    [v5 removeFromSuperview];
  }

  v6 = *(v0 + v1);
  *(v0 + v1) = 0;

  v7 = *(v0 + v3);
  *(v0 + v3) = 0;

  v8 = *(v0 + v4);
  *(v0 + v4) = 0;
}

void sub_1BA41CC40()
{
  v1 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pinchAnimationView];
  v2 = OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pinchAnimationBackgroundView;
  v3 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pinchAnimationBackgroundView];
  v4 = OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pinchedPageImageView;
  v5 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pinchedPageImageView];
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pinchAnimationView] = 0;
  *&v0[v2] = 0;
  v6 = *&v0[v4];
  *&v0[v4] = 0;
  v17 = v5;

  v18 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = v1;
  v23 = sub_1BA41E7BC;
  v24 = v7;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1B9F0B040;
  v22 = &block_descriptor_115;
  v8 = _Block_copy(&aBlock);
  v9 = v1;
  v10 = v3;

  v11 = swift_allocObject();
  v11[2] = v0;
  v11[3] = v5;
  v11[4] = v1;
  v11[5] = v3;
  v23 = sub_1BA41E7C4;
  v24 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1BA40695C;
  v22 = &block_descriptor_53_0;
  v12 = _Block_copy(&aBlock);
  v13 = v17;
  v14 = v10;
  v15 = v9;
  v16 = v0;

  [v18 animateWithDuration:0x10000 delay:v8 options:v12 animations:0.3 completion:0.0];
  _Block_release(v12);
  _Block_release(v8);
}

id sub_1BA41CEC0(id result, void *a2)
{
  if (result)
  {
    result = [result setAlpha_];
  }

  if (a2)
  {
    CGAffineTransformMakeScale(&v3, 2.0, 2.0);
    [a2 setTransform_];
    return [a2 setAlpha_];
  }

  return result;
}

uint64_t sub_1BA41CF44(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v28 = sub_1BA4A6478();
  v31 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BA4A64C8();
  v29 = *(v10 - 8);
  v30 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BA4A64E8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v26 - v18;
  sub_1BA41D354();
  if (a3)
  {
    [a3 setAlpha_];
  }

  if (a4)
  {
    [a4 removeFromSuperview];
  }

  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  v20 = sub_1BA4A7308();
  sub_1BA4A64D8();
  sub_1BA4A6518();
  v27 = *(v14 + 8);
  v27(v16, v13);
  v21 = swift_allocObject();
  *(v21 + 16) = a5;
  aBlock[4] = sub_1BA41E7D0;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = &block_descriptor_59_1;
  v22 = _Block_copy(aBlock);
  v23 = a5;

  sub_1BA4A64A8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B9F0AFF0(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60]);
  sub_1B9F0AAD0(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1B9F31534();
  v24 = v28;
  sub_1BA4A7C38();
  MEMORY[0x1BFAF1CD0](v19, v12, v9, v22);
  _Block_release(v22);

  (*(v31 + 8))(v9, v24);
  (*(v29 + 8))(v12, v30);
  return (v27)(v19, v13);
}

void sub_1BA41D354()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_state + 8];
  if (v7 == 255 || (v7 & 1) != 0)
  {
    sub_1BA4A3E08();
    v8 = v1;
    v9 = sub_1BA4A3E88();
    v10 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v30[0] = v12;
      *v11 = 136446210;
      v30[5] = ObjectType;
      swift_getMetatypeMetadata();
      v13 = sub_1BA4A6808();
      v15 = sub_1B9F0B82C(v13, v14, v30);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1B9F07000, v9, v10, "[%{public}s]: PDF result not found when presenting preview", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x1BFAF43A0](v12, -1, -1);
      MEMORY[0x1BFAF43A0](v11, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }

  else
  {
    v16 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_state];
    v17 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_configurationDataSource + 24];
    v18 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_configurationDataSource + 32];
    __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_configurationDataSource], v17);
    v19 = *(v18 + 16);
    sub_1BA41E7E0(v16);
    v20 = v19(v17, v18);
    if (v21)
    {
      v22 = v20;
    }

    else
    {
      v22 = 0;
    }

    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = 0xE000000000000000;
    }

    v24 = *&v16[OBJC_IVAR____TtCC18HealthExperienceUI35PDFAsyncConfigurationViewControllerP33_41892A8E3AE85A20C0CA0B347A3001CA18PDFGeneratedResult_filename];
    v25 = *&v16[OBJC_IVAR____TtCC18HealthExperienceUI35PDFAsyncConfigurationViewControllerP33_41892A8E3AE85A20C0CA0B347A3001CA18PDFGeneratedResult_filename + 8];
    sub_1B9F0A534(&v16[OBJC_IVAR____TtCC18HealthExperienceUI35PDFAsyncConfigurationViewControllerP33_41892A8E3AE85A20C0CA0B347A3001CA18PDFGeneratedResult_configuration], v30);
    v26 = objc_allocWithZone(type metadata accessor for PDFAsyncViewController());

    v27 = sub_1BA41E130(v22, v23, v24, v25, v30, v26);
    v28 = [v1 navigationController];
    if (v28)
    {
      v29 = v28;
      [v28 pushViewController:v27 animated:0];

      sub_1BA41E7EC(v16, v7);
    }

    else
    {

      sub_1BA41E7EC(v16, v7);
    }
  }
}

id sub_1BA41D884(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1BA41D8C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1BA4A7F68();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1BA41D9C4, 0, 0);
}

uint64_t sub_1BA41D9C4()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1BA4A7F78();
  v5 = sub_1B9F0AFF0(&qword_1EBBF26D8, MEMORY[0x1E69E8820]);
  sub_1BA4A83C8();
  sub_1B9F0AFF0(&unk_1EBBF26E0, MEMORY[0x1E69E87E8]);
  sub_1BA4A7F88();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1BA41DB54;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_1BA41DB54()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1BA41DD10, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1BA41DD10()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1BA41DD7C(uint64_t a1, void *a2, void *a3)
{
  sub_1B9F1C048(0, &unk_1EDC6B3F0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BA4B5480;
  *(v6 + 56) = swift_getObjectType();
  *(v6 + 32) = a2;
  v7 = objc_allocWithZone(MEMORY[0x1E69CD9F8]);
  v8 = a2;
  v9 = sub_1BA4A6AE8();

  v15 = [v7 initWithActivityItems:v9 applicationActivities:0];

  sub_1B9F0AAD0(0, &qword_1EBBEE848, type metadata accessor for ActivityType, MEMORY[0x1E69E6F90]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BA4B5480;
  v11 = *MEMORY[0x1E69CDAA8];
  *(v10 + 32) = *MEMORY[0x1E69CDAA8];
  type metadata accessor for ActivityType(0);
  v12 = v11;
  v13 = sub_1BA4A6AE8();

  [v15 setExcludedActivityTypes_];

  v14 = [v15 popoverPresentationController];
  [v14 setSourceItem_];

  [a3 presentViewController:v15 animated:1 completion:0];
}

void sub_1BA41DF54(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1B9F1C048(0, &unk_1EDC6B3F0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BA4B5480;
  *(v6 + 56) = swift_getObjectType();
  *(v6 + 32) = a2;
  v7 = objc_allocWithZone(MEMORY[0x1E69CD9F8]);
  swift_unknownObjectRetain();
  v8 = sub_1BA4A6AE8();

  v14 = [v7 initWithActivityItems:v8 applicationActivities:0];

  sub_1B9F0AAD0(0, &qword_1EBBEE848, type metadata accessor for ActivityType, MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BA4B5480;
  v10 = *MEMORY[0x1E69CDAA8];
  *(v9 + 32) = *MEMORY[0x1E69CDAA8];
  type metadata accessor for ActivityType(0);
  v11 = v10;
  v12 = sub_1BA4A6AE8();

  [v14 setExcludedActivityTypes_];

  v13 = [v14 popoverPresentationController];
  [v13 setSourceItem_];

  [a3 presentViewController:v14 animated:1 completion:0];
}

char *sub_1BA41E130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char *a6)
{
  ObjectType = swift_getObjectType();
  v39 = sub_1BA4A3EA8();
  v10 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v12 = &ObjectType - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42[3] = &type metadata for PDFStaticFileNameProvider;
  v42[4] = &protocol witness table for PDFStaticFileNameProvider;
  v42[0] = a3;
  v42[1] = a4;
  v13 = &a6[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareButtonBehavior];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 2) = 0u;
  *&a6[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_analyticsDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a6[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareItemSource] = 0;
  *&a6[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController____lazy_storage___spinner] = 0;
  *&a6[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController____lazy_storage___pdfView] = 0;
  sub_1B9F0A534(a5, &a6[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_configuration]);
  sub_1B9F0A534(v42, &a6[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_pdfFileNameProvider]);
  v14 = a5[3];
  v15 = a5[4];
  __swift_project_boxed_opaque_existential_1(a5, v14);
  (*(v15 + 8))(v40, v14, v15);
  *&a6[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_pageNumberFormat] = *&v40[0];
  v16 = type metadata accessor for PDFAsyncViewController();
  v41.receiver = a6;
  v41.super_class = v16;
  v17 = objc_msgSendSuper2(&v41, sel_initWithNibName_bundle_, 0, 0);
  v18 = sub_1BA4A6758();

  [v17 setTitle_];

  v19 = a5[3];
  v20 = a5[4];
  __swift_project_boxed_opaque_existential_1(a5, v19);
  (*(v20 + 24))(v40, v19, v20);
  v21 = &v17[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareButtonBehavior];
  v22 = *&v17[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareButtonBehavior];
  v23 = *&v17[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareButtonBehavior + 8];
  v24 = *&v17[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareButtonBehavior + 16];
  v25 = *&v17[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareButtonBehavior + 24];
  v26 = *&v17[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareButtonBehavior + 32];
  v27 = *&v17[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareButtonBehavior + 40];
  v28 = v40[1];
  *v21 = v40[0];
  *(v21 + 1) = v28;
  *(v21 + 2) = v40[2];
  sub_1BA213AD8(v22, v23, v24, v25, v26, v27);
  sub_1BA4A3E08();
  v29 = sub_1BA4A3E88();
  v30 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *&v40[0] = v32;
    *v31 = 136446210;
    nullsub_1(ObjectType, v33);
    v34 = sub_1BA4A85D8();
    v36 = sub_1B9F0B82C(v34, v35, v40);

    *(v31 + 4) = v36;
    _os_log_impl(&dword_1B9F07000, v29, v30, "[%{public}s] Initialized", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x1BFAF43A0](v32, -1, -1);
    MEMORY[0x1BFAF43A0](v31, -1, -1);
  }

  else
  {
  }

  (*(v10 + 8))(v12, v39);
  __swift_destroy_boxed_opaque_existential_1(v42);
  __swift_destroy_boxed_opaque_existential_1(a5);
  return v17;
}

void _s18HealthExperienceUI35PDFAsyncConfigurationViewControllerC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_tableCellIdentifier);
  *v1 = 1819043139;
  v1[1] = 0xE400000000000000;
  v2 = sub_1BA4A6AE8();
  v3 = HKUIJoinStringsForAutomationIdentifier();

  if (!v3)
  {
    __break(1u);
  }

  v4 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_baseIdentifier);
  v5 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v7 = v6;

  *v4 = v5;
  v4[1] = v7;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___cancelBarButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___actionBarButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___tableView) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___collectionView) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___scrollView) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pinchAnimationBackgroundView) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pinchAnimationView) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pinchedPageImageView) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pdfPadding) = 0x403E000000000000;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___pdfPaddingConstraints) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___pdfHeightConstraint) = 0;
  v8 = v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_state;
  *v8 = 0;
  *(v8 + 8) = -1;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_currentTask) = 0;
  sub_1BA4A8018();
  __break(1u);
}

uint64_t get_enum_tag_for_layout_string_18HealthExperienceUI35PDFAsyncConfigurationViewControllerC5State33_41892A8E3AE85A20C0CA0B347A3001CALLO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BA41E6F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 >= 2)
  {
    v4 = (v3 ^ 0xFF) + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 2)
  {
    return v4 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BA41E738(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = ~a2;
    }
  }

  return result;
}

uint64_t sub_1BA41E780(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
  }

  else if (a2)
  {
    *(result + 8) = -a2;
  }

  return result;
}

void sub_1BA41E7EC(id a1, char a2)
{
  if (a2 != -1)
  {
    sub_1BA336520(a1);
  }
}

id sub_1BA41E804(id a1, char a2)
{
  if (a2 != -1)
  {
    return sub_1BA41E7E0(a1);
  }

  return a1;
}

uint64_t sub_1BA41E828(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BA0C2E3C;

  return sub_1BA419DEC(a1, v4, v5, v6);
}

void sub_1BA41E95C(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(v3 + 16))
  {
    v6 = HKChartSummaryTrendModel.makeModel(updatedFor:)(a3);
    if (a1)
    {
      v7 = v6;
      [a2 updateChartSummaryTrendModel_viewController_];
      v6 = v7;
    }
  }
}

void DataTypeDetailChartCellItem.updateInteractiveChart(chartViewController:chartFactory:chartContext:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(a5 + 32))(a4, a5);
  if (v8)
  {
    v9 = v8;
    v10 = HKChartSummaryTrendModel.makeModel(updatedFor:)(a3);

    if (a1)
    {
      [a2 updateChartSummaryTrendModel:v10 viewController:a1];
    }
  }
}

uint64_t DataTypeDetailChartCellItem.isDifferent(from:)(void *a1, uint64_t a2, uint64_t (**a3)(void, void))
{
  v6 = a3[1](a2, a3);
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = (*(v8 + 8))(v7, v8);
  sub_1B9F0ADF8(0, &qword_1EDC6E920);
  v10 = sub_1BA4A7798();

  if ((v10 & 1) == 0)
  {
    goto LABEL_20;
  }

  v11 = a3[2](a2, a3);
  v13 = v12;
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  v16 = (*(v15 + 16))(v14, v15);
  if (!v13)
  {
    if (!v17)
    {
      goto LABEL_14;
    }

LABEL_11:

LABEL_20:
    v26 = 1;
    return v26 & 1;
  }

  if (!v17)
  {
    goto LABEL_11;
  }

  if (v11 == v16 && v13 == v17)
  {
  }

  else
  {
    v19 = sub_1BA4A8338();

    if ((v19 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

LABEL_14:
  v20 = a3[4](a2, a3);
  v21 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  v23 = (*(v22 + 32))(v21, v22);
  v24 = v23;
  if (!v20)
  {
    if (!v23)
    {
      v26 = 0;
      return v26 & 1;
    }

    goto LABEL_20;
  }

  if (!v23)
  {

    goto LABEL_20;
  }

  sub_1B9F0ADF8(0, &qword_1EBBF2DA0);
  v25 = sub_1BA4A7798();

  v26 = v25 ^ 1;
  return v26 & 1;
}

id DataTypeDetailChartCellItem.createInteractiveChart(chartFactory:chartContext:summaryTrendModel:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = a1;
  v44 = a3;
  sub_1B9F0CC94(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v37 = &v35 - v10;
  sub_1B9F0CC94(0, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v35 - v12;
  v14 = sub_1BA4A1728();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v38 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v35 - v18;
  v39 = sub_1BA4A0FA8();
  v20 = *(v39 - 8);
  v21 = MEMORY[0x1EEE9AC00](v39);
  v23 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a5 + 8);
  v40 = a4;
  v41 = v5;
  v42 = a5;
  v25 = v24(a4, a5, v21);
  v26 = [v25 identifier];

  if (v26)
  {
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v26 = sub_1BA4A6758();

    if (a2)
    {
LABEL_3:
      if (*(a2 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_preferredOverlayRawValue + 8))
      {
        v27 = 0;
      }

      else
      {
        v27 = *(a2 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_preferredOverlayRawValue);
      }

      if (*(a2 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_chartOptionsRawValue + 8) & 1) == 0 && (*(a2 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_chartOptionsRawValue))
      {
        v36 = 0x2000;
      }

      else
      {
        v36 = 0;
      }

      sub_1BA41F398(a2 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_date, v13, &qword_1EDC6E440, MEMORY[0x1E6969530]);
      if ((*(v15 + 48))(v13, 1, v14) == 1)
      {
        sub_1BA41F33C(v13, &qword_1EDC6E440, MEMORY[0x1E6969530]);
        v28 = v37;
        sub_1BA41F398(a2 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_dateInterval, v37, &qword_1EDC6E2A0, MEMORY[0x1E6968130]);
        v29 = v39;
        if ((*(v20 + 48))(v28, 1, v39) == 1)
        {
          v30 = v36;
          goto LABEL_15;
        }

        (*(v20 + 32))(v23, v28, v29);
      }

      else
      {
        (*(v15 + 32))(v19, v13, v14);
        (*(v15 + 16))(v38, v19, v14);
        sub_1BA4A0F78();
        (*(v15 + 8))(v19, v14);
        v29 = v39;
      }

      v30 = v36;
      goto LABEL_19;
    }
  }

  (*(v15 + 56))(v13, 1, 1, v14);
  sub_1BA41F33C(v13, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  v28 = v37;
  v29 = v39;
  (*(v20 + 56))(v37, 1, 1, v39);
  v30 = 0;
  v27 = 0;
LABEL_15:
  sub_1BA41F33C(v28, &qword_1EDC6E2A0, MEMORY[0x1E6968130]);
  sub_1BA4A1718();
  sub_1BA4A0F78();
LABEL_19:
  v31 = sub_1BA4A0F28();
  v32 = (*(v42 + 24))(v40);
  v33 = [v43 interactiveChartForTypeIdentifier:v26 preferredOverlay:v27 chartOptions:v30 displayDateInterval:v31 restorationUserActivity:v32 chartSummaryTrendModel:v44];

  (*(v20 + 8))(v23, v29);
  return v33;
}

void sub_1BA41F2B0(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(v3 + 32))
  {
    v6 = HKChartSummaryTrendModel.makeModel(updatedFor:)(a3);
    if (a1)
    {
      v7 = v6;
      [a2 updateChartSummaryTrendModel_viewController_];
      v6 = v7;
    }
  }
}

uint64_t sub_1BA41F33C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1B9F0CC94(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1BA41F398(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1B9F0CC94(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BA41F498(uint64_t a1, uint64_t *a2)
{
  sub_1B9F68124(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView_item;
  swift_beginAccess();
  sub_1B9F63E74(v6, v3 + v4);
  swift_endAccess();
  sub_1BA41F534();
  return sub_1B9F445EC(v6, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0D950);
}

void sub_1BA41F534()
{
  v1 = v0;
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 22;
  v6 = OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView_item;
  swift_beginAccess();
  sub_1B9F68124(&v1[v6], v30);
  if (v31)
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0);
    sub_1B9F0D950(0, &qword_1EDC69320);
    if (swift_dynamicCast())
    {
      if (*(&v33 + 1))
      {
        sub_1B9F1134C(&v32, v35);
        v7 = v36;
        v8 = v37;
        __swift_project_boxed_opaque_existential_1(v35, v36);
        (*(v8 + 8))(v7, v8);
        v10 = v9;
        v11 = sub_1BA41FEA0();
        if (v10)
        {
          v12 = sub_1BA4A6758();
        }

        else
        {
          v12 = 0;
        }

        [v11 setText_];

        v23 = v36;
        v24 = v37;
        __swift_project_boxed_opaque_existential_1(v35, v36);
        v25 = (*(v24 + 32))(v23, v24);
        v26 = sub_1BA420320();
        v27 = v26;
        v28 = &selRef_startAnimating;
        if ((v25 & 1) == 0)
        {
          v28 = &selRef_stopAnimating;
        }

        [v26 *v28];

        [*&v1[OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView____lazy_storage___spinner] setHidden_];
        __swift_destroy_boxed_opaque_existential_1(v35);
        return;
      }
    }

    else
    {
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
    }
  }

  else
  {
    sub_1B9F445EC(v30, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0D950);
    v32 = 0u;
    v33 = 0u;
    v34 = 0;
  }

  sub_1B9F445EC(&v32, &qword_1EBBF2710, &qword_1EDC69320, &protocol descriptor for EmptyStateItem, sub_1B9F0D950);
  sub_1BA4A3DD8();
  v13 = v1;
  v14 = sub_1BA4A3E88();
  v15 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *&v32 = v17;
    *v16 = 136315138;
    sub_1B9F68124(&v1[v6], v35);
    sub_1B9F0D718(0, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0D950);
    v18 = sub_1BA4A6808();
    v20 = sub_1B9F0B82C(v18, v19, &v32);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_1B9F07000, v14, v15, "Unexpected item received in EmptyStateCellView: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x1BFAF43A0](v17, -1, -1);
    MEMORY[0x1BFAF43A0](v16, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v21 = sub_1BA41FEA0();
  v22 = sub_1BA4A6758();
  [v21 setText_];
}

uint64_t sub_1BA41F98C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA41F9E4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA41F534();
  return sub_1B9F445EC(a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0D950);
}

void (*sub_1BA41FA7C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA41FAE0;
}

void sub_1BA41FAE0(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1BA41F534();
  }
}

void sub_1BA41FB14(uint64_t *a1@<X8>)
{
  v2 = sub_1BA41FEA0();
  v3 = [v2 text];

  if (v3)
  {
    v4 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  *a1 = v4;
  a1[1] = v6;
}

void sub_1BA41FB8C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = sub_1BA41FEA0();
  if (v1)
  {
    v3 = sub_1BA4A6758();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setText_];
}

uint64_t sub_1BA41FC10()
{
  v0 = sub_1BA41FEA0();
  v1 = [v0 text];

  if (!v1)
  {
    return 0;
  }

  v2 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  return v2;
}

void sub_1BA41FC84(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BA41FEA0();
  if (a2)
  {
    v4 = sub_1BA4A6758();
  }

  else
  {
    v4 = 0;
  }

  [v3 setText_];
}

void (*sub_1BA41FD10(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  v3 = sub_1BA41FEA0();
  v4 = [v3 text];

  if (v4)
  {
    v5 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_1BA41FDA4;
}

void sub_1BA41FDA4(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(*(a1 + 16) + OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView____lazy_storage___label);
  if (a2)
  {
    v5 = v3;
    if (v2)
    {

      v4 = sub_1BA4A6758();
    }

    else
    {
      v4 = 0;
    }

    [v5 setText_];
  }

  else
  {
    v5 = v3;
    if (v2)
    {
      v4 = sub_1BA4A6758();

      [v5 setText_];
    }

    else
    {
      v4 = 0;
      [v5 setText_];
    }
  }
}

id sub_1BA41FEA0()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView____lazy_storage___label;
  v7 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView____lazy_storage___label);
  if (v7)
  {
    v8 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView____lazy_storage___label);
  }

  else
  {
    v40 = v3;
    v9 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    v10 = [objc_opt_self() secondaryLabelColor];
    [v9 setTextColor_];

    v11 = *MEMORY[0x1E69DDCF8];
    v12 = objc_opt_self();
    v13 = [v12 preferredFontDescriptorWithTextStyle:v11 compatibleWithTraitCollection:0];
    if (v13)
    {
      v14 = v13;
      v15 = [objc_opt_self() fontWithDescriptor:v13 size:0.0];
    }

    else
    {
      v39 = v0;
      sub_1BA4A3DD8();
      v16 = v11;
      v17 = sub_1BA4A3E88();
      v18 = sub_1BA4A6FB8();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v43 = v37;
        *v19 = 136315906;
        v20 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v38 = v16;
        v22 = sub_1B9F0B82C(v20, v21, &v43);

        *(v19 + 4) = v22;
        *(v19 + 12) = 2080;
        v41 = 0;
        v42 = 1;
        sub_1BA1508E8();
        v23 = sub_1BA4A6808();
        v25 = sub_1B9F0B82C(v23, v24, &v43);

        *(v19 + 14) = v25;
        *(v19 + 22) = 2080;
        LODWORD(v41) = 0;
        type metadata accessor for SymbolicTraits(0);
        v26 = sub_1BA4A6808();
        v28 = sub_1B9F0B82C(v26, v27, &v43);
        v16 = v38;

        *(v19 + 24) = v28;
        *(v19 + 32) = 2112;
        v29 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        *(v19 + 34) = v29;
        v30 = v36;
        *v36 = v29;
        _os_log_impl(&dword_1B9F07000, v17, v18, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v19, 0x2Au);
        sub_1B9F445EC(v30, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
        MEMORY[0x1BFAF43A0](v30, -1, -1);
        v31 = v37;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v31, -1, -1);
        MEMORY[0x1BFAF43A0](v19, -1, -1);
      }

      (*(v2 + 8))(v5, v40);
      v0 = v39;
      v32 = [v12 preferredFontDescriptorWithTextStyle_];
      v15 = [objc_opt_self() fontWithDescriptor:v32 size:0.0];
    }

    [v9 setFont_];

    [v9 setNumberOfLines_];
    [v9 setTextAlignment_];
    [v9 setAdjustsFontForContentSizeCategory_];
    v33 = *(v0 + v6);
    *(v0 + v6) = v9;
    v8 = v9;

    v7 = 0;
  }

  v34 = v7;
  return v8;
}

id sub_1BA420320()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView____lazy_storage___spinner;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView____lazy_storage___spinner);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView____lazy_storage___spinner);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1BA420398(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView____lazy_storage___spinner);
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView____lazy_storage___spinner) = a1;
}

void (*sub_1BA4203AC(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1BA420320();
  return sub_1BA4203F4;
}

void sub_1BA4203F4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView____lazy_storage___spinner);
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView____lazy_storage___spinner) = v2;
}

id sub_1BA42040C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView____lazy_storage___stackView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView____lazy_storage___stackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView____lazy_storage___stackView);
  }

  else
  {
    v4 = sub_1BA420470();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA420470()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  IsLargerThanSizeCategory = HKUIApplicationContentSizeCategoryIsLargerThanSizeCategory();
  v2 = 4.0;
  if (IsLargerThanSizeCategory)
  {
    v2 = 16.0;
  }

  [v0 setSpacing_];
  [v0 setAxis_];
  [v0 setAlignment_];
  v3 = sub_1BA420320();
  [v0 addArrangedSubview_];

  v4 = sub_1BA41FEA0();
  [v0 addArrangedSubview_];

  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  return v0;
}

id sub_1BA420624(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView_item];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView____lazy_storage___label] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView____lazy_storage___spinner] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView____lazy_storage___stackView] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for EmptyStateCellView();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id sub_1BA4206F0()
{
  v1 = sub_1BA42040C();
  [v0 addSubview_];

  v2 = objc_opt_self();
  sub_1B9F109F8();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BA4C27A0;
  v4 = [v0 heightAnchor];
  v5 = [v4 constraintGreaterThanOrEqualToConstant_];

  *(v3 + 32) = v5;
  v6 = OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView____lazy_storage___stackView;
  v7 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView____lazy_storage___stackView] bottomAnchor];
  v8 = [v0 layoutMarginsGuide];
  v9 = [v8 bottomAnchor];

  v10 = [v7 constraintEqualToAnchor:v9 constant:-8.0];
  *(v3 + 40) = v10;
  v11 = [*&v0[v6] topAnchor];
  v12 = [v0 layoutMarginsGuide];
  v13 = [v12 topAnchor];

  v14 = [v11 constraintEqualToAnchor:v13 constant:8.0];
  *(v3 + 48) = v14;
  v15 = [*&v0[v6] centerXAnchor];
  v16 = [v0 centerXAnchor];
  v17 = [v15 constraintEqualToAnchor_];

  *(v3 + 56) = v17;
  v18 = [*&v0[v6] centerYAnchor];
  v19 = [v0 centerYAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v3 + 64) = v20;
  v21 = [*&v0[v6] leadingAnchor];
  v22 = [v0 layoutMarginsGuide];
  v23 = [v22 leadingAnchor];

  v24 = [v21 constraintGreaterThanOrEqualToAnchor:v23 constant:16.0];
  *(v3 + 72) = v24;
  v25 = [*&v0[v6] trailingAnchor];
  v26 = [v0 layoutMarginsGuide];
  v27 = [v26 trailingAnchor];

  v28 = [v25 constraintLessThanOrEqualToAnchor:v27 constant:-16.0];
  *(v3 + 80) = v28;
  sub_1B9F0ADF8(0, &qword_1EDC6B570);
  v29 = sub_1BA4A6AE8();

  [v2 activateConstraints_];

  return sub_1BA420B18();
}

id sub_1BA420B18()
{
  v1 = sub_1BA42040C();
  IsLargerThanSizeCategory = HKUIApplicationContentSizeCategoryIsLargerThanSizeCategory();
  v3 = 4.0;
  if (IsLargerThanSizeCategory)
  {
    v3 = 16.0;
  }

  [v1 setSpacing_];

  v4 = HKUIApplicationContentSizeCategoryIsLargerThanSizeCategory();
  v5 = sub_1BA420320();
  v6 = v5;
  if (v4)
  {
    v7 = 101;
  }

  else
  {
    v7 = 100;
  }

  [v5 setActivityIndicatorViewStyle_];

  v8 = HKUIApplicationContentSizeCategoryIsLargerThanSizeCategory();
  v9 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView____lazy_storage___stackView);

  return [v9 setAxis_];
}

id EmptyStateCellView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmptyStateCellView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ExportDataSourceItem.uniqueIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ExportDataSourceItem.reuseIdentifier.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

void *sub_1BA420FA0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BA4A1798();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = 0xD000000000000015;
  v21 = 0x80000001BA508050;
  sub_1BA4A1788();
  sub_1BA42173C(&qword_1EDC6AE60, 255, MEMORY[0x1E69695A8]);
  v8 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v8);

  (*(v5 + 8))(v7, v4);
  v9 = v21;
  v1[2] = v20;
  v1[3] = v9;
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v1[4] = sub_1BA4A1318();
  v1[5] = v10;
  v1[6] = 0;
  v1[7] = 0;
  v1[8] = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  v20 = type metadata accessor for ProfileButtonCell();
  sub_1BA071208();
  v1[9] = sub_1BA4A6808();
  v1[10] = v11;
  sub_1B9F25350();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1BA4B5460;
  *(v12 + 32) = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  *(v12 + 40) = v13;
  *(v12 + 48) = 0xD000000000000013;
  *(v12 + 56) = 0x80000001BA508100;
  v14 = sub_1BA4A6AE8();

  v15 = HKUIJoinStringsForAutomationIdentifier();

  if (v15)
  {
    v16 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v2[11] = v16;
  v2[12] = v18;
  v2[13] = a1;
  return v2;
}

void sub_1BA421294(uint64_t a1, uint64_t a2)
{
  v5 = [*(v2 + 104) viewControllerFactory];
  [v5 createAndStartExportForViewController:a2 shareSheetSourceView:a1];
}

uint64_t ExportDataSourceItem.deinit()
{

  return v0;
}

uint64_t ExportDataSourceItem.__deallocating_deinit()
{
  ExportDataSourceItem.deinit();

  return swift_deallocClassInstance();
}

void sub_1BA4213FC(uint64_t a1, uint64_t a2)
{
  v5 = [*(*v2 + 104) viewControllerFactory];
  [v5 createAndStartExportForViewController:a2 shareSheetSourceView:a1];
}

uint64_t sub_1BA421484(uint64_t a1, uint64_t a2)
{
  result = sub_1BA42173C(&qword_1EBBF2718, a2, type metadata accessor for ExportDataSourceItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BA4214DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

uint64_t sub_1BA421540(uint64_t a1, uint64_t a2)
{
  result = sub_1BA42173C(&qword_1EBBF2720, a2, type metadata accessor for ExportDataSourceItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BA42173C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

id sub_1BA421784()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI28DisclosureCellViewController____lazy_storage___disclosureIndicator;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28DisclosureCellViewController____lazy_storage___disclosureIndicator);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28DisclosureCellViewController____lazy_storage___disclosureIndicator);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = sub_1B9F6B774(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DB980], 0, 0, 1, 0, 1);
    v6 = [objc_opt_self() configurationWithFont:v5 scale:1];
    v7 = sub_1BA4A6758();
    v8 = [objc_opt_self() systemImageNamed:v7 withConfiguration:v6];

    [v4 setImage_];
    v9 = [objc_opt_self() tertiaryLabelColor];
    [v4 setTintColor_];

    v10 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

char *sub_1BA421938()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI28DisclosureCellViewController____lazy_storage___cellAccessoryView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28DisclosureCellViewController____lazy_storage___cellAccessoryView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28DisclosureCellViewController____lazy_storage___cellAccessoryView);
  }

  else
  {
    v4 = v0;
    v5 = sub_1BA421784();
    v6 = objc_allocWithZone(type metadata accessor for CellWithAccessoryView());
    v7 = sub_1BA33F3C8(v5);
    v8 = *(v4 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void sub_1BA421A08(uint64_t a1, void *a2)
{
  v3 = a1;
  if (a2)
  {

    MEMORY[0x1BFAF1350](0x736F6C637369442ELL, 0xEB00000000657275);
    v3 = a1;
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v5 = MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xA0);

  v7 = v6(v3, v4);
  v8 = (*((*v5 & *v2) + 0x80))(v7);
  if (v8)
  {
    v9 = v8;
    v10.value._countAndFlagsBits = v3;
    v10.value._object = v4;
    v11 = v9;
    CellWithAccessoryView.updateAutomationIdentifiers(with:)(v10);
  }

  else
  {
    __break(1u);
  }
}

id DisclosureCellViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id DisclosureCellViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI28DisclosureCellViewController____lazy_storage___disclosureIndicator] = 0;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI28DisclosureCellViewController____lazy_storage___cellAccessoryView] = 0;
  if (a2)
  {
    v5 = sub_1BA4A6758();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for DisclosureCellViewController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, v5, a3);

  return v6;
}

id DisclosureCellViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DisclosureCellViewController.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI28DisclosureCellViewController____lazy_storage___disclosureIndicator] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI28DisclosureCellViewController____lazy_storage___cellAccessoryView] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DisclosureCellViewController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

void sub_1BA421E94()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28DisclosureCellViewController____lazy_storage___cellAccessoryView);
}

id DisclosureCellViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DisclosureCellViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static UIImageSymbolConfiguration.sidebarSymbolConfig.getter()
{
  if (qword_1EDC5E2E0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDC5E2E8;

  return v1;
}

uint64_t sub_1BA421FC8(uint64_t a1, uint64_t *a2)
{
  sub_1B9F68124(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI15SidebarListCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v6, v3 + v4);
  swift_endAccess();
  sub_1BA422050();
  return sub_1B9F43A50(v6, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
}

uint64_t sub_1BA422050()
{
  sub_1B9F65DE4();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BA4A4428();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC18HealthExperienceUI15SidebarListCell_item;
  swift_beginAccess();
  sub_1B9F68124(v0 + v8, v29);
  if (v30)
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0);
    sub_1B9F0D950(0, &qword_1EBBF2748);
    if (swift_dynamicCast())
    {
      if (*(&v27 + 1))
      {
        sub_1B9F1134C(&v26, v29);
        sub_1BA4A43A8();
        v9 = v30;
        v10 = v31;
        __swift_project_boxed_opaque_existential_1(v29, v30);
        (*(v10 + 40))(v9, v10);
        sub_1BA4A43D8();
        v11 = v30;
        v12 = v31;
        __swift_project_boxed_opaque_existential_1(v29, v30);
        (*(v12 + 16))(v11, v12);
        sub_1BA4A43B8();
        v13 = sub_1BA4A42D8();
        sub_1BA4A42A8();
        v13(&v26, 0);
        *(&v27 + 1) = v4;
        v28 = MEMORY[0x1E69DC110];
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v26);
        (*(v5 + 16))(boxed_opaque_existential_1, v7, v4);
        MEMORY[0x1BFAF1EF0](&v26);
        v15 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v17 = v16;
        strcpy(&v26, ".SidebarItem.");
        HIWORD(v26) = -4864;
        v18 = v30;
        v19 = v31;
        __swift_project_boxed_opaque_existential_1(v29, v30);
        v20 = (*(v19 + 16))(v18, v19);
        MEMORY[0x1BFAF1350](v20);

        v21 = v26;
        *&v26 = v15;
        *(&v26 + 1) = v17;

        MEMORY[0x1BFAF1350](v21, *(&v21 + 1));

        v22 = sub_1BA4A6758();

        [v0 setAccessibilityIdentifier_];

        sub_1BA4A4158();
        v23 = sub_1BA4A4168();
        (*(*(v23 - 8) + 56))(v3, 0, 1, v23);
        MEMORY[0x1BFAF1F10](v3);
        (*(v5 + 8))(v7, v4);
        return __swift_destroy_boxed_opaque_existential_1(v29);
      }
    }

    else
    {
      v28 = 0;
      v26 = 0u;
      v27 = 0u;
    }
  }

  else
  {
    sub_1B9F43A50(v29, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
    v26 = 0u;
    v27 = 0u;
    v28 = 0;
  }

  return sub_1B9F43A50(&v26, &qword_1EBBF2740, &qword_1EBBF2748);
}

uint64_t sub_1BA422494@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI15SidebarListCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA4224EC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI15SidebarListCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA422050();
  return sub_1B9F43A50(a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
}

uint64_t (*sub_1BA422570(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA4225D4;
}

uint64_t sub_1BA4225D4(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1BA422050();
  }

  return result;
}

id SidebarListCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id SidebarListCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI15SidebarListCell_item];
  v10 = type metadata accessor for SidebarListCell();
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v12.receiver = v4;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
}

id SidebarListCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SidebarListCell.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC18HealthExperienceUI15SidebarListCell_item];
  v4 = type metadata accessor for SidebarListCell();
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v7.receiver = v1;
  v7.super_class = v4;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id SidebarListCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SidebarListCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA422A14(uint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v2 < 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_1B9F2A568(v2);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v5[1] = v3;
  result = sub_1BA42525C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1BA422A8C(uint64_t a1, unint64_t a2)
{
  v5 = sub_1BA4A1798();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  inited = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI31UninstalledAppSourcesDataSource_healthStore) = a1;
  v56 = inited;
  if (!(a2 >> 62))
  {
    v9 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
LABEL_3:
      v59 = MEMORY[0x1E69E7CC0];
      v10 = a1;
      sub_1BA4A7F08();
      if ((v9 & 0x8000000000000000) == 0)
      {
        v52 = a1;
        v53 = v6;
        v54 = v5;
        v55 = v2;
        v11 = 0;
        v58 = (a2 & 0xC000000000000001);
        *&v57 = a2;
        do
        {
          v27 = v9;
          if (v58)
          {
            v12 = MEMORY[0x1BFAF2860](v11, a2);
          }

          else
          {
            v12 = *(a2 + 8 * v11 + 32);
          }

          v13 = v12;
          ++v11;
          type metadata accessor for AppSourcesItem();
          v14 = swift_allocObject();
          *(v14 + 40) = v10;
          *(v14 + 48) = v13;
          *(v14 + 32) = 0;
          v15 = v10;
          v16 = v13;
          v17 = [v16 source];
          v18 = [v17 name];

          v19 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v21 = v20;

          *(v14 + 56) = v19;
          *(v14 + 64) = v21;
          v22 = [v16 source];
          v23 = [v22 bundleIdentifier];

          v24 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v26 = v25;

          *(v14 + 16) = v24;
          *(v14 + 24) = v26;
          sub_1BA4A7ED8();
          sub_1BA4A7F18();
          sub_1BA4A7F28();
          sub_1BA4A7EE8();
          v9 = v27;
          a2 = v57;
        }

        while (v27 != v11);

        v28 = v59;
        v5 = v54;
        v6 = v53;
        inited = v56;
        a1 = v52;
        goto LABEL_10;
      }

      __break(1u);
      goto LABEL_18;
    }

LABEL_14:
    v58 = a1;

    sub_1B9FF6758();
    inited = swift_initStackObject();
    v57 = xmmword_1BA4B5480;
    *(inited + 1) = xmmword_1BA4B5480;
    sub_1B9F1B378(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
    a1 = swift_allocObject();
    *(a1 + 16) = v57;
    if (qword_1EBBE8998 == -1)
    {
LABEL_15:
      v39 = qword_1EBBF2770;
      v38 = *algn_1EBBF2778;
      v40 = type metadata accessor for EmptyIconSourcesItem();
      v41 = swift_allocObject();
      *(v41 + 16) = 0;
      *(v41 + 24) = 0;
      v42 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);

      v43 = [v42 init];
      *(v41 + 40) = v38;
      *(v41 + 48) = v43;
      *(v41 + 32) = v39;
      *(v41 + 56) = 0;
      *(a1 + 56) = v40;
      *(a1 + 64) = sub_1BA4261F4(&qword_1EBBEA740, type metadata accessor for EmptyIconSourcesItem);
      *(a1 + 32) = v41;
      v44 = v56;
      sub_1BA4A1788();
      v45 = sub_1BA4A1748();
      v47 = v46;
      (*(v6 + 8))(v44, v5);
      sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);

      v49 = Array<A>.identifierToIndexDict()(v48);

      *(inited + 4) = 0;
      *(inited + 5) = 0;
      *(inited + 6) = a1;
      *(inited + 7) = v49;
      *(inited + 8) = v45;
      *(inited + 9) = v47;
      v36 = sub_1B9F1DAFC(inited, 1, sub_1BA426600, 0);

      return v36;
    }

LABEL_18:
    swift_once();
    goto LABEL_15;
  }

  if (!sub_1BA4A7CC8())
  {
    goto LABEL_14;
  }

  v9 = sub_1BA4A7CC8();
  if (v9)
  {
    goto LABEL_3;
  }

  v37 = a1;

  v28 = MEMORY[0x1E69E7CC0];
LABEL_10:
  sub_1B9FF6758();
  v29 = swift_initStackObject();
  *(v29 + 16) = xmmword_1BA4B5480;
  v30 = sub_1B9FE4FAC(v28);

  sub_1BA4A1788();
  v31 = sub_1BA4A1748();
  v33 = v32;
  (*(v6 + 8))(inited, v5);
  v34 = MEMORY[0x1E69E7CC0];
  *(v29 + 48) = MEMORY[0x1E69E7CC0];
  *(v29 + 56) = sub_1B9F1C5F0(v34);
  *(v29 + 32) = 0;
  *(v29 + 40) = 0;

  *(v29 + 48) = v30;
  v35 = Array<A>.identifierToIndexDict()(v30);

  *(v29 + 56) = v35;
  *(v29 + 64) = v31;
  *(v29 + 72) = v33;
  v36 = sub_1B9F1DAFC(v29, 1, sub_1BA426600, 0);

  return v36;
}

void *sub_1BA423090(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for ListLayoutConfiguration();
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EBBE8850 != -1)
  {
    v10 = v4;
    swift_once();
    v4 = v10;
  }

  v7 = __swift_project_value_buffer(v4, qword_1EBBF0B98);
  sub_1B9F37E38(v7, v6);
  v6[6] = 0x4034000000000000;
  v6[7] = 0;
  v6[8] = 0;
  v6[9] = 0;
  v8 = ListLayoutConfiguration.layout(for:)(a2);
  sub_1BA4263C4(v6, type metadata accessor for ListLayoutConfiguration);
  return v8;
}

uint64_t sub_1BA4231FC()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void *sub_1BA423308(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for ListLayoutConfiguration();
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBBE8850 != -1)
  {
    v9 = v4;
    swift_once();
    v4 = v9;
  }

  __swift_project_value_buffer(v4, qword_1EBBF0B98);
  ListLayoutConfiguration.withFooter.getter(v6);
  *(v6 + 6) = 0x4034000000000000;
  v7 = ListLayoutConfiguration.layout(for:)(a2);
  sub_1BA4263C4(v6, type metadata accessor for ListLayoutConfiguration);
  return v7;
}

id sub_1BA423408()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3D88();
  v7 = sub_1BA4A3E88();
  v8 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16[0] = v10;
    v16[1] = v2;
    *v9 = 136446210;
    swift_getMetatypeMetadata();
    v11 = sub_1BA4A6808();
    v13 = sub_1B9F0B82C(v11, v12, v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1B9F07000, v7, v8, "[%{public}s] Starting sourceListDataSource fetch", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1BFAF43A0](v10, -1, -1);
    MEMORY[0x1BFAF43A0](v9, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  v14 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI20AppSourcesDataSource_sourceListDataSource);
  [v14 setShouldFetchAppIcons_];
  [v14 setShouldFetchPurposeStrings_];
  [v14 setShouldIncludeSpecialSources_];
  [v14 setDeliverUpdates_];
  [v14 fetchSources];
  return [v14 registerObserver_];
}

void sub_1BA423660(void *a1)
{
  v3 = *v1;
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - v9;
  sub_1BA4A3D88();
  v11 = sub_1BA4A3E88();
  v12 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v33 = v7;
    v34 = v4;
    v32 = v5;
    v15 = v14;
    v35 = v14;
    v36 = v3;
    *v13 = 136446210;
    swift_getMetatypeMetadata();
    v16 = sub_1BA4A6808();
    v18 = a1;
    v19 = sub_1B9F0B82C(v16, v17, &v35);

    *(v13 + 4) = v19;
    a1 = v18;
    _os_log_impl(&dword_1B9F07000, v11, v12, "[%{public}s] Received callback for sourceListDataSource fetch", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    v20 = v15;
    v5 = v32;
    v7 = v33;
    v4 = v34;
    MEMORY[0x1BFAF43A0](v20, -1, -1);
    MEMORY[0x1BFAF43A0](v13, -1, -1);
  }

  v21 = *(v5 + 8);
  v21(v10, v4);
  v22 = [a1 sources];
  if (v22)
  {
    v23 = v22;
    sub_1BA423A04(v22);
  }

  else
  {
    _s18HealthExperienceUI0A44ChecklistStagedFeatureStatusFeedItemProviderPAAE6logger2os6LoggerVvg_0();
    v24 = sub_1BA4A3E88();
    v25 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v35 = v27;
      v36 = v3;
      *v26 = 136446210;
      swift_getMetatypeMetadata();
      v28 = sub_1BA4A6808();
      v30 = sub_1B9F0B82C(v28, v29, &v35);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_1B9F07000, v24, v25, "[%{public}s] App data sources did not get fetched", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x1BFAF43A0](v27, -1, -1);
      MEMORY[0x1BFAF43A0](v26, -1, -1);
    }

    v21(v7, v4);
  }
}

uint64_t sub_1BA423A04(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1BA4A1798();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_1BA4A3EA8();
  v96 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v98 = v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v93 - v11;
  if (sub_1BA424654(a1))
  {
    v13 = v4;
    sub_1BA4A3D88();
    v14 = sub_1BA4A3E88();
    v15 = sub_1BA4A6FC8();
    v16 = os_log_type_enabled(v14, v15);
    v103 = v2;
    if (v16)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v108[0] = v18;
      *v17 = 136446210;
      *&v104 = v13;
      swift_getMetatypeMetadata();
      v19 = sub_1BA4A6808();
      v21 = sub_1B9F0B82C(v19, v20, v108);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_1B9F07000, v14, v15, "[%{public}s] No apps to list; displaying a None cell", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x1BFAF43A0](v18, -1, -1);
      MEMORY[0x1BFAF43A0](v17, -1, -1);
    }

    (*(v96 + 8))(v12, v97);
    sub_1B9FF6758();
    inited = swift_initStackObject();
    v102 = xmmword_1BA4B5480;
    *(inited + 16) = xmmword_1BA4B5480;
    sub_1B9F1B378(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
    v23 = swift_allocObject();
    *(v23 + 16) = v102;
    if (qword_1EBBE8998 != -1)
    {
      swift_once();
    }

    v25 = qword_1EBBF2770;
    v24 = *algn_1EBBF2778;
    v26 = type metadata accessor for EmptyIconSourcesItem();
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    *(v27 + 24) = 0;
    v28 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);

    v29 = [v28 init];
    *(v27 + 40) = v24;
    *(v27 + 48) = v29;
    *(v27 + 32) = v25;
    *(v27 + 56) = 0;
    *(v23 + 56) = v26;
    *(v23 + 64) = sub_1BA4261F4(&qword_1EBBEA740, type metadata accessor for EmptyIconSourcesItem);
    *(v23 + 32) = v27;
    sub_1BA4A1788();
    v30 = sub_1BA4A1748();
    v32 = v31;
    (*(v6 + 8))(v8, v5);
    sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);

    v34 = Array<A>.identifierToIndexDict()(v33);

    *(inited + 32) = 0;
    *(inited + 40) = 0;
    *(inited + 48) = v23;
    *(inited + 56) = v34;
    *(inited + 64) = v30;
    *(inited + 72) = v32;
    sub_1BA0E7F10(inited, 1);
    swift_setDeallocating();
    return sub_1B9FF7224(inited + 32);
  }

  v36 = [a1 orderedAppSources];
  v37 = sub_1B9F0ADF8(0, &qword_1EBBE99E8);
  v38 = sub_1BA4A6B08();

  v108[0] = v38;
  *&v102 = OBJC_IVAR____TtC18HealthExperienceUI20AppSourcesDataSource_healthStore;
  v39 = [*(v2 + OBJC_IVAR____TtC18HealthExperienceUI20AppSourcesDataSource_healthStore) profileIdentifier];
  v40 = [v39 type];

  v41 = v38;
  v42 = a1;
  if (v40 == 3)
  {
    v43 = [a1 orderedUninstalledAppSources];
    v44 = sub_1BA4A6B08();

    sub_1B9FE2AD4(v44);
    v40 = 0;
    sub_1BA422A14(v108);
    v41 = v108[0];
  }

  v45 = v98;
  if (v41 >> 62)
  {
    v78 = v41;
    v46 = sub_1BA4A7CC8();
    v41 = v78;
    if (v46)
    {
      goto LABEL_11;
    }

LABEL_21:

    v40 = MEMORY[0x1E69E7CC0];
    goto LABEL_22;
  }

  v46 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v46)
  {
    goto LABEL_21;
  }

LABEL_11:
  v47 = v41;
  v107 = MEMORY[0x1E69E7CC0];
  v48 = &v107;
  sub_1BA0671C8(0, v46 & ~(v46 >> 63), 0);
  if (v46 < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v93[1] = v37;
  v94 = v42;
  v95 = v4;
  v49 = 0;
  v40 = v107;
  v50 = v47;
  v99 = v47 & 0xC000000000000001;
  v101 = v47;
  v100 = v46;
  v103 = v2;
  do
  {
    if (v99)
    {
      v51 = MEMORY[0x1BFAF2860](v49, v50);
    }

    else
    {
      v51 = *(v50 + 8 * v49 + 32);
    }

    v52 = v51;
    v53 = *(v2 + v102);
    v54 = type metadata accessor for AppSourcesItem();
    v55 = swift_allocObject();
    *(v55 + 40) = v53;
    *(v55 + 48) = v52;
    *(v55 + 32) = 0;
    v56 = v52;
    v57 = v53;
    v58 = v56;
    v59 = [v58 source];
    v60 = [v59 name];

    v61 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v63 = v62;

    *(v55 + 56) = v61;
    *(v55 + 64) = v63;
    v64 = [v58 source];
    v65 = [v64 bundleIdentifier];

    v66 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v68 = v67;

    *(v55 + 16) = v66;
    *(v55 + 24) = v68;
    v105 = v54;
    v106 = sub_1BA4261F4(&qword_1EBBEACC8, type metadata accessor for AppSourcesItem);

    *&v104 = v55;
    v107 = v40;
    v70 = v40[2];
    v69 = v40[3];
    if (v70 >= v69 >> 1)
    {
      sub_1BA0671C8((v69 > 1), v70 + 1, 1);
    }

    ++v49;
    v71 = v105;
    v72 = v106;
    v73 = __swift_mutable_project_boxed_opaque_existential_1(&v104, v105);
    v74 = MEMORY[0x1EEE9AC00](v73);
    v76 = v93 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v77 + 16))(v76, v74);
    sub_1BA42615C(v70, v76, &v107, v71, v72);
    __swift_destroy_boxed_opaque_existential_1(&v104);
    v40 = v107;
    v2 = v103;
    v50 = v101;
  }

  while (v100 != v49);

  v4 = v95;
  v45 = v98;
  v42 = v94;
LABEL_22:
  v79 = [*(v2 + v102) profileIdentifier];
  v80 = [v79 type];

  if (v80 != 3)
  {
    v81 = [v42 orderedUninstalledAppSources];
    v82 = sub_1BA4A6B08();

    v47 = type metadata accessor for UninstalledAppsItem();
    swift_allocObject();
    v48 = UninstalledAppsItem.init(uninstalledAppSources:)(v82);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_24:
      v84 = v40[2];
      v83 = v40[3];
      if (v84 >= v83 >> 1)
      {
        v40 = sub_1BA27FC24((v83 > 1), v84 + 1, 1, v40);
      }

      v105 = v47;
      v106 = sub_1BA4261F4(&qword_1EBBF2780, type metadata accessor for UninstalledAppsItem);
      *&v104 = v48;
      v40[2] = v84 + 1;
      sub_1B9F1134C(&v104, &v40[5 * v84 + 4]);
      v45 = v98;
      goto LABEL_27;
    }

LABEL_31:
    v40 = sub_1BA27FC24(0, v40[2] + 1, 1, v40);
    goto LABEL_24;
  }

LABEL_27:
  sub_1BA4A3D88();
  v85 = sub_1BA4A3E88();
  v86 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v107 = v88;
    *v87 = 136446210;
    *&v104 = v4;
    swift_getMetatypeMetadata();
    v89 = sub_1BA4A6808();
    v91 = sub_1B9F0B82C(v89, v90, &v107);

    *(v87 + 4) = v91;
    _os_log_impl(&dword_1B9F07000, v85, v86, "[%{public}s] updating data source with new items", v87, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v88);
    MEMORY[0x1BFAF43A0](v88, -1, -1);
    MEMORY[0x1BFAF43A0](v87, -1, -1);
  }

  (*(v96 + 8))(v45, v97);
  v92 = sub_1B9FE6B68(v40);

  sub_1BA0EB668(0, v92, 1);
}

BOOL sub_1BA424534(id *a1, void **a2)
{
  v2 = *a2;
  v3 = [*a1 source];
  v4 = [v3 name];

  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v5 = [v2 source];
  v6 = [v5 name];

  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1B9F252FC();
  v7 = sub_1BA4A7B78();

  return v7 == -1;
}

BOOL sub_1BA424654(void *a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI20AppSourcesDataSource_healthStore) profileIdentifier];
  v4 = [v3 type];

  v5 = [a1 orderedAppSources];
  sub_1B9F0ADF8(0, &qword_1EBBE99E8);
  v6 = sub_1BA4A6B08();

  v7 = v6 >> 62;
  if (v4 == 3)
  {
    if (v7)
    {
      v8 = sub_1BA4A7CC8();
    }

    else
    {
      v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v8)
    {
      return 0;
    }

    v11 = [a1 orderedUninstalledAppSources];
    v6 = sub_1BA4A6B08();

    if (v6 >> 62)
    {
      goto LABEL_10;
    }
  }

  else if (v7)
  {
LABEL_10:
    v10 = sub_1BA4A7CC8();
    goto LABEL_8;
  }

  v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:

  return v10 == 0;
}

uint64_t sub_1BA424814()
{
}

uint64_t AppSourcesDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t AppSourcesDataSource.__deallocating_deinit()
{
  AppSourcesDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t AppSourcesDataSource.supplementaryItem(ofKind:at:)@<X0>(uint64_t *a1@<X8>)
{
  v58 = a1;
  v2 = sub_1BA4A1798();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA121ED8();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A2888();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI20AppSourcesDataSource_healthStore) profileIdentifier];
  v15 = [v14 type];

  if (v15 == 3)
  {
    v16 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI20AppSourcesDataSource_profileInformationDataSource);
    if (v16)
    {
      v17 = *(*v16 + 760);

      v17(v18);

      v19 = v10;
      if ((*(v10 + 48))(v8, 1, v9) != 1)
      {
        v57 = v2;
        v20 = *(v10 + 32);
        v21 = v13;
        v20(v13, v8, v9);
        v22 = v19;
        v56 = v9;
        if (qword_1EBBE8990 != -1)
        {
          swift_once();
        }

        sub_1B9F1B378(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_1BA4B5480;
        v24 = sub_1BA4A2878();
        v26 = v25;
        *(v23 + 56) = MEMORY[0x1E69E6158];
        *(v23 + 64) = sub_1B9F1BE20();
        *(v23 + 32) = v24;
        *(v23 + 40) = v26;
        v27 = sub_1BA4A6768();
        v29 = v28;

        v59 = 0x74497265746F6F46;
        v60 = 0xEB000000005F6D65;
        sub_1BA4A1788();
        v30 = sub_1BA4A1748();
        v32 = v31;
        (*(v3 + 8))(v5, v57);
        MEMORY[0x1BFAF1350](v30, v32);

        v33 = v59;
        v34 = v60;
        v35 = type metadata accessor for CollectionViewGroupedFooterItem(0);
        v36 = v58;
        v58[3] = v35;
        v36[4] = sub_1BA4261F4(&qword_1EDC63278, type metadata accessor for CollectionViewGroupedFooterItem);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v36);
        v59 = type metadata accessor for CollectionViewGroupedFooterCell();
        sub_1BA0603B0();
        *boxed_opaque_existential_1 = sub_1BA4A6808();
        boxed_opaque_existential_1[1] = v38;
        v39 = boxed_opaque_existential_1 + *(v35 + 32);
        *v39 = 0u;
        *(v39 + 1) = 0u;
        v39[32] = 1;
        v40 = (boxed_opaque_existential_1 + *(v35 + 28));
        *v40 = v27;
        v40[1] = v29;
        type metadata accessor for CollectionViewGroupedFooterItem.Content(0);
        swift_storeEnumTagMultiPayload();
        boxed_opaque_existential_1[2] = v33;
        boxed_opaque_existential_1[3] = v34;
        boxed_opaque_existential_1[4] = 0;
        boxed_opaque_existential_1[5] = 0;
        return (*(v22 + 8))(v21, v56);
      }
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    sub_1BA4263C4(v8, sub_1BA121ED8);
  }

  if (qword_1EBBE8988 != -1)
  {
    swift_once();
  }

  v43 = qword_1EBBF2750;
  v42 = *algn_1EBBF2758;
  v59 = 0x74497265746F6F46;
  v60 = 0xEB000000005F6D65;

  sub_1BA4A1788();
  v44 = sub_1BA4A1748();
  v46 = v45;
  (*(v3 + 8))(v5, v2);
  MEMORY[0x1BFAF1350](v44, v46);

  v47 = v59;
  v48 = v60;
  v49 = type metadata accessor for CollectionViewGroupedFooterItem(0);
  v50 = v58;
  v58[3] = v49;
  v50[4] = sub_1BA4261F4(&qword_1EDC63278, type metadata accessor for CollectionViewGroupedFooterItem);
  v51 = __swift_allocate_boxed_opaque_existential_1(v50);
  v59 = type metadata accessor for CollectionViewGroupedFooterCell();
  sub_1BA0603B0();
  *v51 = sub_1BA4A6808();
  v51[1] = v52;
  v53 = v51 + *(v49 + 32);
  *v53 = 0u;
  *(v53 + 1) = 0u;
  v53[32] = 1;
  v54 = (v51 + *(v49 + 28));
  *v54 = v43;
  v54[1] = v42;
  type metadata accessor for CollectionViewGroupedFooterItem.Content(0);
  result = swift_storeEnumTagMultiPayload();
  v51[2] = v47;
  v51[3] = v48;
  v51[4] = 0;
  v51[5] = 0;
  return result;
}

uint64_t sub_1BA42500C()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF2750 = result;
  *algn_1EBBF2758 = v1;
  return result;
}

uint64_t sub_1BA4250D8()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF2760 = result;
  *algn_1EBBF2768 = v1;
  return result;
}

uint64_t sub_1BA4251A8()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF2770 = result;
  *algn_1EBBF2778 = v1;
  return result;
}

uint64_t sub_1BA42525C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1BA4A82B8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1B9F0ADF8(0, &qword_1EBBE99E8);
        v6 = sub_1BA4A6B98();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1BA42551C(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_1BA425370(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1BA425370(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v21 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
LABEL_5:
    v20 = a3;
    v6 = *(v21 + 8 * a3);
    v18 = v5;
    v19 = v4;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 source];
      v11 = [v10 name];

      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v12 = [v9 source];
      v13 = [v12 name];

      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      sub_1B9F252FC();
      v14 = sub_1BA4A7B78();

      if (v14 != -1)
      {
LABEL_4:
        a3 = v20 + 1;
        v4 = v19 + 8;
        v5 = v18 - 1;
        if (v20 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v21)
      {
        break;
      }

      v15 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v15;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1BA42551C(id *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a1;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_90:
    v9 = *v7;
    if (!*v7)
    {
      goto LABEL_129;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_123;
    }

    goto LABEL_92;
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v9;
    if (v9 + 1 >= v8)
    {
      v8 = v9 + 1;
    }

    else
    {
      v12 = v9;
      v13 = *v6;
      v125 = *(*v6 + 8 * (v9 + 1));
      v123 = *(v13 + 8 * v9);
      v14 = v123;
      v9 = v125;
      v15 = v14;
      v121 = sub_1BA424534(&v125, &v123);
      if (v5)
      {

        return;
      }

      v109 = v10;

      v16 = v12 + 2;
      v111 = v12;
      v117 = 8 * v12;
      v119 = v8;
      v5 = (v13 + 8 * v12 + 16);
      while (v8 != v16)
      {
        v17 = *(v5 - 1);
        v18 = *v5;
        v19 = v17;
        v20 = [v18 source];
        v10 = &selRef_didTapSave_;
        v21 = [v20 name];

        v22 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v9 = v23;

        v125 = v22;
        v126 = v9;
        v24 = [v19 source];
        v25 = [v24 name];

        v26 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v28 = v27;

        v123 = v26;
        v124 = v28;
        sub_1B9F252FC();
        v29 = sub_1BA4A7B78();

        v8 = v119;

        ++v16;
        ++v5;
        if (((v121 ^ (v29 != -1)) & 1) == 0)
        {
          v8 = v16 - 1;
          break;
        }
      }

      v7 = a1;
      v6 = a3;
      v11 = v111;
      v30 = v117;
      if (v121)
      {
        if (v8 < v111)
        {
          goto LABEL_122;
        }

        if (v111 < v8)
        {
          v31 = 8 * v8 - 8;
          v32 = v8;
          v33 = v111;
          do
          {
            if (v33 != --v32)
            {
              v34 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v35 = *(v34 + v30);
              *(v34 + v30) = *(v34 + v31);
              *(v34 + v31) = v35;
            }

            ++v33;
            v31 -= 8;
            v30 += 8;
          }

          while (v33 < v32);
        }
      }

      v10 = v109;
      v5 = 0;
    }

    v36 = v6[1];
    if (v8 < v36)
    {
      if (__OFSUB__(v8, v11))
      {
        goto LABEL_119;
      }

      if (v8 - v11 < a4)
      {
        if (__OFADD__(v11, a4))
        {
          goto LABEL_120;
        }

        if (v11 + a4 >= v36)
        {
          v9 = v6[1];
        }

        else
        {
          v9 = v11 + a4;
        }

        if (v9 < v11)
        {
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          v10 = sub_1BA442D80(v10);
LABEL_92:
          v127 = v10;
          v103 = *(v10 + 2);
          if (v103 >= 2)
          {
            do
            {
              v104 = *v6;
              if (!*v6)
              {
                goto LABEL_127;
              }

              v6 = (v103 - 1);
              v105 = *&v10[16 * v103];
              v106 = *&v10[16 * v103 + 24];
              sub_1BA425CF8((v104 + 8 * v105), (v104 + 8 * *&v10[16 * v103 + 16]), (v104 + 8 * v106), v9);
              if (v5)
              {
                break;
              }

              if (v106 < v105)
              {
                goto LABEL_116;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v10 = sub_1BA442D80(v10);
              }

              if (v103 - 2 >= *(v10 + 2))
              {
                goto LABEL_117;
              }

              v107 = &v10[16 * v103];
              *v107 = v105;
              *(v107 + 1) = v106;
              v127 = v10;
              sub_1BA442CF4(v103 - 1);
              v10 = v127;
              v103 = *(v127 + 2);
              v6 = a3;
            }

            while (v103 > 1);
          }

LABEL_100:

          return;
        }

        if (v8 != v9)
        {
          break;
        }
      }
    }

    v9 = v8;
    if (v8 < v11)
    {
      goto LABEL_118;
    }

LABEL_30:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1BA27F470(0, *(v10 + 2) + 1, 1, v10);
    }

    v38 = *(v10 + 2);
    v37 = *(v10 + 3);
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      v10 = sub_1BA27F470((v37 > 1), v38 + 1, 1, v10);
    }

    *(v10 + 2) = v39;
    v40 = &v10[16 * v38];
    *(v40 + 4) = v11;
    *(v40 + 5) = v9;
    v41 = *v7;
    if (!v41)
    {
      goto LABEL_128;
    }

    if (v38)
    {
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = *(v10 + 4);
          v44 = *(v10 + 5);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_49:
          if (v46)
          {
            goto LABEL_107;
          }

          v59 = &v10[16 * v39];
          v61 = *v59;
          v60 = *(v59 + 1);
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_110;
          }

          v65 = &v10[16 * v42 + 32];
          v67 = *v65;
          v66 = *(v65 + 1);
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_113;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_114;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_70;
          }

          goto LABEL_63;
        }

        v69 = &v10[16 * v39];
        v71 = *v69;
        v70 = *(v69 + 1);
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_63:
        if (v64)
        {
          goto LABEL_109;
        }

        v72 = &v10[16 * v42];
        v74 = *(v72 + 4);
        v73 = *(v72 + 5);
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_112;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_70:
        v80 = v42 - 1;
        if (v42 - 1 >= v39)
        {
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

        if (!*v6)
        {
          goto LABEL_125;
        }

        v81 = *&v10[16 * v80 + 32];
        v82 = *&v10[16 * v42 + 40];
        sub_1BA425CF8((*v6 + 8 * v81), (*v6 + 8 * *&v10[16 * v42 + 32]), (*v6 + 8 * v82), v41);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v82 < v81)
        {
          goto LABEL_103;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1BA442D80(v10);
        }

        if (v80 >= *(v10 + 2))
        {
          goto LABEL_104;
        }

        v83 = &v10[16 * v80];
        *(v83 + 4) = v81;
        *(v83 + 5) = v82;
        v127 = v10;
        sub_1BA442CF4(v42);
        v10 = v127;
        v39 = *(v127 + 2);
        if (v39 <= 1)
        {
          goto LABEL_3;
        }
      }

      v47 = &v10[16 * v39 + 32];
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_105;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_106;
      }

      v54 = &v10[16 * v39];
      v56 = *v54;
      v55 = *(v54 + 1);
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_108;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_111;
      }

      if (v58 >= v50)
      {
        v76 = &v10[16 * v42 + 32];
        v78 = *v76;
        v77 = *(v76 + 1);
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_115;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

LABEL_3:
    v8 = v6[1];
    v7 = a1;
    if (v9 >= v8)
    {
      goto LABEL_90;
    }
  }

  v110 = v5;
  v122 = *v6;
  v84 = *v6 + 8 * v8 - 8;
  v112 = v11;
  v85 = v11 - v8;
  v115 = v9;
LABEL_81:
  v118 = v84;
  v120 = v8;
  v86 = *(v122 + 8 * v8);
  v116 = v85;
  while (1)
  {
    v87 = *v84;
    v88 = v86;
    v89 = v87;
    v90 = [v88 source];
    v91 = [v90 name];

    v92 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v94 = v93;

    v125 = v92;
    v126 = v94;
    v95 = [v89 source];
    v96 = [v95 name];

    v97 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v99 = v98;

    v123 = v97;
    v124 = v99;
    sub_1B9F252FC();
    v100 = sub_1BA4A7B78();

    if (v100 != -1)
    {
LABEL_80:
      v8 = v120 + 1;
      v84 = v118 + 8;
      v9 = v115;
      v85 = v116 - 1;
      if ((v120 + 1) != v115)
      {
        goto LABEL_81;
      }

      v5 = v110;
      v7 = a1;
      v6 = a3;
      v11 = v112;
      if (v115 < v112)
      {
        goto LABEL_118;
      }

      goto LABEL_30;
    }

    if (!v122)
    {
      break;
    }

    v101 = *v84;
    v86 = *(v84 + 8);
    *v84 = v86;
    *(v84 + 8) = v101;
    v84 -= 8;
    if (__CFADD__(v85++, 1))
    {
      goto LABEL_80;
    }
  }

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
}