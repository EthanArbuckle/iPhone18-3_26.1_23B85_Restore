void __swiftcall CKTranscriptScrollIntentEntryViewChangedTrigger.init()(CKTranscriptScrollIntentEntryViewChangedTrigger *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

unint64_t type metadata accessor for CKTranscriptScrollIntentEntryViewChangedTrigger()
{
  result = qword_1EAD54048;
  if (!qword_1EAD54048)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD54048);
  }

  return result;
}

id CKSuggestedReplyMessagePartChatItem.__allocating_init(imChatItem:maxWidth:)(void *a1, double a2)
{
  v4 = [objc_allocWithZone(v2) initWithIMChatItem:a1 maxWidth:a2];

  return v4;
}

id CKSuggestedReplyMessagePartChatItem.init(imChatItem:maxWidth:)(void *a1, double a2)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {

    type metadata accessor for CKSuggestedReplyMessagePartChatItem();
    swift_deallocPartialClassInstance();
    return 0;
  }

  result = [v5 suggestedReply];
  if (result)
  {
    *&v2[OBJC_IVAR____TtC7ChatKit35CKSuggestedReplyMessagePartChatItem_suggestedReply] = result;
    v9.receiver = v2;
    v9.super_class = type metadata accessor for CKSuggestedReplyMessagePartChatItem();
    v7 = a1;
    v8 = objc_msgSendSuper2(&v9, sel_initWithIMChatItem_maxWidth_, v7, a2);

    if (v8)
    {
    }

    return v8;
  }

  __break(1u);
  return result;
}

id CKSuggestedReplyMessagePartChatItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKSuggestedReplyMessagePartChatItem.__allocating_init(notification:maxWidth:)(void *a1, double a2)
{
  v4 = [objc_allocWithZone(v2) initWithNotification:a1 maxWidth:a2];

  return v4;
}

id CKSuggestedReplyMessagePartChatItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKSuggestedReplyMessagePartChatItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_190839650()
{
  swift_getKeyPath();
  sub_1908396D4();
  sub_190D51C20();

  return sub_1908553EC() & 1;
}

unint64_t sub_1908396D4()
{
  result = qword_1EAD52E50;
  if (!qword_1EAD52E50)
  {
    type metadata accessor for DetailsViewConfiguration();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD52E50);
  }

  return result;
}

id sub_19083972C()
{
  swift_getKeyPath();
  sub_1908396D4();
  sub_190D51C20();

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v1 = result;
    v2 = [result restrictLocationSharing];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_190839800(uint64_t a1, SEL *a2)
{
  swift_getKeyPath();
  sub_1908396D4();
  sub_190D51C20();

  v4 = [*(v2 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation) chat];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [v4 *a2];

  return v6;
}

char *sub_1908398B0()
{
  v0 = [objc_allocWithZone(_s14ActionHandlersCMa()) init];
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = &v0[OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView15LocationSection14ActionHandlers_stageLocationRequest];
  *v2 = sub_190839B38;
  v2[1] = v1;

  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = &v0[OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView15LocationSection14ActionHandlers_stopSharingLocation];
  *v4 = sub_190839C38;
  v4[1] = v3;

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = &v0[OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView15LocationSection14ActionHandlers_shareLocation];
  *v6 = sub_190839DA8;
  v6[1] = v5;

  return v0;
}

void sub_1908399E0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_getKeyPath();
    sub_1908396D4();
    sub_190D51C20();

    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      [v2 stageLocationRequest];
      swift_unknownObjectRelease();
    }
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    swift_getKeyPath();
    sub_1908396D4();
    sub_190D51C20();

    v5 = swift_unknownObjectWeakLoadStrong();

    if (v5)
    {
      [v5 dismissDetailsNavigationController];
      swift_unknownObjectRelease();
    }
  }
}

void sub_190839B40()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [*(Strong + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation) chat];
    [v2 stopSharingLocation];

    swift_getKeyPath();
    sub_1908396D4();
    sub_190D51C20();

    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      [v3 dismissDetailsNavigationController];
      swift_unknownObjectRelease();
    }
  }
}

void sub_190839C40(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_getKeyPath();
    sub_1908396D4();
    sub_190D51C20();

    v4 = swift_unknownObjectWeakLoadStrong();

    if (v4)
    {
      [v4 stageDetailsFindMyCompositionWithShareType_];
      swift_unknownObjectRelease();
    }
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    swift_getKeyPath();
    sub_1908396D4();
    sub_190D51C20();

    v7 = swift_unknownObjectWeakLoadStrong();

    if (v7)
    {
      [v7 dismissDetailsNavigationController];
      swift_unknownObjectRelease();
    }
  }
}

id sub_190839DB0()
{
  result = sub_190839DD4();
  byte_1EAD45940 = result & 1;
  return result;
}

id sub_190839DD4()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v1 = result;
    v2 = [result isInternalInstall];

    if (v2)
    {
      v3 = [objc_opt_self() standardUserDefaults];
      v4 = sub_190D56ED0();
      v5 = [v3 BOOLForKey:v4 withDefault:0];

      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_190839EF8()
{
  result = sub_190839F1C();
  byte_1EAD46938 = result & 1;
  return result;
}

id sub_190839F1C()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v1 = result;
    v2 = [result isInternalInstall];

    if (v2)
    {
      v3 = [objc_opt_self() standardUserDefaults];
      v4 = sub_190D56ED0();
      v5 = [v3 BOOLForKey:v4 withDefault:0];

      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_19083A040()
{
  result = sub_19083A064();
  byte_1EAD54058 = result & 1;
  return result;
}

id sub_19083A064()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v1 = result;
    v2 = [result isInternalInstall];

    if (v2)
    {
      v3 = [objc_opt_self() standardUserDefaults];
      v4 = sub_190D56ED0();
      v5 = [v3 BOOLForKey:v4 withDefault:0];

      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_19083A188()
{
  result = sub_19083A1AC();
  byte_1EAD54059 = result & 1;
  return result;
}

id sub_19083A1AC()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v1 = result;
    v2 = [result isInternalInstall];

    if (v2)
    {
      v3 = [objc_opt_self() standardUserDefaults];
      v4 = sub_190D56ED0();
      v5 = [v3 BOOLForKey:v4 withDefault:0];

      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_19083A2AC(void *a1, unsigned __int8 *a2)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

uint64_t sub_19083A318(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 *a4)
{
  if (*a3 == -1)
  {
    return *a4;
  }

  swift_once();
  return *a4;
}

id sub_19083A364()
{
  swift_getKeyPath();
  sub_19083B5B8();
  sub_190D51C20();

  v1 = *(*(v0 + 120) + 16);

  return v1;
}

uint64_t sub_19083A3E8(int a1, uint64_t a2)
{
  v29 = a1;
  v4 = _s20ImagePlaygroundInputVMa();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v28[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD54060);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v28[-v8];
  v10 = _s17BackgroundContentOMa(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28[-v15];
  v17 = _s21BackgroundGalleryItemVMa(0);
  sub_19083B610(a2 + *(v17 + 28), v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_19022EEA4(v9, &unk_1EAD54060);
    sub_19083B7EC(a2 + *(v17 + 32), v16, _s17BackgroundContentOMa);
  }

  else
  {
    sub_19083B788(v9, v16);
  }

  sub_19083B7EC(v16, v13, _s17BackgroundContentOMa);
  if (swift_getEnumCaseMultiPayload() == 8)
  {
    v18 = *v13;
    v19 = v13[1];
    v21 = v13[2];
    v20 = v13[3];
    v22 = v13[4];
    sub_190D52690();
    v23 = v21;
    sub_19083B680(v20, v22);
    sub_190D50450();
    v24 = &v6[*(v4 + 20)];
    *v24 = v18;
    v24[1] = v19;
    sub_190D52690();
    sub_19083B680(v20, v22);

    sub_19083B6D4(v20, v22);
    v25 = &v6[*(v4 + 24)];
    *v25 = v20;
    v25[1] = v22;
    swift_getKeyPath();
    v30 = v2;
    sub_19083B5B8();
    sub_190D51C20();

    v26 = *(v2 + 120);
    sub_190D50920();
    sub_19083AAF4(v29, v6, v26);

    sub_19083B6D4(v20, v22);
    sub_19083B728(v6, _s20ImagePlaygroundInputVMa);
  }

  else
  {
    sub_19083B728(v16, _s17BackgroundContentOMa);
    v16 = v13;
  }

  return sub_19083B728(v16, _s17BackgroundContentOMa);
}

uint64_t sub_19083A770(uint64_t a1)
{
  v3 = _s20ImagePlaygroundInputVMa();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD54060);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v27 - v7;
  v9 = _s17BackgroundContentOMa(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v27 - v14;
  v16 = _s21BackgroundGalleryItemVMa(0);
  sub_19083B610(a1 + *(v16 + 28), v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_19022EEA4(v8, &unk_1EAD54060);
    sub_19083B7EC(a1 + *(v16 + 32), v15, _s17BackgroundContentOMa);
  }

  else
  {
    sub_19083B788(v8, v15);
  }

  sub_19083B7EC(v15, v12, _s17BackgroundContentOMa);
  if (swift_getEnumCaseMultiPayload() == 8)
  {
    v18 = *v12;
    v17 = *(v12 + 1);
    v20 = *(v12 + 2);
    v19 = *(v12 + 3);
    v21 = *(v12 + 4);
    sub_190D52690();
    v22 = v20;
    sub_19083B680(v19, v21);
    sub_190D50450();
    v23 = &v5[*(v3 + 20)];
    *v23 = v18;
    *(v23 + 1) = v17;
    sub_190D52690();
    sub_19083B680(v19, v21);

    sub_19083B6D4(v19, v21);
    v24 = &v5[*(v3 + 24)];
    *v24 = v19;
    v24[1] = v21;
    swift_getKeyPath();
    v27[1] = v1;
    sub_19083B5B8();
    sub_190D51C20();

    v25 = *(v1 + 120);
    sub_190D50920();
    sub_19083AF68(v5, 1, v25);

    sub_19083B6D4(v19, v21);
    sub_19083B728(v5, _s20ImagePlaygroundInputVMa);
  }

  else
  {
    sub_19083B728(v15, _s17BackgroundContentOMa);
    v15 = v12;
  }

  return sub_19083B728(v15, _s17BackgroundContentOMa);
}

uint64_t sub_19083AAF4(char a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v26 - v7 + 8;
  v9 = sub_190D51D30();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  MEMORY[0x1EEE9AC00](v13);
  v15 = (v26 - v14 + 8);
  v27 = _s20ImagePlaygroundInputVMa();
  v28 = &off_1F0418000;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
  sub_19083B7EC(a2, boxed_opaque_existential_1, _s20ImagePlaygroundInputVMa);
  __swift_project_boxed_opaque_existential_1(v26, v27);
  *v15 = sub_190AEEB54();
  (*(v10 + 104))(v15, *MEMORY[0x1E699C218], v9);
  v17 = sub_190D572E0();
  (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
  (*(v10 + 16))(v12, v15, v9);
  sub_190D572A0();
  sub_190D50920();
  v18 = sub_190D57290();
  v19 = *(v10 + 80);
  v25 = v8;
  v20 = a3;
  LOBYTE(a3) = a1;
  v21 = (v19 + 48) & ~v19;
  v22 = swift_allocObject();
  v23 = MEMORY[0x1E69E85E0];
  *(v22 + 16) = v18;
  *(v22 + 24) = v23;
  *(v22 + 32) = a3;
  *(v22 + 40) = v20;
  (*(v10 + 32))(v22 + v21, v12, v9);
  sub_190857E08(0, 0, v25, &unk_190DD6670, v22);

  (*(v10 + 8))(v15, v9);
  return __swift_destroy_boxed_opaque_existential_0(v26);
}

uint64_t sub_19083AF68(uint64_t a1, int a2, uint64_t a3)
{
  v31 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v30[-v6];
  v8 = sub_190D518A0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30[-v13];
  v34 = _s20ImagePlaygroundInputVMa();
  v35 = &off_1F0418000;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
  sub_19083B7EC(a1, boxed_opaque_existential_1, _s20ImagePlaygroundInputVMa);
  swift_beginAccess();
  v16 = *(a3 + 24);
  v17 = __swift_project_boxed_opaque_existential_1(v33, v34);
  v18 = *(v9 + 16);
  v18(v14, v17, v8);
  sub_190D52690();
  v19 = sub_190CA9668(v14, v16);

  v20 = *(v9 + 8);
  v20(v14, v8);
  if (v19)
  {
    if (qword_1EAD46218 != -1)
    {
      swift_once();
    }

    v21 = sub_190D53040();
    __swift_project_value_buffer(v21, qword_1EAD9D730);
    v22 = sub_190D53020();
    v23 = sub_190D576A0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v32[0] = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_19021D9F8(0xD000000000000018, 0x8000000190E5DD20, v32);
      _os_log_impl(&dword_19020E000, v22, v23, "%s Skipping donation, input was already donated.", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x193AF7A40](v25, -1, -1);
      MEMORY[0x193AF7A40](v24, -1, -1);
    }
  }

  else
  {
    v26 = __swift_project_boxed_opaque_existential_1(v33, v34);
    v18(v11, v26, v8);
    swift_beginAccess();
    sub_1908A9E94(v14, v11);
    swift_endAccess();
    v20(v14, v8);
    v27 = sub_190D572E0();
    (*(*(v27 - 8) + 56))(v7, 1, 1, v27);
    sub_19083B854(v33, v32);
    v28 = swift_allocObject();
    *(v28 + 16) = 0;
    *(v28 + 24) = 0;
    sub_19029058C(v32, v28 + 32);
    *(v28 + 72) = v31 & 1;
    sub_190857E08(0, 0, v7, &unk_190DD6668, v28);
  }

  return __swift_destroy_boxed_opaque_existential_0(v33);
}

void sub_19083B380(void *a1, char a2)
{
  if (a2)
  {
    if (qword_1EAD46218 != -1)
    {
      swift_once();
    }

    v3 = sub_190D53040();
    __swift_project_value_buffer(v3, qword_1EAD9D730);
    v4 = a1;
    oslog = sub_190D53020();
    v5 = sub_190D576A0();
    sub_19083B5AC(a1);
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      v8 = a1;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v9;
      *v7 = v9;
      v10 = "Feedback evaluation error: %@";
      v11 = v5;
LABEL_10:
      _os_log_impl(&dword_19020E000, oslog, v11, v10, v6, 0xCu);
      sub_19022EEA4(v7, &unk_1EAD54610);
      MEMORY[0x193AF7A40](v7, -1, -1);
      MEMORY[0x193AF7A40](v6, -1, -1);
    }
  }

  else
  {
    if (qword_1EAD46218 != -1)
    {
      swift_once();
    }

    v12 = sub_190D53040();
    __swift_project_value_buffer(v12, qword_1EAD9D730);
    v13 = a1;
    oslog = sub_190D53020();
    v14 = sub_190D57680();
    sub_19083B5AC(a1);
    if (os_log_type_enabled(oslog, v14))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      *(v6 + 4) = v13;
      *v7 = a1;
      v15 = v13;
      v10 = "Feedback evaluation response: %@";
      v11 = v14;
      goto LABEL_10;
    }
  }
}

unint64_t sub_19083B5B8()
{
  result = qword_1EAD5BB80;
  if (!qword_1EAD5BB80)
  {
    _s9ViewModelCMa_9();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5BB80);
  }

  return result;
}

uint64_t sub_19083B610(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD54060);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19083B680(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }

    sub_190D50920();
  }

  return sub_190D50920();
}

uint64_t sub_19083B6D4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_19083B728(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_19083B788(uint64_t a1, uint64_t a2)
{
  v4 = _s17BackgroundContentOMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19083B7EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_19083B854(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_19083B8B8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 72);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_190221DA4;

  return sub_1908D87B0(a1, v4, v5, v1 + 32, v6);
}

uint64_t sub_19083B978(uint64_t a1)
{
  v4 = *(sub_190D51D30() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 40);
  v9 = *(v1 + 32);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_190221DA0;

  return sub_1908D92B0(a1, v6, v7, v9, v8, v1 + v5);
}

void *PopGaussianBlurRenderer.__allocating_init(device:pixelFormat:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  result[4] = 0;
  result[5] = 0;
  result[2] = a1;
  result[3] = a2;
  return result;
}

void *PopGaussianBlurRenderer.init(device:pixelFormat:)(uint64_t a1, uint64_t a2)
{
  v2[4] = 0;
  v2[5] = 0;
  v2[2] = a1;
  v2[3] = a2;
  return v2;
}

uint64_t sub_19083BADC(void *a1, uint64_t a2, float a3)
{
  sub_19083BB7C(a1, a2, a3);

  return swift_unknownObjectRetain();
}

uint64_t PopGaussianBlurRenderer.deinit()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v0;
}

uint64_t PopGaussianBlurRenderer.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_19083BB7C(void *a1, uint64_t a2, float a3)
{
  v7 = v3[4];
  if (!v7 || ([v7 sigma], vabds_f32(a3 / 3.0349, v8) > 0.01))
  {
    v9 = v3[2];
    v10 = objc_allocWithZone(MEMORY[0x1E69745C0]);
    *&v11 = a3 / 3.0349;
    v12 = [v10 initWithDevice:v9 sigma:v11];
    v13 = v3[4];
    v3[4] = v12;
    v14 = v12;

    if (!v14)
    {
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v15 = floorf(a3);
    if ((LODWORD(v15) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      goto LABEL_28;
    }

    if (v15 <= -9.2234e18)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    if (v15 >= 9.2234e18)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    if (__OFSUB__(0, v15))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v28[0] = -v15;
    v28[1] = v28[0];
    v28[2] = 0;
    [v14 setOffset_];
  }

  v16 = [a1 width];
  v17 = floorf(a3 + a3);
  if ((LODWORD(v17) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v17 <= -9.2234e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v17 >= 9.2234e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v18 = v17;
  v19 = &v16[v17];
  if (__OFADD__(v16, v17))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = [a1 height];
  v21 = __OFADD__(v20, v18);
  v22 = &v20[v18];
  if (v21)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v23 = v3[5];
  if (!v23 || [v23 width] != v19)
  {
    goto LABEL_18;
  }

  v24 = v3[5];
  if (!v24)
  {
LABEL_34:
    __break(1u);
    return;
  }

  if ([v24 height] != v22)
  {
LABEL_18:
    v25 = [objc_opt_self() texture2DDescriptorWithPixelFormat:v3[3] width:v19 height:v22 mipmapped:0];
    [v25 setUsage_];
    v26 = [v3[2] newTextureWithDescriptor_];

    v3[5] = v26;
    swift_unknownObjectRelease();
  }

  if (v3[5])
  {
    v27 = v3[4];
    if (v27)
    {
      [v27 encodeToCommandBuffer:a2 sourceTexture:a1 destinationTexture:?];
      return;
    }

    goto LABEL_33;
  }
}

void __swiftcall CKMenuBarManager.generateFilterMenu(hideSettings:)(UIMenu_optional *__return_ptr retstr, Swift::Bool hideSettings)
{
  v3 = v2;
  v5 = sub_190D56ED0();
  v6 = NSSelectorFromString(v5);

  if (hideSettings)
  {
    v7 = 0;
  }

  else
  {
    v8 = sub_190D56ED0();
    v7 = NSSelectorFromString(v8);
  }

  v9 = [v3 activeFilterModes];
  sub_19021DC70();
  sub_190218944();
  sub_190D57410();

  v10 = sub_190D574B0();

  v11 = [v3 isConversationListReady];
  v12 = type metadata accessor for CKConversationListInboxMenuConfiguration();
  v13 = objc_allocWithZone(v12);
  v14 = OBJC_IVAR____TtC7ChatKit40CKConversationListInboxMenuConfiguration_requestsEnabled;
  v13[v14] = CKMessageUnknownFilteringEnabled() != 0;
  v15 = OBJC_IVAR____TtC7ChatKit40CKConversationListInboxMenuConfiguration_simFilteringEnabled;
  v13[v15] = IMSharedHelperMessageSIMFilteringEnabled();
  v16 = OBJC_IVAR____TtC7ChatKit40CKConversationListInboxMenuConfiguration_blackholeEnabled;
  v13[v16] = CKIsBlackholeEnabled();
  v17 = OBJC_IVAR____TtC7ChatKit40CKConversationListInboxMenuConfiguration_showsSpamFiltering;
  v13[v17] = [objc_opt_self() spamInboxEnabled];
  *&v13[OBJC_IVAR____TtC7ChatKit40CKConversationListInboxMenuConfiguration_filterHandler] = v6;
  *&v13[OBJC_IVAR____TtC7ChatKit40CKConversationListInboxMenuConfiguration_settingsHandler] = v7;
  *&v13[OBJC_IVAR____TtC7ChatKit40CKConversationListInboxMenuConfiguration_activeFilterModes] = v10;
  v13[OBJC_IVAR____TtC7ChatKit40CKConversationListInboxMenuConfiguration_showImages] = 1;
  v13[OBJC_IVAR____TtC7ChatKit40CKConversationListInboxMenuConfiguration_allowInboxFilters] = v11;
  v13[OBJC_IVAR____TtC7ChatKit40CKConversationListInboxMenuConfiguration_displayMode] = 1;
  v19.receiver = v13;
  v19.super_class = v12;
  v18 = [(UIMenu_optional *)&v19 init];
  sub_190B5C144(v18);
}

uint64_t _s8ListCellVMa()
{
  result = qword_1EAD54140;
  if (!qword_1EAD54140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_19083C180()
{
  sub_1902188FC(319, &qword_1EAD54150);
  if (v0 <= 0x3F)
  {
    _s9ViewModelCMa();
    if (v1 <= 0x3F)
    {
      sub_19083C22C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_19083C22C()
{
  if (!qword_1EAD52C10)
  {
    sub_190D540E0();
    v0 = sub_190D53A80();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAD52C10);
    }
  }
}

id sub_19083C2A0()
{
  result = [objc_opt_self() sharedBehaviors];
  if (result)
  {
    qword_1EAD54130 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_19083C2E4()
{
  if (qword_1EAD518E8 != -1)
  {
    swift_once();
  }

  v0 = qword_1EAD54130;
  v1 = [v0 theme];

  if (v1)
  {
    qword_1EAD54138 = v1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_19083C36C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_190D54800();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52E60);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = _s8ListCellVMa();
  sub_19022FD14(v1 + *(v10 + 24), v9, &qword_1EAD52E60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_190D540E0();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_190D576B0();
    v13 = sub_190D55260();
    sub_190D52F50();

    sub_190D547F0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

id sub_19083C574(uint64_t a1)
{
  v2 = type metadata accessor for ContactCardNavigationDestination();
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = [*a1 entity];
  if (result)
  {
    v6 = result;
    v7 = *(a1 + 8);
    swift_getKeyPath();
    *&v18 = v7;
    sub_19083EB58(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
    sub_190D51C20();

    v8 = *(v7 + 16);
    *v4 = 0x43746361746E6F63;
    v4[1] = 0xEB00000000647261;
    v4[2] = v6;
    type metadata accessor for DetailsViewConfiguration();
    sub_19083EB58(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
    v9 = v8;
    sub_190D56340();
    v10 = v4 + *(v2 + 28);
    LOBYTE(v22) = 0;
    sub_190D55FC0();
    v11 = *(&v18 + 1);
    *v10 = v18;
    *(v10 + 1) = v11;
    v12 = v4 + *(v2 + 32);
    v22 = 0;
    v23 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55F90);
    sub_190D55FC0();
    v13 = v19;
    *v12 = v18;
    *(v12 + 2) = v13;
    swift_getKeyPath();
    *&v18 = v7;
    sub_190D51C20();

    v14 = *(v7 + 16);
    swift_getKeyPath();
    *&v18 = v14;
    v15 = v14;
    sub_190D51C20();

    v16 = *&v15[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__presentationState];

    v20 = v2;
    v21 = sub_19083EB58(&unk_1EAD55F10, type metadata accessor for ContactCardNavigationDestination);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
    sub_19083EBA0(v4, boxed_opaque_existential_1, type metadata accessor for ContactCardNavigationDestination);
    sub_190865684();

    sub_19083EC08(&v18);
    return sub_19083EC5C(v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_19083C8A0@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD541B0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v39 - v3;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD541A0);
  v5 = MEMORY[0x1EEE9AC00](v44);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v39 - v8;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD541C0);
  MEMORY[0x1EEE9AC00](v43);
  v41 = &v39 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54190);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v39 - v11;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54180);
  v13 = MEMORY[0x1EEE9AC00](v42);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v39 - v16;
  v18 = sub_190D540E0();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v1;
  sub_19083C36C(v21);
  v23 = sub_190D540D0();
  (*(v19 + 8))(v21, v18);
  v24 = sub_190D548D0();
  if (v23)
  {
    *v12 = v24;
    *(v12 + 1) = 0;
    v12[16] = 1;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD541D0);
    sub_19083DC40(v22, &v12[*(v25 + 44)]);
    sub_190D56500();
    sub_190D54430();
    sub_19081E40C(v12, v15, &qword_1EAD54190);
    v26 = &v15[*(v42 + 36)];
    v27 = v51;
    *(v26 + 4) = v50;
    *(v26 + 5) = v27;
    *(v26 + 6) = v52;
    v28 = v47;
    *v26 = v46;
    *(v26 + 1) = v28;
    v29 = v49;
    *(v26 + 2) = v48;
    *(v26 + 3) = v29;
    sub_19081E40C(v15, v17, &qword_1EAD54180);
    sub_19022FD14(v17, v41, &qword_1EAD54180);
    swift_storeEnumTagMultiPayload();
    sub_19083E878();
    sub_19083E930();
    sub_190D54C50();
    v30 = v17;
    v31 = &qword_1EAD54180;
  }

  else
  {
    *v4 = v24;
    *(v4 + 1) = 0;
    v4[16] = 1;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD541C8);
    sub_19083CE1C(v22, &v4[*(v32 + 44)]);
    sub_190D56500();
    sub_190D54430();
    sub_19081E40C(v4, v7, &qword_1EAD541B0);
    v33 = &v7[*(v44 + 36)];
    v34 = v51;
    *(v33 + 4) = v50;
    *(v33 + 5) = v34;
    *(v33 + 6) = v52;
    v35 = v47;
    *v33 = v46;
    *(v33 + 1) = v35;
    v36 = v49;
    *(v33 + 2) = v48;
    *(v33 + 3) = v36;
    v37 = v40;
    sub_19081E40C(v7, v40, &qword_1EAD541A0);
    sub_19022FD14(v37, v41, &qword_1EAD541A0);
    swift_storeEnumTagMultiPayload();
    sub_19083E878();
    sub_19083E930();
    sub_190D54C50();
    v30 = v37;
    v31 = &qword_1EAD541A0;
  }

  return sub_19022EEA4(v30, v31);
}

void sub_19083CE1C(id *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD541D8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v46 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD541E0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD541E8);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v53 = &v46 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54250);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v54 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v46 - v22;
  v24 = [*a1 entity];
  if (v24)
  {
    v25 = v24;
    v50 = a2;
    v51 = v5;
    v52 = v4;
    if (qword_1EAD51C80 != -1)
    {
      swift_once();
    }

    v26 = qword_1EAD5D208;
    [qword_1EAD5D208 detailsAvatarDiameter];
    v28 = v27;
    [v26 detailsAvatarDiameter];
    v30 = v29;
    [v26 detailsAvatarCutoutDiameter];
    v32 = v31;
    [v26 detailsAvatarDiameter];
    v34 = v30 + v32 - v33;
    v55 = v25;
    sub_1902188FC(0, &qword_1EAD44E80);
    sub_190D55FC0();
    v48 = v58;
    v49 = v57;
    v55 = v28;
    v56 = v34;
    type metadata accessor for CGSize(0);
    sub_190D55FC0();
    v35 = v57;
    v36 = v58;
    v37 = v59;
    v47 = v23;
    sub_19083D350(v23);
    sub_19083D8B8(v13);
    sub_19022FD14(v13, v11, &qword_1EAD541E0);
    *v7 = 0;
    v7[8] = 1;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54208);
    sub_19022FD14(v11, &v7[*(v38 + 48)], &qword_1EAD541E0);
    sub_19022EEA4(v13, &qword_1EAD541E0);
    sub_19022EEA4(v11, &qword_1EAD541E0);
    v39 = v53;
    sub_19081E40C(v7, v53, &qword_1EAD541D8);
    (*(v51 + 56))(v39, 0, 1, v52);
    v40 = v54;
    sub_19022FD14(v23, v54, &qword_1EAD54250);
    sub_19022FD14(v39, v17, &qword_1EAD541E8);
    v42 = v49;
    v41 = v50;
    v43 = v48;
    *v50 = v49;
    v41[1] = v43;
    v41[2] = v35;
    v41[3] = v36;
    v41[4] = v37;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54278);
    sub_19022FD14(v40, v41 + *(v44 + 48), &qword_1EAD54250);
    sub_19022FD14(v17, v41 + *(v44 + 64), &qword_1EAD541E8);
    sub_190D50920();
    v45 = v42;
    sub_190D50920();
    sub_19022EEA4(v39, &qword_1EAD541E8);
    sub_19022EEA4(v47, &qword_1EAD54250);
    sub_19022EEA4(v17, &qword_1EAD541E8);
    sub_19022EEA4(v40, &qword_1EAD54250);
  }

  else
  {
    __break(1u);
  }
}

void sub_19083D350(uint64_t a1@<X8>)
{
  v3 = sub_190D540E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54260);
  MEMORY[0x1EEE9AC00](v63);
  v8 = &v53 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54268);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v53 - v10;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54270);
  MEMORY[0x1EEE9AC00](v64);
  v13 = &v53 - v12;
  v14 = [*v1 entity];
  if (!v14)
  {
    __break(1u);
    goto LABEL_11;
  }

  v15 = v14;
  v58 = v9;
  v59 = v13;
  v60 = v11;
  v61 = v8;
  v62 = v6;
  v16 = [v14 fullName];

  if (!v16)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v17 = sub_190D56F10();
  v19 = v18;

  v65 = v17;
  v66 = v19;
  sub_19081E484();
  v20 = sub_190D555F0();
  v22 = v21;
  v24 = v23;
  if (qword_1EAD51B78 != -1)
  {
    swift_once();
  }

  v54 = v4;
  v55 = v1;
  v56 = v3;
  v57 = a1;
  if (![qword_1EAD5B380 recipientNameFont])
  {
    goto LABEL_12;
  }

  sub_190D554B0();
  v25 = sub_190D555B0();
  v27 = v26;
  v29 = v28;

  sub_19081E474(v20, v22, v24 & 1);

  if (qword_1EAD518F0 != -1)
  {
    swift_once();
  }

  if ([qword_1EAD54138 contactCellTextColor])
  {
    v65 = sub_190D55CE0();
    v30 = sub_190D55580();
    v32 = v31;
    v34 = v33;
    v36 = v35;
    sub_19081E474(v25, v27, v29 & 1);

    v37 = v61;
    v38 = &v61[*(v63 + 36)];
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53038) + 28);
    v40 = *MEMORY[0x1E6980FA8];
    v41 = sub_190D55560();
    (*(*(v41 - 8) + 104))(v38 + v39, v40, v41);
    *v38 = swift_getKeyPath();
    *v37 = v30;
    *(v37 + 8) = v32;
    *(v37 + 16) = v34 & 1;
    *(v37 + 24) = v36;
    v42 = v62;
    sub_19083C36C(v62);
    LOBYTE(v40) = sub_190D540D0();
    (*(v54 + 8))(v42, v56);
    KeyPath = swift_getKeyPath();
    v44 = v60;
    sub_19081E40C(v37, v60, &qword_1EAD54260);
    v45 = v44 + *(v58 + 36);
    *v45 = KeyPath;
    *(v45 + 8) = (v40 & 1) == 0;
    *(v45 + 16) = v40 & 1;
    v46 = swift_getKeyPath();
    v47 = v59;
    sub_19081E40C(v44, v59, &qword_1EAD54268);
    v48 = v47 + *(v64 + 36);
    *v48 = v46;
    *(v48 + 8) = 0;
    v49 = sub_190D54AA0();
    v50 = v47;
    v51 = v57;
    sub_19081E40C(v50, v57, &qword_1EAD54270);
    v52 = (v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54250) + 36));
    *v52 = v49;
    v52[1] = sub_19083E408;
    v52[2] = 0;
    return;
  }

