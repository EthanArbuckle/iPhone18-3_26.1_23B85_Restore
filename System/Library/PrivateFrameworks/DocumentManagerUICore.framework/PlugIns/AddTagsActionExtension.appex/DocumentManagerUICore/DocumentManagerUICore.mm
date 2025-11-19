uint64_t sub_100001608(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v10 = (*(*(sub_1000032BC(&qword_10000C608, &qword_1000048B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v12 = &v29 - v11;
  v13 = sub_100004108();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(a1);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v16)
  {
    aBlock = v16;
    swift_unknownObjectRetain();
    sub_1000032BC(&qword_10000C678, &qword_1000048C8);
    v19 = swift_dynamicCast();
    (*(v14 + 56))(v12, v19 ^ 1u, 1, v13);
    if ((*(v14 + 48))(v12, 1, v13) != 1)
    {
      (*(v14 + 32))(v18, v12, v13);
      v20 = [objc_opt_self() defaultManager];
      sub_1000040F8(v21);
      v23 = v22;
      v24 = swift_allocObject();
      v24[2] = a3;
      v24[3] = a4;
      v24[4] = a5;
      v34 = sub_100003F50;
      v35 = v24;
      aBlock = _NSConcreteStackBlock;
      v31 = 1107296256;
      v32 = sub_100001B98;
      v33 = &unk_1000085E0;
      v25 = _Block_copy(&aBlock);
      v26 = a3;
      v27 = a4;

      [v20 fetchItemForURL:v23 completionHandler:v25];
      _Block_release(v25);

      return (*(v14 + 8))(v18, v13);
    }
  }

  else
  {
    (*(v14 + 56))(v12, 1, 1, v13);
  }

  sub_100003EA8(v12, &qword_10000C608, &qword_1000048B0);
  aBlock = 0;
  v31 = 0xE000000000000000;
  sub_1000042A8(52);
  v37._object = 0x8000000100004BC0;
  v37._countAndFlagsBits = 0xD000000000000031;
  sub_1000041C8(v37);
  v36 = a2;
  swift_errorRetain();
  sub_1000032BC(&qword_10000C610, &unk_1000048B8);
  v38._countAndFlagsBits = sub_1000041B8();
  sub_1000041C8(v38);

  v39._countAndFlagsBits = 46;
  v39._object = 0xE100000000000000;
  sub_1000041C8(v39);
  result = sub_100004318();
  __break(1u);
  return result;
}

void sub_1000019CC(void *a1, uint64_t a2, NSObject *a3, void *a4, uint64_t a5)
{
  if (a1)
  {
    v8 = a1;
    [a4 lock];
    swift_beginAccess();
    v9 = v8;
    sub_1000041D8();
    if (*((*(a5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v14 = *((*(a5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_100004208();
    }

    sub_100004218();
    swift_endAccess();
    [a4 unlock];
  }

  else
  {
    sub_100004228();
    sub_1000032BC(&qword_10000C5D0, &qword_1000048A0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1000047E0;
    swift_errorRetain();
    sub_1000032BC(&qword_10000C610, &unk_1000048B8);
    v11 = sub_1000041B8();
    v13 = v12;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_100003F5C();
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    sub_100004058(0, &qword_10000C5D8, OS_os_log_ptr);
    v9 = sub_100004278();
    sub_100004158();
  }

  dispatch_group_leave(a3);
}

void sub_100001B98(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_100001C24(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  swift_unknownObjectRetain();
  v7 = a3;
  v6(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_100001CA4(void (*a1)(uint64_t, void), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);

  a1(v6, 0);
}

uint64_t sub_100001D10(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100001DD0()
{
  v1 = v0;
  v17.receiver = v0;
  v17.super_class = type metadata accessor for AddTagsRootViewController();
  objc_msgSendSuper2(&v17, "viewDidLoad");
  sub_1000032BC(&qword_10000C5C0, &qword_100004898);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000047F0;
  v3 = *&v0[OBJC_IVAR____TtC22AddTagsActionExtension25AddTagsRootViewController_addTagsViewController];
  *(v2 + 32) = v3;
  sub_100004058(0, &qword_10000C5C8, UIViewController_ptr);
  v4 = v3;
  isa = sub_1000041E8().super.isa;

  [v0 setViewControllers:isa animated:0];

  v6 = [v0 extensionContext];
  if (v6 && (v7 = v6, v8 = [v6 inputItems], v7, v9 = sub_1000041F8(), v8, v10 = sub_100002080(v9), , v10))
  {
    sub_1000032BC(&qword_10000C5D0, &qword_1000048A0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1000047E0;
    if (v10 >> 62)
    {
      v12 = sub_100004328();
    }

    else
    {
      v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v11 + 56) = &type metadata for Int;
    *(v11 + 64) = &protocol witness table for Int;
    *(v11 + 32) = v12;
    sub_100004058(0, &qword_10000C5D8, OS_os_log_ptr);
    v13 = sub_100004278();
    sub_100004238();
    sub_100004148();

    v14 = swift_allocObject();
    *(v14 + 16) = v1;
    v15 = v1;
    sub_100003478(v10, sub_10000333C, v14);
  }

  else
  {
    result = sub_100004318();
    __break(1u);
  }

  return result;
}

void *sub_100002080(uint64_t a1)
{
  v7 = &_swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  sub_1000042E8();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_100003FFC(i, v6);
    sub_100004058(0, &unk_10000C6A0, NSExtensionItem_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_1000042C8();
    v4 = v7[2];
    sub_1000042F8();
    sub_100004308();
    sub_1000042D8();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

uint64_t sub_10000218C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_100004168();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100004188();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_100004058(0, &qword_10000C5E8, OS_dispatch_queue_ptr);

    v16 = sub_100004258();
    v17 = swift_allocObject();
    *(v17 + 16) = a1;
    *(v17 + 24) = a3;
    v26 = sub_100003FF4;
    v27 = v17;
    aBlock = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_100001D10;
    v25 = &unk_100008630;
    v18 = _Block_copy(&aBlock);
    v19 = a3;

    sub_100004178();
    aBlock = &_swiftEmptyArrayStorage;
    sub_100003D94();
    sub_1000032BC(&qword_10000C5F8, &qword_1000048A8);
    sub_100003DEC();
    sub_100004298();
    sub_100004268();
    _Block_release(v18);

    (*(v7 + 8))(v10, v6);
    return (*(v12 + 8))(v15, v11);
  }

  else
  {
    aBlock = 0;
    v23 = 0xE000000000000000;
    sub_1000042A8(74);
    v29._object = 0x8000000100004C50;
    v29._countAndFlagsBits = 0xD000000000000048;
    sub_1000041C8(v29);
    v28 = a2;
    swift_errorRetain();
    sub_1000032BC(&qword_10000C610, &unk_1000048B8);
    v30._countAndFlagsBits = sub_1000041B8();
    sub_1000041C8(v30);

    result = sub_100004318();
    __break(1u);
  }

  return result;
}

void sub_1000024E8(unint64_t a1, uint64_t a2)
{
  sub_1000032BC(&qword_10000C5D0, &qword_1000048A0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000047E0;
  if (a1 >> 62)
  {
    v5 = sub_100004328();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v4 + 56) = &type metadata for Int;
  *(v4 + 64) = &protocol witness table for Int;
  *(v4 + 32) = v5;
  sub_100004058(0, &qword_10000C5D8, OS_os_log_ptr);
  v6 = sub_100004278();
  sub_100004238();
  sub_100004148();

  if (v5 < 1)
  {
    sub_100004228();
    v8 = sub_100004278();
    sub_100004158();

    v9 = *(a2 + OBJC_IVAR____TtC22AddTagsActionExtension25AddTagsRootViewController_addTagsViewController);

    [v9 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    v7 = *(a2 + OBJC_IVAR____TtC22AddTagsActionExtension25AddTagsRootViewController_addTagsViewController);
    sub_100004058(0, &qword_10000C698, FPItem_ptr);
    isa = sub_1000041E8().super.isa;
    [v7 setItems:isa];
  }
}

id sub_10000287C(uint64_t ObjCClassFromMetadata, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC22AddTagsActionExtension25AddTagsRootViewController_actionExtensionController;
  *&v2[v5] = [objc_allocWithZone(type metadata accessor for AddTagsActionExtensionController()) init];
  v6 = OBJC_IVAR____TtC22AddTagsActionExtension25AddTagsRootViewController_addTagsViewController;
  type metadata accessor for AddTagsActionViewController();
  *&v2[v6] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (ObjCClassFromMetadata)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  if (a2)
  {
    a2 = swift_getObjCClassFromMetadata();
  }

  v8.receiver = v2;
  v8.super_class = type metadata accessor for AddTagsRootViewController();
  return objc_msgSendSuper2(&v8, "initWithNavigationBarClass:toolbarClass:", ObjCClassFromMetadata, a2);
}

id sub_100002A50(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = OBJC_IVAR____TtC22AddTagsActionExtension25AddTagsRootViewController_actionExtensionController;
  *&v3[v6] = [objc_allocWithZone(type metadata accessor for AddTagsActionExtensionController()) init];
  v7 = OBJC_IVAR____TtC22AddTagsActionExtension25AddTagsRootViewController_addTagsViewController;
  type metadata accessor for AddTagsActionViewController();
  *&v3[v7] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (a2)
  {
    v8 = sub_100004198();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = type metadata accessor for AddTagsRootViewController();
  v9 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v8, a3);

  return v9;
}

id sub_100002B84(void *a1)
{
  v3 = OBJC_IVAR____TtC22AddTagsActionExtension25AddTagsRootViewController_actionExtensionController;
  *&v1[v3] = [objc_allocWithZone(type metadata accessor for AddTagsActionExtensionController()) init];
  v4 = OBJC_IVAR____TtC22AddTagsActionExtension25AddTagsRootViewController_addTagsViewController;
  type metadata accessor for AddTagsActionViewController();
  *&v1[v4] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7.receiver = v1;
  v7.super_class = type metadata accessor for AddTagsRootViewController();
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

void sub_100002D1C(char a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for AddTagsActionViewController();
  objc_msgSendSuper2(&v9, "viewWillAppear:", a1 & 1);
  v3 = [v1 parentViewController];
  if (v3)
  {
    v4 = v3;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = [v5 view];
      if (v6)
      {
        v7 = v6;
        v8 = [objc_opt_self() systemBackgroundColor];
        [v7 setBackgroundColor:v8];

        return;
      }

      __break(1u);
    }
  }

  sub_100004318();
  __break(1u);
}

void sub_100002EAC(char a1, void *a2, uint64_t a3)
{
  v7 = [v3 extensionContext];
  if (v7)
  {
    v8 = v7;
    [v7 completeRequestReturningItems:0 completionHandler:0];

    if (a2)
    {
      v10[4] = a2;
      v10[5] = a3;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 1107296256;
      v10[2] = sub_100001D10;
      v10[3] = &unk_1000084A0;
      a2 = _Block_copy(v10);
    }

    v9 = type metadata accessor for AddTagsActionViewController();
    v11.receiver = v3;
    v11.super_class = v9;
    objc_msgSendSuper2(&v11, "dismissViewControllerAnimated:completion:", a1 & 1, a2);
    _Block_release(a2);
  }

  else
  {
    __break(1u);
  }
}

id sub_1000031F0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10000324C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000325C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000032A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000032BC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100003304()
{

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_100003344(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000032BC(&qword_10000C688, &qword_1000048D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000032BC(&qword_10000C690, qword_1000048D8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_100003478(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v57 = a3;
  v56 = a2;
  v63 = sub_100004168();
  v62 = *(v63 - 8);
  v4 = *(v62 + 64);
  __chkstk_darwin(v63);
  v60 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_100004188();
  v59 = *(v61 - 8);
  v6 = *(v59 + 64);
  __chkstk_darwin(v61);
  v58 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004138();
  v77 = *(v8 - 8);
  v9 = *(v77 + 64);
  __chkstk_darwin(v8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = swift_allocObject();
  *(v71 + 16) = &_swiftEmptyArrayStorage;
  v70 = dispatch_group_create();
  v69 = [objc_allocWithZone(NSLock) init];
  if (!(a1 >> 62))
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v72 = v8;
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_22:
    v66 = &_swiftEmptyArrayStorage;
    goto LABEL_23;
  }

LABEL_21:
  v12 = sub_100004328();
  v72 = v8;
  if (!v12)
  {
    goto LABEL_22;
  }

LABEL_3:
  v13 = 0;
  v66 = &_swiftEmptyArrayStorage;
  do
  {
    v14 = v13;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v15 = sub_1000042B8();
      }

      else
      {
        if (v14 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v15 = *(a1 + 8 * v14 + 32);
      }

      v16 = v15;
      v13 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v17 = [v15 attachments];
      if (v17)
      {
        break;
      }

      ++v14;
      if (v13 == v12)
      {
        goto LABEL_23;
      }
    }

    v18 = v17;
    sub_100004058(0, &qword_10000C5E0, NSItemProvider_ptr);
    v19 = sub_1000041F8();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v66 = sub_100003344(0, v66[2] + 1, 1, v66);
    }

    v8 = v66[2];
    v20 = v66[3];
    if (v8 >= v20 >> 1)
    {
      v66 = sub_100003344((v20 > 1), v8 + 1, 1, v66);
    }

    v21 = v66;
    v66[2] = v8 + 1;
    v21[v8 + 4] = v19;
  }

  while (v13 != v12);
LABEL_23:
  v22 = (v77 + 8);
  v67 = 0;
  v68 = &v81;
  v65 = v66 + 4;
  v23 = &AddTagsActionExtensionController;
  v24 = v72;
  while (1)
  {
LABEL_41:
    v45 = v66[2];
    if (v67 == v45)
    {

      sub_100004058(0, &qword_10000C5E8, OS_dispatch_queue_ptr);
      v48 = sub_100004258();
      v49 = swift_allocObject();
      v50 = v57;
      v49[2] = v56;
      v49[3] = v50;
      v49[4] = v71;
      v83 = sub_100003D88;
      v84 = v49;
      aBlock = _NSConcreteStackBlock;
      v80 = 1107296256;
      v81 = sub_100001D10;
      v82 = &unk_100008540;
      v51 = _Block_copy(&aBlock);

      v52 = v58;
      sub_100004178();
      v78 = &_swiftEmptyArrayStorage;
      sub_100003D94();
      sub_1000032BC(&qword_10000C5F8, &qword_1000048A8);
      sub_100003DEC();
      v53 = v60;
      v54 = v63;
      sub_100004298();
      v55 = v70;
      sub_100004248();
      _Block_release(v51);

      (*(v62 + 8))(v53, v54);
      (*(v59 + 8))(v52, v61);

      return;
    }

    if (v67 >= v45)
    {
      break;
    }

    v46 = v67 + 1;
    v47 = v65[v67];

    v42 = v47;
    v67 = v46;
    if (v47)
    {
      v25 = 0;
      v26 = v42 & 0xFFFFFFFFFFFFFF8;
      if (v42 >= 0)
      {
        v27 = v42 & 0xFFFFFFFFFFFFFF8;
      }

      else
      {
        v27 = v42;
      }

      v64 = v27;
      v76 = v42 & 0xC000000000000001;
      v77 = v42 >> 62;
      v73 = v42;
      for (i = v42 & 0xFFFFFFFFFFFFFF8; ; v26 = i)
      {
        if (v77)
        {
          if (v25 == sub_100004328())
          {
            goto LABEL_41;
          }
        }

        else if (v25 == *(v26 + 16))
        {
          goto LABEL_41;
        }

        if (v76)
        {
          v29 = sub_1000042B8();
        }

        else
        {
          if (v25 >= *(v26 + 16))
          {
            goto LABEL_47;
          }

          v29 = *(v42 + 8 * v25 + 32);
        }

        v30 = v29;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        sub_100004128();
        sub_100004118();
        v31 = *v22;
        (*v22)(v11, v24);
        v32 = sub_100004198();

        v33 = [v30 v23[9].name];

        if (v33)
        {
          v34 = v70;
          dispatch_group_enter(v70);
          sub_100004128();
          sub_100004118();
          v31(v11, v24);
          v74 = sub_100004198();

          v35 = swift_allocObject();
          v36 = v23;
          v37 = v11;
          v38 = v22;
          v39 = v69;
          v35[2] = v34;
          v35[3] = v39;
          v35[4] = v71;
          v83 = sub_100003E9C;
          v84 = v35;
          aBlock = _NSConcreteStackBlock;
          v80 = 1107296256;
          v81 = sub_100001C24;
          v82 = &unk_100008590;
          v40 = _Block_copy(&aBlock);
          v41 = v34;
          v42 = v73;
          v43 = v39;
          v22 = v38;
          v11 = v37;
          v23 = v36;
          v24 = v72;

          v44 = v74;
          [v30 loadItemForTypeIdentifier:v74 options:0 completionHandler:v40];

          _Block_release(v40);
          v30 = v44;
        }

        else
        {
          sub_100004058(0, &qword_10000C5D8, OS_os_log_ptr);
          v28 = sub_100004278();
          sub_100004238();
          sub_100004148();
        }

        ++v25;
      }

      __break(1u);
LABEL_47:
      __break(1u);
      break;
    }
  }

  __break(1u);
}

uint64_t sub_100003D10()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100003D48()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_100003D94()
{
  result = qword_10000C5F0;
  if (!qword_10000C5F0)
  {
    sub_100004168();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C5F0);
  }

  return result;
}

unint64_t sub_100003DEC()
{
  result = qword_10000C600;
  if (!qword_10000C600)
  {
    sub_100003E50(&qword_10000C5F8, &qword_1000048A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C600);
  }

  return result;
}

uint64_t sub_100003E50(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100003EA8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000032BC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100003F08()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_100003F5C()
{
  result = qword_10000C680;
  if (!qword_10000C680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C680);
  }

  return result;
}

uint64_t sub_100003FB4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100003FFC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100004058(uint64_t a1, unint64_t *a2, uint64_t *a3)
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