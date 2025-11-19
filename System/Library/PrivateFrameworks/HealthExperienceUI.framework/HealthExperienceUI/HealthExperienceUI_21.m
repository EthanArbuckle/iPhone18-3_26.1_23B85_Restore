id sub_1BA13AC4C(unint64_t a1, unint64_t a2)
{
  result = [objc_allocWithZone(MEMORY[0x1E69A41C0]) init];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v21 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_22:
    v11 = result;
    v5 = sub_1BA4A7CC8();
    result = v11;
    v19 = a2;
    v20 = v11;
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_23:
    a2 = MEMORY[0x1E69E7CC0];
    goto LABEL_24;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v19 = a2;
  v20 = result;
  if (!v5)
  {
    goto LABEL_23;
  }

LABEL_4:
  v6 = 0;
  a2 = MEMORY[0x1E69E7CC0];
  do
  {
    v7 = v6;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x1BFAF2860](v7, a1);
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        result = *(a1 + 8 * v7 + 32);
      }

      v8 = result;
      v6 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9)
      {
        break;
      }

LABEL_7:
      ++v7;
      if (v6 == v5)
      {
        goto LABEL_24;
      }
    }

    v10 = [v9 codableECG];

    if (!v10)
    {
      goto LABEL_7;
    }

    MEMORY[0x1BFAF1510]();
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BA4A6B68();
    }

    result = sub_1BA4A6BB8();
    a2 = v21;
  }

  while (v6 != v5);
LABEL_24:
  sub_1B9FE5ED4(a2);
  v12 = objc_allocWithZone(MEMORY[0x1E695DF70]);
  v13 = sub_1BA4A6AE8();

  v14 = [v12 initWithArray_];

  [v20 setSamples_];
  if (a2 >> 62)
  {
    v15 = sub_1BA4A7CC8();
  }

  else
  {
    v15 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  [v20 setCount_];
  [v20 setActiveAlgorithmVersionRawValue_];
  v16 = [v20 data];
  if (v16)
  {
    v17 = v16;
    v18 = sub_1BA4A1608();
  }

  else
  {

    return 0;
  }

  return v18;
}

id sub_1BA13AF24(void *a1, void *a2)
{
  v4 = sub_1BA4A2338();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A1728();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v37 - v12;
  v14 = [a2 identifier];
  v15 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v17 = v16;

  if (_sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() == v15 && v18 == v17)
  {
    goto LABEL_13;
  }

  v20 = sub_1BA4A8338();

  if (v20)
  {
LABEL_14:

    goto LABEL_15;
  }

  if (_sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() == v15 && v21 == v17)
  {
LABEL_13:

    goto LABEL_14;
  }

  v23 = sub_1BA4A8338();

  if (v23)
  {
    goto LABEL_14;
  }

  if (_sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() == v15 && v24 == v17)
  {
    goto LABEL_13;
  }

  v32 = sub_1BA4A8338();

  if (v32)
  {
    goto LABEL_14;
  }

  if (_sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() == v15 && v33 == v17)
  {
    goto LABEL_13;
  }

  v34 = sub_1BA4A8338();

  if ((v34 & 1) == 0)
  {
    sub_1B9F0ADF8(0, &unk_1EDC5E2C0);
    v35 = a1;
    v36 = a2;
    sub_1BA4A2308();
    v29 = sub_1BA081600(v35, v36, v6);
    goto LABEL_16;
  }

LABEL_15:
  sub_1B9F0ADF8(0, &unk_1EDC5E2C0);
  v25 = a1;
  v26 = a2;
  v27 = [v25 startDate];
  sub_1BA4A16F8();

  v28 = [v25 _creationDate];
  sub_1BA4A16F8();

  sub_1BA4A2308();
  v29 = sub_1BA081A50(v25, v26, v13, v9, v6);
LABEL_16:
  v30 = v29;

  return v30;
}

unint64_t *sub_1BA13B280(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v22 = result;
  v23 = 0;
  v24 = a3;
  v3 = 0;
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v25 = (v7 - 1) & v7;
LABEL_11:
    v12 = v9 | (v3 << 6);
    v13 = (*(v24 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = v12;
    sub_1B9F0AD9C(*(v24 + 56) + 32 * v12, v29);
    v27[0] = v15;
    v27[1] = v14;
    sub_1B9F0AD9C(v29, &v28);
    swift_bridgeObjectRetain_n();
    v17 = sub_1BA131178();
    v26[0] = v15;
    v26[1] = v14;
    MEMORY[0x1EEE9AC00](v17);
    v20[2] = v26;
    v18 = v30;
    LOBYTE(v15) = sub_1B9F13ED8(sub_1B9F13FDC, v20, v17);
    v30 = v18;

    sub_1BA13B6AC(v27, sub_1BA0009D8);
    __swift_destroy_boxed_opaque_existential_1(v29);

    v7 = v25;
    if (v15)
    {
      *(v22 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
        return sub_1BA2023C8(v22, v21, v23, v24);
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return sub_1BA2023C8(v22, v21, v23, v24);
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v25 = (v11 - 1) & v11;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1BA13B484(uint64_t a1)
{
  v2 = v1;
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;
  v8 = swift_retain_n();
  if (v5 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v11 = swift_slowAlloc();

      v9 = sub_1BA139E8C(v11, v6, a1);
      MEMORY[0x1BFAF43A0](v11, -1, -1);

      return v9;
    }
  }

  MEMORY[0x1EEE9AC00](v8);
  bzero(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);

  v9 = sub_1BA13B280((v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a1);

  if (v2)
  {
    swift_willThrow();
  }

  return v9;
}

uint64_t sub_1BA13B644(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA13B6AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BA13B70C(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_1B9F224CC(0, a3, a4, a5, MEMORY[0x1E69E6720]);
  (*(*(v7 - 8) + 40))(a2, a1, v7);
  return a2;
}

void sub_1BA13B7A8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B9F0ADF8(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1BA13B810()
{
  result = qword_1EBBEC678;
  if (!qword_1EBBEC678)
  {
    sub_1B9F224CC(255, &qword_1EBBEC670, &qword_1EBBF18E0, &protocol descriptor for RecentSamplesItemModel, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEC678);
  }

  return result;
}

void sub_1BA13B894()
{
  if (!qword_1EBBEC680)
  {
    sub_1BA132AB4(255, &qword_1EDC5F4C8, sub_1BA130D70);
    sub_1BA4A6F48();
    sub_1BA130FA8(&unk_1EDC5F4D0, &qword_1EDC5F4C8, sub_1BA130D70);
    sub_1BA13C020(&qword_1EBBEC688, MEMORY[0x1E69A3960]);
    v0 = sub_1BA4A4C28();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEC680);
    }
  }
}

void sub_1BA13B98C()
{
  if (!qword_1EBBEC690)
  {
    sub_1BA13B894();
    sub_1B9F0ADF8(255, &qword_1EDC6B5A0);
    sub_1BA13C020(&unk_1EBBEC698, sub_1BA13B894);
    sub_1B9F3E1E0(&qword_1EDC6B5B0, &qword_1EDC6B5A0);
    v0 = sub_1BA4A4CC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEC690);
    }
  }
}

void sub_1BA13BAA0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1BA13BB28()
{
  result = qword_1EBBEC6B8;
  if (!qword_1EBBEC6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEC6B8);
  }

  return result;
}

void sub_1BA13BB88()
{
  if (!qword_1EDC5F568)
  {
    sub_1BA13B7A8(255, &unk_1EDC5E620, &qword_1EDC5E1C0, 0x1E696C3A8, MEMORY[0x1E69E62F8]);
    sub_1BA13BC34();
    v0 = sub_1BA4A4C98();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F568);
    }
  }
}

unint64_t sub_1BA13BC34()
{
  result = qword_1EDC5E610;
  if (!qword_1EDC5E610)
  {
    sub_1BA13B7A8(255, &unk_1EDC5E620, &qword_1EDC5E1C0, 0x1E696C3A8, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5E610);
  }

  return result;
}

void sub_1BA13BCB8()
{
  if (!qword_1EDC5F598)
  {
    v0 = MEMORY[0x1E695BED0];
    sub_1BA13BDC4(255, &qword_1EDC5F480, MEMORY[0x1E695BED0]);
    sub_1BA13BE60();
    sub_1BA13C0C8(&qword_1EDC5F488, &qword_1EDC5F480, v0);
    sub_1BA13C020(&qword_1EDC5F6C0, sub_1BA13BE60);
    v1 = sub_1BA4A4C28();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F598);
    }
  }
}

void sub_1BA13BDC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_1B9F0ADF8(255, &qword_1EDC5E1C0);
    v7 = sub_1B9F0D9AC(255, &qword_1EDC6E310);
    v8 = a3(a1, v6, v7, MEMORY[0x1E69E7288]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1BA13BE60()
{
  if (!qword_1EDC5F6B8)
  {
    sub_1BA13BB88();
    sub_1B9F0D9AC(255, &qword_1EDC6E310);
    sub_1BA13C020(&qword_1EDC5F570, sub_1BA13BB88);
    v0 = sub_1BA4A4B38();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F6B8);
    }
  }
}

void sub_1BA13BF30()
{
  if (!qword_1EDC5F5A8)
  {
    sub_1BA13BCB8();
    sub_1BA13C020(&qword_1EDC5F5A0, sub_1BA13BCB8);
    v0 = sub_1BA4A4C18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F5A8);
    }
  }
}

uint64_t sub_1BA13C020(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_120Tm(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1BA13C0C8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  result = *a1;
  if (!result)
  {
    sub_1BA13BDC4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void FormSheetPresenting<>.presentViewControllerAsFormSheet(_:animated:)(uint64_t a1, char a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E69A4420]) initWithRootViewController_];
  [v4 setModalInPresentation_];
  [v4 setModalPresentationStyle_];
  [v2 presentViewController:v4 animated:a2 & 1 completion:0];
}

uint64_t sub_1BA13C274()
{
  swift_getObjectType();
  v1 = UIViewController.resolvedHealthStore.getter();
  if (v1)
  {
    v2 = v1;
    sub_1B9F1DEA0();
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1BA4B5480;
    v4 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35UninstalledAppSourcesViewController_uninstalledApps);
    type metadata accessor for UninstalledAppSourcesDataSource(0);
    swift_allocObject();
    v5 = v2;

    *(v3 + 32) = sub_1BA422A8C(v5, v4);
    *(v3 + 40) = &protocol witness table for MutableArrayDataSource;

    return v3;
  }

  else
  {
    sub_1BA4A7DF8();

    swift_getMetatypeMetadata();
    v7 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v7);

    MEMORY[0x1BFAF1350](0xD000000000000020, 0x80000001BA4E7E20);
    result = sub_1BA4A8018();
    __break(1u);
  }

  return result;
}

id sub_1BA13C420()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UninstalledAppSourcesViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BA13C4D4(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1BA13C530(uint64_t *a1))(id **, char)
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
  v5 = OBJC_IVAR____TtC18HealthExperienceUI17SharingPausedCell_parentViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0BAB9C;
}

id SharingPausedCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *SharingPausedCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  swift_unknownObjectWeakInit();
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI17SharingPausedCell_item];
  type metadata accessor for MessageWithActionTileView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v11 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI17SharingPausedCell_tileView] = v11;
  v21.receiver = v4;
  v21.super_class = type metadata accessor for SharingPausedCell();
  v12 = objc_msgSendSuper2(&v21, sel_initWithFrame_, a1, a2, a3, a4);
  v13 = *&v12[OBJC_IVAR____TtC18HealthExperienceUI17SharingPausedCell_tileView];
  v14 = v12;
  [v14 addSubview_];
  [v13 hk:v14 alignConstraintsWithView:?];
  v15 = *MEMORY[0x1E69796E8];
  v16 = [v14 layer];
  [v16 setCornerCurve_];

  v17 = [v14 layer];
  [v17 setCornerRadius_];

  v18 = [v14 layer];
  [v18 setMaskedCorners_];

  [v14 setClipsToBounds_];
  v19 = [objc_opt_self() tertiarySystemBackgroundColor];
  [v14 setBackgroundColor_];

  return v14;
}

id SharingPausedCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void SharingPausedCell.init(coder:)()
{
  swift_unknownObjectWeakInit();
  v1 = v0 + OBJC_IVAR____TtC18HealthExperienceUI17SharingPausedCell_item;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  sub_1BA4A8018();
  __break(1u);
}

void sub_1BA13CA4C()
{
  v1 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI17SharingPausedCell_tileView];
  [v0 addSubview_];
  [v1 hk:v0 alignConstraintsWithView:?];
  v2 = *MEMORY[0x1E69796E8];
  v3 = [v0 layer];
  [v3 setCornerCurve_];

  v4 = [v0 layer];
  [v4 setCornerRadius_];

  v5 = [v0 layer];
  [v5 setMaskedCorners_];

  [v0 setClipsToBounds_];
  v6 = [objc_opt_self() tertiarySystemBackgroundColor];
  [v0 setBackgroundColor_];
}

uint64_t sub_1BA13CBA0(uint64_t a1, uint64_t *a2)
{
  sub_1B9F68124(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI17SharingPausedCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v6, v3 + v4);
  swift_endAccess();
  sub_1BA13CD9C();
  return sub_1B9F43DE0(v6, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
}

uint64_t sub_1BA13CC28@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI17SharingPausedCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA13CC80(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI17SharingPausedCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA13CD9C();
  return sub_1B9F43DE0(a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
}

uint64_t (*sub_1BA13CD04(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA13CD68;
}

uint64_t sub_1BA13CD68(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1BA13CD9C();
  }

  return result;
}

uint64_t sub_1BA13CD9C()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI17SharingPausedCell_tileView);
  v2 = OBJC_IVAR____TtC18HealthExperienceUI17SharingPausedCell_item;
  swift_beginAccess();
  sub_1B9F68124(v0 + v2, v45);
  if (v46)
  {
    sub_1B9F0D9AC(0, &qword_1EDC6E1B0);
    sub_1B9F0D9AC(0, &unk_1EBBEC720);
    if (swift_dynamicCast())
    {
      v3 = *(&v42 + 1);
      if (*(&v42 + 1))
      {
        v4 = v43;
        __swift_project_boxed_opaque_existential_1(&aBlock, *(&v42 + 1));
        v5 = (*(v4 + 3))(v3, v4);
        __swift_destroy_boxed_opaque_existential_1(&aBlock);
        goto LABEL_8;
      }
    }

    else
    {
      v43 = 0;
      aBlock = 0u;
      v42 = 0u;
    }
  }

  else
  {
    sub_1B9F43DE0(v45, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    aBlock = 0u;
    v42 = 0u;
    v43 = 0;
  }

  sub_1B9F43DE0(&aBlock, &qword_1EBBEC718, &unk_1EBBEC720, &protocol descriptor for SharingPausedItem);
  v5 = 0;
LABEL_8:
  sub_1B9F68124(v0 + v2, v45);
  if (v46)
  {
    sub_1B9F0D9AC(0, &qword_1EDC6E1B0);
    sub_1B9F0D9AC(0, &unk_1EBBEC720);
    if (swift_dynamicCast())
    {
      v6 = *(&v42 + 1);
      if (*(&v42 + 1))
      {
        v7 = v43;
        __swift_project_boxed_opaque_existential_1(&aBlock, *(&v42 + 1));
        (*(v7 + 6))(v6, v7);
        v9 = v8;
        __swift_destroy_boxed_opaque_existential_1(&aBlock);
        goto LABEL_15;
      }
    }

    else
    {
      v43 = 0;
      aBlock = 0u;
      v42 = 0u;
    }
  }

  else
  {
    sub_1B9F43DE0(v45, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    aBlock = 0u;
    v42 = 0u;
    v43 = 0;
  }

  sub_1B9F43DE0(&aBlock, &qword_1EBBEC718, &unk_1EBBEC720, &protocol descriptor for SharingPausedItem);
  v9 = 0;
LABEL_15:
  sub_1B9F68124(v0 + v2, v45);
  if (v46)
  {
    sub_1B9F0D9AC(0, &qword_1EDC6E1B0);
    sub_1B9F0D9AC(0, &unk_1EBBEC720);
    if (swift_dynamicCast())
    {
      v10 = *(&v42 + 1);
      if (*(&v42 + 1))
      {
        v11 = v43;
        __swift_project_boxed_opaque_existential_1(&aBlock, *(&v42 + 1));
        v12 = (*(v11 + 9))(v10, v11);
        v14 = v13;
        __swift_destroy_boxed_opaque_existential_1(&aBlock);
        goto LABEL_22;
      }
    }

    else
    {
      v43 = 0;
      aBlock = 0u;
      v42 = 0u;
    }
  }

  else
  {
    sub_1B9F43DE0(v45, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    aBlock = 0u;
    v42 = 0u;
    v43 = 0;
  }

  sub_1B9F43DE0(&aBlock, &qword_1EBBEC718, &unk_1EBBEC720, &protocol descriptor for SharingPausedItem);
  v12 = 0;
  v14 = 0;
LABEL_22:
  v15 = [objc_opt_self() systemGray5Color];
  [*&v1[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_titleLabel] setAttributedText_];
  v16 = OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_bodyLabel;
  v17 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_bodyLabel];
  v40 = v5;
  v38 = v15;
  if (v9)
  {
    v18 = sub_1BA4A6758();
  }

  else
  {
    v18 = 0;
  }

  [v17 setText_];

  [*&v1[v16] setHidden_];
  v19 = OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_actionButton;
  v20 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_actionButton];
  v21 = objc_opt_self();
  v22 = swift_allocObject();
  v22[2] = v20;
  v22[3] = v12;
  v22[4] = v14;
  v22[5] = 0;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1B9F7B15C;
  *(v23 + 24) = v22;
  v43 = sub_1B9F7B0CC;
  v44 = v23;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v42 = sub_1B9F7B0FC;
  *(&v42 + 1) = &block_descriptor_31_0;
  v24 = _Block_copy(&aBlock);

  v25 = v20;

  [v21 performWithoutAnimation_];
  _Block_release(v24);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v28 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v28 = v12 & 0xFFFFFFFFFFFFLL;
    }

    v29 = v28 == 0;
    if (v14)
    {
      v30 = v29;
    }

    else
    {
      v30 = 1;
    }

    [*&v1[v19] setHidden_];
    [v1 setBackgroundColor_];
    [v1 updateConstraints];
    v31 = sub_1BA42FCF0();
    [v31 setHidden_];

    v32 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_separatorTopConstraint];
    if (v32)
    {
      [v32 setConstant_];
    }

    v33 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_actionButtonTopConstraint];
    if (v33)
    {
      [v33 setConstant_];
    }

    v34.value._object = 0x80000001BA4ED5D0;
    v34.value._countAndFlagsBits = 0xD000000000000011;
    MessageWithActionTileView.updateAutomationIdentifiers(with:)(v34);

    v35 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v36 = &v1[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_didTapActionButton];
    swift_beginAccess();
    v37 = *v36;
    *v36 = sub_1BA13FDE4;
    v36[1] = v35;

    sub_1B9F0E310(v37);
  }

  return result;
}

uint64_t sub_1BA13D4C8()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v1 = result;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_getObjectType();
    v3 = swift_conformsToProtocol2();
    if (!v3)
    {

      Strong = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = OBJC_IVAR____TtC18HealthExperienceUI17SharingPausedCell_item;
  swift_beginAccess();
  sub_1B9F68124(v1 + v4, v9);
  if (!v10)
  {

    swift_unknownObjectRelease();
    sub_1B9F43DE0(v9, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    v11 = 0u;
    v12 = 0u;
    v13 = 0;
    return sub_1B9F43DE0(&v11, &qword_1EBBEC718, &unk_1EBBEC720, &protocol descriptor for SharingPausedItem);
  }

  sub_1B9F0D9AC(0, &qword_1EDC6E1B0);
  sub_1B9F0D9AC(0, &unk_1EBBEC720);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    goto LABEL_14;
  }

  v5 = *(&v12 + 1);
  if (!*(&v12 + 1))
  {
LABEL_14:

    swift_unknownObjectRelease();
    return sub_1B9F43DE0(&v11, &qword_1EBBEC718, &unk_1EBBEC720, &protocol descriptor for SharingPausedItem);
  }

  v6 = v13;
  __swift_project_boxed_opaque_existential_1(&v11, *(&v12 + 1));
  v7 = (*(v6 + 96))(v5, v6);
  if (v7)
  {
    v8 = v7;
    v7(Strong, v3);
    sub_1B9F0E310(v8);
  }

  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(&v11);
}

id SharingPausedCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharingPausedCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1BA13D798(uint64_t *a1))(id **, char)
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
  v5 = OBJC_IVAR____TtC18HealthExperienceUI17SharingPausedCell_parentViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0C36E0;
}

uint64_t SummarySharingPausedItem.reuseIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SummarySharingPausedItem.uniqueIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void *SummarySharingPausedItem.titleText.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t SummarySharingPausedItem.bodyText.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t SummarySharingPausedItem.bodyText.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t SummarySharingPausedItem.actionText.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t SummarySharingPausedItem.actionText.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t sub_1BA13DA14@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1BA13FBE0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_1B9F0F1B8(v3);
}

uint64_t sub_1BA13DA94(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1BA13FBA8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 72);
  sub_1B9F0F1B8(v3);
  result = sub_1B9F0E310(v7);
  *(a2 + 72) = v6;
  *(a2 + 80) = v5;
  return result;
}

uint64_t SummarySharingPausedItem.action.getter()
{
  v1 = *(v0 + 72);
  sub_1B9F0F1B8(v1);
  return v1;
}

uint64_t SummarySharingPausedItem.action.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B9F0E310(*(v2 + 72));
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t SummarySharingPausedItem.init(titleText:bodyText:actionText:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v24 = a6;
  v25 = a7;
  v23 = a5;
  v13 = sub_1BA4A1798();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for SharingPausedCell();
  sub_1BA13F514();
  *a8 = sub_1BA4A6808();
  a8[1] = v17;
  v26 = 0;
  v27 = 0xE000000000000000;
  sub_1BA4A7DF8();

  v26 = 0xD000000000000019;
  v27 = 0x80000001BA4ED4E0;
  sub_1BA4A1788();
  sub_1B9F2A9CC(&qword_1EDC6AE60, MEMORY[0x1E69695A8]);
  v18 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v18);

  result = (*(v14 + 8))(v16, v13);
  v20 = v27;
  a8[2] = v26;
  a8[3] = v20;
  a8[4] = a1;
  a8[5] = a2;
  a8[6] = a3;
  a8[7] = a4;
  v21 = v24;
  a8[8] = v23;
  a8[9] = v21;
  a8[10] = v25;
  return result;
}

uint64_t SummarySharingPausedItem.init(profileInformation:summarySharingEntryStore:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v37 = a2;
  v5 = sub_1BA4A1798();
  v39 = *(v5 - 8);
  v40 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v38 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A33C8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  _sSS18HealthExperienceUIE34attributedTextWithLeadingPauseIcon4textSo18NSAttributedStringCSS_tFZ_0();
  v36 = v11;

  sub_1BA4A33A8();
  v12 = sub_1BA13F558();
  v34 = v13;
  v35 = v12;

  v14 = sub_1BA4A1318();
  v32 = v15;
  v33 = v14;
  (*(v8 + 16))(&v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v8 + 32))(v18 + v16, v10, v7);
  v19 = v37;
  *(v18 + v17) = v37;
  v41 = type metadata accessor for SharingPausedCell();
  sub_1BA13F514();
  v20 = v19;
  v37 = sub_1BA4A6808();
  v31 = v21;
  v41 = 0;
  v42 = 0xE000000000000000;
  sub_1BA4A7DF8();

  v41 = 0xD000000000000019;
  v42 = 0x80000001BA4ED4E0;
  v22 = v38;
  sub_1BA4A1788();
  sub_1B9F2A9CC(&qword_1EDC6AE60, MEMORY[0x1E69695A8]);
  v23 = v40;
  v24 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v24);

  (*(v39 + 8))(v22, v23);

  v25 = v41;
  v26 = v42;
  result = (*(v8 + 8))(a1, v7);
  v28 = v31;
  *a3 = v37;
  a3[1] = v28;
  a3[2] = v25;
  a3[3] = v26;
  v29 = v35;
  a3[4] = v36;
  a3[5] = v29;
  v30 = v33;
  a3[6] = v34;
  a3[7] = v30;
  a3[8] = v32;
  a3[9] = sub_1BA13F740;
  a3[10] = v18;
  return result;
}

