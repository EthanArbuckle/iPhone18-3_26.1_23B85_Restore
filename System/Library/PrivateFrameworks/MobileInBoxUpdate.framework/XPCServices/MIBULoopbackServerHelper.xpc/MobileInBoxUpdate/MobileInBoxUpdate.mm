int main(int argc, const char **argv, const char **envp)
{
  v3 = sub_100009E78();
  sub_1000012EC(v3, qword_100014DC0);
  sub_100001350(v3, qword_100014DC0);
  sub_100009E68();
  qword_100014DD8 = [objc_allocWithZone(type metadata accessor for ServiceDelegate()) init];
  qword_100014DE0 = [objc_opt_self() serviceListener];
  [qword_100014DE0 setDelegate:qword_100014DD8];
  [qword_100014DE0 resume];
  exit(1);
}

uint64_t *sub_1000012EC(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_100001350(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000013AC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_1000013F0(void *a1, const char *a2)
{
  v4 = sub_100009E78();
  sub_100001350(v4, qword_100014DC0);
  v5 = a1;
  oslog = sub_100009E58();
  v6 = sub_10000A2A8();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    v9 = [v5 description];
    v10 = sub_10000A1A8();
    v12 = v11;

    v13 = sub_100009078(v10, v12, &v15);

    *(v7 + 4) = v13;
    _os_log_impl(&_mh_execute_header, oslog, v6, a2, v7, 0xCu);
    sub_100001FBC(v8);
  }
}

id sub_1000015F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServiceDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100001630(uint64_t a1, id *a2)
{
  result = sub_10000A188();
  *a2 = 0;
  return result;
}

uint64_t sub_1000016A8(uint64_t a1, id *a2)
{
  v3 = sub_10000A198();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100001728@<X0>(void *a1@<X8>)
{
  sub_10000A1A8();
  v2 = sub_10000A178();

  *a1 = v2;
  return result;
}

uint64_t sub_10000176C()
{
  v1 = *v0;
  sub_10000A1A8();
  v2 = sub_10000A208();

  return v2;
}

uint64_t sub_1000017A8()
{
  v1 = *v0;
  sub_10000A1A8();
  sub_10000A1C8();
}

Swift::Int sub_1000017FC()
{
  v1 = *v0;
  sub_10000A1A8();
  sub_10000A3B8();
  sub_10000A1C8();
  v2 = sub_10000A3C8();

  return v2;
}

uint64_t sub_100001870(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_10000A1A8();
  v6 = v5;
  if (v4 == sub_10000A1A8() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_10000A388();
  }

  return v9 & 1;
}

uint64_t sub_1000018F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_10000A178();

  *a2 = v5;
  return result;
}

uint64_t sub_100001940@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_10000A1A8();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_10000196C(uint64_t a1)
{
  v2 = sub_1000020F4(&qword_100014A70);
  v3 = sub_1000020F4(&qword_100014A78);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100001A04(void *a1)
{
  v2 = sub_100009E78();
  sub_100001350(v2, qword_100014DC0);
  v3 = a1;
  v4 = sub_100009E58();
  v5 = sub_10000A2A8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *&v27 = v7;
    *v6 = 136315138;
    v8 = [v3 description];
    v9 = sub_10000A1A8();
    v11 = v10;

    v12 = sub_100009078(v9, v11, &v27);

    *(v6 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "Received new XPC connection: %s", v6, 0xCu);
    sub_100001FBC(v7);
  }

  v13 = sub_10000A178();
  v14 = [v3 valueForEntitlement:v13];

  if (v14)
  {
    sub_10000A2F8();
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
  }

  v27 = v32;
  v28 = v33;
  if (*(&v33 + 1))
  {
    if ((swift_dynamicCast() & 1) != 0 && v31 == 1)
    {
      v15 = [objc_opt_self() interfaceWithProtocol:{&OBJC_PROTOCOL____TtP24MIBULoopbackServerHelper32MIBULoopbackServerHelperProtocol_, v27, v28}];
      [v3 setExportedInterface:v15];

      v16 = [objc_allocWithZone(type metadata accessor for MIBULoopbackServerHelper()) init];
      [v3 setExportedObject:v16];
      v17 = swift_allocObject();
      *(v17 + 16) = v3;
      v29 = sub_100001F5C;
      v30 = v17;
      *&v27 = _NSConcreteStackBlock;
      *(&v27 + 1) = 1107296256;
      *&v28 = sub_1000013AC;
      *(&v28 + 1) = &unk_100010860;
      v18 = _Block_copy(&v27);
      v19 = v3;

      [v19 setInterruptionHandler:v18];
      _Block_release(v18);
      v20 = swift_allocObject();
      *(v20 + 16) = v19;
      v29 = sub_100001F98;
      v30 = v20;
      *&v27 = _NSConcreteStackBlock;
      *(&v27 + 1) = 1107296256;
      *&v28 = sub_1000013AC;
      *(&v28 + 1) = &unk_1000108B0;
      v21 = _Block_copy(&v27);
      v22 = v19;

      [v22 setInvalidationHandler:v21];
      _Block_release(v21);
      [v22 resume];

      return 1;
    }
  }

  else
  {
    sub_100001E74(&v27);
  }

  v24 = sub_100009E58();
  v25 = sub_10000A2A8();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "Reject XPC connection from unentitled client.", v26, 2u);
  }

  [v3 invalidate];
  return 0;
}

uint64_t sub_100001E74(uint64_t a1)
{
  v2 = sub_100001EDC(&qword_100014A48, &qword_10000AA00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100001EDC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100001F24()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100001F80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100001FBC(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void type metadata accessor for URLResourceKey()
{
  if (!qword_100014A50)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100014A50);
    }
  }
}

uint64_t sub_1000020F4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for URLResourceKey();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100002144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  *(v7 + 80) = a5;
  *(v7 + 16) = a4;
  v8 = sub_100009E78();
  *(v7 + 40) = sub_100001350(v8, qword_100014DC0);

  return _swift_task_switch(sub_1000021C8, 0, 0);
}

