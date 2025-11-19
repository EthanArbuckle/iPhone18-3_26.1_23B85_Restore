BOOL sub_100197290(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthenticationTask();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_10000C9C0(&qword_1005D3008, &qword_1004DCCE0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = (&v26 - v11);
  v13 = sub_10000C9C0(&qword_1005D30E0, &unk_1004DCD20);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v26 - v15;
  if ((sub_1001CED24(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8) || (sub_1001B08EC(*(a1 + 16), *(a2 + 16)) & 1) == 0 || (sub_1001B260C(*(a1 + 24), *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  v17 = *(type metadata accessor for Authenticator() + 32);
  v18 = *(v13 + 48);
  sub_1001975DC(a1 + v17, v16);
  sub_1001975DC(a2 + v17, &v16[v18]);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_100025F40(v16, &qword_1005D3008, &qword_1004DCCE0);
      return 1;
    }

    goto LABEL_10;
  }

  sub_1001975DC(v16, v12);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_1001976B0(v12, type metadata accessor for AuthenticationTask);
LABEL_10:
    v21 = &qword_1005D30E0;
    v22 = &unk_1004DCD20;
LABEL_11:
    sub_100025F40(v16, v21, v22);
    return 0;
  }

  sub_10019764C(&v16[v18], v8);
  if ((sub_100194234(v12, v8) & 1) == 0)
  {
    sub_1001976B0(v8, type metadata accessor for AuthenticationTask);
    sub_1001976B0(v12, type metadata accessor for AuthenticationTask);
    v21 = &qword_1005D3008;
    v22 = &qword_1004DCCE0;
    goto LABEL_11;
  }

  v23 = *(v4 + 24);
  v24 = *(v12 + v23);
  v25 = *(v8 + v23);
  sub_1001976B0(v8, type metadata accessor for AuthenticationTask);
  sub_1001976B0(v12, type metadata accessor for AuthenticationTask);
  sub_100025F40(v16, &qword_1005D3008, &qword_1004DCCE0);
  return v24 == v25;
}

uint64_t sub_1001975DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D3008, &qword_1004DCCE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10019764C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthenticationTask();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001976B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100197760(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D3008, &qword_1004DCCE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL sub_1001977D0(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[3];
  v6[2] = a1[2];
  v6[3] = v3;
  v6[4] = a1[4];
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  return (sub_1001ADD98(v6, *(v2 + 16)) & 1) == 0;
}

unint64_t sub_100197888()
{
  result = qword_1005D30E8;
  if (!qword_1005D30E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D30E8);
  }

  return result;
}

unint64_t sub_1001978DC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 >= 4)
  {
    sub_1000110B0(result);
  }

  return result;
}

unint64_t sub_100197930(uint64_t *a1)
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

uint64_t sub_100197948(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10019796C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1001979B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100197A14()
{
  v1 = v0;
  v2 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = type metadata accessor for ClientCommand(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100197BAC(v1, v9);
  if (swift_getEnumCaseMultiPayload() == 15)
  {
    v10 = v9 + *(sub_10000C9C0(&qword_1005CD558, &unk_1004CF330) + 48);
    v11 = *v10;
    v12 = *(v10 + 8);
    v13 = *(v10 + 16);
    sub_100020950(v9, v5);
    v14 = MessageIdentifierSet.count.getter();
    v9 = sub_100197C10(v11);

    result = sub_100121C40(v5);
    v16 = v14 * v9;
    if ((v14 * v9) >> 64 == (v14 * v9) >> 63)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  result = sub_10016D98C(v9);
  v16 = 0;
LABEL_5:
  v17 = __OFADD__(v16, 5);
  v18 = v16 + 5;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    v19 = ((v18 - 1) * 0x6666666666666667) >> 64;
    return (v19 >> 1) + (v19 >> 63);
  }

  return result;
}

uint64_t sub_100197BAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientCommand(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100197C10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = 0;
  v5 = a1 + 64;
  while (2)
  {
    v6 = (v5 + 40 * v4);
    for (i = v4; ; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v4 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_38;
      }

      v8 = *(v6 - 2);
      v9 = *(v6 - 1);
      v10 = *v6 | (*(v6 + 4) << 32);
      v11 = v10 >> 37;
      if (v10 >> 37 != 6)
      {
        break;
      }

      v12 = *(v6 - 4);
      v13 = v8 | *(v6 - 3) | v9;
      if (v10 == 0xC000000000 && v12 == 3 && v13 == 0)
      {
        goto LABEL_29;
      }

      v16 = v10 == 0xC000000000 && v12 == 6;
      if (v16 && v13 == 0)
      {
        goto LABEL_29;
      }

LABEL_4:
      v6 += 10;
      if (v4 == v1)
      {
        return result;
      }
    }

    if (v11 != 1)
    {
      if (v11 == 3)
      {
        goto LABEL_29;
      }

      goto LABEL_4;
    }

    if ((v9 & 0xFE) != 0 && (v8 - 1) >= 2)
    {
LABEL_29:
      v18 = __OFADD__(result, 5);
      result += 5;
      if (!v18)
      {
        goto LABEL_30;
      }

LABEL_39:
      __break(1u);
      return result;
    }

    v18 = __OFADD__(result++, 1);
    if (v18)
    {
      __break(1u);
      return result;
    }

LABEL_30:
    if (v4 != v1)
    {
      continue;
    }

    return result;
  }
}

double sub_100197D20@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 5;
  return result;
}

double sub_100197D38@<D0>(char a1@<W3>, uint64_t a2@<X8>)
{
  if (a1)
  {
    *&v10 = 0;
    v9 = 7uLL;
    BYTE8(v10) = -64;
    sub_100197E60(&v9);
    v29 = v17;
    v30 = v18;
    v31 = v19;
    v32 = v20;
    v25 = v13;
    v26 = v14;
    v27 = v15;
    v28 = v16;
    v21 = v9;
    v22 = v10;
    v23 = v11;
    v24 = v12;
    UInt32.init(_:)(&v21);
    v41 = v29;
    v42 = v30;
    v43 = v31;
    v44 = v32;
    v37 = v25;
    v38 = v26;
    v39 = v27;
    v40 = v28;
    v33 = v21;
    v34 = v22;
    v35 = v23;
    v36 = v24;
  }

  else
  {
    sub_100051270(&v33);
  }

  v3 = v42;
  *(a2 + 128) = v41;
  *(a2 + 144) = v3;
  *(a2 + 160) = v43;
  *(a2 + 176) = v44;
  v4 = v38;
  *(a2 + 64) = v37;
  *(a2 + 80) = v4;
  v5 = v40;
  *(a2 + 96) = v39;
  *(a2 + 112) = v5;
  v6 = v34;
  *a2 = v33;
  *(a2 + 16) = v6;
  result = *&v35;
  v8 = v36;
  *(a2 + 32) = v35;
  *(a2 + 48) = v8;
  return result;
}

uint64_t sub_100197E70(uint64_t a1)
{
  result = sub_1004A4C04();
  if (v3 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    result = _s6LoggerVMa();
    if (v4 <= 0x3F)
    {
      v8 = *(result - 8) + 64;
      v5 = *(a1 + 88);
      result = swift_checkMetadataState();
      if (v6 <= 0x3F)
      {
        v9 = *(result - 8) + 64;
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_100197F88()
{
  v0 = sub_1004A6074();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1004A6064();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = sub_1004A5274();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  sub_10019A8E4(0, &qword_1005D3248, OS_dispatch_queue_ptr);
  sub_1004A5254();
  v10[1] = _swiftEmptyArrayStorage;
  sub_1001996CC();
  sub_10000C9C0(&qword_1005D3250, &qword_1004F5CA0);
  sub_100199724();
  sub_1004A6544();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  result = sub_1004A6094();
  qword_1005D30F0 = result;
  return result;
}

uint64_t *sub_1001981A0()
{
  v1 = *v0;
  v2 = qword_1005DDFA8;
  v3 = sub_1004A4C04();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + qword_1005DDFB0 + 8);

  sub_100190CD4(v0 + qword_1005DDFB8);
  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 136));
  return v0;
}

uint64_t sub_100198284()
{
  sub_1001981A0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1001982F4()
{
  type metadata accessor for CertUITrustManager();
  swift_allocObject();
  CertUITrustManager.init()();
  qword_1005D30F8 = v0;
}

uint64_t sub_10019835C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v67[1] = a6;
  v68 = a5;
  v9 = _s6LoggerVMa();
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9);
  v13 = v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = v67 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = v67 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = v67 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = v67 - v24;
  __chkstk_darwin(v23);
  v27 = v67 - v26;
  if (a1)
  {
    if (a1 == 1)
    {
      sub_100190B00(a2, v22);
      sub_100190B00(a2, v19);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v28 = sub_1004A4A54();
      v29 = sub_1004A6014();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v69 = v31;
        *v30 = 68158210;
        *(v30 + 4) = 2;
        *(v30 + 8) = 256;
        v32 = v19[*(v9 + 20)];
        sub_100190CD4(v19);
        *(v30 + 10) = v32;
        *(v30 + 11) = 2082;
        v33 = *&v22[*(v9 + 20) + 4];
        sub_100190CD4(v22);
        v34 = ConnectionID.debugDescription.getter(v33);
        v36 = sub_10015BA6C(v34, v35, &v69);

        *(v30 + 13) = v36;
        _os_log_impl(&_mh_execute_header, v28, v29, "[%.*hhx-%{public}s] [Prompt] User allowed untrusted certificate(s) for session.", v30, 0x15u);
        sub_1000197E0(v31);
      }

      else
      {
        sub_100190CD4(v19);

        sub_100190CD4(v22);
      }
    }

    else
    {
      sub_100190B00(a2, v16);
      sub_100190B00(a2, v13);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v46 = sub_1004A4A54();
      v47 = sub_1004A6014();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v69 = v49;
        *v48 = 68158210;
        *(v48 + 4) = 2;
        *(v48 + 8) = 256;
        v50 = v13[*(v9 + 20)];
        sub_100190CD4(v13);
        *(v48 + 10) = v50;
        *(v48 + 11) = 2082;
        v51 = *&v16[*(v9 + 20) + 4];
        sub_100190CD4(v16);
        v52 = ConnectionID.debugDescription.getter(v51);
        v54 = sub_10015BA6C(v52, v53, &v69);

        *(v48 + 13) = v54;
        _os_log_impl(&_mh_execute_header, v46, v47, "[%.*hhx-%{public}s] [Prompt] User allowed untrusted certificate(s) permanently.", v48, 0x15u);
        sub_1000197E0(v49);
      }

      else
      {
        sub_100190CD4(v13);

        sub_100190CD4(v16);
      }

      v61 = *(a3 + 16);
      v62 = objc_allocWithZone(NSNumber);
      v63 = v61;
      v64 = [v62 initWithBool:1];
      v65 = sub_1004A5734();
      [v63 setAccountProperty:v64 forKey:v65];
    }

    v60 = 1;
  }

  else
  {
    sub_100190B00(a2, v67 - v26);
    sub_100190B00(a2, v25);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v37 = sub_1004A4A54();
    v38 = sub_1004A6014();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v69 = v40;
      *v39 = 68158210;
      *(v39 + 4) = 2;
      *(v39 + 8) = 256;
      v41 = v25[*(v9 + 20)];
      sub_100190CD4(v25);
      *(v39 + 10) = v41;
      *(v39 + 11) = 2082;
      v42 = *&v27[*(v9 + 20) + 4];
      sub_100190CD4(v27);
      v43 = ConnectionID.debugDescription.getter(v42);
      v45 = sub_10015BA6C(v43, v44, &v69);

      *(v39 + 13) = v45;
      _os_log_impl(&_mh_execute_header, v37, v38, "[%.*hhx-%{public}s] [Prompt] User denied untrusted certificate(s).", v39, 0x15u);
      sub_1000197E0(v40);
    }

    else
    {
      sub_100190CD4(v25);

      sub_100190CD4(v27);
    }

    v55 = *(a3 + 16);
    v56 = objc_allocWithZone(NSNumber);
    v57 = v55;
    v58 = [v56 initWithBool:0];
    v59 = sub_1004A5734();
    [v57 setAccountProperty:v58 forKey:v59];

    v60 = 0;
  }

  return v68(v60);
}

uint64_t sub_100198974(int a1, uint64_t (*a2)(uint64_t), uint64_t a3, unsigned __int8 a4, unsigned __int16 a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = a6;
  v28 = a3;
  v29 = a2;
  v13 = _s6LoggerVMa();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1004A53F4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = (&v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1005D2D60 != -1)
  {
    swift_once();
  }

  v22 = qword_1005D30F0;
  *v21 = qword_1005D30F0;
  (*(v18 + 104))(v21, enum case for DispatchPredicate.onQueue(_:), v17);
  v23 = v22;
  LOBYTE(v22) = sub_1004A5404();
  result = (*(v18 + 8))(v21, v17);
  if (v22)
  {
    sub_100190B00(a8, v16);

    v25 = sub_100199A58(a4, a1, a5, v27, a7, v16);
    return v29(v25);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100198B60()
{
  v1 = _s6LoggerVMa();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([*(v0 + 16) isDirty])
  {
    v5 = *(v0 + 16);
    v6 = *(v0 + 24);
    sub_100190B00(v0 + OBJC_IVAR____TtCVE15IMAP2ConnectionO16IMAP2Persistence16CertificateTrust29DefaultVerifierImplementationP33_F342119D05A6F1A070C6FAB1999158A515AccountAndStore_logger, aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    v7 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v8 = swift_allocObject();
    sub_1001993A4(v4, v8 + v7);
    aBlock[4] = sub_100199408;
    aBlock[5] = v8;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100199118;
    aBlock[3] = &unk_1005A48D0;
    v9 = _Block_copy(aBlock);
    v10 = v6;
    v11 = v5;

    [v10 saveVerifiedAccount:v11 withCompletionHandler:v9];
    _Block_release(v9);
  }

  sub_100190CD4(v0 + OBJC_IVAR____TtCVE15IMAP2ConnectionO16IMAP2Persistence16CertificateTrust29DefaultVerifierImplementationP33_F342119D05A6F1A070C6FAB1999158A515AccountAndStore_logger);
  return v0;
}

void sub_100198D30(char a1, uint64_t a2, uint64_t a3)
{
  v6 = _s6LoggerVMa();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v40 - v11;
  __chkstk_darwin(v13);
  v15 = &v40 - v14;
  __chkstk_darwin(v16);
  v18 = &v40 - v17;
  if ((a1 & 1) == 0)
  {
    if (a2)
    {
      sub_100190B00(a3, &v40 - v17);
      sub_100190B00(a3, v15);
      swift_errorRetain();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      swift_errorRetain();
      v19 = sub_1004A4A54();
      v20 = sub_1004A6014();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v41 = v23;
        *v21 = 68158466;
        *(v21 + 4) = 2;
        *(v21 + 8) = 256;
        v24 = v15[*(v6 + 20)];
        sub_100190CD4(v15);
        *(v21 + 10) = v24;
        *(v21 + 11) = 2082;
        v25 = *&v18[*(v6 + 20) + 4];
        sub_100190CD4(v18);
        v26 = ConnectionID.debugDescription.getter(v25);
        v28 = sub_10015BA6C(v26, v27, &v41);

        *(v21 + 13) = v28;
        *(v21 + 21) = 2112;
        v29 = sub_1004A4264();
        *(v21 + 23) = v29;
        *v22 = v29;
        _os_log_impl(&_mh_execute_header, v19, v20, "[%.*hhx-%{public}s] Failed to save account: %@", v21, 0x1Fu);
        sub_100190D30(v22);

        sub_1000197E0(v23);

        return;
      }

      sub_100190CD4(v15);

      v39 = v18;
    }

    else
    {
      sub_100190B00(a3, v12);
      sub_100190B00(a3, v9);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v30 = sub_1004A4A54();
      v31 = sub_1004A6014();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v41 = v33;
        *v32 = 68158210;
        *(v32 + 4) = 2;
        *(v32 + 8) = 256;
        v34 = v9[*(v6 + 20)];
        sub_100190CD4(v9);
        *(v32 + 10) = v34;
        *(v32 + 11) = 2082;
        v35 = *&v12[*(v6 + 20) + 4];
        sub_100190CD4(v12);
        v36 = ConnectionID.debugDescription.getter(v35);
        v38 = sub_10015BA6C(v36, v37, &v41);

        *(v32 + 13) = v38;
        _os_log_impl(&_mh_execute_header, v30, v31, "[%.*hhx-%{public}s] Failed to save account.", v32, 0x15u);
        sub_1000197E0(v33);

        return;
      }

      sub_100190CD4(v9);

      v39 = v12;
    }

    sub_100190CD4(v39);
  }
}

void sub_100199118(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_100199190()
{
  v0 = *sub_100198B60();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t _s29DefaultVerifierImplementationV15AccountAndStoreCMa()
{
  result = qword_1005D31B0;
  if (!qword_1005D31B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100199238()
{
  result = _s6LoggerVMa();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001992D8()
{
  v1 = *(_s6LoggerVMa() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_1004A4A74();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1001993A4(uint64_t a1, uint64_t a2)
{
  v4 = _s6LoggerVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100199408(char a1, uint64_t a2)
{
  v5 = *(_s6LoggerVMa() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_100198D30(a1, a2, v6);
}

uint64_t sub_100199488(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1001994A0()
{
  v1 = sub_1004A5734();
  v2 = [v0 accountPropertyForKey:v1];

  if (!v2)
  {
    return 0;
  }

  sub_1004A64E4();
  swift_unknownObjectRelease();
  sub_10019A8D4(&v7, &v6);
  sub_10019A8E4(0, &qword_1005D51B0, NSNumber_ptr);
  if (!swift_dynamicCast())
  {
    return 0;
  }

  v3 = [v5 BOOLValue];

  return v3;
}

uint64_t sub_100199598()
{
  v1 = sub_1004A5734();
  v2 = [v0 accountPropertyForKey:v1];

  if (!v2)
  {
    return 1;
  }

  sub_1004A64E4();
  swift_unknownObjectRelease();
  sub_10019A8D4(&v7, &v6);
  sub_10019A8E4(0, &qword_1005D51B0, NSNumber_ptr);
  if (!swift_dynamicCast())
  {
    return 1;
  }

  v3 = [v5 BOOLValue];

  return v3;
}

uint64_t sub_100199690(int a1, uint64_t (*a2)(uint64_t))
{
  if (a1 == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2 * (a1 == 2);
  }

  return a2(v2);
}

unint64_t sub_1001996CC()
{
  result = qword_1005D50B0;
  if (!qword_1005D50B0)
  {
    sub_1004A6064();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D50B0);
  }

  return result;
}

unint64_t sub_100199724()
{
  result = qword_1005D50C0;
  if (!qword_1005D50C0)
  {
    sub_10000DEFC(&qword_1005D3250, &qword_1004F5CA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D50C0);
  }

  return result;
}

uint64_t sub_100199788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = _s6LoggerVMa();
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v34 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v34 - v14;
  if (a2)
  {
    v16 = v13;
    v17 = [objc_allocWithZone(ACAccountStore) init];
    v18 = sub_1004A5734();
    v19 = [v17 accountWithIdentifier:v18];

    if (v19)
    {
      sub_100190B00(a3, v15);
      v20 = _s29DefaultVerifierImplementationV15AccountAndStoreCMa();
      v21 = *(v20 + 48);
      v22 = *(v20 + 52);
      v23 = swift_allocObject();
      *(v23 + 16) = v19;
      *(v23 + 24) = v17;
      sub_1001993A4(v15, v23 + OBJC_IVAR____TtCVE15IMAP2ConnectionO16IMAP2Persistence16CertificateTrust29DefaultVerifierImplementationP33_F342119D05A6F1A070C6FAB1999158A515AccountAndStore_logger);
      return v23;
    }

    sub_100190B00(a3, v12);
    sub_100190B00(a3, v9);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v25 = sub_1004A4A54();
    v26 = sub_1004A6014();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v35 = v28;
      *v27 = 68158210;
      *(v27 + 4) = 2;
      *(v27 + 8) = 256;
      v29 = v9[*(v16 + 20)];
      sub_100190CD4(v9);
      *(v27 + 10) = v29;
      *(v27 + 11) = 2082;
      v30 = *&v12[*(v16 + 20) + 4];
      sub_100190CD4(v12);
      v31 = ConnectionID.debugDescription.getter(v30);
      v33 = sub_10015BA6C(v31, v32, &v35);

      *(v27 + 13) = v33;
      _os_log_impl(&_mh_execute_header, v25, v26, "[%.*hhx-%{public}s] Unable to get account.", v27, 0x15u);
      sub_1000197E0(v28);
    }

    else
    {
      sub_100190CD4(v9);

      sub_100190CD4(v12);
    }
  }

  return 0;
}

uint64_t sub_100199A58(unsigned __int8 a1, int a2, unsigned __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v161 = a5;
  v162 = a6;
  LODWORD(v160) = a2;
  v7 = a3;
  v159 = _s6LoggerVMa();
  v8 = *(*(v159 - 8) + 64);
  v9 = __chkstk_darwin(v159);
  v11 = &v150 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v150 - v13;
  v15 = __chkstk_darwin(v12);
  v153 = &v150 - v16;
  v17 = __chkstk_darwin(v15);
  v154 = &v150 - v18;
  v19 = __chkstk_darwin(v17);
  v151 = &v150 - v20;
  v21 = __chkstk_darwin(v19);
  v152 = &v150 - v22;
  v23 = __chkstk_darwin(v21);
  v155 = &v150 - v24;
  v25 = __chkstk_darwin(v23);
  v156 = &v150 - v26;
  v27 = __chkstk_darwin(v25);
  v29 = &v150 - v28;
  v30 = __chkstk_darwin(v27);
  v158 = &v150 - v31;
  v32 = __chkstk_darwin(v30);
  v34 = &v150 - v33;
  __chkstk_darwin(v32);
  v157 = &v150 - v35;
  v36 = sub_1004A4A74();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  v39 = __chkstk_darwin(v36);
  v41 = &v150 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v39);
  v43 = __chkstk_darwin(v42);
  v44 = __chkstk_darwin(v43);
  __chkstk_darwin(v44);
  v46 = __chkstk_darwin(&v150 - v45);
  v51 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      if (v7 == 772)
      {
        goto LABEL_4;
      }

LABEL_10:

      v70 = v162;
      (*(v37 + 16))(v41, v162, v36);
      sub_100190B00(v70, v14);
      sub_100190B00(v70, v11);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v71 = sub_1004A4A54();
      v72 = sub_1004A6014();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v160 = swift_slowAlloc();
        v161 = v36;
        v163 = v160;
        *v73 = 68158210;
        *(v73 + 4) = 2;
        *(v73 + 8) = 256;
        v74 = v159;
        v75 = v11[*(v159 + 20)];
        sub_100190CD4(v11);
        *(v73 + 10) = v75;
        *(v73 + 11) = 2082;
        v76 = *&v14[*(v74 + 20) + 4];
        sub_100190CD4(v14);
        v77 = ConnectionID.debugDescription.getter(v76);
        v79 = sub_10015BA6C(v77, v78, &v163);

        *(v73 + 13) = v79;
        _os_log_impl(&_mh_execute_header, v71, v72, "[%.*hhx-%{public}s] TLS policy not met.", v73, 0x15u);
        sub_1000197E0(v160);

        sub_100190CD4(v70);
        (*(v37 + 8))(v41, v161);
      }

      else
      {
        sub_100190CD4(v11);

        sub_100190CD4(v70);
        sub_100190CD4(v14);
        (*(v37 + 8))(v41, v36);
      }

      return 1;
    }

    if ((v7 - 771) > 1)
    {
      goto LABEL_10;
    }
  }

  else if ((v7 - 771) >= 2)
  {
    goto LABEL_10;
  }

LABEL_4:
  v52 = &v150 - v47;
  v53 = v46;
  v54 = v50;
  v55 = v49;
  v56 = v48;
  sub_10000C9C0(&qword_1005D3258, &qword_1004DCFF0);
  if (v160)
  {
    if (v160 == 4)
    {

      v81 = v37;
      v82 = v53;
      v83 = v53;
      v84 = v162;
      (*(v37 + 16))(v83, v162, v36);
      v85 = v158;
      sub_100190B00(v84, v158);
      sub_100190B00(v84, v29);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v86 = sub_1004A4A54();
      v87 = sub_1004A6014();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v161 = v36;
        v90 = v89;
        v163 = v89;
        *v88 = 68158210;
        *(v88 + 4) = 2;
        *(v88 + 8) = 256;
        v91 = v159;
        v92 = *(v159 + 20);
        v160 = v82;
        v93 = v29[v92];
        sub_100190CD4(v29);
        *(v88 + 10) = v93;
        *(v88 + 11) = 2082;
        v94 = *(v85 + *(v91 + 20) + 4);
        sub_100190CD4(v85);
        v95 = ConnectionID.debugDescription.getter(v94);
        v97 = sub_10015BA6C(v95, v96, &v163);

        *(v88 + 13) = v97;
        _os_log_impl(&_mh_execute_header, v86, v87, "[%.*hhx-%{public}s] Fatal trust failure.", v88, 0x15u);
        sub_1000197E0(v90);

        sub_100190CD4(v84);
        (*(v81 + 8))(v160, v161);
      }

      else
      {
        sub_100190CD4(v29);

        sub_100190CD4(v84);
        sub_100190CD4(v85);
        (*(v37 + 8))(v82, v36);
      }

      return 1;
    }

    if (v160 == 1)
    {

      v57 = v52;
      v58 = v162;
      (*(v37 + 16))(v52, v162, v36);
      v59 = v157;
      sub_100190B00(v58, v157);
      sub_100190B00(v58, v34);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v60 = sub_1004A4A54();
      v61 = sub_1004A6014();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v160 = swift_slowAlloc();
        v163 = v160;
        *v62 = 68158210;
        *(v62 + 4) = 2;
        *(v62 + 8) = 256;
        v63 = v159;
        v64 = *(v159 + 20);
        v161 = v36;
        v65 = v34[v64];
        sub_100190CD4(v34);
        *(v62 + 10) = v65;
        *(v62 + 11) = 2082;
        v66 = *(v59 + *(v63 + 20) + 4);
        sub_100190CD4(v59);
        v67 = ConnectionID.debugDescription.getter(v66);
        v69 = sub_10015BA6C(v67, v68, &v163);

        *(v62 + 13) = v69;
        _os_log_impl(&_mh_execute_header, v60, v61, "[%.*hhx-%{public}s] Trust denied.", v62, 0x15u);
        sub_1000197E0(v160);

        sub_100190CD4(v58);
        (*(v37 + 8))(v57, v161);
      }

      else
      {
        sub_100190CD4(v34);

        sub_100190CD4(v58);
        sub_100190CD4(v59);
        (*(v37 + 8))(v57, v36);
      }

      return 1;
    }

    if (v51 <= 1u)
    {

      v98 = v37;
      v99 = *(v37 + 16);
      v100 = v54;
      v101 = v162;
      v102 = v36;
      v99(v54, v162, v36);
      v103 = v156;
      sub_100190B00(v101, v156);
      v104 = v155;
      sub_100190B00(v101, v155);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v105 = sub_1004A4A54();
      v106 = sub_1004A6014();
      if (os_log_type_enabled(v105, v106))
      {
        v107 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        v161 = v100;
        v109 = v108;
        v163 = v108;
        *v107 = 68158210;
        *(v107 + 4) = 2;
        *(v107 + 8) = 256;
        v110 = v159;
        v111 = v104;
        v112 = *(v104 + *(v159 + 20));
        sub_100190CD4(v111);
        *(v107 + 10) = v112;
        *(v107 + 11) = 2082;
        v113 = *(v103 + *(v110 + 20) + 4);
        sub_100190CD4(v103);
        v114 = ConnectionID.debugDescription.getter(v113);
        v116 = v102;
        v117 = sub_10015BA6C(v114, v115, &v163);

        *(v107 + 13) = v117;
        _os_log_impl(&_mh_execute_header, v105, v106, "[%.*hhx-%{public}s] Trust evaluation failed.", v107, 0x15u);
        sub_1000197E0(v109);

        sub_100190CD4(v101);
        (*(v98 + 8))(v161, v116);
        return 1;
      }

      sub_100190CD4(v104);

      sub_100190CD4(v101);
      v134 = v103;
      goto LABEL_35;
    }

    v118 = v162;
    v98 = v37;
    v102 = v36;
    switch(v160)
    {
      case 2u:

        (*(v37 + 16))(v55, v118, v36);
        v135 = v152;
        sub_100190B00(v118, v152);
        v136 = v151;
        sub_100190B00(v118, v151);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v137 = sub_1004A4A54();
        v138 = sub_1004A6034();
        if (os_log_type_enabled(v137, v138))
        {
          v139 = swift_slowAlloc();
          v140 = swift_slowAlloc();
          v161 = v55;
          v141 = v140;
          v163 = v140;
          *v139 = 68158210;
          *(v139 + 4) = 2;
          *(v139 + 8) = 256;
          v142 = v159;
          v143 = v136;
          v144 = *(v136 + *(v159 + 20));
          sub_100190CD4(v143);
          *(v139 + 10) = v144;
          *(v139 + 11) = 2082;
          v145 = *(v135 + *(v142 + 20) + 4);
          sub_100190CD4(v135);
          v146 = ConnectionID.debugDescription.getter(v145);
          v148 = v102;
          v149 = sub_10015BA6C(v146, v147, &v163);

          *(v139 + 13) = v149;
          _os_log_impl(&_mh_execute_header, v137, v138, "[%.*hhx-%{public}s] Unspecified trust result.", v139, 0x15u);
          sub_1000197E0(v141);

          sub_100190CD4(v118);
          (*(v98 + 8))(v161, v148);
        }

        else
        {
          sub_100190CD4(v136);

          sub_100190CD4(v118);
          sub_100190CD4(v135);
          (*(v98 + 8))(v55, v36);
        }

        return 0;
      case 5u:

        v100 = v56;
        (*(v37 + 16))(v56, v118, v36);
        v119 = v154;
        sub_100190B00(v118, v154);
        v120 = v153;
        sub_100190B00(v118, v153);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v121 = sub_1004A4A54();
        v122 = sub_1004A6014();
        if (os_log_type_enabled(v121, v122))
        {
          v123 = swift_slowAlloc();
          v124 = swift_slowAlloc();
          v161 = v100;
          v125 = v124;
          v163 = v124;
          *v123 = 68158210;
          *(v123 + 4) = 2;
          *(v123 + 8) = 256;
          v126 = v159;
          v127 = v120;
          v128 = *(v120 + *(v159 + 20));
          sub_100190CD4(v127);
          *(v123 + 10) = v128;
          *(v123 + 11) = 2082;
          v129 = *(v119 + *(v126 + 20) + 4);
          sub_100190CD4(v119);
          v130 = ConnectionID.debugDescription.getter(v129);
          v132 = v102;
          v133 = sub_10015BA6C(v130, v131, &v163);

          *(v123 + 13) = v133;
          _os_log_impl(&_mh_execute_header, v121, v122, "[%.*hhx-%{public}s] Trust evaluation failed with other error.", v123, 0x15u);
          sub_1000197E0(v125);

          sub_100190CD4(v118);
          (*(v98 + 8))(v161, v132);
          return 1;
        }

        sub_100190CD4(v120);

        sub_100190CD4(v118);
        v134 = v119;
LABEL_35:
        sub_100190CD4(v134);
        (*(v98 + 8))(v100, v102);
        return 1;
      case 3u:
        sub_100190CD4(v162);

        return 2;
      default:
        result = sub_1004A6D24();
        __break(1u);
        break;
    }
  }

  else
  {

    sub_100190CD4(v162);
    return 0;
  }

  return result;
}

_OWORD *sub_10019A8D4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10019A8E4(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_10019A950()
{
  result = qword_1005D3298;
  if (!qword_1005D3298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D3298);
  }

  return result;
}

uint64_t sub_10019A9C4(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for ConnectionState();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v14[-v9];
  sub_1001AD9FC(a1, &v14[-v9], type metadata accessor for ConnectionState);
  v11 = *a2;
  v12 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  sub_1001AD9FC(v11 + v12, v7, type metadata accessor for ConnectionState);
  swift_beginAccess();
  sub_1001AC94C(v10, v11 + v12);
  swift_endAccess();
  sub_10019AB14(v7);
  sub_1001AD938(v7, type metadata accessor for ConnectionState);
  return sub_1001AD938(v10, type metadata accessor for ConnectionState);
}

void sub_10019AB14(uint64_t a1)
{
  v3 = type metadata accessor for ConnectionState();
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = v17 - v9;
  __chkstk_darwin(v8);
  v12 = v17 - v11;
  v13 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  sub_1001AD9FC(v1 + v13, v12, type metadata accessor for ConnectionState);
  v14 = _s15IMAP2Connection0B5StateO21__derived_enum_equalsySbAC_ACtFZ_0(a1, v12);
  sub_1001AD938(v12, type metadata accessor for ConnectionState);
  if ((v14 & 1) == 0)
  {
    sub_1001AD9FC(a1, v10, type metadata accessor for ConnectionState);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      memcpy(v22, v10, sizeof(v22));
      sub_1001AD9FC(v1 + v13, v7, type metadata accessor for ConnectionState);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        memcpy(v19, v7, sizeof(v19));
        v20[8] = *&v22[320];
        v20[9] = *&v22[336];
        v21 = *&v22[352];
        v20[4] = *&v22[256];
        v20[5] = *&v22[272];
        v20[6] = *&v22[288];
        v20[7] = *&v22[304];
        v20[0] = *&v22[192];
        v20[1] = *&v22[208];
        v20[2] = *&v22[224];
        v20[3] = *&v22[240];
        if (sub_1001ACFC0(v20) == 1)
        {
          sub_1001AD074(v20);
          sub_1001ACFCC(v22);
          v17[8] = *&v19[320];
          v17[9] = *&v19[336];
          v18 = *&v19[352];
          v17[4] = *&v19[256];
          v17[5] = *&v19[272];
          v17[6] = *&v19[288];
          v17[7] = *&v19[304];
          v17[0] = *&v19[192];
          v17[1] = *&v19[208];
          v17[2] = *&v19[224];
          v17[3] = *&v19[240];
          if (sub_1001ACFC0(v17) == 1)
          {
            sub_1001AD074(v17);
            sub_1001ACFCC(v19);
            return;
          }

          v15 = v19;
        }

        else
        {
          sub_1001ACFCC(v19);
          v15 = v22;
        }

        sub_1001ACFCC(v15);
      }

      else
      {
        sub_1001ACFCC(v22);
        sub_1001AD938(v7, type metadata accessor for ConnectionState);
      }
    }

    else
    {
      sub_1001AD938(v10, type metadata accessor for ConnectionState);
    }

    v16 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_enqueuedEvents;
    swift_beginAccess();
    if (*(v1 + v16))
    {
      sub_10019E9D8(a1);
    }

    else
    {
      *(v1 + v16) = _swiftEmptyArrayStorage;
      sub_10019E9D8(a1);
      sub_1001A90C0();
    }
  }
}

