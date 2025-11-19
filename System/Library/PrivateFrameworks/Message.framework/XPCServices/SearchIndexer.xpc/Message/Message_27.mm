uint64_t sub_1001C1C0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001C1C6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001C1CD4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001C1D7C()
{
  v1 = *(_s6LoggerVMa() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_1004A4A74();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = *(v0 + v4);

  v8 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v2 | 7);
}

uint64_t sub_1001C1E74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001C1EDC(uint64_t a1)
{
  v3 = *(_s6LoggerVMa() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1001B9A8C(a1, (v1 + v4), v6, v7);
}

uint64_t sub_1001C1F84(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1001C1FDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001C1FF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001C203C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_1001C2074(uint64_t a1, uint64_t *a2)
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

uint64_t sub_1001C20D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D3CD0, &qword_1004DDA58);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001C2150()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1001C2190()
{
  result = qword_1005D3CE0;
  if (!qword_1005D3CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D3CE0);
  }

  return result;
}

uint64_t sub_1001C21E4(unint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
    sub_10001114C(a1);
  }
}

uint64_t sub_1001C2230(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = a1[2];
  v5 = *a2;
  v4 = a2[1];
  v6 = a2[2];
  v7 = *a1 >> 62;
  if (v7)
  {
    if (v7 != 1)
    {
      if (v5 >> 62 != 2)
      {
        return 0;
      }

      if (v5 != 0x8000000000000000 || (v6 | v4) != 0)
      {
        return 0;
      }

      goto LABEL_24;
    }

    v7 = 0;
    if (v5 >> 62 == 1 && *a1 == v5)
    {
      if (WORD1(v2) != WORD1(v5))
      {
        return 0;
      }

      if (v3)
      {
        goto LABEL_7;
      }

      goto LABEL_16;
    }
  }

  else if (!(v5 >> 62) && *a1 == v5)
  {
    if (WORD1(v2) != WORD1(v5))
    {
      return 0;
    }

    if (v3)
    {
LABEL_7:
      if (!v6)
      {
        return 0;
      }

      if (a1[1] != v4 || v3 != v6)
      {
        v8 = a1;
        v9 = a1[1];
        v10 = a2;
        v11 = sub_1004A6D34();
        a2 = v10;
        v12 = v11;
        a1 = v8;
        if ((v12 & 1) == 0)
        {
          return 0;
        }
      }

LABEL_24:
      v14 = a1[5];
      v15 = a2[5];
      if (v14 == 1)
      {
        if (v15 == 1)
        {
          return 1;
        }
      }

      else if (v15 != 1 && *(a1 + 24) == *(a2 + 24))
      {
        if (v14)
        {
          if (v15 && (a1[4] == a2[4] && v14 == v15 || (sub_1004A6D34() & 1) != 0))
          {
            return 1;
          }
        }

        else if (!v15)
        {
          return 1;
        }
      }

      return 0;
    }

LABEL_16:
    if (v6)
    {
      return 0;
    }

    goto LABEL_24;
  }

  return v7;
}

uint64_t sub_1001C239C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D3CE8, &qword_1004DDA78);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v31 - v9;
  v11 = sub_1004A4F74();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_1004A4F64();
  sub_1004A4F54();
  v14 = *(a1 + *(type metadata accessor for ConnectionConfiguration(0) + 28));
  sub_1004A4F44();
  if ((v14 & 0xC0) == 0x40)
  {
    sub_100213F20(a1, v14 & 0x3F, a2);
  }

  v15 = sub_1004A4F24();
  v16 = qword_1005D2D88;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = sub_1004A5084();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();

  v20 = sub_1004A5074();
  v21 = a2 + *(_s6LoggerVMa() + 20);
  v22 = *(v21 + 4);
  v23 = *v21;
  *(&v32 + 1) = &type metadata for ConnectionLoggerID;
  LOBYTE(v31) = v23;
  DWORD1(v31) = v22;
  sub_1004A50A4();
  sub_1004A4914();
  v24 = sub_1004A4904();
  v25 = *(v24 - 8);
  (*(v25 + 56))(v10, 0, 1, v24);
  sub_10000E268(v10, v8, &qword_1005D3CE8, &qword_1004DDA78);
  if ((*(v25 + 48))(v8, 1, v24) == 1)
  {
    sub_100025F40(v8, &qword_1005D3CE8, &qword_1004DDA78);
    v31 = 0u;
    v32 = 0u;
  }

  else
  {
    *(&v32 + 1) = v24;
    v26 = sub_1000B3774(&v31);
    (*(v25 + 32))(v26, v8, v24);
  }

  sub_1004A50A4();
  sub_100025F40(v10, &qword_1005D3CE8, &qword_1004DDA78);
  sub_1004A4EE4();

  v28 = sub_1004A4ED4();
  if (!(*v27 >> 62))
  {
    goto LABEL_9;
  }

  if (*v27 < 0)
  {
    v30 = *v27;
  }

  result = sub_1004A6A34();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
LABEL_9:
    sub_1001AC808(0, 0, v20);

    v28(&v31, 0);

    return v15;
  }

  return result;
}

uint64_t sub_1001C2778(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = a4;
  v7 = a3;
  v61 = a4;
  v62 = a3;
  v71 = a2;
  v9 = sub_1004A4904();
  v73 = *(v9 - 8);
  v74 = v9;
  v10 = *(v73 + 64);
  __chkstk_darwin(v9);
  v66 = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1004A4944();
  v69 = *(v67 - 8);
  v12 = *(v69 + 64);
  __chkstk_darwin(v67);
  v68 = v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1004A4C04();
  v70 = *(v72 - 8);
  v14 = *(v70 + 8);
  __chkstk_darwin(v72);
  v65 = v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1004A4EB4();
  v63 = *(v16 - 8);
  v64 = v16;
  v17 = *(v63 + 64);
  __chkstk_darwin(v16);
  v60 = v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ConnectionConfiguration(0);
  v20 = (v19 - 8);
  v21 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v23 = v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = _s6LoggerVMa();
  v25 = v24 - 8;
  v26 = *(*(v24 - 8) + 64);
  v27 = __chkstk_darwin(v24);
  v29 = v58 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v31 = v58 - v30;
  *(v5 + OBJC_IVAR____TtC15IMAP2Connection10Connection_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v32 = OBJC_IVAR____TtC15IMAP2Connection10Connection_receiveTranscoder;
  *(v5 + v32) = ServerResponseTranscoder.init()();
  *(v5 + OBJC_IVAR____TtC15IMAP2Connection10Connection_pendingHandshakeReplyCount) = 0;
  v33 = v5 + OBJC_IVAR____TtC15IMAP2Connection10Connection_throttleInfo;
  *v33 = 0;
  *(v33 + 8) = 0;
  *(v33 + 16) = 1;
  v34 = OBJC_IVAR____TtC15IMAP2Connection10Connection_lastMessageTime;
  *(v5 + v34) = static MonotonicTime.now()();
  sub_1004A4A64();
  v35 = &v31[*(v25 + 28)];
  *v35 = v7;
  *(v35 + 1) = v6;
  v58[1] = sub_1004A4EA4();
  v59 = type metadata accessor for ConnectionConfiguration;
  sub_1001C1C6C(a1, v23, type metadata accessor for ConnectionConfiguration);
  sub_1001C1C6C(v31, v29, _s6LoggerVMa);
  sub_1001C239C(v23, v29);
  v36 = v23[v20[7]];
  sub_1004A4EF4();
  v37 = *&v23[v20[8]];

  sub_1004A4F04();
  v38 = &v23[v20[10]];
  v40 = *v38;
  v39 = *(v38 + 1);

  v41 = v66;
  sub_1004A4F14();
  v42 = &v23[v20[11]];
  v43 = *v42;
  v44 = *(v42 + 1);

  v45 = a1;
  sub_1004A4F34();
  (*(v63 + 104))(v60, enum case for NWParameters.Attribution.user(_:), v64);
  sub_1004A4EC4();
  (*(v70 + 2))(v65, v23, v72);
  v46 = sub_1004A4DF4();
  sub_1001C1C0C(v29, _s6LoggerVMa);
  sub_1001C1C0C(v23, type metadata accessor for ConnectionConfiguration);
  v70 = v31;
  v47 = v67;
  sub_1001C1C6C(v31, v5 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger, _s6LoggerVMa);
  *(v5 + OBJC_IVAR____TtC15IMAP2Connection10Connection_createdAt) = static MonotonicTime.now()();
  v72 = v45;
  sub_1001C1C6C(v45, v5 + OBJC_IVAR____TtC15IMAP2Connection10Connection_configuration, v59);
  v48 = v71;
  *(v5 + OBJC_IVAR____TtC15IMAP2Connection10Connection_queue) = v71;
  *(v5 + OBJC_IVAR____TtC15IMAP2Connection10Connection_connection) = v46;
  v49 = v48;

  *(v5 + OBJC_IVAR____TtC15IMAP2Connection10Connection_underlyingID) = sub_1004A4CA4();
  v50 = tracingSignposter.unsafeMutableAddressor();
  v51 = v68;
  v52 = v69;
  (*(v69 + 16))(v68, v50, v47);
  sub_1004A4914();
  v53 = sub_1004A4934();
  v54 = sub_1004A6154();
  if (sub_1004A6354())
  {
    v55 = swift_slowAlloc();
    *v55 = 67109120;
    *(v55 + 4) = 1;
    v56 = sub_1004A48F4();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v53, v54, v56, "Connection.networkStateUpdate", "%u", v55, 8u);
  }

  sub_1001C1C0C(v72, type metadata accessor for ConnectionConfiguration);
  (*(v73 + 8))(v41, v74);
  (*(v52 + 8))(v51, v47);
  sub_1001C1C0C(v70, _s6LoggerVMa);
  return v5;
}

uint64_t sub_1001C2E48(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 24))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001C2EA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

void *sub_1001C2F04(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[2] = a2;
  }

  return result;
}

uint64_t sub_1001C2F44()
{
  result = sub_1004A5214();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1001C2FB0()
{
  sub_1004A4E34();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ConnectionEvent.FailureReason(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UntaggedResponse(319);
      if (v2 <= 0x3F)
      {
        sub_1001C3070();
        if (v3 <= 0x3F)
        {
          sub_1001C30D0();
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1001C3070()
{
  if (!qword_1005D3E18)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1005D3E18);
    }
  }
}

void sub_1001C30D0()
{
  if (!qword_1005D3E20)
  {
    sub_1001C312C();
    v0 = sub_1004A5DC4();
    if (!v1)
    {
      atomic_store(v0, &qword_1005D3E20);
    }
  }
}

unint64_t sub_1001C312C()
{
  result = qword_1005D3E28;
  if (!qword_1005D3E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D3E28);
  }

  return result;
}

uint64_t sub_1001C3194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for ClientCommand.Encoded();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1001C3220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for ClientCommand.Encoded();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1001C32BC()
{
  result = type metadata accessor for ClientCommand.Encoded();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001C3338(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  HIDWORD(v3) = *(a1 + 4);
  LODWORD(v3) = HIDWORD(v3);
  v2 = v3 >> 30;
  if (v2 > 0x80000000)
  {
    v4 = ~v2;
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1001C3388(uint64_t result, int a2, int a3)
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
      HIDWORD(v3) = -a2;
      LODWORD(v3) = -a2;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = (v3 >> 2) << 32;
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

unint64_t sub_1001C3404(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return *a1 + 2;
  }
}

uint64_t sub_1001C341C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  HIDWORD(v3) = *(a1 + 4);
  LODWORD(v3) = HIDWORD(v3);
  v2 = v3 >> 30;
  if (v2 > 0x80000000)
  {
    v4 = ~v2;
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1001C346C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      HIDWORD(v3) = -a2;
      LODWORD(v3) = -a2;
      *result = (v3 >> 2) << 32;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 0;
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t *sub_1001C34B8(unint64_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result | (a2 << 62);
  }

  else
  {
    result[1] = 0;
    result[2] = 0;
    result[3] = 0;
    *result = (a2 - 2) | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_1001C3510(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 >> 62)
  {
    if (a1 >> 62 == 1)
    {
      if (a5 >> 62 == 1)
      {
        return static PushRegistrationResponse.__derived_struct_equals(_:_:)(a1, a2, a3, a4, a5, a6, a7, a8);
      }
    }

    else
    {
      v9 = a3 | a2 | a4;
      if (a1 != 0x8000000000000000 || v9)
      {
        if (a1 != 0x8000000000000001 || v9)
        {
          if (a1 != 0x8000000000000002 || v9)
          {
            if (a1 != 0x8000000000000003 || v9)
            {
              if (a5 >> 62 == 2 && a5 == 0x8000000000000004 && !(a7 | a6 | a8))
              {
                return 1;
              }
            }

            else if (a5 >> 62 == 2 && a5 == 0x8000000000000003 && !(a7 | a6 | a8))
            {
              return 1;
            }
          }

          else if (a5 >> 62 == 2 && a5 == 0x8000000000000002 && !(a7 | a6 | a8))
          {
            return 1;
          }
        }

        else if (a5 >> 62 == 2 && a5 == 0x8000000000000001 && !(a7 | a6 | a8))
        {
          return 1;
        }
      }

      else if (a5 >> 62 == 2 && a5 == 0x8000000000000000 && !(a7 | a6 | a8))
      {
        return 1;
      }
    }
  }

  else if (!(a5 >> 62))
  {
    return ((a5 ^ a1) & 0x101FFLL) == 0;
  }

  return 0;
}

uint64_t ConnectionState.isClosed.getter()
{
  v1 = type metadata accessor for ConnectionState();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001CDD1C(v0, v4, type metadata accessor for ConnectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    sub_1001CDD84(v4, type metadata accessor for ConnectionState);
    return 0;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_1001CDD84(v4, type metadata accessor for ConnectionState);
  }

  else if (EnumCaseMultiPayload != 4)
  {
    return 0;
  }

  return 1;
}

uint64_t ConnectionState.isReadyForCommands.getter()
{
  v1 = type metadata accessor for ConnectionState();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001CDD1C(v0, v4, type metadata accessor for ConnectionState);
  v5 = 0;
  v6 = 1 << swift_getEnumCaseMultiPayload();
  if ((v6 & 0xB) != 0)
  {
    goto LABEL_4;
  }

  if ((v6 & 0x30) == 0)
  {
    v5 = 1;
LABEL_4:
    sub_1001CDD84(v4, type metadata accessor for ConnectionState);
  }

  return v5;
}

uint64_t ConnectionState.mailboxSelectionPayload(old:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ConnectionState();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v31[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v31[-v9];
  sub_1001CDD1C(a1, &v31[-v9], type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    memcpy(v43, v10, sizeof(v43));
    v11 = *(v10 + 21);
    v52 = *(v10 + 20);
    v53 = v11;
    v54 = *(v10 + 176);
    v12 = *(v10 + 17);
    v48 = *(v10 + 16);
    v49 = v12;
    v13 = *(v10 + 19);
    v50 = *(v10 + 18);
    v51 = v13;
    v14 = *(v10 + 13);
    v44 = *(v10 + 12);
    v45 = v14;
    v15 = *(v10 + 15);
    v46 = *(v10 + 14);
    v47 = v15;
    if (sub_1001ACFC0(&v44) == 2)
    {
      v16 = sub_1001AD074(&v44);
      v40 = *&v43[320];
      v41 = *&v43[336];
      v42 = *&v43[352];
      v36 = *&v43[256];
      v37 = *&v43[272];
      v38 = *&v43[288];
      v39 = *&v43[304];
      v32 = *&v43[192];
      v33 = *&v43[208];
      v34 = *&v43[224];
      v35 = *&v43[240];
      v17 = sub_1001AD074(&v32);
      sub_1000CB914(v17, __dst);
      sub_1001ACFCC(v43);
      memmove(__dst, v16, 0x4BuLL);
      goto LABEL_7;
    }

    sub_1001ACFCC(v43);
  }

  else
  {
    sub_1001CDD84(v10, type metadata accessor for ConnectionState);
  }

  memset(__dst, 0, 75);
LABEL_7:
  sub_1001CDD1C(v2, v8, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1001CDD84(v8, type metadata accessor for ConnectionState);
    if (!*&__dst[0])
    {
      return 0xF000000000000007;
    }

LABEL_14:
    sub_100025F40(__dst, &qword_1005CF260, &qword_1004D2420);
    return 0x8000000000000000;
  }

  memcpy(v43, v8, sizeof(v43));
  v18 = *(v8 + 21);
  v52 = *(v8 + 20);
  v53 = v18;
  v54 = *(v8 + 176);
  v19 = *(v8 + 17);
  v48 = *(v8 + 16);
  v49 = v19;
  v20 = *(v8 + 19);
  v50 = *(v8 + 18);
  v51 = v20;
  v21 = *(v8 + 13);
  v44 = *(v8 + 12);
  v45 = v21;
  v22 = *(v8 + 15);
  v46 = *(v8 + 14);
  v47 = v22;
  if (sub_1001ACFC0(&v44) != 2)
  {
    sub_1001ACFCC(v43);
    if (!*&__dst[0])
    {
      return 0xF000000000000007;
    }

    goto LABEL_14;
  }

  v23 = sub_1001AD074(&v44);
  v40 = *&v43[320];
  v41 = *&v43[336];
  v42 = *&v43[352];
  v36 = *&v43[256];
  v37 = *&v43[272];
  v38 = *&v43[288];
  v39 = *&v43[304];
  v32 = *&v43[192];
  v33 = *&v43[208];
  v34 = *&v43[224];
  v35 = *&v43[240];
  v24 = sub_1001AD074(&v32);
  sub_1000CB914(v24, v31);
  sub_1001ACFCC(v43);
  if (*&__dst[0])
  {
    if ((DWORD2(__dst[0]) | (DWORD2(__dst[0]) << 32)) == (*(v23 + 8) | (*(v23 + 8) << 32)))
    {
      v25 = sub_1000FFC98(*&__dst[0], *v23);
      sub_100025F40(__dst, &qword_1005CF260, &qword_1004D2420);
      if (v25)
      {
        sub_1001AD020(&v43[192]);
        return 0xF000000000000007;
      }
    }

    else
    {
      sub_100025F40(__dst, &qword_1005CF260, &qword_1004D2420);
    }
  }

  v27 = swift_allocObject();
  *(v27 + 16) = *v23;
  v29 = *(v23 + 32);
  v28 = *(v23 + 48);
  v30 = *(v23 + 16);
  *(v27 + 75) = *(v23 + 59);
  *(v27 + 48) = v29;
  *(v27 + 64) = v28;
  *(v27 + 32) = v30;
  return v27 | 0x2000000000000000;
}

uint64_t sub_1001C3EF8(uint64_t a1, unint64_t a2, int a3, uint64_t a4, void (*a5)(unint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6, void (*a7)(uint64_t, unint64_t, void), uint64_t a8)
{
  v49 = a6;
  v9 = v8;
  v44[1] = a8;
  v45 = a7;
  v47 = a2;
  v48 = a5;
  v46 = a3;
  v12 = _s6LoggerVMa();
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v16 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v44 - v17;
  v19 = type metadata accessor for ConnectionState();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for UnauthenticatedStateWithTasks();
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = v44 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001CDD1C(v9, v22, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1001CDC18(v22, v26, type metadata accessor for UnauthenticatedStateWithTasks);
    v27 = v50;
    v28 = sub_10022051C(a1, v47, v46 & 1, v48, v49, a4);
    if (!v27)
    {
      v31 = v30;
      v32 = v29;
      v33 = v28;
      sub_1001CDD84(v9, type metadata accessor for ConnectionState);
      sub_1001CDD1C(v26, v9, type metadata accessor for UnauthenticatedStateWithTasks);
      swift_storeEnumTagMultiPayload();
      if (v31 != -1)
      {
        v45(v33, v32, v31 & 1);
        sub_1001CD80C(v33, v32, v31);
      }
    }

    return sub_1001CDD84(v26, type metadata accessor for UnauthenticatedStateWithTasks);
  }

  else
  {
    sub_1001CDD84(v22, type metadata accessor for ConnectionState);
    sub_1001CDD1C(a4, v18, _s6LoggerVMa);
    sub_1001CDD1C(a4, v16, _s6LoggerVMa);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v35 = sub_1004A4A54();
    v36 = sub_1004A6014();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v51 = v38;
      *v37 = 0x204100302;
      *(v37 + 8) = 256;
      v39 = v16[*(v12 + 20)];
      sub_1001CDD84(v16, _s6LoggerVMa);
      *(v37 + 10) = v39;
      *(v37 + 11) = 2082;
      v40 = *&v18[*(v12 + 20) + 4];
      sub_1001CDD84(v18, _s6LoggerVMa);
      v41 = ConnectionID.debugDescription.getter(v40);
      v43 = sub_10015BA6C(v41, v42, &v51);

      *(v37 + 13) = v43;
      _os_log_impl(&_mh_execute_header, v35, v36, "[%.*hhx-%{public}s] Received HandshakeQuery, but not in unauthenticated state.", v37, 0x15u);
      sub_1000197E0(v38);
    }

    else
    {
      sub_1001CDD84(v16, _s6LoggerVMa);

      sub_1001CDD84(v18, _s6LoggerVMa);
    }

    sub_1001CD7B8();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_1001C4358(unint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = _s6LoggerVMa();
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ConnectionState();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for UnauthenticatedStateWithTasks();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001CDC18(v3, v16, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1001CDC18(v16, v20, type metadata accessor for UnauthenticatedStateWithTasks);
    sub_100220760(a1, a2);
    sub_1001CDC18(v20, v3, type metadata accessor for UnauthenticatedStateWithTasks);
  }

  else
  {
    sub_1001CDD84(v16, type metadata accessor for ConnectionState);
    sub_1001CDD1C(a2, v12, _s6LoggerVMa);
    sub_1001CDD1C(a2, v10, _s6LoggerVMa);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v21 = sub_1004A4A54();
    v22 = sub_1004A6014();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = v31;
      *v23 = 0x204100302;
      *(v23 + 8) = 256;
      v24 = v10[*(v6 + 20)];
      sub_1001CDD84(v10, _s6LoggerVMa);
      *(v23 + 10) = v24;
      *(v23 + 11) = 2082;
      v25 = *&v12[*(v6 + 20) + 4];
      sub_1001CDD84(v12, _s6LoggerVMa);
      v26 = ConnectionID.debugDescription.getter(v25);
      v28 = sub_10015BA6C(v26, v27, &v32);

      *(v23 + 13) = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "[%.*hhx-%{public}s] Received did-start-TLS, but not in unauthenticated state.", v23, 0x15u);
      sub_1000197E0(v31);
    }

    else
    {
      sub_1001CDD84(v10, _s6LoggerVMa);

      sub_1001CDD84(v12, _s6LoggerVMa);
    }
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1001C4728(uint64_t a1, uint64_t a2)
{
  v5 = sub_10000C9C0(&qword_1005D3FB0, &qword_1004DF4A8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v23 - v7;
  v9 = type metadata accessor for ConnectionState();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001CDD1C(v2, v12, type metadata accessor for ConnectionState);
  result = swift_getEnumCaseMultiPayload();
  if (result > 2)
  {
    if (result == 3)
    {
      return sub_1001CDD84(v12, type metadata accessor for ConnectionState);
    }

    if (result == 4)
    {
      return result;
    }
  }

  else
  {
    sub_1001CDD84(v12, type metadata accessor for ConnectionState);
  }

  v14 = *(v5 + 48);
  sub_1001CDD1C(v2, v8, type metadata accessor for ConnectionState);
  v15 = sub_1004A4E34();
  v16 = *(v15 - 8);
  v17 = *(v16 + 16);
  v17(&v8[v14], a1, v15);
  v18 = (*(v16 + 88))(&v8[v14], v15);
  if (v18 == enum case for NWConnection.State.failed(_:))
  {
LABEL_6:
    sub_1001CDD84(v2, type metadata accessor for ConnectionState);
    swift_storeEnumTagMultiPayload();
    (*(v16 + 8))(&v8[v14], v15);
    return sub_1001CDD84(v8, type metadata accessor for ConnectionState);
  }

  if (v18 == enum case for NWConnection.State.ready(_:))
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1001CDD84(v2, type metadata accessor for ConnectionState);
      v19 = static MonotonicTime.now()();
      v20 = type metadata accessor for UnauthenticatedStateWithTasks();
      *&v2[*(v20 + 28)] = _swiftEmptyArrayStorage;
      *v2 = a2;
      *(v2 + 1) = v19;
      v21 = *(v20 + 24);
      type metadata accessor for UnauthenticatedState();
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();

      v22 = v8;
      goto LABEL_15;
    }
  }

  else if (v18 == enum case for NWConnection.State.cancelled(_:))
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload())
  {
    return sub_100025F40(v8, &qword_1005D3FB0, &qword_1004DF4A8);
  }

  sub_1001CDD84(v2, type metadata accessor for ConnectionState);
  v17(v2, a1, v15);
  swift_storeEnumTagMultiPayload();
  v22 = v8;
LABEL_15:
  sub_1001CDD84(v22, type metadata accessor for ConnectionState);
  return (*(v16 + 8))(&v8[v14], v15);
}

uint64_t sub_1001C4B18(unint64_t a1, void *a2, uint64_t a3, void *a4, void (*a5)(void), uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v88 = a3;
  v89 = a7;
  v85 = a5;
  v86 = a6;
  v87 = a2;
  v11 = type metadata accessor for UntaggedResponse(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v91 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UnauthenticatedStateWithTasks();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v92 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ConnectionState();
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17);
  v84 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v83 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v83 - v25;
  __chkstk_darwin(v24);
  v28 = &v83 - v27;
  v90 = v8;
  sub_1001CDD1C(v8, &v83 - v27, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1001CDD84(v28, type metadata accessor for ConnectionState);
  }

  else
  {
    v29 = v90;
    sub_1001CDD84(v90, type metadata accessor for ConnectionState);
    sub_1001CDD84(v28, type metadata accessor for ConnectionState);
    v30 = static MonotonicTime.now()();
    *(v29 + *(v14 + 28)) = _swiftEmptyArrayStorage;
    *v29 = v87;
    v29[1] = v30;
    v31 = *(v14 + 24);
    type metadata accessor for UnauthenticatedState();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
  }

  sub_1001CDD1C(v90, v26, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1001CDD84(v26, type metadata accessor for ConnectionState);
    sub_1001CDD1C(v90, v23, type metadata accessor for ConnectionState);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      memcpy(v139, v23, 0x162uLL);
      v47 = *(v23 + 19);
      v48 = *(v23 + 21);
      v134 = *(v23 + 20);
      v135 = v48;
      v49 = *(v23 + 15);
      v50 = *(v23 + 17);
      v130 = *(v23 + 16);
      v131 = v50;
      v52 = *(v23 + 17);
      v51 = *(v23 + 18);
      v53 = v51;
      v133 = *(v23 + 19);
      v132 = v51;
      v54 = *(v23 + 13);
      v126 = *(v23 + 12);
      v127 = v54;
      v55 = *(v23 + 14);
      v57 = *(v23 + 12);
      v56 = *(v23 + 13);
      v58 = v55;
      v129 = *(v23 + 15);
      v128 = v55;
      v59 = *(v23 + 21);
      v137[8] = v134;
      v137[9] = v59;
      v137[4] = v130;
      v137[5] = v52;
      v137[7] = v47;
      v137[6] = v53;
      v137[0] = v57;
      v137[1] = v56;
      v136 = *(v23 + 176);
      v138 = *(v23 + 176);
      v137[3] = v49;
      v137[2] = v58;
      if (sub_1001ACFC0(v137) == 1)
      {
        v60 = sub_1001AD074(v137);
        v97[8] = v134;
        v97[9] = v135;
        v98 = v136;
        v97[4] = v130;
        v97[5] = v131;
        v97[7] = v133;
        v97[6] = v132;
        v97[0] = v126;
        v97[1] = v127;
        v97[2] = v128;
        v97[3] = v129;
        v61 = sub_1001AD074(v97);
        sub_1001AD084(v61, v114);
        v62 = v90;
        sub_1001CDD84(v90, type metadata accessor for ConnectionState);
        v63 = *(v60 + 144);
        v123 = *(v60 + 128);
        v124 = v63;
        v125 = *(v60 + 160);
        v64 = *(v60 + 80);
        v119 = *(v60 + 64);
        v120 = v64;
        v65 = *(v60 + 96);
        v122 = *(v60 + 112);
        v121 = v65;
        v66 = *(v60 + 16);
        v115 = *v60;
        v116 = v66;
        v67 = *(v60 + 32);
        v118 = *(v60 + 48);
        v117 = v67;
        sub_1001E8E94(a1, v89);
        v99[8] = v123;
        v99[9] = v124;
        v99[4] = v119;
        v99[5] = v120;
        v99[7] = v122;
        v99[6] = v121;
        v99[0] = v115;
        v99[1] = v116;
        v99[3] = v118;
        v99[2] = v117;
        v109 = v123;
        v110 = v124;
        v105 = v119;
        v106 = v120;
        v108 = v122;
        v107 = v121;
        v101 = v115;
        v102 = v116;
        v100 = v125;
        v111 = v125;
        v104 = v118;
        v103 = v117;
        sub_1001CC288(&v101);
        v112[8] = v139[20];
        v112[9] = v139[21];
        v113 = v139[22];
        v112[4] = v139[16];
        v112[5] = v139[17];
        v112[7] = v139[19];
        v112[6] = v139[18];
        v112[0] = v139[12];
        v112[1] = v139[13];
        v112[3] = v139[15];
        v112[2] = v139[14];
        sub_1001AD084(v99, v114);
        sub_1001AD020(v112);
        v139[20] = v109;
        v139[21] = v110;
        LOWORD(v139[22]) = v111;
        v139[16] = v105;
        v139[17] = v106;
        v139[18] = v107;
        v139[19] = v108;
        v139[12] = v101;
        v139[13] = v102;
        v139[14] = v103;
        v139[15] = v104;
        memcpy(v114, v139, 0x162uLL);
        memcpy(v62, v139, 0x162uLL);
        swift_storeEnumTagMultiPayload();
        sub_1001CDD1C(v62, v84, type metadata accessor for ConnectionState);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          sub_1001CD824(v114, v93);
          v68 = v90;
          sub_1001CDD84(v90, type metadata accessor for ConnectionState);
          memcpy(v96, v84, sizeof(v96));
          sub_1001C97B4(&v96[192], v89);
          v93[8] = v123;
          v93[9] = v124;
          LOWORD(v93[10]) = v125;
          v93[4] = v119;
          v93[5] = v120;
          v93[6] = v121;
          v93[7] = v122;
          v93[0] = v115;
          v93[1] = v116;
          v93[2] = v117;
          v93[3] = v118;
          sub_1001CDC80(v93);
          memcpy(v68, v96, 0x162uLL);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          v94[8] = v123;
          v94[9] = v124;
          v95 = v125;
          v94[4] = v119;
          v94[5] = v120;
          v94[6] = v121;
          v94[7] = v122;
          v94[0] = v115;
          v94[1] = v116;
          v94[2] = v117;
          v94[3] = v118;
          sub_1001CD824(v114, v93);
          sub_1001CDC80(v94);
          sub_1001CDD84(v84, type metadata accessor for ConnectionState);
        }

        memcpy(v93, v139, 0x162uLL);
        return sub_1001ACFCC(v93);
      }

      memcpy(v114, v139, 0x162uLL);
      sub_1001ACFCC(v114);
    }

    else
    {
      sub_1001CDD84(v23, type metadata accessor for ConnectionState);
    }

    return sub_1001C78D4(a1);
  }

  sub_1001CDD84(v90, type metadata accessor for ConnectionState);
  v32 = v92;
  v33 = sub_1001CDC18(v26, v92, type metadata accessor for UnauthenticatedStateWithTasks);
  v87 = &v83;
  __chkstk_darwin(v33);
  v34 = v89;
  *(&v83 - 2) = v88;
  *(&v83 - 1) = a4;
  v35 = sub_10021FE80(a1, v34, v32 + *(v14 + 24), sub_1001CDCD4, (&v83 - 4));
  if (v35 <= 0xFFFFFFFEFFFFFFFFLL)
  {
    v36 = v35;
    v85();
    sub_1001CDDE4(v36);
  }

  if (a1 >> 60 == 4)
  {
    v69 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v70 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v71 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v72 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
    v73 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
    sub_10001123C(v70, v71, v72, *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30));
    v74 = sub_100221D78(v70, v71, v72, v73, v69, v89);
    v75 = v74[2];
    if (v75)
    {
      LODWORD(v84) = v73;
      v88 = v17;
      v89 = v72;
      v91 = v71;
      v83 = v74;
      v76 = v74 + 7;
      v77 = v85;
      do
      {
        v78 = *(v76 - 3);
        v79 = *(v76 - 2);
        v80 = *(v76 - 1);
        v81 = *v76;
        sub_1001AD7AC(v78);
        (v77)(v78, v79, v80, v81);
        sub_1001AD7F8(v78);
        v76 += 4;
        --v75;
      }

      while (v75);
      sub_100173584(v70, v91, v89, v84);
    }

    else
    {
      sub_100173584(v70, v71, v72, v73);
    }
  }

  else if (a1 >> 60 == 3)
  {
    v37 = v89;
    v88 = v17;
    v38 = swift_projectBox();
    sub_1001CDD1C(v38, v91, type metadata accessor for UntaggedResponse);
    v39 = *(v14 + 28);
    v40 = *(v92 + v39);
    v41 = v40[2];
    if (v41)
    {
      v42 = *(v92 + v39);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_32;
      }

      while (1)
      {
        v43 = 0;
        v44 = (v40 + 5);
        while (v43 < v40[2])
        {
          ++v43;
          v45 = *(v44 + 24);
          v46 = *(v44 + 32);
          sub_100025928(v44, v45);
          (*(v46 + 24))(v91, v37, v45, v46);
          *(v92 + v39) = v40;
          v44 += 48;
          if (v41 == v43)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_32:
        v40 = sub_1001EDF60(v40);
      }
    }

LABEL_14:
    sub_1001CDD84(v91, type metadata accessor for UntaggedResponse);
  }

  sub_1001CDC18(v92, v90, type metadata accessor for UnauthenticatedStateWithTasks);
  return swift_storeEnumTagMultiPayload();
}

BOOL ConnectionState.isClosedOrCancelled.getter()
{
  v1 = type metadata accessor for ConnectionState();
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  sub_1001CDD1C(v0, &v11 - v6, type metadata accessor for ConnectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    sub_1001CDD84(v7, type metadata accessor for ConnectionState);
    goto LABEL_5;
  }

  v9 = 1;
  if (EnumCaseMultiPayload == 3)
  {
LABEL_6:
    sub_1001CDD84(v7, type metadata accessor for ConnectionState);
    return v9;
  }

  if (EnumCaseMultiPayload != 4)
  {
LABEL_5:
    sub_1001CDD1C(v0, v5, type metadata accessor for ConnectionState);
    v9 = swift_getEnumCaseMultiPayload() == 5;
    v7 = v5;
    goto LABEL_6;
  }

  return v9;
}

uint64_t ConnectionState.hasMailboxSelected.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ConnectionState();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1001CDD1C(v1, v5, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    memcpy(v13, v5, 0x162uLL);
    v6 = *(v5 + 21);
    v14[8] = *(v5 + 20);
    v14[9] = v6;
    v15 = *(v5 + 176);
    v7 = *(v5 + 17);
    v14[4] = *(v5 + 16);
    v14[5] = v7;
    v8 = *(v5 + 19);
    v14[6] = *(v5 + 18);
    v14[7] = v8;
    v9 = *(v5 + 13);
    v14[0] = *(v5 + 12);
    v14[1] = v9;
    v10 = *(v5 + 15);
    v14[2] = *(v5 + 14);
    v14[3] = v10;
    if (sub_1001ACFC0(v14) == 2)
    {
      sub_1001AD074(v14);
      sub_1001ACFCC(v13);
      return 1;
    }

    sub_1001ACFCC(v13);
  }

  else
  {
    sub_1001CDD84(v5, type metadata accessor for ConnectionState);
  }

  return 0;
}

uint64_t static AuthenticatedState.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1001B00A0(*a1, *a2) & 1) == 0)
  {
    goto LABEL_5;
  }

  v4 = *(a1 + 120);
  v5 = *(a1 + 152);
  v31[8] = *(a1 + 136);
  v31[9] = v5;
  v31[10] = *(a1 + 168);
  v6 = *(a1 + 56);
  v7 = *(a1 + 88);
  v31[4] = *(a1 + 72);
  v31[5] = v7;
  v31[6] = *(a1 + 104);
  v31[7] = v4;
  v8 = *(a1 + 24);
  v31[0] = *(a1 + 8);
  v31[1] = v8;
  v31[2] = *(a1 + 40);
  v31[3] = v6;
  v9 = *(a2 + 120);
  v10 = *(a2 + 152);
  v30[8] = *(a2 + 136);
  v30[9] = v10;
  v30[10] = *(a2 + 168);
  v11 = *(a2 + 56);
  v12 = *(a2 + 88);
  v30[4] = *(a2 + 72);
  v30[5] = v12;
  v30[6] = *(a2 + 104);
  v30[7] = v9;
  v13 = *(a2 + 24);
  v30[0] = *(a2 + 8);
  v30[1] = v13;
  v30[2] = *(a2 + 40);
  v30[3] = v11;
  if ((static ServerID.__derived_struct_equals(_:_:)(v31, v30) & 1) == 0)
  {
    goto LABEL_5;
  }

  if (sub_1001B02D8(*(a1 + 184), *(a2 + 184)))
  {
    v14 = *(a1 + 336);
    v28[8] = *(a1 + 320);
    v28[9] = v14;
    v29 = *(a1 + 352);
    v15 = *(a1 + 272);
    v28[4] = *(a1 + 256);
    v28[5] = v15;
    v16 = *(a1 + 304);
    v28[6] = *(a1 + 288);
    v28[7] = v16;
    v17 = *(a1 + 208);
    v28[0] = *(a1 + 192);
    v28[1] = v17;
    v18 = *(a1 + 240);
    v28[2] = *(a1 + 224);
    v28[3] = v18;
    v19 = *(a2 + 336);
    v26[8] = *(a2 + 320);
    v26[9] = v19;
    v27 = *(a2 + 352);
    v20 = *(a2 + 272);
    v26[4] = *(a2 + 256);
    v26[5] = v20;
    v21 = *(a2 + 304);
    v26[6] = *(a2 + 288);
    v26[7] = v21;
    v22 = *(a2 + 208);
    v26[0] = *(a2 + 192);
    v26[1] = v22;
    v23 = *(a2 + 240);
    v26[2] = *(a2 + 224);
    v26[3] = v23;
    v24 = sub_1001CA1E0(v28, v26);
  }

  else
  {
LABEL_5:
    v24 = 0;
  }

  return v24 & 1;
}