uint64_t sub_1000021C8()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC24MIBULoopbackServerHelper24MIBULoopbackServerHelper_server;
  *(v0 + 48) = OBJC_IVAR____TtC24MIBULoopbackServerHelper24MIBULoopbackServerHelper_server;
  v3 = *(v1 + v2);
  *(v0 + 56) = v3;
  if (v3)
  {

    v4 = swift_task_alloc();
    *(v0 + 64) = v4;
    *v4 = v0;
    v4[1] = sub_100002354;

    return sub_100003C94();
  }

  else
  {
    v6 = *(v0 + 40);
    v7 = sub_100009E58();
    v8 = sub_10000A2A8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Loopback server stopped.", v9, 2u);
    }

    v10 = *(v0 + 48);
    v11 = *(v0 + 80);
    v12 = *(v0 + 16);
    v13 = *(v12 + v10);
    *(v12 + v10) = 0;

    if (v11 == 1)
    {
      v15 = *(v0 + 32);
      (*(v0 + 24))(v14);
    }

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_100002354()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_10000256C;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_100002470;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100002470()
{
  v1 = *(v0 + 40);
  v2 = sub_100009E58();
  v3 = sub_10000A2A8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Loopback server stopped.", v4, 2u);
  }

  v5 = *(v0 + 48);
  v6 = *(v0 + 80);
  v7 = *(v0 + 16);
  v8 = *(v7 + v5);
  *(v7 + v5) = 0;

  if (v6 == 1)
  {
    v10 = *(v0 + 32);
    (*(v0 + 24))(v9);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10000256C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);

  swift_errorRetain();
  v4 = sub_100009E58();
  v5 = sub_10000A298();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 72);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Loopback server stopped with error: %@", v8, 0xCu);
    sub_10000390C(v9, &qword_100014D30, &qword_10000AD10);
  }

  else
  {
  }

  v11 = *(v0 + 48);
  v12 = *(v0 + 80);
  v13 = *(v0 + 16);
  v14 = *(v13 + v11);
  *(v13 + v11) = 0;

  if (v12 == 1)
  {
    v16 = *(v0 + 32);
    (*(v0 + 24))(v15);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_100002700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_100001EDC(&qword_100014B10, "|\b") - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_1000036F4(a3, v26 - v10);
  v12 = sub_10000A268();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000390C(v11, &qword_100014B10, "|\b");
  }

  else
  {
    sub_10000A258();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_10000A228();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_10000A1B8() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_10000390C(a3, &qword_100014B10, "|\b");

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000390C(a3, &qword_100014B10, "|\b");
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

void sub_100002A9C()
{
  v1 = v0;
  v2 = sub_100009E78();
  sub_100001350(v2, qword_100014DC0);
  v3 = sub_100009E58();
  v4 = sub_10000A2A8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Stopping loopback server...", v5, 2u);
  }

  v6 = OBJC_IVAR____TtC24MIBULoopbackServerHelper24MIBULoopbackServerHelper_server;
  v7 = *(v0 + OBJC_IVAR____TtC24MIBULoopbackServerHelper24MIBULoopbackServerHelper_server);
  if (v7)
  {
    v8 = *(v7 + OBJC_IVAR____TtC24MIBULoopbackServerHelper18MIBULoopbackServer_transaction);
    *(v7 + OBJC_IVAR____TtC24MIBULoopbackServerHelper18MIBULoopbackServer_transaction) = 0;

    swift_unknownObjectRelease();
    if (*(v7 + OBJC_IVAR____TtC24MIBULoopbackServerHelper18MIBULoopbackServer_listener))
    {
      v9 = *(v7 + OBJC_IVAR____TtC24MIBULoopbackServerHelper18MIBULoopbackServer_listener);

      sub_100009F08();
    }

    v10 = *(v1 + v6);
    *(v1 + v6) = 0;
  }

  else
  {
    oslog = sub_100009E58();
    v11 = sub_10000A2A8();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v11, "Loopback server is already stopped.", v12, 2u);
    }
  }
}

id sub_100002CF4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MIBULoopbackServerHelper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100002D5C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100002E54;

  return v7(a1);
}

