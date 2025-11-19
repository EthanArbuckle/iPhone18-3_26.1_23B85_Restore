id sub_1BA06EF58()
{
  if (qword_1EDC6D268 != -1)
  {
    swift_once();
  }

  v3[4] = xmmword_1EDC6D2B0;
  v3[5] = unk_1EDC6D2C0;
  v3[6] = xmmword_1EDC6D2D0;
  v3[7] = unk_1EDC6D2E0;
  v3[0] = xmmword_1EDC6D270;
  v3[1] = *&qword_1EDC6D280;
  v3[2] = xmmword_1EDC6D290;
  v3[3] = *&qword_1EDC6D2A0;
  sub_1B9F0ADF8(0, &qword_1EDC6B530);
  v2[4] = xmmword_1EDC6D2B0;
  v2[5] = unk_1EDC6D2C0;
  v2[6] = xmmword_1EDC6D2D0;
  v2[7] = unk_1EDC6D2E0;
  v2[0] = xmmword_1EDC6D270;
  v2[1] = *&qword_1EDC6D280;
  v2[2] = xmmword_1EDC6D290;
  v2[3] = *&qword_1EDC6D2A0;
  sub_1B9F1D9A4(v3, &v1);
  return sub_1B9F293A8(v2);
}

uint64_t sub_1BA06F02C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1BA06FA80(0, &qword_1EDC6E200, MEMORY[0x1E69A3108], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1BA06FE18(a1, &v10 - v5);
  v7 = sub_1BA4A2888();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    result = sub_1BA06F9D0(v6);
    *a2 = 0;
  }

  else
  {
    *a2 = sub_1BA4A2858();
    return (*(v8 + 8))(v6, v7);
  }

  return result;
}

void sub_1BA06F164(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong setAvatarImage_];
  }
}

void sub_1BA06F1C8()
{
  v1 = v0;
  sub_1BA06FA80(0, &qword_1EDC6E200, MEMORY[0x1E69A3108], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - v3;
  v5 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI55ProfileCharacteristicsWithAutoAvatarImageViewController_dataSource];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = *(*v5 + 760);

  v6(v7);

  v8 = sub_1BA4A2888();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v4, 1, v8) == 1)
  {
    sub_1BA06F9D0(v4);
LABEL_4:
    v10 = type metadata accessor for ProfileCharacteristicsWithAutoAvatarImageViewController();
    v16.receiver = v1;
    v16.super_class = v10;
    objc_msgSendSuper2(&v16, sel_setUpNavigationBar);
    return;
  }

  v11 = sub_1BA4A2AE8();
  v13 = v12;
  (*(v9 + 8))(v4, v8);
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  sub_1BA06FA80(0, &qword_1EDC6B410, sub_1BA06FAE4, MEMORY[0x1E69E6F90]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1BA4B5480;
  *(v14 + 56) = MEMORY[0x1E69E6158];
  *(v14 + 64) = sub_1B9F1BE20();
  *(v14 + 32) = v11;
  *(v14 + 40) = v13;
  sub_1BA4A6768();

  v15 = sub_1BA4A6758();

  [v1 setTitle_];
}

void sub_1BA06F524()
{
  v1 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI55ProfileCharacteristicsWithAutoAvatarImageViewController_healthStore] profileIdentifier];
  v2 = [v1 type];

  if (v2 == 1)
  {
    v8.receiver = v0;
    v8.super_class = type metadata accessor for ProfileCharacteristicsWithAutoAvatarImageViewController();
    objc_msgSendSuper2(&v8, sel_didUpdateName);
    v3 = [objc_opt_self() defaultCenter];
    v4 = sub_1BA4A73C8();
    [v3 postNotificationName:v4 object:0];

    sub_1BA4A73C8();
    v5 = objc_allocWithZone(sub_1BA4A34C8());
    v6 = sub_1BA4A34B8();
    sub_1B9F0ADF8(0, &qword_1EDC6B5F0);
    v7 = sub_1BA4A7198();
    [v7 addOperation_];
  }
}

id ProfileCharacteristicsWithAutoAvatarImageViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ProfileCharacteristicsWithAutoAvatarImageViewController.__allocating_init(healthStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithHealthStore_];

  return v3;
}

id ProfileCharacteristicsWithAutoAvatarImageViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProfileCharacteristicsWithAutoAvatarImageViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1BA06F854(void *a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI55ProfileCharacteristicsWithAutoAvatarImageViewController_dataSource] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI55ProfileCharacteristicsWithAutoAvatarImageViewController_imagePublisherCancellable] = 0;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI55ProfileCharacteristicsWithAutoAvatarImageViewController_screenScale;
  v6 = [objc_opt_self() mainScreen];
  [v6 scale];
  v8 = v7;

  *&v2[v5] = v8;
  v9 = OBJC_IVAR____TtC18HealthExperienceUI55ProfileCharacteristicsWithAutoAvatarImageViewController_rightToLeft;
  v2[v9] = [objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_] == 1;
  sub_1B9F0A534(a2, &v2[OBJC_IVAR____TtC18HealthExperienceUI55ProfileCharacteristicsWithAutoAvatarImageViewController_healthExperienceStore]);
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI55ProfileCharacteristicsWithAutoAvatarImageViewController_healthStore] = a1;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for ProfileCharacteristicsWithAutoAvatarImageViewController();
  v10 = a1;
  v11 = objc_msgSendSuper2(&v14, sel_initWithHealthStore_, v10);
  v12 = [v10 profileIdentifier];
  if ([v12 type] == 1)
  {
    sub_1BA06E024(v12);
  }

  else
  {
    sub_1BA06EC30(v12);
  }

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v11;
}

uint64_t sub_1BA06F9D0(uint64_t a1)
{
  sub_1BA06FA80(0, &qword_1EDC6E200, MEMORY[0x1E69A3108], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BA06FA80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1BA06FAE4()
{
  result = qword_1EDC6B3D0;
  if (!qword_1EDC6B3D0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDC6B3D0);
  }

  return result;
}

void _s18HealthExperienceUI55ProfileCharacteristicsWithAutoAvatarImageViewControllerC5coderACSgSo7NSCoderC_tcfc_0()
{
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI55ProfileCharacteristicsWithAutoAvatarImageViewController_dataSource) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI55ProfileCharacteristicsWithAutoAvatarImageViewController_imagePublisherCancellable) = 0;
  v1 = OBJC_IVAR____TtC18HealthExperienceUI55ProfileCharacteristicsWithAutoAvatarImageViewController_screenScale;
  v2 = [objc_opt_self() mainScreen];
  [v2 scale];
  v4 = v3;

  *(v0 + v1) = v4;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI55ProfileCharacteristicsWithAutoAvatarImageViewController_rightToLeft;
  *(v0 + v5) = [objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_] == 1;
  sub_1BA4A8018();
  __break(1u);
}

void sub_1BA06FC68()
{
  if (!qword_1EBBEAD10)
  {
    v0 = MEMORY[0x1E695BED0];
    sub_1BA06FD34(255, &qword_1EDC6B738, MEMORY[0x1E695BED0]);
    sub_1B9F3C928();
    sub_1BA06FDD4(&qword_1EDC6B740, &qword_1EDC6B738, v0);
    v1 = sub_1BA4A4B78();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEAD10);
    }
  }
}

void sub_1BA06FD34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    sub_1BA06FA80(255, &qword_1EDC6E200, MEMORY[0x1E69A3108], MEMORY[0x1E69E6720]);
    v7 = a3(a1, v6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1BA06FDD4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  result = *a1;
  if (!result)
  {
    sub_1BA06FD34(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BA06FE18(uint64_t a1, uint64_t a2)
{
  sub_1BA06FA80(0, &qword_1EDC6E200, MEMORY[0x1E69A3108], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BA06FED4()
{
  if (!qword_1EBBEAD20)
  {
    sub_1BA06FF80();
    sub_1B9F3C928();
    sub_1B9F3DBAC(&qword_1EBBEAD30, sub_1BA06FF80);
    v0 = sub_1BA4A4B78();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEAD20);
    }
  }
}

void sub_1BA06FF80()
{
  if (!qword_1EBBEAD28)
  {
    v0 = MEMORY[0x1E695BED0];
    sub_1BA06FD34(255, &qword_1EDC6B738, MEMORY[0x1E695BED0]);
    sub_1BA06FDD4(&qword_1EDC6B740, &qword_1EDC6B738, v0);
    v1 = sub_1BA4A4B08();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEAD28);
    }
  }
}

unint64_t sub_1BA07003C()
{
  result = qword_1EDC5F430;
  if (!qword_1EDC5F430)
  {
    sub_1BA06FA80(255, &qword_1EDC5F428, sub_1B9F3C928, MEMORY[0x1E695C000]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F430);
  }

  return result;
}

uint64_t sub_1BA0700CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, __int128 *a8)
{
  v9 = v8;
  *&v63 = a6;
  v58 = a5;
  v57 = *v8;
  v62 = sub_1BA4A3EA8();
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1BA4A1798();
  v59 = *(v60 - 1);
  MEMORY[0x1EEE9AC00](v60);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a2;
  if (sub_1BA070E1C(a1, a2))
  {
    v21 = (v9 + OBJC_IVAR____TtC18HealthExperienceUI32EndSharingRelationshipDataSource_footerText);
    *v21 = a3;
    v21[1] = a4;
    v56 = a2;
    sub_1BA071040(a2, v65);
    v22 = type metadata accessor for EndSharingRelationshipItem();
    v23 = swift_allocObject();
    *(v23 + 16) = 0xD00000000000001ALL;
    *(v23 + 24) = 0x80000001BA4E6C00;
    v67 = type metadata accessor for ProfileButtonCell();
    v24 = a1;
    v25 = a7;
    sub_1BA0711AC(a8, v64);
    sub_1BA071208();
    *(v23 + 32) = sub_1BA4A6808();
    *(v23 + 40) = v26;
    *(v23 + 64) = 0;
    *(v23 + 72) = 0;
    v27 = [objc_opt_self() systemRedColor];
    *(v23 + 96) = 256;
    *(v23 + 200) = v24;
    v28 = v65[1];
    *(v23 + 208) = v65[0];
    *(v23 + 224) = v28;
    *(v23 + 240) = v66;
    *(v23 + 248) = 0;
    v29 = v63;
    *(v23 + 48) = v58;
    *(v23 + 56) = v29;
    *(v23 + 80) = v27;
    *(v23 + 88) = v25;
    v30 = *a8;
    *(v23 + 120) = a8[1];
    *(v23 + 104) = v30;
    v31 = a8[2];
    v32 = a8[3];
    v33 = a8[4];
    *(v23 + 184) = a8[5];
    *(v23 + 168) = v33;
    *(v23 + 152) = v32;
    *(v23 + 136) = v31;
    *(v9 + OBJC_IVAR____TtC18HealthExperienceUI32EndSharingRelationshipDataSource_endSharingRelationshipItem) = v23;
    sub_1B9FF6758();
    inited = swift_initStackObject();
    v63 = xmmword_1BA4B5480;
    *(inited + 16) = xmmword_1BA4B5480;
    sub_1B9F0CF6C(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
    v35 = swift_allocObject();
    *(v35 + 16) = v63;
    *(v35 + 56) = v22;
    *(v35 + 64) = sub_1BA0712FC(&qword_1EBBEAD68, type metadata accessor for EndSharingRelationshipItem);
    *(v35 + 32) = v23;

    sub_1BA4A1788();
    v36 = sub_1BA4A1748();
    v38 = v37;
    (v59)[1](v19, v60);
    v39 = MEMORY[0x1E69E7CC0];
    *(inited + 48) = MEMORY[0x1E69E7CC0];
    *(inited + 56) = sub_1B9F1C5F0(v39);
    *(inited + 32) = 0;
    *(inited + 40) = 0;

    *(inited + 48) = v35;
    v40 = Array<A>.identifierToIndexDict()(v35);

    *(inited + 56) = v40;
    *(inited + 64) = v36;
    *(inited + 72) = v38;
    v41 = sub_1B9F1DAFC(inited, 1, sub_1BA0707A0, 0);
    sub_1BA0710D0(a8);

    sub_1BA071124(v56);
    return v41;
  }

  else
  {
    v59 = a1;
    v60 = a7;

    sub_1BA4A3E28();
    sub_1BA071040(a2, v64);
    v43 = sub_1BA4A3E88();
    v44 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v67 = v46;
      *v45 = 136315394;
      v47 = sub_1BA4A85D8();
      v49 = sub_1B9F0B82C(v47, v48, &v67);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2080;
      sub_1BA071040(v64, v65);
      sub_1B9F0CF6C(0, &qword_1EDC6E1E0, &qword_1EDC6E1F0, MEMORY[0x1E69A3208], MEMORY[0x1E69E6720]);
      v50 = sub_1BA4A6808();
      v52 = v51;
      sub_1BA071124(v64);
      v53 = sub_1B9F0B82C(v50, v52, &v67);

      *(v45 + 14) = v53;
      _os_log_impl(&dword_1B9F07000, v43, v44, "[%s] Should not display data source for profile with profileInformation: %s", v45, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v46, -1, -1);
      MEMORY[0x1BFAF43A0](v45, -1, -1);

      sub_1BA0710D0(a8);
      v54 = v20;
    }

    else
    {

      sub_1BA0710D0(a8);
      sub_1BA071124(a2);
      v54 = v64;
    }

    sub_1BA071124(v54);
    (*(v61 + 8))(v17, v62);
    type metadata accessor for EndSharingRelationshipDataSource();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

void *sub_1BA0707A0(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for ListLayoutConfiguration();
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC6CB88 != -1)
  {
    v13 = v4;
    swift_once();
    v4 = v13;
  }

  v7 = __swift_project_value_buffer(v4, qword_1EDC6CB90);
  sub_1B9F37E38(v7, v6);
  *(v6 + 8) = 0x4014000000000000;
  *(v6 + 6) = 0x4034000000000000;
  v8 = objc_opt_self();
  v9 = [v8 fractionalWidthDimension_];

  *(v6 + 3) = v9;
  v10 = [v8 estimatedDimension_];

  *(v6 + 4) = v10;
  v11 = ListLayoutConfiguration.layout(for:)(a2);
  sub_1B9F5AC24(v6, type metadata accessor for ListLayoutConfiguration);
  return v11;
}

unint64_t sub_1BA070908@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1BA4A1798();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI32EndSharingRelationshipDataSource_footerText + 8);
  if (v7)
  {
    v8 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI32EndSharingRelationshipDataSource_footerText);
    a1[3] = &type metadata for TextViewItem;
    a1[4] = sub_1BA0712A8();
    v9 = swift_allocObject();
    *a1 = v9;
    strcpy(v13, "TextViewItem_");
    HIWORD(v13[1]) = -4864;

    sub_1BA4A1788();
    sub_1BA0712FC(&qword_1EDC6AE60, MEMORY[0x1E69695A8]);
    v10 = sub_1BA4A82D8();
    MEMORY[0x1BFAF1350](v10);

    result = (*(v4 + 8))(v6, v3);
    v12 = v13[1];
    *(v9 + 16) = v13[0];
    *(v9 + 24) = v12;
    *(v9 + 32) = 0;
    *(v9 + 40) = 0;
    *(v9 + 56) = 0;
    *(v9 + 64) = 0;
    *(v9 + 48) = -1;
    *(v9 + 72) = -1;
    *(v9 + 80) = v8;
    *(v9 + 88) = v7;
    *(v9 + 96) = sub_1BA34B4C4;
    *(v9 + 104) = 0;
    *(v9 + 112) = 0;
    *(v9 + 120) = 0;
    *(v9 + 128) = 0;
  }

  else
  {
    a1[3] = &type metadata for EmptyHeaderItem;
    a1[4] = sub_1B9FDA1B0();
    *a1 = swift_allocObject();
    return EmptyHeaderItem.init()();
  }

  return result;
}

uint64_t sub_1BA070B84()
{
}

uint64_t sub_1BA070BC8()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1BA070CAC()
{
  sub_1BA070BC8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EndSharingRelationshipDataSource()
{
  result = qword_1EBBEAD58;
  if (!qword_1EBBEAD58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA070DCC()
{
  sub_1B9FF5260();
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1B9F3A13C();
}

uint64_t sub_1BA070E1C(void *a1, uint64_t a2)
{
  sub_1BA071250();
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = [a1 profileIdentifier];
  v9 = [v8 type];

  if (v9 == 3)
  {
    return 1;
  }

  v10 = [a1 profileIdentifier];
  v11 = [v10 type];

  if (v11 == 2)
  {
    return 1;
  }

  sub_1BA071040(a2, v17);
  if (v18)
  {
    sub_1B9F0D950(0, &qword_1EDC6E1F0);
    v13 = sub_1BA4A33C8();
    v14 = swift_dynamicCast();
    (*(*(v13 - 8) + 56))(v7, v14 ^ 1u, 1, v13);
  }

  else
  {
    sub_1BA071124(v17);
    v13 = sub_1BA4A33C8();
    (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  }

  sub_1BA4A33C8();
  v15 = (*(*(v13 - 8) + 48))(v7, 1, v13) == 0;
  sub_1B9F5AC24(v7, sub_1BA071250);
  return v15;
}

uint64_t sub_1BA071040(uint64_t a1, uint64_t a2)
{
  sub_1B9F0CF6C(0, &qword_1EDC6E1E0, &qword_1EDC6E1F0, MEMORY[0x1E69A3208], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA071124(uint64_t a1)
{
  sub_1B9F0CF6C(0, &qword_1EDC6E1E0, &qword_1EDC6E1F0, MEMORY[0x1E69A3208], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BA071208()
{
  result = qword_1EBBE9DE0;
  if (!qword_1EBBE9DE0)
  {
    type metadata accessor for ProfileButtonCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBE9DE0);
  }

  return result;
}

void sub_1BA071250()
{
  if (!qword_1EBBEA318)
  {
    sub_1BA4A33C8();
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEA318);
    }
  }
}

unint64_t sub_1BA0712A8()
{
  result = qword_1EDC69500;
  if (!qword_1EDC69500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC69500);
  }

  return result;
}

uint64_t sub_1BA0712FC(unint64_t *a1, void (*a2)(uint64_t))
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

void HealthAppPluginSource.pluginAppDelegateObject<A>(name:_:)(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v5 = sub_1BA4A1B28();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A1B38();
  if (!v2)
  {
    v9 = sub_1BA4A1B18();
    (*(v6 + 8))(v8, v5);
    NSBundle.getPluginAppDelegateObject<A>(as:)(a1, a2);
  }
}

uint64_t PluginAppDelegateError.hashValue.getter()
{
  v1 = *v0;
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](v1);
  return sub_1BA4A84D8();
}

unint64_t sub_1BA0714F4()
{
  result = qword_1EBBEAD70;
  if (!qword_1EBBEAD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEAD70);
  }

  return result;
}

unint64_t sub_1BA07154C()
{
  result = qword_1EBBEAD78;
  if (!qword_1EBBEAD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEAD78);
  }

  return result;
}

uint64_t ResettableDateDisplayItem.reuseIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ResettableDateDisplayItem.uniqueIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ResettableDateDisplayItem.title.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ResettableDateDisplayItem.placeholderText.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t ResettableDateDisplayItem.dataProvider.getter()
{
  v1 = *(v0 + 64);
  sub_1B9F0F1B8(v1);
  return v1;
}

uint64_t ResettableDateDisplayItem.dataProvider.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B9F0E310(*(v2 + 64));
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t sub_1BA0716FC@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 80);
  v4 = *(a1 + 88);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1BA074E64;
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

uint64_t sub_1BA07177C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1BA074E3C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 80);
  sub_1B9F0F1B8(v3);
  result = sub_1B9F0E310(v7);
  *(a2 + 80) = v6;
  *(a2 + 88) = v5;
  return result;
}

uint64_t ResettableDateDisplayItem.updateHandler.getter()
{
  v1 = *(v0 + 80);
  sub_1B9F0F1B8(v1);
  return v1;
}

uint64_t ResettableDateDisplayItem.updateHandler.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B9F0E310(*(v2 + 80));
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t ResettableDateDisplayItem.init(title:placeholderText:dataProvider:updateHandler:cellSelectionHandler:isEditEnabled:uniqueIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14)
{
  v39 = a7;
  v40 = a8;
  v37 = a5;
  v38 = a6;
  v32 = a2;
  v16 = a14;
  v35 = a11;
  v36 = a4;
  v33 = a10;
  v34 = a3;
  v17 = sub_1BA4A1798();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for ResettableCalendarDateDisplayCell();
  sub_1BA071A54();
  result = sub_1BA4A6808();
  v22 = result;
  v24 = v23;
  if (!a14)
  {
    sub_1BA4A1788();
    a13 = sub_1BA4A1748();
    v16 = v26;
    result = (*(v18 + 8))(v20, v17);
  }

  *a9 = v22;
  *(a9 + 8) = v24;
  *(a9 + 16) = a13;
  *(a9 + 24) = v16;
  v27 = v32;
  *(a9 + 32) = a1;
  *(a9 + 40) = v27;
  v29 = v36;
  v28 = v37;
  *(a9 + 48) = v34;
  *(a9 + 56) = v29;
  *(a9 + 64) = v28;
  v30 = v39;
  *(a9 + 72) = v38;
  *(a9 + 80) = v30;
  v31 = v33;
  *(a9 + 88) = v40;
  *(a9 + 96) = v31;
  *(a9 + 104) = v35;
  *(a9 + 112) = a12 & 1;
  return result;
}

unint64_t sub_1BA071A54()
{
  result = qword_1EBBEAD80;
  if (!qword_1EBBEAD80)
  {
    type metadata accessor for ResettableCalendarDateDisplayCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBEAD80);
  }

  return result;
}

uint64_t sub_1BA071A98()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1BA071AC8()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_1BA071B00()
{
  v1 = *(v0 + 64);
  sub_1B9F0F1B8(v1);
  return v1;
}

uint64_t sub_1BA071B38(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  result = sub_1B9F0E310(*(v2 + 64));
  *(v2 + 64) = a1;
  *(v2 + 72) = v4;
  return result;
}

void *(*sub_1BA071B74(void *a1))(void *result)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  if (!v2)
  {
    v3 = 0;
  }

  *a1 = v2;
  a1[1] = v3;
  a1[2] = v1;
  return sub_1BA071BA8;
}

void *sub_1BA071BA8(void *result)
{
  v2 = result[1];
  v1 = result[2];
  if (!*result)
  {
    v2 = 0;
  }

  *(v1 + 64) = *result;
  *(v1 + 72) = v2;
  return result;
}

uint64_t sub_1BA071BC0()
{
  v1 = *(v0 + 80);
  sub_1B9F0F1B8(v1);
  return v1;
}

uint64_t sub_1BA071BF8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  result = sub_1B9F0E310(*(v2 + 80));
  *(v2 + 80) = a1;
  *(v2 + 88) = v4;
  return result;
}

void *(*sub_1BA071C34(void *a1))(void *result)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  if (!v2)
  {
    v3 = 0;
  }

  *a1 = v2;
  a1[1] = v3;
  a1[2] = v1;
  return sub_1BA071C68;
}

void *sub_1BA071C68(void *result)
{
  v2 = result[1];
  v1 = result[2];
  if (!*result)
  {
    v2 = 0;
  }

  *(v1 + 80) = *result;
  *(v1 + 88) = v2;
  return result;
}

uint64_t sub_1BA071C80(uint64_t a1)
{
  v2 = sub_1BA074B60();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

uint64_t ResettableCalendarDateDisplayCell.deselectionBehavior(in:)@<X0>(char *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_item;
  swift_beginAccess();
  sub_1B9F68124(v1 + v3, v10);
  if (!v11)
  {
    result = sub_1B9F43C48(v10, &qword_1EDC6E1A0, sub_1B9FCD918);
LABEL_6:
    v5 = 0;
    goto LABEL_7;
  }

  sub_1B9FCD918();
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_1B9F0E310(v6);
  sub_1B9F0E310(v7);
  result = sub_1B9F0E310(v8);
  if ((v9 & 1) == 0)
  {
    goto LABEL_6;
  }

  v5 = 1;
LABEL_7:
  *a1 = v5;
  return result;
}

uint64_t sub_1BA071E60(uint64_t a1, uint64_t *a2)
{
  sub_1B9F68124(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v6, v3 + v4);
  swift_endAccess();
  sub_1BA073834();
  return sub_1B9F43C48(v6, &qword_1EDC6E1A0, sub_1B9FCD918);
}

uint64_t sub_1BA071EEC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA071F44(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA073834();
  return sub_1B9F43C48(a1, &qword_1EDC6E1A0, sub_1B9FCD918);
}

void (*sub_1BA071FCC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA072030;
}

void sub_1BA072030(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1BA073834();
  }
}

id sub_1BA072064()
{
  v0 = [objc_opt_self() preferredFontForTextStyle_];
  v1 = [objc_opt_self() configurationWithFont_];

  v2 = v1;
  v3 = sub_1BA4A6758();
  v4 = [objc_opt_self() systemImageNamed:v3 withConfiguration:v2];

  v5 = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  [v5 setImage:v4 forState:0];
  v6 = [objc_opt_self() redColor];
  [v5 setTintColor_];

  [v5 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
  v7 = [v5 imageView];
  if (v7)
  {
    v8 = v7;
    [v7 setContentMode_];
  }

  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v9) = 1148846080;
  [v5 setContentCompressionResistancePriority:0 forAxis:v9];

  return v5;
}

