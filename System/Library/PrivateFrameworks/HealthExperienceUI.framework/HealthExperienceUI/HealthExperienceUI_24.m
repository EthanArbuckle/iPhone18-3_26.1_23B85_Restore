void sub_1BA18EF9C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B9F0D950(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1BA18F004(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1BA18F050(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA18F0B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollectionViewGroupedFooterItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BA18F124()
{
  result = qword_1EBBED2D8;
  if (!qword_1EBBED2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBED2D8);
  }

  return result;
}

void sub_1BA18F178(uint64_t *a1, void *a2)
{
  v4 = sub_1BA4A1798();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v8 = a1[1];
  v10 = a1[4];
  v42 = a1[5];
  v49 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v38 = v5;
    v39 = v4;
    v40 = v10;
    sub_1BA18EF9C(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    v41 = xmmword_1BA4B5480;
    *(inited + 16) = xmmword_1BA4B5480;
    *(inited + 56) = &type metadata for CollectionViewHeaderItem;
    *(inited + 64) = sub_1BA0473B0();
    v12 = swift_allocObject();
    *(inited + 32) = v12;
    v47 = type metadata accessor for CollectionViewHeaderCell();
    sub_1BA18F004(0, &qword_1EDC664A8, type metadata accessor for CollectionViewHeaderCell);

    *(v12 + 16) = sub_1BA4A6808();
    *(v12 + 24) = v13;
    *(v12 + 32) = v9;
    *(v12 + 40) = v8;
    *(v12 + 48) = sub_1BA18F698;
    *(v12 + 56) = 0;
    *(v12 + 64) = 1;
    *(v12 + 72) = 1;
    *(v12 + 144) = 0;
    *(v12 + 80) = 0u;
    *(v12 + 96) = 0u;
    *(v12 + 112) = 0u;
    *(v12 + 121) = 0u;
    v47 = v9;
    v48 = v8;
    v45 = 32;
    v46 = 0xE100000000000000;
    v43 = 0;
    v44 = 0xE000000000000000;
    sub_1B9F252FC();
    v14 = sub_1BA4A7B58();
    v16 = v15;
    sub_1B9F1C048(0, &qword_1EDC6E330);
    v17 = swift_allocObject();
    *(v17 + 16) = v41;
    *(v17 + 32) = v14;
    *(v17 + 40) = v16;

    v18 = sub_1BA4A6AE8();

    v19 = HKUIJoinStringsForAutomationIdentifier();

    if (!v19)
    {
      __break(1u);
      return;
    }

    v20 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v22 = v21;

    *(v12 + 152) = v20;
    *(v12 + 160) = v22;
    sub_1B9FE1E20(inited);
    v4 = v39;
    v10 = v40;
    v5 = v38;
  }

  sub_1BA18EF9C(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
  v23 = swift_initStackObject();
  v41 = xmmword_1BA4B5480;
  *(v23 + 16) = xmmword_1BA4B5480;
  *(v23 + 56) = sub_1BA4A27B8();
  *(v23 + 64) = sub_1B9F2F820(&qword_1EDC6ADA0, MEMORY[0x1E69A3DD0]);
  *(v23 + 32) = a2;
  v24 = a2;
  sub_1B9FE1E20(v23);
  v25 = v42;
  if (v42)
  {
    v26 = swift_initStackObject();
    *(v26 + 16) = v41;
    v47 = 0x74497265746F6F46;
    v48 = 0xEB000000005F6D65;

    sub_1BA4A1788();
    v27 = sub_1BA4A1748();
    v29 = v28;
    (*(v5 + 8))(v7, v4);
    MEMORY[0x1BFAF1350](v27, v29);

    v30 = v47;
    v31 = v48;
    v32 = type metadata accessor for CollectionViewGroupedFooterItem(0);
    *(v26 + 56) = v32;
    *(v26 + 64) = sub_1B9F2F820(&qword_1EDC63278, type metadata accessor for CollectionViewGroupedFooterItem);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v26 + 32));
    v47 = type metadata accessor for CollectionViewGroupedFooterCell();
    sub_1BA18F004(0, qword_1EDC63330, type metadata accessor for CollectionViewGroupedFooterCell);
    *boxed_opaque_existential_1 = sub_1BA4A6808();
    boxed_opaque_existential_1[1] = v34;
    v35 = boxed_opaque_existential_1 + *(v32 + 32);
    *v35 = 0u;
    *(v35 + 1) = 0u;
    v35[32] = 1;
    v36 = (boxed_opaque_existential_1 + *(v32 + 28));
    *v36 = v10;
    v36[1] = v25;
    type metadata accessor for CollectionViewGroupedFooterItem.Content(0);
    swift_storeEnumTagMultiPayload();
    boxed_opaque_existential_1[2] = v30;
    boxed_opaque_existential_1[3] = v31;
    boxed_opaque_existential_1[4] = 0;
    boxed_opaque_existential_1[5] = 0;
    sub_1B9FE1E20(v26);
  }
}

uint64_t sub_1BA18F6A0(uint64_t *a1, uint64_t (**a2)(uint64_t a1))
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *a2 = sub_1BA190B0C;
  a2[1] = v5;
  return result;
}

uint64_t DataTypeDetailViewControllerWithLoadAction.OnLoadAction.action.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DataTypeDetailViewControllerWithLoadAction.OnLoadAction.action.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DataTypeDetailViewControllerWithLoadAction.OnLoadAction.init(action:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1BA18F7A0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction_onLoadAction);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *a2 = *v3;
  a2[1] = v5;
  return sub_1B9F0F1B8(v4);
}

uint64_t sub_1BA18F7F8(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction_onLoadAction);
  swift_beginAccess();
  v5 = *v4;
  *v4 = v2;
  v4[1] = v3;
  sub_1B9F0F1B8(v2);
  return sub_1B9F0E310(v5);
}

uint64_t sub_1BA18F874@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction_onLoadAction);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;
  return sub_1B9F0F1B8(v4);
}

uint64_t sub_1BA18F8C8(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + OBJC_IVAR____TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction_onLoadAction);
  swift_beginAccess();
  v5 = *v4;
  *v4 = v2;
  v4[1] = v3;
  return sub_1B9F0E310(v5);
}

uint64_t sub_1BA18F984()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction_shouldRunLoadAction;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1BA18F9C8(char a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction_shouldRunLoadAction;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DataTypeDetailViewControllerWithLoadAction.OnLoadActionContext.init(sampleToShowOnLoad:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BA4A1798();
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  return sub_1BA18FE58(a1, a2, &unk_1EDC6AE50, MEMORY[0x1E69695A8]);
}

uint64_t sub_1BA18FB98(uint64_t a1, uint64_t *a2)
{
  sub_1BA18FD68(0, &qword_1EBBED2F0, type metadata accessor for DataTypeDetailViewControllerWithLoadAction.OnLoadActionContext);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1BA18FCFC(a1, &v10 - v5, &qword_1EBBED2F0, type metadata accessor for DataTypeDetailViewControllerWithLoadAction.OnLoadActionContext);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction_onLoadActionContext;
  swift_beginAccess();
  sub_1BA18FE58(v6, v7 + v8, &qword_1EBBED2F0, type metadata accessor for DataTypeDetailViewControllerWithLoadAction.OnLoadActionContext);
  return swift_endAccess();
}

uint64_t sub_1BA18FC88@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction_onLoadActionContext;
  swift_beginAccess();
  return sub_1BA18FCFC(v1 + v3, a1, &qword_1EBBED2F0, type metadata accessor for DataTypeDetailViewControllerWithLoadAction.OnLoadActionContext);
}

uint64_t sub_1BA18FCFC(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1BA18FD68(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1BA18FD68(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BA18FDDC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction_onLoadActionContext;
  swift_beginAccess();
  sub_1BA18FE58(a1, v1 + v3, &qword_1EBBED2F0, type metadata accessor for DataTypeDetailViewControllerWithLoadAction.OnLoadActionContext);
  return swift_endAccess();
}

uint64_t sub_1BA18FE58(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1BA18FD68(0, a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BA18FF24()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for DataTypeDetailViewControllerWithLoadAction(0);
  objc_msgSendSuper2(&v5, sel_viewDidLoad);
  v1 = OBJC_IVAR____TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction_shouldRunLoadAction;
  result = swift_beginAccess();
  if (v0[v1] == 1)
  {
    v3 = &v0[OBJC_IVAR____TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction_onLoadAction];
    swift_beginAccess();
    v4 = *v3;
    if (*v3)
    {
      sub_1B9F0F1B8(v4);

      sub_1B9F0E310(v4);
      v4(v0);
    }

    else
    {
      sub_1B9F0F1B8(0);
      return sub_1B9F0E310(0);
    }
  }

  return result;
}

char *DataTypeDetailViewControllerWithLoadAction.__allocating_init(dataSource:context:viewModel:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR____TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction_onLoadAction];
  *v8 = 0;
  v8[1] = 0;
  v7[OBJC_IVAR____TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction_shouldRunLoadAction] = 0;
  v9 = OBJC_IVAR____TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction_onLoadActionContext;
  v10 = type metadata accessor for DataTypeDetailViewControllerWithLoadAction.OnLoadActionContext(0);
  (*(*(v10 - 8) + 56))(&v7[v9], 1, 1, v10);
  sub_1BA114D9C(a2, v14);
  sub_1B9F0A534(a3, v13);
  v11 = sub_1BA32AC20(a1, v14, v13);

  __swift_destroy_boxed_opaque_existential_1(a3);
  sub_1BA114E30(a2);
  return v11;
}

char *DataTypeDetailViewControllerWithLoadAction.init(dataSource:context:viewModel:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (v3 + OBJC_IVAR____TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction_onLoadAction);
  *v7 = 0;
  v7[1] = 0;
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction_shouldRunLoadAction) = 0;
  v8 = OBJC_IVAR____TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction_onLoadActionContext;
  v9 = type metadata accessor for DataTypeDetailViewControllerWithLoadAction.OnLoadActionContext(0);
  (*(*(v9 - 8) + 56))(v3 + v8, 1, 1, v9);
  sub_1BA114D9C(a2, v13);
  sub_1B9F0A534(a3, v12);
  v10 = sub_1BA32AC20(a1, v13, v12);

  __swift_destroy_boxed_opaque_existential_1(a3);
  sub_1BA114E30(a2);
  return v10;
}

uint64_t DataTypeDetailViewControllerWithLoadAction.__allocating_init(dataSource:context:hkType:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR____TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction_onLoadAction];
  *v8 = 0;
  v8[1] = 0;
  v7[OBJC_IVAR____TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction_shouldRunLoadAction] = 0;
  v9 = OBJC_IVAR____TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction_onLoadActionContext;
  v10 = type metadata accessor for DataTypeDetailViewControllerWithLoadAction.OnLoadActionContext(0);
  (*(*(v10 - 8) + 56))(&v7[v9], 1, 1, v10);
  sub_1BA114D9C(a2, v14);
  sub_1BA32A8A0(a1, v14, a3);
  v12 = v11;

  sub_1BA114E30(a2);
  return v12;
}

uint64_t DataTypeDetailViewControllerWithLoadAction.init(dataSource:context:hkType:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = (v3 + OBJC_IVAR____TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction_onLoadAction);
  *v7 = 0;
  v7[1] = 0;
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction_shouldRunLoadAction) = 0;
  v8 = OBJC_IVAR____TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction_onLoadActionContext;
  v9 = type metadata accessor for DataTypeDetailViewControllerWithLoadAction.OnLoadActionContext(0);
  (*(*(v9 - 8) + 56))(v3 + v8, 1, 1, v9);
  sub_1BA114D9C(a2, v13);
  sub_1BA32A8A0(a1, v13, a3);
  v11 = v10;

  sub_1BA114E30(a2);
  return v11;
}

id DataTypeDetailViewControllerWithLoadAction.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DataTypeDetailViewControllerWithLoadAction.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction_onLoadAction];
  *v3 = 0;
  v3[1] = 0;
  v1[OBJC_IVAR____TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction_shouldRunLoadAction] = 0;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction_onLoadActionContext;
  v5 = type metadata accessor for DataTypeDetailViewControllerWithLoadAction.OnLoadActionContext(0);
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  v8.receiver = v1;
  v8.super_class = type metadata accessor for DataTypeDetailViewControllerWithLoadAction(0);
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

uint64_t sub_1BA19060C()
{
  sub_1B9F0E310(*(v0 + OBJC_IVAR____TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction_onLoadAction));
  v1 = v0 + OBJC_IVAR____TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction_onLoadActionContext;

  return sub_1BA190A94(v1);
}

id DataTypeDetailViewControllerWithLoadAction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DataTypeDetailViewControllerWithLoadAction(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BA1906E0()
{
  sub_1BA18FD68(319, &qword_1EBBED2F0, type metadata accessor for DataTypeDetailViewControllerWithLoadAction.OnLoadActionContext);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1BA190A0C()
{
  sub_1BA18FD68(319, &unk_1EDC6AE50, MEMORY[0x1E69695A8]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1BA190A94(uint64_t a1)
{
  sub_1BA18FD68(0, &qword_1EBBED2F0, type metadata accessor for DataTypeDetailViewControllerWithLoadAction.OnLoadActionContext);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double PDFAsyncConfigurationDataSource.shareButtonBehavior.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1BA190CA4()
{
  v1 = [v0 description];
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  v2 = sub_1BA4A6988();

  v3 = [v0 description];
  v4 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v6 = v5;

  if (v2)
  {
    v7 = sub_1BA4A68D8();
    v8 = v4;
LABEL_5:
    v13 = sub_1BA190E40(v7, v8, v6);
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v20 = MEMORY[0x1BFAF12A0](v13, v15, v17, v19);

    return v20;
  }

  v9 = sub_1BA4A6988();

  v10 = [v0 description];
  v11 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v6 = v12;

  if (v9)
  {
    v7 = sub_1BA4A68D8();
    v8 = v11;
    goto LABEL_5;
  }

  return v11;
}

unint64_t sub_1BA190E40(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_1BA4A68F8();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_1BA4A69E8();
}

uint64_t sub_1BA190EF0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v95 = a4;
  v94 = a3;
  v91 = a2;
  v5 = type metadata accessor for SummarySharingOnboardingError();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v90 = (&v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v89 = sub_1BA4A1798();
  v88 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v86 = v7;
  v87 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A3158();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v96 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v92 = &v85 - v12;
  sub_1B9FD7D5C();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1E69A33B0];
  sub_1BA198D90(0, &qword_1EBBE97C8, MEMORY[0x1E69A33B0]);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v93 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v100 = &v85 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v85 - v23;
  sub_1BA198D90(0, &qword_1EBBE97F8, MEMORY[0x1E69A33C8]);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v97 = &v85 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v85 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v85 - v31;
  sub_1BA19A324(a1, v24, &qword_1EBBE97C8, v17);
  v33 = sub_1BA4A3118();
  v34 = *(v33 - 8);
  v104 = *(v34 + 48);
  v105 = v34 + 48;
  v35 = v104(v24, 1, v33);
  v102 = a1;
  v98 = v34;
  v99 = v33;
  if (v35 == 1)
  {
    sub_1BA19A390(v24, &qword_1EBBE97C8, MEMORY[0x1E69A33B0]);
    v36 = 1;
  }

  else
  {
    sub_1BA4A30F8();
    (*(v34 + 8))(v24, v33);
    v36 = 0;
  }

  v37 = *(v9 + 56);
  v37(v32, v36, 1, v8);
  (*(v9 + 104))(v29, *MEMORY[0x1E69A33C0], v8);
  v37(v29, 0, 1, v8);
  v38 = *(v14 + 48);
  v39 = MEMORY[0x1E69A33C8];
  sub_1BA19A324(v32, v16, &qword_1EBBE97F8, MEMORY[0x1E69A33C8]);
  sub_1BA19A324(v29, &v16[v38], &qword_1EBBE97F8, v39);
  v101 = v9;
  v40 = *(v9 + 48);
  v41 = v40(v16, 1, v8);
  v42 = v97;
  if (v41 == 1)
  {
    v43 = MEMORY[0x1E69A33C8];
    sub_1BA19A390(v29, &qword_1EBBE97F8, MEMORY[0x1E69A33C8]);
    sub_1BA19A390(v32, &qword_1EBBE97F8, v43);
    v44 = v40(&v16[v38], 1, v8);
    v45 = v102;
    if (v44 == 1)
    {
      sub_1BA19A390(v16, &qword_1EBBE97F8, MEMORY[0x1E69A33C8]);
      v46 = 0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  sub_1BA19A324(v16, v97, &qword_1EBBE97F8, MEMORY[0x1E69A33C8]);
  if (v40(&v16[v38], 1, v8) == 1)
  {
    v47 = MEMORY[0x1E69A33C8];
    sub_1BA19A390(v29, &qword_1EBBE97F8, MEMORY[0x1E69A33C8]);
    sub_1BA19A390(v32, &qword_1EBBE97F8, v47);
    (*(v101 + 8))(v42, v8);
    v45 = v102;
LABEL_9:
    sub_1BA19A3F0(v16, sub_1B9FD7D5C);
    v46 = 1;
    goto LABEL_11;
  }

  v48 = v101;
  v49 = v92;
  (*(v101 + 32))(v92, &v16[v38], v8);
  sub_1BA19A450(&qword_1EBBE9800, MEMORY[0x1E69A33C8]);
  v50 = sub_1BA4A6728();
  v51 = *(v48 + 8);
  v51(v49, v8);
  v52 = MEMORY[0x1E69A33C8];
  sub_1BA19A390(v29, &qword_1EBBE97F8, MEMORY[0x1E69A33C8]);
  sub_1BA19A390(v32, &qword_1EBBE97F8, v52);
  v51(v42, v8);
  sub_1BA19A390(v16, &qword_1EBBE97F8, v52);
  v46 = v50 ^ 1;
  v45 = v102;
LABEL_11:
  v54 = v99;
  v53 = v100;
  v55 = v98;
  v56 = v103;
  [v103 setUserInteractionEnabled_];
  sub_1BA19A324(v45, v53, &qword_1EBBE97C8, MEMORY[0x1E69A33B0]);
  if (v104(v53, 1, v54) == 1)
  {
    return sub_1BA19A390(v53, &qword_1EBBE97C8, MEMORY[0x1E69A33B0]);
  }

  v58 = v96;
  sub_1BA4A30F8();
  v59 = *(v55 + 8);
  v59(v53, v54);
  v60 = v101;
  v61 = (*(v101 + 88))(v58, v8);
  v62 = *MEMORY[0x1E69A33B8];
  result = (*(v60 + 8))(v58, v8);
  if (v61 == v62)
  {
    v63 = v45;
    v64 = v93;
    sub_1BA19A324(v63, v93, &qword_1EBBE97C8, MEMORY[0x1E69A33B0]);
    if (v104(v64, 1, v54) == 1)
    {
      sub_1BA19A390(v64, &qword_1EBBE97C8, MEMORY[0x1E69A33B0]);
LABEL_21:
      v82 = [v56 viewController];
      __swift_project_boxed_opaque_existential_1(v91, v91[3]);
      v83 = sub_1BA4A2AB8();
      sub_1BA19931C(v82, v83, v84, v94, v95);
    }

    v65 = sub_1BA4A3108();
    v67 = v66;
    v59(v64, v54);
    if (v67)
    {
      goto LABEL_21;
    }

    v68 = [v56 viewController];
    if (!v68)
    {
      goto LABEL_21;
    }

    v69 = v68;
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    sub_1BA4A1318();
    v70 = v88;
    v71 = v87;
    v72 = v89;
    (*(v88 + 16))(v87, v94, v89);
    v73 = (*(v70 + 80) + 16) & ~*(v70 + 80);
    v74 = (v86 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
    v75 = swift_allocObject();
    (*(v70 + 32))(&v75[v73], v71, v72);
    *&v75[v74] = v95;
    v76 = sub_1BA4A6758();
    aBlock[4] = sub_1BA19A3EC;
    aBlock[5] = v75;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BA0B06D4;
    aBlock[3] = &block_descriptor_40;
    v77 = _Block_copy(aBlock);

    v78 = [objc_opt_self() actionWithTitle:v76 style:0 handler:v77];
    _Block_release(v77);

    type metadata accessor for HKError(0);
    v106 = v65;
    sub_1BA198DE4(MEMORY[0x1E69E7CC0]);
    sub_1BA19A450(&qword_1EBBE9090, type metadata accessor for HKError);
    sub_1BA4A1478();
    v79 = v90;
    SummarySharingOnboardingError.init(error:)(aBlock[0], v90);
    sub_1B9F109F8();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BA4B5470;
    *(inited + 32) = v78;
    v81 = v78;
    sub_1BA0C6BA4(v69, 0, 0, 0, 0, inited, 0, 0);

    swift_setDeallocating();
    swift_arrayDestroy();
    return sub_1BA19A3F0(v79, type metadata accessor for SummarySharingOnboardingError);
  }

  return result;
}

id sub_1BA191BB0()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___gradientView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___gradientView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___gradientView);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell_hasWatchIcon);
    v5 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell_hasDisclosureIndicator);
    v6 = objc_allocWithZone(type metadata accessor for ProfileGradientViewWithImage());
    v7 = v5;
    v8 = v0;
    v9 = sub_1BA19577C(v4, v7);
    [v9 setTranslatesAutoresizingMaskIntoConstraints_];
    v10 = *(v0 + v1);
    *(v8 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

id sub_1BA191C58()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___nameHeaderView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___nameHeaderView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___nameHeaderView);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell_hasDisclosureIndicator);
    v5 = objc_allocWithZone(type metadata accessor for ProfileSharingWithYouHeaderView());
    v6 = v0;
    v7 = sub_1BA197378(v4, 0);
    [v7 setTranslatesAutoresizingMaskIntoConstraints_];
    LODWORD(v8) = 1148846080;
    [v7 setContentCompressionResistancePriority:1 forAxis:v8];
    v9 = *(v0 + v1);
    *(v6 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_1BA191D10()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___tileContentView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___tileContentView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___tileContentView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    LODWORD(v5) = 1148846080;
    [v4 setContentCompressionResistancePriority:1 forAxis:v5];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1BA191DB4()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___spinner;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___spinner);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___spinner);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void *sub_1BA191E80(char a1, char a2)
{
  v5 = &v2[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell_accessibilityIdentiferBase];
  v21 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v22 = v6;

  MEMORY[0x1BFAF1350](0x676E69726168532ELL, 0xE800000000000000);

  MEMORY[0x1BFAF1350](0x6E696D6F636E492ELL, 0xE900000000000067);

  MEMORY[0x1BFAF1350](0x6E6F737265502ELL, 0xE700000000000000);

  v7 = v22;
  *v5 = v21;
  v5[1] = v7;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___gradientView] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___nameHeaderView] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___tileContentView] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___spinner] = 0;
  v8 = &v2[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell_item];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___currentConstraints] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell_anyCancellable] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell_currentSpinnerConstraints] = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___spinnerConstraints] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___hiddenSpinnerConstraints] = 0;
  v2[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell_hasWatchIcon] = a1;
  v2[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell_hasDisclosureIndicator] = a2;
  v20.receiver = v2;
  v20.super_class = type metadata accessor for ProfileSharingWithYouTileCell();
  v9 = objc_msgSendSuper2(&v20, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v10 = *MEMORY[0x1E69796E8];
  v11 = v9;
  v12 = [v11 layer];
  [v12 setCornerCurve_];

  v13 = [v11 layer];
  [v13 setCornerRadius_];

  v14 = [v11 layer];
  [v14 setMaskedCorners_];

  [v11 setClipsToBounds_];
  v15 = [v11 contentView];
  v16 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  [v15 setBackgroundColor_];

  v17 = MEMORY[0x1E69E7D40];
  v18 = (*((*MEMORY[0x1E69E7D40] & *v11) + 0x188))();
  (*((*v17 & *v11) + 0x190))(v18);

  return v11;
}

void *sub_1BA1921E8(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell_accessibilityIdentiferBase];
  v25 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v26 = v10;

  MEMORY[0x1BFAF1350](0x676E69726168532ELL, 0xE800000000000000);

  MEMORY[0x1BFAF1350](0x6E696D6F636E492ELL, 0xE900000000000067);

  MEMORY[0x1BFAF1350](0x6E6F737265502ELL, 0xE700000000000000);

  v11 = v26;
  *v9 = v25;
  v9[1] = v11;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___gradientView] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___nameHeaderView] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___tileContentView] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___spinner] = 0;
  v12 = &v4[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell_item];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 4) = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___currentConstraints] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell_anyCancellable] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell_currentSpinnerConstraints] = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___spinnerConstraints] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___hiddenSpinnerConstraints] = 0;
  v4[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell_hasWatchIcon] = 0;
  v4[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell_hasDisclosureIndicator] = 1;
  v24.receiver = v4;
  v24.super_class = type metadata accessor for ProfileSharingWithYouTileCell();
  v13 = objc_msgSendSuper2(&v24, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = *MEMORY[0x1E69796E8];
  v15 = v13;
  v16 = [v15 layer];
  [v16 setCornerCurve_];

  v17 = [v15 layer];
  [v17 setCornerRadius_];

  v18 = [v15 layer];
  [v18 setMaskedCorners_];

  [v15 setClipsToBounds_];
  v19 = [v15 contentView];
  v20 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  [v19 setBackgroundColor_];

  v21 = MEMORY[0x1E69E7D40];
  v22 = (*((*MEMORY[0x1E69E7D40] & *v15) + 0x188))();
  (*((*v21 & *v15) + 0x190))(v22);

  return v15;
}

void sub_1BA1925B0()
{
  v1 = [v0 contentView];
  v2 = sub_1BA191BB0();
  [v1 addSubview_];

  v3 = [v0 contentView];
  v4 = sub_1BA191C58();
  [v3 addSubview_];

  v5 = [v0 contentView];
  v6 = sub_1BA191D10();
  [v5 addSubview_];

  v7 = [v0 contentView];
  v8 = sub_1BA191DB4();
  [v7 addSubview_];
}

id sub_1BA1926DC()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  v3 = sub_1BA192798();
  sub_1BA191E60(v3);
  v4 = sub_1BA1946B4();
  sub_1BA19452C(v4);
  v5 = sub_1BA191DB4();
  [v5 setHidden_];

  v6 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___spinner];

  return [v6 stopAnimating];
}

uint64_t sub_1BA192798()
{
  v1 = sub_1BA4A7518();
  sub_1B9F109F8();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BA4B79D0;
  v3 = sub_1BA191BB0();
  v4 = [v3 leadingAnchor];

  v5 = [v0 contentView];
  v6 = [v5 leadingAnchor];

  v7 = [v4 constraintEqualToAnchor_];
  *(v2 + 32) = v7;
  v8 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___gradientView;
  v9 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___gradientView] topAnchor];
  v10 = [v0 contentView];
  v11 = [v10 topAnchor];

  v12 = [v9 constraintEqualToAnchor_];
  *(v2 + 40) = v12;
  v13 = *&v0[v8];
  if (v1)
  {
    v14 = [v13 bottomAnchor];
    v15 = [v0 contentView];
    v16 = [v15 bottomAnchor];

    v17 = [v14 constraintEqualToAnchor_];
    *(v2 + 48) = v17;
    v18 = [*&v0[v8] widthAnchor];
    v19 = [v18 constraintEqualToConstant_];

    *(v2 + 56) = v19;
    v20 = sub_1BA191C58();
    v21 = [v20 leadingAnchor];

    v22 = [*&v0[v8] trailingAnchor];
    v23 = [v21 constraintEqualToAnchor:v22 constant:16.0];

    *(v2 + 64) = v23;
    v24 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___nameHeaderView;
    v25 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___nameHeaderView] topAnchor];
    v26 = [v0 contentView];
    v27 = [v26 topAnchor];

    v28 = [v25 constraintEqualToAnchor:v27 constant:16.0];
    *(v2 + 72) = v28;
    v29 = sub_1BA191D10();
    v30 = [v29 leadingAnchor];

    v31 = [*&v0[v8] trailingAnchor];
    v32 = [v30 constraintEqualToAnchor:v31 constant:16.0];

    *(v2 + 80) = v32;
    v33 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___tileContentView;
    v34 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___tileContentView] topAnchor];
    v35 = [*&v0[v24] bottomAnchor];
    v36 = [v34 constraintEqualToAnchor:v35 constant:4.0];

    *(v2 + 88) = v36;
    v37 = [*&v0[v33] bottomAnchor];
    v38 = [v0 contentView];
    v39 = [v38 bottomAnchor];

    v40 = [v37 constraintEqualToAnchor:v39 constant:-16.0];
    *(v2 + 96) = v40;
    v41 = sub_1BA191DB4();
    v42 = [v41 &selRef_cloudSyncObserverSyncCompleted_ + 4];

    v43 = [v0 contentView];
    v44 = [v43 &selRef_cloudSyncObserverSyncCompleted_ + 4];

    v45 = &selRef_didTapSave_;
    v46 = [v42 constraintEqualToAnchor:v44 constant:-16.0];

    *(v2 + 104) = v46;
    v47 = &v0[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___spinner];
    v48 = &selRef_centerYAnchor;
  }

  else
  {
    v49 = [v13 trailingAnchor];
    v50 = [v0 contentView];
    v51 = [v50 &selRef_cloudSyncObserverSyncCompleted_ + 4];

    v52 = [v49 constraintEqualToAnchor_];
    *(v2 + 48) = v52;
    v53 = sub_1BA191C58();
    v54 = [v53 leadingAnchor];

    v55 = [v0 &selRef_fetchSources];
    v56 = [v55 leadingAnchor];

    v57 = [v54 constraintEqualToAnchor:v56 constant:16.0];
    *(v2 + 56) = v57;
    v58 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___nameHeaderView;
    v59 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___nameHeaderView] topAnchor];
    v48 = &selRef_bottomAnchor;
    v60 = [*&v0[v8] bottomAnchor];
    v61 = [v59 constraintEqualToAnchor_];

    *(v2 + 64) = v61;
    v62 = sub_1BA191D10();
    v63 = [v62 leadingAnchor];

    v64 = [v0 contentView];
    v65 = [v64 leadingAnchor];

    v66 = [v63 constraintEqualToAnchor:v65 constant:16.0];
    *(v2 + 72) = v66;
    v67 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___tileContentView;
    v68 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___tileContentView] topAnchor];
    v69 = [*&v0[v58] bottomAnchor];
    v70 = [v68 constraintEqualToAnchor:v69 constant:4.0];

    *(v2 + 80) = v70;
    v71 = [*&v0[v67] bottomAnchor];
    v72 = [v0 contentView];
    v73 = [v72 bottomAnchor];

    v74 = [v71 constraintEqualToAnchor:v73 constant:-16.0];
    *(v2 + 88) = v74;
    v75 = sub_1BA191DB4();
    v76 = [v75 trailingAnchor];

    v77 = [v0 contentView];
    v78 = [v77 trailingAnchor];

    v45 = &selRef_didTapSave_;
    v79 = [v76 constraintEqualToAnchor:v78 constant:-16.0];

    *(v2 + 96) = v79;
    v47 = &v0[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___spinner];
    v80 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___spinner] topAnchor];
    v81 = [*&v0[v8] bottomAnchor];
    v82 = [v80 constraintEqualToAnchor_];

    *(v2 + 104) = v82;
  }

  v83 = [*v47 *v48];
  v84 = [v0 contentView];
  v85 = [v84 *v48];

  v86 = [v83 v45[269]];
  *(v2 + 112) = v86;
  return v2;
}