LABEL_13:
  __break(1u);
}

id sub_19083D8B8@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52F28);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v23 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54218);
  v23 = *(v4 - 8);
  v24 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23 - v5;
  v7 = sub_190D55EA0();
  if (qword_1EAD51C88 != -1)
  {
    swift_once();
  }

  result = [qword_1EAD5D210 detailsContactCellChevronColor];
  if (result)
  {
    v9 = sub_190D55CE0();
    KeyPath = swift_getKeyPath();
    v26 = v9;
    v11 = sub_190D53C70();
    v12 = sub_190A6D390();
    v13 = swift_getKeyPath();
    v26 = v7;
    v27 = KeyPath;
    v28 = v11;
    v29 = v13;
    v30 = v12;
    v14 = *MEMORY[0x1E6980E28];
    v15 = sub_190D55390();
    v16 = *(v15 - 8);
    (*(v16 + 104))(v3, v14, v15);
    (*(v16 + 56))(v3, 0, 1, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54220);
    sub_19083E9E8();
    sub_190D556E0();
    sub_19022EEA4(v3, &qword_1EAD52F28);

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD541E0);
    v18 = v25;
    v19 = (v25 + *(v17 + 36));
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52F78) + 28);
    v21 = *MEMORY[0x1E69816C8];
    v22 = sub_190D55F00();
    (*(*(v22 - 8) + 104))(v19 + v20, v21, v22);
    *v19 = swift_getKeyPath();
    return (*(v23 + 32))(v18, v6, v24);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_19083DC40@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD541D8);
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v39 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD541E0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v40 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD541E8);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v42 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v39 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD541F0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v39 - v17;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD541F8);
  v19 = MEMORY[0x1EEE9AC00](v39);
  v41 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v39 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v39 - v24;
  *v18 = sub_190D54AD0();
  *(v18 + 1) = 0;
  v18[16] = 1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54200);
  sub_19083E198(a1, &v18[*(v26 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52F00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD1DA0;
  v28 = sub_190D552C0();
  *(inited + 32) = v28;
  v29 = sub_190D552D0();
  *(inited + 33) = v29;
  v30 = sub_190D552F0();
  sub_190D552F0();
  if (sub_190D552F0() != v28)
  {
    v30 = sub_190D552F0();
  }

  sub_190D552F0();
  if (sub_190D552F0() != v29)
  {
    v30 = sub_190D552F0();
  }

  sub_19081E40C(v18, v23, &qword_1EAD541F0);
  v31 = &v23[*(v39 + 36)];
  *v31 = v30;
  *(v31 + 8) = 0u;
  *(v31 + 24) = 0u;
  v31[40] = 1;
  sub_19081E40C(v23, v25, &qword_1EAD541F8);
  sub_19083D8B8(v10);
  v32 = v40;
  sub_19022FD14(v10, v40, &qword_1EAD541E0);
  *v5 = 0;
  v5[8] = 1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54208);
  sub_19022FD14(v32, &v5[*(v33 + 48)], &qword_1EAD541E0);
  sub_19022EEA4(v10, &qword_1EAD541E0);
  sub_19022EEA4(v32, &qword_1EAD541E0);
  sub_19081E40C(v5, v15, &qword_1EAD541D8);
  (*(v43 + 56))(v15, 0, 1, v44);
  v34 = v41;
  sub_19022FD14(v25, v41, &qword_1EAD541F8);
  v35 = v42;
  sub_19022FD14(v15, v42, &qword_1EAD541E8);
  v36 = v45;
  sub_19022FD14(v34, v45, &qword_1EAD541F8);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54210);
  sub_19022FD14(v35, v36 + *(v37 + 48), &qword_1EAD541E8);
  sub_19022EEA4(v15, &qword_1EAD541E8);
  sub_19022EEA4(v25, &qword_1EAD541F8);
  sub_19022EEA4(v35, &qword_1EAD541E8);
  return sub_19022EEA4(v34, &qword_1EAD541F8);
}

void sub_19083E198(id *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54250);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v28 - v8;
  v10 = [*a1 entity];
  if (v10)
  {
    v11 = v10;
    if (qword_1EAD51C80 != -1)
    {
      swift_once();
    }

    v12 = qword_1EAD5D208;
    [qword_1EAD5D208 detailsAvatarDiameter];
    v14 = v13;
    [v12 detailsAvatarDiameter];
    v16 = v15;
    [v12 detailsAvatarCutoutDiameter];
    v18 = v17;
    [v12 detailsAvatarDiameter];
    v20 = v16 + v18 - v19;
    v29 = v11;
    sub_1902188FC(0, &qword_1EAD44E80);
    sub_190D55FC0();
    v22 = v31;
    v21 = v32;
    v29 = v14;
    v30 = v20;
    type metadata accessor for CGSize(0);
    sub_190D55FC0();
    v23 = v31;
    v24 = v32;
    v25 = v33;
    sub_19083D350(v9);
    sub_19022FD14(v9, v7, &qword_1EAD54250);
    *a2 = v22;
    a2[1] = v21;
    a2[2] = v23;
    a2[3] = v24;
    a2[4] = v25;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54258);
    sub_19022FD14(v7, a2 + *(v26 + 48), &qword_1EAD54250);
    sub_190D50920();
    v27 = v22;
    sub_190D50920();
    sub_19022EEA4(v9, &qword_1EAD54250);
    sub_19022EEA4(v7, &qword_1EAD54250);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_19083E430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v18[1] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54158);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = v18 - v7;
  v9 = *(a1 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54160);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v18 - v13;
  sub_19083EBA0(v4, v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), _s8ListCellVMa);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  sub_19083E704(v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  v18[4] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54168);
  sub_19083E7EC();
  sub_190D56030();
  (*(v12 + 16))(v8, v14, v11);
  swift_storeEnumTagMultiPayload();
  sub_190233640(&qword_1EAD541B8, &qword_1EAD54160);
  sub_190D54C50();
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_19083E704(uint64_t a1, uint64_t a2)
{
  v4 = _s8ListCellVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_19083E768()
{
  v1 = *(_s8ListCellVMa() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_19083C574(v2);
}

unint64_t sub_19083E7EC()
{
  result = qword_1EAD54170;
  if (!qword_1EAD54170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD54168);
    sub_19083E878();
    sub_19083E930();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54170);
  }

  return result;
}

unint64_t sub_19083E878()
{
  result = qword_1EAD54178;
  if (!qword_1EAD54178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD54180);
    sub_190233640(&qword_1EAD54188, &qword_1EAD54190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54178);
  }

  return result;
}

unint64_t sub_19083E930()
{
  result = qword_1EAD54198;
  if (!qword_1EAD54198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD541A0);
    sub_190233640(&qword_1EAD541A8, &qword_1EAD541B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54198);
  }

  return result;
}

unint64_t sub_19083E9E8()
{
  result = qword_1EAD54228;
  if (!qword_1EAD54228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD54220);
    sub_19083EAA0();
    sub_190233640(&unk_1EAD46798, &qword_1EAD52F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54228);
  }

  return result;
}

unint64_t sub_19083EAA0()
{
  result = qword_1EAD54230;
  if (!qword_1EAD54230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD54238);
    sub_190233640(&qword_1EAD54240, &qword_1EAD54248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54230);
  }

  return result;
}

uint64_t sub_19083EB58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19083EBA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_19083EC5C(uint64_t a1)
{
  v2 = type metadata accessor for ContactCardNavigationDestination();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_19083ECB8()
{
  result = qword_1EAD54280;
  if (!qword_1EAD54280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD54288);
    sub_190233640(&qword_1EAD541B8, &qword_1EAD54160);
    sub_19083E7EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54280);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_19083ED90(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_19083EDD8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

double sub_19083EE48@<D0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if (a3)
  {
    if (a3 == 1)
    {
      sub_19083F0B0();
      sub_19083F104();
      sub_190D52690();
      sub_190D54C50();
    }

    else
    {
      v7 = a1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54290);
    sub_19083F024();
    sub_19083F158();
    sub_190D54C50();
  }

  else
  {
    [a1 associatedMessageType];
    sub_19083F0B0();
    sub_19083F104();
    sub_190D54C50();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54290);
    sub_19083F024();
    sub_19083F158();
    sub_190D54C50();
    sub_19083F1AC(a1, a2, 0);
  }

  result = *&v9;
  *a4 = v9;
  *(a4 + 16) = v10;
  *(a4 + 17) = v11;
  return result;
}

unint64_t sub_19083F024()
{
  result = qword_1EAD54298;
  if (!qword_1EAD54298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD54290);
    sub_19083F0B0();
    sub_19083F104();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54298);
  }

  return result;
}

unint64_t sub_19083F0B0()
{
  result = qword_1EAD542A0;
  if (!qword_1EAD542A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD542A0);
  }

  return result;
}

unint64_t sub_19083F104()
{
  result = qword_1EAD542A8;
  if (!qword_1EAD542A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD542A8);
  }

  return result;
}

unint64_t sub_19083F158()
{
  result = qword_1EAD542B0;
  if (!qword_1EAD542B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD542B0);
  }

  return result;
}

void sub_19083F1AC(void *a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
LABEL_4:

    return;
  }

  if (a3 != 1)
  {
    if (a3)
    {
      return;
    }

    goto LABEL_4;
  }
}

uint64_t sub_19083F1F4(uint64_t a1, int a2)
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

uint64_t sub_19083F23C(uint64_t result, int a2, int a3)
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

unint64_t sub_19083F288()
{
  result = qword_1EAD542B8;
  if (!qword_1EAD542B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD542C0);
    sub_19083F024();
    sub_19083F158();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD542B8);
  }

  return result;
}

char *sub_19083F318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(type metadata accessor for TapbackEmojiView()) init];
  v6 = &v5[OBJC_IVAR___CKTapbackEmojiView_emoji];
  v7 = *&v5[OBJC_IVAR___CKTapbackEmojiView_emoji + 8];
  if (!v7 || (*v6 == a2 ? (v8 = v7 == a3) : (v8 = 0), !v8 && (sub_190D58760() & 1) == 0))
  {
    *v6 = a2;
    *(v6 + 1) = a3;

    sub_190D52690();
    sub_190CE3F74();
  }

  return v5;
}

double sub_19083F3D0(uint64_t a1, unsigned __int8 a2, uint64_t a3, unsigned __int8 a4, uint64_t a5)
{
  if (((a2 | a4) & 1) == 0)
  {
    return *(a5 + OBJC_IVAR___CKTapbackEmojiView_attributionScaleFactor) * *&a1;
  }

  return result;
}

uint64_t sub_19083F41C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19083F81C();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_19083F480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19083F81C();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_19083F4E4()
{
  sub_19083F81C();
  sub_190D54C10();
  __break(1u);
}

id sub_19083F50C()
{
  v1 = *v0;
  type metadata accessor for TapbackClassicView();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_190C895E4(v1, 0);
  return v2;
}

double sub_19083F55C(uint64_t a1, unsigned __int8 a2, uint64_t a3, unsigned __int8 a4)
{
  if (((a2 | a4) & 1) == 0)
  {
    return *&a1 * 0.9;
  }

  return result;
}

uint64_t sub_19083F5A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19083F870();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_19083F604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19083F870();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_19083F668()
{
  sub_19083F870();
  sub_190D54C10();
  __break(1u);
}

id sub_19083F690()
{
  v1 = *v0;
  v2 = [objc_allocWithZone(type metadata accessor for TapbackStickerView()) init];
  [v2 configureForTapback:v1 isSelected:0];
  return v2;
}

double sub_19083F6E4(uint64_t a1, unsigned __int8 a2, uint64_t a3, unsigned __int8 a4, uint64_t a5)
{
  if (((a2 | a4) & 1) == 0)
  {
    return *(a5 + OBJC_IVAR___CKTapbackStickerView_attributionScaleFactor) * *&a1;
  }

  return result;
}

uint64_t sub_19083F72C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19083F8C4();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_19083F790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19083F8C4();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_19083F7F4()
{
  sub_19083F8C4();
  sub_190D54C10();
  __break(1u);
}

unint64_t sub_19083F81C()
{
  result = qword_1EAD542C8;
  if (!qword_1EAD542C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD542C8);
  }

  return result;
}

unint64_t sub_19083F870()
{
  result = qword_1EAD542D0;
  if (!qword_1EAD542D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD542D0);
  }

  return result;
}

unint64_t sub_19083F8C4()
{
  result = qword_1EAD542D8;
  if (!qword_1EAD542D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD542D8);
  }

  return result;
}

id CKBackgroundMotionEventsManager.init(managedMotionEventsGenerator:viewController:delegate:)(uint64_t a1, void *a2)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR____TtC7ChatKit31CKBackgroundMotionEventsManager_isSendingMotionEvents] = 0;
  v4 = OBJC_IVAR____TtC7ChatKit31CKBackgroundMotionEventsManager_logger;
  if (qword_1EAD518F8 != -1)
  {
    swift_once();
  }

  v5 = sub_190D53040();
  v6 = __swift_project_value_buffer(v5, qword_1EAD542E0);
  (*(*(v5 - 8) + 16))(&v2[v4], v6, v5);
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v15.receiver = v2;
  v15.super_class = type metadata accessor for CKBackgroundMotionEventsManager();
  v7 = objc_msgSendSuper2(&v15, sel_init);
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 defaultCenter];
  [v10 addObserver:v9 selector:sel_handleSceneStateChangeNotification_ name:*MEMORY[0x1E69DE338] object:0];
  [v10 addObserver:v9 selector:sel_handleSceneStateChangeNotification_ name:*MEMORY[0x1E69DE340] object:0];
  [v10 addObserver:v9 selector:sel_handleSceneStateChangeNotification_ name:*MEMORY[0x1E69DE348] object:0];
  [v10 addObserver:v9 selector:sel_handleReduceMotionStatusDidChangeNotification_ name:*MEMORY[0x1E69DD918] object:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53D50);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_190DD1D90;
  v12 = sub_190D53190();
  v13 = MEMORY[0x1E69DC098];
  *(v11 + 32) = v12;
  *(v11 + 40) = v13;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1902188FC(0, &qword_1EAD45060);
  sub_190D57810();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return v9;
}

void sub_19083FC9C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_190840754();
  }
}

unint64_t sub_19083FD50()
{
  if (!UIAccessibilityIsReduceMotionEnabled())
  {
    result = CKReduceMotionAutoplayEnabled();
    if (!result)
    {
      return result;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      v3 = [Strong traitCollection];
      v4 = [v3 activeAppearance];
      if (v4 == -1 || v4 == 1)
      {
        result = [v2 view];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v6 = result;
        v7 = [result window];

        if (v7)
        {
          v8 = [v7 windowScene];

          if (v8)
          {
            v9 = v8;
            v10 = [v9 activationState];

            return v10 == 0;
          }
        }
      }
    }

    else
    {
      v3 = sub_190D53020();
      v11 = sub_190D576C0();
      if (os_log_type_enabled(v3, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_19020E000, v3, v11, "Lost reference to the target view controller, disabling motion events", v12, 2u);
        MEMORY[0x193AF7A40](v12, -1, -1);
      }
    }
  }

  return 0;
}

unint64_t sub_19083FEEC()
{
  result = sub_19083FD50();
  if ((result & 1) != *(v0 + OBJC_IVAR____TtC7ChatKit31CKBackgroundMotionEventsManager_isSendingMotionEvents))
  {
    if (result)
    {

      return sub_190840858();
    }

    else
    {

      return sub_190840878();
    }
  }

  return result;
}

unint64_t sub_19083FFC8()
{
  v1 = v0;
  v2 = sub_190D53020();
  v3 = sub_190D576C0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_19020E000, v2, v3, "Handling reduced motion status did change notification…", v4, 2u);
    MEMORY[0x193AF7A40](v4, -1, -1);
  }

  result = sub_19083FD50();
  if ((result & 1) != *(v1 + OBJC_IVAR____TtC7ChatKit31CKBackgroundMotionEventsManager_isSendingMotionEvents))
  {
    if (result)
    {

      return sub_190840858();
    }

    else
    {

      return sub_190840878();
    }
  }

  return result;
}

uint64_t sub_1908400E4()
{
  v0 = sub_190D56770();
  v33 = *(v0 - 8);
  v34 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v30 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_190D567A0();
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v29 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_190D56760();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_190D567F0();
  v8 = *(v28 - 8);
  v9 = MEMORY[0x1EEE9AC00](v28);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - v12;
  v14 = sub_190D53020();
  v15 = sub_190D576C0();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_19020E000, v14, v15, "Handling scene state change notification…", v16, 2u);
    MEMORY[0x193AF7A40](v16, -1, -1);
  }

  sub_1902188FC(0, &qword_1EAD46670);
  v27 = sub_190D57870();
  sub_190D567B0();
  *v7 = 500;
  (*(v5 + 104))(v7, *MEMORY[0x1E69E7F38], v4);
  v17 = v13;
  MEMORY[0x193AF20A0](v11, v7);
  (*(v5 + 8))(v7, v4);
  v26 = *(v8 + 8);
  v18 = v28;
  v26(v11, v28);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_190840DA8;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_190840E6C;
  aBlock[3] = &block_descriptor_1;
  v20 = _Block_copy(aBlock);
  sub_190D50920();
  v21 = v29;
  sub_190D56790();
  v35 = MEMORY[0x1E69E7CC0];
  sub_190840DB0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD546A0);
  sub_190840E08();
  v22 = v30;
  v23 = v34;
  sub_190D58170();
  v24 = v27;
  MEMORY[0x193AF30E0](v17, v21, v22, v20);
  _Block_release(v20);

  (*(v33 + 8))(v22, v23);
  (*(v31 + 8))(v21, v32);
  v26(v17, v18);
}

