uint64_t sub_100017F04()
{
  v1 = *(*(v0 + 112) + 120);
  *(v0 + 176) = v1;

  return _swift_task_switch(sub_100017F7C, v1, 0);
}

uint64_t sub_100017F7C()
{
  v1 = *(v0[22] + OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_devices);

  v0[23] = sub_100074618(v2);

  v3 = v0[17];
  v4 = v0[18];

  return _swift_task_switch(sub_10001800C, v3, v4);
}

uint64_t sub_10001800C()
{
  v1 = v0[16];
  v2 = v0[13];

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v3 = v0[15];
    v4 = sub_100018470(v0[23]);

    v5 = sub_100082E2C(v4);

    v6 = swift_task_alloc();
    v7 = type metadata accessor for NetworkManager();
    *v6 = v7;
    v8 = sub_100023834(&qword_1000AE5A0, type metadata accessor for NetworkManager);
    v6[1] = v8;
    swift_getKeyPath();

    v9 = swift_task_alloc();
    *v9 = v7;
    v9[1] = v8;
    swift_getKeyPath();

    v0[12] = v5;

    sub_1000867EC();
    sub_100006454(&qword_1000AE578, &qword_1000AE570, &qword_100089D58);
    sub_10008676C();
    sub_10008679C();

    sub_100018804();
  }

  else
  {
    v10 = v0[23];
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_100018214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000877DC(18);

  sub_100001EEC(&qword_1000AE5D0, &qword_100089EB0);
  v9._countAndFlagsBits = sub_1000872DC();
  sub_1000871BC(v9);

  sub_100059920(0xD000000000000010, 0x800000010008ECC0, a3, &off_1000A7690);

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = sub_100018470(a1);
    sub_100082E2C(v6);

    __chkstk_darwin(v7);
    type metadata accessor for NetworkManager();
    sub_100023834(&qword_1000AE5A0, type metadata accessor for NetworkManager);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    swift_getKeyPath();

    sub_1000867EC();
    sub_100006454(&qword_1000AE578, &qword_1000AE570, &qword_100089D58);
    sub_10008676C();
    sub_10008679C();

    sub_100018804();
  }

  return result;
}

