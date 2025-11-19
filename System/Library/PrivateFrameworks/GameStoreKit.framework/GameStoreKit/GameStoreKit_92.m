uint64_t InAppPurchaseInstallPagePresenter.init(objectGraph:sidepack:pageUrl:appStateController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = v5 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_mode;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_sidepack;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_sidepack) = 0;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_fetchedPage) = 0;
  v12 = (v5 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_pageTitle);
  *v12 = 0;
  v12[1] = 0;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_didAutoDownload) = 0;
  v13 = v5 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0u;
  *(v13 + 64) = 0;
  *(v13 + 72) = -256;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_installAction) = 0;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_offerDisplayProperties) = 0;
  v14 = (v5 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_stateMachine);
  *v14 = 0;
  v14[1] = 0;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + v11) = a2;

  v15 = OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_pageUrl;
  v16 = sub_24F91F4A8();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v5 + v15, a3, v16);
  v18 = (v5 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_appStateController);
  *v18 = a4;
  v18[1] = a5;
  v19 = (v5 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState);
  *v19 = 0;
  v19[73] = 3;
  swift_unknownObjectRetain();

  v21 = sub_24EC8415C(v20, 0, 0, 0);

  if (a2)
  {
    v22 = type metadata accessor for InAppPurchaseInstallPage();
    v23 = &protocol witness table for InAppPurchaseInstallPage;
    v24 = sub_24EF71098();
    v25 = a2;
  }

  else
  {
    v25 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v27[1] = 0;
    v27[2] = 0;
  }

  v27[0] = v25;
  v27[3] = v22;
  v27[4] = v23;
  v27[5] = v24;
  swift_beginAccess();

  sub_24EA095A4(v27, v21 + 40);
  swift_endAccess();
  sub_24EC832DC();

  swift_unknownObjectRelease();

  (*(v17 + 8))(a3, v16);
  sub_24E601704(v27, &qword_27F224F98);
  return v21;
}

void sub_24EF6E8C4()
{
  sub_24EF6E910();
  if ((*(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_mode + 8) & 1) == 0 && !*(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_mode))
  {

    sub_24EF6EDA8();
  }
}

uint64_t sub_24EF6E910()
{
  v1 = v0;
  v2 = type metadata accessor for InAppPurchaseInstallPageIntent();
  MEMORY[0x28223BE20](v2);
  v4 = &v21[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  *(v0 + 32) = 1;
  v5 = v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v6 + 24) + 8))(ObjectType);
    swift_unknownObjectRelease();
  }

  v8 = OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_sidepack;
  if (!*(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_sidepack))
  {
    goto LABEL_10;
  }

  sub_24EF6F4C0(v9);
  *(v0 + 32) = 0;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v5 + 8);
    v11 = swift_getObjectType();
    (*(*(v10 + 24) + 16))(v11);
    swift_unknownObjectRelease();
  }

  v13 = *(v0 + v8);
  if (!v13 || (*(v13 + OBJC_IVAR____TtC12GameStoreKit24InAppPurchaseInstallPage_isComplete) & 1) == 0 && (!*(v13 + 16) || !*(v13 + 24)))
  {
LABEL_10:
    v14 = OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_pageUrl;
    v15 = *(v2 + 20);
    v16 = sub_24F91F4A8();
    (*(*(v16 - 8) + 16))(&v4[v15], v1 + v14, v16);
    *v4 = 0xD00000000000001ELL;
    *(v4 + 1) = 0x800000024FA653F0;
    type metadata accessor for JSIntentDispatcher();
    v17 = *(v1 + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_objectGraph);
    sub_24F928FD8();
    sub_24F92A758();
    sub_24EB47B88(v4, v17, "GameStoreKit/InAppPurchaseInstallPagePresenter.swift", 52, 2);
    v18 = sub_24E74EC40();
    swift_retain_n();
    v19 = sub_24F92BEF8();
    v21[3] = v18;
    v21[4] = MEMORY[0x277D225C0];
    v21[0] = v19;
    sub_24F92A958();

    sub_24EF71798(v4);
    return __swift_destroy_boxed_opaque_existential_1(v21);
  }

  return result;
}

uint64_t sub_24EF6EBF8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(a2 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_fetchedPage) = *a1;

  sub_24EF6F4C0(v3);
  swift_beginAccess();
  *(a2 + 32) = 0;
  v4 = a2 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v6 + 24) + 16))(ObjectType);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24EF6ECC4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a2 + 32) = 0;
  v4 = a2 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v5 + 24) + 16))(ObjectType);
    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v4 + 8);
    v9 = swift_getObjectType();
    (*(*(v8 + 24) + 24))(a1, v9);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_24EF6EDA8()
{
  if ((*(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_mode + 8) & 1) != 0 || *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_mode))
  {
    return;
  }

  v1 = (v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState);
  v2 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 16);
  v53 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState);
  v54 = v2;
  *&v56[10] = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 58);
  v3 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 48);
  v55 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 32);
  *v56 = v3;
  if (v56[25] > 5u)
  {
    if (v56[25] < 0xAu || v56[25] != 10 && v56[25] != 11)
    {
      v4 = v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_view;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v5 = *(v4 + 8);
        ObjectType = swift_getObjectType();
        (*(v5 + 96))(ObjectType, v5);
        swift_unknownObjectRelease();
      }
    }

    return;
  }

  if (v56[25] < 3u)
  {
    v7 = v1[3];
    v47 = v1[2];
    v48[0] = v7;
    *(v48 + 10) = *(v1 + 58);
    v8 = v1[1];
    v45 = *v1;
    v46 = v8;
    v9 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 48);
    v51 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 32);
    *v52 = v9;
    *&v52[10] = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 58);
    v10 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 16);
    v49 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState);
    v50 = v10;
    memmove((v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState), (v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState), 0x4AuLL);
    sub_24EF7172C(&v45, &v57);
    sub_24E601704(&v49, &qword_27F234EF8);
    v11 = v1[3];
    v59 = v1[2];
    *v60 = v11;
    *&v60[10] = *(v1 + 58);
    v12 = v1[1];
    v57 = *v1;
    v58 = v12;
    sub_24EF7172C(&v57, v44);
    sub_24EF6F2B4(&v57);
    sub_24EF71698(&v57);
    v13 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_offerDisplayProperties);
    if (v13)
    {
      LOBYTE(v13) = *(v13 + 121);
    }

    v14 = *(v1 + 73);
    if (v14 == 2)
    {
      goto LABEL_15;
    }

    if (v14 == 1)
    {
      LOBYTE(v13) = (*(v1 + 1) == 1) | v13;
    }

    if (v13)
    {
LABEL_15:
      v15 = OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_didAutoDownload;
      if ((*(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_didAutoDownload) & 1) == 0)
      {
        sub_24EF70788();
        *(v0 + v15) = 1;
      }
    }

    return;
  }

  if (v56[25] - 4 < 2)
  {
    v16 = v53;
    v17 = v54;
    if (*(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_fetchedPage))
    {
      v18 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_fetchedPage);
    }

    else
    {
      v18 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_sidepack);
      if (!v18)
      {
        sub_24EF7172C(&v53, &v57);
        goto LABEL_32;
      }
    }

    v31 = *(v18 + 16);
    sub_24EF7172C(&v53, &v57);

    if (v31)
    {
      v32 = *(v31 + OBJC_IVAR____TtC12GameStoreKit19InAppPurchaseLockup_isSubscription);

      if (v32)
      {
        v33 = "HEADER_IN_PROGRESS_IAP";
        v34 = 0xD00000000000002FLL;
LABEL_33:
        v35._object = 0x800000024FA65370;
        v35._countAndFlagsBits = 0xD00000000000001FLL;
        v36._countAndFlagsBits = 0;
        v36._object = 0xE000000000000000;
        v37 = localizedString(_:comment:)(v35, v36);
        v38._object = (v33 | 0x8000000000000000);
        v38._countAndFlagsBits = v34;
        v39._countAndFlagsBits = 0;
        v39._object = 0xE000000000000000;
        v40 = localizedString(_:comment:)(v38, v39);
        v41 = v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_view;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v42 = *(v41 + 8);
          v43 = swift_getObjectType();
          (*(v42 + 80))(v37._countAndFlagsBits, v37._object, v40._countAndFlagsBits, v40._object, v43, v42, *&v16);

          swift_unknownObjectRelease();
        }

        else
        {
        }

        return;
      }
    }

LABEL_32:
    v33 = "INSTALL_PAGE_BUTTON_IN_PROGRESS";
    v34 = 0xD000000000000026;
    goto LABEL_33;
  }

  v19 = (v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState);
  *&v52[10] = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 58);
  v20 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 48);
  v51 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 32);
  *v52 = v20;
  v21 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 16);
  v49 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState);
  v50 = v21;
  if (HIBYTE(*&v52[24]) <= 0xFEu)
  {
    v22 = v19[3];
    v59 = v19[2];
    *v60 = v22;
    *&v60[16] = *(v19 + 8);
    v23 = v19[1];
    v57 = *v19;
    v58 = v23;
    *&v60[24] = *&v52[24];
    v47 = v59;
    v48[0] = v22;
    *(v48 + 10) = *(v19 + 58);
    v45 = v57;
    v46 = v23;
    sub_24EF7172C(&v45, v44);
    sub_24EF6F3E8(&v57);
    v25 = v24;
    v27 = v26;
    v28 = v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v29 = *(v28 + 8);
      v30 = swift_getObjectType();
      (*(v29 + 88))(v25, v27, v30, v29);
      swift_unknownObjectRelease();
      sub_24E601704(&v49, &qword_27F234EF8);
    }

    else
    {

      sub_24E601704(&v49, &qword_27F234EF8);
    }
  }
}

uint64_t sub_24EF6F2B4(uint64_t a1)
{
  v3 = sub_24EF6F3E8(a1);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *(a1 + 73);
  v11 = v1 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_view;
  if (v10 != 1)
  {
    v14 = v3;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = *(v11 + 8);
      ObjectType = swift_getObjectType();
      (*(v15 + 64))(v14, v5, v7, v9, ObjectType, v15);
      goto LABEL_6;
    }

LABEL_7:
  }

  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_7;
  }

  v12 = *(v11 + 8);
  v13 = swift_getObjectType();
  (*(v12 + 72))(v7, v9, v13, v12);
LABEL_6:

  swift_unknownObjectRelease();
}

uint64_t sub_24EF6F3E8(uint64_t a1)
{
  v1 = *(a1 + 73);
  if (v1 == 1)
  {
    countAndFlagsBits = 0;
    v6 = 0xD000000000000025;
    v5 = "INSTALL_PAGE_SUBHEADER_PRE_BUY";
  }

  else if (v1 == 2)
  {
    v2._object = 0x800000024FA5BAA0;
    v2._countAndFlagsBits = 0xD000000000000018;
    v3._countAndFlagsBits = 0;
    v3._object = 0xE000000000000000;
    countAndFlagsBits = localizedString(_:comment:)(v2, v3)._countAndFlagsBits;
    v5 = "HEADER_PRE_REDOWNLOAD";
    v6 = 0xD000000000000021;
  }

  else
  {
    countAndFlagsBits = sub_24EF70518();
    v5 = "INSTALL_PAGE_HEADER_PRE_UPDATE";
    v6 = 0xD00000000000001ELL;
  }

  v7 = v5 | 0x8000000000000000;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  localizedString(_:comment:)(*&v6, v8);
  return countAndFlagsBits;
}

uint64_t sub_24EF6F4C0(uint64_t result)
{
  v2 = v1;
  v3 = result;
  if ((*(result + OBJC_IVAR____TtC12GameStoreKit24InAppPurchaseInstallPage_isComplete) & 1) != 0 || *(result + 16) && *(result + 24))
  {
    v86 = type metadata accessor for InAppPurchaseInstallPage();
    v87 = &protocol witness table for InAppPurchaseInstallPage;
    v88 = sub_24EF71098();
    *&v85 = v3;
    swift_beginAccess();

    sub_24EA095A4(&v85, v1 + 40);
    swift_endAccess();
    sub_24EC832DC();
    result = sub_24E601704(&v85, &qword_27F224F98);
  }

  v4 = *(v3 + 24);
  if (v4)
  {
    *(v1 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_installAction) = *(v4 + 232);

    v5 = OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_offerDisplayProperties;
    *(v1 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_offerDisplayProperties) = *(v4 + 240);

    LOBYTE(v85) = 0;
    v89 = 3;
    sub_24EF70DCC(&v85);
    v6 = *(v1 + v5);
    if (v6)
    {
      v67 = v3;
      v7 = *(v1 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_appStateController + 8);
      ObjectType = swift_getObjectType();
      v9 = *(v6 + 32);
      *&v81 = *(v6 + 24);
      *(&v81 + 1) = v9;
      v10 = *(v7 + 56);

      v11 = v10(&v81, ObjectType, v7);
      v13 = v12;

      v14 = (v1 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_stateMachine);
      *v14 = v11;
      v14[1] = v13;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v15 = swift_getObjectType();
      v16 = *(v13 + 16);
      v16(&v73, v15, v13);
      v81 = v73;
      v82 = v74;
      v83 = v75;
      *v84 = v76;
      sub_24EF70090(&v81, &v77);
      if (v80[25] <= 2u)
      {
        v17 = (v1 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState);
        v18 = *(v1 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 48);
        v83 = *(v1 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 32);
        *v84 = v18;
        *&v84[10] = *(v1 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 58);
        v19 = *(v1 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 16);
        v81 = *(v1 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState);
        v82 = v19;
        v20 = v78;
        *v17 = v77;
        v17[1] = v20;
        v21 = *v80;
        v17[2] = v79;
        v17[3] = v21;
        *(v17 + 58) = *&v80[10];
        sub_24EF7172C(&v77, &v68);
        sub_24E601704(&v81, &qword_27F234EF8);
      }

      v22 = 0xD000000000000022;
      v23 = v76 >> 60;
      if (v76 >> 60 == 2)
      {
        v24 = "DER_PRE_BUY_FREE";
        v22 = 0xD00000000000001ELL;
LABEL_30:
        v38 = v24 | 0x8000000000000000;
        v39._countAndFlagsBits = 0;
        v39._object = 0xE000000000000000;
        *(v1 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_pageTitle) = localizedString(_:comment:)(*&v22, v39);

        v16(v72, v15, v13);
        sub_24EF70090(v72, &v81);
        v68 = v72[0];
        v69 = v72[1];
        v70 = v72[2];
        v71 = v72[3];
        sub_24E88D2AC(&v68);
        sub_24EF70DCC(&v81);
        sub_24EF71698(&v81);
        (*(v13 + 80))(v1, v15, v13);
        v40 = swift_allocObject();
        swift_weakInit();
        v41 = *(v13 + 72);

        v41(v1, sub_24EF71724, v40, v15, v13);

        sub_24EF71698(&v77);
        sub_24E88D2AC(&v73);

        result = swift_unknownObjectRelease();
        v3 = v67;
        goto LABEL_34;
      }

      v24 = "DER_SUBSCRIPTION_OFFER";
      if (v23)
      {
        if (v23 != 8)
        {
          goto LABEL_30;
        }

        v36 = *(&v75 + 1) | *(&v76 + 1);
        v37 = *(&v74 + 1) | v74 | *(&v73 + 1);
        if ((v76 != 0x8000000000000000 || v36 | v73 | v75 | v37) && (v76 != 0x8000000000000000 || v73 != 4 || v36 | v75 | v37))
        {
          goto LABEL_30;
        }
      }

      else if (v73 != 1)
      {
        goto LABEL_30;
      }

      if (*(v6 + 121))
      {
        v24 = "DER_PRE_BUY_NOT_FREE";
      }

      else
      {
        v24 = "DER_PRE_REDOWNLOAD";
      }

      if (*(v6 + 121))
      {
        v22 = 0xD000000000000020;
      }

      else
      {
        v22 = 0xD000000000000024;
      }

      goto LABEL_30;
    }

    v25 = (v1 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_stateMachine);
    *v25 = 0;
    v25[1] = 0;
    swift_unknownObjectRelease();
    v26 = sub_24EF70518();
    v28 = v27;
    v29 = *(v1 + v5);
    if (v29)
    {
      v30 = *(v29 + 88);
      if (*(v30 + 16))
      {

        v31 = sub_24E76DB58(0);
        if (v32)
        {
          v33 = (*(v30 + 56) + 16 * v31);
          v35 = *v33;
          v34 = v33[1];

LABEL_33:
          *&v77 = v26;
          *(&v77 + 1) = v28;
          *&v78 = v35;
          *(&v78 + 1) = v34;
          v79 = xmmword_24F9406F0;
          memset(v80, 0, 25);
          v83 = xmmword_24F9406F0;
          *v84 = 0uLL;
          *&v84[9] = *&v80[9];
          v81 = v77;
          v82 = v78;
          v84[25] = 0;
          sub_24EF70DCC(&v81);
          sub_24E601704(&v77, &qword_27F234EF0);

          goto LABEL_34;
        }
      }
    }

    v35 = 0;
    v34 = 0;
    goto LABEL_33;
  }

LABEL_34:
  v42 = *(v3 + 16);
  if (!v42)
  {
    v47 = v2 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_mode;
    *v47 = 0;
    *(v47 + 8) = 1;
    goto LABEL_58;
  }

  if ((sub_24EF70EB4(v43) & 1) == 0)
  {

    v48 = v2 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_mode;
    *v48 = 0;
    *(v48 + 8) = 0;
    goto LABEL_58;
  }

  v44 = *(v2 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_offerDisplayProperties);
  if (v44)
  {
    v45 = *(v44 + 121);
    v46 = OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_stateMachine;
    if (!*(v2 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_stateMachine))
    {
      goto LABEL_52;
    }
  }

  else
  {
    v46 = OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_stateMachine;
    if (!*(v2 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_stateMachine))
    {
      goto LABEL_54;
    }

    v45 = 0;
  }

  v49 = *(v2 + v46 + 8);
  v50 = swift_getObjectType();
  v51 = *(v49 + 16);
  swift_unknownObjectRetain();
  v51(&v73, v50, v49);
  swift_unknownObjectRelease();
  v68 = v73;
  v69 = v74;
  v70 = v75;
  v71 = v76;
  if (!(v76 >> 60))
  {
    if (v73 == 1)
    {
      goto LABEL_52;
    }

LABEL_53:
    v54 = 1;
    goto LABEL_55;
  }

  if (v76 >> 60 != 8 || ((v52 = *(&v70 + 1) | *(&v71 + 1), v53 = *(&v69 + 1) | v69 | *(&v68 + 1), v76 != 0x8000000000000000) || v52 | v73 | v70 | v53) && (v76 != 0x8000000000000000 || v73 != 4 || v52 | v70 | v53))
  {
    sub_24E88D2AC(&v68);
    goto LABEL_53;
  }

LABEL_52:
  if (v45)
  {
    goto LABEL_53;
  }

LABEL_54:
  v54 = 2;
LABEL_55:
  v55 = v2 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_mode;
  *v55 = v54;
  *(v55 + 8) = 0;
  if (*(v42 + OBJC_IVAR____TtC12GameStoreKit19InAppPurchaseLockup_isSubscription) == 1)
  {
    v56._countAndFlagsBits = 0xD000000000000026;
    v56._object = 0x800000024FA65210;
    v57._countAndFlagsBits = 0;
    v57._object = 0xE000000000000000;
    v58 = localizedString(_:comment:)(v56, v57);

    *(v2 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_pageTitle) = v58;
  }

  else
  {
  }

LABEL_58:
  if ((*(v2 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_mode + 8) & 1) == 0)
  {
    v59 = *(v2 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_mode);
    v60 = v2 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_view;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v61 = *(v60 + 8);
      v62 = swift_getObjectType();
      v63 = v2 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_pageTitle;
      v64 = *(v2 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_pageTitle);
      v65 = *(v63 + 8);
      v66 = *(v61 + 32);

      v66(v59, v3, v64, v65, v62, v61);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_24EF6FD00(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    ObjectType = swift_getObjectType();
    (*(a2 + 16))(v5, ObjectType, a2);
    sub_24EF70090(v5, v7);
    v6[0] = v5[0];
    v6[1] = v5[1];
    v6[2] = v5[2];
    v6[3] = v5[3];
    sub_24E88D2AC(v6);
    sub_24EF70DCC(v7);
    sub_24EF71698(v7);
  }

  return result;
}

uint64_t *sub_24EF6FDC0(uint64_t *result)
{
  v3 = *result;
  v2 = result[1];
  if (*(v1 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_fetchedPage))
  {
    v4 = *(v1 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_fetchedPage);
  }

  else
  {
    v4 = *(v1 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_sidepack);
    if (!v4)
    {
      return result;
    }
  }

  if ((*(v1 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_mode + 8) & 1) == 0 && !*(v1 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_mode))
  {

LABEL_28:
  }

  v5 = *(v4 + 24);
  if (v5)
  {
    v7 = *(v5 + 16);
    v6 = *(v5 + 24);

    if (v2)
    {
      if (v6)
      {
        if (v3 == v7 && v6 == v2)
        {
        }

        else
        {
          v9 = sub_24F92CE08();

          if ((v9 & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        goto LABEL_27;
      }

      goto LABEL_17;
    }

    if (v6)
    {

      goto LABEL_20;
    }

LABEL_24:

LABEL_27:
    sub_24EF6FF5C();
    goto LABEL_28;
  }

  if (!v2)
  {
    goto LABEL_24;
  }

LABEL_17:

LABEL_20:
}

uint64_t sub_24EF6FF5C()
{
  result = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_fetchedPage);
  if (result)
  {
    v2 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_fetchedPage);
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_sidepack);
    if (!v2)
    {
      return result;
    }
  }

  v3 = v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_mode;
  *v3 = 0;
  *(v3 + 8) = 0;

  sub_24EF6EDA8();
  v4 = v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_view;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
  }

  v5 = *(v4 + 8);
  ObjectType = swift_getObjectType();
  v7 = v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_pageTitle;
  v8 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_pageTitle);
  v9 = *(v7 + 8);
  v10 = *(v5 + 32);

  v10(0, v2, v8, v9, ObjectType, v5);

  return swift_unknownObjectRelease();
}