void sub_1908405D4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_19083FD50();
    if ((v2 & 1) != v1[OBJC_IVAR____TtC7ChatKit31CKBackgroundMotionEventsManager_isSendingMotionEvents])
    {
      if (v2)
      {
        sub_190840858();
      }

      else
      {
        sub_190840878();
      }
    }
  }
}

uint64_t sub_190840668(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = sub_190D50FB0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D50F60();
  v10 = a1;
  a4();

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_190840754()
{
  v1 = v0;
  v2 = sub_190D53020();
  v3 = sub_190D576C0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_19020E000, v2, v3, "Handling active appearance trait change…", v4, 2u);
    MEMORY[0x193AF7A40](v4, -1, -1);
  }

  result = sub_19083FD50();
  if ((result & 1) != *(v1 + OBJC_IVAR____TtC7ChatKit31CKBackgroundMotionEventsManager_isSendingMotionEvents))
  {
    if (result)
    {

      return sub_190840858();
    }

    else
    {

      return sub_190840878();
    }
  }

  return result;
}

uint64_t sub_190840898(const char *a1, char a2, SEL *a3, SEL *a4)
{
  v9 = v4;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = sub_190D53020();
    v13 = sub_190D576C0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_19020E000, v12, v13, a1, v14, 2u);
      MEMORY[0x193AF7A40](v14, -1, -1);
    }

    *(v9 + OBJC_IVAR____TtC7ChatKit31CKBackgroundMotionEventsManager_isSendingMotionEvents) = a2;
    [v11 *a3];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong *a4];
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id CKBackgroundMotionEventsManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKBackgroundMotionEventsManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKBackgroundMotionEventsManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_190840B9C()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD542E0);
  __swift_project_value_buffer(v0, qword_1EAD542E0);
  sub_190D53010();
  return sub_190D53030();
}

uint64_t type metadata accessor for CKBackgroundMotionEventsManager()
{
  result = qword_1EAD54320;
  if (!qword_1EAD54320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_190840C64()
{
  result = sub_190D53040();
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

unint64_t sub_190840DB0()
{
  result = qword_1EAD46770;
  if (!qword_1EAD46770)
  {
    sub_190D56770();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD46770);
  }

  return result;
}

unint64_t sub_190840E08()
{
  result = qword_1EAD46730;
  if (!qword_1EAD46730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAD546A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD46730);
  }

  return result;
}

uint64_t sub_190840E6C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_190D50920();
  v1(v2);
}

void sub_190840EDC()
{
  v0 = CKFrameworkBundle();
  if (v0)
  {
    v1 = v0;
    v2 = sub_190D56ED0();
    v3 = sub_190D56ED0();
    v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

    v5 = sub_190D56F10();
    v7 = v6;

    qword_1EAD54340 = v5;
    *algn_1EAD54348 = v7;
  }

  else
  {
    __break(1u);
  }
}

void sub_190840FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v7 = CKFrameworkBundle();
  if (v7)
  {
    v8 = v7;
    v9 = sub_190D56ED0();
    v10 = sub_190D56ED0();
    v11 = [v8 localizedStringForKey:v9 value:0 table:v10];

    v12 = sub_190D56F10();
    v14 = v13;

    *a4 = v12;
    *a5 = v14;
  }

  else
  {
    __break(1u);
  }
}

id sub_1908410B4()
{
  result = [objc_opt_self() standardUserDefaults];
  qword_1EAD45688 = result;
  return result;
}

void static FunCameraUserConsentManager.present(fromViewController:presentedBlock:confirmBlock:cancelBlock:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (qword_1EAD51910 != -1)
  {
    swift_once();
  }

  v12 = swift_allocObject();
  *(v12 + 16) = a6;
  *(v12 + 24) = a7;
  sub_19029063C(a6);
  v13 = sub_190D56ED0();
  v33 = sub_19084153C;
  v34 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = sub_19084156C;
  v32 = &block_descriptor_2;
  v14 = _Block_copy(&aBlock);

  v15 = objc_opt_self();
  v25 = [v15 actionWithTitle:v13 style:1 handler:v14];
  _Block_release(v14);

  if (qword_1EAD51918 != -1)
  {
    swift_once();
  }

  v16 = swift_allocObject();
  v16[2] = v7;
  v16[3] = a4;
  v16[4] = a5;
  sub_19029063C(a4);
  v17 = sub_190D56ED0();
  v33 = sub_190841680;
  v34 = v16;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = sub_19084156C;
  v32 = &block_descriptor_6_0;
  v18 = _Block_copy(&aBlock);

  v19 = [v15 actionWithTitle:v17 style:0 handler:v18];
  _Block_release(v18);

  if (qword_1EAD51900 != -1)
  {
    swift_once();
  }

  if (qword_1EAD51908 != -1)
  {
    swift_once();
  }

  v20 = sub_190D56ED0();
  v21 = sub_190D56ED0();
  v22 = [objc_opt_self() alertControllerWithTitle:v20 message:v21 preferredStyle:1];

  [v22 addAction_];
  [v22 addAction_];
  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  *(v23 + 24) = a3;
  v33 = sub_19084153C;
  v34 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = sub_190840E6C;
  v32 = &block_descriptor_12_0;
  v24 = _Block_copy(&aBlock);
  sub_19029063C(a2);

  [a1 presentViewController:v22 animated:1 completion:v24];
  _Block_release(v24);
}

uint64_t sub_19084153C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

void sub_19084156C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  sub_190D50920();
  v4 = a2;
  v3();
}

void sub_1908415D4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if (qword_1EAD45680 != -1)
  {
    swift_once();
  }

  v4 = qword_1EAD45688;
  v5 = sub_190D56ED0();
  [v4 setInteger:1 forKey:v5];

  if (a3)
  {
    a3();
  }
}

uint64_t objectdestroyTm_0()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id FunCameraUserConsentManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FunCameraUserConsentManager.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FunCameraUserConsentManager();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FunCameraUserConsentManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FunCameraUserConsentManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s7ChatKit27FunCameraUserConsentManagerC012shouldPrompte3ForcdF0SbyFZ_0()
{
  if (qword_1EAD45680 != -1)
  {
    swift_once();
  }

  v0 = qword_1EAD45688;
  v1 = sub_190D56ED0();
  v2 = [v0 BOOLForKey_];

  if (v2)
  {
    return 1;
  }

  if ((IMDeviceIsGreenTea() & 1) != 0 || (result = [objc_opt_self() IMDeviceIsChinaRegion], result))
  {
    v4 = sub_190D56ED0();
    v5 = [v0 integerForKey_];

    return v5 < 1;
  }

  return result;
}

id sub_190841AA8()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = sub_190841B04();
    *(v0 + 16) = v1;
    sub_190D52690();
  }

  sub_190D52690();
  return v1;
}

id sub_190841B04()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C80);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_190DD1DA0;
  result = IMBalloonExtensionIDWithSuffix();
  if (result)
  {
    v2 = result;
    v3 = sub_190D56F10();
    v5 = v4;

    *(v0 + 32) = v3;
    *(v0 + 40) = v5;
    result = IMBalloonExtensionIDWithSuffix();
    if (result)
    {
      v6 = result;
      v7 = sub_190D56F10();
      v9 = v8;

      *(v0 + 48) = v7;
      *(v0 + 56) = v9;
      return v0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_190841BDC(id *a1))(void *a1)
{
  a1[1] = v1;
  *a1 = sub_190841AA8();
  return sub_190841C24;
}

uint64_t sub_190841C34()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    sub_190841C90();
    v1 = v2;
    *(v0 + 24) = v2;
    sub_190D52690();
  }

  sub_190D52690();
  return v1;
}

void sub_190841C90()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C80);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_190DD6EC0;
  v1 = IMBalloonExtensionIDWithSuffix();
  if (!v1)
  {
    __break(1u);
    goto LABEL_13;
  }

  v2 = v1;
  v3 = sub_190D56F10();
  v5 = v4;

  *(v0 + 32) = v3;
  *(v0 + 40) = v5;
  v6 = IMBalloonExtensionIDWithSuffix();
  if (!v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = v6;
  v8 = sub_190D56F10();
  v10 = v9;

  *(v0 + 48) = v8;
  *(v0 + 56) = v10;
  v11 = IMStickersExtensionIdentifier();
  v12 = IMBalloonExtensionIDWithSuffix();

  if (!v12)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = sub_190D56F10();
  v15 = v14;

  *(v0 + 64) = v13;
  *(v0 + 72) = v15;
  v16 = IMBalloonExtensionIDWithSuffix();
  if (!v16)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v16;
  v18 = sub_190D56F10();
  v20 = v19;

  *(v0 + 80) = v18;
  *(v0 + 88) = v20;
  v21 = IMBalloonExtensionIDWithSuffix();
  if (!v21)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v22 = v21;
  v23 = sub_190D56F10();
  v25 = v24;

  *(v0 + 96) = v23;
  *(v0 + 104) = v25;
  v26 = IMBalloonExtensionIDWithSuffix();
  if (!v26)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v27 = v26;
  v28 = sub_190D56F10();
  v30 = v29;

  *(v0 + 112) = v28;
  *(v0 + 120) = v30;
  v31 = IMBalloonExtensionIDWithSuffix();
  if (!v31)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v32 = v31;
  v33 = sub_190D56F10();
  v35 = v34;

  *(v0 + 128) = v33;
  *(v0 + 136) = v35;
  v36 = IMBalloonExtensionIDWithSuffix();
  if (!v36)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v37 = v36;
  v38 = sub_190D56F10();
  v40 = v39;

  *(v0 + 144) = v38;
  *(v0 + 152) = v40;
  v41 = IMBalloonExtensionIDWithSuffix();
  if (!v41)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v42 = v41;
  v43 = sub_190D56F10();
  v45 = v44;

  *(v0 + 160) = v43;
  *(v0 + 168) = v45;
  v46 = IMBalloonExtensionIDWithSuffix();
  if (v46)
  {
    v47 = v46;
    v48 = sub_190D56F10();
    v50 = v49;

    *(v0 + 176) = v48;
    *(v0 + 184) = v50;
    return;
  }

LABEL_21:
  __break(1u);
}

uint64_t (*sub_190841F34(uint64_t *a1))(void *a1)
{
  a1[1] = v1;
  *a1 = sub_190841C34();
  return sub_190841F7C;
}

uint64_t sub_190841F8C()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
    *(v0 + 32) = MEMORY[0x1E69E7CC0];
  }

  sub_190D52690();
  return v1;
}

uint64_t (*sub_190841FDC(uint64_t *a1))(void *a1)
{
  a1[1] = v1;
  *a1 = sub_190841F8C();
  return sub_190842024;
}

uint64_t sub_190842034()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
    *(v0 + 40) = MEMORY[0x1E69E7CC0];
  }

  sub_190D52690();
  return v1;
}

uint64_t (*sub_190842084(uint64_t *a1))(void *a1)
{
  a1[1] = v1;
  *a1 = sub_190842034();
  return sub_1908420CC;
}

uint64_t Fall2025SendMenuSortOrderProvider.deinit()
{

  return v0;
}

uint64_t Fall2025SendMenuSortOrderProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1908423B0(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC7ChatKit22SendMenuCollectionView_sendMenuCollectionViewDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_19084241C(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC7ChatKit22SendMenuCollectionView_sendMenuCollectionViewDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1908424BC;
}

void sub_1908424BC(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
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

id SendMenuCollectionView.__allocating_init(frame:collectionViewLayout:)(void *a1, double a2, double a3, double a4, double a5)
{
  v7 = [objc_allocWithZone(v5) initWithFrame:a1 collectionViewLayout:{a2, a3, a4, a5}];

  return v7;
}

id SendMenuCollectionView.init(frame:collectionViewLayout:)(void *a1, double a2, double a3, double a4, double a5)
{
  *&v5[OBJC_IVAR____TtC7ChatKit22SendMenuCollectionView_sendMenuCollectionViewDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v13.receiver = v5;
  v13.super_class = type metadata accessor for SendMenuCollectionView();
  v11 = objc_msgSendSuper2(&v13, sel_initWithFrame_collectionViewLayout_, a1, a2, a3, a4, a5);

  return v11;
}

id SendMenuCollectionView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SendMenuCollectionView.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC7ChatKit22SendMenuCollectionView_sendMenuCollectionViewDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SendMenuCollectionView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id SendMenuCollectionView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SendMenuCollectionView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_190842A14(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E5D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v82 = &v79 - v5;
  v6 = sub_190D51840();
  v83 = *(v6 - 8);
  v84 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v80 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v86 = &v79 - v9;
  v10 = sub_190D515F0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v79 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v79 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v79 - v20;
  v85 = _s14descr1F03EACB9V10AttachmentVMa(0);
  *(a2 + *(v85 + 52)) = 0;
  v22 = [a1 identifier];
  v23 = sub_190D56F10();
  v25 = v24;

  *a2 = v23;
  *(a2 + 8) = v25;
  *(a2 + 16) = a1;
  v81 = a1;
  v26 = [v81 item];
  v27 = [v26 attributeSet];

  v28 = [v27 isShared];
  v29 = [v28 BOOLValue];

  if (v29)
  {
    v30 = [v27 messageType];
    if (v30)
    {
      v31 = v30;
      v32 = sub_190D56F10();
      v34 = v33;

      if (v32 == 7040620 && v34 == 0xE300000000000000)
      {

        LOBYTE(v29) = 1;
      }

      else
      {
        LOBYTE(v29) = sub_190D58760();
      }
    }

    else
    {
      LOBYTE(v29) = 0;
    }
  }

  v35 = v86;
  *(a2 + 24) = v29 & 1;
  v36 = [v27 contentURL];
  if (v36)
  {
    v37 = v36;
    sub_190D515B0();

    v38 = *(v11 + 32);
    v38(v19, v13, v10);
    v39 = *(v11 + 56);
    v39(v19, 0, 1, v10);
    v38(v21, v19, v10);
    v39(v21, 0, 1, v10);
  }

  else
  {
    v40 = *(v11 + 56);
    v41 = 1;
    v40(v19, 1, 1, v10);
    v42 = [v27 URL];
    if (v42)
    {
      v43 = v79;
      v44 = v42;
      sub_190D515B0();

      v45 = v43;
      v41 = 0;
    }

    else
    {
      v45 = v79;
    }

    v40(v45, v41, 1, v10);
    sub_190844E18(v45, v21);
    v46 = (*(v11 + 48))(v19, 1, v10);
    v35 = v86;
    if (v46 != 1)
    {
      sub_19022EEA4(v19, &unk_1EAD55F20);
    }
  }

  v47 = v85;
  sub_190844E18(v21, a2 + *(v85 + 28));
  v48 = objc_opt_self();
  v49 = v81;
  v50 = [v48 contactForResult_];

  *(a2 + v47[8]) = v50;
  v51 = [v27 contentSnippet];
  if (v51)
  {
    v52 = v51;
    sub_190D56F10();
  }

  v53 = sub_190D56ED0();

  v54 = [v53 stringByDeletingPathExtension];
  v55 = sub_190D56F10();
  v57 = v56;

  v58 = (a2 + v47[9]);
  *v58 = v55;
  v58[1] = v57;
  v59 = [v53 pathExtension];
  v60 = sub_190D56F10();
  v62 = v61;

  v63 = (a2 + v47[10]);
  *v63 = v60;
  v63[1] = v62;
  v64 = [v27 contentCreationDate];
  if (v64)
  {
    v65 = v80;
    v66 = v64;
    sub_190D517E0();

    v68 = v82;
    v67 = v83;
    v69 = *(v83 + 32);
    v70 = v65;
    v71 = v84;
    v69(v82, v70, v84);
    (*(v67 + 56))(v68, 0, 1, v71);
    v69(v35, v68, v71);
  }

  else
  {
    v72 = v82;
    v67 = v83;
    v71 = v84;
    (*(v83 + 56))(v82, 1, 1, v84);
    sub_190D51830();
    if ((*(v67 + 48))(v72, 1, v71) != 1)
    {
      sub_19022EEA4(v72, &unk_1EAD5E5D0);
    }
  }

  (*(v67 + 32))(a2 + v47[11], v35, v71);
  v73 = [v27 messageType];
  if (v73)
  {
    v74 = v73;
    v75 = sub_190D56F10();
    v77 = v76;

    if (v75 == 7040620 && v77 == 0xE300000000000000)
    {
      v78 = 1;
    }

    else
    {
      v78 = sub_190D58760();
    }
  }

  else
  {

    v78 = 0;
  }

  *(a2 + v47[12]) = v78 & 1;
}

uint64_t sub_1908431F8()
{
  v1[27] = v0;
  sub_190D572A0();
  v1[28] = sub_190D57290();
  v3 = sub_190D57240();
  v1[29] = v3;
  v1[30] = v2;

  return MEMORY[0x1EEE6DFA0](sub_190843290, v3, v2);
}

uint64_t sub_190843290()
{
  v1 = v0 + 26;
  v2 = v0[27];
  v3 = *(v2 + 24);
  v4 = [objc_opt_self() sharedInstance];
  if (v3 == 1)
  {
    v5 = v0 + 10;
    v0[31] = v4;
    v6 = *(v2 + 16);
    v0[10] = v0;
    v0[15] = v1;
    v0[11] = sub_1908434A4;
    v7 = v4;
    v8 = swift_continuation_init();
    v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD543C8);
    v0[18] = MEMORY[0x1E69E9820];
    v0[19] = 1107296256;
    v0[20] = sub_190843AB8;
    v0[21] = &block_descriptor_66;
    v0[22] = v8;
    [v7 fetchLinkMetadataForQueryResult:v6 completion:v0 + 18];
  }

  else
  {
    v5 = v0 + 2;
    v0[32] = v4;
    v9 = *(v2 + 16);
    v0[2] = v0;
    v0[7] = v1;
    v0[3] = sub_190843940;
    v10 = v4;
    v11 = swift_continuation_init();
    v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD543C0);
    v0[18] = MEMORY[0x1E69E9820];
    v0[19] = 1107296256;
    v0[20] = sub_190843AB8;
    v0[21] = &block_descriptor_3;
    v0[22] = v11;
    [v10 generatePreviewForQueryResult:v9 completion:v0 + 18];
  }

  return MEMORY[0x1EEE6DEC8](v5);
}

uint64_t sub_1908434A4()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 232);

  return MEMORY[0x1EEE6DFA0](sub_1908435AC, v2, v1);
}

uint64_t sub_1908435AC()
{
  v1 = v0[31];

  v2 = v0[26];

  if (!v2)
  {
    goto LABEL_11;
  }

  v3 = [v2 specialization];
  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = v3;
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {

LABEL_10:
    goto LABEL_11;
  }

  v6 = v5;
  v7 = [v5 specialization];
  if (!v7)
  {
LABEL_19:
    v20 = [v6 specialization];
    if (v20)
    {
      v21 = v20;
      objc_opt_self();
      v22 = swift_dynamicCastObjCClass();
      if (v22)
      {
        v23 = [v22 icon];
        v19 = [v23 platformImage];

        goto LABEL_32;
      }
    }

LABEL_11:
    v14 = 0;
    goto LABEL_12;
  }

  v8 = v7;
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (!v9)
  {

    goto LABEL_19;
  }

  v10 = v9;
  v11 = [v9 thumbnail];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 platformImage];

    if (v13)
    {

      v14 = v13;
      goto LABEL_12;
    }
  }

  v17 = [v10 icon];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 platformImage];

    if (v19)
    {

LABEL_32:
      v14 = v19;
      goto LABEL_12;
    }
  }

  v24 = [objc_allocWithZone(MEMORY[0x1E696ECA8]) init];
  [v24 setMetadata_];
  v25 = [v24 presentationProperties];
  if ([v25 respondsToSelector_])
  {
    v26 = [v25 image];
    v19 = [v26 platformImage];
  }

  else
  {
    v19 = 0;
  }

  if ([v25 respondsToSelector_])
  {
    v27 = [v25 captionBar];
    v28 = [v27 leadingIcon];

    v29 = [v28 platformImage];
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();

    v29 = 0;
  }

  if (v19)
  {

    goto LABEL_32;
  }

  v14 = v29;
LABEL_12:
  v15 = v0[1];

  return v15(v14);
}

uint64_t sub_190843940()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 232);

  return MEMORY[0x1EEE6DFA0](sub_190843A48, v2, v1);
}

uint64_t sub_190843A48()
{
  v1 = v0[32];

  v2 = v0[26];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_190843AB8(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x1EEE6DED8](v4);
}

id sub_190843B1C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v15 - v2;
  v4 = sub_190D515F0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s14descr1F03EACB9V10AttachmentVMa(0);
  sub_190844DA8(v0 + *(v8 + 28), v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_19022EEA4(v3, &unk_1EAD55F20);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    sub_190D51560();
    v10 = objc_allocWithZone(MEMORY[0x1E696ACA0]);
    v11 = sub_190D51570();
    v9 = [v10 initWithContentsOfURL_];

    if (v9)
    {
      v12 = v9;
      v13 = sub_190D56ED0();

      [v12 setSuggestedName_];

      (*(v5 + 8))(v7, v4);
    }

    else
    {
      (*(v5 + 8))(v7, v4);
    }
  }

  return v9;
}

uint64_t sub_190843D74(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_190D58760();
  }
}

uint64_t sub_190843DA4()
{
  swift_getKeyPath();
  sub_190844D60(&qword_1EAD543A8, _s14descr1F03EACB9V9ViewModelCMa);
  sub_190D51C20();

  return *(v0 + qword_1EAD54378);
}

uint64_t sub_190843E4C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190844D60(&qword_1EAD543A8, _s14descr1F03EACB9V9ViewModelCMa);
  sub_190D51C20();

  *a2 = *(v3 + qword_1EAD54378);
  return result;
}