uint64_t sub_100002E54()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_100002F4C(int a1, uint64_t a2, unint64_t a3, char a4, char *a5, void (**a6)(void))
{
  v54 = a2;
  LODWORD(v55) = a1;
  v10 = (*(*(sub_100001EDC(&qword_100014B10, "|\b") - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v12 = &v45 - v11;
  v13 = sub_100009E08();
  v53 = *(v13 - 8);
  v14 = *(v53 + 64);
  __chkstk_darwin();
  v52 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = (*(*(sub_100001EDC(&qword_100014B18, &qword_10000ABF8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v51 = &v45 - v17;
  v18 = sub_100009E48();
  v48 = *(v18 - 8);
  v49 = v18;
  v19 = *(v48 + 64);
  __chkstk_darwin();
  v50 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  *(v21 + 16) = a6;
  v22 = sub_100009E78();
  sub_100001350(v22, qword_100014DC0);
  _Block_copy(a6);

  v23 = sub_100009E58();
  v24 = sub_10000A2A8();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v46 = a5;
    v47 = v21;
    v26 = a4;
    v27 = a6;
    v28 = v25;
    v29 = v13;
    v30 = v12;
    v31 = swift_slowAlloc();
    v56 = v31;
    *v28 = 33554946;
    *(v28 + 4) = v55;
    *(v28 + 6) = 2080;
    *(v28 + 8) = sub_100009078(v54, a3, &v56);
    _os_log_impl(&_mh_execute_header, v23, v24, "Starting loopback server with web port: '%hu' web root: '%s'", v28, 0x10u);
    sub_100001FBC(v31);
    v12 = v30;
    v13 = v29;

    a6 = v27;
    a4 = v26;
    a5 = v46;
    v21 = v47;
  }

  v32 = OBJC_IVAR____TtC24MIBULoopbackServerHelper24MIBULoopbackServerHelper_server;
  if (*&a5[OBJC_IVAR____TtC24MIBULoopbackServerHelper24MIBULoopbackServerHelper_server])
  {
    v55 = sub_100009E58();
    v33 = sub_10000A2A8();
    if (os_log_type_enabled(v55, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v55, v33, "Loopback server is already started.", v34, 2u);
    }

    v35 = v55;
  }

  else
  {
    (*(v48 + 56))(v51, 1, 1, v49);
    (*(v53 + 104))(v52, enum case for URL.DirectoryHint.inferFromPath(_:), v13);

    v36 = v50;
    sub_100009E28();
    v37 = type metadata accessor for MIBULoopbackServer();
    v38 = *(v37 + 48);
    v39 = *(v37 + 52);
    swift_allocObject();
    v40 = sub_100003974(v55, v36);
    v41 = *&a5[v32];
    *&a5[v32] = v40;

    v42 = sub_10000A268();
    (*(*(v42 - 8) + 56))(v12, 1, 1, v42);
    v43 = swift_allocObject();
    *(v43 + 16) = 0;
    *(v43 + 24) = 0;
    *(v43 + 32) = a5;
    *(v43 + 40) = a4 & 1;
    *(v43 + 48) = sub_1000034D0;
    *(v43 + 56) = v21;
    v44 = a5;

    sub_100002700(0, 0, v12, &unk_10000AC08, v43);

    if ((a4 & 1) == 0)
    {
      a6[2](a6);
    }
  }
}

uint64_t sub_100003498()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000034E0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100003528(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100003600;

  return sub_100002144(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100003600()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000036F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EDC(&qword_100014B10, "|\b");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100003764()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000379C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100003970;

  return sub_100002D5C(a1, v5);
}

uint64_t sub_100003854(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100003600;

  return sub_100002D5C(a1, v5);
}

uint64_t sub_10000390C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001EDC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100003974(int a1, uint64_t a2)
{
  v3 = v2;
  v19 = a2;
  v18 = a1;
  v17 = sub_10000A2B8();
  v4 = *(v17 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(sub_10000A2C8() - 8) + 64);
  __chkstk_darwin();
  v9 = *(*(sub_10000A168() - 8) + 64);
  __chkstk_darwin();
  v10 = sub_100009CC8();
  v16[0] = "ontinuation";
  v16[1] = v10;
  sub_10000A158();
  v20 = &_swiftEmptyArrayStorage;
  sub_100009D14(&qword_100014DA0, &type metadata accessor for OS_dispatch_queue_serial.Attributes);
  sub_100001EDC(&qword_100014DA8, &qword_10000AD58);
  sub_100009D5C(&unk_100014DB0, &qword_100014DA8, &qword_10000AD58);
  sub_10000A308();
  (*(v4 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v17);
  *(v2 + 16) = sub_10000A2D8();
  *(v2 + OBJC_IVAR____TtC24MIBULoopbackServerHelper18MIBULoopbackServer_transaction) = 0;
  *(v2 + OBJC_IVAR____TtC24MIBULoopbackServerHelper18MIBULoopbackServer_listener) = 0;
  v11 = OBJC_IVAR____TtC24MIBULoopbackServerHelper18MIBULoopbackServer_continuation;
  v12 = sub_100001EDC(&unk_100014B88, &unk_10000ACF8);
  (*(*(v12 - 8) + 56))(v3 + v11, 1, 1, v12);
  *(v3 + OBJC_IVAR____TtC24MIBULoopbackServerHelper18MIBULoopbackServer_error) = 0;
  *(v3 + 24) = v18;
  v13 = OBJC_IVAR____TtC24MIBULoopbackServerHelper18MIBULoopbackServer_webRoot;
  v14 = sub_100009E48();
  (*(*(v14 - 8) + 32))(v3 + v13, v19, v14);
  return v3;
}

uint64_t sub_100003C94()
{
  v1[2] = v0;
  v2 = sub_100009EA8();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v5 = sub_100009F58();
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_100003DBC, 0, 0);
}

uint64_t sub_100003DBC()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[2];
  v25 = v0[3];
  v8 = os_transaction_create();
  v9 = *(v7 + OBJC_IVAR____TtC24MIBULoopbackServerHelper18MIBULoopbackServer_transaction);
  *(v7 + OBJC_IVAR____TtC24MIBULoopbackServerHelper18MIBULoopbackServer_transaction) = v8;
  swift_unknownObjectRelease();
  sub_10000A0C8();
  v0[10] = sub_10000A0B8();
  (*(v1 + 104))(v2, enum case for NWInterface.InterfaceType.loopback(_:), v4);
  sub_10000A0A8();
  sub_10000A0E8();
  v10 = sub_10000A0D8();
  v0[11] = v10;
  sub_10000A098();
  sub_100001EDC(&qword_100014D90, &qword_10000AD50);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10000AC40;
  *(v11 + 32) = v10;

  sub_10000A088();

  v12 = *(v7 + 24);
  sub_100009E98();
  (*(v6 + 16))(v5, v3, v25);
  v13 = sub_100009F18();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();

  v16 = sub_100009EF8();
  v17 = v0[2];
  v18 = OBJC_IVAR____TtC24MIBULoopbackServerHelper18MIBULoopbackServer_listener;
  v19 = *(v17 + OBJC_IVAR____TtC24MIBULoopbackServerHelper18MIBULoopbackServer_listener);
  *(v17 + OBJC_IVAR____TtC24MIBULoopbackServerHelper18MIBULoopbackServer_listener) = v16;

  swift_allocObject();
  swift_weakInit();

  sub_100009EC8();

  if (*(v17 + v18))
  {
    v20 = v0[2];
    swift_allocObject();
    swift_weakInit();

    sub_100009EB8();
  }

  v21 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v22 = swift_task_alloc();
  v0[12] = v22;
  *v22 = v0;
  v22[1] = sub_10000416C;
  v23 = v0[2];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)();
}

uint64_t sub_10000416C()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_100004338;
  }

  else
  {
    v3 = sub_100004280;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100004280()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[3];
  v7 = v0[4];

  (*(v7 + 8))(v4, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100004338()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[6];
  v4 = v0[3];
  v5 = v0[4];

  (*(v5 + 8))(v3, v4);
  v6 = v0[13];
  v7 = v0[9];
  v9 = v0[5];
  v8 = v0[6];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000043E8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100005110(a1);
  }

  return result;
}

uint64_t sub_100004448(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10000460C(a1);
  }

  return result;
}

uint64_t sub_1000044A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EDC(&qword_100014D88, &qword_10000AD48);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v13 - v6;
  v8 = sub_100001EDC(&unk_100014B88, &unk_10000ACF8);
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v10 = OBJC_IVAR____TtC24MIBULoopbackServerHelper18MIBULoopbackServer_continuation;
  swift_beginAccess();
  sub_100009C40(v7, a2 + v10);
  result = swift_endAccess();
  if (*(a2 + OBJC_IVAR____TtC24MIBULoopbackServerHelper18MIBULoopbackServer_listener))
  {
    v12 = *(a2 + 16);

    sub_100009EE8();
  }

  return result;
}

void sub_10000460C(uint64_t a1)
{
  v2 = sub_100001EDC(&unk_100014B88, &unk_10000ACF8);
  v86 = *(v2 - 8);
  v87 = v2;
  v3 = *(v86 + 64);
  __chkstk_darwin(v2);
  v83 = v81 - v4;
  v5 = sub_100001EDC(&qword_100014D88, &qword_10000AD48);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v85 = v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v82 = v81 - v10;
  __chkstk_darwin(v9);
  v84 = v81 - v11;
  v12 = sub_10000A0F8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v88 = v81 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = v81 - v21;
  __chkstk_darwin(v20);
  v24 = v81 - v23;
  v25 = sub_100009ED8();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = v81 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_100009E78();
  sub_100001350(v30, qword_100014DC0);
  (*(v26 + 16))(v29, a1, v25);
  v31 = (*(v26 + 88))(v29, v25);
  if (v31 == enum case for NWListener.State.waiting(_:))
  {
    (*(v26 + 96))(v29, v25);
    (*(v13 + 32))(v24, v29, v12);
    v32 = *(v13 + 16);
    v32(v22, v24, v12);
    v33 = sub_100009E58();
    v34 = sub_10000A2A8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      *v35 = 138412290;
      sub_100009D14(&qword_100014D28, &type metadata accessor for NWError);
      swift_allocError();
      v32(v36, v22, v12);
      v37 = _swift_stdlib_bridgeErrorToNSError();
      v38 = *(v13 + 8);
      v38(v22, v12);
      *(v35 + 4) = v37;
      v39 = v89;
      *v89 = v37;
      _os_log_impl(&_mh_execute_header, v33, v34, "HTTP listener is waiting: %@", v35, 0xCu);
      sub_10000390C(v39, &qword_100014D30, &qword_10000AD10);

      v38(v24, v12);
    }

    else
    {

      v52 = *(v13 + 8);
      v52(v22, v12);
      v52(v24, v12);
    }

    return;
  }

  if (v31 == enum case for NWListener.State.failed(_:))
  {
    (*(v26 + 96))(v29, v25);
    v40 = v88;
    (*(v13 + 32))(v88, v29, v12);
    v41 = *(v13 + 16);
    v41(v17, v40, v12);
    v42 = sub_100009E58();
    v43 = sub_10000A2A8();
    v44 = os_log_type_enabled(v42, v43);
    v81[1] = v13;
    if (v44)
    {
      v45 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      *v45 = 138412290;
      sub_100009D14(&qword_100014D28, &type metadata accessor for NWError);
      swift_allocError();
      v41(v46, v17, v12);
      v47 = _swift_stdlib_bridgeErrorToNSError();
      v48 = v13;
      v49 = v41;
      v50 = *(v48 + 8);
      v50(v17, v12);
      *(v45 + 4) = v47;
      v51 = v87;
      *v87 = v47;
      _os_log_impl(&_mh_execute_header, v42, v43, "HTTP listener failed: %@", v45, 0xCu);
      sub_10000390C(v51, &qword_100014D30, &qword_10000AD10);
    }

    else
    {

      v56 = v13;
      v49 = v41;
      v50 = *(v56 + 8);
      v50(v17, v12);
    }

    v57 = v89;
    sub_100009D14(&qword_100014D28, &type metadata accessor for NWError);
    v58 = swift_allocError();
    v49(v59, v40, v12);
    v60 = *(v57 + OBJC_IVAR____TtC24MIBULoopbackServerHelper18MIBULoopbackServer_error);
    *(v57 + OBJC_IVAR____TtC24MIBULoopbackServerHelper18MIBULoopbackServer_error) = v58;

    if (*(v57 + OBJC_IVAR____TtC24MIBULoopbackServerHelper18MIBULoopbackServer_listener))
    {
      v61 = *(v57 + OBJC_IVAR____TtC24MIBULoopbackServerHelper18MIBULoopbackServer_listener);

      sub_100009F08();
    }

    v50(v40, v12);
    return;
  }

  if (v31 != enum case for NWListener.State.ready(_:))
  {
    if (v31 != enum case for NWListener.State.cancelled(_:))
    {
      (*(v26 + 8))(v29, v25);
      return;
    }

    v62 = v89;
    v63 = sub_100009E58();
    v64 = sub_10000A2A8();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&_mh_execute_header, v63, v64, "HTTP listener cancelled.", v65, 2u);
    }

    v66 = v62;
    v67 = *(v62 + OBJC_IVAR____TtC24MIBULoopbackServerHelper18MIBULoopbackServer_listener);
    *(v62 + OBJC_IVAR____TtC24MIBULoopbackServerHelper18MIBULoopbackServer_listener) = 0;

    v68 = *(v62 + OBJC_IVAR____TtC24MIBULoopbackServerHelper18MIBULoopbackServer_error);
    v69 = OBJC_IVAR____TtC24MIBULoopbackServerHelper18MIBULoopbackServer_continuation;
    v70 = v86;
    v71 = (v86 + 48);
    v72 = v84;
    if (v68)
    {
      swift_beginAccess();
      sub_100009BD8(v62 + v69, v72, &qword_100014D88, &qword_10000AD48);
      v73 = v87;
      if (!(*v71)(v72, 1, v87))
      {
        v76 = v83;
        (*(v70 + 16))(v83, v72, v73);
        swift_errorRetain();
        sub_10000390C(v72, &qword_100014D88, &qword_10000AD48);
        v90 = v68;
        sub_10000A238();
        v66 = v62;
        (*(v70 + 8))(v76, v73);
        goto LABEL_29;
      }

      v74 = v72;
    }

    else
    {
      swift_beginAccess();
      v75 = v82;
      sub_100009BD8(v62 + v69, v82, &qword_100014D88, &qword_10000AD48);
      v73 = v87;
      if (!(*v71)(v75, 1, v87))
      {
        v77 = v75;
        v78 = v83;
        (*(v70 + 16))(v83, v77, v73);
        sub_10000390C(v77, &qword_100014D88, &qword_10000AD48);
        sub_10000A248();
        v66 = v62;
        (*(v70 + 8))(v78, v73);
        goto LABEL_29;
      }

      v74 = v75;
    }

    sub_10000390C(v74, &qword_100014D88, &qword_10000AD48);
LABEL_29:
    v79 = v85;
    (*(v70 + 56))(v85, 1, 1, v73);
    v80 = OBJC_IVAR____TtC24MIBULoopbackServerHelper18MIBULoopbackServer_continuation;
    swift_beginAccess();
    sub_100009C40(v79, v66 + v80);
    swift_endAccess();
    return;
  }

  v53 = sub_100009E58();
  v54 = sub_10000A2A8();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&_mh_execute_header, v53, v54, "HTTP listener is now ready!", v55, 2u);
  }
}