char *sub_1BA072230(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_1BA4A3EA8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v81 - v15;
  v17 = &v5[OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_item];
  *v17 = 0u;
  *(v17 + 1) = 0u;
  *(v17 + 4) = 0;
  v18 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  v19 = *MEMORY[0x1E69DDCF8];
  v20 = objc_opt_self();
  v21 = [v20 preferredFontDescriptorWithTextStyle:v19 compatibleWithTraitCollection:0];
  if (v21)
  {
    v22 = v21;
    v23 = [objc_opt_self() fontWithDescriptor:v21 size:0.0];
  }

  else
  {
    v83 = v20;
    v87 = v13;
    sub_1BA4A3DD8();
    v24 = v19;
    v25 = sub_1BA4A3E88();
    v26 = sub_1BA4A6FB8();
    v86 = v24;

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v84 = v11;
      v28 = v27;
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v90 = v82;
      *v28 = 136315906;
      v29 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v85 = v10;
      v31 = sub_1B9F0B82C(v29, v30, &v90);

      *(v28 + 4) = v31;
      *(v28 + 12) = 2080;
      v88 = 0;
      v89 = 1;
      sub_1B9F0CFD4(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v32 = sub_1BA4A6808();
      v34 = sub_1B9F0B82C(v32, v33, &v90);

      *(v28 + 14) = v34;
      *(v28 + 22) = 2080;
      LODWORD(v88) = 0;
      type metadata accessor for SymbolicTraits(0);
      v35 = sub_1BA4A6808();
      v37 = sub_1B9F0B82C(v35, v36, &v90);
      v10 = v85;

      *(v28 + 24) = v37;
      *(v28 + 32) = 2112;
      v38 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v28 + 34) = v38;
      v39 = v81;
      *v81 = v38;
      _os_log_impl(&dword_1B9F07000, v25, v26, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v28, 0x2Au);
      sub_1B9F8C6C8(v39);
      MEMORY[0x1BFAF43A0](v39, -1, -1);
      v40 = v82;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v40, -1, -1);
      v41 = v28;
      v11 = v84;
      MEMORY[0x1BFAF43A0](v41, -1, -1);
    }

    (*(v11 + 8))(v16, v10);
    v20 = v83;
    v42 = [v83 preferredFontDescriptorWithTextStyle_];
    v23 = [objc_opt_self() fontWithDescriptor:v42 size:0.0];

    v13 = v87;
  }

  v43 = OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_titleLabel;
  [v18 setFont_];

  [v18 setTextAlignment_];
  [v18 setNumberOfLines_];
  [v18 setAdjustsFontForContentSizeCategory_];
  v44 = objc_opt_self();
  v45 = [v44 labelColor];
  [v18 setTextColor_];

  *&v5[v43] = v18;
  v46 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v46 setTranslatesAutoresizingMaskIntoConstraints_];
  v47 = [v20 preferredFontDescriptorWithTextStyle:v19 compatibleWithTraitCollection:0];
  if (v47)
  {
    v48 = v47;
    v49 = [objc_opt_self() fontWithDescriptor:v47 size:0.0];
  }

  else
  {
    sub_1BA4A3DD8();
    v50 = v19;
    v51 = sub_1BA4A3E88();
    v52 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v87 = v13;
      v54 = v53;
      v83 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v90 = v86;
      *v54 = 136315906;
      v55 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v85 = v10;
      v57 = sub_1B9F0B82C(v55, v56, &v90);
      v84 = v11;
      v58 = v57;

      *(v54 + 4) = v58;
      *(v54 + 12) = 2080;
      v88 = 0;
      v89 = 1;
      sub_1B9F0CFD4(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v59 = sub_1BA4A6808();
      v61 = sub_1B9F0B82C(v59, v60, &v90);

      *(v54 + 14) = v61;
      *(v54 + 22) = 2080;
      LODWORD(v88) = 0;
      type metadata accessor for SymbolicTraits(0);
      v62 = sub_1BA4A6808();
      v64 = sub_1B9F0B82C(v62, v63, &v90);

      *(v54 + 24) = v64;
      *(v54 + 32) = 2112;
      v65 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v54 + 34) = v65;
      v66 = v83;
      *v83 = v65;
      _os_log_impl(&dword_1B9F07000, v51, v52, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v54, 0x2Au);
      sub_1B9F8C6C8(v66);
      MEMORY[0x1BFAF43A0](v66, -1, -1);
      v67 = v86;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v67, -1, -1);
      MEMORY[0x1BFAF43A0](v54, -1, -1);

      (*(v84 + 8))(v87, v85);
    }

    else
    {

      (*(v11 + 8))(v13, v10);
    }

    v48 = [v20 preferredFontDescriptorWithTextStyle_];
    v49 = [objc_opt_self() fontWithDescriptor:v48 size:0.0];
  }

  v68 = v49;

  v69 = OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_dateLabel;
  [v46 setFont_];

  [v46 setTextAlignment_];
  [v46 setNumberOfLines_];
  [v46 setAdjustsFontForContentSizeCategory_];
  v70 = [v44 labelColor];
  [v46 setTextColor_];

  *&v5[v69] = v46;
  v71 = OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_clearButton;
  *&v5[v71] = sub_1BA072064();
  v72 = MEMORY[0x1E69E7CC0];
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_titleAndValueFieldSideBySideConstraints] = MEMORY[0x1E69E7CC0];
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_titleAndValueFieldStackedConstraints] = v72;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_clearButtonWidthConstraint] = 0;
  v73 = type metadata accessor for ResettableCalendarDateDisplayCell();
  v91.receiver = v5;
  v91.super_class = v73;
  v74 = objc_msgSendSuper2(&v91, sel_initWithFrame_, a1, a2, a3, a4);
  v75 = [v74 contentView];
  [v75 addSubview_];

  v76 = [v74 contentView];
  [v76 addSubview_];

  v77 = [v74 contentView];
  v78 = OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_clearButton;
  [v77 addSubview_];

  sub_1BA072E8C();
  v79 = *&v74[v78];
  [v79 addTarget:v74 action:sel_didTapClear forControlEvents:64];

  return v74;
}

id ResettableCalendarDateDisplayCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t sub_1BA072C54()
{
  sub_1B9F0CFD4(0, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v8 - v2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_item;
  swift_beginAccess();
  sub_1B9F68124(v0 + v4, v20);
  if (!v21)
  {
    return sub_1B9F43C48(v20, &qword_1EDC6E1A0, sub_1B9FCD918);
  }

  sub_1B9FCD918();
  result = swift_dynamicCast();
  if (result)
  {
    v10[4] = v16;
    v10[5] = v17;
    v10[6] = v18;
    v11 = v19;
    v10[0] = v12;
    v10[1] = v13;
    v10[2] = v14;
    v10[3] = v15;
    v6 = v17;
    if (v17)
    {
      v8[4] = v16;
      v8[5] = v17;
      v8[6] = v18;
      v9 = v19;
      v8[0] = v12;
      v8[1] = v13;
      v8[2] = v14;
      v8[3] = v15;
      v7 = sub_1BA4A1728();
      (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
      v6(v8, v3);
      sub_1B9F43C48(v3, &qword_1EDC6E440, MEMORY[0x1E6969530]);
    }

    return sub_1BA074DA4(v10);
  }

  return result;
}

void sub_1BA072E8C()
{
  v1 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_clearButton];
  v2 = [v1 widthAnchor];
  v3 = [v2 constraintEqualToConstant_];

  v4 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_clearButtonWidthConstraint];
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_clearButtonWidthConstraint] = v3;

  sub_1B9F109F8();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BA4B5880;
  v6 = [v0 contentView];
  v7 = [v6 bottomAnchor];

  v8 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_titleLabel];
  v9 = [v8 bottomAnchor];
  v10 = [v7 constraintEqualToAnchor:v9 constant:12.0];

  *(v5 + 32) = v10;
  v11 = [v1 leadingAnchor];
  v12 = [v8 trailingAnchor];
  v13 = [v11 constraintGreaterThanOrEqualToAnchor:v12 constant:8.0];

  *(v5 + 40) = v13;
  v14 = [v1 topAnchor];
  v15 = [v0 contentView];
  v16 = [v15 topAnchor];

  v17 = [v14 &selRef:v16 objectAtIndex:12.0 + 6];
  *(v5 + 48) = v17;
  v18 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_dateLabel];
  v19 = [v18 topAnchor];
  v20 = [v0 contentView];
  v21 = [v20 topAnchor];

  v22 = [v19 &selRef:v21 objectAtIndex:12.0 + 6];
  *(v5 + 56) = v22;
  v23 = [v18 trailingAnchor];
  v24 = [v0 contentView];
  v25 = [v24 layoutMarginsGuide];

  v26 = [v25 trailingAnchor];
  v27 = [v23 constraintEqualToAnchor_];

  *(v5 + 64) = v27;
  v77 = OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_titleAndValueFieldSideBySideConstraints;
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_titleAndValueFieldSideBySideConstraints] = v5;

  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1BA4B5880;
  v29 = [v8 &selRef_cloudSyncObserverSyncCompleted_ + 4];
  v30 = [v0 &selRef_fetchSources];
  v31 = [v30 layoutMarginsGuide];

  v32 = [v31 &selRef_cloudSyncObserverSyncCompleted_ + 4];
  v33 = [v29 &selRef:v32 numberWithInteger:? + 5];

  *(v28 + 32) = v33;
  v34 = [v1 leadingAnchor];
  v35 = [v0 &selRef_fetchSources];
  v36 = [v35 &selRef__createTableFooterView + 1];

  v37 = [v36 leadingAnchor];
  v38 = [v34 &selRef:v37 numberWithInteger:? + 5];

  *(v28 + 40) = v38;
  v39 = [v1 topAnchor];
  v40 = [v8 bottomAnchor];
  v41 = [v39 &selRef:v40 numberWithInteger:? + 5];

  *(v28 + 48) = v41;
  v42 = [v18 topAnchor];
  v43 = [v8 bottomAnchor];
  v44 = [v42 &selRef:v43 numberWithInteger:? + 5];

  *(v28 + 56) = v44;
  v45 = [v18 trailingAnchor];
  v46 = [v0 contentView];
  v47 = [v46 layoutMarginsGuide];

  v48 = [v47 trailingAnchor];
  v49 = [v45 constraintLessThanOrEqualToAnchor_];

  *(v28 + 64) = v49;
  v50 = OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_titleAndValueFieldStackedConstraints;
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_titleAndValueFieldStackedConstraints] = v28;

  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1BA4B5880;
  v52 = [v8 topAnchor];
  v53 = [v0 contentView];
  v54 = [v53 topAnchor];

  v55 = [v52 constraintEqualToAnchor:v54 constant:12.0];
  *(v51 + 32) = v55;
  v56 = [v8 leadingAnchor];
  v57 = [v0 contentView];
  v58 = [v57 layoutMarginsGuide];

  v59 = [v58 leadingAnchor];
  v60 = [v56 constraintEqualToAnchor_];

  *(v51 + 40) = v60;
  v61 = [v18 leadingAnchor];
  v62 = [v1 trailingAnchor];
  v63 = [v61 constraintEqualToAnchor_];

  *(v51 + 48) = v63;
  v64 = [v0 &selRef_fetchSources];
  v65 = [v64 bottomAnchor];

  v66 = [v18 bottomAnchor];
  v67 = [v65 constraintEqualToAnchor:v66 constant:12.0];

  *(v51 + 56) = v67;
  v68 = [v0 &selRef_fetchSources];
  v69 = [v68 bottomAnchor];

  v70 = [v1 bottomAnchor];
  v71 = [v69 constraintEqualToAnchor:v70 constant:12.0];

  *(v51 + 64) = v71;
  v72 = [v0 traitCollection];
  v73 = [v72 preferredContentSizeCategory];

  LOBYTE(v72) = sub_1BA4A74F8();
  v74 = v77;
  if (v72)
  {
    v74 = v50;
  }

  v75 = *&v0[v74];

  v76 = objc_opt_self();
  sub_1B9F73B50(v75);
  sub_1B9F0ADF8(0, &qword_1EDC6B570);
  v78 = sub_1BA4A6AE8();

  [v76 activateConstraints_];
}

void sub_1BA073834()
{
  sub_1B9F0CFD4(0, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v21 - v2;
  v4 = sub_1BA4A1728();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_item;
  swift_beginAccess();
  sub_1B9F68124(v0 + v8, v39);
  if (!v40)
  {
    sub_1B9F43C48(v39, &qword_1EDC6E1A0, sub_1B9FCD918);
    return;
  }

  sub_1B9FCD918();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v27 = v35;
  v28 = v36;
  v29 = v37;
  v30 = v38;
  v23 = v31;
  v24 = v32;
  v25 = v33;
  v26 = v34;
  v9 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_titleLabel);
  v10 = sub_1BA4A6758();
  [v9 setText_];

  if (v27)
  {
    v21[4] = v27;
    v21[5] = v28;
    v21[6] = v29;
    v22 = v30;
    v21[0] = v23;
    v21[1] = v24;
    v21[2] = v25;
    v21[3] = v26;
    v11 = v0;
    (v27)(v21);
    if ((*(v5 + 48))(v3, 1, v4) != 1)
    {
      (*(v5 + 32))(v7, v3, v4);
      v12 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
      [v12 setDateStyle_];
      [v12 setTimeStyle_];
      v13 = sub_1BA4A16B8();
      v14 = [v12 stringFromDate_];

      if (!v14)
      {
        _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v14 = sub_1BA4A6758();
      }

      v15 = *(v11 + OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_dateLabel);
      [v15 setText_];

      v16 = [objc_opt_self() labelColor];
      [v15 setTextColor_];

      LOBYTE(v16) = v30;
      [*(v11 + OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_clearButton) setHidden_];
      [*(v11 + OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_clearButtonWidthConstraint) setActive_];

      sub_1BA074DA4(&v23);
      (*(v5 + 8))(v7, v4);
      return;
    }
  }

  else
  {
    (*(v5 + 56))(v3, 1, 1, v4);
  }

  sub_1B9F43C48(v3, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  v17 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_dateLabel);
  if (*(&v26 + 1))
  {

    v18 = sub_1BA4A6758();
  }

  else
  {
    v18 = 0;
  }

  [v17 setText_];

  [v17 setEnabled_];
  v19 = [objc_opt_self() systemBlueColor];
  [v17 setTextColor_];

  [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_clearButton) setHidden_];
  v20 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_clearButtonWidthConstraint);
  [v20 setActive_];
  sub_1BA074DA4(&v23);
}

void sub_1BA073D4C(void *a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for ResettableCalendarDateDisplayCell();
  objc_msgSendSuper2(&v9, sel_traitCollectionDidChange_, a1);
  if (a1)
  {
    v3 = [a1 preferredContentSizeCategory];
    v4 = sub_1BA4A74F8();

    v5 = v4 & 1;
  }

  else
  {
    v5 = 2;
  }

  v6 = [v1 traitCollection];
  v7 = [v6 preferredContentSizeCategory];

  v8 = sub_1BA4A74F8();
  if (v5 == 2 || ((v8 ^ v5) & 1) != 0)
  {
    sub_1BA073E9C();
  }
}

void sub_1BA073E9C()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  sub_1BA4A74F8();
  v3 = objc_opt_self();
  sub_1B9F0ADF8(0, &qword_1EDC6B570);

  v4 = sub_1BA4A6AE8();

  [v3 activateConstraints_];

  v5 = sub_1BA4A6AE8();

  [v3 deactivateConstraints_];
}

id ResettableCalendarDateDisplayCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ResettableCalendarDateDisplayCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA0740D4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_item;
  swift_beginAccess();
  sub_1B9F68124(v1 + v3, v11);
  if (!v12)
  {
    return sub_1B9F43C48(v11, &qword_1EDC6E1A0, sub_1B9FCD918);
  }

  sub_1B9FCD918();
  result = swift_dynamicCast();
  if (result)
  {
    if (v10 == 1)
    {
      if (!v9)
      {

        sub_1B9F0E310(v7);
        sub_1B9F0E310(v8);
        v6 = 0;
        return sub_1B9F0E310(v6);
      }

      v9(a1);

      sub_1B9F0E310(v7);
      v5 = v8;
    }

    else
    {

      sub_1B9F0E310(v7);
      v5 = v8;
    }

    sub_1B9F0E310(v5);
    v6 = v9;
    return sub_1B9F0E310(v6);
  }

  return result;
}

void _s18HealthExperienceUI33ResettableCalendarDateDisplayCellC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0;
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v65 - v7;
  v9 = v1 + OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_item;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0;
  v10 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
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
    v67 = v12;
    v71 = v5;
    sub_1BA4A3DD8();
    v16 = v11;
    v17 = sub_1BA4A3E88();
    v18 = sub_1BA4A6FB8();
    v70 = v16;

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v68 = v3;
      v20 = v19;
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v74 = v66;
      *v20 = 136315906;
      v21 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v69 = v2;
      v23 = sub_1B9F0B82C(v21, v22, &v74);

      *(v20 + 4) = v23;
      *(v20 + 12) = 2080;
      v72 = 0;
      v73 = 1;
      sub_1B9F0CFD4(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v24 = sub_1BA4A6808();
      v26 = sub_1B9F0B82C(v24, v25, &v74);

      *(v20 + 14) = v26;
      *(v20 + 22) = 2080;
      LODWORD(v72) = 0;
      type metadata accessor for SymbolicTraits(0);
      v27 = sub_1BA4A6808();
      v29 = sub_1B9F0B82C(v27, v28, &v74);
      v2 = v69;

      *(v20 + 24) = v29;
      *(v20 + 32) = 2112;
      v30 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v20 + 34) = v30;
      v31 = v65;
      *v65 = v30;
      _os_log_impl(&dword_1B9F07000, v17, v18, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v20, 0x2Au);
      sub_1B9F8C6C8(v31);
      MEMORY[0x1BFAF43A0](v31, -1, -1);
      v32 = v66;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v32, -1, -1);
      v33 = v20;
      v3 = v68;
      MEMORY[0x1BFAF43A0](v33, -1, -1);
    }

    (*(v3 + 8))(v8, v2);
    v12 = v67;
    v34 = [v67 preferredFontDescriptorWithTextStyle_];
    v15 = [objc_opt_self() fontWithDescriptor:v34 size:0.0];

    v5 = v71;
  }

  v35 = OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_titleLabel;
  [v10 setFont_];

  [v10 setTextAlignment_];
  [v10 setNumberOfLines_];
  [v10 setAdjustsFontForContentSizeCategory_];
  v36 = objc_opt_self();
  v37 = [v36 labelColor];
  [v10 setTextColor_];

  *(v1 + v35) = v10;
  v38 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v38 setTranslatesAutoresizingMaskIntoConstraints_];
  v39 = [v12 preferredFontDescriptorWithTextStyle:v11 compatibleWithTraitCollection:0];
  if (v39)
  {
    v40 = v39;
    v41 = [objc_opt_self() fontWithDescriptor:v39 size:0.0];
  }

  else
  {
    sub_1BA4A3DD8();
    v42 = v11;
    v43 = sub_1BA4A3E88();
    v44 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v71 = v5;
      v46 = v45;
      v67 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v74 = v70;
      *v46 = 136315906;
      v47 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v69 = v2;
      v49 = sub_1B9F0B82C(v47, v48, &v74);
      v68 = v3;
      v50 = v49;

      *(v46 + 4) = v50;
      *(v46 + 12) = 2080;
      v72 = 0;
      v73 = 1;
      sub_1B9F0CFD4(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v51 = sub_1BA4A6808();
      v53 = sub_1B9F0B82C(v51, v52, &v74);

      *(v46 + 14) = v53;
      *(v46 + 22) = 2080;
      LODWORD(v72) = 0;
      type metadata accessor for SymbolicTraits(0);
      v54 = sub_1BA4A6808();
      v56 = sub_1B9F0B82C(v54, v55, &v74);

      *(v46 + 24) = v56;
      *(v46 + 32) = 2112;
      v57 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v46 + 34) = v57;
      v58 = v67;
      *v67 = v57;
      _os_log_impl(&dword_1B9F07000, v43, v44, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v46, 0x2Au);
      sub_1B9F8C6C8(v58);
      MEMORY[0x1BFAF43A0](v58, -1, -1);
      v59 = v70;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v59, -1, -1);
      MEMORY[0x1BFAF43A0](v46, -1, -1);

      (*(v68 + 8))(v71, v69);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }

    v40 = [v12 preferredFontDescriptorWithTextStyle_];
    v41 = [objc_opt_self() fontWithDescriptor:v40 size:0.0];
  }

  v60 = v41;

  v61 = OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_dateLabel;
  [v38 setFont_];

  [v38 setTextAlignment_];
  [v38 setNumberOfLines_];
  [v38 setAdjustsFontForContentSizeCategory_];
  v62 = [v36 labelColor];
  [v38 setTextColor_];

  *(v1 + v61) = v38;
  v63 = OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_clearButton;
  *(v1 + v63) = sub_1BA072064();
  v64 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_titleAndValueFieldSideBySideConstraints) = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_titleAndValueFieldStackedConstraints) = v64;
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_clearButtonWidthConstraint) = 0;
  sub_1BA4A8018();
  __break(1u);
}

unint64_t sub_1BA074B38(uint64_t a1)
{
  result = sub_1BA074B60();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BA074B60()
{
  result = qword_1EBBEAD90;
  if (!qword_1EBBEAD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEAD90);
  }

  return result;
}

unint64_t sub_1BA074BB8()
{
  result = qword_1EBBEAD98;
  if (!qword_1EBBEAD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEAD98);
  }

  return result;
}

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
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
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1BA074C38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
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

uint64_t sub_1BA074C80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1BA074DD4()
{
  if (!qword_1EDC6B490)
  {
    sub_1B9F0ADF8(255, &qword_1EDC6E350);
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6B490);
    }
  }
}

uint64_t DataTypeDetailMode.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6553796C696D6166;
  v2 = 0x50676E6972616873;
  if (a1 != 2)
  {
    v2 = 0x537972616D6D7573;
  }

  if (a1)
  {
    v1 = 0x507972616D697270;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1BA074F48(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEB00000000707574;
  v3 = 0x6553796C696D6166;
  v4 = *a1;
  v5 = 0x50676E6972616873;
  v6 = 0xEE00776569766572;
  if (v4 != 2)
  {
    v5 = 0x537972616D6D7573;
    v6 = 0xEE00676E69726168;
  }

  v7 = 0x507972616D697270;
  v8 = 0xEE00656C69666F72;
  if (!*a1)
  {
    v7 = 0x6553796C696D6166;
    v8 = 0xEB00000000707574;
  }

  if (*a1 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  if (v4 <= 1)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  v11 = 0x50676E6972616873;
  v12 = 0xEE00776569766572;
  if (*a2 != 2)
  {
    v11 = 0x537972616D6D7573;
    v12 = 0xEE00676E69726168;
  }

  if (*a2)
  {
    v3 = 0x507972616D697270;
    v2 = 0xEE00656C69666F72;
  }

  if (*a2 <= 1u)
  {
    v13 = v3;
  }

  else
  {
    v13 = v11;
  }

  if (*a2 <= 1u)
  {
    v14 = v2;
  }

  else
  {
    v14 = v12;
  }

  if (v9 == v13 && v10 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1BA4A8338();
  }

  return v15 & 1;
}

uint64_t sub_1BA0750D8()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();

  return sub_1BA4A84D8();
}

uint64_t sub_1BA0751C8()
{
  sub_1BA4A68C8();
}

uint64_t sub_1BA0752A4()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();

  return sub_1BA4A84D8();
}

uint64_t sub_1BA075390@<X0>(_BYTE *a1@<X8>)
{
  result = _s18HealthExperienceUI18DataTypeDetailModeO8rawValueACSgSS_tcfC_0();
  *a1 = result;
  return result;
}

void sub_1BA0753C0(uint64_t *a1@<X8>)
{
  v2 = 0xEB00000000707574;
  v3 = 0x6553796C696D6166;
  v4 = 0xEE00776569766572;
  v5 = 0x50676E6972616873;
  if (*v1 != 2)
  {
    v5 = 0x537972616D6D7573;
    v4 = 0xEE00676E69726168;
  }

  if (*v1)
  {
    v3 = 0x507972616D697270;
    v2 = 0xEE00656C69666F72;
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

uint64_t _s18HealthExperienceUI18DataTypeDetailModeO07defaultG03for12presentationACSo19HKProfileIdentifierC_AA12PresentationOSgtFZ_0(void *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = [a1 type];
  if (v3 <= 2)
  {
    if (v3 != 1)
    {
      if (v3 == 2)
      {
        return 3;
      }

      return 1;
    }

    if (v2 == 9)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    return v3 != 3;
  }
}

uint64_t _s18HealthExperienceUI18DataTypeDetailModeO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_1BA4A8108();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1BA07553C()
{
  result = qword_1EBBEADD0;
  if (!qword_1EBBEADD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEADD0);
  }

  return result;
}

uint64_t sub_1BA0755A0@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = sub_1BA4A1798();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(type metadata accessor for NotificationSettingsSharingItem() + 20);
  v9 = sub_1BA4A33C8();
  v10 = *(v9 - 8);
  (*(v10 + 16))(a2 + v8, a1, v9);
  v18 = 0xD000000000000020;
  v19 = 0x80000001BA4E6DE0;
  v11 = sub_1BA4A33A8();
  MEMORY[0x1BFAF1350](v11);

  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  sub_1BA4A3358();
  v12 = sub_1BA4A1748();
  v14 = v13;
  (*(v5 + 8))(v7, v4);
  MEMORY[0x1BFAF1350](v12, v14);

  v15 = v18;
  v16 = v19;
  result = (*(v10 + 8))(a1, v9);
  *a2 = v15;
  a2[1] = v16;
  return result;
}

uint64_t sub_1BA075774()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v85 = *(v2 - 1);
  v86 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v78 = &v71 - v6;
  v7 = sub_1BA4A1798();
  v76 = *(v7 - 8);
  v77 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v74 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69E6720];
  sub_1B9F66270(0, &qword_1EBBE97C8, MEMORY[0x1E69A33B0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v75 = &v71 - v11;
  sub_1B9F66270(0, &qword_1EBBEADE0, sub_1BA078D4C, v9);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v71 - v13;
  v84 = sub_1BA4A33C8();
  v81 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v16 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v80 = &v71 - v18;
  v19 = sub_1BA4A4428();
  v83 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F66270(0, &qword_1EBBEADF0, type metadata accessor for NotificationSettingsSharingItem, v9);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v71 - v23;
  v25 = type metadata accessor for NotificationSettingsSharingItem();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v82 = &v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = OBJC_IVAR____TtC18HealthExperienceUI31NotificationSettingsSharingCell_item;
  swift_beginAccess();
  sub_1B9F68124(v1 + v28, v88);
  if (v89)
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0);
    v29 = swift_dynamicCast();
    (*(v26 + 56))(v24, v29 ^ 1u, 1, v25);
    if ((*(v26 + 48))(v24, 1, v25) != 1)
    {
      v30 = v24;
      v31 = v82;
      sub_1BA078E00(v30, v82);
      sub_1BA4A4418();
      v32 = *(v25 + 20);
      sub_1BA4A3328();
      sub_1BA4A43B8();
      v89 = v19;
      v90 = MEMORY[0x1E69DC110];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v88);
      (*(v83 + 16))(boxed_opaque_existential_1, v21, v19);
      MEMORY[0x1BFAF1EF0](v88);
      v73 = v19;
      v34 = v81;
      v35 = *(v81 + 16);
      v72 = v21;
      v36 = v80;
      v35(v80, v31 + v32, v84);
      sub_1BA4A32E8();
      sub_1BA078D4C();
      v38 = v37;
      v39 = *(v37 - 8);
      if ((*(v39 + 48))(v14, 1, v37) == 1)
      {
        v40 = v72;
        v41 = v73;
        sub_1BA078EC4(v14, &qword_1EBBEADE0, sub_1BA078D4C);
        v42 = v78;
        sub_1BA4A3DD8();
        v43 = sub_1BA4A3E88();
        v44 = sub_1BA4A6FA8();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v88[0] = v46;
          *v45 = 136315138;
          v47 = sub_1BA4A85D8();
          v49 = sub_1B9F0B82C(v47, v48, v88);

          *(v45 + 4) = v49;
          _os_log_impl(&dword_1B9F07000, v43, v44, "[%s] could not find associated profileIdentifier to update cell with", v45, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v46);
          MEMORY[0x1BFAF43A0](v46, -1, -1);
          MEMORY[0x1BFAF43A0](v45, -1, -1);
        }

        (*(v85 + 8))(v42, v86);
        (*(v81 + 8))(v80, v84);
        (*(v83 + 8))(v40, v41);
      }

      else
      {
        v86 = sub_1BA4A65C8();
        (*(v39 + 8))(v14, v38);
        v62 = v75;
        sub_1BA4A3278();
        v35(v16, v36, v84);
        v63 = v86;
        v64 = [v86 identifier];
        v65 = v74;
        sub_1BA4A1778();

        v66 = v63;
        sub_1BA076BDC(v62, v16, v65, [v63 type], v1);
        (*(v76 + 8))(v65, v77);
        v67 = *(v34 + 8);
        v68 = v16;
        v69 = v84;
        v67(v68, v84);
        v70 = MEMORY[0x1E69A33B0];
        sub_1BA078EC4(v62, &qword_1EBBE97C8, MEMORY[0x1E69A33B0]);
        sub_1BA4A3278();
        sub_1B9FD44D4(v62);

        sub_1BA078EC4(v62, &qword_1EBBE97C8, v70);
        v67(v36, v69);
        (*(v83 + 8))(v72, v73);
      }

      return sub_1BA078E64(v82, type metadata accessor for NotificationSettingsSharingItem);
    }
  }

  else
  {
    sub_1B9F7B644(v88);
    (*(v26 + 56))(v24, 1, 1, v25);
  }

  sub_1BA078EC4(v24, &qword_1EBBEADF0, type metadata accessor for NotificationSettingsSharingItem);
  sub_1BA4A3D88();
  v50 = v1;
  v51 = sub_1BA4A3E88();
  v52 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v87 = v54;
    *v53 = 136315394;
    v55 = sub_1BA4A85D8();
    v57 = sub_1B9F0B82C(v55, v56, &v87);

    *(v53 + 4) = v57;
    *(v53 + 12) = 2080;
    sub_1B9F68124(v1 + v28, v88);
    sub_1B9F0CF6C(0, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], MEMORY[0x1E69E6720]);
    v58 = sub_1BA4A6808();
    v60 = sub_1B9F0B82C(v58, v59, &v87);

    *(v53 + 14) = v60;
    _os_log_impl(&dword_1B9F07000, v51, v52, "[%s] Expected NotificationSettingsSharingItem; got %s", v53, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v54, -1, -1);
    MEMORY[0x1BFAF43A0](v53, -1, -1);
  }

  return (*(v85 + 8))(v4, v86);
}

