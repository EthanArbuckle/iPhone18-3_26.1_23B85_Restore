void sub_100003AD0(uint64_t a1)
{
  v1 = [*(a1 + 32) addressView];
  [v1 becomeFirstResponder];
}

void sub_100003DC8(uint64_t a1)
{
  v1 = [*(a1 + 32) addressView];
  [v1 becomeFirstResponder];
}

void sub_10000412C(uint64_t a1)
{
  v1 = [*(a1 + 32) addressView];
  [v1 becomeFirstResponder];
}

void sub_1000041B4(id a1)
{
  v3 = objc_alloc_init(CNContactStoreConfiguration);
  [v3 setIncludeIncludeManagedAppleIDs:1];
  v1 = [[CNContactStore alloc] initWithConfiguration:v3];
  v2 = qword_10011A4B0;
  qword_10011A4B0 = v1;

  [qword_10011A4B0 requestAccessForEntityType:0 completionHandler:&stru_100106DB0];
}

id sub_1000042B8(void *a1, void *a2, void *a3, int a4, int a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = [CNMonogrammer descriptorForRequiredKeysIncludingImage:1];
  v28[0] = v12;
  v13 = [CNContactFormatter descriptorForRequiredKeysForStyle:0];
  v28[1] = v13;
  v28[2] = CNContactEmailAddressesKey;
  v28[3] = CNContactPhoneNumbersKey;
  v14 = +[CNContactViewController descriptorForRequiredKeys];
  v28[4] = v14;
  v15 = [NSArray arrayWithObjects:v28 count:5];

  v16 = 0;
  v17 = 0;
  if (v10 && a4)
  {
    v18 = [CNContact predicateForContactsMatchingEmailAddress:v10];
    v27 = 0;
    v19 = [v9 unifiedContactsMatchingPredicate:v18 keysToFetch:v15 error:&v27];
    v17 = v27;
    v16 = [v19 firstObject];
  }

  if (v16 || !a5)
  {
LABEL_11:
    if (v16)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v10 | v11)
  {
    if (v11)
    {
      v20 = v11;
    }

    else
    {
      v20 = [CNPhoneNumber phoneNumberWithStringValue:v10];
    }

    v21 = v20;
    v22 = [CNContact predicateForContactsMatchingPhoneNumber:v20];
    v26 = v17;
    v23 = [v9 unifiedContactsMatchingPredicate:v22 keysToFetch:v15 error:&v26];
    v24 = v26;

    v16 = [v23 firstObject];

    v17 = v24;
    goto LABEL_11;
  }

LABEL_12:
  v16 = [CNContact contactWithDisplayName:0 emailOrPhoneNumber:v10];
LABEL_13:

  return v16;
}

void sub_100004844(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 72) count];
  v3 = *(a1 + 32);
  v4 = 1.0;
  if (!v2)
  {
    v5 = [v3 addressView];
    v6 = [v5 text];
    v7 = [v6 length];

    if (v7)
    {
      return;
    }

    v3 = *(a1 + 32);
    v4 = 0.0;
  }

  v8 = [v3 searchResultTable];
  [v8 setAlpha:v4];
}

void sub_1000059E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100005A08(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained presentingViewController];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100005B04;
  v9[3] = &unk_100106E00;
  objc_copyWeak(&v11, (a1 + 32));
  v12 = a2;
  v8 = v5;
  v10 = v8;
  [v7 dismissViewControllerAnimated:1 completion:v9];

  objc_destroyWeak(&v11);
}

void sub_100005B04(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained completion];

  if (v2)
  {
    v3 = [WeakRetained completion];
    v3[2](v3, *(a1 + 48), *(a1 + 32));
  }
}

void sub_100005D0C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

id cdui_default_log()
{
  if (qword_10011A4C0 != -1)
  {
    sub_1000C5B60();
  }

  v1 = qword_10011A4C8;

  return v1;
}

void sub_100006188(id a1)
{
  qword_10011A4C8 = os_log_create("com.apple.CloudDocsUI", "default");

  _objc_release_x1();
}

uint64_t sub_1000065B8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 existingRecipients];
  v5 = [v3 address];

  LODWORD(v3) = [v4 containsObject:v5];
  return v3 ^ 1;
}

void sub_100006854(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 40) copy];
  v4 = *(a1 + 32);
  v5 = *(v4 + 48);
  *(v4 + 48) = v3;

  v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [*(a1 + 40) count]);
  v7 = [CNMonogrammer descriptorForRequiredKeysIncludingImage:1];
  v17[0] = v7;
  v8 = [CNContactFormatter descriptorForRequiredKeysForStyle:0];
  v17[1] = v8;
  v17[2] = CNContactEmailAddressesKey;
  v9 = [NSArray arrayWithObjects:v17 count:3];

  v10 = *(a1 + 32);
  v11 = *(v10 + 48);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100006A14;
  v14[3] = &unk_100106E98;
  v14[4] = v10;
  v15 = v9;
  v16 = v6;
  v12 = v6;
  v13 = v9;
  [v11 enumerateObjectsUsingBlock:v14];
  [*(a1 + 32) processUpdate:v12 changedObjects:0];

  objc_autoreleasePoolPop(v2);
}

void sub_100006A14(uint64_t a1, void *a2)
{
  v8 = a2;
  if (([v8 isGroup] & 1) == 0)
  {
    v3 = *(*(a1 + 32) + 16);
    v4 = [v8 contact];
    v5 = [v4 identifier];
    v6 = [v3 unifiedContactWithIdentifier:v5 keysToFetch:*(a1 + 40) error:0];

    if (v6)
    {
      [v8 setContact:v6];
    }

    v7 = objc_opt_new();
    [v7 setComposeRecipient:v8];
    [*(a1 + 48) addObject:v7];
  }
}

id sub_100006DFC(double a1, double a2)
{
  v5 = type metadata accessor for _UIPreferredContentSizeRelayingNavigationController();
  v17.receiver = v2;
  v17.super_class = v5;
  objc_msgSendSuper2(&v17, "preferredContentSize");
  v7 = v6;
  v9 = v8;
  v16.receiver = v2;
  v16.super_class = v5;
  objc_msgSendSuper2(&v16, "setPreferredContentSize:", a1, a2);
  result = [v2 preferredContentSize];
  if (v7 != v12 || v9 != v11)
  {
    v14 = *&v2[OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing51_UIPreferredContentSizeRelayingNavigationController_preferredContentSizeDidChangeHandler];
    if (v14)
    {
      v15 = *&v2[OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing51_UIPreferredContentSizeRelayingNavigationController_preferredContentSizeDidChangeHandler + 8];

      v14(v2, &off_1001078C0);
      return sub_100010800(v14);
    }
  }

  return result;
}

id sub_10000713C(uint64_t a1, uint64_t a2, void *a3)
{
  type metadata accessor for _UIPreferredContentSizeRelayingNavigationController();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v3[OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing28_UIViewServiceViewController_containedNavController] = v6;
  v7 = v6;
  if (a2)
  {
    v8 = sub_1000C6D44();
  }

  else
  {
    v8 = 0;
  }

  v15.receiver = v3;
  v15.super_class = type metadata accessor for _UIViewServiceViewController();
  v9 = objc_msgSendSuper2(&v15, "initWithNibName:bundle:", v8, a3);

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = &v6[OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing51_UIPreferredContentSizeRelayingNavigationController_preferredContentSizeDidChangeHandler];
  v12 = *&v6[OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing51_UIPreferredContentSizeRelayingNavigationController_preferredContentSizeDidChangeHandler];
  v13 = *&v6[OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing51_UIPreferredContentSizeRelayingNavigationController_preferredContentSizeDidChangeHandler + 8];
  *v11 = sub_1000107F8;
  v11[1] = v10;

  sub_100010800(v12);

  return v9;
}

void sub_100007268(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [a1 preferredContentSize];
    [v3 setPreferredContentSize:?];
  }
}

void sub_10000739C(void *a1, uint64_t a2, void *a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  [a3 preferredContentSize];
  [v5 setPreferredContentSize:?];
  swift_unknownObjectRelease();
}

id sub_10000742C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_100007504(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = &v3[OBJC_IVAR___CloudSharingViewController_itemUTI];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &v3[OBJC_IVAR___CloudSharingViewController_appName];
  *v9 = 0;
  *(v9 + 1) = 0;
  v3[OBJC_IVAR___CloudSharingViewController_isFolderSharing] = 0;
  v10 = &v3[OBJC_IVAR___CloudSharingViewController_explicitOrURLName];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v3[OBJC_IVAR___CloudSharingViewController_ckClientRootFolderName];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v3[OBJC_IVAR___CloudSharingViewController_ckClientFolderSubitemName];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v3[OBJC_IVAR___CloudSharingViewController_appBundleSubscriber] = 0;
  v13 = type metadata accessor for CKShareModel();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = sub_10008765C();
  v17 = type metadata accessor for OptionsModel();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = sub_10001D490(v16);

  v21 = type metadata accessor for SharingModel();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = sub_100072A78(v20);

  *&v4[OBJC_IVAR___CloudSharingViewController_model] = v24;
  if (a2)
  {
    v25 = sub_1000C6D44();
  }

  else
  {
    v25 = 0;
  }

  v28.receiver = v4;
  v28.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v28, "initWithNibName:bundle:", v25, a3);

  return v26;
}

uint64_t sub_1000076B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t, void *))
{
  if (a3)
  {
    v7 = sub_1000C6D84();
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

uint64_t sub_1000077D8()
{
  if ([v0 _remoteViewControllerProxy])
  {
    sub_1000C71E4();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    sub_10000FEB8(&qword_100116258, &unk_1000CB6B0);
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_100010F24(v5, &qword_1001161F0, &unk_1000CB6A0);
    return 0;
  }
}

void sub_10000794C()
{
  v1 = v0;
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, "viewDidLoad");
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() systemGroupedBackgroundColor];
    [v3 setBackgroundColor:v4];

    v5 = *&v1[OBJC_IVAR___CloudSharingViewController_model];
    *(v5 + 48) = sub_10000F9F8(&qword_100116328, v6, type metadata accessor for CloudSharingViewController);
    swift_unknownObjectWeakAssign();
    v7 = *(v5 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel_networkMonitor);
    v8 = *(v7 + 16);
    v9 = *(v7 + 24);

    sub_1000C6154();

    *(swift_allocObject() + 16) = v1;
    v10 = objc_allocWithZone(sub_10000FEB8(&qword_100116330, &unk_1000CBC30));
    v1;
    v11 = sub_1000C6614();
    sub_100007B2C(v11);
    sub_10006ACDC();
  }

  else
  {
    __break(1u);
  }
}