uint64_t sub_100005110(uint64_t a1)
{
  v3 = sub_100009E78();
  sub_100001350(v3, qword_100014DC0);

  v4 = sub_100009E58();
  v5 = sub_10000A2A8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 136315394;
    v16 = v7;
    sub_10000A338(18);
    v17._countAndFlagsBits = 0x656E6E6F43574E3CLL;
    v17._object = 0xEE005B6E6F697463;
    sub_10000A1E8(v17);
    sub_10000A358();
    v18._countAndFlagsBits = 15965;
    v18._object = 0xE200000000000000;
    sub_10000A1E8(v18);
    v8 = sub_100009078(0, 0xE000000000000000, &v16);

    *(v6 + 4) = v8;
    *(v6 + 12) = 2080;
    v9 = sub_10000A018();
    v11 = sub_100009078(v9, v10, &v16);

    *(v6 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "HTTP listener received new HTTP connection %s: %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a1;

  sub_100008F38(sub_100008F30);
  sub_10000A028();

  v14 = *(v1 + 16);
  return sub_10000A058();
}

void sub_10000538C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v72 = a3;
  v4 = sub_10000A0F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v70 = &v65[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __chkstk_darwin(v7);
  v71 = &v65[-v10];
  v11 = __chkstk_darwin(v9);
  v13 = &v65[-v12];
  __chkstk_darwin(v11);
  v15 = &v65[-v14];
  v16 = sub_10000A048();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v65[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_100009E78();
  sub_100001350(v21, qword_100014DC0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    (*(v17 + 16))(v20, a1, v16);
    v24 = (*(v17 + 88))(v20, v16);
    if (v24 == enum case for NWConnection.State.waiting(_:))
    {
      (*(v17 + 96))(v20, v16);
      (*(v5 + 32))(v15, v20, v4);
      v71 = *(v5 + 16);
      (v71)(v13, v15, v4);
      v25 = v72;

      v26 = sub_100009E58();
      v27 = sub_10000A2A8();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v68 = v5;
        v29 = v28;
        v67 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v70 = v30;
        *v29 = 136315394;
        v74 = 0;
        v75 = 0xE000000000000000;
        v76 = v30;
        sub_10000A338(18);
        v77._countAndFlagsBits = 0x656E6E6F43574E3CLL;
        v77._object = 0xEE005B6E6F697463;
        sub_10000A1E8(v77);
        v73 = v25;
        sub_10000A358();
        v78._countAndFlagsBits = 15965;
        v78._object = 0xE200000000000000;
        sub_10000A1E8(v78);
        v31 = sub_100009078(v74, v75, &v76);
        v69 = v23;
        v32 = v31;

        *(v29 + 4) = v32;
        *(v29 + 12) = 2112;
        sub_100009D14(&qword_100014D28, &type metadata accessor for NWError);
        swift_allocError();
        (v71)(v33, v13, v4);
        v34 = _swift_stdlib_bridgeErrorToNSError();
        v35 = v68[1];
        v35(v13, v4);
        *(v29 + 14) = v34;
        v36 = v67;
        *v67 = v34;
        _os_log_impl(&_mh_execute_header, v26, v27, "%s: Connection is waiting: %@", v29, 0x16u);
        sub_10000390C(v36, &qword_100014D30, &qword_10000AD10);

        sub_100001FBC(v70);

        v35(v15, v4);
      }

      else
      {

        v51 = *(v5 + 8);
        v51(v13, v4);
        v51(v15, v4);
      }
    }

    else if (v24 == enum case for NWConnection.State.failed(_:))
    {
      v69 = v23;
      (*(v17 + 96))(v20, v16);
      v37 = v71;
      v38 = v20;
      v39 = v4;
      (*(v5 + 32))(v71, v38, v4);
      v40 = *(v5 + 16);
      v41 = v70;
      v40(v70, v37, v39);

      v42 = sub_100009E58();
      v43 = sub_10000A2A8();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v68 = v45;
        *v44 = 136315394;
        v74 = 0;
        v75 = 0xE000000000000000;
        v76 = v45;
        v66 = v43;
        sub_10000A338(18);
        v79._countAndFlagsBits = 0x656E6E6F43574E3CLL;
        v79._object = 0xEE005B6E6F697463;
        sub_10000A1E8(v79);
        v73 = v72;
        sub_10000A358();
        v80._countAndFlagsBits = 15965;
        v80._object = 0xE200000000000000;
        sub_10000A1E8(v80);
        v46 = sub_100009078(v74, v75, &v76);

        *(v44 + 4) = v46;
        *(v44 + 12) = 2112;
        sub_100009D14(&qword_100014D28, &type metadata accessor for NWError);
        swift_allocError();
        v40(v47, v41, v39);
        v48 = _swift_stdlib_bridgeErrorToNSError();
        v49 = *(v5 + 8);
        v49(v41, v39);
        *(v44 + 14) = v48;
        v50 = v67;
        *v67 = v48;
        _os_log_impl(&_mh_execute_header, v42, v66, "%s: Connection failed: %@", v44, 0x16u);
        sub_10000390C(v50, &qword_100014D30, &qword_10000AD10);

        sub_100001FBC(v68);
      }

      else
      {

        v49 = *(v5 + 8);
        v49(v41, v39);
      }

      sub_10000A068();

      v49(v71, v39);
    }

    else
    {
      v52 = v72;
      if (v24 == enum case for NWConnection.State.ready(_:))
      {

        v53 = sub_100009E58();
        v54 = sub_10000A2A8();

        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          *v55 = 136315138;
          v74 = 0;
          v75 = 0xE000000000000000;
          v76 = v56;
          sub_10000A338(18);
          v81._countAndFlagsBits = 0x656E6E6F43574E3CLL;
          v81._object = 0xEE005B6E6F697463;
          sub_10000A1E8(v81);
          v73 = v52;
          sub_10000A358();
          v82._countAndFlagsBits = 15965;
          v82._object = 0xE200000000000000;
          sub_10000A1E8(v82);
          v57 = sub_100009078(v74, v75, &v76);

          *(v55 + 4) = v57;
          _os_log_impl(&_mh_execute_header, v53, v54, "%s: Connection is ready!", v55, 0xCu);
          sub_100001FBC(v56);
        }

        v58 = swift_allocObject();
        swift_weakInit();
        v59 = swift_allocObject();
        *(v59 + 16) = v58;
        *(v59 + 24) = v52;

        sub_10000A008();
      }

      else if (v24 == enum case for NWConnection.State.cancelled(_:))
      {

        v60 = sub_100009E58();
        v61 = sub_10000A2A8();

        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          *v62 = 136315138;
          v74 = 0;
          v75 = 0xE000000000000000;
          v76 = v63;
          sub_10000A338(18);
          v83._countAndFlagsBits = 0x656E6E6F43574E3CLL;
          v83._object = 0xEE005B6E6F697463;
          sub_10000A1E8(v83);
          v73 = v52;
          sub_10000A358();
          v84._countAndFlagsBits = 15965;
          v84._object = 0xE200000000000000;
          sub_10000A1E8(v84);
          v64 = sub_100009078(v74, v75, &v76);

          *(v62 + 4) = v64;
          _os_log_impl(&_mh_execute_header, v60, v61, "%s: Connection cancelled!", v62, 0xCu);
          sub_100001FBC(v63);
        }
      }

      else
      {

        (*(v17 + 8))(v20, v16);
      }
    }
  }
}