uint64_t ConnectionState.kind.getter()
{
  v1 = type metadata accessor for ConnectionState();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001CDD1C(v0, v4, type metadata accessor for ConnectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1001CDD84(v4, type metadata accessor for ConnectionState);
      return 6;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1001CDD84(v4, type metadata accessor for ConnectionState);
      return 2;
    }

    else
    {
      sub_1001CDD84(v4, type metadata accessor for ConnectionState);
      return 3;
    }
  }

  else
  {
    v7 = sub_1004A4E34();
    v8 = *(v7 - 8);
    v9 = (*(v8 + 88))(v4, v7) == enum case for NWConnection.State.waiting(_:);
    (*(v8 + 8))(v4, v7);
    return v9;
  }
}

uint64_t ConnectionState.nonSensitiveShortLogDescription.getter()
{
  v1 = type metadata accessor for UnauthenticatedState();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v32 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UnauthenticatedStateWithTasks();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v33 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1004A4E34();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v31 - v13;
  v15 = type metadata accessor for ConnectionState();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001CDD1C(v0, v18, type metadata accessor for ConnectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1001CDD84(v18, type metadata accessor for ConnectionState);
      return 0xD000000000000014;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return 0x64656C696166;
    }

    else
    {
      return 0x656C6C65636E6163;
    }
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v20 = v33;
      sub_1001CDC18(v18, v33, type metadata accessor for UnauthenticatedStateWithTasks);
      v21 = v32;
      sub_1001CDD1C(v20 + *(v4 + 24), v32, type metadata accessor for UnauthenticatedState);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
        case 5u:
          sub_1001CDD84(v21, type metadata accessor for UnauthenticatedState);
          sub_1001CDD84(v20, type metadata accessor for UnauthenticatedStateWithTasks);
          result = 0xD000000000000026;
          break;
        case 2u:
          sub_1001CDD84(v20, type metadata accessor for UnauthenticatedStateWithTasks);
          sub_1001CDD84(v21, type metadata accessor for UnauthenticatedState);
          result = 0xD00000000000001FLL;
          break;
        case 3u:
          sub_1001CDD84(v21, type metadata accessor for UnauthenticatedState);
          sub_1001CDD84(v20, type metadata accessor for UnauthenticatedStateWithTasks);
          result = 0xD000000000000022;
          break;
        case 4u:
          sub_1001CDD84(v21, type metadata accessor for UnauthenticatedState);
          sub_1001CDD84(v20, type metadata accessor for UnauthenticatedStateWithTasks);
          result = 0xD000000000000020;
          break;
        case 6u:
          sub_1001CDD84(v21, type metadata accessor for UnauthenticatedState);
          sub_1001CDD84(v20, type metadata accessor for UnauthenticatedStateWithTasks);
          result = 0xD000000000000024;
          break;
        case 7u:
          sub_1001CDD84(v21, type metadata accessor for UnauthenticatedState);
          sub_1001CDD84(v20, type metadata accessor for UnauthenticatedStateWithTasks);
          result = 0xD00000000000002FLL;
          break;
        case 8u:
          sub_1001CDD84(v21, type metadata accessor for UnauthenticatedState);
          sub_1001CDD84(v20, type metadata accessor for UnauthenticatedStateWithTasks);
          result = 0xD000000000000023;
          break;
        case 9u:
          sub_1001CDD84(v21, type metadata accessor for UnauthenticatedState);
          sub_1001CDD84(v20, type metadata accessor for UnauthenticatedStateWithTasks);
          result = 0xD000000000000015;
          break;
        case 0xAu:
          sub_1001CDD84(v21, type metadata accessor for UnauthenticatedState);
          sub_1001CDD84(v20, type metadata accessor for UnauthenticatedStateWithTasks);
          result = 0xD000000000000017;
          break;
        case 0xBu:
          sub_1001CDD84(v20, type metadata accessor for UnauthenticatedStateWithTasks);
          result = 0xD00000000000001BLL;
          break;
        case 0xCu:
          goto LABEL_27;
        case 0xDu:
          sub_1001CDD84(v20, type metadata accessor for UnauthenticatedStateWithTasks);
          result = 0xD00000000000001CLL;
          break;
        case 0xEu:
          sub_1001CDD84(v20, type metadata accessor for UnauthenticatedStateWithTasks);
          result = 0xD00000000000001ELL;
          break;
        case 0xFu:
          sub_1001CDD84(v20, type metadata accessor for UnauthenticatedStateWithTasks);
          result = 0xD00000000000002CLL;
          break;
        default:
          sub_1001CDD84(v21, type metadata accessor for UnauthenticatedState);
LABEL_27:
          sub_1001CDD84(v20, type metadata accessor for UnauthenticatedStateWithTasks);
          result = 0xD00000000000002BLL;
          break;
      }

      return result;
    }

    memcpy(v34, v18, 0x162uLL);
    v24 = *(v18 + 21);
    v35[8] = *(v18 + 20);
    v35[9] = v24;
    v36 = *(v18 + 176);
    v25 = *(v18 + 17);
    v35[4] = *(v18 + 16);
    v35[5] = v25;
    v26 = *(v18 + 19);
    v35[6] = *(v18 + 18);
    v35[7] = v26;
    v27 = *(v18 + 13);
    v35[0] = *(v18 + 12);
    v35[1] = v27;
    v28 = *(v18 + 15);
    v35[2] = *(v18 + 14);
    v35[3] = v28;
    v29 = sub_1001ACFC0(v35);
    sub_1001AD074(v35);
    sub_1001ACFCC(v34);
    if (v29)
    {
      if (v29 == 1)
      {
        return 0xD000000000000019;
      }

      else
      {
        return 0xD000000000000018;
      }
    }

    return 0xD000000000000013;
  }

  v23 = (*(v8 + 88))(v18, v7);
  if (v23 == enum case for NWConnection.State.waiting(_:))
  {
    (*(v8 + 8))(v18, v7);
    return 0xD000000000000013;
  }

  if (v23 == enum case for NWConnection.State.failed(_:))
  {
    (*(v8 + 8))(v18, v7);
    return 0xD000000000000012;
  }

  if (v23 == enum case for NWConnection.State.setup(_:))
  {
    return 0xD000000000000011;
  }

  if (v23 == enum case for NWConnection.State.preparing(_:))
  {
    return 0xD000000000000015;
  }

  if (v23 == enum case for NWConnection.State.ready(_:))
  {
    return 0xD000000000000011;
  }

  if (v23 == enum case for NWConnection.State.cancelled(_:))
  {
    return 0xD000000000000015;
  }

  (*(v8 + 32))(v14, v18, v7);
  v34[0] = 0x697463656E6E6F63;
  v34[1] = 0xEB0000000028676ELL;
  (*(v8 + 16))(v11, v14, v7);
  v37._countAndFlagsBits = sub_1004A5804();
  sub_1004A5994(v37);

  v38._countAndFlagsBits = 41;
  v38._object = 0xE100000000000000;
  sub_1004A5994(v38);
  v30 = v34[0];
  (*(v8 + 8))(v14, v7);
  return v30;
}

uint64_t sub_1001C6710(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 144);
  v13[8] = *(a1 + 128);
  v13[9] = v2;
  v14 = *(a1 + 160);
  v3 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v3;
  v4 = *(a1 + 112);
  v13[6] = *(a1 + 96);
  v13[7] = v4;
  v5 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v5;
  v6 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v6;
  v7 = *(a2 + 144);
  v15[8] = *(a2 + 128);
  v15[9] = v7;
  v16 = *(a2 + 160);
  v8 = *(a2 + 80);
  v15[4] = *(a2 + 64);
  v15[5] = v8;
  v9 = *(a2 + 112);
  v15[6] = *(a2 + 96);
  v15[7] = v9;
  v10 = *(a2 + 16);
  v15[0] = *a2;
  v15[1] = v10;
  v11 = *(a2 + 48);
  v15[2] = *(a2 + 32);
  v15[3] = v11;
  return sub_1001CA1E0(v13, v15) & 1;
}

uint64_t sub_1001C67A4(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 120);
  v5 = *(a1 + 152);
  v33[8] = *(a1 + 136);
  v33[9] = v5;
  v33[10] = *(a1 + 168);
  v6 = *(a1 + 56);
  v7 = *(a1 + 88);
  v33[4] = *(a1 + 72);
  v33[5] = v7;
  v33[6] = *(a1 + 104);
  v33[7] = v4;
  v8 = *(a1 + 24);
  v33[0] = *(a1 + 8);
  v33[1] = v8;
  v33[2] = *(a1 + 40);
  v33[3] = v6;
  v9 = *(a1 + 184);
  v10 = *(a1 + 336);
  v29[8] = *(a1 + 320);
  v29[9] = v10;
  v30 = *(a1 + 352);
  v11 = *(a1 + 272);
  v29[4] = *(a1 + 256);
  v29[5] = v11;
  v12 = *(a1 + 304);
  v29[6] = *(a1 + 288);
  v29[7] = v12;
  v13 = *(a1 + 208);
  v29[0] = *(a1 + 192);
  v29[1] = v13;
  v14 = *(a1 + 240);
  v29[2] = *(a1 + 224);
  v29[3] = v14;
  v15 = *a2;
  v16 = *(a2 + 120);
  v17 = *(a2 + 152);
  v34[8] = *(a2 + 136);
  v34[9] = v17;
  v34[10] = *(a2 + 168);
  v18 = *(a2 + 56);
  v19 = *(a2 + 88);
  v34[4] = *(a2 + 72);
  v34[5] = v19;
  v34[6] = *(a2 + 104);
  v34[7] = v16;
  v20 = *(a2 + 24);
  v34[0] = *(a2 + 8);
  v34[1] = v20;
  v34[2] = *(a2 + 40);
  v34[3] = v18;
  v21 = *(a2 + 184);
  v22 = *(a2 + 336);
  v31[8] = *(a2 + 320);
  v31[9] = v22;
  v32 = *(a2 + 352);
  v23 = *(a2 + 272);
  v31[4] = *(a2 + 256);
  v31[5] = v23;
  v24 = *(a2 + 304);
  v31[6] = *(a2 + 288);
  v31[7] = v24;
  v25 = *(a2 + 208);
  v31[0] = *(a2 + 192);
  v31[1] = v25;
  v26 = *(a2 + 240);
  v31[2] = *(a2 + 224);
  v31[3] = v26;
  if (sub_1001B00A0(v3, v15) & 1) != 0 && (static ServerID.__derived_struct_equals(_:_:)(v33, v34) & 1) != 0 && (sub_1001B02D8(v9, v21))
  {
    v27 = sub_1001CA1E0(v29, v31);
  }

  else
  {
    v27 = 0;
  }

  return v27 & 1;
}

unint64_t MailboxSelectionFailure.response.getter()
{
  v1 = v0[2];
  sub_10010E780(v1, v0[3], v0[4]);
  return v1;
}

unint64_t MailboxSelectionFailure.response.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_10010E7C0(*(v3 + 16), *(v3 + 24), *(v3 + 32));
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return result;
}

uint64_t sub_1001C69A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s15IMAP2Connection23MailboxSelectionFailureV23__derived_struct_equalsySbAC_ACtFZ_0(v5, v7) & 1;
}

uint64_t AuthenticatedState.mailboxSelection.getter()
{
  v1 = *(v0 + 336);
  v12[8] = *(v0 + 320);
  v12[9] = v1;
  v13 = *(v0 + 352);
  v2 = *(v0 + 272);
  v12[4] = *(v0 + 256);
  v12[5] = v2;
  v3 = *(v0 + 304);
  v12[6] = *(v0 + 288);
  v12[7] = v3;
  v4 = *(v0 + 208);
  v12[0] = *(v0 + 192);
  v12[1] = v4;
  v5 = *(v0 + 240);
  v12[2] = *(v0 + 224);
  v12[3] = v5;
  v6 = sub_1001ACFC0(v12);
  v7 = sub_1001AD074(v12);
  if (!v6)
  {
    return 0;
  }

  v8 = v7;
  v9 = *v7;
  v10 = *(v8 + 2);
}