uint64_t sub_1BA193198()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v80 - v8;
  v10 = sub_1BA4A1798();
  v87 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v86 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA198D90(0, &qword_1EBBE97C8, MEMORY[0x1E69A33B0]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v80 - v13;
  sub_1BA198D90(0, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v80 - v16;
  v18 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell_item;
  swift_beginAccess();
  sub_1B9F68124(&v1[v18], v90);
  if (v90[3])
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0);
    v85 = sub_1B9F0D950(0, &qword_1EBBED460);
    if (swift_dynamicCast())
    {
      if (*(&v92 + 1))
      {
        v83 = v10;
        v81 = v9;
        v84 = ObjectType;
        v82 = v3;
        sub_1B9F1134C(&v91, v94);
        v19 = sub_1BA191C58();
        v20 = sub_1BA19653C();

        v21 = v95;
        v22 = v96;
        __swift_project_boxed_opaque_existential_1(v94, v95);
        (*(v22 + 72))(&v91, v21, v22);
        __swift_project_boxed_opaque_existential_1(&v91, *(&v92 + 1));
        sub_1BA4A2AF8();
        v23 = sub_1BA4A6758();

        __swift_destroy_boxed_opaque_existential_1(&v91);
        [v20 setText_];

        v24 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___nameHeaderView];
        v26 = v95;
        v25 = v96;
        __swift_project_boxed_opaque_existential_1(v94, v95);
        v27 = *(v25 + 80);
        v28 = v24;
        v27(v26, v25);
        v29 = sub_1BA4A1728();
        v30 = *(v29 - 8);
        v31 = 0;
        if ((*(v30 + 48))(v17, 1, v29) != 1)
        {
          v31 = sub_1BA4A16B8();
          (*(v30 + 8))(v17, v29);
        }

        if (qword_1EDC6E3F8 != -1)
        {
          swift_once();
        }

        v32 = HKMostRecentSampleEndDateText();

        if (v32)
        {
          v33 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v35 = v34;
        }

        else
        {
          v33 = 0;
          v35 = 0;
        }

        v44 = &v28[OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView_lastUpdatedTimestampString];
        *v44 = v33;
        v44[1] = v35;

        sub_1BA197284();

        v45 = sub_1BA191BB0();
        v46 = *&v45[OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_profileImageView];

        v47 = v95;
        v48 = v96;
        __swift_project_boxed_opaque_existential_1(v94, v95);
        (*(v48 + 72))(&v91, v47, v48);
        __swift_project_boxed_opaque_existential_1(&v91, *(&v92 + 1));
        v49 = sub_1BA4A2AC8();
        if (!v49)
        {
          if (qword_1EBBE8810 != -1)
          {
            swift_once();
          }

          v49 = qword_1EBC098A8;
        }

        v50 = v49;
        __swift_destroy_boxed_opaque_existential_1(&v91);
        [v46 setImage_];

        v51 = v95;
        v52 = v96;
        __swift_project_boxed_opaque_existential_1(v94, v95);
        v53 = (*(v52 + 56))(v51, v52);
        v54 = OBJC_IVAR____TtC18HealthExperienceUI24ProfileGradientsProvider_colors;
        swift_beginAccess();
        v55 = *&v53[v54];

        *&v91 = v55;
        *(swift_allocObject() + 16) = v1;
        sub_1B9F10B50();
        sub_1BA19A450(&qword_1EDC5F468, sub_1B9F10B50);
        v56 = v1;
        v57 = sub_1BA4A5148();

        *&v56[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell_anyCancellable] = v57;

        sub_1B9F0A534(v94, v90);
        sub_1B9F0D950(0, &qword_1EBBED468);
        if (swift_dynamicCast())
        {
          sub_1B9F1134C(v88, &v91);
          v58 = v95;
          v59 = v96;
          __swift_project_boxed_opaque_existential_1(v94, v95);
          v60 = (*(v59 + 64))(v58, v59);
          if (!v60)
          {
            v72 = v81;
            sub_1BA4A3DD8();
            v73 = sub_1BA4A3E88();
            v74 = sub_1BA4A6FA8();
            if (os_log_type_enabled(v73, v74))
            {
              v75 = swift_slowAlloc();
              v76 = swift_slowAlloc();
              v90[0] = v76;
              *v75 = 136315138;
              v77 = sub_1BA4A85D8();
              v79 = sub_1B9F0B82C(v77, v78, v90);

              *(v75 + 4) = v79;
              _os_log_impl(&dword_1B9F07000, v73, v74, "[%s] could not find associated profileIdentifier to update cell with", v75, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v76);
              MEMORY[0x1BFAF43A0](v76, -1, -1);
              MEMORY[0x1BFAF43A0](v75, -1, -1);
            }

            (*(v4 + 8))(v72, v82);
            __swift_destroy_boxed_opaque_existential_1(&v91);
            return __swift_destroy_boxed_opaque_existential_1(v94);
          }

          v61 = v60;
          __swift_project_boxed_opaque_existential_1(&v91, *(&v92 + 1));
          sub_1BA4A3438();
          v62 = v95;
          v63 = v96;
          __swift_project_boxed_opaque_existential_1(v94, v95);
          (*(v63 + 72))(v90, v62, v63);
          v64 = [v61 identifier];
          v65 = v86;
          sub_1BA4A1778();

          sub_1BA190EF0(v14, v90, v65, [v61 type]);
          (*(v87 + 8))(v65, v83);
          __swift_destroy_boxed_opaque_existential_1(v90);
          v66 = MEMORY[0x1E69A33B0];
          sub_1BA19A390(v14, &qword_1EBBE97C8, MEMORY[0x1E69A33B0]);
          v67 = v61;
          v68 = v95;
          v69 = v96;
          __swift_project_boxed_opaque_existential_1(v94, v95);
          __swift_project_boxed_opaque_existential_1(&v91, *(&v92 + 1));
          sub_1BA4A3438();
          sub_1BA1847C8(v14, v68, *(v69 + 16), v90);
          sub_1BA19A390(v14, &qword_1EBBE97C8, v66);
          sub_1BA1942D8(v90);

          __swift_destroy_boxed_opaque_existential_1(&v91);
        }

        else
        {
          v89 = 0;
          memset(v88, 0, sizeof(v88));
          sub_1B9F43F68(v88, &qword_1EBBED470, &qword_1EBBED468, MEMORY[0x1E69A3460]);
          v70 = v95;
          v71 = v96;
          __swift_project_boxed_opaque_existential_1(v94, v95);
          (*(*(v71 + 16) + 8))(&v91, v70);
          sub_1BA1942D8(&v91);
        }

        sub_1BA193DE8();
        return __swift_destroy_boxed_opaque_existential_1(v94);
      }
    }

    else
    {
      v93 = 0;
      v91 = 0u;
      v92 = 0u;
    }
  }

  else
  {
    sub_1B9F43F68(v90, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    v91 = 0u;
    v92 = 0u;
    v93 = 0;
  }

  sub_1B9F43F68(&v91, &qword_1EBBED458, &qword_1EBBED460, &protocol descriptor for ProfileSharingWithYouTileItem);
  sub_1BA4A3E28();
  v36 = sub_1BA4A3E88();
  v37 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v94[0] = v39;
    *v38 = 136315138;
    v40 = sub_1BA4A85D8();
    v42 = sub_1B9F0B82C(v40, v41, v94);

    *(v38 + 4) = v42;
    _os_log_impl(&dword_1B9F07000, v36, v37, "[%s] item is not an ProfileSharingWithYouTileItem", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x1BFAF43A0](v39, -1, -1);
    MEMORY[0x1BFAF43A0](v38, -1, -1);
  }

  return (*(v4 + 8))(v6, v3);
}

void sub_1BA193D7C(unint64_t *a1)
{
  v1 = *a1;
  v2 = sub_1BA191BB0();
  v3 = *&v2[OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_gradientView];

  sub_1B9F45E40(v1);
}

void sub_1BA193DE8()
{
  v1 = v0;
  v2 = sub_1BA4A6758();
  [v1 setAccessibilityIdentifier_];

  MEMORY[0x1BFAF1350](0xD000000000000014, 0x80000001BA4F0990);
  v3 = sub_1BA191BB0();
  v4 = sub_1BA4A6758();
  [v3 setAccessibilityIdentifier_];

  v5 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___gradientView;
  v6 = *(*&v1[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___gradientView] + OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_gradientView);

  MEMORY[0x1BFAF1350](0x6E6569646172472ELL, 0xE900000000000074);
  v7 = sub_1BA4A6758();

  [v6 setAccessibilityIdentifier_];

  v8 = *(*&v1[v5] + OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_profileImageView);

  v9 = v8;
  MEMORY[0x1BFAF1350](0x6567616D492ELL, 0xE600000000000000);
  v10 = sub_1BA4A6758();

  [v9 setAccessibilityIdentifier_];

  v11 = *&v1[v5];
  v12 = sub_1BA194F80();

  MEMORY[0x1BFAF1350](0x6F7373656363412ELL, 0xEA00000000007972);

  v13 = sub_1BA4A6758();

  [v12 setAccessibilityIdentifier_];

  MEMORY[0x1BFAF1350](0x7265646165482ELL, 0xE700000000000000);
  v14 = sub_1BA191C58();
  v15 = sub_1BA4A6758();
  [v14 setAccessibilityIdentifier_];

  v16 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___nameHeaderView;
  v17 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___nameHeaderView];
  v18 = sub_1BA19653C();

  MEMORY[0x1BFAF1350](0x656D614E2ELL, 0xE500000000000000);
  v19 = sub_1BA4A6758();

  [v18 setAccessibilityIdentifier_];

  v20 = *&v1[v16];
  v21 = sub_1BA1969D8();

  MEMORY[0x1BFAF1350](0xD000000000000015, 0x80000001BA4F09B0);
  v22 = sub_1BA4A6758();

  [v21 setAccessibilityIdentifier_];

  v23 = *&v1[v16];
  v24 = sub_1BA196E44();

  MEMORY[0x1BFAF1350](0x6F7373656363412ELL, 0xEA00000000007972);

  v25 = sub_1BA4A6758();

  [v24 setAccessibilityIdentifier_];

  v26 = sub_1BA191D10();

  MEMORY[0x1BFAF1350](0x746E65746E6F432ELL, 0xEC00000077656956);
  v27 = sub_1BA4A6758();

  [v26 setAccessibilityIdentifier_];

  v28 = sub_1BA191DB4();

  MEMORY[0x1BFAF1350](0x72656E6E6970532ELL, 0xE800000000000000);
  v29 = sub_1BA4A6758();

  [v28 setAccessibilityIdentifier_];
}

id sub_1BA1942D8(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = sub_1BA191C58();
  v4[OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView_isDisabled] = v3 != 2;
  sub_1BA197188();

  v5 = sub_1BA191BB0();
  v6 = OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_isDisabled;
  v5[OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_isDisabled] = v3 != 2;
  v7 = sub_1BA194F80();
  v8 = [v5 traitCollection];
  v9 = [v8 preferredContentSizeCategory];

  LOBYTE(v8) = sub_1BA4A7518();
  if ((v8 & 1) != 0 || (v5[OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_hasDisclosureIndicator] & 1) == 0)
  {
    v10 = 1;
  }

  else
  {
    v10 = v5[v6];
  }

  [v7 setHidden_];

  [v2 setUserInteractionEnabled_];
  v11 = [v2 contentView];
  v12 = v11;
  if (v3)
  {
    v13 = 0.75;
  }

  else
  {
    v13 = 1.0;
  }

  v14 = (v3 & 1) == 0 && v3 != 2;
  [v11 setAlpha_];

  v15 = [v2 contentView];
  v16 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  v17 = [v16 colorWithAlphaComponent_];

  [v15 setBackgroundColor_];
  if (v14)
  {
    v18 = sub_1BA194538();
    v19 = &selRef_startAnimating;
  }

  else
  {
    v18 = sub_1BA1946B4();
    v19 = &selRef_stopAnimating;
  }

  sub_1BA19452C(v18);
  v20 = sub_1BA191DB4();
  [v20 setHidden_];

  v21 = *&v2[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___spinner];
  v22 = *v19;

  return [v21 v22];
}

uint64_t sub_1BA194538()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___spinnerConstraints;
  if (*(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___spinnerConstraints))
  {
    v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___spinnerConstraints);
  }

  else
  {
    sub_1B9F109F8();
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1BA4B7510;
    v3 = sub_1BA191C58();
    v4 = [v3 trailingAnchor];

    v5 = sub_1BA191DB4();
    v6 = [v5 leadingAnchor];

    v7 = [v4 constraintEqualToAnchor:v6 constant:-12.0];
    *(v2 + 32) = v7;
    v8 = sub_1BA191D10();
    v9 = [v8 trailingAnchor];

    v10 = [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___spinner) leadingAnchor];
    v11 = [v9 constraintEqualToAnchor:v10 constant:-12.0];

    *(v2 + 40) = v11;
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1BA1946B4()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___hiddenSpinnerConstraints;
  if (*(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___hiddenSpinnerConstraints))
  {
    v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___hiddenSpinnerConstraints);
  }

  else
  {
    sub_1B9F109F8();
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1BA4B8B60;
    v3 = sub_1BA191DB4();
    v4 = [v3 widthAnchor];

    v5 = [v4 constraintEqualToConstant_];
    *(v2 + 32) = v5;
    v6 = sub_1BA191C58();
    v7 = [v6 trailingAnchor];

    v8 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___spinner;
    v9 = [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___spinner) leadingAnchor];
    v10 = [v7 constraintEqualToAnchor:v9 constant:0.0];

    *(v2 + 40) = v10;
    v11 = sub_1BA191D10();
    v12 = [v11 trailingAnchor];

    v13 = [*(v0 + v8) leadingAnchor];
    v14 = [v12 constraintEqualToAnchor:v13 constant:0.0];

    *(v2 + 48) = v14;
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1BA1949A8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA194A00(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  v4 = swift_endAccess();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1B8))(v4);
  return sub_1B9F43F68(a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
}

uint64_t (*sub_1BA194AC8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA194B2C;
}

uint64_t sub_1BA194B2C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((*MEMORY[0x1E69E7D40] & **(a1 + 24)) + 0x1B8))(result);
  }

  return result;
}

uint64_t sub_1BA194B98()
{
  v1 = v0;
  v2 = sub_1BA4A40A8();
  v17.receiver = v1;
  v17.super_class = type metadata accessor for ProfileSharingWithYouTileCell();
  objc_msgSendSuper2(&v17, sel__bridgedUpdateConfigurationUsingState_, v2);

  v13 = v1;
  sub_1B9F0D950(0, &qword_1EBBED448);
  v3 = v1;
  if (swift_dynamicCast())
  {
    sub_1B9F1134C(v11, v14);
    v4 = [v3 isHighlighted];
    v5 = [v3 contentView];
    v6 = v15;
    v7 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    if (v4)
    {
      v8 = (*(v7 + 8))(v6, v7);
    }

    else
    {
      v8 = (*(v7 + 16))(v6, v7);
    }

    v10 = v8;
    [v5 setBackgroundColor_];

    return __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    return sub_1B9F43F68(v11, &qword_1EBBED450, &qword_1EBBED448, &protocol descriptor for HighlightColorProviding);
  }
}

id sub_1BA194E0C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = [v0 layer];
  v2 = [objc_opt_self() blackColor];
  v3 = [v2 CGColor];

  [v1 setShadowColor_];
  v4 = [v0 layer];
  LODWORD(v5) = 1041865114;
  [v4 setShadowOpacity_];

  v6 = [v0 layer];
  [v6 setShadowOffset_];

  v7 = [v0 layer];
  [v7 setShadowRadius_];

  return v0;
}

id sub_1BA194F90()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage____lazy_storage___watchIconImage;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage____lazy_storage___watchIconImage);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage____lazy_storage___watchIconImage);
  }

  else
  {
    v4 = sub_1BA194FF0();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA194FF0()
{
  v0 = [objc_opt_self() systemFontOfSize_];
  v1 = [objc_opt_self() configurationWithFont_];

  v2 = sub_1BA4A6758();
  v3 = [objc_opt_self() systemImageNamed_];

  if (v3)
  {
    v4 = [v3 imageWithConfiguration_];
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v6 = objc_opt_self();
  v7 = [v6 systemBackgroundColor];
  [v5 setBackgroundColor_];

  v8 = [v5 layer];
  v9 = [v5 layer];
  [v9 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v40.origin.x = v11;
  v40.origin.y = v13;
  v40.size.width = v15;
  v40.size.height = v17;
  [v8 setCornerRadius_];

  [v5 setClipsToBounds_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  v18 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  v19 = [v6 secondaryLabelColor];
  [v18 setTintColor_];

  v20 = v18;
  [v20 setContentMode_];
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  v21 = [v5 layer];
  [v21 setBorderWidth_];

  v22 = [v5 layer];
  sub_1B9F0ADF8(0, &qword_1EDC6E380);
  v23 = sub_1BA4A7738();
  v24 = [v23 CGColor];

  [v22 setBorderColor_];
  v25 = [v5 layer];
  [v25 setMasksToBounds_];

  v26 = [v5 layer];
  v27 = [v6 blackColor];
  v28 = [v27 CGColor];

  [v26 setShadowColor_];
  v29 = [v5 layer];
  LODWORD(v30) = 1041865114;
  [v29 setShadowOpacity_];

  v31 = [v5 layer];
  [v31 setShadowOffset_];

  v32 = [v5 layer];
  [v32 setShadowRadius_];

  [v5 addSubview_];
  v33 = [v20 centerYAnchor];
  v34 = [v5 centerYAnchor];
  v35 = [v33 constraintEqualToAnchor_];

  [v35 setActive_];
  v36 = [v20 centerXAnchor];

  v37 = [v5 centerXAnchor];
  v38 = [v36 constraintEqualToAnchor_];

  [v38 setActive_];
  return v5;
}

uint64_t sub_1BA1955AC(uint64_t *a1, uint64_t (*a2)(id))
{
  v3 = *a1;
  v4 = *&v2[*a1];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v7 = [v2 traitCollection];
    v8 = [v7 preferredContentSizeCategory];

    v5 = a2(v8);
    *&v2[v3] = v5;
  }

  return v5;
}

void sub_1BA195680(uint64_t a1, void (*a2)(void), void *a3)
{
  a2();
  *(v3 + *a3) = a1;

  v6 = objc_opt_self();
  sub_1B9F0ADF8(0, &qword_1EDC6B570);
  v7 = sub_1BA4A6AE8();

  [v6 deactivateConstraints_];

  v8 = sub_1BA4A6AE8();

  [v6 activateConstraints_];
}

id sub_1BA19577C(char a1, char a2)
{
  v5 = OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_blurView;
  v6 = [objc_opt_self() effectWithStyle_];
  v7 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v2[v5] = v7;
  v8 = OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_gradientView;
  type metadata accessor for ProfileGradientView();
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v2[v8] = v9;
  v10 = OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_profileImageView;
  *&v2[v10] = sub_1BA194E0C();
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage____lazy_storage___disclosureIndicator] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage____lazy_storage___watchIconImage] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage____lazy_storage___currentConstraints] = 0;
  v2[OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_isDisabled] = 0;
  v2[OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_hasWatchIcon] = a1;
  v2[OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_hasDisclosureIndicator] = a2;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for ProfileGradientViewWithImage();
  v11 = objc_msgSendSuper2(&v13, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1BA195928();
  sub_1BA195A24();

  return v11;
}

void sub_1BA195928()
{
  [v0 addSubview_];
  [v0 addSubview_];
  [v0 addSubview_];
  if (v0[OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_hasDisclosureIndicator] == 1)
  {
    v1 = sub_1BA194F80();
    [v0 addSubview_];
  }

  if (v0[OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_hasWatchIcon] == 1)
  {
    v2 = sub_1BA194F90();
    [v0 addSubview_];
  }
}

void sub_1BA195A24()
{
  [v0 hk:*&v0[OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_gradientView] alignConstraintsWithView:?];
  [v0 hk:*&v0[OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_blurView] alignConstraintsWithView:?];
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  v3 = sub_1BA195B7C();
  sub_1BA195660(v3);
  v7 = sub_1BA194F80();
  v4 = [v0 traitCollection];
  v5 = [v4 preferredContentSizeCategory];

  LOBYTE(v4) = sub_1BA4A7518();
  if ((v4 & 1) != 0 || (v0[OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_hasDisclosureIndicator] & 1) == 0)
  {
    v6 = 1;
  }

  else
  {
    v6 = v0[OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_isDisabled];
  }

  [v7 setHidden_];
}

uint64_t sub_1BA195B7C()
{
  v1 = &selRef_didTapSave_;
  if (v0[OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_hasWatchIcon] == 1)
  {
    sub_1B9F109F8();
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1BA4B5890;
    v3 = sub_1BA194F90();
    v4 = [v3 heightAnchor];

    v5 = [v4 constraintEqualToConstant_];
    *(v2 + 32) = v5;
    v6 = OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage____lazy_storage___watchIconImage;
    v7 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage____lazy_storage___watchIconImage] widthAnchor];
    v8 = [v7 constraintEqualToConstant_];

    *(v2 + 40) = v8;
    v9 = [*&v0[v6] trailingAnchor];
    v10 = OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_profileImageView;
    v11 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_profileImageView] trailingAnchor];
    v12 = [v9 constraintEqualToAnchor:v11 constant:3.0];

    *(v2 + 48) = v12;
    v13 = [*&v0[v6] bottomAnchor];
    v1 = &selRef_didTapSave_;
    v14 = [*&v0[v10] bottomAnchor];
    v15 = [v13 constraintEqualToAnchor_];

    v56 = v2;
    *(v2 + 56) = v15;
  }

  else
  {
    v56 = MEMORY[0x1E69E7CC0];
  }

  if (sub_1BA4A7528())
  {
    if (v0[OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_hasDisclosureIndicator] == 1)
    {
      sub_1B9F109F8();
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1BA4B7510;
      v17 = sub_1BA194F80();
      v18 = [v17 centerYAnchor];

      v19 = [v0 centerYAnchor];
      v20 = [v18 constraintEqualToAnchor_];

      *(v16 + 32) = v20;
      v21 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage____lazy_storage___disclosureIndicator] trailingAnchor];
      v22 = [v0 trailingAnchor];
      v23 = [v21 constraintEqualToAnchor:v22 constant:-16.0];

      *(v16 + 40) = v23;
    }

    else
    {
      v16 = MEMORY[0x1E69E7CC0];
    }

    sub_1B9F109F8();
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1BA4B5880;
    v30 = [v0 heightAnchor];
    v31 = [v30 v1[271]];

    *(v29 + 32) = v31;
    v32 = OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_profileImageView;
    v33 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_profileImageView] widthAnchor];
    v34 = [v33 v1[271]];

    *(v29 + 40) = v34;
    v35 = [*&v0[v32] heightAnchor];
    v36 = [v35 v1[271]];

    *(v29 + 48) = v36;
    v37 = [*&v0[v32] leadingAnchor];
    v38 = [v0 leadingAnchor];
    v39 = [v37 constraintEqualToAnchor:v38 constant:14.0];

    *(v29 + 56) = v39;
    v40 = [*&v0[v32] topAnchor];
    v41 = [v0 topAnchor];
    v42 = [v40 constraintEqualToAnchor:v41 constant:14.0];

    *(v29 + 64) = v42;
    sub_1B9F73B50(v56);
    sub_1B9F73B50(v16);
    return v29;
  }

  else
  {
    v24 = sub_1BA4A7538();
    v25 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_profileImageView];
    if (v24)
    {
      v26 = [v25 centerYAnchor];
      v27 = [v0 centerYAnchor];
      v28 = [v26 constraintEqualToAnchor_];
    }

    else
    {
      v26 = [v25 topAnchor];
      v27 = [v0 topAnchor];
      v28 = [v26 constraintEqualToAnchor:v27 constant:14.0];
    }

    v44 = v28;

    sub_1B9F109F8();
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1BA4B5880;
    v46 = [v0 heightAnchor];
    v47 = [v46 constraintGreaterThanOrEqualToConstant_];

    *(v45 + 32) = v47;
    v48 = OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_profileImageView;
    v49 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_profileImageView] widthAnchor];
    v50 = [v49 v1[271]];

    *(v45 + 40) = v50;
    v51 = [*&v0[v48] heightAnchor];
    v52 = [v51 v1[271]];

    *(v45 + 48) = v52;
    v53 = [*&v0[v48] centerXAnchor];
    v54 = [v0 centerXAnchor];
    v55 = [v53 &selRef:v54 numberWithInteger:? + 5];

    *(v45 + 56) = v55;
    *(v45 + 64) = v44;
    sub_1B9F73B50(v56);
    return v45;
  }
}

void sub_1BA1962A4(uint64_t a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for ProfileGradientViewWithImage();
  objc_msgSendSuper2(&v10, sel_traitCollectionDidChange_, a1);
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  v5 = sub_1BA195B7C();
  sub_1BA195660(v5);
  v6 = sub_1BA194F80();
  v7 = [v1 traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  LOBYTE(v7) = sub_1BA4A7518();
  if ((v7 & 1) != 0 || (v1[OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_hasDisclosureIndicator] & 1) == 0)
  {
    v9 = 1;
  }

  else
  {
    v9 = v1[OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_isDisabled];
  }

  [v6 setHidden_];
}

id sub_1BA19653C()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___nameLabel;
  v7 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___nameLabel);
  if (v7)
  {
    v8 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___nameLabel);
  }

  else
  {
    v40 = v3;
    v9 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    [v9 setTranslatesAutoresizingMaskIntoConstraints_];
    v10 = [objc_opt_self() labelColor];
    [v9 setTextColor_];

    [v9 setAdjustsFontForContentSizeCategory_];
    v11 = *MEMORY[0x1E69DDCF8];
    v12 = objc_opt_self();
    v13 = [v12 preferredFontDescriptorWithTextStyle:v11 compatibleWithTraitCollection:0];
    v14 = [v13 fontDescriptorWithSymbolicTraits_];

    if (v14)
    {
      v15 = [objc_opt_self() fontWithDescriptor:v14 size:0.0];
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
        v38 = v2;
        v22 = sub_1B9F0B82C(v20, v21, &v43);

        *(v19 + 4) = v22;
        *(v19 + 12) = 2080;
        v41 = 0;
        v42 = 1;
        sub_1BA198D90(0, &qword_1EBBECB00, type metadata accessor for Weight);
        v23 = sub_1BA4A6808();
        v25 = sub_1B9F0B82C(v23, v24, &v43);

        *(v19 + 14) = v25;
        *(v19 + 22) = 2080;
        LODWORD(v41) = 32770;
        type metadata accessor for SymbolicTraits(0);
        v26 = sub_1BA4A6808();
        v28 = sub_1B9F0B82C(v26, v27, &v43);

        *(v19 + 24) = v28;
        *(v19 + 32) = 2112;
        v29 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        *(v19 + 34) = v29;
        v30 = v36;
        *v36 = v29;
        _os_log_impl(&dword_1B9F07000, v17, v18, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v19, 0x2Au);
        sub_1B9F8C6C8(v30);
        MEMORY[0x1BFAF43A0](v30, -1, -1);
        v31 = v37;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v31, -1, -1);
        MEMORY[0x1BFAF43A0](v19, -1, -1);

        (*(v38 + 8))(v5, v40);
      }

      else
      {

        (*(v2 + 8))(v5, v40);
      }

      v0 = v39;
      v32 = [v12 preferredFontDescriptorWithTextStyle_];
      v15 = [objc_opt_self() fontWithDescriptor:v32 size:0.0];
    }

    [v9 setFont_];

    v33 = *(v0 + v6);
    *(v0 + v6) = v9;
    v8 = v9;

    v7 = 0;
  }

  v34 = v7;
  return v8;
}