uint64_t sub_190843EFC(unsigned __int8 a1)
{
  v2 = v1;
  v3 = a1;
  v4 = qword_1EAD54378;
  v5 = *(v1 + qword_1EAD54378);
  KeyPath = swift_getKeyPath();
  if (v5 == v3)
  {
    sub_190844D60(&qword_1EAD543A8, _s14descr1F03EACB9V9ViewModelCMa);
    sub_190D51C20();

    if (*(v2 + v4) != v3)
    {
      return sub_190844360();
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190844D60(&qword_1EAD543A8, _s14descr1F03EACB9V9ViewModelCMa);
    sub_190D51C10();
  }

  return result;
}

uint64_t sub_190844084(uint64_t a1, char a2)
{
  v3 = qword_1EAD54378;
  v4 = *(a1 + qword_1EAD54378);
  *(a1 + qword_1EAD54378) = a2;
  swift_getKeyPath();
  sub_190844D60(&qword_1EAD543A8, _s14descr1F03EACB9V9ViewModelCMa);
  sub_190D51C20();

  if (*(a1 + v3) != v4)
  {
    return sub_190844360();
  }

  return result;
}

uint64_t sub_190844154()
{
  swift_getKeyPath();
  sub_190844D60(&qword_1EAD543A8, _s14descr1F03EACB9V9ViewModelCMa);
  sub_190D51C20();

  return sub_190D52690();
}

uint64_t sub_190844200(uint64_t a1)
{
  v3 = qword_1EAD54380;
  v4 = sub_190D52690();
  v5 = sub_1909A7A08(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190844D60(&qword_1EAD543A8, _s14descr1F03EACB9V9ViewModelCMa);
    sub_190D51C10();
  }
}

uint64_t sub_190844360()
{
  v1 = v0;
  v2 = _s14descr1F03EACB9V10AttachmentVMa(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v37 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v35 - v7;
  v9 = MEMORY[0x1EEE9AC00](v6);
  v36 = &v35 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - v11;
  swift_getKeyPath();
  v42 = v0;
  sub_190844D60(&qword_1EAD543A8, _s14descr1F03EACB9V9ViewModelCMa);
  sub_190D51C20();

  v13 = *(v0 + qword_1EAD54378);
  v38 = v2;
  v39 = v2;
  v40 = sub_190844D60(&unk_1EAD555B0, _s14descr1F03EACB9V10AttachmentVMa);
  swift_getKeyPath();
  if (!v13)
  {
    v42 = v1;
    sub_190844E88();
    sub_190D51C20();

    swift_beginAccess();
    v25 = sub_190D52690();
    return sub_190844200(v25);
  }

  v35 = v1;
  if (v13 != 1)
  {
    v42 = v1;
    sub_190844E88();
    sub_190D51C20();

    v26 = qword_1EAD62988;
    swift_beginAccess();
    v27 = *(v1 + v26);
    v28 = *(v27 + 16);
    result = sub_190D52690();
    if (v28)
    {
      v29 = 0;
      v19 = MEMORY[0x1E69E7CC0];
      while (v29 < *(v27 + 16))
      {
        v30 = (*(v3 + 80) + 32) & ~*(v3 + 80);
        v31 = *(v3 + 72);
        sub_190844EEC(v27 + v30 + v31 * v29, v8);
        if (v8[*(v38 + 48)] == 1)
        {
          sub_190844FAC(v8, v37);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v41 = v19;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_19082DD10(0, *(v19 + 16) + 1, 1);
            v19 = v41;
          }

          v34 = *(v19 + 16);
          v33 = *(v19 + 24);
          if (v34 >= v33 >> 1)
          {
            sub_19082DD10(v33 > 1, v34 + 1, 1);
            v19 = v41;
          }

          *(v19 + 16) = v34 + 1;
          result = sub_190844FAC(v37, v19 + v30 + v34 * v31);
        }

        else
        {
          result = sub_190844F50(v8);
        }

        if (v28 == ++v29)
        {
          goto LABEL_29;
        }
      }

      goto LABEL_32;
    }

    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_29;
  }

  v42 = v1;
  sub_190844E88();
  sub_190D51C20();

  v14 = qword_1EAD62988;
  swift_beginAccess();
  v15 = *(v1 + v14);
  v16 = *(v15 + 16);
  result = sub_190D52690();
  if (!v16)
  {
    v19 = MEMORY[0x1E69E7CC0];
LABEL_29:

    v25 = v19;
    return sub_190844200(v25);
  }

  v18 = 0;
  v19 = MEMORY[0x1E69E7CC0];
  while (v18 < *(v15 + 16))
  {
    v20 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v21 = *(v3 + 72);
    sub_190844EEC(v15 + v20 + v21 * v18, v12);
    if (v12[*(v38 + 48)])
    {
      result = sub_190844F50(v12);
    }

    else
    {
      sub_190844FAC(v12, v36);
      v22 = swift_isUniquelyReferenced_nonNull_native();
      v41 = v19;
      if ((v22 & 1) == 0)
      {
        sub_19082DD10(0, *(v19 + 16) + 1, 1);
        v19 = v41;
      }

      v24 = *(v19 + 16);
      v23 = *(v19 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_19082DD10(v23 > 1, v24 + 1, 1);
        v19 = v41;
      }

      *(v19 + 16) = v24 + 1;
      result = sub_190844FAC(v36, v19 + v20 + v24 * v21);
    }

    if (v16 == ++v18)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_19084485C()
{

  v1 = qword_1EAD457E0;
  v2 = sub_190D51C60();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id sub_1908448D4()
{
  v2.receiver = v0;
  v2.super_class = _s14descr1F03EACB9V9ViewModelCMa(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_19084490C(uint64_t a1)
{

  v2 = qword_1EAD457E0;
  v3 = sub_190D51C60();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1 + v2, v3);
}

uint64_t sub_1908449A8()
{
  result = sub_190D51C60();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_190844AA0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_190844AD8()
{
  sub_1902188FC(319, &unk_1EAD44FC0);
  if (v0 <= 0x3F)
  {
    sub_190844C7C(319, &qword_1ED777010, MEMORY[0x1E6968FB0]);
    if (v1 <= 0x3F)
    {
      sub_190844C14();
      if (v2 <= 0x3F)
      {
        sub_190D51840();
        if (v3 <= 0x3F)
        {
          sub_190844C7C(319, &qword_1EAD54398, type metadata accessor for DetailsQueryResultItemPreviewProvider);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_190844C14()
{
  if (!qword_1EAD44E38)
  {
    sub_1902188FC(255, &qword_1EAD44E40);
    v0 = sub_190D58050();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAD44E38);
    }
  }
}

void sub_190844C7C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_190D58050();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_190844CDC(uint64_t a1)
{
  *(a1 + 8) = sub_190844D60(&qword_1EAD543A0, _s14descr1F03EACB9V10AttachmentVMa);
  result = sub_190844D60(&qword_1EAD457C8, _s14descr1F03EACB9V10AttachmentVMa);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_190844D60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_190844DA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_190844E18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_190844E88()
{
  result = qword_1EAD543B0;
  if (!qword_1EAD543B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD543B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD543B0);
  }

  return result;
}

uint64_t sub_190844EEC(uint64_t a1, uint64_t a2)
{
  v4 = _s14descr1F03EACB9V10AttachmentVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_190844F50(uint64_t a1)
{
  v2 = _s14descr1F03EACB9V10AttachmentVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_190844FAC(uint64_t a1, uint64_t a2)
{
  v4 = _s14descr1F03EACB9V10AttachmentVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_190845010()
{
  *(*(v0 + 16) + qword_1EAD54380) = *(v0 + 24);
  sub_190D52690();
}

uint64_t sub_19084507C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*a1 + 8);
  *a2 = **a1;
  *(a2 + 8) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD54440);
  sub_19022FD14(*(a1 + 8), a2 + v5[12], &qword_1EAD54430);
  v6 = a2 + v5[16];
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = *v8;
  LOBYTE(v8) = *(v8 + 8);
  *v6 = v9;
  *(v6 + 8) = v8;
  sub_19022FD14(v7, a2 + v5[20], &qword_1EAD54430);
  v10 = a2 + v5[24];
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  v13 = *v12;
  LOBYTE(v12) = *(v12 + 8);
  *v10 = v13;
  *(v10 + 8) = v12;
  sub_19022FD14(v11, a2 + v5[28], &qword_1EAD54430);
  v14 = a2 + v5[32];
  v16 = *(a1 + 48);
  v15 = *(a1 + 56);
  v17 = *v16;
  LOBYTE(v16) = *(v16 + 8);
  *v14 = v17;
  *(v14 + 8) = v16;
  sub_19022FD14(v15, a2 + v5[36], &qword_1EAD54430);
  v18 = a2 + v5[40];
  v20 = *(a1 + 64);
  v19 = *(a1 + 72);
  v21 = *v20;
  LOBYTE(v20) = *(v20 + 8);
  *v18 = v21;
  *(v18 + 8) = v20;
  sub_19022FD14(v19, a2 + v5[44], &qword_1EAD54430);
  v22 = a2 + v5[48];
  v24 = *(a1 + 80);
  v23 = *(a1 + 88);
  v25 = *v24;
  LOBYTE(v24) = *(v24 + 8);
  *v22 = v25;
  *(v22 + 8) = v24;
  result = sub_19022FD14(v23, a2 + v5[52], &qword_1EAD54430);
  v27 = a2 + v5[56];
  v28 = *(a1 + 96);
  v29 = *v28;
  LOBYTE(v28) = *(v28 + 8);
  *v27 = v29;
  *(v27 + 8) = v28;
  return result;
}

uint64_t sub_190845210(uint64_t a1)
{
  v3 = sub_190D56ED0();
  v4 = [v1 arrayForKey_];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_190D57180();

  v6 = sub_19088097C(v5);

  if (!v6)
  {
    return 0;
  }

  if (a1 < 0 || *(v6 + 16) <= a1)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(v6 + 16 * a1 + 32);
    sub_190D52690();
  }

  return v7;
}

void sub_1908452FC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54458);
  sub_190D55FD0();
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2 = sub_190845210(0);
  v4 = v3;

  sub_1908499E0(v2, v4);
  sub_190D55FD0();
  v5 = [v0 standardUserDefaults];
  v6 = sub_190845210(1);
  v8 = v7;

  sub_1908499E0(v6, v8);
  sub_190D55FD0();
  v9 = [v0 standardUserDefaults];
  v10 = sub_190845210(2);
  v12 = v11;

  sub_1908499E0(v10, v12);
  sub_190D55FD0();
  v13 = [v0 standardUserDefaults];
  v14 = sub_190845210(3);
  v16 = v15;

  sub_1908499E0(v14, v16);
  sub_190D55FD0();
  v17 = [v0 standardUserDefaults];
  v18 = sub_190845210(4);
  v20 = v19;

  sub_1908499E0(v18, v20);
  sub_190D55FD0();
  v21 = [v0 standardUserDefaults];
  v22 = sub_190845210(5);
  v24 = v23;

  sub_1908499E0(v22, v24);
}

uint64_t sub_190845588@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD54400);
  v3 = v2 - 8;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v34 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52F28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54410);
  v12 = v11 - 8;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v33 - v16;
  *v17 = sub_190D548D0();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54418);
  sub_19084595C(v1, &v17[*(v18 + 44)]);
  v19 = sub_190D55390();
  v20 = *(*(v19 - 8) + 56);
  v20(v10, 1, 1, v19);
  v21 = sub_190D553F0();
  sub_19022EEA4(v10, &qword_1EAD52F28);
  KeyPath = swift_getKeyPath();
  v23 = &v17[*(v12 + 44)];
  *v23 = KeyPath;
  v23[1] = v21;
  *v7 = sub_190D548D0();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54420);
  sub_1908465FC(v33[1], &v7[*(v24 + 44)]);
  v20(v10, 1, 1, v19);
  v25 = sub_190D553F0();
  sub_19022EEA4(v10, &qword_1EAD52F28);
  v26 = swift_getKeyPath();
  v27 = &v7[*(v3 + 44)];
  *v27 = v26;
  v27[1] = v25;
  sub_19022FD14(v17, v15, &qword_1EAD54410);
  v28 = v34;
  sub_19022FD14(v7, v34, &unk_1EAD54400);
  v29 = v35;
  sub_19022FD14(v15, v35, &qword_1EAD54410);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54428);
  sub_19022FD14(v28, v29 + *(v30 + 48), &unk_1EAD54400);
  v31 = v29 + *(v30 + 64);
  *v31 = 0;
  *(v31 + 8) = 1;
  sub_19022EEA4(v7, &unk_1EAD54400);
  sub_19022EEA4(v17, &qword_1EAD54410);
  sub_19022EEA4(v28, &unk_1EAD54400);
  return sub_19022EEA4(v15, &qword_1EAD54410);
}

uint64_t sub_19084595C@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563E0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v34 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v33 = &v31 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v32 = &v31 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v31 - v12;
  sub_190D549E0();
  v14 = swift_allocObject();
  v15 = a1[5];
  v14[5] = a1[4];
  v14[6] = v15;
  v14[7] = a1[6];
  v16 = a1[1];
  v14[1] = *a1;
  v14[2] = v16;
  v17 = a1[3];
  v14[3] = a1[2];
  v14[4] = v17;
  sub_19084A72C(a1, v35);
  v31 = v13;
  sub_190D56070();
  sub_190D549E0();
  v18 = swift_allocObject();
  v19 = a1[5];
  v18[5] = a1[4];
  v18[6] = v19;
  v18[7] = a1[6];
  v20 = a1[1];
  v18[1] = *a1;
  v18[2] = v20;
  v21 = a1[3];
  v18[3] = a1[2];
  v18[4] = v21;
  sub_19084A72C(a1, v35);
  v22 = v32;
  sub_190D56070();
  v23 = *(v5 + 16);
  v24 = v33;
  v23(v33, v13, v4);
  v25 = v34;
  v23(v34, v22, v4);
  *a2 = 0;
  *(a2 + 8) = 1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54468);
  v23((a2 + v26[12]), v24, v4);
  v27 = a2 + v26[16];
  *v27 = 0;
  *(v27 + 8) = 1;
  v23((a2 + v26[20]), v25, v4);
  v28 = a2 + v26[24];
  *v28 = 0;
  *(v28 + 8) = 1;
  v29 = *(v5 + 8);
  v29(v22, v4);
  v29(v31, v4);
  v29(v25, v4);
  return (v29)(v24, v4);
}

void sub_190845CE0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54458);
  sub_190D55FD0();
  swift_getKeyPath();
  sub_19084A6CC();
  sub_190D51C20();

  v0 = *&v52[OBJC_IVAR____TtC7ChatKit34TapbackPickerSuggestionsDebugModel__suggestionInput];
  v1 = *&v52[OBJC_IVAR____TtC7ChatKit34TapbackPickerSuggestionsDebugModel__suggestionInput + 8];

  v2 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v2 = v0 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    sub_190D55FD0();
    swift_getKeyPath();
    sub_190D51C20();

    v4 = *&v52[OBJC_IVAR____TtC7ChatKit34TapbackPickerSuggestionsDebugModel__suggestionInput];
    v3 = *&v52[OBJC_IVAR____TtC7ChatKit34TapbackPickerSuggestionsDebugModel__suggestionInput + 8];
    sub_190D52690();

    v5 = sub_1908354D4(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v7 = *(v5 + 2);
    v6 = *(v5 + 3);
    if (v7 >= v6 >> 1)
    {
      v5 = sub_1908354D4((v6 > 1), v7 + 1, 1, v5);
    }

    *(v5 + 2) = v7 + 1;
    v8 = &v5[16 * v7];
    *(v8 + 4) = v4;
    *(v8 + 5) = v3;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  sub_190D55FD0();
  swift_getKeyPath();
  sub_190D51C20();

  v9 = *&v52[OBJC_IVAR____TtC7ChatKit34TapbackPickerSuggestionsDebugModel__suggestionInput];
  v10 = *&v52[OBJC_IVAR____TtC7ChatKit34TapbackPickerSuggestionsDebugModel__suggestionInput + 8];

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    sub_190D55FD0();
    swift_getKeyPath();
    sub_190D51C20();

    v13 = *&v52[OBJC_IVAR____TtC7ChatKit34TapbackPickerSuggestionsDebugModel__suggestionInput];
    v12 = *&v52[OBJC_IVAR____TtC7ChatKit34TapbackPickerSuggestionsDebugModel__suggestionInput + 8];
    sub_190D52690();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1908354D4(0, *(v5 + 2) + 1, 1, v5);
    }

    v15 = *(v5 + 2);
    v14 = *(v5 + 3);
    if (v15 >= v14 >> 1)
    {
      v5 = sub_1908354D4((v14 > 1), v15 + 1, 1, v5);
    }

    *(v5 + 2) = v15 + 1;
    v16 = &v5[16 * v15];
    *(v16 + 4) = v13;
    *(v16 + 5) = v12;
  }

  sub_190D55FD0();
  swift_getKeyPath();
  sub_190D51C20();

  v17 = *&v52[OBJC_IVAR____TtC7ChatKit34TapbackPickerSuggestionsDebugModel__suggestionInput];
  v18 = *&v52[OBJC_IVAR____TtC7ChatKit34TapbackPickerSuggestionsDebugModel__suggestionInput + 8];

  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    sub_190D55FD0();
    swift_getKeyPath();
    sub_190D51C20();

    v21 = *&v52[OBJC_IVAR____TtC7ChatKit34TapbackPickerSuggestionsDebugModel__suggestionInput];
    v20 = *&v52[OBJC_IVAR____TtC7ChatKit34TapbackPickerSuggestionsDebugModel__suggestionInput + 8];
    sub_190D52690();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1908354D4(0, *(v5 + 2) + 1, 1, v5);
    }

    v23 = *(v5 + 2);
    v22 = *(v5 + 3);
    if (v23 >= v22 >> 1)
    {
      v5 = sub_1908354D4((v22 > 1), v23 + 1, 1, v5);
    }

    *(v5 + 2) = v23 + 1;
    v24 = &v5[16 * v23];
    *(v24 + 4) = v21;
    *(v24 + 5) = v20;
  }

  sub_190D55FD0();
  swift_getKeyPath();
  sub_190D51C20();

  v25 = *&v52[OBJC_IVAR____TtC7ChatKit34TapbackPickerSuggestionsDebugModel__suggestionInput];
  v26 = *&v52[OBJC_IVAR____TtC7ChatKit34TapbackPickerSuggestionsDebugModel__suggestionInput + 8];

  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = v25 & 0xFFFFFFFFFFFFLL;
  }

  if (v27)
  {
    sub_190D55FD0();
    swift_getKeyPath();
    sub_190D51C20();

    v29 = *&v52[OBJC_IVAR____TtC7ChatKit34TapbackPickerSuggestionsDebugModel__suggestionInput];
    v28 = *&v52[OBJC_IVAR____TtC7ChatKit34TapbackPickerSuggestionsDebugModel__suggestionInput + 8];
    sub_190D52690();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1908354D4(0, *(v5 + 2) + 1, 1, v5);
    }

    v31 = *(v5 + 2);
    v30 = *(v5 + 3);
    if (v31 >= v30 >> 1)
    {
      v5 = sub_1908354D4((v30 > 1), v31 + 1, 1, v5);
    }

    *(v5 + 2) = v31 + 1;
    v32 = &v5[16 * v31];
    *(v32 + 4) = v29;
    *(v32 + 5) = v28;
  }

  sub_190D55FD0();
  swift_getKeyPath();
  sub_190D51C20();

  v33 = *&v52[OBJC_IVAR____TtC7ChatKit34TapbackPickerSuggestionsDebugModel__suggestionInput];
  v34 = *&v52[OBJC_IVAR____TtC7ChatKit34TapbackPickerSuggestionsDebugModel__suggestionInput + 8];

  v35 = HIBYTE(v34) & 0xF;
  if ((v34 & 0x2000000000000000) == 0)
  {
    v35 = v33 & 0xFFFFFFFFFFFFLL;
  }

  if (v35)
  {
    sub_190D55FD0();
    swift_getKeyPath();
    sub_190D51C20();

    v37 = *&v52[OBJC_IVAR____TtC7ChatKit34TapbackPickerSuggestionsDebugModel__suggestionInput];
    v36 = *&v52[OBJC_IVAR____TtC7ChatKit34TapbackPickerSuggestionsDebugModel__suggestionInput + 8];
    sub_190D52690();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1908354D4(0, *(v5 + 2) + 1, 1, v5);
    }

    v39 = *(v5 + 2);
    v38 = *(v5 + 3);
    if (v39 >= v38 >> 1)
    {
      v5 = sub_1908354D4((v38 > 1), v39 + 1, 1, v5);
    }

    *(v5 + 2) = v39 + 1;
    v40 = &v5[16 * v39];
    *(v40 + 4) = v37;
    *(v40 + 5) = v36;
  }

  sub_190D55FD0();
  swift_getKeyPath();
  sub_190D51C20();

  v41 = *&v52[OBJC_IVAR____TtC7ChatKit34TapbackPickerSuggestionsDebugModel__suggestionInput];
  v42 = *&v52[OBJC_IVAR____TtC7ChatKit34TapbackPickerSuggestionsDebugModel__suggestionInput + 8];

  v43 = HIBYTE(v42) & 0xF;
  if ((v42 & 0x2000000000000000) == 0)
  {
    v43 = v41 & 0xFFFFFFFFFFFFLL;
  }

  if (v43)
  {
    sub_190D55FD0();
    swift_getKeyPath();
    sub_190D51C20();

    v45 = *&v52[OBJC_IVAR____TtC7ChatKit34TapbackPickerSuggestionsDebugModel__suggestionInput];
    v44 = *&v52[OBJC_IVAR____TtC7ChatKit34TapbackPickerSuggestionsDebugModel__suggestionInput + 8];
    sub_190D52690();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1908354D4(0, *(v5 + 2) + 1, 1, v5);
    }

    v47 = *(v5 + 2);
    v46 = *(v5 + 3);
    if (v47 >= v46 >> 1)
    {
      v5 = sub_1908354D4((v46 > 1), v47 + 1, 1, v5);
    }

    *(v5 + 2) = v47 + 1;
    v48 = &v5[16 * v47];
    *(v48 + 4) = v45;
    *(v48 + 5) = v44;
  }

  v49 = [objc_opt_self() standardUserDefaults];
  v50 = sub_190D57160();

  v51 = sub_190D56ED0();
  [v49 setValue:v50 forKey:v51];

  sub_1908452FC();
}

void sub_19084656C()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_190D56ED0();
  [v0 setValue:0 forKey:v1];

  sub_1908452FC();
}

uint64_t sub_1908465FC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54430);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v42 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v48 = &v41 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v47 = &v41 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v46 = &v41 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v45 = &v41 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v44 = &v41 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v41 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v41 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v41 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v41 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v41 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v41 - v31;
  *v32 = sub_190D54AC0();
  *(v32 + 1) = 0;
  v32[16] = 1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54438);
  sub_190846B10(a1, &v32[*(v33 + 44)]);
  *v30 = sub_190D54AC0();
  *(v30 + 1) = 0;
  v30[16] = 1;
  sub_190847218(a1, &v30[*(v33 + 44)]);
  *v27 = sub_190D54AC0();
  *(v27 + 1) = 0;
  v27[16] = 1;
  sub_190847920(a1, &v27[*(v33 + 44)]);
  *v24 = sub_190D54AC0();
  *(v24 + 1) = 0;
  v24[16] = 1;
  sub_190848028(a1, &v24[*(v33 + 44)]);
  *v21 = sub_190D54AC0();
  *(v21 + 1) = 0;
  v21[16] = 1;
  sub_190848730(a1, &v21[*(v33 + 44)]);
  *v18 = sub_190D54AC0();
  *(v18 + 1) = 0;
  v18[16] = 1;
  sub_190848E38(a1, &v18[*(v33 + 44)]);
  v61 = 0;
  v62 = 1;
  v63[0] = &v61;
  v34 = v44;
  sub_19022FD14(v32, v44, &qword_1EAD54430);
  v59 = 0;
  v60 = 1;
  v63[1] = v34;
  v63[2] = &v59;
  v35 = v45;
  sub_19022FD14(v30, v45, &qword_1EAD54430);
  v57 = 0;
  v58 = 1;
  v63[3] = v35;
  v63[4] = &v57;
  v36 = v46;
  sub_19022FD14(v27, v46, &qword_1EAD54430);
  v55 = 0;
  v56 = 1;
  v63[5] = v36;
  v63[6] = &v55;
  v37 = v47;
  sub_19022FD14(v24, v47, &qword_1EAD54430);
  v53 = 0;
  v54 = 1;
  v63[7] = v37;
  v63[8] = &v53;
  v38 = v48;
  sub_19022FD14(v21, v48, &qword_1EAD54430);
  v51 = 0;
  v52 = 1;
  v63[9] = v38;
  v63[10] = &v51;
  v39 = v42;
  sub_19022FD14(v18, v42, &qword_1EAD54430);
  v49 = 0;
  v50 = 1;
  v63[11] = v39;
  v63[12] = &v49;
  sub_19084507C(v63, v43);
  sub_19022EEA4(v18, &qword_1EAD54430);
  sub_19022EEA4(v21, &qword_1EAD54430);
  sub_19022EEA4(v24, &qword_1EAD54430);
  sub_19022EEA4(v27, &qword_1EAD54430);
  sub_19022EEA4(v30, &qword_1EAD54430);
  sub_19022EEA4(v32, &qword_1EAD54430);
  sub_19022EEA4(v39, &qword_1EAD54430);
  sub_19022EEA4(v48, &qword_1EAD54430);
  sub_19022EEA4(v47, &qword_1EAD54430);
  sub_19022EEA4(v46, &qword_1EAD54430);
  sub_19022EEA4(v45, &qword_1EAD54430);
  return sub_19022EEA4(v44, &qword_1EAD54430);
}

