id sub_1000019B4()
{
  _s51HealthMedicationsNotificationContentExtensionBundleCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_100010910 = result;
  return result;
}

id sub_100001A08()
{
  if (qword_100010900 != -1)
  {
    swift_once();
  }

  v1 = qword_100010910;
  qword_100010918 = qword_100010910;
  unk_100010920 = 0x617A696C61636F4CLL;
  qword_100010928 = 0xEB00000000656C62;

  return v1;
}

id sub_100001A90()
{
  v1 = OBJC_IVAR____TtC45HealthMedicationsNotificationContentExtension26NotificationViewController____lazy_storage___dateFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC45HealthMedicationsNotificationContentExtension26NotificationViewController____lazy_storage___dateFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC45HealthMedicationsNotificationContentExtension26NotificationViewController____lazy_storage___dateFormatter);
  }

  else
  {
    v4 = [objc_allocWithZone(NSDateFormatter) init];
    [v4 setTimeStyle:1];
    [v4 setDateStyle:0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100001B2C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  *&v3[OBJC_IVAR____TtC45HealthMedicationsNotificationContentExtension26NotificationViewController____lazy_storage___dateFormatter] = 0;
  v7 = [objc_opt_self() hk_currentDeviceHas4InchScreen];
  v8 = 16.0;
  if (v7)
  {
    v8 = 8.0;
  }

  *&v3[OBJC_IVAR____TtC45HealthMedicationsNotificationContentExtension26NotificationViewController_margin] = v8;
  *&v3[OBJC_IVAR____TtC45HealthMedicationsNotificationContentExtension26NotificationViewController____lazy_storage___scheduledForLabel] = 0;
  *&v3[OBJC_IVAR____TtC45HealthMedicationsNotificationContentExtension26NotificationViewController____lazy_storage___scheduledForLabelStackView] = 0;
  v9 = [objc_allocWithZone(HKHealthStore) init];
  v10 = sub_100006568();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = v9;
  *&v4[OBJC_IVAR____TtC45HealthMedicationsNotificationContentExtension26NotificationViewController_scheduleItemDataSource] = sub_100006558();
  sub_100006538();
  v14 = v13;
  *&v4[OBJC_IVAR____TtC45HealthMedicationsNotificationContentExtension26NotificationViewController_medicationDataSource] = sub_100006528();
  if (a2)
  {
    v15 = sub_1000065A8();
  }

  else
  {
    v15 = 0;
  }

  v18.receiver = v4;
  v18.super_class = type metadata accessor for NotificationViewController();
  v16 = objc_msgSendSuper2(&v18, "initWithNibName:bundle:", v15, a3);

  return v16;
}

id sub_100001E20()
{
  v1 = OBJC_IVAR____TtC45HealthMedicationsNotificationContentExtension26NotificationViewController____lazy_storage___scheduledForLabel;
  v2 = *(v0 + OBJC_IVAR____TtC45HealthMedicationsNotificationContentExtension26NotificationViewController____lazy_storage___scheduledForLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC45HealthMedicationsNotificationContentExtension26NotificationViewController____lazy_storage___scheduledForLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    sub_10000629C(0, &qword_100010898, UIFont_ptr);
    v6 = sub_1000066A8();
    [v5 setFont:v6];

    [v5 setAdjustsFontForContentSizeCategory:1];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_100001F3C()
{
  v1 = OBJC_IVAR____TtC45HealthMedicationsNotificationContentExtension26NotificationViewController____lazy_storage___scheduledForLabelStackView;
  v2 = *(v0 + OBJC_IVAR____TtC45HealthMedicationsNotificationContentExtension26NotificationViewController____lazy_storage___scheduledForLabelStackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC45HealthMedicationsNotificationContentExtension26NotificationViewController____lazy_storage___scheduledForLabelStackView);
  }

  else
  {
    sub_100006250(0, &qword_100010850);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_100006CB0;
    *(v4 + 32) = sub_100001E20();
    v5 = objc_allocWithZone(UIStackView);
    sub_10000629C(0, &qword_100010888, UIView_ptr);
    isa = sub_100006608().super.isa;

    v7 = [v5 initWithArrangedSubviews:isa];

    [v7 setAxis:0];
    [v7 setAlignment:3];
    [v7 setDistribution:0];
    [v7 setSpacing:0.0];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = *(v0 + v1);
    *(v0 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void sub_1000020A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v60 = a2;
  sub_100005DB0(0, &qword_100010870, &type metadata accessor for MedicationVisualizationConfig, &type metadata accessor for Optional);
  v5 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v63 = &v59 - v6;
  sub_100005DB0(0, &qword_100010878, &type metadata accessor for Locale, &type metadata accessor for Optional);
  v8 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v59 - v9;
  v11 = sub_100001A90();
  isa = sub_100006478().super.isa;
  v13 = [v11 stringFromDate:isa];

  v14 = sub_1000065B8();
  v16 = v15;

  v17 = sub_100001E20();
  v18 = sub_1000064A8();
  (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
  if (qword_100010908 != -1)
  {
    swift_once();
  }

  v19 = qword_100010918;
  v20 = xmmword_100010920;
  sub_100005DB0(0, &qword_100010828, sub_100005778, &type metadata accessor for _ContiguousArrayStorage);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100006CC0;
  *(v21 + 56) = &type metadata for String;
  *(v21 + 64) = sub_100005820();
  *(v21 + 32) = v14;
  *(v21 + 40) = v16;
  v61 = v16;

  v58._countAndFlagsBits = 0xE000000000000000;
  v73._object = 0x8000000100007290;
  v73._countAndFlagsBits = 0xD00000000000002CLL;
  v22.super.isa = v19;
  v74._countAndFlagsBits = 0;
  v74._object = 0xE000000000000000;
  sub_100006468(v73, v20, v22, v74, v58);
  if (*(v21 + 16))
  {
    sub_1000065C8();
  }

  sub_100005E14(v10, &qword_100010878, &type metadata accessor for Locale);
  v23 = sub_1000065A8();

  [v17 setText:v23];

  sub_100006250(0, &qword_100010850);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100006CB0;
  *(v24 + 32) = sub_100001F3C();
  v70 = v24;
  v25 = v60;
  v26 = *(v60 + 16);
  if (v26)
  {
    v59 = v3;
    v64 = _swiftEmptyArrayStorage;
    sub_10000548C(0, v26, 0);
    v62 = sub_100006658();
    v27 = v64;
    v28 = (v25 + 40);
    do
    {
      v29 = v27;
      v30 = *(v28 - 8);
      v31 = *v28;
      sub_100006648();
      sub_100006638();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v69 = v31;
      sub_10000629C(0, &qword_100010880, HKMedicationUserDomainConcept_ptr);
      sub_100006578();
      v32 = v63;
      sub_100006698();
      sub_100005F38(v32, v30, v71);

      v27 = v29;
      v64 = v29;
      v34 = *(v29 + 2);
      v33 = *(v29 + 3);
      v35 = v34 + 1;
      if (v34 >= v33 >> 1)
      {
        sub_10000548C((v33 > 1), v34 + 1, 1);
        v27 = v64;
      }

      *(v27 + 2) = v35;
      v36 = &v27[40 * v34];
      v37 = v71[0];
      v38 = v71[1];
      *(v36 + 8) = v72;
      *(v36 + 2) = v37;
      *(v36 + 3) = v38;
      v28 += 2;
      --v26;
    }

    while (v26);
    v3 = v59;
LABEL_14:
    v39 = (v27 + 64);
    do
    {
      v41 = *(v39 - 3);
      v42 = *(v39 - 2);
      v43 = *(v39 - 1);
      v44 = *v39;
      v64 = *(v39 - 4);
      v40 = v64;
      v65 = v41;
      v66 = v42;
      v67 = v43;
      v68 = v44;
      v45 = v44;
      v46 = v40;
      v47 = v41;
      v48 = v42;
      v49 = v43;
      sub_100002898();
      sub_1000065F8();
      if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v50 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_100006618();
      }

      v39 += 5;
      sub_100006628();

      --v35;
    }

    while (v35);
    if (!(v70 >> 62))
    {
      goto LABEL_19;
    }

    goto LABEL_23;
  }

  v27 = _swiftEmptyArrayStorage;
  v35 = _swiftEmptyArrayStorage[2];
  if (v35)
  {
    goto LABEL_14;
  }

  if (!(v24 >> 62))
  {
LABEL_19:

    sub_100006748();
    sub_10000629C(0, &qword_100010888, UIView_ptr);
    goto LABEL_20;
  }

LABEL_23:
  sub_10000629C(0, &qword_100010888, UIView_ptr);

  sub_100006718();

LABEL_20:
  v51 = objc_allocWithZone(UIStackView);
  sub_10000629C(0, &qword_100010888, UIView_ptr);
  v52 = sub_100006608().super.isa;

  v53 = [v51 initWithArrangedSubviews:v52];

  [v53 setAxis:1];
  [v53 setAlignment:1];
  [v53 setDistribution:0];
  [v53 setSpacing:8.0];
  [v53 setTranslatesAutoresizingMaskIntoConstraints:0];
  v54 = [v3 view];
  if (v54)
  {
    v55 = v54;

    [v55 addSubview:v53];

    v56 = *&v3[OBJC_IVAR____TtC45HealthMedicationsNotificationContentExtension26NotificationViewController_margin];
    v57 = [v3 view];
    [v53 hk_alignConstraintsWithView:v57 insets:{v56, v56, v56, v56}];
  }

  else
  {
    __break(1u);
  }
}

id sub_100002898()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    sub_100006250(0, &qword_100010850);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_100006CD0;
    *(v3 + 32) = sub_100004C80();
    *(v3 + 40) = sub_100005150();
    v4 = objc_allocWithZone(UIStackView);
    sub_10000629C(0, &qword_100010888, UIView_ptr);
    isa = sub_100006608().super.isa;

    v6 = [v4 initWithArrangedSubviews:isa];

    [v6 setAxis:0];
    [v6 setAlignment:3];
    [v6 setDistribution:0];
    [v6 setSpacing:8.0];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = *(v0 + 24);
    v2 = v6;

    v1 = 0;
    *(v0 + 24) = v6;
  }

  v8 = v1;
  return v2;
}

uint64_t sub_1000029F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a8;
  v8[14] = v18;
  v8[12] = a7;
  v11 = sub_100006498();
  v8[15] = v11;
  v12 = *(v11 - 8);
  v8[16] = v12;
  v13 = *(v12 + 64) + 15;
  v8[17] = swift_task_alloc();
  v8[18] = sub_100006658();
  v8[19] = sub_100006648();
  v14 = async function pointer to MedicationScheduleItemDataSource.unloggedScheduleItems(for:)[1];
  v15 = swift_task_alloc();
  v8[20] = v15;
  *v15 = v8;
  v15[1] = sub_100002B28;

  return (MedicationScheduleItemDataSource.unloggedScheduleItems(for:))(a5, a6);
}

uint64_t sub_100002B28(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *(*v2 + 152);
  v7 = *(*v2 + 144);
  v12 = *v2;
  v4[21] = a1;
  v4[22] = v3;

  v9 = sub_100006638();
  v4[23] = v9;
  v4[24] = v8;
  if (v3)
  {
    v10 = sub_1000035E4;
  }

  else
  {
    v10 = sub_100002C8C;
  }

  return _swift_task_switch(v10, v9, v8);
}

uint64_t sub_100002C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[21];
  if (v4 >> 62)
  {
    if (v4 < 0)
    {
      v18 = v3[21];
    }

    v5 = sub_100006728();
    v3[25] = v5;
    if (v5)
    {
LABEL_3:
      if ((v4 & 0xC000000000000001) != 0)
      {
        v29 = v3[21];
        v5 = sub_1000066F8();
        v6 = v4 & 0xFFFFFFFFFFFFFF8;
        v7 = v3[21];
        v30 = v3[25];
        v3[26] = v6;
        v3[27] = v5;
        v3[28] = _swiftEmptyArrayStorage;
        if (!v30)
        {
          v31 = v3[14];

          swift_unknownObjectWeakInit();

          v5 = sub_100003130;
          a2 = 0;
          a3 = 0;

          return _swift_task_switch(v5, a2, a3);
        }
      }

      else
      {
        v6 = v4 & 0xFFFFFFFFFFFFFF8;
        if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_24:
          __break(1u);
          return _swift_task_switch(v5, a2, a3);
        }

        v7 = v3[21];
        v8 = *(v7 + 32);
        v3[26] = v6;
        v3[27] = v8;
        v3[28] = _swiftEmptyArrayStorage;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        v9 = sub_1000066F8();
LABEL_10:
        v3[29] = v9;
        v3[30] = 1;
        v11 = sub_1000064E8();
        v13 = v12;
        v3[31] = v12;
        v14 = *(&async function pointer to dispatch thunk of MedicationDataSource.fetchMedication(identifier:) + 1);
        v32 = (&async function pointer to dispatch thunk of MedicationDataSource.fetchMedication(identifier:) + async function pointer to dispatch thunk of MedicationDataSource.fetchMedication(identifier:));
        v15 = swift_task_alloc();
        v3[32] = v15;
        *v15 = v3;
        v15[1] = sub_100002FD0;
        v16 = v3[13];

        return v32(v11, v13);
      }

      if (*(v6 + 16))
      {
        v10 = *(v7 + 32);

        goto LABEL_10;
      }

      goto LABEL_24;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3[25] = v5;
    if (v5)
    {
      goto LABEL_3;
    }
  }

  v19 = v3[21];
  v20 = v3[19];
  v21 = v3[12];

  sub_100006688();
  sub_100005DB0(0, &qword_100010828, sub_100005778, &type metadata accessor for _ContiguousArrayStorage);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100006CC0;
  v3[11] = v21;
  sub_1000057DC();
  v23 = sub_1000065D8();
  v25 = v24;
  *(v22 + 56) = &type metadata for String;
  *(v22 + 64) = sub_100005820();
  *(v22 + 32) = v23;
  *(v22 + 40) = v25;
  sub_10000629C(0, &qword_100010848, OS_os_log_ptr);
  v26 = sub_1000066B8();
  sub_100006588();

  v27 = v3[17];

  v28 = v3[1];

  return v28();
}

