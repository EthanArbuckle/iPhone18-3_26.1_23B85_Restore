uint64_t sub_100300500(uint64_t a1)
{
  v3 = *(a1 + 16);
  result = *v1;
  v5 = *(*v1 + 24);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (*(*v1 + 16) < v6 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1003023B8(isUniquelyReferenced_nonNull_native, v6, 0);
    }

    v8 = *(type metadata accessor for Response(0) - 8);
    return sub_100302CE0(*v1 + 16, *v1 + ((*(v8 + 80) + 40) & ~*(v8 + 80)), a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v3);
  }

  return result;
}

uint64_t ServerResponseFramingParser.byteCountNeededToCompleteFrame.getter()
{
  result = *(v0 + 168);
  v2 = *(v0 + 176);
  return result;
}

__n128 ServerResponseFramingParser.init()@<Q0>(uint64_t a1@<X8>)
{
  FramingParser.init(bufferSizeLimit:)(6000000, v8);
  sub_100303CD4(v9);
  v2 = v9[5];
  *(a1 + 128) = v9[4];
  *(a1 + 144) = v2;
  v3 = v10;
  v4 = v9[1];
  *(a1 + 64) = v9[0];
  *(a1 + 80) = v4;
  v5 = v9[3];
  *(a1 + 96) = v9[2];
  *(a1 + 112) = v5;
  v6 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v6;
  result = v8[3];
  *(a1 + 32) = v8[2];
  *(a1 + 48) = result;
  *(a1 + 160) = v3;
  *(a1 + 168) = 0;
  *(a1 + 176) = 1;
  *(a1 + 184) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_1003006C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004A5A64();
  result = sub_1002F2764(v6, a1, a2);
  if (v9)
  {
    v10 = *(a3 + 40);
    v11 = __CFADD__(v10, 1);
    v12 = v10 + 1;
    if (!v11)
    {
      *(a3 + 40) = v12;
      return v8;
    }

    __break(1u);
  }

  else
  {
    v13 = *(a3 + 48);
    v11 = __CFADD__(v13, 1);
    v14 = v13 + 1;
    if (!v11)
    {
      *(a3 + 48) = v14;

      sub_1002F284C(v6, a1, a2);
      return a1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003007AC(const void *a1, uint64_t a2)
{
  v4 = type metadata accessor for ServerResponseFramingParser.Frame(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  if (a1)
  {
    v6 = a1 + a2;
  }

  else
  {
    v6 = 0;
  }

  FramingParser.appendAndFrameBytes(_:)(a1, v6);
  sub_100300990(v7);
}

void sub_100300990(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ServerResponseFramingParser.Frame(0);
  v32 = *(v4 - 8);
  v5 = *(v32 + 64);
  v6 = __chkstk_darwin(v4);
  v36 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 16);
  if (!v8)
  {
    return;
  }

  v9 = (a1 + 56);
  v6.n128_u64[0] = 68157955;
  v30 = v6;
  v31 = xmmword_1004DB2C0;
  v29 = v2;
  v34 = v4;
  while (1)
  {
    v10 = *(v9 - 3);
    v11 = *(v9 - 2);
    v12 = *(v9 - 1);
    v13 = v12 >> 62;
    if ((v12 >> 62) <= 1)
    {
      if (v13)
      {
        *(v2 + 168) = v10;
        *(v2 + 176) = 0;
      }

      else
      {
        v38 = *(v9 - 3);
        v39 = v11;
        v40 = v12;
        v41 = WORD2(v12);
        v42 = BYTE6(v12);
        sub_100300FA4(&v38);
        *(v2 + 168) = 0;
        *(v2 + 176) = 1;
      }

      goto LABEL_4;
    }

    v14 = *v9;
    if (v13 != 2)
    {
      break;
    }

    v38 = *(v9 - 3);
    v39 = v11;
    v40 = v12;
    v41 = WORD2(v12);
    v42 = BYTE6(v12);
    sub_100300FA4(&v38);
    *(v2 + 168) = v14 & ~(v14 >> 63);
    *(v2 + 176) = v14 < 0;
LABEL_4:
    v9 += 4;
    if (!--v8)
    {
      return;
    }
  }

  v37 = HIDWORD(v12);
  swift_beginAccess();
  v33 = *(v10 + 24);
  sub_1003041C4(v10, v11, v12);
  v35 = v14;
  sub_1003041C4(v10, v11, v12);
  if (qword_1005D7D18 != -1)
  {
    swift_once();
  }

  v15 = sub_1004A4A74();
  sub_1001C203C(v15, qword_1005DE260);
  v16 = sub_1004A4A54();
  v17 = sub_1004A6024();
  if (!os_log_type_enabled(v16, v17))
  {
LABEL_16:

    sub_1003041D8();
    v22 = swift_allocError();
    *v23 = v31;
    *(v23 + 16) = 3;
    v24 = v36;
    *v36 = v22;
    v24[1] = v10;
    v24[2] = v11;
    *(v24 + 30) = BYTE6(v12);
    *(v24 + 14) = v37;
    *(v24 + 6) = v12;
    swift_storeEnumTagMultiPayload();
    v25 = *(v2 + 184);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_1002FAE44(0, v25[2] + 1, 1, v25);
    }

    v27 = v25[2];
    v26 = v25[3];
    if (v27 >= v26 >> 1)
    {
      v25 = sub_1002FAE44(v26 > 1, v27 + 1, 1, v25);
    }

    sub_10030422C(v10, v11, v12);
    sub_10030422C(v10, v11, v12);
    v25[2] = v27 + 1;
    sub_1003026F8(v36, v25 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v27, type metadata accessor for ServerResponseFramingParser.Frame);
    *(v2 + 184) = v25;
    goto LABEL_4;
  }

  v18 = HIDWORD(v11) - v11;
  v19 = swift_slowAlloc();
  *v19 = v30.n128_u32[0];
  if (v18 >= 0xFFFFFFFF80000000)
  {
    if (v18 > 0x7FFFFFFF)
    {
      goto LABEL_23;
    }

    v20 = (BYTE6(v12) | (v37 << 8)) + v11;
    *(v19 + 4) = v18;
    v21 = v33 + v20;
    *(v19 + 8) = 2101;
    *(v19 + 10) = v21;
    _os_log_impl(&_mh_execute_header, v16, v17, "Received invalid data frame from server: %{sensitive}.*P", v19, 0x12u);

    v2 = v29;
    goto LABEL_16;
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

uint64_t ServerResponseFramingParser.append(_:)(const void *a1, uint64_t a2)
{
  v4 = type metadata accessor for ServerResponseFramingParser.Frame(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  FramingParser.appendAndFrameBytes(_:)(a1, a2);
  sub_100300990(v6);
}

uint64_t sub_100300FA4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000C9C0(&qword_1005D4788, &qword_1004F4BD0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v44 - v6;
  v46 = type metadata accessor for ResponseOrContinuationRequest(0);
  v51 = *(v46 - 8);
  v8 = *(v51 + 64);
  __chkstk_darwin(v46);
  v44 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C9C0(&qword_1005D8568, &qword_1004F4BD8);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v44 - v12;
  v54 = type metadata accessor for ServerResponseFramingParser.Frame(0);
  v14 = *(v54 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v54);
  v56 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v55 = &v44 - v18;
  v19 = *a1;
  v20 = *(a1 + 8);
  v21 = *(a1 + 12);
  v22 = *(a1 + 16);
  v23 = *(a1 + 20);
  v24 = *(a1 + 22);
  v25 = *(v2 + 144);
  v47 = v2 + 144;
  if (v25)
  {
    v26 = *(v2 + 166);
    v27 = *(v2 + 164);
    v28 = *(v2 + 160);
    v29 = *(v2 + 152);
    v64 = v25;
    v65 = v29;
    v66 = v28;
    v67 = v27;
    v68 = v26;
    v58 = v19;
    v59 = v20;
    v60 = v21;
    v61 = v22;
    v62 = v23;
    v63 = v24;
    ByteBuffer.writeBuffer(_:)(&v58);
    v22 = v66;
    v23 = v67;
    v24 = v68;
    v19 = v64;
    v30 = v65;
    v31 = v66 | (v67 << 32) | (v68 << 48);
  }

  else
  {
    v30 = v20 | (v21 << 32);
    v31 = v22 | (v23 << 32) | (v24 << 48);
  }

  *(v2 + 144) = v19;
  *(v2 + 152) = v30;
  *(v2 + 160) = v31;
  *(v2 + 166) = BYTE6(v31);
  v57 = v2;
  *(v2 + 164) = WORD2(v31);
  if (v19)
  {
    v52 = v47 - 80;
    v53 = (v14 + 56);
    v45 = (v51 + 48);
    v48 = v14;
    v49 = v7;
    v51 = v14 + 48;
    while (1)
    {
      v64 = v19;
      v65 = v30;
      v66 = v22;
      v67 = v23;
      v68 = v24;

      ResponseParser.parseResponseStream(buffer:)(&v64, v7);
      if ((*v45)(v7, 1, v46) == 1)
      {
        sub_100025F40(v7, &qword_1005D4788, &qword_1004F4BD0);
        v32 = v54;
        v33 = *v53;
        v34 = v13;
        v35 = 1;
      }

      else
      {
        v36 = v44;
        sub_1003026F8(v7, v44, type metadata accessor for ResponseOrContinuationRequest);
        sub_1003026F8(v36, v13, type metadata accessor for ResponseOrContinuationRequest);
        v32 = v54;
        swift_storeEnumTagMultiPayload();
        v33 = *v53;
        v34 = v13;
        v35 = 0;
      }

      v50 = v33;
      v33(v34, v35, 1, v32);

      if (v65 == HIDWORD(v30))
      {

        v19 = 0;
        v30 = 0;
        v37 = 0;
      }

      else
      {
        v30 = v30 & 0xFFFFFFFF00000000 | v65;
        v37 = v22 | (v23 << 32) | (v24 << 48);
      }

      v38 = v57;
      *(v57 + 144) = v19;
      *(v38 + 152) = v30;
      *(v38 + 160) = v37;
      *(v38 + 166) = BYTE6(v37);
      v22 = v37;
      v23 = WORD2(v37);
      v24 = BYTE6(v37);
      *(v38 + 164) = WORD2(v37);
      if ((*v51)(v13, 1, v32) == 1)
      {
        break;
      }

      v39 = v55;
      sub_1003026F8(v13, v55, type metadata accessor for ServerResponseFramingParser.Frame);
      sub_100304240(v39, v56, type metadata accessor for ServerResponseFramingParser.Frame);
      v40 = *(v38 + 184);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_1002FAE44(0, v40[2] + 1, 1, v40);
      }

      v42 = v40[2];
      v41 = v40[3];
      if (v42 >= v41 >> 1)
      {
        v40 = sub_1002FAE44(v41 > 1, v42 + 1, 1, v40);
      }

      sub_1003042A8(v55, type metadata accessor for ServerResponseFramingParser.Frame);
      v40[2] = v42 + 1;
      sub_1003026F8(v56, v40 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v42, type metadata accessor for ServerResponseFramingParser.Frame);
      *(v57 + 184) = v40;
      v7 = v49;
      if (!v19)
      {
        v50(v13, 1, 1, v54);
        return sub_100025F40(v13, &qword_1005D8568, &qword_1004F4BD8);
      }
    }
  }

  else
  {
    (*(v14 + 56))(v13, 1, 1, v54);
  }

  return sub_100025F40(v13, &qword_1005D8568, &qword_1004F4BD8);
}

uint64_t ServerResponseFramingParser.popAllFrames()()
{
  result = *(v0 + 184);
  *(v0 + 184) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_100301600@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ResponsePayload();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100304240(v2, v7, type metadata accessor for ResponsePayload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      *a1 = *v7;
      if (EnumCaseMultiPayload != 4)
      {
        *(a1 + 8) = *(v7 + 8);
      }

LABEL_31:
      type metadata accessor for UntaggedResponse(0);
      return swift_storeEnumTagMultiPayload();
    }

    if (EnumCaseMultiPayload > 8)
    {
      v12 = *(v7 + 2);
      v13 = v7[24];
      *a1 = *v7;
      *(a1 + 16) = v12;
      *(a1 + 24) = v13;
      type metadata accessor for UntaggedResponse(0);
      return swift_storeEnumTagMultiPayload();
    }

    v51 = type metadata accessor for ResponsePayload;
LABEL_46:
    sub_1003042A8(v7, v51);
    goto LABEL_47;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      *a1 = *v7;
      type metadata accessor for UntaggedResponse(0);
      return swift_storeEnumTagMultiPayload();
    }

    type metadata accessor for MessageData();
    v11 = swift_getEnumCaseMultiPayload();
    if (v11 < 1)
    {
      *a1 = *v7;
      type metadata accessor for UntaggedResponse(0);
      return swift_storeEnumTagMultiPayload();
    }

    if (v11 <= 1 || v11 == 2)
    {
      sub_100025FDC(v7, a1, &unk_1005D91B0, &unk_1004CF400);
      type metadata accessor for UntaggedResponse(0);
      return swift_storeEnumTagMultiPayload();
    }

    v51 = type metadata accessor for MessageData;
    goto LABEL_46;
  }

  if (EnumCaseMultiPayload)
  {
    v14 = *(v7 + 5);
    v15 = *(v7 + 7);
    v57 = *(v7 + 6);
    v58 = v15;
    v16 = *(v7 + 7);
    v59 = *(v7 + 8);
    v17 = *(v7 + 1);
    v18 = *(v7 + 3);
    v53 = *(v7 + 2);
    v54 = v18;
    v19 = *(v7 + 3);
    v20 = *(v7 + 5);
    v55 = *(v7 + 4);
    v56 = v20;
    v21 = *(v7 + 1);
    v52[0] = *v7;
    v52[1] = v21;
    v60[6] = v57;
    v60[7] = v16;
    v60[8] = *(v7 + 8);
    v60[2] = v53;
    v60[3] = v19;
    v60[4] = v55;
    v60[5] = v14;
    v60[0] = v52[0];
    v60[1] = v17;
    v22 = sub_1003045D0(v60);
    v23 = sub_1003045DC(v60);
    if (v22 <= 4)
    {
      if (v22 <= 1)
      {
        if (v22)
        {
          v43 = *(v23 + 16);
          v44 = *(v23 + 20);
          v45 = *(v23 + 24);
          v46 = *(v23 + 32);
          *a1 = *v23;
          *(a1 + 16) = v43;
          *(a1 + 20) = v44;
          *(a1 + 24) = v45;
          *(a1 + 32) = v46;
        }

        else
        {
          v25 = sub_100303B80(*v23);
          sub_1003045EC(v52);
          *a1 = v25;
        }
      }

      else
      {
        if (v22 == 2)
        {
          v27 = *(v23 + 16);
          v28 = *(v23 + 20);
          v29 = *(v23 + 24);
          v30 = *(v23 + 32);
          *a1 = *v23;
          *(a1 + 16) = v27;
          *(a1 + 20) = v28;
          *(a1 + 24) = v29;
          *(a1 + 32) = v30;
          type metadata accessor for UntaggedResponse(0);
          return swift_storeEnumTagMultiPayload();
        }

        if (v22 == 3)
        {
          *a1 = *v23;
        }

        else
        {
          v37 = *(v23 + 32);
          v38 = *(v23 + 33);
          v39 = *(v23 + 40);
          v40 = *(v23 + 16);
          *a1 = *v23;
          *(a1 + 16) = v40;
          *(a1 + 32) = v37;
          *(a1 + 33) = v38;
          *(a1 + 40) = v39;
        }
      }

      goto LABEL_31;
    }

    if (v22 > 7)
    {
      if (v22 == 8)
      {
        v26 = *(v23 + 16);
        *a1 = *v23;
        *(a1 + 16) = v26;
        type metadata accessor for UntaggedResponse(0);
      }

      else
      {
        if (v22 != 10)
        {
          while (1)
          {
            sub_1003045EC(v52);
LABEL_47:
            sub_1004A69A4();
            __break(1u);
          }
        }

        v47 = *(v23 + 16);
        v48 = *(v23 + 32);
        v49 = *(v23 + 40);
        v50 = *(v23 + 24);
        *a1 = *v23;
        *(a1 + 16) = v47;
        *(a1 + 24) = v50;
        *(a1 + 32) = v48;
        *(a1 + 40) = v49;
        type metadata accessor for UntaggedResponse(0);
      }

      return swift_storeEnumTagMultiPayload();
    }

    if (v22 == 5)
    {
      *a1 = *v23;
      v31 = *(v23 + 16);
      v32 = *(v23 + 32);
      v33 = *(v23 + 64);
      *(a1 + 48) = *(v23 + 48);
      *(a1 + 64) = v33;
      *(a1 + 16) = v31;
      *(a1 + 32) = v32;
      v34 = *(v23 + 80);
      v35 = *(v23 + 96);
      v36 = *(v23 + 128);
      *(a1 + 112) = *(v23 + 112);
      *(a1 + 128) = v36;
      *(a1 + 80) = v34;
      *(a1 + 96) = v35;
      type metadata accessor for UntaggedResponse(0);
      return swift_storeEnumTagMultiPayload();
    }

    if (v22 == 6)
    {
      v24 = *v23;
      if (!HIDWORD(*v23))
      {
        goto LABEL_42;
      }
    }

    else
    {
      v24 = *v23;
      if (!HIDWORD(*v23))
      {
LABEL_42:
        *a1 = v24;
        type metadata accessor for UntaggedResponse(0);
        return swift_storeEnumTagMultiPayload();
      }
    }

    sub_1003041D8();
    swift_allocError();
    *v41 = v24;
    *(v41 + 8) = 0;
    *(v41 + 16) = 2;
    return swift_willThrow();
  }

  v9 = *(v7 + 2);
  v10 = v7[24];
  *a1 = *v7;
  *(a1 + 16) = v9;
  type metadata accessor for UntaggedResponse(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100301C28@<X0>(uint64_t a1@<X8>)
{
  *v15 = *(v1 + 16);
  *&v15[9] = *(v1 + 25);
  v3 = *&v15[8];
  v13 = *v15;
  v4 = *&v15[16];
  v5 = v15[24];
  v7 = *v1;
  v6 = *(v1 + 8);

  if (v15[24])
  {
    sub_100304640(v15, v14);
  }

  else
  {

    sub_100304640(v15, v14);
  }

  v8 = sub_100305384(v7, v6);
  if (v9)
  {
    sub_1003041D8();
    swift_allocError();
    *v10 = v7;
    *(v10 + 8) = v6;
    *(v10 + 16) = 0;
    swift_willThrow();
    sub_10001114C(v13);
  }

  else
  {
    v12 = v8;

    *a1 = v12;
    *(a1 + 4) = HIDWORD(v12);
    *(a1 + 8) = v13;
    *(a1 + 16) = v3;
    *(a1 + 24) = v4;
    *(a1 + 32) = v5;
    type metadata accessor for Response(0);
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_100301D68@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for Response(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100304240(a1, v7, type metadata accessor for Response);
  result = swift_getEnumCaseMultiPayload();
  if (result > 2)
  {
    if (result == 3)
    {
      result = sub_1003042A8(v7, type metadata accessor for Response);
      v20 = 0x6C61746166;
      v21 = 0xE500000000000000;
      goto LABEL_30;
    }

    if (result != 4)
    {
      v20 = 0x72617453656C6469;
      v21 = 0xEB00000000646574;
      goto LABEL_30;
    }

    result = sub_1003042A8(v7, type metadata accessor for Response);
    v22 = 0x80000001004AE500;
    v23 = 0xD000000000000017;
    goto LABEL_49;
  }

  if (!result)
  {
    type metadata accessor for ResponsePayload();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload <= 6)
      {
        if (EnumCaseMultiPayload == 5)
        {
          result = sub_1003042A8(v7, type metadata accessor for ResponsePayload);
          v20 = 0x6465676761746E75;
          v21 = 0xEC00000029646928;
          goto LABEL_30;
        }

        result = sub_1003042A8(v7, type metadata accessor for ResponsePayload);
        v35 = "untagged(quotaRoot)";
        goto LABEL_48;
      }

      if (EnumCaseMultiPayload == 7)
      {
        result = sub_1003042A8(v7, type metadata accessor for ResponsePayload);
        v20 = 0x6465676761746E75;
        v21 = 0xEF2961746F757128;
        goto LABEL_30;
      }

      if (EnumCaseMultiPayload == 8)
      {
        result = sub_1003042A8(v7, type metadata accessor for ResponsePayload);
        v22 = 0x80000001004AE5C0;
        v23 = 0xD000000000000012;
        goto LABEL_49;
      }

      result = sub_1003042A8(v7, type metadata accessor for ResponsePayload);
      v36 = "untagged(applePushService)";
    }

    else
    {
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          *a2 = 0xD000000000000015;
          a2[1] = 0x80000001004AE640;
          return sub_1003042A8(v7, type metadata accessor for ResponsePayload);
        }

        if (EnumCaseMultiPayload == 3)
        {
          result = sub_1003042A8(v7, type metadata accessor for ResponsePayload);
          v22 = 0x80000001004AE620;
          v23 = 0xD000000000000018;
        }

        else
        {
          result = sub_1003042A8(v7, type metadata accessor for ResponsePayload);
          v22 = 0x80000001004AE600;
          v23 = 0xD000000000000014;
        }

        goto LABEL_49;
      }

      if (EnumCaseMultiPayload)
      {
        result = sub_1003042A8(v7, type metadata accessor for ResponsePayload);
        v37 = "untagged(mailboxData)";
        goto LABEL_46;
      }

      result = sub_1003042A8(v7, type metadata accessor for ResponsePayload);
      v36 = "untagged(conditionalState)";
    }

    v22 = (v36 - 32) | 0x8000000000000000;
    v23 = 0xD00000000000001ALL;
    goto LABEL_49;
  }

  if (result != 1)
  {
    v25 = *v7;
    v26 = *(v7 + 1);
    v28 = *(v7 + 2);
    v27 = *(v7 + 3);
    v29 = *(v7 + 4);
    v30 = v7[40];
    if (v7[40])
    {
      *&v49[0] = *v7;
      *(&v49[0] + 1) = v26;
      if (v30 == 1)
      {

        v51._countAndFlagsBits = 5197344;
        v51._object = 0xE300000000000000;
        sub_1004A5994(v51);

        v31 = v28;
        v32 = v27;
        v33 = v29;
        v34 = 1;
      }

      else
      {

        v53._countAndFlagsBits = 1145127456;
        v53._object = 0xE400000000000000;
        sub_1004A5994(v53);

        v31 = v28;
        v32 = v27;
        v33 = v29;
        v34 = 2;
      }
    }

    else
    {
      *&v49[0] = *v7;
      *(&v49[0] + 1) = v26;

      v52._countAndFlagsBits = 4935456;
      v52._object = 0xE300000000000000;
      sub_1004A5994(v52);

      v31 = v28;
      v32 = v27;
      v33 = v29;
      v34 = 0;
    }

    result = sub_100173584(v31, v32, v33, v34);
    v21 = *(&v49[0] + 1);
    v20 = *&v49[0];
    goto LABEL_30;
  }

  v9 = *(v7 + 9);
  v10 = *(v7 + 7);
  v45 = *(v7 + 8);
  v46 = v9;
  v11 = *(v7 + 9);
  v47 = *(v7 + 10);
  v12 = *(v7 + 5);
  v13 = *(v7 + 3);
  v41 = *(v7 + 4);
  v42 = v12;
  v14 = *(v7 + 5);
  v15 = *(v7 + 7);
  v43 = *(v7 + 6);
  v44 = v15;
  v16 = *(v7 + 1);
  v38[0] = *v7;
  v38[1] = v16;
  v17 = *(v7 + 3);
  v19 = *v7;
  v18 = *(v7 + 1);
  v39 = *(v7 + 2);
  v40 = v17;
  v49[8] = v45;
  v49[9] = v11;
  v49[10] = *(v7 + 10);
  v49[4] = v41;
  v49[5] = v14;
  v49[6] = v43;
  v49[7] = v10;
  v49[0] = v19;
  v49[1] = v18;
  v48 = *(v7 + 88);
  v50 = *(v7 + 88);
  v49[2] = v39;
  v49[3] = v13;
  result = sub_1003043EC(v49);
  if (result > 3)
  {
    if (result == 4)
    {
      sub_1002F9BA4(v49);
      result = sub_100304408(v38);
      v37 = "fetch(streamingBytes)";
      goto LABEL_46;
    }

    if (result != 5)
    {
      v20 = 0x6966286863746566;
      v21 = 0xED0000296873696ELL;
      goto LABEL_30;
    }

    v35 = "fetch(streamingEnd)";
LABEL_48:
    v22 = (v35 - 32) | 0x8000000000000000;
    v23 = 0xD000000000000013;
    goto LABEL_49;
  }

  if (result < 2)
  {
    result = sub_1002F9BA4(v49);
    v20 = 0x7473286863746566;
    v21 = 0xEC00000029747261;
LABEL_30:
    *a2 = v20;
    a2[1] = v21;
    return result;
  }

  if (result != 2)
  {
    sub_1002F9BA4(v49);
    result = sub_100304408(v38);
    v37 = "fetch(streamingBegin)";
LABEL_46:
    v22 = (v37 - 32) | 0x8000000000000000;
    v23 = 0xD000000000000015;
    goto LABEL_49;
  }

  sub_1002F9BA4(v49);
  result = sub_100304408(v38);
  v22 = 0x80000001004AE580;
  v23 = 0xD000000000000016;
LABEL_49:
  *a2 = v23;
  a2[1] = v22;
  return result;
}

size_t sub_1003023B8(char a1, Swift::Int a2, char a3)
{
  v7 = *v3;
  v8 = (*v3 + 16);
  v9 = *v8;
  v10 = type metadata accessor for Response(0);
  v11 = v10;
  if (v9 >= a2)
  {
    v20 = *(v10 - 8);
    v21 = *(v20 + 80);
    sub_10000C9C0(&qword_1005D8570, &qword_1004F4BE8);
    v22 = *(v20 + 72);
    v17 = swift_allocObject();
    v23 = *(v7 + 24);
    *(v17 + 16) = v9;
    *(v17 + 24) = v23;
    if (v23 >= 1)
    {
      sub_100302A18(v17 + 16, v17 + ((v21 + 40) & ~v21), v8, v7 + ((v21 + 40) & ~v21));
    }

    goto LABEL_19;
  }

  sub_1004A47C4(a2, a3 & 1);
  v12 = *(v11 - 8);
  v13 = *(v12 + 80);
  if (a1)
  {
    v14 = *(v7 + 24);
    sub_10000C9C0(&qword_1005D8570, &qword_1004F4BE8);
    v15 = *(v12 + 72);
    v16 = (v13 + 40) & ~v13;
    v17 = swift_allocObject();
    result = j__malloc_size(v17);
    if (v15)
    {
      if (result - v16 != 0x8000000000000000 || v15 != -1)
      {
        *(v17 + 16) = (result - v16) / v15;
        *(v17 + 24) = v14;
        *(v17 + 32) = 0;
        if (v14 >= 1)
        {
          sub_100302760(v17 + 16, v17 + v16, v8, v7 + v16);
          *(v7 + 24) = 0;
        }

LABEL_19:

        *v3 = v17;
        return result;
      }

      goto LABEL_22;
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_10000C9C0(&qword_1005D8570, &qword_1004F4BE8);
  v24 = *(v12 + 72);
  v25 = (v13 + 40) & ~v13;
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v24)
  {
    goto LABEL_21;
  }

  if (result - v25 != 0x8000000000000000 || v24 != -1)
  {
    v27 = *(v7 + 24);
    *(v17 + 16) = (result - v25) / v24;
    *(v17 + 24) = v27;
    *(v17 + 32) = 0;
    if (v27 >= 1)
    {
      sub_1003028F4(v17 + 16, v17 + v25, v8, v7 + v25);
    }

    goto LABEL_19;
  }

LABEL_23:
  __break(1u);
  return result;
}

void *sub_100302628(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1];
  v4 = result[2];
  v5 = v4 + v3;
  if (!__OFADD__(v4, v3))
  {
    v8 = result;
    if ((v3 & 0x8000000000000000) == 0)
    {
      v9 = __OFSUB__(v5, *result);
      if (v5 < *result || (v5 -= *result, !v9))
      {
LABEL_9:
        v10 = type metadata accessor for Response(0);
        result = sub_100304240(a3, a2 + *(*(v10 - 8) + 72) * v5, type metadata accessor for Response);
        v11 = v8[1];
        v9 = __OFADD__(v11, 1);
        v12 = v11 + 1;
        if (!v9)
        {
          v8[1] = v12;
          return result;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v5 < 0)
    {
      v9 = __OFADD__(v5, *result);
      v5 += *result;
      if (v9)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1003026F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_100302760(uint64_t a1, unint64_t a2, void *a3, unint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_37;
  }

  v8 = a3[1];
  v9 = *(type metadata accessor for Response(0) - 8);
  if (v5 < v8)
  {
    v10 = v8 - v5;
    if (!__OFSUB__(v8, v5))
    {
      v11 = v5;
      v12 = a4;
      goto LABEL_6;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v12 = 0;
  v10 = 0;
  v11 = v8;
LABEL_6:
  if (v10)
  {
    v13 = v5 < v8;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(v9 + 72);
  if (v13)
  {
    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  if (v11 < 1)
  {
    v11 = 0;
    goto LABEL_22;
  }

  if (!a4)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v16 = a4 + v14 * v4;
  if (v16 <= a2 && v16 + v14 * v11 > a2)
  {
    if (v16 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    swift_arrayInitWithTakeFrontToBack();
  }

LABEL_22:
  if (v5 < v8 && v10 >= 1)
  {
    if (v15)
    {
      v19 = a2 + v14 * v11;
      if (v19 < v15 || v19 >= v15 + v14 * v10)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v19 != v15)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      return;
    }

LABEL_39:
    __break(1u);
  }
}

void sub_1003028F4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3[1];
  v8 = *(type metadata accessor for Response(0) - 8);
  if (v5 < v7)
  {
    v9 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v10 = v5;
      v11 = a4;
      goto LABEL_6;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = 0;
  v9 = 0;
  v10 = v7;
LABEL_6:
  v12 = *(v8 + 72);
  if (v10 < 1)
  {
    goto LABEL_9;
  }

  if (!a4)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  swift_arrayInitWithCopy();
LABEL_9:
  if (v5 < v7 && v9 >= 1)
  {
    if (v11)
    {
      swift_arrayInitWithCopy();
      return;
    }

LABEL_19:
    __break(1u);
  }
}

void sub_100302A18(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3[1];
  v8 = *(type metadata accessor for Response(0) - 8);
  if (v5 >= v7)
  {
    v10 = 0;
    v9 = 0;
    if (v7 < 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (a4)
    {
      v11 = *(v8 + 72) * v4;
      swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = v7 - v5;
  if (__OFSUB__(v7, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = a4;
  if (v5 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v5 < v7 && v9 >= 1)
  {
    if (v10)
    {
      swift_arrayInitWithCopy();
      return;
    }

LABEL_19:
    __break(1u);
  }
}

uint64_t sub_100302B30()
{
  v1 = *v0;
  v2 = type metadata accessor for Response(0);
  v3 = *(v1 + 16);
  v4 = *(v2 - 8);
  v5 = *(v4 + 80);
  sub_10000C9C0(&qword_1005D8570, &qword_1004F4BE8);
  v6 = *(v4 + 72);
  v7 = swift_allocObject();
  v8 = *(v1 + 24);
  *(v7 + 16) = v3;
  *(v7 + 24) = v8;
  if (v8 >= 1)
  {
    sub_100302A18(v7 + 16, v7 + ((v5 + 40) & ~v5), (v1 + 16), v1 + ((v5 + 40) & ~v5));
  }

  *v0 = v7;
  return result;
}

uint64_t sub_100302CE0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 1)
  {
    v7 = result;
    v8 = *(result + 16);
    result = v8 - a4;
    if (__OFADD__(v8, -a4))
    {
      __break(1u);
    }

    else
    {
      if (result < 0)
      {
        v9 = __OFADD__(result, *v7);
        result += *v7;
        if (v9)
        {
          goto LABEL_10;
        }
      }

      v7[2] = result;
      v10 = v7[1];
      v9 = __OFADD__(v10, a4);
      v11 = v10 + a4;
      if (!v9)
      {
        v7[1] = v11;
        sub_100302ED0(result, v8, v7, a2, v12);
        return sub_100302D84(a3, a4);
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t sub_100302D84(uint64_t result, uint64_t a2)
{
  v4 = result;
  if ((v2[4] & 1) == 0)
  {
    v6 = v2[1];
    if (v6 < 0)
    {
      __break(1u);
    }

    else
    {
      v7 = v2[2];
      v8 = v2[3];
      if (result && v6)
      {
        v9 = *v2;
        type metadata accessor for Response(0);
        result = swift_arrayInitWithCopy();
      }

      if (!__OFADD__(v6, a2 - v6))
      {
        if (a2 >= v6)
        {
          if (!v4 || a2 == v6)
          {
            return result;
          }

          result = type metadata accessor for Response(0);
          if (v8 >= a2 - v6)
          {
            v10 = v4 + *(*(result - 8) + 72) * v6;
            goto LABEL_17;
          }

LABEL_24:
          __break(1u);
          return result;
        }

        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!result || !a2)
  {
    return result;
  }

  if (v2[1] < a2)
  {
    goto LABEL_23;
  }

  v5 = *v2;
  type metadata accessor for Response(0);
LABEL_17:

  return swift_arrayInitWithCopy();
}

uint64_t sub_100302ED0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a2;
  v7 = result;
  if (result >= a2)
  {
    v12 = *a3 - result;
    if (!__OFSUB__(*a3, result))
    {
      v14 = a2 == 0;
      if (a2)
      {
        v13 = a4;
      }

      else
      {
        v13 = 0;
      }

      v15 = type metadata accessor for Response(0);
      v16 = *(v15 - 8);
      result = v15 - 8;
      v10 = v16;
      goto LABEL_9;
    }
  }

  else
  {
    v9 = type metadata accessor for Response(0);
    v11 = *(v9 - 8);
    result = v9 - 8;
    v10 = v11;
    v12 = v6 - v7;
    if (!__OFSUB__(v6, v7))
    {
      v13 = 0;
      v6 = 0;
      v14 = 1;
LABEL_9:
      *a5 = a4 + *(v10 + 72) * v7;
      *(a5 + 8) = v12;
      *(a5 + 16) = v13;
      *(a5 + 24) = v6;
      *(a5 + 32) = v14;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100302FC0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = HIDWORD(a3);
  v48 = WORD2(a4);
  v9 = BYTE6(a4);
  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1004A6E94();
  QuotaRoot.hash(into:)(v51, a2, a3, a4 & 0xFFFFFFFFFFFFFFLL);
  v12 = sub_1004A6F14();
  v13 = v10 + 56;
  v14 = -1 << *(v10 + 32);
  v15 = v12 & ~v14;
  v49 = a4;
  v43 = a3;
  v41 = v8;
  v47 = v9;
  if ((*(v10 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = v10;
    v17 = ~v14;
    v18 = (v8 - a3);
    v45 = (v9 & 0xFFFFFFFFFF0000FFLL | (WORD2(a4) << 8)) + a3;
    v46 = v10 + 56;
    while (1)
    {
      v19 = 24 * v15;
      v20 = *(v16 + 48) + 24 * v15;
      v22 = *(v20 + 8);
      v21 = *(v20 + 12);
      if (v21 - v22 == v18)
      {
        v23 = v16;
        v24 = *v20;
        v25 = *(v20 + 20);
        v26 = *(v20 + 22);
        v27 = *(v20 + 16) == v49 && v25 == v48;
        v28 = v27 && v26 == v47;
        if (v28 && v24 == a2)
        {
          break;
        }

        v30 = v18;
        swift_beginAccess();
        v31 = *(v24 + 24) + (v26 | (v25 << 8));
        swift_beginAccess();
        v32 = memcmp((v31 + v22), (*(a2 + 24) + v45), v21 - v22);
        v18 = v30;
        v19 = 24 * v15;
        v13 = v46;
        v16 = v23;
        if (!v32)
        {
          break;
        }
      }

      v15 = (v15 + 1) & v17;
      if (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v33 = *(v23 + 48) + v19;
    v34 = *(v33 + 16);
    v35 = *(v33 + 20);
    v36 = *(v33 + 22);
    *a1 = *v33;
    *(a1 + 8) = *(v33 + 8);
    *(a1 + 16) = v34;
    *(a1 + 20) = v35;
    *(a1 + 22) = v36;

    return 0;
  }

  else
  {
LABEL_17:
    v38 = *v42;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = *v42;

    sub_1003034F8(v40, v43, v49 & 0xFFFFFFFFFFFFFFLL, v15, isUniquelyReferenced_nonNull_native);
    *v42 = v50;
    *a1 = a2;
    *(a1 + 8) = v43;
    *(a1 + 12) = v41;
    *(a1 + 16) = v49;
    *(a1 + 20) = v48;
    *(a1 + 22) = v47;
    return 1;
  }
}

Swift::Int sub_100303240(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000C9C0(&qword_1005D8598, &unk_1004F4C10);
  v5 = sub_1004A6694();
  v6 = v5;
  if (*(v3 + 16))
  {
    v7 = 0;
    v35 = v2;
    v36 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v5 + 56;
    v37 = v3;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v38 = (v10 - 1) & v10;
LABEL_17:
      v19 = *(v3 + 48) + 24 * (v15 | (v7 << 6));
      v20 = *v19;
      v22 = *(v19 + 8);
      v21 = *(v19 + 12);
      v23 = *(v19 + 16);
      v24 = *(v19 + 20);
      v25 = *(v19 + 22);
      v26 = *(v6 + 40);
      sub_1004A6E94();
      v39 = v39 & 0xFF00000000000000 | v23 | (v24 << 32) | (v25 << 48);
      QuotaRoot.hash(into:)(v40, v20, v22 | (v21 << 32), v39);
      result = sub_1004A6F14();
      v27 = -1 << *(v6 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v12 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v12 + 8 * v29);
          if (v33 != -1)
          {
            v13 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v28) & ~*(v12 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v6 + 48) + 24 * v13;
      *v14 = v20;
      *(v14 + 8) = v22;
      *(v14 + 12) = v21;
      *(v14 + 16) = v23;
      *(v14 + 20) = v24;
      *(v14 + 22) = v25;
      ++*(v6 + 16);
      v3 = v37;
      v10 = v38;
    }

    v16 = v7;
    result = v36;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v11)
      {
        break;
      }

      v18 = v36[v7];
      ++v16;
      if (v18)
      {
        v15 = __clz(__rbit64(v18));
        v38 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v34 = 1 << *(v3 + 32);
    if (v34 >= 64)
    {
      bzero(v36, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v36 = -1 << v34;
    }

    v2 = v35;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_1003034F8(Swift::Int result, unint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v8 = HIDWORD(a2);
  v36 = WORD2(a3);
  v37 = BYTE6(a3);
  v38 = result;
  v9 = *(*v5 + 16);
  v10 = *(*v5 + 24);
  v32 = HIDWORD(a2);
  v33 = a2;
  if (v10 > v9 && (a5 & 1) != 0)
  {
    goto LABEL_25;
  }

  v35 = a3;
  if (a5)
  {
    sub_100303240(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      result = sub_100303764();
      LODWORD(a3) = v35;
      goto LABEL_25;
    }

    sub_1003038E4(v9 + 1);
  }

  v11 = *v5;
  v12 = *(*v5 + 40);
  sub_1004A6E94();
  LODWORD(v13) = v35;
  QuotaRoot.hash(into:)(v39, v38, a2, v35 & 0xFFFFFFFFFFFFFFLL);
  result = sub_1004A6F14();
  v14 = -1 << *(v11 + 32);
  a4 = result & ~v14;
  if ((*(v11 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v15 = a2;
    v16 = ~v14;
    v17 = v8 - a2;
    v34 = (v37 & 0xFFFFFFFFFF0000FFLL | (WORD2(v35) << 8)) + v15;
    LODWORD(a3) = v35;
    while (1)
    {
      v18 = *(v11 + 48) + 24 * a4;
      v20 = *(v18 + 8);
      v19 = *(v18 + 12);
      if (v19 - v20 == v17)
      {
        v13 = *v18;
        v21 = *(v18 + 20);
        v22 = *(v18 + 22);
        v23 = *(v18 + 16) == a3 && v21 == v36;
        v24 = v23 && v22 == v37;
        if (v24 && v13 == v38)
        {
          break;
        }

        swift_beginAccess();
        v13 = *(v13 + 24) + (v22 | (v21 << 8));
        swift_beginAccess();
        result = memcmp((v13 + v20), (*(v38 + 24) + v34), v19 - v20);
        LODWORD(a3) = v35;
        if (!result)
        {
          break;
        }
      }

      a4 = (a4 + 1) & v16;
      if (((*(v11 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    result = sub_1004A6E14();
    __break(1u);
  }

  LODWORD(a3) = v13;
LABEL_25:
  v26 = *v31;
  *(*v31 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v27 = *(v26 + 48) + 24 * a4;
  *v27 = v38;
  *(v27 + 8) = v33;
  *(v27 + 12) = v32;
  *(v27 + 16) = a3;
  *(v27 + 20) = v36;
  *(v27 + 22) = v37;
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(v26 + 16) = v30;
  }

  return result;
}

void *sub_100303764()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005D8598, &unk_1004F4C10);
  v2 = *v0;
  v3 = sub_1004A6684();
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
        v19 = *(v18 + 16);
        v20 = *(v18 + 20);
        v21 = *(v18 + 22);
        v22 = *(v4 + 48) + v17;
        v23 = *(v18 + 8);
        *v22 = *v18;
        *(v22 + 8) = v23;
        *(v22 + 16) = v19;
        *(v22 + 20) = v20;
        *(v22 + 22) = v21;
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

uint64_t sub_1003038E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000C9C0(&qword_1005D8598, &unk_1004F4C10);
  result = sub_1004A6694();
  v6 = result;
  if (*(v3 + 16))
  {
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
    v33 = v2;
    v34 = (v9 + 63) >> 6;
    v12 = result + 56;
    v35 = v3;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v36 = (v11 - 1) & v11;
LABEL_17:
      v18 = *(v3 + 48) + 24 * (v15 | (v7 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 12);
      v22 = *(v18 + 16);
      v23 = *(v18 + 20);
      v24 = *(v18 + 22);
      v25 = *(v6 + 40);
      sub_1004A6E94();
      v37 = v37 & 0xFF00000000000000 | v22 | (v23 << 32) | (v24 << 48);
      QuotaRoot.hash(into:)(v38, v19, v20 | (v21 << 32), v37);
      result = sub_1004A6F14();
      v26 = -1 << *(v6 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v12 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v12 + 8 * v28);
          if (v32 != -1)
          {
            v13 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v27) & ~*(v12 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v6 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 12) = v21;
      *(v14 + 16) = v22;
      *(v14 + 20) = v23;
      *(v14 + 22) = v24;
      ++*(v6 + 16);

      v3 = v35;
      v11 = v36;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v34)
      {

        v2 = v33;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_100303B80(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1002F97FC();
  result = sub_1004A5D64();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_10008867C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_100303C18(uint64_t a1)
{
  v3 = *(a1 + 16);
  sub_100304528();
  result = sub_1004A5D64();
  v9 = result;
  if (v3)
  {
    v5 = (a1 + 54);
    do
    {
      v6 = *(v5 - 14);
      v7 = *(v5 - 22);
      v1 = v1 & 0xFF00000000000000 | *(v5 - 6) | (*(v5 - 1) << 32) | (*v5 << 48);

      sub_100302FC0(v8, v7, v6, v1);

      v5 += 24;
      --v3;
    }

    while (v3);
    return v9;
  }

  return result;
}

__n128 sub_100303CD4@<Q0>(uint64_t a1@<X8>)
{
  type metadata accessor for ParsedStringCache();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1004F4980;
  sub_10000C9C0(&qword_1005D8470, &qword_1004F4BE0);
  v3 = sub_1004A5C64();
  *(v3 + 16) = 32;
  bzero((v3 + 32), 0x300uLL);
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 32) = v3;
  v13[0] = xmmword_1004F4990;
  v13[1] = xmmword_1004F49A0;
  v14 = sub_100304308;
  v15 = v2;
  ResponseParser.init(options:)(v13, &v8);
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v16 = v8;
  v17 = v9;
  *v21 = 0;
  *&v21[8] = 0;
  *&v21[15] = 0;
  v22[3] = v11;
  v22[4] = v12;
  v22[1] = v9;
  v22[2] = v10;
  v22[0] = v8;
  v23 = 0;
  v24[0] = 0;
  *(v24 + 7) = 0;
  sub_100304310(&v16, v7);
  sub_100304348(v22);
  v4 = *v21;
  *(a1 + 64) = v20;
  *(a1 + 80) = v4;
  *(a1 + 95) = *&v21[15];
  v5 = v17;
  *a1 = v16;
  *(a1 + 16) = v5;
  result = v19;
  *(a1 + 32) = v18;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100303E48(uint64_t a1)
{
  if ((*(a1 + 23) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 23) & 7;
  }
}

unint64_t sub_100303E64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0)
  {
    return v1 >> 61;
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_100303E80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100303EC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100303F48()
{
  type metadata accessor for ResponseOrContinuationRequest(319);
  if (v0 <= 0x3F)
  {
    sub_100303FD0();
    if (v1 <= 0x3F)
    {
      sub_100304058();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_100303FD0()
{
  if (!qword_1005D8520)
  {
    sub_10000DEFC(&qword_1005D0460, &qword_1004D3CE0);
    sub_10000DEFC(&qword_1005D8528, &qword_1004F4B48);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1005D8520);
    }
  }
}

void sub_100304058()
{
  if (!qword_1005D8530)
  {
    sub_10000DEFC(&qword_1005D0460, &qword_1004D3CE0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1005D8530);
    }
  }
}

__n128 sub_1003040CC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 95) = *(a2 + 95);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1003040F8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 103))
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

uint64_t sub_100304140(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 102) = 0;
    *(result + 100) = 0;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 103) = 1;
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

    *(result + 103) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003041C4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62 != 1)
  {
  }

  return result;
}

unint64_t sub_1003041D8()
{
  result = qword_1005D8560;
  if (!qword_1005D8560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D8560);
  }

  return result;
}

uint64_t sub_10030422C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62 != 1)
  {
  }

  return result;
}

uint64_t sub_100304240(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003042A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100304398()
{
  result = qword_1005D8580;
  if (!qword_1005D8580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D8580);
  }

  return result;
}

uint64_t sub_1003043EC(uint64_t a1)
{
  v1 = (*(a1 + 176) >> 9) & 7;
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 + 5);
  }
}

unint64_t sub_1003044D4()
{
  result = qword_1005D8588;
  if (!qword_1005D8588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D8588);
  }

  return result;
}

unint64_t sub_100304528()
{
  result = qword_1005D8590;
  if (!qword_1005D8590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D8590);
  }

  return result;
}

uint64_t sub_10030469C(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_1003046B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1003046E4(uint64_t a1)
{
  v1 = (*(a1 + 176) >> 9) & 7;
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 + 5);
  }
}

__n128 sub_100304700(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 88);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_10030473C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 3 && *(a1 + 178))
  {
    return (*a1 + 3);
  }

  v3 = *(a1 + 176);
  if ((~(v3 >> 9) & 6) != 0)
  {
    v4 = -1;
  }

  else
  {
    v4 = ~(v3 >> 9) & 7;
  }

  return (v4 + 1);
}

uint64_t sub_10030478C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 2)
  {
    *(result + 168) = 0;
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
    *(result + 176) = 0;
    *result = a2 - 3;
    if (a3 >= 3)
    {
      *(result + 178) = 1;
    }
  }

  else
  {
    if (a3 >= 3)
    {
      *(result + 178) = 0;
    }

    if (a2)
    {
      *(result + 144) = 0u;
      *(result + 160) = 0u;
      *(result + 112) = 0u;
      *(result + 128) = 0u;
      *(result + 80) = 0u;
      *(result + 96) = 0u;
      *(result + 48) = 0u;
      *(result + 64) = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 176) = (-512 * a2) & 0xE00;
    }
  }

  return result;
}

uint64_t sub_100304844(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10000C9C0(&qword_1005D05E0, &qword_1004D65C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_100304914(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10000C9C0(&qword_1005D05E0, &qword_1004D65C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1003049C4()
{
  sub_1002ED648();
  if (v0 <= 0x3F)
  {
    sub_100304A58();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100304A58()
{
  if (!qword_1005D8608)
  {
    sub_1004A5384();
    v0 = sub_1004A6374();
    if (!v1)
    {
      atomic_store(v0, &qword_1005D8608);
    }
  }
}

uint64_t sub_100304AB0(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_100304ACC(uint64_t a1, unsigned int a2)
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

uint64_t sub_100304B14(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100304B58(uint64_t result, unsigned int a2)
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

uint64_t Tag.debugDescription.getter(uint64_t a1)
{
  v2 = sub_1004A57F4();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_100304E50(a1 & 0xFFFFFFFF000000FFLL);
  sub_1004A57D4();
  sub_10000C9C0(&unk_1005D8FF0, &unk_1004DC230);
  sub_1002F1444();
  v4 = sub_1004A5794();
  v6 = v5;

  if (v6)
  {
    return v4;
  }

  __break(1u);
  return result;
}

IMAP2Protocol::Tag_optional __swiftcall Tag.init(_:)(Swift::String a1)
{
  result.value = sub_100305384(a1._countAndFlagsBits, a1._object);
  v2 = v1 & 1;
  result.is_nil = v2;
  return result;
}

void Tag.hash(into:)(uint64_t a1, unint64_t a2)
{
  v2 = HIDWORD(a2);
  sub_1004A6EC4(a2);
  sub_1004A6EE4(v2);
}

Swift::Int Tag.hashValue.getter(unint64_t a1)
{
  v1 = a1;
  v2 = HIDWORD(a1);
  sub_1004A6E94();
  sub_1004A6EC4(v1);
  sub_1004A6EE4(v2);
  return sub_1004A6F14();
}

Swift::Int sub_100304D28()
{
  v1 = *(v0 + 4);
  v2 = *v0;
  sub_1004A6E94();
  sub_1004A6EC4(v2);
  sub_1004A6EE4(v1);
  return sub_1004A6F14();
}

void sub_100304D88()
{
  v1 = *(v0 + 4);
  sub_1004A6EC4(*v0);
  sub_1004A6EE4(v1);
}

Swift::Int sub_100304DC8()
{
  v1 = *(v0 + 4);
  v2 = *v0;
  sub_1004A6E94();
  sub_1004A6EC4(v2);
  sub_1004A6EE4(v1);
  return sub_1004A6F14();
}

char *sub_100304E50(unint64_t a1)
{
  v1 = a1;
  v2 = HIDWORD(a1);
  v3 = sub_10015BF20(0, 10, 0, _swiftEmptyArrayStorage);
  v4 = v1 + 1;
  v5 = *(v3 + 2);
  do
  {
    if (v5 >= *(v3 + 3) >> 1)
    {
      v3 = sub_10015BF20(1, v5 + 1, 1, v3);
      v6 = *(v3 + 2);
    }

    else
    {
      v6 = v5;
    }

    v7 = v4 - 1;
    v8 = (v4 - 1);
    v4 = (v4 - 1) / 0x1Au;
    v9 = v7 - 26 * v4 + 65;
    result = memmove(v3 + 33, v3 + 32, v6);
    v5 = v6 + 1;
    *(v3 + 2) = v6 + 1;
    v3[32] = v9;
  }

  while (v8 > 0x19);
  while (1)
  {
    v11 = *(v3 + 2);
    if (v11 <= v6)
    {
      break;
    }

    if (v11 >= *(v3 + 3) >> 1)
    {
      v3 = sub_10015BF20(1, v11 + 1, 1, v3);
      v11 = *(v3 + 2);
    }

    result = memmove(&v3[v5 + 33], &v3[v5 + 32], v11 - v5);
    ++*(v3 + 2);
    v3[v5 + 32] = (v2 % 0xA) | 0x30;
    v12 = v2 > 9;
    LODWORD(v2) = v2 / 0xA;
    if (!v12)
    {
      return v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100304FC4()
{
  v1 = sub_1004A57F4();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  sub_100304E50(*v0 | (*(v0 + 1) << 32));
  sub_1004A57D4();
  sub_10000C9C0(&unk_1005D8FF0, &unk_1004DC230);
  sub_1002F1444();
  v3 = sub_1004A5794();
  v5 = v4;

  if (v5)
  {
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003050A4(uint64_t result, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v3 = result;
      v4 = 0;
      v5 = _swiftEmptyArrayStorage;
      while (1)
      {
        v6 = *(v3 + v4);
        if ((v6 - 91) < 0xE6u)
        {
          break;
        }

        if (v4 >= a2)
        {
          __break(1u);
          goto LABEL_47;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_10015BF20(0, v5[2] + 1, 1, v5);
          v5 = result;
        }

        v8 = v5[2];
        v7 = v5[3];
        if (v8 >= v7 >> 1)
        {
          result = sub_10015BF20((v7 > 1), v8 + 1, 1, v5);
          v5 = result;
        }

        ++v4;
        v5[2] = v8 + 1;
        *(v5 + v8 + 32) = v6 - 65;
        if (a2 == v4)
        {
          v4 = a2;
          break;
        }
      }

      v9 = v5 + 2;
      if (!v5[2])
      {
        goto LABEL_27;
      }

      v11 = a2 - v4;
      if (a2 == v4)
      {
        v10 = _swiftEmptyArrayStorage;
      }

      else
      {
        v20 = (v3 + v4);
        v21 = v4 + 1;
        v10 = _swiftEmptyArrayStorage;
        do
        {
          v23 = *v20++;
          v22 = v23;
          if ((v23 - 58) < 0xF6u)
          {
            break;
          }

          if (v21 > a2)
          {
            goto LABEL_51;
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_10015BF20(0, *(v10 + 2) + 1, 1, v10);
            v10 = result;
          }

          v25 = *(v10 + 2);
          v24 = *(v10 + 3);
          if (v25 >= v24 >> 1)
          {
            result = sub_10015BF20((v24 > 1), v25 + 1, 1, v10);
            v10 = result;
          }

          *(v10 + 2) = v25 + 1;
          v10[v25 + 32] = v22 - 48;
          ++v21;
          --v11;
        }

        while (v11);
      }
    }

    else
    {
      v5 = _swiftEmptyArrayStorage;
      v9 = &_swiftEmptyArrayStorage[2];
      if (!_swiftEmptyArrayStorage[2])
      {
        goto LABEL_27;
      }

      v10 = _swiftEmptyArrayStorage;
    }

    v12 = *(v10 + 2);
    if (v12)
    {
      v13 = *v9;
      if (*v9)
      {
        v14 = 0;
        v15 = (v5 + 4);
        while (1)
        {
          v16 = 26 * v14;
          if ((v14 * 26) >> 64 != (26 * v14) >> 63)
          {
            break;
          }

          v17 = *v15 + 1;
          v18 = __OFADD__(v16, v17);
          v14 = v16 + v17;
          if (v18)
          {
            goto LABEL_48;
          }

          ++v15;
          if (!--v13)
          {
            v19 = v14 - 1;
            if (!__OFSUB__(v14, 1))
            {
              goto LABEL_24;
            }

            __break(1u);
            goto LABEL_39;
          }
        }

LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v19 = -1;
LABEL_24:
      if ((v19 & 0x8000000000000000) == 0 && v19 <= 0xFF)
      {
LABEL_39:
        v26 = 0;
        for (i = 32; ; ++i)
        {
          v28 = 10 * v26;
          if ((v26 * 10) >> 64 != (10 * v26) >> 63)
          {
            break;
          }

          v29 = v10[i];
          v26 = v28 + v29;
          if (__OFADD__(v28, v29))
          {
            goto LABEL_50;
          }

          if (!--v12)
          {

            if (HIDWORD(v26))
            {
              return 0;
            }

            else
            {
              return v19 | (v26 << 32);
            }
          }
        }

LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }
    }

LABEL_27:

    return 0;
  }

LABEL_52:
  __break(1u);
  return result;
}

uint64_t sub_100305384(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = sub_10010CD9C();
    v8 = v7;

    a1 = v6;
    v2 = v8;
    if ((v8 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v4 = HIBYTE(v2) & 0xF;
    v11[0] = a1;
    v11[1] = v2 & 0xFFFFFFFFFFFFFFLL;
    v5 = v11;
    goto LABEL_8;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((a1 & 0x1000000000000000) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v3 = sub_1004A67E4();
  }

  v5 = v3;
LABEL_8:
  v9 = sub_1003050A4(v5, v4);

  return v9;
}

unint64_t sub_100305438()
{
  result = qword_1005D8640;
  if (!qword_1005D8640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D8640);
  }

  return result;
}

uint64_t EngineTracingIDOwner.__allocating_init()()
{
  v0 = swift_allocObject();
  if (qword_1005D8648 != -1)
  {
    swift_once();
  }

  v1 = off_1005D8650;

  os_unfair_lock_lock(v1 + 7);
  sub_1003059AC(&v1[4], &v4);
  os_unfair_lock_unlock(v1 + 7);
  v2 = v4;

  *(v0 + 16) = v2;
  return v0;
}

uint64_t EngineTracingIDOwner.init()()
{
  if (qword_1005D8648 != -1)
  {
    swift_once();
  }

  v1 = off_1005D8650;

  os_unfair_lock_lock(v1 + 7);
  sub_1003059AC(&v1[4], &v4);
  os_unfair_lock_unlock(v1 + 7);
  v2 = v4;

  *(v0 + 16) = v2;
  return v0;
}

uint64_t EngineTracingIDOwner.deinit()
{
  v1 = v0;
  if (qword_1005D8648 != -1)
  {
    goto LABEL_22;
  }

LABEL_2:
  v2 = off_1005D8650;
  v3 = *(v1 + 16);

  os_unfair_lock_lock(v2 + 7);
  v4 = (v2 + 16);
  v5 = *(v2 + 2);
  v6 = *(v5 + 2);
  if (!v6)
  {
    goto LABEL_6;
  }

  for (i = 0; i != v6; ++i)
  {
    if (i[v5 + 32] == v3)
    {
      v9 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_24;
      }

      v10 = *(v2 + 2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v4 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_25;
      }

      while (1)
      {
        v12 = *(v5 + 2);
        if (v9 != v12)
        {
          v14 = v5 + 32;
          v15 = &i[v5 + 33];
          while (v9 < v12)
          {
            v17 = *v15;
            if (v17 != v3)
            {
              if (v9 != i)
              {
                if (i >= v12)
                {
                  __break(1u);
                  break;
                }

                v16 = i[v14];
                i[v14] = v17;
                *v15 = v16;
                v12 = *(v5 + 2);
              }

              ++i;
            }

            ++v9;
            ++v15;
            if (v9 == v12)
            {
              goto LABEL_10;
            }
          }

          __break(1u);
LABEL_22:
          swift_once();
          goto LABEL_2;
        }

LABEL_10:
        *v4 = v5;
        v8 = *(v5 + 2);
        v6 = i;
        if (v8 >= i)
        {
          goto LABEL_11;
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:

        v19 = sub_100305BA4(v18);
        v20 = *v4;
        *v4 = v19;

        v5 = *v4;
      }
    }
  }

LABEL_6:
  v8 = *(v5 + 2);
LABEL_11:
  sub_100305C5C(v6, v8);
  os_unfair_lock_unlock(v2 + 7);

  return v1;
}

uint64_t EngineTracingIDOwner.__deallocating_deinit()
{
  v1 = v0;
  if (qword_1005D8648 != -1)
  {
    goto LABEL_24;
  }

LABEL_2:
  v2 = off_1005D8650;
  v3 = *(v1 + 16);

  os_unfair_lock_lock(v2 + 7);
  v4 = (v2 + 16);
  v5 = *(v2 + 2);
  v6 = *(v5 + 2);
  if (!v6)
  {
    goto LABEL_6;
  }

  for (i = 0; i != v6; ++i)
  {
    if (i[v5 + 32] == v3)
    {
      v9 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_26;
      }

      v10 = *(v2 + 2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v4 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_27;
      }

      while (1)
      {
        v12 = *(v5 + 2);
        if (v9 != v12)
        {
          v14 = v5 + 32;
          v15 = &i[v5 + 33];
          while (v9 < v12)
          {
            v17 = *v15;
            if (v17 != v3)
            {
              if (v9 != i)
              {
                if (i >= v12)
                {
                  __break(1u);
                  break;
                }

                v16 = i[v14];
                i[v14] = v17;
                *v15 = v16;
                v12 = *(v5 + 2);
              }

              ++i;
            }

            ++v9;
            ++v15;
            if (v9 == v12)
            {
              goto LABEL_10;
            }
          }

          __break(1u);
LABEL_24:
          swift_once();
          goto LABEL_2;
        }

LABEL_10:
        *v4 = v5;
        v8 = *(v5 + 2);
        v6 = i;
        if (v8 >= i)
        {
          goto LABEL_11;
        }

        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:

        v19 = sub_100305BA4(v18);
        v20 = *v4;
        *v4 = v19;

        v5 = *v4;
      }
    }
  }

LABEL_6:
  v8 = *(v5 + 2);
LABEL_11:
  sub_100305C5C(v6, v8);
  os_unfair_lock_unlock(v2 + 7);

  return swift_deallocClassInstance();
}

uint64_t sub_100305958()
{
  sub_10000C9C0(&qword_1005D8718, &qword_1004F5570);
  result = swift_allocObject();
  *(result + 28) = 0;
  *(result + 16) = _swiftEmptyArrayStorage;
  *(result + 24) = 1;
  off_1005D8650 = result;
  return result;
}

uint64_t sub_1003059AC@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = result;
  v4 = *result;
  v5 = *(*result + 16);
  v6 = *(result + 8);
  while (2)
  {
    if (v6 < 0x1E)
    {
      v7 = v6 + 1;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(*result + 16);
    v9 = (*result + 32);
    do
    {
      if (!v8)
      {
        *(result + 8) = v7;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_100305AB0(0, v5 + 1, 1, v4);
          v4 = result;
        }

        v12 = *(v4 + 16);
        v11 = *(v4 + 24);
        if (v12 >= v11 >> 1)
        {
          result = sub_100305AB0((v11 > 1), v12 + 1, 1, v4);
          v4 = result;
        }

        *(v4 + 16) = v12 + 1;
        *(v4 + v12 + 32) = v6;
        *v2 = v4;
        goto LABEL_15;
      }

      v10 = *v9++;
      --v8;
    }

    while (v10 != v6);
    v6 = v7;
    if (v7 != *(result + 8))
    {
      continue;
    }

    break;
  }

  LOBYTE(v6) = 31;
LABEL_15:
  *a2 = v6;
  return result;
}

char *sub_100305AB0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D8710, &qword_1004F5568);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

char *sub_100305BB8(char *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result += v6 + a3 + 32;
  v10 = (v6 + 32 + a2);
  if (result != v10 || result >= &v10[v9])
  {
    v12 = a3;
    result = memmove(result, v10, v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

char *sub_100305C5C(char *result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
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

  v7 = &result[-a2];
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = &v7[v5];
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_100305AB0(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_100305BB8(v6, a2, 0);
  *v2 = v4;
  return result;
}

unint64_t sub_100305D20()
{
  result = qword_1005D8668;
  if (!qword_1005D8668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D8668);
  }

  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_1005DAF30)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1005DAF30);
    }
  }
}

void *sub_100305E24@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_100305E30@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t MailboxTaskLoggerID.mailbox.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
}

uint64_t sub_100305EA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 44))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100305EF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 44) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 44) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100305F5C()
{
  sub_1003062D0();
  result = sub_1004A6364();
  tracingLog = result;
  return result;
}

uint64_t *tracingLog.unsafeMutableAddressor()
{
  if (qword_1005D8658 != -1)
  {
    swift_once();
  }

  return &tracingLog;
}

uint64_t sub_10030600C()
{
  v0 = sub_1004A4944();
  sub_1001C2074(v0, tracingSignposter);
  sub_1001C203C(v0, tracingSignposter);
  if (qword_1005D8658 != -1)
  {
    swift_once();
  }

  v1 = tracingLog;
  return sub_1004A4924();
}

uint64_t tracingSignposter.unsafeMutableAddressor()
{
  if (qword_1005D8660 != -1)
  {
    swift_once();
  }

  v0 = sub_1004A4944();

  return sub_1001C203C(v0, tracingSignposter);
}

Swift::Int sub_100306140()
{
  v1 = *v0;
  sub_1004A6E94();
  sub_1004A6EC4(v1 + 1);
  return sub_1004A6F14();
}

Swift::Int sub_1003061B8()
{
  v1 = *v0;
  sub_1004A6E94();
  sub_1004A6EC4(v1 + 1);
  return sub_1004A6F14();
}

uint64_t sub_1003061FC@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s2os12OSSignpostIDV12IMAP2TracingE9TraceKindO8rawValueAFSgs5UInt8V_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t _s2os12OSSignpostIDV12IMAP2TracingE9TraceKindO8rawValueAFSgs5UInt8V_tcfC_0(unsigned __int8 a1)
{
  if (a1 <= 6u)
  {
    return (0x5040302010006uLL >> (8 * a1));
  }

  else
  {
    return 6;
  }
}

unint64_t sub_10030626C()
{
  result = qword_1005D8720;
  if (!qword_1005D8720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D8720);
  }

  return result;
}

unint64_t sub_1003062D0()
{
  result = qword_1005D8728;
  if (!qword_1005D8728)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005D8728);
  }

  return result;
}

uint64_t sub_10030631C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t (*)(uint64_t a1), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;

  a3(a5, a6, sub_100306F64, v11);
}

uint64_t sub_1003063CC(uint64_t a1, void (*a2)(void *))
{
  v3 = *(a1 + 16);
  v4 = _swiftEmptyArrayStorage;
  if (v3)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_10034F550(0, v3, 0);
    v4 = _swiftEmptyArrayStorage;
    v6 = (a1 + 32);
    do
    {
      v7 = v6[3];
      v19[2] = v6[2];
      v19[3] = v7;
      v19[4] = v6[4];
      v8 = v6[1];
      v19[0] = *v6;
      v19[1] = v8;
      sub_100306F6C(v19, v16);
      Credentials.init(_:)(v19, v18);
      v17 = v4;
      v10 = v4[2];
      v9 = v4[3];
      if (v10 >= v9 >> 1)
      {
        sub_10034F550((v9 > 1), v10 + 1, 1);
        v4 = v17;
      }

      v4[2] = v10 + 1;
      v11 = &v4[10 * v10];
      v11[2] = v18[0];
      v12 = v18[1];
      v13 = v18[2];
      v14 = v18[4];
      v11[5] = v18[3];
      v11[6] = v14;
      v11[3] = v12;
      v11[4] = v13;
      v6 += 5;
      --v3;
    }

    while (v3);
  }

  a2(v4);
}

uint64_t sub_100306500(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return sub_1004A6D34();
  }
}

uint64_t sub_100306530(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v4 == v2 && v5 == v3)
  {
    return 1;
  }

  else
  {
    return (sub_1004A6D34() ^ 1) & 1;
  }
}

uint64_t sub_100306578(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return (sub_1004A6D34() ^ 1) & 1;
  }
}

uint64_t sub_1003065CC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v4 == v2 && v5 == v3)
  {
    return 0;
  }

  else
  {
    return sub_1004A6D34();
  }
}

uint64_t sub_1003065F0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v46 = a2;
  v3 = sub_10000C9C0(&qword_1005D87C8, &unk_1004F5920);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v41[-v5];
  v7 = sub_1004A4C04();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v41[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v41[-v13];
  v15 = type metadata accessor for ConnectionConfiguration();
  v16 = *(*(v15 - 1) + 64);
  __chkstk_darwin(v15);
  v18 = &v41[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = *(a1 + 8);
  v43 = *a1;
  v44 = v19;
  v21 = *(a1 + 16);
  v20 = *(a1 + 24);
  v22 = *(a1 + 34);
  v45 = a1;
  v23 = *(a1 + 32);
  v42 = ConnectionConfiguration.TransportLayerSecurity.init(_:)(v22);

  sub_1004A4BD4();
  sub_1004A4BE4();
  v24 = sub_1004A4BF4();
  v25 = *(v24 - 8);
  result = (*(v25 + 48))(v6, 1, v24);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v27 = sub_10000C9C0(&qword_1005D3CB8, &qword_1004DDA40);
    (*(v25 + 32))(&v12[*(v27 + 48)], v6, v24);
    (*(v8 + 104))(v12, enum case for NWEndpoint.hostPort(_:), v7);
    v28 = *(v8 + 32);
    v28(v14, v12, v7);
    sub_10000C9C0(&qword_1005D87D0, &qword_1004F5930);
    v29 = sub_1004A4C14();
    v30 = *(v29 - 8);
    v31 = *(v30 + 72);
    v32 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1004CEAA0;
    (*(v30 + 104))(v33 + v32, enum case for NWInterface.InterfaceType.cellular(_:), v29);
    v34 = &v18[v15[8]];
    v35 = &v18[v15[10]];
    v36 = v7;
    v37 = v15[6];
    v18[v15[7]] = v42;
    v28(v18, v14, v36);
    v18[v15[5]] = 1;
    *&v18[v37] = v33;
    *v34 = 0xD000000000000014;
    v34[1] = 0x80000001004AE740;
    v18[v15[9]] = 1;
    v38 = v44;
    *v35 = v43;
    v35[1] = v38;

    sub_100306EFC(v45);
    v39 = v46;
    *v46 = 0x6E49686372616573;
    v39[1] = 0xED00007265786564;
    v40 = type metadata accessor for Configuration();
    result = sub_1002B553C(v18, v39 + v40[5]);
    *(v39 + v40[6]) = 0;
    *(v39 + v40[7]) = 1;
  }

  return result;
}

uint64_t sub_100306A14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_100306A5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100306ACC()
{
  result = qword_1005D87C0;
  if (!qword_1005D87C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D87C0);
  }

  return result;
}

uint64_t sub_100306B28(uint64_t a1, id *a2)
{
  result = sub_1004A5744();
  *a2 = 0;
  return result;
}

uint64_t sub_100306BA0(uint64_t a1, id *a2)
{
  v3 = sub_1004A5754();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100306C20@<X0>(void *a1@<X8>)
{
  sub_1004A5764();
  v2 = sub_1004A5734();

  *a1 = v2;
  return result;
}

uint64_t sub_100306C64()
{
  v1 = *v0;
  sub_1004A5764();
  v2 = sub_1004A5A64();

  return v2;
}

uint64_t sub_100306CA0()
{
  v1 = *v0;
  sub_1004A5764();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

Swift::Int sub_100306CF4()
{
  v1 = *v0;
  sub_1004A5764();
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v2 = sub_1004A6F14();

  return v2;
}

uint64_t sub_100306D68(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1004A5764();
  v6 = v5;
  if (v4 == sub_1004A5764() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1004A6D34();
  }

  return v9 & 1;
}

uint64_t sub_100306DF0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1004A5734();

  *a2 = v5;
  return result;
}

uint64_t sub_100306E38@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1004A5764();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_100306E64(uint64_t a1)
{
  v2 = sub_100307044(&qword_1005D8858);
  v3 = sub_100307044(&qword_1005D8860);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100306F2C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100307044(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for URLResourceKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1003070C0(uint64_t a1, unint64_t a2)
{
  v2 = sub_100307550();
  swift_beginAccess();
  v3 = *(v2 + 16);

  if (v3 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1004A6A34())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = sub_1004A6794();
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v10 = sub_1004A5734();
      [v8 willAccessValueForKey:v10];

      v11 = [v8 primitiveAccount];
      if (v11)
      {
        v12 = v11;
        v13 = sub_1004A5764();
        v15 = v14;

        v16 = HIBYTE(v15) & 0xF;
        if ((v15 & 0x2000000000000000) == 0)
        {
          v16 = v13 & 0xFFFFFFFFFFFFLL;
        }

        if (v16)
        {
          goto LABEL_16;
        }
      }

      v13 = 0;
      v15 = 0;
LABEL_16:
      v17 = sub_1004A5734();
      [v8 didAccessValueForKey:v17];

      if (v15)
      {
        if (v13 == a1 && v15 == a2)
        {

          return v8;
        }

        v6 = sub_1004A6D34();

        if (v6)
        {

          return v8;
        }
      }

      ++v5;
      if (v9 == i)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

LABEL_25:

  if (qword_1005D8778 != -1)
  {
    swift_once();
  }

  v18 = sub_1004A4A74();
  sub_1001C203C(v18, qword_1005DE2D0);

  v19 = sub_1004A4A54();
  v20 = sub_1004A6034();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v33 = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_10015BA6C(a1, a2, &v33);
    _os_log_impl(&_mh_execute_header, v19, v20, "Inserting new AccountInfo for %s", v21, 0xCu);
    sub_1000197E0(v22);
  }

  else
  {
  }

  _s11AccountInfoCMa();
  v23 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:v30];

  v24 = sub_1004A5734();
  [v23 willChangeValueForKey:v24];

  v25 = sub_1004A5734();

  [v23 setPrimitiveAccount:v25];

  v26 = sub_1004A5734();
  [v23 didChangeValueForKey:v26];

  v27 = sub_100307550();
  swift_beginAccess();
  v8 = v23;
  sub_1004A5BF4();
  if (*((*(v27 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v27 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v29 = *((*(v27 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1004A5C44();
  }

  sub_1004A5C84();
  swift_endAccess();

  return v8;
}

uint64_t sub_100307550()
{
  v1 = v0;
  v2 = [v0 userInfo];
  *&v19 = 0xD000000000000010;
  *(&v19 + 1) = 0x80000001004AE7E0;
  v3 = [v2 __swift_objectForKeyedSubscript:sub_1004A6DF4()];
  swift_unknownObjectRelease();

  if (v3)
  {
    sub_1004A64E4();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21[0] = v19;
  v21[1] = v20;
  if (*(&v20 + 1))
  {
    _s16AccountInfoCacheCMa();
    if (swift_dynamicCast())
    {
      return v18;
    }
  }

  else
  {
    sub_10030805C(v21);
  }

  _s16AccountInfoCacheCMa();
  v4 = swift_allocObject();
  v5 = v1;
  sub_100307828(v5);
  v6 = [v5 userInfo];
  *&v21[0] = 0xD000000000000010;
  *(&v21[0] + 1) = 0x80000001004AE7E0;

  [v6 __swift_setObject:v4 forKeyedSubscript:sub_1004A6DF4()];

  swift_unknownObjectRelease();
  v7 = objc_allocWithZone(NSFetchRequest);
  v8 = sub_1004A5734();
  v9 = [v7 initWithEntityName:v8];

  *&v21[0] = 0;
  v10 = [v9 execute:v21];
  v11 = *&v21[0];
  if (v10)
  {
    v12 = v10;
    _s11AccountInfoCMa();
    v13 = sub_1004A5C14();
    v14 = v11;

    swift_beginAccess();
    v15 = *(v4 + 16);
    *(v4 + 16) = v13;

    return v4;
  }

  v17 = *&v21[0];
  sub_1004A4274();

  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_100307828(void *a1)
{
  *(v1 + 16) = &_swiftEmptyArrayStorage;
  *(v1 + 24) = 0;
  v3 = [objc_opt_self() defaultCenter];
  v4 = swift_allocObject();
  swift_weakInit();
  v10[4] = sub_1003080FC;
  v10[5] = v4;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100307F04;
  v10[3] = &unk_1005B3168;
  v5 = _Block_copy(v10);
  v6 = a1;

  v7 = [v3 addObserverForName:NSManagedObjectContextObjectsDidChangeNotification object:v6 queue:0 usingBlock:v5];

  _Block_release(v5);
  v8 = *(v1 + 24);
  *(v1 + 24) = v7;
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_100307988()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1003079E0();
  }

  return result;
}

void sub_1003079E0()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v45 = v1 >> 62;
  v46 = v0;
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
    goto LABEL_86;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = 0;
  p_attr = &stru_1005CAFF8.attr;
  while (v3 != v4)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v6 = sub_1004A6794();
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_80;
      }

      v6 = *(v1 + 8 * v4 + 32);
    }

    v7 = v6;
    if (([v6 p_attr[429]] & 1) != 0 || (v8 = objc_msgSend(v7, "managedObjectContext")) == 0)
    {

LABEL_22:
      v19 = v4 + 1;
      if (!__OFADD__(v4, 1))
      {
        if (v45)
        {
          if (v19 == sub_1004A6A34())
          {
            goto LABEL_74;
          }
        }

        else if (v19 == *(v2 + 16))
        {
          goto LABEL_74;
        }

        v2 = v4 + 5;
LABEL_28:
        v20 = v2 - 4;
        if ((v1 & 0xC000000000000001) != 0)
        {
          v21 = sub_1004A6794();
        }

        else
        {
          if ((v20 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_78:
            __break(1u);
LABEL_79:
            __break(1u);
LABEL_80:
            __break(1u);
LABEL_81:
            __break(1u);
LABEL_82:
            __break(1u);
LABEL_83:
            __break(1u);
LABEL_84:
            __break(1u);
LABEL_85:
            __break(1u);
LABEL_86:
            v3 = sub_1004A6A34();
            goto LABEL_3;
          }

          if (v20 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_78;
          }

          v21 = *(v1 + 8 * v2);
        }

        v22 = v21;
        if (([v21 p_attr[429]] & 1) != 0 || (v23 = objc_msgSend(v22, "managedObjectContext")) == 0)
        {
        }

        else
        {

          v24 = sub_1004A5734();
          [v22 willAccessValueForKey:v24];

          v25 = [v22 primitiveAccount];
          if (!v25)
          {
            goto LABEL_39;
          }

          v26 = v25;
          v27 = sub_1004A5764();
          v29 = v28;

          v30 = HIBYTE(v29) & 0xF;
          if ((v29 & 0x2000000000000000) == 0)
          {
            v30 = v27 & 0xFFFFFFFFFFFFLL;
          }

          if (!v30)
          {

LABEL_39:
            v29 = 0;
          }

          v31 = sub_1004A5734();
          [v22 didAccessValueForKey:v31];

          if (v29)
          {

            p_attr = (&stru_1005CAFF8 + 8);
            if (v20 != v4)
            {
              if ((v1 & 0xC000000000000001) != 0)
              {
                v32 = sub_1004A6794();
                v33 = sub_1004A6794();
              }

              else
              {
                if ((v4 & 0x8000000000000000) != 0)
                {
                  goto LABEL_90;
                }

                v34 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v4 >= v34)
                {
                  goto LABEL_91;
                }

                if (v20 >= v34)
                {
                  goto LABEL_92;
                }

                v35 = *(v1 + 8 * v2);
                v32 = *(v1 + 8 * v4 + 32);
                v33 = v35;
              }

              v36 = v33;
              isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
              *(v46 + 16) = v1;
              if (!isUniquelyReferenced_nonNull_bridgeObject || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
              {
                v1 = sub_100337194(v1);
                *(v46 + 16) = v1;
              }

              if ((v4 & 0x8000000000000000) != 0)
              {
                goto LABEL_83;
              }

              v38 = v1 & 0xFFFFFFFFFFFFFF8;
              if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_84;
              }

              v39 = v38 + 8 * v4;
              v40 = *(v39 + 32);
              *(v39 + 32) = v36;

              *(v46 + 16) = v1;
              if ((v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
              {
                v1 = sub_100337194(v1);
                *(v46 + 16) = v1;
                v38 = v1 & 0xFFFFFFFFFFFFFF8;
                if ((v20 & 0x8000000000000000) != 0)
                {
LABEL_70:
                  __break(1u);
                  break;
                }
              }

              else if ((v20 & 0x8000000000000000) != 0)
              {
                goto LABEL_70;
              }

              if (v20 >= *(v38 + 16))
              {
                goto LABEL_85;
              }

              v41 = *(v38 + 8 * v2);
              *(v38 + 8 * v2) = v32;

              *(v46 + 16) = v1;
            }

            v18 = __OFADD__(v4++, 1);
            if (v18)
            {
              goto LABEL_82;
            }
          }

          else
          {
            p_attr = (&stru_1005CAFF8 + 8);
          }
        }

        v18 = __OFADD__(v20, 1);
        v42 = v2 - 3;
        if (v18)
        {
          goto LABEL_79;
        }

        if (v1 >> 62)
        {
          v43 = sub_1004A6A34();
        }

        else
        {
          v43 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        ++v2;
        if (v42 == v43)
        {
          goto LABEL_74;
        }

        goto LABEL_28;
      }

      goto LABEL_89;
    }

    v9 = sub_1004A5734();
    [v7 willAccessValueForKey:v9];

    v10 = [v7 primitiveAccount];
    if (!v10)
    {
      goto LABEL_15;
    }

    v11 = v10;
    v12 = sub_1004A5764();
    v14 = v13;

    v15 = HIBYTE(v14) & 0xF;
    v16 = v12 & 0xFFFFFFFFFFFFLL;
    p_attr = (&stru_1005CAFF8 + 8);
    if ((v14 & 0x2000000000000000) == 0)
    {
      v15 = v16;
    }

    if (!v15)
    {

LABEL_15:
      v14 = 0;
    }

    v17 = sub_1004A5734();
    [v7 didAccessValueForKey:v17];

    if (!v14)
    {
      goto LABEL_22;
    }

    v18 = __OFADD__(v4++, 1);
    if (v18)
    {
      goto LABEL_81;
    }
  }

  if (v45)
  {
    v4 = sub_1004A6A34();
  }

  else
  {
    v4 = *(v2 + 16);
  }

LABEL_74:
  if (v1 >> 62)
  {
    v44 = sub_1004A6A34();
    if (v44 >= v4)
    {
      goto LABEL_76;
    }
  }

  else
  {
    v44 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v44 >= v4)
    {
LABEL_76:
      sub_1003365BC(v4, v44);
      swift_endAccess();
      return;
    }
  }

  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
}

uint64_t sub_100307F04(uint64_t a1)
{
  v2 = sub_1004A40A4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_1004A4084();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_100307FF8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_10030805C(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005D4768, &unk_1004F5B20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003080C4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100308104(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Int sub_10030811C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 6);
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  sub_1004A6EB4(v3 | (v3 << 32));
  return sub_1004A6F14();
}

void sub_100308180()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 6);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  sub_1004A6EB4(v3 | (v3 << 32));
}

Swift::Int sub_1003081B8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 6);
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  sub_1004A6EB4(v3 | (v3 << 32));
  return sub_1004A6F14();
}

BOOL sub_100308218(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return (v3 | (v3 << 32)) == (v5 | (v5 << 32)) && (sub_1000FFC98(v2, v4) & 1) != 0;
  }

  v7 = sub_1004A6D34();
  result = 0;
  if (v7)
  {
    return (v3 | (v3 << 32)) == (v5 | (v5 << 32)) && (sub_1000FFC98(v2, v4) & 1) != 0;
  }

  return result;
}

uint64_t sub_1003082A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 28))
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

uint64_t sub_1003082F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 28) = 1;
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

    *(result + 28) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100308348()
{
  result = qword_1005D8910;
  if (!qword_1005D8910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D8910);
  }

  return result;
}

uint64_t sub_10030839C()
{
  v1 = [v0 userInfo];
  *&v5 = 0xD000000000000012;
  *(&v5 + 1) = 0x80000001004AEA20;
  v2 = [v1 __swift_objectForKeyedSubscript:sub_1004A6DF4()];
  swift_unknownObjectRelease();

  if (v2)
  {
    sub_1004A64E4();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_10030805C(v7);
  }

  return 0;
}

uint64_t sub_1003084B8()
{
  v1 = [v0 userInfo];
  *&v5 = 0xD000000000000013;
  *(&v5 + 1) = 0x80000001004AEA00;
  v2 = [v1 __swift_objectForKeyedSubscript:sub_1004A6DF4()];
  swift_unknownObjectRelease();

  if (v2)
  {
    sub_1004A64E4();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_10030805C(v7);
  }

  return 0;
}

Class sub_1003085D4(Class result, uint64_t a2)
{
  if (a2 <= 0)
  {
    sub_10019A8E4(0, &qword_1005D6858, NSString_ptr);
    return sub_1004A6314();
  }

  v3 = (result / a2) * 100.0;
  if (COERCE_INT(fabs(v3)) > 2139095039)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v3 <= -9.2234e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v3 >= 9.2234e18)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  return sub_1004A5DD4().super.super.isa;
}

void sub_100308694(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    goto LABEL_17;
  }

  v3 = a1;
  v4 = a1;
  if (a1 < 0)
  {
    v4 = -a1;
    if (__OFSUB__(0, a1))
    {
      goto LABEL_30;
    }
  }

  v5 = ceil(log10(v4));
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v6 = v5 - a2;
  if (__OFSUB__(v5, a2))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v6 > 0)
  {
    v7 = round(__exp10(v6));
    if (v7 > -9.22337204e18)
    {
      if (v7 < 9.22337204e18)
      {
        v8 = round(v3 / v7);
        if (v7 != INFINITY && (*&v8 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v8 > -9.22337204e18)
          {
            if (v8 < 9.22337204e18)
            {
              a1 = v8 * v7;
              if ((v8 * v7) >> 64 != a1 >> 63)
              {
                __break(1u);
LABEL_17:
                sub_10019A8E4(a1, &qword_1005D51B0, NSNumber_ptr);
                sub_1004A62E4(0);
                return;
              }

              goto LABEL_18;
            }

            goto LABEL_29;
          }

LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return;
        }

LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_18:

  sub_1004A5DD4();
}

uint64_t sub_10030883C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_10000C9C0(&qword_1005D8918, &qword_1004F5BF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004F5BE0;
  *(inited + 32) = 0xD00000000000001BLL;
  *(inited + 40) = 0x80000001004AE8E0;
  v6 = *a3;
  v7 = a3[1];

  *(inited + 48) = sub_1004A5DD4();
  *(inited + 56) = 0xD000000000000017;
  *(inited + 64) = 0x80000001004AE900;
  *(inited + 72) = sub_1004A5DD4();
  *(inited + 80) = 0xD00000000000001BLL;
  *(inited + 88) = 0x80000001004AE920;
  v8 = a3[2];
  v9 = a3[3];
  v10 = a3[4];
  v11 = a3[5];
  v12 = a3[6];
  *(inited + 96) = sub_1004A5DD4();
  *(inited + 104) = 0xD00000000000001ALL;
  *(inited + 112) = 0x80000001004AE940;
  *(inited + 120) = sub_1004A5DD4();
  *(inited + 128) = 0xD00000000000001ELL;
  *(inited + 136) = 0x80000001004AE960;
  *(inited + 144) = sub_1004A5DD4();
  *(inited + 152) = 0xD00000000000001ELL;
  *(inited + 160) = 0x80000001004AE980;
  *(inited + 168) = sub_1004A5DD4();
  *(inited + 176) = 0xD00000000000001ELL;
  *(inited + 184) = 0x80000001004AE9A0;
  *(inited + 192) = sub_1004A5DD4();
  *(inited + 200) = 0xD00000000000001FLL;
  *(inited + 208) = 0x80000001004AE9C0;
  v13 = a3[7];
  v14 = a3[8];
  *(inited + 216) = sub_1004A5DD4();
  *(inited + 224) = 0xD00000000000001DLL;
  *(inited + 232) = 0x80000001004AE9E0;
  *(inited + 240) = sub_1004A5DD4();
  sub_100350A90(inited);
  swift_setDeallocating();
  sub_10000C9C0(&qword_1005D8920, &qword_1004F5BF8);
  swift_arrayDestroy();
  return a1;
}

unint64_t sub_100308A54(uint64_t a1, objc_class *a2, objc_class *a3, uint64_t a4)
{
  sub_10000C9C0(&qword_1005D8918, &qword_1004F5BF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004D1B20;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x80000001004AE880;
  sub_100308694(a1, 1);
  *(inited + 48) = v9;
  *(inited + 56) = 0xD00000000000001CLL;
  *(inited + 64) = 0x80000001004AE8A0;
  sub_100308694(a4, 1);
  *(inited + 72) = v10;
  strcpy((inited + 80), "percentIndexed");
  *(inited + 95) = -18;
  *(inited + 96) = sub_1003085D4(a2, a1);
  *(inited + 104) = 0xD000000000000011;
  *(inited + 112) = 0x80000001004AE8C0;
  *(inited + 120) = sub_1003085D4(a3, a1);
  sub_100350A90(inited);
  swift_setDeallocating();
  sub_10000C9C0(&qword_1005D8920, &qword_1004F5BF8);
  swift_arrayDestroy();
  return 0xD000000000000024;
}

void *sub_100308BD4(void *a1, uint64_t a2)
{
  v3 = v2;
  v50 = a2;
  v6 = sub_1004A5234();
  v47 = *(v6 - 8);
  v48 = v6;
  v7 = *(v47 + 64);
  v8 = __chkstk_darwin(v6);
  v46 = (&v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v45 = (&v41 - v10);
  v11 = sub_1004A6074();
  v42 = *(v11 - 8);
  v43 = v11;
  v12 = *(v42 + 64);
  __chkstk_darwin(v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1004A6064();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v17 = sub_1004A5274();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 16) = a1;
  v44 = a1;
  *(v2 + 48) = static MonotonicTime.now()();
  v19 = OBJC_IVAR____TtC17IMAPSearchIndexer11DelayedSave_logger;
  v49 = sub_1004A4A74();
  v51 = *(v49 - 8);
  (*(v51 + 16))(v2 + v19, a2, v49);
  v41 = sub_10019A8E4(0, &qword_1005D3248, OS_dispatch_queue_ptr);
  sub_1004A5254();
  aBlock = &_swiftEmptyArrayStorage;
  sub_100309E24(&qword_1005D50B0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10000C9C0(&qword_1005D3250, &qword_1004F5CA0);
  sub_1000CBB00(&qword_1005D50C0, &qword_1005D3250, &qword_1004F5CA0);
  sub_1004A6544();
  (*(v42 + 104))(v14, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v43);
  v20 = sub_1004A6094();
  v3[5] = v20;
  v21 = v45;
  *v45 = 1;
  v22 = v48;
  v23 = *(v47 + 104);
  v23(v21, enum case for DispatchTimeInterval.seconds(_:), v48);
  v24 = v46;
  *v46 = 500;
  v23(v24, enum case for DispatchTimeInterval.milliseconds(_:), v22);
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = swift_allocObject();
  v27 = v44;
  *(v26 + 16) = v44;
  *(v26 + 24) = v25;
  v56 = sub_100309EE4;
  v57 = v26;
  aBlock = _NSConcreteStackBlock;
  v53 = 1107296256;
  v54 = sub_10019C778;
  v55 = &unk_1005B3288;
  v28 = _Block_copy(&aBlock);
  type metadata accessor for RestartableTimer();
  swift_allocObject();
  v29 = v20;
  v30 = v27;
  v31 = v29;

  v32 = RestartableTimer.init(queue:repeating:leeway:closure:)(v31, v21, v24, v28);

  v33 = v3[4];
  v3[4] = v32;

  v34 = [objc_opt_self() defaultCenter];
  v35 = swift_allocObject();
  swift_weakInit();
  v36 = v30;

  v56 = sub_100309EEC;
  v57 = v35;
  aBlock = _NSConcreteStackBlock;
  v53 = 1107296256;
  v54 = sub_100307F04;
  v55 = &unk_1005B32B0;
  v37 = _Block_copy(&aBlock);

  v38 = [v34 addObserverForName:NSManagedObjectContextObjectsDidChangeNotification object:v36 queue:0 usingBlock:v37];
  _Block_release(v37);

  (*(v51 + 8))(v50, v49);
  v39 = v3[3];
  v3[3] = v38;
  swift_unknownObjectRelease();
  return v3;
}

void sub_100309210(void *a1, uint64_t a2)
{
  v4[4] = sub_100309EF4;
  v4[5] = a2;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_10019C778;
  v4[3] = &unk_1005B32D8;
  v3 = _Block_copy(v4);

  [a1 performBlock:v3];
  _Block_release(v3);
}

uint64_t sub_1003092D8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = static MonotonicTime.now()();
    v3 = v1[2];
    if (![v3 hasChanges])
    {
    }

    result = sub_100309840();
    if (result)
    {
      goto LABEL_11;
    }

    v4 = v1[6];
    v5 = __OFSUB__(v2, v4);
    v6 = v2 - v4;
    if (v2 < v4)
    {
      if (__OFSUB__(v4, v2))
      {
        __break(1u);
        goto LABEL_16;
      }

      v5 = __OFSUB__(0, v4 - v2);
      v6 = v2 - v4;
      if (!v5)
      {
LABEL_10:
        if (v6 / 1000000000.0 > 4.0)
        {
LABEL_11:
          if ([v3 hasChanges])
          {

            sub_100309C70(v7, v1);

            v8 = v1[7];
            v1[7] = 0;

            return swift_unknownObjectRelease();
          }
        }
      }

      __break(1u);
    }

    if (!v5)
    {
      goto LABEL_10;
    }

LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t sub_1003093EC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 48) = static MonotonicTime.now()();
  }

  return result;
}

uint64_t sub_100309448()
{
  v1 = v0;
  v2 = sub_1004A5244();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1004A5274();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = static MonotonicTime.now()();
  v13 = *(v0 + 16);
  if ([v13 hasChanges])
  {
    result = sub_100309840();
    if (result)
    {
LABEL_10:
      if ([v13 hasChanges])
      {

        sub_100309C70(v18, v1);

        v19 = *(v1 + 56);
        *(v1 + 56) = 0;
        swift_unknownObjectRelease();
      }

      goto LABEL_12;
    }

    v15 = *(v1 + 48);
    v16 = __OFSUB__(v12, v15);
    v17 = v12 - v15;
    if (v12 < v15)
    {
      if (__OFSUB__(v15, v12))
      {
        __break(1u);
        goto LABEL_20;
      }

      v16 = __OFSUB__(0, v15 - v12);
      v17 = v12 - v15;
      if (!v16)
      {
LABEL_9:
        if (v17 / 1000000000.0 <= 4.0)
        {
          goto LABEL_12;
        }

        goto LABEL_10;
      }

      __break(1u);
    }

    if (!v16)
    {
      goto LABEL_9;
    }

LABEL_20:
    __break(1u);
    return result;
  }

LABEL_12:
  result = [v13 hasChanges];
  if ((result & 1) == 0)
  {
    return result;
  }

  result = [v13 processPendingChanges];
  if (*(v1 + 56))
  {
    if (*(v1 + 64))
    {
      return result;
    }

    goto LABEL_15;
  }

  v21 = os_transaction_create();
  v22 = *(v1 + 56);
  *(v1 + 56) = v21;
  result = swift_unknownObjectRelease();
  if ((*(v1 + 64) & 1) == 0)
  {
LABEL_15:
    *(v1 + 64) = 1;
    v25 = *(v1 + 40);
    aBlock[4] = sub_100309C50;
    aBlock[5] = v1;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10019C778;
    aBlock[3] = &unk_1005B3210;
    v20 = _Block_copy(aBlock);

    sub_1004A5254();
    v26 = _swiftEmptyArrayStorage;
    sub_100309E24(&qword_1005D4F50, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000C9C0(&unk_1005D91A0, &unk_1004DDA60);
    v24 = v7;
    sub_1000CBB00(&qword_1005D4F60, &unk_1005D91A0, &unk_1004DDA60);
    sub_1004A6544();
    sub_1004A6084();
    _Block_release(v20);
    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v11, v24);
  }

  return result;
}

uint64_t sub_1003097F8(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = *(result + 32);

    RestartableTimer.start()();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100309840()
{
  v1 = [v0 updatedObjects];
  sub_10019A8E4(0, &qword_1005D8A10, NSManagedObject_ptr);
  sub_100309DBC();
  v2 = sub_1004A5D44();

  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = sub_1004A65D4();
  }

  else
  {
    v3 = *(v2 + 16);
  }

  v4 = [v0 insertedObjects];
  v5 = sub_1004A5D44();

  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = sub_1004A65D4();
  }

  else
  {
    v6 = *(v5 + 16);
  }

  v8 = __OFADD__(v3, v6);
  v9 = v3 + v6;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    v10 = [v0 deletedObjects];
    v11 = sub_1004A5D44();

    if ((v11 & 0xC000000000000001) != 0)
    {
      v12 = sub_1004A65D4();
    }

    else
    {
      v12 = *(v11 + 16);
    }

    if (!__OFADD__(v9, v12))
    {
      return v9 + v12 > 1000;
    }
  }

  __break(1u);
  return result;
}

id sub_1003099C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v4 = 0;
  if ([v1 save:&v4])
  {
    return v4;
  }

  v3 = v4;
  sub_1004A4274();

  return swift_willThrow();
}

uint64_t sub_100309A70()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 56);
  swift_unknownObjectRelease();
  v4 = OBJC_IVAR____TtC17IMAPSearchIndexer11DelayedSave_logger;
  v5 = sub_1004A4A74();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DelayedSave()
{
  result = qword_1005D8950;
  if (!qword_1005D8950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100309B88()
{
  result = sub_1004A4A74();
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

uint64_t sub_100309C58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100309DBC()
{
  result = qword_1005D8A18;
  if (!qword_1005D8A18)
  {
    sub_10019A8E4(255, &qword_1005D8A10, NSManagedObject_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D8A18);
  }

  return result;
}

uint64_t sub_100309E24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100309E6C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100309EA4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100309F14()
{
  v0 = sub_1004A4A74();
  sub_1001C2074(v0, qword_1005D8A20);
  sub_1001C203C(v0, qword_1005D8A20);
  return sub_1004A4A64();
}

uint64_t sub_100309F8C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v109 = a2;
  v5 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v108 = &v101 - v7;
  v114 = a1;
  v8 = sub_100330258(a1);
  v9 = v8;
  v110 = v8 >> 62;
  if (v8 >> 62)
  {
    goto LABEL_94;
  }

  v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
LABEL_95:
  }

LABEL_3:
  if (qword_1005D8730 != -1)
  {
    swift_once();
  }

  v111 = v10;
  v11 = sub_1004A4A74();
  v12 = sub_1001C203C(v11, qword_1005D8A20);

  v105 = v12;
  v13 = sub_1004A4A54();
  v14 = sub_1004A6034();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    if (v110)
    {
      v16 = sub_1004A6A34();
    }

    else
    {
      v16 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v15 + 4) = v16;

    _os_log_impl(&_mh_execute_header, v13, v14, "Found %ld mailbox(es) to be deleted.", v15, 0xCu);
  }

  else
  {
  }

  v106 = sub_100350B94(_swiftEmptyArrayStorage);
  v17 = 0;
  v112 = v9 & 0xC000000000000001;
  v113 = v9;
  v115 = v9 & 0xFFFFFFFFFFFFFF8;
  p_attr = &stru_1005CAFF8.attr;
  v19 = &stru_1005CAFF8.attr;
  v107 = v3;
  while (1)
  {
    if (v112)
    {
      v20 = sub_1004A6794();
    }

    else
    {
      if (v17 >= *(v115 + 16))
      {
        goto LABEL_90;
      }

      v20 = *(v9 + 8 * v17 + 32);
    }

    v9 = v20;
    v21 = (v17 + 1);
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      v10 = sub_1004A6A34();
      if (!v10)
      {
        goto LABEL_95;
      }

      goto LABEL_3;
    }

    v22 = sub_1004A5734();
    [v9 p_attr[434]];

    v23 = [v9 *(v19 + 3448)];
    if (!v23)
    {
      goto LABEL_21;
    }

    v24 = v23;
    v25 = sub_1004A5764();
    v27 = v26;

    v28 = HIBYTE(v27) & 0xF;
    if ((v27 & 0x2000000000000000) == 0)
    {
      v28 = v25 & 0xFFFFFFFFFFFFLL;
    }

    if (!v28)
    {

LABEL_21:
      v25 = 0;
      v27 = 0;
    }

    v29 = sub_1004A5734();
    [v9 didAccessValueForKey:v29];

    if (v27)
    {
      break;
    }

    ++v17;
LABEL_24:
    v9 = v113;
    if (v21 == v111)
    {
      v49 = 0;
      v50 = v106;
      v51 = v106 + 64;
      v52 = 1 << *(v106 + 32);
      v53 = -1;
      if (v52 < 64)
      {
        v53 = ~(-1 << v52);
      }

      v54 = v53 & *(v106 + 64);
      v3 = ((v52 + 63) >> 6);
      *&v30 = 134218242;
      v101 = v30;
      while (v54)
      {
        v55 = v49;
LABEL_49:
        v56 = __clz(__rbit64(v54));
        v54 &= v54 - 1;
        v57 = v56 | (v55 << 6);
        v58 = (*(v50 + 48) + 16 * v57);
        v60 = *v58;
        v59 = v58[1];
        v61 = *(*(v50 + 56) + 8 * v57);

        v62 = sub_1004A4A54();
        v63 = sub_1004A6034();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          v104 = v62;
          v65 = v64;
          v103 = swift_slowAlloc();
          v116 = v103;
          *v65 = v101;
          *(v65 + 4) = v61;
          *(v65 + 12) = 2082;
          v102 = v63;
          sub_1004A5954();
          sub_1004A5AB4();

          v9 = v113;
          v66 = sub_1004A5864();
          v68 = v67;

          v69 = sub_10015BA6C(v66, v68, &v116);

          *(v65 + 14) = v69;
          v70 = v104;
          _os_log_impl(&_mh_execute_header, v104, v102, "Deleting %ld mailbox(es) for account %{public}s", v65, 0x16u);
          sub_1000197E0(v103);
        }

        else
        {
        }

        v49 = v55;
        v50 = v106;
      }

      while (1)
      {
        v55 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
          goto LABEL_91;
        }

        if (v55 >= v3)
        {
          break;
        }

        v54 = *(v51 + 8 * v55);
        ++v49;
        if (v54)
        {
          goto LABEL_49;
        }
      }

      v71 = 0;
      v72 = v107;
      v73 = v108;
      do
      {
        if (v112)
        {
          v76 = sub_1004A6794();
        }

        else
        {
          if (v71 >= *(v115 + 16))
          {
            goto LABEL_93;
          }

          v76 = *(v9 + 8 * v71 + 32);
        }

        v77 = v76;
        v3 = v71 + 1;
        if (__OFADD__(v71, 1))
        {
          goto LABEL_92;
        }

        if (v110)
        {
          v74 = sub_1004A6A34();
        }

        else
        {
          v74 = *(v115 + 16);
        }

        sub_10030AA54(v71, v74);
        v75 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
        (*(*(v75 - 8) + 56))(v73, 1, 1, v75);
        sub_10030B530(v77, v73, v109);
        sub_100025F40(v73, &qword_1005CD518, &qword_1004CF2F0);
        [v72 deleteObject:v77];
        sub_100309448();

        ++v71;
        v9 = v113;
      }

      while (v3 != v111);

      v78 = sub_100307550();
      swift_beginAccess();
      v19 = *(v78 + 16);

      if (v19 >> 62)
      {
        goto LABEL_100;
      }

      v79 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v79)
      {
      }

      goto LABEL_63;
    }
  }

  v19 = p_attr;
  v31 = v106;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v116 = v31;
  v33 = sub_10035E1B0(v25, v27);
  v35 = v31[2];
  v36 = (v34 & 1) == 0;
  v37 = __OFADD__(v35, v36);
  v38 = v35 + v36;
  if (!v37)
  {
    v39 = v34;
    if (v31[3] >= v38)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v48 = v33;
        sub_100360C40();
        v33 = v48;
        v31 = v116;
      }

      p_attr = v19;
      v19 = 0x1005CB000;
      if ((v39 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      sub_10035E9D0(v38, isUniquelyReferenced_nonNull_native);
      v3 = v116;
      v33 = sub_10035E1B0(v25, v27);
      if ((v39 & 1) != (v40 & 1))
      {
        goto LABEL_104;
      }

      p_attr = v19;
      v31 = v3;
      v19 = 0x1005CB000;
      if ((v39 & 1) == 0)
      {
LABEL_30:
        v31[(v33 >> 6) + 8] |= 1 << v33;
        v41 = (v31[6] + 16 * v33);
        *v41 = v25;
        v41[1] = v27;
        *(v31[7] + 8 * v33) = 0;
        v42 = v31[2];
        v37 = __OFADD__(v42, 1);
        v43 = v42 + 1;
        if (v37)
        {
          goto LABEL_103;
        }

        v31[2] = v43;
        goto LABEL_36;
      }
    }

    v44 = v33;

    v33 = v44;
LABEL_36:
    v45 = v31[7];
    v46 = *(v45 + 8 * v33);
    v37 = __OFADD__(v46, 1);
    v47 = v46 + 1;
    if (v37)
    {
      goto LABEL_99;
    }

    v106 = v31;
    *(v45 + 8 * v33) = v47;

    v17 = v21;
    goto LABEL_24;
  }

  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  v79 = sub_1004A6A34();
  if (!v79)
  {
  }