uint64_t sub_190846B10@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v50 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563E0);
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v4 = &v50 - v3;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54450);
  v5 = MEMORY[0x1EEE9AC00](v52);
  v61 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v50 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v50 - v10;
  sub_190D549E0();
  v60 = sub_190D555D0();
  v59 = v11;
  v55 = v12;
  v62 = v13;
  v68 = *a1;
  v65 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54458);
  sub_190D55FD0();
  v14 = v67;
  swift_getKeyPath();
  *&v65 = v14;
  sub_19084A6CC();
  sub_190D51C20();

  v16 = *&v14[OBJC_IVAR____TtC7ChatKit34TapbackPickerSuggestionsDebugModel__suggestionInput];
  v15 = *&v14[OBJC_IVAR____TtC7ChatKit34TapbackPickerSuggestionsDebugModel__suggestionInput + 8];
  sub_190D52690();

  *&v65 = v16;
  *(&v65 + 1) = v15;
  sub_19081E484();
  v57 = sub_190D555F0();
  v56 = v17;
  v51 = v18;
  v58 = v19;
  sub_190D549E0();
  v20 = swift_allocObject();
  v21 = a1[5];
  v20[5] = a1[4];
  v20[6] = v21;
  v20[7] = a1[6];
  v22 = a1[1];
  v20[1] = *a1;
  v20[2] = v22;
  v23 = a1[3];
  v20[3] = a1[2];
  v20[4] = v23;
  sub_19084A72C(a1, &v65);
  sub_190D56070();
  sub_19084A764();
  v67 = a1[6];
  v65 = a1[6];
  sub_190D55FD0();
  v24 = v64;
  v65 = v68;
  sub_190D55FD0();
  v25 = v64;
  LOBYTE(v15) = sub_190D57D90();

  if (v15)
  {
    v26 = sub_190D55D50();
  }

  else
  {
    v26 = sub_190D55DA0();
  }

  v27 = v26;
  v28 = sub_190D552B0();
  (*(v53 + 32))(v9, v4, v54);
  v29 = &v9[*(v52 + 36)];
  *v29 = v27;
  v29[8] = v28;
  sub_19084A7B0(v9, v63);
  v65 = v67;
  sub_190D55FD0();
  v30 = v64;
  v65 = v68;
  sub_190D55FD0();
  v31 = v64;
  v32 = sub_190D57D90();

  if (v32)
  {
    v64 = v68;
    sub_190D55FF0();
    v34 = *(&v65 + 1);
    v33 = v65;
    v35 = v66;
    sub_190D50920();
    sub_190D50920();
    v36 = v35;
  }

  else
  {
    v33 = 0;
    v34 = 0;
    v35 = 0;
  }

  v37 = v55 & 1;
  LOBYTE(v65) = v55 & 1;
  v38 = v61;
  sub_19022FD14(v63, v61, &qword_1EAD54450);
  v39 = v50;
  v40 = v59;
  *v50 = v60;
  v39[1] = v40;
  *(v39 + 16) = v37;
  v41 = v57;
  v39[3] = v62;
  v39[4] = v41;
  v42 = v56;
  v39[5] = v56;
  v43 = v51 & 1;
  *(v39 + 48) = v51 & 1;
  v39[7] = v58;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54460);
  sub_19022FD14(v38, v39 + v44[16], &qword_1EAD54450);
  v45 = (v39 + v44[20]);
  *v45 = v33;
  v45[1] = v34;
  v45[2] = v35;
  v46 = v39 + v44[24];
  v47 = v60;
  sub_19081BE48(v60, v40, v37);
  sub_190D52690();
  v48 = v57;
  sub_19081BE48(v57, v42, v43);
  sub_190D52690();
  sub_19084A820(v33, v34, v35);
  sub_19084A874(v33, v34, v35);
  *v46 = 0;
  v46[8] = 1;
  sub_19022EEA4(v63, &qword_1EAD54450);
  sub_19084A874(v33, v34, v35);
  sub_19022EEA4(v61, &qword_1EAD54450);
  sub_19081E474(v48, v42, v43);

  sub_19081E474(v47, v59, v65);
}

uint64_t sub_1908471A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54458);
  sub_190D55FD0();
  return sub_190D55FE0();
}

uint64_t sub_190847218@<X0>(_OWORD *a1@<X0>, void *a2@<X8>)
{
  v50 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563E0);
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v4 = &v50 - v3;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54450);
  v5 = MEMORY[0x1EEE9AC00](v52);
  v61 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v50 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v50 - v10;
  sub_190D549E0();
  v60 = sub_190D555D0();
  v59 = v11;
  v55 = v12;
  v62 = v13;
  v68 = a1[1];
  v65 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54458);
  sub_190D55FD0();
  v14 = v67;
  swift_getKeyPath();
  *&v65 = v14;
  sub_19084A6CC();
  sub_190D51C20();

  v16 = *&v14[OBJC_IVAR____TtC7ChatKit34TapbackPickerSuggestionsDebugModel__suggestionInput];
  v15 = *&v14[OBJC_IVAR____TtC7ChatKit34TapbackPickerSuggestionsDebugModel__suggestionInput + 8];
  sub_190D52690();

  *&v65 = v16;
  *(&v65 + 1) = v15;
  sub_19081E484();
  v57 = sub_190D555F0();
  v56 = v17;
  v51 = v18;
  v58 = v19;
  sub_190D549E0();
  v20 = swift_allocObject();
  v21 = a1[5];
  v20[5] = a1[4];
  v20[6] = v21;
  v20[7] = a1[6];
  v22 = a1[1];
  v20[1] = *a1;
  v20[2] = v22;
  v23 = a1[3];
  v20[3] = a1[2];
  v20[4] = v23;
  sub_19084A72C(a1, &v65);
  sub_190D56070();
  sub_19084A764();
  v67 = a1[6];
  v65 = a1[6];
  sub_190D55FD0();
  v24 = v64;
  v65 = v68;
  sub_190D55FD0();
  v25 = v64;
  LOBYTE(v15) = sub_190D57D90();

  if (v15)
  {
    v26 = sub_190D55D50();
  }

  else
  {
    v26 = sub_190D55DA0();
  }

  v27 = v26;
  v28 = sub_190D552B0();
  (*(v53 + 32))(v9, v4, v54);
  v29 = &v9[*(v52 + 36)];
  *v29 = v27;
  v29[8] = v28;
  sub_19084A7B0(v9, v63);
  v65 = v67;
  sub_190D55FD0();
  v30 = v64;
  v65 = v68;
  sub_190D55FD0();
  v31 = v64;
  v32 = sub_190D57D90();

  if (v32)
  {
    v64 = v68;
    sub_190D55FF0();
    v34 = *(&v65 + 1);
    v33 = v65;
    v35 = v66;
    sub_190D50920();
    sub_190D50920();
    v36 = v35;
  }

  else
  {
    v33 = 0;
    v34 = 0;
    v35 = 0;
  }

  v37 = v55 & 1;
  LOBYTE(v65) = v55 & 1;
  v38 = v61;
  sub_19022FD14(v63, v61, &qword_1EAD54450);
  v39 = v50;
  v40 = v59;
  *v50 = v60;
  v39[1] = v40;
  *(v39 + 16) = v37;
  v41 = v57;
  v39[3] = v62;
  v39[4] = v41;
  v42 = v56;
  v39[5] = v56;
  v43 = v51 & 1;
  *(v39 + 48) = v51 & 1;
  v39[7] = v58;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54460);
  sub_19022FD14(v38, v39 + v44[16], &qword_1EAD54450);
  v45 = (v39 + v44[20]);
  *v45 = v33;
  v45[1] = v34;
  v45[2] = v35;
  v46 = v39 + v44[24];
  v47 = v60;
  sub_19081BE48(v60, v40, v37);
  sub_190D52690();
  v48 = v57;
  sub_19081BE48(v57, v42, v43);
  sub_190D52690();
  sub_19084A820(v33, v34, v35);
  sub_19084A874(v33, v34, v35);
  *v46 = 0;
  v46[8] = 1;
  sub_19022EEA4(v63, &qword_1EAD54450);
  sub_19084A874(v33, v34, v35);
  sub_19022EEA4(v61, &qword_1EAD54450);
  sub_19081E474(v48, v42, v43);

  sub_19081E474(v47, v59, v65);
}

uint64_t sub_1908478AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54458);
  sub_190D55FD0();
  return sub_190D55FE0();
}

uint64_t sub_190847920@<X0>(_OWORD *a1@<X0>, void *a2@<X8>)
{
  v50 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563E0);
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v4 = &v50 - v3;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54450);
  v5 = MEMORY[0x1EEE9AC00](v52);
  v61 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v50 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v50 - v10;
  sub_190D549E0();
  v60 = sub_190D555D0();
  v59 = v11;
  v55 = v12;
  v62 = v13;
  v68 = a1[2];
  v65 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54458);
  sub_190D55FD0();
  v14 = v67;
  swift_getKeyPath();
  *&v65 = v14;
  sub_19084A6CC();
  sub_190D51C20();

  v16 = *&v14[OBJC_IVAR____TtC7ChatKit34TapbackPickerSuggestionsDebugModel__suggestionInput];
  v15 = *&v14[OBJC_IVAR____TtC7ChatKit34TapbackPickerSuggestionsDebugModel__suggestionInput + 8];
  sub_190D52690();

  *&v65 = v16;
  *(&v65 + 1) = v15;
  sub_19081E484();
  v57 = sub_190D555F0();
  v56 = v17;
  v51 = v18;
  v58 = v19;
  sub_190D549E0();
  v20 = swift_allocObject();
  v21 = a1[5];
  v20[5] = a1[4];
  v20[6] = v21;
  v20[7] = a1[6];
  v22 = a1[1];
  v20[1] = *a1;
  v20[2] = v22;
  v23 = a1[3];
  v20[3] = a1[2];
  v20[4] = v23;
  sub_19084A72C(a1, &v65);
  sub_190D56070();
  sub_19084A764();
  v67 = a1[6];
  v65 = a1[6];
  sub_190D55FD0();
  v24 = v64;
  v65 = v68;
  sub_190D55FD0();
  v25 = v64;
  LOBYTE(v15) = sub_190D57D90();

  if (v15)
  {
    v26 = sub_190D55D50();
  }

  else
  {
    v26 = sub_190D55DA0();
  }

  v27 = v26;
  v28 = sub_190D552B0();
  (*(v53 + 32))(v9, v4, v54);
  v29 = &v9[*(v52 + 36)];
  *v29 = v27;
  v29[8] = v28;
  sub_19084A7B0(v9, v63);
  v65 = v67;
  sub_190D55FD0();
  v30 = v64;
  v65 = v68;
  sub_190D55FD0();
  v31 = v64;
  v32 = sub_190D57D90();

  if (v32)
  {
    v64 = v68;
    sub_190D55FF0();
    v34 = *(&v65 + 1);
    v33 = v65;
    v35 = v66;
    sub_190D50920();
    sub_190D50920();
    v36 = v35;
  }

  else
  {
    v33 = 0;
    v34 = 0;
    v35 = 0;
  }

  v37 = v55 & 1;
  LOBYTE(v65) = v55 & 1;
  v38 = v61;
  sub_19022FD14(v63, v61, &qword_1EAD54450);
  v39 = v50;
  v40 = v59;
  *v50 = v60;
  v39[1] = v40;
  *(v39 + 16) = v37;
  v41 = v57;
  v39[3] = v62;
  v39[4] = v41;
  v42 = v56;
  v39[5] = v56;
  v43 = v51 & 1;
  *(v39 + 48) = v51 & 1;
  v39[7] = v58;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54460);
  sub_19022FD14(v38, v39 + v44[16], &qword_1EAD54450);
  v45 = (v39 + v44[20]);
  *v45 = v33;
  v45[1] = v34;
  v45[2] = v35;
  v46 = v39 + v44[24];
  v47 = v60;
  sub_19081BE48(v60, v40, v37);
  sub_190D52690();
  v48 = v57;
  sub_19081BE48(v57, v42, v43);
  sub_190D52690();
  sub_19084A820(v33, v34, v35);
  sub_19084A874(v33, v34, v35);
  *v46 = 0;
  v46[8] = 1;
  sub_19022EEA4(v63, &qword_1EAD54450);
  sub_19084A874(v33, v34, v35);
  sub_19022EEA4(v61, &qword_1EAD54450);
  sub_19081E474(v48, v42, v43);

  sub_19081E474(v47, v59, v65);
}

uint64_t sub_190847FB4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54458);
  sub_190D55FD0();
  return sub_190D55FE0();
}

uint64_t sub_190848028@<X0>(_OWORD *a1@<X0>, void *a2@<X8>)
{
  v50 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563E0);
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v4 = &v50 - v3;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54450);
  v5 = MEMORY[0x1EEE9AC00](v52);
  v61 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v50 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v50 - v10;
  sub_190D549E0();
  v60 = sub_190D555D0();
  v59 = v11;
  v55 = v12;
  v62 = v13;
  v68 = a1[3];
  v65 = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54458);
  sub_190D55FD0();
  v14 = v67;
  swift_getKeyPath();
  *&v65 = v14;
  sub_19084A6CC();
  sub_190D51C20();

  v16 = *&v14[OBJC_IVAR____TtC7ChatKit34TapbackPickerSuggestionsDebugModel__suggestionInput];
  v15 = *&v14[OBJC_IVAR____TtC7ChatKit34TapbackPickerSuggestionsDebugModel__suggestionInput + 8];
  sub_190D52690();

  *&v65 = v16;
  *(&v65 + 1) = v15;
  sub_19081E484();
  v57 = sub_190D555F0();
  v56 = v17;
  v51 = v18;
  v58 = v19;
  sub_190D549E0();
  v20 = swift_allocObject();
  v21 = a1[5];
  v20[5] = a1[4];
  v20[6] = v21;
  v20[7] = a1[6];
  v22 = a1[1];
  v20[1] = *a1;
  v20[2] = v22;
  v23 = a1[3];
  v20[3] = a1[2];
  v20[4] = v23;
  sub_19084A72C(a1, &v65);
  sub_190D56070();
  sub_19084A764();
  v67 = a1[6];
  v65 = a1[6];
  sub_190D55FD0();
  v24 = v64;
  v65 = v68;
  sub_190D55FD0();
  v25 = v64;
  LOBYTE(v15) = sub_190D57D90();

  if (v15)
  {
    v26 = sub_190D55D50();
  }

  else
  {
    v26 = sub_190D55DA0();
  }

  v27 = v26;
  v28 = sub_190D552B0();
  (*(v53 + 32))(v9, v4, v54);
  v29 = &v9[*(v52 + 36)];
  *v29 = v27;
  v29[8] = v28;
  sub_19084A7B0(v9, v63);
  v65 = v67;
  sub_190D55FD0();
  v30 = v64;
  v65 = v68;
  sub_190D55FD0();
  v31 = v64;
  v32 = sub_190D57D90();

  if (v32)
  {
    v64 = v68;
    sub_190D55FF0();
    v34 = *(&v65 + 1);
    v33 = v65;
    v35 = v66;
    sub_190D50920();
    sub_190D50920();
    v36 = v35;
  }

  else
  {
    v33 = 0;
    v34 = 0;
    v35 = 0;
  }

  v37 = v55 & 1;
  LOBYTE(v65) = v55 & 1;
  v38 = v61;
  sub_19022FD14(v63, v61, &qword_1EAD54450);
  v39 = v50;
  v40 = v59;
  *v50 = v60;
  v39[1] = v40;
  *(v39 + 16) = v37;
  v41 = v57;
  v39[3] = v62;
  v39[4] = v41;
  v42 = v56;
  v39[5] = v56;
  v43 = v51 & 1;
  *(v39 + 48) = v51 & 1;
  v39[7] = v58;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54460);
  sub_19022FD14(v38, v39 + v44[16], &qword_1EAD54450);
  v45 = (v39 + v44[20]);
  *v45 = v33;
  v45[1] = v34;
  v45[2] = v35;
  v46 = v39 + v44[24];
  v47 = v60;
  sub_19081BE48(v60, v40, v37);
  sub_190D52690();
  v48 = v57;
  sub_19081BE48(v57, v42, v43);
  sub_190D52690();
  sub_19084A820(v33, v34, v35);
  sub_19084A874(v33, v34, v35);
  *v46 = 0;
  v46[8] = 1;
  sub_19022EEA4(v63, &qword_1EAD54450);
  sub_19084A874(v33, v34, v35);
  sub_19022EEA4(v61, &qword_1EAD54450);
  sub_19081E474(v48, v42, v43);

  sub_19081E474(v47, v59, v65);
}

uint64_t sub_1908486BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54458);
  sub_190D55FD0();
  return sub_190D55FE0();
}

uint64_t sub_190848730@<X0>(_OWORD *a1@<X0>, void *a2@<X8>)
{
  v50 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563E0);
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v4 = &v50 - v3;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54450);
  v5 = MEMORY[0x1EEE9AC00](v52);
  v61 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v50 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v50 - v10;
  sub_190D549E0();
  v60 = sub_190D555D0();
  v59 = v11;
  v55 = v12;
  v62 = v13;
  v68 = a1[4];
  v65 = a1[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54458);
  sub_190D55FD0();
  v14 = v67;
  swift_getKeyPath();
  *&v65 = v14;
  sub_19084A6CC();
  sub_190D51C20();

  v16 = *&v14[OBJC_IVAR____TtC7ChatKit34TapbackPickerSuggestionsDebugModel__suggestionInput];
  v15 = *&v14[OBJC_IVAR____TtC7ChatKit34TapbackPickerSuggestionsDebugModel__suggestionInput + 8];
  sub_190D52690();

  *&v65 = v16;
  *(&v65 + 1) = v15;
  sub_19081E484();
  v57 = sub_190D555F0();
  v56 = v17;
  v51 = v18;
  v58 = v19;
  sub_190D549E0();
  v20 = swift_allocObject();
  v21 = a1[5];
  v20[5] = a1[4];
  v20[6] = v21;
  v20[7] = a1[6];
  v22 = a1[1];
  v20[1] = *a1;
  v20[2] = v22;
  v23 = a1[3];
  v20[3] = a1[2];
  v20[4] = v23;
  sub_19084A72C(a1, &v65);
  sub_190D56070();
  sub_19084A764();
  v67 = a1[6];
  v65 = a1[6];
  sub_190D55FD0();
  v24 = v64;
  v65 = v68;
  sub_190D55FD0();
  v25 = v64;
  LOBYTE(v15) = sub_190D57D90();

  if (v15)
  {
    v26 = sub_190D55D50();
  }

  else
  {
    v26 = sub_190D55DA0();
  }

  v27 = v26;
  v28 = sub_190D552B0();
  (*(v53 + 32))(v9, v4, v54);
  v29 = &v9[*(v52 + 36)];
  *v29 = v27;
  v29[8] = v28;
  sub_19084A7B0(v9, v63);
  v65 = v67;
  sub_190D55FD0();
  v30 = v64;
  v65 = v68;
  sub_190D55FD0();
  v31 = v64;
  v32 = sub_190D57D90();

  if (v32)
  {
    v64 = v68;
    sub_190D55FF0();
    v34 = *(&v65 + 1);
    v33 = v65;
    v35 = v66;
    sub_190D50920();
    sub_190D50920();
    v36 = v35;
  }

  else
  {
    v33 = 0;
    v34 = 0;
    v35 = 0;
  }

  v37 = v55 & 1;
  LOBYTE(v65) = v55 & 1;
  v38 = v61;
  sub_19022FD14(v63, v61, &qword_1EAD54450);
  v39 = v50;
  v40 = v59;
  *v50 = v60;
  v39[1] = v40;
  *(v39 + 16) = v37;
  v41 = v57;
  v39[3] = v62;
  v39[4] = v41;
  v42 = v56;
  v39[5] = v56;
  v43 = v51 & 1;
  *(v39 + 48) = v51 & 1;
  v39[7] = v58;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54460);
  sub_19022FD14(v38, v39 + v44[16], &qword_1EAD54450);
  v45 = (v39 + v44[20]);
  *v45 = v33;
  v45[1] = v34;
  v45[2] = v35;
  v46 = v39 + v44[24];
  v47 = v60;
  sub_19081BE48(v60, v40, v37);
  sub_190D52690();
  v48 = v57;
  sub_19081BE48(v57, v42, v43);
  sub_190D52690();
  sub_19084A820(v33, v34, v35);
  sub_19084A874(v33, v34, v35);
  *v46 = 0;
  v46[8] = 1;
  sub_19022EEA4(v63, &qword_1EAD54450);
  sub_19084A874(v33, v34, v35);
  sub_19022EEA4(v61, &qword_1EAD54450);
  sub_19081E474(v48, v42, v43);

  sub_19081E474(v47, v59, v65);
}

uint64_t sub_190848DC4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54458);
  sub_190D55FD0();
  return sub_190D55FE0();
}

uint64_t sub_190848E38@<X0>(_OWORD *a1@<X0>, void *a2@<X8>)
{
  v50 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563E0);
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v4 = &v50 - v3;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54450);
  v5 = MEMORY[0x1EEE9AC00](v52);
  v61 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v50 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v50 - v10;
  sub_190D549E0();
  v60 = sub_190D555D0();
  v59 = v11;
  v55 = v12;
  v62 = v13;
  v68 = a1[5];
  v65 = a1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54458);
  sub_190D55FD0();
  v14 = v67;
  swift_getKeyPath();
  *&v65 = v14;
  sub_19084A6CC();
  sub_190D51C20();

  v16 = *&v14[OBJC_IVAR____TtC7ChatKit34TapbackPickerSuggestionsDebugModel__suggestionInput];
  v15 = *&v14[OBJC_IVAR____TtC7ChatKit34TapbackPickerSuggestionsDebugModel__suggestionInput + 8];
  sub_190D52690();

  *&v65 = v16;
  *(&v65 + 1) = v15;
  sub_19081E484();
  v57 = sub_190D555F0();
  v56 = v17;
  v51 = v18;
  v58 = v19;
  sub_190D549E0();
  v20 = swift_allocObject();
  v21 = a1[5];
  v20[5] = a1[4];
  v20[6] = v21;
  v20[7] = a1[6];
  v22 = a1[1];
  v20[1] = *a1;
  v20[2] = v22;
  v23 = a1[3];
  v20[3] = a1[2];
  v20[4] = v23;
  sub_19084A72C(a1, &v65);
  sub_190D56070();
  sub_19084A764();
  v67 = a1[6];
  v65 = a1[6];
  sub_190D55FD0();
  v24 = v64;
  v65 = v68;
  sub_190D55FD0();
  v25 = v64;
  LOBYTE(v15) = sub_190D57D90();

  if (v15)
  {
    v26 = sub_190D55D50();
  }

  else
  {
    v26 = sub_190D55DA0();
  }

  v27 = v26;
  v28 = sub_190D552B0();
  (*(v53 + 32))(v9, v4, v54);
  v29 = &v9[*(v52 + 36)];
  *v29 = v27;
  v29[8] = v28;
  sub_19084A7B0(v9, v63);
  v65 = v67;
  sub_190D55FD0();
  v30 = v64;
  v65 = v68;
  sub_190D55FD0();
  v31 = v64;
  v32 = sub_190D57D90();

  if (v32)
  {
    v64 = v68;
    sub_190D55FF0();
    v34 = *(&v65 + 1);
    v33 = v65;
    v35 = v66;
    sub_190D50920();
    sub_190D50920();
    v36 = v35;
  }

  else
  {
    v33 = 0;
    v34 = 0;
    v35 = 0;
  }

  v37 = v55 & 1;
  LOBYTE(v65) = v55 & 1;
  v38 = v61;
  sub_19022FD14(v63, v61, &qword_1EAD54450);
  v39 = v50;
  v40 = v59;
  *v50 = v60;
  v39[1] = v40;
  *(v39 + 16) = v37;
  v41 = v57;
  v39[3] = v62;
  v39[4] = v41;
  v42 = v56;
  v39[5] = v56;
  v43 = v51 & 1;
  *(v39 + 48) = v51 & 1;
  v39[7] = v58;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54460);
  sub_19022FD14(v38, v39 + v44[16], &qword_1EAD54450);
  v45 = (v39 + v44[20]);
  *v45 = v33;
  v45[1] = v34;
  v45[2] = v35;
  v46 = v39 + v44[24];
  v47 = v60;
  sub_19081BE48(v60, v40, v37);
  sub_190D52690();
  v48 = v57;
  sub_19081BE48(v57, v42, v43);
  sub_190D52690();
  sub_19084A820(v33, v34, v35);
  sub_19084A874(v33, v34, v35);
  *v46 = 0;
  v46[8] = 1;
  sub_19022EEA4(v63, &qword_1EAD54450);
  sub_19084A874(v33, v34, v35);
  sub_19022EEA4(v61, &qword_1EAD54450);
  sub_19081E474(v48, v42, v43);

  sub_19081E474(v47, v59, v65);
}

uint64_t sub_1908494CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54458);
  sub_190D55FD0();
  return sub_190D55FE0();
}

char *sub_19084958C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v7 = [objc_allocWithZone(type metadata accessor for TapbackPickerInputController()) init];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54488);
  MEMORY[0x193AF1A80](&v12);
  v9 = v12;
  [v7 setDelegate_];

  v13 = a2;
  v14 = a3;
  v15 = a4;
  MEMORY[0x193AF1A80](&v12, v8);
  v10 = v12;
  *&v7[OBJC_IVAR____TtC7ChatKit28TapbackPickerInputController_inputControllerDelegate + 8] = &off_1F0405308;
  swift_unknownObjectWeakAssign();

  [v7 becomeFirstResponder];
  [v7 setFrame_];
  return v7;
}

id sub_1908496B0(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54488);
  MEMORY[0x193AF1A80](&v13);
  v10 = v13;
  [a1 setDelegate_];

  v14 = a3;
  v15 = a4;
  v16 = a5;
  MEMORY[0x193AF1A80](&v13, v9);
  v11 = v13;
  *&a1[OBJC_IVAR____TtC7ChatKit28TapbackPickerInputController_inputControllerDelegate + 8] = &off_1F0405308;
  swift_unknownObjectWeakAssign();

  return [a1 becomeFirstResponder];
}

uint64_t sub_1908497DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19084AB40();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_190849840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19084AB40();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1908498A4()
{
  sub_19084AB40();
  sub_190D54C10();
  __break(1u);
}

uint64_t sub_1908498CC()
{
  swift_getKeyPath();
  sub_19084A6CC();
  sub_190D51C20();

  v1 = *(v0 + OBJC_IVAR____TtC7ChatKit34TapbackPickerSuggestionsDebugModel__suggestionInput);
  sub_190D52690();
  return v1;
}

