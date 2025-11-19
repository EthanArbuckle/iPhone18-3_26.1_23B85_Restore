unint64_t sub_24EC288CC()
{
  result = qword_27F22BBB0;
  if (!qword_27F22BBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BBB0);
  }

  return result;
}

uint64_t sub_24EC28920(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA46110 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA56C40 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

id sub_24EC28B1C()
{
  if (qword_27F210408 != -1)
  {
    swift_once();
  }

  v1 = qword_27F22BE88;
  qword_27F22BBB8 = qword_27F22BE88;

  return v1;
}

id static OfferButtonStyling.blue.getter()
{
  if (qword_27F2103F8 != -1)
  {
    swift_once();
  }

  v1 = qword_27F22BBB8;

  return v1;
}

id static OfferButtonStyling.offerButtonPath(with:lineWidth:cornerRadius:)(uint64_t a1, char a2, double a3, double a4, double a5)
{
  v5 = a3 - a5;
  if (a3 - a5 >= a4 - a5)
  {
    v6 = a4 - a5;
  }

  else
  {
    v6 = a3 - a5;
  }

  v7 = v6 * 0.5;
  if (a2)
  {
    v8 = v7;
  }

  else
  {
    v8 = *&a1;
  }

  v9 = [objc_opt_self() bezierPathWithRoundedRect:-1 byRoundingCorners:a5 * 0.5 cornerRadii:{a5 * 0.5, v5, a4 - a5, v8, v8}];
  v10 = [v9 CGPath];

  return v10;
}

double static OfferButtonStyling.offerButtonCornerRadius(with:cornerRadius:)(uint64_t a1, char a2, double a3, double a4)
{
  if (a3 >= a4)
  {
    a3 = a4;
  }

  result = a3 * 0.5;
  if ((a2 & 1) == 0)
  {
    return *&a1;
  }

  return result;
}

uint64_t sub_24EC28CC8()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v4, v0);
  qword_27F39C058 = sub_24F92AAE8();
  unk_27F39C060 = MEMORY[0x277D22508];
  __swift_allocate_boxed_opaque_existential_1(qword_27F39C040);
  return sub_24F92AAD8();
}

id DynamicViewControllerDelegate.__allocating_init(subscriptionManager:purchaseSuccessHandler:purchaseFailureHandler:carrierLinkSuccessHandler:carrierLinkFailureHandler:didDismissHandler:contentViewConstructor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v20 = objc_allocWithZone(v13);
  *&v20[OBJC_IVAR____TtC12GameStoreKit29DynamicViewControllerDelegate_subscriptionManager] = a1;
  v21 = &v20[OBJC_IVAR____TtC12GameStoreKit29DynamicViewControllerDelegate_contentViewConstructor];
  *v21 = a12;
  *(v21 + 1) = a13;
  v22 = &v20[OBJC_IVAR____TtC12GameStoreKit29DynamicViewControllerDelegate_purchaseSuccessHandler];
  *v22 = a2;
  *(v22 + 1) = a3;
  v23 = &v20[OBJC_IVAR____TtC12GameStoreKit29DynamicViewControllerDelegate_purchaseFailureHandler];
  *v23 = a4;
  *(v23 + 1) = a5;
  v24 = &v20[OBJC_IVAR____TtC12GameStoreKit29DynamicViewControllerDelegate_carrierLinkSuccessHandler];
  *v24 = a6;
  *(v24 + 1) = a7;
  v25 = &v20[OBJC_IVAR____TtC12GameStoreKit29DynamicViewControllerDelegate_carrierLinkFailureHandler];
  *v25 = a8;
  *(v25 + 1) = a9;
  v26 = &v20[OBJC_IVAR____TtC12GameStoreKit29DynamicViewControllerDelegate_didDismissHandler];
  *v26 = a10;
  *(v26 + 1) = a11;
  v30.receiver = v20;
  v30.super_class = v13;
  return objc_msgSendSuper2(&v30, sel_init);
}

id DynamicViewControllerDelegate.init(subscriptionManager:purchaseSuccessHandler:purchaseFailureHandler:carrierLinkSuccessHandler:carrierLinkFailureHandler:didDismissHandler:contentViewConstructor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  ObjectType = swift_getObjectType();
  *&v13[OBJC_IVAR____TtC12GameStoreKit29DynamicViewControllerDelegate_subscriptionManager] = a1;
  v21 = &v13[OBJC_IVAR____TtC12GameStoreKit29DynamicViewControllerDelegate_contentViewConstructor];
  *v21 = a12;
  *(v21 + 1) = a13;
  v22 = &v13[OBJC_IVAR____TtC12GameStoreKit29DynamicViewControllerDelegate_purchaseSuccessHandler];
  *v22 = a2;
  *(v22 + 1) = a3;
  v23 = &v13[OBJC_IVAR____TtC12GameStoreKit29DynamicViewControllerDelegate_purchaseFailureHandler];
  *v23 = a4;
  *(v23 + 1) = a5;
  v24 = &v13[OBJC_IVAR____TtC12GameStoreKit29DynamicViewControllerDelegate_carrierLinkSuccessHandler];
  *v24 = a6;
  *(v24 + 1) = a7;
  v25 = &v13[OBJC_IVAR____TtC12GameStoreKit29DynamicViewControllerDelegate_carrierLinkFailureHandler];
  *v25 = a8;
  *(v25 + 1) = a9;
  v26 = &v13[OBJC_IVAR____TtC12GameStoreKit29DynamicViewControllerDelegate_didDismissHandler];
  *v26 = a10;
  *(v26 + 1) = a11;
  v30.receiver = v13;
  v30.super_class = ObjectType;
  return objc_msgSendSuper2(&v30, sel_init);
}

void sub_24EC2907C(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void (*a6)(void *, void *))
{
  v10 = a3;
  v11 = a4;
  v12 = a1;
  v13 = a5;
  a6(a4, a5);
}

uint64_t DynamicViewControllerDelegate.dynamicViewController(_:didFinishWith:error:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit29DynamicViewControllerDelegate_didDismissHandler);
  if (v1)
  {
    v1();
  }

  if (qword_27F210400 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1(qword_27F39C040, qword_27F39C058);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A588();
}

uint64_t DynamicViewControllerDelegate.dynamicViewController(_:contentViewWith:frame:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC12GameStoreKit29DynamicViewControllerDelegate_contentViewConstructor);
  if (v3)
  {
    return v3(a2);
  }

  else
  {
    return 0;
  }
}

id DynamicViewControllerDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DynamicViewControllerDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_24EC296B4(void *a1, id a2)
{
  if (a2)
  {
    v3 = a2;
LABEL_3:
    v4 = *(v2 + OBJC_IVAR____TtC12GameStoreKit29DynamicViewControllerDelegate_purchaseFailureHandler);
    if (v4)
    {
      v4(a2);
    }

    else
    {
      v15 = a2;
    }

    if (qword_27F210400 != -1)
    {
      swift_once();
    }

    __swift_project_boxed_opaque_existential_1(qword_27F39C040, qword_27F39C058);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    swift_getErrorValue();
    v20 = v17;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
    (*(*(v17 - 8) + 16))(boxed_opaque_existential_1);
    sub_24F928438();
    sub_24E857CC8(&v18);
    sub_24F92A5A8();

    return;
  }

  if (!a1)
  {
    return;
  }

  v6 = [a1 error];
  a2 = 0;
  v3 = v6;
  if (v6)
  {
    goto LABEL_3;
  }

  v7 = objc_opt_self();
  v8 = a1;
  v9 = [v7 ams_sharedAccountStore];
  v10 = [v9 ams_activeiTunesAccount];

  v11 = [v10 ams_DSID];
  v21 = v11;
  v22 = 0x80;
  v12 = v11;
  ArcadeSubscriptionManager.setSubscriptionState(_:notifyingObservers:)(&v21, 1, &v18);
  sub_24EB6CE70(v21, v22);
  sub_24EB6CE70(v18, v19);
  v13 = *(v2 + OBJC_IVAR____TtC12GameStoreKit29DynamicViewControllerDelegate_purchaseSuccessHandler);
  if (v13)
  {
    v13();
  }

  if (qword_27F210400 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1(qword_27F39C040, qword_27F39C058);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  v20 = sub_24E69A5C4(0, &qword_27F22BC08);
  v18 = v8;
  v14 = v8;
  sub_24F928438();
  sub_24E857CC8(&v18);
  sub_24F92A588();
}

void sub_24EC29B24(void *a1, id a2)
{
  if (a2)
  {
    v4 = *(v2 + OBJC_IVAR____TtC12GameStoreKit29DynamicViewControllerDelegate_carrierLinkFailureHandler);
    if (v4)
    {
      v4(a2);
    }

    else
    {
      v14 = a2;
    }

    if (qword_27F210400 != -1)
    {
      swift_once();
    }

    __swift_project_boxed_opaque_existential_1(qword_27F39C040, qword_27F39C058);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    swift_getErrorValue();
    v19 = v16;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v17);
    (*(*(v16 - 8) + 16))(boxed_opaque_existential_1);
    sub_24F928438();
    sub_24E857CC8(&v17);
    sub_24F92A5A8();
  }

  else if (a1)
  {
    v6 = objc_opt_self();
    v7 = a1;
    v8 = [v6 ams_sharedAccountStore];
    v9 = [v8 ams_activeiTunesAccount];

    v10 = [v9 ams_DSID];
    v20 = v10;
    v21 = 0x80;
    v11 = v10;
    ArcadeSubscriptionManager.setSubscriptionState(_:notifyingObservers:)(&v20, 1, &v17);
    sub_24EB6CE70(v20, v21);
    sub_24EB6CE70(v17, v18);
    v12 = *(v2 + OBJC_IVAR____TtC12GameStoreKit29DynamicViewControllerDelegate_carrierLinkSuccessHandler);
    if (v12)
    {
      v12();
    }

    if (qword_27F210400 != -1)
    {
      swift_once();
    }

    __swift_project_boxed_opaque_existential_1(qword_27F39C040, qword_27F39C058);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    v19 = sub_24E69A5C4(0, &unk_27F22BBF8);
    v17 = v7;
    v13 = v7;
    sub_24F928438();
    sub_24E857CC8(&v17);
    sub_24F92A588();
  }
}

void __swiftcall SuggestedFriend.init(contactID:contactAssociationID:handle:fullName:supportsFriendingViaPush:)(GameStoreKit::SuggestedFriend *__return_ptr retstr, Swift::String contactID, Swift::String_optional contactAssociationID, Swift::String handle, Swift::String fullName, Swift::Bool supportsFriendingViaPush)
{
  retstr->contactID = contactID;
  retstr->contactAssociationID = contactAssociationID;
  retstr->handle = handle;
  retstr->fullName = fullName;
  retstr->supportsFriendingViaPush = supportsFriendingViaPush;
}

uint64_t SuggestedFriend.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v51 = a3;
  v56 = a2;
  v4 = sub_24F928388();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v52 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v45 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v45 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v45 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v45 - v17;
  sub_24F928398();
  v50 = sub_24F928348();
  v20 = v19;
  v21 = *(v5 + 8);
  v21(v18, v4);
  if (!v20)
  {
    v32 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v33 = 0x49746361746E6F63;
    v33[1] = 0xE900000000000044;
    v33[2] = &type metadata for SuggestedFriend;
    (*(*(v32 - 8) + 104))(v33, *MEMORY[0x277D22530], v32);
    swift_willThrow();
    v34 = sub_24F9285B8();
    (*(*(v34 - 8) + 8))(v56, v34);
    return (v21)(a1, v4);
  }

  v55 = v20;
  v22 = 0x656C646E6168;
  sub_24F928398();
  v48 = sub_24F928348();
  v54 = v23;
  v21(v15, v4);
  v24 = 0xE600000000000000;
  sub_24F928398();
  v47 = sub_24F928348();
  v26 = v25;
  v21(v12, v4);
  v53 = v26;
  if (!v26)
  {
    LODWORD(v52) = 0;
LABEL_9:
    v31 = v56;
    goto LABEL_10;
  }

  v24 = 0xE800000000000000;
  sub_24F928398();
  v46 = sub_24F928348();
  v28 = v27;
  v21(v9, v4);
  if (!v28)
  {
    LODWORD(v52) = 0;
    v22 = 0x656D614E6C6C7566;
    goto LABEL_9;
  }

  v49 = v28;
  v24 = 0x800000024FA56F50;
  v29 = v52;
  sub_24F928398();
  v30 = sub_24F928278();
  v21(v29, v4);
  if (v30 != 2)
  {
    v39 = sub_24F9285B8();
    (*(*(v39 - 8) + 8))(v56, v39);
    result = (v21)(a1, v4);
    v40 = v51;
    v41 = v55;
    *v51 = v50;
    v40[1] = v41;
    v42 = v54;
    v40[2] = v48;
    v40[3] = v42;
    v43 = v53;
    v40[4] = v47;
    v40[5] = v43;
    v44 = v49;
    v40[6] = v46;
    v40[7] = v44;
    *(v40 + 64) = v30 & 1;
    return result;
  }

  LODWORD(v52) = 1;
  v31 = v56;
  v22 = 0xD000000000000018;
LABEL_10:
  v36 = sub_24F92AC38();
  sub_24E8F2E6C();
  swift_allocError();
  *v37 = v22;
  v37[1] = v24;
  v37[2] = &type metadata for SuggestedFriend;
  (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277D22530], v36);
  swift_willThrow();
  v38 = sub_24F9285B8();
  (*(*(v38 - 8) + 8))(v31, v38);
  v21(a1, v4);

  if (v53)
  {
  }

  result = v49;
  if (v52)
  {
  }

  return result;
}

unint64_t SuggestedFriend.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[3];
  v5 = v1[5];
  v15 = v1[2];
  v16 = v1[4];
  v6 = v1[7];
  v17 = v1[6];
  v18 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 32) = 0x49746361746E6F63;
  *(inited + 16) = xmmword_24F942000;
  v8 = MEMORY[0x277D837D0];
  v9 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v9;
  *(inited + 40) = 0xE900000000000044;
  *(inited + 48) = v3;
  *(inited + 56) = v2;
  *(inited + 88) = 0xD000000000000014;
  *(inited + 96) = 0x800000024FA56F30;
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
  v10 = sub_24E605DB4();
  *(inited + 104) = v15;
  *(inited + 112) = v4;
  *(inited + 136) = v10;
  *(inited + 144) = 0x656C646E6168;
  *(inited + 184) = v8;
  *(inited + 192) = v9;
  *(inited + 152) = 0xE600000000000000;
  *(inited + 160) = v16;
  *(inited + 168) = v5;
  *(inited + 200) = 0x656D614E6C6C7566;
  *(inited + 208) = 0xE800000000000000;
  *(inited + 240) = v8;
  *(inited + 248) = v9;
  *(inited + 216) = v17;
  *(inited + 224) = v6;
  v11 = MEMORY[0x277D839B0];
  *(inited + 256) = 0xD000000000000018;
  *(inited + 264) = 0x800000024FA56F50;
  v12 = MEMORY[0x277D22598];
  *(inited + 296) = v11;
  *(inited + 304) = v12;
  *(inited + 272) = v18;

  v13 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v13;
  return result;
}

uint64_t AdvertAppearanceTracker.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 16) = MEMORY[0x277D84F90];
  return v0;
}

uint64_t AdvertAppearanceTracker.init()()
{
  *(v0 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 16) = MEMORY[0x277D84F90];
  return v0;
}

uint64_t AdvertAppearanceTracker.observer.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*AdvertAppearanceTracker.observer.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v6 = *(v1 + 32);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_24EC2A980;
}

void sub_24EC2A980(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 32) = *(*a1 + 32);
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

uint64_t AdvertAppearanceTracker.advertDidEnterView(for:on:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for AdvertAppearanceJournal.Entry();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v23[-v10];
  v12 = sub_24EC2ACB0(*(a1 + 16), *(a1 + 24));
  swift_beginAccess();
  v13 = v12[4];
  v14 = v13[2];
  if (v14 && *(v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * (v14 - 1)) != 1)
  {
  }

  v15 = *(v5 + 20);
  v16 = sub_24F91F648();
  (*(*(v16 - 8) + 16))(&v11[v15], a2, v16);
  *v11 = 0;
  sub_24EA74770(v11, v8);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12[4] = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_24E617FB8(0, v13[2] + 1, 1, v13);
    v12[4] = v13;
  }

  v19 = v13[2];
  v18 = v13[3];
  if (v19 >= v18 >> 1)
  {
    v13 = sub_24E617FB8(v18 > 1, v19 + 1, 1, v13);
  }

  v13[2] = v19 + 1;
  sub_24EA74F78(v8, v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v19);
  v12[4] = v13;
  swift_endAccess();
  sub_24EA74FDC(v11);
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
  }

  v20 = *(v2 + 32);
  ObjectType = swift_getObjectType();
  (*(v20 + 8))(v2, a1, a2, ObjectType, v20);

  return swift_unknownObjectRelease();
}

void *sub_24EC2ACB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v13[4] = *(v2 + 16);

  v7 = sub_24EC2B838(v6, a1, a2);
  v9 = v8;

  if (v9)
  {
  }

  else
  {
    v14 = v7;
    sub_24EC2BA94(&v14, v13);
    v10 = v13[0];

    if (v10)
    {
      return v10;
    }
  }

  type metadata accessor for AdvertAppearanceJournal();
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = MEMORY[0x277D84F90];
  swift_beginAccess();

  MEMORY[0x253050F00](v11);
  if (*((*(v3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_24F92B5E8();
  }

  sub_24F92B638();
  swift_endAccess();
  return v10;
}

uint64_t AdvertAppearanceTracker.advertDidLeaveView(for:on:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v33 - v6;
  v8 = sub_24F91F648();
  v37 = *(v8 - 8);
  v38 = v8;
  MEMORY[0x28223BE20](v8);
  v36 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AdvertAppearanceJournal.Entry();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - v15;
  v17 = sub_24EC2ACB0(*(a1 + 16), *(a1 + 24));
  swift_beginAccess();
  v18 = v17[4];
  v19 = v18[2];
  if (!v19)
  {
  }

  v33 = a1;
  v34 = v2;
  v35 = a2;
  v20 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v21 = *(v11 + 72);
  if (*(v18 + v20 + v21 * (v19 - 1)) == 1)
  {
  }

  (*(v37 + 16))(&v16[*(v10 + 20)], v35, v38);
  *v16 = 1;
  sub_24EA74770(v16, v13);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17[4] = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = sub_24E617FB8(0, v18[2] + 1, 1, v18);
    v17[4] = v18;
  }

  v25 = v18[2];
  v24 = v18[3];
  if (v25 >= v24 >> 1)
  {
    v18 = sub_24E617FB8(v24 > 1, v25 + 1, 1, v18);
  }

  v18[2] = v25 + 1;
  sub_24EA74F78(v13, v18 + v20 + v25 * v21);
  v17[4] = v18;
  swift_endAccess();
  sub_24EA74FDC(v16);
  AdvertAppearanceJournal.lastAppearanceTime.getter(v7);
  v27 = v37;
  v26 = v38;
  if ((*(v37 + 48))(v7, 1, v38) == 1)
  {
    sub_24E728998(v7);
    if (qword_27F210568 != -1)
    {
      swift_once();
    }

    v28 = sub_24F92AAE8();
    __swift_project_value_buffer(v28, qword_27F39C398);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F928448();
    sub_24F9283A8();
    sub_24F92A5A8();
  }

  else
  {
    v29 = v36;
    (*(v27 + 32))(v36, v7, v26);
    v30 = v34;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v31 = *(v30 + 32);
      ObjectType = swift_getObjectType();
      (*(v31 + 16))(v30, v33, v29, v35, ObjectType, v31);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    return (*(v27 + 8))(v29, v26);
  }
}

Swift::Bool __swiftcall AdvertAppearanceTracker.isAdvertVisible(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = type metadata accessor for AdvertAppearanceJournal.Entry();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v21[-v9];
  swift_beginAccess();
  v24 = *(v1 + 16);

  v12 = sub_24EC2B838(v11, countAndFlagsBits, object);
  v14 = v13;

  v22 = &v24;
  if (v14)
  {

LABEL_7:
    v19 = 0;
    return v19 & 1;
  }

  v25 = v12;
  sub_24EC2B954(&v25, v23);
  v15 = v23[0];

  if (!v15)
  {
    goto LABEL_7;
  }

  swift_beginAccess();
  v16 = *(v15 + 32);
  v17 = *(v16 + 16);
  if (!v17)
  {

    goto LABEL_7;
  }

  sub_24EA74770(v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * (v17 - 1), v7);

  sub_24EA74F78(v7, v10);
  v18 = *v10;
  sub_24EA74FDC(v10);
  v19 = v18 ^ 1;
  return v19 & 1;
}

uint64_t AdvertAppearanceTracker.lastAppearanceTime(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();

  v7 = sub_24EC2B838(v6, a1, a2);
  v9 = v8;

  if (v9)
  {
  }

  else
  {
    v13 = v7;
    sub_24EC2BA94(&v13, &v14);
    v10 = v14;

    if (v10)
    {
      AdvertAppearanceJournal.lastAppearanceTime.getter(a3);
    }
  }

  v12 = sub_24F91F648();
  return (*(*(v12 - 8) + 56))(a3, 1, 1, v12);
}

uint64_t AdvertAppearanceTracker.lastDisappearanceTime(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();

  v7 = sub_24EC2B838(v6, a1, a2);
  v9 = v8;

  if (v9)
  {
  }

  else
  {
    v13 = v7;
    sub_24EC2BA94(&v13, &v14);
    v10 = v14;

    if (v10)
    {
      AdvertAppearanceJournal.lastDisappearanceTime.getter(a3);
    }
  }

  v12 = sub_24F91F648();
  return (*(*(v12 - 8) + 56))(a3, 1, 1, v12);
}

uint64_t AdvertAppearanceTracker.deinit()
{

  sub_24E883630(v0 + 24);
  return v0;
}

uint64_t AdvertAppearanceTracker.__deallocating_deinit()
{

  sub_24E883630(v0 + 24);

  return swift_deallocClassInstance();
}

unint64_t sub_24EC2B7CC@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  result = *a1;
  v5 = *a2;
  if ((v5 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x253052270](result);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_5:
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_24EC2B838(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_22:
    v14 = a1;
    v6 = sub_24F92C738();
    a1 = v14;
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = a1 & 0xC000000000000001;
  v15 = a1;
  v8 = a1 + 32;
  do
  {
    v9 = v6;
    if (!v6)
    {
      break;
    }

    --v6;
    if (__OFSUB__(v9, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (v7)
    {
      v10 = MEMORY[0x253052270](v9 - 1, v15);
    }

    else
    {
      if ((v6 & 0x8000000000000000) != 0)
      {
        goto LABEL_20;
      }

      if (v6 >= *(v5 + 16))
      {
        goto LABEL_21;
      }

      v10 = *(v8 + 8 * v6);
    }

    if (*(v10 + 16) == a2 && *(v10 + 24) == a3)
    {

      return v6;
    }

    v12 = sub_24F92CE08();
  }

  while ((v12 & 1) == 0);
  return v6;
}

uint64_t sub_24EC2B974@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 32);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24EC2B9C4(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 32) = v2;
  return swift_unknownObjectWeakAssign();
}

id sub_24EC2BAAC(void *a1)
{
  v1 = a1;
  v2 = [v1 presentedViewController];
  v3 = v1;
  if (v2)
  {
    v4 = v1;
    do
    {
      v3 = v2;

      v2 = [v3 presentedViewController];
      v4 = v3;
    }

    while (v2);
  }

  return v3;
}

id UIViewController.frontmostViewController.getter()
{
  v1 = v0;
  v2 = [v1 presentedViewController];
  if (!v2)
  {
    return v1;
  }

  do
  {
    v3 = v2;

    v2 = [v3 presentedViewController];
    v1 = v3;
  }

  while (v2);
  return v3;
}

uint64_t SearchAd.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  SearchAd.init(deserializing:using:)(a1, a2);
  return v4;
}

void *SearchAd.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v110 = a2;
  v5 = *v3;
  v112 = v3;
  v107 = v5;
  v6 = sub_24F92AC38();
  v108 = *(v6 - 8);
  v109 = v6;
  MEMORY[0x28223BE20](v6);
  v102 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v100 = &v99 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F221C40);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v99 - v11;
  v13 = sub_24F91F6B8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24F928388();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v101 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v103 = &v99 - v21;
  MEMORY[0x28223BE20](v22);
  v105 = &v99 - v23;
  MEMORY[0x28223BE20](v24);
  v106 = &v99 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v99 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v99 - v30;
  v118 = a1;
  sub_24F928398();
  v32 = sub_24F928348();
  if (v33)
  {
    v113 = v32;
    v114 = v33;
  }

  else
  {
    sub_24F91F6A8();
    v34 = sub_24F91F668();
    v35 = v14;
    v37 = v36;
    (*(v35 + 8))(v16, v13);
    v113 = v34;
    v114 = v37;
  }

  sub_24F92C7F8();
  v38 = v31;
  v39 = *(v18 + 8);
  v39(v38, v17);
  v40 = v116;
  v41 = v112;
  *(v112 + 5) = v115;
  *(v41 + 6) = v40;
  v41[14] = v117;
  sub_24F928398();
  sub_24F9281F8();
  v42 = v17;
  v111 = v39;
  v39(v28, v17);
  v43 = sub_24F928E68();
  v44 = *(v43 - 8);
  if ((*(v44 + 48))(v12, 1, v43) == 1)
  {
    sub_24E9182E0(v12);
LABEL_12:
    sub_24EC2C990(&qword_27F2213B8, 255, MEMORY[0x277D22548]);
    v73 = v109;
    swift_allocError();
    *v74 = 6570345;
    v74[1] = 0xE300000000000000;
    v75 = v108;
    v74[2] = v107;
    (*(v75 + 104))(v74, *MEMORY[0x277D22530], v73);
    swift_willThrow();
    v76 = sub_24F9285B8();
    (*(*(v76 - 8) + 8))(v110, v76);
    v111(v118, v42);
LABEL_20:
    sub_24E6585F8((v41 + 10));
    type metadata accessor for SearchAd();
    swift_deallocPartialClassInstance();
    return v41;
  }

  v45 = sub_24F928E48();
  (*(v44 + 8))(v12, v43);
  if (!v45)
  {
    goto LABEL_12;
  }

  v46 = v106;
  v47 = v118;
  sub_24F928398();
  v48 = sub_24F928348();
  v50 = v49;
  v51 = v111;
  v111(v46, v42);
  if (!v50)
  {

    sub_24EC2C990(&qword_27F2213B8, 255, MEMORY[0x277D22548]);
    v77 = v109;
    swift_allocError();
    strcpy(v78, "impressionId");
    v78[13] = 0;
    *(v78 + 7) = -5120;
    v79 = v108;
    *(v78 + 2) = v107;
    (*(v79 + 104))(v78, *MEMORY[0x277D22530], v77);
    swift_willThrow();
    v80 = sub_24F9285B8();
    (*(*(v80 - 8) + 8))(v110, v80);
    v81 = v47;
    v82 = v42;
LABEL_15:
    v51(v81, v82);
LABEL_19:
    v41 = v112;
    goto LABEL_20;
  }

  v106 = v48;
  v52 = v105;
  sub_24F928398();
  v99 = sub_24F928348();
  v54 = v53;
  v51(v52, v42);
  if (!v54)
  {

    sub_24EC2C990(&qword_27F2213B8, 255, MEMORY[0x277D22548]);
    v83 = v109;
    swift_allocError();
    *v84 = 0x65636E6174736E69;
    v84[1] = 0xEA00000000006449;
    v85 = v108;
    v84[2] = v107;
    (*(v85 + 104))(v84, *MEMORY[0x277D22530], v83);
    swift_willThrow();
    v86 = sub_24F9285B8();
    (*(*(v86 - 8) + 8))(v110, v86);
    v81 = v47;
    v82 = v42;
    goto LABEL_15;
  }

  type metadata accessor for Action();
  v55 = v103;
  v105 = 0x800000024FA57040;
  sub_24F928398();
  v56 = v110;
  v57 = v104;
  v58 = static Action.makeInstance(byDeserializing:using:)(v55, v110);
  if (v57)
  {

    v59 = v55;
    v60 = v111;
    v111(v59, v42);
    *&v115 = v57;
    v61 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600);
    v62 = v102;
    v63 = v109;
    if (swift_dynamicCast())
    {

      v64 = v108;
      v65 = v100;
      (*(v108 + 32))(v100, v62, v63);
      sub_24EC2C990(&qword_27F2213B8, 255, MEMORY[0x277D22548]);
      v106 = v42;
      swift_allocError();
      v67 = v66;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213BA0);
      v68 = v60;
      v69 = swift_allocObject();
      *(v69 + 16) = xmmword_24F93DE60;
      *(v69 + 32) = swift_allocError();
      (*(v64 + 16))(v70, v65, v63);
      *v67 = 0xD000000000000012;
      v71 = v107;
      v67[1] = v105;
      v67[2] = v71;
      v67[3] = v69;
      (*(v64 + 104))(v67, *MEMORY[0x277D22540], v63);
      swift_willThrow();
      v72 = sub_24F9285B8();
      (*(*(v72 - 8) + 8))(v110, v72);
      v68(v118, v106);
      (*(v64 + 8))(v65, v63);
    }

    else
    {
      v97 = sub_24F9285B8();
      (*(*(v97 - 8) + 8))(v110, v97);
      v60(v118, v42);
    }

    goto LABEL_19;
  }

  v87 = v58;
  v88 = v55;
  v89 = v111;
  v111(v88, v42);
  v90 = v112;
  v112[2] = v99;
  v90[3] = v54;
  v90[6] = v50;
  v90[7] = v87;
  v41 = v90;
  v91 = v106;
  v41[4] = v45;
  v41[5] = v91;
  v92 = v101;
  v93 = v118;
  sub_24F928398();
  v109 = sub_24F928348();
  v95 = v94;
  v96 = sub_24F9285B8();
  (*(*(v96 - 8) + 8))(v56, v96);
  v89(v93, v42);
  v89(v92, v42);
  v41[8] = v109;
  v41[9] = v95;
  return v41;
}

