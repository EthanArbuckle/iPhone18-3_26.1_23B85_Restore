void sub_1000030DC(id a1, NSError *a2)
{
  v2 = a2;
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKHosted;
  if (os_log_type_enabled(os_log_GKHosted, OS_LOG_TYPE_DEBUG))
  {
    sub_100014090(v4, v2);
  }
}

double variable initialization expression of MultiplayerModeSelectionViewController.chicletSpacing()
{
  ShouldUsePadUI = GKIsXRUIIdiomShouldUsePadUI();
  result = 16.0;
  if (ShouldUsePadUI)
  {
    return 24.0;
  }

  return result;
}

__n128 sub_100004278(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100004284(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000042A4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

void sub_1000042F8(uint64_t a1, unint64_t *a2)
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

uint64_t sub_100004344()
{
  v1 = sub_10000448C();
  result = nullsub_2(v1);
  *v0 = result;
  return result;
}

uint64_t sub_10000436C@<X0>(uint64_t *a1@<X8>)
{
  result = _s29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewControllerC8kvoToken10Foundation21NSKeyValueObservationCSgvpfi_0();
  *a1 = result;
  return result;
}

void sub_1000043A0(uint64_t a1@<X8>)
{
  sub_1000043D4();
  *a1 = v2;
  *(a1 + 8) = v3 & 1;
}

uint64_t sub_1000043E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100013270(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_100004430()
{
  sub_10000448C();
  result = sub_1000132C4();
  *v0 = result;
  v0[1] = v2;
  return result;
}

char *sub_100004498(void *a1, char a2)
{
  v4 = objc_allocWithZone(type metadata accessor for SharePlayModeChiclet());
  result = sub_1000044E4(a1);
  result[OBJC_IVAR____TtC29GameCenterMatchmakerExtension20SharePlayModeChiclet_isEligibleForGroupSession] = a2;
  return result;
}

char *sub_1000044E4(void *a1)
{
  v20 = sub_1000143A8();
  v2 = *(v20 - 8);
  __chkstk_darwin(v20);
  sub_10000644C();
  v5 = v4 - v3;
  v6 = sub_100014388();
  __chkstk_darwin(v6);
  sub_10000644C();
  v7 = sub_100014248();
  __chkstk_darwin(v7 - 8);
  sub_10000644C();
  *(v1 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension20SharePlayModeChiclet_isEligibleForGroupSession) = 0;
  v8 = OBJC_IVAR____TtC29GameCenterMatchmakerExtension20SharePlayModeChiclet_activeConversationUUID;
  v9 = sub_100014168();
  sub_1000063BC(v1 + v8, 1, 1, v9);
  *(v1 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension20SharePlayModeChiclet_messagesGroupPhotoData) = xmmword_1000166F0;
  *(v1 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension20SharePlayModeChiclet_startStagedActivity) = 0;
  v19 = OBJC_IVAR____TtC29GameCenterMatchmakerExtension20SharePlayModeChiclet_imageLoadQueue;
  sub_100005F5C(0, &qword_100028880);
  sub_100014238();
  sub_100005E68(&qword_100028888, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100005BC4(&qword_100028890);
  sub_1000063E4(&qword_100028898, &qword_100028890);
  sub_100014448();
  (*(v2 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v20);
  *(v1 + v19) = sub_1000143D8();
  v10 = a1;
  v11 = sub_10000C58C(v10);
  v12 = sub_1000142C8();
  v13 = &v11[OBJC_IVAR____TtC29GameCenterMatchmakerExtension22MultiplayerModeChiclet_subtitle];
  *v13 = v12;
  v13[1] = v14;

  v15 = sub_1000142C8();
  v16 = &v11[OBJC_IVAR____TtC29GameCenterMatchmakerExtension22MultiplayerModeChiclet_title];
  *v16 = v15;
  v16[1] = v17;

  *&v11[OBJC_IVAR____TtC29GameCenterMatchmakerExtension22MultiplayerModeChiclet_imageName] = xmmword_100016700;

  return v11;
}

void sub_100004860(char a1)
{
  sub_10000C5EC(a1);
  v2 = *&v1[OBJC_IVAR____TtC29GameCenterMatchmakerExtension42MultiplayerModeSelectionChicletCoordinator_multiplayerViewController];
  if (v2)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    v7[4] = sub_100005CB0;
    v7[5] = v3;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_100005790;
    v7[3] = &unk_100020BA0;
    v4 = _Block_copy(v7);
    v5 = v2;
    v6 = v1;

    [v5 sharePlayFetchFirstActiveConversationWithHandler:v4];
    _Block_release(v4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10000495C(void *a1, char *a2)
{
  v4 = sub_100014228();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100014248();
  v53 = *(v8 - 8);
  v54 = v8;
  __chkstk_darwin();
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000141F8();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v51 = v5;
    v52 = v4;
    v50 = a1;
    v15 = [v50 activeRemoteParticipants];
    sub_100005F5C(0, &qword_100028848);
    sub_100005D64();
    v16 = sub_100014348();

    v17 = sub_100005014(v16);

    sub_1000142C8();
    sub_100005BC4(&qword_100028858);
    v18 = swift_allocObject();
    v49 = xmmword_100016710;
    *(v18 + 16) = xmmword_100016710;
    sub_1000142C8();
    v19 = swift_allocObject();
    *(v19 + 16) = v49;
    *(v19 + 56) = &type metadata for Int;
    *(v19 + 64) = &protocol witness table for Int;
    *(v19 + 32) = v17;
    v20 = sub_100014298();
    v22 = v21;

    *(v18 + 56) = &type metadata for String;
    *(v18 + 64) = sub_100005DCC();
    *(v18 + 32) = v20;
    *(v18 + 40) = v22;
    v23 = sub_100014298();
    v25 = v24;

    v26 = &a2[OBJC_IVAR____TtC29GameCenterMatchmakerExtension22MultiplayerModeChiclet_subtitle];
    *v26 = v23;
    v26[1] = v25;

    v27 = *&a2[OBJC_IVAR____TtC29GameCenterMatchmakerExtension22MultiplayerModeChiclet_primaryMetadata];
    if (v27)
    {
      v28 = *v26;
      v29 = v26[1];
      v30 = v27;

      sub_100007900(0, 0xE000000000000000, 0, 0xE000000000000000, v28, v29);
    }

    v31 = swift_allocObject();
    v32 = v50;
    *(v31 + 16) = a2;
    *(v31 + 24) = v32;
    aBlock[4] = sub_100005E60;
    aBlock[5] = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000574C;
    aBlock[3] = &unk_100020BF0;
    v33 = _Block_copy(aBlock);
    v34 = v32;
    v35 = a2;
    sub_100014238();
    v55 = &_swiftEmptyArrayStorage;
    sub_100005E68(&qword_100028868, &type metadata accessor for DispatchWorkItemFlags);
    sub_100005BC4(&qword_100028870);
    sub_1000063E4(&qword_100028878, &qword_100028870);
    v36 = v52;
    sub_100014448();
    sub_1000143C8();
    _Block_release(v33);

    (*(v51 + 8))(v7, v36);
    (*(v53 + 8))(v10, v54);
  }

  else
  {
    v38 = sub_100014358();
    sub_1000141C8();
    v39 = sub_1000141E8();
    if (os_log_type_enabled(v39, v38))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      aBlock[0] = v41;
      *v40 = 136315138;
      *(v40 + 4) = sub_1000132C8(0xD00000000000002ELL, 0x8000000100019FF0, aBlock);
      _os_log_impl(&_mh_execute_header, v39, v38, "SharePlay - %s", v40, 0xCu);
      sub_100005D18(v41);
    }

    (*(v12 + 8))(v14, v11);
    v42 = sub_1000142C8();
    v43 = &a2[OBJC_IVAR____TtC29GameCenterMatchmakerExtension22MultiplayerModeChiclet_subtitle];
    *v43 = v42;
    v43[1] = v44;

    v45 = *&a2[OBJC_IVAR____TtC29GameCenterMatchmakerExtension22MultiplayerModeChiclet_primaryMetadata];
    if (v45)
    {
      v46 = *v43;
      v47 = v43[1];
      v48 = v45;

      sub_100007900(0, 0xE000000000000000, 0, 0xE000000000000000, v46, v47);
    }
  }

  return result;
}

uint64_t sub_100005014(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return *(a1 + 16);
  }

  if (a1 < 0)
  {
    return __CocoaSet.count.getter(a1);
  }

  return __CocoaSet.count.getter(a1 & 0xFFFFFFFFFFFFFF8);
}

uint64_t sub_100005034(char *a1, void *a2)
{
  v4 = sub_100014228();
  v45 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100014248();
  v43 = *(v7 - 8);
  v44 = v7;
  __chkstk_darwin();
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005EF8(a2);
  v11 = &a1[OBJC_IVAR____TtC29GameCenterMatchmakerExtension20SharePlayModeChiclet_messagesGroupPhotoData];
  v12 = *&a1[OBJC_IVAR____TtC29GameCenterMatchmakerExtension20SharePlayModeChiclet_messagesGroupPhotoData];
  v13 = *&a1[OBJC_IVAR____TtC29GameCenterMatchmakerExtension20SharePlayModeChiclet_messagesGroupPhotoData + 8];
  *v11 = v10;
  v11[1] = v14;
  sub_100005C0C(v12, v13);
  v15 = v11[1];
  if (v15 >> 60 != 15)
  {
    goto LABEL_13;
  }

  v16 = [a2 activeRemoteParticipants];
  sub_100005F5C(0, &qword_100028848);
  sub_100005D64();
  v17 = sub_100014348();

  v18 = sub_100005014(v17);

  if (v18 == 1)
  {
    v19 = [a2 activeRemoteParticipants];
    v20 = sub_100014348();

    v21 = sub_10000555C(v20);

    if (v21)
    {
      v22 = [v21 handle];

      if (v22)
      {
        v23 = [v22 value];
        if (!v23)
        {
          sub_1000142A8();
          v23 = sub_100014288();
        }

        v24 = objc_opt_self();
        v25 = [objc_allocWithZone(CNContactStore) init];
        v26 = [v24 contactFromEmailOrPhoneNumber:v23 fromContactStore:v25];

        if (v26)
        {
          v27 = v26;
          v28 = sub_10000604C(v27);
          v30 = v29;
        }

        else
        {

          v28 = 0;
          v30 = 0xF000000000000000;
        }

        v31 = *v11;
        v32 = v11[1];
        *v11 = v28;
        v11[1] = v30;
        sub_100005C0C(v31, v32);
      }
    }
  }

  v15 = v11[1];
  if (v15 >> 60 == 15)
  {
    v33 = 0;
  }

  else
  {
LABEL_13:
    v34 = *v11;
    v35 = objc_opt_self();
    sub_100005FF4(v34, v15);
    v33 = sub_100005FA4(v34, v15, v35);
    sub_100005C0C(v34, v15);
  }

  sub_100005F5C(0, &qword_100028880);
  v36 = sub_1000143B8();
  v37 = swift_allocObject();
  *(v37 + 16) = v33;
  *(v37 + 24) = a1;
  aBlock[4] = sub_100005F9C;
  aBlock[5] = v37;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000574C;
  aBlock[3] = &unk_100020C40;
  v38 = _Block_copy(aBlock);
  v39 = v33;
  v40 = a1;

  sub_100014238();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100005E68(&qword_100028868, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005BC4(&qword_100028870);
  sub_1000063E4(&qword_100028878, &qword_100028870);
  sub_100014448();
  sub_1000143C8();
  _Block_release(v38);

  (*(v45 + 8))(v6, v4);
  return (*(v43 + 8))(v9, v44);
}

uint64_t sub_10000555C(uint64_t a1)
{
  v2 = sub_1000060BC(a1);
  v4 = v3;
  v6 = v5;
  v7 = sub_10000611C(a1);
  v9 = v8;
  v11 = v10;
  v12 = sub_10000637C(v2, v4, v6 & 1, v7, v8, v10 & 1);
  sub_1000063B0(v7, v9, v11 & 1);
  if (v12)
  {
    sub_1000063B0(v2, v4, v6 & 1);
    return 0;
  }

  else
  {
    sub_100006170(v2, v4, v6 & 1, a1);
    v13 = v14;
    sub_1000063B0(v2, v4, v6 & 1);
  }

  return v13;
}

void sub_100005630(void *a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension22MultiplayerModeChiclet_primaryMetadata);
  if (a1)
  {
    if (v2)
    {
      sub_100005BC4(&qword_100028BC0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100016720;
      v5 = objc_allocWithZone(UIImageView);
      v6 = a1;
      v7 = v2;
      *(inited + 32) = [v5 initWithImage:v6];
      sub_1000075D0(inited);

      swift_setDeallocating();
      sub_100005CD0();
    }
  }

  else if (v2)
  {
    v8 = v2;
    sub_1000075D0(&_swiftEmptyArrayStorage);
  }
}

uint64_t sub_10000574C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_100005790(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_1000057FC(void *a1, char a2, char a3, char a4)
{
  v6 = OBJC_IVAR____TtC29GameCenterMatchmakerExtension42MultiplayerModeSelectionChicletCoordinator_multiplayerViewController;
  v7 = *(v4 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension42MultiplayerModeSelectionChicletCoordinator_multiplayerViewController);
  if (!v7)
  {
    __break(1u);
    goto LABEL_13;
  }

  [v7 setCanStartGroupActivities:1];
  v11 = *(v4 + v6);
  if (!v11)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  [v11 setOrigin:0];
  v12 = *(v4 + v6);
  if (*(v4 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension20SharePlayModeChiclet_isEligibleForGroupSession) == 1)
  {
    if (v12)
    {
      [v12 setStartStagedActivity:*(v4 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension20SharePlayModeChiclet_startStagedActivity)];

      sub_10000C8B8(a1, a2 & 1, a3 & 1, a4 & 1, 0, 0);
      return;
    }

    goto LABEL_14;
  }

  if (!v12)
  {
LABEL_15:
    __break(1u);
    return;
  }

  [v12 presentSharePlaySharingController];
}

void sub_100005910()
{
  sub_100005B5C(v0 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension20SharePlayModeChiclet_activeConversationUUID);
  sub_100005C0C(*(v0 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension20SharePlayModeChiclet_messagesGroupPhotoData), *(v0 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension20SharePlayModeChiclet_messagesGroupPhotoData + 8));
  v1 = *(v0 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension20SharePlayModeChiclet_imageLoadQueue);
}

id sub_100005964()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharePlayModeChiclet();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SharePlayModeChiclet()
{
  result = qword_100028828;
  if (!qword_100028828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100005A50()
{
  sub_100005B04();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100005B04()
{
  if (!qword_100028838)
  {
    sub_100014168();
    v0 = sub_100014418();
    if (!v1)
    {
      atomic_store(v0, &qword_100028838);
    }
  }
}

uint64_t sub_100005B5C(uint64_t a1)
{
  v2 = sub_100005BC4(&qword_100028840);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100005BC4(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100005C0C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100005C20(a1, a2);
  }

  return a1;
}

uint64_t sub_100005C20(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100005C78()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100005CB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005CD0()
{
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_100005D18(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_100005D64()
{
  result = qword_100028850;
  if (!qword_100028850)
  {
    sub_100005F5C(255, &qword_100028848);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028850);
  }

  return result;
}

unint64_t sub_100005DCC()
{
  result = qword_100028860;
  if (!qword_100028860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028860);
  }

  return result;
}

uint64_t sub_100005E20()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100005E68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100005EB0(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100005EF8(void *a1)
{
  v1 = [a1 messagesGroupPhotoData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_100014158();

  return v3;
}

uint64_t sub_100005F5C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id sub_100005FA4(uint64_t a1, uint64_t a2, void *a3)
{
  isa = sub_100014148().super.isa;
  v5 = [a3 _gkImageWithCheckedData:isa];

  return v5;
}

uint64_t sub_100005FF4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10000604C(void *a1)
{
  v2 = [a1 thumbnailImageData];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_100014158();

  return v3;
}

uint64_t sub_1000060BC(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_100014468();
  }

  else
  {
    return sub_100014458();
  }
}

uint64_t sub_10000611C(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_1000144C8();
  }

  else
  {
    return 1 << *(a1 + 32);
  }
}

void sub_100006170(uint64_t a1, int a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_1000144B8();
      sub_100005F5C(0, &qword_100028848);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_100005F5C(0, &qword_100028848);
    if (sub_100014488() == *(a4 + 36))
    {
      sub_100014498();
      swift_dynamicCast();
      v4 = v13;
      v7 = sub_1000143F8(*(a4 + 40));
      v8 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v6 = v7 & v8;
        if (((*(a4 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
        {
          goto LABEL_22;
        }

        v9 = *(*(a4 + 48) + 8 * v6);
        v10 = sub_100014408();

        if (v10)
        {
          goto LABEL_15;
        }

        v7 = v6 + 1;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  if (a1 < 0 || 1 << *(a4 + 32) <= a1)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:

    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_15:
  }

  v11 = *(*(a4 + 48) + 8 * v6);

  v12 = v11;
}

uint64_t sub_10000637C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a3 & 1) == 0)
  {
    if ((a6 & 1) == 0)
    {
      if (a2 == a5)
      {
        return a1 == a4;
      }

      __break(1u);
    }

    goto LABEL_8;
  }

  if ((a6 & 1) == 0)
  {
LABEL_8:
    __break(1u);
    return static __CocoaSet.Index.== infix(_:_:)(a1, a2, a3, a4);
  }

  a3 = a4;
  a4 = a5;
  return static __CocoaSet.Index.== infix(_:_:)(a1, a2, a3, a4);
}

uint64_t sub_1000063B0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1000063E4(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100005EB0(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10000645C(id a1, char a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    [a1 setTransitioningDelegate:?];
  }

  v7 = [v4 navigationController];
  [v7 pushViewController:a1 animated:a2 & 1];
}

uint64_t View.GKFocusable(_:)()
{
  v0 = sub_100014208();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5[1] = &_swiftEmptyArrayStorage;
  sub_100006640();
  sub_100005BC4(&qword_1000288A8);
  sub_100006698();
  sub_100014448();
  sub_100014218();
  return (*(v1 + 8))(v3, v0);
}

unint64_t sub_100006640()
{
  result = qword_1000288A0;
  if (!qword_1000288A0)
  {
    sub_100014208();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000288A0);
  }

  return result;
}

unint64_t sub_100006698()
{
  result = qword_1000288B0;
  if (!qword_1000288B0)
  {
    sub_100005EB0(&qword_1000288A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000288B0);
  }

  return result;
}

id sub_100006740()
{
  sub_10000895C();
  v8.receiver = v0;
  v8.super_class = type metadata accessor for ChicletMetadataShimView();
  return sub_100008938(v8.super_class, "initWithFrame:", v1, v2, v3, v4, v5, v6, v8);
}

id sub_1000067A8(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ChicletMetadataShimView();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

void *sub_1000068A8()
{
  v1 = *(v0 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension15ChicletMetadata_subtitleToBadgeTrailingConstraint);
  v2 = v1;
  return v1;
}

void sub_1000069DC()
{
  sub_1000088F8();
  swift_unknownObjectWeakAssign();
}

void sub_100006ABC()
{
  sub_1000088F8();
  swift_unknownObjectWeakAssign();
}

void sub_100006B9C()
{
  sub_1000088F8();
  swift_unknownObjectWeakAssign();
}

void sub_100006C7C()
{
  sub_1000088F8();
  swift_unknownObjectWeakAssign();
}

void sub_100006D5C()
{
  sub_1000088F8();
  swift_unknownObjectWeakAssign();
}

void sub_100006E3C()
{
  sub_1000088F8();
  swift_unknownObjectWeakAssign();
}

void *sub_100006EB4()
{
  v1 = *(v0 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension15ChicletMetadata_vibrancyView);
  v2 = v1;
  return v1;
}

void sub_100006F4C()
{
  v17.receiver = v0;
  v17.super_class = type metadata accessor for ChicletMetadata();
  objc_msgSendSuper2(&v17, "awakeFromNib");
  if (GKIsXRUIIdiomShouldUsePadUI())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    v2 = Strong;
    v3 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
    [v2 setFont:v3];
LABEL_7:

    v9 = OBJC_IVAR____TtC29GameCenterMatchmakerExtension15ChicletMetadata_vibrancyView;
    v10 = *&v0[OBJC_IVAR____TtC29GameCenterMatchmakerExtension15ChicletMetadata_vibrancyView];
    if (v10)
    {
      v11 = objc_opt_self();
      v12 = v10;
      v13 = [v11 _gkGameLayerContentVibrancyEffect];
      [v12 setEffect:v13];

      v14 = *&v0[v9];
      if (v14)
      {
        v15 = v14;
        v16 = sub_100014288();
        [v15 _setGroupName:v16];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }

  v4 = swift_unknownObjectWeakLoadStrong();
  if (!v4)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = v4;
  v6 = [objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleTitle1 variant:0x10000];
  [v5 setFont:v6];

  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v2 = v7;
    v8 = [objc_opt_self() whiteColor];
    v3 = [v8 colorWithAlphaComponent:0.4];

    [v2 setTextColor:v3];
    goto LABEL_7;
  }

LABEL_14:
  __break(1u);
}

void sub_1000071D8()
{
  v19.receiver = v0;
  v19.super_class = type metadata accessor for ChicletMetadata();
  objc_msgSendSuper2(&v19, "layoutSubviews");
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = Strong;
  v3 = [Strong layer];

  v4 = swift_unknownObjectWeakLoadStrong();
  if (!v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = v4;
  [v4 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v20.origin.x = v7;
  v20.origin.y = v9;
  v20.size.width = v11;
  v20.size.height = v13;
  [v3 setCornerRadius:CGRectGetHeight(v20) * 0.5];

  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    v16 = [v14 layer];

    v17 = [objc_opt_self() systemRedColor];
    v18 = [v17 CGColor];

    [v16 setBackgroundColor:v18];
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1000073A0(uint64_t a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for ChicletMetadata();
  objc_msgSendSuper2(&v6, "traitCollectionDidChange:", a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleTitle1 variant:0x10000];
    [v4 setFont:v5];
  }

  else
  {
    __break(1u);
  }
}

void sub_1000074BC(char a1, char a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = Strong;
  [Strong setHidden:a1 & 1];

  v7 = *(v2 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension15ChicletMetadata_vibrancyView);
  if ((a1 & 1) != 0 || (a2 & 1) == 0)
  {
    if (v7)
    {
      v11 = objc_allocWithZone(UIVisualEffect);
      v9 = v7;
      v10 = [v11 init];
      goto LABEL_8;
    }

    goto LABEL_12;
  }

  if (!v7)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 _gkGameLayerContentVibrancyEffect];
LABEL_8:
  v12 = v10;
  [v9 setEffect:?];
}

void sub_1000075D0(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v2 = Strong;
  [Strong setHidden:0];

  sub_1000074BC(1, 0);
  v3 = swift_unknownObjectWeakLoadStrong();
  if (!v3)
  {
LABEL_31:
    __break(1u);
    return;
  }

  v4 = v3;
  v5 = [v3 arrangedSubviews];

  sub_10000879C();
  v6 = sub_100014318();

  v7 = sub_100013BB8(v6);
  for (i = 0; v7 != i; ++i)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = sub_1000144F8();
    }

    else
    {
      if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v9 = *(v6 + 8 * i + 32);
    }

    v10 = v9;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v11 = swift_unknownObjectWeakLoadStrong();
    if (!v11)
    {
      goto LABEL_27;
    }

    v12 = v11;
    [v11 removeArrangedSubview:v10];

    [v10 removeFromSuperview];
  }

  v13 = sub_100013BB8(a1);
  for (j = 0; v13 != j; ++j)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v15 = sub_1000144F8();
    }

    else
    {
      if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v15 = *(a1 + 8 * j + 32);
    }

    v16 = v15;
    if (__OFADD__(j, 1))
    {
      goto LABEL_25;
    }

    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = swift_unknownObjectWeakLoadStrong();
    if (!v17)
    {
      goto LABEL_28;
    }

    v18 = v17;
    [v17 frame];
    v20 = v19;

    [v16 intrinsicContentSize];
    v22 = v21;
    [v16 intrinsicContentSize];
    v24 = v20 * (v22 / v23);
    v25 = [v16 heightAnchor];
    v26 = [v25 constraintEqualToConstant:v20];

    [v26 setActive:1];
    v27 = [v16 widthAnchor];
    v28 = [v27 constraintEqualToConstant:v24];

    [v28 setActive:1];
    v29 = swift_unknownObjectWeakLoadStrong();
    if (!v29)
    {
      goto LABEL_29;
    }

    v30 = v29;
    [v29 addArrangedSubview:v16];
  }
}

void sub_100007900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_8;
  }

  v11 = Strong;
  [Strong setHidden:1];

  v12 = swift_unknownObjectWeakLoadStrong();
  if (!v12)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v13 = v12;
  [v12 setHidden:1];

  sub_1000074BC(0, 1);
  v14 = swift_unknownObjectWeakLoadStrong();
  if (!v14)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v15 = v14;
  sub_10000C2A8(a1, a2, v14);

  v16 = swift_unknownObjectWeakLoadStrong();
  if (!v16)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v17 = v16;
  sub_10000884C();
  v18 = sub_100014428();
  sub_100013884(v18, v19, v17);

  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20)
  {
    v21 = v20;
    sub_10000C2A8(a5, a6, v20);

    sub_100008030(0, 0);
    return;
  }

LABEL_11:
  __break(1u);
}

void sub_100007A80(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v4 = Strong;
  v5 = swift_unknownObjectWeakLoadStrong();
  if (!v5)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v6 = v5;
  v7 = [v5 isHidden];

  [v4 setHidden:v7];
  v8 = swift_unknownObjectWeakLoadStrong();
  if (!v8)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v9 = v8;
  v10 = [v8 isHidden];

  if (v10)
  {
    sub_1000074BC(1, 0);
    goto LABEL_9;
  }

  sub_1000074BC(0, 0);
  v11 = *(v1 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension15ChicletMetadata_vibrancyView);
  if (!v11)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v12 = *(a1 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension15ChicletMetadata_vibrancyView);
  if (v12)
  {
    v13 = v11;
    v14 = [v12 effect];
    [v13 setEffect:v14];

LABEL_9:
    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      v16 = v15;
      v17 = swift_unknownObjectWeakLoadStrong();
      if (v17)
      {
        v18 = v17;
        v19 = [v17 isHidden];

        [v16 setHidden:v19];
        v20 = swift_unknownObjectWeakLoadStrong();
        if (v20)
        {
          v21 = v20;
          v22 = swift_unknownObjectWeakLoadStrong();
          if (v22)
          {
            sub_1000087E0(v22, &selRef_text);
            if (v23)
            {
              sub_100014288();
              sub_1000088EC();
            }

            else
            {
              v18 = 0;
            }

            sub_10000891C();

            v24 = &off_100028000;
            v25 = swift_unknownObjectWeakLoadStrong();
            if (v25)
            {
              v26 = v25;
              v27 = swift_unknownObjectWeakLoadStrong();
              if (v27)
              {
                sub_1000087E0(v27, &selRef_text);
                if (v28)
                {
                  sub_100014288();
                  sub_1000088EC();
                }

                else
                {
                  v24 = 0;
                }

                sub_10000891C();

                v29 = &off_100028000;
                v30 = swift_unknownObjectWeakLoadStrong();
                if (v30)
                {
                  v31 = v30;
                  v32 = swift_unknownObjectWeakLoadStrong();
                  if (v32)
                  {
                    sub_1000087E0(v32, &selRef_text);
                    if (v33)
                    {
                      sub_100014288();
                      sub_1000088EC();
                    }

                    else
                    {
                      v29 = 0;
                    }

                    sub_10000891C();

                    v34 = &off_100028000;
                    v35 = swift_unknownObjectWeakLoadStrong();
                    if (v35)
                    {
                      v36 = v35;
                      v37 = swift_unknownObjectWeakLoadStrong();
                      if (v37)
                      {
                        sub_1000087E0(v37, &selRef_text);
                        if (v38)
                        {
                          sub_100014288();
                          sub_1000088EC();
                        }

                        else
                        {
                          v34 = 0;
                        }

                        sub_10000891C();

                        v39 = swift_unknownObjectWeakLoadStrong();
                        if (v39)
                        {
                          v40 = v39;
                          v41 = [v39 arrangedSubviews];

                          sub_10000879C();
                          sub_1000088EC();
                          v42 = sub_100014318();

                          v43 = sub_100013BB8(v42);
                          for (i = 0; v43 != i; ++i)
                          {
                            if ((v42 & 0xC000000000000001) != 0)
                            {
                              v45 = sub_1000144F8();
                            }

                            else
                            {
                              if (i >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
                              {
                                goto LABEL_57;
                              }

                              v45 = *(v42 + 8 * i + 32);
                            }

                            v46 = v45;
                            if (__OFADD__(i, 1))
                            {
                              __break(1u);
LABEL_57:
                              __break(1u);
LABEL_58:
                              __break(1u);
LABEL_59:
                              __break(1u);
LABEL_60:
                              __break(1u);
LABEL_61:
                              __break(1u);
LABEL_62:
                              __break(1u);
                              goto LABEL_63;
                            }

                            v47 = swift_unknownObjectWeakLoadStrong();
                            if (!v47)
                            {
                              goto LABEL_60;
                            }

                            v48 = v47;
                            [v47 removeArrangedSubview:v46];

                            [v46 removeFromSuperview];
                          }

                          v49 = swift_unknownObjectWeakLoadStrong();
                          if (!v49)
                          {
                            goto LABEL_77;
                          }

                          v50 = v49;
                          v51 = [v49 arrangedSubviews];

                          v52 = sub_100014318();
                          v53 = sub_100013BB8(v52);
                          for (j = 0; v53 != j; ++j)
                          {
                            if ((v52 & 0xC000000000000001) != 0)
                            {
                              v55 = sub_1000144F8();
                            }

                            else
                            {
                              if (j >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
                              {
                                goto LABEL_59;
                              }

                              v55 = *(v52 + 8 * j + 32);
                            }

                            v56 = v55;
                            if (__OFADD__(j, 1))
                            {
                              goto LABEL_58;
                            }

                            v57 = swift_unknownObjectWeakLoadStrong();
                            if (!v57)
                            {
                              goto LABEL_61;
                            }

                            v58 = v57;
                            [v57 removeArrangedSubview:v56];

                            [v56 removeFromSuperview];
                            v59 = swift_unknownObjectWeakLoadStrong();
                            if (!v59)
                            {
                              goto LABEL_62;
                            }

                            v60 = v59;
                            [v59 addArrangedSubview:v56];
                          }

                          v61 = swift_unknownObjectWeakLoadStrong();
                          if (v61)
                          {
                            v62 = v61;

                            v63 = sub_1000087E0(v62, &selRef_accessibilityLabel);
                            sub_100008030(v63, v64);

                            return;
                          }

                          goto LABEL_78;
                        }

LABEL_76:
                        __break(1u);
LABEL_77:
                        __break(1u);
LABEL_78:
                        __break(1u);
                        goto LABEL_79;
                      }

LABEL_75:
                      __break(1u);
                      goto LABEL_76;
                    }

LABEL_74:
                    __break(1u);
                    goto LABEL_75;
                  }

LABEL_73:
                  __break(1u);
                  goto LABEL_74;
                }

LABEL_72:
                __break(1u);
                goto LABEL_73;
              }

LABEL_71:
              __break(1u);
              goto LABEL_72;
            }

LABEL_70:
            __break(1u);
            goto LABEL_71;
          }

LABEL_69:
          __break(1u);
          goto LABEL_70;
        }

LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

LABEL_80:
  __break(1u);
}

void sub_100008030(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v3 = a2;
    goto LABEL_3;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v5 = Strong;
  v6 = [Strong attributedText];

  if (!v6)
  {
    a1 = 0;
    v3 = 0xE000000000000000;
LABEL_3:
    swift_bridgeObjectRetain_n();

    if ((v3 & 0x2000000000000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_9:
    if ((v3 & 0xF00000000000000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v7 = [v6 string];

  a1 = sub_1000142A8();
  v3 = v8;

  if ((v3 & 0x2000000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((a1 & 0xFFFFFFFFFFFFLL) != 0)
  {
    goto LABEL_12;
  }

LABEL_10:
  v9 = swift_unknownObjectWeakLoadStrong();
  if (!v9)
  {
LABEL_40:
    __break(1u);
    return;
  }

  v10 = v9;

  sub_1000087E0(v10, &selRef_text);
LABEL_12:
  v11 = swift_unknownObjectWeakLoadStrong();
  if (!v11)
  {
    __break(1u);
    goto LABEL_33;
  }

  v12 = v11;
  v13 = sub_100014288();
  [v12 setAccessibilityLabel:v13];

  v14 = OBJC_IVAR____TtC29GameCenterMatchmakerExtension15ChicletMetadata_caption;
  v15 = swift_unknownObjectWeakLoadStrong();
  if (!v15)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v16 = v15;
  v17 = swift_unknownObjectWeakLoadStrong();
  if (!v17)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  sub_1000087E0(v17, &selRef_text);
  if (v18)
  {
    sub_100014288();
    sub_1000088EC();
  }

  else
  {
    v14 = 0;
  }

  [v16 setAccessibilityLabel:v14];

  v19 = OBJC_IVAR____TtC29GameCenterMatchmakerExtension15ChicletMetadata_subtitle;
  v20 = swift_unknownObjectWeakLoadStrong();
  if (!v20)
  {
    goto LABEL_35;
  }

  v21 = v20;
  v22 = swift_unknownObjectWeakLoadStrong();
  if (!v22)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  sub_1000087E0(v22, &selRef_text);
  if (v23)
  {
    sub_100014288();
    sub_1000088EC();
  }

  else
  {
    v19 = 0;
  }

  [v21 setAccessibilityLabel:v19];

  v24 = swift_unknownObjectWeakLoadStrong();
  if (!v24)
  {
    goto LABEL_37;
  }

  v25 = v24;
  v26 = swift_unknownObjectWeakLoadStrong();
  if (!v26)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v27 = v26;

  sub_1000087E0(v27, &selRef_text);
  if (v28)
  {
    v29 = sub_100014288();
  }

  else
  {
    v29 = 0;
  }

  [v25 setAccessibilityLabel:v29];
}

uint64_t sub_1000083CC()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_1000083F4()
{
  sub_10000895C();
  *&v0[OBJC_IVAR____TtC29GameCenterMatchmakerExtension15ChicletMetadata_subtitleToBadgeTrailingConstraint] = 0;
  sub_100008904();
  sub_100008904();
  sub_100008904();
  sub_100008904();
  sub_100008904();
  sub_100008904();
  *&v0[OBJC_IVAR____TtC29GameCenterMatchmakerExtension15ChicletMetadata_vibrancyView] = 0;
  v8.receiver = v0;
  v8.super_class = sub_1000088B4(OBJC_IVAR____TtC29GameCenterMatchmakerExtension15ChicletMetadata_visualEffectGroupName);
  return sub_100008938(v8.super_class, "initWithFrame:", v1, v2, v3, v4, v5, v6, v8);
}

id sub_1000084C4(void *a1)
{
  *&v1[OBJC_IVAR____TtC29GameCenterMatchmakerExtension15ChicletMetadata_subtitleToBadgeTrailingConstraint] = 0;
  sub_100008904();
  sub_100008904();
  sub_100008904();
  sub_100008904();
  sub_100008904();
  sub_100008904();
  *&v1[OBJC_IVAR____TtC29GameCenterMatchmakerExtension15ChicletMetadata_vibrancyView] = 0;
  v5.receiver = v1;
  v5.super_class = sub_1000088B4(OBJC_IVAR____TtC29GameCenterMatchmakerExtension15ChicletMetadata_visualEffectGroupName);
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_1000085B4()
{
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
}

id sub_100008680(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_10000879C()
{
  result = qword_100028950;
  if (!qword_100028950)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100028950);
  }

  return result;
}

uint64_t sub_1000087E0(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1000142A8();

  return v4;
}

unint64_t sub_10000884C()
{
  result = qword_100028958;
  if (!qword_100028958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028958);
  }

  return result;
}

uint64_t sub_1000088B4@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  strcpy(v3, "gameLayerGroup");
  v3[15] = -18;

  return type metadata accessor for ChicletMetadata();
}

uint64_t sub_100008904()
{

  return swift_unknownObjectWeakInit();
}

id sub_10000891C()
{
  v4 = *(v0 + 3960);

  return [v1 v4];
}

id sub_100008938(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{

  return objc_msgSendSuper2(&a9, a2, v13, v12, v11, v10);
}

char *sub_100008970(void *a1)
{
  v1 = a1;
  v2 = sub_10000C58C(v1);
  v3 = sub_1000142C8();
  v4 = &v2[OBJC_IVAR____TtC29GameCenterMatchmakerExtension22MultiplayerModeChiclet_subtitle];
  *v4 = v3;
  v4[1] = v5;

  v6 = sub_1000142C8();
  v7 = &v2[OBJC_IVAR____TtC29GameCenterMatchmakerExtension22MultiplayerModeChiclet_title];
  *v7 = v6;
  v7[1] = v8;

  *&v2[OBJC_IVAR____TtC29GameCenterMatchmakerExtension22MultiplayerModeChiclet_imageName] = xmmword_100016870;

  return v2;
}

void sub_100008A58(void *a1, char a2, char a3, char a4)
{
  v6 = OBJC_IVAR____TtC29GameCenterMatchmakerExtension42MultiplayerModeSelectionChicletCoordinator_multiplayerViewController;
  v7 = *(v4 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension42MultiplayerModeSelectionChicletCoordinator_multiplayerViewController);
  if (!v7)
  {
    __break(1u);
    goto LABEL_7;
  }

  [v7 setCanStartGroupActivities:0];
  v11 = *(v4 + v6);
  if (!v11)
  {
LABEL_7:
    __break(1u);
    return;
  }

  [v11 setOrigin:1];

  sub_10000C8B8(a1, a2 & 1, a3 & 1, a4 & 1, 0, 0);
}

id sub_100008B00()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InviteFriendsModeChiclet();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100008B58(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = [a1 imageWithRenderingMode:2];
    v4 = [objc_allocWithZone(UIImageView) initWithImage:v3];
    [v4 setTintColor:a2];
    v5 = v4;
    [v5 setContentMode:4];

    return v5;
  }

  else
  {
    v7 = objc_allocWithZone(UIImageView);

    return [v7 init];
  }
}

void sub_100008C28(double a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC29GameCenterMatchmakerExtension23BasicChicletCoordinator_metadataViews;
  swift_beginAccess();
  if (sub_100013BB8(*(v1 + v4)) < 1)
  {
    v11 = *(v1 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension23BasicChicletCoordinator_chiclet);
    if (!v11)
    {
      goto LABEL_18;
    }

    v12 = v11;
    sub_10000A3C4();
    goto LABEL_17;
  }

  v5 = OBJC_IVAR____TtC29GameCenterMatchmakerExtension23BasicChicletCoordinator_currentMetadataIndex;
  if ((*(v2 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension23BasicChicletCoordinator_currentMetadataIndex) & 0x8000000000000000) != 0)
  {
    *(v2 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension23BasicChicletCoordinator_currentMetadataIndex) = 0;
    v7 = *(v2 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension23BasicChicletCoordinator_chiclet);
    if (!v7)
    {
      goto LABEL_18;
    }

    v13 = *(v2 + v4);
    sub_100013BCC(0, (v13 & 0xC000000000000001) == 0, v13);
    if ((v13 & 0xC000000000000001) == 0)
    {
      v10 = *(v13 + 32);
      goto LABEL_15;
    }

LABEL_22:
    v12 = v7;

    v14 = sub_1000144F8();

    goto LABEL_16;
  }

  if (sub_100013BB8(*(v2 + v4)) < 2)
  {
    goto LABEL_18;
  }

  v6 = *(v2 + v5);
  v7 = (v6 + 1);
  if (__OFADD__(v6, 1))
  {
    __break(1u);
    goto LABEL_22;
  }

  *(v2 + v5) = v7;
  if (v7 >= sub_100013BB8(*(v2 + v4)))
  {
    *(v2 + v5) = 0;
  }

  v7 = *(v2 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension23BasicChicletCoordinator_chiclet);
  if (v7)
  {
    v8 = *(v2 + v5);
    v9 = *(v2 + v4);
    sub_100013BCC(v8, (v9 & 0xC000000000000001) == 0, v9);
    if ((v9 & 0xC000000000000001) == 0)
    {
      v10 = *(v9 + 8 * v8 + 32);
LABEL_15:
      v12 = v7;
      v14 = v10;
LABEL_16:
      sub_10000A4CC(v14, a1);

LABEL_17:
      goto LABEL_18;
    }

    goto LABEL_22;
  }

LABEL_18:
  if (*(v2 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension23BasicChicletCoordinator_reloadRequested) == 1)
  {
    *(v2 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension23BasicChicletCoordinator_reloadRequested) = 0;
    (*((swift_isaMask & *v2) + 0xF8))(0);
  }
}

uint64_t sub_100008E38()
{
  v1 = OBJC_IVAR____TtC29GameCenterMatchmakerExtension23BasicChicletCoordinator_metadataViews;
  swift_beginAccess();
  v12 = v0;
  v2 = *(v0 + v1);
  result = sub_100013BB8(v2);
  if (!result)
  {
LABEL_13:
    *(v12 + v1) = &_swiftEmptyArrayStorage;
  }

  v4 = result;
  if (result >= 1)
  {
    v5 = *((swift_isaMask & *v0) + 0x130);

    for (i = 0; i != v4; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = sub_1000144F8();
      }

      else
      {
        v7 = *(v2 + 8 * i + 32);
      }

      v8 = v7;
      v9 = v5();
      if (v9)
      {
        v10 = v9;
        sub_100007A80(v8);
        v11 = v10;
        sub_1000142F8();
        if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100014328();
        }

        sub_100014338();
        [v8 removeFromSuperview];
      }
    }

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void sub_100008FEC()
{
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v2 = sub_100014288();
  v3 = sub_10000C478();
  v5 = [v3 v4];

  if (v5)
  {
    v6 = sub_100014318();

    if (*(v6 + 16))
    {
      sub_10000BFE8(v6 + 32, v7);

      type metadata accessor for ChicletMetadata();
      sub_10000C4BC();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
  }
}

id sub_100009100()
{
  sub_10000895C();
  v8.receiver = v0;
  v8.super_class = type metadata accessor for DashboardCollectionViewCell();
  return sub_100008938(v8.super_class, "initWithFrame:", v1, v2, v3, v4, v5, v6, v8);
}

id sub_100009168(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DashboardCollectionViewCell();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_100009234()
{
  result = GKIsXRUIIdiomShouldUsePadUI();
  v1 = 14.0;
  if (result)
  {
    v1 = 16.0;
  }

  qword_100028F38 = *&v1;
  return result;
}

void sub_100009300()
{
  sub_1000088F8();
  swift_unknownObjectWeakAssign();
}

void sub_1000093E0()
{
  sub_1000088F8();
  swift_unknownObjectWeakAssign();
}

void sub_1000094C0()
{
  sub_1000088F8();
  swift_unknownObjectWeakAssign();
}

void sub_1000095A0()
{
  sub_1000088F8();
  swift_unknownObjectWeakAssign();
}

void sub_1000095E4()
{
  v84.receiver = v0;
  v84.super_class = type metadata accessor for ChicletCell();
  objc_msgSendSuper2(&v84, "awakeFromNib");
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v2 = Strong;
  v3 = [objc_opt_self() _gkPreferredFontForTextStyle:UIFontTextStyleBody symbolicTraits:2];
  v4 = sub_10000C478();
  [v4 v5];

  v6 = [objc_allocWithZone(UIVisualEffectView) init];
  sub_100005F5C(0, &qword_100028D50);
  isa = sub_100014308().super.isa;
  v8 = sub_10000C478();
  [v8 v9];

  v10 = sub_100014288();
  v11 = sub_10000C478();
  [v11 v12];

  v13 = *&v0[OBJC_IVAR____TtC29GameCenterMatchmakerExtension11ChicletCell_visualEffectView];
  *&v0[OBJC_IVAR____TtC29GameCenterMatchmakerExtension11ChicletCell_visualEffectView] = v6;
  v14 = v6;

  v15 = sub_10000C4E0();
  v16 = v14;
  [v15 insertSubview:v16 atIndex:0];

  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = [v16 leadingAnchor];

  v18 = sub_10000C4E0();
  v19 = [v18 leadingAnchor];

  v20 = sub_10000C46C();
  v22 = [v20 v21];

  sub_10000C404();
  v23 = [v16 trailingAnchor];

  v24 = sub_10000C4E0();
  v25 = [v24 trailingAnchor];

  v26 = sub_10000C46C();
  v28 = [v26 v27];

  sub_10000C404();
  v29 = [v16 topAnchor];

  v30 = sub_10000C4E0();
  v31 = [v30 topAnchor];

  v32 = sub_10000C46C();
  v34 = [v32 v33];

  sub_10000C404();
  v35 = [v16 bottomAnchor];

  v36 = sub_10000C4E0();
  v37 = [v36 bottomAnchor];

  v38 = sub_10000C46C();
  v40 = [v38 v39];

  sub_10000C404();
  v41 = [v16 layer];

  if (qword_100028710 != -1)
  {
    swift_once();
  }

  [v41 setCornerRadius:*&qword_100028F38];

  v42 = [v16 layer];
  [v42 setCornerCurve:kCACornerCurveContinuous];

  v43 = [v16 layer];
  [v43 setMasksToBounds:1];

  v44 = [objc_allocWithZone(UIVisualEffect) init];
  v45 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v44];

  v46 = OBJC_IVAR____TtC29GameCenterMatchmakerExtension11ChicletCell_vibrancyView;
  v47 = *&v0[OBJC_IVAR____TtC29GameCenterMatchmakerExtension11ChicletCell_vibrancyView];
  *&v0[OBJC_IVAR____TtC29GameCenterMatchmakerExtension11ChicletCell_vibrancyView] = v45;
  v48 = v45;

  v49 = swift_unknownObjectWeakLoadStrong();
  if (!v49)
  {
    goto LABEL_17;
  }

  if (!v48)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v50 = v49;
  [v49 addSubview:v48];

  v51 = *&v0[v46];
  if (!v51)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v51 setTranslatesAutoresizingMaskIntoConstraints:0];
  v52 = *&v0[v46];
  if (!v52)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v53 = [v52 leadingAnchor];
  v54 = sub_10000C504();
  if (!v54)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v55 = v54;
  v56 = [v54 leadingAnchor];

  v57 = sub_10000C46C();
  v59 = [v57 v58];

  sub_10000C404();
  v60 = *&v0[v46];
  if (!v60)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v61 = [v60 trailingAnchor];
  v62 = sub_10000C504();
  if (!v62)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v63 = v62;
  v64 = [v62 trailingAnchor];

  v65 = sub_10000C46C();
  v67 = [v65 v66];

  sub_10000C404();
  v68 = *&v0[v46];
  if (!v68)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v69 = [v68 topAnchor];
  v70 = sub_10000C504();
  if (!v70)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v71 = v70;
  v72 = [v70 topAnchor];

  v73 = sub_10000C46C();
  v75 = [v73 v74];

  sub_10000C404();
  v76 = *&v0[v46];
  if (!v76)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v77 = [v76 bottomAnchor];
  v78 = sub_10000C504();
  if (v78)
  {
    v79 = v78;
    v80 = [v78 bottomAnchor];

    v81 = sub_10000C46C();
    v83 = [v81 v82];

    sub_10000C404();
    [v0 _gkDisableDefaultFocusEffect];

    return;
  }

LABEL_27:
  __break(1u);
}

void sub_100009D40(uint64_t a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for ChicletCell();
  objc_msgSendSuper2(&v12, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  LOBYTE(v3) = sub_1000143E8();
  if ((v3 & 1) == 0)
  {
    v5 = [v1 traitCollection];
    v6 = [v5 horizontalSizeClass];

    if (v6 == 1 && (v7 = [v1 traitCollection], v8 = objc_msgSend(v7, "verticalSizeClass"), v7, v8 == 2))
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v10 = Strong;
        [Strong setTextAlignment:0];
LABEL_8:

        return;
      }
    }

    else
    {
      v11 = swift_unknownObjectWeakLoadStrong();
      if (v11)
      {
        v10 = v11;
        [v11 setTextAlignment:1];
        goto LABEL_8;
      }

      __break(1u);
    }

    __break(1u);
  }
}

void sub_100009F08(uint64_t a1, uint64_t a2, id a3)
{
  [a3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = OBJC_IVAR____TtC29GameCenterMatchmakerExtension11ChicletCell_vibrancyView;
  v6 = *(v3 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension11ChicletCell_vibrancyView);
  if (!v6)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v7 = [v6 contentView];
  v8 = [v7 subviews];

  sub_100005F5C(0, &qword_100028950);
  v9 = sub_100014318();

  v10 = sub_100013BB8(v9);
  for (i = 0; v10 != i; ++i)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = sub_1000144F8();
    }

    else
    {
      if (i >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v12 = *(v9 + 8 * i + 32);
    }

    v13 = v12;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    [v12 removeFromSuperview];
  }

  v14 = *(v3 + v5);
  if (!v14)
  {
    goto LABEL_29;
  }

  v15 = [v14 contentView];
  [v15 addSubview:a3];

  v16 = *(v3 + v5);
  if (*(v3 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension11ChicletCell_vibrantIcon) == 1)
  {
    if (!v16)
    {
      goto LABEL_37;
    }

    v17 = objc_opt_self();
    v18 = v16;
    v19 = [v17 _gkGameLayerContentVibrancyEffect];
  }

  else
  {
    if (!v16)
    {
      goto LABEL_38;
    }

    v20 = objc_allocWithZone(UIVisualEffect);
    v18 = v16;
    v19 = [v20 init];
  }

  v21 = v19;
  [v18 setEffect:v19];

  v22 = *(v3 + v5);
  if (!v22)
  {
    goto LABEL_30;
  }

  v23 = v22;
  v24 = sub_100014288();
  [v23 _setGroupName:v24];

  v25 = [a3 centerXAnchor];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_31;
  }

  v27 = Strong;
  v28 = [Strong centerXAnchor];

  v29 = sub_10000C4A0();
  sub_10000C484();

  v30 = [a3 centerYAnchor];
  v31 = swift_unknownObjectWeakLoadStrong();
  if (!v31)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v32 = v31;
  v33 = [v31 centerYAnchor];

  v34 = sub_10000C4A0();
  sub_10000C484();

  v35 = [a3 heightAnchor];
  v36 = swift_unknownObjectWeakLoadStrong();
  if (!v36)
  {
    goto LABEL_33;
  }

  v37 = v36;
  v38 = [v36 heightAnchor];

  v39 = sub_10000C4A0();
  sub_10000C484();

  v40 = [a3 widthAnchor];
  v41 = swift_unknownObjectWeakLoadStrong();
  if (!v41)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v42 = v41;
  v43 = [v41 widthAnchor];

  v44 = [v40 constraintEqualToAnchor:v43];
  [v44 setActive:1];

  sub_10000A3C4();
  v45 = swift_unknownObjectWeakLoadStrong();
  if (!v45)
  {
    goto LABEL_35;
  }

  v46 = v45;
  sub_10000C2A8(a1, a2, v45);

  v47 = swift_unknownObjectWeakLoadStrong();
  if (v47)
  {
    v48 = v47;
    sub_10000C300(a1, a2, v47);

    return;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
}

uint64_t sub_10000A3C4()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    goto LABEL_13;
  }

  v1 = result;
  v2 = [result subviews];

  sub_100005F5C(0, &qword_100028950);
  v3 = sub_100014318();

  result = sub_100013BB8(v3);
  if (result)
  {
    v4 = result;
    if (result >= 1)
    {
      for (i = 0; i != v4; ++i)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = sub_1000144F8();
        }

        else
        {
          v6 = *(v3 + 8 * i + 32);
        }

        v7 = v6;
        [v6 removeFromSuperview];
      }

      goto LABEL_9;
    }

    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

LABEL_9:
}

id sub_10000A4CC(void *a1, double a2)
{
  sub_10000C4F8();
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  v6 = v2;
  v7 = a1;
  sub_10000A830(sub_10000C29C, v5, a2);

  return [v6 accessibilityPresentMetadata];
}

void sub_10000A56C(double a1, uint64_t a2, uint64_t a3, void *a4)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_8;
  }

  v7 = Strong;
  [Strong addSubview:a4];

  [a4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [a4 topAnchor];
  v9 = swift_unknownObjectWeakLoadStrong();
  if (!v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10 = v9;
  v11 = [v9 topAnchor];

  v12 = [v8 constraintLessThanOrEqualToAnchor:v11];
  [v12 setActive:1];

  v13 = [a4 bottomAnchor];
  v14 = swift_unknownObjectWeakLoadStrong();
  if (!v14)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v15 = v14;
  v16 = [v14 bottomAnchor];

  v17 = [v13 constraintEqualToAnchor:v16];
  [v17 setActive:1];

  v18 = [a4 leftAnchor];
  v19 = swift_unknownObjectWeakLoadStrong();
  if (!v19)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v20 = v19;
  v21 = [v19 leftAnchor];

  v22 = [v18 constraintEqualToAnchor:v21];
  [v22 setActive:1];

  v23 = [a4 rightAnchor];
  v24 = swift_unknownObjectWeakLoadStrong();
  if (v24)
  {
    v25 = v24;
    v26 = [v24 rightAnchor];

    v27 = [v23 constraintEqualToAnchor:v26];
    [v27 setActive:1];

    sub_10000AD24(a4, 1, nullsub_2, 0, a1);
    return;
  }

LABEL_11:
  __break(1u);
}

void *sub_10000A830(uint64_t a1, uint64_t a2, double a3)
{
  v46 = a1;
  v47 = a2;
  sub_100014228();
  sub_10000C420();
  v44 = v5;
  v45 = v4;
  (__chkstk_darwin)();
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100014248();
  sub_10000C420();
  v42 = v9;
  v43 = v8;
  (__chkstk_darwin)();
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100014268();
  sub_10000C420();
  v40 = v13;
  v41 = v12;
  v14 = (__chkstk_darwin)();
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v40 - v17;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v20 = result;
  v21 = [result subviews];

  sub_100005F5C(0, &qword_100028950);
  v22 = sub_100014318();

  v23 = sub_100013BB8(v22);

  if (v23 < 1)
  {
    sub_100005F5C(0, &qword_100028880);
    v33 = sub_1000143B8();
    sub_100014258();
    sub_100014278();
    v34 = v41;
    v40 = *(v40 + 8);
    (v40)(v16, v41);
    v35 = swift_allocObject();
    v36 = v47;
    *(v35 + 16) = v46;
    *(v35 + 24) = v36;
    aBlock[4] = sub_10000C100;
    aBlock[5] = v35;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    sub_10000C3CC();
    aBlock[2] = v37;
    aBlock[3] = &unk_100020D30;
    v38 = _Block_copy(aBlock);

    sub_100014238();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_10000C12C();
    sub_100005BC4(&qword_100028870);
    sub_10000C184();
    v39 = v45;
    sub_100014448();
    sub_100014398();
    _Block_release(v38);

    (*(v44 + 8))(v7, v39);
    (*(v42 + 8))(v11, v43);
    return (v40)(v18, v34);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    goto LABEL_12;
  }

  v24 = result;
  v25 = [result subviews];

  v26 = sub_100014318();
  sub_100013BCC(0, (v26 & 0xC000000000000001) == 0, v26);
  if ((v26 & 0xC000000000000001) != 0)
  {
    v27 = sub_1000144F8();
  }

  else
  {
    v27 = *(v26 + 32);
  }

  v28 = v27;
  v30 = v46;
  v29 = v47;

  sub_10000C4F8();
  v31 = swift_allocObject();
  v31[2] = v28;
  v31[3] = v30;
  v31[4] = v29;
  v32 = v28;

  sub_10000AD24(v32, 0, sub_10000C224, v31, a3);
}

void sub_10000AD24(id a1, char a2, uint64_t a3, uint64_t a4, double a5)
{
  if (a2)
  {
    v10 = [a1 layer];
    [v10 setOpacity:0.0];

    v11 = [a1 layer];
    CGAffineTransformMakeScale(&v18, 0.9, 0.9);
    [v11 setAffineTransform:&v18];
  }

  v12 = objc_opt_self();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2 & 1;
  *&v18.tx = sub_10000C07C;
  *&v18.ty = v13;
  *&v18.a = _NSConcreteStackBlock;
  *&v18.b = 1107296256;
  *&v18.c = sub_10000574C;
  *&v18.d = &unk_100020C90;
  v14 = _Block_copy(&v18);
  v15 = a1;

  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  *&v18.tx = sub_10000C0D8;
  *&v18.ty = v16;
  *&v18.a = _NSConcreteStackBlock;
  *&v18.b = 1107296256;
  *&v18.c = sub_10000B044;
  *&v18.d = &unk_100020CE0;
  v17 = _Block_copy(&v18);

  [v12 animateWithDuration:0 delay:v14 options:v17 animations:0.15 completion:a5];
  _Block_release(v17);
  _Block_release(v14);
}

void sub_10000AF60(void *a1, char a2)
{
  v4 = [a1 layer];
  v5 = v4;
  v6 = a2 & 1;
  v7 = 0.0;
  if (a2)
  {
    *&v7 = 1.0;
  }

  [v4 setOpacity:v7];

  v8 = [a1 layer];
  if (v6)
  {
    v9 = xmmword_1000168E0;
    v10 = xmmword_1000168F0;
    v11 = 0uLL;
  }

  else
  {
    CGAffineTransformMakeScale(&v12, 0.9, 0.9);
    v10 = *&v12.a;
    v9 = *&v12.c;
    v11 = *&v12.tx;
  }

  *&v12.a = v10;
  *&v12.c = v9;
  *&v12.tx = v11;
  [v8 setAffineTransform:&v12];
}

uint64_t sub_10000B044(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_10000B098(uint64_t a1, uint64_t a2)
{
  v11.receiver = v2;
  v11.super_class = type metadata accessor for ChicletCell();
  objc_msgSendSuper2(&v11, "didUpdateFocusInContext:withAnimationCoordinator:", a1, a2);
  *(swift_allocObject() + 16) = v2;
  sub_10000C3E0();
  v10[1] = 1107296256;
  sub_10000C3CC();
  v10[2] = v5;
  v10[3] = &unk_100020E20;
  v6 = _Block_copy(v10);
  v7 = v2;

  v8 = sub_10000C478();
  [v8 v9];
  _Block_release(v6);
}

void sub_10000B16C(char *a1)
{
  if ([a1 isFocused])
  {
    v12 = *&a1[OBJC_IVAR____TtC29GameCenterMatchmakerExtension11ChicletCell_customBackgroundBlur];
    v2 = objc_opt_self();

    v3 = [v2 whiteColor];
    v4 = [v3 colorWithAlphaComponent:0.22];

    v5 = [objc_opt_self() effectCompositingColor:v4];
    if (!v5)
    {
      __break(1u);
      return;
    }

    sub_1000142F8();
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100014328();
    }

    sub_100014338();
    v6 = *&a1[OBJC_IVAR____TtC29GameCenterMatchmakerExtension11ChicletCell_visualEffectView];
    if (v6)
    {
      sub_100005F5C(0, &qword_100028D50);
      v7 = v6;
      isa = sub_100014308().super.isa;

      [v7 setBackgroundEffects:isa];
    }

    else
    {
    }
  }

  else
  {
    v9 = *&a1[OBJC_IVAR____TtC29GameCenterMatchmakerExtension11ChicletCell_visualEffectView];
    if (v9)
    {
      sub_100005F5C(0, &qword_100028D50);
      v10 = v9;
      v11 = sub_100014308().super.isa;
      [v10 setBackgroundEffects:v11];
    }
  }

  [a1 layoutIfNeeded];
}

id sub_10000B444()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ChicletCell();
  return objc_msgSendSuper2(&v2, "isHighlighted");
}

void sub_10000B4CC(char a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for ChicletCell();
  objc_msgSendSuper2(&v9, "setHighlighted:", a1 & 1);
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  sub_10000C3E0();
  v8[1] = 1107296256;
  sub_10000C3CC();
  v8[2] = v5;
  v8[3] = &unk_100020DD0;
  v6 = _Block_copy(v8);
  v7 = v1;

  [v3 animateWithDuration:v6 animations:0.1];
  _Block_release(v6);
}

void sub_10000B5B4(void *a1, char a2)
{
  v3 = [a1 layer];
  v5 = v3;
  LODWORD(v4) = 1.0;
  if (a2)
  {
    *&v4 = 0.5;
  }

  [v3 setOpacity:v4];
}

id sub_10000B6A8()
{
  sub_10000895C();
  sub_100008904();
  sub_100008904();
  sub_100008904();
  sub_100008904();
  v1 = OBJC_IVAR____TtC29GameCenterMatchmakerExtension11ChicletCell_customBackgroundBlur;
  v2 = [objc_opt_self() _gkGameLayerModuleVisualEffect];
  sub_100005F5C(0, &qword_100028D50);
  v3 = sub_100014318();

  *&v0[v1] = v3;
  sub_100008904();
  *&v0[OBJC_IVAR____TtC29GameCenterMatchmakerExtension11ChicletCell_visualEffectView] = 0;
  *&v0[OBJC_IVAR____TtC29GameCenterMatchmakerExtension11ChicletCell_transitionDuration] = 0x3FC3333333333333;
  *&v0[OBJC_IVAR____TtC29GameCenterMatchmakerExtension11ChicletCell_vibrancyView] = 0;
  v0[OBJC_IVAR____TtC29GameCenterMatchmakerExtension11ChicletCell_vibrantIcon] = 1;
  v11.receiver = v0;
  v11.super_class = sub_10000C434(OBJC_IVAR____TtC29GameCenterMatchmakerExtension11ChicletCell_visualEffectGroupName);
  return sub_100008938(v11.super_class, "initWithFrame:", v4, v5, v6, v7, v8, v9, v11);
}

id sub_10000B7FC(void *a1)
{
  sub_100008904();
  sub_100008904();
  sub_100008904();
  sub_100008904();
  v3 = OBJC_IVAR____TtC29GameCenterMatchmakerExtension11ChicletCell_customBackgroundBlur;
  v4 = [objc_opt_self() _gkGameLayerModuleVisualEffect];
  sub_100005F5C(0, &qword_100028D50);
  v5 = sub_100014318();

  *&v1[v3] = v5;
  sub_100008904();
  *&v1[OBJC_IVAR____TtC29GameCenterMatchmakerExtension11ChicletCell_visualEffectView] = 0;
  *&v1[OBJC_IVAR____TtC29GameCenterMatchmakerExtension11ChicletCell_transitionDuration] = 0x3FC3333333333333;
  *&v1[OBJC_IVAR____TtC29GameCenterMatchmakerExtension11ChicletCell_vibrancyView] = 0;
  v1[OBJC_IVAR____TtC29GameCenterMatchmakerExtension11ChicletCell_vibrantIcon] = 1;
  v8.receiver = v1;
  v8.super_class = sub_10000C434(OBJC_IVAR____TtC29GameCenterMatchmakerExtension11ChicletCell_visualEffectGroupName);
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

uint64_t sub_10000B970()
{
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();

  swift_unknownObjectWeakDestroy();
}

void sub_10000BB20(void *a1)
{
  swift_unknownObjectWeakAssign();
  *(v1 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension23BasicChicletCoordinator_currentMetadataIndex) = -1;
  v4 = *(v1 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension23BasicChicletCoordinator_chiclet);
  *(v1 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension23BasicChicletCoordinator_chiclet) = a1;
  v3 = a1;
}

void sub_10000BB98()
{
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v2 = [objc_opt_self() currentTraitCollection];
  v3 = [v2 preferredContentSizeCategory];

  sub_1000143E8();
  v4 = sub_100014288();

  v5 = sub_10000C478();
  v7 = [v5 v6];

  if (v7)
  {
    v8 = sub_100014318();

    if (*(v8 + 16))
    {
      sub_10000BFE8(v8 + 32, v9);

      type metadata accessor for ChicletMetadata();
      sub_10000C4BC();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
  }
}

id sub_10000BD20()
{
  *&v0[OBJC_IVAR____TtC29GameCenterMatchmakerExtension23BasicChicletCoordinator_metadataViews] = &_swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC29GameCenterMatchmakerExtension23BasicChicletCoordinator_currentMetadataIndex] = -1;
  v0[OBJC_IVAR____TtC29GameCenterMatchmakerExtension23BasicChicletCoordinator_initialAppearance] = 1;
  *&v0[OBJC_IVAR____TtC29GameCenterMatchmakerExtension23BasicChicletCoordinator_chiclet] = 0;
  v0[OBJC_IVAR____TtC29GameCenterMatchmakerExtension23BasicChicletCoordinator_reloadRequested] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BasicChicletCoordinator();
  return objc_msgSendSuper2(&v2, "init");
}

char *sub_10000BE4C(void *a1)
{
  *&v1[OBJC_IVAR____TtC29GameCenterMatchmakerExtension42MultiplayerModeSelectionChicletCoordinator_multiplayerViewController] = 0;
  v3 = &v1[OBJC_IVAR____TtC29GameCenterMatchmakerExtension42MultiplayerModeSelectionChicletCoordinator_originalMatchmakingMode];
  *v3 = 0;
  v3[8] = 1;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for MultiplayerModeSelectionChicletCoordinator();
  v4 = objc_msgSendSuper2(&v11, "init");
  v5 = *&v4[OBJC_IVAR____TtC29GameCenterMatchmakerExtension42MultiplayerModeSelectionChicletCoordinator_multiplayerViewController];
  *&v4[OBJC_IVAR____TtC29GameCenterMatchmakerExtension42MultiplayerModeSelectionChicletCoordinator_multiplayerViewController] = a1;
  v6 = a1;
  v7 = v4;

  v8 = [v6 matchmakingMode];
  v9 = &v7[OBJC_IVAR____TtC29GameCenterMatchmakerExtension42MultiplayerModeSelectionChicletCoordinator_originalMatchmakingMode];
  *v9 = v8;
  v9[8] = 0;

  return v7;
}

id sub_10000BF7C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10000BFE8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000C044()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10000C088(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000C0A0()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10000C12C()
{
  result = qword_100028868;
  if (!qword_100028868)
  {
    sub_100014228();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028868);
  }

  return result;
}

unint64_t sub_10000C184()
{
  result = qword_100028878;
  if (!qword_100028878)
  {
    sub_100005EB0(&qword_100028870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028878);
  }

  return result;
}

uint64_t sub_10000C1E8()
{

  sub_10000C4F8();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10000C224()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) removeFromSuperview];
  return v1(1);
}

uint64_t sub_10000C260()
{
  sub_10000C4F8();

  return _swift_deallocObject(v1, v2, v3);
}

void sub_10000C2A8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_100014288();
  [a3 setText:v4];
}

void sub_10000C300(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_100014288();
  [a3 setAccessibilityLabel:v4];
}

uint64_t sub_10000C364()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10000C404()
{
  v3 = *(v1 + 4048);

  return [v0 v3];
}

uint64_t sub_10000C434@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  strcpy(v3, "gameLayerGroup");
  v3[15] = -18;

  return type metadata accessor for ChicletCell();
}

id sub_10000C484()
{
  v3 = *(v1 + 4048);

  return [v0 v3];
}

id sub_10000C4A0()
{
  v4 = *(v2 + 208);

  return [v0 v4];
}

uint64_t sub_10000C4BC()
{

  return swift_dynamicCast();
}

id sub_10000C4E0()
{
  v3 = *(v1 + 232);

  return [v0 v3];
}

uint64_t sub_10000C504()
{

  return swift_unknownObjectWeakLoadStrong();
}

id sub_10000C51C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_100014288();

  v5 = [swift_getObjCClassFromMetadata() systemImageNamed:v4 withConfiguration:a3];

  return v5;
}

char *sub_10000C58C(void *a1)
{
  *(v1 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension22MultiplayerModeChiclet_navigateTofriendsList) = 0;
  *(v1 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension22MultiplayerModeChiclet_primaryMetadata) = 0;
  v2 = (v1 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension22MultiplayerModeChiclet_subtitle);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = (v1 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension22MultiplayerModeChiclet_title);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = (v1 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension22MultiplayerModeChiclet_imageName);
  *v4 = 0;
  v4[1] = 0;
  *(v1 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension22MultiplayerModeChiclet____lazy_storage___iconImage) = 1;
  return sub_10000BE4C(a1);
}

void sub_10000C5EC(char a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC29GameCenterMatchmakerExtension22MultiplayerModeChiclet_primaryMetadata;
  v5 = *(v1 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension22MultiplayerModeChiclet_primaryMetadata);
  if (!v5)
  {
    sub_100008FEC();
    if (!v6)
    {
      return;
    }

    v7 = v6;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_19;
    }

    v9 = Strong;
    v10 = [Strong layer];

    v11 = swift_unknownObjectWeakLoadStrong();
    if (!v11)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v12 = v11;
    [v11 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v38.origin.x = v14;
    v38.origin.y = v16;
    v38.size.width = v18;
    v38.size.height = v20;
    [v10 setCornerRadius:CGRectGetWidth(v38) * 0.5];

    v21 = swift_unknownObjectWeakLoadStrong();
    if (!v21)
    {
LABEL_21:
      __break(1u);
      return;
    }

    v22 = v21;
    [v21 setClipsToBounds:1];

    v23 = *(v2 + v4);
    *(v2 + v4) = v7;

    v5 = *(v2 + v4);
    if (!v5)
    {
      goto LABEL_16;
    }
  }

  v24 = *(v2 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension22MultiplayerModeChiclet_subtitle);
  v25 = *(v2 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension22MultiplayerModeChiclet_subtitle + 8);
  v26 = v5;

  sub_100007900(0, 0xE000000000000000, 0, 0xE000000000000000, v24, v25);

  v27 = *(v2 + v4);
  if (!v27)
  {
    goto LABEL_16;
  }

  v28 = v27;

  v29 = sub_10000D2BC();
  sub_100008030(v29, v30);

  if (!*(v2 + v4))
  {
    goto LABEL_16;
  }

  v31 = swift_unknownObjectWeakLoadStrong();
  if (!v31)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v32 = v31;
  [v31 setNumberOfLines:3];

  if (!*(v2 + v4))
  {
    goto LABEL_16;
  }

  v33 = swift_unknownObjectWeakLoadStrong();
  if (!v33)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v34 = v33;
  [v33 setHidden:1];

  v35 = *(v2 + v4);
  if (!v35)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v36 = OBJC_IVAR____TtC29GameCenterMatchmakerExtension23BasicChicletCoordinator_metadataViews;
  swift_beginAccess();
  v37 = v35;
  sub_1000142F8();
  sub_10000D228(*((*(v2 + v36) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_100014338();
  swift_endAccess();
  if (a1)
  {
    sub_100008C28(0.0);
  }
}

void sub_10000C8B8(void *a1, char a2, uint64_t a3, char a4, void (*a5)(uint64_t), uint64_t a6)
{
  v36 = a6;
  v37 = a5;
  v10 = sub_100014228();
  sub_10000C420();
  v35 = v11;
  __chkstk_darwin(v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100014248();
  sub_10000C420();
  v17 = v16;
  __chkstk_darwin(v18);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtC29GameCenterMatchmakerExtension42MultiplayerModeSelectionChicletCoordinator_multiplayerViewController;
  v22 = *(v6 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension42MultiplayerModeSelectionChicletCoordinator_multiplayerViewController);
  if (!v22)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (*(v6 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension42MultiplayerModeSelectionChicletCoordinator_originalMatchmakingMode + 8))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  [v22 setMatchmakingMode:*(v6 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension42MultiplayerModeSelectionChicletCoordinator_originalMatchmakingMode)];
  v23 = *(v6 + v21);
  if (!v23)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v24 = v23;
  [v24 setShowNavigationBar:a2 & 1];
  if (a2)
  {
    v25 = [a1 navigationController];
    if (v25)
    {
      v26 = v25;
      [v25 pushViewController:v24 animated:1];
    }
  }

  else
  {
    sub_100005F5C(0, &qword_100028880);
    v27 = sub_1000143B8();
    v28 = swift_allocObject();
    *(v28 + 16) = a1;
    *(v28 + 24) = v24;
    *(v28 + 32) = a4 & 1;
    aBlock[4] = sub_10000D1E0;
    aBlock[5] = v28;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000574C;
    aBlock[3] = &unk_100020E70;
    v29 = _Block_copy(aBlock);
    v30 = v24;
    v31 = a1;

    sub_100014238();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_10000C12C();
    sub_100005BC4(&qword_100028870);
    sub_10000C184();
    sub_100014448();
    sub_1000143C8();
    _Block_release(v29);

    (*(v35 + 8))(v14, v10);
    (*(v17 + 8))(v20, v15);
  }

  v32 = v37;
  if (v37)
  {

    v32(v33);

    sub_10000D204(v32);
  }

  else
  {
  }
}

void sub_10000CC2C(void *a1)
{
  sub_10000BB20(a1);
  v2 = sub_10000CD30();
  v3 = [objc_opt_self() labelColor];
  v10 = sub_100008B58(v2, v3);

  v4 = sub_10000D2BC();
  sub_100009F08(v4, v5, v10);

  v6 = sub_10000D2BC();
  sub_10000D254(v6, v7, v10);

  v8 = sub_10000D2BC();
  sub_10000D254(v8, v9, a1);
  sub_100008C28(0.0);
}

id sub_10000CD30()
{
  v1 = OBJC_IVAR____TtC29GameCenterMatchmakerExtension22MultiplayerModeChiclet____lazy_storage___iconImage;
  v2 = *(v0 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension22MultiplayerModeChiclet____lazy_storage___iconImage);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_10000CDA0(v0);
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_10000D190(v4);
  }

  sub_10000D218(v2);
  return v3;
}

id sub_10000CDA0(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension22MultiplayerModeChiclet_imageName + 8);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension22MultiplayerModeChiclet_imageName);
  v3 = objc_opt_self();

  v4 = [v3 tintColor];
  v5 = objc_opt_self();
  v6 = [v5 configurationWithHierarchicalColor:v4];

  sub_100005F5C(0, &qword_100028B10);
  v7 = v6;
  v8 = sub_10000C51C(v2, v1, v6);
  if (!GKIsXRUIIdiom())
  {
    if (v8)
    {
      v19 = v8;
      v20 = [v5 configurationWithTextStyle:UIFontTextStyleTitle1 scale:3];
      v18 = [v19 imageWithConfiguration:v20];

      goto LABEL_9;
    }

    goto LABEL_11;
  }

  ShouldUsePhoneUI = GKIsXRUIIdiomShouldUsePhoneUI();
  v10 = &UIFontTextStyleTitle1;
  if (!ShouldUsePhoneUI)
  {
    v10 = &UIFontTextStyleExtraLargeTitle;
  }

  v11 = *v10;
  v12 = v11;
  if (!v8)
  {

LABEL_11:
    return 0;
  }

  v13 = v8;
  v14 = [v5 configurationWithTextStyle:v12 scale:3];
  v15 = [v13 imageWithConfiguration:v14];

  v16 = [v3 labelColor];
  v17 = [v5 configurationWithHierarchicalColor:v16];

  v18 = [v15 imageByApplyingSymbolConfiguration:v17];
LABEL_9:

  return v18;
}

void sub_10000D034()
{

  v1 = *(v0 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension22MultiplayerModeChiclet____lazy_storage___iconImage);

  sub_10000D190(v1);
}

id sub_10000D0B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MultiplayerModeChiclet();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10000D190(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_10000D1A0()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_10000D1EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000D204(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id sub_10000D218(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_10000D228(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_100014328();
  }

  return result;
}

void sub_10000D254(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_100014288();

  [a3 setAccessibilityLabel:v4];
}

char *sub_10000D2C8(void *a1)
{
  v1 = a1;
  v2 = sub_10000C58C(v1);
  v3 = sub_1000142C8();
  v4 = &v2[OBJC_IVAR____TtC29GameCenterMatchmakerExtension22MultiplayerModeChiclet_subtitle];
  *v4 = v3;
  v4[1] = v5;

  v6 = sub_1000142C8();
  v7 = &v2[OBJC_IVAR____TtC29GameCenterMatchmakerExtension22MultiplayerModeChiclet_title];
  *v7 = v6;
  v7[1] = v8;

  *&v2[OBJC_IVAR____TtC29GameCenterMatchmakerExtension22MultiplayerModeChiclet_imageName] = xmmword_1000169F0;

  return v2;
}

id sub_10000D3B0(void *a1, char a2, char a3, char a4)
{
  v6 = OBJC_IVAR____TtC29GameCenterMatchmakerExtension42MultiplayerModeSelectionChicletCoordinator_multiplayerViewController;
  result = *(v4 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension42MultiplayerModeSelectionChicletCoordinator_multiplayerViewController);
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  [result setCanStartGroupActivities:0];
  result = *(v4 + v6);
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  [result setOrigin:2];
  sub_10000C8B8(a1, a2 & 1, a3 & 1, a4 & 1, 0, 0);
  result = *(v4 + v6);
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  return [result setMatchmakingMode:2];
}

id sub_10000D474()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QuickMatchModeChiclet();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000D4D0(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_100014538();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

id MultiplayerModeSelectionShimViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_100014288();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for MultiplayerModeSelectionShimViewController();
  v6 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", v5, a3);

  return v6;
}

id MultiplayerModeSelectionShimViewController.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MultiplayerModeSelectionShimViewController();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id MultiplayerModeSelectionShimViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MultiplayerModeSelectionShimViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t MultiplayerModeSelectionViewController.skipModeSelection.getter()
{
  v1 = OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_skipModeSelection;
  sub_100013C20();
  return *(v0 + v1);
}

uint64_t MultiplayerModeSelectionViewController.skipModeSelection.setter(char a1)
{
  v3 = OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_skipModeSelection;
  result = sub_100013E70();
  *(v1 + v3) = a1;
  return result;
}

void *sub_10000D7A0(size_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t MultiplayerModeSelectionViewController.originalMatchmakingMode.getter()
{
  v1 = OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_originalMatchmakingMode;
  sub_100013C20();
  return *(v0 + v1);
}

void MultiplayerModeSelectionViewController.originalMatchmakingMode.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_originalMatchmakingMode;
  sub_100013E70();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_10000D8CC(v4);
}

void sub_10000D8CC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000141F8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_originalMatchmakingMode;
  swift_beginAccess();
  if (*&v2[v8] != a1)
  {
    sub_1000141C8();
    v9 = sub_100014378();
    v10 = v2;
    v11 = sub_1000141E8();
    if (os_log_type_enabled(v11, v9))
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = *&v2[v8];

      _os_log_impl(&_mh_execute_header, v11, v9, "MultiplayerModeSelectionViewController did set original matchmaking mode: %ld", v12, 0xCu);
    }

    else
    {

      v11 = v10;
    }

    (*(v5 + 8))(v7, v4);
    sub_100010254();
  }
}

void (*MultiplayerModeSelectionViewController.originalMatchmakingMode.modify(void *a1))(uint64_t a1)
{
  v3 = sub_10000D7A0(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  v4 = OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_originalMatchmakingMode;
  sub_100013D50();
  v3[3] = *(v1 + v4);
  return sub_10000DAE8;
}

void sub_10000DAE8(uint64_t a1)
{
  v1 = *a1;
  MultiplayerModeSelectionViewController.originalMatchmakingMode.setter(*(*a1 + 24));

  free(v1);
}

uint64_t MultiplayerModeSelectionViewController.isEligibleForGroupSession.getter()
{
  v1 = OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_isEligibleForGroupSession;
  sub_100013C20();
  return *(v0 + v1);
}

void (*MultiplayerModeSelectionViewController.isEligibleForGroupSession.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000D7A0(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_isEligibleForGroupSession;
  sub_100013D50();
  *(v3 + 32) = *(v1 + v4);
  return sub_10000DC58;
}

uint64_t MultiplayerModeSelectionViewController.isEntitledToUseGroupActivities.getter()
{
  v1 = OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_isEntitledToUseGroupActivities;
  sub_100013C20();
  return *(v0 + v1);
}

void sub_10000DD2C(char a1, uint64_t *a2)
{
  v5 = *a2;
  sub_100013E70();
  v6 = *(v2 + v5);
  *(v2 + v5) = a1;
  sub_10000DD7C(v6, a2);
}

void sub_10000DD7C(char a1, uint64_t *a2)
{
  v3 = a1 & 1;
  v4 = *a2;
  sub_100013C6C();
  if (*(v2 + v4) != v3)
  {
    sub_100010254();
  }
}

void (*MultiplayerModeSelectionViewController.isEntitledToUseGroupActivities.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000D7A0(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_isEntitledToUseGroupActivities;
  sub_100013D50();
  *(v3 + 32) = *(v1 + v4);
  return sub_10000DE40;
}

void sub_10000DE58(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v3 = *a1;
  a3(*(*a1 + 32));

  free(v3);
}

Swift::Void __swiftcall MultiplayerModeSelectionViewController.launchSharePlayChiclet()()
{
  v1 = sub_1000141F8();
  sub_10000C420();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_sharePlayModeChiclet);
  if (v7)
  {
    v7[OBJC_IVAR____TtC29GameCenterMatchmakerExtension20SharePlayModeChiclet_isEligibleForGroupSession] = 1;
    v7[OBJC_IVAR____TtC29GameCenterMatchmakerExtension20SharePlayModeChiclet_startStagedActivity] = 1;
    v17 = v7;
    sub_100013C0C();
    sub_1000057FC(v8, v9, v10, v11);
    v12 = v17;
  }

  else
  {
    v13 = sub_100014368();
    sub_1000141C8();
    v14 = sub_1000141E8();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = sub_100013F08();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1000132C8(0xD00000000000001BLL, 0x800000010001AA90, &v18);
      _os_log_impl(&_mh_execute_header, v14, v13, "SharePlay - %s", v15, 0xCu);
      sub_100005D18(v16);
      sub_100013DFC();
      sub_100013DFC();
    }

    (*(v3 + 8))(v6, v1);
  }
}

Swift::Void __swiftcall MultiplayerModeSelectionViewController.showLobbyWithOriginalRequest()()
{
  sub_100013F90();
  v2 = sub_1000141F8();
  sub_10000C420();
  v4 = v3;
  v6 = __chkstk_darwin(v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v32 - v9;
  v11 = OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_originalMatchmakingMode;
  sub_100013D50();
  if (*&v0[v11] == 2)
  {
    v12 = *&v0[OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_quickMatchModeChiclet];
    if (v12)
    {
      v13 = v12;
      v14 = sub_100013D74();
      sub_10000D3B0(v14, v15, v16, v17);
LABEL_6:

      goto LABEL_15;
    }

    v24 = sub_100014368();
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_1000144E8(70);
    v35._object = 0x800000010001AB00;
    v35._countAndFlagsBits = 0xD000000000000044;
    sub_1000142D8(v35);
    v32 = *&v0[v11];
    type metadata accessor for GKMatchmakingMode(0);
    sub_100014518();
    sub_1000141C8();
    v25 = sub_1000141E8();
    if (os_log_type_enabled(v25, v24))
    {
      sub_100013F08();
      v26 = sub_100013EEC();
      v33 = v26;
      v27 = sub_100013FE0(4.8149e-34);

      *(v1 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v25, v24, "SharePlay - %s", v1, 0xCu);
      sub_100005D18(v26);
      sub_100013DFC();
      sub_100013DFC();
    }

    else
    {
    }

    (*(v4 + 8))(v10, v2);
  }

  else
  {
    v18 = *&v0[OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_inviteFriendsModeChiclet];
    if (v18)
    {
      v19 = v18;
      v20 = sub_100013D74();
      sub_100008A58(v20, v21, v22, v23);
      goto LABEL_6;
    }

    v28 = sub_100014368();
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_1000144E8(73);
    v36._countAndFlagsBits = 0xD000000000000047;
    v36._object = 0x800000010001AAB0;
    sub_1000142D8(v36);
    v32 = *&v0[v11];
    type metadata accessor for GKMatchmakingMode(0);
    sub_100014518();
    sub_1000141C8();
    v29 = sub_1000141E8();
    if (os_log_type_enabled(v29, v28))
    {
      sub_100013F08();
      v30 = sub_100013EEC();
      v33 = v30;
      v31 = sub_100013FE0(4.8149e-34);

      *(v1 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v29, v28, "SharePlay - %s", v1, 0xCu);
      sub_100005D18(v30);
      sub_100013DFC();
      sub_100013DFC();
    }

    else
    {
    }

    (*(v4 + 8))(v8, v2);
  }

LABEL_15:
  sub_100013FC8();
}

void sub_10000E52C(void *a1)
{
  swift_unknownObjectWeakAssign();
}

void sub_10000E574()
{

  sub_10000D204(*(v0 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_dismissHandler));
  swift_unknownObjectWeakDestroy();

  v1 = *(v0 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_emptyStateView);
}

id MultiplayerModeSelectionViewController.__deallocating_deinit()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_kvoToken];
  if (v2)
  {
    v3 = v2;
    sub_100014138();
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for MultiplayerModeSelectionViewController();
  return objc_msgSendSuper2(&v5, "dealloc");
}

void sub_10000E800()
{
  v1 = [objc_allocWithZone(UIVisualEffectView) init];
  isa = [objc_opt_self() _gkGameLayerBackgroundVisualEffect];
  if (!isa)
  {
    sub_100005F5C(0, &qword_100028D50);
    sub_100014318();
    isa = sub_100014308().super.isa;
  }

  [v1 setBackgroundEffects:isa];

  sub_100013908(0x6579614C656D6167, 0xEE0070756F724772, v1, &selRef__setGroupName_);
  v3 = [v0 view];
  if (v3)
  {
    v4 = v3;
    v5 = v1;
    [v4 insertSubview:v5 atIndex:0];

    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = objc_opt_self();
    v7 = [v0 view];
    [v6 _gkInstallEdgeConstraintsForView:v5 containedWithinParentView:v7];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall MultiplayerModeSelectionViewController.viewDidLoad()()
{
  v1 = v0;
  swift_getObjectType();
  v40.receiver = v0;
  v40.super_class = type metadata accessor for MultiplayerModeSelectionViewController();
  objc_msgSendSuper2(&v40, "viewDidLoad");
  v2 = objc_opt_self();
  v3 = [v2 defaultCenter];
  [v3 addObserver:v1 selector:"didEnterBackgroundWithNotif:" name:UIApplicationDidEnterBackgroundNotification object:0];

  v4 = [v2 defaultCenter];
  [v4 addObserver:v1 selector:"willEnterForegroundWithNotif:" name:UIApplicationWillEnterForegroundNotification object:0];

  sub_10000E800();
  v5 = [v1 navigationController];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 navigationBar];

    [v7 setForceFullHeightInLandscape:1];
  }

  sub_100010254();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_16;
  }

  v9 = Strong;
  [Strong setDataSource:v1];

  v10 = swift_unknownObjectWeakLoadStrong();
  if (!v10)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = v10;
  [v10 setDelegate:v1];

  LODWORD(v11) = GKIsXRUIIdiomShouldUsePadUI();
  v12 = swift_unknownObjectWeakLoadStrong();
  v13 = v12;
  if (v11)
  {
    if (!v12)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    sub_100005F5C(0, &qword_100028B88);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v16 = sub_10000EEDC(0xD000000000000010, 0x800000010001AB70, v15);
  }

  else
  {
    if (!v12)
    {
LABEL_20:
      __break(1u);
      return;
    }

    sub_100005F5C(0, &qword_100028B88);
    type metadata accessor for MultiplayerModeSelectionShimViewController();
    v17 = swift_getObjCClassFromMetadata();
    v18 = sub_100014288();
    v19 = [v17 _gkPlatformNibNameForBaseName:v18];

    v20 = sub_1000142A8();
    v22 = v21;

    v23 = swift_getObjCClassFromMetadata();
    v24 = [objc_opt_self() bundleForClass:v23];
    v16 = sub_10000EEDC(v20, v22, v24);
  }

  v25 = sub_100014288();
  [v13 registerNib:v16 forCellWithReuseIdentifier:v25];

  v26 = swift_unknownObjectWeakLoadStrong();
  if (!v26)
  {
    goto LABEL_17;
  }

  v27 = v26;
  sub_100005F5C(0, &qword_100028B88);
  v28 = swift_getObjCClassFromMetadata();
  v29 = [objc_opt_self() bundleForClass:v28];
  v30 = sub_10000EEDC(0xD000000000000011, 0x800000010001AB50, v29);
  v31 = sub_100014288();
  [v27 registerNib:v30 forCellWithReuseIdentifier:v31];

  v32 = swift_unknownObjectWeakLoadStrong();
  if (!v32)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v33 = v32;
  v34 = [objc_opt_self() clearColor];
  [v33 setBackgroundColor:v34];

  sub_10000F788();
  sub_10000F6B4();
  v35 = [v1 navigationController];
  if (v35)
  {
    v36 = v35;
    v37 = [v35 navigationBar];

    [v37 setRequestedContentSize:2];
  }

  v38 = [v1 navigationItem];
  [v38 _setAutoScrollEdgeTransitionDistance:40.0];

  v39 = [v1 navigationItem];
  [v39 _setManualScrollEdgeAppearanceEnabled:1];

  sub_10000EF94();
}

id sub_10000EEDC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_100014288();

  v5 = [swift_getObjCClassFromMetadata() nibWithNibName:v4 bundle:a3];

  return v5;
}

void sub_10000EF94()
{
  sub_100013F90();
  v1 = v0;
  v2 = sub_1000141F8();
  sub_10000C420();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100013BF4();
  v6 = OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_skipModeSelection;
  sub_100013D50();
  if (*(v0 + v6) != 1)
  {
    v11 = OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_originalMatchmakingMode;
    sub_100013D50();
    v12 = *(v1 + v11);
    if (v12 == 1 || v12 == 3)
    {
      v14 = *(v1 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_inviteFriendsModeChiclet);
      if (!v14)
      {
        goto LABEL_16;
      }

      v15 = v14;
      sub_100013C0C();
      sub_100008A58(v16, v17, v18, v19);
    }

    else
    {
      if (v12 != 2)
      {
        goto LABEL_16;
      }

      v20 = *(v1 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_quickMatchModeChiclet);
      if (!v20)
      {
        goto LABEL_16;
      }

      v15 = v20;
      sub_100013C0C();
      sub_10000D3B0(v21, v22, v23, v24);
    }

    goto LABEL_16;
  }

  v7 = sub_100014358();
  sub_1000141C8();
  v8 = sub_1000141E8();
  if (os_log_type_enabled(v8, v7))
  {
    v9 = sub_100013F08();
    v10 = swift_slowAlloc();
    v25 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1000132C8(0xD00000000000001ELL, 0x800000010001B090, &v25);
    _os_log_impl(&_mh_execute_header, v8, v7, "SharePlay - %s", v9, 0xCu);
    sub_100005D18(v10);
    sub_100013DFC();
    sub_100013DFC();
  }

  (*(v4 + 8))(v0, v2);
  MultiplayerModeSelectionViewController.showLobbyWithOriginalRequest()();
LABEL_16:
  sub_100013FC8();
}

Swift::Void __swiftcall MultiplayerModeSelectionViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for MultiplayerModeSelectionViewController();
  objc_msgSendSuper2(&v15, "viewWillAppear:", a1);
  v4 = OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_chiclets;
  sub_100013C6C();
  v5 = *&v2[v4];
  v6 = sub_10000D4D0(v5);
  if (!v6)
  {
LABEL_9:
    sub_1000100FC();
    v11 = [objc_allocWithZone(GKAPIReporter) init];
    v12 = sub_100013CCC();
    v13 = sub_100014288();
    v14 = sub_100013C40();
    [v11 recordPageWithID:v12 pageContext:v13 pageType:v14];

    return;
  }

  v7 = v6;
  if (v6 >= 1)
  {

    for (i = 0; i != v7; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = sub_1000144F8();
      }

      else
      {
        v9 = *(v5 + 8 * i + 32);
      }

      v10 = v9;
      (*((swift_isaMask & *v9) + 0xF8))(1);
    }

    goto LABEL_9;
  }

  __break(1u);
}

Swift::Void __swiftcall MultiplayerModeSelectionViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MultiplayerModeSelectionViewController();
  objc_msgSendSuper2(&v3, "viewWillDisappear:", a1);
}

Swift::Void __swiftcall MultiplayerModeSelectionViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MultiplayerModeSelectionViewController();
  objc_msgSendSuper2(&v3, "viewDidAppear:", a1);
  v1[OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_canUpdateChiclets] = 1;
  *&v1[OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_startTime] = CFAbsoluteTimeGetCurrent();
}

Swift::Void __swiftcall MultiplayerModeSelectionViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MultiplayerModeSelectionViewController();
  objc_msgSendSuper2(&v3, "viewDidDisappear:", a1);
  *(v1 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_canUpdateChiclets) = 0;
}

uint64_t MultiplayerModeSelectionViewController.preferredFocusEnvironments.getter()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_100005BC4(&qword_100028BC0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_100016720;
    *(v3 + 32) = v2;
  }

  else
  {
    v6.receiver = v0;
    v6.super_class = type metadata accessor for MultiplayerModeSelectionViewController();
    v4 = objc_msgSendSuper2(&v6, "preferredFocusEnvironments");
    sub_100005BC4(&qword_100028BB8);
    v3 = sub_100014318();
  }

  return v3;
}

