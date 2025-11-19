int main(int argc, const char **argv, const char **envp)
{
  v34 = sub_1000016F0;
  v37 = sub_100003778;
  v39 = sub_1000036FC;
  v41 = sub_100003730;
  v44 = sub_1000037C4;
  v23 = 0;
  v24 = 0;
  v25 = type metadata accessor for Logger();
  v26 = *(v25 - 8);
  v27 = v25 - 8;
  v28 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v29 = v15 - v28;
  v31 = type metadata accessor for CommunicationTrustDaemon();
  v30 = qword_10000C020;
  sub_1000015FC(v31, qword_10000C020);
  v32 = sub_100001698(v31, v30);
  CommunicationTrustDaemon.init()();
  static Log.daemon.getter();
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();
  v33 = 17;
  v36 = 7;
  v40 = swift_allocObject();
  *(v40 + 16) = 32;
  v42 = swift_allocObject();
  *(v42 + 16) = 8;
  v35 = 32;
  v3 = swift_allocObject();
  v38 = v3;
  *(v3 + 16) = v34;
  *(v3 + 24) = 0;
  v4 = swift_allocObject();
  v5 = v38;
  v45 = v4;
  *(v4 + 16) = v37;
  *(v4 + 24) = v5;
  v47 = sub_1000037D0(&qword_10000C000, &qword_100003E30);
  v43 = _allocateUninitializedArray<A>(_:)();
  v46 = v6;

  v7 = v40;
  v8 = v46;
  *v46 = v39;
  v8[1] = v7;

  v9 = v42;
  v10 = v46;
  v46[2] = v41;
  v10[3] = v9;

  v11 = v45;
  v12 = v46;
  v46[4] = v44;
  v12[5] = v11;
  sub_10000383C();

  if (os_log_type_enabled(v48, v49))
  {
    v13 = v23;
    v16 = static UnsafeMutablePointer.allocate(capacity:)();
    v15[2] = sub_1000037D0(&qword_10000C010, &qword_100003E38);
    v17 = sub_10000190C(0);
    v18 = sub_10000190C(1);
    v19 = &v54;
    v54 = v16;
    v20 = &v53;
    v53 = v17;
    v21 = &v52;
    v52 = v18;
    sub_100001960(2, &v54);
    sub_100001960(1, v19);
    v50 = v39;
    v51 = v40;
    sub_100001974(&v50, v19, v20, v21);
    v22 = v13;
    if (v13)
    {

      __break(1u);
    }

    else
    {
      v50 = v41;
      v51 = v42;
      sub_100001974(&v50, &v54, &v53, &v52);
      v15[0] = 0;
      v50 = v44;
      v51 = v45;
      sub_100001974(&v50, &v54, &v53, &v52);
      _os_log_impl(&_mh_execute_header, v48, v49, "Started daemon at %s", v16, 0xCu);
      sub_1000019C0(v17);
      sub_1000019C0(v18);
      UnsafeMutablePointer.deallocate()();
    }
  }

  else
  {
  }

  (*(v26 + 8))(v29, v25);
  sub_100003880();
  Daemon.main()();
  return 0;
}

uint64_t sub_1000015FC(uint64_t a1, uint64_t *a2)
{
  v6 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v2 = *(*(a1 - 8) + 64);
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return v6;
}

uint64_t sub_100001698(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    return *a2;
  }

  return v3;
}

uint64_t sub_1000016F0()
{
  v3 = 0;
  v9 = type metadata accessor for Date.FormatStyle.TimeStyle();
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v2 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v8 = &v2 - v2;
  v13 = type metadata accessor for Date.FormatStyle.DateStyle();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v4 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v12 = &v2 - v4;
  v17 = type metadata accessor for Date();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v5 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v17);
  v16 = &v2 - v5;
  Date.init()();
  static Date.FormatStyle.DateStyle.complete.getter();
  static Date.FormatStyle.TimeStyle.complete.getter();
  v18 = Date.formatted(date:time:)();
  v19 = v0;
  (*(v6 + 8))(v8, v9);
  (*(v10 + 8))(v12, v13);
  (*(v14 + 8))(v16, v17);
  return v18;
}