BOOL ConnectionState.isConnectingOrAuthenticating.getter()
{
  v1 = type metadata accessor for ConnectionState();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001CDD1C(v0, v4, type metadata accessor for ConnectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v6 = EnumCaseMultiPayload < 2;
LABEL_6:
    sub_1001CDD84(v4, type metadata accessor for ConnectionState);
    return v6;
  }

  if ((EnumCaseMultiPayload - 4) >= 2)
  {
    v6 = 0;
    goto LABEL_6;
  }

  return 0;
}

uint64_t ConnectionState.isActivelyConnectingOrAuthenticating.getter()
{
  v1 = type metadata accessor for ConnectionState();
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v13 - v6;
  sub_1001CDD1C(v0, &v13 - v6, type metadata accessor for ConnectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if ((EnumCaseMultiPayload - 4) < 2)
    {
      return 0;
    }

    goto LABEL_7;
  }

  if (EnumCaseMultiPayload >= 2)
  {
LABEL_7:
    sub_1001CDD84(v7, type metadata accessor for ConnectionState);
    return 0;
  }

  sub_1001CDD84(v7, type metadata accessor for ConnectionState);
  sub_1001CDD1C(v0, v5, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1001CDD84(v5, type metadata accessor for ConnectionState);
    return 1;
  }

  else
  {
    v10 = sub_1004A4E34();
    v11 = *(v10 - 8);
    v12 = (*(v11 + 88))(v5, v10) != enum case for NWConnection.State.waiting(_:);
    (*(v11 + 8))(v5, v10);
    return v12;
  }
}

uint64_t ConnectionState.selectedMailbox.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ConnectionState();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1001CDD1C(v2, v7, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    result = sub_1001CDD84(v7, type metadata accessor for ConnectionState);
LABEL_6:
    v20 = 0;
    v21 = 0;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
    goto LABEL_7;
  }

  memcpy(v25, v7, sizeof(v25));
  v8 = *(v7 + 21);
  v26[8] = *(v7 + 20);
  v26[9] = v8;
  v27 = *(v7 + 176);
  v9 = *(v7 + 17);
  v26[4] = *(v7 + 16);
  v26[5] = v9;
  v10 = *(v7 + 19);
  v26[6] = *(v7 + 18);
  v26[7] = v10;
  v11 = *(v7 + 13);
  v26[0] = *(v7 + 12);
  v26[1] = v11;
  v12 = *(v7 + 15);
  v26[2] = *(v7 + 14);
  v26[3] = v12;
  if (sub_1001ACFC0(v26) != 2)
  {
    result = sub_1001ACFCC(v25);
    goto LABEL_6;
  }

  v13 = sub_1001AD074(v26);
  v23[8] = *&v25[320];
  v23[9] = *&v25[336];
  v24 = *&v25[352];
  v23[4] = *&v25[256];
  v23[5] = *&v25[272];
  v23[6] = *&v25[288];
  v23[7] = *&v25[304];
  v23[0] = *&v25[192];
  v23[1] = *&v25[208];
  v23[2] = *&v25[224];
  v23[3] = *&v25[240];
  v14 = sub_1001AD074(v23);
  sub_1000CB914(v14, v22);
  result = sub_1001ACFCC(v25);
  v16 = *v13;
  v17 = *(v13 + 16);
  v18 = *(v13 + 32);
  v19 = *(v13 + 48);
  v20 = *(v13 + 64);
  v21 = *(v13 + 72) | (*(v13 + 74) << 16);
LABEL_7:
  *a1 = v16;
  *(a1 + 16) = v17;
  *(a1 + 32) = v18;
  *(a1 + 48) = v19;
  *(a1 + 64) = v20;
  *(a1 + 72) = v21;
  *(a1 + 74) = BYTE2(v21);
  return result;
}

uint64_t ConnectionState.anyMailboxSelectionIsInProgress.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ConnectionState();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1001CDD1C(v1, v5, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    memcpy(v13, v5, 0x162uLL);
    v6 = *(v5 + 21);
    v14[8] = *(v5 + 20);
    v14[9] = v6;
    v15 = *(v5 + 176);
    v7 = *(v5 + 17);
    v14[4] = *(v5 + 16);
    v14[5] = v7;
    v8 = *(v5 + 19);
    v14[6] = *(v5 + 18);
    v14[7] = v8;
    v9 = *(v5 + 13);
    v14[0] = *(v5 + 12);
    v14[1] = v9;
    v10 = *(v5 + 15);
    v14[2] = *(v5 + 14);
    v14[3] = v10;
    if (sub_1001ACFC0(v14) == 1)
    {
      sub_1001AD074(v14);
      sub_1001ACFCC(v13);
      return 1;
    }

    sub_1001ACFCC(v13);
  }

  else
  {
    sub_1001CDD84(v5, type metadata accessor for ConnectionState);
  }

  return 0;
}

uint64_t ConnectionState.isReadyForCommandsWithoutMailboxSelection.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ConnectionState();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1001CDD1C(v1, v5, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    memcpy(v15, v5, 0x162uLL);
    v6 = *(v5 + 21);
    v16[8] = *(v5 + 20);
    v16[9] = v6;
    v17 = *(v5 + 176);
    v7 = *(v5 + 17);
    v16[4] = *(v5 + 16);
    v16[5] = v7;
    v8 = *(v5 + 19);
    v16[6] = *(v5 + 18);
    v16[7] = v8;
    v9 = *(v5 + 13);
    v16[0] = *(v5 + 12);
    v16[1] = v9;
    v10 = *(v5 + 15);
    v16[2] = *(v5 + 14);
    v16[3] = v10;
    v11 = sub_1001ACFC0(v16);
    sub_1001AD074(v16);
    sub_1001ACFCC(v15);
    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = -1;
    }
  }

  else
  {
    sub_1001CDD84(v5, type metadata accessor for ConnectionState);
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_1001C78D4(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ConnectionState();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001CDD1C(v2, v7, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    return sub_1001CDD84(v7, type metadata accessor for ConnectionState);
  }

  memcpy(v54, v7, sizeof(v54));
  v8 = *(v7 + 19);
  v9 = *(v7 + 21);
  v49 = *(v7 + 20);
  v50 = v9;
  v10 = *(v7 + 15);
  v11 = *(v7 + 17);
  v45 = *(v7 + 16);
  v46 = v11;
  v12 = *(v7 + 17);
  v13 = *(v7 + 19);
  v47 = *(v7 + 18);
  v48 = v13;
  v14 = *(v7 + 13);
  v41 = *(v7 + 12);
  v42 = v14;
  v15 = *(v7 + 15);
  v17 = *(v7 + 12);
  v16 = *(v7 + 13);
  v43 = *(v7 + 14);
  v44 = v15;
  v18 = *(v7 + 21);
  v52[8] = v49;
  v52[9] = v18;
  v52[4] = v45;
  v52[5] = v12;
  v52[6] = v47;
  v52[7] = v8;
  v52[0] = v17;
  v52[1] = v16;
  v51 = *(v7 + 176);
  v53 = *(v7 + 176);
  v52[2] = v43;
  v52[3] = v10;
  if (sub_1001ACFC0(v52) == 2)
  {
    v19 = sub_1001AD074(v52);
    v26[8] = v49;
    v26[9] = v50;
    v27 = v51;
    v26[4] = v45;
    v26[5] = v46;
    v26[6] = v47;
    v26[7] = v48;
    v26[0] = v41;
    v26[1] = v42;
    v26[2] = v43;
    v26[3] = v44;
    v20 = sub_1001AD074(v26);
    sub_1000CB914(v20, v36);
    sub_1001CDD84(v2, type metadata accessor for ConnectionState);
    v21 = *v19;
    v38 = v19[1];
    v22 = v19[3];
    v39 = v19[2];
    v40[0] = v22;
    *(v40 + 11) = *(v19 + 59);
    v37 = v21;
    sub_100209A64(a1);
    v30 = v39;
    v31[0] = v40[0];
    *(v31 + 11) = *(v40 + 11);
    v28 = v37;
    v29 = v38;
    sub_1001CD750(&v28);
    v33[8] = *&v54[320];
    v33[9] = *&v54[336];
    v34 = *&v54[352];
    v33[4] = *&v54[256];
    v33[5] = *&v54[272];
    v33[6] = *&v54[288];
    v33[7] = *&v54[304];
    v33[0] = *&v54[192];
    v33[1] = *&v54[208];
    v33[2] = *&v54[224];
    v33[3] = *&v54[240];
    sub_1001AD020(v33);
    *&v54[320] = v31[5];
    *&v54[336] = v31[6];
    *&v54[352] = v32;
    *&v54[256] = v31[1];
    *&v54[272] = v31[2];
    *&v54[304] = v31[4];
    *&v54[288] = v31[3];
    *&v54[192] = v28;
    *&v54[208] = v29;
    *&v54[240] = v31[0];
    *&v54[224] = v30;
    memcpy(v35, v54, 0x162uLL);
    memcpy(v2, v54, 0x162uLL);
    swift_storeEnumTagMultiPayload();
    memcpy(v36, v54, 0x162uLL);
    sub_1001CD824(v35, &v25);
  }

  else
  {
    memcpy(v36, v54, 0x162uLL);
  }

  return sub_1001ACFCC(v36);
}

double sub_1001C7C44@<D0>(void (*a1)(_OWORD *__return_ptr)@<X0>, _OWORD *a2@<X8>)
{
  a1(v5);
  v3 = v5[1];
  *a2 = v5[0];
  a2[1] = v3;
  result = *&v6;
  a2[2] = v6;
  return result;
}

int64_t sub_1001C7C8C(void (*a1)(unint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v160 = a5;
  v157 = a3;
  v158 = a4;
  v150 = a2;
  v151 = a1;
  v7 = _s6LoggerVMa();
  v8 = *(v7 - 8);
  v155 = v7;
  v156 = v8;
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = &v145 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v145 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v145 - v16;
  v18 = __chkstk_darwin(v15);
  v147 = &v145 - v19;
  v20 = __chkstk_darwin(v18);
  v148 = &v145 - v21;
  v22 = __chkstk_darwin(v20);
  v152 = &v145 - v23;
  v24 = __chkstk_darwin(v22);
  v153 = &v145 - v25;
  v26 = __chkstk_darwin(v24);
  v149 = &v145 - v27;
  __chkstk_darwin(v26);
  v154 = &v145 - v28;
  v29 = type metadata accessor for ConnectionState();
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29);
  v32 = &v145 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for UnauthenticatedStateWithTasks();
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33);
  v36 = &v145 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001CDD1C(v6, v32, type metadata accessor for ConnectionState);
  v159 = v29;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_1001CDD84(v32, type metadata accessor for ConnectionState);
  }

  v145 = v17;
  v37 = v6;
  v38 = &v235;
  v146 = v37;
  sub_1001CDD84(v37, type metadata accessor for ConnectionState);
  sub_1001CDC18(v32, v36, type metadata accessor for UnauthenticatedStateWithTasks);
  v39 = &v36[*(v33 + 24)];
  sub_100191724(&v218);
  v215 = v226;
  v216 = v227;
  v217[0] = v228[0];
  *(v217 + 9) = *(v228 + 9);
  v211 = v222;
  v212 = v223;
  v213 = v224;
  v214 = v225;
  v207 = v218;
  v208 = v219;
  v209 = v220;
  v210 = v221;
  v243 = v226;
  v244 = v227;
  v245[0] = v228[0];
  *(v245 + 9) = *(v228 + 9);
  v239 = v222;
  v240 = v223;
  v241 = v224;
  v242 = v225;
  v235 = v218;
  v236 = v219;
  v237 = v220;
  v238 = v221;
  v40 = v36;
  if (sub_1001CD904(&v235) != 1)
  {
    v246[8] = v243;
    v246[9] = v244;
    v247[0] = v245[0];
    *(v247 + 9) = *(v245 + 9);
    v246[4] = v239;
    v246[5] = v240;
    v246[6] = v241;
    v246[7] = v242;
    v246[0] = v235;
    v246[1] = v236;
    v246[2] = v237;
    v246[3] = v238;
    if (sub_1001CDA90(v246) == 1)
    {
      UInt32.init(_:)(v246);
      v41 = &v207;
      goto LABEL_11;
    }

    UInt32.init(_:)(v246);
  }

  if (*(*&v36[*(v33 + 28)] + 16))
  {
    sub_100025F40(&v218, &qword_1005D3FE0, &qword_1004DF4D0);
LABEL_10:
    v43 = v160;
    sub_1001CDD1C(v160, v11, _s6LoggerVMa);
    v44 = (*(v156 + 80) + 16) & ~*(v156 + 80);
    v45 = (v9 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
    v46 = swift_allocObject();
    sub_1001CDC18(v11, v46 + v44, _s6LoggerVMa);
    v47 = (v46 + v45);
    v48 = v158;
    *v47 = v157;
    v47[1] = v48;
    sub_10022161C(v43, sub_1001CD9F0, v46);
    sub_1001CDC18(v36, v146, type metadata accessor for UnauthenticatedStateWithTasks);
    swift_storeEnumTagMultiPayload();
  }

  v233[8] = v226;
  v233[9] = v227;
  v234[0] = v228[0];
  *(v234 + 9) = *(v228 + 9);
  v233[4] = v222;
  v233[5] = v223;
  v233[6] = v224;
  v233[7] = v225;
  v233[0] = v218;
  v233[1] = v219;
  v233[2] = v220;
  v233[3] = v221;
  v41 = v233;
  if (sub_1001CD904(v233) == 1)
  {
    goto LABEL_10;
  }

LABEL_11:
  v49 = v41[9];
  v204 = v41[8];
  v205 = v49;
  v206[0] = v41[10];
  *(v206 + 9) = *(v41 + 169);
  v50 = v41[5];
  v200 = v41[4];
  v201 = v50;
  v51 = v41[7];
  v202 = v41[6];
  v203 = v51;
  v52 = v41[1];
  v196 = *v41;
  v197 = v52;
  v53 = v41[3];
  v198 = v41[2];
  v199 = v53;
  v194[8] = v204;
  v194[9] = v205;
  v195[0] = v206[0];
  *(v195 + 9) = *(v206 + 9);
  v194[4] = v200;
  v194[5] = v201;
  v194[6] = v202;
  v194[7] = v203;
  v194[0] = v196;
  v194[1] = v197;
  v194[2] = v198;
  v194[3] = v53;
  if (sub_1001CDA90(v194) == 1)
  {
    v54 = UInt32.init(_:)(v194);
    v38 = *v54;
    v55 = v54[1];
    v56 = v54[2];
    v57 = v160;
    v58 = v145;
    sub_1001CDD1C(v160, v145, _s6LoggerVMa);
    sub_1001CDD1C(v57, v14, _s6LoggerVMa);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v191 = v215;
    v192 = v216;
    v193[0] = v217[0];
    *(v193 + 9) = *(v217 + 9);
    v187 = v211;
    v188 = v212;
    v189 = v213;
    v190 = v214;
    v183 = v207;
    v184 = v208;
    v185 = v209;
    v186 = v210;
    sub_10000E268(&v183, &v172, &qword_1005D3FE8, &qword_1004DF4D8);
    v41 = sub_1004A4A54();
    v59 = sub_1004A6014();
    sub_100025F40(&v218, &qword_1005D3FE0, &qword_1004DF4D0);
    if (os_log_type_enabled(v41, v59))
    {
      v157 = v55;
      v158 = v36;
      v160 = v38;
      v60 = swift_slowAlloc();
      v156 = swift_slowAlloc();
      *&v172 = v156;
      *v60 = 68158466;
      *(v60 + 4) = 2;
      *(v60 + 8) = 256;
      v61 = v56;
      v62 = v155;
      v63 = v14[*(v155 + 20)];
      sub_1001CDD84(v14, _s6LoggerVMa);
      *(v60 + 10) = v63;
      *(v60 + 11) = 2082;
      v64 = *(v62 + 20);
      v56 = v61;
      v65 = *(v58 + v64 + 4);
      sub_1001CDD84(v58, _s6LoggerVMa);
      v66 = ConnectionID.debugDescription.getter(v65);
      v68 = sub_10015BA6C(v66, v67, &v172);

      *(v60 + 13) = v68;
      *(v60 + 21) = 2080;
      v69 = 0xEA00000000006174;
      v70 = 0x6F7571207265766FLL;
      if (v61 > 1)
      {
        if (v61 == 2)
        {
          v69 = 0xE500000000000000;
          v70 = 0x6B63757473;
        }

        else if (v61 == 3)
        {
          v69 = 0xE500000000000000;
          v70 = 0x726568746FLL;
        }
      }

      else if (v61)
      {
        if (v61 == 1)
        {
          v69 = 0x80000001004AB130;
          v70 = 0xD000000000000015;
        }
      }

      else
      {
        v69 = 0xEF736C6169746E65;
        v70 = 0x6465726320646162;
      }

      v126 = sub_10015BA6C(v70, v69, &v172);

      *(v60 + 23) = v126;
      _os_log_impl(&_mh_execute_header, v41, v59, "[%.*hhx-%{public}s] Authentication failed: %s", v60, 0x1Fu);
      swift_arrayDestroy();

      sub_1001CDD84(v158, type metadata accessor for UnauthenticatedStateWithTasks);
      v73 = v146;
      v38 = v160;
      v55 = v157;
      goto LABEL_55;
    }

LABEL_22:
    sub_1001CDD84(v14, _s6LoggerVMa);

    sub_1001CDD84(v58, _s6LoggerVMa);
    sub_1001CDD84(v36, type metadata accessor for UnauthenticatedStateWithTasks);
    v73 = v146;
LABEL_55:
    *v73 = v38;
    v73[1] = v55;
    v73[2] = v56;
    return swift_storeEnumTagMultiPayload();
  }

  v58 = UInt32.init(_:)(v194);
  result = static MonotonicTime.now()();
  v71 = *(v36 + 1);
  v72 = result - v71;
  if (result < v71)
  {
    v14 = v153;
    v55 = v154;
    v56 = v152;
    if (__OFSUB__(v71, result))
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v72 = result - v71;
    if (__OFSUB__(0, v71 - result))
    {
      __break(1u);
      goto LABEL_22;
    }

LABEL_24:
    v74 = v72 / 1000000000.0;
    if (COERCE__INT64(fabs(v74)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v74 > -9.22337204e18)
    {
      if (v74 < 9.22337204e18)
      {
        v75 = v74;
        v190 = *(v58 + 120);
        v191 = *(v58 + 136);
        v192 = *(v58 + 152);
        v193[0] = *(v58 + 168);
        v186 = *(v58 + 56);
        v187 = *(v58 + 72);
        v188 = *(v58 + 88);
        v189 = *(v58 + 104);
        v183 = *(v58 + 8);
        v184 = *(v58 + 24);
        v185 = *(v58 + 40);
        v76 = ServerID.logDescription.getter();
        if (v77)
        {
          v78 = v77;
          v158 = v76;
          v79 = v160;
          sub_1001CDD1C(v160, v55, _s6LoggerVMa);
          v80 = v149;
          sub_1001CDD1C(v79, v149, _s6LoggerVMa);
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();

          v81 = sub_1004A4A54();
          v82 = sub_1004A6034();

          if (os_log_type_enabled(v81, v82))
          {
            v83 = v55;
            v84 = swift_slowAlloc();
            v156 = swift_slowAlloc();
            *&v172 = v156;
            *v84 = 68158722;
            *(v84 + 4) = 2;
            *(v84 + 8) = 256;
            v157 = v75;
            v85 = v155;
            v86 = v80;
            v87 = *(v80 + *(v155 + 20));
            LODWORD(v154) = v82;
            sub_1001CDD84(v86, _s6LoggerVMa);
            *(v84 + 10) = v87;
            *(v84 + 11) = 2082;
            v88 = *(v83 + *(v85 + 20) + 4);
            sub_1001CDD84(v83, _s6LoggerVMa);
            v89 = ConnectionID.debugDescription.getter(v88);
            v91 = v40;
            v92 = sub_10015BA6C(v89, v90, &v172);

            *(v84 + 13) = v92;
            v40 = v91;
            *(v84 + 21) = 2082;
            v93 = sub_10015BA6C(v158, v78, &v172);

            *(v84 + 23) = v93;
            *(v84 + 31) = 2048;
            *(v84 + 33) = v157;
            _os_log_impl(&_mh_execute_header, v81, v154, "[%.*hhx-%{public}s] Authentication completed with server %{public}s (took %ld s)", v84, 0x29u);
            swift_arrayDestroy();

LABEL_32:

            goto LABEL_39;
          }

          sub_1001CDD84(v80, _s6LoggerVMa);

          v106 = v55;
        }

        else
        {
          v94 = v160;
          sub_1001CDD1C(v160, v14, _s6LoggerVMa);
          sub_1001CDD1C(v94, v56, _s6LoggerVMa);
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          v81 = sub_1004A4A54();
          v95 = sub_1004A6034();
          if (os_log_type_enabled(v81, v95))
          {
            v96 = swift_slowAlloc();
            v97 = swift_slowAlloc();
            v158 = v40;
            v98 = v97;
            *&v172 = v97;
            *v96 = 68158466;
            *(v96 + 4) = 2;
            *(v96 + 8) = 256;
            v157 = v75;
            v99 = v155;
            v100 = *(v56 + *(v155 + 20));
            sub_1001CDD84(v56, _s6LoggerVMa);
            *(v96 + 10) = v100;
            *(v96 + 11) = 2082;
            v101 = *&v14[*(v99 + 20) + 4];
            sub_1001CDD84(v14, _s6LoggerVMa);
            v102 = ConnectionID.debugDescription.getter(v101);
            v104 = sub_10015BA6C(v102, v103, &v172);

            *(v96 + 13) = v104;
            *(v96 + 21) = 2048;
            *(v96 + 23) = v157;
            _os_log_impl(&_mh_execute_header, v81, v95, "[%.*hhx-%{public}s] Authentication completed (took %ld s).", v96, 0x1Fu);
            sub_1000197E0(v98);
            v40 = v158;

            goto LABEL_32;
          }

          sub_1001CDD84(v56, _s6LoggerVMa);

          v106 = v14;
        }

        v105 = sub_1001CDD84(v106, _s6LoggerVMa);
LABEL_39:
        v151(&v229, v105);
        v248 = v231;
        v249 = v232;
        v107 = v229;
        if (v232 == 1)
        {
          sub_1001CDB04(v229);
LABEL_41:
          v108 = *v58;

          v110 = sub_1001CAFCC(v109);

          v111 = *v40;
          sub_10010E800(v58 + 8, &v172);

          sub_1001CDD84(v40, type metadata accessor for UnauthenticatedStateWithTasks);
          sub_100025F40(&v218, &qword_1005D3FE0, &qword_1004DF4D0);
          v161 = 0u;
          v162 = 0u;
          *&v163 = 0;
          sub_1001CD6D8(&v161);
          v179 = *(v58 + 120);
          v112 = v179;
          v175 = *(v58 + 56);
          v113 = v175;
          v180 = *(v58 + 136);
          v181 = *(v58 + 152);
          v182 = *(v58 + 168);
          v176 = *(v58 + 72);
          v177 = *(v58 + 88);
          v178 = *(v58 + 104);
          v172 = *(v58 + 8);
          v173 = *(v58 + 24);
          v174 = *(v58 + 40);
          v114 = v146;
          *v146 = v110;
          *(v114 + 7) = v113;
          *(v114 + 15) = v112;
          v115 = v173;
          *(v114 + 5) = v174;
          v116 = v172;
          *(v114 + 3) = v115;
          *(v114 + 1) = v116;
          v117 = v176;
          v118 = v177;
          *(v114 + 13) = v178;
          *(v114 + 11) = v118;
          *(v114 + 9) = v117;
          v119 = v181;
          *(v114 + 21) = v182;
          v120 = v180;
          *(v114 + 19) = v119;
          *(v114 + 17) = v120;
          v114[23] = v111;
          v121 = v170;
          *(v114 + 20) = v169;
          *(v114 + 21) = v121;
          *(v114 + 176) = v171;
          v122 = v166;
          *(v114 + 16) = v165;
          *(v114 + 17) = v122;
          v123 = v168;
          *(v114 + 18) = v167;
          *(v114 + 19) = v123;
          v124 = v162;
          *(v114 + 12) = v161;
          *(v114 + 13) = v124;
          v125 = v164;
          *(v114 + 14) = v163;
          *(v114 + 15) = v125;
          return swift_storeEnumTagMultiPayload();
        }

        if (v229 >> 62 == 1)
        {
          if (!v232)
          {
            if ((v248 == 1 || v229 != 771) && v229 != 772)
            {
              goto LABEL_60;
            }

LABEL_59:
            sub_1001CDB04(v107);
            sub_1001CDB14(&v248);
            goto LABEL_41;
          }

          if (v248 == 1)
          {
            if (v229 != 772)
            {
              goto LABEL_60;
            }
          }

          else if (v229 - 773 < 0xFFFFFFFE)
          {
            goto LABEL_60;
          }

          if (*(&v230 + 1) && (__PAIR128__(v232, *(&v248 + 1)) == v230 || (sub_1004A6D34() & 1) != 0))
          {
            goto LABEL_59;
          }
        }

LABEL_60:
        v158 = v40;
        sub_100025F40(&v218, &qword_1005D3FE0, &qword_1004DF4D0);
        v127 = v160;
        v128 = v148;
        sub_1001CDD1C(v160, v148, _s6LoggerVMa);
        v129 = v147;
        sub_1001CDD1C(v127, v147, _s6LoggerVMa);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        sub_1001CDA98(v107);
        sub_1001CDAA8(&v248, &v172);
        v130 = sub_1004A4A54();
        v131 = sub_1004A6014();
        sub_1001CDB04(v107);
        sub_1001CDB14(&v248);
        if (os_log_type_enabled(v130, v131))
        {
          v132 = swift_slowAlloc();
          v160 = swift_slowAlloc();
          *&v172 = v160;
          *v132 = 68158466;
          *(v132 + 4) = 2;
          *(v132 + 8) = 256;
          v133 = v155;
          v134 = *(v155 + 20);
          LODWORD(v157) = v131;
          v135 = v129;
          v136 = *(v129 + v134);
          sub_1001CDD84(v135, _s6LoggerVMa);
          *(v132 + 10) = v136;
          *(v132 + 11) = 2082;
          v137 = *(v128 + *(v133 + 20) + 4);
          sub_1001CDD84(v128, _s6LoggerVMa);
          v138 = ConnectionID.debugDescription.getter(v137);
          v140 = sub_10015BA6C(v138, v139, &v172);

          *(v132 + 13) = v140;
          *(v132 + 21) = 2082;
          sub_1001CDB14(&v248);
          v141 = sub_10021BCB4(v107);
          v143 = v142;
          sub_1001CDB04(v107);
          v144 = sub_10015BA6C(v141, v143, &v172);

          *(v132 + 23) = v144;
          _os_log_impl(&_mh_execute_header, v130, v157, "[%.*hhx-%{public}s] Did authenticate, but connection (%{public}s) does not fulfil TLS requirements.", v132, 0x1Fu);
          swift_arrayDestroy();
        }

        else
        {
          sub_1001CDD84(v129, _s6LoggerVMa);
          sub_1001CDB04(v107);
          sub_1001CDB14(&v248);

          sub_1001CDD84(v128, _s6LoggerVMa);
        }

        sub_1001CDD84(v158, type metadata accessor for UnauthenticatedStateWithTasks);
        return swift_storeEnumTagMultiPayload();
      }

      goto LABEL_67;
    }

    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v14 = v153;
  v55 = v154;
  v56 = v152;
  if (!__OFSUB__(result, v71))
  {
    goto LABEL_24;
  }

LABEL_69:
  __break(1u);
  return result;
}

uint64_t sub_1001C9094(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v34 = a4;
  v7 = type metadata accessor for ClientCommand(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s6LoggerVMa();
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v32 - v16;
  sub_1001CDD1C(a2, &v32 - v16, _s6LoggerVMa);
  sub_1001CDD1C(a2, v15, _s6LoggerVMa);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  sub_1001CDBBC(a1, v35);
  v18 = sub_1004A4A54();
  v19 = sub_1004A5FF4();
  sub_1001CD8B0(a1);
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v33 = a3;
    v21 = v20;
    v32 = swift_slowAlloc();
    v35[0] = v32;
    *v21 = 68158466;
    *(v21 + 4) = 2;
    *(v21 + 8) = 256;
    v22 = v15[*(v11 + 20)];
    sub_1001CDD84(v15, _s6LoggerVMa);
    *(v21 + 10) = v22;
    *(v21 + 11) = 2082;
    v23 = *&v17[*(v11 + 20) + 4];
    sub_1001CDD84(v17, _s6LoggerVMa);
    v24 = ConnectionID.debugDescription.getter(v23);
    v26 = sub_10015BA6C(v24, v25, v35);

    *(v21 + 13) = v26;
    *(v21 + 21) = 2082;
    v27 = sub_10020F894();
    v29 = sub_10015BA6C(v27, v28, v35);

    *(v21 + 23) = v29;
    _os_log_impl(&_mh_execute_header, v18, v19, "[%.*hhx-%{public}s] Authentication is sending %{public}s.", v21, 0x1Fu);
    swift_arrayDestroy();

    a3 = v33;
  }

  else
  {
    sub_1001CDD84(v15, _s6LoggerVMa);

    sub_1001CDD84(v17, _s6LoggerVMa);
  }

  sub_1001CDBBC(a1, v35);
  sub_1001C93D8(a1, v10);
  v30 = a3(v10);
  sub_1001CDD84(v10, type metadata accessor for ClientCommand);
  return v30;
}

uint64_t sub_1001C93D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 64);
  if (v8 > 2)
  {
    if (v8 == 3)
    {
      *a2 = v4;
      type metadata accessor for ClientCommand(0);
    }

    else
    {
      v12 = *(a1 + 40);
      v11 = *(a1 + 48);
      v13 = *(a1 + 56);
      if (v8 == 4)
      {
        *a2 = v4;
        *(a2 + 8) = v3;
        *(a2 + 16) = v5;
        *(a2 + 24) = v6;
        *(a2 + 32) = v7;
        *(a2 + 40) = v12;
        *(a2 + 48) = v11;
        *(a2 + 56) = v13;
      }

      type metadata accessor for ClientCommand(0);
    }
  }

  else if (*(a1 + 64))
  {
    if (v8 != 1)
    {
      v17 = *(a1 + 8);
      v18 = v4;
      v19 = v5;
      sub_10000E268(&v18, &v16, &qword_1005D3FC8, &qword_1004DF4B8);
      sub_10000E268(&v17, &v16, &qword_1005D3FD0, &qword_1004DF4C0);
      sub_10000E268(&v19, &v16, &qword_1005D3FD8, &qword_1004DF4C8);
      sub_1001CD8B0(a1);
      *a2 = v4;
      *(a2 + 8) = v3;
      *(a2 + 16) = v5;
      type metadata accessor for ClientCommand(0);
      return swift_storeEnumTagMultiPayload();
    }

    v10 = *(a1 + 16);

    sub_1001CD8B0(a1);
    *a2 = v4;
    *(a2 + 8) = v3;
    *(a2 + 16) = v5;
    *(a2 + 24) = v6;
    *(a2 + 38) = BYTE6(v7);
    *(a2 + 36) = WORD2(v7);
    *(a2 + 32) = v7;
    type metadata accessor for ClientCommand(0);
  }

  else
  {
    v14 = *(a1 + 8);

    sub_1001CD8B0(a1);
    *a2 = v4;
    *(a2 + 8) = v3;
    *(a2 + 16) = v5;
    *(a2 + 24) = v6;
    type metadata accessor for ClientCommand(0);
  }

  return swift_storeEnumTagMultiPayload();
}