uint64_t sub_100018470(uint64_t a1)
{
  v3 = sub_100001EEC(&qword_1000AE5D0, &qword_100089EB0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v7 = &v34 - v6;
  result = sub_1000189F4(a1);
  v35 = result;
  v10 = v9;
  v11 = _swiftEmptyArrayStorage;
  v38 = v1;
  v39 = _swiftEmptyArrayStorage;
  v12 = *(v9 + 16);
  v37 = *(*v1 + 160);
  if (v12)
  {
    v13 = 0;
    v36 = xmmword_100089AB0;
    while (v13 < *(v10 + 16))
    {
      v14 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      sub_10000E4A4(v10 + v14 + *(v4 + 72) * v13, v7, &qword_1000AE5D0, &qword_100089EB0);
      sub_100001EEC(&qword_1000AE628, &qword_10008A0C0);
      v15 = swift_allocObject();
      *(v15 + 16) = v36;
      sub_10000E4A4(v7, v15 + v14, &qword_1000AE5D0, &qword_100089EB0);
      v16 = *(v38 + v37);
      v17 = sub_100001EEC(&qword_1000AE5B8, &unk_10008DD20);
      v18 = *(v17 + 48);
      v19 = *(v17 + 52);
      swift_allocObject();

      sub_10002024C(v15, v16);

      sub_10000649C(v7, &qword_1000AE5D0, &qword_100089EB0);
      sub_1000872AC();
      if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10008730C();
      }

      ++v13;
      result = sub_10008735C();
      if (v12 == v13)
      {
        v11 = v39;
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:

    v20 = 0;
    v39 = v11;
    v22 = v35 + 64;
    v21 = *(v35 + 64);
    v23 = 1 << *(v35 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & v21;
    v26 = (v23 + 63) >> 6;
    if ((v24 & v21) != 0)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v27 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v27 >= v26)
      {

        return v11;
      }

      v25 = *(v22 + 8 * v27);
      ++v20;
      if (v25)
      {
        v20 = v27;
        do
        {
LABEL_15:
          v28 = *(*(v35 + 56) + ((v20 << 9) | (8 * __clz(__rbit64(v25)))));
          v29 = *(v38 + v37);
          v30 = sub_100001EEC(&qword_1000AE5B8, &unk_10008DD20);
          v31 = *(v30 + 48);
          v32 = *(v30 + 52);
          swift_allocObject();

          sub_10002024C(v28, v29);

          sub_1000872AC();
          if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v33 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_10008730C();
          }

          v25 &= v25 - 1;
          result = sub_10008735C();
          v11 = v39;
        }

        while (v25);
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100018804()
{
  sub_1000166D0(0xD000000000000019, 0x800000010008E840, &qword_1000AE570, &qword_100089D58, &qword_1000AE5C8, &qword_100089E70);
  type metadata accessor for NetworkManager();
  sub_100023834(&qword_1000AE5A0, type metadata accessor for NetworkManager);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000867DC();

  v0 = sub_10001FBA0(v2);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000867DC();

  sub_1000226F0(v2, v0);

  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000867EC();
  return sub_100016F64();
}

uint64_t *sub_1000189F4(uint64_t a1)
{
  v2 = sub_100001EEC(&qword_1000AE630, &qword_10008A0C8);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v85 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v80 - v6;
  v89 = sub_10008614C();
  v8 = *(v89 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v89);
  v11 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100001EEC(&qword_1000AE638, &qword_10008A0D0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v80 - v18;
  __chkstk_darwin(v17);
  v95 = &v80 - v20;
  v21 = sub_100001EEC(&qword_1000AE5D0, &qword_100089EB0);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v84 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v90 = &v80 - v26;
  __chkstk_darwin(v25);
  v29 = &v80 - v28;
  result = &_swiftEmptyDictionarySingleton;
  v97 = &_swiftEmptyDictionarySingleton;
  v31 = *(a1 + 16);
  v32 = _swiftEmptyArrayStorage;
  if (!v31)
  {
    return result;
  }

  v82 = v11;
  v83 = v7;
  v33 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v34 = a1 + v33;
  v35 = *(v27 + 72);
  v86 = v33;
  v87 = v35;
  v88 = (v8 + 8);
  v91 = &v80 - v28;
  v92 = v19;
  v81 = v16;
  while (1)
  {
    v93 = v34;
    v94 = v31;
    sub_10000E4A4(v34, v29, &qword_1000AE5D0, &qword_100089EB0);
    sub_10008645C();
    v37 = v95;
    sub_10008611C();
    (*v88)(v11, v89);
    sub_10000E4A4(v37, v19, &qword_1000AE638, &qword_10008A0D0);
    v38 = sub_10008639C();
    v39 = *(v38 - 8);
    v40 = *(v39 + 48);
    if (v40(v19, 1, v38) == 1)
    {
      sub_10000649C(v19, &qword_1000AE638, &qword_10008A0D0);
    }

    else
    {
      v41 = v83;
      sub_10008637C();
      (*(v39 + 8))(v19, v38);
      v42 = sub_10008617C();
      v43 = *(v42 - 8);
      if ((*(v43 + 48))(v41, 1, v42) != 1)
      {
        v50 = sub_10008615C();
        v52 = v51;
        (*(v43 + 8))(v41, v42);
        v16 = v81;
        v11 = v82;
        goto LABEL_20;
      }

      sub_10000649C(v41, &qword_1000AE630, &qword_10008A0C8);
      v16 = v81;
      v11 = v82;
      v19 = v92;
    }

    sub_10000E4A4(v95, v16, &qword_1000AE638, &qword_10008A0D0);
    if (v40(v16, 1, v38) != 1)
    {
      break;
    }

    sub_10000649C(v16, &qword_1000AE638, &qword_10008A0D0);
LABEL_13:
    v29 = v91;
    sub_10000E4A4(v91, v90, &qword_1000AE5D0, &qword_100089EB0);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_10006EE1C(0, v32[2] + 1, 1, v32);
    }

    v48 = v32[2];
    v47 = v32[3];
    if (v48 >= v47 >> 1)
    {
      v32 = sub_10006EE1C(v47 > 1, v48 + 1, 1, v32);
    }

    sub_10000649C(v95, &qword_1000AE638, &qword_10008A0D0);
    sub_10000649C(v29, &qword_1000AE5D0, &qword_100089EB0);
    v32[2] = v48 + 1;
    v49 = v32 + v86 + v48 * v87;
    v36 = v87;
    sub_100023AB0(v90, v49);
LABEL_4:
    v34 = v93 + v36;
    v31 = v94 - 1;
    if (v94 == 1)
    {
      return v97;
    }
  }

  v44 = v85;
  sub_10008635C();
  (*(v39 + 8))(v16, v38);
  v45 = sub_10008617C();
  v46 = *(v45 - 8);
  if ((*(v46 + 48))(v44, 1, v45) == 1)
  {
    sub_10000649C(v85, &qword_1000AE630, &qword_10008A0C8);
    v19 = v92;
    goto LABEL_13;
  }

  v53 = v85;
  v50 = sub_10008615C();
  v52 = v54;
  (*(v46 + 8))(v53, v45);
LABEL_20:
  v55 = v97;
  v19 = v92;
  if (v97[2])
  {
    sub_10006E5B0(v50, v52);
    if ((v56 & 1) == 0)
    {
      v55 = v97;
      goto LABEL_23;
    }

LABEL_34:
    v74 = sub_1000451D0(v96, v50, v52);
    if (*v73)
    {
      v75 = v73;
      sub_10000E4A4(v91, v84, &qword_1000AE5D0, &qword_100089EB0);
      v76 = *v75;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v75 = v76;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v76 = sub_10006EE1C(0, v76[2] + 1, 1, v76);
        *v75 = v76;
      }

      v79 = v76[2];
      v78 = v76[3];
      if (v79 >= v78 >> 1)
      {
        v76 = sub_10006EE1C(v78 > 1, v79 + 1, 1, v76);
        *v75 = v76;
      }

      v76[2] = v79 + 1;
      v36 = v87;
      sub_100023AB0(v84, v76 + v86 + v79 * v87);
      (v74)(v96, 0);

      sub_10000649C(v95, &qword_1000AE638, &qword_10008A0D0);
      v29 = v91;
      sub_10000649C(v91, &qword_1000AE5D0, &qword_100089EB0);
      v19 = v92;
    }

    else
    {
      (v74)(v96, 0);

      sub_10000649C(v95, &qword_1000AE638, &qword_10008A0D0);
      v29 = v91;
      sub_10000649C(v91, &qword_1000AE5D0, &qword_100089EB0);
      v36 = v87;
    }

    goto LABEL_4;
  }

LABEL_23:

  v57 = swift_isUniquelyReferenced_nonNull_native();
  v96[0] = v55;
  v59 = sub_10006E5B0(v50, v52);
  v60 = v55[2];
  v61 = (v58 & 1) == 0;
  v62 = v60 + v61;
  if (!__OFADD__(v60, v61))
  {
    v63 = v58;
    if (v55[3] >= v62)
    {
      if ((v57 & 1) == 0)
      {
        sub_100073E14();
      }
    }

    else
    {
      sub_100071454(v62, v57);
      v64 = sub_10006E5B0(v50, v52);
      if ((v63 & 1) != (v65 & 1))
      {
        goto LABEL_44;
      }

      v59 = v64;
    }

    v66 = v96[0];
    if (v63)
    {
      v67 = v96[0][7];
      v68 = *(v67 + 8 * v59);
      *(v67 + 8 * v59) = _swiftEmptyArrayStorage;
    }

    else
    {
      v96[0][(v59 >> 6) + 8] |= 1 << v59;
      v69 = (v66[6] + 16 * v59);
      *v69 = v50;
      v69[1] = v52;
      *(v66[7] + 8 * v59) = _swiftEmptyArrayStorage;
      v70 = v66[2];
      v71 = __OFADD__(v70, 1);
      v72 = v70 + 1;
      if (v71)
      {
        goto LABEL_43;
      }

      v66[2] = v72;
    }

    v97 = v66;
    v19 = v92;
    goto LABEL_34;
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  result = sub_100087A5C();
  __break(1u);
  return result;
}

Swift::Void __swiftcall MainHostViewController.loadView()()
{
  v2 = v1;
  sub_100016438(0x6569562064616F4CLL, 0xE900000000000077, v0, type metadata accessor for MainHostViewController, &qword_1000AE560, &qword_100089D48);
  *&v10 = 0;
  *(&v10 + 1) = 0xE000000000000000;
  sub_1000877DC(17);
  v14 = v10;
  v15._countAndFlagsBits = 0x6547656369766544;
  v15._object = 0xEF203A746C617473;
  sub_1000871BC(v15);
  if (qword_1000ADBE0 != -1)
  {
    swift_once();
  }

  v11 = xmmword_1000B3B60;
  v12 = *algn_1000B3B70;
  *v13 = xmmword_1000B3B80;
  *&v13[12] = *(&xmmword_1000B3B80 + 12);
  sub_1000878DC();
  sub_100016438(v14, *(&v14 + 1), v3, type metadata accessor for MainHostViewController, &qword_1000AE560, &qword_100089D48);

  v4 = [objc_allocWithZone(UIView) init];
  [v2 setView:v4];

  if (*&v2[OBJC_IVAR___MainHostViewController_contentVC])
  {
    [v2 wrapWithSubViewController:?];
  }

  v5 = *&v2[OBJC_IVAR___MainHostViewController_statusInfoViewCtrl];
  [v2 addChildViewController:v5];
  v6 = [v2 view];
  if (v6)
  {
    v7 = v6;
    v8 = [v5 view];
    if (v8)
    {
      v9 = v8;
      [v7 addSubviewToBounds:v8 with:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

      [v5 didMoveToParentViewController:v2];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

Swift::Void __swiftcall MainHostViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v4 = sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v18 - v6;
  sub_100016438(0xD000000000000014, 0x800000010008E8E0, v8, type metadata accessor for MainHostViewController, &qword_1000AE560, &qword_100089D48);
  v9 = OBJC_IVAR___MainHostViewController_contentVC;
  v10 = *&v1[OBJC_IVAR___MainHostViewController_contentVC];
  if (!v10)
  {
    goto LABEL_4;
  }

  v11 = v10;
  v12 = [v11 view];
  if (v12)
  {
    v13 = v12;
    [v12 removeFromSuperview];

    [v11 removeFromParentViewController];
    v10 = *&v2[v9];
LABEL_4:
    *&v2[v9] = 0;

    v14 = sub_10008742C();
    (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
    sub_1000873FC();
    v15 = sub_1000873EC();
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v16 + 24) = &protocol witness table for MainActor;
    sub_100016C64(0, 0, v7, &unk_100089AD0, v16);

    v17 = type metadata accessor for MainHostViewController();
    v18.receiver = v2;
    v18.super_class = v17;
    objc_msgSendSuper2(&v18, "viewDidDisappear:", a1);
    return;
  }

  __break(1u);
}

uint64_t sub_100019804()
{
  sub_1000873FC();
  v0[2] = sub_1000873EC();
  v2 = sub_1000873DC();
  v0[3] = v2;
  v0[4] = v1;

  return _swift_task_switch(sub_100019898, v2, v1);
}

uint64_t sub_100019898()
{
  if (qword_1000ADBD8 != -1)
  {
    swift_once();
  }

  v1 = qword_1000B3B58;
  *(v0 + 40) = qword_1000B3B58;

  return _swift_task_switch(sub_100019930, v1, 0);
}

uint64_t sub_100019930()
{
  v0[6] = *(v0[5] + 112);

  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_1000199D4;

  return sub_100059BC8();
}

uint64_t sub_1000199D4()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v5 = *v0;

  return _swift_task_switch(sub_100019B00, v3, 0);
}

uint64_t sub_100019B00()
{
  v0[8] = *(v0[5] + 120);

  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_100019BA4;

  return sub_10006C43C();
}

uint64_t sub_100019BA4()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v7 = *v0;

  v4 = *(v1 + 32);
  v5 = *(v1 + 24);

  return _swift_task_switch(sub_100019CE8, v5, v4);
}

uint64_t sub_100019CE8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100019D48()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100019D80()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000324C;

  return sub_100019804();
}

id MainHostViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_10008714C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id MainHostViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  *&v3[OBJC_IVAR___MainHostViewController_contentVC] = 0;
  *&v3[OBJC_IVAR___MainHostViewController_xpcCnx] = 0;
  memset(&v15[1], 0, 80);
  v16 = 2;
  v7 = objc_allocWithZone(sub_100001EEC(&qword_1000ADC18, &unk_100088750));
  v8 = sub_100086B5C();
  result = [v8 view];
  if (result)
  {
    v10 = result;
    v11 = OBJC_IVAR___MainHostViewController_statusInfoViewCtrl;
    v12 = [objc_opt_self() clearColor];
    [v10 setBackgroundColor:v12];

    *&v4[v11] = v8;
    if (a2)
    {
      v13 = sub_10008714C();
    }

    else
    {
      v13 = 0;
    }

    v15[0].receiver = v4;
    v15[0].super_class = type metadata accessor for MainHostViewController();
    v14 = [(objc_super *)v15 initWithNibName:v13 bundle:a3];

    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id MainHostViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id MainHostViewController.init(coder:)(void *a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR___MainHostViewController_contentVC] = 0;
  *&v1[OBJC_IVAR___MainHostViewController_xpcCnx] = 0;
  memset(&v11[1], 0, 80);
  v12 = 2;
  v4 = objc_allocWithZone(sub_100001EEC(&qword_1000ADC18, &unk_100088750));
  v5 = sub_100086B5C();
  result = [v5 view];
  if (result)
  {
    v7 = result;
    v8 = OBJC_IVAR___MainHostViewController_statusInfoViewCtrl;
    v9 = [objc_opt_self() clearColor];
    [v7 setBackgroundColor:v9];

    *&v2[v8] = v5;
    v11[0].receiver = v2;
    v11[0].super_class = type metadata accessor for MainHostViewController();
    v10 = [(objc_super *)v11 initWithCoder:a1];

    if (v10)
    {
    }

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Bool __swiftcall MainHostViewController.shouldAccept(_:)(NSXPCConnection a1)
{
  v2 = v1;
  strcpy(v19, "shouldAccept ");
  HIWORD(v19[1]) = -4864;
  v4 = [(objc_class *)a1.super.isa description];
  v5 = sub_10008715C();
  v7 = v6;

  v20._countAndFlagsBits = v5;
  v20._object = v7;
  sub_1000871BC(v20);

  sub_100016438(v19[0], v19[1], v8, type metadata accessor for MainHostViewController, &qword_1000AE560, &qword_100089D48);

  v18 = objc_opt_self();
  v9 = [v18 interfaceWithProtocol:&OBJC_PROTOCOL____TtP16HPSUIViewService22HostXPCServerInterface_];
  [(objc_class *)a1.super.isa setExportedInterface:v9];

  if ([(objc_class *)a1.super.isa exportedInterface]|| [(objc_class *)a1.super.isa exportedInterface])
  {
    sub_10001F93C();
    inited = swift_initStackObject();
    *(inited + 32) = sub_100023B40(0, &qword_1000AE410, NSUUID_ptr);
    *(inited + 40) = sub_100023B40(0, &qword_1000AE418, NSSet_ptr);
    v11 = [objc_allocWithZone(NSMutableSet) init];
    v19[0] = *(inited + 32);
    sub_100001EEC(qword_1000AE0C0, &qword_100089AE0);
    [v11 addObject:sub_100087A3C()];
    swift_unknownObjectRelease();
    [v11 addObject:sub_100087A3C()];
    swift_unknownObjectRelease();
    v19[0] = 0;
    v12 = v11;
    sub_1000874AC();

    result = sub_10008792C();
    __break(1u);
  }

  else
  {
    [(objc_class *)a1.super.isa setExportedObject:v2];
    v19[3] = &type metadata for Feature;
    v19[4] = sub_10000DF68();
    v13 = sub_1000860AC();
    sub_100001FF8(v19);
    if (v13)
    {
      v14 = [v18 interfaceWithProtocol:&OBJC_PROTOCOL____TtP16HPSUIViewService32BetaEnrollmentXPCClientInterface_];
      [(objc_class *)a1.super.isa setRemoteObjectInterface:v14];
    }

    v15 = *(v2 + OBJC_IVAR___MainHostViewController_xpcCnx);
    *(v2 + OBJC_IVAR___MainHostViewController_xpcCnx) = a1;
    v16 = a1.super.isa;

    [(objc_class *)v16 resume];
    return 1;
  }

  return result;
}

uint64_t MainHostViewController.receive(betaEnrollmentHomeID:identifiers:)(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  v4 = *(*(sub_100001EEC(&qword_1000AEDC0, &qword_100088E40) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = sub_1000873FC();
  v3[27] = sub_1000873EC();
  v6 = sub_1000873DC();
  v3[28] = v6;
  v3[29] = v5;

  return _swift_task_switch(sub_10001A968, v6, v5);
}

id sub_10001A968()
{
  if (qword_1000ADB40 != -1)
  {
    swift_once();
  }

  v2 = qword_1000B38F8;
  v1 = unk_1000B3900;
  v3 = byte_1000B3908;
  v4 = qword_1000B3910;
  v5 = *(*(v0 + 192) + OBJC_IVAR___MainHostViewController_statusInfoViewCtrl);

  result = [v5 view];
  if (result)
  {
    v7 = result;
    v9 = *(v0 + 176);
    v8 = *(v0 + 184);
    [result setHidden:0];

    v10 = sub_100086B6C();
    v12 = *(v11 + 16);
    *(v0 + 16) = *v11;
    *(v0 + 32) = v12;
    v13 = *(v11 + 32);
    v14 = *(v11 + 48);
    v15 = *(v11 + 64);
    *(v0 + 96) = *(v11 + 80);
    *(v0 + 64) = v14;
    *(v0 + 80) = v15;
    *(v0 + 48) = v13;
    *v11 = v2;
    *(v11 + 8) = v1;
    *(v11 + 16) = v3;
    *(v11 + 24) = v4;
    *(v11 + 32) = 0;
    v16 = *(v0 + 136);
    v17 = *(v0 + 120);
    *(v11 + 40) = *(v0 + 104);
    *(v11 + 56) = v17;
    *(v11 + 72) = v16;
    *(v11 + 80) = 0;

    sub_10000E018(v0 + 16);
    v10(v0 + 144, 0);

    sub_1000877DC(49);

    sub_10008609C();
    sub_100023834(&qword_1000AE420, &type metadata accessor for UUID);
    v23._countAndFlagsBits = sub_1000879CC();
    sub_1000871BC(v23);

    v24._countAndFlagsBits = 0x6669746E65646920;
    v24._object = 0xED00002073726569;
    sub_1000871BC(v24);
    sub_100023834(&qword_1000AE428, &type metadata accessor for UUID);
    v25._countAndFlagsBits = sub_1000874CC();
    sub_1000871BC(v25);

    sub_100016438(0xD000000000000020, 0x800000010008E900, v18, type metadata accessor for MainHostViewController, &qword_1000AE560, &qword_100089D48);

    if (qword_1000ADBD8 != -1)
    {
      swift_once();
    }

    v19 = swift_task_alloc();
    *(v0 + 240) = v19;
    *v19 = v0;
    v19[1] = sub_10001ACD0;
    v21 = *(v0 + 176);
    v20 = *(v0 + 184);

    return sub_100041740(v21, v20);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001ACD0()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;
  *(*v1 + 248) = v0;

  v5 = *(v2 + 232);
  v6 = *(v2 + 224);
  if (v0)
  {
    v7 = sub_10001AF24;
  }

  else
  {
    v7 = sub_10001AE0C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10001AE0C()
{
  v2 = v0[26];
  v1 = v0[27];
  v4 = v0[24];
  v3 = v0[25];

  v5 = sub_10008742C();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = v4;
  v7 = sub_1000873EC();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v6;
  sub_100016C64(0, 0, v3, &unk_100089AF8, v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10001AF24()
{
  v1 = v0[27];
  v2 = v0[25];

  v3 = v0[1];
  v4 = v0[31];

  return v3();
}

uint64_t sub_10001AF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 168) = a4;
  sub_1000873FC();
  *(v4 + 176) = sub_1000873EC();
  v6 = sub_1000873DC();

  return _swift_task_switch(sub_10001B02C, v6, v5);
}

uint64_t sub_10001B02C()
{
  v1 = *(v0 + 176);

  objc_allocWithZone(type metadata accessor for MainHostViewController.BetaEnrollmentContentViewController(0));
  if (qword_1000ADBD8 != -1)
  {
    swift_once();
  }

  v2 = sub_100001EEC(&qword_1000AE658, &qword_10008A0E8);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();

  sub_10002295C(v5);

  *(v0 + 184) = 0;
  sub_100086E7C();
  v6 = *(v0 + 152);
  v7 = *(v0 + 160);
  sub_100006454(&qword_1000AE660, &qword_1000AE658, &qword_10008A0E8);
  *(v0 + 56) = sub_1000868FC();
  *(v0 + 64) = v8;
  *(v0 + 72) = v6;
  *(v0 + 80) = v7;
  v9 = sub_100086B5C();
  *(v0 + 40) = &type metadata for Feature;
  *(v0 + 48) = sub_10000DF68();
  v10 = sub_1000860AC();
  sub_100001FF8((v0 + 16));
  v11 = *(v0 + 168);
  if (v10)
  {
    v12 = objc_allocWithZone(UINavigationController);
    v52._object = v9;
    v13 = v9;
    v56 = [v12 initWithRootViewController:v13];
    v14 = objc_opt_self();
    v15 = [v14 mainBundle];
    v52._countAndFlagsBits = 0xE000000000000000;
    v58._object = 0x800000010008ECE0;
    v58._countAndFlagsBits = 0xD000000000000014;
    v61.value._countAndFlagsBits = 0;
    v61.value._object = 0;
    v16.super.isa = v15;
    v64._countAndFlagsBits = 0;
    v64._object = 0xE000000000000000;
    sub_100085FFC(v58, v61, v16, v64, v52);

    v17 = sub_10008714C();

    [v13 setTitle:v17];

    v18 = [v13 navigationItem];
    v19 = [v14 mainBundle];
    v53._countAndFlagsBits = 0xE000000000000000;
    v59._countAndFlagsBits = 1162760004;
    v59._object = 0xE400000000000000;
    v62.value._countAndFlagsBits = 0;
    v62.value._object = 0;
    v20.super.isa = v19;
    v65._countAndFlagsBits = 0;
    v65._object = 0xE000000000000000;
    sub_100085FFC(v59, v62, v20, v65, v53);

    *(v0 + 112) = type metadata accessor for MainHostViewController();
    *(v0 + 88) = v11;
    v21 = v11;
    v22 = sub_10008714C();

    v23 = *(v0 + 112);
    if (v23)
    {
      v24 = sub_100001FB4((v0 + 88), *(v0 + 112));
      v25 = *(v23 - 8);
      v26 = *(v25 + 64) + 15;
      v27 = swift_task_alloc();
      (*(v25 + 16))(v27, v24, v23);
      v28 = sub_100087A0C();
      (*(v25 + 8))(v27, v23);

      sub_100001FF8((v0 + 88));
    }

    else
    {
      v28 = 0;
    }

    v31 = [objc_allocWithZone(UIBarButtonItem) initWithTitle:v22 style:2 target:v28 action:"closeButtonTapped"];
    swift_unknownObjectRelease();

    [v18 setRightBarButtonItem:v31];
    v32 = [v13 navigationItem];

    v33 = [v14 mainBundle];
    v54._countAndFlagsBits = 0xE000000000000000;
    v60._countAndFlagsBits = 1262698818;
    v60._object = 0xE400000000000000;
    v63.value._countAndFlagsBits = 0;
    v63.value._object = 0;
    v34.super.isa = v33;
    v66._countAndFlagsBits = 0;
    v66._object = 0xE000000000000000;
    sub_100085FFC(v60, v63, v34, v66, v54);

    *(v0 + 136) = 0u;
    *(v0 + 120) = 0u;
    v35 = sub_10008714C();

    v36 = *(v0 + 144);
    v9 = v55;
    if (v36)
    {
      v37 = sub_100001FB4((v0 + 120), *(v0 + 144));
      v38 = *(v36 - 8);
      v39 = *(v38 + 64) + 15;
      v40 = swift_task_alloc();
      (*(v38 + 16))(v40, v37, v36);
      v41 = sub_100087A0C();
      (*(v38 + 8))(v40, v36);

      sub_100001FF8((v0 + 120));
    }

    else
    {
      v41 = 0;
    }

    v42 = *(v0 + 168);
    v43 = [objc_allocWithZone(UIBarButtonItem) initWithTitle:v35 style:0 target:v41 action:0];
    swift_unknownObjectRelease();

    [v32 setBackBarButtonItem:v43];
    v29 = *(v42 + OBJC_IVAR___MainHostViewController_contentVC);
    *(v42 + OBJC_IVAR___MainHostViewController_contentVC) = v56;
  }

  else
  {
    v29 = *&v11[OBJC_IVAR___MainHostViewController_contentVC];
    *&v11[OBJC_IVAR___MainHostViewController_contentVC] = v9;
    v30 = v9;
  }

  v44 = *(v0 + 168);

  v45 = [*(v44 + OBJC_IVAR___MainHostViewController_statusInfoViewCtrl) view];
  if (v45)
  {
    v46 = v45;
    [v45 setHidden:1];
  }

  v47 = *(v0 + 168);
  v48 = *&v47[OBJC_IVAR___MainHostViewController_contentVC];
  if (v48)
  {
    v49 = v48;
    [v47 wrapWithSubViewController:v49];
  }

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_10001B858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_10008609C();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  sub_1000873FC();
  v4[9] = sub_1000873EC();
  v9 = sub_1000873DC();

  return _swift_task_switch(sub_10001B950, v9, v8);
}

uint64_t sub_10001B950()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  v0[10] = _Block_copy(v5);
  sub_10008607C();
  sub_100023834(&qword_1000AE428, &type metadata accessor for UUID);
  v8 = sub_1000874BC();
  v0[11] = v8;
  v9 = v4;
  v10 = swift_task_alloc();
  v0[12] = v10;
  *v10 = v0;
  v10[1] = sub_100023CEC;
  v11 = v0[8];
  v12 = v0[5];

  return MainHostViewController.receive(betaEnrollmentHomeID:identifiers:)(v11, v8);
}

void sub_10001BA7C()
{
  v1 = *(v0 + OBJC_IVAR___MainHostViewController_xpcCnx);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 remoteObjectProxy];
    sub_10008769C();
    swift_unknownObjectRelease();
    sub_100001EEC(&qword_1000AE558, &qword_100089D20);
    if (swift_dynamicCast())
    {
      sub_100016438(0xD00000000000001FLL, 0x800000010008EB80, v4, type metadata accessor for MainHostViewController, &qword_1000AE560, &qword_100089D48);
      [v5 didFinishEnrollment];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t MainHostViewController.receive(betaEnrollmentHomeID:)(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  sub_1000873FC();
  v2[20] = sub_1000873EC();
  v4 = sub_1000873DC();
  v2[21] = v4;
  v2[22] = v3;

  return _swift_task_switch(sub_10001BC60, v4, v3);
}

uint64_t sub_10001BC60()
{
  v1 = v0[18];
  v2 = v0[19];
  isa = sub_10008606C().super.isa;
  v0[23] = isa;
  sub_10008609C();
  sub_100023834(&qword_1000AE428, &type metadata accessor for UUID);
  v4 = sub_10008749C().super.isa;
  v0[24] = v4;
  v0[2] = v0;
  v0[3] = sub_10001BDEC;
  v5 = swift_continuation_init();
  v0[17] = sub_100001EEC(&qword_1000AE430, &qword_100089B08);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10001BF1C;
  v0[13] = &unk_1000A76F0;
  v0[14] = v5;
  [v2 receiveWithBetaEnrollmentHomeID:isa identifiers:v4 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10001BDEC()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 200) = v3;
  v4 = *(v1 + 176);
  v5 = *(v1 + 168);
  if (v3)
  {
    v6 = sub_100023CCC;
  }

  else
  {
    v6 = sub_100023C8C;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_10001BF1C(uint64_t a1, void *a2)
{
  v3 = sub_100001FB4((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_100001EEC(&unk_1000AEDF0, &qword_10008A0E0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_10001C150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_10008609C();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  sub_1000873FC();
  v3[8] = sub_1000873EC();
  v8 = sub_1000873DC();

  return _swift_task_switch(sub_10001C248, v8, v7);
}

uint64_t sub_10001C248()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];

  v0[9] = _Block_copy(v3);
  sub_10008607C();
  v6 = v4;
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_100023C88;
  v8 = v0[7];
  v9 = v0[4];

  return MainHostViewController.receive(betaEnrollmentHomeID:)(v8);
}

id sub_10001C34C(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

NSNumber sub_10001C3E4()
{
  sub_100023B40(0, &qword_1000AE640, NSNumber_ptr);
  result.super.super.isa = sub_10008762C(180513).super.super.isa;
  qword_1000AE3F0 = result.super.super.isa;
  return result;
}

uint64_t MainHostViewController.receive(carrySettingsHomeID:identifiers:)(uint64_t a1, uint64_t a2)
{
  v3[71] = v2;
  v3[70] = a2;
  v3[69] = a1;
  v4 = *(*(sub_100001EEC(&qword_1000AEDC0, &qword_100088E40) - 8) + 64) + 15;
  v3[72] = swift_task_alloc();
  v3[73] = sub_1000873FC();
  v3[74] = sub_1000873EC();
  v6 = sub_1000873DC();
  v3[75] = v6;
  v3[76] = v5;

  return _swift_task_switch(sub_10001C510, v6, v5);
}

uint64_t sub_10001C510()
{
  if (qword_1000ADB40 != -1)
  {
    swift_once();
  }

  v2 = qword_1000B38F8;
  v1 = unk_1000B3900;
  v3 = byte_1000B3908;
  v4 = qword_1000B3910;
  v5 = *(*(v0 + 568) + OBJC_IVAR___MainHostViewController_statusInfoViewCtrl);

  v6 = [v5 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_27;
  }

  v9 = v6;
  v10 = *(v0 + 568);
  [v6 setHidden:0];

  v11 = sub_100086B6C();
  *(v0 + 104) = v2;
  *(v0 + 112) = v1;
  *(v0 + 120) = v3;
  *(v0 + 128) = v4;
  *(v0 + 136) = 0;
  *(v0 + 184) = 0;
  v13 = *(v12 + 16);
  *(v0 + 16) = *v12;
  *(v0 + 32) = v13;
  v14 = *(v12 + 32);
  v15 = *(v12 + 48);
  v16 = *(v12 + 64);
  *(v0 + 96) = *(v12 + 80);
  *(v0 + 64) = v15;
  *(v0 + 80) = v16;
  *(v0 + 48) = v14;
  v17 = *(v0 + 104);
  *(v12 + 16) = *(v0 + 120);
  v18 = *(v0 + 168);
  v19 = *(v0 + 184);
  v20 = *(v0 + 152);
  *(v12 + 32) = *(v0 + 136);
  *(v12 + 48) = v20;
  *(v12 + 80) = v19;
  *(v12 + 64) = v18;
  *v12 = v17;
  sub_10001FAF0(v0 + 104, v0 + 192);
  sub_10000E018(v0 + 16);
  v11(v0 + 456, 0);

  v21 = *(v10 + OBJC_IVAR___MainHostViewController_xpcCnx);
  *(v0 + 616) = v21;
  if (v21)
  {
    v22 = v21;
    if (sub_100075294())
    {
      v23 = *(v0 + 560);
      v24 = *(v0 + 552);
      sub_1000877DC(48);

      sub_10008609C();
      sub_100023834(&qword_1000AE420, &type metadata accessor for UUID);
      v66._countAndFlagsBits = sub_1000879CC();
      sub_1000871BC(v66);

      v67._countAndFlagsBits = 0x6669746E65646920;
      v67._object = 0xED00002073726569;
      sub_1000871BC(v67);
      sub_100023834(&qword_1000AE428, &type metadata accessor for UUID);
      v68._countAndFlagsBits = sub_1000874CC();
      sub_1000871BC(v68);

      sub_100016438(0xD00000000000001FLL, 0x800000010008E950, v25, type metadata accessor for MainHostViewController, &qword_1000AE560, &qword_100089D48);

      if (qword_1000ADBD8 != -1)
      {
        swift_once();
      }

      v7 = qword_1000B3B58;
      *(v0 + 624) = qword_1000B3B58;
      v6 = sub_10001CC74;
      v8 = 0;

      return _swift_task_switch(v6, v7, v8);
    }

    v41 = *(v0 + 592);

    if (qword_1000ADB18 != -1)
    {
      swift_once();
    }

    v42 = unk_1000B3860;
    v62 = qword_1000B3858;
    v64 = byte_1000B3868;
    v43 = qword_1000B3870;
    v44 = qword_1000ADB30;

    if (v44 != -1)
    {
      swift_once();
    }

    v45 = unk_1000B38C0;
    v60 = qword_1000B38B8;
    v46 = byte_1000B38C8;
    v47 = qword_1000B38D0;

    v6 = [v5 view];
    if (v6)
    {
      v48 = v6;
      [v6 setHidden:0];

      v49 = sub_100086B6C();
      v51 = *(v50 + 16);
      *(v0 + 368) = *v50;
      *(v0 + 384) = v51;
      v52 = *(v50 + 32);
      v53 = *(v50 + 48);
      v54 = *(v50 + 64);
      *(v0 + 448) = *(v50 + 80);
      *(v0 + 416) = v53;
      *(v0 + 432) = v54;
      *(v0 + 400) = v52;
      *v50 = v62;
      *(v50 + 8) = v42;
      *(v50 + 16) = v64;
      *(v50 + 24) = v43;
      *(v50 + 32) = 0;
      *(v50 + 40) = v60;
      *(v50 + 48) = v45;
      *(v50 + 56) = v46;
      *(v50 + 64) = v47;
      *(v50 + 72) = 0;
      *(v50 + 80) = 1;
      sub_10000E018(v0 + 368);
      v49(v0 + 520, 0);

      sub_10001FB4C();
      swift_allocError();
      *v55 = 0;
      swift_willThrow();

      goto LABEL_23;
    }

LABEL_28:
    __break(1u);
    return _swift_task_switch(v6, v7, v8);
  }

  v26 = *(v0 + 592);

  if (qword_1000ADB18 != -1)
  {
    swift_once();
  }

  v27 = unk_1000B3860;
  v61 = qword_1000B3858;
  v63 = byte_1000B3868;
  v28 = qword_1000B3870;
  v29 = qword_1000ADB38;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = unk_1000B38E0;
  v59 = qword_1000B38D8;
  v31 = byte_1000B38E8;
  v32 = qword_1000B38F0;

  v6 = [v5 view];
  if (!v6)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v33 = v6;
  [v6 setHidden:0];

  v34 = sub_100086B6C();
  v36 = *(v35 + 16);
  *(v0 + 280) = *v35;
  *(v0 + 296) = v36;
  v37 = *(v35 + 32);
  v38 = *(v35 + 48);
  v39 = *(v35 + 64);
  *(v0 + 360) = *(v35 + 80);
  *(v0 + 328) = v38;
  *(v0 + 344) = v39;
  *(v0 + 312) = v37;
  *v35 = v61;
  *(v35 + 8) = v27;
  *(v35 + 16) = v63;
  *(v35 + 24) = v28;
  *(v35 + 32) = 0;
  *(v35 + 40) = v59;
  *(v35 + 48) = v30;
  *(v35 + 56) = v31;
  *(v35 + 64) = v32;
  *(v35 + 72) = 0;
  *(v35 + 80) = 1;
  sub_10000E018(v0 + 280);
  v34(v0 + 488, 0);

  sub_10001FB4C();
  swift_allocError();
  *v40 = 1;
  swift_willThrow();
LABEL_23:
  v56 = *(v0 + 576);

  v57 = *(v0 + 8);

  return v57();
}

uint64_t sub_10001CC74()
{
  v0[79] = *(v0[78] + 120);

  v1 = swift_task_alloc();
  v0[80] = v1;
  *v1 = v0;
  v1[1] = sub_10001CD24;
  v2 = v0[70];
  v3 = v0[69];

  return sub_100069C58(v3, v2);
}

uint64_t sub_10001CD24()
{
  v2 = *v1;
  v3 = *(*v1 + 640);
  v9 = *v1;
  *(*v1 + 648) = v0;

  if (v0)
  {
    v4 = v2[78];
    v5 = sub_10001CF74;
    v6 = 0;
  }

  else
  {
    v7 = v2[79];

    v6 = v2[76];
    v4 = v2[75];
    v5 = sub_10001CE4C;
  }

  return _swift_task_switch(v5, v4, v6);
}

uint64_t sub_10001CE4C()
{
  v1 = v0[77];
  v2 = v0[74];
  v3 = v0[73];
  v4 = v0[72];
  v5 = v0[71];

  v6 = sub_10008742C();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = v5;
  v8 = sub_1000873EC();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v7;
  sub_100016C64(0, 0, v4, &unk_100089B20, v9);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10001CF74()
{
  v1 = v0[79];

  v2 = v0[76];
  v3 = v0[75];

  return _swift_task_switch(sub_10001CFDC, v3, v2);
}

uint64_t sub_10001CFDC()
{
  v1 = v0[77];
  v2 = v0[74];

  v3 = v0[81];
  v4 = v0[72];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10001D050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[41] = a4;
  sub_1000873FC();
  v4[42] = sub_1000873EC();
  v6 = sub_1000873DC();
  v4[43] = v6;
  v4[44] = v5;

  return _swift_task_switch(sub_10001D0E8, v6, v5);
}

uint64_t sub_10001D0E8()
{
  v49 = v0 + 168;
  v1 = sub_10008714C();
  v2 = NSClassFromString(v1);

  if (v2)
  {
    v3 = [objc_allocWithZone(ACMobileAuthenticationContext) initWithHostViewController:*(v0 + 328)];
    *(v0 + 360) = v3;
    [v3 setEnvironment:0];
    if (qword_1000ADBE8 != -1)
    {
      swift_once();
    }

    v47 = v3;
    [v3 setAppID:qword_1000AE3F0];
    v4 = [objc_allocWithZone(ACAuthenticationRequest) init];
    *(v0 + 368) = v4;
    [v4 setAuthType:3];
    [v4 setOauthGrantType:2];
    v5 = sub_10008714C();
    [v4 setOauthClientID:v5];

    isa = sub_1000872BC().super.isa;
    [v4 setOauthScopes:isa];

    if (qword_1000ADB10 != -1)
    {
      swift_once();
    }

    v7 = qword_1000B3838;
    v8 = unk_1000B3840;
    v9 = byte_1000B3848;
    v10 = qword_1000B3850;
    v11 = *(*(v0 + 328) + OBJC_IVAR___MainHostViewController_statusInfoViewCtrl);
    *(v0 + 376) = v11;

    v12 = [v11 view];
    if (v12)
    {
      v13 = v12;
      [v12 setHidden:0];

      v14 = sub_100086B6C();
      v16 = *(v15 + 16);
      *(v0 + 80) = *v15;
      *(v0 + 96) = v16;
      v17 = *(v15 + 32);
      v18 = *(v15 + 48);
      v19 = *(v15 + 64);
      *(v0 + 160) = *(v15 + 80);
      *(v0 + 128) = v18;
      *(v0 + 144) = v19;
      *(v0 + 112) = v17;
      *v15 = v7;
      *(v15 + 8) = v8;
      *(v15 + 16) = v9;
      *(v15 + 24) = v10;
      *(v15 + 32) = 0;
      v20 = *(v0 + 288);
      v21 = *(v0 + 272);
      *(v15 + 40) = *(v0 + 256);
      *(v15 + 56) = v21;
      *(v15 + 72) = v20;
      *(v15 + 80) = 0;

      sub_10000E018(v0 + 80);
      v14(v49, 0);

      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 296;
      *(v0 + 24) = sub_10001D76C;
      v22 = swift_continuation_init();
      *(v0 + 224) = sub_100001EEC(&qword_1000AE568, &qword_100089D50);
      *(v0 + 168) = _NSConcreteStackBlock;
      *(v0 + 176) = 1107296256;
      *(v0 + 184) = sub_10001DD08;
      *(v0 + 192) = &unk_1000A7A38;
      *(v0 + 200) = v22;
      [v47 authenticateWithRequest:v4 completion:v49];
      v12 = (v0 + 16);

      return _swift_continuation_await(v12);
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return _swift_continuation_await(v12);
  }

  v23 = *(v0 + 336);

  *(v0 + 80) = type metadata accessor for MainHostViewController();
  sub_100001EEC(&qword_1000AE560, &qword_100089D48);
  sub_10008716C();
  v24 = objc_allocWithZone(CULogHandle);
  v25 = sub_10008714C();
  v26 = sub_10008714C();

  v27 = [v24 initWithSubsystem:v25 category:v26];

  v28 = sub_10008714C();
  [v27 ulog:90 message:v28];

  if (qword_1000ADB18 != -1)
  {
    swift_once();
  }

  v29 = unk_1000B3860;
  v46 = qword_1000B3858;
  v48 = byte_1000B3868;
  v30 = qword_1000B3870;
  v31 = qword_1000ADB20;

  if (v31 != -1)
  {
    swift_once();
  }

  v33 = qword_1000B3878;
  v32 = unk_1000B3880;
  v34 = byte_1000B3888;
  v35 = qword_1000B3890;
  v36 = *(*(v0 + 328) + OBJC_IVAR___MainHostViewController_statusInfoViewCtrl);

  v12 = [v36 view];
  if (!v12)
  {
    goto LABEL_19;
  }

  v37 = v12;
  [v12 setHidden:0];

  v38 = sub_100086B6C();
  v40 = *(v39 + 16);
  *(v0 + 80) = *v39;
  *(v0 + 96) = v40;
  v41 = *(v39 + 32);
  v42 = *(v39 + 48);
  v43 = *(v39 + 64);
  *(v0 + 160) = *(v39 + 80);
  *(v0 + 128) = v42;
  *(v0 + 144) = v43;
  *(v0 + 112) = v41;
  *v39 = v46;
  *(v39 + 8) = v29;
  *(v39 + 16) = v48;
  *(v39 + 24) = v30;
  *(v39 + 32) = 0;
  *(v39 + 40) = v33;
  *(v39 + 48) = v32;
  *(v39 + 56) = v34;
  *(v39 + 64) = v35;
  *(v39 + 72) = 0;
  *(v39 + 80) = 1;
  sub_10000E018(v0 + 80);
  v38(v49, 0);

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_10001D76C()
{
  v1 = *(*v0 + 352);
  v2 = *(*v0 + 344);
  v3 = *v0;

  return _swift_task_switch(sub_10001D874, v2, v1);
}

id sub_10001D874()
{
  v1 = *(v0 + 336);

  v2 = *(v0 + 296);
  v3 = [v2 oauthIDToken];
  if (v3)
  {

    v4 = [v2 oauthIDToken];
    if (v4)
    {
      v5 = v4;
      v6 = sub_10008715C();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v30 = [v2 userName];
    if (v30)
    {
      v31 = v30;
      v32 = sub_10008715C();
      v34 = v33;
    }

    else
    {
      v32 = 0;
      v34 = 0;
    }

    v35 = *(v0 + 376);
    v36 = *(v0 + 328);
    v37 = objc_allocWithZone(type metadata accessor for MainHostViewController.CarrySettingsContentViewController(0));
    v38 = sub_10001ECB0(v6, v8, v32, v34);
    v39 = OBJC_IVAR___MainHostViewController_contentVC;
    v40 = *(v36 + OBJC_IVAR___MainHostViewController_contentVC);
    *(v36 + OBJC_IVAR___MainHostViewController_contentVC) = v38;
    v41 = v38;

    v42 = [v35 view];
    if (v42)
    {
      v43 = v42;
      [v42 setHidden:1];
    }

    v44 = *(v36 + v39);
    v45 = *(v0 + 360);
    v46 = *(v0 + 368);
    if (v44)
    {
      v47 = *(v0 + 328);
      v48 = v44;
      [v47 wrapWithSubViewController:v48];
    }

    else
    {
    }
  }

  else
  {
    *(v0 + 168) = type metadata accessor for MainHostViewController();
    sub_100001EEC(&qword_1000AE560, &qword_100089D48);
    sub_10008716C();
    v9 = objc_allocWithZone(CULogHandle);
    v10 = sub_10008714C();
    v11 = sub_10008714C();

    v12 = [v9 initWithSubsystem:v10 category:v11];

    v13 = sub_10008714C();
    [v12 ulog:90 message:v13];

    if (qword_1000ADB18 != -1)
    {
      swift_once();
    }

    v14 = unk_1000B3860;
    v53 = qword_1000B3858;
    v54 = byte_1000B3868;
    v15 = qword_1000B3870;
    v16 = qword_1000ADB28;

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = *(v0 + 376);
    v18 = unk_1000B38A0;
    v51 = qword_1000B3898;
    v52 = byte_1000B38A8;
    v19 = qword_1000B38B0;

    result = [v17 view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v21 = result;
    v23 = *(v0 + 368);
    v22 = *(v0 + 376);
    v50 = *(v0 + 360);
    [result setHidden:0];

    v24 = sub_100086B6C();
    v26 = *v25;
    *(v0 + 184) = v25[1];
    *(v0 + 168) = v26;
    v27 = v25[2];
    v28 = v25[3];
    v29 = v25[4];
    *(v0 + 248) = *(v25 + 80);
    *(v0 + 232) = v29;
    *(v0 + 216) = v28;
    *(v0 + 200) = v27;
    *v25 = v53;
    *(v25 + 1) = v14;
    *(v25 + 2) = v54;
    *(v25 + 3) = v15;
    *(v25 + 4) = 0;
    *(v25 + 5) = v51;
    *(v25 + 6) = v18;
    *(v25 + 7) = v52;
    *(v25 + 8) = v19;
    *(v25 + 9) = 0;
    *(v25 + 80) = 1;
    sub_10000E018(v0 + 168);
    v24(v0 + 296, 0);
  }

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_10001DD08(uint64_t a1, void *a2)
{
  v3 = sub_100001FB4((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

uint64_t sub_10001DEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_10008609C();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  sub_1000873FC();
  v4[9] = sub_1000873EC();
  v9 = sub_1000873DC();

  return _swift_task_switch(sub_10001DFF4, v9, v8);
}

uint64_t sub_10001DFF4()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  v0[10] = _Block_copy(v5);
  sub_10008607C();
  sub_100023834(&qword_1000AE428, &type metadata accessor for UUID);
  v8 = sub_1000874BC();
  v0[11] = v8;
  v9 = v4;
  v10 = swift_task_alloc();
  v0[12] = v10;
  *v10 = v0;
  v10[1] = sub_10001E120;
  v11 = v0[8];
  v12 = v0[5];

  return MainHostViewController.receive(carrySettingsHomeID:identifiers:)(v11, v8);
}

uint64_t sub_10001E120()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 96);
  v6 = *(*v1 + 88);
  v7 = *(*v1 + 64);
  v8 = *(*v1 + 56);
  v9 = *(*v1 + 48);
  v10 = *(*v1 + 40);
  v11 = *v1;

  (*(v8 + 8))(v7, v9);

  v12 = *(v3 + 80);
  if (v2)
  {
    v13 = sub_10008600C();

    (*(v12 + 16))(v12, v13);
  }

  else
  {
    (*(v12 + 16))(*(v3 + 80), 0);
  }

  v14 = *(v4 + 80);
  v15 = *(v4 + 64);
  _Block_release(v14);

  v16 = *(v11 + 8);

  return v16();
}

uint64_t MainHostViewController.receive(carrySettingsHomeID:)(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  sub_1000873FC();
  v2[20] = sub_1000873EC();
  v4 = sub_1000873DC();
  v2[21] = v4;
  v2[22] = v3;

  return _swift_task_switch(sub_10001E3C8, v4, v3);
}

uint64_t sub_10001E3C8()
{
  v1 = v0[18];
  v2 = v0[19];
  isa = sub_10008606C().super.isa;
  v0[23] = isa;
  sub_10008609C();
  sub_100023834(&qword_1000AE428, &type metadata accessor for UUID);
  v4 = sub_10008749C().super.isa;
  v0[24] = v4;
  v0[2] = v0;
  v0[3] = sub_10001E554;
  v5 = swift_continuation_init();
  v0[17] = sub_100001EEC(&qword_1000AE430, &qword_100089B08);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10001BF1C;
  v0[13] = &unk_1000A7740;
  v0[14] = v5;
  [v2 receiveWithCarrySettingsHomeID:isa identifiers:v4 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10001E554()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 200) = v3;
  v4 = *(v1 + 176);
  v5 = *(v1 + 168);
  if (v3)
  {
    v6 = sub_10001E6F4;
  }

  else
  {
    v6 = sub_10001E684;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_10001E684()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[20];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10001E6F4()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  v4 = v0[20];

  swift_willThrow();

  v5 = v0[1];
  v6 = v0[25];

  return v5();
}

uint64_t sub_10001E8FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_10008609C();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  sub_1000873FC();
  v3[8] = sub_1000873EC();
  v8 = sub_1000873DC();

  return _swift_task_switch(sub_10001E9F4, v8, v7);
}

uint64_t sub_10001E9F4()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];

  v0[9] = _Block_copy(v3);
  sub_10008607C();
  v6 = v4;
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_10001EAC4;
  v8 = v0[7];
  v9 = v0[4];

  return MainHostViewController.receive(carrySettingsHomeID:)(v8);
}

uint64_t sub_10001EAC4()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 56);
  v7 = *(*v1 + 48);
  v8 = *(*v1 + 40);
  v9 = *(*v1 + 32);
  v10 = *v1;

  (*(v7 + 8))(v6, v8);

  v11 = *(v3 + 72);
  if (v2)
  {
    v12 = sub_10008600C();

    (*(v11 + 16))(v11, v12);
  }

  else
  {
    (*(v11 + 16))(*(v3 + 72), 0);
  }

  v13 = *(v4 + 72);
  v14 = *(v4 + 56);
  _Block_release(v13);

  v15 = *(v10 + 8);

  return v15();
}

uint64_t sub_10001ECB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v25 - v10;
  if (a2)
  {
    v12 = sub_10008742C();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
    sub_1000873FC();
    v13 = sub_1000873EC();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = &protocol witness table for MainActor;
    v14[4] = a1;
    v14[5] = a2;
    sub_100016C64(0, 0, v11, &unk_100089D68, v14);
  }

  if (qword_1000ADBD8 != -1)
  {
    swift_once();
  }

  v15 = sub_100001EEC(&qword_1000AE570, &qword_100089D58);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();

  sub_100021CCC(v18, a3, a4);

  sub_100006454(&qword_1000AE578, &qword_1000AE570, &qword_100089D58);
  v19 = sub_1000868FC();
  v21 = v20;
  v30 = 0;
  sub_100086E7C();
  v22 = v26;
  v23 = v27;
  v26 = v19;
  v27 = v21;
  v28 = v22;
  v29 = v23;
  return sub_100086B5C();
}

uint64_t sub_10001EEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1000873FC();
  v5[4] = sub_1000873EC();
  v7 = sub_1000873DC();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_10001EF8C, v7, v6);
}

uint64_t sub_10001EF8C()
{
  sub_10005844C();
  if (qword_1000ADBD8 != -1)
  {
    swift_once();
  }

  v1 = qword_1000B3B58;
  *(v0 + 56) = qword_1000B3B58;

  return _swift_task_switch(sub_10001F040, v1, 0);
}

uint64_t sub_10001F040()
{
  v0[8] = *(v0[7] + 120);

  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_10001F0EC;
  v3 = v0[2];
  v2 = v0[3];

  return sub_100068FBC(v3, v2);
}

uint64_t sub_10001F0EC()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v7 = *v0;

  v4 = *(v1 + 48);
  v5 = *(v1 + 40);

  return _swift_task_switch(sub_10001F230, v5, v4);
}

uint64_t sub_10001F230()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

id sub_10001F2A8(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v8.receiver = a1;
  v8.super_class = a4(0);
  v5 = a3;
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", v5);

  if (v6)
  {
  }

  return v6;
}

uint64_t sub_10001F3A4(unint64_t isUniquelyReferenced_nonNull_native, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a2 || !isUniquelyReferenced_nonNull_native)
    {
    }

    v36 = result;
    v5 = sub_10007504C(_swiftEmptyArrayStorage);
    v6 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
    if (isUniquelyReferenced_nonNull_native >> 62)
    {
LABEL_37:
      v7 = sub_10008793C();
      if (v7)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v7 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
LABEL_7:
        v37 = v6;
        v38 = v7;
        v8 = 0;
        v39 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
        do
        {
          if (v39)
          {
            v11 = sub_10008781C();
          }

          else
          {
            if (v8 >= *(v37 + 16))
            {
              goto LABEL_35;
            }

            v11 = *(isUniquelyReferenced_nonNull_native + 8 * v8 + 32);
          }

          v12 = v11;
          v10 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            __break(1u);
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
            goto LABEL_37;
          }

          v13 = [v11 programID];
          v14 = [v12 title];
          if (!v14)
          {
            v27 = sub_10006E704(v13);
            if (v28)
            {
              v6 = v27;
              if (!swift_isUniquelyReferenced_nonNull_native())
              {
                sub_100073CAC();
              }

              v29 = *(v5[7] + 16 * v6 + 8);

              sub_100072570(v6, v5);
            }

            else
            {
            }

            goto LABEL_10;
          }

          v15 = isUniquelyReferenced_nonNull_native;
          v16 = v14;
          v17 = sub_10008715C();
          v19 = v18;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v6 = sub_10006E704(v13);
          v21 = v5[2];
          v22 = (v20 & 1) == 0;
          v23 = v21 + v22;
          if (__OFADD__(v21, v22))
          {
            goto LABEL_34;
          }

          v24 = v20;
          if (v5[3] >= v23)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              if ((v20 & 1) == 0)
              {
                goto LABEL_28;
              }
            }

            else
            {
              sub_100073CAC();
              if ((v24 & 1) == 0)
              {
                goto LABEL_28;
              }
            }
          }

          else
          {
            sub_1000711D0(v23, isUniquelyReferenced_nonNull_native);
            v25 = sub_10006E704(v13);
            if ((v24 & 1) != (v26 & 1))
            {
              result = sub_100087A5C();
              __break(1u);
              return result;
            }

            v6 = v25;
            if ((v24 & 1) == 0)
            {
LABEL_28:
              v5[(v6 >> 6) + 8] |= 1 << v6;
              *(v5[6] + 8 * v6) = v13;
              v30 = (v5[7] + 16 * v6);
              *v30 = v17;
              v30[1] = v19;

              v31 = v5[2];
              v32 = __OFADD__(v31, 1);
              v33 = v31 + 1;
              if (v32)
              {
                goto LABEL_36;
              }

              v5[2] = v33;
              goto LABEL_9;
            }
          }

          v9 = (v5[7] + 16 * v6);
          v6 = v9[1];
          *v9 = v17;
          v9[1] = v19;

LABEL_9:
          isUniquelyReferenced_nonNull_native = v15;
          v7 = v38;
          v10 = v8 + 1;
LABEL_10:
          ++v8;
        }

        while (v10 != v7);
      }
    }

    v34 = *(*v36 + 136);
    v35 = *(v36 + v34);
    *(v36 + v34) = v5;
  }

  return result;
}

uint64_t sub_10001F6BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_100023B40(0, &qword_1000AE688, SDBetaProgram_ptr);
    v4 = sub_1000872CC();
  }

  v6(v4, a3);
}

uint64_t sub_10001F74C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001F844;

  return v7(a1);
}

uint64_t sub_10001F844()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10001F93C()
{
  v0 = sub_100001EEC(qword_1000AE0C0, &qword_100089AE0);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_1000AE690;
    v3 = &unk_10008A110;
  }

  else
  {
    v2 = &unk_1000AE698;
    v3 = &unk_10008A118;
  }

  return sub_100001EEC(v2, v3);
}

uint64_t sub_10001F9B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000324C;

  return sub_10001AF94(a1, v4, v5, v6);
}

uint64_t sub_10001FA78(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_10001FB4C()
{
  result = qword_1000AE438;
  if (!qword_1000AE438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE438);
  }

  return result;
}

void *sub_10001FBA0(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_10008772C();
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_10006F448(v2, 0);

    v1 = sub_100036F60(&v5, v3 + 4, v2, v1);
    sub_100023AA8();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = *(v1 + 16);
    if (!v2)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

unint64_t *sub_10001FC50(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_100022280(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_10001FCEC(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_10001FDE0;

  return v6(v2 + 32);
}

uint64_t sub_10001FDE0()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

void *sub_10001FEF4(uint64_t a1)
{
  v1 = a1;
  v30 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_10008772C();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    v36 = _swiftEmptyArrayStorage;
    sub_10006F76C(0, v2 & ~(v2 >> 63), 0);
    v31 = _swiftEmptyArrayStorage;
    if (v30)
    {
      result = sub_1000876DC();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      result = sub_1000876AC();
      v4 = *(v1 + 36);
    }

    v33 = result;
    v34 = v4;
    v35 = v30 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v28 = v1 + 56;
      v27 = v1 + 64;
      v29 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_35;
        }

        v9 = v33;
        v10 = v34;
        v11 = v35;
        v12 = v1;
        v32[4] = sub_100082AFC(v33, v34, v35, v1);
        swift_getAtKeyPath();

        v13 = v31;
        v14 = v32[0];
        v36 = v31;
        v16 = v31[2];
        v15 = v31[3];
        if (v16 >= v15 >> 1)
        {
          result = sub_10006F76C((v15 > 1), v16 + 1, 1);
          v13 = v36;
        }

        v13[2] = v16 + 1;
        v13[v16 + 4] = v14;
        v31 = v13;
        if (v30)
        {
          if (!v11)
          {
            goto LABEL_40;
          }

          v1 = v12;
          if (sub_1000876FC())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v29;
          sub_100001EEC(&qword_1000AE620, &qword_10008A0B8);
          v7 = sub_1000874FC();
          sub_10008776C();
          result = v7(v32, 0);
          if (v6 == v29)
          {
LABEL_32:
            sub_100023A34(v33, v34, v35);
            return v31;
          }
        }

        else
        {
          if (v11)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v12;
          v17 = 1 << *(v12 + 32);
          if (v9 >= v17)
          {
            goto LABEL_36;
          }

          v18 = v9 >> 6;
          v19 = *(v28 + 8 * (v9 >> 6));
          if (((v19 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v12 + 36) != v10)
          {
            goto LABEL_38;
          }

          v20 = v19 & (-2 << (v9 & 0x3F));
          if (v20)
          {
            v17 = __clz(__rbit64(v20)) | v9 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v21 = v18 << 6;
            v22 = v18 + 1;
            v23 = (v27 + 8 * v18);
            while (v22 < (v17 + 63) >> 6)
            {
              v25 = *v23++;
              v24 = v25;
              v21 += 64;
              ++v22;
              if (v25)
              {
                result = sub_100023A34(v9, v10, 0);
                v17 = __clz(__rbit64(v24)) + v21;
                goto LABEL_31;
              }
            }

            result = sub_100023A34(v9, v10, 0);
          }

LABEL_31:
          v26 = *(v12 + 36);
          v33 = v17;
          v34 = v26;
          v35 = 0;
          v2 = v29;
          if (v6 == v29)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }

  return result;
}

size_t sub_10002024C(uint64_t a1, char *a2)
{
  v210 = a2;
  v200 = a1;
  v214 = sub_1000861CC();
  v204 = *(v214 - 8);
  v2 = *(v204 + 64);
  __chkstk_darwin(v214);
  v203 = &v174 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = type metadata accessor for ProfileListViewModel();
  v189 = *(v190 - 8);
  v4 = *(v189 + 64);
  __chkstk_darwin(v190);
  v186 = (&v174 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_100001EEC(&qword_1000AE5D8, &qword_10008A070);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v212 = &v174 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v209 = &v174 - v11;
  __chkstk_darwin(v10);
  v176 = &v174 - v12;
  v197 = sub_10008614C();
  v207 = *(v197 - 8);
  v13 = *(v207 + 64);
  v14 = __chkstk_darwin(v197);
  v191 = &v174 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v205 = &v174 - v17;
  __chkstk_darwin(v16);
  v208 = &v174 - v18;
  v195 = sub_100001EEC(&qword_1000AE5D0, &qword_100089EB0);
  v199 = *(v195 - 8);
  v19 = *(v199 + 64);
  v20 = __chkstk_darwin(v195);
  v194 = &v174 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v175 = &v174 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = &v174 - v25;
  __chkstk_darwin(v24);
  v206 = &v174 - v27;
  v202 = sub_100001EEC(&qword_1000AE5E0, &qword_10008A078);
  v201 = *(v202 - 8);
  v28 = *(v201 + 64);
  __chkstk_darwin(v202);
  v198 = &v174 - v29;
  v196 = sub_100001EEC(&qword_1000AE5E8, &qword_10008A080);
  v30 = *(*(v196 - 1) + 64);
  v31 = __chkstk_darwin(v196);
  v193 = (&v174 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v31);
  v192 = &v174 - v33;
  v188 = sub_100001EEC(&qword_1000AE3E8, &qword_100089D70);
  v187 = *(v188 - 8);
  v34 = *(v187 + 64);
  __chkstk_darwin(v188);
  v184 = &v174 - v35;
  v183 = sub_100001EEC(&qword_1000AE5F0, &qword_10008A088);
  v182 = *(v183 - 8);
  v36 = *(v182 + 64);
  __chkstk_darwin(v183);
  v181 = &v174 - v37;
  v213 = sub_100001EEC(&qword_1000AE5F8, &unk_10008A090);
  v38 = *(*(v213 - 8) + 64);
  v39 = __chkstk_darwin(v213);
  v211 = (&v174 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v39);
  v178 = &v174 - v41;
  v180 = sub_100001EEC(&qword_1000AE600, &unk_10008D650);
  v179 = *(v180 - 8);
  v42 = *(v179 + 64);
  __chkstk_darwin(v180);
  v44 = &v174 - v43;
  v177 = sub_100001EEC(&qword_1000AE608, &unk_10008A0A0);
  v45 = *(v177 - 8);
  v46 = *(v45 + 64);
  __chkstk_darwin(v177);
  v48 = &v174 - v47;
  v49 = sub_100001EEC(&qword_1000AE3E0, &unk_100089E60);
  v50 = *(*(v49 - 8) + 64);
  v51 = __chkstk_darwin(v49);
  v53 = &v174 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v55 = &v174 - v54;
  v56 = qword_1000B03C0;
  v57 = sub_10008642C();
  (*(*(v57 - 8) + 56))(v55, 1, 1, v57);
  sub_10000E4A4(v55, v53, &qword_1000AE3E0, &unk_100089E60);
  sub_1000867AC();
  sub_10000649C(v55, &qword_1000AE3E0, &unk_100089E60);
  v58 = v185;
  (*(v45 + 32))(v185 + v56, v48, v177);
  v59 = qword_1000B03D8;
  v220 = 0;
  v221 = 0;
  sub_100001EEC(&qword_1000AE610, &unk_10008C960);
  sub_1000867AC();
  (*(v179 + 32))(v58 + v59, v44, v180);
  v60 = qword_1000B03E0;
  v61 = sub_10008632C();
  v62 = *(v61 - 8);
  v179 = *(v62 + 56);
  v180 = v62 + 56;
  v63 = v178;
  (v179)(v178, 1, 1, v61);
  sub_10000E4A4(v63, v211, &qword_1000AE5F8, &unk_10008A090);
  v64 = v181;
  sub_1000867AC();
  sub_10000649C(v63, &qword_1000AE5F8, &unk_10008A090);
  v182 = *(v182 + 32);
  v65 = v58;
  v66 = v183;
  (v182)(v58 + v60, v64, v183);
  v67 = qword_1000B03E8;
  LOBYTE(v220) = 1;
  v68 = v184;
  sub_1000867AC();
  (*(v187 + 32))(v65 + v67, v68, v188);
  v69 = (v65 + qword_1000B3C30);
  *v69 = 0;
  v69[1] = 0;
  v70 = qword_1000B03F0;
  (v179)(v63, 1, 1, v61);
  sub_10000E4A4(v63, v211, &qword_1000AE5F8, &unk_10008A090);
  sub_1000867AC();
  v71 = v200;
  sub_10000649C(v63, &qword_1000AE5F8, &unk_10008A090);
  (v182)(v65 + v70, v64, v66);
  v72 = (v65 + qword_1000B3C38);
  *v72 = 0;
  v72[1] = 0;
  v73 = qword_1000B0400;
  v74 = sub_1000863FC();
  v75 = v192;
  (*(*(v74 - 8) + 56))(v192, 1, 1, v74);
  sub_10000E4A4(v75, v193, &qword_1000AE5E8, &qword_10008A080);
  v76 = v198;
  sub_1000867AC();
  sub_10000649C(v75, &qword_1000AE5E8, &qword_10008A080);
  (*(v201 + 32))(v65 + v73, v76, v202);
  *(v65 + qword_1000B3C40) = v71;
  *(v65 + qword_1000B3C48) = v210;
  v196 = *(v71 + 16);
  if (v196)
  {
    v220 = _swiftEmptyArrayStorage;

    result = sub_10008787C();
    v71 = v200;
    v78 = 0;
    v79 = v200 + ((*(v199 + 80) + 32) & ~*(v199 + 80));
    while (v78 < *(v71 + 16))
    {
      v80 = (v78 + 1);
      sub_10000E4A4(v79 + *(v199 + 72) * v78, v26, &qword_1000AE5D0, &qword_100089EB0);
      v81 = *&v26[*(v195 + 36)];
      sub_10000649C(v26, &qword_1000AE5D0, &qword_100089EB0);
      sub_10008784C();
      v82 = v220[2];
      sub_10008788C();
      sub_10008789C();
      result = sub_10008785C();
      v71 = v200;
      v78 = v80;
      if (v196 == v80)
      {
        v83 = v220;
        goto LABEL_7;
      }
    }

LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v83 = _swiftEmptyArrayStorage;
LABEL_7:
  *(v185 + qword_1000B3C50) = v83;
  v84 = *(v71 + 16);
  v85 = v176;
  v86 = v208;
  v87 = v206;
  v213 = v84;
  if (v84)
  {
    v88 = 0;
    v211 = (v207 + 8);
    v202 = v84 - 1;
    v210 = _swiftEmptyArrayStorage;
LABEL_9:
    v89 = v88;
    while (v89 < *(v71 + 16))
    {
      sub_10000E4A4(v71 + ((*(v199 + 80) + 32) & ~*(v199 + 80)) + *(v199 + 72) * v89, v87, &qword_1000AE5D0, &qword_100089EB0);
      v88 = v89 + 1;
      sub_10008645C();
      sub_1000860FC();
      v90 = sub_1000860EC();
      v91 = *(v90 - 8);
      if ((*(v91 + 48))(v85, 1, v90) != 1)
      {
        v92 = v209;
        sub_10000E4A4(v85, v209, &qword_1000AE5D8, &qword_10008A070);
        v201 = sub_1000860DC();
        v198 = v93;
        (*(v91 + 8))(v92, v90);
        sub_10000649C(v85, &qword_1000AE5D8, &qword_10008A070);
        (*v211)(v86, v197);
        sub_10000649C(v87, &qword_1000AE5D0, &qword_100089EB0);
        v94 = v210;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_10006EC0C(0, *(v94 + 2) + 1, 1, v94);
          v94 = result;
        }

        v96 = *(v94 + 2);
        v95 = *(v94 + 3);
        if (v96 >= v95 >> 1)
        {
          result = sub_10006EC0C((v95 > 1), v96 + 1, 1, v94);
          v94 = result;
        }

        *(v94 + 2) = v96 + 1;
        v210 = v94;
        v97 = &v94[16 * v96];
        v98 = v198;
        *(v97 + 4) = v201;
        *(v97 + 5) = v98;
        v71 = v200;
        v86 = v208;
        v87 = v206;
        v84 = v213;
        if (v202 != v89)
        {
          goto LABEL_9;
        }

        goto LABEL_21;
      }

      sub_10000649C(v85, &qword_1000AE5D8, &qword_10008A070);
      (*v211)(v86, v197);
      result = sub_10000649C(v87, &qword_1000AE5D0, &qword_100089EB0);
      ++v89;
      v84 = v213;
      v71 = v200;
      if (v213 == v88)
      {
        goto LABEL_21;
      }
    }

LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    return result;
  }

  v210 = _swiftEmptyArrayStorage;
LABEL_21:
  v99 = sub_100082D20(v210);

  if (*(v99 + 16) == 1)
  {
    v100 = sub_1000779F4(v99);
    v102 = v101;

    v103 = v205;
    if (v102)
    {
      goto LABEL_26;
    }
  }

  else
  {

    v103 = v205;
  }

  v100 = 0;
  v102 = 0xE000000000000000;
LABEL_26:
  swift_beginAccess();
  v215 = v100;
  v216 = v102;
  sub_1000867AC();
  result = swift_endAccess();
  if (v84)
  {
    v104 = 0;
    v211 = (v207 + 8);
    v206 = (v84 - 1);
    v208 = _swiftEmptyArrayStorage;
    v105 = &qword_100089EB0;
    v106 = v200;
    v107 = v175;
LABEL_28:
    v108 = v104;
    while (v108 < *(v106 + 16))
    {
      sub_10000E4A4(v106 + ((*(v199 + 80) + 32) & ~*(v199 + 80)) + *(v199 + 72) * v108, v107, &qword_1000AE5D0, v105);
      v109 = v107;
      sub_10008645C();
      v110 = v105;
      v111 = v212;
      sub_1000860FC();
      v112 = sub_1000860EC();
      v113 = v103;
      v114 = *(v112 - 8);
      if ((*(v114 + 48))(v111, 1, v112) == 1)
      {
        sub_10000649C(v111, &qword_1000AE5D8, &qword_10008A070);
        (*v211)(v113, v197);
        result = sub_10000649C(v107, &qword_1000AE5D0, v110);
        v103 = v113;
        v105 = v110;
      }

      else
      {
        v115 = v209;
        sub_10000E4A4(v111, v209, &qword_1000AE5D8, &qword_10008A070);
        v116 = sub_1000860BC();
        v210 = v117;
        (*(v114 + 8))(v115, v112);
        sub_10000649C(v111, &qword_1000AE5D8, &qword_10008A070);
        (*v211)(v113, v197);
        result = sub_10000649C(v109, &qword_1000AE5D0, v110);
        v103 = v113;
        v107 = v109;
        v118 = v210;
        v105 = v110;
        if (v210)
        {
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_10006EC0C(0, *(v208 + 2) + 1, 1, v208);
            v208 = result;
          }

          v120 = *(v208 + 2);
          v119 = *(v208 + 3);
          if (v120 >= v119 >> 1)
          {
            result = sub_10006EC0C((v119 > 1), v120 + 1, 1, v208);
            v208 = result;
          }

          v104 = v108 + 1;
          v121 = v208;
          *(v208 + 2) = v120 + 1;
          v122 = &v121[16 * v120];
          *(v122 + 4) = v116;
          *(v122 + 5) = v118;
          v103 = v205;
          v106 = v200;
          if (v206 != v108)
          {
            goto LABEL_28;
          }

          goto LABEL_41;
        }
      }

      ++v108;
      v106 = v200;
      if (v213 == v108)
      {
        goto LABEL_41;
      }
    }

    goto LABEL_80;
  }

  v208 = _swiftEmptyArrayStorage;
LABEL_41:
  v123 = sub_100082D20(v208);

  if (*(v123 + 16) == 1)
  {
    v124 = sub_1000779F4(v123);
    v126 = v125;

    if (v126)
    {
      goto LABEL_46;
    }
  }

  else
  {
  }

  v124 = 0;
  v126 = 0xE000000000000000;
LABEL_46:
  swift_beginAccess();
  v215 = v124;
  v216 = v126;
  sub_1000867AC();
  swift_endAccess();
  if (v196)
  {
    v219 = _swiftEmptyArrayStorage;
    result = sub_10006F728(0, v196, 0);
    v127 = 0;
    v128 = v199;
    v129 = v200;
    v188 = v200 + ((*(v128 + 80) + 32) & ~*(v128 + 80));
    v193 = v219;
    v187 = v207 + 8;
    v202 = v204 + 16;
    v201 = v204 + 8;
    v130 = v186;
    v131 = v204;
    while (v127 < *(v129 + 16))
    {
      v132 = *(v128 + 72);
      v192 = v127;
      sub_10000E4A4(v188 + v132 * v127, v194, &qword_1000AE5D0, &qword_100089EB0);
      v133 = v191;
      sub_10008645C();
      v134 = sub_10008613C();
      (*v187)(v133, v197);
      v135 = *(v134 + 16);
      if (v135)
      {
        v218 = _swiftEmptyArrayStorage;
        sub_10008787C();
        v136 = (v134 + 64);
        v137 = -1 << *(v134 + 32);
        result = sub_1000876AC();
        v138 = result;
        v139 = 0;
        v198 = (v134 + 72);
        v205 = v135;
        v206 = (v134 + 64);
        while ((v138 & 0x8000000000000000) == 0 && v138 < 1 << *(v134 + 32))
        {
          v141 = v138 >> 6;
          if ((*&v136[8 * (v138 >> 6)] & (1 << v138)) == 0)
          {
            goto LABEL_74;
          }

          v142 = *(v134 + 36);
          v207 = v139;
          v208 = v142;
          v143 = v203;
          (*(v131 + 16))(v203, *(v134 + 56) + *(v131 + 72) * v138, v214);
          v144 = sub_10008619C();
          v211 = v145;
          v212 = v144;
          v146 = sub_10008618C();
          v209 = v147;
          v210 = v146;
          LODWORD(v213) = sub_1000861BC();
          v148 = type metadata accessor for ProfileViewModel();
          v149 = *(v148 + 48);
          v150 = *(v148 + 52);
          v151 = swift_allocObject();
          *(v151 + OBJC_IVAR____TtC16HPSUIViewService16ProfileViewModel_delegate + 8) = 0;
          swift_unknownObjectWeakInit();
          swift_beginAccess();
          v215 = 0;
          v216 = 0xE000000000000000;
          sub_1000867AC();
          swift_endAccess();
          swift_beginAccess();
          v215 = 0;
          v216 = 0xE000000000000000;
          sub_1000867AC();
          swift_endAccess();
          swift_beginAccess();
          v215 = 0;
          v216 = 0xE000000000000000;
          sub_1000867AC();
          swift_endAccess();
          v152 = (v151 + OBJC_IVAR____TtC16HPSUIViewService16ProfileViewModel_profileID);
          v153 = v209;
          *v152 = v210;
          v152[1] = v153;
          swift_beginAccess();
          v215 = v212;
          v216 = v211;
          sub_1000867AC();
          swift_endAccess();
          swift_beginAccess();
          v215 = 0;
          v216 = 0xE000000000000000;
          v217 = v213 & 1;
          sub_1000867AC();
          swift_endAccess();
          (*(v131 + 8))(v143, v214);
          sub_10008784C();
          v154 = v218[2];
          sub_10008788C();
          sub_10008789C();
          result = sub_10008785C();
          v140 = 1 << *(v134 + 32);
          if (v138 >= v140)
          {
            goto LABEL_75;
          }

          v136 = v206;
          v155 = *&v206[8 * v141];
          if ((v155 & (1 << v138)) == 0)
          {
            goto LABEL_76;
          }

          if (v208 != *(v134 + 36))
          {
            goto LABEL_77;
          }

          v156 = v155 & (-2 << (v138 & 0x3F));
          if (v156)
          {
            v140 = __clz(__rbit64(v156)) | v138 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v157 = v141 << 6;
            v158 = v141 + 1;
            v159 = &v198[8 * v141];
            while (v158 < (v140 + 63) >> 6)
            {
              v161 = *v159++;
              v160 = v161;
              v157 += 64;
              ++v158;
              if (v161)
              {
                result = sub_100023A34(v138, v208, 0);
                v140 = __clz(__rbit64(v160)) + v157;
                goto LABEL_52;
              }
            }

            result = sub_100023A34(v138, v208, 0);
          }

LABEL_52:
          v139 = v207 + 1;
          v138 = v140;
          if ((v207 + 1) == v205)
          {

            v162 = v218;
            v129 = v200;
            v130 = v186;
            goto LABEL_67;
          }
        }

        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

      v162 = _swiftEmptyArrayStorage;
      v129 = v200;
LABEL_67:
      v130[3] = v195;
      v130[4] = &off_1000A8868;
      v163 = sub_10002396C(v130);
      v164 = v194;
      sub_10000E4A4(v194, v163, &qword_1000AE5D0, &qword_100089EB0);
      v130[5] = v162;
      v165 = v130 + *(v190 + 24);
      sub_10008608C();
      sub_10000649C(v164, &qword_1000AE5D0, &qword_100089EB0);
      v166 = v193;
      v219 = v193;
      v167 = v130;
      v169 = v193[2];
      v168 = v193[3];
      if (v169 >= v168 >> 1)
      {
        sub_10006F728(v168 > 1, v169 + 1, 1);
        v129 = v200;
        v166 = v219;
      }

      v170 = v192 + 1;
      *(v166 + 16) = v169 + 1;
      v171 = (*(v189 + 80) + 32) & ~*(v189 + 80);
      v193 = v166;
      result = sub_1000239D0(v167, v166 + v171 + *(v189 + 72) * v169);
      v127 = v170;
      v130 = v167;
      v128 = v199;
      if (v170 == v196)
      {

        v172 = v193;
        goto LABEL_72;
      }
    }

    goto LABEL_81;
  }

  v172 = _swiftEmptyArrayStorage;
LABEL_72:
  v173 = v185;
  swift_beginAccess();
  v215 = v172;
  sub_100001EEC(&qword_1000AE618, &qword_10008A0B0);
  sub_1000867AC();
  swift_endAccess();
  return v173;
}

char *sub_100021CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v47 = a2;
  v48 = a3;
  v50 = *v3;
  v5 = v50;
  v51 = a1;
  v6 = sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v49 = &v43 - v8;
  v46 = sub_100001EEC(&qword_1000AE3E8, &qword_100089D70);
  v9 = *(v46 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v46);
  v12 = &v43 - v11;
  v13 = sub_100001EEC(&qword_1000AE580, &qword_100089D78);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v43 - v16;
  v18 = sub_100001EEC(&qword_1000AE588, &qword_100089D80);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v43 - v21;
  v23 = *(v5 + 96);
  v52 = &_swiftEmptySetSingleton;
  v45 = sub_100001EEC(&qword_1000AE590, &qword_100089D88);
  sub_1000867AC();
  v44 = *(v19 + 32);
  v44(&v4[v23], v22, v18);
  v24 = *(*v4 + 104);
  v52 = 0;
  sub_100001EEC(&qword_1000AE598, &qword_100089D90);
  sub_1000867AC();
  (*(v14 + 32))(&v4[v24], v17, v13);
  v25 = *(*v4 + 112);
  LOBYTE(v52) = 1;
  sub_1000867AC();
  (*(v9 + 32))(&v4[v25], v12, v46);
  v26 = *(*v4 + 120);
  if (qword_1000ADB88 != -1)
  {
    swift_once();
  }

  v27 = &v4[v26];
  v28 = unk_1000B3A20;
  v29 = byte_1000B3A28;
  v30 = qword_1000B3A30;
  *v27 = qword_1000B3A18;
  *(v27 + 1) = v28;
  v27[16] = v29;
  *(v27 + 3) = v30;
  v31 = *(*v4 + 128);
  v52 = &_swiftEmptySetSingleton;

  sub_1000867AC();
  v44(&v4[v31], v22, v18);
  v32 = *(*v4 + 136);
  v33 = sub_10008642C();
  (*(*(v33 - 8) + 56))(&v4[v32], 1, 1, v33);
  *&v4[*(*v4 + 152)] = 0;
  v34 = v51;
  *&v4[*(*v4 + 160)] = v51;
  v35 = &v4[*(*v4 + 144)];
  v36 = v48;
  *v35 = v47;
  *(v35 + 1) = v36;
  v37 = sub_10008742C();
  v38 = v49;
  (*(*(v37 - 8) + 56))(v49, 1, 1, v37);
  v39 = swift_allocObject();
  swift_weakInit();
  sub_1000873FC();
  swift_retain_n();

  v40 = sub_1000873EC();
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = &protocol witness table for MainActor;
  v41[4] = v39;
  v41[5] = v34;
  v41[6] = v50;

  sub_10005A070(0, 0, v38, &unk_100089DA0, v41);

  return v4;
}

unint64_t *sub_100022280(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v20 = 0;
  v21 = a4;
  v18 = a2;
  v19 = result;
  v4 = 0;
  v22 = a3;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v23 = *(*(v22 + 48) + 8 * v13);
    __chkstk_darwin(result);
    v17[2] = &v23;

    v14 = sub_10006E474(sub_100023CF0, v17, v21);

    if (v14)
    {
      *(v19 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_15:
        v16 = v22;

        return sub_100030C38(v19, v18, v20, v16);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10002242C(uint64_t a1, unint64_t a2)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = v3 & 0x3F;
  v5 = ((1 << v3) + 63) >> 6;
  v6 = 8 * v5;
  v29 = a2;

  if (v4 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v24 = &v24;
    v25 = v5;
    __chkstk_darwin(v7);
    v26 = &v24 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v26, v6);
    v27 = 0;
    v28 = v2;
    v5 = 0;
    v10 = *(v2 + 56);
    v2 += 56;
    v9 = v10;
    v11 = 1 << *(v2 - 24);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & v9;
    v6 = (v11 + 63) >> 6;
    while (v13)
    {
      v14 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_12:
      v17 = v14 | (v5 << 6);
      v30 = *(*(v28 + 48) + 8 * v17);
      __chkstk_darwin(v8);
      *(&v24 - 2) = &v30;

      v18 = sub_10006E474(sub_100023CF0, (&v24 - 4), v29);

      if (v18)
      {
        *&v26[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
        if (__OFADD__(v27++, 1))
        {
          __break(1u);
LABEL_16:
          v20 = sub_100030C38(v26, v25, v27, v28);
          goto LABEL_17;
        }
      }
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v5 >= v6)
      {
        goto LABEL_16;
      }

      v16 = *(v2 + 8 * v5);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v13 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v22 = swift_slowAlloc();
  v23 = v29;

  v20 = sub_10001FC50(v22, v5, v2, v23);

LABEL_17:

  return v20;
}

Swift::Int sub_1000226F0(uint64_t a1, unint64_t a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_10002242C(a1, a2);
  }

  v3 = &_swiftEmptySetSingleton;
  v23 = &_swiftEmptySetSingleton;

  sub_1000876EC();
  for (i = sub_10008775C(); i; i = sub_10008775C())
  {
    v21 = i;
    sub_100001EEC(&qword_1000AE5B8, &unk_10008DD20);
    v5 = swift_dynamicCast();
    v21 = v22;
    __chkstk_darwin(v5);
    v20[2] = &v21;
    v6 = sub_10006E474(sub_100023A40, v20, a2);
    v7 = v22;
    if (v6)
    {
      v8 = v3[2];
      if (v3[3] <= v8)
      {
        sub_1000806DC(v8 + 1);
        v3 = v23;
      }

      v9 = v3[5];
      sub_100087ADC();
      sub_100087AEC(v7);
      result = sub_100087AFC();
      v11 = (v3 + 7);
      v12 = -1 << *(v3 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~v3[(v13 >> 6) + 7]) != 0)
      {
        v15 = __clz(__rbit64((-1 << v13) & ~v3[(v13 >> 6) + 7])) | v13 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v16 = 0;
        v17 = (63 - v12) >> 6;
        do
        {
          if (++v14 == v17 && (v16 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v18 = v14 == v17;
          if (v14 == v17)
          {
            v14 = 0;
          }

          v16 |= v18;
          v19 = *&v11[8 * v14];
        }

        while (v19 == -1);
        v15 = __clz(__rbit64(~v19)) + (v14 << 6);
      }

      *&v11[(v15 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v15;
      *(v3[6] + 8 * v15) = v7;
      ++v3[2];
    }

    else
    {
    }
  }

  return v3;
}

id sub_10002295C(uint64_t a1)
{
  v3 = sub_100001EEC(&qword_1000AE668, &qword_10008A0F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = aBlock - v6;
  v8 = sub_100001EEC(&qword_1000AE670, &qword_10008A0F8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = aBlock - v11;
  v13 = *(*v1 + 96);
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100001EEC(&qword_1000AE678, &qword_10008A100);
  sub_1000867AC();
  (*(v9 + 32))(v1 + v13, v12, v8);
  v14 = *(*v1 + 104);
  aBlock[0] = 0;
  sub_100001EEC(&qword_1000AE680, &qword_10008A108);
  sub_1000867AC();
  (*(v4 + 32))(v1 + v14, v7, v3);
  *(v1 + *(*v1 + 112)) = 0;
  *(v1 + *(*v1 + 120)) = 0;
  v15 = *(*v1 + 136);
  *(v1 + v15) = sub_10007504C(_swiftEmptyArrayStorage);
  *(v1 + *(*v1 + 128)) = a1;
  v16 = objc_opt_self();

  result = [v16 sharedManager];
  if (result)
  {
    v18 = result;
    v19 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_100023B20;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001F6BC;
    aBlock[3] = &unk_1000A7B28;
    v20 = _Block_copy(aBlock);

    [v18 queryProgramsForSystemAccountsWithPlatforms:16 disableBuildPrefixMatching:1 completion:v20];
    _Block_release(v20);

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100022CC0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100022D00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000324C;

  return sub_10001D050(a1, v4, v5, v6);
}

uint64_t sub_100022E08(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MainHostViewController.HostError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MainHostViewController.HostError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100022FE0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000324C;

  return sub_10001FCEC(a1, v5);
}

uint64_t sub_10002309C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000324C;

  return sub_10001E8FC(v2, v3, v4);
}

uint64_t sub_100023168()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000324C;

  return sub_100040810(v2, v3, v5);
}

uint64_t sub_100023228(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000324C;

  return sub_1000408FC(a1, v4, v5, v7);
}

uint64_t sub_1000232F8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000324C;

  return sub_10001DEFC(v2, v3, v5, v4);
}

uint64_t sub_1000233B8()
{
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_100023400()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000324C;

  return sub_10001C150(v2, v3, v4);
}

uint64_t sub_1000234B4()
{
  _Block_release(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_100023504()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000324C;

  return sub_10001B858(v2, v3, v5, v4);
}

uint64_t sub_1000235DC(void (*a1)(void))
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  a1(*(v1 + 40));

  return swift_deallocObject();
}

uint64_t sub_10002362C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002740;

  return sub_10001EEF4(a1, v4, v5, v7, v6);
}

uint64_t sub_1000236EC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100023724()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return swift_deallocObject();
}

uint64_t sub_10002376C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100002740;

  return sub_1000179E0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100023834(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002387C()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

__n128 sub_1000238D4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t *sub_10002396C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1000239D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProfileListViewModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100023A34(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_100023AB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EEC(&qword_1000AE5D0, &qword_100089EB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100023B28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100023B40(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_100023B88()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100023BC0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000324C;

  return sub_10001F74C(a1, v5);
}

uint64_t sub_100023D0C(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 88);
  type metadata accessor for BetaSettingsRowViewModel();
  sub_10008739C();
  result = sub_1000867FC();
  if (v4 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    sub_10008767C();
    result = sub_1000867FC();
    if (v5 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

void sub_100023E30(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_100023E98()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000867DC();

  return v4;
}

uint64_t sub_100023F4C()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000867EC();
}

uint64_t sub_100024004()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000867DC();

  return v4;
}

uint64_t sub_1000240B8()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000867EC();
}

uint64_t sub_100024170()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  type metadata accessor for BetaSettingsRowViewModel();
  sub_10008739C();
  v4 = sub_1000867FC();
  (*(*(v4 - 8) + 8))(v0 + v1, v4);
  v5 = *(*v0 + 104);
  sub_10008767C();
  v6 = sub_1000867FC();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  v7 = *(v0 + *(*v0 + 128));
  swift_unknownObjectRelease();
  v8 = *(v0 + *(*v0 + 136));

  return v0;
}

uint64_t sub_1000242DC()
{
  sub_100024170();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_10002434C()
{
  v1[3] = v0;
  v1[4] = *v0;
  v1[5] = *v0;
  sub_1000873FC();
  v1[6] = sub_1000873EC();
  v3 = sub_1000873DC();
  v1[7] = v3;
  v1[8] = v2;

  return _swift_task_switch(sub_100024434, v3, v2);
}

uint64_t sub_100024434()
{
  v1 = v0[5];
  v2 = v0[3];
  sub_100059B74(0x68736572666552, 0xE700000000000000, v0[4], &off_1000A7C58);
  v0[9] = *(v2 + *(*v2 + 128));
  v3 = *(v1 + 88);
  v0[10] = v3;
  v4 = *(v3 + 48);
  v5 = *(v1 + 80);
  v0[11] = v5;
  v9 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_100024598;

  return v9(v5, v3);
}

uint64_t sub_100024598()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;

  if (v0)
  {

    v5 = *(v2 + 56);
    v6 = *(v2 + 64);
    v7 = sub_100026A08;
  }

  else
  {
    v5 = *(v2 + 56);
    v6 = *(v2 + 64);
    v7 = sub_1000246BC;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1000246BC()
{
  v1 = v0[3];
  if (sub_100024004())
  {
    v2 = v0[6];
    v3 = v0[3];

    if (!sub_100024004())
    {
      v5 = v0[10];
      v4 = v0[11];
      type metadata accessor for BetaSettingsRowViewModel();
      sub_10008732C();
    }

    v6 = v0[3];
    sub_100023F4C();
    v7 = v0[1];

    return v7();
  }

  else
  {
    v14 = (v0[10] + 40);
    v15 = (*v14 + **v14);
    v9 = (*v14)[1];
    v10 = swift_task_alloc();
    v0[13] = v10;
    *v10 = v0;
    v10[1] = sub_100024850;
    v11 = v0[10];
    v12 = v0[11];
    v13 = v0[9];

    return v15(v12, v11);
  }
}

uint64_t sub_100024850(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v7 = v4[7];
    v8 = v4[8];
    v9 = sub_100024B38;
  }

  else
  {
    v4[15] = a1;
    v7 = v4[7];
    v8 = v4[8];
    v9 = sub_100024978;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_100024978()
{
  v1 = v0[15];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v5 = v0[6];
  v6 = v0[3];
  v7 = v0[4];

  type metadata accessor for BetaSettingsRowViewModel();
  v8 = *(v6 + *(*v6 + 136));

  sub_1000279A8(v1, v4, v8);

  v0[2] = v1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  _s11DeviceModelVMa();
  sub_10008739C();
  swift_getWitnessTable();
  sub_1000879FC();

  sub_100059B74(0, 0xE000000000000000, v7, &off_1000A7C58);

  sub_100023F4C();
  v9 = v0[1];

  return v9();
}

uint64_t sub_100024B38()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[14];

  return v2();
}

uint64_t sub_100024BEC(uint64_t a1)
{
  v2 = *v1;
  sub_100059B74(a1, 0xEA00000000006C6CLL, *v1, &off_1000A7C58);
  sub_100023E98();
  v4 = *(v2 + 80);
  v5 = *(v2 + 88);
  type metadata accessor for BetaSettingsRowViewModel();
  sub_10008739C();
  swift_getWitnessTable();
  sub_10008725C();
}

uint64_t sub_100024CF0(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 112) = a1;
  *(v2 + 24) = *v1;
  *(v2 + 32) = *v1;
  sub_1000873FC();
  *(v2 + 40) = sub_1000873EC();
  v4 = sub_1000873DC();
  *(v2 + 48) = v4;
  *(v2 + 56) = v3;

  return _swift_task_switch(sub_100024DDC, v4, v3);
}

uint64_t sub_100024DDC()
{
  v22 = v0;
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  v4 = *(v0 + 112);
  strcpy(v21, "Set isActive=");
  HIWORD(v21[1]) = -4864;
  if (v4)
  {
    v5._countAndFlagsBits = 1702195828;
  }

  else
  {
    v5._countAndFlagsBits = 0x65736C6166;
  }

  if (v4)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v5._object = v6;
  sub_1000871BC(v5);

  sub_100059B74(v21[0], v21[1], v1, &off_1000A7C58);

  *(v3 + *(*v3 + 120)) = v4;
  *(v0 + 64) = *(v3 + *(*v3 + 128));
  v7 = *(v2 + 88);
  *(v0 + 72) = v7;
  v8 = *(v2 + 80);
  *(v0 + 80) = v8;
  if (v4 == 1)
  {
    v9 = *(v7 + 48);
    v19 = (v9 + *v9);
    v10 = v9[1];
    v11 = swift_task_alloc();
    *(v0 + 88) = v11;
    *v11 = v0;
    v11[1] = sub_1000250F0;

    return v19(v8, v7);
  }

  else
  {
    v13 = *(v0 + 24);
    v14 = *(v7 + 56);
    v20 = (v14 + *v14);
    v15 = v14[1];
    v16 = swift_task_alloc();
    *(v0 + 104) = v16;
    WitnessTable = swift_getWitnessTable();
    *v16 = v0;
    v16[1] = sub_100025400;
    v18 = *(v0 + 16);

    return v20(v18, v13, WitnessTable, v8, v7);
  }
}

uint64_t sub_1000250F0()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;

  if (v0)
  {
  }

  v5 = v2[3];
  v14 = (v2[9] + 32);
  v15 = (*v14 + **v14);
  v6 = (*v14)[1];
  v7 = swift_task_alloc();
  v2[12] = v7;
  WitnessTable = swift_getWitnessTable();
  *v7 = v4;
  v7[1] = sub_1000252E0;
  v10 = v2[9];
  v9 = v2[10];
  v11 = v2[8];
  v12 = v2[2];

  return v15(v12, v5, WitnessTable, v9, v10);
}

uint64_t sub_1000252E0()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v6 = *v0;

  v3 = *(v1 + 56);
  v4 = *(v1 + 48);

  return _swift_task_switch(sub_10000B0A0, v4, v3);
}

uint64_t sub_100025400()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v6 = *v0;

  v3 = *(v1 + 56);
  v4 = *(v1 + 48);

  return _swift_task_switch(sub_10000EAF0, v4, v3);
}

uint64_t sub_100025524()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100002740;

  return sub_10002434C();
}

uint64_t sub_100025628(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000324C;

  return sub_100024CF0(a1);
}

uint64_t sub_1000256BC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  v4 = *(*(sub_100001EEC(&qword_1000AEDC0, &qword_100088E40) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();

  return _swift_task_switch(sub_100025784, 0, 0);
}

uint64_t sub_100025784()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v6 = sub_10008742C();
  (*(*(v6 - 8) + 56))(v1, 1, 1, v6);
  v7 = swift_allocObject();
  swift_weakInit();
  sub_1000873FC();

  v8 = sub_1000873EC();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = *(v2 + 80);
  v9[5] = v4;
  v9[6] = *(v2 + 88);
  v9[7] = v7;
  v9[8] = v5;

  sub_100016950(0, 0, v1, &unk_10008A398, v9);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000258FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a5;
  v7[8] = a7;
  v7[5] = a1;
  v7[6] = a4;
  sub_1000873FC();
  v7[9] = sub_1000873EC();
  v9 = sub_1000873DC();
  v7[10] = v9;
  v7[11] = v8;

  return _swift_task_switch(sub_100025998, v9, v8);
}

uint64_t sub_100025998()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 96) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 104) = v3;
    *v3 = v0;
    v3[1] = sub_100025AA4;
    v5 = *(v0 + 56);
    v4 = *(v0 + 64);

    return sub_100025C5C(v5, v4);
  }

  else
  {
    v7 = *(v0 + 72);

    **(v0 + 40) = *(v0 + 96) == 0;
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_100025AA4()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v7 = *v0;

  v4 = *(v1 + 88);
  v5 = *(v1 + 80);

  return _swift_task_switch(sub_100025BE8, v5, v4);
}

uint64_t sub_100025BE8()
{
  v1 = *(v0 + 72);

  **(v0 + 40) = *(v0 + 96) == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100025C5C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = *v2;
  v3[7] = *v2;
  sub_1000873FC();
  v3[8] = sub_1000873EC();
  v5 = sub_1000873DC();

  return _swift_task_switch(sub_100025D48, v5, v4);
}

uint64_t sub_100025D48()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[4];

  sub_1000877DC(40);
  v15._object = 0x800000010008EE00;
  v15._countAndFlagsBits = 0xD000000000000026;
  sub_1000871BC(v15);
  v0[2] = v5;
  v9 = v2 + 80;
  v8 = *(v2 + 80);
  v7 = *(v9 + 8);
  swift_getAssociatedConformanceWitness();
  _s11DeviceModelVMa();
  sub_10008739C();
  swift_getWitnessTable();
  sub_1000879FC();
  sub_100059B74(0, 0xE000000000000000, v4, &off_1000A7C58);

  type metadata accessor for BetaSettingsRowViewModel();
  v10 = *(v3 + *(*v3 + 128));
  v11 = *(v3 + *(*v3 + 136));

  sub_1000279A8(v5, v10, v11);

  sub_100023F4C();
  sub_100025F28(2.5);
  v12 = v0[1];

  return v12();
}

void sub_100025F28(double a1)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  v5 = *(v1 + v4);
  if (v5)
  {
    [v5 invalidate];
  }

  v6 = objc_opt_self();
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = *(v3 + 80);
  v8[3] = *(v3 + 88);
  v8[4] = v7;
  v12[4] = sub_10002699C;
  v12[5] = v8;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100023E30;
  v12[3] = &unk_1000A7D08;
  v9 = _Block_copy(v12);

  v10 = [v6 scheduledTimerWithTimeInterval:0 repeats:v9 block:a1];
  _Block_release(v9);
  v11 = *(v1 + v4);
  *(v1 + v4) = v10;
}