void sub_100007B2C(void *a1)
{
  v3 = [a1 view];
  if (!v3)
  {
    goto LABEL_17;
  }

  v39 = v3;
  [v1 addChildViewController:a1];
  v4 = [v1 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = v4;
  [v4 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [v39 setFrame:{v7, v9, v11, v13}];
  v14 = [v1 view];
  if (!v14)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v15 = v14;
  [v14 addSubview:v39];

  [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_10000FEB8(&qword_100116340, &unk_1000CDF80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1000CB150;
  v17 = [v1 view];
  if (!v17)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v18 = v17;
  v19 = [v17 leadingAnchor];

  v20 = [v39 leadingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  *(v16 + 32) = v21;
  v22 = [v1 view];
  if (!v22)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v23 = v22;
  v24 = [v22 trailingAnchor];

  v25 = [v39 trailingAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];

  *(v16 + 40) = v26;
  v27 = [v1 view];
  if (!v27)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v28 = v27;
  v29 = [v27 topAnchor];

  v30 = [v39 topAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];

  *(v16 + 48) = v31;
  v32 = [v1 view];
  if (!v32)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    sub_1000C72E4();
    __break(1u);
    return;
  }

  v33 = v32;
  v34 = objc_opt_self();
  v35 = [v33 bottomAnchor];

  v36 = [v39 bottomAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];

  *(v16 + 56) = v37;
  sub_100010778(0, &qword_100116348, NSLayoutConstraint_ptr);
  isa = sub_1000C6E84().super.isa;

  [v34 activateConstraints:isa];

  [a1 didMoveToParentViewController:v1];
}

void *sub_100007FA4(char a1)
{
  v12.receiver = v1;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, "viewWillAppear:", a1 & 1);
  v3 = *&v1[OBJC_IVAR___CloudSharingViewController_model];
  v4 = sub_100008AB4();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v8 = [v1 _hostApplicationBundleIdentifier];
    if (v8)
    {
      v9 = v8;
      v6 = sub_1000C6D84();
      v7 = v10;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C60A4();
  result = sub_1000077D8();
  if (result)
  {
    [result _requestContentSize:{375.0, 636.0, v6, v7}];
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_100008124()
{
  ObjectType = swift_getObjectType();
  sub_10000816C();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10000816C()
{
  v1 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v46 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = &v39 - v6;
  v8 = __chkstk_darwin(v5);
  v47 = &v39 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v39 - v11;
  v13 = __chkstk_darwin(v10);
  v44 = &v39 - v14;
  __chkstk_darwin(v13);
  v16 = &v39 - v15;
  v17 = sub_1000C5D84();
  v18 = *(v17 - 8);
  v19 = v18[8];
  v20 = __chkstk_darwin(v17);
  v43 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v39 - v22;
  v24 = *(v0 + OBJC_IVAR___CloudSharingViewController_model);
  swift_getKeyPath();
  swift_getKeyPath();
  v48 = 0;

  sub_1000C60A4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v25 = v18[6];
  if (v25(v16, 1, v17) == 1)
  {
    return sub_100010F24(v16, &qword_100116260, &qword_1000CD940);
  }

  v42 = v7;
  v45 = v18;
  v40 = v18[4];
  v40(v23, v16, v17);
  v41 = sub_1000C5D54();
  sub_1000C5D24(v27);
  v29 = v28;
  v30 = [v28 br_physicalURL];

  if (v30)
  {
    sub_1000C5D44();

    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  v32 = v45[7];
  v32(v12, v31, 1, v17);
  v33 = v12;
  v34 = v44;
  sub_10000FF00(v33, v44);
  if (v41)
  {
    sub_1000C5D34();
  }

  if (v25(v34, 1, v17) == 1)
  {
    sub_100010F24(v34, &qword_100116260, &qword_1000CD940);
    v35 = v45;
  }

  else
  {
    v36 = v43;
    v40(v43, v34, v17);
    sub_1000C5D34();
    v35 = v45;
    (v45[1])(v36, v17);
  }

  sub_1000C5D34();
  v37 = v47;
  v32(v47, 1, 1, v17);
  swift_getKeyPath();
  swift_getKeyPath();
  v38 = v42;
  sub_1000C6094();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10000FF70(v37, v46);

  sub_1000C60A4();
  sub_100060FBC(v38);
  sub_100010F24(v38, &qword_100116260, &qword_1000CD940);
  sub_100010F24(v37, &qword_100116260, &qword_1000CD940);
  return (v35[1])(v23, v17);
}

uint64_t sub_100008818()
{
  v1 = sub_10000FEB8(&qword_1001196B0, &qword_1000D3690);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v18[-v3];
  v5 = sub_1000C5F24();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v18[-v11];
  v13 = *(v0 + OBJC_IVAR___CloudSharingViewController_model);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (v18[15] == 9)
  {
    v14 = (v0 + OBJC_IVAR___CloudSharingViewController_itemUTI);
    v0 = *(v0 + OBJC_IVAR___CloudSharingViewController_itemUTI + 8);
    if (v0)
    {
      v15 = *v14;

      sub_1000C5F34();
      if ((*(v6 + 48))(v4, 1, v5) == 1)
      {
        sub_100010F24(v4, &qword_1001196B0, &qword_1000D3690);
        LOBYTE(v0) = 0;
      }

      else
      {
        (*(v6 + 32))(v12, v4, v5);
        sub_1000C5EE4();
        LOBYTE(v0) = sub_1000C5F04();
        v16 = *(v6 + 8);
        v16(v10, v5);
        v16(v12, v5);
      }
    }
  }

  else if (*(v0 + OBJC_IVAR___CloudSharingViewController_ckClientRootFolderName + 8))
  {
    LOBYTE(v0) = *(v0 + OBJC_IVAR___CloudSharingViewController_ckClientFolderSubitemName + 8) == 0;
  }

  else
  {
    LOBYTE(v0) = 0;
  }

  return v0 & 1;
}

uint64_t sub_100008AB4()
{
  v1 = *(*(v0 + OBJC_IVAR___CloudSharingViewController_model) + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  if (!v4)
  {
    return 0;
  }

  sub_1000C7164();
  sub_100010778(0, &qword_100116320, CKShare_ptr);
  sub_1000C7094();

  if (!v5)
  {
LABEL_17:

    return 0;
  }

  if (v4 == 0x7365676170 && v5 == 0xE500000000000000 || (sub_1000C73A4() & 1) != 0)
  {

    return 0x6C7070612E6D6F63;
  }

  if ((v4 != 0x737265626D756ELL || v5 != 0xE700000000000000) && (sub_1000C73A4() & 1) == 0)
  {
    if (v4 == 7955819 && v5 == 0xE300000000000000)
    {

LABEL_16:

      return 0xD000000000000011;
    }

    v3 = sub_1000C73A4();

    if (v3)
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  return 0xD000000000000011;
}

uint64_t sub_100008CE8()
{
  v1[3] = v0;
  v1[4] = sub_1000C6F14();
  v1[5] = sub_1000C6F04();
  v2 = swift_task_alloc();
  v1[6] = v2;
  *v2 = v1;
  v2[1] = sub_100008D98;

  return sub_1000090A0();
}

uint64_t sub_100008D98(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 48);
  v9 = *v3;
  v7[7] = v2;

  v10 = v7[5];
  v11 = v7[4];
  if (v4)
  {
    v12 = sub_1000C6ED4();
    v14 = v13;
    v15 = sub_10000903C;
  }

  else
  {
    v7[8] = a2;
    v7[9] = a1;
    v12 = sub_1000C6ED4();
    v14 = v16;
    v15 = sub_100008F24;
  }

  return _swift_task_switch(v15, v12, v14);
}

uint64_t sub_100008F24()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[5];
  v4 = v0[3];

  v5 = *(v4 + OBJC_IVAR___CloudSharingViewController_model);
  v6 = *(v5 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = v2;

  v7 = v2;
  sub_1000C60A4();
  v8 = *(v5 + 24);

  v9 = v1;
  sub_1000860A0(v1, 0);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10000903C()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_1000090A0()
{
  v1[4] = v0;
  v1[5] = sub_1000C6F14();
  v1[6] = sub_1000C6F04();
  v3 = sub_1000C6ED4();
  v1[7] = v3;
  v1[8] = v2;

  return _swift_task_switch(sub_10000913C, v3, v2);
}

uint64_t sub_10000913C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = sub_1000C6F04();
  v0[9] = v3;
  v4 = swift_task_alloc();
  v0[10] = v4;
  *(v4 + 16) = v2;
  v5 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v6 = swift_task_alloc();
  v0[11] = v6;
  v7 = sub_10000FEB8(&qword_100116268, &qword_1000CB7F0);
  *v6 = v0;
  v6[1] = sub_100009254;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, v3, &protocol witness table for MainActor, 0xD000000000000021, 0x80000001000D6BD0, sub_10000FFF0, v4, v7);
}

uint64_t sub_100009254()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v10 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = v2[7];
    v5 = v2[8];
    v6 = sub_1000093E0;
  }

  else
  {
    v7 = v2[9];
    v8 = v2[10];

    v4 = v2[7];
    v5 = v2[8];
    v6 = sub_100009378;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100009378()
{
  v1 = v0[6];

  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[1];

  return v4(v2, v3);
}

uint64_t sub_1000093E0()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[6];

  v4 = v0[1];
  v5 = v0[12];

  return v4();
}

void sub_100009458(uint64_t a1)
{
  v2 = sub_10000FEB8(&unk_100116270, &qword_1000CB7F8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = aBlock - v5;
  v7 = sub_1000077D8();
  if (v7)
  {
    v8 = v7;
    (*(v3 + 16))(v6, a1, v2);
    v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v10 = swift_allocObject();
    (*(v3 + 32))(v10 + v9, v6, v2);
    aBlock[4] = sub_10001000C;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000970C;
    aBlock[3] = &unk_100107908;
    v11 = _Block_copy(aBlock);

    [v8 _requestSavedShareWithCompletion:v11];
    swift_unknownObjectRelease();
    _Block_release(v11);
  }
}

uint64_t sub_10000961C(void *a1, void *a2)
{
  if (a1 && a2)
  {
    v3 = a1;
    v4 = a2;
    sub_10000FEB8(&unk_100116270, &qword_1000CB7F8);
    return sub_1000C6EF4();
  }

  else
  {
    sub_1000100B0();
    swift_allocError();
    *v6 = 0xD000000000000021;
    *(v6 + 8) = 0x80000001000D6BD0;
    *(v6 + 16) = xmmword_1000CB160;
    *(v6 + 32) = 0x80000001000D6C30;
    *(v6 + 40) = 10;
    sub_10000FEB8(&unk_100116270, &qword_1000CB7F8);
    return sub_1000C6EE4();
  }
}

void sub_10000970C(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_1000097B4(uint64_t a1, uint64_t a2, void *a3, const char *a4, void *a5)
{
  v34 = a4;
  v10 = sub_1000C5F74();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = &v5[*a3];
  v16 = v15[1];
  *v15 = a1;
  v15[1] = a2;
  v35 = a2;

  sub_1000C5F54();
  v17 = v5;
  v18 = sub_1000C5F64();
  v19 = sub_1000C6FF4();

  if (!os_log_type_enabled(v18, v19))
  {

    (*(v11 + 8))(v14, v10);
    goto LABEL_5;
  }

  v29 = v17;
  v30 = v11;
  v31 = v10;
  v32 = a5;
  v33 = a1;
  v20 = swift_slowAlloc();
  result = swift_slowAlloc();
  v36 = result;
  *v20 = 136315138;
  v22 = v15[1];
  if (v22)
  {
    v23 = result;
    v24 = *v15;
    v25 = v15[1];

    v26 = sub_100071844(v24, v22, &v36);

    *(v20 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v18, v19, v34, v20, 0xCu);
    sub_100010544(v23);

    (*(v30 + 8))(v14, v31);
    a5 = v32;
    a1 = v33;
    v17 = v29;
LABEL_5:
    v27 = *(*&v17[OBJC_IVAR___CloudSharingViewController_model] + *a5);
    v28 = v35;

    sub_10000DC84(a1, v28);
  }

  __break(1u);
  return result;
}

uint64_t sub_100009A38(void *a1, uint64_t a2, uint64_t a3, void *a4, const char *a5, void *a6)
{
  if (a3)
  {
    v10 = sub_1000C6D84();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = a1;
  sub_1000097B4(v10, v12, a4, a5, a6);
}

uint64_t sub_100009B1C(void *a1)
{
  v2 = sub_1000C5BC4();
  *&v81 = *(v2 - 8);
  v3 = *(v81 + 64);
  v4 = __chkstk_darwin(v2);
  v80 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v73 - v6;
  v8 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v76 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v83 = &v73 - v13;
  v14 = __chkstk_darwin(v12);
  v85 = &v73 - v15;
  v16 = __chkstk_darwin(v14);
  v84 = &v73 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v73 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v73 - v22;
  __chkstk_darwin(v21);
  v87 = &v73 - v24;
  v25 = sub_1000C5D84();
  v26 = *(v25 - 8);
  v88 = v25;
  v89 = v26;
  v27 = *(v26 + 64);
  v28 = __chkstk_darwin(v25);
  v30 = &v73 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v32 = &v73 - v31;
  v33 = [a1 url];
  sub_1000C5D44();

  v86 = sub_1000C5D54();
  v34 = sub_1000C5D54();
  sub_1000C5D24(v35);
  v37 = v36;
  v38 = [v36 br_physicalURL];

  if (v38)
  {
    sub_1000C5D44();

    v39 = 0;
  }

  else
  {
    v39 = 1;
  }

  v40 = v88;
  v41 = *(v89 + 56);
  v78 = v89 + 56;
  v77 = v41;
  v41(v23, v39, 1, v88);
  v42 = v23;
  v43 = v87;
  sub_10000FF00(v42, v87);
  if (v34)
  {
    sub_1000C5D34();
  }

  sub_10000FF70(v43, v20);
  v44 = v89;
  v45 = *(v89 + 48);
  v75 = v89 + 48;
  v74 = v45;
  if (v45(v20, 1, v40) == 1)
  {
    sub_100010F24(v20, &qword_100116260, &qword_1000CD940);
    v79 = 0;
  }

  else
  {
    (*(v44 + 32))(v30, v20, v40);
    v79 = sub_1000C5D54();
    (*(v44 + 8))(v30, v40);
  }

  v46 = v81;
  sub_10000FEB8(&unk_1001196C0, &unk_1000CFFA0);
  inited = swift_initStackObject();
  v81 = xmmword_1000CB170;
  *(inited + 16) = xmmword_1000CB170;
  *(inited + 32) = NSURLLocalizedNameKey;
  v48 = NSURLLocalizedNameKey;
  sub_1000782B8(inited);
  swift_setDeallocating();
  sub_1000104E8(inited + 32);
  sub_1000C5CF4();

  v49 = sub_1000C5B84();
  v51 = v50;
  v52 = *(v46 + 8);
  v52(v7, v2);
  v53 = v82;
  v54 = (v82 + OBJC_IVAR___CloudSharingViewController_explicitOrURLName);
  v55 = *(v82 + OBJC_IVAR___CloudSharingViewController_explicitOrURLName + 8);
  *v54 = v49;
  v54[1] = v51;

  v56 = swift_initStackObject();
  *(v56 + 16) = v81;
  *(v56 + 32) = NSURLTypeIdentifierKey;
  v57 = NSURLTypeIdentifierKey;
  sub_1000782B8(v56);
  swift_setDeallocating();
  sub_1000104E8(v56 + 32);
  v58 = v80;
  sub_1000C5CF4();

  v59 = sub_1000C5B94();
  v61 = v60;
  v52(v58, v2);
  v62 = (v53 + OBJC_IVAR___CloudSharingViewController_itemUTI);
  v63 = *(v53 + OBJC_IVAR___CloudSharingViewController_itemUTI + 8);
  *v62 = v59;
  v62[1] = v61;

  v64 = *(v53 + OBJC_IVAR___CloudSharingViewController_model);
  v66 = v88;
  v65 = v89;
  v67 = v84;
  (*(v89 + 16))(v84, v32, v88);
  v77(v67, 0, 1, v66);
  swift_getKeyPath();
  swift_getKeyPath();
  v68 = v85;
  sub_1000C6094();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10000FF70(v67, v83);

  sub_1000C60A4();
  sub_100060FBC(v68);
  sub_100010F24(v68, &qword_100116260, &qword_1000CD940);
  sub_100010F24(v67, &qword_100116260, &qword_1000CD940);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v90) = 1;

  sub_1000C60A4();
  if (v79)
  {
    v69 = v87;
    v70 = v76;
    sub_10000FF70(v87, v76);
    if (v74(v70, 1, v66) != 1)
    {
      sub_1000C5D34();
      sub_100010F24(v69, &qword_100116260, &qword_1000CD940);
      (*(v65 + 8))(v70, v66);
      if (!v86)
      {
        return (*(v65 + 8))(v32, v66);
      }

      goto LABEL_14;
    }

    sub_100010F24(v69, &qword_100116260, &qword_1000CD940);
    v71 = v70;
  }

  else
  {
    v71 = v87;
  }

  sub_100010F24(v71, &qword_100116260, &qword_1000CD940);
  if (v86)
  {
LABEL_14:
    sub_1000C5D34();
  }

  return (*(v65 + 8))(v32, v66);
}

uint64_t sub_10000A580(void *a1, void *a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR___CloudSharingViewController_model);
  v7 = *(v6 + 24);

  sub_1000860A0(a2, 0);

  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C60A4();
  if (a1)
  {
    v8 = *(v6 + 24);
    swift_getKeyPath();
    swift_getKeyPath();
    v24 = a1;
    v9 = a1;

    sub_1000C60A4();
    v10 = v9;
    sub_1000C7144();
    v11 = sub_1000C7174();

    if (v11)
    {
      sub_10000FEB8(&unk_1001162F0, &unk_1000CBB70);
      if (swift_dynamicCast())
      {
        v12 = objc_allocWithZone(UIImage);
        sub_100010190(v24, v25);
        isa = sub_1000C5D94().super.isa;
        v14 = [v12 initWithData:isa];

        sub_100010128(v24, v25);
        if (v14)
        {
          swift_getKeyPath();
          swift_getKeyPath();

          v15 = v14;
          sub_1000C60A4();
          sub_100010128(v24, v25);
        }

        else
        {
          sub_100010128(v24, v25);
        }
      }
    }

    sub_1000C7154();
    v16 = sub_1000C7174();

    if (v16)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v17 = sub_1000C6D84();
        v19 = v18;
        swift_unknownObjectRelease();

        v20 = (v3 + OBJC_IVAR___CloudSharingViewController_explicitOrURLName);
        v21 = *(v3 + OBJC_IVAR___CloudSharingViewController_explicitOrURLName + 8);
        *v20 = v17;
        v20[1] = v19;
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C60A4();
  v22 = sub_100008818() & 1;
  *(v3 + OBJC_IVAR___CloudSharingViewController_isFolderSharing) = v22;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C60A4();
  return sub_100052A30();
}

uint64_t sub_10000A960(uint64_t a1)
{
  v3 = sub_1000C5F74();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR___CloudSharingViewController_model);
  swift_getKeyPath();
  swift_getKeyPath();
  v25 = a1;

  sub_1000C60A4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (v25)
  {
    if ((v25 & 2) == 0)
    {
      v10 = v25 & 4;
      if ((v25 & 4) != 0)
      {
        v11 = 3;
      }

      else
      {
        v11 = 2;
      }

      v9 = 1;
      if ((v25 & 8) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_17;
    }

    v9 = 3;
  }

  else if ((v25 & 2) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  v10 = v25 & 4;
  if ((v25 & 4) != 0)
  {
    v11 = 3;
  }

  else
  {
    v11 = 2;
  }

  if ((v25 & 8) == 0)
  {
LABEL_16:
    v11 = v10 >> 2;
  }

LABEL_17:
  v12 = [objc_allocWithZone(CKAllowedSharingOptions) initWithAllowedParticipantPermissionOptions:v11 allowedParticipantAccessOptions:v9];
  sub_1000C5F54();
  v13 = v12;
  v14 = sub_1000C5F64();
  v15 = sub_1000C6FF4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v16 = 136315394;
    v17 = sub_10008BAB0();
    v19 = sub_100071844(v17, v18, &v25);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2080;
    v20 = sub_10008BBE8();
    v22 = sub_100071844(v20, v21, &v25);

    *(v16 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v14, v15, "_setAvailablePermissions options-- access: %s, permission: %s", v16, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_10000ACB8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = sub_1000C5F24();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    v19 = (v7 + OBJC_IVAR___CloudSharingViewController_explicitOrURLName);
    v20 = *(v7 + OBJC_IVAR___CloudSharingViewController_explicitOrURLName + 8);
    *v19 = a3;
    v19[1] = a4;
  }

  if (a6)
  {
    v21 = (v7 + OBJC_IVAR___CloudSharingViewController_itemUTI);
    v22 = *(v7 + OBJC_IVAR___CloudSharingViewController_itemUTI + 8);
    *v21 = a5;
    v21[1] = a6;
  }

  else
  {

    sub_1000C5EF4();
    v23 = sub_1000C5E44();
    v25 = v24;
    (*(v15 + 8))(v18, v14);
    v26 = (v7 + OBJC_IVAR___CloudSharingViewController_itemUTI);
    v27 = *(v7 + OBJC_IVAR___CloudSharingViewController_itemUTI + 8);
    *v26 = v23;
    v26[1] = v25;
  }

  if (a2 >> 60 == 15)
  {
  }

  else
  {
    v28 = *(v7 + OBJC_IVAR___CloudSharingViewController_model);
    v29 = objc_allocWithZone(UIImage);
    sub_10001017C(a1, a2);

    sub_10001017C(a1, a2);
    isa = sub_1000C5D94().super.isa;
    v31 = [v29 initWithData:isa];

    sub_100010114(a1, a2);
    swift_getKeyPath();
    swift_getKeyPath();
    v36 = v31;

    v32 = v31;
    sub_1000C60A4();
    sub_100010114(a1, a2);
  }

  v33 = *(v7 + OBJC_IVAR___CloudSharingViewController_model);
  swift_getKeyPath();
  swift_getKeyPath();
  v39 = 1;

  sub_1000C60A4();
  swift_getKeyPath();
  swift_getKeyPath();
  v38 = 1;

  sub_1000C60A4();
  v34 = sub_100008818() & 1;
  *(v7 + OBJC_IVAR___CloudSharingViewController_isFolderSharing) = v34;
  swift_getKeyPath();
  swift_getKeyPath();
  v37 = v34;

  sub_1000C60A4();
  return sub_100052A30();
}

uint64_t sub_10000B3F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_1000C6D84();
  }

  v4 = *(a1 + OBJC_IVAR___CloudSharingViewController_model);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000C60A4();
}

uint64_t sub_10000B4AC(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR___CloudSharingViewController_model);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000C60A4();
}

uint64_t sub_10000B58C@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = sub_1000C6034();
  *a1 = result;
  return result;
}

uint64_t sub_10000B5CC()
{
  v1 = *(v0 + OBJC_IVAR___CloudSharingViewController_model);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  result = sub_1000077D8();
  if (result)
  {
    v3 = result;
    if (v7 == 9)
    {
      goto LABEL_5;
    }

    v4 = *(v1 + 24);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    if (!v6)
    {
LABEL_5:
      v5 = 0;
    }

    else
    {
      v5 = [v6 _copyWithoutPersonalInfo];
    }

    [v3 _shareDidChange:v5];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10000B6FC(uint64_t a1, unsigned __int8 a2)
{
  v2 = a2;
  sub_10000816C();
  if (v2 == 3)
  {
    v3 = sub_1000077D8();
    if (v3)
    {
      [v3 _shareWasMadePrivate];
      swift_unknownObjectRelease();
    }
  }

  result = sub_1000077D8();
  if (result)
  {
    v5 = result;
    v6 = sub_1000C5CD4();
    [v5 _dismissViewControllerWithError:v6];

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_10000B7A8()
{
  v1 = sub_1000C5F74();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v60 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v60 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v60 - v14;
  __chkstk_darwin(v13);
  v17 = &v60 - v16;
  if (*(v0 + OBJC_IVAR___CloudSharingViewController_isFolderSharing) == 1)
  {
    sub_1000C5F54();
    v18 = sub_1000C5F64();
    v19 = sub_1000C6FF4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "iOS: using folder icon for folder sharing appIcon", v20, 2u);
    }

    (*(v2 + 8))(v17, v1);
    v21 = sub_1000C6D44();
    v22 = [objc_opt_self() imageNamed:v21];

    return v22;
  }

  v23 = *(v0 + OBJC_IVAR___CloudSharingViewController_model);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v24 = v67;
  if (!v67)
  {
    sub_1000C5F54();
    v41 = sub_1000C5F64();
    v42 = sub_1000C6FF4();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "iOS appIcon returning nil because appBundleID is nil", v43, 2u);
    }

    (*(v2 + 8))(v6, v1);
    return 0;
  }

  v65 = v2;
  v25 = v66;
  v26 = objc_allocWithZone(ISIcon);
  v61 = v25;
  v27 = sub_1000C6D44();
  v28 = [v26 initWithBundleIdentifier:v27];

  v29 = [objc_opt_self() mainScreen];
  [v29 scale];
  v31 = v30;

  v62 = [objc_allocWithZone(ISImageDescriptor) initWithSize:128.0 scale:{128.0, v31}];
  v63 = v28;
  v32 = [v28 imageForDescriptor:?];
  v64 = v1;
  if (!v32)
  {
    v22 = 0;
    goto LABEL_22;
  }

  v33 = v32;
  v34 = v33;
  if ([v33 placeholder])
  {
    v35 = [v63 prepareImageForDescriptor:v62];
    v36 = v33;
    if (v35)
    {
      v37 = v35;

      v36 = v37;
    }

    sub_1000C5F54();
    v34 = v36;
    v38 = sub_1000C5F64();
    v39 = sub_1000C6FF4();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 67109120;
      *(v40 + 4) = [v34 placeholder];

      _os_log_impl(&_mh_execute_header, v38, v39, "iOS appIcon placeholder;  did prepareImage(forDescriptor:), is still placeHolder: %{BOOL}d", v40, 8u);
    }

    else
    {

      v38 = v34;
    }

    (*(v65 + 8))(v15, v64);
  }

  sub_1000C5F54();
  v44 = v34;
  v45 = sub_1000C5F64();
  v46 = sub_1000C6FF4();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v47 = 138412290;
    *(v47 + 4) = v44;
    *v48 = v44;
    v49 = v44;
    _os_log_impl(&_mh_execute_header, v45, v46, "iOS appIcon image: %@", v47, 0xCu);
    sub_100010F24(v48, &qword_100117080, &unk_1000CC350);
  }

  v1 = v64;
  (*(v65 + 8))(v12, v64);
  result = [v44 CGImage];
  if (result)
  {
    v51 = result;
    v22 = [objc_allocWithZone(UIImage) initWithCGImage:result];

LABEL_22:
    sub_1000C5F54();
    v52 = v22;

    v53 = sub_1000C5F64();
    v54 = sub_1000C6FF4();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v66 = v57;
      *v55 = 136315394;
      v58 = sub_100071844(v61, v24, &v66);

      *(v55 + 4) = v58;
      *(v55 + 12) = 2112;
      *(v55 + 14) = v52;
      *v56 = v22;
      v59 = v52;
      _os_log_impl(&_mh_execute_header, v53, v54, "iOS appIcon: appBundleID: %s, icon: %@", v55, 0x16u);
      sub_100010F24(v56, &qword_100117080, &unk_1000CC350);

      sub_100010544(v57);

      (*(v65 + 8))(v9, v64);
    }

    else
    {

      (*(v65 + 8))(v9, v1);
    }

    return v22;
  }

  __break(1u);
  return result;
}

uint64_t sub_10000BF98()
{
  v1 = *(v0 + OBJC_IVAR___CloudSharingViewController_model);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (v10 == 9)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    if (!v9)
    {
      v3 = *(v1 + 24);
      swift_getKeyPath();
      swift_getKeyPath();

      sub_1000C6094();

      if (v8)
      {
        if ([v8 publicPermission] == 1)
        {
          v4 = [v8 participants];
          sub_100010778(0, &qword_100117010, CKShareParticipant_ptr);
          v5 = sub_1000C6E94();

          if (v5 >> 62)
          {
            sub_1000C72F4();
          }

          else
          {
            v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }
        }

        else
        {
        }
      }

      swift_getKeyPath();
      swift_getKeyPath();

      sub_1000C60A4();
      v7 = sub_100008818() & 1;
      *(v0 + OBJC_IVAR___CloudSharingViewController_isFolderSharing) = v7;
      swift_getKeyPath();
      swift_getKeyPath();

      sub_1000C60A4();
      return sub_100052A30();
    }
  }

  return result;
}

void *sub_10000C218()
{
  v1 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v35 - v3;
  v5 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v35 - v11;
  __chkstk_darwin(v10);
  v14 = &v35 - v13;
  v15 = *(v0 + OBJC_IVAR___CloudSharingViewController_model);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if ((v40 & 0xFE) == 8)
  {
    v38 = v4;
    v36 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__rootFolderURL;
    v17 = *(v15 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__rootFolderURL);
    __chkstk_darwin(v16);
    v37 = v0;
    *(&v35 - 2) = v5;
    v18 = sub_1000106C0();
    *(&v35 - 1) = v18;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v35 - 2) = v5;
    *(&v35 - 1) = v18;
    swift_getKeyPath();

    sub_1000C6094();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10000FF70(v14, v9);

    sub_1000C60A4();
    sub_100060FBC(v12);
    sub_100010F24(v12, &qword_100116260, &qword_1000CD940);
    sub_100010F24(v14, &qword_100116260, &qword_1000CD940);
    v20 = sub_1000C5D84();
    v21 = *(*(v20 - 8) + 56);
    v21(v14, 1, 1, v20);
    v22 = *(v15 + v36);
    sub_10000FF70(v14, v12);

    sub_10000DEEC(v12);

    sub_100010F24(v14, &qword_100116260, &qword_1000CD940);
    v23 = *(v15 + 24);
    swift_getKeyPath();
    swift_getKeyPath();
    v39 = 0;
    swift_retain_n();
    sub_1000C60A4();
    v21(v14, 1, 1, v20);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10000FF70(v14, v12);

    sub_1000C60A4();
    sub_100010F24(v14, &qword_100116260, &qword_1000CD940);

    v24 = v37;
    v25 = (v37 + OBJC_IVAR___CloudSharingViewController_ckClientFolderSubitemName);
    v26 = *(v37 + OBJC_IVAR___CloudSharingViewController_ckClientFolderSubitemName + 8);
    *v25 = 0;
    v25[1] = 0;

    v27 = (v24 + OBJC_IVAR___CloudSharingViewController_ckClientRootFolderName);
    v28 = *(v24 + OBJC_IVAR___CloudSharingViewController_ckClientRootFolderName + 8);
    *v27 = 0;
    v27[1] = 0;

    v29 = v38;
    sub_1000C6F24();
    v30 = sub_1000C6F44();
    (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
    sub_1000C6F14();

    v31 = sub_1000C6F04();
    v32 = swift_allocObject();
    v32[2] = v31;
    v32[3] = &protocol witness table for MainActor;
    v32[4] = v15;
    sub_1000B8860(0, 0, v29, &unk_1000CC3A8, v32);
  }

  else
  {
    sub_10000816C();
    v34 = sub_1000077D8();
    if (v34)
    {
      [v34 _cloudSharingControllerDidActivateShowSharedFolder];
      swift_unknownObjectRelease();
    }

    result = sub_1000077D8();
    if (result)
    {
      [result _dismissViewControllerWithError:0];
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_10000C7BC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  if (sub_1000077D8())
  {
    v8 = swift_dynamicCastObjCProtocolConditional();
    if (v8)
    {
      v9 = v8;
      if ([v8 respondsToSelector:{"_cloudSharingControllerDidActivateAddPeopleWithRemoteSourceX:y:width:height:", &OBJC_PROTOCOL____TtP37com_apple_CloudSharingUI_CloudSharing39_UIShareInvitationViewControllerHostSPI_}])
      {
        v17.origin.x = a1;
        v17.origin.y = a2;
        v17.size.width = a3;
        v17.size.height = a4;
        MinX = CGRectGetMinX(v17);
        v18.origin.x = a1;
        v18.origin.y = a2;
        v18.size.width = a3;
        v18.size.height = a4;
        MinY = CGRectGetMinY(v18);
        v19.origin.x = a1;
        v19.origin.y = a2;
        v19.size.width = a3;
        v19.size.height = a4;
        Width = CGRectGetWidth(v19);
        v20.origin.x = a1;
        v20.origin.y = a2;
        v20.size.width = a3;
        v20.size.height = a4;
        [v9 _cloudSharingControllerDidActivateAddPeopleWithRemoteSourceX:MinX y:MinY width:Width height:CGRectGetHeight(v20)];
        goto LABEL_10;
      }
    }

    swift_unknownObjectRelease();
  }

  if (!sub_1000077D8())
  {
    return 0;
  }

  v13 = swift_dynamicCastObjCProtocolConditional();
  if (!v13 || (v14 = v13, ([v13 respondsToSelector:"_cloudSharingControllerDidActivateShowActivityController"] & 1) == 0))
  {
    v15 = 0;
    goto LABEL_12;
  }

  [v14 _cloudSharingControllerDidActivateShowActivityController];
LABEL_10:
  v15 = 1;
LABEL_12:
  swift_unknownObjectRelease();
  return v15;
}

uint64_t sub_10000C954()
{
  v1 = sub_1000C5BC4();
  v43 = *(v1 - 8);
  v2 = *(v43 + 64);
  v3 = __chkstk_darwin(v1);
  v42 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v37 - v5;
  v7 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v37 - v9;
  v11 = sub_1000C5D84();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v0 + OBJC_IVAR___CloudSharingViewController_model);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100010F24(v10, &qword_100116260, &qword_1000CD940);
  }

  else
  {
    v39 = v0;
    v40 = v1;
    v17 = *(v12 + 32);
    v41 = v11;
    v17(v15, v10, v11);
    v38 = sub_10000FEB8(&unk_1001196C0, &unk_1000CFFA0);
    inited = swift_initStackObject();
    v37 = xmmword_1000CB170;
    *(inited + 16) = xmmword_1000CB170;
    *(inited + 32) = NSURLLocalizedNameKey;
    v19 = NSURLLocalizedNameKey;
    sub_1000782B8(inited);
    swift_setDeallocating();
    sub_1000104E8(inited + 32);
    sub_1000C5CF4();

    v20 = sub_1000C5B84();
    v22 = v21;
    v23 = v40;
    v43 = *(v43 + 8);
    (v43)(v6, v40);
    v24 = v39;
    v25 = (v39 + OBJC_IVAR___CloudSharingViewController_explicitOrURLName);
    v26 = *(v39 + OBJC_IVAR___CloudSharingViewController_explicitOrURLName + 8);
    *v25 = v20;
    v25[1] = v22;

    v27 = swift_initStackObject();
    *(v27 + 16) = v37;
    *(v27 + 32) = NSURLTypeIdentifierKey;
    v28 = NSURLTypeIdentifierKey;
    sub_1000782B8(v27);
    swift_setDeallocating();
    sub_1000104E8(v27 + 32);
    v29 = v42;
    sub_1000C5CF4();

    v30 = sub_1000C5B94();
    v32 = v31;
    (v43)(v29, v23);
    (*(v12 + 8))(v15, v41);
    v33 = (v24 + OBJC_IVAR___CloudSharingViewController_itemUTI);
    v34 = *(v24 + OBJC_IVAR___CloudSharingViewController_itemUTI + 8);
    *v33 = v30;
    v33[1] = v32;

    v0 = v24;
  }

  v35 = sub_100008818() & 1;
  *(v0 + OBJC_IVAR___CloudSharingViewController_isFolderSharing) = v35;
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v44) = v35;

  sub_1000C60A4();
  return sub_100052A30();
}

void sub_10000CEE8(uint64_t a1)
{
  v3 = sub_1000C5F74();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v23[5] = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v23 - v9;
  v11 = sub_1000C5D84();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = __chkstk_darwin(v14);
  v17 = v23 - v16;
  __chkstk_darwin(v15);
  v19 = v23 - v18;
  sub_10000FF70(a1, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100010F24(v10, &qword_100116260, &qword_1000CD940);
    v20 = 0;
    if (!sub_1000077D8())
    {
LABEL_3:

      return;
    }
  }

  else
  {
    v23[2] = v4;
    v23[3] = v3;
    v23[4] = v1;
    (*(v12 + 32))(v19, v10, v11);
    sub_100010778(0, &qword_100116338, FPSandboxingURLWrapper_ptr);
    (*(v12 + 16))(v17, v19, v11);
    v20 = sub_10000D464(v17, 0);
    (*(v12 + 8))(v19, v11);
    if (!sub_1000077D8())
    {
      goto LABEL_3;
    }
  }

  v23[9] = &OBJC_PROTOCOL____TtP37com_apple_CloudSharingUI_CloudSharing39_UIShareInvitationViewControllerHostSPI_;
  v21 = swift_dynamicCastObjCProtocolConditional();
  if (v21)
  {
    v22 = v21;
    if ([v21 respondsToSelector:"_cloudSharingControllerDidUpdateRootFolderURL:"])
    {
      [v22 _cloudSharingControllerDidUpdateRootFolderURL:v20];
    }
  }

  swift_unknownObjectRelease();
}

id sub_10000D464(uint64_t a1, char a2)
{
  sub_1000C5D24(__stack_chk_guard);
  v5 = v4;
  v14 = 0;
  v6 = [swift_getObjCClassFromMetadata() wrapperWithURL:v4 readonly:a2 & 1 error:&v14];

  v7 = v14;
  if (v6)
  {
    v8 = sub_1000C5D84();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v14;
    sub_1000C5CE4();

    swift_willThrow();
    v12 = sub_1000C5D84();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return v6;
}

uint64_t sub_10000D5C4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1000C5F74();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = sub_1000C6F14();
  v3[9] = sub_1000C6F04();
  v8 = sub_1000C6ED4();
  v3[10] = v8;
  v3[11] = v7;

  return _swift_task_switch(sub_10000D6C0, v8, v7);
}

uint64_t sub_10000D6C0()
{
  v1 = v0[8];
  v2 = v0[4];
  v3 = [objc_opt_self() alertControllerWithParticipant:v0[2] highlight:v0[3] preferredStyle:1];
  v0[12] = v3;
  v4 = sub_1000C6F04();
  v0[13] = v4;
  v5 = swift_task_alloc();
  v0[14] = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v3;
  v6 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = sub_10000D808;

  return withCheckedContinuation<A>(isolation:function:_:)(v7, v4, &protocol witness table for MainActor, 0xD000000000000034, 0x80000001000D6E50, sub_100011188, v5, &type metadata for () + 8);
}

uint64_t sub_10000D808()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v4 = *(*v0 + 104);
  v8 = *v0;

  v5 = *(v1 + 88);
  v6 = *(v1 + 80);

  return _swift_task_switch(sub_10000D968, v6, v5);
}

