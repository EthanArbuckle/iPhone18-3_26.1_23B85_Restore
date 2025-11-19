void sub_1D7756D44(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D7756D94(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D7756DE4(uint64_t a1, uint64_t a2)
{
  sub_1D77442AC(0, &unk_1EE095640, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7756E78(uint64_t a1)
{
  sub_1D77442AC(0, &unk_1EE095640, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7756F0C()
{
  swift_getObjectType();
  sub_1D7752C3C();
  sub_1D78B41F4();
  v0 = sub_1D78B4014();
  sub_1D774BAA4();
  v1 = sub_1D78B40A4();

  return v1;
}

uint64_t sub_1D7757080@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1D78B4444();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D78B4474();
  if (qword_1EE0905C0 != -1)
  {
    swift_once();
  }

  v6 = unk_1EE0905D0;
  *v5 = qword_1EE0905C8;
  v5[1] = v6;
  (*(v3 + 104))(v5, *MEMORY[0x1E69D6280], v2);

  result = sub_1D78B4424();
  *a1 = result;
  return result;
}

uint64_t sub_1D77571B4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE095CF0);
  result = sub_1D78B39F4();
  if (!v61)
  {
    __break(1u);
    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &qword_1EE0957D0);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773F004(0, &qword_1EE08FDB0);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &unk_1EE08FCC0);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE095830);
  result = sub_1D78B39F4();
  if (!v59)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE095800);
  result = sub_1D78B39F4();
  if (!v57)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, qword_1EE095E80);
  result = sub_1D78B39F4();
  if (!v54)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE090478);
  result = sub_1D78B39F4();
  if (!v53[3])
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE092CE0);
  result = sub_1D78B39F4();
  if (!v52[3])
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE095930);
  result = sub_1D78B39F4();
  if (!v51[3])
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v39 = v55;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE096420);
  result = sub_1D78B39F4();
  v6 = v49;
  if (!v49)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v38 = v50;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE090C58);
  result = sub_1D78B39F4();
  if (!v48[3])
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE096360);
  result = sub_1D78B39F4();
  if (!v47[3])
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v36 = v54;
  v37 = v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &qword_1EE08FCA0);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v7 = result;
  v35 = v5;
  v8 = v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE090F18);
  result = sub_1D78B39F4();
  if (v46)
  {
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v45, v46);
    v34[2] = v34;
    MEMORY[0x1EEE9AC00](v9);
    v11 = (v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = *v11;
    v14 = type metadata accessor for OsloAbandonmentUpsellManager();
    v43 = v14;
    v44 = &off_1F526EAF0;
    v42[0] = v13;
    v15 = type metadata accessor for PurchasePresenter();
    v16 = objc_allocWithZone(v15);
    v17 = __swift_mutable_project_boxed_opaque_existential_1(v42, v43);
    v34[1] = v34;
    MEMORY[0x1EEE9AC00](v17);
    v19 = (v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19);
    v21 = *v19;
    v41[3] = v14;
    v41[4] = &off_1F526EAF0;
    v41[0] = v21;
    *&v16[OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter____lazy_storage___spinnerViewController] = 0;
    v16[OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_isPresenting] = 0;
    v22 = OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_purchaseContext;
    v23 = type metadata accessor for PurchaseContext();
    (*(*(v23 - 8) + 56))(&v16[v22], 1, 1, v23);
    sub_1D774584C(v60, &v16[OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_purchaseStarter]);
    v24 = v37;
    *&v16[OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_purchaseController] = v37;
    *&v16[OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_bundleSubscriptionManager] = v8;
    *&v16[OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_networkReachability] = v35;
    sub_1D774584C(v56, &v16[OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_purchasingSpinnerViewControllerFactory]);
    sub_1D774584C(v58, &v16[OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_familySharingLandingPageLauncher]);
    v25 = &v16[OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_offerManager];
    v26 = v39;
    *v25 = v36;
    v25[1] = v26;
    sub_1D774584C(v53, &v16[OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_urlHandler]);
    sub_1D774584C(v52, &v16[OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_router]);
    sub_1D774584C(v51, &v16[OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_postPurchaseOnboardingManager]);
    v27 = &v16[OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_bundleSubscriptionDetectionManager];
    v28 = v38;
    *v27 = v6;
    v27[1] = v28;
    sub_1D774584C(v48, &v16[OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_onboardingPrewarmer]);
    sub_1D774584C(v47, &v16[OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_featureAvailability]);
    *&v16[OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_configurationManager] = v7;
    sub_1D774584C(v41, &v16[OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_osloAbandonmentUpsellManager]);
    v40.receiver = v16;
    v40.super_class = v15;
    v29 = v24;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v30 = objc_msgSendSuper2(&v40, sel_init);
    v31 = objc_opt_self();
    v32 = v30;
    v33 = [v31 defaultCenter];
    [v33 addObserver:v32 selector:sel_handlePurchaseAddedNotificationWithNotification_ name:*MEMORY[0x1E69B50E0] object:0];

    [*&v32[OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_bundleSubscriptionManager] addObserver_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v47);
    __swift_destroy_boxed_opaque_existential_1(v48);
    __swift_destroy_boxed_opaque_existential_1(v51);
    __swift_destroy_boxed_opaque_existential_1(v52);
    __swift_destroy_boxed_opaque_existential_1(v53);
    __swift_destroy_boxed_opaque_existential_1(v56);
    __swift_destroy_boxed_opaque_existential_1(v58);
    __swift_destroy_boxed_opaque_existential_1(v60);
    __swift_destroy_boxed_opaque_existential_1(v41);
    __swift_destroy_boxed_opaque_existential_1(v42);
    __swift_destroy_boxed_opaque_existential_1(v45);
    return v32;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1D7757B24()
{
  v0 = sub_1D78B3294();
  v1 = *(v0 - 8);
  v2 = (MEMORY[0x1EEE9AC00])();
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - v5;
  v7 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 1uLL, 1);
  v8 = sub_1D78B5EB4();
  if (*(v8 + 16))
  {

    if (*(v8 + 16))
    {

      sub_1D78B3204();

      sub_1D78B3224();
      v9 = *(v1 + 8);
      v9(v4, v0);
      v10 = sub_1D78B3264();
      v9(v6, v0);
      return v10;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7757CD8()
{
  result = sub_1D7757B24();
  qword_1EE0905C8 = result;
  unk_1EE0905D0 = v1;
  return result;
}

uint64_t sub_1D7757CFC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE095D00);
  result = sub_1D78B39F4();
  v3 = v18;
  if (!v18)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &qword_1EE0957D0);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE0959E0);
  result = sub_1D78B39F4();
  v6 = v16;
  if (!v16)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE091458);
  result = sub_1D78B39F4();
  if (v15)
  {
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
    MEMORY[0x1EEE9AC00](v8);
    v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v11 + 16))(v10);
    v12 = sub_1D77583E0(v3, v4, v5, v6, v7, *v10);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v14);
    return v12;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D7757F60@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &qword_1EE08FCA0);
  result = sub_1D78B39E4();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D773CA14(0, &qword_1EE096360);
    result = sub_1D78B39F4();
    if (v9)
    {
      v6 = type metadata accessor for SIWAPurchaseConfigProvider();
      v7 = swift_allocObject();
      *(v7 + 16) = v5;
      result = sub_1D7741E34(&v8, v7 + 24);
      a2[3] = v6;
      a2[4] = &off_1F526E9D8;
      *a2 = v7;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D775806C(id *a1, uint64_t a2)
{
  v3 = *a1;
  if (([*a1 respondsToSelector_] & 1) == 0)
  {
    goto LABEL_7;
  }

  v4 = [v3 paidBundleConfig];
  if (![v4 areMagazinesEnabled])
  {

LABEL_7:
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    sub_1D78B60A4();
    sub_1D78B42C4();
    sub_1D7756B20(0, &unk_1EE095220, sub_1D774BAA4, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D78B4104();
  }

  v5 = [v4 offeredBundlePurchaseIDs];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1D78B5EB4();

    if (*(v7 + 16))
    {

      v8 = *(a2 + OBJC_IVAR____TtC16NewsSubscription23BundlePurchasePrewarmer_bundleSubscriptionManager);
      v9 = sub_1D78B5C44();
      [v8 prewarmBundleTagIDsWithPurchaseID_];

      MEMORY[0x1EEE9AC00](v10);
      sub_1D7756B20(0, &unk_1EE095220, sub_1D774BAA4, MEMORY[0x1E69D6B18]);
      swift_allocObject();
      v11 = sub_1D78B4174();

      return v11;
    }
  }

  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D78B60A4();
  sub_1D78B42C4();
  sub_1D7756B20(0, &unk_1EE095220, sub_1D774BAA4, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  v13 = sub_1D78B4104();

  return v13;
}

char *sub_1D77583E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v11 = *a6;
  v27[3] = v11;
  v27[4] = &off_1F526E9D8;
  v27[0] = a6;
  type metadata accessor for PurchaseStarter();
  v12 = swift_allocObject();
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v27, v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v25[-1] - v14);
  (*(v16 + 16))(&v25[-1] - v14);
  v17 = *v15;
  v26[3] = v11;
  v26[4] = &off_1F526E9D8;
  v26[0] = v17;
  *(v12 + 12) = 0;
  v18 = OBJC_IVAR____TtC16NewsSubscription15PurchaseStarter_purchaseContext;
  v19 = type metadata accessor for PurchaseContext();
  (*(*(v19 - 8) + 56))(&v12[v18], 1, 1, v19);
  *(v12 + 2) = a1;
  *(v12 + 3) = a2;
  *(v12 + 4) = a3;
  *(v12 + 5) = a4;
  *(v12 + 6) = a5;
  sub_1D774584C(v26, (v12 + 56));
  ObjectType = swift_getObjectType();
  v21 = *(a2 + 32);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  v21(v25, v22, &off_1F5269F88, ObjectType, a2);

  __swift_destroy_boxed_opaque_existential_1(v25);
  __swift_destroy_boxed_opaque_existential_1(v26);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return v12;
}

uint64_t sub_1D7758600@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = sub_1D78B52D4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D773F004(0, &qword_1EE08FE10);
  *v9 = sub_1D78B6104();
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8020], v6);
  v10 = sub_1D78B52F4();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v9 = type metadata accessor for DisposableTransactionObserver();
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v6 + 24) = a1;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v11 = OBJC_IVAR____TtC16NewsSubscription15PurchaseManager_transactionObservers;
  swift_beginAccess();

  MEMORY[0x1DA703120](v12);
  if (*((*(v3 + v11) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v11) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_5:
    sub_1D78B5F04();
  }

  sub_1D78B5F24();
  swift_endAccess();
  a2[3] = v9;
  result = sub_1D7746524(&qword_1EE0918B0, type metadata accessor for DisposableTransactionObserver);
  a2[4] = result;
  *a2 = v6;
  return result;
}

uint64_t sub_1D7758894(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE095D10);
  result = sub_1D78B39F4();
  if (v9)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    type metadata accessor for AMSUIWebViewControllerDelegate();
    result = sub_1D78B39E4();
    if (result)
    {
      v3 = result;
      v4 = type metadata accessor for AMSUIWebViewControllerFactory();
      v5 = objc_allocWithZone(v4);
      sub_1D774584C(v8, &v5[OBJC_IVAR____TtC16NewsSubscription29AMSUIWebViewControllerFactory_metricsBuilder]);
      *&v5[OBJC_IVAR____TtC16NewsSubscription29AMSUIWebViewControllerFactory_amsUIWebViewControllerDelegate] = v3;
      v7.receiver = v5;
      v7.super_class = v4;
      v6 = objc_msgSendSuper2(&v7, sel_init);
      __swift_destroy_boxed_opaque_existential_1(v8);
      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D77589A0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE095C10);
  result = sub_1D78B39F4();
  if (v9)
  {
    v2 = __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
    MEMORY[0x1EEE9AC00](v2);
    v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v5 + 16))(v4);
    v6 = sub_1D7758ACC(*v4);
    __swift_destroy_boxed_opaque_existential_1(v8);
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D7758ACC(uint64_t *a1)
{
  v1 = *a1;
  v13[3] = v1;
  v13[4] = &off_1F526DCC0;
  v13[0] = a1;
  v2 = type metadata accessor for AMSUIWebViewControllerDelegate();
  v3 = objc_allocWithZone(v2);
  v4 = __swift_mutable_project_boxed_opaque_existential_1(v13, v1);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v11 - v5);
  (*(v7 + 16))(&v11 - v5);
  v8 = *v6;
  v12[3] = v1;
  v12[4] = &off_1F526DCC0;
  v12[0] = v8;
  v3[OBJC_IVAR____TtC16NewsSubscription30AMSUIWebViewControllerDelegate_performingAuthentication] = 0;
  *&v3[OBJC_IVAR____TtC16NewsSubscription30AMSUIWebViewControllerDelegate_completionHandlers] = MEMORY[0x1E69E7CC0];
  sub_1D774584C(v12, &v3[OBJC_IVAR____TtC16NewsSubscription30AMSUIWebViewControllerDelegate_entitlementsManager]);
  v11.receiver = v3;
  v11.super_class = v2;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v12);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v9;
}