unint64_t sub_24EF70090@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v8 = *result;
  v9 = *(result + 54);
  v10 = v9 >> 12;
  if (v9 >> 12 > 3)
  {
    v11 = v2;
    v4 = *(result + 1) | ((*(result + 5) | (*(result + 7) << 16)) << 32);
    object = *(result + 16);
    v2 = *(result + 32);
    v6 = *(result + 40);
    v12 = *(result + 48);
    v13 = *(result + 49);
    if (v9 >> 12 > 5)
    {
      v5 = *(result + 24);
      if (v10 != 6)
      {
        if (v10 == 7)
        {
          v14._countAndFlagsBits = 0xD000000000000016;
          v14._object = 0x800000024FA5BA00;
          v15._countAndFlagsBits = 0;
          v15._object = 0xE000000000000000;
          v16 = localizedString(_:comment:)(v14, v15);
          result = v16._countAndFlagsBits;
          object = v16._object;
          LOBYTE(v10) = 0;
          v4 = v16._countAndFlagsBits >> 8;
          v17 = 9;
LABEL_31:
          LOBYTE(v8) = result;
          goto LABEL_34;
        }

        v29 = v8 | (v4 << 8);
        v30 = *(result + 56);
        v31 = v12 | (v13 << 8) | ((*(result + 50) | (*(result + 54) << 32)) << 16);
        v32 = object | *(result + 8) | v5;
        if (v32 | v2 | v6 | v30 | v29)
        {
          v33 = 0;
        }

        else
        {
          v33 = v31 == 0x8000000000000000;
        }

        if (!v33)
        {
          v34 = v32 | v2 | v6;
          if (!v30 && v29 == 1 && !v34 && v31 == 0x8000000000000000)
          {
            v35._countAndFlagsBits = 0xD00000000000001CLL;
            v35._object = 0x800000024FA651F0;
            v36._countAndFlagsBits = 0;
            v36._object = 0xE000000000000000;
            v37 = localizedString(_:comment:)(v35, v36);
            result = v37._countAndFlagsBits;
            object = v37._object;
            LOBYTE(v10) = 0;
            v4 = v37._countAndFlagsBits >> 8;
            v17 = 6;
            goto LABEL_31;
          }

          if (!v30 && v29 == 2 && !v34 && v31 == 0x8000000000000000)
          {
            object = 0;
            v5 = 0;
            v2 = 0;
            v6 = 0;
            LOBYTE(v10) = 0;
            LOBYTE(v8) = 0;
            v4 = 0;
            v17 = 12;
            goto LABEL_34;
          }

          if (!v30 && v29 == 3 && !v34 && v31 == 0x8000000000000000)
          {
            v2 = v11;
            v43 = *&v11[OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_offerDisplayProperties];
            if (v43)
            {
              v44 = *(v43 + 72);
              if (*(v44 + 16))
              {

                v45 = sub_24E76DB58(12);
                if (v46)
                {
                  v47 = *(v44 + 56) + 16 * v45;
                  v2 = *v47;
                  object = *(v47 + 8);

                  result = v2;
LABEL_60:
                  LOBYTE(v10) = 0;
                  v4 = result >> 8;
                  v17 = 11;
                  goto LABEL_31;
                }

                v2 = v11;
              }
            }

            result = sub_24EF70518();
            object = v54;
            goto LABEL_60;
          }
        }

        result = sub_24EF70518();
        v8 = result;
        object = v48;
        v49 = *&v11[OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_offerDisplayProperties];
        if (v49)
        {
          v50 = *(v49 + 88);
          if (*(v50 + 16))
          {

            v51 = sub_24E76DB58(0);
            if (v52)
            {
              v53 = *(v50 + 56) + 16 * v51;
              v5 = *v53;
              v2 = *(v53 + 8);

LABEL_54:
              v6 = 0;
              v17 = 0;
              v4 = v8 >> 8;
              LOBYTE(v10) = 1;
              goto LABEL_34;
            }
          }
        }

        v5 = 0;
        v2 = 0;
        goto LABEL_54;
      }

      v21 = v2;
      v22 = object;
      result = v5;
      v17 = 5;
LABEL_33:
      LOBYTE(v10) = v12;
      goto LABEL_34;
    }

    if (v10 != 4)
    {
      v38 = v2;
      result = object;
      v5 = 0;
      v17 = 5;
      goto LABEL_33;
    }

    if ((v13 & 1) == 0)
    {
      v42 = v2;
      result = object;
      v5 = 0;
      v17 = 1;
      goto LABEL_33;
    }

LABEL_13:
    v18._object = 0x800000024FA5BAA0;
    v18._countAndFlagsBits = 0xD000000000000018;
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    v20 = localizedString(_:comment:)(v18, v19);
    result = v20._countAndFlagsBits;
    object = v20._object;
    LOBYTE(v10) = 0;
    v4 = v20._countAndFlagsBits >> 8;
    v17 = 2;
    goto LABEL_31;
  }

  if (v9 >> 12 <= 1)
  {
    if (!v10)
    {
      v17 = 3;
      LOBYTE(v8) = 0;
      goto LABEL_34;
    }

    if ((v8 & 1) == 0)
    {
      v39._countAndFlagsBits = 0xD00000000000001BLL;
      v39._object = 0x800000024FA5BA60;
      v40._countAndFlagsBits = 0;
      v40._object = 0xE000000000000000;
      v41 = localizedString(_:comment:)(v39, v40);
      result = v41._countAndFlagsBits;
      object = v41._object;
      LOBYTE(v10) = 0;
      v4 = v41._countAndFlagsBits >> 8;
      v17 = 7;
      goto LABEL_31;
    }

    result = sub_24EF705FC();
    v8 = result;
    object = v23;
    v24 = *(v2 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_offerDisplayProperties);
    if (v24)
    {
      v25 = *(v24 + 88);
      if (*(v25 + 16))
      {

        v26 = sub_24E76DB58(0);
        if (v27)
        {
          v28 = *(v25 + 56) + 16 * v26;
          v5 = *v28;
          v2 = *(v28 + 8);

LABEL_57:
          LOBYTE(v10) = 0;
          v4 = v8 >> 8;
          v17 = 8;
          goto LABEL_34;
        }
      }
    }

    v5 = 0;
    v2 = 0;
    goto LABEL_57;
  }

  if (v10 == 2)
  {
    goto LABEL_13;
  }

  v5 = 0;
  v2 = 0;
  v6 = 0;
  LOBYTE(v10) = 0;
  LOBYTE(v8) = 0;
  v4 = 0;
  object = 1;
  v17 = 1;
LABEL_34:
  *a2 = v8 | (v4 << 8);
  *(a2 + 8) = object;
  *(a2 + 16) = v5;
  *(a2 + 24) = v2;
  *(a2 + 32) = v6;
  *(a2 + 40) = v10 & 1;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 48) = 0;
  *(a2 + 72) = 0;
  *(a2 + 73) = v17;
  return result;
}

uint64_t sub_24EF70518()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_offerDisplayProperties);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (*(v2 + 16))
    {

      v3 = sub_24E76DB58(0);
      if (v4)
      {
        v5 = *(*(v2 + 56) + 16 * v3);

        return v5;
      }
    }
  }

  v7 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_installAction);
  if (v7 && *(v7 + 24))
  {
    v8 = *(v7 + 16);

    return v8;
  }

  else
  {
    v9._object = 0x800000024FA5BAC0;
    v9._countAndFlagsBits = 0xD000000000000015;
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    return localizedString(_:comment:)(v9, v10)._countAndFlagsBits;
  }
}

uint64_t sub_24EF705FC()
{
  result = 0x6C69662E6C6C6562;
  v2 = OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_offerDisplayProperties;
  v3 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_offerDisplayProperties);
  if (!v3 || *(v3 + 122) != 1)
  {
    return result;
  }

  v4 = *(v3 + 16);
  if (v4 <= 1)
  {
    v5 = 0x6C69662E6C6C6562;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 0x6C69662E6C6C6562;
LABEL_7:
    v6 = sub_24F92CE08();

    if ((v6 & 1) == 0)
    {
      v7 = *(v0 + v2);
      if (!v7)
      {
        return v5;
      }

      v8 = *(v7 + 80);
      if (!*(v8 + 16))
      {
        return v5;
      }

      v9 = sub_24E76DB58(0);
      if ((v10 & 1) == 0)
      {
LABEL_17:

        return v5;
      }

LABEL_16:
      v5 = *(*(v8 + 56) + 16 * v9);

      goto LABEL_17;
    }

    goto LABEL_13;
  }

LABEL_13:
  result = 0x72616D6B63656863;
  v11 = *(v0 + v2);
  if (v11)
  {
    v8 = *(v11 + 80);
    if (*(v8 + 16))
    {
      v5 = 0x72616D6B63656863;

      v9 = sub_24E76DB58(15);
      if ((v12 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  return result;
}

void sub_24EF70788()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_installAction);
  if (v1)
  {
    if (*(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 73) <= 2u)
    {
      v2 = v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_view;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v3 = *(v2 + 8);
        v4 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_stateMachine);
        if (v4)
        {
          ObjectType = swift_getObjectType();
        }

        else
        {
          ObjectType = 0;
          v9[1] = 0;
          v9[2] = 0;
        }

        v9[0] = v4;
        v9[3] = ObjectType;
        v6 = swift_getObjectType();
        v7 = *(v3 + 8);
        v8 = *(v7 + 8);

        swift_unknownObjectRetain();
        v8(v1, v9, v6, v7);

        swift_unknownObjectRelease();
        sub_24E601704(v9, &qword_27F2129B0);
      }
    }
  }
}

void sub_24EF708D4()
{
  *&v18[10] = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 58);
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 48);
  v17 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 32);
  *v18 = v1;
  v2 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 16);
  v15 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState);
  v16 = v2;
  if (v18[25] == 5)
  {
    v3 = *(&v16 + 1);
    v4 = *(&v15 + 1);
    v5 = v16;
    sub_24EF6FF5C();
    sub_24EF71698(&v15);
  }

  else
  {
    v6 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_installAction);
    if (v6)
    {
      if (*(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 73) <= 2u)
      {
        v7 = v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_view;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v8 = *(v7 + 8);
          v9 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_stateMachine);
          if (v9)
          {
            ObjectType = swift_getObjectType();
          }

          else
          {
            ObjectType = 0;
            v14[1] = 0;
            v14[2] = 0;
          }

          v14[0] = v9;
          v14[3] = ObjectType;
          v11 = swift_getObjectType();
          v12 = *(v8 + 8);
          v13 = *(v12 + 8);

          swift_unknownObjectRetain();
          v13(v6, v14, v11, v12);

          swift_unknownObjectRelease();
          sub_24E601704(v14, &qword_27F2129B0);
        }
      }
    }
  }
}

uint64_t sub_24EF70A68(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

void sub_24EF70ADC()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_pageUrl;
  v2 = sub_24F91F4A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_24EF710F0(*(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 8), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 16), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 24), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 32), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 40), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 48), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 56), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 64), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 72));

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_24E883630(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_view);
  sub_24EF71118(*(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 8), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 16), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 24), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 32), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 40), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 48), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 56), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 64), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 72), HIBYTE(*(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 72)));
}

uint64_t InAppPurchaseInstallPagePresenter.deinit()
{
  v0 = BasePresenter.deinit();

  v1 = OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_pageUrl;
  v2 = sub_24F91F4A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_24EF710F0(*(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 8), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 16), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 24), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 32), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 40), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 48), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 56), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 64), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 72));

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_24E883630(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_view);
  sub_24EF71118(*(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 8), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 16), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 24), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 32), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 40), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 48), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 56), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 64), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 72), HIBYTE(*(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 72)));
  return v0;
}

uint64_t InAppPurchaseInstallPagePresenter.__deallocating_deinit()
{
  InAppPurchaseInstallPagePresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24EF70DCC(__int128 *a1)
{
  v2 = a1;
  v3 = (v1 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState);
  v4 = *(v1 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 48);
  v17 = *(v1 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 32);
  v18[0] = v4;
  *(v18 + 10) = *(v1 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 58);
  v5 = *(v1 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 16);
  v16[0] = *(v1 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState);
  v16[1] = v5;
  v19[2] = v17;
  v20[0] = v4;
  *(v20 + 10) = *(v18 + 10);
  v19[0] = v16[0];
  v19[1] = v5;
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  *(v3 + 58) = *(a1 + 58);
  v3[2] = v8;
  v3[3] = v9;
  *v3 = v6;
  v3[1] = v7;
  sub_24EF7172C(v16, v14);
  sub_24EF7172C(v2, v14);
  sub_24EF71698(v19);
  v10 = v3[3];
  v14[2] = v3[2];
  v15[0] = v10;
  *(v15 + 10) = *(v3 + 58);
  v11 = v3[1];
  v14[0] = *v3;
  v14[1] = v11;
  sub_24EF7172C(v14, &v13);
  LOBYTE(v2) = sub_24F0E59AC(v14, v16);
  sub_24EF71698(v14);
  if ((v2 & 1) == 0)
  {
    sub_24EF6EDA8();
  }

  return sub_24EF71698(v16);
}

uint64_t sub_24EF70EB4(void *a1)
{
  v1 = a1[30];
  if (v1)
  {
    if (*(v1 + 125) == 1 && (v2 = qword_27F234E78) != 0)
    {
      v3 = a1[2];
      v4 = a1[3];
      v5 = *(v1 + 176);
      v6 = *(v1 + 184);
      swift_beginAccess();
      sub_24E615E00(v2 + 16, v12);
      v7 = v13;
      v8 = v14;
      __swift_project_boxed_opaque_existential_1(v12, v13);
      v11[0] = v3;
      v11[1] = v4;
      v9 = *(v8 + 32);

      v9(&v15, v11, v5, v6, v7, v8);

      __swift_destroy_boxed_opaque_existential_1(v12);
      LOBYTE(v1) = v15 ^ 1;
      if ((v15 & 0xC0) != 0x40)
      {
        LOBYTE(v1) = 0;
      }
    }

    else
    {
      LOBYTE(v1) = 0;
    }
  }

  return v1 & 1;
}

uint64_t sub_24EF70FCC()
{
  v1 = v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v6[3] = type metadata accessor for InAppPurchaseInstallPagePresenter();
    v6[0] = v0;
    v5 = *(v3 + 48);

    v5(v6, ObjectType, v3);
    swift_unknownObjectRelease();
    return sub_24E601704(v6, &qword_27F2129B0);
  }

  return result;
}

unint64_t sub_24EF71098()
{
  result = qword_27F234ED0;
  if (!qword_27F234ED0)
  {
    type metadata accessor for InAppPurchaseInstallPage();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234ED0);
  }

  return result;
}

void sub_24EF710F0(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9, unsigned __int16 a10)
{
  if (HIBYTE(a10) <= 0xFEu)
  {
    sub_24EF71118(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, HIBYTE(a10));
  }
}

void sub_24EF71118(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9, char a10, unsigned __int8 a11)
{
  if (a11 > 5u)
  {
    if (a11 > 8u)
    {
      if (a11 == 9)
      {
        goto LABEL_21;
      }

      if (a11 != 10)
      {
        if (a11 != 11)
        {
          return;
        }

        goto LABEL_21;
      }
    }

    else
    {
      if (a11 == 6 || a11 == 7)
      {
LABEL_21:

        return;
      }

      if (a11 != 8)
      {
        return;
      }
    }

    goto LABEL_21;
  }

  if (a11 <= 1u)
  {
    if (!a11)
    {

      a1 = a5;
      a2 = a6;
      a3 = a7;
      a4 = a8;
    }

    sub_24EF712B4(a1, a2, a3, a4);
  }

  else
  {
    if (a11 == 2)
    {
      goto LABEL_21;
    }

    if (a11 == 4 || a11 == 5)
    {
      v11 = a3;
      v16 = a4;
    }
  }
}

void sub_24EF712B4(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != 1)
  {
  }
}

unint64_t sub_24EF7130C()
{
  result = qword_27F234ED8;
  if (!qword_27F234ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234ED8);
  }

  return result;
}