uint64_t sub_10000D968()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);

  sub_1000C5F54();
  v3 = sub_1000C5F64();
  v4 = sub_1000C6FF4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "askToRemoveFromMessagesConversation just presented alert", v5, 2u);
  }

  v7 = *(v0 + 48);
  v6 = *(v0 + 56);
  v8 = *(v0 + 40);

  (*(v7 + 8))(v6, v8);

  v9 = *(v0 + 8);

  return v9();
}

void sub_10000DA78(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_10000FEB8(&qword_1001164F0, &unk_1000CC3C0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = aBlock - v9;
  (*(v7 + 16))(aBlock - v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  aBlock[4] = sub_100011228;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10008EFD4;
  aBlock[3] = &unk_100107C48;
  v13 = _Block_copy(aBlock);

  [a2 presentViewController:a3 animated:0 completion:v13];
  _Block_release(v13);
}

uint64_t sub_10000DC84(uint64_t a1, uint64_t a2)
{
  sub_10000FEB8(&qword_100116310, &qword_1000CBBC0);
  sub_1000105A8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v6 = a2 == 0;
  if (v17)
  {
    if (a2)
    {
      if (v16 == a1 && v17 == a2)
      {
        v6 = 1;
      }

      else
      {
        v6 = sub_1000C73A4();
      }
    }

    else
    {
      v6 = 0;
    }
  }

  __chkstk_darwin(v5);
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  swift_getKeyPath();

  result = sub_1000C60A4();
  v9 = *v2;
  if ((v6 & 1) != 0 || (v10 = *v2, v11 = v2 + *(v9 + 104), (v12 = *v11) == 0))
  {
    v15 = *v2;
    if (!*(v2 + *(v9 + 104)))
    {
      result = sub_1000C72E4();
      __break(1u);
    }
  }

  else
  {
    v13 = *(v11 + 1);

    v12(v14);
    return sub_100010800(v12);
  }

  return result;
}

uint64_t sub_10000DEEC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000C5D84();
  v45 = *(v4 - 8);
  v5 = *(v45 + 64);
  __chkstk_darwin(v4);
  v44 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000FEB8(&unk_100116350, &unk_1000CBC40);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v11 = &v44 - v10;
  v12 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v46 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v47 = &v44 - v17;
  v18 = __chkstk_darwin(v16);
  v49 = &v44 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v44 - v21;
  v52 = v20;
  v23 = sub_1000106C0();
  v53 = v23;
  swift_getKeyPath();
  v50 = v12;
  v51 = v23;
  swift_getKeyPath();
  sub_1000C6094();

  v24 = *(v8 + 56);
  sub_10000FF70(v22, v11);
  v48 = a1;
  v25 = a1;
  v26 = v45;
  sub_10000FF70(v25, &v11[v24]);
  v27 = *(v26 + 48);
  if (v27(v11, 1, v4) != 1)
  {
    sub_10000FF70(v11, v49);
    if (v27(&v11[v24], 1, v4) != 1)
    {
      v31 = v44;
      (*(v26 + 32))(v44, &v11[v24], v4);
      sub_10000F9F8(&unk_100116360, 255, &type metadata accessor for URL);
      v30 = sub_1000C6D34();
      v32 = *(v26 + 8);
      v32(v31, v4);
      sub_100010F24(v22, &qword_100116260, &qword_1000CD940);
      v32(v49, v4);
      sub_100010F24(v11, &qword_100116260, &qword_1000CD940);
      v29 = v48;
      goto LABEL_8;
    }

    sub_100010F24(v22, &qword_100116260, &qword_1000CD940);
    (*(v26 + 8))(v49, v4);
    v29 = v48;
    goto LABEL_6;
  }

  sub_100010F24(v22, &qword_100116260, &qword_1000CD940);
  v28 = v27(&v11[v24], 1, v4);
  v29 = v48;
  if (v28 != 1)
  {
LABEL_6:
    sub_100010F24(v11, &unk_100116350, &unk_1000CBC40);
    v30 = 0;
    goto LABEL_8;
  }

  sub_100010F24(v11, &qword_100116260, &qword_1000CD940);
  v30 = 1;
LABEL_8:
  v33 = v47;
  v34 = sub_10000FF70(v29, v47);
  __chkstk_darwin(v34);
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  swift_getKeyPath();
  sub_10000FF70(v33, v46);

  sub_1000C60A4();
  sub_100010F24(v33, &qword_100116260, &qword_1000CD940);
  v36 = *v2;
  if ((v30 & 1) == 0)
  {
    v37 = *v2;
    v38 = v2 + *(v36 + 104);
    v39 = *v38;
    if (*v38)
    {
      v40 = *(v38 + 1);

      v39(v41);
      sub_100010800(v39);
      return sub_100010F24(v29, &qword_100116260, &qword_1000CD940);
    }
  }

  v42 = *v2;
  if (*(v2 + *(v36 + 104)))
  {
    return sub_100010F24(v29, &qword_100116260, &qword_1000CD940);
  }

  result = sub_1000C72E4();
  __break(1u);
  return result;
}

uint64_t sub_10000E4C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  *a2 = v5;
  return result;
}

uint64_t sub_10000E544(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000C60A4();
}

uint64_t sub_10000E5B8(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();
}

uint64_t sub_10000E634(uint64_t a1, uint64_t *a2)
{
  v4 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v16 - v10;
  __chkstk_darwin(v9);
  v13 = &v16 - v12;
  sub_10000FF70(a1, &v16 - v12);
  v14 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10000FF70(v13, v8);

  sub_1000C60A4();
  sub_100060FBC(v11);
  sub_100010F24(v11, &qword_100116260, &qword_1000CD940);
  return sub_100010F24(v13, &qword_100116260, &qword_1000CD940);
}

uint64_t sub_10000E818@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  *a2 = v5;
  return result;
}

uint64_t sub_10000E8A8(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;

  return sub_1000C60A4();
}

uint64_t sub_10000E980@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_10000EA10(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000C60A4();
}

uint64_t sub_10000EACC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  *a2 = v5;
  return result;
}

uint64_t sub_10000EB5C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000C60A4();
}

uint64_t sub_10000EBCC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  *a2 = v5;
  return result;
}

uint64_t sub_10000EC4C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000C60A4();
}

uint64_t sub_10000ECC8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + a3 - 16);
  v4 = *(a2 + a3 - 8);
  v5 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();
}

uint64_t sub_10000ED60(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(a1);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v17 - v12;
  v14 = *(v7 + 16);
  v14(v17 - v12);
  v15 = *a2;
  v17[2] = v5;
  v17[3] = v6;
  swift_getKeyPath();
  v17[0] = v5;
  v17[1] = v6;
  swift_getKeyPath();
  (v14)(v11, v13, v5);

  sub_1000C60A4();
  return (*(v7 + 8))(v13, v5);
}

uint64_t sub_10000EEE8(uint64_t a1, id *a2)
{
  result = sub_1000C6D64();
  *a2 = 0;
  return result;
}

uint64_t sub_10000EF64(uint64_t a1, id *a2)
{
  v3 = sub_1000C6D74();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10000EFE8@<X0>(void *a1@<X8>)
{
  sub_1000C6D84();
  v2 = sub_1000C6D44();

  *a1 = v2;
  return result;
}

uint64_t sub_10000F030@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1000C6D84();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_10000F084(uint64_t a1)
{
  v2 = sub_10000F9F8(&qword_1001163E0, 255, type metadata accessor for BRError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10000F0F4(uint64_t a1)
{
  v2 = sub_10000F9F8(&qword_1001163E0, 255, type metadata accessor for BRError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10000F168(uint64_t a1)
{
  v2 = sub_10000F9F8(&qword_100116418, 255, type metadata accessor for BRError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_10000F1D8(uint64_t a1)
{
  v2 = sub_10000F9F8(&qword_100116420, 255, type metadata accessor for CKError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10000F248(uint64_t a1)
{
  v2 = sub_10000F9F8(&qword_100116420, 255, type metadata accessor for CKError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10000F2B8(uint64_t a1)
{
  v2 = sub_10000F9F8(&qword_100116450, 255, type metadata accessor for CKError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

void *sub_10000F328@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_10000F33C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1000C6D84();
  v6 = v5;
  if (v4 == sub_1000C6D84() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000C73A4();
  }

  return v9 & 1;
}

uint64_t sub_10000F3D4()
{
  sub_10000F9F8(&qword_100116418, 255, type metadata accessor for BRError);

  return sub_1000C5CC4();
}

uint64_t sub_10000F444(uint64_t a1)
{
  v2 = sub_10000F9F8(&qword_100116418, 255, type metadata accessor for BRError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_10000F4B4(void *a1, uint64_t a2)
{
  v4 = sub_10000F9F8(&qword_100116418, 255, type metadata accessor for BRError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_10000F56C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000F9F8(&qword_100116418, 255, type metadata accessor for BRError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_10000F600()
{
  sub_10000F9F8(&qword_100116450, 255, type metadata accessor for CKError);

  return sub_1000C5CC4();
}

uint64_t sub_10000F670(uint64_t a1)
{
  v2 = sub_10000F9F8(&qword_100116450, 255, type metadata accessor for CKError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_10000F6E0(void *a1, uint64_t a2)
{
  v4 = sub_10000F9F8(&qword_100116450, 255, type metadata accessor for CKError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_10000F774(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000F9F8(&qword_100116450, 255, type metadata accessor for CKError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_10000F7F4()
{
  v2 = *v0;
  sub_1000C7464();
  sub_1000C6D24();
  return sub_1000C7494();
}

uint64_t sub_10000F854@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1000C6D44();

  *a2 = v5;
  return result;
}

uint64_t sub_10000F89C(uint64_t a1)
{
  v2 = sub_10000F9F8(&qword_1001161E0, 255, type metadata accessor for URLResourceKey);
  v3 = sub_10000F9F8(&qword_1001161E8, 255, type metadata accessor for URLResourceKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000F9F8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_10000FA8C(uint64_t a1)
{
  v2 = sub_10000F9F8(&qword_1001161D0, 255, type metadata accessor for ActivityType);
  v3 = sub_10000F9F8(&qword_1001161D8, 255, type metadata accessor for ActivityType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000FC34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000F9F8(&qword_100116418, 255, type metadata accessor for BRError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_10000FCBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000F9F8(&qword_100116450, 255, type metadata accessor for CKError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_10000FD48()
{
  v1 = *v0;
  sub_1000C6D84();
  v2 = sub_1000C6E44();

  return v2;
}

uint64_t sub_10000FD88()
{
  v1 = *v0;
  sub_1000C6D84();
  sub_1000C6DD4();
}

Swift::Int sub_10000FDE0()
{
  v1 = *v0;
  sub_1000C6D84();
  sub_1000C7464();
  sub_1000C6DD4();
  v2 = sub_1000C7494();

  return v2;
}

uint64_t sub_10000FE54(uint64_t a1, uint64_t a2)
{
  result = sub_10000F9F8(&qword_1001161C8, a2, type metadata accessor for CloudSharingViewController);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10000FEB8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000FF00(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000FF70(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001000C(void *a1, void *a2)
{
  v4 = *(*(sub_10000FEB8(&unk_100116270, &qword_1000CB7F8) - 8) + 80);

  return sub_10000961C(a1, a2);
}

uint64_t sub_100010098(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000100B0()
{
  result = qword_1001170F0;
  if (!qword_1001170F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001170F0);
  }

  return result;
}

uint64_t sub_100010114(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100010128(a1, a2);
  }

  return a1;
}

uint64_t sub_100010128(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10001017C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100010190(a1, a2);
  }

  return a1;
}

uint64_t sub_100010190(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_1000101E4()
{
  v1 = (v0 + OBJC_IVAR___CloudSharingViewController_itemUTI);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR___CloudSharingViewController_appName);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR___CloudSharingViewController_isFolderSharing) = 0;
  v3 = (v0 + OBJC_IVAR___CloudSharingViewController_explicitOrURLName);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR___CloudSharingViewController_ckClientRootFolderName);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR___CloudSharingViewController_ckClientFolderSubitemName);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR___CloudSharingViewController_appBundleSubscriber) = 0;
  sub_1000C72E4();
  __break(1u);
}

uint64_t sub_1000102A8()
{
  v0 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____UIShareInvitationViewController];
  v1 = sub_1000C6D44();
  v2 = NSClassFromString(v1);

  if (!v2)
  {
    return v0;
  }

  ObjCClassMetadata = swift_getObjCClassMetadata();
  sub_10000FEB8(&qword_100116370, &qword_1000CDD30);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000CB180;
  *(v4 + 56) = swift_getMetatypeMetadata();
  *(v4 + 32) = ObjCClassMetadata;
  v5 = sub_100010778(0, &qword_100116378, NSDictionary_ptr);
  *(v4 + 88) = sub_10000FEB8(&qword_100116380, &qword_1000CBC50);
  *(v4 + 64) = v5;
  v6 = sub_100010778(0, &qword_100116388, NSString_ptr);
  *(v4 + 120) = sub_10000FEB8(&qword_100116390, &qword_1000CBC58);
  *(v4 + 96) = v6;
  v7 = objc_allocWithZone(NSSet);
  isa = sub_1000C6E84().super.isa;

  [v7 initWithArray:isa];

  result = sub_1000C6F84();
  __break(1u);
  return result;
}

uint64_t sub_1000104E8(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100010544(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

__n128 sub_10001059C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

unint64_t sub_1000105A8()
{
  result = qword_100116318;
  if (!qword_100116318)
  {
    sub_100010624(&qword_100116310, &qword_1000CBBC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116318);
  }

  return result;
}

uint64_t sub_100010624(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100010674()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1000106C0()
{
  result = qword_100118400;
  if (!qword_100118400)
  {
    sub_100010624(&qword_100116260, &qword_1000CD940);
    sub_10000F9F8(&unk_100116360, 255, &type metadata accessor for URL);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118400);
  }

  return result;
}

uint64_t sub_100010778(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_1000107C0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100010800(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

__n128 sub_100010838(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100010848(uint64_t a1, int a2)
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

uint64_t sub_100010868(uint64_t result, int a2, int a3)
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

unint64_t sub_100010B90()
{
  result = qword_100116408;
  if (!qword_100116408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116408);
  }

  return result;
}

__n128 sub_100010EB8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100010EC4(uint64_t a1, int a2)
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

uint64_t sub_100010EE4(uint64_t result, int a2, int a3)
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

uint64_t sub_100010F24(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000FEB8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100010F8C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100010FCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100011080;

  return sub_1000A2B24(a1, v4, v5, v6);
}

uint64_t sub_100011080()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000111A4(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_10000FEB8(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t sub_100011228()
{
  v1 = *(sub_10000FEB8(&qword_1001164F0, &unk_1000CC3C0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_1000C6EF4();
}

void sub_1000112BC(uint64_t a1, unint64_t *a2)
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

uint64_t sub_100011374()
{
  v1 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing19ActivitiesModelData__activeService;
  v2 = sub_10000FEB8(&qword_100116758, qword_1000CC478);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ActivitiesModelData()
{
  result = qword_1001166C0;
  if (!qword_1001166C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100011470()
{
  sub_100011500();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100011500()
{
  if (!qword_1001166D0)
  {
    type metadata accessor for ActivityType(255);
    v0 = sub_1000C60B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1001166D0);
    }
  }
}

unint64_t sub_100011558(uint64_t a1)
{
  result = sub_100011580();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100011580()
{
  result = qword_100116750;
  if (!qword_100116750)
  {
    type metadata accessor for ActivitiesModelData();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116750);
  }

  return result;
}

uint64_t sub_1000115D8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1000C6034();
  *a1 = result;
  return result;
}

void *sub_100011628(void *a1)
{
  v2 = sub_1000C5F74();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100011818(a1, a1[3]);
  v7 = sub_100098F58();
  sub_1000C5F54();

  v8 = sub_1000C5F64();
  v9 = sub_1000C6FF4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    sub_10001185C();
    v12 = sub_1000C6CF4();
    v14 = sub_100071844(v12, v13, &v17);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "Analytics payload: %s", v10, 0xCu);
    sub_100010544(v11);
  }

  (*(v3 + 8))(v6, v2);
  return v7;
}

void *sub_100011818(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_10001185C()
{
  result = qword_100116760;
  if (!qword_100116760)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100116760);
  }

  return result;
}

void sub_1000118B8()
{
  v0 = [objc_allocWithZone(NSOperationQueue) init];
  [v0 setQualityOfService:25];
  v1 = sub_1000C6D44();
  [v0 setName:v1];

  qword_100116768 = v0;
}

uint64_t sub_100011940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return _swift_task_switch(sub_100011964, 0, 0);
}

uint64_t sub_100011964()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v1[1] = vextq_s8(*(v0 + 40), *(v0 + 40), 8uLL);
  v2 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v4 = sub_10000FEB8(&qword_100116780, &qword_1000CC4E8);
  *v3 = v0;
  v3[1] = sub_100011A70;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD00000000000002BLL, 0x80000001000D6FE0, sub_100016E34, v1, v4);
}

uint64_t sub_100011A70()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return _swift_task_switch(sub_100011B88, 0, 0);
}

uint64_t sub_100011BAC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v3 = sub_10000FEB8(&qword_1001167A0, &qword_1000CC520);
  *(v2 + 32) = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  *(v2 + 40) = swift_task_alloc();
  *(v2 + 64) = *(v3 + 48);
  *(v2 + 68) = *(v3 + 64);

  return _swift_task_switch(sub_100011C64, 0, 0);
}

uint64_t sub_100011C64()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[6] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_100011D54;
  v6 = v0[4];
  v5 = v0[5];

  return withCheckedContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD000000000000026, 0x80000001000D7070, sub_10001728C, v2, v6);
}

uint64_t sub_100011D54()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_100011E6C, 0, 0);
}

uint64_t sub_100011E6C()
{
  v1 = *(v0 + 68);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  v5 = *v3;
  v6 = *(v3 + *(v2 + 64));
  sub_10000FF00(v3 + *(v2 + 48), v4 + *(v0 + 64));
  *v4 = v5;
  *(v4 + v1) = v6;

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100011F10(uint64_t a1, uint64_t a2)
{
  v2[101] = a2;
  v2[95] = a1;
  v3 = sub_1000C5D84();
  v2[107] = v3;
  v4 = *(v3 - 8);
  v2[108] = v4;
  v2[109] = *(v4 + 64);
  v2[110] = swift_task_alloc();

  return _swift_task_switch(sub_100011FDC, 0, 0);
}

uint64_t sub_100011FDC()
{
  v1 = v0[110];
  v2 = v0[109];
  v3 = v0[108];
  v4 = v0[107];
  (*(v3 + 16))(v1, v0[101], v4);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[111] = v6;
  (*(v3 + 32))(v6 + v5, v1, v4);
  sub_10000FEB8(&qword_1001167D0, &qword_1000CC580);
  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 2, v0 + 87, sub_100012104, v0 + 82);
}

uint64_t sub_100012120()
{
  v1 = v0[87];
  v2 = v0[88];
  v3 = v0[89];
  v4 = v0[90];
  v0[112] = v4;
  v5 = v0[91];
  v0[113] = v5;
  v6 = v0[94];
  v0[114] = v6;
  if (v6 || !v1)
  {
    v9 = v6;

    v10 = sub_100012378;
    v11 = v0 + 2;
    v12 = v0 + 87;
    v13 = v0 + 96;
    goto LABEL_11;
  }

  if (v3)
  {
    if (v5)
    {
      swift_bridgeObjectRetain_n();
      v7 = v1;

      v21._object = 0x80000001000D7150;
      v21._countAndFlagsBits = 0xD000000000000017;
      v8 = sub_1000C6E34(v21);

      if (v8)
      {
        v4 = v2;
        v5 = v3;
      }

      goto LABEL_10;
    }
  }

  else
  {
  }

  v14 = v1;
LABEL_10:
  v0[116] = v5;
  v0[115] = v4;
  v15 = [objc_opt_self() localizedStringFromPersonNameComponents:v1 style:2 options:0];
  v16 = sub_1000C6D84();
  v18 = v17;

  v0[117] = v16;
  v0[118] = v18;
  v10 = sub_1000122C0;
  v11 = v0 + 2;
  v12 = v0 + 87;
  v13 = v0 + 102;
LABEL_11:

  return _swift_asyncLet_finish(v11, v12, v10, v13);
}

uint64_t sub_1000122DC()
{
  v7 = *(v0 + 920);
  v8 = *(v0 + 936);
  v1 = *(v0 + 912);
  v2 = *(v0 + 888);
  v3 = *(v0 + 880);
  v4 = *(v0 + 760);

  *v4 = v8;
  *(v4 + 16) = v7;
  *(v4 + 32) = v1;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100012394()
{
  v7 = *(v0 + 896);
  v1 = *(v0 + 912);
  v2 = *(v0 + 888);
  v3 = *(v0 + 880);
  v4 = *(v0 + 760);

  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = v7;
  *(v4 + 32) = v1;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100012428(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return _swift_task_switch(sub_100012448, 0, 0);
}

uint64_t sub_100012448()
{
  v1 = v0[11];
  v2 = swift_task_alloc();
  v0[12] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[13] = v4;
  v5 = sub_10000FEB8(&qword_1001167D0, &qword_1000CC580);
  *v4 = v0;
  v4[1] = sub_100012550;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD00000000000003ALL, 0x80000001000D7170, sub_1000176BC, v2, v5);
}

uint64_t sub_100012550()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return _swift_task_switch(sub_100012668, 0, 0);
}

uint64_t sub_100012668()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  v4 = *(v0 + 64);
  *v1 = *(v0 + 16);
  v1[1] = v2;
  v1[2] = v3;
  v1[3] = v4;
  return (*(v0 + 8))();
}

uint64_t sub_1000126B4()
{
  sub_10000FEB8(&qword_1001167B0, &qword_1000CC548);
  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 16, v0 + 696, sub_100012758, v0 + 656);
}

uint64_t sub_100012774()
{
  v1 = v0[87];
  v0[92] = v0[88];
  v0[93] = v0[89];
  v2 = v0[90];
  v0[94] = v2;
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = v1 == 0;
  }

  if (v3)
  {
    v4 = v2;

    v11 = sub_1000128E4;
  }

  else
  {
    v5 = objc_opt_self();

    v6 = v1;
    v7 = [v5 localizedStringFromPersonNameComponents:v6 style:2 options:0];
    v8 = sub_1000C6D84();
    v10 = v9;

    v0[95] = v8;
    v0[96] = v10;
    v11 = sub_100012894;
  }

  return _swift_asyncLet_finish(v0 + 2, v0 + 87, v11, v0 + 82);
}

uint64_t sub_1000128B0()
{
  v1 = *(v0 + 768);
  v2 = *(v0 + 752);
  v3 = *(v0 + 728);
  v4 = *(v0 + 736);
  *v3 = *(v0 + 760);
  *(v3 + 8) = v1;
  *(v3 + 16) = v4;
  *(v3 + 32) = v2;
  return (*(v0 + 8))();
}

uint64_t sub_100012900()
{
  v1 = *(v0 + 752);
  v2 = *(v0 + 728);
  v3 = *(v0 + 736);
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = v3;
  *(v2 + 32) = v1;
  return (*(v0 + 8))();
}

uint64_t sub_10001292C(uint64_t a1)
{
  *(v1 + 48) = a1;
  v2 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v3 = swift_task_alloc();
  *(v1 + 56) = v3;
  v4 = sub_10000FEB8(&qword_1001167B8, &qword_1000CC550);
  *v3 = v1;
  v3[1] = sub_100012A18;

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 16, 0, 0, 0xD000000000000030, 0x80000001000D70D0, sub_100015F58, 0, v4);
}

uint64_t sub_100012A18()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return _swift_task_switch(sub_100012B14, 0, 0);
}

uint64_t sub_100012B14()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  *v1 = *(v0 + 16);
  v1[1] = v2;
  return (*(v0 + 8))();
}

uint64_t sub_100012B38(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v3 = sub_10000FEB8(&qword_100116790, &qword_1000D0610);
  *(v2 + 32) = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  *(v2 + 40) = swift_task_alloc();
  *(v2 + 64) = *(v3 + 48);

  return _swift_task_switch(sub_100012BE8, 0, 0);
}

uint64_t sub_100012BE8()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[6] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_100012CD8;
  v6 = v0[4];
  v5 = v0[5];

  return withCheckedContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD00000000000001FLL, 0x80000001000D7030, sub_10001717C, v2, v6);
}

uint64_t sub_100012CD8()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_100012DF0, 0, 0);
}

uint64_t sub_100012DF0()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 16);
  v3 = *(*(v0 + 40) + *(*(v0 + 32) + 48));
  sub_10000FF00(*(v0 + 40), v2);
  *(v2 + v1) = v3;

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100012E80(uint64_t a1, char a2)
{
  *(v2 + 1704) = a2;
  *(v2 + 1336) = a1;
  v3 = sub_1000C5F74();
  *(v2 + 1384) = v3;
  v4 = *(v3 - 8);
  *(v2 + 1432) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 1480) = swift_task_alloc();
  *(v2 + 1528) = swift_task_alloc();
  v6 = sub_1000C5D84();
  *(v2 + 1576) = v6;
  v7 = *(v6 - 8);
  *(v2 + 1624) = v7;
  *(v2 + 1632) = *(v7 + 64);
  *(v2 + 1640) = swift_task_alloc();
  *(v2 + 1648) = swift_task_alloc();

  return _swift_task_switch(sub_100012FC0, 0, 0);
}

uint64_t sub_100012FC0()
{
  v1 = *(v0 + 1648);
  v2 = *(v0 + 1632);
  v3 = *(v0 + 1624);
  v4 = *(v0 + 1576);
  v5 = *(v0 + 1704);
  v26 = *(v3 + 16);
  v26(v1, *(v0 + 1336), v4);
  v6 = *(v3 + 80);
  v7 = swift_allocObject();
  *(v0 + 1656) = v7;
  v25 = *(v3 + 32);
  v25(v7 + ((v6 + 16) & ~v6), v1, v4);
  swift_asyncLet_begin();
  if (v5)
  {
    *(v0 + 1680) = 0u;
    v9 = sub_1000132E4;
    v10 = v0 + 16;
    v11 = v0 + 1488;
  }

  else
  {
    v12 = *(v0 + 1528);
    sub_1000C5F54();
    v13 = sub_1000C5F64();
    v14 = sub_1000C6FF4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "isForcedFolderSharing is false, so call doBRSharingRunCleanFolder", v15, 2u);
    }

    v16 = *(v0 + 1640);
    v17 = *(v0 + 1576);
    v18 = *(v0 + 1528);
    v19 = v13;
    v20 = *(v0 + 1432);
    v21 = *(v0 + 1384);
    v22 = *(v0 + 1336);

    (*(v20 + 8))(v18, v21);
    v26(v16, v22, v17);
    v23 = swift_allocObject();
    *(v0 + 1664) = v23;
    v25(v23 + ((v6 + 16) & ~v6), v16, v17);
    swift_asyncLet_begin();
    v9 = sub_100013250;
    v10 = v0 + 656;
    v11 = v0 + 1296;
  }

  return _swift_asyncLet_get_throwing(v10, v8, v9, v11);
}

uint64_t sub_100013250(uint64_t a1, uint64_t a2)
{
  *(v3 + 1672) = v2;
  if (v2)
  {
    v4 = sub_1000133F8;
    v5 = v3 + 656;
    v6 = v3 + 1344;
  }

  else
  {
    v4 = sub_100013290;
    v5 = v3 + 656;
    v6 = v3 + 1440;
  }

  return _swift_asyncLet_finish(v5, a2, v4, v6);
}

uint64_t sub_1000132AC(uint64_t a1, uint64_t a2)
{
  v2[211] = v2[208];
  v2[210] = &unk_1000CC5B0;
  return _swift_asyncLet_get_throwing(v2 + 2, a2, sub_1000132E4, v2 + 186);
}

uint64_t sub_1000132E4(uint64_t a1, uint64_t a2)
{
  *(v3 + 1696) = v2;
  if (v2)
  {
    v4 = sub_100013694;
    v5 = v3 + 16;
    v6 = v3 + 1536;
  }

  else
  {
    v4 = sub_100013324;
    v5 = v3 + 16;
    v6 = v3 + 1584;
  }

  return _swift_asyncLet_finish(v5, a2, v4, v6);
}

uint64_t sub_100013340()
{
  v1 = v0[211];
  v2 = v0[210];
  v3 = v0[207];
  v4 = v0[206];
  v5 = v0[205];
  v6 = v0[191];
  v7 = v0[185];

  sub_100010800(v2);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10001344C()
{
  v1 = v0[209];
  v19 = v0[208];
  v2 = v0[185];
  sub_1000C5F54();
  swift_errorRetain();
  v3 = sub_1000C5F64();
  v4 = sub_1000C6FD4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "runFolderSharingPrepOperations clean or prep error: %@", v5, 0xCu);
    sub_100010F24(v6, &qword_100117080, &unk_1000CC350);
  }

  v8 = v0[207];
  v9 = v0[206];
  v10 = v0[205];
  v11 = v0[191];
  v12 = v0[185];
  v13 = v0[179];
  v14 = v0[173];

  (*(v13 + 8))(v12, v14);
  v15 = sub_1000C5CD4();
  sub_1000100B0();
  swift_allocError();
  *v16 = 0xD000000000000041;
  *(v16 + 8) = 0x80000001000D7210;
  *(v16 + 24) = 0;
  *(v16 + 32) = 0;
  *(v16 + 16) = v15;
  *(v16 + 40) = 3;
  swift_willThrow();

  sub_100010800(&unk_1000CC5B0);

  v17 = v0[1];

  return v17();
}

uint64_t sub_1000136B0()
{
  v1 = v0[212];
  v19 = v0[210];
  v20 = v0[211];
  v2 = v0[185];
  sub_1000C5F54();
  swift_errorRetain();
  v3 = sub_1000C5F64();
  v4 = sub_1000C6FD4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "runFolderSharingPrepOperations clean or prep error: %@", v5, 0xCu);
    sub_100010F24(v6, &qword_100117080, &unk_1000CC350);
  }

  v8 = v0[207];
  v9 = v0[206];
  v10 = v0[205];
  v11 = v0[191];
  v12 = v0[185];
  v13 = v0[179];
  v14 = v0[173];

  (*(v13 + 8))(v12, v14);
  v15 = sub_1000C5CD4();
  sub_1000100B0();
  swift_allocError();
  *v16 = 0xD000000000000041;
  *(v16 + 8) = 0x80000001000D7210;
  *(v16 + 24) = 0;
  *(v16 + 32) = 0;
  *(v16 + 16) = v15;
  *(v16 + 40) = 3;
  swift_willThrow();

  sub_100010800(v19);

  v17 = v0[1];

  return v17();
}

uint64_t sub_100013904()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1000139F8;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)();
}

uint64_t sub_1000139F8()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v4 = sub_100017CE0;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_100017CB8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100013B34()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = 1;
  v3 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_100013C2C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)();
}