id sub_1BA1969D8()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___lastUpdatedTimestamp;
  v7 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___lastUpdatedTimestamp);
  if (v7)
  {
    v8 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___lastUpdatedTimestamp);
  }

  else
  {
    v40 = v3;
    v9 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    [v9 setTranslatesAutoresizingMaskIntoConstraints_];
    [v9 setNumberOfLines_];
    v10 = [objc_opt_self() secondaryLabelColor];
    [v9 setTextColor_];

    [v9 setAdjustsFontForContentSizeCategory_];
    v11 = *MEMORY[0x1E69DDD80];
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
        sub_1BA198D90(0, &qword_1EBBECB00, type metadata accessor for Weight);
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
        sub_1B9F8C6C8(v30);
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

    v33 = *(v0 + v6);
    *(v0 + v6) = v9;
    v8 = v9;

    v7 = 0;
  }

  v34 = v7;
  return v8;
}

id sub_1BA196E54(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v7 = sub_1B9F6B774(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DB980], 0, 0, 0, 0, 1);
    v8 = [objc_opt_self() configurationWithFont:v7 scale:1];
    v9 = sub_1BA4A6758();
    v10 = [objc_opt_self() systemImageNamed:v9 withConfiguration:v8];

    v11 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
    [v11 setTranslatesAutoresizingMaskIntoConstraints_];
    [v11 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
    v12 = [objc_opt_self() tertiaryLabelColor];
    [v11 setTintColor_];

    [v11 setContentMode_];
    LODWORD(v13) = 1148846080;
    [v11 setContentCompressionResistancePriority:0 forAxis:v13];

    v14 = *(v2 + v3);
    *(v2 + v3) = v11;
    v5 = v11;

    v4 = 0;
  }

  v15 = v4;
  return v5;
}

uint64_t sub_1BA197048()
{
  if (*(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___currentConstraints))
  {
    v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___currentConstraints);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
    *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___currentConstraints) = MEMORY[0x1E69E7CC0];
  }

  return v1;
}

void sub_1BA197090(uint64_t a1)
{
  sub_1BA197048();
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___currentConstraints) = a1;

  v3 = objc_opt_self();
  sub_1B9F0ADF8(0, &qword_1EDC6B570);
  v4 = sub_1BA4A6AE8();

  [v3 deactivateConstraints_];

  v5 = sub_1BA4A6AE8();

  [v3 activateConstraints_];
}

void sub_1BA197188()
{
  v1 = sub_1BA19653C();
  v2 = OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView_isDisabled;
  v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView_isDisabled);
  v4 = objc_opt_self();
  v5 = &selRef_secondaryLabelColor;
  if (!v3)
  {
    v5 = &selRef_labelColor;
  }

  v6 = [v4 *v5];
  [v1 setTextColor_];

  v7 = sub_1BA196E44();
  v8 = v7;
  if (*(v0 + v2))
  {
    v9 = 1;
  }

  else
  {
    v9 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView_hasDisclosureIndicator) ^ 1;
  }

  [v7 setHidden_];

  v10 = sub_1BA1969D8();
  [v10 setHidden_];
}

void sub_1BA197284()
{
  v1 = sub_1BA1969D8();
  v2 = v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView_lastUpdatedTimestampString;
  if (*(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView_lastUpdatedTimestampString + 8))
  {

    v3 = sub_1BA4A6758();
  }

  else
  {
    v3 = 0;
  }

  [v1 setText_];

  if (*(v2 + 8) && (, sub_1BA4A6878(), v5 = v4, , v5))
  {

    v6 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView_isDisabled) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  sub_1BA197BBC(v6 & 1);
}

id sub_1BA197378(char a1, char a2)
{
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___nameLabel] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___lastUpdatedTimestamp] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___disclosureIndicator] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___currentConstraints] = 0;
  v3 = &v2[OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView_lastUpdatedTimestampString];
  *v3 = 0;
  v3[1] = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView_currentDisclosureIndicatorConstraints] = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___disclosureIndicatorWidthConstraint] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___disclosureIndicatorLeadingConstraint] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___emptyDisclosureIndicatorLeadingConstraint] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView_currentDateLabelConstraints] = v4;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___lastUpdatedTimestampWidthConstraint] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___lastUpdatedTimestampHeightConstraint] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___lastUpdatedTimestampLeadingAnchorConstraint] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___emptyLastUpdatedTimestampLeadingAnchorConstraint] = 0;
  v2[OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView_hasDisclosureIndicator] = a1;
  v2[OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView_isDisabled] = a2;
  v12.receiver = v2;
  v12.super_class = type metadata accessor for ProfileSharingWithYouHeaderView();
  v5 = objc_msgSendSuper2(&v12, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v6 = sub_1BA19653C();
  [v5 addSubview_];

  v7 = sub_1BA1969D8();
  [v5 addSubview_];

  v8 = sub_1BA196E44();
  [v5 addSubview_];

  v9 = [v5 traitCollection];
  v10 = [v9 preferredContentSizeCategory];

  sub_1BA197D34();
  return v5;
}

void sub_1BA197594(uint64_t a1, void *a2)
{
  *(v2 + *a2) = a1;
  v3 = objc_opt_self();
  sub_1B9F0ADF8(0, &qword_1EDC6B570);
  v4 = sub_1BA4A6AE8();

  [v3 deactivateConstraints_];

  v5 = sub_1BA4A6AE8();

  [v3 activateConstraints_];
}

void sub_1BA1976A0()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView_hasDisclosureIndicator);
  v2 = sub_1BA196E44();
  v17 = v2;
  if (v1)
  {
    [v2 setHidden_];

    if (sub_1BA4A7518())
    {
      sub_1B9F109F8();
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_1BA4B5470;
      v4 = [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___disclosureIndicator) leadingAnchor];
      v5 = sub_1BA1969D8();
      v6 = [v5 trailingAnchor];

      v7 = [v4 constraintEqualToAnchor:v6 constant:8.0];
      *(v3 + 32) = v7;
    }

    else if (sub_1BA4A7518())
    {
      v8 = OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___disclosureIndicator;
      v9 = [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___disclosureIndicator) leadingAnchor];
      v10 = sub_1BA19653C();
      v11 = [v10 trailingAnchor];

      v12 = [v9 constraintGreaterThanOrEqualToAnchor:v11 constant:8.0];
      LODWORD(v13) = 1144750080;
      [v12 setPriority_];

      sub_1B9F109F8();
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_1BA4B5470;
      v14 = [*(v0 + v8) leadingAnchor];
      v15 = [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___nameLabel) trailingAnchor];
      v16 = [v14 constraintGreaterThanOrEqualToAnchor:v15 constant:8.0];

      *(v3 + 32) = v16;
    }

    else
    {
      sub_1B9F109F8();
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_1BA4B5470;
      *(v3 + 32) = sub_1BA197678();
    }

    sub_1BA197588(v3);
  }

  else
  {
    [v2 setHidden_];
  }
}

id sub_1BA1979CC(uint64_t *a1, uint64_t (*a2)(void), SEL *a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v8 = a2();
    v9 = [v8 *a3];

    v10 = [v9 constraintEqualToConstant_];
    v11 = *(v3 + v4);
    *(v3 + v4) = v10;
    v6 = v10;

    v5 = 0;
  }

  v12 = v5;
  return v6;
}

id sub_1BA197AC0(uint64_t *a1, double a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v7 = sub_1BA1969D8();
    v8 = [v7 leadingAnchor];

    v9 = sub_1BA19653C();
    v10 = [v9 trailingAnchor];

    v11 = [v8 constraintGreaterThanOrEqualToAnchor:v10 constant:a2];
    LODWORD(v12) = 1144750080;
    [v11 setPriority_];
    v13 = *(v2 + v3);
    *(v2 + v3) = v11;
    v5 = v11;

    v4 = 0;
  }

  v14 = v4;
  return v5;
}

void sub_1BA197BBC(char a1)
{
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  LOBYTE(v3) = sub_1BA4A7518();
  if (v3)
  {
    sub_1B9F109F8();
    if (a1)
    {
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1BA4B5470;
      *(v5 + 32) = sub_1BA197AA0();
      sub_1BA197998(v5);
      v6 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___lastUpdatedTimestampLeadingAnchorConstraint];
      LODWORD(v7) = 1144750080;

      [v6 setPriority_];
      return;
    }

    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1BA4B7510;
    *(v9 + 32) = sub_1BA1979A4();
    *(v9 + 40) = sub_1BA197AB0();
    goto LABEL_10;
  }

  if ((a1 & 1) == 0)
  {
    sub_1B9F109F8();
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1BA4B5470;
    *(v9 + 32) = sub_1BA197A78();
LABEL_10:
    v8 = v9;
    goto LABEL_11;
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_11:

  sub_1BA197998(v8);
}

void sub_1BA197D34()
{
  v1 = sub_1BA197E10();
  sub_1BA197090(v1);
  v2 = sub_1BA4A7518();
  v3 = sub_1BA19653C();
  [v3 setNumberOfLines_];

  sub_1BA1976A0();
  if (*(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView_lastUpdatedTimestampString + 8) && (, sub_1BA4A6878(), v5 = v4, , v5))
  {

    v6 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView_isDisabled) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  sub_1BA197BBC(v6 & 1);
}

uint64_t sub_1BA197E10()
{
  if ((v0[OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView_hasDisclosureIndicator] & 1) == 0)
  {
    sub_1B9F109F8();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1BA4B5890;
    v40 = sub_1BA19653C();
    v41 = [v40 leadingAnchor];

    v42 = [v0 leadingAnchor];
    v43 = [v41 constraintEqualToAnchor_];

    *(v12 + 32) = v43;
    v44 = OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___nameLabel;
    v45 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___nameLabel] topAnchor];
    v46 = [v0 topAnchor];
    v47 = [v45 constraintEqualToAnchor_];

    *(v12 + 40) = v47;
    v48 = [*&v0[v44] bottomAnchor];
    v49 = [v0 bottomAnchor];
    v50 = [v48 constraintEqualToAnchor_];

    *(v12 + 48) = v50;
    v37 = (v12 + 56);
    v51 = [*&v0[v44] trailingAnchor];
LABEL_5:
    v38 = v51;
    v39 = [v0 trailingAnchor];
    goto LABEL_6;
  }

  if ((sub_1BA4A7518() & 1) == 0)
  {
    if (sub_1BA4A7518())
    {
      v55 = sub_1BA196E44();
      v56 = [v55 trailingAnchor];

      v57 = [v0 &selRef_cloudSyncObserverSyncCompleted_ + 4];
      v58 = [v56 constraintEqualToAnchor_];

      LODWORD(v59) = 1144750080;
      [v58 setPriority_];

      v60 = OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___disclosureIndicator;
      v61 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___disclosureIndicator] leadingAnchor];
      v62 = sub_1BA19653C();
      v63 = [v62 &selRef_cloudSyncObserverSyncCompleted_ + 4];

      v64 = [v61 constraintGreaterThanOrEqualToAnchor:v63 constant:8.0];
      LODWORD(v65) = 1144750080;
      [v64 setPriority_];

      sub_1B9F109F8();
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1BA4C27B0;
      v66 = OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___nameLabel;
      v67 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___nameLabel] &selRef__totalDistance + 1];
      v68 = [v0 &selRef__totalDistance + 1];
      v69 = [v67 &selRef:v68 numberWithInteger:? + 5];

      *(v12 + 32) = v69;
      v70 = [*&v0[v66] topAnchor];
      v71 = [v0 topAnchor];
      v72 = [v70 &selRef:v71 numberWithInteger:? + 5];

      *(v12 + 40) = v72;
      v73 = sub_1BA1969D8();
      v74 = [v73 &selRef__totalDistance + 1];

      v75 = [v0 &selRef__totalDistance + 1];
      v76 = [v74 &selRef:v75 numberWithInteger:? + 5];

      *(v12 + 48) = v76;
      v77 = OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___lastUpdatedTimestamp;
      v78 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___lastUpdatedTimestamp] topAnchor];
      v79 = [*&v0[v66] bottomAnchor];
      v80 = [v78 &selRef:v79 numberWithInteger:? + 5];

      *(v12 + 56) = v80;
      v81 = [*&v0[v77] bottomAnchor];
      v82 = [v0 bottomAnchor];
      v83 = [v81 &selRef:v82 numberWithInteger:? + 5];

      *(v12 + 64) = v83;
      v84 = [*&v0[v77] trailingAnchor];
      v85 = [v0 trailingAnchor];
      v86 = [v84 &selRef:v85 numberWithInteger:? + 5];

      *(v12 + 72) = v86;
      v87 = [*&v0[v60] leadingAnchor];
      v88 = [*&v0[v66] trailingAnchor];
      v89 = [v87 constraintGreaterThanOrEqualToAnchor:v88 constant:8.0];

      *(v12 + 80) = v89;
      v90 = [*&v0[v60] trailingAnchor];
      v91 = [v0 trailingAnchor];
      v92 = [v90 &selRef:v91 numberWithInteger:? + 5];

      *(v12 + 88) = v92;
      v37 = (v12 + 96);
      v38 = [*&v0[v60] firstBaselineAnchor];
      v39 = [*&v0[v66] firstBaselineAnchor];
      goto LABEL_6;
    }

    sub_1B9F109F8();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1BA4C27A0;
    v93 = sub_1BA19653C();
    v94 = [v93 leadingAnchor];

    v95 = [v0 leadingAnchor];
    v96 = [v94 constraintEqualToAnchor_];

    *(v12 + 32) = v96;
    v97 = OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___nameLabel;
    v98 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___nameLabel] topAnchor];
    v99 = [v0 topAnchor];
    v100 = [v98 &selRef:v99 numberWithInteger:? + 5];

    *(v12 + 40) = v100;
    v101 = [*&v0[v97] trailingAnchor];
    v102 = [v0 &selRef_cloudSyncObserverSyncCompleted_ + 4];
    v103 = [v101 &selRef:v102 numberWithInteger:? + 5];

    *(v12 + 48) = v103;
    v104 = sub_1BA1969D8();
    v105 = [v104 leadingAnchor];

    v106 = [v0 leadingAnchor];
    v107 = [v105 &selRef:v106 numberWithInteger:? + 5];

    *(v12 + 56) = v107;
    v108 = OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___lastUpdatedTimestamp;
    v109 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___lastUpdatedTimestamp] topAnchor];
    v110 = [*&v0[v97] bottomAnchor];
    v111 = [v109 &selRef:v110 numberWithInteger:? + 5];

    *(v12 + 64) = v111;
    v112 = [*&v0[v108] bottomAnchor];
    v113 = [v0 bottomAnchor];
    v114 = [v112 &selRef:v113 numberWithInteger:? + 5];

    *(v12 + 72) = v114;
    v37 = (v12 + 80);
    v51 = [*&v0[v108] trailingAnchor];
    goto LABEL_5;
  }

  v1 = sub_1BA196E44();
  v2 = [v1 trailingAnchor];

  v3 = [v0 &selRef_cloudSyncObserverSyncCompleted_ + 4];
  v4 = [v2 constraintEqualToAnchor_];

  LODWORD(v5) = 1144750080;
  [v4 setPriority_];

  v6 = sub_1BA1969D8();
  v7 = [v6 leadingAnchor];

  v8 = sub_1BA19653C();
  v9 = [v8 &selRef_cloudSyncObserverSyncCompleted_ + 4];

  v10 = [v7 constraintGreaterThanOrEqualToAnchor:v9 constant:12.0];
  LODWORD(v11) = 1144750080;
  [v10 setPriority_];

  sub_1B9F109F8();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1BA4BBC90;
  v13 = OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___nameLabel;
  v14 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___nameLabel] &selRef__totalDistance + 1];
  v15 = [v0 &selRef__totalDistance + 1];
  v16 = [v14 constraintEqualToAnchor_];

  *(v12 + 32) = v16;
  v17 = [*&v0[v13] topAnchor];
  v18 = [v0 topAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  *(v12 + 40) = v19;
  v20 = [*&v0[v13] bottomAnchor];
  v21 = [v0 bottomAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  *(v12 + 48) = v22;
  v23 = OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___lastUpdatedTimestamp;
  v24 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___lastUpdatedTimestamp] &selRef__totalDistance + 1];
  v25 = [*&v0[v13] trailingAnchor];
  v26 = [v24 constraintGreaterThanOrEqualToAnchor:v25 constant:12.0];

  *(v12 + 56) = v26;
  v27 = [*&v0[v23] firstBaselineAnchor];
  v28 = [*&v0[v13] firstBaselineAnchor];
  v29 = [v27 constraintEqualToAnchor_];

  *(v12 + 64) = v29;
  v30 = OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___disclosureIndicator;
  v31 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___disclosureIndicator] leadingAnchor];
  v32 = [*&v0[v23] trailingAnchor];
  v33 = [v31 constraintEqualToAnchor:v32 constant:8.0];

  *(v12 + 72) = v33;
  v34 = [*&v0[v30] trailingAnchor];
  v35 = [v0 trailingAnchor];
  v36 = [v34 constraintEqualToAnchor_];

  *(v12 + 80) = v36;
  v37 = (v12 + 88);
  v38 = [*&v0[v30] firstBaselineAnchor];
  v39 = [*&v0[v13] firstBaselineAnchor];
LABEL_6:
  v52 = v39;
  v53 = [v38 constraintEqualToAnchor_];

  *v37 = v53;
  return v12;
}

id sub_1BA198C24(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1BA198D90(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1BA198DE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1BA19A498();
    v3 = sub_1BA4A8098();
    v4 = a1 + 32;

    while (1)
    {
      sub_1BA19A4FC(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1B9F24A34(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1B9F46920(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1BA198EE8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a4;
  v31 = a1;
  v8 = sub_1BA4A3EA8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BA4A1798();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA199750(a5, a2, a3, v33);
  if (v33[1])
  {
    v29[2] = v33[3];
    v29[3] = v33[4];
    v29[1] = v33[2];
    (*(v13 + 16))(v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v30, v12);
    v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v17 = (v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v18 = swift_allocObject();
    (*(v13 + 32))(v18 + v16, v15, v12);
    *(v18 + v17) = a5;
    v19 = sub_1BA4A6758();
    aBlock[4] = sub_1BA19A670;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BA0B06D4;
    aBlock[3] = &block_descriptor_115;
    v20 = _Block_copy(aBlock);

    v21 = [objc_opt_self() actionWithTitle:v19 style:0 handler:v20];
    _Block_release(v20);

    v22 = sub_1BA4A6758();
    v23 = sub_1BA4A6758();
    v24 = [objc_opt_self() alertControllerWithTitle:v22 message:v23 preferredStyle:1];

    [v24 addAction_];
    if (v31)
    {
      [v31 presentViewController:v24 animated:1 completion:0];
    }
  }

  else
  {
    sub_1BA4A3DD8();
    v25 = sub_1BA4A3E88();
    v26 = sub_1BA4A6FB8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      aBlock[0] = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_1B9F0B82C(0xD000000000000015, 0x80000001BA4F09F0, aBlock);
      _os_log_impl(&dword_1B9F07000, v25, v26, "[%s] could not get the error message to display for failed end sharing relationship state", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x1BFAF43A0](v28, -1, -1);
      MEMORY[0x1BFAF43A0](v27, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
  }
}

void sub_1BA19931C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a4;
  v31 = a1;
  v8 = sub_1BA4A3EA8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BA4A1798();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA199750(a5, a2, a3, v33);
  if (v33[1])
  {
    v29[2] = v33[3];
    v29[3] = v33[4];
    v29[1] = v33[2];
    (*(v13 + 16))(v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v30, v12);
    v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v17 = (v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v18 = swift_allocObject();
    (*(v13 + 32))(v18 + v16, v15, v12);
    *(v18 + v17) = a5;
    v19 = sub_1BA4A6758();
    aBlock[4] = sub_1BA19A670;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BA0B06D4;
    aBlock[3] = &block_descriptor_101;
    v20 = _Block_copy(aBlock);

    v21 = [objc_opt_self() actionWithTitle:v19 style:0 handler:v20];
    _Block_release(v20);

    v22 = sub_1BA4A6758();
    v23 = sub_1BA4A6758();
    v24 = [objc_opt_self() alertControllerWithTitle:v22 message:v23 preferredStyle:1];

    [v24 addAction_];
    if (v31)
    {
      [v31 presentViewController:v24 animated:1 completion:0];
    }
  }

  else
  {
    sub_1BA4A3DD8();
    v25 = sub_1BA4A3E88();
    v26 = sub_1BA4A6FB8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      aBlock[0] = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_1B9F0B82C(0xD00000000000001DLL, 0x80000001BA4C27C0, aBlock);
      _os_log_impl(&dword_1B9F07000, v25, v26, "[%s] could not get the error message to display for failed end sharing relationship state", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x1BFAF43A0](v28, -1, -1);
      MEMORY[0x1BFAF43A0](v27, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_1BA199750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (a1 == 1)
  {
    if (qword_1EBBE89B8 != -1)
    {
      swift_once();
    }

    if (qword_1EBBE89A0 == -1)
    {
      goto LABEL_18;
    }

LABEL_24:
    swift_once();
LABEL_18:
    v8 = qword_1EBBF2DD0;
    v7 = *algn_1EBBF2DD8;
    sub_1B9F0D260(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1BA4B5480;
    *(v14 + 56) = MEMORY[0x1E69E6158];
    *(v14 + 64) = sub_1B9F1BE20();
    *(v14 + 32) = a2;
    *(v14 + 40) = a3;

    v10 = sub_1BA4A6768();
    v11 = v15;

    if (qword_1EBBE89C8 != -1)
    {
      swift_once();
    }

    v13 = &qword_1EBBF2E20;
    goto LABEL_21;
  }

  if (a1 == 2)
  {
    if (qword_1EBBE89C0 != -1)
    {
      swift_once();
    }

    if (qword_1EBBE89A0 == -1)
    {
      goto LABEL_18;
    }

    goto LABEL_24;
  }

  if (a1 != 3)
  {
    v8 = 0;
    v7 = 0;
    v10 = 0;
    v11 = 0;
    v16 = 0;
    result = 0;
    goto LABEL_23;
  }

  if (qword_1EBBE89A0 != -1)
  {
    swift_once();
  }

  v8 = qword_1EBBF2DD0;
  v7 = *algn_1EBBF2DD8;
  v9 = qword_1EBBE89A8;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = qword_1EBBF2DE0;
  v11 = *algn_1EBBF2DE8;
  v12 = qword_1EBBE89B0;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = &qword_1EBBF2DF0;
LABEL_21:
  v16 = *v13;

LABEL_23:
  *a4 = v8;
  a4[1] = v7;
  a4[2] = v10;
  a4[3] = v11;
  a4[4] = v16;
  a4[5] = result;
  return result;
}

void sub_1BA199AD4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a4;
  v31 = a1;
  v8 = sub_1BA4A3EA8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BA4A1798();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA199750(a5, a2, a3, v33);
  if (v33[1])
  {
    v29[2] = v33[3];
    v29[3] = v33[4];
    v29[1] = v33[2];
    (*(v13 + 16))(v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v30, v12);
    v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v17 = (v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v18 = swift_allocObject();
    (*(v13 + 32))(v18 + v16, v15, v12);
    *(v18 + v17) = a5;
    v19 = sub_1BA4A6758();
    aBlock[4] = sub_1BA19A670;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BA0B06D4;
    aBlock[3] = &block_descriptor_108;
    v20 = _Block_copy(aBlock);

    v21 = [objc_opt_self() actionWithTitle:v19 style:0 handler:v20];
    _Block_release(v20);

    v22 = sub_1BA4A6758();
    v23 = sub_1BA4A6758();
    v24 = [objc_opt_self() alertControllerWithTitle:v22 message:v23 preferredStyle:1];

    [v24 addAction_];
    if (v31)
    {
      [v31 presentViewController:v24 animated:1 completion:0];
    }
  }

  else
  {
    sub_1BA4A3DD8();
    v25 = sub_1BA4A3E88();
    v26 = sub_1BA4A6FB8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      aBlock[0] = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_1B9F0B82C(0xD00000000000001FLL, 0x80000001BA4F09D0, aBlock);
      _os_log_impl(&dword_1B9F07000, v25, v26, "[%s] could not get the error message to display for failed end sharing relationship state", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x1BFAF43A0](v28, -1, -1);
      MEMORY[0x1BFAF43A0](v27, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
  }
}

void sub_1BA199F08()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell_accessibilityIdentiferBase);
  v4 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v5 = v2;

  MEMORY[0x1BFAF1350](0x676E69726168532ELL, 0xE800000000000000);

  MEMORY[0x1BFAF1350](0x6E696D6F636E492ELL, 0xE900000000000067);

  MEMORY[0x1BFAF1350](0x6E6F737265502ELL, 0xE700000000000000);

  *v1 = v4;
  v1[1] = v5;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___gradientView) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___nameHeaderView) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___tileContentView) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___spinner) = 0;
  v3 = v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell_item;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___currentConstraints) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell_anyCancellable) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell_currentSpinnerConstraints) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___spinnerConstraints) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___hiddenSpinnerConstraints) = 0;
  sub_1BA4A8018();
  __break(1u);
}

void sub_1BA19A0C0()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_blurView;
  v2 = [objc_opt_self() effectWithStyle_];
  v3 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v1) = v3;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_gradientView;
  type metadata accessor for ProfileGradientView();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v4) = v5;
  v6 = OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_profileImageView;
  *(v0 + v6) = sub_1BA194E0C();
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage____lazy_storage___disclosureIndicator) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage____lazy_storage___watchIconImage) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage____lazy_storage___currentConstraints) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_isDisabled) = 0;
  sub_1BA4A8018();
  __break(1u);
}

void sub_1BA19A20C()
{
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___nameLabel) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___lastUpdatedTimestamp) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___disclosureIndicator) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___currentConstraints) = 0;
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView_lastUpdatedTimestampString);
  *v1 = 0;
  v1[1] = 0;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView_currentDisclosureIndicatorConstraints) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___disclosureIndicatorWidthConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___disclosureIndicatorLeadingConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___emptyDisclosureIndicatorLeadingConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView_currentDateLabelConstraints) = v2;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___lastUpdatedTimestampWidthConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___lastUpdatedTimestampHeightConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___lastUpdatedTimestampLeadingAnchorConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___emptyLastUpdatedTimestampLeadingAnchorConstraint) = 0;
  sub_1BA4A8018();
  __break(1u);
}

uint64_t sub_1BA19A324(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1BA198D90(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BA19A390(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1BA198D90(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1BA19A3F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BA19A450(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BA19A498()
{
  if (!qword_1EDC6E348)
  {
    v0 = sub_1BA4A80A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6E348);
    }
  }
}

uint64_t sub_1BA19A4FC(uint64_t a1, uint64_t a2)
{
  sub_1BA19A560();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BA19A560()
{
  if (!qword_1EDC6B690)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC6B690);
    }
  }
}

uint64_t objectdestroy_93Tm()
{
  v1 = sub_1BA4A1798();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t CompactDatePickerItem.init(title:displayDate:initialText:accessibilityIdentifierPrefix:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, char *a8@<X8>)
{
  v15 = type metadata accessor for CompactDatePickerItem();
  v16 = v15[5];
  v17 = sub_1BA4A1728();
  (*(*(v17 - 8) + 56))(&a8[v16], 1, 1, v17);
  v18 = &a8[v15[6]];
  *&a8[v15[8] + 8] = 0;
  swift_unknownObjectWeakInit();
  *a8 = a1;
  *(a8 + 1) = a2;
  sub_1BA120C08(a3, &a8[v16]);
  *v18 = a4;
  *(v18 + 1) = a5;
  v24 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v25 = v19;

  MEMORY[0x1BFAF1350](46, 0xE100000000000000);

  if (a7)
  {
    v20 = a6;
  }

  else
  {
    v20 = 0xD000000000000011;
  }

  if (!a7)
  {
    a7 = 0x80000001BA4EC1B0;
  }

  v21 = &a8[v15[7]];

  MEMORY[0x1BFAF1350](v20, a7);

  result = sub_1BA19B34C(a3, sub_1B9F7B6A0);
  *v21 = v24;
  v21[1] = v25;
  return result;
}

uint64_t type metadata accessor for CompactDatePickerItem()
{
  result = qword_1EBBED488;
  if (!qword_1EBBED488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CompactDatePickerItem.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CompactDatePickerItem.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CompactDatePickerItem.displayDate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CompactDatePickerItem() + 20);

  return sub_1B9F7B4F4(a1, v3);
}

uint64_t CompactDatePickerItem.initialText.getter()
{
  v1 = *(v0 + *(type metadata accessor for CompactDatePickerItem() + 24));

  return v1;
}

uint64_t CompactDatePickerItem.initialText.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CompactDatePickerItem() + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t CompactDatePickerItem.baseIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for CompactDatePickerItem() + 28));

  return v1;
}