uint64_t SearchAd.instanceId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SearchAd.impressionId.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t SearchAd.advertisingText.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t SearchAd.deinit()
{

  sub_24E6585F8(v0 + 80);
  return v0;
}

uint64_t SearchAd.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 80);

  return swift_deallocClassInstance();
}

uint64_t sub_24EC2C990(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void *sub_24EC2C9E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for SearchAd();
  v7 = swift_allocObject();
  result = SearchAd.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t Shadow.init(color:blurRadius:offset:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;
  return result;
}

uint64_t sub_24EC2CAEC(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_13:
    v15 = *(v10 + 48);

    return v15(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_13;
  }

  v13 = type metadata accessor for CommonCardAttributes(0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_13;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[14];
    goto LABEL_13;
  }

  v16 = type metadata accessor for AppEventCard(0);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[15];

  return v17(v18, a2, v16);
}

uint64_t sub_24EC2CD20(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_11:
    v15 = *(v10 + 56);

    return v15(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_11;
  }

  v13 = type metadata accessor for CommonCardAttributes(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_11;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[14];
    goto LABEL_11;
  }

  v16 = type metadata accessor for AppEventCard(0);
  v17 = *(*(v16 - 8) + 56);
  v18 = v5 + a4[15];

  return v17(v18, a2, a2, v16);
}

uint64_t type metadata accessor for AppEventSearchCard()
{
  result = qword_27F22BC18;
  if (!qword_27F22BC18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EC2CF8C()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8);
    if (v1 <= 0x3F)
    {
      sub_24E65B038(319, &qword_27F215458, &qword_27F215460);
      if (v2 <= 0x3F)
      {
        sub_24E705BB0(319, &qword_27F213EB0, MEMORY[0x277D21F70], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for CommonCardAttributes(319);
          if (v4 <= 0x3F)
          {
            sub_24E705A8C();
            if (v5 <= 0x3F)
            {
              sub_24E705BB0(319, &qword_27F2191B0, type metadata accessor for Player, MEMORY[0x277D83940]);
              if (v6 <= 0x3F)
              {
                sub_24E66ECF0(319, &qword_27F2191B8);
                if (v7 <= 0x3F)
                {
                  sub_24E66ECF0(319, &qword_27F254DE0);
                  if (v8 <= 0x3F)
                  {
                    sub_24E705BB0(319, &qword_27F213FD0, MEMORY[0x277D21C48], MEMORY[0x277D83D88]);
                    if (v9 <= 0x3F)
                    {
                      type metadata accessor for AppEventCard(319);
                      if (v10 <= 0x3F)
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_24EC2D1DC(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6575676573;
      break;
    case 2:
      result = 0x4D747865746E6F63;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0x68736E6565726373;
      break;
    case 6:
      result = 0x5073646E65697266;
      break;
    case 7:
      result = 0x7641676E69746172;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0x65726E6567;
      break;
    case 10:
      result = 0x74724165726E6567;
      break;
    case 11:
      result = 0x746E657645707061;
      break;
    case 12:
      result = 0x44496D616461;
      break;
    case 13:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24EC2D3B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v64 = type metadata accessor for AppEventCard(0);
  MEMORY[0x28223BE20](v64);
  v65 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v4 - 8);
  v66 = &v60 - v5;
  v6 = type metadata accessor for CommonCardAttributes(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v60 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v12);
  v14 = &v60 - v13;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BC38);
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v16 = &v60 - v15;
  v17 = type metadata accessor for AppEventSearchCard();
  MEMORY[0x28223BE20](v17);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v19 + 40) = 0u;
  v78 = 0;
  v76 = 0u;
  v77 = 0u;
  *(v19 + 56) = 0u;
  *(v19 + 9) = 0;
  v75 = v19 + 40;
  sub_24E61DA68(&v76, (v19 + 40), qword_27F21B590);
  v74 = v17;
  v20 = *(v17 + 24);
  v21 = sub_24F92A6D8();
  v22 = *(*(v21 - 8) + 56);
  v73 = v20;
  v71 = v19;
  v22(&v19[v20], 1, 1, v21);
  v23 = a1[3];
  v70 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_24EC2E474();
  v68 = v16;
  v24 = v72;
  sub_24F92D108();
  if (v24)
  {
    v72 = v24;
    v25 = v71;
    __swift_destroy_boxed_opaque_existential_1(v70);
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    LODWORD(v68) = 0;
    LODWORD(v69) = 0;
    v33 = v74;
  }

  else
  {
    v61 = v11;
    v62 = v12;
    v72 = v14;
    v60 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v79 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    sub_24F92CC68();
    v35 = v77;
    v36 = v71;
    *v71 = v76;
    v36[1] = v35;
    *(v36 + 4) = v78;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v79 = 1;
    sub_24E61D970();
    sub_24F92CC68();
    sub_24E61DA68(&v76, v75, qword_27F24EC90);
    LOBYTE(v76) = 2;
    sub_24E65CAA0();
    v37 = v72;
    sub_24F92CC68();
    sub_24E61DA68(v37, v36 + v73, &qword_27F215440);
    sub_24F929608();
    LOBYTE(v76) = 3;
    sub_24EC2E4C8(&qword_27F213F48, MEMORY[0x277D21F70]);
    v38 = v61;
    sub_24F92CC18();
    v39 = v74;
    sub_24E6009C8(v38, v36 + v74[7], &qword_27F213E68);
    LOBYTE(v76) = 4;
    sub_24EC2E4C8(&qword_27F219690, type metadata accessor for CommonCardAttributes);
    v40 = v60;
    sub_24F92CC68();
    sub_24EC2E510(v40, v36 + v39[8], type metadata accessor for CommonCardAttributes);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219698);
    v79 = 5;
    sub_24E602068(&qword_27F2196A0, &qword_27F219698);
    sub_24F92CC68();
    *(v36 + v39[9]) = v76;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247240);
    v79 = 6;
    sub_24E706BF4();
    sub_24F92CC68();
    *(v36 + v39[10]) = v76;
    LOBYTE(v76) = 7;
    v41 = sub_24F92CBE8();
    v42 = v36 + v39[11];
    *v42 = v41;
    v42[8] = v43 & 1;
    LOBYTE(v76) = 8;
    v44 = sub_24F92CBC8();
    v72 = 0;
    v46 = (v36 + v39[12]);
    *v46 = v44;
    v46[1] = v45;
    LOBYTE(v76) = 9;
    v47 = v72;
    v48 = sub_24F92CBC8();
    v72 = v47;
    if (v47)
    {
      (*(v67 + 8))(v68, v69);
      v31 = 0;
      v32 = 0;
      LODWORD(v68) = 0;
      LODWORD(v69) = 0;
      v26 = 1;
      v27 = 1;
      v28 = 1;
      v29 = 1;
      v30 = 1;
    }

    else
    {
      v50 = (v71 + v74[13]);
      *v50 = v48;
      v50[1] = v49;
      sub_24F9289E8();
      LOBYTE(v76) = 10;
      sub_24EC2E4C8(&qword_27F214018, MEMORY[0x277D21C48]);
      v51 = v72;
      sub_24F92CC18();
      v72 = v51;
      if (v51)
      {
        (*(v67 + 8))(v68, v69);
        v32 = 0;
        LODWORD(v68) = 0;
        LODWORD(v69) = 0;
        v26 = 1;
        v27 = 1;
        v28 = 1;
        v29 = 1;
        v30 = 1;
        v31 = 1;
      }

      else
      {
        sub_24E6009C8(v66, v71 + v74[14], &qword_27F213FB0);
        LOBYTE(v76) = 11;
        sub_24EC2E4C8(&qword_27F22BC48, type metadata accessor for AppEventCard);
        v52 = v72;
        sub_24F92CC68();
        v72 = v52;
        if (v52)
        {
          (*(v67 + 8))(v68, v69);
          LODWORD(v68) = 0;
          LODWORD(v69) = 0;
          v26 = 1;
          v27 = 1;
          v28 = 1;
          v29 = 1;
          v30 = 1;
          v31 = 1;
          v32 = 1;
        }

        else
        {
          sub_24EC2E510(v65, v71 + v74[15], type metadata accessor for AppEventCard);
          LOBYTE(v76) = 12;
          v53 = v72;
          v54 = sub_24F92CC28();
          v72 = v53;
          if (!v53)
          {
            v56 = (v71 + v74[16]);
            *v56 = v54;
            v56[1] = v55;
            LOBYTE(v76) = 13;
            v57 = sub_24F92CC38();
            v72 = 0;
            v58 = v57;
            (*(v67 + 8))(v68, v69);
            v59 = v71;
            *(v71 + v74[17]) = v58 & 1;
            sub_24EC2E578(v59, v63, type metadata accessor for AppEventSearchCard);
            __swift_destroy_boxed_opaque_existential_1(v70);
            return sub_24EC2E5E0(v59, type metadata accessor for AppEventSearchCard);
          }

          (*(v67 + 8))(v68, v69);
          LODWORD(v69) = 0;
          v26 = 1;
          v27 = 1;
          v28 = 1;
          v29 = 1;
          v30 = 1;
          v31 = 1;
          v32 = 1;
          LODWORD(v68) = 1;
        }
      }
    }

    v33 = v74;
    v25 = v71;
    __swift_destroy_boxed_opaque_existential_1(v70);
    sub_24E601704(v25, &qword_27F213F18);
  }

  sub_24E601704(v75, qword_27F24EC90);
  result = sub_24E601704(v25 + v73, &qword_27F215440);
  if (v26)
  {
    result = sub_24E601704(v25 + v33[7], &qword_27F213E68);
    if (!v27)
    {
LABEL_6:
      if (!v28)
      {
        goto LABEL_7;
      }

      goto LABEL_16;
    }
  }

  else if (!v27)
  {
    goto LABEL_6;
  }

  result = sub_24EC2E5E0(v25 + v33[8], type metadata accessor for CommonCardAttributes);
  if (!v28)
  {
LABEL_7:
    if (!v29)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:

  if (!v29)
  {
LABEL_8:
    if (!v30)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:

  if (!v30)
  {
LABEL_9:
    if (!v31)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:

  if (!v31)
  {
LABEL_10:
    if (!v32)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:

  if (!v32)
  {
LABEL_11:
    if (!v68)
    {
      goto LABEL_12;
    }

LABEL_21:
    result = sub_24EC2E5E0(v25 + v33[15], type metadata accessor for AppEventCard);
    if (!v69)
    {
      return result;
    }
  }

LABEL_20:
  result = sub_24E601704(v25 + v33[14], &qword_27F213FB0);
  if (v68)
  {
    goto LABEL_21;
  }

LABEL_12:
  if (!v69)
  {
    return result;
  }
}

uint64_t sub_24EC2E1F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24EC2E758(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24EC2E220(uint64_t a1)
{
  v2 = sub_24EC2E474();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EC2E25C(uint64_t a1)
{
  v2 = sub_24EC2E474();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EC2E2D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 24), &v9 - v6, &qword_27F215440);
  return sub_24E6009C8(v7, a2, &qword_27F215460);
}

uint64_t sub_24EC2E3A8(uint64_t a1)
{
  *(a1 + 8) = sub_24EC2E4C8(&qword_27F21AA90, type metadata accessor for AppEventSearchCard);
  result = sub_24EC2E4C8(&qword_27F22BC28, type metadata accessor for AppEventSearchCard);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_24EC2E474()
{
  result = qword_27F22BC40;
  if (!qword_27F22BC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BC40);
  }

  return result;
}

uint64_t sub_24EC2E4C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EC2E510(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EC2E578(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EC2E5E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24EC2E654()
{
  result = qword_27F22BC50;
  if (!qword_27F22BC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BC50);
  }

  return result;
}

unint64_t sub_24EC2E6AC()
{
  result = qword_27F22BC58;
  if (!qword_27F22BC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BC58);
  }

  return result;
}

unint64_t sub_24EC2E704()
{
  result = qword_27F22BC60;
  if (!qword_27F22BC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BC60);
  }

  return result;
}

uint64_t sub_24EC2E758(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA46110 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x68736E6565726373 && a2 == 0xEB0000000073746FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x5073646E65697266 && a2 == 0xEE00676E6979616CLL || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7641676E69746172 && a2 == 0xED00006567617265 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA46130 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x65726E6567 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x74724165726E6567 && a2 == 0xEC0000006B726F77 || (sub_24F92CE08() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x746E657645707061 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x44496D616461 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA56120 == a2)
  {

    return 13;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

id sub_24EC2EC10()
{
  v1 = OBJC_IVAR___AMPLanguageAwareTextStorage_textStorage;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_24EC2ECC4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___AMPLanguageAwareTextStorage_textStorage;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id LanguageAwareTextStorage.__allocating_init(_:)(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  *&v4[OBJC_IVAR___AMPLanguageAwareTextStorage_textStorage] = a1;
  v5 = a1;
  v6 = [v5 delegate];
  *&v4[OBJC_IVAR___AMPLanguageAwareTextStorage_originalTextStorageDelegate] = v6;
  swift_beginAccess();
  v7 = byte_27F236A29;
  objc_allocWithZone(type metadata accessor for LanguageAwareString());
  v8 = v5;
  v9 = sub_24EFF18F8(v8, v7);

  *&v4[OBJC_IVAR___AMPLanguageAwareTextStorage_languageAwareString] = v9;
  v12.receiver = v4;
  v12.super_class = v2;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  [v8 setDelegate_];

  return v10;
}

id LanguageAwareTextStorage.init(_:)(void *a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR___AMPLanguageAwareTextStorage_textStorage] = a1;
  v3 = a1;
  v4 = [v3 delegate];
  *&v2[OBJC_IVAR___AMPLanguageAwareTextStorage_originalTextStorageDelegate] = v4;
  swift_beginAccess();
  v5 = byte_27F236A29;
  objc_allocWithZone(type metadata accessor for LanguageAwareString());
  v6 = v3;
  v7 = sub_24EFF18F8(v6, v5);

  *&v2[OBJC_IVAR___AMPLanguageAwareTextStorage_languageAwareString] = v7;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for LanguageAwareTextStorage();
  v8 = objc_msgSendSuper2(&v10, sel_init);
  [v6 setDelegate_];

  return v8;
}

id sub_24EC2EF68(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + OBJC_IVAR___AMPLanguageAwareTextStorage_originalTextStorageDelegate);
  if (v6)
  {
    v11 = result;
    result = [v6 respondsToSelector_];
    if (result)
    {

      return [v6 textStorage:v11 willProcessEditing:a2 range:a3 changeInLength:{a4, a5}];
    }
  }

  return result;
}

void sub_24EC2F0D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = a2;
  if ((a2 & 2) != 0)
  {
    swift_beginAccess();
    v12 = byte_27F236A29;
    objc_allocWithZone(type metadata accessor for LanguageAwareString());
    v13 = a1;
    v14 = sub_24EFF18F8(v13, v12);

    v15 = *(v6 + OBJC_IVAR___AMPLanguageAwareTextStorage_languageAwareString);
    *(v6 + OBJC_IVAR___AMPLanguageAwareTextStorage_languageAwareString) = v14;

    v10 |= 1uLL;
  }

  v16 = *(v6 + OBJC_IVAR___AMPLanguageAwareTextStorage_originalTextStorageDelegate);
  if (v16)
  {
    if ([v16 respondsToSelector_])
    {
      [v16 textStorage:a1 didProcessEditing:v10 range:a3 changeInLength:{a4, a5}];
    }
  }
}

uint64_t sub_24EC2F2B0(uint64_t a1, void *a2, void *a3, char a4, double a5)
{
  v11 = *(v5 + OBJC_IVAR___AMPLanguageAwareTextStorage_languageAwareString);
  sub_24EFF00E8(a1, a2, a3, a4, a5);
  v13 = v12;

  return v13;
}

id LanguageAwareTextStorage.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LanguageAwareTextStorage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LanguageAwareTextStorage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_24EC2F508@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___AMPLanguageAwareTextStorage_textStorage;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_24EC2F6B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
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

uint64_t sub_24EC2F7A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
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

uint64_t type metadata accessor for SearchPageContainerIntent()
{
  result = qword_27F22BC88;
  if (!qword_27F22BC88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EC2F8B8()
{
  sub_24E637694();
  if (v0 <= 0x3F)
  {
    sub_24E6BCB04();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24EC2F93C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BCA8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EC30124();
  sub_24F92D128();
  v8[15] = 0;
  type metadata accessor for Player(0);
  sub_24E61C064(&qword_27F213E28);
  sub_24F92CCF8();
  if (!v1)
  {
    type metadata accessor for SearchPageContainerIntent();
    v8[14] = 1;
    sub_24F92CCA8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24EC2FAE4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BC98);
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - v8;
  v10 = type metadata accessor for SearchPageContainerIntent();
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EC30124();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v21;
  type metadata accessor for Player(0);
  v24 = 0;
  sub_24E61C064(&qword_27F213E38);
  sub_24F92CC18();
  sub_24E6365D4(v6, v12);
  v23 = 1;
  v14 = sub_24F92CBC8();
  v16 = v15;
  (*(v13 + 8))(v9, v22);
  v17 = &v12[*(v10 + 20)];
  *v17 = v14;
  v17[1] = v16;
  sub_24EC30178(v12, v20);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24EC301DC(v12);
}

uint64_t sub_24EC2FDB8()
{
  if (*v0)
  {
    return 0x6554686372616573;
  }

  else
  {
    return 0x726579616C70;
  }
}

uint64_t sub_24EC2FDF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726579616C70 && a2 == 0xE600000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6554686372616573 && a2 == 0xEA00000000006D72)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24EC2FED4(uint64_t a1)
{
  v2 = sub_24EC30124();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EC2FF10(uint64_t a1)
{
  v2 = sub_24EC30124();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24EC2FF9C@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x726579616C70;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  *(inited + 80) = sub_24E7EDBB4();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24E6364A0(v4, boxed_opaque_existential_1);
  *(inited + 88) = 0x6554686372616573;
  *(inited + 96) = 0xEA00000000006D72;
  v8 = (v4 + *(a1 + 20));
  v10 = *v8;
  v9 = v8[1];
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
  *(inited + 136) = sub_24E605DB4();
  *(inited + 104) = v10;
  *(inited + 112) = v9;

  v11 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
  swift_arrayDestroy();
  v12 = sub_24E80FFAC(v11);

  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a2[4] = result;
  *a2 = v12;
  return result;
}

unint64_t sub_24EC30124()
{
  result = qword_27F22BCA0;
  if (!qword_27F22BCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BCA0);
  }

  return result;
}

uint64_t sub_24EC30178(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchPageContainerIntent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EC301DC(uint64_t a1)
{
  v2 = type metadata accessor for SearchPageContainerIntent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24EC3024C()
{
  result = qword_27F22BCB0;
  if (!qword_27F22BCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BCB0);
  }

  return result;
}

unint64_t sub_24EC302A4()
{
  result = qword_27F22BCB8;
  if (!qword_27F22BCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BCB8);
  }

  return result;
}

unint64_t sub_24EC302FC()
{
  result = qword_27F22BCC0;
  if (!qword_27F22BCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BCC0);
  }

  return result;
}

uint64_t TopChartDiffableSegmentPresenter.__allocating_init(objectGraph:segment:parentPendingPageRender:parentPageRenderMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v8 = sub_24EC307B4(a1, a2, a3, a4);

  return v8;
}

uint64_t TopChartDiffableSegmentPresenter.init(objectGraph:segment:parentPendingPageRender:parentPageRenderMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_24EC307B4(a1, a2, a3, a4);

  return v4;
}

uint64_t sub_24EC3045C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + qword_27F22BCD8);
  v3 = *(v0 + qword_27F22BCC8);
  v4 = *(v0 + qword_27F22BCD0);

  return _s12GameStoreKit39TopChartDiffableSegmentContentPresenterC11objectGraph7segment17pendingPageRender04pageO7MetricsAC9JetEngine010BaseObjectK0C_AA0deG0CAA07PendingnO0CSgAH0noqI0CSgtcfC_0(v1, v2, v3, v4);
}

uint64_t sub_24EC304E8(uint64_t a1, char a2)
{
  sub_24F2F69DC(a1, a2);
  v5 = *(a1 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shortName);
  v4 = *(a1 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shortName + 8);
  v6 = (v2 + qword_27F39C068);
  swift_beginAccess();
  *v6 = v5;
  v6[1] = v4;

  v8 = *(a1 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_longName);
  v7 = *(a1 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_longName + 8);
  v9 = (v2 + qword_27F39C070);
  swift_beginAccess();
  *v9 = v8;
  v9[1] = v7;
}

uint64_t sub_24EC305EC()
{
}

uint64_t TopChartDiffableSegmentPresenter.deinit()
{
  v0 = sub_24EBBEB60();

  return v0;
}

uint64_t TopChartDiffableSegmentPresenter.__deallocating_deinit()
{
  sub_24EBBEB60();

  return swift_deallocClassInstance();
}

uint64_t sub_24EC307B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v54 = a4;
  v53 = a3;
  v62 = a1;
  v52 = sub_24F928188();
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v50 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F92BEE8();
  v60 = *(v10 - 8);
  v61 = v10;
  MEMORY[0x28223BE20](v10);
  v58 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_24F92BE88();
  MEMORY[0x28223BE20](v57);
  v56 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F927DC8();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v50 - v15;
  v55 = &v50 - v15;
  v17 = (v5 + qword_27F39C068);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v5 + qword_27F39C070);
  *v18 = 0;
  v18[1] = 0;
  *(v5 + qword_27F22BCD8) = a2;
  v19 = *(a2 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shortName);
  v20 = *(a2 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shortName + 8);
  swift_beginAccess();
  *v17 = v19;
  v17[1] = v20;
  v21 = *(a2 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_longName);
  v22 = *(a2 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_longName + 8);
  swift_beginAccess();
  *v18 = v21;
  v18[1] = v22;
  *(v5 + qword_27F22BCC8) = a3;
  *(v5 + qword_27F22BCD0) = a4;
  v23 = sub_24F91F4A8();
  (*(*(v23 - 8) + 56))(v16, 1, 1, v23);
  v66 = 0;
  memset(v65, 0, sizeof(v65));
  *(v5 + qword_27F39CC00) = 0;
  *(v5 + qword_27F39CC10) = MEMORY[0x277D84F90];
  *(v5 + qword_27F2326C8) = 0;
  v24 = *(*v5 + 640);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACC0);
  v26 = *(*(v25 - 8) + 56);
  v26(v5 + v24, 1, 1, v25);
  v27 = *(*v5 + 648);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB90);
  (*(*(v28 - 8) + 56))(v5 + v27, 1, 1, v28);
  v29 = *(*v5 + 656);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACB0);
  (*(*(v30 - 8) + 56))(v5 + v29, 1, 1, v30);
  v26(v5 + *(*v5 + 664), 1, 1, v25);
  v31 = *(*v5 + 672);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA0);
  (*(*(v32 - 8) + 56))(v5 + v31, 1, 1, v32);
  v33 = *(*v5 + 680);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA8);
  (*(*(v34 - 8) + 56))(v5 + v33, 1, 1, v34);
  v35 = *(*v5 + 688);
  sub_24E74EC40();

  v59 = a2;
  swift_retain_n();

  v36 = v54;

  sub_24F927DA8();
  v64 = MEMORY[0x277D84F90];
  sub_24EBD4288();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30);
  sub_24EC3122C();
  sub_24F92C6A8();
  (*(v60 + 104))(v58, *MEMORY[0x277D85260], v61);
  *(v5 + v35) = sub_24F92BF38();
  sub_24EBD3128(v5 + *(*v5 + 696));
  v37 = (v5 + *(*v5 + 704));
  *v37 = 0u;
  v37[1] = 0u;
  *(v37 + 25) = 0u;
  v38 = *(*v5 + 712);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB0);
  swift_allocObject();
  *(v5 + v38) = sub_24F92ADA8();
  v39 = *(*v5 + 720);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB8);
  swift_allocObject();
  *(v5 + v39) = sub_24F92ADA8();
  v40 = *(*v5 + 728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8);
  swift_allocObject();
  *(v5 + v40) = sub_24F92ADA8();
  v41 = v36;
  *(v5 + *(*v5 + 736)) = 0;
  v42 = (v5 + *(*v5 + 752));
  *v42 = 0;
  v42[1] = 0;
  v43 = v55;
  sub_24E60169C(v55, v5 + qword_27F39CBF8, &qword_27F228530);
  sub_24E60169C(v65, v5 + *(*v5 + 744), &qword_27F229490);
  v44 = type metadata accessor for InlineUnifiedMessagePresenter();
  v63.receiver = objc_allocWithZone(v44);
  v63.super_class = v44;
  *(v5 + qword_27F39CC08) = objc_msgSendSuper2(&v63, sel_init);
  if (v41)
  {
    sub_24F92A0F8();
    v64 = v41;

    v45 = v50;
    sub_24F928168();
    v46 = sub_24F928F88();
    (*(v51 + 8))(v45, v52);
  }

  else
  {
    v46 = v62;
  }

  v47 = sub_24EBBA0E0(v46, 0, 0, 0);
  v48 = *(*v47 + 1112);

  *(v47 + qword_27F39CC00) = v48(v59);

  sub_24EBC6C24(0);

  sub_24E601704(v65, &qword_27F229490);
  sub_24E601704(v43, &qword_27F228530);
  return v47;
}