uint64_t sub_100002FD0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 256);
  v6 = *v2;
  v4[33] = v1;

  v7 = v4[31];
  if (v1)
  {
    v8 = v4[28];
    v9 = v4[21];

    v10 = v4[23];
    v11 = v4[24];
    v12 = sub_100003814;
  }

  else
  {

    v4[35] = a1;
    v10 = v4[23];
    v11 = v4[24];
    v12 = sub_1000033A4;
  }

  return _swift_task_switch(v12, v10, v11);
}

uint64_t sub_100003130()
{
  v1 = *(v0 + 144);
  *(v0 + 272) = sub_100006648();
  v3 = sub_100006638();

  return _swift_task_switch(sub_1000031BC, v3, v2);
}

uint64_t sub_1000031BC()
{
  v1 = v0[34];
  v2 = v0[18];

  sub_100006648();
  sub_100006638();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = v0[28];
  if (Strong)
  {
    v5 = Strong;
    v6 = v0[27];
    v8 = v0[16];
    v7 = v0[17];
    v9 = v0[15];
    sub_1000064F8();
    sub_1000020A0(v7, v4);

    (*(v8 + 8))(v7, v9);
  }

  else
  {

    v10 = v0[27];
  }

  swift_unknownObjectWeakDestroy();
  v11 = v0[23];
  v12 = v0[24];

  return _swift_task_switch(sub_100003330, v11, v12);
}