uint64_t CompactDatePickerItem.baseIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CompactDatePickerItem() + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_1BA19AB60@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for CompactDatePickerItem();
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA19B2E4(a1, v7, type metadata accessor for CompactDatePickerItem);
  v8 = &v7[*(v5 + 40)];
  Strong = swift_unknownObjectWeakLoadStrong();
  v10 = *(v8 + 1);
  result = sub_1BA19B34C(v7, type metadata accessor for CompactDatePickerItem);
  *a2 = Strong;
  a2[1] = v10;
  return result;
}

uint64_t CompactDatePickerItem.delegate.setter(uint64_t a1, uint64_t a2)
{
  *(v2 + *(type metadata accessor for CompactDatePickerItem() + 32) + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t (*CompactDatePickerItem.delegate.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for CompactDatePickerItem() + 32);
  *(a1 + 24) = v3;
  v4 = v1 + v3;
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  *a1 = Strong;
  *(a1 + 8) = v6;
  return sub_1BA19AD24;
}

uint64_t sub_1BA19AD24(uint64_t a1)
{
  *(*(a1 + 16) + *(a1 + 24) + 8) = *(a1 + 8);
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t CompactDatePickerItem.reuseIdentifier.getter()
{
  type metadata accessor for CompactDatePickerTableViewCell();
  sub_1BA19AE64(0, &qword_1EBBE9728, type metadata accessor for CompactDatePickerTableViewCell);
  return sub_1BA4A6808();
}

uint64_t CompactDatePickerItem.uniqueIdentifier.getter()
{
  type metadata accessor for CompactDatePickerItem();
  sub_1BA19AE64(0, &qword_1EBBED478, type metadata accessor for CompactDatePickerItem);
  v1 = sub_1BA4A6808();
  v2 = *v0;
  v3 = v0[1];
  v5 = v1;

  MEMORY[0x1BFAF1350](v2, v3);

  return v5;
}

uint64_t sub_1BA19AE64(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t CompactDatePickerItem.compactDatePicker(_:didSelectNewDate:)(uint64_t a1, uint64_t a2)
{
  v4 = v2 + *(type metadata accessor for CompactDatePickerItem() + 32);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(v2, a2, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BA19AF80()
{
  type metadata accessor for CompactDatePickerTableViewCell();
  sub_1BA19AE64(0, &qword_1EBBE9728, type metadata accessor for CompactDatePickerTableViewCell);
  return sub_1BA4A6808();
}

uint64_t sub_1BA19B010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3 + *(a3 + 32);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(v3, a2, ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BA19B0A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 28));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_1BA19B108()
{
  sub_1BA19AE64(0, &qword_1EBBED478, type metadata accessor for CompactDatePickerItem);
  v1 = sub_1BA4A6808();
  v2 = *v0;
  v3 = v0[1];
  v5 = v1;

  MEMORY[0x1BFAF1350](v2, v3);

  return v5;
}

uint64_t sub_1BA19B198(uint64_t a1)
{
  v2 = sub_1BA19B3AC(&qword_1EBBEC278);

  return MEMORY[0x1EEE0DA58](a1, v2);
}

void sub_1BA19B23C()
{
  sub_1B9F7B6A0();
  if (v0 <= 0x3F)
  {
    sub_1B9F2F388();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1BA19B2E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA19B34C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BA19B3AC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CompactDatePickerItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t SharingEntryProfileInformationDataSource.__allocating_init(context:sharingEntryIdentifier:viewClass:layoutConstructor:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_allocObject();
  v12 = sub_1BA19BEB8(a1, a2, a3, a4, a5, a6);
  sub_1B9F0E30C(a5, a6);
  return v12;
}

uint64_t sub_1BA19B480()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1B9F18460(*(v0 + qword_1EDC64EB0), *(v0 + qword_1EDC64EB0 + 8), *(v0 + qword_1EDC64EB0 + 16));

  sub_1B9F0E30C(*(v0 + qword_1EDC84CF0), *(v0 + qword_1EDC84CF0 + 8));

  sub_1B9FAB600(v0 + qword_1EDC84CE8);

  return v0;
}

uint64_t SharingEntryProfileInformationDataSource.__allocating_init(context:profileIdentifier:viewClass:layoutConstructor:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = sub_1BA4A1798();
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a2 identifier];
  sub_1BA4A1778();

  v18 = (*(v6 + 800))(a1, v16, a3, a4, a5, a6);
  return v18;
}

uint64_t SharingEntryProfileInformationDataSource.init(context:sharingEntryIdentifier:viewClass:layoutConstructor:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_1BA19BEB8(a1, a2, a3, a4, a5, a6);
  sub_1B9F0E30C(a5, a6);
  return v8;
}

uint64_t SharingEntryProfileInformationDataSource.__deallocating_deinit()
{
  sub_1BA19B480();

  return swift_deallocClassInstance();
}

uint64_t sub_1BA19B904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BA19C344(0, &qword_1EBBEA318, MEMORY[0x1E69A3430], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - v5;
  v7 = sub_1BA4A33C8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0CF958(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    result = sub_1B9F82A44(v6, &qword_1EBBEA318, MEMORY[0x1E69A3430]);
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0;
  }

  else
  {
    v12 = *(v8 + 32);
    v12(v10, v6, v7);
    v13 = MEMORY[0x1E69A3418];
    *(a2 + 24) = v7;
    *(a2 + 32) = v13;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    return (v12)(boxed_opaque_existential_1, v10, v7);
  }

  return result;
}

id sub_1BA19BAD0()
{
  v0 = MEMORY[0x1E6968130];
  sub_1BA19C344(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v28 - v2;
  sub_1BA4A27B8();
  sub_1BA19C344(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v4 = sub_1BA4A1C68();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  v28 = xmmword_1BA4B5480;
  *(v7 + 16) = xmmword_1BA4B5480;
  (*(v5 + 104))(v7 + v6, *MEMORY[0x1E69A3B70], v4);
  v8 = sub_1BA4A0FA8();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  sub_1B9F1C048(0, &qword_1EDC6B450);
  v9 = swift_allocObject();
  *(v9 + 16) = v28;
  *(v9 + 32) = sub_1BA4A1D78();
  v10 = MEMORY[0x1BFAED020](v7, 0, v3, v9);

  sub_1B9F82A44(v3, &qword_1EDC6E2A0, v0);
  v29 = sub_1BA4A3338();
  v30 = v11;
  MEMORY[0x1BFAF1350](42, 0xE100000000000000);
  v12 = sub_1BA4A1748();
  MEMORY[0x1BFAF1350](v12);

  v13 = v29;
  v14 = v30;
  sub_1B9F1BFFC();
  sub_1B9F0CF6C(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BA4B5460;
  v16 = sub_1BA4A2798();
  v18 = v17;
  v19 = MEMORY[0x1E69E6158];
  *(v15 + 56) = MEMORY[0x1E69E6158];
  v20 = sub_1B9F1BE20();
  *(v15 + 32) = v16;
  *(v15 + 40) = v18;
  *(v15 + 96) = v19;
  *(v15 + 104) = v20;
  *(v15 + 64) = v20;
  *(v15 + 72) = v13;
  *(v15 + 80) = v14;
  v21 = sub_1BA4A6EE8();
  sub_1B9F1C048(0, &qword_1EDC6B400);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1BA4B7510;
  *(v22 + 32) = v10;
  *(v22 + 40) = v21;
  v23 = v10;
  v24 = v21;
  v25 = sub_1BA4A6AE8();

  v26 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v26;
}

uint64_t sub_1BA19BEB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v36 = *v7;
  v37 = a2;
  v13 = MEMORY[0x1E69A3430];
  sub_1BA19C344(0, &qword_1EBBEA318, MEMORY[0x1E69A3430], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v36 - v15;
  v17 = sub_1BA19BAD0();
  *(v7 + qword_1EDC6A550) = MEMORY[0x1E69E7CD0];
  *(v7 + qword_1EDC84CE8 + 8) = 0;
  swift_unknownObjectWeakInit();
  v18 = (v7 + qword_1EDC84CE0);
  *v18 = a3;
  v18[1] = a4;
  v19 = (v7 + qword_1EDC84CF0);
  *v19 = a5;
  v19[1] = a6;
  sub_1B9F1C048(0, &qword_1EDC6B400);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1BA4B5470;
  v21 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  sub_1B9F0F1B8(a5);
  v22 = sub_1BA4A6758();
  v23 = [v21 initWithKey:v22 ascending:1 selector:sel_localizedStandardCompare_];

  *(v20 + 32) = v23;
  v24 = sub_1BA4A7558();

  sub_1B9F126E0();
  v26 = objc_allocWithZone(v25);
  v27 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v24);
  v28 = sub_1BA4A33C8();
  (*(*(v28 - 8) + 56))(v16, 1, 1, v28);
  sub_1BA0CF644();
  swift_allocObject();
  *(v7 + qword_1EDC6A560) = sub_1BA4A4DF8();
  v29 = swift_allocObject();
  *(v29 + 16) = v36;
  v30 = v27;
  v31 = sub_1B9F17A68(v30, sub_1BA19C3A8, v29, 0);

  v32 = *(*v31 + 760);

  v32(v33);
  sub_1BA4A4DA8();

  v34 = sub_1BA4A1798();
  (*(*(v34 - 8) + 8))(v37, v34);
  sub_1B9F82A44(v16, &qword_1EBBEA318, v13);
  return v31;
}

uint64_t type metadata accessor for SharingEntryProfileInformationDataSource()
{
  result = qword_1EDC60920;
  if (!qword_1EDC60920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA19C344(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t HostingCellReusePolicy.init(viewControllerIdentifier:reuseIdentifierHelper:userInterface:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unsigned __int8 a7@<W6>, uint64_t a8@<X8>)
{
  UserInterface.hostCellClassName.getter(a5, a6, a7);
  v16 = sub_1BA4A6758();

  v17 = NSClassFromString(v16);

  if (v17)
  {
    ObjCClassMetadata = swift_getObjCClassMetadata();
    sub_1B9F244F4(a5, a6, a7);

    MEMORY[0x1BFAF1350](a3, a4);

    *a8 = ObjCClassMetadata;
    *(a8 + 8) = a1;
    *(a8 + 16) = a2;
    *(a8 + 24) = 0;
  }

  else
  {
    sub_1BA4A7DF8();
    UserInterface.hostCellClassName.getter(a5, a6, a7);

    MEMORY[0x1BFAF1350](0xD00000000000001ALL, 0x80000001BA4E3A90);
    result = sub_1BA4A8018();
    __break(1u);
  }

  return result;
}

uint64_t HostingCellReusePolicy.override<A>(reusableCellClass:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(v4 + 24);
  if (v6)
  {
    a1 = (*(a3 + 8))(a2, a3);
    v8 = v7;
    result = sub_1B9F248D8();
    v10 = 0;
  }

  else
  {
    v8 = *(v4 + 8);
    v10 = *(v4 + 16);

    result = sub_1B9F248D8();
  }

  *v4 = a1;
  *(v4 + 8) = v8;
  *(v4 + 16) = v10;
  *(v4 + 24) = v6;
  return result;
}

uint64_t HostingCellReusePolicy.reuseIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (v0[3])
  {
  }

  else
  {
    v3 = v0[2];
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

    v5 = NSStringFromClass(ObjCClassFromMetadata);
    v6 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

    MEMORY[0x1BFAF1350](0x5F65737565725FLL, 0xE700000000000000);

    MEMORY[0x1BFAF1350](v2, v3);

    sub_1B9F248D8();
    return v6;
  }

  return v1;
}

void HostingCellReusePolicy.init(reuseIdentifier:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1BA19C920();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[2] = a1;
  v28[3] = a2;
  v28[0] = 0x5F65737565725FLL;
  v28[1] = 0xE700000000000000;
  v9 = sub_1BA4A17C8();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_1B9F252FC();
  sub_1BA4A7BA8();
  v11 = v10;
  v13 = v12;
  sub_1BA18D088(v8);
  if ((v13 & 1) != 0 || (v14 = sub_1BA4A69E8(), MEMORY[0x1BFAF12A0](v14), , v15 = sub_1BA4A6758(), , v16 = NSClassFromString(v15), v15, !v16))
  {
    v26 = 0;
    v27 = 1;
  }

  else
  {
    ObjCClassMetadata = swift_getObjCClassMetadata();
    v18 = sub_1B9F5F260(v11, a1, a2);
    v20 = v19;
    v22 = v21;
    v24 = v23;

    a2 = MEMORY[0x1BFAF12A0](v18, v20, v22, v24);
    v26 = v25;

    v27 = 0;
    a1 = ObjCClassMetadata;
  }

  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = v26;
  *(a3 + 24) = v27;
}

uint64_t HostingCellReusePolicy.cellClass.getter()
{
  if (v0[24])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

void sub_1BA19C920()
{
  if (!qword_1EDC6AE40)
  {
    sub_1BA4A17C8();
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6AE40);
    }
  }
}

uint64_t sub_1BA19C994(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1BA19C9DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t PDFPreviewCollectionView.BackgroundViewState.hashValue.getter()
{
  v1 = *v0;
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](v1);
  return sub_1BA4A84D8();
}

char *sub_1BA19CAF0()
{
  type metadata accessor for LabelWithSpinner();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner_label;
  [*&v0[OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner_label] setNumberOfLines_];
  v2 = qword_1EDC5E100;
  v3 = *&v0[v1];
  if (v2 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v4 = sub_1BA4A6758();

  [v3 setText_];

  v5 = *&v0[v1];
  v6 = objc_opt_self();
  v7 = *MEMORY[0x1E69DDCF8];
  v8 = v5;
  v9 = [v6 preferredFontForTextStyle_];
  [v8 setFont_];

  [*&v0[v1] setAdjustsFontForContentSizeCategory_];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  return v0;
}

id sub_1BA19CCC0(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_1BA19CD20()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v1 = sub_1BA4A6758();

  [v0 setText_];

  v2 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor_];

  [v0 setNumberOfLines_];
  [v0 setTextAlignment_];
  v3 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];

  [v0 setAdjustsFontForContentSizeCategory_];
  return v0;
}

id sub_1BA19CEC8()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI24PDFPreviewCollectionView____lazy_storage___spinnerContainerView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24PDFPreviewCollectionView____lazy_storage___spinnerContainerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24PDFPreviewCollectionView____lazy_storage___spinnerContainerView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *PDFPreviewCollectionView.init(layout:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI24PDFPreviewCollectionView____lazy_storage___spinnerView] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI24PDFPreviewCollectionView____lazy_storage___noDataLabel] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI24PDFPreviewCollectionView____lazy_storage___spinnerContainerView] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI24PDFPreviewCollectionView_spinnerToContainerTopConstraint] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI24PDFPreviewCollectionView_spinnerToContainerCenterYConstraint] = 0;
  v54.receiver = v1;
  v54.super_class = type metadata accessor for PDFPreviewCollectionView();
  v53 = a1;
  v3 = objc_msgSendSuper2(&v54, sel_initWithFrame_collectionViewLayout_, a1, 0.0, 0.0, 0.0, 0.0);
  type metadata accessor for PDFImageCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = v3;
  v6 = sub_1BA4A6758();
  [v5 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v6];

  v7 = [v5 layer];
  [v7 setMasksToBounds_];

  v8 = [objc_opt_self() systemGroupedBackgroundColor];
  [v5 setBackgroundColor_];

  v9 = sub_1BA19CEC8();
  v10 = sub_1BA19CAD0();
  [v9 addSubview_];

  v11 = OBJC_IVAR____TtC18HealthExperienceUI24PDFPreviewCollectionView____lazy_storage___spinnerView;
  v12 = *&v5[OBJC_IVAR____TtC18HealthExperienceUI24PDFPreviewCollectionView____lazy_storage___spinnerView];
  v13 = OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner_spinner;
  v14 = *&v12[OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner_spinner];
  v15 = v12;
  [v14 startAnimating];
  [*&v12[v13] setHidden_];
  v16 = objc_opt_self();
  sub_1BA14F79C();
  sub_1B9F0ADF8(0, &qword_1EDC6B570);
  v17 = sub_1BA4A6AE8();

  [v16 deactivateConstraints_];

  sub_1BA14F69C();
  v18 = sub_1BA4A6AE8();

  [v16 activateConstraints_];

  v19 = [*&v5[v11] topAnchor];
  v20 = OBJC_IVAR____TtC18HealthExperienceUI24PDFPreviewCollectionView____lazy_storage___spinnerContainerView;
  v21 = [*&v5[OBJC_IVAR____TtC18HealthExperienceUI24PDFPreviewCollectionView____lazy_storage___spinnerContainerView] topAnchor];
  v22 = [v19 constraintEqualToAnchor_];

  v23 = OBJC_IVAR____TtC18HealthExperienceUI24PDFPreviewCollectionView_spinnerToContainerTopConstraint;
  v24 = *&v5[OBJC_IVAR____TtC18HealthExperienceUI24PDFPreviewCollectionView_spinnerToContainerTopConstraint];
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI24PDFPreviewCollectionView_spinnerToContainerTopConstraint] = v22;

  v25 = [*&v5[v11] centerYAnchor];
  v26 = [*&v5[v20] centerYAnchor];
  v27 = [v25 constraintEqualToAnchor_];

  v28 = OBJC_IVAR____TtC18HealthExperienceUI24PDFPreviewCollectionView_spinnerToContainerCenterYConstraint;
  v29 = *&v5[OBJC_IVAR____TtC18HealthExperienceUI24PDFPreviewCollectionView_spinnerToContainerCenterYConstraint];
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI24PDFPreviewCollectionView_spinnerToContainerCenterYConstraint] = v27;

  v30 = *&v5[v23];
  if (v30)
  {
    v31 = v30;
    v32 = [v5 traitCollection];
    v33 = [v32 preferredContentSizeCategory];

    LOBYTE(v32) = sub_1BA4A74F8();
    [v31 setActive_];
  }

  v34 = *&v5[v28];
  if (v34)
  {
    v35 = v34;
    v36 = [v5 traitCollection];
    v37 = [v36 preferredContentSizeCategory];

    LOBYTE(v36) = sub_1BA4A74F8();
    [v35 setActive_];
  }

  sub_1B9F1C048(0, &qword_1EDC6B400);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1BA4B8B60;
  v39 = [*&v5[v11] centerXAnchor];
  v40 = [*&v5[v20] centerXAnchor];
  v41 = [v39 constraintEqualToAnchor_];

  *(v38 + 32) = v41;
  v42 = [*&v5[v11] leadingAnchor];
  v43 = [*&v5[v20] leadingAnchor];
  v44 = [v42 constraintGreaterThanOrEqualToAnchor:v43 constant:10.0];

  *(v38 + 40) = v44;
  v45 = [*&v5[v20] trailingAnchor];
  v46 = [*&v5[v11] trailingAnchor];
  v47 = [v45 constraintGreaterThanOrEqualToAnchor:v46 constant:10.0];

  *(v38 + 48) = v47;
  v48 = sub_1BA4A6AE8();

  [v16 activateConstraints_];

  sub_1BA19E2CC(0, &qword_1EDC5DC30, sub_1B9F3BF3C, MEMORY[0x1E69E6F90]);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1BA4B5480;
  v50 = sub_1BA4A4858();
  v51 = MEMORY[0x1E69DC2B0];
  *(v49 + 32) = v50;
  *(v49 + 40) = v51;
  MEMORY[0x1BFAF2130](v49, sel_preferredContentSizeCategoryDidChange);

  swift_unknownObjectRelease();

  return v5;
}

void sub_1BA19D610()
{
  v1 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI24PDFPreviewCollectionView_spinnerToContainerTopConstraint];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 traitCollection];
    v4 = [v3 preferredContentSizeCategory];

    LOBYTE(v3) = sub_1BA4A74F8();
    [v2 setActive_];
  }

  v5 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI24PDFPreviewCollectionView_spinnerToContainerCenterYConstraint];
  if (v5)
  {
    v8 = v5;
    v6 = [v0 traitCollection];
    v7 = [v6 preferredContentSizeCategory];

    LOBYTE(v6) = sub_1BA4A74F8();
    [v8 setActive_];
  }
}

void sub_1BA19D840(_BYTE *a1)
{
  if (*a1)
  {
    if (*a1 == 1)
    {
      v2 = sub_1BA19CEC8();
    }

    else
    {
      v2 = sub_1BA19CCA0();
    }

    v3 = v2;
    [v1 setBackgroundView_];
  }

  else
  {

    [v1 setBackgroundView_];
  }
}

id PDFPreviewCollectionView.__allocating_init(frame:collectionViewLayout:)(void *a1, double a2, double a3, double a4, double a5)
{
  v7 = [objc_allocWithZone(v5) initWithFrame:a1 collectionViewLayout:{a2, a3, a4, a5}];

  return v7;
}

uint64_t sub_1BA19DA38(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI20PDFPreviewDataSource_previewImages) = a1;
}

id PDFPreviewDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PDFPreviewDataSource.init()()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI20PDFPreviewDataSource_previewImages;
  type metadata accessor for PDFImagePreviews();
  v2 = swift_allocObject();
  *(v2 + 48) = 0;
  *(v2 + 16) = xmmword_1BA4C2AD0;
  v3 = MEMORY[0x1E69E6530];
  v4 = sub_1BA4A6B98();
  *(v4 + 16) = 20;
  *&v5 = -1;
  *(&v5 + 1) = -1;
  *(v4 + 32) = v5;
  *(v4 + 48) = v5;
  *(v4 + 64) = v5;
  *(v4 + 80) = v5;
  *(v4 + 96) = v5;
  *(v4 + 112) = v5;
  *(v4 + 128) = v5;
  *(v4 + 144) = v5;
  *(v4 + 160) = v5;
  *(v4 + 176) = v5;
  *(v2 + 40) = v4;
  v6 = sub_1B9F0ADF8(0, &qword_1EDC6E370);
  *(v2 + 32) = MEMORY[0x1BFAF1080](20, v3, v6, MEMORY[0x1E69E6540]);
  *&v0[v1] = v2;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for PDFPreviewDataSource();
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_1BA19DBD8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

Swift::Int __swiftcall PDFPreviewDataSource.collectionView(_:numberOfItemsInSection:)(UICollectionView *_, Swift::Int numberOfItemsInSection)
{
  result = *(*(v2 + OBJC_IVAR____TtC18HealthExperienceUI20PDFPreviewDataSource_previewImages) + 24);
  if (result)
  {
    return [result pageCount];
  }

  return result;
}

uint64_t PDFPreviewDataSource.collectionView(_:cellForItemAt:)(void *a1, uint64_t a2)
{
  v3 = v2;
  sub_1BA19E2CC(0, &qword_1EDC6AE40, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v37 - v7;
  v9 = sub_1BA4A6758();
  v10 = sub_1BA4A18F8();
  v11 = [a1 dequeueReusableCellWithReuseIdentifier:v9 forIndexPath:v10];

  type metadata accessor for PDFImageCell();
  v12 = swift_dynamicCastClassUnconditional();
  v13 = *(v12 + OBJC_IVAR____TtC18HealthExperienceUI12PDFImageCell_label);
  sub_1BA4A17B8();
  v14 = sub_1BA4A17C8();
  (*(*(v14 - 8) + 56))(v8, 0, 1, v14);
  sub_1B9F2EAC0();
  v15 = swift_allocObject();
  v41 = xmmword_1BA4B5460;
  *(v15 + 16) = xmmword_1BA4B5460;
  v16 = sub_1BA4A1938();
  if (__OFADD__(v16, 1))
  {
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_6;
  }

  v38 = v13;
  v40 = a2;
  v17 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v18 = sub_1B9F0ADF8(0, &qword_1EDC6E360);
  *(v15 + 56) = v18;
  v19 = sub_1BA19E330();
  *(v15 + 64) = v19;
  *(v15 + 32) = v17;
  v39 = OBJC_IVAR____TtC18HealthExperienceUI20PDFPreviewDataSource_previewImages;
  v20 = *(*(v3 + OBJC_IVAR____TtC18HealthExperienceUI20PDFPreviewDataSource_previewImages) + 24);
  if (v20)
  {
    v21 = [v20 pageCount];
  }

  else
  {
    v21 = 0;
  }

  v22 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(v15 + 96) = v18;
  *(v15 + 104) = v19;
  *(v15 + 72) = v22;
  if (qword_1EDC5E100 != -1)
  {
    goto LABEL_13;
  }

LABEL_6:
  sub_1BA4A1318();
  if (*(v15 + 16))
  {
    sub_1BA4A67B8();
  }

  sub_1BA18D088(v8);
  v23 = sub_1BA4A6758();

  v24 = v38;
  [v38 setText_];

  sub_1B9F1C048(0, &qword_1EDC6E330);
  v25 = swift_allocObject();
  *(v25 + 16) = v41;
  strcpy((v25 + 32), "PDFImageCell");
  *(v25 + 45) = 0;
  *(v25 + 46) = -5120;
  v42 = sub_1BA4A1938();
  sub_1BA0CC87C();
  *(v25 + 48) = sub_1BA4A7BE8();
  *(v25 + 56) = v26;
  v27 = sub_1BA4A6AE8();

  v28 = HKUIJoinStringsForAutomationIdentifier();

  if (v28)
  {
    v29 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  sub_1B9FFB934(v29, v31);

  v32 = sub_1BA4A1938();
  v33 = *(v12 + OBJC_IVAR____TtC18HealthExperienceUI12PDFImageCell_lastRequestedPreviewImageId) + 1;
  *(v12 + OBJC_IVAR____TtC18HealthExperienceUI12PDFImageCell_lastRequestedPreviewImageId) = v33;
  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v35 = swift_allocObject();
  *(v35 + 16) = v34;
  *(v35 + 24) = v33;

  sub_1BA37B0E4(v32, sub_1B9FFB92C, v35);

  return v12;
}

void sub_1BA19E2CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1BA19E330()
{
  result = qword_1EDC5E0D0;
  if (!qword_1EDC5E0D0)
  {
    sub_1B9F0ADF8(255, &qword_1EDC6E360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5E0D0);
  }

  return result;
}

unint64_t sub_1BA19E39C()
{
  result = qword_1EBBED4D8;
  if (!qword_1EBBED4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBED4D8);
  }

  return result;
}

uint64_t HKObjectType.isHealthSharingAlert.getter()
{
  v1 = [v0 identifier];
  v2 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v4 = v3;

  v5 = v2 == 0xD00000000000002ALL && 0x80000001BA4E9200 == v4;
  if (v5 || (sub_1BA4A8338() & 1) != 0 || (v2 == 0xD000000000000029 ? (v6 = 0x80000001BA4E9230 == v4) : (v6 = 0), v6 || (sub_1BA4A8338() & 1) != 0 || v2 == 0xD000000000000031 && 0x80000001BA4E9260 == v4 || (sub_1BA4A8338() & 1) != 0 || v2 == 0xD00000000000002ALL && 0x80000001BA4E92A0 == v4 || (sub_1BA4A8338() & 1) != 0 || v2 == 0xD000000000000033 && 0x80000001BA4E92D0 == v4 || (sub_1BA4A8338() & 1) != 0 || v2 == 0xD00000000000002DLL && 0x80000001BA4E9310 == v4 || (sub_1BA4A8338() & 1) != 0 || v2 == 0xD000000000000033 && 0x80000001BA4E9340 == v4 || (sub_1BA4A8338() & 1) != 0 || v2 == 0xD000000000000027 && 0x80000001BA4E9480 == v4 || (sub_1BA4A8338() & 1) != 0 || v2 == 0xD000000000000029 && 0x80000001BA4E94B0 == v4))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1BA4A8338();
  }

  return v7 & 1;
}