uint64_t type metadata accessor for TopChartDiffableSegmentPresenter()
{
  result = qword_27F22BCE0;
  if (!qword_27F22BCE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24EC3122C()
{
  result = qword_27F2394F0;
  if (!qword_27F2394F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F22BD30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2394F0);
  }

  return result;
}

uint64_t sub_24EC312A0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_24E69A5C4(0, &qword_27F22BDE0);
    v4 = sub_24F92B5A8();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t DeviceAppStateDataSource.Store.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

char *DeviceAppStateDataSource.init(for:isBetaAppsDataSource:)(char *a1, char a2)
{
  v3 = v2;
  v6 = sub_24F92BEE8();
  v37 = *(v6 - 8);
  v38 = v6;
  MEMORY[0x28223BE20](v6);
  v36 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F927DC8();
  MEMORY[0x28223BE20](v8 - 8);
  v35[4] = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F92BE88();
  v35[1] = *(v10 - 8);
  v35[2] = v10;
  MEMORY[0x28223BE20](v10);
  v35[3] = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F92AAB8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35[0] = sub_24F92AAE8();
  v16 = *(v35[0] - 8);
  MEMORY[0x28223BE20](v35[0]);
  v18 = v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  *&v3[OBJC_IVAR____TtC12GameStoreKit24DeviceAppStateDataSource_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC12GameStoreKit24DeviceAppStateDataSource_expectedAppStates] = MEMORY[0x277D84F98];
  *&v3[OBJC_IVAR____TtC12GameStoreKit24DeviceAppStateDataSource_previouslyInstalledLibraryItems] = 0;
  v20 = OBJC_IVAR____TtC12GameStoreKit24DeviceAppStateDataSource_availableUpdatesCache;
  v21 = MEMORY[0x277D84F90];
  *&v3[v20] = sub_24E60E754(MEMORY[0x277D84F90]);
  v22 = OBJC_IVAR____TtC12GameStoreKit24DeviceAppStateDataSource_greenTeaLogger;
  *&v3[v22] = [objc_allocWithZone(ASKGreenTeaLogger) init];
  v23 = OBJC_IVAR____TtC12GameStoreKit24DeviceAppStateDataSource_adamIdsByBundleId;
  *&v3[v23] = sub_24E60E870(v21);
  v24 = OBJC_IVAR____TtC12GameStoreKit24DeviceAppStateDataSource_betaAppBundleVersions;
  *&v3[v24] = sub_24E60E984(v21);
  v3[OBJC_IVAR____TtC12GameStoreKit24DeviceAppStateDataSource_store] = v19;
  v3[OBJC_IVAR____TtC12GameStoreKit24DeviceAppStateDataSource_isBetaAppsDataSource] = a2;
  v25 = objc_opt_self();
  if ((a2 & 1) == 0)
  {
    v29 = [v25 queryForStoreApps];
    *&v3[OBJC_IVAR____TtC12GameStoreKit24DeviceAppStateDataSource_appQuery] = v29;
    v28 = &unk_24F98E810;
    v27 = 0xD000000000000018;
    if (qword_27F210560 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  v26 = [v25 queryForBetaApps];
  *&v3[OBJC_IVAR____TtC12GameStoreKit24DeviceAppStateDataSource_appQuery] = v26;
  v27 = 0xD000000000000021;
  v28 = "parentPageRenderMetrics";
  if (qword_27F210560 != -1)
  {
LABEL_3:
    swift_once();
  }

LABEL_5:
  v30 = __swift_project_value_buffer(v12, qword_27F39C380);
  (*(v13 + 16))(v15, v30, v12);
  sub_24F92AAD8();
  (*(v16 + 32))(&v3[OBJC_IVAR____TtC12GameStoreKit24DeviceAppStateDataSource_logger], v18, v35[0]);
  sub_24E69A5C4(0, &qword_27F222300);
  v40 = v27;
  v41 = v28 | 0x8000000000000000;
  MEMORY[0x253050C20](0x517373656363612ELL, 0xEC00000065756575);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD20);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_24F93DE60;
  sub_24F92BE78();
  v40 = v31;
  sub_24E97238C(&qword_27F2394E0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30);
  sub_24E9723D4(&qword_27F2394F0, &unk_27F22BD30);
  sub_24F92C6A8();
  sub_24F927DA8();
  (*(v37 + 104))(v36, *MEMORY[0x277D85260], v38);
  *&v3[OBJC_IVAR____TtC12GameStoreKit24DeviceAppStateDataSource_accessQueue] = sub_24F92BF38();
  v32 = type metadata accessor for DeviceAppStateDataSource();
  v39.receiver = v3;
  v39.super_class = v32;
  v33 = objc_msgSendSuper2(&v39, sel_init);
  [*&v33[OBJC_IVAR____TtC12GameStoreKit24DeviceAppStateDataSource_appQuery] setObserver_];
  return v33;
}

uint64_t sub_24EC31A9C(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC12GameStoreKit24DeviceAppStateDataSource_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_24EC31B08(uint64_t *a1))(uint64_t, char)
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
  v5 = OBJC_IVAR____TtC12GameStoreKit24DeviceAppStateDataSource_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_24EC31BA8;
}

uint64_t sub_24EC31BBC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit24DeviceAppStateDataSource_expectedAppStates;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_24EC31C6C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit24DeviceAppStateDataSource_expectedAppStates;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_24EC31D24(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v171 = MEMORY[0x277D84FA0];
  if (a1 >> 62)
  {
    goto LABEL_114;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v133 = a2;
    if (v5)
    {
      break;
    }

    v92 = MEMORY[0x277D84FA0];
LABEL_95:
    v93 = sub_24EC3318C(v92, a4);

    swift_beginAccess();

    sub_24EAE4138(v94);
    a1 = swift_endAccess();
    v95 = 0;
    a2 = v93 + 56;
    v96 = 1 << *(v93 + 32);
    v97 = -1;
    if (v96 < 64)
    {
      v97 = ~(-1 << v96);
    }

    v98 = v97 & *(v93 + 56);
    v99 = OBJC_IVAR____TtC12GameStoreKit24DeviceAppStateDataSource_availableUpdatesCache;
    v100 = (v96 + 63) >> 6;
    v135 = v93;
    while (v98)
    {
LABEL_105:
      v102 = (*(v93 + 48) + ((v95 << 10) | (16 * __clz(__rbit64(v98)))));
      v103 = *v102;
      v104 = v102[1];
      swift_beginAccess();

      v105 = sub_24E7728F0(v103, v104);
      if (v106)
      {
        v107 = v105;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v109 = *(v133 + v99);
        *v166 = v109;
        *(v133 + v99) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_24E8B361C();
          v109 = *v166;
        }

        sub_24EB545B0(v107, v109);
        *(v133 + v99) = v109;
        v93 = v135;
      }

      v98 &= v98 - 1;
      swift_endAccess();
    }

    while (1)
    {
      v101 = v95 + 1;
      if (__OFADD__(v95, 1))
      {
        break;
      }

      if (v101 >= v100)
      {
      }

      v98 = *(a2 + 8 * v101);
      ++v95;
      if (v98)
      {
        v95 = v101;
        goto LABEL_105;
      }
    }

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
    v111 = a1;
    v112 = a4;
    v113 = sub_24F92C738();
    a4 = v112;
    v5 = v113;
    a1 = v111;
  }

  v116 = a4;
  v120 = OBJC_IVAR____TtC12GameStoreKit24DeviceAppStateDataSource_betaAppBundleVersions;
  v128 = OBJC_IVAR____TtC12GameStoreKit24DeviceAppStateDataSource_isBetaAppsDataSource;
  v118 = OBJC_IVAR____TtC12GameStoreKit24DeviceAppStateDataSource_store;
  v131 = a1 & 0xC000000000000001;
  v132 = OBJC_IVAR____TtC12GameStoreKit24DeviceAppStateDataSource_adamIdsByBundleId;
  v6 = OBJC_IVAR____TtC12GameStoreKit24DeviceAppStateDataSource_expectedAppStates;
  v7 = a1;
  v124 = OBJC_IVAR____TtC12GameStoreKit24DeviceAppStateDataSource_availableUpdatesCache;
  swift_beginAccess();
  v126 = v6;
  a1 = swift_beginAccess();
  v8 = v7;
  v9 = 0;
  v123 = v7 & 0xFFFFFFFFFFFFFF8;
  v10 = &selRef_systemBackgroundColor;
  v11 = &selRef_systemBackgroundColor;
  v129 = v5;
  v130 = v7;
  while (1)
  {
    if (v131)
    {
      a1 = MEMORY[0x253052270](v9, v8);
    }

    else
    {
      if (v9 >= *(v123 + 16))
      {
        goto LABEL_112;
      }

      a1 = *(v8 + 8 * v9 + 32);
    }

    v12 = a1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_110;
    }

    v134 = v9 + 1;
    if ([a1 v10[380]])
    {
      break;
    }

LABEL_36:
    if ([v12 v11[381]] == *(a2 + v128))
    {
      if ([v12 isFamilyShared] && (objc_msgSend(v12, sel_isOpenable) & 1) == 0 && (objc_msgSend(v12, sel_isUpdateAvailable) & 1) == 0)
      {
        v45 = [v12 progress];
        if (!v45)
        {
          goto LABEL_5;
        }
      }

      if ([v12 isInstalled])
      {
        goto LABEL_45;
      }

      v46 = [v12 progress];
      if (v46)
      {

LABEL_45:
        *&v151 = [v12 v10[380]];
        v47 = sub_24F92CD88();
        v49 = v48;

        sub_24ED7E42C(&v151, v47, v49);

        v50 = *(a2 + v124);
        if (*(v50 + 16))
        {

          v51 = sub_24E7728F0(v47, v49);
          if (v52)
          {
            v53 = *(*(v50 + 56) + 24 * v51);

            v54 = [v12 storeExternalVersionID] < v53;
          }

          else
          {

            v54 = 0;
          }
        }

        else
        {
          v54 = 0;
        }

        sub_24EC32BEC(v12, v54, &v151);
        v168 = v151;
        v169 = v152;
        v170 = v153;
        if ((v154 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
        {
          if (([v12 isUpdateAvailable] & 1) != 0 && (v55 = objc_msgSend(v12, sel_updateBuyParams)) != 0)
          {
            v56 = v55;
            v57 = sub_24F92B0D8();
            v59 = v58;

            if ([v12 v11[381]])
            {

              goto LABEL_55;
            }

            v64 = v115 & 0x101 | 0x2000000000000000;
            *v166 = v57;
            *&v166[8] = v59;
            v115 &= 0x101u;
LABEL_64:
            *&v167 = v64;
          }

          else
          {
LABEL_55:
            if ([v12 hasMessagesExtension] && (*(a2 + v118) == 1 || objc_msgSend(v12, sel_isLaunchProhibited)))
            {
              v60 = [v12 storeExternalVersionID];
              v61 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
              *v166 = 1;
              *&v166[8] = v61;
              v119 = v119 & 0x101 | 0x7000000000000000;
              *&v167 = v119;
            }

            else
            {
              if (![v12 isLaunchProhibited])
              {
                v62 = [v12 storeExternalVersionID];
                v63 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
                v64 = v117 & 0x101 | 0x7000000000000000;
                *v166 = 0;
                *&v166[8] = v63;
                v117 &= 0x101u;
                goto LABEL_64;
              }

              *v166 = 1;
              memset(&v166[8], 0, 40);
              v167 = xmmword_24F966510;
            }
          }
        }

        else
        {
          *v166 = v168;
          *&v166[16] = v169;
          *&v166[32] = v170;
          v167 = v154;
        }

        if (([v12 v11[381]] & 1) == 0 && v167 >> 60 == 7)
        {
          v65 = *(a2 + v124);
          if (*(v65 + 16))
          {

            v66 = sub_24E7728F0(v47, v49);
            if (v67)
            {
              v68 = (*(v65 + 56) + 24 * v66);
              v70 = *v68;
              v69 = v68[1];
              v71 = v68[2];

              if ([v12 storeExternalVersionID] < v70)
              {
                sub_24E601704(v166, &unk_27F22BE00);
                *&v162 = v69;
                *(&v162 + 1) = v71;
                v114 = v114 & 0x101 | 0x2000000000000000;
                *&v165 = v114;
                goto LABEL_75;
              }

              swift_beginAccess();
              sub_24E98FECC(v47, v49);
              swift_endAccess();
            }
          }
        }

        v162 = *v166;
        v163 = *&v166[16];
        v164 = *&v166[32];
        v165 = v167;
LABEL_75:
        v72 = *(a2 + v126);
        v127 = v49;
        v125 = v47;
        if (*(v72 + 16))
        {

          v73 = sub_24E7728F0(v47, v49);
          if (v74)
          {
            v75 = (*(v72 + 56) + (v73 << 6));
            v77 = v75[2];
            v76 = v75[3];
            v78 = v75[1];
            v151 = *v75;
            v152 = v78;
            v153 = v77;
            v154 = v76;
            v80 = *(&v151 + 1);
            v79 = v151;
            v82 = *(&v78 + 1);
            v81 = v78;
            v121 = *(&v77 + 1);
            v83 = v77;
            v85 = *(&v76 + 1);
            v84 = v76;
            sub_24E8B9478(&v151, &v147);

            v159 = v162;
            v160 = v163;
            v86 = v165;
            v161 = v164;
            if ((v84 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
            {
              v87 = v85;
              v88 = v121;
              goto LABEL_81;
            }

            v151 = __PAIR128__(v80, v79);
            v152 = __PAIR128__(v82, v81);
            v153 = __PAIR128__(v121, v83);
            v154 = __PAIR128__(v85, v84);
            v147 = __PAIR128__(v80, v79);
            v148 = __PAIR128__(v82, v81);
            v149 = __PAIR128__(v121, v83);
            v150 = __PAIR128__(v85, v84);
            v87 = v85;
            if ((v165 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
            {
              v122 = v165;
              v143 = v151;
              v144 = v152;
              v145 = v153;
              v146 = v154;
              sub_24E9726D0(&v162, v142);
              sub_24E9726D0(&v151, v142);
              sub_24E88D2AC(&v143);
              v88 = v121;
              goto LABEL_85;
            }

            v137 = v162;
            v138 = v163;
            v139 = v164;
            v140 = v165;
            sub_24E9726D0(&v162, v136);
            sub_24E9726D0(&v151, v136);
            v91 = _s12GameStoreKit14LegacyAppStateO2eeoiySbAC_ACtFZ_0(&v147, &v137);
            v141[0] = v137;
            v141[1] = v138;
            v141[2] = v139;
            v141[3] = v140;
            sub_24E88D2AC(v141);
            v142[0] = v147;
            v142[1] = v148;
            v142[2] = v149;
            v142[3] = v150;
            sub_24E88D2AC(v142);
            v143 = __PAIR128__(v80, v79);
            v144 = __PAIR128__(v82, v81);
            v145 = __PAIR128__(v121, v83);
            v146 = __PAIR128__(v85, v84);
            sub_24E601704(&v143, &unk_27F22BE00);
            if ((v91 & 1) == 0)
            {
              goto LABEL_86;
            }

            v89 = &v162;
LABEL_83:
            a1 = sub_24E601704(v89, &unk_27F22BE00);
            a2 = v133;
            v10 = &selRef_systemBackgroundColor;
            v11 = &selRef_systemBackgroundColor;
            goto LABEL_6;
          }
        }

        v87 = 0;
        v88 = 0;
        v83 = 0;
        v82 = 0;
        v81 = 0;
        v80 = 0;
        v79 = 0;
        v159 = v162;
        v160 = v163;
        v86 = v165;
        v161 = v164;
        v84 = 0x3FFFFFEFELL;
LABEL_81:
        if ((v86 & 0xFFFFFFFFFFFFFEFELL) != 0x3FFFFFEFELL)
        {
          v122 = v86;
          sub_24E9726D0(&v162, &v151);
LABEL_85:
          *&v151 = v79;
          *(&v151 + 1) = v80;
          *&v152 = v81;
          *(&v152 + 1) = v82;
          *&v153 = v83;
          *(&v153 + 1) = v88;
          *&v154 = v84;
          *(&v154 + 1) = v87;
          v155 = v159;
          v156 = v160;
          v157 = v161;
          v158 = v122;
          sub_24E601704(&v151, &qword_27F222D38);
LABEL_86:
          a2 = v133;
          v10 = &selRef_systemBackgroundColor;
          v11 = &selRef_systemBackgroundColor;
          swift_beginAccess();
          v172[0] = v162;
          v172[1] = v163;
          v172[2] = v164;
          v172[3] = v165;
          v151 = v162;
          v152 = v163;
          v153 = v164;
          v154 = v165;
          sub_24E8B9478(&v151, &v147);
          v90 = swift_isUniquelyReferenced_nonNull_native();
          *&v147 = *(v133 + v126);
          *(v133 + v126) = 0x8000000000000000;
          sub_24E820174(v172, v125, v127, v90);
          *(v133 + v126) = v147;
          swift_endAccess();
          swift_beginAccess();
          sub_24ED7E42C(&v143, v125, v127);
          swift_endAccess();

          sub_24E601704(&v162, &unk_27F22BE00);

          goto LABEL_6;
        }

        sub_24E9726D0(&v162, &v151);

        sub_24E601704(&v162, &unk_27F22BE00);
        *&v151 = v79;
        *(&v151 + 1) = v80;
        *&v152 = v81;
        *(&v152 + 1) = v82;
        *&v153 = v83;
        *(&v153 + 1) = v88;
        *&v154 = v84;
        *(&v154 + 1) = v87;
        v89 = &v151;
        goto LABEL_83;
      }
    }

LABEL_5:

LABEL_6:
    ++v9;
    v8 = v130;
    if (v134 == v129)
    {
      v92 = v171;
      a4 = v116;
      goto LABEL_95;
    }
  }

  *&v151 = [v12 v10[380]];
  v13 = sub_24F92CD88();
  v15 = v14;
  v16 = [v12 bundleID];
  v17 = sub_24F92B0D8();
  v19 = v18;

  swift_beginAccess();

  v20 = swift_isUniquelyReferenced_nonNull_native();
  *v166 = *(a2 + v132);
  v21 = *v166;
  *(a2 + v132) = 0x8000000000000000;
  a2 = sub_24E76D644(v17, v19);
  v23 = *(v21 + 16);
  v24 = (v22 & 1) == 0;
  a1 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    goto LABEL_111;
  }

  v25 = v22;
  if (*(v21 + 24) >= a1)
  {
    if (v20)
    {
      if ((v22 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      a1 = sub_24E8B37A4();
      if ((v25 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_21;
  }

  sub_24E8A3614(a1, v20);
  a1 = sub_24E76D644(v17, v19);
  if ((v25 & 1) == (v26 & 1))
  {
    a2 = a1;
    if ((v25 & 1) == 0)
    {
LABEL_17:
      v27 = *v166;
      *(*v166 + 8 * (a2 >> 6) + 64) |= 1 << a2;
      v28 = (v27[6] + 16 * a2);
      *v28 = v17;
      v28[1] = v19;
      v29 = (v27[7] + 16 * a2);
      *v29 = v13;
      v29[1] = v15;
      v30 = v27[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_113;
      }

      v27[2] = v32;
LABEL_22:
      a2 = v133;
      *(v133 + v132) = v27;
      swift_endAccess();
      v11 = &selRef_systemBackgroundColor;
      if ([v12 isBetaApp])
      {
        v34 = [v12 bundleShortVersion];
        if (v34)
        {
          v35 = v34;
          v36 = sub_24F92B0D8();
          v38 = v37;

          v39 = HIBYTE(v38) & 0xF;
          if ((v38 & 0x2000000000000000) == 0)
          {
            v39 = v36 & 0xFFFFFFFFFFFFLL;
          }

          if (v39)
          {
            goto LABEL_32;
          }
        }

        v40 = [v12 bundleVersion];
        if (v40)
        {
          v41 = v40;
          v36 = sub_24F92B0D8();
          v38 = v42;

          v43 = HIBYTE(v38) & 0xF;
          if ((v38 & 0x2000000000000000) == 0)
          {
            v43 = v36 & 0xFFFFFFFFFFFFLL;
          }

          if (v43)
          {
LABEL_32:
            swift_beginAccess();
            v44 = swift_isUniquelyReferenced_nonNull_native();
            *v166 = *(v133 + v120);
            *(v133 + v120) = 0x8000000000000000;
            sub_24E8202B8(v36, v38, v13, v15, v44);

            *(v133 + v120) = *v166;
            swift_endAccess();
LABEL_35:
            v10 = &selRef_systemBackgroundColor;
            goto LABEL_36;
          }
        }
      }

      goto LABEL_35;
    }

LABEL_21:

    v27 = *v166;
    v33 = (*(*v166 + 56) + 16 * a2);
    *v33 = v13;
    v33[1] = v15;

    goto LABEL_22;
  }

  result = sub_24F92CF88();
  __break(1u);
  return result;
}

void sub_24EC32BEC(void *a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v5 = [a1 isUpdateAvailable] | a2;
  v6 = [a1 progressPhase];
  if (v6 > 2)
  {
    if (v6 <= 4)
    {
      if (v6 == 3)
      {
        v7 = [a1 progress];
        if (v7)
        {
LABEL_22:
          v28 = v7;
          [v7 fractionCompleted];
          v30 = v29;
          v31 = v28;
          v32 = [a1 downloadProgress];
          v33 = [a1 installProgress];
          v16 = [a1 postProcessProgress];
          v17 = [a1 essentialBackgroundAssetDownloadEstimate];
          v34 = [a1 hasPostProcessing];
          v19 = [a1 storeExternalVersionID];

          v35 = 0x6000000000000000;
          if (v5)
          {
            v35 = 0x6000000000000100;
          }

          *a3 = v30;
          a3[1] = v28;
          a3[2] = v32;
          v21 = v35 | v34;
          a3[3] = v33;
LABEL_25:
          a3[4] = v16;
          a3[5] = v17;
LABEL_39:
          a3[6] = v21;
          v27 = 7;
          goto LABEL_40;
        }
      }

      else
      {
        v7 = [a1 progress];
        if (v7)
        {
          goto LABEL_22;
        }
      }

      goto LABEL_32;
    }

    if (v6 != 5)
    {
      if (v6 == 7)
      {
        v22 = [a1 progress];
        if (v22)
        {
          v23 = v22;
          [v22 fractionCompleted];
          v25 = v24;
        }

        else
        {
          v25 = 0;
        }

        v47 = [a1 progress];
        if (!v47)
        {
          v47 = [objc_allocWithZone(MEMORY[0x277CCAC48]) init];
        }

        v48 = [a1 downloadProgress];
        v49 = [a1 installProgress];
        v50 = [a1 postProcessProgress];
        v51 = [a1 essentialBackgroundAssetDownloadEstimate];
        v52 = [a1 hasPostProcessing];
        v19 = [a1 storeExternalVersionID];
        v53 = 0x4000000000000000;
        *a3 = v25;
        a3[1] = v47;
        a3[2] = v48;
        if (v5)
        {
          v53 = 0x4000000000000100;
        }

        v21 = v53 | v52;
        a3[3] = v49;
        a3[4] = v50;
        a3[5] = v51;
        goto LABEL_39;
      }

      goto LABEL_32;
    }

    v36 = [a1 postProcessProgress];
    if (!v36)
    {
LABEL_32:
      v19 = 0;
      *(a3 + 1) = 0u;
      *(a3 + 2) = 0u;
      *a3 = 0u;
      v21 = 0x3FFFFFEFELL;
      goto LABEL_39;
    }

    v9 = v36;
    v37 = [a1 progress];
    if (v37)
    {
      v38 = v37;
      [v37 fractionCompleted];
      v40 = v39;
      v41 = v38;
      v42 = [a1 downloadProgress];
      v43 = v9;
      v44 = [a1 essentialBackgroundAssetDownloadEstimate];
      v45 = [a1 hasPostProcessing];
      v19 = [a1 storeExternalVersionID];

      v46 = 0x5000000000000000;
      if (v5)
      {
        v46 = 0x5000000000000100;
      }

      *a3 = v40;
      a3[1] = v38;
      a3[2] = v42;
      v21 = v46 | v45;
      a3[3] = 0;
      a3[4] = v9;
      a3[5] = v44;
      goto LABEL_39;
    }

LABEL_31:

    goto LABEL_32;
  }

  if (v6)
  {
    if (v6 != 1)
    {
      if (v6 != 2)
      {
        goto LABEL_32;
      }

      v8 = [a1 downloadProgress];
      if (!v8)
      {
        goto LABEL_32;
      }

      v9 = v8;
      v10 = [a1 progress];
      if (v10)
      {
        v11 = v10;
        [v10 fractionCompleted];
        v13 = v12;
        v14 = v11;
        v15 = v9;
        v16 = [a1 postProcessProgress];
        v17 = [a1 essentialBackgroundAssetDownloadEstimate];
        v18 = [a1 hasPostProcessing];
        v19 = [a1 storeExternalVersionID];

        v20 = 0x5000000000000000;
        if (v5)
        {
          v20 = 0x5000000000000100;
        }

        *a3 = v13;
        a3[1] = v11;
        a3[2] = v9;
        v21 = v20 | v18;
        a3[3] = 0;
        goto LABEL_25;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v26 = [a1 installError];
    if (!v26)
    {
      goto LABEL_32;
    }
  }

  v19 = 0;
  *a3 = 0;
  v27 = 6;
LABEL_40:
  a3[v27] = v19;
}

uint64_t sub_24EC3318C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC12GameStoreKit24DeviceAppStateDataSource_previouslyInstalledLibraryItems;
  v7 = *(v2 + OBJC_IVAR____TtC12GameStoreKit24DeviceAppStateDataSource_previouslyInstalledLibraryItems);
  v8 = MEMORY[0x277D84FA0];
  if (v7)
  {
    if (*(a1 + 16) <= *(v7 + 16) >> 3)
    {

      sub_24F7A6B7C(a1);
      v8 = v7;
    }

    else
    {

      v8 = sub_24F7A7450(a1, v7);
    }
  }

  v37 = a1;
  v38 = v6;
  v36 = a2;
  if (a2)
  {
    v8 = sub_24EBE053C(a2, v8);
  }

  v9 = v8 + 56;
  v10 = 1 << *(v8 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v8 + 56);
  v13 = OBJC_IVAR____TtC12GameStoreKit24DeviceAppStateDataSource_expectedAppStates;
  v14 = OBJC_IVAR____TtC12GameStoreKit24DeviceAppStateDataSource_betaAppBundleVersions;
  v15 = (v10 + 63) >> 6;

  v17 = 0;
  v40 = v8;
  v41 = v13;
  v39 = v14;
  while (v12)
  {
LABEL_17:
    v19 = (*(v8 + 48) + ((v17 << 10) | (16 * __clz(__rbit64(v12)))));
    v21 = *v19;
    v20 = v19[1];
    swift_beginAccess();

    v22 = sub_24E7728F0(v21, v20);
    if (v23)
    {
      v24 = v22;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = *(v3 + v41);
      *(v3 + v41) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_24E8B347C();
      }

      v27 = *(v26 + 56) + (v24 << 6);
      sub_24EC36E00(*v27, *(v27 + 8), *(v27 + 16), *(v27 + 24), *(v27 + 32), *(v27 + 40), *(v27 + 48));
      sub_24EB551D0(v24, v26);
      *(v3 + v41) = v26;
      v14 = v39;
    }

    swift_endAccess();
    swift_beginAccess();
    v28 = sub_24E7728F0(v21, v20);
    if (v29)
    {
      v30 = v28;
      v31 = swift_isUniquelyReferenced_nonNull_native();
      v32 = *(v3 + v14);
      *(v3 + v14) = 0x8000000000000000;
      if (!v31)
      {
        sub_24E8B3304();
      }

      sub_24EB53354(v30, v32);
      *(v3 + v14) = v32;
    }

    v12 &= v12 - 1;
    swift_endAccess();

    v8 = v40;
  }

  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      return result;
    }

    if (v18 >= v15)
    {
      break;
    }

    v12 = *(v9 + 8 * v18);
    ++v17;
    if (v12)
    {
      v17 = v18;
      goto LABEL_17;
    }
  }

  if (v36)
  {
    if (*(v3 + v38))
    {
      v33 = *(v3 + v38);
    }

    else
    {
      v33 = MEMORY[0x277D84FA0];
    }

    v34 = sub_24F146D7C(v37, v33);
    if (*(v8 + 16) <= *(v34 + 16) >> 3)
    {
      v42 = v34;
      sub_24F7A6B7C(v8);
      v35 = v42;
    }

    else
    {
      v35 = sub_24F7A7450(v8, v34);
    }

    *(v3 + v38) = v35;
  }

  else
  {
    *(v3 + v38) = v37;
  }

  return v8;
}

uint64_t sub_24EC334F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v26 = a1;
  v27 = a2;
  v4 = sub_24F922028();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  sub_24F929778();
  sub_24F929768();
  sub_24F921FF8();
  if (*(v2 + OBJC_IVAR____TtC12GameStoreKit24DeviceAppStateDataSource_isBetaAppsDataSource))
  {
    v11 = "DeviceAppStateDataSource.BetaApps[ASDAppQuery]:refreshData";
  }

  else
  {
    v11 = "DeviceAppStateDataSource[ASDAppQuery]:refreshData";
  }

  if (*(v2 + OBJC_IVAR____TtC12GameStoreKit24DeviceAppStateDataSource_isBetaAppsDataSource))
  {
    v12 = 58;
  }

  else
  {
    v12 = 49;
  }

  sub_24F92C058();
  v13 = sub_24F929768();
  v24 = v11;
  sub_24F921FE8();

  if (*(v3 + OBJC_IVAR____TtC12GameStoreKit24DeviceAppStateDataSource_store) != 1)
  {
    [*(v3 + OBJC_IVAR____TtC12GameStoreKit24DeviceAppStateDataSource_greenTeaLogger) willRequestAppList];
  }

  v25 = *(v3 + OBJC_IVAR____TtC12GameStoreKit24DeviceAppStateDataSource_appQuery);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(v7, v10, v4);
  v15 = (*(v5 + 80) + 33) & ~*(v5 + 80);
  v16 = (v6 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = v4;
  v18 = swift_allocObject();
  *(v18 + 16) = v24;
  *(v18 + 24) = v12;
  *(v18 + 32) = 2;
  (*(v5 + 32))(v18 + v15, v7, v4);
  *(v18 + v16) = v14;
  v19 = (v18 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8));
  v21 = v26;
  v20 = v27;
  *v19 = v26;
  v19[1] = v20;
  aBlock[4] = sub_24EC35660;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EC312A0;
  aBlock[3] = &block_descriptor_62;
  v22 = _Block_copy(aBlock);
  sub_24E5FCA4C(v21);

  [v25 executeQueryWithResultHandler_];
  _Block_release(v22);
  return (*(v5 + 8))(v10, v17);
}

void sub_24EC33804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(__int128 *), uint64_t a9)
{
  v26 = a9;
  v27 = a8;
  v10 = sub_24F927D88();
  v25 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F92C048();
  sub_24F929778();
  v13 = sub_24F929768();
  sub_24F921FE8();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v15 = Strong;
  if (a1)
  {
    swift_unknownObjectWeakInit();
    v16 = swift_allocObject();
    *(v16 + 16) = MEMORY[0x277D84FA0];
    v17 = swift_allocObject();
    v17[2] = a1;
    v17[3] = v15;
    v17[4] = v16;
    v17[5] = 0;
    v24[1] = *(v15 + OBJC_IVAR____TtC12GameStoreKit24DeviceAppStateDataSource_accessQueue);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0);
    v18 = v25;
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_24F93DE60;

    v24[0] = v15;
    sub_24F927D78();
    *&v29 = v19;
    sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
    sub_24E9723D4(&qword_27F222940, &qword_27F222310);
    v20 = sub_24F92C6A8();
    MEMORY[0x28223BE20](v20);
    v24[-2] = sub_24EC37330;
    v24[-1] = v17;
    sub_24F92BF08();

    (*(v18 + 8))(v12, v10);
    swift_beginAccess();
    v21 = *(v16 + 16);
    v22 = *(v21 + 16);
    if (v22)
    {
      v15 = sub_24EAE67DC(*(*(v16 + 16) + 16), 0);
      v23 = sub_24EAE7C84(&v29, v15 + 4, v22, v21);

      sub_24E6586B4();
      if (v23 != v22)
      {
        __break(1u);
        goto LABEL_6;
      }
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
    }

    v30 = 0u;
    v31 = 0u;
    v29 = 0u;
    v32 = -1;
    sub_24EC33C34(v15, &v29, v28, v27);

    MEMORY[0x2530543E0](v28);
    return;
  }

LABEL_6:

LABEL_7:
  if (v27)
  {
    v30 = 0u;
    v31 = 0u;
    v29 = 0u;
    v32 = -1;
    v27(&v29);
  }
}

void sub_24EC33C34(uint64_t a1, __int128 *a2, uint64_t a3, void (*a4)(__int128 *))
{
  v14 = *a2;
  v15 = a2[1];
  v6 = *(a2 + 4);
  v7 = *(a2 + 5);
  v8 = *(a2 + 48);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (a1)
    {
      v11 = &Strong[OBJC_IVAR____TtC12GameStoreKit24DeviceAppStateDataSource_delegate];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v12 = *(v11 + 1);
        ObjectType = swift_getObjectType();
        (*(v12 + 16))(a1, ObjectType, v12);
        swift_unknownObjectRelease();
      }

      if (a4)
      {
        v17 = 0u;
        v18 = 0u;
        v16 = 0u;
        v19 = -1;
        a4(&v16);
      }

      return;
    }
  }

  if (a4)
  {
    v16 = v14;
    v17 = v15;
    *&v18 = v6;
    *(&v18 + 1) = v7;
    v19 = v8;
    a4(&v16);
  }
}

void sub_24EC33D74(uint64_t *a1, void (*a2)(void), uint64_t a3)
{
  v7 = sub_24F922028();
  v51 = *(v7 - 8);
  v8 = *(v51 + 64);
  MEMORY[0x28223BE20](v7);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v43 - v10;
  v12 = a1[1];
  v53 = *a1;
  aBlock = v53;
  v55 = v12;
  AdamId.numberValue.getter();
  if (v13)
  {
    v14 = v13;
    sub_24F929778();
    sub_24F929768();
    sub_24F921FF8();
    v15 = *(v3 + OBJC_IVAR____TtC12GameStoreKit24DeviceAppStateDataSource_isBetaAppsDataSource);
    v47 = v7;
    v50 = a2;
    sub_24F92C058();
    v49 = a3;
    v16 = sub_24F929768();
    if (v15)
    {
      v17 = "DeviceAppStateDataSource.BetaApps[ASDAppQuery]:refreshDataForAdamId";
    }

    else
    {
      v17 = "DeviceAppStateDataSource[ASDAppQuery]:refreshDataForAdamId";
    }

    if (v15)
    {
      v18 = 67;
    }

    else
    {
      v18 = 58;
    }

    v45 = v18;
    v46 = v17;
    if (v15)
    {
      v19 = &selRef_queryForBetaAppsWithStoreItemIDs_;
    }

    else
    {
      v19 = &selRef_queryForStoreItemIDs_;
    }

    v20 = v11;
    v43 = v11;
    sub_24F921FE8();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_24F941C80;
    *(v21 + 32) = v14;
    sub_24E69A5C4(0, &qword_27F22BD50);
    v48 = v14;
    v22 = sub_24F92B588();

    v44 = [objc_opt_self() *v19];

    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = v51;
    v24 = v52;
    v26 = v47;
    (*(v51 + 16))(v52, v20, v47);
    v27 = (*(v25 + 80) + 33) & ~*(v25 + 80);
    v28 = (v8 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
    v30 = swift_allocObject();
    v31 = v45;
    *(v30 + 16) = v46;
    *(v30 + 24) = v31;
    *(v30 + 32) = 2;
    (*(v25 + 32))(v30 + v27, v24, v26);
    *(v30 + v28) = v23;
    v32 = (v30 + v29);
    v33 = v49;
    *v32 = v50;
    v32[1] = v33;
    v34 = (v30 + ((v29 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v34 = v53;
    v34[1] = v12;
    v58 = sub_24EC35804;
    v59 = v30;
    aBlock = MEMORY[0x277D85DD0];
    v55 = 1107296256;
    v56 = sub_24EC312A0;
    v57 = &block_descriptor_10;
    v35 = _Block_copy(&aBlock);

    v36 = v44;
    [v44 executeQueryWithResultHandler_];
    _Block_release(v35);

    (*(v25 + 8))(v43, v26);
  }

  else
  {
    aBlock = type metadata accessor for DeviceAppStateDataSource();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD40);
    v37 = sub_24F92B188();
    v39 = v38;
    aBlock = 0;
    v55 = 0xE000000000000000;
    sub_24F92C888();

    aBlock = 0xD000000000000013;
    v55 = 0x800000024FA573D0;

    v40 = v53;
    MEMORY[0x253050C20](v53, v12);

    v41 = aBlock;
    v42 = v55;
    aBlock = v37;
    v55 = v39;
    v56 = v41;
    v57 = v42;
    v58 = v40;
    v59 = v12;
    v60 = 1;
    swift_bridgeObjectRetain_n();

    a2(&aBlock);

    sub_24EC3573C(aBlock, v55, v56, v57, v58, v59, v60);
  }
}

void sub_24EC34254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(__int128 *), uint64_t a9, uint64_t a10, uint64_t a11)
{
  v33 = a8;
  v32 = a9;
  v12 = sub_24F927D88();
  v31 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F92C048();
  sub_24F929778();
  v15 = sub_24F929768();
  sub_24F921FE8();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v17 = Strong;
  if (!a1)
  {

LABEL_7:
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    v37 = -1;
    v33(&v34);
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BE10);
  inited = swift_initStackObject();
  v29 = xmmword_24F93DE60;
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 32) = a10;
  *(inited + 40) = a11;

  v19 = sub_24F45D9F8(inited);
  swift_setDeallocating();
  sub_24EC36F48(inited + 32);
  v20 = swift_allocObject();
  *(v20 + 16) = MEMORY[0x277D84FA0];
  v21 = swift_allocObject();
  v21[2] = a1;
  v21[3] = v17;
  v21[4] = v20;
  v21[5] = v19;
  v30 = *&v17[OBJC_IVAR____TtC12GameStoreKit24DeviceAppStateDataSource_accessQueue];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0);
  v22 = v31;
  v23 = swift_allocObject();
  *(v23 + 16) = v29;

  *&v29 = v17;
  sub_24F927D78();
  *&v34 = v23;
  sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310);
  v24 = sub_24F92C6A8();
  MEMORY[0x28223BE20](v24);
  *(&v29 - 2) = sub_24EC37330;
  *(&v29 - 1) = v21;
  sub_24F92BF08();

  (*(v22 + 8))(v14, v12);
  swift_beginAccess();
  v25 = *(v20 + 16);
  v26 = *(v25 + 16);
  if (v26 && (v27 = sub_24EAE67DC(*(*(v20 + 16) + 16), 0), v28 = sub_24EAE7C84(&v34, v27 + 4, v26, v25), , sub_24E6586B4(), , v28 != v26))
  {
    __break(1u);
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    v37 = -1;
    v33(&v34);
  }
}

uint64_t sub_24EC34700()
{
  result = 0;
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit24DeviceAppStateDataSource_isBetaAppsDataSource) == 1)
  {
    MEMORY[0x28223BE20](0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
    sub_24F92BF18();
    return v2;
  }

  return result;
}