uint64_t sub_1BA076200()
{
  sub_1B9F66270(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = aBlock - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = aBlock - v8;
  v10 = sub_1BA4A40A8();
  v11 = type metadata accessor for NotificationSettingsSharingCell();
  v26.receiver = v0;
  v26.super_class = v11;
  objc_msgSendSuper2(&v26, sel__bridgedUpdateConfigurationUsingState_, v10);

  if (sub_1BA4A4068() & 1) != 0 || (sub_1BA4A4078())
  {
    MEMORY[0x1BFAF1F00]();
    v12 = sub_1BA4A4168();
    if ((*(*(v12 - 8) + 48))(v9, 1, v12))
    {
      v13 = MEMORY[0x1E69DC0D8];
      sub_1BA078F98(v9, v6, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
      MEMORY[0x1BFAF1F10](v6);
      v14 = v9;
      return sub_1BA078EC4(v14, &qword_1EDC6B770, v13);
    }

    v15 = objc_opt_self();
    v16 = [v15 systemGray5Color];
    v17 = [v15 tertiarySystemGroupedBackgroundColor];
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = v17;
    v18[4] = 0;
    v18[5] = v16;
    v19 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    aBlock[4] = sub_1B9FE1088;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B9F7EBBC;
    aBlock[3] = &block_descriptor_15;
    v20 = _Block_copy(aBlock);
    [v19 initWithDynamicProvider_];
    _Block_release(v20);

    sub_1BA4A4118();
    v21 = v9;
  }

  else
  {
    MEMORY[0x1BFAF1F00]();
    v22 = sub_1BA4A4168();
    if ((*(*(v22 - 8) + 48))(v3, 1, v22))
    {
      v13 = MEMORY[0x1E69DC0D8];
      sub_1BA078F98(v3, v6, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
      MEMORY[0x1BFAF1F10](v6);
      v14 = v3;
      return sub_1BA078EC4(v14, &qword_1EDC6B770, v13);
    }

    v24 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    sub_1BA4A4118();
    v21 = v3;
  }

  return MEMORY[0x1BFAF1F10](v21);
}

id sub_1BA07679C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotificationSettingsSharingCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA076804@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI31NotificationSettingsSharingCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA07685C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI31NotificationSettingsSharingCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA075774();
  return sub_1B9F7B644(a1);
}

uint64_t (*sub_1BA0768C8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA07692C;
}

uint64_t sub_1BA07692C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1BA075774();
  }

  return result;
}

void sub_1BA076960(void *a1)
{
  v1 = [a1 navigationController];
  if (v1)
  {
    v2 = v1;
  }
}

id sub_1BA0769FC()
{
  v0 = objc_opt_self();
  v1 = [v0 systemGray5Color];
  v2 = [v0 tertiarySystemGroupedBackgroundColor];
  v3 = swift_allocObject();
  v3[2] = 0;
  v3[3] = v2;
  v3[4] = 0;
  v3[5] = v1;
  v4 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v8[4] = sub_1B9FD7F54;
  v8[5] = v3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1B9F7EBBC;
  v8[3] = &block_descriptor_16;
  v5 = _Block_copy(v8);
  v6 = [v4 initWithDynamicProvider_];
  _Block_release(v5);

  return v6;
}

uint64_t sub_1BA076B28()
{
  type metadata accessor for NotificationSettingsSharingCell();
  sub_1BA07914C();
  return sub_1BA4A6808();
}

uint64_t sub_1BA076B60(uint64_t a1)
{
  v2 = sub_1BA079104(&qword_1EBBEAE10, type metadata accessor for NotificationSettingsSharingItem);

  return MEMORY[0x1EEE0DA58](a1, v2);
}