void sub_10000F6B4()
{
  v1 = [objc_opt_self() _gkXmarkedCloseButtonWithTarget:v0 action:"donePressed:"];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 navigationItem];
    v4 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v2];
    [v3 setRightBarButtonItem:v4];
  }
}

void sub_10000F788()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_13;
  }

  v1 = Strong;
  v19 = [Strong collectionViewLayout];

  v2 = objc_opt_self();
  v10 = sub_100013EA4(v2, v3, v4, v5, v6, v7, v8, v9, v18, v19);
  if ((sub_100010074() & 1) == 0)
  {
    [v10 setScrollDirection:1];
    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      v16 = v15;
      [v15 setAlwaysBounceVertical:0];

      v17 = swift_unknownObjectWeakLoadStrong();
      if (v17)
      {
        v14 = v17;
        [v17 setAlwaysBounceHorizontal:1];
        goto LABEL_9;
      }

LABEL_16:
      __break(1u);
      return;
    }

    goto LABEL_14;
  }

  [v10 setScrollDirection:0];
  v11 = swift_unknownObjectWeakLoadStrong();
  if (!v11)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = v11;
  [v11 setAlwaysBounceVertical:1];

  v13 = swift_unknownObjectWeakLoadStrong();
  if (!v13)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v14 = v13;
  [v13 setAlwaysBounceHorizontal:0];