uint64_t static HKObjectType.alertEventTypes()()
{
  result = sub_1BA19E818();
  v1 = result;
  v2 = 0;
  v3 = MEMORY[0x1E69E7CC0];
  v8 = MEMORY[0x1E69E7CC0];
  v4 = *(result + 16);
  while (1)
  {
    if (v4 == v2)
    {

      v7 = sub_1BA0245FC(v3);

      return v7;
    }

    if (v2 >= *(v1 + 16))
    {
      break;
    }

    v5 = *(v1 + 8 * v2++ + 32);
    if (v5)
    {
      v6 = v5;
      MEMORY[0x1BFAF1510]();
      if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BA4A6B68();
      }

      result = sub_1BA4A6BB8();
      v3 = v8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BA19E818()
{
  sub_1BA19EDD8(0, &qword_1EDC5DBD0, sub_1BA19EDA4, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BA4C2BF0;
  v1 = objc_opt_self();
  *(v0 + 32) = [v1 dataTypeWithCode_];
  *(v0 + 40) = [v1 dataTypeWithCode_];
  *(v0 + 48) = [v1 dataTypeWithCode_];
  *(v0 + 56) = [v1 dataTypeWithCode_];
  *(v0 + 64) = [v1 dataTypeWithCode_];
  *(v0 + 72) = [v1 dataTypeWithCode_];
  *(v0 + 80) = [v1 dataTypeWithCode_];
  *(v0 + 88) = [v1 dataTypeWithCode_];
  *(v0 + 96) = [v1 dataTypeWithCode_];
  *(v0 + 104) = [v1 dataTypeWithCode_];
  *(v0 + 112) = [v1 dataTypeWithCode_];
  *(v0 + 120) = [v1 dataTypeWithCode_];
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  *(inited + 32) = [v1 dataTypeWithCode_];
  sub_1B9FE2810(inited);
  return v0;
}

uint64_t HKObjectType.isAlertEventType.getter()
{
  v1 = [v0 identifier];
  v2 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v4 = v3;

  v5 = v2 == 0xD00000000000002ALL && 0x80000001BA4E9200 == v4;
  if (v5 || (sub_1BA4A8338() & 1) != 0 || (v2 == 0xD000000000000029 ? (v6 = 0x80000001BA4E9230 == v4) : (v6 = 0), v6 || (sub_1BA4A8338() & 1) != 0 || v2 == 0xD000000000000031 && 0x80000001BA4E9260 == v4 || (sub_1BA4A8338() & 1) != 0 || v2 == 0xD00000000000002ALL && 0x80000001BA4E92A0 == v4 || (sub_1BA4A8338() & 1) != 0 || v2 == 0xD000000000000033 && 0x80000001BA4E92D0 == v4 || (sub_1BA4A8338() & 1) != 0 || v2 == 0xD00000000000002DLL && 0x80000001BA4E9310 == v4 || (sub_1BA4A8338() & 1) != 0 || v2 == 0xD000000000000033 && 0x80000001BA4E9340 == v4 || (sub_1BA4A8338() & 1) != 0 || v2 == 0xD000000000000038 && 0x80000001BA4E9380 == v4 || (sub_1BA4A8338() & 1) != 0 || v2 == 0xD000000000000031 && 0x80000001BA4E93C0 == v4 || (sub_1BA4A8338() & 1) != 0 || v2 == 0xD000000000000030 && 0x80000001BA4E9400 == v4 || (sub_1BA4A8338() & 1) != 0 || v2 == 0xD000000000000031 && 0x80000001BA4E9440 == v4 || (sub_1BA4A8338() & 1) != 0 || v2 == 0xD000000000000027 && 0x80000001BA4E9480 == v4 || (sub_1BA4A8338() & 1) != 0 || v2 == 0xD000000000000029 && 0x80000001BA4E94B0 == v4))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1BA4A8338();
  }

  return v7 & 1;
}

void sub_1BA19EDD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t AppSourcesDataSourceItem.uniqueIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1BA19EEA0(char a1)
{
  result = swift_beginAccess();
  *(v1 + 64) = a1;
  return result;
}

uint64_t sub_1BA19EEE0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 80) = v3;
  *(v4 + 88) = v2;
}

uint64_t sub_1BA19EF40()
{
  swift_beginAccess();
  v1 = *(v0 + 80);

  return v1;
}

uint64_t sub_1BA19EF8C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
}

uint64_t sub_1BA19EFE0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 96) = v3;
  *(v4 + 104) = v2;
}

uint64_t sub_1BA19F040()
{
  swift_beginAccess();
  v1 = *(v0 + 96);

  return v1;
}

uint64_t sub_1BA19F08C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
}

void *sub_1BA19F130(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BA4A1798();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = 0xD000000000000019;
  v21 = 0x80000001BA4F0DD0;
  sub_1BA4A1788();
  sub_1BA19FCD8(&qword_1EDC6AE60, 255, MEMORY[0x1E69695A8]);
  v8 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v8);

  (*(v5 + 8))(v7, v4);
  v9 = v21;
  *(v1 + 16) = v20;
  *(v1 + 24) = v9;
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  *(v1 + 32) = sub_1BA4A1318();
  *(v1 + 40) = v10;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 1;
  v20 = type metadata accessor for CollectionViewListDisclosureCell();
  sub_1BA16A6B4();
  *(v1 + 80) = sub_1BA4A6808();
  *(v1 + 88) = v11;
  sub_1B9F25350();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1BA4B5460;
  *(v12 + 32) = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  *(v12 + 40) = v13;
  strcpy((v12 + 48), "ShowAppSources");
  *(v12 + 63) = -18;
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

  v2[12] = v16;
  v2[13] = v18;
  v2[9] = a1;
  return v2;
}

void sub_1BA19F414(void *a1@<X0>, char *a2@<X8>)
{
  v3 = [a1 traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (v4 == 2)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  *a2 = v5;
}

void sub_1BA19F478(void *a1, uint64_t a2, void *a3, char a4)
{
  if (a1)
  {
    v8 = [*(v4 + 72) viewControllerFactory];
    if (a3)
    {
      a3 = sub_1BA4A6758();
    }

    v9 = [v8 createSingleAppAuthorizationViewControllerUsingInsetStyling:1 restorationApplicationBundleIdentifier:a3];

    [a1 pushViewController:v9 animated:a4 & 1];
  }
}

uint64_t AppSourcesDataSourceItem.deinit()
{

  return v0;
}

uint64_t AppSourcesDataSourceItem.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BA19F608()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 80);

  return v2;
}

uint64_t sub_1BA19F680()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 64);
}

uint64_t sub_1BA19F6C0()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 96);

  return v2;
}

uint64_t sub_1BA19F710(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  *(v5 + 96) = a1;
  *(v5 + 104) = a2;
}

uint64_t sub_1BA19F7BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

void sub_1BA19F820(void *a1)
{
  type metadata accessor for ProfileViewController();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v13 = a1;
    v5 = [v4 navigationController];
    if (v5)
    {
      v6 = v5;
      v14 = 0;
      v7 = sub_1BA388464();
      v9 = v8;
      v10 = objc_allocWithZone(type metadata accessor for SourcesViewController());
      v11 = SourcesViewController.init(sourceType:profileName:)(&v14, v7, v9);
      [v6 pushViewController:v11 animated:1];
    }
  }

  else
  {
    v15 = 0;
    v12 = objc_allocWithZone(type metadata accessor for SourcesViewController());
    v13 = SourcesViewController.init(sourceType:profileName:)(&v15, 0, 0);
    [a1 showAdaptively:v13 sender:v1];
  }
}

uint64_t sub_1BA19F9B0(uint64_t a1, uint64_t a2)
{
  result = sub_1BA19FCD8(&qword_1EDC66638, a2, type metadata accessor for AppSourcesDataSourceItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BA19FCD8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1BA19FD20()
{
  sub_1B9FAB600(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA19FD7C(uint64_t a1)
{
  v3 = qword_1EDC84AF8;
  swift_beginAccess();
  sub_1BA1A2A48(a1, v1 + v3);
  swift_endAccess();
  v4 = *(v1 + qword_1EDC84BB8);
  v5 = *(*v1 + 512);
  swift_beginAccess();
  v6 = *(v1 + v5);
  v7 = *(v1 + *(*v1 + 520));
  v8 = *(v1 + qword_1EDC64EB0);
  v9 = *(v1 + qword_1EDC64EB0 + 8);
  v10 = *(v1 + qword_1EDC64EB0 + 16);

  v11 = v4;
  v12 = sub_1BA1A217C(v11, v6, v7, v8, v9, v10);

  sub_1BA0E7F10(v12, 1);

  return sub_1BA1A2984(a1);
}

uint64_t sub_1BA19FEA8(void *a1, void *a2, uint64_t a3, char *a4)
{
  v5 = v4;
  v9 = *v5;
  v10 = *a4;
  v11 = v5 + qword_1EDC84AF8;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0;
  *(v5 + qword_1EDC84B08) = a2;
  sub_1B9F0A534(a1, v33);
  LOBYTE(v32[0]) = v10;
  type metadata accessor for RequestNewSharingRelationshipItem();
  swift_allocObject();
  v31 = a2;
  v12 = sub_1BA429834(v33, v31, v32);
  *(v5 + qword_1EDC84B00) = v12;

  v13 = sub_1BA1A0244(a1);
  sub_1B9F126E0();
  v15 = objc_allocWithZone(v14);
  v16 = v13;
  v17 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v16);
  type metadata accessor for ProfilesSharingWithYouDataSource.Context();
  v18 = swift_allocObject();
  *(v18 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v18 + 32) = 2;
  *(v18 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v18 + 32) = v10;
  sub_1B9F0A534(a1, v33);
  sub_1B9F0A534(a3, v32);
  v19 = swift_allocObject();
  sub_1B9F1134C(v33, v19 + 16);
  sub_1B9F1134C(v32, v19 + 56);
  *(v19 + 96) = v12;
  *(v19 + 104) = v9;
  v20 = v5 + qword_1EDC64EB0;
  *v20 = sub_1BA1A2AF0;
  *(v20 + 8) = v19;
  *(v20 + 16) = 1;
  *(v5 + qword_1EDC84BB8) = v17;
  *(v5 + *(*v5 + 512)) = v18;
  *(v5 + *(*v5 + 520)) = 0;

  v21 = v17;
  v22 = sub_1BA1A217C(v21, v18, 0, sub_1BA1A2AF0, v19, 1);

  v24 = *&v21[qword_1EDC84AD0];
  v23 = *&v21[qword_1EDC84AD0 + 8];

  MEMORY[0x1BFAF1350](v24, v23);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  v25 = MutableArrayDataSource.init(arrangedSections:identifier:)(v22, 0x534464657070614DLL, 0xE90000000000003CLL);
  v26 = *(v25 + qword_1EDC84BB8);
  v27 = qword_1EBBEA528;
  swift_beginAccess();
  [*(v26 + v27) registerObserver_];

  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v28 = *(*v25 + 512);
  swift_beginAccess();
  *(*(v25 + v28) + 24) = &off_1F380B540;
  swift_unknownObjectWeakAssign();
  return v25;
}

uint64_t sub_1BA1A0244(void *a1)
{
  v57 = a1;
  v59 = MEMORY[0x1E6968130];
  sub_1BA1A2B20(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v52 - v2;
  v68 = sub_1BA4A27B8();
  sub_1B9F1C048(0, &qword_1EDC6B450);
  v5 = v4;
  v6 = swift_allocObject();
  v72 = xmmword_1BA4B5480;
  *(v6 + 16) = xmmword_1BA4B5480;
  *(v6 + 32) = sub_1BA4A1D78();
  v56 = MEMORY[0x1BFAED1E0](v6);

  sub_1BA1A2B20(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v63 = v7;
  v70 = sub_1BA4A1C68();
  v8 = *(v70 - 8);
  v9 = *(v8 + 72);
  v61 = *(v8 + 80);
  v62 = v9;
  v10 = (v61 + 32) & ~v61;
  v11 = swift_allocObject();
  *(v11 + 16) = v72;
  LODWORD(v65) = *MEMORY[0x1E69A3B70];
  v66 = *(v8 + 104);
  v67 = v8 + 104;
  v66(v11 + v10);
  sub_1BA4A2128();
  v64 = sub_1BA4A0FA8();
  v12 = *(v64 - 8);
  v71 = *(v12 + 56);
  v69 = v12 + 56;
  v71(v3, 1, 1, v64);
  v53 = v5;
  v13 = swift_allocObject();
  v58 = xmmword_1BA4B5460;
  *(v13 + 16) = xmmword_1BA4B5460;
  *(v13 + 32) = sub_1BA4A1D78();
  *(v13 + 40) = 0;
  v54 = sub_1BA4A25F8();

  v14 = v59;
  sub_1B9F82AB4(v3, &qword_1EDC6E2A0, v59);
  v60 = v10;
  v15 = swift_allocObject();
  *(v15 + 16) = v72;
  (v66)(v15 + v10, v65, v70);
  sub_1BA4A2148();
  v16 = v64;
  v71(v3, 1, 1, v64);
  v17 = swift_allocObject();
  *(v17 + 16) = v58;
  *(v17 + 32) = sub_1BA4A1D78();
  *(v17 + 40) = 0;
  v55 = sub_1BA4A25F8();

  sub_1B9F82AB4(v3, &qword_1EDC6E2A0, v14);
  v18 = v60;
  v19 = swift_allocObject();
  *(v19 + 16) = v72;
  (v66)(v19 + v18, v65, v70);
  sub_1BA4A2138();
  v71(v3, 1, 1, v16);
  v20 = swift_allocObject();
  *(v20 + 16) = v58;
  *(v20 + 32) = sub_1BA4A1D78();
  *(v20 + 40) = 0;
  v21 = sub_1BA4A25F8();

  v22 = v59;
  sub_1B9F82AB4(v3, &qword_1EDC6E2A0, v59);
  sub_1B9F1C048(0, &qword_1EDC6B400);
  v23 = swift_allocObject();
  v65 = xmmword_1BA4B7510;
  *(v23 + 16) = xmmword_1BA4B7510;
  v24 = v55;
  *(v23 + 32) = v55;
  *(v23 + 40) = v21;
  sub_1B9F0ADF8(0, &qword_1EDC6B630);
  *&v58 = v24;
  v55 = v21;
  v25 = sub_1BA4A6AE8();

  v26 = objc_opt_self();
  v27 = [v26 orPredicateWithSubpredicates_];

  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1BA4B8B60;
  v29 = v56;
  v30 = v54;
  *(v28 + 32) = v56;
  *(v28 + 40) = v30;
  *(v28 + 48) = v27;
  v53 = v29;
  v54 = v30;
  v56 = v27;
  v31 = sub_1BA4A6AE8();

  v32 = [v26 andPredicateWithSubpredicates_];

  v33 = v60;
  v34 = swift_allocObject();
  *(v34 + 16) = v72;
  (v66)(v34 + v33, *MEMORY[0x1E69A3BD8], v70);
  sub_1BA4A20A8();
  v71(v3, 1, 1, v64);
  v35 = sub_1BA4A25F8();

  sub_1B9F82AB4(v3, &qword_1EDC6E2A0, v22);
  v36 = swift_allocObject();
  *(v36 + 16) = v65;
  *(v36 + 32) = v32;
  *(v36 + 40) = v35;
  v37 = v32;
  v38 = v35;
  v39 = sub_1BA4A6AE8();

  v40 = [v26 orPredicateWithSubpredicates_];

  __swift_project_boxed_opaque_existential_1(v57, v57[3]);
  v41 = sub_1BA4A1B68();
  v42 = swift_allocObject();
  *(v42 + 16) = v65;
  v43 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v44 = sub_1BA4A6758();
  v45 = [v43 initWithKey:v44 ascending:0];

  *(v42 + 32) = v45;
  v46 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v47 = sub_1BA4A6758();
  v48 = [v46 initWithKey:v47 ascending:1 selector:sel_localizedStandardCompare_];

  *(v42 + 40) = v48;
  v49 = v40;
  v50 = sub_1BA4A7558();

  return v50;
}

uint64_t sub_1BA1A0AE8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v14 = sub_1BA4A1798();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v31[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = *(a1 + 16);
  v19 = *a2;
  v32 = a3;
  v33 = a4;
  v34 = v19;
  v35 = a6;
  v20 = sub_1BA2F45C4(sub_1BA1A2B00, v31, v18);
  v21 = v20[2];
  if (v21)
  {
    *(a5 + 96) = *(v19 + 32);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_1BA27EFB4(0, v21 + 1, 1, v20);
    }

    v23 = v20[2];
    v22 = v20[3];
    if (v23 >= v22 >> 1)
    {
      v20 = sub_1BA27EFB4((v22 > 1), v23 + 1, 1, v20);
    }

    v37 = type metadata accessor for RequestNewSharingRelationshipItem();
    v38 = sub_1B9F322F0(&qword_1EBBED540, type metadata accessor for RequestNewSharingRelationshipItem);
    *&v36 = a5;
    v20[2] = v23 + 1;
    sub_1B9F1134C(&v36, &v20[5 * v23 + 4]);
  }

  v24 = sub_1B9FE4F98(v20);

  sub_1BA4A1788();
  v25 = sub_1BA4A1748();
  v27 = v26;
  (*(v15 + 8))(v17, v14);
  sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);
  *a7 = 0;
  a7[1] = 0;
  a7[2] = v24;

  v29 = Array<A>.identifierToIndexDict()(v28);

  a7[3] = v29;
  a7[4] = v25;
  a7[5] = v27;
  return result;
}

double sub_1BA1A0D44@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, NSObject *a5@<X4>, uint64_t a6@<X8>)
{
  v136 = a5;
  v131 = a2;
  v132 = a4;
  v130 = a3;
  v8 = sub_1BA4A3EA8();
  v9 = *(v8 - 8);
  v138 = v8;
  v139 = v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v128 = &v122 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v135 = &v122 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v137 = &v122 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v124 = &v122 - v16;
  sub_1BA1A2B20(0, &qword_1EBBEADE0, sub_1BA078D4C, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v125 = &v122 - v18;
  v133 = sub_1BA4A33C8();
  v127 = *(v133 - 1);
  v19 = MEMORY[0x1EEE9AC00](v133);
  v126 = &v122 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v134 = &v122 - v21;
  v22 = sub_1BA4A2888();
  v129 = *(v22 - 8);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v122 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v122 - v26;
  v28 = sub_1BA4A1C68();
  v29 = *(v28 - 8);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = &v122 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v122 - v33;
  sub_1B9F0A534(a1, v142);
  sub_1B9F0D950(0, &qword_1EDC6AD50);
  sub_1BA4A27B8();
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(a6 + 32) = 0;
    result = 0.0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    return result;
  }

  v123 = a6;
  v35 = *v141;
  sub_1BA4A26B8();
  v36 = (*(v29 + 88))(v34, v28);
  if (v36 == *MEMORY[0x1E69A3BD8])
  {
    v37 = [v35 userData];
    if (v37)
    {
      v137 = v35;
      v38 = v37;
      v39 = sub_1BA4A1608();
      v41 = v40;

      sub_1BA4A0EB8();
      swift_allocObject();
      sub_1BA4A0EA8();
      sub_1B9F322F0(&qword_1EBBEA9C8, MEMORY[0x1E69A3108]);
      v42 = v140;
      sub_1BA4A0E98();
      v43 = v123;
      v140 = v42;
      if (v42)
      {
        sub_1B9F2BB4C(v39, v41);

        v44 = v135;
        sub_1BA4A3D88();
        v45 = sub_1BA4A3E88();
        v46 = sub_1BA4A6FB8();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v142[0] = v48;
          *v47 = 136315138;
          v49 = sub_1BA4A85D8();
          v51 = sub_1B9F0B82C(v49, v50, v142);

          *(v47 + 4) = v51;
          _os_log_impl(&dword_1B9F07000, v45, v46, "[%s] Could not decode HealthKitProfileInformation from user data", v47, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v48);
          MEMORY[0x1BFAF43A0](v48, -1, -1);
          MEMORY[0x1BFAF43A0](v47, -1, -1);
        }

        else
        {
        }

        (*(v139 + 8))(v44, v138);
        *(v43 + 32) = 0;
        result = 0.0;
        *v43 = 0u;
        *(v43 + 16) = 0u;
      }

      else
      {

        v87 = v129;
        (*(v129 + 16))(v25, v27, v22);
        sub_1B9F0A534(v131, v142);
        sub_1B9F0A534(v130, v141);
        v143 = *(v132 + 32);
        v88 = type metadata accessor for FamilySharingProfileTileItem();
        swift_allocObject();
        v89 = sub_1BA3CA300(v25, v142, v141, &v143);
        *(v43 + 24) = v88;
        *(v43 + 32) = sub_1B9F322F0(&qword_1EBBED558, type metadata accessor for FamilySharingProfileTileItem);
        sub_1B9F2BB4C(v39, v41);

        *v43 = v89;
        (*(v87 + 8))(v27, v22);
      }

      return result;
    }

LABEL_13:

    v69 = v123;
    *(v123 + 32) = 0;
    result = 0.0;
    *v69 = 0u;
    v69[1] = 0u;
    return result;
  }

  if (v36 == *MEMORY[0x1E69A3B70])
  {
    v53 = [v35 userData];
    if (!v53)
    {
      goto LABEL_13;
    }

    v54 = v53;
    v55 = sub_1BA4A1608();
    v57 = v56;

    sub_1BA4A0EB8();
    swift_allocObject();
    sub_1BA4A0EA8();
    sub_1B9F322F0(&qword_1EBBEA9F8, MEMORY[0x1E69A3430]);
    v59 = v133;
    v58 = v134;
    v60 = v140;
    sub_1BA4A0E98();
    if (v60)
    {
      sub_1B9F2BB4C(v55, v57);

      v61 = v128;
      sub_1BA4A3D88();
      v62 = sub_1BA4A3E88();
      v63 = sub_1BA4A6FB8();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v142[0] = v65;
        *v64 = 136315138;
        v66 = sub_1BA4A85D8();
        v68 = sub_1B9F0B82C(v66, v67, v142);

        *(v64 + 4) = v68;
        _os_log_impl(&dword_1B9F07000, v62, v63, "[%s] Could not decode SharingEntryProfileInformation from user data", v64, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v65);
        MEMORY[0x1BFAF43A0](v65, -1, -1);
        MEMORY[0x1BFAF43A0](v64, -1, -1);
      }

      else
      {
      }

      (*(v139 + 8))(v61, v138);
      v105 = v123;
      *(v123 + 32) = 0;
      result = 0.0;
      *v105 = 0u;
      v105[1] = 0u;
    }

    else
    {

      v90 = sub_1BA4A32B8();
      if ((v91 & 1) != 0 || v90 != 1 || (v92 = v125, sub_1BA4A32E8(), sub_1BA078D4C(), v94 = (*(*(v93 - 8) + 48))(v92, 1, v93), sub_1B9F82AB4(v92, &qword_1EBBEADE0, sub_1BA078D4C), v94 != 1))
      {
        v106 = sub_1BA4A32B8();
        v107 = v123;
        if ((v108 & 1) == 0)
        {
          if (v106 == 1)
          {
            v139 = v55;
            v116 = v127;
            (*(v127 + 16))(v126, v58, v59);
            sub_1B9F0A534(v131, v142);
            sub_1B9F0A534(v130, v141);
            v143 = *(v132 + 32);
            sub_1B9F0ADF8(0, &qword_1EDC5E540);
            v117 = sub_1BA4A7068();
            v118 = type metadata accessor for SummarySharingAcceptedProfileTileItem();
            v140 = v57;
            v119 = v118;
            swift_allocObject();
            v120 = sub_1BA3EC638(v126, v142, v141, v117, &v143);
            *(v107 + 24) = v119;
            *(v107 + 32) = sub_1B9F322F0(&qword_1EBBED548, type metadata accessor for SummarySharingAcceptedProfileTileItem);
            sub_1B9F2BB4C(v139, v140);

            *v107 = v120;
            (*(v116 + 8))(v58, v59);
            return result;
          }

          if (!v106)
          {
            v140 = v57;
            v109 = v127;
            (*(v127 + 16))(v126, v58, v59);
            sub_1B9F0A534(v131, v142);
            v110 = v132;
            Strong = swift_unknownObjectWeakLoadStrong();
            v138 = *(v110 + 24);
            v141[0] = *(v110 + 32);
            sub_1B9F0ADF8(0, &qword_1EDC5E540);
            v112 = sub_1BA4A7068();
            v139 = v55;
            v113 = v112;
            v114 = type metadata accessor for SummarySharingPendingProfileTileItem();
            swift_allocObject();
            v115 = sub_1BA246EE0(v126, v142, v113, Strong, v138, v141);

            swift_unknownObjectRelease();
            *(v107 + 24) = v114;
            *(v107 + 32) = sub_1B9F322F0(&qword_1EBBED550, type metadata accessor for SummarySharingPendingProfileTileItem);
            sub_1B9F2BB4C(v139, v140);

            *v107 = v115;
            (*(v109 + 8))(v134, v59);
            return result;
          }
        }

        (*(v127 + 8))(v58, v59);

        sub_1B9F2BB4C(v55, v57);
        *(v107 + 32) = 0;
        result = 0.0;
        *v107 = 0u;
        *(v107 + 16) = 0u;
        return result;
      }

      v95 = v55;
      v140 = v57;
      v96 = v124;
      sub_1BA4A3D88();
      v97 = sub_1BA4A3E88();
      v98 = sub_1BA4A6FB8();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v142[0] = v100;
        *v99 = 136315138;
        v101 = sub_1BA4A85D8();
        v103 = sub_1B9F0B82C(v101, v102, v142);
        v137 = v35;
        v104 = v103;

        *(v99 + 4) = v104;
        _os_log_impl(&dword_1B9F07000, v97, v98, "[%s] Could not fetch profile identifier to initialize an accepted shared profile's healthStore with", v99, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v100);
        MEMORY[0x1BFAF43A0](v100, -1, -1);
        MEMORY[0x1BFAF43A0](v99, -1, -1);
        sub_1B9F2BB4C(v95, v140);

        (*(v139 + 8))(v124, v138);
        (*(v127 + 8))(v134, v59);
      }

      else
      {
        sub_1B9F2BB4C(v95, v140);

        (*(v139 + 8))(v96, v138);
        (*(v127 + 8))(v58, v59);
      }

      v121 = v123;
      *(v123 + 32) = 0;
      result = 0.0;
      *v121 = 0u;
      v121[1] = 0u;
    }
  }

  else
  {
    v70 = v137;
    sub_1BA4A3D88();
    v71 = v35;
    v72 = sub_1BA4A3E88();
    v73 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      LODWORD(v134) = v73;
      v75 = v74;
      v135 = swift_slowAlloc();
      v142[0] = v135;
      *v75 = 136315394;
      v76 = sub_1BA4A85D8();
      v136 = v72;
      v78 = sub_1B9F0B82C(v76, v77, v142);

      *(v75 + 4) = v78;
      *(v75 + 12) = 2080;
      sub_1BA4A26B8();
      v79 = sub_1BA4A1C58();
      v81 = v80;
      v82 = *(v29 + 8);
      v133 = v71;
      v82(v32, v28);
      v83 = sub_1B9F0B82C(v79, v81, v142);

      *(v75 + 14) = v83;
      v84 = v136;
      _os_log_impl(&dword_1B9F07000, v136, v134, "[%s] Unexpected contentKind %s from FeedItem", v75, 0x16u);
      v85 = v135;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v85, -1, -1);
      MEMORY[0x1BFAF43A0](v75, -1, -1);

      (*(v139 + 8))(v137, v138);
    }

    else
    {

      (*(v139 + 8))(v70, v138);
      v82 = *(v29 + 8);
    }

    v86 = v123;
    *(v123 + 32) = 0;
    *v86 = 0u;
    v86[1] = 0u;
    v82(v34, v28);
  }

  return result;
}

uint64_t sub_1BA1A1D80()
{
  sub_1BA1A2984(v0 + qword_1EDC84AF8);
}