uint64_t sub_1BA076BDC(uint64_t a1, uint64_t (*a2)(_BYTE *, uint64_t, uint64_t), uint64_t a3, uint64_t a4, void *a5)
{
  v109 = a5;
  v100 = a4;
  v99 = a3;
  v110 = a2;
  v6 = type metadata accessor for SummarySharingOnboardingError();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v96 = &v90[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v95 = sub_1BA4A1798();
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v92 = v8;
  v93 = &v90[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1BA4A3158();
  v111 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v107 = &v90[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v97 = &v90[-v12];
  sub_1B9FD7D5C();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v90[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x1E69A33B0];
  v18 = MEMORY[0x1E69E6720];
  sub_1B9F66270(0, &qword_1EBBE97C8, MEMORY[0x1E69A33B0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v98 = &v90[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21);
  v103 = &v90[-v22];
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v90[-v24];
  sub_1B9F66270(0, &qword_1EBBE97F8, MEMORY[0x1E69A33C8], v18);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v90[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v90[-v30];
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v90[-v33];
  v35 = sub_1BA4A33C8();
  v36 = MEMORY[0x1EEE9AC00](v35);
  v104 = &v90[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v105 = v38;
  v39 = *(v38 + 16);
  v106 = v40;
  v39(v36);
  v108 = a1;
  sub_1BA078F98(a1, v25, &qword_1EBBE97C8, v17);
  v41 = sub_1BA4A3118();
  v42 = *(v41 - 8);
  v110 = *(v42 + 48);
  v43 = v110(v25, 1, v41);
  v102 = v41;
  v101 = v42;
  if (v43 == 1)
  {
    sub_1BA078EC4(v25, &qword_1EBBE97C8, MEMORY[0x1E69A33B0]);
    v44 = 1;
  }

  else
  {
    sub_1BA4A30F8();
    (*(v42 + 8))(v25, v41);
    v44 = 0;
  }

  v45 = v111;
  v46 = *(v111 + 56);
  v46(v34, v44, 1, v9);
  (*(v45 + 104))(v31, *MEMORY[0x1E69A33C0], v9);
  v46(v31, 0, 1, v9);
  v47 = *(v14 + 48);
  v48 = MEMORY[0x1E69A33C8];
  sub_1BA078F98(v34, v16, &qword_1EBBE97F8, MEMORY[0x1E69A33C8]);
  sub_1BA078F98(v31, &v16[v47], &qword_1EBBE97F8, v48);
  v49 = *(v45 + 48);
  if (v49(v16, 1, v9) == 1)
  {
    v50 = MEMORY[0x1E69A33C8];
    sub_1BA078EC4(v31, &qword_1EBBE97F8, MEMORY[0x1E69A33C8]);
    sub_1BA078EC4(v34, &qword_1EBBE97F8, v50);
    v51 = v49(&v16[v47], 1, v9);
    v52 = v102;
    if (v51 == 1)
    {
      sub_1BA078EC4(v16, &qword_1EBBE97F8, MEMORY[0x1E69A33C8]);
      v53 = 0;
LABEL_10:
      v55 = v108;
      v56 = v109;
      v57 = v107;
      goto LABEL_12;
    }

LABEL_9:
    sub_1BA078E64(v16, sub_1B9FD7D5C);
    v53 = 1;
    goto LABEL_10;
  }

  sub_1BA078F98(v16, v28, &qword_1EBBE97F8, MEMORY[0x1E69A33C8]);
  if (v49(&v16[v47], 1, v9) == 1)
  {
    v54 = MEMORY[0x1E69A33C8];
    sub_1BA078EC4(v31, &qword_1EBBE97F8, MEMORY[0x1E69A33C8]);
    sub_1BA078EC4(v34, &qword_1EBBE97F8, v54);
    (*(v111 + 8))(v28, v9);
    v52 = v102;
    goto LABEL_9;
  }

  v58 = v111;
  v59 = v97;
  (*(v111 + 32))(v97, &v16[v47], v9);
  sub_1BA079104(&qword_1EBBE9800, MEMORY[0x1E69A33C8]);
  v91 = sub_1BA4A6728();
  v60 = *(v58 + 8);
  v60(v59, v9);
  v61 = MEMORY[0x1E69A33C8];
  sub_1BA078EC4(v31, &qword_1EBBE97F8, MEMORY[0x1E69A33C8]);
  sub_1BA078EC4(v34, &qword_1EBBE97F8, v61);
  v60(v28, v9);
  sub_1BA078EC4(v16, &qword_1EBBE97F8, v61);
  v53 = v91 ^ 1;
  v55 = v108;
  v56 = v109;
  v57 = v107;
  v52 = v102;
LABEL_12:
  [v56 setUserInteractionEnabled_];
  v62 = v103;
  sub_1BA078F98(v55, v103, &qword_1EBBE97C8, MEMORY[0x1E69A33B0]);
  if (v110(v62, 1, v52) == 1)
  {
    (*(v105 + 8))(v104, v106);
    return sub_1BA078EC4(v62, &qword_1EBBE97C8, MEMORY[0x1E69A33B0]);
  }

  sub_1BA4A30F8();
  v64 = *(v101 + 8);
  v64(v62, v52);
  v65 = v111;
  if ((*(v111 + 88))(v57, v9) != *MEMORY[0x1E69A33B8])
  {
    (*(v105 + 8))(v104, v106);
    return (*(v65 + 8))(v57, v9);
  }

  (*(v65 + 8))(v57, v9);
  v66 = v98;
  sub_1BA078F98(v55, v98, &qword_1EBBE97C8, MEMORY[0x1E69A33B0]);
  if (v110(v66, 1, v52) == 1)
  {
    sub_1BA078EC4(v66, &qword_1EBBE97C8, MEMORY[0x1E69A33B0]);
LABEL_23:
    v84 = [v56 viewController];
    v85 = v104;
    v86 = v106;
    v87 = sub_1BA4A2AB8();
    v89 = v88;
    (*(v105 + 8))(v85, v86);
    sub_1BA199AD4(v84, v87, v89, v99, v100);
  }

  v67 = sub_1BA4A3108();
  v69 = v68;
  v64(v66, v52);
  if (v69)
  {
    goto LABEL_23;
  }

  v70 = [v56 viewController];
  if (!v70)
  {
    goto LABEL_23;
  }

  v71 = v70;
  (*(v105 + 8))(v104, v106);
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v72 = v94;
  v73 = v93;
  v74 = v95;
  (*(v94 + 16))(v93, v99, v95);
  v75 = (*(v72 + 80) + 16) & ~*(v72 + 80);
  v76 = (v92 + v75 + 7) & 0xFFFFFFFFFFFFFFF8;
  v77 = swift_allocObject();
  (*(v72 + 32))(&v77[v75], v73, v74);
  *&v77[v76] = v100;
  v78 = sub_1BA4A6758();
  aBlock[4] = sub_1B9FD80C8;
  aBlock[5] = v77;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BA0B06D4;
  aBlock[3] = &block_descriptor_8;
  v79 = _Block_copy(aBlock);

  v80 = [objc_opt_self() actionWithTitle:v78 style:0 handler:v79];
  _Block_release(v79);

  type metadata accessor for HKError(0);
  v112 = v67;
  sub_1BA198DE4(MEMORY[0x1E69E7CC0]);
  sub_1BA079104(&qword_1EBBE9090, type metadata accessor for HKError);
  sub_1BA4A1478();
  v81 = v96;
  SummarySharingOnboardingError.init(error:)(aBlock[0], v96);
  sub_1B9F1C048(0, &qword_1EDC6B400);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5470;
  *(inited + 32) = v80;
  v83 = v80;
  sub_1BA0C6BA4(v71, 0, 0, 0, 0, inited, 0, 0);

  swift_setDeallocating();
  swift_arrayDestroy();
  return sub_1BA078E64(v81, type metadata accessor for SummarySharingOnboardingError);
}

uint64_t sub_1BA0779FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v79 = a5;
  v80 = a2;
  v77 = a4;
  v85 = sub_1BA4A1798();
  *&v90 = *(v85 - 1);
  MEMORY[0x1EEE9AC00](v85);
  v84 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F66270(0, &qword_1EDC5F360, sub_1BA078F34, MEMORY[0x1E695C070]);
  v89 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v74 - v12;
  v14 = sub_1BA4A33C8();
  v94[3] = v14;
  v94[4] = MEMORY[0x1E69A3418];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v94);
  (*(*(v14 - 8) + 32))(boxed_opaque_existential_1, a3, v14);
  v83 = OBJC_IVAR____TtC18HealthExperienceUI38ProfileSharingWithYouOptionsDataSource_areNotificationsDisabled;
  *(a6 + OBJC_IVAR____TtC18HealthExperienceUI38ProfileSharingWithYouOptionsDataSource_areNotificationsDisabled) = 0;
  v16 = MEMORY[0x1E69E7CC0];
  v76 = OBJC_IVAR____TtC18HealthExperienceUI38ProfileSharingWithYouOptionsDataSource_notificationSettingsDataSources;
  *(a6 + OBJC_IVAR____TtC18HealthExperienceUI38ProfileSharingWithYouOptionsDataSource_notificationSettingsDataSources) = MEMORY[0x1E69E7CC0];
  *(a6 + OBJC_IVAR____TtC18HealthExperienceUI38ProfileSharingWithYouOptionsDataSource_notificationCancellable) = 0;
  v17 = OBJC_IVAR____TtC18HealthExperienceUI38ProfileSharingWithYouOptionsDataSource_notificationManager;
  sub_1BA4A1BC8();
  v18 = sub_1BA4A1BB8();
  v86 = a6;
  *(a6 + v17) = v18;
  v19 = objc_opt_self();
  v20 = a1;
  v78 = v19;
  v88 = [v19 defaultCenter];
  sub_1B9F0ADF8(0, &qword_1EDC6B610);
  v21 = sub_1BA4A70E8();
  v22 = type metadata accessor for SharedProfileNotificationSettingsManager();
  v23 = objc_allocWithZone(v22);
  v24 = OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_lock;
  sub_1BA4A1C18();
  swift_allocObject();
  *&v23[v24] = sub_1BA4A1C08();
  v25 = OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager__currentValues;
  *&v95 = sub_1B9FDB444(v16);
  sub_1BA078F34();
  sub_1BA4A4EE8();
  (*(v11 + 32))(&v23[v25], v13, v89);
  *&v23[OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_healthStore] = v20;
  v26 = *MEMORY[0x1E696C890];
  v27 = objc_allocWithZone(MEMORY[0x1E696C210]);
  v28 = v20;
  v29 = [v27 initWithCategory:1 domainName:v26 healthStore:v28];
  *&v23[OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_legacyKeyValueDomain] = v29;
  *&v23[OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_notificationCenter] = v88;
  *&v23[OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_userDefaults] = v21;
  v93.receiver = v23;
  v93.super_class = v22;
  v82 = objc_msgSendSuper2(&v93, sel_init);
  v75 = v28;

  v30 = 0;
  v81 = (v90 + 8);
  v92 = v16;
  v90 = xmmword_1BA4B5480;
  v31 = v84;
  v32 = v85;
  do
  {
    v89 = v30;
    v33 = *(&unk_1F37FBDD0 + v30 + 32);
    sub_1B9F0A534(v94, &v95);
    v34 = *(v86 + v83);
    type metadata accessor for ProfileSharingWithYouNotificationSettingsDataSource();
    v35 = swift_allocObject();
    sub_1B9F0A534(&v95, v35 + OBJC_IVAR____TtC18HealthExperienceUI51ProfileSharingWithYouNotificationSettingsDataSource_profileInformation);
    *(v35 + OBJC_IVAR____TtC18HealthExperienceUI51ProfileSharingWithYouNotificationSettingsDataSource_notificationType) = v33;
    *(v35 + OBJC_IVAR____TtC18HealthExperienceUI51ProfileSharingWithYouNotificationSettingsDataSource_areNotificationsDisabled) = v34;
    v87 = v35;
    LOBYTE(v91[0]) = v33;
    v36 = type metadata accessor for ProfileSharingWithYouNotificationSettingsItem();
    swift_allocObject();
    v88 = v82;
    v37 = sub_1BA29F0B0(v91, v88, v34);
    *(v35 + OBJC_IVAR____TtC18HealthExperienceUI51ProfileSharingWithYouNotificationSettingsDataSource_item) = v37;
    sub_1B9F1C048(0, &qword_1EDC5DC90);
    inited = swift_initStackObject();
    *(inited + 16) = v90;
    sub_1B9F0CF6C(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
    v39 = swift_allocObject();
    *(v39 + 16) = v90;
    *(v39 + 56) = v36;
    *(v39 + 64) = sub_1BA079104(&qword_1EBBEADF8, type metadata accessor for ProfileSharingWithYouNotificationSettingsItem);
    *(v39 + 32) = v37;

    sub_1BA4A1788();
    v40 = sub_1BA4A1748();
    v42 = v41;
    v43 = *v81;
    (*v81)(v31, v32);
    v44 = MEMORY[0x1E69E7CC0];
    *(inited + 48) = MEMORY[0x1E69E7CC0];
    *(inited + 56) = sub_1B9F1C5F0(v44);
    *(inited + 32) = 0;
    *(inited + 40) = 0;

    *(inited + 48) = v39;
    v45 = Array<A>.identifierToIndexDict()(v39);

    *(inited + 56) = v45;
    *(inited + 64) = v40;
    *(inited + 72) = v42;
    v91[0] = 0;
    v91[1] = 0xE000000000000000;
    sub_1BA4A7DF8();

    strcpy(v91, "MutableArray<");
    HIWORD(v91[1]) = -4864;
    sub_1BA4A1788();
    v46 = sub_1BA4A1748();
    v48 = v47;
    v43(v31, v32);
    MEMORY[0x1BFAF1350](v46, v48);

    MEMORY[0x1BFAF1350](62, 0xE100000000000000);
    MutableArrayDataSource.init(arrangedSections:identifier:)(inited, v91[0], v91[1]);
    v49 = v88;

    __swift_destroy_boxed_opaque_existential_1(&v95);

    MEMORY[0x1BFAF1510](v50);
    if (*((v92 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v92 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BA4A6B68();
    }

    v51 = v89 + 1;
    sub_1BA4A6BB8();

    v30 = v51;
  }

  while (v51 != 3);
  *(v86 + v76) = v92;

  v53 = sub_1B9FE98D4(v52);

  sub_1B9F0A534(v94, v91);
  v54 = qword_1EBBE8598;
  *&v90 = v75;
  if (v54 != -1)
  {
    swift_once();
  }

  v55 = *algn_1EBBEF348;
  v89 = qword_1EBBEF340;
  v56 = objc_opt_self();
  v87 = v55;

  v85 = [v56 secondarySystemGroupedBackgroundColor];
  if (qword_1EBBE85A0 != -1)
  {
    swift_once();
  }

  v57 = qword_1EBBEF350;
  v58 = *algn_1EBBEF358;
  v59 = qword_1EBBE85A8;

  if (v59 != -1)
  {
    swift_once();
  }

  v60 = qword_1EBBEF360;
  v61 = *algn_1EBBEF368;
  v62 = qword_1EBBE85B0;
  swift_bridgeObjectRetain_n();
  if (v62 != -1)
  {
    swift_once();
  }

  v63 = qword_1EBBEF370;
  v64 = *algn_1EBBEF378;
  v65 = qword_1EBBE85B8;

  if (v65 != -1)
  {
    swift_once();
  }

  *&v95 = v57;
  *(&v95 + 1) = v58;
  v96 = v60;
  v97 = v61;
  v98 = v60;
  v99 = v61;
  v100 = v63;
  v101 = v64;
  v102 = qword_1EBBEF380;
  v103 = *algn_1EBBEF388;
  v104 = v77;
  v105 = v79;
  type metadata accessor for EndSharingRelationshipDataSource();
  swift_allocObject();

  v66 = sub_1BA0700CC(v90, v91, 0, 0, v89, v87, v85, &v95);
  if (v66)
  {
    v67 = v66;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v53 = sub_1B9F1E00C(0, *(v53 + 16) + 1, 1, v53);
    }

    v69 = *(v53 + 16);
    v68 = *(v53 + 24);
    if (v69 >= v68 >> 1)
    {
      v53 = sub_1B9F1E00C(v68 > 1, v69 + 1, 1, v53);
    }

    *(v53 + 16) = v69 + 1;
    v70 = v53 + 16 * v69;
    *(v70 + 32) = v67;
    *(v70 + 40) = &protocol witness table for MutableArrayDataSource;
  }

  v71 = CompoundSectionedDataSource.init(_:)(v53);

  sub_1BA25F638();
  v72 = [v78 defaultCenter];
  [v72 addObserver:v71 selector:sel_fetchNotificationAuthorizationStatus name:*MEMORY[0x1E69DDBC0] object:0];

  __swift_destroy_boxed_opaque_existential_1(v80);
  __swift_destroy_boxed_opaque_existential_1(v94);
  return v71;
}

char *sub_1BA078438(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a4;
  sub_1B9F66270(0, &qword_1EBBEA318, MEMORY[0x1E69A3430], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v32 - v10;
  v12 = sub_1BA4A33C8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v33 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - v16;
  v37[3] = v18;
  v37[4] = MEMORY[0x1E69A3418];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v37);
  v32 = *(v13 + 32);
  v32(boxed_opaque_existential_1, a3, v12);
  v20 = objc_allocWithZone(type metadata accessor for ProfileSharingWithYouOptionsViewController());
  v34 = a2;
  sub_1B9F0A534(a2, v36);
  type metadata accessor for ProfileSharingWithYouOptionsDataSource();
  v21 = swift_allocObject();
  (*(v13 + 16))(v17, boxed_opaque_existential_1, v12);

  *&v20[OBJC_IVAR____TtC18HealthExperienceUI42ProfileSharingWithYouOptionsViewController_optionsDataSource] = sub_1BA0779FC(a1, v36, v17, v35, a5, v21);

  v23 = CompoundDataSourceCollectionViewController.init(dataSource:)(v22);
  sub_1BA4A2AB8();
  v24 = sub_1BA4A6758();

  [v23 setTitle_];

  sub_1B9F0A534(v37, v36);
  sub_1B9F0D950(0, &qword_1EDC6E1F0);
  v25 = swift_dynamicCast();
  v26 = *(v13 + 56);
  if (v25)
  {
    v26(v11, 0, 1, v12);
    v27 = v33;
    v32(v33, v11, v12);
    sub_1BA4A3328();
    v28 = sub_1BA4A6758();

    [v23 setTitle_];

    (*(v13 + 8))(v27, v12);
  }

  else
  {
    v26(v11, 1, 1, v12);
    sub_1BA078EC4(v11, &qword_1EBBEA318, MEMORY[0x1E69A3430]);
  }

  result = [v23 collectionView];
  if (result)
  {
    v30 = result;
    v31 = [objc_opt_self() systemGroupedBackgroundColor];
    [v30 setBackgroundColor_];

    __swift_destroy_boxed_opaque_existential_1(v34);
    __swift_destroy_boxed_opaque_existential_1(v37);
    return v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BA078844(void *a1)
{
  v35 = a1;
  v2 = sub_1BA4A33C8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v36[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = MEMORY[0x1E69E6720];
  sub_1B9F66270(0, &qword_1EBBEADE0, sub_1BA078D4C, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v36[-v8 - 8];
  sub_1B9F66270(0, &qword_1EBBEADF0, type metadata accessor for NotificationSettingsSharingItem, v6);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v36[-v11 - 8];
  v13 = type metadata accessor for NotificationSettingsSharingItem();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v36[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v17 = OBJC_IVAR____TtC18HealthExperienceUI31NotificationSettingsSharingCell_item;
  swift_beginAccess();
  sub_1B9F68124(v1 + v17, v37);
  if (!v37[3])
  {
    sub_1B9F7B644(v37);
    (*(v14 + 56))(v12, 1, 1, v13);
    goto LABEL_6;
  }

  sub_1B9F0D950(0, &qword_1EDC6E1B0);
  v18 = swift_dynamicCast();
  (*(v14 + 56))(v12, v18 ^ 1u, 1, v13);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
LABEL_6:
    v23 = &qword_1EBBEADF0;
    v24 = type metadata accessor for NotificationSettingsSharingItem;
    v25 = v12;
    return sub_1BA078EC4(v25, v23, v24);
  }

  sub_1BA078E00(v12, v16);
  v19 = *(v13 + 20);
  sub_1BA4A32E8();
  sub_1BA078D4C();
  v21 = v20;
  v22 = *(v20 - 8);
  if ((*(v22 + 48))(v9, 1, v20) == 1)
  {
    sub_1BA078E64(v16, type metadata accessor for NotificationSettingsSharingItem);
    v23 = &qword_1EBBEADE0;
    v24 = sub_1BA078D4C;
    v25 = v9;
    return sub_1BA078EC4(v25, v23, v24);
  }

  v27 = sub_1BA4A65C8();
  (*(v22 + 8))(v9, v21);
  v28 = v27;
  v29 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
  [v29 setProfileIdentifier_];
  [v29 resume];
  v30 = v35;
  UIViewController.resolvedHealthExperienceStore.getter(v37);
  sub_1B9F0A534(v37, v36);
  (*(v3 + 16))(v5, &v16[v19], v2);
  v31 = v29;
  v32 = sub_1BA078438(v31, v36, v5, sub_1BA076960, 0);

  v33 = [v30 navigationController];
  if (v33)
  {
    v34 = v33;
    [v33 pushViewController:v32 animated:1];
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1(v37);
  return sub_1BA078E64(v16, type metadata accessor for NotificationSettingsSharingItem);
}

void sub_1BA078D4C()
{
  if (!qword_1EBBEADE8)
  {
    sub_1B9F0ADF8(255, &qword_1EDC5E3D8);
    v0 = sub_1BA4A65E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEADE8);
    }
  }
}

uint64_t type metadata accessor for NotificationSettingsSharingItem()
{
  result = qword_1EBBEAE00;
  if (!qword_1EBBEAE00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA078E00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationSettingsSharingItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA078E64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BA078EC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B9F66270(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1BA078F34()
{
  if (!qword_1EDC5E878)
  {
    sub_1B9FDC8C0();
    v0 = sub_1BA4A6688();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5E878);
    }
  }
}

uint64_t sub_1BA078F98(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1B9F66270(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BA079040()
{
  result = sub_1BA4A33C8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BA079104(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BA07914C()
{
  result = qword_1EBBE9E58;
  if (!qword_1EBBE9E58)
  {
    type metadata accessor for NotificationSettingsSharingCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBE9E58);
  }

  return result;
}

void sub_1BA0791A0(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v51 = a3;
  v48[1] = swift_getObjectType();
  v7 = sub_1BA4A3EA8();
  v49 = *(v7 - 8);
  v50 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v48 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v48 - v14;
  sub_1B9F12538();
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v55[0] = a1;
  *(&v55[0] + 1) = a2;
  *&v52 = 0x616465726F632D78;
  *(&v52 + 1) = 0xEA00000000006174;
  sub_1B9F252FC();
  if ((sub_1BA4A7BC8() & 1) == 0)
  {
    sub_1BA4A3DD8();

    v39 = sub_1BA4A3E88();
    v40 = sub_1BA4A6F88();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *&v55[0] = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_1B9F0B82C(a1, a2, v55);
      _os_log_impl(&dword_1B9F07000, v39, v40, "FetchedResultsControllerDataSource cannot find the requested section with identifier %s.", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x1BFAF43A0](v42, -1, -1);
      MEMORY[0x1BFAF43A0](v41, -1, -1);
    }

    (*(v49 + 8))(v15, v50);
    goto LABEL_17;
  }

  v21 = qword_1EDC84AC8;
  swift_beginAccess();
  (*(v18 + 16))(v20, v4 + v21, v17);
  v48[0] = a1;
  *&v55[0] = a1;
  *(&v55[0] + 1) = a2;
  v22 = sub_1BA4A4468();
  v24 = v23;
  (*(v18 + 8))(v20, v17);
  if ((v24 & 1) != 0 || (v25 = qword_1EDC84AD8, swift_beginAccess(), (v26 = [*(v4 + v25) fetchedObjects]) == 0))
  {
    sub_1BA4A3D88();

    v43 = sub_1BA4A3E88();
    v44 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *&v55[0] = v46;
      *v45 = 136315138;
      *(v45 + 4) = sub_1B9F0B82C(v48[0], a2, v55);
      _os_log_impl(&dword_1B9F07000, v43, v44, "Unable to create section data source item from unique identifier %s.", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x1BFAF43A0](v46, -1, -1);
      MEMORY[0x1BFAF43A0](v45, -1, -1);
    }

    (*(v49 + 8))(v9, v50);
LABEL_17:
    v47 = v51;
    *(v51 + 32) = 0;
    *v47 = 0u;
    v47[1] = 0u;
    return;
  }

  v27 = v26;
  v28 = sub_1BA4A27B8();
  v29 = sub_1BA4A6B08();

  if ((v29 & 0xC000000000000001) != 0)
  {
    v31 = MEMORY[0x1BFAF2860](v22, v29);
    v30 = v48[0];
    goto LABEL_8;
  }

  v30 = v48[0];
  if ((v22 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v22 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_21:
    __break(1u);
    return;
  }

  v31 = *(v29 + 8 * v22 + 32);
LABEL_8:

  v53 = v28;
  v54 = sub_1B9F15730();
  *&v52 = v31;
  sub_1B9F1134C(&v52, v55);
  sub_1BA4A3D88();

  v32 = sub_1BA4A3E88();
  v33 = sub_1BA4A6F88();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *&v52 = v35;
    *v34 = 136315394;
    v36 = sub_1BA4A85D8();
    v38 = sub_1B9F0B82C(v36, v37, &v52);

    *(v34 + 4) = v38;
    *(v34 + 12) = 2080;
    *(v34 + 14) = sub_1B9F0B82C(v30, a2, &v52);
    _os_log_impl(&dword_1B9F07000, v32, v33, "[%s] Successfully created SnapshotDataSourceItem for: %s", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v35, -1, -1);
    MEMORY[0x1BFAF43A0](v34, -1, -1);
  }

  (*(v49 + 8))(v12, v50);
  sub_1B9F1134C(v55, v51);
}

uint64_t sub_1BA0797D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  sub_1B9F12538();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  v10 = *(v6 + 16);
  v30 = v2;
  v10(v8, v2 + v9, v5);
  v11 = sub_1BA4A4578();
  v12 = *(v6 + 8);
  v12(v8, v5);
  v29 = a1;
  v13 = sub_1BA4A1968();
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v13 >= *(v11 + 16))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v14 = v11 + 16 * v13;
  v15 = *(v14 + 32);
  v16 = *(v14 + 40);

  v17 = v30 + v9;
  v9 = v30;
  v10(v8, v17, v5);
  v31 = v15;
  v32 = v16;
  v18 = sub_1BA4A4528();
  v12(v8, v5);
  v19 = sub_1BA4A1958();
  if ((v19 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v19 >= *(v18 + 16))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v20 = v18 + 16 * v19;
  v21 = *(v20 + 32);
  v22 = *(v20 + 40);

  sub_1B9F3AB98(v21, v22, &v33);

  if (v34)
  {

    return sub_1B9F1134C(&v33, v28);
  }

LABEL_11:
  sub_1B9F43AAC(&v33, &qword_1EDC6AD40, &qword_1EDC6AD50);
  *&v33 = 0;
  *(&v33 + 1) = 0xE000000000000000;
  sub_1BA4A7DF8();
  MEMORY[0x1BFAF1350](0xD000000000000014, 0x80000001BA4E6870);
  v31 = sub_1BA4A1968();
  v24 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v24);

  MEMORY[0x1BFAF1350](0x65746920646E6120, 0xEA0000000000206DLL);
  v31 = sub_1BA4A1958();
  v25 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v25);

  MEMORY[0x1BFAF1350](0xD000000000000023, 0x80000001BA4E6890);
  v31 = v9;
  type metadata accessor for SearchSectionDataSource(0);

  v26 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v26);

  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

uint64_t sub_1BA079B80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  sub_1B9F12538();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  swift_beginAccess();
  v10 = *(v6 + 16);
  v34 = v2;
  v10(v8, v2 + v9, v5);
  v11 = sub_1BA4A4578();
  v12 = *(v6 + 8);
  v12(v8, v5);
  v33 = a1;
  v13 = sub_1BA4A1968();
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v13 >= *(v11 + 16))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v14 = v11 + 16 * v13;
  v15 = *(v14 + 32);
  v16 = *(v14 + 40);

  v17 = v34 + v9;
  v9 = v34;
  v10(v8, v17, v5);
  v35 = v15;
  v36 = v16;
  v18 = sub_1BA4A4528();
  v12(v8, v5);
  v19 = sub_1BA4A1958();
  if ((v19 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v19 >= *(v18 + 16))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v20 = sub_1B9F3A92C();
  v22 = v21;
  v24 = v23;
  v26 = v25;

  sub_1B9F3A3B4(v20, v22, v24, v26, &v37);

  if (v38)
  {

    return sub_1B9F1134C(&v37, v32);
  }

LABEL_11:
  sub_1B9F43AAC(&v37, &qword_1EDC6AD40, &qword_1EDC6AD50);
  *&v37 = 0;
  *(&v37 + 1) = 0xE000000000000000;
  sub_1BA4A7DF8();
  MEMORY[0x1BFAF1350](0xD000000000000014, 0x80000001BA4E6870);
  v35 = sub_1BA4A1968();
  v28 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v28);

  MEMORY[0x1BFAF1350](0x65746920646E6120, 0xEA0000000000206DLL);
  v35 = sub_1BA4A1958();
  v29 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v29);

  MEMORY[0x1BFAF1350](0xD000000000000023, 0x80000001BA4E6890);
  v35 = v9;
  type metadata accessor for CompoundSectionedDataSource();

  v30 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v30);

  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

uint64_t sub_1BA079F5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  sub_1B9F12538();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = qword_1EDC84AC8;
  swift_beginAccess();
  v10 = *(v6 + 16);
  v31 = v2;
  v10(v8, &v9[v2], v5);
  v11 = sub_1BA4A4578();
  v12 = *(v6 + 8);
  v12(v8, v5);
  v30 = a1;
  v13 = sub_1BA4A1968();
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v13 >= *(v11 + 16))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v14 = v11 + 16 * v13;
  v15 = *(v14 + 32);
  v16 = *(v14 + 40);

  v17 = &v9[v31];
  v9 = v31;
  v10(v8, v17, v5);
  v32 = v15;
  v33 = v16;
  v18 = sub_1BA4A4528();
  v12(v8, v5);
  v19 = sub_1BA4A1958();
  if ((v19 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v19 >= *(v18 + 16))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v20 = v18 + 16 * v19;
  v21 = *(v20 + 32);
  v22 = *(v20 + 40);

  sub_1BA0791A0(v21, v22, &v34);

  if (v35)
  {

    return sub_1B9F1134C(&v34, v29);
  }

LABEL_11:
  sub_1B9F43AAC(&v34, &qword_1EDC6AD40, &qword_1EDC6AD50);
  *&v34 = 0;
  *(&v34 + 1) = 0xE000000000000000;
  sub_1BA4A7DF8();
  MEMORY[0x1BFAF1350](0xD000000000000014, 0x80000001BA4E6870);
  v32 = sub_1BA4A1968();
  v24 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v24);

  MEMORY[0x1BFAF1350](0x65746920646E6120, 0xEA0000000000206DLL);
  v32 = sub_1BA4A1958();
  v25 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v25);

  MEMORY[0x1BFAF1350](0xD000000000000023, 0x80000001BA4E6890);
  v32 = v9;
  type metadata accessor for ProvidersYouAreSharingWithDataSource();
  v26 = v9;
  v27 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v27);

  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

Swift::Void __swiftcall CompoundSectionedDataSource.registerChildDataSourceCells(for:)(UICollectionView *a1)
{
  v2 = v1;
  v67 = a1;
  v3 = sub_1BA4A1998();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F12538();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v58 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v56 - v12;
  v14 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  swift_beginAccess();
  v15 = *(v9 + 16);
  v63 = v14;
  v62 = v9 + 16;
  v61 = v15;
  v15(v13, v2 + v14, v8);
  v16 = sub_1BA4A4548();
  v18 = *(v9 + 8);
  v17 = v9 + 8;
  v64 = v13;
  v65 = v8;
  v60 = v18;
  v18(v13, v8);
  if (v16 < 0)
  {
    goto LABEL_30;
  }

  if (!v16)
  {
LABEL_14:
    v44 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_managedDataSources);
    v45 = *(v44 + 16);
    if (v45)
    {
      v46 = (v44 + 32);
      sub_1B9F0D9AC(0, &qword_1EDC67F10);
      v65 = sub_1B9F0D9AC(0, &qword_1EBBEAE18);
      v47 = 0uLL;
      do
      {
        v48 = *v46;
        v77 = 0;
        v75 = v47;
        v76 = v47;
        v68 = v48;
        v66 = v48;
        swift_unknownObjectRetain_n();
        if (swift_dynamicCast())
        {
          sub_1B9F1134C(&v69, &v72);
          v49 = *(&v73 + 1);
          v50 = v74;
          __swift_project_boxed_opaque_existential_1(&v72, *(&v73 + 1));
          v51 = (*(v50 + 8))(v49, v50);
          v53 = v52;
          sub_1B9F43AAC(&v75, &qword_1EDC6C320, qword_1EDC6C328);
          *&v68 = v51;
          *(&v68 + 1) = v53;
          sub_1B9F0D9AC(0, qword_1EDC6C328);
          if ((swift_dynamicCast() & 1) == 0)
          {
            v71 = 0;
            v69 = 0u;
            v70 = 0u;
          }

          v75 = v69;
          v76 = v70;
          v77 = v71;
          __swift_destroy_boxed_opaque_existential_1(&v72);
        }

        else
        {
          sub_1B9F43AAC(&v75, &qword_1EDC6C320, qword_1EDC6C328);
          v69 = 0u;
          v70 = 0u;
          v71 = 0;
          sub_1B9F43AAC(&v69, qword_1EBBEAE20, &qword_1EBBEAE18);
          v69 = v66;
          sub_1B9F0D9AC(0, qword_1EDC6C328);
          swift_unknownObjectRetain();
          if ((swift_dynamicCast() & 1) == 0)
          {
            v74 = 0;
            v72 = 0u;
            v73 = 0u;
          }

          v75 = v72;
          v76 = v73;
          v77 = v74;
        }

        sub_1BA07B690(&v75, &v69);
        if (*(&v70 + 1))
        {
          sub_1B9F1134C(&v69, &v72);
          v54 = *(&v73 + 1);
          v55 = v74;
          __swift_project_boxed_opaque_existential_1(&v72, *(&v73 + 1));
          (*(v55 + 8))(v67, v54, v55);
          swift_unknownObjectRelease();
          sub_1B9F43AAC(&v75, &qword_1EDC6C320, qword_1EDC6C328);
          __swift_destroy_boxed_opaque_existential_1(&v72);
        }

        else
        {
          sub_1B9F43AAC(&v75, &qword_1EDC6C320, qword_1EDC6C328);
          swift_unknownObjectRelease();
          sub_1B9F43AAC(&v69, &qword_1EDC6C320, qword_1EDC6C328);
        }

        ++v46;
        --v45;
        v47 = 0uLL;
      }

      while (v45);
    }

    return;
  }

  v19 = 0;
  v20 = (v4 + 8);
  *&v66 = v17;
  v57 = v2;
  v59 = v16;
  while (1)
  {
    v21 = v64;
    v22 = v65;
    v61(v64, v2 + v63, v65);
    v23 = sub_1BA4A4548();
    v60(v21, v22);
    if (v19 < v23)
    {
      break;
    }

LABEL_4:
    if (++v19 == v59)
    {
      goto LABEL_14;
    }
  }

  v24 = v63;
  v25 = v2 + v63;
  v26 = v64;
  v27 = v65;
  v28 = v2;
  v29 = v61;
  v61(v64, v25, v65);
  v30 = v28 + v24;
  v31 = v58;
  v29(v58, v30, v27);
  v32 = sub_1BA4A4578();
  v33 = v60;
  v60(v31, v27);
  if (v19 >= *(v32 + 16))
  {
    goto LABEL_29;
  }

  v34 = v32 + 16 * v19;
  v35 = *(v34 + 32);
  v36 = *(v34 + 40);

  *&v75 = v35;
  *(&v75 + 1) = v36;
  v37 = v27;
  v38 = sub_1BA4A44A8();

  v33(v26, v37);
  if ((v38 & 0x8000000000000000) == 0)
  {
    v2 = v57;
    if (v38)
    {
      for (i = 0; i != v38; ++i)
      {
        MEMORY[0x1BFAEC380](i, v19);
        sub_1BA079B80(v6, &v72);
        sub_1B9F0D9AC(0, &qword_1EDC6AD50);
        sub_1B9F0D9AC(0, qword_1EDC6C328);
        if (swift_dynamicCast())
        {
          sub_1B9F1134C(&v69, &v75);
          v40 = v3;
          v42 = *(&v76 + 1);
          v41 = v77;
          __swift_project_boxed_opaque_existential_1(&v75, *(&v76 + 1));
          v43 = v42;
          v3 = v40;
          (*(v41 + 8))(v67, v43, v41);
          (*v20)(v6, v40);
          __swift_destroy_boxed_opaque_existential_1(&v75);
        }

        else
        {
          (*v20)(v6, v3);
          v71 = 0;
          v69 = 0u;
          v70 = 0u;
          sub_1B9F43AAC(&v69, &qword_1EDC6C320, qword_1EDC6C328);
        }
      }
    }

    goto LABEL_4;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t CompoundSectionedDataSource.forEachItem<A>(itemHandler:)(void (*a1)(char *, char *), uint64_t a2, uint64_t a3)
{
  v61 = a1;
  v62 = a2;
  v5 = sub_1BA4A7AA8();
  v59 = *(v5 - 8);
  v60 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v46 - v6;
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1BA4A1998();
  v58 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F12538();
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v48 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v46 - v19;
  v21 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  swift_beginAccess();
  v22 = *(v16 + 16);
  v64 = v3;
  v52 = v16 + 16;
  v53 = v21;
  v51 = v22;
  v22(v20, v3 + v21, v15);
  v23 = sub_1BA4A4548();
  v24 = *(v16 + 8);
  v55 = v16 + 8;
  v56 = v15;
  v50 = v24;
  result = v24(v20, v15);
  if (v23 < 0)
  {
    goto LABEL_17;
  }

  v54 = v20;
  if (v23)
  {
    v26 = 0;
    v27 = (v58 + 1);
    v28 = (v8 + 56);
    v58 = (v8 + 32);
    ++v59;
    v57 = (v8 + 8);
    v47 = v11;
    v49 = v23;
    do
    {
      v29 = v54;
      v30 = v56;
      v51(v54, v64 + v53, v56);
      v31 = sub_1BA4A4548();
      result = v50(v29, v30);
      if (v26 < v31)
      {
        v32 = v53;
        v33 = v56;
        v34 = v51;
        v51(v54, v64 + v53, v56);
        v35 = v64 + v32;
        v36 = v48;
        v34(v48, v35, v33);
        v37 = sub_1BA4A4578();
        v38 = v50;
        result = v50(v36, v33);
        if (v26 >= *(v37 + 16))
        {
          goto LABEL_16;
        }

        v39 = v37 + 16 * v26;
        v41 = *(v39 + 32);
        v40 = *(v39 + 40);

        v65[0] = v41;
        v65[1] = v40;
        v42 = v54;
        v43 = sub_1BA4A44A8();

        result = v38(v42, v56);
        if (v43 < 0)
        {
          __break(1u);
LABEL_16:
          __break(1u);
LABEL_17:
          __break(1u);
          return result;
        }

        v44 = v47;
        if (v43)
        {
          for (i = 0; i != v43; ++i)
          {
            MEMORY[0x1BFAEC380](i, v26);
            sub_1BA079B80(v13, v65);
            sub_1B9F0D9AC(0, &qword_1EDC6AD50);
            if (swift_dynamicCast())
            {
              (*v28)(v7, 0, 1, a3);
              (*v58)(v44, v7, a3);
              v61(v44, v13);
              (*v57)(v44, a3);
              result = (*v27)(v13, v63);
            }

            else
            {
              (*v27)(v13, v63);
              (*v28)(v7, 1, 1, a3);
              result = (*v59)(v7, v60);
            }
          }
        }
      }

      ++v26;
    }

    while (v26 != v49);
  }

  return result;
}

void CompoundSectionedDataSource.forEachChild<A>(childHandler:)(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v46 = a2;
  v45 = a1;
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v44 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A7AA8();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v43 = &v38 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v42 = &v38 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v38 - v16;
  v18 = *(v3 + OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_managedDataSources);
  v19 = *(v18 + 16);
  if (v19)
  {
    v22 = *(v5 + 56);
    v20 = v5 + 56;
    v21 = v22;
    v23 = (v18 + 32);
    v52 = (v15 + 8);
    v49 = (v15 + 16);
    v50 = (v15 + 32);
    v48 = (v20 - 8);
    v40 = (v20 - 24);
    v53 = v20;
    v39 = (v20 - 48);
    v41 = v9;
    v47 = v22;
    do
    {
      v54 = *v23;
      v21(v17, 1, 1, a3);
      v57 = v54;
      sub_1B9F0D9AC(0, &qword_1EDC67F10);
      sub_1B9F0D9AC(0, &qword_1EBBEAE18);
      v24 = v54;
      swift_unknownObjectRetain_n();
      v25 = swift_dynamicCast();
      v51 = v24;
      if (v25)
      {
        sub_1B9F1134C(v55, &v58);
        v26 = v59;
        v27 = v60;
        __swift_project_boxed_opaque_existential_1(&v58, v59);
        v28 = (*(v27 + 8))(v26, v27);
        v30 = v29;
        v31 = *v52;
        (*v52)(v17, v7);
        *&v55[0] = v28;
        *(&v55[0] + 1) = v30;
        v9 = v41;
        v32 = v42;
        v33 = swift_dynamicCast();
        v34 = v47;
        v47(v32, v33 ^ 1u, 1, a3);
        (*v50)(v17, v32, v7);
        __swift_destroy_boxed_opaque_existential_1(&v58);
        v21 = v34;
      }

      else
      {
        v31 = *v52;
        (*v52)(v17, v7);
        v56 = 0;
        memset(v55, 0, sizeof(v55));
        sub_1B9F43AAC(v55, qword_1EBBEAE20, &qword_1EBBEAE18);
        v58 = v54;
        swift_unknownObjectRetain();
        v35 = v43;
        v36 = swift_dynamicCast();
        v21 = v47;
        v47(v35, v36 ^ 1u, 1, a3);
        (*v50)(v17, v35, v7);
      }

      (*v49)(v9, v17, v7);
      if ((*v48)(v9, 1, a3) == 1)
      {
        v31(v17, v7);
        swift_unknownObjectRelease();
        v31(v9, v7);
      }

      else
      {
        v37 = v44;
        (*v40)(v44, v9, a3);
        v45(v37);
        swift_unknownObjectRelease();
        (*v39)(v37, a3);
        v31(v17, v7);
      }

      ++v23;
      --v19;
    }

    while (v19);
  }
}

uint64_t sub_1BA07B690(uint64_t a1, uint64_t a2)
{
  sub_1B9F0CE40(0, &qword_1EDC6C320, qword_1EDC6C328);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t RuntimeItemDataSource.Section.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RuntimeItemDataSource.Section.items.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t RuntimeItemDataSource.Section.init(identifier:items:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

void sub_1BA07B7D4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t RuntimeItemDataSource.identifier.getter()
{
  v0 = sub_1B9F1E1B4();

  return v0;
}

uint64_t sub_1BA07B8A4(uint64_t a1)
{
  sub_1B9F12538();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_1BA07B9F8(v5);
}

uint64_t sub_1BA07B970@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EBC09498;
  swift_beginAccess();
  sub_1B9F12538();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1BA07B9F8(uint64_t a1)
{
  v3 = qword_1EBC09498;
  swift_beginAccess();
  sub_1B9F12538();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_1BA07BAE8()
{
  sub_1BA07CFDC();
}

uint64_t sub_1BA07BB10(uint64_t a1)
{
  v3 = qword_1EBC094A0;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void *RuntimeItemDataSource.__allocating_init(identifier:sections:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_1BA07D020(a1, a2, a3);

  return v6;
}

void *RuntimeItemDataSource.init(identifier:sections:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1BA07D020(a1, a2, a3);

  return v3;
}

uint64_t sub_1BA07BC04(uint64_t a1)
{
  v2 = v1;
  sub_1B9F12538();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - v10;
  sub_1BA07C3F8(a1, &v14 - v10);
  sub_1BA07B9F8(v11);
  v12 = qword_1EBC094A0;

  swift_beginAccess();
  *(v2 + v12) = a1;

  type metadata accessor for RuntimeItemDataSource();
  SnapshotDataSource.notifyObserversSnapshotDidChange(animated:)(1);
  sub_1BA07B970(v8);
  sub_1B9F177C4(v11);
  (*(v6 + 8))(v8, v5);
  return sub_1BA07B9F8(v11);
}

uint64_t sub_1BA07BDBC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = *v2;
  v24[1] = a1;
  v25 = v3;
  sub_1B9F12538();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA07D4F8(0, &qword_1EDC6AE28, MEMORY[0x1E6969C28]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v24 - v10;
  v12 = sub_1BA4A1998();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA07B970(v8);
  sub_1BA0F00FC(v11);
  (*(v6 + 8))(v8, v5);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1BA07D49C(v11, &qword_1EDC6AE28, MEMORY[0x1E6969C28]);
    v16 = *(v25 + 80);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    v17 = v13;
    v18 = sub_1BA4A1968();
    swift_beginAccess();
    v16 = *(v25 + 80);
    type metadata accessor for RuntimeItemDataSource.Section();

    v19 = sub_1BA4A6BC8();

    if (v18 >= v19)
    {
      (*(v17 + 8))(v15, v12);
    }

    else
    {
      v25 = v12;
      v20 = sub_1BA4A1958();
      sub_1BA4A1968();
      swift_beginAccess();

      sub_1BA4A6C08();

      v21 = sub_1BA4A6BC8();

      if (v20 < v21)
      {
        sub_1BA4A1968();
        sub_1BA4A1958();
        swift_beginAccess();

        sub_1BA4A6C08();

        v22 = v26;
        sub_1BA4A6C08();

        (*(v17 + 8))(v15, v25);
        return (*(*(v16 - 8) + 56))(v22, 0, 1, v16);
      }

      (*(v17 + 8))(v15, v25);
    }
  }

  return (*(*(v16 - 8) + 56))(v26, 1, 1, v16);
}

uint64_t sub_1BA07C23C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(*v2 + 80);
  v7 = sub_1BA4A7AA8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  sub_1BA07BDBC(a1, &v14 - v9);
  v11 = *(v6 - 8);
  if ((*(v11 + 48))(v10, 1, v6) == 1)
  {
    result = (*(v8 + 8))(v10, v7);
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    *(a2 + 24) = v6;
    *(a2 + 32) = *(v5 + 88);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    return (*(v11 + 32))(boxed_opaque_existential_1, v10, v6);
  }

  return result;
}

uint64_t sub_1BA07C3F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(*v2 + 80);
  v85 = sub_1BA4A7AA8();
  v7 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v90 = v73 - v8;
  v92 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v77 = v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v78 = v73 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v73 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v73[0] = v17;
  MEMORY[0x1EEE9AC00](v18);
  v97 = v73 - v19;
  v83 = a2;
  v21 = v20;
  sub_1BA4A45D8();
  v22 = *(v5 + 88);
  v91 = v2;
  v23 = *(v5 + 96);
  v94 = v22;
  v86 = v23;
  v24 = type metadata accessor for RuntimeItemDataSource.Section();
  result = sub_1BA4A6BC8();
  if (result)
  {
    v26 = 0;
    v76 = 0;
    v74 = a1 + 32;
    v27 = (v92 + 16);
    v89 = (v92 + 32);
    v88 = (v92 + 48);
    v87 = (v92 + 8);
    v84 = (v7 + 8);
    v81 = xmmword_1BA4B5480;
    v73[2] = a1;
    v82 = v21;
    v73[1] = v24;
    while (1)
    {
      v28 = sub_1BA4A6BA8();
      result = sub_1BA4A6B48();
      if ((v28 & 1) == 0)
      {
        goto LABEL_33;
      }

      if (__OFADD__(v26, 1))
      {
        break;
      }

      v75 = v26 + 1;
      v29 = (v74 + 24 * v26);
      v30 = v29[1];
      v31 = v29[2];
      v32 = *v29;
      sub_1B9F25350();
      v80 = v33;
      v34 = swift_allocObject();
      *(v34 + 16) = v81;
      *(v34 + 32) = v32;
      *(v34 + 40) = v30;
      sub_1B9F12538();
      v36 = v35;

      sub_1BA4A44C8();

      v96 = v73;
      v103[0] = v31;
      MEMORY[0x1EEE9AC00](v37);
      v38 = v94;
      v73[-4] = v6;
      v73[-3] = v38;
      v73[-2] = v86;
      v39 = sub_1BA4A6BF8();

      WitnessTable = swift_getWitnessTable();
      v41 = v39;
      v42 = v82;
      v43 = v76;
      sub_1B9F12F50(sub_1BA07D458, &v73[-6], v41, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v44);
      v76 = v43;

      v103[0] = 0;
      v103[1] = 0;
      v79 = v36;
      sub_1BA4A4448();

      if (sub_1BA4A6BC8())
      {
        v45 = 0;
        v93 = v31;
        while (1)
        {
          v47 = sub_1BA4A6BA8();
          sub_1BA4A6B48();
          if (v47)
          {
            v48 = *(v92 + 16);
            v49 = v6;
            v48(v97, (v31 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v45), v6);
          }

          else
          {
            result = sub_1BA4A7E18();
            if (v73[0] != 8)
            {
              goto LABEL_35;
            }

            v103[0] = result;
            v48 = *v27;
            v49 = v6;
            (*v27)(v97, v103, v6);
            swift_unknownObjectRelease();
          }

          if (__OFADD__(v45, 1))
          {
            __break(1u);
LABEL_33:
            result = sub_1BA4A7E18();
            __break(1u);
            goto LABEL_34;
          }

          v95 = v48;
          v96 = (v45 + 1);
          v50 = v27;
          v51 = v15;
          v52 = *v89;
          (*v89)(v42, v97, v49);
          sub_1BA4A2D58();
          v53 = v90;
          sub_1BA07BDBC(v54, v90);
          v55 = v53;

          if ((*v88)(v53, 1, v49) == 1)
          {
            break;
          }

          v15 = v51;
          v52(v51, v55, v49);
          v6 = v49;
          if (sub_1BA4A6728())
          {
            v56 = *v87;
            (*v87)(v51, v49);
            v56(v42, v49);
            v27 = v50;
            goto LABEL_9;
          }

          v57 = v49;
          v27 = v50;
          v58 = v95;
          v95(v78, v42, v57);
          sub_1B9FCD918();
          v59 = swift_dynamicCast();
          v31 = v93;
          if (v59)
          {
            sub_1B9F25598(&v100, v103);
            v58(v77, v15, v6);
            v60 = swift_dynamicCast();
            v46 = v96;
            if (v60)
            {
              sub_1B9F25598(v98, &v100);
              __swift_project_boxed_opaque_existential_1(&v100, *(&v101 + 1));
              v95 = sub_1BA4A2E58();
              v62 = v61;
              __swift_project_boxed_opaque_existential_1(v103, v104);
              if (v95 == sub_1BA4A2E58() && v62 == v63)
              {

                v42 = v82;
                goto LABEL_26;
              }

              v67 = sub_1BA4A8338();

              v42 = v82;
              if (v67)
              {
LABEL_26:
                v68 = swift_allocObject();
                *(v68 + 16) = v81;
                __swift_project_boxed_opaque_existential_1(v103, v104);
                *(v68 + 32) = sub_1BA4A2D58();
                *(v68 + 40) = v69;
                sub_1BA4A4558();
              }

              else
              {
                v70 = swift_allocObject();
                *(v70 + 16) = v81;
                __swift_project_boxed_opaque_existential_1(v103, v104);
                *(v70 + 32) = sub_1BA4A2D58();
                *(v70 + 40) = v71;
                sub_1BA4A4498();
              }

              v72 = *v87;
              (*v87)(v15, v6);
              v72(v42, v6);
              __swift_destroy_boxed_opaque_existential_1(&v100);
              __swift_destroy_boxed_opaque_existential_1(v103);
              goto LABEL_10;
            }

            v99 = 0;
            memset(v98, 0, sizeof(v98));
            sub_1BA07D49C(v98, &qword_1EDC6E1A0, sub_1B9FCD918);
            __swift_destroy_boxed_opaque_existential_1(v103);
          }

          else
          {
            v102 = 0;
            v100 = 0u;
            v101 = 0u;
            sub_1BA07D49C(&v100, &qword_1EDC6E1A0, sub_1B9FCD918);
            v46 = v96;
          }

          v64 = swift_allocObject();
          *(v64 + 16) = v81;
          v42 = v82;
          *(v64 + 32) = sub_1BA4A2D58();
          *(v64 + 40) = v65;
          sub_1BA4A4558();

          v66 = *v87;
          (*v87)(v15, v6);
          v66(v42, v6);
LABEL_10:
          ++v45;
          if (v46 == sub_1BA4A6BC8())
          {
            goto LABEL_3;
          }
        }

        (*v87)(v42, v49);
        (*v84)(v53, v85);
        v15 = v51;
        v27 = v50;
        v6 = v49;
LABEL_9:
        v31 = v93;
        v46 = v96;
        goto LABEL_10;
      }

LABEL_3:

      result = sub_1BA4A6BC8();
      v26 = v75;
      if (v75 == result)
      {
        return result;
      }
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  return result;
}

uint64_t RuntimeItemDataSource.deinit()
{

  v1 = qword_1EBC09498;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t RuntimeItemDataSource.__deallocating_deinit()
{
  RuntimeItemDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BA07CFDC()
{
  v1 = qword_1EBC094A0;
  swift_beginAccess();
  return *(v0 + v1);
}

void *sub_1BA07D020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1B9F15B38();
  v8 = sub_1BA4A7A78();
  v9 = objc_allocWithZone(MEMORY[0x1E696C4F8]);
  v10 = sub_1BA4A6758();
  v11 = [v9 initWithName:v10 loggingCategory:v8];

  v4[2] = v11;
  sub_1BA4A45D8();
  v4[3] = a1;
  v4[4] = a2;
  *(v4 + qword_1EBC094A0) = a3;

  sub_1BA07BC04(v12);
  return v4;
}

void sub_1BA07D134()
{
  sub_1B9F12538();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_1BA07D394()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1BA07D3D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1BA07D418(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1BA07D458@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BA4A2D58();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BA07D49C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1BA07D4F8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1BA07D4F8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1BA07D54C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *v3;
  v8 = sub_1BA4A1798();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BA4A4428();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() == a1 && v15 == a2)
  {

    goto LABEL_13;
  }

  v46 = v8;
  v17 = sub_1BA4A8338();

  if (v17)
  {
LABEL_13:
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v24 = [objc_opt_self() bundleForClass_];
    v25 = sub_1BA4A1318();
    v27 = v26;

    _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
    v28 = type metadata accessor for HeaderItem();
    swift_allocObject();
    HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v25, v27, 0, 0, 0, 0, v14, 0, 0);
    v30 = v29;
    a3[3] = v28;
    result = sub_1B9F2A984(&qword_1EDC69800, type metadata accessor for HeaderItem);
    a3[4] = result;
    *a3 = v30;
    return result;
  }

  if (_sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() == a1 && v18 == a2)
  {

    v21 = v9;
  }

  else
  {
    v20 = sub_1BA4A8338();

    v21 = v9;
    if ((v20 & 1) == 0)
    {
      a3[3] = &type metadata for EmptyHeaderItem;
      a3[4] = sub_1B9FDA1B0();
      *a3 = swift_allocObject();
      return EmptyHeaderItem.init()();
    }
  }

  v31 = swift_getObjCClassFromMetadata();
  v32 = [objc_opt_self() bundleForClass_];
  v33 = sub_1BA4A1318();
  v35 = v34;

  v47[0] = sub_1BA07DCCC();
  v47[1] = v36;
  MEMORY[0x1BFAF1350](23306, 0xE200000000000000);
  MEMORY[0x1BFAF1350](v33, v35);

  MEMORY[0x1BFAF1350](10333, 0xE200000000000000);
  v37 = sub_1BA4A6888();
  MEMORY[0x1BFAF1350](v37);

  MEMORY[0x1BFAF1350](41, 0xE100000000000000);
  v38 = v47[0];
  v39 = v47[1];
  v40 = swift_allocObject();
  *(v40 + 16) = v7;
  a3[3] = &type metadata for TextViewItem;
  a3[4] = sub_1BA0712A8();
  v41 = swift_allocObject();
  *a3 = v41;
  *(v41 + 32) = 0;
  *(v41 + 40) = 0;
  *(v41 + 56) = 0;
  *(v41 + 64) = 0;
  *(v41 + 48) = -1;
  *(v41 + 72) = -1;
  *(v41 + 80) = v38;
  *(v41 + 88) = v39;
  *(v41 + 112) = 0;
  *(v41 + 120) = 0;
  *(v41 + 128) = 0;
  *(v41 + 96) = sub_1BA07E1B4;
  *(v41 + 104) = v40;
  strcpy(v47, "TextViewItem_");
  HIWORD(v47[1]) = -4864;

  sub_1BA4A1788();
  sub_1B9F2A984(&qword_1EDC6AE60, MEMORY[0x1E69695A8]);
  v42 = v46;
  v43 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v43);

  (*(v21 + 8))(v11, v42);

  v44 = v47[1];
  *(v41 + 16) = v47[0];
  *(v41 + 24) = v44;
  return result;
}

void sub_1BA07DAA8(uint64_t a1)
{
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v6 = sub_1BA4A3E88();
  v7 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446210;
    v10 = sub_1BA4A85D8();
    v12 = sub_1B9F0B82C(v10, v11, &v16);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1B9F07000, v6, v7, "%{public}s: presenting privacy splash", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1BFAF43A0](v9, -1, -1);
    MEMORY[0x1BFAF43A0](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v13 = sub_1BA4A6758();
  v14 = [objc_opt_self() presenterForPrivacySplashWithIdentifier_];

  if (v14)
  {
    [v14 setPresentingViewController_];
  }

  [v14 present];
}

uint64_t sub_1BA07DCCC()
{
  v1 = [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI17PrivacyDataSource_healthStore) profileIdentifier];
  [v1 type];

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_1BA4A1318();

  return v4;
}

uint64_t sub_1BA07DE28()
{
}

uint64_t sub_1BA07DE78()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1BA07DF50()
{
  sub_1BA07DE78();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PrivacyDataSource()
{
  result = qword_1EBBEAF40;
  if (!qword_1EBBEAF40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1BA07E074(uint64_t a1)
{
  v2 = type metadata accessor for ListLayoutConfiguration();
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 8);
  if (qword_1EDC6CBB0 != -1)
  {
    v9 = v3;
    swift_once();
    v3 = v9;
  }

  __swift_project_value_buffer(v3, qword_1EDC6CBB8);
  ListLayoutConfiguration.withFooter.getter(v5);
  v7 = ListLayoutConfiguration.layout(for:)(v6);
  sub_1BA047354(v5);
  return v7;
}

uint64_t sub_1BA07E164()
{
  sub_1B9FF5688();
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1B9F43830();
}

uint64_t sub_1BA07E1D8(void *a1)
{
  v2 = v1;
  v42 = sub_1BA4A1798();
  v4 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC18HealthExperienceUI17PrivacyDataSource_researchStudiesItem;
  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI17PrivacyDataSource_researchStudiesItem) = 0;
  v8 = OBJC_IVAR____TtC18HealthExperienceUI17PrivacyDataSource_appSourcesItem;
  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI17PrivacyDataSource_appSourcesItem) = 0;
  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI17PrivacyDataSource_healthStore) = a1;
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

    v44 = v13;
    v45 = sub_1B9F2A984(&qword_1EDC66638, type metadata accessor for AppSourcesDataSourceItem);
    *&v43 = v14;
    v12[2] = v16 + 1;
    sub_1B9F25598(&v43, &v12[5 * v16 + 4]);
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

    v44 = v19;
    v45 = sub_1B9F2A984(&qword_1EDC61AC0, type metadata accessor for ResearchStudySourcesDataSourceItem);
    *&v43 = v20;
    v12[2] = v22 + 1;
    sub_1B9F25598(&v43, &v12[5 * v22 + 4]);
  }

  v23 = [v9 profileIdentifier];
  v24 = [v23 type];

  if (v24 != 4)
  {
    v25 = type metadata accessor for DeviceSourcesDataSourceItem();
    swift_allocObject();
    v26 = sub_1BA31A394(v9);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1BA27EFB4(0, v12[2] + 1, 1, v12);
    }

    v28 = v12[2];
    v27 = v12[3];
    if (v28 >= v27 >> 1)
    {
      v12 = sub_1BA27EFB4((v27 > 1), v28 + 1, 1, v12);
    }

    v44 = v25;
    v45 = sub_1B9F2A984(&qword_1EBBEAF50, type metadata accessor for DeviceSourcesDataSourceItem);
    *&v43 = v26;
    v12[2] = v28 + 1;
    sub_1B9F25598(&v43, &v12[5 * v28 + 4]);
  }

  v29 = sub_1B9FE4F98(v12);

  sub_1BA4A1788();
  v30 = sub_1BA4A1748();
  v32 = v31;
  v33 = *(v4 + 8);
  v34 = v42;
  v33(v6, v42);
  sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);

  v36 = Array<A>.identifierToIndexDict()(v35);

  sub_1B9FF6758();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = v29;
  *(inited + 56) = v36;
  *(inited + 64) = v30;
  *(inited + 72) = v32;
  *&v43 = 0;
  *(&v43 + 1) = 0xE000000000000000;
  sub_1BA4A7DF8();

  strcpy(&v43, "MutableArray<");
  HIWORD(v43) = -4864;
  sub_1BA4A1788();
  v38 = sub_1BA4A1748();
  v40 = v39;
  v33(v6, v34);
  MEMORY[0x1BFAF1350](v38, v40);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  return MutableArrayDataSource.init(arrangedSections:identifier:)(inited, v43, *(&v43 + 1));
}

uint64_t EmergencyAccessUserStatus.onboardingStatus.getter()
{
  sub_1BA07E7A0();
  sub_1BA4A2DA8();
  return v1;
}

void sub_1BA07E7A0()
{
  if (!qword_1EDC6E1B8)
  {
    type metadata accessor for HKEmergencyOnboardingStatus(255);
    sub_1BA07F1E0(&qword_1EDC6B518, type metadata accessor for HKEmergencyOnboardingStatus);
    v0 = sub_1BA4A2DD8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6E1B8);
    }
  }
}