void sub_1BA13E194(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v53 = a2;
  v7 = sub_1BA4A1798();
  v50 = *(v7 - 8);
  v51 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v48 = &v40[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1BA4A33C8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v49 = &v40[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v47 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40[-v13];
  v15 = sub_1BA4A3EA8();
  v44 = *(v15 - 8);
  v45 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v40[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BA4A3DD8();
  v18 = *(v10 + 16);
  v52 = a3;
  v46 = v18;
  v18(v14, a3, v9);
  v19 = sub_1BA4A3E88();
  v20 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v43 = a4;
    v22 = v21;
    v42 = swift_slowAlloc();
    aBlock[0] = v42;
    *v22 = 136315394;
    *(v22 + 4) = sub_1B9F0B82C(0xD000000000000018, 0x80000001BA4C0250, aBlock);
    *(v22 + 12) = 2080;
    sub_1B9F2A9CC(&qword_1EBBE9818, MEMORY[0x1E69A3430]);
    v23 = sub_1BA4A82D8();
    v41 = v20;
    v24 = a1;
    v26 = v25;
    (*(v10 + 8))(v14, v9);
    v27 = sub_1B9F0B82C(v23, v26, aBlock);
    a1 = v24;

    *(v22 + 14) = v27;
    _os_log_impl(&dword_1B9F07000, v19, v41, "[%s]: Unpausing profile information: %s", v22, 0x16u);
    v28 = v42;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v28, -1, -1);
    v29 = v22;
    a4 = v43;
    MEMORY[0x1BFAF43A0](v29, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v14, v9);
  }

  (*(v44 + 8))(v17, v45);
  v30 = v48;
  v31 = v52;
  sub_1BA4A3358();
  v32 = sub_1BA4A1758();
  (*(v50 + 8))(v30, v51);
  v33 = v49;
  v46(v49, v31, v9);
  v34 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v35 = (v47 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  (*(v10 + 32))(v36 + v34, v33, v9);
  v37 = (v36 + v35);
  v38 = v53;
  *v37 = a1;
  v37[1] = v38;
  aBlock[4] = sub_1BA13FC64;
  aBlock[5] = v36;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BA454240;
  aBlock[3] = &block_descriptor_30;
  v39 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  [a4 unpauseInvitationWithUUID:v32 completion:v39];
  _Block_release(v39);
}

uint64_t sub_1BA13E6B4(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v62 = a5;
  v63 = a4;
  v61 = sub_1BA4A6478();
  v8 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v66 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1BA4A64C8();
  v65 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v64 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BA4A33C8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v60 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v54 - v15;
  v17 = sub_1BA4A3EA8();
  v68 = *(v17 - 8);
  v69 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v54 - v21;
  if (a1)
  {
    v59 = v8;
    sub_1BA4A3DD8();
    v23 = *(v12 + 16);
    v23(v16, a3, v11);
    v24 = sub_1BA4A3E88();
    v25 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v57 = v23;
      v58 = a3;
      v55 = v24;
      v27 = v26;
      v56 = swift_slowAlloc();
      aBlock[0] = v56;
      *v27 = 136315394;
      *(v27 + 4) = sub_1B9F0B82C(0xD000000000000018, 0x80000001BA4C0250, aBlock);
      *(v27 + 12) = 2080;
      sub_1B9F2A9CC(&qword_1EBBE9818, MEMORY[0x1E69A3430]);
      v28 = v25;
      v29 = sub_1BA4A82D8();
      v31 = v30;
      (*(v12 + 8))(v16, v11);
      v32 = sub_1B9F0B82C(v29, v31, aBlock);

      *(v27 + 14) = v32;
      v33 = v55;
      _os_log_impl(&dword_1B9F07000, v55, v28, "[%s]: Successfully unpaused profile information: %s", v27, 0x16u);
      v34 = v56;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v34, -1, -1);
      v23 = v57;
      a3 = v58;
      MEMORY[0x1BFAF43A0](v27, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v16, v11);
    }

    (*(v68 + 8))(v22, v69);
    sub_1B9F38BF4();
    v45 = sub_1BA4A7308();
    v46 = v60;
    v23(v60, a3, v11);
    v47 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v48 = swift_allocObject();
    v49 = v62;
    *(v48 + 16) = v63;
    *(v48 + 24) = v49;
    (*(v12 + 32))(v48 + v47, v46, v11);
    aBlock[4] = sub_1BA13FD14;
    aBlock[5] = v48;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B9F0B040;
    aBlock[3] = &block_descriptor_22;
    v50 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    v51 = v64;
    sub_1BA4A64A8();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1B9F2A9CC(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60]);
    sub_1B9F3F378();
    sub_1B9F2A9CC(&qword_1EDC5E6A0, sub_1B9F3F378);
    v52 = v66;
    v53 = v61;
    sub_1BA4A7C38();
    MEMORY[0x1BFAF1D50](0, v51, v52, v50);
    _Block_release(v50);

    (*(v59 + 8))(v52, v53);
    return (*(v65 + 8))(v51, v67);
  }

  else
  {
    sub_1BA4A3DD8();
    v35 = a2;
    v36 = sub_1BA4A3E88();
    v37 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      aBlock[0] = v39;
      *v38 = 136315394;
      *(v38 + 4) = sub_1B9F0B82C(0xD000000000000018, 0x80000001BA4C0250, aBlock);
      *(v38 + 12) = 2080;
      aBlock[6] = a2;
      v40 = a2;
      sub_1B9F0D144(0, &qword_1EDC6B3E0, &qword_1EDC6E310, MEMORY[0x1E69E7280], MEMORY[0x1E69E6720]);
      v41 = sub_1BA4A6808();
      v43 = sub_1B9F0B82C(v41, v42, aBlock);

      *(v38 + 14) = v43;
      _os_log_impl(&dword_1B9F07000, v36, v37, "[%s]: Unable to unpause profile information, got error: %s", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v39, -1, -1);
      MEMORY[0x1BFAF43A0](v38, -1, -1);
    }

    return (*(v68 + 8))(v19, v69);
  }
}

uint64_t sub_1BA13EE94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BA4A3EA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  swift_unknownObjectRetain();
  v10 = sub_1BA4A3E88();
  v11 = sub_1BA4A6FC8();
  swift_unknownObjectRelease();
  v12 = os_log_type_enabled(v10, v11);
  v25 = a2;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v24 = a3;
    v14 = v13;
    v15 = swift_slowAlloc();
    v26 = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_1B9F0B82C(0xD000000000000018, 0x80000001BA4C0250, &v26);
    *(v14 + 12) = 2080;
    v27[0] = a1;
    v27[1] = a2;
    sub_1BA13FD78();
    swift_unknownObjectRetain();
    v16 = sub_1BA4A6808();
    v18 = sub_1B9F0B82C(v16, v17, &v26);

    *(v14 + 14) = v18;
    _os_log_impl(&dword_1B9F07000, v10, v11, "[%s]: Notifying delegate: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v15, -1, -1);
    v19 = v14;
    a3 = v24;
    MEMORY[0x1BFAF43A0](v19, -1, -1);
  }

  result = (*(v7 + 8))(v9, v6);
  if (a1)
  {
    ObjectType = swift_getObjectType();
    v22 = sub_1BA4A33C8();
    v27[3] = v22;
    v27[4] = MEMORY[0x1E69A3418];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
    (*(*(v22 - 8) + 16))(boxed_opaque_existential_1, a3, v22);
    (*(v25 + 8))(v27, ObjectType);
    return __swift_destroy_boxed_opaque_existential_1(v27);
  }

  return result;
}

uint64_t sub_1BA13F16C(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t sub_1BA13F1C4(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t sub_1BA13F21C()
{
  v1 = *(v0 + 72);
  sub_1B9F0F1B8(v1);
  return v1;
}

uint64_t sub_1BA13F250(uint64_t a1, uint64_t a2)
{
  result = sub_1B9F0E310(*(v2 + 72));
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t sub_1BA13F2A8(uint64_t a1)
{
  v2 = sub_1BA13FC10();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

void _sSS18HealthExperienceUIE34attributedTextWithLeadingPauseIcon4textSo18NSAttributedStringCSS_tFZ_0()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696AD40]);
  v1 = sub_1BA4A6758();
  v2 = [v0 initWithString_];

  v3 = [objc_allocWithZone(MEMORY[0x1E69DB7F0]) init];
  v4 = sub_1BA4A6758();
  v5 = [objc_opt_self() _systemImageNamed_];

  if (v5)
  {
    v6 = [v5 imageWithRenderingMode_];

    [v3 setImage_];
    v7 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v8 = sub_1BA4A6758();
    v9 = [v7 initWithString_];

    v10 = [objc_opt_self() attributedStringWithAttachment_];
    [v2 appendAttributedString_];

    v11 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v12 = sub_1BA4A6758();
    v13 = [v11 initWithString_];

    [v2 appendAttributedString_];
    [v2 appendAttributedString_];
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1BA13F514()
{
  result = qword_1EBBE9E78;
  if (!qword_1EBBE9E78)
  {
    type metadata accessor for SharingPausedCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBE9E78);
  }

  return result;
}

uint64_t sub_1BA13F558()
{
  v0 = sub_1BA4A6878();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    sub_1BA4A1318();
    sub_1B9F0D144(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1BA4B5480;
    *(v4 + 56) = MEMORY[0x1E69E6158];
    *(v4 + 64) = sub_1B9F1BE20();
    *(v4 + 32) = v2;
    *(v4 + 40) = v3;
    v5 = sub_1BA4A6768();

    return v5;
  }

  else
  {
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    return sub_1BA4A1318();
  }
}

void sub_1BA13F740(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1BA4A33C8() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1BA13E194(a1, a2, v2 + v6, v7);
}

unint64_t sub_1BA13F7F0()
{
  result = qword_1EBBF25C0;
  if (!qword_1EBBF25C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF25C0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18HealthExperienceUI25SharingPausedItemDelegate_pSgIegg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1BA13FAFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1BA13FB44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BA13FBA8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[0] = a1;
  v5[1] = a2;
  return v3(v5);
}

unint64_t sub_1BA13FC10()
{
  result = qword_1EBBEC700;
  if (!qword_1EBBEC700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEC700);
  }

  return result;
}

uint64_t sub_1BA13FC64(char a1, void *a2)
{
  v5 = *(sub_1BA4A33C8() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_1BA13E6B4(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_1BA13FD14()
{
  v1 = *(sub_1BA4A33C8() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_1BA13EE94(v2, v3, v4);
}

void sub_1BA13FD78()
{
  if (!qword_1EBBEC708)
  {
    sub_1B9F0D9AC(255, &qword_1EBBEC710);
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEC708);
    }
  }
}

uint64_t sub_1BA13FE74()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI16CoreDataTabGroup_healthStore);
  sub_1B9F0A534(v0 + OBJC_IVAR____TtC18HealthExperienceUI16CoreDataTabGroup_pinnedContentManager, v8);
  sub_1B9F0A534(v0 + OBJC_IVAR____TtC18HealthExperienceUI16CoreDataTabGroup_healthExperienceStore, v7);
  type metadata accessor for ProvidedViewContext(0);
  v2 = swift_allocObject();
  swift_beginAccess();
  v5 = v1;
  sub_1B9F0ADF8(0, &qword_1EDC6B620);
  v3 = v1;
  sub_1BA4A4EE8();
  swift_endAccess();
  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI19ProvidedViewContext_pinnedContentManagerProvider) = 0;
  sub_1B9F0A534(v8, v2 + OBJC_IVAR____TtC18HealthExperienceUI19ProvidedViewContext_pinnedContentManager);
  sub_1B9F0A534(v7, v6);
  swift_beginAccess();
  sub_1B9F0A534(v6, &v5);
  sub_1B9F0D950(0, &qword_1EDC6E248);
  sub_1BA4A4EE8();
  __swift_destroy_boxed_opaque_existential_1(v6);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v7);
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v2;
}

uint64_t sub_1BA13FFEC()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI16CoreDataTabGroup_allowsChildrenHiding;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1BA140030(char a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI16CoreDataTabGroup_allowsChildrenHiding;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id CoreDataTabGroup.__allocating_init(predicate:healthStore:healthExperienceStore:pinnedContentManager:title:image:identifier:viewControllerProvider:)(void *a1, void *a2, void *a3, uint64_t a4, int a5, int a6, void *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = objc_allocWithZone(v11);
  v15[OBJC_IVAR____TtC18HealthExperienceUI16CoreDataTabGroup_allowsChildrenHiding] = 0;
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v16 = sub_1BA4A1B68();
  sub_1B9F1C048(0, &qword_1EDC6B400);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1BA4B8B60;
  v18 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v19 = sub_1BA4A6758();
  v20 = [v18 initWithKey:v19 ascending:1];

  *(v17 + 32) = v20;
  v21 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v22 = sub_1BA4A6758();
  v23 = [v21 initWithKey:v22 ascending:0];

  *(v17 + 40) = v23;
  v24 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v25 = sub_1BA4A6758();
  v26 = [v24 initWithKey:v25 ascending:1 selector:sel_localizedStandardCompare_];

  *(v17 + 48) = v26;
  v27 = a1;
  v28 = sub_1BA4A7558();

  v40 = v27;

  *&v15[OBJC_IVAR____TtC18HealthExperienceUI16CoreDataTabGroup_fetchedResultsController] = v28;
  *&v15[OBJC_IVAR____TtC18HealthExperienceUI16CoreDataTabGroup_healthStore] = a2;
  sub_1B9F0A534(a3, &v15[OBJC_IVAR____TtC18HealthExperienceUI16CoreDataTabGroup_healthExperienceStore]);
  sub_1B9F0A534(a4, &v15[OBJC_IVAR____TtC18HealthExperienceUI16CoreDataTabGroup_pinnedContentManager]);
  v29 = v28;
  v38 = a2;
  v30 = sub_1BA4A6758();

  v31 = sub_1BA4A6758();

  sub_1B9F0ADF8(0, &qword_1EDC5E230);
  v32 = sub_1BA4A6AE8();
  if (a10)
  {
    aBlock[4] = a10;
    aBlock[5] = a11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B9F7EBBC;
    aBlock[3] = &block_descriptor_31;
    v33 = _Block_copy(aBlock);
  }

  else
  {
    v33 = 0;
  }

  v44.receiver = v15;
  v44.super_class = v41;
  v34 = objc_msgSendSuper2(&v44, sel_initWithTitle_image_identifier_children_viewControllerProvider_, v30, a7, v31, v32, v33, v38);
  _Block_release(v33);

  v35 = v34;
  [v29 setDelegate_];
  sub_1B9F1FF84();

  sub_1B9F0E310(a10);
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a3);

  return v35;
}

id CoreDataTabGroup.__allocating_init(fetchedResultsController:healthStore:healthExperienceStore:pinnedContentManager:title:image:identifier:viewControllerProvider:)(void *a1, void *a2, uint64_t a3, uint64_t a4, int a5, int a6, void *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v16 = objc_allocWithZone(v11);
  v16[OBJC_IVAR____TtC18HealthExperienceUI16CoreDataTabGroup_allowsChildrenHiding] = 0;
  *&v16[OBJC_IVAR____TtC18HealthExperienceUI16CoreDataTabGroup_fetchedResultsController] = a1;
  *&v16[OBJC_IVAR____TtC18HealthExperienceUI16CoreDataTabGroup_healthStore] = a2;
  sub_1B9F0A534(a3, &v16[OBJC_IVAR____TtC18HealthExperienceUI16CoreDataTabGroup_healthExperienceStore]);
  sub_1B9F0A534(a4, &v16[OBJC_IVAR____TtC18HealthExperienceUI16CoreDataTabGroup_pinnedContentManager]);
  v17 = a1;
  v25 = a2;
  v18 = sub_1BA4A6758();

  v19 = sub_1BA4A6758();

  sub_1B9F0ADF8(0, &qword_1EDC5E230);
  v20 = sub_1BA4A6AE8();
  if (a10)
  {
    aBlock[4] = a10;
    aBlock[5] = a11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B9F7EBBC;
    aBlock[3] = &block_descriptor_3;
    v21 = _Block_copy(aBlock);
  }

  else
  {
    v21 = 0;
  }

  v28.receiver = v16;
  v28.super_class = v11;
  v22 = objc_msgSendSuper2(&v28, sel_initWithTitle_image_identifier_children_viewControllerProvider_, v18, a7, v19, v20, v21, a10);
  _Block_release(v21);

  v23 = v22;
  [v17 setDelegate_];
  sub_1B9F1FF84();

  sub_1B9F0E310(a10);
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v23;
}

id CoreDataTabGroup.init(fetchedResultsController:healthStore:healthExperienceStore:pinnedContentManager:title:image:identifier:viewControllerProvider:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11[OBJC_IVAR____TtC18HealthExperienceUI16CoreDataTabGroup_allowsChildrenHiding] = 0;
  *&v11[OBJC_IVAR____TtC18HealthExperienceUI16CoreDataTabGroup_fetchedResultsController] = a1;
  *&v11[OBJC_IVAR____TtC18HealthExperienceUI16CoreDataTabGroup_healthStore] = a2;
  sub_1B9F0A534(a3, &v11[OBJC_IVAR____TtC18HealthExperienceUI16CoreDataTabGroup_healthExperienceStore]);
  v26 = a4;
  sub_1B9F0A534(a4, &v11[OBJC_IVAR____TtC18HealthExperienceUI16CoreDataTabGroup_pinnedContentManager]);
  v15 = a1;
  v16 = a2;
  v17 = sub_1BA4A6758();

  v18 = sub_1BA4A6758();

  sub_1B9F0ADF8(0, &qword_1EDC5E230);
  v19 = sub_1BA4A6AE8();
  if (a10)
  {
    aBlock[4] = a10;
    aBlock[5] = a11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B9F7EBBC;
    aBlock[3] = &block_descriptor_6_2;
    v20 = _Block_copy(aBlock);
  }

  else
  {
    v20 = 0;
  }

  v21 = type metadata accessor for CoreDataTabGroup();
  v29.receiver = v11;
  v29.super_class = v21;
  v22 = objc_msgSendSuper2(&v29, sel_initWithTitle_image_identifier_children_viewControllerProvider_, v17, a7, v18, v19, v20);
  _Block_release(v20);

  v23 = v22;
  [v15 setDelegate_];
  sub_1B9F1FF84();

  sub_1B9F0E310(a10);
  __swift_destroy_boxed_opaque_existential_1(v26);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v23;
}

uint64_t sub_1BA140968()
{
  v1 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0xC0))();
  v2 = *((*v1 & *v0) + 0xB8);

  return v2();
}

id sub_1BA1409F0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v31[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = [a3 actionHandlerClassName];
    if (v10)
    {
      v11 = v10;
      v12 = NSClassFromString(v10);

      if (v12)
      {
        ObjCClassMetadata = swift_getObjCClassMetadata();
        v14 = swift_conformsToProtocol2();
        if (v14 && ObjCClassMetadata != 0)
        {
          v16 = v14;
          v17 = [v9 tabBarController];
          if (v17)
          {
            v18 = v17;
            v19 = [a3 objectID];
            v20 = [a3 actionHandlerUserData];
            if (v20)
            {
              v21 = v20;
              v22 = sub_1BA4A1608();
              v24 = v23;
            }

            else
            {
              v22 = 0;
              v24 = 0xF000000000000000;
            }

            v29 = sub_1BA13FE74();
            memset(v33, 0, sizeof(v33));
            v34 = 0u;
            v35 = 0xF000000000000000;
            v32 = v19;
            sub_1BA05DF98(v31, v33);
            sub_1B9F6AC8C(*(&v34 + 1), v35);
            *(&v34 + 1) = v22;
            v35 = v24;
            v36 = v29;
            v37 = v18;
            sub_1BA00D78C(&v32, v31);
            (*(ObjCClassMetadata + 88))(v31);
            v30 = (*(v16 + 24))(ObjCClassMetadata, v16);

            sub_1BA00D7E8(&v32);
            return v30;
          }
        }
      }
    }
  }

  sub_1BA4A3DD8();
  v25 = sub_1BA4A3E88();
  v26 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_1B9F07000, v25, v26, "A tab bar item did not have an actionHandlerClass that conforms to TabActionHandler", v27, 2u);
    MEMORY[0x1BFAF43A0](v27, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  return [objc_allocWithZone(MEMORY[0x1E69DD258]) init];
}

id sub_1BA140D1C@<X0>(id *a1@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  sub_1B9F2B074(0, &qword_1EDC69258, type metadata accessor for TabActionModel);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v37 - v8;
  v10 = type metadata accessor for TabActionModel(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *a1;
  result = [*a1 userData];
  if (result)
  {
    v39 = a2;
    v41 = a3;
    v16 = result;
    v17 = sub_1BA4A1608();
    v19 = v18;

    sub_1B9F206D4(v17, v19);
    v40 = v17;
    sub_1B9F2B0C8(v17, v19);
    if (v3)
    {

      sub_1B9F2BB4C(v40, v19);
      (*(v11 + 56))(v9, 1, 1, v10);
      result = sub_1B9F20C20(v9, &qword_1EDC69258, type metadata accessor for TabActionModel);
      v20 = 0;
LABEL_10:
      a3 = v41;
      goto LABEL_11;
    }

    v38 = v19;
    (*(v11 + 56))(v9, 0, 1, v10);
    sub_1B9F2BBA0(v9, v13, type metadata accessor for TabActionModel);
    v21 = swift_allocObject();
    v22 = v39;
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    *(v23 + 24) = v14;
    v24 = *(v10 + 24);
    v25 = *&v22[OBJC_IVAR____TtC18HealthExperienceUI16CoreDataTabGroup_healthStore];
    v26 = v14;
    sub_1B9F2BC34(v13 + v24, v25);
    v28 = v27;
    v37 = sub_1B9F0ADF8(0, &unk_1EDC5E0B0);
    v29 = *v13;
    v30 = v13[1];

    v31 = [v26 uniqueIdentifier];
    v32 = swift_allocObject();
    *(v32 + 16) = sub_1BA141998;
    *(v32 + 24) = v23;
    v39 = v28;

    v20 = sub_1BA4A77E8();
    v33 = [v26 baseAutomationIdentifier];
    if (v33)
    {
      v34 = v33;
    }

    else
    {
      sub_1B9F1C048(0, &qword_1EDC6E330);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_1BA4B5460;
      *(v35 + 32) = 6447444;
      *(v35 + 40) = 0xE300000000000000;
      *(v35 + 48) = v29;
      *(v35 + 56) = v30;

      v36 = sub_1BA4A6AE8();

      v34 = HKUIJoinStringsForAutomationIdentifier();

      if (!v34)
      {
LABEL_9:
        [v20 setAccessibilityIdentifier_];

        sub_1B9F2BB4C(v40, v38);
        result = sub_1B9F20C7C(v13, type metadata accessor for TabActionModel);
        goto LABEL_10;
      }
    }

    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

    v34 = sub_1BA4A6758();

    goto LABEL_9;
  }

  v20 = 0;
LABEL_11:
  *a3 = v20;
  return result;
}

void sub_1BA1411D4(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong tabBarController];
    if (v6)
    {
      v7 = v6;
      v8 = [a3 actionHandlerClassName];
      if (v8 && (v9 = v8, v10 = NSClassFromString(v8), v9, v10) && (ObjCClassMetadata = swift_getObjCClassMetadata(), (v12 = swift_conformsToProtocol2()) != 0) && ObjCClassMetadata)
      {
        v13 = v12;
        v14 = [a3 objectID];
        v15 = [a3 actionHandlerUserData];
        if (v15)
        {
          v16 = v15;
          v17 = sub_1BA4A1608();
          v19 = v18;
        }

        else
        {
          v17 = 0;
          v19 = 0xF000000000000000;
        }

        v20 = sub_1BA13FE74();
        memset(v23, 0, sizeof(v23));
        v24 = 0u;
        v25 = 0xF000000000000000;
        v22 = v14;
        sub_1BA05DF98(&v21, v23);
        sub_1B9F6AC8C(*(&v24 + 1), v25);
        *(&v24 + 1) = v17;
        v25 = v19;
        v26 = v20;
        v27 = v7;
        sub_1BA00D78C(&v22, &v21);
        (*(ObjCClassMetadata + 88))(&v21);
        (*(v13 + 40))(ObjCClassMetadata, v13);

        sub_1BA00D7E8(&v22);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

id CoreDataTabGroup.__allocating_init(title:image:identifier:children:viewControllerProvider:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v13 = sub_1BA4A6758();

  v14 = sub_1BA4A6758();

  sub_1B9F0ADF8(0, &qword_1EDC5E230);
  v15 = sub_1BA4A6AE8();

  if (a7)
  {
    v19[4] = a7;
    v19[5] = a8;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 1107296256;
    v19[2] = sub_1B9F7EBBC;
    v19[3] = &block_descriptor_9;
    v16 = _Block_copy(v19);
  }

  else
  {
    v16 = 0;
  }

  v17 = [objc_allocWithZone(v9) initWithTitle:v13 image:a3 identifier:v14 children:v15 viewControllerProvider:v16];
  _Block_release(v16);

  return v17;
}

id CoreDataTabGroup.__allocating_init(title:image:identifier:viewControllerProvider:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_1BA4A6758();

  v13 = sub_1BA4A6758();

  if (a6)
  {
    v17[4] = a6;
    v17[5] = a7;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = sub_1B9F7EBBC;
    v17[3] = &block_descriptor_12_0;
    v14 = _Block_copy(v17);
  }

  else
  {
    v14 = 0;
  }

  v15 = [objc_allocWithZone(v8) initWithTitle:v12 image:a3 identifier:v13 viewControllerProvider:v14];
  _Block_release(v14);

  return v15;
}

id CoreDataTabGroup.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoreDataTabGroup();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t objectdestroy_16Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t ProfileContextNavigationBarConfiguring.configureProfileContextNavigationBar(context:healthStore:profileIdentifier:mode:title:)(void *a1, uint64_t a2, void *a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v110 = a5;
  v111 = a8;
  v112 = a6;
  v113 = a7;
  v107 = a3;
  v93 = a2;
  v108 = a1;
  sub_1BA142AEC();
  v105 = v9;
  v103 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v101 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BA4A3EA8();
  v95 = *(v11 - 8);
  v96 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA142B40();
  v100 = v14;
  v98 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA142C90();
  v99 = v17;
  v97 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA142EF8(0, &qword_1EDC6B5B8, MEMORY[0x1E69E8050]);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v91 - v21;
  sub_1BA142D3C();
  v24 = v23;
  v94 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v91 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA142F4C();
  v106 = v27;
  v104 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v102 = &v91 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA1431B4();
  v30 = v29;
  v92 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v91 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1BA4A1798();
  v34 = MEMORY[0x1EEE9AC00](v33 - 8);
  v36 = &v91 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4 > 1u)
  {
    if (a4 == 2)
    {
      v43 = objc_allocWithZone(MEMORY[0x1E696C408]);
      v44 = [v43 initWithHealthStore_];
      v45 = HKSharedSummaryCloudSyncManager.fetchProfileInformation()();

      v115 = v45;
      sub_1B9F38BF4();
      v46 = sub_1BA4A7308();
      v114 = v46;
      v47 = sub_1BA4A72A8();
      (*(*(v47 - 8) + 56))(v22, 1, 1, v47);
      sub_1BA143038(0, &qword_1EBBEC770, type metadata accessor for CloudProfileInformation, MEMORY[0x1E695C028]);
      sub_1BA142E28();
      sub_1BA142EB0(&qword_1EDC6B5B0, sub_1B9F38BF4);
      sub_1BA4A50A8();
      sub_1BA143CE4(v22, &qword_1EDC6B5B8, MEMORY[0x1E69E8050]);

      sub_1BA142C28();
      sub_1BA142EB0(&qword_1EBBEC780, sub_1BA142D3C);
      sub_1BA4A4FE8();
      sub_1BA142EB0(&qword_1EBBEC7C8, sub_1BA142C90);
      v48 = v99;
      v49 = sub_1BA4A4F98();
      (*(v97 + 8))(v19, v48);
      (*(v94 + 8))(v26, v24);
      v115 = v49;
      v50 = swift_allocObject();
      v51 = v113;
      v52 = v111;
      v50[2] = v113;
      v50[3] = v52;
      v54 = v107;
      v53 = v108;
      v50[4] = v108;
      v50[5] = v54;
      sub_1BA143038(0, &qword_1EBBEC790, sub_1BA142C28, MEMORY[0x1E695BED0]);
      sub_1BA1430C4();
      sub_1BA14312C();
      sub_1BA142EB0(&qword_1EBBEC7A8, sub_1BA1430C4);
      v55 = v53;
      v56 = v54;
      v57 = v102;
      sub_1BA4A5018();

      sub_1BA142EB0(&qword_1EBBEC7D0, sub_1BA142F4C);
      v58 = v106;
      v42 = sub_1BA4A4F98();
      (*(v104 + 8))(v57, v58);

      v59 = &selRef_systemWhiteColor;
LABEL_14:
      v77 = [objc_opt_self() *v59];
      v78 = [v109 navigationItem];
      v79 = objc_allocWithZone(type metadata accessor for TitleWithSubHeadingView());
      v80 = v77;
      v81 = [v79 initWithFrame_];
      v82 = OBJC_IVAR____TtC18HealthExperienceUI23TitleWithSubHeadingView_headingLabel;
      [*&v81[OBJC_IVAR____TtC18HealthExperienceUI23TitleWithSubHeadingView_headingLabel] setText_];
      v83 = OBJC_IVAR____TtC18HealthExperienceUI23TitleWithSubHeadingView_subHeadingLabel;
      [*&v81[OBJC_IVAR____TtC18HealthExperienceUI23TitleWithSubHeadingView_subHeadingLabel] setText_];
      v84 = *&v81[v82];
      v85 = v80;
      [v84 setTextColor_];
      v86 = *&v81[v83];
      [v86 setTextColor_];

      [v78 setTitleView_];
      v115 = v42;
      v87 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v88 = swift_allocObject();
      v88[2] = v51;
      v88[3] = v52;
      v89 = v110;
      v88[4] = v87;
      v88[5] = v89;
      v88[6] = v112;
      sub_1BA1430C4();
      sub_1BA142EB0(&qword_1EBBEC7A8, sub_1BA1430C4);

      v71 = sub_1BA4A5148();

      return v71;
    }

    v72 = [v107 identifier];
    sub_1BA4A1778();

    type metadata accessor for SharingEntryProfileInformationDataSource();
    swift_allocObject();
    v115 = *(sub_1BA19BEB8(v108, v36, 0, 0, 0, 0) + qword_1EDC6A560);
    v73 = MEMORY[0x1E69A3430];
    v74 = MEMORY[0x1E695BF98];
    sub_1BA143C08(0, &qword_1EBBEE020, &qword_1EBBEA318, MEMORY[0x1E69A3430], MEMORY[0x1E695BF98]);
    sub_1BA143C80(&qword_1EBBEB080, &qword_1EBBEE020, v74);
    v115 = sub_1BA4A4F98();
    v75 = MEMORY[0x1E695BED0];
    sub_1BA143C08(0, &unk_1EBBEE000, &qword_1EBBEA318, v73, MEMORY[0x1E695BED0]);
    sub_1BA142C28();
    sub_1BA143C80(&qword_1EBBEE010, &unk_1EBBEE000, v75);
    sub_1BA4A4FE8();
    sub_1BA142EB0(&qword_1EBBEC7D8, sub_1BA1431B4);
    v42 = sub_1BA4A4F98();

    (*(v92 + 8))(v32, v30);
LABEL_10:
    v51 = v113;
    v76 = sub_1BA4A8338();

    if (v76)
    {
      v59 = &selRef_systemWhiteColor;
    }

    else
    {
      v59 = &selRef_labelColor;
    }

    v52 = v111;
    goto LABEL_14;
  }

  if (!a4)
  {
    type metadata accessor for HealthKitProfileInformationDataSource();
    swift_allocObject();
    v37 = v108;
    v115 = *(sub_1BA2B8F0C(v37, v107, 0, 0, 0, 0) + qword_1EDC6A560);
    v38 = MEMORY[0x1E69A3108];
    v39 = MEMORY[0x1E695BF98];
    sub_1BA143C08(0, &qword_1EDC6B720, &qword_1EDC6E200, MEMORY[0x1E69A3108], MEMORY[0x1E695BF98]);
    sub_1BA143B88(&qword_1EDC6B730, &qword_1EDC6B720, v39);
    v115 = sub_1BA4A4F98();
    v40 = MEMORY[0x1E695BED0];
    sub_1BA143C08(0, &qword_1EDC6B738, &qword_1EDC6E200, v38, MEMORY[0x1E695BED0]);
    sub_1BA142C28();
    sub_1BA143B88(&qword_1EDC6B740, &qword_1EDC6B738, v40);
    sub_1BA4A4FE8();
    sub_1BA142EB0(&qword_1EBBEC7C0, sub_1BA142B40);
    v41 = v100;
    v42 = sub_1BA4A4F98();

    (*(v98 + 8))(v16, v41);
    goto LABEL_10;
  }

  sub_1BA4A3DD8();
  v60 = sub_1BA4A3E88();
  v61 = sub_1BA4A6FA8();
  v62 = os_log_type_enabled(v60, v61);
  v63 = v113;
  if (v62)
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v114 = v63;
    v115 = v65;
    *v64 = 136315138;
    swift_getMetatypeMetadata();
    v66 = sub_1BA4A6808();
    v68 = sub_1B9F0B82C(v66, v67, &v115);

    *(v64 + 4) = v68;
    _os_log_impl(&dword_1B9F07000, v60, v61, "[%s]: Asking for profile context for the primary profile; why?", v64, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v65);
    MEMORY[0x1BFAF43A0](v65, -1, -1);
    MEMORY[0x1BFAF43A0](v64, -1, -1);
  }

  (*(v95 + 8))(v13, v96);
  v69 = v101;
  sub_1BA4A4E78();
  sub_1BA142EB0(&qword_1EBBEC7B8, sub_1BA142AEC);
  v70 = v105;
  v71 = sub_1BA4A5148();
  (*(v103 + 8))(v69, v70);
  return v71;
}

void sub_1BA142AEC()
{
  if (!qword_1EBBEC758)
  {
    v0 = sub_1BA4A4E68();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEC758);
    }
  }
}