uint64_t sub_24EC347D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = OBJC_IVAR____TtC12GameStoreKit24DeviceAppStateDataSource_betaAppBundleVersions;
  result = swift_beginAccess();
  v10 = *(a1 + v8);
  if (*(v10 + 16))
  {

    v11 = sub_24E7728F0(a2, a3);
    if (v12)
    {
      v13 = (*(v10 + 56) + 16 * v11);
      v15 = *v13;
      v14 = v13[1];
    }

    else
    {
      v15 = 0;
      v14 = 0;
    }
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  *a4 = v15;
  a4[1] = v14;
  return result;
}

uint64_t sub_24EC34894(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] == a2[1] && a1[2] == a2[2])
  {
    return 1;
  }

  else
  {
    return sub_24F92CE08();
  }
}

uint64_t sub_24EC348DC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  v10[6] = v8;
  v10[7] = v7;

  sub_24E971980(1, sub_24EC35870, v10);
}

void sub_24EC349BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = OBJC_IVAR____TtC12GameStoreKit24DeviceAppStateDataSource_availableUpdatesCache;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *&v12[v13];
    *&v12[v13] = 0x8000000000000000;
    sub_24E820558(a2, a3, a4, a5, a6, isUniquelyReferenced_nonNull_native);

    *&v12[v13] = v16;
    swift_endAccess();
    v17[0] = a5;
    v17[1] = a6;
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_24EC35880(v17, v12, v15, a5, a6);
  }
}