uint64_t sub_1BA1A1DD0()
{
  v0 = sub_1BA3581DC();
  v1 = *(v0 + qword_1EDC84B08);

  sub_1BA1A2984(v0 + qword_1EDC84AF8);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ProfilesSharingWithYouDataSource()
{
  result = qword_1EDC62568;
  if (!qword_1EDC62568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA1A1F68@<X0>(void *a1@<X8>)
{
  v2 = sub_1BA4A4428();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v5 = sub_1BA4A1318();
  v7 = v6;
  _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
  v8 = type metadata accessor for HeaderItem();
  swift_allocObject();
  HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v5, v7, 0, 0, 0, 0, v4, 0, 0);
  v10 = v9;
  a1[3] = v8;
  result = sub_1B9F322F0(&qword_1EDC69800, type metadata accessor for HeaderItem);
  a1[4] = result;
  *a1 = v10;
  return result;
}

uint64_t sub_1BA1A2120()
{
  sub_1B9FF585C();
  sub_1B9FF5890();
  sub_1B9FF58C4();
  sub_1B9FF58F8();
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1B9F43830();
}

uint64_t sub_1BA1A217C(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void, void), uint64_t a5, char a6)
{
  v39 = a2;
  v10 = sub_1B9F18214();
  v11 = v10;
  if (a6)
  {
    if (a6 == 1)
    {
      MEMORY[0x1EEE9AC00](v10);
      v30 = a4;
      v31 = a5;
      v32 = &v39;
      v12 = sub_1BA2F4270(sub_1BA15D290, v29, v11);
      v34 = 0;

      v14 = 0;
      v15 = *(v12 + 2);
      v16 = MEMORY[0x1E69E7CC0];
LABEL_4:
      v17 = &v12[48 * v14 + 16];
      while (v15 != v14)
      {
        if (v14 >= *(v12 + 2))
        {
          __break(1u);
          return result;
        }

        ++v14;
        v18 = (v17 + 48);
        v19 = *(v17 + 32);
        v17 += 48;
        if (*(v19 + 16))
        {
          v20 = *(v18 - 3);
          v35 = *(v18 - 4);
          v21 = *(v18 - 1);
          v22 = *v18;
          v23 = v18[1];

          result = swift_isUniquelyReferenced_nonNull_native();
          v37 = v21;
          v38 = v16;
          v36 = v22;
          if ((result & 1) == 0)
          {
            result = sub_1B9F277B0(0, *(v16 + 2) + 1, 1);
            v16 = v38;
          }

          v25 = *(v16 + 2);
          v24 = *(v16 + 3);
          if (v25 >= v24 >> 1)
          {
            result = sub_1B9F277B0((v24 > 1), v25 + 1, 1);
            v16 = v38;
          }

          *(v16 + 2) = v25 + 1;
          v26 = &v16[48 * v25];
          *(v26 + 4) = v35;
          *(v26 + 5) = v20;
          v27 = v36;
          v28 = v37;
          *(v26 + 6) = v19;
          *(v26 + 7) = v28;
          *(v26 + 8) = v27;
          *(v26 + 9) = v23;
          goto LABEL_4;
        }
      }
    }

    else
    {
      v16 = a4(v10, &v39);
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](v10);
    v30 = a4;
    v31 = a5;
    v32 = &v39;
    v33 = a3 & 1;
    v16 = sub_1BA2F4270(sub_1BA1A2AAC, v29, v11);
  }

  return v16;
}

uint64_t sub_1BA1A23F0(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = [objc_opt_self() sharedBehavior];
  if (!v5)
  {
    __break(1u);
    goto LABEL_21;
  }

  v6 = v5;
  v7 = [v5 isiPad];

  if (!v7 || (v8 = [v2 traitCollection], v9 = objc_msgSend(v8, sel_horizontalSizeClass), v8, v9 != 2))
  {
    if (qword_1EDC6D380 != -1)
    {
      swift_once();
    }

    v66 = xmmword_1EDC6D3C8;
    v67 = unk_1EDC6D3D8;
    v68 = xmmword_1EDC6D3E8;
    v69 = unk_1EDC6D3F8;
    v62 = xmmword_1EDC6D388;
    v63 = xmmword_1EDC6D398;
    v64 = xmmword_1EDC6D3A8;
    v65 = xmmword_1EDC6D3B8;
    v59 = unk_1EDC6D3D8;
    v60 = xmmword_1EDC6D3E8;
    v61 = unk_1EDC6D3F8;
    v55 = xmmword_1EDC6D398;
    v56 = xmmword_1EDC6D3A8;
    v22 = *(&xmmword_1EDC6D388 + 1);
    v23 = xmmword_1EDC6D388;
    v57 = xmmword_1EDC6D3B8;
    v58 = xmmword_1EDC6D3C8;
    sub_1B9F1D9A4(&v62, &v47);
    v24 = [v2 traitCollection];
    v25 = [v24 preferredContentSizeCategory];

    LOBYTE(v24) = sub_1BA4A7528();
    if (v24)
    {
      v26 = *(&v62 + 1);
      v22 = [objc_opt_self() estimatedDimension_];
    }

    v27 = [v2 traitCollection];
    v28 = [v27 preferredContentSizeCategory];

    LOBYTE(v27) = sub_1BA4A7528();
    v29 = objc_opt_self();
    v30 = 90.0;
    if (v27)
    {
      v30 = 800.0;
    }

    v31 = [v29 estimatedDimension_];

    *&v39 = v23;
    *(&v39 + 1) = v31;
    v44 = v59;
    v45 = v60;
    v46 = v61;
    v40 = v55;
    v41 = v56;
    v42 = v57;
    v43 = v58;
    sub_1B9F0ADF8(0, &qword_1EDC6B530);
    v51 = v43;
    v52 = v44;
    v53 = v45;
    v54 = v46;
    v47 = v39;
    v48 = v40;
    v49 = v41;
    v50 = v42;
    sub_1B9F1D9A4(&v39, v38);
    v32 = sub_1B9F293A8(&v47);
    *&v47 = v23;
    *(&v47 + 1) = v31;
    v52 = v59;
    v53 = v60;
    v54 = v61;
    v48 = v55;
    v49 = v56;
    v50 = v57;
    v51 = v58;
    sub_1B9F1DA58(&v47);
    return v32;
  }

  [objc_msgSend(v2 container)];
  v11 = v10;
  swift_unknownObjectRelease();
  v12 = [v2 traitCollection];
  sub_1BA4A7368();

  sub_1BA4A6598();
  v14 = (v11 - v13) * 0.5;
  v15 = [v2 traitCollection];
  v16 = [v15 preferredContentSizeCategory];

  v17 = sub_1BA4A7528();
  sub_1B9F0ADF8(0, &qword_1EDC5E2F0);
  v18 = sub_1BA4A7648();
  *(&v63 + 1) = &type metadata for GridLayoutEngine;
  *&v64 = &protocol witness table for GridLayoutEngine;
  v19 = swift_allocObject();
  *&v62 = v19;
  v20 = sub_1B9F58798(MEMORY[0x1E69E7CC0]);
  if ((v17 & 1) == 0)
  {
    if (v14 > 0.0)
    {
      v21 = 0x4056800000000000;
      goto LABEL_17;
    }

LABEL_21:
    result = sub_1BA4A8018();
    __break(1u);
    return result;
  }

  if (v14 <= 0.0)
  {
    goto LABEL_21;
  }

  v21 = 0x4089000000000000;
LABEL_17:
  *(v19 + 16) = v14;
  *(v19 + 32) = 0;
  *(v19 + 40) = 0;
  *(v19 + 24) = v20;
  *(v19 + 48) = v21;
  *(v19 + 64) = 0;
  *(v19 + 72) = 0;
  *(v19 + 56) = v18;
  *(v19 + 80) = sub_1B9F58BC4;
  *(v19 + 88) = 0;
  v32 = __swift_project_boxed_opaque_existential_1(&v62, &type metadata for GridLayoutEngine);
  *&v47 = v3;
  *(&v47 + 1) = v2;
  *&v48 = v4;
  v34 = (off_1F3804660[0])(&v47);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(&v62);
    return v32;
  }

  v35 = v34;
  v36 = [objc_opt_self() estimatedDimension_];
  v37 = sub_1B9F5CA58(v36, 2);

  __swift_destroy_boxed_opaque_existential_1(&v62);
  return v37;
}

uint64_t sub_1BA1A2984(uint64_t a1)
{
  sub_1BA1A29E0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BA1A29E0()
{
  if (!qword_1EDC65F80)
  {
    sub_1B9F0D950(255, &qword_1EDC65F88);
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC65F80);
    }
  }
}

uint64_t sub_1BA1A2A48(uint64_t a1, uint64_t a2)
{
  sub_1BA1A29E0();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA1A2AAC@<X0>(_OWORD *a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = a1[1];
  v9[0] = *a1;
  v9[1] = v7;
  v9[2] = a1[2];
  return sub_1BA170068(v9, v3, v4, *v5, v6, a2);
}

void sub_1BA1A2B20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t static EmptyStateCollectionViewCell.reuseIdentifier.getter()
{
  type metadata accessor for EmptyStateCollectionViewCell();
  sub_1B9F34708();
  return sub_1BA4A6808();
}

uint64_t EmptyStateCollectionViewCellItem.reuseIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t EmptyStateCollectionViewCellItem.reuseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t EmptyStateCollectionViewCellItem.uniqueIdentifier.getter()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    sub_1BA1A2CB0();
    v1 = sub_1BA4A6808();
  }

  return v1;
}

unint64_t sub_1BA1A2CB0()
{
  result = qword_1EBBED560;
  if (!qword_1EBBED560)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBED560);
  }

  return result;
}

uint64_t EmptyStateCollectionViewCellItem.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t EmptyStateCollectionViewCellItem.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_1BA1A2DB0(uint64_t a1)
{
  v2 = sub_1BA1A3698();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

id sub_1BA1A2DFC()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI28EmptyStateCollectionViewCell____lazy_storage___emptyStateCellView;
  v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI28EmptyStateCollectionViewCell____lazy_storage___emptyStateCellView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI28EmptyStateCollectionViewCell____lazy_storage___emptyStateCellView];
  }

  else
  {
    v4 = [v0 contentView];
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = [objc_allocWithZone(type metadata accessor for EmptyStateCellView()) initWithFrame_];
    v14 = *&v0[v1];
    *&v0[v1] = v13;
    v3 = v13;

    v2 = 0;
  }

  v15 = v2;
  return v3;
}

uint64_t sub_1BA1A2ECC(uint64_t a1, uint64_t *a2)
{
  sub_1B9F68124(a1, v9);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI28EmptyStateCollectionViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v9, v3 + v4);
  swift_endAccess();
  v5 = sub_1BA1A2DFC();
  sub_1B9F68124(v3 + v4, v8);
  v6 = OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView_item;
  swift_beginAccess();
  sub_1B9F63E74(v8, v5 + v6);
  swift_endAccess();
  sub_1BA41F534();

  sub_1B9F7B644(v8);
  return sub_1B9F7B644(v9);
}

uint64_t sub_1BA1A2F9C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI28EmptyStateCollectionViewCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA1A2FF4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI28EmptyStateCollectionViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  v4 = sub_1BA1A2DFC();
  sub_1B9F68124(v1 + v3, v7);
  v5 = OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView_item;
  swift_beginAccess();
  sub_1B9F63E74(v7, v4 + v5);
  swift_endAccess();
  sub_1BA41F534();

  sub_1B9F7B644(a1);
  return sub_1B9F7B644(v7);
}

void (*sub_1BA1A30B8(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI28EmptyStateCollectionViewCell_item;
  *(v3 + 64) = v1;
  *(v3 + 72) = v4;
  swift_beginAccess();
  return sub_1BA1A3140;
}

void sub_1BA1A3140(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[8];
    v5 = v3[9];
    v6 = sub_1BA1A2DFC();
    sub_1B9F68124(v4 + v5, v3);
    v7 = OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView_item;
    swift_beginAccess();
    sub_1B9F63E74(v3, v6 + v7);
    swift_endAccess();
    sub_1BA41F534();

    sub_1B9F7B644(v3);
  }

  free(v3);
}

char *sub_1BA1A31EC(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI28EmptyStateCollectionViewCell____lazy_storage___emptyStateCellView] = 0;
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI28EmptyStateCollectionViewCell_item];
  v10 = type metadata accessor for EmptyStateCollectionViewCell();
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v24.receiver = v4;
  v24.super_class = v10;
  v11 = objc_msgSendSuper2(&v24, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 tertiarySystemFillColor];
  [v13 setBackgroundColor_];

  v15 = *MEMORY[0x1E69796E8];
  v16 = [v13 layer];
  [v16 setCornerCurve_];

  v17 = [v13 layer];
  [v17 setCornerRadius_];

  v18 = [v13 layer];
  [v18 setMaskedCorners_];

  [v13 setClipsToBounds_];
  v19 = [v13 contentView];
  v20 = sub_1BA1A2DFC();
  [v19 addSubview_];

  v21 = *&v13[OBJC_IVAR____TtC18HealthExperienceUI28EmptyStateCollectionViewCell____lazy_storage___emptyStateCellView];
  v22 = [v13 contentView];
  [v21 hk:v22 alignConstraintsWithView:?];

  return v13;
}

id EmptyStateCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmptyStateCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1BA1A3558(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI28EmptyStateCollectionViewCell_item;
  *(v3 + 64) = v1;
  *(v3 + 72) = v4;
  swift_beginAccess();
  return sub_1BA1A3140;
}

unint64_t sub_1BA1A3698()
{
  result = qword_1EBBED578;
  if (!qword_1EBBED578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBED578);
  }

  return result;
}

Swift::Void __swiftcall UIButton.setTitleWithoutAnimation(_:for:)(Swift::String_optional _, UIControlState a2)
{
  object = _.value._object;
  countAndFlagsBits = _.value._countAndFlagsBits;
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = countAndFlagsBits;
  v7[4] = object;
  v7[5] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1B9F7B15C;
  *(v8 + 24) = v7;
  v12[4] = sub_1B9F7B0CC;
  v12[5] = v8;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1B9F7B0FC;
  v12[3] = &block_descriptor_41;
  v9 = _Block_copy(v12);

  v10 = v2;

  [v6 performWithoutAnimation_];
  _Block_release(v9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

id sub_1BA1A386C(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1BA0C6900();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() buttonWithType_];
  sub_1BA4A7968();
  v8 = [objc_opt_self() systemBlueColor];
  sub_1BA4A78F8();
  sub_1BA4A7878();
  sub_1BA4A7858();
  v9 = a3;
  sub_1BA4A7958();

  sub_1BA4A7978();
  v10 = sub_1BA4A79A8();
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  sub_1BA4A79D8();
  v11 = v7;
  v12 = [v11 layer];
  [v12 setCornerRadius_];

  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  return v11;
}

void *ArrayDataSource.__allocating_init(arrangedSections:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_1B9F348D8(a1, a2, a3);

  return v6;
}

uint64_t sub_1BA1A3A7C()
{
  v1 = v0;
  if (v0[4])
  {
    v2 = v0[3];
  }

  else
  {
    sub_1BA4A7DF8();
    MEMORY[0x1BFAF1350](0xD000000000000025, 0x80000001BA4F0FB0);
    MEMORY[0x1BFAF1350](v0[5], v0[6]);
    MEMORY[0x1BFAF1350](0x6F6974636553202CLL, 0xEC000000203A736ELL);
    v3 = MEMORY[0x1BFAF1560](*(v0 + OBJC_IVAR____TtC18HealthExperienceUI15ArrayDataSource_arrangedSections), &type metadata for ArrayDataSourceSection);
    MEMORY[0x1BFAF1350](v3);

    MEMORY[0x1BFAF1350](62, 0xE100000000000000);
    v2 = 0;
    v1[3] = 0;
    v1[4] = 0xE000000000000000;
  }

  return v2;
}

uint64_t sub_1BA1A3B94(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t (*sub_1BA1A3BA4(uint64_t *a1))(void *a1)
{
  a1[2] = v1;
  *a1 = sub_1BA1A3A7C();
  a1[1] = v3;
  return sub_1BA1A3BEC;
}

uint64_t sub_1BA1A3BEC(void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  *(v1 + 24) = *a1;
  *(v1 + 32) = v2;
}

uint64_t ArrayDataSource.identifier.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_1BA1A3C30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI15ArrayDataSource_snapshot;
  swift_beginAccess();
  sub_1B9F12538();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1BA1A3CBC(uint64_t a1, uint64_t *a2)
{
  sub_1B9F12538();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, v5, v7);
  v10 = *a2;
  v11 = OBJC_IVAR____TtC18HealthExperienceUI15ArrayDataSource_snapshot;
  swift_beginAccess();
  (*(v6 + 40))(v10 + v11, v9, v5);
  return swift_endAccess();
}

uint64_t sub_1BA1A3DD4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI15ArrayDataSource_snapshot;
  swift_beginAccess();
  sub_1B9F12538();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1BA1A3E5C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI15ArrayDataSource_snapshot;
  swift_beginAccess();
  sub_1B9F12538();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t ArrayDataSource.__allocating_init(_:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  ArrayDataSource.init(_:identifier:)(a1, a2, a3);
  return v6;
}

void *ArrayDataSource.init(_:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v38 = sub_1BA4A1798();
  v8 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F15B38();
  v10 = sub_1BA4A7A78();
  v11 = objc_allocWithZone(MEMORY[0x1E696C4F8]);
  v12 = sub_1BA4A6758();
  v13 = [v11 initWithName:v12 loggingCategory:v10];

  v14 = a1;
  v4[3] = 0;
  v4[4] = 0;
  v4[2] = v13;
  sub_1BA4A45D8();
  v15 = *(a1 + 16);
  if (v15)
  {
    v32 = a2;
    v33 = a3;
    v34 = v4;
    v39 = MEMORY[0x1E69E7CC0];
    sub_1B9F277B0(0, v15, 0);
    v16 = v39;
    v35 = (v8 + 8);
    v36 = a1;
    v17 = 32;
    do
    {
      v18 = *(v14 + v17);

      v19 = v37;
      sub_1BA4A1788();
      v20 = sub_1BA4A1748();
      v22 = v21;
      (*v35)(v19, v38);

      v24 = Array<A>.identifierToIndexDict()(v23);

      v39 = v16;
      v26 = *(v16 + 16);
      v25 = *(v16 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1B9F277B0((v25 > 1), v26 + 1, 1);
        v16 = v39;
      }

      *(v16 + 16) = v26 + 1;
      v27 = (v16 + 48 * v26);
      v27[4] = 0;
      v27[5] = 0;
      v27[6] = v18;
      v27[7] = v24;
      v27[8] = v20;
      v27[9] = v22;
      v17 += 8;
      --v15;
      v14 = v36;
    }

    while (v15);

    a3 = v33;
    v4 = v34;
    a2 = v32;
  }

  else
  {

    v16 = MEMORY[0x1E69E7CC0];
  }

  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI15ArrayDataSource_arrangedSections) = v16;

  v29 = Array<A>.identifierToIndexDict()(v28);

  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI15ArrayDataSource_arrangedSectionsIdentifierToIndexMap) = v29;
  v4[5] = a2;
  v4[6] = a3;

  sub_1B9F34BA0(v30);

  return v4;
}

uint64_t sub_1BA1A4294@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  sub_1B9F12538();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC18HealthExperienceUI15ArrayDataSource_snapshot;
  swift_beginAccess();
  (*(v10 + 16))(v12, v4 + v13, v9);
  *&v33 = a1;
  *(&v33 + 1) = a2;
  sub_1BA4A4568();
  result = (*(v10 + 8))(v12, v9);
  if (v28)
  {
    v15 = *(v4 + OBJC_IVAR____TtC18HealthExperienceUI15ArrayDataSource_arrangedSectionsIdentifierToIndexMap);
    if (*(v15 + 16))
    {
      v16 = sub_1B9F24A34(v27, v28);
      v18 = v17;

      if (v18)
      {
        v19 = *(*(v15 + 56) + 8 * v16);
        if ((v19 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else
        {
          v20 = *(v4 + OBJC_IVAR____TtC18HealthExperienceUI15ArrayDataSource_arrangedSections);
          if (v19 < *(v20 + 16))
          {
            v21 = (v20 + 48 * v19);
            v22 = v21[5];
            v23 = v21[6];
            v24 = v21[7];
            v25 = v21[8];
            v26 = v21[9];
            v27 = v21[4];
            v28 = v22;
            v29 = v23;
            v30 = v24;
            v31 = v25;
            v32 = v26;

            ArrayDataSourceSection.item(for:)(a1, a2, &v33);

            if (v34)
            {
              return sub_1B9F25598(&v33, a3);
            }

            result = sub_1B9FCD638(&v33);
            goto LABEL_10;
          }
        }

        __break(1u);
        return result;
      }
    }

    else
    {
    }
  }

LABEL_10:
  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t ArrayDataSource.deinit()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI15ArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t ArrayDataSource.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI15ArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA1A481C(char a1)
{
  sub_1BA4A8488();
  if (a1)
  {
    v2 = 0x4046000000000000;
  }

  else
  {
    v2 = 0x4055800000000000;
  }

  MEMORY[0x1BFAF2F00](v2);
  return sub_1BA4A84D8();
}

uint64_t sub_1BA1A4874()
{
  sub_1BA4A8488();
  sub_1B9F0ADF8(0, &qword_1EDC5E0C0);
  v0 = sub_1BA4A77C8();
  sub_1BA4A77A8();

  return sub_1BA4A84D8();
}

uint64_t sub_1BA1A491C()
{
  sub_1BA4A8488();
  sub_1B9F0ADF8(0, &qword_1EDC5E0C0);
  v0 = sub_1BA4A77C8();
  sub_1BA4A77A8();

  return sub_1BA4A84D8();
}

uint64_t sub_1BA1A49C4(uint64_t a1, char a2)
{
  sub_1BA4A8488();
  if (a2)
  {
    v3 = 0x4046000000000000;
  }

  else
  {
    v3 = 0x4055800000000000;
  }

  MEMORY[0x1BFAF2F00](v3);
  return sub_1BA4A84D8();
}

BOOL sub_1BA1A4A18(_BYTE *a1, _BYTE *a2)
{
  v2 = 86.0;
  if (*a1)
  {
    v3 = 44.0;
  }

  else
  {
    v3 = 86.0;
  }

  if (*a2)
  {
    v2 = 44.0;
  }

  return v3 == v2;
}

uint64_t sub_1BA1A4A58()
{
  if (*v0)
  {
    v1 = 0x4046000000000000;
  }

  else
  {
    v1 = 0x4055800000000000;
  }

  return MEMORY[0x1BFAF2F00](v1);
}

double *sub_1BA1A4AA0@<X0>(double *result@<X0>, char *a2@<X8>)
{
  if (*result == 44.0)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 86.0)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

void sub_1BA1A4AD4(double *a1@<X8>)
{
  v2 = 86.0;
  if (*v1)
  {
    v2 = 44.0;
  }

  *a1 = v2;
}

void sub_1BA1A4B98(void **a1@<X0>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  sub_1B9F3D608(0, &qword_1EDC5F428, sub_1B9F3C928, MEMORY[0x1E695C000]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - v9;
  sub_1B9F3DE4C(0, &unk_1EDC5F410, MEMORY[0x1E695C010]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v22 - v14;
  v16 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    if (v16)
    {
      v22 = v16;
      sub_1B9F3C928();
      v19 = v16;
      sub_1BA4A4E78();
      sub_1BA07003C();
      v20 = sub_1BA4A4F98();

      (*(v8 + 8))(v10, v7);
    }

    else
    {
      v22 = sub_1BA1A4ED0(a2);
      v21 = MEMORY[0x1E695BED0];
      sub_1B9F3DE4C(0, &qword_1EDC5F490, MEMORY[0x1E695BED0]);
      sub_1B9F3DED0(&qword_1EDC5F498, &qword_1EDC5F490, v21);
      v20 = sub_1BA4A4F98();
    }
  }

  else
  {
    sub_1B9F3C928();
    sub_1BA4A4E88();
    sub_1B9F3DED0(&qword_1EBBEAD38, &unk_1EDC5F410, MEMORY[0x1E695C010]);
    v20 = sub_1BA4A4F98();
    (*(v13 + 8))(v15, v12);
  }

  *a3 = v20;
}

uint64_t sub_1BA1A4ED0(void *a1)
{
  v57 = a1;
  v69 = MEMORY[0x1E69E8050];
  v68 = MEMORY[0x1E69E6720];
  sub_1B9F3D608(0, &qword_1EDC6B5B8, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v65 = v54 - v2;
  sub_1BA1A64F0();
  v71 = v3;
  v73 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v66 = v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA1A6B14();
  v72 = v5;
  v74 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v67 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA1A6668();
  v8 = *(v7 - 8);
  v61 = v7;
  v62 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v58 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA1A65BC();
  v63 = v10;
  v70 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v59 = v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA1A6754();
  v75 = v12;
  v56 = *(v12 - 8);
  v13 = *(v56 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v55 = v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v76 = v54 - v15;
  v16 = sub_1BA4A7488();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA1A6A74();
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v24 = v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA1A6860();
  v77 = v25;
  v64 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = [objc_opt_self() defaultCenter];
  v28 = sub_1BA4A73C8();
  sub_1BA4A7498();

  sub_1B9F3DBF4(&unk_1EDC6B560, MEMORY[0x1E6969F20]);
  sub_1BA4A4FE8();
  (*(v17 + 8))(v19, v16);
  v54[1] = MEMORY[0x1E695BD60];
  sub_1B9F3DBF4(&qword_1EDC5F610, sub_1BA1A6A74);
  v54[0] = v27;
  sub_1BA4A5098();
  (*(v22 + 8))(v24, v21);
  v29 = swift_allocObject();
  v30 = v57;
  *(v29 + 16) = v57;
  sub_1BA1A67E8();
  sub_1B9F3DBF4(&unk_1EDC5F3A0, sub_1BA1A67E8);
  v31 = v30;
  v32 = v76;
  sub_1BA4A4EC8();
  v33 = v56;
  v34 = v55;
  v35 = v75;
  (*(v56 + 16))(v55, v32, v75);
  v36 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v37 = swift_allocObject();
  (*(v33 + 32))(v37 + v36, v34, v35);
  v38 = swift_allocObject();
  *(v38 + 16) = sub_1BA1A6BC8;
  *(v38 + 24) = v37;
  sub_1BA4A4D08();
  sub_1B9F3DBF4(&qword_1EDC5F6D0, sub_1BA1A6860);
  sub_1B9F3DBF4(&qword_1EDC5F380, sub_1BA1A6754);
  v39 = v58;
  sub_1BA4A5178();

  sub_1B9F1D284();
  sub_1B9F3DBF4(&qword_1EDC5F590, sub_1BA1A6668);
  v40 = v59;
  v41 = v61;
  sub_1BA4A4FE8();
  (*(v62 + 8))(v39, v41);
  v78 = v31;
  v42 = sub_1BA4A72A8();
  v43 = v65;
  (*(*(v42 - 8) + 56))(v65, 1, 1, v42);
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  sub_1B9F3DBF4(&qword_1EDC5F658, sub_1BA1A65BC);
  sub_1B9F3DC80();
  v44 = v66;
  v45 = v63;
  v46 = v40;
  sub_1BA4A50A8();
  sub_1B9F0DCE0(v43, &qword_1EDC6B5B8, v69, v68, sub_1B9F3D608);
  v47 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v48 = swift_allocObject();
  *(v48 + 16) = sub_1BA1A6C64;
  *(v48 + 24) = v47;
  sub_1B9F3C928();
  sub_1B9F3DBF4(&qword_1EDC5F510, sub_1BA1A64F0);
  v49 = v67;
  v50 = v71;
  sub_1BA4A4FE8();

  (*(v73 + 8))(v44, v50);
  sub_1B9F3DBF4(&qword_1EDC5F620, sub_1BA1A6B14);
  v51 = v72;
  v52 = sub_1BA4A4F98();

  (*(v74 + 8))(v49, v51);
  (*(v70 + 8))(v46, v45);
  (*(v33 + 8))(v76, v75);
  (*(v64 + 8))(v54[0], v77);
  return v52;
}

uint64_t sub_1BA1A59FC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  *(swift_allocObject() + 16) = a1;
  sub_1BA1A67E8();
  swift_allocObject();
  v4 = a1;
  result = sub_1BA4A4EA8();
  *a2 = result;
  return result;
}

uint64_t sub_1BA1A5A84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA4A6478();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A64C8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1BA08FD3C;
  *(v13 + 24) = v12;
  aBlock[4] = sub_1BA1A6CB0;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = &block_descriptor_42;
  v14 = _Block_copy(aBlock);

  sub_1BA4A64A8();
  v16[1] = MEMORY[0x1E69E7CC0];
  sub_1B9F3DBF4(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60]);
  sub_1B9F3D608(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1B9F31534();
  sub_1BA4A7C38();
  MEMORY[0x1BFAF1D50](0, v11, v7, v14);
  _Block_release(v14);
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
}

void sub_1BA1A5D78(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v7[4] = sub_1BA1A6CB8;
  v7[5] = v5;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1BA0B06D4;
  v7[3] = &block_descriptor_43;
  v6 = _Block_copy(v7);

  [v4 hk:v6 fetchExistingDemographicInformationWithCompletion:?];
  _Block_release(v6);
}

void sub_1BA1A5E78(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = [*a1 firstName];
  v5 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v7 = v6;

  *a2 = v5;
  a2[1] = v7;
  v8 = [v3 lastName];
  v9 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v11 = v10;

  a2[2] = v9;
  a2[3] = v11;
}

uint64_t sub_1BA1A5F0C()
{
  v0 = sub_1BA4A2F18();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v5 = Strong;
  sub_1BA4A2F08();
  v6 = sub_1BA4A2EF8();

  (*(v1 + 8))(v3, v0);
  return v6;
}

void sub_1BA1A61D0()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
  sub_1BA4A22B8();
  v3 = v2;
  v4 = sub_1BA4A22A8();
  v5 = objc_allocWithZone(type metadata accessor for ProfileViewController());
  v11 = v3;

  v6 = sub_1BA249DB8(v11, v4, v5);

  v7 = [objc_allocWithZone(MEMORY[0x1E69A4420]) initWithRootViewController_];
  v8 = [v7 navigationBar];
  [v8 setPrefersLargeTitles_];

  v9 = [v1 viewController];
  if (v9)
  {
    v10 = v9;
    [v9 presentViewController:v7 animated:1 completion:0];
  }
}

id sub_1BA1A63EC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_1BA1A649C()
{
  result = qword_1EBBED5B8;
  if (!qword_1EBBED5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBED5B8);
  }

  return result;
}

void sub_1BA1A64F0()
{
  if (!qword_1EDC5F508)
  {
    sub_1BA1A65BC();
    sub_1B9F0ADF8(255, &qword_1EDC6B5A0);
    sub_1B9F3DBF4(&qword_1EDC5F658, sub_1BA1A65BC);
    sub_1B9F3DC80();
    v0 = sub_1BA4A4CC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F508);
    }
  }
}

void sub_1BA1A65BC()
{
  if (!qword_1EDC5F650)
  {
    sub_1BA1A6668();
    sub_1B9F1D284();
    sub_1B9F3DBF4(&qword_1EDC5F590, sub_1BA1A6668);
    v0 = sub_1BA4A4B78();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F650);
    }
  }
}