id PaywallInteractor.__allocating_init(webAccessAuthenticatorFactory:bundleSubscriptionManager:dataManager:paidBundleViaOfferFeatureAvailability:personalizedPaywallDataService:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v30 = a1;
  sub_1D774584C(a1, v41);
  v13 = type metadata accessor for WebAccessConversionEventReporter();
  v14 = swift_allocObject();
  v29 = a5;
  sub_1D774584C(a5, v40);
  sub_1D7759064(a6, v39, &qword_1EE090510, qword_1EE090518, MEMORY[0x1E69B6A08]);
  v38[3] = v13;
  v38[4] = &off_1F526CAD0;
  v38[0] = v14;
  v15 = objc_allocWithZone(v7);
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v38, v13);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = *v18;
  v37[3] = v13;
  v37[4] = &off_1F526CAD0;
  v37[0] = v20;
  *&v15[OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v21 = &v15[OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_tracker];
  *v21 = 0u;
  *(v21 + 1) = 0u;
  *(v21 + 4) = 0;
  v22 = &v15[OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_webAccessAuthenticator];
  *(v22 + 4) = 0;
  *v22 = 0u;
  *(v22 + 1) = 0u;
  sub_1D774584C(v41, &v15[OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_webAccessAuthenticatorFactory]);
  sub_1D774584C(v37, &v15[OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_webAccessConversionEventReporter]);
  v23 = &v15[OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_dataManager];
  *v23 = a3;
  *(v23 + 1) = a4;
  sub_1D774584C(v40, &v15[OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_paidBundleViaOfferFeatureAvailability]);
  sub_1D7759064(v39, &v32, &qword_1EE090510, qword_1EE090518, MEMORY[0x1E69B6A08]);
  if (v33)
  {
    sub_1D7741E34(&v32, &v34);
  }

  else
  {
    v24 = type metadata accessor for DefaultPersonalizedPaywallDataService();
    v25 = swift_allocObject();
    v35 = v24;
    v36 = sub_1D77F9920();
    *&v34 = v25;
  }

  swift_unknownObjectRetain();
  sub_1D7741E34(&v34, &v15[OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_personalizedPaywallDataService]);
  v31.receiver = v15;
  v31.super_class = v7;
  v26 = objc_msgSendSuper2(&v31, sel_init);
  [a2 addObserver_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v27 = MEMORY[0x1E69B6A08];
  sub_1D7759154(a6, &qword_1EE090510, qword_1EE090518, MEMORY[0x1E69B6A08]);
  __swift_destroy_boxed_opaque_existential_1(v29);
  __swift_destroy_boxed_opaque_existential_1(v30);
  sub_1D7759154(v39, &qword_1EE090510, qword_1EE090518, v27);
  __swift_destroy_boxed_opaque_existential_1(v40);
  __swift_destroy_boxed_opaque_existential_1(v41);
  __swift_destroy_boxed_opaque_existential_1(v37);
  __swift_destroy_boxed_opaque_existential_1(v38);
  return v26;
}

void sub_1D7758FA8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D773C9B8(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D7759010(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D78B62A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D7759064(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_1D7758FA8(0, a3, a4, a5, MEMORY[0x1E69E6720]);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1D77590E8(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D7759010(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D7759154(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1D7758FA8(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1D77591C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1D78B33C4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0;
  *(v5 + 72) = a1;
  *(v5 + 80) = a2;
  sub_1D774584C(a3, v5 + 88);
  sub_1D774584C(a4, v5 + 128);
  swift_unknownObjectRetain();
  sub_1D78B33B4();
  v14 = sub_1D78B33A4();
  v16 = v15;
  (*(v11 + 8))(v13, v10);
  *(v5 + 168) = v14;
  *(v5 + 176) = v16;
  v17 = *(v5 + 80);
  ObjectType = swift_getObjectType();
  v19 = *(v17 + 16);

  v19(v20, &protocol witness table for PaywallEventHandler, ObjectType, v17);
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v5;
}

uint64_t PaywallEventHandler.init(interactor:router:urlHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1D77591C4(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_1D7759380(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_1D77593FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
      *(result + 256) = 1;
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
      *(result + 248) = (a2 - 1);
      return result;
    }

    *(result + 256) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D7759490(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_1D77594F0(uint64_t a1, uint64_t a2)
{
  sub_1D7746430(0, &unk_1EE094000, &qword_1EE094010);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t PaywallEventHandler.tracker.setter(uint64_t a1)
{
  swift_beginAccess();
  sub_1D77594F0(a1, v1 + 32);
  return swift_endAccess();
}

uint64_t PaywallInteractor.tracker.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_tracker;
  swift_beginAccess();
  sub_1D7759634(a1, v1 + v3, &unk_1EE094000, &qword_1EE094010, &protocol descriptor for PaywallTrackerType);
  return swift_endAccess();
}

uint64_t sub_1D7759634(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_1D7758FA8(0, a3, a4, a5, MEMORY[0x1E69E6720]);
  (*(*(v7 - 8) + 40))(a2, a1, v7);
  return a2;
}

uint64_t OfferOverrideProvider.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_1D7759714()
{
  sub_1D7759748();

  return swift_deallocClassInstance();
}

id *sub_1D7759748()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 6));
  __swift_destroy_boxed_opaque_existential_1((v0 + 11));
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 21));

  return v0;
}

uint64_t sub_1D77597C0()
{

  return swift_deallocClassInstance();
}

void sub_1D775982C(char a1)
{
  v2 = OBJC_IVAR____TtC16NewsSubscription15PremiumSealView_isHidingSeal;
  if (v1[OBJC_IVAR____TtC16NewsSubscription15PremiumSealView_isHidingSeal] == 1)
  {
    [v1 bounds];
    if (v5 != 0.0 || v4 != 0.0)
    {
      v1[v2] = 0;
      v6 = *&v1[OBJC_IVAR____TtC16NewsSubscription15PremiumSealView_outerImageView];
      v7 = sub_1D77CD170();
      [v6 setImage_];

      v8 = *&v1[OBJC_IVAR____TtC16NewsSubscription15PremiumSealView_innerImageView];
      if (qword_1EE0905F8 != -1)
      {
        swift_once();
      }

      v9 = [qword_1EE09C2A8 imageWithRenderingMode_];
      [v8 setImage_];

      [v6 setHidden_];
      [v8 setHidden_];
      if (a1)
      {

        sub_1D77CCB90();
      }
    }
  }
}

uint64_t sub_1D77599B8(void *a1)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_1D7759A18()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D78B3594();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7759BC4();
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6D00], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D78B36E4();
  qword_1EE08F418 = result;
  return result;
}

void sub_1D7759BC4()
{
  if (!qword_1EE08F280)
  {
    sub_1D78B3594();
    sub_1D774E2DC(&unk_1EE08F288, MEMORY[0x1E69D6D20]);
    v0 = sub_1D78B36F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE08F280);
    }
  }
}

uint64_t sub_1D7759C58()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D78B3594();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7759BC4();
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6D00], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D78B36E4();
  qword_1EE08F3B0 = result;
  return result;
}

uint64_t sub_1D7759E28()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D78B3594();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7759BC4();
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6D00], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D78B36E4();
  qword_1EE08F408 = result;
  return result;
}

uint64_t sub_1D7759FF8()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D78B3594();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7759BC4();
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6D00], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D78B36E4();
  qword_1EE08F3E0 = result;
  return result;
}

uint64_t sub_1D775A1C8()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D78B3594();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7759BC4();
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6D00], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D78B36E4();
  qword_1EE08F3C8 = result;
  return result;
}

uint64_t sub_1D775A398()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D78B3594();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7759BC4();
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6D00], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D78B36E4();
  qword_1EE08F430 = result;
  return result;
}

uint64_t sub_1D775A568()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D78B3594();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7759BC4();
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6D00], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D78B36E4();
  qword_1EE08F3F8 = result;
  return result;
}

BOOL AppLaunchMethod.isDirect.getter()
{
  v1 = type metadata accessor for AppLaunchMethod(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7752650(v0, v3, type metadata accessor for AppLaunchMethod);
  v4 = type metadata accessor for AppLaunchMethod.IndirectMethod(0);
  v5 = (*(*(v4 - 8) + 48))(v3, 1, v4);
  if (v5 != 1)
  {
    sub_1D789A164(v3, type metadata accessor for AppLaunchMethod);
  }

  return v5 == 1;
}

uint64_t sub_1D775A85C()
{
  if (qword_1EE093E80 != -1)
  {
    swift_once();
  }

  v2[0] = byte_1EE09C310;
  v3 = qword_1EE09C318;
  v4 = unk_1EE09C320;

  v0 = sub_1D775A8FC(v2);

  return v0;
}

uint64_t sub_1D775A8FC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D774FE1C();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D78BCAB0;
  sub_1D78B6504();
  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = sub_1D775ABD4();
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  sub_1D78B60A4();
  sub_1D78B42C4();

  sub_1D773F004(0, &qword_1EE08FE10);
  v4 = sub_1D78B6104();
  type metadata accessor for State(0);
  sub_1D78B60C4();

  v5 = OfferPlacement.rawValue.getter();
  v7 = v6;

  MEMORY[0x1DA702FF0](v5, v7);

  if (v2)
  {
    v8 = v1;
  }

  else
  {
    v8 = 0;
  }

  if (v2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  MEMORY[0x1DA702FF0](v8, v9);

  MEMORY[0x1EEE9AC00](v10);
  v11 = sub_1D78B3A84();

  return v11;
}

void sub_1D775AB9C()
{
  byte_1EE09C310 = 4;
  qword_1EE09C318 = 0;
  unk_1EE09C320 = 0;
}

unint64_t sub_1D775ABD4()
{
  result = qword_1EE0901D0;
  if (!qword_1EE0901D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0901D0);
  }

  return result;
}

void sub_1D775AC3C(uint64_t a1, unint64_t *a2)
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

void sub_1D775AC88(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 applicationState];

  *a1 = v3;
  *(a1 + 8) = 0;
}

unint64_t OfferPlacement.rawValue.getter()
{
  result = 0x73756C507377656ELL;
  switch(*v0)
  {
    case 1:
    case 7:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
    case 0xA:
    case 0xB:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 8:
    case 9:
      return result;
    case 0xC:
      result = 0x6E69776F6C6C6F66;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1D775AE8C(void *a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  sub_1D78B41F4();
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  *(v14 + 32) = a4;
  *(v14 + 40) = a5;
  *(v14 + 48) = a1;
  *(v14 + 56) = a6;
  *(v14 + 64) = a7 & 1;

  v15 = a1;
  v16 = sub_1D78B4014();
  sub_1D78B4084();

  v17 = sub_1D78B4014();
  v18 = sub_1D78B40D4();

  return v18;
}

uint64_t sub_1D775AFD4()
{

  return MEMORY[0x1EEE6BDD0](v0, 65, 7);
}

uint64_t sub_1D775B014(uint64_t a1)
{
  v2 = (a1 + OBJC_IVAR____TtC16NewsSubscription12OfferManager_featureAvailability);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  if ((*(v4 + 48))(v3, v4))
  {
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    sub_1D78B60A4();
    sub_1D78B42C4();
    v5 = (a1 + OBJC_IVAR____TtC16NewsSubscription12OfferManager_configurableOffersConfigFetcher);
    v6 = *(a1 + OBJC_IVAR____TtC16NewsSubscription12OfferManager_configurableOffersConfigFetcher + 24);
    v7 = v5[4];
    __swift_project_boxed_opaque_existential_1(v5, v6);
    return (*(v7 + 8))(v6, v7);
  }

  else
  {
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    sub_1D78B60A4();
    sub_1D78B42C4();
    sub_1D775DEFC(0, &qword_1EE0952B0, &type metadata for ConfigurableOfferConfigs, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D78B4104();
  }
}

uint64_t sub_1D775B214()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D78B3594();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7759BC4();
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6D00], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D78B36E4();
  qword_1EE08F300 = result;
  return result;
}

uint64_t ConfigurableOffersConfigFetcher.fetchConfiguration()()
{
  sub_1D775B554();
  sub_1D78B41F4();

  v0 = sub_1D78B4014();
  sub_1D775BA60();
  sub_1D78B40A4();

  v1 = sub_1D78B4014();
  sub_1D78B40B4();

  v2 = sub_1D78B4014();
  v3 = sub_1D78B40D4();

  return v3;
}

unint64_t sub_1D775B554()
{
  result = qword_1EE08FD20;
  if (!qword_1EE08FD20)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE08FD20);
  }

  return result;
}

void sub_1D775B5B8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D773C9B8(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D775B620(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D773C9B8(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D775B688(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D775B6EC(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1D773C9B8(255, a3);
    v4 = sub_1D78B66F4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D775B744(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D775B7A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D775B80C()
{
  sub_1D775B7A8(0, &unk_1EE0951F0, sub_1D775B554, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D78B4174();
}

void sub_1D775B8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(a5 + 24);
  v10 = swift_allocObject();
  v10[2] = sub_1D775C1FC;
  v10[3] = v8;
  v10[4] = a5;
  v12[4] = sub_1D775C194;
  v12[5] = v10;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1D7752E68;
  v12[3] = &block_descriptor_30;
  v11 = _Block_copy(v12);

  [v9 fetchAppConfigurationIfNeededWithCompletion_];
  _Block_release(v11);
}

uint64_t sub_1D775B9E8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D775BA20()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

unint64_t sub_1D775BA60()
{
  result = qword_1EE08FF00;
  if (!qword_1EE08FF00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE08FF00);
  }

  return result;
}

uint64_t sub_1D775BAC0()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D78B3694();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x1E69E6530];
  sub_1D774BB74(0, &qword_1EE095430, MEMORY[0x1E69E6530], MEMORY[0x1E69D6F28], MEMORY[0x1E69D6EB0]);
  v11[1] = 0;
  *v7 = sub_1D78B5C74();
  v7[1] = v9;
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6E98], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  sub_1D775BF2C(0, &qword_1EE08FAB8, &qword_1EE095458, v8);
  sub_1D775C088(0, &qword_1EE095458, v8, MEMORY[0x1E69D6EA8]);
  *(swift_allocObject() + 16) = xmmword_1D78CA870;
  v11[0] = 0;
  sub_1D78B36A4();
  v11[0] = 60;
  sub_1D78B36A4();
  v11[0] = 180;
  sub_1D78B36A4();
  v11[0] = 300;
  sub_1D78B36A4();
  v11[0] = 600;
  sub_1D78B36A4();
  v11[0] = 900;
  sub_1D78B36A4();
  v11[0] = 3600;
  sub_1D78B36A4();
  result = sub_1D78B36D4();
  qword_1EE095588 = result;
  return result;
}

void sub_1D775BF2C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1D775C088(255, a3, a4, MEMORY[0x1E69D6EA8]);
    v5 = sub_1D78B66F4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D775BF98(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D775BFE8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D775C038(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D775C088(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1D775C0D8()
{
  result = qword_1EE093200[0];
  if (!qword_1EE093200[0])
  {
    type metadata accessor for BundlePurchasePrewarmer();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE093200);
  }

  return result;
}

uint64_t sub_1D775C12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE454E0](a1, a2, ObjectType, a6);
}

uint64_t sub_1D775C194()
{
  v1 = *(v0 + 16);
  v2 = [*(*(v0 + 32) + 24) appConfiguration];
  v1();

  return swift_unknownObjectRelease();
}

uint64_t sub_1D775C258(id *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  if (([*a1 respondsToSelector_] & 1) != 0 && (v5 = objc_msgSend(v4, sel_configurableOffersMappingResourceId)) != 0)
  {
    v6 = v5;
    sub_1D78B5C74();

    __swift_project_boxed_opaque_existential_1((a3 + 32), *(a3 + 56));
    v7 = sub_1D78B5914();

    return v7;
  }

  else
  {
    sub_1D78730B4();
    swift_allocError();
    *v9 = 1;
    return swift_willThrow();
  }
}

uint64_t sub_1D775C368@<X0>(id *a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v7 = sub_1D78B3294();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v24 - v12;
  v14 = [*a1 fileURL];
  if (v14)
  {
    v15 = v14;
    sub_1D78B3254();

    (*(v8 + 32))(v13, v11, v7);
    v16 = sub_1D78B32A4();
    if (v3)
    {
      return (*(v8 + 8))(v13, v7);
    }

    else
    {
      v20 = v16;
      v21 = v17;
      sub_1D775C5B4();
      sub_1D78B37F4();
      (*(v8 + 8))(v13, v7);
      sub_1D775DD6C(v20, v21);
      v22 = v25;
      v23 = *(a2 + 72);
      *(a2 + 72) = v25;

      result = sub_1D775DDC0(v23);
      *a3 = v22;
    }
  }

  else
  {
    sub_1D78730B4();
    swift_allocError();
    *v19 = 2;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1D775C5B4()
{
  result = qword_1EE08EC28;
  if (!qword_1EE08EC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08EC28);
  }

  return result;
}

uint64_t sub_1D775C608(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1D775C658(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t ConfigurableOfferConfigs.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v19 = a2;
  sub_1D7893E98(0, &qword_1EE08F250, sub_1D78938D0, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v20 = &v18 - v5;
  sub_1D775C9CC(0, &qword_1EE08E500, sub_1D775CA34, &type metadata for ConfigurableOfferConfigs.CodingKeys, MEMORY[0x1E69E6F48]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D775CA34();
  sub_1D78B6874();
  if (!v2)
  {
    v11 = v8;
    v12 = v19;
    sub_1D78938D0();
    v14 = v13;
    sub_1D789398C();
    sub_1D78B65C4();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v20, 1, v14) == 1)
    {
      (*(v11 + 8))(v10, v7);
      sub_1D78939E4(v20);
      v16 = 0;
    }

    else
    {
      v16 = sub_1D78B3A04();
      (*(v11 + 8))(v10, v7);
      (*(v15 + 8))(v20, v14);
    }

    *v12 = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D775C9CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1D775CA34()
{
  result = qword_1EE08EC40;
  if (!qword_1EE08EC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08EC40);
  }

  return result;
}

unint64_t sub_1D775CA8C()
{
  result = qword_1EE08EC30;
  if (!qword_1EE08EC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08EC30);
  }

  return result;
}

unint64_t sub_1D775CAE4()
{
  result = qword_1EE08EC38;
  if (!qword_1EE08EC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08EC38);
  }

  return result;
}

unint64_t sub_1D775CB38()
{
  result = qword_1EE08EC90;
  if (!qword_1EE08EC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08EC90);
  }

  return result;
}

uint64_t sub_1D775CBA4(uint64_t result, int a2, int a3)
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

uint64_t sub_1D775CBF8(uint64_t a1, int a2)
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

uint64_t ConfigurableOfferConfig.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D775C9CC(0, &qword_1EE08E508, sub_1D775D200, &type metadata for ConfigurableOfferConfig.CodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v28 - v8;
  v10 = a1[3];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1D775D200();
  sub_1D78B6874();
  if (!v2)
  {
    v11 = v7;
    LOBYTE(v42) = 0;
    v12 = v6;
    v13 = sub_1D78B65E4();
    v15 = v14;
    sub_1D775D41C();
    LOBYTE(v41) = 1;
    sub_1D775D47C(&qword_1EE08E630, sub_1D775D4F4);
    sub_1D78B6614();
    v16 = v42;
    sub_1D7893E98(0, &qword_1EE08E5E0, sub_1D775D41C, MEMORY[0x1E69E62F8]);
    LOBYTE(v40) = 2;
    sub_1D7893EFC();
    sub_1D78B65C4();
    v35 = v16;
    v17 = v41;
    LOBYTE(v40) = 3;
    v32 = sub_1D78B65E4();
    v33 = v18;
    v34 = v17;
    LOBYTE(v40) = 4;
    v29 = sub_1D78B65E4();
    v31 = v19;
    sub_1D775D7EC();
    v21 = v20;
    LOBYTE(v39) = 5;
    sub_1D775D844(&qword_1EE08E5B0);
    v30 = v21;
    sub_1D78B65C4();
    v28 = v40;
    LOBYTE(v38) = 6;
    sub_1D78B65C4();
    v30 = v39;
    v37 = 7;
    sub_1D775D8A4();
    sub_1D78B65C4();
    (*(v11 + 8))(v9, v12);
    v23 = v38;
    *a2 = v13;
    a2[1] = v15;
    v24 = v34;
    a2[2] = v35;
    a2[3] = v24;
    v25 = v33;
    a2[4] = v32;
    a2[5] = v25;
    v26 = v31;
    a2[6] = v29;
    a2[7] = v26;
    v27 = v30;
    a2[8] = v28;
    a2[9] = v27;
    a2[10] = v23;
  }

  return __swift_destroy_boxed_opaque_existential_1(v36);
}

unint64_t sub_1D775D200()
{
  result = qword_1EE08ECB0;
  if (!qword_1EE08ECB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08ECB0);
  }

  return result;
}

unint64_t sub_1D775D258()
{
  result = qword_1EE08ECA0;
  if (!qword_1EE08ECA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08ECA0);
  }

  return result;
}