uint64_t sub_1000260BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v19[0] = sub_100023E98();
  __chkstk_darwin(v19[0]);
  type metadata accessor for BetaSettingsRowViewModel();
  v6 = sub_10008739C();
  swift_getWitnessTable();
  v7 = sub_10008783C();
  if (!sub_10008738C())
  {
    goto LABEL_15;
  }

  v8 = 4;
  v17 = v6;
  while (1)
  {
    v9 = v6;
    v10 = v8 - 4;
    v11 = sub_10008734C();
    sub_1000872FC();
    if (!v11)
    {
      break;
    }

    v12 = *(v7 + 8 * v8);

    v13 = v8 - 3;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_14;
    }

LABEL_8:
    v19[0] = sub_100023E98();
    v6 = v9;
    sub_10008783C();
    sub_100023F4C();
    if (*(v12 + 16) && (v19[0] = *(v12 + 16), swift_getWitnessTable(), v14 = sub_1000875CC(), v19[4]))
    {
      __chkstk_darwin(v14);
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v16 = a4;
      swift_getKeyPath();

      v15 = sub_1000867CC();
      sub_10008737C();
      v15(v19, 0);
      a4 = v16;

      v6 = v17;
    }

    else
    {
    }

    ++v8;
    if (v13 == sub_10008738C())
    {
      goto LABEL_15;
    }
  }

  v12 = sub_10008780C();
  v13 = v8 - 3;
  if (!__OFADD__(v10, 1))
  {
    goto LABEL_8;
  }

