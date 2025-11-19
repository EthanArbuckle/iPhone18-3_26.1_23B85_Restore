Swift::Int sub_10025FF30()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 12);
  Hasher.init(_seed:)();
  sub_10025FD44(v5, v1, v2 | (v3 << 32));
  return Hasher._finalize()();
}

Swift::Int sub_10025FFA0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 12);
  Hasher.init(_seed:)();
  sub_10025FD44(v5, v1, v2 | (v3 << 32));
  return Hasher._finalize()();
}

uint64_t sub_100260034()
{
  if (*v0)
  {
    return 0x6F65646976;
  }

  else
  {
    return 0x6F69647561;
  }
}

void sub_1002602C4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (a4 == 2)
  {
    v5 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v5 = a4 & 1;
  }

  Hasher._combine(_:)(v5);
  if ((a4 & 0xFF00) == 0x200)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v6 = (a4 >> 8) & 1;
  }

  Hasher._combine(_:)(v6);
  if ((a4 & 0xFF0000) == 0x20000)
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v7 = HIWORD(a4) & 1;
  }

  Hasher._combine(_:)(v7);
  if (HIBYTE(a4) == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(HIBYTE(a4) & 1);
  }
}

Swift::Int sub_1002603B4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  sub_1002602C4(v5, v1, v2, v3);
  return Hasher._finalize()();
}

Swift::Int sub_10026041C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  sub_1002602C4(v5, v1, v2, v3);
  return Hasher._finalize()();
}

uint64_t sub_10026049C()
{
  if (v0[1] || v0[3] || v0[5] || v0[8])
  {
    return 0;
  }

  v2 = v0 + *(type metadata accessor for HostedRoutingSession.NowPlayingInfo(0) + 40);
  return RoutingSession.NowPlayingInfo.TrackInfo.isEmpty.getter() & 1;
}

