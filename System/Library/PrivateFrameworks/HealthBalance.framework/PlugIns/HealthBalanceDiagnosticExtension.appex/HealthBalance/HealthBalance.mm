Swift::Int sub_100001118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock((a3 + 32));
  sub_100001588((a3 + 16));
  os_unfair_lock_unlock((a3 + 32));
  return sub_100005324();
}

unint64_t sub_100001190(void *a1)
{
  v27 = a1;
  v29 = sub_1000051A4();
  v1 = *(v29 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v29, v3);
  v5 = (&v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_1000051C4();
  v6 = *(v28 - 8);
  v7 = *(v6 + 64);
  v9 = __chkstk_darwin(v28, v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v12);
  v14 = &v26 - v13;
  v15 = dispatch_semaphore_create(0);
  sub_100001490();
  v16 = swift_allocObject();
  *(v16 + 32) = 0;
  v17 = (v16 + 32);
  *(v16 + 16) = 0xD00000000000001DLL;
  *(v16 + 24) = 0x8000000100005D50;
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = v15;

  v19 = v15;
  sub_1000046CC(v27, sub_100001580, v18);

  sub_1000051B4();
  *v5 = 30;
  v20 = v29;
  (*(v1 + 104))(v5, enum case for DispatchTimeInterval.seconds(_:), v29);
  sub_1000051D4();
  (*(v1 + 8))(v5, v20);
  v21 = *(v6 + 8);
  v22 = v28;
  v21(v11, v28);
  LOBYTE(v20) = sub_100005314();
  v21(v14, v22);
  if (v20)
  {

    return 0xD000000000000014;
  }

  else
  {
    os_unfair_lock_lock(v17);
    v23 = *(v16 + 16);
    v24 = *(v16 + 24);

    os_unfair_lock_unlock(v17);
  }

  return v23;
}

void sub_100001490()
{
  if (!qword_10000C200)
  {
    type metadata accessor for os_unfair_lock_s();
    v0 = sub_1000053A4();
    if (!v1)
    {
      atomic_store(v0, &qword_10000C200);
    }
  }
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_10000C208)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_10000C208);
    }
  }
}

uint64_t sub_100001540()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100001588(void *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1[1];

  *a1 = v4;
  a1[1] = v3;
}