uint64_t sub_100013C2C()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v4 = sub_100013D60;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_100013D48;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100013D60()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

void sub_100013DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a1;
  v28 = sub_10000FEB8(&qword_100116778, &qword_1000CC4D8);
  v26 = *(v28 - 8);
  v5 = *(v26 + 64);
  __chkstk_darwin(v28);
  v7 = &v24[-v6];
  v8 = sub_1000C5D84();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v24[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = sub_1000C5D54();
  v12 = objc_allocWithZone(BRShareUnshareOperation);
  sub_1000C5D24(v13);
  v15 = v14;
  v16 = [v12 initWithShare:a3 fileURL:v14];

  if (v16)
  {
    [v16 setQualityOfService:25];
    (*(v9 + 16))(&v24[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v8);
    v17 = v26;
    v18 = v28;
    (*(v26 + 16))(v7, v27, v28);
    v19 = v16;
    v20 = (*(v9 + 80) + 17) & ~*(v9 + 80);
    v21 = (v10 + *(v17 + 80) + v20) & ~*(v17 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = v25;
    (*(v9 + 32))(v22 + v20, v11, v8);
    (*(v17 + 32))(v22 + v21, v7, v18);
    aBlock[4] = sub_100016E18;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001414C;
    aBlock[3] = &unk_100107D38;
    v23 = _Block_copy(aBlock);

    [v19 setUnshareCompletionBlock:v23];
    _Block_release(v23);
    if (qword_100115F70 != -1)
    {
      swift_once();
    }

    [qword_100116768 addOperation:v19];
  }

  else
  {
    aBlock[0] = [objc_allocWithZone(NSError) initWithDomain:BRCloudDocsErrorDomain code:80 userInfo:0];
    sub_1000C6EE4();
  }
}

void sub_10001414C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_1000141B8(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v27 = sub_10000FEB8(&qword_100116778, &qword_1000CC4D8);
  v3 = *(v27 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v27);
  v6 = &v24 - v5;
  v7 = sub_1000C5D84();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1000C5D54();
  v11 = objc_allocWithZone(BRSharePrepFolderForSharing);
  sub_1000C5D24(v12);
  v14 = v13;
  v15 = [v11 initWithURL:v13];

  if (v15)
  {
    [v15 setQualityOfService:25];
    (*(v8 + 16))(&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v7);
    v24 = v15;
    v16 = v3;
    v17 = *(v3 + 16);
    v18 = v27;
    v17(v6, v26, v27);
    v19 = (*(v8 + 80) + 17) & ~*(v8 + 80);
    v20 = (v9 + *(v16 + 80) + v19) & ~*(v16 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = v25;
    (*(v8 + 32))(v21 + v19, v10, v7);
    (*(v16 + 32))(v21 + v20, v6, v18);
    v22 = v24;
    aBlock[4] = sub_100017CDC;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001414C;
    aBlock[3] = &unk_100107FE0;
    v23 = _Block_copy(aBlock);

    [v22 setPrepFolderSharingCompletionBlock:v23];
    _Block_release(v23);
    if (qword_100115F70 != -1)
    {
      swift_once();
    }

    [qword_100116768 addOperation:v22];
  }

  else
  {
    aBlock[0] = [objc_allocWithZone(NSError) initWithDomain:BRCloudDocsErrorDomain code:80 userInfo:0];
    sub_1000C6EE4();
  }
}

void sub_100014538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v26 = sub_10000FEB8(&qword_100116778, &qword_1000CC4D8);
  v5 = *(v26 - 8);
  v24 = *(v5 + 64);
  __chkstk_darwin(v26);
  v7 = &v22[-v6];
  v8 = sub_1000C5D84();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = sub_1000C5D54();
  v12 = objc_allocWithZone(BRShareProcessSubitems);
  sub_1000C5D24(v13);
  v15 = v14;
  v16 = [v12 initWithURL:v14 processType:a3];

  if (v16)
  {
    [v16 setQualityOfService:25];
    [v16 setMaxSharedSubitemsBeforeFailure:4];
    (*(v9 + 16))(&v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v8);
    v17 = v26;
    (*(v5 + 16))(v7, v25, v26);
    v18 = (*(v9 + 80) + 17) & ~*(v9 + 80);
    v19 = (v10 + *(v5 + 80) + v18) & ~*(v5 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = v23;
    (*(v9 + 32))(v20 + v18, v11, v8);
    (*(v5 + 32))(v20 + v19, v7, v17);
    aBlock[4] = sub_100017CDC;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001414C;
    aBlock[3] = &unk_100107F90;
    v21 = _Block_copy(aBlock);

    [v16 setProcessSubitemsCompletionBlock:v21];
    _Block_release(v21);
    if (qword_100115F70 != -1)
    {
      swift_once();
    }

    [qword_100116768 addOperation:v16];
  }

  else
  {
    aBlock[0] = [objc_allocWithZone(NSError) initWithDomain:BRCloudDocsErrorDomain code:80 userInfo:0];
    sub_1000C6EE4();
  }
}

uint64_t sub_1000148CC(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    sub_1000C5D34();
    a1 = v2;
  }

  if (a1)
  {
    swift_errorRetain();
    sub_10000FEB8(&qword_100116778, &qword_1000CC4D8);
    return sub_1000C6EE4();
  }

  else
  {
    sub_10000FEB8(&qword_100116778, &qword_1000CC4D8);
    return sub_1000C6EF4();
  }
}

void sub_100014964(uint64_t a1, uint64_t a2, void *a3)
{
  v50 = a1;
  v5 = sub_10000FEB8(&qword_100116788, &unk_1000CC4F0);
  v45 = *(v5 - 8);
  v43 = *(v45 + 64);
  __chkstk_darwin(v5);
  v44 = &v39 - v6;
  v7 = sub_1000C5F74();
  v47 = *(v7 - 8);
  v48 = v7;
  v8 = *(v47 + 64);
  __chkstk_darwin(v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  v41 = *(v11 - 8);
  v12 = *(v41 + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v42 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = &v39 - v15;
  __chkstk_darwin(v14);
  v18 = &v39 - v17;
  v49 = a2;
  sub_100017574(a2, &v39 - v17, &qword_100116260, &qword_1000CD940);
  v19 = sub_1000C5D84();
  v20 = *(v19 - 8);
  v46 = *(v20 + 48);
  if (v46(v18, 1, v19) == 1)
  {
    sub_100010F24(v18, &qword_100116260, &qword_1000CD940);
    v40 = 0;
  }

  else
  {
    v40 = sub_1000C5D54();
    (*(v20 + 8))(v18, v19);
  }

  sub_1000C5F54();
  v21 = a3;
  v22 = sub_1000C5F64();
  v23 = sub_1000C6FF4();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v39 = v5;
    v25 = v24;
    *v24 = 67109120;
    *(v24 + 1) = [v21 allowsAccessRequests];

    _os_log_impl(&_mh_execute_header, v22, v23, "doBRSharingFileOrFolderSave about to save share with allowsAccessRequests: %{BOOL}d", v25, 8u);
    v5 = v39;
  }

  else
  {

    v22 = v21;
  }

  (*(v47 + 8))(v10, v48);
  v26 = v49;
  sub_100017574(v49, v16, &qword_100116260, &qword_1000CD940);
  if (v46(v16, 1, v19) == 1)
  {
    v28 = 0;
  }

  else
  {
    sub_1000C5D24(v27);
    v28 = v29;
    (*(v20 + 8))(v16, v19);
  }

  v30 = [objc_allocWithZone(BRShareSaveOperation) initWithShare:v21 fileURL:v28];

  if (v30)
  {
    [v30 setQualityOfService:25];
    v31 = v42;
    sub_100017574(v26, v42, &qword_100116260, &qword_1000CD940);
    v33 = v44;
    v32 = v45;
    (*(v45 + 16))(v44, v50, v5);
    v34 = (*(v41 + 80) + 17) & ~*(v41 + 80);
    v35 = (v12 + *(v32 + 80) + v34) & ~*(v32 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = v40;
    sub_10000FF00(v31, v36 + v34);
    (*(v32 + 32))(v36 + v35, v33, v5);
    v55 = sub_100016FEC;
    v56 = v36;
    aBlock = _NSConcreteStackBlock;
    v52 = 1107296256;
    v53 = sub_10001510C;
    v54 = &unk_100107D88;
    v37 = _Block_copy(&aBlock);

    [v30 setShareSaveCompletionBlock:v37];
    _Block_release(v37);
    if (qword_100115F70 != -1)
    {
      swift_once();
    }

    [qword_100116768 addOperation:v30];
  }

  else
  {
    v38 = [objc_allocWithZone(NSError) initWithDomain:BRCloudDocsErrorDomain code:80 userInfo:0];
    aBlock = 0;
    v52 = v38;
    sub_1000C6EF4();
  }
}

uint64_t sub_100014F84(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v17 - v10;
  if (a3)
  {
    sub_100017574(a4, v17 - v10, &qword_100116260, &qword_1000CD940);
    v12 = sub_1000C5D84();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {
      sub_1000C5D34();
      (*(v13 + 8))(v11, v12);
      if (a2)
      {
        goto LABEL_5;
      }

LABEL_7:
      v14 = 0;
      goto LABEL_8;
    }

    sub_100010F24(v11, &qword_100116260, &qword_1000CD940);
  }

  if (!a2)
  {
    goto LABEL_7;
  }

LABEL_5:
  v14 = sub_1000C5CD4();
LABEL_8:
  v17[0] = a1;
  v17[1] = v14;
  v15 = a1;
  sub_10000FEB8(&qword_100116788, &unk_1000CC4F0);
  return sub_1000C6EF4();
}

void sub_10001510C(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_100015198(uint64_t a1, uint64_t a2)
{
  v38 = a1;
  v39 = sub_10000FEB8(&qword_1001167A8, &qword_1000CC528);
  v37 = *(v39 - 8);
  v3 = *(v37 + 64);
  __chkstk_darwin(v39);
  v36 = &v33[-v4];
  v5 = sub_1000C5D84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v35 = v8;
  v9 = &v33[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_10000FEB8(&qword_1001167A0, &qword_1000CC520);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v33[-v12];
  v14 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v33[-v16];
  v34 = sub_1000C5D54();
  v18 = objc_allocWithZone(BRShareCopyOperation);
  sub_1000C5D24(v19);
  v21 = v20;
  v22 = [v18 initWithURL:v20];

  if (v22)
  {
    [v22 setQualityOfService:25];
    (*(v6 + 16))(v9, a2, v5);
    v23 = v37;
    v24 = v36;
    v25 = v39;
    (*(v37 + 16))(v36, v38, v39);
    v26 = (*(v6 + 80) + 17) & ~*(v6 + 80);
    v27 = (v35 + *(v23 + 80) + v26) & ~*(v23 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = v34;
    (*(v6 + 32))(v28 + v26, v9, v5);
    (*(v23 + 32))(v28 + v27, v24, v25);
    aBlock[4] = sub_1000172A8;
    aBlock[5] = v28;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100015778;
    aBlock[3] = &unk_100107E28;
    v29 = _Block_copy(aBlock);

    [v22 setRootShareCopyCompletionBlock:v29];
    _Block_release(v29);
    if (qword_100115F70 != -1)
    {
      swift_once();
    }

    [qword_100116768 addOperation:v22];
  }

  else
  {
    (*(v6 + 56))(v17, 1, 1, v5);
    v30 = [objc_allocWithZone(NSError) initWithDomain:BRCloudDocsErrorDomain code:80 userInfo:0];
    v31 = *(v10 + 48);
    v32 = *(v10 + 64);
    *v13 = 0;
    sub_10000FF00(v17, v13 + v31);
    *(v13 + v32) = v30;
    sub_1000C6EF4();
  }
}

uint64_t sub_100015600(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = sub_10000FEB8(&qword_1001167A0, &qword_1000CC520);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v21 - v10);
  v12 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v21 - v14;
  if (a4)
  {
    sub_1000C5D34();
  }

  sub_100017574(a2, v15, &qword_100116260, &qword_1000CD940);
  if (a3)
  {
    v16 = sub_1000C5CD4();
  }

  else
  {
    v16 = 0;
  }

  v17 = *(v8 + 48);
  v18 = *(v8 + 64);
  *v11 = a1;
  sub_10000FF00(v15, v11 + v17);
  *(v11 + v18) = v16;
  v19 = a1;
  sub_10000FEB8(&qword_1001167A8, &qword_1000CC528);
  return sub_1000C6EF4();
}

uint64_t sub_100015778(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v19 - v10;
  v13 = *(a1 + 32);
  v12 = *(a1 + 40);
  if (a3)
  {
    sub_1000C5D44();
    v14 = sub_1000C5D84();
    (*(*(v14 - 8) + 56))(v11, 0, 1, v14);
  }

  else
  {
    v15 = sub_1000C5D84();
    (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  }

  v16 = a2;
  v17 = a4;
  v13(a2, v11, a4);

  return sub_100010F24(v11, &qword_100116260, &qword_1000CD940);
}

void sub_1000158EC(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v3 = sub_10000FEB8(&qword_1001167D8, &qword_1000CC588);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v20[-v6];
  v8 = sub_1000C5D84();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_1000C5D54();
  sub_1000C5D24(v12);
  v23 = v13;
  (*(v9 + 16))(v11, a2, v8);
  v14 = v3;
  (*(v4 + 16))(v7, v22, v3);
  v15 = (*(v9 + 80) + 17) & ~*(v9 + 80);
  v16 = (v10 + *(v4 + 80) + v15) & ~*(v4 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v21;
  (*(v9 + 32))(v17 + v15, v11, v8);
  (*(v4 + 32))(v17 + v16, v7, v14);
  aBlock[4] = sub_1000176D8;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100015D54;
  aBlock[3] = &unk_100107EF0;
  v18 = _Block_copy(aBlock);

  v19 = v23;
  BRSharingCopyCurrentUserNameAndDisplayHandleForURL();
  _Block_release(v18);
}

uint64_t sub_100015B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v24 = a4;
  v25 = a6;
  v15 = sub_10000FEB8(&qword_1001167C8, &qword_1000CC560);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v24 - v17;
  if (a9)
  {
    sub_1000C5D34();
  }

  sub_100017574(a1, v18, &qword_1001167C8, &qword_1000CC560);
  v19 = sub_1000C5C54();
  v20 = *(v19 - 8);
  v21 = 0;
  if ((*(v20 + 48))(v18, 1, v19) != 1)
  {
    v21 = sub_1000C5C24();
    (*(v20 + 8))(v18, v19);
  }

  if (a8)
  {
    v22 = sub_1000C5CD4();
  }

  else
  {
    v22 = 0;
  }

  v26 = v21;
  v27 = a2;
  v28 = a3;
  v29 = v24;
  v30 = a5;
  v31 = v25;
  v32 = a7;
  v33 = v22;

  sub_10000FEB8(&qword_1001167D8, &qword_1000CC588);
  return sub_1000C6EF4();
}

uint64_t sub_100015D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = sub_10000FEB8(&qword_1001167C8, &qword_1000CC560);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v28 - v14;
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v29 = v16;
  if (a2)
  {
    sub_1000C5C34();
    v18 = sub_1000C5C54();
    (*(*(v18 - 8) + 56))(v15, 0, 1, v18);
  }

  else
  {
    v19 = sub_1000C5C54();
    (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
  }

  if (a3)
  {
    v20 = sub_1000C6D84();
    a3 = v21;
    if (a4)
    {
      goto LABEL_6;
    }

LABEL_9:
    v22 = 0;
    if (a5)
    {
      goto LABEL_7;
    }

LABEL_10:
    v24 = 0;
    goto LABEL_11;
  }

  v20 = 0;
  if (!a4)
  {
    goto LABEL_9;
  }

LABEL_6:
  v22 = sub_1000C6D84();
  a4 = v23;
  if (!a5)
  {
    goto LABEL_10;
  }

LABEL_7:
  v24 = sub_1000C6D84();
  a5 = v25;
LABEL_11:

  v26 = a6;
  v29(v15, v20, a3, v22, a4, v24, a5, a6);

  return sub_100010F24(v15, &qword_1001167C8, &qword_1000CC560);
}

void sub_100015F58(uint64_t a1)
{
  v2 = sub_10000FEB8(&qword_1001167C0, &qword_1000CC558);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = aBlock - v5;
  sub_100010778(0, &qword_10011A200, OS_dispatch_queue_ptr);
  v7 = sub_1000C7034();
  (*(v3 + 16))(v6, a1, v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v6, v2);
  aBlock[4] = sub_1000174D0;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000162A4;
  aBlock[3] = &unk_100107E78;
  v10 = _Block_copy(aBlock);

  BRSharingCopyCurrentUserNameAndDisplayHandle();
  _Block_release(v10);
}

uint64_t sub_100016124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10000FEB8(&qword_1001167C8, &qword_1000CC560);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v17 - v10;
  sub_100017574(a1, v17 - v10, &qword_1001167C8, &qword_1000CC560);
  v12 = sub_1000C5C54();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    v14 = sub_1000C5C24();
    (*(v13 + 8))(v11, v12);
  }

  if (a4)
  {
    v15 = sub_1000C5CD4();
  }

  else
  {
    v15 = 0;
  }

  v17[0] = v14;
  v17[1] = a2;
  v17[2] = a3;
  v17[3] = v15;

  sub_10000FEB8(&qword_1001167C0, &qword_1000CC558);
  return sub_1000C6EF4();
}

uint64_t sub_1000162A4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_10000FEB8(&qword_1001167C8, &qword_1000CC560);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v20 - v10;
  v13 = *(a1 + 32);
  v12 = *(a1 + 40);
  if (a2)
  {
    sub_1000C5C34();
    v14 = sub_1000C5C54();
    (*(*(v14 - 8) + 56))(v11, 0, 1, v14);
  }

  else
  {
    v15 = sub_1000C5C54();
    (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  }

  if (a3)
  {
    v16 = sub_1000C6D84();
    a3 = v17;
  }

  else
  {
    v16 = 0;
  }

  v18 = a4;
  v13(v11, v16, a3, a4);

  return sub_100010F24(v11, &qword_1001167C8, &qword_1000CC560);
}

void sub_100016430(uint64_t a1, uint64_t a2)
{
  v52 = a1;
  v3 = sub_10000FEB8(&qword_100116798, &qword_1000CC510);
  v51 = *(v3 - 8);
  v4 = *(v51 + 64);
  __chkstk_darwin(v3);
  v50 = &v43 - v5;
  v6 = sub_1000C5D84();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v48 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v9;
  v10 = sub_10000FEB8(&qword_100116790, &qword_1000D0610);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v43 - v12;
  v14 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v43 - v16;
  v47 = sub_1000C5D54();
  sub_1000C5D24(v18);
  v20 = v19;
  aBlock[0] = 0;
  v21 = [v19 br_typeIdentifierWithError:aBlock];

  v22 = aBlock[0];
  if (v21)
  {
    v44 = v10;
    v45 = v4;
    v46 = v3;
    sub_1000C6D84();
    v23 = v22;

    v24 = objc_allocWithZone(BRShareCopyShareURLOperation);
    sub_1000C5D24(v25);
    v27 = v26;
    v28 = sub_1000C6D44();

    v29 = [v24 initWithFileURL:v27 documentType:v28];

    if (v29)
    {
      [v29 setQualityOfService:25];
      v30 = v48;
      (*(v7 + 16))(v48, a2, v6);
      v32 = v50;
      v31 = v51;
      v33 = v46;
      (*(v51 + 16))(v50, v52, v46);
      v34 = (*(v7 + 80) + 17) & ~*(v7 + 80);
      v35 = (v49 + *(v31 + 80) + v34) & ~*(v31 + 80);
      v36 = swift_allocObject();
      v36[16] = v47;
      (*(v7 + 32))(&v36[v34], v30, v6);
      (*(v31 + 32))(&v36[v35], v32, v33);
      aBlock[4] = sub_100017198;
      aBlock[5] = v36;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100016B14;
      aBlock[3] = &unk_100107DD8;
      v37 = _Block_copy(aBlock);

      [v29 setCopyShareURLCompletionBlock:v37];
      _Block_release(v37);
      if (qword_100115F70 != -1)
      {
        swift_once();
      }

      [qword_100116768 addOperation:v29];
    }

    else
    {
      (*(v7 + 56))(v17, 1, 1, v6);
      v41 = [objc_allocWithZone(NSError) initWithDomain:BRCloudDocsErrorDomain code:80 userInfo:0];
      v42 = *(v44 + 48);
      sub_10000FF00(v17, v13);
      *&v13[v42] = v41;
      sub_1000C6EF4();
    }
  }

  else
  {
    v38 = aBlock[0];
    sub_1000C5CE4();

    swift_willThrow();
    (*(v7 + 56))(v17, 1, 1, v6);
    v39 = sub_1000C5CD4();
    v40 = *(v10 + 48);
    sub_10000FF00(v17, v13);
    *&v13[v40] = v39;
    sub_1000C6EF4();
  }
}

uint64_t sub_1000169B4(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_10000FEB8(&qword_100116790, &qword_1000D0610);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v17 - v8;
  v10 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v17 - v12;
  if (a3)
  {
    sub_1000C5D34();
  }

  sub_100017574(a1, v13, &qword_100116260, &qword_1000CD940);
  if (a2)
  {
    v14 = sub_1000C5CD4();
  }

  else
  {
    v14 = 0;
  }

  v15 = *(v6 + 48);
  sub_10000FF00(v13, v9);
  *&v9[v15] = v14;
  sub_10000FEB8(&qword_100116798, &qword_1000CC510);
  return sub_1000C6EF4();
}

uint64_t sub_100016B14(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v16 - v8;
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  if (a2)
  {
    sub_1000C5D44();
    v12 = sub_1000C5D84();
    (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  }

  else
  {
    v13 = sub_1000C5D84();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  }

  v14 = a3;
  v11(v9, a3);

  return sub_100010F24(v9, &qword_100116260, &qword_1000CD940);
}

id sub_100016C68()
{
  v0 = objc_opt_self();
  if (![v0 mightHaveDataSeparatedAccountDescriptor])
  {
    return 0;
  }

  result = [v0 allLoggedInAccountDescriptors];
  if (!result)
  {
    return result;
  }

  v2 = result;
  sub_100010778(0, &qword_100116770, BRAccountDescriptor_ptr);
  v3 = sub_1000C6E94();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  v4 = sub_1000C72F4();
  if (!v4)
  {
LABEL_19:

    return 0;
  }

LABEL_5:
  v5 = 0;
  while (1)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = sub_1000C7254();
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v6 = *(v3 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if ([v6 isDataSeparated])
    {
      break;
    }

    ++v5;
    if (v8 == v4)
    {
      goto LABEL_19;
    }
  }

  v9 = [v7 accountIdentifier];

  if (!v9)
  {
    return 0;
  }

  v10 = sub_1000C6D84();

  return v10;
}

uint64_t sub_100016E1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100016E3C()
{
  v1 = *(sub_10000FEB8(&qword_100116260, &qword_1000CD940) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 17) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_10000FEB8(&qword_100116788, &unk_1000CC4F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = sub_1000C5D84();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3, 1, v9))
  {
    (*(v10 + 8))(v0 + v3, v9);
  }

  v11 = v2 | v7;
  v12 = (v3 + v4 + v7) & ~v7;
  (*(v6 + 8))(v0 + v12, v5);

  return _swift_deallocObject(v0, v12 + v8, v11 | 7);
}

uint64_t sub_100016FEC(void *a1, uint64_t a2)
{
  v5 = *(sub_10000FEB8(&qword_100116260, &qword_1000CD940) - 8);
  v6 = (*(v5 + 80) + 17) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_10000FEB8(&qword_100116788, &unk_1000CC4F0) - 8);
  v9 = *(v2 + 16);
  v10 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_100014F84(a1, a2, v9, v2 + v6);
}

id sub_1000170EC()
{
  sub_1000C5D24(__stack_chk_guard);
  v1 = v0;
  v2 = BRSharingCreateShareForItemAtURL();

  if (!v2)
  {
    v3 = 0;
  }

  return v2;
}

uint64_t sub_100017198(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1000C5D84() - 8);
  v6 = ((*(v5 + 80) + 17) & ~*(v5 + 80)) + *(v5 + 64);
  v7 = *(*(sub_10000FEB8(&qword_100116798, &qword_1000CC510) - 8) + 80);
  v8 = *(v2 + 16);

  return sub_1000169B4(a1, a2, v8);
}

uint64_t sub_1000172A8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_1000C5D84() - 8);
  v8 = ((*(v7 + 80) + 17) & ~*(v7 + 80)) + *(v7 + 64);
  v9 = *(*(sub_10000FEB8(&qword_1001167A8, &qword_1000CC528) - 8) + 80);
  v10 = *(v3 + 16);

  return sub_100015600(a1, a2, a3, v10);
}

uint64_t sub_1000173A4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100017CBC;

  return sub_10001292C(a1);
}