uint64_t sub_10000190C(uint64_t a1)
{
  if (a1)
  {
    return static UnsafeMutablePointer.allocate(capacity:)();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100001960(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

void sub_1000019C0(uint64_t a1)
{
  if (a1)
  {
    UnsafeMutablePointer.deinitialize(count:)();
    UnsafeMutablePointer.deallocate()();
  }
}

void *sub_100001A5C(void *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = a4();
  sub_100001AF8(v4, v5, a3);
  v8 = *a1;

  UnsafeMutableRawBufferPointer.copyMemory(from:)();
  result = a1;
  *a1 = v8 + 8;
  return result;
}

uint64_t sub_100001AF8(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  v14 = sub_100001C9C(&v17, 0, 0, 1, a1, a2);
  v15 = v3;
  v16 = v4;
  v11 = v17;
  swift_unknownObjectRetain();
  if (v14)
  {
    swift_unknownObjectRelease();

    v12[3] = swift_getObjectType();
    swift_unknownObjectRetain();
    v12[0] = v14;
    v6 = *a3;
    if (*a3)
    {
      sub_1000039A0(v12, v6);
      swift_unknownObjectRelease();
      *a3 = v6 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    sub_100003900(v12);
  }

  else
  {
    v13[3] = &type metadata for _StringGuts;
    v13[0] = a1;
    v13[1] = a2;
    v7 = *a3;
    if (*a3)
    {
      sub_1000039A0(v13, v7);
      swift_unknownObjectRelease();
      *a3 = v7 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    sub_100003900(v13);
  }

  return v11;
}

uint64_t sub_100001C9C(uint64_t result, char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v19 = result;
  v25 = a6;
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (a2)
      {
        if (!a3)
        {
          __break(1u);
        }

        v18 = a3 - a2;
      }

      else
      {
        v18 = 0;
      }

      v17 = (a6 & 0xF00000000000000uLL) >> 56;
      if (v17 < v18)
      {
        if (a2)
        {
          v16 = a2;
        }

        else
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        v22[0] = a5;
        v22[1] = a6 & (-bswap64(0xFFuLL) - 1);
        sub_100002054(v22, v17, v16);
        UnsafeMutableRawBufferPointer.subscript.setter();
        *v19 = v16;
        v12 = 0;
        v13 = v17;
        v14 = 1;
        v15 = 0;
        goto LABEL_28;
      }
    }

    goto LABEL_14;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
LABEL_14:
    v6 = sub_1000021D0(a5, a6);
    *v19 = v7;
    v12 = v6;
    v13 = v8;
    v14 = 0;
    v15 = 1;
LABEL_28:
    v22[2] = v12;
    v22[3] = v13;
    v23 = v14 & 1;
    v24 = v15 & 1;
    return v12;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
    {
      v11 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
      goto LABEL_23;
    }

    __break(1u);
  }

  result = _StringObject.sharedUTF8.getter();
  if (result)
  {
    v10 = result;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v11 = v10;
LABEL_23:
  *v19 = v11;
  if (a6 < 0)
  {
    v9 = 0;
LABEL_27:
    v12 = v9;
    v13 = a5 & 0xFFFFFFFFFFFFLL;
    v14 = 0;
    v15 = 0;
    goto LABEL_28;
  }

  if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    swift_unknownObjectRetain();
    v9 = a6 & 0xFFFFFFFFFFFFFFFLL;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

char *sub_100002054(char *result, int64_t a2, char *a3)
{
  if (a2 < 0)
  {
LABEL_7:
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_8;
  }

  if ((a2 * 1) >> 64 == a2 >> 63)
  {
    if (result >= &a3[a2] || a3 >= &result[a2])
    {
      memcpy(a3, result, a2);
      return a3;
    }

    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_7;
  }

LABEL_8:
  __break(1u);
  return result;
}

void *sub_1000021D0(uint64_t a1, uint64_t a2)
{
  v7 = sub_10000228C(a1, a2);
  sub_1000037D0(&qword_10000C018, &qword_100003E40);
  inited = swift_initStackObject();
  v3 = sub_100002A9C(inited, 1);
  *v4 = 0;
  sub_100002AE8();
  sub_100002B1C(v3);

  v8 = sub_100002EC4(v7);

  result = v8;
  if (!__OFSUB__(v8, 1))
  {
    return v7;
  }

  __break(1u);
  return result;
}

void *sub_10000228C(uint64_t a1, uint64_t a2)
{
  v17[2] = a2;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v13 = String.UTF8View._foreignCount()();
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v12 = (a2 & 0xF00000000000000uLL) >> 56;
    }

    else
    {
      v12 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v13 = v12;
  }

  if (!v13)
  {
    return sub_1000033E4();
  }

  v10 = sub_100002EDC(v13, 0);

  v11 = (v10 + 4);

  if (v13 < 0)
  {
LABEL_30:
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
    return sub_1000033E4();
  }

  v16[12] = a2;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v16[0] = a1;
      v16[1] = a2 & (-bswap64(0xFFuLL) - 1);
      if (v13 >= ((a2 & 0xF00000000000000uLL) >> 56))
      {
        sub_100003020(v16, (a2 & 0xF00000000000000uLL) >> 56, v11);
        v8 = (a2 & 0xF00000000000000uLL) >> 56;
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
      {
        v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v7 = a1 & 0xFFFFFFFFFFFFLL;
        goto LABEL_22;
      }

      __break(1u);
    }

    v6 = _StringObject.sharedUTF8.getter();
    v7 = v3;
LABEL_22:
    if (v13 >= v7)
    {
      if (!v6)
      {
        __break(1u);
      }

      sub_100003020(v6, v7, v11);
      v8 = v7;
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  v9 = _StringGuts._foreignCopyUTF8(into:)();
  if (v2)
  {
LABEL_29:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_30;
  }

  v8 = v9;
LABEL_26:
  v16[11] = 0xE000000000000000;

  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  v16[10] = 0xE000000000000000;
  if (v8 != v13)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  sub_100003A38(v17);
  return v10;
}

uint64_t sub_100002A9C(uint64_t a1, uint64_t a2)
{

  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;

  return a1;
}

void sub_100002B1C(uint64_t a1)
{
  v20 = sub_100002EC4(a1);
  v2 = sub_100002EC4(*v1);
  v21 = v2 + v20;
  if (__OFADD__(v2, v20))
  {
    goto LABEL_31;
  }

  v16 = *v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v19 = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v21 > *(*v19 + 24) >> 1)
  {
    if (*(*v19 + 16) < v21)
    {
      v15 = v21;
    }

    else
    {
      v15 = *(*v19 + 16);
    }

    v14 = *v19;

    v4 = sub_100003420(isUniquelyReferenced_nonNull_native, v15, 1, v14);
    v5 = *v19;
    *v19 = v4;
  }

  v6 = *(*v19 + 16);
  v12 = (*v19 + 32 + v6);
  v7 = *(*v19 + 24) >> 1;
  v13 = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
    goto LABEL_32;
  }

  if (v13 < 0)
  {
LABEL_30:
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!sub_10000358C(a1))
  {
LABEL_21:

    if (v20 <= 0)
    {
      goto LABEL_28;
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_30;
  }

  if (v13 < v20)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_21;
  }

  sub_100003020((a1 + 32), v20, v12);

  swift_unknownObjectRelease();
  if (v20 <= 0)
  {
    goto LABEL_28;
  }

  v9 = *(*v19 + 16);
  v11 = v9 + v20;
  if (!__OFADD__(v9, v20))
  {
    *(*v19 + 16) = v11;
LABEL_28:
    sub_100003414();
    return;
  }

LABEL_33:
  __break(1u);
}

void *sub_100002EDC(uint64_t a1, uint64_t a2)
{
  if (a2 < a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (v6)
  {
    sub_1000037D0(&qword_10000C018, &qword_100003E40);
    v5 = swift_allocObject();

    if (sub_100003A04())
    {
      v3 = sub_100003A10(v5) - 32;
      v5[2] = a1;
      v5[3] = 2 * v3;
    }

    else
    {
      v5[2] = a1;
      v5[3] = 2 * v6;
    }

    return v5;
  }

  else
  {

    return &_swiftEmptyArrayStorage;
  }
}

void *sub_100003020(char *a1, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a1 >= &a3[a2] || a3 >= &a1[a2])
    {
      return memcpy(a3, a1, a2);
    }

    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  result = _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100003170(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  if ((a3 & 0x1000000000000000) != 0 && (a2 & 0x800000000000000) == 0)
  {
    v10 = a1 >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v9 = String.UTF8View._foreignIndex(_:offsetBy:)();
LABEL_11:
      if (v11 >> 14)
      {
        v7 = ((v9 >> 16) + (v11 >> 14)) << 16;
      }

      else
      {
        v7 = v9 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
      }

      return v7 | 8;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      v8 = (a3 & 0x2000000000000000) != 0 ? (a3 & 0xF00000000000000uLL) >> 56 : a2 & 0xFFFFFFFFFFFFLL;
      if (v8 >= v10)
      {
        v9 = (v10 << 16) | 4;
        goto LABEL_11;
      }
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v5 = String.UTF16View.index(_:offsetBy:)();
  if (v11 >> 14)
  {
    v4 = ((v5 >> 16) + (v11 >> 14)) << 16;
  }

  else
  {
    v4 = v5 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
  }

  return v4 | 4;
}

char *sub_100003420(char *result, uint64_t a2, char a3, uint64_t a4)
{
  v7 = result;
  v9 = *(a4 + 24) >> 1;
  if (a3)
  {
    if (v9 < a2)
    {
      if ((v9 * 2) >> 64 != (2 * v9) >> 63)
      {
        __break(1u);
        return result;
      }

      if (2 * v9 < a2)
      {
        v6 = a2;
      }

      else
      {
        v6 = 2 * v9;
      }
    }

    else
    {
      v6 = *(a4 + 24) >> 1;
    }
  }

  else
  {
    v6 = a2;
  }

  v4 = *(a4 + 16);
  v5 = sub_100002EDC(v4, v6);
  if (v7)
  {
    sub_100003594((a4 + 32), v4, v5 + 32);

    *(a4 + 16) = 0;
  }

  else
  {

    sub_100003020((a4 + 32), v4, v5 + 32);
    swift_unknownObjectRelease();
  }

  return v5;
}

char *sub_100003594(char *result, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else if (a3 < result || a3 >= &result[a2] || a3 != result)
  {
    return memmove(a3, result, a2);
  }

  return result;
}

_BYTE **sub_1000036BC(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_100003738()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100003784()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1000037D0(uint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  if (!*a1)
  {
    v3 = *a2;
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v6;
}

unint64_t sub_100003880()
{
  v2 = qword_10000C008;
  if (!qword_10000C008)
  {
    type metadata accessor for CommunicationTrustDaemon();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10000C008);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100003900(uint64_t *a1)
{
  v3 = a1[3];
  if ((*(*(v3 - 8) + 80) & 0x20000) == 0)
  {
    return (*(*(v3 - 8) + 8))(a1);
  }

  v2 = *a1;
}

uint64_t sub_1000039A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t sub_100003A38(uint64_t a1)
{
  v1 = *(a1 + 8);

  return a1;
}