uint64_t sub_100003330()
{
  v1 = v0[27];
  v2 = v0[19];

  v3 = v0[17];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000033A4()
{
  v1 = *(v0 + 280);
  if (!v1)
  {
    v14 = *(v0 + 232);
    v15 = *(v0 + 240);
    v16 = *(v0 + 200);

    if (v15 != v16)
    {
      v13 = *(v0 + 240);
      goto LABEL_13;
    }

LABEL_9:
    v17 = *(v0 + 216);
    v18 = *(v0 + 168);
    v19 = *(v0 + 112);

    swift_unknownObjectWeakInit();

    v10 = sub_100003130;
    v20 = 0;
    v11 = 0;

    return _swift_task_switch(v10, v20, v11);
  }

  v2 = *(v0 + 224);
  v3 = *(v0 + 232);
  v4 = sub_1000064D8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + 224);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1000055D0(0, *(v6 + 2) + 1, 1, *(v0 + 224));
  }

  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v8 >= v7 >> 1)
  {
    v6 = sub_1000055D0((v7 > 1), v8 + 1, 1, v6);
  }

  v9 = *(v0 + 232);

  *(v6 + 2) = v8 + 1;
  v12 = &v6[16 * v8];
  v12[32] = v4 & 1;
  *(v12 + 5) = v1;
  v13 = *(v0 + 240);
  *(v0 + 224) = v6;
  if (v13 == *(v0 + 200))
  {
    goto LABEL_9;
  }