LABEL_9:
}

Swift::Void __swiftcall MultiplayerModeSelectionViewController.viewSafeAreaInsetsDidChange()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v11 = [Strong collectionViewLayout];

    v2 = objc_opt_self();
    [sub_100013EA4(v2 v3];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall MultiplayerModeSelectionViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v22.receiver = v1;
  v22.super_class = type metadata accessor for MultiplayerModeSelectionViewController();
  objc_msgSendSuper2(&v22, "traitCollectionDidChange:", isa);
  sub_10000F788();
  if (isa)
  {
    v3 = [(objc_class *)isa preferredContentSizeCategory];
  }

  else
  {
    v3 = 0;
  }

  v4 = [v1 traitCollection];
  v5 = [v4 preferredContentSizeCategory];

  if (!v3)
  {

LABEL_12:
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
LABEL_26:
      __break(1u);
      return;
    }

    v15 = Strong;
    [Strong reloadData];

    v16 = OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_chiclets;
    sub_100013C20();
    v17 = *&v1[v16];
    v18 = sub_10000D4D0(v17);

    for (i = 0; v18 != i; ++i)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v20 = sub_1000144F8();
      }

      else
      {
        if (i >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v20 = *(v17 + 8 * i + 32);
      }

      v21 = v20;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      sub_100008E38();
    }

    goto LABEL_22;
  }

  v6 = sub_1000142A8();
  v8 = v7;
  v9 = sub_1000142A8();
  v11 = v10;

  if (v6 != v9 || v8 != v11)
  {
    v13 = sub_100014548();

    if (v13)
    {
      return;
    }

    goto LABEL_12;
  }