uint64_t sub_1000015E0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100001600(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_100001628(uint64_t a1)
{
  v36[1] = swift_getObjectType();
  v37 = sub_100005194();
  v2 = *(v37 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v37, v4);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000050C4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for DiagnosticLogSessionAttachment();
  v13 = swift_allocObject();
  *(v13 + 16) = &_swiftEmptyArrayStorage;
  sub_100003098(0x206E6F6973736553, 0xEF64657472617453);
  v41 = 0x656E6F5A656D6954;
  v42 = 0xEA0000000000203ALL;
  sub_1000050B4();
  sub_100003A28(&qword_10000C328, &type metadata accessor for TimeZone);
  v44._countAndFlagsBits = sub_1000053D4();
  sub_100005274(v44);

  (*(v8 + 8))(v12, v7);
  sub_100003098(v41, v42);

  if (a1)
  {
    v39 = sub_100005234();
    v40 = v15;
    sub_100005374();
    if (*(a1 + 16) && (v16 = sub_100004048(&v41), (v17 & 1) != 0))
    {
      sub_1000041F4(*(a1 + 56) + 32 * v16, v43);
      sub_10000408C(&v41);
      if ((swift_dynamicCast() & 1) != 0 && v39 == 1)
      {
        sub_1000040E0(0, &qword_10000C330, sub_100004144, &type metadata accessor for _ContiguousArrayStorage);
        inited = swift_initStackObject();
        *(inited + 56) = &type metadata for NotificationSettingsAttachment;
        *(inited + 64) = &off_100008740;
        *(inited + 96) = &type metadata for NotificationStateAttachment;
        *(inited + 104) = &off_100008728;
        *(inited + 136) = &type metadata for SleepingSampleDaySummariesAttachment;
        *(inited + 144) = &off_100008710;
        *(inited + 16) = xmmword_1000058E0;
        *(inited + 176) = v38;
        *(inited + 184) = &off_100008680;
        *(inited + 152) = v13;
        v19 = objc_allocWithZone(HKHealthStore);

        v20 = [v19 init];
        v21 = sub_100001C44(inited, v20);

        swift_setDeallocating();
        sub_100004144();
        swift_arrayDestroy();
LABEL_11:
        v35 = sub_1000021A4(v21);

        return v35;
      }
    }

    else
    {
      sub_10000408C(&v41);
    }

    sub_100003098(0xD000000000000039, 0x8000000100005EB0);

    v22 = sub_100005204();
    v24 = v23;

    sub_100003098(v22, v24);

    sub_100005174();
    v25 = sub_100005184();
    v26 = sub_1000052D4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v41 = v28;
      *v27 = 136446210;
      v29 = sub_1000053E4();
      v31 = sub_100003A70(v29, v30, &v41);

      *(v27 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v25, v26, "[%{public}s] Consent not provided; exiting without attaching any files", v27, 0xCu);
      sub_1000041A8(v28);
    }

    (*(v2 + 8))(v6, v37);
    sub_1000040E0(0, &qword_10000C330, sub_100004144, &type metadata accessor for _ContiguousArrayStorage);
    v32 = swift_initStackObject();
    *(v32 + 16) = xmmword_1000058F0;
    *(v32 + 56) = v38;
    *(v32 + 64) = &off_100008680;
    *(v32 + 32) = v13;
    v33 = objc_allocWithZone(HKHealthStore);

    v34 = [v33 init];
    v21 = sub_100001C44(v32, v34);

    swift_setDeallocating();
    sub_1000041A8((v32 + 32));
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

void *sub_100001C44(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v53 = a1;
  ObjectType = swift_getObjectType();
  v2 = sub_100005194();
  v54 = *(v2 - 8);
  v55 = v2;
  v3 = *(v54 + 64);
  __chkstk_darwin(v2, v4);
  v57 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004F84();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100004FD4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = __chkstk_darwin(v12, v15);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v19);
  v21 = &v52 - v20;
  v22 = objc_opt_self();
  v23 = [v22 defaultManager];
  v24 = [v23 temporaryDirectory];

  sub_100004FA4();
  v58[0] = 0xD000000000000019;
  v58[1] = 0x8000000100005EF0;
  (*(v7 + 104))(v11, enum case for URL.DirectoryHint.isDirectory(_:), v6);
  sub_1000044C4();
  sub_100004FB4();
  v25 = v6;
  v26 = v12;
  (*(v7 + 8))(v11, v25);
  v27 = v13 + 8;
  v28 = *(v13 + 8);
  v28(v18, v26);
  v29 = [v22 defaultManager];
  sub_100004F94(v30);
  v32 = v31;
  v58[0] = 0;
  LODWORD(v22) = [v29 createDirectoryAtURL:v31 withIntermediateDirectories:1 attributes:0 error:v58];

  v35 = v58[0];
  if (v22)
  {
    __chkstk_darwin(v33, v34);
    v36 = v52;
    *(&v52 - 4) = v21;
    *(&v52 - 3) = v36;
    *(&v52 - 2) = ObjectType;
    v37 = v35;
    v38 = sub_100002B24(sub_1000045DC, (&v52 - 6), v53);
  }

  else
  {
    v39 = v58[0];
    sub_100004F74();

    swift_willThrow();
    sub_100005174();
    swift_errorRetain();
    v40 = sub_100005184();
    v41 = sub_1000052D4();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v52 = v26;
      v53 = v27;
      v45 = v44;
      v58[0] = v44;
      *v42 = 136446466;
      v46 = sub_1000053E4();
      v48 = v28;
      v49 = sub_100003A70(v46, v47, v58);

      *(v42 + 4) = v49;
      v28 = v48;
      *(v42 + 12) = 2114;
      swift_errorRetain();
      v50 = _swift_stdlib_bridgeErrorToNSError();
      *(v42 + 14) = v50;
      *v43 = v50;
      _os_log_impl(&_mh_execute_header, v40, v41, "[%{public}s] Failed to create diagnostics directory %{public}@", v42, 0x16u);
      sub_100004518(v43);

      sub_1000041A8(v45);
      v26 = v52;
    }

    (*(v54 + 8))(v57, v55);

    v38 = &_swiftEmptyArrayStorage;
  }

  v28(v21, v26);
  return v38;
}