LABEL_13:
  v20 = *(v0 + 168);
  if ((v20 & 0xC000000000000001) != 0)
  {
    v10 = sub_1000066F8();
  }

  else
  {
    if (v13 >= *(*(v0 + 208) + 16))
    {
LABEL_22:
      __break(1u);
      return _swift_task_switch(v10, v20, v11);
    }

    v21 = *(v20 + 8 * v13 + 32);
  }

  *(v0 + 232) = v10;
  *(v0 + 240) = v13 + 1;
  if (__OFADD__(v13, 1))
  {
    __break(1u);
    goto LABEL_22;
  }

  v22 = sub_1000064E8();
  v24 = v23;
  *(v0 + 248) = v23;
  v25 = *(&async function pointer to dispatch thunk of MedicationDataSource.fetchMedication(identifier:) + 1);
  v29 = (&async function pointer to dispatch thunk of MedicationDataSource.fetchMedication(identifier:) + async function pointer to dispatch thunk of MedicationDataSource.fetchMedication(identifier:));
  v26 = swift_task_alloc();
  *(v0 + 256) = v26;
  *v26 = v0;
  v26[1] = sub_100002FD0;
  v27 = *(v0 + 104);

  return v29(v22, v24);
}

uint64_t sub_1000035E4()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[12];

  sub_100006688();
  sub_100005DB0(0, &qword_100010828, sub_100005778, &type metadata accessor for _ContiguousArrayStorage);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100006CE0;
  v0[8] = v3;
  sub_1000057DC();
  v5 = sub_1000065D8();
  v7 = v6;
  *(v4 + 56) = &type metadata for String;
  v8 = sub_100005820();
  *(v4 + 64) = v8;
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  swift_getErrorValue();
  v9 = v0[2];
  v10 = *(v0[3] - 8);
  v11 = *(v10 + 64) + 15;
  swift_task_alloc();
  (*(v10 + 16))();
  v12 = sub_1000065D8();
  v14 = v13;

  *(v4 + 96) = &type metadata for String;
  *(v4 + 104) = v8;
  *(v4 + 72) = v12;
  *(v4 + 80) = v14;
  sub_10000629C(0, &qword_100010848, OS_os_log_ptr);
  v15 = sub_1000066B8();
  sub_100006588();

  v16 = v0[17];

  v17 = v0[1];

  return v17();
}