uint64_t sub_190849958@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_19084A6CC();
  sub_190D51C20();

  v4 = *(v3 + OBJC_IVAR____TtC7ChatKit34TapbackPickerSuggestionsDebugModel__suggestionInput + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC7ChatKit34TapbackPickerSuggestionsDebugModel__suggestionInput);
  a2[1] = v4;
  return sub_190D52690();
}

uint64_t sub_1908499E0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC7ChatKit34TapbackPickerSuggestionsDebugModel__suggestionInput);
  v6 = *(v2 + OBJC_IVAR____TtC7ChatKit34TapbackPickerSuggestionsDebugModel__suggestionInput) == a1 && *(v2 + OBJC_IVAR____TtC7ChatKit34TapbackPickerSuggestionsDebugModel__suggestionInput + 8) == a2;
  if (v6 || (sub_190D58760() & 1) != 0)
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_19084A6CC();
    sub_190D51C10();
  }
}

id sub_190849B4C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TapbackPickerSuggestionsDebugModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TapbackPickerSuggestionsDebugModel()
{
  result = qword_1EAD543E8;
  if (!qword_1EAD543E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_190849C58()
{
  result = sub_190D51C60();
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

void sub_190849D18(void *a1)
{
  v2 = [a1 text];
  if (v2)
  {
    v3 = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = 0;
    *(v4 + 24) = 0xE000000000000000;
    v5 = v3;
    CFStringGetLength(v5);
    v11[4] = sub_19084A998;
    v11[5] = v4;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_190929770;
    v11[3] = &block_descriptor_4;
    v6 = _Block_copy(v11);
    sub_190D50920();

    CEMEnumerateEmojiTokensInStringWithBlock();
    _Block_release(v6);

    swift_beginAccess();
    v7 = *(v4 + 16);
    v8 = *(v4 + 24);
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      sub_190D52690();
      sub_1908499E0(v7, v8);
    }

    v10 = sub_190D56ED0();
    [a1 setText_];
  }
}

void *sub_190849EBC(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  result = CEMEmojiTokenGetString();
  if (result)
  {
    v8 = result;
    v9 = sub_190D56F10();
    v11 = v10;

    swift_beginAccess();
    *(a5 + 16) = v9;
    *(a5 + 24) = v11;

    if (a4)
    {
      *a4 = 1;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_190849FDC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_19084A024(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_19084A120@<X0>(void *a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 standardUserDefaults];
  v4 = sub_190845210(0);
  v6 = v5;

  v7 = type metadata accessor for TapbackPickerSuggestionsDebugModel();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR____TtC7ChatKit34TapbackPickerSuggestionsDebugModel__suggestionInput];
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  sub_190D51C50();

  *v9 = v4;
  v9[1] = v6;
  v66.receiver = v8;
  v66.super_class = v7;
  v63 = objc_msgSendSuper2(&v66, sel_init);
  sub_190D55FC0();
  v55 = v65;
  v56 = v64;
  v10 = [v2 standardUserDefaults];
  v11 = sub_190845210(1);
  v13 = v12;

  v14 = objc_allocWithZone(v7);
  v15 = &v14[OBJC_IVAR____TtC7ChatKit34TapbackPickerSuggestionsDebugModel__suggestionInput];
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  sub_190D51C50();

  *v15 = v11;
  v15[1] = v13;
  v62.receiver = v14;
  v62.super_class = v7;
  v63 = objc_msgSendSuper2(&v62, &selRef_initWithImage_alignmentInset_);
  sub_190D55FC0();
  v53 = v65;
  v54 = v64;
  v16 = [v2 standardUserDefaults];
  v17 = sub_190845210(2);
  v19 = v18;

  v20 = objc_allocWithZone(v7);
  v21 = &v20[OBJC_IVAR____TtC7ChatKit34TapbackPickerSuggestionsDebugModel__suggestionInput];
  *v21 = 0;
  v21[1] = 0xE000000000000000;
  sub_190D51C50();

  *v21 = v17;
  v21[1] = v19;
  v61.receiver = v20;
  v61.super_class = v7;
  v63 = objc_msgSendSuper2(&v61, &selRef_initWithImage_alignmentInset_);
  sub_190D55FC0();
  v51 = v65;
  v52 = v64;
  v22 = [v2 standardUserDefaults];
  v23 = sub_190845210(3);
  v25 = v24;

  v26 = objc_allocWithZone(v7);
  v27 = &v26[OBJC_IVAR____TtC7ChatKit34TapbackPickerSuggestionsDebugModel__suggestionInput];
  *v27 = 0;
  v27[1] = 0xE000000000000000;
  sub_190D51C50();

  *v27 = v23;
  v27[1] = v25;
  v60.receiver = v26;
  v60.super_class = v7;
  v63 = objc_msgSendSuper2(&v60, &selRef_initWithImage_alignmentInset_);
  sub_190D55FC0();
  v49 = v65;
  v50 = v64;
  v28 = [v2 standardUserDefaults];
  v29 = sub_190845210(4);
  v31 = v30;

  v32 = objc_allocWithZone(v7);
  v33 = &v32[OBJC_IVAR____TtC7ChatKit34TapbackPickerSuggestionsDebugModel__suggestionInput];
  *v33 = 0;
  v33[1] = 0xE000000000000000;
  sub_190D51C50();

  *v33 = v29;
  v33[1] = v31;
  v59.receiver = v32;
  v59.super_class = v7;
  v63 = objc_msgSendSuper2(&v59, &selRef_initWithImage_alignmentInset_);
  sub_190D55FC0();
  v47 = v65;
  v48 = v64;
  v34 = [v2 standardUserDefaults];
  v35 = sub_190845210(5);
  v37 = v36;

  v38 = objc_allocWithZone(v7);
  v39 = &v38[OBJC_IVAR____TtC7ChatKit34TapbackPickerSuggestionsDebugModel__suggestionInput];
  *v39 = 0;
  v39[1] = 0xE000000000000000;
  sub_190D51C50();

  *v39 = v35;
  v39[1] = v37;
  v58.receiver = v38;
  v58.super_class = v7;
  v63 = objc_msgSendSuper2(&v58, &selRef_initWithImage_alignmentInset_);
  sub_190D55FC0();
  v40 = v64;
  v41 = v65;
  v42 = objc_allocWithZone(v7);
  v43 = &v42[OBJC_IVAR____TtC7ChatKit34TapbackPickerSuggestionsDebugModel__suggestionInput];
  *v43 = 0;
  *(v43 + 1) = 0xE000000000000000;
  sub_190D51C50();

  *v43 = 0;
  *(v43 + 1) = 0xE000000000000000;
  v57.receiver = v42;
  v57.super_class = v7;
  v63 = objc_msgSendSuper2(&v57, &selRef_initWithImage_alignmentInset_);
  result = sub_190D55FC0();
  v45 = v64;
  v46 = v65;
  *a1 = v56;
  a1[1] = v55;
  a1[2] = v54;
  a1[3] = v53;
  a1[4] = v52;
  a1[5] = v51;
  a1[6] = v50;
  a1[7] = v49;
  a1[8] = v48;
  a1[9] = v47;
  a1[10] = v40;
  a1[11] = v41;
  a1[12] = v45;
  a1[13] = v46;
  return result;
}

uint64_t sub_19084A578(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC7ChatKit34TapbackPickerSuggestionsDebugModel__suggestionInput);
  v6 = *(v2 + OBJC_IVAR____TtC7ChatKit34TapbackPickerSuggestionsDebugModel__suggestionInput) == a1 && *(v2 + OBJC_IVAR____TtC7ChatKit34TapbackPickerSuggestionsDebugModel__suggestionInput + 8) == a2;
  if (v6 || (sub_190D58760() & 1) != 0)
  {
    *v5 = a1;
    v5[1] = a2;
    sub_190D52690();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_19084A6CC();
    sub_190D51C10();
  }
}

unint64_t sub_19084A6CC()
{
  result = qword_1EAD543F8;
  if (!qword_1EAD543F8)
  {
    type metadata accessor for TapbackPickerSuggestionsDebugModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD543F8);
  }

  return result;
}

unint64_t sub_19084A764()
{
  result = qword_1EAD46500;
  if (!qword_1EAD46500)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD46500);
  }

  return result;
}

uint64_t sub_19084A7B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54450);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_19084A820(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    sub_190D50920();
    sub_190D50920();

    v3 = a3;
  }
}

uint64_t sub_19084A874(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }

  return result;
}

uint64_t objectdestroyTm_1()
{

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t sub_19084A9A0()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC7ChatKit34TapbackPickerSuggestionsDebugModel__suggestionInput);
  *v2 = v0[3];
  v2[1] = v1;
  sub_190D52690();
}

uint64_t sub_19084A9EC(uint64_t a1, int a2)
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

uint64_t sub_19084AA34(uint64_t result, int a2, int a3)
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

unint64_t sub_19084AA84()
{
  result = qword_1EAD54470;
  if (!qword_1EAD54470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD54478);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54470);
  }

  return result;
}

unint64_t sub_19084AAEC()
{
  result = qword_1EAD54480;
  if (!qword_1EAD54480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54480);
  }

  return result;
}

unint64_t sub_19084AB40()
{
  result = qword_1EAD54490;
  if (!qword_1EAD54490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54490);
  }

  return result;
}

uint64_t sub_19084ABAC(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = sub_190D56ED0();
    v2 = IMBagBoolValueWithDefault();
LABEL_6:
    v4 = v2;

    return v4;
  }

  if (!a1)
  {
    v3 = [objc_opt_self() sharedInstance];
    if (v3)
    {
      v1 = v3;
      v2 = [v3 serverBagAllowsOnboarding];
      goto LABEL_6;
    }

    __break(1u);
  }

  result = sub_190D58790();
  __break(1u);
  return result;
}

uint64_t CKCloudTipViewModel.Context.description.getter(uint64_t a1)
{
  if (a1 == 1)
  {
    return 0x53656761726F7473;
  }

  if (!a1)
  {
    return 0xD000000000000010;
  }

  result = sub_190D58790();
  __break(1u);
  return result;
}

unint64_t CKCloudTipViewModel.Context.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_19084AD08@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_19084AD24()
{
  if (*v0 == 1)
  {
    return 0x53656761726F7473;
  }

  if (!*v0)
  {
    return 0xD000000000000010;
  }

  result = sub_190D58790();
  __break(1u);
  return result;
}

id CKCloudTipViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static CKCloudTipViewModel.sharedInstance.getter()
{
  if (qword_1EAD45C38 != -1)
  {
    swift_once();
  }

  v1 = qword_1EAD45C40;

  return v1;
}

uint64_t sub_19084AF6C()
{
  v1 = (v0 + OBJC_IVAR____TtC7ChatKit19CKCloudTipViewModel_onCloudTipChanged);
  swift_beginAccess();
  v2 = *v1;
  sub_19029063C(*v1);
  return v2;
}

uint64_t sub_19084AFC8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC7ChatKit19CKCloudTipViewModel_onCloudTipChanged);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_19022123C(v6);
}

uint64_t sub_19084B028@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC7ChatKit19CKCloudTipViewModel_onCloudTipChanged);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_19084CF24;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_19029063C(v4);
}

uint64_t sub_19084B0C8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_19084CEEC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC7ChatKit19CKCloudTipViewModel_onCloudTipChanged);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_19029063C(v3);
  return sub_19022123C(v8);
}

uint64_t sub_19084B23C()
{
  v1 = OBJC_IVAR____TtC7ChatKit19CKCloudTipViewModel_displayContext;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_19084B2D4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit19CKCloudTipViewModel_displayContext;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_19084B384()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_190221DA4;

  return sub_19022155C();
}

uint64_t sub_19084B410()
{

  return MEMORY[0x1EEE6DFA0](sub_19084B4F0, 0, 0);
}

uint64_t sub_19084B4F0()
{
  v27 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 264);
  *(v0 + 288) = v2;

  *(v0 + 240) = sub_190D56F10();
  *(v0 + 248) = v3;
  sub_190D58230();
  if (*(v2 + 16) && (v4 = sub_190875C84(v0 + 144), (v5 & 1) != 0))
  {
    sub_19021834C(*(v2 + 56) + 32 * v4, v0 + 184);
    sub_19084CFD0(v0 + 144);
    if (swift_dynamicCast() && (*(v0 + 304) & 1) != 0)
    {
      if (qword_1EAD461E0 != -1)
      {
        swift_once();
      }

      v6 = sub_190D53040();
      __swift_project_value_buffer(v6, qword_1EAD461E8);
      sub_190D52690();
      v7 = sub_190D53020();
      v8 = sub_190D57680();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v26 = v10;
        *v9 = 136315138;
        v11 = sub_190D56DA0();
        v13 = sub_19021D9F8(v11, v12, &v26);

        *(v9 + 4) = v13;
        _os_log_impl(&dword_19020E000, v7, v8, "Fetched MiC ramp state successfully {%s}", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v10);
        MEMORY[0x193AF7A40](v10, -1, -1);
        MEMORY[0x193AF7A40](v9, -1, -1);
      }

      v14 = swift_task_alloc();
      *(v0 + 296) = v14;
      *v14 = v0;
      v14[1] = sub_19084B918;

      return sub_19084C3AC();
    }
  }

  else
  {
    sub_19084CFD0(v0 + 144);
  }

  if (qword_1EAD461E0 != -1)
  {
    swift_once();
  }

  v16 = sub_190D53040();
  __swift_project_value_buffer(v16, qword_1EAD461E8);
  sub_190D52690();
  v17 = sub_190D53020();
  v18 = sub_190D57680();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v26 = v20;
    *v19 = 136315138;
    v21 = sub_190D56DA0();
    v23 = v22;

    v24 = sub_19021D9F8(v21, v23, &v26);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_19020E000, v17, v18, "Ramp state does not indicate eligibility for onboarding. Did not meet criteria for onboarding: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x193AF7A40](v20, -1, -1);
    MEMORY[0x193AF7A40](v19, -1, -1);
  }

  else
  {
  }

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_19084B918()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id CKCloudTipViewModel.init()()
{
  *&v0[OBJC_IVAR____TtC7ChatKit19CKCloudTipViewModel_currentTipDescriptor] = 0;
  v1 = &v0[OBJC_IVAR____TtC7ChatKit19CKCloudTipViewModel_onCloudTipChanged];
  *v1 = 0;
  *(v1 + 1) = 0;
  *&v0[OBJC_IVAR____TtC7ChatKit19CKCloudTipViewModel_displayContext] = 0;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for CKCloudTipViewModel();
  return objc_msgSendSuper2(&v3, sel_init);
}

id CKCloudTipViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKCloudTipViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_19084BB08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(*(*__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56)) + 64) + 40);
  *v7 = a2;
  v7[1] = a3;
  v7[2] = a4;

  return MEMORY[0x1EEE6DED8]();
}

uint64_t sub_19084BB78(uint64_t a1, uint64_t a2)
{
  **(*(*__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return MEMORY[0x1EEE6DED8]();
}

void static CKCloudTipViewModel.enableCloudSyncing()()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedInstance];
  if (!v1)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return;
  }

  v2 = v1;
  v3 = [v1 isEnabled];

  if (v3)
  {
    return;
  }

  v4 = [v0 sharedInstance];
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v4;
  [v4 setEnabled_];
}

uint64_t sub_19084BD90()
{
  v1 = [objc_opt_self() sharedInstance];
  v0[29] = v1;
  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_19084BED0;
  v2 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54528);
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_19084BB08;
  v0[21] = &block_descriptor_36;
  v0[22] = v2;
  [v1 fetchCloudStorageUsageInformationWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_19084BED0()
{

  return MEMORY[0x1EEE6DFA0](sub_19084BFB0, 0, 0);
}

uint64_t sub_19084BFB0()
{
  v10 = *(v0 + 208);
  *(v0 + 240) = v10;
  v1 = *(v0 + 232);
  *(v0 + 256) = *(v0 + 224);

  if (qword_1EAD461E0 != -1)
  {
    swift_once();
  }

  v2 = sub_190D53040();
  *(v0 + 264) = __swift_project_value_buffer(v2, qword_1EAD461E8);
  v3 = sub_190D53020();
  v4 = sub_190D57680();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v10;
    _os_log_impl(&dword_19020E000, v3, v4, "Fetched cloud storage quota successfully >> availableStorage={%lu bytes}", v5, 0xCu);
    MEMORY[0x193AF7A40](v5, -1, -1);
  }

  v6 = [objc_opt_self() sharedInstance];
  *(v0 + 272) = v6;
  if (v6)
  {
    v7 = v6;
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 208;
    *(v0 + 88) = sub_19084C1DC;
    v8 = swift_continuation_init();
    *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD54530);
    *(v0 + 144) = MEMORY[0x1E69E9820];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_19084BB78;
    *(v0 + 168) = &block_descriptor_39;
    *(v0 + 176) = v8;
    [v7 currentStorageOnDeviceWithReply_];
    v6 = (v0 + 80);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DEC8](v6);
}

uint64_t sub_19084C1DC()
{

  return MEMORY[0x1EEE6DFA0](sub_19084C2BC, 0, 0);
}

uint64_t sub_19084C2BC()
{
  v1 = *(v0 + 208);

  v2 = sub_190D53020();
  v3 = sub_190D57680();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = v1;
    _os_log_impl(&dword_19020E000, v2, v3, "Fetched currentStorageOnDevice successfully >> storageOnDevice={%llu}", v4, 0xCu);
    MEMORY[0x193AF7A40](v4, -1, -1);
  }

  v5 = *(v0 + 8);
  v6 = *(v0 + 248);
  v7 = *(v0 + 256);
  v8 = *(v0 + 240);

  return v5(v1, v8, v6, v7);
}

uint64_t sub_19084C3AC()
{
  *(v1 + 96) = v0;
  v2 = swift_task_alloc();
  *(v1 + 104) = v2;
  *v2 = v1;
  v2[1] = sub_19084C43C;

  return sub_19084BD74();
}

uint64_t sub_19084C43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v5[14] = a1;
  v5[15] = a2;
  v5[16] = a3;
  v5[17] = a4;

  return MEMORY[0x1EEE6DFA0](sub_19084C540, 0, 0);
}

uint64_t sub_19084C540()
{
  if ([objc_opt_self() iCloudBackupEnabledSystemWide])
  {
    if (qword_1EAD461E0 != -1)
    {
      swift_once();
    }

    v1 = sub_190D53040();
    __swift_project_value_buffer(v1, qword_1EAD461E8);
    v2 = sub_190D53020();
    v3 = sub_190D57680();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_19020E000, v2, v3, "iCloud Device Backup is Enabled, no need to check quota eligibility due to grace period.", v4, 2u);
      MEMORY[0x193AF7A40](v4, -1, -1);
    }

    v5 = sub_190D53020();
    v6 = sub_190D57680();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      MEMORY[0x193AF7A40](v7, -1, -1);
    }

    receiver = v0[8].receiver;
    super_class = v0[8].super_class;
    v11 = v0[7].receiver;
    v10 = v0[7].super_class;
    v12 = v0[6].receiver;

    v13 = type metadata accessor for CKCloudTipDescriptor();
    v14 = objc_allocWithZone(v13);
    *&v14[OBJC_IVAR____TtC7ChatKit20CKCloudTipDescriptor_tipType] = 1;
    v14[OBJC_IVAR____TtC7ChatKit20CKCloudTipDescriptor_iCloudBackupEnabledSystemWide] = 1;
    v15 = &v14[OBJC_IVAR____TtC7ChatKit20CKCloudTipDescriptor_availableStorageInCloud];
    *v15 = v10;
    v15[8] = 0;
    v16 = &v14[OBJC_IVAR____TtC7ChatKit20CKCloudTipDescriptor_usedStorageInCloud];
    *v16 = receiver;
    v16[8] = 0;
    v17 = &v14[OBJC_IVAR____TtC7ChatKit20CKCloudTipDescriptor_totalStorageInCloud];
    *v17 = super_class;
    v17[8] = 0;
    v18 = &v14[OBJC_IVAR____TtC7ChatKit20CKCloudTipDescriptor_currentStorageOnDevice];
    *v18 = v11;
    v18[8] = 0;
    v0[5].receiver = v14;
    v0[5].super_class = v13;
    v19 = objc_msgSendSuper2(v0 + 5, sel_init);
    v20 = *&v12[OBJC_IVAR____TtC7ChatKit19CKCloudTipViewModel_currentTipDescriptor];
    *&v12[OBJC_IVAR____TtC7ChatKit19CKCloudTipViewModel_currentTipDescriptor] = v19;
    v21 = v19;

    v22 = &v12[OBJC_IVAR____TtC7ChatKit19CKCloudTipViewModel_onCloudTipChanged];
LABEL_15:
    swift_beginAccess();
    v40 = *v22;
    if (*v22)
    {
      sub_190D50920();
      v40(v21);

      sub_19022123C(v40);
    }

    else
    {
    }

    goto LABEL_23;
  }

  if (v0[7].receiver < v0[7].super_class)
  {
    if (qword_1EAD461E0 != -1)
    {
      swift_once();
    }

    v23 = sub_190D53040();
    __swift_project_value_buffer(v23, qword_1EAD461E8);
    v24 = sub_190D53020();
    v25 = sub_190D57680();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      MEMORY[0x193AF7A40](v26, -1, -1);
    }

    v28 = v0[8].receiver;
    v27 = v0[8].super_class;
    v30 = v0[7].receiver;
    v29 = v0[7].super_class;
    v31 = v0[6].receiver;

    v32 = type metadata accessor for CKCloudTipDescriptor();
    v33 = objc_allocWithZone(v32);
    *&v33[OBJC_IVAR____TtC7ChatKit20CKCloudTipDescriptor_tipType] = 1;
    v33[OBJC_IVAR____TtC7ChatKit20CKCloudTipDescriptor_iCloudBackupEnabledSystemWide] = 0;
    v34 = &v33[OBJC_IVAR____TtC7ChatKit20CKCloudTipDescriptor_availableStorageInCloud];
    *v34 = v29;
    v34[8] = 0;
    v35 = &v33[OBJC_IVAR____TtC7ChatKit20CKCloudTipDescriptor_usedStorageInCloud];
    *v35 = v28;
    v35[8] = 0;
    v36 = &v33[OBJC_IVAR____TtC7ChatKit20CKCloudTipDescriptor_totalStorageInCloud];
    *v36 = v27;
    v36[8] = 0;
    v37 = &v33[OBJC_IVAR____TtC7ChatKit20CKCloudTipDescriptor_currentStorageOnDevice];
    *v37 = v30;
    v37[8] = 0;
    v0[4].receiver = v33;
    v0[4].super_class = v32;
    v38 = objc_msgSendSuper2(v0 + 4, sel_init);
    v39 = *&v31[OBJC_IVAR____TtC7ChatKit19CKCloudTipViewModel_currentTipDescriptor];
    *&v31[OBJC_IVAR____TtC7ChatKit19CKCloudTipViewModel_currentTipDescriptor] = v38;
    v21 = v38;

    v22 = &v31[OBJC_IVAR____TtC7ChatKit19CKCloudTipViewModel_onCloudTipChanged];
    goto LABEL_15;
  }

  if (qword_1EAD461E0 != -1)
  {
    swift_once();
  }

  v41 = sub_190D53040();
  __swift_project_value_buffer(v41, qword_1EAD461E8);
  v42 = sub_190D53020();
  v43 = sub_190D57680();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_19020E000, v42, v43, "Not enough storage to sync. Did not meet criteria for onboarding.", v44, 2u);
    MEMORY[0x193AF7A40](v44, -1, -1);
  }

LABEL_23:
  v45 = v0->super_class;

  return v45();
}

id _s7ChatKit19CKCloudTipViewModelC25openMessagesCloudSettingsyyFZ_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  v1 = MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v11 - v4;
  sub_190D515E0();
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v7 = result;
    sub_190844DA8(v5, v3);
    v8 = sub_190D515F0();
    v9 = *(v8 - 8);
    v10 = 0;
    if ((*(v9 + 48))(v3, 1, v8) != 1)
    {
      v10 = sub_190D51570();
      (*(v9 + 8))(v3, v8);
    }

    [v7 openSensitiveURL:v10 withOptions:0];

    return sub_19084CF50(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_19084CC04()
{
  result = qword_1EAD54518;
  if (!qword_1EAD54518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54518);
  }

  return result;
}

uint64_t dispatch thunk of CKCloudTipViewModel.configureCloudTipManager()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xB0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_190221DA4;

  return v5();
}

uint64_t sub_19084CEEC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_19084CF50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_19084D038()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E695D120]) init];
  [v1 setAllowsCancel_];
  [v1 setAutocloses_];
  [v1 setMode_];
  v7 = [objc_opt_self() predicateWithValue_];
  [v1 setPredicateForSelectionOfContact_];
  [v1 setAllowsNamePicking_];
  [v1 setDelegate_];
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
  v3 = *(v0 + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_currentlyPresentedContactSelectionNavigationController);
  *(v0 + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_currentlyPresentedContactSelectionNavigationController) = v2;
  v4 = v2;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    [Strong presentViewController:v4 animated:1 completion:0];
  }
}