char *sub_1000021A4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1000053C4();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = &_swiftEmptyArrayStorage;
  result = sub_100004318(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_100005394();
        sub_100004CAC(0, &qword_10000C348, DEAttachmentItem_ptr);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_100004318((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_100004338(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_100004CAC(0, &qword_10000C348, DEAttachmentItem_ptr);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_100004318((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_100004338(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_100002458@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v74 = a3;
  v69 = a4;
  v73 = a2;
  v78 = a5;
  v6 = sub_100005194();
  v71 = *(v6 - 8);
  v72 = v6;
  v7 = *(v71 + 64);
  __chkstk_darwin(v6, v8);
  v81 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005254();
  v67 = *(v10 - 8);
  v68 = v10;
  v11 = *(v67 + 64);
  __chkstk_darwin(v10, v12);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100004F84();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15, v18);
  v20 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100004FD4();
  v76 = *(v21 - 8);
  v77 = v21;
  v22 = *(v76 + 64);
  v24 = __chkstk_darwin(v21, v23);
  v70 = &v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24, v26);
  v28 = &v67 - v27;
  v30 = a1[3];
  v29 = a1[4];
  sub_1000045FC(a1, v30);
  v79 = (*(v29 + 8))(v30, v29);
  v80 = v31;
  (*(v16 + 104))(v20, enum case for URL.DirectoryHint.notDirectory(_:), v15);
  sub_1000044C4();
  sub_100004FC4();
  (*(v16 + 8))(v20, v15);

  v32 = a1[3];
  v33 = a1[4];
  sub_1000045FC(a1, v32);
  v34 = v75;
  v35 = (*(v33 + 16))(v74, v32, v33);
  if (v34)
  {
    v75 = 0;
    v37 = v76;
    v38 = v77;
    v39 = v28;
    v42 = v81;
    sub_100005174();
    v43 = v70;
    (*(v37 + 16))(v70, v28, v38);
    swift_errorRetain();
    v44 = sub_100005184();
    v45 = sub_1000052D4();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = v37;
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v77 = v39;
      v49 = v48;
      v76 = swift_slowAlloc();
      v79 = v76;
      *v47 = 136446722;
      v50 = sub_1000053E4();
      v52 = sub_100003A70(v50, v51, &v79);
      LODWORD(v74) = v45;
      v53 = v52;

      *(v47 + 4) = v53;
      *(v47 + 12) = 2080;
      sub_100003A28(&qword_10000C370, &type metadata accessor for URL);
      v54 = sub_1000053D4();
      v56 = v55;
      v57 = *(v46 + 8);
      v57(v43);
      v58 = sub_100003A70(v54, v56, &v79);

      *(v47 + 14) = v58;
      *(v47 + 22) = 2114;
      swift_errorRetain();
      v59 = _swift_stdlib_bridgeErrorToNSError();
      *(v47 + 24) = v59;
      *v49 = v59;
      _os_log_impl(&_mh_execute_header, v44, v74, "[%{public}s] Failed to write to %s: %{public}@", v47, 0x20u);
      sub_100004518(v49);

      swift_arrayDestroy();

      (*(v71 + 8))(v81, v72);
      result = (v57)(v77, v38);
    }

    else
    {

      v60 = *(v37 + 8);
      v60(v43, v38);
      (*(v71 + 8))(v42, v72);
      result = (v60)(v28, v38);
    }

    v65 = 0;
  }

  else
  {
    v41 = v67;
    v40 = v68;
    v79 = v35;
    v80 = v36;
    sub_100005244();
    sub_100005344();
    (*(v41 + 8))(v14, v40);

    v61 = objc_allocWithZone(DEAttachmentItem);
    sub_100004F94(v62);
    v64 = v63;
    v65 = [v61 initWithPathURL:v63];

    result = (*(v76 + 8))(v28, v77);
  }

  *v78 = v65;
  return result;
}

void *sub_100002B24(void *result, uint64_t a2, uint64_t a3)
{
  v4 = &_swiftEmptyArrayStorage;
  v14 = &_swiftEmptyArrayStorage;
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v12 = a3 + 32;
    do
    {
      v9 = v8 + 40 * v7;
      for (i = v7; ; ++i)
      {
        if (i >= v5)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return result;
        }

        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        result = v6(&v13, v9);
        if (v3)
        {

          return v4;
        }

        if (v13)
        {
          break;
        }

        v9 += 40;
        if (v7 == v5)
        {
          return v4;
        }
      }

      sub_100005294();
      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v11 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1000052B4();
      }

      result = sub_1000052C4();
      v4 = v14;
      v8 = v12;
    }

    while (v7 != v5);
  }

  return v4;
}

id sub_100002CA8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100002D20()
{
  sub_1000050E4();
  sub_1000050D4();
  sub_100004CAC(0, &qword_10000C378, HKTableFormatter_ptr);

  v0 = sub_1000052F4();
  v1 = [v0 formattedTable];
  v2 = sub_100005234();

  return v2;
}