LABEL_14:
  __break(1u);
LABEL_15:
}

BOOL sub_100026440(uint64_t a1)
{
  v1 = *(*a1 + 40);
  v2 = v1 != 2 && (v1 & 1) == 0;
  if (!v2 || !*(*a1 + 16))
  {
    return 0;
  }

  type metadata accessor for BetaSettingsRowViewModel();

  v3 = sub_10008736C();

  return v3 == 1;
}

BOOL sub_1000264C4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  v4 = *(*a2 + 80);
  v5 = *(v2 + 88);
  type metadata accessor for BetaSettingsRowViewModel();
  swift_getWitnessTable();
  v6 = sub_1000877FC();
  return v6 != sub_1000877FC();
}

uint64_t sub_100026580(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100002740;

  return sub_1000256BC(a1, a2);
}

uint64_t sub_100026624(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 80;
  v3 = *(a2 + 80);
  v2 = *(v4 + 8);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_100026640(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000266A0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100026708@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_100023E98();
  *a2 = result;
  return result;
}

uint64_t sub_100026734(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_100023F4C();
}

__n128 sub_10002676C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1000267A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_100024004();
  *a2 = result;
  return result;
}

uint64_t sub_1000267D0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1000240B8();
}

uint64_t sub_100026808()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100026840()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[7];

  v3 = v0[8];

  return swift_deallocObject();
}

