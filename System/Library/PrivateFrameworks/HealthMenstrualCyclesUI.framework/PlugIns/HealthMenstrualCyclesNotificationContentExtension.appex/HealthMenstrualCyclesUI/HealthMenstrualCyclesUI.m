void sub_1000012F0()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for NotificationViewController();
  objc_msgSendSuper2(&v8, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 heightAnchor];

    v4 = [v3 constraintEqualToConstant:0.0];
    [v4 setActive:1];

    v5 = [v0 view];
    if (v5)
    {
      v6 = v5;
      v7 = [objc_opt_self() clearColor];
      [v6 setBackgroundColor:v7];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000014C8(void *a1)
{
  v2 = v1;
  v3 = [a1 request];
  v4 = [v3 content];

  v5 = [v4 categoryIdentifier];
  if (!v5)
  {
    sub_100002AB8();
    v5 = sub_100002A88();
  }

  v6 = sub_100002AB8();
  v8 = v7;
  if (v6 == sub_100002AB8() && v8 == v9)
  {
    goto LABEL_15;
  }

  v11 = sub_100002BC8();

  if (v11)
  {
LABEL_16:
    sub_100002B68();
    sub_100002368();
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_100002F80;
    ObjectType = swift_getObjectType();
    sub_100002424();
    v23 = sub_100002AC8();
    v25 = v24;
    *(v22 + 56) = &type metadata for String;
    v26 = sub_100002468();
    *(v22 + 64) = v26;
    *(v22 + 32) = v23;
    *(v22 + 40) = v25;
    ObjectType = v5;
    type metadata accessor for HKMCNotificationCategory();
    v27 = v5;
    v28 = sub_100002AC8();
    *(v22 + 96) = &type metadata for String;
    *(v22 + 104) = v26;
    *(v22 + 72) = v28;
    *(v22 + 80) = v29;
    sub_10000250C(0, &qword_100008498, OS_os_log_ptr);
    v30 = sub_100002B78();
    sub_100002A78();

    goto LABEL_17;
  }

  v12 = sub_100002AB8();
  v14 = v13;
  if (v12 == sub_100002AB8() && v14 == v15)
  {
LABEL_15:

    goto LABEL_16;
  }

  v17 = sub_100002BC8();

  if (v17)
  {
    goto LABEL_16;
  }

  v18 = sub_100002AB8();
  v20 = v19;
  if (v18 == sub_100002AB8() && v20 == v21)
  {
    goto LABEL_15;
  }

  v31 = sub_100002BC8();

  if (v31)
  {
    goto LABEL_16;
  }

  v32 = sub_100002AB8();
  v34 = v33;
  if (v32 == sub_100002AB8() && v34 == v35)
  {
    goto LABEL_15;
  }

  v36 = sub_100002BC8();

  if (v36)
  {
    goto LABEL_16;
  }

  v37 = sub_100002AB8();
  v39 = v38;
  if (v37 == sub_100002AB8() && v39 == v40)
  {
    goto LABEL_15;
  }

  v41 = sub_100002BC8();

  if (v41)
  {
    goto LABEL_16;
  }

  v42 = sub_100002AB8();
  v44 = v43;
  if (v42 == sub_100002AB8() && v44 == v45)
  {
    goto LABEL_15;
  }

  v46 = sub_100002BC8();

  if (v46)
  {
    goto LABEL_16;
  }

  v47 = sub_100002AB8();
  v49 = v48;
  if (v47 == sub_100002AB8() && v49 == v50)
  {
    goto LABEL_15;
  }

  v51 = sub_100002BC8();

  if (v51)
  {
    goto LABEL_16;
  }

  v52 = sub_100002AB8();
  v54 = v53;
  if (v52 == sub_100002AB8() && v54 == v55)
  {
    goto LABEL_15;
  }

  v56 = sub_100002BC8();

  if (v56)
  {
    goto LABEL_16;
  }

  v57 = sub_100002AB8();
  v59 = v58;
  if (v57 == sub_100002AB8() && v59 == v60)
  {
    goto LABEL_15;
  }

  v61 = sub_100002BC8();

  if (v61)
  {
    goto LABEL_16;
  }

  v62 = sub_100002AB8();
  v64 = v63;
  if (v62 == sub_100002AB8() && v64 == v65)
  {
    goto LABEL_15;
  }

  v66 = sub_100002BC8();

  if (v66)
  {
    goto LABEL_16;
  }

  v67 = sub_100002AB8();
  v69 = v68;
  if (v67 == sub_100002AB8() && v69 == v70)
  {
    goto LABEL_15;
  }

  v71 = sub_100002BC8();

  if (v71)
  {
    goto LABEL_16;
  }

  v72 = sub_100002AB8();
  v74 = v73;
  if (v72 == sub_100002AB8() && v74 == v75)
  {
    goto LABEL_15;
  }

  v76 = sub_100002BC8();

  if (v76)
  {
    goto LABEL_16;
  }

  v77 = sub_100002AB8();
  v79 = v78;
  if (v77 == sub_100002AB8() && v79 == v80)
  {

    goto LABEL_51;
  }

  v81 = sub_100002BC8();

  if (v81)
  {
LABEL_51:
    v82 = objc_opt_self();
    v117[4] = [v82 hkmc_actionWithIdentifier:HKMCNotificationActionIdentifierPeriodNotStarted];
    v83 = 0;
    v117[5] = [v82 hkmc_actionWithIdentifier:HKMCNotificationActionIdentifierOpenAddPeriodCalendar];
    v84 = &_swiftEmptyArrayStorage;
    ObjectType = &_swiftEmptyArrayStorage;
    while (v83 != 2)
    {
      v85 = v117[v83++ + 4];
      if (v85)
      {
        v86 = v85;
        sub_100002AF8();
        if (*((ObjectType & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((ObjectType & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100002B18();
        }

        sub_100002B28();
        v84 = ObjectType;
      }
    }

    goto LABEL_67;
  }

  v87 = sub_100002AB8();
  v89 = v88;
  if (v87 == sub_100002AB8() && v89 == v90)
  {

    goto LABEL_61;
  }

  v91 = sub_100002BC8();

  if ((v91 & 1) == 0)
  {
    v108 = sub_100002AB8();
    v110 = v109;
    if (v108 != sub_100002AB8() || v110 != v111)
    {
      v112 = sub_100002BC8();

      if (v112)
      {
        goto LABEL_16;
      }

      v113 = sub_100002AB8();
      v115 = v114;
      if (v113 != sub_100002AB8() || v115 != v116)
      {
        sub_100002BC8();
      }
    }

    goto LABEL_15;
  }

LABEL_61:
  v92 = objc_opt_self();
  v119[4] = [v92 hkmc_actionWithIdentifier:HKMCNotificationActionIdentifierPeriodNotEnded];
  v93 = 0;
  v119[5] = [v92 hkmc_actionWithIdentifier:HKMCNotificationActionIdentifierOpenAddPeriodCalendar];
  v84 = &_swiftEmptyArrayStorage;
  ObjectType = &_swiftEmptyArrayStorage;
  while (v93 != 2)
  {
    v94 = v119[v93++ + 4];
    if (v94)
    {
      v95 = v94;
      sub_100002AF8();
      if (*((ObjectType & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((ObjectType & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100002B18();
      }

      sub_100002B28();
      v84 = ObjectType;
    }
  }

LABEL_67:
  sub_100002794();
  swift_arrayDestroy();
  if (!v84)
  {
    goto LABEL_16;
  }

  sub_100002B68();
  sub_100002368();
  v96 = swift_allocObject();
  *(v96 + 16) = xmmword_100002F70;
  ObjectType = swift_getObjectType();
  sub_100002424();
  v97 = sub_100002AC8();
  v99 = v98;
  *(v96 + 56) = &type metadata for String;
  v100 = sub_100002468();
  *(v96 + 64) = v100;
  *(v96 + 32) = v97;
  *(v96 + 40) = v99;
  if (v84 >> 62)
  {
    v101 = sub_100002B98();
  }

  else
  {
    v101 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v96 + 96) = &type metadata for Int;
  *(v96 + 104) = &protocol witness table for Int;
  *(v96 + 72) = v101;
  ObjectType = v5;
  type metadata accessor for HKMCNotificationCategory();
  v30 = v5;
  v102 = sub_100002AC8();
  *(v96 + 136) = &type metadata for String;
  *(v96 + 144) = v100;
  *(v96 + 112) = v102;
  *(v96 + 120) = v103;
  sub_10000250C(0, &qword_100008498, OS_os_log_ptr);
  v104 = sub_100002B78();
  sub_100002A78();

  v105 = [v2 extensionContext];
  if (v105)
  {
    v106 = v105;
    sub_10000250C(0, &qword_1000084A0, UNNotificationAction_ptr);
    isa = sub_100002B08().super.isa;

    [v106 setNotificationActions:isa];

    goto LABEL_18;
  }

LABEL_17:

LABEL_18:
}

id sub_100002310()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotificationViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100002368()
{
  if (!qword_100008478)
  {
    sub_1000023C0();
    v0 = sub_100002BB8();
    if (!v1)
    {
      atomic_store(v0, &qword_100008478);
    }
  }
}

unint64_t sub_1000023C0()
{
  result = qword_100008480;
  if (!qword_100008480)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100008480);
  }

  return result;
}

unint64_t sub_100002424()
{
  result = qword_100008488;
  if (!qword_100008488)
  {
    type metadata accessor for NotificationViewController();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_100008488);
  }

  return result;
}

unint64_t sub_100002468()
{
  result = qword_100008490;
  if (!qword_100008490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008490);
  }

  return result;
}

void type metadata accessor for HKMCNotificationCategory()
{
  if (!qword_1000084B0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1000084B0);
    }
  }
}

uint64_t sub_10000250C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_10000255C(uint64_t a1, id *a2)
{
  result = sub_100002A98();
  *a2 = 0;
  return result;
}

uint64_t sub_1000025D4(uint64_t a1, id *a2)
{
  v3 = sub_100002AA8();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100002654@<X0>(void *a1@<X8>)
{
  sub_100002AB8();
  v2 = sub_100002A88();

  *a1 = v2;
  return result;
}

uint64_t sub_100002698(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_100002AB8();
  v6 = v5;
  if (v4 == sub_100002AB8() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_100002BC8();
  }

  return v9 & 1;
}

uint64_t sub_100002720@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_100002A88();

  *a2 = v5;
  return result;
}

uint64_t sub_100002768@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_100002AB8();
  *a1 = result;
  a1[1] = v5;
  return result;
}

void sub_100002794()
{
  if (!qword_1000084A8)
  {
    sub_10000250C(255, &qword_1000084A0, UNNotificationAction_ptr);
    v0 = sub_100002B88();
    if (!v1)
    {
      atomic_store(v0, &qword_1000084A8);
    }
  }
}

uint64_t sub_1000027FC(uint64_t a1)
{
  v2 = sub_100002A34(&qword_1000084D0);
  v3 = sub_100002A34(&qword_1000084D8);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100002930()
{
  v1 = *v0;
  sub_100002AB8();
  v2 = sub_100002AE8();

  return v2;
}

uint64_t sub_10000296C()
{
  v1 = *v0;
  sub_100002AB8();
  sub_100002AD8();
}

Swift::Int sub_1000029C0()
{
  v1 = *v0;
  sub_100002AB8();
  sub_100002BD8();
  sub_100002AD8();
  v2 = sub_100002BE8();

  return v2;
}

uint64_t sub_100002A34(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HKMCNotificationCategory();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}