uint64_t sub_100002E04(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  v8 = sub_100005114();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  (__chkstk_darwin)();
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*(sub_100005164() - 8) + 64);
  (__chkstk_darwin)();
  if (a3)
  {
    ErrorValue = swift_getErrorValue();
    v15 = *(*(v26[1] - 8) + 64);
    __chkstk_darwin(ErrorValue, v26[0]);
    (*(v17 + 16))(v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    v18 = sub_100005264();
  }

  else
  {
    sub_100004CAC(0, &qword_10000C378, HKTableFormatter_ptr);
    (*(v9 + 16))(v12, a4, v8);

    sub_100005154();
    v20 = sub_100005304();
    v21 = [v20 formattedTable];

    v22 = sub_100005234();
    v24 = v23;

    v18 = v22;
    v19 = v24;
  }

  a5(v18, v19);
}

uint64_t sub_100003098(uint64_t a1, void *a2)
{
  v3 = v2;
  v28 = a2;
  v5 = sub_100005044();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100005064();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = 91;
  v30 = 0xE100000000000000;
  sub_100005054();
  sub_1000032FC(v10);
  v17 = sub_100004FE4();
  v19 = v18;
  (*(v6 + 8))(v10, v5);
  (*(v12 + 8))(v16, v11);
  v31._countAndFlagsBits = v17;
  v31._object = v19;
  sub_100005274(v31);

  v32._countAndFlagsBits = 8285;
  v32._object = 0xE200000000000000;
  sub_100005274(v32);
  v33._countAndFlagsBits = a1;
  v33._object = v28;
  sub_100005274(v33);
  v20 = v29;
  v21 = v30;
  swift_beginAccess();
  v22 = *(v3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 16) = v22;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v22 = sub_100003900(0, *(v22 + 2) + 1, 1, v22);
    *(v3 + 16) = v22;
  }

  v25 = *(v22 + 2);
  v24 = *(v22 + 3);
  if (v25 >= v24 >> 1)
  {
    v22 = sub_100003900((v24 > 1), v25 + 1, 1, v22);
  }

  *(v22 + 2) = v25 + 1;
  v26 = &v22[16 * v25];
  *(v26 + 4) = v20;
  *(v26 + 5) = v21;
  *(v3 + 16) = v22;
  return swift_endAccess();
}

uint64_t sub_1000032FC@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  sub_1000040E0(0, &qword_10000C320, &type metadata accessor for TimeZone, &type metadata accessor for Optional);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8, v3);
  v41 = &v36 - v4;
  v40 = sub_1000050C4();
  v5 = *(v40 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v40, v7);
  v37 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_100005034();
  v9 = *(v39 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v39, v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100005014();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14, v17);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100004FF4();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20, v23);
  v25 = &v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100005004();
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26, v28);
  (*(v30 + 104))(&v36 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Date.ISO8601FormatStyle.DateSeparator.dash(_:));
  v31 = v20;
  v32 = v40;
  (*(v21 + 104))(v25, enum case for Date.ISO8601FormatStyle.DateTimeSeparator.standard(_:), v31);
  v33 = v13;
  v34 = v41;
  (*(v15 + 104))(v19, enum case for Date.ISO8601FormatStyle.TimeSeparator.colon(_:), v14);
  (*(v9 + 104))(v33, enum case for Date.ISO8601FormatStyle.TimeZoneSeparator.omitted(_:), v39);
  sub_1000050A4();
  result = (*(v5 + 48))(v34, 1, v32);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v5 + 32))(v37, v34, v32);
    return sub_100005024();
  }

  return result;
}

uint64_t sub_100003724()
{
  v1 = *(v0 + 16);

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_10000379C()
{
  v1 = *v0;
  sub_100003098(0x206E6F6973736553, 0xED00006465646E45);
  swift_beginAccess();
  v4 = *(v1 + 16);
  sub_100004474(0, &qword_10000C308, &type metadata for String, &type metadata accessor for Array);
  sub_100003884();

  v2 = sub_100005214();

  return v2;
}

unint64_t sub_100003884()
{
  result = qword_10000C310;
  if (!qword_10000C310)
  {
    sub_100004474(255, &qword_10000C308, &type metadata for String, &type metadata accessor for Array);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C310);
  }

  return result;
}