uint64_t sub_100003814()
{
  v1 = v0[29];
  v2 = v0[19];

  v3 = v0[33];
  v4 = v0[27];
  v5 = v0[12];

  sub_100006688();
  sub_100005DB0(0, &qword_100010828, sub_100005778, &type metadata accessor for _ContiguousArrayStorage);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100006CE0;
  v0[8] = v5;
  sub_1000057DC();
  v7 = sub_1000065D8();
  v9 = v8;
  *(v6 + 56) = &type metadata for String;
  v10 = sub_100005820();
  *(v6 + 64) = v10;
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  swift_getErrorValue();
  v11 = v0[2];
  v12 = *(v0[3] - 8);
  v13 = *(v12 + 64) + 15;
  swift_task_alloc();
  (*(v12 + 16))();
  v14 = sub_1000065D8();
  v16 = v15;

  *(v6 + 96) = &type metadata for String;
  *(v6 + 104) = v10;
  *(v6 + 72) = v14;
  *(v6 + 80) = v16;
  sub_10000629C(0, &qword_100010848, OS_os_log_ptr);
  v17 = sub_1000066B8();
  sub_100006588();

  v18 = v0[17];

  v19 = v0[1];

  return v19();
}

uint64_t sub_100003A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100005DB0(0, &qword_100010820, &type metadata accessor for TaskPriority, &type metadata accessor for Optional);
  v10 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v12 = v27 - v11;
  sub_1000061D0(a3, v27 - v11, &qword_100010820, &type metadata accessor for TaskPriority);
  v13 = sub_100006678();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100005E14(v12, &qword_100010820, &type metadata accessor for TaskPriority);
  }

  else
  {
    sub_100006668();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_100006638();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1000065E8() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_100005E14(a3, &qword_100010820, &type metadata accessor for TaskPriority);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100005E14(a3, &qword_100010820, &type metadata accessor for TaskPriority);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

void sub_100003DA0(void *a1)
{
  sub_100005DB0(0, &qword_100010820, &type metadata accessor for TaskPriority, &type metadata accessor for Optional);
  v3 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v115 = v99 - v4;
  v5 = sub_1000064C8();
  v113 = *(v5 - 8);
  v114 = v5;
  v6 = *(v113 + 64);
  __chkstk_darwin();
  v112 = v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100006498();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 request];
  v14 = [v13 content];

  v15 = [v14 categoryIdentifier];
  if (!v15)
  {
    sub_1000065B8();
    v15 = sub_1000065A8();
  }

  sub_1000065B8();
  v16 = objc_allocWithZone(NSUserDefaults);
  v17 = sub_1000065A8();

  v18 = [v16 initWithSuiteName:v17];

  if (v18)
  {
    v19 = v18;
    sub_100006488();
    isa = sub_100006478().super.isa;
    (*(v9 + 8))(v12, v8);
    [v19 setObject:isa forKey:HKMedicationsReminderNotificationLastShownDateKey];
  }

  v21 = [objc_opt_self() isNotMissedCategory:v15];

  if (v21)
  {
    v22 = [a1 request];
    v23 = [v22 content];

    v24 = [v23 userInfo];
    v25 = sub_100006598();

    v117 = sub_1000065B8();
    v118 = v26;
    sub_1000066E8();
    if (*(v25 + 16) && (v27 = sub_1000056E0(v119), (v28 & 1) != 0))
    {
      sub_100005874(*(v25 + 56) + 32 * v27, v120);
      sub_100005724(v119);

      if (swift_dynamicCast())
      {
        v107 = v117;
        v106 = v118;
        v29 = [a1 request];
        v30 = [v29 content];

        v31 = [v30 userInfo];
        v32 = sub_100006598();

        v117 = sub_1000065B8();
        v118 = v33;
        sub_1000066E8();
        if (*(v32 + 16) && (v34 = sub_1000056E0(v119), (v35 & 1) != 0))
        {
          sub_100005874(*(v32 + 56) + 32 * v34, v120);
          sub_100005724(v119);

          sub_10000629C(0, &qword_100010860, NSNumber_ptr);
          if (swift_dynamicCast())
          {
            v36 = v117;
            v37 = [v117 BOOLValue];

            if (v37)
            {
              v38 = "ION_SKIP_ALL_TEXT";
              v39._countAndFlagsBits = 0xD000000000000033;
              v40 = 1;
LABEL_19:
              if (qword_100010908 != -1)
              {
                countAndFlagsBits = v39._countAndFlagsBits;
                swift_once();
                v39._countAndFlagsBits = countAndFlagsBits;
              }

              v46 = qword_100010918;
              v47 = xmmword_100010920;
              v96._countAndFlagsBits = 0xE000000000000000;
              v39._object = (v38 | 0x8000000000000000);
              v103 = *(&xmmword_100010920 + 1);
              v104 = xmmword_100010920;
              v48.super.isa = qword_100010918;
              v105 = qword_100010918;
              v123._countAndFlagsBits = 0;
              v123._object = 0xE000000000000000;
              v99[2] = sub_100006468(v39, xmmword_100010920, v48, v123, v96);
              v99[1] = v49;

              v50 = v40 == 0;
              if (v40)
              {
                v51._countAndFlagsBits = 0xD000000000000031;
              }

              else
              {
                v51._countAndFlagsBits = 0xD00000000000002DLL;
              }

              if (v40)
              {
                v52 = "ION_REMIND_ME_TEXT";
              }

              else
              {
                v52 = "NOTIFICATION_ACTION_RECORD_TEXT";
              }

              v97._countAndFlagsBits = 0xE000000000000000;
              if (v50)
              {
                v53 = &HKMedicationsNotificationActionIdentifierRecordRawValue;
              }

              else
              {
                v53 = &HKMedicationsNotificationActionIdentifierRecordAllRawValue;
              }

              v54 = &HKMedicationsNotificationActionIdentifierSkipRawValue;
              if (!v50)
              {
                v54 = &HKMedicationsNotificationActionIdentifierSkipAllRawValue;
              }

              v100 = v54;
              v51._object = (v52 | 0x8000000000000000);
              v55.super.isa = v46;
              v124._countAndFlagsBits = 0;
              v124._object = 0xE000000000000000;
              v102 = sub_100006468(v51, v47, v55, v124, v97);
              v101 = v56;

              sub_100006250(0, &qword_100010850);
              v108 = swift_allocObject();
              *(v108 + 16) = xmmword_100006CF0;
              v57 = *v53;
              sub_1000065B8();
              v59 = v112;
              v58 = v113;
              v60 = *(v113 + 104);
              v109 = v113 + 104;
              v111 = v60;
              v61 = v114;
              v60(v112, enum case for Symbol.checkmark(_:), v114);
              sub_1000064B8();
              v113 = *(v58 + 8);
              (v113)(v59, v61);
              v62 = sub_1000065A8();

              v110 = objc_opt_self();
              v63 = [v110 iconWithSystemImageName:v62];

              v64 = sub_1000065A8();

              v65 = sub_1000065A8();

              v66 = objc_opt_self();
              v67 = [v66 actionWithIdentifier:v64 title:v65 options:1 icon:v63];

              v68 = v108;
              *(v108 + 32) = v67;
              v69 = *v100;
              sub_1000065B8();
              v111(v59, enum case for Symbol.xmark(_:), v61);
              sub_1000064B8();
              (v113)(v59, v61);
              v70 = sub_1000065A8();

              v71 = [v110 iconWithSystemImageName:v70];

              v72 = sub_1000065A8();

              v73 = sub_1000065A8();

              v74 = [v66 actionWithIdentifier:v72 title:v73 options:1 icon:v71];

              *(v68 + 40) = v74;
              v75 = HKMedicationsNotificationActionIdentifierSnoozeRawValue;
              v98._countAndFlagsBits = 0xE000000000000000;
              v121._countAndFlagsBits = 0xD000000000000032;
              v121._object = 0x80000001000070E0;
              v122.value._countAndFlagsBits = v104;
              v122.value._object = v103;
              v76.super.isa = v105;
              v125._countAndFlagsBits = 0;
              v125._object = 0xE000000000000000;
              sub_100006468(v121, v122, v76, v125, v98);
              v111(v59, enum case for Symbol.clock(_:), v61);
              sub_1000064B8();
              (v113)(v59, v61);
              v77 = sub_1000065A8();

              v78 = [v110 iconWithSystemImageName:v77];

              v79 = sub_1000065A8();
              v80 = v108;

              v81 = [v66 actionWithIdentifier:v75 title:v79 options:1 icon:v78];

              *(v80 + 48) = v81;
              v82 = v116;
              v83 = [v116 extensionContext];
              if (v83)
              {
                v84 = v83;
                sub_10000629C(0, &qword_100010858, UNNotificationAction_ptr);
                v85 = sub_100006608().super.isa;

                [v84 setNotificationActions:v85];
              }

              else
              {
              }

              ObjectType = swift_getObjectType();
              v87 = sub_100006678();
              v88 = v115;
              (*(*(v87 - 8) + 56))(v115, 1, 1, v87);
              v89 = *&v82[OBJC_IVAR____TtC45HealthMedicationsNotificationContentExtension26NotificationViewController_scheduleItemDataSource];
              v90 = *&v82[OBJC_IVAR____TtC45HealthMedicationsNotificationContentExtension26NotificationViewController_medicationDataSource];
              sub_100006658();

              v91 = v82;
              v92 = sub_100006648();
              v93 = swift_allocObject();
              v93[2] = v92;
              v93[3] = &protocol witness table for MainActor;
              v94 = v107;
              v93[4] = v89;
              v93[5] = v94;
              v93[6] = v106;
              v93[7] = ObjectType;
              v93[8] = v90;
              v93[9] = v91;
              sub_100003A58(0, 0, v88, &unk_100006D98, v93);

              goto LABEL_16;
            }
          }
        }

        else
        {

          sub_100005724(v119);
        }

        v40 = 0;
        v38 = "ule item identifier:";
        v39._countAndFlagsBits = 0xD00000000000002FLL;
        goto LABEL_19;
      }
    }

    else
    {

      sub_100005724(v119);
    }

    sub_100006688();
    sub_100005DB0(0, &qword_100010828, sub_100005778, &type metadata accessor for _ContiguousArrayStorage);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_100006CC0;
    v119[0] = swift_getObjectType();
    sub_1000057DC();
    v42 = sub_1000065D8();
    v44 = v43;
    *(v41 + 56) = &type metadata for String;
    *(v41 + 64) = sub_100005820();
    *(v41 + 32) = v42;
    *(v41 + 40) = v44;
    sub_10000629C(0, &qword_100010848, OS_os_log_ptr);
    v45 = sub_1000066B8();
    sub_100006588();

    v18 = v45;
  }

LABEL_16:
}