void sub_1002608A8(uint64_t a1)
{
  v2 = v1;
  if (v1[1])
  {
    v4 = *v1;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v1[3])
    {
      goto LABEL_3;
    }

LABEL_6:
    Hasher._combine(_:)(0);
    if (v1[5])
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  Hasher._combine(_:)(0);
  if (!v1[3])
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = v1[2];
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (v1[5])
  {
LABEL_4:
    v6 = v1[4];
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    goto LABEL_8;
  }

LABEL_7:
  Hasher._combine(_:)(0);
LABEL_8:
  sub_10025FD44(a1, v1[6], *(v1 + 14) | (*(v1 + 60) << 32));
  if (v1[8])
  {
    v10 = v1[8];
    Hasher._combine(_:)(1u);
    type metadata accessor for ArtworkToken();
    sub_100017F84(&qword_100523B98, &type metadata accessor for ArtworkToken);
    dispatch thunk of Hashable.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v7 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  v8 = v7[9];
  type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo();
  sub_100017F84(&qword_100523BA0, &type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo);
  dispatch thunk of Hashable.hash(into:)();
  v9 = v7[10];
  type metadata accessor for RoutingSession.NowPlayingInfo.TrackInfo();
  sub_100017F84(&qword_100523BA8, &type metadata accessor for RoutingSession.NowPlayingInfo.TrackInfo);
  dispatch thunk of Hashable.hash(into:)();
  sub_1002602C4(a1, *(v2 + v7[11]), *(v2 + v7[11] + 8), *(v2 + v7[11] + 16));
}

uint64_t sub_100260B3C()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x6C65646F6DLL;
  if (v1 != 5)
  {
    v3 = 0x696669746E656469;
  }

  v4 = 0xD000000000000013;
  if (v1 != 3)
  {
    v4 = 0x6E6F737265507369;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x614E6C6F626D7973;
  if (v1 != 1)
  {
    v5 = 0x4E746375646F7270;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100260C30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10026A2C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100260C64(uint64_t a1)
{
  v2 = sub_10026A26C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100260CA0(uint64_t a1)
{
  v2 = sub_10026A26C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100260CDC(void *a1)
{
  v3 = v1;
  v5 = sub_1001BC5A8(&qword_100523BB0, &qword_100451A78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24[-v8];
  v10 = a1[4];
  sub_1000326D8(a1, a1[3]);
  sub_10026A26C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v24[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v24[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v15 = v3[4];
  v16 = v3[5];
  v24[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v17 = *(v3 + 48);
  v24[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v18 = *(v3 + 49);
  v24[11] = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  v19 = v3[7];
  v20 = v3[8];
  v24[10] = 5;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v22 = v3[9];
  v23 = v3[10];
  v24[9] = 6;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

void sub_100260EFC()
{
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  v3 = v0[2];
  v4 = v0[3];
  String.hash(into:)();
  if (v0[5])
  {
    v5 = v0[4];
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(v0[6] & 1);
  Hasher._combine(_:)(*(v0 + 49) & 1);
  if (!v0[8])
  {
    Hasher._combine(_:)(0);
    if (v0[10])
    {
      goto LABEL_6;
    }

LABEL_10:
    Hasher._combine(_:)(0);
    return;
  }

  v6 = v0[7];
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!v0[10])
  {
    goto LABEL_10;
  }

LABEL_6:
  v7 = v0[9];
  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

Swift::Int sub_100261000()
{
  Hasher.init(_seed:)();
  sub_100260EFC();
  return Hasher._finalize()();
}

Swift::Int sub_100261044()
{
  Hasher.init(_seed:)();
  sub_100260EFC();
  return Hasher._finalize()();
}

double sub_100261080@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10026A524(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

BOOL sub_1002610F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_100268D78(v7, v9);
}

uint64_t sub_100261164()
{
  v1 = *(v0 + 24);
  v4 = *(v0 + 16);

  sub_100032CAC(v2, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem, type metadata accessor for HostedRoutingItem);
  return v4;
}

uint64_t sub_1002611E0(uint64_t (*a1)(void))
{
  v3 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = a1(0);
  sub_10001D9AC(v1 + *(v15 + 28), v14, &qword_100523640, qword_100451520);
  v16 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  if ((*(*(v16 - 8) + 48))(v14, 1, v16) == 1)
  {
    sub_1000038A4(v14, &qword_100523640, qword_100451520);
    v17 = 0;
  }

  else
  {
    v18 = &v14[*(v16 + 36)];
    RoutingSession.NowPlayingInfo.PlaybackInfo.playbackState.getter();
    (*(v4 + 104))(v8, enum case for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState.playing(_:), v3);
    v17 = static RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState.== infix(_:_:)();
    v19 = *(v4 + 8);
    v19(v8, v3);
    v19(v10, v3);
    sub_10002181C(v14, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
  }

  return v17 & 1;
}

uint64_t sub_100261430@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v23 - v10;
  v12 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v23 - v14;
  v16 = type metadata accessor for HostedRoutingSession(0);
  sub_10001D9AC(v1 + *(v16 + 28), v15, &qword_100523640, qword_100451520);
  v17 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  if ((*(*(v17 - 8) + 48))(v15, 1, v17) == 1)
  {
    sub_1000038A4(v15, &qword_100523640, qword_100451520);
  }

  else
  {
    v18 = &v15[*(v17 + 36)];
    RoutingSession.NowPlayingInfo.PlaybackInfo.playbackState.getter();
    (*(v5 + 104))(v9, enum case for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState.playing(_:), v4);
    LOBYTE(v18) = static RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState.== infix(_:_:)();
    v19 = *(v5 + 8);
    v19(v9, v4);
    v19(v11, v4);
    sub_10002181C(v15, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
    if (v18)
    {
      return static Date.now.getter();
    }
  }

  v21 = *(v16 + 52);
  v22 = type metadata accessor for Date();
  return (*(*(v22 - 8) + 16))(a1, v2 + v21, v22);
}

uint64_t sub_1002616D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, char *a9@<X8>, unsigned __int8 a10, unsigned __int8 a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  LODWORD(v76) = a8;
  LODWORD(v73) = a7;
  v69 = a2;
  v74 = a13;
  v72 = a12;
  LODWORD(v71) = a11;
  LODWORD(v70) = a10;
  v77 = type metadata accessor for HostedRoutingItem(0);
  v20 = *(v77 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v77);
  v75 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v78 = &v64 - v25;
  __chkstk_darwin(v24);
  v27 = &v64 - v26;
  v28 = type metadata accessor for HostedRoutingSession(0);
  v29 = &a9[v28[11]];
  *v29 = 0;
  v29[1] = 0;
  v65 = v29;
  v30 = v69;
  *a9 = a1;
  *(a9 + 1) = v30;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  v31 = &a9[v28[7]];
  v69 = a5;
  sub_10001D9AC(a5, v31, &qword_100523640, qword_100451520);
  v32 = v28[13];
  v33 = type metadata accessor for Date();
  v66 = *(v33 - 8);
  v67 = v33;
  v34 = *(v66 + 16);
  v68 = a6;
  v34(&a9[v32], a6);
  a9[v28[14]] = v73;
  a9[v28[15]] = v76;
  a9[v28[9]] = v70;
  a9[v28[10]] = v71;
  v35 = &a9[v28[12]];
  v36 = BYTE4(v72);
  *v35 = v72;
  v35[4] = v36 & 1;
  v37 = v28[8];
  v38 = type metadata accessor for RoutingControls();
  v72 = *(v38 - 8);
  v73 = v38;
  (*(v72 + 16))(&a9[v37], v74);
  v70 = v28;
  v71 = a9;
  v39 = &a9[v28[16]];
  v40 = *(a14 + 48);
  *(v39 + 2) = *(a14 + 32);
  *(v39 + 3) = v40;
  *(v39 + 4) = *(a14 + 64);
  *(v39 + 10) = *(a14 + 80);
  v41 = *(a14 + 16);
  *v39 = *a14;
  *(v39 + 1) = v41;
  v79 = a3;

  result = sub_100032CAC(v42, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem, type metadata accessor for HostedRoutingItem);
  v44 = v79;
  v45 = v79[2];
  if (v45)
  {
    v46 = 0;
    v47 = _swiftEmptyArrayStorage;
    v48 = v77;
    v49 = v75;
    v76 = v79[2];
    while (v46 < v44[2])
    {
      v50 = (*(v20 + 80) + 32) & ~*(v20 + 80);
      v51 = *(v20 + 72);
      sub_10003271C(v44 + v50 + v51 * v46, v27, type metadata accessor for HostedRoutingItem);
      if (v27[*(v48 + 36)] == 1)
      {
        sub_100032E08(v27, v49, type metadata accessor for HostedRoutingItem);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v79 = v47;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10002A42C(0, v47[2] + 1, 1);
          v49 = v75;
          v47 = v79;
        }

        v54 = v47[2];
        v53 = v47[3];
        if (v54 >= v53 >> 1)
        {
          sub_10002A42C(v53 > 1, v54 + 1, 1);
          v49 = v75;
          v47 = v79;
        }

        v47[2] = v54 + 1;
        result = sub_100032E08(v49, v47 + v50 + v54 * v51, type metadata accessor for HostedRoutingItem);
        v45 = v76;
        v48 = v77;
      }

      else
      {
        result = sub_10002181C(v27, type metadata accessor for HostedRoutingItem);
      }

      if (v45 == ++v46)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
    v47 = _swiftEmptyArrayStorage;
    v48 = v77;
LABEL_13:

    v55 = 0;
    v56 = v47[2];
    do
    {
      v57 = v55;
      if (v56 == v55)
      {
        break;
      }

      if (v55 >= v47[2])
      {
        goto LABEL_21;
      }

      v58 = v78;
      sub_10003271C(v47 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v55++, v78, type metadata accessor for HostedRoutingItem);
      v59 = *(v58 + *(v48 + 68));
      result = sub_10002181C(v58, type metadata accessor for HostedRoutingItem);
    }

    while (v59 != 1);
    v71[v70[17]] = v56 != v57;
    if (v56)
    {
      type metadata accessor for Symbols();
      v60 = sub_100030BB8(v47);
      v62 = v61;

      (*(v72 + 8))(v74, v73);
      (*(v66 + 8))(v68, v67);
      result = sub_1000038A4(v69, &qword_100523640, qword_100451520);
      v63 = v65;
      *v65 = v60;
      v63[1] = v62;
    }

    else
    {

      (*(v72 + 8))(v74, v73);
      (*(v66 + 8))(v68, v67);
      return sub_1000038A4(v69, &qword_100523640, qword_100451520);
    }
  }

  return result;
}

unint64_t sub_100261CB0()
{
  _StringGuts.grow(_:)(32);

  String.append(_:)(*v0);
  v1._countAndFlagsBits = 0x3A736D657469202CLL;
  v1._object = 0xE900000000000020;
  String.append(_:)(v1);
  object = v0[1]._object;
  countAndFlagsBits = v0[1]._countAndFlagsBits;

  sub_100032CAC(v3, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem, type metadata accessor for HostedRoutingItem);
  type metadata accessor for HostedRoutingItem(0);
  v4 = Array.description.getter();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 62;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  return 0xD000000000000024;
}

void sub_1002624D4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  v44 = *(v4 - 8);
  v45 = v4;
  v5 = *(v44 + 64);
  __chkstk_darwin(v4);
  v43 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v43 - v9;
  v11 = type metadata accessor for HostedRoutingItem(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11 - 8);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v43 - v17;
  v19 = *v1;
  v20 = v1[1];
  String.hash(into:)();
  v21 = v1[2];
  Hasher._combine(_:)(*(v21 + 16));
  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = v21 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v24 = *(v12 + 72);
    do
    {
      sub_10003271C(v23, v18, type metadata accessor for HostedRoutingItem);
      sub_100258AB4(a1);
      sub_10002181C(v18, type metadata accessor for HostedRoutingItem);
      v23 += v24;
      --v22;
    }

    while (v22);
  }

  v25 = v1[3];
  Hasher._combine(_:)(*(v25 + 16));
  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = v25 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v28 = *(v12 + 72);
    do
    {
      sub_10003271C(v27, v16, type metadata accessor for HostedRoutingItem);
      sub_100258AB4(a1);
      sub_10002181C(v16, type metadata accessor for HostedRoutingItem);
      v27 += v28;
      --v26;
    }

    while (v26);
  }

  v29 = type metadata accessor for HostedRoutingSession(0);
  sub_10001D9AC(v1 + v29[7], v10, &qword_100523640, qword_100451520);
  if ((*(v44 + 48))(v10, 1, v45) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v30 = v43;
    sub_100032E08(v10, v43, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
    Hasher._combine(_:)(1u);
    sub_1002608A8(a1);
    sub_10002181C(v30, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
  }

  v31 = v29[8];
  type metadata accessor for RoutingControls();
  sub_100017F84(&qword_100523B78, &type metadata accessor for RoutingControls);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v2 + v29[9]));
  Hasher._combine(_:)(*(v2 + v29[10]));
  v32 = (v2 + v29[11]);
  if (v32[1])
  {
    v33 = *v32;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v34 = v2 + v29[12];
  if (v34[4] == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v35 = *v34;
    Hasher._combine(_:)(1u);
    if ((v35 & 0x7FFFFFFF) != 0)
    {
      v36 = v35;
    }

    else
    {
      v36 = 0;
    }

    Hasher._combine(_:)(v36);
  }

  v37 = v29[13];
  type metadata accessor for Date();
  sub_100017F84(&qword_100523B80, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v2 + v29[14]));
  Hasher._combine(_:)(*(v2 + v29[15]));
  v38 = v2 + v29[16];
  v39 = *(v38 + 1);
  if (v39)
  {
    v40 = *v38;
    v41 = *(v38 + 4);
    v50 = *(v38 + 3);
    v51 = v41;
    v52 = *(v38 + 10);
    v42 = *(v38 + 1);
    v49 = *(v38 + 2);
    v48 = v42;
    v46 = v40;
    v47 = v39;
    Hasher._combine(_:)(1u);
    sub_100260EFC();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v2 + v29[17]));
}

uint64_t sub_100262A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v169 = a4;
  v172 = a1;
  v173 = a2;
  v7 = sub_1001BC5A8(&qword_100523B38, &qword_100451A08);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v139 - v9;
  v11 = sub_1001BC5A8(&qword_100523B30, &qword_100451A00);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v139 - v13;
  v15 = sub_1001BC5A8(&qword_100523BB8, &unk_100457BF0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v149 = &v139 - v17;
  v18 = sub_1001BC5A8(&qword_100523BC0, &qword_100451AA0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v148 = &v139 - v20;
  v21 = sub_1001BC5A8(&qword_100523BC8, &qword_100451AA8);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v160 = &v139 - v23;
  v24 = sub_1001BC5A8(&qword_100523BD0, &unk_100451AB0);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v159 = &v139 - v26;
  v27 = sub_1001BC5A8(&qword_100523BD8, &unk_100457BE0);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v164 = &v139 - v29;
  v30 = sub_1001BC5A8(&qword_100523BE0, &qword_100451AC0);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v163 = &v139 - v32;
  v33 = sub_1001BC5A8(&qword_100523BE8, &qword_100451AC8);
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33 - 8);
  v162 = &v139 - v35;
  v36 = sub_1001BC5A8(&qword_100523BF0, &qword_100451AD0);
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36 - 8);
  v161 = &v139 - v38;
  v153 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState();
  v39 = *(v153 - 8);
  v40 = *(v39 + 64);
  v41 = __chkstk_darwin(v153);
  v152 = &v139 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v151 = &v139 - v43;
  v44 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  v45 = *(*(v44 - 8) + 64);
  v46 = __chkstk_darwin(v44 - 8);
  v157 = &v139 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v49 = &v139 - v48;
  v174 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  v50 = *(v174 - 8);
  v51 = v50[8];
  v52 = __chkstk_darwin(v174);
  v150 = &v139 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v165 = &v139 - v54;
  v55 = sub_1001BC5A8(&qword_100523BF8, &unk_100457C00);
  v56 = *(*(v55 - 8) + 64);
  v57 = __chkstk_darwin(v55 - 8);
  v147 = &v139 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v167 = &v139 - v59;
  v60 = sub_1001BC5A8(&qword_100523B60, &qword_100451A48);
  v61 = *(*(v60 - 8) + 64);
  v62 = __chkstk_darwin(v60 - 8);
  v146 = &v139 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v62);
  v166 = &v139 - v64;
  RoutingControls.init()();
  v175 = a3;
  if (a3 >> 62)
  {
LABEL_127:
    v65 = _CocoaArrayWrapper.endIndex.getter();
    if (v65)
    {
      goto LABEL_3;
    }

LABEL_128:

    return sub_1000038A4(v169, &qword_100523640, qword_100451520);
  }

  v65 = *((v175 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v65)
  {
    goto LABEL_128;
  }

LABEL_3:
  v156 = v49;
  v140 = v14;
  v141 = v10;
  v49 = 0;
  v10 = (v175 & 0xC000000000000001);
  v14 = (v175 & 0xFFFFFFFFFFFFFF8);
  v170 = v175 + 32;
  v171 = a5;
  v168 = v50 + 6;
  v67 = v172 == 0x4C41434F4CLL && v173 == 0xE500000000000000;
  v154 = v67;
  v142 = kMRMediaRemoteCommandInfoIsActiveKey;
  v158 = kMRMediaRemoteCommandInfoPreferredIntervalsKey;
  v145 = enum case for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState.playing(_:);
  v144 = (v39 + 104);
  v143 = (v39 + 8);
  v68 = v157;
  v39 = v174;
  v155 = v175 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v10)
    {
      v70 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v49 >= *(v14 + 2))
      {
        goto LABEL_126;
      }

      v70 = *(v170 + 8 * v49);
    }

    v50 = v70;
    if (__OFADD__(v49++, 1))
    {
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    v72 = [v70 command];
    if (v72 > 7)
    {
      break;
    }

    if (v72 > 2)
    {
      switch(v72)
      {
        case 3:

          [v50 isEnabled];
          a5 = v161;
          RoutingControls.StopControl.init(sessionIdentifier:isDisabled:)();
          v89 = type metadata accessor for RoutingControls.StopControl();
          (*(*(v89 - 8) + 56))(a5, 0, 1, v89);
          RoutingControls.stop.setter();
          goto LABEL_79;
        case 4:

          [v50 isEnabled];
          a5 = v163;
          RoutingControls.NextTrackControl.init(sessionIdentifier:isDisabled:)();
          TrackControl = type metadata accessor for RoutingControls.NextTrackControl();
          (*(*(TrackControl - 8) + 56))(a5, 0, 1, TrackControl);
          RoutingControls.nextTrack.setter();
LABEL_79:
          v39 = v174;
          break;
        case 5:

          [v50 isEnabled];
          a5 = v162;
          RoutingControls.PreviousTrackControl.init(sessionIdentifier:isDisabled:)();
          v83 = type metadata accessor for RoutingControls.PreviousTrackControl();
          (*(*(v83 - 8) + 56))(a5, 0, 1, v83);
          RoutingControls.previousTrack.setter();
          goto LABEL_79;
      }

LABEL_80:

      goto LABEL_16;
    }

    if (!v72)
    {

      [v50 isEnabled];
      default argument 2 of RoutingControls.PlayControl.init(sessionIdentifier:isDisabled:useToggle:)();
      a5 = v166;
      RoutingControls.PlayControl.init(sessionIdentifier:isDisabled:useToggle:)();
      v85 = type metadata accessor for RoutingControls.PlayControl();
      (*(*(v85 - 8) + 56))(a5, 0, 1, v85);
      RoutingControls.play.setter();
      goto LABEL_79;
    }

    if (v72 == 1)
    {

      [v50 isEnabled];
      default argument 2 of RoutingControls.PauseControl.init(sessionIdentifier:isDisabled:useToggle:)();
      a5 = v167;
      RoutingControls.PauseControl.init(sessionIdentifier:isDisabled:useToggle:)();
      v99 = type metadata accessor for RoutingControls.PauseControl();
      (*(*(v99 - 8) + 56))(a5, 0, 1, v99);
      RoutingControls.pause.setter();
      goto LABEL_79;
    }

    if (v72 != 2)
    {
      goto LABEL_80;
    }

    a5 = v156;
    sub_10001D9AC(v169, v156, &qword_100523640, qword_100451520);
    if ((*v168)(a5, 1, v39) != 1)
    {
      v106 = a5;
      v107 = v165;
      sub_100032E08(v106, v165, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
      v108 = v107 + *(v39 + 36);
      v109 = v151;
      RoutingSession.NowPlayingInfo.PlaybackInfo.playbackState.getter();
      v110 = v152;
      v111 = v153;
      (*v144)(v152, v145, v153);
      LOBYTE(v107) = static RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState.== infix(_:_:)();
      v112 = *v143;
      (*v143)(v110, v111);
      v112(v109, v111);
      if (v107)
      {
        v113 = v147;
        RoutingControls.pause.getter();
        v114 = type metadata accessor for RoutingControls.PauseControl();
        a5 = *(v114 - 8);
        v115 = (*(a5 + 48))(v113, 1, v114);
        v68 = v157;
        if (v115 == 1)
        {
          sub_1000038A4(v113, &qword_100523BF8, &unk_100457C00);

          [v50 isEnabled];
          v116 = v167;
          RoutingControls.PauseControl.init(sessionIdentifier:isDisabled:useToggle:)();
          v117 = *(a5 + 56);
          a5 += 56;
          v117(v116, 0, 1, v114);
          RoutingControls.pause.setter();
LABEL_107:

          sub_10002181C(v165, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
LABEL_115:
          v39 = v174;
          v14 = v155;
          goto LABEL_16;
        }

        sub_10002181C(v165, type metadata accessor for HostedRoutingSession.NowPlayingInfo);

        v135 = v113;
        v136 = &qword_100523BF8;
        v137 = &unk_100457C00;
      }

      else
      {
        v130 = v146;
        RoutingControls.play.getter();
        v131 = type metadata accessor for RoutingControls.PlayControl();
        a5 = *(v131 - 8);
        v132 = (*(a5 + 48))(v130, 1, v131);
        v68 = v157;
        if (v132 == 1)
        {
          sub_1000038A4(v130, &qword_100523B60, &qword_100451A48);

          [v50 isEnabled];
          v133 = v166;
          RoutingControls.PlayControl.init(sessionIdentifier:isDisabled:useToggle:)();
          v134 = *(a5 + 56);
          a5 += 56;
          v134(v133, 0, 1, v131);
          RoutingControls.play.setter();
          goto LABEL_107;
        }

        sub_10002181C(v165, type metadata accessor for HostedRoutingSession.NowPlayingInfo);

        v135 = v130;
        v136 = &qword_100523B60;
        v137 = &qword_100451A48;
      }

      sub_1000038A4(v135, v136, v137);
      goto LABEL_115;
    }

    sub_1000038A4(a5, &qword_100523640, qword_100451520);
LABEL_16:
    if (v49 == v65)
    {
      goto LABEL_128;
    }
  }

  if (v72 <= 17)
  {
    if (v72 == 8)
    {
      v39 = 0;
      while (v65 != v39)
      {
        if (v10)
        {
          v86 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v39 >= *(v14 + 2))
          {
            goto LABEL_124;
          }

          v86 = *(v175 + 8 * v39 + 32);
        }

        a5 = v86;
        if (__OFADD__(v39, 1))
        {
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        v87 = [v86 command];

        ++v39;
        if (v87 == 9)
        {

          [v50 isEnabled];
          a5 = v148;
          RoutingControls.FastForwardControl.init(sessionIdentifier:isDisabled:)();
          v88 = type metadata accessor for RoutingControls.FastForwardControl();
          (*(*(v88 - 8) + 56))(a5, 0, 1, v88);
          RoutingControls.fastForward.setter();
          goto LABEL_15;
        }
      }

      goto LABEL_15;
    }

    if (v72 == 10)
    {
      v39 = 0;
      while (v65 != v39)
      {
        if (v10)
        {
          v100 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v39 >= *(v14 + 2))
          {
            goto LABEL_125;
          }

          v100 = *(v175 + 8 * v39 + 32);
        }

        a5 = v100;
        if (__OFADD__(v39, 1))
        {
          __break(1u);
          goto LABEL_122;
        }

        v101 = [v100 command];

        ++v39;
        if (v101 == 11)
        {

          [v50 isEnabled];
          a5 = v149;
          RoutingControls.RewindControl.init(sessionIdentifier:isDisabled:)();
          v102 = type metadata accessor for RoutingControls.RewindControl();
          (*(*(v102 - 8) + 56))(a5, 0, 1, v102);
          RoutingControls.rewind.setter();
          goto LABEL_15;
        }
      }

      goto LABEL_15;
    }

    if (v72 != 17)
    {
      goto LABEL_80;
    }

    v73 = [v50 options];
    if (v73)
    {
      v74 = v73;
      v75 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      result = v158;
      if (!v158)
      {
        goto LABEL_130;
      }

      v176 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v177 = v77;
      AnyHashable.init<A>(_:)();
      if (*(v75 + 16))
      {
        v78 = sub_10001BF64(&v178);
        if (v79)
        {
          sub_100020E0C(*(v75 + 56) + 32 * v78, &v179);
          sub_10001BF10(&v178);

          if (*(&v180 + 1))
          {
            sub_1001BC5A8(&qword_100523C00, &qword_100451AD8);
            if (swift_dynamicCast())
            {
              a5 = v178;
              if (*(v178 + 16))
              {
                v80 = *(v178 + 32);

                [v50 isEnabled];
                v81 = v160;
                RoutingControls.SkipForwardControl.init(intervals:preferredInterval:sessionIdentifier:isDisabled:)();
                v82 = type metadata accessor for RoutingControls.SkipForwardControl();
                (*(*(v82 - 8) + 56))(v81, 0, 1, v82);
                goto LABEL_14;
              }
            }

LABEL_13:

            [v50 isEnabled];
            a5 = v160;
            RoutingControls.SkipForwardControl.init(intervals:preferredInterval:sessionIdentifier:isDisabled:)();
            v69 = type metadata accessor for RoutingControls.SkipForwardControl();
            (*(*(v69 - 8) + 56))(a5, 0, 1, v69);
LABEL_14:
            RoutingControls.skipForward.setter();
            goto LABEL_15;
          }

LABEL_12:
          sub_1000038A4(&v179, &qword_100522890, &qword_100450610);
          goto LABEL_13;
        }
      }

      sub_10001BF10(&v178);
    }

    v179 = 0u;
    v180 = 0u;
    goto LABEL_12;
  }

  if (v72 != 18)
  {
    if (v72 != 21)
    {
      if (v72 == 24)
      {

        [v50 isEnabled];
        a5 = v164;
        RoutingControls.SeekControl.init(sessionIdentifier:isDisabled:)();
        v84 = type metadata accessor for RoutingControls.SeekControl();
        (*(*(v84 - 8) + 56))(a5, 0, 1, v84);
        RoutingControls.seek.setter();
        goto LABEL_79;
      }

      goto LABEL_80;
    }

    a5 = &qword_100523640;
    sub_10001D9AC(v169, v68, &qword_100523640, qword_100451520);
    if ((*v168)(v68, 1, v39) == 1)
    {
      v104 = v14;
      v105 = v68;
      sub_1000038A4(v68, &qword_100523640, qword_100451520);
    }

    else
    {
      v118 = v150;
      sub_100032E08(v68, v150, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
      v119 = *(v118 + 48);
      v120 = *(v118 + 56);
      a5 = *(v118 + 60);
      sub_100248888(v119, v120, *(v118 + 60));
      sub_10002181C(v118, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
      if (!a5)
      {
        sub_1002488FC(v119, v120, 0);

        goto LABEL_115;
      }

      v105 = v68;
      sub_1002488FC(v119, v120, a5);
      v39 = v174;
      v104 = v155;
    }

    if (!v154 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {

      v68 = v105;
      v14 = v104;
      goto LABEL_16;
    }

    v68 = v105;
    if (![v50 isEnabled])
    {

      v14 = v104;
      goto LABEL_16;
    }

    v121 = [v50 options];
    v14 = v104;
    if (!v121)
    {

      v179 = 0u;
      v180 = 0u;
      goto LABEL_117;
    }

    a5 = v121;
    v122 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    result = v142;
    if (!v142)
    {
      goto LABEL_131;
    }

    v176 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v177 = v123;
    AnyHashable.init<A>(_:)();
    if (!*(v122 + 16) || (v124 = sub_10001BF64(&v178), (v125 & 1) == 0))
    {

      sub_10001BF10(&v178);
      v179 = 0u;
      v180 = 0u;
LABEL_111:

      v39 = v174;
LABEL_117:
      sub_1000038A4(&v179, &qword_100522890, &qword_100450610);
      goto LABEL_16;
    }

    sub_100020E0C(*(v122 + 56) + 32 * v124, &v179);
    sub_10001BF10(&v178);

    if (!*(&v180 + 1))
    {
      goto LABEL_111;
    }

    v126 = swift_dynamicCast();
    v39 = v174;
    if (!v126)
    {
      goto LABEL_80;
    }

    v127 = v178;

    [v50 isEnabled];
    if (v127)
    {
      a5 = v140;
      RoutingControls.UnfavoriteControl.init(sessionIdentifier:isDisabled:)();
      v128 = type metadata accessor for RoutingControls.UnfavoriteControl();
      (*(*(v128 - 8) + 56))(a5, 0, 1, v128);
      RoutingControls.unfavorite.setter();
    }

    else
    {
      a5 = v141;
      RoutingControls.FavoriteControl.init(sessionIdentifier:isDisabled:)();
      v138 = type metadata accessor for RoutingControls.FavoriteControl();
      (*(*(v138 - 8) + 56))(a5, 0, 1, v138);
      RoutingControls.favorite.setter();
    }

LABEL_15:

    v39 = v174;
    goto LABEL_16;
  }

  v90 = [v50 options];
  if (!v90)
  {
    goto LABEL_100;
  }

  v91 = v90;
  v92 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  result = v158;
  if (v158)
  {
    v176 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v177 = v93;
    AnyHashable.init<A>(_:)();
    if (*(v92 + 16))
    {
      v94 = sub_10001BF64(&v178);
      if (v95)
      {
        sub_100020E0C(*(v92 + 56) + 32 * v94, &v179);
        sub_10001BF10(&v178);

        if (*(&v180 + 1))
        {
          sub_1001BC5A8(&qword_100523C00, &qword_100451AD8);
          if (swift_dynamicCast())
          {
            a5 = v178;
            if (*(v178 + 16))
            {
              v96 = *(v178 + 32);

              [v50 isEnabled];
              v97 = v159;
              RoutingControls.SkipBackwardControl.init(intervals:preferredInterval:sessionIdentifier:isDisabled:)();
              v98 = type metadata accessor for RoutingControls.SkipBackwardControl();
              (*(*(v98 - 8) + 56))(v97, 0, 1, v98);
LABEL_103:
              RoutingControls.skipBackward.setter();
              goto LABEL_15;
            }
          }

LABEL_102:

          [v50 isEnabled];
          a5 = v159;
          RoutingControls.SkipBackwardControl.init(intervals:preferredInterval:sessionIdentifier:isDisabled:)();
          v129 = type metadata accessor for RoutingControls.SkipBackwardControl();
          (*(*(v129 - 8) + 56))(a5, 0, 1, v129);
          goto LABEL_103;
        }

LABEL_101:
        sub_1000038A4(&v179, &qword_100522890, &qword_100450610);
        goto LABEL_102;
      }
    }

    sub_10001BF10(&v178);
LABEL_100:
    v179 = 0u;
    v180 = 0u;
    goto LABEL_101;
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
  return result;
}

uint64_t sub_100264404@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = type metadata accessor for HostedRoutingItem(0);
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v38);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HostedRoutingSourceSession(0);
  v9 = a1 + *(v8 + 60);
  v10 = *(v9 + 1);
  v54 = *v9;
  v55 = v10;
  v11 = *(v9 + 3);
  v56 = *(v9 + 2);
  v57 = v11;
  v58 = *(v9 + 4);
  v59 = *(v9 + 10);
  v12 = *(&v54 + 1);
  if (!*(&v54 + 1) || *(a1 + *(v8 + 56)) != 1)
  {
    v27 = *(v9 + 3);
    v52 = *(v9 + 2);
    v53[0] = v27;
    v53[1] = *(v9 + 4);
    *&v53[2] = *(v9 + 10);
    v28 = *(v9 + 1);
    v50 = *v9;
    v51 = v28;
    result = sub_10001D9AC(&v50, &v41, &qword_100523B20, &unk_1004519F0);
    v12 = *(&v50 + 1);
    v20 = v50;
    v22 = *(&v51 + 1);
    v21 = v51;
    v24 = *(&v52 + 1);
    v23 = v52;
    v13 = v53[0];
    v25 = BYTE1(v53[0]);
    v39 = *(v53 + 2);
    v40[0] = *(&v53[1] + 2);
    v26 = *&v53[2];
LABEL_12:
    *(v40 + 14) = v26;
    goto LABEL_13;
  }

  v34 = v55;
  v35 = v54;
  v36 = *(&v56 + 1);
  v33 = v56;
  v37 = *(&v55 + 1);
  v13 = v57;
  v32 = BYTE1(v57);
  if ((*a1 != 0x4C41434F4CLL || a1[1] != 0xE500000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v30 = *(v9 + 66);
    v39 = *(v9 + 50);
    v40[0] = v30;
    *(v40 + 14) = *(v9 + 10);
    result = sub_10001D9AC(&v54, &v50, &qword_100523B20, &unk_1004519F0);
    v21 = v34;
    v20 = v35;
    v24 = v36;
    v22 = v37;
    v23 = v33;
    v25 = v32;
LABEL_13:
    *a2 = v20;
    *(a2 + 8) = v12;
    *(a2 + 16) = v21;
    *(a2 + 24) = v22;
    *(a2 + 32) = v23;
    *(a2 + 40) = v24;
    *(a2 + 48) = v13;
    *(a2 + 49) = v25;
    v29 = v40[0];
    *(a2 + 50) = v39;
    *(a2 + 66) = v29;
    *(a2 + 80) = *(v40 + 14);
    return result;
  }

  v14 = a1[4];
  v15 = *(v14 + 16);
  sub_10001D9AC(&v54, &v50, &qword_100523B20, &unk_1004519F0);
  v31 = v12;

  v17 = 0;
  while (1)
  {
    v18 = v17;
    if (v15 == v17)
    {
LABEL_10:
      sub_1000038A4(&v54, &qword_100523B20, &unk_1004519F0);
      v41 = v35;
      v42 = v31;
      v43 = v34;
      v44 = v37;
      v45 = v33;
      v46 = v36;
      v47 = v15 != v18;
      v48 = v32 & 1;
      memset(&v49[6], 0, 32);
      *&v50 = v35;
      *(&v50 + 1) = v31;
      *&v51 = v34;
      *(&v51 + 1) = v37;
      *&v52 = v33;
      *(&v52 + 1) = v36;
      LOBYTE(v53[0]) = v15 != v18;
      BYTE1(v53[0]) = v32 & 1;
      *(v53 + 8) = 0u;
      *(&v53[1] + 8) = 0u;
      sub_10026A204(&v41, &v39);
      result = sub_10026A23C(&v50);
      v20 = v41;
      v12 = v42;
      v21 = v43;
      v22 = v44;
      v23 = v45;
      v24 = v46;
      v13 = v47;
      v25 = v48;
      v39 = *v49;
      v40[0] = *&v49[16];
      v26 = *&v49[30];
      goto LABEL_12;
    }

    if (v17 >= *(v14 + 16))
    {
      break;
    }

    sub_10003271C(v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v17++, v7, type metadata accessor for HostedRoutingItem);
    v19 = *&v7[*(v38 + 64) + 16];
    result = sub_10002181C(v7, type metadata accessor for HostedRoutingItem);
    if (((v19 >> 8) & 6 | (v19 >> 7) & 1) == 1)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1002647C8()
{
  v1 = type metadata accessor for HostedRoutingSessionSnapshot(0);
  v2 = *(v0 + *(v1 + 24));
  v5 = *(v0 + *(v1 + 20));

  sub_100032CAC(v3, &qword_100523630, &qword_1004511E0, type metadata accessor for HostedRoutingSession, type metadata accessor for HostedRoutingSession);
  return v5;
}

void sub_100264FC8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for HostedRoutingSession(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v28 - v11;
  __chkstk_darwin(v10);
  v14 = &v28 - v13;
  v15 = sub_1001BC5A8(&qword_100523620, &unk_1004511D0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v28 - v17;
  sub_10001D9AC(v2, &v28 - v17, &qword_100523620, &unk_1004511D0);
  if ((*(v5 + 48))(v18, 1, v4) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    sub_100032E08(v18, v14, type metadata accessor for HostedRoutingSession);
    Hasher._combine(_:)(1u);
    sub_1002624D4(a1);
    sub_10002181C(v14, type metadata accessor for HostedRoutingSession);
  }

  v19 = type metadata accessor for HostedRoutingSessionSnapshot(0);
  v20 = *(v2 + *(v19 + 20));
  Hasher._combine(_:)(*(v20 + 16));
  v21 = *(v20 + 16);
  if (v21)
  {
    v22 = v20 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v23 = *(v5 + 72);
    do
    {
      sub_10003271C(v22, v12, type metadata accessor for HostedRoutingSession);
      sub_1002624D4(a1);
      sub_10002181C(v12, type metadata accessor for HostedRoutingSession);
      v22 += v23;
      --v21;
    }

    while (v21);
  }

  v24 = *(v2 + *(v19 + 24));
  Hasher._combine(_:)(*(v24 + 16));
  v25 = *(v24 + 16);
  if (v25)
  {
    v26 = v24 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v27 = *(v5 + 72);
    do
    {
      sub_10003271C(v26, v9, type metadata accessor for HostedRoutingSession);
      sub_1002624D4(a1);
      sub_10002181C(v9, type metadata accessor for HostedRoutingSession);
      v26 += v27;
      --v25;
    }

    while (v25);
  }
}

Swift::Int sub_1002652E8(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int sub_10026534C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t sub_100265398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v75 = a2;
  v5 = sub_1001BC5A8(&qword_100523620, &unk_1004511D0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v84 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v70 - v9;
  v11 = sub_1001BC5A8(&qword_100523C28, &qword_100451AF8);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v74 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v80 = &v70 - v16;
  __chkstk_darwin(v15);
  v18 = &v70 - v17;
  v19 = type metadata accessor for RoutingSession();
  v79 = *(v19 - 8);
  v20 = *(v79 + 64);
  v21 = __chkstk_darwin(v19);
  v77 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v76 = &v70 - v24;
  v25 = __chkstk_darwin(v23);
  v83 = &v70 - v26;
  __chkstk_darwin(v25);
  v78 = &v70 - v27;
  v28 = sub_1001BC5A8(&qword_100523C30, &qword_100451B00);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v31 = &v70 - v30;
  v32 = type metadata accessor for HostedRoutingSessionSnapshot(0);
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  v36 = &v70 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v37;
  sub_10001D9AC(a1, v31, &qword_100523C30, &qword_100451B00);
  if ((*(v33 + 48))(v31, 1, v38) == 1)
  {
    v39 = type metadata accessor for RoutingSessionConfiguration();
    (*(*(v39 - 8) + 8))(v75, v39);
    sub_1000038A4(a1, &qword_100523C30, &qword_100451B00);
    sub_1000038A4(v31, &qword_100523C30, &qword_100451B00);
    v40 = 1;
LABEL_28:
    v69 = type metadata accessor for RoutingSessionSnapshot();
    return (*(*(v69 - 8) + 56))(a3, v40, 1, v69);
  }

  v71 = a1;
  v72 = a3;
  result = sub_100032E08(v31, v36, type metadata accessor for HostedRoutingSessionSnapshot);
  v70 = v38;
  v42 = *&v36[*(v38 + 20)];
  v43 = *(v42 + 16);
  v73 = v36;
  v82 = v43;
  if (v43)
  {
    v44 = 0;
    v45 = v80;
    v81 = (v79 + 48);
    v46 = (v79 + 32);
    v85 = &_swiftEmptyArrayStorage;
    while (v44 < *(v42 + 16))
    {
      v47 = type metadata accessor for HostedRoutingSession(0);
      v48 = *(v47 - 8);
      sub_10003271C(v42 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v44, v10, type metadata accessor for HostedRoutingSession);
      (*(v48 + 56))(v10, 0, 1, v47);
      v49 = v84;
      sub_10001D9AC(v10, v84, &qword_100523620, &unk_1004511D0);
      sub_100039818(v49, v18);
      sub_1000038A4(v10, &qword_100523620, &unk_1004511D0);
      if ((*v81)(v18, 1, v19) == 1)
      {
        result = sub_1000038A4(v18, &qword_100523C28, &qword_100451AF8);
      }

      else
      {
        v50 = *v46;
        v51 = v78;
        (*v46)(v78, v18, v19);
        v50(v83, v51, v19);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v85 = sub_100032F14(0, v85[2] + 1, 1, v85, &qword_100524170, &unk_100455080, &type metadata accessor for RoutingSession);
        }

        v53 = v85[2];
        v52 = v85[3];
        if (v53 >= v52 >> 1)
        {
          v85 = sub_100032F14(v52 > 1, v53 + 1, 1, v85, &qword_100524170, &unk_100455080, &type metadata accessor for RoutingSession);
        }

        v54 = v85;
        v85[2] = v53 + 1;
        result = (v50)(v54 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v53, v83, v19);
        v45 = v80;
      }

      if (v82 == ++v44)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v85 = &_swiftEmptyArrayStorage;
    v45 = v80;
LABEL_15:
    result = RoutingSessionConfiguration.filterInactiveSessions.getter();
    if ((result & 1) != 0 || (v55 = *&v73[*(v70 + 24)], (v83 = *(v55 + 16)) == 0))
    {
LABEL_27:
      v67 = v73;
      sub_10001D9AC(v73, v10, &qword_100523620, &unk_1004511D0);
      sub_100039818(v10, v74);
      a3 = v72;
      RoutingSessionSnapshot.init(activeSessions:inactiveSessions:activeSession:)();
      v68 = type metadata accessor for RoutingSessionConfiguration();
      (*(*(v68 - 8) + 8))(v75, v68);
      sub_1000038A4(v71, &qword_100523C30, &qword_100451B00);
      sub_10002181C(v67, type metadata accessor for HostedRoutingSessionSnapshot);
      v40 = 0;
      goto LABEL_28;
    }

    v56 = 0;
    v82 = (v79 + 48);
    v57 = (v79 + 32);
    v58 = &_swiftEmptyArrayStorage;
    while (v56 < *(v55 + 16))
    {
      v59 = type metadata accessor for HostedRoutingSession(0);
      v60 = *(v59 - 8);
      sub_10003271C(v55 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v56, v10, type metadata accessor for HostedRoutingSession);
      (*(v60 + 56))(v10, 0, 1, v59);
      v61 = v84;
      sub_10001D9AC(v10, v84, &qword_100523620, &unk_1004511D0);
      sub_100039818(v61, v45);
      sub_1000038A4(v10, &qword_100523620, &unk_1004511D0);
      if ((*v82)(v45, 1, v19) == 1)
      {
        result = sub_1000038A4(v45, &qword_100523C28, &qword_100451AF8);
      }

      else
      {
        v62 = v45;
        v63 = *v57;
        v64 = v76;
        (*v57)(v76, v62, v19);
        v63(v77, v64, v19);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v58 = sub_100032F14(0, v58[2] + 1, 1, v58, &qword_100524170, &unk_100455080, &type metadata accessor for RoutingSession);
        }

        v66 = v58[2];
        v65 = v58[3];
        if (v66 >= v65 >> 1)
        {
          v58 = sub_100032F14(v65 > 1, v66 + 1, 1, v58, &qword_100524170, &unk_100455080, &type metadata accessor for RoutingSession);
        }

        v58[2] = v66 + 1;
        result = (v63)(v58 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v66, v77, v19);
        v45 = v80;
      }

      if (v83 == ++v56)
      {
        goto LABEL_27;
      }
    }
  }

  __break(1u);
  return result;
}

id sub_100265DF0()
{
  v1 = type metadata accessor for RoutingSessionConfiguration.Context();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v26[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v2 + 16))(v5, v0, v1);
  v6 = (*(v2 + 88))(v5, v1);
  if (v6 == enum case for RoutingSessionConfiguration.Context.app(_:))
  {
    (*(v2 + 96))(v5, v1);
    v8 = *v5;
    v7 = v5[1];
    v9 = sub_10033D250();
    swift_beginAccess();
    v10 = *v9 == v8 && v9[1] == v7;
    if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      goto LABEL_28;
    }

    v11 = sub_10033D330();
    swift_beginAccess();
    v12 = *v11 == v8 && v11[1] == v7;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      goto LABEL_28;
    }

    v13 = sub_10033D4F0();
    swift_beginAccess();
    v14 = *v13 == v8 && v13[1] == v7;
    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || ((v15 = sub_10033D4FC(), swift_beginAccess(), *v15 == v8) ? (v16 = v15[1] == v7) : (v16 = 0), v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v17 = sub_10033D508(), swift_beginAccess(), *v17 == v8) && v17[1] == v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v18 = sub_10033D514(), swift_beginAccess(), *v18 == v8) && v18[1] == v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
LABEL_28:
      result = [objc_opt_self() currentSettings];
      if (result)
      {
        v20 = result;

        v21 = [v20 supportSystemEndpoints];

        return v21;
      }

      __break(1u);
LABEL_50:
      __break(1u);
      return result;
    }

    goto LABEL_48;
  }

  if (v6 == enum case for RoutingSessionConfiguration.Context.deviceTarget(_:) || v6 == enum case for RoutingSessionConfiguration.Context.platterTarget(_:) || v6 == enum case for RoutingSessionConfiguration.Context.deviceSessionTarget(_:))
  {
    (*(v2 + 8))(v5, v1);
  }

  else
  {
    if (v6 == enum case for RoutingSessionConfiguration.Context.nonUI(_:) || v6 == enum case for RoutingSessionConfiguration.Context.ui(_:))
    {
      result = [objc_opt_self() currentSettings];
      if (result)
      {
        v23 = result;
        v24 = [result supportSystemEndpoints];

        return v24;
      }

      goto LABEL_50;
    }

    if (v6 != enum case for RoutingSessionConfiguration.Context.localSessionTarget(_:) && v6 != enum case for RoutingSessionConfiguration.Context.activeSessionTarget(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
LABEL_48:
    }
  }

  return 0;
}

id sub_1002661C8()
{
  v1 = v0;
  v2 = (*(*v0 + 160))();
  if (!v2)
  {
    goto LABEL_13;
  }

  v3 = v2;
  sub_100018D7C(0, &qword_100521CF0, &off_1004B30B0);
  v4 = sub_10024C81C();
  v5 = [v4 queryExistingPlayerPath:v3];

  if (!v5)
  {
    v5 = v3;
LABEL_12:

LABEL_13:
    v12 = *(v1 + 32);
    v14 = *(v1 + 40);

    return v12;
  }

  v6 = [v5 playerClient];
  if (!v6)
  {
    v13 = v3;
LABEL_11:

    goto LABEL_12;
  }

  v7 = v6;
  result = [v6 playbackQueue];
  if (result)
  {
    v9 = result;
    v10 = [result contentItemWithOffset:0];

    if (v10)
    {
      v11 = [v10 identifier];

      if (v11)
      {
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v12;
      }
    }

    v13 = v5;
    v5 = v3;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_100266350@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v68 = a1;
  v71 = a2;
  v66 = type metadata accessor for HostedRoutingSession(0);
  v70 = *(v66 - 8);
  v2 = *(v70 + 64);
  v3 = __chkstk_darwin(v66);
  v5 = (&v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v3);
  v7 = &v61 - v6;
  v8 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v67 = &v61 - v10;
  v11 = type metadata accessor for RoutingSessionConfiguration.Attribution.AttributionType();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = (&v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v18 = &v61 - v17;
  v19 = type metadata accessor for RoutingSessionConfiguration.Attribution();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  RoutingSessionConfiguration.attribution.getter();
  v24 = (*(v20 + 88))(v23, v19);
  if (v24 != enum case for RoutingSessionConfiguration.Attribution.attributed(_:))
  {
    if (v24 == enum case for RoutingSessionConfiguration.Attribution.none(_:))
    {
      return RoutingSessionConfiguration.attribution.getter();
    }

    goto LABEL_37;
  }

  v65 = v24;
  (*(v20 + 96))(v23, v19);
  (*(v12 + 32))(v18, v23, v11);
  (*(v12 + 16))(v16, v18, v11);
  v25 = (*(v12 + 88))(v16, v11);
  v26 = v25;
  if (v25 == enum case for RoutingSessionConfiguration.Attribution.AttributionType.app(_:))
  {
    (*(v12 + 96))(v16, v11);
    v27 = *v16;
    v28 = v16[1];
    sub_100018D7C(0, &qword_100523B90, NSBundle_ptr);
    v29 = sub_10033D3E8(v27);
    v31 = v30;

    (*(v12 + 8))(v18, v11);
    v32 = v71;
    *v71 = v29;
    v32[1] = v31;
    (*(v12 + 104))(v32, v26, v11);
    return (*(v20 + 104))(v32, v65, v19);
  }

  v34 = enum case for RoutingSessionConfiguration.Attribution.AttributionType.anonymous(_:);
  if (v25 == enum case for RoutingSessionConfiguration.Attribution.AttributionType.anonymous(_:))
  {
    RoutingSessionConfiguration.attribution.getter();
    return (*(v12 + 8))(v18, v11);
  }

  if (v25 != enum case for RoutingSessionConfiguration.Attribution.AttributionType.nowPlayingApp(_:))
  {
    if (v25 != enum case for RoutingSessionConfiguration.Attribution.AttributionType.foregroundMediaApp(_:))
    {
LABEL_38:
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    goto LABEL_12;
  }

  v35 = *(v69 + 48);
  if (v35 < 3)
  {
    v62 = enum case for RoutingSessionConfiguration.Attribution.AttributionType.app(_:);
    v63 = enum case for RoutingSessionConfiguration.Attribution.AttributionType.anonymous(_:);
    v64 = *(v69 + 32);
    v36 = (v69 + 40);
LABEL_16:
    v38 = *v36;
    v39 = sub_100032A00();
    v69 = *(v39 + 16);
    if (v69)
    {
      v40 = 0;
      while (1)
      {
        if (v40 >= *(v39 + 16))
        {
          __break(1u);
          goto LABEL_36;
        }

        sub_10003271C(v39 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v40, v5, type metadata accessor for HostedRoutingSession);
        v41 = *v5 == v64 && v5[1] == v38;
        if (v41 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        ++v40;
        sub_10002181C(v5, type metadata accessor for HostedRoutingSession);
        if (v69 == v40)
        {
          goto LABEL_25;
        }
      }

      sub_100032E08(v5, v7, type metadata accessor for HostedRoutingSession);
      v42 = v67;
      sub_10001D9AC(&v7[*(v66 + 28)], v67, &qword_100523640, qword_100451520);
      sub_10002181C(v7, type metadata accessor for HostedRoutingSession);
      v43 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
      if ((*(*(v43 - 8) + 48))(v42, 1, v43) == 1)
      {
        (*(v12 + 8))(v18, v11);
        sub_1000038A4(v42, &qword_100523640, qword_100451520);
        goto LABEL_28;
      }

      v51 = *(v42 + 48);
      v52 = *(v42 + 56);
      v53 = *(v42 + 60);
      sub_100248888(v51, v52, v53);
      sub_10002181C(v42, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
      v54 = *(v51 + 16);
      if (v54)
      {
        v55 = (v51 + 16 + 16 * v54);
        v56 = *v55;
        v57 = v55[1];

        sub_1002488FC(v51, v52, v53);
        sub_100018D7C(0, &qword_100523B90, NSBundle_ptr);
        v58 = sub_10033D3E8(v56);
        v60 = v59;

        (*(v12 + 8))(v18, v11);
        v50 = v71;
        *v71 = v58;
        v50[1] = v60;
        (*(v12 + 104))(v50, v62, v11);
        return (*(v20 + 104))(v50, v65, v19);
      }

LABEL_36:
      __break(1u);
LABEL_37:
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      goto LABEL_38;
    }

LABEL_25:

    (*(v12 + 8))(v18, v11);
LABEL_28:
    v37 = v71;
    (*(v12 + 104))(v71, v63, v11);
    return (*(v20 + 104))(v37, v65, v19);
  }

  if (v35 != 6)
  {
    if (v35 == 4)
    {
      v64 = *(v69 + 16);
      v62 = enum case for RoutingSessionConfiguration.Attribution.AttributionType.app(_:);
      v63 = enum case for RoutingSessionConfiguration.Attribution.AttributionType.anonymous(_:);
      v36 = (v69 + 24);
      goto LABEL_16;
    }

LABEL_12:
    (*(v12 + 8))(v18, v11);
    v37 = v71;
    (*(v12 + 104))(v71, v34, v11);
    return (*(v20 + 104))(v37, v65, v19);
  }

  v44 = *(*(v69 + 16) + 48);
  v45 = enum case for RoutingSessionConfiguration.Attribution.AttributionType.app(_:);
  sub_100018D7C(0, &qword_100523B90, NSBundle_ptr);
  v46 = *(v44 + 24);
  v47 = sub_10033D3E8(*(v44 + 16));
  v49 = v48;
  (*(v12 + 8))(v18, v11);
  v50 = v71;
  *v71 = v47;
  v50[1] = v49;
  (*(v12 + 104))(v50, v45, v11);
  return (*(v20 + 104))(v50, v65, v19);
}

uint64_t sub_100266B70(uint64_t a1)
{
  v3 = type metadata accessor for HostedRoutingItem(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = (&v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a1 + 16);
  if (v9)
  {
    v40 = v1;
    v10 = 0;
    v11 = v8 + *(v6 + 52);
    v42 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = &_swiftEmptyDictionarySingleton;
    v41 = v11;
    while (v10 < *(a1 + 16))
    {
      sub_10003271C(v42 + *(v4 + 72) * v10, v8, type metadata accessor for HostedRoutingItem);
      v15 = *v8;
      v14 = v8[1];
      v16 = *v11;
      v17 = v11[4];

      sub_10002181C(v8, type metadata accessor for HostedRoutingItem);
      if (v17)
      {
        v18 = sub_10000698C(v15, v14);
        v20 = v19;

        if (v20)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v43 = v12;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_100267F48();
            v12 = v43;
          }

          v22 = *(v12[6] + 16 * v18 + 8);

          sub_100267D98(v18, v12);
        }
      }

      else
      {
        v23 = v9;
        v24 = v4;
        v25 = a1;
        v26 = swift_isUniquelyReferenced_nonNull_native();
        v43 = v12;
        v27 = sub_10000698C(v15, v14);
        v29 = v12[2];
        v30 = (v28 & 1) == 0;
        v31 = __OFADD__(v29, v30);
        v32 = v29 + v30;
        if (v31)
        {
          goto LABEL_23;
        }

        v33 = v28;
        if (v12[3] >= v32)
        {
          if ((v26 & 1) == 0)
          {
            v38 = v27;
            sub_100267F48();
            v27 = v38;
          }
        }

        else
        {
          sub_100267AF4(v32, v26);
          v27 = sub_10000698C(v15, v14);
          if ((v33 & 1) != (v34 & 1))
          {
            goto LABEL_25;
          }
        }

        a1 = v25;
        v4 = v24;
        if (v33)
        {
          v13 = v27;

          v12 = v43;
          *(v43[7] + 4 * v13) = v16;
          v9 = v23;
        }

        else
        {
          v12 = v43;
          v43[(v27 >> 6) + 8] |= 1 << v27;
          v35 = (v12[6] + 16 * v27);
          *v35 = v15;
          v35[1] = v14;
          *(v12[7] + 4 * v27) = v16;
          v36 = v12[2];
          v31 = __OFADD__(v36, 1);
          v37 = v36 + 1;
          if (v31)
          {
            goto LABEL_24;
          }

          v9 = v23;
          v12[2] = v37;
        }

        v11 = v41;
      }

      if (v9 == ++v10)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
LABEL_21:

    return dispatch thunk of VolumeGroup.__allocating_init(itemVolumeLevels:groupVolumeLevel:)();
  }

  return result;
}

uint64_t sub_100266EA8(void *a1, float a2)
{
  v4 = type metadata accessor for HostedRoutingItem(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v27[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1001BC5A8(&qword_100523C18, &qword_100451AF0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v27[-1] - v11;
  dispatch thunk of VolumeGroup.groupVolumeLevel.getter();
  if (vabds_f32(v13, a2) > 0.01)
  {
    return 0;
  }

  v15 = a1[3];
  v16 = sub_1000326D8(a1, v15);
  v17 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v16);
  (*(v19 + 16))(&v27[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1000397B4(v27);
  dispatch thunk of Sequence.makeIterator()();
  while (1)
  {
    sub_100022650(v27, AssociatedTypeWitness);
    dispatch thunk of IteratorProtocol.next()();
    if ((*(v5 + 48))(v12, 1, v4) == 1)
    {
      break;
    }

    sub_100032E08(v12, v8, type metadata accessor for HostedRoutingItem);
    v20 = (v8 + *(v4 + 52));
    if (v20[1])
    {
LABEL_5:
      sub_10002181C(v8, type metadata accessor for HostedRoutingItem);
    }

    else
    {
      v21 = *v20;
      v22 = dispatch thunk of VolumeGroup.itemVolumeLevels.getter();
      if (!*(v22 + 16) || (v23 = sub_10000698C(*v8, v8[1]), (v24 & 1) == 0))
      {

        goto LABEL_5;
      }

      v25 = *(*(v22 + 56) + 4 * v23);

      sub_10002181C(v8, type metadata accessor for HostedRoutingItem);
      if (vabds_f32(v25, v21) > 0.01)
      {
        sub_100026A44(v27);
        return 0;
      }
    }
  }

  sub_100026A44(v27);
  return 1;
}

uint64_t sub_100267210(uint64_t a1, char a2)
{
  v4 = type metadata accessor for HostedRoutingItem(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = type metadata accessor for HostedRoutingSourceSession(0);
  v10 = a1 + *(result + 40);
  if (*(v10 + 4))
  {
    if (a2)
    {
      return 1;
    }

    goto LABEL_6;
  }

  v11 = *v10;
  dispatch thunk of VolumeGroup.groupVolumeLevel.getter();
  v13 = vabds_f32(v12, v11);
  result = v13 <= 0.01;
  if (v13 <= 0.01 && (a2 & 1) == 0)
  {
LABEL_6:
    v14 = *(a1 + 32);
    v15 = *(v14 + 16);
    if (!v15)
    {
      return 1;
    }

    v16 = 0;
    v17 = v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    while (1)
    {
      if (v16 >= *(v14 + 16))
      {
        __break(1u);
        return result;
      }

      sub_10003271C(v17 + *(v5 + 72) * v16, v8, type metadata accessor for HostedRoutingItem);
      v18 = (v8 + *(v4 + 52));
      if (v18[1])
      {
        goto LABEL_9;
      }

      v19 = *v18;
      v20 = dispatch thunk of VolumeGroup.itemVolumeLevels.getter();
      if (!*(v20 + 16))
      {
        break;
      }

      v21 = sub_10000698C(*v8, v8[1]);
      if ((v22 & 1) == 0)
      {
        break;
      }

      v23 = *(*(v20 + 56) + 4 * v21);

      result = sub_10002181C(v8, type metadata accessor for HostedRoutingItem);
      if (vabds_f32(v23, v19) > 0.01)
      {
        return 0;
      }

LABEL_10:
      if (v15 == ++v16)
      {
        return 1;
      }
    }

LABEL_9:
    result = sub_10002181C(v8, type metadata accessor for HostedRoutingItem);
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_100267434(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1001BC5A8(&qword_100524160, &qword_100455078);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v33 = v2;
    v34 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (1)
    {
      if (!v11)
      {
        v17 = v7;
        while (1)
        {
          v7 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            __break(1u);
            goto LABEL_40;
          }

          if (v7 >= v12)
          {
            break;
          }

          v18 = v8[v7];
          ++v17;
          if (v18)
          {
            v16 = __clz(__rbit64(v18));
            v11 = (v18 - 1) & v18;
            goto LABEL_17;
          }
        }

        v32 = 1 << *(v3 + 32);
        if (v32 >= 64)
        {
          bzero(v8, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v8 = -1 << v32;
        }

        v2 = v33;
        *(v3 + 16) = 0;
        goto LABEL_38;
      }

      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 24 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v6 + 40);
      Hasher.init(_seed:)();
      if (v22 <= 1)
      {
        break;
      }

      if (v22 == 2)
      {
        v24 = 3;
LABEL_23:
        Hasher._combine(_:)(v24);
        String.hash(into:)();
        goto LABEL_25;
      }

      Hasher._combine(_:)(0);
LABEL_25:
      result = Hasher._finalize()();
      v25 = -1 << *(v6 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v13 + 8 * v27);
          if (v31 != -1)
          {
            v14 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_40:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 24 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      ++*(v6 + 16);
      v3 = v34;
    }

    if (!v22)
    {
      Hasher._combine(_:)(1uLL);
      Hasher._combine(_:)(v20);
      goto LABEL_25;
    }

    v24 = 2;
    goto LABEL_23;
  }

LABEL_38:

  *v2 = v6;
  return result;
}

void *sub_1002676F4()
{
  v1 = v0;
  sub_1001BC5A8(&qword_100524160, &qword_100455078);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v4 + 48) + v17;
        v22 = *(v18 + 16);
        *v21 = *v18;
        *(v21 + 8) = v20;
        *(v21 + 16) = v22;
        result = sub_10002CBE8(v19, v20, v22);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_10026785C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1001BC5A8(&qword_100524160, &qword_100455078);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (!*(v3 + 16))
  {

LABEL_36:
    *v2 = v6;
    return result;
  }

  v32 = v2;
  v33 = v3;
  v7 = 0;
  v8 = v3 + 56;
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  while (v11)
  {
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_17:
    v19 = *(v3 + 48) + 24 * (v16 | (v7 << 6));
    v20 = *v19;
    v21 = *(v19 + 8);
    v22 = *(v19 + 16);
    v23 = *(v6 + 40);
    Hasher.init(_seed:)();
    if (v22 <= 1)
    {
      if (!v22)
      {
        Hasher._combine(_:)(1uLL);
        Hasher._combine(_:)(v20);
        goto LABEL_25;
      }

      v24 = 2;
      goto LABEL_23;
    }

    if (v22 == 2)
    {
      v24 = 3;
LABEL_23:
      Hasher._combine(_:)(v24);

      String.hash(into:)();
      goto LABEL_25;
    }

    Hasher._combine(_:)(0);
LABEL_25:
    result = Hasher._finalize()();
    v25 = -1 << *(v6 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v25) >> 6;
      while (++v27 != v29 || (v28 & 1) == 0)
      {
        v30 = v27 == v29;
        if (v27 == v29)
        {
          v27 = 0;
        }

        v28 |= v30;
        v31 = *(v13 + 8 * v27);
        if (v31 != -1)
        {
          v14 = __clz(__rbit64(~v31)) + (v27 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_38;
    }

    v14 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
    v15 = *(v6 + 48) + 24 * v14;
    *v15 = v20;
    *(v15 + 8) = v21;
    *(v15 + 16) = v22;
    ++*(v6 + 16);
    v3 = v33;
  }

  v17 = v7;
  while (1)
  {
    v7 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v7 >= v12)
    {

      v2 = v32;
      goto LABEL_36;
    }

    v18 = *(v8 + 8 * v7);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v11 = (v18 - 1) & v18;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_100267AF4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1001BC5A8(&qword_100524158, &qword_100455070);
  v37 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 4 * v21);
      if ((v37 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 4 * v16) = v25;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_100267D98(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 4 * v3);
        v20 = (v18 + 4 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_100267F48()
{
  v1 = v0;
  sub_1001BC5A8(&qword_100524158, &qword_100455070);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1002680B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x647261646E617473 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365536F69647561 && a2 == 0xEC0000006E6F6973 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6963657053707061 && a2 == 0xEB00000000636966 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x800000010043DDD0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_100268224()
{
  result = qword_10052C3C0;
  if (!qword_10052C3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10052C3C0);
  }

  return result;
}

unint64_t sub_100268278()
{
  result = qword_10052C3C8;
  if (!qword_10052C3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10052C3C8);
  }

  return result;
}

unint64_t sub_1002682CC()
{
  result = qword_10052C3D0;
  if (!qword_10052C3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10052C3D0);
  }

  return result;
}

unint64_t sub_100268320()
{
  result = qword_10052C3D8;
  if (!qword_10052C3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10052C3D8);
  }

  return result;
}

unint64_t sub_100268374()
{
  result = qword_10052C3E0;
  if (!qword_10052C3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10052C3E0);
  }

  return result;
}

uint64_t sub_1002683C8(uint64_t *a1)
{
  v55 = sub_1001BC5A8(&qword_100524218, &qword_1004550E8);
  v51 = *(v55 - 8);
  v2 = *(v51 + 64);
  __chkstk_darwin(v55);
  v54 = &v44 - v3;
  v48 = sub_1001BC5A8(&qword_100524220, &qword_1004550F0);
  v50 = *(v48 - 8);
  v4 = *(v50 + 64);
  __chkstk_darwin(v48);
  v53 = &v44 - v5;
  v52 = sub_1001BC5A8(&qword_100524228, &qword_1004550F8);
  v49 = *(v52 - 8);
  v6 = *(v49 + 64);
  __chkstk_darwin(v52);
  v8 = &v44 - v7;
  v9 = sub_1001BC5A8(&qword_100524230, &qword_100455100);
  v47 = *(v9 - 8);
  v10 = *(v47 + 64);
  __chkstk_darwin(v9);
  v12 = &v44 - v11;
  v13 = sub_1001BC5A8(&qword_100524238, &qword_100455108);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v44 - v16;
  v19 = a1[3];
  v18 = a1[4];
  v57 = a1;
  sub_1000326D8(a1, v19);
  sub_100268224();
  v20 = v56;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v20)
  {
    v44 = v9;
    v45 = v12;
    v18 = v8;
    v21 = v52;
    v22 = v53;
    v46 = 0;
    v23 = v54;
    v24 = v55;
    v56 = v14;
    v25 = KeyedDecodingContainer.allKeys.getter();
    v26 = *(v25 + 16);
    if (!v26 || ((v27 = *(v25 + 32), v26 == 1) ? (v28 = v27 == 4) : (v28 = 1), v28))
    {
      v18 = type metadata accessor for DecodingError();
      swift_allocError();
      v30 = v29;
      v31 = v17;
      v32 = *(sub_1001BC5A8(&unk_100527470, &qword_100455110) + 48);
      *v30 = &type metadata for HostedItemType;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v18 - 8) + 104))(v30, enum case for DecodingError.typeMismatch(_:), v18);
      swift_willThrow();
      (*(v56 + 8))(v31, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      if (*(v25 + 32) <= 1u)
      {
        if (!*(v25 + 32))
        {
          v58 = 0;
          sub_100268374();
          v18 = v45;
          v34 = v46;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v34)
          {
            (*(v47 + 8))(v18, v44);
            (*(v56 + 8))(v17, v13);
            swift_unknownObjectRelease();
            v18 = 0;
            goto LABEL_9;
          }

          v35 = v56;
          goto LABEL_17;
        }

        v59 = 1;
        sub_100268320();
        v39 = v18;
        v40 = v46;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v18 = v40;
        if (!v40)
        {
          v42 = v17;
          v43 = KeyedDecodingContainer.decode(_:forKey:)();
          (*(v49 + 8))(v39, v21);
          (*(v56 + 8))(v42, v13);
          swift_unknownObjectRelease();
          v18 = v43;
          goto LABEL_9;
        }

        (*(v56 + 8))(v17, v13);
LABEL_22:
        swift_unknownObjectRelease();
        goto LABEL_9;
      }

      v36 = v56;
      if (v27 != 2)
      {
        v61 = 3;
        sub_100268278();
        v41 = v46;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v18 = v41;
        if (!v41)
        {
          v18 = KeyedDecodingContainer.decode(_:forKey:)();
          (*(v51 + 8))(v23, v24);
          (*(v36 + 8))(v17, v13);
          swift_unknownObjectRelease();
          goto LABEL_9;
        }

        (*(v36 + 8))(v17, v13);
        goto LABEL_22;
      }

      v35 = v56;
      v60 = 2;
      sub_1002682CC();
      v37 = v46;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v37)
      {
LABEL_17:
        (*(v35 + 8))(v17, v13);
        swift_unknownObjectRelease();
        goto LABEL_9;
      }

      v38 = v48;
      v18 = KeyedDecodingContainer.decode(_:forKey:)();
      (*(v50 + 8))(v22, v38);
      (*(v35 + 8))(v17, v13);
      swift_unknownObjectRelease();
    }
  }

LABEL_9:
  sub_100026A44(v57);
  return v18;
}

uint64_t sub_100268BA8(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  if (a2)
  {
    if (!a5)
    {
      return 0;
    }

    if (a1 != a4 || a2 != a5)
    {
      v6 = a3;
      v7 = a6;
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a3 = v6;
      a6 = v7;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (a5)
  {
    return 0;
  }

  if (a3 == 2)
  {
    if (a6 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (a6 == 2 || ((a6 ^ a3) & 1) != 0)
    {
      return result;
    }
  }

  if ((a3 & 0xFF00) == 0x200)
  {
    if (BYTE1(a6) != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (BYTE1(a6) == 2 || ((((a3 & 0x100) == 0) ^ (a6 >> 8)) & 1) == 0)
    {
      return result;
    }
  }

  if ((a3 & 0xFF0000) == 0x20000)
  {
    if (BYTE2(a6) != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (BYTE2(a6) == 2 || ((((a3 & 0x10000) == 0) ^ HIWORD(a6)) & 1) == 0)
    {
      return result;
    }
  }

  v10 = HIBYTE(a6);
  if (HIBYTE(a3) == 2)
  {
    if (v10 != 2)
    {
      return 0;
    }
  }

  else if (v10 == 2 || ((v10 ^ HIBYTE(a3)) & 1) != 0)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_100268CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (BYTE4(a2) <= 1u)
  {
    if (BYTE4(a2))
    {
      if (BYTE4(a4) == 1)
      {
        return sub_100034D74(a1, a3) & (a2 == a4);
      }

      return 0;
    }

    if (BYTE4(a4))
    {
      return 0;
    }
  }

  else
  {
    if (BYTE4(a2) != 2)
    {
      if (BYTE4(a2) == 3)
      {
        if (BYTE4(a4) == 3)
        {
          return sub_100034D74(a1, a3) & (a2 == a4);
        }
      }

      else if (BYTE4(a4) == 4)
      {
        return sub_100034D74(a1, a3) & (a2 == a4);
      }

      return 0;
    }

    if (BYTE4(a4) != 2)
    {
      return 0;
    }
  }

  return sub_100034D74(a1, a3) & (a2 == a4);
}

BOOL sub_100268D78(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 40);
  v7 = *(a2 + 40);
  if (v6)
  {
    if (!v7 || (*(a1 + 32) != *(a2 + 32) || v6 != v7) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if ((*(a1 + 48) ^ *(a2 + 48)) & 1) != 0 || ((*(a1 + 49) ^ *(a2 + 49)))
  {
    return 0;
  }

  v9 = *(a1 + 64);
  v10 = *(a2 + 64);
  if (v9)
  {
    if (!v10 || (*(a1 + 56) != *(a2 + 56) || v9 != v10) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v11 = *(a1 + 80);
  v12 = *(a2 + 80);
  if (!v11)
  {
    return !v12;
  }

  return v12 && (*(a1 + 72) == *(a2 + 72) && v11 == v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
}

uint64_t sub_100268EC0(void *a1, void *a2)
{
  v4 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = (&v67 - v11);
  v13 = sub_1001BC5A8(&qword_1005241A8, &qword_1004550A8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v67 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_38;
  }

  v17 = a1[3];
  v18 = a2[3];
  if (v17)
  {
    if (!v18 || (a1[2] != a2[2] || v17 != v18) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else if (v18)
  {
    goto LABEL_38;
  }

  if ((sub_10002E77C(a1[4], a2[4], type metadata accessor for HostedRoutingItem, type metadata accessor for HostedRoutingItem, sub_10001E4EC, type metadata accessor for HostedRoutingItem) & 1) == 0)
  {
    goto LABEL_38;
  }

  v68 = type metadata accessor for HostedRoutingSourceSession(0);
  v19 = v68[7];
  v20 = *(v13 + 48);
  sub_10001D9AC(a1 + v19, v16, &qword_100523640, qword_100451520);
  v21 = a2 + v19;
  v22 = v20;
  sub_10001D9AC(v21, &v16[v20], &qword_100523640, qword_100451520);
  v23 = *(v5 + 48);
  if (v23(v16, 1, v4) == 1)
  {
    if (v23(&v16[v22], 1, v4) == 1)
    {
      sub_1000038A4(v16, &qword_100523640, qword_100451520);
      goto LABEL_20;
    }

LABEL_17:
    v24 = &qword_1005241A8;
    v25 = &qword_1004550A8;
    v26 = v16;
LABEL_18:
    sub_1000038A4(v26, v24, v25);
    goto LABEL_38;
  }

  sub_10001D9AC(v16, v12, &qword_100523640, qword_100451520);
  if (v23(&v16[v22], 1, v4) == 1)
  {
    sub_10002181C(v12, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
    goto LABEL_17;
  }

  sub_100032E08(&v16[v22], v8, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
  v27 = sub_1002695FC(v12, v8);
  sub_10002181C(v8, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
  sub_10002181C(v12, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
  sub_1000038A4(v16, &qword_100523640, qword_100451520);
  if ((v27 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_20:
  v28 = v68;
  v29 = v68[8];
  if ((static RoutingControls.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_38;
  }

  v30 = v28[9];
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 8);
  v33 = (a2 + v30);
  v34 = v33[1];
  if (v32)
  {
    if (!v34 || (*v31 != *v33 || v32 != v34) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else if (v34)
  {
    goto LABEL_38;
  }

  v35 = v28[10];
  v36 = (a1 + v35);
  v37 = *(a1 + v35 + 4);
  v38 = (a2 + v35);
  v39 = *(a2 + v35 + 4);
  if (v37)
  {
    if (!v39)
    {
      goto LABEL_38;
    }
  }

  else
  {
    if (*v36 != *v38)
    {
      LOBYTE(v39) = 1;
    }

    if (v39)
    {
      goto LABEL_38;
    }
  }

  if (*(a1 + v28[11]) != *(a2 + v28[11]) || *(a1 + v28[12]) != *(a2 + v28[12]) || *(a1 + v28[13]) != *(a2 + v28[13]) || *(a1 + v28[14]) != *(a2 + v28[14]))
  {
    goto LABEL_38;
  }

  v42 = a1 + v28[15];
  v43 = *(v42 + 3);
  v44 = *(v42 + 4);
  v95 = *(v42 + 10);
  v45 = *(v42 + 2);
  v46 = *(v42 + 1);
  v94[3] = *(v42 + 3);
  v94[4] = v44;
  v47 = *(v42 + 1);
  v94[0] = *v42;
  v94[1] = v47;
  v94[2] = v45;
  v48 = a2 + v28[15];
  v49 = *(v48 + 4);
  v50 = *(v48 + 1);
  v96[0] = *v48;
  v96[1] = v50;
  v51 = *(v48 + 2);
  v96[3] = *(v48 + 3);
  v96[4] = v49;
  v96[2] = v51;
  v52 = *(v42 + 4);
  v91 = v43;
  v92 = v52;
  v97 = *(v48 + 10);
  v53 = v94[0];
  v93 = *(v42 + 10);
  v89 = v46;
  v90 = v45;
  if (*(&v94[0] + 1))
  {
    if (*(&v96[0] + 1))
    {
      v69 = v96[0];
      v54 = *(v48 + 4);
      v72 = *(v48 + 3);
      v73 = v54;
      v74 = *(v48 + 10);
      v55 = *(v48 + 2);
      v70 = *(v48 + 1);
      v71 = v55;
      v82 = v74;
      v80 = v72;
      v81 = v54;
      v78 = v70;
      v79 = v55;
      v77 = v96[0];
      v56 = *(v42 + 4);
      v98[3] = *(v42 + 3);
      v98[4] = v56;
      v99 = *(v42 + 10);
      v57 = *(v42 + 2);
      v98[1] = *(v42 + 1);
      v98[2] = v57;
      v98[0] = v94[0];
      v58 = sub_100268D78(v98, &v77);
      sub_10001D9AC(v94, v75, &qword_100523B20, &unk_1004519F0);
      sub_10001D9AC(v96, v75, &qword_100523B20, &unk_1004519F0);
      sub_1000038A4(&v69, &qword_100523B20, &unk_1004519F0);
      v75[0] = v53;
      v75[3] = v91;
      v75[4] = v92;
      v76 = v93;
      v75[2] = v90;
      v75[1] = v89;
      sub_1000038A4(v75, &qword_100523B20, &unk_1004519F0);
      if (!v58)
      {
        goto LABEL_38;
      }

      goto LABEL_47;
    }

    goto LABEL_45;
  }

  if (*(&v96[0] + 1))
  {
LABEL_45:
    v77 = v94[0];
    v59 = *(v42 + 4);
    v80 = *(v42 + 3);
    v81 = v59;
    v60 = *(v42 + 10);
    v61 = *(v42 + 2);
    v78 = *(v42 + 1);
    v79 = v61;
    v82 = v60;
    v83 = v96[0];
    v88 = *(v48 + 10);
    v62 = *(v48 + 4);
    v86 = *(v48 + 3);
    v87 = v62;
    v63 = *(v48 + 2);
    v84 = *(v48 + 1);
    v85 = v63;
    sub_10001D9AC(v94, v98, &qword_100523B20, &unk_1004519F0);
    sub_10001D9AC(v96, v98, &qword_100523B20, &unk_1004519F0);
    v24 = &unk_1005241B0;
    v25 = &unk_1004550B0;
    v26 = &v77;
    goto LABEL_18;
  }

  v77 = *&v94[0];
  v64 = *(v42 + 4);
  v80 = *(v42 + 3);
  v81 = v64;
  v82 = *(v42 + 10);
  v65 = *(v42 + 2);
  v78 = *(v42 + 1);
  v79 = v65;
  sub_10001D9AC(v94, v98, &qword_100523B20, &unk_1004519F0);
  sub_10001D9AC(v96, v98, &qword_100523B20, &unk_1004519F0);
  sub_1000038A4(&v77, &qword_100523B20, &unk_1004519F0);
LABEL_47:
  if (*(a1 + v28[16]) == *(a2 + v28[16]) && *(a1 + v28[17]) == *(a2 + v28[17]))
  {
    v66 = v68[18];
    v40 = static Date.== infix(_:_:)();
    return v40 & 1;
  }

LABEL_38:
  v40 = 0;
  return v40 & 1;
}

uint64_t sub_1002695FC(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      goto LABEL_33;
    }

    v6 = *a1;
    v7 = *a1 == *a2 && v4 == v5;
    if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  else if (v5)
  {
    goto LABEL_33;
  }

  v8 = a1[3];
  v9 = *(a2 + 24);
  if (v8)
  {
    if (!v9 || (a1[2] != *(a2 + 16) || v8 != v9) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  else if (v9)
  {
    goto LABEL_33;
  }

  v10 = a1[5];
  v11 = *(a2 + 40);
  if (v10)
  {
    if (!v11 || (a1[4] != *(a2 + 32) || v10 != v11) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  else if (v11)
  {
    goto LABEL_33;
  }

  if ((sub_100268CE4(a1[6], *(a1 + 14) | (*(a1 + 60) << 32), *(a2 + 48), *(a2 + 56) | (*(a2 + 60) << 32)) & 1) == 0)
  {
    goto LABEL_33;
  }

  v12 = *(a2 + 64);
  if (!a1[8])
  {
    if (!v12)
    {
      goto LABEL_30;
    }

LABEL_33:
    v18 = 0;
    return v18 & 1;
  }

  v21 = a1[8];
  if (!v12)
  {
    goto LABEL_33;
  }

  v20 = *(a2 + 64);
  type metadata accessor for ArtworkToken();
  sub_100017F84(&qword_1005241C0, &type metadata accessor for ArtworkToken);

  v13 = dispatch thunk of static Equatable.== infix(_:_:)();

  if ((v13 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_30:
  v14 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  v15 = v14[9];
  if ((static RoutingSession.NowPlayingInfo.PlaybackInfo.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_33;
  }

  v16 = v14[10];
  if ((static RoutingSession.NowPlayingInfo.TrackInfo.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_33;
  }

  v17 = v14[11];
  v18 = sub_100268BA8(*(a1 + v17), *(a1 + v17 + 8), *(a1 + v17 + 16), *(a2 + v17), *(a2 + v17 + 8), *(a2 + v17 + 16));
  return v18 & 1;
}

uint64_t sub_100269804(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_10026983C()
{
  result = qword_100523AF0;
  if (!qword_100523AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100523AF0);
  }

  return result;
}

void sub_1002698C0(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v6 = [a1 origin];
  if (v6)
  {
    v7 = objc_opt_self();
    v8 = v6;
    v9 = [v7 server];
    v10 = [v9 nowPlayingServer];

    v11 = [v10 originClientForOrigin:v8];
    if (!v11 || (v12 = [v11 deviceInfo], v11, !v12))
    {

      goto LABEL_8;
    }

    if ([v12 isAirPlayActive])
    {
      v13 = [v12 leaderDeviceInfo];

      v12 = v13;
      if (!v13)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    v15 = [objc_allocWithZone(MRDeviceInfoOutputDevice) initWithDeviceInfo:v12];
    v103 = v8;
    v104 = a3;
    v94 = v4;
    if (![v4 isLocalEndpoint])
    {
      if ([v4 supportsVisualProxyGroupPlayer] && (v57 = objc_msgSend(v15, "uid")) != 0)
      {
        v58 = v57;
        v92 = v15;
        v17 = a2 & 0xFFFFFFFFFFFFFF8;
        if (a2 >> 62)
        {
          v59 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v59 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v60 = 0;
        do
        {
          if (v59 == v60)
          {

LABEL_64:
            v102 = 1;
            goto LABEL_66;
          }

          if ((a2 & 0xC000000000000001) != 0)
          {
            v61 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v60 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_89;
            }

            v61 = *(a2 + 8 * v60 + 32);
          }

          v62 = v61;
          if (__OFADD__(v60, 1))
          {
            goto LABEL_88;
          }

          v15 = [v61 containsUID:v58];

          ++v60;
        }

        while ((v15 & 1) == 0);

LABEL_65:
        v102 = 0;
LABEL_66:
        v15 = v92;
      }

      else
      {

        v102 = 0;
      }

      v63 = [v12 name];
      if (v63)
      {
        v64 = v63;
        v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v67 = v66;
      }

      else
      {
        v65 = 0;
        v67 = 0xE000000000000000;
      }

      v68 = [v12 deviceUID];
      if (v68)
      {
        v69 = v68;
        v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v96 = v71;
        v98 = v70;
      }

      else
      {
        v96 = 0;
        v98 = 0;
      }

      v72 = [v12 modelID];
      v100 = v67;
      if (v72)
      {
        v73 = v72;
        v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v75 = v74;
      }

      else
      {
        v93 = 0;
        v75 = 0;
      }

      type metadata accessor for Symbols();
      v76 = v15;
      v77 = sub_100018E6C();
      v79 = v78;
      v81 = v80;

      v82 = sub_10001D08C(v77, v79, v81);
      v84 = v83;
      sub_100019550(v77, v79, v81);
      v85 = [v12 localizedModelName];
      if (v85)
      {
        v86 = v85;
        v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v89 = v88;
      }

      else
      {
        v87 = 0;
        v89 = 0;
      }

      v90 = [v12 isPersonalDevice];

      v106 = v65;
      v107 = v100;
      v108 = v82;
      v109 = v84;
      *&v110 = v87;
      *(&v110 + 1) = v89;
      v111 = v102;
      v112 = v90;
      *&v113 = v93;
      *(&v113 + 1) = v75;
      *&v114 = v98;
      *(&v114 + 1) = v96;
      v115 = v65;
      v116 = v100;
      v117 = v82;
      v118 = v84;
      v119 = v87;
      v120 = v89;
      LOBYTE(v121) = v102;
      HIBYTE(v121) = v90;
      v122 = v93;
      v123 = v75;
      v124 = v98;
      v125 = v96;
      goto LABEL_80;
    }

    v92 = v15;
    v17 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 >> 62)
    {
      v53 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v53 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v54 = 0;
    while (1)
    {
      if (v53 == v54)
      {

        goto LABEL_65;
      }

      if ((a2 & 0xC000000000000001) != 0)
      {
        v55 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v54 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_87;
        }

        v55 = *(a2 + 8 * v54 + 32);
      }

      v56 = v55;
      if (__OFADD__(v54, 1))
      {
        break;
      }

      v15 = [v55 deviceType];

      ++v54;
      if (v15 == 1)
      {

        goto LABEL_64;
      }
    }

LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

LABEL_8:
  v14 = [v4 designatedGroupLeader];
  if (!v14)
  {

    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0uLL;
    v33 = 0uLL;
    v34 = 0uLL;
    goto LABEL_83;
  }

  v15 = v14;
  v103 = v6;
  v104 = a3;
  if ([v4 supportsVisualProxyGroupPlayer])
  {
    v16 = [v15 uid];
    if (v16)
    {
      v12 = v16;
      v94 = v4;
      v17 = a2 & 0xFFFFFFFFFFFFFF8;
      if (!(a2 >> 62))
      {
        v18 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_90:
      v18 = _CocoaArrayWrapper.endIndex.getter();
LABEL_13:
      v19 = 0;
      while (v18 != v19)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v19 >= *(v17 + 16))
          {
            goto LABEL_85;
          }

          v20 = *(a2 + 8 * v19 + 32);
        }

        v21 = v20;
        if (__OFADD__(v19, 1))
        {
          __break(1u);
LABEL_85:
          __break(1u);
          goto LABEL_86;
        }

        v22 = [v20 containsUID:v12];

        ++v19;
        if (v22)
        {

          v101 = 0;
          v4 = v94;
          goto LABEL_23;
        }
      }

      v101 = 1;
      v4 = v94;
      goto LABEL_23;
    }
  }

  v101 = 0;
LABEL_23:
  v23 = [v15 name];
  if (v23)
  {
    v24 = v23;
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v97 = v26;
    v99 = v25;
  }

  else
  {
    v97 = 0xE000000000000000;
    v99 = 0;
  }

  v35 = [v15 uid];
  if (v35)
  {
    v36 = v35;
    v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;
  }

  else
  {
    v95 = 0;
    v38 = 0;
  }

  v39 = v4;
  v40 = [v15 modelID];
  if (v40)
  {
    v41 = v40;
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;
  }

  else
  {
    v42 = 0;
    v44 = 0;
  }

  type metadata accessor for Symbols();
  v45 = sub_100018E6C();
  v47 = v46;
  v49 = v48;
  v50 = sub_10001D08C(v45, v46, v48);
  v52 = v51;

  sub_100019550(v45, v47, v49);
  v106 = v99;
  v107 = v97;
  v108 = v50;
  v109 = v52;
  v110 = 0uLL;
  v111 = v101;
  v112 = 0;
  *&v113 = v42;
  *(&v113 + 1) = v44;
  *&v114 = v95;
  *(&v114 + 1) = v38;
  v115 = v99;
  v116 = v97;
  v117 = v50;
  v118 = v52;
  v119 = 0;
  v120 = 0;
  v121 = v101;
  v122 = v42;
  v123 = v44;
  v124 = v95;
  v125 = v38;
LABEL_80:
  sub_10026A204(&v106, v105);
  sub_10026A23C(&v115);
  v34 = v114;
  v33 = v113;
  v32 = v110;
  v29 = v108;
  v30 = v109;
  v27 = v106;
  v28 = v107;
  v91 = 256;
  if (!v112)
  {
    v91 = 0;
  }

  v31 = v91 | v111;
  a3 = v104;
LABEL_83:
  *a3 = v27;
  *(a3 + 8) = v28;
  *(a3 + 16) = v29;
  *(a3 + 24) = v30;
  *(a3 + 32) = v32;
  *(a3 + 48) = v31;
  *(a3 + 56) = v33;
  *(a3 + 72) = v34;
}

uint64_t sub_10026A0EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_10026A190(unint64_t result)
{
  if (result != 3)
  {
    return sub_1002540BC(result);
  }

  return result;
}

unint64_t sub_10026A1A0(unint64_t result)
{
  if (result != 3)
  {
    return sub_1002540AC(result);
  }

  return result;
}

unint64_t sub_10026A1B0()
{
  result = qword_100523B40;
  if (!qword_100523B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100523B40);
  }

  return result;
}

unint64_t sub_10026A26C()
{
  result = qword_10052C3E8[0];
  if (!qword_10052C3E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10052C3E8);
  }

  return result;
}

uint64_t sub_10026A2C0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614E6C6F626D7973 && a2 == 0xEA0000000000656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4E746375646F7270 && a2 == 0xEB00000000656D61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010043DE10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F737265507369 && a2 == 0xEE0074736F486C61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_10026A524@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1001BC5A8(&qword_1005241B8, &qword_1004550C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v29 - v8;
  v10 = a1[4];
  sub_1000326D8(a1, a1[3]);
  sub_10026A26C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100026A44(a1);
  }

  else
  {
    LOBYTE(v46[0]) = 0;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v13 = v12;
    v38 = a2;
    LOBYTE(v46[0]) = 1;
    v14 = KeyedDecodingContainer.decode(_:forKey:)();
    v39 = v15;
    v37 = v14;
    LOBYTE(v46[0]) = 2;
    v36 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v17 = v16;
    LOBYTE(v46[0]) = 3;
    v53 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v46[0]) = 4;
    v35 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v46[0]) = 5;
    v33 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v34 = v18;
    v54 = 6;
    v32 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v31 = v19;
    v20 = v53 & 1;
    v30 = v53 & 1;
    v53 = v35 & 1;
    (*(v6 + 8))(v9, v5);
    *&v40 = v11;
    v21 = v37;
    *(&v40 + 1) = v13;
    *&v41 = v37;
    v22 = v39;
    *(&v41 + 1) = v39;
    *&v42 = v36;
    *(&v42 + 1) = v17;
    LOBYTE(v43) = v20;
    BYTE1(v43) = v53;
    *(&v43 + 1) = v33;
    *&v44 = v34;
    v23 = v32;
    v24 = v31;
    *(&v44 + 1) = v32;
    v45 = v31;
    sub_10026A204(&v40, v46);
    sub_100026A44(a1);
    v46[0] = v11;
    v46[1] = v13;
    v46[2] = v21;
    v46[3] = v22;
    v46[4] = v36;
    v46[5] = v17;
    v47 = v30;
    v48 = v53;
    v49 = v33;
    v50 = v34;
    v51 = v23;
    v52 = v24;
    result = sub_10026A23C(v46);
    v26 = v43;
    v27 = v38;
    *(v38 + 32) = v42;
    *(v27 + 48) = v26;
    *(v27 + 64) = v44;
    *(v27 + 80) = v45;
    v28 = v41;
    *v27 = v40;
    *(v27 + 16) = v28;
  }

  return result;
}

Swift::Int sub_10026A9C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001BC5A8(&qword_100524160, &qword_100455078);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v34 = v1;
    v35 = a1 + 32;
    v36 = v3;
    while (1)
    {
      v9 = v35 + 24 * v4;
      v11 = *v9;
      v10 = *(v9 + 8);
      v12 = *(v9 + 16);
      v13 = *(v3 + 40);
      Hasher.init(_seed:)();
      if (v12 <= 1)
      {
        break;
      }

      if (v12 == 2)
      {
        v14 = 3;
LABEL_12:
        Hasher._combine(_:)(v14);

        String.hash(into:)();
        goto LABEL_14;
      }

      Hasher._combine(_:)(0);
LABEL_14:
      result = Hasher._finalize()();
      v16 = -1 << *(v3 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      v19 = *(v5 + 8 * (v17 >> 6));
      v20 = 1 << v17;
      v21 = *(v3 + 48);
      if (((1 << v17) & v19) != 0)
      {
        v22 = ~v16;
        v24 = v12 == 3 && (v10 | v11) == 0;
        do
        {
          v25 = v21 + 24 * v17;
          result = *v25;
          v26 = *(v25 + 8);
          v27 = *(v25 + 16);
          if (v27 > 1)
          {
            if (v27 == 2)
            {
              if (v12 == 2)
              {
                v28 = result == v11 && v26 == v10;
                if (v28 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
                {
                  v6 = v11;
                  v7 = v10;
                  v8 = 2;
LABEL_4:
                  sub_10002349C(v6, v7, v8);
                  goto LABEL_5;
                }
              }
            }

            else if (v24)
            {
              goto LABEL_5;
            }
          }

          else if (v27)
          {
            if (v12 == 1)
            {
              v29 = result == v11 && v26 == v10;
              if (v29 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
              {
                v6 = v11;
                v7 = v10;
                v8 = 1;
                goto LABEL_4;
              }
            }
          }

          else if (!v12 && result == v11)
          {
            goto LABEL_5;
          }

          v17 = (v17 + 1) & v22;
          v18 = v17 >> 6;
          v19 = *(v5 + 8 * (v17 >> 6));
          v20 = 1 << v17;
        }

        while ((v19 & (1 << v17)) != 0);
        v3 = v36;
        v21 = *(v36 + 48);
      }

      *(v5 + 8 * v18) = v19 | v20;
      v30 = v21 + 24 * v17;
      *v30 = v11;
      *(v30 + 8) = v10;
      *(v30 + 16) = v12;
      v31 = *(v3 + 16);
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v33;
LABEL_5:
      ++v4;
      v3 = v36;
      if (v4 == v34)
      {
        return v3;
      }
    }

    if (!v12)
    {
      Hasher._combine(_:)(1uLL);
      Hasher._combine(_:)(v11);
      goto LABEL_14;
    }

    v14 = 2;
    goto LABEL_12;
  }

  return &_swiftEmptySetSingleton;
}

unint64_t sub_10026AC70()
{
  result = qword_100523C40;
  if (!qword_100523C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100523C40);
  }

  return result;
}

unint64_t sub_10026ACCC()
{
  result = qword_100523C50;
  if (!qword_100523C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100523C50);
  }

  return result;
}

unint64_t sub_10026AD24()
{
  result = qword_100523C58;
  if (!qword_100523C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100523C58);
  }

  return result;
}

unint64_t sub_10026AD7C()
{
  result = qword_100523C60;
  if (!qword_100523C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100523C60);
  }

  return result;
}

unint64_t sub_10026ADD4()
{
  result = qword_100523C68;
  if (!qword_100523C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100523C68);
  }

  return result;
}

unint64_t sub_10026AE2C()
{
  result = qword_100523C70;
  if (!qword_100523C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100523C70);
  }

  return result;
}

unint64_t sub_10026AE8C()
{
  result = qword_100523C78;
  if (!qword_100523C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100523C78);
  }

  return result;
}

unint64_t sub_10026AEE4()
{
  result = qword_100523C80;
  if (!qword_100523C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100523C80);
  }

  return result;
}

unint64_t sub_10026AF40()
{
  result = qword_100523C90;
  if (!qword_100523C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100523C90);
  }

  return result;
}

unint64_t sub_10026AF98()
{
  result = qword_100523C98;
  if (!qword_100523C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100523C98);
  }

  return result;
}

unint64_t sub_10026B038()
{
  result = qword_100523CA8;
  if (!qword_100523CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100523CA8);
  }

  return result;
}

unint64_t sub_10026B0D8()
{
  result = qword_100523CB8;
  if (!qword_100523CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100523CB8);
  }

  return result;
}

unint64_t sub_10026B130()
{
  result = qword_100523CC0;
  if (!qword_100523CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100523CC0);
  }

  return result;
}

unint64_t sub_10026B188()
{
  result = qword_100523CC8;
  if (!qword_100523CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100523CC8);
  }

  return result;
}

unint64_t sub_10026B228()
{
  result = qword_100523CD8;
  if (!qword_100523CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100523CD8);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for RouteRelevance.Classification(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10026B330(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10026B378(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_10026B3BC(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

__n128 sub_10026B3E4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_10026B3F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1FA && *(a1 + 18))
  {
    return (*a1 + 506);
  }

  v3 = ((((*(a1 + 16) >> 2) & 0x180 | (*(a1 + 16) >> 1)) >> 6) & 0xFFFFFE07 | (8 * ((*(a1 + 16) >> 1) & 0x3F))) ^ 0x1FF;
  if (v3 >= 0x1F9)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10026B458(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1F9)
  {
    *(result + 16) = 0;
    *result = a2 - 506;
    *(result + 8) = 0;
    if (a3 >= 0x1FA)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1FA)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (((-a2 & 0x1F8) >> 2) - (a2 << 7)) & 0xFE | (((-a2 >> 1) & 3) << 9);
    }
  }

  return result;
}

uint64_t sub_10026B500(uint64_t a1)
{
  v1 = (((*(a1 + 16) >> 2) & 0x180 | (*(a1 + 16) >> 1)) >> 6) & 0xFFFFFE07 | (8 * ((*(a1 + 16) >> 1) & 0x3F));
  v2 = v1 ^ 0x1FF;
  v3 = 512 - v1;
  if (v2 >= 0x1F9)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10026B534(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1F9 && *(a1 + 18))
  {
    return (*a1 + 505);
  }

  v3 = ((((*(a1 + 16) >> 2) & 0x180 | (*(a1 + 16) >> 1)) >> 6) & 0xFFFFFE07 | (8 * ((*(a1 + 16) >> 1) & 0x3F))) ^ 0x1FF;
  if (v3 >= 0x1F9)
  {
    v3 = -1;
  }

  if (v3 + 1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10026B594(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1F8)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 505;
    if (a3 >= 0x1F9)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1F9)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      v3 = ((a2 ^ 0x1FF) << 6) | ((a2 ^ 0x1FF) >> 3);
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (4 * v3) & 0x600 | (2 * (v3 & 0x7F));
    }
  }

  return result;
}

uint64_t sub_10026B5F4(uint64_t result, unsigned int a2)
{
  if (a2 > 0x1F9)
  {
    *(result + 16) = 0;
    *result = a2 - 506;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = (((-a2 & 0x1F8) >> 2) - (a2 << 7)) & 0xFE | (((-a2 >> 1) & 3) << 9);
  }

  return result;
}

uint64_t sub_10026B658(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FEF && *(a1 + 18))
  {
    return (*a1 + 16367);
  }

  v3 = ((*(a1 + 16) >> 11) | (32 * ((*(a1 + 16) >> 2) & 0x180 | (*(a1 + 16) >> 1)))) ^ 0x3FFF;
  if (v3 >= 0x3FEE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10026B6C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FEE)
  {
    *(result + 16) = 0;
    *result = a2 - 16367;
    *(result + 8) = 0;
    if (a3 >= 0x3FEF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FEF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 5) & 0x1FF) - (a2 << 9);
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (4 * v3) & 0xFE00 | (2 * (v3 & 0x7F));
    }
  }

  return result;
}

uint64_t sub_10026B73C(uint64_t result, unsigned int a2)
{
  if (a2 < 0x11)
  {
    *(result + 16) = *(result + 16) & 0x101 | (a2 << 11);
  }

  else
  {
    *result = a2 - 17;
    *(result + 8) = 0;
    *(result + 16) = -30720;
  }

  return result;
}

__n128 sub_10026B778(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10026B78C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
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

uint64_t sub_10026B7D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10026B848()
{
  sub_10026BC50(319, &qword_100523D48);
  if (v0 <= 0x3F)
  {
    sub_10026BA04(319, &qword_100523D50, &type metadata accessor for RoutingItem.SelectionIndicator, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_10026BA04(319, &qword_100523D58, &type metadata accessor for RoutingItem.Action.Kind, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        sub_10026BC50(319, &qword_100523D60);
        if (v3 <= 0x3F)
        {
          sub_10026BA04(319, &unk_100523D68, &type metadata accessor for RoutingItem.Attributes, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10026BA04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_10026BA90()
{
  sub_10026BA04(319, &qword_100523E20, type metadata accessor for HostedRoutingItem, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_10026BA04(319, &qword_100523E28, type metadata accessor for HostedRoutingSession.NowPlayingInfo, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      type metadata accessor for RoutingControls();
      if (v2 <= 0x3F)
      {
        sub_10026BC50(319, &qword_100523D48);
        if (v3 <= 0x3F)
        {
          sub_10026BC50(319, &qword_100523D60);
          if (v4 <= 0x3F)
          {
            sub_10026BC50(319, &unk_100523E30);
            if (v5 <= 0x3F)
            {
              type metadata accessor for Date();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_10026BC50(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

__n128 sub_10026BC9C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10026BCA8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10026BCF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_10026BD4C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_10026BD64(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

void sub_10026BDB8()
{
  sub_10026BA04(319, &qword_100523E20, type metadata accessor for HostedRoutingItem, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_10026BA04(319, &qword_100523E28, type metadata accessor for HostedRoutingSession.NowPlayingInfo, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      type metadata accessor for RoutingControls();
      if (v2 <= 0x3F)
      {
        sub_10026BC50(319, &qword_100523D48);
        if (v3 <= 0x3F)
        {
          sub_10026BC50(319, &qword_100523D60);
          if (v4 <= 0x3F)
          {
            type metadata accessor for Date();
            if (v5 <= 0x3F)
            {
              sub_10026BC50(319, &unk_100523E30);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_10026BF6C()
{
  sub_10026BC50(319, &qword_100523D48);
  if (v0 <= 0x3F)
  {
    sub_10026BA04(319, &unk_100524078, &type metadata accessor for ArtworkToken, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo();
      if (v2 <= 0x3F)
      {
        type metadata accessor for RoutingSession.NowPlayingInfo.TrackInfo();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void *sub_10026C074(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 5) = *(a2 + 5);
  *result = v2;
  return result;
}

uint64_t sub_10026C088(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 13))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 12);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10026C0D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 13) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

__n128 sub_10026C130(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_10026C144(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 20))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10026C1A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 20) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 20) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 sub_10026C214(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10026C238(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_10026C280(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10026C2E4()
{
  sub_10026BA04(319, &qword_100524118, type metadata accessor for HostedRoutingSession, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_10026BA04(319, &unk_100524120, type metadata accessor for HostedRoutingSession, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for HostedRoutingSession.HostInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HostedRoutingSession.HostInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10026C574()
{
  result = qword_10052E840[0];
  if (!qword_10052E840[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10052E840);
  }

  return result;
}

unint64_t sub_10026C5CC()
{
  result = qword_10052EA50[0];
  if (!qword_10052EA50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10052EA50);
  }

  return result;
}

unint64_t sub_10026C624()
{
  result = qword_10052EC60[0];
  if (!qword_10052EC60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10052EC60);
  }

  return result;
}

unint64_t sub_10026C67C()
{
  result = qword_10052EF70[0];
  if (!qword_10052EF70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10052EF70);
  }

  return result;
}

unint64_t sub_10026C6D4()
{
  result = qword_10052F180[0];
  if (!qword_10052F180[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10052F180);
  }

  return result;
}

unint64_t sub_10026C72C()
{
  result = qword_10052F290;
  if (!qword_10052F290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10052F290);
  }

  return result;
}

unint64_t sub_10026C784()
{
  result = qword_10052F298[0];
  if (!qword_10052F298[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10052F298);
  }

  return result;
}

unint64_t sub_10026C7DC()
{
  result = qword_10052F320;
  if (!qword_10052F320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10052F320);
  }

  return result;
}

unint64_t sub_10026C834()
{
  result = qword_10052F328[0];
  if (!qword_10052F328[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10052F328);
  }

  return result;
}

unint64_t sub_10026C88C()
{
  result = qword_10052F3B0;
  if (!qword_10052F3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10052F3B0);
  }

  return result;
}

unint64_t sub_10026C8E4()
{
  result = qword_10052F3B8[0];
  if (!qword_10052F3B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10052F3B8);
  }

  return result;
}

unint64_t sub_10026C93C()
{
  result = qword_10052F440;
  if (!qword_10052F440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10052F440);
  }

  return result;
}

unint64_t sub_10026C994()
{
  result = qword_10052F448[0];
  if (!qword_10052F448[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10052F448);
  }

  return result;
}

unint64_t sub_10026C9EC()
{
  result = qword_10052F4D0;
  if (!qword_10052F4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10052F4D0);
  }

  return result;
}

unint64_t sub_10026CA44()
{
  result = qword_10052F4D8[0];
  if (!qword_10052F4D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10052F4D8);
  }

  return result;
}

unint64_t sub_10026CA9C()
{
  result = qword_10052F560;
  if (!qword_10052F560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10052F560);
  }

  return result;
}

unint64_t sub_10026CAF4()
{
  result = qword_10052F568[0];
  if (!qword_10052F568[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10052F568);
  }

  return result;
}

uint64_t sub_10026CBE8(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (!a3)
    {
      _StringGuts.grow(_:)(27);

      v5 = 0xD000000000000018;
      goto LABEL_12;
    }

LABEL_11:
    _StringGuts.grow(_:)(24);

    v5 = 0xD000000000000015;
    goto LABEL_12;
  }

  if (a3 == 2)
  {
    goto LABEL_11;
  }

  if (a3 == 3)
  {
    _StringGuts.grow(_:)(21);

    v5 = 0xD000000000000012;
LABEL_12:
    v9 = v5;
    v7._countAndFlagsBits = a1;
    v7._object = a2;
    String.append(_:)(v7);
    v8._countAndFlagsBits = 41;
    v8._object = 0xE100000000000000;
    String.append(_:)(v8);
    return v9;
  }

  if (a1 | a2)
  {
    return 0x416C65636E61632ELL;
  }

  else
  {
    return 0x656E6F6E2ELL;
  }
}

uint64_t sub_10026CD80(uint64_t a1, uint64_t a2, unint64_t a3, unsigned __int8 a4)
{
  _StringGuts.grow(_:)(24);
  v7._countAndFlagsBits = 0x28726F727245;
  v7._object = 0xE600000000000000;
  String.append(_:)(v7);
  sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
  _print_unlocked<A, B>(_:_:)();
  v8._countAndFlagsBits = 0x756C6F736572202CLL;
  v8._object = 0xED00003A6E6F6974;
  String.append(_:)(v8);
  v9._countAndFlagsBits = sub_10026CBE8(a2, a3, a4);
  String.append(_:)(v9);

  v10._countAndFlagsBits = 41;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  return 0;
}

uint64_t sub_10026CEA0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>, double a7@<D0>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 25) = a5;
  *(a6 + 32) = a7;
  return result;
}

uint64_t sub_10026D044()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_10026D0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 > 5u)
  {
    if (a5 > 8u)
    {
      if (a5 != 9 && a5 != 10 && a5 != 11)
      {
        return result;
      }
    }

    else if (a5 != 6 && a5 != 7 && a5 != 8)
    {
      return result;
    }
  }

  else
  {
    if (a5 >= 4u)
    {
      if (a5 != 4 && a5 != 5)
      {
        return result;
      }
    }

    else
    {
    }
  }
}

uint64_t sub_10026D1C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for RoutingEvent(0);
  v9 = (a4 + v8[6]);
  *v9 = 0;
  v9[1] = 0;
  *(a4 + 48) = *(a1 + 48);
  v10 = *(a1 + 32);
  *(a4 + 16) = *(a1 + 16);
  *(a4 + 32) = v10;
  *a4 = *a1;
  v11 = v8[5];
  v12 = type metadata accessor for RoutingSessionConfiguration.Attribution();
  result = (*(*(v12 - 8) + 32))(a4 + v11, a2, v12);
  *(a4 + v8[7]) = a3;
  return result;
}

uint64_t sub_10026D4AC(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 2);
  v13[0] = *(a1 + 1);
  v13[1] = v6;
  v14 = *(a1 + 48);
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 2);
  v15[0] = *(a2 + 1);
  v15[1] = v9;
  v16 = *(a2 + 48);
  if (v4 == v7 && v5 == v8 || (v10 = _stringCompareWithSmolCheck(_:_:expecting:)(), v11 = 0, (v10 & 1) != 0))
  {
    v11 = sub_100273050(v13, v15);
  }

  return v11 & 1;
}

uint64_t sub_10026D530(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (v5 = _stringCompareWithSmolCheck(_:_:expecting:)(), v6 = 0, (v5 & 1) != 0))
  {
    v7 = *(a1 + 32);
    v12[0] = *(a1 + 16);
    v12[1] = v7;
    v13 = *(a1 + 48);
    v8 = *(a2 + 32);
    v10[0] = *(a2 + 16);
    v10[1] = v8;
    v11 = *(a2 + 48);
    v6 = sub_100273050(v12, v10);
  }

  return v6 & 1;
}

Swift::Int sub_10026D5B8()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10026D5FC()
{
  v1 = *v0;
  v2 = v0[1];
  return String.hash(into:)();
}

Swift::Int sub_10026D604()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10026D648()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t sub_10026D694(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

void *sub_10026D738()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

void sub_10026D77C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  *(v1 + 64) = a1;
}

id sub_10026D8AC()
{
  v1 = OBJC_IVAR____TtCOV12mediaremoted18RoutingInteraction6Action14HandoffContext_request;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_10026D900(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCOV12mediaremoted18RoutingInteraction6Action14HandoffContext_request;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_10026D9D4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return sub_10001D9AC(v4 + v8, a4, a2, a3);
}

uint64_t sub_10026DA5C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  sub_10001CECC(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

char *sub_10026DB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(v5 + 48);
  v11 = *(v5 + 52);
  v12 = swift_allocObject();
  *(v12 + 7) = 0;
  *(v12 + 8) = 0;
  *(v12 + 6) = 0;
  v13 = OBJC_IVAR____TtCOV12mediaremoted18RoutingInteraction6Action14HandoffContext_expectedPlaybackState;
  v14 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState();
  (*(*(v14 - 8) + 56))(&v12[v13], 1, 1, v14);
  v15 = OBJC_IVAR____TtCOV12mediaremoted18RoutingInteraction6Action14HandoffContext_request;
  *&v12[v15] = [objc_allocWithZone(MRPlaybackSessionMigrateRequest) init];
  v16 = OBJC_IVAR____TtCOV12mediaremoted18RoutingInteraction6Action14HandoffContext_expectedNowPlayingInfo;
  v17 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  (*(*(v17 - 8) + 56))(&v12[v16], 1, 1, v17);
  *(v12 + 2) = a1;
  *(v12 + 3) = a2;
  *(v12 + 4) = a3;
  *(v12 + 5) = a4;
  return v12;
}

uint64_t sub_10026DC4C(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_10026DC9C(a1);
  return v5;
}

void *sub_10026DC9C(uint64_t *a1)
{
  v3 = v1;
  v5 = sub_1001BC5A8(&qword_100524250, &qword_100455118);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24 - v8;
  v1[6] = 0;
  v1[7] = 0;
  v1[8] = 0;
  v10 = OBJC_IVAR____TtCOV12mediaremoted18RoutingInteraction6Action14HandoffContext_expectedPlaybackState;
  v11 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState();
  (*(*(v11 - 8) + 56))(v3 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtCOV12mediaremoted18RoutingInteraction6Action14HandoffContext_request;
  *(v3 + v12) = [objc_allocWithZone(MRPlaybackSessionMigrateRequest) init];
  v13 = OBJC_IVAR____TtCOV12mediaremoted18RoutingInteraction6Action14HandoffContext_expectedNowPlayingInfo;
  v14 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  (*(*(v14 - 8) + 56))(v3 + v13, 1, 1, v14);
  v15 = a1[4];
  sub_1000326D8(a1, a1[3]);
  sub_100273DDC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v17 = v3[7];

    sub_1000038A4(v3 + OBJC_IVAR____TtCOV12mediaremoted18RoutingInteraction6Action14HandoffContext_expectedPlaybackState, &qword_100524248, &unk_100457C10);
    sub_1000038A4(v3 + OBJC_IVAR____TtCOV12mediaremoted18RoutingInteraction6Action14HandoffContext_expectedNowPlayingInfo, &qword_100523640, qword_100451520);
    type metadata accessor for RoutingInteraction.Action.HandoffContext(0);
    v18 = *(*v3 + 48);
    v19 = *(*v3 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v26 = 0;
    v3[2] = KeyedDecodingContainer.decode(_:forKey:)();
    v3[3] = v16;
    v25 = 1;
    v21 = KeyedDecodingContainer.decode(_:forKey:)();
    v23 = v22;
    (*(v6 + 8))(v9, v5);
    v3[4] = v21;
    v3[5] = v23;
  }

  sub_100026A44(a1);
  return v3;
}

uint64_t sub_10026DFC0()
{
  v1 = v0[2];
  v2 = v0[3];
  String.hash(into:)();
  v3 = v0[4];
  v4 = v0[5];

  return String.hash(into:)();
}

unint64_t sub_10026E000()
{
  if (*v0)
  {
    result = 0x6E6564496D657469;
  }

  else
  {
    result = 0xD000000000000016;
  }

  *v0;
  return result;
}

uint64_t sub_10026E04C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x800000010043E060 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6E6564496D657469 && a2 == 0xEE00726569666974)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_10026E13C(uint64_t a1)
{
  v2 = sub_100273DDC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10026E178(uint64_t a1)
{
  v2 = sub_100273DDC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10026E1B4(void *a1)
{
  v3 = v1;
  v5 = sub_1001BC5A8(&qword_100524258, &qword_100455120);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  sub_1000326D8(a1, a1[3]);
  sub_100273DDC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v3[2];
  v12 = v3[3];
  v16[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v14 = v3[4];
    v15 = v3[5];
    v16[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10026E334()
{
  countAndFlagsBits = v0->_countAndFlagsBits;
  _StringGuts.grow(_:)(27);

  v2._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x6C646E7562202D20;
  v3._object = 0xEB00000000203A65;
  String.append(_:)(v3);
  String.append(_:)(v0[1]);
  v4._countAndFlagsBits = 0x203A6D657469202CLL;
  v4._object = 0xE800000000000000;
  String.append(_:)(v4);
  String.append(_:)(v0[2]);
  v5._countAndFlagsBits = 62;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  return 60;
}

uint64_t sub_10026E440()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  sub_1000038A4(v0 + OBJC_IVAR____TtCOV12mediaremoted18RoutingInteraction6Action14HandoffContext_expectedPlaybackState, &qword_100524248, &unk_100457C10);
  sub_1000038A4(v0 + OBJC_IVAR____TtCOV12mediaremoted18RoutingInteraction6Action14HandoffContext_expectedNowPlayingInfo, &qword_100523640, qword_100451520);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

Swift::Int sub_10026E504()
{
  Hasher.init(_seed:)();
  (*(*v0 + 272))(v2);
  return Hasher._finalize()();
}

Swift::Int sub_10026E604()
{
  Hasher.init(_seed:)();
  (*(**v0 + 272))(v2);
  return Hasher._finalize()();
}

uint64_t sub_10026E66C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 264))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_10026E740(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == v3[3];
  if (v4 || (v5 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v5 & 1) != 0))
  {
    if (*(v2 + 32) == v3[4] && *(v2 + 40) == v3[5])
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

void sub_10026E7C4()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

uint64_t sub_10026E83C()
{
  v1 = *v0;
  _StringGuts.grow(_:)(17);

  v2._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x6C646E7562202D20;
  v3._object = 0xEB00000000203A65;
  String.append(_:)(v3);
  if (v0[3])
  {
    v4 = v0[2];
    v5 = v0[3];
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 7104878;
  }

  v6._countAndFlagsBits = v4;
  v6._object = v5;
  String.append(_:)(v6);

  v7._countAndFlagsBits = 62;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return 60;
}

uint64_t sub_10026E96C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x800000010043E150 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_10026EA00(uint64_t a1)
{
  v2 = sub_100273E50();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10026EA3C(uint64_t a1)
{
  v2 = sub_100273E50();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10026EA78(void *a1)
{
  v2 = v1;
  v4 = sub_1001BC5A8(&qword_100524260, &qword_100455128);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  v9 = a1[4];
  sub_1000326D8(a1, a1[3]);
  sub_100273E50();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = *(v2 + 16);
  v11 = *(v2 + 24);
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v5 + 8))(v8, v4);
}

Swift::Int sub_10026EBA8()
{
  Hasher.init(_seed:)();
  (*(*v0 + 96))(v2);
  return Hasher._finalize()();
}

uint64_t sub_10026EC08(uint64_t *a1)
{
  v2 = swift_allocObject();
  sub_10026EC58(a1);
  return v2;
}

uint64_t sub_10026EC58(uint64_t *a1)
{
  v4 = sub_1001BC5A8(&qword_100524268, &qword_100455130);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - v7;
  v9 = a1[4];
  sub_1000326D8(a1, a1[3]);
  sub_100273E50();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    type metadata accessor for RoutingInteraction.Action.ControlContext();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v13 = v12;
    (*(v5 + 8))(v8, v4);
    *(v1 + 16) = v11;
    *(v1 + 24) = v13;
  }

  sub_100026A44(a1);
  return v1;
}

Swift::Int sub_10026EE70()
{
  Hasher.init(_seed:)();
  (*(**v0 + 96))(v2);
  return Hasher._finalize()();
}

uint64_t sub_10026EED0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 128))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_10026EF94(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 24);
  v5 = *(v3 + 24);
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*(v2 + 16) == *(v3 + 16) && v4 == v5)
    {
      return 1;
    }

    else
    {
      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

unint64_t sub_10026FBBC(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000014;
    v7 = 0xD000000000000015;
    if (a1 != 10)
    {
      v7 = 0x65746F6D65527674;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000016;
    if (a1 == 7)
    {
      v8 = 0x6C6F72746E6F63;
    }

    if (a1 == 6)
    {
      v8 = 0x66666F646E6168;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 6579297;
    v2 = 0x7463656C6573;
    v3 = 0xD000000000000010;
    if (a1 != 4)
    {
      v3 = 0x7669746341746573;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x65766F6D6572;
    if (a1 != 1)
    {
      v4 = 7628147;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_10026FD3C()
{
  if (*v0)
  {
    result = 0x7247656D756C6F76;
  }

  else
  {
    result = 0x6C6F72746E6F63;
  }

  *v0;
  return result;
}

uint64_t sub_10026FD80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6F72746E6F63 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7247656D756C6F76 && a2 == 0xEB0000000070756FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10026FE60(uint64_t a1)
{
  v2 = sub_100273FB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10026FE9C(uint64_t a1)
{
  v2 = sub_100273FB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10026FED8()
{
  if (*v0)
  {
    result = 0x6E6F6973736573;
  }

  else
  {
    result = 1835365481;
  }

  *v0;
  return result;
}

uint64_t sub_10026FF10(uint64_t a1)
{
  v2 = sub_100274300();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10026FF4C(uint64_t a1)
{
  v2 = sub_100274300();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10026FF88(uint64_t a1)
{
  v2 = sub_100274060();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10026FFC4(uint64_t a1)
{
  v2 = sub_100274060();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100270008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100274354(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10027003C(uint64_t a1)
{
  v2 = sub_100273F10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100270078(uint64_t a1)
{
  v2 = sub_100273F10();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002700B4()
{
  if (*v0)
  {
    return 0x747865746E6F63;
  }

  else
  {
    return 0x6C6F72746E6F63;
  }
}

uint64_t sub_1002700EC(uint64_t a1)
{
  v2 = sub_1002740B4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100270128(uint64_t a1)
{
  v2 = sub_1002740B4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100270164(uint64_t a1)
{
  v2 = sub_10027400C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002701A0(uint64_t a1)
{
  v2 = sub_10027400C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002701DC()
{
  v1 = 1835365481;
  if (*v0 != 1)
  {
    v1 = 0x747865746E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F6973736573;
  }
}

uint64_t sub_100270230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10027471C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100270264(uint64_t a1)
{
  v2 = sub_100274108();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002702A0(uint64_t a1)
{
  v2 = sub_100274108();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002702DC(uint64_t a1)
{
  v2 = sub_1002742AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100270318(uint64_t a1)
{
  v2 = sub_1002742AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100270354(uint64_t a1)
{
  v2 = sub_100274204();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100270390(uint64_t a1)
{
  v2 = sub_100274204();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002703DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1835365481 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100270464(uint64_t a1)
{
  v2 = sub_10027415C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002704A0(uint64_t a1)
{
  v2 = sub_10027415C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002704F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F6973736573 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10027057C(uint64_t a1)
{
  v2 = sub_1002741B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002705B8(uint64_t a1)
{
  v2 = sub_1002741B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002705F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1835365481 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F6973736573 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1002706D0(uint64_t a1)
{
  v2 = sub_100274258();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10027070C(uint64_t a1)
{
  v2 = sub_100274258();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100270748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6F72746E6F63 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100270824(uint64_t a1)
{
  v2 = sub_100273F64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100270860(uint64_t a1)
{
  v2 = sub_100273F64();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10027089C(void *a1)
{
  v2 = sub_1001BC5A8(&qword_100524298, &qword_100455148);
  v164 = *(v2 - 8);
  v165 = v2;
  v3 = *(v164 + 64);
  __chkstk_darwin(v2);
  v162 = &v131 - v4;
  v171 = type metadata accessor for RoutingControls.TVRemoteControl.Context();
  v163 = *(v171 - 8);
  v5 = *(v163 + 64);
  __chkstk_darwin(v171);
  v170 = &v131 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001BC5A8(&qword_1005242A0, &qword_100455150);
  v160 = *(v7 - 8);
  v161 = v7;
  v8 = *(v160 + 64);
  __chkstk_darwin(v7);
  v159 = &v131 - v9;
  v158 = sub_1001BC5A8(&qword_1005242A8, &qword_100455158);
  v157 = *(v158 - 8);
  v10 = *(v157 + 64);
  __chkstk_darwin(v158);
  v156 = &v131 - v11;
  v155 = sub_1001BC5A8(&qword_1005242B0, &qword_100455160);
  v154 = *(v155 - 8);
  v12 = *(v154 + 64);
  __chkstk_darwin(v155);
  v153 = &v131 - v13;
  v14 = type metadata accessor for ContinuousRoutingControl();
  v172 = *(v14 - 8);
  v173 = v14;
  v15 = *(v172 + 64);
  v16 = __chkstk_darwin(v14);
  v169 = &v131 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v168 = &v131 - v18;
  v152 = sub_1001BC5A8(&qword_1005242B8, &qword_100455168);
  v151 = *(v152 - 8);
  v19 = *(v151 + 64);
  __chkstk_darwin(v152);
  v150 = &v131 - v20;
  v21 = type metadata accessor for RoutingControl();
  v22 = *(v21 - 8);
  v174 = v21;
  v175 = v22;
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v167 = &v131 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v149 = &v131 - v27;
  __chkstk_darwin(v26);
  v166 = &v131 - v28;
  v148 = sub_1001BC5A8(&qword_1005242C0, &qword_100455170);
  v147 = *(v148 - 8);
  v29 = *(v147 + 64);
  __chkstk_darwin(v148);
  v146 = &v131 - v30;
  v145 = sub_1001BC5A8(&qword_1005242C8, &qword_100455178);
  v144 = *(v145 - 8);
  v31 = *(v144 + 64);
  __chkstk_darwin(v145);
  v143 = &v131 - v32;
  v141 = sub_1001BC5A8(&qword_1005242D0, &qword_100455180);
  v139 = *(v141 - 8);
  v33 = *(v139 + 64);
  __chkstk_darwin(v141);
  v137 = &v131 - v34;
  v142 = sub_1001BC5A8(&qword_1005242D8, &qword_100455188);
  v140 = *(v142 - 8);
  v35 = *(v140 + 64);
  __chkstk_darwin(v142);
  v138 = &v131 - v36;
  v136 = sub_1001BC5A8(&qword_1005242E0, &qword_100455190);
  v135 = *(v136 - 8);
  v37 = *(v135 + 64);
  __chkstk_darwin(v136);
  v134 = &v131 - v38;
  v133 = sub_1001BC5A8(&qword_1005242E8, &qword_100455198);
  v132 = *(v133 - 8);
  v39 = *(v132 + 64);
  __chkstk_darwin(v133);
  v41 = &v131 - v40;
  v42 = sub_1001BC5A8(&qword_1005242F0, &qword_1004551A0);
  v131 = *(v42 - 8);
  v43 = *(v131 + 64);
  __chkstk_darwin(v42);
  v45 = &v131 - v44;
  v46 = sub_1001BC5A8(&qword_1005242F8, &qword_1004551A8);
  v178 = *(v46 - 8);
  v47 = *(v178 + 64);
  __chkstk_darwin(v46);
  v49 = &v131 - v48;
  v50 = a1[4];
  sub_1000326D8(a1, a1[3]);
  sub_100273F10();
  v51 = v49;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v52 = *v176;
  v53 = v176[32];
  if (v53 > 5)
  {
    if (v176[32] > 8u)
    {
      v71 = v46;
      if (v53 != 9)
      {
        if (v53 != 10)
        {
          v114 = sub_1001BC5A8(&qword_100524270, &unk_100458150);
          v115 = swift_projectBox();
          v116 = *(v114 + 48);
          v118 = v174;
          v117 = v175;
          v119 = v167;
          (*(v175 + 16))(v167, v115, v174);
          v120 = v163;
          (*(v163 + 16))(v170, v115 + v116, v171);
          LOBYTE(v180) = 11;
          sub_100273F64();
          v121 = v162;
          v176 = v49;
          KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          LOBYTE(v180) = 0;
          sub_100273EC8(&qword_100524300, 255, &type metadata accessor for RoutingControl);
          v122 = v165;
          v123 = v177;
          KeyedEncodingContainer.encode<A>(_:forKey:)();
          if (v123)
          {
            (*(v164 + 8))(v121, v122);
            (*(v120 + 8))(v170, v171);
            (*(v117 + 8))(v119, v118);
            return (*(v178 + 8))(v176, v71);
          }

          else
          {
            v128 = v117;
            v177 = v71;
            LOBYTE(v180) = 1;
            sub_100273EC8(&qword_100524308, 255, &type metadata accessor for RoutingControls.TVRemoteControl.Context);
            v130 = v170;
            v129 = v171;
            KeyedEncodingContainer.encode<A>(_:forKey:)();
            (*(v164 + 8))(v121, v122);
            (*(v120 + 8))(v130, v129);
            (*(v128 + 8))(v167, v118);
            return (*(v178 + 8))(v176, v177);
          }
        }

        v72 = sub_1001BC5A8(&qword_100523030, &unk_100450F40);
        v73 = swift_projectBox();
        v74 = *(v73 + *(v72 + 48));
        v76 = v174;
        v75 = v175;
        v77 = v149;
        (*(v175 + 16))(v149, v73, v174);
        LOBYTE(v180) = 10;
        sub_100273FB8();

        v78 = v159;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        LOBYTE(v180) = 0;
        sub_100273EC8(&qword_100524300, 255, &type metadata accessor for RoutingControl);
        v79 = v71;
        v80 = v161;
        v81 = v177;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        if (v81)
        {

          (*(v160 + 8))(v78, v80);
          (*(v75 + 8))(v77, v76);
          return (*(v178 + 8))(v49, v79);
        }

        v176 = v49;
        v180 = v74;
        v179 = 1;
        type metadata accessor for VolumeGroup();
        sub_100273EC8(&qword_100524310, 255, &type metadata accessor for VolumeGroup);
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        (*(v160 + 8))(v78, v80);
        (*(v75 + 8))(v77, v76);
        (*(v178 + 8))(v176, v79);
      }

      v92 = sub_1001BC5A8(&qword_100524280, &qword_100455138);
      v93 = swift_projectBox();
      v94 = *(v93 + *(v92 + 48));
      v96 = v172;
      v95 = v173;
      v97 = v169;
      (*(v172 + 16))(v169, v93, v173);
      LOBYTE(v180) = 9;
      sub_10027400C();

      v98 = v156;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      LOBYTE(v180) = 0;
      sub_100273EC8(&qword_100524318, 255, &type metadata accessor for ContinuousRoutingControl);
      v99 = v71;
      v100 = v158;
      v101 = v177;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v101)
      {

        (*(v157 + 8))(v98, v100);
        (*(v96 + 8))(v97, v95);
        return (*(v178 + 8))(v49, v99);
      }

      v124 = v49;
      v180 = v94;
      v179 = 1;
      type metadata accessor for RoutingInteraction.Action.ControlContext();
      sub_100273EC8(&qword_100524320, v125, type metadata accessor for RoutingInteraction.Action.ControlContext);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v157 + 8))(v98, v100);
      (*(v96 + 8))(v169, v95);
    }

    else
    {
      v58 = v46;
      if (v53 == 6)
      {
        v83 = v52[2];
        v84 = v52[3];
        v85 = v52[4];
        v86 = v52[5];
        v87 = v52[6];
        LOBYTE(v180) = 6;
        sub_100274108();
        v88 = v146;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        LOBYTE(v180) = 0;
        v89 = v148;
        v90 = v177;
        KeyedEncodingContainer.encode(_:forKey:)();
        if (!v90)
        {
          LOBYTE(v180) = 1;
          KeyedEncodingContainer.encode(_:forKey:)();
          v180 = v87;
          v179 = 2;
          type metadata accessor for RoutingInteraction.Action.HandoffContext(0);
          sub_100273EC8(&qword_100524328, 255, type metadata accessor for RoutingInteraction.Action.HandoffContext);
          KeyedEncodingContainer.encode<A>(_:forKey:)();
        }

        (*(v147 + 8))(v88, v89);
        return (*(v178 + 8))(v51, v58);
      }

      if (v53 == 7)
      {
        v59 = sub_1001BC5A8(&qword_100524290, &qword_100455140);
        v60 = swift_projectBox();
        v61 = *(v60 + *(v59 + 48));
        v63 = v174;
        v62 = v175;
        v64 = v166;
        (*(v175 + 16))(v166, v60, v174);
        LOBYTE(v180) = 7;
        sub_1002740B4();
        v176 = v61;

        v65 = v150;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        LOBYTE(v180) = 0;
        sub_100273EC8(&qword_100524300, 255, &type metadata accessor for RoutingControl);
        v66 = v152;
        v67 = v177;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        if (v67)
        {

          (*(v151 + 8))(v65, v66);
          (*(v62 + 8))(v64, v63);
          return (*(v178 + 8))(v51, v58);
        }

        v180 = v176;
        v179 = 1;
        type metadata accessor for RoutingInteraction.Action.ControlContext();
        sub_100273EC8(&qword_100524320, v126, type metadata accessor for RoutingInteraction.Action.ControlContext);
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        (*(v151 + 8))(v65, v66);
        (*(v175 + 8))(v166, v174);
        (*(v178 + 8))(v49, v58);
      }

      v105 = sub_1001BC5A8(&qword_100524280, &qword_100455138);
      v106 = swift_projectBox();
      v107 = *(v106 + *(v105 + 48));
      v109 = v172;
      v108 = v173;
      v46 = v58;
      v110 = v168;
      (*(v172 + 16))(v168, v106, v173);
      LOBYTE(v180) = 8;
      sub_100274060();
      v176 = v107;

      v111 = v153;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      LOBYTE(v180) = 0;
      sub_100273EC8(&qword_100524318, 255, &type metadata accessor for ContinuousRoutingControl);
      v112 = v155;
      v113 = v177;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v113)
      {

        (*(v154 + 8))(v111, v112);
        (*(v109 + 8))(v110, v108);
        return (*(v178 + 8))(v51, v46);
      }

      v124 = v49;
      v99 = v46;
      v180 = v176;
      v179 = 1;
      type metadata accessor for RoutingInteraction.Action.ControlContext();
      sub_100273EC8(&qword_100524320, v127, type metadata accessor for RoutingInteraction.Action.ControlContext);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v154 + 8))(v111, v112);
      (*(v172 + 8))(v168, v173);
    }

    (*(v178 + 8))(v124, v99);
  }

  v54 = *(v176 + 1);
  if (v176[32] > 2u)
  {
    if (v53 == 3)
    {
      v176 = *(v176 + 2);
      LOBYTE(v180) = 3;
      sub_100274204();
      v68 = v138;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      LOBYTE(v180) = 0;
      v69 = v142;
      v91 = v177;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v91)
      {
        LOBYTE(v180) = 1;
        KeyedEncodingContainer.encode(_:forKey:)();
      }

      v70 = &v172;
    }

    else if (v53 == 4)
    {
      LOBYTE(v180) = 4;
      sub_1002741B0();
      v68 = v137;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v69 = v141;
      KeyedEncodingContainer.encode(_:forKey:)();
      v70 = &v171;
    }

    else
    {
      LOBYTE(v180) = 5;
      sub_10027415C();
      v68 = v143;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v69 = v145;
      KeyedEncodingContainer.encode(_:forKey:)();
      v70 = &v176;
    }

    (*(*(v70 - 32) + 8))(v68, v69);
    return (*(v178 + 8))(v51, v46);
  }

  v176 = *(v176 + 3);
  if (v53)
  {
    if (v53 == 1)
    {
      LOBYTE(v180) = 1;
      sub_1002742AC();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      LOBYTE(v180) = 0;
      v55 = v133;
      v56 = v177;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (v56)
      {
        (*(v132 + 8))(v41, v55);
        return (*(v178 + 8))(v51, v46);
      }

      LOBYTE(v180) = 1;
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v132 + 8))(v41, v55);
    }

    else
    {
      LOBYTE(v180) = 2;
      sub_100274258();
      v102 = v134;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      LOBYTE(v180) = 0;
      v103 = v136;
      v104 = v177;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v104)
      {
        LOBYTE(v180) = 1;
        KeyedEncodingContainer.encode(_:forKey:)();
      }

      (*(v135 + 8))(v102, v103);
    }
  }

  else
  {
    LOBYTE(v180) = 0;
    sub_100274300();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    LOBYTE(v180) = 0;
    v82 = v177;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (!v82)
    {
      LOBYTE(v180) = 1;
      KeyedEncodingContainer.encode(_:forKey:)();
    }

    (*(v131 + 8))(v45, v42);
  }

  return (*(v178 + 8))(v51, v46);
}

uint64_t sub_100272220(uint64_t a1)
{
  v3 = type metadata accessor for RoutingControls.TVRemoteControl.Context();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ContinuousRoutingControl();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for RoutingControl();
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v18 = v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v1;
  v20 = *(v1 + 32);
  if (v20 > 5)
  {
    if (*(v1 + 32) > 8u)
    {
      if (v20 != 9)
      {
        v32 = v16;
        v33 = v15;
        if (v20 == 10)
        {
          v34 = sub_1001BC5A8(&qword_100523030, &unk_100450F40);
          v35 = swift_projectBox();
          v36 = *(v35 + *(v34 + 48));
          (*(v32 + 16))(v18, v35, v33);
          Hasher._combine(_:)(0xAuLL);
          sub_100273EC8(&qword_100524330, 255, &type metadata accessor for RoutingControl);

          dispatch thunk of Hashable.hash(into:)();
          v51[1] = v36;
          type metadata accessor for VolumeGroup();
          sub_100273EC8(&qword_100524340, 255, &type metadata accessor for VolumeGroup);
          dispatch thunk of Hashable.hash(into:)();
          (*(v32 + 8))(v18, v33);
        }

        else
        {
          v48 = sub_1001BC5A8(&qword_100524270, &unk_100458150);
          v49 = swift_projectBox();
          v50 = *(v48 + 48);
          (*(v32 + 16))(v18, v49, v33);
          (*(v4 + 16))(v7, v49 + v50, v3);
          Hasher._combine(_:)(0xBuLL);
          sub_100273EC8(&qword_100524330, 255, &type metadata accessor for RoutingControl);
          dispatch thunk of Hashable.hash(into:)();
          sub_100273EC8(&qword_100524338, 255, &type metadata accessor for RoutingControls.TVRemoteControl.Context);
          dispatch thunk of Hashable.hash(into:)();
          (*(v4 + 8))(v7, v3);
          return (*(v32 + 8))(v18, v33);
        }
      }

      v42 = sub_1001BC5A8(&qword_100524280, &qword_100455138);
      v43 = swift_projectBox();
      v44 = *(v43 + *(v42 + 48));
      (*(v9 + 16))(v12, v43, v8);
      v45 = 9;
    }

    else
    {
      if (v20 == 6)
      {
        v37 = v19[2];
        v38 = v19[3];
        v39 = v19[4];
        v40 = v19[5];
        v41 = v19[6];
        Hasher._combine(_:)(6uLL);
        String.hash(into:)();
        String.hash(into:)();
        return (*(*v41 + 272))(a1);
      }

      if (v20 == 7)
      {
        v25 = v15;
        v26 = v16;
        v27 = sub_1001BC5A8(&qword_100524290, &qword_100455140);
        v28 = swift_projectBox();
        v29 = *(v28 + *(v27 + 48));
        (*(v26 + 16))(v18, v28, v25);
        Hasher._combine(_:)(7uLL);
        sub_100273EC8(&qword_100524330, 255, &type metadata accessor for RoutingControl);

        dispatch thunk of Hashable.hash(into:)();
        (*(*v29 + 96))(a1);

        return (*(v26 + 8))(v18, v25);
      }

      v46 = sub_1001BC5A8(&qword_100524280, &qword_100455138);
      v47 = swift_projectBox();
      v44 = *(v47 + *(v46 + 48));
      (*(v9 + 16))(v12, v47, v8);
      v45 = 8;
    }

    Hasher._combine(_:)(v45);
    sub_100273EC8(&qword_100524348, 255, &type metadata accessor for ContinuousRoutingControl);

    dispatch thunk of Hashable.hash(into:)();
    (*(*v44 + 96))(a1);

    return (*(v9 + 8))(v12, v8);
  }

  v21 = *(v1 + 8);
  v22 = *(v1 + 16);
  v23 = *(v1 + 24);
  if (*(v1 + 32) > 2u)
  {
    if (v20 != 3)
    {
      if (v20 == 4)
      {
        v31 = 4;
      }

      else
      {
        v31 = 5;
      }

      Hasher._combine(_:)(v31);
      goto LABEL_26;
    }

    v24 = 3;
  }

  else if (*(v1 + 32))
  {
    if (v20 == 1)
    {
      v24 = 1;
    }

    else
    {
      v24 = 2;
    }
  }

  else
  {
    v24 = 0;
  }

  Hasher._combine(_:)(v24);
  String.hash(into:)();
LABEL_26:

  return String.hash(into:)();
}

Swift::Int sub_100272A08()
{
  Hasher.init(_seed:)();
  sub_100272220(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100272A4C()
{
  Hasher.init(_seed:)();
  sub_100272220(v1);
  return Hasher._finalize()();
}

double sub_100272A88@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100274834(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_100272AEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_100273050(v5, v7) & 1;
}

__n128 sub_100272B38@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  *a2 = static String.nanoIDFourChar()();
  *(a2 + 8) = v5;
  result = *a1;
  v7 = *(a1 + 16);
  *(a2 + 16) = *a1;
  *(a2 + 32) = v7;
  *(a2 + 48) = v4;
  return result;
}

unint64_t sub_100272B7C()
{
  _StringGuts.grow(_:)(33);

  String.append(_:)(*v0);
  v1._countAndFlagsBits = 0x6E6F69746361202CLL;
  v1._object = 0xEA0000000000203ALL;
  String.append(_:)(v1);
  v2._countAndFlagsBits = sub_10026EFE0();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 62;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  return 0xD000000000000022;
}

uint64_t sub_100272C38()
{
  if (*v0)
  {
    result = 0x6E6F69746361;
  }

  else
  {
    result = 0x696669746E656469;
  }

  *v0;
  return result;
}

uint64_t sub_100272C74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100272D54(uint64_t a1)
{
  v2 = sub_100276744();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100272D90(uint64_t a1)
{
  v2 = sub_100276744();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100272DCC(void *a1)
{
  v3 = v1;
  v5 = sub_1001BC5A8(&qword_100524350, qword_1004551B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  sub_1000326D8(a1, a1[3]);
  sub_100276744();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v16) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = *(v3 + 2);
    v16 = *(v3 + 1);
    v17 = v13;
    v18 = *(v3 + 48);
    v15[15] = 1;
    sub_100276798();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

Swift::Int sub_100272F50()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100272F9C()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

double sub_100272FE4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1002767EC(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_100273050(uint64_t a1, _BYTE *a2)
{
  v171 = a2;
  v3 = type metadata accessor for RoutingControls.TVRemoteControl.Context();
  v167 = *(v3 - 8);
  v168 = v3;
  v4 = *(v167 + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v164 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v164 = &v164 - v8;
  v9 = type metadata accessor for ContinuousRoutingControl();
  v10 = *(v9 - 8);
  v169 = v9;
  v170 = v10;
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v164 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v166 = &v164 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v164 - v18;
  __chkstk_darwin(v17);
  v165 = &v164 - v20;
  v21 = type metadata accessor for RoutingControl();
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21);
  v25 = &v164 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v23);
  v28 = &v164 - v27;
  v29 = __chkstk_darwin(v26);
  v31 = &v164 - v30;
  v32 = __chkstk_darwin(v29);
  v34 = &v164 - v33;
  v35 = __chkstk_darwin(v32);
  v37 = &v164 - v36;
  v38 = __chkstk_darwin(v35);
  v41 = &v164 - v40;
  v42 = *a1;
  v43 = *(a1 + 32);
  if (v43 > 5)
  {
    if (*(a1 + 32) > 8u)
    {
      if (v43 != 9)
      {
        if (v43 != 10)
        {
          if (v171[32] == 11)
          {
            v117 = *v171;
            v118 = v39;
            v119 = v38;
            v120 = *a1;
            v121 = sub_1001BC5A8(&qword_100524270, &unk_100458150);
            v122 = swift_projectBox();
            v123 = *(v121 + 48);
            v124 = swift_projectBox();
            v171 = v118;
            v125 = *(v118 + 16);
            v125(v28, v122, v119);
            v170 = v119;
            v125(v25, v124, v119);
            v126 = v167;
            v127 = *(v167 + 16);
            v128 = v122 + v123;
            v129 = v164;
            v130 = v168;
            v127(v164, v128, v168);
            v127(v7, v124 + v123, v130);
            if (static RoutingControl.== infix(_:_:)())
            {
              v77 = static RoutingControls.TVRemoteControl.Context.== infix(_:_:)();
              v131 = *(v126 + 8);
              v131(v7, v130);
              v131(v129, v130);
              v132 = v170;
              v133 = *(v171 + 1);
              v133(v25, v170);
              v133(v28, v132);
              return v77 & 1;
            }

            v141 = *(v126 + 8);
            v141(v7, v130);
            v141(v129, v130);
            v142 = v170;
            v143 = *(v171 + 1);
            v143(v25, v170);
            v143(v28, v142);
          }

          goto LABEL_98;
        }

        v66 = v39;
        v67 = v38;
        v68 = sub_1001BC5A8(&qword_100523030, &unk_100450F40);
        v69 = swift_projectBox();
        if (v171[32] != 10)
        {
          goto LABEL_98;
        }

        v70 = *(v68 + 48);
        v71 = *(v69 + v70);
        v72 = *v171;
        v73 = v69;
        v74 = swift_projectBox();
        v75 = *(v74 + v70);
        v76 = *(v66 + 16);
        v76(v34, v73, v67);
        v76(v31, v74, v67);

        if ((static RoutingControl.== infix(_:_:)() & 1) == 0)
        {

          v140 = *(v66 + 8);
          v140(v31, v67);
          v140(v34, v67);
          goto LABEL_98;
        }

        type metadata accessor for VolumeGroup();
        v77 = static VolumeGroup.== infix(_:_:)();

        v78 = *(v66 + 8);
        v78(v31, v67);
        v78(v34, v67);
        return v77 & 1;
      }

      v85 = *a1;
      v86 = sub_1001BC5A8(&qword_100524280, &qword_100455138);
      v87 = swift_projectBox();
      if (v171[32] != 9)
      {
        goto LABEL_98;
      }

      v88 = *(v86 + 48);
      v89 = *(v87 + v88);
      v90 = *v171;
      v91 = v87;
      v92 = swift_projectBox();
      v93 = *(v92 + v88);
      v95 = v169;
      v94 = v170;
      v96 = *(v170 + 16);
      v97 = v166;
      v96(v166, v91, v169);
      v96(v14, v92, v95);

      if (static ContinuousRoutingControl.== infix(_:_:)())
      {
        v98 = *(v89 + 24);
        v99 = *(v93 + 24);
        if (v98)
        {
          if (!v99)
          {
            v149 = *(v94 + 8);
            v149(v14, v95);
            v149(v97, v95);
            goto LABEL_92;
          }

          if (*(v89 + 16) == *(v93 + 16) && v98 == v99)
          {
            v100 = *(v94 + 8);
            v100(v14, v95);
            v100(v97, v95);
            goto LABEL_65;
          }

          v154 = *(v93 + 24);
          v155 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v156 = *(v94 + 8);
          v156(v14, v95);
          v157 = v97;
LABEL_97:
          v156(v157, v95);

          if ((v155 & 1) == 0)
          {
            goto LABEL_98;
          }

          goto LABEL_69;
        }

        v144 = *(v94 + 8);
        v144(v14, v95);
        v145 = v97;
LABEL_87:
        v144(v145, v95);

        if (v99)
        {
          goto LABEL_98;
        }

        goto LABEL_69;
      }

      v136 = *(v94 + 8);
      v136(v14, v95);
      v137 = v97;
    }

    else
    {
      if (v43 == 6)
      {
        if (v171[32] == 6)
        {
          if (v79 = v42[4], v80 = v42[5], v81 = v42[6], v82 = *(*v171 + 32), v83 = *(*v171 + 40), v84 = *(*v171 + 48), v42[2] == *(*v171 + 16)) && v42[3] == *(*v171 + 24) || (_stringCompareWithSmolCheck(_:_:expecting:)())
          {
            if (v79 == v82 && v80 == v83 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v81[2] == v84[2] && v81[3] == v84[3] || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v81[4] == v84[4] && v81[5] == v84[5] || (_stringCompareWithSmolCheck(_:_:expecting:)()))
            {
              goto LABEL_69;
            }
          }
        }

        goto LABEL_98;
      }

      v48 = *a1;
      if (v43 == 7)
      {
        v49 = v39;
        v170 = v38;
        v50 = sub_1001BC5A8(&qword_100524290, &qword_100455140);
        v51 = swift_projectBox();
        if (v171[32] != 7)
        {
          goto LABEL_98;
        }

        v52 = *(v50 + 48);
        v53 = *(v51 + v52);
        v54 = *v171;
        v55 = v51;
        v56 = swift_projectBox();
        v57 = *(v56 + v52);
        v58 = *(v49 + 16);
        v59 = v55;
        v60 = v170;
        v58(v41, v59, v170);
        v58(v37, v56, v60);

        if ((static RoutingControl.== infix(_:_:)() & 1) == 0)
        {

          v138 = *(v49 + 8);
          v139 = v170;
          v138(v37, v170);
          v138(v41, v139);
          goto LABEL_98;
        }

        v61 = *(v53 + 24);
        v62 = *(v57 + 24);
        if (!v61)
        {
          v146 = *(v49 + 8);
          v147 = v37;
          v148 = v170;
          v146(v147, v170);
          v146(v41, v148);

          if (v62)
          {
            goto LABEL_98;
          }

          goto LABEL_69;
        }

        if (v62)
        {
          if (*(v53 + 16) == *(v57 + 16) && v61 == v62)
          {
            v63 = *(v49 + 8);
            v64 = v37;
            v65 = v170;
            v63(v64, v170);
            v63(v41, v65);
LABEL_65:

            v77 = 1;
            return v77 & 1;
          }

          v158 = *(v57 + 24);
          v159 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v160 = *(v49 + 8);
          v161 = v37;
          v162 = v170;
          v160(v161, v170);
          v160(v41, v162);

          if ((v159 & 1) == 0)
          {
            goto LABEL_98;
          }

LABEL_69:
          v77 = 1;
          return v77 & 1;
        }

        v150 = *(v49 + 8);
        v151 = v37;
        v152 = v170;
        v150(v151, v170);
        v150(v41, v152);
LABEL_92:

        goto LABEL_98;
      }

      v104 = sub_1001BC5A8(&qword_100524280, &qword_100455138);
      v105 = swift_projectBox();
      if (v171[32] != 8)
      {
        goto LABEL_98;
      }

      v106 = *(v104 + 48);
      v107 = *(v105 + v106);
      v108 = *v171;
      v109 = v105;
      v110 = swift_projectBox();
      v111 = *(v110 + v106);
      v95 = v169;
      v112 = v170;
      v113 = *(v170 + 16);
      v114 = v165;
      v113(v165, v109, v169);
      v113(v19, v110, v95);

      if (static ContinuousRoutingControl.== infix(_:_:)())
      {
        v115 = *(v107 + 24);
        v99 = *(v111 + 24);
        if (v115)
        {
          if (!v99)
          {
            v153 = *(v112 + 8);
            v153(v19, v95);
            v153(v114, v95);
            goto LABEL_92;
          }

          if (*(v107 + 16) == *(v111 + 16) && v115 == v99)
          {
            v116 = *(v112 + 8);
            v116(v19, v95);
            v116(v114, v95);
            goto LABEL_65;
          }

          v163 = *(v111 + 24);
          v155 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v156 = *(v112 + 8);
          v156(v19, v95);
          v157 = v114;
          goto LABEL_97;
        }

        v144 = *(v112 + 8);
        v144(v19, v95);
        v145 = v114;
        goto LABEL_87;
      }

      v136 = *(v112 + 8);
      v136(v19, v95);
      v137 = v114;
    }

    v136(v137, v95);
    goto LABEL_98;
  }

  v44 = *(a1 + 8);
  v45 = *(a1 + 16);
  v46 = *(a1 + 24);
  if (*(a1 + 32) > 2u)
  {
    v47 = v171;
    if (v43 != 3)
    {
      if (v43 == 4)
      {
        if (v171[32] != 4)
        {
          goto LABEL_98;
        }
      }

      else if (v171[32] != 5)
      {
        goto LABEL_98;
      }

      if (v42 != *v171 || v44 != *(v171 + 1))
      {
        v134 = *a1;
        goto LABEL_74;
      }

      goto LABEL_69;
    }

    if (v171[32] == 3)
    {
      goto LABEL_52;
    }

LABEL_98:
    v77 = 0;
    return v77 & 1;
  }

  v47 = v171;
  if (*(a1 + 32))
  {
    if (v43 == 1)
    {
      if (v171[32] == 1)
      {
        goto LABEL_52;
      }
    }

    else if (v171[32] == 2)
    {
      goto LABEL_52;
    }

    goto LABEL_98;
  }

  if (v171[32])
  {
    goto LABEL_98;
  }

LABEL_52:
  v101 = v47[2];
  v102 = v47[3];
  if (v42 != *v47 || v44 != v47[1])
  {
    v103 = *a1;
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_98;
    }
  }

  if (v45 == v101 && v46 == v102)
  {
    goto LABEL_69;
  }

LABEL_74:

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

unint64_t sub_100273DDC()
{
  result = qword_10052F5F0;
  if (!qword_10052F5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10052F5F0);
  }

  return result;
}

unint64_t sub_100273E50()
{
  result = qword_10052F5F8;
  if (!qword_10052F5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10052F5F8);
  }

  return result;
}

uint64_t sub_100273EC8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100273F10()
{
  result = qword_10052F600;
  if (!qword_10052F600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10052F600);
  }

  return result;
}

unint64_t sub_100273F64()
{
  result = qword_10052F608;
  if (!qword_10052F608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10052F608);
  }

  return result;
}

unint64_t sub_100273FB8()
{
  result = qword_10052F610;
  if (!qword_10052F610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10052F610);
  }

  return result;
}

unint64_t sub_10027400C()
{
  result = qword_10052F618;
  if (!qword_10052F618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10052F618);
  }

  return result;
}

unint64_t sub_100274060()
{
  result = qword_10052F620;
  if (!qword_10052F620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10052F620);
  }

  return result;
}

unint64_t sub_1002740B4()
{
  result = qword_10052F628;
  if (!qword_10052F628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10052F628);
  }

  return result;
}

unint64_t sub_100274108()
{
  result = qword_10052F630;
  if (!qword_10052F630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10052F630);
  }

  return result;
}

unint64_t sub_10027415C()
{
  result = qword_10052F638;
  if (!qword_10052F638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10052F638);
  }

  return result;
}

unint64_t sub_1002741B0()
{
  result = qword_10052F640;
  if (!qword_10052F640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10052F640);
  }

  return result;
}

unint64_t sub_100274204()
{
  result = qword_10052F648;
  if (!qword_10052F648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10052F648);
  }

  return result;
}

unint64_t sub_100274258()
{
  result = qword_10052F650;
  if (!qword_10052F650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10052F650);
  }

  return result;
}

unint64_t sub_1002742AC()
{
  result = qword_10052F658;
  if (!qword_10052F658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10052F658);
  }

  return result;
}

unint64_t sub_100274300()
{
  result = qword_10052F660;
  if (!qword_10052F660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10052F660);
  }

  return result;
}

uint64_t sub_100274354(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6579297 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65766F6D6572 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7628147 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7463656C6573 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010043E170 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7669746341746573 && a2 == 0xED00006D65744965 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x66666F646E6168 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6C6F72746E6F63 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000016 && 0x800000010043E190 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x800000010043E1B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010043E1D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x65746F6D65527674 && a2 == 0xE800000000000000)
  {

    return 11;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_10027471C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973736573 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1835365481 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100274834@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v191 = a2;
  v3 = sub_1001BC5A8(&qword_100524668, &qword_100456E90);
  v4 = *(v3 - 8);
  v182 = v3;
  v183 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v189 = &v158 - v6;
  v7 = sub_1001BC5A8(&qword_100524670, &qword_100456E98);
  v8 = *(v7 - 8);
  v180 = v7;
  v181 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v187 = &v158 - v10;
  v11 = sub_1001BC5A8(&qword_100524678, &qword_100456EA0);
  v178 = *(v11 - 8);
  v179 = v11;
  v12 = *(v178 + 64);
  __chkstk_darwin(v11);
  v194 = &v158 - v13;
  v14 = sub_1001BC5A8(&qword_100524680, &qword_100456EA8);
  v176 = *(v14 - 8);
  v177 = v14;
  v15 = *(v176 + 64);
  __chkstk_darwin(v14);
  v188 = &v158 - v16;
  v174 = sub_1001BC5A8(&qword_100524688, &qword_100456EB0);
  v175 = *(v174 - 8);
  v17 = *(v175 + 64);
  __chkstk_darwin(v174);
  v185 = &v158 - v18;
  v170 = sub_1001BC5A8(&qword_100524690, &qword_100456EB8);
  v173 = *(v170 - 8);
  v19 = *(v173 + 64);
  __chkstk_darwin(v170);
  v190 = &v158 - v20;
  v172 = sub_1001BC5A8(&qword_100524698, &qword_100456EC0);
  v171 = *(v172 - 8);
  v21 = *(v171 + 64);
  __chkstk_darwin(v172);
  v184 = &v158 - v22;
  v169 = sub_1001BC5A8(&qword_1005246A0, &qword_100456EC8);
  v168 = *(v169 - 8);
  v23 = *(v168 + 64);
  __chkstk_darwin(v169);
  v186 = &v158 - v24;
  v167 = sub_1001BC5A8(&qword_1005246A8, &qword_100456ED0);
  v165 = *(v167 - 8);
  v25 = *(v165 + 64);
  __chkstk_darwin(v167);
  v193 = &v158 - v26;
  v166 = sub_1001BC5A8(&qword_1005246B0, &qword_100456ED8);
  v163 = *(v166 - 8);
  v27 = *(v163 + 64);
  __chkstk_darwin(v166);
  v192 = &v158 - v28;
  v164 = sub_1001BC5A8(&qword_1005246B8, &qword_100456EE0);
  v162 = *(v164 - 8);
  v29 = *(v162 + 64);
  __chkstk_darwin(v164);
  v31 = &v158 - v30;
  v32 = sub_1001BC5A8(&qword_1005246C0, &qword_100456EE8);
  v161 = *(v32 - 8);
  v33 = *(v161 + 64);
  __chkstk_darwin(v32);
  v35 = &v158 - v34;
  v36 = sub_1001BC5A8(&qword_1005246C8, &unk_100456EF0);
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  __chkstk_darwin(v36);
  v40 = &v158 - v39;
  v42 = a1[3];
  v41 = a1[4];
  v196 = a1;
  sub_1000326D8(a1, v42);
  sub_100273F10();
  v43 = v195;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v43)
  {
    return sub_100026A44(v196);
  }

  v158 = v32;
  v44 = v31;
  v46 = v192;
  v45 = v193;
  v47 = v194;
  v160 = v37;
  v159 = 0;
  v195 = v36;
  v48 = KeyedDecodingContainer.allKeys.getter();
  if (*(v48 + 16) != 1 || (v49 = *(v48 + 32), v49 == 12))
  {
    v54 = type metadata accessor for DecodingError();
    swift_allocError();
    v56 = v55;
    v57 = v40;
    v58 = *(sub_1001BC5A8(&unk_100527470, &qword_100455110) + 48);
    *v56 = &type metadata for RoutingInteraction.Action;
    v59 = v195;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v54 - 8) + 104))(v56, enum case for DecodingError.typeMismatch(_:), v54);
    swift_willThrow();
    (*(v160 + 8))(v57, v59);
    goto LABEL_11;
  }

  if (*(v48 + 32) <= 5u)
  {
    if (*(v48 + 32) <= 2u)
    {
      if (*(v48 + 32))
      {
        if (v49 == 1)
        {
          v197 = 1;
          sub_1002742AC();
          v50 = v44;
          v51 = v40;
          v52 = v195;
          v53 = v159;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (v53)
          {
            (*(v160 + 8))(v51, v52);
            swift_unknownObjectRelease();
            return sub_100026A44(v196);
          }

          v111 = v51;
          v197 = 0;
          v112 = v164;
          v113 = KeyedDecodingContainer.decode(_:forKey:)();
          v194 = v144;
          v190 = v113;
          v197 = 1;
          v145 = KeyedDecodingContainer.decode(_:forKey:)();
          v146 = (v162 + 8);
          v147 = (v160 + 8);
          v159 = 0;
          v133 = v145;
          v152 = v157;
          LODWORD(v162) = 1;
          (*v146)(v50, v112);
          (*v147)(v111, v195);
          goto LABEL_53;
        }

        v197 = 2;
        sub_100274258();
        v93 = v46;
        v86 = v195;
        v94 = v159;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v94)
        {
          v197 = 0;
          v95 = v166;
          v96 = KeyedDecodingContainer.decode(_:forKey:)();
          v137 = v140;
          v190 = v96;
          LODWORD(v162) = v49;
          v193 = v40;
          v197 = 1;
          v141 = KeyedDecodingContainer.decode(_:forKey:)();
          v142 = (v160 + 8);
          v159 = 0;
          v133 = v141;
          v152 = v156;
          (*(v163 + 8))(v93, v95);
          (*v142)(v193, v86);
LABEL_52:
          swift_unknownObjectRelease();
LABEL_57:
          v135 = v190;
          v71 = v191;
          goto LABEL_58;
        }

        goto LABEL_32;
      }

      v197 = 0;
      sub_100274300();
      v81 = v35;
      v82 = v195;
      v83 = v159;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v83)
      {
        v197 = 0;
        v103 = v158;
        v104 = KeyedDecodingContainer.decode(_:forKey:)();
        v137 = v122;
        v190 = v104;
        LODWORD(v162) = 0;
        v123 = v40;
        v197 = 1;
        v124 = KeyedDecodingContainer.decode(_:forKey:)();
        v125 = (v160 + 8);
        v159 = 0;
        v133 = v124;
        v152 = v153;
        (*(v161 + 8))(v81, v103);
        (*v125)(v123, v195);
        goto LABEL_52;
      }

      (*(v160 + 8))(v40, v82);
LABEL_11:
      swift_unknownObjectRelease();
      return sub_100026A44(v196);
    }

    if (v49 == 3)
    {
      v197 = 3;
      sub_100274204();
      v85 = v45;
      v86 = v195;
      v87 = v159;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v88 = v160;
      if (!v87)
      {
        v197 = 0;
        v89 = v167;
        v90 = KeyedDecodingContainer.decode(_:forKey:)();
        v194 = v119;
        v190 = v90;
        LODWORD(v162) = 3;
        v120 = v40;
        v197 = 1;
        v121 = KeyedDecodingContainer.decode(_:forKey:)();
        v159 = 0;
        v133 = v121;
        v152 = v151;
        (*(v165 + 8))(v85, v89);
        (*(v88 + 8))(v120, v86);
LABEL_53:
        swift_unknownObjectRelease();
        v135 = v190;
        v71 = v191;
        v137 = v194;
        goto LABEL_58;
      }

LABEL_32:
      (*(v160 + 8))(v40, v86);
      goto LABEL_11;
    }

    LODWORD(v162) = *(v48 + 32);
    v67 = v195;
    v68 = v160;
    if (v49 == 4)
    {
      v197 = 4;
      sub_1002741B0();
      v69 = v186;
      v70 = v159;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v71 = v191;
      if (!v70)
      {
        v72 = v169;
        v73 = KeyedDecodingContainer.decode(_:forKey:)();
        v74 = v69;
        v133 = 0;
        v135 = v73;
        v137 = v136;
        v159 = 0;
        v138 = &v198;
LABEL_51:
        (*(*(v138 - 32) + 8))(v74, v72);
        (*(v68 + 8))(v40, v67);
        swift_unknownObjectRelease();
        v152 = 0;
        goto LABEL_58;
      }
    }

    else
    {
      v197 = 5;
      sub_10027415C();
      v98 = v184;
      v99 = v159;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v71 = v191;
      if (!v99)
      {
        v72 = v172;
        v100 = KeyedDecodingContainer.decode(_:forKey:)();
        v74 = v98;
        v133 = 0;
        v135 = v100;
        v137 = v143;
        v159 = 0;
        v138 = &v199;
        goto LABEL_51;
      }
    }

    (*(v68 + 8))(v40, v67);
    goto LABEL_11;
  }

  v61 = v195;
  if (*(v48 + 32) > 8u)
  {
    v75 = v160;
    if (v49 == 9)
    {
      v197 = 9;
      sub_10027400C();
      v91 = v47;
      v92 = v159;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v92)
      {
        LODWORD(v162) = 9;
        v193 = v40;
        v106 = sub_1001BC5A8(&qword_100524280, &qword_100455138);
        v107 = swift_allocBox();
        v109 = v108;
        type metadata accessor for ContinuousRoutingControl();
        v197 = 0;
        sub_100273EC8(&qword_1005246E8, 255, &type metadata accessor for ContinuousRoutingControl);
        v192 = v109;
        v110 = v179;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v190 = v107;
        v129 = *(v106 + 48);
        type metadata accessor for RoutingInteraction.Action.ControlContext();
        v197 = 1;
        sub_100273EC8(&qword_1005246F0, v130, type metadata accessor for RoutingInteraction.Action.ControlContext);
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v133 = 0;
        v159 = 0;
        (*(v178 + 8))(v91, v110);
        (*(v75 + 8))(v193, v61);
LABEL_56:
        swift_unknownObjectRelease();
        v137 = 0;
        v152 = 0;
        goto LABEL_57;
      }
    }

    else
    {
      v194 = v48;
      if (v49 == 10)
      {
        v197 = 10;
        sub_100273FB8();
        v76 = v187;
        v77 = v159;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v77)
        {
          LODWORD(v162) = 10;
          v193 = v40;
          v78 = sub_1001BC5A8(&qword_100523030, &unk_100450F40);
          v79 = swift_allocBox();
          type metadata accessor for RoutingControl();
          v197 = 0;
          sub_100273EC8(&qword_1005246D0, 255, &type metadata accessor for RoutingControl);
          v80 = v180;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v190 = v79;
          v139 = *(v78 + 48);
          type metadata accessor for VolumeGroup();
          v197 = 1;
          sub_100273EC8(&qword_1005246E0, 255, &type metadata accessor for VolumeGroup);
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v133 = 0;
          v159 = 0;
          (*(v181 + 8))(v76, v80);
LABEL_55:
          (*(v75 + 8))(v193, v61);
          goto LABEL_56;
        }
      }

      else
      {
        v197 = 11;
        sub_100273F64();
        v101 = v189;
        v102 = v159;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v102)
        {
          LODWORD(v162) = v49;
          v193 = v40;
          v116 = sub_1001BC5A8(&qword_100524270, &unk_100458150);
          v117 = swift_allocBox();
          type metadata accessor for RoutingControl();
          v197 = 0;
          sub_100273EC8(&qword_1005246D0, 255, &type metadata accessor for RoutingControl);
          v118 = v182;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v190 = v117;
          v150 = *(v116 + 48);
          type metadata accessor for RoutingControls.TVRemoteControl.Context();
          v197 = 1;
          sub_100273EC8(&qword_1005246D8, 255, &type metadata accessor for RoutingControls.TVRemoteControl.Context);
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v133 = 0;
          v159 = 0;
          (*(v183 + 8))(v101, v118);
          goto LABEL_55;
        }
      }
    }

    (*(v75 + 8))(v40, v61);
    goto LABEL_11;
  }

  v62 = v160;
  if (v49 != 6)
  {
    v194 = v48;
    if (v49 == 7)
    {
      v197 = 7;
      sub_1002740B4();
      v63 = v185;
      v64 = v159;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v64)
      {
        LODWORD(v162) = 7;
        v193 = v40;
        v65 = sub_1001BC5A8(&qword_100524290, &qword_100455140);
        v190 = swift_allocBox();
        type metadata accessor for RoutingControl();
        v197 = 0;
        sub_100273EC8(&qword_1005246D0, 255, &type metadata accessor for RoutingControl);
        v66 = v174;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v131 = *(v65 + 48);
        type metadata accessor for RoutingInteraction.Action.ControlContext();
        v197 = 1;
        sub_100273EC8(&qword_1005246F0, v132, type metadata accessor for RoutingInteraction.Action.ControlContext);
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v133 = 0;
        v134 = v175;
        v159 = 0;
LABEL_54:
        (*(v134 + 8))(v63, v66);
        (*(v62 + 8))(v193, v61);
        goto LABEL_56;
      }
    }

    else
    {
      v197 = 8;
      sub_100274060();
      v63 = v188;
      v97 = v159;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v97)
      {
        LODWORD(v162) = v49;
        v193 = v40;
        v114 = sub_1001BC5A8(&qword_100524280, &qword_100455138);
        v115 = swift_allocBox();
        type metadata accessor for ContinuousRoutingControl();
        v197 = 0;
        sub_100273EC8(&qword_1005246E8, 255, &type metadata accessor for ContinuousRoutingControl);
        v66 = v177;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v190 = v115;
        v148 = *(v114 + 48);
        type metadata accessor for RoutingInteraction.Action.ControlContext();
        v197 = 1;
        sub_100273EC8(&qword_1005246F0, v149, type metadata accessor for RoutingInteraction.Action.ControlContext);
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v133 = 0;
        v159 = 0;
        v134 = v176;
        goto LABEL_54;
      }
    }

LABEL_29:
    (*(v62 + 8))(v40, v61);
    goto LABEL_11;
  }

  LODWORD(v162) = 6;
  v197 = 6;
  sub_100274108();
  v84 = v159;
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  if (v84)
  {
    goto LABEL_29;
  }

  v135 = swift_allocObject();
  v197 = 0;
  v105 = v170;
  v135[2] = KeyedDecodingContainer.decode(_:forKey:)();
  v135[3] = v126;
  v197 = 1;
  v127 = KeyedDecodingContainer.decode(_:forKey:)();
  v128 = v173;
  v135[4] = v127;
  v135[5] = v154;
  type metadata accessor for RoutingInteraction.Action.HandoffContext(0);
  v197 = 2;
  sub_100273EC8(&qword_1005246F8, 255, type metadata accessor for RoutingInteraction.Action.HandoffContext);
  v155 = v190;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v133 = 0;
  v159 = 0;
  (*(v128 + 8))(v155, v105);
  (*(v62 + 8))(v40, v61);
  swift_unknownObjectRelease();
  v137 = 0;
  v152 = 0;
  v71 = v191;
LABEL_58:
  result = sub_100026A44(v196);
  *v71 = v135;
  *(v71 + 8) = v137;
  *(v71 + 16) = v133;
  *(v71 + 24) = v152;
  *(v71 + 32) = v162;
  return result;
}

unint64_t sub_100276744()
{
  result = qword_10052F668[0];
  if (!qword_10052F668[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10052F668);
  }

  return result;
}

unint64_t sub_100276798()
{
  result = qword_100524358;
  if (!qword_100524358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100524358);
  }

  return result;
}

uint64_t sub_1002767EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1001BC5A8(&qword_100524658, &qword_100456E88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_1000326D8(a1, a1[3]);
  sub_100276744();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100026A44(a1);
  }

  LOBYTE(v20) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v14 = v11;
  v23 = 1;
  sub_10027867C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v15 = v22;
  v18 = v21;
  v19 = v20;
  result = sub_100026A44(a1);
  *a2 = v14;
  *(a2 + 8) = v13;
  v17 = v18;
  *(a2 + 16) = v19;
  *(a2 + 32) = v17;
  *(a2 + 48) = v15;
  return result;
}