void sub_24EC34B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a3;
  v41 = a4;
  v5 = sub_24F92AAE8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 48);
  if (v9 != 255)
  {
    v10 = v8;
    v11 = *a1;
    v12 = *(a1 + 8);
    v14 = *(a1 + 16);
    v13 = *(a1 + 24);
    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    v42 = v13;
    v43 = v15;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v37 = v6;
      v18 = *(v6 + 16);
      v19 = Strong;
      v39 = v10;
      v38 = v5;
      v18(v10, Strong + OBJC_IVAR____TtC12GameStoreKit24DeviceAppStateDataSource_logger, v5);
      sub_24EC371DC(v11, v12, v14, v42, v43, v16, v9);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      v36 = *(*(sub_24F928468() - 8) + 72);
      *(swift_allocObject() + 16) = xmmword_24F93A400;
      v20 = v37;
      v35 = v14;
      v34 = v12;
      sub_24F9283A8();
      v44 = v11;
      v45 = v12;
      v46 = v14;
      v21 = v42;
      v22 = v43;
      v47 = v42;
      v48 = v43;
      v49 = v16;
      v50 = v9;
      sub_24EC372A0();
      v23 = sub_24F92CFE8();
      v51[3] = MEMORY[0x277D837D0];
      v51[0] = v23;
      v51[1] = v24;
      sub_24F928438();
      sub_24E601704(v51, &qword_27F2129B0);
      v25 = v38;
      v26 = v39;
      sub_24F92A598();
      sub_24EC3573C(v11, v34, v35, v21, v22, v16, v9);

      (*(v20 + 8))(v26, v25);
    }
  }

  swift_beginAccess();
  v27 = swift_unknownObjectWeakLoadStrong();
  if (v27)
  {
    v28 = v27 + OBJC_IVAR____TtC12GameStoreKit24DeviceAppStateDataSource_delegate;
    v29 = v27;
    swift_beginAccess();
    v30 = swift_unknownObjectWeakLoadStrong();
    v31 = *(v28 + 8);

    if (v30)
    {
      ObjectType = swift_getObjectType();
      v52[0] = v40;
      v52[1] = v41;
      (*(v31 + 8))(v52, ObjectType, v31);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_24EC34F54@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a1 >> 62)
  {
    v30 = a1;
    v4 = sub_24F92C738();
    a1 = v30;
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v6 = a1;
    v35 = MEMORY[0x277D84F90];
    result = sub_24F45814C(0, v4 & ~(v4 >> 63), 0);
    if ((v4 & 0x8000000000000000) == 0)
    {
      v31 = a3;
      v5 = v35;
      v34 = v6 & 0xC000000000000001;
      v32 = OBJC_IVAR____TtC12GameStoreKit24DeviceAppStateDataSource_adamIdsByBundleId;
      swift_beginAccess();
      v8 = v6;
      v9 = 0;
      v10 = &selRef_systemBackgroundColor;
      v11 = v8;
      while (1)
      {
        if (v34)
        {
          v12 = MEMORY[0x253052270](v9);
        }

        else
        {
          v12 = *(v8 + 8 * v9 + 32);
        }

        v13 = v12;
        if (![v12 v10[380]])
        {
          v20 = [v13 bundleID];
          v21 = sub_24F92B0D8();
          v23 = v22;

          v24 = *(a2 + v32);
          if (*(v24 + 16))
          {

            v25 = sub_24E76D644(v21, v23);
            v27 = v26;

            if (v27)
            {
              v28 = (*(v24 + 56) + 16 * v25);
              v14 = *v28;
              v16 = v28[1];

              goto LABEL_11;
            }

            v10 = &selRef_systemBackgroundColor;
          }

          else
          {
          }
        }

        [v13 v10[380]];
        v14 = sub_24F92CD88();
        v16 = v15;
LABEL_11:

        v18 = *(v35 + 16);
        v17 = *(v35 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_24F45814C((v17 > 1), v18 + 1, 1);
        }

        ++v9;
        *(v35 + 16) = v18 + 1;
        v19 = v35 + 16 * v18;
        *(v19 + 32) = v14;
        *(v19 + 40) = v16;
        v8 = v11;
        v10 = &selRef_systemBackgroundColor;
        if (v4 == v9)
        {
          a3 = v31;
          goto LABEL_20;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:
    v29 = sub_24F45D9F8(v5);

    *a3 = v29;
  }

  return result;
}

id DeviceAppStateDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DeviceAppStateDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceAppStateDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_24EC3539C(uint64_t *a1))(uint64_t, char)
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
  v5 = OBJC_IVAR____TtC12GameStoreKit24DeviceAppStateDataSource_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_24EC37328;
}

uint64_t sub_24EC35454()
{
  result = 0;
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit24DeviceAppStateDataSource_isBetaAppsDataSource) == 1)
  {
    MEMORY[0x28223BE20](0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
    sub_24F92BF18();
    return v2;
  }

  return result;
}

uint64_t type metadata accessor for DeviceAppStateDataSource()
{
  result = qword_27F22BDD0;
  if (!qword_27F22BDD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EC35570()
{
  MEMORY[0x2530543E0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24EC355A8()
{
  v1 = sub_24F922028();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 33) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  if (*(v0 + v4))
  {
  }

  return swift_deallocObject();
}

void sub_24EC35660(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_24F922028() - 8);
  v6 = (*(v5 + 80) + 33) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_24EC33804(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), v2 + v6, *(v2 + v7), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t block_copy_helper_62(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_24EC3573C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, char a7)
{
  if (a7 != -1)
  {
    sub_24EC35750(a1, a2, a3, a4, a5, a6, a7);
  }
}

void sub_24EC35750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, char a7)
{
  if (a7 == 2)
  {
  }

  else
  {
    if (a7 != 1)
    {
      if (!a7)
      {
      }

      return;
    }
  }
}

uint64_t sub_24EC35828()
{

  return swift_deallocObject();
}

uint64_t sub_24EC35880(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v56 = a2;
  v9 = sub_24F922028();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v54 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v46 - v13;
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v53 = a4;
  v15[4] = a5;
  v16 = a1[1];
  v55 = *a1;
  aBlock = v55;
  v58 = v16;

  AdamId.numberValue.getter();
  if (v17)
  {
    v18 = v17;
    sub_24F929778();
    sub_24F929768();
    sub_24F921FF8();
    v19 = *(v56 + OBJC_IVAR____TtC12GameStoreKit24DeviceAppStateDataSource_isBetaAppsDataSource);
    v51 = v9;
    v53 = v15;
    sub_24F92C058();
    v20 = sub_24F929768();
    if (v19)
    {
      v21 = "DeviceAppStateDataSource.BetaApps[ASDAppQuery]:refreshDataForAdamId";
    }

    else
    {
      v21 = "DeviceAppStateDataSource[ASDAppQuery]:refreshDataForAdamId";
    }

    if (v19)
    {
      v22 = 67;
    }

    else
    {
      v22 = 58;
    }

    v49 = v22;
    v50 = v21;
    if (v19)
    {
      v23 = &selRef_queryForBetaAppsWithStoreItemIDs_;
    }

    else
    {
      v23 = &selRef_queryForStoreItemIDs_;
    }

    v47 = v14;
    sub_24F921FE8();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_24F941C80;
    *(v24 + 32) = v18;
    sub_24E69A5C4(0, &qword_27F22BD50);
    v52 = v18;
    v25 = sub_24F92B588();

    v48 = [objc_opt_self() *v23];

    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = v54;
    v28 = v51;
    (*(v10 + 16))(v54, v14, v51);
    v29 = (*(v10 + 80) + 33) & ~*(v10 + 80);
    v30 = (v11 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
    v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
    v32 = swift_allocObject();
    v33 = v49;
    *(v32 + 16) = v50;
    *(v32 + 24) = v33;
    *(v32 + 32) = 2;
    (*(v10 + 32))(v32 + v29, v27, v28);
    *(v32 + v30) = v26;
    v34 = (v32 + v31);
    v35 = v53;
    *v34 = sub_24EC3702C;
    v34[1] = v35;
    v36 = (v32 + ((v31 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v36 = v55;
    v36[1] = v16;
    v61 = sub_24EC3732C;
    v62 = v32;
    aBlock = MEMORY[0x277D85DD0];
    v58 = 1107296256;
    v59 = sub_24EC312A0;
    v60 = &block_descriptor_67;
    v37 = _Block_copy(&aBlock);

    v38 = v48;
    [v48 executeQueryWithResultHandler_];
    _Block_release(v37);

    (*(v10 + 8))(v47, v28);
  }

  else
  {
    aBlock = type metadata accessor for DeviceAppStateDataSource();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD40);
    v39 = sub_24F92B188();
    v41 = v40;
    aBlock = 0;
    v58 = 0xE000000000000000;
    sub_24F92C888();

    aBlock = 0xD000000000000013;
    v58 = 0x800000024FA573D0;

    v42 = v55;
    MEMORY[0x253050C20](v55, v16);

    v43 = aBlock;
    v44 = v58;
    aBlock = v39;
    v58 = v41;
    v59 = v43;
    v60 = v44;
    v61 = v42;
    v62 = v16;
    v63 = 1;
    swift_bridgeObjectRetain_n();

    sub_24EC34B18(&aBlock, a3, v53, a5);

    sub_24EC3573C(aBlock, v58, v59, v60, v61, v62, v63);
  }
}

uint64_t sub_24EC35DAC(void *a1)
{
  v31 = [a1 storeItemID];
  sub_24F92CD88();
  v2 = sub_24F92B098();

  v3 = AMSHashIfNeeded();

  if (v3)
  {
    v4 = sub_24F92B0D8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0xE000000000000000;
  }

  v7 = [a1 progress];
  if (v7)
  {
    v8 = v7;
    v32 = v4;
    MEMORY[0x253050C20](8250, 0xE200000000000000);
    v9 = v8;
    v10 = [v9 description];
    v11 = sub_24F92B0D8();
    v13 = v12;

    MEMORY[0x253050C20](v11, v13);
  }

  else
  {
    v32 = 0;
    sub_24F92C888();
    MEMORY[0x253050C20](v4, v6);

    MEMORY[0x253050C20](0x6C646E75423C203ALL, 0xEC0000003D444965);
    v14 = [a1 bundleID];
    v15 = sub_24F92B0D8();
    v17 = v16;

    MEMORY[0x253050C20](v15, v17);

    MEMORY[0x253050C20](0x6C6174736E49202CLL, 0xEC0000003D64656CLL);
    v18 = [a1 isInstalled];
    v19 = v18 == 0;
    if (v18)
    {
      v20 = 1702195828;
    }

    else
    {
      v20 = 0x65736C6166;
    }

    if (v19)
    {
      v21 = 0xE500000000000000;
    }

    else
    {
      v21 = 0xE400000000000000;
    }

    MEMORY[0x253050C20](v20, v21);

    MEMORY[0x253050C20](0xD000000000000013, 0x800000024FA57620);
    v22 = [a1 isLaunchProhibited];
    v23 = v22 == 0;
    if (v22)
    {
      v24 = 1702195828;
    }

    else
    {
      v24 = 0x65736C6166;
    }

    if (v23)
    {
      v25 = 0xE500000000000000;
    }

    else
    {
      v25 = 0xE400000000000000;
    }

    MEMORY[0x253050C20](v24, v25);

    MEMORY[0x253050C20](0x617465427349202CLL, 0xE90000000000003DLL);
    v26 = [a1 isBetaApp];
    v27 = v26 == 0;
    if (v26)
    {
      v28 = 1702195828;
    }

    else
    {
      v28 = 0x65736C6166;
    }

    if (v27)
    {
      v29 = 0xE500000000000000;
    }

    else
    {
      v29 = 0xE400000000000000;
    }

    MEMORY[0x253050C20](v28, v29);

    MEMORY[0x253050C20](62, 0xE100000000000000);
  }

  return v32;
}

uint64_t sub_24EC360AC(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
  {
    v3 = 0;
    v4 = 0;
    v5 = 0xE000000000000000;
    while ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x253052270](v3, a1);
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_13;
      }

LABEL_9:
      v8 = v6;
      v9 = sub_24EC35DAC(v8);
      v11 = v10;

      if (sub_24F92B228() < 1)
      {
      }

      else
      {

        MEMORY[0x253050C20](8236, 0xE200000000000000);
        MEMORY[0x253050C20](v9, v11);

        v9 = v4;
        v11 = v5;
      }

      ++v3;
      v5 = v11;
      v4 = v9;
      if (v7 == i)
      {
        return v9;
      }
    }

    if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

    v6 = *(a1 + 8 * v3 + 32);
    v7 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

  return 0;
}

uint64_t sub_24EC36224(uint64_t a1)
{
  v2 = v1;
  v40 = sub_24F927D88();
  v38 = *(v40 - 8);
  v41 = v38;
  MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F928468();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F9283A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  v9 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_24F93A400;
  v35 = v6;
  v11 = *(v6 + 16);
  v34 = v8;
  v36 = v5;
  v11(v10 + v9, v8, v5);

  v13 = sub_24EC360AC(v12);
  v15 = v14;

  v46[3] = MEMORY[0x277D837D0];
  v46[0] = v13;
  v46[1] = v15;
  sub_24F928438();
  sub_24E601704(v46, &qword_27F2129B0);
  sub_24F92AAE8();
  sub_24F92A588();

  v37 = *&v2[OBJC_IVAR____TtC12GameStoreKit24DeviceAppStateDataSource_accessQueue];
  v44 = a1;
  v45 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BDE8);
  sub_24F92BF18();
  v16 = v46[0];
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = MEMORY[0x277D84FA0];
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = v2;
  v18[4] = v17;
  v18[5] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_24F93DE60;

  v20 = v2;
  sub_24F927D78();
  v46[0] = v19;
  sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310);
  v21 = v39;
  v22 = v40;
  sub_24F92C6A8();
  v42 = sub_24EC36F3C;
  v43 = v18;
  sub_24F92BF08();
  v38 = v17;

  (*(v41 + 8))(v21, v22);
  swift_beginAccess();
  v23 = *(v17 + 16);
  v24 = *(v23 + 16);
  if (!v24)
  {
    goto LABEL_4;
  }

  v25 = sub_24EAE67DC(*(*(v17 + 16) + 16), 0);
  v26 = sub_24EAE7C84(v46, v25 + 4, v24, v23);

  sub_24E6586B4();
  if (v26 != v24)
  {
    __break(1u);
LABEL_4:
    v25 = MEMORY[0x277D84F90];
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v28 = Strong + OBJC_IVAR____TtC12GameStoreKit24DeviceAppStateDataSource_delegate, v29 = Strong, swift_beginAccess(), v30 = swift_unknownObjectWeakLoadStrong(), v31 = *(v28 + 8), v29, v30))
  {
    ObjectType = swift_getObjectType();
    (*(v31 + 16))(v25, ObjectType, v31);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  MEMORY[0x2530543E0](v47);
  (*(v35 + 8))(v34, v36);
}

unint64_t sub_24EC36880()
{
  result = qword_27F22BD60;
  if (!qword_27F22BD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BD60);
  }

  return result;
}

uint64_t sub_24EC368D4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC12GameStoreKit24DeviceAppStateDataSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24EC36930(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC12GameStoreKit24DeviceAppStateDataSource_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_24EC36994@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit24DeviceAppStateDataSource_expectedAppStates;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_24EC369FC()
{
  result = sub_24F92AAE8();
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

void sub_24EC36E00(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, unint64_t a7)
{
  v9 = a7 >> 60;
  if ((a7 >> 60) > 4)
  {
    if (v9 == 5 || v9 == 6)
    {
LABEL_12:

      return;
    }

    if (v9 == 7)
    {
    }
  }

  else
  {
    if (v9 != 2 && v9 != 3)
    {
      if (v9 != 4)
      {
        return;
      }

      goto LABEL_12;
    }
  }
}

uint64_t sub_24EC36F00()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_42Tm()
{

  return swift_deallocObject();
}

uint64_t sub_24EC36FEC()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_6Tm_0()
{
  v1 = sub_24F922028();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 33) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

void sub_24EC37104(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_24F922028() - 8);
  v6 = (*(v5 + 80) + 33) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_24EC34254(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), v2 + v6, *(v2 + v7), *(v2 + v8), *(v2 + v8 + 8), *(v2 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_24EC371DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, char a7)
{
  if (a7 != -1)
  {
    sub_24EC371F0(a1, a2, a3, a4, a5, a6, a7);
  }
}

void sub_24EC371F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, char a7)
{
  if (a7 == 2)
  {
  }

  else
  {
    if (a7 != 1)
    {
      if (!a7)
      {

        v8 = a5;
      }

      return;
    }
  }
}

unint64_t sub_24EC372A0()
{
  result = qword_27F22BE18;
  if (!qword_27F22BE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BE18);
  }

  return result;
}

uint64_t CallInviteAction.uniqueProxyIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CallInviteAction.uniqueProxyIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CallInviteAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CallInviteAction() + 24);
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for CallInviteAction()
{
  result = qword_27F22BE58;
  if (!qword_27F22BE58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24EC3748C()
{
  v1 = 0x73656C646E6168;
  if (*v0 != 1)
  {
    v1 = 0x654D6E6F69746361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_24EC374F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24EC3816C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24EC37520(uint64_t a1)
{
  v2 = sub_24EC377C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EC3755C(uint64_t a1)
{
  v2 = sub_24EC377C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CallInviteAction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BE20);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EC377C0();
  sub_24F92D128();
  v12 = 0;
  sub_24F92CD08();
  if (!v2)
  {
    v11 = *(v3 + 16);
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237690);
    sub_24EC37C3C(&qword_27F22BE30, sub_24EC37814);
    sub_24F92CD48();
    type metadata accessor for CallInviteAction();
    v10[14] = 2;
    sub_24F928AD8();
    sub_24E674184(&qword_27F216080);
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24EC377C0()
{
  result = qword_27F22BE28;
  if (!qword_27F22BE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BE28);
  }

  return result;
}

unint64_t sub_24EC37814()
{
  result = qword_27F22BE38;
  if (!qword_27F22BE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BE38);
  }

  return result;
}

uint64_t CallInviteAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = sub_24F928AD8();
  v24 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BE40);
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - v7;
  v9 = type metadata accessor for CallInviteAction();
  MEMORY[0x28223BE20](v9);
  v11 = (&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EC377C0();
  v28 = v8;
  v12 = v29;
  sub_24F92D108();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = a1;
  v14 = v5;
  v33 = 0;
  v15 = v26;
  v16 = v27;
  *v11 = sub_24F92CC28();
  v11[1] = v17;
  v29 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237690);
  v32 = 1;
  sub_24EC37C3C(&qword_27F22BE48, sub_24EC37CB4);
  sub_24F92CC68();
  v11[2] = v30;
  v31 = 2;
  sub_24E674184(&qword_27F254CB0);
  v22 = v14;
  v23 = v11;
  sub_24F92CC68();
  (*(v15 + 8))(v28, v16);
  v18 = *(v9 + 24);
  v19 = v23;
  (*(v24 + 32))(v23 + v18, v22, v3);
  sub_24EC37D08(v19, v25);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return sub_24EC37D6C(v19);
}

uint64_t sub_24EC37C3C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F237690);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24EC37CB4()
{
  result = qword_27F22BE50;
  if (!qword_27F22BE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BE50);
  }

  return result;
}

uint64_t sub_24EC37D08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CallInviteAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EC37D6C(uint64_t a1)
{
  v2 = type metadata accessor for CallInviteAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EC37E0C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F928AD8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24EC37ECC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F928AD8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24EC37F70()
{
  sub_24EC38004();
  if (v0 <= 0x3F)
  {
    sub_24F928AD8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24EC38004()
{
  if (!qword_27F22BE68)
  {
    v0 = sub_24F92B6E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F22BE68);
    }
  }
}

unint64_t sub_24EC38068()
{
  result = qword_27F22BE70;
  if (!qword_27F22BE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BE70);
  }

  return result;
}

unint64_t sub_24EC380C0()
{
  result = qword_27F22BE78;
  if (!qword_27F22BE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BE78);
  }

  return result;
}

unint64_t sub_24EC38118()
{
  result = qword_27F22BE80;
  if (!qword_27F22BE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BE80);
  }

  return result;
}

uint64_t sub_24EC3816C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x800000024FA4FFD0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73656C646E6168 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
  {

    return 2;
  }

  else
  {
    v5 = sub_24F92CE08();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_24EC386E8()
{
  sub_24E77ACC8();
  if (qword_27F210408 != -1)
  {
    swift_once();
  }

  v0 = qword_27F22BE88;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 whiteColor];
  v4 = v2;
  v5 = v3;
  result = sub_24F92C388();
  qword_27F22BEE8 = result;
  return result;
}

uint64_t sub_24EC387F4()
{
  sub_24E77ACC8();
  v0 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.08];
  v1 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.08];
  v2 = v0;
  v3 = v1;
  result = sub_24F92C388();
  qword_27F22BEF0 = result;
  return result;
}

id sub_24EC38A54()
{
  if (qword_27F210448 != -1)
  {
    swift_once();
  }

  v1 = qword_27F22BEC8;
  qword_27F22BF18 = qword_27F22BEC8;

  return v1;
}

id sub_24EC38B00()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.82];
  qword_27F22BF20 = result;
  return result;
}

id sub_24EC38B88()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.82];
  qword_27F22BF28 = result;
  return result;
}

uint64_t sub_24EC38C10()
{
  sub_24E77ACC8();
  v0 = [objc_opt_self() whiteColor];
  v1 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.109803922 green:0.109803922 blue:0.117647059 alpha:1.0];
  v2 = v0;
  v3 = v1;
  result = sub_24F92C388();
  qword_27F22BF30 = result;
  return result;
}

id sub_24EC38D0C(uint64_t a1, uint64_t a2, void *a3, void **a4)
{
  if (*a3 == -1)
  {
    v5 = *a4;
  }

  else
  {
    swift_once();
    v5 = *a4;
  }

  return v5;
}

uint64_t ProductTopLockupIconFetcher.__allocating_init(artworkLoader:)(uint64_t a1)
{
  v2 = swift_allocObject();
  ProductTopLockupIconFetcher.init(artworkLoader:)(a1);
  return v2;
}

uint64_t ProductTopLockupIconFetcher.init(artworkLoader:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24F91F6B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 16) = MEMORY[0x277D84F90];
  *(v2 + 32) = 0;
  sub_24F91F6A8();
  v8 = sub_24F91F668();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  *(v2 + 40) = v8;
  *(v2 + 48) = v10;
  *(v2 + 88) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 56) = 0;
  *(v2 + 80) = 0;
  *(v2 + 24) = a1;
  return v2;
}

uint64_t sub_24EC38EC0(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;
  v5 = v2;

  return sub_24EC38F1C();
}