uint64_t sub_100026888(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100002740;

  return sub_1000258FC(a1, v6, v7, v9, v10, v4, v5);
}

uint64_t sub_100026964()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1000269A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

BOOL sub_1000269C0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_100026440(a1);
}

Swift::Void __swiftcall UIViewController.wrap(subViewController:)(UIViewController subViewController)
{
  v3 = [(objc_class *)subViewController.super.super.isa view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v3;
  [v3 removeFromSuperview];

  [(objc_class *)subViewController.super.super.isa removeFromParentViewController];
  [(objc_class *)subViewController.super.super.isa willMoveToParentViewController:v1];
  [v1 addChildViewController:subViewController.super.super.isa];
  v5 = [(objc_class *)subViewController.super.super.isa view];
  if (v5)
  {
    v6 = v5;
    v7 = [v1 view];
    if (v7)
    {
      v8 = v7;
      [v7 addSubviewToBounds:v6 with:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

      v9 = [objc_opt_self() systemGroupedBackgroundColor];
      [v6 setBackgroundColor:v9];

      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return;
  }

LABEL_5:

  [(objc_class *)subViewController.super.super.isa didMoveToParentViewController:v1];
}

uint64_t sub_100026BC4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_100026C0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100026C7C@<X0>(ValueMetadata *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v26 = a4;
  v27 = a2;
  v28 = a3;
  v33 = a5;
  v34 = sub_100001EEC(&qword_1000AE7B8, &qword_10008A478);
  v32 = *(v34 - 8);
  v6 = *(v32 + 64);
  __chkstk_darwin(v34);
  v31 = &v25[-v7];
  v8 = sub_100086A8C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v25[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_100001EEC(&qword_1000AE7B0, &qword_10008A470);
  v29 = *(v13 - 8);
  v30 = v13;
  v14 = *(v29 + 64);
  __chkstk_darwin(v13);
  v35 = &v25[-v15];
  v36 = a1;
  v16 = qword_1000ADBB8;

  if (v16 != -1)
  {
    swift_once();
  }

  (*(v9 + 104))(v12, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v8);
  v17 = sub_1000272B4();
  sub_100086D8C();
  (*(v9 + 8))(v12, v8);

  if (qword_1000ADAF0 != -1)
  {
    swift_once();
  }

  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  v19 = v28;
  *(v18 + 24) = v27;
  *(v18 + 32) = v19;
  *(v18 + 40) = v26 & 1;

  v20 = v31;
  sub_100086EEC();
  v36 = &type metadata for ProfileListView;
  v37 = v17;
  swift_getOpaqueTypeConformance2();
  sub_100006454(&qword_1000AE7C8, &qword_1000AE7B8, &qword_10008A478);
  v21 = v34;
  v22 = v30;
  v23 = v35;
  sub_100086D7C();
  (*(v32 + 8))(v20, v21);
  return (*(v29 + 8))(v23, v22);
}

uint64_t sub_10002709C()
{

  sub_100001EEC(&qword_1000AE7D0, &qword_10008A480);
  sub_100086F6C();
  sub_100086F7C();
}

uint64_t sub_100027150()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  sub_100001EEC(&qword_1000AE7A8, &qword_10008A468);
  sub_100003200(&qword_1000AE7B0, &qword_10008A470);
  sub_100003200(&qword_1000AE7B8, &qword_10008A478);
  sub_1000272B4();
  swift_getOpaqueTypeConformance2();
  sub_100006454(&qword_1000AE7C8, &qword_1000AE7B8, &qword_10008A478);
  swift_getOpaqueTypeConformance2();
  return sub_1000868EC();
}

unint64_t sub_1000272B4()
{
  result = qword_1000AE7C0;
  if (!qword_1000AE7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE7C0);
  }

  return result;
}

uint64_t sub_100027308()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocObject();
}

uint64_t sub_100027350()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  return sub_10002709C();
}

uint64_t sub_1000273A4(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 56))())
  {
    swift_getAssociatedTypeWitness();
    sub_10008739C();
    swift_getWitnessTable();
    v2 = sub_1000875DC();

    v3 = v2 ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_100027470(uint64_t a1, uint64_t a2)
{
  v4 = sub_10008672C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 72))(a1, a2);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for BetaEnrollment.State.notEnrolled(_:))
  {
    return (*(a2 + 96))(a1, a2);
  }

  if (v9 == enum case for BetaEnrollment.State.enrolled(_:))
  {
    return (*(a2 + 112))(a1, a2);
  }

  return (*(v5 + 8))(v8, v4);
}

void sub_1000275E0(uint64_t a1)
{
  sub_10002B64C(319, &qword_1000AE8A0, &type metadata accessor for BetaEnrollment.Availability, &type metadata accessor for Published);
  if (v3 <= 0x3F)
  {
    v20 = *(v2 - 8) + 64;
    sub_10002B5F8(319, &qword_1000AE8A8, &qword_1000AE610, &unk_10008C960);
    if (v5 <= 0x3F)
    {
      v21 = *(v4 - 8) + 64;
      sub_10002B64C(319, &qword_1000AE8B0, &type metadata accessor for BetaEnrollment.State, &type metadata accessor for Published);
      if (v7 <= 0x3F)
      {
        v22 = *(v6 - 8) + 64;
        sub_10002B5A8();
        if (v9 <= 0x3F)
        {
          v23 = *(v8 - 8) + 64;
          sub_10002B5F8(319, &qword_1000AE8C0, &qword_1000AE8C8, &unk_10008A5A0);
          if (v11 <= 0x3F)
          {
            v24 = *(v10 - 8) + 64;
            sub_10002B5F8(319, &qword_1000AE8D0, &qword_1000ADD60, &qword_100088920);
            if (v13 <= 0x3F)
            {
              v25 = *(v12 - 8) + 64;
              v15 = *(a1 + 80);
              v14 = *(a1 + 88);
              swift_getAssociatedTypeWitness();
              swift_getAssociatedConformanceWitness();
              _s11DeviceModelVMa();
              v16 = sub_10008767C();
              if (v17 <= 0x3F)
              {
                v26 = *(v16 - 8) + 64;
                sub_10002B64C(319, &qword_1000AE8D8, &type metadata accessor for BetaEnrollment.State, &type metadata accessor for Optional);
                if (v19 <= 0x3F)
                {
                  v27 = *(v18 - 8) + 64;
                  swift_initClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_10002797C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_10008648C();
  *a2 = result;
  return result;
}

uint64_t sub_1000279A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v57 = a3;
  v59 = a2;
  v6 = *(v3 + 80);
  v69 = *(v3 + 88);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = _s11DeviceModelVMa();
  v8 = sub_10008767C();
  v61 = *(v8 - 8);
  v62 = v8;
  v9 = *(v61 + 64);
  __chkstk_darwin(v8);
  v63 = &v57 - v10;
  *&v98 = 0;
  *(&v98 + 1) = 0xE000000000000000;
  sub_1000877DC(36);
  v107._countAndFlagsBits = 0xD000000000000015;
  v107._object = 0x800000010008F000;
  sub_1000871BC(v107);
  *&v89 = a1;
  v70 = v7;
  v11 = sub_10008739C();
  swift_getWitnessTable();
  sub_1000879FC();
  v108._countAndFlagsBits = 0x726F7774656E202CLL;
  v108._object = 0xEB00000000203A6BLL;
  sub_1000871BC(v108);
  *&v89 = a2;
  sub_1000879EC();
  v12 = v98;
  v13 = v69;
  v58 = type metadata accessor for BetaSettingsRowViewModel();
  sub_100059920(v12, *(&v12 + 1), v58, &off_1000A7F38);

  v14 = sub_100044564(a1);
  v73 = v15;
  *&v98 = v15;
  v79[2] = v6;
  v79[3] = v13;
  v71 = &protocol conformance descriptor for [A];
  WitnessTable = swift_getWitnessTable();
  v72 = sub_100013210(sub_10003136C, v79, v11, &type metadata for String, &type metadata for Never, WitnessTable, &protocol witness table for Never, v16);
  *&v98 = v14;
  sub_1000870CC();
  swift_getWitnessTable();
  *&v98 = sub_10008726C();
  v78[6] = v6;
  v78[7] = v13;
  v78[8] = v14;
  sub_100001EEC(&qword_1000AE2B0, &qword_10008D800);
  v74 = &protocol conformance descriptor for [A];
  sub_100006454(&qword_1000AE980, &qword_1000AE2B0, &qword_10008D800);
  v17 = sub_10008722C();
  v68 = v17;

  v18 = v58;

  *&v98 = v17;
  v78[2] = v6;
  v78[3] = v13;
  v19 = sub_10008739C();
  v20 = swift_getWitnessTable();
  sub_100013210(sub_1000313AC, v78, v19, &type metadata for String, &type metadata for Never, v20, &protocol witness table for Never, v21);
  *&v98 = 0;
  *(&v98 + 1) = 0xE000000000000000;
  sub_1000877DC(32);

  strcpy(&v98, "Found solos: ");
  HIWORD(v98) = -4864;
  v22 = sub_1000872DC();
  v24 = v23;

  v109._countAndFlagsBits = v22;
  v109._object = v24;
  sub_1000871BC(v109);

  v110._countAndFlagsBits = 0x756C6320646E6120;
  v110._object = 0xEF203A7372657473;
  sub_1000871BC(v110);
  v25 = sub_1000872DC();
  v27 = v26;

  v111._countAndFlagsBits = v25;
  v111._object = v27;
  sub_1000871BC(v111);
  v28 = v59;

  sub_100059920(v98, *(&v98 + 1), v18, &off_1000A7F38);

  *&v98 = v73;
  v67 = v6;
  v75 = v6;
  v76 = v69;
  v77 = v28;
  v65 = swift_getWitnessTable();
  v29 = sub_10008722C();
  v74 = 0;
  v30 = v68;

  v106 = v29;
  if (sub_10008738C())
  {
    v31 = v70;
    v64 = v70 - 8;
    v61 += 8;
    v32 = 4;
    v33 = v63;
    while (1)
    {
      v34 = v32 - 4;
      v35 = sub_10008734C();
      sub_1000872FC();
      v73 = v32;
      if (v35)
      {
        v36 = *(v30 + 8 * v32);

        v37 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          goto LABEL_22;
        }
      }

      else
      {
        v36 = sub_10008780C();
        v37 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }
      }

      v72 = v37;
      v97 = v36;
      sub_1000875CC();
      v38 = *(v31 - 8);
      if ((*(v38 + 48))(v33, 1, v31) == 1)
      {
        break;
      }

      v40 = &v33[*(v31 + 40)];
      v41 = *(v40 + 5);
      v85 = *(v40 + 4);
      v86 = v41;
      v42 = *(v40 + 7);
      v87 = *(v40 + 6);
      v88 = v42;
      v43 = *(v40 + 1);
      v81 = *v40;
      v82 = v43;
      v44 = *(v40 + 3);
      v83 = *(v40 + 2);
      v84 = v44;
      sub_1000333E8(&v81, &v80);
      (*(v38 + 8))(v33, v31);
      v93 = v85;
      v94 = v86;
      v95 = v87;
      v96 = v88;
      v89 = v81;
      v90 = v82;
      v91 = v83;
      v92 = v84;
      v39 = nullsub_1(&v89);
      if (*(&v85 + 1))
      {
        v45 = *(&v86 + 1);
        v46 = v86;
      }

      else
      {
        if (!*(&v81 + 1))
        {
          goto LABEL_7;
        }

        v45 = *(&v82 + 1);
        v46 = v82;
      }

      v70 = v46;
      v71 = v45;
      v102 = v93;
      v103 = v94;
      v104 = v95;
      v105 = v96;
      v98 = v89;
      v99 = v90;
      v100 = v91;
      v101 = v92;

LABEL_13:
      *&v81 = v36;
      __chkstk_darwin(v39);
      v47 = v69;
      *(&v57 - 4) = v67;
      *(&v57 - 3) = v47;
      *(&v57 - 2) = v28;
      v48 = v74;
      v49 = sub_10008722C();
      v74 = v48;

      v93 = v102;
      v94 = v103;
      v95 = v104;
      v96 = v105;
      v89 = v98;
      v90 = v99;
      v91 = v100;
      v92 = v101;
      if (sub_1000332FC(&v89) == 1)
      {
        LOBYTE(v50) = 0;
      }

      else
      {
        v50 = *(&v89 + 1);
        v51 = v89;
        sub_100033360(v89, *(&v89 + 1));
        sub_10000649C(&v98, &qword_1000AE988, &qword_10008A770);
        if (v50)
        {
          sub_1000333A4(v51, v50);
          LOBYTE(v50) = 1;
        }

        v33 = v63;
      }

      swift_unknownObjectRetain();
      v52 = sub_100033270(v50, v70, v71, v49, v28);
      swift_unknownObjectRelease();
      *&v81 = v52;
      sub_10008739C();
      sub_10008737C();
      v30 = v68;
      if (v72 == sub_10008738C())
      {
        goto LABEL_23;
      }

      v32 = v73 + 1;
    }

    (*v61)(v33, v62);
    sub_1000332E4(&v89);
LABEL_7:
    v102 = v93;
    v103 = v94;
    v104 = v95;
    v105 = v96;
    v98 = v89;
    v99 = v90;
    v70 = 0x646F50656D6F48;
    v71 = 0xE700000000000000;
    v100 = v91;
    v101 = v92;
    goto LABEL_13;
  }

LABEL_23:

  v54 = v106;
  *&v98 = v106;
  __chkstk_darwin(v53);
  v55 = v57;
  *(&v57 - 2) = v60;
  *(&v57 - 1) = v55;
  sub_10008739C();

  swift_getWitnessTable();
  sub_10008725C();

  *&v98 = 0;
  *(&v98 + 1) = 0xE000000000000000;
  sub_1000877DC(22);
  v112._object = 0x800000010008F020;
  v112._countAndFlagsBits = 0xD000000000000014;
  sub_1000871BC(v112);
  *&v89 = v54;
  swift_getWitnessTable();
  sub_1000879FC();
  sub_100059920(v98, *(&v98 + 1), v18, &off_1000A7F38);

  return v54;
}

uint64_t sub_100028408()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v2 + 80);
  v8 = *(v2 + 88);
  v9 = type metadata accessor for BetaSettingsRowViewModel();
  sub_100059B74(0xD000000000000010, 0x800000010008EF90, v9, &off_1000A7F38);
  v10 = sub_10008742C();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  sub_1000873FC();

  v11 = sub_1000873EC();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = v1;
  sub_100016950(0, 0, v6, &unk_10008A758, v12);
}

uint64_t sub_100028588()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v25 = &v24 - v5;
  v6 = sub_10008672C();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = __chkstk_darwin(v6);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v24 - v12;
  v14 = *(v2 + 80);
  v15 = *(v2 + 88);
  v16 = type metadata accessor for BetaSettingsRowViewModel();
  sub_100059B74(0xD000000000000010, 0x800000010008EF50, v16, &off_1000A7F38);
  sub_100029070();
  v17 = v7[13];
  v17(v11, enum case for BetaEnrollment.State.enrolled(_:), v6);
  sub_1000312FC(qword_1000ADD68, &type metadata accessor for BetaEnrollment.State);
  sub_10008729C();
  sub_10008729C();
  v18 = v7[1];
  v18(v11, v6);
  v18(v13, v6);
  if (v27 == v26 || (sub_100029070(), v17(v11, enum case for BetaEnrollment.State.multiple(_:), v6), sub_10008729C(), sub_10008729C(), v18(v11, v6), result = (v18)(v13, v6), v27 == v26))
  {
    v20 = sub_10008742C();
    v21 = v25;
    (*(*(v20 - 8) + 56))(v25, 1, 1, v20);
    sub_1000873FC();

    v22 = sub_1000873EC();
    v23 = swift_allocObject();
    v23[2] = v22;
    v23[3] = &protocol witness table for MainActor;
    v23[4] = v1;
    sub_100016950(0, 0, v21, &unk_10008A730, v23);
  }

  return result;
}

unint64_t sub_100028918(uint64_t a1, char a2)
{
  if (a2)
  {
    result = sub_100028994(a1);
    if (v3)
    {
      return result;
    }

    v5 = &off_1000A63E8;
    v4 = 19;
    return sub_10000F8C4(v5, v4);
  }

  if (*(a1 + 16) == 1)
  {
    if (*(a1 + 32))
    {
      v4 = 16;
    }

    else
    {
      v4 = 18;
    }

    v5 = &off_1000A6398;
    return sub_10000F8C4(v5, v4);
  }

  result = sub_100028994(a1);
  if (!v6)
  {
    v5 = &off_1000A63C0;
    v4 = 16;
    return sub_10000F8C4(v5, v4);
  }

  return result;
}

unint64_t sub_100028994(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 == 1)
  {
    v2 = *(a1 + 32);
    if (v2 >= 0)
    {
      v3 = 17;
    }

    else
    {
      v3 = 18;
    }

    if (v2 >= 0)
    {
      v4 = 15;
    }

    else
    {
      v4 = 16;
    }

    if (*(a1 + 32))
    {
      v5 = v4;
    }

    else
    {
      v5 = v3;
    }

    v6 = &off_1000A62A8;
  }

  else
  {
    if (!v1)
    {
      return v1;
    }

    v7 = (a1 + 32);
    v8 = _swiftEmptyArrayStorage;
    do
    {
      v10 = *v7++;
      v9 = v10;
      sub_100001EEC(&qword_1000AE9B8, &unk_10008D020);
      result = swift_allocObject();
      v12 = result;
      if (v10 < 0)
      {
        *(result + 16) = xmmword_10008A4E0;
        *(result + 32) = v9 & 1;
        *(result + 33) = v9 & 1;
        v13 = 2;
      }

      else
      {
        *(result + 16) = xmmword_100089AB0;
        *(result + 32) = v9;
        v13 = 1;
      }

      v14 = *(v8 + 2);
      v15 = v14 + v13;
      if (__OFADD__(v14, v13))
      {
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        return result;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || v15 > *(v8 + 3) >> 1)
      {
        if (v14 <= v15)
        {
          v16 = v14 + v13;
        }

        else
        {
          v16 = v14;
        }

        result = sub_10006F00C(result, v16, 1, v8);
        v8 = result;
      }

      v17 = *(v8 + 2);
      if ((*(v8 + 3) >> 1) - v17 < v13)
      {
        goto LABEL_54;
      }

      memcpy(&v8[v17 + 32], (v12 + 32), v13);

      v18 = *(v8 + 2);
      if (__OFADD__(v18, v13))
      {
        goto LABEL_55;
      }

      *(v8 + 2) = v18 + v13;
      --v1;
    }

    while (v1);
    v19 = v13 + v18;
    v20 = 32;
    do
    {
      v23 = v8[v20];
      if ((v23 & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10006F6A8(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v22 = _swiftEmptyArrayStorage[2];
        v21 = _swiftEmptyArrayStorage[3];
        if (v22 >= v21 >> 1)
        {
          sub_10006F6A8((v21 > 1), v22 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v22 + 1;
        *(&_swiftEmptyArrayStorage[4] + v22) = v23;
      }

      ++v20;
      --v19;
    }

    while (v19);
    v24 = _swiftEmptyArrayStorage[2];

    v25 = v13 + v18;
    v26 = 32;
    do
    {
      v29 = v8[v26];
      if (v29)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10006F6A8(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v28 = _swiftEmptyArrayStorage[2];
        v27 = _swiftEmptyArrayStorage[3];
        if (v28 >= v27 >> 1)
        {
          sub_10006F6A8((v27 > 1), v28 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v28 + 1;
        *(&_swiftEmptyArrayStorage[4] + v28) = v29;
      }

      ++v26;
      --v25;
    }

    while (v25);

    v30 = _swiftEmptyArrayStorage[2];

    if (!v24)
    {
      if (v30)
      {
        v6 = &off_1000A6320;
        v5 = 16;
        return sub_10000F8C4(v6, v5);
      }

      return 0;
    }

    if (v30)
    {
      v6 = &off_1000A62D0;
      v5 = 19;
    }

    else
    {
      v6 = &off_1000A62F8;
      v5 = 18;
    }
  }

  return sub_10000F8C4(v6, v5);
}

uint64_t sub_100028D98()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000867DC();

  return v4;
}

uint64_t sub_100028E4C()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000867EC();
}

uint64_t sub_100028F20(char *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a4(0);
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v16 - v11;
  v13 = v6[2];
  v13(&v16 - v11, a1, v5);
  v13(v10, v12, v5);
  sub_1000867AC();
  v14 = v6[1];
  v14(a1, v5);
  return v14(v12, v5);
}

uint64_t sub_100029084()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000867DC();
}

uint64_t sub_100029160(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *v2;
  v5 = a2(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v13 - v8;
  v14 = *(v4 + 80);
  v10 = v14;
  v11 = *(v4 + 88);
  v15 = v11;
  swift_getKeyPath();
  v13[0] = v10;
  v13[1] = v11;
  swift_getKeyPath();
  (*(v6 + 16))(v9, a1, v5);

  sub_1000867EC();
  return (*(v6 + 8))(a1, v5);
}

uint64_t sub_100029308()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000867DC();

  return v4;
}

uint64_t sub_1000293BC()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000867EC();
}

uint64_t sub_1000294C8()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000867DC();

  return v4;
}

uint64_t sub_10002957C()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000867EC();
}

uint64_t sub_10002968C()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000867DC();

  return v4;
}