uint64_t sub_24EF71360@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t type metadata accessor for InAppPurchaseInstallPagePresenter()
{
  result = qword_27F234EE0;
  if (!qword_27F234EE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EF714D8()
{
  result = sub_24F91F4A8();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_24EF716EC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24EF71798(uint64_t a1)
{
  v2 = type metadata accessor for InAppPurchaseInstallPageIntent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

GameStoreKit::AccountSectionLink::LinkDisplayType_optional __swiftcall AccountSectionLink.LinkDisplayType.init(rawValue:)(Swift::String rawValue)
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

uint64_t AccountSectionLink.LinkDisplayType.rawValue.getter()
{
  if (*v0)
  {
    return 0x6E6F69746361;
  }

  else
  {
    return 0x697461676976616ELL;
  }
}

uint64_t sub_24EF718A4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E6F69746361;
  }

  else
  {
    v3 = 0x697461676976616ELL;
  }

  if (v2)
  {
    v4 = 0xEA00000000006E6FLL;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x6E6F69746361;
  }

  else
  {
    v5 = 0x697461676976616ELL;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xEA00000000006E6FLL;
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

uint64_t sub_24EF7194C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EF719D0()
{
  sub_24F92B218();
}

uint64_t sub_24EF71A40()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EF71AC0@<X0>(char *a1@<X8>)
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

void sub_24EF71B20(uint64_t *a1@<X8>)
{
  v2 = 0x697461676976616ELL;
  if (*v1)
  {
    v2 = 0x6E6F69746361;
  }

  v3 = 0xEA00000000006E6FLL;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

double AccountSectionLink.init(id:autoUpdatingTitle:detail:action:displayType:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unsigned __int8 *a7@<X6>, uint64_t a8@<X8>)
{
  v29 = a2;
  v14 = sub_24F91F6B8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(a7) = *a7;
  sub_24E65E064(a1, &v32);
  if (*(&v33 + 1))
  {
    sub_24E9BBAA8(a1);
    v35 = v32;
    v36 = v33;
    v37 = v34;
  }

  else
  {
    sub_24F91F6A8();
    v19 = sub_24F91F668();
    HIDWORD(v27) = a7;
    a7 = v19;
    v28 = a3;
    v20 = a4;
    v21 = a5;
    v22 = a6;
    v24 = v23;
    (*(v15 + 8))(v17, v14);
    v30 = a7;
    v31 = v24;
    LOBYTE(a7) = BYTE4(v27);
    a6 = v22;
    a5 = v21;
    a4 = v20;
    a3 = v28;
    sub_24F92C7F8();
    sub_24E9BBAA8(a1);
    sub_24E9BBAA8(&v32);
  }

  result = *&v35;
  v26 = v36;
  *(a8 + 48) = v35;
  *(a8 + 64) = v26;
  *(a8 + 80) = v37;
  *(a8 + 16) = v29;
  *(a8 + 24) = a3;
  *a8 = a4;
  *(a8 + 8) = a5;
  *(a8 + 32) = a6;
  *(a8 + 40) = a7;
  return result;
}

uint64_t AccountSectionLink.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v44 = a2;
  v5 = sub_24F91F6B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_24F928388();
  v9 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v43 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v43 - v16;
  v46 = a1;
  sub_24F928398();
  v18 = sub_24F928348();
  v45 = a3;
  if (v19)
  {
    v47 = v18;
    v48 = v19;
  }

  else
  {
    sub_24F91F6A8();
    v20 = sub_24F91F668();
    v21 = v6;
    v23 = v22;
    (*(v21 + 8))(v8, v5);
    v47 = v20;
    v48 = v23;
  }

  sub_24F92C7F8();
  v24 = *(v9 + 8);
  v24(v17, v49);
  v25 = v46;
  sub_24F928398();
  v26 = sub_24F928348();
  v28 = v27;
  v24(v14, v49);
  if (v28)
  {
    sub_24F928398();
    v29 = sub_24F928348();
    v31 = v30;
    v32 = v49;
    v24(v11, v49);
    v33 = v45;
    *v45 = v29;
    v33[1] = v31;
    v34 = swift_allocObject();
    *(v34 + 16) = v26;
    *(v34 + 24) = v28;
    v33[2] = sub_24EF7220C;
    v33[3] = v34;
    type metadata accessor for Action();
    v35 = v46;
    sub_24F928398();
    v36 = v44;
    v37 = static Action.tryToMakeInstance(byDeserializing:using:)(v11, v44);
    v24(v11, v32);
    v33[4] = v37;
    sub_24F928398();
    sub_24EF7223C();
    sub_24F928208();
    v38 = sub_24F9285B8();
    (*(*(v38 - 8) + 8))(v36, v38);
    v24(v35, v32);
    result = (v24)(v11, v32);
    *(v33 + 40) = v47;
  }

  else
  {
    v40 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v41 = 0x656C746974;
    v41[1] = 0xE500000000000000;
    v41[2] = &type metadata for AccountSectionLink;
    (*(*(v40 - 8) + 104))(v41, *MEMORY[0x277D22530], v40);
    swift_willThrow();
    v42 = sub_24F9285B8();
    (*(*(v42 - 8) + 8))(v44, v42);
    v24(v25, v49);
    return sub_24E6585F8((v45 + 6));
  }

  return result;
}

uint64_t sub_24EF721D4()
{

  return swift_deallocObject();
}

uint64_t sub_24EF7220C()
{
  v1 = *(v0 + 16);

  return v1;
}

unint64_t sub_24EF7223C()
{
  result = qword_27F234F00;
  if (!qword_27F234F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234F00);
  }

  return result;
}

uint64_t AccountSectionLink.detail.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AccountSectionLink.hash(into:)()
{
  (*(v0 + 16))();
  sub_24F92B218();

  if (*(v0 + 8))
  {
    sub_24F92D088();
    sub_24F92B218();
  }

  else
  {
    sub_24F92D088();
  }

  sub_24F92B218();
}

uint64_t AccountSectionLink.hashValue.getter()
{
  v1 = sub_24F92D068();
  (*(v0 + 16))(v1);
  sub_24F92B218();

  if (*(v0 + 8))
  {
    sub_24F92D088();
    sub_24F92B218();
  }

  else
  {
    sub_24F92D088();
  }

  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EF72510()
{
  v1 = sub_24F92D068();
  (*(v0 + 16))(v1);
  sub_24F92B218();

  if (*(v0 + 8))
  {
    sub_24F92D088();
    sub_24F92B218();
  }

  else
  {
    sub_24F92D088();
  }

  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t _s12GameStoreKit18AccountSectionLinkV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = (*(a1 + 16))();
  v6 = v5;
  if (v4 == (*(a2 + 16))() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_24F92CE08();

    if ((v9 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  v10 = *(a1 + 8);
  v11 = *(a2 + 8);
  if (v10)
  {
    if (!v11 || (*a1 != *a2 || v10 != v11) && (sub_24F92CE08() & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else if (v11)
  {
LABEL_29:
    v17 = 0;
    return v17 & 1;
  }

  v12 = *(a2 + 40);
  if (*(a1 + 40))
  {
    v13 = 0x6E6F69746361;
  }

  else
  {
    v13 = 0x697461676976616ELL;
  }

  if (*(a1 + 40))
  {
    v14 = 0xE600000000000000;
  }

  else
  {
    v14 = 0xEA00000000006E6FLL;
  }

  if (v12)
  {
    v15 = 0x6E6F69746361;
  }

  else
  {
    v15 = 0x697461676976616ELL;
  }

  if (v12)
  {
    v16 = 0xE600000000000000;
  }

  else
  {
    v16 = 0xEA00000000006E6FLL;
  }

  if (v13 == v15 && v14 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_24F92CE08();
  }

  return v17 & 1;
}

unint64_t sub_24EF72778()
{
  result = qword_27F234F08;
  if (!qword_27F234F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234F08);
  }

  return result;
}

unint64_t sub_24EF727D0()
{
  result = qword_27F234F10;
  if (!qword_27F234F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234F10);
  }

  return result;
}

uint64_t sub_24EF72824(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_24EF7286C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t Bool.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928278();
  v5 = sub_24F9285B8();
  (*(*(v5 - 8) + 8))(a2, v5);
  v6 = sub_24F928388();
  (*(*(v6 - 8) + 8))(a1, v6);
  return v4 & 1;
}

uint64_t sub_24EF72990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_24F928278();
  v7 = sub_24F9285B8();
  (*(*(v7 - 8) + 8))(a2, v7);
  v8 = sub_24F928388();
  result = (*(*(v8 - 8) + 8))(a1, v8);
  *a3 = v6 & 1;
  return result;
}

uint64_t MetricsIdStore.__allocating_init(accountStore:bag:)(void *a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_24EF78FD0(a1, a2);

  return v4;
}

uint64_t sub_24EF72AB0()
{
  v1 = *(v0 + 8);
  sub_24F92D068();
  sub_24F92D088();
  if (v1)
  {
    sub_24F92B218();
  }

  sub_24F92C418();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24EF72B4C()
{
  if (*(v0 + 8))
  {
    sub_24F92D088();
    sub_24F92B218();
  }

  else
  {
    sub_24F92D088();
  }

  sub_24F92C418();

  return sub_24F92B218();
}

uint64_t sub_24EF72BE8()
{
  v1 = *(v0 + 8);
  sub_24F92D068();
  sub_24F92D088();
  if (v1)
  {
    sub_24F92B218();
  }

  sub_24F92C418();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24EF72C80(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a2[1];
  v7 = a2[3];
  v8 = a2[4];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_24F92CE08() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  sub_24E69A5C4(0, &qword_27F21BCB0);
  if ((sub_24F92C408() & 1) == 0)
  {
    return 0;
  }

  if (v4 == v7 && v5 == v8)
  {
    return 1;
  }

  return sub_24F92CE08();
}

uint64_t sub_24EF72D74()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v4, qword_27F234F18);
  __swift_project_value_buffer(v4, qword_27F234F18);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24F92AAD8();
}

void *sub_24EF72ED0()
{
  v0 = sub_24E60CC20(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234F60);
  swift_allocObject();
  result = sub_24EA50028(v0);
  off_27F234F30 = result;
  return result;
}

void *sub_24EF72F30()
{
  v0 = sub_24E60CADC(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234F88);
  swift_allocObject();
  result = sub_24EA50028(v0);
  off_27F234F38 = result;
  return result;
}

void *sub_24EF72F90()
{
  v0 = sub_24E60CD5C(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234F68);
  swift_allocObject();
  result = sub_24EA50028(v0);
  off_27F234F40 = result;
  return result;
}

uint64_t MetricsIdStore.init(accountStore:bag:)(void *a1, uint64_t a2)
{
  v3 = sub_24EF78FD0(a1, a2);

  return v3;
}

uint64_t sub_24EF73034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[17] = a4;
  v5[18] = v4;
  v5[15] = a2;
  v5[16] = a3;
  v5[14] = a1;
  v6 = sub_24F927D88();
  v5[19] = v6;
  v5[20] = *(v6 - 8);
  v5[21] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0);
  v5[22] = v7;
  v5[23] = *(v7 - 8);
  v5[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EF73164, 0, 0);
}

uint64_t sub_24EF73164()
{
  v1 = *(v0 + 112);
  if (!v1)
  {
    v2 = sub_24F92B098();
    v1 = [objc_opt_self() keyWithName:v2 crossDeviceSync:1 isActiveITunesAccountRequired:1];

    if (qword_27F210B98 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 184);
    v3 = *(v0 + 192);
    v5 = *(v0 + 176);
    sub_24F92A448();
    sub_24F92A408();
    (*(v4 + 8))(v3, v5);
  }

  *(v0 + 200) = v1;
  v6 = *(v0 + 136);
  if (v6)
  {
    v7 = *(v0 + 128);
    v8 = *(v0 + 112);
  }

  else
  {
    v9 = *(v0 + 112);
    v10 = sub_24F92B098();
    v11 = [objc_opt_self() keyWithName:v10 crossDeviceSync:1 isActiveITunesAccountRequired:1];

    if (qword_27F210B98 != -1)
    {
      swift_once();
    }

    v13 = *(v0 + 184);
    v12 = *(v0 + 192);
    v14 = *(v0 + 176);
    sub_24F92A448();
    sub_24F92A408();
    (*(v13 + 8))(v12, v14);

    v7 = *(v0 + 72);
    v6 = *(v0 + 80);
  }

  *(v0 + 208) = v6;
  v15 = *(v0 + 120);
  if (v15)
  {

    v16 = v15;
    v17 = v15;
  }

  else
  {
    v18 = *(*(v0 + 144) + 16);

    v19 = [v18 ams_activeiTunesAccount];
    v17 = v19;
    if (!v19)
    {
      v25 = v1;

      goto LABEL_19;
    }

    v15 = *(v0 + 120);
    v16 = v19;
  }

  v20 = v15;
  v21 = v1;

  v22 = v20;
  v23 = [v16 identifier];
  if (v23)
  {
    v24 = v23;
    sub_24F92B0C8();
  }

LABEL_19:
  *(v0 + 216) = 0;
  *(v0 + 224) = v17;
  v26 = *(v0 + 144);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = v1;
  *(v0 + 40) = v7;
  *(v0 + 48) = v6;
  if (*(v26 + 24) == 1)
  {
    if (qword_27F210CA0 != -1)
    {
      swift_once();
    }

    v27 = off_27F234F38;
    v28 = swift_task_alloc();
    *(v28 + 16) = v0 + 16;
    v29 = swift_task_alloc();
    v29[2] = sub_24EF79358;
    v29[3] = v28;
    v29[4] = v27;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
    sub_24F92BF18();

    v30 = *(v0 + 88);
    v31 = *(v0 + 96);

    if (v31)
    {

      swift_bridgeObjectRelease_n();
      v32 = *(v0 + 224);

      v33 = *(v0 + 8);

      return v33(v30, v31);
    }

    v35 = swift_task_alloc();
    *(v0 + 232) = v35;
    *v35 = v0;
    v36 = sub_24EF736BC;
  }

  else
  {
    v35 = swift_task_alloc();
    *(v0 + 256) = v35;
    *v35 = v0;
    v36 = sub_24EF73B2C;
  }

  v35[1] = v36;

  return sub_24EF7603C(v17, v1, v7, v6);
}

uint64_t sub_24EF736BC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 240) = v1;

  if (v1)
  {
    v5 = sub_24EF73800;
  }

  else
  {
    *(v4 + 248) = a1;
    v5 = sub_24EF738A4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24EF73800()
{
  v1 = v0[28];
  v2 = v0[25];

  v3 = v0[1];

  return v3();
}

uint64_t sub_24EF738A4()
{
  v1 = v0[31];
  v16 = v0[25];
  v2 = v0[20];
  v3 = v0[21];
  v4 = v0[19];
  v5 = [v1 identifierForKey_];

  v6 = sub_24F92B0D8();
  v17 = v7;
  v18 = v6;
  v8 = v7;

  v9 = off_27F234F38;
  v10 = swift_task_alloc();
  v10[2] = v0 + 2;
  v10[3] = v6;
  v10[4] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_24F93DE60;

  sub_24F927D78();
  v0[13] = v11;
  sub_24EF79394(&qword_27F222930, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E8582A8();
  sub_24F92C6A8();
  v12 = swift_task_alloc();
  v12[2] = sub_24EF79374;
  v12[3] = v10;
  v12[4] = v9;
  sub_24F92BF08();

  (*(v2 + 8))(v3, v4);

  v13 = v0[28];

  v14 = v0[1];

  return v14(v18, v17);
}

uint64_t sub_24EF73B2C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 264) = v1;

  if (v1)
  {
    v5 = sub_24EF73D58;
  }

  else
  {
    *(v4 + 272) = a1;
    v5 = sub_24EF73C70;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24EF73C70()
{
  v1 = v0[34];
  v2 = v0[25];
  v3 = [v1 identifierForKey_];

  v4 = sub_24F92B0D8();
  v6 = v5;

  v7 = v0[28];

  v8 = v0[1];

  return v8(v4, v6);
}

uint64_t sub_24EF73D58()
{
  v1 = v0[28];
  v2 = v0[25];

  v3 = v0[1];

  return v3();
}

uint64_t *sub_24EF73DFC(void *a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v9 = sub_24F927D88();
  v10 = *(v9 - 8);
  v62 = v9;
  v63 = v10;
  MEMORY[0x28223BE20](v9);
  v61 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v57 - v14;
  if (a1)
  {
    v16 = a1;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_8:
    v65 = v16;
    v22 = a1;
    v23 = sub_24F92B098();
    v24 = [objc_opt_self() keyWithName:v23 crossDeviceSync:1 isActiveITunesAccountRequired:1];

    if (qword_27F210B98 != -1)
    {
      swift_once();
    }

    sub_24F92A448();
    sub_24F92A408();
    (*(v13 + 8))(v15, v12);

    a3 = v66;
    v18 = v67;
    v16 = v65;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v64 = a3;
  v21 = sub_24F92B098();
  v65 = [objc_opt_self() keyWithName:v21 crossDeviceSync:1 isActiveITunesAccountRequired:1];

  if (qword_27F210B98 != -1)
  {
    swift_once();
  }

  sub_24F92A448();
  sub_24F92A408();
  (*(v13 + 8))(v15, v12);

  a3 = v64;
  v16 = v65;
  if (!a4)
  {
    goto LABEL_8;
  }

LABEL_3:
  v17 = a1;
  v18 = a4;
  if (a2)
  {
LABEL_4:

    v19 = a2;
    v20 = a2;
    goto LABEL_13;
  }

LABEL_11:
  v25 = *(v4 + 16);

  v26 = [v25 ams_activeiTunesAccount];
  v20 = v26;
  if (!v26)
  {
    v35 = v16;

    goto LABEL_19;
  }

  v19 = v26;
LABEL_13:
  v27 = a2;
  v28 = v16;

  v29 = v27;
  v30 = [v19 identifier];
  if (!v30)
  {

LABEL_19:
    v33 = 0;
    v34 = 0;
    goto LABEL_20;
  }

  v66 = 0;
  v67 = 0;
  v31 = v30;
  sub_24F92B0C8();

  v33 = v66;
  v34 = v67;
  if (!v67)
  {
    v33 = 0;
  }

LABEL_20:
  v68[0] = v33;
  v68[1] = v34;
  v68[2] = v16;
  v68[3] = a3;
  v68[4] = v18;
  if (*(v4 + 24) != 1)
  {
    v40 = v69;
    v41 = sub_24EF76A7C(v20, v16, a3, v18);
    if (!v40)
    {
      v42 = v41;

      v43 = [v42 identifierForKey_];

      a3 = sub_24F92B0D8();

      return a3;
    }

LABEL_28:

    swift_bridgeObjectRelease_n();

    return a3;
  }

  v64 = a3;
  v65 = v20;
  v60 = v4;
  if (qword_27F210CA0 != -1)
  {
    v32 = swift_once();
  }

  a3 = &v57;
  v36 = off_27F234F38;
  MEMORY[0x28223BE20](v32);
  *(&v57 - 2) = v68;
  MEMORY[0x28223BE20](v37);
  *(&v57 - 4) = sub_24EF794C8;
  *(&v57 - 3) = v38;
  *(&v57 - 2) = v36;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
  v39 = v69;
  sub_24F92BF18();

  if (!v67)
  {
    v20 = v65;
    v44 = sub_24EF76A7C(v65, v16, v64, v18);
    if (!v39)
    {
      v46 = v44;

      v47 = [v46 identifierForKey_];

      a3 = sub_24F92B0D8();
      v49 = v48;

      v64 = &v57;
      v69 = off_27F234F38;
      MEMORY[0x28223BE20](v50);
      v59 = &v57 - 6;
      *(&v57 - 4) = v68;
      *(&v57 - 3) = a3;
      *(&v57 - 2) = v49;
      v60 = *(v51 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_24F93DE60;

      sub_24F927D78();
      v66 = v52;
      v58 = sub_24EF79394(&qword_27F222930, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
      sub_24E8582A8();
      v53 = v61;
      v54 = v62;
      v55 = sub_24F92C6A8();
      v58 = &v57;
      MEMORY[0x28223BE20](v55);
      v56 = v59;
      *(&v57 - 4) = sub_24EF794E4;
      *(&v57 - 3) = v56;
      *(&v57 - 2) = v69;
      sub_24F92BF08();

      (*(v63 + 8))(v53, v54);

      return a3;
    }

    goto LABEL_28;
  }

  a3 = v66;
  swift_bridgeObjectRelease_n();

  return a3;
}

uint64_t sub_24EF74670(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  v9 = *(a2 + 16);
  v14 = *(a2 + 24);
  v15 = v8;
  sub_24E606048(&v15, v13);
  v10 = v9;
  sub_24E614DB0(&v14, v13);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13[0] = *a1;
  sub_24E821334(a3, a4, a2, isUniquelyReferenced_nonNull_native);
  sub_24E601704(&v15, &unk_27F23B740);

  result = sub_24EB715C4(&v14);
  *a1 = v13[0];
  return result;
}

uint64_t sub_24EF74740@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  if (*(*a1 + 16) && (v5 = sub_24E76E224(a2), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 16 * v5);
  }

  else
  {
    v7 = 0;
    result = 0;
  }

  *a3 = v7;
  a3[1] = result;
  return result;
}

uint64_t sub_24EF74798(uint64_t a1, uint64_t a2)
{
  v3[30] = a2;
  v3[31] = v2;
  v3[29] = a1;
  return MEMORY[0x2822009F8](sub_24EF747BC, 0, 0);
}

uint64_t sub_24EF747BC()
{
  v1 = v0[30];
  v2 = sub_24E608448(MEMORY[0x277D84F90]);
  if (v1)
  {
    v3 = v0[30];
    v4 = v3;
  }

  else
  {
    v4 = [*(v0[31] + 16) ams_activeiTunesAccount];
    v3 = v0[30];
  }

  v0[32] = v4;
  v5 = v0[29];
  v6 = v5[2];
  v0[33] = v6;
  v7 = v3;
  if (v6)
  {
    v0[34] = v2;
    v0[35] = 0;
    v8 = v5[4];
    v0[36] = v8;
    v9 = v5[6];
    v0[37] = v9;
    v10 = v5[5];
    v11 = v8;

    v12 = swift_task_alloc();
    v0[38] = v12;
    *v12 = v0;
    v12[1] = sub_24EF74938;
    v13 = v0[32];

    return sub_24EF74F5C(v11, v10, v9, v13);
  }

  else
  {

    v15 = v0[1];

    return v15(v2);
  }
}

uint64_t sub_24EF74938(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 312) = a1;
  *(v3 + 320) = v1;

  if (v1)
  {

    v4 = sub_24EF74EE8;
  }

  else
  {
    v4 = sub_24EF74A54;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24EF74A54()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 272);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 224) = v2;
  v53 = (v0 + 16);
  v54 = (v0 + 64);
  v4 = (v0 + 112);
  v50 = (v0 + 160);
  v55 = (v0 + 192);
  v5 = v1 + 64;
  v6 = -1;
  v7 = -1 << *(v1 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v1 + 64);
  v9 = *(v0 + 272);
  v49 = (63 - v7) >> 6;
  v51 = v1;

  v11 = 0;
  for (i = v1 + 64; ; v5 = i)
  {
    if (!v8)
    {
      if (v49 <= v11 + 1)
      {
        v14 = v11 + 1;
      }

      else
      {
        v14 = v49;
      }

      v15 = v14 - 1;
      while (1)
      {
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v13 >= v49)
        {
          v8 = 0;
          *(v0 + 80) = 0u;
          *(v0 + 96) = 0u;
          v11 = v15;
          *v54 = 0u;
          goto LABEL_17;
        }

        v8 = *(v5 + 8 * v13);
        ++v11;
        if (v8)
        {
          v11 = v13;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      return result;
    }

    v13 = v11;
LABEL_16:
    v16 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v17 = v16 | (v13 << 6);
    v18 = (*(v51 + 48) + 16 * v17);
    v20 = *v18;
    v19 = v18[1];
    sub_24E643A9C(*(v51 + 56) + 32 * v17, v50);
    *(v0 + 64) = v20;
    *(v0 + 72) = v19;
    sub_24E612B0C(v50, (v0 + 80));

LABEL_17:
    v21 = *(v0 + 80);
    *v4 = *v54;
    v4[1] = v21;
    v4[2] = *(v0 + 96);
    v22 = *(v0 + 120);
    if (!v22)
    {
      break;
    }

    v23 = *(v0 + 112);
    sub_24E643A9C(v0 + 128, v0 + 32);
    *(v0 + 16) = v23;
    *(v0 + 24) = v22;

    sub_24E601704(v4, &qword_27F234F80);
    v24 = *(v0 + 24);
    if (!v24)
    {
      goto LABEL_30;
    }

    v25 = *v53;
    sub_24E612B0C((v0 + 32), v55);
    v27 = sub_24E76D644(v25, v24);
    v28 = v9[2];
    v29 = (v26 & 1) == 0;
    result = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_41;
    }

    v30 = v26;
    if (v9[3] >= result)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_24E8AD8E4();
      }
    }

    else
    {
      sub_24E89873C(result, isUniquelyReferenced_nonNull_native & 1);
      v31 = sub_24E76D644(v25, v24);
      if ((v30 & 1) != (v32 & 1))
      {

        return sub_24F92CF88();
      }

      v27 = v31;
    }

    v9 = *(v0 + 224);
    if (v30)
    {

      v12 = (v9[7] + 32 * v27);
      __swift_destroy_boxed_opaque_existential_1(v12);
      result = sub_24E612B0C(v55, v12);
    }

    else
    {
      v9[(v27 >> 6) + 8] |= 1 << v27;
      v33 = (v9[6] + 16 * v27);
      *v33 = v25;
      v33[1] = v24;
      result = sub_24E612B0C(v55, (v9[7] + 32 * v27));
      v34 = v9[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_42;
      }

      v9[2] = v36;
    }

    isUniquelyReferenced_nonNull_native = 1;
    v4 = (v0 + 112);
  }

  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *v53 = 0u;
LABEL_30:
  v37 = *(v0 + 288);
  v38 = *(v0 + 280);
  v39 = *(v0 + 264);

  if (v38 + 1 == v39)
  {

    v40 = *(v0 + 8);

    return v40(v9);
  }

  else
  {
    v41 = *(v0 + 280);
    *(v0 + 272) = v9;
    *(v0 + 280) = v41 + 1;
    v42 = (*(v0 + 232) + 24 * v41);
    v43 = v42[7];
    *(v0 + 288) = v43;
    v44 = v42[9];
    *(v0 + 296) = v44;
    v45 = v42[8];
    v46 = v43;

    v47 = swift_task_alloc();
    *(v0 + 304) = v47;
    *v47 = v0;
    v47[1] = sub_24EF74938;
    v48 = *(v0 + 256);

    return sub_24EF74F5C(v46, v45, v44, v48);
  }
}

uint64_t sub_24EF74EE8()
{
  v1 = *(v0 + 256);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24EF74F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v6 = sub_24F927D88();
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EF75024, 0, 0);
}

uint64_t sub_24EF75024()
{
  v1 = *(v0 + 96);
  if (!v1)
  {
    v1 = [*(*(v0 + 104) + 16) ams_activeiTunesAccount];
  }

  *(v0 + 136) = v1;
  if (*(*(v0 + 104) + 24) == 1)
  {
    v2 = *(v0 + 96);
    v3 = *(v0 + 72);
    if (v1)
    {
      v4 = v2;
      v5 = v3;

      v6 = v1;
      v7 = [v6 identifier];
      if (v7)
      {
        v8 = v7;
        sub_24F92B0C8();
      }
    }

    else
    {
      v12 = v2;
      v13 = v3;
    }

    *(v0 + 144) = 0;
    v14 = *(v0 + 88);
    v15 = *(v0 + 72);
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = v15;
    *(v0 + 48) = v14;
    if (qword_27F210CA8 != -1)
    {
      swift_once();
    }

    v16 = off_27F234F40;
    v17 = swift_task_alloc();
    *(v17 + 16) = v0 + 16;
    v18 = swift_task_alloc();
    v18[2] = sub_24EF79328;
    v18[3] = v17;
    v18[4] = v16;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225638);
    sub_24F92BF18();

    v19 = *(v0 + 56);

    if (v19)
    {

      v20 = *(v0 + 8);

      return v20(v19);
    }

    v10 = swift_task_alloc();
    *(v0 + 152) = v10;
    *v10 = v0;
    v11 = sub_24EF75348;
  }

  else
  {
    v9 = *(v0 + 96);
    v10 = swift_task_alloc();
    *(v0 + 176) = v10;
    *v10 = v0;
    v11 = sub_24EF75744;
  }

  v10[1] = v11;
  v22 = *(v0 + 104);
  v23 = *(v0 + 80);
  v24 = *(v0 + 88);
  v25 = *(v0 + 72);

  return sub_24EF788A4(v22, v1, v25, v23, v24);
}

uint64_t sub_24EF75348(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v5 = sub_24EF756B4;
  }

  else
  {
    *(v4 + 168) = a1;
    v5 = sub_24EF75470;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24EF75470()
{
  v1 = v0[21];
  v13 = v0[17];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v12 = v0[9];
  v5 = off_27F234F40;
  v6 = swift_task_alloc();
  *(v6 + 16) = v0 + 2;
  *(v6 + 24) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24F93DE60;

  sub_24F927D78();
  v0[8] = v7;
  sub_24EF79394(&qword_27F222930, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E8582A8();
  sub_24F92C6A8();
  v8 = swift_task_alloc();
  v8[2] = sub_24EF79330;
  v8[3] = v6;
  v8[4] = v5;
  sub_24F92BF08();

  (*(v3 + 8))(v2, v4);

  v9 = v0[21];

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_24EF756B4()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24EF75744(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v5 = sub_24EF758E0;
  }

  else
  {
    *(v4 + 192) = a1;
    v5 = sub_24EF7586C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24EF7586C()
{
  v1 = *(v0 + 192);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_24EF758E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EF7594C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  if (*(*a1 + 16) && (sub_24E76E224(a2), (v4 & 1) != 0))
  {
  }

  else
  {
    result = 0;
  }

  *a3 = result;
  return result;
}

uint64_t sub_24EF7599C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 16);
  v12 = *(a2 + 24);
  v13 = v6;
  sub_24E606048(&v13, v11);
  v8 = v7;
  sub_24E614DB0(&v12, v11);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11[0] = *a1;
  sub_24E8214A8(a3, a2, isUniquelyReferenced_nonNull_native);
  sub_24E601704(&v13, &unk_27F23B740);

  result = sub_24EB715C4(&v12);
  *a1 = v11[0];
  return result;
}

uint64_t sub_24EF75A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a1;
  v4[7] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0);
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EF75B30, 0, 0);
}

uint64_t sub_24EF75B30()
{
  v1 = sub_24F92B098();
  v2 = objc_opt_self();
  v13 = [v2 keyWithName:v1 crossDeviceSync:1 isActiveITunesAccountRequired:1];
  v0[11] = v13;

  if (qword_27F210B98 != -1)
  {
    swift_once();
  }

  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[8];
  sub_24F92A448();
  sub_24F92A408();
  v6 = *(v3 + 8);
  v6(v4, v5);

  v7 = sub_24F92B098();
  v8 = [v2 keyWithName:v7 crossDeviceSync:1 isActiveITunesAccountRequired:1];

  sub_24F92A448();
  sub_24F92A408();
  v6(v4, v5);

  v10 = v0[4];
  v9 = v0[5];
  v0[12] = v9;
  v11 = swift_task_alloc();
  v0[13] = v11;
  *v11 = v0;
  v11[1] = sub_24EF75D7C;

  return sub_24EF7603C(0, v13, v10, v9);
}

uint64_t sub_24EF75D7C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = sub_24EF75F20;
  }

  else
  {
    v6 = *(v4 + 88);

    *(v4 + 120) = a1;
    v5 = sub_24EF75EB0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24EF75EB0()
{
  **(v0 + 48) = *(v0 + 120);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EF75F20()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24EF7603C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v6 = sub_24F927D88();
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EF76104, 0, 0);
}

uint64_t sub_24EF76104()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 72);
    v3 = v2;
  }

  else
  {
    v4 = [*(*(v0 + 104) + 16) ams_activeiTunesAccount];
    v3 = v4;
    if (!v4)
    {
      v11 = *(v0 + 80);

      goto LABEL_10;
    }

    v1 = *(v0 + 72);
    v2 = v4;
  }

  v5 = *(v0 + 80);
  v6 = v1;
  v7 = v5;

  v8 = v6;
  v9 = [v2 identifier];
  if (v9)
  {
    v10 = v9;
    sub_24F92B0C8();
  }

LABEL_10:
  *(v0 + 136) = 0;
  *(v0 + 144) = v3;
  v13 = *(v0 + 96);
  v12 = *(v0 + 104);
  v14 = *(v0 + 80);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = v14;
  *(v0 + 48) = v13;
  if (*(v12 + 24) == 1)
  {
    if (qword_27F210C98 != -1)
    {
      swift_once();
    }

    v15 = off_27F234F30;
    v16 = swift_task_alloc();
    *(v16 + 16) = v0 + 16;
    v17 = swift_task_alloc();
    v17[2] = sub_24EF792F0;
    v17[3] = v16;
    v17[4] = v15;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234F58);
    sub_24F92BF18();

    v18 = *(v0 + 56);

    if (v18)
    {

      v19 = *(v0 + 8);

      return v19(v18);
    }

    v21 = swift_task_alloc();
    *(v0 + 152) = v21;
    *v21 = v0;
    v22 = sub_24EF76428;
  }

  else
  {
    v21 = swift_task_alloc();
    *(v0 + 176) = v21;
    *v21 = v0;
    v22 = sub_24EF76828;
  }

  v21[1] = v22;
  v23 = *(v0 + 96);
  v24 = *(v0 + 80);
  v25 = *(v0 + 88);

  return sub_24EF77BB0(v3, v24, v25, v23);
}