id sub_100004BAC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotificationViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100004C80()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = *v0;
  }

  else
  {
    v3 = [objc_allocWithZone(sub_100006518()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    *v0 = v3;
    v2 = v3;
    v1 = 0;
  }

  v4 = v1;
  return v2;
}

id sub_100004D00()
{
  v1 = *(v0 + 8);
  if (v1)
  {
    v2 = *(v0 + 8);
  }

  else
  {
    v3 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v3 setNumberOfLines:0];
    v4 = objc_opt_self();
    v5 = [v4 labelColor];
    [v3 setTextColor:v5];

    v6 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleTitle3];
    [v3 setFont:v6];

    [v3 setNumberOfLines:0];
    [v3 setLineBreakMode:4];
    v7 = [v4 labelColor];
    [v3 setTextColor:v7];

    v8 = v3;
    v9 = [v4 systemBackgroundColor];
    [v8 setBackgroundColor:v9];

    [v8 setAdjustsFontForContentSizeCategory:1];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

    *(v0 + 8) = v8;
    v2 = v8;
    v1 = 0;
  }

  v10 = v1;
  return v2;
}

id sub_100004ED8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v3 setNumberOfLines:0];
    v4 = objc_opt_self();
    v5 = [v4 labelColor];
    [v3 setTextColor:v5];

    v6 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline];
    [v3 setFont:v6];

    [v3 setNumberOfLines:0];
    [v3 setLineBreakMode:4];
    v7 = [v4 secondaryLabelColor];
    [v3 setTextColor:v7];

    v8 = v3;
    v9 = [v4 systemBackgroundColor];
    [v8 setBackgroundColor:v9];

    [v8 setAdjustsFontForContentSizeCategory:1];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

    if (qword_100010908 != -1)
    {
      swift_once();
    }

    v10.super.isa = qword_100010918;
    v14._countAndFlagsBits = 0xE000000000000000;
    v15._object = 0x80000001000072C0;
    v15._countAndFlagsBits = 0xD000000000000035;
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    sub_100006468(v15, xmmword_100010920, v10, v16, v14);
    v11 = sub_1000065A8();

    [v8 setText:v11];

    *(v0 + 16) = v8;
    v2 = v8;
    v1 = 0;
  }

  v12 = v1;
  return v2;
}