unint64_t sub_1D775D2B0()
{
  result = qword_1EE08ECA8;
  if (!qword_1EE08ECA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08ECA8);
  }

  return result;
}

unint64_t sub_1D775D304()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000014;
    if (v1 != 6)
    {
      v5 = 0x617461646174656DLL;
    }

    v6 = 0x656449726566666FLL;
    if (v1 != 4)
    {
      v6 = 0xD000000000000014;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x656C746974;
    v3 = 0xD00000000000001FLL;
    if (v1 != 2)
    {
      v3 = 0xD000000000000011;
    }

    if (*v0)
    {
      v2 = 0xD000000000000015;
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
}

void sub_1D775D41C()
{
  if (!qword_1EE08E638)
  {
    v0 = sub_1D78B5BF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE08E638);
    }
  }
}

uint64_t sub_1D775D47C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D775D41C();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D775D4F4()
{
  result = qword_1EE08ED58;
  if (!qword_1EE08ED58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08ED58);
  }

  return result;
}

uint64_t sub_1D775D548(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_1D775D58C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t MerchandisingItemValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D78B6864();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    v5 = sub_1D78B6744();
    __swift_destroy_boxed_opaque_existential_1(v7);
    *a2 = v5;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

void sub_1D775D7EC()
{
  if (!qword_1EE08E5B8)
  {
    v0 = sub_1D78B5FA4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE08E5B8);
    }
  }
}

uint64_t sub_1D775D844(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D775D7EC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D775D8A4()
{
  result = qword_1EE08E968;
  if (!qword_1EE08E968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08E968);
  }

  return result;
}

uint64_t ConfigurableOfferConfigMetadata.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v13 = a2;
  sub_1D775C9CC(0, &qword_1EE08E4F0, sub_1D775DB30, &type metadata for ConfigurableOfferConfigMetadata.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D775DB30();
  sub_1D78B6874();
  if (!v2)
  {
    v9 = v13;
    sub_1D7894E58(0, &qword_1EE090010, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1D775DCB0(&qword_1EE08E5D0);
    sub_1D78B65C4();
    if (v14)
    {
      v10 = v14;
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
    }

    (*(v6 + 8))(v8, v5);
    *v9 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D775DB30()
{
  result = qword_1EE08E980;
  if (!qword_1EE08E980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08E980);
  }

  return result;
}

unint64_t sub_1D775DB88()
{
  result = qword_1EE08E970;
  if (!qword_1EE08E970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08E970);
  }

  return result;
}

unint64_t sub_1D775DBE0()
{
  result = qword_1EE08E978;
  if (!qword_1EE08E978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08E978);
  }

  return result;
}

uint64_t sub_1D775DC34(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D7777D44(255, &qword_1EE090010, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D775DCB0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D7894E58(255, &qword_1EE090010, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1D775DD6C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1D775DDC0(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1D775DDDC()
{
  sub_1D775DEFC(0, &unk_1EE095288, &type metadata for Offer, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D78B4174();
}

void sub_1D775DEAC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D775DEFC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D775DF90(void (*a1)(void), uint64_t a2, void (*a3)(void), uint64_t a4, int a5, int a6, unint64_t a7, uint64_t a8, char *a9, uint64_t a10, char a11, uint64_t a12)
{
  v85 = a6;
  v88 = a3;
  v89 = a4;
  v83 = a1;
  v84 = a2;
  v15 = sub_1D78B5254();
  v81 = *(v15 - 8);
  v82 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v79 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1D78B52A4();
  v78 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v77 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D774FE1C();
  v87 = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1D78BCB50;
  v76 = a5;
  LOBYTE(v129) = a5;
  v20 = OfferPlacement.rawValue.getter();
  v22 = v21;
  v23 = MEMORY[0x1E69E6158];
  *(v19 + 56) = MEMORY[0x1E69E6158];
  v24 = sub_1D775ABD4();
  *(v19 + 64) = v24;
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  v86 = a7;
  *&v140 = a7;
  *(&v140 + 1) = a8;
  sub_1D775DEFC(0, &qword_1EE090120, v23, MEMORY[0x1E69E6720]);

  v25 = sub_1D78B5CC4();
  *(v19 + 96) = v23;
  *(v19 + 104) = v24;
  *(v19 + 72) = v25;
  *(v19 + 80) = v26;
  sub_1D78B60A4();
  sub_1D78B42C4();

  v27 = objc_opt_self();
  v28 = &off_1E84E2000;
  v29 = [v27 mainBundle];
  v30 = &off_1E84E2000;
  v31 = [v29 bundleIdentifier];

  if (!v31)
  {
    goto LABEL_37;
  }

  v32 = sub_1D78B5C74();
  v34 = v33;

  if (v32 == 0x6C7070612E6D6F63 && v34 == 0xEE007377656E2E65)
  {

    v23 = MEMORY[0x1E69E6158];
    goto LABEL_13;
  }

  v35 = sub_1D78B6724();

  v23 = MEMORY[0x1E69E6158];
  v28 = &off_1E84E2000;
  v30 = &off_1E84E2000;
  if ((v35 & 1) == 0)
  {
LABEL_37:
    v36 = [v27 mainBundle];
    v37 = [v36 bundleIdentifier];

    if (!v37)
    {
      goto LABEL_18;
    }

    v38 = sub_1D78B5C74();
    v40 = v39;

    if (v38 == 0xD000000000000010 && 0x80000001D78CF0A0 == v40)
    {

      goto LABEL_13;
    }

    v41 = sub_1D78B6724();

    v28 = &off_1E84E2000;
    v30 = &off_1E84E2000;
    if ((v41 & 1) == 0)
    {
LABEL_18:
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_1D78BCAB0;
      v48 = [v27 v28[358]];
      v49 = [v48 v30[359]];

      if (v49)
      {
        v50 = sub_1D78B5C74();
        v52 = v51;

        *(v47 + 56) = v23;
        *(v47 + 64) = v24;
        if (v52)
        {
LABEL_26:
          *(v47 + 32) = v50;
          *(v47 + 40) = v52;
          sub_1D78B60A4();
          sub_1D78B42C4();

          sub_1D77E55A8();
          v45 = swift_allocError();
          v46 = 8;
          goto LABEL_27;
        }

        v50 = 0;
      }

      else
      {
        v50 = 0;
        *(v47 + 56) = v23;
        *(v47 + 64) = v24;
      }

      v52 = 0xE000000000000000;
      goto LABEL_26;
    }
  }

LABEL_13:
  v42 = [*&a9[OBJC_IVAR____TtC16NewsSubscription12OfferManager_bundleSubscriptionManager] cachedSubscription];
  v43 = [v42 isServicesBundleUser];

  if (v43)
  {
    sub_1D78B60A4();
    sub_1D78B42C4();
    sub_1D77E55A8();
    v45 = swift_allocError();
    v46 = 6;
LABEL_27:
    *v44 = v46;
    v88();

    return;
  }

  if ((a11 & 1) == 0 && a10 == 2)
  {
    sub_1D78B60A4();
    sub_1D78B42C4();
    sub_1D77E55A8();
    v45 = swift_allocError();
    v46 = 7;
    goto LABEL_27;
  }

  v53 = v85;
  LOBYTE(v118) = v85;
  v54 = v86;
  *(&v118 + 1) = v86;
  *&v119 = a8;
  v75 = a12;
  *&v107 = a12;
  sub_1D775F05C(&v118, &v107, &v129);
  v148 = v137;
  v149 = v138;
  v150 = v139;
  v144 = v133;
  v145 = v134;
  v147 = v136;
  v146 = v135;
  v140 = v129;
  v141 = v130;
  v143 = v132;
  v142 = v131;
  if (sub_1D775F3CC(&v140) == 1)
  {
    LOBYTE(v90) = v53;
    v91 = v54;
    v92 = a8;

    sub_1D78B3FC4();

    v115 = v104;
    v116 = v105;
    v111 = v100;
    v112 = v101;
    v113 = v102;
    v114 = v103;
    v107 = v96;
    v108 = v97;
    v109 = v98;
    v110 = v99;
    v126 = v104;
    v127 = v105;
    v122 = v100;
    v123 = v101;
    v124 = v102;
    v125 = v103;
    v118 = v96;
    v119 = v97;
    v117 = v106;
    v128 = v106;
    v120 = v98;
    v121 = v99;
    if (sub_1D775F3CC(&v118) == 1)
    {
      v55 = swift_allocObject();
      *(v55 + 16) = a9;
      *(v55 + 24) = v76;
      *(v55 + 32) = v53;
      *(v55 + 40) = v54;
      *(v55 + 48) = a8;
      v56 = v83;
      v57 = v84;
      *(v55 + 56) = v75;
      *(v55 + 64) = v56;
      v58 = v88;
      v59 = v89;
      *(v55 + 72) = v57;
      *(v55 + 80) = v58;
      *(v55 + 88) = v59;
      *&v98 = sub_1D775FBB0;
      *(&v98 + 1) = v55;
      *&v96 = MEMORY[0x1E69E9820];
      *(&v96 + 1) = 1107296256;
      *&v97 = sub_1D775FB6C;
      *(&v97 + 1) = &block_descriptor_15;
      v60 = _Block_copy(&v96);

      v61 = a9;
      v62 = v77;
      sub_1D78B5274();
      v90 = MEMORY[0x1E69E7CC0];
      sub_1D77465B4(&qword_1EE090300, MEMORY[0x1E69E7F60]);
      sub_1D7744248(0, &qword_1EE090040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
      sub_1D775F4A4();
      v63 = v79;
      v64 = v82;
      sub_1D78B6324();
      MEMORY[0x1DA7033B0](0, v62, v63, v60);
      _Block_release(v60);
      (*(v81 + 8))(v63, v64);
      (*(v78 + 8))(v62, v80);

      return;
    }

    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_1D78BCAB0;
    v90 = 0;
    v91 = 0xE000000000000000;
    v104 = v126;
    v105 = v127;
    v106 = v128;
    v100 = v122;
    v101 = v123;
    v102 = v124;
    v103 = v125;
    v96 = v118;
    v97 = v119;
    v98 = v120;
    v99 = v121;
    sub_1D78B6504();
    v67 = v90;
    v68 = v91;
    *(v66 + 56) = v23;
    *(v66 + 64) = v24;
    *(v66 + 32) = v67;
    *(v66 + 40) = v68;
    sub_1D78B60A4();
    sub_1D78B42C4();

    v104 = v126;
    v105 = v127;
    v106 = v128;
    v100 = v122;
    v101 = v123;
    v102 = v124;
    v103 = v125;
    v96 = v118;
    v97 = v119;
    v98 = v120;
    v99 = v121;
    v83(&v96);
    v69 = &v107;
  }

  else
  {
    v126 = v137;
    v127 = v138;
    v128 = v139;
    v122 = v133;
    v123 = v134;
    v124 = v135;
    v125 = v136;
    v118 = v129;
    v119 = v130;
    v120 = v131;
    v121 = v132;
    LOBYTE(v96) = v53;
    *(&v96 + 1) = v54;
    *&v97 = a8;
    sub_1D77E5A14(&v129, &v107, &qword_1EE090600, &type metadata for Offer);

    sub_1D77E5A14(&v129, &v107, &qword_1EE090600, &type metadata for Offer);

    sub_1D78B3FD4();

    if (BYTE8(v142) && BYTE8(v142) == 1)
    {
      v126 = v137;
      v127 = v138;
      v128 = v139;
      v122 = v133;
      v123 = v134;
      v124 = v135;
      v125 = v136;
      v118 = v129;
      v119 = v130;
      v120 = v131;
      v121 = v132;
      v65 = v85;
      LOBYTE(v107) = v85;
      *(&v107 + 1) = v86;
      *&v108 = a8;

      sub_1D78B3FD4();
    }

    else
    {
      sub_1D77E5878(&v129, &qword_1EE090600, &type metadata for Offer);
      v65 = v85;
    }

    LOBYTE(v90) = 0;
    LOBYTE(v118) = v65;
    v70 = v86;
    *(&v118 + 1) = v86;
    *&v119 = a8;
    *&v96 = v75;
    sub_1D77DE1C8(&v90, &v118, &v96, &v107);
    v126 = v115;
    v127 = v116;
    v128 = v117;
    v122 = v111;
    v123 = v112;
    v124 = v113;
    v125 = v114;
    v118 = v107;
    v119 = v108;
    v120 = v109;
    v121 = v110;
    nullsub_1(&v118);
    v104 = v126;
    v105 = v127;
    v106 = v128;
    v100 = v122;
    v101 = v123;
    v102 = v124;
    v103 = v125;
    v96 = v118;
    v97 = v119;
    v98 = v120;
    v99 = v121;
    v93 = v65;
    v94 = v70;
    v95 = a8;

    sub_1D778CEAC(&v107, &v90);
    sub_1D78B3FD4();

    v104 = v148;
    v105 = v149;
    v106 = v150;
    v100 = v144;
    v101 = v145;
    v102 = v146;
    v103 = v147;
    v96 = v140;
    v97 = v141;
    v98 = v142;
    v99 = v143;
    sub_1D77DEDC4(&v96);
    v104 = v148;
    v105 = v149;
    v106 = v150;
    v100 = v144;
    v101 = v145;
    v102 = v146;
    v103 = v147;
    v96 = v140;
    v97 = v141;
    v98 = v142;
    v99 = v143;
    LOBYTE(v90) = v65;
    v91 = v70;
    v92 = a8;
    sub_1D77DF138(&v96, &v90);
    v104 = v148;
    v105 = v149;
    v106 = v150;
    v100 = v144;
    v101 = v145;
    v102 = v146;
    v103 = v147;
    v96 = v140;
    v97 = v141;
    v98 = v142;
    v99 = v143;
    sub_1D77DF67C(&v96);
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_1D78BCAB0;
    v90 = 0;
    v91 = 0xE000000000000000;
    v104 = v148;
    v105 = v149;
    v106 = v150;
    v100 = v144;
    v101 = v145;
    v102 = v146;
    v103 = v147;
    v96 = v140;
    v97 = v141;
    v98 = v142;
    v99 = v143;
    sub_1D78B6504();
    v72 = v90;
    v73 = v91;
    *(v71 + 56) = v23;
    *(v71 + 64) = v24;
    *(v71 + 32) = v72;
    *(v71 + 40) = v73;
    sub_1D78B60A4();
    sub_1D78B42C4();

    v104 = v148;
    v105 = v149;
    v106 = v150;
    v100 = v144;
    v101 = v145;
    v102 = v146;
    v103 = v147;
    v96 = v140;
    v97 = v141;
    v98 = v142;
    v99 = v143;
    v83(&v96);
    sub_1D778D0B0(&v107);
    v69 = &v129;
  }

  sub_1D77E5878(v69, &qword_1EE090600, &type metadata for Offer);
}

uint64_t sub_1D775EE40()
{

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1D775EE98()
{
  v0 = sub_1D78B3694();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (&v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_1D78B3684();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Settings.BestOffers.ConfigOverrides(0);
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6E90], v4);
  *v3 = sub_1D78B5C74();
  v3[1] = v8;
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E98], v0);
  result = sub_1D78B35A4();
  qword_1EE0955F8 = result;
  return result;
}

__n128 sub_1D775F05C@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  swift_getObjectType();
  v6 = *a1;
  v13 = *(a1 + 8);
  v7 = *a2;
  if (qword_1EE0955F0 != -1)
  {
    swift_once();
  }

  if ((sub_1D78B35C4() & 1) == 0)
  {
    goto LABEL_8;
  }

  if (qword_1EC9C8598 != -1)
  {
    swift_once();
  }

  sub_1D77465B4(&qword_1EC9CA428, type metadata accessor for OfferManager);
  sub_1D78B3574();
  if (v18 <= 2)
  {
    v17 = v18;
    v15[0] = v6;
    v16 = v13;
    v14 = v7;
    sub_1D77DE1C8(&v17, v15, &v14, v19);
    nullsub_1(v19);
  }

  else
  {
LABEL_8:
    sub_1D775F3AC(v19);
  }

  v8 = v19[9];
  *(a3 + 128) = v19[8];
  *(a3 + 144) = v8;
  *(a3 + 160) = v20;
  v9 = v19[5];
  *(a3 + 64) = v19[4];
  *(a3 + 80) = v9;
  v10 = v19[7];
  *(a3 + 96) = v19[6];
  *(a3 + 112) = v10;
  v11 = v19[1];
  *a3 = v19[0];
  *(a3 + 16) = v11;
  result = v19[3];
  *(a3 + 32) = v19[2];
  *(a3 + 48) = result;
  return result;
}

uint64_t sub_1D775F284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1D78B3684();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v6 + 16))(v8, a4, v5);
  v9 = sub_1D78B35B4();
  (*(v6 + 8))(a4, v5);
  return v9;
}