void sub_1BA1A6668()
{
  if (!qword_1EDC5F588)
  {
    sub_1BA1A6754();
    sub_1BA1A6860();
    sub_1B9F3DBF4(&qword_1EDC5F380, sub_1BA1A6754);
    sub_1B9F3DBF4(&qword_1EDC5F6D0, sub_1BA1A6860);
    v0 = sub_1BA4A4C28();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F588);
    }
  }
}

void sub_1BA1A6754()
{
  if (!qword_1EDC5F378)
  {
    sub_1BA1A67E8();
    sub_1B9F3DBF4(&unk_1EDC5F3A0, sub_1BA1A67E8);
    v0 = sub_1BA4A4ED8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F378);
    }
  }
}

void sub_1BA1A67E8()
{
  if (!qword_1EDC5F398)
  {
    sub_1B9F0ADF8(255, &unk_1EDC5E240);
    v0 = sub_1BA4A4E98();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F398);
    }
  }
}

void sub_1BA1A6860()
{
  if (!qword_1EDC5F6C8)
  {
    sub_1BA1A694C();
    sub_1BA1A6A74();
    sub_1B9F3DBF4(&qword_1EDC5F560, sub_1BA1A694C);
    sub_1B9F3DBF4(&qword_1EDC5F610, sub_1BA1A6A74);
    v0 = sub_1BA4A4AF8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F6C8);
    }
  }
}

void sub_1BA1A694C()
{
  if (!qword_1EDC5F558)
  {
    sub_1B9F23434(255, &qword_1EDC5E5F0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E62F8]);
    sub_1BA1A69F4();
    v0 = sub_1BA4A4C98();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F558);
    }
  }
}

unint64_t sub_1BA1A69F4()
{
  result = qword_1EDC5E5E8;
  if (!qword_1EDC5E5E8)
  {
    sub_1B9F23434(255, &qword_1EDC5E5F0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5E5E8);
  }

  return result;
}

void sub_1BA1A6A74()
{
  if (!qword_1EDC5F608)
  {
    sub_1BA4A7488();
    sub_1B9F3DBF4(&unk_1EDC6B560, MEMORY[0x1E6969F20]);
    v0 = sub_1BA4A4B78();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F608);
    }
  }
}

void sub_1BA1A6B14()
{
  if (!qword_1EDC5F618)
  {
    sub_1BA1A64F0();
    sub_1B9F3C928();
    sub_1B9F3DBF4(&qword_1EDC5F510, sub_1BA1A64F0);
    v0 = sub_1BA4A4B78();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F618);
    }
  }
}

uint64_t sub_1BA1A6BC8@<X0>(uint64_t a1@<X8>)
{
  sub_1BA1A6754();
  v4 = *(v3 - 8);
  v5 = *(v4 + 16);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return v5(a1, v6, v3);
}

uint64_t sub_1BA1A6C6C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1], a1[2], a1[3]);
  *a2 = result;
  return result;
}

uint64_t AdvertisableFeaturePostCommitWorkItemViewControllerFactory.__allocating_init(healthStore:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

char *sub_1BA1A6D34(uint64_t a1)
{
  v3 = sub_1BA4A3448();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v4 + 16))(v7, a1, v3, v5);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == *MEMORY[0x1E69A3468] || v8 != *MEMORY[0x1E69A3470])
  {
    (*(v4 + 8))(v7, v3);
    return 0;
  }

  else
  {
    v9 = *(v1 + 16);
    v10 = objc_allocWithZone(type metadata accessor for AdvertisableFeatureMedicationsThatAffectHeartRateViewController());
    *&v10[OBJC_IVAR____TtC18HealthExperienceUI63AdvertisableFeatureMedicationsThatAffectHeartRateViewController_navigationDelegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v16[0] = 1;
    v11 = v9;
    v12 = sub_1BA002450(v11, v16, 0);

    v13 = &v12[OBJC_IVAR____TtC18HealthExperienceUI50MedicationsAffectHeartRateOnboardingViewController_delegate];
    swift_beginAccess();
    *(v13 + 1) = &off_1F380B9D0;
    swift_unknownObjectWeakAssign();
    return v12;
  }
}

uint64_t AdvertisableFeaturePostCommitWorkItemViewControllerFactory.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_1BA1A6FBC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AdvertisableFeatureMedicationsThatAffectHeartRateViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA1A7050(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC18HealthExperienceUI63AdvertisableFeatureMedicationsThatAffectHeartRateViewController_navigationDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1BA1A70BC(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC18HealthExperienceUI63AdvertisableFeatureMedicationsThatAffectHeartRateViewController_navigationDelegate;
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

uint64_t sub_1BA1A715C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69A3470];
  v3 = sub_1BA4A3448();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1BA1A71D0()
{
  v1 = v0 + OBJC_IVAR____TtC18HealthExperienceUI63AdvertisableFeatureMedicationsThatAffectHeartRateViewController_navigationDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(v0, &off_1F380B9A8, ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BA1A7340(uint64_t a1, uint64_t *a2)
{
  sub_1B9F68124(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI26MultipleItemsCardStackCell_item;
  swift_beginAccess();
  sub_1BA176B88(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_1BA1A73A4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI26MultipleItemsCardStackCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA1A73FC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI26MultipleItemsCardStackCell_item;
  swift_beginAccess();
  sub_1BA176B88(a1, v1 + v3);
  return swift_endAccess();
}

id MultipleItemsCardStackCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *MultipleItemsCardStackCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  sub_1B9F0D2C8(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v26 - v10;
  v12 = &v4[OBJC_IVAR____TtC18HealthExperienceUI26MultipleItemsCardStackCell_item];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 4) = 0;
  v13 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI26MultipleItemsCardStackCell_cardStackView] = v13;
  v14 = type metadata accessor for MultipleItemsCardStackCell();
  v26.receiver = v4;
  v26.super_class = v14;
  v15 = objc_msgSendSuper2(&v26, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1BA4A4148();
  v16 = sub_1BA4A4168();
  (*(*(v16 - 8) + 56))(v11, 0, 1, v16);
  MEMORY[0x1BFAF1F10](v11);
  v17 = *&v15[OBJC_IVAR____TtC18HealthExperienceUI26MultipleItemsCardStackCell_cardStackView];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  v18 = [objc_opt_self() tertiarySystemBackgroundColor];
  v19 = [v18 colorWithAlphaComponent_];

  [v17 setBackgroundColor_];
  v20 = *MEMORY[0x1E69796E8];
  v21 = [v17 layer];
  [v21 setCornerCurve_];

  v22 = [v17 layer];
  [v22 setCornerRadius_];

  v23 = [v17 layer];
  [v23 setMaskedCorners_];

  [v17 setClipsToBounds_];
  v24 = [v15 contentView];
  [v24 addSubview_];

  sub_1BA1A80F0();
  sub_1BA1A7DF0();

  return v15;
}

id sub_1BA1A78B4(void *a1)
{
  sub_1B9F0D2C8(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v22 - v4;
  v6 = &v1[OBJC_IVAR____TtC18HealthExperienceUI26MultipleItemsCardStackCell_item];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  v7 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI26MultipleItemsCardStackCell_cardStackView] = v7;
  v8 = type metadata accessor for MultipleItemsCardStackCell();
  v22.receiver = v1;
  v22.super_class = v8;
  v9 = objc_msgSendSuper2(&v22, sel_initWithCoder_, a1);
  v10 = v9;
  if (v9)
  {
    v11 = v9;
    sub_1BA4A4148();
    v12 = sub_1BA4A4168();
    (*(*(v12 - 8) + 56))(v5, 0, 1, v12);
    MEMORY[0x1BFAF1F10](v5);
    v13 = *&v11[OBJC_IVAR____TtC18HealthExperienceUI26MultipleItemsCardStackCell_cardStackView];
    [v13 setTranslatesAutoresizingMaskIntoConstraints_];
    v14 = [objc_opt_self() tertiarySystemBackgroundColor];
    v15 = [v14 colorWithAlphaComponent_];

    [v13 setBackgroundColor_];
    v16 = *MEMORY[0x1E69796E8];
    v17 = [v13 layer];
    [v17 setCornerCurve_];

    v18 = [v13 layer];
    [v18 setCornerRadius_];

    v19 = [v13 layer];
    [v19 setMaskedCorners_];

    [v13 setClipsToBounds_];
    v20 = [v11 contentView];
    [v20 addSubview_];

    sub_1BA1A80F0();
    sub_1BA1A7DF0();
  }

  return v10;
}

void sub_1BA1A7B94()
{
  sub_1B9F0D2C8(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v13 - v2;
  sub_1BA4A4148();
  v4 = sub_1BA4A4168();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  MEMORY[0x1BFAF1F10](v3);
  v5 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI26MultipleItemsCardStackCell_cardStackView];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  v6 = [objc_opt_self() tertiarySystemBackgroundColor];
  v7 = [v6 colorWithAlphaComponent_];

  [v5 setBackgroundColor_];
  v8 = *MEMORY[0x1E69796E8];
  v9 = [v5 layer];
  [v9 setCornerCurve_];

  v10 = [v5 layer];
  [v10 setCornerRadius_];

  v11 = [v5 layer];
  [v11 setMaskedCorners_];

  [v5 setClipsToBounds_];
  v12 = [v0 contentView];
  [v12 addSubview_];

  sub_1BA1A80F0();
  sub_1BA1A7DF0();
}

void sub_1BA1A7DF0()
{
  v1 = v0;
  v2 = objc_opt_self();
  sub_1B9F109F8();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BA4B5880;
  v4 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI26MultipleItemsCardStackCell_cardStackView];
  v5 = [v4 leadingAnchor];
  v6 = [v1 contentView];
  v7 = [v6 leadingAnchor];

  v8 = [v5 constraintEqualToAnchor:v7 constant:26.0];
  *(v3 + 32) = v8;
  v9 = [v1 contentView];
  v10 = [v9 trailingAnchor];

  v11 = [v4 trailingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:26.0];

  *(v3 + 40) = v12;
  v13 = [v4 heightAnchor];
  v14 = [v13 constraintEqualToConstant_];

  *(v3 + 48) = v14;
  v15 = [v4 topAnchor];
  v16 = [v1 contentView];
  v17 = [v16 topAnchor];

  v18 = [v15 constraintEqualToAnchor:v17 constant:10.0];
  *(v3 + 56) = v18;
  v19 = [v1 contentView];
  v20 = [v19 bottomAnchor];

  v21 = [v4 bottomAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:-36.0];

  *(v3 + 64) = v22;
  sub_1B9F740B0();
  v23 = sub_1BA4A6AE8();

  [v2 activateConstraints_];
}

void sub_1BA1A80F0()
{
  v1 = [v0 layer];
  v2 = [objc_opt_self() blackColor];
  v3 = [v2 CGColor];

  [v1 setShadowColor_];
  v4 = [v0 layer];
  [v4 setShadowOffset_];

  v5 = [v0 layer];
  [v5 setShadowRadius_];

  v6 = [v0 layer];
  LODWORD(v7) = 1045220557;
  [v6 setShadowOpacity_];

  v8 = [v0 layer];
  [v8 setMasksToBounds_];

  v9 = [v0 contentView];
  [v9 setClipsToBounds_];
}

id MultipleItemsCardStackCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MultipleItemsCardStackCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MultipleItemsCardStackItem.reuseIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MultipleItemsCardStackItem.reuseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MultipleItemsCardStackItem.uniqueIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MultipleItemsCardStackItem.uniqueIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t static MultipleItemsCardStackItem.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1BA4A8338(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1BA4A8338();
    }
  }

  return result;
}

uint64_t MultipleItemsCardStackItem.hash(into:)()
{
  sub_1BA4A68C8();

  return sub_1BA4A68C8();
}

uint64_t MultipleItemsCardStackItem.hashValue.getter()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();
  sub_1BA4A68C8();
  return sub_1BA4A84D8();
}

uint64_t sub_1BA1A85E4(uint64_t a1)
{
  v2 = sub_1BA1A8750();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

unint64_t sub_1BA1A8638()
{
  result = qword_1EBBED5D8;
  if (!qword_1EBBED5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBED5D8);
  }

  return result;
}

unint64_t sub_1BA1A8750()
{
  result = qword_1EDC65498;
  if (!qword_1EDC65498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC65498);
  }

  return result;
}

void sub_1BA1A87A4(void *a1)
{
  v1 = [a1 navigationController];
  if (v1)
  {
    v2 = v1;
  }
}

void sub_1BA1A8818(uint64_t a1, id a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  if (!*(a1 + 16))
  {
    if (!*(*(v2 + OBJC_IVAR____TtC18HealthExperienceUI25ProfileCompoundDataSource_privacyDataSource) + OBJC_IVAR____TtC18HealthExperienceUI17PrivacyDataSource_researchStudiesItem))
    {
      return;
    }

    sub_1BA395AC0(a2, v5, v4, 0);
    goto LABEL_21;
  }

  if (*(a1 + 16) == 1)
  {
    v6 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI25ProfileCompoundDataSource_privacyDataSource);
    v7 = [a2 navigationController];
    v8 = *(v6 + OBJC_IVAR____TtC18HealthExperienceUI17PrivacyDataSource_appSourcesItem);
    if (v8)
    {
      if (!v7)
      {
        return;
      }

      v24 = v7;
      v9 = *(v8 + 72);

      v10 = [v9 viewControllerFactory];
      if (v4)
      {
        v11 = sub_1BA4A6758();
      }

      else
      {
        v11 = 0;
      }

      v23 = [v10 createSingleAppAuthorizationViewControllerUsingInsetStyling:1 restorationApplicationBundleIdentifier:{v11, v24}];

      [v26 pushViewController:v23 animated:0];
      goto LABEL_21;
    }
  }

  else
  {
    v12 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI25ProfileCompoundDataSource_medicalDetailsDataSource);
    if (!(v5 | v4))
    {
      v17 = *(*(v12 + OBJC_IVAR____TtC18HealthExperienceUI24MedicalDetailsDataSource_characteristicsDataSourceItem) + 104);

      v18 = v17;
      UIViewController.resolvedHealthExperienceStore.getter(v27);
      v19 = objc_allocWithZone(type metadata accessor for ProfileCharacteristicsWithAutoAvatarImageViewController());
      v20 = sub_1BA06F854(v18, v27);

      [v20 setAccessType_];
      v21 = [a2 navigationController];
      if (v21)
      {
        v22 = v21;
        [v21 pushViewController:v20 animated:0];
      }

LABEL_21:

      return;
    }

    v13 = *(v12 + OBJC_IVAR____TtC18HealthExperienceUI24MedicalDetailsDataSource_medicalIDDataSourceItem);
    if (!v13)
    {
      return;
    }

    v14 = *&v13[OBJC_IVAR____TtC18HealthExperienceUI23MedicalIDDataSourceItem_presentingViewController];
    *&v13[OBJC_IVAR____TtC18HealthExperienceUI23MedicalIDDataSourceItem_presentingViewController] = a2;
    v25 = v13;
    v15 = a2;

    v16 = sub_1BA4A2968();
    sub_1BA168388(v16, 0);
    sub_1BA1698F8(v16);
    v7 = v25;
  }
}

uint64_t sub_1BA1A8B1C()
{
}

uint64_t sub_1BA1A8B9C()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1BA1A8CAC()
{
  sub_1BA1A8B9C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ProfileCompoundDataSource()
{
  result = qword_1EBBED678;
  if (!qword_1EBBED678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA1A8DB0()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBED5E0 = result;
  *algn_1EBBED5E8 = v1;
  return result;
}

uint64_t sub_1BA1A8E78()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBED5F0 = result;
  *algn_1EBBED5F8 = v1;
  return result;
}

uint64_t sub_1BA1A8F48()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBED600 = result;
  *algn_1EBBED608 = v1;
  return result;
}

uint64_t sub_1BA1A900C()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBED610 = result;
  *algn_1EBBED618 = v1;
  return result;
}

uint64_t sub_1BA1A90CC()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBED620 = result;
  *algn_1EBBED628 = v1;
  return result;
}

uint64_t sub_1BA1A9194()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBED630 = result;
  *algn_1EBBED638 = v1;
  return result;
}

uint64_t sub_1BA1A9260()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBED640 = result;
  *algn_1EBBED648 = v1;
  return result;
}

uint64_t sub_1BA1A9328(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1BA4A6B08();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_1BA1A93C0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BA4A1798();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35[3] = type metadata accessor for MemorySharingParticipantDataSourceCache();
  v35[4] = &off_1F38167E8;
  v35[0] = a2;
  *(a3 + OBJC_IVAR____TtC18HealthExperienceUI28SharingParticipantDataSource_sharingParticipants) = 0;
  v10 = OBJC_IVAR____TtC18HealthExperienceUI28SharingParticipantDataSource_lastKnownSharingState;
  *(a3 + OBJC_IVAR____TtC18HealthExperienceUI28SharingParticipantDataSource_lastKnownSharingState) = 0;
  v11 = (a3 + OBJC_IVAR____TtC18HealthExperienceUI28SharingParticipantDataSource_updateHandler);
  *v11 = 0;
  v11[1] = 0;
  v12 = [a1 profileIdentifier];
  v13 = [v12 type];

  if (v13 == 1)
  {
    *(a3 + OBJC_IVAR____TtC18HealthExperienceUI28SharingParticipantDataSource_healthStore) = a1;
    sub_1B9F0A534(v35, a3 + OBJC_IVAR____TtC18HealthExperienceUI28SharingParticipantDataSource_resultsCache);
    v14 = objc_allocWithZone(MEMORY[0x1E696C000]);
    v15 = a1;
    v16 = [v14 initWithHealthStore_];
    *(a3 + OBJC_IVAR____TtC18HealthExperienceUI28SharingParticipantDataSource_cloudShareSyncManager) = v16;
    v17 = [v16 lastKnownParticipantSharingStatus];
    *(a3 + v10) = v17;
    if (v17 == 1)
    {
      sub_1B9F1C048(0, &qword_1EDC5DC90);
      v18 = swift_allocObject();
      v33 = xmmword_1BA4B5480;
      *(v18 + 16) = xmmword_1BA4B5480;
      sub_1BA1AA238(0, &qword_1EDC5DCA0, sub_1B9F32244, MEMORY[0x1E69E6F90]);
      v19 = swift_allocObject();
      *(v19 + 16) = v33;
      *(v19 + 56) = &type metadata for EmptyStateCollectionViewCellItem;
      *(v19 + 64) = sub_1BA02090C();
      v20 = swift_allocObject();
      *(v19 + 32) = v20;
      aBlock[0] = type metadata accessor for EmptyStateCollectionViewCell();
      sub_1B9F34708();
      *(v20 + 16) = sub_1BA4A6808();
      *(v20 + 24) = v21;
      *(v20 + 32) = xmmword_1BA4C3370;
      *(v20 + 48) = 1;
      sub_1BA4A1788();
      v22 = sub_1BA4A1748();
      v24 = v23;
      (*(v7 + 8))(v9, v6);
      sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);

      v26 = Array<A>.identifierToIndexDict()(v25);

      v27 = v18;
      *(v18 + 32) = 0;
      *(v18 + 40) = 0;
      *(v18 + 48) = v19;
      *(v18 + 56) = v26;
      *(v18 + 64) = v22;
      *(v18 + 72) = v24;
    }

    else
    {
      v27 = MEMORY[0x1E69E7CC0];
    }

    v28 = sub_1B9F1DAFC(v27, 1, sub_1BA3153B0, 0);
    sub_1BA3155E0();
    v29 = *(v28 + OBJC_IVAR____TtC18HealthExperienceUI28SharingParticipantDataSource_cloudShareSyncManager);
    v30 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1BA1AA230;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BA1A9328;
    aBlock[3] = &block_descriptor_43;
    v31 = _Block_copy(aBlock);

    [v29 fetchAllShareParticipantEmailAddressesForSharingType:1 completion:v31];
    _Block_release(v31);

    __swift_destroy_boxed_opaque_existential_1(v35);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v35);

    sub_1B9F0E310(*v11);
    type metadata accessor for SharingParticipantDataSource();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v28;
}

uint64_t sub_1BA1A9848(void *a1, void *a2)
{
  v3 = v2;
  sub_1BA1AA238(0, &qword_1EDC6E200, MEMORY[0x1E69A3108], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v84 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v79 - v9;
  v11 = a2;
  v12 = [a1 profileIdentifier];
  type metadata accessor for ProfileAvatarDataSource();
  swift_allocObject();
  v13 = ProfileAvatarDataSource.init(context:profileIdentifier:layoutConstructor:shouldDisplayName:)(v11, v12, sub_1BA03A208, 0, 1);
  v14 = OBJC_IVAR____TtC18HealthExperienceUI25ProfileCompoundDataSource_profileHeaderDataSource;
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI25ProfileCompoundDataSource_profileHeaderDataSource) = v13;

  v85 = v10;
  sub_1BA1F8E68(v10);

  type metadata accessor for MedicalDetailsDataSource();
  swift_allocObject();
  v15 = a1;
  v16 = sub_1BA2AD710(v15);

  v17 = OBJC_IVAR____TtC18HealthExperienceUI25ProfileCompoundDataSource_medicalDetailsDataSource;
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI25ProfileCompoundDataSource_medicalDetailsDataSource) = v16;
  type metadata accessor for FeaturesDataSource();
  swift_allocObject();
  v18 = v15;
  v19 = sub_1BA3B8C84(v18);
  v20 = OBJC_IVAR____TtC18HealthExperienceUI25ProfileCompoundDataSource_featuresDataSource;
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI25ProfileCompoundDataSource_featuresDataSource) = v19;
  type metadata accessor for PrivacyDataSource();
  swift_allocObject();
  v21 = v18;
  v22 = sub_1BA07E1D8(v21);

  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI25ProfileCompoundDataSource_privacyDataSource) = v22;
  type metadata accessor for ExportDataSource();
  swift_allocObject();
  v23 = v21;
  v24 = sub_1BA14DE54(v23);
  v25 = OBJC_IVAR____TtC18HealthExperienceUI25ProfileCompoundDataSource_exportDataSource;
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI25ProfileCompoundDataSource_exportDataSource) = v24;
  type metadata accessor for CloudSyncDataSource();
  swift_allocObject();
  v26 = v23;
  v27 = sub_1BA05B494(v26);
  v83 = OBJC_IVAR____TtC18HealthExperienceUI25ProfileCompoundDataSource_cloudSyncDataSource;
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI25ProfileCompoundDataSource_cloudSyncDataSource) = v27;
  sub_1B9F1C048(0, &qword_1EDC6B400);
  v28 = swift_allocObject();
  v29 = *(v3 + v14);
  v30 = *(v3 + v17);
  *(v28 + 16) = xmmword_1BA4B7510;
  *(v28 + 32) = v29;
  *(v28 + 40) = v30;
  v97 = v28;
  v86 = v3;
  if (*(v3 + v20))
  {
    swift_retain_n();

    MEMORY[0x1BFAF1510](v31);
    if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BA4A6B68();
    }

    sub_1BA4A6BB8();
  }

  else
  {
  }

  v32 = v86;

  MEMORY[0x1BFAF1510](v33);
  if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BA4A6B68();
  }

  sub_1BA4A6BB8();
  v34 = v97;
  v35 = type metadata accessor for MemorySharingParticipantDataSourceCache();
  inited = swift_initStaticObject();
  *(&v99 + 1) = v35;
  *&v100 = &off_1F38167E8;
  *&v98 = inited;
  type metadata accessor for SharingParticipantDataSource();
  v37 = swift_allocObject();
  v38 = __swift_mutable_project_boxed_opaque_existential_1(&v98, v35);
  v39 = MEMORY[0x1EEE9AC00](v38);
  v41 = (&v79 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v42 + 16))(v41, v39);
  v43 = *v41;
  v81 = v26;
  v44 = sub_1BA1A93C0(v81, v43, v37);
  __swift_destroy_boxed_opaque_existential_1(&v98);
  if (v44)
  {

    MEMORY[0x1BFAF1510](v45);
    if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BA4A6B68();
    }

    sub_1BA4A6BB8();

    v34 = v97;
  }

  if (*(v32 + v25))
  {
    v46 = swift_retain_n();
    MEMORY[0x1BFAF1510](v46);
    if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BA4A6B68();
    }

    sub_1BA4A6BB8();

    v34 = v97;
  }

  if (qword_1EBBE8490 != -1)
  {
    swift_once();
  }

  v47 = *algn_1EBBED628;
  v80 = qword_1EBBED620;
  v48 = qword_1EBBE8498;

  if (v48 != -1)
  {
    swift_once();
  }

  v82 = v34;
  v49 = qword_1EBBED630;
  v50 = *algn_1EBBED638;
  v51 = qword_1EBBE84A0;

  if (v51 != -1)
  {
    swift_once();
  }

  v52 = qword_1EBBED640;
  v53 = *algn_1EBBED648;
  v54 = qword_1EBBE8480;

  if (v54 != -1)
  {
    swift_once();
  }

  v56 = qword_1EBBED600;
  v55 = *algn_1EBBED608;
  v57 = qword_1EBBE8488;

  if (v57 != -1)
  {
    swift_once();
  }

  *&v91 = v80;
  *(&v91 + 1) = v47;
  *&v92 = v49;
  *(&v92 + 1) = v50;
  *&v93 = v52;
  *(&v93 + 1) = v53;
  *&v94 = v56;
  *(&v94 + 1) = v55;
  v95 = xmmword_1EBBED610;
  *&v96 = sub_1BA1A87A4;
  *(&v96 + 1) = 0;
  v98 = v91;
  v99 = v92;
  v102 = xmmword_1EBBED610;
  v103 = v96;
  v100 = v93;
  v101 = v94;
  v58 = v84;
  v59 = v85;
  sub_1BA06FE18(v85, v84);
  v60 = sub_1BA4A2888();
  v61 = *(v60 - 8);
  if ((*(v61 + 48))(v58, 1, v60) == 1)
  {

    sub_1BA06F9D0(v58);
    v88 = 0u;
    v89 = 0u;
    v90 = 0;
  }

  else
  {
    *(&v89 + 1) = v60;
    v90 = MEMORY[0x1E69A30F0];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v88);
    (*(v61 + 32))(boxed_opaque_existential_1, v58, v60);
  }

  if (qword_1EBBE8470 != -1)
  {
    swift_once();
  }

  v63 = qword_1EBBED5E0;
  v64 = *algn_1EBBED5E8;
  v65 = qword_1EBBE8478;

  if (v65 != -1)
  {
    swift_once();
  }

  v66 = qword_1EBBED5F0;
  v67 = *algn_1EBBED5F8;
  v68 = objc_opt_self();

  v69 = [v68 secondarySystemGroupedBackgroundColor];
  type metadata accessor for EndSharingRelationshipDataSource();
  swift_allocObject();
  v70 = v81;
  sub_1BA0711AC(&v91, &v87);
  v71 = sub_1BA0700CC(v70, &v88, v63, v64, v66, v67, v69, &v98);
  v72 = v86;
  v73 = v82;
  if (v71)
  {

    MEMORY[0x1BFAF1510](v74);
    if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BA4A6B68();
    }

    sub_1BA4A6BB8();

    v73 = v97;
  }

  if (*(v72 + v83))
  {
    v75 = swift_retain_n();
    MEMORY[0x1BFAF1510](v75);
    if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BA4A6B68();
    }

    sub_1BA4A6BB8();

    v73 = v97;
  }

  v76 = sub_1B9FE98D4(v73);

  v77 = CompoundSectionedDataSource.init(_:)(v76);
  sub_1BA0710D0(&v91);
  sub_1BA06F9D0(v59);
  return v77;
}

void sub_1BA1AA238(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id ProfileContactOptionsItem.__allocating_init(contact:emailOrPhoneNumber:contactOptions:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = sub_1BA1AAA68(a1, a2, a3, a4);

  return v10;
}

uint64_t ProfileContactOptionsItem.uniqueIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsItem_uniqueIdentifier);

  return v1;
}

uint64_t sub_1BA1AA340(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsItem_reuseIdentifier);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_1BA1AA3AC()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsItem_reuseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1BA1AA404(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsItem_reuseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1BA1AA4C4@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsItem____lazy_storage___cnCapabilitiesManager;
  swift_beginAccess();
  sub_1BA0110E8(v1 + v3, &v8);
  if (v9)
  {
    return sub_1B9F1134C(&v8, a1);
  }

  sub_1BA1AB0BC(&v8);
  if (HKIsUnitTesting())
  {
    v5 = &off_1F380D908;
    v6 = &type metadata for NoOpCNCapabilitiesManager;
  }

  else
  {
    v7 = [objc_allocWithZone(MEMORY[0x1E695D0F8]) init];
    v6 = sub_1BA1AB118();
    *a1 = v7;
    v5 = &protocol witness table for CNCapabilitiesManager;
  }

  a1[3] = v6;
  a1[4] = v5;
  sub_1B9F0A534(a1, &v8);
  swift_beginAccess();
  sub_1BA0111E8(&v8, v1 + v3);
  return swift_endAccess();
}

id ProfileContactOptionsItem.init(contact:emailOrPhoneNumber:contactOptions:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1BA1AAA68(a1, a2, a3, a4);

  return v5;
}