Swift::Void __swiftcall DetailsViewCoordinator.contactPickerDidCancel(_:)(CNContactPickerViewController *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_currentlySelectedContact);
  *(v1 + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_currentlySelectedContact) = 0;

  v4 = *(v1 + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_currentlyPresentedContactSelectionNavigationController);
  *(v1 + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_currentlyPresentedContactSelectionNavigationController) = 0;

  [(CNContactPickerViewController *)a1 dismissViewControllerAnimated:1 completion:0];
}

Swift::Void __swiftcall DetailsViewCoordinator.contactViewController(_:didCompleteWith:)(CNContactViewController *_, CNContact_optional didCompleteWith)
{
  v4 = *(v2 + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_currentlySelectedContact);
  *(v2 + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_currentlySelectedContact) = 0;

  v5 = *(v2 + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_currentlyPresentedContactSelectionNavigationController);
  *(v2 + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_currentlyPresentedContactSelectionNavigationController) = 0;

  [(CNContactViewController *)_ dismissViewControllerAnimated:1 completion:0];
}

id sub_19084D464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_19021834C(a1, v26);
  sub_19084E158();
  if ((swift_dynamicCast() & 1) == 0)
  {
    if (qword_1EAD51C70 != -1)
    {
      swift_once();
    }

    v9 = sub_190D53040();
    __swift_project_value_buffer(v9, qword_1EAD9DFD0);
    v3 = sub_190D53020();
    v10 = sub_190D576A0();
    if (os_log_type_enabled(v3, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_19020E000, v3, v10, "Could not find a CKEntity for the given recipient", v11, 2u);
      MEMORY[0x193AF7A40](v11, -1, -1);
    }

    goto LABEL_17;
  }

  v3 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53E20);
  v4 = sub_190D57160();
  v5 = [v3 cnContactWithKeys:v4];

  if (!v5)
  {
    v12 = a2;
    if (qword_1EAD51C70 != -1)
    {
      swift_once();
    }

    v13 = sub_190D53040();
    __swift_project_value_buffer(v13, qword_1EAD9DFD0);
    v14 = v3;
    v3 = sub_190D53020();
    v15 = sub_190D576A0();

    if (os_log_type_enabled(v3, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      *(v16 + 4) = v14;
      *v17 = v14;
      v18 = v14;
      _os_log_impl(&dword_19020E000, v3, v15, "Could not create a CNContact from the CKEntity: %@", v16, 0xCu);
      sub_19022EEA4(v17, &unk_1EAD54610);
      MEMORY[0x193AF7A40](v17, -1, -1);
      MEMORY[0x193AF7A40](v16, -1, -1);
      v14 = v3;
      v3 = v18;
    }

    a2 = v12;

LABEL_17:
    v19 = 1;
LABEL_21:

    v25 = sub_190D52930();
    return (*(*(v25 - 8) + 56))(a2, v19, 1, v25);
  }

  if (!-[NSObject isContact](v3, sel_isContact) || [v5 isCoreRecentsAccepted])
  {
    v6 = [v3 namePrefixedWithMaybe];
    if (v6)
    {

      v7 = [v3 namePrefixedWithMaybe];
      if (v7)
      {
        v8 = v7;
        sub_190D56F10();
      }
    }
  }

  result = [v3 defaultIMHandle];
  if (result)
  {
    v21 = result;
    v22 = [result ID];

    sub_190D56F10();
    result = [v3 defaultIMHandle];
    if (result)
    {
      v23 = result;
      v24 = [result displayID];

      sub_190D56F10();
      [v3 isBlocked];
      sub_190D52900();
      v19 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_19084D8D8(uint64_t a1)
{
  v2 = sub_190D526C0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_190D52930();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - v11;
  sub_190D52750();
  if ((*(v3 + 88))(v5, v2) != *MEMORY[0x1E6995738])
  {
    (*(v3 + 8))(v5, v2);
LABEL_7:
    v14 = 0;
    return v14 & 1;
  }

  (*(v3 + 96))(v5, v2);
  (*(v7 + 32))(v12, v5, v6);
  if (*(a1 + 16) != 1)
  {
    (*(v7 + 8))(v12, v6);
    goto LABEL_7;
  }

  (*(v7 + 16))(v9, a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);
  if (sub_190D528F0())
  {
    LOBYTE(v13) = 0;
  }

  else
  {
    v13 = sub_190D528E0() ^ 1;
  }

  if (sub_190D528F0())
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_190D528E0();
  }

  v16 = *(v7 + 8);
  v16(v9, v6);
  v16(v12, v6);
  v14 = v13 & v15;
  return v14 & 1;
}

void sub_19084DB94(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_currentlySelectedContact);
  if (v2)
  {
    v4 = objc_opt_self();
    v9 = v2;
    v5 = [v4 viewControllerForUpdatingContact:a1 withPropertiesFromContact:?];
    if (v5)
    {
      v6 = v5;
      [v5 setDelegate_];
      v7 = *(v1 + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_currentlyPresentedContactSelectionNavigationController);
      if (v7)
      {
        v8 = v7;
        [v8 pushViewController:v6 animated:1];
      }
    }
  }
}

void *_s7ChatKit22DetailsViewCoordinatorC013communicationC8Contacts3forSay013CommunicationC00iC7ContactVGSo14CKConversationC_tFZ_0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD54600);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v38 - v3;
  v5 = sub_190D52930();
  v43 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v38 - v8;
  v9 = sub_190D50DF0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD55F0;
  *(inited + 32) = [objc_opt_self() descriptorForRequiredKeys];
  v46[0] = v9;
  sub_190CAA03C(inited);
  v11 = v46[0];
  if (qword_1EAD51C70 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v12 = sub_190D53040();
    __swift_project_value_buffer(v12, qword_1EAD9DFD0);
    v13 = a1;
    v14 = sub_190D53020();
    v15 = sub_190D576C0();
    v16 = os_log_type_enabled(v14, v15);
    v42 = v5;
    if (v16)
    {
      v17 = swift_slowAlloc();
      v44 = v4;
      v18 = v11;
      v19 = v17;
      *v17 = 134217984;
      v20 = [v13 recipients];
      v21 = v13;
      v22 = sub_190D57180();

      v23 = *(v22 + 16);
      v13 = v21;

      *(v19 + 1) = v23;
      v5 = v42;

      _os_log_impl(&dword_19020E000, v14, v15, "Gathering communication detail contacts from conversation with %ld recipients", v19, 0xCu);
      v24 = v19;
      v11 = v18;
      v4 = v44;
      MEMORY[0x193AF7A40](v24, -1, -1);
    }

    else
    {

      v14 = v13;
    }

    v25 = [v13 recipients];
    v26 = sub_190D57180();

    v44 = *(v26 + 16);
    if (!v44)
    {
      break;
    }

    v27 = 0;
    a1 = 0;
    v28 = v26 + 32;
    v29 = (v43 + 48);
    v30 = (v43 + 32);
    v31 = MEMORY[0x1E69E7CC0];
    v39 = v26;
    v40 = v11;
    while (v27 < *(v26 + 16))
    {
      sub_19021834C(v28, v46);
      sub_19084D464(v46, v4);
      __swift_destroy_boxed_opaque_existential_0(v46);
      if ((*v29)(v4, 1, v5) == 1)
      {
        sub_19022EEA4(v4, &unk_1EAD54600);
      }

      else
      {
        v32 = *v30;
        v33 = v41;
        (*v30)(v41, v4, v5);
        v32(v45, v33, v5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_190835D2C(0, v31[2] + 1, 1, v31);
        }

        v35 = v31[2];
        v34 = v31[3];
        if (v35 >= v34 >> 1)
        {
          v31 = sub_190835D2C(v34 > 1, v35 + 1, 1, v31);
        }

        v31[2] = v35 + 1;
        v36 = v31 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v35;
        v5 = v42;
        v32(v36, v45, v42);
        v26 = v39;
        v11 = v40;
      }

      ++v27;
      v28 += 32;
      if (v44 == v27)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    swift_once();
  }

  v31 = MEMORY[0x1E69E7CC0];
LABEL_17:

  return v31;
}

unint64_t sub_19084E158()
{
  result = qword_1EAD44E80;
  if (!qword_1EAD44E80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD44E80);
  }

  return result;
}

id sub_19084E244()
{
  v1 = OBJC_IVAR___CKSendMenuCollectionViewLayout____lazy_storage___dynamicAnimator;
  v2 = *(v0 + OBJC_IVAR___CKSendMenuCollectionViewLayout____lazy_storage___dynamicAnimator);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___CKSendMenuCollectionViewLayout____lazy_storage___dynamicAnimator);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DC9C8]) initWithCollectionViewLayout_];
    [v4 _setAnimatorIntegralization_];
    [v4 setSettlingLinearVelocityThreshold_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_19084E2E8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    __break(1u);
  }

  else
  {
    v5 = a4;
    v4 = a3;
    v6 = a2;
    if (qword_1EAD456D8 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  swift_beginAccess();
  v7 = qword_1EAD456E0;
  [objc_msgSend(v6 container)];
  v9 = v8;
  v11 = v10;
  swift_unknownObjectRelease();
  v12 = v7;
  LODWORD(v13) = 1148846080;
  LODWORD(v14) = 1112014848;
  [v12 systemLayoutSizeFittingSize:v9 withHorizontalFittingPriority:1.79769313e308 verticalFittingPriority:{v13, v14}];
  v16 = v15;
  v17 = objc_opt_self();
  v18 = [v17 absoluteDimension_];
  v19 = [v17 fractionalWidthDimension_];
  v63 = v18;
  v20 = [objc_opt_self() sizeWithWidthDimension:v19 heightDimension:v18];
  v21 = [objc_opt_self() itemWithLayoutSize_];
  v22 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_190DD55F0;
  *(v23 + 32) = v21;
  sub_1902188FC(0, &qword_1EAD44FB8);
  v61 = v21;
  v24 = sub_190D57160();

  v25 = [v22 verticalGroupWithLayoutSize:v20 subitems:v24];

  v26 = [objc_opt_self() sectionWithGroup_];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v27 = *(v4 + 24);
    ObjectType = swift_getObjectType();
    v29 = (*(v27 + 16))(ObjectType, v27);
    v31 = v30;
    v33 = v32;
    v35 = v34;
    swift_unknownObjectRelease();
  }

  else
  {
    v35 = 0.0;
    v31 = 0.0;
    v33 = 0.0;
    v29 = 0.0;
  }

  v36 = [v12 _shouldReverseLayoutDirection];

  if (v36)
  {
    v37 = v31;
  }

  else
  {
    v37 = v35;
  }

  if (!v36)
  {
    v35 = v31;
  }

  [v5 sendMenuCollectionViewBottomContentInset];
  v39 = v38;
  [v5 sendMenuCollectionViewBottomContentInset];
  v41 = v40;
  v42 = sub_190850C40(0);
  result = [v5 sendMenuPreferredNumberOfItemsToDisplayOnOpen];
  v45 = ceil(v44);
  if ((*&v45 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (v45 <= -9.22337204e18)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v45 >= 9.22337204e18)
  {
LABEL_33:
    __break(1u);
    return result;
  }

  v46 = v11 - v29 - v33 - v39 - v41;
  v47 = v41 + v33 + v46 - v16 * v44;
  if (v42 < v45)
  {
    v48 = v46 - v16 * v42;
  }

  else
  {
    v48 = v47;
  }

  v49 = [objc_opt_self() sharedFeatureFlags];
  v50 = [v49 isPopoverSendMenuEnabled];

  if (v48 <= 0.0)
  {
    v51 = 1;
  }

  else
  {
    v51 = v50;
  }

  v52 = 0.0;
  if (!v51)
  {
    v52 = v48;
  }

  v53 = v29 + v39 + v52;
  v54 = v33 + v41;
  [v26 setContentInsets_];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v55 = v16 + v54;
    v56 = v16 + v53;
    v57 = *(v4 + 24);
    v58 = swift_getObjectType();
    v59.n128_f64[0] = -v56;
    v60.n128_u64[0] = 0xC049000000000000;
    if (v56 <= 50.0)
    {
      v59.n128_f64[0] = -50.0;
    }

    if (v55 > 50.0)
    {
      v60.n128_f64[0] = -v55;
    }

    (*(v57 + 32))(v58, v57, v59, 0.0, v60, 0.0);
    swift_unknownObjectRelease();
  }

  return v26;
}

void sub_19084E924(uint64_t a1)
{
  v3 = [objc_opt_self() sharedFeatureFlags];
  v4 = [v3 isPopoverSendMenuEnabled];

  if ((v4 & 1) == 0)
  {
    v5 = v1 + OBJC_IVAR___CKSendMenuCollectionViewLayout_sendMenuLayoutDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v5 + 8);
      ObjectType = swift_getObjectType();
      if ((*(v6 + 56))(ObjectType, v6))
      {
        v8 = [objc_opt_self() sharedBehaviors];
        if (!v8)
        {
LABEL_14:
          __break(1u);
          return;
        }

        v9 = v8;
        [v8 sendMenuPreferredNumberOfItemsToDisplayOnOpen];
        v11 = v10;
        sub_190D51BE0();
        swift_unknownObjectRelease();

        v12 = ceil(v11);
        if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else if (v12 > -9.22337204e18)
        {
          if (v12 < 9.22337204e18)
          {
            return;
          }

          goto LABEL_13;
        }

        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      v13 = (*(v6 + 64))(ObjectType, v6);
      sub_190A4FAA0(a1, v13);

      swift_unknownObjectRelease();
    }
  }
}

id sub_19084EC3C(void *a1)
{
  v2 = sub_190851C40(a1);
  v4 = v3;
  if (qword_1EAD456D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = qword_1EAD456E0;
  [a1 size];
  v7 = v6;
  v9 = v8;
  v10 = v5;
  [v10 setFrame_];
  [v10 layoutIfNeeded];
  [*&v10[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageView] frame];
  v11 = v7 * 0.5 - CGRectGetMidX(v26);
  v12 = [v10 _shouldReverseLayoutDirection];

  v13 = -v11;
  if (v12)
  {
    v13 = v11;
  }

  CGAffineTransformMakeTranslation(&t1, v13 * 0.5, 0.0);
  tx = t1.tx;
  ty = t1.ty;
  v19 = *&t1.c;
  v21 = *&t1.a;
  CGAffineTransformMakeScale(&t1, 0.5, 0.5);
  *&t2.a = v21;
  *&t2.c = v19;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v23, &t1, &t2);
  v16 = v23.tx;
  v17 = v23.ty;
  v20 = *&v23.c;
  v22 = *&v23.a;

  [a1 setAlpha_];
  *&t1.a = v22;
  *&t1.c = v20;
  t1.tx = v16;
  t1.ty = v17;
  [a1 setTransform_];
  return [a1 setCenter_];
}

id (*sub_19084EE30(void *a1, void *a2, uint64_t a3))(uint64_t (*a1)(void), uint64_t a2)
{
  v7 = [objc_opt_self() sharedFeatureFlags];
  v8 = [v7 isPopoverSendMenuEnabled];

  if (v8)
  {
    v18.receiver = v3;
    v18.super_class = type metadata accessor for SendMenuCollectionViewLayout();
    v9 = objc_msgSendSuper2(&v18, sel__animationForReusableView_toLayoutAttributes_type_, a1, a2, a3);
    _Block_release(v9);
  }

  else if (a2)
  {
    v10 = &v3[OBJC_IVAR___CKSendMenuCollectionViewLayout_sendMenuLayoutDelegate];
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v12 = result;
    v13 = *(v10 + 1);
    v14 = a2;
    if (!UIAccessibilityIsReduceMotionEnabled())
    {
      v15 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v16 = swift_allocObject();
      v16[2] = v15;
      v16[3] = v12;
      v16[4] = v13;
      v16[5] = a1;
      v16[6] = v14;
      v17 = a1;
      return sub_190851E6C;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

id sub_19084EF90(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v63 = a2;
  v11 = sub_190D56770();
  v62 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v60 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_190D567A0();
  v59 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    result = [objc_opt_self() sharedBehaviors];
    if (result)
    {
      v16 = result;
      v58 = dispatch_group_create();
      ObjectType = swift_getObjectType();
      v18 = &selRef_shouldShowFacetimeButtonInNavbarCanvasViewController_;
      v55 = (*(a5 + 48))(ObjectType, a5);
      v56 = a1;
      v57 = v16;
      if (v55)
      {
        result = [v16 sendMenuAppearanceYPositionAnimator];
        if (!result)
        {
LABEL_14:
          __break(1u);
          goto LABEL_15;
        }

        v19 = result;
        v54 = v11;
        v20 = swift_allocObject();
        *(v20 + 16) = a6;
        *(v20 + 24) = a7;
        v69 = sub_190851F04;
        v70 = v20;
        aBlock = MEMORY[0x1E69E9820];
        v66 = 1107296256;
        v67 = sub_190840E6C;
        v68 = &block_descriptor_67;
        v21 = _Block_copy(&aBlock);
        v52 = a6;
        v53 = a7;
        v51 = a7;

        [v19 addAnimations_];
        _Block_release(v21);
        v22 = v58;
        dispatch_group_enter(v58);
        v23 = swift_allocObject();
        *(v23 + 16) = v22;
        v69 = sub_190851F0C;
        v70 = v23;
        aBlock = MEMORY[0x1E69E9820];
        v66 = 1107296256;
        v67 = sub_190893958;
        v68 = &block_descriptor_73;
        v24 = _Block_copy(&aBlock);
        v25 = v22;

        [v19 addCompletion_];
        _Block_release(v24);
        [v19 startAnimation];
        result = [v16 sendMenuAppearanceXPositionAnimator];
        if (!result)
        {
LABEL_15:
          __break(1u);
          return result;
        }

        v26 = result;
        v27 = swift_allocObject();
        v28 = v51;
        *(v27 + 16) = a6;
        *(v27 + 24) = v28;
        v69 = sub_190851F14;
        v70 = v27;
        aBlock = MEMORY[0x1E69E9820];
        v66 = 1107296256;
        v67 = sub_190840E6C;
        v68 = &block_descriptor_79;
        v29 = _Block_copy(&aBlock);
        v30 = v28;
        v31 = v52;

        [v26 addAnimations_];
        _Block_release(v29);
        dispatch_group_enter(v25);
        v32 = swift_allocObject();
        *(v32 + 16) = v25;
        v69 = sub_190851F54;
        v70 = v32;
        aBlock = MEMORY[0x1E69E9820];
        v66 = 1107296256;
        v67 = sub_190893958;
        v68 = &block_descriptor_85;
        v33 = _Block_copy(&aBlock);
        v34 = v25;

        [v26 addCompletion_];
        _Block_release(v33);
        v18 = &selRef_shouldShowFacetimeButtonInNavbarCanvasViewController_;
        [v26 startAnimation];

        v11 = v54;
        v16 = v57;
        a7 = v53;
      }

      v54 = v14;
      result = [v16 sendMenuAppearanceCollectionViewUpdateAnimator];
      if (result)
      {
        v35 = result;
        v36 = swift_allocObject();
        *(v36 + 16) = (v55 & 1) == 0;
        *(v36 + 24) = a6;
        *(v36 + 32) = a7;
        v69 = sub_190851E7C;
        v70 = v36;
        aBlock = MEMORY[0x1E69E9820];
        v66 = 1107296256;
        v67 = sub_190840E6C;
        v68 = &block_descriptor_49;
        v37 = _Block_copy(&aBlock);
        v38 = a6;
        v39 = a7;

        [v35 addAnimations_];
        _Block_release(v37);
        v40 = v58;
        dispatch_group_enter(v58);
        v41 = swift_allocObject();
        *(v41 + 16) = v40;
        v69 = sub_190851F54;
        v70 = v41;
        aBlock = MEMORY[0x1E69E9820];
        v66 = 1107296256;
        v67 = sub_190893958;
        v68 = &block_descriptor_55;
        v42 = _Block_copy(&aBlock);
        v43 = v40;

        [v35 addCompletion_];
        _Block_release(v42);
        [v35 v18[495]];
        sub_1902188FC(0, &qword_1EAD46670);
        v44 = sub_190D57870();
        v45 = swift_allocObject();
        v46 = v56;
        v47 = v63;
        *(v45 + 16) = v56;
        *(v45 + 24) = v47;
        v69 = sub_190851E88;
        v70 = v45;
        aBlock = MEMORY[0x1E69E9820];
        v66 = 1107296256;
        v67 = sub_190840E6C;
        v68 = &block_descriptor_61;
        v48 = _Block_copy(&aBlock);
        sub_19029063C(v46);
        v49 = v54;
        sub_190D56790();
        v64 = MEMORY[0x1E69E7CC0];
        sub_190851EBC(&qword_1EAD46770, MEMORY[0x1E69E7F60]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD546A0);
        sub_190840E08();
        v50 = v60;
        sub_190D58170();
        sub_190D57830();
        _Block_release(v48);

        (*(v62 + 8))(v50, v11);
        (*(v59 + 8))(v49, v61);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_14;
  }

  if (a1)
  {
    return a1(0);
  }

  return result;
}

id sub_19084F82C(id result, id a2)
{
  if (result)
  {
    v2 = result;
    [a2 center];
    [v2 center];

    return [v2 setCenter_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_19084F8A0(id result, id a2)
{
  if (result)
  {
    v2 = result;
    [a2 center];
    v4 = v3;
    [v2 center];

    return [v2 setCenter_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_19084F914(uint64_t result, void *a2, id a3)
{
  if (result)
  {
    if (a2)
    {
      [a3 center];
      [a2 setCenter_];
LABEL_5:
      [a2 bounds];
      v6 = v5;
      v8 = v7;
      [a3 size];
      [a2 setBounds_];
      [a3 alpha];
      [a2 setAlpha_];
      v11 = [a2 layer];
      [a3 transform3D];
      [v11 setTransform_];

      return [a2 applyLayoutAttributes_];
    }

    __break(1u);
  }

  else if (a2)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_19084FB40(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  if (v3)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    v3 = sub_190851E64;
  }

  else
  {
    v4 = 0;
  }

  sub_190D50920();
  v2(v3, v4);
  sub_19022123C(v3);
}

void sub_19084FBE8()
{
  v1 = v0;
  v28 = sub_190D51C00();
  v2 = *(v28 - 8);
  v3 = MEMORY[0x1EEE9AC00](v28);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0xE8))(v3))
  {
    [v0 collectionViewContentSize];
    v7 = v6;
    v9 = v8;
    v10 = type metadata accessor for SendMenuCollectionViewLayout();
    v29.receiver = v0;
    v29.super_class = v10;
    v11 = objc_msgSendSuper2(&v29, sel_layoutAttributesForElementsInRect_, 0.0, 0.0, v7, v9);
    if (v11)
    {
      v12 = v11;
      sub_1902188FC(0, &qword_1EAD44F20);
      v13 = sub_190D57180();

      if (v13 >> 62)
      {
        v14 = sub_190D581C0();
        if (v14)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v14)
        {
LABEL_5:
          if (v14 < 1)
          {
            __break(1u);
            return;
          }

          v15 = 0;
          v26 = OBJC_IVAR___CKSendMenuCollectionViewLayout____lazy_storage___dynamicAnimator;
          v27 = v13 & 0xC000000000000001;
          v16 = (v2 + 8);
          do
          {
            if (v27)
            {
              v17 = MEMORY[0x193AF3B90](v15, v13);
            }

            else
            {
              v17 = *(v13 + 8 * v15 + 32);
            }

            v18 = v17;
            v19 = [v17 indexPath];
            sub_190D51BC0();

            v20 = sub_19084E244();
            v21 = sub_190D51BB0();
            v22 = [v20 layoutAttributesForCellAtIndexPath_];

            if (!v22)
            {
              v22 = v18;
              [v22 center];
              v18 = [objc_allocWithZone(MEMORY[0x1E69DC6C8]) initWithItem:v22 attachedToAnchor:{v23, v24}];

              [v18 setLength_];
              [v18 setFrequency_];
              [v18 setDamping_];
              [*(v1 + v26) addBehavior_];
            }

            ++v15;

            (*v16)(v5, v28);
          }

          while (v14 != v15);
        }
      }
    }
  }
}

void sub_19084FF34()
{
  v1 = v0;
  v2 = [objc_opt_self() sharedFeatureFlags];
  v3 = [v2 isPopoverSendMenuEnabled];

  if (v3)
  {
    return;
  }

  v4 = v1 + OBJC_IVAR___CKSendMenuCollectionViewLayout_sendMenuLayoutDelegate;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return;
  }

  v5 = *(v4 + 8);
  ObjectType = swift_getObjectType();
  if ((*(v5 + 48))(ObjectType, v5))
  {

    swift_unknownObjectRelease();
    return;
  }

  (*(v5 + 16))(ObjectType, v5);
  v8 = v7;
  v34 = v1;
  v9 = sub_19084E244();
  v10 = [v9 behaviors];

  sub_1902188FC(0, &qword_1EAD45050);
  v11 = sub_190D57180();

  v35 = MEMORY[0x1E69E7CC0];
  v12 = v11 & 0xFFFFFFFFFFFFFF8;
  if (v11 >> 62)
  {
    goto LABEL_52;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_190D581C0())
  {
    v14 = MEMORY[0x1E69E7CC0];
    if (i)
    {
      v15 = 0;
      v16 = MEMORY[0x1E69E7CC0];
      do
      {
        v17 = v15;
        while (1)
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            v18 = MEMORY[0x193AF3B90](v17, v11);
          }

          else
          {
            if (v17 >= *(v12 + 16))
            {
              goto LABEL_49;
            }

            v18 = *(v11 + 8 * v17 + 32);
          }

          v19 = v18;
          v15 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            __break(1u);
LABEL_49:
            __break(1u);
            goto LABEL_50;
          }

          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            break;
          }

          ++v17;
          if (v15 == i)
          {
            goto LABEL_26;
          }
        }

        MEMORY[0x193AF29E0]();
        if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_190D571A0();
        }

        sub_190D571E0();
        v16 = v35;
      }

      while (v15 != i);
    }

    else
    {
      v16 = MEMORY[0x1E69E7CC0];
    }

LABEL_26:

    v35 = v14;
    v12 = v16 & 0xFFFFFFFFFFFFFF8;
    if (v16 >> 62)
    {
      break;
    }

    v11 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      goto LABEL_54;
    }

LABEL_28:
    v20 = 0;
    v21 = MEMORY[0x1E69E7CC0];
LABEL_29:
    v22 = v20;
    while (1)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x193AF3B90](v22, v16);
      }

      else
      {
        if (v22 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_51;
        }

        v23 = *(v16 + 8 * v22 + 32);
      }

      v24 = v23;
      v20 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      v25 = [v23 items];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62250);
      v26 = sub_190D57180();

      if (v26 >> 62)
      {
        if (sub_190D581C0())
        {
LABEL_40:
          if ((v26 & 0xC000000000000001) != 0)
          {
            MEMORY[0x193AF3B90](0, v26);
          }

          else
          {
            if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_71;
            }

            swift_unknownObjectRetain();
          }

          MEMORY[0x193AF29E0]();
          if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_190D571A0();
          }

          sub_190D571E0();
          v21 = v35;
          if (v20 != v11)
          {
            goto LABEL_29;
          }

          goto LABEL_55;
        }
      }

      else if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_40;
      }

      ++v22;
      if (v20 == v11)
      {
        goto LABEL_55;
      }
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    ;
  }

  v11 = sub_190D581C0();
  if (v11)
  {
    goto LABEL_28;
  }