uint64_t sub_10001743C()
{
  v1 = sub_10000FEB8(&qword_1001167C0, &qword_1000CC558);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000174D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(sub_10000FEB8(&qword_1001167C0, &qword_1000CC558) - 8) + 80);

  return sub_100016124(a1, a2, a3, a4);
}

uint64_t sub_100017574(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000FEB8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000175E0(uint64_t a1)
{
  v4 = *(sub_1000C5D84() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100017CBC;

  return sub_100012428(a1, v1 + v5);
}

uint64_t sub_1000176D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *(sub_1000C5D84() - 8);
  v17 = ((*(v16 + 80) + 17) & ~*(v16 + 80)) + *(v16 + 64);
  v18 = *(sub_10000FEB8(&qword_1001167D8, &qword_1000CC588) - 8);
  v20 = v8 + ((v17 + *(v18 + 80)) & ~*(v18 + 80));
  return sub_100015B90(a1, a2, a3, a4, a5, a6, a7, a8, *(v8 + 16));
}

uint64_t sub_100017810(uint64_t a1)
{
  v4 = *(sub_1000C5D84() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100017CBC;

  return sub_1000138E4(a1, v1 + v5);
}

uint64_t sub_1000178EC()
{
  v1 = sub_1000C5D84();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100017974(uint64_t a1)
{
  v4 = *(sub_1000C5D84() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100011080;

  return sub_100013B14(a1, v1 + v5);
}

uint64_t sub_100017A58(uint64_t a1)
{
  v3 = *(sub_1000C5D84() - 8);
  v4 = ((*(v3 + 80) + 17) & ~*(v3 + 80)) + *(v3 + 64);
  v5 = *(*(sub_10000FEB8(&qword_100116778, &qword_1000CC4D8) - 8) + 80);
  return sub_1000148CC(a1, *(v1 + 16));
}

uint64_t sub_100017B38(uint64_t *a1, uint64_t *a2)
{
  v5 = sub_1000C5D84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + 17) & ~v7;
  v9 = *(v6 + 64);
  v10 = sub_10000FEB8(a1, a2);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = (v8 + v9 + v12) & ~v12;
  v14 = *(v11 + 64);
  v15 = v7 | v12;
  (*(v6 + 8))(v2 + v8, v5);
  (*(v11 + 8))(v2 + v13, v10);

  return _swift_deallocObject(v2, v13 + v14, v15 | 7);
}

id sub_100017CE4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;

  return v4;
}

uint64_t sub_100017D30(uint64_t a1, char a2)
{
  v4 = sub_1000C5F74();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v22 - v11;
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        if ((a2 & 1) == 0)
        {
          v14 = v10;
          sub_1000C5F54();
          v15 = sub_1000C5F64();
          v16 = sub_1000C6FD4();
          if (os_log_type_enabled(v15, v16))
          {
            v17 = swift_slowAlloc();
            *v17 = 0;
            _os_log_impl(&_mh_execute_header, v15, v16, "SPIAnalyticsEvent unknown sharing status but no error", v17, 2u);
          }

          (*(v5 + 8))(v12, v14);
        }

        return 1;
      case 1:
        return 1;
      case 2:
        return 3;
    }

LABEL_16:
    v18 = v10;
    sub_1000C5F54();
    v19 = sub_1000C5F64();
    v20 = sub_1000C6FD4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "SPIAnalyticsEvent unknown CSUIShareItemStatus", v21, 2u);
    }

    (*(v5 + 8))(v9, v18);
    return 1;
  }

  if (a1 > 4)
  {
    if (a1 == 5)
    {
      return 4;
    }

    if (a1 == 6)
    {
      return 5;
    }

    goto LABEL_16;
  }

  if (a1 == 3)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_100017F8C(char a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C5F24();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000FEB8(&qword_1001196B0, &qword_1000D3690);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v23 - v16;
  switch(a1)
  {
    case 1:
      if (!a3)
      {
        goto LABEL_3;
      }

      if (a2 == 0x7365676170 && a3 == 0xE500000000000000 || (sub_1000C73A4() & 1) != 0)
      {

        result = 2;
      }

      else
      {
        sub_1000C5F34();
        sub_100017574(v17, v15, &qword_1001196B0, &qword_1000D3690);
        if ((*(v7 + 48))(v15, 1, v6) == 1)
        {
          sub_100010F24(v17, &qword_1001196B0, &qword_1000D3690);
          sub_100010F24(v15, &qword_1001196B0, &qword_1000D3690);
          goto LABEL_3;
        }

        (*(v7 + 32))(v10, v15, v6);
        v19 = sub_1000C5E74();
        if (!v20)
        {
          (*(v7 + 8))(v10, v6);
          sub_100010F24(v17, &qword_1001196B0, &qword_1000D3690);
          goto LABEL_3;
        }

        if (v19 == 0x7365676170 && v20 == 0xE500000000000000)
        {

          (*(v7 + 8))(v10, v6);
          sub_100010F24(v17, &qword_1001196B0, &qword_1000D3690);
        }

        else
        {
          v22 = sub_1000C73A4();

          (*(v7 + 8))(v10, v6);
          sub_100010F24(v17, &qword_1001196B0, &qword_1000D3690);
          if ((v22 & 1) == 0)
          {
            goto LABEL_3;
          }
        }

        result = 2;
      }

      break;
    case 2:

      result = 1;
      break;
    case 3:

      result = 0;
      break;
    case 4:
    case 5:
    case 6:

LABEL_3:
      result = 3;
      break;
    case 7:

      result = 4;
      break;
    case 8:

      result = 10;
      break;
    case 9:

      result = 5;
      break;
    case 10:

      result = 6;
      break;
    case 11:

      result = 7;
      break;
    case 12:
    case 13:

      result = 8;
      break;
    default:

      result = 9;
      break;
  }

  return result;
}

uint64_t sub_10001838C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  if (a2)
  {
    v6 = sub_1000C6DA4();
    v7 = v5;
    if (v6 == 0xD000000000000010 && 0x80000001000D7300 == v5 || (sub_1000C73A4() & 1) != 0)
    {

      v4 = 1;
      goto LABEL_6;
    }

    if (v6 == 0xD000000000000016 && 0x80000001000D7320 == v7 || (sub_1000C73A4() & 1) != 0)
    {

      v4 = 2;
      goto LABEL_6;
    }

    if (v6 == 0xD000000000000011 && 0x80000001000D7340 == v7 || (sub_1000C73A4() & 1) != 0)
    {

      v4 = 3;
      goto LABEL_6;
    }

    if (v6 == 0x6C7070612E6D6F63 && v7 == 0xEF73656761702E65 || (sub_1000C73A4() & 1) != 0)
    {

      v4 = 4;
      goto LABEL_6;
    }

    if (v6 == 0xD000000000000011 && 0x80000001000D7360 == v7 || (sub_1000C73A4() & 1) != 0)
    {

      v4 = 5;
      goto LABEL_6;
    }

    if (v6 == 0xD000000000000015 && 0x80000001000D7380 == v7 || (sub_1000C73A4() & 1) != 0)
    {

      v4 = 6;
      goto LABEL_6;
    }

    if (v6 == 0xD000000000000013 && 0x80000001000D73A0 == v7 || (sub_1000C73A4() & 1) != 0)
    {

      v4 = 7;
      goto LABEL_6;
    }

    if (v6 == 0xD000000000000016 && 0x80000001000D73C0 == v7 || (sub_1000C73A4() & 1) != 0)
    {

      v4 = 8;
      goto LABEL_6;
    }

    if (v6 == 0xD000000000000012 && 0x80000001000D73E0 == v7 || (sub_1000C73A4() & 1) != 0)
    {

      v4 = 9;
      goto LABEL_6;
    }

    if (v6 == 0xD000000000000013 && 0x80000001000D7400 == v7)
    {

LABEL_43:
      v4 = 11;
      goto LABEL_6;
    }

    v9 = sub_1000C73A4();

    if (v9)
    {
      goto LABEL_43;
    }

    v10 = sub_1000C5D84();
    if ((*(*(v10 - 8) + 48))(a3, 1, v10) == 1)
    {
      v4 = 10;
    }

    else
    {
      v4 = 0;
    }
  }

LABEL_6:
  sub_100010F24(a3, &qword_100116260, &qword_1000CD940);
  return v4;
}

void *sub_1000187A0(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 != 255)
  {
    v4 = *(a1 + 24);
    v3 = *(a1 + 32);
    v6 = *(a1 + 8);
    v5 = *(a1 + 16);
    v8 = *(a1 + 16);
    v27 = *a1;
    v7 = v27;
    v28 = v8;
    v29 = v3;
    v30 = v1;
    sub_100022B08(v24);
    sub_1000199B8(v7, v6, v5, v4, v3, v1);
    isa = sub_1000C6F94().super.super.isa;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100030594(isa, 0x707954726F727265, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
    v11 = v25;
    v12 = v26;
    sub_100011818(v24, v25);
    (*(v12 + 24))(v11, v12);
    v13 = sub_1000C6D44();

    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_100030594(v13, 0xD000000000000014, 0x80000001000D72E0, v14);
    v15 = v25;
    v16 = v26;
    sub_100011818(v24, v25);
    v17 = (*(v16 + 8))(v15, v16);
    if (v17)
    {
      v18 = v17;
      [v17 code];
      v19 = sub_1000C6F94().super.super.isa;
      v20 = swift_isUniquelyReferenced_nonNull_native();
      sub_100030594(v19, 0x646F43726F727265, 0xE900000000000065, v20);
      v21 = [v18 domain];
      if (!v21)
      {
        sub_1000C6D84();
        v21 = sub_1000C6D44();
      }

      v22 = swift_isUniquelyReferenced_nonNull_native();
      sub_100030594(v21, 0x6D6F44726F727265, 0xEB000000006E6961, v22);

      sub_100010F24(a1, &qword_1001167F0, &qword_1000CC600);
    }

    else
    {
      sub_100010F24(a1, &qword_1001167F0, &qword_1000CC600);
    }

    sub_100010544(v24);
  }

  return &_swiftEmptyDictionarySingleton;
}

uint64_t sub_100018A40(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v51 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v42 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v43 = v6;
  while (v9)
  {
    v46 = a4;
    v15 = v11;
LABEL_14:
    v17 = __clz(__rbit64(v9)) | (v15 << 6);
    v18 = (*(a1 + 48) + 16 * v17);
    v19 = v18[1];
    v20 = *(*(a1 + 56) + 8 * v17);
    v50[0] = *v18;
    v50[1] = v19;
    v50[2] = v20;

    v21 = v20;
    a2(&v47, v50);

    v22 = v47;
    v23 = v48;
    v24 = v49;
    v25 = *v51;
    v27 = sub_100071DEC(v47, v48);
    v28 = *(v25 + 16);
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_25;
    }

    v31 = v26;
    if (*(v25 + 24) >= v30)
    {
      if ((v46 & 1) == 0)
      {
        sub_10003010C();
      }
    }

    else
    {
      v32 = v51;
      sub_10002F778(v30, v46 & 1);
      v33 = *v32;
      v34 = sub_100071DEC(v22, v23);
      if ((v31 & 1) != (v35 & 1))
      {
        goto LABEL_27;
      }

      v27 = v34;
    }

    v9 &= v9 - 1;
    v36 = *v51;
    if (v31)
    {
      v12 = *(v36[7] + 8 * v27);

      v13 = v36[7];
      v14 = *(v13 + 8 * v27);
      *(v13 + 8 * v27) = v12;
    }

    else
    {
      v36[(v27 >> 6) + 8] |= 1 << v27;
      v37 = (v36[6] + 16 * v27);
      *v37 = v22;
      v37[1] = v23;
      *(v36[7] + 8 * v27) = v24;
      v38 = v36[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_26;
      }

      v36[2] = v40;
    }

    a4 = 1;
    v11 = v15;
    v6 = v43;
  }

  v16 = v11;
  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v10)
    {
      sub_1000199B0();
    }

    v9 = *(v6 + 8 * v15);
    ++v16;
    if (v9)
    {
      v46 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1000C73D4();
  __break(1u);
  return result;
}

void *sub_100018CDC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v66 = a4;
  v67 = a5;
  v65 = a3;
  v11 = sub_1000C5F74();
  v61 = *(v11 - 8);
  v62 = v11;
  v12 = *(v61 + 64);
  __chkstk_darwin(v11);
  v63 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v64 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v60 - v18;
  v20 = sub_1000C5D84();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = a1;
  sub_100017574(a1, v19, &qword_100116260, &qword_1000CD940);
  v25 = *(v21 + 48);
  if (v25(v19, 1, v20) == 1)
  {
    sub_100010F24(v19, &qword_100116260, &qword_1000CD940);
    if (a2)
    {
      v26 = a2;
      sub_1000C7164();
      v27 = sub_1000C7174();

      if (v27)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          a6 = sub_1000C6D84();
          a7 = v28;
          swift_unknownObjectRelease();

          goto LABEL_10;
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  else
  {
    (*(v21 + 32))(v24, v19, v20);
    a6 = sub_10009DE88(v24, a2);
    a7 = v29;
    (*(v21 + 8))(v24, v20);
  }

LABEL_10:
  v30 = v68;
  v31 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v31 = a6 & 0xFFFFFFFFFFFFLL;
  }

  if (v31)
  {
    if (v25(v68, 1, v20) == 1)
    {
      v32 = sub_10009E760(a6, a7);
    }

    else
    {
      v32 = sub_10009EC80(a6, a7, v30);
    }

    sub_100017F8C(v32, a6, a7);
    v46 = v64;
    sub_100017574(v30, v64, &qword_100116260, &qword_1000CD940);
    v47 = v66;

    sub_10001838C(v65, v47, v46);
    sub_10000FEB8(&qword_1001167E0, &qword_1000CC5F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000CC5C0;
    *(inited + 32) = 0x54676E6972616873;
    *(inited + 40) = 0xEB00000000657079;
    *(inited + 48) = sub_1000C6F94();
    *(inited + 56) = 0x70704174736F68;
    *(inited + 64) = 0xE700000000000000;
    *(inited + 72) = sub_1000C6F94();
    v49 = sub_100078D2C(inited);
    swift_setDeallocating();
    sub_10000FEB8(&qword_1001167E8, &qword_1000CC5F8);
    swift_arrayDestroy();
    v50 = sub_1000187A0(v67);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v69 = v49;
    sub_100018A40(v50, sub_100017CE4, 0, isUniquelyReferenced_nonNull_native, &v69);

    return v69;
  }

  else
  {

    v33 = v63;
    sub_1000C5F54();
    v34 = sub_1000C5F64();
    v35 = sub_1000C6FD4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v69 = v68;
      *v36 = 136315138;
      v37 = sub_1000C6E54();
      v39 = v38;
      if (("doBRSharingRunPrepFolder(url:)" & 0x2000000000000000) != 0)
      {
        v40 = ("doBRSharingRunPrepFolder(url:)" >> 40) & 0xF0000;
      }

      else
      {
        v40 = 2293760;
      }

      if (v40)
      {
        v41 = v37;
        while (sub_1000C6E54() != v41 || v42 != v39)
        {
          v43 = sub_1000C73A4();

          if (v43)
          {
            goto LABEL_30;
          }

          if ((v40 ^ sub_1000C6DF4()) < 0x4000)
          {
            goto LABEL_25;
          }
        }

LABEL_30:

        sub_1000C6E64();
        v53 = sub_1000C6DC4();
        v45 = v54;

        v44 = v53;
      }

      else
      {
LABEL_25:

        v44 = 0;
        v45 = 0xE000000000000000;
      }

      v56 = v61;
      v55 = v62;
      v57 = v63;
      v58 = v68;
      v59 = sub_100071844(v44, v45, &v69);

      *(v36 + 4) = v59;
      _os_log_impl(&_mh_execute_header, v34, v35, "%s: couldn't determine UTI", v36, 0xCu);
      sub_100010544(v58);

      (*(v56 + 8))(v57, v55);
    }

    else
    {

      (*(v61 + 8))(v33, v62);
    }

    return &_swiftEmptyDictionarySingleton;
  }
}