void *sub_1001C964C()
{
  v1 = v0;
  v2 = type metadata accessor for ConnectionState();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v15[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001CDD1C(v1, v5, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    memcpy(v15, v5, 0x162uLL);
    v6 = v15[0];
    v7 = Capability.condStore.unsafeMutableAddressor();
    v8 = *v7;
    v9 = v7[1];
    v10 = v7[2];
    v11 = *(v7 + 24);

    LOBYTE(v6) = sub_100012A38(v8, v9, v10, v11, v6);

    if (v6)
    {
      v12 = sub_1001CB9CC(&off_1005A3A38);
      sub_1001ACFCC(v15);
      return v12;
    }

    sub_1001ACFCC(v15);
  }

  else
  {
    sub_1001CDD84(v5, type metadata accessor for ConnectionState);
  }

  return _swiftEmptySetSingleton;
}

void sub_1001C97B4(__int128 *a1, uint64_t a2)
{
  v117 = a2;
  v116 = _s6LoggerVMa();
  v3 = *(*(v116 - 8) + 64);
  v4 = __chkstk_darwin(v116);
  v6 = &v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v110 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v110 - v11;
  __chkstk_darwin(v10);
  v14 = &v110 - v13;
  v15 = a1[7];
  v16 = a1[9];
  v154 = a1[8];
  v155 = v16;
  v17 = a1[3];
  v18 = a1[5];
  v150 = a1[4];
  v151 = v18;
  v19 = a1[5];
  v20 = a1[7];
  v152 = a1[6];
  v153 = v20;
  v21 = a1[1];
  v146 = *a1;
  v147 = v21;
  v22 = a1[3];
  v24 = *a1;
  v23 = a1[1];
  v148 = a1[2];
  v149 = v22;
  v25 = a1[9];
  v157[8] = v154;
  v157[9] = v25;
  v157[4] = v150;
  v157[5] = v19;
  v157[6] = v152;
  v157[7] = v15;
  v157[0] = v24;
  v157[1] = v23;
  v156 = *(a1 + 80);
  v158 = *(a1 + 80);
  v157[2] = v148;
  v157[3] = v17;
  if (sub_1001ACFC0(v157) == 1)
  {
    v26 = sub_1001AD074(v157);
    v27 = v26;
    v29 = (v26 + 16);
    v28 = *(v26 + 16);
    v31 = *(v26 + 24);
    v30 = *(v26 + 32);
    v32 = *(v26 + 40);
    v33 = *(v26 + 90);
    v34 = v33 >> 5;
    if (v34 > 2)
    {
      if (v34 != 3)
      {
        return;
      }

      v113 = *(v26 + 16);
      v114 = v30;
      v115 = v31;
      v55 = a1[9];
      v143 = a1[8];
      v144 = v55;
      v145 = *(a1 + 80);
      v56 = a1[5];
      v139 = a1[4];
      v140 = v56;
      v57 = a1[7];
      v141 = a1[6];
      v142 = v57;
      v58 = a1[1];
      v135 = *a1;
      v136 = v58;
      v59 = a1[3];
      v137 = a1[2];
      v138 = v59;
      sub_1001ADB30(&v146, &v124);
      sub_1001CD67C(v29, &v124);
      sub_1001AD020(&v135);
      if (v32 == 0xFF)
      {
        v60 = v117;
        sub_1001CDD1C(v117, v9, _s6LoggerVMa);
        sub_1001CDD1C(v60, v6, _s6LoggerVMa);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v132 = v154;
        v133 = v155;
        v134 = v156;
        v128 = v150;
        v129 = v151;
        v130 = v152;
        v131 = v153;
        v124 = v146;
        v125 = v147;
        v126 = v148;
        v127 = v149;
        v61 = sub_1001AD074(&v124);
        sub_1001AD084(v61, &v119);
        v62 = sub_1004A4A54();
        v63 = sub_1004A6014();
        sub_1001AD020(&v146);
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          LODWORD(v115) = v63;
          v65 = v64;
          v117 = swift_slowAlloc();
          v118 = v117;
          *v65 = 68158723;
          *(v65 + 4) = 2;
          *(v65 + 8) = 256;
          v114 = v62;
          v66 = v116;
          v67 = v6[*(v116 + 20)];
          sub_1001CDD84(v6, _s6LoggerVMa);
          *(v65 + 10) = v67;
          *(v65 + 11) = 2082;
          v68 = *&v9[*(v66 + 20) + 4];
          sub_1001CDD84(v9, _s6LoggerVMa);
          v69 = ConnectionID.debugDescription.getter(v68);
          v71 = sub_10015BA6C(v69, v70, &v118);

          *(v65 + 13) = v71;
          *(v65 + 21) = 2160;
          *(v65 + 23) = 0x786F626C69616DLL;
          *(v65 + 31) = 2085;
          v72 = *(v27 + 8);
          *&v119 = *v27;
          DWORD2(v119) = v72;

          v73 = sub_1004A5824();
          v75 = sub_10015BA6C(v73, v74, &v118);

          *(v65 + 33) = v75;
          v76 = v114;
          _os_log_impl(&_mh_execute_header, v114, v115, "[%.*hhx-%{public}s] Unable to select mailbox '%{sensitive,mask.mailbox}s' because attributes were missing.", v65, 0x29u);
          swift_arrayDestroy();
        }

        else
        {
          sub_1001CDD84(v6, _s6LoggerVMa);

          sub_1001CDD84(v9, _s6LoggerVMa);
        }

        v98 = *v27;
        v99 = *(v27 + 8);

        sub_1001AD020(&v146);
        *&v119 = v98;
        *(&v119 + 1) = v99;
        *&v121 = 0;
        v120 = 0uLL;
        sub_1001CD6D8(&v119);
        v100 = v122[6];
        a1[8] = v122[5];
        a1[9] = v100;
        *(a1 + 80) = v123;
        v101 = v122[2];
        a1[4] = v122[1];
        a1[5] = v101;
        v102 = v122[4];
        a1[6] = v122[3];
        a1[7] = v102;
        v103 = v120;
        *a1 = v119;
        a1[1] = v103;
        v54 = v121;
        v53 = v122[0];
      }

      else
      {
        v77 = v117;
        sub_1001CDD1C(v117, v14, _s6LoggerVMa);
        sub_1001CDD1C(v77, v12, _s6LoggerVMa);
        sub_1001CD73C(*(v27 + 16), *(v27 + 24), *(v27 + 32), *(v27 + 40));
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        sub_1001ADB30(&v146, &v124);
        sub_1001CD67C(v29, &v124);
        v78 = sub_1004A4A54();
        v79 = sub_1004A6014();
        sub_1001AD020(&v146);
        sub_1001CD5DC(v29);
        if (os_log_type_enabled(v78, v79))
        {
          v80 = swift_slowAlloc();
          v117 = swift_slowAlloc();
          *&v119 = v117;
          *v80 = 68158979;
          *(v80 + 4) = 2;
          *(v80 + 8) = 256;
          v112 = v78;
          v81 = v116;
          v110 = v12[*(v116 + 20)];
          v111 = v79;
          sub_1001CDD84(v12, _s6LoggerVMa);
          *(v80 + 10) = v110;
          *(v80 + 11) = 2082;
          v82 = *&v14[*(v81 + 20) + 4];
          sub_1001CDD84(v14, _s6LoggerVMa);
          v83 = ConnectionID.debugDescription.getter(v82);
          v85 = sub_10015BA6C(v83, v84, &v119);

          *(v80 + 13) = v85;
          *(v80 + 21) = 2160;
          *(v80 + 23) = 0x786F626C69616DLL;
          *(v80 + 31) = 2085;
          v86 = *(v27 + 8);
          *&v124 = *v27;
          DWORD2(v124) = v86;

          v87 = sub_1004A5824();
          v89 = sub_10015BA6C(v87, v88, &v119);

          *(v80 + 33) = v89;
          *(v80 + 41) = 2082;
          v90 = v113;
          sub_1000110B0(v113);
          v91 = v114;

          v92 = ResponseText.debugDescription.getter(v90, v115, v91);
          v94 = v93;
          sub_10001114C(v90);

          v95 = sub_10015BA6C(v92, v94, &v119);

          *(v80 + 43) = v95;
          v96 = v112;
          _os_log_impl(&_mh_execute_header, v112, v111, "[%.*hhx-%{public}s] Unable to select mailbox '%{sensitive,mask.mailbox}s': %{public}s", v80, 0x33u);
          swift_arrayDestroy();
          v97 = v115;

          sub_1001CD5DC(v29);
        }

        else
        {
          sub_1001CDD84(v12, _s6LoggerVMa);

          sub_1001CD5DC(v29);
          sub_1001CDD84(v14, _s6LoggerVMa);
          v91 = v114;
          v97 = v115;
          v90 = v113;
        }

        v104 = *v27;
        v105 = *(v27 + 8);

        sub_1000110B0(v90);

        sub_1001CD5DC(v29);
        sub_1001AD020(&v146);
        *&v124 = v104;
        *(&v124 + 1) = v105;
        *&v125 = v90;
        *(&v125 + 1) = v97;
        *&v126 = v91;
        sub_1001CD6D8(&v124);
        v106 = v133;
        a1[8] = v132;
        a1[9] = v106;
        *(a1 + 80) = v134;
        v107 = v129;
        a1[4] = v128;
        a1[5] = v107;
        v108 = v131;
        a1[6] = v130;
        a1[7] = v108;
        v109 = v125;
        *a1 = v124;
        a1[1] = v109;
        v54 = v126;
        v53 = v127;
      }
    }

    else
    {
      if (v34 < 2)
      {
        return;
      }

      v117 = *(v26 + 48);
      v35 = *(v26 + 64);
      v116 = *(v26 + 56);
      v36 = *(v26 + 72);
      v115 = *(v26 + 80);
      v37 = *(v26 + 88) | (v33 << 16);
      v38 = a1[5];
      v128 = a1[4];
      v129 = v38;
      v134 = *(a1 + 80);
      v39 = a1[9];
      v132 = a1[8];
      v133 = v39;
      v40 = a1[7];
      v130 = a1[6];
      v131 = v40;
      v41 = a1[3];
      v126 = a1[2];
      v127 = v41;
      v42 = a1[1];
      v124 = *a1;
      v125 = v42;
      v44 = *(v26 + 48);
      v43 = *(v26 + 64);
      v45 = *(v26 + 32);
      *(v122 + 11) = *(v26 + 75);
      v120 = v45;
      v121 = v44;
      v122[0] = v43;
      v119 = *v29;
      BYTE10(v122[1]) &= 0x1Fu;
      v46 = v30;
      v47 = v28;
      v48 = v31;
      sub_1000CB914(&v119, &v135);
      sub_1001AD020(&v124);
      *&v135 = v47;
      *(&v135 + 1) = v48;
      *&v136 = v46;
      *(&v136 + 1) = v32;
      *&v137 = v117;
      *(&v137 + 1) = v116;
      *&v138 = v35;
      *(&v138 + 1) = v36;
      *&v139 = v115;
      BYTE10(v139) = BYTE2(v37) & 0x1F;
      WORD4(v139) = v37;
      sub_1001CD750(&v135);
      v49 = v144;
      a1[8] = v143;
      a1[9] = v49;
      *(a1 + 80) = v145;
      v50 = v140;
      a1[4] = v139;
      a1[5] = v50;
      v51 = v142;
      a1[6] = v141;
      a1[7] = v51;
      v52 = v136;
      *a1 = v135;
      a1[1] = v52;
      v54 = v137;
      v53 = v138;
    }

    a1[2] = v54;
    a1[3] = v53;
  }
}

uint64_t _s15IMAP2Connection23MailboxSelectionFailureV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t result, uint64_t *a2)
{
  if ((*(result + 8) | (*(result + 8) << 32)) != (*(a2 + 2) | (*(a2 + 2) << 32)))
  {
    return 0;
  }

  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
LABEL_11:
    v8 = a2[4];
    if (*(result + 32))
    {
      if (v8)
      {
        v9 = *(result + 16);
        v10 = *(result + 24);
        v11 = a2[2];
        sub_1000110B0(v11);

        v12 = static ResponseText.__derived_struct_equals(_:_:)(v9, v10);
        sub_10001114C(v11);

        if (v12)
        {
          return 1;
        }
      }
    }

    else if (!v8)
    {
      return 1;
    }

    return 0;
  }

  v6 = (v2 + 32);
  v7 = (v3 + 32);
  while (v4)
  {
    if (*v6 != *v7)
    {
      return 0;
    }

    ++v6;
    ++v7;
    if (!--v4)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001CA1E0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 144);
  v99 = *(a2 + 128);
  v100 = v4;
  v101 = *(a2 + 160);
  v5 = *(a2 + 80);
  v95 = *(a2 + 64);
  v96 = v5;
  v6 = *(a2 + 112);
  v97 = *(a2 + 96);
  v98 = v6;
  v7 = *(a2 + 16);
  v91 = *a2;
  v92 = v7;
  v8 = *(a2 + 48);
  v93 = *(a2 + 32);
  v94 = v8;
  v9 = *(a1 + 144);
  v73[8] = *(a1 + 128);
  v73[9] = v9;
  v74 = *(a1 + 160);
  v10 = *(a1 + 80);
  v73[4] = *(a1 + 64);
  v73[5] = v10;
  v11 = *(a1 + 112);
  v73[6] = *(a1 + 96);
  v73[7] = v11;
  v12 = *(a1 + 16);
  v73[0] = *a1;
  v73[1] = v12;
  v13 = *(a1 + 48);
  v73[2] = *(a1 + 32);
  v73[3] = v13;
  v14 = sub_1001ACFC0(v73);
  v15 = sub_1001AD074(v73);
  if (!v14)
  {
    v24 = *v15;
    v23 = *(v15 + 8);
    v26 = *(v15 + 16);
    v25 = *(v15 + 24);
    v27 = *(v15 + 32);
    v28 = *(a2 + 144);
    v83 = *(a2 + 128);
    v84 = v28;
    v85 = *(a2 + 160);
    v29 = *(a2 + 80);
    v79 = *(a2 + 64);
    v80 = v29;
    v30 = *(a2 + 112);
    v81 = *(a2 + 96);
    v82 = v30;
    v31 = *(a2 + 16);
    v75 = *a2;
    v76 = v31;
    v32 = *(a2 + 48);
    v77 = *(a2 + 32);
    v78 = v32;
    if (sub_1001ACFC0(&v75))
    {
      goto LABEL_14;
    }

    v33 = sub_1001AD074(&v75);
    v34 = *v33;
    v35 = v33[1];
    v37 = v33[2];
    v36 = v33[3];
    v38 = v33[4];
    if (v24)
    {
      if (v34)
      {
        *&v53 = *v33;
        DWORD2(v53) = v35;
        *&v54 = v37;
        *(&v54 + 1) = v36;
        *&v55 = v38;
        v86 = v24;
        v87 = v23;
        v88 = v26;
        v89 = v25;
        v90 = v27;
        v39 = v38;
        v40 = v36;
        sub_1001ADB30(a2, &v63);
        sub_1001ADB30(a1, &v63);
        v41 = _s15IMAP2Connection23MailboxSelectionFailureV23__derived_struct_equalsySbAC_ACtFZ_0(&v86, &v53);

        sub_10010E7C0(v37, v40, v39);
        sub_1001AD020(a1);
        if (v41)
        {
          v22 = 1;
          return v22 & 1;
        }

LABEL_14:
        v22 = 0;
        return v22 & 1;
      }
    }

    else if (!v34)
    {
      v70 = v99;
      v71 = v100;
      v72 = v101;
      *&v66[16] = v95;
      v67 = v96;
      v68 = v97;
      v69 = v98;
      v63 = v91;
      v64 = v92;
      v65 = v93;
      *v66 = v94;
      v51 = sub_1001AD074(&v63);
      sub_1001ADA78(*v51, *(v51 + 8), *(v51 + 16), *(v51 + 24), *(v51 + 32));
      v22 = 1;
      return v22 & 1;
    }

    v48 = a2;
    v52 = v38;
    v49 = v36;
    sub_1001ADB30(v48, &v63);
    sub_1001ADB30(a1, &v63);
    sub_1001CC830(v24, v23, v26, v25, v27);
    sub_1001CC830(v34, v35, v37, v49, v52);
    goto LABEL_14;
  }

  if (v14 != 1)
  {
    v64 = *(v15 + 16);
    v65 = *(v15 + 32);
    *v66 = *(v15 + 48);
    *&v66[11] = *(v15 + 59);
    v63 = *v15;
    v42 = *(a2 + 144);
    v83 = *(a2 + 128);
    v84 = v42;
    v85 = *(a2 + 160);
    v43 = *(a2 + 80);
    v79 = *(a2 + 64);
    v80 = v43;
    v44 = *(a2 + 112);
    v81 = *(a2 + 96);
    v82 = v44;
    v45 = *(a2 + 16);
    v75 = *a2;
    v76 = v45;
    v46 = *(a2 + 48);
    v77 = *(a2 + 32);
    v78 = v46;
    if (sub_1001ACFC0(&v75) == 2)
    {
      v47 = sub_1001AD074(&v75);
      v54 = v47[1];
      v55 = v47[2];
      *v56 = v47[3];
      *&v56[11] = *(v47 + 59);
      v53 = *v47;
      v22 = _s15IMAP2Connection15SelectedMailboxV23__derived_struct_equalsySbAC_ACtFZ_0(&v63, &v53);
      return v22 & 1;
    }

    goto LABEL_14;
  }

  v82 = *(v15 + 112);
  v83 = *(v15 + 128);
  v84 = *(v15 + 144);
  v85 = *(v15 + 160);
  v78 = *(v15 + 48);
  v79 = *(v15 + 64);
  v80 = *(v15 + 80);
  v81 = *(v15 + 96);
  v75 = *v15;
  v76 = *(v15 + 16);
  v77 = *(v15 + 32);
  v16 = *(a2 + 16);
  v53 = *a2;
  v54 = v16;
  v17 = *(a2 + 80);
  *&v56[16] = *(a2 + 64);
  v57 = v17;
  v18 = *(a2 + 48);
  v55 = *(a2 + 32);
  *v56 = v18;
  v62 = *(a2 + 160);
  v19 = *(a2 + 144);
  v60 = *(a2 + 128);
  v61 = v19;
  v20 = *(a2 + 112);
  v58 = *(a2 + 96);
  v59 = v20;
  if (sub_1001ACFC0(&v53) != 1)
  {
    goto LABEL_14;
  }

  v21 = sub_1001AD074(&v53);
  v69 = *(v21 + 112);
  v70 = *(v21 + 128);
  v71 = *(v21 + 144);
  v72 = *(v21 + 160);
  *v66 = *(v21 + 48);
  *&v66[16] = *(v21 + 64);
  v67 = *(v21 + 80);
  v68 = *(v21 + 96);
  v63 = *v21;
  v64 = *(v21 + 16);
  v65 = *(v21 + 32);
  v22 = sub_1001E9D78(&v75, &v63);
  return v22 & 1;
}