LABEL_22:
}

Swift::Void __swiftcall MultiplayerModeSelectionViewController.viewWillLayoutSubviews()()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for MultiplayerModeSelectionViewController();
  objc_msgSendSuper2(&v4, "viewWillLayoutSubviews");
  if ([v0 isViewLoaded])
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      v3 = [Strong collectionViewLayout];

      [v3 invalidateLayout];
    }

    else
    {
      __break(1u);
    }
  }
}

void MultiplayerModeSelectionViewController.viewWillTransition(to:with:)(uint64_t a1, double a2, double a3)
{
  v10.receiver = v3;
  v10.super_class = type metadata accessor for MultiplayerModeSelectionViewController();
  objc_msgSendSuper2(&v10, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  if ([v3 isViewLoaded])
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      v9 = [Strong collectionViewLayout];

      [v9 invalidateLayout];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10000FE2C()
{
  v1 = *(v0 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_dismissHandler);
  if (v1)
  {
    v2 = objc_allocWithZone(GKAPIReporter);

    v3 = [v2 init];
    v4 = sub_100014288();
    v5 = sub_100014288();
    v6 = sub_100014288();
    v7 = sub_100013CCC();
    v8 = sub_100013C40();
    sub_100013E30(v3, "recordClickWithAction:targetId:targetType:pageId:pageType:");

    v1();

    sub_10000D204(v1);
  }
}

BOOL sub_10000FFDC()
{
  v1 = [v0 traitCollection];
  v2 = [v1 horizontalSizeClass];

  if (v2 != 1)
  {
    return 0;
  }

  v3 = [v0 traitCollection];
  v4 = [v3 verticalSizeClass];

  return v4 == 2;
}

uint64_t sub_100010074()
{
  if (sub_100013A94() || sub_10000FFDC())
  {
    return 1;
  }

  v1 = [objc_opt_self() currentTraitCollection];
  v2 = [v1 preferredContentSizeCategory];

  LOBYTE(v1) = sub_1000143E8();
  return v1 & 1;
}

void sub_1000100FC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong visibleCells];

    sub_100005F5C(0, &qword_100028D38);
    v3 = sub_100014318();

    v4 = sub_10000D4D0(v3);
    for (i = 0; v4 != i; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_1000144F8();
      }

      else
      {
        if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v6 = *(v3 + 8 * i + 32);
      }

      v7 = v6;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      type metadata accessor for ChicletCell();
      if (swift_dynamicCastClass())
      {
        v8 = swift_unknownObjectWeakLoadStrong();
        if (v8)
        {
          v9 = v8;
          sub_100008C28(0.0);
        }
      }
    }
  }

  else
  {
LABEL_18:
    __break(1u);
  }
}