void sub_1BA142B40()
{
  if (!qword_1EDC6B760)
  {
    v0 = MEMORY[0x1E695BED0];
    sub_1BA143C08(255, &qword_1EDC6B738, &qword_1EDC6E200, MEMORY[0x1E69A3108], MEMORY[0x1E695BED0]);
    sub_1BA142C28();
    sub_1BA143B88(&qword_1EDC6B740, &qword_1EDC6B738, v0);
    v1 = sub_1BA4A4B78();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC6B760);
    }
  }
}

void sub_1BA142C28()
{
  if (!qword_1EDC6E1E0)
  {
    sub_1B9F0D950(255, &qword_1EDC6E1F0);
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6E1E0);
    }
  }
}

void sub_1BA142C90()
{
  if (!qword_1EBBEC760)
  {
    sub_1BA142D3C();
    sub_1BA142C28();
    sub_1BA142EB0(&qword_1EBBEC780, sub_1BA142D3C);
    v0 = sub_1BA4A4B78();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEC760);
    }
  }
}

void sub_1BA142D3C()
{
  if (!qword_1EBBEC768)
  {
    sub_1BA143038(255, &qword_1EBBEC770, type metadata accessor for CloudProfileInformation, MEMORY[0x1E695C028]);
    sub_1B9F38BF4();
    sub_1BA142E28();
    sub_1BA142EB0(&qword_1EDC6B5B0, sub_1B9F38BF4);
    v0 = sub_1BA4A4CC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEC768);
    }
  }
}

unint64_t sub_1BA142E28()
{
  result = qword_1EBBEC778;
  if (!qword_1EBBEC778)
  {
    sub_1BA143038(255, &qword_1EBBEC770, type metadata accessor for CloudProfileInformation, MEMORY[0x1E695C028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEC778);
  }

  return result;
}

uint64_t sub_1BA142EB0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BA142EF8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1BA142F4C()
{
  if (!qword_1EBBEC788)
  {
    sub_1BA143038(255, &qword_1EBBEC790, sub_1BA142C28, MEMORY[0x1E695BED0]);
    sub_1BA1430C4();
    sub_1BA14312C();
    sub_1BA142EB0(&qword_1EBBEC7A8, sub_1BA1430C4);
    v0 = sub_1BA4A4BB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEC788);
    }
  }
}

void sub_1BA143038(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = sub_1B9F0D950(255, &qword_1EDC6E310);
    v9 = a4(a1, v7, v8, MEMORY[0x1E69E7288]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1BA1430C4()
{
  if (!qword_1EBBEC798)
  {
    sub_1BA142C28();
    v0 = sub_1BA4A4D18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEC798);
    }
  }
}

unint64_t sub_1BA14312C()
{
  result = qword_1EBBEC7A0;
  if (!qword_1EBBEC7A0)
  {
    sub_1BA143038(255, &qword_1EBBEC790, sub_1BA142C28, MEMORY[0x1E695BED0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEC7A0);
  }

  return result;
}

void sub_1BA1431B4()
{
  if (!qword_1EBBEC7B0)
  {
    v0 = MEMORY[0x1E695BED0];
    sub_1BA143C08(255, &unk_1EBBEE000, &qword_1EBBEA318, MEMORY[0x1E69A3430], MEMORY[0x1E695BED0]);
    sub_1BA142C28();
    sub_1BA143C80(&qword_1EBBEE010, &unk_1EBBEE000, v0);
    v1 = sub_1BA4A4B78();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEC7B0);
    }
  }
}

uint64_t sub_1BA14329C@<X0>(void **a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  sub_1BA142B40();
  v47 = *(v10 - 8);
  v48 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BA4A3EA8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  sub_1BA4A3E28();
  v17 = v16;
  v18 = sub_1BA4A3E88();
  v19 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v45 = a5;
    v21 = v20;
    v22 = swift_slowAlloc();
    v44 = a2;
    v23 = v22;
    v49 = a4;
    v50 = v22;
    *v21 = 136315394;
    swift_getMetatypeMetadata();
    v24 = sub_1BA4A6808();
    v26 = sub_1B9F0B82C(v24, v25, &v50);
    v43 = v12;
    v27 = a3;
    v28 = v26;

    *(v21 + 4) = v28;
    *(v21 + 12) = 2080;
    v49 = v16;
    v29 = v16;
    sub_1B9F0D950(0, &qword_1EDC6E310);
    v30 = sub_1BA4A6808();
    v32 = sub_1B9F0B82C(v30, v31, &v50);
    a3 = v27;

    *(v21 + 14) = v32;
    _os_log_impl(&dword_1B9F07000, v18, v19, "[%s]: Unable to fetch iCloud name for profile context: %s", v21, 0x16u);
    swift_arrayDestroy();
    v33 = v23;
    a2 = v44;
    MEMORY[0x1BFAF43A0](v33, -1, -1);
    v34 = v21;
    a5 = v45;
    MEMORY[0x1BFAF43A0](v34, -1, -1);

    (*(v13 + 8))(v15, v43);
  }

  else
  {

    (*(v13 + 8))(v15, v12);
  }

  type metadata accessor for HealthKitProfileInformationDataSource();
  swift_allocObject();
  v50 = *(sub_1BA2B8F0C(a2, a3, 0, 0, 0, 0) + qword_1EDC6A560);
  v35 = MEMORY[0x1E69A3108];
  v36 = MEMORY[0x1E695BF98];
  sub_1BA143C08(0, &qword_1EDC6B720, &qword_1EDC6E200, MEMORY[0x1E69A3108], MEMORY[0x1E695BF98]);
  sub_1BA143B88(&qword_1EDC6B730, &qword_1EDC6B720, v36);

  v37 = sub_1BA4A4F98();

  v50 = v37;
  v38 = MEMORY[0x1E695BED0];
  sub_1BA143C08(0, &qword_1EDC6B738, &qword_1EDC6E200, v35, MEMORY[0x1E695BED0]);
  sub_1BA142C28();
  sub_1BA143B88(&qword_1EDC6B740, &qword_1EDC6B738, v38);
  v39 = v46;
  sub_1BA4A4FE8();
  sub_1BA142EB0(&qword_1EBBEC7C0, sub_1BA142B40);
  v40 = v48;
  v41 = sub_1BA4A4F98();

  result = (*(v47 + 8))(v39, v40);
  *a5 = v41;
  return result;
}

uint64_t sub_1BA143794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a4;
  sub_1BA142EF8(0, &qword_1EBBEA318, MEMORY[0x1E69A3430]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v24[-1] - v7;
  v9 = sub_1BA4A33C8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA071040(a1, v24);
  v13 = v25;
  if (v25)
  {
    __swift_project_boxed_opaque_existential_1(v24, v25);
    v14 = sub_1BA4A2AB8();
    v13 = v15;
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  else
  {
    sub_1BA071124(v24);
    v14 = 0;
  }

  sub_1BA071040(a1, v24);
  if (!v25)
  {
    sub_1BA071124(v24);
    (*(v10 + 56))(v8, 1, 1, v9);
    goto LABEL_8;
  }

  sub_1B9F0D950(0, &qword_1EDC6E1F0);
  v16 = swift_dynamicCast();
  (*(v10 + 56))(v8, v16 ^ 1u, 1, v9);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
LABEL_8:
    sub_1BA143CE4(v8, &qword_1EBBEA318, MEMORY[0x1E69A3430]);
    goto LABEL_9;
  }

  (*(v10 + 32))(v12, v8, v9);
  v14 = sub_1BA4A3328();
  v13 = v17;
  (*(v10 + 8))(v12, v9);
LABEL_9:
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v20 = [Strong navigationItem];

    v21 = [v20 titleView];
    if (v21)
    {
      type metadata accessor for TitleWithSubHeadingView();
      if (swift_dynamicCastClass())
      {
        sub_1BA31BD44(a3, v23, v14, v13);
      }
    }
  }
}

uint64_t ProfileContextNavigationBarConfiguring.configureDetailRoomProfileContextNavigationBar(context:healthStore:profileIdentifier:title:mode:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unsigned __int8 a6, void *a7, uint64_t a8)
{
  v9 = a5;
  if (a6 != 1)
  {
    return ProfileContextNavigationBarConfiguring.configureProfileContextNavigationBar(context:healthStore:profileIdentifier:mode:title:)(a1, a2, a3, a6, a4, a5, a7, a8);
  }

  v10 = [v8 navigationItem];
  if (v9)
  {
    v9 = sub_1BA4A6758();
  }

  [v10 setTitle_];

  return 0;
}

uint64_t sub_1BA143B88(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  result = *a1;
  if (!result)
  {
    sub_1BA143C08(255, a2, &qword_1EDC6E200, MEMORY[0x1E69A3108], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BA143C08(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    sub_1BA142EF8(255, a3, a4);
    v9 = a5(a1, v8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1BA143C80(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  result = *a1;
  if (!result)
  {
    sub_1BA143C08(255, a2, &qword_1EBBEA318, MEMORY[0x1E69A3430], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BA143CE4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1BA142EF8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t HostedProminentMessageWithActionTileViewWithImage.Padding.init(imageTopPadding:imageWidth:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = a4;
  *(a3 + 8) = result;
  *(a3 + 16) = a2 & 1;
  return result;
}

void static HostedProminentMessageWithActionTileViewWithImage.Padding.defaultConfiguration.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

uint64_t sub_1BA143D64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1BA143DB8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t HostedProminentMessageWithActionTileViewWithImage.Padding.encode(to:)(void *a1)
{
  type metadata accessor for HostedProminentMessageWithActionTileViewWithImage.Padding.CodingKeys();
  swift_getWitnessTable();
  v3 = sub_1BA4A8298();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - v5;
  v7 = *v1;
  v12 = v1[1];
  v11 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA4A8548();
  v14 = v7;
  v16 = 0;
  sub_1BA013730();
  v8 = v13;
  sub_1BA4A8288();
  if (!v8)
  {
    v14 = v12;
    v15 = v11;
    v16 = 1;
    sub_1BA4A8238();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t HostedProminentMessageWithActionTileViewWithImage.Padding.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  type metadata accessor for HostedProminentMessageWithActionTileViewWithImage.Padding.CodingKeys();
  swift_getWitnessTable();
  v4 = sub_1BA4A81E8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA4A8528();
  if (!v2)
  {
    v8 = v14;
    v17 = 0;
    sub_1BA013994();
    sub_1BA4A81C8();
    v9 = v15;
    v17 = 1;
    sub_1BA4A8178();
    (*(v5 + 8))(v7, v4);
    v11 = v15;
    v12 = v16;
    *v8 = v9;
    *(v8 + 8) = v11;
    *(v8 + 16) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BA1442B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t HostedProminentMessageWithActionTileViewWithImage.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(type metadata accessor for HostedProminentMessageWithActionTileViewWithImage() + 36));
  sub_1BA14483C(0, qword_1EBBEC7E0, type metadata accessor for ProminentMessageWithActionTileViewWithImage.ViewModel, type metadata accessor for ViewModelState);
  *v4 = 0u;
  v4[1] = 0u;
  v4[2] = 0u;
  v4[3] = 0u;
  v4[4] = 0u;
  sub_1BA1442B0(a1 + *(v5 + 28), a2, type metadata accessor for ProminentMessageWithActionTileViewWithImage.ViewModel);

  return sub_1BA14441C(a1);
}

uint64_t sub_1BA14441C(uint64_t a1)
{
  sub_1BA14483C(0, qword_1EBBEC7E0, type metadata accessor for ProminentMessageWithActionTileViewWithImage.ViewModel, type metadata accessor for ViewModelState);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t HostedProminentMessageWithActionTileViewWithImage.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = type metadata accessor for ProminentMessageWithActionTileViewWithImage(0);
  sub_1BA1442B0(v3, a2 + v8[6], type metadata accessor for ProminentMessageWithActionTileViewWithImage.ViewModel);
  (*(v6 + 16))(&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  v9 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = *(a1 + 16);
  (*(v6 + 32))(v10 + v9, &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v11 = v8[5];
  *(a2 + v11) = swift_getKeyPath();
  sub_1BA14483C(0, &qword_1EDC6B6E0, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  result = swift_storeEnumTagMultiPayload();
  v13 = (a2 + v8[7]);
  *v13 = sub_1BA144728;
  v13[1] = v10;
  return result;
}

uint64_t sub_1BA14467C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for HostedProminentMessageWithActionTileViewWithImage();
  WitnessTable = swift_getWitnessTable();
  result = PluginView.actionHandler.getter(v5, WitnessTable);
  if (result)
  {
    (*(a3 + 16))(a2, a3);
  }

  return result;
}

uint64_t sub_1BA144728()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for HostedProminentMessageWithActionTileViewWithImage() - 8);
  v4 = v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1BA14467C(v4, v1, v2);
}

void (*sub_1BA1447C0(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = HostedProminentMessageWithActionTileViewWithImage.actionHandlerContent.modify();
  return sub_1B9FCDD98;
}

void sub_1BA14483C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BA1448AC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1BA1448E8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_1BA14497C()
{
  type metadata accessor for ProminentMessageWithActionTileViewWithImage.ViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_1B9F80148();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1BA144A28()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1BA144A7C()
{
  result = qword_1EBBEC8E8[0];
  if (!qword_1EBBEC8E8[0])
  {
    type metadata accessor for ProminentMessageWithActionTileViewWithImage(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBBEC8E8);
  }

  return result;
}

uint64_t LoggingResponsePillView.viewModel.getter@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
}

__n128 LoggingResponsePillView.init(viewModel:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1->n128_u64[1];
  a2->n128_u64[0] = a1->n128_u64[0];
  a2->n128_u64[1] = v2;
  result = a1[1];
  a2[1] = result;
  return result;
}

double LoggingResponsePillView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  v6 = sub_1BA4A5798();
  v41 = 0;
  sub_1BA144E4C(v3, v5, v4, &v33);
  v47 = v37;
  v48 = v38;
  v43 = v33;
  v44 = v34;
  v45 = v35;
  v46 = v36;
  v49 = v39;
  v50[0] = v33;
  v50[1] = v34;
  v50[2] = v35;
  v50[3] = v36;
  v50[4] = v37;
  v50[5] = v38;
  v50[6] = v39;
  sub_1BA146558(&v43, v32, sub_1BA1451DC);
  sub_1BA1465D0(v50, sub_1BA1451DC);
  *&v40[55] = v46;
  *&v40[71] = v47;
  *&v40[87] = v48;
  *&v40[103] = v49;
  *&v40[7] = v43;
  *&v40[23] = v44;
  *&v40[39] = v45;
  v7 = v41;
  sub_1BA4A63C8();
  sub_1BA4A5448();
  v8 = sub_1BA4A5B78();
  sub_1BA4A5188();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v42 = 0;
  v17 = sub_1BA4A60D8();
  LOBYTE(v3) = sub_1BA4A5B78();
  sub_1BA145364();
  v19 = (a1 + *(v18 + 36));
  v20 = *(sub_1BA4A5438() + 20);
  v21 = *MEMORY[0x1E697F468];
  v22 = sub_1BA4A5818();
  (*(*(v22 - 8) + 104))(&v19->i8[v20], v21, v22);
  *v19 = vdupq_n_s64(0x4049000000000000uLL);
  sub_1B9F80620();
  *(v19->i16 + *(v23 + 36)) = 256;
  v24 = *&v40[80];
  *(a1 + 81) = *&v40[64];
  *(a1 + 97) = v24;
  *(a1 + 113) = *&v40[96];
  v25 = *&v40[16];
  *(a1 + 17) = *v40;
  *(a1 + 33) = v25;
  v26 = *&v40[48];
  *(a1 + 49) = *&v40[32];
  *(a1 + 65) = v26;
  v27 = v37;
  *(a1 + 184) = v36;
  *(a1 + 200) = v27;
  v28 = v39;
  *(a1 + 216) = v38;
  *(a1 + 232) = v28;
  *(a1 + 136) = v33;
  result = *&v34;
  v30 = v35;
  *(a1 + 152) = v34;
  *a1 = v6;
  *(a1 + 8) = 0x4014000000000000;
  *(a1 + 16) = v7;
  *(a1 + 128) = *&v40[111];
  *(a1 + 168) = v30;
  *(a1 + 248) = v8;
  *(a1 + 249) = v32[0];
  *(a1 + 252) = *(v32 + 3);
  *(a1 + 256) = v10;
  *(a1 + 264) = v12;
  *(a1 + 272) = v14;
  *(a1 + 280) = v16;
  *(a1 + 288) = 0;
  *(a1 + 292) = *&v31[3];
  *(a1 + 289) = *v31;
  *(a1 + 296) = v17;
  *(a1 + 304) = v3;
  return result;
}

uint64_t sub_1BA144E4C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v37 = a3;
  v39 = a4;
  v6 = sub_1BA4A6138();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v10, *MEMORY[0x1E6981630], v6, v8);
  v38 = sub_1BA4A6198();
  (*(v7 + 8))(v10, v6);
  sub_1BA4A63C8();
  sub_1BA4A5278();
  *&v41[3] = *&v41[27];
  *&v41[11] = *&v41[35];
  *&v41[19] = *&v41[43];
  v44 = a1;
  v45 = a2;
  sub_1B9F252FC();

  v11 = sub_1BA4A5E18();
  v13 = v12;
  LOBYTE(v6) = v14;
  sub_1BA4A5C18();
  v15 = sub_1BA4A5DE8();
  v17 = v16;
  LOBYTE(v7) = v18;

  sub_1BA102AF4(v11, v13, v6 & 1);

  sub_1BA4A5C48();
  v19 = sub_1BA4A5DA8();
  v21 = v20;
  LOBYTE(v11) = v22;
  sub_1BA102AF4(v15, v17, v7 & 1);

  v23 = v37;
  v24 = sub_1BA4A5DB8();
  v26 = v25;
  LOBYTE(v17) = v27;
  v29 = v28;
  sub_1BA102AF4(v19, v21, v11 & 1);

  v30 = v38;
  v42[0] = v38;
  v42[1] = 0;
  LOWORD(v43[0]) = 1;
  *(v43 + 2) = *v41;
  *(&v43[1] + 2) = *&v41[8];
  *(&v43[2] + 2) = *&v41[16];
  *&v43[3] = *&v41[23];
  *(&v43[3] + 1) = v23;
  v40 = v17 & 1;
  v31 = v38;
  v32 = v43[0];
  v33 = v43[3];
  v34 = v39;
  v35 = v43[1];
  *(v39 + 48) = v43[2];
  *(v34 + 64) = v33;
  *(v34 + 16) = v32;
  *(v34 + 32) = v35;
  *v34 = v31;
  *(v34 + 80) = v24;
  *(v34 + 88) = v26;
  *(v34 + 96) = v17 & 1;
  *(v34 + 104) = v29;
  sub_1BA146558(v42, &v44, sub_1BA14529C);
  sub_1BA1465C0(v24, v26, v17 & 1);

  sub_1BA102AF4(v24, v26, v17 & 1);

  v44 = v30;
  v45 = 0;
  v46 = 1;
  v47 = *v41;
  v48 = *&v41[8];
  *v49 = *&v41[16];
  *&v49[14] = *&v41[23];
  v50 = v23;
  return sub_1BA1465D0(&v44, sub_1BA14529C);
}

void sub_1BA1451DC()
{
  if (!qword_1EBBEC970)
  {
    sub_1BA145234();
    v0 = sub_1BA4A6428();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEC970);
    }
  }
}

void sub_1BA145234()
{
  if (!qword_1EBBEC978)
  {
    sub_1BA14529C(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBEC978);
    }
  }
}

void sub_1BA1452D8()
{
  if (!qword_1EDC5F018)
  {
    sub_1BA1455E0(255, &qword_1EDC5F170, MEMORY[0x1E6981748], MEMORY[0x1E697F578], MEMORY[0x1E697E830]);
    v0 = sub_1BA4A5418();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F018);
    }
  }
}

void sub_1BA145364()
{
  if (!qword_1EBBEC990)
  {
    sub_1BA145404(255, &qword_1EBBEC998, sub_1BA145498, &qword_1EDC5ECD0, MEMORY[0x1E6980460]);
    sub_1B9F80620();
    v0 = sub_1BA4A5418();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEC990);
    }
  }
}

void sub_1BA145404(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1BA1455E0(255, a4, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], a5);
    v8 = sub_1BA4A5418();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1BA1454C0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A5418();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BA14554C()
{
  if (!qword_1EBBEC9B0)
  {
    sub_1BA1451DC();
    sub_1B9F8A89C(&qword_1EBBEC9B8, sub_1BA1451DC);
    v0 = sub_1BA4A6218();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEC9B0);
    }
  }
}

void sub_1BA1455E0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t LoggingResponsePillView.icon.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BA4A6138();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v1 + 24);
  (*(v4 + 104))(v7, *MEMORY[0x1E6981630], v3, v5);
  v9 = sub_1BA4A6198();
  (*(v4 + 8))(v7, v3);
  sub_1BA4A63C8();
  sub_1BA4A5278();
  *&v12[8] = v14;
  *&v12[24] = v15;
  *&v12[40] = v16;
  v10 = *&v12[18];
  *(a1 + 18) = *&v12[2];
  v13 = 1;
  *a1 = v9;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 34) = v10;
  *(a1 + 50) = *&v12[34];
  *(a1 + 64) = *&v12[48];
  *(a1 + 72) = v8;
}

uint64_t LoggingResponsePillView.title.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1B9F252FC();

  v2 = sub_1BA4A5E18();
  v4 = v3;
  v6 = v5;
  sub_1BA4A5C18();
  v7 = sub_1BA4A5DE8();
  v9 = v8;
  v11 = v10;

  sub_1BA102AF4(v2, v4, v6 & 1);

  sub_1BA4A5C48();
  v12 = sub_1BA4A5DA8();
  v14 = v13;
  v16 = v15;
  sub_1BA102AF4(v7, v9, v11 & 1);

  v17 = sub_1BA4A5DB8();
  v19 = v18;
  LOBYTE(v7) = v20;
  v22 = v21;
  sub_1BA102AF4(v12, v14, v16 & 1);

  *a1 = v17;
  *(a1 + 8) = v19;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v22;
  return result;
}

uint64_t LoggingResponsePillView.ViewModel.icon.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t LoggingResponsePillView.ViewModel.title.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t LoggingResponsePillView.ViewModel.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t LoggingResponsePillView.ViewModel.tintColor.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t static LoggingResponsePillView.ViewModel.positive(title:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1BA4A6128();

  result = sub_1BA4A60B8();
  *a3 = v6;
  a3[1] = a1;
  a3[2] = a2;
  a3[3] = result;
  return result;
}

uint64_t static LoggingResponsePillView.ViewModel.negative(title:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1BA4A6128();

  result = sub_1BA4A6098();
  *a3 = v6;
  a3[1] = a1;
  a3[2] = a2;
  a3[3] = result;
  return result;
}

uint64_t static LoggingResponsePillView.ViewModel.logged.getter@<X0>(uint64_t *a1@<X8>)
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v2 = sub_1BA4A1318();
  v4 = v3;
  v5 = sub_1BA4A6128();
  result = sub_1BA4A60B8();
  *a1 = v5;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = result;
  return result;
}