uint64_t sub_24EF76428(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v5 = sub_24EF76550;
  }

  else
  {
    *(v4 + 168) = a1;
    v5 = sub_24EF765E4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24EF76550()
{

  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24EF765E4()
{
  v1 = v0[21];
  v13 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v12 = v0[10];
  v5 = off_27F234F30;
  v6 = swift_task_alloc();
  *(v6 + 16) = v0 + 2;
  *(v6 + 24) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24F93DE60;

  sub_24F927D78();
  v0[8] = v7;
  sub_24EF79394(&qword_27F222930, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E8582A8();
  sub_24F92C6A8();
  v8 = swift_task_alloc();
  v8[2] = sub_24EF7930C;
  v8[3] = v6;
  v8[4] = v5;
  sub_24F92BF08();

  (*(v3 + 8))(v2, v4);

  v9 = v0[21];

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_24EF76828(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v5 = sub_24EF76950;
  }

  else
  {
    *(v4 + 192) = a1;
    v5 = sub_24EF769E4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24EF76950()
{

  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24EF769E4()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 192);

  v3 = *(v0 + 8);

  return v3(v2);
}

id sub_24EF76A7C(id a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v11 = sub_24F927D88();
  v51 = *(v11 - 8);
  *&v12 = MEMORY[0x28223BE20](v11).n128_u64[0];
  v46 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v14 = v5;
    v15 = a3;
    v16 = a1;
    v17 = a1;
  }

  else
  {
    v18 = [*(v4 + 16) ams_activeiTunesAccount];
    v17 = v18;
    if (!v18)
    {
      v25 = a2;

      v23 = 0;
      goto LABEL_11;
    }

    v14 = v5;
    v15 = a3;
    v16 = v18;
  }

  a1 = a1;
  v19 = a2;

  v20 = a1;
  v21 = [v16 identifier];
  if (!v21)
  {

    v23 = 0;
    a3 = v15;
    v6 = v14;
LABEL_11:
    v24 = 0;
    goto LABEL_12;
  }

  v48 = 0;
  v49 = 0;
  a1 = v21;
  sub_24F92B0C8();

  v23 = v48;
  if (!v49)
  {
    v23 = 0;
  }

  a3 = v15;
  v6 = v14;
  v24 = v49;
LABEL_12:
  v50[0] = v23;
  v50[1] = v24;
  v50[2] = a2;
  v50[3] = a3;
  v50[4] = a4;
  if (*(v4 + 24) != 1)
  {
    v29 = sub_24EF77230(v17, a2);
    if (!v6)
    {
      a1 = v29;

      return a1;
    }

LABEL_20:

    return a1;
  }

  v43 = v11;
  v44 = a3;
  v47 = v17;
  v45 = v4;
  if (qword_27F210C98 != -1)
  {
    v22 = swift_once();
  }

  v26 = off_27F234F30;
  MEMORY[0x28223BE20](v22);
  v40[-2] = v50;
  MEMORY[0x28223BE20](v27);
  v40[-4] = sub_24EF794C4;
  v40[-3] = v28;
  v40[-2] = v26;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234F58);
  sub_24F92BF18();

  a1 = v48;
  if (!v48)
  {
    v17 = v47;
    v30 = sub_24EF77230(v47, a2);
    if (!v6)
    {
      a1 = v30;
      v45 = v40;
      v32 = off_27F234F30;
      MEMORY[0x28223BE20](v30);
      v41 = v32;
      v42 = &v40[-4];
      v40[-2] = v50;
      v40[-1] = v33;
      v44 = v32[2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_24F93DE60;

      sub_24F927D78();
      v48 = v34;
      sub_24EF79394(&qword_27F222930, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
      sub_24E8582A8();
      v35 = v46;
      v36 = v43;
      v37 = sub_24F92C6A8();
      v40[1] = v40;
      MEMORY[0x28223BE20](v37);
      v39 = v41;
      v38 = v42;
      v40[-4] = sub_24EF794EC;
      v40[-3] = v38;
      v40[-2] = v39;
      sub_24F92BF08();

      (*(v51 + 8))(v35, v36);

      return a1;
    }

    goto LABEL_20;
  }

  return a1;
}

uint64_t sub_24EF76FDC(void *a1, uint64_t a2, void *a3)
{
  v6 = *a2;
  v7 = *(a2 + 16);
  v13 = *(a2 + 24);
  v14 = v6;
  sub_24E606048(&v14, v12);
  v8 = v7;
  sub_24E614DB0(&v13, v12);
  v9 = a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12[0] = *a1;
  sub_24E821608(v9, a2, isUniquelyReferenced_nonNull_native);
  sub_24E601704(&v14, &unk_27F23B740);

  result = sub_24EB715C4(&v13);
  *a1 = v12[0];
  return result;
}

unint64_t sub_24EF770A4@<X0>(unint64_t result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *result;
  if (*(*result + 16) && (result = sub_24E76E224(a2), (v5 & 1) != 0))
  {
    v6 = *(*(v4 + 56) + 8 * result);
    result = v6;
  }

  else
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_24EF770F4()
{
  sub_24F92D068();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24EF77168()
{
  sub_24F92D068();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24EF771BC@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_24F92CB88();

  *a1 = v2 != 0;
  return result;
}

id sub_24EF77230(void *a1, void *a2)
{
  v49 = a2;
  v4 = sub_24F92AAE8();
  v57 = *(v4 - 8);
  v58 = v4;
  MEMORY[0x28223BE20](v4);
  v48 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v50 = &v47 - v7;
  v8 = objc_opt_self();
  v9 = sub_24F92B098();
  v10 = *(v2 + 32);
  v52 = OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bag;
  v53 = v10;
  v11 = sub_24F92A328();
  v51 = a1;
  v12 = [v8 identifierStoreWithAccount:a1 bagNamespace:v9 bag:v11];

  swift_unknownObjectRelease();
  v13 = [v12 promiseWithTimeout_];

  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v47 = (v14 + 16);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  v16 = dispatch_semaphore_create(1);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v17 + 24) = v16;
  v63 = sub_24EF79274;
  v64 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v60 = 1107296256;
  v61 = sub_24E955CC4;
  ObjectType = &block_descriptor_17_2;
  v18 = _Block_copy(&aBlock);
  v54 = v15;

  v19 = v16;

  [v13 addErrorBlock_];
  _Block_release(v18);
  v20 = swift_allocObject();
  *(v20 + 16) = v14;
  *(v20 + 24) = v19;
  v63 = sub_24EF79294;
  v64 = v20;
  aBlock = MEMORY[0x277D85DD0];
  v60 = 1107296256;
  v61 = sub_24ECAEFC8;
  ObjectType = &block_descriptor_23;
  v21 = _Block_copy(&aBlock);
  v22 = v19;
  v55 = v14;

  v56 = v13;
  v23 = v13;
  v24 = v22;
  [v23 addSuccessBlock_];
  _Block_release(v21);
  sub_24F92C118();
  swift_beginAccess();
  v25 = *(v15 + 16);
  if (v25)
  {
    v26 = v25;
    if (qword_27F210C90 != -1)
    {
      swift_once();
    }

    v27 = v58;
    v28 = __swift_project_value_buffer(v58, qword_27F234F18);
    v29 = v50;
    (*(v57 + 16))(v50, v28, v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93FC20;
    sub_24F9283A8();
    v30 = v51;
    if (v51)
    {
      v31 = sub_24E69A5C4(0, &unk_27F226CE0);
      v32 = v30;
    }

    else
    {
      v32 = 0;
      v31 = 0;
      v60 = 0;
      v61 = 0;
    }

    aBlock = v32;
    ObjectType = v31;
    v37 = v30;
    sub_24F9283B8();
    sub_24E601704(&aBlock, &qword_27F2129B0);
    sub_24F9283A8();
    v38 = sub_24F92A328();
    ObjectType = swift_getObjectType();
    aBlock = v38;
    sub_24F9283B8();
    sub_24E601704(&aBlock, &qword_27F2129B0);
    v36 = v58;
    sub_24F92A5A8();

    (*(v57 + 8))(v29, v36);
LABEL_10:
    swift_willThrow();

    return v36;
  }

  v33 = v49;
  v34 = v48;
  v35 = v47;
  swift_beginAccess();
  if (!*v35)
  {
    if (qword_27F210C90 != -1)
    {
      swift_once();
    }

    v40 = v58;
    v41 = __swift_project_value_buffer(v58, qword_27F234F18);
    (*(v57 + 16))(v34, v41, v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93FC20;
    sub_24F9283A8();
    v42 = v51;
    if (v51)
    {
      v43 = sub_24E69A5C4(0, &unk_27F226CE0);
      v44 = v42;
    }

    else
    {
      v44 = 0;
      v43 = 0;
      v60 = 0;
      v61 = 0;
    }

    aBlock = v44;
    ObjectType = v43;
    v45 = v42;
    sub_24F9283B8();
    sub_24E601704(&aBlock, &qword_27F2129B0);
    sub_24F9283A8();
    v46 = sub_24F92A328();
    ObjectType = swift_getObjectType();
    aBlock = v46;
    sub_24F9283B8();
    sub_24E601704(&aBlock, &qword_27F2129B0);
    v36 = v58;
    sub_24F92A5A8();

    (*(v57 + 8))(v34, v36);
    sub_24EF7929C();
    swift_allocError();
    goto LABEL_10;
  }

  v36 = *v35;
  [v36 setIncludeAccountMatchStatus_];
  [v36 setIsActiveITunesAccountRequired_];

  return v36;
}

uint64_t sub_24EF77AEC(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;

  v5 = a1;
  return sub_24F92C128();
}

uint64_t sub_24EF77B50(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;

  v5 = a1;
  return sub_24F92C128();
}

uint64_t sub_24EF77BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[30] = a4;
  v5[31] = v4;
  v5[28] = a2;
  v5[29] = a3;
  v5[27] = a1;
  v6 = sub_24F92AAE8();
  v5[32] = v6;
  v5[33] = *(v6 - 8);
  v5[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EF77C78, 0, 0);
}

uint64_t sub_24EF77C78()
{
  v1 = v0[31];
  v2 = v0[27];
  v3 = objc_opt_self();
  v4 = sub_24F92B098();
  v5 = OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bag;
  v0[35] = *(v1 + 32);
  v0[36] = v5;
  v6 = [v3 identifierStoreWithAccount:v2 bagNamespace:v4 bag:sub_24F92A328()];
  v0[37] = v6;
  swift_unknownObjectRelease();

  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_24EF77E20;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234F48);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24E66DB94;
  v0[13] = &block_descriptor_95;
  v0[14] = v7;
  [v6 resultWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24EF77E20()
{
  v1 = *(*v0 + 48);
  *(*v0 + 304) = v1;
  if (v1)
  {
    v2 = sub_24EF77FEC;
  }

  else
  {
    v2 = sub_24EF77F30;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EF77F30()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);

  [v2 setIncludeAccountMatchStatus_];
  [v2 setIsActiveITunesAccountRequired_];

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_24EF77FEC()
{
  v1 = v0[37];
  swift_willThrow();

  if (qword_27F210C90 != -1)
  {
    swift_once();
  }

  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[32];
  v5 = v0[27];
  v6 = __swift_project_value_buffer(v4, qword_27F234F18);
  (*(v3 + 16))(v2, v6, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93FC20;
  sub_24F9283A8();
  if (v5)
  {
    v7 = sub_24E69A5C4(0, &unk_27F226CE0);
    v8 = v0[27];
    v9 = v8;
  }

  else
  {
    v9 = 0;
    v7 = 0;
    v0[19] = 0;
    v0[20] = 0;
    v8 = v0[27];
  }

  v11 = v0[33];
  v10 = v0[34];
  v12 = v0[32];
  v0[18] = v9;
  v0[21] = v7;
  v13 = v8;
  sub_24F9283B8();
  sub_24E601704((v0 + 18), &qword_27F2129B0);
  sub_24F9283A8();
  v14 = sub_24F92A328();
  v0[25] = swift_getObjectType();
  v0[22] = v14;
  sub_24F9283B8();
  sub_24E601704((v0 + 22), &qword_27F2129B0);
  sub_24F92A5A8();

  (*(v11 + 8))(v10, v12);
  swift_willThrow();

  v15 = v0[1];

  return v15();
}

uint64_t MetricsIdStore.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_24EF78320@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_24EF783E4(a1, a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
    a3[2] = v7;
  }

  return result;
}

double sub_24EF78350@<D0>(void (*a1)(__int128 *__return_ptr, uint64_t *)@<X0>, uint64_t a2@<X2>, _OWORD *a3@<X8>)
{
  swift_beginAccess();
  v7 = *(a2 + 24);

  a1(&v8, &v7);

  result = *&v8;
  *a3 = v8;
  return result;
}

void *sub_24EF783E4(char *a1, uint64_t a2)
{
  v39 = a2;
  v3 = sub_24F928388();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v37 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v34 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - v13;
  sub_24F928398();
  v15 = sub_24F928348();
  v17 = v16;
  v18 = *(v4 + 8);
  v18(v14, v3);
  if (!v17)
  {
    v20 = 0xE400000000000000;
    v19 = 1701667182;
    v22 = a1;
LABEL_11:
    v28 = sub_24F92AC38();
    sub_24EF79394(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v29 = v19;
    v29[1] = v20;
    v29[2] = &type metadata for MetricsIdentifierKeyContext;
    (*(*(v28 - 1) + 104))(v29, *MEMORY[0x277D22530], v28);
    swift_willThrow();
    v30 = sub_24F9285B8();
    (*(*(v30 - 8) + 8))(v39, v30);
    v18(v22, v3);
    return v28;
  }

  v36 = v15;
  v38 = v17;
  v19 = 0x6E795373736F7263;
  v20 = 0xEF65636976654463;
  sub_24F928398();
  v35 = sub_24F928278();
  v21 = v35;
  v18(v11, v3);
  if (v21 == 2)
  {
    v22 = a1;
LABEL_10:

    goto LABEL_11;
  }

  v19 = 0x73656D614E676162;
  v20 = 0xEC00000065636170;
  sub_24F928398();
  v34 = sub_24F928348();
  v24 = v23;
  v18(v8, v3);
  v25 = v3;
  v22 = a1;
  if (!v24)
  {
    goto LABEL_10;
  }

  v26 = v37;
  sub_24F928398();
  v27 = sub_24F928278();
  v18(v26, v3);
  if (v27 == 2)
  {
    if (v36 == 0x644972657375 && v38 == 0xE600000000000000)
    {
      v27 = 1;
    }

    else
    {
      v27 = sub_24F92CE08();
    }
  }

  v32 = sub_24F92B098();

  v28 = [objc_opt_self() keyWithName:v32 crossDeviceSync:v35 & 1 isActiveITunesAccountRequired:v27 & 1];

  v33 = sub_24F9285B8();
  (*(*(v33 - 8) + 8))(v39, v33);
  v18(a1, v25);
  return v28;
}

uint64_t sub_24EF788A4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5[39] = a4;
  v5[40] = a5;
  v5[38] = a3;
  v9 = a3;

  v10 = swift_task_alloc();
  v5[41] = v10;
  *v10 = v5;
  v10[1] = sub_24EF78980;

  return sub_24EF7603C(a2, v9, a4, a5);
}

uint64_t sub_24EF78980(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 336) = a1;

  if (v1)
  {
    v5 = *(v3 + 304);

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_24EF78AD8, 0, 0);
  }
}

_OWORD *sub_24EF78AD8()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 304);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_24F941C80;
  *(v3 + 32) = v2;
  sub_24E69A5C4(0, &qword_27F234F70);
  v4 = sub_24F92B588();

  v5 = [v1 generateEventFieldsForKeys_];

  v6 = sub_24F92AE38();
  v7 = sub_24E608448(MEMORY[0x277D84F90]);
  v8 = 0;
  v9 = -1;
  v10 = -1 << *(v6 + 32);
  if (-v10 < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v11 = v9 & *(v6 + 64);
  v12 = (63 - v10) >> 6;
  while (1)
  {
    v13 = v8;
    if (!v11)
    {
      break;
    }

LABEL_8:
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v15 = v14 | (v8 << 6);
    sub_24E65864C(*(v6 + 48) + 40 * v15, v0 + 16);
    sub_24E643A9C(*(v6 + 56) + 32 * v15, v0 + 56);
    v16 = *(v0 + 32);
    *(v0 + 88) = *(v0 + 16);
    *(v0 + 104) = v16;
    *(v0 + 120) = *(v0 + 48);
    sub_24E612B0C((v0 + 56), (v0 + 128));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224A00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135C0);
    if (swift_dynamicCast())
    {
      v17 = *(v0 + 160);
      v18 = *(v0 + 168);
      sub_24E612B0C((v0 + 176), (v0 + 208));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = v18;
      v45 = v17;
      v20 = sub_24E76D644(v17, v18);
      v21 = v7[2];
      v22 = (v19 & 1) == 0;
      result = (v21 + v22);
      if (__OFADD__(v21, v22))
      {
        __break(1u);
LABEL_37:
        __break(1u);
        return result;
      }

      if (v7[3] >= result)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v19 & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v47 = v19;
          sub_24E8AD8E4();
          if ((v47 & 1) == 0)
          {
            goto LABEL_19;
          }
        }

LABEL_17:

        v27 = (v7[7] + 32 * v20);
        __swift_destroy_boxed_opaque_existential_1(v27);
        sub_24E612B0C((v0 + 208), v27);
      }

      else
      {
        v24 = v19;
        sub_24E89873C(result, isUniquelyReferenced_nonNull_native);
        v25 = sub_24E76D644(v45, v48);
        if ((v24 & 1) != (v26 & 1))
        {
LABEL_33:

          return sub_24F92CF88();
        }

        v20 = v25;
        if (v24)
        {
          goto LABEL_17;
        }

LABEL_19:
        v7[(v20 >> 6) + 8] |= 1 << v20;
        v28 = (v7[6] + 16 * v20);
        *v28 = v45;
        v28[1] = v48;
        result = sub_24E612B0C((v0 + 208), (v7[7] + 32 * v20));
        v29 = v7[2];
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_37;
        }

        v7[2] = v31;
      }
    }

    else
    {
      *(v0 + 176) = 0u;
      *(v0 + 192) = 0u;
      *(v0 + 160) = 0u;
      sub_24E601704(v0 + 160, &qword_27F234F78);
    }
  }

  while (1)
  {
    v8 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v8 >= v12)
    {
      break;
    }

    v11 = *(v6 + 64 + 8 * v8);
    ++v13;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  v32 = *(v0 + 304);

  v33 = [v32 name];
  v34 = sub_24F92B0D8();
  v36 = v35;

  if (v34 == 0x644972657375 && v36 == 0xE600000000000000)
  {

    goto LABEL_28;
  }

  v38 = sub_24F92CE08();

  if (v38)
  {
LABEL_28:
    v40 = *(v0 + 336);
    v42 = *(v0 + 312);
    v41 = *(v0 + 320);
    *(v0 + 264) = MEMORY[0x277D837D0];
    *(v0 + 240) = v42;
    *(v0 + 248) = v41;
    sub_24E612B0C((v0 + 240), (v0 + 272));
    v43 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4((v0 + 272), 0x734E72657375, 0xE600000000000000, v43);

    goto LABEL_29;
  }

  v39 = *(v0 + 336);

LABEL_29:
  v44 = *(v0 + 8);

  return v44(v7);
}

uint64_t sub_24EF78FD0(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C290);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14[-v8];
  *(v3 + 16) = a1;
  *(v3 + 32) = a2;
  v10 = qword_27F210B90;
  v11 = a1;

  if (v10 != -1)
  {
    swift_once();
  }

  sub_24F92A3B8();
  sub_24F92A408();
  (*(v7 + 8))(v9, v6);
  *(v3 + 24) = v14[15];
  v12 = [objc_opt_self() defaultCenter];
  [v12 addObserver:v3 selector:sel_storeAccountDidChange name:*MEMORY[0x277CB8B78] object:v11];

  return v3;
}

uint64_t sub_24EF79200()
{

  return swift_deallocObject();
}

uint64_t sub_24EF79238()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_15_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24EF7929C()
{
  result = qword_27F234F50;
  if (!qword_27F234F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234F50);
  }

  return result;
}

uint64_t sub_24EF79394(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24EF79410()
{
  result = qword_27F234F90;
  if (!qword_27F234F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234F90);
  }

  return result;
}

unint64_t sub_24EF79468()
{
  result = qword_27F234F98;
  if (!qword_27F234F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234F98);
  }

  return result;
}

uint64_t sub_24EF79550(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234FB0);
  MEMORY[0x28223BE20](v2);
  v4 = &v13 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234FB8);
  MEMORY[0x28223BE20](v5);
  v7 = &v13 - v6;
  v8 = *(*(a1 + 16) + OBJC_IVAR____TtC12GameStoreKit13FramedArtwork_artwork);
  if (v8)
  {

    *v7 = sub_24F924C88();
    *(v7 + 1) = 0x4028000000000000;
    v7[16] = 0;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234FC8);
    sub_24EF797DC(v8, a1, &v7[*(v9 + 44)]);
    sub_24E60169C(v7, v4, &qword_27F234FB8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E220);
    sub_24E602068(&qword_27F234FC0, &qword_27F234FB8);
    sub_24E7EBBCC();
    sub_24F924E28();

    return sub_24E601704(v7, &qword_27F234FB8);
  }

  else
  {
    v11 = sub_24F926C98();
    v12 = sub_24F925808();
    *v4 = v11;
    v4[8] = v12;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E220);
    sub_24E602068(&qword_27F234FC0, &qword_27F234FB8);
    sub_24E7EBBCC();
    return sub_24F924E28();
  }
}