void sub_100010254()
{
  sub_100013F90();
  v2 = v0;
  v3 = sub_1000141F8();
  sub_10000C420();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100013BF4();
  v7 = OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_chiclets;
  swift_beginAccess();
  *&v0[v7] = &_swiftEmptyArrayStorage;

  v8 = OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_matchRequest;
  v9 = *&v0[OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_matchRequest];
  if (!v9)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v10 = sub_100013890(v9);
  if (v10)
  {
    v11 = sub_10000D4D0(v10);

    v52 = v11 != 0;
  }

  else
  {
    v52 = 0;
  }

  sub_1000141C8();
  v12 = sub_100014378();
  v1 = v0;
  v13 = sub_1000141E8();
  if (os_log_type_enabled(v13, v12))
  {
    v51 = v3;
    swift_slowAlloc();
    v14 = sub_100013EEC();
    v53 = v14;
    *v5 = 134218498;
    v15 = OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_originalMatchmakingMode;
    sub_100013D50();
    *(v5 + 4) = *&v1[v15];
    *(v5 + 12) = 1024;
    v16 = OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_isEligibleForGroupSession;
    sub_100013D50();
    *(v5 + 14) = v1[v16];
    *(v5 + 18) = 2080;
    if (v52)
    {
      v17 = *&v0[v8];
      if (!v17)
      {
LABEL_45:

        __break(1u);
        goto LABEL_46;
      }

      v18 = v17;

      sub_100013890(v18);
      sub_100005BC4(&qword_100028D40);
      v19 = sub_1000142B8();
      v21 = v20;
    }

    else
    {

      v21 = 0xE400000000000000;
      v19 = 1701736270;
    }

    v22 = sub_1000132C8(v19, v21, &v53);

    *(v5 + 20) = v22;
    _os_log_impl(&_mh_execute_header, v13, v12, "MultiplayerModeSelectionViewController updateChiclets, mode: %ld, isEligibleForGroupSession: %{BOOL}d, has recipients: %s", v5, 0x1Cu);
    sub_100005D18(v14);
    sub_100013DFC();
    sub_100013DFC();

    (*(v5 + 8))(v0, v51);
  }

  else
  {

    (*(v5 + 8))(v0, v3);
  }

  v23 = OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_multiplayerViewController;
  v24 = *&v1[OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_multiplayerViewController];
  if (!v24)
  {
    goto LABEL_40;
  }

  if ((([v24 isHosted] | v52) & 1) != 0 || (v25 = OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_isEntitledToUseGroupActivities, sub_100013D50(), v1[v25] != 1) || (v26 = OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_originalMatchmakingMode, sub_100013D50(), (*&v1[v26] - 1) < 2))
  {
LABEL_18:
    v31 = OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_originalMatchmakingMode;
    sub_100013D50();
    if (*&v1[v31] == 2)
    {
      goto LABEL_21;
    }

    v32 = *&v1[v23];
    if (!v32)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v33 = objc_allocWithZone(type metadata accessor for InviteFriendsModeChiclet());
    v34 = sub_100008970(v32);
    v35 = *&v1[OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_inviteFriendsModeChiclet];
    *&v1[OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_inviteFriendsModeChiclet] = v34;
    v34;

    sub_100013F70();
    sub_1000142F8();
    sub_100013D04();
    sub_100013E54();
    swift_endAccess();
    if ((*&v1[v31] | 2) != 3)
    {
LABEL_21:
      v36 = [objc_opt_self() shared];
      if (!v36)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v37 = v36;
      v38 = [v36 multiplayerAllowedPlayerType];

      if (v38 == 2)
      {
        v39 = *&v1[v23];
        if (!v39)
        {
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        v40 = objc_allocWithZone(type metadata accessor for QuickMatchModeChiclet());
        v41 = sub_10000D2C8(v39);
        v42 = *&v1[OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_quickMatchModeChiclet];
        *&v1[OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_quickMatchModeChiclet] = v41;
        v41;

        sub_100013F70();
        sub_1000142F8();
        sub_100013D04();
        sub_100013E54();
        swift_endAccess();
      }
    }

    sub_100010C68(0);
    if (sub_10000D4D0(*&v2[v7]))
    {
      if (v1[OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_canUpdateChiclets] == 1)
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (!Strong)
        {
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        v44 = Strong;
        [Strong reloadData];

        v45 = *&v2[v7];
        v46 = sub_10000D4D0(v45);
        if (v46)
        {
          v1 = v46;
          if (v46 >= 1)
          {

            for (i = 0; i != v1; i = i + 1)
            {
              if ((v45 & 0xC000000000000001) != 0)
              {
                v48 = sub_1000144F8();
              }

              else
              {
                v48 = *(v45 + 8 * i + 32);
              }

              v49 = v48;
              (*((swift_isaMask & *v48) + 0xF8))(1);
            }

            goto LABEL_37;
          }

          __break(1u);
          goto LABEL_39;
        }
      }
    }

    else
    {
      v50 = sub_100010860();
      sub_100010C68(v50);
    }

LABEL_37:
    sub_100013FC8();
    return;
  }

  v27 = *&v1[v23];
  if (v27)
  {
    type metadata accessor for SharePlayModeChiclet();
    v28 = OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_isEligibleForGroupSession;
    sub_100013D50();
    v29 = sub_100004498(v27, v1[v28]);
    v30 = *&v1[OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_sharePlayModeChiclet];
    *&v1[OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_sharePlayModeChiclet] = v29;
    v29;

    swift_beginAccess();
    sub_1000142F8();
    sub_100013D04();
    sub_100013E54();
    swift_endAccess();
    goto LABEL_18;
  }

LABEL_46:
  __break(1u);
}

id sub_100010860()
{
  v0 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v1 = sub_1000142C8();
  sub_100013908(v1, v2, v0, &selRef_setText_);
  v3 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleTitle3];
  [v0 setFont:v3];

  [v0 setTextAlignment:1];
  v4 = [objc_opt_self() tertiaryLabelColor];
  [v0 setTextColor:v4];

  v5 = v0;
  v6 = [v5 layer];
  [v6 setCompositingFilter:kCAFilterPlusL];

  return v5;
}