uint64_t sub_100005F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v177 = a7;
  v147 = sub_100009DC8();
  v146 = *(v147 - 8);
  v9 = *(v146 + 64);
  __chkstk_darwin(v147);
  v145 = v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_100009FF8();
  v150 = *(v151 - 8);
  v11 = *(v150 + 64);
  __chkstk_darwin(v151);
  v149 = v134 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100001EDC(&qword_100014D38, &qword_10000AD18);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v172 = (v134 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v18 = v134 - v17;
  v165 = sub_100009F98();
  v148 = *(v165 - 8);
  v19 = *(v148 + 64);
  v20 = __chkstk_darwin(v165);
  v164 = v134 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v159 = v134 - v22;
  v23 = sub_100009FB8();
  v163 = *(v23 - 8);
  v24 = *(v163 + 64);
  v25 = __chkstk_darwin(v23);
  v160 = v134 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v171 = v134 - v27;
  v28 = sub_10000A128();
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v156 = v134 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_100009E88();
  v167 = *(v170 - 8);
  v31 = *(v167 + 64);
  v32 = __chkstk_darwin(v170);
  v158 = v134 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v169 = v134 - v34;
  v144 = sub_100009DE8();
  v143 = *(v144 - 8);
  v35 = *(v143 + 64);
  __chkstk_darwin(v144);
  v154 = v134 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v153 = sub_100009E08();
  v152 = *(v153 - 8);
  v37 = *(v152 + 64);
  __chkstk_darwin(v153);
  v39 = v134 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_100009E48();
  v161 = *(v162 - 8);
  v40 = *(v161 + 64);
  __chkstk_darwin(v162);
  v168 = v134 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_100001EDC(&qword_100014D40, &qword_10000AD20);
  v43 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42 - 8);
  v45 = v134 - v44;
  v46 = sub_100009F48();
  v175 = *(v46 - 8);
  v47 = *(v175 + 64);
  v48 = __chkstk_darwin(v46);
  v155 = v134 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __chkstk_darwin(v48);
  v142 = v134 - v50;
  v51 = __chkstk_darwin(v49);
  v157 = v134 - v52;
  v53 = __chkstk_darwin(v51);
  v55 = v134 - v54;
  __chkstk_darwin(v53);
  v173 = v134 - v56;
  v57 = sub_100009E78();
  v176 = sub_100001350(v57, qword_100014DC0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v141 = v23;
  v166 = a3;
  v174 = result;
  v59 = sub_10000A0F8();
  v140 = *(v59 - 8);
  v60 = *(v140 + 6);
  if (v60(a5, 1, v59) != 1)
  {
    sub_100009BD8(a5, v18, &qword_100014D38, &qword_10000AD18);
    v68 = v177;

    v69 = sub_100009E58();
    v70 = sub_10000A298();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v175 = swift_slowAlloc();
      v176 = swift_slowAlloc();
      v178 = v176;
      *v71 = 136315394;
      v181 = 0;
      v182 = 0xE000000000000000;
      sub_10000A338(18);
      v185._countAndFlagsBits = 0x656E6E6F43574E3CLL;
      v185._object = 0xEE005B6E6F697463;
      sub_10000A1E8(v185);
      v180 = v68;
      sub_10000A358();
      v186._countAndFlagsBits = 15965;
      v186._object = 0xE200000000000000;
      sub_10000A1E8(v186);
      v72 = sub_100009078(v181, v182, &v178);

      *(v71 + 4) = v72;
      *(v71 + 12) = 2112;
      v73 = v172;
      sub_100009BD8(v18, v172, &qword_100014D38, &qword_10000AD18);
      if (v60(v73, 1, v59) == 1)
      {
        sub_10000390C(v73, &qword_100014D38, &qword_10000AD18);
        sub_10000390C(v18, &qword_100014D38, &qword_10000AD18);
        v74 = 0;
      }

      else
      {
        sub_100009D14(&qword_100014D28, &type metadata accessor for NWError);
        swift_allocError();
        (*(v140 + 4))(v98, v73, v59);
        v74 = _swift_stdlib_bridgeErrorToNSError();
        sub_10000390C(v18, &qword_100014D38, &qword_10000AD18);
      }

      *(v71 + 14) = v74;
      v99 = v175;
      *v175 = v74;
      _os_log_impl(&_mh_execute_header, v69, v70, "%s: Failed to receive message over connection: %@", v71, 0x16u);
      sub_10000390C(v99, &qword_100014D30, &qword_10000AD10);

      sub_100001FBC(v176);
    }

    else
    {

      sub_10000390C(v18, &qword_100014D38, &qword_10000AD18);
    }

LABEL_20:
    sub_10000A068();
  }

  if (!v166)
  {
    v75 = v177;

    v76 = sub_100009E58();
    v77 = sub_10000A298();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v178 = v79;
      *v78 = 136315138;
      v181 = 0;
      v182 = 0xE000000000000000;
      sub_10000A338(18);
      v187._countAndFlagsBits = 0x656E6E6F43574E3CLL;
      v187._object = 0xEE005B6E6F697463;
      sub_10000A1E8(v187);
      v180 = v75;
      sub_10000A358();
      v188._countAndFlagsBits = 15965;
      v188._object = 0xE200000000000000;
      sub_10000A1E8(v188);
      v80 = sub_100009078(v181, v182, &v178);

      *(v78 + 4) = v80;
      _os_log_impl(&_mh_execute_header, v76, v77, "%s: Failed to extract content context.", v78, 0xCu);
      sub_100001FBC(v79);
    }

    goto LABEL_20;
  }

  sub_100009FC8();
  v61 = v175;
  if ((*(v175 + 48))(v45, 1, v46) == 1)
  {
    sub_10000390C(v45, &qword_100014D40, &qword_10000AD20);
    v62 = v177;

    v63 = sub_100009E58();
    v64 = sub_10000A298();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v178 = v66;
      *v65 = 136315138;
      v181 = 0;
      v182 = 0xE000000000000000;
      sub_10000A338(18);
      v183._countAndFlagsBits = 0x656E6E6F43574E3CLL;
      v183._object = 0xEE005B6E6F697463;
      sub_10000A1E8(v183);
      v180 = v62;
      sub_10000A358();
      v184._countAndFlagsBits = 15965;
      v184._object = 0xE200000000000000;
      sub_10000A1E8(v184);
      v67 = sub_100009078(v181, v182, &v178);

      *(v65 + 4) = v67;
      _os_log_impl(&_mh_execute_header, v63, v64, "%s: Failed to extract HTTP request.", v65, 0xCu);
      sub_100001FBC(v66);
    }

    sub_10000A068();
  }

  v81 = v61[4];
  v82 = v173;
  v81(v173, v45, v46);
  v83 = sub_100009F38();
  if (v84)
  {
    v135 = v81;
    v137 = v83;
    v138 = v84;
    v136 = v61 + 4;
    v85 = v61[2];
    v172 = v61 + 2;
    v140 = v85;
    v85(v55, v82, v46);
    v86 = v177;

    v87 = v46;
    v88 = sub_100009E58();
    v89 = sub_10000A2A8();

    v90 = os_log_type_enabled(v88, v89);
    v139 = v87;
    if (v90)
    {
      v91 = swift_slowAlloc();
      v178 = swift_slowAlloc();
      *v91 = 136315394;
      v181 = 0;
      v182 = 0xE000000000000000;
      sub_10000A338(18);
      v189._countAndFlagsBits = 0x656E6E6F43574E3CLL;
      v189._object = 0xEE005B6E6F697463;
      sub_10000A1E8(v189);
      v180 = v86;
      sub_10000A358();
      v190._countAndFlagsBits = 15965;
      v190._object = 0xE200000000000000;
      sub_10000A1E8(v190);
      v92 = v61;
      v93 = sub_100009078(v181, v182, &v178);

      *(v91 + 4) = v93;
      *(v91 + 12) = 2080;
      v94 = sub_100009F28();
      v96 = v95;
      v134[0] = v92[1];
      (v134[0])(v55, v139);
      v97 = sub_100009078(v94, v96, &v178);

      *(v91 + 14) = v97;
      _os_log_impl(&_mh_execute_header, v88, v89, "%s: Received HTTP request: %s", v91, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v134[0] = v61[1];
      (v134[0])(v55, v87);
    }

    v106 = [objc_allocWithZone(NSProcessInfo) init];
    v107 = [v106 processName];

    v108 = sub_10000A1A8();
    v110 = v109;

    v181 = 808333615;
    v182 = 0xE400000000000000;
    v178 = v108;
    v179 = v110;
    v178 = sub_10000A218();
    v179 = v111;
    sub_10000A1D8();
    v134[1] = v179;
    v181 = v137;
    v182 = v138;
    v112 = v152;
    v113 = v153;
    (*(v152 + 104))(v39, enum case for URL.DirectoryHint.inferFromPath(_:), v153);
    sub_10000976C();
    sub_100009E38();
    (*(v112 + 8))(v39, v113);
    sub_100001EDC(&qword_100014D50, &qword_10000AD28);
    inited = swift_initStackObject();
    v153 = xmmword_10000AC50;
    *(inited + 16) = xmmword_10000AC50;
    *(inited + 32) = NSURLFileSizeKey;
    v115 = NSURLFileSizeKey;
    sub_1000097C0(inited);
    swift_setDeallocating();
    sub_1000099B4(inited + 32);
    v116 = v154;
    sub_100009E18();
    v117 = v139;

    result = sub_100009DD8();
    if (v118)
    {
      __break(1u);
    }

    else
    {
      v119 = result;
      (*(v143 + 8))(v116, v144);

      sub_100001EDC(&qword_100014D60, &qword_10000AD30);
      v120 = *(sub_10000A148() - 8);
      v121 = *(v120 + 72);
      v122 = (*(v120 + 80) + 32) & ~*(v120 + 80);
      v123 = swift_allocObject();
      *(v123 + 16) = xmmword_10000AC60;
      sub_10000A118();
      sub_10000A138();
      sub_10000A108();
      v181 = v119;
      sub_10000A378();
      sub_10000A138();
      v181 = v123;
      sub_100009D14(&qword_100014D68, &type metadata accessor for HTTPFields);
      v124 = v169;
      v125 = v170;
      sub_10000A288();
      sub_100001EDC(&qword_100014D70, &qword_10000AD38);
      sub_100009D5C(&qword_100014D78, &qword_100014D70, &qword_10000AD38);
      sub_10000A278();
      sub_100009F68();
      v126 = v167;
      (*(v167 + 16))(v158, v124, v125);
      v127 = v171;
      sub_100009FA8();
      sub_100009FE8();
      v128 = v163;
      (*(v163 + 16))(v160, v127, v141);
      sub_100009FD8();
      v129 = v157;
      v140(v157, v173, v117);
      v130 = v175;
      v131 = (*(v175 + 80) + 24) & ~*(v175 + 80);
      v132 = swift_allocObject();
      *(v132 + 16) = v177;
      v135(v132 + v131, v129, v117);

      v133 = v168;
      sub_10000A078();

      (*(v128 + 8))(v171, v141);
      (*(v126 + 8))(v169, v170);
      (*(v161 + 8))(v133, v162);
      return (*(v130 + 8))(v173, v117);
    }
  }

  else
  {
    v100 = v177;

    v101 = sub_100009E58();
    v102 = sub_10000A298();

    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v178 = v104;
      *v103 = 136315138;
      v181 = 0;
      v182 = 0xE000000000000000;
      sub_10000A338(18);
      v191._countAndFlagsBits = 0x656E6E6F43574E3CLL;
      v191._object = 0xEE005B6E6F697463;
      sub_10000A1E8(v191);
      v180 = v100;
      sub_10000A358();
      v192._countAndFlagsBits = 15965;
      v192._object = 0xE200000000000000;
      sub_10000A1E8(v192);
      v105 = sub_100009078(v181, v182, &v178);

      *(v103 + 4) = v105;
      _os_log_impl(&_mh_execute_header, v101, v102, "%s: Failed to extract HTTP path.", v103, 0xCu);
      sub_100001FBC(v104);
      v61 = v175;
    }

    sub_10000A068();

    return (v61[1])(v82, v46);
  }

  return result;
}

