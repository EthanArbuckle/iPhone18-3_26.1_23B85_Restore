void sub_1000015C0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void variable initialization expression of STDiagnosticCollector.baseDirectory()
{
  v0 = [objc_opt_self() diagnosticsDirectory];
  sub_100002FE4();
}

id STDiagnosticCollector.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id STDiagnosticCollector.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_100003074();
  v40 = *(v2 - 8);
  v41 = v2;
  v3 = *(v40 + 64);
  __chkstk_darwin();
  v39 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003004();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC29ScreenTimeDiagnosticExtension21STDiagnosticCollector_baseDirectory;
  v11 = [objc_opt_self() diagnosticsDirectory];
  sub_100002FE4();

  (*(v6 + 32))(&v1[v10], v9, v5);
  v38 = OBJC_IVAR____TtC29ScreenTimeDiagnosticExtension21STDiagnosticCollector_logger;
  sub_100003064();
  v12 = [objc_opt_self() defaultManager];
  v13 = *(v6 + 16);
  v42 = v10;
  v13(v9, &v1[v10], v5);
  sub_100002FF4(1);
  v14 = *(v6 + 8);
  v14(v9, v5);
  v15 = sub_100003084();

  v16 = [v12 fileExistsAtPath:v15];

  if (v16)
  {

    v17 = v1;
  }

  else
  {
    v13(v9, &v42[v1], v5);
    sub_100002FC4(v18);
    v20 = v19;
    v14(v9, v5);
    v46 = 0;
    v21 = [v12 createDirectoryAtURL:v20 withIntermediateDirectories:1 attributes:0 error:&v46];

    v17 = v1;
    if (v21)
    {
      v22 = v46;
    }

    else
    {
      v23 = v46;
      v24 = sub_100002FB4();

      swift_willThrow();
      v26 = v39;
      v25 = v40;
      v27 = &v1[v38];
      v28 = v41;
      (*(v40 + 16))(v39, v27, v41);
      swift_errorRetain();
      v29 = sub_100003054();
      v30 = sub_1000030B4();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v42 = v17;
        v32 = v31;
        v46 = swift_slowAlloc();
        v33 = v46;
        *v32 = 136446210;
        v44 = v24;
        swift_errorRetain();
        sub_1000025DC(&qword_1000082D8, &unk_1000035D0);
        v34 = sub_100003094();
        v36 = sub_100002034(v34, v35, &v46);

        *(v32 + 4) = v36;
        _os_log_impl(&_mh_execute_header, v29, v30, "Failed to create diagnostics directory: %{public}s", v32, 0xCu);
        sub_100002624(v33);

        v17 = v42;

        (*(v25 + 8))(v26, v41);
      }

      else
      {

        (*(v25 + 8))(v26, v28);
      }
    }
  }

  v45.receiver = v17;
  v45.super_class = ObjectType;
  return objc_msgSendSuper2(&v45, "init");
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> STDiagnosticCollector.collectScreenTimeDatabase()()
{
  v0 = sub_100003004();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() defaultManager];
  sub_100002FD4();
  sub_100002FC4(v6);
  v8 = v7;
  v21 = 0;
  v9 = [v5 createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:0 error:&v21];

  v10 = v21;
  if (!v9)
  {
    goto LABEL_4;
  }

  v11 = objc_allocWithZone(STManagementState);
  v12 = v10;
  v13 = [v11 init];
  sub_100002FC4(v14);
  v16 = v15;
  v21 = 0;
  v17 = [v13 exportDatabaseToURL:v15 error:&v21];

  v10 = v21;
  if (v17)
  {
    v18 = *(v1 + 8);
    v19 = v21;
    v18(v4, v0);
  }

  else
  {
LABEL_4:
    v20 = v10;
    sub_100002FB4();

    swift_willThrow();
    (*(v1 + 8))(v4, v0);
  }
}