void sub_1000109B0(void *a1)
{
  v3 = [v1 view];
  if (!v3)
  {
    return;
  }

  [a1 removeFromSuperview];
  v4 = OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_emptyStateView;
  v5 = *&v1[OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_emptyStateView];
  if (v5)
  {
    v6 = v5;
    v7 = [v1 view];
    if (!v7)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v8 = v7;
    [v7 addSubview:v6];

    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [v6 centerXAnchor];
    v10 = [v1 view];
    if (!v10)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v11 = v10;
    v12 = [v10 centerXAnchor];

    v13 = [v9 constraintEqualToAnchor:v12];
    [v13 setActive:1];

    v14 = [v6 centerYAnchor];
    v15 = [v1 view];
    if (!v15)
    {
LABEL_19:
      __break(1u);
      return;
    }

    v16 = v15;
    v17 = [v15 centerYAnchor];

    v18 = [v14 constraintEqualToAnchor:v17];
    [v18 setActive:1];

    [v6 setAutoresizingMask:18];
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v20 = swift_unknownObjectWeakLoadStrong();
    if (!v20)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v21 = v20;
    [v20 setHidden:*&v1[v4] != 0];
  }

  v22 = [v1 view];
  if (!v22)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v22;
  [v22 setNeedsLayout];
}