void (*EmergencyAccessUserStatus.onboardingStatus.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_1BA07E7A0();
  *(v3 + 32) = sub_1BA4A2D98();
  return sub_1BA07E90C;
}

void sub_1BA07E90C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t type metadata accessor for EmergencyAccessUserStatus()
{
  result = qword_1EDC6C640;
  if (!qword_1EDC6C640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EmergencyAccessUserStatus.init(onboardingStatus:isStewieSupported:)@<X0>(char a1@<W2>, uint64_t a2@<X8>)
{
  type metadata accessor for HKEmergencyOnboardingStatus(0);
  sub_1BA07F1E0(&qword_1EDC6B518, type metadata accessor for HKEmergencyOnboardingStatus);
  sub_1BA4A2DC8();
  result = type metadata accessor for EmergencyAccessUserStatus();
  *(a2 + *(result + 20)) = a1;
  return result;
}

unint64_t sub_1BA07EA7C()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1BA07EAB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001BA4E7020 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001BA4E7040 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1BA4A8338();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1BA07EB98(uint64_t a1)
{
  v2 = sub_1BA07EDD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA07EBD4(uint64_t a1)
{
  v2 = sub_1BA07EDD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EmergencyAccessUserStatus.encode(to:)(void *a1)
{
  sub_1BA07F17C(0, &qword_1EDC5DD80, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA07EDD8();
  sub_1BA4A8548();
  v9[15] = 0;
  sub_1BA07E7A0();
  sub_1BA07F1E0(&qword_1EDC6AD38, sub_1BA07E7A0);
  sub_1BA4A8288();
  if (!v1)
  {
    type metadata accessor for EmergencyAccessUserStatus();
    v9[14] = 1;
    sub_1BA4A8258();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1BA07EDD8()
{
  result = qword_1EDC6C660;
  if (!qword_1EDC6C660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6C660);
  }

  return result;
}

uint64_t EmergencyAccessUserStatus.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  sub_1BA07E7A0();
  v22 = v4;
  v20 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA07F17C(0, &qword_1EDC5DEE0, MEMORY[0x1E69E6F48]);
  v23 = v7;
  v21 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = type metadata accessor for EmergencyAccessUserStatus();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA07EDD8();
  sub_1BA4A8528();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = v12;
  v13 = v20;
  v25 = 0;
  sub_1BA07F1E0(&qword_1EDC6AD30, sub_1BA07E7A0);
  v14 = v22;
  sub_1BA4A81C8();
  v15 = v18;
  (*(v13 + 32))(v18, v6, v14);
  v24 = 1;
  v16 = sub_1BA4A8198();
  (*(v21 + 8))(v9, v23);
  *(v15 + *(v10 + 20)) = v16 & 1;
  sub_1BA020470(v15, v19);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1BA0204E8(v15);
}

void sub_1BA07F17C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1BA07EDD8();
    v7 = a3(a1, &type metadata for EmergencyAccessUserStatus.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1BA07F1E0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BA07F280()
{
  sub_1BA07E7A0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1BA07F308()
{
  result = qword_1EBBEAF58;
  if (!qword_1EBBEAF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEAF58);
  }

  return result;
}

unint64_t sub_1BA07F360()
{
  result = qword_1EDC6C650;
  if (!qword_1EDC6C650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6C650);
  }

  return result;
}

unint64_t sub_1BA07F3B8()
{
  result = qword_1EDC6C658;
  if (!qword_1EDC6C658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6C658);
  }

  return result;
}

void HKCodableDateInterval.dateInterval.getter()
{
  v1 = [objc_opt_self() hk:v0 dateIntervalWithCodableDateInterval:0 sourceTimeZone:?];
  sub_1BA4A0F48();
}

id static HKCodableDateInterval.make(from:)()
{
  v0 = sub_1BA4A0F28();
  v1 = [v0 hk_codableDateInterval];

  return v1;
}

id HKCodableQuantity.init(_:)(void *a1)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v3 = result;
    [a1 _value];
    [v3 setValue_];
    v4 = [a1 _unit];
    v5 = [v4 unitString];

    if (!v5)
    {
      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v5 = sub_1BA4A6758();
    }

    [v3 setUnitString_];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id HKCodableQuantity.quantity.getter()
{
  result = [v0 unitString];
  if (result)
  {
    v2 = result;
    v3 = [objc_opt_self() unitFromString_];

    [v0 value];
    v5 = [objc_opt_self() quantityWithUnit:v3 doubleValue:v4];

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id HKCodableMetadataKeyValuePair.init(pair:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1BA4A3EA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v11 = result;

    v12 = v11;
    v13 = sub_1BA4A6758();

    [v12 setKey_];

    if (a3)
    {
      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      if (v14)
      {
        v15 = v14;
        sub_1B9F0ADF8(0, &qword_1EDC5E4A8);
        v16 = a3;
        v17 = HKCodableQuantity.init(_:)(v15);
        [v12 setQuantityValue_];

LABEL_10:

        return v12;
      }

      objc_opt_self();
      v18 = swift_dynamicCastObjCClass();
      if (v18)
      {
        v19 = v18;
        v20 = a3;
        [v12 setStringValue_];

LABEL_9:
        goto LABEL_10;
      }

      objc_opt_self();
      v21 = swift_dynamicCastObjCClass();
      if (v21)
      {
        v22 = v21;
        v20 = a3;
        [v12 setNumberIntValue_];
        goto LABEL_9;
      }
    }

    v34 = v7;
    sub_1BA4A3D88();

    v23 = a3;
    v24 = sub_1BA4A3E88();
    v25 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v33 = v6;
      v27 = v26;
      v28 = swift_slowAlloc();
      v37 = a3;
      v38 = v28;
      *v27 = 136315138;
      v35 = a1;
      v36 = a2;
      sub_1BA081340();

      v29 = v23;
      v30 = sub_1BA4A6808();
      v32 = sub_1B9F0B82C(v30, v31, &v38);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_1B9F07000, v24, v25, "Unexpected metadata value type %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x1BFAF43A0](v28, -1, -1);
      MEMORY[0x1BFAF43A0](v27, -1, -1);

      (*(v34 + 8))(v9, v33);
    }

    else
    {

      (*(v34 + 8))(v9, v6);
    }

    return v12;
  }

  __break(1u);
  return result;
}

id HKCodableMetadataKeyValuePair.keyValue.getter()
{
  v1 = v0;
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![v1 hasQuantityValue])
  {
    if ([v1 hasStringValue])
    {
      v12 = [v1 stringValue];
      if (v12)
      {
        v13 = v12;
        _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      }

      sub_1BA4A6758();
    }

    else if ([v1 hasNumberIntValue])
    {
      v14 = [v1 numberIntValue];
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
    }

    else
    {
      sub_1BA4A3D88();
      v15 = v1;
      v16 = sub_1BA4A3E88();
      v17 = sub_1BA4A6FA8();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v32 = v17;
        v19 = v18;
        v31 = swift_slowAlloc();
        v33 = v31;
        *v19 = 136315138;
        v20 = v15;
        v21 = [v20 description];
        v22 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v24 = v23;

        v25 = sub_1B9F0B82C(v22, v24, &v33);

        *(v19 + 4) = v25;
        _os_log_impl(&dword_1B9F07000, v16, v32, "Unexpected metadata value type %s", v19, 0xCu);
        v26 = v31;
        __swift_destroy_boxed_opaque_existential_1(v31);
        MEMORY[0x1BFAF43A0](v26, -1, -1);
        MEMORY[0x1BFAF43A0](v19, -1, -1);
      }

      (*(v3 + 8))(v6, v2);
    }

    goto LABEL_14;
  }

  result = [v1 quantityValue];
  if (!result)
  {
    __break(1u);
    goto LABEL_19;
  }

  v8 = result;
  result = [result unitString];
  if (!result)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v9 = result;
  v10 = [objc_opt_self() unitFromString_];

  [v8 value];
  [objc_opt_self() quantityWithUnit:v10 doubleValue:v11];

LABEL_14:
  v27 = [v1 key];
  if (!v27)
  {
    return 0;
  }

  v28 = v27;
  v29 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  return v29;
}

id HKCodableNotificationDataSourceQueryData.init(codableSamples:sampleType:version:)(unint64_t a1, void *a2, uint64_t a3)
{
  v4 = sub_1BA0813C0(a1, a2, a3);

  return v4;
}

id (*sub_1BA07FE30(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 hasLatestSupportedVersion];
  return sub_1BA07FE84;
}

id (*sub_1BA07FE9C(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = [v1 latestSupportedVersion];
  return sub_1BA07FEF0;
}

id (*sub_1BA07FF04(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 hasMinimumSupportedVersion];
  return sub_1BA07FF58;
}

id (*sub_1BA07FF70(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = [v1 minimumSupportedVersion];
  return sub_1BA07FFC4;
}

id HKCodableNotificationSample.init(sample:sampleType:version:)(void *a1, void *a2, uint64_t a3)
{
  v5 = sub_1BA081600(a1, a2, a3);

  return v5;
}

id HKCodableNotificationSample.init(sample:sampleType:startDate:endDate:version:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1BA081A50(a1, a2, a3, a4, a5);

  return v7;
}

id (*sub_1BA080058(uint64_t a1))(uint64_t)
{
  *a1 = v1;
  *(a1 + 8) = [v1 hasLatestSupportedVersion];
  return sub_1BA081E80;
}

id (*sub_1BA0800AC(void *a1))(uint64_t)
{
  a1[1] = v1;
  *a1 = [v1 latestSupportedVersion];
  return sub_1BA081E84;
}

id (*sub_1BA080100(uint64_t a1))(uint64_t)
{
  *a1 = v1;
  *(a1 + 8) = [v1 hasMinimumSupportedVersion];
  return sub_1BA081E88;
}

id (*sub_1BA080154(void *a1))(uint64_t)
{
  a1[1] = v1;
  *a1 = [v1 minimumSupportedVersion];
  return sub_1BA081E8C;
}

id sub_1BA0801AC(uint64_t a1, uint64_t a2)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v5 = result;
    [v5 setDayIndex_];
    [v5 setDuration_];

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id HKCodableDayIndexRange.dayIndexRange.getter()
{
  if (![v0 hasDayIndex] || !objc_msgSend(v0, sel_hasDuration))
  {
    return 0;
  }

  v1 = [v0 dayIndex];
  [v0 duration];
  return v1;
}

uint64_t HKCodableChartFeedItemData.trendsArray.getter()
{
  v1 = [v0 trends];
  if (v1)
  {
    v2 = v1;
    sub_1B9F0ADF8(0, &unk_1EDC6B4F0);
    sub_1BA4A6AF8();
  }

  return MEMORY[0x1E69E7CC0];
}

void sub_1BA080340(id *a1@<X0>, void *a2@<X8>)
{
  v3 = [*a1 trends];
  if (v3)
  {
    v4 = v3;
    sub_1B9F0ADF8(0, &unk_1EDC6B4F0);
    sub_1BA4A6AF8();
  }

  *a2 = MEMORY[0x1E69E7CC0];
}

void sub_1BA0803D4(unint64_t *a1, void **a2)
{
  v2 = *a2;
  sub_1B9FE5B88(*a1);
  v3 = objc_allocWithZone(MEMORY[0x1E695DF70]);
  v4 = sub_1BA4A6AE8();

  v5 = [v3 initWithArray_];

  [v2 setTrends_];
}

void HKCodableChartFeedItemData.trendsArray.setter(unint64_t a1)
{
  sub_1B9FE5B88(a1);

  v2 = objc_allocWithZone(MEMORY[0x1E695DF70]);
  v3 = sub_1BA4A6AE8();

  v4 = [v2 initWithArray_];

  [v1 setTrends_];
}

void (*HKCodableChartFeedItemData.trendsArray.modify(void *a1))(unint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = [v1 trends];
  if (v3)
  {
    v4 = v3;
    sub_1B9F0ADF8(0, &unk_1EDC6B4F0);
    sub_1BA4A6AF8();
  }

  *a1 = MEMORY[0x1E69E7CC0];
  return sub_1BA0805EC;
}

void sub_1BA0805EC(unint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  if (a2)
  {

    sub_1B9FE5B88(v4);

    v5 = objc_allocWithZone(MEMORY[0x1E695DF70]);
    v6 = sub_1BA4A6AE8();

    v9 = [v5 initWithArray_];

    [v2 setTrends_];
  }

  else
  {
    sub_1B9FE5B88(v3);

    v7 = objc_allocWithZone(MEMORY[0x1E695DF70]);
    v8 = sub_1BA4A6AE8();

    v9 = [v7 initWithArray_];

    [v2 setTrends_];
  }
}

id HKCodableChartFeedItemData.chartTrendModel.getter()
{
  v1 = [v0 trends];
  if (v1)
  {
    v2 = v1;
    sub_1B9F0ADF8(0, &unk_1EDC6B4F0);
    sub_1BA4A6AF8();
  }

  v3 = MEMORY[0x1E69E7CC0];
  v16 = MEMORY[0x1E69E7CC0];
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((MEMORY[0x1E69E7CC0] & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BA4A7CC8())
  {
    v5 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1BFAF2860](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v15 = v7;
      sub_1BA080998(&v15, &v14);

      if (v14)
      {
        MEMORY[0x1BFAF1510]();
        if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BA4A6B68();
        }

        sub_1BA4A6BB8();
        v6 = v16;
      }

      ++v5;
      if (v9 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_21:

  if (v6 >> 62)
  {
    if (sub_1BA4A7CC8())
    {
      goto LABEL_23;
    }

LABEL_25:

    return 0;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_25;
  }

LABEL_23:
  v10 = objc_allocWithZone(MEMORY[0x1E69A4140]);
  sub_1B9F0ADF8(0, &qword_1EDC5E288);
  v11 = sub_1BA4A6AE8();

  v12 = [v10 initWithTimeScopeTrends:v11 selectTrendInitially:1];

  return v12;
}

void sub_1BA080998(void **a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1BA4A0FA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v46 - v9;
  v11 = *a1;
  v12 = HKCodableSummaryTrendChartViewModel.coveredTimeScope.getter();
  if ((v13 & 1) != 0 || (v52 = v12, ![v11 hasBaselineDateInterval]) || !objc_msgSend(v11, sel_hasBaselineQuantity))
  {
    v14 = 0;
    goto LABEL_13;
  }

  v14 = [v11 baselineDateInterval];
  if (!v14)
  {
LABEL_13:
    *a2 = v14;
    return;
  }

  v15 = [v11 baselineQuantity];
  if (!v15)
  {

    v14 = 0;
    goto LABEL_13;
  }

  v16 = v15;
  v17 = [v11 hasChangeDateInterval];
  v50 = v16;
  v51 = v14;
  if ((v17 & 1) == 0)
  {
    v49 = 0;
    goto LABEL_18;
  }

  if (![v11 hasChangeQuantity] || (v18 = objc_msgSend(v11, sel_changeDateInterval)) == 0)
  {
LABEL_17:
    v49 = 0;
    goto LABEL_18;
  }

  v47 = v18;
  v48 = [v11 changeQuantity];
  if (!v48)
  {

    goto LABEL_17;
  }

  v19 = [objc_opt_self() hk:v47 dateIntervalWithCodableDateInterval:0 sourceTimeZone:?];
  sub_1BA4A0F48();

  v20 = [v48 unitString];
  if (!v20)
  {
    goto LABEL_29;
  }

  v21 = v20;
  v22 = [objc_opt_self() unitFromString_];

  [v48 value];
  v46 = [objc_opt_self() quantityWithUnit:v22 doubleValue:v23];

  v24 = objc_allocWithZone(MEMORY[0x1E69A4148]);
  v25 = sub_1BA4A0F28();
  v26 = v24;
  v27 = v46;
  v49 = [v26 initWithTrendDateInterval:v25 trendAverage:v46];

  (*(v5 + 8))(v10, v4);
  v16 = v50;
  v14 = v51;
LABEL_18:
  v28 = [objc_opt_self() hk:v14 dateIntervalWithCodableDateInterval:0 sourceTimeZone:?];
  sub_1BA4A0F48();

  v29 = [v16 unitString];
  if (v29)
  {
    v30 = v29;
    v31 = [objc_opt_self() unitFromString_];

    [v16 value];
    v33 = [objc_opt_self() quantityWithUnit:v31 doubleValue:v32];

    v34 = objc_allocWithZone(MEMORY[0x1E69A4148]);
    v35 = sub_1BA4A0F28();
    v36 = [v34 initWithTrendDateInterval:v35 trendAverage:v33];

    (*(v5 + 8))(v7, v4);
    v54[4] = v49;
    v54[5] = v36;
    v53 = MEMORY[0x1E69E7CC0];
    v37 = v49;
    v38 = v36;
    for (i = 0; i != 2; ++i)
    {
      v40 = v54[i + 4];
      if (v40)
      {
        v41 = v40;
        MEMORY[0x1BFAF1510]();
        if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v49 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1BA4A6B68();
        }

        sub_1BA4A6BB8();
      }
    }

    sub_1B9F6A804(0, &qword_1EDC5E358, &unk_1EDC5E360);
    swift_arrayDestroy();
    v42 = [v11 chartString];
    if (v42)
    {
      v43 = v42;
      v44 = objc_allocWithZone(MEMORY[0x1E69A4138]);
      sub_1B9F0ADF8(0, &unk_1EDC5E360);
      v45 = sub_1BA4A6AE8();

      v14 = [v44 initForTimeScope:v52 trendSpans:v45 localizableTrendDescription:v43];

      goto LABEL_13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

id HKCodableSummaryTrendChartViewModel.coveredTimeScope.getter()
{
  swift_getObjectType();
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v0 hasCoveredTimeScopeRawValue])
  {
    if (([v0 coveredTimeScopeRawValue] & 0x8000000000000000) == 0)
    {
      return [v0 coveredTimeScopeRawValue];
    }
  }

  else
  {
    _s18HealthExperienceUI0A44ChecklistStagedFeatureStatusFeedItemProviderPAAE6logger2os6LoggerVvg_0();
    v7 = v0;
    v8 = sub_1BA4A3E88();
    v9 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v10 = 136315394;
      v12 = sub_1BA4A85D8();
      v14 = sub_1B9F0B82C(v12, v13, &v19);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2080;
      v18 = [v7 coveredTimeScopeRawValue];
      v15 = sub_1BA4A82D8();
      v17 = sub_1B9F0B82C(v15, v16, &v19);

      *(v10 + 14) = v17;
      _os_log_impl(&dword_1B9F07000, v8, v9, "%s View model has time scope that can't be decoded: %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v11, -1, -1);
      MEMORY[0x1BFAF43A0](v10, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
  }

  return 0;
}

id HKCodableSummaryTrendChartViewModel.coveredTimeScope.setter(uint64_t a1, char a2)
{
  if (a2)
  {
    a1 = -1;
  }

  return [v2 setCoveredTimeScopeRawValue_];
}

id (*HKCodableSummaryTrendChartViewModel.coveredTimeScope.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  *a1 = HKCodableSummaryTrendChartViewModel.coveredTimeScope.getter();
  *(a1 + 8) = v3 & 1;
  return sub_1BA08124C;
}

id sub_1BA08124C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v1 = -1;
  }

  else
  {
    v1 = *a1;
  }

  return [*(a1 + 16) setCoveredTimeScopeRawValue_];
}

id HKCodableIntentValueResponse.init(identifier:value:chart:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v7 = result;
    v8 = sub_1BA4A6758();

    [v7 setIdentifier_];

    [v7 setValue_];
    [v7 setChart_];

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BA081340()
{
  if (!qword_1EBBEAF60)
  {
    sub_1B9F6A804(255, &qword_1EDC6B490, &qword_1EDC6E350);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBEAF60);
    }
  }
}

id sub_1BA0813C0(unint64_t a1, void *a2, uint64_t a3)
{
  sub_1BA081E08();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v11 = result;
    sub_1B9FE5B74(a1);
    v12 = objc_allocWithZone(MEMORY[0x1E695DF70]);
    v13 = sub_1BA4A6AE8();

    v14 = [v12 initWithArray_];

    [v11 setSamples_];
    if (a1 >> 62)
    {
      v15 = sub_1BA4A7CC8();
    }

    else
    {
      v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    [v11 setCount_];
    [v11 setDataType_];
    v16 = sub_1BA4A2338();
    v17 = *(v16 - 8);
    (*(v17 + 16))(v9, a3, v16);
    (*(v17 + 56))(v9, 0, 1, v16);
    SharableModelVersionCoding.modelVersion.setter(v9, v3, &protocol witness table for HKCodableNotificationDataSourceQueryData);

    (*(v17 + 8))(a3, v16);
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BA081600(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v36 = a3;
  v33 = a2;
  v35 = sub_1BA4A1798();
  v6 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA081E08();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BA4A1728();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v4;
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v17 = result;
    v18 = [a1 startDate];
    sub_1BA4A16F8();

    v19 = sub_1BA4A16B8();
    v20 = *(v13 + 8);
    v20(v15, v12);
    v21 = MEMORY[0x1BFAF3470](v19);

    [v17 setStartDate_];
    v22 = [a1 endDate];
    sub_1BA4A16F8();

    v23 = sub_1BA4A16B8();
    v20(v15, v12);
    v24 = MEMORY[0x1BFAF3470](v23);

    [v17 setEndDate_];
    [v17 setDataType_];

    objc_opt_self();
    v25 = swift_dynamicCastObjCClass();
    if (v25)
    {
      v26 = v25;
      v27 = a1;
      [v17 setCategoryValue_];
    }

    v28 = sub_1BA4A2338();
    v29 = *(v28 - 8);
    v30 = v36;
    (*(v29 + 16))(v11, v36, v28);
    (*(v29 + 56))(v11, 0, 1, v28);
    SharableModelVersionCoding.modelVersion.setter(v11, v34, &protocol witness table for HKCodableNotificationSample);
    v31 = [a1 UUID];
    sub_1BA4A1778();

    sub_1BA4A1748();
    (*(v6 + 8))(v8, v35);
    v32 = sub_1BA4A6758();

    [v17 setSampleUUID_];

    (*(v29 + 8))(v30, v28);
    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BA081A50(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v37 = a5;
  v11 = sub_1BA4A1798();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA081E08();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v34 = v11;
    v19 = result;
    v36 = a3;
    v20 = sub_1BA4A16B8();
    v21 = MEMORY[0x1BFAF3470]();

    [v19 setStartDate_];
    v35 = a4;
    v22 = sub_1BA4A16B8();
    v23 = MEMORY[0x1BFAF3470]();

    [v19 setEndDate_];
    [v19 setDataType_];

    objc_opt_self();
    v24 = swift_dynamicCastObjCClass();
    if (v24)
    {
      v25 = v24;
      v26 = a1;
      [v19 setCategoryValue_];
    }

    v27 = sub_1BA4A2338();
    v28 = *(v27 - 8);
    v29 = v37;
    (*(v28 + 16))(v17, v37, v27);
    (*(v28 + 56))(v17, 0, 1, v27);
    SharableModelVersionCoding.modelVersion.setter(v17, v6, &protocol witness table for HKCodableNotificationSample);
    v30 = [a1 UUID];
    sub_1BA4A1778();

    sub_1BA4A1748();
    (*(v12 + 8))(v14, v34);
    v31 = sub_1BA4A6758();

    [v19 setSampleUUID_];

    (*(v28 + 8))(v29, v27);
    v32 = sub_1BA4A1728();
    v33 = *(*(v32 - 8) + 8);
    v33(v35, v32);
    v33(v36, v32);
    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BA081E08()
{
  if (!qword_1EDC6ADC8)
  {
    sub_1BA4A2338();
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6ADC8);
    }
  }
}

void sub_1BA081EB4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
  v5 = v2;
}

id sub_1BA081F0C()
{
  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

void sub_1BA081F50(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  *(v1 + 40) = a1;
}

uint64_t sub_1BA081F98(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 48) = v3;
  *(v4 + 56) = v2;
}

uint64_t sub_1BA081FF8()
{
  swift_beginAccess();
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_1BA082044(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t sub_1BA0820E8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 64) = v3;
  *(v4 + 72) = v2;
}

uint64_t sub_1BA082148()
{
  swift_beginAccess();
  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_1BA082194(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

void *SidebarDataSourceItem.__allocating_init(uniqueIdentifier:detailViewController:text:image:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[4] = 0;
  type metadata accessor for SidebarListCell();
  sub_1BA0823A4();
  v12[6] = sub_1BA4A6808();
  v12[7] = v13;
  v12[5] = a3;
  v12[2] = a4;
  v12[3] = a5;
  swift_beginAccess();
  v12[4] = a6;
  v12[8] = a1;
  v12[9] = a2;
  return v12;
}

void *SidebarDataSourceItem.init(uniqueIdentifier:detailViewController:text:image:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = 0;
  type metadata accessor for SidebarListCell();
  sub_1BA0823A4();
  v6[6] = sub_1BA4A6808();
  v6[7] = v13;
  v6[5] = a3;
  v6[2] = a4;
  v6[3] = a5;
  swift_beginAccess();
  v14 = v6[4];
  v6[4] = a6;

  v6[8] = a1;
  v6[9] = a2;
  return v6;
}

unint64_t sub_1BA0823A4()
{
  result = qword_1EBBEAF68;
  if (!qword_1EBBEAF68)
  {
    type metadata accessor for SidebarListCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBEAF68);
  }

  return result;
}

uint64_t SidebarDataSourceItem.deinit()
{

  return v0;
}

uint64_t SidebarDataSourceItem.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BA0824D8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
}

void *sub_1BA082584()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 32);
  v3 = v2;
  return v2;
}

void sub_1BA0825CC(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *(v3 + 32) = a1;
}

id sub_1BA08266C()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 40);

  return v2;
}

void sub_1BA0826BC(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *(v3 + 40) = a1;
}

id sub_1BA08275C(uint64_t a1, void *a2)
{
  v4 = *v2;
  swift_beginAccess();
  return [a2 showDetailViewController:*(v4 + 40) sender:a2];
}

uint64_t sub_1BA0827B4()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 48);

  return v2;
}