double sub_1D775F3AC(uint64_t a1)
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

uint64_t sub_1D775F3D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D775F3F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D775F45C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

unint64_t sub_1D775F4A4()
{
  result = qword_1EE090030;
  if (!qword_1EE090030)
  {
    sub_1D774BFB4(255, &qword_1EE090040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE090030);
  }

  return result;
}

void sub_1D775F538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = *&a5[OBJC_IVAR____TtC16NewsSubscription23BundlePurchasePrewarmer_purchaseManager + 8];
  ObjectType = swift_getObjectType();

  sub_1D775F820(a6, a7, ObjectType, v13);
  v15 = swift_allocObject();
  v15[2] = a5;
  v15[3] = sub_1D7752FB0;
  v15[4] = v12;
  v16 = a5;

  v17 = sub_1D78B4014();
  sub_1D78B4094();

  v18 = swift_allocObject();
  *(v18 + 16) = sub_1D7752FB0;
  *(v18 + 24) = v12;
  v19 = sub_1D78B4014();
  sub_1D78B40D4();
}

uint64_t sub_1D775F6D8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D775F710()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_1D775F754()
{
  if (!qword_1EE095230)
  {
    sub_1D773F004(255, &qword_1EE08FF20);
    v0 = sub_1D78B4184();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE095230);
    }
  }
}

uint64_t sub_1D775F7BC()
{
  sub_1D775F754();
  swift_allocObject();
  return sub_1D78B4174();
}

void sub_1D775F854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = *(a5 + OBJC_IVAR____TtC16NewsSubscription15PurchaseManager_internalPurchaseManager);

  v16 = sub_1D78B5C44();
  v17 = [v15 fetchPurchaseMetadataForPurchaseID:v16 restorePurchase:a8 & 1];

  v18 = sub_1D78B4014();
  v19 = swift_allocObject();
  v19[2] = sub_1D7752FB0;
  v19[3] = v14;
  v19[4] = a3;
  v19[5] = a4;
  v30 = sub_1D779C648;
  v31 = v19;
  v26 = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_1D77CB678;
  v29 = &block_descriptor_38;
  v20 = _Block_copy(&v26);

  v21 = [v17 thenOn:v18 then:v20];
  _Block_release(v20);

  if (v21)
  {

    v22 = sub_1D78B4014();
    v23 = swift_allocObject();
    *(v23 + 16) = a3;
    *(v23 + 24) = a4;
    v30 = sub_1D779C654;
    v31 = v23;
    v26 = MEMORY[0x1E69E9820];
    v27 = 1107296256;
    v28 = sub_1D7797914;
    v29 = &block_descriptor_44;
    v24 = _Block_copy(&v26);

    v25 = [v21 errorOn:v22 error:v24];
    _Block_release(v24);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D775FAE0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D775FB18()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D775FB6C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_1D775FBF0(char *a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v12 = qword_1EE09C268;
  sub_1D78B60A4();
  v35 = v12;
  sub_1D78B42C4();
  v13 = [objc_opt_self() bag];
  LOBYTE(aBlock[0]) = a2;
  OfferPlacement.rawValue.getter();
  v42 = objc_allocWithZone(MEMORY[0x1E698C9A0]);
  swift_unknownObjectRetain();
  v14 = sub_1D78B5C44();
  v15 = sub_1D78B5C44();
  v16 = sub_1D78B5C44();

  v17 = sub_1D78B5C44();
  v18 = [v42 initWithBag:v13 clientIdentifier:v14 clientVersion:v15 placement:v16 serviceType:v17];
  swift_unknownObjectRelease();

  v19 = [*&a1[OBJC_IVAR____TtC16NewsSubscription12OfferManager_configurationManager] configuration];
  if (v19)
  {
    v20 = v19;
    if ([v19 respondsToSelector_])
    {
      v21 = [v20 bestOfferRequestTimeoutDurationInSeconds];
      swift_unknownObjectRelease();
      v22 = v21;
    }

    else
    {
      swift_unknownObjectRelease();
      v22 = 5.0;
    }

    v23 = [objc_opt_self() sharedAccount];
    v24 = [v23 activeiTunesAccount];

    [v18 setAccount_];
    if (a5)
    {
      v25 = a4;
      v26 = sub_1D78B5C44();
    }

    else
    {
      v26 = 0;
      v25 = a4;
    }

    [v18 setOfferHints_];

    sub_1D774FE1C();
    v27 = swift_allocObject();
    v28 = MEMORY[0x1E69E63B0];
    *(v27 + 16) = xmmword_1D78BCAB0;
    v29 = MEMORY[0x1E69E6438];
    *(v27 + 56) = v28;
    *(v27 + 64) = v29;
    *(v27 + 32) = v22;
    sub_1D78B60A4();
    sub_1D78B42C4();

    v30 = [v18 performWithFetchOnly];
    v31 = [v30 promiseWithTimeout_];

    v32 = swift_allocObject();
    *(v32 + 16) = a1;
    *(v32 + 24) = a3;
    *(v32 + 32) = v25;
    *(v32 + 40) = a5;
    *(v32 + 48) = a6;
    *(v32 + 56) = a7;
    *(v32 + 64) = a8;
    *(v32 + 72) = a9;
    *(v32 + 80) = a10;
    aBlock[4] = sub_1D77E576C;
    aBlock[5] = v32;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D7780F60;
    aBlock[3] = &block_descriptor_23_1;
    v33 = _Block_copy(aBlock);

    v34 = a1;

    [v31 addFinishBlock_];
    _Block_release(v33);
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D7760080()
{

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1D776013C(uint64_t a1, int a2)
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

uint64_t sub_1D776015C(uint64_t result, int a2, int a3)
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

uint64_t sub_1D7760188(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D77601A8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

void *sub_1D77601EC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1D7760228@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D78B5C74();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D7760364()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D776039C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D77603E8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D7760420()
{
  v1 = type metadata accessor for PurchaseContext();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination();
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v12 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x1EEE6BDD0](v0, v12 + 8, v2 | 7);
}

uint64_t sub_1D7760640()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 376, 7);
}

uint64_t sub_1D77606A8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 368, 7);
}