uint64_t static LoggingResponsePillView.ViewModel.taken.getter@<X0>(uint64_t *a1@<X8>)
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v2 = sub_1BA4A1318();
  v4 = v3;
  v5 = sub_1BA4A6128();
  result = sub_1BA4A60B8();
  *a1 = v5;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = result;
  return result;
}

uint64_t static LoggingResponsePillView.ViewModel.skipped.getter@<X0>(uint64_t *a1@<X8>)
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v2 = sub_1BA4A1318();
  v4 = v3;
  v5 = sub_1BA4A6128();
  result = sub_1BA4A6098();
  *a1 = v5;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = result;
  return result;
}

uint64_t static LoggingResponsePillView.logged.getter@<X0>(uint64_t *a1@<X8>)
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v2 = sub_1BA4A1318();
  v4 = v3;
  v5 = sub_1BA4A6128();
  result = sub_1BA4A60B8();
  *a1 = v5;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = result;
  return result;
}

uint64_t static LoggingResponsePillView.taken.getter@<X0>(uint64_t *a1@<X8>)
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v2 = sub_1BA4A1318();
  v4 = v3;
  v5 = sub_1BA4A6128();
  result = sub_1BA4A60B8();
  *a1 = v5;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = result;
  return result;
}

uint64_t static LoggingResponsePillView.skipped.getter@<X0>(uint64_t *a1@<X8>)
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v2 = sub_1BA4A1318();
  v4 = v3;
  v5 = sub_1BA4A6128();
  result = sub_1BA4A6098();
  *a1 = v5;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = result;
  return result;
}

uint64_t sub_1BA146074(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1BA1460BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BA14610C()
{
  result = qword_1EBBEC9C0;
  if (!qword_1EBBEC9C0)
  {
    sub_1BA145364();
    sub_1BA1461BC();
    sub_1B9F8A89C(&qword_1EDC5F338, sub_1B9F80620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEC9C0);
  }

  return result;
}

unint64_t sub_1BA1461BC()
{
  result = qword_1EBBEC9C8;
  if (!qword_1EBBEC9C8)
  {
    v1 = MEMORY[0x1E6980460];
    sub_1BA145404(255, &qword_1EBBEC998, sub_1BA145498, &qword_1EDC5ECD0, MEMORY[0x1E6980460]);
    sub_1BA1464D8(&qword_1EBBEC9D0, sub_1BA145498, sub_1BA1462E0);
    sub_1BA146390(&qword_1EDC5ECD8, &qword_1EDC5ECD0, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEC9C8);
  }

  return result;
}

unint64_t sub_1BA1462E0()
{
  result = qword_1EBBEC9D8;
  if (!qword_1EBBEC9D8)
  {
    sub_1BA145524(255);
    sub_1B9F8A89C(&qword_1EBBEC9E0, sub_1BA14554C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEC9D8);
  }

  return result;
}

uint64_t sub_1BA146390(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1BA1455E0(255, a2, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BA1463E8()
{
  result = qword_1EBBEC9E8;
  if (!qword_1EBBEC9E8)
  {
    sub_1BA14529C(255);
    sub_1BA1464D8(&qword_1EDC5F020, sub_1BA1452D8, sub_1BA0D6A80);
    sub_1BA146390(&qword_1EBBEC9F0, &qword_1EBBEC988, MEMORY[0x1E6980480]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEC9E8);
  }

  return result;
}

uint64_t sub_1BA1464D8(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

uint64_t sub_1BA146558(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA1465C0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1BA1465D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::Void __swiftcall UICollectionView.registerFakeCells()()
{
  sub_1B9F23D88();
  v0 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1BA162E38(v0, v1);

  v2 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1BA162E38(v2, v3);
}

uint64_t sub_1BA1466BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  UICollectionView.register<A>(_:elementKind:)(v5, v5, v6, a2, a3);
}

id static ReusableNibView.nib.getter()
{
  swift_getMetatypeMetadata();
  sub_1BA4A6808();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1BA4A6758();

  v3 = [objc_opt_self() nibWithNibName:v2 bundle:v1];

  return v3;
}

void UICollectionView.register<A>(_:elementKind:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = swift_conformsToProtocol2();
  if (v9 && a4)
  {
    v10 = v9;
    v11 = (*(v9 + 24))(a4, v9);
    v12 = sub_1BA4A6758();
    (*(*(v10 + 16) + 8))(a4);
    v14 = sub_1BA4A6758();

    [v6 registerNib:v11 forSupplementaryViewOfKind:v12 withReuseIdentifier:v14];
  }

  else
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v12 = sub_1BA4A6758();
    (*(a5 + 8))(a4, a5);
    v14 = sub_1BA4A6758();

    [v6 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v12 withReuseIdentifier:v14];
  }
}

uint64_t sub_1BA146988()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEC9F8 = result;
  unk_1EBBECA00 = v1;
  return result;
}

uint64_t sub_1BA146A34()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBECA08 = result;
  unk_1EBBECA10 = v1;
  return result;
}

uint64_t sub_1BA146AE0()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBECA18 = result;
  unk_1EBBECA20 = v1;
  return result;
}

void *sub_1BA146B8C(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for ListLayoutConfiguration();
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC6CBB0 != -1)
  {
    v10 = v4;
    swift_once();
    v4 = v10;
  }

  v7 = __swift_project_value_buffer(v4, qword_1EDC6CBB8);
  sub_1BA14DCE4(v7, v6, type metadata accessor for ListLayoutConfiguration);
  *(v6 + 3) = xmmword_1BA4C07B0;
  *(v6 + 4) = xmmword_1BA4C07C0;
  v8 = ListLayoutConfiguration.layout(for:)(a2);
  sub_1BA14DD4C(v6, type metadata accessor for ListLayoutConfiguration);
  return v8;
}