uint64_t sub_24EC38F1C()
{
  result = swift_beginAccess();
  v72 = v0;
  v2 = *(v0 + 16);
  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return result;
    }

    goto LABEL_3;
  }

  result = sub_24F92C738();
  v3 = result;
  if (result)
  {
LABEL_3:
    if (v3 < 1)
    {
      __break(1u);
      return result;
    }

    v71 = v2 & 0xC000000000000001;

    swift_beginAccess();
    v4 = 0;
    v5 = &qword_27F23F000;
    v69 = v2;
    v70 = v3;
    while (1)
    {
      if (v71)
      {
        v9 = MEMORY[0x253052270](v4, v2);
      }

      else
      {
        v9 = *(v2 + 8 * v4 + 32);
      }

      v8 = v9;
      v10 = *(v72 + 56);
      v11 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_setImageDisablesAnimations;
      swift_beginAccess();
      if (v8[v11] == 1)
      {
        v12 = *&v8[v5[505]];
        v13 = v10;
        v14 = [v12 layer];
        [v14 removeAllAnimations];

        if (!v10)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v20 = v10;
        if (!v10)
        {
LABEL_18:
          v21 = v5[505];
          [*&v8[v21] setImage_];
          [*&v8[v21] setHidden_];
          sub_24F357100();
          v22 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_style;
          swift_beginAccess();
          if (((v8[v22] - 2) & 0xFD) == 0)
          {
            if (sub_24F3595CC())
            {
              if (qword_27F211130 != -1)
              {
                swift_once();
              }

              v23 = qword_27F23FFB8;
              v24 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_borderColor;
              swift_beginAccess();
              v25 = *&v8[v24];
              *&v8[v24] = v23;
              v26 = v23;

              sub_24E9F322C();
            }

            else
            {
              v65 = [objc_opt_self() clearColor];
              v66 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_borderColor;
              swift_beginAccess();
              v67 = *&v8[v66];
              *&v8[v66] = v65;
              v68 = v65;

              sub_24E9F322C();
            }
          }

          goto LABEL_9;
        }
      }

      v15 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_artworkTintColor;
      swift_beginAccess();
      v16 = *&v8[v15];
      v17 = v10;
      v18 = v17;
      if (v16)
      {
        v19 = [v17 imageWithRenderingMode_];
      }

      else
      {
        v19 = v17;
      }

      v27 = v19;
      v28 = v5;
      v29 = v5[505];
      [*&v8[v29] setImage_];
      v30 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_shouldSymbolImageSelfSize;
      swift_beginAccess();
      if (v8[v30] == 1)
      {
        v31 = [*&v8[v29] image];
        if (v31)
        {
          v32 = v31;
          v33 = [v31 isSymbolImage];

          if (v33)
          {
            v34 = [*&v8[v29] image];
            if (v34)
            {
              v35 = v34;
              v36 = [*&v8[v29] preferredSymbolConfiguration];
              if (v36)
              {
                v6 = v36;
                v37 = [v35 imageWithConfiguration_];
                [v37 size];
                v39 = v38;
                v41 = v40;

                v8[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_updatingFrameForSymbolSizeChange] = 1;
                v42 = type metadata accessor for ArtworkView();
                v76.receiver = v8;
                v76.super_class = v42;
                objc_msgSendSuper2(&v76, sel_frame);
                v44 = v43;
                v46 = v45;
                v75.receiver = v8;
                v75.super_class = v42;
                objc_msgSendSuper2(&v75, sel_frame);
                v48 = v47;
                v50 = v49;
                v52 = v51;
                v54 = v53;
                v74.receiver = v8;
                v74.super_class = v42;
                objc_msgSendSuper2(&v74, sel_frame);
                if (v56 != v39 || v55 != v41)
                {
                  v8[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_isCornerRadiusInvalid] = 1;
                }

                v73.receiver = v8;
                v73.super_class = v42;
                objc_msgSendSuper2(&v73, sel_setFrame_, v44, v46, v39, v41);
                sub_24F358818(v48, v50, v52, v54);

                v2 = v69;
              }

              else
              {
                v6 = v35;
              }

              v3 = v70;
            }
          }
        }
      }

      [*&v8[v29] setHidden_];
      sub_24F357100();
      v7 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_style;
      swift_beginAccess();
      if (((v8[v7] - 2) & 0xFD) == 0)
      {
        if (sub_24F3595CC())
        {
          if (qword_27F211130 != -1)
          {
            swift_once();
          }

          v57 = qword_27F23FFB8;
          v58 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_borderColor;
          swift_beginAccess();
          v59 = *&v8[v58];
          *&v8[v58] = v57;
          v60 = v57;

          sub_24E9F322C();
        }

        else
        {
          v61 = [objc_opt_self() clearColor];
          v62 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_borderColor;
          swift_beginAccess();
          v63 = *&v8[v62];
          *&v8[v62] = v61;
          v64 = v61;

          sub_24E9F322C();
        }
      }

      v8 = v27;
      v5 = v28;
LABEL_9:
      ++v4;

      if (v3 == v4)
      {
      }
    }
  }

  return result;
}

void *sub_24EC3956C()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

void sub_24EC395B0(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
  v4 = a1;

  sub_24EC38F1C();
}

uint64_t (*sub_24EC39610(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24EC39664;
}

uint64_t sub_24EC3967C()
{
  v1 = v0;
  result = swift_beginAccess();
  v3 = *(v0 + 16);
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

    goto LABEL_3;
  }

  result = sub_24F92C738();
  v4 = result;
  if (result)
  {
LABEL_3:
    if (v4 < 1)
    {
      __break(1u);
      return result;
    }

    v5 = 0;
    while (1)
    {
      v10 = (v3 & 0xC000000000000001) != 0 ? MEMORY[0x253052270](v5, v3) : *(v3 + 8 * v5 + 32);
      v11 = v10;
      v12 = *(v1 + 80);
      v13 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_style;
      swift_beginAccess();
      v14 = v11[v13];
      v11[v13] = v12;
      if (v12 <= 3)
      {
        break;
      }

      if (v12 > 5)
      {
        if (v12 == 6)
        {
          v15 = 0xE300000000000000;
          v16 = 7364969;
          if (v14 > 3)
          {
            goto LABEL_34;
          }

          goto LABEL_47;
        }

        if (v12 == 7)
        {
          v15 = 0xE600000000000000;
          v16 = 0x746365527674;
          if (v14 > 3)
          {
            goto LABEL_34;
          }

          goto LABEL_47;
        }

        v16 = 0x656E726F64616E75;
        v15 = 0xE900000000000064;
LABEL_33:
        if (v14 > 3)
        {
          goto LABEL_34;
        }

        goto LABEL_47;
      }

      if (v12 == 4)
      {
        v16 = 0xD000000000000010;
        v15 = 0x800000024FA43320;
        if (v14 > 3)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v15 = 0xE400000000000000;
        v16 = 1819044208;
        if (v14 > 3)
        {
LABEL_34:
          if (v14 <= 5)
          {
            if (v14 == 4)
            {
              v17 = 0x800000024FA43320;
              if (v16 != 0xD000000000000010)
              {
                goto LABEL_59;
              }
            }

            else
            {
              v17 = 0xE400000000000000;
              if (v16 != 1819044208)
              {
LABEL_59:
                v19 = sub_24F92CE08();

                if ((v19 & 1) == 0)
                {
                  v20 = sub_24F3595CC();
                  v21 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_borderWidth;
                  if (v20)
                  {
                    swift_beginAccess();
                    *&v11[v21] = 0x3FF0000000000000;
                    sub_24E9F322C();
                    if (qword_27F211130 != -1)
                    {
                      swift_once();
                    }

                    v22 = qword_27F23FFB8;
                    v23 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_borderColor;
                    swift_beginAccess();
                    v24 = *&v11[v23];
                    *&v11[v23] = v22;
                    v25 = v22;

                    sub_24E9F322C();
                  }

                  else
                  {
                    swift_beginAccess();
                    *&v11[v21] = 0;
                    sub_24E9F322C();
                    v6 = [objc_opt_self() clearColor];
                    v7 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_borderColor;
                    swift_beginAccess();
                    v8 = *&v11[v7];
                    *&v11[v7] = v6;
                    v9 = v6;

                    sub_24E9F322C();
                  }

                  v11[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_isStyleInvalid] = 1;
                  [v11 setNeedsLayout];
                }

                goto LABEL_8;
              }
            }
          }

          else if (v14 == 6)
          {
            v17 = 0xE300000000000000;
            if (v16 != 7364969)
            {
              goto LABEL_59;
            }
          }

          else if (v14 == 7)
          {
            v17 = 0xE600000000000000;
            if (v16 != 0x746365527674)
            {
              goto LABEL_59;
            }
          }

          else
          {
            v17 = 0xE900000000000064;
            if (v16 != 0x656E726F64616E75)
            {
              goto LABEL_59;
            }
          }

          goto LABEL_56;
        }
      }

LABEL_47:
      if (v14 > 1)
      {
        if (v14 == 2)
        {
          v17 = 0x800000024FA43300;
          if (v16 != 0xD000000000000016)
          {
            goto LABEL_59;
          }

          goto LABEL_56;
        }

        v17 = 0xE500000000000000;
        v18 = 0x646E756F72;
      }

      else
      {
        v18 = 0x6669636570736E75;
        v17 = 0xEB00000000646569;
        if (v14)
        {
          v17 = 0xEB00000000746365;
          if (v16 != 0x526465646E756F72)
          {
            goto LABEL_59;
          }

          goto LABEL_56;
        }
      }

      if (v16 != v18)
      {
        goto LABEL_59;
      }

LABEL_56:
      if (v15 != v17)
      {
        goto LABEL_59;
      }

LABEL_8:
      if (v4 == ++v5)
      {
      }
    }

    if (v12 > 1)
    {
      if (v12 == 2)
      {
        v16 = 0xD000000000000016;
        v15 = 0x800000024FA43300;
        if (v14 > 3)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v15 = 0xE500000000000000;
        v16 = 0x646E756F72;
        if (v14 > 3)
        {
          goto LABEL_34;
        }
      }

      goto LABEL_47;
    }

    v16 = 0x6669636570736E75;
    v15 = 0xEB00000000646569;
    if (v12)
    {
      v16 = 0x526465646E756F72;
      v15 = 0xEB00000000746365;
      if (v14 > 3)
      {
        goto LABEL_34;
      }

      goto LABEL_47;
    }

    goto LABEL_33;
  }

  return result;
}

uint64_t sub_24EC39BA8(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 88);
  *(v3 + 88) = v2;
  v5 = v2;

  return sub_24EC39C04();
}

uint64_t sub_24EC39C04()
{
  v1 = v0;
  result = swift_beginAccess();
  v3 = *(v0 + 16);
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

    goto LABEL_3;
  }

  result = sub_24F92C738();
  v4 = result;
  if (result)
  {
LABEL_3:
    if (v4 < 1)
    {
      __break(1u);
      return result;
    }

    v5 = v3 & 0xC000000000000001;

    swift_beginAccess();
    v6 = 0;
    v13 = v3;
    while (1)
    {
      if (v5)
      {
        v7 = MEMORY[0x253052270](v6, v3);
      }

      else
      {
        v7 = *(v3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = *(v1 + 88);
      if (v9)
      {
        v10 = *&v7[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_internalBackgroundColor];
        *&v7[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_internalBackgroundColor] = v9;
        sub_24E77ACC8();
        v11 = v9;
        if ((sub_24F92C408() & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v12 = [objc_opt_self() clearColor];
        v10 = *&v8[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_internalBackgroundColor];
        *&v8[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_internalBackgroundColor] = v12;
        sub_24E77ACC8();
        v11 = v12;
        v3 = v13;
        if ((sub_24F92C408() & 1) == 0)
        {
LABEL_13:
          sub_24F357100();
        }
      }

      ++v6;

      if (v4 == v6)
      {
      }
    }
  }

  return result;
}

void *sub_24EC39DD4()
{
  swift_beginAccess();
  v1 = *(v0 + 88);
  v2 = v1;
  return v1;
}

void sub_24EC39E18(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 88);
  *(v1 + 88) = a1;
  v4 = a1;

  sub_24EC39C04();
}

uint64_t (*sub_24EC39E78(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24EC39ECC;
}

uint64_t sub_24EC39EE4(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t sub_24EC39F28(uint64_t result, uint64_t a2)
{
  v3 = *(*(result + 16) + 48);
  if (v3)
  {
    v4 = v2;
    if ((*(v2 + 32) & 1) == 0)
    {
      *(v2 + 32) = 1;
      *(v2 + 80) = *(v3 + 64);
      v5 = result;

      sub_24EC3967C();
      sub_24EC3A72C(v5, a2);
      v9 = Artwork.config(_:mode:prefersLayeredImage:)(UIViewContentModeScaleAspectFit, 0, v7, v8);
      if (*(v9 + 72) > 1u || *(v9 + 72))
      {
        v10 = sub_24F92CE08();

        if ((v10 & 1) == 0)
        {
          if (qword_27F210428 != -1)
          {
            swift_once();
          }

          v14 = qword_27F22BEA8;
          swift_beginAccess();
          v13 = *(v2 + 88);
          *(v4 + 88) = v14;
          v12 = v14;
          goto LABEL_11;
        }
      }

      else
      {
      }

      v11 = [objc_opt_self() clearColor];
      swift_beginAccess();
      v12 = v11;
      v13 = *(v4 + 88);
      *(v4 + 88) = v12;
LABEL_11:
      v15 = v12;

      sub_24EC39C04();

      sub_24F92C7F8();
      v16 = swift_allocObject();
      swift_weakInit();
      v17 = swift_allocObject();
      v17[2] = v16;
      v17[3] = v9;
      v17[4] = v3;

      ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)(v18, 1, v19, sub_24EC3A940, v17);

      sub_24E9BBAA8(v19);
    }
  }

  return result;
}

uint64_t sub_24EC3A1C0(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    *(Strong + 64) = *(a6 + 32);
    result = swift_beginAccess();
    v14 = *(v12 + 16);
    if (v14 >> 62)
    {
      result = sub_24F92C738();
      v15 = result;
      if (result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
LABEL_4:
        if (v15 < 1)
        {
          __break(1u);
          return result;
        }

        for (i = 0; i != v15; ++i)
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            v17 = MEMORY[0x253052270](i, v14);
          }

          else
          {
            v17 = *(v14 + 8 * i + 32);
          }

          v18 = v17;
          v19 = *(v12 + 64);
          v20 = *(v12 + 72);
          v21 = &v17[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_imageSize];
          swift_beginAccess();
          v22 = *v21;
          v23 = v21[1];
          *v21 = v19;
          v21[1] = v20;
          if (v19 != v22 || v20 != v23)
          {
            v18[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_isCornerRadiusInvalid] = 1;
            [v18 setNeedsLayout];
          }
        }
      }
    }
  }

  swift_beginAccess();
  v25 = swift_weakLoadStrong();
  if (v25)
  {
    *(v25 + 80) = *(a7 + 64);
    sub_24EC3967C();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v26 = result;
    if (a2)
    {
      if (!a1 || ([a1 size], v28 = v27, v29 != *(a6 + 32)))
      {
        swift_beginAccess();
        v35 = *(v26 + 56);
        *(v26 + 56) = a1;
        v36 = a1;

        sub_24EC38F1C();
      }

      v30 = *(a6 + 40);
      swift_beginAccess();
      v31 = *(v26 + 56);
      *(v26 + 56) = a1;
      v32 = a1;

      sub_24EC38F1C();
      if (v28 != v30)
      {
      }
    }

    else
    {
      swift_beginAccess();
      v33 = *(v26 + 56);
      *(v26 + 56) = a1;
      v34 = a1;

      sub_24EC38F1C();
    }

    swift_beginAccess();
    *(v26 + 16) = MEMORY[0x277D84F90];
  }

  return result;
}

void sub_24EC3A4C0(char *a1)
{
  if (a1)
  {
    v2 = v1;
    swift_beginAccess();
    v4 = *(v1 + 56);
    if (v4)
    {
      v5 = v4;
      v6 = a1;
      v7 = v6;
      v24.value.super.isa = v4;
      v24.is_nil = 0;
      ArtworkView.setImage(image:animated:)(v24, v7);
    }

    else
    {
      v8 = a1;
    }

    v9 = *(v2 + 64);
    v10 = *(v2 + 72);
    v11 = &a1[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_imageSize];
    swift_beginAccess();
    v12 = *v11;
    v13 = v11[1];
    *v11 = v9;
    v11[1] = v10;
    if (v9 != v12 || v10 != v13)
    {
      a1[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_isCornerRadiusInvalid] = 1;
      [a1 setNeedsLayout];
    }

    v15 = *(v2 + 80);
    v16 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_style;
    swift_beginAccess();
    v17 = a1[v16];
    a1[v16] = v15;
    v23[0] = v17;
    sub_24F359430(v23);
    swift_beginAccess();
    v18 = *(v2 + 88);
    if (v18)
    {
      v19 = *&a1[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_internalBackgroundColor];
      *&a1[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_internalBackgroundColor] = v18;
      sub_24E77ACC8();
      v20 = v18;
      if ((sub_24F92C408() & 1) == 0)
      {
        sub_24F357100();
      }
    }

    else
    {
      v21 = [objc_opt_self() clearColor];
      v19 = *&a1[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_internalBackgroundColor];
      *&a1[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_internalBackgroundColor] = v21;
      sub_24E77ACC8();
      v20 = v21;
      if ((sub_24F92C408() & 1) == 0)
      {
        sub_24F357100();
      }
    }

    swift_beginAccess();
    v22 = a1;
    MEMORY[0x253050F00]();
    if (*((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    sub_24F92B638();
    swift_endAccess();
  }
}

void sub_24EC3A72C(uint64_t a1, uint64_t a2)
{
  v2 = a2 + *(type metadata accessor for ItemLayoutContext() + 32);
  v3 = type metadata accessor for ShelfLayoutContext();
  v4 = [*(v2 + *(v3 + 40)) traitCollection];
  v5 = *(v2 + *(v3 + 28) + 24);
  PortraitWidth = JUScreenClassGetPortraitWidth(1);
  if (!ProductTopLockup.wantsInlineUberPresentationStyle.getter() && ((sub_24F92BF78() & 1) == 0 || (sub_24F92BF98() & 1) == 0) && (sub_24F92BF78() & 1) == 0 && PortraitWidth >= v5)
  {
    sub_24F92BF98();
  }
}

uint64_t sub_24EC3A8C0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24EC3A8F8()
{

  return swift_deallocObject();
}

uint64_t ProductTopLockupIconFetcher.deinit()
{

  return v0;
}

uint64_t ProductTopLockupIconFetcher.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_24EC3A9E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *a2 = v4;

  return v4;
}

id sub_24EC3AA40@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 88);
  *a2 = v4;

  return v4;
}

GameStoreKit::ProductPageLinkType_optional __swiftcall ProductPageLinkType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ProductPageLinkType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x65706F6C65766564;
  v3 = 1634497893;
  v4 = 0x74726F70707573;
  if (v1 != 3)
  {
    v4 = 0x504174726F706572;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x79636176697270;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24EC3AD40()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EC3AE2C()
{
  sub_24F92B218();
}

uint64_t sub_24EC3AF04()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24EC3AFF8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000072;
  v4 = 0x65706F6C65766564;
  v5 = 0xE400000000000000;
  v6 = 1634497893;
  v7 = 0xE700000000000000;
  v8 = 0x74726F70707573;
  if (v2 != 3)
  {
    v8 = 0x504174726F706572;
    v7 = 0xEE006D656C626F72;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x79636176697270;
    v3 = 0xE700000000000000;
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

uint64_t ProductPageLink.text.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ProductPageLink.systemImageName.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t ProductPageLink.clickSender.getter@<X0>(void *a1@<X8>)
{
  a1[3] = *v1;
  *a1 = v1;
}

uint64_t ProductPageLink.__allocating_init(id:text:artwork:clickAction:systemImageName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a2;
  v13 = sub_24F91F6B8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  sub_24E65E064(a1, &v32);
  if (*(&v33 + 1))
  {
    v18 = v33;
    *(v17 + 56) = v32;
    *(v17 + 72) = v18;
    *(v17 + 88) = v34;
  }

  else
  {
    sub_24F91F6A8();
    v19 = sub_24F91F668();
    v27 = a3;
    v28 = a4;
    v20 = a5;
    v21 = a7;
    v22 = v19;
    v23 = a6;
    v25 = v24;
    (*(v14 + 8))(v16, v13);
    v30 = v22;
    v31 = v25;
    a7 = v21;
    a5 = v20;
    a6 = v23;
    a3 = v27;
    a4 = v28;
    sub_24F92C7F8();
    sub_24E9BBAA8(&v32);
  }

  sub_24E9BBAA8(a1);
  *(v17 + 16) = v29;
  *(v17 + 24) = a3;
  *(v17 + 96) = a4;
  *(v17 + 32) = a5;
  *(v17 + 40) = a6;
  *(v17 + 48) = a7;
  return v17;
}

uint64_t ProductPageLink.init(id:text:artwork:clickAction:systemImageName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v31 = a2;
  v15 = sub_24F91F6B8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E65E064(a1, &v34);
  if (*(&v35 + 1))
  {
    v37 = v34;
    v38 = v35;
    v39 = v36;
  }

  else
  {
    sub_24F91F6A8();
    v19 = sub_24F91F668();
    v29 = a3;
    v30 = a4;
    v20 = a5;
    v21 = a7;
    v22 = v19;
    v23 = a6;
    v25 = v24;
    (*(v16 + 8))(v18, v15);
    v32 = v22;
    v33 = v25;
    a7 = v21;
    a5 = v20;
    a6 = v23;
    a3 = v29;
    a4 = v30;
    sub_24F92C7F8();
    sub_24E9BBAA8(&v34);
  }

  sub_24E9BBAA8(a1);
  v26 = v38;
  *(v8 + 56) = v37;
  *(v8 + 72) = v26;
  v27 = v39;
  *(v8 + 16) = v31;
  *(v8 + 24) = a3;
  *(v8 + 88) = v27;
  *(v8 + 96) = a4;
  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  *(v8 + 48) = a7;
  return v8;
}

char *ProductPageLink.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v104 = a2;
  v90 = sub_24F91F6B8();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v88 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F9285B8();
  v103 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v97 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F928388();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v92 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v98 = &v84 - v10;
  MEMORY[0x28223BE20](v11);
  v96 = &v84 - v12;
  MEMORY[0x28223BE20](v13);
  v100 = &v84 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v84 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v84 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v84 - v22;
  v24 = a1;
  sub_24F928398();
  v91 = sub_24F928348();
  v26 = v25;
  v29 = *(v7 + 8);
  v27 = (v7 + 8);
  v28 = v29;
  v29(v23, v6);
  if (!v26)
  {
    v35 = sub_24F92AC38();
    sub_24EC3C4C4(&qword_27F2213B8, 255, MEMORY[0x277D22548]);
    swift_allocError();
    *v36 = 1954047348;
    v37 = v101;
    v36[1] = 0xE400000000000000;
    v36[2] = v37;
    (*(*(v35 - 8) + 104))(v36, *MEMORY[0x277D22530], v35);
    swift_willThrow();
    (*(v103 + 8))(v104, v4);
    v38 = v24;
    v39 = v6;
    goto LABEL_8;
  }

  v94 = v26;
  v95 = v4;
  sub_24F928398();
  v30 = sub_24F928348();
  v32 = v31;
  v28(v20, v6);
  v112 = v6;
  if (v32)
  {
    v33._countAndFlagsBits = v30;
    v33._object = v32;
    ProductPageLinkType.init(rawValue:)(v33);
    if (v110 > 2u)
    {
      if (v110 == 3)
      {
        v32 = 0x800000024FA40080;
        v34 = 0xD000000000000013;
      }

      else if (v110 == 4)
      {
        v32 = 0x800000024FA57930;
        v34 = 0xD000000000000018;
      }

      else
      {
        v34 = 0;
        v32 = 0;
      }
    }

    else if (v110)
    {
      if (v110 == 1)
      {
        v32 = 0x800000024FA57950;
        v34 = 0xD000000000000010;
      }

      else
      {
        v32 = 0xED0000747865746ELL;
        v34 = 0x69616C702E636F64;
      }
    }

    else
    {
      v32 = 0xE600000000000000;
      v34 = 0x697261666173;
    }
  }

  else
  {
    v34 = 0;
  }

  sub_24F928398();
  v40 = sub_24F928348();
  v20 = v41;
  v28(v17, v112);
  v93 = v20;
  if (!v20)
  {
    if (v32)
    {
      v85 = v34;
      v102 = v28;

      v87 = v32;
      v93 = v32;
      goto LABEL_21;
    }

    v67 = sub_24F92AC38();
    sub_24EC3C4C4(&qword_27F2213B8, 255, MEMORY[0x277D22548]);
    swift_allocError();
    *v68 = 0xD000000000000017;
    v68[1] = 0x800000024FA578F0;
    v68[2] = v101;
    (*(*(v67 - 8) + 104))(v68, *MEMORY[0x277D22530], v67);
    swift_willThrow();
    (*(v103 + 8))(v104, v95);
    v38 = v24;
    v39 = v112;
LABEL_8:
    v28(v38, v39);
    return v20;
  }

  v87 = v32;
  v102 = v28;
  v85 = v40;
LABEL_21:
  v42 = v100;
  sub_24F928398();
  v20 = sub_24F928348();
  v44 = v43;
  v102(v42, v112);
  v45 = v103;
  if (v44)
  {
    if (qword_27F2105F8 != -1)
    {
      swift_once();
    }

    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BF38);
    __swift_project_value_buffer(v46, qword_27F39C540);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBA0);
    sub_24F9285D8();
    if (v110)
    {
      v47 = v111;
      ObjectType = swift_getObjectType();
      v110 = v20;
      v111 = v44;
      LOBYTE(v47) = (*(v47 + 112))(&v110, ObjectType, v47);

      if ((v47 & 1) == 0)
      {

        sub_24EC3C2E0();
        swift_allocError();
        swift_willThrow();
        swift_unknownObjectRelease();

        (*(v45 + 8))(v104, v95);
        v102(v24, v112);
        return v20;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  v49 = v112;
  v86 = v27;
  type metadata accessor for Artwork();
  sub_24F928398();
  v50 = v104;
  v51 = v95;
  (*(v45 + 16))(v97, v104, v95);
  sub_24EC3C4C4(&qword_27F219660, 255, type metadata accessor for Artwork);
  sub_24F929548();
  v52 = v51;
  v53 = v110;
  type metadata accessor for Action();
  v54 = v98;
  sub_24F928398();
  v55 = v99;
  v56 = static Action.makeInstance(byDeserializing:using:)(v54, v50);
  if (v55)
  {

    (*(v45 + 8))(v50, v52);
    v57 = v49;
    v58 = v49;
    v20 = v86;
    v59 = v102;
    v102(v24, v58);
    v59(v54, v57);
  }

  else
  {
    v99 = v56;
    v100 = v53;
    v60 = v54;
    v61 = v49;
    v62 = v49;
    v63 = v102;
    v102(v60, v62);
    v64 = v92;
    sub_24F928398();
    v65 = sub_24F928348();
    if (v66)
    {
      *&v107 = v65;
      *(&v107 + 1) = v66;
      sub_24F92C7F8();
      v63(v64, v61);
    }

    else
    {
      v69 = v88;
      sub_24F91F6A8();
      v70 = sub_24F91F668();
      v71 = v63;
      v73 = v72;
      (*(v89 + 8))(v69, v90);
      *&v107 = v70;
      *(&v107 + 1) = v73;
      v61 = v112;
      sub_24F92C7F8();
      v71(v92, v61);
    }

    v20 = swift_allocObject();
    sub_24E65E064(&v110, &v107);
    v74 = v94;
    v75 = v100;
    if (*(&v108 + 1))
    {
      v76 = v108;
      *(v20 + 56) = v107;
      *(v20 + 72) = v76;
      *(v20 + 11) = v109;
    }

    else
    {
      v77 = v88;
      sub_24F91F6A8();
      v78 = sub_24F91F668();
      v79 = v24;
      v81 = v80;
      v75 = v100;
      (*(v89 + 8))(v77, v90);
      v105 = v78;
      v106 = v81;
      v74 = v94;
      v24 = v79;
      v50 = v104;
      sub_24F92C7F8();
      sub_24E9BBAA8(&v107);
    }

    (*(v103 + 8))(v50, v95);
    v102(v24, v61);
    sub_24E9BBAA8(&v110);
    *(v20 + 2) = v91;
    *(v20 + 3) = v74;
    *(v20 + 12) = v75;
    v82 = v85;
    *(v20 + 4) = v99;
    *(v20 + 5) = v82;
    *(v20 + 6) = v93;
  }

  return v20;
}

uint64_t ProductPageLink.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ProductPageLink.deinit()
{

  sub_24E6585F8(v0 + 56);

  return v0;
}

uint64_t ProductPageLink.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_24EC3C210@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + 32);
  if (v3)
  {
    v4 = type metadata accessor for Action();
    v5 = sub_24EC3C4C4(&qword_27F216DE8, 255, type metadata accessor for Action);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = v4;
  a1[4] = v5;
}

char *sub_24EC3C2B4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  result = ProductPageLink.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

unint64_t sub_24EC3C2E0()
{
  result = qword_27F22BF40;
  if (!qword_27F22BF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BF40);
  }

  return result;
}

