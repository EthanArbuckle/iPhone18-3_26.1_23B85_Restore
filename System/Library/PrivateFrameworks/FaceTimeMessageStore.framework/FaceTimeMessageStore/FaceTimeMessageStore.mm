int main(int argc, const char **argv, const char **envp)
{
  v3 = type metadata accessor for URL();
  v133 = *(v3 - 8);
  v4 = v133[8];
  v5 = (__chkstk_darwin)();
  v122 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v121 = &v116 - v8;
  v9 = __chkstk_darwin(v7);
  v127 = &v116 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v116 - v12;
  v14 = __chkstk_darwin(v11);
  v132 = &v116 - v15;
  __chkstk_darwin(v14);
  v134 = &v116 - v16;
  v17 = type metadata accessor for Logger();
  v18 = *(v17 - 8);
  v19 = v18[8];
  v20 = __chkstk_darwin(v17);
  v126 = &v116 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v124 = &v116 - v23;
  v24 = __chkstk_darwin(v22);
  v130 = &v116 - v25;
  v26 = __chkstk_darwin(v24);
  v28 = &v116 - v27;
  __chkstk_darwin(v26);
  v30 = &v116 - v29;
  if (qword_10000C020 != -1)
  {
    swift_once();
  }

  v31 = sub_100001F24(v17, qword_10000C060);
  v32 = v18[2];
  v135 = v31;
  v136 = v32;
  v137 = v18 + 2;
  (v32)(v30);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v33, v34, "Starting facetimemessagestored", v35, 2u);
    sub_10000268C();
  }

  v36 = v13;

  v39 = v18[1];
  v38 = v18 + 1;
  v37 = v39;
  v39(v30, v17);
  sub_1000029A8();
  v136(v28, v135, v17);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&_mh_execute_header, v40, v41, "facetimemessagestored entered sandbox", v42, 2u);
    sub_10000268C();
  }

  v37(v28, v17);
  sub_100001F5C(v3, qword_10000C038);
  v43 = sub_100001F24(v3, qword_10000C038);
  getUserDataStoreDirectoryURL()();
  v44 = v134;
  URL.appendingPathComponent(_:)();
  v45 = v132;
  v123 = v43;
  URL.appendingPathComponent(_:)();
  v46 = v130;
  v136(v130, v135, v17);
  v131 = v38;
  v47 = v133;
  v48 = v133 + 2;
  v49 = v133[2];
  v49(v36, v44, v3);
  v50 = v127;
  v120 = v48;
  v119 = v49;
  v49(v127, v45, v3);
  v51 = Logger.logObject.getter();
  v52 = v37;
  v125 = static os_log_type_t.default.getter();
  v53 = os_log_type_enabled(v51, v125);
  v128 = v37;
  v129 = v3;
  if (v53)
  {
    v54 = swift_slowAlloc();
    v118 = v17;
    v55 = v54;
    v117 = swift_slowAlloc();
    v138 = v117;
    *v55 = 136315394;
    URL.path.getter();
    v56 = v133[1];
    v56(v36, v3);
    v57 = sub_1000026A4();

    *(v55 + 4) = v57;
    *(v55 + 12) = 2080;
    v58 = URL.path.getter();
    v59 = v52;
    v61 = v60;
    v127 = v56;
    v56(v50, v3);
    v62 = sub_100001FC0(v58, v61, &v138);

    *(v55 + 14) = v62;
    _os_log_impl(&_mh_execute_header, v51, v125, "Creating directories at %s and %s", v55, 0x16u);
    swift_arrayDestroy();
    sub_10000268C();
    sub_10000268C();

    v63 = v118;
    v59(v130, v118);
  }

  else
  {

    v64 = v47[1];
    v64(v50, v3);
    v127 = v64;
    v64(v36, v3);
    v52(v46, v17);
    v63 = v17;
  }

  v65 = objc_opt_self();
  v66 = [v65 defaultManager];
  v67 = v134;
  URL._bridgeToObjectiveC()(v68);
  v70 = v69;
  v138 = 0;
  v71 = [v66 createDirectoryAtURL:v69 withIntermediateDirectories:1 attributes:0 error:&v138];

  v72 = v138;
  if (v71)
  {
    v73 = v138;
    v74 = [v65 defaultManager];
    v75 = v132;
    URL._bridgeToObjectiveC()(v76);
    v78 = v77;
    v138 = 0;
    v79 = [v74 createDirectoryAtURL:v77 withIntermediateDirectories:1 attributes:0 error:&v138];

    v72 = v138;
    v80 = v129;
    if (v79)
    {
      v81 = v124;
      v136(v124, v135, v63);
      v82 = v121;
      v83 = v119;
      v119(v121, v67, v80);
      v84 = v122;
      v83(v122, v75, v80);
      v85 = v72;
      v86 = Logger.logObject.getter();
      v87 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        v137 = swift_slowAlloc();
        v138 = v137;
        *v88 = 136315394;
        v89 = v87;
        URL.path.getter();
        v90 = v82;
        v91 = v127;
        (v127)(v90, v80);
        v92 = sub_1000026A4();

        *(v88 + 4) = v92;
        *(v88 + 12) = 2080;
        URL.path.getter();
        v91(v84, v80);
        v93 = sub_1000026A4();

        *(v88 + 14) = v93;
        _os_log_impl(&_mh_execute_header, v86, v89, "facetimemessagestored finished creating directories at %s and %s", v88, 0x16u);
        swift_arrayDestroy();
        sub_10000268C();
        sub_10000268C();

        v128(v124, v63);
        v91(v132, v80);
        v91(v134, v80);
      }

      else
      {

        v109 = v127;
        (v127)(v84, v80);
        v109(v82, v80);
        v128(v81, v63);
        v109(v75, v80);
        v109(v67, v80);
      }

      v110 = type metadata accessor for MessageStoreService();
      v111 = *(v110 + 48);
      v112 = *(v110 + 52);
      swift_allocObject();
      qword_10000C050 = MessageStoreService.init()();
      v113 = type metadata accessor for VideoMessagingService();
      v114 = *(v113 + 48);
      v115 = *(v113 + 52);
      swift_allocObject();
      qword_10000C058 = VideoMessagingService.init()();
      MessageStoreService.start()();
      VideoMessagingService.start()();
      sub_100001DBC();
      exit(0);
    }
  }

  else
  {
    v80 = v129;
    v75 = v132;
  }

  v94 = v72;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v95 = v127;
  (v127)(v75, v80);
  v95(v134, v80);
  v96 = v126;
  v136(v126, v135, v63);
  swift_errorRetain();
  v97 = Logger.logObject.getter();
  v98 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v138 = v101;
    *v99 = 136315394;
    v102 = URL.path.getter();
    v104 = v63;
    v105 = sub_100001FC0(v102, v103, &v138);

    *(v99 + 4) = v105;
    *(v99 + 12) = 2112;
    swift_errorRetain();
    v106 = _swift_stdlib_bridgeErrorToNSError();
    *(v99 + 14) = v106;
    *v100 = v106;
    _os_log_impl(&_mh_execute_header, v97, v98, "facetimemessagestored failed to create directories at %s: %@", v99, 0x16u);
    sub_100002530(v100);
    sub_10000268C();
    sub_1000025E0(v101);
    sub_10000268C();
    sub_10000268C();

    v107 = v96;
    v108 = v104;
  }

  else
  {

    v107 = v96;
    v108 = v63;
  }

  v128(v107, v108);
  exit(1);
}