uint64_t sub_1D7760710()
{
  MEMORY[0x1DA7044F0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D77607DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D7760814()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D776084C()
{
  v1 = type metadata accessor for PurchaseContext();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  sub_1D7781F70(*(v0 + 16), *(v0 + 24));

  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination();
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v12 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x1EEE6BDD0](v0, v12 + 8, v2 | 7);
}

uint64_t sub_1D7760A78()
{
  v1 = type metadata accessor for PurchaseContext();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 49) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  sub_1D7781F70(*(v0 + 40), *(v0 + 48));
  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination();
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D7760C98()
{
  v1 = type metadata accessor for PurchaseContext();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination();
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1D7760EC4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7760EFC()
{
  MEMORY[0x1DA7044F0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7760F34()
{
  v1 = type metadata accessor for PurchaseContext();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination();
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1D7761168()
{
  v1 = type metadata accessor for PurchaseContext();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  sub_1D7781F70(*(v0 + 40), *(v0 + 48));

  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination();
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D7761394()
{
  v1 = type metadata accessor for PurchaseContext();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination();
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D77615A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D77615E8()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D7761654()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 472, 7);
}

uint64_t sub_1D77616BC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 464, 7);
}

uint64_t sub_1D7761724()
{
  MEMORY[0x1DA7044F0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D776175C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7761794()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D77617CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D7761804()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D776184C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D776188C()
{
  MEMORY[0x1DA7044F0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D77618C4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D7761904()
{
  v1 = type metadata accessor for PurchaseContext();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination();
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D7761B28()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D7761B60()
{
  MEMORY[0x1DA7044F0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7761BB0()
{
  v1 = type metadata accessor for PurchaseContext();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination();
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v12 = (((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x1EEE6BDD0](v0, v12 + 8, v2 | 7);
}

uint64_t sub_1D7761DF8()
{
  v1 = type metadata accessor for PurchaseContext();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination();
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1D776201C()
{
  v1 = type metadata accessor for PurchaseContext();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination();
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D7762228()
{
  v1 = type metadata accessor for PurchaseContext();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination();
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D776243C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7762490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for PurchaseContext();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D776253C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for PurchaseContext();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D7762610()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D77626A0()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D7762718()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1D7762768()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D77627DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D776281C()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1D776289C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D77628D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D7762914()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D776294C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D77629B0()
{
  MEMORY[0x1DA7044F0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D77629E8()
{
  v1 = type metadata accessor for PurchaseContext();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination();
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D7762BF4()
{

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1D7762C3C()
{
  v1 = type metadata accessor for PurchaseContext();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination();
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, v4 + v3 + 1, v2 | 7);
}

uint64_t sub_1D7762E4C()
{
  v1 = type metadata accessor for PurchaseContext();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  swift_unknownObjectRelease();
  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination();
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, v4 + v3 + 1, v2 | 7);
}

uint64_t sub_1D776306C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D77630AC()
{
  v1 = type metadata accessor for PurchaseContext();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  swift_unknownObjectRelease();
  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination();
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D77632C8()
{
  v1 = type metadata accessor for PurchaseContext();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  swift_unknownObjectRelease();
  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination();
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1D77634F4()
{
  v1 = type metadata accessor for PurchaseContext();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  swift_unknownObjectRelease();

  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination();
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D7763718()
{

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1D7763770()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D77637A8()
{
  v1 = type metadata accessor for PurchaseContext();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  swift_unknownObjectRelease();

  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination();
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1D7763A34()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7763A70()
{
  v1 = type metadata accessor for PurchaseContext();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination();
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1D7763C88()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D7763CC0()
{
  v1 = type metadata accessor for PurchaseContext();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination();
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D7763EF8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D7763F38()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7763F70()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D7763FB0()
{
  v1 = type metadata accessor for PurchaseContext();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination();
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D77641C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1D7764200()
{

  return MEMORY[0x1EEE6BDD0](v0, 34, 7);
}

uint64_t sub_1D7764240()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D7764294()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D77642E4()
{
  swift_unknownObjectRelease();

  sub_1D77CA6AC(*(v0 + 48), *(v0 + 56), *(v0 + 64));
  sub_1D77CA77C(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 264));

  return MEMORY[0x1EEE6BDD0](v0, 304, 7);
}

uint64_t sub_1D7764390()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D77643F8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7764430()
{
  v1 = type metadata accessor for PurchaseContext();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination();
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D776463C()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D7764684()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D77646C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D7764734()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D776476C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D7764814()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D776484C()
{
  MEMORY[0x1DA7044F0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7764884()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D77648C8()
{
  v1 = (type metadata accessor for SiwaCredentialUploadData() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[12];
  v6 = sub_1D78B3394();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D77649F8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D7764A30()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7764A68()
{

  if (*(v0 + 112))
  {
  }

  if (*(v0 + 280))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 360, 7);
}

uint64_t sub_1D7764B78()
{

  if (*(v0 + 112))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 192, 7);
}

uint64_t sub_1D7764C1C()
{

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1D7764C84()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D7764CC0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7764CF8()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D7764D38()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D7764D70()
{
  MEMORY[0x1DA7044F0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7764DAC()
{
  v1 = sub_1D78B3294();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D7764E70()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D7764EBC()
{
  MEMORY[0x1DA7044F0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7764F3C()
{
  v1 = sub_1D78B5934();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D776500C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7765044()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D776507C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D77650BC()
{
  v1 = sub_1D78B5934();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 280) & ~v3;
  v5 = *(v2 + 64);
  sub_1D77CA6AC(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_1D77CA77C(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232));

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D77651EC()
{
  v1 = sub_1D78B3294();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 272) & ~v3;
  v5 = *(v2 + 64);
  sub_1D77CA6AC(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_1D77CA77C(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232));

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D7765348()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D7765380()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D77653C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D7765424()
{
  v1 = (type metadata accessor for PurchaseAdContext() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[11];
  v6 = sub_1D78B3394();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D776553C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D776557C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D77655B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D77655FC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D7765634()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1D776566C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D77656A4()
{
  sub_1D77CA6AC(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_1D77CA77C(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232));

  return MEMORY[0x1EEE6BDD0](v0, 272, 7);
}

uint64_t sub_1D7765740()
{
  v1 = type metadata accessor for PurchaseContext();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination();
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v12 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = v0 + v12;
  sub_1D77CA6AC(*(v0 + v12), *(v0 + v12 + 8), *(v0 + v12 + 16));
  sub_1D77CA77C(*(v13 + 24), *(v13 + 32), *(v13 + 40), *(v13 + 48), *(v13 + 56), *(v13 + 64), *(v13 + 72), *(v13 + 80), *(v13 + 88), *(v13 + 96), *(v13 + 104), *(v13 + 112), *(v13 + 120), *(v13 + 128), *(v13 + 136), *(v13 + 144), *(v13 + 152), *(v13 + 160), *(v13 + 168), *(v13 + 176), *(v13 + 184), *(v13 + 192), *(v13 + 200), *(v13 + 208), *(v13 + 216));

  return MEMORY[0x1EEE6BDD0](v0, v12 + 256, v2 | 7);
}

uint64_t sub_1D77659C0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D77659F8()
{
  v1 = type metadata accessor for PurchaseContext();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination();
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v12 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = v0 + v12;
  sub_1D77CA6AC(*(v0 + v12), *(v0 + v12 + 8), *(v0 + v12 + 16));
  sub_1D77CA77C(*(v13 + 24), *(v13 + 32), *(v13 + 40), *(v13 + 48), *(v13 + 56), *(v13 + 64), *(v13 + 72), *(v13 + 80), *(v13 + 88), *(v13 + 96), *(v13 + 104), *(v13 + 112), *(v13 + 120), *(v13 + 128), *(v13 + 136), *(v13 + 144), *(v13 + 152), *(v13 + 160), *(v13 + 168), *(v13 + 176), *(v13 + 184), *(v13 + 192), *(v13 + 200), *(v13 + 208), *(v13 + 216));

  return MEMORY[0x1EEE6BDD0](v0, v12 + 256, v2 | 7);
}

uint64_t sub_1D7765C80@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D7765CDC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1D7765D40()
{
  v1 = type metadata accessor for HideMyEmailSignupDataModel();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  swift_unknownObjectRelease();
  v5 = v0 + v3 + *(v1 + 40);

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = type metadata accessor for PurchaseContext();
  v7 = *(v6 + 52);
  v8 = type metadata accessor for PostPurchaseDestination();
  if (!(*(*(v8 - 8) + 48))(v5 + v7, 1, v8) && swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1D78B3294();
    (*(*(v9 - 8) + 8))(v5 + v7, v9);
  }

  v10 = *(v6 + 64);
  v11 = sub_1D78B3294();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v5 + v10, 1, v11))
  {
    (*(v12 + 8))(v5 + v10, v11);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D7765FAC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7765FE4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D7766024()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D776605C()
{

  return MEMORY[0x1EEE6BDD0](v0, 176, 7);
}

uint64_t sub_1D77660AC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D77660EC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7766124()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D776617C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D77661B4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D77661EC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D776622C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7766264()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D776629C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D77662DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D776631C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D776635C()
{
  v1 = type metadata accessor for PurchaseContext();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination();
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1D7766574()
{
  v1 = type metadata accessor for PurchaseContext();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination();
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v12 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x1EEE6BDD0](v0, v12 + 8, v2 | 7);
}

uint64_t sub_1D7766794()
{
  v1 = type metadata accessor for HideMyEmailSignupDataModel();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  swift_unknownObjectRelease();
  v5 = v0 + v3 + *(v1 + 40);

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = type metadata accessor for PurchaseContext();
  v7 = *(v6 + 52);
  v8 = type metadata accessor for PostPurchaseDestination();
  if (!(*(*(v8 - 8) + 48))(v5 + v7, 1, v8) && swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1D78B3294();
    (*(*(v9 - 8) + 8))(v5 + v7, v9);
  }

  v10 = *(v6 + 64);
  v11 = sub_1D78B3294();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v5 + v10, 1, v11))
  {
    (*(v12 + 8))(v5 + v10, v11);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D7766A00()
{
  v1 = type metadata accessor for PurchaseContext();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination();
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D7766C28(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for HideMyEmailSignupDataModel();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D7766CD4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for HideMyEmailSignupDataModel();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D7766D78()
{

  return MEMORY[0x1EEE6BDD0](v0, 152, 7);
}

uint64_t sub_1D7766DB8()
{

  return MEMORY[0x1EEE6BDD0](v0, 176, 7);
}

uint64_t sub_1D7766E08()
{
  MEMORY[0x1DA7044F0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7766E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BundlePaywallViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
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

  else
  {
    sub_1D77404D4(0, &unk_1EE096460, MEMORY[0x1E6968FB0]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 48);
    v15 = a1 + *(a3 + 28);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1D7766F8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for BundlePaywallViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  else
  {
    sub_1D77404D4(0, &unk_1EE096460, MEMORY[0x1E6968FB0]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 28);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_1D77670CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D7767104()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D776714C()
{

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1D776718C()
{

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1D77671CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D776721C()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1D776726C()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1D77672B4()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1D7767308(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D78B57B4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D7767374(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D78B57B4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D77673E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D78B3394();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D7767450(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D78B3394();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D77674F4()
{
  v1 = *(type metadata accessor for PaywallShownEntry() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_1D78B3394();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t _s16NewsSubscription40HideMyEmailSignupLayoutSectionDescriptorOwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 224))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s16NewsSubscription40HideMyEmailSignupLayoutSectionDescriptorOwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 216) = 0;
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

  *(result + 224) = v3;
  return result;
}

uint64_t sub_1D7767654()
{
  v1 = type metadata accessor for PurchaseContext();
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 272) & ~v2;
  sub_1D77CA6AC(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_1D77CA77C(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232));

  v5 = v0 + v4;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination();
  if (!(*(*(v7 - 8) + 48))(v0 + v4 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v12 = (v3 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x1EEE6BDD0](v0, v12 + 8, v2 | 7);
}

uint64_t sub_1D77678D8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D7767918()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D7767960()
{
  MEMORY[0x1DA7044F0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7767998()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D77679E0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7767A18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D78B3394();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D7767A84()
{
  v1 = sub_1D78B3294();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D7767B48()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D7767B80()
{
  v1 = sub_1D78B3294();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D7767C28()
{
  v1 = sub_1D78B3294();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D7767D2C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7767D74@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D7767DC4(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1D7767E24()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D7767E60()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7767E98()
{

  return MEMORY[0x1EEE6BDD0](v0, 176, 7);
}

uint64_t sub_1D7767EE8()
{

  return MEMORY[0x1EEE6BDD0](v0, 160, 7);
}

uint64_t sub_1D7767F30()
{
  v1 = (type metadata accessor for PurchaseMetaDataFetchResult(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 160) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = v0 + v3;
  v6 = sub_1D78B57A4();
  (*(*(v6 - 8) + 8))(v5, v6);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 16, v2 | 7);
}

uint64_t sub_1D7768048()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D7768090()
{
  v1 = sub_1D78B57A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1D78B59A4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1D77681D8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7768210()
{
  v1 = sub_1D78B57A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D77682D4()
{
  v1 = sub_1D78B57A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D776835C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D78B57A4();
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

uint64_t sub_1D7768424(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D78B57A4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_1D77684E0()
{
  v1 = type metadata accessor for PurchaseContext();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination();
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v12 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;

  sub_1D78591E8(*(v0 + v14), sub_1D7858FFC);

  return MEMORY[0x1EEE6BDD0](v0, v14 + 8, v2 | 7);
}

uint64_t sub_1D776872C()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1D7768784(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D78B3294();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for SubscribeButtonDestination(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1D77688A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1D78B3294();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for SubscribeButtonDestination(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D77689CC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D7768A04()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7768A3C()
{
  v1 = type metadata accessor for HideMyEmailSignupDataModel();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v22 = *(*(v1 - 8) + 64);
  v4 = v22 + v2 + v3;

  v5 = v0 + v3;

  swift_unknownObjectRelease();
  v6 = v0 + v3 + *(v1 + 40);

  sub_1D77703DC(*(v6 + 72), *(v6 + 80), *(v6 + 88), *(v6 + 96), *(v6 + 104), *(v6 + 112), *(v6 + 120));
  v7 = type metadata accessor for PurchaseContext();
  v8 = *(v7 + 52);
  v9 = type metadata accessor for PostPurchaseDestination();
  v20 = *(*(v9 - 8) + 48);
  if (!v20(v6 + v8, 1, v9) && swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1D78B3294();
    (*(*(v10 - 8) + 8))(v6 + v8, v10);
  }

  v21 = v2;
  v11 = v4 & ~v2;
  v12 = *(v7 + 64);
  v13 = sub_1D78B3294();
  v19 = *(v13 - 8);
  v14 = *(v19 + 48);
  if (!v14(v6 + v12, 1, v13))
  {
    (*(v19 + 8))(v6 + v12, v13);
  }

  swift_unknownObjectRelease();
  v15 = v0 + v11 + *(v1 + 40);

  sub_1D77703DC(*(v15 + 72), *(v15 + 80), *(v15 + 88), *(v15 + 96), *(v15 + 104), *(v15 + 112), *(v15 + 120));
  v16 = *(v7 + 52);
  if (!v20(v15 + v16, 1, v9) && swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v19 + 8))(v15 + v16, v13);
  }

  v17 = *(v7 + 64);
  if (!v14(v15 + v17, 1, v13))
  {
    (*(v19 + 8))(v15 + v17, v13);
  }

  return MEMORY[0x1EEE6BDD0](v0, v11 + v22, v21 | 7);
}

uint64_t sub_1D7768DF4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for HideMyEmailSignupDataModel();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D7768EA0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for HideMyEmailSignupDataModel();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D7768F44()
{
  MEMORY[0x1DA7044F0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7768F7C()
{
  v1 = sub_1D78B58E4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D7769040()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D77690A0()
{
  v1 = type metadata accessor for HideMyEmailSignupDataModel();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  swift_unknownObjectRelease();
  v5 = v0 + v3 + *(v1 + 40);

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = type metadata accessor for PurchaseContext();
  v7 = *(v6 + 52);
  v8 = type metadata accessor for PostPurchaseDestination();
  if (!(*(*(v8 - 8) + 48))(v5 + v7, 1, v8) && swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1D78B3294();
    (*(*(v9 - 8) + 8))(v5 + v7, v9);
  }

  v10 = *(v6 + 64);
  v11 = sub_1D78B3294();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v5 + v10, 1, v11))
  {
    (*(v12 + 8))(v5 + v10, v11);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D776930C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    sub_1D773F178(0, qword_1EE095BD0, type metadata accessor for PostPurchaseDestination);
    v10 = v9;
    v11 = *(*(v9 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1D77693E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    sub_1D773F178(0, qword_1EE095BD0, type metadata accessor for PostPurchaseDestination);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D77694AC(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_1D78B3294();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[9];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for SubscribeButtonDestination(0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[11];
    goto LABEL_11;
  }

  sub_1D773F178(0, &unk_1EE096460, MEMORY[0x1E6968FB0]);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[13];
    goto LABEL_11;
  }

  sub_1D773F178(0, qword_1EE092E50, type metadata accessor for OffersButtonDestination);
  v16 = v15;
  v17 = *(*(v15 - 8) + 48);
  v18 = a1 + a3[14];

  return v17(v18, a2, v16);
}

uint64_t sub_1D7769698(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = sub_1D78B3294();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for SubscribeButtonDestination(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[11];
    goto LABEL_9;
  }

  sub_1D773F178(0, &unk_1EE096460, MEMORY[0x1E6968FB0]);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[13];
    goto LABEL_9;
  }

  sub_1D773F178(0, qword_1EE092E50, type metadata accessor for OffersButtonDestination);
  v16 = v15;
  v17 = *(*(v15 - 8) + 56);
  v18 = v5 + a4[14];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1D7769884()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D77698C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D77698FC()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D7769944()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1D776998C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D77699CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D7769A0C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7769A44()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D7769A8C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7769ADC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC16NewsSubscription32DismissibleDynamicViewController_dismissDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D7769B38(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC16NewsSubscription32DismissibleDynamicViewController_dismissDelegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1D7769BB4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7769BEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppLaunchMethod.IndirectMethod(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D7769C58(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for AppLaunchMethod.IndirectMethod(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1D7769CE4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D7769D20()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D7769D78(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D78B3394();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D7769E24(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D78B3394();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D7769F60(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D78B3394();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D776A00C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D78B3394();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D776A0F0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_1D77EECB8(0);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1D776A19C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1D77EECB8(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D776A240()
{
  MEMORY[0x1DA7044F0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D776A278()
{
  sub_1D773F0BC();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for PurchaseContext();
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {

    sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
    v7 = *(v6 + 52);
    v8 = type metadata accessor for PostPurchaseDestination();
    if (!(*(*(v8 - 8) + 48))(v5 + v7, 1, v8) && swift_getEnumCaseMultiPayload() == 1)
    {
      v9 = sub_1D78B3294();
      (*(*(v9 - 8) + 8))(v5 + v7, v9);
    }

    v10 = *(v6 + 64);
    v11 = sub_1D78B3294();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v5 + v10, 1, v11))
    {
      (*(v12 + 8))(v5 + v10, v11);
    }
  }

  v13 = (((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x1EEE6BDD0](v0, v13 + 8, v2 | 7);
}

uint64_t sub_1D776A4DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D776A548(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_1D773F1CC(0, qword_1EE095BD0, type metadata accessor for PostPurchaseDestination);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 52);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_1D773F1CC(0, &unk_1EE096460, MEMORY[0x1E6968FB0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 64);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1D776A6A4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D776A6DC()
{
  MEMORY[0x1DA7044F0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D776A714()
{
  v1 = type metadata accessor for PurchaseContext();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination();
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D776A920()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D776A958()
{
  v1 = type metadata accessor for PurchaseContext();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination();
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v12 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x1EEE6BDD0](v0, v13 + 8, v2 | 7);
}

uint64_t sub_1D776AC18(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D776B630()
{
  v1 = *v0;
  sub_1D78B6814();
  MEMORY[0x1DA703AC0](v1);
  return sub_1D78B6844();
}

uint64_t sub_1D776B678()
{
  v1 = *v0;
  sub_1D78B6814();
  MEMORY[0x1DA703AC0](v1);
  return sub_1D78B6844();
}

uint64_t PurchaseTransactionTrackerEventPath.hashValue.getter()
{
  sub_1D78B6814();
  MEMORY[0x1DA703AC0](0);
  return sub_1D78B6844();
}

uint64_t sub_1D776B738()
{
  sub_1D78B6814();
  MEMORY[0x1DA703AC0](0);
  return sub_1D78B6844();
}

uint64_t sub_1D776B77C()
{
  sub_1D78B6814();
  MEMORY[0x1DA703AC0](0);
  return sub_1D78B6844();
}

unint64_t sub_1D776B7C0()
{
  result = qword_1EC9C87C8;
  if (!qword_1EC9C87C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C87C8);
  }

  return result;
}

unint64_t sub_1D776B818()
{
  result = qword_1EC9C87D0;
  if (!qword_1EC9C87D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C87D0);
  }

  return result;
}

unint64_t sub_1D776B870()
{
  result = qword_1EC9C87D8;
  if (!qword_1EC9C87D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C87D8);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for WebOptinFlowManager.WebOptinFlowErrors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PurchaseTransactionTrackerEventPath(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for PurchaseTransactionTrackerEventPath(_WORD *result, int a2, int a3)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1D776BC1C()
{
  v1 = *v0;
  sub_1D78B6814();
  MEMORY[0x1DA703AC0](v1);
  return sub_1D78B6844();
}

uint64_t sub_1D776BC90()
{
  v1 = *v0;
  sub_1D78B6814();
  MEMORY[0x1DA703AC0](v1);
  return sub_1D78B6844();
}

uint64_t sub_1D776BCD4(uint64_t a1, id *a2)
{
  result = sub_1D78B5C54();
  *a2 = 0;
  return result;
}

uint64_t sub_1D776BD4C(uint64_t a1, id *a2)
{
  v3 = sub_1D78B5C64();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1D776BDCC@<X0>(uint64_t *a1@<X8>)
{
  sub_1D78B5C74();
  v2 = sub_1D78B5C44();

  *a1 = v2;
  return result;
}

uint64_t sub_1D776BE20(uint64_t a1)
{
  v2 = sub_1D776CBAC(&qword_1EC9C9218, type metadata accessor for AMSError);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1D776BE8C(uint64_t a1)
{
  v2 = sub_1D776CBAC(&qword_1EC9C9218, type metadata accessor for AMSError);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1D776BEF8(void *a1, uint64_t a2)
{
  v4 = sub_1D776CBAC(&qword_1EC9C9218, type metadata accessor for AMSError);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1D776BF88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D776CBAC(&qword_1EC9C9218, type metadata accessor for AMSError);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1D776C014(uint64_t a1)
{
  v2 = sub_1D776CBAC(&unk_1EC9C9F70, type metadata accessor for ASWebAuthenticationSessionError);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1D776C080(uint64_t a1)
{
  v2 = sub_1D776CBAC(&unk_1EC9C9F70, type metadata accessor for ASWebAuthenticationSessionError);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1D776C0EC(void *a1, uint64_t a2)
{
  v4 = sub_1D776CBAC(&unk_1EC9C9F70, type metadata accessor for ASWebAuthenticationSessionError);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1D776C17C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D776CBAC(&unk_1EC9C9F70, type metadata accessor for ASWebAuthenticationSessionError);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1D776C208(uint64_t a1)
{
  v2 = sub_1D776CBAC(&qword_1EC9C91E0, type metadata accessor for SKError);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1D776C274(uint64_t a1)
{
  v2 = sub_1D776CBAC(&qword_1EC9C91E0, type metadata accessor for SKError);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1D776C2E0(void *a1, uint64_t a2)
{
  v4 = sub_1D776CBAC(&qword_1EC9C91E0, type metadata accessor for SKError);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1D776C370(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D776CBAC(&qword_1EC9C91E0, type metadata accessor for SKError);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1D776C3EC()
{
  sub_1D78B6814();
  sub_1D78B5C14();
  return sub_1D78B6844();
}

uint64_t sub_1D776C44C(uint64_t a1)
{
  v2 = sub_1D776CBAC(&qword_1EC9C91E8, type metadata accessor for AMSError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1D776C4B8(uint64_t a1)
{
  v2 = sub_1D776CBAC(&qword_1EC9C91E8, type metadata accessor for AMSError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1D776C524(uint64_t a1)
{
  v2 = sub_1D776CBAC(&qword_1EC9C9218, type metadata accessor for AMSError);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1D776C590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D776CBAC(&qword_1EC9C9218, type metadata accessor for AMSError);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1D776C614(uint64_t a1)
{
  v2 = sub_1D776CBAC(&qword_1EC9C9170, type metadata accessor for ASWebAuthenticationSessionError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1D776C680(uint64_t a1)
{
  v2 = sub_1D776CBAC(&qword_1EC9C9170, type metadata accessor for ASWebAuthenticationSessionError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1D776C6EC(uint64_t a1)
{
  v2 = sub_1D776CBAC(&unk_1EC9C9F70, type metadata accessor for ASWebAuthenticationSessionError);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1D776C758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D776CBAC(&unk_1EC9C9F70, type metadata accessor for ASWebAuthenticationSessionError);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1D776C7DC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1D78B5C44();

  *a1 = v2;
  return result;
}

uint64_t sub_1D776C824(uint64_t a1)
{
  v2 = sub_1D776CBAC(&qword_1EE08FD60, type metadata accessor for Key);
  v3 = sub_1D776CBAC(&qword_1EC9C9220, type metadata accessor for Key);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D776C8E0(uint64_t a1)
{
  v2 = sub_1D776CBAC(&qword_1EC9C91B0, type metadata accessor for SKError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1D776C94C(uint64_t a1)
{
  v2 = sub_1D776CBAC(&qword_1EC9C91B0, type metadata accessor for SKError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1D776C9B8(uint64_t a1)
{
  v2 = sub_1D776CBAC(&qword_1EC9C91E0, type metadata accessor for SKError);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1D776CA24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D776CBAC(&qword_1EC9C91E0, type metadata accessor for SKError);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1D776CAA8(uint64_t a1)
{
  v2 = sub_1D776CBAC(&qword_1EC9C90F0, type metadata accessor for UIContentSizeCategory);
  v3 = sub_1D776CBAC(&qword_1EC9C90F8, type metadata accessor for UIContentSizeCategory);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D776CBAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D776CC3C()
{
  v0 = sub_1D78B5C74();
  v1 = MEMORY[0x1DA703080](v0);

  return v1;
}

uint64_t sub_1D776CC78()
{
  sub_1D78B5C74();
  sub_1D78B5D14();
}

uint64_t sub_1D776CCCC()
{
  sub_1D78B5C74();
  sub_1D78B6814();
  sub_1D78B5D14();
  v0 = sub_1D78B6844();

  return v0;
}

uint64_t sub_1D776CD40()
{
  v0 = sub_1D78B5C74();
  v2 = v1;
  if (v0 == sub_1D78B5C74() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D78B6724();
  }

  return v5 & 1;
}

unint64_t sub_1D776D158()
{
  result = qword_1EC9C9198;
  if (!qword_1EC9C9198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C9198);
  }

  return result;
}

uint64_t sub_1D776D728(void *a1, const void *a2)
{
  v31 = a2;
  v32 = sub_1D78B6214();
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D776F504(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D78B3294();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE08FB90 != -1)
  {
    swift_once();
  }

  sub_1D78B60A4();
  sub_1D78B42C4();
  v13 = v2 + OBJC_IVAR____TtC16NewsSubscription25BundlePaywallDataProvider_viewModel;
  v14 = [a1 userInterfaceStyle];
  v15 = type metadata accessor for BundlePaywallViewModel(0);
  v16 = 68;
  if (v14 == 2)
  {
    v16 = 72;
  }

  sub_1D776F538(v13 + *(v15 + v16), v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1D776FA90(v8, sub_1D776F504);
    sub_1D78B60A4();
    sub_1D78B42C4();
    v33 = 0;
    sub_1D7740228(0, &unk_1EE0951D0, sub_1D776F59C, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D78B4104();
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v18 = *(v2 + 16);
    v19 = v2;
    v20 = sub_1D78B3214();
    v21 = [v18 assetHandleForURL:v20 lifetimeHint:1];

    v22 = sub_1D776DBC0(v19, a1, v31);
    v24 = v23;
    (*(v30 + 104))(v5, *MEMORY[0x1E69D88B0], v32);
    type metadata accessor for PaywallImageProcessorRequest();
    v25 = swift_allocObject();
    v26 = v21;
    v27 = sub_1D776F60C(v26, v5, v25, v22, v24);
    v28 = MEMORY[0x1EEE9AC00](v27);
    *(&v30 - 2) = v19;
    *(&v30 - 1) = v28;
    sub_1D7740228(0, &unk_1EE0951D0, sub_1D776F59C, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    v29 = sub_1D78B4174();

    (*(v10 + 8))(v12, v9);
    return v29;
  }
}

double sub_1D776DBC0(uint64_t a1, void *a2, const void *a3)
{
  sub_1D776F504(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = a1 + OBJC_IVAR____TtC16NewsSubscription25BundlePaywallDataProvider_viewModel;
  if ([a2 horizontalSizeClass] == 1 || objc_msgSend(a2, sel_verticalSizeClass) == 1)
  {
    v10 = 84;
  }

  else
  {
    v10 = 88;
  }

  v11 = type metadata accessor for BundlePaywallViewModel(0);
  sub_1D776F538(v9 + *(v11 + v10), v8);
  v12 = sub_1D78B3294();
  v13 = (*(*(v12 - 8) + 48))(v8, 1, v12);
  sub_1D776FA90(v8, sub_1D776F504);
  if (v13 == 1)
  {
    memcpy(v15, a3, 0x1A9uLL);
    if (sub_1D776F604(v15) != 1)
    {
      return *(nullsub_1(v15) + 80);
    }

    goto LABEL_9;
  }

  memcpy(v15, a3, 0x1A9uLL);
  if (sub_1D776F604(v15) == 1)
  {
LABEL_9:
    nullsub_1(v15);
    return 0.0;
  }

  return *(nullsub_1(v15) + 16);
}

void sub_1D776DD70(void *a1, void *a2, void (*a3)(void *))
{
  if (a1)
  {
    v5 = qword_1EE08FB90;
    v6 = a1;
    if (v5 != -1)
    {
      swift_once();
    }

    sub_1D78B60A4();
    sub_1D78B42C4();
    v10 = v6;
    a3(a1);
  }

  else
  {
    if (qword_1EE08FB90 != -1)
    {
      swift_once();
    }

    sub_1D78B6094();
    sub_1D78B42C4();
    if (a2)
    {
      v8 = a2;
      sub_1D78B6094();
      sub_1D774FE1C();
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D78BCAB0;
      sub_1D773C9B8(0, &qword_1EE08F9F0);
      sub_1D78B6504();
      *(v9 + 56) = MEMORY[0x1E69E6158];
      *(v9 + 64) = sub_1D775ABD4();
      *(v9 + 32) = 0;
      *(v9 + 40) = 0xE000000000000000;
      sub_1D78B42C4();
    }

    a3(0);
  }
}

uint64_t sub_1D776DFC0(void *a1, const void *a2)
{
  v3 = v2;
  v36 = a2;
  v5 = sub_1D78B6214();
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D776F504(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE08FB90 != -1)
  {
    swift_once();
  }

  sub_1D78B60A4();
  sub_1D78B42C4();
  v14 = v2 + OBJC_IVAR____TtC16NewsSubscription25BundlePaywallDataProvider_viewModel;
  v15 = [a1 userInterfaceStyle];
  v16 = type metadata accessor for BundlePaywallViewModel(0);
  v17 = 76;
  if (v15 == 2)
  {
    v17 = 80;
  }

  sub_1D776F538(v14 + *(v16 + v17), v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1D776FA90(v9, sub_1D776F504);
    sub_1D78B60A4();
    sub_1D78B42C4();
    v40[0] = 0;
    sub_1D7740228(0, &unk_1EE0951D0, sub_1D776F59C, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D78B4104();
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    v19 = *(v2 + 16);
    v20 = sub_1D78B3214();
    v21 = [v19 assetHandleForURL:v20 lifetimeHint:1];

    memcpy(v40, v36, 0x1A9uLL);
    v22 = v3;
    if (sub_1D776F604(v40) == 1)
    {
      v23 = nullsub_1(v40);
      v24 = (v23 + 208);
      v25 = (v23 + 216);
    }

    else
    {
      v26 = nullsub_1(v40);
      v24 = (v26 + 112);
      v25 = (v26 + 120);
    }

    v27 = *v25;
    v28 = *v24;
    v29 = v39;
    (*(v37 + 104))(v39, *MEMORY[0x1E69D88B8], v38);
    type metadata accessor for PaywallImageProcessorRequest();
    v30 = swift_allocObject();
    v31 = v21;
    v32 = sub_1D776F60C(v31, v29, v30, v28, v27);
    v33 = MEMORY[0x1EEE9AC00](v32);
    *(&v35 - 2) = v22;
    *(&v35 - 1) = v33;
    sub_1D7740228(0, &unk_1EE0951D0, sub_1D776F59C, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    v34 = sub_1D78B4174();

    (*(v11 + 8))(v13, v10);
    return v34;
  }
}

uint64_t sub_1D776E494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = *a6;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  __swift_project_boxed_opaque_existential_1((a5 + 24), *(a5 + 48));
  v17[3] = v13;
  v17[4] = sub_1D776F8D8();
  v17[0] = a6;
  v15 = swift_allocObject();
  *(v15 + 16) = a9;
  *(v15 + 24) = v14;

  sub_1D78B4664();

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

void sub_1D776E5A8(uint64_t a1, id a2, void (*a3)(uint64_t))
{
  if (a2)
  {
    v5 = a2;
    if (qword_1EE08FB90 != -1)
    {
      swift_once();
    }

    sub_1D78B6094();
    sub_1D78B42C4();
    sub_1D78B6094();
    sub_1D774FE1C();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1D78BCAB0;
    sub_1D773C9B8(0, &qword_1EE08F9F0);
    sub_1D78B6504();
    *(v6 + 56) = MEMORY[0x1E69E6158];
    *(v6 + 64) = sub_1D775ABD4();
    *(v6 + 32) = 0;
    *(v6 + 40) = 0xE000000000000000;
    sub_1D78B42C4();

    a3(0);
  }

  else
  {
    if (qword_1EE08FB90 != -1)
    {
      swift_once();
    }

    sub_1D78B60A4();
    sub_1D78B42C4();
    a3(a1);
  }
}

uint64_t sub_1D776E7B8(void *a1)
{
  sub_1D776F504(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - v7;
  v9 = sub_1D78B3294();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE08FB90 != -1)
  {
    swift_once();
  }

  sub_1D78B60A4();
  sub_1D78B42C4();
  v13 = v1 + OBJC_IVAR____TtC16NewsSubscription25BundlePaywallDataProvider_viewModel;
  if ([a1 horizontalSizeClass] == 1 || objc_msgSend(a1, sel_verticalSizeClass) == 1)
  {
    v14 = 84;
  }

  else
  {
    v14 = 88;
  }

  v15 = type metadata accessor for BundlePaywallViewModel(0);
  sub_1D776F538(v13 + *(v15 + v14), v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1D776FA90(v8, sub_1D776F504);
    sub_1D78B6094();
    sub_1D78B42C4();
    (*(v10 + 56))(v6, 1, 1, v9);
    sub_1D7740228(0, &unk_1EE0952C0, sub_1D776F504, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D78B4104();
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v17 = *(v1 + 16);
    v18 = sub_1D78B3214();
    v19 = [v17 assetHandleForURL:v18 lifetimeHint:1];

    MEMORY[0x1EEE9AC00](v20);
    *(&v22 - 2) = v19;
    sub_1D7740228(0, &unk_1EE0952C0, sub_1D776F504, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    v21 = sub_1D78B4174();

    (*(v10 + 8))(v12, v9);
    return v21;
  }
}

uint64_t sub_1D776EB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = swift_allocObject();
  v8[2] = a5;
  v8[3] = a1;
  v8[4] = a2;
  v13[4] = sub_1D776FA84;
  v13[5] = v8;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1D775FB6C;
  v13[3] = &block_descriptor;
  v9 = _Block_copy(v13);
  v10 = a5;

  v11 = [v10 downloadIfNeededWithPriority:-1 completion:v9];
  _Block_release(v9);
  return swift_unknownObjectRelease();
}

uint64_t sub_1D776ECA0(void *a1, void (*a2)(char *))
{
  sub_1D776F504(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 filePath];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1D78B5C74();
    v11 = v10;

    if (qword_1EE08FB90 != -1)
    {
      swift_once();
    }

    sub_1D774FE1C();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1D78BCAB0;
    *(v12 + 56) = MEMORY[0x1E69E6158];
    *(v12 + 64) = sub_1D775ABD4();
    *(v12 + 32) = v9;
    *(v12 + 40) = v11;

    sub_1D78B60A4();
    sub_1D78B42C4();

    sub_1D78B31F4();

    v13 = sub_1D78B3294();
    (*(*(v13 - 8) + 56))(v6, 0, 1, v13);
  }

  else
  {
    if (qword_1EE08FB90 != -1)
    {
      swift_once();
    }

    sub_1D78B60A4();
    sub_1D78B42C4();
    v14 = sub_1D78B3294();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  }

  a2(v6);
  return sub_1D776FA90(v6, sub_1D776F504);
}

uint64_t sub_1D776EF28(void *a1)
{
  sub_1D776F504(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - v7;
  v9 = sub_1D78B3294();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v1 + OBJC_IVAR____TtC16NewsSubscription25BundlePaywallDataProvider_viewModel;
  v14 = [a1 userInterfaceStyle];
  v15 = type metadata accessor for BundlePaywallViewModel(0);
  v16 = 68;
  if (v14 == 2)
  {
    v16 = 72;
  }

  sub_1D776F538(v13 + *(v15 + v16), v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1D776FA90(v8, sub_1D776F504);
    v17 = 0;
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    (*(v10 + 16))(v6, v12, v9);
    (*(v10 + 56))(v6, 0, 1, v9);
    v18 = sub_1D776F180(v6);
    sub_1D776FA90(v6, sub_1D776F504);
    (*(v10 + 8))(v12, v9);
    v17 = v18 ^ 1;
  }

  return v17 & 1;
}

uint64_t sub_1D776F180(uint64_t a1)
{
  sub_1D776F504(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D78B3294();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D776F538(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1D776FA90(v5, sub_1D776F504);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v10 = *(v1 + 16);
    v11 = sub_1D78B3214();
    v12 = [v10 assetHandleForURL:v11 lifetimeHint:1];

    v13 = [v12 filePath];
    if (v13)
    {

      (*(v7 + 8))(v9, v6);
      return 1;
    }

    (*(v7 + 8))(v9, v6);
  }

  return 0;
}

uint64_t sub_1D776F380()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  sub_1D776FA90(v0 + OBJC_IVAR____TtC16NewsSubscription25BundlePaywallDataProvider_viewModel, type metadata accessor for BundlePaywallViewModel);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BundlePaywallDataProvider()
{
  result = qword_1EE0928B8;
  if (!qword_1EE0928B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D776F45C()
{
  result = type metadata accessor for BundlePaywallViewModel(319);
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

uint64_t sub_1D776F538(uint64_t a1, uint64_t a2)
{
  sub_1D776F504(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D776F59C()
{
  if (!qword_1EE08FBE0)
  {
    sub_1D773F004(255, &qword_1EE08FBE8);
    v0 = sub_1D78B62A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE08FBE0);
    }
  }
}

uint64_t sub_1D776F60C(void *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v20[3] = sub_1D773F004(0, &qword_1EE08E598);
  v20[4] = sub_1D776F938();
  v20[0] = a1;
  sub_1D774584C(v20, a3 + OBJC_IVAR____TtC16NewsSubscription28PaywallImageProcessorRequest_assetHandle);
  sub_1D7740228(0, &qword_1EE08FA48, sub_1D776F9A0, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D78BCAB0;
  strcpy((inited + 32), "paywallImage");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  sub_1D774584C(v20, inited + 48);
  v11 = sub_1D77FEC44(inited);
  swift_setDeallocating();
  sub_1D776FA90(inited + 32, sub_1D776F9A0);
  *(a3 + OBJC_IVAR____TtC16NewsSubscription28PaywallImageProcessorRequest_assetHandles) = v11;
  *(a3 + 32) = a4;
  *(a3 + 40) = a5;
  v12 = OBJC_IVAR____TtC16NewsSubscription28PaywallImageProcessorRequest_scaling;
  v13 = sub_1D78B6214();
  v14 = *(v13 - 8);
  (*(v14 + 16))(a3 + v12, a2, v13);
  v15 = [a1 uniqueKey];
  v16 = sub_1D78B5C74();
  v18 = v17;

  MEMORY[0x1DA702FF0](v16, v18);

  MEMORY[0x1DA702FF0](14906, 0xE200000000000000);
  type metadata accessor for CGSize(0);
  sub_1D78B6504();
  (*(v14 + 8))(a2, v13);
  *(a3 + 16) = 0;
  *(a3 + 24) = 0xE000000000000000;
  __swift_destroy_boxed_opaque_existential_1(v20);
  return a3;
}

unint64_t sub_1D776F8D8()
{
  result = qword_1EE08EA78;
  if (!qword_1EE08EA78)
  {
    type metadata accessor for PaywallImageProcessorRequest();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08EA78);
  }

  return result;
}

unint64_t sub_1D776F938()
{
  result = qword_1EE08E5A0;
  if (!qword_1EE08E5A0)
  {
    sub_1D773F004(255, &qword_1EE08E598);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08E5A0);
  }

  return result;
}

void sub_1D776F9A0()
{
  if (!qword_1EE090110)
  {
    sub_1D773C9B8(255, &qword_1EE090480);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE090110);
    }
  }
}

uint64_t sub_1D776FA90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D776FB00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D78B6094();
  sub_1D774FE1C();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D78BCB50;
  v6 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v7 = sub_1D775ABD4();
  *(v5 + 64) = v7;
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;
  sub_1D773C9B8(0, &qword_1EE08F9F0);

  sub_1D78B6504();
  *(v5 + 96) = v6;
  *(v5 + 104) = v7;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0xE000000000000000;
  sub_1D78B42C4();
}

uint64_t sub_1D776FC54(uint64_t a1, uint64_t a2)
{
  v19[1] = *v2;
  v5 = type metadata accessor for PurchaseContext();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = *(a1 + 40);
  v8 = *(a1 + 48);
  __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
  v10 = sub_1D7788F60(v9, v8);
  if (v10)
  {
    v11 = v10;
    MEMORY[0x1EEE9AC00](v10);
    v19[-2] = v2;
    v19[-1] = a1;
    sub_1D78B41F4();
    sub_1D7770378(a1, v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    v12 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = a2;
    sub_1D777044C(v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
    *(v13 + ((v7 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v11;
    swift_unknownObjectRetain();
    v14 = v11;
    v15 = sub_1D78B4014();
    type metadata accessor for HideMyEmailSignupDataModel();
    v16 = sub_1D78B40B4();

    return v16;
  }

  else
  {
    if (qword_1EC9C8448 != -1)
    {
      swift_once();
    }

    sub_1D774FE1C();
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1D78BCAB0;
    *(v18 + 56) = MEMORY[0x1E69E6158];
    *(v18 + 64) = sub_1D775ABD4();
    *(v18 + 32) = v9;
    *(v18 + 40) = v8;

    sub_1D78B60A4();
    sub_1D78B42C4();

    sub_1D7770288();
    swift_allocError();
    sub_1D77702DC();
    swift_allocObject();
    return sub_1D78B40F4();
  }
}

uint64_t sub_1D776FF64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *a1;
  v7 = a1[1];
  v28 = a1[3];
  v26 = a1[4];
  v27 = a1[2];
  v30 = a1[5];
  v9 = a1[7];
  v25 = a1[6];
  v10 = *(a2 + 112);
  v11 = [v10 appStoreEmailAddress];
  if (v11)
  {
    v12 = v8;
    v13 = v11;
    v8 = sub_1D78B5C74();
    v15 = v14;
  }

  else
  {
    v16 = [v10 allEmailAddresses];
    v17 = sub_1D78B5EB4();

    if (v17[2])
    {
      v12 = v8;
      v8 = v17[4];
      v15 = v17[5];
    }

    else
    {

      v12 = v8;
      v15 = v7;
    }
  }

  v18 = [v10 &selRef_paywallDescription + 7];
  v19 = sub_1D78B5EB4();

  v20 = type metadata accessor for HideMyEmailSignupDataModel();
  sub_1D7770378(a4, a6 + *(v20 + 40));
  *a6 = 2;
  *(a6 + 8) = v8;
  *(a6 + 16) = v15;
  *(a6 + 24) = v19;
  *(a6 + 32) = v12;
  *(a6 + 40) = v7;
  *(a6 + 48) = v27;
  *(a6 + 56) = v28;
  *(a6 + 64) = v26;
  *(a6 + 72) = v30;
  *(a6 + 80) = v25;
  *(a6 + 88) = v9;
  *(a6 + 96) = 0;
  *(a6 + 104) = a3;
  *(a6 + *(v20 + 44)) = a5;

  swift_unknownObjectRetain();
  v21 = a5;
}

uint64_t sub_1D7770134()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t sub_1D77701A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  (*(v7 + 48))(a1, a2, a3, ObjectType, v7);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;

  v10 = sub_1D78B4014();
  v11 = sub_1D78B40D4();

  return v11;
}

unint64_t sub_1D7770288()
{
  result = qword_1EC9C95A8;
  if (!qword_1EC9C95A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C95A8);
  }

  return result;
}

void sub_1D77702DC()
{
  if (!qword_1EC9C95B0)
  {
    type metadata accessor for HideMyEmailSignupDataModel();
    v0 = sub_1D78B4184();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9C95B0);
    }
  }
}

uint64_t sub_1D7770334()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  __swift_project_boxed_opaque_existential_1((v1 + 72), *(v1 + 96));
  return sub_1D7867148(*(v2 + 40), *(v2 + 48));
}

uint64_t sub_1D7770378(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PurchaseContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D77703DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
    if (a7 != 1)
    {
      return result;
    }
  }
}

uint64_t sub_1D777044C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PurchaseContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D77704B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for PurchaseContext() - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  return sub_1D776FF64(a1, a2, *(v3 + 16), v3 + v8, *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8)), a3);
}

unint64_t sub_1D7770578()
{
  result = qword_1EC9C95B8;
  if (!qword_1EC9C95B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C95B8);
  }

  return result;
}

void *sub_1D77705CC(uint64_t *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v4 = [Strong traitCollection];
  swift_unknownObjectRelease();
  v5 = [v4 userInterfaceStyle];

  v6 = *a1;
  swift_beginAccess();
  v7 = *(v1 + v6);
  if (*(v7 + 16) && (v8 = sub_1D777BC2C(v5), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    v11 = v10;
  }

  else
  {
    v10 = 0;
  }

  swift_endAccess();
  return v10;
}

uint64_t sub_1D77706A4()
{
  v1 = *(v0 + OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_bundleSoftPaywallView);
  v2 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_subscribeButton);
  v3 = sub_1D78B4844();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  v4 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_offersButton);
  v5 = sub_1D78B4514();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  v6 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_webAuthButton);
  v7 = sub_1D78B4514();

  swift_allocObject();
  swift_unknownObjectWeakInit();
}

void sub_1D7770858()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      v4 = &v1[OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_viewModel];
      v5 = *(type metadata accessor for BundlePaywallViewModel(0) + 44);
      v6 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_eventHandler + 8);
      ObjectType = swift_getObjectType();
      v8 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48);
      v10 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel);
      v9 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16);
      v45[2] = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32);
      v45[3] = v8;
      v45[0] = v10;
      v45[1] = v9;
      v11 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112);
      v13 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64);
      v12 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80);
      v45[6] = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96);
      v45[7] = v11;
      v45[4] = v13;
      v45[5] = v12;
      v14 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176);
      v16 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128);
      v15 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144);
      v45[10] = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160);
      v45[11] = v14;
      v45[8] = v16;
      v45[9] = v15;
      v17 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240);
      v19 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192);
      v18 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208);
      v45[14] = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224);
      v45[15] = v17;
      v45[12] = v19;
      v45[13] = v18;
      v20 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208);
      v41 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192);
      v42 = v20;
      v21 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240);
      v43 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224);
      v44 = v21;
      v22 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144);
      v37 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128);
      v38 = v22;
      v23 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176);
      v39 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160);
      v40 = v23;
      v24 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80);
      v33 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64);
      v34 = v24;
      v25 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112);
      v35 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96);
      v36 = v25;
      v26 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16);
      v29 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel);
      v30 = v26;
      v27 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48);
      v31 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32);
      v32 = v27;
      v28 = *(v6 + 72);
      sub_1D7772AE8(v45, v46);
      v28(&v4[v5], &v29, ObjectType, v6);

      v46[12] = v41;
      v46[13] = v42;
      v46[14] = v43;
      v46[15] = v44;
      v46[8] = v37;
      v46[9] = v38;
      v46[10] = v39;
      v46[11] = v40;
      v46[4] = v33;
      v46[5] = v34;
      v46[6] = v35;
      v46[7] = v36;
      v46[0] = v29;
      v46[1] = v30;
      v46[2] = v31;
      v46[3] = v32;
      sub_1D7772B44(v46);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1D7770A28()
{
  v0 = type metadata accessor for BundlePaywallViewModel(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v35 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D774028C(0, qword_1EE092E50, type metadata accessor for OffersButtonDestination, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v35 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = swift_unknownObjectWeakLoadStrong();

    if (v8)
    {
      swift_beginAccess();
      v9 = swift_unknownObjectWeakLoadStrong();
      if (v9)
      {
        v10 = v9;
        sub_1D77726B0(v9 + OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_viewModel, v2);

        sub_1D7772714(&v2[*(v0 + 56)], v5, qword_1EE092E50, type metadata accessor for OffersButtonDestination);
        sub_1D7772B98(v2, type metadata accessor for BundlePaywallViewModel);
      }

      else
      {
        v11 = type metadata accessor for OffersButtonDestination(0);
        (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
      }

      v12 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_eventHandler + 8);
      ObjectType = swift_getObjectType();
      v51 = 2;
      v14 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48);
      v16 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel);
      v15 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16);
      v52[2] = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32);
      v52[3] = v14;
      v52[0] = v16;
      v52[1] = v15;
      v17 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112);
      v19 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64);
      v18 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80);
      v52[6] = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96);
      v52[7] = v17;
      v52[4] = v19;
      v52[5] = v18;
      v20 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176);
      v22 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128);
      v21 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144);
      v52[10] = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160);
      v52[11] = v20;
      v52[8] = v22;
      v52[9] = v21;
      v23 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240);
      v25 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192);
      v24 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208);
      v52[14] = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224);
      v52[15] = v23;
      v52[12] = v25;
      v52[13] = v24;
      v26 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208);
      v47 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192);
      v48 = v26;
      v27 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240);
      v49 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224);
      v50 = v27;
      v28 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144);
      v43 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128);
      v44 = v28;
      v29 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176);
      v45 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160);
      v46 = v29;
      v30 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80);
      v39 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64);
      v40 = v30;
      v31 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112);
      v41 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96);
      v42 = v31;
      v32 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16);
      v35 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel);
      v36 = v32;
      v33 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48);
      v37 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32);
      v38 = v33;
      v34 = *(v12 + 80);
      sub_1D7772AE8(v52, v53);
      v34(&v51, v5, &v35, ObjectType, v12);
      sub_1D7772794(v5, qword_1EE092E50, type metadata accessor for OffersButtonDestination);
      v53[12] = v47;
      v53[13] = v48;
      v53[14] = v49;
      v53[15] = v50;
      v53[8] = v43;
      v53[9] = v44;
      v53[10] = v45;
      v53[11] = v46;
      v53[4] = v39;
      v53[5] = v40;
      v53[6] = v41;
      v53[7] = v42;
      v53[0] = v35;
      v53[1] = v36;
      v53[2] = v37;
      v53[3] = v38;
      sub_1D7772B44(v53);
      swift_unknownObjectRelease();
    }
  }
}

void sub_1D7770D8C()
{
  if (qword_1EE08FB90 != -1)
  {
    swift_once();
  }

  sub_1D78B60A4();
  sub_1D78B42C4();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;

      v4 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_eventHandler + 8);
      ObjectType = swift_getObjectType();
      v6 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48);
      v8 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel);
      v7 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16);
      v43[2] = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32);
      v43[3] = v6;
      v43[0] = v8;
      v43[1] = v7;
      v9 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112);
      v11 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64);
      v10 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80);
      v43[6] = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96);
      v43[7] = v9;
      v43[4] = v11;
      v43[5] = v10;
      v12 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176);
      v14 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128);
      v13 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144);
      v43[10] = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160);
      v43[11] = v12;
      v43[8] = v14;
      v43[9] = v13;
      v15 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240);
      v17 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192);
      v16 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208);
      v43[14] = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224);
      v43[15] = v15;
      v43[12] = v17;
      v43[13] = v16;
      v18 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208);
      v39 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192);
      v40 = v18;
      v19 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240);
      v41 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224);
      v42 = v19;
      v20 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144);
      v35 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128);
      v36 = v20;
      v21 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176);
      v37 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160);
      v38 = v21;
      v22 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80);
      v31 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64);
      v32 = v22;
      v23 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112);
      v33 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96);
      v34 = v23;
      v24 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16);
      v27 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel);
      v28 = v24;
      v25 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48);
      v29 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32);
      v30 = v25;
      v26 = *(v4 + 88);
      sub_1D7772AE8(v43, v44);
      v26(&v27, ObjectType, v4);
      v44[12] = v39;
      v44[13] = v40;
      v44[14] = v41;
      v44[15] = v42;
      v44[8] = v35;
      v44[9] = v36;
      v44[10] = v37;
      v44[11] = v38;
      v44[4] = v31;
      v44[5] = v32;
      v44[6] = v33;
      v44[7] = v34;
      v44[0] = v27;
      v44[1] = v28;
      v44[2] = v29;
      v44[3] = v30;
      sub_1D7772B44(v44);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1D7770FA0(void *a1)
{
  v2 = [a1 userInterfaceStyle];
  v3 = v1 + OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_viewModel;
  v4 = type metadata accessor for BundlePaywallViewModel(0);
  v5 = 92;
  if (v2 == 2)
  {
    v5 = 96;
  }

  v6 = *(v3 + *(v4 + v5));
  v7 = (v1 + OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_styler);
  v9 = *(v1 + OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_styler + 24);
  v8 = *(v1 + OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_styler + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_styler), v9);
  v10 = *(v1 + OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_bundleSoftPaywallView);
  v11 = *(v8 + 8);
  v12 = *(v11 + 8);
  v13 = v6;
  v12(v10, v6, v9, v11);
  [*(v10 + OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_headerImageView) setContentMode_];
  v14 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v15 = *(*(v14 + 8) + 16);
  v16 = *(v10 + OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_badgeImageView);
  v15();

  v17 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v18 = *(*(v17 + 8) + 32);
  v19 = *(v10 + OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_titleTextView);
  v18();

  v20 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v21 = *(*(v20 + 8) + 24);
  v22 = *(v10 + OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_descriptionTextView);
  v21();

  v23 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v24 = *(*(v23 + 8) + 40);
  v25 = *(v10 + OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_subscribeButton);
  v24();

  v26 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v27 = *(*(v26 + 8) + 88);
  v28 = *(v10 + OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_webAuthButton);
  v27();
}

uint64_t sub_1D7771244()
{
  v0 = sub_1D78B4014();
  sub_1D776F59C();
  v1 = sub_1D78B4214();

  return v1;
}

uint64_t sub_1D77712A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  result = sub_1D7772898(a1, a2, a3, a4, a5, a6, a7);
  if (!v7)
  {
  }

  return result;
}

uint64_t sub_1D77712C8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v24 = a4;
  v25 = a6;
  v23 = a1;
  v8 = type metadata accessor for BundlePaywallRenderModel();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1E6968FB0];
  sub_1D774028C(0, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v22 - v13;
  v15 = OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_videoFileURL;
  swift_beginAccess();
  sub_1D7772714(a2 + v15, v14, &unk_1EE096460, v11);
  v16 = sub_1D78B3294();
  v17 = (*(*(v16 - 8) + 48))(v14, 1, v16);
  sub_1D7772794(v14, &unk_1EE096460, v11);
  if (v17 == 1)
  {
    swift_beginAccess();
    sub_1D7772804(v23, a2 + v15);
    swift_endAccess();
    sub_1D77726B0(a2 + OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_viewModel, v10);
    v18 = sub_1D77705CC(&OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_images);
    v19 = sub_1D77705CC(&OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_badgeImages);
    sub_1D7772714(a2 + v15, &v10[v8[7]], &unk_1EE096460, MEMORY[0x1E6968FB0]);
    *&v10[v8[5]] = v18;
    *&v10[v8[6]] = v19;
    v20 = [v24 traitCollection];
    sub_1D77CBF70(v10, a3, v20, *(a2 + OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_bundleSoftPaywallView));

    sub_1D7772B98(v10, type metadata accessor for BundlePaywallRenderModel);
  }

  sub_1D7770FA0(v25);
  v26 = *(a3 + 16);
  sub_1D774028C(0, &qword_1EE0951E0, type metadata accessor for CGSize, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D78B4104();
}

uint64_t sub_1D77715C0()
{
  if (qword_1EE08FB90 != -1)
  {
    swift_once();
  }

  sub_1D775B5B8(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D78BCAB0;
  sub_1D773C9B8(0, &qword_1EE08F9F0);
  sub_1D78B6504();
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 64) = sub_1D775ABD4();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  sub_1D78B60A4();
  sub_1D78B42C4();
}

id sub_1D777173C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for BundleSoftPaywallViewProvider()
{
  result = qword_1EE0918B8;
  if (!qword_1EE0918B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D77718B8()
{
  type metadata accessor for BundlePaywallViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_1D774028C(319, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1D7771A3C(uint64_t a1, uint64_t a2)
{
  *(*v2 + OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1D7771AC0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = sub_1D78B5B14();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v6 = a3;
  (*(v7 + 104))(v6, *MEMORY[0x1E69B6818]);

  sub_1D78B5B64();
}

uint64_t sub_1D7771D18(__int128 *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for BundlePaywallRenderModel();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 10);
  v9 = v2 + OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v48 = ObjectType;
    v49 = Strong;
    v11 = *(v9 + 8);
    v12 = [v8 userInterfaceStyle];
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_layoutAttributesFactory), *(v2 + OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_layoutAttributesFactory + 24));
    v13 = a1[3];
    v55[2] = a1[2];
    v55[3] = v13;
    v55[4] = a1[4];
    v14 = *a1;
    v55[1] = a1[1];
    v55[0] = v14;
    *&v55[5] = v8;
    *(&v55[5] + 8) = *(a1 + 88);
    *(&v55[6] + 8) = *(a1 + 104);
    *(&v55[7] + 8) = *(a1 + 120);
    v46 = OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_viewModel;
    sub_1D77C07B4((v2 + OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_viewModel), v55, v54);
    memcpy(v53, v54, sizeof(v53));
    v15 = OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_images;
    swift_beginAccess();
    v16 = *(*(v2 + v15) + 16);
    v50 = v12;
    if (v16 && (sub_1D777BC2C(v12), (v17 & 1) != 0))
    {
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      if (sub_1D776EF28(v8))
      {
        type metadata accessor for BundleSoftPaywallRenderer();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v19 = [objc_opt_self() bundleForClass_];
        v44 = *(v2 + OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_bundleSoftPaywallView);
        v20 = [v44 traitCollection];
        v21 = sub_1D78B5C44();
        v22 = [objc_opt_self() imageNamed:v21 inBundle:v19 compatibleWithTraitCollection:v20];
        v45 = v11;
        v23 = v8;
        v24 = v22;

        swift_beginAccess();
        v25 = v24;
        v8 = v23;
        v11 = v45;
        sub_1D7827AE8(v25, v50);
        swift_endAccess();
        sub_1D77726B0(v2 + v46, v7);
        v26 = sub_1D77705CC(&OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_images);
        v27 = sub_1D77705CC(&OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_badgeImages);
        v28 = OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_videoFileURL;
        swift_beginAccess();
        sub_1D7772714(v2 + v28, &v7[v5[7]], &unk_1EE096460, MEMORY[0x1E6968FB0]);
        *&v7[v5[5]] = v26;
        *&v7[v5[6]] = v27;
        sub_1D77CBF70(v7, v54, v8, v44);
        sub_1D7772B98(v7, type metadata accessor for BundlePaywallRenderModel);
      }
    }

    v47 = v8;
    v29 = sub_1D776E7B8(v8);
    sub_1D777246C();
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1D78BCCA0;
    memcpy(v52, v53, 0x148uLL);
    sub_1D77724C0(v52);
    memcpy(v55, v52, 0x1A9uLL);
    sub_1D77724C8(v54, v51);
    *(v30 + 32) = sub_1D776D728(v8, v55);
    v31 = sub_1D776DFC0(v8, v55);
    v32 = sub_1D7772524(v54);
    *(v30 + 40) = v31;
    MEMORY[0x1EEE9AC00](v32);
    *(&v43 - 2) = v30;
    sub_1D7772594();
    sub_1D78B41F4();

    sub_1D773F004(0, &qword_1EE08FE10);
    v33 = sub_1D78B6104();
    v34 = swift_allocObject();
    v34[2] = v50;
    memcpy(v34 + 3, v54, 0x148uLL);
    v35 = v49;
    v34[44] = v49;
    v34[45] = v11;
    v46 = v29;
    v34[46] = v29;
    sub_1D77724C8(v54, v51);
    sub_1D774028C(0, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    swift_unknownObjectRetain();

    v50 = v2;
    sub_1D78B40A4();

    v36 = sub_1D78B6104();
    v37 = swift_allocObject();
    memcpy(v37 + 2, v54, 0x148uLL);
    v37[43] = v35;
    v37[44] = v11;
    v38 = v47;
    v37[45] = v47;
    sub_1D77724C8(v54, v51);
    type metadata accessor for CGSize(0);
    swift_unknownObjectRetain();
    v39 = v38;
    sub_1D78B40A4();

    v40 = sub_1D78B4014();
    v41 = sub_1D78B40D4();

    sub_1D7772524(v54);
    swift_unknownObjectRelease();
    return v41;
  }

  else
  {
    if (qword_1EE08FB90 != -1)
    {
      swift_once();
    }

    sub_1D78B6094();
    sub_1D78B42C4();
    sub_1D774028C(0, &qword_1EE0951E0, type metadata accessor for CGSize, MEMORY[0x1E69D6B18]);
    v55[0] = 0uLL;
    swift_allocObject();
    return sub_1D78B4104();
  }
}

void sub_1D777246C()
{
  if (!qword_1EE08FA00)
  {
    v0 = sub_1D78B66F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE08FA00);
    }
  }
}

void sub_1D7772594()
{
  if (!qword_1EE08FFB0)
  {
    sub_1D774028C(255, &qword_1EE08FFA8, sub_1D776F59C, MEMORY[0x1E69E62F8]);
    sub_1D775B5B8(255, &qword_1EE08FFA0, &qword_1EE08F9F0, MEMORY[0x1E69E7280], MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE08FFB0);
    }
  }
}