unint64_t sub_24EC3C338()
{
  result = qword_27F22BF48;
  if (!qword_27F22BF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BF48);
  }

  return result;
}

unint64_t sub_24EC3C470()
{
  result = qword_27F22BF58;
  if (!qword_27F22BF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BF58);
  }

  return result;
}

uint64_t sub_24EC3C4C4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_24EC3C50C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_24EC3DAA8();
  sub_24F91FD88();

  *a1 = *(v1 + 24);
  return result;
}

uint64_t sub_24EC3C584@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_24EC3DAA8();
  sub_24F91FD88();

  *a1 = *(v1 + 25);
  return result;
}

uint64_t AchievementsByGameSortOption.displayName.getter()
{
  if (*v0 == 1)
  {
    if (qword_27F211618 != -1)
    {
      swift_once();
    }

    v1 = &qword_27F39ECF8;
  }

  else
  {
    if (qword_27F211628 != -1)
    {
      swift_once();
    }

    v1 = &qword_27F39ED18;
  }

  v2 = *v1;

  return v2;
}

uint64_t AchievementsByGameSortOption.id.getter()
{
  if (*v0)
  {
    return 1701667182;
  }

  else
  {
    return 0x796C746E65636572;
  }
}

GameStoreKit::AchievementsByGameSortOption_optional __swiftcall AchievementsByGameSortOption.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24EC3C75C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1701667182;
  }

  else
  {
    v3 = 0x796C746E65636572;
  }

  if (v2)
  {
    v4 = 0xEE00646579616C50;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1701667182;
  }

  else
  {
    v5 = 0x796C746E65636572;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xEE00646579616C50;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24EC3C808()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EC3C890()
{
  sub_24F92B218();
}

uint64_t sub_24EC3C904()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EC3C988@<X0>(char *a1@<X8>)
{
  v2 = sub_24F92CB88();

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

void sub_24EC3C9E8(uint64_t *a1@<X8>)
{
  v2 = 1701667182;
  if (!*v1)
  {
    v2 = 0x796C746E65636572;
  }

  v3 = 0xEE00646579616C50;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24EC3CAEC(unsigned __int8 *a1)
{
  v2 = *a1;
  swift_getKeyPath();
  sub_24EC3DAA8();
  sub_24F91FD88();

  if (v2)
  {
    v3 = 1701667182;
  }

  else
  {
    v3 = 0x796C746E65636572;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xEE00646579616C50;
  }

  if (*(v1 + 24))
  {
    v5 = 1701667182;
  }

  else
  {
    v5 = 0x796C746E65636572;
  }

  if (*(v1 + 24))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xEE00646579616C50;
  }

  if (v3 == v5 && v4 == v6)
  {
  }

  else
  {
    v8 = sub_24F92CE08();

    if ((v8 & 1) == 0)
    {
      return sub_24F9280C8();
    }
  }

  return result;
}

uint64_t sub_24EC3CBFC(unsigned __int8 *a1)
{
  v2 = *a1;
  if (*(v1 + 24))
  {
    v3 = 1701667182;
  }

  else
  {
    v3 = 0x796C746E65636572;
  }

  if (*(v1 + 24))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xEE00646579616C50;
  }

  if (v2)
  {
    v5 = 1701667182;
  }

  else
  {
    v5 = 0x796C746E65636572;
  }

  if (v2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xEE00646579616C50;
  }

  if (v3 == v5 && v4 == v6)
  {
  }

  else
  {
    v8 = sub_24F92CE08();

    if ((v8 & 1) == 0)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v12 = v1;
      sub_24EC3DAA8();
      sub_24F91FD78();
    }
  }

  v11 = *(v1 + 24);
  *(v1 + 24) = v2;
  LOBYTE(v12) = v11;
  return sub_24EC3CAEC(&v12);
}

uint64_t sub_24EC3CD6C(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  if (sub_24F0CA424(*(v2 + 25), *a1))
  {
    v4 = *(v2 + 25);
    *(v2 + 25) = v3;
    swift_getKeyPath();
    sub_24EC3DAA8();
    sub_24F91FD88();

    result = sub_24F0CA424(v4, *(v2 + 25));
    if ((result & 1) == 0)
    {
      return sub_24F9280C8();
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24EC3DAA8();
    sub_24F91FD78();
  }

  return result;
}

uint64_t sub_24EC3CEB4(uint64_t a1, char a2)
{
  v3 = *(a1 + 25);
  *(a1 + 25) = a2;
  swift_getKeyPath();
  sub_24EC3DAA8();
  sub_24F91FD88();

  result = sub_24F0CA424(v3, *(a1 + 25));
  if ((result & 1) == 0)
  {
    return sub_24F9280C8();
  }

  return result;
}

uint64_t sub_24EC3CF50()
{
  swift_getKeyPath();
  sub_24EC3DAA8();
  sub_24F91FD88();

  if (*(v0 + 25) > 1u || *(v0 + 25))
  {
    v1 = sub_24F92CE08();

    if ((v1 & 1) == 0)
    {
      v3 = 1;
      return v3 & 1;
    }
  }

  else
  {
  }

  swift_getKeyPath();
  sub_24F91FD88();

  if (*(v0 + 24))
  {
    v2 = sub_24F92CE08();

    v3 = v2 ^ 1;
  }

  else
  {

    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_24EC3D100()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit32AchievementsByGameOptionProvider___observationRegistrar;
  v2 = sub_24F91FDC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t AchievementsPlatformFilterOption.displayName.getter()
{
  v1 = *v0;
  if (v1 <= 1)
  {
    if (*v0)
    {
      if (qword_27F211640 != -1)
      {
        swift_once();
      }

      v2 = &qword_27F39ED48;
    }

    else
    {
      if (qword_27F211638 != -1)
      {
        swift_once();
      }

      v2 = &qword_27F39ED38;
    }
  }

  else if (v1 == 2)
  {
    if (qword_27F211648 != -1)
    {
      swift_once();
    }

    v2 = &qword_27F39ED58;
  }

  else if (v1 == 3)
  {
    if (qword_27F211650 != -1)
    {
      swift_once();
    }

    v2 = &qword_27F39ED68;
  }

  else
  {
    if (qword_27F211658 != -1)
    {
      swift_once();
    }

    v2 = &qword_27F39ED78;
  }

  v3 = *v2;

  return v3;
}

uint64_t AchievementsPlatformFilterOption.id.getter()
{
  v1 = *v0;
  v2 = 7105633;
  v3 = 0x534F63616DLL;
  v4 = 1397716596;
  if (v1 != 3)
  {
    v4 = 0x534F6E6F69736976;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 5459817;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

GameStoreKit::AchievementsPlatformFilterOption_optional __swiftcall AchievementsPlatformFilterOption.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24EC3D410()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EC3D4D8()
{
  sub_24F92B218();
}

uint64_t sub_24EC3D58C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24EC3D65C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7105633;
  v5 = 0xE500000000000000;
  v6 = 0x534F63616DLL;
  v7 = 0xE400000000000000;
  v8 = 1397716596;
  if (v2 != 3)
  {
    v8 = 0x534F6E6F69736976;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 5459817;
    v3 = 0xE300000000000000;
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

unint64_t sub_24EC3D7A4()
{
  result = qword_27F22BF60;
  if (!qword_27F22BF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BF60);
  }

  return result;
}

unint64_t sub_24EC3D82C()
{
  result = qword_27F22BF78;
  if (!qword_27F22BF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BF78);
  }

  return result;
}

uint64_t type metadata accessor for AchievementsByGameOptionProvider()
{
  result = qword_27F22BF98;
  if (!qword_27F22BF98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EC3D914()
{
  result = sub_24F91FDC8();
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

unint64_t sub_24EC3D9D8()
{
  result = qword_27F22BFA8;
  if (!qword_27F22BFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BFA8);
  }

  return result;
}

unint64_t sub_24EC3DA2C()
{
  result = qword_27F22BFB0;
  if (!qword_27F22BFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BFB0);
  }

  return result;
}

unint64_t sub_24EC3DAA8()
{
  result = qword_27F215218;
  if (!qword_27F215218)
  {
    type metadata accessor for AchievementsByGameOptionProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215218);
  }

  return result;
}

uint64_t sub_24EC3DB08()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 24);
  *(v1 + 24) = *(v0 + 24);
  v4 = v2;
  return sub_24EC3CAEC(&v4);
}

uint64_t PurchaseRepresentation.PurchaseType.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

uint64_t PurchaseRepresentation.adamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

uint64_t PurchaseRepresentation.parentAppAdamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  a1[1] = v2;
}

uint64_t PurchaseRepresentation.buyParameters.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t PurchaseRepresentation.vendorName.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t PurchaseRepresentation.appName.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t PurchaseRepresentation.bundleId.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t PurchaseRepresentation.preflightPackageUrl.getter()
{
  v1 = *(v0 + 120);

  return v1;
}

uint64_t PurchaseRepresentation.presentingSceneIdentifier.getter()
{
  v1 = *(v0 + 144);

  return v1;
}

uint64_t PurchaseRepresentation.init(purchaseType:adamId:parentAppAdamId:buyParameters:vendorName:appName:hasMessagesExtension:createsJobs:bundleId:additionalHeaders:preflightPackageUrl:isArcadeApp:forceWatchInstall:isMacOSCompatibleIOSApp:isVisionOSCompatibleIOSApp:presentingSceneIdentifier:appCapabilities:isDefaultBrowser:requiresExceptionRequest:contentRating:forceAskToBuyReason:metricsOverlay:remoteDownloadIdentifiers:hasMacIPAPackage:performanceMetricsOverlay:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, char a12, __int128 a13, __int128 a14, uint64_t a15, char a16, char a17, char a18, __int128 a19, uint64_t a20, char a21, char a22, uint64_t a23, char a24, char *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  result = *a1;
  v31 = *a2;
  v30 = a2[1];
  v32 = *a25;
  *a9 = result;
  *(a9 + 8) = v31;
  *(a9 + 16) = v30;
  *(a9 + 24) = *a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  *(a9 + 80) = a10;
  *(a9 + 88) = a11;
  *(a9 + 89) = a12;
  *(a9 + 96) = a13;
  *(a9 + 112) = a14;
  *(a9 + 128) = a15;
  *(a9 + 136) = a16;
  *(a9 + 137) = a17;
  *(a9 + 138) = a18;
  *(a9 + 144) = a19;
  *(a9 + 160) = a20;
  *(a9 + 168) = a21;
  *(a9 + 169) = a22;
  *(a9 + 170) = v32;
  *(a9 + 176) = a23;
  *(a9 + 184) = a24 & 1;
  *(a9 + 200) = a29;
  *(a9 + 208) = a27;
  *(a9 + 192) = a26;
  return result;
}

uint64_t PurchaseRepresentation.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v223 = a2;
  v218 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F221C40);
  MEMORY[0x28223BE20](v4 - 8);
  v217 = &v175 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v213 = &v175 - v7;
  MEMORY[0x28223BE20](v8);
  v205 = &v175 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v10 - 8);
  v215 = &v175 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v209 = &v175 - v13;
  MEMORY[0x28223BE20](v14);
  v198 = &v175 - v15;
  v16 = sub_24F928388();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v216 = &v175 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v212 = &v175 - v20;
  MEMORY[0x28223BE20](v21);
  v211 = &v175 - v22;
  MEMORY[0x28223BE20](v23);
  v210 = &v175 - v24;
  MEMORY[0x28223BE20](v25);
  v208 = &v175 - v26;
  MEMORY[0x28223BE20](v27);
  v207 = &v175 - v28;
  MEMORY[0x28223BE20](v29);
  v206 = &v175 - v30;
  MEMORY[0x28223BE20](v31);
  v204 = &v175 - v32;
  MEMORY[0x28223BE20](v33);
  v203 = &v175 - v34;
  MEMORY[0x28223BE20](v35);
  v202 = &v175 - v36;
  MEMORY[0x28223BE20](v37);
  v201 = &v175 - v38;
  MEMORY[0x28223BE20](v39);
  v222 = &v175 - v40;
  MEMORY[0x28223BE20](v41);
  v200 = &v175 - v42;
  MEMORY[0x28223BE20](v43);
  v195 = &v175 - v44;
  MEMORY[0x28223BE20](v45);
  v196 = &v175 - v46;
  MEMORY[0x28223BE20](v47);
  v199 = &v175 - v48;
  MEMORY[0x28223BE20](v49);
  v197 = &v175 - v50;
  MEMORY[0x28223BE20](v51);
  v219 = &v175 - v52;
  MEMORY[0x28223BE20](v53);
  v55 = &v175 - v54;
  MEMORY[0x28223BE20](v56);
  v58 = &v175 - v57;
  MEMORY[0x28223BE20](v59);
  v61 = &v175 - v60;
  v62 = 0xE900000000000073;
  v63 = a1;
  sub_24F928398();
  v214 = sub_24F928348();
  v65 = v64;
  v68 = *(v17 + 8);
  v67 = (v17 + 8);
  v66 = v68;
  v68(v61, v16);
  v224 = v68;
  if (!v65)
  {
    v69 = 0x6D61726150797562;
    v73 = v63;
    v74 = v16;
LABEL_11:
    v94 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v95 = v69;
    v95[1] = v62;
    v95[2] = &type metadata for PurchaseRepresentation;
    (*(*(v94 - 8) + 104))(v95, *MEMORY[0x277D22530], v94);
    swift_willThrow();
    v96 = sub_24F9285B8();
    (*(*(v96 - 8) + 8))(v223, v96);
    return v224(v73, v74);
  }

  v221 = v65;
  v69 = 0x64496D616461;
  sub_24F928398();
  v70 = sub_24F928348();
  v72 = v71;
  v66(v58, v16);
  v73 = v63;
  v74 = v16;
  v75 = v72;
  v76 = v67;
  if (!v75)
  {
LABEL_10:

    v62 = 0xE600000000000000;
    goto LABEL_11;
  }

  v194 = v70;
  v225 = v70;
  v226 = v75;
  AdamId.numberValue.getter();
  if (!v77 || (v69 = 0x726F646E6576, v77, sub_24F928398(), v78 = sub_24F928348(), v80 = v79, v66(v55, v74), !v80))
  {

    goto LABEL_10;
  }

  v190 = v78;
  v81 = v219;
  sub_24F928398();
  v82 = sub_24F928348();
  v84 = v83;
  v66(v81, v74);
  v189 = v84;
  if (!v84)
  {
    v69 = 0x656D614E707061;

    v62 = 0xE700000000000000;
    goto LABEL_11;
  }

  v186 = v82;
  v85 = v197;
  sub_24F928398();
  v86 = v75;
  v87 = v198;
  sub_24F9282B8();
  v219 = v74;
  v88 = v87;
  v197 = v76;
  v66(v85, v74);
  v89 = sub_24F92AC28();
  v90 = *(v89 - 8);
  v91 = *(v90 + 48);
  v192 = v90 + 48;
  v191 = v91;
  v92 = v91(v88, 1, v89);
  v188 = v86;
  v187 = v80;
  v193 = v89;
  v185 = v90;
  v93 = v73;
  if (v92 == 1)
  {
    sub_24E601704(v88, &qword_27F2213B0);
    LODWORD(v198) = 0;
  }

  else
  {
    v184 = v73;
    v98 = v220;
    v99 = sub_24F92ABB8();
    v220 = v98;
    (*(v90 + 8))(v88, v89);
    v100 = (v99 + 32);
    v198 = v99;
    v101 = *(v99 + 16);
    while (1)
    {
      if (!v101)
      {

        LODWORD(v198) = 0;
        goto LABEL_22;
      }

      v103 = *v100;
      if (v103 <= 3 && *v100 > 1u && v103 != 3)
      {
        break;
      }

      v102 = sub_24F92CE08();

      ++v100;
      --v101;
      if (v102)
      {
        goto LABEL_21;
      }
    }

LABEL_21:

    LODWORD(v198) = 1;
LABEL_22:
    v93 = v184;
    v66 = v224;
  }

  v104 = v205;
  v105 = v199;
  sub_24F928398();
  v106 = sub_24F928278();
  v66(v105, v219);
  if (v106 != 2 && (v106 & 1) != 0)
  {
    v107 = 2;
LABEL_32:
    LODWORD(v199) = v107;
    goto LABEL_34;
  }

  v108 = v196;
  sub_24F928398();
  v109 = sub_24F928278();
  v66(v108, v219);
  if (v109 != 2 && (v109 & 1) != 0)
  {
    v107 = 3;
    goto LABEL_32;
  }

  v110 = v195;
  sub_24F928398();
  v111 = sub_24F928278();
  v66(v110, v219);
  if (v111 != 2 && (v111 & 1) != 0)
  {
    v107 = 1;
    goto LABEL_32;
  }

  LODWORD(v199) = 0;
LABEL_34:
  v112 = v200;
  sub_24F928398();
  v227 = sub_24F928278();
  v113 = v227;
  v114 = v112;
  v115 = v219;
  v66(v114, v219);
  v180 = v113 == 2;
  v116 = v222;
  sub_24F928398();
  v196 = sub_24F928348();
  v195 = v117;
  v66(v116, v115);
  v118 = v201;
  sub_24F928398();
  sub_24F9281F8();
  v66(v118, v115);
  v119 = sub_24F928E68();
  v120 = *(v119 - 8);
  v121 = *(v120 + 48);
  v201 = (v120 + 48);
  v200 = v121;
  v122 = (v121)(v104, 1, v119);
  v205 = v119;
  v181 = v120;
  if (v122 == 1)
  {
    sub_24E601704(v104, qword_27F221C40);
    v184 = 0;
  }

  else
  {
    v184 = sub_24F928E48();
    (*(v120 + 8))(v104, v119);
  }

  v123 = v222;
  v176 = 0xD000000000000013;
  sub_24F928398();
  v183 = sub_24F928348();
  v182 = v124;
  v125 = v219;
  v126 = v224;
  v224(v123, v219);
  v127 = v202;
  sub_24F928398();
  v179 = sub_24F928278();
  v126(v127, v125);
  v128 = v203;
  sub_24F928398();
  LODWORD(v202) = sub_24F928278();
  v126(v128, v125);
  v129 = v204;
  sub_24F928398();
  LODWORD(v203) = sub_24F928278();
  v126(v129, v125);
  v130 = v206;
  sub_24F928398();
  v131 = sub_24F928348();
  v133 = v132;
  v126(v130, v125);
  v206 = v133;
  if (v133)
  {
    v134 = v131;
  }

  else
  {
    v134 = 0;
  }

  v177 = v134;
  sub_24F928398();
  v204 = sub_24F928348();
  v178 = v135;
  v126(v123, v125);
  v136 = v207;
  sub_24F928398();
  v137 = v209;
  sub_24F9282B8();
  v126(v136, v125);
  v138 = v193;
  if (v191(v137, 1, v193) == 1)
  {
    sub_24E601704(v137, &qword_27F2213B0);
    v207 = 0;
  }

  else
  {
    v207 = sub_24F92ABB8();
    (*(v185 + 8))(v137, v138);
  }

  v139 = v208;
  sub_24F928398();
  LODWORD(v220) = sub_24F928278();
  v140 = v139;
  v141 = v219;
  v142 = v224;
  v224(v140, v219);
  v143 = v210;
  sub_24F928398();
  LODWORD(v209) = sub_24F928278();
  v142(v143, v141);
  v144 = v222;
  sub_24F928398();
  sub_24EC3F63C();
  sub_24F928248();
  v142(v144, v141);
  LODWORD(v210) = v225;
  sub_24F928398();
  v208 = sub_24F928358();
  LODWORD(v176) = v145;
  v142(v144, v141);
  v146 = v211;
  v147 = v93;
  sub_24F928398();
  v148 = v213;
  sub_24F9281F8();
  v142(v146, v141);
  v149 = v205;
  if ((v200)(v148, 1, v205) == 1)
  {
    sub_24E601704(v148, qword_27F221C40);
    v150 = v215;
  }

  else
  {
    v151 = sub_24F928E48();
    (*(v181 + 8))(v148, v149);
    v150 = v215;
    if (v151)
    {
      goto LABEL_47;
    }
  }

  v151 = sub_24E608448(MEMORY[0x277D84F90]);