uint64_t CommandConnection.state.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  return sub_1001AD9FC(v1 + v3, a1, type metadata accessor for ConnectionState);
}

uint64_t CommandConnection.connectionTraits.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_connectionTraits;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_10019AFD4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
}

uint64_t sub_10019B044(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t CommandConnection.constraint.getter()
{
  v1 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_pathAttributes;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!*(v2 + 16))
  {
    return 0;
  }

  v3 = *(v2 + 40);
  sub_1004A6E94();
  sub_1004A6EB4(0);
  v4 = sub_1004A6F14() & ~(-1 << *(v2 + 32));
  return (*(v2 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v4) & 1;
}

uint64_t CommandConnection.__allocating_init(id:engineID:configuration:connectionTraits:makeCredentials:getPushInformation:finishPushRegistration:queue:delegate:reportDataTransfer:test_overrideIdleRefreshInterval:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t), void (*a8)(uint64_t), double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, double a24, char a25)
{
  v18 = v17;
  v94 = a8;
  v87 = a7;
  v93 = a6;
  v85 = a5;
  v88 = a4;
  v91 = a23;
  v92 = a18;
  v86 = a17;
  v84 = a21;
  v79 = sub_1004A5234();
  v78 = *(v79 - 8);
  v23 = *(v78 + 64);
  __chkstk_darwin(v79);
  v81 = &v76[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v25);
  v80 = &v76[-v26];
  v83 = sub_1004A4E34();
  v95 = *(v83 - 8);
  v27 = v95[8];
  __chkstk_darwin(v83);
  v90 = &v76[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v29);
  v89 = &v76[-v30];
  v31 = type metadata accessor for ConnectionConfiguration(0);
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8);
  v34 = &v76[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = *(v18 + 48);
  v36 = *(v18 + 52);
  v37 = swift_allocObject();
  v38 = v37 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_delegate;
  *(v37 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v37 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_commandCounter) = 0;
  v39 = v37 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_runningCommands;
  *v39 = _swiftEmptyArrayStorage;
  *(v39 + 8) = 0;
  *(v39 + 16) = 1;
  *(v37 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_recentErrors) = _swiftEmptyArrayStorage;
  *(v37 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_enqueuedEvents) = 0;
  *(v37 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_pathAttributes) = _swiftEmptySetSingleton;
  *(v37 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_dataTransferReportCollector) = 0;
  v40 = (v37 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_idle);
  *v40 = 0u;
  v40[1] = 0u;
  v40[2] = 0u;
  *(v40 + 44) = 0u;
  *(v37 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_stuckConnectionCheckTimer) = 0;
  *(v37 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id) = a1;
  *(v37 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_engineID) = a2;
  *(v37 + 24) = a19;
  v82 = a3;
  sub_1001AD9FC(a3, v34, type metadata accessor for ConnectionConfiguration);
  v41 = type metadata accessor for Connection(0);
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();
  v44 = a19;
  v77 = a1;
  v45 = sub_1001C2778(v34, v44, a2, a1);

  sub_1001AD9FC(v45 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger, v37 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, _s6LoggerVMa);
  *(v38 + 8) = v84;
  v84 = a20;
  swift_unknownObjectWeakAssign();
  v46 = (v37 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_makeCredentials);
  *v46 = v85;
  v46[1] = a6;
  v47 = (v37 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_getPushInformation);
  v48 = v94;
  *v47 = v87;
  v47[1] = v48;
  v49 = (v37 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_finishPushRegistration);
  v50 = v92;
  *v49 = v86;
  v49[1] = v50;
  *(v37 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_connectionTraits) = v88;
  LODWORD(v88) = enum case for NWConnection.State.setup(_:);
  v87 = v95[13];
  v51 = v83;
  v87(v37 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state);
  type metadata accessor for ConnectionState();
  swift_storeEnumTagMultiPayload();
  *(v37 + 16) = v45;
  *(v45 + OBJC_IVAR____TtC15IMAP2Connection10Connection_delegate + 8) = &off_1005A4A28;
  swift_unknownObjectWeakAssign();
  v52 = *(v45 + OBJC_IVAR____TtC15IMAP2Connection10Connection_connection);
  _s27DataTransferReportCollectorCMa();
  v53 = swift_allocObject();
  *(v53 + 56) = 0;
  *(v53 + 64) = 0;
  *(v53 + 72) = 0;
  v54 = v44;

  v86 = v45;

  v55 = v89;
  sub_1004A4E54();
  v56 = v90;
  v57 = v51;
  (v87)(v90, v88, v51);
  v58 = v56;
  LOBYTE(v45) = sub_1004A4E24();
  v59 = v95[1];
  v59(v58, v57);
  result = (v59)(v55, v57);
  if (v45)
  {
    *(v53 + 16) = v52;
    *(v53 + 24) = v77;
    *(v53 + 32) = v54;
    *(v53 + 40) = a22;
    *(v53 + 48) = v91;
    v61 = *(v37 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_dataTransferReportCollector);
    *(v37 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_dataTransferReportCollector) = v53;

    if (a25)
    {
      v62 = 285.0;
    }

    else
    {
      v62 = a24;
    }

    v63 = v54;

    sub_10019C2E4(v63, v97, v62);
    v64 = (v37 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_idle);
    swift_beginAccess();
    v65 = v64[1];
    v99[0] = *v64;
    v99[1] = v65;
    *v100 = v64[2];
    *&v100[12] = *(v64 + 44);
    v66 = v97[1];
    *v64 = v97[0];
    v64[1] = v66;
    v64[2] = *v98;
    *(v64 + 44) = *&v98[12];
    sub_100025F40(v99, &qword_1005D32C8, &unk_1004DD0B0);
    v67 = v80;
    *v80 = 9;
    v68 = enum case for DispatchTimeInterval.seconds(_:);
    v69 = *(v78 + 104);
    v70 = v79;
    v69(v67, enum case for DispatchTimeInterval.seconds(_:), v79);
    v71 = v81;
    *v81 = 1;
    v69(v71, v68, v70);
    v72 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1001AC92C;
    aBlock[5] = v72;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10019C778;
    aBlock[3] = &unk_1005A49D8;
    v73 = _Block_copy(aBlock);
    type metadata accessor for RestartableTimer();
    swift_allocObject();

    v74 = RestartableTimer.init(queue:repeating:leeway:closure:)(v63, v67, v71, v73);
    swift_unknownObjectRelease();

    sub_1001AD938(v82, type metadata accessor for ConnectionConfiguration);

    v75 = *(v37 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_stuckConnectionCheckTimer);
    *(v37 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_stuckConnectionCheckTimer) = v74;

    return v37;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CommandConnection.init(id:engineID:configuration:connectionTraits:makeCredentials:getPushInformation:finishPushRegistration:queue:delegate:reportDataTransfer:test_overrideIdleRefreshInterval:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, void *a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, double a24, char a25)
{
  v18 = v17;
  v93 = a8;
  v86 = a7;
  v92 = a6;
  v84 = a5;
  v87 = a4;
  v90 = a23;
  v91 = a18;
  v85 = a17;
  v83 = a21;
  v78 = sub_1004A5234();
  v77 = *(v78 - 8);
  v23 = *(v77 + 64);
  v24 = __chkstk_darwin(v78);
  v80 = &v75[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v24);
  v79 = &v75[-v26];
  v82 = sub_1004A4E34();
  v94 = *(v82 - 8);
  v27 = v94[8];
  v28 = __chkstk_darwin(v82);
  v89 = &v75[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v28);
  v88 = &v75[-v30];
  v31 = type metadata accessor for ConnectionConfiguration(0);
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8);
  v34 = &v75[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = v18 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_delegate;
  *(v18 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v18 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_commandCounter) = 0;
  v36 = v18 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_runningCommands;
  *v36 = _swiftEmptyArrayStorage;
  *(v36 + 8) = 0;
  *(v36 + 16) = 1;
  *(v18 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_recentErrors) = _swiftEmptyArrayStorage;
  *(v18 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_enqueuedEvents) = 0;
  *(v18 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_pathAttributes) = _swiftEmptySetSingleton;
  *(v18 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_dataTransferReportCollector) = 0;
  v37 = (v18 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_idle);
  *v37 = 0u;
  v37[1] = 0u;
  v37[2] = 0u;
  *(v37 + 44) = 0u;
  *(v18 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_stuckConnectionCheckTimer) = 0;
  *(v18 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id) = a1;
  *(v18 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_engineID) = a2;
  *(v18 + 24) = a19;
  v81 = a3;
  sub_1001AD9FC(a3, v34, type metadata accessor for ConnectionConfiguration);
  v38 = type metadata accessor for Connection(0);
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  v41 = a19;
  v76 = a1;
  v42 = sub_1001C2778(v34, v41, a2, a1);

  sub_1001AD9FC(v42 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger, v18 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, _s6LoggerVMa);
  *(v35 + 8) = v83;
  v83 = a20;
  swift_unknownObjectWeakAssign();
  v43 = (v18 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_makeCredentials);
  *v43 = v84;
  v43[1] = a6;
  v44 = (v18 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_getPushInformation);
  v45 = v93;
  *v44 = v86;
  v44[1] = v45;
  v46 = (v18 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_finishPushRegistration);
  v47 = v91;
  *v46 = v85;
  v46[1] = v47;
  *(v18 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_connectionTraits) = v87;
  v48 = enum case for NWConnection.State.setup(_:);
  v87 = v94[13];
  v49 = v82;
  v87(v18 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state, enum case for NWConnection.State.setup(_:), v82);
  type metadata accessor for ConnectionState();
  swift_storeEnumTagMultiPayload();
  *(v18 + 16) = v42;
  *(v42 + OBJC_IVAR____TtC15IMAP2Connection10Connection_delegate + 8) = &off_1005A4A28;
  swift_unknownObjectWeakAssign();
  v50 = *(v42 + OBJC_IVAR____TtC15IMAP2Connection10Connection_connection);
  _s27DataTransferReportCollectorCMa();
  v51 = swift_allocObject();
  *(v51 + 56) = 0;
  *(v51 + 64) = 0;
  *(v51 + 72) = 0;
  v85 = v41;

  v86 = v42;

  v52 = v90;

  v53 = v88;
  sub_1004A4E54();
  v54 = v89;
  v55 = v49;
  v87(v89, v48, v49);
  v56 = v53;
  LOBYTE(v53) = sub_1004A4E24();
  v57 = v94[1];
  v57(v54, v55);
  result = (v57)(v56, v55);
  if (v53)
  {
    *(v51 + 16) = v50;
    *(v51 + 24) = v76;
    v59 = v85;
    *(v51 + 32) = v85;
    *(v51 + 40) = a22;
    *(v51 + 48) = v52;
    v60 = *(v18 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_dataTransferReportCollector);
    *(v18 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_dataTransferReportCollector) = v51;

    if (a25)
    {
      v61 = 285.0;
    }

    else
    {
      v61 = a24;
    }

    v62 = v59;

    sub_10019C2E4(v62, v96, v61);
    v63 = (v18 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_idle);
    swift_beginAccess();
    v64 = v63[1];
    v98[0] = *v63;
    v98[1] = v64;
    *v99 = v63[2];
    *&v99[12] = *(v63 + 44);
    v65 = v96[1];
    *v63 = v96[0];
    v63[1] = v65;
    v63[2] = *v97;
    *(v63 + 44) = *&v97[12];
    sub_100025F40(v98, &qword_1005D32C8, &unk_1004DD0B0);
    v66 = v79;
    *v79 = 9;
    v67 = enum case for DispatchTimeInterval.seconds(_:);
    v68 = *(v77 + 104);
    v69 = v78;
    v68(v66, enum case for DispatchTimeInterval.seconds(_:), v78);
    v70 = v80;
    *v80 = 1;
    v68(v70, v67, v69);
    v71 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1001ADD78;
    aBlock[5] = v71;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10019C778;
    aBlock[3] = &unk_1005A4A00;
    v72 = _Block_copy(aBlock);
    type metadata accessor for RestartableTimer();
    swift_allocObject();

    v73 = RestartableTimer.init(queue:repeating:leeway:closure:)(v62, v66, v70, v72);
    swift_unknownObjectRelease();

    sub_1001AD938(v81, type metadata accessor for ConnectionConfiguration);

    v74 = *(v18 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_stuckConnectionCheckTimer);
    *(v18 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_stuckConnectionCheckTimer) = v73;

    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10019C2E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_1004A5234();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = aBlock - v12;
  *(aBlock - v12) = 500;
  v14 = enum case for DispatchTimeInterval.milliseconds(_:);
  v15 = *(v7 + 104);
  v15(aBlock - v12, enum case for DispatchTimeInterval.milliseconds(_:), v6);
  *v11 = 100;
  v15(v11, v14, v6);
  v16 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1001ADD64;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019C778;
  aBlock[3] = &unk_1005A4BF0;
  v17 = _Block_copy(aBlock);
  type metadata accessor for RestartableTimer();
  swift_allocObject();
  v18 = a1;

  v19 = RestartableTimer.init(queue:repeating:leeway:closure:)(v18, v13, v11, v17);

  LODWORD(v11) = sub_1001AC12C(16777217);

  v21 = (vcvts_n_f32_u32(v11, 0x18uLL) * 0.17) + 0.83;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 2;
  *(a2 + 40) = v19;
  if (v11 == 0x1000000)
  {
    v21 = 1.0;
  }

  *(a2 + 48) = a3;
  *(a2 + 56) = v21;
  return result;
}

uint64_t sub_10019C574()
{
  v0 = type metadata accessor for ConnectionState();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v15[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1004A53F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = static MonotonicTime.now()();
    v12 = *(v10 + 24);
    *v8 = v12;
    (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
    v13 = v12;
    LOBYTE(v12) = sub_1004A5404();
    result = (*(v5 + 8))(v8, v4);
    if (v12)
    {
      v14 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
      swift_beginAccess();
      sub_1001AD9FC(v10 + v14, v3, type metadata accessor for ConnectionState);
      LOBYTE(v14) = ConnectionState.isClosedOrCancelled.getter();
      sub_1001AD938(v3, type metadata accessor for ConnectionState);
      if ((v14 & 1) == 0)
      {
        sub_1001AC9B0();
        sub_1001A9E1C(v11);
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10019C778(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

Swift::Void __swiftcall CommandConnection.start()()
{
  v1 = v0;
  v2 = type metadata accessor for ConnectionState();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v24 - v7;
  v9 = sub_1004A53F4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = (&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v1 + 24);
  *v14 = v15;
  (*(v10 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v9, v12);
  v16 = v15;
  LOBYTE(v15) = sub_1004A5404();
  (*(v10 + 8))(v14, v9);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v17 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  sub_1001AD9FC(v1 + v17, v8, type metadata accessor for ConnectionState);
  v18 = enum case for NWConnection.State.setup(_:);
  v19 = sub_1004A4E34();
  (*(*(v19 - 8) + 104))(v5, v18, v19);
  swift_storeEnumTagMultiPayload();
  v20 = _s15IMAP2Connection0B5StateO21__derived_enum_equalsySbAC_ACtFZ_0(v8, v5);
  sub_1001AD938(v5, type metadata accessor for ConnectionState);
  sub_1001AD938(v8, type metadata accessor for ConnectionState);
  if ((v20 & 1) == 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (!*(v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_dataTransferReportCollector))
  {
LABEL_9:
    __break(1u);
    return;
  }

  v21 = *(v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_dataTransferReportCollector);

  sub_1001CFCE4();

  v22 = *(v1 + 16);
  sub_1001B6FEC();
  if (*(v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_stuckConnectionCheckTimer))
  {
    v23 = *(v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_stuckConnectionCheckTimer);

    RestartableTimer.start()();
  }
}

Swift::Void __swiftcall CommandConnection.cancel()()
{
  v1 = v0;
  v47 = type metadata accessor for ConnectionState();
  v2 = *(*(v47 - 8) + 64);
  v3 = __chkstk_darwin(v47);
  v46 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v45 = &v44 - v6;
  v7 = __chkstk_darwin(v5);
  v9 = &v44 - v8;
  __chkstk_darwin(v7);
  v11 = &v44 - v10;
  v12 = _s6LoggerVMa();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1004A53F4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = (&v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v1 + 24);
  *v20 = v21;
  (*(v17 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v16);
  v22 = v21;
  LOBYTE(v21) = sub_1004A5404();
  (*(v17 + 8))(v20, v16);
  if ((v21 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v23 = v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
  sub_1001AD9FC(v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v15, _s6LoggerVMa);

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v24 = sub_1004A4A54();
  v25 = sub_1004A4A74();
  (*(*(v25 - 8) + 8))(v15, v25);
  v26 = sub_1004A6034();
  if (os_log_type_enabled(v24, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *&v54[0] = v28;
    *v27 = 68158210;
    *(v27 + 4) = 2;
    *(v27 + 8) = 256;
    v29 = v23 + *(v12 + 20);
    *(v27 + 10) = *v29;

    *(v27 + 11) = 2082;
    v30 = ConnectionID.debugDescription.getter(*(v29 + 4));
    v32 = sub_10015BA6C(v30, v31, v54);

    *(v27 + 13) = v32;
    _os_log_impl(&_mh_execute_header, v24, v26, "[%.*hhx-%{public}s] Cancel.", v27, 0x15u);
    sub_1000197E0(v28);
  }

  else
  {
  }

  v33 = *(*(v1 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_connection);
  sub_1004A4E64();
  v34 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  sub_1001AD9FC(v1 + v34, v11, type metadata accessor for ConnectionState);
  sub_1001ADC1C(v11, v9, type metadata accessor for ConnectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1001AD938(v9, type metadata accessor for ConnectionState);
      return;
    }

    if (EnumCaseMultiPayload == 4)
    {
      return;
    }
  }

  else
  {
    sub_1001AD938(v9, type metadata accessor for ConnectionState);
  }

  v36 = v45;
  swift_storeEnumTagMultiPayload();
  v37 = v46;
  sub_1001AD9FC(v1 + v34, v46, type metadata accessor for ConnectionState);
  swift_beginAccess();
  sub_1001AC94C(v36, v1 + v34);
  swift_endAccess();
  sub_10019AB14(v37);
  sub_1001AD938(v37, type metadata accessor for ConnectionState);
  sub_1001AD938(v36, type metadata accessor for ConnectionState);
  v38 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_stuckConnectionCheckTimer;
  if (*(v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_stuckConnectionCheckTimer))
  {
    v39 = *(v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_stuckConnectionCheckTimer);

    RestartableTimer.stop()();

    v40 = *(v1 + v38);
  }

  *(v1 + v38) = 0;

  v41 = v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_idle;
  swift_beginAccess();
  *&v55[12] = *(v41 + 44);
  v42 = *(v41 + 32);
  v54[1] = *(v41 + 16);
  *v55 = v42;
  v54[0] = *v41;
  if (*(&v42 + 1))
  {
    v43 = *(v41 + 16);
    v49[0] = *v41;
    v49[1] = v43;
    v50 = *(v41 + 32);
    v51 = *(&v42 + 1);
    v52 = *(v41 + 48);
    v53 = *(v41 + 56);
    sub_10000E268(v54, &v48, &qword_1005D32C8, &unk_1004DD0B0);

    sub_100025F40(v49, &qword_1005D32C8, &unk_1004DD0B0);
    RestartableTimer.stop()();
  }
}

BOOL CommandConnection.isCancelledOrFailed.getter()
{
  v1 = type metadata accessor for ConnectionState();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  sub_1001AD9FC(v0 + v5, v4, type metadata accessor for ConnectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    sub_1001AD938(v4, type metadata accessor for ConnectionState);
  }

  return EnumCaseMultiPayload > 3;
}

uint64_t CommandConnection.canRunCommand(_:)()
{
  v1 = type metadata accessor for ConnectionState();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v25[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v25[-v6];
  v8 = sub_1004A53F4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v25[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(v0 + 24);
  *v13 = v14;
  (*(v9 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v8, v11);
  v15 = v14;
  LOBYTE(v14) = sub_1004A5404();
  result = (*(v9 + 8))(v13, v8);
  if (v14)
  {
    v17 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
    swift_beginAccess();
    sub_1001AD9FC(v0 + v17, v7, type metadata accessor for ConnectionState);
    sub_1001ADC1C(v7, v4, type metadata accessor for ConnectionState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if ((EnumCaseMultiPayload - 4) < 2)
      {
        return 0;
      }
    }

    else if (EnumCaseMultiPayload >= 2)
    {
      sub_1001AD938(v4, type metadata accessor for ConnectionState);
      v19 = v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_runningCommands;
      swift_beginAccess();
      v21 = *v19;
      v20 = *(v19 + 8);
      v22 = *(v19 + 16);

      v23 = sub_1001FBAA0();
      sub_1001FBFB0();
      v24 = sub_100197A14();
      sub_10020924C(v23, v24, v21);

      return 1;
    }

    sub_1001AD938(v4, type metadata accessor for ConnectionState);
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t CommandConnection.send(_:)(uint64_t a1)
{
  v3 = type metadata accessor for OutboundContent(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1004A53F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(v1 + 24);
  *v11 = v12;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7);
  v13 = v12;
  LOBYTE(v12) = sub_1004A5404();
  result = (*(v8 + 8))(v11, v7);
  if (v12)
  {
    __chkstk_darwin(result);
    *&v17[-16] = v1;
    *&v17[-8] = a1;
    v15 = sub_10019DB3C(sub_1001ACFA4);
    v16 = *(v1 + 16);
    sub_1001AD9FC(a1, v6, type metadata accessor for ClientCommand);
    swift_storeEnumTagMultiPayload();
    sub_1001B78AC(v15, v6);
    sub_1001AD938(v6, type metadata accessor for OutboundContent);
    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10019D668(uint64_t a1)
{
  swift_beginAccess();
  sub_100208D6C(a1);
  return swift_endAccess();
}

IMAP2Connection::CommandID __swiftcall CommandConnection.makeNextCommandID()()
{
  v1 = sub_1004A53F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + 24);
  *v6 = v7;
  (*(v2 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v1, v4);
  v8 = v7;
  LOBYTE(v7) = sub_1004A5404();
  v9 = (*(v2 + 8))(v6, v1);
  if (v7)
  {
    v10 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_commandCounter;
    swift_beginAccess();
    v11 = (*(v0 + v10) + 1) & 0xFFFFFF;
    *(v0 + v10) = v11;
    return (*(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id) | (v11 << 32));
  }

  else
  {
    __break(1u);
  }

  return v9;
}

Swift::Void __swiftcall CommandConnection.flush()()
{
  v1 = sub_1004A4904();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004A53F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v0 + 24);
  *v10 = v11;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v12 = v11;
  LOBYTE(v11) = sub_1004A5404();
  (*(v7 + 8))(v10, v6);
  if (v11)
  {
    v13 = *(v0 + 16);
    v14 = *(v13 + OBJC_IVAR____TtC15IMAP2Connection10Connection_connection);
    v15 = OBJC_IVAR____TtC15IMAP2Connection10Connection_logger;
    v16 = (v13 + *(_s6LoggerVMa() + 20) + v15);
    v17 = (*(v16 + 1) << 27) | (*v16 << 59) | 0x800000;
    sub_1004A4914();
    sub_1001D75AC(v5);
    (*(v2 + 8))(v5, v1);
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall CommandConnection.restart()()
{
  v1 = sub_1004A53F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + 24);
  *v6 = v7;
  (*(v2 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v1, v4);
  v8 = v7;
  LOBYTE(v7) = sub_1004A5404();
  (*(v2 + 8))(v6, v1);
  if (v7)
  {
    v9 = *(v0 + 16);
    sub_1001B7E84();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10019DB3C(void (*a1)(unint64_t))
{
  v4 = sub_1004A53F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + 24);
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = sub_1004A5404();
  result = (*(v5 + 8))(v8, v4);
  if (v9)
  {
    v12 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_commandCounter;
    swift_beginAccess();
    v13 = *(v1 + v12);
    v14 = (v13 + 1) & 0xFFFFFF;
    *(v1 + v12) = v14;
    v15 = *(v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id) | (v14 << 32);
    a1(v15);
    if (v2)
    {
      *(v1 + v12) = v13;
      swift_willThrow();
    }

    swift_endAccess();
    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CommandConnection.selectedMailbox.getter()
{
  v1 = type metadata accessor for ConnectionState();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  sub_1001AD9FC(v0 + v5, v4, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1001AD938(v4, type metadata accessor for ConnectionState);
    return 0;
  }

  memcpy(v37, v4, sizeof(v37));
  v6 = *(v4 + 21);
  v38[8] = *(v4 + 20);
  v38[9] = v6;
  v39 = *(v4 + 176);
  v7 = *(v4 + 17);
  v38[4] = *(v4 + 16);
  v38[5] = v7;
  v8 = *(v4 + 19);
  v38[6] = *(v4 + 18);
  v38[7] = v8;
  v9 = *(v4 + 13);
  v38[0] = *(v4 + 12);
  v38[1] = v9;
  v10 = *(v4 + 15);
  v38[2] = *(v4 + 14);
  v38[3] = v10;
  v11 = sub_1001ACFC0(v38);
  if (!v11)
  {
    sub_1001AD074(v38);
    sub_1001ACFCC(v37);
    return 0;
  }

  if (v11 == 1)
  {
    v12 = sub_1001AD074(v38);
    v34 = *&v37[320];
    v35 = *&v37[336];
    v36 = *&v37[352];
    v30 = *&v37[256];
    v31 = *&v37[272];
    v32 = *&v37[288];
    v33 = *&v37[304];
    v26 = *&v37[192];
    v27 = *&v37[208];
    v28 = *&v37[224];
    v29 = *&v37[240];
    v13 = sub_1001AD074(&v26);
    sub_1001AD084(v13, &v25);
    sub_1001ACFCC(v37);
    v14 = *v12;
    v15 = *(v12 + 8);

    sub_1001AD020(&v37[192]);
    return v14;
  }

  else
  {
    v17 = sub_1001AD074(v38);
    v18 = *v17;
    v19 = *(v17 + 8);
    v34 = *&v37[320];
    v35 = *&v37[336];
    v36 = *&v37[352];
    v30 = *&v37[256];
    v31 = *&v37[272];
    v32 = *&v37[288];
    v33 = *&v37[304];
    v26 = *&v37[192];
    v27 = *&v37[208];
    v28 = *&v37[224];
    v29 = *&v37[240];
    v20 = sub_1001AD074(&v26);
    v21 = *v20;
    v22 = v20[2];
    v23 = v20[5];

    sub_1001ACFCC(v37);

    sub_1001AD020(&v37[192]);
    return v18;
  }
}

void CommandConnection.replaceDelegate(with:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v64 = a2;
  v5 = type metadata accessor for ConnectionState();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = (v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v11 = v58 - v10;
  v61 = _s6LoggerVMa();
  v12 = *(*(v61 - 8) + 64);
  __chkstk_darwin(v61);
  v60 = v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v58 - v15;
  v17 = sub_1004A53F4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = (v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(v3 + 24);
  *v22 = v23;
  (*(v18 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v17, v20);
  v24 = v23;
  LOBYTE(v23) = sub_1004A5404();
  (*(v18 + 8))(v22, v17);
  if (v23)
  {
    v62 = a1;
    v63 = v5;
    v25 = v3 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    sub_1001AD9FC(v3 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v16, _s6LoggerVMa);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v26 = sub_1004A4A54();
    v27 = sub_1004A4A74();
    v28 = *(v27 - 8);
    v29 = *(v28 + 8);
    v58[1] = (v28 + 8);
    v29(v16, v27);
    v30 = sub_1004A6004();
    v31 = os_log_type_enabled(v26, v30);
    v59 = v25;
    if (v31)
    {
      v32 = swift_slowAlloc();
      v58[0] = swift_slowAlloc();
      v66 = v58[0];
      *v32 = 68158210;
      *(v32 + 4) = 2;
      *(v32 + 8) = 256;
      v33 = v25 + *(v61 + 20);
      *(v32 + 10) = *v33;

      *(v32 + 11) = 2082;
      v34 = ConnectionID.debugDescription.getter(*(v33 + 4));
      v36 = v3;
      v37 = v11;
      v38 = v27;
      v39 = v8;
      v40 = v29;
      v41 = sub_10015BA6C(v34, v35, &v66);

      *(v32 + 13) = v41;
      v29 = v40;
      v8 = v39;
      v27 = v38;
      v11 = v37;
      v3 = v36;
      _os_log_impl(&_mh_execute_header, v26, v30, "[%.*hhx-%{public}s] Setting new delegate (better path available).", v32, 0x15u);
      sub_1000197E0(v58[0]);
    }

    else
    {
    }

    *(v3 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_delegate + 8) = v64;
    swift_unknownObjectWeakAssign();
    v42 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
    swift_beginAccess();
    sub_1001AD9FC(v3 + v42, v11, type metadata accessor for ConnectionState);
    LODWORD(v42) = swift_getEnumCaseMultiPayload();
    sub_1001AD938(v11, type metadata accessor for ConnectionState);
    if (v42 == 2)
    {
      v43 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_connectionTraits;
      swift_beginAccess();
      v44 = *(v3 + v43);

      v45 = static MonotonicTime.now()();
      v46 = type metadata accessor for UnauthenticatedStateWithTasks();
      *(v8 + *(v46 + 28)) = _swiftEmptyArrayStorage;
      *v8 = v44;
      v8[1] = v45;
      v47 = *(v46 + 24);
      type metadata accessor for UnauthenticatedState();
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      sub_10019AB14(v8);
      sub_1001AD938(v8, type metadata accessor for ConnectionState);
    }

    else
    {
      v49 = v59;
      v48 = v60;
      sub_1001AD9FC(v59, v60, _s6LoggerVMa);

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v50 = sub_1004A4A54();
      v29(v48, v27);
      v51 = sub_1004A6014();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v65 = v53;
        *v52 = 68158210;
        *(v52 + 4) = 2;
        *(v52 + 8) = 256;
        v54 = v49 + *(v61 + 20);
        *(v52 + 10) = *v54;

        *(v52 + 11) = 2082;
        v55 = ConnectionID.debugDescription.getter(*(v54 + 4));
        v57 = sub_10015BA6C(v55, v56, &v65);

        *(v52 + 13) = v57;
        _os_log_impl(&_mh_execute_header, v50, v51, "[%.*hhx-%{public}s] Trying to replace delegate on unauthenticated connection. Closing.", v52, 0x15u);
        sub_1000197E0(v53);
      }

      else
      {
      }

      CommandConnection.cancel()();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t CommandConnection.deinit()
{
  v1 = *(v0 + 16);

  sub_1001AD938(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, _s6LoggerVMa);
  sub_1001AD0E0(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_delegate);
  v2 = *(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_runningCommands);

  sub_1001AD938(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state, type metadata accessor for ConnectionState);
  v3 = *(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_connectionTraits);

  v4 = *(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_recentErrors);

  v5 = *(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_enqueuedEvents);

  v6 = *(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_makeCredentials + 8);

  v7 = *(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_getPushInformation + 8);

  v8 = *(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_finishPushRegistration + 8);

  v9 = *(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_pathAttributes);

  v10 = *(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_dataTransferReportCollector);

  v11 = *(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_idle + 40);

  v12 = *(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_stuckConnectionCheckTimer);

  return v0;
}

uint64_t CommandConnection.__deallocating_deinit()
{
  CommandConnection.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t Response.logIdentifier.getter()
{
  type metadata accessor for Response(0);
  sub_1004A6934();
  return 0;
}

Swift::Void __swiftcall CommandConnection.collectDataTransferReport()()
{
  if (*(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_dataTransferReportCollector))
  {

    sub_1001CFF40();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10019E9D8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000C9C0(&qword_1005D35E8, &unk_1004DD1D0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v99 = (&v95 - v6);
  v101 = type metadata accessor for ConnectionEvent(0);
  v7 = *(*(v101 - 8) + 64);
  __chkstk_darwin(v101);
  v100 = (&v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v102 = _s6LoggerVMa();
  v9 = *(*(v102 - 8) + 64);
  v10 = __chkstk_darwin(v102);
  v103 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v98 = &v95 - v12;
  v13 = type metadata accessor for ConnectionState();
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v105 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = (&v95 - v18);
  __chkstk_darwin(v17);
  v21 = &v95 - v20;
  v22 = sub_10000C9C0(&qword_1005D35F0, &unk_1004DF4F0);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v26 = &v95 - v25;
  sub_10019F600();
  v27 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  v28 = *(v23 + 56);
  v106 = a1;
  sub_1001AD9FC(a1, v26, type metadata accessor for ConnectionState);
  v29 = v1;
  v104 = v27;
  v30 = v28;
  sub_1001AD9FC(v29 + v27, &v26[v28], type metadata accessor for ConnectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v44 = v100;
    sub_1001AD9FC(&v26[v30], v19, type metadata accessor for ConnectionState);
    v45 = *v19;
    v46 = v19[1];
    v47 = v19[2];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v96 = static MonotonicTime.now()();
      v97 = v47;
      *v44 = v45;
      v44[1] = v46;
      v44[2] = v47;
      type metadata accessor for ConnectionEvent.FailureReason(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v98 = v26;
      v48 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_recentErrors;
      v2 = v29;
      swift_beginAccess();
      v49 = v99;
      sub_1001AD9FC(v44, v99, type metadata accessor for ConnectionEvent);
      sub_1001978DC(v45, v46, v47);
      v101 = v30;
      sub_1001A5C90(v96, v49);
      sub_100025F40(v49, &qword_1005D35E8, &unk_1004DD1D0);
      sub_1001AD938(v44, type metadata accessor for ConnectionEvent);
      swift_endAccess();
      v50 = swift_allocObject();
      *(v50 + 16) = *(v2 + v48);

      *(v50 + 24) = *ConnectionID.invalid.unsafeMutableAddressor();
      *(v50 + 32) = _swiftEmptySetSingleton;
      *(v50 + 40) = _swiftEmptySetSingleton;
      sub_10019FE78(v50 | 0x1000000000000000);

      v51 = *(*(v2 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_connection);
      sub_1004A4E64();
      sub_100191E44(v45, v46, v97);
      v52 = v98;
      sub_1001AD938(v98, type metadata accessor for ConnectionState);
      v53 = v52 + v101;
      goto LABEL_23;
    }

    sub_100191E44(v45, v46, v47);
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload != 2)
  {
LABEL_11:
    v2 = v29;
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      v59 = swift_getEnumCaseMultiPayload();
      v60 = v105;
      if (v59 == 4)
      {
        v61 = *(*(v29 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_connection);
        sub_1004A4E64();
        sub_1001AD938(v26, type metadata accessor for ConnectionState);
      }

      else
      {
        sub_100025F40(v26, &qword_1005D35F0, &unk_1004DF4F0);
      }

      v62 = v106;
      goto LABEL_24;
    }

    v53 = &v26[v30];
    goto LABEL_23;
  }

  v101 = v28;
  sub_1001AD9FC(&v26[v28], v21, type metadata accessor for ConnectionState);
  memcpy(v111, v21, sizeof(v111));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = v26;
    v33 = v29 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    v34 = v98;
    sub_1001AD9FC(v29 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v98, _s6LoggerVMa);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v35 = sub_1004A4A54();
    v36 = sub_1004A4A74();
    (*(*(v36 - 8) + 8))(v34, v36);
    v37 = sub_1004A6004();
    if (os_log_type_enabled(v35, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *&v107[0] = v39;
      *v38 = 68158210;
      *(v38 + 4) = 2;
      *(v38 + 8) = 256;
      v40 = v33 + *(v102 + 20);
      *(v38 + 10) = *v40;

      *(v38 + 11) = 2082;
      v41 = ConnectionID.debugDescription.getter(*(v40 + 4));
      v43 = sub_10015BA6C(v41, v42, v107);

      *(v38 + 13) = v43;
      _os_log_impl(&_mh_execute_header, v35, v37, "[%.*hhx-%{public}s] Connection did authenticate.", v38, 0x15u);
      sub_1000197E0(v39);
    }

    else
    {
    }

    v63 = *v111;
    v64 = Capability.idle.unsafeMutableAddressor();
    v65 = *v64;
    v66 = v64[1];
    v67 = v64[2];
    v68 = *(v64 + 24);

    v69 = sub_100012A38(v65, v66, v67, v68, v63);

    v70 = v2 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_idle;
    result = swift_beginAccess();
    if (!*(v70 + 40))
    {
      __break(1u);
      return result;
    }

    if (v69)
    {
      v72 = 2;
    }

    else
    {
      v72 = 1;
    }

    sub_1001E7DE0(v72);
    swift_endAccess();
    v73 = swift_allocObject();
    *(v73 + 16) = v63;
    *(v73 + 136) = *&v111[120];
    *(v73 + 152) = *&v111[136];
    *(v73 + 168) = *&v111[152];
    *(v73 + 184) = *&v111[168];
    *(v73 + 72) = *&v111[56];
    *(v73 + 88) = *&v111[72];
    *(v73 + 104) = *&v111[88];
    *(v73 + 120) = *&v111[104];
    *(v73 + 24) = *&v111[8];
    *(v73 + 40) = *&v111[24];
    *(v73 + 56) = *&v111[40];

    sub_10010E800(&v111[8], v107);
    sub_10019F900(v73);

    sub_1001ACFCC(v111);
    sub_1001AD938(v32, type metadata accessor for ConnectionState);
    v53 = v32 + v101;
    goto LABEL_23;
  }

  v54 = *(v21 + 21);
  v107[8] = *(v21 + 20);
  v107[9] = v54;
  v108 = *(v21 + 176);
  v55 = *(v21 + 17);
  v107[4] = *(v21 + 16);
  v107[5] = v55;
  v56 = *(v21 + 19);
  v107[6] = *(v21 + 18);
  v107[7] = v56;
  v57 = *(v21 + 13);
  v107[0] = *(v21 + 12);
  v107[1] = v57;
  v58 = *(v21 + 15);
  v107[2] = *(v21 + 14);
  v107[3] = v58;
  if (!sub_1001ACFC0(v107))
  {
    v86 = sub_1001AD074(v107);
    v87 = *v86;
    if (*v86)
    {
      v88 = v26;
      v90 = v86[3];
      v89 = v86[4];
      v92 = v86[1];
      v91 = v86[2];
      v93 = swift_allocObject();
      *(v93 + 16) = v87;
      *(v93 + 24) = v92;
      *(v93 + 32) = v91;
      *(v93 + 40) = v90;
      *(v93 + 48) = v89;
      sub_1001ADB30(&v111[192], v109);

      sub_10010E780(v91, v90, v89);
      v2 = v29;
      sub_10019F900(v93 | 0x5000000000000000);

      sub_10010E7C0(v91, v90, v89);
      sub_1001ACFCC(v111);
      sub_1001AD938(&v88[v101], type metadata accessor for ConnectionState);
      v53 = v88;
      goto LABEL_23;
    }

    v109[8] = *&v111[320];
    v109[9] = *&v111[336];
    v110 = *&v111[352];
    v109[4] = *&v111[256];
    v109[5] = *&v111[272];
    v109[6] = *&v111[288];
    v109[7] = *&v111[304];
    v109[0] = *&v111[192];
    v109[1] = *&v111[208];
    v109[2] = *&v111[224];
    v109[3] = *&v111[240];
    v94 = sub_1001AD074(v109);
    sub_1001ADA78(*v94, *(v94 + 8), *(v94 + 16), *(v94 + 24), *(v94 + 32));
  }

  sub_1001ACFCC(v111);
  sub_1001AD938(&v26[v101], type metadata accessor for ConnectionState);
  v53 = v26;
LABEL_23:
  sub_1001AD938(v53, type metadata accessor for ConnectionState);
  v60 = v105;
  v62 = v106;
LABEL_24:
  sub_1001AD9FC(v2 + v104, v60, type metadata accessor for ConnectionState);
  v74 = ConnectionState.mailboxSelectionPayload(old:)(v62);
  sub_1001AD938(v60, type metadata accessor for ConnectionState);
  if ((~v74 & 0xF000000000000007) != 0)
  {
    v75 = v2 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    v76 = v103;
    sub_1001AD9FC(v2 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v103, _s6LoggerVMa);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v77 = sub_1004A4A54();
    v78 = sub_1004A4A74();
    (*(*(v78 - 8) + 8))(v76, v78);
    v79 = sub_1004A6004();
    if (os_log_type_enabled(v77, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      *v111 = v81;
      *v80 = 68158210;
      *(v80 + 4) = 2;
      *(v80 + 8) = 256;
      v82 = v75 + *(v102 + 20);
      *(v80 + 10) = *v82;

      *(v80 + 11) = 2082;
      v83 = ConnectionID.debugDescription.getter(*(v82 + 4));
      v85 = sub_10015BA6C(v83, v84, v111);

      *(v80 + 13) = v85;
      _os_log_impl(&_mh_execute_header, v77, v79, "[%.*hhx-%{public}s] Mailbox selection changed.", v80, 0x15u);
      sub_1000197E0(v81);
    }

    else
    {
    }

    sub_10019F900(v74);
    sub_1001ADA64(v74);
  }

  sub_1001A14A0();
  return sub_10019F900(0x8000000000000010);
}

uint64_t sub_10019F600()
{
  v1 = v0;
  v25 = sub_1004A4904();
  v2 = *(v25 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v25);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004A4944();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ConnectionState();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  sub_1001AD9FC(v1 + v15, v14, type metadata accessor for ConnectionState);
  v16 = sub_100210E34();
  sub_1001AD938(v14, type metadata accessor for ConnectionState);
  result = sub_100210E34();
  v18 = v16;
  if (v16 != result)
  {
    v19 = tracingSignposter.unsafeMutableAddressor();
    (*(v7 + 16))(v10, v19, v6);
    v20 = (*(v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_engineID) << 59) | (*(v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id) << 27) | 0x800000;
    sub_1004A4914();
    v21 = sub_1004A4934();
    v22 = sub_1004A6154();
    if (sub_1004A6354())
    {
      v23 = swift_slowAlloc();
      *v23 = 67109120;
      *(v23 + 4) = v18;
      v24 = sub_1004A48F4();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, v22, v24, "Connection.imapStateUpdate", "%u", v23, 8u);
    }

    (*(v2 + 8))(v5, v25);
    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

uint64_t sub_10019F900(unint64_t a1)
{
  v3 = _s6LoggerVMa();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ConnectionState();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 >> 60) - 2 <= 3)
  {
    v11 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
    swift_beginAccess();
    sub_1001AD9FC(v1 + v11, v10, type metadata accessor for ConnectionState);
    result = swift_getEnumCaseMultiPayload();
    if (result > 2)
    {
      if ((result - 4) < 2)
      {
        return result;
      }
    }

    else if (result >= 2)
    {
      sub_1001AD938(v10, type metadata accessor for ConnectionState);
      goto LABEL_5;
    }

    return sub_1001AD938(v10, type metadata accessor for ConnectionState);
  }

LABEL_5:
  v13 = *(v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
  v14 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_runningCommands;
  swift_beginAccess();
  v15 = *(v1 + v14);

  v16 = sub_1001B4154(v13, v15);
  v18 = v17;
  v20 = v19;

  v21 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_enqueuedEvents;
  swift_beginAccess();
  if (*(v1 + v21))
  {
    sub_1000CB7C8(a1);
    v23 = sub_10019AF70();
    v24 = *v22;
    if (*v22)
    {
      v25 = v22;
      sub_1000CB7C8(a1);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v25 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v24 = sub_1001EBC5C(0, *(v24 + 2) + 1, 1, v24);
        *v25 = v24;
      }

      v28 = *(v24 + 2);
      v27 = *(v24 + 3);
      if (v28 >= v27 >> 1)
      {
        v24 = sub_1001EBC5C((v27 > 1), v28 + 1, 1, v24);
        *v25 = v24;
      }

      *(v24 + 2) = v28 + 1;
      v29 = &v24[40 * v28];
      *(v29 + 8) = v13;
      *(v29 + 5) = a1;
      *(v29 + 12) = v16;
      *(v29 + 7) = v18;
      *(v29 + 8) = v20;
      (v23)(v51, 0);
    }

    else
    {
      (v23)(v51, 0);
    }

    goto LABEL_20;
  }

  v50 = v16;
  v30 = v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
  sub_1001AD9FC(v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v6, _s6LoggerVMa);
  sub_1000CB7C8(a1);
  v31 = v1;

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v32 = sub_1004A4A54();
  v33 = sub_1004A4A74();
  (*(*(v33 - 8) + 8))(v6, v33);
  v34 = sub_1004A6014();
  if (os_log_type_enabled(v32, v34))
  {
    v35 = swift_slowAlloc();
    v49 = v13;
    v13 = v35;
    v36 = swift_slowAlloc();
    v51[0] = v36;
    *v13 = 68158210;
    *(v13 + 4) = 2;
    *(v13 + 8) = 256;
    v37 = v30 + *(v3 + 20);
    *(v13 + 10) = *v37;
    v38 = v31;

    *(v13 + 11) = 2082;
    v39 = ConnectionID.debugDescription.getter(*(v37 + 4));
    v41 = sub_10015BA6C(v39, v40, v51);

    *(v13 + 13) = v41;
    _os_log_impl(&_mh_execute_header, v32, v34, "[%.*hhx-%{public}s] Trying to enqueue event outside withEnqueuedSend.", v13, 0x15u);
    sub_1000197E0(v36);

    LODWORD(v13) = v49;
  }

  else
  {

    v38 = v31;
  }

  v42 = v38 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v44 = v50;
  if (!Strong)
  {
LABEL_20:
    sub_1000CB848(a1);
    goto LABEL_21;
  }

  v45 = *(v42 + 8);
  ObjectType = swift_getObjectType();
  sub_10000C9C0(&qword_1005D35D8, &qword_1004DD1C0);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1004CEAA0;
  *(v47 + 32) = v13;
  *(v47 + 40) = a1;
  *(v47 + 48) = v44;
  *(v47 + 56) = v18;
  *(v47 + 64) = v20;
  v48 = *(v45 + 8);
  sub_1000CB7C8(a1);

  v48(v47, ObjectType, v45);
  sub_1000CB848(a1);

  swift_unknownObjectRelease();
LABEL_21:
}

unint64_t sub_10019FE78(unint64_t a1)
{
  v2 = type metadata accessor for ConnectionState();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v180 = &v174 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v179 = &v174 - v6;
  v178 = _s6LoggerVMa();
  v7 = *(*(v178 - 8) + 64);
  v8 = __chkstk_darwin(v178);
  v10 = &v174 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v174 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v174 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v174 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v174 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v174 - v24;
  __chkstk_darwin(v23);
  v27 = &v174 - v26;
  v28 = type metadata accessor for UntaggedResponse(0);
  v29 = *(*(v28 - 8) + 64);
  v30 = __chkstk_darwin(v28);
  v31 = __chkstk_darwin(v30);
  __chkstk_darwin(v31);
  v35 = (&v174 - v34);
  v182 = a1;
  if (a1 >> 60 != 4)
  {
    if (a1 >> 60 == 3)
    {
      v36 = v33;
      v37 = v32;
      v38 = v182;
      v39 = swift_projectBox();
      sub_1001AD9FC(v39, v35, type metadata accessor for UntaggedResponse);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v41 = v181;
      if (EnumCaseMultiPayload == 4)
      {
        v42 = *v35;
        v43 = v35[1];
        v44 = v35[2];
        v45 = v181 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
        sub_1001AD9FC(v181 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v27, _s6LoggerVMa);

        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        sub_1000110B0(v42);

        v46 = sub_1004A4A54();
        v47 = sub_1004A4A74();
        (*(*(v47 - 8) + 8))(v27, v47);
        v48 = sub_1004A6014();
        sub_10001114C(v42);

        if (os_log_type_enabled(v46, v48))
        {
          v49 = swift_slowAlloc();
          v183[0] = swift_slowAlloc();
          *v49 = 68158466;
          *(v49 + 4) = 2;
          *(v49 + 8) = 256;
          v50 = &v45[*(v178 + 20)];
          *(v49 + 10) = *v50;

          *(v49 + 11) = 2082;
          v51 = ConnectionID.debugDescription.getter(*(v50 + 1));
          v53 = sub_10015BA6C(v51, v52, v183);

          *(v49 + 13) = v53;
          *(v49 + 21) = 2082;
          v41 = v181;
          v54 = ResponseText.debugDescription.getter(v42, v43, v44);
          v56 = sub_10015BA6C(v54, v55, v183);

          *(v49 + 23) = v56;
          _os_log_impl(&_mh_execute_header, v46, v48, "[%.*hhx-%{public}s] Received BYE %{public}s", v49, 0x1Fu);
          swift_arrayDestroy();
          v38 = v182;

          sub_10001114C(v42);
        }

        else
        {

          sub_10001114C(v42);
        }

        v110 = v179;
        v109 = v180;
      }

      else
      {
        sub_1001AD938(v35, type metadata accessor for UntaggedResponse);
        v94 = swift_projectBox();
        v95 = v37;
        sub_1001AD9FC(v94, v37, type metadata accessor for UntaggedResponse);
        v96 = v41 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
        sub_1001AD9FC(v41 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v25, _s6LoggerVMa);

        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v97 = v37;
        v98 = v36;
        sub_1001AD9FC(v97, v36, type metadata accessor for UntaggedResponse);
        v99 = sub_1004A4A54();
        v100 = sub_1004A4A74();
        (*(*(v100 - 8) + 8))(v25, v100);
        v101 = sub_1004A6004();
        if (os_log_type_enabled(v99, v101))
        {
          v102 = swift_slowAlloc();
          v177 = swift_slowAlloc();
          v183[0] = v177;
          *v102 = 68158466;
          *(v102 + 4) = 2;
          *(v102 + 8) = 256;
          v103 = &v96[*(v178 + 20)];
          *(v102 + 10) = *v103;

          *(v102 + 11) = 2082;
          v104 = ConnectionID.debugDescription.getter(*(v103 + 1));
          v106 = sub_10015BA6C(v104, v105, v183);

          *(v102 + 13) = v106;
          *(v102 + 21) = 2082;
          v107 = UntaggedResponse.makeDescriptionWithoutPII()();
          sub_1001AD938(v98, type metadata accessor for UntaggedResponse);
          v108 = sub_10015BA6C(v107._countAndFlagsBits, v107._object, v183);

          *(v102 + 23) = v108;
          _os_log_impl(&_mh_execute_header, v99, v101, "[%.*hhx-%{public}s] Received 'S: %{public}s' from network.", v102, 0x1Fu);
          swift_arrayDestroy();
        }

        else
        {

          sub_1001AD938(v36, type metadata accessor for UntaggedResponse);
        }

        sub_1001AD938(v95, type metadata accessor for UntaggedResponse);
        v110 = v179;
        v109 = v180;
        v38 = v182;
      }
    }

    else
    {
      v41 = v181;
      v82 = v181 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
      sub_1001AD9FC(v181 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v10, _s6LoggerVMa);

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v38 = v182;
      sub_1000CB7C8(v182);
      v83 = sub_1004A4A54();
      v84 = sub_1004A4A74();
      (*(*(v84 - 8) + 8))(v10, v84);
      v85 = sub_1004A6004();
      sub_1000CB848(v38);
      if (os_log_type_enabled(v83, v85))
      {
        v86 = swift_slowAlloc();
        v183[0] = swift_slowAlloc();
        *v86 = 68158466;
        *(v86 + 4) = 2;
        *(v86 + 8) = 256;
        v87 = &v82[*(v178 + 20)];
        *(v86 + 10) = *v87;

        *(v86 + 11) = 2082;
        v88 = ConnectionID.debugDescription.getter(*(v87 + 1));
        v90 = sub_10015BA6C(v88, v89, v183);

        *(v86 + 13) = v90;
        *(v86 + 21) = 2080;
        v91 = Event.Payload.shortLogIdentifier.getter(v38);
        v93 = sub_10015BA6C(v91, v92, v183);

        *(v86 + 23) = v93;
        _os_log_impl(&_mh_execute_header, v83, v85, "[%.*hhx-%{public}s] Received '%s' from network.", v86, 0x1Fu);
        swift_arrayDestroy();
      }

      else
      {
      }

      v110 = v179;
      v109 = v180;
    }

    goto LABEL_34;
  }

  v57 = *((v182 & 0xFFFFFFFFFFFFFFFLL) + 0x14);
  v59 = *((v182 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
  v58 = *((v182 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
  v60 = *((v182 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
  v61 = *((v182 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
  v177 = *((v182 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  if (!v61)
  {
    v111 = v181;
    v112 = v181 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    sub_1001AD9FC(v181 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v13, _s6LoggerVMa);

    sub_10001123C(v59, v58, v60, 0);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    sub_1000110B0(v59);

    v113 = sub_1004A4A54();
    v114 = sub_1004A4A74();
    (*(*(v114 - 8) + 8))(v13, v114);
    v115 = sub_1004A6004();
    if (os_log_type_enabled(v113, v115))
    {
      v116 = swift_slowAlloc();
      v175 = swift_slowAlloc();
      v176 = v58;
      v183[0] = v175;
      *v116 = 68158978;
      *(v116 + 4) = 2;
      *(v116 + 8) = 256;
      v117 = v57;
      v118 = &v112[*(v178 + 20)];
      *(v116 + 10) = *v118;

      *(v116 + 11) = 2082;
      v119 = ConnectionID.debugDescription.getter(*(v118 + 1));
      v121 = sub_10015BA6C(v119, v120, v183);

      *(v116 + 13) = v121;
      *(v116 + 21) = 2082;
      v122 = Tag.debugDescription.getter(v177 | (v117 << 32));
      v124 = sub_10015BA6C(v122, v123, v183);

      *(v116 + 23) = v124;
      *(v116 + 31) = 2082;
      *(v116 + 33) = sub_10015BA6C(19279, 0xE200000000000000, v183);
      *(v116 + 41) = 2082;
      v125 = v176;
      v126 = ResponseText.debugDescription.getter(v59, v176, v60);
      v128 = v127;
      sub_10001114C(v59);

      v129 = sub_10015BA6C(v126, v128, v183);

      *(v116 + 43) = v129;
      _os_log_impl(&_mh_execute_header, v113, v115, "[%.*hhx-%{public}s] Received 'S: %{public}s %{public}s %{public}s' from network.", v116, 0x33u);
      swift_arrayDestroy();

      sub_100173584(v59, v125, v60, 0);
    }

    else
    {

      sub_100173584(v59, v58, v60, 0);
      sub_10001114C(v59);
    }

    v41 = v111;
    goto LABEL_33;
  }

  if (v61 != 1)
  {
    v175 = v57;
    v41 = v181;
    v130 = v181 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    sub_1001AD9FC(v181 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v22, _s6LoggerVMa);

    sub_10001123C(v59, v58, v60, 2u);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    sub_1000110B0(v59);

    v131 = sub_1004A4A54();
    v132 = sub_1004A4A74();
    (*(*(v132 - 8) + 8))(v22, v132);
    v133 = sub_1004A6014();
    if (os_log_type_enabled(v131, v133))
    {
      v134 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      v176 = v58;
      v183[0] = v135;
      *v134 = 68158978;
      *(v134 + 4) = 2;
      *(v134 + 8) = 256;
      v136 = &v130[*(v178 + 20)];
      *(v134 + 10) = *v136;

      *(v134 + 11) = 2082;
      v137 = ConnectionID.debugDescription.getter(*(v136 + 1));
      v139 = sub_10015BA6C(v137, v138, v183);

      *(v134 + 13) = v139;
      *(v134 + 21) = 2082;
      v140 = Tag.debugDescription.getter(v177 | (v175 << 32));
      v142 = sub_10015BA6C(v140, v141, v183);

      *(v134 + 23) = v142;
      *(v134 + 31) = 2082;
      *(v134 + 33) = sub_10015BA6C(4473154, 0xE300000000000000, v183);
      *(v134 + 41) = 2082;
      v143 = v176;
      v144 = ResponseText.debugDescription.getter(v59, v176, v60);
      v146 = v145;
      sub_10001114C(v59);

      v147 = sub_10015BA6C(v144, v146, v183);

      *(v134 + 43) = v147;
      _os_log_impl(&_mh_execute_header, v131, v133, "[%.*hhx-%{public}s] Received 'S: %{public}s %{public}s %{public}s' from network.", v134, 0x33u);
      swift_arrayDestroy();

      sub_100173584(v59, v143, v60, 2u);
    }

    else
    {

      sub_100173584(v59, v58, v60, 2u);
      sub_10001114C(v59);
    }

LABEL_33:
    v110 = v179;
    v109 = v180;
    v38 = v182;
LABEL_34:
    sub_10019F900(v38);
    v167 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_connectionTraits;
    swift_beginAccess();
    v168 = *(v41 + v167);
    v169 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    v170 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
    swift_beginAccess();
    sub_1001AD9FC(v41 + v170, v110, type metadata accessor for ConnectionState);

    sub_1001C4B18(v38, v168, sub_1001AD918, v41, sub_1001AD934, v41, v41 + v169);

    sub_1001AD9FC(v41 + v170, v109, type metadata accessor for ConnectionState);
    swift_beginAccess();
    sub_1001AC94C(v110, v41 + v170);
    swift_endAccess();
    sub_10019AB14(v109);
    sub_1001AD938(v109, type metadata accessor for ConnectionState);
    sub_1001AD938(v110, type metadata accessor for ConnectionState);

    return sub_1001A86A0();
  }

  if ((~v59 & 0xF000000000000007) == 0 || v59 != 0x800000000000006CLL)
  {
    v62 = v58;
    v63 = v181;
    v64 = v181 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    sub_1001AD9FC(v181 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v16, _s6LoggerVMa);

    sub_10001123C(v59, v62, v60, 1u);
    sub_1000110B0(v59);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    sub_1000110B0(v59);

    v65 = sub_1004A4A54();
    v66 = sub_1004A4A74();
    (*(*(v66 - 8) + 8))(v16, v66);
    v67 = sub_1004A6014();
    if (os_log_type_enabled(v65, v67))
    {
      v68 = swift_slowAlloc();
      v175 = swift_slowAlloc();
      v183[0] = v175;
      *v68 = 68158978;
      *(v68 + 4) = 2;
      *(v68 + 8) = 256;
      v69 = v57;
      v70 = &v64[*(v178 + 20)];
      *(v68 + 10) = *v70;

      v176 = v62;
      *(v68 + 11) = 2082;
      v71 = ConnectionID.debugDescription.getter(*(v70 + 1));
      v73 = sub_10015BA6C(v71, v72, v183);

      *(v68 + 13) = v73;
      *(v68 + 21) = 2082;
      v74 = Tag.debugDescription.getter(v177 | (v69 << 32));
      v76 = sub_10015BA6C(v74, v75, v183);

      *(v68 + 23) = v76;
      *(v68 + 31) = 2082;
      *(v68 + 33) = sub_10015BA6C(20302, 0xE200000000000000, v183);
      *(v68 + 41) = 2082;
      v77 = v176;
      v78 = ResponseText.debugDescription.getter(v59, v176, v60);
      v80 = v79;
      sub_10001114C(v59);

      v81 = sub_10015BA6C(v78, v80, v183);

      *(v68 + 43) = v81;
      _os_log_impl(&_mh_execute_header, v65, v67, "[%.*hhx-%{public}s] Received 'S: %{public}s %{public}s %{public}s' from network.", v68, 0x33u);
      swift_arrayDestroy();

      sub_10001114C(v59);

      sub_100173584(v59, v77, v60, 1u);
    }

    else
    {

      sub_10001114C(v59);

      sub_100173584(v59, v62, v60, 1u);
      sub_10001114C(v59);
    }

    v41 = v63;
    goto LABEL_33;
  }

  v148 = v181;
  v149 = v181 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
  sub_1001AD9FC(v181 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v19, _s6LoggerVMa);
  sub_1000110B0(0x800000000000006CLL);

  sub_10001123C(0x800000000000006CLL, v58, v60, 1u);
  sub_1000110B0(0x800000000000006CLL);

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  sub_1000110B0(0x800000000000006CLL);

  v150 = v58;
  v151 = sub_1004A4A54();
  v152 = sub_1004A4A74();
  (*(*(v152 - 8) + 8))(v19, v152);
  v153 = sub_1004A6014();
  if (os_log_type_enabled(v151, v153))
  {
    v154 = swift_slowAlloc();
    v183[0] = swift_slowAlloc();
    *v154 = 68158978;
    *(v154 + 4) = 2;
    *(v154 + 8) = 256;
    v155 = v57;
    v156 = &v149[*(v178 + 20)];
    *(v154 + 10) = *v156;

    v176 = v150;
    *(v154 + 11) = 2082;
    v157 = ConnectionID.debugDescription.getter(*(v156 + 1));
    v159 = sub_10015BA6C(v157, v158, v183);

    *(v154 + 13) = v159;
    *(v154 + 21) = 2082;
    v160 = Tag.debugDescription.getter(v177 | (v155 << 32));
    v162 = sub_10015BA6C(v160, v161, v183);

    *(v154 + 23) = v162;
    *(v154 + 31) = 2082;
    *(v154 + 33) = sub_10015BA6C(20302, 0xE200000000000000, v183);
    *(v154 + 41) = 2082;
    v150 = v176;
    v163 = ResponseText.debugDescription.getter(0x800000000000006CLL, v176, v60);
    v165 = v164;
    sub_10001114C(0x800000000000006CLL);

    v166 = sub_10015BA6C(v163, v165, v183);

    *(v154 + 43) = v166;
    _os_log_impl(&_mh_execute_header, v151, v153, "[%.*hhx-%{public}s] Received 'S: %{public}s %{public}s %{public}s' from network. Server is temporarily unavailable.", v154, 0x33u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10001114C(0x800000000000006CLL);
  }

  v172 = swift_allocObject();
  v173 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_recentErrors;
  swift_beginAccess();
  *(v172 + 16) = *(v148 + v173);

  *(v172 + 24) = *ConnectionID.invalid.unsafeMutableAddressor();
  *(v172 + 32) = _swiftEmptySetSingleton;
  *(v172 + 40) = _swiftEmptySetSingleton;
  sub_10019F900(v172 | 0x1000000000000000);

  CommandConnection.cancel()();
  sub_10001114C(0x800000000000006CLL);

  return sub_100173584(0x800000000000006CLL, v150, v60, 1u);
}

uint64_t sub_1001A14A0()
{
  v1 = type metadata accessor for ConnectionState();
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v12[-v6];
  v8 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  sub_1001AD9FC(v0 + v8, v7, type metadata accessor for ConnectionState);
  sub_1001ADC1C(v7, v5, type metadata accessor for ConnectionState);
  result = swift_getEnumCaseMultiPayload();
  if (result > 2)
  {
    if ((result - 4) < 2)
    {
      return result;
    }
  }

  else if (result >= 2)
  {
    sub_1001AD938(v5, type metadata accessor for ConnectionState);
    v10 = swift_allocObject();
    v11 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_pathAttributes;
    swift_beginAccess();
    *(v10 + 16) = *(v0 + v11);

    sub_10019F900(v10 | 0x6000000000000000);
  }

  return sub_1001AD938(v5, type metadata accessor for ConnectionState);
}

Swift::Void __swiftcall CommandConnection.logState()()
{
  v1 = v0;
  v2 = type metadata accessor for ConnectionState();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004A3F84();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v49 = _s6LoggerVMa();
  v9 = *(*(v49 - 8) + 64);
  v10 = __chkstk_darwin(v49);
  v50 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v51 = &v49 - v13;
  __chkstk_darwin(v12);
  v53 = &v49 - v14;
  sub_1001AD9FC(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, &v49 - v14, _s6LoggerVMa);
  v15 = sub_1004A4004();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = sub_1004A3FF4();
  sub_10000C9C0(&qword_1005D32D0, &unk_1004F7FB0);
  v19 = *(v7 + 72);
  v20 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1004D01D0;
  sub_1004A3F74();
  sub_1004A3F64();
  *&v70[0] = v21;
  sub_1001AD5E8(&qword_1005D32D8, &type metadata accessor for JSONEncoder.OutputFormatting);
  sub_10000C9C0(&qword_1005D32E0, &qword_1004DD0C0);
  sub_1001AD108();
  sub_1004A6544();
  sub_1004A3F94();
  v22 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  v54 = v1;
  sub_1001AD9FC(v1 + v22, v5, type metadata accessor for ConnectionState);
  sub_10020A6E8(v70);
  sub_1001AD938(v5, type metadata accessor for ConnectionState);
  v67 = v70[4];
  v68 = v70[5];
  v69[0] = v71[0];
  *(v69 + 15) = *(v71 + 15);
  v63 = v70[0];
  v64 = v70[1];
  v65 = v70[2];
  v66 = v70[3];
  sub_1001AD16C();
  v52 = v18;
  v23 = sub_1004A3FE4();
  v25 = v24;
  v61[4] = v67;
  v61[5] = v68;
  v62[0] = v69[0];
  *(v62 + 15) = *(v69 + 15);
  v61[0] = v63;
  v61[1] = v64;
  v61[2] = v65;
  v61[3] = v66;
  sub_1001AD1C0(v61);
  sub_100014CEC(v23, v25);
  sub_100014CEC(v23, v25);
  v26 = sub_1001AC334(v23, v25);
  if (v27)
  {
    v28 = v26;
    v29 = v27;
    sub_100014D40(v23, v25);
    sub_100014D40(v23, v25);
    sub_100014D40(v23, v25);
    v30 = v53;
    v31 = v51;
    goto LABEL_3;
  }

  v57 = v23;
  v58 = v25;
  sub_100014CEC(v23, v25);
  sub_10000C9C0(&qword_1005D32F8, &qword_1004DD0C8);
  if (swift_dynamicCast())
  {
    sub_1000B364C(v55, v59);
    sub_10002587C(v59, v60);
    v47 = sub_1004A6AC4();
    sub_100014D40(v23, v25);
    v31 = v51;
    if (v47)
    {
      sub_10002587C(v59, v60);
      sub_1004A6AB4();
      sub_100014D40(v23, v25);
      sub_100014D40(v23, v25);
      v29 = *(&v55[0] + 1);
      v28 = *&v55[0];
      sub_1000197E0(v59);
      v30 = v53;
      goto LABEL_3;
    }

    sub_1000197E0(v59);
    v30 = v53;
  }

  else
  {
    sub_100014D40(v23, v25);
    v56 = 0;
    memset(v55, 0, sizeof(v55));
    sub_100025F40(v55, &qword_1005D3300, &qword_1004DD0D0);
    v30 = v53;
    v31 = v51;
  }

  v28 = sub_1001ABFE4(v23, v25);
  v29 = v48;
  sub_100014D40(v23, v25);
  sub_100014D40(v23, v25);
LABEL_3:
  sub_1001AD9FC(v30, v31, _s6LoggerVMa);
  v32 = v50;
  sub_1001AD9FC(v30, v50, _s6LoggerVMa);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  swift_retain_n();

  v33 = sub_1004A4A54();
  v34 = sub_1004A6034();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *&v63 = swift_slowAlloc();
    *v35 = 68158722;
    *(v35 + 4) = 2;
    *(v35 + 8) = 256;
    v51 = v28;
    v36 = v49;
    v37 = *(v32 + *(v49 + 20));
    sub_1001AD938(v32, _s6LoggerVMa);
    *(v35 + 10) = v37;
    v38 = v31;
    v39 = v54;
    *(v35 + 11) = 2082;
    v40 = *(v38 + *(v36 + 20) + 4);
    sub_1001AD938(v38, _s6LoggerVMa);
    v41 = ConnectionID.debugDescription.getter(v40);
    v43 = sub_10015BA6C(v41, v42, &v63);

    *(v35 + 13) = v43;
    *(v35 + 21) = 2048;
    v44 = *(*(v39 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_underlyingID);

    *(v35 + 23) = v44;

    *(v35 + 31) = 2082;
    v45 = sub_10015BA6C(v51, v29, &v63);

    *(v35 + 33) = v45;
    _os_log_impl(&_mh_execute_header, v33, v34, "[%.*hhx-%{public}s] C%llu %{public}s", v35, 0x29u);
    swift_arrayDestroy();

    v46 = v53;
  }

  else
  {

    sub_1001AD938(v32, _s6LoggerVMa);

    sub_1001AD938(v31, _s6LoggerVMa);
    v46 = v30;
  }

  sub_1001AD938(v46, _s6LoggerVMa);
}

uint64_t sub_1001A1E9C(uint64_t a1, unint64_t a2, int a3)
{
  v4 = v3;
  v47 = a3;
  v48 = a2;
  v49 = type metadata accessor for ConnectionEvent(0);
  v6 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = _s6LoggerVMa();
  v9 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OutboundContent(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1004A53F4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = (&v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v4 + 24);
  *v20 = v21;
  (*(v17 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v16);
  v22 = v21;
  LOBYTE(v21) = sub_1004A5404();
  result = (*(v17 + 8))(v20, v16);
  if (v21)
  {
    v24 = v4 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_runningCommands;
    swift_beginAccess();
    v25 = *(v24 + 8);
    v26 = *(v24 + 16);
    v27 = sub_100208EDC(*v24);
    if (v28)
    {
      v29 = v4 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
      sub_1001AD9FC(v4 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v11, _s6LoggerVMa);

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v30 = sub_1004A4A54();
      v31 = sub_1004A4A74();
      (*(*(v31 - 8) + 8))(v11, v31);
      v32 = sub_1004A6004();
      if (os_log_type_enabled(v30, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v50 = v34;
        *v33 = 68158210;
        *(v33 + 4) = 2;
        *(v33 + 8) = 256;
        v35 = v29 + *(v46 + 20);
        *(v33 + 10) = *v35;

        *(v33 + 11) = 2082;
        v36 = ConnectionID.debugDescription.getter(*(v35 + 4));
        v38 = sub_10015BA6C(v36, v37, &v50);

        *(v33 + 13) = v38;
        _os_log_impl(&_mh_execute_header, v30, v32, "[%.*hhx-%{public}s] Trying to send handshake reply, but no barrier command is running.", v33, 0x15u);
        sub_1000197E0(v34);
      }

      else
      {
      }

      v45 = *(*(v4 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_connection);
      sub_1004A4E64();
      type metadata accessor for ConnectionEvent.FailureReason(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      sub_1001A232C(v8);
      v43 = type metadata accessor for ConnectionEvent;
      v44 = v8;
    }

    else
    {
      v39 = v27;
      v40 = *(v4 + 16);
      v41 = v48;
      *v15 = a1;
      *(v15 + 1) = v41;
      v42 = v47 & 1;
      v15[16] = v47 & 1;
      swift_storeEnumTagMultiPayload();
      sub_100193D28(a1, v41, v42);
      sub_1001B78AC(v39, v15);
      v43 = type metadata accessor for OutboundContent;
      v44 = v15;
    }

    return sub_1001AD938(v44, v43);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1001A232C(uint64_t a1)
{
  v420 = a1;
  v404 = type metadata accessor for ConnectionConfiguration(0);
  v1 = *(*(v404 - 8) + 64);
  __chkstk_darwin(v404);
  v412 = (&v387 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v419 = type metadata accessor for UntaggedResponse(0);
  v3 = *(*(v419 - 8) + 64);
  __chkstk_darwin(v419);
  v418 = &v387 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v406 = type metadata accessor for ConnectionState();
  v5 = *(*(v406 - 8) + 64);
  v6 = __chkstk_darwin(v406);
  v411 = (&v387 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __chkstk_darwin(v6);
  v413 = &v387 - v9;
  v10 = __chkstk_darwin(v8);
  v415 = &v387 - v11;
  v12 = __chkstk_darwin(v10);
  v408 = &v387 - v13;
  __chkstk_darwin(v12);
  v407 = &v387 - v14;
  v399 = sub_1004A5214();
  v400 = *(v399 - 8);
  v15 = *(v400 + 64);
  v16 = __chkstk_darwin(v399);
  v388 = &v387 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v389 = &v387 - v19;
  v20 = __chkstk_darwin(v18);
  v392 = &v387 - v21;
  v22 = __chkstk_darwin(v20);
  v398 = &v387 - v23;
  v24 = __chkstk_darwin(v22);
  v401 = &v387 - v25;
  __chkstk_darwin(v24);
  v394 = &v387 - v26;
  v414 = _s6LoggerVMa();
  v27 = *(*(v414 - 8) + 64);
  v28 = __chkstk_darwin(v414);
  v405 = &v387 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v403 = &v387 - v31;
  v32 = __chkstk_darwin(v30);
  v410 = &v387 - v33;
  v34 = __chkstk_darwin(v32);
  v409 = &v387 - v35;
  v36 = __chkstk_darwin(v34);
  v397 = &v387 - v37;
  v38 = __chkstk_darwin(v36);
  v402 = &v387 - v39;
  v40 = __chkstk_darwin(v38);
  v396 = &v387 - v41;
  v42 = __chkstk_darwin(v40);
  v395 = &v387 - v43;
  v44 = __chkstk_darwin(v42);
  v417 = (&v387 - v45);
  v46 = __chkstk_darwin(v44);
  v387 = &v387 - v47;
  v48 = __chkstk_darwin(v46);
  v390 = &v387 - v49;
  v50 = __chkstk_darwin(v48);
  v393 = &v387 - v51;
  v52 = __chkstk_darwin(v50);
  v391 = &v387 - v53;
  v54 = __chkstk_darwin(v52);
  v56 = &v387 - v55;
  v57 = __chkstk_darwin(v54);
  v59 = (&v387 - v58);
  __chkstk_darwin(v57);
  v61 = &v387 - v60;
  v62 = type metadata accessor for ConnectionEvent.FailureReason(0);
  v63 = *(*(v62 - 8) + 64);
  v64 = __chkstk_darwin(v62);
  v66 = &v387 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v64);
  v68 = &v387 - v67;
  v69 = sub_1004A4E34();
  v416 = *(v69 - 8);
  v70 = *(v416 + 64);
  __chkstk_darwin(v69);
  v72 = &v387 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for ConnectionEvent(0);
  v74 = *(*(v73 - 8) + 64);
  __chkstk_darwin(v73);
  v76 = &v387 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001AD9FC(v420, v76, type metadata accessor for ConnectionEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v410 = v61;
    v411 = v59;
    v91 = v417;
    v412 = v66;
    v420 = v68;
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v92 = v416;
        (*(v416 + 32))(v72, v76, v69);
        sub_1001A7100(v72);
        return (*(v92 + 8))(v72, v69);
      }

      v120 = v420;
      sub_1001ADC1C(v76, v420, type metadata accessor for ConnectionEvent.FailureReason);
      v121 = v421;
      v122 = *(v421 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
      v123 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_runningCommands;
      swift_beginAccess();
      v124 = *(v121 + v123);

      LODWORD(v122) = sub_1001B4154(v122, v124);
      v418 = v125;
      v419 = v126;

      v127 = v412;
      sub_1001AD9FC(v120, v412, type metadata accessor for ConnectionEvent.FailureReason);
      v128 = swift_getEnumCaseMultiPayload();
      LODWORD(v409) = v122;
      if (v128 > 1)
      {
        if (v128 == 2)
        {
          v416 = v123;
          v169 = v121 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
          v170 = v410;
          sub_1001AD9FC(v121 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v410, _s6LoggerVMa);
          swift_retain_n();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          swift_retain_n();
          v171 = v418;
          swift_bridgeObjectRetain_n();
          v172 = v419;
          swift_bridgeObjectRetain_n();
          v173 = sub_1004A4A54();
          v174 = sub_1004A4A74();
          (*(*(v174 - 8) + 8))(v170, v174);
          v175 = sub_1004A6034();
          if (os_log_type_enabled(v173, v175))
          {
            v176 = swift_slowAlloc();
            v177 = swift_slowAlloc();
            v424 = v177;
            *v176 = 68158722;
            *(v176 + 4) = 2;
            *(v176 + 8) = 256;
            v178 = v169 + *(v414 + 20);
            *(v176 + 10) = *v178;
            *(v176 + 11) = 2082;
            v179 = ConnectionID.debugDescription.getter(*(v178 + 4));
            v181 = sub_10015BA6C(v179, v180, &v424);

            *(v176 + 13) = v181;

            *(v176 + 21) = 2048;
            v182 = *(*(v121 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_underlyingID);

            *(v176 + 23) = v182;

            *(v176 + 31) = 2048;
            v183 = *(v171 + 16);

            *(v176 + 33) = v183;

            _os_log_impl(&_mh_execute_header, v173, v175, "[%.*hhx-%{public}s] [C%llu] Connection did fail (%ld running command(s)): Closed", v176, 0x29u);
            sub_1000197E0(v177);
          }

          else
          {

            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();
          }

          v315 = v407;
          v316 = v408;
          goto LABEL_71;
        }

        v260 = v121 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
        sub_1001AD9FC(v121 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v56, _s6LoggerVMa);
        swift_retain_n();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        swift_retain_n();
        v171 = v418;
        swift_bridgeObjectRetain_n();
        v172 = v419;
        swift_bridgeObjectRetain_n();
        v261 = sub_1004A4A54();
        v262 = sub_1004A4A74();
        (*(*(v262 - 8) + 8))(v56, v262);
        v263 = sub_1004A6014();
        if (os_log_type_enabled(v261, v263))
        {
          v264 = swift_slowAlloc();
          v416 = v123;
          v265 = v264;
          v266 = swift_slowAlloc();
          v424 = v266;
          *v265 = 68158722;
          *(v265 + 4) = 2;
          *(v265 + 8) = 256;
          v267 = v260 + *(v414 + 20);
          *(v265 + 10) = *v267;
          *(v265 + 11) = 2082;
          v268 = ConnectionID.debugDescription.getter(*(v267 + 4));
          v270 = sub_10015BA6C(v268, v269, &v424);

          *(v265 + 13) = v270;

          *(v265 + 21) = 2048;
          v271 = *(*(v121 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_underlyingID);

          *(v265 + 23) = v271;

          *(v265 + 31) = 2048;
          v272 = *(v171 + 16);

          *(v265 + 33) = v272;

          _os_log_impl(&_mh_execute_header, v261, v263, "[%.*hhx-%{public}s] [C%llu] Connection did fail (%ld running command(s)): invalid continuation state.", v265, 0x29u);
          sub_1000197E0(v266);

          v123 = v416;
        }

        else
        {

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
        }

        v315 = v407;
        v316 = v408;
        v317 = v420;
LABEL_96:
        v380 = *(v121 + v123);
        *(v121 + v123) = _swiftEmptyArrayStorage;

        v381 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
        swift_beginAccess();
        sub_1001AD9FC(v121 + v381, v315, type metadata accessor for ConnectionState);
        sub_1001AD9FC(v315, v316, type metadata accessor for ConnectionState);
        v382 = swift_getEnumCaseMultiPayload();
        if (v382 <= 2)
        {
          sub_1001AD938(v316, type metadata accessor for ConnectionState);
LABEL_100:
          sub_1001AD938(v315, type metadata accessor for ConnectionState);
          v383 = v415;
          swift_storeEnumTagMultiPayload();
          v384 = v413;
          sub_1001AD9FC(v121 + v381, v413, type metadata accessor for ConnectionState);
          swift_beginAccess();
          sub_1001AC94C(v383, v121 + v381);
          swift_endAccess();
          sub_10019AB14(v384);
          sub_1001AD938(v383, type metadata accessor for ConnectionState);
          sub_1001AD938(v384, type metadata accessor for ConnectionState);
          v385 = swift_allocObject();
          v386 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_recentErrors;
          swift_beginAccess();
          *(v385 + 16) = *(v121 + v386);
          *(v385 + 24) = v409;
          *(v385 + 32) = v171;
          *(v385 + 40) = v172;

          sub_10019FE78(v385 | 0x1000000000000000);

          return sub_1001AD938(v317, type metadata accessor for ConnectionEvent.FailureReason);
        }

        if (v382 == 3)
        {
          sub_1001AD938(v316, type metadata accessor for ConnectionState);
        }

        else if (v382 != 4)
        {
          goto LABEL_100;
        }

        sub_1001AD938(v315, type metadata accessor for ConnectionState);
        sub_1001AD938(v317, type metadata accessor for ConnectionEvent.FailureReason);
      }

      v416 = v123;
      if (!v128)
      {
        sub_1001AD938(v127, type metadata accessor for ConnectionEvent.FailureReason);
        v129 = v121 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
        v130 = v411;
        sub_1001AD9FC(v121 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v411, _s6LoggerVMa);
        swift_retain_n();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        swift_retain_n();
        v131 = sub_1004A4A54();
        v132 = sub_1004A4A74();
        (*(*(v132 - 8) + 8))(v130, v132);
        v133 = sub_1004A6014();
        if (os_log_type_enabled(v131, v133))
        {
          v134 = swift_slowAlloc();
          v135 = swift_slowAlloc();
          v424 = v135;
          *v134 = 68158466;
          *(v134 + 4) = 2;
          *(v134 + 8) = 256;
          v136 = v129 + *(v414 + 20);
          *(v134 + 10) = *v136;
          *(v134 + 11) = 2082;
          v137 = ConnectionID.debugDescription.getter(*(v136 + 4));
          v139 = sub_10015BA6C(v137, v138, &v424);

          *(v134 + 13) = v139;

          *(v134 + 21) = 2048;
          v140 = *(*(v121 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_underlyingID);

          *(v134 + 23) = v140;

          _os_log_impl(&_mh_execute_header, v131, v133, "[%.*hhx-%{public}s] [C%llu] Connection did fail to authenticate.", v134, 0x1Fu);
          sub_1000197E0(v135);
        }

        else
        {
        }

        v315 = v407;
        v316 = v408;
        v171 = v418;
        v172 = v419;
LABEL_71:
        v123 = v416;
        v317 = v420;
        goto LABEL_96;
      }

      v237 = v400;
      v238 = *(v400 + 88);
      v239 = v399;
      v240 = v238(v127, v399);
      v241 = enum case for NWError.posix(_:);
      if (v240 == enum case for NWError.posix(_:))
      {
        v242 = *(v237 + 16);
        v243 = v237;
        v244 = v239;
        v245 = v394;
        v242(v394, v127, v244);
        (*(v243 + 96))(v245, v244);
        v246 = *v245;
        v239 = v244;
        v237 = v243;
        if (v246 == 89)
        {
          v247 = v121 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
          v248 = v391;
          sub_1001AD9FC(v121 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v391, _s6LoggerVMa);
          swift_retain_n();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          swift_retain_n();
          v171 = v418;
          swift_bridgeObjectRetain_n();
          v172 = v419;
          swift_bridgeObjectRetain_n();
          v249 = sub_1004A4A54();
          v250 = sub_1004A4A74();
          (*(*(v250 - 8) + 8))(v248, v250);
          v251 = sub_1004A6034();
          if (os_log_type_enabled(v249, v251))
          {
            v252 = swift_slowAlloc();
            v253 = swift_slowAlloc();
            v424 = v253;
            *v252 = 68158722;
            *(v252 + 4) = 2;
            *(v252 + 8) = 256;
            v254 = v247 + *(v414 + 20);
            *(v252 + 10) = *v254;
            *(v252 + 11) = 2082;
            v255 = ConnectionID.debugDescription.getter(*(v254 + 4));
            v257 = sub_10015BA6C(v255, v256, &v424);

            *(v252 + 13) = v257;

            *(v252 + 21) = 2048;
            v258 = *(*(v121 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_underlyingID);

            *(v252 + 23) = v258;

            *(v252 + 31) = 2048;
            v259 = *(v171 + 16);

            *(v252 + 33) = v259;

            _os_log_impl(&_mh_execute_header, v249, v251, "[%.*hhx-%{public}s] [C%llu] Connection did fail (%ld running command(s)): Operation canceled", v252, 0x29u);
            sub_1000197E0(v253);
          }

          else
          {

            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();
          }

          v315 = v407;
          v316 = v408;
          v317 = v420;
          (*(v400 + 8))(v412, v399);
          goto LABEL_95;
        }
      }

      v277 = v401;
      (*(v237 + 32))(v401, v127, v239);
      v278 = v398;
      v412 = *(v237 + 16);
      (v412)(v398, v277, v239);
      v279 = v238(v278, v239);
      if (v279 == v241)
      {
        (*(v237 + 96))(v278, v239);
        LODWORD(v417) = *v278;
        v121 = v421;
        v280 = v421 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
        v281 = v393;
        sub_1001AD9FC(v421 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v393, _s6LoggerVMa);
        swift_retain_n();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        swift_retain_n();
        v282 = v418;
        swift_bridgeObjectRetain_n();
        v283 = v237;
        v172 = v419;
        swift_bridgeObjectRetain_n();
        v284 = sub_1004A4A54();
        v285 = sub_1004A4A74();
        (*(*(v285 - 8) + 8))(v281, v285);
        v286 = sub_1004A6014();
        if (os_log_type_enabled(v284, v286))
        {
          v287 = swift_slowAlloc();
          v288 = swift_slowAlloc();
          v424 = v288;
          *v287 = 68158978;
          *(v287 + 4) = 2;
          *(v287 + 8) = 256;
          v289 = v280 + *(v414 + 20);
          *(v287 + 10) = *v289;
          *(v287 + 11) = 2082;
          v290 = ConnectionID.debugDescription.getter(*(v289 + 4));
          v292 = sub_10015BA6C(v290, v291, &v424);

          *(v287 + 13) = v292;

          *(v287 + 21) = 2048;
          v293 = *(*(v121 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_underlyingID);

          *(v287 + 23) = v293;

          *(v287 + 31) = 2048;
          v294 = *(v282 + 16);

          *(v287 + 33) = v294;

          *(v287 + 41) = 1024;
          *(v287 + 43) = sub_1004A4B64();
          _os_log_impl(&_mh_execute_header, v284, v286, "[%.*hhx-%{public}s] [C%llu] Connection did fail (%ld running command(s)): posix %{darwin.errno}d", v287, 0x2Fu);
          sub_1000197E0(v288);
          v172 = v419;
        }

        else
        {

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
        }

        (*(v283 + 8))(v401, v239);
        v315 = v407;
        v316 = v408;
        goto LABEL_87;
      }

      if (v279 == enum case for NWError.dns(_:))
      {
        v318 = v398;
        (*(v237 + 96))(v398, v239);
        LODWORD(v417) = *v318;
        v319 = v421;
        v320 = v277;
        v321 = v421 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
        v322 = v390;
        sub_1001AD9FC(v421 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v390, _s6LoggerVMa);
        swift_retain_n();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v323 = v392;
        (v412)(v392, v320, v239);
        v121 = v319;
        swift_retain_n();
        v282 = v418;
        swift_bridgeObjectRetain_n();
        v324 = v419;
        swift_bridgeObjectRetain_n();
        v325 = sub_1004A4A54();
        v326 = sub_1004A4A74();
        (*(*(v326 - 8) + 8))(v322, v326);
        v327 = sub_1004A6014();
        if (os_log_type_enabled(v325, v327))
        {
          v328 = swift_slowAlloc();
          v412 = swift_slowAlloc();
          v424 = v412;
          *v328 = 68159234;
          *(v328 + 4) = 2;
          *(v328 + 8) = 256;
          v329 = v321 + *(v414 + 20);
          *(v328 + 10) = *v329;
          *(v328 + 11) = 2082;
          v330 = ConnectionID.debugDescription.getter(*(v329 + 4));
          v332 = sub_10015BA6C(v330, v331, &v424);

          *(v328 + 13) = v332;

          *(v328 + 21) = 2048;
          v333 = *(*(v121 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_underlyingID);

          *(v328 + 23) = v333;

          *(v328 + 31) = 2048;
          v334 = *(v282 + 16);

          *(v328 + 33) = v334;

          *(v328 + 41) = 1024;
          *(v328 + 43) = v417;
          *(v328 + 47) = 2080;
          v335 = v392;
          v336 = sub_1004A51F4();
          v338 = sub_10015BA6C(v336, v337, &v424);

          *(v328 + 49) = v338;
          v339 = *(v237 + 8);
          v339(v335, v239);
          v340 = "[%.*hhx-%{public}s] [C%llu] Connection did fail (%ld running command(s)): DNS %d, %s";
LABEL_85:
          _os_log_impl(&_mh_execute_header, v325, v327, v340, v328, 0x39u);
          swift_arrayDestroy();

          v339(v401, v239);
          v315 = v407;
          v316 = v408;
          v317 = v420;
          v171 = v282;
LABEL_94:
          v172 = v419;
          goto LABEL_95;
        }
      }

      else
      {
        if (v279 != enum case for NWError.tls(_:))
        {
          v358 = v421;
          v359 = v421 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
          v360 = v91;
          sub_1001AD9FC(v421 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v91, _s6LoggerVMa);
          swift_retain_n();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          v361 = v388;
          (v412)(v388, v277, v239);
          swift_retain_n();
          v362 = v418;
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          v363 = sub_1004A4A54();
          v364 = sub_1004A4A74();
          (*(*(v364 - 8) + 8))(v360, v364);
          v365 = sub_1004A6014();
          v417 = v363;
          if (os_log_type_enabled(v363, v365))
          {
            v366 = swift_slowAlloc();
            LODWORD(v410) = v365;
            v367 = v366;
            v368 = swift_slowAlloc();
            v411 = swift_slowAlloc();
            v424 = v411;
            *v367 = 68158978;
            *(v367 + 4) = 2;
            *(v367 + 8) = 256;
            v369 = v359 + *(v414 + 20);
            *(v367 + 10) = *v369;
            *(v367 + 11) = 2082;
            v370 = ConnectionID.debugDescription.getter(*(v369 + 4));
            v372 = sub_10015BA6C(v370, v371, &v424);

            *(v367 + 13) = v372;

            *(v367 + 21) = 2048;
            v373 = *(*(v358 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_underlyingID);

            *(v367 + 23) = v373;

            *(v367 + 31) = 2048;
            v374 = *(v362 + 16);

            *(v367 + 33) = v374;

            *(v367 + 41) = 2112;
            sub_1001AD5E8(&qword_1005D35D0, &type metadata accessor for NWError);
            swift_allocError();
            (v412)(v375, v361, v239);
            v376 = sub_1004A4264();

            *(v367 + 43) = v376;
            v377 = v368;
            *v368 = v376;
            v378 = *(v400 + 8);
            v378(v361, v239);
            v379 = v417;
            _os_log_impl(&_mh_execute_header, v417, v410, "[%.*hhx-%{public}s] [C%llu] Connection did fail (%ld running command(s)): %@", v367, 0x33u);
            sub_100025F40(v377, &qword_1005D51A0, &qword_1004D0940);

            sub_1000197E0(v411);
          }

          else
          {

            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();
            v378 = *(v400 + 8);
            v378(v361, v239);
          }

          v378(v401, v239);
          v121 = v358;
          v315 = v407;
          v316 = v408;
          v378(v398, v239);
          v317 = v420;
          v171 = v418;
          goto LABEL_94;
        }

        v341 = v398;
        (*(v237 + 96))(v398, v239);
        LODWORD(v417) = *v341;
        v342 = v421;
        v343 = v277;
        v344 = v421 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
        v345 = v387;
        sub_1001AD9FC(v421 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v387, _s6LoggerVMa);
        swift_retain_n();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v323 = v389;
        (v412)(v389, v343, v239);
        v121 = v342;
        swift_retain_n();
        v282 = v418;
        swift_bridgeObjectRetain_n();
        v324 = v419;
        swift_bridgeObjectRetain_n();
        v325 = sub_1004A4A54();
        v346 = sub_1004A4A74();
        (*(*(v346 - 8) + 8))(v345, v346);
        v327 = sub_1004A6014();
        if (os_log_type_enabled(v325, v327))
        {
          v328 = swift_slowAlloc();
          v412 = swift_slowAlloc();
          v424 = v412;
          *v328 = 68159234;
          *(v328 + 4) = 2;
          *(v328 + 8) = 256;
          v347 = v344 + *(v414 + 20);
          *(v328 + 10) = *v347;
          *(v328 + 11) = 2082;
          v348 = ConnectionID.debugDescription.getter(*(v347 + 4));
          v350 = sub_10015BA6C(v348, v349, &v424);

          *(v328 + 13) = v350;

          *(v328 + 21) = 2048;
          v351 = *(*(v121 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_underlyingID);

          *(v328 + 23) = v351;

          *(v328 + 31) = 2048;
          v352 = *(v282 + 16);

          *(v328 + 33) = v352;

          *(v328 + 41) = 1024;
          *(v328 + 43) = v417;
          *(v328 + 47) = 2080;
          v353 = v389;
          v354 = sub_1004A51F4();
          v356 = sub_10015BA6C(v354, v355, &v424);

          *(v328 + 49) = v356;
          v339 = *(v237 + 8);
          v339(v353, v239);
          v340 = "[%.*hhx-%{public}s] [C%llu] Connection did fail (%ld running command(s)): TLS %d, %s";
          goto LABEL_85;
        }
      }

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      v357 = *(v237 + 8);
      v357(v323, v239);

      v357(v401, v239);
      v315 = v407;
      v316 = v408;
      v172 = v324;
LABEL_87:
      v317 = v420;
      v171 = v282;
LABEL_95:
      v123 = v416;
      goto LABEL_96;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v94 = v418;
      sub_1001ADC1C(v76, v418, type metadata accessor for UntaggedResponse);
      v95 = swift_allocBox();
      sub_1001AD9FC(v94, v96, type metadata accessor for UntaggedResponse);
      sub_10019FE78(v95 | 0x3000000000000000);

      return sub_1001AD938(v94, type metadata accessor for UntaggedResponse);
    }

    v141 = *v76;
    v142 = *(v76 + 1);
    v143 = *(v76 + 2);
    v144 = v76[24];
    v145 = v76[28];
    v146 = *(v76 + 8);
    v147 = v421;
    swift_beginAccess();
    v148 = static MonotonicTime.now()();
    v149 = v145 | (v146 << 32);
    v150 = sub_100208FE0(v149, v148);
    v152 = v151;
    swift_endAccess();
    LODWORD(v420) = v144;
    if ((v152 & 1) == 0)
    {
      v418 = HIDWORD(v150);
      v184 = v147 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
      v185 = v402;
      sub_1001AD9FC(v147 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v402, _s6LoggerVMa);
      swift_retain_n();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v186 = sub_1004A4A54();
      v187 = sub_1004A4A74();
      (*(*(v187 - 8) + 8))(v185, v187);
      v188 = sub_1004A6004();
      if (os_log_type_enabled(v186, v188))
      {
        v189 = swift_slowAlloc();
        v190 = swift_slowAlloc();
        v419 = v143;
        v423[0] = v190;
        *v189 = 68158466;
        *(v189 + 4) = 2;
        *(v189 + 8) = 256;
        v191 = v184 + *(v414 + 20);
        *(v189 + 10) = *v191;
        *(v189 + 11) = 2082;
        v192 = ConnectionID.debugDescription.getter(*(v191 + 4));
        v194 = sub_10015BA6C(v192, v193, v423);

        *(v189 + 13) = v194;

        *(v189 + 21) = 2082;
        v195 = Tag.debugDescription.getter(v150 & 0xFFFFFFFF000000FFLL);
        v197 = sub_10015BA6C(v195, v196, v423);

        *(v189 + 23) = v197;
        _os_log_impl(&_mh_execute_header, v186, v188, "[%.*hhx-%{public}s] Command %{public}s completed.", v189, 0x1Fu);
        swift_arrayDestroy();
        v143 = v419;
      }

      else
      {
      }

      v273 = swift_allocObject();
      v274 = v418;
      *(v273 + 16) = v150;
      *(v273 + 20) = v274;
      *(v273 + 24) = v141;
      *(v273 + 32) = v142;
      *(v273 + 40) = v143;
      v275 = v420;
      *(v273 + 48) = v420;
      sub_10001123C(v141, v142, v143, v275);
      sub_10019FE78(v273 | 0x4000000000000000);

      goto LABEL_66;
    }

    v419 = v143;
    v153 = v147 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    if (v150)
    {
      if (v150 == 1)
      {
        v154 = v396;
        sub_1001AD9FC(v147 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v396, _s6LoggerVMa);
        swift_retain_n();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v155 = sub_1004A4A54();
        v156 = sub_1004A4A74();
        (*(*(v156 - 8) + 8))(v154, v156);
        v157 = sub_1004A6034();
        if (os_log_type_enabled(v155, v157))
        {
          v158 = swift_slowAlloc();
          v423[0] = swift_slowAlloc();
          *v158 = 68158466;
          *(v158 + 4) = 2;
          *(v158 + 8) = 256;
          v159 = v153 + *(v414 + 20);
          *(v158 + 10) = *v159;
          *(v158 + 11) = 2082;
          v160 = ConnectionID.debugDescription.getter(*(v159 + 4));
          v162 = sub_10015BA6C(v160, v161, v423);

          *(v158 + 13) = v162;

          *(v158 + 21) = 2082;
          v163 = Tag.debugDescription.getter(v149);
          v165 = sub_10015BA6C(v163, v164, v423);

          *(v158 + 23) = v165;
          v166 = "[%.*hhx-%{public}s] %{public}s IDLE completed.";
LABEL_60:
          _os_log_impl(&_mh_execute_header, v155, v157, v166, v158, 0x1Fu);
          swift_arrayDestroy();
LABEL_63:

LABEL_65:

          v143 = v419;
          v275 = v420;
LABEL_66:
          sub_1001A7D2C(v276);
          return sub_100173584(v141, v142, v143, v275);
        }
      }

      else
      {
        v304 = v397;
        sub_1001AD9FC(v147 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v397, _s6LoggerVMa);
        swift_retain_n();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v155 = sub_1004A4A54();
        v305 = sub_1004A4A74();
        (*(*(v305 - 8) + 8))(v304, v305);
        v306 = sub_1004A6014();
        if (os_log_type_enabled(v155, v306))
        {
          v307 = swift_slowAlloc();
          v418 = swift_slowAlloc();
          v423[0] = v418;
          *v307 = 68158466;
          *(v307 + 4) = 2;
          *(v307 + 8) = 256;
          v308 = v153 + *(v414 + 20);
          *(v307 + 10) = *v308;
          *(v307 + 11) = 2082;
          v309 = ConnectionID.debugDescription.getter(*(v308 + 4));
          v311 = sub_10015BA6C(v309, v310, v423);

          *(v307 + 13) = v311;

          *(v307 + 21) = 2082;
          v312 = Tag.debugDescription.getter(v149);
          v314 = sub_10015BA6C(v312, v313, v423);

          *(v307 + 23) = v314;
          _os_log_impl(&_mh_execute_header, v155, v306, "[%.*hhx-%{public}s] Command with unknown tag %{public}s completed.", v307, 0x1Fu);
          swift_arrayDestroy();
          goto LABEL_63;
        }
      }
    }

    else
    {
      v295 = v395;
      sub_1001AD9FC(v147 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v395, _s6LoggerVMa);
      swift_retain_n();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v155 = sub_1004A4A54();
      v296 = sub_1004A4A74();
      (*(*(v296 - 8) + 8))(v295, v296);
      v157 = sub_1004A6004();
      if (os_log_type_enabled(v155, v157))
      {
        v158 = swift_slowAlloc();
        v423[0] = swift_slowAlloc();
        *v158 = 68158466;
        *(v158 + 4) = 2;
        *(v158 + 8) = 256;
        v297 = v153 + *(v414 + 20);
        *(v158 + 10) = *v297;
        *(v158 + 11) = 2082;
        v298 = ConnectionID.debugDescription.getter(*(v297 + 4));
        v300 = sub_10015BA6C(v298, v299, v423);

        *(v158 + 13) = v300;

        *(v158 + 21) = 2082;
        v301 = Tag.debugDescription.getter(v149);
        v303 = sub_10015BA6C(v301, v302, v423);

        *(v158 + 23) = v303;
        v166 = "[%.*hhx-%{public}s] %{public}s NOOP completed.";
        goto LABEL_60;
      }
    }

    goto LABEL_65;
  }

  if (EnumCaseMultiPayload > 5)
  {
    v78 = v421;
    if (EnumCaseMultiPayload == 6)
    {
      v118 = *v76;
      v119 = swift_allocObject();
      *(v119 + 16) = v118;
      sub_10019FE78(v119 | 0x7000000000000000);
    }

    else if (EnumCaseMultiPayload == 7)
    {
      v79 = v421 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
      v80 = v410;
      sub_1001AD9FC(v421 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v410, _s6LoggerVMa);
      swift_retain_n();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v81 = sub_1004A4A54();
      v82 = sub_1004A4A74();
      (*(*(v82 - 8) + 8))(v80, v82);
      v83 = sub_1004A6034();
      v84 = os_log_type_enabled(v81, v83);
      v420 = v79;
      if (v84)
      {
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v423[0] = v86;
        *v85 = 68158210;
        *(v85 + 4) = 2;
        *(v85 + 8) = 256;
        v87 = v79 + *(v414 + 20);
        *(v85 + 10) = *v87;
        *(v85 + 11) = 2082;
        v88 = ConnectionID.debugDescription.getter(*(v87 + 4));
        v90 = sub_10015BA6C(v88, v89, v423);

        *(v85 + 13) = v90;

        _os_log_impl(&_mh_execute_header, v81, v83, "[%.*hhx-%{public}s] Connection did start TLS.", v85, 0x15u);
        sub_1000197E0(v86);
      }

      else
      {
      }

      v198 = v412;
      v199 = *(v78 + 16);
      v200 = sub_1001B86D0();
      v203 = v200;
      v204 = v202;
      v419 = v201;
      if (v202 == 1)
      {
        v205 = 0;
        v206 = 0;
        v207 = 0x8000000000000000;
      }

      else
      {
        if (*(v199 + OBJC_IVAR____TtC15IMAP2Connection10Connection_configuration + *(v404 + 28)) >= 0)
        {
          v207 = v200 | 0x4000000000000000;
        }

        else
        {
          v207 = v200;
        }

        v205 = v201;
        v206 = v202;
      }

      sub_1001AD9FC(v199 + OBJC_IVAR____TtC15IMAP2Connection10Connection_configuration, v198, type metadata accessor for ConnectionConfiguration);
      v208 = sub_1001B8394();
      v210 = v209;
      v212 = v211;
      sub_1001AD938(v198, type metadata accessor for ConnectionConfiguration);
      v423[0] = v207;
      v423[1] = v205;
      v423[2] = v206;
      v423[3] = v208;
      v423[4] = v210;
      v423[5] = v212;
      v213 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
      v214 = v421;
      swift_beginAccess();
      v215 = v415;
      sub_1001AD9FC(v214 + v213, v415, type metadata accessor for ConnectionState);
      sub_1001C4358(v423, v420);
      sub_100175584(v203, v419, v204);
      sub_100175584(v208, v210, v212);
      v216 = v413;
      sub_1001AD9FC(v214 + v213, v413, type metadata accessor for ConnectionState);
      swift_beginAccess();
      sub_1001AC94C(v215, v214 + v213);
      swift_endAccess();
      sub_10019AB14(v216);
      sub_1001AD938(v215, type metadata accessor for ConnectionState);
      sub_1001AD938(v216, type metadata accessor for ConnectionState);
      return sub_1001A86A0();
    }

    else
    {
      return sub_1001A88B0();
    }
  }

  v97 = v421;
  if (EnumCaseMultiPayload == 4)
  {
    v99 = *v76;
    v98 = *(v76 + 1);
    v100 = v76[16];
    v101 = v421 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    v102 = v409;
    sub_1001AD9FC(v421 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v409, _s6LoggerVMa);
    swift_retain_n();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v103 = sub_1004A4A54();
    v104 = sub_1004A4A74();
    v105 = *(v104 - 8);
    v106 = *(v105 + 8);
    v419 = v105 + 8;
    v106(v102, v104);
    v107 = sub_1004A6004();
    v108 = os_log_type_enabled(v103, v107);
    v420 = v106;
    if (v108)
    {
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      LODWORD(v418) = v100;
      v417 = v98;
      v111 = v99;
      v112 = v110;
      v423[0] = v110;
      *v109 = 68158210;
      *(v109 + 4) = 2;
      *(v109 + 8) = 256;
      v113 = v101 + *(v414 + 20);
      *(v109 + 10) = *v113;
      *(v109 + 11) = 2082;
      v114 = ConnectionID.debugDescription.getter(*(v113 + 4));
      v116 = v101;
      v117 = sub_10015BA6C(v114, v115, v423);

      *(v109 + 13) = v117;
      v101 = v116;

      _os_log_impl(&_mh_execute_header, v103, v107, "[%.*hhx-%{public}s] Received handshake.", v109, 0x15u);
      sub_1000197E0(v112);
      v99 = v111;
      v98 = v417;
      v100 = v418;
    }

    else
    {
    }

    v217 = v97;
    v218 = v411;
    v219 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
    swift_beginAccess();
    sub_1001AD9FC(v217 + v219, v218, type metadata accessor for ConnectionState);

    sub_1001C3EF8(v99, v98, v100, v101, sub_1001ADD74, v217, sub_1001AD534, v217);
    v236 = v415;
    sub_1001AD9FC(v217 + v219, v415, type metadata accessor for ConnectionState);
    swift_beginAccess();
    sub_1001AC94C(v218, v217 + v219);
    swift_endAccess();
    sub_10019AB14(v236);
    sub_1001AD938(v218, type metadata accessor for ConnectionState);
    sub_1001AD938(v236, type metadata accessor for ConnectionState);

    sub_1001A86A0();
    sub_10019F900(0x8000000000000008);
    return sub_10018E150(v99, v98, v100);
  }

  v167 = *v76;
  v168 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_pathAttributes;
  swift_beginAccess();
  if (sub_100083010(*(v97 + v168), v167))
  {
  }

  v220 = *(v97 + v168);
  *(v97 + v168) = v167;

  v221 = v97 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
  v222 = v403;
  sub_1001AD9FC(v97 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v403, _s6LoggerVMa);
  swift_retain_n();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  swift_bridgeObjectRetain_n();
  v223 = sub_1004A4A54();
  v224 = sub_1004A4A74();
  (*(*(v224 - 8) + 8))(v222, v224);
  v225 = sub_1004A6034();
  if (os_log_type_enabled(v223, v225))
  {
    v226 = swift_slowAlloc();
    v227 = swift_slowAlloc();
    v422 = v227;
    *v226 = 68158466;
    *(v226 + 4) = 2;
    *(v226 + 8) = 256;
    v228 = v221 + *(v414 + 20);
    *(v226 + 10) = *v228;
    *(v226 + 11) = 2082;
    v229 = ConnectionID.debugDescription.getter(*(v228 + 4));
    v231 = sub_10015BA6C(v229, v230, &v422);

    *(v226 + 13) = v231;

    *(v226 + 21) = 1024;
    if (*(v167 + 16))
    {
      v232 = *(v167 + 40);
      sub_1004A6E94();
      sub_1004A6EB4(0);
      v233 = sub_1004A6F14() & ~(-1 << *(v167 + 32));
      v234 = *(v167 + ((v233 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v233;

      v235 = v234 & 1;
    }

    else
    {

      v235 = 0;
    }

    *(v226 + 23) = v235;
    swift_bridgeObjectRelease_n();
    _os_log_impl(&_mh_execute_header, v223, v225, "[%.*hhx-%{public}s] Path did change. Constrained: %{BOOL}d", v226, 0x1Bu);
    sub_1000197E0(v227);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  return sub_1001A14A0();
}

void sub_1001A5A14(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1004A53F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + 24);
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = sub_1004A5404();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    v11 = static MonotonicTime.now()();
    swift_beginAccess();
    sub_1001A6808(v11, a1);
    swift_endAccess();
    v12 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_enqueuedEvents;
    swift_beginAccess();
    if (*(v2 + v12))
    {
      v13 = *(a1 + 16);
      if (v13)
      {
        v14 = *(type metadata accessor for ConnectionEvent(0) - 8);
        v15 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
        v16 = *(v14 + 72);
        do
        {
          sub_1001A232C(v15);
          v15 += v16;
          --v13;
        }

        while (v13);
      }
    }

    else
    {
      *(v2 + v12) = _swiftEmptyArrayStorage;
      v17 = *(a1 + 16);
      if (v17)
      {
        v18 = *(type metadata accessor for ConnectionEvent(0) - 8);
        v19 = a1 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
        v20 = *(v18 + 72);
        do
        {
          sub_1001A232C(v19);
          v19 += v20;
          --v17;
        }

        while (v17);
      }

      sub_1001A90C0();
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1001A5C90(uint64_t a1, void (*a2)(void *, uint64_t, uint64_t, uint64_t))
{
  v106 = a2;
  v98 = a1;
  v3 = sub_10000C9C0(&qword_1005D35E0, &qword_1004DD1C8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v90 - v5;
  v97 = type metadata accessor for ConnectionEvent(0);
  v108 = *(v97 - 8);
  v7 = *(v108 + 64);
  v8 = __chkstk_darwin(v97);
  v104 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v90 - v10;
  v12 = sub_10000C9C0(&qword_1005D35F8, &qword_1004DD1E0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v110 = (&v90 - v17);
  v18 = sub_10000C9C0(&qword_1005D35E8, &unk_1004DD1D0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v103 = &v90 - v20;
  v21 = sub_10000C9C0(&qword_1005D3600, &qword_1004DD1E8);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v107 = (&v90 - v23);
  v109 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  v24 = *(*(v109 - 8) + 64);
  v25 = __chkstk_darwin(v109);
  v96 = &v90 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v90 - v27;
  v29 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = __chkstk_darwin(v29);
  v92 = &v90 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v91 = &v90 - v35;
  v36 = __chkstk_darwin(v34);
  v99 = (&v90 - v37);
  v38 = __chkstk_darwin(v36);
  v100 = &v90 - v39;
  v40 = __chkstk_darwin(v38);
  v93 = &v90 - v41;
  v42 = __chkstk_darwin(v40);
  v101 = &v90 - v43;
  result = __chkstk_darwin(v42);
  v46 = &v90 - v45;
  v90 = v2;
  v47 = *v2;
  v48 = (*v2 + 16);
  v49 = *v48;
  v105 = *v2;
  if (v49)
  {
    v50 = 0;
    while (v50 < *v48)
    {
      sub_1001AD9FC(v47 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v50, v46, type metadata accessor for CommandConnection.RecentErrors.Error);
      sub_1001ADC1C(&v46[*(v29 + 20)], v28, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      result = swift_getEnumCaseMultiPayload();
      if ((result - 1) < 5)
      {
        result = sub_1001AD938(v28, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      }

      else if (result != 6)
      {
        sub_1001AD938(v28, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
        v95 = 0;
        goto LABEL_10;
      }

      ++v50;
      v47 = v105;
      if (v49 == v50)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

LABEL_9:
  v95 = 1;
LABEL_10:
  v51 = v103;
  sub_10000E268(v106, v103, &qword_1005D35E8, &unk_1004DD1D0);
  v52 = v110;
  sub_1001ADC1C(v51, v110, type metadata accessor for ConnectionEvent);
  v53 = v108;
  v54 = v108 + 56;
  v106 = *(v108 + 56);
  v55 = v97;
  v106(v52, 0, 1, v97);
  v56 = v107;
  v106(v107, 1, 1, v55);
  sub_1001ADC84(v110, v56);
  sub_1001ADCF4(v56, v16);
  v103 = v54;
  v106(v56, 1, 1, v55);
  v57 = *(v53 + 48);
  v108 = v53 + 48;
  v102 = v57;
  v58 = v57(v16, 1, v55);
  v59 = v98;
  if (v58 != 1)
  {
    v110 = _swiftEmptyArrayStorage;
    v94 = v16;
    while (1)
    {
      sub_1001ADC1C(v16, v11, type metadata accessor for ConnectionEvent);
      v70 = v104;
      sub_1001AD9FC(v11, v104, type metadata accessor for ConnectionEvent);
      sub_1001FDA58(v59, v70, v6);
      sub_1001AD938(v11, type metadata accessor for ConnectionEvent);
      if ((*(v30 + 48))(v6, 1, v29) != 1)
      {
        break;
      }

      sub_100025F40(v6, &qword_1005D35E0, &qword_1004DD1C8);
LABEL_25:
      v69 = v107;
      sub_1001ADCF4(v107, v16);
      v106(v69, 1, 1, v55);
      if (v102(v16, 1, v55) == 1)
      {
        goto LABEL_12;
      }
    }

    v71 = v11;
    v72 = v6;
    v73 = v29;
    v74 = v72;
    v75 = v100;
    sub_1001ADC1C(v72, v100, type metadata accessor for CommandConnection.RecentErrors.Error);
    v76 = v96;
    if ((v95 & 1) == 0)
    {
      sub_1001AD9FC(v75 + *(v73 + 20), v96, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if ((EnumCaseMultiPayload - 1) >= 5)
      {
        v75 = v100;
        if (!EnumCaseMultiPayload)
        {
          sub_1001AD938(v76, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
          sub_1001AD938(v75, type metadata accessor for CommandConnection.RecentErrors.Error);
          v29 = v73;
          v6 = v74;
          v11 = v71;
LABEL_35:
          v16 = v94;
          goto LABEL_25;
        }
      }

      else
      {
        sub_1001AD938(v76, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
        v75 = v100;
      }
    }

    v78 = v93;
    sub_1001ADC1C(v75, v93, type metadata accessor for CommandConnection.RecentErrors.Error);
    sub_1001ADC1C(v78, v101, type metadata accessor for CommandConnection.RecentErrors.Error);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v110 = sub_1001EBC34(0, v110[2] + 1, 1, v110);
    }

    v29 = v73;
    v80 = v110[2];
    v79 = v110[3];
    v6 = v74;
    if (v80 >= v79 >> 1)
    {
      v110 = sub_1001EBC34(v79 > 1, v80 + 1, 1, v110);
    }

    v11 = v71;
    v81 = v110;
    v110[2] = v80 + 1;
    sub_1001ADC1C(v101, v81 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v80, type metadata accessor for CommandConnection.RecentErrors.Error);
    v55 = v97;
    v59 = v98;
    goto LABEL_35;
  }

  v110 = _swiftEmptyArrayStorage;
LABEL_12:
  sub_100025F40(v107, &qword_1005D3600, &qword_1004DD1E8);
  v60.rawValue = MonotonicTime.init(seconds:since:)(-4.0, v59).rawValue;
  result = *v48;
  if (!*v48)
  {
    v68 = 0;
    goto LABEL_43;
  }

  v61 = 0;
  v62 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v63 = *(v30 + 72);
  v109 = v62;
  v64 = v90;
  v65 = v105;
  while (1)
  {
    v66 = *(v105 + v62);
    v67 = v60.rawValue - v66;
    if (v60.rawValue >= v66)
    {
      if (__OFSUB__(v60.rawValue, v66))
      {
        goto LABEL_66;
      }
    }

    else
    {
      if (__OFSUB__(v66, v60.rawValue))
      {
        goto LABEL_67;
      }

      v67 = v60.rawValue - v66;
      if (__OFSUB__(0, v66 - v60.rawValue))
      {
        goto LABEL_68;
      }
    }

    if (v67 > 0)
    {
      break;
    }

    ++v61;
    v62 += v63;
    if (result == v61)
    {
      v68 = result;
      goto LABEL_43;
    }
  }

  v68 = v61 + 1;
  if (__OFADD__(v61, 1))
  {
    goto LABEL_78;
  }

  if (v68 != result)
  {
    v82 = v63 + v62;
    while (v68 < result)
    {
      v83 = v65;
      v84 = v99;
      result = sub_1001AD9FC(v65 + v82, v99, type metadata accessor for CommandConnection.RecentErrors.Error);
      v85 = *v84;
      v86 = __OFSUB__(v60.rawValue, *v84);
      v87 = v60.rawValue - *v84;
      if (v87 < 0 != v86)
      {
        v86 = __OFSUB__(v85, v60.rawValue);
        v88 = v85 - v60.rawValue;
        if (v86)
        {
          goto LABEL_71;
        }

        v87 = -v88;
        if (__OFSUB__(0, v88))
        {
          goto LABEL_72;
        }
      }

      else if (v86)
      {
        goto LABEL_70;
      }

      result = sub_1001AD938(v99, type metadata accessor for CommandConnection.RecentErrors.Error);
      if (v87 > 0)
      {
        v65 = v83;
      }

      else
      {
        v65 = v83;
        if (v68 != v61)
        {
          if ((v61 & 0x8000000000000000) != 0)
          {
            goto LABEL_73;
          }

          v89 = *v48;
          if (v61 >= *v48)
          {
            goto LABEL_74;
          }

          result = sub_1001AD9FC(v83 + v109 + v61 * v63, v91, type metadata accessor for CommandConnection.RecentErrors.Error);
          if (v68 >= v89)
          {
            goto LABEL_75;
          }

          sub_1001AD9FC(v83 + v82, v92, type metadata accessor for CommandConnection.RecentErrors.Error);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v83 = sub_1001EDF14(v83);
          }

          result = sub_1001AD998(v92, v83 + v109 + v61 * v63);
          if (v68 >= v83[2])
          {
            goto LABEL_76;
          }

          sub_1001AD998(v91, v83 + v82);
          v65 = v83;
          *v64 = v83;
        }

        ++v61;
      }

      ++v68;
      v48 = v65 + 2;
      result = v65[2];
      v82 += v63;
      if (v68 == result)
      {
        goto LABEL_42;
      }
    }

LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v68 = result;
LABEL_42:
  result = v61;
  if (v68 >= v61)
  {
LABEL_43:
    sub_1001AC628(result, v68);
    return sub_100215A50(v110);
  }

LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
  return result;
}

unint64_t sub_1001A6808(uint64_t a1, uint64_t a2)
{
  v78 = a1;
  v4 = sub_10000C9C0(&qword_1005D35E0, &qword_1004DD1C8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v69 - v6;
  v8 = type metadata accessor for ConnectionEvent(0);
  v85 = *(v8 - 8);
  v9 = v85[8];
  v10 = __chkstk_darwin(v8 - 8);
  v81 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v69 - v12;
  v82 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  v14 = *(*(v82 - 8) + 64);
  v15 = __chkstk_darwin(v82);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v69 - v18;
  v86 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  v84 = *(v86 - 8);
  v20 = *(v84 + 64);
  v21 = __chkstk_darwin(v86);
  v77 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v74 = &v69 - v24;
  v25 = __chkstk_darwin(v23);
  v79 = &v69 - v26;
  v27 = __chkstk_darwin(v25);
  v73 = &v69 - v28;
  v29 = __chkstk_darwin(v27);
  v72 = &v69 - v30;
  v31 = __chkstk_darwin(v29);
  v75 = (&v69 - v32);
  result = __chkstk_darwin(v31);
  v35 = &v69 - v34;
  v36 = *v2;
  v37 = *(*v2 + 16);
  v83 = (*v2 + 16);
  if (v37)
  {
    v38 = 0;
    while (v38 < *v83)
    {
      v39 = v36;
      sub_1001AD9FC(v36 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v38, v35, type metadata accessor for CommandConnection.RecentErrors.Error);
      sub_1001ADC1C(&v35[*(v86 + 20)], v19, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      result = swift_getEnumCaseMultiPayload();
      if ((result - 1) < 5)
      {
        result = sub_1001AD938(v19, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      }

      else if (result != 6)
      {
        sub_1001AD938(v19, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
        v76 = 0;
        v36 = v39;
        goto LABEL_10;
      }

      ++v38;
      v36 = v39;
      if (v37 == v38)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

LABEL_9:
  v76 = 1;
LABEL_10:
  v70 = v36;
  v71 = v2;
  v40 = *(a2 + 16);
  v41 = v78;
  if (v40)
  {
    v42 = a2 + ((*(v85 + 80) + 32) & ~*(v85 + 80));
    v80 = v85[9];
    v43 = (v84 + 48);
    v85 = _swiftEmptyArrayStorage;
    while (1)
    {
      sub_1001AD9FC(v42, v13, type metadata accessor for ConnectionEvent);
      v44 = v81;
      sub_1001AD9FC(v13, v81, type metadata accessor for ConnectionEvent);
      sub_1001FDA58(v41, v44, v7);
      sub_1001AD938(v13, type metadata accessor for ConnectionEvent);
      if ((*v43)(v7, 1, v86) == 1)
      {
        sub_100025F40(v7, &qword_1005D35E0, &qword_1004DD1C8);
      }

      else
      {
        v45 = v77;
        sub_1001ADC1C(v7, v77, type metadata accessor for CommandConnection.RecentErrors.Error);
        if (v76)
        {
          goto LABEL_18;
        }

        sub_1001AD9FC(v45 + *(v86 + 20), v17, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if ((EnumCaseMultiPayload - 1) < 5)
        {
          sub_1001AD938(v17, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
LABEL_18:
          v47 = v74;
          sub_1001ADC1C(v45, v74, type metadata accessor for CommandConnection.RecentErrors.Error);
          sub_1001ADC1C(v47, v79, type metadata accessor for CommandConnection.RecentErrors.Error);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v85 = sub_1001EBC34(0, v85[2] + 1, 1, v85);
          }

          v49 = v85[2];
          v48 = v85[3];
          if (v49 >= v48 >> 1)
          {
            v85 = sub_1001EBC34(v48 > 1, v49 + 1, 1, v85);
          }

          v51 = v84;
          v50 = v85;
          v85[2] = v49 + 1;
          sub_1001ADC1C(v79, v50 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v49, type metadata accessor for CommandConnection.RecentErrors.Error);
          v41 = v78;
          goto LABEL_13;
        }

        if (EnumCaseMultiPayload)
        {
          goto LABEL_18;
        }

        sub_1001AD938(v17, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
        sub_1001AD938(v45, type metadata accessor for CommandConnection.RecentErrors.Error);
      }

LABEL_13:
      v42 += v80;
      if (!--v40)
      {
        goto LABEL_26;
      }
    }
  }

  v85 = _swiftEmptyArrayStorage;
LABEL_26:
  v52.rawValue = MonotonicTime.init(seconds:since:)(-4.0, v41).rawValue;
  result = *v83;
  if (!*v83)
  {
    v60 = 0;
    goto LABEL_42;
  }

  v53 = 0;
  v54 = (*(v84 + 80) + 32) & ~*(v84 + 80);
  v55 = *(v84 + 72);
  v86 = v54;
  v57 = v70;
  v56 = v71;
  while (1)
  {
    v58 = *(v70 + v54);
    v59 = v52.rawValue - v58;
    if (v52.rawValue >= v58)
    {
      if (__OFSUB__(v52.rawValue, v58))
      {
        goto LABEL_64;
      }
    }

    else
    {
      if (__OFSUB__(v58, v52.rawValue))
      {
        goto LABEL_65;
      }

      v59 = v52.rawValue - v58;
      if (__OFSUB__(0, v58 - v52.rawValue))
      {
        goto LABEL_66;
      }
    }

    if (v59 > 0)
    {
      break;
    }

    ++v53;
    v54 += v55;
    if (result == v53)
    {
      v60 = result;
      goto LABEL_42;
    }
  }

  v60 = v53 + 1;
  if (__OFADD__(v53, 1))
  {
    goto LABEL_76;
  }

  if (v60 != result)
  {
    v61 = v55 + v54;
    while (v60 < result)
    {
      v62 = v57;
      v63 = v75;
      result = sub_1001AD9FC(v57 + v61, v75, type metadata accessor for CommandConnection.RecentErrors.Error);
      v64 = *v63;
      v65 = __OFSUB__(v52.rawValue, *v63);
      v66 = v52.rawValue - *v63;
      if (v66 < 0 != v65)
      {
        v65 = __OFSUB__(v64, v52.rawValue);
        v67 = v64 - v52.rawValue;
        if (v65)
        {
          goto LABEL_69;
        }

        v66 = -v67;
        if (__OFSUB__(0, v67))
        {
          goto LABEL_70;
        }
      }

      else if (v65)
      {
        goto LABEL_68;
      }

      result = sub_1001AD938(v75, type metadata accessor for CommandConnection.RecentErrors.Error);
      if (v66 <= 0)
      {
        if (v60 != v53)
        {
          if ((v53 & 0x8000000000000000) != 0)
          {
            goto LABEL_71;
          }

          v68 = *v83;
          if (v53 >= *v83)
          {
            goto LABEL_72;
          }

          result = sub_1001AD9FC(v57 + v86 + v53 * v55, v72, type metadata accessor for CommandConnection.RecentErrors.Error);
          if (v60 >= v68)
          {
            goto LABEL_73;
          }

          sub_1001AD9FC(v57 + v61, v73, type metadata accessor for CommandConnection.RecentErrors.Error);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v62 = sub_1001EDF14(v57);
          }

          result = sub_1001AD998(v73, v62 + v86 + v53 * v55);
          if (v60 >= *(v62 + 16))
          {
            goto LABEL_74;
          }

          sub_1001AD998(v72, v62 + v61);
          v57 = v62;
          *v56 = v62;
        }

        ++v53;
      }

      ++v60;
      result = v57[2];
      v83 = v57 + 2;
      v61 += v55;
      if (v60 == result)
      {
        goto LABEL_41;
      }
    }

LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v60 = result;
LABEL_41:
  result = v53;
  if (v60 >= v53)
  {
LABEL_42:
    sub_1001AC628(result, v60);
    return sub_100215A50(v85);
  }

LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
  return result;
}

uint64_t sub_1001A7100(uint64_t a1)
{
  v2 = v1;
  v109 = type metadata accessor for ConnectionState();
  v4 = *(*(v109 - 8) + 64);
  v5 = __chkstk_darwin(v109);
  v110 = &v95[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __chkstk_darwin(v5);
  v108 = &v95[-v8];
  v9 = __chkstk_darwin(v7);
  v107 = &v95[-v10];
  v11 = __chkstk_darwin(v9);
  v106 = &v95[-v12];
  v13 = __chkstk_darwin(v11);
  v104 = &v95[-v14];
  __chkstk_darwin(v13);
  v103 = &v95[-v15];
  v100 = _s6LoggerVMa();
  v16 = *(*(v100 - 8) + 64);
  v17 = __chkstk_darwin(v100);
  v19 = &v95[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v21 = &v95[-v20];
  v22 = sub_1004A5214();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22);
  v99 = &v95[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = __chkstk_darwin(v25);
  v102 = &v95[-v28];
  v29 = __chkstk_darwin(v27);
  v101 = &v95[-v30];
  __chkstk_darwin(v29);
  v32 = &v95[-v31];
  v33 = sub_1004A4E34();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  __chkstk_darwin(v33);
  v37 = &v95[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = *(v34 + 16);
  v105 = a1;
  v38(v37, a1, v33);
  if ((*(v34 + 88))(v37, v33) == enum case for NWConnection.State.failed(_:))
  {
    (*(v34 + 96))(v37, v33);
    if ((*(v23 + 88))(v37, v22) == enum case for NWError.posix(_:) && ((*(v23 + 16))(v32, v37, v22), (*(v23 + 96))(v32, v22), *v32 == 89))
    {
      v102 = v22;
      v39 = v2 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
      sub_1001AD9FC(v2 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v21, _s6LoggerVMa);
      swift_retain_n();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();

      v40 = sub_1004A4A54();
      v41 = sub_1004A4A74();
      (*(*(v41 - 8) + 8))(v21, v41);
      v42 = sub_1004A6034();
      if (os_log_type_enabled(v40, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v111[0] = v44;
        *v43 = 68158466;
        *(v43 + 4) = 2;
        *(v43 + 8) = 256;
        v45 = v39 + *(v100 + 20);
        *(v43 + 10) = *v45;

        *(v43 + 11) = 2082;
        v46 = ConnectionID.debugDescription.getter(*(v45 + 4));
        v48 = sub_10015BA6C(v46, v47, v111);

        *(v43 + 13) = v48;
        *(v43 + 21) = 2048;
        v49 = *(*(v2 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_underlyingID);

        *(v43 + 23) = v49;

        _os_log_impl(&_mh_execute_header, v40, v42, "[%.*hhx-%{public}s] [C%llu] Connection did fail: Operation canceled", v43, 0x1Fu);
        sub_1000197E0(v44);
      }

      else
      {
      }

      (*(v23 + 8))(v37, v102);
    }

    else
    {
      v50 = v101;
      (*(v23 + 32))(v101, v37, v22);
      v51 = v2 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
      sub_1001AD9FC(v2 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v19, _s6LoggerVMa);
      swift_retain_n();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v52 = v102;
      v98 = *(v23 + 16);
      v98(v102, v50, v22);

      v53 = sub_1004A4A54();
      v54 = sub_1004A4A74();
      (*(*(v54 - 8) + 8))(v19, v54);
      v55 = sub_1004A6014();
      if (os_log_type_enabled(v53, v55))
      {
        v56 = swift_slowAlloc();
        v96 = v55;
        v57 = v56;
        v97 = swift_slowAlloc();
        v111[0] = v97;
        *v57 = 68158722;
        *(v57 + 4) = 2;
        *(v57 + 8) = 256;
        v58 = v51 + *(v100 + 20);
        *(v57 + 10) = *v58;

        *(v57 + 11) = 2082;
        v59 = ConnectionID.debugDescription.getter(*(v58 + 4));
        v61 = v53;
        v62 = sub_10015BA6C(v59, v60, v111);

        *(v57 + 13) = v62;
        *(v57 + 21) = 2048;
        v63 = *(*(v2 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_underlyingID);

        *(v57 + 23) = v63;

        *(v57 + 31) = 2080;
        v64 = v102;
        v98(v99, v102, v22);
        v65 = sub_1004A5824();
        v67 = v66;
        v68 = *(v23 + 8);
        v68(v64, v22);
        v69 = sub_10015BA6C(v65, v67, v111);
        v70 = v50;
        v71 = v69;

        *(v57 + 33) = v71;
        _os_log_impl(&_mh_execute_header, v61, v96, "[%.*hhx-%{public}s] [C%llu] Connection did fail: %s", v57, 0x29u);
        swift_arrayDestroy();

        v68(v70, v22);
      }

      else
      {

        v72 = *(v23 + 8);
        v72(v52, v22);
        v72(v50, v22);
      }
    }
  }

  else
  {
    (*(v34 + 8))(v37, v33);
  }

  v73 = v104;
  v74 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  v75 = v103;
  sub_1001AD9FC(v2 + v74, v103, type metadata accessor for ConnectionState);
  sub_1001ADC1C(v75, v73, type metadata accessor for ConnectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    sub_1001AD938(v73, type metadata accessor for ConnectionState);
LABEL_14:
    v77 = 0;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_1001AD938(v73, type metadata accessor for ConnectionState);
  }

  else if (EnumCaseMultiPayload != 4)
  {
    goto LABEL_14;
  }

  v77 = 1;
LABEL_17:
  v78 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_connectionTraits;
  swift_beginAccess();
  v79 = *(v2 + v78);
  v80 = v106;
  sub_1001AD9FC(v2 + v74, v106, type metadata accessor for ConnectionState);

  sub_1001C4728(v105, v79);

  v81 = v107;
  sub_1001AD9FC(v2 + v74, v107, type metadata accessor for ConnectionState);
  swift_beginAccess();
  sub_1001AC94C(v80, v2 + v74);
  swift_endAccess();
  sub_10019AB14(v81);
  sub_1001AD938(v81, type metadata accessor for ConnectionState);
  sub_1001AD938(v80, type metadata accessor for ConnectionState);
  v82 = v108;
  sub_1001AD9FC(v2 + v74, v108, type metadata accessor for ConnectionState);
  v83 = v82;
  v84 = v110;
  sub_1001ADC1C(v83, v110, type metadata accessor for ConnectionState);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 2)
  {
    sub_1001AD938(v84, type metadata accessor for ConnectionState);
    return sub_1001A86A0();
  }

  if (result == 3)
  {
    result = sub_1001AD938(v84, type metadata accessor for ConnectionState);
  }

  else if (result != 4)
  {
    return sub_1001A86A0();
  }

  if ((v77 & 1) == 0)
  {
    v86 = *(v2 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
    v87 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_runningCommands;
    swift_beginAccess();
    v88 = *(v2 + v87);

    LODWORD(v86) = sub_1001B4154(v86, v88);
    v90 = v89;
    v92 = v91;

    v93 = swift_allocObject();
    v94 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_recentErrors;
    swift_beginAccess();
    *(v93 + 16) = *(v2 + v94);
    *(v93 + 24) = v86;
    *(v93 + 32) = v90;
    *(v93 + 40) = v92;

    sub_10019FE78(v93 | 0x1000000000000000);
  }

  return result;
}

uint64_t sub_1001A7D2C()
{
  v1 = _s6LoggerVMa();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ConnectionState();
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v36 - v11;
  __chkstk_darwin(v10);
  v14 = &v36 - v13;
  v15 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  sub_1001AD9FC(v0 + v15, v14, type metadata accessor for ConnectionState);
  sub_1001AD9FC(v14, v12, type metadata accessor for ConnectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    sub_1001AD938(v12, type metadata accessor for ConnectionState);
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_1001AD938(v14, type metadata accessor for ConnectionState);
    v17 = v12;
    return sub_1001AD938(v17, type metadata accessor for ConnectionState);
  }

  if (EnumCaseMultiPayload == 4)
  {
    v17 = v14;
    return sub_1001AD938(v17, type metadata accessor for ConnectionState);
  }

LABEL_6:
  sub_1001ADC1C(v14, v9, type metadata accessor for ConnectionState);
  v18 = swift_getEnumCaseMultiPayload();
  result = sub_1001AD938(v9, type metadata accessor for ConnectionState);
  if (v18 == 5)
  {
    return result;
  }

  v20 = v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_runningCommands;
  swift_beginAccess();
  v21 = *(v20 + 8);
  v22 = *(v20 + 16);
  sub_1001AD9FC(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v4, _s6LoggerVMa);
  v23 = v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_idle;
  result = swift_beginAccess();
  if (!*(v23 + 40))
  {
    __break(1u);
    return result;
  }

  v24 = static MonotonicTime.now()();
  v25 = *(v23 + 8);
  v27 = *(v23 + 16);
  v26 = *(v23 + 24);
  if (!*(v23 + 32))
  {
    *&v36 = *v23;
    *(&v36 + 1) = v25;
    LOBYTE(v37) = v27 & 1;
    *(&v37 + 1) = v26;
    if ((sub_1001E7F80(v21, v22, v24) & 1) == 0)
    {
      sub_1001AB5C0();
    }

    v33 = v37;
    v34 = *(&v37 + 1);
    *v23 = v36;
    *(v23 + 16) = v33;
    *(v23 + 24) = v34;
    *(v23 + 32) = 0;
    if (v33)
    {
      goto LABEL_13;
    }

LABEL_19:
    v35 = *(v23 + 40);
    RestartableTimer.start()();
    goto LABEL_20;
  }

  if (*(v23 + 32) == 1)
  {
    *&v36 = *v23;
    BYTE8(v36) = v25 & 1;
    *&v37 = v27;
    *(&v37 + 1) = v26;
    v28 = __chkstk_darwin(v24);
    *(&v36 - 2) = sub_1001AD630;
    *(&v36 - 1) = v0;
    __chkstk_darwin(v28);
    *(&v36 - 2) = sub_1001AD638;
    *(&v36 - 1) = v0;
    if ((sub_1001E80AC(v21, v22, sub_1001AD640, v29, sub_1001AD648, (&v36 - 2), v30, v4) & 1) == 0)
    {
      sub_1001AADFC();
    }

    v31 = BYTE8(v36);
    *v23 = v36;
    *(v23 + 8) = v31;
    *(v23 + 16) = v37;
    *(v23 + 32) = 1;
    if ((v31 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

LABEL_13:
  v32 = *(v23 + 40);
  RestartableTimer.stop()();
LABEL_20:
  sub_1001AD938(v4, _s6LoggerVMa);
  return swift_endAccess();
}

uint64_t sub_1001A817C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = _s6LoggerVMa();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v45 - v15;
  if (!(a1 >> 62))
  {
    v30 = *(*(v4 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_connection);
    return sub_1001D8288(a1 & 0x101FF);
  }

  if (a1 >> 62 == 1)
  {
    v45 = a4;
    v17 = v14;
    v18 = v4 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    sub_1001AD9FC(v4 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v13, _s6LoggerVMa);
    v19 = v4;

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v20 = sub_1004A4A54();
    v21 = sub_1004A4A74();
    (*(*(v21 - 8) + 8))(v13, v21);
    v22 = sub_1004A5FF4();
    if (os_log_type_enabled(v20, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v46 = v24;
      *v23 = 68158210;
      *(v23 + 4) = 2;
      *(v23 + 8) = 256;
      v25 = v18 + *(v17 + 20);
      *(v23 + 10) = *v25;
      v26 = v19;

      *(v23 + 11) = 2082;
      v27 = ConnectionID.debugDescription.getter(*(v25 + 4));
      v29 = sub_10015BA6C(v27, v28, &v46);

      *(v23 + 13) = v29;
      _os_log_impl(&_mh_execute_header, v20, v22, "[%.*hhx-%{public}s] Finishing push registration.", v23, 0x15u);
      sub_1000197E0(v24);
    }

    else
    {

      v26 = v19;
    }

    v37 = *(v26 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_finishPushRegistration + 8);
    return (*(v26 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_finishPushRegistration))(a1, a2, a3, v45);
  }

  v32 = a3 | a2 | a4;
  if (a1 == 0x8000000000000000 && !v32)
  {
    v33 = *(v4 + 16);
    v34 = v33 + OBJC_IVAR____TtC15IMAP2Connection10Connection_configuration;
    v35 = *(v34 + *(type metadata accessor for ConnectionConfiguration(0) + 28));
    if (v35 >> 6)
    {
      if (v35 >> 6 != 1)
      {
        v36 = 1;
        sub_1002141F8();
        goto LABEL_21;
      }

      LOBYTE(v35) = v35 & 0x3F;
    }

    sub_100213F20(v34, v35, v33 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger);
    v36 = 0;
LABEL_21:
    v40 = *(v33 + OBJC_IVAR____TtC15IMAP2Connection10Connection_connection);
    sub_1001AD9FC(v33 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger, v16, _s6LoggerVMa);
    v41 = (*(v10 + 80) + 17) & ~*(v10 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = v36;
    sub_1001ADC1C(v16, v42 + v41, _s6LoggerVMa);

    sub_1001D7C7C(v43, sub_1001AD724, v42);
  }

  if (a1 == 0x8000000000000001 && !v32)
  {
    return sub_1001A8CFC("[%.*hhx-%{public}s] Requesting credentials.", &OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_makeCredentials, sub_1001AD798);
  }

  if (a1 == 0x8000000000000002 && !v32)
  {
    v38 = *(*(v4 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_connection);
    v39 = swift_allocObject();
    swift_weakInit();

    sub_1001D883C(sub_1001AD650, v39);
  }

  if (a1 == 0x8000000000000003 && !v32)
  {
    return sub_1001A8CFC("[%.*hhx-%{public}s] Requesting push information.", &OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_getPushInformation, sub_1001AD844);
  }

  v44 = *(*(v4 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_connection);
  return sub_1001D8E48();
}

uint64_t sub_1001A86A0()
{
  v1 = v0;
  v2 = type metadata accessor for ConnectionState();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v14[-v7];
  v9 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_connectionTraits;
  swift_beginAccess();
  v10 = *(v1 + v9);
  v11 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
  v12 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  sub_1001AD9FC(v1 + v12, v8, type metadata accessor for ConnectionState);
  v15 = sub_1001ADD94;
  v16 = v1;

  sub_1001C7C8C(sub_1001AD894, v14, sub_1001AD858, v1, v1 + v11);
  sub_1001CB07C(v10, v1 + v11, v8, v1);

  sub_1001CC10C(v1 + v11, v8, v1);
  sub_1001AD9FC(v1 + v12, v6, type metadata accessor for ConnectionState);
  swift_beginAccess();
  sub_1001AC94C(v8, v1 + v12);
  swift_endAccess();
  sub_10019AB14(v6);
  sub_1001AD938(v6, type metadata accessor for ConnectionState);
  sub_1001AD938(v8, type metadata accessor for ConnectionState);
}

uint64_t sub_1001A88B0()
{
  v1 = v0;
  v2 = type metadata accessor for ConnectionState();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v39 - v8;
  __chkstk_darwin(v7);
  v11 = &v39 - v10;
  v44 = type metadata accessor for UnauthenticatedStateWithTasks();
  v12 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44);
  v45 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1004A53F4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = (&v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v1 + 24);
  *v18 = v19;
  (*(v15 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v14);
  v20 = v19;
  LOBYTE(v19) = sub_1004A5404();
  result = (*(v15 + 8))(v18, v14);
  if (v19)
  {
    v22 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
    swift_beginAccess();
    sub_1001AD9FC(v1 + v22, v11, type metadata accessor for ConnectionState);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v40 = v22;
      v41 = v2;
      v42 = v9;
      v43 = v6;
      v23 = v45;
      sub_1001ADC1C(v11, v45, type metadata accessor for UnauthenticatedStateWithTasks);
      v24 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
      sub_1001AD89C(v46);
      v48[8] = v46[8];
      v48[9] = v46[9];
      v48[10] = v46[10];
      v49 = v47;
      v48[4] = v46[4];
      v48[5] = v46[5];
      v48[6] = v46[6];
      v48[7] = v46[7];
      v48[2] = v46[2];
      v48[3] = v46[3];
      v48[0] = v46[0];
      v48[1] = v46[1];
      v25 = v23 + *(v44 + 24);
      v26 = sub_100218558(v48, v1 + v24);
      v27 = v26[2];
      if (v27)
      {
        v28 = (v26 + 7);
        do
        {
          v29 = *(v28 - 3);
          v30 = *(v28 - 2);
          v32 = *(v28 - 1);
          v31 = *v28;
          sub_1001AD7AC(v29);
          sub_1001A817C(v29, v30, v32, v31);
          sub_1001AD7F8(v29);
          v28 += 4;
          --v27;
        }

        while (v27);
      }

      v33 = v45;
      v34 = v42;
      sub_1001AD9FC(v45, v42, type metadata accessor for UnauthenticatedStateWithTasks);
      swift_storeEnumTagMultiPayload();
      v35 = v40;
      v36 = v43;
      sub_1001AD9FC(v1 + v40, v43, type metadata accessor for ConnectionState);
      swift_beginAccess();
      sub_1001AC94C(v34, v1 + v35);
      swift_endAccess();
      sub_10019AB14(v36);
      sub_1001AD938(v36, type metadata accessor for ConnectionState);
      sub_1001AD938(v34, type metadata accessor for ConnectionState);
      sub_1001A86A0();
      v37 = type metadata accessor for UnauthenticatedStateWithTasks;
      v38 = v33;
    }

    else
    {
      v37 = type metadata accessor for ConnectionState;
      v38 = v11;
    }

    return sub_1001AD938(v38, v37);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001A8CFC(const char *a1, void *a2, uint64_t a3)
{
  v7 = v3;
  v8 = _s6LoggerVMa();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v3 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
  sub_1001AD9FC(v3 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v11, _s6LoggerVMa);

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v13 = sub_1004A4A54();
  v14 = sub_1004A4A74();
  (*(*(v14 - 8) + 8))(v11, v14);
  v15 = sub_1004A5FF4();
  if (os_log_type_enabled(v13, v15))
  {
    v16 = swift_slowAlloc();
    v28 = a2;
    v17 = v16;
    v18 = swift_slowAlloc();
    v29 = v18;
    *v17 = 68158210;
    *(v17 + 4) = 2;
    *(v17 + 8) = 256;
    v19 = v12 + *(v8 + 20);
    *(v17 + 10) = *v19;

    *(v17 + 11) = 2082;
    v20 = ConnectionID.debugDescription.getter(*(v19 + 4));
    v22 = sub_10015BA6C(v20, v21, &v29);

    *(v17 + 13) = v22;
    _os_log_impl(&_mh_execute_header, v13, v15, a1, v17, 0x15u);
    sub_1000197E0(v18);

    a2 = v28;
  }

  else
  {
  }

  v23 = v7 + *a2;
  v25 = *v23;
  v24 = *(v23 + 8);
  v26 = swift_allocObject();
  swift_weakInit();

  v25(a3, v26);
}

uint64_t sub_1001A8F84@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for ConnectionConfiguration(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = sub_1001B86D0();
  if (v11 == 1)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0x8000000000000000;
  }

  else
  {
    v12 = v10;
    v13 = v11;
    if (*(v8 + OBJC_IVAR____TtC15IMAP2Connection10Connection_configuration + *(v4 + 28)) >= 0)
    {
      v14 = v9 | 0x4000000000000000;
    }

    else
    {
      v14 = v9;
    }
  }

  sub_1001AD9FC(v8 + OBJC_IVAR____TtC15IMAP2Connection10Connection_configuration, v7, type metadata accessor for ConnectionConfiguration);
  v15 = sub_1001B8394();
  v17 = v16;
  v19 = v18;
  result = sub_1001AD938(v7, type metadata accessor for ConnectionConfiguration);
  *a2 = v14;
  a2[1] = v12;
  a2[2] = v13;
  a2[3] = v15;
  a2[4] = v17;
  a2[5] = v19;
  return result;
}

void sub_1001A90C0()
{
  v1 = v0;
  v2 = _s6LoggerVMa();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_enqueuedEvents;
  swift_beginAccess();
  v7 = *(v1 + v6);
  if (v7)
  {
    *(v1 + v6) = 0;
    if (*(v7 + 16) && (v8 = v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_delegate, swift_unknownObjectWeakLoadStrong()))
    {
      v9 = *(v8 + 8);
      ObjectType = swift_getObjectType();
      (*(v9 + 8))(v7, ObjectType, v9);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    v11 = v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    sub_1001AD9FC(v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v5, _s6LoggerVMa);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v12 = sub_1004A4A54();
    v13 = sub_1004A4A74();
    (*(*(v13 - 8) + 8))(v5, v13);
    v14 = sub_1004A6014();
    if (os_log_type_enabled(v12, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21 = v16;
      *v15 = 68158210;
      *(v15 + 4) = 2;
      *(v15 + 8) = 256;
      v17 = v11 + *(v2 + 20);
      *(v15 + 10) = *v17;

      *(v15 + 11) = 2082;
      v18 = ConnectionID.debugDescription.getter(*(v17 + 4));
      v20 = sub_10015BA6C(v18, v19, &v21);

      *(v15 + 13) = v20;
      _os_log_impl(&_mh_execute_header, v12, v14, "[%.*hhx-%{public}s] Trying to send nil enqueued events.", v15, 0x15u);
      sub_1000197E0(v16);
    }

    else
    {
    }
  }
}

uint64_t sub_1001A9360(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1001A93C0(a1);
  }

  return result;
}

uint64_t sub_1001A93C0(uint64_t a1)
{
  v2 = v1;
  v62 = a1;
  v60 = type metadata accessor for ConnectionConfiguration(0);
  v3 = *(*(v60 - 8) + 64);
  __chkstk_darwin(v60);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ConnectionState();
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v64 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v63 = &v53 - v11;
  __chkstk_darwin(v10);
  v13 = &v53 - v12;
  v61 = type metadata accessor for UnauthenticatedStateWithTasks();
  v14 = *(*(v61 - 8) + 64);
  __chkstk_darwin(v61);
  v65 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1004A53F4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = (&v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v2 + 24);
  *v20 = v21;
  (*(v17 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v16);
  v22 = v21;
  v23 = sub_1004A5404();
  result = (*(v17 + 8))(v20, v16);
  if (v23)
  {
    v25 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
    swift_beginAccess();
    sub_1001AD9FC(v2 + v25, v13, type metadata accessor for ConnectionState);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1001ADC1C(v13, v65, type metadata accessor for UnauthenticatedStateWithTasks);
      v26 = *(v2 + 16);
      v27 = sub_1001B86D0();
      v58 = v25;
      v59 = v6;
      v56 = v28;
      v57 = v27;
      v55 = v29;
      if (v29 == 1)
      {
        v60 = 0;
        v30 = 0;
        v31 = 0x8000000000000000;
      }

      else
      {
        if (*(v26 + OBJC_IVAR____TtC15IMAP2Connection10Connection_configuration + *(v60 + 28)) >= 0)
        {
          v31 = v27 | 0x4000000000000000;
        }

        else
        {
          v31 = v27;
        }

        v60 = v28;
        v30 = v29;
      }

      v34 = v62;
      sub_1001AD9FC(v26 + OBJC_IVAR____TtC15IMAP2Connection10Connection_configuration, v5, type metadata accessor for ConnectionConfiguration);
      v35 = sub_1001B8394();
      v37 = v36;
      v39 = v38;
      sub_1001AD938(v5, type metadata accessor for ConnectionConfiguration);
      v40 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
      *&v66 = v34;
      *(&v66 + 1) = v31;
      *&v67 = v60;
      *(&v67 + 1) = v30;
      v62 = v35;
      *&v68 = v35;
      *(&v68 + 1) = v37;
      v60 = v37;
      v54 = v39;
      *&v69 = v39;
      sub_1001AD7A0(&v66);
      v78[8] = v74;
      v78[9] = v75;
      v78[10] = v76;
      v79 = v77;
      v78[4] = v70;
      v78[5] = v71;
      v78[6] = v72;
      v78[7] = v73;
      v78[2] = v68;
      v78[3] = v69;
      v78[0] = v66;
      v78[1] = v67;
      v41 = v65 + *(v61 + 24);
      v42 = sub_100218558(v78, v2 + v40);
      v43 = v42[2];
      if (v43)
      {
        v44 = (v42 + 7);
        do
        {
          v46 = *(v44 - 3);
          v45 = *(v44 - 2);
          v47 = *(v44 - 1);
          v48 = *v44;
          sub_1001AD7AC(v46);
          sub_1001A817C(v46, v45, v47, v48);
          sub_1001AD7F8(v46);
          v44 += 4;
          --v43;
        }

        while (v43);
      }

      sub_100175584(v57, v56, v55);
      sub_100175584(v62, v60, v54);
      v49 = v65;
      v50 = v63;
      sub_1001AD9FC(v65, v63, type metadata accessor for UnauthenticatedStateWithTasks);
      swift_storeEnumTagMultiPayload();
      v51 = v58;
      v52 = v64;
      sub_1001AD9FC(v2 + v58, v64, type metadata accessor for ConnectionState);
      swift_beginAccess();
      sub_1001AC94C(v50, v2 + v51);
      swift_endAccess();
      sub_10019AB14(v52);
      sub_1001AD938(v52, type metadata accessor for ConnectionState);
      sub_1001AD938(v50, type metadata accessor for ConnectionState);
      sub_1001A86A0();
      v32 = type metadata accessor for UnauthenticatedStateWithTasks;
      v33 = v49;
    }

    else
    {
      v32 = type metadata accessor for ConnectionState;
      v33 = v13;
    }

    return sub_1001AD938(v33, v32);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001A9950(__int128 *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1001A99B0(a1);
  }

  return result;
}

uint64_t sub_1001A99B0(__int128 *a1)
{
  v2 = v1;
  v3 = a1[1];
  v62 = *a1;
  v63 = v3;
  v4 = a1[3];
  v64 = a1[2];
  v65 = v4;
  v5 = type metadata accessor for ConnectionState();
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v46 = &v41 - v11;
  __chkstk_darwin(v10);
  v13 = &v41 - v12;
  v45 = type metadata accessor for UnauthenticatedStateWithTasks();
  v14 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45);
  v47 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1004A53F4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = (&v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v2 + 24);
  *v20 = v21;
  (*(v17 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v16);
  v22 = v21;
  LOBYTE(v21) = sub_1004A5404();
  result = (*(v17 + 8))(v20, v16);
  if (v21)
  {
    v24 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
    swift_beginAccess();
    sub_1001AD9FC(v2 + v24, v13, type metadata accessor for ConnectionState);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v42 = v24;
      v43 = v5;
      v44 = v9;
      v25 = v47;
      sub_1001ADC1C(v13, v47, type metadata accessor for UnauthenticatedStateWithTasks);
      v26 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
      v48 = v62;
      v49 = v63;
      v50 = v64;
      v51 = v65;
      sub_1001AD84C(&v48);
      v60[8] = v56;
      v60[9] = v57;
      v60[10] = v58;
      v61 = v59;
      v60[4] = v52;
      v60[5] = v53;
      v60[6] = v54;
      v60[7] = v55;
      v60[2] = v50;
      v60[3] = v51;
      v60[0] = v48;
      v60[1] = v49;
      v27 = v25 + *(v45 + 24);
      v28 = sub_100218558(v60, v2 + v26);
      v29 = v28[2];
      if (v29)
      {
        v30 = (v28 + 7);
        do
        {
          v31 = *(v30 - 3);
          v32 = *(v30 - 2);
          v34 = *(v30 - 1);
          v33 = *v30;
          sub_1001AD7AC(v31);
          sub_1001A817C(v31, v32, v34, v33);
          sub_1001AD7F8(v31);
          v30 += 4;
          --v29;
        }

        while (v29);
      }

      v35 = v46;
      v36 = v47;
      sub_1001AD9FC(v47, v46, type metadata accessor for UnauthenticatedStateWithTasks);
      swift_storeEnumTagMultiPayload();
      v37 = v42;
      v38 = v44;
      sub_1001AD9FC(v2 + v42, v44, type metadata accessor for ConnectionState);
      swift_beginAccess();
      sub_1001AC94C(v35, v2 + v37);
      swift_endAccess();
      sub_10019AB14(v38);
      sub_1001AD938(v38, type metadata accessor for ConnectionState);
      sub_1001AD938(v35, type metadata accessor for ConnectionState);
      sub_1001A86A0();
      v39 = type metadata accessor for UnauthenticatedStateWithTasks;
      v40 = v36;
    }

    else
    {
      v39 = type metadata accessor for ConnectionState;
      v40 = v13;
    }

    return sub_1001AD938(v40, v39);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1001A9E1C(uint64_t a1)
{
  v3 = _s6LoggerVMa();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v97 - v8;
  __chkstk_darwin(v10);
  v12 = &v97 - v11;
  __chkstk_darwin(v13);
  v15 = &v97 - v14;
  __chkstk_darwin(v16);
  v18 = &v97 - v17;
  v19 = static MonotonicTime.now()();
  v20 = sub_1001AA9D8(v19);
  if ((v21 & 1) == 0 || v20)
  {
    return;
  }

  v97 = v1;
  v22 = (v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_runningCommands);
  swift_beginAccess();
  v23 = 0;
  v24 = *v22;
  v25 = *(*v22 + 16);
  v26 = v25 + 1;
  v27 = 56;
  while (--v26)
  {
    v28 = *(v24 + v27);
    v27 += 40;
    v29 = v28 == 2;
    v30 = __OFADD__(v23, v29);
    v23 += v29;
    if (v30)
    {
      __break(1u);
      break;
    }
  }

  if (v23 > 2)
  {
    v31 = v97 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    sub_1001AD9FC(v97 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v6, _s6LoggerVMa);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v32 = sub_1004A4A54();
    v33 = sub_1004A4A74();
    (*(*(v33 - 8) + 8))(v6, v33);
    v34 = sub_1004A6014();
    if (os_log_type_enabled(v32, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v99[0] = v36;
      *v35 = 68158466;
      *(v35 + 4) = 2;
      *(v35 + 8) = 256;
      v37 = v31 + *(v3 + 20);
      *(v35 + 10) = *v37;

      *(v35 + 11) = 2082;
      v38 = ConnectionID.debugDescription.getter(*(v37 + 4));
      v40 = sub_10015BA6C(v38, v39, v99);

      *(v35 + 13) = v40;
      *(v35 + 21) = 2048;
      *(v35 + 23) = v23;
      _os_log_impl(&_mh_execute_header, v32, v34, "[%.*hhx-%{public}s] Connection has %ld IDLE running.", v35, 0x1Fu);
      sub_1000197E0(v36);

LABEL_31:
      CommandConnection.cancel()();
      return;
    }

LABEL_30:

    goto LABEL_31;
  }

  v41 = a1;
  if (!v25)
  {
    goto LABEL_23;
  }

  v42 = (v24 + 64);
  v41 = a1;
  do
  {
    v43 = *v42;
    if (*v42 >= v41)
    {
      v43 = v41;
    }

    if (*(v42 - 8) == 2)
    {
      v41 = v43;
    }

    v42 += 5;
    --v25;
  }

  while (v25);
  if (v41 <= a1)
  {
    goto LABEL_23;
  }

  if (__OFSUB__(v41, a1))
  {
    goto LABEL_53;
  }

  v44 = a1 - v41;
  if (__OFSUB__(0, v41 - a1))
  {
    __break(1u);
LABEL_23:
    v44 = a1 - v41;
    if (!__OFSUB__(a1, v41))
    {
      goto LABEL_24;
    }

    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

LABEL_24:
  v45 = v44 / 1000000000.0;
  if (v45 >= 570.0)
  {
    v60 = v97 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    sub_1001AD9FC(v97 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v9, _s6LoggerVMa);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v32 = sub_1004A4A54();
    v61 = sub_1004A4A74();
    (*(*(v61 - 8) + 8))(v9, v61);
    v62 = sub_1004A6014();
    if (os_log_type_enabled(v32, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v99[0] = v64;
      *v63 = 68158466;
      *(v63 + 4) = 2;
      *(v63 + 8) = 256;
      v65 = v60 + *(v3 + 20);
      *(v63 + 10) = *v65;

      *(v63 + 11) = 2082;
      v66 = ConnectionID.debugDescription.getter(*(v65 + 4));
      v68 = sub_10015BA6C(v66, v67, v99);

      *(v63 + 13) = v68;
      *(v63 + 21) = 2048;
      *(v63 + 23) = v45;
      _os_log_impl(&_mh_execute_header, v32, v62, "[%.*hhx-%{public}s] Connection has IDLE that has been running for %f s.", v63, 0x1Fu);
      sub_1000197E0(v64);

      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v46 = v22[1];
  v47 = *(v22 + 16);

  sub_1002090DC(v48, v99);

  if (v99[1])
  {
    sub_100025F40(v99, &qword_1005D3608, &unk_1004DD1F0);
    v49 = v97;
    goto LABEL_27;
  }

  v69 = *v22;
  v49 = v97;
  if (!*(v69 + 16))
  {
LABEL_27:
    v50 = v49 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    sub_1001AD9FC(v49 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v12, _s6LoggerVMa);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v51 = sub_1004A4A54();
    v52 = sub_1004A4A74();
    (*(*(v52 - 8) + 8))(v12, v52);
    v53 = sub_1004A6004();
    if (os_log_type_enabled(v51, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v98 = v55;
      *v54 = 68158210;
      *(v54 + 4) = 2;
      *(v54 + 8) = 256;
      v56 = v50 + *(v3 + 20);
      *(v54 + 10) = *v56;

      *(v54 + 11) = 2082;
      v57 = ConnectionID.debugDescription.getter(*(v56 + 4));
      v59 = sub_10015BA6C(v57, v58, &v98);

      *(v54 + 13) = v59;
      _os_log_impl(&_mh_execute_header, v51, v53, "[%.*hhx-%{public}s] Stuck check: no (non-IDLE) commands are currently running.", v54, 0x15u);
      sub_1000197E0(v55);

LABEL_29:

      return;
    }

    goto LABEL_50;
  }

  v70 = *(*(v97 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_lastMessageTime);
  if (v70 <= a1)
  {
LABEL_42:
    v71 = a1 - v70;
    if (!__OFSUB__(a1, v70))
    {
      goto LABEL_43;
    }

LABEL_55:
    __break(1u);
    return;
  }

  if (__OFSUB__(v70, a1))
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v71 = a1 - v70;
  if (__OFSUB__(0, v70 - a1))
  {
    __break(1u);
    goto LABEL_42;
  }

LABEL_43:
  v72 = v71 / 1000000000.0;
  if (v72 >= 2.0)
  {
    v73 = *(v49 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);

    LOBYTE(v73) = sub_1001B4154(v73, v69);
    v75 = v74;

    v76 = sub_1001AFA54(v73, v75);
    v78 = v77;

    v79 = v49 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    if (v72 >= 87.0)
    {
      sub_1001AD9FC(v49 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v15, _s6LoggerVMa);

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();

      v88 = sub_1004A4A54();
      v89 = sub_1004A4A74();
      (*(*(v89 - 8) + 8))(v15, v89);
      v90 = sub_1004A6014();

      if (os_log_type_enabled(v88, v90))
      {
        v91 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        *v91 = 68158978;
        *(v91 + 4) = 2;
        *(v91 + 8) = 256;
        v92 = v79 + *(v3 + 20);
        *(v91 + 10) = *v92;

        *(v91 + 11) = 2082;
        v93 = ConnectionID.debugDescription.getter(*(v92 + 4));
        v95 = sub_10015BA6C(v93, v94, &v98);

        *(v91 + 13) = v95;
        *(v91 + 21) = 1040;
        *(v91 + 23) = 1;
        *(v91 + 27) = 2048;
        *(v91 + 29) = v72;
        *(v91 + 37) = 2082;
        v96 = sub_10015BA6C(v76, v78, &v98);

        *(v91 + 39) = v96;
        _os_log_impl(&_mh_execute_header, v88, v90, "[%.*hhx-%{public}s] Connection appears to have been stuck for %.*f s. Running commands: %{public}s. Cancelling.", v91, 0x2Fu);
        swift_arrayDestroy();
      }

      else
      {
      }

      goto LABEL_31;
    }

    sub_1001AD9FC(v49 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v18, _s6LoggerVMa);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();

    v51 = sub_1004A4A54();
    v80 = sub_1004A4A74();
    (*(*(v80 - 8) + 8))(v18, v80);
    v81 = sub_1004A6014();

    if (os_log_type_enabled(v51, v81))
    {
      v82 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      *v82 = 68158978;
      *(v82 + 4) = 2;
      *(v82 + 8) = 256;
      v83 = v79 + *(v3 + 20);
      *(v82 + 10) = *v83;

      *(v82 + 11) = 2082;
      v84 = ConnectionID.debugDescription.getter(*(v83 + 4));
      v86 = sub_10015BA6C(v84, v85, &v98);

      *(v82 + 13) = v86;
      *(v82 + 21) = 1040;
      *(v82 + 23) = 1;
      *(v82 + 27) = 2048;
      *(v82 + 29) = v72;
      *(v82 + 37) = 2082;
      v87 = sub_10015BA6C(v76, v78, &v98);

      *(v82 + 39) = v87;
      _os_log_impl(&_mh_execute_header, v51, v81, "[%.*hhx-%{public}s] Connection appears to have been stuck for %.*f s. Running commands: %{public}s.", v82, 0x2Fu);
      swift_arrayDestroy();

      goto LABEL_29;
    }

LABEL_50:
  }
}

uint64_t sub_1001AA9D8(uint64_t a1)
{
  v3 = type metadata accessor for ConnectionState();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UnauthenticatedStateWithTasks();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  sub_1001AD9FC(v1 + v11, v6, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_7;
  }

  sub_1001ADC1C(v6, v10, type metadata accessor for UnauthenticatedStateWithTasks);
  v12 = *(v10 + 1);
  *&result = COERCE_DOUBLE(sub_1001AD938(v10, type metadata accessor for UnauthenticatedStateWithTasks));
  if (v12 <= a1)
  {
    v14 = a1 - v12;
    if (!__OFSUB__(a1, v12))
    {
      goto LABEL_9;
    }

LABEL_14:
    __break(1u);
    return result;
  }

  if (__OFSUB__(v12, a1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = a1 - v12;
  if (__OFSUB__(0, v12 - a1))
  {
    __break(1u);
LABEL_7:
    sub_1001AD938(v6, type metadata accessor for ConnectionState);
    *&result = 0.0;
    return result;
  }

LABEL_9:
  if (v14 / 1000000000.0 <= 180.0)
  {
    return 1;
  }

  *&result = v14 / 1000000000.0;
  return result;
}

double sub_1001AABB8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_runningCommands);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);

  sub_1002090DC(v7, v10);

  result = *v10;
  v9 = v10[1];
  *a2 = v10[0];
  *(a2 + 16) = v9;
  *(a2 + 32) = v11;
  return result;
}

uint64_t sub_1001AAC44(uint64_t a1)
{
  v2 = type metadata accessor for ConnectionState();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v4);
  v8 = &v17[-v7 - 8];
  v9 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  sub_1001AD9FC(a1 + v9, v8, type metadata accessor for ConnectionState);
  sub_1001ADC1C(v8, v6, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    memcpy(v17, v6, 0x162uLL);
    v10 = *(v6 + 21);
    v18[8] = *(v6 + 20);
    v18[9] = v10;
    v19 = *(v6 + 176);
    v11 = *(v6 + 17);
    v18[4] = *(v6 + 16);
    v18[5] = v11;
    v12 = *(v6 + 19);
    v18[6] = *(v6 + 18);
    v18[7] = v12;
    v13 = *(v6 + 13);
    v18[0] = *(v6 + 12);
    v18[1] = v13;
    v14 = *(v6 + 15);
    v18[2] = *(v6 + 14);
    v18[3] = v14;
    if (sub_1001ACFC0(v18) == 2)
    {
      sub_1001AD074(v18);
      sub_1001ACFCC(v17);
      return 1;
    }

    sub_1001ACFCC(v17);
  }

  else
  {
    sub_1001AD938(v6, type metadata accessor for ConnectionState);
  }

  return 0;
}

uint64_t sub_1001AADFC()
{
  v1 = sub_1004A4904();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for OutboundContent(0);
  v6 = *(*(v62 - 8) + 64);
  __chkstk_darwin(v62);
  v63 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = _s6LoggerVMa();
  v8 = *(*(v65 - 8) + 64);
  v9 = __chkstk_darwin(v65);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v57 - v12;
  v14 = sub_1004A53F4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = (&v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = v0[3];
  *v18 = v19;
  (*(v15 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v14);
  v20 = v19;
  v21 = sub_1004A5404();
  (*(v15 + 8))(v18, v14);
  if (v21)
  {
    v64 = v13;
    v58 = v11;
    v59 = v5;
    v60 = v2;
    v61 = v1;
    v22 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_commandCounter;
    swift_beginAccess();
    v11 = (*(v0 + v22) + 1) & 0xFFFFFF;
    *(v0 + v22) = v11;
    v5 = *(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
    v21 = v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_runningCommands;
    swift_beginAccess();
    v18 = v0;
    v13 = static MonotonicTime.now()();
    v2 = *v21;
    v23 = *(v21 + 8);
    v24 = *(v21 + 16);
    v0 = _swiftEmptySetSingleton;
    sub_10020924C(_swiftEmptySetSingleton, 0, *v21);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v21 = v2;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  v2 = sub_1001EBFD0(0, *(v2 + 16) + 1, 1, v2);
  *v21 = v2;
LABEL_3:
  v26 = v5;
  v28 = *(v2 + 16);
  v27 = *(v2 + 24);
  if (v28 >= v27 >> 1)
  {
    v56 = sub_1001EBFD0((v27 > 1), v28 + 1, 1, v2);
    v29 = v11;
    v2 = v56;
  }

  else
  {
    v29 = v11;
  }

  *(v2 + 16) = v28 + 1;
  v30 = v2 + 40 * v28;
  *(v30 + 32) = v5;
  *(v30 + 36) = v29;
  *(v30 + 40) = v0;
  *(v30 + 48) = 0;
  *(v30 + 56) = 2;
  *(v30 + 64) = v13;
  *v21 = v2;
  v31 = v29;
  swift_endAccess();
  swift_endAccess();
  v32 = v18;
  v33 = v18 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
  v34 = v58;
  sub_1001AD9FC(v18 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v58, _s6LoggerVMa);

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v35 = sub_1004A4A54();
  v36 = sub_1004A4A74();
  (*(*(v36 - 8) + 8))(v34, v36);
  v37 = sub_1004A6004();
  if (os_log_type_enabled(v35, v37))
  {
    v38 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v66[0] = v64;
    *v38 = 68158466;
    *(v38 + 4) = 2;
    *(v38 + 8) = 256;
    v39 = v65;
    v40 = &v33[*(v65 + 20)];
    *(v38 + 10) = *v40;

    *(v38 + 11) = 2082;
    v41 = ConnectionID.debugDescription.getter(*(v40 + 1));
    v43 = sub_10015BA6C(v41, v42, v66);

    *(v38 + 13) = v43;
    *(v38 + 21) = 2082;
    v26 = v5;
    v44 = v31 << 32;
    v45 = Tag.debugDescription.getter(v26 | ((v31 & 0xFFFFFF) << 32));
    v47 = sub_10015BA6C(v45, v46, v66);

    *(v38 + 23) = v47;
    _os_log_impl(&_mh_execute_header, v35, v37, "[%.*hhx-%{public}s] Sending IDLE as %{public}s", v38, 0x1Fu);
    swift_arrayDestroy();

    v48 = v61;
  }

  else
  {

    v44 = v31 << 32;
    v48 = v61;
    v39 = v65;
  }

  v49 = v32[2];
  v50 = v63;
  swift_storeEnumTagMultiPayload();
  sub_1001B78AC(v44 | v26, v50);
  sub_1001AD938(v50, type metadata accessor for OutboundContent);
  v51 = *(v49 + OBJC_IVAR____TtC15IMAP2Connection10Connection_connection);
  v52 = (v49 + *(v39 + 20) + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger);
  v53 = (*(v52 + 1) << 27) | (*v52 << 59) | 0x800000;
  v54 = v59;
  sub_1004A4914();
  sub_1001D75AC(v54);
  return (*(v60 + 8))(v54, v48);
}

uint64_t sub_1001AB5C0()
{
  v1 = sub_1004A4904();
  v76 = *(v1 - 8);
  v77 = v1;
  v2 = *(v76 + 64);
  __chkstk_darwin(v1);
  v75 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for OutboundContent(0);
  v4 = *(*(v73 - 8) + 64);
  __chkstk_darwin(v73);
  v74 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = _s6LoggerVMa();
  v6 = *(*(v79 - 8) + 64);
  v7 = __chkstk_darwin(v79);
  v78 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v69 - v9;
  v80 = type metadata accessor for ClientCommand(0);
  v11 = *(*(v80 - 8) + 64);
  v12 = __chkstk_darwin(v80);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v69 - v15;
  v17 = sub_1004A53F4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for ConnectionState();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  sub_1001AD9FC(v0 + v26, v25, type metadata accessor for ConnectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = sub_1001AD938(v25, type metadata accessor for ConnectionState);
  if (EnumCaseMultiPayload != 2)
  {
    return result;
  }

  v29 = (v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_runningCommands);
  result = swift_beginAccess();
  if (*(*v29 + 16))
  {
    return result;
  }

  v30 = *(v0 + 24);
  *v21 = v30;
  (*(v18 + 104))(v21, enum case for DispatchPredicate.onQueue(_:), v17);
  v31 = v30;
  LOBYTE(v30) = sub_1004A5404();
  v33 = *(v18 + 8);
  v32 = v18 + 8;
  v33(v21, v17);
  if ((v30 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v34 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_commandCounter;
  swift_beginAccess();
  LODWORD(v71) = *(v0 + v34);
  v35 = (v71 + 1) & 0xFFFFFF;
  *(v0 + v34) = v35;
  v72 = v0;
  v70 = *(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
  swift_beginAccess();
  swift_storeEnumTagMultiPayload();
  v36 = sub_1001FBAA0();
  sub_1001AD938(v16, type metadata accessor for ClientCommand);
  swift_storeEnumTagMultiPayload();
  v0 = sub_1001FBFB0();
  sub_1001AD938(v14, type metadata accessor for ClientCommand);
  v37 = static MonotonicTime.now()();
  v21 = *v29;
  v38 = v29[1];
  v39 = *(v29 + 16);
  sub_10020924C(v36, 0, *v29);
  v71 = v37;
  v32 = v35;
  v10 = v70;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v29 = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_13:
    v21 = sub_1001EBFD0(0, *(v21 + 2) + 1, 1, v21);
    *v29 = v21;
  }

  v41 = v72;
  v42 = v78;
  v43 = v79;
  v45 = *(v21 + 2);
  v44 = *(v21 + 3);
  if (v45 >= v44 >> 1)
  {
    v21 = sub_1001EBFD0((v44 > 1), v45 + 1, 1, v21);
  }

  *(v21 + 2) = v45 + 1;
  v46 = &v21[40 * v45];
  *(v46 + 8) = v10;
  *(v46 + 9) = v32;
  *(v46 + 5) = v0;
  *(v46 + 6) = 0;
  v46[56] = 1;
  *(v46 + 8) = v71;
  *v29 = v21;
  swift_endAccess();
  swift_endAccess();
  v47 = v41 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
  sub_1001AD9FC(v41 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v42, _s6LoggerVMa);

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v48 = sub_1004A4A54();
  v49 = sub_1004A4A74();
  (*(*(v49 - 8) + 8))(v42, v49);
  v50 = sub_1004A6004();
  if (os_log_type_enabled(v48, v50))
  {
    v51 = swift_slowAlloc();
    v81[0] = swift_slowAlloc();
    *v51 = 68158466;
    *(v51 + 4) = 2;
    *(v51 + 8) = 256;
    v52 = v47 + *(v43 + 20);
    *(v51 + 10) = *v52;
    v53 = v72;

    *(v51 + 11) = 2082;
    v54 = ConnectionID.debugDescription.getter(*(v52 + 4));
    v56 = sub_10015BA6C(v54, v55, v81);

    *(v51 + 13) = v56;
    *(v51 + 21) = 2082;
    v57 = v32 << 32;
    v58 = Tag.debugDescription.getter(v10 | ((v32 & 0xFFFFFF) << 32));
    v60 = sub_10015BA6C(v58, v59, v81);

    *(v51 + 23) = v60;
    v61 = v50;
    v62 = v79;
    _os_log_impl(&_mh_execute_header, v48, v61, "[%.*hhx-%{public}s] Sending NOOP as %{public}s", v51, 0x1Fu);
    swift_arrayDestroy();
  }

  else
  {

    v53 = v72;

    v62 = v43;
    v57 = v32 << 32;
  }

  v63 = *(v53 + 16);
  v64 = v74;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_1001B78AC(v57 | v10, v64);
  sub_1001AD938(v64, type metadata accessor for OutboundContent);
  v65 = *(v63 + OBJC_IVAR____TtC15IMAP2Connection10Connection_connection);
  v66 = (v63 + *(v62 + 20) + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger);
  v67 = (*(v66 + 1) << 27) | (*v66 << 59) | 0x800000;
  v68 = v75;
  sub_1004A4914();
  sub_1001D75AC(v68);
  return (*(v76 + 8))(v68, v77);
}

uint64_t sub_1001ABF8C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1001A7D2C();
  }

  return result;
}

uint64_t sub_1001ABFE4(uint64_t a1, unint64_t a2)
{
  sub_100014CEC(a1, a2);
  v4 = sub_1001AC1B8(a1, a2)[2];
  v5 = sub_1004A58D4();

  return v5;
}

uint64_t sub_1001AC050@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1004A58D4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1001AC08C(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_1004A6A34();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_1004A67A4();
  *v1 = result;
  return result;
}

uint64_t sub_1001AC12C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1001AC1B8(uint64_t a1, unint64_t a2)
{
  v4 = sub_1004A4444();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
LABEL_12:
      sub_100014D40(a1, a2);
      return _swiftEmptyArrayStorage;
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      if (v11)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v10)
    {
      goto LABEL_10;
    }

    v11 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v14 = sub_10015BEAC(v11, 0);
      v15 = sub_1004A43B4();
      sub_100014D40(a1, a2);
      v16 = *(v5 + 8);
      v5 += 8;
      v16(v9, v4);
      result = v14;
      if (v15 == v11)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v17 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v11 = v17;
      if (!v17)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_1001AC334(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return sub_1004A58D4();
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    return sub_1004A58D4();
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = sub_1004A40D4();
  if (a1)
  {
    a1 = sub_1004A4104();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!sub_1004A40D4() || !__OFSUB__(v5, sub_1004A4104()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  sub_1004A40F4();
  return sub_1004A58D4();
}

unint64_t sub_1001AC4E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_1001AC628(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_1001EBC34(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_1001AC4E0(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_1001AC6E8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_1004A5154();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = result - v7;
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_1004A6A34();
    v15 = result - v7;
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_1004A6A34();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = result + v11;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;

    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_1001AC808(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1004A6A34();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    v12 = sub_1004A6A34();
  }

  else
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = v12 + v11;
  if (v13)
  {
    goto LABEL_18;
  }

  sub_1001AC08C(result);

  return sub_1001AC6E8(v6, v5, 1, v3);
}

uint64_t sub_1001AC8F4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001AC934(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001AC94C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConnectionState();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1001AC9B0()
{
  v1 = v0;
  v2 = sub_10000C9C0(&qword_1005D35E8, &unk_1004DD1D0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = (&v48[-1] - v4);
  v6 = type metadata accessor for ConnectionEvent(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (&v48[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = _s6LoggerVMa();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v48[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v48[-1] - v15;
  v17 = static MonotonicTime.now()();
  v18 = sub_1001AA9D8(v17);
  v19 = *&v18;
  if ((v20 & 1) == 0)
  {
    v31 = v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    sub_1001AD9FC(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v13, _s6LoggerVMa);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v32 = sub_1004A4A54();
    v33 = sub_1004A4A74();
    (*(*(v33 - 8) + 8))(v13, v33);
    v34 = sub_1004A6014();
    if (!os_log_type_enabled(v32, v34))
    {

      goto LABEL_11;
    }

    v35 = v19;
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v48[0] = v37;
    *v36 = 68158466;
    *(v36 + 4) = 2;
    *(v36 + 8) = 256;
    v38 = v31 + *(v10 + 20);
    *(v36 + 10) = *v38;

    *(v36 + 11) = 2082;
    v39 = ConnectionID.debugDescription.getter(*(v38 + 4));
    v41 = sub_10015BA6C(v39, v40, v48);

    *(v36 + 13) = v41;
    *(v36 + 21) = 2048;
    v42 = round(v35);
    if ((*&v42 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v42 > -9.22337204e18)
    {
      if (v42 < 9.22337204e18)
      {
        *(v36 + 23) = v42;
        _os_log_impl(&_mh_execute_header, v32, v34, "[%.*hhx-%{public}s] Stuck for %ld seconds trying in unauthenticated state. Closing connection.", v36, 0x1Fu);
        sub_1000197E0(v37);

LABEL_11:
        v43 = static MonotonicTime.now()();
        *v9 = 0;
        v9[1] = 0;
        v9[2] = 2;
        type metadata accessor for ConnectionEvent.FailureReason(0);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v44 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_recentErrors;
        swift_beginAccess();
        sub_1001AD9FC(v9, v5, type metadata accessor for ConnectionEvent);
        sub_1001A5C90(v43, v5);
        sub_100025F40(v5, &qword_1005D35E8, &unk_1004DD1D0);
        sub_1001AD938(v9, type metadata accessor for ConnectionEvent);
        swift_endAccess();
        v45 = swift_allocObject();
        *(v45 + 16) = *(v1 + v44);

        *(v45 + 24) = *ConnectionID.invalid.unsafeMutableAddressor();
        *(v45 + 32) = _swiftEmptySetSingleton;
        *(v45 + 40) = _swiftEmptySetSingleton;
        sub_10019FE78(v45 | 0x1000000000000000);

        v46 = *(*(v1 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_connection);
        sub_1004A4E64();
        return;
      }

LABEL_16:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_16;
  }

  if (v18)
  {
    v21 = v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    sub_1001AD9FC(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v16, _s6LoggerVMa);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v22 = sub_1004A4A54();
    v23 = sub_1004A4A74();
    (*(*(v23 - 8) + 8))(v16, v23);
    v24 = sub_1004A6034();
    if (os_log_type_enabled(v22, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v48[0] = v26;
      *v25 = 68158210;
      *(v25 + 4) = 2;
      *(v25 + 8) = 256;
      v27 = v21 + *(v10 + 20);
      *(v25 + 10) = *v27;

      *(v25 + 11) = 2082;
      v28 = ConnectionID.debugDescription.getter(*(v27 + 4));
      v30 = sub_10015BA6C(v28, v29, v48);

      *(v25 + 13) = v30;
      _os_log_impl(&_mh_execute_header, v22, v24, "[%.*hhx-%{public}s] Checking stuck: waiting", v25, 0x15u);
      sub_1000197E0(v26);
    }

    else
    {
    }
  }
}

uint64_t sub_1001ACFA4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_10019D668(a1);
}

unint64_t sub_1001AD108()
{
  result = qword_1005D32E8;
  if (!qword_1005D32E8)
  {
    sub_10000DEFC(&qword_1005D32E0, &qword_1004DD0C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D32E8);
  }

  return result;
}

unint64_t sub_1001AD16C()
{
  result = qword_1005D32F0;
  if (!qword_1005D32F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D32F0);
  }

  return result;
}

uint64_t sub_1001AD214@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  return sub_1001AD9FC(v3 + v4, a2, type metadata accessor for ConnectionState);
}

uint64_t sub_1001AD288@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_recentErrors;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1001AD304@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_pathAttributes;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t type metadata accessor for CommandConnection()
{
  result = qword_1005D3330;
  if (!qword_1005D3330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001AD3D4()
{
  result = _s6LoggerVMa();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for ConnectionState();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_1001AD534(uint64_t a1, unint64_t a2, char a3)
{
  sub_1001A1E9C(a1, a2, a3 & 1);

  CommandConnection.flush()();
}

uint64_t sub_1001AD560()
{
  sub_100173584(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_1001AD5A0()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001AD5E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001AD658()
{
  v1 = *(_s6LoggerVMa() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 17) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_1004A4A74();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_1001AD724(uint64_t a1)
{
  v3 = *(_s6LoggerVMa() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 17) & ~*(v3 + 80));

  sub_1001BE954(a1, v4, v5);
}

unint64_t sub_1001AD7AC(unint64_t result)
{
  if (result >> 62 == 1)
  {
  }

  return result;
}

unint64_t sub_1001AD7F8(unint64_t result)
{
  if (result >> 62 == 1)
  {
  }

  return result;
}

uint64_t sub_1001AD858(uint64_t a1)
{
  v1 = CommandConnection.send(_:)(a1);
  CommandConnection.flush()();
  return v1;
}

double sub_1001AD89C(uint64_t a1)
{
  *a1 = 3;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 176) = 7;
  return result;
}

uint64_t sub_1001AD8E0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001AD938(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001AD998(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001AD9FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1001ADA64(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_1000CB848(result);
  }

  return result;
}

unint64_t sub_1001ADA78(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {

    return sub_10010E780(a3, a4, a5);
  }

  return result;
}

uint64_t sub_1001ADAD0()
{
  v1 = v0[2];

  if (v0[6])
  {
    if ((~v0[4] & 0xF000000000000007) != 0)
    {
      sub_100011160(v0[4]);
      v2 = v0[6];
    }
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1001ADB8C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  v6 = v0[12];

  v7 = v0[14];

  v8 = v0[16];

  v9 = v0[18];

  v10 = v0[20];

  v11 = v0[22];

  v12 = v0[24];

  return _swift_deallocObject(v0, 200, 7);
}

uint64_t sub_1001ADC1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001ADC84(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D35F8, &qword_1004DD1E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001ADCF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D35F8, &qword_1004DD1E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001ADD98(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v267 = *(a1 + 32);
  v268 = v2;
  v269 = *(a1 + 64);
  v3 = *(a1 + 16);
  v265 = *a1;
  v266 = v3;
  if (!*(a2 + 16))
  {
    return 0;
  }

  v5 = *(a2 + 40);
  sub_1004A6E94();
  v7 = *a1;
  v6 = *(a1 + 8);
  v9 = *(a1 + 16);
  v8 = *(a1 + 24);
  v10 = *(a1 + 56);
  if ((v10 & 0x1000000000000000) != 0)
  {
    v11 = *(a1 + 48);
    v257 = *a1;
    v258 = v6;
    v259 = v9;
    v260 = v8;
    v261 = *(a1 + 32);
    v262 = v11;
    v263 = v10 & 0xEFFFFFFFFFFFFFFFLL;
    v264 = *(a1 + 64);
    sub_1004A6EB4(1uLL);
    sub_1001EEF30();
  }

  else
  {
    sub_1004A6EB4(0);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  v12 = sub_1004A6F14();
  v13 = a2;
  v14 = a2 + 56;
  v15 = -1 << *(a2 + 32);
  v16 = v12 & ~v15;
  if (((*(a2 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
  {
    return 0;
  }

  v17 = ~v15;
  v244 = ~v15;
  while (1)
  {
    v19 = (*(v13 + 48) + 80 * v16);
    v252 = *v19;
    v21 = v19[3];
    v20 = v19[4];
    v22 = v19[2];
    v253 = v19[1];
    v254 = v22;
    v255 = v21;
    v256 = v20;
    v23 = *(&v252 + 1);
    v24 = *(&v253 + 1);
    v25 = v253;
    v26 = *(&v21 + 1);
    if ((*(&v21 + 1) & 0x1000000000000000) == 0)
    {
      if ((*(a1 + 63) & 0x10) == 0)
      {
        v27 = *(a1 + 16);
        v28 = *(a1 + 24);
        if (v252 == *a1 || (v29 = sub_1004A6D34(), v17 = v244, v14 = a2 + 56, (v29 & 1) != 0))
        {
          if (v25 == v27 && v24 == v28)
          {
            return 1;
          }

LABEL_7:
          v18 = sub_1004A6D34();
          v17 = v244;
          v14 = a2 + 56;
          if (v18)
          {
            return 1;
          }

          goto LABEL_8;
        }
      }

      goto LABEL_8;
    }

    v30 = *(a1 + 56);
    if ((v30 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }

    v32 = *a1;
    v31 = *(a1 + 8);
    v33 = *(a1 + 16);
    v34 = *(a1 + 24);
    v35 = *(a1 + 72);
    v36 = (*(&v256 + 1) >> 59) & 6 | ((*(&v255 + 1) & 0x2000000000000000) != 0);
    if (v36 <= 2)
    {
      break;
    }

    if (v36 > 4)
    {
      v40 = (v30 >> 61) & 1;
      v41 = v35 >> 59;
      if (v36 == 5)
      {
        if ((v41 & 6 | v40) != 5)
        {
          goto LABEL_8;
        }
      }

      else if ((v41 & 6 | v40) != 6)
      {
        goto LABEL_8;
      }
    }

    else
    {
      if (v36 != 3)
      {
        if (((v35 >> 59) & 6 | ((v30 & 0x2000000000000000) != 0)) != 4)
        {
          goto LABEL_8;
        }

        v46 = *(&v252 + 1) >> 62;
        v47 = v31 >> 62;
        v242 = *(a1 + 24);
        if (*(&v252 + 1) >> 62 == 3)
        {
          v48 = 0;
          if (v252 != __PAIR128__(0xC000000000000000, 0))
          {
            goto LABEL_142;
          }

          if (v31 >> 62 != 3)
          {
            goto LABEL_142;
          }

          v48 = 0;
          if (v32 || v31 != 0xC000000000000000)
          {
            goto LABEL_142;
          }

          goto LABEL_157;
        }

        if (v46 > 1)
        {
          if (v46 == 2)
          {
            v58 = *(v252 + 16);
            v57 = *(v252 + 24);
            v54 = __OFSUB__(v57, v58);
            v48 = v57 - v58;
            if (v54)
            {
              goto LABEL_411;
            }
          }

          else
          {
            v48 = 0;
          }
        }

        else if (v46)
        {
          LODWORD(v48) = DWORD1(v252) - v252;
          if (__OFSUB__(DWORD1(v252), v252))
          {
            goto LABEL_413;
          }

          v48 = v48;
        }

        else
        {
          v48 = BYTE14(v252);
        }

LABEL_142:
        if (v47 > 1)
        {
          if (v47 != 2)
          {
            if (v48)
            {
              goto LABEL_8;
            }

            goto LABEL_157;
          }

          v91 = *(v32 + 16);
          v90 = *(v32 + 24);
          v54 = __OFSUB__(v90, v91);
          v89 = v90 - v91;
          if (v54)
          {
            goto LABEL_407;
          }
        }

        else if (v47)
        {
          LODWORD(v89) = HIDWORD(v32) - v32;
          if (__OFSUB__(HIDWORD(v32), v32))
          {
            goto LABEL_405;
          }

          v89 = v89;
        }

        else
        {
          v89 = BYTE6(v31);
        }

        if (v48 != v89)
        {
          goto LABEL_8;
        }

        if (v48 >= 1)
        {
          v229 = *(a1 + 16);
          if (v46 > 1)
          {
            if (v46 != 2)
            {
              *&v245[6] = 0;
              *v245 = 0;
              v149 = v31;
              v150 = v32;
              sub_100014CEC(v32, v31);
              sub_10019782C(&v252, &v246);
              sub_100014CEC(v150, v149);
              sub_100066884(v245, v150, v149, &v246);
              sub_100014D40(v150, v149);
              v94 = v150;
              v95 = v149;
              goto LABEL_248;
            }

            v112 = *(v252 + 16);
            v113 = *(v252 + 24);
          }

          else
          {
            if (!v46)
            {
              *v245 = v252;
              *&v245[8] = WORD4(v252);
              *&v245[10] = *(&v252 + 10);
              v92 = v31;
              v93 = v32;
              sub_100014CEC(v32, v31);
              sub_10019782C(&v252, &v246);
              sub_100014CEC(v93, v92);
              sub_100066884(v245, v93, v92, &v246);
              sub_100014D40(v93, v92);
              v94 = v93;
              v95 = v92;
LABEL_248:
              sub_100014D40(v94, v95);
              v13 = a2;
              v97 = v229;
              if ((v246 & 1) == 0)
              {
                goto LABEL_394;
              }

LABEL_158:
              v98 = v24 >> 62;
              v99 = v242 >> 62;
              if (v24 >> 62 == 3)
              {
                v100 = 0;
                v101 = v242;
                if (!v25 && v24 == 0xC000000000000000 && v242 >> 62 == 3)
                {
                  v100 = 0;
                  if (!v97 && v242 == 0xC000000000000000)
                  {
                    goto LABEL_402;
                  }
                }
              }

              else if (v98 == 2)
              {
                v135 = *(v25 + 16);
                v134 = *(v25 + 24);
                v54 = __OFSUB__(v134, v135);
                v100 = v134 - v135;
                if (v54)
                {
                  goto LABEL_427;
                }

                v101 = v242;
              }

              else
              {
                v101 = v242;
                if (v98 == 1)
                {
                  LODWORD(v100) = HIDWORD(v25) - v25;
                  if (__OFSUB__(HIDWORD(v25), v25))
                  {
                    goto LABEL_426;
                  }

                  v100 = v100;
                }

                else
                {
                  v100 = BYTE6(v24);
                }
              }

              if (v99 > 1)
              {
                if (v99 != 2)
                {
                  goto LABEL_393;
                }

                v138 = *(v97 + 16);
                v137 = *(v97 + 24);
                v54 = __OFSUB__(v137, v138);
                v136 = v137 - v138;
                if (v54)
                {
                  goto LABEL_418;
                }
              }

              else if (v99)
              {
                LODWORD(v136) = HIDWORD(v97) - v97;
                if (__OFSUB__(HIDWORD(v97), v97))
                {
                  goto LABEL_417;
                }

                v136 = v136;
              }

              else
              {
                v136 = BYTE6(v101);
              }

              if (v100 != v136)
              {
                goto LABEL_394;
              }

              if (v100 < 1)
              {
                goto LABEL_402;
              }

              v139 = v101;
              v140 = v97;
              sub_100014CEC(v97, v101);
              v141 = v25;
              v142 = v24;
              goto LABEL_233;
            }

            v112 = v252;
            v113 = v252 >> 32;
            if (v252 >> 32 < v252)
            {
              goto LABEL_431;
            }
          }

          v146 = *(a1 + 8);
          v147 = *a1;
          sub_100014CEC(v32, v31);
          sub_100014CEC(v147, v146);
          sub_10019782C(&v252, &v246);
          sub_100014CEC(v147, v146);
          v148 = sub_10003A0DC(v112, v113, v23 & 0x3FFFFFFFFFFFFFFFLL, v147, v146);
          sub_100014D40(v147, v146);
          sub_100014D40(v147, v146);
          sub_100014D40(v147, v146);
          v13 = a2;
          v97 = v229;
          if ((v148 & 1) == 0)
          {
            goto LABEL_394;
          }

          goto LABEL_158;
        }

LABEL_157:
        v249 = v255;
        v251 = v256;
        v247 = v253;
        v248 = v254;
        v246 = v252;
        v250 = *(&v255 + 1) & 0xEFFFFFFFFFFFFFFFLL;
        v96 = v33;
        sub_1001915E8(&v246, v245);
        v97 = v96;
        goto LABEL_158;
      }

      if (((v35 >> 59) & 6 | ((v30 & 0x2000000000000000) != 0)) != 3)
      {
        goto LABEL_8;
      }
    }

    if (v252 == __PAIR128__(v31, v32) || (v49 = *(a1 + 16), v50 = *a1, v51 = sub_1004A6D34(), v33 = v49, v17 = v244, v14 = a2 + 56, (v51 & 1) != 0))
    {
      if (v25 == v33 && v24 == v34)
      {
        return 1;
      }

      goto LABEL_7;
    }

LABEL_8:
    v16 = (v16 + 1) & v17;
    if (((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return 0;
    }
  }

  if (!v36)
  {
    if ((v35 >> 59) & 6 | ((v30 & 0x2000000000000000) != 0))
    {
      goto LABEL_8;
    }

    v42 = *(&v252 + 1) >> 62;
    v241 = *(a1 + 24);
    if (*(&v252 + 1) >> 62 == 3)
    {
      v43 = 0;
      if (v252 == __PAIR128__(0xC000000000000000, 0) && v31 >> 62 == 3)
      {
        v43 = 0;
        if (!v32 && v31 == 0xC000000000000000)
        {
          goto LABEL_195;
        }
      }
    }

    else if (v42 > 1)
    {
      if (v42 == 2)
      {
        v60 = *(v252 + 16);
        v59 = *(v252 + 24);
        v54 = __OFSUB__(v59, v60);
        v43 = v59 - v60;
        if (v54)
        {
          goto LABEL_422;
        }
      }

      else
      {
        v43 = 0;
      }
    }

    else if (v42)
    {
      LODWORD(v43) = DWORD1(v252) - v252;
      if (__OFSUB__(DWORD1(v252), v252))
      {
        goto LABEL_421;
      }

      v43 = v43;
    }

    else
    {
      v43 = BYTE14(v252);
    }

    v114 = v31 >> 62;
    if ((v31 >> 62) > 1)
    {
      if (v114 != 2)
      {
        if (v43)
        {
          goto LABEL_8;
        }

        goto LABEL_195;
      }

      v117 = *(v32 + 16);
      v116 = *(v32 + 24);
      v54 = __OFSUB__(v116, v117);
      v115 = v116 - v117;
      if (v54)
      {
        goto LABEL_409;
      }
    }

    else if (v114)
    {
      LODWORD(v115) = HIDWORD(v32) - v32;
      if (__OFSUB__(HIDWORD(v32), v32))
      {
        goto LABEL_410;
      }

      v115 = v115;
    }

    else
    {
      v115 = BYTE6(v31);
    }

    if (v43 != v115)
    {
      goto LABEL_8;
    }

    if (v43 >= 1)
    {
      v230 = *(a1 + 16);
      if (v42 <= 1)
      {
        if (!v42)
        {
          *v245 = v252;
          *&v245[8] = WORD4(v252);
          *&v245[10] = *(&v252 + 10);
          v118 = v31;
          v119 = v32;
          sub_10019782C(&v252, &v246);
          sub_100014CEC(v119, v118);
          sub_100066884(v245, v119, v118, &v246);
          v120 = v119;
          v121 = v118;
          goto LABEL_278;
        }

        v235 = *a1;
        v238 = *(a1 + 8);
        v161 = v252;
        if (v252 >> 32 < v252)
        {
          goto LABEL_436;
        }

        sub_10019782C(&v252, &v246);
        sub_100014CEC(v235, v238);
        v162 = sub_1004A40D4();
        if (v162)
        {
          v163 = sub_1004A4104();
          if (__OFSUB__(v161, v163))
          {
            goto LABEL_440;
          }

          v162 += v161 - v163;
        }

        sub_1004A40F4();
        v164 = v162;
        v166 = v235;
        v165 = v238;
LABEL_277:
        sub_100066884(v164, v166, v165, &v246);
        v120 = v166;
        v121 = v165;
LABEL_278:
        sub_100014D40(v120, v121);
        v13 = a2;
        v123 = v230;
        if ((v246 & 1) == 0)
        {
          goto LABEL_394;
        }

        goto LABEL_196;
      }

      if (v42 != 2)
      {
        *&v245[6] = 0;
        *v245 = 0;
        v165 = v31;
        v166 = v32;
        sub_10019782C(&v252, &v246);
        sub_100014CEC(v166, v165);
        v164 = v245;
        goto LABEL_277;
      }

      v130 = *(v252 + 16);
      v131 = *(v252 + 24);
      v132 = *(a1 + 8);
      v133 = *a1;
      sub_100014CEC(v32, v31);
      sub_10019782C(&v252, &v246);
      sub_100014CEC(v133, v132);
      LOBYTE(v130) = sub_10003A0DC(v130, v131, v23 & 0x3FFFFFFFFFFFFFFFLL, v133, v132);
      sub_100014D40(v133, v132);
      sub_100014D40(v133, v132);
      v13 = a2;
      v123 = v230;
      if ((v130 & 1) == 0)
      {
        goto LABEL_394;
      }

LABEL_196:
      v124 = v24 >> 62;
      if (v24 >> 62 == 3)
      {
        v125 = 0;
        if (!v25 && v24 == 0xC000000000000000 && v241 >> 62 == 3)
        {
          v125 = 0;
          if (!v123 && v241 == 0xC000000000000000)
          {
LABEL_402:
            sub_100193BF0(&v252);
            return 1;
          }
        }
      }

      else if (v124 > 1)
      {
        if (v124 == 2)
        {
          v129 = *(v25 + 16);
          v128 = *(v25 + 24);
          v54 = __OFSUB__(v128, v129);
          v125 = v128 - v129;
          if (v54)
          {
            goto LABEL_434;
          }
        }

        else
        {
          v125 = 0;
        }
      }

      else if (v124)
      {
        LODWORD(v125) = HIDWORD(v25) - v25;
        if (__OFSUB__(HIDWORD(v25), v25))
        {
          goto LABEL_435;
        }

        v125 = v125;
      }

      else
      {
        v125 = BYTE6(v24);
      }

      v151 = v241 >> 62;
      if ((v241 >> 62) > 1)
      {
        if (v151 != 2)
        {
          if (!v125)
          {
            goto LABEL_402;
          }

LABEL_394:
          sub_100193BF0(&v252);
          v17 = v244;
          v14 = a2 + 56;
          goto LABEL_8;
        }

        v154 = *(v123 + 16);
        v153 = *(v123 + 24);
        v54 = __OFSUB__(v153, v154);
        v152 = v153 - v154;
        if (v54)
        {
          goto LABEL_425;
        }
      }

      else if (v151)
      {
        LODWORD(v152) = HIDWORD(v123) - v123;
        if (__OFSUB__(HIDWORD(v123), v123))
        {
          goto LABEL_424;
        }

        v152 = v152;
      }

      else
      {
        v152 = BYTE6(v241);
      }

      if (v125 != v152)
      {
        goto LABEL_394;
      }

      if (v125 < 1)
      {
        goto LABEL_402;
      }

      if (v124 > 1)
      {
        if (v124 == 2)
        {
          v159 = *(v25 + 16);
          v160 = *(v25 + 24);
          goto LABEL_281;
        }

        *(&v246 + 6) = 0;
        *&v246 = 0;
        v156 = v241;
        v155 = v123;
        sub_100014CEC(v123, v241);
        sub_100014CEC(v155, v241);
        v157 = v155;
        v158 = v241;
      }

      else
      {
        if (v124)
        {
          v159 = v25;
          v160 = v25 >> 32;
          if (v25 >> 32 < v25)
          {
            goto LABEL_439;
          }

LABEL_281:
          v167 = v123;
          sub_100014CEC(v123, v241);
          sub_100014CEC(v167, v241);
          sub_100014CEC(v167, v241);
          v126 = sub_10003A0DC(v159, v160, v24 & 0x3FFFFFFFFFFFFFFFLL, v167, v241);
          sub_100014D40(v167, v241);
          sub_100193BF0(&v252);
          sub_100014D40(v167, v241);
          sub_100014D40(v167, v241);
LABEL_282:
          v13 = a2;
LABEL_283:
          v17 = v244;
          v14 = a2 + 56;
          if (v126)
          {
            return 1;
          }

          goto LABEL_8;
        }

        *&v246 = v25;
        WORD4(v246) = v24;
        BYTE10(v246) = BYTE2(v24);
        BYTE11(v246) = BYTE3(v24);
        BYTE12(v246) = BYTE4(v24);
        BYTE13(v246) = BYTE5(v24);
        v155 = v123;
        sub_100014CEC(v123, v241);
        sub_100014CEC(v155, v241);
        v156 = v241;
        v157 = v155;
        v158 = v241;
      }

      sub_100066884(&v246, v157, v158, v245);
      sub_100193BF0(&v252);
      sub_100014D40(v155, v156);
      sub_100014D40(v155, v156);
      v127 = v245[0];
LABEL_287:
      v13 = a2;
      v17 = v244;
      v14 = a2 + 56;
      if (v127)
      {
        return 1;
      }

      goto LABEL_8;
    }

LABEL_195:
    v249 = v255;
    v251 = v256;
    v247 = v253;
    v248 = v254;
    v246 = v252;
    v250 = *(&v255 + 1) & 0xEFFFFFFFFFFFFFFFLL;
    v122 = v33;
    sub_1001915E8(&v246, v245);
    v123 = v122;
    goto LABEL_196;
  }

  if (v36 != 1)
  {
    if (((v35 >> 59) & 6 | ((v30 & 0x2000000000000000) != 0)) != 2)
    {
      goto LABEL_8;
    }

    v44 = *(&v252 + 1) >> 62;
    if (*(&v252 + 1) >> 62 == 3)
    {
      v45 = 0;
      if (v252 == __PAIR128__(0xC000000000000000, 0) && v31 >> 62 == 3)
      {
        v45 = 0;
        if (!v32 && v31 == 0xC000000000000000)
        {
          return 1;
        }
      }
    }

    else if (v44 > 1)
    {
      if (v44 == 2)
      {
        v56 = *(v252 + 16);
        v55 = *(v252 + 24);
        v54 = __OFSUB__(v55, v56);
        v45 = v55 - v56;
        if (v54)
        {
          goto LABEL_412;
        }
      }

      else
      {
        v45 = 0;
      }
    }

    else if (v44)
    {
      LODWORD(v45) = DWORD1(v252) - v252;
      if (__OFSUB__(DWORD1(v252), v252))
      {
        goto LABEL_414;
      }

      v45 = v45;
    }

    else
    {
      v45 = BYTE14(v252);
    }

    v77 = v31 >> 62;
    if ((v31 >> 62) > 1)
    {
      if (v77 != 2)
      {
        if (!v45)
        {
          return 1;
        }

        goto LABEL_8;
      }

      v80 = *(v32 + 16);
      v79 = *(v32 + 24);
      v54 = __OFSUB__(v79, v80);
      v78 = v79 - v80;
      if (v54)
      {
        goto LABEL_404;
      }
    }

    else if (v77)
    {
      LODWORD(v78) = HIDWORD(v32) - v32;
      if (__OFSUB__(HIDWORD(v32), v32))
      {
        __break(1u);
LABEL_404:
        __break(1u);
LABEL_405:
        __break(1u);
LABEL_406:
        __break(1u);
LABEL_407:
        __break(1u);
LABEL_408:
        __break(1u);
LABEL_409:
        __break(1u);
LABEL_410:
        __break(1u);
LABEL_411:
        __break(1u);
LABEL_412:
        __break(1u);
LABEL_413:
        __break(1u);
LABEL_414:
        __break(1u);
LABEL_415:
        __break(1u);
LABEL_416:
        __break(1u);
LABEL_417:
        __break(1u);
LABEL_418:
        __break(1u);
LABEL_419:
        __break(1u);
LABEL_420:
        __break(1u);
LABEL_421:
        __break(1u);
LABEL_422:
        __break(1u);
LABEL_423:
        __break(1u);
LABEL_424:
        __break(1u);
LABEL_425:
        __break(1u);
LABEL_426:
        __break(1u);
LABEL_427:
        __break(1u);
LABEL_428:
        __break(1u);
LABEL_429:
        __break(1u);
LABEL_430:
        __break(1u);
LABEL_431:
        __break(1u);
LABEL_432:
        __break(1u);
LABEL_433:
        __break(1u);
LABEL_434:
        __break(1u);
LABEL_435:
        __break(1u);
LABEL_436:
        __break(1u);
LABEL_437:
        __break(1u);
LABEL_438:
        __break(1u);
LABEL_439:
        __break(1u);
LABEL_440:
        __break(1u);
LABEL_441:
        __break(1u);
LABEL_442:
        __break(1u);
LABEL_443:
        __break(1u);
LABEL_444:
        __break(1u);
LABEL_445:
        __break(1u);
      }

      v78 = v78;
    }

    else
    {
      v78 = BYTE6(v31);
    }

    if (v45 != v78)
    {
      goto LABEL_8;
    }

    if (v45 < 1)
    {
      return 1;
    }

    if (v44 > 1)
    {
      v85 = *a1;
      v86 = *(a1 + 8);
      if (v44 == 2)
      {
        v87 = *(v252 + 16);
        v88 = *(v252 + 24);
LABEL_208:
        sub_10019782C(a1, &v246);
        sub_10019782C(a1, &v246);
        sub_10019782C(&v252, &v246);
        sub_10019782C(a1, &v246);
        v126 = sub_10003A0DC(v87, v88, v23 & 0x3FFFFFFFFFFFFFFFLL, v85, v86);
        sub_100193BF0(a1);
        sub_100193BF0(&v252);
        sub_100193BF0(a1);
        sub_100193BF0(a1);
        goto LABEL_282;
      }

      *&v245[6] = 0;
      *v245 = 0;
      sub_10019782C(a1, &v246);
      sub_10019782C(&v252, &v246);
      sub_10019782C(a1, &v246);
      v83 = v85;
      v84 = v86;
    }

    else
    {
      if (v44)
      {
        v87 = v252;
        v88 = v252 >> 32;
        if (v252 >> 32 < v252)
        {
          goto LABEL_423;
        }

        v85 = *a1;
        v86 = *(a1 + 8);
        goto LABEL_208;
      }

      *v245 = v252;
      *&v245[8] = DWORD2(v252);
      *&v245[12] = WORD6(v252);
      v81 = v31;
      v82 = v32;
      sub_10019782C(a1, &v246);
      sub_10019782C(&v252, &v246);
      sub_10019782C(a1, &v246);
      v83 = v82;
      v84 = v81;
    }

    sub_100066884(v245, v83, v84, &v246);
    sub_100193BF0(&v252);
    sub_100193BF0(a1);
    sub_100193BF0(a1);
    v127 = v246;
    goto LABEL_287;
  }

  if (((v35 >> 59) & 6 | ((v30 & 0x2000000000000000) != 0)) != 1)
  {
    goto LABEL_8;
  }

  v233 = *(&v254 + 1);
  v234 = v254;
  v226 = v256;
  v227 = v255;
  v231 = *(a1 + 32);
  v232 = *(a1 + 40);
  v37 = *(a1 + 48);
  v38 = *(&v252 + 1) >> 62;
  v225 = *(a1 + 64);
  v240 = *(a1 + 24);
  if (*(&v252 + 1) >> 62 == 3)
  {
    v39 = 0;
    if (v252 != __PAIR128__(0xC000000000000000, 0))
    {
      goto LABEL_94;
    }

    if (v31 >> 62 != 3)
    {
      goto LABEL_94;
    }

    v39 = 0;
    if (v32 || v31 != 0xC000000000000000)
    {
      goto LABEL_94;
    }

    goto LABEL_109;
  }

  if (v38 > 1)
  {
    if (v38 == 2)
    {
      v53 = *(v252 + 16);
      v52 = *(v252 + 24);
      v54 = __OFSUB__(v52, v53);
      v39 = v52 - v53;
      if (v54)
      {
        goto LABEL_415;
      }
    }

    else
    {
      v39 = 0;
    }
  }

  else if (v38)
  {
    LODWORD(v39) = DWORD1(v252) - v252;
    if (__OFSUB__(DWORD1(v252), v252))
    {
      goto LABEL_416;
    }

    v39 = v39;
  }

  else
  {
    v39 = BYTE14(v252);
  }

LABEL_94:
  v61 = v31 >> 62;
  if ((v31 >> 62) > 1)
  {
    if (v61 != 2)
    {
      if (v39)
      {
        goto LABEL_8;
      }

      goto LABEL_109;
    }

    v64 = *(v32 + 16);
    v63 = *(v32 + 24);
    v54 = __OFSUB__(v63, v64);
    v62 = v63 - v64;
    if (v54)
    {
      goto LABEL_408;
    }
  }

  else if (v61)
  {
    LODWORD(v62) = HIDWORD(v32) - v32;
    if (__OFSUB__(HIDWORD(v32), v32))
    {
      goto LABEL_406;
    }

    v62 = v62;
  }

  else
  {
    v62 = BYTE6(v31);
  }

  if (v39 != v62)
  {
    goto LABEL_8;
  }

  if (v39 < 1)
  {
LABEL_109:
    v221 = *(a1 + 48);
    v249 = v255;
    v251 = v256;
    v247 = v253;
    v248 = v254;
    v246 = v252;
    v250 = *(&v255 + 1) & 0xEFFFFFFFFFFFFFFFLL;
    v69 = v33;
    v70 = v35;
    v237 = *(&v256 + 1);
    sub_1001915E8(&v246, v245);
    v71 = v237;
    v72 = v70;
    v73 = v69;
    goto LABEL_110;
  }

  v228 = *(a1 + 16);
  v221 = *(a1 + 48);
  v222 = *(a1 + 72);
  v236 = *(&v256 + 1);
  if (v38 > 1)
  {
    if (v38 != 2)
    {
      *&v245[6] = 0;
      *v245 = 0;
      v144 = v31;
      v145 = v32;
      sub_100014CEC(v32, v31);
      sub_10019782C(&v252, &v246);
      sub_100014CEC(v145, v144);
      sub_100066884(v245, v145, v144, &v246);
      sub_100014D40(v145, v144);
      v67 = v145;
      v68 = v144;
      goto LABEL_242;
    }

    v216 = *(v252 + 24);
    v218 = *(v252 + 16);
    v104 = *(a1 + 8);
    v105 = *a1;
    sub_100014CEC(v32, v31);
    sub_100014CEC(v105, v104);
    sub_10019782C(&v252, &v246);
    sub_100014CEC(v105, v104);
    v106 = v23 & 0x3FFFFFFFFFFFFFFFLL;
    v108 = v216;
    v107 = v218;
    v109 = v105;
    v110 = v104;
    v111 = v104;
    goto LABEL_239;
  }

  if (v38)
  {
    v217 = v252;
    v219 = v252 >> 32;
    if (v252 >> 32 < v252)
    {
      goto LABEL_430;
    }

    v143 = *(a1 + 8);
    v105 = *a1;
    sub_100014CEC(v32, v31);
    sub_100014CEC(v105, v143);
    sub_10019782C(&v252, &v246);
    sub_100014CEC(v105, v143);
    v106 = v23 & 0x3FFFFFFFFFFFFFFFLL;
    v107 = v217;
    v108 = v219;
    v109 = v105;
    v111 = v143;
    v110 = v143;
LABEL_239:
    v220 = sub_10003A0DC(v107, v108, v106, v109, v110);
    sub_100014D40(v105, v111);
    sub_100014D40(v105, v111);
    sub_100014D40(v105, v111);
    v13 = a2;
    v73 = v228;
    v72 = v222;
    v71 = v236;
    if ((v220 & 1) == 0)
    {
      goto LABEL_394;
    }

    goto LABEL_110;
  }

  *v245 = v252;
  *&v245[8] = WORD4(v252);
  *&v245[10] = *(&v252 + 10);
  v65 = v31;
  v66 = v32;
  sub_100014CEC(v32, v31);
  sub_10019782C(&v252, &v246);
  sub_100014CEC(v66, v65);
  sub_100066884(v245, v66, v65, &v246);
  sub_100014D40(v66, v65);
  v67 = v66;
  v68 = v65;
LABEL_242:
  sub_100014D40(v67, v68);
  v13 = a2;
  v73 = v228;
  v72 = v222;
  v71 = v236;
  if ((v246 & 1) == 0)
  {
    goto LABEL_394;
  }

LABEL_110:
  v74 = v24 >> 62;
  if (v24 >> 62 != 3)
  {
    if (v74 > 1)
    {
      v76 = v240;
      if (v74 == 2)
      {
        v103 = *(v25 + 16);
        v102 = *(v25 + 24);
        v54 = __OFSUB__(v102, v103);
        v75 = v102 - v103;
        if (v54)
        {
          goto LABEL_428;
        }
      }

      else
      {
        v75 = 0;
      }
    }

    else
    {
      v76 = v240;
      if (v74)
      {
        LODWORD(v75) = HIDWORD(v25) - v25;
        if (__OFSUB__(HIDWORD(v25), v25))
        {
          goto LABEL_429;
        }

        v75 = v75;
      }

      else
      {
        v75 = BYTE6(v24);
      }
    }

    goto LABEL_290;
  }

  v75 = 0;
  if (v25)
  {
    v76 = v240;
    goto LABEL_290;
  }

  v76 = v240;
  if (v24 == 0xC000000000000000 && v240 >> 62 == 3)
  {
    v75 = 0;
    if (!v73 && v240 == 0xC000000000000000)
    {
      goto LABEL_313;
    }
  }

LABEL_290:
  v168 = v76 >> 62;
  if ((v76 >> 62) > 1)
  {
    if (v168 == 2)
    {
      v171 = *(v73 + 16);
      v170 = *(v73 + 24);
      v54 = __OFSUB__(v170, v171);
      v169 = v170 - v171;
      if (v54)
      {
        goto LABEL_420;
      }

      goto LABEL_299;
    }

    if (v75)
    {
      goto LABEL_394;
    }

    goto LABEL_313;
  }

  if (v168)
  {
    LODWORD(v169) = HIDWORD(v73) - v73;
    if (__OFSUB__(HIDWORD(v73), v73))
    {
      goto LABEL_419;
    }

    v169 = v169;
  }

  else
  {
    v169 = BYTE6(v76);
  }

LABEL_299:
  if (v75 != v169)
  {
    goto LABEL_394;
  }

  if (v75 < 1)
  {
    goto LABEL_313;
  }

  v223 = v72;
  v239 = v71;
  if (v74 > 1)
  {
    if (v74 != 2)
    {
      *(&v246 + 6) = 0;
      *&v246 = 0;
      v180 = v73;
      sub_100014CEC(v73, v76);
      sub_100014CEC(v180, v76);
      sub_100066884(&v246, v180, v76, v245);
      sub_100014D40(v180, v76);
      v174 = v180;
      v175 = v76;
      goto LABEL_312;
    }

    v172 = v76;
    v176 = *(v25 + 16);
    v177 = *(v25 + 24);
    goto LABEL_309;
  }

  v172 = v76;
  if (v74)
  {
    v176 = v25;
    v177 = v25 >> 32;
    if (v25 >> 32 < v25)
    {
      goto LABEL_441;
    }

LABEL_309:
    v178 = v73;
    sub_100014CEC(v73, v172);
    sub_100014CEC(v178, v172);
    sub_100014CEC(v178, v172);
    v179 = sub_10003A0DC(v176, v177, v24 & 0x3FFFFFFFFFFFFFFFLL, v178, v172);
    sub_100014D40(v178, v172);
    sub_100014D40(v178, v172);
    sub_100014D40(v178, v172);
    v13 = a2;
    v72 = v223;
    v71 = v239;
    if ((v179 & 1) == 0)
    {
      goto LABEL_394;
    }

    goto LABEL_313;
  }

  *&v246 = v25;
  WORD4(v246) = v24;
  BYTE10(v246) = BYTE2(v24);
  BYTE11(v246) = BYTE3(v24);
  BYTE12(v246) = BYTE4(v24);
  BYTE13(v246) = BYTE5(v24);
  v173 = v73;
  sub_100014CEC(v73, v76);
  sub_100014CEC(v173, v76);
  sub_100066884(&v246, v173, v76, v245);
  sub_100014D40(v173, v76);
  v174 = v173;
  v175 = v76;
LABEL_312:
  sub_100014D40(v174, v175);
  v13 = a2;
  v72 = v223;
  v71 = v239;
  if ((v245[0] & 1) == 0)
  {
    goto LABEL_394;
  }

LABEL_313:
  v181 = v233 >> 62;
  v182 = v232 >> 62;
  if (v233 >> 62 == 3)
  {
    v183 = 0;
    v184 = v234;
    if (v234)
    {
      goto LABEL_328;
    }

    if (v233 != 0xC000000000000000)
    {
      goto LABEL_328;
    }

    if (v232 >> 62 != 3)
    {
      goto LABEL_328;
    }

    v183 = 0;
    if (v231 || v232 != 0xC000000000000000)
    {
      goto LABEL_328;
    }
  }

  else
  {
    v184 = v234;
    if (v181 == 2)
    {
      v186 = *(v234 + 16);
      v185 = *(v234 + 24);
      v54 = __OFSUB__(v185, v186);
      v183 = v185 - v186;
      if (v54)
      {
        goto LABEL_438;
      }
    }

    else if (v181 == 1)
    {
      LODWORD(v183) = HIDWORD(v234) - v234;
      if (__OFSUB__(HIDWORD(v234), v234))
      {
        goto LABEL_437;
      }

      v183 = v183;
    }

    else
    {
      v183 = BYTE6(v233);
    }

LABEL_328:
    if (v182 > 1)
    {
      if (v182 != 2)
      {
        if (v183)
        {
          goto LABEL_394;
        }

        goto LABEL_342;
      }

      v189 = *(v231 + 16);
      v188 = *(v231 + 24);
      v54 = __OFSUB__(v188, v189);
      v187 = v188 - v189;
      if (v54)
      {
        goto LABEL_432;
      }
    }

    else if (v182)
    {
      LODWORD(v187) = HIDWORD(v231) - v231;
      if (__OFSUB__(HIDWORD(v231), v231))
      {
        goto LABEL_433;
      }

      v187 = v187;
    }

    else
    {
      v187 = BYTE6(v232);
    }

    if (v183 != v187)
    {
      goto LABEL_394;
    }

    if (v183 >= 1)
    {
      v224 = v72;
      v190 = v71;
      sub_100014CEC(v231, v232);
      v191 = sub_100039F4C(v184, v233, v231, v232);
      v71 = v190;
      v72 = v224;
      v13 = a2;
      if ((v191 & 1) == 0)
      {
        goto LABEL_394;
      }
    }
  }

LABEL_342:
  v192 = v26 & 0xCFFFFFFFFFFFFFFFLL;
  v193 = v30 & 0xCFFFFFFFFFFFFFFFLL;
  v194 = v26 >> 62;
  v195 = v30 >> 62;
  if (v26 >> 62 == 3)
  {
    v196 = 0;
    v197 = v227;
    if (v227)
    {
      goto LABEL_357;
    }

    if (v192 != 0xC000000000000000)
    {
      goto LABEL_357;
    }

    if (v30 >> 62 != 3)
    {
      goto LABEL_357;
    }

    v196 = 0;
    if (v221 || v193 != 0xC000000000000000)
    {
      goto LABEL_357;
    }
  }

  else
  {
    v197 = v227;
    if (v194 == 2)
    {
      v199 = *(v227 + 16);
      v198 = *(v227 + 24);
      v54 = __OFSUB__(v198, v199);
      v196 = v198 - v199;
      if (v54)
      {
        goto LABEL_445;
      }
    }

    else if (v194 == 1)
    {
      LODWORD(v196) = HIDWORD(v227) - v227;
      if (__OFSUB__(HIDWORD(v227), v227))
      {
        goto LABEL_444;
      }

      v196 = v196;
    }

    else
    {
      v196 = BYTE6(v26);
    }

LABEL_357:
    if (v195 > 1)
    {
      if (v195 != 2)
      {
        if (v196)
        {
          goto LABEL_394;
        }

        goto LABEL_371;
      }

      v202 = *(v221 + 16);
      v201 = *(v221 + 24);
      v54 = __OFSUB__(v201, v202);
      v200 = v201 - v202;
      if (v54)
      {
        goto LABEL_442;
      }
    }

    else if (v195)
    {
      LODWORD(v200) = HIDWORD(v221) - v221;
      if (__OFSUB__(HIDWORD(v221), v221))
      {
        goto LABEL_443;
      }

      v200 = v200;
    }

    else
    {
      v200 = BYTE6(v30);
    }

    if (v196 != v200)
    {
      goto LABEL_394;
    }

    if (v196 >= 1)
    {
      v203 = v30 & 0xCFFFFFFFFFFFFFFFLL;
      v204 = v72;
      v205 = v71;
      sub_100014CEC(v221, v203);
      v206 = sub_100039F4C(v197, v192, v221, v193);
      v71 = v205;
      v72 = v204;
      v13 = a2;
      if ((v206 & 1) == 0)
      {
        goto LABEL_394;
      }
    }
  }

LABEL_371:
  v207 = v71 & 0xCFFFFFFFFFFFFFFFLL;
  v139 = v72 & 0xCFFFFFFFFFFFFFFFLL;
  v208 = v71 >> 62;
  v209 = v72 >> 62;
  if (v71 >> 62 == 3)
  {
    v100 = 0;
    if (!v226 && v207 == 0xC000000000000000 && v72 >> 62 == 3)
    {
      v100 = 0;
      if (!v225 && v139 == 0xC000000000000000)
      {
        goto LABEL_402;
      }
    }
  }

  else if (v208 == 2)
  {
    v211 = *(v226 + 16);
    v210 = *(v226 + 24);
    v54 = __OFSUB__(v210, v211);
    v100 = v210 - v211;
    if (v54)
    {
      goto LABEL_448;
    }
  }

  else if (v208 == 1)
  {
    LODWORD(v100) = HIDWORD(v226) - v226;
    if (__OFSUB__(HIDWORD(v226), v226))
    {
      goto LABEL_447;
    }

    v100 = v100;
  }

  else
  {
    v100 = BYTE6(v71);
  }

  if (v209 <= 1)
  {
    if (v209)
    {
      LODWORD(v212) = HIDWORD(v225) - v225;
      if (__OFSUB__(HIDWORD(v225), v225))
      {
        goto LABEL_446;
      }

      v212 = v212;
    }

    else
    {
      v212 = BYTE6(v72);
    }

    goto LABEL_397;
  }

  if (v209 != 2)
  {
LABEL_393:
    if (!v100)
    {
      goto LABEL_402;
    }

    goto LABEL_394;
  }

  v214 = *(v225 + 16);
  v213 = *(v225 + 24);
  v54 = __OFSUB__(v213, v214);
  v212 = v213 - v214;
  if (!v54)
  {
LABEL_397:
    if (v100 != v212)
    {
      goto LABEL_394;
    }

    if (v100 < 1)
    {
      goto LABEL_402;
    }

    v140 = v225;
    sub_100014CEC(v225, v72 & 0xCFFFFFFFFFFFFFFFLL);
    v141 = v226;
    v142 = v207;
LABEL_233:
    v126 = sub_100039F4C(v141, v142, v140, v139);
    v13 = a2;
    sub_100193BF0(&v252);
    goto LABEL_283;
  }

  __break(1u);
LABEL_446:
  __break(1u);
LABEL_447:
  __break(1u);
LABEL_448:
  __break(1u);
  sub_100193BF0(a1);
  sub_100193BF0(a1);
  v249 = v268;
  v251 = v269;
  v247 = v266;
  v248 = v267;
  v246 = v265;
  v250 = *(&v268 + 1) & 0xEFFFFFFFFFFFFFFFLL;
  sub_1001B4100(&v246);

  __break(1u);
  return result;
}