uint64_t _s15IMAP2Connection0B5StateO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnauthenticatedStateWithTasks();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v51 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1004A4E34();
  v52 = *(v7 - 8);
  v53 = v7;
  v8 = *(v52 + 64);
  __chkstk_darwin(v7);
  v50 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ConnectionState();
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v14 = (&v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __chkstk_darwin(v12);
  v17 = &v50 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v50 - v19;
  __chkstk_darwin(v18);
  v22 = &v50 - v21;
  v23 = sub_10000C9C0(&qword_1005D35F0, &unk_1004DF4F0);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v27 = (&v50 + *(v25 + 56) - v26);
  v28 = a1;
  v29 = &v50 - v26;
  sub_1001CDD1C(v28, &v50 - v26, type metadata accessor for ConnectionState);
  sub_1001CDD1C(a2, v27, type metadata accessor for ConnectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          goto LABEL_25;
        }
      }

      else if (swift_getEnumCaseMultiPayload() == 5)
      {
        goto LABEL_25;
      }

LABEL_29:
      sub_100025F40(v29, &qword_1005D35F0, &unk_1004DF4F0);
LABEL_30:
      v32 = 0;
      return v32 & 1;
    }

    sub_1001CDD1C(v29, v14, type metadata accessor for ConnectionState);
    v34 = *v14;
    v33 = v14[1];
    v35 = v14[2];
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      sub_100191E44(v34, v33, v35);
      goto LABEL_29;
    }

    v36 = *v27;
    v37 = v27[1];
    v38 = v27[2];
    if (v35 > 1)
    {
      if (v35 == 2)
      {
        if (v38 == 2)
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (v35 != 3)
        {
          goto LABEL_39;
        }

        if (v38 == 3)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
      if (v35)
      {
        if (v35 == 1)
        {
          if (v38 == 1)
          {
            goto LABEL_25;
          }

          goto LABEL_44;
        }

LABEL_39:
        if (v38 >= 4)
        {
          v46 = *v27;
          v47 = v27[1];
          v48 = v27[2];
          v49 = static ResponseText.__derived_struct_equals(_:_:)(v34, v33);
          sub_100191E44(v46, v47, v48);
          sub_100191E44(v34, v33, v35);
          if ((v49 & 1) == 0)
          {
            goto LABEL_45;
          }

          goto LABEL_25;
        }

        sub_100191E44(v36, v37, v38);
        v36 = v34;
        v37 = v33;
        v38 = v35;
        goto LABEL_44;
      }

      if (!v38)
      {
        goto LABEL_25;
      }
    }

LABEL_44:
    sub_100191E44(v36, v37, v38);
    goto LABEL_45;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1001CDD1C(v29, v22, type metadata accessor for ConnectionState);
    if (!swift_getEnumCaseMultiPayload())
    {
      v41 = v52;
      v42 = v50;
      v43 = v27;
      v44 = v53;
      (*(v52 + 32))(v50, v43, v53);
      v32 = sub_1004A4E24();
      v45 = *(v41 + 8);
      v45(v42, v44);
      v45(v22, v44);
      goto LABEL_34;
    }

    (*(v52 + 8))(v22, v53);
    goto LABEL_29;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1001CDD1C(v29, v20, type metadata accessor for ConnectionState);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v31 = v51;
      sub_1001CDC18(v27, v51, type metadata accessor for UnauthenticatedStateWithTasks);
      v32 = _s15IMAP2Connection29UnauthenticatedStateWithTasksV2eeoiySbAC_ACtFZ_0(v20, v31);
      sub_1001CDD84(v31, type metadata accessor for UnauthenticatedStateWithTasks);
      sub_1001CDD84(v20, type metadata accessor for UnauthenticatedStateWithTasks);
LABEL_34:
      sub_1001CDD84(v29, type metadata accessor for ConnectionState);
      return v32 & 1;
    }

    sub_1001CDD84(v20, type metadata accessor for UnauthenticatedStateWithTasks);
    goto LABEL_29;
  }

  sub_1001CDD1C(v29, v17, type metadata accessor for ConnectionState);
  memcpy(v55, v17, sizeof(v55));
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1001ACFCC(v55);
    goto LABEL_29;
  }

  memcpy(v54, v27, sizeof(v54));
  if ((sub_1001B00A0(*v55, *v54) & 1) == 0)
  {
    goto LABEL_32;
  }

  v60[8] = *&v55[136];
  v60[9] = *&v55[152];
  v60[10] = *&v55[168];
  v60[4] = *&v55[72];
  v60[5] = *&v55[88];
  v60[7] = *&v55[120];
  v60[6] = *&v55[104];
  v60[0] = *&v55[8];
  v60[1] = *&v55[24];
  v60[3] = *&v55[56];
  v60[2] = *&v55[40];
  v61[8] = *&v54[136];
  v61[9] = *&v54[152];
  v61[10] = *&v54[168];
  v61[4] = *&v54[72];
  v61[5] = *&v54[88];
  v61[7] = *&v54[120];
  v61[6] = *&v54[104];
  v61[0] = *&v54[8];
  v61[1] = *&v54[24];
  v61[3] = *&v54[56];
  v61[2] = *&v54[40];
  if ((static ServerID.__derived_struct_equals(_:_:)(v60, v61) & 1) == 0 || (sub_1001B02D8(*&v55[184], *&v54[184]) & 1) == 0)
  {
LABEL_32:
    sub_1001ACFCC(v54);
    sub_1001ACFCC(v55);
LABEL_45:
    sub_1001CDD84(v29, type metadata accessor for ConnectionState);
    goto LABEL_30;
  }

  v56[8] = *&v55[320];
  v56[9] = *&v55[336];
  v57 = *&v55[352];
  v56[4] = *&v55[256];
  v56[5] = *&v55[272];
  v56[6] = *&v55[288];
  v56[7] = *&v55[304];
  v56[0] = *&v55[192];
  v56[1] = *&v55[208];
  v56[2] = *&v55[224];
  v56[3] = *&v55[240];
  v58[8] = *&v54[320];
  v58[9] = *&v54[336];
  v59 = *&v54[352];
  v58[4] = *&v54[256];
  v58[5] = *&v54[272];
  v58[7] = *&v54[304];
  v58[6] = *&v54[288];
  v58[0] = *&v54[192];
  v58[1] = *&v54[208];
  v58[2] = *&v54[224];
  v58[3] = *&v54[240];
  v39 = sub_1001CA1E0(v56, v58);
  sub_1001ACFCC(v54);
  sub_1001ACFCC(v55);
  if ((v39 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_25:
  sub_1001CDD84(v29, type metadata accessor for ConnectionState);
  v32 = 1;
  return v32 & 1;
}

uint64_t type metadata accessor for ConnectionState()
{
  result = qword_1005D3F70;
  if (!qword_1005D3F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Int sub_1001CADD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C9C0(&qword_1005D3FC0, &qword_1004DF4B0);
    v3 = sub_1004A66B4();
    v4 = 0;
    v5 = v3 + 56;
    v29 = v1;
    v30 = a1 + 32;
    v28 = v3;
    while (1)
    {
      v31 = v4;
      v6 = (v30 + 32 * v4);
      v8 = *v6;
      v7 = v6[1];
      v9 = v6[2];
      v10 = *(v6 + 24);
      v11 = *(v3 + 40);
      sub_1004A6E94();

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      if (v10 == 1)
      {
        sub_1004A6EC4(0);
      }

      else
      {
        sub_1004A6EC4(1u);
        sub_1004A6EF4(v9 >> 14);
      }

      result = sub_1004A6F14();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        do
        {
          v19 = v18 + 32 * v14;
          result = *v19;
          v20 = *(v19 + 16);
          v21 = *(v19 + 24);
          v22 = *v19 == v8 && *(v19 + 8) == v7;
          if (v22 || (result = sub_1004A6D34(), (result & 1) != 0))
          {
            if (v21)
            {
              if (v10)
              {
                goto LABEL_3;
              }
            }

            else
            {
              if (((v20 ^ v9) & 0xFFFFFFFFFFFFC000) != 0)
              {
                v23 = 1;
              }

              else
              {
                v23 = v10;
              }

              if ((v23 & 1) == 0)
              {
LABEL_3:

                v3 = v28;
                v1 = v29;
                goto LABEL_4;
              }
            }
          }

          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
        }

        while ((v16 & (1 << v14)) != 0);
        v3 = v28;
        v1 = v29;
        v18 = *(v28 + 48);
      }

      *(v5 + 8 * v15) = v16 | v17;
      v24 = v18 + 32 * v14;
      *v24 = v8;
      *(v24 + 8) = v7;
      *(v24 + 16) = v9;
      *(v24 + 24) = v10;
      v25 = *(v3 + 16);
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        break;
      }

      *(v3 + 16) = v27;
LABEL_4:
      v4 = v31 + 1;
      if (v31 + 1 == v1)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return _swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_1001CAFCC(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1001CDB68();
  result = sub_1004A5D64();
  v10 = result;
  if (v2)
  {
    v4 = (a1 + 56);
    do
    {
      v5 = *v4;
      v7 = *(v4 - 2);
      v6 = *(v4 - 1);
      v8 = *(v4 - 3);

      sub_100201734(v9, v8, v7, v6, v5);

      v4 += 32;
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_1001CB07C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = _s6LoggerVMa();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v71 - v13;
  v78 = type metadata accessor for ClientCommand(0);
  v15 = *(*(v78 - 8) + 64);
  __chkstk_darwin(v78);
  v79 = (&v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for ConnectionState();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001CDD1C(a3, v20, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    return sub_1001CDD84(v20, type metadata accessor for ConnectionState);
  }

  v75 = a3;
  v76 = a4;
  v72 = a2;
  v73 = v12;
  v71 = v8;
  v74 = v14;
  v77 = a1;
  v21 = *v20;
  v22 = *(v20 + 120);
  v23 = *(v20 + 152);
  v117 = *(v20 + 136);
  v118 = v23;
  v119 = *(v20 + 168);
  v24 = *(v20 + 56);
  v25 = *(v20 + 88);
  v113 = *(v20 + 72);
  v114 = v25;
  v115 = *(v20 + 104);
  v116 = v22;
  v26 = *(v20 + 24);
  v109 = *(v20 + 8);
  v110 = v26;
  v111 = *(v20 + 40);
  v112 = v24;
  v27 = *(v20 + 23);
  v28 = *(v20 + 21);
  v106 = *(v20 + 20);
  v107 = v28;
  v108 = *(v20 + 176);
  v29 = *(v20 + 17);
  v102 = *(v20 + 16);
  v103 = v29;
  v30 = *(v20 + 19);
  v104 = *(v20 + 18);
  v105 = v30;
  v31 = *(v20 + 13);
  v98 = *(v20 + 12);
  v99 = v31;
  v32 = *(v20 + 15);
  v100 = *(v20 + 14);
  v101 = v32;

  v33 = Capability.id.unsafeMutableAddressor();
  v34 = *v33;
  v35 = v33[1];
  v36 = v33[2];
  v37 = *(v33 + 24);

  LOBYTE(v34) = sub_100012A38(v34, v35, v36, v37, v21);
  v38 = v21;

  if ((v34 & 1) != 0 && (v39 = v77, (sub_1001B02D8(v27, v77) & 1) == 0))
  {
    v42 = v75;
    sub_1001CDD84(v75, type metadata accessor for ConnectionState);

    *&v97[120] = v116;
    *&v97[136] = v117;
    *&v97[152] = v118;
    *&v97[168] = v119;
    *&v97[56] = v112;
    *&v97[72] = v113;
    *&v97[88] = v114;
    *&v97[104] = v115;
    *&v97[8] = v109;
    *&v97[24] = v110;
    *&v97[40] = v111;
    *v97 = v21;
    *&v97[184] = v39;
    *&v97[320] = v106;
    *&v97[336] = v107;
    *&v97[352] = v108;
    *&v97[256] = v102;
    *&v97[272] = v103;
    *&v97[304] = v105;
    *&v97[288] = v104;
    *&v97[192] = v98;
    *&v97[208] = v99;
    *&v97[240] = v101;
    *&v97[224] = v100;
    memcpy(v42, v97, 0x162uLL);
    swift_storeEnumTagMultiPayload();

    sub_1001CD824(v97, v80);
    sub_1001E7A04(v39, v120);
    *(v80 + 7) = v120[0];
    *(&v80[2] + 7) = v120[1];
    *(&v80[4] + 7) = v120[2];
    *(&v80[6] + 7) = v120[3];
    *(&v80[8] + 7) = v121;
    v92 = 3;
    *&v93[16] = *&v80[2];
    *&v93[32] = *&v80[4];
    *&v93[48] = *&v80[6];
    *&v93[63] = *(&v80[7] + 7);
    *v93 = *v80;
    v95 = 0;
    v94 = 0;
    v96 = 0;
    v126 = v121;
    v124 = *&v93[39];
    v125 = *&v93[55];
    v122 = *&v93[7];
    v123 = *&v93[23];
    v43 = sub_1001E5658();
    v45 = v44;
    v47 = v46;
    sub_1001CD85C(&v92);
    v48 = v79;
    *v79 = v43;
    *(v48 + 8) = v45;
    *(v48 + 16) = v47;
    swift_storeEnumTagMultiPayload();

    v78 = CommandConnection.send(_:)(v48);
    v50 = v49;
    CommandConnection.flush()();
    sub_1001CDD84(v48, type metadata accessor for ClientCommand);
    if (v50)
    {
    }

    else
    {
      v75 = v47;
      v76 = v45;
      v79 = v43;
      v51 = v72;
      v52 = v74;
      sub_1001CDD1C(v72, v74, _s6LoggerVMa);
      v53 = v73;
      sub_1001CDD1C(v51, v73, _s6LoggerVMa);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();

      v54 = sub_1004A4A54();
      v55 = sub_1004A6034();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v72 = v38;
        v57 = v56;
        v80[0] = swift_slowAlloc();
        *v57 = 68158722;
        *(v57 + 4) = 2;
        *(v57 + 8) = 256;
        v58 = v71;
        v59 = *(v53 + *(v71 + 20));
        sub_1001CDD84(v53, _s6LoggerVMa);
        *(v57 + 10) = v59;
        *(v57 + 11) = 2082;
        v60 = *(v52 + *(v58 + 20) + 4);
        sub_1001CDD84(v52, _s6LoggerVMa);
        v61 = ConnectionID.debugDescription.getter(v60);
        v63 = sub_10015BA6C(v61, v62, v80);

        *(v57 + 13) = v63;
        *(v57 + 21) = 2080;
        v64 = sub_1001E7B4C(v77);
        if (v65)
        {
          v66 = v65;
        }

        else
        {
          v64 = 4999502;
          v66 = 0xE300000000000000;
        }

        v67 = sub_10015BA6C(v64, v66, v80);

        *(v57 + 23) = v67;
        *(v57 + 31) = 2082;
        v39 = v77;
        v68 = Tag.debugDescription.getter(v78 & 0xFFFFFFFF000000FFLL);
        v70 = sub_10015BA6C(v68, v69, v80);

        *(v57 + 33) = v70;
        _os_log_impl(&_mh_execute_header, v54, v55, "[%.*hhx-%{public}s] Sending connection traits %s as %{public}s", v57, 0x29u);
        swift_arrayDestroy();

        v38 = v72;
      }

      else
      {
        sub_1001CDD84(v53, _s6LoggerVMa);

        sub_1001CDD84(v52, _s6LoggerVMa);
      }
    }

    *&v80[15] = v116;
    *&v80[17] = v117;
    *&v80[19] = v118;
    *&v80[21] = v119;
    *&v80[7] = v112;
    *&v80[9] = v113;
    *&v80[11] = v114;
    *&v80[13] = v115;
    *&v80[1] = v109;
    *&v80[3] = v110;
    v80[0] = v38;
    *&v80[5] = v111;
    v80[23] = v39;
    v89 = v106;
    v90 = v107;
    v91 = v108;
    v85 = v102;
    v86 = v103;
    v88 = v105;
    v87 = v104;
    v81 = v98;
    v82 = v99;
    v84 = v101;
    v83 = v100;
    v41 = v80;
  }

  else
  {
    *&v97[120] = v116;
    *&v97[136] = v117;
    *&v97[152] = v118;
    *&v97[168] = v119;
    *&v97[56] = v112;
    *&v97[72] = v113;
    *&v97[88] = v114;
    *&v97[104] = v115;
    *&v97[8] = v109;
    *&v97[24] = v110;
    *&v97[40] = v111;
    *v97 = v21;
    *&v97[184] = v27;
    *&v97[320] = v106;
    *&v97[336] = v107;
    *&v97[352] = v108;
    *&v97[256] = v102;
    *&v97[272] = v103;
    *&v97[304] = v105;
    *&v97[288] = v104;
    *&v97[192] = v98;
    *&v97[208] = v99;
    *&v97[240] = v101;
    *&v97[224] = v100;
    v41 = v97;
  }

  return sub_1001ACFCC(v41);
}

Swift::Int sub_1001CB9CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C9C0(&qword_1005D3FA8, &qword_1004DF4A0);
    v2 = sub_1004A66B4();
    v3 = v2 + 56;
    while (1)
    {
      v4 = *(v2 + 40);
      sub_1004A6E94();
      sub_1004A6EB4(0);
      result = sub_1004A6F14();
      v6 = result & ~(-1 << *(v2 + 32));
      v7 = v6 >> 6;
      v8 = *(v3 + 8 * (v6 >> 6));
      v9 = 1 << v6;
      if ((v9 & v8) == 0)
      {
        *(v3 + 8 * v7) = v9 | v8;
        v10 = *(v2 + 16);
        v11 = __OFADD__(v10, 1);
        v12 = v10 + 1;
        if (v11)
        {
          __break(1u);
          return result;
        }

        *(v2 + 16) = v12;
      }

      if (!--v1)
      {
        return v2;
      }
    }
  }

  return _swiftEmptySetSingleton;
}

uint64_t sub_1001CBAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v60 = a5;
  v61 = type metadata accessor for ClientCommand(0);
  v11 = *(*(v61 - 8) + 64);
  __chkstk_darwin(v61);
  v13 = &v55[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v59 = _s6LoggerVMa();
  v14 = *(*(v59 - 8) + 64);
  v15 = __chkstk_darwin(v59);
  v17 = &v55[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __chkstk_darwin(v15);
  v20 = &v55[-v19];
  v21 = __chkstk_darwin(v18);
  v23 = &v55[-v22];
  __chkstk_darwin(v21);
  v25 = &v55[-v24];
  if (a2 < 0)
  {
    sub_1001CDD1C(a4, v20, _s6LoggerVMa);
    sub_1001CDD1C(a4, v17, _s6LoggerVMa);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();

    v39 = sub_1004A4A54();
    v40 = sub_1004A6034();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v60 = a1;
      v42 = v41;
      v57 = swift_slowAlloc();
      v64 = v57;
      *v42 = 68158723;
      *(v42 + 4) = 2;
      *(v42 + 8) = 256;
      v43 = v59;
      v44 = *(v59 + 20);
      v56 = v40;
      v45 = v17[v44];
      v58 = a6;
      sub_1001CDD84(v17, _s6LoggerVMa);
      *(v42 + 10) = v45;
      *(v42 + 11) = 2082;
      v46 = *&v20[*(v43 + 20) + 4];
      sub_1001CDD84(v20, _s6LoggerVMa);
      v47 = ConnectionID.debugDescription.getter(v46);
      v49 = sub_10015BA6C(v47, v48, &v64);

      *(v42 + 13) = v49;
      *(v42 + 21) = 2160;
      *(v42 + 23) = 0x786F626C69616DLL;
      *(v42 + 31) = 2085;
      v62 = v60;
      v63 = a2;

      v50 = sub_1004A5824();
      v52 = sub_10015BA6C(v50, v51, &v64);

      *(v42 + 33) = v52;
      _os_log_impl(&_mh_execute_header, v39, v56, "[%.*hhx-%{public}s] Mailbox selection: Requesting mailbox status '%{sensitive,mask.mailbox}s'.", v42, 0x29u);
      swift_arrayDestroy();

      a1 = v60;
    }

    else
    {
      sub_1001CDD84(v17, _s6LoggerVMa);

      sub_1001CDD84(v20, _s6LoggerVMa);
    }

    *v13 = a1;
    *(v13 + 2) = a2;
    *(v13 + 2) = a3;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_1001CDD1C(a4, &v55[-v24], _s6LoggerVMa);
    sub_1001CDD1C(a4, v23, _s6LoggerVMa);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();

    v26 = sub_1004A4A54();
    v27 = sub_1004A6034();
    sub_1001CD630(a1, a2);
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v56 = v27;
      v29 = v28;
      v57 = swift_slowAlloc();
      v64 = v57;
      *v29 = 68158723;
      *(v29 + 4) = 2;
      *(v29 + 8) = 256;
      v30 = v59;
      v31 = v23[*(v59 + 20)];
      v58 = a6;
      sub_1001CDD84(v23, _s6LoggerVMa);
      *(v29 + 10) = v31;
      *(v29 + 11) = 2082;
      v32 = *&v25[*(v30 + 20) + 4];
      sub_1001CDD84(v25, _s6LoggerVMa);
      v33 = ConnectionID.debugDescription.getter(v32);
      v35 = sub_10015BA6C(v33, v34, &v64);

      *(v29 + 13) = v35;
      *(v29 + 21) = 2160;
      *(v29 + 23) = 0x786F626C69616DLL;
      *(v29 + 31) = 2085;
      v62 = a1;
      v63 = a2;

      v36 = sub_1004A5824();
      v38 = sub_10015BA6C(v36, v37, &v64);

      *(v29 + 33) = v38;
      _os_log_impl(&_mh_execute_header, v26, v56, "[%.*hhx-%{public}s] Selecting mailbox '%{sensitive,mask.mailbox}s'.", v29, 0x29u);
      swift_arrayDestroy();
    }

    else
    {
      sub_1001CDD84(v23, _s6LoggerVMa);

      sub_1001CDD84(v25, _s6LoggerVMa);
    }

    *v13 = a1;
    *(v13 + 2) = a2;
    *(v13 + 2) = v60;
    swift_storeEnumTagMultiPayload();
  }

  v53 = CommandConnection.send(_:)(v13);
  CommandConnection.flush()();
  sub_1001CDD84(v13, type metadata accessor for ClientCommand);
  return v53;
}

Swift::Int sub_1001CC154(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_10000C9C0(a2, a3);
    v5 = sub_1004A66B4();
    v6 = 0;
    v7 = v5 + 56;
    v8 = a1 + 32;
    while (1)
    {
      v12 = *(v8 + v6);
      v13 = *(v5 + 40);
      sub_1004A6E94();
      sub_1004A6EB4(v12);
      result = sub_1004A6F14();
      v15 = ~(-1 << *(v5 + 32));
      v16 = result & v15;
      v17 = (result & v15) >> 6;
      v18 = *(v7 + 8 * v17);
      v19 = 1 << (result & v15);
      v20 = *(v5 + 48);
      if ((v19 & v18) != 0)
      {
        while (*(v20 + v16) != v12)
        {
          v16 = (v16 + 1) & v15;
          v17 = v16 >> 6;
          v18 = *(v7 + 8 * (v16 >> 6));
          v19 = 1 << v16;
          if (((1 << v16) & v18) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v7 + 8 * v17) = v19 | v18;
        *(v20 + v16) = v12;
        v9 = *(v5 + 16);
        v10 = __OFADD__(v9, 1);
        v11 = v9 + 1;
        if (v10)
        {
          __break(1u);
          return result;
        }

        *(v5 + 16) = v11;
      }

      if (++v6 == v3)
      {
        return v5;
      }
    }
  }

  return _swiftEmptySetSingleton;
}

int8x16_t sub_1001CC288(uint64_t a1)
{
  v1 = *(a1 + 160);
  v2 = *(a1 + 72) & 0x1FFFFFFFFLL;
  v3 = *(a1 + 88) & 0x1E101FFLL;
  *(a1 + 48) &= 0x1FFFFFFFFuLL;
  *(a1 + 72) = v2;
  *(a1 + 88) = v3;
  *(a1 + 112) = vandq_s8(*(a1 + 112), xmmword_1004DDD00);
  result = vandq_s8(*(a1 + 136), vdupq_n_s64(0x1FFFFFFFFuLL));
  *(a1 + 136) = result;
  *(a1 + 160) = v1 & 0x1FF | 0x4000;
  return result;
}

uint64_t sub_1001CC2F0()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[7];

  return _swift_deallocObject(v0, 91, 7);
}

unint64_t sub_1001CC33C()
{
  result = qword_1005D3EF8;
  if (!qword_1005D3EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D3EF8);
  }

  return result;
}

uint64_t sub_1001CC390()
{
  result = sub_1004A4E34();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for UnauthenticatedStateWithTasks();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001CC428(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1001CC440(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1001CC458(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001CC46C(uint64_t a1)
{
  if ((*(a1 + 72) | (*(a1 + 74) << 16)) << 8 >> 8 >= 0)
  {
    return *(a1 + 74) >> 5;
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_1001CC4A8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 354))
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

uint64_t sub_1001CC4F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 344) = 0;
    *(result + 248) = 0u;
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
    *(result + 328) = 0u;
    *(result + 352) = 0;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 354) = 1;
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

    *(result + 354) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001CC5B0(uint64_t a1)
{
  if ((*(a1 + 12) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 12) & 3;
  }
}

uint64_t sub_1001CC5CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 13))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 12);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1001CC614(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 13) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 13) = 0;
    }

    if (a2)
    {
      *(result + 12) = -a2;
    }
  }

  return result;
}

uint64_t sub_1001CC65C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 12) = a2;
  return result;
}