LABEL_63:
  if (v79 >= 1)
  {
    v80 = 0;
    v115 = v19 + 32;
    v81 = v114 + 7;
    while (1)
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v82 = sub_1004A6794();
      }

      else
      {
        v82 = *(v115 + 8 * v80);
      }

      v83 = v82;
      v84 = sub_1004A5734();
      [v83 willAccessValueForKey:v84];

      v85 = [v83 primitiveAccount];
      if (!v85)
      {
        goto LABEL_76;
      }

      v86 = v85;
      v87 = sub_1004A5764();
      v89 = v88;

      v90 = HIBYTE(v89) & 0xF;
      if ((v89 & 0x2000000000000000) == 0)
      {
        v90 = v87 & 0xFFFFFFFFFFFFLL;
      }

      if (!v90)
      {
        break;
      }

LABEL_77:
      v91 = sub_1004A5734();
      [v83 didAccessValueForKey:v91];

      if (v89)
      {
        if (v114[2])
        {
          v92 = v114;
          v93 = v114[5];
          sub_1004A6E94();
          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
          v94 = sub_1004A6F14();
          v95 = -1 << *(v92 + 32);
          v96 = v94 & ~v95;
          if ((*(v81 + ((v96 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v96))
          {
            v97 = ~v95;
            while (1)
            {
              v98 = (v114[6] + 16 * v96);
              v99 = *v98 == v87 && v89 == v98[1];
              if (v99 || (sub_1004A6D34() & 1) != 0)
              {
                break;
              }

              v96 = (v96 + 1) & v97;
              if (((*(v81 + ((v96 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v96) & 1) == 0)
              {
                goto LABEL_65;
              }
            }

            goto LABEL_67;
          }
        }

LABEL_65:
      }

      [v107 deleteObject:{v83, v101}];

LABEL_67:
      if (++v80 == v79)
      {
      }
    }

LABEL_76:
    v87 = 0;
    v89 = 0;
    goto LABEL_77;
  }

  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  result = sub_1004A6E24();
  __break(1u);
  return result;
}

uint64_t sub_10030AA54(char *a1, uint64_t a2)
{
  v84 = a2;
  v85 = a1;
  v3 = sub_1004A4374();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v82 - v9;
  __chkstk_darwin(v11);
  v13 = &v82 - v12;
  __chkstk_darwin(v14);
  v16 = &v82 - v15;
  *&v18 = __chkstk_darwin(v17).n128_u64[0];
  v20 = &v82 - v19;
  v21 = [v2 objectID];
  v22 = [v21 URIRepresentation];

  v86 = v20;
  sub_1004A4344();

  v23 = sub_10033A824();
  v25 = v24;
  v26 = sub_100340AF8(v23);
  if (v23)
  {
    if (v27)
    {
      v83 = v26;
      v28 = v86;
      if (qword_1005D8730 != -1)
      {
        swift_once();
      }

      v29 = sub_1004A4A74();
      sub_1001C203C(v29, qword_1005D8A20);
      (*(v4 + 16))(v7, v28, v3);

      v30 = sub_1004A4A54();
      v16 = sub_1004A6034();

      if (!os_log_type_enabled(v30, v16))
      {

        v70 = *(v4 + 8);
        v70(v7, v3);
        return (v70)(v28, v3);
      }

      v31 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v89 = v82;
      *v31 = 134219267;
      if (!__OFADD__(v85, 1))
      {
        *(v31 + 4) = v85 + 1;
        *(v31 + 12) = 2048;
        *(v31 + 14) = v84;
        *(v31 + 22) = 2160;
        *(v31 + 24) = 0x786F626C69616DLL;
        *(v31 + 32) = 2085;
        v87 = v23;
        v88 = v25;
        v32 = sub_1004A5824();
        v34 = sub_10015BA6C(v32, v33, &v89);

        *(v31 + 34) = v34;
        *(v31 + 42) = 2082;
        sub_10030C4CC();
        v35 = sub_1004A6CE4();
        v37 = v36;
        v85 = *(v4 + 8);
        (v85)(v7, v3);
        v38 = sub_10015BA6C(v35, v37, &v89);

        *(v31 + 44) = v38;
        *(v31 + 52) = 2080;
        sub_100236568(8);

        v39 = sub_1004A5864();
        v41 = v40;

        v42 = sub_10015BA6C(v39, v41, &v89);

        *(v31 + 54) = v42;
        _os_log_impl(&_mh_execute_header, v30, v16, "[%ld/%ld] Marking mailbox '%{sensitive,mask.mailbox}s' %{public}s for account '%s' as deleted.", v31, 0x3Eu);
        swift_arrayDestroy();

        return (v85)(v86, v3);
      }

      __break(1u);
      goto LABEL_31;
    }

    v57 = v86;
    if (qword_1005D8730 != -1)
    {
      swift_once();
    }

    v58 = sub_1004A4A74();
    sub_1001C203C(v58, qword_1005D8A20);
    (*(v4 + 16))(v10, v57, v3);

    v59 = sub_1004A4A54();
    v60 = sub_1004A6034();

    if (!os_log_type_enabled(v59, v60))
    {

      v81 = *(v4 + 8);
      v81(v10, v3);
      return (v81)(v57, v3);
    }

    v61 = swift_slowAlloc();
    result = swift_slowAlloc();
    v89 = result;
    *v61 = 134219011;
    if (!__OFADD__(v85, 1))
    {
      *(v61 + 4) = v85 + 1;
      *(v61 + 12) = 2048;
      *(v61 + 14) = v84;
      *(v61 + 22) = 2160;
      *(v61 + 24) = 0x786F626C69616DLL;
      *(v61 + 32) = 2085;
      v87 = v23;
      v88 = v25;
      v62 = sub_1004A5824();
      v64 = sub_10015BA6C(v62, v63, &v89);

      *(v61 + 34) = v64;
      *(v61 + 42) = 2082;
      sub_10030C4CC();
      v65 = sub_1004A6CE4();
      v67 = v66;
      v68 = *(v4 + 8);
      v68(v10, v3);
      v69 = sub_10015BA6C(v65, v67, &v89);

      *(v61 + 44) = v69;
      _os_log_impl(&_mh_execute_header, v59, v60, "[%ld/%ld] Marking mailbox '%{sensitive,mask.mailbox}s' %{public}s as deleted.", v61, 0x34u);
      swift_arrayDestroy();

      return (v68)(v86, v3);
    }
  }

  else
  {
    if (!v27)
    {
      if (qword_1005D8730 == -1)
      {
LABEL_22:
        v71 = sub_1004A4A74();
        sub_1001C203C(v71, qword_1005D8A20);
        v28 = v86;
        (*(v4 + 16))(v16, v86, v3);
        v72 = sub_1004A4A54();
        v73 = sub_1004A6034();
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          result = swift_slowAlloc();
          v87 = result;
          *v74 = 134218498;
          if (!__OFADD__(v85, 1))
          {
            v75 = result;
            *(v74 + 4) = v85 + 1;
            *(v74 + 12) = 2048;
            *(v74 + 14) = v84;
            *(v74 + 22) = 2082;
            sub_10030C4CC();
            v76 = sub_1004A6CE4();
            v78 = v77;
            v68 = *(v4 + 8);
            v68(v16, v3);
            v79 = sub_10015BA6C(v76, v78, &v87);

            *(v74 + 24) = v79;
            _os_log_impl(&_mh_execute_header, v72, v73, "[%ld/%ld] Marking mailbox %{public}s as deleted.", v74, 0x20u);
            sub_1000197E0(v75);

            return (v68)(v86, v3);
          }

          goto LABEL_34;
        }

        v70 = *(v4 + 8);
        v70(v16, v3);
        return (v70)(v28, v3);
      }

LABEL_31:
      swift_once();
      goto LABEL_22;
    }

    v83 = v26;
    if (qword_1005D8730 != -1)
    {
      swift_once();
    }

    v43 = sub_1004A4A74();
    sub_1001C203C(v43, qword_1005D8A20);
    v44 = v86;
    (*(v4 + 16))(v13, v86, v3);

    v45 = sub_1004A4A54();
    v46 = sub_1004A6034();

    if (!os_log_type_enabled(v45, v46))
    {

      v80 = *(v4 + 8);
      v80(v13, v3);
      return (v80)(v44, v3);
    }

    v47 = swift_slowAlloc();
    result = swift_slowAlloc();
    v82 = result;
    v87 = result;
    *v47 = 134218754;
    if (!__OFADD__(v85, 1))
    {
      *(v47 + 4) = v85 + 1;
      *(v47 + 12) = 2048;
      *(v47 + 14) = v84;
      *(v47 + 22) = 2082;
      sub_10030C4CC();
      v49 = sub_1004A6CE4();
      v51 = v50;
      v85 = *(v4 + 8);
      (v85)(v13, v3);
      v52 = sub_10015BA6C(v49, v51, &v87);

      *(v47 + 24) = v52;
      *(v47 + 32) = 2080;
      sub_100236568(8);

      v53 = sub_1004A5864();
      v55 = v54;

      v56 = sub_10015BA6C(v53, v55, &v87);

      *(v47 + 34) = v56;
      _os_log_impl(&_mh_execute_header, v45, v46, "[%ld/%ld] Marking mailbox %{public}s for account '%s' as deleted.", v47, 0x2Au);
      swift_arrayDestroy();

      return (v85)(v86, v3);
    }

    __break(1u);
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

void sub_10030B530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v117 = a3;
  v118 = a1;
  v111 = sub_1004A44E4();
  v114 = *(v111 - 8);
  v4 = *(v114 + 64);
  __chkstk_darwin(v111);
  v110 = &v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v113 = &v109 - v7;
  v123 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v8 = *(*(v123 - 8) + 64);
  __chkstk_darwin(v123);
  v10 = &v109 - v9;
  v11 = sub_10000C9C0(&qword_1005CD7A0, &unk_1004CF590);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v109 - v13;
  v15 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v109 - v21;
  v23 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v109 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v109 - v28;
  v126 = a2;
  sub_100095840(a2, &v109 - v28);
  v31 = *(v16 + 48);
  v30 = v16 + 48;
  v124 = v31;
  v125 = v15;
  v32 = 0;
  if (v31(v29, 1, v15) == 1)
  {
    goto LABEL_5;
  }

  sub_10009DE7C(v29, v22);
  v33 = sub_1000E5314();
  if ((v33 & 0x100000000) == 0)
  {
    LODWORD(v128) = v33;
    MessageIdentifierSet.ranges.getter(v14);
    v34 = sub_1000E4C0C() >> 32;
    v36 = v35;
    sub_100025F40(v14, &qword_1005CD7A0, &unk_1004CF590);
    if (v36)
    {
      goto LABEL_88;
    }

    v127 = v34;
    v37 = sub_100016948();
    static MessageIdentifier.... infix(_:_:)(&v128, &v127, &type metadata for UID, v37, v129);
    v128 = Range<>.init<A>(_:)(v129, &type metadata for UID, v37);
    sub_100016D2C();
    sub_1004A7124();
    v32 = sub_10037A73C();
    sub_100025F40(v10, &unk_1005D91B0, &unk_1004CF400);
    sub_100025F40(v22, &qword_1005CD1D0, &unk_1004CF2C0);
LABEL_5:
    v112 = v32;
    v38 = sub_10030C324(v32);
    v39 = [v38 count];
    if (v39 >= 1)
    {
      v41 = v39;
      v121 = 0;
      v122 = 0;
      v119 = 0;
      v120 = 0;
      v42 = 0;
      *&v40 = 134218240;
      v109 = v40;
      v115 = v30;
      while (1)
      {
        v43 = [v38 objectAtIndexedSubscript:{v42, v109, *(&v109 + 1)}];
        sub_1004A64E4();
        swift_unknownObjectRelease();
        _s7MessageCMa();
        if (!swift_dynamicCast())
        {
          goto LABEL_89;
        }

        v32 = v128;
        sub_100095840(v126, v26);
        if (v124(v26, 1, v125) == 1)
        {
          break;
        }

        sub_10009DE7C(v26, v19);
        v44 = sub_1004A5734();
        [v32 willAccessValueForKey:v44];

        v45 = [v32 primitiveUid];
        if (v45)
        {
          v46 = v45;
          v47 = [v45 longLongValue];

          v48 = (v47 - 0x100000000) < 0xFFFFFFFF00000001;
          if ((v47 - 0x100000000) < 0xFFFFFFFF00000001)
          {
            LODWORD(v47) = 0;
          }
        }

        else
        {
          LODWORD(v47) = 0;
          v48 = 1;
        }

        v49 = sub_1004A5734();
        [v32 didAccessValueForKey:v49];

        if (v48)
        {
          v51 = v19;
          v52 = &qword_1005CD1D0;
          v53 = &unk_1004CF2C0;
          goto LABEL_21;
        }

        LODWORD(v129[0]) = v47;
        v50 = MessageIdentifierSet.contains(_:)(v129, v123);
        sub_100025F40(v19, &qword_1005CD1D0, &unk_1004CF2C0);
        if ((v50 & 1) == 0)
        {
          goto LABEL_8;
        }

LABEL_22:
        [v32 setMailbox:0];
        v54 = sub_1004A5734();
        [v32 willAccessValueForKey:v54];

        v55 = [v32 primitiveIndexGeneration];
        if (v55)
        {
          v56 = v55;
          v57 = [v55 longLongValue];

          v58 = sub_1004A5734();
          [v32 didAccessValueForKey:v58];

          if (v57)
          {
            v59 = v121 + 1;
            v30 = v115;
            if (__OFADD__(v121, 1))
            {
              __break(1u);
              goto LABEL_79;
            }

            v60 = v122;
            goto LABEL_29;
          }
        }

        else
        {
          v61 = sub_1004A5734();
          [v32 didAccessValueForKey:v61];
        }

        [v116 deleteObject:v32];
        v60 = v122 + 1;
        v30 = v115;
        if (__OFADD__(v122, 1))
        {
          goto LABEL_75;
        }

        v59 = v121;
LABEL_29:
        if (__OFADD__(v60, v59))
        {
          __break(1u);
LABEL_75:
          __break(1u);
          goto LABEL_76;
        }

        v120 = v59;
        v121 = v59;
        v122 = v60;
        v119 = v60;
        if ((0x7EB9037BC7F43BC3 * (v60 + v59) + 0x9E89F287C7A4FLL) <= 0x13D13E50F8F49ELL)
        {
          v62 = static MonotonicTime.now()();
          v63 = *(v117 + 16);
          if ([v63 hasChanges])
          {
            if (sub_100309840())
            {
              goto LABEL_92;
            }

            v64 = *(v117 + 48);
            v65 = v62 - v64;
            if (v62 >= v64)
            {
              if (__OFSUB__(v62, v64))
              {
                goto LABEL_83;
              }
            }

            else
            {
              if (__OFSUB__(v64, v62))
              {
                goto LABEL_82;
              }

              v65 = v62 - v64;
              if (__OFSUB__(0, v64 - v62))
              {
                goto LABEL_84;
              }
            }

            if (v65 / 1000000000.0 > 4.0)
            {
LABEL_92:
              if ([v63 hasChanges])
              {
                v66 = v117;

                sub_100309C70(v67, v66);

                v68 = *(v66 + 56);
                *(v66 + 56) = 0;
                swift_unknownObjectRelease();
              }
            }
          }

          if (qword_1005D8730 != -1)
          {
            swift_once();
          }

          v69 = sub_1004A4A74();
          sub_1001C203C(v69, qword_1005D8A20);
          v70 = sub_1004A4A54();
          v71 = sub_1004A6034();
          v72 = os_log_type_enabled(v70, v71);
          v73 = v121;
          v74 = v122;
          if (v72)
          {
            v75 = swift_slowAlloc();
            *v75 = v109;
            *(v75 + 4) = v122;
            *(v75 + 12) = 2048;
            *(v75 + 14) = v121;
            _os_log_impl(&_mh_execute_header, v70, v71, "  Did delete %ld message(s), did mark %ld message(s) for removal from Spotlight.", v75, 0x16u);

            v73 = v121;
            v74 = v122;
          }

          v119 = v74;
          v120 = v73;
        }

LABEL_8:
        ++v42;

        if (v42 >= v41)
        {
          goto LABEL_47;
        }
      }

      v51 = v26;
      v52 = &qword_1005CD518;
      v53 = &qword_1004CF2F0;
LABEL_21:
      sub_100025F40(v51, v52, v53);
      goto LABEL_22;
    }

    v121 = 0;
    v122 = 0;
    v119 = 0;
    v120 = 0;
LABEL_47:

    v42 = v119 + v120;
    if (__OFADD__(v119, v120))
    {
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    v30 = v114;
    v19 = v113;
    v32 = v112;
    if ((0x7EB9037BC7F43BC3 * v42 + 0x9E89F287C7A4FLL) < 0x13D13E50F8F49FLL)
    {
LABEL_64:
      if (qword_1005D8730 == -1)
      {
LABEL_65:
        v88 = sub_1004A4A74();
        sub_1001C203C(v88, qword_1005D8A20);
        v89 = sub_1004A4A54();
        v90 = sub_1004A6034();
        if (os_log_type_enabled(v89, v90))
        {
          v91 = swift_slowAlloc();
          *v91 = 134217984;
          *(v91 + 4) = v42;
          _os_log_impl(&_mh_execute_header, v89, v90, "Found %ld messages.", v91, 0xCu);
        }

        v93 = sub_100340AF8(v92);
        if (!v94)
        {
          goto LABEL_73;
        }

        v95 = sub_1003070C0(v93, v94);

        v96 = v95;
        v129[0] = sub_10033A6CC();
        sub_1004A44D4();
        v97 = v110;
        v98 = v111;
        (*(v30 + 16))(v110, v19, v111);
        sub_1004A4464();
        v100 = round(v99 / 21600.0);
        v101 = *(v30 + 8);
        v101(v97, v98);
        if ((*&v100 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
LABEL_72:
          v101(v19, v98);
          v102 = v129[0];
          v103 = sub_1004A5734();
          [v96 willChangeValueForKey:v103];

          v104 = sub_100373DA8(v102);
          v106 = v105;

          isa = sub_1004A4404().super.isa;
          sub_100014D40(v104, v106);
          [v96 setPrimitiveDataUsage:isa];

          v108 = sub_1004A5734();
          [v96 didChangeValueForKey:v108];

LABEL_73:
          return;
        }

        if (v100 <= -9.22337204e18)
        {
          __break(1u);
        }

        else if (v100 < 9.22337204e18)
        {
          sub_100375070(v100, v129);
          goto LABEL_72;
        }

        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

LABEL_77:
      swift_once();
      goto LABEL_65;
    }

    v76 = static MonotonicTime.now()();
    v77 = *(v117 + 16);
    if (![v77 hasChanges])
    {
      goto LABEL_60;
    }

    if (sub_100309840())
    {
      goto LABEL_58;
    }

    v78 = *(v117 + 48);
    v79 = __OFSUB__(v76, v78);
    v80 = v76 - v78;
    if (v76 < v78)
    {
      if (__OFSUB__(v78, v76))
      {
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

      v79 = __OFSUB__(0, v78 - v76);
      v80 = v76 - v78;
      if (!v79)
      {
LABEL_57:
        if (v80 / 1000000000.0 > 4.0)
        {
LABEL_58:
          if ([v77 hasChanges])
          {
            v81 = v117;

            sub_100309C70(v82, v81);

            v83 = *(v81 + 56);
            *(v81 + 56) = 0;
            swift_unknownObjectRelease();
          }
        }

LABEL_60:
        if (qword_1005D8730 != -1)
        {
LABEL_79:
          swift_once();
        }

        v84 = sub_1004A4A74();
        sub_1001C203C(v84, qword_1005D8A20);
        v85 = sub_1004A4A54();
        v86 = sub_1004A6034();
        if (os_log_type_enabled(v85, v86))
        {
          v87 = swift_slowAlloc();
          *v87 = 134218240;
          *(v87 + 4) = v122;
          *(v87 + 12) = 2048;
          *(v87 + 14) = v121;
          _os_log_impl(&_mh_execute_header, v85, v86, "  Did delete %ld message(s), did mark %ld message(s) for removal from Spotlight.", v87, 0x16u);
        }

        goto LABEL_64;
      }

      __break(1u);
    }

    if (v79)
    {
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    goto LABEL_57;
  }

LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  sub_1004A69A4();
  __break(1u);
}

uint64_t sub_10030C324(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(NSFetchRequest);
  v5 = sub_1004A5734();
  v6 = [v4 initWithEntityName:v5];

  sub_10031E2EC(v2);
  if (a1)
  {
    [v6 appendPredicate:a1];
  }

  [v6 setReturnsObjectsAsFaults:0];
  isa = sub_1004A5C04().super.isa;
  [v6 setRelationshipKeyPathsForPrefetching:isa];

  [v6 setFetchBatchSize:1237];
  v14 = 0;
  v8 = v6;
  v9 = [v8 execute:&v14];
  if (v9)
  {
    v10 = v9;
    v11 = v14;

    return v10;
  }

  else
  {
    v13 = v14;
    sub_1004A4274();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

unint64_t sub_10030C4CC()
{
  result = qword_1005D8A38;
  if (!qword_1005D8A38)
  {
    sub_1004A4374();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D8A38);
  }

  return result;
}

uint64_t sub_10030C524()
{
  v0 = sub_1004A4374();
  sub_1001C2074(v0, qword_1005D8A40);
  v1 = sub_1001C203C(v0, qword_1005D8A40);
  return sub_10030C570(v1);
}

uint64_t sub_10030C570@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = sub_1004A4294();
  v2 = *(v1 - 8);
  v3 = v2[8];
  __chkstk_darwin(v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1004A4374();
  v6 = *(v26 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v26);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v24 - v11;
  v13 = [objc_allocWithZone(NSFileManager) init];
  v28[0] = 0;
  v14 = [v13 URLForDirectory:5 inDomain:1 appropriateForURL:0 create:1 error:v28];

  v15 = v28[0];
  if (v14)
  {
    sub_1004A4344();
    v16 = v15;

    v28[0] = 1818845517;
    v28[1] = 0xE400000000000000;
    v25 = enum case for URL.DirectoryHint.isDirectory(_:);
    v24 = v2[13];
    v24(v5);
    sub_1001C2190();
    sub_1004A4364();
    v17 = v12;
    v18 = v2[1];
    v18(v5, v1);
    v19 = *(v6 + 8);
    v20 = v10;
    v21 = v26;
    v19(v20, v26);
    strcpy(v28, "SearchIndexer");
    HIWORD(v28[1]) = -4864;
    (v24)(v5, v25, v1);
    sub_1004A4364();
    v18(v5, v1);
    return (v19)(v17, v21);
  }

  else
  {
    v23 = v28[0];
    sub_1004A4274();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_10030C8C4()
{
  v0 = sub_1004A4A74();
  sub_1001C2074(v0, qword_1005D8A58);
  sub_1001C203C(v0, qword_1005D8A58);
  return sub_1004A4A64();
}

uint64_t sub_10030C94C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1004A5244();
  v48 = *(v10 - 8);
  v11 = *(v48 + 64);
  __chkstk_darwin(v10);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1004A5274();
  v47 = *(v50 - 8);
  v14 = *(v47 + 64);
  __chkstk_darwin(v50);
  v16 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = (v5 + OBJC_IVAR____TtC17IMAPSearchIndexer17DiskSpaceObserver_update);
  *v17 = 0;
  v17[1] = 0;
  v18 = v5 + OBJC_IVAR____TtC17IMAPSearchIndexer17DiskSpaceObserver_lastValue;
  *v18 = 0;
  *(v18 + 8) = 0;
  *(v18 + 16) = 1;
  v19 = OBJC_IVAR____TtC17IMAPSearchIndexer17DiskSpaceObserver_volume;
  v20 = sub_1004A4374();
  v39 = *(v20 - 8);
  v40 = v20;
  v21 = *(v39 + 16);
  v42 = a1;
  v21(v5 + v19, a1);
  *(v5 + OBJC_IVAR____TtC17IMAPSearchIndexer17DiskSpaceObserver_queue) = a2;
  *v17 = a3;
  v17[1] = a4;
  v22 = qword_1005D8750;
  v23 = a2;
  v41 = a4;

  if (v22 != -1)
  {
    swift_once();
  }

  v24 = off_1005D8A78;
  if (qword_1005D8748 != -1)
  {
    swift_once();
  }

  v25 = v24(qword_1005D8A70, 0, 98304, v23);
  *(v5 + OBJC_IVAR____TtC17IMAPSearchIndexer17DiskSpaceObserver_source) = v25;
  v37 = OBJC_IVAR____TtC17IMAPSearchIndexer17DiskSpaceObserver_source;
  v26 = swift_allocObject();
  swift_weakInit();
  v56 = sub_10030E120;
  v57 = v26;
  aBlock = _NSConcreteStackBlock;
  v53 = 1107296256;
  v49 = &v54;
  v54 = sub_10019C778;
  v55 = &unk_1005B33A8;
  v27 = _Block_copy(&aBlock);
  v38 = v23;
  v28 = v27;

  sub_1004A5254();
  v51 = &_swiftEmptyArrayStorage;
  v46 = sub_10022AAC8();
  v45 = sub_10000C9C0(&unk_1005D91A0, &unk_1004DDA60);
  v44 = sub_10022AB20();
  sub_1004A6544();
  v43 = sub_100210D7C();
  sub_1004A60F4();
  _Block_release(v28);
  v48 = *(v48 + 8);
  (v48)(v13, v10);
  v47 = *(v47 + 8);
  (v47)(v16, v50);

  v29 = v37;
  v36[1] = *(v5 + v37);
  v30 = swift_allocObject();
  swift_weakInit();
  v56 = sub_10030D970;
  v57 = v30;
  aBlock = _NSConcreteStackBlock;
  v53 = 1107296256;
  v54 = sub_10019C778;
  v55 = &unk_1005B33D0;
  v31 = _Block_copy(&aBlock);

  sub_1004A5254();
  v51 = &_swiftEmptyArrayStorage;
  sub_1004A6544();
  sub_1004A60C4();
  _Block_release(v31);
  (v48)(v13, v10);
  (v47)(v16, v50);

  v32 = *(v5 + v29);
  v33 = swift_allocObject();
  swift_weakInit();

  v56 = sub_10030D98C;
  v57 = v33;
  aBlock = _NSConcreteStackBlock;
  v53 = 1107296256;
  v54 = sub_10019C778;
  v55 = &unk_1005B33F8;
  v34 = _Block_copy(&aBlock);

  sub_1004A5254();
  v51 = &_swiftEmptyArrayStorage;
  sub_1004A6544();
  sub_1004A60E4();
  _Block_release(v34);

  (*(v39 + 8))(v42, v40);
  (v48)(v13, v10);
  (v47)(v16, v50);

  return v5;
}

uint64_t sub_10030CFFC()
{
  v1 = sub_1004A4374();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004A53F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v0 + OBJC_IVAR____TtC17IMAPSearchIndexer17DiskSpaceObserver_queue);
  *v10 = v11;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v12 = v11;
  LOBYTE(v11) = sub_1004A5404();
  result = (*(v7 + 8))(v10, v6);
  if (v11)
  {
    (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtC17IMAPSearchIndexer17DiskSpaceObserver_volume, v1);
    result = sub_10030D994(v5);
    v15 = v0 + OBJC_IVAR____TtC17IMAPSearchIndexer17DiskSpaceObserver_lastValue;
    if ((*(v0 + OBJC_IVAR____TtC17IMAPSearchIndexer17DiskSpaceObserver_lastValue + 16) & 1) != 0 || (result == *v15 ? (v16 = v14 == *(v15 + 8)) : (v16 = 0), !v16))
    {
      *v15 = result;
      *(v15 + 8) = v14;
      *(v15 + 16) = 0;
      v17 = *(v0 + OBJC_IVAR____TtC17IMAPSearchIndexer17DiskSpaceObserver_update);
      if (v17)
      {
        v18 = *(v0 + OBJC_IVAR____TtC17IMAPSearchIndexer17DiskSpaceObserver_update + 8);
        v19 = result;
        v20 = v14;

        v17(v19, v20);
        return sub_1000B5158(v17);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10030D228()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10030CFFC();
  }

  return result;
}

uint64_t sub_10030D280()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = (result + OBJC_IVAR____TtC17IMAPSearchIndexer17DiskSpaceObserver_update);
    v3 = *(result + OBJC_IVAR____TtC17IMAPSearchIndexer17DiskSpaceObserver_update);
    v2 = *(result + OBJC_IVAR____TtC17IMAPSearchIndexer17DiskSpaceObserver_update + 8);
    *v1 = 0;
    v1[1] = 0;
    sub_1000B5158(v3);
  }

  return result;
}

uint64_t sub_10030D2F0()
{
  v1 = OBJC_IVAR____TtC17IMAPSearchIndexer17DiskSpaceObserver_volume;
  v2 = sub_1004A4374();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC17IMAPSearchIndexer17DiskSpaceObserver_update + 8);
  sub_1000B5158(*(v0 + OBJC_IVAR____TtC17IMAPSearchIndexer17DiskSpaceObserver_update));
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DiskSpaceObserver()
{
  result = qword_1005D8AC0;
  if (!qword_1005D8AC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10030D414()
{
  result = sub_1004A4374();
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

uint64_t sub_10030D500(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v29 = a2;
  v33 = a1;
  v4 = sub_10000C9C0(&qword_1005D5FC8, &unk_1004E9940);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v28 - v6;
  v32 = sub_1004A4204();
  v8 = *(v32 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v32);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1004A4374();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v28 - v18;
  sub_10000C9C0(&qword_1005D8B68, &unk_1004F5D80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004CEAA0;
  *(inited + 32) = NSURLVolumeURLKey;
  v21 = NSURLVolumeURLKey;
  sub_100330494(inited);
  swift_setDeallocating();
  sub_10030D8C4(inited + 32);
  sub_1004A42C4();

  sub_1004A41F4();
  (*(v8 + 8))(v11, v32);
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
    __break(1u);

    v34 = 0;
    v35 = 0xE000000000000000;
    sub_1004A6724(38);

    v34 = 0xD000000000000023;
    v35 = 0x80000001004AEC60;
    v36._countAndFlagsBits = sub_1004A4354();
    sub_1004A5994(v36);

    v37._countAndFlagsBits = 39;
    v37._object = 0xE100000000000000;
    sub_1004A5994(v37);
    result = sub_1004A69A4();
    __break(1u);
  }

  else
  {
    (*(v13 + 32))(v19, v7, v12);
    (*(v13 + 16))(v17, v19, v12);
    v22 = type metadata accessor for DiskSpaceObserver();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    v25 = swift_allocObject();
    sub_10030C94C(v17, v29, v30, v31);
    v26 = *(v13 + 8);
    v26(v33, v12);
    v26(v19, v12);
    return v25;
  }

  return result;
}

uint64_t sub_10030D8C4(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10030D920()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10030D958(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10030D994(char *a1)
{
  v2 = sub_1004A4374();
  v3 = *(v2 - 8);
  v63 = v2;
  v64 = v3;
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v62 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v57 - v7;
  v9 = sub_10000C9C0(&qword_1005D8B70, &unk_1004F5D90);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v57 - v11;
  v13 = sub_1004A4204();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C9C0(&qword_1005D8B68, &unk_1004F5D80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004D01D0;
  *(inited + 32) = NSURLVolumeAvailableCapacityKey;
  *(inited + 40) = NSURLVolumeAvailableCapacityForOpportunisticUsageKey;
  v19 = NSURLVolumeAvailableCapacityKey;
  v20 = NSURLVolumeAvailableCapacityForOpportunisticUsageKey;
  sub_100330494(inited);
  swift_setDeallocating();
  type metadata accessor for URLResourceKey(0);
  swift_arrayDestroy();
  sub_1004A42C4();

  (*(v14 + 56))(v12, 0, 1, v13);
  (*(v14 + 32))(v17, v12, v13);
  v21 = sub_1004A41D4();
  if (v22)
  {
    (*(v14 + 8))(v17, v13);
    v23 = a1;
LABEL_5:
    v27 = v63;
    v28 = v64;
    v29 = v62;
    if (qword_1005D8740 != -1)
    {
      swift_once();
    }

    v30 = sub_1004A4A74();
    sub_1001C203C(v30, qword_1005D8A58);
    (*(v28 + 16))(v29, v23, v27);
    v31 = sub_1004A4A54();
    v32 = sub_1004A6014();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v65[0] = v34;
      *v33 = 136446210;
      v35 = sub_1004A4354();
      v61 = v23;
      v37 = v36;
      v38 = *(v28 + 8);
      v38(v29, v27);
      v39 = sub_10015BA6C(v35, v37, v65);

      *(v33 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v31, v32, "Unable to get resource values for volume '%{public}s'.", v33, 0xCu);
      sub_1000197E0(v34);

      v38(v61, v27);
    }

    else
    {

      v40 = *(v28 + 8);
      v40(v23, v27);
      v40(v29, v27);
    }

    return 0;
  }

  v24 = v21;
  v25 = sub_1004A41E4();
  v23 = a1;
  if (v26)
  {
    (*(v14 + 8))(v17, v13);
    goto LABEL_5;
  }

  v42 = v25;
  v43 = v63;
  if (v24 < 0 || v25 < 0)
  {
    v60 = v14;
    v62 = v13;
    if (qword_1005D8740 != -1)
    {
      swift_once();
    }

    v44 = sub_1004A4A74();
    sub_1001C203C(v44, qword_1005D8A58);
    v45 = v64;
    v46 = v8;
    (*(v64 + 16))(v8, v23, v43);
    v47 = sub_1004A4A54();
    v48 = sub_1004A6014();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v59 = v17;
      v61 = v23;
      v50 = v49;
      v51 = swift_slowAlloc();
      v65[0] = v51;
      *v50 = 136446722;
      v58 = v48;
      v57 = sub_1004A4354();
      v53 = v52;
      v54 = *(v45 + 8);
      v54(v46, v43);
      v55 = sub_10015BA6C(v57, v53, v65);

      *(v50 + 4) = v55;
      *(v50 + 12) = 2048;
      *(v50 + 14) = v24;
      *(v50 + 22) = 2048;
      *(v50 + 24) = v42;
      _os_log_impl(&_mh_execute_header, v47, v58, "Resource values for volume '%{public}s'. are out of bounds: %ld %lld.", v50, 0x20u);
      sub_1000197E0(v51);

      v54(v61, v43);
      (*(v60 + 8))(v59, v62);
    }

    else
    {

      v56 = *(v45 + 8);
      v56(v23, v43);
      v56(v46, v43);
      (*(v60 + 8))(v17, v62);
    }

    return 0;
  }

  (*(v64 + 8))(a1, v63);
  (*(v14 + 8))(v17, v13);
  return v24;
}

uint64_t sub_10030E0B0(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005D8B70, &unk_1004F5D90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10030E12C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  if (*(a5 + 16))
  {
    v10 = *(a5 + 40);
    sub_1004A6E94();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v11 = a4 | (a4 << 32);
    sub_1004A6EB4(v11);
    v12 = sub_1004A6F14();
    v13 = a5 + 56;
    v14 = -1 << *(a5 + 32);
    v15 = v12 & ~v14;
    if ((*(a5 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
    {
      v16 = ~v14;
      v17 = *(a5 + 48);
      do
      {
        v18 = v17 + 32 * v15;
        v19 = *(v18 + 16);
        v20 = *(v18 + 24);
        v21 = *v18 == a1 && *(v18 + 8) == a2;
        if (v21 || (sub_1004A6D34()) && (v20 | (v20 << 32)) == v11)
        {
          v22 = *(v19 + 16);
          if (v22 == *(a3 + 16))
          {
            if (!v22 || v19 == a3)
            {
              return 1;
            }

            v23 = (v19 + 32);
            for (i = (a3 + 32); *v23 == *i; ++i)
            {
              ++v23;
              if (!--v22)
              {
                return 1;
              }
            }
          }
        }

        v15 = (v15 + 1) & v16;
      }

      while (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0);
    }
  }

  return 0;
}

uint64_t sub_10030E2B0()
{
  v0 = sub_1004A4A74();
  sub_1001C2074(v0, qword_1005D8B78);
  sub_1001C203C(v0, qword_1005D8B78);
  return sub_1004A4A64();
}

double sub_10030E32C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100350C90(&_swiftEmptyArrayStorage);
  *&v8 = a1;
  *(&v8 + 1) = 0xDA3E39CB94B95BDBLL;
  v5 = sub_100039EE0(0x20000000000001uLL);
  v6 = vcvtd_n_f64_u64(v5, 0x35uLL) * 500.0 + 800.0;
  if (v5 == 0x20000000000000)
  {
    v6 = 1300.0;
  }

  *a2 = v8;
  *(a2 + 16) = v6;
  *(a2 + 24) = &_swiftEmptyArrayStorage;
  *(a2 + 32) = &_swiftEmptyArrayStorage;
  *(a2 + 40) = v4;
  result = 0.0;
  *(a2 + 48) = xmmword_1004F5DA0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 64) = 0;
  *(a2 + 88) = 1;
  return result;
}

uint64_t sub_10030E408(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[1];

  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *a1 = sub_10031C104;
  a1[1] = v7;
}

uint64_t sub_10030E47C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10030E4F0(a1, a2);
  }

  return result;
}

void sub_10030E4F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1004A53F4();
  v7 = *(v6 - 8);
  v8 = v7[8];
  __chkstk_darwin(v6);
  v10 = (&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = v2[2];
  *v10 = v11;
  v12 = enum case for DispatchPredicate.onQueue(_:);
  v13 = v7[13];
  v13(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v28 = v11;
  LOBYTE(v11) = sub_1004A5404();
  v29 = v7[1];
  v29(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_17:
    swift_once();
    goto LABEL_5;
  }

  v14 = v3[19];
  v3[19] = a1;
  v3[20] = a2;
  swift_beginAccess();
  if ((v3[13] & 0x8000000000000000) != 0 && v14)
  {
    return;
  }

  v27 = v13;
  if (qword_1005D8758 != -1)
  {
    goto LABEL_17;
  }

LABEL_5:
  v26 = sub_1004A4A74();
  sub_1001C203C(v26, qword_1005D8B78);
  v15 = sub_1004A4A54();
  v16 = sub_1004A6034();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    HIDWORD(v25) = v12;
    *v17 = 134218240;
    *(v17 + 4) = a1;
    *(v17 + 12) = 2048;
    *(v17 + 14) = a2;
    _os_log_impl(&_mh_execute_header, v15, v16, "Available disk space changed. Free space: %{iec-bytes}ld, for opportunistic use: %{iec-bytes}ld", v17, 0x16u);
    v12 = HIDWORD(v25);
  }

  v18 = v27;
  if ((v3[13] & 0x8000000000000000) == 0)
  {
    v19 = v3[12];
    v20 = v28;
    *v10 = v28;
    v18(v10, v12, v6);
    v21 = v20;
    LOBYTE(v20) = sub_1004A5404();
    v29(v10, v6);
    if (v20)
    {
      if (v3[19] > 0x2540BE3FFLL || v3[20] > 0x9502F8FFFLL)
      {
        return;
      }

      if (qword_1005D8758 == -1)
      {
        goto LABEL_12;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
LABEL_12:
    sub_1001C203C(v26, qword_1005D8B78);
    v22 = sub_1004A4A54();
    v23 = sub_1004A6014();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Stopping download & index due to low disk space.", v24, 2u);
    }

    sub_100310548(v19);
  }
}

uint64_t sub_10030E874()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10030E8CC();
  }

  return result;
}

void sub_10030E8CC()
{
  v1 = v0;
  v2 = sub_1004A53F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = v1[2];
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = sub_1004A5404();
  v9 = (*(v3 + 8))(v6, v2);
  if (v7)
  {
    __chkstk_darwin(v9);
    v6 = &v17 - 4;
    *(&v17 - 2) = sub_10031C074;
    *(&v17 - 1) = v1;
    v10 = qword_1005D8758;
    swift_retain_n();
    if (v10 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v11 = sub_1004A4A74();
  v12 = sub_1001C203C(v11, qword_1005D8B78);
  swift_beginAccess();
  v13 = static MonotonicTime.now()();
  sub_1003107C4(v13, sub_10031C0F8, v6, sub_10031C090, v1, v12);
  swift_endAccess();
  v14 = v1[22];
  if ((v1[13] & 0x8000000000000000) != 0)
  {
    if (v14)
    {
      v16 = v1[22];

      RestartableTimer.stop()();
      goto LABEL_8;
    }
  }

  else if (v14)
  {
    v15 = v1[22];

    RestartableTimer.start()();
LABEL_8:
  }

  sub_10030F3D0();
  sub_10030FFC0();
}

double sub_10030EB24@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1004A53F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *(Strong + 16);
    *v6 = v9;
    (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
    v10 = v9;
    LOBYTE(v9) = sub_1004A5404();
    (*(v3 + 8))(v6, v2);
    if (v9)
    {
      swift_beginAccess();
      v11 = v8[6];
      v16[2] = v8[5];
      v16[3] = v11;
      v17[0] = v8[7];
      *(v17 + 12) = *(v8 + 124);
      v12 = v8[4];
      v16[0] = v8[3];
      v16[1] = v12;
      sub_10000E268(v16, v15, qword_1005D8CD0, &qword_1004F5F58);
      if (qword_1005D8758 == -1)
      {
LABEL_4:
        v13 = sub_1004A4A74();
        sub_1001C203C(v13, qword_1005D8B78);
        sub_100314738();
        sub_100025F40(v16, qword_1005D8CD0, &qword_1004F5F58);
        sub_10030F3D0();

        goto LABEL_5;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_4;
  }

LABEL_5:
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_10030ED34()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v6 = *(v0 + 96);
  v7 = *(v0 + 104);
  v8 = *(v0 + 112);
  v9 = *(v0 + 120);
  v10 = *(v0 + 128);

  sub_10031B5C0(v6, v7);
  v11 = *(v0 + 144);

  v12 = *(v0 + 168);

  v13 = *(v0 + 176);

  v14 = *(v0 + 200);

  return v0;
}

uint64_t sub_10030EDE8()
{
  sub_10030ED34();

  return swift_deallocClassInstance();
}

uint64_t sub_10030EE40(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10030EE58(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10030EEB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

__n128 sub_10030EF14(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10030EF28(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 37))
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

uint64_t sub_10030EF70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 37) = 1;
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

    *(result + 37) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10030EFC8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v6 = v4;
  v11 = sub_1004A53F4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = (&v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = v6[2];
  *v16 = v17;
  (*(v12 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v11, v14);
  v18 = v17;
  LOBYTE(v17) = sub_1004A5404();
  (*(v12 + 8))(v16, v11);
  if ((v17 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    swift_once();
LABEL_4:
    v19 = sub_1004A4A74();
    v20 = sub_1001C203C(v19, qword_1005D8B78);

    v21 = sub_1004A4A54();
    v22 = sub_1004A6034();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 134218240;
      *(v23 + 4) = a1;
      *(v23 + 12) = 2048;
      *(v23 + 14) = v5;

      _os_log_impl(&_mh_execute_header, v21, v22, "Start B {%ld} for %ld account(s)", v23, 0x16u);
    }

    else
    {
    }

    __chkstk_darwin(v24);
    swift_beginAccess();
    swift_retain_n();
    v29 = static MonotonicTime.now()();
    sub_10030F5CC(v29, a1, a2, sub_10031B284, &v33 - 4, sub_10031C0FC, v6, v20, a3, a4);
    swift_endAccess();
    v30 = v6[22];
    if ((v6[13] & 0x8000000000000000) != 0)
    {
      if (v30)
      {
        v32 = v6[22];

        RestartableTimer.stop()();
        goto LABEL_17;
      }
    }

    else if (v30)
    {
      v31 = v6[22];

      RestartableTimer.start()();
LABEL_17:
    }

    sub_10030F3D0();
    sub_10030FFC0();
    return;
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    if (qword_1005D8758 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_20;
  }

  if (qword_1005D8758 != -1)
  {
    swift_once();
  }

  v25 = sub_1004A4A74();
  sub_1001C203C(v25, qword_1005D8B78);
  v26 = sub_1004A4A54();
  v27 = sub_1004A6034();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 134217984;
    *(v28 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v26, v27, "{%ld} No account are currently available.", v28, 0xCu);
  }

  sub_10030F3D0();
  a3(1);
}

void sub_10030F3D0()
{
  v1 = sub_1004A53F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = v0[2];
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = sub_1004A5404();
  (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v8 = static MonotonicTime.now()();
  v9 = v0[23];
  v10 = __OFSUB__(v8, v9);
  v11 = v8 - v9;
  if (v8 >= v9)
  {
    goto LABEL_7;
  }

  if (__OFSUB__(v9, v8))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = __OFSUB__(0, v9 - v8);
  v11 = v8 - v9;
  if (v10)
  {
    __break(1u);
LABEL_7:
    if (!v10)
    {
      goto LABEL_8;
    }

LABEL_13:
    __break(1u);
    return;
  }

LABEL_8:
  if (v11 / 1000000000.0 > 60.0)
  {
    v0[23] = v8;
    v12 = v0[3];
    aBlock[4] = sub_10031B350;
    aBlock[5] = v0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10019C778;
    aBlock[3] = &unk_1005B3718;
    v13 = _Block_copy(aBlock);

    [v12 performBlock:v13];
    _Block_release(v13);
  }
}

void sub_10030F5CC(NSObject *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void (*a6)(void *), uint64_t a7, void *a8, void (*a9)(void), uint64_t a10)
{
  v126 = a1;
  v127 = a6;
  v121 = a4;
  v122 = a5;
  v123 = a3;
  v14 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v110 - v16;
  v18 = *(v10 + 48);
  v124 = a2;
  if (v18 >= a2)
  {
    v33 = sub_1004A4A54();
    v34 = sub_1004A6034();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 134218240;
      *(v35 + 4) = v18;
      *(v35 + 12) = 2048;
      *(v35 + 14) = v124;
      _os_log_impl(&_mh_execute_header, v33, v34, "Current ID {%ld} or higher than new {%ld}: Ignoring request to start download. Requesting deferral.", v35, 0x16u);
    }

    a9(0);
    return;
  }

  v114 = v10 + 48;
  v125 = a8;
  v19 = *(v10 + 88);
  v119 = v19;
  v120 = a7;
  if (v19 + 1 > 1)
  {
    v20 = v19 + 1;
  }

  else
  {
    v20 = 1;
  }

  *(v10 + 88) = v20;
  v128 = v10;
  v21 = *(v10 + 24);
  v22 = v21[2];
  v23 = _swiftEmptyArrayStorage;
  v116 = a9;
  v117 = a10;
  v118 = _swiftEmptyArrayStorage;
  v115 = v17;
  if (v22)
  {
    *&v139[0] = _swiftEmptyArrayStorage;
    sub_10034F590(0, v22, 0);
    v24 = 0;
    v23 = *&v139[0];
    v25 = v21 + 5;
    v129 = v21;
    while (v24 < v21[2])
    {
      v26 = v22;
      v28 = *(v25 - 1);
      v27 = *v25;
      v29 = HIBYTE(*v25) & 0xF;
      if ((*v25 & 0x2000000000000000) == 0)
      {
        v29 = v28 & 0xFFFFFFFFFFFFLL;
      }

      if (!v29)
      {
        goto LABEL_58;
      }

      *&v139[0] = v23;
      v31 = v23[2];
      v30 = v23[3];

      if (v31 >= v30 >> 1)
      {
        sub_10034F590((v30 > 1), v31 + 1, 1);
        v23 = *&v139[0];
      }

      ++v24;
      v23[2] = v31 + 1;
      v32 = &v23[2 * v31];
      v32[4] = v28;
      v32[5] = v27;
      v25 += 8;
      v22 = v26;
      v21 = v129;
      if (v26 == v24)
      {
        v17 = v115;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

LABEL_18:

  v36 = sub_1004A4A54();
  v37 = sub_1004A6034();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v129 = swift_slowAlloc();
    *&v139[0] = v129;
    *v38 = 67109634;
    *(v38 + 4) = v119;
    *(v38 + 8) = 2048;
    *(v38 + 10) = v23[2];

    *(v38 + 18) = 2082;
    v39 = v23[2];
    if (v39)
    {
      v111 = v37;
      v112 = v38;
      v113 = v36;
      *&v134 = _swiftEmptyArrayStorage;
      sub_10034F5D0(0, v39, 0);
      v40 = v134;
      v110[1] = v23;
      v41 = v23 + 5;
      do
      {
        v42 = v40;
        v43 = *(v41 - 1);
        if ((*v41 & 0x2000000000000000) == 0)
        {
          v44 = *(v41 - 1);
        }

        v45 = *v41;

        sub_1004A5954();
        v40 = v42;
        v46 = sub_1004A5AB4();
        v48 = v47;
        v50 = v49;
        v52 = v51;

        *&v134 = v40;
        v54 = v40[2];
        v53 = v40[3];
        if (v54 >= v53 >> 1)
        {
          sub_10034F5D0((v53 > 1), v54 + 1, 1);
          v40 = v134;
        }

        v40[2] = v54 + 1;
        v55 = &v40[4 * v54];
        v55[4] = v46;
        v55[5] = v48;
        v55[6] = v50;
        v55[7] = v52;
        v41 += 2;
        --v39;
      }

      while (v39);

      v17 = v115;
      v38 = v112;
      v36 = v113;
      LOBYTE(v37) = v111;
    }

    else
    {

      v40 = _swiftEmptyArrayStorage;
    }

    *&v134 = v40;
    sub_10000C9C0(&unk_1005DA980, &unk_1004F5F00);
    sub_1000CBB00(&qword_1005D6C10, &unk_1005DA980, &unk_1004F5F00);
    sub_1002AACE0();
    v56 = sub_1004A5BC4();
    v58 = v57;

    v59 = sub_10015BA6C(v56, v58, v139);

    *(v38 + 20) = v59;
    _os_log_impl(&_mh_execute_header, v36, v37, "Starting new download with sync #%u for %ld account(s): %{public}s", v38, 0x1Cu);
    sub_1000197E0(v129);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v60 = v128;
  v61 = sub_1004A4A74();
  v62 = *(v61 - 8);
  (*(v62 + 16))(v17, v125, v61);
  (*(v62 + 56))(v17, 0, 1, v61);
  sub_10031C31C(v126, v127, v120, v17, v60);
  sub_100025F40(v17, &qword_1005D5968, &unk_1004E9180);
  v63 = v60[3];

  v64 = _swiftEmptyArrayStorage;
  v60[3] = _swiftEmptyArrayStorage;
  v65 = v60[7];
  if ((v65 & 0x8000000000000000) == 0)
  {
    v66 = v60[6];
    v67 = v60;
    v68 = v60[8];
    v69 = v67[9];
    v70 = v67[10];

    v71 = sub_1004A4A54();
    v72 = sub_1004A6034();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 67109120;
      *(v73 + 4) = v65;
      _os_log_impl(&_mh_execute_header, v71, v72, "Stop and clear everything: completing sync #%u for all accounts.", v73, 8u);
    }

    v74 = *(v128 + 48);
    v139[2] = *(v128 + 32);
    v139[3] = v74;
    v140[0] = *(v128 + 64);
    *(v140 + 12) = *(v128 + 76);
    v75 = *(v128 + 16);
    v139[0] = *v128;
    v139[1] = v75;
    v142 = *(v114 + 32);
    v76 = *(v114 + 16);
    v141[0] = *v114;
    v141[1] = v76;

    v77 = sub_100315B60();
    v69(v77);
    sub_10031B5C0(v66, v65);
    sub_10031B5C0(v66, v65);
    sub_100025F40(v141, &qword_1005D8C90, &qword_1004F5F10);
    v64 = _swiftEmptyArrayStorage;
  }

  v78 = v123;
  v79 = *(v123 + 16);
  if (v79)
  {
    v138 = _swiftEmptyArrayStorage;
    sub_10034F610(0, v79, 0);
    v64 = _swiftEmptyArrayStorage;
    v80 = v138;
    v81 = (v78 + 32);
    for (i = v79 - 1; ; --i)
    {
      v83 = v81[1];
      v134 = *v81;
      v135 = v83;
      v136 = v81[2];
      v137 = *(v81 + 6);
      sub_10031B228(&v134, &v130);
      v138 = v80;
      v85 = v80[2];
      v84 = v80[3];
      if (v85 >= v84 >> 1)
      {
        sub_10034F610((v84 > 1), v85 + 1, 1);
        v64 = _swiftEmptyArrayStorage;
        v80 = v138;
      }

      v131 = v135;
      v132 = v136;
      v133 = v137;
      v86 = v134;
      v130 = v134;
      v80[2] = v85 + 1;
      v87 = &v80[8 * v85];
      v88 = v132;
      v89 = v133;
      *(v87 + 3) = v131;
      *(v87 + 4) = v88;
      *(v87 + 2) = v86;
      v87[10] = v89;
      v87[11] = 0;
      if (!i)
      {
        break;
      }

      v81 = (v81 + 56);
    }
  }

  else
  {

    v80 = _swiftEmptyArrayStorage;
  }

  v90 = v128;
  *(v128 + 24) = v80;
  v91 = v80[2];
  if (v91)
  {
    *&v134 = _swiftEmptyArrayStorage;
    sub_10034F5F0(0, v91, 0);
    v92 = 0;
    v93 = v134;
    v94 = v80 + 5;
    v129 = v91;
    while (v92 < v80[2])
    {
      v95 = v80;
      v97 = *(v94 - 1);
      v96 = *v94;
      v98 = HIBYTE(*v94) & 0xF;
      if ((*v94 & 0x2000000000000000) == 0)
      {
        v98 = v97 & 0xFFFFFFFFFFFFLL;
      }

      if (!v98)
      {
        goto LABEL_60;
      }

      *&v134 = v93;
      v100 = v93[2];
      v99 = v93[3];
      v101 = v93;

      if (v100 >= v99 >> 1)
      {
        sub_10034F5F0((v99 > 1), v100 + 1, 1);
        v101 = v134;
      }

      v92 = (v92 + 1);
      v101[2] = v100 + 1;
      v102 = &v101[3 * v100];
      v102[4] = v97;
      v102[5] = v96;
      *(v102 + 48) = 0;
      v94 += 8;
      v93 = v101;
      v80 = v95;
      if (v129 == v92)
      {
        v118 = v101;
        v104 = v116;
        v103 = v117;
        v90 = v128;
        goto LABEL_54;
      }
    }

LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);

    __break(1u);
    return;
  }

  if (_swiftEmptyArrayStorage[2])
  {
    v104 = v116;
    v103 = v117;
LABEL_54:
    sub_10000C9C0(&qword_1005D8C88, &unk_1004F7770);
    v105 = sub_1004A6A74();
    v64 = v118;
  }

  else
  {
    v105 = _swiftEmptyDictionarySingleton;
    v104 = v116;
    v103 = v117;
  }

  *&v134 = v105;
  sub_10031B368(v64, 1, &v134);

  v106 = v134;
  v107 = v90[5];

  v90[5] = v106;
  v108 = static MonotonicTime.now()();
  v109 = v119;
  v90[6] = v124;
  v90[7] = v109;
  v90[8] = v108;
  v90[9] = v104;
  v90[10] = v103;

  sub_1003107C4(v126, v121, v122, v127, v120, v125);
}

void sub_10030FFC0()
{
  v1 = sub_1004A53F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = v0[2];
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = sub_1004A5404();
  (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v8 = static MonotonicTime.now()();
  v9 = v0[24];
  v10 = __OFSUB__(v8, v9);
  v11 = v8 - v9;
  if (v8 >= v9)
  {
    goto LABEL_7;
  }

  if (__OFSUB__(v9, v8))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = __OFSUB__(0, v9 - v8);
  v11 = v8 - v9;
  if (v10)
  {
    __break(1u);
LABEL_7:
    if (!v10)
    {
      goto LABEL_8;
    }

LABEL_13:
    __break(1u);
    return;
  }

LABEL_8:
  if (v11 / 1000000000.0 > 60.0)
  {
    v0[24] = v8;
    v12 = v0[3];
    aBlock[4] = sub_10031B2D0;
    aBlock[5] = v0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10019C778;
    aBlock[3] = &unk_1005B36A0;
    v13 = _Block_copy(aBlock);

    [v12 performBlock:v13];
    _Block_release(v13);
  }
}

uint64_t sub_1003101BC(uint64_t a1)
{
  v3 = sub_1004A5244();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1004A5274();
  v8 = *(v16 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v16);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *(v1 + 16);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v1;
  aBlock[4] = sub_10031C020;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019C778;
  aBlock[3] = &unk_1005B38D0;
  v13 = _Block_copy(aBlock);

  sub_1004A5254();
  v17 = _swiftEmptyArrayStorage;
  sub_10022AAC8();
  sub_10000C9C0(&unk_1005D91A0, &unk_1004DDA60);
  sub_1000CBB00(&qword_1005D4F60, &unk_1005D91A0, &unk_1004DDA60);
  sub_1004A6544();
  sub_1004A6084();
  _Block_release(v13);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v16);
}

uint64_t sub_100310448(uint64_t a1)
{
  if (qword_1005D8758 != -1)
  {
    swift_once();
  }

  v2 = sub_1004A4A74();
  sub_1001C203C(v2, qword_1005D8B78);
  v3 = sub_1004A4A54();
  v4 = sub_1004A6034();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v3, v4, "Stop {%ld}", v5, 0xCu);
  }

  return sub_100310548(a1);
}

uint64_t sub_100310548(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1004A53F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = v2[2];
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = sub_1004A5404();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    v11 = qword_1005D8758;

    if (v11 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v12 = sub_1004A4A74();
  v13 = sub_1001C203C(v12, qword_1005D8B78);
  swift_beginAccess();
  v14 = static MonotonicTime.now()();
  v15 = v2[12];
  if (v15 <= a1)
  {
    sub_10031D29C(v14, a1, v13, (v2 + 6));
  }

  else
  {

    v16 = sub_1004A4A54();
    v17 = sub_1004A6034();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134218240;
      *(v18 + 4) = v15;
      *(v18 + 12) = 2048;
      *(v18 + 14) = a1;
      _os_log_impl(&_mh_execute_header, v16, v17, "Current ID {%ld} higher than {%ld}: Ignoring request to stop download.", v18, 0x16u);
    }
  }

  result = swift_endAccess();
  v20 = v2[22];
  if ((v2[13] & 0x8000000000000000) != 0)
  {
    if (!v20)
    {
      return result;
    }

    v22 = v2[22];

    RestartableTimer.stop()();
  }

  else
  {
    if (!v20)
    {
      return result;
    }

    v21 = v2[22];

    RestartableTimer.start()();
  }
}

void sub_1003107C4(NSObject *a1, void *a2, void *a3, void (*a4)(void *), uint64_t a5, void *a6)
{
  v7 = v6;
  v14 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v53 - v16;
  v65 = a1;
  v63 = a4;
  sub_100314D40(a1, a4, a5, a6);
  v18 = *(v7 + 48);
  v19 = *(v7 + 56);
  if (v19 < 0)
  {
    v65 = sub_1004A4A54();
    v27 = sub_1004A6004();
    if (os_log_type_enabled(v65, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v65, v27, "Checking current batch: not currently running request.", v28, 2u);
    }

    v29 = v65;
  }

  else
  {
    v62 = a5;
    v56 = a2;
    v57 = a3;
    v20 = *(v7 + 64);
    v54 = v7 + 48;
    v55 = (v7 + 64);
    v22 = *(v7 + 72);
    v21 = *(v7 + 80);
    v73 = v18;
    v74 = v19;
    v75 = v20;
    v76 = v22;
    v77 = v21;
    sub_10031B5D0(v18, v19);
    sub_10031B5D0(v18, v19);
    v64 = a6;
    v23 = sub_1004A4A54();
    v24 = sub_1004A6004();
    v25 = os_log_type_enabled(v23, v24);
    v59 = v21;
    v60 = v22;
    v58 = v20;
    if (v25)
    {
      v26 = swift_slowAlloc();
      *v26 = 134218240;
      *(v26 + 4) = v18;
      *(v26 + 12) = 1024;
      *(v26 + 14) = v19;
      sub_10031B5C0(v18, v19);
      _os_log_impl(&_mh_execute_header, v23, v24, "{%ld} Checking current batch: request #%u.", v26, 0x12u);
    }

    else
    {
      sub_10031B5C0(v18, v19);
    }

    v61 = v18;

    v30 = v65;
    v31 = sub_100315324(v65);
    v33 = v32;
    v34 = sub_1004A4A74();
    v35 = *(v34 - 8);
    (*(v35 + 16))(v17, v64, v34);
    (*(v35 + 56))(v17, 0, 1, v34);

    sub_10031D53C(v30, v63, v62, v17, v7, v31);

    sub_100025F40(v17, &qword_1005D5968, &unk_1004E9180);
    v36 = *(v33 + 16);
    v37 = &_swiftEmptyArrayStorage;
    if (v36)
    {
      v53 = v31;
      v62 = v19;
      v37 = sub_10035E0A8(v36, 0);
      v63 = sub_100139548(v71, v37 + 4, v36, v33);

      sub_100020D08();
      if (v63 != v36)
      {
        __break(1u);

        __break(1u);
        return;
      }

      v19 = v62;
    }

    *&v71[0] = v37;
    sub_100317204(v71);
    v38 = v60;

    v40 = *&v71[0];
    __chkstk_darwin(v39);
    v41 = v64;
    *(&v53 - 6) = v7;
    *(&v53 - 5) = v41;
    *(&v53 - 4) = &v73;
    v42 = v57;
    *(&v53 - 3) = v56;
    *(&v53 - 2) = v42;
    *(&v53 - 1) = &v65->isa;
    v43 = sub_100315840(sub_10031B5E0, (&v53 - 8), v40);

    sub_1003326A4(v43);
    v44 = *(v7 + 24);
    if (!*(*(v7 + 32) + 16))
    {

      v44 = &_swiftEmptyArrayStorage;
      *(v7 + 24) = &_swiftEmptyArrayStorage;
    }

    v45 = v61;
    if (!v44[2])
    {
      v46 = *(v7 + 48);
      v71[2] = *(v7 + 32);
      v71[3] = v46;
      v72[0] = *(v7 + 64);
      *(v72 + 12) = *(v7 + 76);
      v47 = *(v7 + 16);
      v71[0] = *v7;
      v71[1] = v47;
      v48 = *(v54 + 16);
      v78[0] = *v54;
      v78[1] = v48;
      v79 = *(v54 + 32);
      sub_1003159B4(v19);
      sub_100025F40(v78, &qword_1005D8C90, &qword_1004F5F10);
      *(v7 + 48) = v45;
      *(v7 + 56) = 0x8000000000000000;
      v49 = v55;
      *v55 = 0;
      v49[1] = 0;
      v49[2] = 0;
      v50 = *(v7 + 16);
      v66 = *v7;
      v67 = v50;
      v51 = *(v7 + 48);
      v68 = *(v7 + 32);
      v69 = v51;
      v70[0] = *(v7 + 64);
      *(v70 + 12) = *(v7 + 76);

      v52 = sub_100315B60();
      v38(v52);
      sub_10031B5C0(v45, v19);
    }

    sub_10031B5C0(v45, v19);
  }
}

Swift::Int sub_100310D8C(Swift::Int *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2)
  {
    case 0:
      return !v3;
    case 1:
      return v3 == 1;
    case 2:
      return v3 == 2;
  }

  if (v3 < 3)
  {
    return 0;
  }

  return sub_100083308(v2, v3);
}

uint64_t sub_100310DE0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = sub_1004A5244();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1004A5274();
  v13 = *(v21 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v21);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *(v4 + 16);
  v17 = swift_allocObject();
  v17[2] = v4;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = a3;
  aBlock[4] = sub_10031BF2C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019C778;
  aBlock[3] = &unk_1005B3880;
  v18 = _Block_copy(aBlock);

  sub_1000CA1A0(a3);
  sub_1004A5254();
  v22 = _swiftEmptyArrayStorage;
  sub_10022AAC8();
  sub_10000C9C0(&unk_1005D91A0, &unk_1004DDA60);
  sub_1000CBB00(&qword_1005D4F60, &unk_1005D91A0, &unk_1004DDA60);
  sub_1004A6544();
  sub_1004A6084();
  _Block_release(v18);
  (*(v9 + 8))(v12, v8);
  (*(v13 + 8))(v16, v21);
}

uint64_t sub_10031108C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = a3;
  v49 = a1;
  v50 = a2;
  v4 = sub_1004A4A74();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s6LoggerVMa_1(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1004A53F4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = (&v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v3 + 16);
  *v17 = v18;
  (*(v14 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v13);
  v19 = v18;
  LOBYTE(v18) = sub_1004A5404();
  (*(v14 + 8))(v17, v13);
  if (v18)
  {
    v47 = v9;
    if (qword_1005D8758 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v20 = sub_1001C203C(v4, qword_1005D8B78);
  v21 = *(v5 + 16);
  v21(v8, v20, v4);
  v21(v12, v8, v4);

  v22 = sub_100236568(8);
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v29 = (*(v5 + 8))(v8, v4);
  v30 = &v12[*(v47 + 20)];
  *v30 = v22;
  v30[1] = v24;
  v30[2] = v26;
  v30[3] = v28;
  v31 = v48;
  if (v48)
  {
    v32 = v3;
    if (v48 == 1)
    {
      __chkstk_darwin(v29);
      v44 = sub_10031C100;
      v45 = v3;
      swift_beginAccess();
      swift_retain_n();
      v34 = static MonotonicTime.now()();
      sub_100312568(v34, v49, v50, sub_10031C0F8, &v46 - 4, sub_10031C0FC, v3, v12);
    }

    else if (v48 == 2)
    {
      __chkstk_darwin(v29);
      v44 = sub_10031C100;
      v45 = v3;
      swift_beginAccess();
      swift_retain_n();
      v33 = static MonotonicTime.now()();
      sub_100312CA8(v33, v49, v50, sub_10031C0F8, &v46 - 4, sub_10031C0FC, v3, v12);
    }

    else
    {
      __chkstk_darwin(v29);
      v45 = v3;
      swift_beginAccess();
      swift_retain_n();
      v38 = static MonotonicTime.now()();
      sub_100311B00(v38, v49, v50, v31, sub_10031C0F8, &v46 - 4, sub_10031C0FC, v3, v12);
    }

    swift_endAccess();
    v39 = *(v3 + 176);
    if ((*(v32 + 104) & 0x8000000000000000) != 0)
    {
      if (v39)
      {
        v41 = *(v32 + 176);

        RestartableTimer.stop()();
        goto LABEL_17;
      }
    }

    else if (v39)
    {
      v40 = *(v32 + 176);

      RestartableTimer.start()();
LABEL_17:
    }

    sub_10031BF58(v12, _s6LoggerVMa_1);
  }

  v35 = v3;
  swift_beginAccess();
  sub_100311638(v49, v50, v12);
  swift_endAccess();
  v36 = *(v3 + 176);
  if ((*(v35 + 104) & 0x8000000000000000) != 0)
  {
    if (v36)
    {
      v43 = *(v35 + 176);

      RestartableTimer.stop()();
      goto LABEL_21;
    }
  }

  else if (v36)
  {
    v37 = *(v35 + 176);

    RestartableTimer.start()();
LABEL_21:
  }

  return sub_10031BF58(v12, _s6LoggerVMa_1);
}

void sub_100311638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = _s6LoggerVMa_1(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v59 - v14;
  __chkstk_darwin(v13);
  v17 = &v59 - v16;
  v18 = *(v3 + 40);
  if (*(v18 + 16) && (v19 = sub_10035E1B0(a1, a2), (v20 & 1) != 0) && *(*(v18 + 56) + v19))
  {
    if (*(*(v18 + 56) + v19) == 1)
    {
      sub_10031BFB8(a3, v17, _s6LoggerVMa_1);
      v21 = sub_1004A4A54();
      v22 = sub_1004A6004();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v60 = v24;
        *v23 = 136446210;
        v25 = &v17[*(v8 + 20)];
        v26 = *v25;
        v27 = *(v25 + 1);
        v28 = *(v25 + 2);
        v29 = *(v25 + 3);
        v30 = sub_1004A5864();
        v32 = v31;
        sub_10031BF58(v17, _s6LoggerVMa_1);
        v33 = sub_10015BA6C(v30, v32, &v60);

        *(v23 + 4) = v33;
        v34 = "[%{public}s] Account did start sync but was already started.";
LABEL_14:
        _os_log_impl(&_mh_execute_header, v21, v22, v34, v23, 0xCu);
        sub_1000197E0(v24);

        return;
      }

      sub_10031BF58(v17, _s6LoggerVMa_1);
    }

    else
    {
      sub_10031BFB8(a3, v15, _s6LoggerVMa_1);
      v21 = sub_1004A4A54();
      v22 = sub_1004A6014();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v60 = v24;
        *v23 = 136446210;
        v50 = &v15[*(v8 + 20)];
        v51 = *v50;
        v52 = *(v50 + 1);
        v53 = *(v50 + 2);
        v54 = *(v50 + 3);
        v55 = sub_1004A5864();
        v57 = v56;
        sub_10031BF58(v15, _s6LoggerVMa_1);
        v58 = sub_10015BA6C(v55, v57, &v60);

        *(v23 + 4) = v58;
        v34 = "[%{public}s] Account did start sync, but was already completed.";
        goto LABEL_14;
      }

      sub_10031BF58(v15, _s6LoggerVMa_1);
    }
  }

  else
  {
    sub_10031BFB8(a3, v12, _s6LoggerVMa_1);
    v35 = sub_1004A4A54();
    v36 = sub_1004A6034();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v60 = v38;
      *v37 = 136446210;
      v39 = &v12[*(v8 + 20)];
      v40 = *v39;
      v41 = *(v39 + 1);
      v42 = *(v39 + 2);
      v43 = *(v39 + 3);
      v44 = sub_1004A5864();
      v46 = v45;
      sub_10031BF58(v12, _s6LoggerVMa_1);
      v47 = sub_10015BA6C(v44, v46, &v60);

      *(v37 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v35, v36, "[%{public}s] Account did start sync work.", v37, 0xCu);
      sub_1000197E0(v38);
    }

    else
    {

      sub_10031BF58(v12, _s6LoggerVMa_1);
    }

    v48 = *(v4 + 40);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = *(v4 + 40);
    sub_1003591C8(1, a1, a2, isUniquelyReferenced_nonNull_native);
    *(v4 + 40) = v60;
  }
}

void sub_100311B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void (*a7)(void *), uint64_t a8, void *a9)
{
  v10 = v9;
  v131 = a8;
  v130 = a7;
  v139 = a4;
  v136 = _s6LoggerVMa_1(0);
  v16 = *(*(v136 - 8) + 64);
  v17 = __chkstk_darwin(v136);
  v19 = &v122 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v122 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v122 - v24;
  __chkstk_darwin(v23);
  v140 = &v122 - v26;
  v27 = v9[3];
  v144 = v9[2];
  v145 = v27;
  *v146 = v9[4];
  *&v146[12] = *(v9 + 76);
  v28 = v9[1];
  v142 = *v9;
  v143 = v28;
  v29 = sub_100315BFC(a1);
  v30 = *(v29 + 16);
  v31 = 0.0;
  v133 = a3;
  v132 = a2;
  if (v30)
  {
    v32 = sub_10035E1B0(a2, a3);
    if (v33)
    {
      v31 = *(*(v29 + 56) + 8 * v32);
    }
  }

  if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_57;
  }

  if (v31 <= -9.22337204e18)
  {
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v31 >= 9.22337204e18)
  {
    goto LABEL_59;
  }

  v125 = v25;
  v124 = v22;
  v123 = v19;
  v126 = a1;
  v127 = a5;
  v128 = a6;
  v129 = v10;
  v38 = a9;
  v135 = v31;
  v39 = v139;
  v40 = v139 + 56;
  v41 = 1 << *(v139 + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v43 = v42 & *(v139 + 56);
  v44 = (v41 + 63) >> 6;

  v45 = 0;
  *&v46 = 136446722;
  v134 = v46;
  v137 = a9;
  v19 = v140;
  if (v43)
  {
    goto LABEL_12;
  }

  while (1)
  {
LABEL_13:
    v25 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    if (v25 >= v44)
    {
      break;
    }

    v43 = *(v40 + 8 * v25);
    ++v45;
    if (v43)
    {
      while (1)
      {
        v47 = __clz(__rbit64(v43));
        v43 &= v43 - 1;
        v22 = *(*(v39 + 48) + ((v25 << 8) | (4 * v47)));
        sub_10031BFB8(v38, v19, _s6LoggerVMa_1);
        v29 = sub_1004A4A54();
        a3 = sub_1004A6034();
        if (os_log_type_enabled(v29, a3))
        {
          v48 = swift_slowAlloc();
          v138 = v22;
          v22 = v48;
          v49 = swift_slowAlloc();
          v141 = v49;
          *v22 = v134;
          v50 = (v19 + *(v136 + 20));
          v51 = *v50;
          v52 = v50[1];
          v53 = v50[2];
          v54 = v50[3];
          v55 = sub_1004A5864();
          v57 = v56;
          sub_10031BF58(v140, _s6LoggerVMa_1);
          v58 = sub_10015BA6C(v55, v57, &v141);
          v19 = v140;

          *(v22 + 4) = v58;
          v39 = v139;
          *(v22 + 12) = 1024;
          *(v22 + 14) = v138;
          *(v22 + 18) = 2048;
          *(v22 + 20) = v135;
          _os_log_impl(&_mh_execute_header, v29, a3, "[%{public}s] Account did complete sync #%u (run time: %ld).", v22, 0x1Cu);
          sub_1000197E0(v49);
          v38 = v137;

          v45 = v25;
          if (!v43)
          {
            goto LABEL_13;
          }
        }

        else
        {

          sub_10031BF58(v19, _s6LoggerVMa_1);
          v45 = v25;
          if (!v43)
          {
            goto LABEL_13;
          }
        }

LABEL_12:
        v25 = v45;
      }
    }
  }

  v25 = v144;
  v59 = *(v144 + 16);
  a3 = v133;
  v60 = v132;
  if (!v59)
  {
LABEL_27:
    v62 = v125;
    sub_10031BFB8(v38, v125, _s6LoggerVMa_1);
    v63 = sub_1004A4A54();
    v64 = sub_1004A6014();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v141 = v66;
      *v65 = 136446210;
      v67 = (v62 + *(v136 + 20));
      v68 = *v67;
      v69 = v67[1];
      v70 = v67[2];
      v71 = v67[3];
      v72 = sub_1004A5864();
      v74 = v73;
      sub_10031BF58(v62, _s6LoggerVMa_1);
      v75 = sub_10015BA6C(v72, v74, &v141);

      *(v65 + 4) = v75;
      v76 = "[%{public}s] Unknown account did complete sync.";
LABEL_44:
      _os_log_impl(&_mh_execute_header, v63, v64, v76, v65, 0xCu);
      sub_1000197E0(v66);

LABEL_46:
      v37 = v131;
      v36 = v130;
      v35 = v128;
      v34 = v127;
      v82 = v126;
      v38 = v137;
      goto LABEL_47;
    }

LABEL_45:

    sub_10031BF58(v62, _s6LoggerVMa_1);
    goto LABEL_46;
  }

  v22 = 0;
  v19 = 40;
  while (1)
  {
    v29 = v25 + v19;
    v34 = *(v25 + v19 + 16);
    v61 = *(v25 + v19 + 8) == v60 && v34 == a3;
    if (v61 || (sub_1004A6D34() & 1) != 0)
    {
      break;
    }

    ++v22;
    v19 += 48;
    if (v59 == v22)
    {
      goto LABEL_27;
    }
  }

  if (*(v29 + 28) == 1)
  {
    v77 = *(v25 + 16);
    goto LABEL_38;
  }

  v78 = sub_10001296C(*(v29 + 24), v139);
  v77 = *(v25 + 16);
  if (!v78)
  {
LABEL_38:
    if (v22 >= v77)
    {
      goto LABEL_60;
    }

    if ((*(v29 + 28) & 1) == 0 && ((*(&v145 + 1) & 0x8000000000000000) != 0 || *(v29 + 24) != DWORD2(v145)))
    {
      v99 = v123;
      sub_10031BFB8(v38, v123, _s6LoggerVMa_1);
      v100 = sub_1004A4A54();
      v101 = sub_1004A6014();
      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v141 = v103;
        *v102 = 136446210;
        v104 = (v99 + *(v136 + 20));
        v105 = *v104;
        v106 = v104[1];
        v107 = v104[2];
        v108 = v104[3];
        v109 = sub_1004A5864();
        v111 = v110;
        sub_10031BF58(v99, _s6LoggerVMa_1);
        v112 = sub_10015BA6C(v109, v111, &v141);

        *(v102 + 4) = v112;
        _os_log_impl(&_mh_execute_header, v100, v101, "[%{public}s] Account is running request that is not the current sync.", v102, 0xCu);
        sub_1000197E0(v103);
      }

      else
      {

        sub_10031BF58(v99, _s6LoggerVMa_1);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = v137;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_52;
    }

    v62 = v124;
    sub_10031BFB8(v38, v124, _s6LoggerVMa_1);
    v63 = sub_1004A4A54();
    v64 = sub_1004A6014();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v141 = v66;
      *v65 = 136446210;
      v90 = (v62 + *(v136 + 20));
      v91 = *v90;
      v92 = v90[1];
      v93 = v90[2];
      v94 = v90[3];
      v95 = sub_1004A5864();
      v97 = v96;
      sub_10031BF58(v62, _s6LoggerVMa_1);
      v98 = sub_10015BA6C(v95, v97, &v141);

      *(v65 + 4) = v98;
      v76 = "[%{public}s] Account did complete sync that is not the current sync.";
      goto LABEL_44;
    }

    goto LABEL_45;
  }

  if (v22 >= v77)
  {
    goto LABEL_61;
  }

  v79 = *(v29 + 8);
  v80 = *(v29 + 16);

  v29 = v129;
  sub_100316060(v79, v80, v38);

  a3 = *(v29 + 32);
  v81 = swift_isUniquelyReferenced_nonNull_native();
  v37 = v131;
  v36 = v130;
  v35 = v128;
  v34 = v127;
  v25 = v126;
  if ((v81 & 1) == 0)
  {
LABEL_62:
    v116 = a3;
    v117 = v37;
    v118 = v36;
    v119 = v35;
    v120 = v34;
    v121 = sub_1003364B8(v116);
    v34 = v120;
    v35 = v119;
    v38 = v137;
    v36 = v118;
    v37 = v117;
    a3 = v121;
  }

  if (v22 < *(a3 + 16))
  {
    v82 = v25;
    v83 = a3 + v19;
    if ((*(a3 + v19 + 28) & 1) == 0)
    {
      v84 = v29;
      v85 = *(a3 + v19);
      v86 = v37;
      v87 = v36;
      v88 = v35;
      v89 = v34;
      sub_10034A348(*(v83 + 24));
      v82 = v25;
      v34 = v89;
      v35 = v88;
      v36 = v87;
      v37 = v86;
      v29 = v84;
      v38 = v137;
    }

    *(v83 + 24) = 0;
    *(v83 + 28) = 1;
    *(v29 + 32) = a3;
LABEL_47:
    sub_1003107C4(v82, v34, v35, v36, v37, v38);
    return;
  }

  __break(1u);
LABEL_64:
  v25 = sub_1003364B8(v25);
LABEL_52:
  if (v22 < *(v25 + 16))
  {
    v114 = v25 + v19;
    if ((*(v25 + v19 + 28) & 1) == 0)
    {
      v115 = *(v25 + v19);
      sub_10034A348(*(v114 + 24));
    }

    *(v114 + 24) = 0;
    *(v114 + 28) = 1;
    *(v129 + 32) = v25;
    v37 = v131;
    v36 = v130;
    v35 = v128;
    v34 = v127;
    v82 = v126;
    goto LABEL_47;
  }

  __break(1u);
}