uint64_t sub_1BA082804()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 64);

  return v2;
}

uint64_t sub_1BA082854(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

uint64_t sub_1BA0828B8(uint64_t a1)
{
  result = sub_1BA082930(&qword_1EBBEAF70);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BA082930(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SidebarDataSourceItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BA082C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v90 = a3;
  v75 = a2;
  v3 = type metadata accessor for SummarySharingSelectionFlow(0);
  v89 = *(v3 - 8);
  v88 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v86 = MEMORY[0x1E69E8050];
  v87 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F3D488(0, &qword_1EDC6B5B8, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v85 = &v59 - v6;
  sub_1BA090A08();
  v61 = v7;
  v63 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA090DCC();
  v60 = v10;
  v62 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA091540(0, &qword_1EBBEB0E8, sub_1BA090DCC, sub_1BA090E88);
  v66 = v13;
  v67 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v59 - v14;
  sub_1BA090EBC();
  v69 = v16;
  v70 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v59 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA091020();
  v72 = v18;
  v76 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v64 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA091330(0, &qword_1EBBEB138, sub_1BA091020, sub_1BA0913D8);
  v78 = v20;
  v80 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v68 = &v59 - v21;
  sub_1BA09140C();
  v77 = v22;
  v79 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v73 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA091540(0, &qword_1EBBEB158, sub_1BA09140C, sub_1BA0915B0);
  v25 = *(v24 - 8);
  v81 = v24;
  v82 = v25;
  MEMORY[0x1EEE9AC00](v24);
  v71 = &v59 - v26;
  sub_1BA0915E4();
  v28 = *(v27 - 8);
  v83 = v27;
  v84 = v28;
  MEMORY[0x1EEE9AC00](v27);
  v74 = &v59 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3C48();
  v30 = sub_1BA4A3C38();
  *&v91 = sub_1BA4A7698();
  sub_1BA4A4D08();
  sub_1BA090C94();
  sub_1BA090B9C(0);
  sub_1BA091AF8(&qword_1EBBEB0D0, sub_1BA090C94);
  sub_1BA090C60();
  sub_1BA4A5078();

  v31 = swift_allocObject();
  v32 = v65;
  *(v31 + 16) = v30;
  *(v31 + 24) = v32;
  sub_1B9F0ADF8(0, &qword_1EDC6B630);
  sub_1BA091AF8(&qword_1EBBEB0E0, sub_1BA090A08);

  v33 = v32;
  v34 = v61;
  sub_1BA4A4FD8();

  (*(v63 + 8))(v9, v34);
  sub_1BA090E88();
  v35 = v60;
  sub_1BA4A5068();
  (*(v62 + 8))(v12, v35);
  sub_1B9F0A534(v75, &v91);
  v36 = swift_allocObject();
  sub_1B9F25598(&v91, v36 + 16);
  sub_1B9F3D488(0, &qword_1EBBEA8F0, MEMORY[0x1E69A3DD0], MEMORY[0x1E69E62F8]);
  sub_1BA090F98();
  v37 = v59;
  v38 = v66;
  sub_1BA4A5058();

  (*(v67 + 8))(v15, v38);
  sub_1BA4A4D08();
  sub_1BA09110C(0);
  sub_1BA091AF8(&qword_1EBBEB130, sub_1BA090EBC);
  sub_1BA091274();
  v39 = v64;
  v40 = v69;
  sub_1BA4A5078();
  (*(v70 + 8))(v37, v40);
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  v41 = sub_1BA4A7308();
  *&v91 = v41;
  v42 = sub_1BA4A72A8();
  v43 = v85;
  (*(*(v42 - 8) + 56))(v85, 1, 1, v42);
  sub_1BA0913D8();
  sub_1B9F3DC80();
  v44 = v68;
  v45 = v72;
  sub_1BA4A50A8();
  sub_1BA091A88(v43, &qword_1EDC6B5B8, v86);
  (*(v76 + 8))(v39, v45);

  v46 = v87;
  sub_1BA091B40(v90, v87, type metadata accessor for SummarySharingSelectionFlow);
  v47 = (*(v89 + 80) + 24) & ~*(v89 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = v33;
  sub_1BA0918B0(v46, v48 + v47, type metadata accessor for SummarySharingSelectionFlow);
  type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  sub_1BA0914B8();
  v49 = v33;
  v50 = v73;
  v51 = v78;
  sub_1BA4A4FA8();

  (*(v80 + 8))(v44, v51);
  sub_1BA0915B0();
  v52 = v71;
  v53 = v77;
  sub_1BA4A5068();
  (*(v79 + 8))(v50, v53);
  sub_1BA09091C();
  sub_1BA0916D0();
  sub_1BA091AF8(&qword_1EBBEB098, sub_1BA09091C);
  v54 = v74;
  v55 = v81;
  sub_1BA4A5018();
  (*(v82 + 8))(v52, v55);
  sub_1BA091AF8(&qword_1EBBEB178, sub_1BA0915E4);
  v56 = v83;
  v57 = sub_1BA4A4F98();

  (*(v84 + 8))(v54, v56);
  return v57;
}

uint64_t sub_1BA08397C@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = MEMORY[0x1E69E6720];
  sub_1B9F3D488(0, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v47 - v8;
  sub_1B9F3D488(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, v6);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v47 - v11;
  v13 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v47 - v18;
  if (FeedItem.pluginInfo.getter())
  {
    v53 = v19;
    v54 = v16;
    v20 = sub_1BA4A3AD8();

    if (sub_1BA1B05F0(v20))
    {
      v22 = v21;
      v52 = v20;
      v23 = a1;
      v24 = v13;
      ObjectType = swift_getObjectType();
      sub_1BA091B40(a2, v9, type metadata accessor for SummarySharingSelectionFlow);
      v26 = type metadata accessor for SummarySharingSelectionFlow(0);
      (*(*(v26 - 8) + 56))(v9, 0, 1, v26);
      v27 = *(v22 + 40);
      v51 = v23;
      v27(v23, v9, ObjectType, v22);
      sub_1BA091A88(v9, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow);
      if ((*(v14 + 48))(v12, 1, v24) != 1)
      {
        v50 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent;
        v30 = v53;
        sub_1BA0918B0(v12, v53, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        sub_1BA091B40(v30, v54, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        v55 = type metadata accessor for SummarySharingSelectableDataTypeCell();
        sub_1BA091918();
        v31 = sub_1BA4A6808();
        v49 = v24;
        v33 = v32;
        *(a3 + 40) = 0;
        swift_unknownObjectWeakInit();
        v34 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
        v35 = *(v34 + 40);
        v36 = *(v14 + 56);
        v47 = v14 + 56;
        v48 = v36;
        v36(a3 + v35, 1, 1, v24);
        *a3 = v31;
        *(a3 + 8) = v33;
        v55 = 0xD000000000000025;
        v56 = 0x80000001BA4E3640;
        v37 = v51;
        v38 = [v51 uniqueIdentifier];
        v39 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v41 = v40;

        MEMORY[0x1BFAF1350](v39, v41);

        v42 = v56;
        *(a3 + 16) = v55;
        *(a3 + 24) = v42;
        v43 = [v37 uniqueIdentifier];
        v44 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v46 = v45;
        swift_unknownObjectRelease();

        sub_1BA091D8C(v30, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        *(a3 + 56) = v44;
        *(a3 + 64) = v46;
        sub_1BA091A88(a3 + v35, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        sub_1BA0918B0(v54, a3 + v35, v50);
        v48(a3 + v35, 0, 1, v49);
        *(a3 + 49) = 1;
        *(a3 + 40) = 0;
        swift_unknownObjectWeakAssign();
        *(a3 + 48) = 1;
        return (*(*(v34 - 8) + 56))(a3, 0, 1, v34);
      }

      swift_unknownObjectRelease();

      sub_1BA091A88(v12, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    }

    else
    {
    }
  }

  v28 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  return (*(*(v28 - 8) + 56))(a3, 1, 1, v28);
}

uint64_t sub_1BA083F00(void *a1)
{
  sub_1B9F3D488(0, &qword_1EBBEB180, sub_1BA090984, MEMORY[0x1E695C000]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v25 - v5;
  v7 = sub_1BA4A3EA8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v11 = a1;
  v12 = sub_1BA4A3E88();
  v13 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v26 = v3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v25 = v7;
    v17 = v16;
    v28 = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_1B9F0B82C(0xD00000000000002FLL, 0x80000001BA4BACE0, &v28);
    *(v15 + 12) = 2080;
    v27 = a1;
    v18 = a1;
    sub_1B9F0D950(0, &qword_1EDC6E310);
    v19 = sub_1BA4A6808();
    v21 = sub_1B9F0B82C(v19, v20, &v28);

    *(v15 + 14) = v21;
    _os_log_impl(&dword_1B9F07000, v12, v13, "[%s] Encountered an error: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v17, -1, -1);
    v22 = v15;
    v3 = v26;
    MEMORY[0x1BFAF43A0](v22, -1, -1);

    (*(v8 + 8))(v10, v25);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  v28 = MEMORY[0x1E69E7CC0];
  sub_1BA090984(0);
  sub_1BA4A4E78();
  sub_1BA091828();
  v23 = sub_1BA4A4F98();
  (*(v4 + 8))(v6, v3);
  return v23;
}

uint64_t sub_1BA084234()
{
  sub_1BA090588();
  v2 = *(v1 - 8);
  v23 = v1;
  v24 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v22 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0906F8();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A1798();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SharedProfileHeaderDataSource();
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_healthExperienceStore), *(v0 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_healthExperienceStore + 24));
  v12 = sub_1BA4A1B68();
  sub_1BA4A3358();
  v25 = *(sub_1BA0CDA8C(v12, v11) + qword_1EDC6A560);
  v13 = MEMORY[0x1E69A3430];
  v14 = MEMORY[0x1E695BF98];
  sub_1BA090874(0, &qword_1EBBEE020, &qword_1EBBEA318, MEMORY[0x1E69A3430], MEMORY[0x1E695BF98]);
  sub_1BA090810(&qword_1EBBEB080, &qword_1EBBEE020, v14);
  v25 = sub_1BA4A4F98();
  v15 = MEMORY[0x1E695BED0];
  sub_1BA090874(0, &unk_1EBBEE000, &qword_1EBBEA318, v13, MEMORY[0x1E695BED0]);
  v16 = MEMORY[0x1E69A3340];
  sub_1B9F3D488(0, &qword_1EBBEB070, MEMORY[0x1E69A3340], MEMORY[0x1E69E6720]);
  sub_1BA090810(&qword_1EBBEE010, &unk_1EBBEE000, v15);
  sub_1BA4A4FE8();

  sub_1BA091AF8(&unk_1EBBEE030, sub_1BA0906F8);
  v17 = sub_1BA4A4F98();

  (*(v6 + 8))(v8, v5);
  v25 = v17;
  sub_1BA090874(0, &unk_1EBBEDFE0, &qword_1EBBEB070, v16, v15);
  sub_1BA08FA0C(0, &qword_1EDC6E1E0, &qword_1EDC6E1F0, MEMORY[0x1E69A3208], MEMORY[0x1E69E6720]);
  sub_1BA090668();
  v18 = v22;
  sub_1BA4A4FE8();
  sub_1BA091AF8(&qword_1EBBEB088, sub_1BA090588);
  v19 = v23;
  v20 = sub_1BA4A4F98();

  (*(v24 + 8))(v18, v19);
  return v20;
}

id sub_1BA0846F4()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController____lazy_storage___doneButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController____lazy_storage___doneButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController____lazy_storage___doneButtonItem);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:v0 action:sel_doneButtonTapped];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA08477C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController____lazy_storage___activitySpinnerItem;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController____lazy_storage___activitySpinnerItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController____lazy_storage___activitySpinnerItem);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
    v5 = objc_opt_self();
    v6 = v4;
    v7 = [v5 systemGrayColor];
    [v6 setTintColor_];

    [v6 startAnimating];
    v8 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithCustomView_];

    v9 = *(v0 + v1);
    *(v0 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

uint64_t sub_1BA084884()
{
  sub_1B9F3D488(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v49 - v2;
  v4 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_currentAuthorizations;
  v8 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_currentAuthorizations);
  v9 = OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_selectedDataTypesContext;
  swift_beginAccess();
  v54 = v0;
  v10 = *(v0 + v9);
  swift_beginAccess();
  v11 = *(v10 + 24);
  v12 = v11[2];
  v52 = v8;
  if (v12)
  {
    v50 = v4;
    v13 = sub_1BA0219CC(v12, 0);
    v51 = v5;
    v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v55 = v13;
    sub_1BA023688(&v56, v13 + v14, v12, v11);
    v16 = v15;

    result = sub_1B9F52E48();
    if (v16 != v12)
    {
      goto LABEL_46;
    }

    v18 = v55;
    v4 = v50;
    v5 = v51;
    v19 = *(v55 + 16);
    if (v19)
    {
LABEL_4:
      v20 = *(v4 + 40);
      v21 = *(v5 + 80);
      v55 = v18;
      v22 = v18 + ((v21 + 32) & ~v21);
      v23 = *(v5 + 72);
      v24 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1BA091B40(v22, v7, type metadata accessor for SummarySharingSelectableDataTypeItem);
        sub_1BA08FD94(&v7[v20], v3);
        v25 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
        if ((*(*(v25 - 8) + 48))(v3, 1, v25) == 1)
        {
          sub_1BA091A88(v3, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
          v26 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          v26 = *&v3[*(v25 + 44)];

          sub_1BA091D8C(v3, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        }

        sub_1BA091D8C(v7, type metadata accessor for SummarySharingSelectableDataTypeItem);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_1BA27FC80(0, v24[2] + 1, 1, v24);
        }

        v28 = v24[2];
        v27 = v24[3];
        if (v28 >= v27 >> 1)
        {
          v24 = sub_1BA27FC80((v27 > 1), v28 + 1, 1, v24);
        }

        v24[2] = v28 + 1;
        v24[v28 + 4] = v26;
        v22 += v23;
        --v19;
      }

      while (v19);

      v29 = v24[2];
      if (v29)
      {
        goto LABEL_14;
      }

LABEL_33:
      v31 = MEMORY[0x1E69E7CC0];
LABEL_34:

      v42 = sub_1BA090428(v31, v52);

      if (*(*(v54 + v53) + 16) <= *(v42 + 16) >> 3)
      {
        goto LABEL_38;
      }

      v44 = sub_1BA08BF54(v43, v42);

      v45 = *(v44 + 16);
      if (v45)
      {
        while (1)
        {
          v46 = sub_1BA021C24(v45, 0);
          v47 = *(sub_1BA4A3A28() - 8);
          v42 = sub_1BA023BA4(&v56, (v46 + ((*(v47 + 80) + 32) & ~*(v47 + 80))), v45, v44);
          sub_1B9F52E48();
          if (v42 == v45)
          {
            break;
          }

          __break(1u);
LABEL_38:
          v56 = v42;

          sub_1BA08BD28(v48, &qword_1EBBEA078, MEMORY[0x1E69A3910], MEMORY[0x1E69A3910], sub_1BA021FB8);

          v44 = v56;
          v45 = *(v56 + 16);
          if (!v45)
          {
            goto LABEL_39;
          }
        }
      }

      else
      {
LABEL_39:

        return MEMORY[0x1E69E7CC0];
      }

      return v46;
    }
  }

  else
  {

    v18 = MEMORY[0x1E69E7CC0];
    v19 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v19)
    {
      goto LABEL_4;
    }
  }

  v24 = MEMORY[0x1E69E7CC0];
  v29 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v29)
  {
    goto LABEL_33;
  }

LABEL_14:
  v30 = 0;
  v31 = MEMORY[0x1E69E7CC0];
  while (v30 < v24[2])
  {
    v32 = v24[v30 + 4];
    v33 = *(v32 + 16);
    v34 = v31[2];
    v35 = v34 + v33;
    if (__OFADD__(v34, v33))
    {
      goto LABEL_42;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v35 <= v31[3] >> 1)
    {
      if (*(v32 + 16))
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (v34 <= v35)
      {
        v37 = v34 + v33;
      }

      else
      {
        v37 = v34;
      }

      v31 = sub_1BA27FC4C(isUniquelyReferenced_nonNull_native, v37, 1, v31);
      if (*(v32 + 16))
      {
LABEL_27:
        v38 = (v31[3] >> 1) - v31[2];
        result = sub_1BA4A3A28();
        if (v38 < v33)
        {
          goto LABEL_44;
        }

        swift_arrayInitWithCopy();

        if (v33)
        {
          v39 = v31[2];
          v40 = __OFADD__(v39, v33);
          v41 = v39 + v33;
          if (v40)
          {
            goto LABEL_45;
          }

          v31[2] = v41;
        }

        goto LABEL_16;
      }
    }

    if (v33)
    {
      goto LABEL_43;
    }

LABEL_16:
    if (v29 == ++v30)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_1BA084EF0()
{
  sub_1B9F3D488(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v49 - v2;
  v4 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_selectedDataTypesContext;
  swift_beginAccess();
  v52 = v0;
  v9 = *(v0 + v8);
  swift_beginAccess();
  v10 = *(v9 + 24);
  v11 = v10[2];
  if (v11)
  {
    v50 = v4;
    v12 = sub_1BA0219CC(v11, 0);
    v51 = v5;
    v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v53 = v12;
    sub_1BA023688(&v54, v12 + v13, v11, v10);
    v15 = v14;

    result = sub_1B9F52E48();
    if (v15 != v11)
    {
      goto LABEL_44;
    }

    v17 = v53;
    v4 = v50;
    v5 = v51;
    v18 = *(v53 + 16);
    if (v18)
    {
LABEL_4:
      v19 = *(v4 + 40);
      v20 = *(v5 + 80);
      v53 = v17;
      v21 = v17 + ((v20 + 32) & ~v20);
      v22 = *(v5 + 72);
      v23 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1BA091B40(v21, v7, type metadata accessor for SummarySharingSelectableDataTypeItem);
        sub_1BA08FD94(&v7[v19], v3);
        v24 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
        if ((*(*(v24 - 8) + 48))(v3, 1, v24) == 1)
        {
          sub_1BA091A88(v3, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
          v25 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          v25 = *&v3[*(v24 + 44)];

          sub_1BA091D8C(v3, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        }

        sub_1BA091D8C(v7, type metadata accessor for SummarySharingSelectableDataTypeItem);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_1BA27FC80(0, v23[2] + 1, 1, v23);
        }

        v27 = v23[2];
        v26 = v23[3];
        if (v27 >= v26 >> 1)
        {
          v23 = sub_1BA27FC80((v26 > 1), v27 + 1, 1, v23);
        }

        v23[2] = v27 + 1;
        v23[v27 + 4] = v25;
        v21 += v22;
        --v18;
      }

      while (v18);

      v28 = v23[2];
      if (v28)
      {
        goto LABEL_14;
      }

LABEL_33:
      v30 = MEMORY[0x1E69E7CC0];
LABEL_34:

      v41 = *(v52 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_currentAuthorizations);

      v43 = sub_1BA090428(v42, v41);

      v44 = sub_1BA08C9A4(v30, v43);

      v45 = *(v44 + 16);
      if (v45)
      {
        v46 = sub_1BA021C24(*(v44 + 16), 0);
        v47 = *(sub_1BA4A3A28() - 8);
        v48 = sub_1BA023BA4(&v54, (v46 + ((*(v47 + 80) + 32) & ~*(v47 + 80))), v45, v44);
        sub_1B9F52E48();
        if (v48 == v45)
        {
          return v46;
        }

        __break(1u);
      }

      return MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
    v18 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v18)
    {
      goto LABEL_4;
    }
  }

  v23 = MEMORY[0x1E69E7CC0];
  v28 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v28)
  {
    goto LABEL_33;
  }

LABEL_14:
  v29 = 0;
  v30 = MEMORY[0x1E69E7CC0];
  while (v29 < v23[2])
  {
    v31 = v23[v29 + 4];
    v32 = *(v31 + 16);
    v33 = v30[2];
    v34 = v33 + v32;
    if (__OFADD__(v33, v32))
    {
      goto LABEL_40;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v34 <= v30[3] >> 1)
    {
      if (*(v31 + 16))
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (v33 <= v34)
      {
        v36 = v33 + v32;
      }

      else
      {
        v36 = v33;
      }

      v30 = sub_1BA27FC4C(isUniquelyReferenced_nonNull_native, v36, 1, v30);
      if (*(v31 + 16))
      {
LABEL_27:
        v37 = (v30[3] >> 1) - v30[2];
        result = sub_1BA4A3A28();
        if (v37 < v32)
        {
          goto LABEL_42;
        }

        swift_arrayInitWithCopy();

        if (v32)
        {
          v38 = v30[2];
          v39 = __OFADD__(v38, v32);
          v40 = v38 + v32;
          if (v39)
          {
            goto LABEL_43;
          }

          v30[2] = v40;
        }

        goto LABEL_16;
      }
    }

    if (v32)
    {
      goto LABEL_41;
    }

LABEL_16:
    if (v28 == ++v29)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

char *sub_1BA0854CC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v52 = a2;
  v8 = sub_1BA4A33C8();
  v50 = *(v8 - 8);
  v9 = v50;
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F3D488(0, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v45 - v12;
  v14 = type metadata accessor for SummarySharingRelationshipManagementContext(0);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v46 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v45 - v18;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_navigationBarTitleView) = 0;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_pausedStateChanged) = 0;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController____lazy_storage___doneButtonItem) = 0;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController____lazy_storage___activitySpinnerItem) = 0;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_updateAuthorizationsCancellable) = 0;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_cancellables) = MEMORY[0x1E69E7CC0];
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_currentAuthorizations) = MEMORY[0x1E69E7CD0];
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_healthStore) = a3;
  sub_1B9F0A534(a2, v4 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_healthExperienceStore);
  v20 = *(v9 + 16);
  v21 = a1;
  v51 = v8;
  v20(v4 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_sharingProfileInformation, a1, v8);
  v22 = objc_allocWithZone(MEMORY[0x1E696C4F0]);
  v45 = a3;
  v23 = [v22 initWithHealthStore_];
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_sharingEntryStore) = v23;
  v24 = v21;
  v48 = v21;
  v20(v19, v21, v8);
  *&v19[*(v15 + 28)] = v23;
  v25 = OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_flow;
  v49 = v19;
  sub_1BA091B40(v19, v4 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_flow, type metadata accessor for SummarySharingRelationshipManagementContext);
  v26 = type metadata accessor for SummarySharingSelectionFlow(0);
  swift_storeEnumTagMultiPayload();
  sub_1BA091B40(v4 + v25, v13, type metadata accessor for SummarySharingSelectionFlow);
  (*(*(v26 - 8) + 56))(v13, 0, 1, v26);
  type metadata accessor for SummarySharingSelectedDataTypesContext();
  swift_allocObject();
  v27 = v23;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_selectedDataTypesContext) = SummarySharingSelectedDataTypesContext.init(selectedItems:selectionFlow:)(MEMORY[0x1E69E7CC0], v13);
  v28 = v47;
  v20(v47, v24, v51);
  v29 = v46;
  sub_1BA091B40(v19, v46, type metadata accessor for SummarySharingRelationshipManagementContext);
  sub_1B9F0A534(v52, v54);
  type metadata accessor for SummarySharingRelationshipDetailsDataSource();
  swift_allocObject();
  v30 = v45;
  v31 = sub_1BA416814(v28, v29, v54, v30);

  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_relationshipDetailsDataSource) = v31;

  v33 = CompoundDataSourceCollectionViewController.init(dataSource:)(v32);
  v34 = OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_selectedDataTypesContext;
  swift_beginAccess();
  v53 = *(*&v33[v34] + 48);
  v35 = MEMORY[0x1E69E7CA8];
  sub_1BA091C38(0, &qword_1EBBEB1A0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E695BF70]);
  sub_1BA091BA8();
  v36 = v33;
  v53 = sub_1BA4A4F98();
  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = swift_allocObject();
  *(v38 + 16) = sub_1BA091C28;
  *(v38 + 24) = v37;
  sub_1BA091C38(0, &qword_1EBBEB1B0, v35 + 8, MEMORY[0x1E695BED0]);
  sub_1BA091CA0(&qword_1EBBEB1B8, &qword_1EBBEB1B0, v35 + 8);
  sub_1BA4A5148();

  swift_beginAccess();
  sub_1B9F3D488(0, &qword_1EDC5E6C0, MEMORY[0x1E695BF10], MEMORY[0x1E69E62F8]);
  sub_1BA091D04();
  sub_1BA4A4D38();
  swift_endAccess();

  v39 = OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_relationshipDetailsDataSource;
  *(*(*(*&v36[OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_relationshipDetailsDataSource] + OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingRelationshipDetailsDataSource_alertsDataSource) + qword_1EBBECE80) + OBJC_IVAR____TtCC18HealthExperienceUI39SummarySharingAlertsSelectionDataSourceP33_DBCA476D2670707FCCF6662511BF365A13Configuration_selectedDataTypesDelegate + 8) = &off_1F3803B10;
  swift_unknownObjectWeakAssign();
  type metadata accessor for SummarySharingSelectionContextDelegate();
  v40 = swift_allocObject();
  *(v40 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v40 + 24) = &off_1F3803B10;
  swift_unknownObjectWeakAssign();
  v41 = v36;

  sub_1BA29AAC4(v40);
  sub_1BA16CA30();

  *(*(*(*&v36[v39] + OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingRelationshipDetailsDataSource_topicsDataSource) + qword_1EBBF0538) + OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_selectedDataTypesDelegate + 8) = &off_1F3803B10;
  swift_unknownObjectWeakAssign();
  v42 = swift_allocObject();
  *(v42 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v42 + 24) = &off_1F3803B10;
  swift_unknownObjectWeakAssign();
  v43 = v41;

  sub_1BA29AAC4(v42);
  sub_1BA2FE7FC();

  __swift_destroy_boxed_opaque_existential_1(v52);
  (*(v50 + 8))(v48, v51);
  sub_1BA091D8C(v49, type metadata accessor for SummarySharingRelationshipManagementContext);

  *(*(*(*&v36[v39] + OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingRelationshipDetailsDataSource_previewDataSource) + OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingPreviewButtonDataSource_previewItem) + 152) = &off_1F3803AE0;
  swift_unknownObjectWeakAssign();

  return v43;
}