uint64_t sub_100029744()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000867EC();
}

uint64_t sub_100029808@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 192);
  swift_beginAccess();
  return sub_10000E4A4(v1 + v3, a1, &qword_1000AE970, &unk_10008A740);
}

uint64_t sub_10002987C(uint64_t a1)
{
  v3 = *(*v1 + 192);
  swift_beginAccess();
  sub_10003419C(a1, v1 + v3);
  swift_endAccess();
  sub_10002A174();
  return sub_10000649C(a1, &qword_1000AE970, &unk_10008A740);
}

uint64_t sub_100029904@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4 = _s11DeviceModelVMa();
  v5 = sub_10008767C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  (*(v6 + 16))(&v16 - v8, *a1 + *(**a1 + 184), v5);
  v10 = *(v4 - 8);
  if ((*(v10 + 48))(v9, 1, v4) == 1)
  {
    (*(v6 + 8))(v9, v5);
    result = 254;
  }

  else
  {
    v12 = &v9[*(v4 + 40)];
    v13 = *(v12 + 6);
    v14 = *(v12 + 7);
    v15 = *(v10 + 8);

    v15(v9, v4);
    result = sub_1000676B0(v13, v14);
  }

  *a2 = result;
  return result;
}

unint64_t sub_100029B08(uint64_t a1)
{
  result = sub_1000294C8();
  if (result)
  {
    v3 = result;
    v4 = result & 0xFFFFFFFFFFFFFF8;
    if (result >> 62)
    {
      goto LABEL_16;
    }

    v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      while (1)
      {
        v10 = v4;
        v14 = _swiftEmptyArrayStorage;
        sub_10008787C();
        if (v5 < 0)
        {
          break;
        }

        v6 = 0;
        while (1)
        {
          v4 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            break;
          }

          if ((v3 & 0xC000000000000001) != 0)
          {
            v7 = sub_10008781C();
          }

          else
          {
            if (v6 >= *(v10 + 16))
            {
              goto LABEL_15;
            }

            v7 = *(v3 + 8 * v6 + 32);
          }

          v8 = v7;
          v12 = v7;
          sub_100029CC0(&v12, a1, v11, &v13);

          sub_10008784C();
          v9 = v14[2];
          sub_10008788C();
          sub_10008789C();
          sub_10008785C();
          ++v6;
          if (v4 == v5)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
LABEL_15:
        __break(1u);
LABEL_16:
        v5 = sub_10008793C();
        if (!v5)
        {
          goto LABEL_17;
        }
      }

      __break(1u);

      __break(1u);
    }

    else
    {
LABEL_17:

      return sub_10002957C();
    }
  }

  return result;
}

id sub_100029CC0@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v6 = *a3;
  v7 = *a1;
  v8 = sub_10008648C();
  if (*(a2 + 16) && (v9 = sub_10006E704(v8), (v10 & 1) != 0))
  {
    v11 = (*(a2 + 56) + 16 * v9);
    v12 = *v11;
    v13 = v11[1];

    sub_1000877DC(38);

    sub_10008648C();
    v22._countAndFlagsBits = sub_1000879CC();
    sub_1000871BC(v22);

    v23._countAndFlagsBits = 2564154;
    v23._object = 0xE300000000000000;
    sub_1000871BC(v23);
    v24._countAndFlagsBits = sub_1000864AC();
    sub_1000871BC(v24);

    v25._countAndFlagsBits = 0x2720949EE22027;
    v25._object = 0xA700000000000000;
    sub_1000871BC(v25);
    v26._countAndFlagsBits = v12;
    v26._object = v13;
    sub_1000871BC(v26);
    v27._countAndFlagsBits = 39;
    v27._object = 0xE100000000000000;
    sub_1000871BC(v27);
    v14 = *(v6 + 80);
    v15 = *(v6 + 88);
    v16 = type metadata accessor for BetaSettingsRowViewModel();
    sub_100059B74(0xD000000000000015, 0x800000010008F140, v16, &off_1000A7F38);

    sub_10008648C();
    v17 = objc_allocWithZone(sub_1000864BC());
    result = sub_10008649C();
    *a4 = result;
  }

  else
  {
    sub_1000877DC(63);
    v28._countAndFlagsBits = 0xD000000000000025;
    v28._object = 0x800000010008F0F0;
    sub_1000871BC(v28);
    sub_10008648C();
    v29._countAndFlagsBits = sub_1000879CC();
    sub_1000871BC(v29);

    v30._object = 0x800000010008F120;
    v30._countAndFlagsBits = 0xD000000000000014;
    sub_1000871BC(v30);
    v31._countAndFlagsBits = sub_1000864AC();
    sub_1000871BC(v31);

    v32._countAndFlagsBits = 11815;
    v32._object = 0xE200000000000000;
    sub_1000871BC(v32);
    v19 = *(v6 + 80);
    v20 = *(v6 + 88);
    v21 = type metadata accessor for BetaSettingsRowViewModel();
    sub_100059B74(0, 0xE000000000000000, v21, &off_1000A7F38);

    *a4 = v7;
    return v7;
  }

  return result;
}

uint64_t sub_100029FA4()
{
  v1 = *v0;
  v2 = sub_10008672C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000864CC();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v1[23];
  v12 = v0[2];
  sub_10002A284(v0 + v11, v12, v10);
  sub_100028D20(v10);
  v13 = v1[10];
  v14 = v1[11];
  sub_1000313EC(v0 + v11, v12, v13, v14);
  sub_100028E4C();
  sub_10002A174();
  sub_10003182C(v0 + v11, v12, v13, v14);
  sub_10002957C();
  sub_100029070();
  sub_10003220C(v0 + v11, v6, v12, v13, v14);
  (*(v3 + 8))(v6, v2);
  return sub_100029744();
}

uint64_t sub_10002A174()
{
  v1 = sub_100001EEC(&qword_1000AE970, &unk_10008A740);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = sub_10008672C();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100029808(v4);
  sub_10002A97C(v4, v0 + *(*v0 + 184), v0[2], v8);
  sub_10000649C(v4, &qword_1000AE970, &unk_10008A740);
  return sub_100029138(v8);
}

uint64_t sub_10002A284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a1;
  v57 = a3;
  v5 = *(*v3 + 88);
  v6 = *(*v3 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = _s11DeviceModelVMa();
  v8 = sub_10008767C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v48 - v12;
  v14 = *(v7 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  v52 = &v48 - v16;
  v17 = sub_1000864CC();
  v55 = *(v17 - 8);
  v56 = v17;
  v18 = *(v55 + 64);
  __chkstk_darwin(v17);
  v50 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100001EEC(&qword_1000AE9C0, &qword_10008A810);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v51 = &v48 - v25;
  v54 = a2;
  if (a2 && (v58 = v54, type metadata accessor for BetaSettingsRowViewModel(), v26 = sub_10008739C(), WitnessTable = swift_getWitnessTable(), v49 = v26, v28 = WitnessTable, v29 = sub_1000875DC(), (v29 & 1) == 0))
  {
    v58 = v54;
    __chkstk_darwin(v29);
    *(&v48 - 2) = v35;
    *(&v48 - 1) = v5;
    KeyPath = swift_getKeyPath();
    v37 = v56;
    v39 = sub_100013210(sub_100034030, KeyPath, v49, v56, &type metadata for Never, v28, &protocol witness table for Never, v38);

    if (*(v39 + 16))
    {
      v40 = enum case for BetaEnrollment.Availability.unavailable(_:);
      v41 = v55;
      v42 = *(v55 + 104);
      v43 = v50;
      v42(v50, enum case for BetaEnrollment.Availability.unavailable(_:), v37);
      v44 = sub_100058558(v43, v39);

      (*(v41 + 8))(v43, v37);
      if (v44)
      {
        v45 = v40;
      }

      else
      {
        v45 = enum case for BetaEnrollment.Availability.publicBetaAvailable(_:);
      }

      v46 = v51;
      v42(v51, v45, v37);
      (*(v41 + 56))(v46, 0, 1, v37);
      return (*(v41 + 32))(v57, v46, v37);
    }

    else
    {

      v47 = v55;
      (*(v55 + 56))(v51, 1, 1, v37);
      return (*(v47 + 104))(v57, enum case for BetaEnrollment.Availability.unavailable(_:), v37);
    }
  }

  else
  {
    (*(v9 + 16))(v13, v53, v8);
    if ((*(v14 + 48))(v13, 1, v7) == 1)
    {
      (*(v9 + 8))(v13, v8);
      return (*(v55 + 104))(v57, enum case for BetaEnrollment.Availability.unavailable(_:), v56);
    }

    else
    {
      v31 = v52;
      (*(v14 + 32))(v52, v13, v7);
      sub_10000E4A4(v31, v24, &qword_1000AE9C0, &qword_10008A810);
      (*(v14 + 8))(v31, v7);
      v33 = v55;
      v32 = v56;
      v34 = *(v55 + 48);
      if (v34(v24, 1, v56) == 1)
      {
        (*(v33 + 104))(v57, enum case for BetaEnrollment.Availability.unavailable(_:), v32);
        result = v34(v24, 1, v32);
        if (result != 1)
        {
          return sub_10000649C(v24, &qword_1000AE9C0, &qword_10008A810);
        }
      }

      else
      {
        return (*(v33 + 32))(v57, v24, v32);
      }
    }
  }

  return result;
}

uint64_t sub_10002A920(uint64_t *a1)
{
  v2 = *a1;

  swift_getAtKeyPath();
}

uint64_t sub_10002A97C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v63 = a3;
  v64 = a4;
  v60 = a2;
  v6 = *(*v4 + 88);
  v7 = *(*v4 + 80);
  swift_getAssociatedTypeWitness();
  v61 = v7;
  v62 = v6;
  swift_getAssociatedConformanceWitness();
  v8 = _s11DeviceModelVMa();
  v59 = sub_10008767C();
  v57 = *(v59 - 1);
  v9 = *(v57 + 64);
  v10 = __chkstk_darwin(v59);
  v12 = &v54 - v11;
  v58 = *(v8 - 8);
  v13 = v58[8];
  __chkstk_darwin(v10);
  v15 = &v54 - v14;
  v16 = sub_10008672C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v55 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v56 = &v54 - v21;
  v22 = sub_100001EEC(&qword_1000AE970, &unk_10008A740);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v26 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v54 - v27;
  sub_10000E4A4(a1, &v54 - v27, &qword_1000AE970, &unk_10008A740);
  v29 = *(v17 + 48);
  if (v29(v28, 1, v16) != 1)
  {
    return (*(v17 + 32))(v64, v28, v16);
  }

  v54 = v17;
  sub_10000649C(v28, &qword_1000AE970, &unk_10008A740);
  if (v63 && (v66 = v63, type metadata accessor for BetaSettingsRowViewModel(), v30 = sub_10008739C(), WitnessTable = swift_getWitnessTable(), v32 = sub_1000875DC(), (v32 & 1) == 0))
  {
    v66 = v63;
    __chkstk_darwin(v32);
    v39 = v62;
    *(&v54 - 2) = v61;
    *(&v54 - 1) = v39;
    KeyPath = swift_getKeyPath();
    v60 = v30;
    v42 = sub_100013210(sub_1000342EC, KeyPath, v30, v16, &type metadata for Never, WitnessTable, &protocol witness table for Never, v41);

    sub_10004AE28(v42, v26);

    if (v29(v26, 1, v16) == 1)
    {
      v43 = v54;
      v44 = *(v54 + 104);
      (v44)(v56, enum case for BetaEnrollment.State.multiple(_:), v16);
      v45 = v16;
      if (v29(v26, 1, v16) != 1)
      {
        sub_10000649C(v26, &qword_1000AE970, &unk_10008A740);
      }

      v46 = v56;
    }

    else
    {
      v43 = v54;
      v46 = v56;
      (*(v54 + 32))(v56, v26, v16);
      v45 = v16;
      v44 = *(v43 + 104);
    }

    v47 = v55;
    v59 = v44;
    (v44)(v55, enum case for BetaEnrollment.State.enrolled(_:), v45);
    sub_1000312FC(qword_1000ADD68, &type metadata accessor for BetaEnrollment.State);
    sub_10008729C();
    sub_10008729C();
    v48 = *(v43 + 8);
    v49 = v48(v47, v45);
    if (v66 == v65)
    {
      v58 = &v54;
      v66 = v63;
      __chkstk_darwin(v49);
      v50 = v62;
      *(&v54 - 2) = v61;
      *(&v54 - 1) = v50;
      swift_getWitnessTable();
      v51 = sub_10008722C();
      v52 = sub_100082DB8(v51);

      v53 = *(v52 + 16);

      if (v53 >= 2)
      {
        v48(v46, v45);
        (v59)(v46, enum case for BetaEnrollment.State.multiple(_:), v45);
      }
    }

    return (*(v43 + 32))(v64, v46, v45);
  }

  else
  {
    v33 = v57;
    v34 = v59;
    (*(v57 + 16))(v12, v60, v59);
    v35 = v58;
    v36 = (v58[6])(v12, 1, v8);
    v37 = v64;
    if (v36 == 1)
    {
      (*(v33 + 8))(v12, v34);
      return (*(v54 + 104))(v37, enum case for BetaEnrollment.State.notEnrolled(_:), v16);
    }

    else
    {
      (v35[4])(v15, v12, v8);
      (*(v54 + 16))(v37, &v15[*(v8 + 36)], v16);
      return (v35[1])(v15, v8);
    }
  }
}

uint64_t sub_10002B148(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v9 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = &v15 - v10;
  (*(v12 + 16))(&v15 - v10, a1);
  v13 = *a2;
  return a6(v11);
}

char *sub_10002B21C()
{
  v1 = *v0;
  v2 = *(v0 + 2);

  v3 = *(v0 + 4);

  v4 = *(v0 + 7);

  v5 = qword_1000AE7E8;
  v6 = sub_100001EEC(&qword_1000AE9B0, &unk_10008A7A0);
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  v7 = qword_1000AE7F0;
  v8 = sub_100001EEC(&qword_1000AE600, &unk_10008D650);
  (*(*(v8 - 8) + 8))(&v0[v7], v8);
  v9 = qword_1000AE7F8;
  v10 = sub_100001EEC(&qword_1000AE9A8, &unk_10008A790);
  (*(*(v10 - 8) + 8))(&v0[v9], v10);
  v11 = qword_1000AE800;
  v12 = sub_100001EEC(&qword_1000AE9A0, &qword_10008BC70);
  (*(*(v12 - 8) + 8))(&v0[v11], v12);
  v13 = qword_1000AE808;
  v14 = sub_100001EEC(&qword_1000AE998, &unk_10008A780);
  (*(*(v14 - 8) + 8))(&v0[v13], v14);
  v15 = qword_1000AE810;
  v16 = sub_100001EEC(&qword_1000AE990, &qword_10008A778);
  (*(*(v16 - 8) + 8))(&v0[v15], v16);
  v17 = *&v0[qword_1000AE818];
  swift_unknownObjectRelease();
  v18 = *(*v0 + 184);
  v19 = *(v1 + 88);
  v20 = *(v1 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  _s11DeviceModelVMa();
  v21 = sub_10008767C();
  (*(*(v21 - 8) + 8))(&v0[v18], v21);
  sub_10000649C(&v0[*(*v0 + 192)], &qword_1000AE970, &unk_10008A740);
  return v0;
}

uint64_t sub_10002B538()
{
  sub_10002B21C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

void sub_10002B5A8()
{
  if (!qword_1000AE8B8)
  {
    v0 = sub_1000867FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1000AE8B8);
    }
  }
}

void sub_10002B5F8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100003200(a3, a4);
    v5 = sub_1000867FC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_10002B64C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for GroupType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GroupType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10002B810()
{
  result = qword_1000AE8E0;
  if (!qword_1000AE8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE8E0);
  }

  return result;
}

uint64_t sub_10002B864(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_1000873FC();
  v1[4] = sub_1000873EC();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_10002B914;

  return sub_10002BB0C();
}

uint64_t sub_10002B914()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = v0;

  v5 = *(v2 + 32);
  v6 = *(v2 + 24);
  if (v0)
  {

    v7 = sub_1000873DC();
    v9 = v8;
    v10 = sub_1000342E8;
  }

  else
  {
    v7 = sub_1000873DC();
    v9 = v11;
    v10 = sub_10002BA98;
  }

  return _swift_task_switch(v10, v7, v9);
}

uint64_t sub_10002BA98()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[2];

  *v3 = v1 != 0;
  v4 = v0[1];

  return v4();
}