void sub_100010C68(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_emptyStateView);
  *(v1 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_emptyStateView) = a1;
  v2 = a1;
  sub_1000109B0(v3);
}

uint64_t static MultiplayerModeSelectionViewController.viewController(request:game:multiplayerViewController:dismissHandler:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  type metadata accessor for MultiplayerModeSelectionViewController();
  v11 = sub_100014288();
  v12 = [ObjCClassFromMetadata _gkPlatformNibNameForBaseName:v11];

  v13 = sub_1000142A8();
  v15 = v14;

  v16 = v10;
  v17 = MultiplayerModeSelectionViewController.__allocating_init(nibName:bundle:)(v13, v15, v10);
  v18 = *(v17 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_matchRequest);
  *(v17 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_matchRequest) = a1;
  v19 = a1;

  v20 = *(v17 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_game);
  *(v17 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_game) = a2;
  v21 = a2;

  v22 = *(v17 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_multiplayerViewController);
  *(v17 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_multiplayerViewController) = a3;
  v23 = a3;

  MultiplayerModeSelectionViewController.originalMatchmakingMode.setter([v23 matchmakingMode]);
  if (a4)
  {
    v24 = (v17 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_dismissHandler);
    v25 = *(v17 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_dismissHandler);
    *v24 = a4;
    v24[1] = a5;

    sub_10000D204(v25);
  }

  return v17;
}

id sub_100010E6C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_100014288();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

CFAbsoluteTime sub_100011064()
{
  result = CFAbsoluteTimeGetCurrent() - *(v0 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_lastBackgroundTimestamp) + *(v0 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_startTime);
  *(v0 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_startTime) = result;
  return result;
}

void sub_100011100()
{
  sub_100013F90();
  v2 = v1;
  v3 = sub_1000141F8();
  sub_10000C420();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100013BF4();
  if ([v2 isEqual:*&v0[OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_sharePlayModeChiclet]] || objc_msgSend(v2, "isEqual:", *&v0[OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_inviteFriendsModeChiclet]) || objc_msgSend(v2, "isEqual:", *&v0[OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_quickMatchModeChiclet]))
  {
    [objc_allocWithZone(GKAPIReporter) init];
    v7 = sub_100013C88();
    v8 = sub_100014288();
    v9 = sub_100014288();
    v10 = sub_100013CCC();
    v11 = sub_100013C40();
    sub_100013E30(v0, "recordClickWithAction:targetId:targetType:pageId:pageType:");
  }

  else
  {
    sub_1000141D8();
    v13 = v2;
    v14 = sub_1000141E8();
    v15 = sub_100014368();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = sub_100013F08();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      *(v16 + 4) = v13;
      *v17 = v13;
      v18 = v13;
      _os_log_impl(&_mh_execute_header, v14, v15, "Cannot find chiclet: %@", v16, 0xCu);
      sub_100013B48(v17, &qword_100028D30);
      sub_100013DFC();
      sub_100013DFC();
    }

    (*(v5 + 8))(v0, v3);
  }

  sub_100013C0C();
  v12();
  sub_100013FC8();
}

id MultiplayerModeSelectionViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = &v3[OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_edgeInsets];
  __asm { FMOV            V0.2D, #16.0 }

  *v6 = _Q0;
  v6[1] = _Q0;
  ShouldUsePadUI = GKIsXRUIIdiomShouldUsePadUI();
  v13 = 16.0;
  if (ShouldUsePadUI)
  {
    v13 = 24.0;
  }

  *&v3[OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_chicletSpacing] = v13;
  *&v3[OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_chicletSpacingIPhonePotrait] = 0x4024000000000000;
  *&v3[OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_chiclets] = &_swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_matchRequest] = 0;
  *&v3[OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_game] = 0;
  *&v3[OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_multiplayerViewController] = 0;
  v3[OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_skipModeSelection] = 0;
  *&v3[OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_originalMatchmakingMode] = 0;
  v3[OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_isEligibleForGroupSession] = 0;
  v3[OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_isEntitledToUseGroupActivities] = 0;
  v3[OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_canUpdateChiclets] = 0;
  v14 = &v3[OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_dismissHandler];
  *v14 = 0;
  v14[1] = 0;
  *&v3[OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_startTime] = 0;
  swift_unknownObjectWeakInit();
  sub_100013D28(OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_cellReuseIdentifier);
  sub_100013E14(OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_cellReuseIdentifierAX);
  *&v3[OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_kvoToken] = 0;
  *&v3[OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_sharePlayModeChiclet] = 0;
  *&v3[OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_inviteFriendsModeChiclet] = 0;
  *&v3[OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_quickMatchModeChiclet] = 0;
  *&v3[OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_lastBackgroundTimestamp] = 0;
  *&v3[OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_emptyStateView] = 0;
  if (a2)
  {
    v15 = sub_100014288();
  }

  else
  {
    v15 = 0;
  }

  v18.receiver = v3;
  v18.super_class = type metadata accessor for MultiplayerModeSelectionViewController();
  v16 = objc_msgSendSuper2(&v18, "initWithNibName:bundle:", v15, a3);

  return v16;
}

uint64_t sub_100011608(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t, void *))
{
  if (a3)
  {
    v7 = sub_1000142A8();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = a4;
  return a5(v7, v9, a4);
}

id MultiplayerModeSelectionViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id MultiplayerModeSelectionViewController.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_edgeInsets];
  __asm { FMOV            V0.2D, #16.0 }

  *v3 = _Q0;
  v3[1] = _Q0;
  ShouldUsePadUI = GKIsXRUIIdiomShouldUsePadUI();
  v10 = 16.0;
  if (ShouldUsePadUI)
  {
    v10 = 24.0;
  }

  *&v1[OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_chicletSpacing] = v10;
  *&v1[OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_chicletSpacingIPhonePotrait] = 0x4024000000000000;
  *&v1[OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_chiclets] = &_swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_matchRequest] = 0;
  *&v1[OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_game] = 0;
  *&v1[OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_multiplayerViewController] = 0;
  v1[OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_skipModeSelection] = 0;
  *&v1[OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_originalMatchmakingMode] = 0;
  v1[OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_isEligibleForGroupSession] = 0;
  v1[OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_isEntitledToUseGroupActivities] = 0;
  v1[OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_canUpdateChiclets] = 0;
  v11 = &v1[OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_dismissHandler];
  *v11 = 0;
  v11[1] = 0;
  *&v1[OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_startTime] = 0;
  swift_unknownObjectWeakInit();
  sub_100013D28(OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_cellReuseIdentifier);
  sub_100013E14(OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_cellReuseIdentifierAX);
  *&v1[OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_kvoToken] = 0;
  *&v1[OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_sharePlayModeChiclet] = 0;
  *&v1[OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_inviteFriendsModeChiclet] = 0;
  *&v1[OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_quickMatchModeChiclet] = 0;
  *&v1[OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_lastBackgroundTimestamp] = 0;
  *&v1[OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_emptyStateView] = 0;
  v14.receiver = v1;
  v14.super_class = type metadata accessor for MultiplayerModeSelectionViewController();
  v12 = objc_msgSendSuper2(&v14, "initWithCoder:", a1);

  if (v12)
  {
  }

  return v12;
}