void sub_1BA085CC4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;

    sub_1BA2FE7FC();

    sub_1BA16CA30();

    v2 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_dataSourceAdaptor;
    swift_beginAccess();
    if (*&v1[v2])
    {

      sub_1BA10BB30(1);
    }

    v3 = sub_1BA0846F4();
    [v3 setEnabled_];
  }
}

void sub_1BA085E0C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1BA4A1798();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SummarySharingRelationshipDetailsViewController();
  v24.receiver = v0;
  v24.super_class = v7;
  objc_msgSendSuper2(&v24, sel_viewDidLoad);
  v8 = sub_1BA0846F4();
  [v8 setEnabled_];

  v9 = [v1 navigationItem];
  [v9 setRightBarButtonItem_];

  v10 = [v1 navigationItem];
  v11 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v1 action:sel_didTapCancel];
  [v10 setLeftBarButtonItem_];

  sub_1BA17B13C();
  v12 = [v1 collectionView];
  if (v12)
  {
    v13 = v12;
    v14 = [objc_opt_self() systemBackgroundColor];
    [v13 setBackgroundColor_];

    v15 = [v1 collectionView];
    if (v15)
    {
      v16 = v15;
      [v15 setPreservesSuperviewLayoutMargins_];

      sub_1BA4A3358();
      v17 = objc_allocWithZone(MEMORY[0x1E696C438]);
      v18 = sub_1BA4A1758();
      v19 = [v17 initForInvitationUUID_];

      (*(v4 + 8))(v6, v3);
      v20 = [objc_allocWithZone(MEMORY[0x1E696C430]) initWithHealthStore:*&v1[OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_healthStore] recipientIdentifier:v19];
      v23[1] = sub_1BA082C90(v20, &v1[OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_healthExperienceStore], &v1[OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_flow]);
      *(swift_allocObject() + 16) = ObjectType;
      v21 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v22 = swift_allocObject();
      *(v22 + 16) = v21;
      *(v22 + 24) = ObjectType;
      sub_1BA09091C();
      sub_1BA091AF8(&qword_1EBBEB098, sub_1BA09091C);
      sub_1BA4A4F88();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BA086250(uint64_t a1)
{
  v23.receiver = v1;
  v23.super_class = type metadata accessor for SummarySharingRelationshipDetailsViewController();
  objc_msgSendSuper2(&v23, sel_traitCollectionDidChange_, a1);
  if ((_UISolariumEnabled() & 1) == 0)
  {
    sub_1BA17F780(1);
  }

  v3 = OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_navigationBarTitleView;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (v4)
  {
    type metadata accessor for ProfileNavigationBarView();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = v5;
      v7 = v4;
      v8 = [v1 collectionView];
      if (v8)
      {
        v9 = v8;
        sub_1BA17BF70();
        v11 = v10;
        [v9 contentOffset];
        v13 = v12;
        [v9 adjustedContentInset];
        v15 = v14;

        if (v11 >= v13 + v15)
        {
          v16 = 0.0;
        }

        else
        {
          v16 = 1.0;
        }

        [*(v6 + OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView_contentView) alpha];
        if (v16 == v17)
        {
        }

        else
        {
          v18 = swift_allocObject();
          *(v18 + 16) = v6;
          *(v18 + 24) = v16;
          v19 = objc_opt_self();
          aBlock[4] = sub_1BA091E04;
          aBlock[5] = v18;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1B9F0B040;
          aBlock[3] = &block_descriptor_90;
          v20 = _Block_copy(aBlock);
          v21 = v7;

          [v19 animateWithDuration:v20 animations:0.2];

          _Block_release(v20);
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_1BA0864F4(uint64_t a1)
{
  v23.receiver = v1;
  v23.super_class = type metadata accessor for SummarySharingRelationshipDetailsViewController();
  objc_msgSendSuper2(&v23, sel_scrollViewDidScroll_, a1);
  if ((_UISolariumEnabled() & 1) == 0)
  {
    sub_1BA17F780(1);
  }

  v3 = OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_navigationBarTitleView;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (v4)
  {
    type metadata accessor for ProfileNavigationBarView();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = v5;
      v7 = v4;
      v8 = [v1 collectionView];
      if (v8)
      {
        v9 = v8;
        sub_1BA17BF70();
        v11 = v10;
        [v9 contentOffset];
        v13 = v12;
        [v9 adjustedContentInset];
        v15 = v14;

        if (v11 >= v13 + v15)
        {
          v16 = 0.0;
        }

        else
        {
          v16 = 1.0;
        }

        [*(v6 + OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView_contentView) alpha];
        if (v16 == v17)
        {
        }

        else
        {
          v18 = swift_allocObject();
          *(v18 + 16) = v6;
          *(v18 + 24) = v16;
          v19 = objc_opt_self();
          aBlock[4] = sub_1BA090900;
          aBlock[5] = v18;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1B9F0B040;
          aBlock[3] = &block_descriptor_83;
          v20 = _Block_copy(aBlock);
          v21 = v7;

          [v19 animateWithDuration:v20 animations:0.2];

          _Block_release(v20);
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_1BA0867A8()
{
  v1 = v0;
  v2 = sub_1BA4A3778();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A1798();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1BA4A37B8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - v12;
  sub_1BA4A3358();
  sub_1BA4A37A8();
  (*(v8 + 16))(v10, v13, v7);
  sub_1BA4A3758();
  v14 = sub_1BA4A3728();
  [v1 setUserActivity_];

  (*(v3 + 8))(v5, v2);
  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_1BA0869E0()
{
  sub_1B9F3D488(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v45 - v2;
  v4 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_currentAuthorizations);
  v9 = OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_selectedDataTypesContext;
  swift_beginAccess();
  v47 = v0;
  v10 = *(v0 + v9);
  swift_beginAccess();
  v11 = *(v10 + 24);
  v12 = v11[2];
  v48 = v8;
  if (v12)
  {
    v45 = v4;
    v13 = sub_1BA0219CC(v12, 0);
    v46 = v5;
    v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v49 = v13;
    sub_1BA023688(&v50, v13 + v14, v12, v11);
    v16 = v15;

    result = sub_1B9F52E48();
    if (v16 != v12)
    {
      goto LABEL_42;
    }

    v18 = v49;
    v4 = v45;
    v5 = v46;
    v19 = *(v49 + 16);
    if (v19)
    {
LABEL_4:
      v20 = *(v4 + 40);
      v21 = *(v5 + 80);
      v49 = v18;
      v22 = v18 + ((v21 + 32) & ~v21);
      v23 = *(v5 + 72);
      v24 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1BA091B40(v22, v7, type metadata accessor for SummarySharingSelectableDataTypeItem);
        sub_1BA08FD94(&v7[v20], v3);
        v25 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
        if ((*(*(v25 - 8) + 48))(v3, 1, v25) == 1)
        {
          sub_1BA091A88(v3, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
          v26 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          v26 = *&v3[*(v25 + 44)];

          sub_1BA091D8C(v3, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        }

        sub_1BA091D8C(v7, type metadata accessor for SummarySharingSelectableDataTypeItem);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_1BA27FC80(0, v24[2] + 1, 1, v24);
        }

        v28 = v24[2];
        v27 = v24[3];
        if (v28 >= v27 >> 1)
        {
          v24 = sub_1BA27FC80((v27 > 1), v28 + 1, 1, v24);
        }

        v24[2] = v28 + 1;
        v24[v28 + 4] = v26;
        v22 += v23;
        --v19;
      }

      while (v19);

      v29 = v24[2];
      if (v29)
      {
        goto LABEL_14;
      }

LABEL_33:
      v31 = MEMORY[0x1E69E7CC0];
LABEL_34:

      v42 = sub_1BA024460(v31);

      sub_1BA08B990(v48, v42);
      v44 = v43;

      if (v44)
      {
        return *(v47 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_pausedStateChanged);
      }

      else
      {
        return 1;
      }
    }
  }

  else
  {

    v18 = MEMORY[0x1E69E7CC0];
    v19 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v19)
    {
      goto LABEL_4;
    }
  }

  v24 = MEMORY[0x1E69E7CC0];
  v29 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v29)
  {
    goto LABEL_33;
  }

LABEL_14:
  v30 = 0;
  v31 = MEMORY[0x1E69E7CC0];
  while (v30 < v24[2])
  {
    v32 = v24[v30 + 4];
    v33 = *(v32 + 16);
    v34 = v31[2];
    v35 = v34 + v33;
    if (__OFADD__(v34, v33))
    {
      goto LABEL_38;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v35 <= v31[3] >> 1)
    {
      if (*(v32 + 16))
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (v34 <= v35)
      {
        v37 = v34 + v33;
      }

      else
      {
        v37 = v34;
      }

      v31 = sub_1BA27FC4C(isUniquelyReferenced_nonNull_native, v37, 1, v31);
      if (*(v32 + 16))
      {
LABEL_27:
        v38 = (v31[3] >> 1) - v31[2];
        result = sub_1BA4A3A28();
        if (v38 < v33)
        {
          goto LABEL_40;
        }

        swift_arrayInitWithCopy();

        if (v33)
        {
          v39 = v31[2];
          v40 = __OFADD__(v39, v33);
          v41 = v39 + v33;
          if (v40)
          {
            goto LABEL_41;
          }

          v31[2] = v41;
        }

        goto LABEL_16;
      }
    }

    if (v33)
    {
      goto LABEL_39;
    }

LABEL_16:
    if (v29 == ++v30)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_1BA086FAC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_healthExperienceStore);

  v1 = OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_sharingProfileInformation;
  v2 = sub_1BA4A33C8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1BA091D8C(v0 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_flow, type metadata accessor for SummarySharingSelectionFlow);
}

id sub_1BA0870E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SummarySharingRelationshipDetailsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SummarySharingRelationshipDetailsViewController()
{
  result = qword_1EBBEAFF0;
  if (!qword_1EBBEAFF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA0872B4()
{
  result = sub_1BA4A33C8();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SummarySharingSelectionFlow(319);
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void *sub_1BA0873D0()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_navigationBarTitleView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1BA08741C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_navigationBarTitleView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1BA0874D8()
{
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_pausedStateChanged) = 1;
  v1 = sub_1BA0846F4();
  [v1 setEnabled_];
}

uint64_t sub_1BA087580(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_selectedDataTypesContext;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1BA087638()
{
  v0 = sub_1BA4A3EA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v4 = sub_1BA4A3E88();
  v5 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v8 = sub_1BA4A85D8();
    v10 = sub_1B9F0B82C(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1B9F07000, v4, v5, "[%s] Fetch identifiers stream completed", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1BFAF43A0](v7, -1, -1);
    MEMORY[0x1BFAF43A0](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

void sub_1BA0877E0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v80 = a3;
  sub_1B9F3D488(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v69 - v5;
  v7 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v69 - v12;
  v14 = sub_1BA4A3EA8();
  v79 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v19 = Strong;
  v78 = v7;
  sub_1BA4A3DD8();

  v20 = sub_1BA4A3E88();
  v21 = sub_1BA4A6FC8();

  v76 = v21;
  v22 = os_log_type_enabled(v20, v21);
  v77 = v19;
  if (v22)
  {
    v75 = v8;
    v72 = v20;
    v73 = v16;
    v23 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v82[0] = v70;
    *v23 = 136315394;
    v24 = sub_1BA4A85D8();
    v26 = sub_1B9F0B82C(v24, v25, v82);

    *(v23 + 4) = v26;
    v71 = v23;
    *(v23 + 12) = 2080;
    v27 = v17;
    v28 = *(v17 + 16);
    v29 = MEMORY[0x1E69E7CC0];
    v74 = v27;
    if (v28)
    {
      v69 = v14;
      v81 = MEMORY[0x1E69E7CC0];
      sub_1BA066F70(0, v28, 0);
      v29 = v81;
      v30 = v27 + ((*(v75 + 80) + 32) & ~*(v75 + 80));
      v80 = *(v75 + 72);
      do
      {
        sub_1BA091B40(v30, v13, type metadata accessor for SummarySharingSelectableDataTypeItem);
        v32 = *(v13 + 7);
        v31 = *(v13 + 8);

        sub_1BA091D8C(v13, type metadata accessor for SummarySharingSelectableDataTypeItem);
        v81 = v29;
        v34 = *(v29 + 16);
        v33 = *(v29 + 24);
        if (v34 >= v33 >> 1)
        {
          sub_1BA066F70((v33 > 1), v34 + 1, 1);
          v29 = v81;
        }

        *(v29 + 16) = v34 + 1;
        v35 = v29 + 16 * v34;
        *(v35 + 32) = v32;
        *(v35 + 40) = v31;
        v30 += v80;
        --v28;
      }

      while (v28);
      v19 = v77;
      v36 = v78;
      v8 = v75;
      v14 = v69;
    }

    else
    {
      v8 = v75;
      v36 = v78;
    }

    sub_1BA0909B8(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v38 = MEMORY[0x1BFAF1560](v29, v37);
    v40 = v39;

    v41 = sub_1B9F0B82C(v38, v40, v82);

    v42 = v71;
    *(v71 + 14) = v41;
    v43 = v72;
    _os_log_impl(&dword_1B9F07000, v72, v76, "[%s] Fetched selectedTopics with identifiers: %s", v42, 0x16u);
    v44 = v70;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v44, -1, -1);
    MEMORY[0x1BFAF43A0](v42, -1, -1);

    (*(v79 + 8))(v73, v14);
    v17 = v74;
  }

  else
  {

    (*(v79 + 8))(v16, v14);
    v36 = v78;
  }

  swift_beginAccess();

  sub_1BA0DF96C(v17);

  v45 = *(v17 + 16);
  if (v45)
  {
    v46 = *(v36 + 40);
    v47 = v17 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v48 = *(v8 + 72);
    v49 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1BA091B40(v47, v10, type metadata accessor for SummarySharingSelectableDataTypeItem);
      sub_1BA08FD94(&v10[v46], v6);
      v50 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
      if ((*(*(v50 - 8) + 48))(v6, 1, v50) == 1)
      {
        sub_1BA091A88(v6, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        v51 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v51 = *&v6[*(v50 + 44)];

        sub_1BA091D8C(v6, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      }

      sub_1BA091D8C(v10, type metadata accessor for SummarySharingSelectableDataTypeItem);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = sub_1BA27FC80(0, v49[2] + 1, 1, v49);
      }

      v53 = v49[2];
      v52 = v49[3];
      v54 = v53 + 1;
      if (v53 >= v52 >> 1)
      {
        v49 = sub_1BA27FC80((v52 > 1), v53 + 1, 1, v49);
      }

      v49[2] = v54;
      v49[v53 + 4] = v51;
      v47 += v48;
      --v45;
    }

    while (v45);
    v19 = v77;
  }

  else
  {
    v49 = MEMORY[0x1E69E7CC0];
    v54 = *(MEMORY[0x1E69E7CC0] + 16);
    v55 = MEMORY[0x1E69E7CC0];
    if (!v54)
    {
LABEL_41:

      v67 = sub_1BA024460(v55);

      *&v19[OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_currentAuthorizations] = v67;

      v68 = sub_1BA0846F4();
      [v68 setEnabled_];

      return;
    }
  }

  v56 = 0;
  v55 = MEMORY[0x1E69E7CC0];
  while (v56 < v49[2])
  {
    v57 = v49[v56 + 4];
    v58 = *(v57 + 16);
    v59 = v55[2];
    v60 = v59 + v58;
    if (__OFADD__(v59, v58))
    {
      goto LABEL_44;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v60 <= v55[3] >> 1)
    {
      if (*(v57 + 16))
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (v59 <= v60)
      {
        v62 = v59 + v58;
      }

      else
      {
        v62 = v59;
      }

      v55 = sub_1BA27FC4C(isUniquelyReferenced_nonNull_native, v62, 1, v55);
      if (*(v57 + 16))
      {
LABEL_37:
        v63 = (v55[3] >> 1) - v55[2];
        sub_1BA4A3A28();
        if (v63 < v58)
        {
          goto LABEL_46;
        }

        swift_arrayInitWithCopy();

        if (v58)
        {
          v64 = v55[2];
          v65 = __OFADD__(v64, v58);
          v66 = v64 + v58;
          if (v65)
          {
            goto LABEL_47;
          }

          v55[2] = v66;
        }

        goto LABEL_26;
      }
    }

    if (v58)
    {
      goto LABEL_45;
    }

LABEL_26:
    if (v54 == ++v56)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
}

id sub_1BA088028()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_1B9F3D488(0, &qword_1EDC6B5B8, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v97 = &v85 - v3;
  v92 = sub_1BA4A1798();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v89 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v90 = &v85 - v6;
  sub_1BA08B238();
  v95 = v7;
  v94 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v93 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA091330(0, &qword_1EBBEB018, sub_1BA08B238, sub_1BA08B468);
  v98 = *(v9 - 8);
  v99 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v96 = &v85 - v10;
  v11 = sub_1BA4A3EA8();
  v104 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v102 = &v85 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v87 = &v85 - v17;
  v18 = OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_selectedDataTypesContext;
  swift_beginAccess();
  v19 = *&v0[v18];
  swift_beginAccess();
  v20 = *(v19 + 24);
  v21 = v20[2];
  if (v21)
  {
    v100 = v13;
    v101 = v11;
    v22 = sub_1BA0219CC(v21, 0);
    v23 = *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) - 8);
    sub_1BA023688(&v105, v22 + ((*(v23 + 80) + 32) & ~*(v23 + 80)), v21, v20);
    v25 = v24;

    result = sub_1B9F52E48();
    if (v25 != v21)
    {
      __break(1u);
      return result;
    }

    v1 = v0;
    v13 = v100;
    v11 = v101;
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
  }

  v27 = *(v22 + 16);

  if (v27)
  {
    v28 = OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_updateAuthorizationsCancellable;
    if (*&v1[OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_updateAuthorizationsCancellable])
    {
      v29 = v102;
      sub_1BA4A3DD8();
      v30 = sub_1BA4A3E88();
      v31 = sub_1BA4A6FA8();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v105 = v33;
        *v32 = 136315138;
        v34 = sub_1BA4A85D8();
        v36 = sub_1B9F0B82C(v34, v35, &v105);

        *(v32 + 4) = v36;
        _os_log_impl(&dword_1B9F07000, v30, v31, "[%s] updateAuthorizationsCancellable is in progress; not starting a new stream", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v33);
        MEMORY[0x1BFAF43A0](v33, -1, -1);
        MEMORY[0x1BFAF43A0](v32, -1, -1);
      }

      return (*(v104 + 8))(v29, v11);
    }

    else
    {
      v44 = *(sub_1BA084884() + 16);

      if (v44 || (v45 = *(sub_1BA084EF0() + 16), , v45) || (v1[OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_pausedStateChanged] & 1) != 0)
      {
        sub_1BA089F74(sub_1BA08477C, 0, 1);
        v46 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_sharingEntryStore];
        v47 = v90;
        sub_1BA4A3358();
        v48 = sub_1BA084884();
        v49 = sub_1BA084EF0();
        v50 = v91;
        v51 = v89;
        v52 = v92;
        (*(v91 + 16))(v89, v47, v92);
        v53 = *(v50 + 80);
        v104 = v28;
        v54 = (v53 + 40) & ~v53;
        v55 = swift_allocObject();
        v56 = v1;
        *(v55 + 2) = v48;
        *(v55 + 3) = v49;
        *(v55 + 4) = v46;
        (*(v50 + 32))(&v55[v54], v51, v52);
        v57 = MEMORY[0x1E695C028];
        sub_1BA08F8AC(0, &qword_1EBBEB028, MEMORY[0x1E695C028]);
        swift_allocObject();
        v58 = v46;
        v105 = sub_1BA4A4EA8();
        sub_1BA08B424(&qword_1EBBEB030, &qword_1EBBEB028, v57);
        v59 = sub_1BA4A4F98();

        (*(v50 + 8))(v47, v52);
        v105 = v59;
        v60 = swift_allocObject();
        v86 = v1;
        v61 = ObjectType;
        *(v60 + 16) = v86;
        *(v60 + 24) = v61;
        v102 = v56;
        sub_1BA4A4D08();
        v62 = MEMORY[0x1E695BED0];
        sub_1BA08F8AC(0, &qword_1EDC5F4B0, MEMORY[0x1E695BED0]);
        v63 = MEMORY[0x1E69E6370];
        sub_1BA091C38(0, &qword_1EDC5F4A0, MEMORY[0x1E69E6370], MEMORY[0x1E695BED0]);
        sub_1BA08B424(&qword_1EDC5F4B8, &qword_1EDC5F4B0, v62);
        sub_1BA091CA0(&qword_1EDC5F4A8, &qword_1EDC5F4A0, v63);
        v64 = v93;
        sub_1BA4A5078();

        sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
        v65 = sub_1BA4A7308();
        v105 = v65;
        v66 = sub_1BA4A72A8();
        v67 = v97;
        (*(*(v66 - 8) + 56))(v97, 1, 1, v66);
        sub_1BA08B468();
        sub_1B9F3DC80();
        v69 = v95;
        v68 = v96;
        sub_1BA4A50A8();
        sub_1BA091A88(v67, &qword_1EDC6B5B8, MEMORY[0x1E69E8050]);

        (*(v94 + 8))(v64, v69);
        v70 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v71 = swift_allocObject();
        *(v71 + 16) = v70;
        *(v71 + 24) = v61;
        swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_1BA08F944();
        v72 = v99;
        v73 = sub_1BA4A5008();

        (*(v98 + 8))(v68, v72);
        *&v86[v104] = v73;
      }

      else
      {
        v74 = v87;
        sub_1BA4A3DD8();
        v75 = sub_1BA4A3E88();
        v76 = sub_1BA4A6FA8();
        if (os_log_type_enabled(v75, v76))
        {
          v77 = v11;
          v78 = v1;
          v79 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v105 = v80;
          *v79 = 136315138;
          v81 = sub_1BA4A85D8();
          v83 = sub_1B9F0B82C(v81, v82, &v105);

          *(v79 + 4) = v83;
          _os_log_impl(&dword_1B9F07000, v75, v76, "[%s] User didn't change topics and didn't update their pause state. This should not have been possible so will just dismiss and not commit any transactions.", v79, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v80);
          MEMORY[0x1BFAF43A0](v80, -1, -1);
          v84 = v79;
          v1 = v78;
          MEMORY[0x1BFAF43A0](v84, -1, -1);

          (*(v104 + 8))(v74, v77);
        }

        else
        {

          (*(v104 + 8))(v74, v11);
        }

        return [v1 dismissViewControllerAnimated:1 completion:0];
      }
    }
  }

  else
  {
    sub_1BA4A3DD8();
    v37 = sub_1BA4A3E88();
    v38 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v105 = v40;
      *v39 = 136315138;
      v41 = sub_1BA4A85D8();
      v43 = sub_1B9F0B82C(v41, v42, &v105);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_1B9F07000, v37, v38, "[%s] User selected no topics to share; displaying error message", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x1BFAF43A0](v40, -1, -1);
      MEMORY[0x1BFAF43A0](v39, -1, -1);
    }

    (*(v104 + 8))(v13, v11);
    return sub_1BA088D00();
  }
}

uint64_t sub_1BA088D00()
{
  v1 = type metadata accessor for SummarySharingOnboardingError();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1BA4A32B8();
  if ((v5 & 1) == 0)
  {
    if (result)
    {
      if (result != 1)
      {
        return result;
      }

      v6 = 4;
    }

    else
    {
      v6 = 3;
    }

    v33 = v6;
    v32 = v1;
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    sub_1BA4A1318();
    v7 = swift_allocObject();
    *(v7 + 16) = v0;
    v8 = v0;
    v9 = sub_1BA4A6758();

    v38 = sub_1BA08FD50;
    v39 = v7;
    aBlock = MEMORY[0x1E69E9820];
    v35 = 1107296256;
    v36 = sub_1BA0B06D4;
    v37 = &block_descriptor_59;
    v10 = _Block_copy(&aBlock);

    v11 = objc_opt_self();
    v31 = [v11 actionWithTitle:v9 style:2 handler:v10];
    _Block_release(v10);

    sub_1BA4A1318();
    v12 = swift_allocObject();
    *(v12 + 16) = v8;
    v30 = v8;
    v13 = sub_1BA4A6758();

    v38 = sub_1BA08F9CC;
    v39 = v12;
    aBlock = MEMORY[0x1E69E9820];
    v35 = 1107296256;
    v36 = sub_1BA0B06D4;
    v37 = &block_descriptor_65;
    v14 = _Block_copy(&aBlock);

    v15 = [v11 actionWithTitle:v13 style:0 handler:v14];
    _Block_release(v14);

    sub_1BA4A1318();
    sub_1BA08FA0C(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1BA4B5480;
    v17 = sub_1BA4A33A8();
    v19 = v18;
    *(v16 + 56) = MEMORY[0x1E69E6158];
    *(v16 + 64) = sub_1B9F1BE20();
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    v20 = sub_1BA4A6768();
    v22 = v21;

    v23 = sub_1BA4A1318();
    v25 = v24;
    *v3 = v33;
    swift_storeEnumTagMultiPayload();
    sub_1BA0909B8(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BA4B7510;
    v27 = v31;
    *(inited + 32) = v31;
    *(inited + 40) = v15;
    v28 = v27;
    v29 = v15;
    sub_1BA0C6BA4(v30, v20, v22, v23, v25, inited, 0, 0);

    swift_setDeallocating();
    swift_arrayDestroy();
    return sub_1BA091D8C(v3, type metadata accessor for SummarySharingOnboardingError);
  }

  return result;
}

uint64_t sub_1BA0892D4@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  sub_1BA4A3DD8();
  v9 = sub_1BA4A3E88();
  v10 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v19 = a2;
    v12 = v11;
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315138;
    v14 = sub_1BA4A85D8();
    v16 = sub_1B9F0B82C(v14, v15, &v20);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_1B9F07000, v9, v10, "[%s] Completed authorization update!", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1BFAF43A0](v13, -1, -1);
    v17 = v12;
    a2 = v19;
    MEMORY[0x1BFAF43A0](v17, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  result = sub_1BA08949C(v8);
  *a2 = result;
  return result;
}

uint64_t sub_1BA08949C(char a1)
{
  sub_1BA0909B8(0, &qword_1EDC5F438, MEMORY[0x1E69E6370], MEMORY[0x1E695C000]);
  v3 = v2;
  v31 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v29 - v4;
  v6 = sub_1BA4A3EA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA08FA74();
  v11 = v10;
  v30 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA08FB30();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v19 = v16;
    v20 = objc_allocWithZone(sub_1BA4A34F8());
    v31 = sub_1BA4A34E8();
    v32 = sub_1BA4A34D8();
    *(swift_allocObject() + 16) = 1;
    v21 = MEMORY[0x1E695C028];
    sub_1BA08F8AC(0, &qword_1EBBEB028, MEMORY[0x1E695C028]);
    sub_1BA08B424(&qword_1EBBEB030, &qword_1EBBEB028, v21);
    v22 = MEMORY[0x1E69E6370];
    sub_1BA4A4FE8();

    *(swift_allocObject() + 16) = 1;
    sub_1BA091C38(0, &qword_1EDC5F4A0, v22, MEMORY[0x1E695BED0]);
    sub_1BA091AF8(&qword_1EBBEB050, sub_1BA08FA74);
    sub_1BA091CA0(&qword_1EDC5F4A8, &qword_1EDC5F4A0, v22);
    sub_1BA4A5018();

    (*(v30 + 8))(v13, v11);
    sub_1BA091AF8(&qword_1EBBEB058, sub_1BA08FB30);
    v23 = sub_1BA4A4F98();

    (*(v19 + 8))(v18, v15);
  }

  else
  {
    sub_1BA4A3DD8();
    v24 = sub_1BA4A3E88();
    v25 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v32 = v27;
      *v26 = 136446210;
      *(v26 + 4) = sub_1B9F0B82C(0xD00000000000002FLL, 0x80000001BA4BACE0, &v32);
      _os_log_impl(&dword_1B9F07000, v24, v25, "[%{public}s] Invite failed to send; not creating a commit transaction", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x1BFAF43A0](v27, -1, -1);
      MEMORY[0x1BFAF43A0](v26, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    LOBYTE(v32) = 0;
    sub_1BA4A4E78();
    sub_1BA08FC30();
    v23 = sub_1BA4A4F98();
    (*(v31 + 1))(v5, v3);
  }

  return v23;
}

uint64_t sub_1BA089A6C(void **a1)
{
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    if (v6)
    {
      v9 = v6;
      sub_1BA4A3DD8();
      v10 = v6;
      v11 = sub_1BA4A3E88();
      v12 = sub_1BA4A6FA8();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v23[0] = swift_slowAlloc();
        v24 = v23[0];
        *v13 = 136446466;
        v14 = sub_1BA4A85D8();
        v16 = sub_1B9F0B82C(v14, v15, &v24);

        *(v13 + 4) = v16;
        *(v13 + 12) = 2080;
        v23[1] = v6;
        v17 = v6;
        sub_1B9F0D950(0, &qword_1EDC6E310);
        v18 = sub_1BA4A6828();
        v20 = sub_1B9F0B82C(v18, v19, &v24);

        *(v13 + 14) = v20;
        _os_log_impl(&dword_1B9F07000, v11, v12, "[%{public}s] Failed to send invite: %s", v13, 0x16u);
        v21 = v23[0];
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v21, -1, -1);
        MEMORY[0x1BFAF43A0](v13, -1, -1);
      }

      (*(v3 + 8))(v5, v2);
      v22 = v6;
      sub_1BA089D08(v6);
    }

    *&v8[OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_updateAuthorizationsCancellable] = 0;
  }

  return result;
}

uint64_t sub_1BA089D08(void *a1)
{
  v3 = type metadata accessor for SummarySharingOnboardingError();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v6 = sub_1BA4A1318();
  v8 = v7;
  v9 = a1;
  SummarySharingOnboardingError.init(error:)(a1, v5);
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  v11 = v1;
  sub_1BA0C6BA4(v11, v6, v8, 0, 0, MEMORY[0x1E69E7CC0], sub_1BA08F9CC, v10);

  return sub_1BA091D8C(v5, type metadata accessor for SummarySharingOnboardingError);
}

void sub_1BA089EA8(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (v1)
    {
      [Strong dismissViewControllerAnimated:1 completion:0];
    }

    else
    {
      sub_1BA089D08(0);
    }
  }
}

void sub_1BA089F74(uint64_t (*a1)(void), char a2, char a3)
{
  v7 = [v3 navigationItem];
  v8 = a1();
  [v7 setRightBarButtonItem_];

  v9 = [v3 navigationItem];
  v10 = [v9 leftBarButtonItem];

  if (v10)
  {
    [v10 setEnabled_];
  }

  v11 = *(*&v3[OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_relationshipDetailsDataSource] + OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingRelationshipDetailsDataSource_stopSharingDataSource);
  if (v11)
  {
    v12 = *(v11 + OBJC_IVAR____TtC18HealthExperienceUI32EndSharingRelationshipDataSource_endSharingRelationshipItem);
    *(v12 + 96) = a3;
    sub_1BA08FA0C(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1BA4B5480;
    *(v13 + 56) = type metadata accessor for EndSharingRelationshipItem();
    *(v13 + 64) = sub_1BA091AF8(&qword_1EBBEAD68, type metadata accessor for EndSharingRelationshipItem);
    *(v13 + 32) = v12;

    sub_1BA0EB668(0, v13, 1);
  }
}

void sub_1BA08A158()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1BA4A1798();
  v38 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A3EA8();
  v37 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v0 navigationItem];
  v11 = sub_1BA08477C();
  [v10 setRightBarButtonItem_];

  v12 = *(*&v1[OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_relationshipDetailsDataSource] + OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingRelationshipDetailsDataSource_stopSharingDataSource);
  if (v12)
  {
    v13 = *(v12 + OBJC_IVAR____TtC18HealthExperienceUI32EndSharingRelationshipDataSource_endSharingRelationshipItem);
    *(v13 + 96) = 1;
    sub_1BA08FA0C(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1BA4B5480;
    *(v14 + 56) = type metadata accessor for EndSharingRelationshipItem();
    *(v14 + 64) = sub_1BA091AF8(&qword_1EBBEAD68, type metadata accessor for EndSharingRelationshipItem);
    *(v14 + 32) = v13;

    sub_1BA0EB668(0, v14, 1);
  }

  sub_1BA4A3DD8();
  v15 = v1;
  v16 = sub_1BA4A3E88();
  v17 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v36 = v3;
    v19 = v18;
    v20 = swift_slowAlloc();
    aBlock[0] = v20;
    *v19 = 136315395;
    v21 = sub_1BA4A85D8();
    v23 = sub_1B9F0B82C(v21, v22, aBlock);
    v35 = v6;
    v24 = ObjectType;
    v25 = v23;

    *(v19 + 4) = v25;
    *(v19 + 12) = 2081;
    sub_1BA4A33C8();
    sub_1BA091AF8(&qword_1EBBE9818, MEMORY[0x1E69A3430]);
    v26 = sub_1BA4A82D8();
    v28 = sub_1B9F0B82C(v26, v27, aBlock);

    *(v19 + 14) = v28;
    ObjectType = v24;
    _os_log_impl(&dword_1B9F07000, v16, v17, "%s Attempting to revoke invitation for %{private}s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v20, -1, -1);
    v29 = v19;
    v3 = v36;
    MEMORY[0x1BFAF43A0](v29, -1, -1);

    (*(v37 + 8))(v9, v35);
  }

  else
  {

    (*(v37 + 8))(v9, v6);
  }

  v30 = *&v15[OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_sharingEntryStore];
  sub_1BA4A3358();
  v31 = sub_1BA4A1758();
  (*(v38 + 8))(v5, v3);
  v32 = swift_allocObject();
  *(v32 + 16) = v15;
  *(v32 + 24) = ObjectType;
  aBlock[4] = sub_1BA08FD74;
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BA454240;
  aBlock[3] = &block_descriptor_71;
  v33 = _Block_copy(aBlock);
  v34 = v15;

  [v30 revokeInvitationWithUUID:v31 completion:v33];
  _Block_release(v33);
}

uint64_t sub_1BA08A688(int a1, void *a2, void *a3, void *a4)
{
  v61 = a4;
  v7 = sub_1BA4A6478();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v64 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BA4A64C8();
  v62 = *(v10 - 8);
  v63 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BA4A3EA8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v56 - v18;
  if (a2)
  {
    v20 = a2;
    sub_1BA4A3DD8();
    v21 = a2;
    v22 = sub_1BA4A3E88();
    v23 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v59 = v13;
      v25 = v24;
      v26 = swift_slowAlloc();
      v60 = v8;
      v27 = v26;
      aBlock[0] = v26;
      *v25 = 136315395;
      v28 = sub_1BA4A85D8();
      v61 = v7;
      v30 = sub_1B9F0B82C(v28, v29, aBlock);
      v58 = v12;
      v31 = a3;
      v32 = v30;

      *(v25 + 4) = v32;
      *(v25 + 12) = 2081;
      v65 = a2;
      v33 = a2;
      sub_1B9F0D950(0, &qword_1EDC6E310);
      v34 = sub_1BA4A6828();
      v36 = sub_1B9F0B82C(v34, v35, aBlock);
      a3 = v31;
      v12 = v58;

      *(v25 + 14) = v36;
      v7 = v61;
      _os_log_impl(&dword_1B9F07000, v22, v23, "%s Could not revoke invitation: %{private}s", v25, 0x16u);
      swift_arrayDestroy();
      v37 = v27;
      v8 = v60;
      MEMORY[0x1BFAF43A0](v37, -1, -1);
      MEMORY[0x1BFAF43A0](v25, -1, -1);

      (*(v14 + 8))(v19, v59);
    }

    else
    {

      (*(v14 + 8))(v19, v13);
    }
  }

  else
  {
    LODWORD(v58) = a1;
    v60 = v8;
    sub_1BA4A3DD8();
    v38 = a3;
    v39 = sub_1BA4A3E88();
    v40 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v59 = v13;
      v42 = v41;
      v57 = swift_slowAlloc();
      aBlock[0] = v57;
      *v42 = 136315651;
      v43 = sub_1BA4A85D8();
      v61 = a3;
      v45 = sub_1B9F0B82C(v43, v44, aBlock);

      *(v42 + 4) = v45;
      *(v42 + 12) = 2081;
      sub_1BA4A33C8();
      sub_1BA091AF8(&qword_1EBBE9818, MEMORY[0x1E69A3430]);
      v46 = sub_1BA4A82D8();
      v48 = sub_1B9F0B82C(v46, v47, aBlock);
      a3 = v61;

      *(v42 + 14) = v48;
      *(v42 + 22) = 1024;
      *(v42 + 24) = v58 & 1;
      _os_log_impl(&dword_1B9F07000, v39, v40, "%s Successfully revoked invitation for %{private}s. Success: %{BOOL}d", v42, 0x1Cu);
      v49 = v57;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v49, -1, -1);
      MEMORY[0x1BFAF43A0](v42, -1, -1);

      (*(v14 + 8))(v16, v59);
    }

    else
    {

      (*(v14 + 8))(v16, v13);
    }

    v8 = v60;
  }

  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  v50 = sub_1BA4A7308();
  v51 = swift_allocObject();
  *(v51 + 16) = a3;
  aBlock[4] = sub_1BA08FD7C;
  aBlock[5] = v51;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = &block_descriptor_77_0;
  v52 = _Block_copy(aBlock);
  v53 = a3;

  sub_1BA4A64A8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BA091AF8(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60]);
  sub_1B9F3D488(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1B9F31534();
  v54 = v64;
  sub_1BA4A7C38();
  MEMORY[0x1BFAF1D50](0, v12, v54, v52);
  _Block_release(v52);

  (*(v8 + 8))(v54, v7);
  return (*(v62 + 8))(v12, v63);
}

size_t sub_1BA08ADA4()
{
  swift_beginAccess();
  swift_beginAccess();

  return sub_1BA0DF61C(v0);
}

void sub_1BA08AE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v34 = a6;
  v36 = a5;
  v10 = sub_1BA4A3A28();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v35 = v14;
  v15 = *(a3 + 16);
  if (v15)
  {
    v32 = a4;
    aBlock[0] = MEMORY[0x1E69E7CC0];

    sub_1BA4A7F08();
    v33 = v11;
    v17 = *(v11 + 16);
    v16 = v11 + 16;
    v37 = v17;
    v18 = a3 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
    v19 = *(v16 + 56);
    do
    {
      v37(v13, v18, v10);
      sub_1BA4A3A18();
      (*(v16 - 8))(v13, v10);
      sub_1BA4A7ED8();
      sub_1BA4A7F18();
      sub_1BA4A7F28();
      sub_1BA4A7EE8();
      v18 += v19;
      --v15;
    }

    while (v15);
    v20 = aBlock[0];
    a4 = v32;
    v11 = v33;
  }

  else
  {

    v20 = MEMORY[0x1E69E7CC0];
  }

  v21 = *(a4 + 16);
  if (v21)
  {
    v33 = v20;
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BA4A7F08();
    v23 = *(v11 + 16);
    v22 = v11 + 16;
    v37 = v23;
    v24 = a4 + ((*(v22 + 64) + 32) & ~*(v22 + 64));
    v25 = *(v22 + 56);
    do
    {
      v37(v13, v24, v10);
      sub_1BA4A3A18();
      (*(v22 - 8))(v13, v10);
      sub_1BA4A7ED8();
      sub_1BA4A7F18();
      sub_1BA4A7F28();
      sub_1BA4A7EE8();
      v24 += v25;
      --v21;
    }

    while (v21);
  }

  v26 = sub_1BA4A1758();
  sub_1B9F0ADF8(0, &qword_1EBBEB060);
  v27 = sub_1BA4A6AE8();

  v28 = sub_1BA4A6AE8();

  v29 = swift_allocObject();
  v30 = v35;
  *(v29 + 16) = sub_1BA08FD3C;
  *(v29 + 24) = v30;
  aBlock[4] = sub_1BA08FD48;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BA454240;
  aBlock[3] = &block_descriptor_17;
  v31 = _Block_copy(aBlock);

  [v36 updateSharingAuthorizationsForInvitationUUID:v26 sharingAuthorizationsToAdd:v27 sharingAuthorizationsToDelete:v28 completion:v31];
  _Block_release(v31);
}

void sub_1BA08B1BC(char a1, id a2, void (*a3)(id, uint64_t))
{
  if (a2)
  {
    v5 = a2;
    a3(a2, 1);
  }

  else
  {
    (a3)(a1 & 1);
  }
}

void sub_1BA08B238()
{
  if (!qword_1EBBEB000)
  {
    sub_1BA08B344();
    v0 = MEMORY[0x1E695BED0];
    sub_1BA08F8AC(255, &qword_1EDC5F4B0, MEMORY[0x1E695BED0]);
    sub_1BA091AF8(&qword_1EBBEB010, sub_1BA08B344);
    sub_1BA08B424(&qword_1EDC5F4B8, &qword_1EDC5F4B0, v0);
    v1 = sub_1BA4A4C28();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEB000);
    }
  }
}