void sub_1000080F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a3;
  v5 = sub_100009F48();
  v43 = *(v5 - 8);
  v44 = v5;
  v6 = *(v43 + 64);
  (__chkstk_darwin)();
  v8 = &v38[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = (*(*(sub_100001EDC(&qword_100014D38, &qword_10000AD18) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v11 = &v38[-v10];
  v12 = sub_10000A0F8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = (__chkstk_darwin)();
  v17 = &v38[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v45 = &v38[-v18];
  v19 = sub_100009E78();
  sub_100001350(v19, qword_100014DC0);
  sub_100009BD8(a1, v11, &qword_100014D38, &qword_10000AD18);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10000390C(v11, &qword_100014D38, &qword_10000AD18);
  }

  else
  {
    v20 = v45;
    (*(v13 + 32))(v45, v11, v12);
    (*(v43 + 16))(v8, v42, v44);
    v21 = *(v13 + 16);
    v21(v17, v20, v12);

    v22 = sub_100009E58();
    v23 = sub_10000A298();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v40 = v21;
      v25 = v24;
      v41 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v42 = v26;
      *v25 = 136315650;
      v47 = 0;
      v48 = 0xE000000000000000;
      v49 = v26;
      v39 = v23;
      sub_10000A338(18);
      v50._countAndFlagsBits = 0x656E6E6F43574E3CLL;
      v50._object = 0xEE005B6E6F697463;
      sub_10000A1E8(v50);
      v46 = a2;
      sub_10000A358();
      v51._countAndFlagsBits = 15965;
      v51._object = 0xE200000000000000;
      sub_10000A1E8(v51);
      v27 = v22;
      v28 = sub_100009078(v47, v48, &v49);

      *(v25 + 4) = v28;
      *(v25 + 12) = 2080;
      v29 = sub_100009F28();
      v31 = v30;
      (*(v43 + 8))(v8, v44);
      v32 = sub_100009078(v29, v31, &v49);

      *(v25 + 14) = v32;
      *(v25 + 22) = 2112;
      sub_100009D14(&qword_100014D28, &type metadata accessor for NWError);
      swift_allocError();
      v40(v33, v17, v12);
      v34 = _swift_stdlib_bridgeErrorToNSError();
      v35 = *(v13 + 8);
      v35(v17, v12);
      *(v25 + 24) = v34;
      v36 = v41;
      *v41 = v34;
      _os_log_impl(&_mh_execute_header, v27, v39, "%s: [%s] Failed to send HTTP response: %@", v25, 0x20u);
      sub_10000390C(v36, &qword_100014D30, &qword_10000AD10);

      swift_arrayDestroy();

      v35(v45, v12);
    }

    else
    {

      v37 = *(v13 + 8);
      v37(v17, v12);
      (*(v43 + 8))(v8, v44);
      v37(v45, v12);
    }
  }

  sub_10000A068();
}

uint64_t sub_10000867C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45 = a2;
  v42 = a1;
  v8 = sub_100001EDC(&qword_100014D38, &qword_10000AD18);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v43 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v38 - v12;
  v14 = sub_100009F48();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100009E78();
  sub_100001350(v19, qword_100014DC0);
  (*(v15 + 16))(v18, a5, v14);
  v44 = a3;
  sub_100009BD8(a3, v13, &qword_100014D38, &qword_10000AD18);

  v20 = sub_100009E58();
  v21 = sub_10000A2A8();

  if (os_log_type_enabled(v20, v21))
  {
    v41 = v21;
    v22 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v40 = v23;
    *v22 = 136316162;
    v47 = 0;
    v48 = 0xE000000000000000;
    v49 = v23;
    sub_10000A338(18);
    v50._countAndFlagsBits = 0x656E6E6F43574E3CLL;
    v50._object = 0xEE005B6E6F697463;
    sub_10000A1E8(v50);
    v46 = a4;
    sub_10000A358();
    v51._countAndFlagsBits = 15965;
    v51._object = 0xE200000000000000;
    sub_10000A1E8(v51);
    v24 = sub_100009078(v47, v48, &v49);

    *(v22 + 4) = v24;
    *(v22 + 12) = 2080;
    v25 = sub_100009F28();
    v27 = v26;
    (*(v15 + 8))(v18, v14);
    v28 = sub_100009078(v25, v27, &v49);

    *(v22 + 14) = v28;
    *(v22 + 22) = 1024;
    v29 = v45;
    *(v22 + 24) = v45 & 1;
    *(v22 + 28) = 2048;
    v30 = v43;
    *(v22 + 30) = v42;
    *(v22 + 38) = 2112;
    sub_100009BD8(v13, v30, &qword_100014D38, &qword_10000AD18);
    v31 = sub_10000A0F8();
    v32 = *(v31 - 8);
    if ((*(v32 + 48))(v30, 1, v31) == 1)
    {
      sub_10000390C(v30, &qword_100014D38, &qword_10000AD18);
      sub_10000390C(v13, &qword_100014D38, &qword_10000AD18);
      v33 = 0;
    }

    else
    {
      sub_100009D14(&qword_100014D28, &type metadata accessor for NWError);
      swift_allocError();
      (*(v32 + 32))(v34, v30, v31);
      v33 = _swift_stdlib_bridgeErrorToNSError();
      sub_10000390C(v13, &qword_100014D38, &qword_10000AD18);
    }

    *(v22 + 40) = v33;
    v35 = v39;
    *v39 = v33;
    _os_log_impl(&_mh_execute_header, v20, v41, "%s: [%s] File transfer completed: %{BOOL}d, total bytes sent: %ld, error: %@", v22, 0x30u);
    sub_10000390C(v35, &qword_100014D30, &qword_10000AD10);

    swift_arrayDestroy();

    if (v29)
    {
      goto LABEL_9;
    }
  }

  else
  {

    sub_10000390C(v13, &qword_100014D38, &qword_10000AD18);
    (*(v15 + 8))(v18, v14);
    if (v45)
    {
      goto LABEL_9;
    }
  }

  v36 = sub_10000A0F8();
  if ((*(*(v36 - 8) + 48))(v44, 1, v36) != 1)
  {
LABEL_9:
    sub_10000A068();
  }

  return 1;
}

uint64_t sub_100008C10()
{
  v1 = OBJC_IVAR____TtC24MIBULoopbackServerHelper18MIBULoopbackServer_webRoot;
  v2 = sub_100009E48();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC24MIBULoopbackServerHelper18MIBULoopbackServer_transaction);
  swift_unknownObjectRelease();
  v4 = *(v0 + OBJC_IVAR____TtC24MIBULoopbackServerHelper18MIBULoopbackServer_listener);

  sub_10000390C(v0 + OBJC_IVAR____TtC24MIBULoopbackServerHelper18MIBULoopbackServer_continuation, &qword_100014D88, &qword_10000AD48);
  v5 = *(v0 + OBJC_IVAR____TtC24MIBULoopbackServerHelper18MIBULoopbackServer_error);

  v6 = *(*v0 + 12);
  v7 = *(*v0 + 26);

  return _swift_deallocClassInstance(v0, v6, v7);
}