uint64_t sub_1D77726B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BundlePaywallViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7772714(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D774028C(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D7772794(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D774028C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D7772804(uint64_t a1, uint64_t a2)
{
  sub_1D774028C(0, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7772898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v26 = a4;
  v12 = type metadata accessor for BundlePaywallRenderModel();
  result = MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  if (*(*a1 + 16))
  {
    v25 = a7;
    v17 = v16[4];
    swift_beginAccess();
    v18 = v17;
    sub_1D7827AE8(v17, a3);
    result = swift_endAccess();
    if (v16[2] >= 2uLL)
    {
      v19 = v16[5];
      swift_beginAccess();
      v20 = v19;
      sub_1D7827AE8(v19, a3);
      swift_endAccess();
      sub_1D77726B0(a2 + OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_viewModel, v15);
      v21 = sub_1D77705CC(&OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_images);
      v22 = sub_1D77705CC(&OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_badgeImages);
      v23 = OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_videoFileURL;
      swift_beginAccess();
      sub_1D7772714(a2 + v23, &v15[v12[7]], &unk_1EE096460, MEMORY[0x1E6968FB0]);
      *&v15[v12[5]] = v21;
      *&v15[v12[6]] = v22;
      v24 = [a5 traitCollection];
      sub_1D77CBF70(v15, v26, v24, *(a2 + OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_bundleSoftPaywallView));

      sub_1D7772B98(v15, type metadata accessor for BundlePaywallRenderModel);
      return v25;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7772B98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_1D7772BF8(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = *(Strong + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_eventHandler + 8);
      ObjectType = swift_getObjectType();
      (*(v5 + 104))(a1, ObjectType, v5);
      swift_unknownObjectRelease();
    }
  }

  return a2 != 0;
}

id sub_1D7772DD4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1D7772E20()
{
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

uint64_t sub_1D7772EB0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_1D7772EF8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1D7772F68(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v7 = MEMORY[0x1E69E7CC0];
    sub_1D78B64D4();
    v4 = (a1 + 32);
    do
    {
      v5 = *v4;
      v4 += 2;
      v6 = v5;
      sub_1D78B64B4();
      sub_1D78B64E4();
      sub_1D78B64F4();
      sub_1D78B64C4();
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_1D7773010(uint64_t *a1, int a2)
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

uint64_t sub_1D7773058(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1D77730B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1D7773100(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D7773164(uint64_t a1)
{
  v1 = a1 - 48;
  v2 = *(a1 + 16) + 1;
  while (--v2)
  {
    v3 = (v1 + 80);
    v4 = *(v1 + 144) >> 60;
    v1 += 80;
    if (v4 == 6)
    {
      v5 = *v3;

      return v5;
    }
  }

  return 0;
}

uint64_t sub_1D77731CC(uint64_t a1)
{
  v1 = a1 - 48;
  v2 = *(a1 + 16) + 1;
  while (--v2)
  {
    v3 = (v1 + 80);
    v4 = *(v1 + 144) >> 60;
    v1 += 80;
    if (v4 == 7)
    {
      v5 = *v3;

      return v5;
    }
  }

  return 0;
}

uint64_t sub_1D7773234(uint64_t a1)
{
  v1 = a1 - 48;
  v2 = *(a1 + 16) + 1;
  while (--v2)
  {
    v3 = v1 + 80;
    v4 = *(v1 + 144) >> 60;
    v1 += 80;
    if (v4 == 4)
    {
      return *v3;
    }
  }

  return 0;
}

BOOL Array<A>.hasAdTrait()(uint64_t a1)
{
  v1 = (a1 + 96);
  v2 = *(a1 + 16) + 1;
  do
  {
    if (!--v2)
    {
      break;
    }

    v3 = *v1;
    v1 += 10;
  }

  while (v3 >> 60 != 6);
  return v2 != 0;
}

BOOL Array<A>.hasArticleTrait()(uint64_t a1)
{
  v1 = (a1 + 96);
  v2 = *(a1 + 16) + 1;
  do
  {
    if (!--v2)
    {
      break;
    }

    v3 = *v1;
    v1 += 10;
  }

  while (v3 >> 60);
  return v2 != 0;
}

BOOL Array<A>.hasFeedTrait()(uint64_t a1)
{
  v1 = (a1 + 96);
  v2 = *(a1 + 16) + 1;
  do
  {
    if (!--v2)
    {
      break;
    }

    v3 = *v1;
    v1 += 10;
  }

  while (v3 >> 60 != 4);
  return v2 != 0;
}

unint64_t sub_1D7773304(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 1702060386;
    v5 = 0xD000000000000014;
    if (a1 == 2)
    {
      v5 = 0xD000000000000015;
    }

    if (a1)
    {
      v4 = 0xD000000000000017;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0xD000000000000016;
    if (a1 == 6)
    {
      v1 = 0xD000000000000018;
    }

    v2 = 0xD000000000000015;
    if (a1 != 4)
    {
      v2 = 0xD000000000000012;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D7773450()
{
  sub_1D78B5D14();
}

uint64_t sub_1D777357C()
{
  sub_1D78B5D14();
}

uint64_t sub_1D77736E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D7777A04();
  *a1 = result;
  return result;
}

unint64_t sub_1D7773718@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D7773304(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D7773760@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D7777A04();
  *a1 = result;
  return result;
}

uint64_t sub_1D77737A0(uint64_t a1)
{
  v2 = sub_1D7776460();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D77737DC(uint64_t a1)
{
  v2 = sub_1D7776460();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D7773818(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x656C6369747261;
    v6 = 0x6575737369;
    if (a1 != 2)
    {
      v6 = 1684366694;
    }

    if (a1)
    {
      v5 = 0x32656C6369747261;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6C61727265666572;
    v2 = 0x656C7A7A7570;
    if (a1 != 7)
    {
      v2 = 0x657069636572;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x70756F7267;
    if (a1 != 4)
    {
      v3 = 25697;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D7773934(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  v5 = *v3;
  sub_1D78B6814();
  a3(v7, v5);
  return sub_1D78B6844();
}

uint64_t sub_1D77739A4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1D78B6814();
  a4(v8, v6);
  return sub_1D78B6844();
}

uint64_t sub_1D77739F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D7777D98();
  *a1 = result;
  return result;
}

uint64_t sub_1D7773A20@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D7773818(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D7773AFC(void *a1)
{
  v3 = v1;
  sub_1D7779BF4(0, &qword_1EC9C9880, sub_1D7777CF0, &type metadata for PurchaseTraits.ArticleAssociatedValues.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7777CF0();
  sub_1D78B6884();
  v15 = 0;
  sub_1D78B6684();
  if (!v2)
  {
    v14 = 1;
    sub_1D78B6654();
    v13 = 2;
    sub_1D78B6654();
    v11[1] = *(v3 + 48);
    v12 = 3;
    sub_1D7777D44(0, &qword_1EE090010, MEMORY[0x1E69E62F8]);
    sub_1D775DC34(&qword_1EC9C9888);
    sub_1D78B66B4();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1D7773D38(void *a1)
{
  sub_1D7779BF4(0, &qword_1EC9C9860, sub_1D7777C48, &type metadata for PurchaseTraits.PuzzleAssociatedValues.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7777C48();
  sub_1D78B6884();
  v16 = 0;
  sub_1D78B6684();
  if (!v1)
  {
    v15 = 1;
    sub_1D78B6684();
    v14 = 2;
    sub_1D78B66C4();
    v13 = 3;
    sub_1D78B6674();
    v12 = 4;
    sub_1D78B6674();
    v11 = 5;
    sub_1D78B6694();
    v10 = 6;
    sub_1D78B66A4();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1D7773F6C(void *a1)
{
  sub_1D7779BF4(0, &qword_1EC9C9858, sub_1D7777BF4, &type metadata for PurchaseTraits.FeedAssociatedValues.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7777BF4();
  sub_1D78B6884();
  v12 = 0;
  sub_1D78B66A4();
  if (!v1)
  {
    v11 = 1;
    sub_1D78B6654();
    v10 = 2;
    sub_1D78B6654();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1D7774118(void *a1)
{
  sub_1D7779BF4(0, &qword_1EC9C9850, sub_1D7777BA0, &type metadata for PurchaseTraits.GroupAssociatedValues.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7777BA0();
  sub_1D78B6884();
  v14 = 0;
  sub_1D78B6684();
  if (!v1)
  {
    v13 = 1;
    sub_1D78B66A4();
    v12 = 2;
    sub_1D78B6684();
    v11 = 3;
    sub_1D78B66A4();
    v10 = 4;
    sub_1D78B66A4();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1D7774304(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v13 = a4;
  sub_1D7779BF4(0, &qword_1EC9C9840, sub_1D7777B4C, &type metadata for PurchaseTraits.AdAssociatedValues.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7777B4C();
  sub_1D78B6884();
  v15 = 0;
  v10 = v12[1];
  sub_1D78B6684();
  if (!v10)
  {
    v14 = 1;
    sub_1D78B6694();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1D77744A4(void *a1)
{
  sub_1D7779BF4(0, &qword_1EC9C9830, sub_1D7777AF8, &type metadata for PurchaseTraits.ReferralAssociatedValues.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7777AF8();
  sub_1D78B6884();
  v12 = 0;
  sub_1D78B6684();
  if (!v1)
  {
    v11 = 1;
    sub_1D78B6654();
    v10 = 2;
    sub_1D78B6654();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1D7774650(void *a1)
{
  sub_1D7779BF4(0, &qword_1EC9C9820, sub_1D7777AA4, &type metadata for PurchaseTraits.RecipeAssociatedValues.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7777AA4();
  sub_1D78B6884();
  v12 = 0;
  sub_1D78B6684();
  if (!v1)
  {
    v11 = 1;
    sub_1D78B6694();
    v10 = 2;
    sub_1D78B6684();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1D77747FC()
{
  v1 = 0x49656C6369747261;
  v2 = 0xD000000000000018;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000011;
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

uint64_t sub_1D7774880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D7777DE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D77748A8(uint64_t a1)
{
  v2 = sub_1D7777CF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D77748E4(uint64_t a1)
{
  v2 = sub_1D7777CF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D7774920@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D7777F5C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_1D77749CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x44496575737369 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D78B6724();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D7774A54(uint64_t a1)
{
  v2 = sub_1D7777C9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7774A90(uint64_t a1)
{
  v2 = sub_1D7777C9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D7774ACC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v15 = a2;
  sub_1D7779BF4(0, &qword_1EC9C98B0, sub_1D7777C9C, &type metadata for PurchaseTraits.IssueAssociatedValues.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7777C9C();
  sub_1D78B6874();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v15;
  v10 = sub_1D78B65E4();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v9 = v10;
  v9[1] = v12;
  return result;
}

uint64_t sub_1D7774C7C(void *a1)
{
  sub_1D7779BF4(0, &qword_1EC9C9870, sub_1D7777C9C, &type metadata for PurchaseTraits.IssueAssociatedValues.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7777C9C();
  sub_1D78B6884();
  sub_1D78B6684();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1D7774DE4()
{
  v1 = *v0;
  v2 = 0x4449656C7A7A7570;
  v3 = 0x646961507369;
  if (v1 != 5)
  {
    v3 = 0x6C75636966666964;
  }

  v4 = 0x79616C507473616CLL;
  if (v1 != 3)
  {
    v4 = 0x6574656C706D6F63;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x7954656C7A7A7570;
  if (v1 != 1)
  {
    v5 = 0x73736572676F7270;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}