__n128 sub_1001CC688(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 80);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1001CC6C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 162))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 72) >> 2) & 0x80000000 | (*(a1 + 48) >> 33);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1001CC724(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 152) = 0;
    result = 0.0;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 160) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 162) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = -a2 << 33;
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
      *(a1 + 72) = 0x200000000;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0u;
      *(a1 + 128) = 0u;
      *(a1 + 144) = 0u;
      *(a1 + 160) = 0;
      return result;
    }

    *(a1 + 162) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

int8x16_t sub_1001CC7B8(uint64_t a1, __int16 a2)
{
  v2 = *(a1 + 72) & 0x1FFFFFFFFLL;
  v3 = *(a1 + 88) & 0x1E101FFLL;
  v4 = *(a1 + 160) & 0x1FF | (a2 << 14);
  *(a1 + 48) &= 0x1FFFFFFFFuLL;
  *(a1 + 72) = v2;
  *(a1 + 88) = v3;
  *(a1 + 112) = vandq_s8(*(a1 + 112), xmmword_1004DDD00);
  result = vandq_s8(*(a1 + 136), vdupq_n_s64(0x1FFFFFFFFuLL));
  *(a1 + 136) = result;
  *(a1 + 160) = v4;
  return result;
}

unint64_t sub_1001CC830(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {

    return sub_10010E7C0(a3, a4, a5);
  }

  return result;
}

uint64_t sub_1001CC888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v60 = a5;
  v61 = type metadata accessor for ClientCommand(0);
  v11 = *(*(v61 - 8) + 64);
  __chkstk_darwin(v61);
  v13 = &v55[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v59 = _s6LoggerVMa();
  v14 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59);
  v16 = &v55[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v19 = &v55[-v18];
  __chkstk_darwin(v20);
  v22 = &v55[-v21];
  __chkstk_darwin(v23);
  v25 = &v55[-v24];
  if (a2 < 0)
  {
    sub_1001CDD1C(a4, v19, _s6LoggerVMa);
    sub_1001CDD1C(a4, v16, _s6LoggerVMa);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();

    v39 = sub_1004A4A54();
    v40 = sub_1004A6034();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v60 = a1;
      v42 = v41;
      v57 = swift_slowAlloc();
      v64 = v57;
      *v42 = 68158723;
      *(v42 + 4) = 2;
      *(v42 + 8) = 256;
      v43 = v59;
      v44 = *(v59 + 20);
      v56 = v40;
      v45 = v16[v44];
      v58 = a6;
      sub_1001CDD84(v16, _s6LoggerVMa);
      *(v42 + 10) = v45;
      *(v42 + 11) = 2082;
      v46 = *&v19[*(v43 + 20) + 4];
      sub_1001CDD84(v19, _s6LoggerVMa);
      v47 = ConnectionID.debugDescription.getter(v46);
      v49 = sub_10015BA6C(v47, v48, &v64);

      *(v42 + 13) = v49;
      *(v42 + 21) = 2160;
      *(v42 + 23) = 0x786F626C69616DLL;
      *(v42 + 31) = 2085;
      v62 = v60;
      v63 = a2;

      v50 = sub_1004A5824();
      v52 = sub_10015BA6C(v50, v51, &v64);

      *(v42 + 33) = v52;
      _os_log_impl(&_mh_execute_header, v39, v56, "[%.*hhx-%{public}s] Mailbox selection: Requesting mailbox status '%{sensitive,mask.mailbox}s'.", v42, 0x29u);
      swift_arrayDestroy();

      a1 = v60;
    }

    else
    {
      sub_1001CDD84(v16, _s6LoggerVMa);

      sub_1001CDD84(v19, _s6LoggerVMa);
    }

    *v13 = a1;
    *(v13 + 2) = a2;
    *(v13 + 2) = a3;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_1001CDD1C(a4, &v55[-v24], _s6LoggerVMa);
    sub_1001CDD1C(a4, v22, _s6LoggerVMa);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();

    v26 = sub_1004A4A54();
    v27 = sub_1004A6034();
    sub_1001CD630(a1, a2);
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v56 = v27;
      v29 = v28;
      v57 = swift_slowAlloc();
      v64 = v57;
      *v29 = 68158723;
      *(v29 + 4) = 2;
      *(v29 + 8) = 256;
      v30 = v59;
      v31 = v22[*(v59 + 20)];
      v58 = a6;
      sub_1001CDD84(v22, _s6LoggerVMa);
      *(v29 + 10) = v31;
      *(v29 + 11) = 2082;
      v32 = *&v25[*(v30 + 20) + 4];
      sub_1001CDD84(v25, _s6LoggerVMa);
      v33 = ConnectionID.debugDescription.getter(v32);
      v35 = sub_10015BA6C(v33, v34, &v64);

      *(v29 + 13) = v35;
      *(v29 + 21) = 2160;
      *(v29 + 23) = 0x786F626C69616DLL;
      *(v29 + 31) = 2085;
      v62 = a1;
      v63 = a2;

      v36 = sub_1004A5824();
      v38 = sub_10015BA6C(v36, v37, &v64);

      *(v29 + 33) = v38;
      _os_log_impl(&_mh_execute_header, v26, v56, "[%.*hhx-%{public}s] Selecting mailbox '%{sensitive,mask.mailbox}s'.", v29, 0x29u);
      swift_arrayDestroy();
    }

    else
    {
      sub_1001CDD84(v22, _s6LoggerVMa);

      sub_1001CDD84(v25, _s6LoggerVMa);
    }

    *v13 = a1;
    *(v13 + 2) = a2;
    *(v13 + 2) = v60;
    swift_storeEnumTagMultiPayload();
  }

  v53 = CommandConnection.send(_:)(v13);
  sub_1001CDD84(v13, type metadata accessor for ClientCommand);
  return v53;
}

uint64_t sub_1001CCF00(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, void *, uint64_t), uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, void *, uint64_t), uint64_t a5)
{
  v10 = type metadata accessor for ConnectionState();
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v81 - v15;
  swift_retain_n();
  v17 = sub_1001C964C();
  sub_1001CDD1C(a2, v16, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() != 2)
  {

    sub_1001CDD84(v16, type metadata accessor for ConnectionState);
    goto LABEL_20;
  }

  v89 = a5;
  sub_1001CDD84(a2, type metadata accessor for ConnectionState);
  memcpy(v120, v16, 0x162uLL);
  v18 = *(v16 + 19);
  v19 = *(v16 + 21);
  v114 = *(v16 + 20);
  v115 = v19;
  v20 = *(v16 + 15);
  v21 = *(v16 + 17);
  v110 = *(v16 + 16);
  v111 = v21;
  v22 = *(v16 + 17);
  v23 = *(v16 + 19);
  v112 = *(v16 + 18);
  v113 = v23;
  v24 = *(v16 + 13);
  v106 = *(v16 + 12);
  v107 = v24;
  v25 = *(v16 + 15);
  v27 = *(v16 + 12);
  v26 = *(v16 + 13);
  v108 = *(v16 + 14);
  v109 = v25;
  v28 = *(v16 + 21);
  v117[8] = v114;
  v117[9] = v28;
  v117[4] = v110;
  v117[5] = v22;
  v117[6] = v112;
  v117[7] = v18;
  v117[0] = v27;
  v117[1] = v26;
  v116 = *(v16 + 176);
  v118 = *(v16 + 176);
  v117[2] = v108;
  v117[3] = v20;
  if (sub_1001ACFC0(v117) == 1)
  {
    v87 = a4;
    v90 = a1;
    v29 = sub_1001AD074(v117);
    v97[8] = v120[20];
    v97[9] = v120[21];
    v98 = v120[22];
    v97[4] = v120[16];
    v97[5] = v120[17];
    v97[6] = v120[18];
    v97[7] = v120[19];
    v97[0] = v120[12];
    v97[1] = v120[13];
    v97[2] = v120[14];
    v97[3] = v120[15];
    v99[8] = v114;
    v99[9] = v115;
    v100 = v116;
    v99[4] = v110;
    v99[5] = v111;
    v99[6] = v112;
    v99[7] = v113;
    v99[0] = v106;
    v99[1] = v107;
    v99[2] = v108;
    v99[3] = v109;
    v30 = sub_1001AD074(v99);
    sub_1001AD084(v30, &v91);
    sub_1001AD020(v97);
    v31 = *v29;
    v32 = *(v29 + 8);
    v105 = *v29;
    v33 = *(v29 + 16);
    v34 = *(v29 + 24);
    v35 = *(v29 + 32);
    v36 = *(v29 + 40);
    v38 = *(v29 + 48);
    v37 = *(v29 + 56);
    v39 = *(v29 + 64);
    v40 = *(v29 + 72);
    v41 = *(v29 + 80);
    v42 = *(v29 + 88) | (*(v29 + 90) << 16);
    v43 = *(v29 + 91);
    v44 = *(v29 + 107);
    v45 = *(v29 + 123);
    v46 = *(v29 + 139);
    *(v104 + 15) = *(v29 + 154);
    v103 = v45;
    v104[0] = v46;
    v101 = v43;
    v102 = v44;
    if ((v42 & 0xE00000) == 0x800000)
    {
      v47 = v38 | v37 | v39;
      if (!(v35 | v34 | v33 | v36 | v47 | v40 | v41) && v42 == 0x800000)
      {
        v88 = v38;
        v89 = v33;
        v81 = v40;
        v82 = v39;
        v83 = v41;
        v84 = v37;
        v85 = v35;
        v86 = v34;
        v48 = v31;
        v49 = v32;

        v50 = v87(v48, v49, 0, v90, v17, a3);
        LOBYTE(v48) = v51;

        if (v48)
        {
          v52 = 0x800000;
          v54 = v85;
          v53 = v86;
          v56 = v83;
          v55 = v84;
          v38 = v88;
          v57 = v89;
          v59 = v81;
          v58 = v82;
        }

        else
        {
          v70 = v88;
          v72 = v85;
          v71 = v86;
          *&v91 = v89;
          *(&v91 + 1) = v86;
          *&v92 = v85;
          *(&v92 + 1) = v36;
          v88 = v10;
          v89 = v50;
          v73 = v83;
          v74 = v84;
          *&v93 = v70;
          *(&v93 + 1) = v84;
          *&v94 = v82;
          *(&v94 + 1) = v81;
          *&v95 = v83;
          BYTE10(v95) = 0x80;
          WORD4(v95) = 0;
          sub_1001CD5DC(&v91);
          v56 = v73;
          v57 = v89;
          v55 = v74;
          v54 = v72;
          v53 = v71;
          v38 = 0;
          v58 = 0;
          v59 = 0;
          v52 = 0;
        }

        goto LABEL_18;
      }

      if (v42 == 0x800000 && v33 == 1 && !(v35 | v34 | v36 | v47 | v40 | v41))
      {
        v81 = v40;
        v82 = v39;
        v83 = v41;
        v84 = v37;
        v85 = v35;
        v86 = v34;
        v88 = v32;

        v89 = v87(v60, v88 | 0x8000000000000000, v89, v90, v17, a3);
        LODWORD(v88) = v61;

        if (v88)
        {
          v52 = 0x800000;
          v57 = 1;
          v54 = v85;
          v53 = v86;
          v56 = v83;
          v55 = v84;
          v59 = v81;
          v58 = v82;
        }

        else
        {
          v75 = v86;
          *&v91 = 1;
          *(&v91 + 1) = v86;
          v76 = v38;
          v78 = v84;
          v77 = v85;
          *&v92 = v85;
          *(&v92 + 1) = v36;
          *&v93 = v76;
          *(&v93 + 1) = v84;
          *&v94 = v82;
          *(&v94 + 1) = v81;
          v88 = v10;
          v79 = v83;
          *&v95 = v83;
          BYTE10(v95) = 0x80;
          WORD4(v95) = 0;
          sub_1001CD5DC(&v91);
          v56 = v79;
          v57 = v89;
          v55 = v78;
          v54 = v77;
          v53 = v75;
          v38 = 0;
          v58 = 0;
          v59 = 0;
          v52 = 0x200000;
        }

        goto LABEL_18;
      }
    }

    v88 = v38;
    v89 = v33;
    v62 = v34;
    v85 = a3;
    v86 = v14;
    v63 = v36;
    v64 = v35;
    v65 = v37;
    v87 = a2;
    v66 = v41;
    v67 = v39;
    v68 = v40;
    v69 = v42;

    v52 = v69;
    v59 = v68;
    v58 = v67;
    v56 = v66;
    v38 = v88;
    v57 = v89;
    v14 = v86;
    a2 = v87;
    v55 = v65;
    v54 = v64;
    v36 = v63;
    v53 = v62;
LABEL_18:
    v91 = v105;
    *(&v96[1] + 11) = v102;
    *(&v96[2] + 11) = v103;
    *(&v96[3] + 11) = v104[0];
    *&v92 = v57;
    *(&v92 + 1) = v53;
    *&v93 = v54;
    *(&v93 + 1) = v36;
    *&v94 = v38;
    *(&v94 + 1) = v55;
    *&v95 = v58;
    *(&v95 + 1) = v59;
    *&v96[0] = v56;
    WORD4(v96[0]) = v52;
    BYTE10(v96[0]) = BYTE2(v52);
    *(&v96[4] + 10) = *(v104 + 15);
    *(v96 + 11) = v101;
    sub_1001CC288(&v91);
    v120[20] = v96[3];
    v120[21] = v96[4];
    LOWORD(v120[22]) = v96[5];
    v120[16] = v95;
    v120[17] = v96[0];
    v120[18] = v96[1];
    v120[19] = v96[2];
    v120[12] = v91;
    v120[13] = v92;
    v120[14] = v93;
    v120[15] = v94;
    a1 = v90;
    goto LABEL_19;
  }

LABEL_19:
  memcpy(a2, v120, 0x162uLL);
  swift_storeEnumTagMultiPayload();
LABEL_20:
  sub_1001CDD1C(a2, v14, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_1001CDD84(a2, type metadata accessor for ConnectionState);
    memcpy(v119, v14, sizeof(v119));
    sub_1001C97B4(&v119[192], a1);
    memcpy(a2, v119, 0x162uLL);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_1001CDD84(v14, type metadata accessor for ConnectionState);
  }
}

uint64_t sub_1001CD630(uint64_t a1, uint64_t a2)
{

  if (a2 < 0)
  {
  }

  return result;
}

int8x16_t sub_1001CD6D8(uint64_t a1)
{
  v1 = *(a1 + 72) & 0x1FFFFFFFFLL;
  v2 = *(a1 + 88) & 0x1E101FFLL;
  v3 = *(a1 + 160) & 0x1FF;
  *(a1 + 48) &= 0x1FFFFFFFFuLL;
  *(a1 + 72) = v1;
  *(a1 + 88) = v2;
  *(a1 + 112) = vandq_s8(*(a1 + 112), xmmword_1004DDD00);
  result = vandq_s8(*(a1 + 136), vdupq_n_s64(0x1FFFFFFFFuLL));
  *(a1 + 136) = result;
  *(a1 + 160) = v3;
  return result;
}

unint64_t sub_1001CD73C(unint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 != 0xFF)
  {
    return sub_10001123C(result, a2, a3, a4);
  }

  return result;
}

int8x16_t sub_1001CD750(uint64_t a1)
{
  v1 = *(a1 + 160);
  v2 = *(a1 + 72) & 0x1FFFFFFFFLL;
  v3 = *(a1 + 88) & 0x1E101FFLL;
  *(a1 + 48) &= 0x1FFFFFFFFuLL;
  *(a1 + 72) = v2;
  *(a1 + 88) = v3;
  *(a1 + 112) = vandq_s8(*(a1 + 112), xmmword_1004DDD00);
  result = vandq_s8(*(a1 + 136), vdupq_n_s64(0x1FFFFFFFFuLL));
  *(a1 + 136) = result;
  *(a1 + 160) = v1 & 0x1FF | 0x8000;
  return result;
}

unint64_t sub_1001CD7B8()
{
  result = qword_1005D3FB8;
  if (!qword_1005D3FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D3FB8);
  }

  return result;
}