uint64_t type metadata accessor for MIBULoopbackServer()
{
  result = qword_100014B70;
  if (!qword_100014B70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100008D58()
{
  v0 = sub_100009E48();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_100008E48();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_100008E48()
{
  if (!qword_100014B80)
  {
    sub_100008EAC(&unk_100014B88, &unk_10000ACF8);
    v0 = sub_10000A2E8();
    if (!v1)
    {
      atomic_store(v0, &qword_100014B80);
    }
  }
}

uint64_t sub_100008EAC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100008EF4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008F38(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100008F48(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_100008F94(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_10000901C(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_100009078(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_100009078(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100009144(v11, 0, 0, 1, a1, a2);
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
    sub_100009630(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100001FBC(v11);
  return v7;
}

unint64_t sub_100009144(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100009250(a5, a6);
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
    result = sub_10000A348();
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

char *sub_100009250(uint64_t a1, unint64_t a2)
{
  v4 = sub_10000929C(a1, a2);
  sub_1000093CC(&off_100010810);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10000929C(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000094B8(v5, 0);
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

  result = sub_10000A348();
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
        v10 = sub_10000A1F8();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000094B8(v10, 0);
        result = sub_10000A328();
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

uint64_t sub_1000093CC(uint64_t result)
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

  result = sub_10000952C(result, v12, 1, v3);
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

void *sub_1000094B8(uint64_t a1, uint64_t a2)
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

  sub_100001EDC(&qword_100014D20, &qword_10000AD08);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000952C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001EDC(&qword_100014D20, &qword_10000AD08);
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

_BYTE **sub_100009620(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_100009630(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_100009690(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

void sub_1000096B0(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_100009724()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10000976C()
{
  result = qword_100014D48;
  if (!qword_100014D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014D48);
  }

  return result;
}

void *sub_1000097C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001EDC(&qword_100014D80, &qword_10000AD40);
    v3 = sub_10000A318();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_10000A1A8();
      sub_10000A3B8();
      v29 = v7;
      sub_10000A1C8();
      v9 = sub_10000A3C8();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = sub_10000A1A8();
        v20 = v19;
        if (v18 == sub_10000A1A8() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_10000A388();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_1000099B4(uint64_t a1)
{
  type metadata accessor for URLResourceKey();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100009A14(uint64_t a1)
{
  v3 = *(sub_100009F48() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_1000080F4(a1, v4, v5);
}

uint64_t sub_100009A88()
{
  v1 = sub_100009F48();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100009B4C(uint64_t a1, int a2, uint64_t a3)
{
  v7 = *(sub_100009F48() - 8);
  v8 = *(v3 + 16);
  v9 = v3 + ((*(v7 + 80) + 24) & ~*(v7 + 80));

  return sub_10000867C(a1, a2, a3, v8, v9);
}

uint64_t sub_100009BD8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001EDC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100009C40(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EDC(&qword_100014D88, &qword_10000AD48);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_100009CC8()
{
  result = qword_100014D98;
  if (!qword_100014D98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100014D98);
  }

  return result;
}

uint64_t sub_100009D14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100009D5C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100008EAC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}