char *sub_100003900(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004474(0, &qword_10000C318, &type metadata for String, &type metadata accessor for _ContiguousArrayStorage);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100003A28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100003A70(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100003B3C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1000041F4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000041A8(v11);
  return v7;
}

unint64_t sub_100003B3C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100003C48(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_1000053B4();
    a6 = v11;
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

char *sub_100003C48(uint64_t a1, unint64_t a2)
{
  v4 = sub_100003C94(a1, a2);
  sub_100003DC4(&off_1000085B0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100003C94(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100003EB0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1000053B4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_100005284();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100003EB0(v10, 0);
        result = sub_100005384();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100003DC4(uint64_t result)
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
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_100003F3C(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
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

void *sub_100003EB0(uint64_t a1, uint64_t a2)
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

  sub_100004474(0, &qword_10000C340, &type metadata for UInt8, &type metadata accessor for _ContiguousArrayStorage);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100003F3C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004474(0, &qword_10000C340, &type metadata for UInt8, &type metadata accessor for _ContiguousArrayStorage);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

unint64_t sub_100004048(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100005354(*(v2 + 40));

  return sub_100004250(a1, v4);
}

void sub_1000040E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_100004144()
{
  result = qword_10000C338;
  if (!qword_10000C338)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10000C338);
  }

  return result;
}

uint64_t sub_1000041A8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1000041F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100004250(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100004640(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100005364();
      sub_10000408C(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

char *sub_100004318(char *a1, int64_t a2, char a3)
{
  result = sub_100004348(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

_OWORD *sub_100004338(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

char *sub_100004348(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004474(0, &qword_10000C350, &type metadata for Any + 8, &type metadata accessor for _ContiguousArrayStorage);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_100004474(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1000044C4()
{
  result = qword_10000C358;
  if (!qword_10000C358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C358);
  }

  return result;
}

uint64_t sub_100004518(uint64_t a1)
{
  sub_100004574();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100004574()
{
  if (!qword_10000C360)
  {
    sub_100004CAC(255, &qword_10000C368, NSObject_ptr);
    v0 = sub_100005334();
    if (!v1)
    {
      atomic_store(v0, &qword_10000C360);
    }
  }
}

void *sub_1000045FC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000046CC(void *a1, uint64_t a2, uint64_t a3)
{
  v54 = a2;
  v55 = a3;
  v56 = a1;
  sub_100004CF4();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v53 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_100005064();
  v50 = *(v52 - 8);
  v7 = *(v50 + 64);
  __chkstk_darwin(v52, v8);
  v10 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_100005114();
  v11 = *(v51 - 8);
  v12 = *(v11 + 64);
  v14 = __chkstk_darwin(v51, v13);
  v49 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v15);
  v47 = v46 - v16;
  v17 = sub_100005074();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17, v20);
  v22 = v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100005094();
  v48 = *(v23 - 8);
  v24 = v48;
  v25 = *(v48 + 64);
  v27 = __chkstk_darwin(v23, v26);
  v29 = v46 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46[1] = v29;
  __chkstk_darwin(v27, v30);
  v32 = v46 - v31;
  (*(v18 + 104))(v22, enum case for Calendar.Identifier.gregorian(_:), v17);
  sub_100005084();
  (*(v18 + 8))(v22, v17);
  sub_100005054();
  v33 = v47;
  sub_100005104();
  (*(v50 + 8))(v10, v52);
  sub_1000050F4();
  (*(v24 + 16))(v29, v32, v23);
  v34 = v49;
  v35 = v33;
  v36 = v51;
  (*(v11 + 16))(v49, v33, v51);
  v37 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v38 = (v12 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  (*(v11 + 32))(v39 + v37, v34, v36);
  v40 = (v39 + v38);
  v41 = v55;
  *v40 = v54;
  v40[1] = v41;
  sub_100004EE0();
  v43 = objc_allocWithZone(v42);

  v44 = sub_100005134();
  [v56 executeQuery:v44];

  (*(v11 + 8))(v35, v36);
  return (*(v48 + 8))(v32, v23);
}

id sub_100004B58()
{
  sub_100004CAC(0, &qword_10000C380, HKKeyValueDomain_ptr);
  v0 = sub_1000052E4();
  v7 = 0;
  v1 = [v0 allValuesWithError:&v7];
  v2 = v7;
  if (v1)
  {
    v3 = v1;
    sub_1000051F4();
    v4 = v2;

    v2 = sub_100005204();
  }

  else
  {
    v5 = v7;
    sub_100004F74();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_100004CAC(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void sub_100004CF4()
{
  if (!qword_10000C388)
  {
    sub_1000051E4();
    sub_100003A28(&qword_10000C390, &type metadata accessor for DayIndex);
    v0 = sub_100005224();
    if (!v1)
    {
      atomic_store(v0, &qword_10000C388);
    }
  }
}

uint64_t sub_100004D88()
{
  v1 = sub_100005114();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100004E28(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(sub_100005114() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);

  return sub_100002E04(a1, a2, a3 & 1, v3 + v8, v10);
}

void sub_100004EE0()
{
  if (!qword_10000C398)
  {
    sub_100005124();
    sub_100003A28(&qword_10000C3A0, &type metadata accessor for SleepingSampleDaySummary);
    v0 = sub_100005144();
    if (!v1)
    {
      atomic_store(v0, &qword_10000C398);
    }
  }
}