uint64_t sub_24EF797DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v112 = a2;
  v116 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340);
  MEMORY[0x28223BE20](v4 - 8);
  v111 = &v100 - v5;
  v6 = sub_24F91F008();
  v113 = *(v6 - 8);
  v114 = v6;
  MEMORY[0x28223BE20](v6);
  v100 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_24F924B38();
  v108 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v106 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v100 - v13;
  v15 = type metadata accessor for SwiftUIArtworkView(0);
  v16 = (v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234FD0);
  MEMORY[0x28223BE20](v102);
  v20 = &v100 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234FD8);
  MEMORY[0x28223BE20](v21);
  v103 = &v100 - v22;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234FE0);
  v107 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v117 = &v100 - v23;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234FE8);
  MEMORY[0x28223BE20](v105);
  v115 = &v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v104 = &v100 - v26;
  MEMORY[0x28223BE20](v27);
  v118 = &v100 - v28;
  v29 = v16[8];
  v30 = *MEMORY[0x277CE1010];
  v31 = sub_24F926E68();
  (*(*(v31 - 8) + 104))(&v18[v29], v30, v31);
  *(v18 + 1) = 0;
  *(v18 + 2) = 0;
  *v18 = a1;
  v18[24] = 1;
  v32 = &v18[v16[9]];
  *v32 = 0;
  *(v32 + 1) = 0;
  v32[16] = 1;
  v18[v16[10]] = 2;
  v18[v16[11]] = 0;

  _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
  v33 = sub_24F922348();
  v34 = *(v33 - 8);
  (*(v34 + 56))(v14, 0, 1, v33);
  sub_24E60169C(v14, v11, &qword_27F214148);
  v35 = (*(v34 + 48))(v11, 1, v33);
  if (v35 == 1)
  {
    sub_24E601704(v14, &qword_27F214148);
    sub_24E601704(v11, &qword_27F214148);
    v36 = 0;
  }

  else
  {
    sub_24F9222E8();
    v36 = v37;
    sub_24E601704(v14, &qword_27F214148);
    (*(v34 + 8))(v11, v33);
  }

  sub_24E9D0D28(v18, v20);
  v38 = &v20[*(v102 + 36)];
  *v38 = v36;
  v38[8] = v35 == 1;
  v38[9] = 1;
  v39 = v103;
  v40 = &v103[*(v21 + 36)];
  v41 = sub_24F924258();
  v42 = *MEMORY[0x277CE0118];
  v43 = v108;
  v44 = &v40[*(v41 + 20)];
  v45 = v110;
  v101 = *(v108 + 104);
  v101(v44, v42, v110);
  __asm { FMOV            V0.2D, #22.0 }

  v102 = _Q0;
  *v40 = _Q0;
  *&v40[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2164C8) + 36)] = 256;
  v51 = v20;
  v52 = v39;
  sub_24EF7AAD4(v51, v39);
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v53 = sub_24F9248C8();
  __swift_project_value_buffer(v53, qword_27F39F078);
  sub_24EF7AB44();
  v54 = v117;
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  sub_24E601704(v52, &qword_27F234FD8);
  v55 = v106;
  v101(v106, v42, v45);
  *(&v143 + 1) = v41;
  *&v144 = sub_24EF7ACB8(&qword_27F212868, MEMORY[0x277CDFC08]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v142);
  (*(v43 + 16))(boxed_opaque_existential_1 + *(v41 + 20), v55, v45);
  *boxed_opaque_existential_1 = v102;
  (*(v43 + 8))(v55, v45);
  v57 = v104;
  sub_24E60169C(&v142, v104, &qword_27F235000);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235008);
  v59 = v107;
  v60 = v109;
  (*(v107 + 16))(v57 + v58[9], v54, v109);
  v61 = v57 + v58[10];
  *v61 = sub_24F923398() & 1;
  *(v61 + 8) = v62;
  *(v61 + 16) = v63 & 1;
  v64 = v57 + v58[11];
  *v64 = swift_getKeyPath();
  *(v64 + 8) = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v65 = qword_27F24E488;
  v66 = sub_24F923398();
  v68 = v67;
  v70 = v69;
  v71 = v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235010) + 36);
  *v71 = v65;
  *(v71 + 8) = v66 & 1;
  *(v71 + 16) = v68;
  *(v71 + 24) = v70 & 1;
  LOBYTE(v65) = sub_24F923398();
  v73 = v72;
  LOBYTE(v68) = v74;
  sub_24E601704(&v142, &qword_27F235000);
  (*(v59 + 8))(v117, v60);
  v75 = v57 + *(v105 + 36);
  *v75 = v65 & 1;
  *(v75 + 8) = v73;
  *(v75 + 16) = v68 & 1;
  sub_24EF7AD08(v57, v118);
  v76 = v111;
  v77 = v112;
  sub_24E60169C(*(v112 + 16) + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_caption, v111, &qword_27F215340);
  v79 = v113;
  v78 = v114;
  if ((*(v113 + 48))(v76, 1, v114) == 1)
  {
    sub_24E601704(v76, &qword_27F215340);
    sub_24EF7AD78(&v142);
  }

  else
  {
    v80 = v76;
    v81 = v100;
    (*(v79 + 32))(v100, v80, v78);
    v82 = sub_24F924988();
    v120 = 1;
    sub_24EF7A510(v77, v81, &v142);
    v127 = v148;
    v128[0] = v149[0];
    *(v128 + 9) = *(v149 + 9);
    v123 = v144;
    v124 = v145;
    v125 = v146;
    v126 = v147;
    v121 = v142;
    v122 = v143;
    v136 = v147;
    v137 = v148;
    v138[0] = v149[0];
    *(v138 + 9) = *(v149 + 9);
    v133 = v144;
    v134 = v145;
    v135 = v146;
    v131 = v142;
    v132 = v143;
    sub_24E60169C(&v121, &v140, &qword_27F235028);
    sub_24E601704(&v131, &qword_27F235028);
    *(&v119[6] + 7) = v127;
    *(&v119[5] + 7) = v126;
    *(&v119[2] + 7) = v123;
    *(&v119[1] + 7) = v122;
    *(&v119[7] + 7) = v128[0];
    v119[8] = *(v128 + 9);
    *(&v119[3] + 7) = v124;
    *(&v119[4] + 7) = v125;
    *(v119 + 7) = v121;
    *(&v141[5] + 1) = v119[5];
    *(&v141[6] + 1) = v119[6];
    *(&v141[7] + 1) = v119[7];
    *(&v141[8] + 1) = *(v128 + 9);
    *(&v141[1] + 1) = v119[1];
    *(&v141[2] + 1) = v119[2];
    *(&v141[3] + 1) = v119[3];
    *(&v141[4] + 1) = v119[4];
    v140 = v82;
    LOBYTE(v141[0]) = v120;
    *(v141 + 1) = v119[0];
    v85 = CGSizeMake(&v140, v83, v84);
    (*(v79 + 8))(v81, v78, v85);
    v149[1] = v141[7];
    v150 = v141[8];
    v151 = v141[9];
    v146 = v141[3];
    v147 = v141[4];
    v148 = v141[5];
    v149[0] = v141[6];
    v142 = v140;
    v143 = v141[0];
    v144 = v141[1];
    v145 = v141[2];
  }

  v86 = v118;
  v87 = v115;
  sub_24E60169C(v118, v115, &qword_27F234FE8);
  v128[1] = v149[1];
  v129 = v150;
  v130 = v151;
  v125 = v146;
  v126 = v147;
  v127 = v148;
  v128[0] = v149[0];
  v121 = v142;
  v122 = v143;
  v123 = v144;
  v124 = v145;
  v88 = v116;
  sub_24E60169C(v87, v116, &qword_27F234FE8);
  v89 = v88 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235018) + 48);
  v90 = v128[0];
  v138[1] = v128[1];
  v138[2] = v129;
  v91 = v124;
  v92 = v125;
  v135 = v125;
  v136 = v126;
  v93 = v126;
  v94 = v127;
  v137 = v127;
  v138[0] = v128[0];
  v131 = v121;
  v132 = v122;
  v96 = v121;
  v95 = v122;
  v97 = v123;
  v133 = v123;
  v134 = v124;
  v98 = v129;
  *(v89 + 128) = v128[1];
  *(v89 + 144) = v98;
  *(v89 + 64) = v92;
  *(v89 + 80) = v93;
  *(v89 + 96) = v94;
  *(v89 + 112) = v90;
  *v89 = v96;
  *(v89 + 16) = v95;
  v139 = v130;
  *(v89 + 160) = v130;
  *(v89 + 32) = v97;
  *(v89 + 48) = v91;
  sub_24E60169C(&v131, &v140, &qword_27F235020);
  sub_24E601704(v86, &qword_27F234FE8);
  v141[7] = v128[1];
  v141[8] = v129;
  LOBYTE(v141[9]) = v130;
  v141[3] = v125;
  v141[4] = v126;
  v141[5] = v127;
  v141[6] = v128[0];
  v140 = v121;
  v141[0] = v122;
  v141[1] = v123;
  v141[2] = v124;
  sub_24E601704(&v140, &qword_27F235020);
  return sub_24E601704(v87, &qword_27F234FE8);
}

uint64_t sub_24EF7A510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v67 = a3;
  v5 = sub_24F91F008();
  MEMORY[0x28223BE20](v5);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = *(v10 + 32);
  if (v11)
  {
    v83 = *(v10 + 24);
    v84 = v11;
    v61 = v6;
    v59 = v7;
    sub_24E600AEC();
    v62 = a2;

    v12 = sub_24F925E18();
    v14 = v13;
    v60 = v9;
    v16 = v15;
    sub_24F925888();
    v17 = sub_24F925C98();
    v19 = v18;
    v21 = v20;

    sub_24E600B40(v12, v14, v16 & 1);

    sub_24F925918();
    v22 = sub_24F925B78();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    sub_24E600B40(v17, v19, v21 & 1);

    sub_24F927618();
    sub_24F9238C8();
    v65 = v97;
    v66 = v95;
    v63 = v100;
    v64 = v99;
    LOBYTE(v83) = 1;
    LOBYTE(v77) = v96;
    v76 = v98;
    v71 = 1;
    v70 = v96;
    v69 = v98;
    v75 = v26 & 1;
    v68 = v26 & 1;
    sub_24E5FD138(v22, v24, v26 & 1);

    v73 = v24;
    v74 = v22;
    v29 = v22;
    a2 = v62;
    v30 = v24;
    v9 = v60;
    sub_24E600B40(v29, v30, v26 & 1);
    v72 = v28;

    v7 = v59;
    v6 = v61;
  }

  else
  {
    v73 = 0;
    v74 = 0;
    v71 = 0;
    v72 = 0;
    v65 = 0;
    v66 = 0;
    v69 = 0;
    v70 = 0;
    v63 = 0;
    v64 = 0;
    v68 = 0;
  }

  (*(v7 + 16))(v9, a2, v6);
  v31 = sub_24F925DF8();
  v33 = v32;
  v35 = v34;
  sub_24F925A18();
  v36 = sub_24F925C98();
  v38 = v37;
  v40 = v39;

  sub_24E600B40(v31, v33, v35 & 1);

  LODWORD(v83) = sub_24F9251C8();
  v41 = sub_24F925C58();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  sub_24E600B40(v36, v38, v40 & 1);

  *&v77 = v74;
  *(&v77 + 1) = v73;
  *&v78 = v68;
  *(&v78 + 1) = v72;
  *&v79 = 0;
  *(&v79 + 1) = v71;
  v48 = v65;
  v49 = v66;
  *&v80 = v66;
  *(&v80 + 1) = v70;
  *&v81 = v65;
  *(&v81 + 1) = v69;
  v51 = v63;
  v50 = v64;
  *&v82 = v64;
  *(&v82 + 1) = v63;
  v76 = v45 & 1;
  v75 = 0;
  v52 = v78;
  v53 = v67;
  *v67 = v77;
  v53[1] = v52;
  v54 = v79;
  v55 = v80;
  v56 = v82;
  v53[4] = v81;
  v53[5] = v56;
  v53[2] = v54;
  v53[3] = v55;
  *(v53 + 12) = v41;
  *(v53 + 13) = v43;
  *(v53 + 112) = v45 & 1;
  *(v53 + 15) = v47;
  *(v53 + 16) = 0;
  *(v53 + 136) = 0;
  sub_24E60169C(&v77, &v83, &qword_27F235030);
  sub_24E5FD138(v41, v43, v45 & 1);

  sub_24E600B40(v41, v43, v45 & 1);

  v83 = v74;
  v84 = v73;
  v85 = v68;
  v86 = v72;
  v87 = 0;
  v88 = v71;
  v89 = v49;
  v90 = v70;
  v91 = v48;
  v92 = v69;
  v93 = v50;
  v94 = v51;
  return sub_24E601704(&v83, &qword_27F235030);
}

uint64_t sub_24EF7A98C()
{
  sub_24E66D74C();

  return sub_24F9218E8();
}

unint64_t sub_24EF7A9D4()
{
  result = qword_27F234FA0;
  if (!qword_27F234FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234FA0);
  }

  return result;
}

uint64_t sub_24EF7AAD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234FD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24EF7AB44()
{
  result = qword_27F234FF0;
  if (!qword_27F234FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234FD8);
    sub_24EF7ABFC();
    sub_24E602068(&qword_27F216528, &qword_27F2164C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234FF0);
  }

  return result;
}

unint64_t sub_24EF7ABFC()
{
  result = qword_27F234FF8;
  if (!qword_27F234FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234FD0);
    sub_24EF7ACB8(&qword_27F226530, type metadata accessor for SwiftUIArtworkView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234FF8);
  }

  return result;
}

uint64_t sub_24EF7ACB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EF7AD08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234FE8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_24EF7AD78(uint64_t a1)
{
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t sub_24EF7AD9C()
{
  result = qword_27F235038;
  if (!qword_27F235038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235040);
    sub_24E602068(&qword_27F234FC0, &qword_27F234FB8);
    sub_24E7EBBCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235038);
  }

  return result;
}

uint64_t sub_24EF7AE54()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235068);
  __swift_allocate_value_buffer(v0, qword_27F39D0C8);
  __swift_project_value_buffer(v0, qword_27F39D0C8);
  return sub_24F928588();
}

uint64_t sub_24EF7AECC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235050);
  __swift_allocate_value_buffer(v0, qword_27F39D0E0);
  __swift_project_value_buffer(v0, qword_27F39D0E0);
  return sub_24F928588();
}

uint64_t sub_24EF7AF44()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235048);
  __swift_allocate_value_buffer(v0, qword_27F39D0F8);
  __swift_project_value_buffer(v0, qword_27F39D0F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FB80);
  return sub_24F928588();
}

uint64_t sub_24EF7AFD0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235058);
  __swift_allocate_value_buffer(v0, qword_27F39D110);
  __swift_project_value_buffer(v0, qword_27F39D110);
  type metadata accessor for DeviceType(0);
  return sub_24F928588();
}

uint64_t sub_24EF7B050()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235060);
  __swift_allocate_value_buffer(v0, qword_27F39D128);
  __swift_project_value_buffer(v0, qword_27F39D128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225160);
  return sub_24F928588();
}

uint64_t DeepLinkWithReferrerIntentImplementation.perform(_:objectGraph:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v3[11] = type metadata accessor for ActionIntent();
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EF7B19C, 0, 0);
}

uint64_t sub_24EF7B19C()
{
  v33 = v0;
  if (qword_27F210278 != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v26 = v0[10];
  v4 = type metadata accessor for DeepLinkWithReferrerIntent();
  v5 = v3 + *(v4 + 24);
  v6 = *(v5 + 24);
  v7 = *(v5 + 32);
  v8 = *(v5 + 40);
  v28 = *v5;
  v29 = *(v5 + 8);
  v30 = v6;
  v31 = v7;
  v32 = v8;

  sub_24E90BCC4(v7, v8);
  sub_24EB6C854(&v28);
  v9 = v31;
  v10 = v32;

  sub_24E7B6564(v9, v10);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235070);
  v0[13] = sub_24F92A9E8();
  type metadata accessor for JSIntentDispatcher();
  sub_24F928FD8();
  sub_24F92A758();
  v0[14] = v0[7];
  v11 = v2[5];
  v12 = sub_24F91F4A8();
  (*(*(v12 - 8) + 16))(v1 + v11, v3, v12);
  v13 = *(v3 + *(v4 + 20));
  v14 = *v5;
  v15 = *(v5 + 24);
  v16 = *(v5 + 32);
  v17 = *(v5 + 8);
  LOBYTE(v4) = *(v5 + 40);
  strcpy(v1, "ActionIntent");
  *(v1 + 13) = 0;
  *(v1 + 14) = -5120;
  *(v1 + v2[6]) = v13;
  v18 = v1 + v2[7];
  *v18 = v14;
  *(v18 + 8) = v17;
  *(v18 + 24) = v15;
  *(v18 + 32) = v16;
  *(v18 + 40) = v4;

  sub_24E90BCC4(v16, v4);
  v0[15] = sub_24EB47578(v1, v26, "GameStoreKit/DeepLinkWithReferrerIntentImplementation.swift", 59, 2);
  v19 = sub_24E74EC40();
  swift_retain_n();
  v20 = sub_24F92BEF8();
  v21 = MEMORY[0x277D225C0];
  v0[5] = v19;
  v0[6] = v21;
  v0[2] = v20;
  sub_24F92A958();

  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v22 = sub_24EF7B89C();
  v23 = swift_task_alloc();
  v0[16] = v23;
  *v23 = v0;
  v23[1] = sub_24EF7B4E0;
  v24 = v0[8];

  return MEMORY[0x282180360](v24, v27, v22);
}

uint64_t sub_24EF7B4E0()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_24EF7B684;
  }

  else
  {
    v2 = sub_24EF7B5F4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EF7B5F4()
{
  v1 = *(v0 + 96);

  sub_24EC67894(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24EF7B684()
{
  v1 = *(v0 + 96);

  sub_24EC67894(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24EF7B714(uint64_t *a1)
{
  v1 = *a1;
  v3[3] = type metadata accessor for Action();
  v3[4] = sub_24EF7B958(&qword_27F216DE8, type metadata accessor for Action);
  v3[0] = v1;

  sub_24F92A6C8();
  sub_24EF7B9A0(v4, v3);
  sub_24F92A9C8();
  sub_24EF7B9FC(v3);
  return sub_24EF7BA64(v4);
}

uint64_t sub_24EF7B7E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24E614970;

  return DeepLinkWithReferrerIntentImplementation.perform(_:objectGraph:)(a1, a2, a3);
}

unint64_t sub_24EF7B89C()
{
  result = qword_27F235078;
  if (!qword_27F235078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235078);
  }

  return result;
}

uint64_t sub_24EF7B958(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EF7B9FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235080);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EF7BADC(uint64_t a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24EF7BC2C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for FriendRequestOverlayHeader()
{
  result = qword_27F235088;
  if (!qword_27F235088)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EF7BDB4()
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
        sub_24E61C938();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24EF7BEA0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235110);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EF7D968();
  sub_24F92D128();
  v8[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
  sub_24E602068(&qword_27F214040, &qword_27F213F18);
  sub_24F92CD48();
  if (!v1)
  {
    v8[14] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050);
    sub_24F92CD48();
    type metadata accessor for FriendRequestOverlayHeader();
    v8[13] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
    sub_24E65CD0C();
    sub_24F92CD48();
    v8[12] = 3;
    sub_24F929608();
    sub_24EF7DA84(&qword_27F214058, MEMORY[0x277D21F70]);
    sub_24F92CCF8();
    v8[11] = 4;
    sub_24F92CD08();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24EF7C1B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v3 - 8);
  v32 = &v31 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v33);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235100);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  v10 = type metadata accessor for FriendRequestOverlayHeader();
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v12 + 40) = 0u;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  *(v12 + 56) = 0u;
  *(v12 + 9) = 0;
  v37 = v12 + 40;
  sub_24E61DA68(&v41, (v12 + 40), qword_27F21B590);
  v13 = v10[6];
  v14 = sub_24F92A6D8();
  v15 = *(*(v14 - 8) + 56);
  v40 = v13;
  v15(&v12[v13], 1, 1, v14);
  v16 = v10[7];
  v17 = sub_24F929608();
  v18 = *(*(v17 - 8) + 56);
  v39 = v16;
  v18(&v12[v16], 1, 1, v17);
  v19 = a1[3];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_24EF7D968();
  v20 = v36;
  sub_24F92D108();
  if (v20)
  {
    v21 = v37;
    __swift_destroy_boxed_opaque_existential_1(v38);
    sub_24E601704(v21, qword_27F24EC90);
    sub_24E601704(&v12[v40], &qword_27F215440);
    return sub_24E601704(&v12[v39], &qword_27F213E68);
  }

  else
  {
    v36 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v44 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    sub_24F92CC68();
    v22 = v42;
    *v12 = v41;
    *(v12 + 1) = v22;
    *(v12 + 4) = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v44 = 1;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40);
    sub_24F92CC68();
    v23 = v34;
    sub_24E61DA68(&v41, v37, qword_27F24EC90);
    LOBYTE(v41) = 2;
    sub_24E65CAA0();
    v24 = v35;
    sub_24F92CC68();
    sub_24E61DA68(v6, &v12[v40], &qword_27F215440);
    LOBYTE(v41) = 3;
    sub_24EF7DA84(&qword_27F213F48, MEMORY[0x277D21F70]);
    v25 = v32;
    sub_24F92CC18();
    sub_24E61DA68(v25, &v12[v39], &qword_27F213E68);
    LOBYTE(v41) = 4;
    v26 = sub_24F92CC28();
    v28 = v27;
    (*(v23 + 8))(v9, v24);
    v29 = &v12[v10[8]];
    *v29 = v26;
    v29[1] = v28;
    sub_24EF7D9BC(v12, v31, type metadata accessor for FriendRequestOverlayHeader);
    __swift_destroy_boxed_opaque_existential_1(v38);
    return sub_24EF7DA24(v12, type metadata accessor for FriendRequestOverlayHeader);
  }
}

uint64_t sub_24EF7C7F0()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x4D747865746E6F63;
  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0x656C746974;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6575676573;
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

uint64_t sub_24EF7C884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24EF7DCCC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24EF7C8AC(uint64_t a1)
{
  v2 = sub_24EF7D968();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EF7C8E8(uint64_t a1)
{
  v2 = sub_24EF7D968();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EF7C924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 24), &v9 - v6, &qword_27F215440);
  return sub_24E68039C(v7, a2);
}

unint64_t sub_24EF7CA54()
{
  result = qword_27F235098;
  if (!qword_27F235098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235098);
  }

  return result;
}

uint64_t sub_24EF7CAA8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v60 = a2;
  v59 = sub_24F9248C8();
  v58 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v57 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2350B8);
  MEMORY[0x28223BE20](v55);
  v56 = &v52 - v4;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2350C0);
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v54 = &v52 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2350C8);
  MEMORY[0x28223BE20](v6 - 8);
  v64 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v63 = &v52 - v9;
  v10 = (a1 + *(type metadata accessor for FriendRequestOverlayHeader() + 32));
  v11 = v10[1];
  *&v72 = *v10;
  *(&v72 + 1) = v11;
  sub_24E600AEC();

  v12 = sub_24F925E18();
  v14 = v13;
  v16 = v15;
  sub_24F925898();
  v17 = sub_24F925C98();
  v19 = v18;
  v21 = v20;

  sub_24E600B40(v12, v14, v16 & 1);

  sub_24F925938();
  v22 = sub_24F925B78();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_24E600B40(v17, v19, v21 & 1);

  sub_24E60169C(a1 + 40, v74, qword_27F24EC90);
  if (v75)
  {
    sub_24E601704(v74, qword_27F21B590);
    v29 = sub_24F9249A8();
    sub_24EF7D210(&v72);
    v31 = *(&v72 + 1);
    v30 = v72;
    v53 = v26;
    v32 = v73[0];
    v52 = *(v73 + 8);
    v71 = 1;
    v70 = v73[0];
    v33 = sub_24F925898();
    KeyPath = swift_getKeyPath();
    v65 = v29;
    LOBYTE(v66) = 1;
    *(&v66 + 1) = v30;
    *&v67 = v31;
    BYTE8(v67) = v32;
    v68 = v52;
    *&v69 = KeyPath;
    *(&v69 + 1) = v33;
    sub_24F925938();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2350D8);
    sub_24EF7D6D0();
    v35 = v56;
    sub_24F9260C8();
    v73[1] = v67;
    v73[2] = v68;
    v73[3] = v69;
    v72 = v65;
    v73[0] = v66;
    sub_24E601704(&v72, &qword_27F2350D8);
    v36 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2350E8) + 36));
    v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2365A0) + 28);
    sub_24F924CF8();
    v38 = sub_24F924D08();
    (*(*(v38 - 8) + 56))(v36 + v37, 0, 1, v38);
    *v36 = swift_getKeyPath();
    LODWORD(v36) = sub_24F9251C8();
    v39 = (v35 + *(v55 + 36));
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10) + 36);
    v41 = *MEMORY[0x277CE13B8];
    v42 = sub_24F927748();
    (*(*(v42 - 8) + 104))(&v39[v40], v41, v42);
    *v39 = v36;
    v43 = v57;
    sub_24F9248B8();
    sub_24EF7D7BC();
    v44 = v54;
    LOBYTE(v26) = v53;
    _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
    (*(v58 + 8))(v43, v59);
    sub_24E601704(v35, &qword_27F2350B8);
    v45 = v61;
    v46 = v63;
    v47 = v62;
    (*(v61 + 32))(v63, v44, v62);
    (*(v45 + 56))(v46, 0, 1, v47);
  }

  else
  {
    sub_24E601704(v74, qword_27F21B590);
    v46 = v63;
    (*(v61 + 56))(v63, 1, 1, v62);
  }

  v48 = v64;
  sub_24EF7D658(v46, v64);
  v49 = v60;
  *v60 = v22;
  v49[1] = v24;
  *(v49 + 16) = v26 & 1;
  v49[3] = v28;
  v49[4] = 0;
  *(v49 + 40) = 1;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2350D0);
  sub_24EF7D658(v48, v49 + *(v50 + 64));
  sub_24E5FD138(v22, v24, v26 & 1);

  sub_24E601704(v46, &qword_27F2350C8);
  sub_24E601704(v48, &qword_27F2350C8);
  sub_24E600B40(v22, v24, v26 & 1);
}

uint64_t sub_24EF7D210@<X0>(uint64_t a1@<X8>)
{
  v2._countAndFlagsBits = 0x535F4E4F49544341;
  v2._object = 0xEE004C4C415F4545;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  localizedString(_:comment:)(v2, v3);
  sub_24E600AEC();
  v4 = sub_24F925E18();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_24F926DF8();
  *a1 = v4;
  *(a1 + 8) = v6;
  v8 &= 1u;
  *(a1 + 16) = v8;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  sub_24E5FD138(v4, v6, v8);

  sub_24E600B40(v4, v6, v8);
}

uint64_t sub_24EF7D304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_24F9249A8();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2350B0);
  return sub_24EF7CAA8(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_24EF7D35C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24F924248();
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v8 = sub_24F924258();
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  v9 = *(v8 + 20);
  v10 = *MEMORY[0x277CE0118];
  v11 = sub_24F924B38();
  (*(*(v11 - 8) + 104))(&v7[v9], v10, v11);
  __asm { FMOV            V0.2D, #24.0 }

  *v7 = _Q0;
  *&v7[*(v2 + 20)] = 0xC014000000000000;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v17 = sub_24F926D08();

  v18 = MEMORY[0x277CDFBC8];
  sub_24EF7D9BC(v7, v4, MEMORY[0x277CDFBC8]);
  sub_24EF7DA84(&qword_27F214338, MEMORY[0x277CDFBC8]);
  v19 = sub_24F927348();
  result = sub_24EF7DA24(v7, v18);
  *(a1 + 40) = v19;
  *(a1 + 48) = v17;
  return result;
}

uint64_t sub_24EF7D510()
{
  sub_24EF7CA54();

  return sub_24F9218E8();
}

unint64_t sub_24EF7D5A0()
{
  result = qword_27F2350A8;
  if (!qword_27F2350A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2350A8);
  }

  return result;
}