LABEL_47:
  v152 = v193;
  v153 = v212;
  sub_24F928398();
  sub_24F9282B8();
  v224(v153, v219);
  if (v191(v150, 1, v152) == 1)
  {
    sub_24E601704(v150, &qword_27F2213B0);
    v154 = 0;
  }

  else
  {
    v154 = sub_24F92ABB8();
    (*(v185 + 8))(v150, v152);
  }

  v155 = v180 | v227;
  v156 = v216;
  sub_24F928398();
  v157 = v217;
  sub_24F9281F8();
  v224(v156, v219);
  v158 = v205;
  if ((v200)(v157, 1, v205) == 1)
  {
    sub_24E601704(v157, qword_27F221C40);
    v159 = v188;
LABEL_54:
    v161 = sub_24E608448(MEMORY[0x277D84F90]);
    v163 = sub_24F9285B8();
    (*(*(v163 - 8) + 8))(v223, v163);
    v224(v147, v219);

    goto LABEL_55;
  }

  v160 = v157;
  v161 = sub_24F928E48();
  (*(v181 + 8))(v160, v158);
  v159 = v188;
  if (!v161)
  {
    goto LABEL_54;
  }

  v162 = sub_24F9285B8();
  (*(*(v162 - 8) + 8))(v223, v162);
  result = v224(v147, v219);
LABEL_55:
  v164 = v221;
  v165 = v218;
  *v218 = v199;
  *(v165 + 1) = v194;
  *(v165 + 2) = v159;
  v166 = v179 & 1;
  v167 = v202 & 1;
  v168 = v203 & 1;
  v169 = v220 & 1;
  v170 = v209 & 1;
  v171 = v176 & 1;
  *(v165 + 3) = v177;
  *(v165 + 4) = v206;
  *(v165 + 5) = v214;
  *(v165 + 6) = v164;
  v172 = v187;
  *(v165 + 7) = v190;
  *(v165 + 8) = v172;
  v173 = v189;
  *(v165 + 9) = v186;
  *(v165 + 10) = v173;
  v165[88] = v198;
  v165[89] = v155 & 1;
  *(v165 + 12) = v196;
  *(v165 + 13) = v195;
  *(v165 + 14) = v184;
  *(v165 + 15) = v183;
  *(v165 + 16) = v182;
  v165[136] = v166;
  v165[137] = v167;
  v165[138] = v168;
  v174 = v178;
  *(v165 + 18) = v204;
  *(v165 + 19) = v174;
  *(v165 + 20) = v207;
  v165[168] = v169;
  v165[169] = v170;
  v165[170] = v210;
  *(v165 + 22) = v208;
  v165[184] = v171;
  *(v165 + 24) = v151;
  *(v165 + 25) = v161;
  *(v165 + 26) = v154;
  return result;
}

unint64_t sub_24EC3F63C()
{
  result = qword_27F22BFB8;
  if (!qword_27F22BFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BFB8);
  }

  return result;
}

unint64_t sub_24EC3F694()
{
  result = qword_27F22BFC0;
  if (!qword_27F22BFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BFC0);
  }

  return result;
}

uint64_t sub_24EC3F6E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EC3F730(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EC3F7DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C0B0);
  sub_24EC4036C(&qword_27F22C0B8, &qword_27F22C0B0);
  sub_24EC403C0();
  return sub_24F9269E8();
}

uint64_t sub_24EC3F888(uint64_t a1)
{
  v2 = sub_24F921B58();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FocusableActionModifier();
  sub_24E7538CC(a1 + *(v6 + 24), &v9);
  if (v10)
  {
    sub_24E612C80(&v9, v11);
    sub_24F7695C8(&v9);
    if (v10)
    {
      __swift_project_boxed_opaque_existential_1(&v9, v10);
      sub_24F76973C(v5);
      sub_24F9218A8();
      (*(v3 + 8))(v5, v2);
      __swift_destroy_boxed_opaque_existential_1(v11);
      return __swift_destroy_boxed_opaque_existential_1(&v9);
    }

    __swift_destroy_boxed_opaque_existential_1(v11);
    v8 = &unk_27F212740;
  }

  else
  {
    v8 = qword_27F21B590;
  }

  return sub_24E601704(&v9, v8);
}

uint64_t sub_24EC3FA1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  sub_24EC3FFC4(v7, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_24EC40180(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C080);
  (*(*(v10 - 8) + 16))(a3, a1, v10);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22C088);
  v12 = (a3 + *(result + 36));
  *v12 = sub_24EC401E4;
  v12[1] = v9;
  return result;
}

uint64_t sub_24EC3FC48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710);
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
    v12 = *(a1 + *(a3 + 24) + 24);
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

uint64_t sub_24EC3FD38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710);
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
    *(a1 + *(a4 + 24) + 24) = a2;
  }

  return result;
}

uint64_t type metadata accessor for FocusableActionModifier()
{
  result = qword_27F22C040;
  if (!qword_27F22C040)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EC3FE50()
{
  sub_24EC3FF44(319, &qword_27F22C050, &unk_27F212740, &unk_24F940730, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_24E6D74E4();
    if (v1 <= 0x3F)
    {
      sub_24EC3FF44(319, &qword_27F218180, &unk_27F22C070, &unk_24F947CB0, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24EC3FF44(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_24EC3FFC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FocusableActionModifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EC40028()
{
  v1 = type metadata accessor for FocusableActionModifier();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  if (*(v0 + v2 + 40))
  {
    if (*(v3 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + v2);
    }
  }

  else
  {
  }

  v4 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_24F921B58();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = v3 + *(v1 + 24);
  if (*(v6 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  return swift_deallocObject();
}

uint64_t sub_24EC40180(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FocusableActionModifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EC401E4()
{
  v1 = *(type metadata accessor for FocusableActionModifier() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_24EC3F888(v2);
}

unint64_t sub_24EC40258()
{
  result = qword_27F22C098;
  if (!qword_27F22C098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F22C088);
    sub_24EC4036C(&qword_27F22C0A0, &qword_27F22C080);
    sub_24EC402FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C098);
  }

  return result;
}

unint64_t sub_24EC402FC()
{
  result = qword_27F22C0A8;
  if (!qword_27F22C0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C0A8);
  }

  return result;
}

uint64_t sub_24EC4036C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24EC403C0()
{
  result = qword_27F22C0C0;
  if (!qword_27F22C0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C0C0);
  }

  return result;
}

uint64_t sub_24EC40424()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C0B0);
  sub_24EC4036C(&qword_27F22C0B8, &qword_27F22C0B0);
  sub_24EC403C0();
  return swift_getOpaqueTypeConformance2();
}

id sub_24EC404C0@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 8);
  v3 = *(v1 + 16);
  v5 = type metadata accessor for UIPressGestureRecognizer.Coordinator();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCV12GameStoreKit24UIPressGestureRecognizer11Coordinator_action];
  *v7 = v4;
  *(v7 + 1) = v3;
  v9.receiver = v6;
  v9.super_class = v5;

  result = objc_msgSendSuper2(&v9, sel_init);
  *a1 = result;
  return result;
}

id sub_24EC40544()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C0C8);
  sub_24F925798();
  v0 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v5 action:sel_handleGesture];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_24F941C80;
  v2 = v0;
  *(v1 + 32) = sub_24F92BB08();
  sub_24E9421D0();
  v3 = sub_24F92B588();

  [v2 setAllowedPressTypes_];

  return v2;
}

uint64_t sub_24EC40664(void (*a1)(void))
{
  v1 = off_28620C6F8[0];
  a1(0);
  result = v1();
  v3 = result;
  v4 = MEMORY[0x277D84F90];
  v14 = MEMORY[0x277D84F90];
  v5 = *(result + 16);
  if (v5)
  {
    v6 = 0;
    v7 = result + 32;
    v12 = result + 32;
    do
    {
      v8 = v7 + 40 * v6;
      v9 = v6;
      while (1)
      {
        if (v9 >= *(v3 + 16))
        {
          __break(1u);
          return result;
        }

        sub_24E65864C(v8, v13);
        if (*(off_28620C700[0]() + 16))
        {
          sub_24E76D934(v13);
          if (v10)
          {
            break;
          }
        }

        ++v9;

        result = sub_24E6585F8(v13);
        v8 += 40;
        if (v5 == v9)
        {
          goto LABEL_11;
        }
      }

      v11 = sub_24E6585F8(v13);
      MEMORY[0x253050F00](v11);
      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      v6 = v9 + 1;
      result = sub_24F92B638();
      v4 = v14;
      v7 = v12;
    }

    while (v5 - 1 != v9);
  }

LABEL_11:

  return v4;
}

uint64_t ReviewsPage.SortOption.id.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ReviewsPage.SortOption.title.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ReviewsPage.SortOption.selectedActionTitle.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t ReviewsPage.SortOption.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC12GameStoreKit11ReviewsPage10SortOption_url;
  v4 = sub_24F91F4A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

char *ReviewsPage.SortOption.__allocating_init(id:title:selectedActionTitle:url:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  *(v14 + 2) = a1;
  *(v14 + 3) = a2;
  *(v14 + 4) = a3;
  *(v14 + 5) = a4;
  *(v14 + 6) = a5;
  *(v14 + 7) = a6;
  v15 = OBJC_IVAR____TtCC12GameStoreKit11ReviewsPage10SortOption_url;
  v16 = sub_24F91F4A8();
  (*(*(v16 - 8) + 32))(&v14[v15], a7, v16);
  return v14;
}

char *ReviewsPage.SortOption.init(id:title:selectedActionTitle:url:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 2) = a1;
  *(v7 + 3) = a2;
  *(v7 + 4) = a3;
  *(v7 + 5) = a4;
  *(v7 + 6) = a5;
  *(v7 + 7) = a6;
  v9 = OBJC_IVAR____TtCC12GameStoreKit11ReviewsPage10SortOption_url;
  v10 = sub_24F91F4A8();
  (*(*(v10 - 8) + 32))(&v7[v9], a7, v10);
  return v7;
}

uint64_t ReviewsPage.SortOption.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ReviewsPage.SortOption.init(deserializing:using:)(a1, a2);
  return v4;
}

char *ReviewsPage.SortOption.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v58 = *v2;
  v59 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v4 - 8);
  v56 = &v47 - v5;
  v6 = sub_24F91F4A8();
  v54 = *(v6 - 8);
  v55 = v6;
  MEMORY[0x28223BE20](v6);
  v52 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v53 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v47 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v47 - v18;
  v20 = 0xE200000000000000;
  sub_24F928398();
  v51 = sub_24F928348();
  v22 = v21;
  v23 = *(v9 + 8);
  v23(v19, v8);
  if (v22)
  {
    v57 = v22;
    v24 = 0x656C746974;
    sub_24F928398();
    v25 = sub_24F928348();
    v27 = v26;
    v23(v16, v8);
    v28 = a1;
    if (v27)
    {
      v49 = v25;
      v50 = v27;
      v24 = 0xD000000000000013;
      v20 = 0x800000024FA57B10;
      sub_24F928398();
      v48 = sub_24F928348();
      v30 = v29;
      v23(v13, v8);
      v31 = v60;
      if (v30)
      {
        v47 = v30;
        v32 = v53;
        sub_24F928398();
        v33 = v56;
        sub_24F928268();
        v23(v32, v8);
        v34 = v8;
        v36 = v54;
        v35 = v55;
        if ((*(v54 + 48))(v33, 1, v55) != 1)
        {
          v41 = sub_24F9285B8();
          (*(*(v41 - 8) + 8))(v59, v41);
          v23(v28, v34);
          v42 = *(v36 + 32);
          v43 = v52;
          v42(v52, v33, v35);
          v44 = v57;
          *(v31 + 2) = v51;
          *(v31 + 3) = v44;
          v45 = v50;
          *(v31 + 4) = v49;
          *(v31 + 5) = v45;
          v46 = v47;
          *(v31 + 6) = v48;
          *(v31 + 7) = v46;
          v42(&v31[OBJC_IVAR____TtCC12GameStoreKit11ReviewsPage10SortOption_url], v43, v35);
          return v31;
        }

        sub_24E601704(v33, &qword_27F228530);
        v20 = 0xE300000000000000;
        v24 = 7107189;
        v8 = v34;
      }

      else
      {
      }
    }

    else
    {

      v20 = 0xE500000000000000;
      v31 = v60;
    }
  }

  else
  {
    v28 = a1;
    v31 = v60;
    v24 = 25705;
  }

  v37 = sub_24F92AC38();
  sub_24EC43FEC(&qword_27F2213B8, MEMORY[0x277D22548]);
  swift_allocError();
  *v38 = v24;
  v38[1] = v20;
  v38[2] = v58;
  (*(*(v37 - 8) + 104))(v38, *MEMORY[0x277D22530], v37);
  swift_willThrow();
  v39 = sub_24F9285B8();
  (*(*(v39 - 8) + 8))(v59, v39);
  v23(v28, v8);
  type metadata accessor for ReviewsPage.SortOption(0);
  swift_deallocPartialClassInstance();
  return v31;
}

uint64_t ReviewsPage.SortOption.deinit()
{

  v1 = OBJC_IVAR____TtCC12GameStoreKit11ReviewsPage10SortOption_url;
  v2 = sub_24F91F4A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ReviewsPage.SortOption.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtCC12GameStoreKit11ReviewsPage10SortOption_url;
  v2 = sub_24F91F4A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

char *sub_24EC41200@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ReviewsPage.SortOption(0);
  v7 = swift_allocObject();
  result = ReviewsPage.SortOption.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t ReviewsPage.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v173 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v145 = &v136 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v153 = &v136 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v154 = &v136 - v9;
  MEMORY[0x28223BE20](v8);
  v156 = &v136 - v10;
  v159 = sub_24F928818();
  v158 = *(v159 - 8);
  v11 = MEMORY[0x28223BE20](v159);
  v155 = &v136 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v166 = &v136 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v157 = &v136 - v16;
  MEMORY[0x28223BE20](v15);
  v167 = &v136 - v17;
  v18 = sub_24F9285B8();
  v19 = *(v18 - 8);
  v174 = v18;
  v175 = v19;
  v20 = MEMORY[0x28223BE20](v18);
  v162 = &v136 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v165 = &v136 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v136 - v24;
  v26 = sub_24F92AC28();
  v171 = *(v26 - 8);
  v27 = MEMORY[0x28223BE20](v26);
  v161 = &v136 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v169 = &v136 - v29;
  v30 = sub_24F928388();
  v31 = *(v30 - 8);
  v32 = MEMORY[0x28223BE20](v30);
  v152 = &v136 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v151 = &v136 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v149 = &v136 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v148 = &v136 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v147 = &v136 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v146 = &v136 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v160 = &v136 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v163 = &v136 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v50 = &v136 - v49;
  MEMORY[0x28223BE20](v48);
  v52 = &v136 - v51;
  v53 = a1;
  sub_24F928398();
  v150 = sub_24F928348();
  v55 = v54;
  v58 = *(v31 + 8);
  v57 = v31 + 8;
  v56 = v58;
  v58(v52, v30);
  v168 = v55;
  if (v55)
  {
    v59 = v172;
    v170 = v53;
    sub_24F928398();
    sub_24F9282B8();
    v60 = v50;
    v61 = v56;
    v56(v60, v30);
    v62 = v171;
    if ((*(v171 + 48))(v25, 1, v26) == 1)
    {

      sub_24E601704(v25, &qword_27F2213B0);
      v63 = sub_24F92AC38();
      sub_24EC43FEC(&qword_27F2213B8, MEMORY[0x277D22548]);
      swift_allocError();
      *v64 = 0x7365766C656873;
      v64[1] = 0xE700000000000000;
      v64[2] = v59;
      (*(*(v63 - 8) + 104))(v64, *MEMORY[0x277D22530], v63);
      swift_willThrow();
      v65 = v175 + 8;
      (*(v175 + 8))(v173, v174);
      v61(v170, v30);
    }

    else
    {
      v68 = v26;
      v142 = v61;
      v143 = v57;
      v144 = v30;
      v69 = v169;
      (*(v62 + 32))(v169, v25, v26);
      (*(v62 + 16))(v161, v69, v26);
      v70 = v174;
      v71 = *(v175 + 16);
      v72 = v165;
      v73 = v173;
      v71(v165, v173, v174);
      type metadata accessor for Shelf();
      sub_24EC43FEC(&qword_27F2265E0, type metadata accessor for Shelf);
      v161 = sub_24F92B6A8();
      v65 = 0xEB00000000736369;
      v172 = v68;
      sub_24F928398();
      v71(v72, v73, v70);
      type metadata accessor for ReviewsPage.SortOption(0);
      sub_24EC43FEC(&qword_27F22C0D0, type metadata accessor for ReviewsPage.SortOption);
      v141 = sub_24F92B698();
      sub_24F928398();
      v140 = v71;
      v71(v162, v73, v70);
      v74 = v164;
      sub_24F928788();
      if (v74)
      {

        (*(v175 + 8))(v73, v70);
        v142(v170, v144);
        (*(v171 + 8))(v169, v172);
      }

      else
      {
        v139 = 0;
        type metadata accessor for PageRenderMetricsEvent();
        sub_24F928398();
        v75 = v140;
        v140(v72, v73, v70);
        sub_24EC43FEC(&qword_27F2218C0, type metadata accessor for PageRenderMetricsEvent);
        sub_24F929548();
        v160 = v177;
        type metadata accessor for Ratings();
        sub_24F928398();
        v75(v72, v73, v70);
        v164 = &protocol conformance descriptor for ProductRatingsAndReviewsComponent;
        sub_24EC43FEC(&qword_27F213ED0, type metadata accessor for Ratings);
        sub_24F929548();
        v162 = v177;
        type metadata accessor for ProductReviewActions();
        sub_24F928398();
        v75(v72, v73, v70);
        sub_24EC43FEC(&qword_27F22C0D8, type metadata accessor for ProductReviewActions);
        sub_24F929548();
        v164 = v177;
        type metadata accessor for FlowAction();
        sub_24F928398();
        v75(v72, v73, v70);
        sub_24EC43FEC(&qword_27F22C0E0, type metadata accessor for FlowAction);
        sub_24F929548();
        v165 = v177;
        v76 = v146;
        sub_24F928398();
        v163 = sub_24F928348();
        v140 = v77;
        v78 = v144;
        v79 = v142;
        v142(v76, v144);
        v80 = v147;
        sub_24F928398();
        v146 = sub_24F928348();
        v138 = v81;
        v79(v80, v78);
        v82 = v148;
        sub_24F928398();
        v83 = sub_24F928348();
        v147 = v84;
        v79(v82, v78);
        v85 = v149;
        sub_24F928398();
        v148 = sub_24F928348();
        v137 = v86;
        v79(v85, v78);
        v87 = v151;
        sub_24F928398();
        v88 = sub_24F928278();
        v79(v87, v78);
        v89 = v152;
        sub_24F928398();
        sub_24F928368();
        v79(v89, v78);
        v90 = *(v158 + 16);
        v91 = v157;
        v92 = v159;
        v90(v157, v167, v159);
        v152 = v90;
        type metadata accessor for ReviewsPage(0);
        v65 = swift_allocObject();
        v93 = (v65 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_adamId);
        v94 = v168;
        *v93 = v150;
        v93[1] = v94;
        v95 = (v65 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_targetReviewId);
        v96 = v138;
        *v95 = v146;
        v95[1] = v96;
        *(v65 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_sortOptions) = v141;
        v97 = (v65 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_initialSortOptionIdentifier);
        v98 = v147;
        *v97 = v83;
        v97[1] = v98;
        v99 = (v65 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_sortActionSheetTitle);
        v100 = v137;
        *v99 = v148;
        v99[1] = v100;
        *(v65 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_ratings) = v162;
        *(v65 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_productReviewActions) = v164;
        *(v65 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_alwaysAllowReviews) = v88 & 1;
        *(v65 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_trailingNavBarAction) = v165;
        sub_24E60169C(&v177, v176, &qword_27F2129B0);
        v90(v166, v91, v92);
        v101 = v156;
        (*(v175 + 56))(v156, 1, 1, v174);
        v102 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
        *(v65 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber) = 0;

        v103 = sub_24EEF0A68(v161);
        v105 = v104;

        *(v65 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering) = v103;
        *(v65 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping) = v105;
        v106 = (v65 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
        v107 = v140;
        *v106 = v163;
        v106[1] = v107;
        *(v65 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shareAction) = 0;
        *(v65 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions) = 0;
        sub_24E60169C(v176, v65 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, &qword_27F2129B0);
        *(v65 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) = 0;
        swift_beginAccess();
        *(v65 + v102) = 0;
        v108 = v101;
        *(v65 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_loadCompletedAction) = 0;
        v109 = v155;
        v110 = v152;
        (v152)(v155, v166, v92);
        v111 = v154;
        sub_24E60169C(v108, v154, &qword_27F2218B0);
        *(v65 + 16) = 0;
        v110(v65 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics, v109, v92);
        *(v65 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v160;
        v112 = v153;
        sub_24E60169C(v111, v153, &qword_27F2218B0);
        v113 = v174;
        v114 = v175;
        v168 = *(v175 + 48);
        if (v168(v112, 1, v174) == 1)
        {

          (*(v114 + 8))(v173, v113);
          v142(v170, v144);
          sub_24E601704(v111, &qword_27F2218B0);
          v115 = v108;
          v116 = *(v158 + 8);
          v117 = v109;
          v118 = v159;
          v116(v117, v159);
          sub_24E601704(v115, &qword_27F2218B0);
          v116(v166, v118);
          sub_24E601704(v176, &qword_27F2129B0);
          v116(v157, v118);
          sub_24E601704(&v177, &qword_27F2129B0);
          v116(v167, v118);
          (*(v171 + 8))(v169, v172);
          v119 = v112;
        }

        else
        {
          v120 = v113;
          v121 = qword_27F2105F0;

          if (v121 != -1)
          {
            swift_once();
          }

          v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
          __swift_project_value_buffer(v122, qword_27F22D8D8);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
          sub_24F9285C8();
          v123 = v178;
          v124 = v158;
          v125 = v154;
          if (v178)
          {
          }

          v127 = v114 + 8;
          v126 = *(v114 + 8);
          v126(v153, v120);
          if (!v123)
          {

            v126(v173, v120);
            v142(v170, v144);
            sub_24E601704(v125, &qword_27F2218B0);
            v131 = *(v124 + 8);
            v132 = v159;
            v131(v155, v159);
            sub_24E601704(v156, &qword_27F2218B0);
            v131(v166, v132);
            sub_24E601704(v176, &qword_27F2129B0);
            v131(v157, v132);
            sub_24E601704(&v177, &qword_27F2129B0);
            v131(v167, v132);
            (*(v171 + 8))(v169, v172);
            return v65;
          }

          v128 = v145;
          sub_24E60169C(v125, v145, &qword_27F2218B0);
          if (v168(v128, 1, v120) != 1)
          {
            sub_24ECDF110();

            v175 = v127;
            v126(v173, v120);
            v142(v170, v144);
            sub_24E601704(v125, &qword_27F2218B0);
            v133 = *(v124 + 8);
            v134 = v159;
            v133(v155, v159);
            sub_24E601704(v156, &qword_27F2218B0);
            v133(v166, v134);
            sub_24E601704(v176, &qword_27F2129B0);
            v133(v157, v134);
            sub_24E601704(&v177, &qword_27F2129B0);
            v133(v167, v134);
            (*(v171 + 8))(v169, v172);
            v126(v145, v120);
            return v65;
          }

          v126(v173, v120);
          v142(v170, v144);
          sub_24E601704(v125, &qword_27F2218B0);
          v129 = *(v124 + 8);
          v130 = v159;
          v129(v155, v159);
          sub_24E601704(v156, &qword_27F2218B0);
          v129(v166, v130);
          sub_24E601704(v176, &qword_27F2129B0);
          v129(v157, v130);
          sub_24E601704(&v177, &qword_27F2129B0);
          v129(v167, v130);
          (*(v171 + 8))(v169, v172);
          v119 = v128;
        }

        sub_24E601704(v119, &qword_27F2218B0);
      }
    }
  }

  else
  {
    v65 = sub_24F92AC38();
    sub_24EC43FEC(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v66 = 0x64496D616461;
    v67 = v172;
    v66[1] = 0xE600000000000000;
    v66[2] = v67;
    (*(*(v65 - 8) + 104))(v66, *MEMORY[0x277D22530], v65);
    swift_willThrow();
    (*(v175 + 8))(v173, v174);
    v56(v53, v30);
  }

  return v65;
}