id sub_100005150()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    sub_100006250(0, &qword_100010850);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_100006CB0;
    *(v3 + 32) = sub_100004D00();
    v4 = objc_allocWithZone(UIStackView);
    sub_10000629C(0, &qword_100010888, UIView_ptr);
    isa = sub_100006608().super.isa;

    v6 = [v4 initWithArrangedSubviews:isa];

    [v6 setAxis:1];
    [v6 setAlignment:1];
    [v6 setDistribution:0];
    [v6 setSpacing:8.0];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    *(v0 + 32) = v6;
    v2 = v6;
    v1 = 0;
  }

  v7 = v1;
  return v2;
}

uint64_t sub_10000529C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005394;

  return v7(a1);
}

uint64_t sub_100005394()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

char *sub_10000548C(char *a1, int64_t a2, char a3)
{
  result = sub_1000054AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000054AC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100006250(0, &qword_100010890);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000055D0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100006250(0, &qword_100010868);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1000056E0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000066C8(*(v2 + 40));

  return sub_100005C8C(a1, v4);
}

unint64_t sub_100005778()
{
  result = qword_100010830;
  if (!qword_100010830)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100010830);
  }

  return result;
}

unint64_t sub_1000057DC()
{
  result = qword_100010838;
  if (!qword_100010838)
  {
    type metadata accessor for NotificationViewController();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_100010838);
  }

  return result;
}