uint64_t sub_24EF7D658(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2350C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24EF7D6D0()
{
  result = qword_27F2350E0;
  if (!qword_27F2350E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2350D8);
    sub_24E602068(&qword_27F2282A0, &qword_27F2282A8);
    sub_24E602068(&unk_27F212AB0, &qword_27F236350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2350E0);
  }

  return result;
}

unint64_t sub_24EF7D7BC()
{
  result = qword_27F2350F0;
  if (!qword_27F2350F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2350B8);
    sub_24EF7D874();
    sub_24E602068(&qword_27F213F88, &qword_27F213F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2350F0);
  }

  return result;
}

unint64_t sub_24EF7D874()
{
  result = qword_27F2350F8;
  if (!qword_27F2350F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2350E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2350D8);
    sub_24EF7D6D0();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F21A958, &qword_27F2365A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2350F8);
  }

  return result;
}

unint64_t sub_24EF7D968()
{
  result = qword_27F235108;
  if (!qword_27F235108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235108);
  }

  return result;
}

uint64_t sub_24EF7D9BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EF7DA24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24EF7DA84(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24EF7DAE0()
{
  result = qword_27F235118;
  if (!qword_27F235118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235120);
    sub_24E602068(&qword_27F235128, &qword_27F235130);
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235118);
  }

  return result;
}

unint64_t sub_24EF7DBC8()
{
  result = qword_27F235138;
  if (!qword_27F235138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235138);
  }

  return result;
}

unint64_t sub_24EF7DC20()
{
  result = qword_27F235140;
  if (!qword_27F235140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235140);
  }

  return result;
}

unint64_t sub_24EF7DC78()
{
  result = qword_27F235148;
  if (!qword_27F235148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235148);
  }

  return result;
}

uint64_t sub_24EF7DCCC(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

void sub_24EF7DEC8()
{
  if (!qword_27F21B190)
  {
    v0 = sub_24F923578();
    if (!v1)
    {
      atomic_store(v0, &qword_27F21B190);
    }
  }
}

void sub_24EF7DF18(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F923578();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24EF7DF88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F927618();
  v6 = v5;
  KeyPath = swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235160);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  v9 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235168) + 36);
  *v9 = KeyPath;
  *(v9 + 8) = 0;
  *(v9 + 16) = v4;
  *(v9 + 24) = v6;
  sub_24EF7E220(v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B9C0);
  sub_24F926F28();
  v10 = v26[0];
  *(&v26[3] + 6) = v24[3];
  *(&v26[4] + 6) = v24[4];
  *(&v26[5] + 6) = v25[0];
  *(&v26[5] + 15) = *(v25 + 9);
  *(v26 + 6) = v24[0];
  *(&v26[1] + 6) = v24[1];
  *(&v26[2] + 6) = v24[2];
  v11 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235170) + 36);
  v12 = v26[4];
  *(v11 + 50) = v26[3];
  *(v11 + 66) = v12;
  *(v11 + 82) = v26[5];
  *(v11 + 97) = *(&v26[5] + 15);
  *(v11 + 2) = v26[0];
  v13 = v26[2];
  *(v11 + 18) = v26[1];
  *v11 = 1;
  *(v11 + 34) = v13;
  *(v11 + 120) = v10;
  v14 = sub_24F927618();
  v16 = v15;
  v17 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235178) + 36));
  v18 = v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235180) + 36);
  *v18 = swift_getKeyPath();
  v18[8] = 0;
  v19 = type metadata accessor for FadeOutMask(0);
  v20 = *(v19 + 20);
  *&v18[v20] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  swift_storeEnumTagMultiPayload();
  v21 = &v18[*(v19 + 24)];
  type metadata accessor for HeroSafeAreaMetrics();
  sub_24EF80DCC(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics);
  result = sub_24F923598();
  *v21 = result;
  v21[8] = v23 & 1;
  *v17 = v14;
  v17[1] = v16;
  return result;
}

__n128 sub_24EF7E220@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_24F923F78();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_24F924848();
  v7 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  if (*(v1 + 8) == 1)
  {
    v32 = *v1;
  }

  else
  {

    sub_24F92BDC8();
    v11 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v10, 0);
    (*(v7 + 8))(v9, v28);
    LOBYTE(v10) = v32;
  }

  if (v10 > 1u)
  {
    if (v10 == 2)
    {
      v14 = v1 + *(type metadata accessor for HeroMediaBlurModifier(0) + 24);
      v15 = *v14;
      if (*(v14 + 8) == 1)
      {
        v31 = *v14;
      }

      else
      {

        sub_24F92BDC8();
        v22 = sub_24F9257A8();
        v27 = v3;
        v23 = v22;
        sub_24F921FD8();

        v3 = v27;
        sub_24F924838();
        swift_getAtKeyPath();

        (*(v7 + 8))(v9, v28);
        v15 = v31;
      }

      sub_24F7699B0(v6);
      sub_24EF80134(v15, v6, v29);
      goto LABEL_19;
    }

LABEL_11:
    v16 = v1 + *(type metadata accessor for HeroMediaBlurModifier(0) + 24);
    v17 = *v16;
    if (*(v16 + 8) == 1)
    {
      v31 = *v16;
    }

    else
    {

      sub_24F92BDC8();
      v18 = sub_24F9257A8();
      v27 = v4;
      v19 = v3;
      v20 = v18;
      sub_24F921FD8();

      v3 = v19;
      v4 = v27;
      sub_24F924838();
      swift_getAtKeyPath();

      (*(v7 + 8))(v9, v28);
      v17 = v31;
    }

    sub_24F7699B0(v6);
    sub_24EF804B8(v17, v6, v29);
LABEL_19:

    (*(v4 + 8))(v6, v3);
    goto LABEL_20;
  }

  if (v10)
  {
    goto LABEL_11;
  }

  v12 = v1 + *(type metadata accessor for HeroMediaBlurModifier(0) + 24);
  v13 = *v12;
  if (*(v12 + 8) == 1)
  {
    v31 = *v12;
  }

  else
  {

    sub_24F92BDC8();
    v21 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v28);
    v13 = v31;
  }

  sub_24EF7FD44(v13, v29);

LABEL_20:
  v24 = v30[0];
  *(a1 + 64) = v29[4];
  *(a1 + 80) = v24;
  *(a1 + 89) = *(v30 + 9);
  v25 = v29[1];
  *a1 = v29[0];
  *(a1 + 16) = v25;
  result = v29[3];
  *(a1 + 32) = v29[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_24EF7E724(uint64_t a1, char a2)
{
  v4 = type metadata accessor for BottomLeadingRadialDarkeningGradient(0);
  MEMORY[0x28223BE20](v4);
  v37 = (&v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = type metadata accessor for LeadingRadialDarkeningGradient(0);
  MEMORY[0x28223BE20](v38);
  v34 = (&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2351E0);
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - v8;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2351E8);
  MEMORY[0x28223BE20](v35);
  v36 = &v33 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2351F0);
  MEMORY[0x28223BE20](v11);
  v39 = &v33 - v12;
  v13 = sub_24F924848();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {

    sub_24F92BDC8();
    v17 = sub_24F9257A8();
    v33 = v7;
    v18 = v4;
    v19 = v17;
    sub_24F921FD8();

    v4 = v18;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(a1, 0);
    (*(v14 + 8))(v16, v13);
    LOBYTE(a1) = v40;
  }

  if (a1 <= 1u)
  {
    if (!a1)
    {
      swift_storeEnumTagMultiPayload();
      sub_24EF80DCC(&qword_27F235200, type metadata accessor for LeadingRadialDarkeningGradient);
      v20 = v39;
      sub_24F924E28();
      sub_24EF80E7C(v20, v9);
      swift_storeEnumTagMultiPayload();
      sub_24EF80D10();
      sub_24EF80DCC(&qword_27F235208, type metadata accessor for BottomLeadingRadialDarkeningGradient);
      sub_24F924E28();
      return sub_24EF80EEC(v20);
    }

    goto LABEL_8;
  }

  if (a1 != 2)
  {
LABEL_8:
    type metadata accessor for HeroSafeAreaMetrics();
    sub_24EF80DCC(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics);
    v29 = sub_24F923598();
    v30 = v37;
    *v37 = v29;
    *(v30 + 8) = v31 & 1;
    v32 = *(v4 + 20);
    *(v30 + v32) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
    swift_storeEnumTagMultiPayload();
    v26 = type metadata accessor for BottomLeadingRadialDarkeningGradient;
    sub_24EF80E14(v30, v9, type metadata accessor for BottomLeadingRadialDarkeningGradient);
    swift_storeEnumTagMultiPayload();
    sub_24EF80D10();
    sub_24EF80DCC(&qword_27F235208, type metadata accessor for BottomLeadingRadialDarkeningGradient);
    sub_24F924E28();
    v28 = v30;
    return sub_24EF80F54(v28, v26);
  }

  type metadata accessor for HeroSafeAreaMetrics();
  sub_24EF80DCC(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics);
  v22 = sub_24F923598();
  v23 = v34;
  *v34 = v22;
  *(v23 + 8) = v24 & 1;
  v25 = *(v38 + 20);
  *(v23 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  swift_storeEnumTagMultiPayload();
  v26 = type metadata accessor for LeadingRadialDarkeningGradient;
  sub_24EF80E14(v23, v36, type metadata accessor for LeadingRadialDarkeningGradient);
  swift_storeEnumTagMultiPayload();
  sub_24EF80DCC(&qword_27F235200, type metadata accessor for LeadingRadialDarkeningGradient);
  v27 = v39;
  sub_24F924E28();
  sub_24EF80E7C(v27, v9);
  swift_storeEnumTagMultiPayload();
  sub_24EF80D10();
  sub_24EF80DCC(&qword_27F235208, type metadata accessor for BottomLeadingRadialDarkeningGradient);
  sub_24F924E28();
  sub_24EF80EEC(v27);
  v28 = v23;
  return sub_24EF80F54(v28, v26);
}

uint64_t sub_24EF7EE28@<X0>(uint64_t a1@<X8>)
{
  sub_24EF7E724(*v1, *(v1 + 8));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2351D8);
  *(a1 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_24EF7EE70@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F923F78();
  v48 = *(v3 - 8);
  v49 = v3;
  MEMORY[0x28223BE20](v3);
  v46 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v50 = &v46 - v6;
  v7 = sub_24F924848();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  v12 = *(v1 + 8);
  v47 = v1;
  if (v12 == 1)
  {
    v51 = v11;

    v13 = v11;
  }

  else
  {

    sub_24F92BDC8();
    v14 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    (*(v8 + 8))(v10, v7);
    v13 = v51;
  }

  swift_getKeyPath();
  *&v52 = v13;
  sub_24EF80DCC(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics);
  sub_24F91FD88();

  v15 = *(v13 + 120);
  v16 = *(v13 + 128);
  v17 = *(v13 + 136);

  v19 = 0uLL;
  v20 = 0.0;
  if ((v17 & 1) == 0)
  {

    if ((v12 & 1) == 0)
    {
      sub_24F92BDC8();
      v25 = sub_24F9257A8();
      sub_24F921FD8();

      sub_24F924838();
      swift_getAtKeyPath();

      (*(v8 + 8))(v10, v7);
      v11 = v52;
    }

    swift_getKeyPath();
    *&v52 = v11;
    sub_24F91FD88();

    v26 = *(v11 + 80);
    v27 = *(v11 + 88);
    v28 = *(v11 + 96);
    v29 = *(v11 + 104);
    v30 = *(v11 + 112);

    if (v30)
    {
      v21 = 0;
      v22 = 0;
      v23 = 0uLL;
      v24 = 0uLL;
      v19 = 0uLL;
      goto LABEL_21;
    }

    v31 = v16 - v27;
    type metadata accessor for BottomLeadingRadialDarkeningGradient(0);
    v32 = v50;
    sub_24F7699B0(v50);
    v34 = v48;
    v33 = v49;
    v35 = *(v48 + 88);
    v36 = v35(v32, v49);
    v37 = *MEMORY[0x277CDFA88];
    v38 = MEMORY[0x277CDFA90];
    if (v36 != *MEMORY[0x277CDFA88])
    {
      if (v36 == *MEMORY[0x277CDFA90])
      {
        v55.origin.x = v26;
        v55.origin.y = v27;
        v55.size.width = v28;
        v55.size.height = v29;
        MaxX = v15 - CGRectGetMinX(v55);
        goto LABEL_15;
      }

      (*(v34 + 8))(v50, v33);
    }

    v56.origin.x = v26;
    v56.origin.y = v27;
    v56.size.width = v28;
    v56.size.height = v29;
    MaxX = CGRectGetMaxX(v56);
LABEL_15:
    v57.origin.x = v26;
    v57.origin.y = v27;
    v57.size.width = v28;
    v57.size.height = v29;
    CGRectGetHeight(v57);
    v40 = v46;
    sub_24F7699B0(v46);
    v41 = v35(v40, v33);
    if (v41 != v37)
    {
      if (v41 == *v38)
      {
        sub_24F927858();
LABEL_20:
        v20 = MaxX / v31;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216560);
        v42 = swift_allocObject();
        *(v42 + 16) = xmmword_24F93A400;
        sub_24F926C88();
        *(v42 + 32) = sub_24F9273C8();
        *(v42 + 40) = v43;
        sub_24F926C98();
        *(v42 + 48) = sub_24F9273C8();
        *(v42 + 56) = v44;
        sub_24F9273D8();
        sub_24F923C78();
        result = sub_24F9278A8();
        v19 = v52;
        v23 = v53;
        v21 = v54;
        *(&v24 + 1) = v45;
        v22 = 0x3FF0000000000000;
        goto LABEL_21;
      }

      (*(v34 + 8))(v40, v33);
    }

    sub_24F927848();
    goto LABEL_20;
  }

  v21 = 0;
  v22 = 0;
  v23 = 0uLL;
  v24 = 0uLL;
LABEL_21:
  *a1 = v19;
  *(a1 + 16) = v23;
  *(a1 + 32) = v21;
  *(a1 + 40) = v20;
  *(a1 + 48) = v22;
  *(a1 + 56) = v24;
  return result;
}

uint64_t sub_24EF7F414@<X0>(void *a1@<X8>)
{
  v43 = a1;
  v2 = sub_24F923F78();
  v41 = *(v2 - 8);
  v42 = v2;
  MEMORY[0x28223BE20](v2);
  v40 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v39 = &v39 - v5;
  v6 = sub_24F924848();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  v11 = *(v1 + 8);

  v12 = v10;
  if ((v11 & 1) == 0)
  {
    sub_24F92BDC8();
    v13 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
    v12 = v44;
  }

  swift_getKeyPath();
  v44 = v12;
  sub_24EF80DCC(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics);
  sub_24F91FD88();

  v14 = *(v12 + 136);

  v16 = 0uLL;
  if ((v14 & 1) == 0)
  {

    if ((v11 & 1) == 0)
    {
      sub_24F92BDC8();
      v19 = sub_24F9257A8();
      sub_24F921FD8();

      sub_24F924838();
      swift_getAtKeyPath();

      (*(v7 + 8))(v9, v6);
      v10 = v44;
    }

    swift_getKeyPath();
    v44 = v10;
    sub_24F91FD88();

    v21 = *(v10 + 80);
    v20 = *(v10 + 88);
    v23 = *(v10 + 96);
    v22 = *(v10 + 104);
    v24 = *(v10 + 112);

    if (v24)
    {
      v17 = 0;
      v18 = 0uLL;
      v16 = 0uLL;
      goto LABEL_18;
    }

    type metadata accessor for LeadingRadialDarkeningGradient(0);
    v25 = v39;
    sub_24F7699B0(v39);
    v27 = v41;
    v26 = v42;
    v28 = *(v41 + 88);
    v29 = v28(v25, v42);
    v30 = *MEMORY[0x277CDFA88];
    v31 = MEMORY[0x277CDFA90];
    if (v29 != *MEMORY[0x277CDFA88] && v29 != *MEMORY[0x277CDFA90])
    {
      (*(v27 + 8))(v25, v26);
    }

    v32 = v40;
    sub_24F7699B0(v40);
    v33 = v28(v32, v26);
    if (v33 != v30)
    {
      if (v33 == *v31)
      {
        v47.origin.x = v21;
        v47.origin.y = v20;
        v47.size.width = v23;
        v47.size.height = v22;
        CGRectGetMinX(v47);
LABEL_17:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216560);
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_24F9479A0;
        sub_24F926C88();
        *(v34 + 32) = sub_24F9273C8();
        *(v34 + 40) = v35;
        sub_24F926C88();
        *(v34 + 48) = sub_24F9273C8();
        *(v34 + 56) = v36;
        sub_24F926C98();
        *(v34 + 64) = sub_24F9273C8();
        *(v34 + 72) = v37;
        sub_24F9273D8();
        result = sub_24F923C78();
        v17 = v44;
        v16 = v45;
        v18 = v46;
        goto LABEL_18;
      }

      (*(v27 + 8))(v32, v26);
    }

    v48.origin.x = v21;
    v48.origin.y = v20;
    v48.size.width = v23;
    v48.size.height = v22;
    CGRectGetMaxX(v48);
    goto LABEL_17;
  }

  v17 = 0;
  v18 = 0uLL;
LABEL_18:
  v38 = v43;
  *v43 = v17;
  *(v38 + 1) = v16;
  *(v38 + 3) = v18;
  return result;
}

double sub_24EF7F960@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24F924848();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = (v1 + *(type metadata accessor for FadeOutMask(0) + 24));
  v9 = *v8;
  v10 = *(v8 + 8);

  if ((v10 & 1) == 0)
  {
    sub_24F92BDC8();
    v11 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v9 = v25;
  }

  swift_getKeyPath();
  *&v25 = v9;
  sub_24EF80DCC(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics);
  sub_24F91FD88();

  v12 = *(v9 + 136);

  if (v12)
  {
    memset(v23, 0, sizeof(v23));
    v24 = 1;
  }

  else
  {
    v13 = *v2;
    if (*(v2 + 8) != 1)
    {

      sub_24F92BDC8();
      v14 = sub_24F9257A8();
      sub_24F921FD8();

      sub_24F924838();
      swift_getAtKeyPath();
      sub_24E62A5EC(v13, 0);
      (*(v5 + 8))(v7, v4);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216560);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_24F9479A0;
    sub_24F926C88();
    *(v15 + 32) = sub_24F9273C8();
    *(v15 + 40) = v16;
    sub_24F926C88();
    *(v15 + 48) = sub_24F9273C8();
    *(v15 + 56) = v17;
    sub_24F926C98();
    *(v15 + 64) = sub_24F9273C8();
    *(v15 + 72) = v18;
    sub_24F927878();
    sub_24F927898();
    sub_24F9273D8();
    sub_24F923BD8();
    *v23 = v29;
    *&v23[8] = v30;
    *&v23[24] = v31;
    v24 = 0;
  }

  sub_24E86BC28();
  sub_24E760430();
  sub_24F924E28();
  result = *&v25;
  v20 = v26;
  v21 = v27;
  v22 = v28;
  *a1 = v25;
  *(a1 + 16) = v20;
  *(a1 + 32) = v21;
  *(a1 + 40) = v22;
  return result;
}

uint64_t sub_24EF7FD44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  sub_24EF80DCC(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics);
  sub_24F91FD88();

  v5 = xmmword_24F950E90;
  v6 = 0uLL;
  if (*(a1 + 136))
  {
    v7 = 0;
    v8 = 0;
    v9 = 0uLL;
  }

  else
  {
    swift_getKeyPath();
    sub_24F91FD88();

    if (*(a1 + 112) & 1) == 0 && (v11 = *(a1 + 96), v10 = *(a1 + 104), v13 = *(a1 + 80), v12 = *(a1 + 88), v25.origin.x = v13, v25.origin.y = v12, v25.size.width = v11, v25.size.height = v10, CGRectGetHeight(v25), v26.origin.x = v13, v26.origin.y = v12, v26.size.width = v11, v26.size.height = v10, CGRectGetMinY(v26), v27.origin.x = v13, v27.origin.y = v12, v27.size.width = v11, v27.size.height = v10, CGRectGetMinY(v27), MEMORY[0x253048030](0, 0, 0x3FF0000000000000, 0), result = sub_24F9226B8(), (result) && (MEMORY[0x253048030](0, 0, 0x3FF0000000000000, 0), result = sub_24F9226B8(), (result))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216560);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_24F93A070;
      sub_24F926C88();
      sub_24F926D08();

      *(v8 + 32) = sub_24F9273C8();
      *(v8 + 40) = v14;
      sub_24F926C88();
      sub_24F926D08();

      *(v8 + 48) = sub_24F9273C8();
      *(v8 + 56) = v15;
      sub_24F926C88();
      sub_24F926D08();

      *(v8 + 64) = sub_24F9273C8();
      *(v8 + 72) = v16;
      sub_24F926C88();
      sub_24F926D08();

      *(v8 + 80) = sub_24F9273C8();
      *(v8 + 88) = v17;
      sub_24F926C88();
      sub_24F926D08();

      *(v8 + 96) = sub_24F9273C8();
      *(v8 + 104) = v18;
      sub_24F926C88();
      sub_24F926D08();

      *(v8 + 112) = sub_24F9273C8();
      *(v8 + 120) = v19;
      sub_24F927878();
      v23 = v20;
      v24 = v21;
      result = sub_24F927898();
      *&v6 = v23;
      *(&v6 + 1) = v24;
      *(&v9 + 1) = v22;
      v7 = 0x4000000000000000;
      v5 = xmmword_24F9A8940;
    }

    else
    {
      v7 = 0;
      v8 = 0;
      v9 = 0uLL;
      v6 = 0uLL;
      v5 = xmmword_24F950E90;
    }
  }

  *a2 = v5;
  *(a2 + 16) = 0;
  *(a2 + 24) = v7;
  *(a2 + 32) = 0;
  *(a2 + 40) = v8;
  *(a2 + 48) = v6;
  *(a2 + 64) = v9;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 80) = 0;
  *(a2 + 104) = 0;
  return result;
}

uint64_t sub_24EF80134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24F923F78();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v34 = a1;
  sub_24EF80DCC(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics);
  sub_24F91FD88();

  v11 = xmmword_24F950E90;
  v12 = 0uLL;
  v13 = 0.0;
  if ((*(a1 + 136) & 1) == 0)
  {
    v31 = xmmword_24F950E90;
    v20 = *(a1 + 120);
    swift_getKeyPath();
    v34 = a1;
    sub_24F91FD88();

    if (*(a1 + 112))
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v12 = 0uLL;
      v11 = v31;
      goto LABEL_11;
    }

    v22 = *(a1 + 96);
    v21 = *(a1 + 104);
    v24 = *(a1 + 80);
    v23 = *(a1 + 88);
    (*(v7 + 16))(v9, a2, v6);
    v25 = (*(v7 + 88))(v9, v6);
    if (v25 != *MEMORY[0x277CDFA88])
    {
      if (v25 == *MEMORY[0x277CDFA90])
      {
        v35.origin.x = v24;
        v35.origin.y = v23;
        v35.size.width = v22;
        v35.size.height = v21;
        MaxX = v20 - CGRectGetMinX(v35);
        v16 = 0x4000000000000000;
LABEL_10:
        v13 = v20 + MaxX;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216560);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_24F9479A0;
        sub_24F926C88();
        *(v15 + 32) = sub_24F9273C8();
        *(v15 + 40) = v27;
        sub_24F926C88();
        *(v15 + 48) = sub_24F9273C8();
        *(v15 + 56) = v28;
        sub_24F926C98();
        *(v15 + 64) = sub_24F9273C8();
        *(v15 + 72) = v29;
        result = sub_24F9278A8();
        v19 = 1;
        v32 = 1;
        LOBYTE(v34) = 0;
        v33 = 0;
        *(&v12 + 1) = v30;
        v18 = 0x3FF0000000000000;
        v17 = 0x3FE0000000000000;
        v14 = 0x4000000000000000;
        v11 = xmmword_24F9A8940;
        goto LABEL_11;
      }

      (*(v7 + 8))(v9, v6);
    }

    v36.origin.x = v24;
    v36.origin.y = v23;
    v36.size.width = v22;
    v36.size.height = v21;
    MaxX = CGRectGetMaxX(v36);
    v16 = 0xBFF0000000000000;
    goto LABEL_10;
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
LABEL_11:
  *a3 = v11;
  *(a3 + 16) = 0;
  *(a3 + 24) = v14;
  *(a3 + 32) = 0;
  *(a3 + 40) = v15;
  *(a3 + 48) = v16;
  *(a3 + 56) = v17;
  *(a3 + 64) = 0;
  *(a3 + 72) = v13;
  *(a3 + 80) = v18;
  *(a3 + 88) = v12;
  *(a3 + 104) = v19;
  return result;
}