id STDiagnosticCollector.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100002034(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100002100(v11, 0, 0, 1, a1, a2);
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
    sub_100002E00(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100002624(v11);
  return v7;
}

unint64_t sub_100002100(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000220C(a5, a6);
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
    result = sub_1000030D4();
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

char *sub_10000220C(uint64_t a1, unint64_t a2)
{
  v4 = sub_100002258(a1, a2);
  sub_100002388(&off_100004318);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100002258(uint64_t a1, unint64_t a2)
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

  v6 = sub_100002474(v5, 0);
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

  result = sub_1000030D4();
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
        v10 = sub_1000030A4();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100002474(v10, 0);
        result = sub_1000030C4();
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

uint64_t sub_100002388(uint64_t result)
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

  result = sub_1000024E8(result, v12, 1, v3);
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

void *sub_100002474(uint64_t a1, uint64_t a2)
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

  sub_1000025DC(&qword_100008308, qword_100003618);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000024E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000025DC(&qword_100008308, qword_100003618);
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

uint64_t sub_1000025DC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002624(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return _swift_release(*a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_100002670()
{
  v1 = sub_100003034();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (__chkstk_darwin)();
  v5 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003004();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = (__chkstk_darwin)();
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = v36 - v13;
  __chkstk_darwin(v12);
  v16 = v36 - v15;
  sub_100003024();
  sub_100003014();
  (*(v2 + 8))(v5, v1);
  v17 = [objc_opt_self() diagnosticsDirectory];
  sub_100002FE4();

  sub_100002FD4();
  v18 = *(v7 + 8);
  v18(v11, v6);
  v19 = [objc_opt_self() defaultManager];
  sub_100002FF4(1);
  v20 = sub_100003084();

  LODWORD(v17) = [v19 fileExistsAtPath:v20];

  if (v17)
  {
    sub_100002FC4(v21);
    v23 = v22;
    v37 = 0;
    v24 = [v19 removeItemAtURL:v22 error:&v37];

    v25 = v37;
    if (!v24)
    {
      goto LABEL_6;
    }

    v26 = v37;
  }

  v36[1] = v0;
  sub_100002FC4(v21);
  v28 = v27;
  sub_100002FC4(v29);
  v31 = v30;
  v37 = 0;
  v32 = [v19 copyItemAtURL:v28 toURL:v30 error:&v37];

  v25 = v37;
  if (v32)
  {
    v33 = v37;

    v18(v14, v6);
    return (v18)(v16, v6);
  }

LABEL_6:
  v35 = v25;
  sub_100002FB4();

  swift_willThrow();
  v18(v14, v6);
  return (v18)(v16, v6);
}

void sub_100002A2C()
{
  v0 = sub_100003004();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v23 - v6;
  v8 = [objc_opt_self() diagnosticsDirectory];
  sub_100002FE4();

  sub_100002FD4();
  v9 = *(v1 + 8);
  v9(v5, v0);
  v10 = [objc_opt_self() defaultManager];
  sub_100002FF4(1);
  v11 = sub_100003084();

  LODWORD(v5) = [v10 fileExistsAtPath:v11];

  if (v5)
  {
    sub_100002FC4(v12);
    v14 = v13;
    v23 = 0;
    v15 = [v10 removeItemAtURL:v13 error:&v23];

    v16 = v23;
    if (!v15)
    {
      goto LABEL_6;
    }

    v17 = v23;
  }

  sub_100002FC4(v12);
  v19 = v18;
  v23 = 0;
  v20 = [v10 createDirectoryAtURL:v18 withIntermediateDirectories:1 attributes:0 error:&v23];

  v16 = v23;
  if (v20)
  {
    v21 = v23;
    sub_100003044();
    v9(v7, v0);

    return;
  }

LABEL_6:
  v22 = v16;
  sub_100002FB4();

  swift_willThrow();
  v9(v7, v0);
}

uint64_t type metadata accessor for STDiagnosticCollector()
{
  result = qword_100008320;
  if (!qword_100008320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100002D34()
{
  result = sub_100003004();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_100003074();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100002E00(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}