uint64_t sub_1BA146CA4()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E6720];
  sub_1BA14D7C8(0, &qword_1EDC6ADF8, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v146 = &v145 - v4;
  sub_1BA14D7C8(0, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow, v2);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v147 = &v145 - v6;
  sub_1BA14D7C8(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, v2);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v145 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v145 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v157 = &v145 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v164 = &v145 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v169 = &v145 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v145 - v20;
  v22 = sub_1BA4A1C68();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v154 = &v145 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v145 - v26;
  v175 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v165 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175);
  v177 = &v145 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v176 = &v145 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v174 = &v145 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v170 = &v145 - v34;
  MEMORY[0x1EEE9AC00](v35);
  *&v155 = &v145 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v145 - v38;
  v40 = v0 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_selectedDataTypesDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v42 = result;
  v166 = v39;
  v148 = v12;
  v168 = v9;
  v43 = *(v40 + 8);
  ObjectType = swift_getObjectType();
  v45 = *(v43 + 8);
  v153 = v42;
  v167 = v43;
  v46 = v45(ObjectType, v43);
  swift_beginAccess();
  v47 = *(v46 + 24);
  v48 = v47[2];
  if (v48)
  {
    v49 = sub_1BA0219CC(v47[2], 0);
    sub_1BA023688(&v179, v49 + ((*(v165 + 80) + 32) & ~*(v165 + 80)), v48, v47);
    v173 = v50;
    v172 = *(&v179 + 1);
    v163 = *(&v180 + 1);
    v171 = v180;
    v162 = v181;

    result = sub_1B9F52E48();
    if (v173 != v48)
    {
      __break(1u);
      return result;
    }
  }

  else
  {

    v49 = MEMORY[0x1E69E7CC0];
  }

  v51 = sub_1BA024284(v49);

  v52 = v51[2];
  v53 = v166;
  if (v52)
  {
    v54 = sub_1BA0219CC(v51[2], 0);
    sub_1BA023688(&v179, v54 + ((*(v165 + 80) + 32) & ~*(v165 + 80)), v52, v51);
    v56 = v55;
    sub_1B9F52E48();
    if (v56 == v52)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  v54 = MEMORY[0x1E69E7CC0];
LABEL_10:
  v57 = *(v54 + 16);
  v162 = OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_contentKinds;
  v163 = v1;
  v161 = v57;
  if (v57)
  {
    v58 = 0;
    v173 = v1 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_additionalItemFilter;
    v152 = (v23 + 16);
    v151 = (v23 + 32);
    v150 = *MEMORY[0x1E69A3B68];
    v149 = (v23 + 104);
    v158 = (v23 + 8);
    v156 = MEMORY[0x1E69E7CC0];
    v160 = v21;
    v159 = v54;
    while (1)
    {
      if (v58 >= *(v54 + 16))
      {
        __break(1u);
        goto LABEL_96;
      }

      v172 = (*(v165 + 80) + 32) & ~*(v165 + 80);
      v171 = *(v165 + 72);
      sub_1BA14DCE4(v54 + v172 + v171 * v58, v53, type metadata accessor for SummarySharingSelectableDataTypeItem);
      v59 = *(v1 + v162);
      v52 = &qword_1EBBE9CB0;
      sub_1BA14DDAC(v53 + *(v175 + 40), v21, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      v60 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
      if ((*(*(v60 - 8) + 48))(v21, 1, v60) == 1)
      {
        sub_1BA14D988(v21, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        (*v149)(v27, v150, v22);
      }

      else
      {
        v61 = &v21[*(v60 + 40)];
        v62 = v154;
        (*v152)(v154, v61, v22);
        sub_1BA14DD4C(v21, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        (*v151)(v27, v62, v22);
      }

      v63 = 0;
      ++v58;
      v64 = *(v59 + 16);
      do
      {
        v65 = v63;
        if (v64 == v63)
        {
          break;
        }

        ++v63;
        sub_1BA14D82C();
        v52 = v22;
      }

      while ((sub_1BA4A6728() & 1) == 0);
      (*v158)(v27, v22);
      v66 = *v173;
      v53 = v166;
      if (*v173)
      {
        if (v64 != v65)
        {
          v52 = *(v173 + 8);

          v67 = v66(v53);
          sub_1B9F0E310(v66);
          if (v67)
          {
LABEL_26:
            sub_1BA14D9F8(v53, v155, type metadata accessor for SummarySharingSelectableDataTypeItem);
            v68 = v156;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v179 = v68;
            v1 = v163;
            v21 = v160;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v52 = &v179;
              sub_1BA066E50(0, *(v68 + 16) + 1, 1);
              v68 = v179;
            }

            v71 = *(v68 + 16);
            v70 = *(v68 + 24);
            v72 = v68;
            if (v71 >= v70 >> 1)
            {
              v52 = &v179;
              sub_1BA066E50(v70 > 1, v71 + 1, 1);
              v72 = v179;
            }

            *(v72 + 16) = v71 + 1;
            v156 = v72;
            sub_1BA14D9F8(v155, v72 + v172 + v71 * v171, type metadata accessor for SummarySharingSelectableDataTypeItem);
            goto LABEL_13;
          }
        }
      }

      else if (v64 != v65)
      {
        goto LABEL_26;
      }

      sub_1BA14DD4C(v53, type metadata accessor for SummarySharingSelectableDataTypeItem);
      v1 = v163;
      v21 = v160;
LABEL_13:
      v54 = v159;
      if (v58 == v161)
      {
        goto LABEL_32;
      }
    }
  }

  v156 = MEMORY[0x1E69E7CC0];
LABEL_32:

  v73 = v156;
  v74 = *(v156 + 16);
  if (v74)
  {
    goto LABEL_33;
  }

  v133 = v147;
  sub_1BA14DDAC(v1 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_selectionFlow, v147, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow);
  v134 = type metadata accessor for SummarySharingSelectionFlow(0);
  if ((*(*(v134 - 8) + 48))(v133, 1, v134) == 1)
  {
    sub_1BA14D988(v133, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow);
    v73 = v156;
    v74 = *(v156 + 16);
    if (v74)
    {
LABEL_33:
      *&v179 = MEMORY[0x1E69E7CC0];
      v75 = v73;
      sub_1BA066E50(0, v74, 0);
      v52 = v179;
      v171 = (*(v165 + 80) + 32) & ~*(v165 + 80);
      v76 = v75 + v171;
      v159 = "LOGGING_RESPONSE_SKIPPED_TITLE";
      v166 = *(v165 + 72);
      v154 = "HEALTH_ALERT_TITLE_%@";
      v158 = *MEMORY[0x1E696B5F0];
      v155 = xmmword_1BA4B5480;
      while (1)
      {
        v173 = v74;
        v172 = v52;
        v77 = v174;
        sub_1BA14DCE4(v76, v174, type metadata accessor for SummarySharingSelectableDataTypeItem);
        v78 = v77;
        v79 = v176;
        sub_1BA14DCE4(v78, v176, type metadata accessor for SummarySharingSelectableDataTypeItem);
        *(v79 + 48) = 0;
        *(v79 + 40) = v167;
        swift_unknownObjectWeakAssign();
        v80 = v79;
        v81 = v177;
        sub_1BA14DCE4(v80, v177, type metadata accessor for SummarySharingSelectableDataTypeItem);
        v82 = *(v175 + 40);
        v83 = v81 + v82;
        v84 = v169;
        sub_1BA14DDAC(v83, v169, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        v85 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
        v86 = *(*(v85 - 8) + 48);
        if (v86(v84, 1, v85) == 1)
        {
          sub_1BA14D988(v84, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        }

        else
        {
          v87 = *(v84 + 8);
          v88 = v87;
          sub_1BA14DD4C(v84, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
          if (v87)
          {
            if (qword_1EBBE88F0 != -1)
            {
              swift_once();
            }

            v89 = off_1EBBF1890;
            v90 = [v88 identifier];
            v91 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
            v93 = v92;

            if (v89[2])
            {
              sub_1B9F24A34(v91, v93);
              v95 = v94;

              if (v95)
              {
                v96 = qword_1EDC5E100;

                if (v96 != -1)
                {
                  swift_once();
                }

                v97 = qword_1EDC84A30;
                v98 = sub_1BA4A6758();

                v99 = [objc_opt_self() imageNamed:v98 inBundle:v97];

                if (v99)
                {
                  goto LABEL_57;
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
        }

        v100 = v164;
        sub_1BA14DDAC(v177 + v82, v164, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        if (v86(v100, 1, v85) == 1)
        {
          sub_1BA14D988(v100, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        }

        else
        {
          v99 = *(v100 + 48);
          v101 = v99;
          sub_1BA14DD4C(v100, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
          if (v99)
          {
            goto LABEL_57;
          }
        }

        v102 = v157;
        sub_1BA14DDAC(v177 + v82, v157, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        if (v86(v102, 1, v85) == 1)
        {
          sub_1BA14D988(v102, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
          v103 = 0;
        }

        else
        {
          v103 = *(v102 + 56);
          sub_1BA14DD4C(v102, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        }

        v99 = [v103 largeListIcon];

        if (!v99)
        {
          v104 = v148;
          sub_1BA14DDAC(v177 + v82, v148, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
          if (v86(v104, 1, v85) == 1)
          {
            sub_1BA14D988(v104, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
            v99 = 0;
          }

          else
          {
            v105 = *(v104 + 56);
            sub_1BA14DD4C(v104, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
            v99 = [v105 listIcon];
          }
        }

LABEL_57:
        sub_1BA14DD4C(v177, type metadata accessor for SummarySharingSelectableDataTypeItem);
        v106 = (v176 + *(v175 + 40));
        if (!v86(v106, 1, v85))
        {
          v107 = v106[6];
          v106[6] = v99;
          v99 = v107;
        }

        v108 = v168;
        sub_1BA14DDAC(v106, v168, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        if (v86(v108, 1, v85) != 1)
        {
          v111 = *(v108 + 16);
          v110 = *(v108 + 24);

          sub_1BA14DD4C(v108, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
          if (v110)
          {
            if (!v86(v106, 1, v85))
            {
              v115 = v106[1];
              if (v115)
              {
                v162 = v111;
                sub_1B9F1B4AC(0, &qword_1EDC6B410, &qword_1EDC6B3D0);
                v116 = swift_allocObject();
                *(v116 + 16) = v155;
                v117 = v115;
                v118 = [v117 identifier];
                v119 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
                v161 = v120;

                *(v116 + 56) = MEMORY[0x1E69E6158];
                *(v116 + 64) = sub_1B9F1BE20();
                v121 = v161;
                *(v116 + 32) = v119;
                *(v116 + 40) = v121;
                v160 = sub_1BA4A67D8();
                v161 = v122;
                v123 = [v117 identifier];
                v124 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
                v126 = v125;

                if (v124 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v126 == v127)
                {

                  goto LABEL_75;
                }

                v128 = sub_1BA4A8338();

                if (v128)
                {
LABEL_75:
                  if (qword_1EDC5E100 == -1)
                  {
LABEL_78:
                    v162 = sub_1BA4A1318();
                    v130 = v129;

                    sub_1BA14DD4C(v174, type metadata accessor for SummarySharingSelectableDataTypeItem);
                    if (!v86(v106, 1, v85))
                    {
                      v106[2] = v162;
                      v106[3] = v130;
                    }

                    goto LABEL_65;
                  }
                }

                else if (qword_1EDC5E100 == -1)
                {
                  goto LABEL_78;
                }

                swift_once();
                goto LABEL_78;
              }
            }
          }

          sub_1BA14DD4C(v174, type metadata accessor for SummarySharingSelectableDataTypeItem);
LABEL_65:
          v109 = v170;
          v52 = v172;
          goto LABEL_66;
        }

        sub_1BA14DD4C(v174, type metadata accessor for SummarySharingSelectableDataTypeItem);
        sub_1BA14D988(v108, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        v109 = v170;
        v52 = v172;
LABEL_66:
        sub_1BA14D9F8(v176, v109, type metadata accessor for SummarySharingSelectableDataTypeItem);
        *&v179 = v52;
        v113 = v52[2];
        v112 = v52[3];
        if (v113 >= v112 >> 1)
        {
          sub_1BA066E50(v112 > 1, v113 + 1, 1);
          v52 = v179;
        }

        v52[2] = v113 + 1;
        v114 = v166;
        sub_1BA14D9F8(v109, v52 + v171 + v113 * v166, type metadata accessor for SummarySharingSelectableDataTypeItem);
        v76 += v114;
        v74 = v173 - 1;
        if (v173 == 1)
        {

          goto LABEL_83;
        }
      }
    }

    v52 = MEMORY[0x1E69E7CC0];
LABEL_83:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_96:
      v52 = sub_1BA2F67E8(v52);
    }

    v131 = v52[2];
    *&v179 = v52 + ((*(v165 + 80) + 32) & ~*(v165 + 80));
    *(&v179 + 1) = v131;
    sub_1BA14B0D4(&v179);
    v132 = sub_1B9FE53EC(v52);

    sub_1BA0EB668(0, v132, 1);

    return swift_unknownObjectRelease();
  }

  else
  {

    sub_1BA14D988(v133, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow);
    v135 = *(v1 + v162);

    v137 = sub_1B9F866AC(v136);

    v138 = *(v137 + 16);

    if (v138 == 1)
    {
      v139 = v146;
      if (*(v135 + 16))
      {
        (*(v23 + 16))(v146, v135 + ((*(v23 + 80) + 32) & ~*(v23 + 80)), v22);
        v140 = 0;
      }

      else
      {
        v140 = 1;
      }
    }

    else
    {
      v140 = 1;
      v139 = v146;
    }

    (*(v23 + 56))(v139, v140, 1, v22);
    sub_1BA38B674(v139, &v179);
    sub_1B9F1B4AC(0, &qword_1EDC5DCA0, &qword_1EDC6AD50);
    v141 = swift_allocObject();
    *(v141 + 16) = xmmword_1BA4B5480;
    *(v141 + 56) = &type metadata for SummarySharingIconWithNameItem;
    *(v141 + 64) = sub_1BA14D884();
    v142 = swift_allocObject();
    *(v141 + 32) = v142;
    v143 = v180;
    v142[1] = v179;
    v142[2] = v143;
    v144 = v182;
    v142[3] = v181;
    v142[4] = v144;
    sub_1BA14D8D8(&v179, v178);
    sub_1BA0EB668(0, v141, 1);
    swift_unknownObjectRelease();

    sub_1BA14D934(&v179);
    return sub_1BA14D988(v139, &qword_1EDC6ADF8, MEMORY[0x1E69A3C08]);
  }
}

BOOL sub_1BA148504(uint64_t a1, uint64_t a2)
{
  v57 = a2;
  sub_1BA14D7C8(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v55 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v50 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v50 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v50 - v12;
  v14 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v15 = *(v14 + 40);
  v56 = a1;
  sub_1BA14DDAC(a1 + v15, v13, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  v16 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  v17 = *(*(v16 - 8) + 48);
  if (v17(v13, 1, v16) == 1)
  {
    goto LABEL_2;
  }

  v19 = *(v13 + 7);
  v54 = v19;
  sub_1BA14DD4C(v13, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  if (!v19)
  {
    return 0;
  }

  v20 = *(v14 + 40);
  sub_1BA14DDAC(v57 + v20, v10, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  if (v17(v10, 1, v16) == 1)
  {

    v18 = v10;
    goto LABEL_6;
  }

  v22 = *(v10 + 7);
  v23 = v22;
  sub_1BA14DD4C(v10, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  if (!v22)
  {
LABEL_28:

    return 0;
  }

  v51 = v20;
  v24 = [v54 displayName];
  v52 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v26 = v25;

  v53 = v23;
  v27 = [v23 displayName];
  v28 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v30 = v29;

  if (v52 == v28 && v26 == v30)
  {
  }

  else
  {
    v32 = sub_1BA4A8338();

    if ((v32 & 1) == 0)
    {
      v33 = v54;
      v34 = [v54 displayName];
      v35 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v37 = v36;

      v60 = v35;
      v61 = v37;
      v38 = v53;
      v39 = [v53 displayName];
      v40 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v42 = v41;

      v58 = v40;
      v59 = v42;
      sub_1B9F252FC();
      v43 = sub_1BA4A7B78();

      return v43 == -1;
    }
  }

  sub_1BA14DDAC(v56 + v15, v7, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  if (v17(v7, 1, v16) == 1)
  {

    v18 = v7;
    goto LABEL_6;
  }

  v45 = *(v7 + 2);
  v46 = *(v7 + 3);

  sub_1BA14DD4C(v7, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  if (!v46)
  {
LABEL_27:

    goto LABEL_28;
  }

  v13 = v55;
  sub_1BA14DDAC(v57 + v51, v55, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  if (v17(v13, 1, v16) == 1)
  {

LABEL_2:
    v18 = v13;
LABEL_6:
    sub_1BA14D988(v18, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    return 0;
  }

  v48 = *(v13 + 2);
  v47 = *(v13 + 3);

  sub_1BA14DD4C(v13, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  if (!v47)
  {

    goto LABEL_27;
  }

  v60 = v45;
  v61 = v46;
  v58 = v48;
  v59 = v47;
  sub_1B9F252FC();
  v49 = sub_1BA4A7B78();

  return v49 == -1;
}

uint64_t sub_1BA148B18()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_healthExperienceStore);

  sub_1B9F0E310(*(v0 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_additionalItemFilter));
  sub_1BA14D988(v0 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_selectionFlow, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow);
  v1 = v0 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_selectedDataTypesDelegate;

  return sub_1B9FAB600(v1);
}

uint64_t SummarySharingSelectedDataTypesDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_healthExperienceStore);

  sub_1B9F0E310(*(v0 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_additionalItemFilter));
  sub_1BA14D988(v0 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_selectionFlow, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow);
  sub_1B9FAB600(v0 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_selectedDataTypesDelegate);
  return v0;
}

uint64_t SummarySharingSelectedDataTypesDataSource.__deallocating_deinit()
{
  SummarySharingSelectedDataTypesDataSource.deinit();

  return swift_deallocClassInstance();
}

void SummarySharingSelectedDataTypesDataSource.supplementaryItem(ofKind:at:)(uint64_t *a1@<X8>)
{
  v2 = v1;
  v96 = *v1;
  v4 = sub_1BA4A3EA8();
  v97 = *(v4 - 8);
  v98 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA14D7C8(0, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v91 - v8;
  v10 = type metadata accessor for SummarySharingSelectionFlow(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v94 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v95 = &v91 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v91 - v16;
  sub_1BA14DDAC(v2 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_selectionFlow, v9, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1BA14D988(v9, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow);
    v18 = v2 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_headerTitle;
    v20 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_headerTitle);
    v19 = *(v18 + 1);
    a1[3] = &type metadata for CollectionViewHeaderItem;
    a1[4] = sub_1BA0473B0();
    v21 = swift_allocObject();
    *a1 = v21;
    v103 = type metadata accessor for CollectionViewHeaderCell();
    sub_1BA14DB00(0, &qword_1EDC664A8, type metadata accessor for CollectionViewHeaderCell);
    *(v21 + 16) = sub_1BA4A6808();
    *(v21 + 24) = v22;
    *(v21 + 32) = v20;
    *(v21 + 40) = v19;
    *(v21 + 48) = sub_1BA09AE24;
    *(v21 + 56) = 0;
    *(v21 + 64) = 1;
    *(v21 + 72) = 1;
    *(v21 + 144) = 0;
    *(v21 + 80) = 0u;
    *(v21 + 96) = 0u;
    *(v21 + 112) = 0u;
    *(v21 + 121) = 0u;
    v103 = v20;
    v104 = v19;
    v101 = 32;
    v102 = 0xE100000000000000;
    v99 = 0;
    v100 = 0xE000000000000000;
    sub_1B9F252FC();

    v23 = sub_1BA4A7B58();
    v25 = v24;
    sub_1B9F1C048(0, &qword_1EDC6E330);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1BA4B5480;
    *(v26 + 32) = v23;
    *(v26 + 40) = v25;

    v27 = sub_1BA4A6AE8();

    v28 = HKUIJoinStringsForAutomationIdentifier();

    if (v28)
    {

      v29 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v31 = v30;

      *(v21 + 152) = v29;
      *(v21 + 160) = v31;
      return;
    }

    __break(1u);
    goto LABEL_18;
  }

  v93 = a1;
  sub_1BA14D9F8(v9, v17, type metadata accessor for SummarySharingSelectionFlow);
  if (*(v2 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_canEditSelection) != 1 || (v32 = , v33 = sub_1B9F866AC(v32), , v34 = *(v33 + 16), , v34 != 1))
  {
    sub_1BA4A3D88();
    v55 = sub_1BA4A3E88();
    v56 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = v17;
      v59 = swift_slowAlloc();
      v103 = v59;
      *v57 = 136315138;
      v60 = sub_1BA4A85D8();
      v62 = sub_1B9F0B82C(v60, v61, &v103);

      *(v57 + 4) = v62;
      _os_log_impl(&dword_1B9F07000, v55, v56, "[%s] Data source contains multiple content kinds; we do not want to provide an edit button here", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v59);
      v63 = v59;
      v17 = v58;
      MEMORY[0x1BFAF43A0](v63, -1, -1);
      MEMORY[0x1BFAF43A0](v57, -1, -1);
    }

    (*(v97 + 8))(v6, v98);
    v65 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_headerTitle);
    v64 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_headerTitle + 8);
    v66 = v93;
    v93[3] = &type metadata for CollectionViewHeaderItem;
    v66[4] = sub_1BA0473B0();
    v67 = swift_allocObject();
    *v66 = v67;
    v103 = type metadata accessor for CollectionViewHeaderCell();
    sub_1BA14DB00(0, &qword_1EDC664A8, type metadata accessor for CollectionViewHeaderCell);
    *(v67 + 16) = sub_1BA4A6808();
    *(v67 + 24) = v68;
    *(v67 + 32) = v65;
    *(v67 + 40) = v64;
    *(v67 + 48) = sub_1BA09AE24;
    *(v67 + 56) = 0;
    *(v67 + 64) = 1;
    *(v67 + 72) = 1;
    *(v67 + 144) = 0;
    *(v67 + 80) = 0u;
    *(v67 + 96) = 0u;
    *(v67 + 112) = 0u;
    *(v67 + 121) = 0u;
    v103 = v65;
    v104 = v64;
    v101 = 32;
    v102 = 0xE100000000000000;
    v99 = 0;
    v100 = 0xE000000000000000;
    sub_1B9F252FC();

    v69 = sub_1BA4A7B58();
    v71 = v70;
    sub_1B9F1C048(0, &qword_1EDC6E330);
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_1BA4B5480;
    *(v72 + 32) = v69;
    *(v72 + 40) = v71;

    v73 = sub_1BA4A6AE8();

    v74 = HKUIJoinStringsForAutomationIdentifier();

    if (!v74)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v75 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v77 = v76;

    *(v67 + 152) = v75;
    *(v67 + 160) = v77;
    v78 = v17;
LABEL_14:
    sub_1BA14DD4C(v78, type metadata accessor for SummarySharingSelectionFlow);
    return;
  }

  v35 = v95;
  sub_1BA14DCE4(v17, v95, type metadata accessor for SummarySharingSelectionFlow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v37 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_headerTitle);
  v38 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_headerTitle + 8);
  if (EnumCaseMultiPayload != 2)
  {
    v79 = v93;
    v93[3] = &type metadata for CollectionViewHeaderItem;
    v79[4] = sub_1BA0473B0();
    v80 = swift_allocObject();
    *v79 = v80;
    v103 = type metadata accessor for CollectionViewHeaderCell();
    sub_1BA14DB00(0, &qword_1EDC664A8, type metadata accessor for CollectionViewHeaderCell);
    *(v80 + 16) = sub_1BA4A6808();
    *(v80 + 24) = v81;
    *(v80 + 32) = v37;
    *(v80 + 40) = v38;
    *(v80 + 48) = sub_1BA09AE24;
    *(v80 + 56) = 0;
    *(v80 + 64) = 1;
    *(v80 + 72) = 1;
    *(v80 + 144) = 0;
    *(v80 + 80) = 0u;
    *(v80 + 96) = 0u;
    *(v80 + 112) = 0u;
    *(v80 + 121) = 0u;
    v103 = v37;
    v104 = v38;
    v101 = 32;
    v102 = 0xE100000000000000;
    v99 = 0;
    v100 = 0xE000000000000000;
    sub_1B9F252FC();

    v82 = sub_1BA4A7B58();
    v84 = v83;
    sub_1B9F1C048(0, &qword_1EDC6E330);
    v85 = swift_allocObject();
    *(v85 + 16) = xmmword_1BA4B5480;
    *(v85 + 32) = v82;
    *(v85 + 40) = v84;

    v86 = sub_1BA4A6AE8();

    v87 = HKUIJoinStringsForAutomationIdentifier();

    if (!v87)
    {
LABEL_19:
      __break(1u);
      return;
    }

    v88 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v90 = v89;

    *(v80 + 152) = v88;
    *(v80 + 160) = v90;
    sub_1BA14DD4C(v17, type metadata accessor for SummarySharingSelectionFlow);
    v78 = v35;
    goto LABEL_14;
  }

  v98 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_headerTitle);
  v39 = v17;
  v40 = v93;
  if (qword_1EBBE83E8 != -1)
  {
    swift_once();
  }

  v41 = unk_1EBBECA20;
  v95 = qword_1EBBECA18;
  LODWORD(v97) = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_isHeaderLinkEnabled);
  v42 = swift_allocObject();
  swift_weakInit();
  v92 = v39;
  v43 = v94;
  sub_1BA14DCE4(v39, v94, type metadata accessor for SummarySharingSelectionFlow);
  v44 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = v42;
  sub_1BA14D9F8(v43, v45 + v44, type metadata accessor for SummarySharingSelectionFlow);
  *(v45 + ((v12 + v44 + 7) & 0xFFFFFFFFFFFFFFF8)) = v96;
  v40[3] = &type metadata for CollectionViewHeaderWithLinkItem;
  v40[4] = sub_1BA09A7A4();
  v46 = swift_allocObject();
  *v40 = v46;
  v103 = type metadata accessor for CollectionViewHeaderWithLinkCell();
  sub_1BA14DB00(0, &qword_1EBBE9DC0, type metadata accessor for CollectionViewHeaderWithLinkCell);

  v47 = sub_1BA4A6808();
  v49 = v48;
  v103 = 0;
  v104 = 0xE000000000000000;

  v50 = v41;

  sub_1BA4A7DF8();

  v103 = 0xD000000000000013;
  v104 = 0x80000001BA4E76C0;
  v51 = v98;
  MEMORY[0x1BFAF1350](v98, v38);
  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  v52 = v95;
  MEMORY[0x1BFAF1350](v95, v50);

  v53 = v103;
  v54 = v104;
  *(v46 + 16) = v47;
  *(v46 + 24) = v49;
  *(v46 + 32) = v53;
  *(v46 + 40) = v54;
  *(v46 + 48) = v51;
  *(v46 + 56) = v38;
  *(v46 + 64) = sub_1BA09AE24;
  *(v46 + 72) = 0;
  *(v46 + 80) = 1;
  *(v46 + 88) = 1;
  *(v46 + 96) = 0u;
  *(v46 + 112) = 0u;
  *(v46 + 128) = 0u;
  *(v46 + 137) = 0u;
  *(v46 + 160) = 0;
  *(v46 + 168) = v52;
  *(v46 + 176) = v50;
  *(v46 + 184) = v97;
  *(v46 + 192) = sub_1BA14DA60;
  *(v46 + 200) = v45;
  *(v46 + 208) = 0;
  *(v46 + 216) = 0;
  sub_1BA14DD4C(v92, type metadata accessor for SummarySharingSelectionFlow);
}

uint64_t sub_1BA14999C(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v134 = a4;
  v138 = a3;
  v141 = sub_1BA4A3EA8();
  v139 = *(v141 - 1);
  MEMORY[0x1EEE9AC00](v141);
  v6 = &v129 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = type metadata accessor for SummarySharingSelectionFlow(0);
  v133 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v8 = &v129 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v140 = &v129 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v137 = &v129 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v129 - v14;
  v16 = MEMORY[0x1E69E6720];
  sub_1BA14D7C8(0, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v129 - v18;
  sub_1BA14D7C8(0, &qword_1EDC6ADF8, MEMORY[0x1E69A3C08], v16);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v129 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v129 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v129 - v27;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (!a1)
    {
    }

    v130 = v15;
    v136 = v28;
    v135 = a1;
    v132 = result;
    v131 = OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_contentKinds;
    v30 = *(result + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_contentKinds);
    v31 = *(v30 + 16);
    v32 = sub_1BA4A1C68();
    v33 = *(v32 - 8);
    v34 = v33;
    if (v31)
    {
      v35 = v30 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
      v36 = v136;
      (*(v33 + 16))(v136, v35, v32);
      (*(v34 + 56))(v36, 0, 1, v32);
      sub_1BA14DDAC(v36, v25, &qword_1EDC6ADF8, MEMORY[0x1E69A3C08]);
      v37 = (*(v34 + 88))(v25, v32);
      if (v37 == *MEMORY[0x1E69A3B68])
      {
        v38 = v132;
        sub_1B9F0A534(v132 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_healthExperienceStore, v148);
        v39 = v38 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_selectedDataTypesDelegate;
        Strong = swift_unknownObjectWeakLoadStrong();
        v41 = v142;
        v134 = v39;
        if (Strong)
        {
          v42 = *(v39 + 8);
          ObjectType = swift_getObjectType();
          v44 = *(v42 + 8);
          v45 = v135;
          v46 = v44(ObjectType, v42);
          swift_unknownObjectRelease();
          v47 = v138;
        }

        else
        {
          v47 = v138;
          sub_1BA14DCE4(v138, v19, type metadata accessor for SummarySharingSelectionFlow);
          (*(v133 + 56))(v19, 0, 1, v41);
          type metadata accessor for SummarySharingSelectedDataTypesContext();
          swift_allocObject();
          v70 = v135;
          v46 = SummarySharingSelectedDataTypesContext.init(selectedItems:selectionFlow:)(MEMORY[0x1E69E7CC0], v19);
        }

        v71 = v140;
        sub_1BA14DCE4(v47, v140, type metadata accessor for SummarySharingSelectionFlow);
        v72 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
        v73 = objc_allocWithZone(type metadata accessor for SummarySharingDataTypeSelectionViewController(0));
        *&v73[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_delegate + 8] = 0;
        swift_unknownObjectWeakInit();
        *&v73[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_cancellables] = MEMORY[0x1E69E7CC0];
        sub_1B9F0A534(v148, &v73[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_healthExperienceStore]);
        *&v73[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectedCategories] = 0;
        sub_1BA14DCE4(v71, &v73[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectionFlow], type metadata accessor for SummarySharingSelectionFlow);
        v74 = &v73[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectedContact];
        *v74 = 0u;
        *(v74 + 1) = 0u;
        *(v74 + 4) = 0;
        *&v73[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectedContactPhotoPublisher] = 0;
        *&v73[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectedDataTypesContext] = v46;
        sub_1B9F1C048(0, &qword_1EDC6B400);
        v75 = swift_allocObject();
        *(v75 + 16) = xmmword_1BA4B5470;
        sub_1B9F0A534(v148, &v147);
        v76 = v137;
        sub_1BA14DCE4(v71, v137, type metadata accessor for SummarySharingSelectionFlow);
        v143 = 1;
        type metadata accessor for SummarySharingDataTypeSelectionDataSource(0);
        v145 = 0u;
        memset(v146, 0, sizeof(v146));
        v144 = 0u;
        swift_allocObject();
        v139 = v46;

        v138 = v72;
        *(v75 + 32) = sub_1BA3094BC(&v147, v72, MEMORY[0x1E69E7CC0], 1, 0, v76, MEMORY[0x1E69E7CC0], 0, 0, &v143, 1u);
        sub_1BA14DCE4(v71, v8, type metadata accessor for SummarySharingSelectionFlow);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1BA14DD4C(v8, type metadata accessor for SummarySharingSelectionFlow);
        }

        *&v73[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_dataTypeSelectionDataSources] = v75;

        v78 = sub_1B9FE98D4(v77);

        v143 = v78;
        sub_1B9FE20B8(MEMORY[0x1E69E7CC0]);
        v79 = v143;
        type metadata accessor for CompoundSectionedDataSource();
        swift_allocObject();
        v80 = CompoundSectionedDataSource.init(_:)(v79);
        v81 = CompoundDataSourceCollectionViewController.init(dataSource:)(v80);
        v143 = v139[6];
        v82 = MEMORY[0x1E695BF70];
        sub_1BA10E0E4(0, &qword_1EBBEB1A0, MEMORY[0x1E695BF70]);
        sub_1BA10E150(&qword_1EBBEB1A8, &qword_1EBBEB1A0, v82);
        v83 = v81;
        v143 = sub_1BA4A4F98();
        v84 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v85 = swift_allocObject();
        *(v85 + 16) = sub_1BA10E0DC;
        *(v85 + 24) = v84;
        v86 = MEMORY[0x1E695BED0];
        sub_1BA10E0E4(0, &qword_1EBBEB1B0, MEMORY[0x1E695BED0]);
        sub_1BA10E150(&qword_1EBBEB1B8, &qword_1EBBEB1B0, v86);
        sub_1BA4A5148();

        swift_beginAccess();
        sub_1BA14D7C8(0, &qword_1EDC5E6C0, MEMORY[0x1E695BF10], MEMORY[0x1E69E62F8]);
        sub_1BA091D04();
        sub_1BA4A4D38();
        swift_endAccess();

        v87 = *&v83[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_dataTypeSelectionDataSources];
        if (v87 >> 62)
        {
LABEL_44:
          v88 = sub_1BA4A7CC8();
        }

        else
        {
          v88 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v88)
        {
          v89 = 0;
          v142 = v87 & 0xC000000000000001;
          v141 = (v87 & 0xFFFFFFFFFFFFFF8);
          do
          {
            if (v142)
            {
              v90 = MEMORY[0x1BFAF2860](v89, v87);
              v91 = v89 + 1;
              if (__OFADD__(v89, 1))
              {
LABEL_31:
                __break(1u);
                break;
              }
            }

            else
            {
              if (v89 >= v141[2])
              {
                __break(1u);
                goto LABEL_44;
              }

              v90 = *(v87 + 8 * v89 + 32);

              v91 = v89 + 1;
              if (__OFADD__(v89, 1))
              {
                goto LABEL_31;
              }
            }

            *(*(v90 + qword_1EBBF0538) + OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_selectedDataTypesDelegate + 8) = &protocol witness table for SummarySharingDataTypeSelectionViewController;
            swift_unknownObjectWeakAssign();
            type metadata accessor for SummarySharingSelectionContextDelegate();
            v92 = swift_allocObject();
            *(v92 + 24) = 0;
            swift_unknownObjectWeakInit();
            *(v92 + 24) = &protocol witness table for SummarySharingDataTypeSelectionViewController;
            swift_unknownObjectWeakAssign();
            v93 = v83;
            sub_1BA29AAC4(v92);
            sub_1BA2FE7FC();

            ++v89;
          }

          while (v91 != v88);
        }

        sub_1BA14DD4C(v140, type metadata accessor for SummarySharingSelectionFlow);
        __swift_destroy_boxed_opaque_existential_1(v148);
        v94 = v134;
        swift_unknownObjectWeakLoadStrong();
        v95 = *(v94 + 8);
        v96 = &v83[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_delegate];
        swift_beginAccess();
        *(v96 + 1) = v95;
        swift_unknownObjectWeakAssign();
        swift_unknownObjectRelease();
        v97 = [objc_allocWithZone(MEMORY[0x1E69A4420]) initWithRootViewController_];
        v98 = v135;
        [v135 presentViewController:v97 animated:1 completion:0];

        return sub_1BA14D988(v136, &qword_1EDC6ADF8, MEMORY[0x1E69A3C08]);
      }

      if (v37 == *MEMORY[0x1E69A3B90])
      {
        v49 = v132;
        sub_1B9F0A534(v132 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_healthExperienceStore, &v143);
        v50 = v49 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_selectedDataTypesDelegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v51 = *(v50 + 8);
          v52 = swift_getObjectType();
          v53 = *(v51 + 8);
          v54 = v135;
          v55 = v135;
          v56 = v53(v52, v51);
          swift_unknownObjectRelease();
          v57 = v130;
          v58 = v138;
        }

        else
        {
          v105 = v138;
          sub_1BA14DCE4(v138, v19, type metadata accessor for SummarySharingSelectionFlow);
          (*(v133 + 56))(v19, 0, 1, v142);
          type metadata accessor for SummarySharingSelectedDataTypesContext();
          swift_allocObject();
          v54 = v135;
          v106 = v135;
          v56 = SummarySharingSelectedDataTypesContext.init(selectedItems:selectionFlow:)(MEMORY[0x1E69E7CC0], v19);
          v58 = v105;
          v57 = v130;
        }

        sub_1BA14DCE4(v58, v57, type metadata accessor for SummarySharingSelectionFlow);
        v141 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
        v107 = objc_allocWithZone(type metadata accessor for SummarySharingAlertsSelectionViewController());
        *&v107[OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingAlertsSelectionViewController_delegate + 8] = 0;
        swift_unknownObjectWeakInit();
        v108 = MEMORY[0x1E69E7CC0];
        *&v107[OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingAlertsSelectionViewController_cancellables] = MEMORY[0x1E69E7CC0];
        sub_1B9F0A534(&v143, v148);
        swift_beginAccess();
        v142 = v56;
        v109 = v56[3];
        v110 = v109[2];
        if (v110)
        {
          v140 = v107;
          v108 = sub_1BA0219CC(v110, 0);
          v111 = *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) - 8);
          sub_1BA023688(&v147, v108 + ((*(v111 + 80) + 32) & ~*(v111 + 80)), v110, v109);
          v113 = v112;

          result = sub_1B9F52E48();
          if (v113 != v110)
          {
            __break(1u);
            return result;
          }

          v54 = v135;
          v57 = v130;
          v114 = v137;
          v107 = v140;
        }

        else
        {
          v114 = v137;
        }

        sub_1BA14DCE4(v57, v114, type metadata accessor for SummarySharingSelectionFlow);
        type metadata accessor for SummarySharingAlertsSelectionDataSource(0);
        swift_allocObject();
        v115 = sub_1BA16AC90(v148, v108, v114, 0);
        *&v107[OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingAlertsSelectionViewController_alertsDataSource] = v115;
        v116 = v142;
        *&v107[OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingAlertsSelectionViewController_selectedDataTypesContext] = v142;
        sub_1B9F1B4AC(0, &qword_1EDC5DC70, &qword_1EDC67F10);
        v117 = swift_allocObject();
        *(v117 + 16) = xmmword_1BA4B5480;
        *(v117 + 32) = v115;
        *(v117 + 40) = &protocol witness table for MutableArrayDataSource;
        type metadata accessor for CompoundSectionedDataSource();
        swift_allocObject();

        v118 = CompoundSectionedDataSource.init(_:)(v117);
        v119 = CompoundDataSourceCollectionViewController.init(dataSource:)(v118);
        v148[0] = *(v116 + 48);
        v120 = MEMORY[0x1E695BF70];
        sub_1BA10E0E4(0, &qword_1EBBEB1A0, MEMORY[0x1E695BF70]);
        sub_1BA10E150(&qword_1EBBEB1A8, &qword_1EBBEB1A0, v120);
        v121 = v119;
        v148[0] = sub_1BA4A4F98();
        v122 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v123 = swift_allocObject();
        *(v123 + 16) = sub_1BA14DE2C;
        *(v123 + 24) = v122;
        v124 = MEMORY[0x1E695BED0];
        sub_1BA10E0E4(0, &qword_1EBBEB1B0, MEMORY[0x1E695BED0]);
        sub_1BA10E150(&qword_1EBBEB1B8, &qword_1EBBEB1B0, v124);
        sub_1BA4A5148();

        swift_beginAccess();
        sub_1BA14D7C8(0, &qword_1EDC5E6C0, MEMORY[0x1E695BF10], MEMORY[0x1E69E62F8]);
        sub_1BA091D04();
        sub_1BA4A4D38();
        swift_endAccess();

        *(*(*&v121[OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingAlertsSelectionViewController_alertsDataSource] + qword_1EBBECE80) + OBJC_IVAR____TtCC18HealthExperienceUI39SummarySharingAlertsSelectionDataSourceP33_DBCA476D2670707FCCF6662511BF365A13Configuration_selectedDataTypesDelegate + 8) = &protocol witness table for SummarySharingAlertsSelectionViewController;
        swift_unknownObjectWeakAssign();
        type metadata accessor for SummarySharingSelectionContextDelegate();
        v125 = swift_allocObject();
        *(v125 + 24) = 0;
        swift_unknownObjectWeakInit();
        *(v125 + 24) = &protocol witness table for SummarySharingAlertsSelectionViewController;
        swift_unknownObjectWeakAssign();

        sub_1BA29AAC4(v125);
        sub_1BA16CA30();

        sub_1BA14DD4C(v57, type metadata accessor for SummarySharingSelectionFlow);
        __swift_destroy_boxed_opaque_existential_1(&v143);

        swift_unknownObjectWeakLoadStrong();
        v126 = *(v50 + 8);
        v127 = &v121[OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingAlertsSelectionViewController_delegate];
        swift_beginAccess();
        *(v127 + 1) = v126;
        swift_unknownObjectWeakAssign();
        swift_unknownObjectRelease();
        v128 = [objc_allocWithZone(MEMORY[0x1E69A4420]) initWithRootViewController_];
        [v54 presentViewController:v128 animated:1 completion:0];

        return sub_1BA14D988(v136, &qword_1EDC6ADF8, MEMORY[0x1E69A3C08]);
      }

      v59 = *(v34 + 8);
      v60 = v135;
      v59(v25, v32);
    }

    else
    {
      (*(v33 + 56))(v136, 1, 1, v32);
      v48 = v135;
    }

    sub_1BA4A3D88();
    v61 = v132;

    v62 = sub_1BA4A3E88();
    v63 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v62, v63))
    {
      LODWORD(v142) = v63;
      v64 = swift_slowAlloc();
      v140 = swift_slowAlloc();
      v143 = v140;
      *v64 = 136315394;
      v65 = sub_1BA4A85D8();
      v67 = sub_1B9F0B82C(v65, v66, &v143);

      *(v64 + 4) = v67;
      *(v64 + 12) = 2080;
      v68 = *(v61 + v131);
      if (*(v68 + 16))
      {
        (*(v34 + 16))(v22, v68 + ((*(v34 + 80) + 32) & ~*(v34 + 80)), v32);
        v69 = 0;
      }

      else
      {
        v69 = 1;
      }

      v99 = v141;
      v100 = v139;
      (*(v34 + 56))(v22, v69, 1, v32);
      v101 = sub_1BA4A6808();
      v103 = sub_1B9F0B82C(v101, v102, &v143);

      *(v64 + 14) = v103;
      _os_log_impl(&dword_1B9F07000, v62, v142, "[%s] Received unexpected content kind: %s", v64, 0x16u);
      v104 = v140;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v104, -1, -1);
      MEMORY[0x1BFAF43A0](v64, -1, -1);

      (v100[1])(v6, v99);
    }

    else
    {

      (v139[1])(v6, v141);
    }

    return sub_1BA14D988(v136, &qword_1EDC6ADF8, MEMORY[0x1E69A3C08]);
  }

  return result;
}

Swift::Void __swiftcall SummarySharingSelectedDataTypesDataSource.registerCells(for:)(UICollectionView *a1)
{
  sub_1B9FF52C8();
  sub_1B9FF51C4();
  v1 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1BA162F08(v1, v2);

  v3 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1BA162ED4(v3, v4);

  sub_1B9FF5294();
}

void sub_1BA14B064()
{
  sub_1B9FF52C8();
  sub_1B9FF51C4();
  v0 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1BA162F08(v0, v1);

  v2 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1BA162ED4(v2, v3);

  sub_1B9FF5294();
}

void sub_1BA14B0D4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1BA4A82B8();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for SummarySharingSelectableDataTypeItem(0);
        v6 = sub_1BA4A6B98();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1BA14BABC(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1BA14B200(0, v2, 1, a1);
  }
}

void sub_1BA14B200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1BA14D7C8(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v74[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v87 = &v74[-v12];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v74[-v14];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v74[-v17];
  v94 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  MEMORY[0x1EEE9AC00](v94);
  v84 = &v74[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  MEMORY[0x1EEE9AC00](v21);
  v93 = &v74[-v24];
  v76 = a2;
  if (a3 != a2)
  {
    v25 = v23;
    v26 = *a4;
    v27 = *(v22 + 72);
    v28 = *a4 + v27 * (a3 - 1);
    v82 = -v27;
    v83 = v26;
    v29 = a1 - a3;
    v75 = v27;
    v30 = v26 + v27 * a3;
    v81 = v10;
    v85 = v15;
    v86 = v18;
    v92 = v23;
LABEL_7:
    v80 = a3;
    v77 = v30;
    v78 = v29;
    v31 = v29;
    v79 = v28;
    v100 = v28;
    while (1)
    {
      v90 = v31;
      v91 = v30;
      v32 = v93;
      sub_1BA14DCE4(v30, v93, type metadata accessor for SummarySharingSelectableDataTypeItem);
      sub_1BA14DCE4(v100, v25, type metadata accessor for SummarySharingSelectableDataTypeItem);
      v33 = *(v94 + 40);
      sub_1BA14DDAC(&v32[v33], v18, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      v34 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
      v35 = *(*(v34 - 8) + 48);
      if (v35(v18, 1, v34) == 1)
      {
        sub_1BA14D988(v18, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
LABEL_5:
        sub_1BA14DD4C(v25, type metadata accessor for SummarySharingSelectableDataTypeItem);
        sub_1BA14DD4C(v93, type metadata accessor for SummarySharingSelectableDataTypeItem);
LABEL_6:
        a3 = v80 + 1;
        v28 = v79 + v75;
        v29 = v78 - 1;
        v30 = v77 + v75;
        if (v80 + 1 == v76)
        {
          return;
        }

        goto LABEL_7;
      }

      v88 = v33;
      v36 = *(v18 + 7);
      v95 = v36;
      sub_1BA14DD4C(v18, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      if (!v36)
      {
        goto LABEL_5;
      }

      v37 = *(v94 + 40);
      sub_1BA14DDAC(v25 + v37, v15, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      if (v35(v15, 1, v34) == 1)
      {

        sub_1BA14D988(v15, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        v18 = v86;
        goto LABEL_5;
      }

      v38 = *(v15 + 7);
      v39 = v38;
      sub_1BA14DD4C(v15, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      if (!v38)
      {

        v18 = v86;
        goto LABEL_5;
      }

      v40 = [v95 displayName];
      v41 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v43 = v42;

      v89 = v39;
      v44 = [v39 displayName];
      v45 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v47 = v46;

      if (v41 == v45 && v43 == v47)
      {
      }

      else
      {
        v48 = sub_1BA4A8338();

        if ((v48 & 1) == 0)
        {
          v59 = v95;
          v60 = [v95 displayName];
          v61 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v63 = v62;

          v98 = v61;
          v99 = v63;
          v64 = v89;
          v65 = [v89 displayName];
          v66 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v68 = v67;

          v96 = v66;
          v97 = v68;
          sub_1B9F252FC();
          v58 = sub_1BA4A7B78();

          v18 = v86;
          goto LABEL_22;
        }
      }

      v49 = v87;
      sub_1BA14DDAC(&v93[v88], v87, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      v50 = v35(v49, 1, v34);
      v51 = v81;
      if (v50 == 1)
      {

        sub_1BA14D988(v87, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        v15 = v85;
        v18 = v86;
        v25 = v92;
        goto LABEL_5;
      }

      v52 = v87;
      v53 = *(v87 + 2);
      v54 = *(v87 + 3);

      sub_1BA14DD4C(v52, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      v25 = v92;
      if (!v54)
      {

LABEL_32:
        v15 = v85;
        v18 = v86;
        goto LABEL_5;
      }

      sub_1BA14DDAC(v92 + v37, v51, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      if (v35(v51, 1, v34) == 1)
      {

        sub_1BA14D988(v51, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        goto LABEL_32;
      }

      v55 = *(v51 + 16);
      v56 = *(v51 + 24);

      sub_1BA14DD4C(v51, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      v18 = v86;
      v57 = v89;
      if (!v56)
      {

        v15 = v85;
        v25 = v92;
        goto LABEL_5;
      }

      v98 = v53;
      v99 = v54;
      v96 = v55;
      v97 = v56;
      sub_1B9F252FC();
      v58 = sub_1BA4A7B78();

LABEL_22:
      v25 = v92;
      sub_1BA14DD4C(v92, type metadata accessor for SummarySharingSelectableDataTypeItem);
      sub_1BA14DD4C(v93, type metadata accessor for SummarySharingSelectableDataTypeItem);
      v15 = v85;
      v70 = v90;
      v69 = v91;
      if (v58 != -1)
      {
        goto LABEL_6;
      }

      if (!v83)
      {
        __break(1u);
        return;
      }

      v71 = v84;
      sub_1BA14D9F8(v91, v84, type metadata accessor for SummarySharingSelectableDataTypeItem);
      v72 = v100;
      swift_arrayInitWithTakeFrontToBack();
      sub_1BA14D9F8(v71, v72, type metadata accessor for SummarySharingSelectableDataTypeItem);
      v100 = v72 + v82;
      v30 = v69 + v82;
      v73 = __CFADD__(v70, 1);
      v31 = v70 + 1;
      v25 = v92;
      if (v73)
      {
        goto LABEL_6;
      }
    }
  }
}

void sub_1BA14BABC(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v216 = a4;
  v213 = a1;
  sub_1BA14D7C8(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v225 = &v208 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v226 = &v208 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v208 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v208 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v208 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v211 = (&v208 - v19);
  MEMORY[0x1EEE9AC00](v20);
  v215 = (&v208 - v21);
  MEMORY[0x1EEE9AC00](v22);
  v223 = (&v208 - v23);
  v24 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v224 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v219 = &v208 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v229 = &v208 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v208 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v245 = &v208 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v234 = &v208 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v232 = &v208 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v210 = &v208 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v209 = &v208 - v40;
  v230 = a3;
  v41 = *(a3 + 8);
  if (v41 < 1)
  {
    v43 = MEMORY[0x1E69E7CC0];
LABEL_144:
    a3 = *v213;
    if (!*v213)
    {
      goto LABEL_184;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_178:
      v43 = sub_1BA442D80(v43);
    }

    v251 = v43;
    v203 = *(v43 + 2);
    if (v203 >= 2)
    {
      while (*v230)
      {
        v204 = *&v43[16 * v203];
        v205 = *&v43[16 * v203 + 24];
        v206 = v235;
        sub_1BA14D198(*v230 + *(v224 + 72) * v204, *v230 + *(v224 + 72) * *&v43[16 * v203 + 16], *v230 + *(v224 + 72) * v205, a3);
        v235 = v206;
        if (v206)
        {
          goto LABEL_156;
        }

        if (v205 < v204)
        {
          goto LABEL_171;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_1BA442D80(v43);
        }

        if (v203 - 2 >= *(v43 + 2))
        {
          goto LABEL_172;
        }

        v207 = &v43[16 * v203];
        *v207 = v204;
        *(v207 + 1) = v205;
        v251 = v43;
        sub_1BA442CF4(v203 - 1);
        v43 = v251;
        v203 = *(v251 + 2);
        if (v203 <= 1)
        {
          goto LABEL_156;
        }
      }

      goto LABEL_182;
    }

LABEL_156:

    return;
  }

  v208 = v17;
  v42 = 0;
  v43 = MEMORY[0x1E69E7CC0];
  v231 = v11;
  v236 = v14;
  v237 = v30;
  v240 = v24;
  while (1)
  {
    v44 = v42;
    v212 = v43;
    v214 = v42;
    if (v42 + 1 >= v41)
    {
      v58 = v42 + 1;
      v59 = v216;
      goto LABEL_49;
    }

    v45 = v14;
    v233 = v41;
    v46 = v42;
    v47 = *v230;
    v48 = *(v224 + 72);
    v49 = *v230 + v48 * (v42 + 1);
    v50 = v209;
    sub_1BA14DCE4(v49, v209, type metadata accessor for SummarySharingSelectableDataTypeItem);
    v51 = v46;
    v52 = v47 + v48 * v46;
    v53 = v210;
    sub_1BA14DCE4(v52, v210, type metadata accessor for SummarySharingSelectableDataTypeItem);
    v54 = v235;
    LODWORD(v244) = sub_1BA148504(v50, v53);
    v235 = v54;
    if (v54)
    {
      sub_1BA14DD4C(v53, type metadata accessor for SummarySharingSelectableDataTypeItem);
      sub_1BA14DD4C(v50, type metadata accessor for SummarySharingSelectableDataTypeItem);
      goto LABEL_156;
    }

    a3 = type metadata accessor for SummarySharingSelectableDataTypeItem;
    sub_1BA14DD4C(v53, type metadata accessor for SummarySharingSelectableDataTypeItem);
    sub_1BA14DD4C(v50, type metadata accessor for SummarySharingSelectableDataTypeItem);
    v55 = v51 + 2;
    v56 = v47 + v48 * (v51 + 2);
    v57 = v48;
    v246 = v48;
    v14 = v45;
    v24 = v240;
    while (1)
    {
      v58 = v233;
      if (v233 == v55)
      {
        break;
      }

      v72 = v232;
      sub_1BA14DCE4(v56, v232, type metadata accessor for SummarySharingSelectableDataTypeItem);
      sub_1BA14DCE4(v49, v234, type metadata accessor for SummarySharingSelectableDataTypeItem);
      v73 = *(v24 + 40);
      v74 = v223;
      sub_1BA14DDAC(v72 + v73, v223, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      v75 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
      v76 = *(*(v75 - 8) + 48);
      if (v76(v74, 1, v75) == 1)
      {
        goto LABEL_16;
      }

      v243 = v73;
      v77 = v74;
      v78 = v74[7];
      v79 = v78;
      sub_1BA14DD4C(v77, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      if (!v78)
      {
        goto LABEL_23;
      }

      v241 = *(v240 + 40);
      v74 = v215;
      sub_1BA14DDAC(v241 + v234, v215, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      if (v76(v74, 1, v75) == 1)
      {

        goto LABEL_16;
      }

      v80 = v74[7];
      v242 = v80;
      sub_1BA14DD4C(v74, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      if (!v80)
      {

LABEL_23:
        v71 = 0;
        v14 = v236;
        v24 = v240;
        goto LABEL_10;
      }

      v239 = v79;
      v81 = [v79 displayName];
      v238 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v228 = v82;

      v83 = [v242 &selRef_builderFromDataFile_startDate_];
      v84 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v86 = v85;

      if (v238 == v84 && v228 == v86)
      {

LABEL_25:
        v74 = v211;
        sub_1BA14DDAC(v232 + v243, v211, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        if (v76(v74, 1, v75) == 1)
        {

LABEL_16:
          sub_1BA14D988(v74, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        }

        else
        {
          v88 = v74[3];
          v243 = v74[2];

          sub_1BA14DD4C(v74, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
          if (v88)
          {
            v89 = v208;
            sub_1BA14DDAC(v241 + v234, v208, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
            if (v76(v89, 1, v75) == 1)
            {

              sub_1BA14D988(v89, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
              v71 = 0;
              v14 = v236;
              v24 = v240;
            }

            else
            {
              v91 = *(v89 + 16);
              v90 = *(v89 + 24);

              sub_1BA14DD4C(v89, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
              v14 = v236;
              v24 = v240;
              if (v90)
              {
                v249 = v243;
                v250 = v88;
                v247 = v91;
                v248 = v90;
                sub_1B9F252FC();
                v92 = sub_1BA4A7B78();

                v71 = v92 == -1;
              }

              else
              {

                v71 = 0;
              }
            }

            goto LABEL_10;
          }
        }

        v71 = 0;
        goto LABEL_9;
      }

      v87 = sub_1BA4A8338();

      if (v87)
      {
        goto LABEL_25;
      }

      v60 = v239;
      v61 = [v239 displayName];
      v62 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v64 = v63;

      v249 = v62;
      v250 = v64;
      v65 = v242;
      v66 = [v242 displayName];
      v67 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v69 = v68;

      v247 = v67;
      v248 = v69;
      sub_1B9F252FC();
      v70 = sub_1BA4A7B78();

      v71 = v70 == -1;
LABEL_9:
      v14 = v236;
      v24 = v240;
LABEL_10:
      a3 = type metadata accessor for SummarySharingSelectableDataTypeItem;
      sub_1BA14DD4C(v234, type metadata accessor for SummarySharingSelectableDataTypeItem);
      sub_1BA14DD4C(v232, type metadata accessor for SummarySharingSelectableDataTypeItem);
      ++v55;
      v57 = v246;
      v56 += v246;
      v49 += v246;
      if ((v244 ^ v71))
      {
        v58 = v55 - 1;
        break;
      }
    }

    v59 = v216;
    v43 = v212;
    v30 = v237;
    v44 = v214;
    if ((v244 & 1) == 0)
    {
      goto LABEL_49;
    }

    if (v58 < v214)
    {
      goto LABEL_177;
    }

    if (v214 < v58)
    {
      v93 = v58;
      v94 = v57 * (v58 - 1);
      v95 = v58 * v57;
      v233 = v58;
      v96 = v214;
      v97 = v214 * v57;
      do
      {
        if (v96 != --v93)
        {
          v98 = *v230;
          if (!*v230)
          {
            goto LABEL_181;
          }

          a3 = v98 + v97;
          sub_1BA14D9F8(v98 + v97, v219, type metadata accessor for SummarySharingSelectableDataTypeItem);
          if (v97 < v94 || a3 >= v98 + v95)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v97 != v94)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          sub_1BA14D9F8(v219, v98 + v94, type metadata accessor for SummarySharingSelectableDataTypeItem);
          v59 = v216;
          v57 = v246;
        }

        ++v96;
        v94 -= v57;
        v95 -= v57;
        v97 += v57;
      }

      while (v96 < v93);
      v24 = v240;
      v30 = v237;
      v44 = v214;
      v58 = v233;
    }

LABEL_49:
    v99 = v230[1];
    if (v58 >= v99)
    {
      goto LABEL_58;
    }

    if (__OFSUB__(v58, v44))
    {
      goto LABEL_174;
    }

    if (v58 - v44 >= v59)
    {
LABEL_58:
      v42 = v58;
      if (v58 < v44)
      {
        goto LABEL_173;
      }

      goto LABEL_59;
    }

    if (__OFADD__(v44, v59))
    {
      goto LABEL_175;
    }

    if (v44 + v59 >= v99)
    {
      v100 = v230[1];
    }

    else
    {
      v100 = v44 + v59;
    }

    if (v100 < v44)
    {
LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
      goto LABEL_178;
    }

    if (v58 == v100)
    {
      goto LABEL_58;
    }

    v147 = v30;
    v148 = v14;
    v149 = v24;
    v150 = *v230;
    v151 = *(v224 + 72);
    v152 = (*v230 + v151 * (v58 - 1));
    v227 = -v151;
    v153 = v44 - v58;
    v228 = v150;
    v217 = v151;
    v154 = v150 + v58 * v151;
    v218 = v100;
LABEL_113:
    v233 = v58;
    v220 = v154;
    v156 = v154;
    v221 = v153;
    v222 = v152;
LABEL_114:
    v243 = v153;
    v244 = v156;
    v157 = v245;
    sub_1BA14DCE4(v156, v245, type metadata accessor for SummarySharingSelectableDataTypeItem);
    v242 = v152;
    v158 = v152;
    v159 = v147;
    sub_1BA14DCE4(v158, v147, type metadata accessor for SummarySharingSelectableDataTypeItem);
    v160 = *(v149 + 40);
    sub_1BA14DDAC(v160 + v157, v148, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    v161 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
    v162 = *(*(v161 - 8) + 48);
    v163 = v149;
    if (v162(v148, 1, v161) == 1)
    {
      v155 = v148;
      goto LABEL_110;
    }

    v239 = v160;
    v164 = *(v148 + 56);
    v246 = v164;
    sub_1BA14DD4C(v148, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    v165 = v231;
    if (!v164)
    {
      goto LABEL_111;
    }

    v166 = *(v163 + 40);
    sub_1BA14DDAC(v147 + v166, v231, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    if (v162(v165, 1, v161) == 1)
    {

      v155 = v165;
LABEL_110:
      sub_1BA14D988(v155, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      goto LABEL_111;
    }

    v238 = v166;
    v167 = *(v165 + 56);
    v168 = v167;
    sub_1BA14DD4C(v165, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    if (!v167)
    {

      goto LABEL_111;
    }

    v169 = [v246 displayName];
    v170 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v172 = v171;

    v241 = v168;
    v173 = [v168 displayName];
    v174 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v176 = v175;

    if (v170 == v174 && v172 == v176)
    {

      goto LABEL_122;
    }

    v177 = sub_1BA4A8338();

    if ((v177 & 1) == 0)
    {
      break;
    }

LABEL_122:
    v178 = v226;
    sub_1BA14DDAC(v239 + v245, v226, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    v179 = v162(v178, 1, v161);
    v163 = v240;
    if (v179 == 1)
    {

      sub_1BA14D988(v178, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      v148 = v236;
      v159 = v237;
    }

    else
    {
      v180 = *(v178 + 16);
      v181 = *(v178 + 24);

      sub_1BA14DD4C(v178, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      v159 = v237;
      if (!v181)
      {

        goto LABEL_140;
      }

      v182 = v225;
      sub_1BA14DDAC(&v237[v238], v225, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      if (v162(v182, 1, v161) == 1)
      {

        sub_1BA14D988(v182, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        v148 = v236;
      }

      else
      {
        v183 = v182;
        v185 = *(v182 + 16);
        v184 = *(v182 + 24);

        sub_1BA14DD4C(v183, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        v186 = v241;
        if (v184)
        {
          v249 = v180;
          v250 = v181;
          v247 = v185;
          v248 = v184;
          sub_1B9F252FC();
          v187 = sub_1BA4A7B78();

          goto LABEL_128;
        }

LABEL_140:
        v148 = v236;
      }
    }

LABEL_111:
    a3 = type metadata accessor for SummarySharingSelectableDataTypeItem;
    v147 = v159;
    sub_1BA14DD4C(v159, type metadata accessor for SummarySharingSelectableDataTypeItem);
    sub_1BA14DD4C(v245, type metadata accessor for SummarySharingSelectableDataTypeItem);
    v149 = v163;
LABEL_112:
    v58 = v233 + 1;
    v152 = &v222[v217];
    v153 = v221 - 1;
    v154 = v220 + v217;
    v42 = v218;
    if (v233 + 1 != v218)
    {
      goto LABEL_113;
    }

    v24 = v149;
    v14 = v148;
    v30 = v147;
    v43 = v212;
    if (v218 < v214)
    {
      goto LABEL_173;
    }

LABEL_59:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_1BA27F470(0, *(v43 + 2) + 1, 1, v43);
    }

    a3 = *(v43 + 2);
    v101 = *(v43 + 3);
    v102 = a3 + 1;
    if (a3 >= v101 >> 1)
    {
      v43 = sub_1BA27F470((v101 > 1), a3 + 1, 1, v43);
    }

    *(v43 + 2) = v102;
    v103 = &v43[16 * a3];
    *(v103 + 4) = v214;
    *(v103 + 5) = v42;
    v104 = *v213;
    if (!*v213)
    {
      goto LABEL_183;
    }

    if (a3)
    {
      while (2)
      {
        v105 = v102 - 1;
        if (v102 >= 4)
        {
          v110 = &v43[16 * v102 + 32];
          v111 = *(v110 - 64);
          v112 = *(v110 - 56);
          v116 = __OFSUB__(v112, v111);
          v113 = v112 - v111;
          if (v116)
          {
            goto LABEL_160;
          }

          v115 = *(v110 - 48);
          v114 = *(v110 - 40);
          v116 = __OFSUB__(v114, v115);
          v108 = v114 - v115;
          v109 = v116;
          if (v116)
          {
            goto LABEL_161;
          }

          v117 = &v43[16 * v102];
          v119 = *v117;
          v118 = *(v117 + 1);
          v116 = __OFSUB__(v118, v119);
          v120 = v118 - v119;
          if (v116)
          {
            goto LABEL_163;
          }

          v116 = __OFADD__(v108, v120);
          v121 = v108 + v120;
          if (v116)
          {
            goto LABEL_166;
          }

          if (v121 >= v113)
          {
            v139 = &v43[16 * v105 + 32];
            v141 = *v139;
            v140 = *(v139 + 1);
            v116 = __OFSUB__(v140, v141);
            v142 = v140 - v141;
            if (v116)
            {
              goto LABEL_170;
            }

            if (v108 < v142)
            {
              v105 = v102 - 2;
            }
          }

          else
          {
LABEL_78:
            if (v109)
            {
              goto LABEL_162;
            }

            v122 = &v43[16 * v102];
            v124 = *v122;
            v123 = *(v122 + 1);
            v125 = __OFSUB__(v123, v124);
            v126 = v123 - v124;
            v127 = v125;
            if (v125)
            {
              goto LABEL_165;
            }

            v128 = &v43[16 * v105 + 32];
            v130 = *v128;
            v129 = *(v128 + 1);
            v116 = __OFSUB__(v129, v130);
            v131 = v129 - v130;
            if (v116)
            {
              goto LABEL_168;
            }

            if (__OFADD__(v126, v131))
            {
              goto LABEL_169;
            }

            if (v126 + v131 < v108)
            {
              goto LABEL_92;
            }

            if (v108 < v131)
            {
              v105 = v102 - 2;
            }
          }
        }

        else
        {
          if (v102 == 3)
          {
            v106 = *(v43 + 4);
            v107 = *(v43 + 5);
            v116 = __OFSUB__(v107, v106);
            v108 = v107 - v106;
            v109 = v116;
            goto LABEL_78;
          }

          v132 = &v43[16 * v102];
          v134 = *v132;
          v133 = *(v132 + 1);
          v116 = __OFSUB__(v133, v134);
          v126 = v133 - v134;
          v127 = v116;
LABEL_92:
          if (v127)
          {
            goto LABEL_164;
          }

          v135 = &v43[16 * v105];
          v137 = *(v135 + 4);
          v136 = *(v135 + 5);
          v116 = __OFSUB__(v136, v137);
          v138 = v136 - v137;
          if (v116)
          {
            goto LABEL_167;
          }

          if (v138 < v126)
          {
            break;
          }
        }

        a3 = v105 - 1;
        if (v105 - 1 >= v102)
        {
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
          goto LABEL_176;
        }

        if (!*v230)
        {
          goto LABEL_180;
        }

        v143 = *&v43[16 * a3 + 32];
        v144 = *&v43[16 * v105 + 40];
        v145 = v235;
        sub_1BA14D198(*v230 + *(v224 + 72) * v143, *v230 + *(v224 + 72) * *&v43[16 * v105 + 32], *v230 + *(v224 + 72) * v144, v104);
        v235 = v145;
        if (v145)
        {
          goto LABEL_156;
        }

        if (v144 < v143)
        {
          goto LABEL_158;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_1BA442D80(v43);
        }

        if (a3 >= *(v43 + 2))
        {
          goto LABEL_159;
        }

        v146 = &v43[16 * a3];
        *(v146 + 4) = v143;
        *(v146 + 5) = v144;
        v251 = v43;
        sub_1BA442CF4(v105);
        v43 = v251;
        v102 = *(v251 + 2);
        v30 = v237;
        if (v102 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v41 = v230[1];
    if (v42 >= v41)
    {
      goto LABEL_144;
    }
  }

  v188 = v246;
  v189 = [v246 displayName];
  v190 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v192 = v191;

  v249 = v190;
  v250 = v192;
  v193 = v241;
  v194 = [v241 displayName];
  v195 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v197 = v196;

  v247 = v195;
  v248 = v197;
  sub_1B9F252FC();
  v187 = sub_1BA4A7B78();

  v163 = v240;
  v159 = v237;
LABEL_128:
  v149 = v163;
  a3 = type metadata accessor for SummarySharingSelectableDataTypeItem;
  sub_1BA14DD4C(v159, type metadata accessor for SummarySharingSelectableDataTypeItem);
  sub_1BA14DD4C(v245, type metadata accessor for SummarySharingSelectableDataTypeItem);
  v148 = v236;
  v198 = v244;
  if (v187 != -1)
  {
    v147 = v159;
    goto LABEL_112;
  }

  v199 = v243;
  if (v228)
  {
    v147 = v159;
    a3 = type metadata accessor for SummarySharingSelectableDataTypeItem;
    v200 = v229;
    sub_1BA14D9F8(v244, v229, type metadata accessor for SummarySharingSelectableDataTypeItem);
    v201 = v242;
    swift_arrayInitWithTakeFrontToBack();
    sub_1BA14D9F8(v200, v201, type metadata accessor for SummarySharingSelectableDataTypeItem);
    v152 = &v201[v227];
    v156 = v198 + v227;
    v202 = __CFADD__(v199, 1);
    v153 = v199 + 1;
    if (v202)
    {
      goto LABEL_112;
    }

    goto LABEL_114;
  }

  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
}

void sub_1BA14D198(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v63 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  MEMORY[0x1EEE9AC00](v63);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v52 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v52 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v52 - v17;
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_64;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_65;
  }

  v22 = (a2 - a1) / v20;
  v66 = a1;
  v65 = a4;
  v62 = v20;
  if (v22 >= v21 / v20)
  {
    v25 = v21 / v20 * v20;
    v58 = v16;
    if (a4 < a2 || a2 + v25 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v26 = v11;
    }

    else
    {
      v26 = v11;
      if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v35 = a4 + v25;
    v36 = v4;
    if (v25 >= 1)
    {
      v37 = -v62;
      v38 = a4 + v25;
      v55 = a4;
      v56 = a1;
      v54 = -v62;
      do
      {
        v52 = v35;
        v39 = a2 + v37;
        v57 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v66 = a2;
            v64 = v52;
            goto LABEL_62;
          }

          v61 = a3;
          v62 = v38;
          v53 = v35;
          v60 = (v38 + v37);
          sub_1BA14DCE4(v38 + v37, v26, type metadata accessor for SummarySharingSelectableDataTypeItem);
          v42 = v26;
          v43 = v58;
          sub_1BA14DCE4(v39, v58, type metadata accessor for SummarySharingSelectableDataTypeItem);
          v44 = sub_1BA148504(v42, v43);
          if (v36)
          {
            sub_1BA14DD4C(v43, type metadata accessor for SummarySharingSelectableDataTypeItem);
            sub_1BA14DD4C(v42, type metadata accessor for SummarySharingSelectableDataTypeItem);
            v66 = v57;
            v64 = v53;
            goto LABEL_62;
          }

          v45 = v44;
          v59 = 0;
          v46 = v39;
          v47 = v61;
          v48 = v61 + v37;
          sub_1BA14DD4C(v43, type metadata accessor for SummarySharingSelectableDataTypeItem);
          sub_1BA14DD4C(v42, type metadata accessor for SummarySharingSelectableDataTypeItem);
          v26 = v42;
          if (v45)
          {
            break;
          }

          v49 = v60;
          v35 = v60;
          a3 = v47 + v37;
          if (v47 < v62 || v48 >= v62)
          {
            v40 = v60;
            swift_arrayInitWithTakeFrontToBack();
            v35 = v40;
            v39 = v46;
            v36 = v59;
          }

          else
          {
            v50 = v47 == v62;
            v39 = v46;
            v36 = v59;
            if (!v50)
            {
              v51 = v60;
              swift_arrayInitWithTakeBackToFront();
              v35 = v51;
            }
          }

          v38 = v35;
          a1 = v56;
          v41 = v49 > v55;
          v37 = v54;
          a2 = v57;
          if (!v41)
          {
            goto LABEL_58;
          }
        }

        a3 = v47 + v37;
        if (v47 < v57 || v48 >= v57)
        {
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
          v36 = v59;
          v37 = v54;
        }

        else
        {
          a2 = v46;
          v36 = v59;
          v37 = v54;
          if (v47 != v57)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v56;
        v38 = v62;
        v35 = v53;
      }

      while (v62 > v55);
    }

LABEL_58:
    v66 = a2;
    v64 = v35;
  }

  else
  {
    v23 = v22 * v20;
    if (a4 < a1 || a1 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v24 = v4;
    }

    else
    {
      v24 = v4;
      if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v61 = a4 + v23;
    v64 = a4 + v23;
    if (v23 >= 1 && a2 < a3)
    {
      v28 = v62;
      v59 = v18;
      v60 = v14;
      while (1)
      {
        v29 = a3;
        sub_1BA14DCE4(a2, v18, type metadata accessor for SummarySharingSelectableDataTypeItem);
        sub_1BA14DCE4(a4, v14, type metadata accessor for SummarySharingSelectableDataTypeItem);
        v30 = sub_1BA148504(v18, v14);
        if (v24)
        {
          break;
        }

        v31 = v30;
        v32 = v14;
        v33 = a4;
        sub_1BA14DD4C(v32, type metadata accessor for SummarySharingSelectableDataTypeItem);
        sub_1BA14DD4C(v18, type metadata accessor for SummarySharingSelectableDataTypeItem);
        if (v31)
        {
          v34 = a2 + v28;
          if (a1 < a2 || a1 >= v34)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v34;
            a3 = v29;
          }

          else
          {
            a3 = v29;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v34;
          }
        }

        else
        {
          a4 += v28;
          if (a1 < v33 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v29;
          }

          else
          {
            a3 = v29;
            if (a1 != v33)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v65 = v33 + v28;
        }

        v14 = v60;
        v28 = v62;
        a1 += v62;
        v66 = a1;
        v18 = v59;
        if (a4 >= v61 || a2 >= a3)
        {
          goto LABEL_62;
        }
      }

      sub_1BA14DD4C(v14, type metadata accessor for SummarySharingSelectableDataTypeItem);
      sub_1BA14DD4C(v18, type metadata accessor for SummarySharingSelectableDataTypeItem);
    }
  }

LABEL_62:
  sub_1BA26BB68(&v66, &v65, &v64);
}

void sub_1BA14D7C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1BA14D82C()
{
  result = qword_1EDC6E230;
  if (!qword_1EDC6E230)
  {
    sub_1BA4A1C68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6E230);
  }

  return result;
}

unint64_t sub_1BA14D884()
{
  result = qword_1EBBECA28;
  if (!qword_1EBBECA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBECA28);
  }

  return result;
}

uint64_t sub_1BA14D988(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1BA14D7C8(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1BA14D9F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA14DA60(void *a1)
{
  v3 = *(type metadata accessor for SummarySharingSelectionFlow(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1BA14999C(a1, v5, (v1 + v4), v6);
}

uint64_t sub_1BA14DB00(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t type metadata accessor for SummarySharingSelectedDataTypesDataSource()
{
  result = qword_1EBBECA30;
  if (!qword_1EBBECA30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA14DBA0()
{
  sub_1BA14D7C8(319, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1BA14DCE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA14DD4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BA14DDAC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1BA14D7C8(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BA14DE54(void *a1)
{
  v2 = sub_1BA4A1798();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 profileIdentifier];
  v8 = [v7 type];

  if (v8 == 1 && ([objc_opt_self() isRunningStoreDemoMode] & 1) == 0)
  {
    sub_1B9FF6758();
    inited = swift_initStackObject();
    v21 = xmmword_1BA4B5480;
    *(inited + 16) = xmmword_1BA4B5480;
    sub_1B9F28360();
    v11 = swift_allocObject();
    *(v11 + 16) = v21;
    v12 = type metadata accessor for ExportDataSourceItem();
    swift_allocObject();
    v13 = a1;
    v14 = sub_1BA420FA0(v13);
    *(v11 + 56) = v12;
    *(v11 + 64) = sub_1BA14E3C8();
    *(v11 + 32) = v14;
    sub_1BA4A1788();
    v15 = sub_1BA4A1748();
    v17 = v16;
    (*(v3 + 8))(v6, v2);
    v18 = MEMORY[0x1E69E7CC0];
    *(inited + 48) = MEMORY[0x1E69E7CC0];
    *(inited + 56) = sub_1B9F1C5F0(v18);
    *(inited + 32) = 0;
    *(inited + 40) = 0;

    *(inited + 48) = v11;
    v19 = Array<A>.identifierToIndexDict()(v11);

    *(inited + 56) = v19;
    *(inited + 64) = v15;
    *(inited + 72) = v17;
    v20 = sub_1B9F1DAFC(inited, 1, sub_1BA14E0F4, 0);

    return v20;
  }

  else
  {

    type metadata accessor for ExportDataSource();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

void *sub_1BA14E0F4(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for ListLayoutConfiguration();
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC6CB88 != -1)
  {
    v10 = v4;
    swift_once();
    v4 = v10;
  }

  v7 = __swift_project_value_buffer(v4, qword_1EDC6CB90);
  sub_1B9F37E38(v7, v6);
  *(v6 + 6) = 0x4034000000000000;
  *(v6 + 8) = 0x4014000000000000;
  v8 = ListLayoutConfiguration.layout(for:)(a2);
  sub_1BA047354(v6);
  return v8;
}

uint64_t sub_1BA14E240()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ExportDataSource()
{
  result = qword_1EBBECA40;
  if (!qword_1EBBECA40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1BA14E3C8()
{
  result = qword_1EBBECA50;
  if (!qword_1EBBECA50)
  {
    type metadata accessor for ExportDataSourceItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBECA50);
  }

  return result;
}

uint64_t Keyword.typeGroup.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDC6EA18 != -1)
  {
    swift_once();
  }

  v3 = off_1EDC6EA20;
  v4 = [v1 identifier];
  v5 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v7 = v6;

  sub_1BA03E804(v5, v7, v3, a1);
}

uint64_t sub_1BA14E568(uint64_t a1, void **a2)
{
  sub_1BA04B338(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI27TipWithActionViewController_context;
  swift_beginAccess();
  sub_1BA0BACD4(v6, v3 + v4);
  swift_endAccess();
  if ([v3 isViewLoaded])
  {
    (*((*MEMORY[0x1E69E7D40] & *v3) + 0x98))();
  }

  return sub_1BA0BD670(v6);
}

uint64_t sub_1BA14E61C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI27TipWithActionViewController_context;
  swift_beginAccess();
  return sub_1BA04B338(v1 + v3, a1);
}

uint64_t sub_1BA14E674(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI27TipWithActionViewController_context;
  swift_beginAccess();
  sub_1BA0BACD4(a1, v1 + v3);
  swift_endAccess();
  if ([v1 isViewLoaded])
  {
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x98))();
  }

  return sub_1BA0BD670(a1);
}

id (*sub_1BA14E724(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA14E788;
}

id sub_1BA14E788(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    result = [*(a1 + 24) isViewLoaded];
    if (result)
    {
      return (*((*MEMORY[0x1E69E7D40] & **(a1 + 24)) + 0x98))();
    }
  }

  return result;
}

id sub_1BA14E800()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI27TipWithActionViewController____lazy_storage___tileView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27TipWithActionViewController____lazy_storage___tileView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27TipWithActionViewController____lazy_storage___tileView);
  }

  else
  {
    type metadata accessor for MessageWithSeparatedActionTileView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = objc_opt_self();
    v6 = v4;
    v7 = [v5 clearColor];
    [v6 setBackgroundColor_];

    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
    v8 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_1BA14E8E0()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for TipWithActionViewController();
  objc_msgSendSuper2(&v12, sel_viewDidLoad);
  result = [v0 view];
  if (result)
  {
    v2 = result;
    v3 = sub_1BA14E800();
    [v2 addSubview_];

    v4 = OBJC_IVAR____TtC18HealthExperienceUI27TipWithActionViewController____lazy_storage___tileView;
    v5 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27TipWithActionViewController____lazy_storage___tileView);
    v6 = [v0 view];
    [v5 hk:v6 alignConstraintsWithView:?];

    (*((*MEMORY[0x1E69E7D40] & *v0) + 0x98))();
    v7 = *(v0 + v4);
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = &v7[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithSeparatedActionTileView_didTapActionButton];
    swift_beginAccess();
    v10 = *v9;
    *v9 = sub_1BA14EB24;
    v9[1] = v8;
    v11 = v7;

    sub_1B9F0E310(v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BA14EAA0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0xC8))();
  }
}

uint64_t sub_1BA14EB74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_1BA4A6758();
  [v6 setTitle_];

  v10 = sub_1BA14E800();
  v11 = *&v10[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithSeparatedActionTileView_bodyLabel];
  v12 = sub_1BA4A6758();
  [v11 setText_];

  v13 = *&v10[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithSeparatedActionTileView_actionButton];
  v14 = objc_opt_self();
  v15 = swift_allocObject();
  v15[2] = v13;
  v15[3] = a5;
  v15[4] = a6;
  v15[5] = 0;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1B9F7B15C;
  *(v16 + 24) = v15;
  v20[4] = sub_1B9F7B0CC;
  v20[5] = v16;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 1107296256;
  v20[2] = sub_1B9F7B0FC;
  v20[3] = &block_descriptor_32;
  v17 = _Block_copy(v20);
  v18 = v13;

  [v14 performWithoutAnimation_];
  _Block_release(v17);
  LOBYTE(a6) = swift_isEscapingClosureAtFileLocation();

  if (a6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BA14ED6C()
{
  type metadata accessor for TileHeaderDetailKind();

  return swift_storeEnumTagMultiPayload();
}

id TipWithActionViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id TipWithActionViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = &v3[OBJC_IVAR____TtC18HealthExperienceUI27TipWithActionViewController_context];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI27TipWithActionViewController____lazy_storage___tileView] = 0;
  if (a2)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for TipWithActionViewController();
  v7 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, v6, a3);

  return v7;
}

id TipWithActionViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TipWithActionViewController.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC18HealthExperienceUI27TipWithActionViewController_context];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI27TipWithActionViewController____lazy_storage___tileView] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for TipWithActionViewController();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id TipWithActionViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TipWithActionViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t (*sub_1BA14F1F0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA14F254;
}

uint64_t sub_1BA14F254(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    result = [*(a1 + 24) isViewLoaded];
    if (result)
    {
      return (*((*MEMORY[0x1E69E7D40] & **(a1 + 24)) + 0x98))();
    }
  }

  return result;
}

uint64_t sub_1BA14F300()
{
  v1 = [*v0 title];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  return v3;
}

id LabelWithSpinner.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

uint64_t sub_1BA14F69C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner____lazy_storage___visibleSpinnerConstraints;
  if (*(v0 + OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner____lazy_storage___visibleSpinnerConstraints))
  {
    v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner____lazy_storage___visibleSpinnerConstraints);
  }

  else
  {
    sub_1B9F109F8();
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1BA4B5470;
    v3 = [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner_label) leadingAnchor];
    v4 = [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner_spinner) trailingAnchor];
    v5 = [v3 constraintEqualToAnchor:v4 constant:4.0];

    *(v2 + 32) = v5;
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1BA14F79C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner____lazy_storage___hiddenSpinnerConstraints;
  if (*(v0 + OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner____lazy_storage___hiddenSpinnerConstraints))
  {
    v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner____lazy_storage___hiddenSpinnerConstraints);
  }

  else
  {
    sub_1B9F109F8();
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1BA4B7510;
    v3 = [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner_label) leadingAnchor];
    v4 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner_spinner);
    v5 = [v4 trailingAnchor];
    v6 = [v3 constraintEqualToAnchor:v5 constant:0.0];

    *(v2 + 32) = v6;
    v7 = [v4 widthAnchor];
    v8 = [v7 constraintEqualToConstant_];

    *(v2 + 40) = v8;
    *(v0 + v1) = v2;
  }

  return v2;
}

char *LabelWithSpinner.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_1BA4A3EA8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v15 = [objc_opt_self() secondaryLabelColor];
  [v14 setTextColor_];

  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  v16 = *MEMORY[0x1E69DDD08];
  v17 = objc_opt_self();
  v18 = [v17 preferredFontDescriptorWithTextStyle:v16 compatibleWithTraitCollection:0];
  if (v18)
  {
    v19 = v18;
    v20 = [objc_opt_self() fontWithDescriptor:v18 size:0.0];
  }

  else
  {
    v51 = v11;
    sub_1BA4A3DD8();
    v21 = v16;
    v22 = sub_1BA4A3E88();
    v23 = sub_1BA4A6FB8();

    v50 = v23;
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v54 = v48;
      *v24 = 136315906;
      v25 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v27 = sub_1B9F0B82C(v25, v26, &v54);
      v49 = v21;
      v28 = v27;

      *(v24 + 4) = v28;
      *(v24 + 12) = 2080;
      v52 = 0;
      v53 = 1;
      sub_1BA1508E8();
      v29 = sub_1BA4A6808();
      v31 = sub_1B9F0B82C(v29, v30, &v54);

      *(v24 + 14) = v31;
      *(v24 + 22) = 2080;
      LODWORD(v52) = 0;
      type metadata accessor for SymbolicTraits(0);
      v32 = sub_1BA4A6808();
      v34 = sub_1B9F0B82C(v32, v33, &v54);
      v21 = v49;

      *(v24 + 24) = v34;
      *(v24 + 32) = 2112;
      v35 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v24 + 34) = v35;
      v36 = v47;
      *v47 = v35;
      _os_log_impl(&dword_1B9F07000, v22, v50, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v24, 0x2Au);
      sub_1B9F8C6C8(v36);
      MEMORY[0x1BFAF43A0](v36, -1, -1);
      v37 = v48;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v37, -1, -1);
      MEMORY[0x1BFAF43A0](v24, -1, -1);
    }

    (*(v51 + 8))(v13, v10);
    v38 = [v17 preferredFontDescriptorWithTextStyle_];
    v20 = [objc_opt_self() fontWithDescriptor:v38 size:0.0];
  }

  v39 = OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner_label;
  [v14 setFont_];

  [v14 setAdjustsFontForContentSizeCategory_];
  [v14 setTextAlignment_];
  *&v5[v39] = v14;
  v40 = OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner_spinner;
  v41 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
  [v41 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[v40] = v41;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner____lazy_storage___visibleSpinnerConstraints] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner____lazy_storage___hiddenSpinnerConstraints] = 0;
  v42 = type metadata accessor for LabelWithSpinner();
  v55.receiver = v5;
  v55.super_class = v42;
  v43 = objc_msgSendSuper2(&v55, sel_initWithFrame_, a1, a2, a3, a4);
  v44 = *&v43[OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner_spinner];
  v45 = v43;
  [v45 addSubview_];
  [v45 addSubview_];
  sub_1BA150534();

  return v45;
}

id LabelWithSpinner.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

char *LabelWithSpinner.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v9 = [objc_opt_self() secondaryLabelColor];
  [v8 setTextColor_];

  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  v10 = *MEMORY[0x1E69DDD08];
  v11 = objc_opt_self();
  v12 = [v11 preferredFontDescriptorWithTextStyle:v10 compatibleWithTraitCollection:0];
  if (v12)
  {
    v13 = v12;
    v14 = [objc_opt_self() fontWithDescriptor:v12 size:0.0];
  }

  else
  {
    sub_1BA4A3DD8();
    v15 = v10;
    v16 = sub_1BA4A3E88();
    v17 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v48 = a1;
      v19 = v18;
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v51 = v46;
      *v19 = 136315906;
      v20 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v47 = v15;
      v22 = sub_1B9F0B82C(v20, v21, &v51);
      HIDWORD(v44) = v17;
      v23 = v22;

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      v49 = 0;
      v50 = 1;
      sub_1BA1508E8();
      v24 = sub_1BA4A6808();
      v26 = sub_1B9F0B82C(v24, v25, &v51);

      *(v19 + 14) = v26;
      *(v19 + 22) = 2080;
      LODWORD(v49) = 0;
      type metadata accessor for SymbolicTraits(0);
      v27 = sub_1BA4A6808();
      v29 = sub_1B9F0B82C(v27, v28, &v51);
      v15 = v47;

      *(v19 + 24) = v29;
      *(v19 + 32) = 2112;
      v30 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v19 + 34) = v30;
      v31 = v45;
      *v45 = v30;
      _os_log_impl(&dword_1B9F07000, v16, BYTE4(v44), "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v19, 0x2Au);
      sub_1B9F8C6C8(v31);
      MEMORY[0x1BFAF43A0](v31, -1, -1);
      v32 = v46;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v32, -1, -1);
      v33 = v19;
      a1 = v48;
      MEMORY[0x1BFAF43A0](v33, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v34 = [v11 preferredFontDescriptorWithTextStyle_];
    v14 = [objc_opt_self() fontWithDescriptor:v34 size:0.0];
  }

  v35 = OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner_label;
  [v8 setFont_];

  [v8 setAdjustsFontForContentSizeCategory_];
  [v8 setTextAlignment_];
  *&v2[v35] = v8;
  v36 = OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner_spinner;
  v37 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
  [v37 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v2[v36] = v37;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner____lazy_storage___visibleSpinnerConstraints] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner____lazy_storage___hiddenSpinnerConstraints] = 0;
  v38 = type metadata accessor for LabelWithSpinner();
  v52.receiver = v2;
  v52.super_class = v38;
  v39 = objc_msgSendSuper2(&v52, sel_initWithCoder_, a1);
  v40 = v39;
  if (v39)
  {
    v41 = *&v39[OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner_spinner];
    v42 = v39;
    [v42 addSubview_];
    [v42 addSubview_];
    sub_1BA150534();
  }

  return v40;
}

void sub_1BA150394(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner_spinner);
  if (a1)
  {
    [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner_spinner) startAnimating];
    [v2 setHidden_];
    v3 = objc_opt_self();
    sub_1BA14F79C();
    sub_1B9F0ADF8(0, &qword_1EDC6B570);
    v4 = sub_1BA4A6AE8();

    [v3 deactivateConstraints_];

    sub_1BA14F69C();
  }

  else
  {
    [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner_spinner) stopAnimating];
    [v2 setHidden_];
    v3 = objc_opt_self();
    sub_1BA14F69C();
    sub_1B9F0ADF8(0, &qword_1EDC6B570);
    v5 = sub_1BA4A6AE8();

    [v3 deactivateConstraints_];

    sub_1BA14F79C();
  }

  v6 = sub_1BA4A6AE8();

  [v3 activateConstraints_];
}

void sub_1BA150534()
{
  v1 = objc_opt_self();
  sub_1B9F109F8();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BA4B5880;
  v3 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner_spinner];
  v4 = [v3 leadingAnchor];
  v5 = [v0 layoutMarginsGuide];
  v6 = [v5 leadingAnchor];

  v7 = [v4 constraintEqualToAnchor_];
  *(v2 + 32) = v7;
  v8 = [v3 centerYAnchor];
  v9 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner_label];
  v10 = [v9 centerYAnchor];
  v11 = [v8 constraintEqualToAnchor_];

  *(v2 + 40) = v11;
  v12 = [v0 layoutMarginsGuide];
  v13 = [v12 trailingAnchor];

  v14 = [v9 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v2 + 48) = v15;
  v16 = [v0 bottomAnchor];
  v17 = [v9 bottomAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v2 + 56) = v18;
  v19 = [v0 topAnchor];
  v20 = [v9 topAnchor];
  v21 = [v19 constraintEqualToAnchor_];

  *(v2 + 64) = v21;
  sub_1B9F0ADF8(0, &qword_1EDC6B570);
  v22 = sub_1BA4A6AE8();

  [v1 activateConstraints_];
}

id LabelWithSpinner.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LabelWithSpinner();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BA1508E8()
{
  if (!qword_1EBBECB00)
  {
    type metadata accessor for Weight(255);
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBECB00);
    }
  }
}

uint64_t BirthdayPickerItem.__allocating_init(initialValue:defaultAge:dateGenerator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC18HealthExperienceUI18BirthdayPickerItem____lazy_storage___calendar;
  v10 = sub_1BA4A18A8();
  (*(*(v10 - 8) + 56))(v8 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtC18HealthExperienceUI18BirthdayPickerItem_currentValue;
  v12 = sub_1BA4A1148();
  (*(*(v12 - 8) + 56))(v8 + v11, 1, 1, v12);
  swift_beginAccess();
  sub_1BA15209C(a1, v8 + v11, &qword_1EBBEA478, MEMORY[0x1E6968278]);
  swift_endAccess();
  *(v8 + OBJC_IVAR____TtC18HealthExperienceUI18BirthdayPickerItem_defaultAge) = a2;
  v13 = (v8 + OBJC_IVAR____TtC18HealthExperienceUI18BirthdayPickerItem_dateGenerator);
  *v13 = a3;
  v13[1] = a4;
  return v8;
}

uint64_t sub_1BA150AEC()
{
  type metadata accessor for CalendarPickerTableViewCell();
  sub_1BA15110C(0, &qword_1EBBE9710, type metadata accessor for CalendarPickerTableViewCell);
  return sub_1BA4A6808();
}

uint64_t sub_1BA150BF4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1BA150C54(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1BA0970B4;
}

uint64_t sub_1BA150CE8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BA4A17D8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x1E6969AE8];
  sub_1BA151A10(0, &unk_1EDC6AE30, MEMORY[0x1E6969AE8]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20[-v12];
  v14 = OBJC_IVAR____TtC18HealthExperienceUI18BirthdayPickerItem____lazy_storage___calendar;
  swift_beginAccess();
  sub_1BA152030(v1 + v14, v13, &unk_1EDC6AE30, v7);
  v15 = sub_1BA4A18A8();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v13, 1, v15) != 1)
  {
    return (*(v16 + 32))(a1, v13, v15);
  }

  v17 = v13;
  v18 = MEMORY[0x1E6969AE8];
  sub_1BA151230(v17, &unk_1EDC6AE30, MEMORY[0x1E6969AE8]);
  (*(v4 + 104))(v6, *MEMORY[0x1E6969868], v3);
  sub_1BA4A17E8();
  (*(v4 + 8))(v6, v3);
  (*(v16 + 16))(v10, a1, v15);
  (*(v16 + 56))(v10, 0, 1, v15);
  swift_beginAccess();
  sub_1BA15209C(v10, v1 + v14, &unk_1EDC6AE30, v18);
  return swift_endAccess();
}

uint64_t BirthdayPickerItem.init(initialValue:defaultAge:dateGenerator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC18HealthExperienceUI18BirthdayPickerItem____lazy_storage___calendar;
  v10 = sub_1BA4A18A8();
  (*(*(v10 - 8) + 56))(v4 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtC18HealthExperienceUI18BirthdayPickerItem_currentValue;
  v12 = sub_1BA4A1148();
  (*(*(v12 - 8) + 56))(v4 + v11, 1, 1, v12);
  swift_beginAccess();
  sub_1BA15209C(a1, v4 + v11, &qword_1EBBEA478, MEMORY[0x1E6968278]);
  swift_endAccess();
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI18BirthdayPickerItem_defaultAge) = a2;
  v13 = (v4 + OBJC_IVAR____TtC18HealthExperienceUI18BirthdayPickerItem_dateGenerator);
  *v13 = a3;
  v13[1] = a4;
  return v4;
}

uint64_t sub_1BA15110C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t type metadata accessor for BirthdayPickerItem()
{
  result = qword_1EBBECAB8;
  if (!qword_1EBBECAB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BirthdayPickerItem.deinit()
{
  sub_1B9FAB600(v0 + 16);
  sub_1BA151230(v0 + OBJC_IVAR____TtC18HealthExperienceUI18BirthdayPickerItem____lazy_storage___calendar, &unk_1EDC6AE30, MEMORY[0x1E6969AE8]);
  sub_1BA151230(v0 + OBJC_IVAR____TtC18HealthExperienceUI18BirthdayPickerItem_currentValue, &qword_1EBBEA478, MEMORY[0x1E6968278]);

  return v0;
}

uint64_t sub_1BA151230(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1BA151A10(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t BirthdayPickerItem.__deallocating_deinit()
{
  sub_1B9FAB600(v0 + 16);
  sub_1BA151230(v0 + OBJC_IVAR____TtC18HealthExperienceUI18BirthdayPickerItem____lazy_storage___calendar, &unk_1EDC6AE30, MEMORY[0x1E6969AE8]);
  sub_1BA151230(v0 + OBJC_IVAR____TtC18HealthExperienceUI18BirthdayPickerItem_currentValue, &qword_1EBBEA478, MEMORY[0x1E6968278]);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA1513C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

uint64_t BirthdayPickerItem.initialDate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v42 = a1;
  v3 = sub_1BA4A1728();
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v38 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BA4A1898();
  v40 = *(v5 - 8);
  v41 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A18A8();
  v45 = *(v7 - 8);
  v46 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA151A10(0, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v37 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v36 - v13;
  v15 = MEMORY[0x1E6968278];
  sub_1BA151A10(0, &qword_1EBBEA478, MEMORY[0x1E6968278]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v36 - v17;
  v19 = sub_1BA4A1148();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = OBJC_IVAR____TtC18HealthExperienceUI18BirthdayPickerItem_currentValue;
  swift_beginAccess();
  sub_1BA152030(v2 + v23, v18, &qword_1EBBEA478, v15);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_1BA151230(v18, &qword_1EBBEA478, MEMORY[0x1E6968278]);
    v25 = v43;
    v24 = v44;
  }

  else
  {
    (*(v20 + 32))(v22, v18, v19);
    sub_1BA150CE8(v9);
    sub_1BA4A1838();
    (*(v45 + 8))(v9, v46);
    (*(v20 + 8))(v22, v19);
    v25 = v43;
    v24 = v44;
    if ((*(v43 + 48))(v14, 1, v44) != 1)
    {
      return (*(v25 + 32))(v42, v14, v24);
    }

    sub_1BA151230(v14, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  }

  v26 = v2;
  sub_1BA150CE8(v9);
  v28 = v40;
  v27 = v41;
  v29 = v9;
  v30 = v39;
  result = (*(v40 + 104))(v39, *MEMORY[0x1E6969A68], v41);
  if (__OFSUB__(0, *(v26 + OBJC_IVAR____TtC18HealthExperienceUI18BirthdayPickerItem_defaultAge)))
  {
    __break(1u);
  }

  else
  {
    v32 = *(v26 + OBJC_IVAR____TtC18HealthExperienceUI18BirthdayPickerItem_dateGenerator);
    v33 = v38;
    v43 = *(v26 + OBJC_IVAR____TtC18HealthExperienceUI18BirthdayPickerItem_dateGenerator + 8);
    v44 = v32;
    (v32)(result);
    v34 = v37;
    sub_1BA4A1848();
    (*(v25 + 8))(v33, v24);
    (*(v28 + 8))(v30, v27);
    (*(v45 + 8))(v29, v46);
    v35 = *(v25 + 48);
    if (v35(v34, 1, v24) == 1)
    {
      v44();
      result = v35(v34, 1, v24);
      if (result != 1)
      {
        return sub_1BA151230(v34, &qword_1EDC6E440, MEMORY[0x1E6969530]);
      }
    }

    else
    {
      return (*(v25 + 32))(v42, v34, v24);
    }
  }

  return result;
}

void sub_1BA151A10(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1BA151AB8(uint64_t a1)
{
  v2 = v1;
  v21[1] = a1;
  v22 = MEMORY[0x1E6968278];
  sub_1BA151A10(0, &qword_1EBBEA478, MEMORY[0x1E6968278]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v21 - v4;
  v6 = sub_1BA4A18A8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BA4A1148();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA150CE8(v9);
  v14 = sub_1BA4A1818();
  (*(v7 + 8))(v9, v6);
  v15 = sub_1BA4A16B8();
  v16 = [v14 hk:v15 dateOfBirthDateComponentsWithDate:?];

  sub_1BA4A1108();
  (*(v11 + 16))(v5, v13, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  v17 = OBJC_IVAR____TtC18HealthExperienceUI18BirthdayPickerItem_currentValue;
  swift_beginAccess();
  sub_1BA15209C(v5, v2 + v17, &qword_1EBBEA478, v22);
  swift_endAccess();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v18 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v18 + 8))(v2, v13, ObjectType, v18);
    swift_unknownObjectRelease();
  }

  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_1BA151DB4()
{
  result = qword_1EBBECAB0;
  if (!qword_1EBBECAB0)
  {
    type metadata accessor for BirthdayPickerItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBECAB0);
  }

  return result;
}

void sub_1BA151E28()
{
  sub_1BA151A10(319, &unk_1EDC6AE30, MEMORY[0x1E6969AE8]);
  if (v0 <= 0x3F)
  {
    sub_1BA151A10(319, &qword_1EBBEA478, MEMORY[0x1E6968278]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1BA152030(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1BA151A10(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BA15209C(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1BA151A10(0, a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

void PDFPageBreak.render(context:document:)(void *a1, uint64_t a2)
{
  PDFBuilder.Document.moveToNextDrawableRegion(in:)(a1);
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v4 = *(a2 + 120);
  if (v4)
  {
    v5 = &unk_1EBBE8000;
    v6 = &OBJC_IVAR____TtC18HealthExperienceUI27DataTypeDetailFavoritesCell____lazy_storage___accessoryImageView;
    v33 = xmmword_1BA4C0AD0;
    while (1)
    {
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v7 == *(a2 + 104))
      {
        if (*(a2 + 201))
        {
          if (v7 >= 2)
          {
            type metadata accessor for PDFBuilder.Document();
            v18 = 1;
            do
            {
              swift_initStackObject();
              v19 = sub_1BA20F244(a2);
              *(v19 + 168) = PDFBuilder.Document.bodyBox.getter();
              *(v19 + 176) = v20;
              *(v19 + 184) = v21;
              *(v19 + 192) = v22;
              *(v19 + 200) = 0;
              v38.origin.x = PDFBuilder.Document.bodyBox.getter();
              v23 = (CGRectGetWidth(v38) + (*(a2 + 104) + -1.0) * -36.0) / *(a2 + 104) * v18 + 18.0;
              v39.origin.x = PDFBuilder.Document.drawingContext.getter();
              x = v39.origin.x;
              y = v39.origin.y;
              width = v39.size.width;
              height = v39.size.height;
              v28 = CGRectGetMinX(v39) + v23;
              v40.origin.x = x;
              v40.origin.y = y;
              v40.size.width = width;
              v40.size.height = height;
              v29 = CGRectGetMinY(v40) + 0.0;
              v41.origin.x = x;
              v41.origin.y = y;
              v41.size.width = width;
              v41.size.height = height;
              v30 = CGRectGetWidth(v41) - v23;
              v42.origin.x = x;
              v42.origin.y = y;
              v42.size.width = width;
              v42.size.height = height;
              v31 = CGRectGetHeight(v42);
              *(v19 + 168) = v28;
              *(v19 + 176) = v29;
              *(v19 + 184) = v30;
              *(v19 + 192) = v31;
              *(v19 + 200) = 0;
              if (*(a2 + 112) == 1)
              {
                if (v5[141] != -1)
                {
                  swift_once();
                }

                v32 = [v6[80] CGColor];
                v34 = v33;
                v35 = v32;
                PDFVerticalSeparator.render(context:document:)(a1, v19);
              }

              else
              {
              }

              ++v18;
            }

            while (v18 - v4 != 1);
          }

          [a1 beginPage];
          v8 = *(a2 + 160);
          v9 = __OFADD__(v8, 1);
          v10 = v8 + 1;
          if (v9)
          {
            goto LABEL_25;
          }

          *(a2 + 160) = v10;
          type metadata accessor for PDFBuilder.Document();
          swift_allocObject();
          v11 = sub_1BA20F244(a2);
          v12 = *(v11 + 48);
          *(v11 + 168) = *(v11 + 32);
          *(v11 + 184) = v12;
          *(v11 + 200) = 0;
          v13 = *(a2 + 208);
          v14 = *(v13 + 16);
          if (v14)
          {
            v15 = v13 + 32;

            do
            {
              sub_1B9F0A534(v15, &v34);
              v16 = v36;
              v17 = v37;
              __swift_project_boxed_opaque_existential_1(&v34, v36);
              (*(v17 + 16))(a1, v11, v16, v17);
              __swift_destroy_boxed_opaque_existential_1(&v34);
              v15 += 40;
              --v14;
            }

            while (v14);

            v5 = &unk_1EBBE8000;
          }

          else
          {
          }

          *(a2 + 120) = 0;
          sub_1BA20F060();
          sub_1BA20DE40(a1);
          v6 = &OBJC_IVAR____TtC18HealthExperienceUI27DataTypeDetailFavoritesCell____lazy_storage___accessoryImageView;
        }
      }

      else
      {
        *(a2 + 120) = v7;
        sub_1BA20F060();
      }

      v4 = *(a2 + 120);
      if (!v4)
      {
        return;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }
}

void PDFPageBreak.boundingRectForContent(in:)(uint64_t a1)
{
  v6.origin.x = PDFBuilder.Document.drawingContext.getter();
  CGRectGetWidth(v6);
  CGRectGetHeight(*(a1 + 168));
  v2 = *(a1 + 120);
  if (__OFADD__(v2, 1))
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v3 = *(a1 + 104);
  if (v2 + 1 == v3)
  {
    return;
  }

  v4 = __OFSUB__(v3, v2);
  v5 = v3 - v2;
  if (v4)
  {
    goto LABEL_8;
  }

  if (__OFSUB__(v5, 1))
  {
LABEL_9:
    __break(1u);
    return;
  }

  v7.size.width = *(a1 + 16);
  v7.size.height = *(a1 + 24);
  v7.origin.x = 0.0;
  v7.origin.y = 0.0;
  CGRectGetHeight(v7);
}

void DataTypeDetailDescriptionCell.Item.init(typeText:summaryText:attributionText:hasAttributionLink:baseIdentifier:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v24 = a7;
  v25 = a8;
  v16 = sub_1BA4A1798();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a9 + 32) = a1;
  *(a9 + 40) = a2;
  *(a9 + 48) = a3;
  *(a9 + 56) = a4;
  *(a9 + 64) = a5;
  *(a9 + 72) = a6;
  v20 = v25;
  *(a9 + 16) = v24;
  *(a9 + 24) = v20;
  v26 = 0x5F6D657449;
  v27 = 0xE500000000000000;
  v21 = a5;
  sub_1BA4A1788();
  sub_1B9F2AA14(&qword_1EDC6AE60, MEMORY[0x1E69695A8]);
  v22 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v22);

  (*(v17 + 8))(v19, v16);

  v23 = v27;
  *a9 = v26;
  *(a9 + 8) = v23;
}

uint64_t DataTypeDetailDescriptionCell.Item.uniqueIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DataTypeDetailDescriptionCell.Item.uniqueIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DataTypeDetailDescriptionCell.Item.baseIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t DataTypeDetailDescriptionCell.Item.baseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t DataTypeDetailDescriptionCell.Item.typeText.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t DataTypeDetailDescriptionCell.Item.typeText.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t DataTypeDetailDescriptionCell.Item.summaryText.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t DataTypeDetailDescriptionCell.Item.summaryText.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

void *DataTypeDetailDescriptionCell.Item.attributionText.getter()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

uint64_t DataTypeDetailDescriptionCell.Item.reuseIdentifier.getter()
{
  type metadata accessor for DataTypeDetailDescriptionCell();
  sub_1BA152A50();
  return sub_1BA4A6808();
}

unint64_t sub_1BA152A50()
{
  result = qword_1EDC6C318;
  if (!qword_1EDC6C318)
  {
    type metadata accessor for DataTypeDetailDescriptionCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EDC6C318);
  }

  return result;
}

uint64_t DataTypeDetailDescriptionCell.Item.hash(into:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  sub_1BA4A68C8();
  sub_1BA4A84A8();
  if (v1)
  {
    sub_1BA4A68C8();
  }

  sub_1BA4A68C8();
  sub_1BA4A68C8();
  if (v2)
  {
    sub_1BA4A84A8();
    v4 = v2;
    sub_1BA4A77A8();

    if (v3 == 2)
    {
      return sub_1BA4A84A8();
    }
  }

  else
  {
    sub_1BA4A84A8();
    if (v3 == 2)
    {
      return sub_1BA4A84A8();
    }
  }

  sub_1BA4A84A8();
  return sub_1BA4A84A8();
}

uint64_t DataTypeDetailDescriptionCell.Item.hashValue.getter()
{
  sub_1BA4A8488();
  DataTypeDetailDescriptionCell.Item.hash(into:)();
  return sub_1BA4A84D8();
}

uint64_t sub_1BA152C08()
{
  type metadata accessor for DataTypeDetailDescriptionCell();
  sub_1BA152A50();
  return sub_1BA4A6808();
}

uint64_t sub_1BA152C64()
{
  sub_1BA4A8488();
  DataTypeDetailDescriptionCell.Item.hash(into:)();
  return sub_1BA4A84D8();
}

uint64_t sub_1BA152CA8()
{
  sub_1BA4A8488();
  DataTypeDetailDescriptionCell.Item.hash(into:)();
  return sub_1BA4A84D8();
}

uint64_t sub_1BA152CE4(uint64_t a1)
{
  v2 = sub_1BA1553B8();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

uint64_t sub_1BA152D34()
{
  v1 = sub_1BA4A64F8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = OBJC_IVAR____TtC18HealthExperienceUI29DataTypeDetailDescriptionCell____lazy_storage___textView;
  v6 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29DataTypeDetailDescriptionCell____lazy_storage___textView);
  if (v6)
  {
    v7 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29DataTypeDetailDescriptionCell____lazy_storage___textView);
LABEL_5:
    v13 = v6;
    return v7;
  }

  v8 = [objc_allocWithZone(type metadata accessor for CoreTextView()) init];
  *&v8[OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_delegate + 8] = &off_1F3809010;
  v9 = v0;
  swift_unknownObjectWeakAssign();
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  *v4 = sub_1BA4A7308();
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
  v10 = sub_1BA4A6528();
  result = (*(v2 + 8))(v4, v1);
  if (v10)
  {
    v12 = *(v9 + v5);
    *(v9 + v5) = v8;
    v7 = v8;

    v6 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BA152ED8(uint64_t a1, uint64_t *a2)
{
  sub_1B9F68124(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI29DataTypeDetailDescriptionCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v6, v3 + v4);
  swift_endAccess();
  sub_1BA1537C0();
  return sub_1B9F43E50(v6, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0D950);
}

uint64_t sub_1BA152F74@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI29DataTypeDetailDescriptionCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA152FCC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI29DataTypeDetailDescriptionCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA1537C0();
  return sub_1B9F43E50(a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0D950);
}

void (*sub_1BA153064(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA1530C8;
}

void sub_1BA1530C8(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1BA1537C0();
  }
}

id sub_1BA1530FC(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI29DataTypeDetailDescriptionCell____lazy_storage___textView] = 0;
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI29DataTypeDetailDescriptionCell_textInsets];
  __asm { FMOV            V0.2D, #16.0 }

  *v9 = _Q0;
  *(v9 + 1) = _Q0;
  v15 = &v4[OBJC_IVAR____TtC18HealthExperienceUI29DataTypeDetailDescriptionCell_item];
  v16 = type metadata accessor for DataTypeDetailDescriptionCell();
  *v15 = 0u;
  *(v15 + 1) = 0u;
  *(v15 + 4) = 0;
  v32.receiver = v4;
  v32.super_class = v16;
  v17 = objc_msgSendSuper2(&v32, sel_initWithFrame_, a1, a2, a3, a4);
  v18 = [v17 contentView];
  v19 = sub_1BA152D34();
  [v18 addSubview_];

  v20 = [v17 contentView];
  v21 = [objc_opt_self() tertiarySystemBackgroundColor];
  [v20 setBackgroundColor_];

  v22 = *MEMORY[0x1E69796E8];
  v23 = [v17 layer];
  [v23 setCornerCurve_];

  v24 = [v17 layer];
  [v24 setCornerRadius_];

  v25 = [v17 layer];
  [v25 setMaskedCorners_];

  [v17 setClipsToBounds_];
  sub_1BA15534C(0, &qword_1EDC5DC30, sub_1B9F3BF3C, MEMORY[0x1E69E6F90]);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1BA4B5460;
  v27 = sub_1BA4A4858();
  v28 = MEMORY[0x1E69DC2B0];
  *(v26 + 32) = v27;
  *(v26 + 40) = v28;
  v29 = sub_1BA4A4438();
  v30 = MEMORY[0x1E69DC130];
  *(v26 + 48) = v29;
  *(v26 + 56) = v30;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1B9FE8ED0();
  sub_1BA4A7708();

  swift_unknownObjectRelease();

  return v17;
}

void sub_1BA1533E8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1BA1537C0();
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    [v2 invalidateIntrinsicContentSize];
  }
}

void sub_1BA153678(uint64_t a1, uint64_t a2)
{
  if (a2)
  {

    MEMORY[0x1BFAF1350](0x706972637365442ELL, 0xEC0000006E6F6974);
    v3 = sub_1BA4A6758();

    [v2 setAccessibilityIdentifier_];

    v4 = sub_1BA152D34();

    MEMORY[0x1BFAF1350](0x656956747865542ELL, 0xE900000000000077);
    v5 = sub_1BA4A6758();

    [v4 setAccessibilityIdentifier_];
  }

  else
  {
    [v2 setAccessibilityIdentifier_];
    v5 = sub_1BA152D34();
    [v5 setAccessibilityIdentifier_];
  }
}

void sub_1BA1537C0()
{
  v1 = v0;
  v2 = sub_1BA4A64F8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v119 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v130 = sub_1BA4A3EA8();
  v129 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v7 = &v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v127 = (&v119 - v9);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v119 - v11;
  v13 = OBJC_IVAR____TtC18HealthExperienceUI29DataTypeDetailDescriptionCell_item;
  swift_beginAccess();
  sub_1B9F68124(&v13[v1], v149);
  if (!v149[3])
  {
LABEL_36:
    sub_1B9F43E50(v149, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0D950);
    goto LABEL_37;
  }

  sub_1B9F0D950(0, &qword_1EDC6E1B0);
  if (swift_dynamicCast())
  {
    v133 = v141;
    v131 = v142;
    v134 = v143;
    v14 = v145;
    v132 = v144;
    v15 = v146;
    v138 = v147;
    LODWORD(v128) = v148;
    v139 = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
    v16 = *MEMORY[0x1E69DDCF8];
    v136 = objc_opt_self();
    v17 = [v136 preferredFontDescriptorWithTextStyle:v16 compatibleWithTraitCollection:0];
    v135 = v5;
    v137 = v15;
    v126 = v7;
    if (v17)
    {
      v18 = v17;
      v19 = [objc_opt_self() fontWithDescriptor:v17 size:0.0];
    }

    else
    {
      sub_1BA4A3DD8();
      v20 = v16;
      v21 = sub_1BA4A3E88();
      v22 = sub_1BA4A6FB8();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v122 = v2;
        v24 = v23;
        v124 = swift_slowAlloc();
        v125 = swift_slowAlloc();
        v149[0] = v125;
        *v24 = 136315906;
        v25 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v27 = sub_1B9F0B82C(v25, v26, v149);
        v121 = v3;
        v28 = v27;

        *(v24 + 4) = v28;
        *(v24 + 12) = 2080;
        v140 = 0;
        LOBYTE(v141) = 1;
        sub_1BA15534C(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
        v29 = sub_1BA4A6808();
        v31 = sub_1B9F0B82C(v29, v30, v149);

        *(v24 + 14) = v31;
        *(v24 + 22) = 2080;
        LODWORD(v140) = 0;
        type metadata accessor for SymbolicTraits(0);
        v32 = sub_1BA4A6808();
        v34 = sub_1B9F0B82C(v32, v33, v149);

        *(v24 + 24) = v34;
        v3 = v121;
        *(v24 + 32) = 2112;
        v35 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        *(v24 + 34) = v35;
        v36 = v124;
        *v124 = v35;
        _os_log_impl(&dword_1B9F07000, v21, v22, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v24, 0x2Au);
        sub_1B9F43E50(v36, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
        MEMORY[0x1BFAF43A0](v36, -1, -1);
        v37 = v125;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v37, -1, -1);
        v38 = v24;
        v2 = v122;
        MEMORY[0x1BFAF43A0](v38, -1, -1);
      }

      (*(v129 + 8))(v12, v130);
      v18 = [v136 preferredFontDescriptorWithTextStyle_];
      v19 = [objc_opt_self() fontWithDescriptor:v18 size:0.0];
      v15 = v137;
    }

    v39 = v19;

    v40 = objc_opt_self();
    v41 = [v40 labelColor];
    v42 = sub_1BA15540C(v14, v15, v39, v41);

    [v139 appendAttributedString_];
    v43 = &selRef_didTapSave_;
    v44 = v138;
    if (v138)
    {
      v45 = v138;
      if ([v45 length] >= 1)
      {
        v124 = v42;
        if (v128 == 2 || (v128 & 1) == 0)
        {
          v46 = &selRef_secondaryLabelColor;
        }

        else
        {
          v46 = &selRef_linkColor;
        }

        v47 = [v40 *v46];
        v48 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
        v49 = v45;
        v50 = *MEMORY[0x1E69DB650];
        v123 = v49;
        v51 = [v49 length];
        v125 = v48;
        v128 = v47;
        [v48 addAttribute:v50 value:v47 range:{0, v51}];
        v52 = [v136 preferredFontDescriptorWithTextStyle:v16 compatibleWithTraitCollection:0];
        if (v52)
        {
          v53 = v52;
          v54 = [objc_opt_self() fontWithDescriptor:v52 size:0.0];
          v55 = v136;
        }

        else
        {
          v56 = v127;
          sub_1BA4A3DD8();
          v57 = v16;
          v58 = sub_1BA4A3E88();
          v59 = sub_1BA4A6FB8();

          if (os_log_type_enabled(v58, v59))
          {
            v60 = swift_slowAlloc();
            v122 = v2;
            v61 = v60;
            v120 = swift_slowAlloc();
            v62 = swift_slowAlloc();
            v149[0] = v62;
            *v61 = 136315906;
            v63 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
            v65 = sub_1B9F0B82C(v63, v64, v149);
            v121 = v3;
            v66 = v65;

            *(v61 + 4) = v66;
            *(v61 + 12) = 2080;
            v140 = 0;
            LOBYTE(v141) = 1;
            sub_1BA15534C(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
            v67 = sub_1BA4A6808();
            v69 = sub_1B9F0B82C(v67, v68, v149);

            *(v61 + 14) = v69;
            *(v61 + 22) = 2080;
            LODWORD(v140) = 0;
            type metadata accessor for SymbolicTraits(0);
            v70 = sub_1BA4A6808();
            v72 = sub_1B9F0B82C(v70, v71, v149);

            *(v61 + 24) = v72;
            v3 = v121;
            *(v61 + 32) = 2112;
            v73 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
            *(v61 + 34) = v73;
            v74 = v120;
            *v120 = v73;
            _os_log_impl(&dword_1B9F07000, v58, v59, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v61, 0x2Au);
            sub_1B9F43E50(v74, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
            MEMORY[0x1BFAF43A0](v74, -1, -1);
            swift_arrayDestroy();
            MEMORY[0x1BFAF43A0](v62, -1, -1);
            v75 = v61;
            v2 = v122;
            MEMORY[0x1BFAF43A0](v75, -1, -1);

            (*(v129 + 8))(v127, v130);
          }

          else
          {

            (*(v129 + 8))(v56, v130);
          }

          v55 = v136;
          v53 = [v136 preferredFontDescriptorWithTextStyle_];
          v54 = [objc_opt_self() fontWithDescriptor:v53 size:0.0];
        }

        v76 = v54;

        v77 = [v40 labelColor];
        v78 = sub_1BA15540C(10, 0xE100000000000000, v76, v77);

        [v139 appendAttributedString_];
        v79 = *MEMORY[0x1E69DDD80];
        v80 = [v55 preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD80] compatibleWithTraitCollection:0];
        if (v80)
        {
          v81 = v80;
          v82 = v3;
          v83 = [objc_opt_self() fontWithDescriptor:v80 size:0.0];
        }

        else
        {
          v84 = v126;
          sub_1BA4A3DD8();
          v85 = v79;
          v86 = sub_1BA4A3E88();
          v87 = sub_1BA4A6FB8();

          v82 = v3;
          if (os_log_type_enabled(v86, v87))
          {
            v88 = swift_slowAlloc();
            v122 = v2;
            v89 = v88;
            v127 = swift_slowAlloc();
            v90 = swift_slowAlloc();
            v149[0] = v90;
            *v89 = 136315906;
            v91 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
            LODWORD(v121) = v87;
            v93 = sub_1B9F0B82C(v91, v92, v149);

            *(v89 + 4) = v93;
            *(v89 + 12) = 2080;
            v140 = 0;
            LOBYTE(v141) = 1;
            sub_1BA15534C(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
            v94 = sub_1BA4A6808();
            v96 = sub_1B9F0B82C(v94, v95, v149);

            *(v89 + 14) = v96;
            *(v89 + 22) = 2080;
            LODWORD(v140) = 0;
            type metadata accessor for SymbolicTraits(0);
            v97 = sub_1BA4A6808();
            v99 = sub_1B9F0B82C(v97, v98, v149);

            *(v89 + 24) = v99;
            *(v89 + 32) = 2112;
            v100 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
            *(v89 + 34) = v100;
            v101 = v127;
            *v127 = v100;
            _os_log_impl(&dword_1B9F07000, v86, v121, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v89, 0x2Au);
            sub_1B9F43E50(v101, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
            MEMORY[0x1BFAF43A0](v101, -1, -1);
            swift_arrayDestroy();
            MEMORY[0x1BFAF43A0](v90, -1, -1);
            v102 = v89;
            v2 = v122;
            MEMORY[0x1BFAF43A0](v102, -1, -1);
          }

          (*(v129 + 8))(v84, v130);
          v81 = [v136 preferredFontDescriptorWithTextStyle_];
          v83 = [objc_opt_self() fontWithDescriptor:v81 size:0.0];
        }

        v103 = v83;

        v104 = objc_allocWithZone(MEMORY[0x1E696AD40]);
        v105 = v125;
        v45 = [v104 initWithAttributedString_];
        [v45 addAttribute:*MEMORY[0x1E69DB648] value:v103 range:{0, objc_msgSend(v105, sel_length)}];

        v43 = &selRef_didTapSave_;
        [v139 appendAttributedString_];

        v3 = v82;
        v42 = v124;
      }

      v44 = v138;
    }

    v106 = [v1 traitCollection];
    v107 = [v106 horizontalSizeClass];

    if (v107 == 1)
    {
      v13 = sub_1BA152D34();
      v108 = OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_columns;
      swift_beginAccess();
      *&v13[v108] = 1;
      sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
      v109 = sub_1BA4A7308();
      v43 = v135;
      *v135 = v109;
      (*(v3 + 104))(v43, *MEMORY[0x1E69E8020], v2);
      LOBYTE(v108) = sub_1BA4A6528();
      v110 = *(v3 + 8);
      v3 += 8;
      v110(v43, v2);
      if (v108)
      {
LABEL_34:
        [v13 setNeedsLayout];
        [v13 invalidateIntrinsicContentSize];

        v115 = sub_1BA152D34();
        v116 = v139;
        v117 = v139;
        sub_1BA22A980(v116);

        sub_1BA153678(v131, v134);
        [v1 invalidateIntrinsicContentSize];

        return;
      }

      __break(1u);
    }

    if ([v139 v43[448]] <= 500)
    {
      v111 = 1;
    }

    else
    {
      v111 = 2;
    }

    v13 = sub_1BA152D34();
    v112 = OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_columns;
    swift_beginAccess();
    *&v13[v112] = v111;
    sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
    v113 = sub_1BA4A7308();
    v114 = v135;
    *v135 = v113;
    (*(v3 + 104))(v114, *MEMORY[0x1E69E8020], v2);
    LOBYTE(v112) = sub_1BA4A6528();
    (*(v3 + 8))(v114, v2);
    if (v112)
    {
      goto LABEL_34;
    }

    __break(1u);
    goto LABEL_36;
  }

LABEL_37:
  v140 = 0;
  v141 = 0xE000000000000000;
  sub_1BA4A7DF8();

  v149[0] = 0x6D65746920646162;
  v149[1] = 0xEF203A646E696B20;
  sub_1B9F68124(&v13[v1], &v140);
  sub_1B9F0D1B0(0, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0D950);
  v118 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v118);

  sub_1BA4A8018();
  __break(1u);
}

id DataTypeDetailDescriptionCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DataTypeDetailDescriptionCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BA154A40()
{
  v0 = [objc_opt_self() defaultWorkspace];
  if (v0)
  {
    v1 = v0;
    v2 = sub_1BA4A1548();
    sub_1B9FDB798(MEMORY[0x1E69E7CC0]);
    v3 = sub_1BA4A6618();

    [v1 openSensitiveURL:v2 withOptions:v3];
  }
}

uint64_t DataTypeDetailDescriptionCell.description.getter()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI29DataTypeDetailDescriptionCell_item;
  swift_beginAccess();
  sub_1B9F68124(v0 + v1, v13);
  if (v13[3])
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0);
    if (swift_dynamicCast())
    {
      v9 = 0xE000000000000000;
      sub_1BA4A7DF8();
      MEMORY[0x1BFAF1350](60, 0xE100000000000000);
      v13[0] = swift_getObjectType();
      sub_1BA152A50();
      v2 = sub_1BA4A6808();
      MEMORY[0x1BFAF1350](v2);

      MEMORY[0x1BFAF1350](32, 0xE100000000000000);
      v13[0] = v0;
      sub_1BA4A7FB8();
      MEMORY[0x1BFAF1350](0xD000000000000013, 0x80000001BA4EDC00);

      MEMORY[0x1BFAF1350](v10, v11);

      MEMORY[0x1BFAF1350](0xD000000000000018, 0x80000001BA4EDC20);
      v13[0] = v12;
      sub_1B9F0D1B0(0, &qword_1EDC6B578, &qword_1EDC6B580, 0x1E696AAB0, sub_1B9F0ADF8);
      v3 = v12;
      v4 = sub_1BA4A6808();
      MEMORY[0x1BFAF1350](v4);

      MEMORY[0x1BFAF1350](62, 0xE100000000000000);

      return 0;
    }
  }

  else
  {
    sub_1B9F43E50(v13, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0D950);
  }

  v9 = 0xE000000000000000;
  sub_1BA4A7DF8();
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  MEMORY[0x1BFAF1350](60, 0xE100000000000000);
  swift_getObjectType();
  sub_1BA152A50();
  v6 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v6);

  MEMORY[0x1BFAF1350](32, 0xE100000000000000);
  v8 = v0;
  sub_1BA4A7FB8();
  MEMORY[0x1BFAF1350](0x203A6D65746920, 0xE700000000000000);
  sub_1B9F68124(v0 + v1, &v8);
  sub_1B9F0D1B0(0, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0D950);
  v7 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v7);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  return v13[0];
}

uint64_t _s18HealthExperienceUI29DataTypeDetailDescriptionCellC4ItemV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v20 = *(a1 + 48);
  v21 = *(a1 + 56);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v18 = *(a2 + 64);
  v19 = *(a1 + 64);
  v16 = *(a2 + 72);
  v17 = *(a1 + 72);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1BA4A8338() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v7 || (v2 != v6 || v4 != v7) && (sub_1BA4A8338() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if ((v3 != v8 || v5 != v9) && (sub_1BA4A8338() & 1) == 0 || (v20 != v10 || v21 != v11) && (sub_1BA4A8338() & 1) == 0)
  {
    return 0;
  }

  if (v19)
  {
    if (!v18)
    {
      return 0;
    }

    sub_1B9F0ADF8(0, &qword_1EDC6B580);
    v12 = v18;
    v13 = v19;
    v14 = sub_1BA4A7798();

    if ((v14 & 1) == 0)
    {
      return 0;
    }

LABEL_22:
    if (v17 == 2)
    {
      if (v16 != 2)
      {
        return 0;
      }
    }

    else if (v16 == 2 || ((v16 ^ v17) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  if (!v18)
  {
    goto LABEL_22;
  }

  return 0;
}

unint64_t sub_1BA155140()
{
  result = qword_1EBBECAE0;
  if (!qword_1EBBECAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBECAE0);
  }

  return result;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1BA1551B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_1BA155200(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1BA15534C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1BA1553B8()
{
  result = qword_1EDC64010;
  if (!qword_1EDC64010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC64010);
  }

  return result;
}

id sub_1BA15540C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  sub_1BA15534C(0, &qword_1EDC5DBB8, sub_1BA1555D0, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5460;
  v7 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v8 = *MEMORY[0x1E69DB650];
  *(inited + 40) = a3;
  *(inited + 48) = v8;
  *(inited + 56) = a4;
  v9 = v7;
  v10 = a3;
  v11 = v8;
  v12 = a4;
  v13 = sub_1B9FDBC04(inited);
  swift_setDeallocating();
  sub_1BA1555D0();
  swift_arrayDestroy();
  sub_1B9FECAB8(v13);

  v14 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v15 = sub_1BA4A6758();
  type metadata accessor for Key(0);
  sub_1B9F2AA14(&qword_1EDC5E3D0, type metadata accessor for Key);
  v16 = sub_1BA4A6618();

  v17 = [v14 initWithString:v15 attributes:v16];

  return v17;
}

void sub_1BA1555D0()
{
  if (!qword_1EDC5E3A0)
  {
    type metadata accessor for Key(255);
    sub_1B9F0ADF8(255, &qword_1EDC6E350);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC5E3A0);
    }
  }
}

id static SectionedDataSourceCardStackConfiguration.alertsStack(with:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (qword_1EBBE83F0 != -1)
  {
    swift_once();
  }

  v4 = qword_1EBBECB08;
  v3 = unk_1EBBECB10;
  v5 = qword_1EDC5E838;

  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_1EDC5E840;
  v6 = *algn_1EDC5E848;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *a2 = v4;
  a2[1] = v3;
  a2[2] = v7;
  a2[3] = v6;
  a2[4] = sub_1BA0392BC;
  a2[5] = v8;

  return a1;
}