uint64_t sub_24EF804B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v44 = a2;
  v5 = sub_24F923F78();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - v10;
  swift_getKeyPath();
  v47 = a1;
  sub_24EF80DCC(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics);
  sub_24F91FD88();

  v13 = xmmword_24F950E90;
  v14 = 0uLL;
  if ((*(a1 + 136) & 1) == 0)
  {
    v43 = xmmword_24F950E90;
    v20 = *(a1 + 120);
    v21 = *(a1 + 128);
    swift_getKeyPath();
    v47 = a1;
    sub_24F91FD88();

    if (*(a1 + 112))
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0uLL;
      v19 = 0uLL;
      v14 = 0uLL;
      v13 = v43;
      goto LABEL_16;
    }

    v23 = *(a1 + 96);
    v22 = *(a1 + 104);
    v25 = *(a1 + 80);
    v24 = *(a1 + 88);
    v26 = v21 - v24;
    v27 = *(v6 + 16);
    v27(v11, v44, v5);
    v28 = *(v6 + 88);
    v29 = v28(v11, v5);
    v30 = *MEMORY[0x277CDFA88];
    if (v29 != *MEMORY[0x277CDFA88])
    {
      if (v29 == *MEMORY[0x277CDFA90])
      {
        v48.origin.x = v25;
        v48.origin.y = v24;
        v48.size.width = v23;
        v48.size.height = v22;
        MaxX = v20 - CGRectGetMinX(v48);
        goto LABEL_10;
      }

      (*(v6 + 8))(v11, v5);
    }

    v49.origin.x = v25;
    v49.origin.y = v24;
    v49.size.width = v23;
    v49.size.height = v22;
    MaxX = CGRectGetMaxX(v49);
LABEL_10:
    v50.origin.x = v25;
    v50.origin.y = v24;
    v50.size.width = v23;
    v50.size.height = v22;
    *&v32 = v26 + CGRectGetHeight(v50) * 0.8;
    v43 = v32;
    *&v32 = MaxX / v26;
    v42 = v32;
    v27(v8, v44, v5);
    v33 = v28(v8, v5);
    if (v33 != v30)
    {
      if (v33 == *MEMORY[0x277CDFA90])
      {
        sub_24F927858();
LABEL_15:
        v44 = v34;
        v41 = v35;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216560);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_24F9479A0;
        sub_24F926C88();
        *(v16 + 32) = sub_24F9273C8();
        *(v16 + 40) = v36;
        sub_24F926C88();
        *(v16 + 48) = sub_24F9273C8();
        *(v16 + 56) = v37;
        sub_24F926C98();
        *(v16 + 64) = sub_24F9273C8();
        *(v16 + 72) = v38;
        result = sub_24F927848();
        v17 = 1;
        v45 = 1;
        LOBYTE(v47) = 0;
        v46 = 0;
        *&v39 = v44;
        *(&v39 + 1) = v41;
        *&v18 = v43;
        *(&v18 + 1) = v42;
        *(&v19 + 1) = v40;
        v15 = 0x4000000000000000;
        v13 = xmmword_24F9A8940;
        v14 = v39;
        goto LABEL_16;
      }

      (*(v6 + 8))(v8, v5);
    }

    sub_24F927848();
    goto LABEL_15;
  }

  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0uLL;
  v19 = 0uLL;
LABEL_16:
  *a3 = v13;
  *(a3 + 16) = 0;
  *(a3 + 24) = v15;
  *(a3 + 32) = 0;
  *(a3 + 40) = v16;
  *(a3 + 48) = v14;
  *(a3 + 64) = 0;
  *(a3 + 72) = v18;
  *(a3 + 88) = v19;
  *(a3 + 104) = v17;
  return result;
}

void sub_24EF80934()
{
  sub_24EF7DEC8();
  if (v0 <= 0x3F)
  {
    sub_24EF7DF18(319, &qword_27F2168D0, MEMORY[0x277CDFAA0]);
    if (v1 <= 0x3F)
    {
      sub_24EF7DF18(319, &qword_27F21EAF0, type metadata accessor for HeroSafeAreaMetrics);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_24EF80A1C()
{
  result = qword_27F235198;
  if (!qword_27F235198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235178);
    sub_24EF80AD4();
    sub_24E602068(&qword_27F2351D0, &qword_27F235180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235198);
  }

  return result;
}

unint64_t sub_24EF80AD4()
{
  result = qword_27F2351A0;
  if (!qword_27F2351A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235170);
    sub_24EF80B60();
    sub_24EF80C44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2351A0);
  }

  return result;
}

unint64_t sub_24EF80B60()
{
  result = qword_27F2351A8;
  if (!qword_27F2351A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235168);
    sub_24E602068(&qword_27F2351B0, &qword_27F235160);
    sub_24E602068(&qword_27F2351B8, &qword_27F2351C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2351A8);
  }

  return result;
}

unint64_t sub_24EF80C44()
{
  result = qword_27F2351C8;
  if (!qword_27F2351C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2351C8);
  }

  return result;
}

unint64_t sub_24EF80D10()
{
  result = qword_27F2351F8;
  if (!qword_27F2351F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2351F0);
    sub_24EF80DCC(&qword_27F235200, type metadata accessor for LeadingRadialDarkeningGradient);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2351F8);
  }

  return result;
}

uint64_t sub_24EF80DCC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EF80E14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EF80E7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2351F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EF80EEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2351F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EF80F54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t __swift_get_extra_inhabitant_indexTm_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24EF81168()
{
  sub_24EF7DF18(319, &qword_27F21EAF0, type metadata accessor for HeroSafeAreaMetrics);
  if (v0 <= 0x3F)
  {
    sub_24EF7DF18(319, &qword_27F2168D0, MEMORY[0x277CDFAA0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24EF81228()
{
  result = qword_27F235230;
  if (!qword_27F235230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235238);
    sub_24E86BC28();
    sub_24E760430();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235230);
  }

  return result;
}

unint64_t sub_24EF812B8()
{
  result = qword_27F235240;
  if (!qword_27F235240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2351D8);
    sub_24EF81344();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235240);
  }

  return result;
}

unint64_t sub_24EF81344()
{
  result = qword_27F235248;
  if (!qword_27F235248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235250);
    sub_24EF813C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235248);
  }

  return result;
}

unint64_t sub_24EF813C8()
{
  result = qword_27F235258;
  if (!qword_27F235258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235260);
    sub_24EF80D10();
    sub_24EF80DCC(&qword_27F235208, type metadata accessor for BottomLeadingRadialDarkeningGradient);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235258);
  }

  return result;
}

uint64_t sub_24EF81544(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t GameDashboardDestination.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v3 = v1;
  v5 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GameDashboardDestination(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24EF85EF8(v3, v10, type metadata accessor for GameDashboardDestination);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v62 = *v10;
      v63 = v10[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_24F93A400;
      *(v64 + 32) = 0x646E696B24;
      v65 = MEMORY[0x277D22580];
      *(v64 + 72) = MEMORY[0x277D837D0];
      *(v64 + 80) = v65;
      *(v64 + 40) = 0xE500000000000000;
      *(v64 + 48) = 0xD000000000000011;
      *(v64 + 56) = 0x800000024FA656A0;
      *(v64 + 88) = 0xD000000000000011;
      *(v64 + 96) = 0x800000024FA656A0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_24F93DE60;
      *(inited + 32) = 0xD000000000000015;
      v67 = inited + 32;
      *(inited + 40) = 0x800000024FA4E090;
      *(inited + 48) = v62;
      *(inited + 56) = v63;
      v68 = sub_24E6086DC(inited);
      swift_setDeallocating();
      sub_24E601704(v67, &qword_27F219F90);
      *(v64 + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20);
      *(v64 + 136) = sub_24EA14AE4(&qword_27F21BD70, &qword_27F227A20);
      *(v64 + 104) = v68;
      goto LABEL_14;
    case 2u:
      v91 = v2;
      v44 = *v10;
      v90 = v10[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_24F93A400;
      *(v45 + 32) = 0x646E696B24;
      v46 = MEMORY[0x277D22580];
      *(v45 + 72) = MEMORY[0x277D837D0];
      *(v45 + 80) = v46;
      *(v45 + 40) = 0xE500000000000000;
      *(v45 + 48) = 0x6F6272656461656CLL;
      *(v45 + 56) = 0xEB00000000647261;
      *(v45 + 88) = 0x6F6272656461656CLL;
      *(v45 + 96) = 0xEB00000000647261;
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_24F93DE60;
      strcpy((v47 + 32), "leaderboardId");
      *(v47 + 46) = -4864;
      *(v47 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
      *(v47 + 80) = sub_24EA14AE4(&qword_27F212F10, &unk_27F23B740);
      v48 = v90;
      *(v47 + 48) = v44;
      *(v47 + 56) = v48;
      v49 = sub_24E607E40(v47);
      swift_setDeallocating();
      sub_24E601704(v47 + 32, &qword_27F212FB0);
      swift_deallocClassInstance();
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
      *(v45 + 128) = v50;
      v51 = sub_24E6060B8();
      *(v45 + 136) = v51;
      *(v45 + 104) = v49;
      v52 = sub_24E607E40(v45);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
      swift_arrayDestroy();
      result = swift_deallocClassInstance();
      a1[3] = v50;
      a1[4] = v51;
      *a1 = v52;
      return result;
    case 3u:
      sub_24EF86440(v10, v7, type metadata accessor for Player);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
      v53 = swift_initStackObject();
      *(v53 + 16) = xmmword_24F93A400;
      *(v53 + 32) = 0x646E696B24;
      v54 = MEMORY[0x277D22580];
      *(v53 + 72) = MEMORY[0x277D837D0];
      *(v53 + 80) = v54;
      *(v53 + 40) = 0xE500000000000000;
      strcpy((v53 + 48), "playerProfile");
      *(v53 + 62) = -4864;
      strcpy((v53 + 88), "playerProfile");
      *(v53 + 102) = -4864;
      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_24F93DE60;
      *(v55 + 32) = 0x726579616C70;
      *(v55 + 40) = 0xE600000000000000;
      *(v55 + 72) = v5;
      *(v55 + 80) = sub_24EF86158(&qword_27F215388, type metadata accessor for Player);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v55 + 48));
      sub_24EF85EF8(v7, boxed_opaque_existential_1, type metadata accessor for Player);
      v57 = sub_24E607E40(v55);
      swift_setDeallocating();
      sub_24E601704(v55 + 32, &qword_27F212FB0);
      swift_deallocClassInstance();
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
      *(v53 + 128) = v58;
      v59 = sub_24E6060B8();
      *(v53 + 136) = v59;
      *(v53 + 104) = v57;
      v60 = sub_24E607E40(v53);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
      swift_arrayDestroy();
      a1[3] = v58;
      a1[4] = v59;
      *a1 = v60;
      return sub_24E71BF38(v7);
    case 4u:
      v26 = v10[1];
      v90 = *v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
      v27 = swift_initStackObject();
      *(v27 + 16) = xmmword_24F93A400;
      *(v27 + 32) = 0x646E696B24;
      v91 = v2;
      v28 = MEMORY[0x277D837D0];
      v29 = MEMORY[0x277D22580];
      *(v27 + 72) = MEMORY[0x277D837D0];
      *(v27 + 80) = v29;
      *(v27 + 40) = 0xE500000000000000;
      *(v27 + 48) = 0xD000000000000013;
      *(v27 + 56) = 0x800000024FA65680;
      *(v27 + 88) = 0xD000000000000013;
      *(v27 + 96) = 0x800000024FA65680;
      v30 = swift_initStackObject();
      *(v30 + 16) = xmmword_24F93DE60;
      *(v30 + 32) = 0x7974697669746361;
      v31 = v30 + 32;
      *(v30 + 72) = v28;
      *(v30 + 80) = v29;
      v32 = v90;
      *(v30 + 40) = 0xEA00000000006449;
      *(v30 + 48) = v32;
      *(v30 + 56) = v26;
      v33 = sub_24E607E40(v30);
      swift_setDeallocating();
      sub_24E601704(v31, &qword_27F212FB0);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
      *(v27 + 128) = v34;
      v35 = sub_24E6060B8();
      *(v27 + 136) = v35;
      *(v27 + 104) = v33;
      v36 = sub_24E607E40(v27);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
      result = swift_arrayDestroy();
      a1[3] = v34;
      a1[4] = v35;
      *a1 = v36;
      return result;
    case 5u:
      v91 = v2;
      v70 = *v10;
      v69 = v10[1];
      v71 = v10[3];
      v90 = v10[2];
      v88 = v69;
      v89 = v71;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
      v72 = swift_initStackObject();
      v87 = xmmword_24F93A400;
      *(v72 + 32) = 0x646E696B24;
      *(v72 + 16) = xmmword_24F93A400;
      v73 = MEMORY[0x277D837D0];
      v74 = MEMORY[0x277D22580];
      *(v72 + 72) = MEMORY[0x277D837D0];
      *(v72 + 80) = v74;
      *(v72 + 40) = 0xE500000000000000;
      *(v72 + 48) = 0xD000000000000010;
      *(v72 + 56) = 0x800000024FA65660;
      *(v72 + 88) = 0xD000000000000010;
      *(v72 + 96) = 0x800000024FA65660;
      v75 = swift_initStackObject();
      *(v75 + 16) = v87;
      *(v75 + 32) = 0x65636E6174736E69;
      *(v75 + 72) = v73;
      *(v75 + 80) = v74;
      *(v75 + 40) = 0xEA00000000004449;
      *(v75 + 48) = v70;
      *(v75 + 56) = v88;
      strcpy((v75 + 88), "definitionID");
      *(v75 + 101) = 0;
      *(v75 + 102) = -5120;
      *(v75 + 128) = v73;
      *(v75 + 136) = v74;
      v76 = v89;
      *(v75 + 104) = v90;
      *(v75 + 112) = v76;
      v77 = sub_24E607E40(v75);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
      swift_arrayDestroy();
      v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
      *(v72 + 128) = v78;
      v79 = sub_24E6060B8();
      *(v72 + 136) = v79;
      *(v72 + 104) = v77;
      v80 = sub_24E607E40(v72);
      swift_setDeallocating();
      result = swift_arrayDestroy();
      a1[3] = v78;
      a1[4] = v79;
      *a1 = v80;
      return result;
    case 6u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_24F93A400;
      *(v64 + 32) = 0x646E696B24;
      v81 = MEMORY[0x277D22580];
      *(v64 + 72) = MEMORY[0x277D837D0];
      *(v64 + 80) = v81;
      *(v64 + 40) = 0xE500000000000000;
      strcpy((v64 + 48), "challengesHub");
      *(v64 + 62) = -4864;
      strcpy((v64 + 88), "challengesHub");
      *(v64 + 102) = -4864;
      *(v64 + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20);
      *(v64 + 136) = sub_24EA14AE4(&qword_27F21BD70, &qword_27F227A20);
      *(v64 + 104) = MEMORY[0x277D84F98];
LABEL_14:
      v82 = sub_24E607D0C(v64);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v83 = sub_24E80FFAC(v82);

      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
      result = sub_24E6060B8();
      a1[4] = result;
      *a1 = v83;
      return result;
    case 7u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
      v39 = swift_allocObject();
      v40 = v39;
      *(v39 + 16) = xmmword_24F93A400;
      *(v39 + 32) = 0x646E696B24;
      v61 = MEMORY[0x277D22580];
      *(v39 + 72) = MEMORY[0x277D837D0];
      *(v39 + 80) = v61;
      v42 = 0x72616F6268736164;
      *(v39 + 40) = 0xE500000000000000;
      *(v39 + 48) = 0x72616F6268736164;
      v43 = 0xE900000000000064;
      goto LABEL_17;
    case 8u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
      v39 = swift_allocObject();
      v40 = v39;
      *(v39 + 16) = xmmword_24F93A400;
      *(v39 + 32) = 0x646E696B24;
      v85 = MEMORY[0x277D22580];
      *(v39 + 72) = MEMORY[0x277D837D0];
      *(v39 + 80) = v85;
      v42 = 0x6E49646E65697266;
      *(v39 + 40) = 0xE500000000000000;
      *(v39 + 48) = 0x6E49646E65697266;
      v43 = 0xED00007365746976;
      goto LABEL_17;
    case 9u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
      v39 = swift_allocObject();
      v40 = v39;
      *(v39 + 16) = xmmword_24F93A400;
      *(v39 + 32) = 0x646E696B24;
      v41 = MEMORY[0x277D22580];
      *(v39 + 72) = MEMORY[0x277D837D0];
      *(v39 + 80) = v41;
      v42 = 0x6552646E65697266;
      *(v39 + 40) = 0xE500000000000000;
      *(v39 + 48) = 0x6552646E65697266;
      v43 = 0xEE00737473657571;
LABEL_17:
      *(v39 + 56) = v43;
      *(v39 + 88) = v42;
      *(v39 + 96) = v43;
      goto LABEL_18;
    case 0xAu:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_24F93A400;
      *(v40 + 32) = 0x646E696B24;
      v84 = MEMORY[0x277D22580];
      *(v40 + 72) = MEMORY[0x277D837D0];
      *(v40 + 80) = v84;
      *(v40 + 40) = 0xE500000000000000;
      *(v40 + 48) = 0x4C73646E65697266;
      *(v40 + 56) = 0xEB00000000747369;
      *(v40 + 88) = 0x4C73646E65697266;
      *(v40 + 96) = 0xEB00000000747369;
LABEL_18:
      *(v40 + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20);
      *(v40 + 136) = sub_24EA14AE4(&qword_27F21BD70, &qword_27F227A20);
      *(v40 + 104) = MEMORY[0x277D84F98];
      v86 = sub_24E607E40(v40);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
      result = sub_24E6060B8();
      a1[4] = result;
      *a1 = v86;
      return result;
    case 0xBu:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
      v21 = swift_initStackObject();
      v22 = v21;
      *(v21 + 16) = xmmword_24F93A400;
      *(v21 + 32) = 0x646E696B24;
      v23 = MEMORY[0x277D22580];
      *(v21 + 72) = MEMORY[0x277D837D0];
      *(v21 + 80) = v23;
      v24 = 0x697463416B636970;
      *(v21 + 40) = 0xE500000000000000;
      *(v21 + 48) = 0x697463416B636970;
      v25 = 0xEC00000079746976;
      goto LABEL_6;
    case 0xCu:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
      v21 = swift_initStackObject();
      v22 = v21;
      *(v21 + 16) = xmmword_24F93A400;
      *(v21 + 32) = 0x646E696B24;
      v37 = MEMORY[0x277D22580];
      *(v21 + 72) = MEMORY[0x277D837D0];
      *(v21 + 80) = v37;
      v24 = 0x65536D6574737973;
      *(v21 + 40) = 0xE500000000000000;
      *(v21 + 48) = 0x65536D6574737973;
      v25 = 0xEE0073676E697474;
LABEL_6:
      *(v21 + 56) = v25;
      *(v21 + 88) = v24;
      *(v21 + 96) = v25;
      v22[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20);
      v22[17] = sub_24EA14AE4(&qword_27F21BD70, &qword_27F227A20);
      v22[13] = MEMORY[0x277D84F98];
      v38 = sub_24E607E40(v22);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
      swift_arrayDestroy();
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
      result = sub_24E6060B8();
      a1[4] = result;
      *a1 = v38;
      break;
    default:
      v11 = *v10;
      v90 = v10[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_24F93A400;
      *(v12 + 32) = 0x646E696B24;
      v13 = MEMORY[0x277D22580];
      *(v12 + 72) = MEMORY[0x277D837D0];
      *(v12 + 80) = v13;
      *(v12 + 40) = 0xE500000000000000;
      *(v12 + 48) = 0x6D65766569686361;
      *(v12 + 56) = 0xEB00000000746E65;
      *(v12 + 88) = 0x6D65766569686361;
      *(v12 + 96) = 0xEB00000000746E65;
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_24F93DE60;
      strcpy((v14 + 32), "achievementId");
      *(v14 + 46) = -4864;
      v91 = v2;
      *(v14 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
      *(v14 + 80) = sub_24EA14AE4(&qword_27F212F10, &unk_27F23B740);
      v15 = v90;
      *(v14 + 48) = v11;
      *(v14 + 56) = v15;
      v16 = sub_24E607E40(v14);
      swift_setDeallocating();
      sub_24E601704(v14 + 32, &qword_27F212FB0);
      swift_deallocClassInstance();
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
      *(v12 + 128) = v17;
      v18 = sub_24E6060B8();
      *(v12 + 136) = v18;
      *(v12 + 104) = v16;
      v19 = sub_24E607E40(v12);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
      swift_arrayDestroy();
      result = swift_deallocClassInstance();
      a1[3] = v17;
      a1[4] = v18;
      *a1 = v19;
      break;
  }

  return result;
}

unint64_t sub_24EF827A4(char a1)
{
  result = 0x6D65766569686361;
  switch(a1)
  {
    case 1:
      result = 0x676E656C6C616863;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x72616F6268736164;
      break;
    case 4:
      result = 0x6E49646E65697266;
      break;
    case 5:
      result = 0x6552646E65697266;
      break;
    case 6:
      result = 0x4C73646E65697266;
      break;
    case 7:
      result = 0x6F6272656461656CLL;
      break;
    case 8:
      result = 0x7250726579616C70;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0x697463416B636970;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x65536D6574737973;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24EF829C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6D65766569686361 && a2 == 0xED00006449746E65)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24EF82A54(uint64_t a1)
{
  v2 = sub_24EF863EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EF82A90(uint64_t a1)
{
  v2 = sub_24EF863EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EF82ACC()
{
  if (*v0)
  {
    return 0x6974696E69666564;
  }

  else
  {
    return 0x65636E6174736E69;
  }
}

uint64_t sub_24EF82B14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65636E6174736E69 && a2 == 0xEA00000000004449;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6974696E69666564 && a2 == 0xEC00000044496E6FLL)
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

uint64_t sub_24EF82BFC(uint64_t a1)
{
  v2 = sub_24EF86008();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EF82C38(uint64_t a1)
{
  v2 = sub_24EF86008();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EF82C90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x800000024FA4E090 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_24F92CE08();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_24EF82D24(uint64_t a1)
{
  v2 = sub_24EF86344();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EF82D60(uint64_t a1)
{
  v2 = sub_24EF86344();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EF82D9C(uint64_t a1)
{
  v2 = sub_24EF86398();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EF82DD8(uint64_t a1)
{
  v2 = sub_24EF86398();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EF82E1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24EF878FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24EF82E44(uint64_t a1)
{
  v2 = sub_24EF85F60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EF82E80(uint64_t a1)
{
  v2 = sub_24EF85F60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EF82EBC(uint64_t a1)
{
  v2 = sub_24EF862F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EF82EF8(uint64_t a1)
{
  v2 = sub_24EF862F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EF82F34(uint64_t a1)
{
  v2 = sub_24EF8629C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EF82F70(uint64_t a1)
{
  v2 = sub_24EF8629C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EF82FAC(uint64_t a1)
{
  v2 = sub_24EF86248();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EF82FE8(uint64_t a1)
{
  v2 = sub_24EF86248();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EF83024(uint64_t a1)
{
  v2 = sub_24EF861F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EF83060(uint64_t a1)
{
  v2 = sub_24EF861F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EF830C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F6272656461656CLL && a2 == 0xED00006449647261)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24EF83150(uint64_t a1)
{
  v2 = sub_24EF861A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EF8318C(uint64_t a1)
{
  v2 = sub_24EF861A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EF831E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7974697669746361 && a2 == 0xEA00000000006449)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24EF83274(uint64_t a1)
{
  v2 = sub_24EF860B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EF832B0(uint64_t a1)
{
  v2 = sub_24EF860B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EF832EC(uint64_t a1)
{
  v2 = sub_24EF8605C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EF83328(uint64_t a1)
{
  v2 = sub_24EF8605C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EF83364(uint64_t a1)
{
  v2 = sub_24EF86104();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EF833A0(uint64_t a1)
{
  v2 = sub_24EF86104();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EF833DC(uint64_t a1)
{
  v2 = sub_24EF85FB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EF83418(uint64_t a1)
{
  v2 = sub_24EF85FB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GameDashboardDestination.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235288);
  v92 = *(v2 - 8);
  v93 = v2;
  MEMORY[0x28223BE20](v2);
  v91 = &v57 - v3;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235290);
  v60 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v94 = &v57 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235298);
  v88 = *(v5 - 8);
  v89 = v5;
  MEMORY[0x28223BE20](v5);
  v85 = &v57 - v6;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2352A0);
  v59 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v86 = &v57 - v7;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2352A8);
  v58 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v84 = &v57 - v8;
  v82 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v82);
  v83 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2352B0);
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v79 = &v57 - v10;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2352B8);
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v76 = &v57 - v11;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2352C0);
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v73 = &v57 - v12;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2352C8);
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v70 = &v57 - v13;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2352D0);
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v65 = &v57 - v14;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2352D8);
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v64 = &v57 - v15;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2352E0);
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v17 = &v57 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2352E8);
  v61 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v57 - v19;
  v21 = type metadata accessor for GameDashboardDestination(0);
  MEMORY[0x28223BE20](v21);
  v23 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2352F0);
  v97 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v25 = &v57 - v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EF85F60();
  v98 = v25;
  sub_24F92D128();
  sub_24EF85EF8(v96, v23, type metadata accessor for GameDashboardDestination);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v103 = 2;
      sub_24EF86344();
      v39 = v64;
      v41 = v98;
      v40 = v99;
      sub_24F92CC98();
      v42 = v67;
      sub_24F92CD08();

      v43 = &v98;
      goto LABEL_12;
    case 2u:
      v108 = 7;
      sub_24EF861A0();
      v39 = v79;
      v41 = v98;
      v40 = v99;
      sub_24F92CC98();
      v42 = v81;
      sub_24F92CCA8();

      v43 = &v116;
LABEL_12:
      (*(*(v43 - 32) + 1))(v39, v42);
      return (*(v97 + 8))(v41, v40);
    case 3u:
      v44 = v83;
      sub_24EF86440(v23, v83, type metadata accessor for Player);
      v109 = 8;
      sub_24EF86104();
      v45 = v84;
      v47 = v98;
      v46 = v99;
      sub_24F92CC98();
      sub_24EF86158(&qword_27F213E28, type metadata accessor for Player);
      v48 = v87;
      sub_24F92CD48();
      (*(v58 + 8))(v45, v48);
      sub_24E71BF38(v44);
      return (*(v97 + 8))(v47, v46);
    case 4u:
      v110 = 9;
      sub_24EF860B0();
      v34 = v86;
      v36 = v98;
      v35 = v99;
      sub_24F92CC98();
      v37 = v90;
      sub_24F92CD08();

      (*(v59 + 8))(v34, v37);
      return (*(v97 + 8))(v36, v35);
    case 5u:
      v114 = 11;
      sub_24EF86008();
      v50 = v94;
      v52 = v98;
      v51 = v99;
      sub_24F92CC98();
      v113 = 0;
      v53 = v95;
      v54 = v100;
      sub_24F92CD08();

      if (!v54)
      {
        v112 = 1;
        sub_24F92CD08();
      }

      (*(v60 + 8))(v50, v53);
      return (*(v97 + 8))(v52, v51);
    case 6u:
      v102 = 1;
      sub_24EF86398();
      v31 = v98;
      v30 = v99;
      sub_24F92CC98();
      (*(v62 + 8))(v17, v63);
      goto LABEL_20;
    case 7u:
      v104 = 3;
      sub_24EF862F0();
      v49 = v65;
      v31 = v98;
      v30 = v99;
      sub_24F92CC98();
      (*(v68 + 8))(v49, v69);
      goto LABEL_20;
    case 8u:
      v105 = 4;
      sub_24EF8629C();
      v56 = v70;
      v31 = v98;
      v30 = v99;
      sub_24F92CC98();
      (*(v71 + 8))(v56, v72);
      goto LABEL_20;
    case 9u:
      v106 = 5;
      sub_24EF86248();
      v38 = v73;
      v31 = v98;
      v30 = v99;
      sub_24F92CC98();
      (*(v74 + 8))(v38, v75);
      goto LABEL_20;
    case 0xAu:
      v107 = 6;
      sub_24EF861F4();
      v55 = v76;
      v31 = v98;
      v30 = v99;
      sub_24F92CC98();
      (*(v77 + 8))(v55, v78);
      goto LABEL_20;
    case 0xBu:
      v111 = 10;
      sub_24EF8605C();
      v29 = v85;
      v31 = v98;
      v30 = v99;
      sub_24F92CC98();
      v33 = v88;
      v32 = v89;
      goto LABEL_6;
    case 0xCu:
      v115 = 12;
      sub_24EF85FB4();
      v29 = v91;
      v31 = v98;
      v30 = v99;
      sub_24F92CC98();
      v33 = v92;
      v32 = v93;
LABEL_6:
      (*(v33 + 8))(v29, v32);
LABEL_20:
      result = (*(v97 + 8))(v31, v30);
      break;
    default:
      v101 = 0;
      sub_24EF863EC();
      v27 = v98;
      v26 = v99;
      sub_24F92CC98();
      sub_24F92CCA8();

      (*(v61 + 8))(v20, v18);
      result = (*(v97 + 8))(v27, v26);
      break;
  }

  return result;
}

uint64_t GameDashboardDestination.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v169 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235368);
  v170 = *(v3 - 8);
  v171 = v3;
  MEMORY[0x28223BE20](v3);
  v167 = &v128 - v4;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235370);
  v175 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v168 = &v128 - v5;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235378);
  v154 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v166 = &v128 - v6;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235380);
  v139 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v165 = &v128 - v7;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235388);
  v138 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v164 = &v128 - v8;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235390);
  v137 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v163 = &v128 - v9;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235398);
  v150 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v162 = &v128 - v10;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2353A0);
  v148 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v161 = &v128 - v11;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2353A8);
  v147 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v174 = &v128 - v12;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2353B0);
  v143 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v160 = &v128 - v13;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2353B8);
  v136 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v173 = &v128 - v14;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2353C0);
  v140 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v159 = &v128 - v15;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2353C8);
  v135 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v158 = &v128 - v16;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2353D0);
  v176 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v18 = &v128 - v17;
  v177 = type metadata accessor for GameDashboardDestination(0);
  MEMORY[0x28223BE20](v177);
  v133 = (&v128 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v134 = (&v128 - v21);
  MEMORY[0x28223BE20](v22);
  v24 = &v128 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v128 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v128 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v128 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = &v128 - v35;
  v37 = a1[3];
  v179 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v37);
  sub_24EF85F60();
  v172 = v18;
  v38 = v180;
  sub_24F92D108();
  v180 = v38;
  if (v38)
  {
LABEL_8:
    v57 = v179;
    return __swift_destroy_boxed_opaque_existential_1(v57);
  }

  v128 = v33;
  v129 = v30;
  v130 = v27;
  v131 = v24;
  v40 = v173;
  v39 = v174;
  v41 = v175;
  v132 = v36;
  v42 = v172;
  v43 = sub_24F92CC78();
  v44 = (2 * *(v43 + 16)) | 1;
  v181 = v43;
  v182 = v43 + 32;
  v183 = 0;
  v184 = v44;
  v45 = sub_24E643438();
  if (v183 != v184 >> 1)
  {
LABEL_6:
    v51 = sub_24F92C918();
    v52 = swift_allocError();
    v54 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20);
    *v54 = v177;
    v55 = v42;
    v56 = v178;
    sub_24F92CBB8();
    sub_24F92C908();
    (*(*(v51 - 8) + 104))(v54, *MEMORY[0x277D84160], v51);
    v180 = v52;
    swift_willThrow();
    (*(v176 + 8))(v55, v56);