uint64_t sub_1000193C0(char a1, char a2)
{
  v4 = sub_1000C5F74();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    if ((a2 & 1) == 0)
    {
      v11 = v7;
      sub_1000C5F54();
      v12 = sub_1000C5F64();
      v13 = sub_1000C6FD4();
      if (os_log_type_enabled(v12, v13))
      {
        v10 = 2;
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "SPIAnalyticsEvent sharingMode is none but no error", v14, 2u);

        (*(v5 + 8))(v9, v11);
        return v10;
      }

      (*(v5 + 8))(v9, v11);
    }

    return 2;
  }

  return a1 == 1;
}

uint64_t sub_10001954C(unsigned __int8 a1, char a2)
{
  v4 = sub_1000C5F74();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else if (a1)
  {
    return 0;
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      v10 = v7;
      sub_1000C5F54();
      v11 = sub_1000C5F64();
      v12 = sub_1000C6FD4();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "SPIAnalyticsEvent sharePermission is none but no error", v13, 2u);
      }

      (*(v5 + 8))(v9, v10);
    }

    return 3;
  }
}

uint64_t sub_1000196BC(uint64_t result, uint64_t a2)
{
  if (!result)
  {

    return 4;
  }

  if (result == 1)
  {

    return 3;
  }

  v2 = *(a2 + 16);
  if (!v2)
  {
    __break(1u);
    goto LABEL_17;
  }

  v3 = *(a2 + 32);
  if (v3 == 1)
  {
    if (v2 != 1)
    {
      if (*(a2 + 33))
      {

        return 0;
      }

      v4 = 0;
      goto LABEL_13;
    }

LABEL_18:
    __break(1u);
    return result;
  }

  if (v2 == 1)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v4 = *(a2 + 33);
LABEL_13:

  if (v3 != v4)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_100019774(uint64_t a1, char a2)
{
  v4 = sub_1000C5F74();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v22 - v11;
  if (a1 <= 1)
  {
    if (!a1)
    {
      if ((a2 & 1) == 0)
      {
        v14 = v10;
        sub_1000C5F54();
        v15 = sub_1000C5F64();
        v16 = sub_1000C6FD4();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          *v17 = 0;
          _os_log_impl(&_mh_execute_header, v15, v16, "SPIAnalyticsEvent unknown user share status but no error", v17, 2u);
        }

        (*(v5 + 8))(v12, v14);
      }

      return 4;
    }

    if (a1 == 1)
    {
      return 0;
    }
  }

  else
  {
    switch(a1)
    {
      case 4:
        return 3;
      case 3:
        return 2;
      case 2:
        return 1;
    }
  }

  v18 = v10;
  sub_1000C5F54();
  v19 = sub_1000C5F64();
  v20 = sub_1000C6FD4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "SPIAnalyticsEvent unknown CSUICurrentUserCKShareStatus", v21, 2u);
  }

  (*(v5 + 8))(v9, v18);
  return 4;
}

void sub_1000199B8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 <= 0xDu)
  {

    v7 = a3;
  }
}

uint64_t sub_100019A40()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  return v1;
}

uint64_t sub_100019AAC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  return v1;
}

uint64_t sub_100019B5C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  return v1;
}

uint64_t sub_100019C0C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  return v1;
}

uint64_t sub_100019C78()
{
  v1 = *(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12OptionsModel_ckShareModel);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  if (v5 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    result = v5;
    v3 = *(v5 + 16);
    if (!v3)
    {
      __break(1u);
      goto LABEL_17;
    }

    if (*(v5 + 32) != 1)
    {
      if (v3 != 1)
      {
        goto LABEL_14;
      }

      __break(1u);
      goto LABEL_13;
    }

    if (v3 != 1)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  result = v5;
  v3 = *(v5 + 16);
  if (!v3)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (*(v5 + 32) != 1)
  {
LABEL_13:
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    goto LABEL_18;
  }

  if (v3 != 1)
  {
LABEL_9:
    if (*(result + 33))
    {
      v4 = 1;
LABEL_15:

      return v4;
    }

LABEL_14:
    v4 = 0;
    goto LABEL_15;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_100019E18()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v1 = *(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12OptionsModel_allowAccessRequestsSPIOverride);
  if (v1 == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    LOBYTE(v1) = v4;
  }

  if (v1)
  {
    goto LABEL_6;
  }

  v2 = *(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12OptionsModel_ckShareModel);
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100052CE0();

LABEL_6:
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_1000C60A4();
  }

  __break(1u);
  return result;
}

uint64_t sub_100019FA8(char a1, uint64_t a2, char a3, char a4)
{
  *(v5 + 118) = a4;
  *(v5 + 117) = a3;
  *(v5 + 24) = a2;
  *(v5 + 32) = v4;
  *(v5 + 116) = a1;
  v6 = sub_1000C5F74();
  *(v5 + 40) = v6;
  v7 = *(v6 - 8);
  *(v5 + 48) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 56) = swift_task_alloc();
  sub_1000C6F14();
  *(v5 + 64) = sub_1000C6F04();
  v10 = sub_1000C6ED4();
  *(v5 + 72) = v10;
  *(v5 + 80) = v9;

  return _swift_task_switch(sub_10001A0A8, v10, v9);
}

void sub_10001A0A8()
{
  v55 = v0;
  v1 = *(v0 + 32);
  v2 = *(v0 + 116);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (*(v0 + 112) != v2)
  {
    v3 = *(v0 + 32);
    v4 = *(v0 + 116);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 113) = v4;

    sub_1000C60A4();
    v5 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12OptionsModel_ckShareModel;
    v6 = *(v3 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12OptionsModel_ckShareModel);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    v7 = *(v0 + 16);
    *(v0 + 88) = v7;
    if (v7)
    {
      v8 = *(v3 + v5);
      swift_getKeyPath();
      swift_getKeyPath();

      sub_1000C6094();

      if ((*(v0 + 114) & 1) == 0)
      {
        v29 = *(v0 + 64);

        goto LABEL_21;
      }

      v9 = *(v0 + 56);
      v10 = *(v3 + v5);

      v11 = v7;
      v12 = sub_100086528(v7);

      sub_1000C5F54();
      v13 = sub_1000C5F64();
      v14 = sub_1000C6FF4();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = 0x656E6F6E2ELL;
        v16 = *(v0 + 116);
        v17 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *v17 = 136315906;
        v18 = 0xE500000000000000;
        v19 = 0x6C6E4F646165722ELL;
        v20 = 0xE900000000000079;
        if (v16 != 2)
        {
          v19 = 0x646578696D2ELL;
          v20 = 0xE600000000000000;
        }

        v21 = 0x697257646165722ELL;
        if (v16)
        {
          v18 = 0xEA00000000006574;
        }

        else
        {
          v21 = 0x656E6F6E2ELL;
        }

        if (v16 <= 1)
        {
          v22 = v21;
        }

        else
        {
          v22 = v19;
        }

        if (v16 <= 1)
        {
          v23 = v18;
        }

        else
        {
          v23 = v20;
        }

        v24 = sub_100071844(v22, v23, &v54);

        *(v17 + 4) = v24;
        *(v17 + 12) = 2080;
        v52 = v12;
        if (v12 > 1u)
        {
          if (v12 == 2)
          {
            v15 = 0x6C6E4F646165722ELL;
            v25 = 0xE900000000000079;
          }

          else
          {
            v25 = 0xE600000000000000;
            v15 = 0x646578696D2ELL;
          }
        }

        else if (v12)
        {
          v15 = 0x697257646165722ELL;
          v25 = 0xEA00000000006574;
        }

        else
        {
          v25 = 0xE500000000000000;
        }

        v33 = *(v0 + 48);
        v50 = *(v0 + 40);
        v51 = *(v0 + 56);
        v34 = *(v0 + 118);
        v35 = *(v0 + 117);
        v36 = sub_100071844(v15, v25, &v54);

        *(v17 + 14) = v36;
        *(v17 + 22) = 1024;
        *(v17 + 24) = v34;
        *(v17 + 28) = 1024;
        *(v17 + 30) = v35;
        _os_log_impl(&_mh_execute_header, v13, v14, "changeReadWritePermission newPermission: %s, oldSharePermission: %s,\nupdateExistingParticipants: %{BOOL}d, saveShare: %{BOOL}d", v17, 0x22u);
        swift_arrayDestroy();

        (*(v33 + 8))(v51, v50);
        v12 = v52;
      }

      else
      {
        v31 = *(v0 + 48);
        v30 = *(v0 + 56);
        v32 = *(v0 + 40);

        (*(v31 + 8))(v30, v32);
      }

      v37 = *(v0 + 116);
      if (v37 == v12)
      {
        goto LABEL_60;
      }

      if (*(v0 + 116) > 1u)
      {
        if (v37 != 2)
        {
          sub_1000C72E4();
          return;
        }

        v38 = 1;
        v39 = 2;
      }

      else
      {
        v38 = 0;
        if (*(v0 + 116))
        {
          v39 = 3;
        }

        else
        {
          v39 = 1;
        }
      }

      v40 = *(v0 + 32);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000C6094();

      if (*(v0 + 115) == 1)
      {
        [v11 setPublicPermission:v39];
      }

      if (*(v0 + 118) != 1 || [v11 publicPermission] != 1)
      {
LABEL_56:
        if (*(v0 + 117) == 1)
        {
          v47 = swift_task_alloc();
          *(v0 + 96) = v47;
          *v47 = v0;
          v47[1] = sub_10001A810;
          v48 = *(v0 + 24);

          sub_100052EEC(1);
          return;
        }

LABEL_60:
        v49 = *(v0 + 64);

        goto LABEL_20;
      }

      v41 = [v11 participants];
      sub_100010778(0, &qword_100117010, CKShareParticipant_ptr);
      v42 = sub_1000C6E94();

      v53 = v11;
      if (v42 >> 62)
      {
        v43 = sub_1000C72F4();
        if (v43)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v43)
        {
LABEL_44:
          if (v43 < 1)
          {
            __break(1u);
            return;
          }

          for (i = 0; i != v43; ++i)
          {
            if ((v42 & 0xC000000000000001) != 0)
            {
              v45 = sub_1000C7254();
            }

            else
            {
              v45 = *(v42 + 8 * i + 32);
            }

            v46 = v45;
            if ([v45 role] != 1)
            {
              [v46 setPermission:v39];
              if (v38)
              {
                [v46 setRole:3];
              }
            }
          }
        }
      }

      v11 = v53;
      goto LABEL_56;
    }
  }

  v26 = *(v0 + 64);
LABEL_20:

LABEL_21:
  v27 = *(v0 + 56);

  v28 = *(v0 + 8);

  v28();
}

uint64_t sub_10001A810()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  v5 = *(v2 + 80);
  v6 = *(v2 + 72);
  if (v0)
  {
    v7 = sub_10001E4F4;
  }

  else
  {
    v7 = sub_10001E4F0;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10001A94C(char a1, uint64_t a2, char a3)
{
  *(v4 + 119) = a3;
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 118) = a1;
  v5 = sub_1000C5F74();
  *(v4 + 40) = v5;
  v6 = *(v5 - 8);
  *(v4 + 48) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 56) = swift_task_alloc();
  sub_1000C6F14();
  *(v4 + 64) = sub_1000C6F04();
  v9 = sub_1000C6ED4();
  *(v4 + 72) = v9;
  *(v4 + 80) = v8;

  return _swift_task_switch(sub_10001AA48, v9, v8);
}

uint64_t sub_10001AA48()
{
  v52 = v0;
  v1 = *(v0 + 32);
  v2 = *(v0 + 118);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (*(v0 + 112) != v2)
  {
    v3 = *(v0 + 32);
    v4 = *(v0 + 118);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    v5 = *(v0 + 113);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 114) = v4;

    sub_1000C60A4();
    v6 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12OptionsModel_ckShareModel;
    v7 = *(v3 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12OptionsModel_ckShareModel);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    v8 = *(v0 + 16);
    *(v0 + 88) = v8;
    if (v8)
    {
      v9 = *(v3 + v6);
      swift_getKeyPath();
      swift_getKeyPath();

      sub_1000C6094();

      if ((*(v0 + 115) & 1) == 0)
      {
        v17 = *(v0 + 64);

        goto LABEL_8;
      }

      v10 = *(v0 + 118);
      v11 = [v8 publicPermission];
      if (v10 == 2)
      {
        goto LABEL_5;
      }

      v18 = *(v0 + 32);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000C6094();

      if (*(v0 + 116) != 3)
      {
        v30 = *(v0 + 32);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_1000C6094();

        if (*(v0 + 117) > 1u)
        {
          if (*(v0 + 117) != 2)
          {
            return sub_1000C72E4();
          }

          v12 = 2;
LABEL_14:
          v19 = *(v0 + 56);
          sub_1000C5F54();
          v20 = sub_1000C5F64();
          v21 = sub_1000C6FF4();
          if (!os_log_type_enabled(v20, v21))
          {
            v28 = *(v0 + 48);
            v27 = *(v0 + 56);
            v29 = *(v0 + 40);

            (*(v28 + 8))(v27, v29);
            if (v12 != v11)
            {
              goto LABEL_45;
            }

            goto LABEL_49;
          }

          v22 = *(v0 + 118);
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          *v23 = 136316162;
          v50 = v11;
          v51 = v24;
          v49 = v12;
          if (v22)
          {
            if (v22 == 1)
            {
              v25 = 0x4D63696C6275702ELL;
              v26 = 0xEB0000000065646FLL;
            }

            else
            {
              v25 = 0x657461766972702ELL;
              v26 = 0xEC00000065646F4DLL;
            }
          }

          else
          {
            v26 = 0xE500000000000000;
            v25 = 0x656E6F6E2ELL;
          }

          v31 = sub_100071844(v25, v26, &v51);

          *(v23 + 4) = v31;
          *(v23 + 12) = 2080;
          if (v5)
          {
            if (v5 == 1)
            {
              v32 = 0x4D63696C6275702ELL;
              v33 = 0xEB0000000065646FLL;
            }

            else
            {
              v32 = 0x657461766972702ELL;
              v33 = 0xEC00000065646F4DLL;
            }
          }

          else
          {
            v33 = 0xE500000000000000;
            v32 = 0x656E6F6E2ELL;
          }

          v34 = sub_100071844(v32, v33, &v51);

          *(v23 + 14) = v34;
          *(v23 + 22) = 2080;
          if (v50 == 1)
          {
            v36 = 0xE500000000000000;
            v35 = 0x656E6F6E2ELL;
          }

          else
          {
            if (v50 != 2)
            {
              if (v50 == 3)
              {
                v35 = 0x697257646165722ELL;
                v36 = 0xEA00000000006574;
                goto LABEL_38;
              }

              return sub_1000C72E4();
            }

            v35 = 0x6C6E4F646165722ELL;
            v36 = 0xE900000000000079;
          }

LABEL_38:
          v37 = sub_100071844(v35, v36, &v51);

          *(v23 + 24) = v37;
          *(v23 + 32) = 2080;
          if (v49 == 1)
          {
            v39 = 0xE500000000000000;
            v38 = 0x656E6F6E2ELL;
          }

          else if (v49 == 2)
          {
            v38 = 0x6C6E4F646165722ELL;
            v39 = 0xE900000000000079;
          }

          else
          {
            v38 = 0x697257646165722ELL;
            v39 = 0xEA00000000006574;
          }

          v40 = *(v0 + 48);
          v48 = *(v0 + 56);
          v41 = *(v0 + 40);
          v42 = *(v0 + 119);
          v43 = sub_100071844(v38, v39, &v51);

          *(v23 + 34) = v43;
          *(v23 + 42) = 1024;
          *(v23 + 44) = v42;
          _os_log_impl(&_mh_execute_header, v20, v21, "changeAccessSetting for newAccess: %s, oldAccess: %s oldSharePermission: %s,\nnewSharePermission: %s, saveShare: %{BOOL}d", v23, 0x30u);
          swift_arrayDestroy();

          (*(v40 + 8))(v48, v41);
          v12 = v49;
          if (v49 != v50)
          {
LABEL_45:
            v44 = *(v0 + 119);
            [v8 setPublicPermission:v12];
            if (v44 == 1)
            {
              v45 = swift_task_alloc();
              *(v0 + 96) = v45;
              *v45 = v0;
              v45[1] = sub_10001B1F4;
              v46 = *(v0 + 24);

              return sub_100052EEC(1);
            }
          }

LABEL_49:
          v47 = *(v0 + 64);

          goto LABEL_7;
        }

        if (!*(v0 + 117))
        {
LABEL_5:
          v12 = 1;
          goto LABEL_14;
        }
      }

      v12 = 3;
      goto LABEL_14;
    }
  }

  v13 = *(v0 + 64);
LABEL_7:

LABEL_8:
  v14 = *(v0 + 56);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_10001B1F4()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  v5 = *(v2 + 80);
  v6 = *(v2 + 72);
  if (v0)
  {
    v7 = sub_10001B3A4;
  }

  else
  {
    v7 = sub_10001B330;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10001B330()
{
  v1 = v0[11];
  v2 = v0[8];

  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10001B3A4()
{
  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];

  v4 = v0[1];
  v5 = v0[13];

  return v4();
}

uint64_t sub_10001B418(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000C5F74();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v48 - v10;
  v12 = *(v2 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12OptionsModel_ckShareModel);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  if (!v51)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    v22 = sub_10008440C(v51, a1);

    if (v22)
    {
      return result;
    }

    sub_1000C5F54();

    v23 = sub_1000C5F64();
    v24 = sub_1000C6FF4();

    if (!os_log_type_enabled(v23, v24))
    {

      (*(v5 + 8))(v9, v4);
      goto LABEL_66;
    }

    v25 = swift_slowAlloc();
    result = swift_slowAlloc();
    v51 = result;
    *v25 = 136315394;
    v26 = *(a1 + 16);
    if (!v26)
    {
      goto LABEL_69;
    }

    v27 = *(a1 + 32);
    v49 = v5;
    if (v27 == 1)
    {
      if (v26 == 1)
      {
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      if (*(a1 + 33))
      {
        v28 = 7237422;
        v29 = 0xE300000000000000;
        goto LABEL_43;
      }

      v31 = 0;
    }

    else
    {
      if (v26 == 1)
      {
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      v31 = *(a1 + 33);
    }

    v39 = v27 ^ v31;
    if (v39)
    {
      v28 = 0x646578696D2ELL;
    }

    else
    {
      v28 = 1717989166;
    }

    if (v39)
    {
      v29 = 0xE600000000000000;
    }

    else
    {
      v29 = 0xE400000000000000;
    }

LABEL_43:
    v40 = sub_100071844(v28, v29, &v51);

    *(v25 + 4) = v40;
    *(v25 + 12) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    result = v50;
    v41 = *(v50 + 16);
    if (!v41)
    {
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    v42 = *(v50 + 32);
    if (v42 == 1)
    {
      if (v41 == 1)
      {
LABEL_79:
        __break(1u);
        return result;
      }

      if (*(v50 + 33))
      {

        v43 = 7237422;
        v44 = 0xE300000000000000;
LABEL_65:
        v47 = sub_100071844(v43, v44, &v51);

        *(v25 + 14) = v47;
        _os_log_impl(&_mh_execute_header, v23, v24, "For Co-owners changeNewParticipantsCanBeCoOwners, newState: %s, oldState: %s", v25, 0x16u);
        swift_arrayDestroy();

        (*(v49 + 8))(v9, v4);
        goto LABEL_66;
      }

      v45 = 0;
    }

    else
    {
      if (v41 == 1)
      {
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      v45 = *(v50 + 33);
    }

    if (v42 != v45)
    {
      v43 = 0x646578696D2ELL;
    }

    else
    {
      v43 = 1717989166;
    }

    if (v42 != v45)
    {
      v44 = 0xE600000000000000;
    }

    else
    {
      v44 = 0xE400000000000000;
    }

    goto LABEL_65;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v13 = sub_10008440C(v51, a1);

  if (v13)
  {
    return result;
  }

  sub_1000C5F54();

  v15 = sub_1000C5F64();
  v16 = sub_1000C6FF4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    result = swift_slowAlloc();
    v51 = result;
    *v17 = 136315394;
    v18 = *(a1 + 16);
    if (v18)
    {
      v19 = *(a1 + 32);
      v49 = v5;
      if (v19 == 1)
      {
        if (v18 == 1)
        {
LABEL_76:
          __break(1u);
          goto LABEL_77;
        }

        if (*(a1 + 33))
        {
          v20 = 7237422;
          v21 = 0xE300000000000000;
          goto LABEL_29;
        }

        v30 = 0;
      }

      else
      {
        if (v18 == 1)
        {
LABEL_72:
          __break(1u);
          goto LABEL_73;
        }

        v30 = *(a1 + 33);
      }

      v32 = v19 ^ v30;
      if (v32)
      {
        v20 = 0x646578696D2ELL;
      }

      else
      {
        v20 = 1717989166;
      }

      if (v32)
      {
        v21 = 0xE600000000000000;
      }

      else
      {
        v21 = 0xE400000000000000;
      }

LABEL_29:
      v33 = sub_100071844(v20, v21, &v51);

      *(v17 + 4) = v33;
      *(v17 + 12) = 2080;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000C6094();

      result = v50;
      v34 = *(v50 + 16);
      if (v34)
      {
        v35 = *(v50 + 32);
        if (v35 == 1)
        {
          if (v34 != 1)
          {
            if (*(v50 + 33))
            {

              v36 = 7237422;
              v37 = 0xE300000000000000;
LABEL_57:
              v46 = sub_100071844(v36, v37, &v51);

              *(v17 + 14) = v46;
              _os_log_impl(&_mh_execute_header, v15, v16, "changeNewParticipantsCanBeCoOwners 4 newState: %s, oldState: %s", v17, 0x16u);
              swift_arrayDestroy();

              (*(v49 + 8))(v11, v4);
              goto LABEL_66;
            }

            v38 = 0;
LABEL_51:

            if (v35 != v38)
            {
              v36 = 0x646578696D2ELL;
            }

            else
            {
              v36 = 1717989166;
            }

            if (v35 != v38)
            {
              v37 = 0xE600000000000000;
            }

            else
            {
              v37 = 0xE400000000000000;
            }

            goto LABEL_57;
          }

          goto LABEL_78;
        }

        if (v34 != 1)
        {
          v38 = *(v50 + 33);
          goto LABEL_51;
        }

        goto LABEL_74;
      }

      goto LABEL_70;
    }

    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  (*(v5 + 8))(v11, v4);
LABEL_66:
  swift_getKeyPath();
  swift_getKeyPath();
  v51 = a1;

  return sub_1000C60A4();
}

uint64_t sub_10001BBE4(char a1, uint64_t a2, char a3)
{
  *(v4 + 143) = a3;
  *(v4 + 32) = a2;
  *(v4 + 40) = v3;
  *(v4 + 142) = a1;
  v5 = sub_1000C5F74();
  *(v4 + 48) = v5;
  v6 = *(v5 - 8);
  *(v4 + 56) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 80) = swift_task_alloc();
  sub_1000C6F14();
  *(v4 + 88) = sub_1000C6F04();
  v9 = sub_1000C6ED4();
  *(v4 + 96) = v9;
  *(v4 + 104) = v8;

  return _swift_task_switch(sub_10001BCF8, v9, v8);
}

uint64_t sub_10001BCF8()
{
  v1 = *(v0 + 40);
  v2 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12OptionsModel_allowAccessRequestsSPIOverride;
  v3 = *(v1 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12OptionsModel_allowAccessRequestsSPIOverride);
  if (v3 == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    LOBYTE(v3) = *(v0 + 136);
  }

  v4 = *(v0 + 142);
  if ((v3 & 1) != v4)
  {
    if (*(v1 + v2) != 2)
    {
      v29 = *(v0 + 88);
      v30 = *(v0 + 64);

      sub_1000C5F54();
      v31 = sub_1000C5F64();
      v32 = sub_1000C6FF4();
      v33 = os_log_type_enabled(v31, v32);
      v35 = *(v0 + 56);
      v34 = *(v0 + 64);
      v36 = *(v0 + 48);
      if (v33)
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "changeRequestAccessAllowed non-SPI call and the SPI has already set a value", v37, 2u);
      }

      (*(v35 + 8))(v34, v36);
      goto LABEL_28;
    }

    v5 = *(v0 + 40);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    v6 = *(v0 + 137);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 138) = v4;

    sub_1000C60A4();
    v7 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12OptionsModel_ckShareModel;
    v8 = *(v5 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12OptionsModel_ckShareModel);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    v9 = *(v0 + 16);
    *(v0 + 112) = v9;
    if (v9)
    {
      v10 = *(v0 + 40);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000C6094();

      if (*(v0 + 140) == 1)
      {
        v11 = *(v0 + 80);
        v12 = [v9 allowsAccessRequests];
        sub_1000C5F54();
        v13 = sub_1000C5F64();
        v14 = sub_1000C6FF4();
        if (os_log_type_enabled(v13, v14))
        {
          v55 = *(v0 + 143);
          v15 = v6;
          v16 = *(v0 + 142);
          v17 = swift_slowAlloc();
          *v17 = 67109888;
          *(v17 + 4) = v16;
          *(v17 + 8) = 1024;
          *(v17 + 10) = v15;
          *(v17 + 14) = 1024;
          *(v17 + 16) = v12;
          *(v17 + 20) = 1024;
          *(v17 + 22) = v55;
          _os_log_impl(&_mh_execute_header, v13, v14, "changeRequestAccessAllowed 4 newAccessAllowed: %{BOOL}d, oldAccessAllowed: %{BOOL}d oldShareAccessAllowed: %{BOOL}d,\nsaveShare: %{BOOL}d", v17, 0x1Au);
        }

        v18 = *(v0 + 80);
        v19 = *(v0 + 48);
        v20 = *(v0 + 56);
        v21 = *(v0 + 142);

        (*(v20 + 8))(v18, v19);
        if (v12 != v21)
        {
          v22 = *(v1 + v2);
          if (v22 == 2)
          {
            v23 = *(v0 + 40);
            swift_getKeyPath();
            swift_getKeyPath();
            sub_1000C6094();

            LOBYTE(v22) = *(v0 + 141);
          }

          v24 = *(v0 + 143);
          [v9 setAllowsAccessRequests:v22 & 1];
          if (v24 == 1)
          {
            v25 = swift_task_alloc();
            *(v0 + 120) = v25;
            *v25 = v0;
            v25[1] = sub_10001C3AC;
            v26 = *(v0 + 32);

            return sub_100052EEC(1);
          }
        }

        v54 = *(v0 + 88);

        goto LABEL_17;
      }
    }

    v38 = *(v0 + 88);
    v39 = *(v0 + 72);
    v40 = *(v0 + 40);

    sub_1000C5F54();
    swift_retain_n();
    v41 = sub_1000C5F64();
    v42 = sub_1000C6FF4();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = *(v0 + 142);
      v44 = swift_slowAlloc();
      *v44 = 67110144;
      *(v44 + 4) = v43;
      *(v44 + 8) = 1024;
      *(v44 + 10) = v6;
      *(v44 + 14) = 1024;
      v45 = *(v5 + v7);
      swift_getKeyPath();
      swift_getKeyPath();

      sub_1000C6094();

      v46 = *(v0 + 24);
      if (v46)
      {

        LODWORD(v46) = 1;
      }

      v47 = *(v0 + 40);
      v48 = *(v0 + 143);
      *(v44 + 16) = v46;

      *(v44 + 20) = 1024;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000C6094();

      *(v44 + 22) = *(v0 + 139);

      *(v44 + 26) = 1024;
      *(v44 + 28) = v48;
      _os_log_impl(&_mh_execute_header, v41, v42, "changeRequestAccessAllowed: no share, or current user can't manage access requests. newAccessAllowed: %{BOOL}d, oldAccessAllowed: %{BOOL}d, is a share: %{BOOL}d, currentUserCanManageAccessRequests: %{BOOL}d, oldShareAccessAllowed: [none], saveShare: %{BOOL}d (ignored)", v44, 0x20u);
    }

    else
    {
      v49 = *(v0 + 40);
    }

    (*(*(v0 + 56) + 8))(*(v0 + 72), *(v0 + 48));
    goto LABEL_28;
  }

  v28 = *(v0 + 88);
LABEL_17:

LABEL_28:
  v51 = *(v0 + 72);
  v50 = *(v0 + 80);
  v52 = *(v0 + 64);

  v53 = *(v0 + 8);

  return v53();
}

uint64_t sub_10001C3AC()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  v5 = *(v2 + 104);
  v6 = *(v2 + 96);
  if (v0)
  {
    v7 = sub_10001C570;
  }

  else
  {
    v7 = sub_10001C4E8;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10001C4E8()
{
  v1 = v0[14];
  v2 = v0[11];

  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];

  v6 = v0[1];

  return v6();
}

uint64_t sub_10001C570()
{
  v1 = v0[14];
  v3 = v0[10];
  v2 = v0[11];
  v5 = v0[8];
  v4 = v0[9];

  v6 = v0[1];
  v7 = v0[16];

  return v6();
}

void sub_10001C600(void **a1)
{
  v2 = sub_1000C5F74();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (v7)
    {
      v8 = v7;
      if ([v8 publicPermission] == 1)
      {
        v9 = 2;
      }

      else
      {
        v9 = 1;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      HIBYTE(v22) = v9;

      sub_1000C60A4();
      v10 = v8;
      v11 = sub_100086528(v7);

      swift_getKeyPath();
      swift_getKeyPath();
      HIBYTE(v22) = v11;

      sub_1000C60A4();
      sub_1000C5F54();
      v12 = v10;
      v13 = sub_1000C5F64();
      v14 = sub_1000C6FF4();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 67109120;
        *(v15 + 4) = [v12 allowsAccessRequests];

        _os_log_impl(&_mh_execute_header, v13, v14, "optionsModel ckShareModel.$ckShare about to set anyoneCanRequestAccessPublisher to ckShare's allowsAccessRequests: %{BOOL}d", v15, 8u);
      }

      else
      {

        v13 = v12;
      }

      (*(v3 + 8))(v6, v2);
      v16 = [v12 allowsAccessRequests];
      swift_getKeyPath();
      swift_getKeyPath();
      HIBYTE(v22) = v16;

      sub_1000C60A4();
      v17 = [v12 currentUserParticipant];
      if (v17)
      {
        v18 = v17;
        v19 = [v17 role];
        sub_100010778(0, &qword_100116760, NSObject_ptr);
        v20 = [v12 owner];
        v21 = sub_1000C7184();

        swift_getKeyPath();
        swift_getKeyPath();
        HIBYTE(v22) = v21 & 1 | (v19 == 2);

        sub_1000C60A4();
      }

      sub_100019E18();
    }

    else
    {
    }
  }
}

uint64_t sub_10001C9B0(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    v3 = sub_10001CB2C(v4, v1);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C60A4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    sub_10001CBB4(v3, v1);
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_1000C60A4();
  }

  return result;
}

uint64_t sub_10001CB2C(unsigned __int8 a1, uint64_t a2)
{
  v2 = a1;
  v3 = a2 & 0xC;
  result = (a2 >> 1) & 2;
  do
  {
    while (v2 > 1)
    {
      if (v2 == 2)
      {
        v2 = 1;
        if (v3 != 8)
        {
          return result;
        }
      }

      else
      {
        if (v3 == 12)
        {
          return 3;
        }

LABEL_11:
        if ((a2 & 8) != 0)
        {
          v5 = v2 == 1;
          v2 = 1;
          if (v5)
          {
            return 0;
          }
        }

        else
        {
          v5 = v2 == 2;
          v2 = 2;
          if (v5)
          {
            return 0;
          }
        }
      }
    }

    if (!v2)
    {
      if (!a2)
      {
        return 0;
      }

      goto LABEL_11;
    }

    v2 = 2;
  }

  while ((a2 & 8) == 0);
  return 1;
}

uint64_t sub_10001CBB4(char a1, uint64_t a2)
{
  if ((a2 & 2) != 0)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if ((a2 & 1u) <= (a2 == 0))
  {
    result = a2 == 0;
  }

  else
  {
    result = a2 & 1;
  }

  do
  {
    while (a1)
    {
      if (a1 == 1)
      {
        a1 = 2;
        if ((a2 & 3) != 2)
        {
          return result;
        }
      }

      else
      {
        a1 = 1;
        if (a2 == 0 || (a2 & 2) != 0)
        {
          return 2;
        }
      }
    }

    a1 = v3;
  }

  while (a2);
  return 0;
}

uint64_t sub_10001CC28()
{
  v1 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12OptionsModel__readWritePermission;
  v2 = sub_10000FEB8(&unk_100117800, &unk_1000D0B90);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12OptionsModel__sharingMode;
  v4 = sub_10000FEB8(&unk_1001184A0, &qword_1000CC8A0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12OptionsModel__sharingOptionsAllowed;
  v6 = sub_10000FEB8(&qword_100116988, &qword_1000CC8A8);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12OptionsModel__allowCoOwnersEditing;
  v8 = sub_10000FEB8(&qword_100117640, &unk_1000CC8B0);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v7, v8);
  v10 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12OptionsModel__newParticipantsCanBeCoOwners;
  v11 = sub_10000FEB8(&qword_100116990, &unk_1000CF2A0);
  v12 = *(*(v11 - 8) + 8);
  v12(v0 + v10, v11);
  v9(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12OptionsModel__participantsAreAlwaysCoOwners, v8);
  v13 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12OptionsModel__currentUserCanInvitePublisher;
  v14 = sub_10000FEB8(&unk_100117850, &qword_1000CC8C0);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v9(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12OptionsModel__currentUserCanManageAccessRequestsPublisher, v8);
  v9(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12OptionsModel__anyoneCanRequestAccessPublisher, v8);
  v12(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12OptionsModel__coOwnerNewParticipantsCanBeCoOwners, v11);
  v15 = *(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12OptionsModel_ckShareModel);

  v16 = *(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12OptionsModel_store);

  return v0;
}