void sub_1BA08B344()
{
  if (!qword_1EBBEB008)
  {
    v0 = MEMORY[0x1E69E6370];
    sub_1BA091C38(255, &qword_1EDC5F4A0, MEMORY[0x1E69E6370], MEMORY[0x1E695BED0]);
    sub_1B9F0D950(255, &qword_1EDC6E310);
    sub_1BA091CA0(&qword_1EDC5F4A8, &qword_1EDC5F4A0, v0);
    v1 = sub_1BA4A4B38();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEB008);
    }
  }
}

uint64_t sub_1BA08B424(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, void))
{
  result = *a1;
  if (!result)
  {
    sub_1BA08F8AC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BA08B49C(char a1, char a2)
{
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v8 = sub_1BA4A3E88();
  v9 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14 = v11;
    *v10 = 136446466;
    *(v10 + 4) = sub_1B9F0B82C(0xD00000000000002FLL, 0x80000001BA4BACE0, &v14);
    *(v10 + 12) = 1024;
    *(v10 + 14) = a1 & 1;
    _os_log_impl(&dword_1B9F07000, v8, v9, "[%{public}s] Completed commit transaction operation with status: %{BOOL}d", v10, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1BFAF43A0](v11, -1, -1);
    MEMORY[0x1BFAF43A0](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  return a2 & 1;
}

uint64_t sub_1BA08B658(void *a1, int a2)
{
  LODWORD(v2) = a2;
  sub_1BA0909B8(0, &qword_1EDC5F438, MEMORY[0x1E69E6370], MEMORY[0x1E695C000]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - v7;
  v9 = sub_1BA4A3EA8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v13 = a1;
  v14 = sub_1BA4A3E88();
  v15 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v31 = v2;
    v2 = v16;
    v30 = swift_slowAlloc();
    v33 = v30;
    *v2 = 136446466;
    *(v2 + 4) = sub_1B9F0B82C(0xD00000000000002FLL, 0x80000001BA4BACE0, &v33);
    *(v2 + 12) = 2080;
    v32 = a1;
    v17 = a1;
    sub_1B9F0D950(0, &qword_1EDC6E310);
    v18 = sub_1BA4A6828();
    v20 = sub_1B9F0B82C(v18, v19, &v33);
    v29 = v9;
    v21 = v6;
    v22 = v5;
    v23 = v20;

    *(v2 + 14) = v23;
    v5 = v22;
    v6 = v21;
    _os_log_impl(&dword_1B9F07000, v14, v15, "[%{public}s] Received an error when attempting to commit a transaction: %s", v2, 0x16u);
    v24 = v30;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v24, -1, -1);
    v25 = v2;
    LOBYTE(v2) = v31;
    MEMORY[0x1BFAF43A0](v25, -1, -1);

    (*(v10 + 8))(v12, v29);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  LOBYTE(v33) = v2 & 1;
  sub_1BA4A4E78();
  sub_1BA08FC30();
  v26 = sub_1BA4A4F98();
  (*(v6 + 8))(v8, v5);
  return v26;
}