LABEL_54:
  v21 = MEMORY[0x1E69E7CC0];
LABEL_55:

  if (v21 >> 62)
  {
    v27 = sub_190D581C0();
    if (!v27)
    {
      goto LABEL_65;
    }

LABEL_57:
    if (v27 >= 1)
    {
      v28 = 0;
      v29 = OBJC_IVAR___CKSendMenuCollectionViewLayout____lazy_storage___dynamicAnimator;
      do
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v30 = MEMORY[0x193AF3B90](v28, v21);
        }

        else
        {
          v30 = *(v21 + 8 * v28 + 32);
          swift_unknownObjectRetain();
        }

        [v30 bounds];
        v31 = v8 + CGRectGetMidX(v37);
        [v30 center];
        if (vabdd_f64(v31, v32) > 0.01)
        {
          [v30 setCenter_];
          v33 = *(v34 + v29);
          [v33 updateItemUsingCurrentState_];
        }

        ++v28;
        swift_unknownObjectRelease();
      }

      while (v27 != v28);
      goto LABEL_65;
    }

    __break(1u);
LABEL_71:
    __break(1u);
  }

  else
  {
    v27 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v27)
    {
      goto LABEL_57;
    }

LABEL_65:
    swift_unknownObjectRelease();
  }
}

BOOL sub_190850574()
{
  v0 = [objc_opt_self() sharedFeatureFlags];
  v1 = [v0 isPopoverSendMenuEnabled];

  return (v1 & 1) == 0 && !UIAccessibilityIsReduceMotionEnabled();
}

id sub_190850794(double a1, double a2, double a3, double a4)
{
  if (((*((*MEMORY[0x1E69E7D40] & *v4) + 0xE8))() & 1) == 0)
  {
    v18.receiver = v4;
    v18.super_class = type metadata accessor for SendMenuCollectionViewLayout();
    result = objc_msgSendSuper2(&v18, sel_layoutAttributesForElementsInRect_, a1, a2, a3, a4);
    if (!result)
    {
      return result;
    }

    v14 = result;
    sub_1902188FC(0, &qword_1EAD44F20);
    v15 = sub_190D57180();

    return v15;
  }

  v9 = sub_19084E244();
  v10 = [v9 itemsInRect_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62250);
  v11 = sub_190D57180();

  if (v11 >> 62)
  {
    sub_1902188FC(0, &qword_1EAD44F20);
    sub_190D52690();
    v15 = sub_190D58530();
    swift_bridgeObjectRelease_n();
    return v15;
  }

  v12 = v11 & 0xFFFFFFFFFFFFFF8;
  sub_190D52690();
  sub_190D58770();
  sub_1902188FC(0, &qword_1EAD44F20);
  if (swift_dynamicCastMetatype() || (v16 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
  {
LABEL_4:

    return v11;
  }

  else
  {
    v17 = v12 + 32;
    while (1)
    {
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        break;
      }

      v17 += 8;
      if (!--v16)
      {
        goto LABEL_4;
      }
    }

    return (v12 | 1);
  }
}

id sub_190850C40(uint64_t a1)
{
  v2 = [swift_dynamicCastObjCProtocolUnconditional() _dataSourceSnapshot];
  if (!v2)
  {
    return 0;
  }

  v3 = [v2 numberOfItemsInSection_];
  swift_unknownObjectRelease();
  return v3;
}

void sub_190850CD4(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = v4 + OBJC_IVAR___CKSendMenuCollectionViewLayout_sendMenuLayoutDelegate;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return;
  }

  v11 = *(v10 + 1);
  if ((*((*MEMORY[0x1E69E7D40] & *v5) + 0xE8))() & 1) == 0 || (ObjectType = swift_getObjectType(), ((*(v11 + 48))(ObjectType, v11)) || (v13 = [v5 collectionView]) == 0)
  {

    swift_unknownObjectRelease();
    return;
  }

  v14 = v13;
  v15 = [v14 panGestureRecognizer];
  v16 = v14;
  [v16 bounds];
  v18 = v17;
  if ([v15 state] == 1 || objc_msgSend(v15, sel_state) == 2 || objc_msgSend(v15, sel_state) == 3)
  {

    [v15 locationInView_];
    v20 = v19;
    v21 = (v5 + OBJC_IVAR___CKSendMenuCollectionViewLayout_lastPanGestureRecognizerPositionInCollectionViewCoordinates);
    *v21 = v22;
    v21[1] = v19;
  }

  else if ([v16 isDecelerating])
  {

    v20 = *(v5 + OBJC_IVAR___CKSendMenuCollectionViewLayout_lastPanGestureRecognizerPositionInCollectionViewCoordinates + 8);
  }

  else if (v18 >= a2)
  {
    [v16 contentSize];
    v20 = v43;

    v51.origin.x = a1;
    v51.origin.y = a2;
    v51.size.width = a3;
    v51.size.height = a4;
    CGRectGetMidX(v51);
  }

  else
  {

    v50.origin.x = a1;
    v50.origin.y = a2;
    v50.size.width = a3;
    v50.size.height = a4;
    CGRectGetMidX(v50);
    v20 = 0.0;
  }

  (*(v11 + 16))(ObjectType, v11);
  v24 = v23;
  v46 = sub_19084E244();
  v25 = [v46 behaviors];
  sub_1902188FC(0, &qword_1EAD45050);
  v26 = sub_190D57180();

  if (v26 >> 62)
  {
LABEL_41:
    v27 = sub_190D581C0();
    if (v27)
    {
      goto LABEL_11;
    }

LABEL_42:

LABEL_43:
    swift_unknownObjectRelease();

    return;
  }

  v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v27)
  {
    goto LABEL_42;
  }

LABEL_11:
  v44 = v15;
  v45 = v16;
  if (v27 >= 1)
  {
    v28 = 0;
    v29 = a2 - v18;
    v16 = (v26 & 0xC000000000000001);
    a2 = 0.8;
    while (1)
    {
      if (v16)
      {
        v30 = MEMORY[0x193AF3B90](v28, v26);
      }

      else
      {
        v30 = *(v26 + 8 * v28 + 32);
      }

      v31 = v30;
      objc_opt_self();
      v32 = swift_dynamicCastObjCClass();
      if (!v32)
      {
        goto LABEL_17;
      }

      v33 = v32;
      [v32 anchorPoint];
      v18 = v34;
      v15 = [v33 items];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62250);
      v35 = sub_190D57180();

      if (v35 >> 62)
      {
        if (!sub_190D581C0())
        {
LABEL_16:

          goto LABEL_17;
        }
      }

      else if (!*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      if ((v35 & 0xC000000000000001) != 0)
      {
        v36 = MEMORY[0x193AF3B90](0, v35);
      }

      else
      {
        if (!*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_41;
        }

        v36 = *(v35 + 32);
        swift_unknownObjectRetain();
      }

      v37 = vabdd_f64(v20, v18);

      [v36 center];
      v39 = v29 * (v37 / 1600.0) + v38;
      [v36 bounds];
      v40 = v24 + CGRectGetMidX(v48);
      [v45 bounds];
      Height = CGRectGetHeight(v49);
      v42 = v37 / (Height + Height);
      if (v42 > 1.0)
      {
        v42 = 1.0;
      }

      [v33 setFrequency_];
      [v33 setDamping_];
      [v36 setCenter_];
      [v46 updateItemUsingCurrentState_];
      swift_unknownObjectRelease();
LABEL_17:
      ++v28;

      if (v27 == v28)
      {

        goto LABEL_43;
      }
    }
  }

  __break(1u);
}

id sub_1908512F8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_190D51BB0();
  v14.receiver = v2;
  v14.super_class = type metadata accessor for SendMenuDismissingCollectionViewLayout();
  v5 = objc_msgSendSuper2(&v14, sel_layoutAttributesForItemAtIndexPath_, v4);

  if (v5)
  {
    v6 = &v2[OBJC_IVAR___CKSendMenuCollectionViewLayout_sendMenuLayoutDelegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v6 + 1);
      v8 = [objc_opt_self() sharedFeatureFlags];
      v9 = [v8 isPopoverSendMenuEnabled];

      if (!v9)
      {
        ObjectType = swift_getObjectType();
        v11 = (*(v7 + 64))(ObjectType, v7);
        v12 = sub_190A4FAA0(a1, v11);

        if (v12)
        {
          sub_19084EC3C(v5);
        }
      }

      swift_unknownObjectRelease();
    }

    else
    {

      return 0;
    }
  }

  return v5;
}

uint64_t sub_19085153C(double a1, double a2, double a3, double a4)
{
  v9 = sub_190D51C00();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SendMenuDismissingCollectionViewLayout();
  v42.receiver = v4;
  v42.super_class = v13;
  v14 = objc_msgSendSuper2(&v42, sel_layoutAttributesForElementsInRect_, a1, a2, a3, a4);
  if (!v14)
  {
    return 0;
  }

  v15 = v14;
  sub_1902188FC(0, &qword_1EAD44F20);
  v16 = sub_190D57180();

  v17 = &v4[OBJC_IVAR___CKSendMenuCollectionViewLayout_sendMenuLayoutDelegate];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    return 0;
  }

  v19 = Strong;
  v20 = v4;
  v21 = *(v17 + 1);
  v22 = [objc_opt_self() sharedFeatureFlags];
  v23 = [v22 isPopoverSendMenuEnabled];

  if (v23)
  {
    swift_unknownObjectRelease();
    return v16;
  }

  ObjectType = swift_getObjectType();
  v26 = (*(v21 + 64))(ObjectType, v21);
  if (!(v16 >> 62))
  {
    result = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_10;
    }

LABEL_23:
    swift_unknownObjectRelease();

    return v16;
  }

  result = sub_190D581C0();
  if (!result)
  {
    goto LABEL_23;
  }

LABEL_10:
  v35[1] = v19;
  v37 = v20;
  v38 = v16;
  if (result >= 1)
  {
    v27 = 0;
    v36 = v38 + 32;
    v39 = (v10 + 8);
    v40 = v38 & 0xC000000000000001;
    v41 = result;
    do
    {
      if (v40)
      {
        v28 = MEMORY[0x193AF3B90](v27, v38);
      }

      else
      {
        v28 = *(v36 + 8 * v27);
      }

      v29 = v28;
      ++v27;
      v30 = [v28 indexPath];
      sub_190D51BC0();

      v31 = 0;
      v32 = *(v26 + 16);
      do
      {
        if (v32 == v31)
        {
          (*v39)(v12, v9);

          goto LABEL_13;
        }

        v33 = v31 + 1;
        sub_190851EBC(&qword_1EAD462B8, MEMORY[0x1E6969C28]);
        v34 = sub_190D56E30();
        v31 = v33;
      }

      while ((v34 & 1) == 0);
      sub_19084EC3C(v29);

      (*v39)(v12, v9);
LABEL_13:
      ;
    }

    while (v27 != v41);
    swift_unknownObjectRelease();

    return v38;
  }

  __break(1u);
  return result;
}

id sub_1908518F4(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t (*a7)(double, double, double, double))
{
  v12 = a1;
  v13 = a7(a2, a3, a4, a5);

  if (v13)
  {
    sub_1902188FC(0, &qword_1EAD44F20);
    v14 = sub_190D57160();
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

id sub_190851BC4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

double sub_190851C40(void *a1)
{
  v3 = [objc_opt_self() sharedFeatureFlags];
  v4 = [v3 isPopoverSendMenuEnabled];

  v5 = 0.0;
  if ((v4 & 1) == 0)
  {
    v6 = v1 + OBJC_IVAR___CKSendMenuCollectionViewLayout_sendMenuLayoutDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v6 + 8);
      ObjectType = swift_getObjectType();
      v9 = (*(v7 + 8))(ObjectType, v7);
      v11 = v10;
      v13 = v12;
      v15 = v14;
      swift_unknownObjectRelease();
      v26.origin.x = v9;
      v26.origin.y = v11;
      v26.size.width = v13;
      v26.size.height = v15;
      CGRectGetMidY(v26);
      if (qword_1EAD456D8 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v16 = qword_1EAD456E0;
      [a1 size];
      v18 = v17;
      v20 = v19;
      v21 = v16;
      [v21 setFrame_];
      [v21 layoutIfNeeded];
      [*&v21[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageView] frame];
      v22 = v18 * 0.5 - CGRectGetMidX(v27);
      v28.origin.x = v9;
      v28.origin.y = v11;
      v28.size.width = v13;
      v28.size.height = v15;
      MidX = CGRectGetMidX(v28);
      LODWORD(v16) = [v21 _shouldReverseLayoutDirection];

      v24 = -v22;
      if (!v16)
      {
        v24 = v22;
      }

      return MidX + v24;
    }
  }

  return v5;
}

uint64_t sub_190851E88()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(1);
  }

  return result;
}

uint64_t sub_190851EBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_190851FD4()
{
  v1 = (v0 + OBJC_IVAR___CKTranscriptMessageScrollConfiguration_messageGUID);
  swift_beginAccess();
  v2 = *v1;
  sub_190D52690();
  return v2;
}

uint64_t sub_190852098(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___CKTranscriptMessageScrollConfiguration_messageGUID);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1908520F8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR___CKTranscriptMessageScrollConfiguration_messageGUID);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
  sub_190D52690();
}

uint64_t sub_19085220C()
{
  v1 = OBJC_IVAR___CKTranscriptMessageScrollConfiguration_partIndex;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1908522A4(uint64_t a1)
{
  v3 = OBJC_IVAR___CKTranscriptMessageScrollConfiguration_partIndex;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_19085239C()
{
  v1 = OBJC_IVAR___CKTranscriptMessageScrollConfiguration_animated;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_190852434(char a1)
{
  v3 = OBJC_IVAR___CKTranscriptMessageScrollConfiguration_animated;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_19085252C()
{
  v1 = OBJC_IVAR___CKTranscriptMessageScrollConfiguration_inlineReplyOverlay;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1908525C4(char a1)
{
  v3 = OBJC_IVAR___CKTranscriptMessageScrollConfiguration_inlineReplyOverlay;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1908526BC()
{
  v1 = OBJC_IVAR___CKTranscriptMessageScrollConfiguration_highlight;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_190852754(char a1)
{
  v3 = OBJC_IVAR___CKTranscriptMessageScrollConfiguration_highlight;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_19085284C()
{
  v1 = OBJC_IVAR___CKTranscriptMessageScrollConfiguration_emphasize;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1908528E4(char a1)
{
  v3 = OBJC_IVAR___CKTranscriptMessageScrollConfiguration_emphasize;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1908529DC()
{
  v1 = OBJC_IVAR___CKTranscriptMessageScrollConfiguration_autoDismissHightlight;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_190852A74(char a1)
{
  v3 = OBJC_IVAR___CKTranscriptMessageScrollConfiguration_autoDismissHightlight;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_190852B6C()
{
  v1 = OBJC_IVAR___CKTranscriptMessageScrollConfiguration_scrollPosition;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_190852C04(uint64_t a1)
{
  v3 = OBJC_IVAR___CKTranscriptMessageScrollConfiguration_scrollPosition;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *sub_190852D00()
{
  v1 = OBJC_IVAR___CKTranscriptMessageScrollConfiguration_viewToAlignWith;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_190852DAC(uint64_t a1)
{
  v3 = OBJC_IVAR___CKTranscriptMessageScrollConfiguration_viewToAlignWith;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_190852E04(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CKTranscriptMessageScrollConfiguration_viewToAlignWith;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t sub_190852F0C()
{
  v1 = OBJC_IVAR___CKTranscriptMessageScrollConfiguration_allowOverScroll;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_190852FA4(char a1)
{
  v3 = OBJC_IVAR___CKTranscriptMessageScrollConfiguration_allowOverScroll;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id TranscriptMessageScrollConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TranscriptMessageScrollConfiguration.init()()
{
  v1 = &v0[OBJC_IVAR___CKTranscriptMessageScrollConfiguration_messageGUID];
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = OBJC_IVAR___CKTranscriptMessageScrollConfiguration_partIndex;
  *&v0[v2] = sub_190D50E40();
  v0[OBJC_IVAR___CKTranscriptMessageScrollConfiguration_animated] = 0;
  v0[OBJC_IVAR___CKTranscriptMessageScrollConfiguration_inlineReplyOverlay] = 0;
  v0[OBJC_IVAR___CKTranscriptMessageScrollConfiguration_highlight] = 0;
  v0[OBJC_IVAR___CKTranscriptMessageScrollConfiguration_emphasize] = 0;
  v0[OBJC_IVAR___CKTranscriptMessageScrollConfiguration_autoDismissHightlight] = 0;
  *&v0[OBJC_IVAR___CKTranscriptMessageScrollConfiguration_scrollPosition] = 2;
  *&v0[OBJC_IVAR___CKTranscriptMessageScrollConfiguration_viewToAlignWith] = 0;
  v0[OBJC_IVAR___CKTranscriptMessageScrollConfiguration_allowOverScroll] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for TranscriptMessageScrollConfiguration();
  return objc_msgSendSuper2(&v4, sel_init);
}

id TranscriptMessageScrollConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TranscriptMessageScrollConfiguration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t keypath_set_7Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t keypath_get_8Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_set_9Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t sub_190853A54(uint64_t *a1)
{
  swift_beginAccess();
  v2 = *a1;
  sub_190D52690();
  return v2;
}

uint64_t sub_190853AB8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  swift_beginAccess();
  *a3 = a1;
  *a4 = a2;
}

uint64_t sub_190853B70(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v9 = *a1;
  v8 = a1[1];
  swift_beginAccess();
  *a5 = v9;
  *a6 = v8;
  sub_190D52690();
}

uint64_t MutedConversationEntityRepresentation.__allocating_init(_:)(uint64_t a1)
{
  v2 = sub_190D523B0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  v7 = qword_1EAD54780;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54788);
  swift_allocObject();
  *(v6 + v7) = sub_190D52450();
  v8 = qword_1EAD54790;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54798);
  swift_allocObject();
  *(v6 + v8) = sub_190D52450();
  (*(v3 + 16))(v5, a1, v2);
  v9 = sub_190D52410();
  (*(v3 + 8))(a1, v2);
  return v9;
}

uint64_t MutedConversationEntityRepresentation.init(_:)(uint64_t a1)
{
  v3 = sub_190D523B0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_1EAD54780;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54788);
  swift_allocObject();
  *(v1 + v7) = sub_190D52450();
  v8 = qword_1EAD54790;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54798);
  swift_allocObject();
  *(v1 + v8) = sub_190D52450();
  (*(v4 + 16))(v6, a1, v3);
  v9 = sub_190D52410();
  (*(v4 + 8))(a1, v3);
  return v9;
}

uint64_t sub_190853EE8()
{
}

uint64_t MutedConversationEntityRepresentation.deinit()
{
  v0 = sub_190D52400();

  return v0;
}

uint64_t MutedConversationEntityRepresentation.__deallocating_deinit()
{
  sub_190D52400();
  sub_190D50920();

  return swift_deallocClassInstance();
}

uint64_t sub_190854098(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_beginAccess();
  v4 = *a3;
  sub_190D52690();
  return v4;
}

uint64_t sub_1908540F0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDEC120](a1, a2, WitnessTable);
}

uint64_t sub_190854150(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDEBE30](a1, WitnessTable);
}

uint64_t sub_1908541C8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDEC110](a1, a2, WitnessTable);
}

uint64_t sub_190854228@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190D523D0();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for MutedConversationEntityRepresentation()
{
  result = qword_1EAD547E8;
  if (!qword_1EAD547E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1908544C0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MutedConversationEntityRepresentation();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t keypath_getTm@<X0>(void *a1@<X3>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  swift_beginAccess();
  v6 = *a2;
  *a3 = *a1;
  a3[1] = v6;
  return sub_190D52690();
}

id sub_1908546F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKInlineMediaTextAttachmentViewProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_19085475C()
{
  v1 = [v0 textAttachment];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for CKInlineMediaTextAttachment();
    v3 = [swift_dynamicCastClassUnconditional() image];

    if (v3)
    {
      v4 = &selRef_size;
LABEL_6:
      [v3 *v4];

      return;
    }

    v5 = [objc_opt_self() sharedBehaviors];
    if (v5)
    {
      v3 = v5;
      v4 = &selRef_entryViewLinkViewSize;
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_19085484C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19085486C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
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

  *(result + 41) = v3;
  return result;
}

unint64_t sub_1908548B8()
{
  result = qword_1EAD54800;
  if (!qword_1EAD54800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54800);
  }

  return result;
}

void (*sub_190854A58(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_190D53950();
  return sub_190854AE0;
}

void sub_190854AE0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

unint64_t sub_190854B30()
{
  result = qword_1EAD54808;
  if (!qword_1EAD54808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54808);
  }

  return result;
}

uint64_t sub_190854B84(uint64_t a1)
{
  v2 = sub_190D53DD0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_190D53ED0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54810);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = v29 - v12;
  v14 = *(v7 + 16);
  v29[2] = a1;
  v14(v9, a1, v6);
  sub_1908553A8(&qword_1EAD54820);
  sub_190D57130();
  v15 = *(v11 + 44);
  sub_1908553A8(&qword_1EAD54818);
  sub_190D57530();
  v16 = 0.0;
  v17 = 0.0;
  if (*&v13[v15] != v31[0])
  {
    v18 = v3;
    v19 = (v3 + 16);
    v20 = (v18 + 8);
    do
    {
      v21 = sub_190D57560();
      (*v19)(v5);
      v21(v31, 0);
      sub_190D57540();
      sub_190D543A0();
      LOBYTE(v31[0]) = v22 & 1;
      v30 = v23 & 1;
      sub_190D53DB0();
      v25 = v24;
      v27 = v26;
      (*v20)(v5, v2);
      v17 = v17 + v25;
      v16 = v16 + v27;
      sub_190D57530();
    }

    while (*&v13[v15] != v31[0]);
  }

  sub_190855340(v13);
  sub_190D574F0();
  sub_190D57530();
  result = sub_190D57520();
  if (result > 1)
  {
    sub_190D574F0();
    sub_190D57530();
    result = sub_190D57520();
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      sub_190D574F0();
      sub_190D57530();
      result = sub_190D57520();
      if (!__OFSUB__(result, 1))
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}