uint64_t sub_10002BB0C()
{
  v1[5] = v0;
  v2 = *v0;
  v3 = sub_10008672C();
  v1[6] = v3;
  v4 = *(v3 - 8);
  v1[7] = v4;
  v5 = *(v4 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = *(v2 + 88);
  v1[11] = *(v2 + 80);
  v1[12] = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = _s11DeviceModelVMa();
  v1[13] = v6;
  v7 = sub_10008767C();
  v1[14] = v7;
  v8 = *(v7 - 8);
  v1[15] = v8;
  v9 = *(v8 + 64) + 15;
  v1[16] = swift_task_alloc();
  v10 = *(v6 - 8);
  v1[17] = v10;
  v11 = *(v10 + 64) + 15;
  v1[18] = swift_task_alloc();
  v12 = *(*(sub_100001EEC(&qword_1000AE970, &unk_10008A740) - 8) + 64) + 15;
  v1[19] = swift_task_alloc();
  v13 = sub_1000864CC();
  v1[20] = v13;
  v14 = *(v13 - 8);
  v1[21] = v14;
  v15 = *(v14 + 64) + 15;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  sub_1000873FC();
  v1[24] = sub_1000873EC();
  v17 = sub_1000873DC();
  v1[25] = v17;
  v1[26] = v16;

  return _swift_task_switch(sub_10002BDF8, v17, v16);
}

uint64_t sub_10002BDF8()
{
  v2 = v0[11].i64[0];
  v1 = v0[11].i64[1];
  v3 = v0[10].i64[0];
  v4 = v0[10].i64[1];
  v6 = v0[5].i64[0];
  v5 = v0[5].i64[1];
  v7 = v0[2].i64[1];
  v8 = type metadata accessor for BetaSettingsRowViewModel();
  v0[13].i64[1] = v8;
  sub_100059B74(0x6E696C6C6F726E45, 0xE900000000000067, v8, &off_1000A7F38);
  sub_100028D0C();
  (*(v4 + 104))(v2, enum case for BetaEnrollment.Availability.unavailable(_:), v3);
  sub_1000312FC(&qword_1000AE978, &type metadata accessor for BetaEnrollment.Availability);
  sub_10008729C();
  sub_10008729C();
  v9 = *(v4 + 8);
  v9(v2, v3);
  v9(v1, v3);
  if (v0[1].i64[0] == v0[1].i64[1])
  {
    v10 = v0[12].i64[0];

    sub_100059B74(0xD000000000000025, 0x800000010008EFD0, v8, &off_1000A7F38);
LABEL_19:
    v48 = v0[11].i64[0];
    v47 = v0[11].i64[1];
    v50 = v0[9].i64[0];
    v49 = v0[9].i64[1];
    v51 = v0[8].i64[0];
    v53 = v0[4].i64[0];
    v52 = v0[4].i64[1];

    v54 = v0->i64[1];

    return v54();
  }

  v11 = v0[2].i64[1];
  WitnessTable = swift_getWitnessTable();
  if (sub_1000273A4(v8, WitnessTable))
  {
    v13 = v0[9].i64[1];
    v14 = v0[3].i64[0];
    v15 = v0[3].i64[1];
    v16 = v0[2].i64[1];
    sub_100059B74(0xD000000000000012, 0x800000010008EFB0, v8, &off_1000A7F38);
    (*(v15 + 104))(v13, enum case for BetaEnrollment.State.enrolling(_:), v14);
    (*(v15 + 56))(v13, 0, 1, v14);
    sub_10002987C(v13);
    v17 = *(v16 + 16);
    if (v17)
    {
      v0[2].i64[0] = v17;
      *(swift_task_alloc() + 16) = vextq_s8(v0[5], v0[5], 8uLL);
      sub_10008739C();

      swift_getWitnessTable();
      v18 = sub_10008783C();

      v19 = v18;
    }

    else
    {
      v19 = sub_10008732C();
    }

    v0[14].i64[0] = v19;
    v37 = sub_10008738C();
    v38 = v0[14].i64[0];
    if (v37)
    {
      v39 = v0[13].i64[1];
      v40 = v0[14].i64[0];
      v41 = sub_10008734C();
      sub_1000872FC();
      if (v41)
      {
        v42 = *(v0[14].i64[0] + 32);
      }

      else
      {
        v76 = v0[13].i64[1];
        v42 = sub_10008780C();
      }

      v0[14].i64[1] = v42;
      v0[15].i64[0] = 1;
      v43 = swift_task_alloc();
      v0[15].i64[1] = v43;
      *v43 = v0;
      v43[1] = sub_10002C624;

      return sub_10002BB0C();
    }

    v45 = v0[12].i64[0];

LABEL_18:
    v46 = v0[2].i64[1];
    sub_10002FD4C();
    goto LABEL_19;
  }

  v20 = v0[8].i64[0];
  v21 = v0[8].i64[1];
  v22 = v0[6].i64[1];
  (*(v0[7].i64[1] + 16))(v20, v0[2].i64[1] + *(*v0[2].i64[1] + 184), v0[7].i64[0]);
  if ((*(v21 + 48))(v20, 1, v22) == 1)
  {
    v23 = v0[12].i64[0];
    v25 = v0[7].i64[1];
    v24 = v0[8].i64[0];
    v26 = v0[7].i64[0];

    (*(v25 + 8))(v24, v26);
    goto LABEL_18;
  }

  v27 = v0[6].i64[1];
  v28 = v0[4].i64[1];
  v29 = v0[3].i64[0];
  v30 = v0[3].i64[1];
  (*(v0[8].i64[1] + 32))(v0[9].i64[0], v0[8].i64[0], v27);
  v31 = *(v27 + 36);
  v32 = enum case for BetaEnrollment.State.enrolled(_:);
  v33 = *(v30 + 104);
  v33(v28, enum case for BetaEnrollment.State.enrolled(_:), v29);
  sub_1000312FC(&qword_1000ADD50, &type metadata accessor for BetaEnrollment.State);
  v34 = sub_10008713C();
  v35 = *(v30 + 8);
  v0[16].i64[1] = v35;
  v0[17].i64[0] = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v35(v28, v29);
  if (v34)
  {
    v36 = v0[12].i64[0];
    (*(v0[8].i64[1] + 8))(v0[9].i64[0], v0[6].i64[1]);

    goto LABEL_18;
  }

  v55 = v0[9].i64[1];
  v56 = v0[6].i64[0];
  v78 = v0[6].i64[1];
  v80 = v0[5].i64[0];
  v57 = v0[3].i64[1];
  v58 = v0[4].i64[0];
  v59 = v0[2].i64[1];
  v60 = v0[3].i64[0];
  v77 = v0[9].i64[0];
  v33(v55, enum case for BetaEnrollment.State.enrolling(_:), v60);
  (*(v57 + 56))(v55, 0, 1, v60);
  sub_10002987C(v55);
  v0[17].i64[1] = *(v59 + qword_1000AE818);
  v33(v58, v32, v60);
  v61 = sub_100030948(v56, v56);
  v62 = *(v61 + 48);
  v63 = *(v61 + 52);
  v64 = *(v56 - 8);
  v65 = *(v64 + 72);
  v66 = *(v64 + 80);
  swift_allocObject();
  swift_unknownObjectRetain();
  v67 = sub_1000872EC();
  (*(v64 + 16))(v68, v77 + *(v78 + 44), v56);
  v69 = sub_100013630(v67);
  v0[18].i64[0] = v69;
  v70 = *(v80 + 64);
  v79 = (v70 + *v70);
  v71 = v70[1];
  v72 = swift_task_alloc();
  v0[18].i64[1] = v72;
  *v72 = v0;
  v72[1] = sub_10002C900;
  v74 = v0[5].i64[0];
  v73 = v0[5].i64[1];
  v75 = v0[4].i64[0];

  return v79(v75, v69, v73, v74);
}

uint64_t sub_10002C624()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v9 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v4 = v2[28];

    v5 = v2[25];
    v6 = v2[26];
    v7 = sub_10002CBB0;
  }

  else
  {
    v5 = v2[25];
    v6 = v2[26];
    v7 = sub_10002C740;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10002C740()
{
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[27];
  v4 = v0[28];

  if (v2 == sub_10008738C())
  {
    v5 = v0[28];
    v6 = v0[24];

    v7 = v0[5];
    sub_10002FD4C();
    v9 = v0[22];
    v8 = v0[23];
    v11 = v0[18];
    v10 = v0[19];
    v12 = v0[16];
    v14 = v0[8];
    v13 = v0[9];

    v15 = v0[1];

    return v15();
  }

  else
  {
    v17 = v0[30];
    v19 = v0[27];
    v18 = v0[28];
    v20 = sub_10008734C();
    sub_1000872FC();
    if (v20)
    {
      v21 = *(v0[28] + 8 * v17 + 32);
    }

    else
    {
      v23 = v0[27];
      result = sub_10008780C();
      v21 = result;
    }

    v0[29] = v21;
    v0[30] = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
    }

    else
    {
      v22 = swift_task_alloc();
      v0[31] = v22;
      *v22 = v0;
      v22[1] = sub_10002C624;

      return sub_10002BB0C();
    }
  }

  return result;
}

uint64_t sub_10002C900()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v4 = *v1;
  *(*v1 + 304) = v0;

  v5 = *(v2 + 288);
  v6 = *(v2 + 280);
  v7 = *(v2 + 272);
  (*(v2 + 264))(*(v2 + 64), *(v2 + 48));

  swift_unknownObjectRelease();
  v8 = *(v2 + 208);
  v9 = *(v2 + 200);
  if (v0)
  {
    v10 = sub_10002CC88;
  }

  else
  {
    v10 = sub_10002CAD0;
  }

  return _swift_task_switch(v10, v9, v8);
}

uint64_t sub_10002CAD0()
{
  v1 = v0[24];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[13];

  (*(v3 + 8))(v2, v4);
  v5 = v0[5];
  sub_10002FD4C();
  v7 = v0[22];
  v6 = v0[23];
  v9 = v0[18];
  v8 = v0[19];
  v10 = v0[16];
  v12 = v0[8];
  v11 = v0[9];

  v13 = v0[1];

  return v13();
}

uint64_t sub_10002CBB0()
{
  v1 = v0[29];
  v2 = v0[24];

  v3 = v0[32];
  v5 = v0[22];
  v4 = v0[23];
  v7 = v0[18];
  v6 = v0[19];
  v8 = v0[16];
  v10 = v0[8];
  v9 = v0[9];
  v11 = v0[5];
  sub_10002FD4C();

  v12 = v0[1];

  return v12();
}

uint64_t sub_10002CC88()
{
  v1 = v0[24];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[13];

  (*(v3 + 8))(v2, v4);
  v5 = v0[38];
  v7 = v0[22];
  v6 = v0[23];
  v9 = v0[18];
  v8 = v0[19];
  v10 = v0[16];
  v12 = v0[8];
  v11 = v0[9];
  v13 = v0[5];
  sub_10002FD4C();

  v14 = v0[1];

  return v14();
}

uint64_t sub_10002CD74()
{
  v1[2] = v0;
  v1[3] = *v0;
  sub_1000873FC();
  v1[4] = sub_1000873EC();
  v3 = sub_1000873DC();
  v1[5] = v3;
  v1[6] = v2;

  return _swift_task_switch(sub_10002CE34, v3, v2);
}

uint64_t sub_10002CE34()
{
  v2 = v0[2];
  v1 = v0[3];
  v11 = *(v2 + 24);
  v12 = *(v2 + 32);

  v14._countAndFlagsBits = 0x6873657266655220;
  v14._object = 0xEB00000000676E69;
  sub_1000871BC(v14);
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  v5 = type metadata accessor for BetaSettingsRowViewModel();
  sub_100059B74(v11, v12, v5, &off_1000A7F38);

  v0[7] = *(v2 + qword_1000AE818);
  v6 = *(v4 + 48);
  swift_unknownObjectRetain();
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_10002CFD4;

  return v10(v3, v4);
}

uint64_t sub_10002CFD4()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 64);
  v5 = *v1;

  v6 = *(v2 + 56);
  if (v0)
  {

    swift_unknownObjectRelease();
    v7 = *(v3 + 40);
    v8 = *(v3 + 48);
    v9 = sub_100034334;
  }

  else
  {
    swift_unknownObjectRelease();
    v7 = *(v3 + 40);
    v8 = *(v3 + 48);
    v9 = sub_10001F230;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_10002D118(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_1000873FC();
  v1[4] = sub_1000873EC();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_10002D1C8;

  return sub_10002D34C();
}

uint64_t sub_10002D1C8()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = v0;

  v5 = *(v2 + 32);
  v6 = *(v2 + 24);
  if (v0)
  {
  }

  v8 = sub_1000873DC();

  return _swift_task_switch(sub_1000342E8, v8, v7);
}

uint64_t sub_10002D34C()
{
  v1[3] = v0;
  v2 = *v0;
  v3 = sub_10008672C();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = *(v2 + 88);
  v1[9] = *(v2 + 80);
  v1[10] = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = _s11DeviceModelVMa();
  v1[11] = v6;
  v7 = sub_10008767C();
  v1[12] = v7;
  v8 = *(v7 - 8);
  v1[13] = v8;
  v9 = *(v8 + 64) + 15;
  v1[14] = swift_task_alloc();
  v10 = *(v6 - 8);
  v1[15] = v10;
  v11 = *(v10 + 64) + 15;
  v1[16] = swift_task_alloc();
  v12 = *(*(sub_100001EEC(&qword_1000AE970, &unk_10008A740) - 8) + 64) + 15;
  v1[17] = swift_task_alloc();
  sub_1000873FC();
  v1[18] = sub_1000873EC();
  v14 = sub_1000873DC();
  v1[19] = v14;
  v1[20] = v13;

  return _swift_task_switch(sub_10002D5D0, v14, v13);
}

uint64_t sub_10002D5D0()
{
  v2 = v0[4].i64[0];
  v1 = v0[4].i64[1];
  v3 = v0[1].i64[1];
  v4 = type metadata accessor for BetaSettingsRowViewModel();
  v0[10].i64[1] = v4;
  sub_100059B74(0x676E69766F6D6552, 0xE800000000000000, v4, &off_1000A7F38);
  WitnessTable = swift_getWitnessTable();
  if (sub_1000273A4(v4, WitnessTable))
  {
    v6 = v0[8].i64[1];
    v7 = v0[2].i64[0];
    v8 = v0[2].i64[1];
    v9 = v0[1].i64[1];
    sub_100059B74(0xD000000000000011, 0x800000010008EF70, v4, &off_1000A7F38);
    (*(v8 + 104))(v6, enum case for BetaEnrollment.State.removing(_:), v7);
    (*(v8 + 56))(v6, 0, 1, v7);
    sub_10002987C(v6);
    v10 = *(v9 + 16);
    if (v10)
    {
      v0[1].i64[0] = v10;
      *(swift_task_alloc() + 16) = vextq_s8(v0[4], v0[4], 8uLL);
      sub_10008739C();

      swift_getWitnessTable();
      v11 = sub_10008783C();

      v12 = v11;
    }

    else
    {
      v12 = sub_10008732C();
    }

    v0[11].i64[0] = v12;
    v30 = sub_10008738C();
    v31 = v0[11].i64[0];
    if (v30)
    {
      v32 = v0[10].i64[1];
      v33 = v0[11].i64[0];
      v34 = sub_10008734C();
      sub_1000872FC();
      if (v34)
      {
        v35 = *(v0[11].i64[0] + 32);
      }

      else
      {
        v67 = v0[10].i64[1];
        v35 = sub_10008780C();
      }

      v0[11].i64[1] = v35;
      v0[12].i64[0] = 1;
      v36 = swift_task_alloc();
      v0[12].i64[1] = v36;
      *v36 = v0;
      v36[1] = sub_10002DCDC;

      return sub_10002D34C();
    }

    v38 = v0[9].i64[0];

    goto LABEL_16;
  }

  v13 = v0[7].i64[0];
  v14 = v0[7].i64[1];
  v15 = v0[5].i64[1];
  (*(v0[6].i64[1] + 16))(v13, v0[1].i64[1] + *(*v0[1].i64[1] + 184), v0[6].i64[0]);
  if ((*(v14 + 48))(v13, 1, v15) == 1)
  {
    v16 = v0[9].i64[0];
    v18 = v0[6].i64[1];
    v17 = v0[7].i64[0];
    v19 = v0[6].i64[0];

    (*(v18 + 8))(v17, v19);
LABEL_16:
    v39 = v0[8].i64[0];
    v40 = v0[8].i64[1];
    v41 = v0[7].i64[0];
    v43 = v0[3].i64[0];
    v42 = v0[3].i64[1];
    v44 = v0[1].i64[1];
    sub_10002FD4C();

    v45 = v0->i64[1];

    return v45();
  }

  v20 = v0[5].i64[1];
  v21 = v0[3].i64[1];
  v22 = v0[2].i64[0];
  v23 = v0[2].i64[1];
  (*(v0[7].i64[1] + 32))(v0[8].i64[0], v0[7].i64[0], v20);
  v24 = *(v20 + 36);
  v25 = enum case for BetaEnrollment.State.notEnrolled(_:);
  v26 = *(v23 + 104);
  v26(v21, enum case for BetaEnrollment.State.notEnrolled(_:), v22);
  sub_1000312FC(&qword_1000ADD50, &type metadata accessor for BetaEnrollment.State);
  v27 = sub_10008713C();
  v28 = *(v23 + 8);
  v0[13].i64[1] = v28;
  v0[14].i64[0] = (v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v28(v21, v22);
  if (v27)
  {
    v29 = v0[9].i64[0];
    (*(v0[7].i64[1] + 8))(v0[8].i64[0], v0[5].i64[1]);

    goto LABEL_16;
  }

  v46 = v0[8].i64[1];
  v47 = v0[5].i64[0];
  v69 = v0[5].i64[1];
  v71 = v0[4].i64[0];
  v48 = v0[2].i64[1];
  v49 = v0[3].i64[0];
  v50 = v0[1].i64[1];
  v51 = v0[2].i64[0];
  v68 = v0[8].i64[0];
  v26(v46, enum case for BetaEnrollment.State.enrolling(_:), v51);
  (*(v48 + 56))(v46, 0, 1, v51);
  sub_10002987C(v46);
  v0[14].i64[1] = *(v50 + qword_1000AE818);
  v26(v49, v25, v51);
  v52 = sub_100030948(v47, v47);
  v53 = *(v52 + 48);
  v54 = *(v52 + 52);
  v55 = *(v47 - 8);
  v56 = *(v55 + 72);
  v57 = *(v55 + 80);
  swift_allocObject();
  swift_unknownObjectRetain();
  v58 = sub_1000872EC();
  (*(v55 + 16))(v59, v68 + *(v69 + 44), v47);
  v60 = sub_100013630(v58);
  v0[15].i64[0] = v60;
  v61 = *(v71 + 64);
  v70 = (v61 + *v61);
  v62 = v61[1];
  v63 = swift_task_alloc();
  v0[15].i64[1] = v63;
  *v63 = v0;
  v63[1] = sub_10002DFA8;
  v65 = v0[4].i64[0];
  v64 = v0[4].i64[1];
  v66 = v0[3].i64[0];

  return v70(v66, v60, v64, v65);
}

uint64_t sub_10002DCDC()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v9 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = v2[22];

    v5 = v2[19];
    v6 = v2[20];
    v7 = sub_10002E248;
  }

  else
  {
    v5 = v2[19];
    v6 = v2[20];
    v7 = sub_10002DDF8;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10002DDF8()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[21];
  v4 = v0[22];

  if (v2 == sub_10008738C())
  {
    v5 = v0[22];
    v6 = v0[18];

    v7 = v0[16];
    v8 = v0[17];
    v9 = v0[14];
    v11 = v0[6];
    v10 = v0[7];
    v12 = v0[3];
    sub_10002FD4C();

    v13 = v0[1];

    return v13();
  }

  else
  {
    v15 = v0[24];
    v17 = v0[21];
    v16 = v0[22];
    v18 = sub_10008734C();
    sub_1000872FC();
    if (v18)
    {
      v19 = *(v0[22] + 8 * v15 + 32);
    }

    else
    {
      v21 = v0[21];
      result = sub_10008780C();
      v19 = result;
    }

    v0[23] = v19;
    v0[24] = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
    }

    else
    {
      v20 = swift_task_alloc();
      v0[25] = v20;
      *v20 = v0;
      v20[1] = sub_10002DCDC;

      return sub_10002D34C();
    }
  }

  return result;
}

uint64_t sub_10002DFA8()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *v1;
  *(*v1 + 256) = v0;

  v5 = *(v2 + 240);
  v6 = *(v2 + 232);
  v7 = *(v2 + 224);
  (*(v2 + 216))(*(v2 + 48), *(v2 + 32));

  swift_unknownObjectRelease();
  v8 = *(v2 + 160);
  v9 = *(v2 + 152);
  if (v0)
  {
    v10 = sub_10002E304;
  }

  else
  {
    v10 = sub_10002E178;
  }

  return _swift_task_switch(v10, v9, v8);
}

uint64_t sub_10002E178()
{
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[11];

  (*(v3 + 8))(v2, v4);
  v5 = v0[16];
  v6 = v0[17];
  v7 = v0[14];
  v9 = v0[6];
  v8 = v0[7];
  v10 = v0[3];
  sub_10002FD4C();

  v11 = v0[1];

  return v11();
}

uint64_t sub_10002E248()
{
  v1 = v0[23];
  v2 = v0[18];
  v3 = v0[3];

  sub_10002FD4C();
  v4 = v0[26];
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[14];
  v9 = v0[6];
  v8 = v0[7];

  v10 = v0[1];

  return v10();
}

uint64_t sub_10002E304()
{
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[11];
  v5 = v0[3];

  (*(v3 + 8))(v2, v4);
  sub_10002FD4C();
  v6 = v0[32];
  v8 = v0[16];
  v7 = v0[17];
  v9 = v0[14];
  v11 = v0[6];
  v10 = v0[7];

  v12 = v0[1];

  return v12();
}

BOOL sub_10002E3D4(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v6 = sub_10008672C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v17 - v12;
  v14 = *a1;
  sub_100029070();
  (*(v7 + 104))(v11, *a4, v6);
  sub_1000312FC(&qword_1000ADD50, &type metadata accessor for BetaEnrollment.State);
  LOBYTE(v14) = sub_10008713C();
  v15 = *(v7 + 8);
  v15(v11, v6);
  v15(v13, v6);
  return (v14 & 1) == 0;
}

uint64_t sub_10002E564(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v19 - v7;
  v20 = 0;
  v21 = 0xE000000000000000;
  sub_1000877DC(47);

  v20 = 0xD00000000000001DLL;
  v21 = 0x800000010008F090;
  v19[1] = a1;
  v22._countAndFlagsBits = sub_1000879CC();
  sub_1000871BC(v22);

  v23._object = 0x800000010008F0B0;
  v23._countAndFlagsBits = 0xD000000000000010;
  sub_1000871BC(v23);
  v9 = v20;
  v10 = v21;
  v11 = *(v4 + 80);
  v12 = *(v4 + 88);
  v13 = type metadata accessor for BetaSettingsRowViewModel();
  sub_100059B74(v9, v10, v13, &off_1000A7F38);

  v14 = sub_10008742C();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  v15 = swift_allocObject();
  swift_weakInit();
  sub_1000873FC();

  v16 = sub_1000873EC();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &protocol witness table for MainActor;
  v17[4] = v15;
  v17[5] = a1;
  v17[6] = v2;

  sub_100016C64(0, 0, v8, &unk_10008A7B8, v17);
}

uint64_t sub_10002E7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v6[9] = a4;
  v6[10] = a5;
  v6[11] = *a6;
  sub_1000873FC();
  v6[12] = sub_1000873EC();
  v8 = sub_1000873DC();
  v6[13] = v8;
  v6[14] = v7;

  return _swift_task_switch(sub_10002E878, v8, v7);
}

uint64_t sub_10002E878()
{
  v1 = v0[9];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[16] = v3;
    *v3 = v0;
    v3[1] = sub_10002E970;
    v4 = v0[10];

    return sub_10002EC78(v4);
  }

  else
  {
    v6 = v0[12];

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_10002E970()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v9 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = v2[13];
    v5 = v2[14];
    v6 = sub_10002EAEC;
  }

  else
  {
    v7 = v2[15];

    v4 = v2[13];
    v5 = v2[14];
    v6 = sub_10002EA8C;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_10002EA8C()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10002EAEC()
{
  v1 = v0[17];
  v2 = v0[15];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];

  sub_1000877DC(39);
  v0[5] = 0;
  v0[6] = 0xE000000000000000;
  v14._object = 0x800000010008F0D0;
  v14._countAndFlagsBits = 0xD00000000000001ALL;
  sub_1000871BC(v14);
  v0[7] = v5;
  v15._countAndFlagsBits = sub_1000879CC();
  sub_1000871BC(v15);

  v16._countAndFlagsBits = 0x3A64656C69616620;
  v16._object = 0xE900000000000020;
  sub_1000871BC(v16);
  v0[8] = v1;
  sub_100001EEC(&unk_1000AEDF0, &qword_10008A0E0);
  sub_1000878DC();
  v6 = v0[5];
  v7 = v0[6];
  v8 = *(v4 + 80);
  v9 = *(v4 + 88);
  v10 = type metadata accessor for BetaSettingsRowViewModel();
  sub_100059B74(v6, v7, v10, &off_1000A7F38);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10002EC78(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = *v1;
  v2[7] = *(*v1 + 88);
  v2[8] = *(v3 + 80);
  v2[9] = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4 = _s11DeviceModelVMa();
  v2[10] = v4;
  v5 = sub_10008767C();
  v2[11] = v5;
  v6 = *(v5 - 8);
  v2[12] = v6;
  v7 = *(v6 + 64) + 15;
  v2[13] = swift_task_alloc();
  v8 = *(v4 - 8);
  v2[14] = v8;
  v9 = *(v8 + 64) + 15;
  v2[15] = swift_task_alloc();
  v10 = *(*(sub_100001EEC(&qword_1000AE970, &unk_10008A740) - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v11 = sub_1000864CC();
  v2[17] = v11;
  v12 = *(v11 - 8);
  v2[18] = v12;
  v13 = *(v12 + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  sub_1000873FC();
  v2[21] = sub_1000873EC();
  v15 = sub_1000873DC();
  v2[22] = v15;
  v2[23] = v14;

  return _swift_task_switch(sub_10002EEFC, v15, v14);
}

uint64_t sub_10002EEFC()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 136);
  v4 = *(v0 + 144);
  v5 = *(v0 + 48);
  sub_100028D0C();
  (*(v4 + 104))(v2, enum case for BetaEnrollment.Availability.unavailable(_:), v3);
  sub_1000312FC(&qword_1000AE978, &type metadata accessor for BetaEnrollment.Availability);
  sub_10008729C();
  sub_10008729C();
  v6 = *(v4 + 8);
  v6(v2, v3);
  v6(v1, v3);
  if (*(v0 + 16) == *(v0 + 24))
  {
    v7 = *(v0 + 168);
    v8 = *(v0 + 56);
    v9 = *(v0 + 64);

    v10 = type metadata accessor for BetaSettingsRowViewModel();
    sub_100059B74(0xD000000000000025, 0x800000010008EFD0, v10, &off_1000A7F38);
LABEL_23:
    v72 = *(v0 + 152);
    v71 = *(v0 + 160);
    v74 = *(v0 + 120);
    v73 = *(v0 + 128);
    v75 = *(v0 + 104);

    v76 = *(v0 + 8);

    return v76();
  }

  v12 = *(v0 + 56);
  v11 = *(v0 + 64);
  v13 = *(v0 + 48);
  v14 = type metadata accessor for BetaSettingsRowViewModel();
  *(v0 + 192) = v14;
  WitnessTable = swift_getWitnessTable();
  if (sub_1000273A4(v14, WitnessTable))
  {
    v16 = *(v0 + 128);
    v17 = *(v0 + 48);
    sub_100059B74(0xD000000000000012, 0x800000010008EFB0, v14, &off_1000A7F38);
    v18 = enum case for BetaEnrollment.State.enrolling(_:);
    v19 = sub_10008672C();
    v20 = *(v19 - 8);
    (*(v20 + 104))(v16, v18, v19);
    (*(v20 + 56))(v16, 0, 1, v19);
    sub_10002987C(v16);
    v21 = *(v17 + 16);
    if (v21)
    {
      v22 = *(v0 + 40);
      *(v0 + 32) = v21;
      v23 = swift_task_alloc();
      v23[1] = vextq_s8(*(v0 + 56), *(v0 + 56), 8uLL);
      v23[2].i64[0] = v22;
      sub_10008739C();

      swift_getWitnessTable();
      v24 = sub_10008783C();

      v25 = v24;
    }

    else
    {
      v25 = sub_10008732C();
    }

    *(v0 + 200) = v25;
    v37 = sub_10008738C();
    v38 = *(v0 + 200);
    if (v37)
    {
      v39 = *(v0 + 192);
      v40 = *(v0 + 200);
      v41 = sub_10008734C();
      sub_1000872FC();
      if (v41)
      {
        v42 = *(*(v0 + 200) + 32);
      }

      else
      {
        v77 = *(v0 + 192);
        v42 = sub_10008780C();
      }

      *(v0 + 208) = v42;
      *(v0 + 216) = 1;
      v43 = swift_task_alloc();
      *(v0 + 224) = v43;
      *v43 = v0;
      v43[1] = sub_10002F6C8;
      v44 = *(v0 + 40);

      return sub_10002EC78(v44);
    }

    v69 = *(v0 + 168);

LABEL_22:
    v70 = *(v0 + 48);
    sub_10002FD4C();
    goto LABEL_23;
  }

  v26 = *(v0 + 104);
  v27 = *(v0 + 112);
  v28 = *(v0 + 80);
  (*(*(v0 + 96) + 16))(v26, *(v0 + 48) + *(**(v0 + 48) + 184), *(v0 + 88));
  if ((*(v27 + 48))(v26, 1, v28) == 1)
  {
    v29 = *(v0 + 168);
    v31 = *(v0 + 96);
    v30 = *(v0 + 104);
    v32 = *(v0 + 88);

    (*(v31 + 8))(v30, v32);
    goto LABEL_22;
  }

  v33 = *(v0 + 120);
  v34 = *(v0 + 80);
  (*(*(v0 + 112) + 32))(v33, *(v0 + 104), v34);
  v35 = v33 + *(v34 + 48);
  if ((*(v35 + 8) & 1) == 0 && *v35 == *(v0 + 40))
  {
    v36 = *(v0 + 168);
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 80));

    goto LABEL_22;
  }

  v47 = *(v0 + 120);
  v46 = *(v0 + 128);
  v48 = *(v0 + 72);
  v49 = *(v0 + 80);
  v50 = *(v0 + 48);
  v79 = *(v0 + 56);
  v51 = enum case for BetaEnrollment.State.enrolling(_:);
  v52 = sub_10008672C();
  v53 = *(v52 - 8);
  (*(v53 + 104))(v46, v51, v52);
  (*(v53 + 56))(v46, 0, 1, v52);
  sub_10002987C(v46);
  *(v0 + 240) = *(v50 + qword_1000AE818);
  v54 = sub_100030948(v48, v48);
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  v57 = *(v48 - 8);
  v58 = *(v57 + 72);
  v59 = *(v57 + 80);
  swift_allocObject();
  swift_unknownObjectRetain();
  v60 = sub_1000872EC();
  (*(v57 + 16))(v61, v47 + *(v49 + 44), v48);
  v62 = sub_100013630(v60);
  *(v0 + 248) = v62;
  v63 = *(v79 + 80);
  v78 = (v63 + *v63);
  v64 = v63[1];
  v65 = swift_task_alloc();
  *(v0 + 256) = v65;
  *v65 = v0;
  v65[1] = sub_10002F98C;
  v67 = *(v0 + 56);
  v66 = *(v0 + 64);
  v68 = *(v0 + 40);

  return v78(v68, v62, v66, v67);
}