LABEL_7:
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v46 = v170;
  v47 = v171;
  switch(v45)
  {
    case 0:
      v185 = 0;
      sub_24EF863EC();
      v48 = v158;
      v49 = v178;
      v50 = v180;
      sub_24F92CBA8();
      v180 = v50;
      if (v50)
      {
        (*(v176 + 8))(v42, v49);
        goto LABEL_7;
      }

      v96 = v42;
      v97 = v141;
      v98 = sub_24F92CBC8();
      v99 = v176;
      v180 = 0;
      v119 = v98;
      v121 = v120;
      (*(v135 + 8))(v48, v97);
      (*(v99 + 8))(v96, v49);
      swift_unknownObjectRelease();
      v112 = v128;
      *v128 = v119;
      v112[1] = v121;
      goto LABEL_40;
    case 1:
      v185 = 1;
      sub_24EF86398();
      v86 = v159;
      v64 = v178;
      v87 = v180;
      sub_24F92CBA8();
      v180 = v87;
      if (v87)
      {
        goto LABEL_32;
      }

      (*(v140 + 8))(v86, v142);
      (*(v176 + 8))(v42, v64);
      swift_unknownObjectRelease();
      v66 = v132;
      goto LABEL_37;
    case 2:
      v185 = 2;
      sub_24EF86344();
      v75 = v40;
      v70 = v178;
      v76 = v180;
      sub_24F92CBA8();
      v180 = v76;
      if (v76)
      {
        goto LABEL_34;
      }

      v77 = v144;
      v78 = sub_24F92CC28();
      v79 = v176;
      v180 = 0;
      v113 = v78;
      v115 = v114;
      (*(v136 + 8))(v75, v77);
      (*(v79 + 8))(v42, v70);
      swift_unknownObjectRelease();
      v112 = v129;
      *v129 = v113;
      v112[1] = v115;
      goto LABEL_40;
    case 3:
      v185 = 3;
      sub_24EF862F0();
      v80 = v160;
      v64 = v178;
      v81 = v180;
      sub_24F92CBA8();
      v180 = v81;
      if (v81)
      {
        goto LABEL_32;
      }

      (*(v143 + 8))(v80, v145);
      (*(v176 + 8))(v42, v64);
      swift_unknownObjectRelease();
      v66 = v132;
      goto LABEL_37;
    case 4:
      v185 = 4;
      sub_24EF8629C();
      v64 = v178;
      v65 = v180;
      sub_24F92CBA8();
      v180 = v65;
      if (v65)
      {
        goto LABEL_32;
      }

      (*(v147 + 8))(v39, v146);
      (*(v176 + 8))(v42, v64);
      swift_unknownObjectRelease();
      v66 = v132;
      goto LABEL_37;
    case 5:
      v185 = 5;
      sub_24EF86248();
      v88 = v161;
      v64 = v178;
      v89 = v180;
      sub_24F92CBA8();
      v180 = v89;
      if (v89)
      {
        goto LABEL_32;
      }

      (*(v148 + 8))(v88, v149);
      (*(v176 + 8))(v42, v64);
      swift_unknownObjectRelease();
      v66 = v132;
      goto LABEL_37;
    case 6:
      v185 = 6;
      sub_24EF861F4();
      v90 = v162;
      v64 = v178;
      v91 = v180;
      sub_24F92CBA8();
      v180 = v91;
      if (v91)
      {
        goto LABEL_32;
      }

      (*(v150 + 8))(v90, v151);
      (*(v176 + 8))(v42, v64);
      swift_unknownObjectRelease();
      v66 = v132;
      goto LABEL_37;
    case 7:
      v185 = 7;
      sub_24EF861A0();
      v82 = v163;
      v64 = v178;
      v83 = v180;
      sub_24F92CBA8();
      v180 = v83;
      if (v83)
      {
        goto LABEL_32;
      }

      v84 = v152;
      v85 = sub_24F92CBC8();
      v180 = 0;
      v116 = v85;
      v118 = v117;
      (*(v137 + 8))(v82, v84);
      (*(v176 + 8))(v42, v178);
      swift_unknownObjectRelease();
      v112 = v130;
      *v130 = v116;
      v112[1] = v118;
      goto LABEL_40;
    case 8:
      v185 = 8;
      sub_24EF86104();
      v94 = v164;
      v70 = v178;
      v95 = v180;
      sub_24F92CBA8();
      v180 = v95;
      if (v95)
      {
        goto LABEL_34;
      }

      type metadata accessor for Player(0);
      sub_24EF86158(&qword_27F213E38, type metadata accessor for Player);
      v100 = v131;
      v101 = v153;
      v102 = v180;
      sub_24F92CC68();
      v103 = v176;
      v180 = v102;
      if (v102)
      {
        (*(v138 + 8))(v94, v101);
        (*(v103 + 8))(v42, v70);
        goto LABEL_7;
      }

      (*(v138 + 8))(v94, v101);
      (*(v103 + 8))(v42, v70);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v127 = v100;
      goto LABEL_41;
    case 9:
      v185 = 9;
      sub_24EF860B0();
      v69 = v165;
      v70 = v178;
      v71 = v180;
      sub_24F92CBA8();
      v180 = v71;
      if (v71)
      {
LABEL_34:
        (*(v176 + 8))(v42, v70);
        goto LABEL_7;
      }

      v72 = v155;
      v73 = sub_24F92CC28();
      v74 = v176;
      v180 = 0;
      v109 = v73;
      v111 = v110;
      (*(v139 + 8))(v69, v72);
      (*(v74 + 8))(v42, v70);
      swift_unknownObjectRelease();
      v112 = v134;
      *v134 = v109;
      v112[1] = v111;
LABEL_40:
      swift_storeEnumTagMultiPayload();
      v127 = v112;
      goto LABEL_41;
    case 10:
      v185 = 10;
      sub_24EF8605C();
      v92 = v166;
      v64 = v178;
      v93 = v180;
      sub_24F92CBA8();
      v180 = v93;
      if (v93)
      {
        goto LABEL_32;
      }

      (*(v154 + 8))(v92, v156);
      (*(v176 + 8))(v42, v64);
      swift_unknownObjectRelease();
      v66 = v132;
      goto LABEL_37;
    case 11:
      v185 = 11;
      sub_24EF86008();
      v59 = v168;
      v60 = v178;
      v61 = v180;
      sub_24F92CBA8();
      v180 = v61;
      if (v61)
      {
        (*(v176 + 8))(v42, v60);
        goto LABEL_7;
      }

      v185 = 0;
      v62 = v157;
      v63 = sub_24F92CC28();
      v180 = 0;
      v174 = v63;
      v105 = v104;
      v185 = 1;
      v106 = sub_24F92CC28();
      v107 = (v41 + 8);
      v108 = (v176 + 8);
      v180 = 0;
      v123 = v106;
      v125 = v124;
      (*v107)(v59, v62);
      (*v108)(v42, v60);
      swift_unknownObjectRelease();
      v126 = v133;
      *v133 = v174;
      v126[1] = v105;
      v126[2] = v123;
      v126[3] = v125;
      swift_storeEnumTagMultiPayload();
      v127 = v126;
LABEL_41:
      v66 = v132;
      sub_24EF86440(v127, v132, type metadata accessor for GameDashboardDestination);
      goto LABEL_42;
    case 12:
      v185 = 12;
      sub_24EF85FB4();
      v67 = v167;
      v64 = v178;
      v68 = v180;
      sub_24F92CBA8();
      v180 = v68;
      if (v68)
      {
LABEL_32:
        (*(v176 + 8))(v42, v64);
        goto LABEL_7;
      }

      (*(v46 + 8))(v67, v47);
      (*(v176 + 8))(v42, v64);
      swift_unknownObjectRelease();
      v66 = v132;
LABEL_37:
      swift_storeEnumTagMultiPayload();
LABEL_42:
      v122 = v179;
      sub_24EF86440(v66, v169, type metadata accessor for GameDashboardDestination);
      v57 = v122;
      break;
    default:
      goto LABEL_6;
  }

  return __swift_destroy_boxed_opaque_existential_1(v57);
}

unint64_t sub_24EF85B7C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A070;
  *(inited + 32) = 0x756F72676B636162;
  *(inited + 40) = 0xEA0000000000646ELL;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8);
  *(inited + 80) = sub_24E7D17FC();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24E60169C(v2, boxed_opaque_existential_1, &qword_27F21D8F8);
  *(inited + 88) = 0x726579616C70;
  *(inited + 96) = 0xE600000000000000;
  v6 = type metadata accessor for DashboardDeepLinkIntent(0);
  v7 = v6[5];
  *(inited + 128) = type metadata accessor for Player(0);
  *(inited + 136) = sub_24EF86158(&qword_27F215388, type metadata accessor for Player);
  v8 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24EF85EF8(v2 + v7, v8, type metadata accessor for Player);
  *(inited + 144) = 0xD000000000000016;
  *(inited + 152) = 0x800000024FA55B30;
  v9 = *(v2 + v6[6]);
  *(inited + 184) = &type metadata for CommonOnboardingStatus;
  v10 = sub_24EBB9898();
  *(inited + 160) = v9;
  *(inited + 192) = v10;
  *(inited + 200) = 1701667175;
  *(inited + 208) = 0xE400000000000000;
  v11 = v6[7];
  *(inited + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0);
  *(inited + 248) = sub_24E736C00();
  v12 = __swift_allocate_boxed_opaque_existential_1((inited + 216));
  sub_24E60169C(v2 + v11, v12, &qword_27F216FE0);
  *(inited + 256) = 0x74616E6974736564;
  *(inited + 264) = 0xEB000000006E6F69;
  v13 = v6[8];
  *(inited + 296) = type metadata accessor for GameDashboardDestination(0);
  *(inited + 304) = sub_24EF86158(&qword_27F235538, type metadata accessor for GameDashboardDestination);
  v14 = __swift_allocate_boxed_opaque_existential_1((inited + 272));
  sub_24EF85EF8(v2 + v13, v14, type metadata accessor for GameDashboardDestination);
  *(inited + 312) = 0xD000000000000010;
  *(inited + 320) = 0x800000024FA46670;
  v15 = *(v2 + v6[9]);
  v16 = MEMORY[0x277D22598];
  *(inited + 352) = MEMORY[0x277D839B0];
  *(inited + 360) = v16;
  *(inited + 328) = v15;
  v17 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
  swift_arrayDestroy();
  v18 = sub_24E80FFAC(v17);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v18;
  return result;
}

uint64_t sub_24EF85EF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24EF85F60()
{
  result = qword_27F2352F8;
  if (!qword_27F2352F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2352F8);
  }

  return result;
}

unint64_t sub_24EF85FB4()
{
  result = qword_27F235300;
  if (!qword_27F235300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235300);
  }

  return result;
}

unint64_t sub_24EF86008()
{
  result = qword_27F235308;
  if (!qword_27F235308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235308);
  }

  return result;
}

unint64_t sub_24EF8605C()
{
  result = qword_27F235310;
  if (!qword_27F235310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235310);
  }

  return result;
}

unint64_t sub_24EF860B0()
{
  result = qword_27F235318;
  if (!qword_27F235318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235318);
  }

  return result;
}

unint64_t sub_24EF86104()
{
  result = qword_27F235320;
  if (!qword_27F235320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235320);
  }

  return result;
}

uint64_t sub_24EF86158(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24EF861A0()
{
  result = qword_27F235328;
  if (!qword_27F235328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235328);
  }

  return result;
}

unint64_t sub_24EF861F4()
{
  result = qword_27F235330;
  if (!qword_27F235330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235330);
  }

  return result;
}

unint64_t sub_24EF86248()
{
  result = qword_27F235338;
  if (!qword_27F235338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235338);
  }

  return result;
}

unint64_t sub_24EF8629C()
{
  result = qword_27F235340;
  if (!qword_27F235340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235340);
  }

  return result;
}

unint64_t sub_24EF862F0()
{
  result = qword_27F235348;
  if (!qword_27F235348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235348);
  }

  return result;
}

unint64_t sub_24EF86344()
{
  result = qword_27F235350;
  if (!qword_27F235350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235350);
  }

  return result;
}

unint64_t sub_24EF86398()
{
  result = qword_27F235358;
  if (!qword_27F235358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235358);
  }

  return result;
}

unint64_t sub_24EF863EC()
{
  result = qword_27F235360;
  if (!qword_27F235360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235360);
  }

  return result;
}

uint64_t sub_24EF86440(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_24EF864A8()
{
  sub_24EF865F0(319, &qword_27F2353E8, sub_24E6BCB04);
  if (v0 <= 0x3F)
  {
    sub_24EF865C0();
    if (v1 <= 0x3F)
    {
      sub_24EF865F0(319, &qword_27F2353F8, sub_24E6BCB04);
      if (v2 <= 0x3F)
      {
        sub_24EF865F0(319, &qword_27F214F80, type metadata accessor for Player);
        if (v3 <= 0x3F)
        {
          sub_24EF8663C();
          if (v4 <= 0x3F)
          {
            sub_24EF8666C();
            if (v5 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_24EF865C0()
{
  result = qword_27F2353F0;
  if (!qword_27F2353F0)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27F2353F0);
  }

  return result;
}

void sub_24EF865F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24EF8663C()
{
  result = qword_27F235400;
  if (!qword_27F235400)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27F235400);
  }

  return result;
}

void sub_24EF8666C()
{
  if (!qword_27F235408)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F235408);
    }
  }
}

uint64_t sub_24EF866E0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for Player(0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 254)
  {
    v15 = *(a1 + a3[6]);
    if (v15 >= 2)
    {
      return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[7];
    goto LABEL_5;
  }

  v17 = type metadata accessor for GameDashboardDestination(0);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[8];

  return v18(v19, a2, v17);
}

uint64_t sub_24EF868D4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for Player(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 254)
  {
    *(a1 + a4[6]) = a2 + 1;
    return result;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_5;
  }

  v17 = type metadata accessor for GameDashboardDestination(0);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[8];

  return v18(v19, a2, a2, v17);
}

void sub_24EF86AC4()
{
  sub_24EF86BC0(319, &qword_27F21D948, type metadata accessor for Page.Background);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Player(319);
    if (v1 <= 0x3F)
    {
      sub_24EF86BC0(319, &qword_27F21ADC8, type metadata accessor for Game);
      if (v2 <= 0x3F)
      {
        type metadata accessor for GameDashboardDestination(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24EF86BC0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F92C4A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_24EF86CF8()
{
  result = qword_27F235420;
  if (!qword_27F235420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235420);
  }

  return result;
}

unint64_t sub_24EF86D50()
{
  result = qword_27F235428;
  if (!qword_27F235428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235428);
  }

  return result;
}

unint64_t sub_24EF86DA8()
{
  result = qword_27F235430;
  if (!qword_27F235430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235430);
  }

  return result;
}

unint64_t sub_24EF86E00()
{
  result = qword_27F235438;
  if (!qword_27F235438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235438);
  }

  return result;
}

unint64_t sub_24EF86E58()
{
  result = qword_27F235440;
  if (!qword_27F235440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235440);
  }

  return result;
}

unint64_t sub_24EF86EB0()
{
  result = qword_27F235448;
  if (!qword_27F235448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235448);
  }

  return result;
}

unint64_t sub_24EF86F08()
{
  result = qword_27F235450;
  if (!qword_27F235450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235450);
  }

  return result;
}

unint64_t sub_24EF86F60()
{
  result = qword_27F235458;
  if (!qword_27F235458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235458);
  }

  return result;
}

unint64_t sub_24EF86FB8()
{
  result = qword_27F235460;
  if (!qword_27F235460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235460);
  }

  return result;
}

unint64_t sub_24EF87010()
{
  result = qword_27F235468;
  if (!qword_27F235468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235468);
  }

  return result;
}

unint64_t sub_24EF87068()
{
  result = qword_27F235470;
  if (!qword_27F235470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235470);
  }

  return result;
}

unint64_t sub_24EF870C0()
{
  result = qword_27F235478;
  if (!qword_27F235478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235478);
  }

  return result;
}

unint64_t sub_24EF87118()
{
  result = qword_27F235480;
  if (!qword_27F235480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235480);
  }

  return result;
}

unint64_t sub_24EF87170()
{
  result = qword_27F235488;
  if (!qword_27F235488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235488);
  }

  return result;
}

unint64_t sub_24EF871C8()
{
  result = qword_27F235490;
  if (!qword_27F235490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235490);
  }

  return result;
}

unint64_t sub_24EF87220()
{
  result = qword_27F235498;
  if (!qword_27F235498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235498);
  }

  return result;
}