uint64_t sub_1001CD80C(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_10018E150(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1001CD904(uint64_t a1)
{
  v1 = *(a1 + 184);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001CD918()
{
  v1 = *(_s6LoggerVMa() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_1004A4A74();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_1001CD9F0(uint64_t a1)
{
  v3 = *(_s6LoggerVMa() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_1001C9094(a1, v1 + v4, v6, v7);
}

uint64_t sub_1001CDA98(uint64_t result)
{
  if ((result & 0x8000000000000000) == 0)
  {
  }

  return result;
}

uint64_t sub_1001CDB04(uint64_t result)
{
  if ((result & 0x8000000000000000) == 0)
  {
  }

  return result;
}

unint64_t sub_1001CDB68()
{
  result = qword_1005D3FF0;
  if (!qword_1005D3FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D3FF0);
  }

  return result;
}

uint64_t sub_1001CDC18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_1001CDCD4@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v3(v7);
  v5 = v7[1];
  *a1 = v7[0];
  a1[1] = v5;
  result = *&v8;
  a1[2] = v8;
  return result;
}

uint64_t sub_1001CDD1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001CDD84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1001CDDE4(unint64_t result)
{
  if (result <= 0xFFFFFFFEFFFFFFFFLL)
  {
    return sub_1001AD7F8(result);
  }

  return result;
}

uint64_t sub_1001CDE08(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6C69662D6B636162;
    }

    else
    {
      v4 = 0x72657865646E69;
    }

    if (v2)
    {
      v3 = 0xE90000000000006CLL;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE800000000000000;
    v4 = 0x6574616E6F646572;
  }

  else if (a1 == 3)
  {
    v3 = 0xE800000000000000;
    v4 = 0x6369646F69726570;
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 1752397168;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6C69662D6B636162;
    }

    else
    {
      v9 = 0x72657865646E69;
    }

    if (a2)
    {
      v8 = 0xE90000000000006CLL;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE800000000000000;
    v6 = 0x6369646F69726570;
    if (a2 != 3)
    {
      v6 = 1752397168;
      v5 = 0xE400000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x6574616E6F646572;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_1004A6D34();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t ConnectionTrait.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x72657865646E69;
  v2 = 0x6574616E6F646572;
  v3 = 0x6369646F69726570;
  if (a1 != 3)
  {
    v3 = 1752397168;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x6C69662D6B636162;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1001CE034@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s15IMAP2Connection0B5TraitO8rawValueACSgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_1001CE064(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x72657865646E69;
  v5 = 0xE800000000000000;
  v6 = 0x6574616E6F646572;
  v7 = 0xE800000000000000;
  v8 = 0x6369646F69726570;
  if (v2 != 3)
  {
    v8 = 1752397168;
    v7 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6C69662D6B636162;
    v3 = 0xE90000000000006CLL;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

Swift::Int sub_1001CE100()
{
  v1 = *v0;
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

uint64_t sub_1001CE1E0()
{
  *v0;
  *v0;
  *v0;
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

Swift::Int sub_1001CE2AC()
{
  v1 = *v0;
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

uint64_t _s15IMAP2Connection0B5TraitO8rawValueACSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005A3D58;
  v6._object = a2;
  v4 = sub_1004A6AF4(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1001CE3D8()
{
  result = qword_1005D4008;
  if (!qword_1005D4008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D4008);
  }

  return result;
}

unint64_t ConnectionUsage.nonMailboxUsage.setter(uint64_t a1)
{
  result = sub_10001324C(*(v1 + 8));
  *(v1 + 8) = a1;
  return result;
}

BOOL static ConnectionUsage.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((_s15IMAP2Connection23MailboxesSelectionUsageV23__derived_struct_equalsySbAC_ACtFZ_0(a1, a3) & 1) == 0)
  {
    return 0;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      if (a4 != 1)
      {
        return 0;
      }
    }

    else if (a4 < 2 || (sub_1001B42A0(a2, a4) & 1) == 0)
    {
      return 0;
    }

    return 1;
  }

  return !a4;
}

uint64_t static ConnectionUsage.NonMailboxUsage.__derived_enum_equals(_:_:)(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return !a2;
  }

  if (a1 == 1)
  {
    return a2 == 1;
  }

  if (a2 < 2)
  {
    return 0;
  }

  return sub_1001B42A0();
}

BOOL sub_1001CE544(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((_s15IMAP2Connection23MailboxesSelectionUsageV23__derived_struct_equalsySbAC_ACtFZ_0(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      if (v3 != 1)
      {
        return 0;
      }
    }

    else if (v3 < 2 || (sub_1001B42A0(v2, v3) & 1) == 0)
    {
      return 0;
    }

    return 1;
  }

  return !v3;
}

uint64_t sub_1001CE5CC(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!v2)
  {
    return !v3;
  }

  if (v2 == 1)
  {
    return v3 == 1;
  }

  if (v3 < 2)
  {
    return 0;
  }

  return sub_1001B42A0();
}

uint64_t ConnectionUsage.usage(_:)(Swift::UInt32 a1, uint64_t a2, unint64_t a3)
{
  if (a3 >= 2)
  {
    v3 = a1;
    v4 = a2;
    v5 = sub_1001AF9C0(a1, a3);
    a2 = v4;
    v6 = v5;
    a1 = v3;
    if (v6)
    {
      return 1;
    }
  }

  if (!MailboxesSelectionUsage.subscript.getter(a1, a2))
  {
    return 0;
  }

  v7 = v8;

  return v7;
}

uint64_t _s15IMAP2Connection07CommandB0C12RecentErrorsV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v11 = (&v19 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_11:
    v17 = 0;
    return v17 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_1001CEEE4(v14, v11);
      sub_1001CEEE4(v15, v7);
      if (*v11 != *v7)
      {
        break;
      }

      v17 = _s15IMAP2Connection07CommandB0C12RecentErrorsV5ErrorV4KindO21__derived_enum_equalsySbAI_AItFZ_0(v11 + *(v4 + 20), v7 + *(v4 + 20));
      sub_1001CEF48(v7);
      sub_1001CEF48(v11);
      if (v17)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v17 & 1;
    }

    sub_1001CEF48(v7);
    sub_1001CEF48(v11);
    goto LABEL_11;
  }

  v17 = 1;
  return v17 & 1;
}

uint64_t sub_1001CE84C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(a2 + 48);
    v6 = *(a2 + 56);
    v7 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
    if (v7 || (v8 = a1, v9 = *(a1 + 32), v10 = a2, v11 = sub_1004A6D34(), a2 = v10, v12 = v11, a1 = v8, (v12 & 1) != 0))
    {
      v13 = (a1 + 88);
      v14 = v2 - 1;
      for (i = (a2 + 88); ; i += 32)
      {
        if (v4)
        {
          if ((v6 & 1) == 0)
          {
            return 0;
          }
        }

        else if (v6 & 1 | (((v5 ^ v3) & 0xFFFFFFFFFFFFC000) != 0))
        {
          return 0;
        }

        if (!v14)
        {
          break;
        }

        v3 = *(v13 - 1);
        v4 = *v13;
        v5 = *(i - 1);
        v6 = *i;
        v16 = *(v13 - 3) == *(i - 3) && *(v13 - 2) == *(i - 2);
        if (!v16 && (sub_1004A6D34() & 1) == 0)
        {
          return 0;
        }

        v13 += 32;
        --v14;
      }

      return 1;
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1001CE964(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = *(v3 - 2);
      v9 = *(v3 - 1);
      v10 = *v3;
      if (v7 <= 2)
      {
        break;
      }

      if (*i <= 4u)
      {
        if (v7 == 3)
        {
          if (v10 != 3)
          {
            return 0;
          }
        }

        else if (v10 != 4)
        {
          return 0;
        }

LABEL_24:
        if ((v5 != v8 || v6 != v9) && (sub_1004A6D34() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_6;
      }

      if (v7 == 5)
      {
        if (v10 != 5)
        {
          return 0;
        }

        goto LABEL_24;
      }

      if (v5 > 1)
      {
        v12 = v5 ^ 2;
        result = 0;
        if (v12 | v6)
        {
          if (v10 != 6 || v8 != 3)
          {
            return result;
          }
        }

        else if (v10 != 6 || v8 != 2)
        {
          return result;
        }

LABEL_41:
        if (v9)
        {
          return result;
        }

        goto LABEL_6;
      }

      if (v5 | v6)
      {
        if (v10 != 6)
        {
          return 0;
        }

        result = 0;
        if (v8 != 1)
        {
          return result;
        }

        goto LABEL_41;
      }

      result = 0;
      if (v10 != 6 || v9 | v8)
      {
        return result;
      }

LABEL_6:
      v3 += 24;
      if (!--v2)
      {
        return 1;
      }
    }

    if (*i)
    {
      if (v7 == 1)
      {
        if (v10 != 1)
        {
          return 0;
        }
      }

      else if (v10 != 2)
      {
        return 0;
      }
    }

    else if (*v3)
    {
      return 0;
    }

    goto LABEL_24;
  }

  return 1;
}

uint64_t _s15IMAP2Connection23MailboxesSelectionUsageV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = result + 32;
  v5 = a2 + 32;
  while (v3 != v2)
  {
    v6 = v4 + 40 * v3;
    v7 = v5 + 40 * v3;
    if (*v6 != *v7)
    {
      return 0;
    }

    if ((*(v6 + 16) | (*(v6 + 16) << 32)) != (*(v7 + 16) | (*(v7 + 16) << 32)))
    {
      return 0;
    }

    v8 = *(v6 + 8);
    v9 = *(v7 + 8);
    v10 = *(v8 + 16);
    if (v10 != *(v9 + 16))
    {
      return 0;
    }

    v11 = *(v6 + 24);
    v12 = *(v6 + 32);
    v13 = *(v7 + 24);
    v14 = *(v7 + 32);
    if (v10)
    {
      v15 = v8 == v9;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      v16 = (v8 + 32);
      result = v9 + 32;
      while (v10)
      {
        if (*v16 != *result)
        {
          return 0;
        }

        ++v16;
        ++result;
        if (!--v10)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
      break;
    }

LABEL_17:
    if (v12)
    {
      if (v11)
      {
        if (v11 == 1)
        {
          if (v13 != 1)
          {
            LOBYTE(v14) = 0;
          }

          if ((v14 & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          if (v13 <= 1)
          {
            v14 = 0;
          }

          if (v14 != 1)
          {
            return 0;
          }
        }
      }

      else
      {
        if (v13)
        {
          LOBYTE(v14) = 0;
        }

        if ((v14 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else
    {
      if (v11 != v13)
      {
        LOBYTE(v14) = 1;
      }

      if (v14)
      {
        return 0;
      }
    }

    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001CEC44(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001CEC98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1001CECF4(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_1001CED24(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v36 = v2;
  v37 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[3];
    v20 = v5[2];
    v21 = v8;
    v9 = v5[4];
    v10 = v5[1];
    v18 = *v5;
    v19 = v10;
    v11 = v6[3];
    v25 = v6[2];
    v26 = v11;
    v27 = v6[4];
    v12 = *v6;
    v24 = v6[1];
    v22 = v9;
    v23 = v12;
    v13 = v10;
    if ((*(&v21 + 1) & 0x1000000000000000) != 0)
    {
      v28[0] = v18;
      v28[1] = v19;
      v28[2] = v20;
      v29 = v21;
      v30 = *(&v21 + 1) & 0xEFFFFFFFFFFFFFFFLL;
      v31 = v22;
      if ((*(&v26 + 1) & 0x1000000000000000) == 0)
      {
        return 0;
      }

      v32[0] = v23;
      v32[1] = v24;
      v32[2] = v25;
      v33 = v26;
      v34 = *(&v26 + 1) & 0xEFFFFFFFFFFFFFFFLL;
      v35 = v27;
      sub_10019782C(&v23, v17);
      sub_10019782C(&v18, v17);
      v15 = sub_1001EFF14(v28, v32);
      sub_100193BF0(&v23);
      sub_100193BF0(&v18);
      if ((v15 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if ((HIBYTE(v26) & 0x10) != 0)
      {
        return 0;
      }

      v14 = v24;
      if (v18 != v23 && (sub_1004A6D34() & 1) == 0)
      {
        return 0;
      }

      if (v13 != v14 && (sub_1004A6D34() & 1) == 0)
      {
        return 0;
      }
    }

    if (!i)
    {
      break;
    }

    v6 += 5;
    v5 += 5;
  }

  return 1;
}

uint64_t sub_1001CEEE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001CEF48(uint64_t a1)
{
  v2 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001CEFA8()
{
  result = qword_1005D4010;
  if (!qword_1005D4010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D4010);
  }

  return result;
}

uint64_t sub_1001CF00C(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 sub_1001CF034(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_1001CF058(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3A && *(a1 + 128))
  {
    return (*a1 + 58);
  }

  v3 = (*(a1 + 56) >> 58) & 0xC;
  v4 = (((*(a1 + 79) & 0x30 | v3) >> 3) & 0xFFFFFFC7 | (8 * (v3 & 7 | (*(a1 + 40) >> 60) & 3))) ^ 0x3F;
  if (v4 >= 0x39)
  {
    v4 = -1;
  }

  return v4 + 1;
}

uint64_t sub_1001CF0C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x39)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 58;
    if (a3 >= 0x3A)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3A)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      v3 = (-a2 >> 3) & 7 | (8 * (-a2 & 0x3F));
      *(result + 32) = 0;
      *(result + 40) = ((-a2 >> 3) & 3) << 60;
      *(result + 48) = 0;
      *(result + 56) = (v3 << 58) & 0x3000000000000000;
      *(result + 64) = 0;
      *(result + 72) = (v3 << 56) & 0x3000000000000000;
    }
  }

  return result;
}

void *sub_1001CF168(uint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  v31 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v46 = _swiftEmptyArrayStorage;
    v32 = a2 >> 62;
    sub_100091A08(0, v5 & ~(v5 >> 63), 0);
    v9 = v32;
    if (v32)
    {
      if (v32 == 2)
      {
        v10 = *(a1 + 16);
      }

      else
      {
        v10 = a1;
      }
    }

    else
    {
      v10 = 0;
    }

    v33 = v10;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v11 = 0;
    v8 = v46;
    v30 = &v34 + v10;
    do
    {
      if (v11 >= v5)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_41;
      }

      v13 = v33 + v11;
      if (v9 == 2)
      {
        if (v13 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v13 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v18 = sub_1004A40D4();
        if (!v18)
        {
          goto LABEL_51;
        }

        v15 = v18;
        v19 = sub_1004A4104();
        v17 = v13 - v19;
        if (__OFSUB__(v13, v19))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v9 != 1)
        {
          if (v13 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v34 = a1;
          v35 = BYTE2(a1);
          v36 = BYTE3(a1);
          v37 = v31;
          v38 = BYTE5(a1);
          v39 = BYTE6(a1);
          v40 = HIBYTE(a1);
          v41 = a2;
          v42 = BYTE2(a2);
          v43 = BYTE3(a2);
          v44 = BYTE4(a2);
          v45 = BYTE5(a2);
          v20 = v30[v11];
          goto LABEL_36;
        }

        if (v13 < a1 || v13 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v14 = sub_1004A40D4();
        if (!v14)
        {
          goto LABEL_50;
        }

        v15 = v14;
        v16 = sub_1004A4104();
        v17 = v13 - v16;
        if (__OFSUB__(v13, v16))
        {
          goto LABEL_46;
        }
      }

      v20 = *(v15 + v17);
      v9 = v32;
LABEL_36:
      sub_10000C9C0(&qword_1005D4038, &qword_1004DFEA8);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1004CEAA0;
      *(v21 + 56) = &type metadata for UInt8;
      *(v21 + 64) = &protocol witness table for UInt8;
      *(v21 + 32) = v20;
      v22 = sub_1004A57A4();
      v46 = v8;
      v25 = v8[2];
      v24 = v8[3];
      if (v25 >= v24 >> 1)
      {
        v29 = v22;
        v27 = v23;
        sub_100091A08((v24 > 1), v25 + 1, 1);
        v9 = v32;
        v23 = v27;
        v22 = v29;
        v8 = v46;
      }

      v8[2] = v25 + 1;
      v26 = &v8[2 * v25];
      v26[4] = v22;
      v26[5] = v23;
      ++v11;
    }

    while (v12 != v5);
  }

  return v8;
}

uint64_t sub_1001CF4E4(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 48);
  v21[2] = *(a1 + 32);
  v21[3] = v2;
  v21[4] = *(a1 + 64);
  v3 = *(a1 + 16);
  v21[0] = *a1;
  v21[1] = v3;
  v4 = *(a1 + 80);
  v5 = *(a1 + 88);
  v6 = *(a1 + 96);
  v7 = *(a1 + 104);
  v19 = *(a1 + 120);
  v20 = *(a1 + 112);
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[4];
  v22[3] = a2[3];
  v22[4] = v10;
  v11 = a2[2];
  v22[1] = v9;
  v22[2] = v11;
  v22[0] = v8;
  v13 = *(a2 + 10);
  v12 = *(a2 + 11);
  v14 = *(a2 + 12);
  v15 = *(a2 + 13);
  v16 = *(a2 + 14);
  v17 = *(a2 + 15);
  if ((sub_1001EFF14(v21, v22) & 1) == 0)
  {
    return 0;
  }

  if (v5 >> 60 == 11)
  {
    if (v12 >> 60 != 11)
    {
      return 0;
    }
  }

  else if (v5 >> 60 == 15)
  {
    if (v12 >> 60 != 15)
    {
      return 0;
    }
  }

  else if (((v12 >> 60) | 4) == 0xF || (sub_10003A194(v4, v5, v13, v12) & 1) == 0)
  {
    return 0;
  }

  if ((sub_10003A194(v6, v7, v14, v15) & 1) == 0)
  {
    return 0;
  }

  return sub_10003A194(v20, v19, v16, v17);
}

uint64_t sub_1001CF638()
{
  v1 = v0[11];
  if (v1 >> 60 == 11)
  {
    sub_10018D6F4();
    swift_allocError();
    *v3 = xmmword_1004DB2C0;
    *(v3 + 16) = 1;
    return swift_willThrow();
  }

  else if (v1 >> 60 == 15)
  {
    return 0;
  }

  else
  {
    v4 = v0[10];
    sub_100014CEC(v4, v0[11]);
    sub_100191718(v4, v1);
    *(v0 + 5) = xmmword_1004DA570;
    v5 = sub_1001CF7D0(v0[12], v0[13], v0[14], v0[15], v4, v1);
    sub_100191718(v4, v1);
    return v5;
  }
}

uint64_t sub_1001CF72C(uint64_t a1, unint64_t a2)
{
  v3 = *(v2 + 88);
  if (v3 >> 60 == 15)
  {
    v4 = *(v2 + 80);
    sub_100014CEC(a1, a2);
    result = sub_100191718(v4, v3);
    *(v2 + 80) = a1;
    *(v2 + 88) = a2;
  }

  else
  {
    sub_10018D6F4();
    swift_allocError();
    *v8 = xmmword_1004DB2C0;
    *(v8 + 16) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1001CF7D0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void *a5, unint64_t a6)
{
  v48 = a1;
  v49 = a2;
  v10 = sub_1004A5474();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000C9C0(&qword_1005D4018, &qword_1004DFEA0);
  v47 = *(v15 - 1);
  v16 = v47;
  v17 = *(v47 + 64);
  __chkstk_darwin(v15);
  v19 = &v44 - v18;
  v52 = a5;
  v53 = a6;
  v56 = a3;
  v57 = a4;
  sub_100014CEC(a5, a6);
  sub_100014CEC(a3, a4);
  sub_1004A5464();
  sub_1004A54D4();
  sub_1001CFC28();
  sub_1001CFC80();
  v46 = v19;
  sub_1004A5484();
  (*(v11 + 8))(v14, v10);
  sub_100014D40(v52, v53);
  v54 = v15;
  v55 = sub_10000DF44(&qword_1005D4030, &qword_1005D4018, &qword_1004DFEA0);
  v20 = sub_1000B3774(&v52);
  v21 = *(v16 + 16);
  v45 = v15;
  v21(v20, v19, v15);
  sub_10002587C(&v52, v54);
  sub_1004A41C4();
  v22 = v56;
  v23 = v57;
  sub_1000197E0(&v52);
  v52 = sub_1001CF168(v22, v23);
  sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
  sub_10000DF44(&qword_1005CDA18, &unk_1005DA9A0, &unk_1004CF770);
  v24 = sub_1004A5614();
  v26 = v25;
  sub_100014D40(v22, v23);

  v27 = sub_1001D9734(32, 0xE100000000000000);
  v29 = v28;
  v30 = v48;
  v31 = v49;
  v50 = v48;
  v51 = v49;
  v54 = &type metadata for Data;
  v55 = &protocol witness table for Data;
  v52 = v27;
  v53 = v28;
  v32 = sub_10002587C(&v52, &type metadata for Data);
  v33 = *v32;
  v34 = v32[1];
  sub_100014CEC(v30, v31);
  sub_100014CEC(v27, v29);
  sub_1001E153C(v33, v34);
  sub_100014D40(v27, v29);
  sub_1000197E0(&v52);
  v35 = v50;
  v36 = v51;
  v37 = sub_1001D9734(v24, v26);
  v39 = v38;
  v56 = v35;
  v57 = v36;
  v54 = &type metadata for Data;
  v55 = &protocol witness table for Data;
  v52 = v37;
  v53 = v38;
  v40 = sub_10002587C(&v52, &type metadata for Data);
  v41 = *v40;
  v42 = v40[1];
  sub_100014CEC(v35, v36);
  sub_100014CEC(v37, v39);
  sub_1001E153C(v41, v42);
  sub_100014D40(v37, v39);
  sub_100014D40(v35, v36);
  (*(v47 + 8))(v46, v45);
  sub_1000197E0(&v52);
  return v56;
}

unint64_t sub_1001CFC28()
{
  result = qword_1005D4020;
  if (!qword_1005D4020)
  {
    sub_1004A54D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D4020);
  }

  return result;
}

unint64_t sub_1001CFC80()
{
  result = qword_1005D4028;
  if (!qword_1005D4028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D4028);
  }

  return result;
}

uint64_t sub_1001CFCE4()
{
  v1 = sub_1004A4E34();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004A53F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = (&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = v0[4];
  *v11 = v12;
  (*(v7 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v6, v9);
  v13 = v12;
  LOBYTE(v12) = sub_1004A5404();
  result = (*(v7 + 8))(v11, v6);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v0[9])
  {
    return result;
  }

  v15 = v0;
  v16 = v0[2];
  sub_1004A4E54();
  v17 = (*(v2 + 88))(v5, v1);
  v18 = enum case for NWConnection.State.setup(_:);
  (*(v2 + 8))(v5, v1);
  if (v17 != v18)
  {
LABEL_7:
    result = sub_1004A69A4();
    __break(1u);
    return result;
  }

  v19 = sub_1004A4DD4();
  v20 = static MonotonicTime.now()();
  v21 = v15[9];
  v15[8] = v20;
  v15[9] = v19;
}

uint64_t sub_1001CFF40()
{
  v1 = v0;
  v2 = sub_1004A53F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + 32);
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  v9 = sub_1004A5404();
  result = (*(v3 + 8))(v6, v2);
  if (v9)
  {
    v11 = *(v1 + 72);
    if (v11)
    {
      v12 = *(v1 + 64);
      v13 = *(v1 + 24);
      v15 = *(v1 + 40);
      v14 = *(v1 + 48);
      v16 = swift_allocObject();
      *(v16 + 16) = v12;
      *(v16 + 24) = v11;
      *(v16 + 32) = v15;
      *(v16 + 40) = v14;
      *(v16 + 48) = v13;
      swift_retain_n();

      sub_1004A4DE4();
    }

    v17 = *(v1 + 16);
    v18 = sub_1004A4DD4();
    v19 = static MonotonicTime.now()();
    v20 = *(v1 + 72);
    *(v1 + 64) = v19;
    *(v1 + 72) = v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001D00FC()
{
  v1 = v0;
  v2 = *(v0 + 72);
  if (v2)
  {
    v3 = *(v1 + 64);
    v4 = *(v1 + 24);
    v6 = *(v1 + 40);
    v5 = *(v1 + 48);
    v7 = *(v1 + 32);
    v8 = swift_allocObject();
    *(v8 + 16) = v3;
    *(v8 + 24) = v2;
    *(v8 + 32) = v6;
    *(v8 + 40) = v5;
    *(v8 + 48) = v4;
    swift_retain_n();

    sub_1004A4DE4();
  }

  v9 = *(v1 + 16);

  v10 = *(v1 + 48);

  v11 = *(v1 + 72);

  return swift_deallocClassInstance();
}

uint64_t sub_1001D01F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(int *), uint64_t a5, int a6)
{
  v30 = a6;
  v31 = a5;
  v32 = a4;
  v8 = sub_1004A4D74();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v29[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v29[-v14];
  v16 = sub_1004A4D94();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = &v29[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v17 + 16))(v21, a1, v16, v19);
  sub_1004A4D84();
  v23 = v22;
  sub_1004A4D44();
  v24 = sub_1004A4D64();
  v25 = *(v9 + 8);
  v25(v15, v8);
  v26 = v24 & ~(v24 >> 63);
  sub_1004A4D44();
  v27 = sub_1004A4D54();
  v25(v12, v8);
  (*(v17 + 8))(v21, v16);
  v33 = v30;
  v34 = a2;
  v35 = v23;
  v36 = v26;
  v37 = v27 & ~(v27 >> 63);
  return v32(&v33);
}

void __swiftcall DataTransferReport.init(connection:start:duration:receivedTransportByteCount:sentTransportByteCount:)(IMAP2Connection::DataTransferReport *__return_ptr retstr, IMAP2Protocol::ConnectionID connection, IMAP2Helpers::MonotonicTime start, Swift::Double duration, Swift::Int receivedTransportByteCount, Swift::Int sentTransportByteCount)
{
  retstr->connection = connection;
  retstr->start = start;
  retstr->duration = duration;
  retstr->receivedTransportByteCount = receivedTransportByteCount;
  retstr->sentTransportByteCount = sentTransportByteCount;
}

unint64_t DataTransferReport.receivedApplicationBitrate.getter()
{
  v1 = *(v0 + 16);
  if (v1 <= 0.0)
  {
    return 0;
  }

  v2 = *(v0 + 24);
  if ((v2 - 0x1000000000000000) >> 61 == 7)
  {
    v3 = (8 * v2) / v1;
    v4 = round(v3);
    v5 = v4 >= 9.22337204e18 || v4 <= -9.22337204e18;
    v6 = llround(v3);
    if (v5)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t DataTransferReport.sentApplicationBitrate.getter()
{
  v1 = *(v0 + 16);
  if (v1 <= 0.0)
  {
    return 0;
  }

  v2 = *(v0 + 32);
  if ((v2 - 0x1000000000000000) >> 61 == 7)
  {
    v3 = (8 * v2) / v1;
    v4 = round(v3);
    v5 = v4 >= 9.22337204e18 || v4 <= -9.22337204e18;
    v6 = llround(v3);
    if (v5)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001D061C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001D063C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

ValueMetadata *type metadata accessor for DataTransferReport()
{
  return &type metadata for DataTransferReport;
}

{
  return &type metadata for DataTransferReport;
}

uint64_t sub_1001D0680(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1001D06C8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1001D071C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 52, 7);
}

int *sub_1001D0774@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v5 = v4;
  v6 = v3;
  LODWORD(v117) = a2;
  v108 = sub_10000C9C0(&qword_1005D4310, &qword_1004E01B0);
  v9 = *(*(v108 - 8) + 64);
  __chkstk_darwin(v108);
  v105 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v118 = &v96 - v12;
  v104 = type metadata accessor for Deflate.PartialResult(0);
  v13 = *(*(v104 - 8) + 64);
  __chkstk_darwin(v104);
  v15 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for Deflate.InputBuffer(0);
  v16 = *(*(v116 - 8) + 64);
  __chkstk_darwin(v116);
  v98 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v103 = (&v96 - v19);
  __chkstk_darwin(v20);
  v100 = (&v96 - v21);
  __chkstk_darwin(v22);
  v107 = (&v96 - v23);
  __chkstk_darwin(v24);
  v106 = (&v96 - v25);
  __chkstk_darwin(v26);
  v28 = (&v96 - v27);
  __chkstk_darwin(v29);
  v31 = &v96 - v30;
  v119 = sub_1004A5384();
  v99 = *(v119 - 8);
  v32 = *(v99 + 64);
  __chkstk_darwin(v119);
  v114 = &v96 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v36 = &v96 - v35;
  if (sub_1001D1230())
  {
    sub_1004A5344();
    v37 = *(v3 + 16);
    result = swift_beginAccess();
    v39 = *(v37 + 32);
    if (v39 < 0)
    {
LABEL_57:
      __break(1u);
    }

    else
    {
      v40 = *(v37 + 56);
      if ((v40 & 0x8000000000000000) == 0)
      {
        result = type metadata accessor for Deflate.Result(0);
        v41 = 0;
        v42 = (a3 + result[5]);
        *v42 = 0;
        v42[1] = 0;
LABEL_5:
        v43 = (a3 + result[6]);
        *v43 = v39;
        v43[1] = v40;
        *(a3 + result[7]) = v41;
        return result;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  result = sub_1001D13D4(v117 & 1, v36);
  if (v4)
  {
    return result;
  }

  v97 = a3;
  v96 = a1;
  sub_1001D3018(a1, v31);
  v44 = (v99 + 32);
  v109 = v36;
  v110 = (v99 + 8);
  v45 = 1;
  v46 = v119;
  v115 = (v99 + 32);
  v102 = v28;
  v101 = v3;
  v113 = v15;
  while (1)
  {
    v112 = v45;
    sub_1001D3018(v31, v28);
    result = swift_getEnumCaseMultiPayload();
    if (result == 1)
    {
      if (!*v28)
      {
        v48 = 0;
        goto LABEL_15;
      }

      v48 = v28[1] - *v28;
    }

    else
    {
      v49 = *v44;
      v50 = v114;
      v49(v114, v28, v46);
      v48 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
      v51 = v50;
      v44 = v115;
      result = (*v110)(v51, v46);
    }

    if ((v48 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

LABEL_15:
    v52 = *(v6 + 16);
    swift_beginAccess();

    v53 = deflateBound((v52 + 16), v48);
    swift_endAccess();

    if ((v53 & 0x8000000000000000) != 0)
    {
      goto LABEL_51;
    }

    v54 = __OFADD__(v53, 20);
    v55 = v53 + 20;
    if (v54)
    {
      goto LABEL_52;
    }

    if (qword_1005D2D78 != -1)
    {
      result = swift_once();
    }

    if (v55 >= qword_1005D4108 / 2)
    {
      if (!qword_1005D4108)
      {
        goto LABEL_55;
      }

      v56 = (v55 >> 1) / qword_1005D4108 + 1;
      v55 = qword_1005D4108 * v56;
      if ((qword_1005D4108 * v56) >> 64 != (qword_1005D4108 * v56) >> 63)
      {
        goto LABEL_56;
      }
    }

    v57 = *(v6 + 16);
    v120[0] = 0;
    __chkstk_darwin(result);
    *(&v96 - 6) = v31;
    *(&v96 - 5) = v57;
    *(&v96 - 4) = sub_1001D3AAC;
    *(&v96 - 3) = v58;
    *(&v96 - 2) = v120;

    v59 = v118;
    v60 = sub_1001D1BC8(v118, v55, sub_1001D3AC8);
    if (v5)
    {
      (*v110)(v109, v119);

      return sub_1001D3BB4(v31, type metadata accessor for Deflate.InputBuffer);
    }

    v111 = 0;
    v61 = *(v108 + 48);
    LODWORD(v117) = v60 & 1;
    *(v59 + v61) = v60 & 1;
    v62 = v120[0];
    v63 = v107;
    sub_1001D3018(v31, v107);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v66 = v114;
      v67 = v63;
      v65 = v119;
      (*v44)(v114, v67, v119);
      v64 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
      (*v110)(v66, v65);
LABEL_27:
      v68 = v62 == v64;
      v69 = v118;
      if (v68)
      {
        goto LABEL_29;
      }

      goto LABEL_32;
    }

    if (*v63)
    {
      v64 = v63[1] - *v63;
      v65 = v119;
      goto LABEL_27;
    }

    v69 = v59;
    v65 = v119;
    if (!v62)
    {
LABEL_29:
      v70 = v106;
      sub_1004A5344();

      swift_storeEnumTagMultiPayload();
      goto LABEL_39;
    }

LABEL_32:
    v71 = v100;
    sub_1001D3018(v31, v100);
    result = swift_getEnumCaseMultiPayload();
    if (result == 1)
    {
      if (*v71)
      {
        v72 = v71[1] - *v71;
      }

      else
      {
        v72 = 0;
      }
    }

    else
    {
      v73 = v114;
      (*v44)(v114, v71, v65);
      v72 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
      result = (*v110)(v73, v65);
    }

    v70 = v106;
    if (v72 < v62)
    {
      goto LABEL_54;
    }

    sub_1001D2C4C(v62, v72, v106);

    v69 = v118;
LABEL_39:
    v74 = v69;
    v75 = v105;
    sub_1001D3AE0(v74, v105);
    v44 = v115;
    v76 = *v115;
    v77 = v113;
    v78 = v119;
    (*v115)(v113, v75, v119);
    v79 = v104;
    v80 = *(v104 + 20);
    sub_1001D3B50(v70, v77 + v80);
    *(v77 + *(v79 + 24)) = v117;
    sub_1004A5354();
    sub_1001D3BB4(v31, type metadata accessor for Deflate.InputBuffer);
    sub_1001D3018(v77 + v80, v31);
    v81 = v31;
    v82 = v31;
    v83 = v103;
    sub_1001D3018(v82, v103);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v84 = v101;
      v28 = v102;
      if (*v83 && v83[1] != *v83)
      {
LABEL_44:
        result = sub_1001D3BB4(v113, type metadata accessor for Deflate.PartialResult);
        v31 = v81;
        goto LABEL_9;
      }
    }

    else
    {
      v85 = v114;
      v76(v114, v83, v78);
      sub_1001B60F8();
      sub_1004A5E64();
      sub_1004A5EA4();
      (*v110)(v85, v78);
      v84 = v101;
      v28 = v102;
      if (v120[0] != v120[5])
      {
        goto LABEL_44;
      }
    }

    result = sub_1001D3BB4(v113, type metadata accessor for Deflate.PartialResult);
    v47 = v109;
    v31 = v81;
    if (!v117)
    {
      break;
    }

LABEL_9:
    v5 = v111;
    v45 = v112 + 1;
    v6 = v84;
    v46 = v119;
    if (__OFADD__(v112, 1))
    {
      goto LABEL_53;
    }
  }

  v87 = v99 + 16;
  v86 = *(v99 + 16);
  a3 = v97;
  v88 = v119;
  v86(v97, v109, v119);
  v89 = v98;
  sub_1001D3018(v96, v98);
  v90 = v114;
  v86(v114, v47, v88);
  v118 = sub_1001D1848();
  v117 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  v91 = v84;
  v92 = *(v87 - 8);
  v92(v90, v88);
  sub_1001D3BB4(v89, type metadata accessor for Deflate.InputBuffer);
  v92(v47, v88);
  sub_1001D3BB4(v31, type metadata accessor for Deflate.InputBuffer);
  v93 = *(v91 + 16);
  result = swift_beginAccess();
  v39 = *(v93 + 32);
  if (v39 < 0)
  {
    goto LABEL_59;
  }

  v40 = *(v93 + 56);
  if ((v40 & 0x8000000000000000) == 0)
  {
    result = type metadata accessor for Deflate.Result(0);
    v94 = (a3 + result[5]);
    v95 = v117;
    *v94 = v118;
    v94[1] = v95;
    v41 = v112;
    goto LABEL_5;
  }

LABEL_60:
  __break(1u);
  return result;
}

BOOL sub_1001D1230()
{
  v1 = v0;
  v2 = sub_1004A5384();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Deflate.InputBuffer(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = (v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1001D3018(v1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (!*v10)
    {
      return 1;
    }

    return v10[1] == *v10;
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_1001B60F8();
    sub_1004A5E64();
    sub_1004A5EA4();
    (*(v3 + 8))(v6, v2);
    return v13[1] == v13[0];
  }
}

uint64_t sub_1001D13D4@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v41 = sub_1004A52D4();
  v6 = *(v41 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v41);
  v9 = (&v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = sub_10000C9C0(&qword_1005D4310, &qword_1004E01B0);
  v10 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40);
  v12 = &v33 - v11;
  v13 = sub_1004A5384();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v3 + 24) == (a1 & 1))
  {
    return sub_1004A5344();
  }

  v35 = v16;
  v36 = v15;
  v34 = a2;
  *(v3 + 24) = a1 & 1;
  sub_1004A5344();
  v39 = v45;
  v38 = enum case for DispatchData.Deallocator.custom(_:);
  v37 = (v6 + 104);
  while (1)
  {
    v19 = *(v3 + 16);
    pending = 0;
    swift_beginAccess();

    v20 = deflatePending((v19 + 16), &pending, 0);
    swift_endAccess();
    if (v20)
    {

      v21 = 1044;
    }

    else
    {
      v22 = pending;

      v21 = v22 + 21;
    }

    v23 = *(v3 + 16);

    v24 = swift_slowAlloc();
    v25 = v24 + v21;
    v26 = v42;
    v27 = sub_1001D3580(&pending, v24, v24 + v21, v23, v3);
    v42 = v26;
    if (v26)
    {

      swift_willThrow();

      return (*(v35 + 8))(v18, v36);
    }

    if (v27 < 0 || v21 < v27)
    {
      break;
    }

    v28 = *(v40 + 48);
    v29 = swift_allocObject();
    *(v29 + 16) = v24;
    *(v29 + 24) = v25;
    v45[2] = sub_1001D4464;
    v45[3] = v29;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    v45[0] = sub_10019C778;
    v45[1] = &unk_1005A5EB8;
    v30 = _Block_copy(aBlock);
    *v9 = 0;
    v9[1] = v30;
    (*v37)(v9, v38, v41);
    sub_1004A52E4();

    v31 = pending;
    v12[v28] = pending;
    sub_1004A5354();
    sub_1001D3E28(v12);
    if ((v31 & 1) == 0)
    {
      return (*(v35 + 32))(v34, v18, v36);
    }
  }

  result = sub_1004A69A4();
  __break(1u);
  return result;
}

uint64_t sub_1001D1848()
{
  v1 = v0;
  v2 = sub_1004A5384();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Deflate.InputBuffer(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = (&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1001D3018(v1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (*v10)
    {
      return v10[1] - *v10;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    v12 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
    (*(v3 + 8))(v6, v2);
    return v12;
  }
}

uint64_t sub_1001D19C0(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  swift_beginAccess();

  v4 = deflate((v3 + 16), a1 & 1);
  swift_endAccess();
  if (v4 && v4 != -5)
  {
    sub_1001D3CA0();
    swift_allocError();
    *v5 = "deflate";
    *(v5 + 8) = 7;
    *(v5 + 16) = 2;
    *(v5 + 20) = v4;
    swift_willThrow();
  }
}

uint64_t sub_1001D1A88(uint64_t a1)
{
  v2 = *(a1 + 16);
  swift_beginAccess();

  v3 = deflate((v2 + 16), 5);
  swift_endAccess();
  if (v3)
  {
    v4 = v3 == -5;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v8 = "deflate";
    v9 = 7;
LABEL_14:
    sub_1001D3CA0();
    swift_allocError();
    *v10 = v8;
    *(v10 + 8) = v9;
    *(v10 + 16) = 2;
    *(v10 + 20) = v3;
    swift_willThrow();
  }

  v5 = *(a1 + 16);
  if (*(a1 + 24))
  {
    v6 = 5;
  }

  else
  {
    v6 = 1;
  }

  if (*(a1 + 24))
  {
    v7 = 0;
  }

  else
  {
    v7 = 4;
  }

  swift_beginAccess();

  v3 = deflateParams((v5 + 16), v6, v7);
  swift_endAccess();
  if (v3)
  {
    v8 = "deflateParams";
    v9 = 13;
    goto LABEL_14;
  }
}

uint64_t sub_1001D1BC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v17[1] = a1;
  v7 = sub_1004A52D4();
  v17[0] = *(v7 - 8);
  v8 = *(v17[0] + 64);
  __chkstk_darwin(v7);
  v10 = (v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = swift_slowAlloc();
  v12 = sub_1001D3648(&v19, v11, v11 + a2, v3, a3);
  if (v4)
  {

    return swift_willThrow();
  }

  v14 = v17[0];
  if (a2 < 0)
  {
    __break(1u);
LABEL_9:
    result = sub_1004A69A4();
    __break(1u);
    return result;
  }

  if (v12 < 0 || v12 > a2)
  {
    goto LABEL_9;
  }

  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  *(v15 + 24) = v11 + a2;
  aBlock[4] = sub_1001D3C44;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019C778;
  aBlock[3] = &unk_1005A5E68;
  v16 = _Block_copy(aBlock);
  *v10 = 0;
  v10[1] = v16;
  (*(v14 + 104))(v10, enum case for DispatchData.Deallocator.custom(_:), v7);
  sub_1004A52E4();

  return v19;
}

uint64_t sub_1001D1E1C()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

int *sub_1001D1E78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v116 = sub_1004A52D4();
  v126 = *(v116 - 8);
  v6 = *(v126 + 64);
  __chkstk_darwin(v116);
  v115 = (&v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v114 = sub_10000C9C0(&qword_1005D4310, &qword_1004E01B0);
  v8 = *(*(v114 - 8) + 64);
  __chkstk_darwin(v114);
  v111 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v123 = &v99 - v11;
  v110 = type metadata accessor for Deflate.PartialResult(0);
  v12 = *(*(v110 - 8) + 64);
  __chkstk_darwin(v110);
  v122 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for Deflate.InputBuffer(0);
  v14 = *(*(v127 - 8) + 64);
  __chkstk_darwin(v127);
  v16 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v109 = (&v99 - v18);
  __chkstk_darwin(v19);
  v103 = (&v99 - v20);
  __chkstk_darwin(v21);
  v113 = (&v99 - v22);
  __chkstk_darwin(v23);
  v112 = &v99 - v24;
  __chkstk_darwin(v25);
  v117 = &v99 - v26;
  __chkstk_darwin(v27);
  v29 = &v99 - v28;
  v118 = sub_1004A5384();
  v30 = *(v118 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v118);
  v120 = &v99 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v99 - v34;
  v36 = sub_1001D1230();
  v124 = v3;
  if (v36)
  {
    sub_1004A5344();
    v37 = *(v2 + 16);
    swift_beginAccess();
    v38 = *(v37 + 32);
    if (v38 < 0)
    {
LABEL_67:
      __break(1u);
    }

    else
    {
      v39 = *(v37 + 56);
      if ((v39 & 0x8000000000000000) == 0)
      {
        result = type metadata accessor for Deflate.Result(0);
        v41 = 0;
        v42 = (a2 + result[5]);
        *v42 = 0;
        v42[1] = 0;
LABEL_57:
        v96 = (a2 + result[6]);
        *v96 = v38;
        v96[1] = v39;
        *(a2 + result[7]) = v41;
        return result;
      }
    }

    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v101 = v16;
  v108 = v2;
  v102 = a2;
  sub_1004A5344();
  sub_1001D3018(a1, v29);
  v125 = (v30 + 32);
  v119 = (v30 + 8);
  v106 = v129;
  v105 = enum case for DispatchData.Deallocator.custom(_:);
  v104 = (v126 + 104);
  v43 = 1;
  v44 = v117;
  v45 = v118;
  v100 = a1;
  v99 = v30;
  v107 = v35;
  while (1)
  {
    v121 = v43;
    sub_1001D3018(v29, v44);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      if (*v44)
      {
        v47 = v44[1] - *v44;
      }

      else
      {
        v47 = 0;
      }
    }

    else
    {
      v48 = v120;
      (*v125)(v120, v44, v45);
      v47 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
      EnumCaseMultiPayload = (*v119)(v48, v45);
    }

    v49 = v108;
    v50 = (v47 * 3) >> 64;
    v51 = 3 * v47;
    if (v50 != v51 >> 63)
    {
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    if (qword_1005D2D78 != -1)
    {
      EnumCaseMultiPayload = swift_once();
    }

    if (v51 >= qword_1005D4108 / 2)
    {
      v53 = v51 + qword_1005D4108;
      if (__OFADD__(v51, qword_1005D4108))
      {
        goto LABEL_62;
      }

      v54 = __OFSUB__(v53, 1);
      v55 = v53 - 1;
      if (v54)
      {
        goto LABEL_63;
      }

      if (!qword_1005D4108)
      {
        goto LABEL_64;
      }

      if (qword_1005D4108 == -1 && v55 == 0x8000000000000000)
      {
        goto LABEL_66;
      }

      v56 = v55 / qword_1005D4108;
      if (v56 >= 4)
      {
        v56 = 4;
      }

      v52 = v56 * qword_1005D4108;
      if ((v56 * qword_1005D4108) >> 64 != (v56 * qword_1005D4108) >> 63)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v52 = v51 <= 20 ? 20 : v51;
    }

    v57 = *(v49 + 16);
    v131 = 0;
    __chkstk_darwin(EnumCaseMultiPayload);
    *(&v99 - 6) = v29;
    *(&v99 - 5) = v57;
    *(&v99 - 4) = sub_1001D3E90;
    *(&v99 - 3) = v49;
    v97 = &v131;

    v58 = swift_slowAlloc();
    v59 = v58 + v52;
    v60 = v124;
    v61 = sub_1001D3648(&v130, v58, v58 + v52, v57, sub_1001D4470);
    v124 = v60;
    if (v60)
    {

      swift_willThrow();

      (*v119)(v107, v118);
      return sub_1001D3BB4(v29, type metadata accessor for Deflate.InputBuffer);
    }

    if (v52 < 0)
    {
      goto LABEL_59;
    }

    if (v61 < 0 || v52 < v61)
    {
      goto LABEL_71;
    }

    v62 = *(v114 + 48);
    v63 = swift_allocObject();
    *(v63 + 16) = v58;
    *(v63 + 24) = v59;
    v129[2] = sub_1001D4464;
    v129[3] = v63;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    v129[0] = sub_10019C778;
    v129[1] = &unk_1005A5F08;
    v64 = _Block_copy(aBlock);
    v66 = v115;
    v65 = v116;
    *v115 = 0;
    v66[1] = v64;
    (*v104)(v66, v105, v65);
    v67 = v123;
    sub_1004A52E4();

    LODWORD(v126) = v130;
    *(v67 + v62) = v130;
    v68 = v131;
    v69 = v113;
    sub_1001D3018(v29, v113);
    v70 = swift_getEnumCaseMultiPayload();
    v71 = v112;
    v72 = v125;
    if (v70 == 1)
    {
      v45 = v118;
      if (*v69)
      {
        if (v68 == v69[1] - *v69)
        {
          goto LABEL_40;
        }
      }

      else if (!v68)
      {
LABEL_40:
        sub_1004A5344();

        v77 = v71;
        swift_storeEnumTagMultiPayload();
        goto LABEL_47;
      }
    }

    else
    {
      v75 = v120;
      v45 = v118;
      (*v125)(v120, v69, v118);
      v76 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
      (*v119)(v75, v45);
      if (v68 == v76)
      {
        goto LABEL_40;
      }
    }

    v73 = v103;
    sub_1001D3018(v29, v103);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      if (*v73)
      {
        v74 = v73[1] - *v73;
        if (v74 < v68)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v74 = 0;
        if (v68 > 0)
        {
          goto LABEL_61;
        }
      }
    }

    else
    {
      v78 = v120;
      (*v72)(v120, v73, v45);
      v74 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
      (*v119)(v78, v45);
      if (v74 < v68)
      {
        goto LABEL_61;
      }
    }

    sub_1001D2C4C(v68, v74, v71);

    v77 = v71;
LABEL_47:
    v79 = v111;
    sub_1001D3AE0(v123, v111);
    v80 = *v125;
    v81 = v122;
    (*v125)(v122, v79, v45);
    v82 = v110;
    v83 = *(v110 + 20);
    sub_1001D3B50(v77, v81 + v83);
    *(v81 + *(v82 + 24)) = v126;
    sub_1004A5354();
    sub_1001D3BB4(v29, type metadata accessor for Deflate.InputBuffer);
    sub_1001D3018(v81 + v83, v29);
    v84 = v109;
    sub_1001D3018(v29, v109);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v44 = v117;
      if (*v84 && v84[1] != *v84)
      {
LABEL_52:
        sub_1001D3BB4(v122, type metadata accessor for Deflate.PartialResult);
        goto LABEL_7;
      }
    }

    else
    {
      v85 = v120;
      v80(v120, v84, v45);
      sub_1001B60F8();
      sub_1004A5E64();
      sub_1004A5EA4();
      (*v119)(v85, v45);
      v44 = v117;
      if (aBlock[0] != v131)
      {
        goto LABEL_52;
      }
    }

    sub_1001D3BB4(v122, type metadata accessor for Deflate.PartialResult);
    if ((v126 & 1) == 0)
    {
      break;
    }

LABEL_7:
    v43 = v121 + 1;
    if (__OFADD__(v121, 1))
    {
      goto LABEL_60;
    }
  }

  v87 = v99 + 16;
  v86 = *(v99 + 16);
  v88 = v45;
  a2 = v102;
  v89 = v107;
  v86(v102, v107, v88);
  v90 = v101;
  sub_1001D3018(v100, v101);
  v91 = v120;
  v86(v120, v89, v88);
  v127 = sub_1001D1848();
  v92 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  v93 = *(v87 - 8);
  v93(v91, v88);
  sub_1001D3BB4(v90, type metadata accessor for Deflate.InputBuffer);
  v93(v89, v88);
  sub_1001D3BB4(v29, type metadata accessor for Deflate.InputBuffer);
  v94 = *(v108 + 16);
  swift_beginAccess();
  v38 = *(v94 + 32);
  if (v38 < 0)
  {
    goto LABEL_69;
  }

  v39 = *(v94 + 56);
  if ((v39 & 0x8000000000000000) == 0)
  {
    result = type metadata accessor for Deflate.Result(0);
    v95 = (a2 + result[5]);
    *v95 = v127;
    v95[1] = v92;
    v41 = v121;
    goto LABEL_57;
  }

LABEL_70:
  __break(1u);
LABEL_71:
  v98 = 0;
  v97 = 613;
  result = sub_1004A69A4();
  __break(1u);
  return result;
}

uint64_t sub_1001D2B2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  swift_beginAccess();

  v3 = inflate((v2 + 16), 2);
  swift_endAccess();
  if (v3 && v3 != -5)
  {
    sub_1001D3CA0();
    swift_allocError();
    *v4 = "inflate";
    *(v4 + 8) = 7;
    *(v4 + 16) = 2;
    *(v4 + 20) = v3;
    swift_willThrow();
  }
}

uint64_t sub_1001D2BF0()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

void sub_1001D2C4C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_1004A5384();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Deflate.InputBuffer(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = (&v20 - v15);
  v17 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
  }

  else
  {
    if (v17 < 1)
    {
      sub_1004A5344();
    }

    else
    {
      sub_1001D3018(v3, &v20 - v15);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v18 = *v16 + a1;
        if (*v16)
        {
          v19 = v18 + v17;
        }

        else
        {
          v19 = 0;
        }

        if (!*v16)
        {
          v18 = 0;
        }

        *a3 = v18;
        a3[1] = v19;
      }

      else
      {
        (*(v8 + 32))(v11, v16, v7);
        sub_1004A5364();
        (*(v8 + 8))(v11, v7);
      }
    }

    swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_1001D2E5C()
{
  if (*(v0 + 128))
  {
    swift_beginAccess();
    inflateEnd((v0 + 16));
  }

  else
  {
    swift_beginAccess();
    deflateEnd((v0 + 16));
  }

  swift_endAccess();
  return swift_deallocClassInstance();
}

unint64_t sub_1001D2F2C()
{
  result = qword_1005D4300;
  if (!qword_1005D4300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D4300);
  }

  return result;
}

unint64_t sub_1001D2F84()
{
  result = qword_1005D4308;
  if (!qword_1005D4308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D4308);
  }

  return result;
}

uint64_t sub_1001D3018(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Deflate.InputBuffer(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001D307C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void *a5)
{
  v44 = a5;
  v9 = sub_1004A5384();
  v42 = *(v9 - 8);
  v43 = v9;
  v10 = *(v42 + 64);
  __chkstk_darwin(v9);
  v12 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v38 - v14;
  v16 = type metadata accessor for Deflate.InputBuffer(0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = (v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v22 = (v38 - v21);
  v23 = sub_1001D1230();
  if (v23)
  {
    swift_beginAccess();
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    return a3(1);
  }

  v41 = v38;
  __chkstk_darwin(v23);
  v39 = a2;
  v40 = a3;
  v38[-4] = a2;
  v38[-3] = a3;
  v38[1] = a4;
  v25 = v44;
  v38[-2] = a4;
  v38[-1] = v25;
  sub_1001D3018(a1, v22);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = *v22;
    v26 = v22[1];
    sub_1001D3018(a1, v19);
    result = swift_getEnumCaseMultiPayload();
    if (result == 1)
    {
      v28 = v40;
      if (!*v19 || v19[1] == *v19)
      {
        return result;
      }
    }

    else
    {
      v33 = v42;
      v32 = v43;
      (*(v42 + 32))(v12, v19, v43);
      sub_1001B60F8();
      sub_1004A5E64();
      sub_1004A5EA4();
      result = (*(v33 + 8))(v12, v32);
      v28 = v40;
      if (v46[0] == v46[4])
      {
        return result;
      }
    }

    v34 = v39;
    result = swift_beginAccess();
    *(v34 + 16) = v27;
    if (v27)
    {
      v35 = v26 - v27;
    }

    else
    {
      v35 = 0;
    }

    if ((v35 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v36 = v45;
      if (!HIDWORD(v35))
      {
        *(v34 + 24) = v35;
        result = v28(1);
        if (v36)
        {
          *(v34 + 16) = 0;
          *(v34 + 24) = 0;
        }

        else
        {
          v37 = *(v34 + 24);
          *(v34 + 16) = 0;
          *(v34 + 24) = 0;
          *v25 = v35 - v37;
        }

        return result;
      }
    }

    __break(1u);
    return result;
  }

  v30 = v42;
  v29 = v43;
  v31 = (*(v42 + 32))(v15, v22, v43);
  v46[0] = 0;
  __chkstk_darwin(v31);
  v38[-4] = v15;
  v38[-3] = sub_1001D3C74;
  v38[-2] = &v38[-6];
  v38[-1] = v46;
  sub_1004A5304();
  if (v46[0])
  {
    swift_willThrow();
  }

  return (*(v30 + 8))(v15, v29);
}

uint64_t sub_1001D348C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t (*a6)(void), uint64_t a7, void *a8)
{
  result = swift_beginAccess();
  *(a5 + 16) = a1;
  if (a1)
  {
    v17 = a2 - a1;
  }

  else
  {
    v17 = 0;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (HIDWORD(v17))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(a5 + 24) = v17;
  result = a6(a4 & 1);
  if (v8)
  {
    *(a5 + 16) = 0;
    *(a5 + 24) = 0;
    return result;
  }

  v18 = *(a5 + 24);
  *(a5 + 16) = 0;
  *(a5 + 24) = 0;
  v19 = a3 + v17;
  if (__OFADD__(a3, v17))
  {
    goto LABEL_14;
  }

  v20 = __OFSUB__(v19, v18);
  v21 = v19 - v18;
  if (v20)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  *a8 = v21;
  return v18 != 0;
}

uint64_t sub_1001D3580(BOOL *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_beginAccess();
  *(a4 + 40) = a2;
  if (a2)
  {
    v12 = a3 - a2;
  }

  else
  {
    v12 = 0;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (HIDWORD(v12))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  *(a4 + 48) = v12;
  sub_1001D1A88(a5);
  if (!v5)
  {
    a3 = v12 - *(a4 + 48);
    *a1 = *(a4 + 48) == 0;
  }

  *(a4 + 40) = 0;
  *(a4 + 48) = 0;

  return a3;
}

uint64_t sub_1001D3648(BOOL *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  result = swift_beginAccess();
  *(a4 + 40) = a2;
  if (a2)
  {
    v12 = a3 - a2;
  }

  else
  {
    v12 = 0;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (HIDWORD(v12))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  *(a4 + 48) = v12;
  result = a5(result);
  if (!v5)
  {
    result = v12 - *(a4 + 48);
    *a1 = *(a4 + 48) == 0;
  }

  *(a4 + 40) = 0;
  *(a4 + 48) = 0;
  return result;
}

unint64_t sub_1001D3708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1004A6724(33);

  v7._countAndFlagsBits = sub_1004A6754();
  sub_1004A5994(v7);

  v8._countAndFlagsBits = 46;
  v8._object = 0xE100000000000000;
  sub_1004A5994(v8);
  v9._countAndFlagsBits = sub_1001D3830(a1, a2, a3 & 0xFFFFFFFF000000FFLL);
  sub_1004A5994(v9);

  v10._countAndFlagsBits = 10272;
  v10._object = 0xE200000000000000;
  sub_1004A5994(v10);
  v11._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v11);

  v12._countAndFlagsBits = 41;
  v12._object = 0xE100000000000000;
  sub_1004A5994(v12);
  return 0xD000000000000017;
}

uint64_t sub_1001D3830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (SHIDWORD(a3) <= -3)
  {
    if (SHIDWORD(a3) > -5)
    {
      if (HIDWORD(a3) != -4)
      {
        return 0x455F415441445F5ALL;
      }

      v3 = 0x5F4D454D5F5ALL;
    }

    else
    {
      if (HIDWORD(a3) == -6)
      {
        return 0x4F49535245565F5ALL;
      }

      if (HIDWORD(a3) != -5)
      {
        return sub_1004A6CE4();
      }

      v3 = 0x5F4655425F5ALL;
    }

    return v3 & 0xFFFFFFFFFFFFLL | 0x5245000000000000;
  }

  if (a3 < 0)
  {
    if (HIDWORD(a3) == -2)
    {
      return 0x4D41455254535F5ALL;
    }

    if (HIDWORD(a3) == -1)
    {
      return 0x4F4E5252455F5ALL;
    }
  }

  else
  {
    switch(HIDWORD(a3))
    {
      case 0:
        return 1263492954;
      case 2:
        return 0x445F4445454E5F5ALL;
      case 1:
        return 0x4D41455254535F5ALL;
    }
  }

  return sub_1004A6CE4();
}

uint64_t sub_1001D39D4(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, BOOL))
{
  result = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  if (__OFADD__(a2, a3))
  {
    __break(1u);
  }

  else
  {
    if (a1)
    {
      v12 = a2 + a1;
    }

    else
    {
      v12 = 0;
    }

    result = a6(a1, v12, a3, a2 + a3 >= result);
    if (result)
    {
      *a4 = 1;
    }
  }

  return result;
}

uint64_t sub_1001D3A8C()
{
  result = sub_1001D3CF4();
  qword_1005D4108 = result;
  return result;
}

uint64_t sub_1001D3AE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D4310, &qword_1004E01B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001D3B50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Deflate.InputBuffer(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001D3BB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001D3C44()
{
  result = *(v0 + 16);
  if (result)
  {
  }

  return result;
}

uint64_t sub_1001D3C5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001D3C94(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v5 = *(v4 + 32);
  v6 = *(v4 + 40);
  return sub_1001D39D4(a1, a2, a3, a4, *(v4 + 16), *(v4 + 24));
}

unint64_t sub_1001D3CA0()
{
  result = qword_1005D4318;
  if (!qword_1005D4318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D4318);
  }

  return result;
}

uint64_t sub_1001D3CF4()
{
  v3 = 0x700000006;
  v2 = 0;
  v1 = 4;
  if (!sysctl(&v3, 2u, &v2, &v1, 0, 0))
  {
    return v2;
  }

  sub_1004A6724(20);

  sub_1004A4B74();
  v4._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v4);

  result = sub_1004A69A4();
  __break(1u);
  return result;
}

uint64_t sub_1001D3E28(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005D4310, &qword_1004E01B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for SearchRequest.Predicate.Day(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}