uint64_t sub_10002F6C8()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v9 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v4 = v2[25];

    v5 = v2[22];
    v6 = v2[23];
    v7 = sub_10002FBC0;
  }

  else
  {
    v5 = v2[22];
    v6 = v2[23];
    v7 = sub_10002F7E4;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10002F7E4()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[24];
  v4 = v0[25];

  if (v2 == sub_10008738C())
  {
    v5 = v0[25];
    v6 = v0[21];

    v7 = v0[6];
    sub_10002FD4C();
    v9 = v0[19];
    v8 = v0[20];
    v11 = v0[15];
    v10 = v0[16];
    v12 = v0[13];

    v13 = v0[1];

    return v13();
  }

  else
  {
    v15 = v0[27];
    v17 = v0[24];
    v16 = v0[25];
    v18 = sub_10008734C();
    sub_1000872FC();
    if (v18)
    {
      v19 = *(v0[25] + 8 * v15 + 32);
    }

    else
    {
      v22 = v0[24];
      result = sub_10008780C();
      v19 = result;
    }

    v0[26] = v19;
    v0[27] = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
    }

    else
    {
      v20 = swift_task_alloc();
      v0[28] = v20;
      *v20 = v0;
      v20[1] = sub_10002F6C8;
      v21 = v0[5];

      return sub_10002EC78(v21);
    }
  }

  return result;
}

uint64_t sub_10002F98C()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *v1;
  *(*v1 + 264) = v0;

  v5 = v2[31];
  v6 = v2[30];

  swift_unknownObjectRelease();
  v7 = v2[23];
  v8 = v2[22];
  if (v0)
  {
    v9 = sub_10002FC7C;
  }

  else
  {
    v9 = sub_10002FAFC;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_10002FAFC()
{
  v1 = v0[21];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[10];

  (*(v3 + 8))(v2, v4);
  v5 = v0[6];
  sub_10002FD4C();
  v7 = v0[19];
  v6 = v0[20];
  v9 = v0[15];
  v8 = v0[16];
  v10 = v0[13];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10002FBC0()
{
  v1 = v0[26];
  v2 = v0[21];

  v3 = v0[29];
  v5 = v0[19];
  v4 = v0[20];
  v7 = v0[15];
  v6 = v0[16];
  v8 = v0[13];
  v9 = v0[6];
  sub_10002FD4C();

  v10 = v0[1];

  return v10();
}

uint64_t sub_10002FC7C()
{
  v1 = v0[21];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[10];

  (*(v3 + 8))(v2, v4);
  v5 = v0[33];
  v7 = v0[19];
  v6 = v0[20];
  v9 = v0[15];
  v8 = v0[16];
  v10 = v0[13];
  v11 = v0[6];
  sub_10002FD4C();

  v12 = v0[1];

  return v12();
}

uint64_t sub_10002FD4C()
{
  v0 = sub_100001EEC(&qword_1000AE970, &unk_10008A740);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v6 - v2;
  v4 = sub_10008672C();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  return sub_10002987C(v3);
}

uint64_t sub_10002FE3C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100002740;

  return sub_10002CD74();
}

uint64_t sub_10002FED0()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 32);

  return v1;
}

uint64_t sub_10002FF04()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 56);

  return v1;
}

uint64_t sub_10002FF38@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = *(a1 + 80);
  v6 = *(a1 + 88);
  type metadata accessor for BetaSettingsRowViewModel();
  result = sub_1000877FC();
  *a2 = result;
  return result;
}

uint64_t sub_10002FF80@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 80);
  v4 = *(a1 + 88);
  type metadata accessor for BetaSettingsRowViewModel();
  result = sub_10008676C();
  *a2 = result;
  return result;
}

uint64_t sub_10002FFE0(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_100030040@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4 = a1 + *(_s11DeviceModelVMa() + 40);
  v5 = *(v4 + 40);
  *a2 = *(v4 + 32);
  a2[1] = v5;
}

uint64_t sub_1000300F4(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  _s11DeviceModelVMa();
  sub_10008739C();

  sub_1000870FC();
}

uint64_t sub_1000301E4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v28 = a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v3 = _s11DeviceModelVMa();
  v4 = sub_10008767C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v27 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v22 - v9;
  v26 = *a1;
  v29 = v26;
  sub_10008739C();
  WitnessTable = swift_getWitnessTable();
  sub_1000875CC();
  v11 = *(v3 - 8);
  v12 = *(v11 + 48);
  if (v12(v10, 1, v3) == 1)
  {
    (*(v5 + 8))(v10, v4);
  }

  else
  {
    v23 = v5;
    v24 = v4;
    v13 = &v10[*(v3 + 40)];
    v14 = v13[1];
    v16 = v13[2];
    v15 = v13[3];
    sub_100033360(*v13, v14);
    (*(v11 + 8))(v10, v3);
    if (v14)
    {
      goto LABEL_8;
    }

    v5 = v23;
    v4 = v24;
  }

  v17 = v27;
  v29 = v26;
  sub_1000875CC();
  if (v12(v17, 1, v3) == 1)
  {
    v16 = 0x656D614E206F4ELL;
    result = (*(v5 + 8))(v17, v4);
LABEL_10:
    v15 = 0xE700000000000000;
    goto LABEL_11;
  }

  v19 = &v17[*(v3 + 40)];
  v20 = v19[9];
  v16 = v19[10];
  v15 = v19[11];
  sub_100033360(v19[8], v20);
  result = (*(v11 + 8))(v17, v3);
  if (!v20)
  {
    v16 = 0x656D614E206F4ELL;
    goto LABEL_10;
  }

LABEL_8:

LABEL_11:
  v21 = v28;
  *v28 = v16;
  v21[1] = v15;
  return result;
}

uint64_t sub_100030504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for BetaSettingsRowViewModel();
  swift_unknownObjectRetain();
  v6 = sub_100033D18(a1, a2);
  result = swift_unknownObjectRelease();
  *a3 = v6;
  return result;
}

uint64_t sub_100030578(uint64_t a1)
{
  v2 = sub_10008672C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v27 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  v9 = sub_1000864CC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v24 - v15;
  sub_100028D0C();
  sub_100029070();
  (*(v10 + 104))(v14, enum case for BetaEnrollment.Availability.unavailable(_:), v9);
  sub_1000312FC(&qword_1000AE978, &type metadata accessor for BetaEnrollment.Availability);
  sub_10008729C();
  sub_10008729C();
  v17 = *(v10 + 8);
  v17(v14, v9);
  v28 = v8;
  if (v29 == v31)
  {
    v24 = a1;
    v25 = v17;
    v18 = v27;
    (*(v3 + 104))(v27, enum case for BetaEnrollment.State.enrolled(_:), v2);
    sub_1000312FC(qword_1000ADD68, &type metadata accessor for BetaEnrollment.State);
    sub_10008729C();
    sub_10008729C();
    v19 = *(v3 + 8);
    v19(v18, v2);
    if (v29 == v31)
    {
      v29 = 0;
      v30 = 0xE000000000000000;
      v27 = v2;
      sub_1000877DC(73);
      v32._object = 0x800000010008F040;
      v32._countAndFlagsBits = 0xD000000000000047;
      sub_1000871BC(v32);
      v31 = v24;
      v20 = *(v26 + 80);
      v21 = *(v26 + 88);
      v22 = type metadata accessor for BetaSettingsRowViewModel();
      sub_1000879EC();
      sub_100059920(v29, v30, v22, &off_1000A7F38);

      sub_100028588();
      v2 = v27;
    }

    v17 = v25;
  }

  else
  {
    v19 = *(v3 + 8);
  }

  v19(v28, v2);
  return (v17)(v16, v9);
}

uint64_t sub_100030948(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return sub_100001EEC(qword_1000AE698, &qword_10008A118);
  }

  else
  {

    return sub_1000879DC();
  }
}

void *sub_1000309BC(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_100030E48(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_100030A4C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100001EEC(&qword_1000AE9C8, &qword_10008A890);
  result = sub_1000877CC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    v17 = v9[5];
    result = sub_100087ACC();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 8 * v21) = v16;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_100030C38(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100001EEC(&qword_1000AE9E0, qword_10008AA08);
  result = sub_1000877CC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    v17 = v9[5];
    sub_100087ADC();
    sub_100087AEC(v16);
    result = sub_100087AFC();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 8 * v21) = v16;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_100030E48(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v23 = 0;
    v24 = 1 << *(a3 + 32);
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v26 = v25 & *(a3 + 56);
    v27 = (v24 + 63) >> 6;
    v28 = a4 + 56;
    v40 = 0;
LABEL_24:
    while (v26)
    {
      v29 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
LABEL_31:
      v32 = v29 | (v23 << 6);
      v33 = *(*(a3 + 48) + 8 * v32);
      v34 = *(a4 + 40);
      result = sub_100087ACC();
      v35 = -1 << *(a4 + 32);
      v36 = result & ~v35;
      if ((*(v28 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36))
      {
        v37 = ~v35;
        while (*(*(a4 + 48) + 8 * v36) != v33)
        {
          v36 = (v36 + 1) & v37;
          if (((*(v28 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        *(v39 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_41;
        }

        ++v40;
      }
    }

    v30 = v23;
    while (1)
    {
      v23 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v23 >= v27)
      {
LABEL_38:

        return sub_100030A4C(v39, a2, v40, a3);
      }

      v31 = *(a3 + 56 + 8 * v23);
      ++v30;
      if (v31)
      {
        v29 = __clz(__rbit64(v31));
        v26 = (v31 - 1) & v31;
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = 0;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v40 = 0;
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_13:
      v15 = *(*(a4 + 48) + 8 * (v12 | (v6 << 6)));
      v16 = *(a3 + 40);
      result = sub_100087ACC();
      v17 = -1 << *(a3 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      v20 = 1 << v18;
      if (((1 << v18) & *(v11 + 8 * (v18 >> 6))) != 0)
      {
        v21 = *(a3 + 48);
        if (*(v21 + 8 * v18) == v15)
        {
LABEL_18:
          v39[v19] |= v20;
          if (__OFADD__(v40, 1))
          {
            goto LABEL_42;
          }

          ++v40;
        }

        else
        {
          v22 = ~v17;
          while (1)
          {
            v18 = (v18 + 1) & v22;
            v19 = v18 >> 6;
            v20 = 1 << v18;
            if (((1 << v18) & *(v11 + 8 * (v18 >> 6))) == 0)
            {
              break;
            }

            if (*(v21 + 8 * v18) == v15)
            {
              goto LABEL_18;
            }
          }
        }
      }
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_38;
      }

      v14 = *(a4 + 56 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_10003112C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000324C;

  return sub_10002D118(a1);
}

uint64_t sub_100031208()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_100031248(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000324C;

  return sub_10002B864(a1);
}

uint64_t sub_1000312FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10003136C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_100030040(a1, a2);
}

uint64_t sub_10003138C(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1000300F4(a1);
}

uint64_t sub_1000313AC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_1000301E4(a1, a2);
}

uint64_t sub_1000313CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  return sub_100030504(a1, v2[4], a2);
}

uint64_t sub_1000313EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = _s11DeviceModelVMa();
  v7 = sub_10008767C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = v27 - v11;
  v13 = *(v6 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  v16 = v27 - v15;
  v29 = a2;
  if (a2 && (v30 = v29, type metadata accessor for BetaSettingsRowViewModel(), v17 = sub_10008739C(), swift_getWitnessTable(), v27[1] = v17, v18 = sub_1000875DC(), (v18 & 1) == 0))
  {
    v30 = v29;
    __chkstk_darwin(v18);
    v27[-2] = v23;
    v27[-1] = a4;
    swift_getKeyPath();
    swift_getWitnessTable();
    v24 = sub_10008722C();

    v25 = sub_100082D20(v24);

    if (!*(v25 + 16))
    {

      return 0;
    }

    v30 = v25;
    sub_100001EEC(&qword_1000AE9D0, &qword_10008A8D0);
    sub_100006454(&qword_1000AE9D8, &qword_1000AE9D0, &qword_10008A8D0);
    sub_1000064FC();
    v21 = sub_10008728C();
  }

  else
  {
    (*(v8 + 16))(v12, v28, v7);
    if ((*(v13 + 48))(v12, 1, v6) == 1)
    {
      (*(v8 + 8))(v12, v7);
      return 0;
    }

    (*(v13 + 32))(v16, v12, v6);
    v19 = &v16[*(v6 + 40)];
    v20 = v19[13];
    v21 = v19[14];
    v22 = v19[15];
    sub_100033360(v19[12], v20);
    (*(v13 + 8))(v16, v6);
    if (!v20)
    {
      return 0;
    }
  }

  return v21;
}

uint64_t sub_10003182C(unint64_t a1, uint64_t a2, int64_t a3, int64_t a4)
{
  v95 = a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = _s11DeviceModelVMa();
  v8 = sub_10008767C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v90 - v12;
  v14 = *(v7 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  v17 = &v90 - v16;
  v97[3] = &type metadata for Feature;
  v97[4] = sub_10000DF68();
  v18 = sub_1000860AC();
  sub_100001FF8(v97);
  result = 0;
  if ((v18 & 1) == 0)
  {
    return result;
  }

  v94 = a1;
  if (!v95 || (v97[0] = v95, type metadata accessor for BetaSettingsRowViewModel(), sub_10008739C(), swift_getWitnessTable(), v20 = sub_1000875DC(), (v20 & 1) != 0))
  {
    (*(v9 + 16))(v13, v94, v8);
    if ((*(v14 + 48))(v13, 1, v7) != 1)
    {
      (*(v14 + 32))(v17, v13, v7);
      v21 = *&v17[*(v7 + 52)];
      v22 = *(v14 + 8);

      v22(v17, v7);
      return v21;
    }

    (*(v9 + 8))(v13, v8);
    return 0;
  }

  v97[0] = v95;
  __chkstk_darwin(v20);
  *(&v90 - 2) = a3;
  *(&v90 - 1) = a4;
  sub_100001EEC(&qword_1000ADE30, &qword_100088A48);
  swift_getWitnessTable();
  v23 = sub_10008722C();
  v92 = v23;
  v93 = 0;
  v24 = *(v23 + 16);
  if (v24)
  {
    v97[0] = _swiftEmptyArrayStorage;
    sub_10006F6C8(0, v24, 0);
    v25 = 0;
    v26 = v97[0];
    v90 = v24;
    v91 = v23 + 32;
    v27 = -1;
    while (1)
    {
      if (v25 >= *(v23 + 16))
      {
        __break(1u);
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      v28 = *(v91 + 8 * v25);
      if (v28 >> 62)
      {
        if (v28 < 0)
        {
          v38 = *(v91 + 8 * v25);
        }

        v29 = sub_10008793C();
        v94 = v25;
        v95 = v26;
        if (v29)
        {
LABEL_12:
          v96 = _swiftEmptyArrayStorage;

          sub_10006F708(0, v29 & ~(v29 >> 63), 0);
          if (v29 < 0)
          {
            goto LABEL_72;
          }

          v30 = 0;
          v31 = v96;
          do
          {
            if ((v28 & 0xC000000000000001) != 0)
            {
              v32 = sub_10008781C();
            }

            else
            {
              v32 = *(v28 + 8 * v30 + 32);
            }

            v33 = v32;
            v34 = sub_10008648C();

            v96 = v31;
            v36 = v31[2];
            v35 = v31[3];
            v37 = v36 + 1;
            if (v36 >= v35 >> 1)
            {
              sub_10006F708((v35 > 1), v36 + 1, 1);
              v37 = v36 + 1;
              v31 = v96;
            }

            ++v30;
            v31[2] = v37;
            v31[v36 + 4] = v34;
          }

          while (v29 != v30);
          goto LABEL_25;
        }
      }

      else
      {
        v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v94 = v25;
        v95 = v26;
        if (v29)
        {
          goto LABEL_12;
        }
      }

      v31 = _swiftEmptyArrayStorage;
      v39 = _swiftEmptyArrayStorage[2];
LABEL_25:
      v40 = sub_1000874DC();
      v41 = v40;
      v42 = v31[2];
      if (v42)
      {
        v43 = 0;
        v44 = (v40 + 56);
        do
        {
          while (1)
          {
            v45 = v31[v43++ + 4];
            v46 = v41[5];
            v47 = sub_100087ACC();
            v48 = -1 << *(v41 + 32);
            v49 = v47 & ~v48;
            if ((*(v44 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49))
            {
              break;
            }

LABEL_32:
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v96 = v41;
            sub_100080DFC(v45, v49, isUniquelyReferenced_nonNull_native);
            v41 = v96;
            if (v43 == v42)
            {
              goto LABEL_34;
            }

            v44 = v96 + 7;
          }

          v50 = ~v48;
          while (*(v41[6] + 8 * v49) != v45)
          {
            v49 = (v49 + 1) & v50;
            if (((*(v44 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
            {
              goto LABEL_32;
            }
          }
        }

        while (v43 != v42);
      }

LABEL_34:

      v52 = v94;
      v26 = v95;
      v97[0] = v95;
      v54 = *(v95 + 16);
      v53 = *(v95 + 24);
      v55 = v54 + 1;
      v56 = v90;
      if (v54 >= v53 >> 1)
      {
        sub_10006F6C8((v53 > 1), v54 + 1, 1);
        v26 = v97[0];
      }

      v25 = v52 + 1;
      v26[2] = v55;
      v26[v54 + 4] = v41;
      v23 = v92;
      if (v25 == v56)
      {
        goto LABEL_39;
      }
    }
  }

  v26 = _swiftEmptyArrayStorage;
  v55 = _swiftEmptyArrayStorage[2];
  if (!v55)
  {
LABEL_68:

    return 0;
  }

LABEL_39:
  v27 = v26[4];

  v57 = v55 - 1;
  v95 = v26;
  if (v55 == 1)
  {
LABEL_40:

    if (*(v27 + 16) && *(v92 + 16))
    {
      v58 = *(v92 + 32);

      v97[0] = _swiftEmptyArrayStorage;
      v95 = v58;
      if (v58 >> 62)
      {
        goto LABEL_75;
      }

      for (i = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10008793C())
      {
        v60 = 0;
        v61 = v95 & 0xC000000000000001;
        v62 = v95 & 0xFFFFFFFFFFFFFF8;
        v63 = v95 + 32;
        v64 = v27 + 56;
        while (1)
        {
          if (v61)
          {
            v65 = sub_10008781C();
          }

          else
          {
            if (v60 >= *(v62 + 16))
            {
              goto LABEL_74;
            }

            v65 = *(v63 + 8 * v60);
          }

          v66 = v65;
          if (__OFADD__(v60++, 1))
          {
            break;
          }

          v68 = sub_10008648C();
          if (*(v27 + 16) && (v69 = v68, v70 = *(v27 + 40), v71 = sub_100087ACC(), v72 = -1 << *(v27 + 32), v73 = v71 & ~v72, ((*(v64 + ((v73 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v73) & 1) != 0))
          {
            v74 = ~v72;
            while (*(*(v27 + 48) + 8 * v73) != v69)
            {
              v73 = (v73 + 1) & v74;
              if (((*(v64 + ((v73 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v73) & 1) == 0)
              {
                goto LABEL_45;
              }
            }

            sub_10008784C();
            v75 = v61;
            v76 = *(v97[0] + 16);
            sub_10008788C();
            v61 = v75;
            sub_10008789C();
            sub_10008785C();
            if (v60 == i)
            {
              goto LABEL_76;
            }
          }

          else
          {
LABEL_45:

            if (v60 == i)
            {
              goto LABEL_76;
            }
          }
        }

LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        ;
      }

LABEL_76:

      return v97[0];
    }

    goto LABEL_68;
  }

  v77 = v26 + 5;
  while (1)
  {
    v78 = *v77;
    v79 = *(v27 + 32);
    v80 = v79 & 0x3F;
    v81 = ((1 << v79) + 63) >> 6;
    v82 = 8 * v81;
    swift_bridgeObjectRetain_n();

    if (v80 <= 0xD)
    {
      break;
    }

    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if (isStackAllocationSafe)
    {
      break;
    }

    v87 = swift_slowAlloc();

    v88 = v93;
    v89 = sub_1000309BC(v87, v81, v27, v78);
    v93 = v88;
    if (v88)
    {
      goto LABEL_78;
    }

    v86 = v89;

    swift_bridgeObjectRelease_n();

LABEL_63:
    v27 = v86;

    ++v77;
    if (!--v57)
    {
      goto LABEL_40;
    }
  }

  __chkstk_darwin(isStackAllocationSafe);
  bzero(&v90 - ((v82 + 15) & 0x3FFFFFFFFFFFFFF0), v82);
  v84 = v93;
  v85 = sub_100030E48(&v90 - ((v82 + 15) & 0x3FFFFFFFFFFFFFF0), v81, v27, v78);
  v93 = v84;
  if (!v84)
  {
    v86 = v85;

    goto LABEL_63;
  }

  swift_willThrow();

  __break(1u);
LABEL_78:

  __break(1u);
  return result;
}