unint64_t sub_100005820()
{
  result = qword_100010840;
  if (!qword_100010840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010840);
  }

  return result;
}

uint64_t sub_100005874(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000058D0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100005928()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v7 = v0[8];
  v6 = v0[9];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1000059EC;

  return sub_1000029F4(v8, v9, v10, v2, v3, v4, v5, v7);
}

uint64_t sub_1000059EC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100005AE0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100005B18(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100006464;

  return sub_10000529C(a1, v5);
}

uint64_t sub_100005BD0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000059EC;

  return sub_10000529C(a1, v5);
}

unint64_t sub_100005C8C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100005D54(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_1000066D8();
      sub_100005724(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void sub_100005DB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100005E14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_100005DB0(0, a2, a3, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_100005E84()
{
  *(v0 + OBJC_IVAR____TtC45HealthMedicationsNotificationContentExtension26NotificationViewController____lazy_storage___dateFormatter) = 0;
  v1 = [objc_opt_self() hk_currentDeviceHas4InchScreen];
  v2 = 16.0;
  if (v1)
  {
    v2 = 8.0;
  }

  *(v0 + OBJC_IVAR____TtC45HealthMedicationsNotificationContentExtension26NotificationViewController_margin) = v2;
  *(v0 + OBJC_IVAR____TtC45HealthMedicationsNotificationContentExtension26NotificationViewController____lazy_storage___scheduledForLabel) = 0;
  *(v0 + OBJC_IVAR____TtC45HealthMedicationsNotificationContentExtension26NotificationViewController____lazy_storage___scheduledForLabelStackView) = 0;
  sub_100006708();
  __break(1u);
}

double sub_100005F38@<D0>(uint64_t a1@<X2>, char a2@<W3>, uint64_t a3@<X8>)
{
  sub_100005DB0(0, &qword_100010870, &type metadata accessor for MedicationVisualizationConfig, &type metadata accessor for Optional);
  v7 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v26 - v8;
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v10 = sub_100004D00();
  v11 = sub_1000065A8();

  [v10 setText:v11];

  v12 = sub_100004C80();
  v13 = [v12 widthAnchor];

  v14 = [v13 constraintEqualToConstant:40.0];
  [v14 setActive:1];

  v15 = sub_100004C80();
  v16 = [v15 heightAnchor];

  v17 = sub_100004C80();
  v18 = [v17 widthAnchor];

  v19 = [v16 constraintEqualToAnchor:v18];
  [v19 setActive:1];

  if (a2)
  {
    v20 = sub_100005150();
    v21 = sub_100004ED8();
    [v20 addArrangedSubview:v21];
  }

  v22 = sub_100004C80();
  sub_1000061D0(a1, v9, &qword_100010870, &type metadata accessor for MedicationVisualizationConfig);
  sub_100006508();

  sub_100005E14(a1, &qword_100010870, &type metadata accessor for MedicationVisualizationConfig);
  v23 = v28;
  result = *&v26;
  v25 = v27;
  *a3 = v26;
  *(a3 + 16) = v25;
  *(a3 + 32) = v23;
  return result;
}

uint64_t sub_1000061D0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_100005DB0(0, a3, a4, &type metadata accessor for Optional);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_100006250(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_100006738();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_10000629C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

__n128 sub_1000062E4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000062F8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
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

uint64_t sub_100006354(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 sub_1000063C0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000063CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100006414(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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