uint64_t sub_100001DBC()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100001E64();
}

void sub_100001E64()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v0 = [objc_opt_self() currentRunLoop];
  [v0 run];
}

uint64_t sub_100001F24(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100001F5C(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100001FC0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100002084(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_10000262C(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_1000025E0(v11);
  return v7;
}

unint64_t sub_100002084(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100002184(a5, a6);
    *a1 = v9;
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
    result = _StringObject.sharedUTF8.getter();
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

char *sub_100002184(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000021D0(a1, a2);
  sub_1000022E8(&off_100008378);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_1000021D0(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = sub_1000023CC(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_1000022E8(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_10000243C(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1000023CC(uint64_t a1, uint64_t a2)
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

  sub_100002598(&qword_10000C030, &unk_100003830);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_10000243C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002598(&qword_10000C030, &unk_100003830);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_100002530(uint64_t a1)
{
  v2 = sub_100002598(&qword_10000C028, &qword_100003828);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100002598(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000025E0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10000262C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000268C()
{
}

uint64_t sub_1000026A4()
{

  return sub_100001FC0(v0, v1, (v2 - 104));
}

uint64_t sub_1000026C0()
{
  v0 = type metadata accessor for Logger();
  sub_100001F5C(v0, qword_10000C060);
  sub_100001F24(v0, qword_10000C060);
  return Logger.init(subsystem:category:)();
}

unint64_t sub_100002734(char a1)
{
  result = 0x73736563637573;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000020;
      break;
    case 2:
      result = 0xD00000000000001DLL;
      break;
    case 3:
      result = 0xD00000000000001CLL;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    case 5:
      result = 0xD000000000000019;
      break;
    case 6:
      result = 0xD00000000000001BLL;
      break;
    case 7:
      result = 0xD000000000000023;
      break;
    default:
      return result;
  }

  return result;
}

void sub_100002870(unsigned __int8 a1)
{
  if (qword_10000C020 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100001F24(v2, qword_10000C060);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136315138;
    v7 = sub_100002734(a1);
    v9 = sub_100001FC0(v7, v8, &v10);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Exiting with reason: %s", v5, 0xCu);
    sub_1000025E0(v6);
  }

  _exit(a1);
}

uint64_t sub_1000029A8()
{
  String.utf8CString.getter();
  v0 = _set_user_dir_suffix();

  if (!v0)
  {
    if (qword_10000C020 != -1)
    {
      sub_1000032CC();
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100001F24(v16, qword_10000C060);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (sub_10000331C(v18))
    {
      *swift_slowAlloc() = 0;
      sub_1000032E0(&_mh_execute_header, v19, v20, "Sandbox: _set_user_dir_suffix returned nil");
      sub_100003300();
    }

    v15 = 6;
LABEL_25:
    sub_100002870(v15);
  }

  v1 = NSTemporaryDirectory();
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    if (qword_10000C020 != -1)
    {
      sub_1000032CC();
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100001F24(v21, qword_10000C060);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (sub_10000331C(v23))
    {
      *swift_slowAlloc() = 0;
      sub_1000032E0(&_mh_execute_header, v24, v25, "Unable to create temp directory");
      sub_100003300();
    }

    v15 = 3;
    goto LABEL_25;
  }

  sub_100002BF0(65537);
  if (!v6 || (sub_100002CF4(), v8 = v7, , !v8))
  {
    if (qword_10000C020 != -1)
    {
      sub_1000032CC();
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100001F24(v10, qword_10000C060);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (sub_10000331C(v12))
    {
      *swift_slowAlloc() = 0;
      sub_1000032E0(&_mh_execute_header, v13, v14, "Sandbox: confstr(_CS_DARWIN_USER_TEMP_DIR) failed");
      sub_100003300();
    }

    v15 = 4;
    goto LABEL_25;
  }
}

uint64_t sub_100002BF0(int a1)
{
  v2 = type metadata accessor for __DataStorage();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v7 = 0x40000000000;
  v8 = __DataStorage.init(length:)();
  sub_1000031CC(&v7, 0);
  v8 |= 0x4000000000000000uLL;
  v5 = sub_100002D70(&v7, a1);
  sub_100003274(v7, v8);
  return v5;
}

uint64_t sub_100002C90@<X0>(char *a1@<X0>, int a2@<W2>, void *a3@<X8>)
{
  result = confstr(a2, a1, 0x400uLL);
  if (result >= 1 && a1)
  {
    result = String.init(cString:)();
    *a3 = result;
    a3[1] = v6;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

uint64_t sub_100002CF4()
{
  v0 = String.utf8CString.getter();
  v1 = realpath_DARWIN_EXTSN((v0 + 32), 0);

  if (!v1)
  {
    return 0;
  }

  v2 = String.init(cString:)();

  return v2;
}

uint64_t sub_100002D70(uint64_t *a1, int a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = v2;
  switch(v3 >> 62)
  {
    case 1uLL:
      v13 = v3 & 0x3FFFFFFFFFFFFFFFLL;

      sub_100003274(v4, v3);
      *a1 = xmmword_100003850;
      sub_100003274(0, 0xC000000000000000);
      v14 = v4 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v14 < v4)
      {
        goto LABEL_23;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v4, __DataStorage._offset.getter()))
      {
        goto LABEL_24;
      }

      v15 = type metadata accessor for __DataStorage();
      v16 = *(v15 + 48);
      v17 = *(v15 + 52);
      swift_allocObject();
      v18 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v13 = v18;
LABEL_16:
      if (v14 < v4)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v5 = sub_100003120(v4, v4 >> 32, v13, a2);

      v12 = v13 | 0x4000000000000000;
      if (v2)
      {
        *a1 = v4;
        goto LABEL_19;
      }

      *a1 = v4;
      a1[1] = v12;
      break;
    case 2uLL:
      v9 = *a1;

      sub_100003274(v4, v3);
      v22 = v4;
      v23 = v3 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_100003850;
      sub_100003274(0, 0xC000000000000000);
      Data.LargeSlice.ensureUniqueReference()();
      v10 = v23;
      v11 = sub_100003120(*(v22 + 16), *(v22 + 24), v23, a2);
      if (v2)
      {
        v12 = v23 | 0x8000000000000000;
        *a1 = v22;
LABEL_19:
        a1[1] = v12;
      }

      else
      {
        v5 = v11;
        *a1 = v22;
        a1[1] = v10 | 0x8000000000000000;
      }

      break;
    case 3uLL:
      memset(v21, 0, 15);
      sub_100002C90(v21, a2, &v22);
      if (!v2)
      {
        return v22;
      }

      return v5;
    default:
      v5 = v4 >> 40;
      sub_100003274(v4, v3);
      *v21 = v4;
      *&v21[8] = v3;
      v21[10] = BYTE2(v3);
      v21[11] = BYTE3(v3);
      v21[12] = BYTE4(v3);
      v21[13] = BYTE5(v3);
      v21[14] = BYTE6(v3);
      sub_100002C90(v21, a2, &v22);
      if (!v2)
      {
        v5 = v22;
      }

      v8 = *&v21[8] | ((*&v21[12] | (v21[14] << 16)) << 32);
      *a1 = *v21;
      a1[1] = v8;
      return v5;
  }

  return v5;
}

uint64_t sub_100003120(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_9;
  }

  v9 = result;
  result = __DataStorage._offset.getter();
  v10 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (__OFSUB__(a2, a1))
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  __DataStorage._length.getter();
  result = sub_100002C90((v9 + v10), a4, &v11);
  if (!v4)
  {
    return v11;
  }

  return result;
}

void sub_1000031CC(int *a1, int a2)
{
  Data.InlineSlice.ensureUniqueReference()();
  v4 = *a1;
  v5 = a1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = *(a1 + 1);

  v7 = __DataStorage._bytes.getter();
  if (!v7)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v8 = v7;
  v9 = __DataStorage._offset.getter();
  v10 = v4 - v9;
  if (__OFSUB__(v4, v9))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = v5 - v4;
  v12 = __DataStorage._length.getter();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  memset((v8 + v10), a2, v13);
}

uint64_t sub_100003274(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_1000032E0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_100003300()
{
}

BOOL sub_10000331C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}