uint64_t sub_10001CEC0()
{
  sub_10001CC28();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OptionsModel()
{
  result = qword_100116880;
  if (!qword_100116880)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001CF6C()
{
  sub_10001D1A8(319, &qword_100116890);
  if (v1 <= 0x3F)
  {
    v14 = *(v0 - 8) + 64;
    sub_10001D1A8(319, &qword_100116898);
    if (v3 <= 0x3F)
    {
      v15 = *(v2 - 8) + 64;
      sub_10001D1A8(319, &qword_100118000);
      if (v5 <= 0x3F)
      {
        v16 = *(v4 - 8) + 64;
        sub_10001D1A8(319, &qword_100117460);
        if (v7 <= 0x3F)
        {
          v8 = *(v6 - 8) + 64;
          sub_10001D1A8(319, &qword_1001168A0);
          if (v10 <= 0x3F)
          {
            v11 = *(v9 - 8) + 64;
            sub_10001D1F4();
            if (v13 <= 0x3F)
            {
              v17 = *(v12 - 8) + 64;
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_10001D1A8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1000C60B4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_10001D1F4()
{
  if (!qword_1001168A8)
  {
    sub_100010624(&unk_100116FC0, &unk_1000CF2B0);
    v0 = sub_1000C60B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1001168A8);
    }
  }
}

uint64_t sub_10001D258@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  *a2 = v5;
  return result;
}

uint64_t sub_10001D2D8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000C60A4();
}

uint64_t sub_10001D354@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  *a2 = v5;
  return result;
}

uint64_t sub_10001D3D4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000C60A4();
}

char *sub_10001D490(uint64_t a1)
{
  v2 = v1;
  v86 = a1;
  v97 = *v1;
  v3 = sub_10000FEB8(&qword_100116998, &unk_1000CC910);
  v89 = *(v3 - 8);
  v90 = v3;
  v4 = *(v89 + 64);
  __chkstk_darwin(v3);
  v88 = v73 - v5;
  v6 = sub_10000FEB8(&qword_100117710, &qword_1000CEEB0);
  v92 = *(v6 - 8);
  v93 = v6;
  v7 = *(v92 + 64);
  __chkstk_darwin(v6);
  v91 = v73 - v8;
  v9 = sub_10000FEB8(&qword_1001169A0, &unk_1000CC920);
  v95 = *(v9 - 8);
  v96 = v9;
  v10 = *(v95 + 64);
  __chkstk_darwin(v9);
  v94 = v73 - v11;
  v12 = sub_10000FEB8(&unk_100117770, &unk_1000CEF10);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v87 = v73 - v14;
  v82 = sub_10000FEB8(&qword_100116EC0, &unk_1000CC930);
  v81 = *(v82 - 8);
  v15 = *(v81 + 64);
  __chkstk_darwin(v82);
  v80 = v73 - v16;
  v17 = sub_10000FEB8(&qword_1001169A8, &qword_1000D0AD0);
  v84 = *(v17 - 8);
  v85 = v17;
  v18 = *(v84 + 64);
  __chkstk_darwin(v17);
  v83 = v73 - v19;
  v79 = sub_10000FEB8(&unk_100117850, &qword_1000CC8C0);
  v78 = *(v79 - 8);
  v20 = *(v78 + 64);
  __chkstk_darwin(v79);
  v77 = v73 - v21;
  v98 = sub_10000FEB8(&qword_100116990, &unk_1000CF2A0);
  v76 = *(v98 - 1);
  v22 = *(v76 + 64);
  __chkstk_darwin(v98);
  v75 = v73 - v23;
  v74 = sub_10000FEB8(&qword_100117640, &unk_1000CC8B0);
  v24 = *(v74 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v74);
  v27 = v73 - v26;
  v28 = sub_10000FEB8(&unk_1001184A0, &qword_1000CC8A0);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = v73 - v31;
  v33 = sub_10000FEB8(&unk_100117800, &unk_1000D0B90);
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  __chkstk_darwin(v33);
  v37 = v73 - v36;
  v38 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12OptionsModel__readWritePermission;
  LOBYTE(v100) = 1;
  sub_1000C6054();
  (*(v34 + 32))(&v2[v38], v37, v33);
  v39 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12OptionsModel__sharingMode;
  LOBYTE(v100) = 0;
  sub_1000C6054();
  (*(v29 + 32))(&v2[v39], v32, v28);
  v40 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12OptionsModel__allowCoOwnersEditing;
  LOBYTE(v100) = 0;
  sub_1000C6054();
  v41 = *(v24 + 32);
  v42 = v74;
  v41(&v2[v40], v27, v74);
  v43 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12OptionsModel__newParticipantsCanBeCoOwners;
  v100 = &off_100106FF8;
  v44 = v75;
  sub_1000C6054();
  v76 = *(v76 + 32);
  (v76)(&v2[v43], v44, v98);
  v45 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12OptionsModel__participantsAreAlwaysCoOwners;
  LOBYTE(v100) = 0;
  sub_1000C6054();
  v41(&v2[v45], v27, v42);
  v46 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12OptionsModel__currentUserCanInvitePublisher;
  LOBYTE(v100) = 2;
  sub_10000FEB8(&unk_100116FC0, &unk_1000CF2B0);
  v47 = v77;
  sub_1000C6054();
  (*(v78 + 32))(&v2[v46], v47, v79);
  v48 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12OptionsModel__currentUserCanManageAccessRequestsPublisher;
  LOBYTE(v100) = 0;
  sub_1000C6054();
  v41(&v2[v48], v27, v42);
  v49 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12OptionsModel__anyoneCanRequestAccessPublisher;
  LOBYTE(v100) = 0;
  sub_1000C6054();
  v41(&v2[v49], v27, v42);
  v50 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12OptionsModel__coOwnerNewParticipantsCanBeCoOwners;
  v100 = &off_100107020;
  sub_1000C6054();
  (v76)(&v2[v50], v44, v98);
  v2[OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12OptionsModel_allowAccessRequestsSPIOverride] = 2;
  if (_swiftEmptyArrayStorage >> 62 && sub_1000C72F4())
  {
    v51 = sub_1000727E4(_swiftEmptyArrayStorage);
  }

  else
  {
    v51 = &_swiftEmptySetSingleton;
  }

  v79 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12OptionsModel_store;
  *&v2[OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12OptionsModel_store] = v51;
  v52 = v86;
  *&v2[OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12OptionsModel_ckShareModel] = v86;
  swift_beginAccess();
  v99 = 15;

  sub_1000C6054();
  swift_endAccess();
  swift_beginAccess();
  sub_10000FEB8(&unk_100118450, &qword_1000CC940);
  v53 = v80;
  sub_1000C6064();
  swift_endAccess();
  v98 = objc_opt_self();
  v54 = [v98 mainRunLoop];
  v100 = v54;
  v77 = sub_1000C71A4();
  v55 = *(v77 - 1);
  v76 = *(v55 + 56);
  v78 = v55 + 56;
  v56 = v87;
  (v76)(v87, 1, 1, v77);
  v75 = sub_100010778(0, &qword_100116F80, NSRunLoop_ptr);
  v73[1] = &protocol conformance descriptor for Published<A>.Publisher;
  sub_10001E490(&qword_100116F60, &qword_100116EC0, &unk_1000CC930);
  v74 = sub_10001E2AC();
  v58 = v82;
  v57 = v83;
  sub_1000C6104();
  sub_10001E314(v56);

  (*(v81 + 8))(v53, v58);
  v59 = swift_allocObject();
  swift_weakInit();
  v60 = swift_allocObject();
  *(v60 + 16) = v59;
  *(v60 + 24) = v52;
  sub_10001E490(&qword_1001169B0, &qword_1001169A8, &qword_1000D0AD0);

  v61 = v85;
  sub_1000C6124();

  (*(v84 + 8))(v57, v61);
  swift_beginAccess();
  sub_1000C6004();
  swift_endAccess();

  swift_beginAccess();
  sub_10000FEB8(&qword_100116988, &qword_1000CC8A8);
  v62 = v88;
  sub_1000C6064();
  swift_endAccess();
  sub_10001E490(&unk_1001178E0, &qword_100116998, &unk_1000CC910);
  sub_10001E3FC();
  v63 = v90;
  v64 = v91;
  sub_1000C6114();
  (*(v89 + 8))(v62, v63);
  v65 = [v98 mainRunLoop];
  v100 = v65;
  (v76)(v56, 1, 1, v77);
  sub_10001E490(&qword_1001178F0, &qword_100117710, &qword_1000CEEB0);
  v66 = v93;
  v67 = v94;
  sub_1000C6104();
  sub_10001E314(v56);

  (*(v92 + 8))(v64, v66);
  v68 = swift_allocObject();
  swift_weakInit();

  v69 = swift_allocObject();
  v70 = v97;
  *(v69 + 16) = v68;
  *(v69 + 24) = v70;
  sub_10001E490(&qword_1001169B8, &qword_1001169A0, &unk_1000CC920);
  v71 = v96;
  sub_1000C6124();

  (*(v95 + 8))(v67, v71);
  swift_beginAccess();
  sub_1000C6004();
  swift_endAccess();

  return v2;
}

unint64_t sub_10001E2AC()
{
  result = qword_100116F90;
  if (!qword_100116F90)
  {
    sub_100010778(255, &qword_100116F80, NSRunLoop_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116F90);
  }

  return result;
}

uint64_t sub_10001E314(uint64_t a1)
{
  v2 = sub_10000FEB8(&unk_100117770, &unk_1000CEF10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001E37C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001E3B4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10001E3F4(void **a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_10001C600(a1);
}

unint64_t sub_10001E3FC()
{
  result = qword_100118560;
  if (!qword_100118560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118560);
  }

  return result;
}

uint64_t sub_10001E450()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001E488(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_10001C9B0(a1);
}

uint64_t sub_10001E490(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100010624(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001E4F8(unsigned __int8 a1)
{
  if (a1 == 8)
  {
    return 0x6E776F6E6B6E752ELL;
  }

  if (a1 == 9)
  {
    return 0x6E656D75636F642ELL;
  }

  sub_1000C7244(19);

  v3 = 0xEC00000064656966;
  v4 = 0x69636570736E752ELL;
  v5 = 0xE600000000000000;
  v6 = 0x726568746F2ELL;
  if (a1 != 6)
  {
    v6 = 2037276974;
    v5 = 0xE400000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x6972616661732ELL;
  if (a1 != 4)
  {
    v8 = 0x726F66656572662ELL;
    v7 = 0xE90000000000006DLL;
  }

  if (a1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEC0000007265646CLL;
  v10 = 0x6F467365746F6E2ELL;
  if (a1 != 2)
  {
    v10 = 0x65646E696D65722ELL;
    v9 = 0xEA00000000007372;
  }

  if (a1)
  {
    v4 = 0x7365746F6E2ELL;
    v3 = 0xE600000000000000;
  }

  if (a1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  if (a1 <= 3u)
  {
    v11._countAndFlagsBits = v4;
  }

  else
  {
    v11._countAndFlagsBits = v6;
  }

  if (a1 <= 3u)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  v11._object = v12;
  sub_1000C6E04(v11);

  v13._countAndFlagsBits = 41;
  v13._object = 0xE100000000000000;
  sub_1000C6E04(v13);
  return 0xD000000000000010;
}

uint64_t sub_10001E6D0(uint64_t a1, uint64_t a2)
{
  v2[93] = a2;
  v2[87] = a1;
  v3 = sub_10000FEB8(&qword_1001167A0, &qword_1000CC520);
  v2[94] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[95] = swift_task_alloc();
  v2[96] = swift_task_alloc();
  v2[97] = swift_task_alloc();
  v2[98] = swift_task_alloc();

  return _swift_task_switch(sub_10001E798, 0, 0);
}

uint64_t sub_10001E798()
{
  v1 = *(v0 + 776);
  v2 = *(v0 + 752);
  v3 = *(v0 + 744);
  *(v0 + 816) = *(v2 + 48);
  *(v0 + 820) = *(v2 + 64);
  v4 = swift_task_alloc();
  *(v0 + 792) = v4;
  *(v4 + 16) = v3;
  swift_asyncLet_begin();
  v5 = *(v0 + 776);

  return _swift_asyncLet_get(v0 + 16, v5, sub_10001E85C, v0 + 656);
}

uint64_t sub_10001E878()
{
  v1 = *(v0 + 816);
  v2 = *(v0 + 784);
  v3 = *(v0 + 768);
  v4 = *(v0 + 752);
  sub_100017574(*(v0 + 776), v3, &qword_1001167A0, &qword_1000CC520);
  *(v0 + 800) = *v3;
  v5 = *(v4 + 48);
  *(v0 + 808) = *(v3 + *(v4 + 64));
  sub_100020D0C(v3 + v5, v2 + v1, &qword_100116260, &qword_1000CD940);
  v6 = *(v0 + 776);

  return _swift_asyncLet_finish(v0 + 16, v6, sub_10001E944, v0 + 704);
}

uint64_t sub_10001E960()
{
  v1 = *(v0 + 808);
  v2 = *(v0 + 800);
  v3 = *(v0 + 792);
  v4 = *(v0 + 820);
  v5 = *(v0 + 784);
  v6 = *(v0 + 760);
  v7 = *(v0 + 752);

  *v5 = v2;
  *(v5 + v4) = v1;
  sub_100017574(v5, v6, &qword_1001167A0, &qword_1000CC520);

  v8 = *(v6 + *(v7 + 64));
  sub_100010F24(v6 + *(v7 + 48), &qword_100116260, &qword_1000CD940);
  v9 = *(v0 + 784);
  v10 = *(v0 + 776);
  v11 = *(v0 + 768);
  v12 = *(v0 + 760);
  if (v8)
  {
    sub_1000100B0();
    swift_allocError();
    *v13 = 0xD000000000000010;
    *(v13 + 8) = 0x80000001000D7900;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0;
    *(v13 + 16) = v8;
    *(v13 + 40) = 5;
    swift_willThrow();
    sub_100010F24(v9, &qword_1001167A0, &qword_1000CC520);

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    v16 = *(v0 + 752);
    v20 = *(v0 + 696);
    sub_100017574(v9, v10, &qword_1001167A0, &qword_1000CC520);
    v21 = *v10;
    v17 = *(v16 + 48);

    sub_100020D0C(v9, v11, &qword_1001167A0, &qword_1000CC520);
    v18 = *(v16 + 48);

    sub_100020D0C(v11 + v18, v20, &qword_100116260, &qword_1000CD940);
    sub_100010F24(v10 + v17, &qword_100116260, &qword_1000CD940);

    v19 = *(v0 + 8);

    return v19(v21);
  }
}

uint64_t sub_10001EBFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  *(v6 + 976) = a6;
  *(v6 + 808) = a5;
  *(v6 + 800) = a4;
  *(v6 + 792) = a3;
  *(v6 + 784) = a2;
  *(v6 + 776) = a1;
  v7 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  *(v6 + 816) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v6 + 824) = swift_task_alloc();
  *(v6 + 832) = swift_task_alloc();
  *(v6 + 840) = swift_task_alloc();
  v9 = sub_1000C5F74();
  *(v6 + 848) = v9;
  v10 = *(v9 - 8);
  *(v6 + 856) = v10;
  v11 = *(v10 + 64) + 15;
  *(v6 + 864) = swift_task_alloc();
  *(v6 + 872) = swift_task_alloc();
  *(v6 + 880) = swift_task_alloc();
  *(v6 + 888) = swift_task_alloc();
  *(v6 + 896) = swift_task_alloc();

  return _swift_task_switch(sub_10001ED54, 0, 0);
}

uint64_t sub_10001ED54()
{
  v85 = v0;
  v1 = *(v0 + 784);
  v2 = sub_1000C6D44();
  v3 = NSSelectorFromString(v2);

  if ([v1 respondsToSelector:v3])
  {
    v4 = [*(v0 + 784) br_isCloudDocsShare];
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v0 + 896);
  v6 = *(v0 + 808);
  sub_1000C5F54();

  v7 = sub_1000C5F64();
  v8 = sub_1000C6FF4();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 896);
  v11 = *(v0 + 856);
  v12 = *(v0 + 848);
  if (v9)
  {
    v83 = v4;
    v13 = *(v0 + 801);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v84 = v15;
    *v14 = 136315394;
    v16 = sub_10001E4F8(v13);
    v18 = sub_100071844(v16, v17, &v84);
    LOBYTE(v4) = v83;

    *(v14 + 4) = v18;
    *(v14 + 12) = 1024;
    *(v14 + 14) = v83;
    _os_log_impl(&_mh_execute_header, v7, v8, "saveShare attr.sharingType: %s, isCloudDocsShare: %{BOOL}d", v14, 0x12u);
    sub_100010544(v15);
  }

  v19 = *(v11 + 8);
  v19(v10, v12);
  *(v0 + 904) = v19;
  if ((*(v0 + 800) & 0xFE00) == 0x800)
  {
    v20 = 1;
  }

  else
  {
    v20 = v4;
  }

  if (v20)
  {
    v21 = *(v0 + 872);
    v22 = *(v0 + 840);
    v23 = *(v0 + 784);
    v24 = (v0 + 776);
    v25 = *(v0 + 776);
    sub_1000C5F54();
    sub_100017574(v25, v22, &qword_100116260, &qword_1000CD940);
    v26 = v23;
    v27 = sub_1000C5F64();
    v28 = sub_1000C6FF4();
    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v0 + 872);
    v31 = *(v0 + 856);
    v32 = *(v0 + 848);
    v33 = *(v0 + 840);
    if (v29)
    {
      v34 = *(v0 + 832);
      v79 = *(v0 + 816);
      v35 = *(v0 + 784);
      v81 = *(v0 + 848);
      v36 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v84 = v78;
      *v36 = 136315650;
      sub_100017574(v33, v34, &qword_100116260, &qword_1000CD940);
      v37 = sub_1000C6D94();
      v39 = v38;
      sub_100010F24(v33, &qword_100116260, &qword_1000CD940);
      v40 = sub_100071844(v37, v39, &v84);
      v24 = (v0 + 776);

      *(v36 + 4) = v40;
      *(v36 + 12) = 2112;
      *(v36 + 14) = v35;
      *v77 = v35;
      *(v36 + 22) = 1024;
      *(v36 + 24) = [v35 allowsAccessRequests];

      _os_log_impl(&_mh_execute_header, v27, v28, "saveShare performing CloudDocs (fileURL) operation %s -- %@\n allowsAccessRequests: %{BOOL}d", v36, 0x1Cu);
      sub_100010F24(v77, &qword_100117080, &unk_1000CC350);

      sub_100010544(v78);

      v41 = v81;
      v42 = v30;
    }

    else
    {
      v74 = *(v0 + 784);

      sub_100010F24(v33, &qword_100116260, &qword_1000CD940);
      v42 = v30;
      v41 = v32;
    }

    v19(v42, v41);
    v75 = swift_task_alloc();
    *(v0 + 952) = v75;
    v75[1] = vextq_s8(*v24, *v24, 8uLL);
    sub_10000FEB8(&qword_100116780, &qword_1000CC4E8);
    swift_asyncLet_begin();

    return _swift_asyncLet_get(v0 + 16, v0 + 696, sub_10001F988, v0 + 656);
  }

  else
  {
    v43 = *(v0 + 888);
    v44 = *(v0 + 784);
    v45 = type metadata accessor for CloudKitOperations();
    v46 = *(v45 + 48);
    v47 = *(v45 + 52);
    v48 = swift_allocObject();
    *(v0 + 912) = v48;
    v48[2] = 0xD000000000000021;
    v48[3] = 0x80000001000D7770;
    v48[4] = 0xD000000000000016;
    v48[5] = 0x80000001000D77A0;
    v48[6] = 0xD00000000000001DLL;
    v48[7] = 0x80000001000D77C0;
    *(v0 + 712) = 0;
    *(v0 + 720) = 0;
    sub_10000FEB8(&qword_100116310, &qword_1000CBBC0);
    sub_1000C6054();
    sub_1000C5F54();
    v49 = v44;
    v50 = sub_1000C5F64();
    v51 = sub_1000C6FF4();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = *(v0 + 784);
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v53 = 138412290;
      *(v53 + 4) = v52;
      *v54 = v52;
      v55 = v52;
      _os_log_impl(&_mh_execute_header, v50, v51, "saveShare performing CloudKit operation %@", v53, 0xCu);
      sub_100010F24(v54, &qword_100117080, &unk_1000CC350);
    }

    v56 = *(v0 + 888);
    v57 = *(v0 + 856);
    v58 = *(v0 + 848);
    v59 = *(v0 + 792);

    *(v0 + 920) = (v57 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v60 = (v19)(v56, v58);
    if (v59)
    {
      v68 = *(v0 + 976);
      v69 = *(v0 + 800);
      v80 = *(v0 + 808);
      v82 = *(v0 + 792);
      v70 = *(v0 + 784);
      v71 = swift_task_alloc();
      *(v0 + 928) = v71;
      *(v71 + 16) = v48;
      *(v71 + 24) = v70;
      *(v71 + 32) = v69;
      *(v71 + 34) = BYTE2(v69);
      *(v71 + 35) = BYTE3(v69);
      *(v71 + 36) = BYTE4(v69);
      *(v71 + 37) = BYTE5(v69) & 1;
      *(v71 + 38) = BYTE6(v69) & 1;
      *(v71 + 40) = v80;
      *(v71 + 48) = v68 & 1;
      *(v71 + 49) = HIBYTE(v68) & 1;
      *(v71 + 56) = v82;
      v72 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
      v73 = swift_task_alloc();
      *(v0 + 936) = v73;
      v67 = sub_100020C20();
      *v73 = v0;
      v73[1] = sub_10001F510;
      v65 = sub_100020BC4;
      v60 = v0 + 728;
      v63 = 0xD000000000000029;
      v64 = 0x80000001000D78B0;
      v61 = 0;
      v62 = 0;
      v66 = v71;
    }

    else
    {
      __break(1u);
    }

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v60, v61, v62, v63, v64, v65, v66, v67);
  }
}

uint64_t sub_10001F510()
{
  v2 = *v1;
  v3 = *(*v1 + 936);
  v7 = *v1;
  *(*v1 + 944) = v0;

  if (v0)
  {
    v4 = sub_10001F80C;
  }

  else
  {
    v5 = *(v2 + 928);

    v4 = sub_10001F62C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10001F62C()
{
  v1 = *(v0 + 880);
  v2 = *(v0 + 784);
  v3 = *(v0 + 728);
  sub_1000C5F54();
  v4 = v2;
  v5 = sub_1000C5F64();
  v6 = sub_1000C6FF4();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 912);
  if (v7)
  {
    v9 = *(v0 + 784);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v9;
    *v11 = v9;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "saveShare completed CloudKit operation %@", v10, 0xCu);
    sub_100010F24(v11, &qword_100117080, &unk_1000CC350);
  }

  else
  {
    v13 = *(v0 + 912);
  }

  v14 = *(v0 + 920);
  (*(v0 + 904))(*(v0 + 880), *(v0 + 848));
  v15 = *(v0 + 896);
  v16 = *(v0 + 888);
  v17 = *(v0 + 880);
  v18 = *(v0 + 872);
  v19 = *(v0 + 864);
  v20 = *(v0 + 840);
  v21 = *(v0 + 832);
  v22 = *(v0 + 824);

  v23 = *(v0 + 8);

  return v23(v3);
}

uint64_t sub_10001F80C()
{
  v1 = v0[116];
  v2 = v0[114];

  swift_setDeallocating();
  v3 = *(v2 + 3);

  v4 = *(v2 + 5);

  v5 = *(v2 + 7);

  v6 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18CloudKitOperations__ckSourceAppBundleID;
  v7 = sub_10000FEB8(&unk_1001182C0, &qword_1000CF900);
  (*(*(v7 - 8) + 8))(&v2[v6], v7);
  v8 = *(*v2 + 48);
  v9 = *(*v2 + 52);
  swift_deallocClassInstance();
  v10 = v0[118];
  v11 = v0[112];
  v12 = v0[111];
  v13 = v0[110];
  v14 = v0[109];
  v15 = v0[108];
  v16 = v0[105];
  v17 = v0[104];
  v18 = v0[103];

  v19 = v0[1];

  return v19();
}

uint64_t sub_10001F988()
{
  v1 = v0[87];
  v0[120] = v1;
  v2 = v0[88];
  v0[121] = v2;
  v3 = v2;
  v4 = v1;

  return _swift_asyncLet_finish(v0 + 2, v0 + 87, sub_10001FA04, v0 + 92);
}

uint64_t sub_10001FA20()
{
  v53 = v0;
  v1 = v0[119];
  v2 = v0[108];
  v3 = v0[103];
  v4 = v0[98];
  v5 = v0[97];

  sub_1000C5F54();
  sub_100017574(v5, v3, &qword_100116260, &qword_1000CD940);
  v6 = v4;
  v7 = sub_1000C5F64();
  v8 = sub_1000C6FF4();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[113];
  v11 = v0[108];
  v12 = v0[106];
  if (v9)
  {
    v13 = v0[104];
    v14 = v0[103];
    v48 = v0[102];
    v51 = v0[107];
    v15 = v0[98];
    v50 = v0[113];
    v16 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v52 = v47;
    *v16 = 136315650;
    sub_100017574(v14, v13, &qword_100116260, &qword_1000CD940);
    v17 = sub_1000C6D94();
    v49 = v12;
    v19 = v18;
    sub_100010F24(v14, &qword_100116260, &qword_1000CD940);
    v20 = sub_100071844(v17, v19, &v52);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2112;
    *(v16 + 14) = v15;
    *v46 = v15;
    *(v16 + 22) = 1024;
    *(v16 + 24) = [v15 allowsAccessRequests];

    _os_log_impl(&_mh_execute_header, v7, v8, "saveShare completed CloudDocs (fileURL) operation %s\n %@\n allowsAccessRequests: %{BOOL}d", v16, 0x1Cu);
    sub_100010F24(v46, &qword_100117080, &unk_1000CC350);

    sub_100010544(v47);

    v50(v11, v49);
  }

  else
  {
    v21 = v0[103];
    v22 = v0[98];

    sub_100010F24(v21, &qword_100116260, &qword_1000CD940);
    v10(v11, v12);
  }

  v23 = v0[121];
  v24 = v0[120];
  if (v23)
  {
    sub_1000100B0();
    swift_allocError();
    *v25 = 0xD000000000000032;
    *(v25 + 8) = 0x80000001000D7840;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0;
    *(v25 + 16) = v23;
    *(v25 + 40) = 4;
    swift_willThrow();

LABEL_6:
    v26 = v0[112];
    v27 = v0[111];
    v28 = v0[110];
    v29 = v0[109];
    v30 = v0[108];
    v31 = v0[105];
    v32 = v0[104];
    v33 = v0[103];

    v34 = v0[1];

    return v34();
  }

  if (!v24)
  {
    sub_1000100B0();
    swift_allocError();
    *v45 = 0xD000000000000032;
    *(v45 + 8) = 0x80000001000D7840;
    *(v45 + 16) = xmmword_1000CCA40;
    *(v45 + 32) = 0x80000001000D7880;
    *(v45 + 40) = 11;
    swift_willThrow();
    goto LABEL_6;
  }

  v36 = v0[112];
  v37 = v0[111];
  v38 = v0[110];
  v39 = v0[109];
  v40 = v0[108];
  v41 = v0[105];
  v42 = v0[104];
  v43 = v0[103];

  v44 = v0[1];

  return v44(v24);
}

uint64_t sub_10001FEC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v5 = sub_1000C5F74();
  v4[8] = v5;
  v6 = *(v5 - 8);
  v4[9] = v6;
  v7 = *(v6 + 64) + 15;
  v4[10] = swift_task_alloc();
  v8 = *(*(sub_10000FEB8(&qword_100116260, &qword_1000CD940) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v9 = sub_1000C5D84();
  v4[12] = v9;
  v10 = *(v9 - 8);
  v4[13] = v10;
  v11 = *(v10 + 64) + 15;
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_10002001C, 0, 0);
}

uint64_t sub_10002001C()
{
  if ((*(v0 + 56) & 0xFE00) != 0x800)
  {
    v10 = *(v0 + 48);
    v11 = type metadata accessor for CloudKitOperations();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    v14 = swift_allocObject();
    *(v0 + 16) = 0;
    *(v0 + 120) = v14;
    v14[2] = 0xD000000000000021;
    v14[3] = 0x80000001000D7770;
    v14[4] = 0xD000000000000016;
    v14[5] = 0x80000001000D77A0;
    v14[6] = 0xD00000000000001DLL;
    v14[7] = 0x80000001000D77C0;
    *(v0 + 24) = 0;
    sub_10000FEB8(&qword_100116310, &qword_1000CBBC0);
    v15 = sub_1000C6054();
    if (!v10)
    {
      __break(1u);
      return withCheckedThrowingContinuation<A>(isolation:function:_:)(v15, v16, v17, v18, v19, v20, v21, v22);
    }

    v23 = *(v0 + 61);
    v25 = *(v0 + 40);
    v24 = *(v0 + 48);
    v26 = swift_task_alloc();
    *(v0 + 128) = v26;
    *(v26 + 16) = v14;
    *(v26 + 24) = v25;
    *(v26 + 32) = v23 & 1;
    *(v26 + 40) = v24;
    v27 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v28 = swift_task_alloc();
    *(v0 + 136) = v28;
    *v28 = v0;
    v28[1] = sub_1000203C0;
    v22 = &type metadata for Bool;
    v20 = sub_100020B08;
    v15 = (v0 + 176);
    v18 = 0xD000000000000030;
    v19 = 0x80000001000D77E0;
LABEL_9:
    v16 = 0;
    v17 = 0;
    v21 = v26;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v15, v16, v17, v18, v19, v20, v21, v22);
  }

  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  sub_100017574(*(v0 + 32), v3, &qword_100116260, &qword_1000CD940);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v29 = *(v0 + 112);
    v30 = *(v0 + 40);
    (*(*(v0 + 104) + 32))(v29, *(v0 + 88), *(v0 + 96));
    v26 = swift_task_alloc();
    *(v0 + 152) = v26;
    *(v26 + 16) = v29;
    *(v26 + 24) = v30;
    v31 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v15 = swift_task_alloc();
    *(v0 + 160) = v15;
    *v15 = v0;
    v15[1] = sub_100020720;
    v20 = sub_100020B00;
    v18 = 0xD00000000000001ELL;
    v19 = 0x80000001000D7750;
    v22 = &type metadata for () + 8;
    goto LABEL_9;
  }

  sub_100010F24(*(v0 + 88), &qword_100116260, &qword_1000CD940);
  sub_1000100B0();
  swift_allocError();
  *v4 = 0xD000000000000034;
  *(v4 + 8) = 0x80000001000D76E0;
  *(v4 + 16) = xmmword_1000CCA50;
  *(v4 + 32) = 0x80000001000D7720;
  *(v4 + 40) = 11;
  swift_willThrow();
  v5 = *(v0 + 112);
  v7 = *(v0 + 80);
  v6 = *(v0 + 88);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1000203C0()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v7 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_1000205F8;
  }

  else
  {
    v5 = *(v2 + 128);

    v4 = sub_1000204DC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000204DC()
{
  v1 = v0[15];
  swift_setDeallocating();
  v2 = *(v1 + 3);

  v3 = *(v1 + 5);

  v4 = *(v1 + 7);

  v5 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18CloudKitOperations__ckSourceAppBundleID;
  v6 = sub_10000FEB8(&unk_1001182C0, &qword_1000CF900);
  (*(*(v6 - 8) + 8))(&v1[v5], v6);
  v7 = *(*v1 + 48);
  v8 = *(*v1 + 52);
  swift_deallocClassInstance();
  v9 = v0[14];
  v10 = v0[10];
  v11 = v0[11];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000205F8()
{
  v2 = v0[15];
  v1 = v0[16];

  swift_setDeallocating();
  v3 = *(v2 + 3);

  v4 = *(v2 + 5);

  v5 = *(v2 + 7);

  v6 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18CloudKitOperations__ckSourceAppBundleID;
  v7 = sub_10000FEB8(&unk_1001182C0, &qword_1000CF900);
  (*(*(v7 - 8) + 8))(&v2[v6], v7);
  v8 = *(*v2 + 48);
  v9 = *(*v2 + 52);
  swift_deallocClassInstance();
  v10 = v0[18];
  v11 = v0[14];
  v13 = v0[10];
  v12 = v0[11];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100020720()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v7 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = sub_1000208CC;
  }

  else
  {
    v5 = *(v2 + 152);

    v4 = sub_10002083C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10002083C()
{
  (*(v0[13] + 8))(v0[14], v0[12]);
  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[11];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000208CC()
{
  v1 = v0[21];
  v2 = v0[19];
  v3 = v0[10];

  sub_1000C5F54();
  swift_errorRetain();
  v4 = sub_1000C5F64();
  v5 = sub_1000C6FD4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[21];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "stopSharing failed with error: %@", v7, 0xCu);
    sub_100010F24(v8, &qword_100117080, &unk_1000CC350);
  }

  v10 = v0[21];
  v12 = v0[13];
  v11 = v0[14];
  v13 = v0[12];
  v15 = v0[9];
  v14 = v0[10];
  v16 = v0[8];

  (*(v15 + 8))(v14, v16);
  v17 = sub_1000C5CD4();
  sub_1000100B0();
  swift_allocError();
  *v18 = 0xD000000000000034;
  *(v18 + 8) = 0x80000001000D76E0;
  *(v18 + 24) = 0;
  *(v18 + 32) = 0;
  *(v18 + 16) = v17;
  *(v18 + 40) = 8;
  swift_willThrow();

  (*(v12 + 8))(v11, v13);
  v19 = v0[14];
  v20 = v0[10];
  v21 = v0[11];

  v22 = v0[1];

  return v22();
}

uint64_t sub_100020B18(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100011080;

  return sub_100011940(a1, v5, v4);
}

void sub_100020BC4(uint64_t a1)
{
  v2 = 0x10000000000;
  if (!*(v1 + 37))
  {
    v2 = 0;
  }

  v3 = 0x1000000000000;
  if (!*(v1 + 38))
  {
    v3 = 0;
  }

  v4 = *(v1 + 32) | (*(v1 + 36) << 32) | v2;
  if (*(v1 + 49))
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  sub_1000498A0(a1, *(v1 + 16), *(v1 + 24), v4 | v3, *(v1 + 40), v5 | *(v1 + 48), *(v1 + 56));
}

unint64_t sub_100020C20()
{
  result = qword_100116320;
  if (!qword_100116320)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100116320);
  }

  return result;
}

uint64_t sub_100020C6C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100017CBC;

  return sub_100011BAC(a1, v4);
}

uint64_t sub_100020D0C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000FEB8(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100020D74@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000C65A4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000FEB8(&qword_100116AF8, &qword_1000D6470);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v16 - v11);
  sub_100017574(v2, &v16 - v11, &qword_100116AF8, &qword_1000D6470);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1000229C4(v12, a1);
  }

  v14 = *v12;
  sub_1000C6FE4();
  v15 = sub_1000C6764();
  sub_1000C5F44();

  sub_1000C6594();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_100021164(void *a1, uint64_t a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[2] = a1;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  if (a2)
  {
    a2 = sub_1000C6D84();
    v11 = v10;
    v5[5] = v10;
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v11 = 0;
  v5[5] = 0;
  if (a3)
  {
LABEL_3:
    a3 = sub_1000C6E94();
  }

LABEL_4:
  v5[6] = a3;
  a5;
  v12 = a1;
  v13 = swift_task_alloc();
  v5[7] = v13;
  *v13 = v5;
  v13[1] = sub_10002129C;

  return (sub_1000222CC)(a2, v11, a3);
}

uint64_t sub_10002129C(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 32);
  v8 = *(*v1 + 24);
  v9 = *(*v1 + 16);
  v10 = *v1;

  if (v7)
  {
    v11 = *(v3 + 32);
    v11[2](v11, a1 & 1);
    _Block_release(v11);
  }

  v12 = *(v10 + 8);

  return v12();
}

id sub_100021480()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ComposeMailView.Coordinator(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100021594()
{
  sub_100021638();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100021638()
{
  if (!qword_100116A08)
  {
    sub_1000C63D4();
    v0 = sub_1000C6BE4();
    if (!v1)
    {
      atomic_store(v0, &qword_100116A08);
    }
  }
}

__n128 sub_100021690(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}