id sub_1BA1AA5F0()
{
  v1 = v0;
  v2 = sub_1BA4A1798();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = &v0[OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsItem_reuseIdentifier];
  v19 = type metadata accessor for ProfileContactOptionsCell();
  sub_1BA1AB164();
  *v6 = sub_1BA4A6808();
  v6[1] = v7;
  v8 = &v1[OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsItem____lazy_storage___cnCapabilitiesManager];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v9 = &v1[OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsItem_defaultICloudAccount];
  *v9 = 0;
  v9[1] = 0;
  v10 = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsItem_contact] = v10;
  *v9 = 0;
  v9[1] = 0;

  v1[OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsItem_isDisabled] = 1;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsItem_contactOptions] = &unk_1F37FC980;
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_1BA4A7DF8();

  v19 = 0xD00000000000001ALL;
  v20 = 0x80000001BA4F1AF0;
  sub_1BA4A1788();
  v11 = sub_1BA4A1748();
  v13 = v12;
  (*(v3 + 8))(v5, v2);
  MEMORY[0x1BFAF1350](v11, v13);

  v14 = v20;
  v15 = &v1[OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsItem_uniqueIdentifier];
  *v15 = v19;
  v15[1] = v14;
  v16 = type metadata accessor for ProfileContactOptionsItem();
  v18.receiver = v1;
  v18.super_class = v16;
  return objc_msgSendSuper2(&v18, sel_init);
}

id ProfileContactOptionsItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProfileContactOptionsItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA1AA8EC()
{
  v1 = (*v0 + OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsItem_reuseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1BA1AA95C()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsItem_defaultICloudAccount);

  return v1;
}

uint64_t sub_1BA1AA998()
{
  v1 = *(*v0 + OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsItem_uniqueIdentifier);

  return v1;
}

uint64_t sub_1BA1AA9D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

id sub_1BA1AAA68(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = &v5[OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsItem_reuseIdentifier];
  v26 = type metadata accessor for ProfileContactOptionsCell();
  sub_1BA1AB164();
  *v10 = sub_1BA4A6808();
  v10[1] = v11;
  v12 = &v5[OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsItem____lazy_storage___cnCapabilitiesManager];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 4) = 0;
  v13 = &v5[OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsItem_defaultICloudAccount];
  *v13 = 0;
  v13[1] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsItem_contact] = a1;
  *v13 = a2;
  v13[1] = a3;
  v5[OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsItem_isDisabled] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsItem_contactOptions] = a4;
  v14 = *(a4 + 16);
  if (!v14)
  {
    v20 = a1;

    goto LABEL_20;
  }

  v24 = v5;
  v15 = a1;
  v23 = a3;

  v16 = 32;
  do
  {
    if (*(a4 + v16) > 1u)
    {
      if (*(a4 + v16) == 2)
      {
        if (qword_1EDC5E100 != -1)
        {
          goto LABEL_4;
        }
      }

      else if (qword_1EDC5E100 != -1)
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (*(a4 + v16))
      {
        if (qword_1EDC5E100 == -1)
        {
          goto LABEL_5;
        }

LABEL_4:
        swift_once();
        goto LABEL_5;
      }

      if (qword_1EDC5E100 != -1)
      {
        swift_once();
      }
    }

LABEL_5:
    v17 = sub_1BA4A1318();
    v19 = v18;
    v26 = 0;
    v27 = 0xE000000000000000;

    MEMORY[0x1BFAF1350](v17, v19);

    ++v16;
    --v14;
  }

  while (v14);

  a3 = v23;
  v5 = v24;
LABEL_20:
  sub_1BA4A7DF8();

  v26 = 0xD00000000000001ALL;
  v27 = 0x80000001BA4F1AF0;
  MEMORY[0x1BFAF1350](a2, a3);

  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  MEMORY[0x1BFAF1350](0, 0xE000000000000000);

  v21 = &v5[OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsItem_uniqueIdentifier];
  *v21 = 0xD00000000000001ALL;
  v21[1] = 0x80000001BA4F1AF0;
  v25.receiver = v5;
  v25.super_class = type metadata accessor for ProfileContactOptionsItem();
  return objc_msgSendSuper2(&v25, sel_init);
}

unint64_t sub_1BA1AAEE4()
{
  result = qword_1EBBED6A0;
  if (!qword_1EBBED6A0)
  {
    type metadata accessor for ProfileContactOptionsItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBED6A0);
  }

  return result;
}

void sub_1BA1AB000()
{
  if (!qword_1EBBEA290)
  {
    sub_1BA1AB058();
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEA290);
    }
  }
}

unint64_t sub_1BA1AB058()
{
  result = qword_1EBBED6D0;
  if (!qword_1EBBED6D0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EBBED6D0);
  }

  return result;
}

uint64_t sub_1BA1AB0BC(uint64_t a1)
{
  sub_1BA1AB000();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BA1AB118()
{
  result = qword_1EBBEA2A0;
  if (!qword_1EBBEA2A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBBEA2A0);
  }

  return result;
}

unint64_t sub_1BA1AB164()
{
  result = qword_1EBBED6E0;
  if (!qword_1EBBED6E0)
  {
    type metadata accessor for ProfileContactOptionsCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBED6E0);
  }

  return result;
}

void sub_1BA1AB1AC(void *a1)
{
  v2 = sub_1BA4A3EA8();
  v27 = *(v2 - 8);
  v28 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BA4A15D8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(MEMORY[0x1E69D8A90]) init];
  v10 = [v9 defaultProvider];
  v11 = [objc_allocWithZone(MEMORY[0x1E69D8BD0]) initWithProvider_];
  v12 = [a1 digits];
  if (!v12)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v12 = sub_1BA4A6758();
  }

  v13 = [objc_allocWithZone(MEMORY[0x1E69D8C00]) initWithType:2 value:v12];

  [v11 setHandle_];
  [v11 setShowUIPrompt_];
  if ([v11 isValid] && (v14 = objc_msgSend(v11, sel_URL)) != 0)
  {
    v15 = v14;
    sub_1BA4A1588();

    v16 = [objc_opt_self() defaultWorkspace];
    if (v16)
    {
      v17 = v16;
      v18 = sub_1BA4A1548();
      [v17 hk:v18 asyncOpenURL:?];

      (*(v6 + 8))(v8, v5);
    }

    else
    {
      (*(v6 + 8))(v8, v5);
    }
  }

  else
  {
    sub_1BA4A3E28();
    v19 = sub_1BA4A3E88();
    v20 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v29 = v22;
      *v21 = 136315138;
      v23 = sub_1BA4A85D8();
      v25 = sub_1B9F0B82C(v23, v24, &v29);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_1B9F07000, v19, v20, "[%s] Unable to start audio call because request is invalid.", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1BFAF43A0](v22, -1, -1);
      MEMORY[0x1BFAF43A0](v21, -1, -1);
    }

    else
    {
    }

    (*(v27 + 8))(v4, v28);
  }
}

uint64_t AllFeedItemsListDataSourceProvider.__allocating_init(for:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1B9F25598(a1, v2 + 16);
  return v2;
}

uint64_t sub_1BA1AB614()
{
  sub_1B9F1DEA0();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BA4B5480;
  *(v0 + 32) = sub_1BA1AB668();
  *(v0 + 40) = &protocol witness table for FetchedResultsControllerDataSource<A>;
  return v0;
}

char *sub_1BA1AB668()
{
  v1 = v0;
  sub_1BA4A27B8();
  v2 = MEMORY[0x1BFAED110]();
  v3 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v4 = sub_1BA4A6758();
  v5 = [v3 initWithKey:v4 ascending:0];

  sub_1B9F109F8();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BA4B5470;
  *(v6 + 32) = v5;
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0);
  v7 = v5;
  v8 = sub_1BA4A6AE8();

  [v2 setSortDescriptors_];

  sub_1B9F0A534(v1 + 16, &v19);
  __swift_project_boxed_opaque_existential_1(&v19, *(&v20 + 1));
  v9 = v2;
  v10 = sub_1BA4A1B68();
  v11 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v9 managedObjectContext:v10 sectionNameKeyPath:0 cacheName:0];

  __swift_destroy_boxed_opaque_existential_1(&v19);
  if (qword_1EDC6D410 != -1)
  {
    swift_once();
  }

  v23 = xmmword_1EDC6D458;
  v24 = *&qword_1EDC6D468;
  v25 = xmmword_1EDC6D478;
  v26 = xmmword_1EDC6D488;
  v19 = xmmword_1EDC6D418;
  v20 = *&qword_1EDC6D428;
  v21 = xmmword_1EDC6D438;
  v22 = xmmword_1EDC6D448;
  sub_1B9F0ADF8(0, &qword_1EDC6B530);
  v18[4] = xmmword_1EDC6D458;
  v18[5] = *&qword_1EDC6D468;
  v18[6] = xmmword_1EDC6D478;
  v18[7] = xmmword_1EDC6D488;
  v18[0] = xmmword_1EDC6D418;
  v18[1] = *&qword_1EDC6D428;
  v18[2] = xmmword_1EDC6D438;
  v18[3] = xmmword_1EDC6D448;
  sub_1B9F1D9A4(&v19, &v17);
  v12 = sub_1B9F293A8(v18);
  v13 = objc_allocWithZone(type metadata accessor for ListFeedItemsDataSource());
  *&v13[qword_1EBBF0168] = 0;
  *&v13[qword_1EBC09850] = v12;
  v14 = v12;
  v15 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v11);

  return v15;
}

uint64_t AllFeedItemsListDataSourceProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA1AB960()
{
  sub_1B9F1DEA0();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BA4B5480;
  *(v0 + 32) = sub_1BA1AB668();
  *(v0 + 40) = &protocol witness table for FetchedResultsControllerDataSource<A>;
  return v0;
}

id sub_1BA1ABA60()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI34MessageWithSeparatedActionTileView____lazy_storage___separator;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI34MessageWithSeparatedActionTileView____lazy_storage___separator);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI34MessageWithSeparatedActionTileView____lazy_storage___separator);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69A44A8]) init];
    HKUIOnePixel();
    [v4 setSeparatorThickness_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = [objc_opt_self() opaqueSeparatorColor];
    [v4 setColor_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void *sub_1BA1ABB3C()
{
  v0 = sub_1BA4A7888();
  v25 = *(v0 - 8);
  v26 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v24 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F6BF78(0, &qword_1EDC5F868, MEMORY[0x1E69DC2E8]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - v3;
  sub_1B9F6BF78(0, &qword_1EDC5E0A8, MEMORY[0x1E69DC598]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v23 - v15;
  v17 = sub_1BA4A79A8();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  sub_1B9F0ADF8(0, &qword_1EDC5E0A0);
  sub_1BA4A7968();
  v19 = sub_1BA4A79B8();
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  [v19 setContentHorizontalAlignment_];
  sub_1BA4A79C8();
  v20 = *(v18 + 48);
  if (v20(v16, 1, v17))
  {
    sub_1BA1ADDF4(v16, v13);
    sub_1BA4A79D8();
    sub_1BA1ADE74(v16);
  }

  else
  {
    sub_1BA4A4898();
    v21 = sub_1BA4A4888();
    (*(*(v21 - 8) + 56))(v4, 0, 1, v21);
    sub_1BA4A7928();
    sub_1BA4A79D8();
  }

  sub_1BA4A79C8();
  if (v20(v10, 1, v17))
  {
    sub_1BA1ADDF4(v10, v13);
    sub_1BA4A79D8();
    sub_1BA1ADE74(v10);
  }

  else
  {
    (*(v25 + 104))(v24, *MEMORY[0x1E69DC540], v26);
    sub_1BA4A78B8();
    sub_1BA4A79D8();
  }

  sub_1BA4A79C8();
  if (v20(v7, 1, v17))
  {
    sub_1BA1ADDF4(v7, v13);
    sub_1BA4A79D8();
    sub_1BA1ADE74(v7);
  }

  else
  {
    sub_1BA4A7878();
    sub_1BA4A79D8();
  }

  return v19;
}

uint64_t sub_1BA1ABFB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A1338();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v8 + 16);
  v47 = v13;
  v48 = v12;
  (v12)(v11, a1, v9);
  v14 = *MEMORY[0x1E69DDCF8];
  v15 = objc_opt_self();
  v16 = [v15 preferredFontDescriptorWithTextStyle:v14 compatibleWithTraitCollection:0];
  if (v16)
  {
    v17 = v16;
    v18 = [objc_opt_self() fontWithDescriptor:v16 size:0.0];
  }

  else
  {
    v44 = v15;
    v45 = v4;
    v46 = v3;
    v19 = v6;
    sub_1BA4A3DD8();
    v20 = v14;
    v21 = sub_1BA4A3E88();
    v22 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v43 = a1;
      v24 = v23;
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v52 = v42;
      *v24 = 136315906;
      v25 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v27 = sub_1B9F0B82C(v25, v26, &v52);

      *(v24 + 4) = v27;
      *(v24 + 12) = 2080;
      v50 = 0;
      v51 = 1;
      sub_1B9F6BF78(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v28 = sub_1BA4A6808();
      v30 = sub_1B9F0B82C(v28, v29, &v52);

      *(v24 + 14) = v30;
      *(v24 + 22) = 2080;
      LODWORD(v50) = 0;
      type metadata accessor for SymbolicTraits(0);
      v31 = sub_1BA4A6808();
      v33 = sub_1B9F0B82C(v31, v32, &v52);

      *(v24 + 24) = v33;
      *(v24 + 32) = 2112;
      v34 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v24 + 34) = v34;
      v35 = v41;
      *v41 = v34;
      _os_log_impl(&dword_1B9F07000, v21, v22, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v24, 0x2Au);
      sub_1B9F8C6C8(v35);
      MEMORY[0x1BFAF43A0](v35, -1, -1);
      v36 = v42;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v36, -1, -1);
      v37 = v24;
      a1 = v43;
      MEMORY[0x1BFAF43A0](v37, -1, -1);
    }

    (*(v45 + 8))(v19, v46);
    v17 = [v44 preferredFontDescriptorWithTextStyle_];
    v18 = [objc_opt_self() fontWithDescriptor:v17 size:0.0];
  }

  v38 = v18;

  v50 = v38;
  sub_1B9F4DAC8();
  sub_1BA4A1348();
  v39 = v47;
  (*(v8 + 8))(v11, v47);
  return v48(v49, a1, v39);
}

uint64_t sub_1BA1AC43C@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC18HealthExperienceUI34MessageWithSeparatedActionTileView_didTapActionButton);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1B9F7B0CC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1B9F0F1B8(v4);
}

uint64_t sub_1BA1AC4DC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1BA1846E4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC18HealthExperienceUI34MessageWithSeparatedActionTileView_didTapActionButton);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_1B9F0F1B8(v3);
  return sub_1B9F0E310(v8);
}

uint64_t sub_1BA1AC5A4()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI34MessageWithSeparatedActionTileView_didTapActionButton);
  swift_beginAccess();
  v2 = *v1;
  sub_1B9F0F1B8(*v1);
  return v2;
}

uint64_t sub_1BA1AC600(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18HealthExperienceUI34MessageWithSeparatedActionTileView_didTapActionButton);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1B9F0E310(v6);
}

id MessageWithSeparatedActionTileView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *MessageWithSeparatedActionTileView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_1BA4A3EA8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  v15 = *MEMORY[0x1E69DDD80];
  v16 = objc_opt_self();
  v17 = [v16 preferredFontDescriptorWithTextStyle:v15 compatibleWithTraitCollection:0];
  if (v17)
  {
    v18 = v17;
    v19 = [objc_opt_self() fontWithDescriptor:v17 size:0.0];
  }

  else
  {
    sub_1BA4A3DD8();
    v20 = v15;
    v21 = sub_1BA4A3E88();
    v22 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v56 = v22;
      v24 = v23;
      v55 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v61 = v57;
      *v24 = 136315906;
      v25 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v27 = sub_1B9F0B82C(v25, v26, &v61);
      v58 = v20;
      v28 = v27;

      *(v24 + 4) = v28;
      *(v24 + 12) = 2080;
      v59 = 0;
      v60 = 1;
      sub_1B9F6BF78(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v29 = sub_1BA4A6808();
      v31 = sub_1B9F0B82C(v29, v30, &v61);

      *(v24 + 14) = v31;
      *(v24 + 22) = 2080;
      LODWORD(v59) = 0;
      type metadata accessor for SymbolicTraits(0);
      v32 = sub_1BA4A6808();
      v34 = sub_1B9F0B82C(v32, v33, &v61);
      v20 = v58;

      *(v24 + 24) = v34;
      *(v24 + 32) = 2112;
      v35 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v24 + 34) = v35;
      v36 = v55;
      *v55 = v35;
      _os_log_impl(&dword_1B9F07000, v21, v56, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v24, 0x2Au);
      sub_1B9F8C6C8(v36);
      MEMORY[0x1BFAF43A0](v36, -1, -1);
      v37 = v57;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v37, -1, -1);
      MEMORY[0x1BFAF43A0](v24, -1, -1);
    }

    (*(v11 + 8))(v13, v10);
    v38 = [v16 preferredFontDescriptorWithTextStyle_];
    v19 = [objc_opt_self() fontWithDescriptor:v38 size:0.0];
  }

  v39 = OBJC_IVAR____TtC18HealthExperienceUI34MessageWithSeparatedActionTileView_bodyLabel;
  [v14 setFont_];

  [v14 setAdjustsFontForContentSizeCategory_];
  v40 = objc_opt_self();
  v41 = [v40 secondaryLabelColor];
  [v14 setTextColor_];

  [v14 setNumberOfLines_];
  [v14 setLineBreakMode_];
  [v14 setTextAlignment_];
  *&v5[v39] = v14;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithSeparatedActionTileView____lazy_storage___separator] = 0;
  v42 = OBJC_IVAR____TtC18HealthExperienceUI34MessageWithSeparatedActionTileView_actionButton;
  *&v5[v42] = sub_1BA1ABB3C();
  v43 = &v5[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithSeparatedActionTileView_didTapActionButton];
  v44 = type metadata accessor for MessageWithSeparatedActionTileView();
  *v43 = 0;
  *(v43 + 1) = 0;
  v62.receiver = v5;
  v62.super_class = v44;
  v45 = objc_msgSendSuper2(&v62, sel_initWithFrame_, a1, a2, a3, a4);
  v46 = [v40 tertiarySystemFillColor];
  [v45 setBackgroundColor_];

  v47 = *MEMORY[0x1E69796E8];
  v48 = [v45 layer];
  [v48 setCornerCurve_];

  v49 = [v45 layer];
  [v49 setCornerRadius_];

  v50 = [v45 layer];
  [v50 setMaskedCorners_];

  [v45 setClipsToBounds_];
  [v45 addSubview_];
  v51 = OBJC_IVAR____TtC18HealthExperienceUI34MessageWithSeparatedActionTileView_actionButton;
  [v45 addSubview_];
  v52 = sub_1BA1ABA60();
  [v45 addSubview_];

  [*&v45[v51] addTarget:v45 action:sel_didTapAction_ forControlEvents:64];
  sub_1BA1ACDB4();

  return v45;
}

id sub_1BA1ACDB4()
{
  v46 = objc_opt_self();
  sub_1B9F109F8();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BA4B79D0;
  v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithSeparatedActionTileView_bodyLabel];
  v3 = [v2 leadingAnchor];
  v4 = [v0 safeAreaLayoutGuide];
  v5 = [v4 leadingAnchor];

  v6 = [v3 constraintEqualToAnchor:v5 constant:16.0];
  *(v1 + 32) = v6;
  v7 = [v0 &selRef_secondaryLabelColor + 2];
  v8 = [v7 trailingAnchor];

  v9 = [v2 &selRef_cloudSyncObserverSyncCompleted_ + 4];
  v10 = [v8 &selRef:v9 objectAtIndex:16.0 + 6];

  *(v1 + 40) = v10;
  v11 = [v2 topAnchor];
  v12 = [v0 &selRef_secondaryLabelColor + 2];
  v13 = [v12 topAnchor];

  v14 = [v11 constraintEqualToAnchor_];
  *(v1 + 48) = v14;
  v15 = sub_1BA1ABA60();
  v16 = [v15 leadingAnchor];

  v17 = [v2 leadingAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v1 + 56) = v18;
  v19 = OBJC_IVAR____TtC18HealthExperienceUI34MessageWithSeparatedActionTileView____lazy_storage___separator;
  v20 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithSeparatedActionTileView____lazy_storage___separator] trailingAnchor];
  v21 = [v0 &selRef_secondaryLabelColor + 2];
  v22 = [v21 trailingAnchor];

  v23 = [v20 constraintEqualToAnchor_];
  *(v1 + 64) = v23;
  v24 = [*&v0[v19] heightAnchor];
  [*&v0[v19] separatorThickness];
  v25 = [v24 constraintEqualToConstant_];

  *(v1 + 72) = v25;
  v26 = [*&v0[v19] topAnchor];
  v27 = [v2 bottomAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:11.0];

  *(v1 + 80) = v28;
  v29 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithSeparatedActionTileView_actionButton];
  v30 = [v29 leadingAnchor];
  v31 = [v2 leadingAnchor];
  v32 = [v30 constraintEqualToAnchor_];

  *(v1 + 88) = v32;
  v33 = [v29 trailingAnchor];
  v34 = [v2 trailingAnchor];
  v35 = [v33 constraintEqualToAnchor_];

  *(v1 + 96) = v35;
  v36 = [v29 topAnchor];
  v37 = [*&v0[v19] bottomAnchor];
  v38 = [v36 constraintEqualToAnchor:v37 constant:11.0];

  *(v1 + 104) = v38;
  v39 = [v0 safeAreaLayoutGuide];
  v40 = [v39 bottomAnchor];

  v41 = [v29 bottomAnchor];
  v42 = [v40 constraintEqualToAnchor:v41 constant:11.0];

  *(v1 + 112) = v42;
  sub_1B9F0ADF8(0, &qword_1EDC6B570);
  v43 = sub_1BA4A6AE8();

  [v46 activateConstraints_];

  LODWORD(v44) = 1148846080;

  return [v29 setContentCompressionResistancePriority:0 forAxis:v44];
}

uint64_t sub_1BA1AD35C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + OBJC_IVAR____TtC18HealthExperienceUI34MessageWithSeparatedActionTileView_didTapActionButton);
  swift_beginAccess();
  v8 = *v7;
  if (*v7)
  {

    v8(v9);
    return sub_1B9F0E310(v8);
  }

  else
  {
    sub_1BA4A3DD8();
    v11 = sub_1BA4A3E88();
    v12 = sub_1BA4A6FB8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19[0] = v14;
      *v13 = 136446210;
      v19[4] = ObjectType;
      swift_getMetatypeMetadata();
      v15 = sub_1BA4A6808();
      v17 = sub_1B9F0B82C(v15, v16, v19);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_1B9F07000, v11, v12, "[%{public}s] didTapActionButton is not set and needs to be set to provide an action for the MessageWithActionTileView link", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1BFAF43A0](v14, -1, -1);
      MEMORY[0x1BFAF43A0](v13, -1, -1);
    }

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1BA1AD5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + OBJC_IVAR____TtC18HealthExperienceUI34MessageWithSeparatedActionTileView_bodyLabel);
  v8 = sub_1BA4A6758();
  [v7 setText_];

  v9 = *(v4 + OBJC_IVAR____TtC18HealthExperienceUI34MessageWithSeparatedActionTileView_actionButton);
  v10 = objc_opt_self();
  v11 = swift_allocObject();
  v11[2] = v9;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = 0;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1B9F7B15C;
  *(v12 + 24) = v11;
  v16[4] = sub_1B9F7B0CC;
  v16[5] = v12;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1B9F7B0FC;
  v16[3] = &block_descriptor_44;
  v13 = _Block_copy(v16);
  v14 = v9;

  [v10 performWithoutAnimation_];
  _Block_release(v13);
  LOBYTE(a4) = swift_isEscapingClosureAtFileLocation();

  if (a4)
  {
    __break(1u);
  }

  return result;
}

id MessageWithSeparatedActionTileView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MessageWithSeparatedActionTileView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BA1AD92C()
{
  v1 = v0;
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  v7 = *MEMORY[0x1E69DDD80];
  v8 = objc_opt_self();
  v9 = [v8 preferredFontDescriptorWithTextStyle:v7 compatibleWithTraitCollection:0];
  if (v9)
  {
    v10 = v9;
    v11 = [objc_opt_self() fontWithDescriptor:v9 size:0.0];
  }

  else
  {
    sub_1BA4A3DD8();
    v12 = v7;
    v13 = sub_1BA4A3E88();
    v14 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v37 = v14;
      v16 = v15;
      v36 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v42 = v38;
      *v16 = 136315906;
      v17 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v19 = sub_1B9F0B82C(v17, v18, &v42);
      v39 = v12;
      v20 = v19;

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      v40 = 0;
      v41 = 1;
      sub_1B9F6BF78(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v21 = sub_1BA4A6808();
      v23 = sub_1B9F0B82C(v21, v22, &v42);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2080;
      LODWORD(v40) = 0;
      type metadata accessor for SymbolicTraits(0);
      v24 = sub_1BA4A6808();
      v26 = sub_1B9F0B82C(v24, v25, &v42);
      v12 = v39;

      *(v16 + 24) = v26;
      *(v16 + 32) = 2112;
      v27 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v16 + 34) = v27;
      v28 = v36;
      *v36 = v27;
      _os_log_impl(&dword_1B9F07000, v13, v37, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v16, 0x2Au);
      sub_1B9F8C6C8(v28);
      MEMORY[0x1BFAF43A0](v28, -1, -1);
      v29 = v38;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v29, -1, -1);
      MEMORY[0x1BFAF43A0](v16, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    v30 = [v8 preferredFontDescriptorWithTextStyle_];
    v11 = [objc_opt_self() fontWithDescriptor:v30 size:0.0];
  }

  v31 = OBJC_IVAR____TtC18HealthExperienceUI34MessageWithSeparatedActionTileView_bodyLabel;
  [v6 setFont_];

  [v6 setAdjustsFontForContentSizeCategory_];
  v32 = [objc_opt_self() secondaryLabelColor];
  [v6 setTextColor_];

  [v6 setNumberOfLines_];
  [v6 setLineBreakMode_];
  [v6 setTextAlignment_];
  *(v1 + v31) = v6;
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI34MessageWithSeparatedActionTileView____lazy_storage___separator) = 0;
  v33 = OBJC_IVAR____TtC18HealthExperienceUI34MessageWithSeparatedActionTileView_actionButton;
  *(v1 + v33) = sub_1BA1ABB3C();
  v34 = (v1 + OBJC_IVAR____TtC18HealthExperienceUI34MessageWithSeparatedActionTileView_didTapActionButton);
  *v34 = 0;
  v34[1] = 0;
  sub_1BA4A8018();
  __break(1u);
}

uint64_t sub_1BA1ADDF4(uint64_t a1, uint64_t a2)
{
  sub_1B9F6BF78(0, &qword_1EDC5E0A8, MEMORY[0x1E69DC598]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA1ADE74(uint64_t a1)
{
  sub_1B9F6BF78(0, &qword_1EDC5E0A8, MEMORY[0x1E69DC598]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DataSourceWithLayout<>.registerCells(for:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v6 = *(*v2 + 80);
  swift_unknownObjectRetain();
  v5(a1, v6, a2);
  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall _ConditionalDataSource.registerCells(for:)(UICollectionView *a1)
{
  sub_1BA2499F8();
  sub_1B9F0D9AC(0, &qword_1EDC67F10);
  sub_1B9F0D9AC(0, qword_1EDC6C328);
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    v2 = *(&v5 + 1);
    v3 = v6;
    __swift_project_boxed_opaque_existential_1(&v4, *(&v5 + 1));
    (*(v3 + 8))(a1, v2, v3);
    __swift_destroy_boxed_opaque_existential_1(&v4);
  }

  else
  {
    v6 = 0;
    v4 = 0u;
    v5 = 0u;
    sub_1B9F399C0(&v4);
  }
}

id sub_1BA1AE0E4()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = [objc_opt_self() _preferredFontForTextStyle_weight_];
  [v0 setFont_];

  v2 = [objc_opt_self() labelColor];
  [v0 setTextColor_];

  [v0 setNumberOfLines_];
  [v0 setAdjustsFontForContentSizeCategory_];
  return v0;
}

id sub_1BA1AE1F8()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];

  v2 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor_];

  [v0 setNumberOfLines_];
  [v0 setAdjustsFontForContentSizeCategory_];
  LODWORD(v3) = 1148846080;
  [v0 setContentCompressionResistancePriority:1 forAxis:v3];
  LODWORD(v4) = 1132068864;
  [v0 setContentCompressionResistancePriority:0 forAxis:v4];
  LODWORD(v5) = 1132068864;
  [v0 setContentHuggingPriority:1 forAxis:v5];
  return v0;
}

uint64_t sub_1BA1AE358@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_buttonConfiguration);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a2 = *v3;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return sub_1BA1AE4BC(v4, v5);
}

uint64_t sub_1BA1AE3B8(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = (*a2 + OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_buttonConfiguration);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v2;
  v6[1] = v3;
  v6[2] = v4;
  v6[3] = v5;
  sub_1BA1AE4BC(v2, v3);
  return sub_1BA1AE55C(v7, v8);
}

uint64_t sub_1BA1AE460@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_buttonConfiguration);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  return sub_1BA1AE4BC(v4, v5);
}

uint64_t sub_1BA1AE4BC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}