Swift::Int __swiftcall MultiplayerModeSelectionViewController.collectionView(_:numberOfItemsInSection:)(UICollectionView _, Swift::Int numberOfItemsInSection)
{
  v3 = OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_chiclets;
  sub_100013C20();
  v4 = *(v2 + v3);
  if (v4 >> 62)
  {
    return sub_100014538();
  }

  else
  {
    return *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t MultiplayerModeSelectionViewController.indexPathForPreferredFocusedView(in:)@<X0>(uint64_t a1@<X8>)
{
  sub_100014198();
  v2 = sub_1000141B8();

  return sub_1000063BC(a1, 0, 1, v2);
}

uint64_t MultiplayerModeSelectionViewController.collectionView(_:cellForItemAt:)(void *a1)
{
  v2 = v1;
  v4 = [objc_opt_self() currentTraitCollection];
  v5 = [v4 preferredContentSizeCategory];

  sub_1000143E8();

  v6 = sub_100014288();
  isa = sub_100014178().super.isa;
  v8 = [a1 dequeueReusableCellWithReuseIdentifier:v6 forIndexPath:isa];

  type metadata accessor for ChicletCell();
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = v9;

    v11 = sub_1000141A8();
    v12 = OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_chiclets;
    sub_100013D50();
    v13 = *(v2 + v12);
    sub_100013860(v11, (v13 & 0xC000000000000001) == 0, v13);
    if ((v13 & 0xC000000000000001) != 0)
    {

      v14 = sub_1000144F8();
    }

    else
    {
      v14 = *(v13 + 8 * v11 + 32);
    }

    (*((swift_isaMask & *v14) + 0x100))(v10);

    v15 = sub_1000141A8();
    v16 = *(v2 + v12);
    sub_100013860(v15, (v16 & 0xC000000000000001) == 0, v16);
    if ((v16 & 0xC000000000000001) != 0)
    {

      v17 = sub_1000144F8();
    }

    else
    {
      v17 = *(v16 + 8 * v15 + 32);
    }

    v18 = v17[OBJC_IVAR____TtC29GameCenterMatchmakerExtension23BasicChicletCoordinator_initialAppearance];

    if (v18 == 1)
    {
      v19 = sub_1000141A8();
      v20 = *(v2 + v12);
      sub_100013860(v19, (v20 & 0xC000000000000001) == 0, v20);
      if ((v20 & 0xC000000000000001) != 0)
      {

        v21 = sub_1000144F8();
      }

      else
      {
        v21 = *(v20 + 8 * v19 + 32);
      }

      v21[OBJC_IVAR____TtC29GameCenterMatchmakerExtension23BasicChicletCoordinator_initialAppearance] = 0;

      v22 = v8;
      v23 = [v10 layer];
      [v23 position];
      v25 = v24;

      v26 = [v10 layer];
      [v26 setOpacity:0.0];

      v27 = [v10 layer];
      [v27 position];
      [v27 setPosition:?];

      objc_opt_self();
      sub_1000141A8();
      v28 = swift_allocObject();
      *(v28 + 16) = v10;
      v43 = sub_100013A30;
      v44 = v28;
      aBlock = _NSConcreteStackBlock;
      v40 = 1107296256;
      v41 = sub_10000574C;
      v42 = &unk_100020EC0;
      v29 = _Block_copy(&aBlock);
      v30 = v22;

      v31 = sub_100013F20();
      [v31 v32];
      _Block_release(v29);
      sub_1000141A8();
      v33 = swift_allocObject();
      *(v33 + 16) = v10;
      *(v33 + 24) = v25;
      v43 = sub_100013A88;
      v44 = v33;
      aBlock = _NSConcreteStackBlock;
      v40 = 1107296256;
      v41 = sub_10000574C;
      v42 = &unk_100020F10;
      v34 = _Block_copy(&aBlock);
      v35 = v30;

      v36 = sub_100013F20();
      [v36 v37];
      _Block_release(v34);
    }

    return v10;
  }

  else
  {

    result = sub_100014528();
    __break(1u);
  }

  return result;
}

void sub_100011FEC(void *a1)
{
  v2 = [a1 layer];
  LODWORD(v1) = 1.0;
  [v2 setOpacity:v1];
}

void sub_100012044(void *a1)
{
  v1 = [a1 layer];
  [v1 position];
  [v1 setPosition:?];
}

void MultiplayerModeSelectionViewController.collectionView(_:didSelectItemAt:)()
{
  v1 = v0;
  v2 = sub_1000141A8();
  v3 = OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_chiclets;
  sub_100013C6C();
  v4 = *(v1 + v3);
  sub_100013860(v2, (v4 & 0xC000000000000001) == 0, v4);
  if ((v4 & 0xC000000000000001) != 0)
  {

    v5 = sub_1000144F8();
  }

  else
  {
    v5 = *(v4 + 8 * v2 + 32);
  }

  sub_100011100();
}

void MultiplayerModeSelectionViewController.collectionView(_:layout:sizeForItemAt:)(void *a1)
{
  if (GKIsXRUIIdiomShouldUsePadUI())
  {
    v3 = [v1 view];
    if (v3)
    {
      v4 = v3;
      [v3 frame];
      sub_100013CF0();

      fmin(sub_100013DC4() + -20.0, 335.0);
      v5 = [objc_opt_self() currentTraitCollection];
      v6 = [v5 preferredContentSizeCategory];

      sub_1000142A8();
      sub_100013CB0();
      sub_100013D68();
      v8 = v8 && a1 == v7;
      if (!v8)
      {
        sub_100013BD0();
        sub_100013E8C();

        if (&CFAbsoluteTimeGetCurrent_ptr)
        {
          goto LABEL_65;
        }

        sub_1000142A8();
        sub_100013CB0();
        sub_100013D68();
        if (!v8 || a1 != v41)
        {
          sub_100013BD0();
          sub_100013E8C();

          if (&CFAbsoluteTimeGetCurrent_ptr)
          {
            goto LABEL_65;
          }

          sub_1000142A8();
          sub_100013CB0();
          sub_100013D68();
          if (!v8 || a1 != v47)
          {
            sub_100013BD0();
            sub_100013E8C();

            if (&CFAbsoluteTimeGetCurrent_ptr)
            {
              goto LABEL_65;
            }

            sub_1000142A8();
            v49 = sub_100013CB0();
            v51 = v50;

            if (&CFAbsoluteTimeGetCurrent_ptr != v49 || a1 != v51)
            {
LABEL_72:
              sub_100013EC8();

              return;
            }

            goto LABEL_73;
          }
        }
      }

      goto LABEL_66;
    }

    __break(1u);
    goto LABEL_75;
  }

  v9 = objc_opt_self();
  v10 = [v9 currentTraitCollection];
  v11 = [v10 preferredContentSizeCategory];

  v12 = sub_1000143E8();
  if (v12)
  {
    if (!sub_100013A94())
    {
      if (!sub_10000FFDC())
      {
        [a1 frame];
        CGRectGetWidth(v53);
        v43 = [v1 view];
        if (v43)
        {
          v44 = v43;
          [v43 safeAreaInsets];

          v45 = [v1 view];
          if (v45)
          {
            v46 = v45;
            [v45 safeAreaInsets];

            return;
          }

          goto LABEL_78;
        }

LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
        return;
      }

      v15 = [v1 view];
      if (v15)
      {
        v16 = v15;
        [v15 frame];
        sub_100013CF0();

        fmin(sub_100013DC4() + -20.0, 335.0);
        v17 = [v9 currentTraitCollection];
        v6 = [v17 preferredContentSizeCategory];

        sub_1000142A8();
        sub_100013CB0();
        sub_100013D68();
        if (!v8 || a1 != v18)
        {
          sub_100013BD0();
          sub_100013E8C();

          if (v12)
          {
            goto LABEL_65;
          }

          sub_1000142A8();
          sub_100013CB0();
          sub_100013D68();
          if (!v8 || a1 != v20)
          {
            sub_100013BD0();
            sub_100013E8C();

            if (v12)
            {
              goto LABEL_65;
            }

            sub_1000142A8();
            sub_100013CB0();
            sub_100013D68();
            if (!v8 || a1 != v22)
            {
              sub_100013BD0();
              sub_100013E8C();

              if (v12)
              {
LABEL_65:

                return;
              }

              sub_1000142A8();
              v24 = sub_100013CB0();
              v26 = v25;

              if (v12 != v24 || a1 != v26)
              {
                goto LABEL_72;
              }

LABEL_73:

              return;
            }
          }
        }

LABEL_66:

        return;
      }

LABEL_76:
      __break(1u);
      goto LABEL_77;
    }
  }

  else
  {
    if (sub_10000FFDC())
    {
      v13 = [v1 view];
      if (v13)
      {
        v14 = v13;
        [v13 frame];
        sub_100013CF0();

        fmin(sub_100013DC4() + -20.0, 335.0);
        return;
      }

LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    v28 = [v1 traitCollection];
    v29 = [v28 preferredContentSizeCategory];

    v30 = sub_1000142A8();
    v32 = v31;
    if (v30 != sub_1000142A8() || v32 != v33)
    {
      v35 = sub_100014548();

      if (v35)
      {
        return;
      }

      v36 = [v1 traitCollection];
      v29 = [v36 preferredContentSizeCategory];

      sub_1000142A8();
      v38 = v37;
      sub_1000142A8();
      sub_100013D68();
      if (!v8 || v38 != v39)
      {
        sub_100013BD0();

        return;
      }
    }
  }
}

double MultiplayerModeSelectionViewController.collectionView(_:layout:minimumLineSpacingForSectionAt:)()
{
  v1 = sub_10000FFDC();
  result = 10.0;
  if (!v1)
  {
    return *(v0 + OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_chicletSpacing);
  }

  return result;
}

void MultiplayerModeSelectionViewController.collectionView(_:layout:insetForSectionAt:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = sub_1000141B8();
  sub_10000C420();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_100013BF4();
  sub_100014198();
  isa = sub_100014178().super.isa;
  (*(v11 + 8))(v3, v9);
  [v3 collectionView:a1 layout:a2 sizeForItemAtIndexPath:isa];
  v15 = v14;
  v17 = v16;

  [v3 collectionView:a1 layout:a2 minimumLineSpacingForSectionAtIndex:a3];
  v19 = v18;
  if (sub_10000FFDC())
  {
    v20 = OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_chiclets;
    sub_100013D50();
    v21 = sub_10000D4D0(*&v3[v20]);
    v22 = sub_10000D4D0(*&v5[v20]);
    v23 = v22 - 1;
    if (!__OFSUB__(v22, 1))
    {
      v24 = sub_100013DE4();
      if (v24)
      {
        [v24 frame];
        sub_100013FA8();
        v73.origin.x = sub_100013F5C();
        CGRectGetHeight(v73);
        v25 = sub_100013DE4();
        if (v25)
        {
          v26 = v25;
          sub_100013D94(v25);
          v28 = v27;

          sub_100013F48(v4 - v28);
          v29 = sub_100013DE4();
          if (v29)
          {
            sub_100014000(v29);

            [a1 frame];
            Width = CGRectGetWidth(v74);
            v31 = sub_100013DE4();
            if (v31)
            {
              sub_100014000(v31);

              v32 = sub_100013DE4();
              if (v32)
              {
                v33 = v32;
                v34 = (Width - v15) * 0.5;
                [v32 *(v23 + 816)];
                v36 = v35;

                sub_100013F34(v34 - v36);
                return;
              }

              goto LABEL_32;
            }

LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (sub_100010074())
  {
    [a1 frame];
    v37 = CGRectGetWidth(v75) - (v19 + v19);
    v38 = floor(v37 / (v15 + v19));
    if (v19 * v38 + v15 * (v38 + 1.0) > v37)
    {
      v39 = v38;
    }

    else
    {
      v39 = v38 + 1.0;
    }

    v40 = OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_chiclets;
    sub_100013D50();
    v41 = sub_10000D4D0(*&v5[v40]);
    if (v39 <= v41)
    {
      v41 = v39;
    }

    [a1 frame];
    CGRectGetWidth(v76);
    sub_10000D4D0(*&v5[v40]);
    v42 = sub_100013DE4();
    if (v42)
    {
      v43 = v42;
      [v42 frame];
      v45 = v44;
      v47 = v46;
      v49 = v48;
      v51 = v50;

      v77.origin.x = v45;
      v77.origin.y = v47;
      v77.size.width = v49;
      v77.size.height = v51;
      CGRectGetHeight(v77);
      v52 = sub_100013DE4();
      if (v52)
      {
        v53 = v52;
        [v52 safeAreaInsets];

        v54 = sub_100013DE4();
        if (v54)
        {
          v55 = v54;
          [v54 safeAreaInsets];

          return;
        }

        goto LABEL_35;
      }

LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v56 = OBJC_IVAR____TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController_chiclets;
  sub_100013D50();
  v57 = sub_10000D4D0(*&v3[v56]);
  v58 = sub_10000D4D0(*&v5[v56]);
  v59 = v58 - 1;
  if (__OFSUB__(v58, 1))
  {
    goto LABEL_27;
  }

  v60 = sub_100013DE4();
  if (!v60)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  [v60 frame];
  sub_100013FA8();
  v78.origin.x = sub_100013F5C();
  CGRectGetWidth(v78);
  v61 = sub_100013DE4();
  if (!v61)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v62 = v61;
  sub_100013D94(v61);
  v64 = v63;

  sub_100013F48(v4 - v64);
  v65 = sub_100013DE4();
  if (!v65)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  sub_100014000(v65);

  [a1 frame];
  Height = CGRectGetHeight(v79);
  v67 = sub_100013DE4();
  if (!v67)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  sub_100014000(v67);

  v68 = sub_100013DE4();
  if (v68)
  {
    v69 = v68;
    v70 = (Height - v17) * 0.5;
    [v68 *(v59 + 816)];
    v72 = v71;

    sub_100013F34(v70 - v72);
    return;
  }

LABEL_40:
  __break(1u);
}

BOOL sub_100013278(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

unint64_t sub_1000132C8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000133B0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_10000BFE8(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_100005D18(v11);
  return v7;
}

unint64_t sub_1000133B0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1000134B0(a5, a6);
    *a1 = v9;
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
    result = sub_100014508();
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

char *sub_1000134B0(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000134FC(a1, a2);
  sub_100013614(&off_100020AA8);
  return v3;
}

char *sub_1000134FC(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_1000142E8())
  {
    result = sub_1000136F8(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1000144D8();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_100014508();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_100013614(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_100013768(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

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

void *sub_1000136F8(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100005BC4(&qword_100028D58);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_100013768(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005BC4(&qword_100028D58);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

unint64_t sub_100013860(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100013890(void *a1)
{
  v2 = [a1 recipients];

  if (!v2)
  {
    return 0;
  }

  sub_100005F5C(0, &qword_100028D48);
  v3 = sub_100014318();

  return v3;
}

void sub_100013908(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_100014288();

  [a3 *a4];
}

uint64_t sub_100013974()
{
  v0 = sub_1000142A8();
  v2 = v1;
  if (v0 == sub_1000142A8() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_100014548();
  }

  return v5 & 1;
}

uint64_t sub_1000139F8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100013A38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013A50()
{

  return _swift_deallocObject(v0, 32, 7);
}

BOOL sub_100013A94()
{
  v0 = +[UIDevice currentDevice];
  v1 = [v0 userInterfaceIdiom];

  return v1 == 1;
}

uint64_t sub_100013B00()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100013B48(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100005BC4(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100013BD0()
{

  return sub_100014548();
}

uint64_t sub_100013C20()
{

  return swift_beginAccess();
}

NSString sub_100013C40()
{

  return sub_100014288();
}

uint64_t sub_100013C6C()
{

  return swift_beginAccess();
}

NSString sub_100013C88()
{

  return sub_100014288();
}

uint64_t sub_100013CB0()
{

  return sub_1000142A8();
}

NSString sub_100013CCC()
{

  return sub_100014288();
}

uint64_t sub_100013D04()
{
  v3 = *((*(v0 + v1) & 0xFFFFFFFFFFFFFF8) + 0x10);

  return sub_10000D2B8(v3);
}

void sub_100013D28(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0x4374656C63696843;
  v2[1] = 0xEB000000006C6C65;
}

uint64_t sub_100013D50()
{

  return swift_beginAccess();
}

id sub_100013D94(void *a1)
{

  return [a1 safeAreaInsets];
}

double sub_100013DC4()
{
  v5 = v1;
  v6 = v2;
  v7 = v3;
  v8 = v4;

  return CGRectGetWidth(*&v5);
}

id sub_100013DE4()
{
  v3 = *(v1 + 808);

  return [v0 v3];
}

uint64_t sub_100013DFC()
{
}

void sub_100013E14(uint64_t a1@<X8>)
{
  v3 = (v2 + a1);
  *v3 = v1;
  v3[1] = 0xED000058416C6C65;
}

id sub_100013E30(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t sub_100013E54()
{

  return sub_100014338();
}

uint64_t sub_100013E70()
{

  return swift_beginAccess();
}

uint64_t sub_100013E8C()
{
}

uint64_t sub_100013EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return _swift_dynamicCastObjCClassUnconditional(a10, a1, 0, 0, 0);
}

uint64_t sub_100013EC8()
{

  return sub_100014548();
}

uint64_t sub_100013EEC()
{

  return swift_slowAlloc();
}

uint64_t sub_100013F08()
{

  return swift_slowAlloc();
}

uint64_t sub_100013F70()
{

  return swift_beginAccess();
}

void sub_100013FA8()
{
}

unint64_t sub_100013FE0(float a1)
{
  *v3 = a1;

  return sub_1000132C8(v2, v1, (v4 - 120));
}

id sub_100014000(void *a1)
{
  v3 = *(v1 + 816);

  return [a1 v3];
}

void sub_100014018(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error while decoding messageFromClient archive:%@", &v2, 0xCu);
}

void sub_100014090(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 localizedDescription];
  v5 = 138412290;
  v6 = v4;
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "error calling host - %@", &v5, 0xCu);
}