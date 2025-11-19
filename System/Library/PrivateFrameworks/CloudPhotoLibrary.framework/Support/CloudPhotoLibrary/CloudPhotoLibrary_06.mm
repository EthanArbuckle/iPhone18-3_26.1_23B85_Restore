uint64_t Goldilocks_ErrorInfo.DatabaseFailure.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
  {
    v6 = v0[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
    {
      if (Rpcproto_ErrorInfo.Client.Code.rawValue.getter(v0[4], *(v0 + 40)))
      {
        sub_1000BA0CC();
        result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
        if (v1)
        {
          return result;
        }

        if (!v0[6])
        {
          goto LABEL_15;
        }
      }

      else if (!v0[6])
      {
LABEL_15:
        v8 = v0 + *(type metadata accessor for Goldilocks_ErrorInfo.DatabaseFailure(0) + 32);
        return UnknownStorage.traverse<A>(visitor:)();
      }

      v9 = *(v0 + 56);
      sub_1000BA078();
      result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
      if (v1)
      {
        return result;
      }

      goto LABEL_15;
    }
  }

  return result;
}

uint64_t sub_1001062A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010C868(&qword_1002C3DF0, type metadata accessor for Goldilocks_ErrorInfo.DatabaseFailure);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100106344()
{
  sub_10010C868(&qword_1002C2DF0, type metadata accessor for Goldilocks_ErrorInfo.DatabaseFailure);

  return Message.debugDescription.getter();
}

uint64_t sub_1001063B0()
{
  sub_10010C868(&qword_1002C2DF0, type metadata accessor for Goldilocks_ErrorInfo.DatabaseFailure);

  return Message.hash(into:)();
}

void sub_100106430()
{
  v0._countAndFlagsBits = 0x45746C757365522ELL;
  v0._object = 0xEC000000726F7272;
  String.append(_:)(v0);
  static Goldilocks_ErrorInfo.ResultError.protoMessageName = 0xD000000000000014;
  *algn_1002D3378 = 0x8000000100203350;
}

uint64_t *Goldilocks_ErrorInfo.ResultError.protoMessageName.unsafeMutableAddressor()
{
  if (qword_1002C07F8 != -1)
  {
    swift_once();
  }

  return &static Goldilocks_ErrorInfo.ResultError.protoMessageName;
}

uint64_t sub_10010651C()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static Goldilocks_ErrorInfo.ResultError._protobuf_nameMap);
  sub_1000BA040(v0, static Goldilocks_ErrorInfo.ResultError._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_100246210;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "errorMessage";
  *(v5 + 8) = 12;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "resultErrorCode";
  *(v9 + 8) = 15;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "databaseFailure";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "errorDomain";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "errorCode";
  *(v15 + 1) = 9;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "databaseFailures";
  *(v17 + 1) = 16;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "localizedErrorDescription";
  *(v19 + 1) = 25;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "learnMoreLink";
  *(v21 + 1) = 13;
  v21[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t Goldilocks_ErrorInfo.ResultError.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 4)
      {
        if (result > 6)
        {
          if (result == 7 || result == 8)
          {
LABEL_4:
            dispatch thunk of Decoder.decodeSingularStringField(value:)();
          }
        }

        else if (result == 5)
        {
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        }

        else
        {
          type metadata accessor for Goldilocks_ErrorInfo.DatabaseFailure(0);
          sub_10010C868(&qword_1002C2DF0, type metadata accessor for Goldilocks_ErrorInfo.DatabaseFailure);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }
      }

      else if (result > 2)
      {
        if (result != 3)
        {
          goto LABEL_4;
        }

        v3 = *(type metadata accessor for Goldilocks_ErrorInfo.ResultError(0) + 48);
        type metadata accessor for Goldilocks_ErrorInfo.DatabaseFailure(0);
        sub_10010C868(&qword_1002C2DF0, type metadata accessor for Goldilocks_ErrorInfo.DatabaseFailure);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else
      {
        if (result == 1)
        {
          goto LABEL_4;
        }

        if (result == 2)
        {
          sub_10010C924();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Goldilocks_ErrorInfo.ResultError.traverse<A>(visitor:)()
{
  v2 = v1;
  v3 = sub_1000BB130(&qword_1002C2D00, &qword_100248A18);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v25 - v5;
  v7 = type metadata accessor for Goldilocks_ErrorInfo.DatabaseFailure(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v0;
  v13 = v0[1];
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }

    v2 = 0;
  }

  if (v0[2])
  {
    v16 = *(v0 + 24);
    v25 = v0[2];
    v26 = v16;
    sub_10010C924();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v2)
    {
      return result;
    }

    v2 = 0;
  }

  v27 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  sub_1000CC794(v0 + *(v27 + 48), v6, &qword_1002C2D00, &qword_100248A18);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1000CCDBC(v6, &qword_1002C2D00, &qword_100248A18);
    v17 = v2;
  }

  else
  {
    sub_10010C450(v6, v11, type metadata accessor for Goldilocks_ErrorInfo.DatabaseFailure);
    sub_10010C868(&qword_1002C2DF0, type metadata accessor for Goldilocks_ErrorInfo.DatabaseFailure);
    v17 = v2;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = sub_10010C520(v11, type metadata accessor for Goldilocks_ErrorInfo.DatabaseFailure);
    if (v2)
    {
      return result;
    }
  }

  v18 = v0[5];
  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = v0[4] & 0xFFFFFFFFFFFFLL;
  }

  if (!v19 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v17))
  {
    if (!*(v0 + 12) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v17))
    {
      if (!*(v0[7] + 16) || (sub_10010C868(&qword_1002C2DF0, type metadata accessor for Goldilocks_ErrorInfo.DatabaseFailure), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v17))
      {
        v20 = v0[9];
        v21 = HIBYTE(v20) & 0xF;
        if ((v20 & 0x2000000000000000) == 0)
        {
          v21 = v0[8] & 0xFFFFFFFFFFFFLL;
        }

        if (!v21 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v17))
        {
          v22 = v0[11];
          v23 = HIBYTE(v22) & 0xF;
          if ((v22 & 0x2000000000000000) == 0)
          {
            v23 = v0[10] & 0xFFFFFFFFFFFFLL;
          }

          if (!v23 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v17))
          {
            v24 = v0 + *(v27 + 44);
            return UnknownStorage.traverse<A>(visitor:)();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100106F00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xE000000000000000;
  *(a2 + 48) = 0;
  *(a2 + 56) = &_swiftEmptyArrayStorage;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0xE000000000000000;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0xE000000000000000;
  v4 = a2 + *(a1 + 44);
  UnknownStorage.init()();
  v5 = *(a1 + 48);
  v6 = type metadata accessor for Goldilocks_ErrorInfo.DatabaseFailure(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_100107008(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010C868(&qword_1002C3DE8, type metadata accessor for Goldilocks_ErrorInfo.ResultError);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1001070A8()
{
  sub_10010C868(&qword_1002C4090, type metadata accessor for Goldilocks_ErrorInfo.ResultError);

  return Message.debugDescription.getter();
}

uint64_t sub_100107114()
{
  sub_10010C868(&qword_1002C4090, type metadata accessor for Goldilocks_ErrorInfo.ResultError);

  return Message.hash(into:)();
}

uint64_t sub_1001071B8()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static Goldilocks_ExitStatusFeedbackRequest._protobuf_nameMap);
  sub_1000BA040(v0, static Goldilocks_ExitStatusFeedbackRequest._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100245180;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "operationID";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "shareID";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "status";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10010745C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(void))
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v5 || (v9 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        a5();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        break;
      case 2:
        v10 = *(a4(0) + 28);
        type metadata accessor for Goldilocks_ZoneID(0);
        sub_10010C868(&qword_1002C2D28, type metadata accessor for Goldilocks_ZoneID);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        break;
      case 1:
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
        break;
    }
  }

  return result;
}

uint64_t sub_100107604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t), uint64_t a6)
{
  v30 = a5;
  v31 = a6;
  v34 = a4;
  v8 = v7;
  v10 = sub_1000BB130(&qword_1002C4050, &qword_1002483C0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v28 - v12;
  v14 = type metadata accessor for Goldilocks_ZoneID(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v6;
  v20 = v6[1];
  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = *v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v7)
    {
      return result;
    }

    v29 = a2;
    v8 = 0;
  }

  else
  {
    v29 = a2;
  }

  v23 = v34(0);
  sub_1000CC794(v6 + *(v23 + 28), v13, &qword_1002C4050, &qword_1002483C0);
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    v34 = v23;
    sub_10010C450(v13, v18, type metadata accessor for Goldilocks_ZoneID);
    sub_10010C868(&qword_1002C2D28, type metadata accessor for Goldilocks_ZoneID);
    v24 = v8;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = sub_10010C520(v18, type metadata accessor for Goldilocks_ZoneID);
    if (v8)
    {
      return result;
    }

    v23 = v34;
    v25 = v6[2];
    if (!v25)
    {
      goto LABEL_13;
    }

LABEL_12:
    v26 = *(v6 + 24);
    v32 = v25;
    v33 = v26;
    v30(result);
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v24)
    {
      return result;
    }

    goto LABEL_13;
  }

  result = sub_1000CCDBC(v13, &qword_1002C4050, &qword_1002483C0);
  v24 = v8;
  v25 = v6[2];
  if (v25)
  {
    goto LABEL_12;
  }

LABEL_13:
  v27 = v6 + *(v23 + 24);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100107934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  v4 = a2 + *(a1 + 24);
  UnknownStorage.init()();
  v5 = *(a1 + 28);
  v6 = type metadata accessor for Goldilocks_ZoneID(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_1001079F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010C868(&qword_1002C3DE0, type metadata accessor for Goldilocks_ExitStatusFeedbackRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100107A98()
{
  sub_10010C868(&qword_1002C2AD8, type metadata accessor for Goldilocks_ExitStatusFeedbackRequest);

  return Message.debugDescription.getter();
}

uint64_t sub_100107B04()
{
  sub_10010C868(&qword_1002C2AD8, type metadata accessor for Goldilocks_ExitStatusFeedbackRequest);

  return Message.hash(into:)();
}

uint64_t sub_100107B80()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static Goldilocks_ExitStatusFeedbackRequest.ClientStatus._protobuf_nameMap);
  sub_1000BA040(v0, static Goldilocks_ExitStatusFeedbackRequest.ClientStatus._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100245160;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PARTICIPANT_WAITING_FOR_EXIT_ZONE";
  *(v10 + 8) = 33;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "OWNER_WAITING_FOR_MOVEOUT_ELIGIBILITY";
  *(v12 + 1) = 37;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "WAITING_FOR_PARTICIPANT_EXIT_COMPLETION";
  *(v14 + 1) = 39;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 10;
  *v16 = "WAITING_FOR_DISCRETIONARY_WINDOW_MOVE_BATCH";
  *(v16 + 1) = 43;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 11;
  *v18 = "WAITING_FOR_DISCRETIONARY_WINDOW_MOVE_RECORDS";
  *(v18 + 1) = 45;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t _s22CloudKitImplementation20Goldilocks_ErrorInfoV2eeoiySbAC_ACtFZ_0()
{
  type metadata accessor for UnknownStorage();
  sub_10010C868(&qword_1002C0840, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

Swift::Int sub_100108000(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a1(0);
  sub_10010C868(a2, a3);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100108088(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010C868(&qword_1002C3DD8, type metadata accessor for Goldilocks_ExitStatusFeedbackResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100108128()
{
  sub_10010C868(&qword_1002C30B0, type metadata accessor for Goldilocks_ExitStatusFeedbackResponse);

  return Message.debugDescription.getter();
}

uint64_t sub_100108194()
{
  sub_10010C868(&qword_1002C30B0, type metadata accessor for Goldilocks_ExitStatusFeedbackResponse);

  return Message.hash(into:)();
}

uint64_t _s22CloudKitImplementation45Goldilocks_ExitMoveBatchErrorFeedbackResponseV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v24[0] = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BB130(&qword_1002C2900, &qword_1002483B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  v12 = sub_1000BB130(&qword_1002C2908, &qword_1002483B8);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = v24 - v15;
  v17 = *(type metadata accessor for Goldilocks_ExitMoveBatchErrorFeedbackResponse(0) + 20);
  v18 = *(v13 + 56);
  v24[1] = a1;
  sub_1000CC794(a1 + v17, v16, &qword_1002C2900, &qword_1002483B0);
  sub_1000CC794(a2 + v17, &v16[v18], &qword_1002C2900, &qword_1002483B0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1000CCDBC(v16, &qword_1002C2900, &qword_1002483B0);
LABEL_9:
      type metadata accessor for UnknownStorage();
      sub_10010C868(&qword_1002C0840, &type metadata accessor for UnknownStorage);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_1000CC794(v16, v11, &qword_1002C2900, &qword_1002483B0);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_10010C520(v11, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
LABEL_6:
    sub_1000CCDBC(v16, &qword_1002C2908, &qword_1002483B8);
    goto LABEL_7;
  }

  v21 = v24[0];
  sub_10010C450(&v16[v18], v24[0], type metadata accessor for Goldilocks_ErrorInfo.ResultError);
  v22 = _s22CloudKitImplementation20Goldilocks_ErrorInfoV06ResultE0V2eeoiySbAE_AEtFZ_0(v11, v21);
  sub_10010C520(v21, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
  sub_10010C520(v11, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
  sub_1000CCDBC(v16, &qword_1002C2900, &qword_1002483B0);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s22CloudKitImplementation44Goldilocks_ExitMoveBatchErrorFeedbackRequestV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Goldilocks_ZoneID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v33 = (&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1000BB130(&qword_1002C4050, &qword_1002483C0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = (&v32 - v10);
  v12 = sub_1000BB130(&qword_1002C2910, &qword_1002483C8);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = &v32 - v15;
  v32 = type metadata accessor for Goldilocks_ExitMoveBatchErrorFeedbackRequest(0);
  v17 = *(v32 + 32);
  v18 = *(v13 + 56);
  v34 = a1;
  sub_1000CC794(a1 + v17, v16, &qword_1002C4050, &qword_1002483C0);
  v35 = a2;
  sub_1000CC794(a2 + v17, &v16[v18], &qword_1002C4050, &qword_1002483C0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1000CCDBC(v16, &qword_1002C4050, &qword_1002483C0);
      goto LABEL_19;
    }

    goto LABEL_6;
  }

  sub_1000CC794(v16, v11, &qword_1002C4050, &qword_1002483C0);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_10010C520(v11, type metadata accessor for Goldilocks_ZoneID);
LABEL_6:
    v20 = &qword_1002C2910;
    v21 = &qword_1002483C8;
LABEL_7:
    sub_1000CCDBC(v16, v20, v21);
LABEL_27:
    v30 = 0;
    return v30 & 1;
  }

  v22 = v33;
  sub_10010C450(&v16[v18], v33, type metadata accessor for Goldilocks_ZoneID);
  v23 = *v11 == *v22 && v11[1] == v22[1];
  if (!v23 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v11[2] == v22[2] ? (v24 = v11[3] == v22[3]) : (v24 = 0), !v24 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
  {
    sub_10010C520(v22, type metadata accessor for Goldilocks_ZoneID);
    sub_10010C520(v11, type metadata accessor for Goldilocks_ZoneID);
    v20 = &qword_1002C4050;
    v21 = &qword_1002483C0;
    goto LABEL_7;
  }

  v25 = *(v4 + 24);
  type metadata accessor for UnknownStorage();
  sub_10010C868(&qword_1002C0840, &type metadata accessor for UnknownStorage);
  v26 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_10010C520(v22, type metadata accessor for Goldilocks_ZoneID);
  sub_10010C520(v11, type metadata accessor for Goldilocks_ZoneID);
  sub_1000CCDBC(v16, &qword_1002C4050, &qword_1002483C0);
  if ((v26 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_19:
  v28 = v34;
  v27 = v35;
  if ((sub_1000E6994(*v34, *v35) & 1) == 0 || (v28[1] != v27[1] || v28[2] != v27[2]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v28[3] != v27[3] || v28[4] != v27[4]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_27;
  }

  v29 = *(v32 + 28);
  type metadata accessor for UnknownStorage();
  sub_10010C868(&qword_1002C0840, &type metadata accessor for UnknownStorage);
  v30 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v30 & 1;
}

uint64_t _s22CloudKitImplementation37Goldilocks_SilentMoverRampingResponseV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  v54 = *(v4 - 8);
  v55 = v4;
  v5 = *(v54 + 64);
  __chkstk_darwin(v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BB130(&qword_1002C2900, &qword_1002483B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v52 = &v48 - v10;
  v53 = sub_1000BB130(&qword_1002C2908, &qword_1002483B8);
  v11 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53);
  v13 = &v48 - v12;
  v14 = type metadata accessor for Goldilocks_OperationControl(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000BB130(&qword_1002C2CF8, &qword_100248A10);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v48 - v21;
  v23 = sub_1000BB130(&qword_1002C3E88, &unk_10024B550);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v26 = &v48 - v25;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || a1[2] != a2[2])
  {
    goto LABEL_19;
  }

  v50 = v13;
  v48 = v7;
  v27 = type metadata accessor for Goldilocks_SilentMoverRampingResponse(0);
  v51 = a2;
  v49 = v27;
  v28 = *(v27 + 28);
  v29 = *(v23 + 48);
  sub_1000CC794(a1 + v28, v26, &qword_1002C2CF8, &qword_100248A10);
  sub_1000CC794(v51 + v28, &v26[v29], &qword_1002C2CF8, &qword_100248A10);
  v30 = *(v15 + 48);
  if (v30(v26, 1, v14) != 1)
  {
    sub_1000CC794(v26, v22, &qword_1002C2CF8, &qword_100248A10);
    if (v30(&v26[v29], 1, v14) != 1)
    {
      sub_10010C450(&v26[v29], v18, type metadata accessor for Goldilocks_OperationControl);
      v34 = _s22CloudKitImplementation27Goldilocks_OperationControlV2eeoiySbAC_ACtFZ_0(v22, v18);
      sub_10010C520(v18, type metadata accessor for Goldilocks_OperationControl);
      sub_10010C520(v22, type metadata accessor for Goldilocks_OperationControl);
      sub_1000CCDBC(v26, &qword_1002C2CF8, &qword_100248A10);
      if ((v34 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_12;
    }

    sub_10010C520(v22, type metadata accessor for Goldilocks_OperationControl);
LABEL_10:
    v31 = &qword_1002C3E88;
    v32 = &unk_10024B550;
    v33 = v26;
LABEL_18:
    sub_1000CCDBC(v33, v31, v32);
    goto LABEL_19;
  }

  if (v30(&v26[v29], 1, v14) != 1)
  {
    goto LABEL_10;
  }

  sub_1000CCDBC(v26, &qword_1002C2CF8, &qword_100248A10);
LABEL_12:
  v36 = v49;
  v35 = v50;
  v37 = *(v49 + 32);
  v38 = *(v53 + 48);
  sub_1000CC794(a1 + v37, v50, &qword_1002C2900, &qword_1002483B0);
  sub_1000CC794(v51 + v37, v35 + v38, &qword_1002C2900, &qword_1002483B0);
  v39 = v55;
  v40 = *(v54 + 48);
  if (v40(v35, 1, v55) == 1)
  {
    if (v40(v35 + v38, 1, v39) == 1)
    {
      sub_1000CCDBC(v35, &qword_1002C2900, &qword_1002483B0);
LABEL_22:
      v47 = *(v36 + 24);
      type metadata accessor for UnknownStorage();
      sub_10010C868(&qword_1002C0840, &type metadata accessor for UnknownStorage);
      v42 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v42 & 1;
    }

    goto LABEL_17;
  }

  v41 = v52;
  sub_1000CC794(v35, v52, &qword_1002C2900, &qword_1002483B0);
  if (v40(v35 + v38, 1, v39) == 1)
  {
    sub_10010C520(v41, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
LABEL_17:
    v31 = &qword_1002C2908;
    v32 = &qword_1002483B8;
    v33 = v35;
    goto LABEL_18;
  }

  v44 = v35 + v38;
  v45 = v48;
  sub_10010C450(v44, v48, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
  v46 = _s22CloudKitImplementation20Goldilocks_ErrorInfoV06ResultE0V2eeoiySbAE_AEtFZ_0(v41, v45);
  sub_10010C520(v45, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
  sub_10010C520(v41, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
  sub_1000CCDBC(v35, &qword_1002C2900, &qword_1002483B0);
  if (v46)
  {
    goto LABEL_22;
  }

LABEL_19:
  v42 = 0;
  return v42 & 1;
}

uint64_t _s22CloudKitImplementation36Goldilocks_ExitStatusFeedbackRequestV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for Goldilocks_ZoneID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1000BB130(&qword_1002C4050, &qword_1002483C0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = (&v36 - v11);
  v13 = sub_1000BB130(&qword_1002C2910, &qword_1002483C8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v36 - v15;
  v17 = *a1;
  v18 = a1[1];
  v37 = a1;
  if ((v17 != *a2 || v18 != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_11;
  }

  v19 = a2;
  v36 = type metadata accessor for Goldilocks_ExitStatusFeedbackRequest(0);
  v20 = *(v36 + 28);
  v21 = *(v13 + 48);
  sub_1000CC794(v37 + v20, v16, &qword_1002C4050, &qword_1002483C0);
  v22 = v19 + v20;
  v23 = v19;
  sub_1000CC794(v22, &v16[v21], &qword_1002C4050, &qword_1002483C0);
  v24 = *(v5 + 48);
  if (v24(v16, 1, v4) != 1)
  {
    sub_1000CC794(v16, v12, &qword_1002C4050, &qword_1002483C0);
    if (v24(&v16[v21], 1, v4) != 1)
    {
      sub_10010C450(&v16[v21], v8, type metadata accessor for Goldilocks_ZoneID);
      v29 = *v12 == *v8 && v12[1] == v8[1];
      if (v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v30 = v12[2] == v8[2] && v12[3] == v8[3];
        if (v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v31 = *(v4 + 24);
          type metadata accessor for UnknownStorage();
          sub_10010C868(&qword_1002C0840, &type metadata accessor for UnknownStorage);
          v23 = v19;
          v32 = dispatch thunk of static Equatable.== infix(_:_:)();
          sub_10010C520(v8, type metadata accessor for Goldilocks_ZoneID);
          sub_10010C520(v12, type metadata accessor for Goldilocks_ZoneID);
          sub_1000CCDBC(v16, &qword_1002C4050, &qword_1002483C0);
          if ((v32 & 1) == 0)
          {
            goto LABEL_11;
          }

          goto LABEL_24;
        }
      }

      sub_10010C520(v8, type metadata accessor for Goldilocks_ZoneID);
      sub_10010C520(v12, type metadata accessor for Goldilocks_ZoneID);
      v25 = &qword_1002C4050;
      v26 = &qword_1002483C0;
LABEL_10:
      sub_1000CCDBC(v16, v25, v26);
      goto LABEL_11;
    }

    sub_10010C520(v12, type metadata accessor for Goldilocks_ZoneID);
LABEL_9:
    v25 = &qword_1002C2910;
    v26 = &qword_1002483C8;
    goto LABEL_10;
  }

  if (v24(&v16[v21], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  sub_1000CCDBC(v16, &qword_1002C4050, &qword_1002483C0);
LABEL_24:
  v33 = v37[2];
  if (*(v37 + 24) == 1)
  {
    v33 = qword_10024B5A8[v33];
  }

  v34 = v23[2];
  if (*(v23 + 24))
  {
    if (v34 > 2)
    {
      if (v34 == 3)
      {
        if (v33 != 3)
        {
          goto LABEL_11;
        }
      }

      else if (v34 == 4)
      {
        if (v33 != 10)
        {
          goto LABEL_11;
        }
      }

      else if (v33 != 11)
      {
        goto LABEL_11;
      }

      goto LABEL_33;
    }

    if (v34)
    {
      if (v34 == 1)
      {
        if (v33 != 1)
        {
          goto LABEL_11;
        }
      }

      else if (v33 != 2)
      {
        goto LABEL_11;
      }

LABEL_33:
      v35 = *(v36 + 24);
      type metadata accessor for UnknownStorage();
      sub_10010C868(&qword_1002C0840, &type metadata accessor for UnknownStorage);
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v27 & 1;
    }

    if (!v33)
    {
      goto LABEL_33;
    }
  }

  else if (v33 == v34)
  {
    goto LABEL_33;
  }

LABEL_11:
  v27 = 0;
  return v27 & 1;
}

uint64_t _s22CloudKitImplementation36Goldilocks_ExitMoveBatchFeedbackItemV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BB130(&qword_1002C2900, &qword_1002483B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v25 - v11;
  v13 = sub_1000BB130(&qword_1002C2908, &qword_1002483B8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v25 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_13;
  }

  v25 = v8;
  v26 = type metadata accessor for Goldilocks_ExitMoveBatchFeedbackItem(0);
  v17 = *(v26 + 28);
  v18 = *(v13 + 48);
  sub_1000CC794(a1 + v17, v16, &qword_1002C2900, &qword_1002483B0);
  sub_1000CC794(a2 + v17, &v16[v18], &qword_1002C2900, &qword_1002483B0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1000CCDBC(v16, &qword_1002C2900, &qword_1002483B0);
LABEL_15:
      v23 = *(v26 + 24);
      type metadata accessor for UnknownStorage();
      sub_10010C868(&qword_1002C0840, &type metadata accessor for UnknownStorage);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_12;
  }

  sub_1000CC794(v16, v12, &qword_1002C2900, &qword_1002483B0);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_10010C520(v12, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
LABEL_12:
    sub_1000CCDBC(v16, &qword_1002C2908, &qword_1002483B8);
    goto LABEL_13;
  }

  v21 = v25;
  sub_10010C450(&v16[v18], v25, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
  v22 = _s22CloudKitImplementation20Goldilocks_ErrorInfoV06ResultE0V2eeoiySbAE_AEtFZ_0(v12, v21);
  sub_10010C520(v21, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
  sub_10010C520(v12, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
  sub_1000CCDBC(v16, &qword_1002C2900, &qword_1002483B0);
  if (v22)
  {
    goto LABEL_15;
  }

LABEL_13:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s22CloudKitImplementation33Goldilocks_CheckDuplicatesRequestV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for Goldilocks_ZoneID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1000BB130(&qword_1002C4050, &qword_1002483C0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = (&v33 - v11);
  v13 = sub_1000BB130(&qword_1002C2910, &qword_1002483C8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v33 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_24;
  }

  v17 = type metadata accessor for Goldilocks_CheckDuplicatesRequest(0);
  v18 = *(v17 + 28);
  v19 = a1;
  v20 = *(v13 + 48);
  v33 = v17;
  v34 = v19;
  sub_1000CC794(v19 + v18, v16, &qword_1002C4050, &qword_1002483C0);
  v21 = a2 + v18;
  v22 = a2;
  sub_1000CC794(v21, &v16[v20], &qword_1002C4050, &qword_1002483C0);
  v23 = *(v5 + 48);
  if (v23(v16, 1, v4) == 1)
  {
    if (v23(&v16[v20], 1, v4) == 1)
    {
      sub_1000CCDBC(v16, &qword_1002C4050, &qword_1002483C0);
      goto LABEL_22;
    }

    goto LABEL_9;
  }

  sub_1000CC794(v16, v12, &qword_1002C4050, &qword_1002483C0);
  if (v23(&v16[v20], 1, v4) == 1)
  {
    sub_10010C520(v12, type metadata accessor for Goldilocks_ZoneID);
LABEL_9:
    v24 = &qword_1002C2910;
    v25 = &qword_1002483C8;
LABEL_10:
    sub_1000CCDBC(v16, v24, v25);
LABEL_24:
    v31 = 0;
    return v31 & 1;
  }

  sub_10010C450(&v16[v20], v8, type metadata accessor for Goldilocks_ZoneID);
  v26 = *v12 == *v8 && v12[1] == v8[1];
  if (!v26 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v12[2] == v8[2] ? (v27 = v12[3] == v8[3]) : (v27 = 0), !v27 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
  {
    sub_10010C520(v8, type metadata accessor for Goldilocks_ZoneID);
    sub_10010C520(v12, type metadata accessor for Goldilocks_ZoneID);
    v24 = &qword_1002C4050;
    v25 = &qword_1002483C0;
    goto LABEL_10;
  }

  v28 = *(v4 + 24);
  type metadata accessor for UnknownStorage();
  sub_10010C868(&qword_1002C0840, &type metadata accessor for UnknownStorage);
  v22 = a2;
  v29 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_10010C520(v8, type metadata accessor for Goldilocks_ZoneID);
  sub_10010C520(v12, type metadata accessor for Goldilocks_ZoneID);
  sub_1000CCDBC(v16, &qword_1002C4050, &qword_1002483C0);
  if ((v29 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_22:
  if ((sub_1000E7460(v34[2], v22[2]) & 1) == 0)
  {
    goto LABEL_24;
  }

  v30 = *(v33 + 24);
  type metadata accessor for UnknownStorage();
  sub_10010C868(&qword_1002C0840, &type metadata accessor for UnknownStorage);
  v31 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v31 & 1;
}

uint64_t _s22CloudKitImplementation32Goldilocks_ExitMoveBatchResponseV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BB130(&qword_1002C2900, &qword_1002483B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v26 - v11;
  v13 = sub_1000BB130(&qword_1002C2908, &qword_1002483B8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v26 - v15;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_17;
  }

  v27 = v8;
  v26 = type metadata accessor for Goldilocks_ExitMoveBatchResponse(0);
  v17 = *(v26 + 40);
  v18 = *(v13 + 48);
  sub_1000CC794(a1 + v17, v16, &qword_1002C2900, &qword_1002483B0);
  sub_1000CC794(a2 + v17, &v16[v18], &qword_1002C2900, &qword_1002483B0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_1000CC794(v16, v12, &qword_1002C2900, &qword_1002483B0);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v20 = &v16[v18];
      v21 = v27;
      sub_10010C450(v20, v27, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
      v22 = _s22CloudKitImplementation20Goldilocks_ErrorInfoV06ResultE0V2eeoiySbAE_AEtFZ_0(v12, v21);
      sub_10010C520(v21, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
      sub_10010C520(v12, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
      sub_1000CCDBC(v16, &qword_1002C2900, &qword_1002483B0);
      if ((v22 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_11;
    }

    sub_10010C520(v12, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
LABEL_9:
    sub_1000CCDBC(v16, &qword_1002C2908, &qword_1002483B8);
    goto LABEL_17;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  sub_1000CCDBC(v16, &qword_1002C2900, &qword_1002483B0);
LABEL_11:
  if (*(a1 + 16) == *(a2 + 16) && (*(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) && (sub_1000E7460(*(a1 + 40), *(a2 + 40)) & 1) != 0 && *(a1 + 48) == *(a2 + 48))
  {
    v25 = *(v26 + 36);
    type metadata accessor for UnknownStorage();
    sub_10010C868(&qword_1002C0840, &type metadata accessor for UnknownStorage);
    v23 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v23 & 1;
  }

LABEL_17:
  v23 = 0;
  return v23 & 1;
}

uint64_t _s22CloudKitImplementation32Goldilocks_ParticipantExitResultV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for Goldilocks_ZoneID(0);
  v56 = *(v4 - 8);
  v57 = v4;
  v5 = *(v56 + 64);
  __chkstk_darwin(v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BB130(&qword_1002C4050, &qword_1002483C0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v54 = (&v51 - v10);
  v55 = sub_1000BB130(&qword_1002C2910, &qword_1002483C8);
  v11 = *(*(v55 - 8) + 64);
  __chkstk_darwin(v55);
  v13 = &v51 - v12;
  v14 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000BB130(&qword_1002C2900, &qword_1002483B0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v51 - v21;
  v23 = sub_1000BB130(&qword_1002C2908, &qword_1002483B8);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v26 = &v51 - v25;
  v27 = *a1;
  v28 = a1[1];
  v58 = a1;
  if ((v27 != *a2 || v28 != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_19;
  }

  v51 = v7;
  v53 = v13;
  v52 = type metadata accessor for Goldilocks_ParticipantExitResult(0);
  v29 = *(v52 + 24);
  v30 = *(v23 + 48);
  sub_1000CC794(v58 + v29, v26, &qword_1002C2900, &qword_1002483B0);
  v31 = a2 + v29;
  v32 = a2;
  sub_1000CC794(v31, &v26[v30], &qword_1002C2900, &qword_1002483B0);
  v33 = *(v15 + 48);
  if (v33(v26, 1, v14) != 1)
  {
    sub_1000CC794(v26, v22, &qword_1002C2900, &qword_1002483B0);
    if (v33(&v26[v30], 1, v14) != 1)
    {
      sub_10010C450(&v26[v30], v18, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
      v37 = _s22CloudKitImplementation20Goldilocks_ErrorInfoV06ResultE0V2eeoiySbAE_AEtFZ_0(v22, v18);
      sub_10010C520(v18, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
      sub_10010C520(v22, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
      sub_1000CCDBC(v26, &qword_1002C2900, &qword_1002483B0);
      if ((v37 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    sub_10010C520(v22, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
LABEL_9:
    v34 = &qword_1002C2908;
    v35 = &qword_1002483B8;
    v36 = v26;
LABEL_18:
    sub_1000CCDBC(v36, v34, v35);
    goto LABEL_19;
  }

  if (v33(&v26[v30], 1, v14) != 1)
  {
    goto LABEL_9;
  }

  sub_1000CCDBC(v26, &qword_1002C2900, &qword_1002483B0);
LABEL_11:
  v39 = v52;
  v38 = v53;
  v40 = *(v52 + 28);
  v41 = *(v55 + 48);
  sub_1000CC794(v58 + v40, v53, &qword_1002C4050, &qword_1002483C0);
  sub_1000CC794(v32 + v40, v38 + v41, &qword_1002C4050, &qword_1002483C0);
  v42 = v57;
  v43 = *(v56 + 48);
  if (v43(v38, 1, v57) == 1)
  {
    if (v43(v38 + v41, 1, v42) == 1)
    {
      sub_1000CCDBC(v38, &qword_1002C4050, &qword_1002483C0);
LABEL_28:
      v50 = *(v39 + 20);
      type metadata accessor for UnknownStorage();
      sub_10010C868(&qword_1002C0840, &type metadata accessor for UnknownStorage);
      v45 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v45 & 1;
    }

    goto LABEL_16;
  }

  v44 = v54;
  sub_1000CC794(v38, v54, &qword_1002C4050, &qword_1002483C0);
  if (v43(v38 + v41, 1, v42) == 1)
  {
    sub_10010C520(v44, type metadata accessor for Goldilocks_ZoneID);
LABEL_16:
    v34 = &qword_1002C2910;
    v35 = &qword_1002483C8;
LABEL_17:
    v36 = v38;
    goto LABEL_18;
  }

  v47 = v51;
  sub_10010C450(v38 + v41, v51, type metadata accessor for Goldilocks_ZoneID);
  if ((*v44 != *v47 || v44[1] != v47[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v44[2] != v47[2] || v44[3] != v47[3]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    sub_10010C520(v47, type metadata accessor for Goldilocks_ZoneID);
    sub_10010C520(v44, type metadata accessor for Goldilocks_ZoneID);
    v34 = &qword_1002C4050;
    v35 = &qword_1002483C0;
    goto LABEL_17;
  }

  v48 = *(v42 + 24);
  type metadata accessor for UnknownStorage();
  sub_10010C868(&qword_1002C0840, &type metadata accessor for UnknownStorage);
  v49 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_10010C520(v47, type metadata accessor for Goldilocks_ZoneID);
  sub_10010C520(v44, type metadata accessor for Goldilocks_ZoneID);
  sub_1000CCDBC(v38, &qword_1002C4050, &qword_1002483C0);
  if (v49)
  {
    goto LABEL_28;
  }

LABEL_19:
  v45 = 0;
  return v45 & 1;
}

uint64_t _s22CloudKitImplementation31Goldilocks_ExitMoveBatchRequestV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for Goldilocks_ZoneID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1000BB130(&qword_1002C4050, &qword_1002483C0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = (&v33 - v11);
  v13 = sub_1000BB130(&qword_1002C2910, &qword_1002483C8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v33 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_24;
  }

  v17 = type metadata accessor for Goldilocks_ExitMoveBatchRequest(0);
  v18 = *(v17 + 28);
  v19 = a1;
  v20 = *(v13 + 48);
  v33 = v17;
  v34 = v19;
  sub_1000CC794(v19 + v18, v16, &qword_1002C4050, &qword_1002483C0);
  v21 = a2 + v18;
  v22 = a2;
  sub_1000CC794(v21, &v16[v20], &qword_1002C4050, &qword_1002483C0);
  v23 = *(v5 + 48);
  if (v23(v16, 1, v4) == 1)
  {
    if (v23(&v16[v20], 1, v4) == 1)
    {
      sub_1000CCDBC(v16, &qword_1002C4050, &qword_1002483C0);
      goto LABEL_22;
    }

    goto LABEL_9;
  }

  sub_1000CC794(v16, v12, &qword_1002C4050, &qword_1002483C0);
  if (v23(&v16[v20], 1, v4) == 1)
  {
    sub_10010C520(v12, type metadata accessor for Goldilocks_ZoneID);
LABEL_9:
    v24 = &qword_1002C2910;
    v25 = &qword_1002483C8;
LABEL_10:
    sub_1000CCDBC(v16, v24, v25);
LABEL_24:
    v31 = 0;
    return v31 & 1;
  }

  sub_10010C450(&v16[v20], v8, type metadata accessor for Goldilocks_ZoneID);
  v26 = *v12 == *v8 && v12[1] == v8[1];
  if (!v26 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v12[2] == v8[2] ? (v27 = v12[3] == v8[3]) : (v27 = 0), !v27 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
  {
    sub_10010C520(v8, type metadata accessor for Goldilocks_ZoneID);
    sub_10010C520(v12, type metadata accessor for Goldilocks_ZoneID);
    v24 = &qword_1002C4050;
    v25 = &qword_1002483C0;
    goto LABEL_10;
  }

  v28 = *(v4 + 24);
  type metadata accessor for UnknownStorage();
  sub_10010C868(&qword_1002C0840, &type metadata accessor for UnknownStorage);
  v22 = a2;
  v29 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_10010C520(v8, type metadata accessor for Goldilocks_ZoneID);
  sub_10010C520(v12, type metadata accessor for Goldilocks_ZoneID);
  sub_1000CCDBC(v16, &qword_1002C4050, &qword_1002483C0);
  if ((v29 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_22:
  if (*(v34 + 4) != *(v22 + 4))
  {
    goto LABEL_24;
  }

  v30 = *(v33 + 24);
  type metadata accessor for UnknownStorage();
  sub_10010C868(&qword_1002C0840, &type metadata accessor for UnknownStorage);
  v31 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v31 & 1;
}

uint64_t _s22CloudKitImplementation30Goldilocks_InitiateExitRequestV2eeoiySbAC_ACtFZ_0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Goldilocks_ZoneID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1000BB130(&qword_1002C4050, &qword_1002483C0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = (&v38 - v11);
  v13 = sub_1000BB130(&qword_1002C2910, &qword_1002483C8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v38 - v15;
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_11;
  }

  v17 = type metadata accessor for Goldilocks_InitiateExitRequest(0);
  v18 = *(v17 + 52);
  v19 = a1;
  v20 = *(v13 + 48);
  v38 = v17;
  v39 = v19;
  sub_1000CC794(v19 + v18, v16, &qword_1002C4050, &qword_1002483C0);
  sub_1000CC794(a2 + v18, &v16[v20], &qword_1002C4050, &qword_1002483C0);
  v21 = *(v5 + 48);
  if (v21(v16, 1, v4) != 1)
  {
    sub_1000CC794(v16, v12, &qword_1002C4050, &qword_1002483C0);
    if (v21(&v16[v20], 1, v4) != 1)
    {
      sub_10010C450(&v16[v20], v8, type metadata accessor for Goldilocks_ZoneID);
      v26 = *v12 == *v8 && v12[1] == v8[1];
      if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v27 = v12[2] == v8[2] && v12[3] == v8[3];
        if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v28 = *(v4 + 24);
          type metadata accessor for UnknownStorage();
          sub_10010C868(&qword_1002C0840, &type metadata accessor for UnknownStorage);
          v29 = dispatch thunk of static Equatable.== infix(_:_:)();
          sub_10010C520(v8, type metadata accessor for Goldilocks_ZoneID);
          sub_10010C520(v12, type metadata accessor for Goldilocks_ZoneID);
          sub_1000CCDBC(v16, &qword_1002C4050, &qword_1002483C0);
          if ((v29 & 1) == 0)
          {
            goto LABEL_11;
          }

          goto LABEL_24;
        }
      }

      sub_10010C520(v8, type metadata accessor for Goldilocks_ZoneID);
      sub_10010C520(v12, type metadata accessor for Goldilocks_ZoneID);
      v22 = &qword_1002C4050;
      v23 = &qword_1002483C0;
LABEL_10:
      sub_1000CCDBC(v16, v22, v23);
      goto LABEL_11;
    }

    sub_10010C520(v12, type metadata accessor for Goldilocks_ZoneID);
LABEL_9:
    v22 = &qword_1002C2910;
    v23 = &qword_1002483C8;
    goto LABEL_10;
  }

  if (v21(&v16[v20], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  sub_1000CCDBC(v16, &qword_1002C4050, &qword_1002483C0);
LABEL_24:
  v30 = v39;
  v31 = v39[2];
  v32 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    if (v32)
    {
      if (v32 == 1)
      {
        if (v31 != 1)
        {
          goto LABEL_11;
        }
      }

      else if (v31 != 2)
      {
        goto LABEL_11;
      }
    }

    else if (v31)
    {
      goto LABEL_11;
    }
  }

  else if (v31 != v32)
  {
    goto LABEL_11;
  }

  v33 = v39[4];
  v34 = *(a2 + 32);
  if (*(a2 + 40) == 1)
  {
    if (v34)
    {
      if (v34 == 1)
      {
        if (v33 != 1)
        {
          goto LABEL_11;
        }
      }

      else if (v33 != 2)
      {
        goto LABEL_11;
      }
    }

    else if (v33)
    {
      goto LABEL_11;
    }
  }

  else if (v33 != v34)
  {
    goto LABEL_11;
  }

  if ((sub_1000E7460(v39[6], *(a2 + 48)) & 1) == 0 || (sub_1000E7460(v30[7], *(a2 + 56)) & 1) == 0 || v30[8] != *(a2 + 64))
  {
    goto LABEL_11;
  }

  v35 = v30[9];
  v36 = *(a2 + 72);
  if (*(a2 + 80) == 1)
  {
    if (v36 <= 1)
    {
      if (v36)
      {
        if (v35 != 1)
        {
          goto LABEL_11;
        }
      }

      else if (v35)
      {
        goto LABEL_11;
      }
    }

    else if (v36 == 2)
    {
      if (v35 != 2)
      {
        goto LABEL_11;
      }
    }

    else if (v36 == 3)
    {
      if (v35 != 3)
      {
        goto LABEL_11;
      }
    }

    else if (v35 != 4)
    {
      goto LABEL_11;
    }
  }

  else if (v35 != v36)
  {
    goto LABEL_11;
  }

  if (sub_1000D53F4(v30[11], *(v30 + 96), *(a2 + 88), *(a2 + 96)))
  {
    v37 = *(v38 + 48);
    type metadata accessor for UnknownStorage();
    sub_10010C868(&qword_1002C0840, &type metadata accessor for UnknownStorage);
    v24 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v24 & 1;
  }

LABEL_11:
  v24 = 0;
  return v24 & 1;
}

uint64_t _s22CloudKitImplementation27Goldilocks_OperationControlV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (*(a1 + 9) != *(a2 + 9) || *(a1 + 10) != *(a2 + 10) || *(a1 + 11) != *(a2 + 11) || *(a1 + 12) != *(a2 + 12) || *(a1 + 13) != *(a2 + 13) || *(a1 + 14) != *(a2 + 14))
  {
    return 0;
  }

  v4 = *(type metadata accessor for Goldilocks_OperationControl(0) + 44);
  type metadata accessor for UnknownStorage();
  sub_10010C868(&qword_1002C0840, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t _s22CloudKitImplementation25Goldilocks_FoundDuplicateV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for Goldilocks_ZoneID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&found - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1000BB130(&qword_1002C4050, &qword_1002483C0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = (&found - v11);
  v13 = sub_1000BB130(&qword_1002C2910, &qword_1002483C8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &found - v15;
  v17 = *a1;
  v18 = a1[1];
  v37 = a1;
  if ((v17 != *a2 || v18 != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_11;
  }

  v19 = a2;
  found = type metadata accessor for Goldilocks_FoundDuplicate(0);
  v20 = *(found + 28);
  v21 = *(v13 + 48);
  sub_1000CC794(v37 + v20, v16, &qword_1002C4050, &qword_1002483C0);
  v22 = v19 + v20;
  v23 = v19;
  sub_1000CC794(v22, &v16[v21], &qword_1002C4050, &qword_1002483C0);
  v24 = *(v5 + 48);
  if (v24(v16, 1, v4) != 1)
  {
    sub_1000CC794(v16, v12, &qword_1002C4050, &qword_1002483C0);
    if (v24(&v16[v21], 1, v4) != 1)
    {
      sub_10010C450(&v16[v21], v8, type metadata accessor for Goldilocks_ZoneID);
      v29 = *v12 == *v8 && v12[1] == v8[1];
      if (v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v30 = v12[2] == v8[2] && v12[3] == v8[3];
        if (v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v31 = *(v4 + 24);
          type metadata accessor for UnknownStorage();
          sub_10010C868(&qword_1002C0840, &type metadata accessor for UnknownStorage);
          v23 = v19;
          v32 = dispatch thunk of static Equatable.== infix(_:_:)();
          sub_10010C520(v8, type metadata accessor for Goldilocks_ZoneID);
          sub_10010C520(v12, type metadata accessor for Goldilocks_ZoneID);
          sub_1000CCDBC(v16, &qword_1002C4050, &qword_1002483C0);
          if ((v32 & 1) == 0)
          {
            goto LABEL_11;
          }

          goto LABEL_24;
        }
      }

      sub_10010C520(v8, type metadata accessor for Goldilocks_ZoneID);
      sub_10010C520(v12, type metadata accessor for Goldilocks_ZoneID);
      v25 = &qword_1002C4050;
      v26 = &qword_1002483C0;
LABEL_10:
      sub_1000CCDBC(v16, v25, v26);
      goto LABEL_11;
    }

    sub_10010C520(v12, type metadata accessor for Goldilocks_ZoneID);
LABEL_9:
    v25 = &qword_1002C2910;
    v26 = &qword_1002483C8;
    goto LABEL_10;
  }

  if (v24(&v16[v21], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  sub_1000CCDBC(v16, &qword_1002C4050, &qword_1002483C0);
LABEL_24:
  v33 = v37[2];
  v34 = v23[2];
  if (*(v37 + 24))
  {
    v33 = v33 != 0;
  }

  if (*(v23 + 24) == 1)
  {
    if (v34)
    {
      if (v33 == 1)
      {
        goto LABEL_34;
      }
    }

    else if (!v33)
    {
LABEL_34:
      v35 = *(found + 24);
      type metadata accessor for UnknownStorage();
      sub_10010C868(&qword_1002C0840, &type metadata accessor for UnknownStorage);
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v27 & 1;
    }
  }

  else if (v33 == v34)
  {
    goto LABEL_34;
  }

LABEL_11:
  v27 = 0;
  return v27 & 1;
}

uint64_t sub_10010B830(void *a1, void *a2, uint64_t (*a3)(void), uint64_t (*a4)(void, void))
{
  v8 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BB130(&qword_1002C2900, &qword_1002483B0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v29 - v15;
  v17 = sub_1000BB130(&qword_1002C2908, &qword_1002483B8);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = &v29 - v19;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_13;
  }

  v31 = v12;
  v32 = a4;
  v30 = a3(0);
  v21 = *(v30 + 28);
  v22 = *(v17 + 48);
  sub_1000CC794(a1 + v21, v20, &qword_1002C2900, &qword_1002483B0);
  sub_1000CC794(a2 + v21, &v20[v22], &qword_1002C2900, &qword_1002483B0);
  v23 = *(v9 + 48);
  if (v23(v20, 1, v8) == 1)
  {
    if (v23(&v20[v22], 1, v8) == 1)
    {
      sub_1000CCDBC(v20, &qword_1002C2900, &qword_1002483B0);
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  sub_1000CC794(v20, v16, &qword_1002C2900, &qword_1002483B0);
  if (v23(&v20[v22], 1, v8) == 1)
  {
    sub_10010C520(v16, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
LABEL_9:
    sub_1000CCDBC(v20, &qword_1002C2908, &qword_1002483B8);
LABEL_13:
    v27 = 0;
    return v27 & 1;
  }

  v24 = v31;
  sub_10010C450(&v20[v22], v31, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
  v25 = _s22CloudKitImplementation20Goldilocks_ErrorInfoV06ResultE0V2eeoiySbAE_AEtFZ_0(v16, v24);
  sub_10010C520(v24, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
  sub_10010C520(v16, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
  sub_1000CCDBC(v20, &qword_1002C2900, &qword_1002483B0);
  if ((v25 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  if ((v32(a1[2], a2[2]) & 1) == 0)
  {
    goto LABEL_13;
  }

  v26 = *(v30 + 24);
  type metadata accessor for UnknownStorage();
  sub_10010C868(&qword_1002C0840, &type metadata accessor for UnknownStorage);
  v27 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v27 & 1;
}

uint64_t _s22CloudKitImplementation20Goldilocks_ErrorInfoV15DatabaseFailureV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
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

  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = Rpcproto_ErrorInfo.Client.Code.rawValue.getter(*(a1 + 32), *(a1 + 40));
  if (v8 != Rpcproto_ErrorInfo.Client.Code.rawValue.getter(v6, v7) || !sub_1000D5418(*(a1 + 48), *(a1 + 56), *(a2 + 48), *(a2 + 56)))
  {
    return 0;
  }

  v9 = *(type metadata accessor for Goldilocks_ErrorInfo.DatabaseFailure(0) + 32);
  type metadata accessor for UnknownStorage();
  sub_10010C868(&qword_1002C0840, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t _s22CloudKitImplementation20Goldilocks_ErrorInfoV06ResultE0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Goldilocks_ErrorInfo.DatabaseFailure(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BB130(&qword_1002C2D00, &qword_100248A18);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v27 - v11;
  v13 = sub_1000BB130(&qword_1002C3E80, &unk_10024B540);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v27 - v15;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_59;
  }

  v17 = *(a1 + 16);
  v18 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    if (v18 > 5)
    {
      if (v18 > 8)
      {
        if (v18 == 9)
        {
          if (v17 != 9)
          {
            goto LABEL_59;
          }
        }

        else if (v18 == 10)
        {
          if (v17 != 10)
          {
            goto LABEL_59;
          }
        }

        else if (v17 != 11)
        {
          goto LABEL_59;
        }
      }

      else if (v18 == 6)
      {
        if (v17 != 6)
        {
          goto LABEL_59;
        }
      }

      else if (v18 == 7)
      {
        if (v17 != 7)
        {
          goto LABEL_59;
        }
      }

      else if (v17 != 8)
      {
        goto LABEL_59;
      }
    }

    else if (v18 > 2)
    {
      if (v18 == 3)
      {
        if (v17 != 3)
        {
          goto LABEL_59;
        }
      }

      else if (v18 == 4)
      {
        if (v17 != 4)
        {
          goto LABEL_59;
        }
      }

      else if (v17 != 5)
      {
        goto LABEL_59;
      }
    }

    else if (v18)
    {
      if (v18 == 1)
      {
        if (v17 != 1)
        {
          goto LABEL_59;
        }
      }

      else if (v17 != 2)
      {
        goto LABEL_59;
      }
    }

    else if (v17)
    {
      goto LABEL_59;
    }
  }

  else if (v17 != v18)
  {
    goto LABEL_59;
  }

  v28 = v8;
  v27 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  v19 = *(v27 + 48);
  v20 = *(v13 + 48);
  sub_1000CC794(a1 + v19, v16, &qword_1002C2D00, &qword_100248A18);
  sub_1000CC794(a2 + v19, &v16[v20], &qword_1002C2D00, &qword_100248A18);
  v21 = *(v5 + 48);
  if (v21(v16, 1, v4) != 1)
  {
    sub_1000CC794(v16, v12, &qword_1002C2D00, &qword_100248A18);
    if (v21(&v16[v20], 1, v4) == 1)
    {
      sub_10010C520(v12, type metadata accessor for Goldilocks_ErrorInfo.DatabaseFailure);
      goto LABEL_22;
    }

    v22 = v28;
    sub_10010C450(&v16[v20], v28, type metadata accessor for Goldilocks_ErrorInfo.DatabaseFailure);
    v23 = _s22CloudKitImplementation20Goldilocks_ErrorInfoV15DatabaseFailureV2eeoiySbAE_AEtFZ_0(v12, v22);
    sub_10010C520(v22, type metadata accessor for Goldilocks_ErrorInfo.DatabaseFailure);
    sub_10010C520(v12, type metadata accessor for Goldilocks_ErrorInfo.DatabaseFailure);
    sub_1000CCDBC(v16, &qword_1002C2D00, &qword_100248A18);
    if (v23)
    {
      goto LABEL_32;
    }

LABEL_59:
    v25 = 0;
    return v25 & 1;
  }

  if (v21(&v16[v20], 1, v4) != 1)
  {
LABEL_22:
    sub_1000CCDBC(v16, &qword_1002C3E80, &unk_10024B540);
    goto LABEL_59;
  }

  sub_1000CCDBC(v16, &qword_1002C2D00, &qword_100248A18);
LABEL_32:
  if ((*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 48) != *(a2 + 48) || (sub_1000E8D68(*(a1 + 56), *(a2 + 56)) & 1) == 0 || (*(a1 + 64) != *(a2 + 64) || *(a1 + 72) != *(a2 + 72)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (*(a1 + 80) != *(a2 + 80) || *(a1 + 88) != *(a2 + 88)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_59;
  }

  v24 = *(v27 + 44);
  type metadata accessor for UnknownStorage();
  sub_10010C868(&qword_1002C0840, &type metadata accessor for UnknownStorage);
  v25 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v25 & 1;
}

uint64_t _s22CloudKitImplementation17Goldilocks_ZoneIDV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for Goldilocks_ZoneID(0) + 24);
  type metadata accessor for UnknownStorage();
  sub_10010C868(&qword_1002C0840, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10010C2EC(uint64_t result)
{
  if (result <= 1199)
  {
    if (result > 999)
    {
      if (result == 1000)
      {
        return 2;
      }

      else if (result == 1100)
      {
        return 3;
      }
    }

    else if (result == -1)
    {
      return 1;
    }
  }

  else if (result <= 1399)
  {
    if (result == 1200)
    {
      return 4;
    }

    else if (result == 1300)
    {
      return 5;
    }
  }

  else
  {
    switch(result)
    {
      case 1400:
        return 6;
      case 2000:
        return 7;
      case 3000:
        return 8;
    }
  }

  return result;
}

uint64_t sub_10010C450(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10010C4B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10010C520(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10010C6D4(unint64_t result)
{
  v1 = 5;
  v2 = 4;
  if (result != 10)
  {
    v2 = result;
  }

  if (result != 11)
  {
    v1 = v2;
  }

  if (result >= 4)
  {
    return v1;
  }

  return result;
}

unint64_t sub_10010C718()
{
  result = qword_1002C2D08;
  if (!qword_1002C2D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C2D08);
  }

  return result;
}

unint64_t sub_10010C76C()
{
  result = qword_1002C2D10;
  if (!qword_1002C2D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C2D10);
  }

  return result;
}

unint64_t sub_10010C7C0()
{
  result = qword_1002C2D18;
  if (!qword_1002C2D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C2D18);
  }

  return result;
}

unint64_t sub_10010C814()
{
  result = qword_1002C2D20;
  if (!qword_1002C2D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C2D20);
  }

  return result;
}

uint64_t sub_10010C868(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10010C8B0()
{
  result = qword_1002C2D78;
  if (!qword_1002C2D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C2D78);
  }

  return result;
}

unint64_t sub_10010C924()
{
  result = qword_1002C2DF8;
  if (!qword_1002C2DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C2DF8);
  }

  return result;
}

unint64_t sub_10010C978()
{
  result = qword_1002C2E08;
  if (!qword_1002C2E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C2E08);
  }

  return result;
}

unint64_t sub_10010C9F0()
{
  result = qword_1002C2E20;
  if (!qword_1002C2E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C2E20);
  }

  return result;
}

unint64_t sub_10010CA48()
{
  result = qword_1002C2E28;
  if (!qword_1002C2E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C2E28);
  }

  return result;
}

unint64_t sub_10010CAA0()
{
  result = qword_1002C2E30;
  if (!qword_1002C2E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C2E30);
  }

  return result;
}

unint64_t sub_10010CB28()
{
  result = qword_1002C2E48;
  if (!qword_1002C2E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C2E48);
  }

  return result;
}

unint64_t sub_10010CB80()
{
  result = qword_1002C2E50;
  if (!qword_1002C2E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C2E50);
  }

  return result;
}

unint64_t sub_10010CBD8()
{
  result = qword_1002C2E58;
  if (!qword_1002C2E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C2E58);
  }

  return result;
}

unint64_t sub_10010CC60()
{
  result = qword_1002C2E70;
  if (!qword_1002C2E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C2E70);
  }

  return result;
}

unint64_t sub_10010CCB8()
{
  result = qword_1002C2E78;
  if (!qword_1002C2E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C2E78);
  }

  return result;
}

unint64_t sub_10010CD10()
{
  result = qword_1002C2E80;
  if (!qword_1002C2E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C2E80);
  }

  return result;
}

unint64_t sub_10010CD98()
{
  result = qword_1002C2E98;
  if (!qword_1002C2E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C2E98);
  }

  return result;
}

unint64_t sub_10010CDF0()
{
  result = qword_1002C2EA0;
  if (!qword_1002C2EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C2EA0);
  }

  return result;
}

unint64_t sub_10010CE48()
{
  result = qword_1002C2EA8;
  if (!qword_1002C2EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C2EA8);
  }

  return result;
}

unint64_t sub_10010CED0()
{
  result = qword_1002C2EC0;
  if (!qword_1002C2EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C2EC0);
  }

  return result;
}

unint64_t sub_10010CF28()
{
  result = qword_1002C2EC8;
  if (!qword_1002C2EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C2EC8);
  }

  return result;
}

unint64_t sub_10010CF80()
{
  result = qword_1002C2ED0;
  if (!qword_1002C2ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C2ED0);
  }

  return result;
}

unint64_t sub_10010D008()
{
  result = qword_1002C2EE8;
  if (!qword_1002C2EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C2EE8);
  }

  return result;
}

unint64_t sub_10010D060()
{
  result = qword_1002C2EF0;
  if (!qword_1002C2EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C2EF0);
  }

  return result;
}

unint64_t sub_10010D0B8()
{
  result = qword_1002C2EF8;
  if (!qword_1002C2EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C2EF8);
  }

  return result;
}

unint64_t sub_10010D140()
{
  result = qword_1002C2F10;
  if (!qword_1002C2F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C2F10);
  }

  return result;
}

unint64_t sub_10010D198()
{
  result = qword_1002C2F18;
  if (!qword_1002C2F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C2F18);
  }

  return result;
}

unint64_t sub_10010D1F0()
{
  result = qword_1002C2F20;
  if (!qword_1002C2F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C2F20);
  }

  return result;
}

void sub_10010EA8C()
{
  sub_10010F6F8(319, &qword_1002C3128, &type metadata for String, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      sub_10010EC08(319, &unk_1002C3130, type metadata accessor for Goldilocks_ZoneID, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10010EC08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_10010EC94()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_10010EC08(319, &unk_1002C31F0, type metadata accessor for Goldilocks_ErrorInfo.ResultError, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_10010EC08(319, &unk_1002C3130, type metadata accessor for Goldilocks_ZoneID, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10010EDC8()
{
  sub_10010F6F8(319, &qword_1002C3128, &type metadata for String, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      sub_10010EC08(319, &unk_1002C3130, type metadata accessor for Goldilocks_ZoneID, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10010EF08(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_10010EC08(319, a4, a5, &type metadata accessor for Array);
  if (v5 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v6 <= 0x3F)
    {
      sub_10010EC08(319, &unk_1002C31F0, type metadata accessor for Goldilocks_ErrorInfo.ResultError, &type metadata accessor for Optional);
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10010F138()
{
  sub_10010F6F8(319, &qword_1002C3128, &type metadata for String, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      sub_10010EC08(319, &unk_1002C31F0, type metadata accessor for Goldilocks_ErrorInfo.ResultError, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10010F2C0()
{
  sub_10010EC08(319, &unk_1002C3808, type metadata accessor for Goldilocks_ExitMoveBatchFeedbackItem, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      sub_10010EC08(319, &unk_1002C3130, type metadata accessor for Goldilocks_ZoneID, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10010F3F4()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_10010EC08(319, &unk_1002C31F0, type metadata accessor for Goldilocks_ErrorInfo.ResultError, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10010F4F8()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_10010EC08(319, &unk_1002C39D0, type metadata accessor for Goldilocks_OperationControl, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_10010EC08(319, &unk_1002C31F0, type metadata accessor for Goldilocks_ErrorInfo.ResultError, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10010F634()
{
  sub_10010F6F8(319, &unk_1002C3A78, &type metadata for Goldilocks_OperationControl.OneOf_OptionalUnshareOperationPercentage, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10010F6F8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for Goldilocks_OperationControl.OneOf_OptionalUnshareOperationPercentage(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Goldilocks_OperationControl.OneOf_OptionalUnshareOperationPercentage(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

void sub_10010F834()
{
  sub_10010EC08(319, &qword_1002C3C58, type metadata accessor for Goldilocks_ErrorInfo.DatabaseFailure, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      sub_10010EC08(319, &unk_1002C3C60, type metadata accessor for Goldilocks_ErrorInfo.DatabaseFailure, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10010F970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *(a1 + 8);
    if (v6 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v12 = type metadata accessor for UnknownStorage();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a2)
    {
      v14 = v12;
      v15 = *(v13 + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }

    else
    {
      v17 = sub_1000BB130(a4, a5);
      v18 = *(*(v17 - 8) + 48);
      v19 = a1 + *(a3 + 28);

      return v18(v19, a2, v17);
    }
  }
}

uint64_t sub_10010FAC4(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v12 = type metadata accessor for UnknownStorage();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a3)
    {
      v14 = v12;
      v15 = *(v13 + 56);
      v16 = v7 + *(a4 + 24);

      return v15(v16, a2, a2, v14);
    }

    else
    {
      v17 = sub_1000BB130(a5, a6);
      v18 = *(*(v17 - 8) + 56);
      v19 = v7 + *(a4 + 28);

      return v18(v19, a2, a2, v17);
    }
  }

  return result;
}

void sub_10010FC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  type metadata accessor for UnknownStorage();
  if (v8 <= 0x3F)
  {
    sub_10010EC08(319, a5, a6, &type metadata accessor for Optional);
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10010FD60(uint64_t a1)
{
  if (a1 < 1)
  {
    v3 = [objc_opt_self() standardUserDefaults];
    v4 = String._bridgeToObjectiveC()();
    [v3 doubleForKey:v4];
  }

  return Date.init(timeIntervalSinceNow:)();
}

id sub_10010FE4C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = 0x65206E776F6E6B55;
  v9 = CPLErrorDomain;
  sub_1000BB130(&unk_1002C0E10, &qword_100245068);
  if ((a3 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v10 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (a4 < 1)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100244100;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v14;
    if (v10)
    {

      v8 = a2;
    }

    else
    {
      a3 = 0xEC000000726F7272;
    }

    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v8;
    *(inited + 56) = a3;
    v17 = v9;
    sub_100118E2C(inited);
    swift_setDeallocating();
    sub_1000CCDBC(inited + 32, &unk_1002C4040, &unk_100245070);
  }

  else
  {
    v11 = swift_initStackObject();
    *(v11 + 16) = xmmword_100244120;
    *(v11 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v11 + 40) = v12;
    if (v10)
    {

      v8 = a2;
    }

    else
    {
      a3 = 0xEC000000726F7272;
    }

    *(v11 + 72) = &type metadata for String;
    *(v11 + 48) = v8;
    *(v11 + 56) = a3;
    *(v11 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v11 + 88) = v15;
    *(v11 + 120) = type metadata accessor for Date();
    sub_1000CC37C((v11 + 96));
    v16 = v9;
    sub_10010FD60(a4);
    sub_100118E2C(v11);
    swift_setDeallocating();
    sub_1000BB130(&unk_1002C4040, &unk_100245070);
    swift_arrayDestroy();
  }

  v18 = objc_allocWithZone(NSError);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v20 = [v18 initWithDomain:v9 code:a1 userInfo:isa];

  return v20;
}

uint64_t sub_10011022C(uint64_t a1, void *a2, void (*a3)(uint64_t, id), uint64_t a4)
{
  v38 = a4;
  v39 = a3;
  v36 = a2;
  v5 = type metadata accessor for Utility_ErrorInfo.ResultError(0);
  v37 = *(v5 - 8);
  v6 = *(v37 + 64);
  __chkstk_darwin(v5);
  v35 = (&v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1000BB130(&qword_1002C0F70, &qword_100245190);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v34 - v13;
  v15 = sub_1000BB130(&unk_1002C3EE0, &unk_10024B648);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v34 - v17;
  v19 = type metadata accessor for Utility_DeleteZoneResponse(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CC794(a1, v18, &unk_1002C3EE0, &unk_10024B648);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_1000CCDBC(v18, &unk_1002C3EE0, &unk_10024B648);
    if (v36)
    {
      v24 = v36;
    }

    else
    {
      v24 = sub_10010FE4C(150, 0xD00000000000001ALL, 0x8000000100203B10, 0);
    }

    swift_errorRetain();
    v39(0, v24);
  }

  else
  {
    sub_1001112DC(v18, v23, type metadata accessor for Utility_DeleteZoneResponse);
    v25 = *(v19 + 24);
    sub_1000CC794(&v23[v25], v14, &qword_1002C0F70, &qword_100245190);
    v26 = *(v37 + 48);
    v27 = v26(v14, 1, v5);
    sub_1000CCDBC(v14, &qword_1002C0F70, &qword_100245190);
    if (v27 == 1)
    {
      v39(1, 0);
    }

    else
    {
      sub_1000CC794(&v23[v25], v12, &qword_1002C0F70, &qword_100245190);
      if (v26(v12, 1, v5) == 1)
      {
        v28 = v35;
        *v35 = 0;
        v28[1] = 0xE000000000000000;
        v28[2] = 0;
        *(v28 + 24) = 1;
        v29 = v28 + *(v5 + 24);
        UnknownStorage.init()();
        v30 = *(v5 + 28);
        v31 = type metadata accessor for Utility_ErrorInfo.DatabaseFailure(0);
        (*(*(v31 - 8) + 56))(v28 + v30, 1, 1, v31);
        if (v26(v12, 1, v5) != 1)
        {
          sub_1000CCDBC(v12, &qword_1002C0F70, &qword_100245190);
        }
      }

      else
      {
        v28 = v35;
        sub_1001112DC(v12, v35, type metadata accessor for Utility_ErrorInfo.ResultError);
      }

      v33 = sub_1001100C0(v28, 0);
      sub_10011127C(v28, type metadata accessor for Utility_ErrorInfo.ResultError);
      v39(0, v33);
    }

    return sub_10011127C(v23, type metadata accessor for Utility_DeleteZoneResponse);
  }
}

uint64_t sub_100110798(uint64_t a1, void *a2, void (*a3)(uint64_t, id))
{
  v6 = sub_1000BB130(&qword_1002C3EC8, &qword_10024B620);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v18 - v8;
  v10 = type metadata accessor for Utility_DeleteAllZonesResponse(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CC794(a1, v9, &qword_1002C3EC8, &qword_10024B620);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000CCDBC(v9, &qword_1002C3EC8, &qword_10024B620);
    if (a2)
    {
      v15 = a2;
    }

    else
    {
      v15 = sub_10010FE4C(150, 0xD000000000000018, 0x8000000100203AC0, 0);
    }

    swift_errorRetain();
    a3(0, v15);
  }

  else
  {
    sub_1001112DC(v9, v14, type metadata accessor for Utility_DeleteAllZonesResponse);
    if (*(v14 + 1))
    {
      if (a2)
      {
        v16 = a2;
      }

      else
      {
        v16 = sub_10010FE4C(150, 0xD000000000000018, 0x8000000100203AC0, 0);
      }

      swift_errorRetain();
      a3(0, v16);
    }

    else
    {
      a3(1, 0);
    }

    return sub_10011127C(v14, type metadata accessor for Utility_DeleteAllZonesResponse);
  }
}

id CPLCKPhotosSharedLibraryOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CPLCKUtilitiesOperation.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CPLCKUtilitiesOperation();
  return objc_msgSendSuper2(&v2, "init");
}

id CPLCKUtilitiesOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CPLCKUtilitiesOperation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t _s22CloudKitImplementation23CPLCKUtilitiesOperationC10deleteZone8withName17completionHandlerSo010CKDatabaseE0CSS_ySb_s5Error_pSgtctFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v6 = sub_1000BB130(&qword_1002C3ED0, &unk_10024B628);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v29 - v9;
  v11 = sub_1000BB130(&qword_1002C15F8, &qword_1002460F0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v29 - v13;
  v15 = type metadata accessor for Utility_DeleteZoneRequest(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = (&v29 - v22);
  *v23 = 0;
  v23[1] = 0xE000000000000000;
  v24 = &v29 + *(v21 + 20) - v22;
  UnknownStorage.init()();
  v31 = a1;
  v32 = a2;
  sub_1000D480C();
  static Message.with(_:)();
  sub_10011127C(v23, type metadata accessor for Utility_DeleteZoneRequest);
  sub_1001112DC(v20, v23, type metadata accessor for Utility_DeleteZoneRequest);
  sub_10011120C(v23, v14, type metadata accessor for Utility_DeleteZoneRequest);
  (*(v16 + 56))(v14, 0, 1, v15);
  (*(v7 + 104))(v10, enum case for CodeOperation.DestinationServer.default<A, B>(_:), v6);
  v25 = objc_allocWithZone(sub_1000BB130(&qword_1002C3ED8, &unk_10024B638));
  v26 = CodeOperation.init(service:functionName:request:destinationServer:)();
  v27 = swift_allocObject();
  *(v27 + 16) = v29;
  *(v27 + 24) = v30;

  dispatch thunk of CodeOperation.codeOperationCompletionBlock.setter();
  sub_10011127C(v23, type metadata accessor for Utility_DeleteZoneRequest);
  return v26;
}

uint64_t _s22CloudKitImplementation23CPLCKUtilitiesOperationC14deleteAllZones17completionHandlerSo010CKDatabaseE0CySb_s5Error_pSgtc_tFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BB130(&qword_1002C3EB8, &unk_10024B608);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v22 - v7;
  v9 = sub_1000BB130(&qword_1002C1608, &qword_100246100);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v22 - v11;
  v13 = type metadata accessor for Utility_DeleteAllZonesRequest(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  UnknownStorage.init()();
  sub_10011120C(v17, v12, type metadata accessor for Utility_DeleteAllZonesRequest);
  (*(v14 + 56))(v12, 0, 1, v13);
  (*(v5 + 104))(v8, enum case for CodeOperation.DestinationServer.default<A, B>(_:), v4);
  v18 = objc_allocWithZone(sub_1000BB130(&qword_1002C3EC0, &qword_10024B618));
  v19 = CodeOperation.init(service:functionName:request:destinationServer:)();
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;

  dispatch thunk of CodeOperation.codeOperationCompletionBlock.setter();
  sub_10011127C(v17, type metadata accessor for Utility_DeleteAllZonesRequest);
  return v19;
}

uint64_t sub_1001111C0(void *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1[1];

  *a1 = v4;
  a1[1] = v3;
  return result;
}

uint64_t sub_10011120C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10011127C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001112DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_100111348(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t sub_1001113B8(uint64_t a1, char a2)
{
  if (a2)
  {
    if (a1 > 5)
    {
      if (a1 > 8)
      {
        v7 = 0xD00000000000001BLL;
        if (a1 == 10)
        {
          v7 = 0xD000000000000016;
        }

        if (a1 == 9)
        {
          return 0xD000000000000019;
        }

        else
        {
          return v7;
        }
      }

      else
      {
        v6 = 0xD000000000000010;
        if (a1 != 7)
        {
          v6 = 0xD000000000000011;
        }

        if (a1 == 6)
        {
          return 0x746F4E20656E6F5ALL;
        }

        else
        {
          return v6;
        }
      }
    }

    else
    {
      v2 = 0x4520726576726553;
      v3 = 0xD000000000000014;
      if (a1 != 3)
      {
        v3 = 0xD000000000000011;
      }

      if (a1 == 1)
      {
        v2 = 0xD000000000000014;
      }

      if (!a1)
      {
        v2 = 0xD000000000000018;
      }

      if (a1 <= 2)
      {
        return v2;
      }

      else
      {
        return v3;
      }
    }
  }

  else
  {
    _StringGuts.grow(_:)(33);

    v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v5);

    return 0xD00000000000001FLL;
  }
}

uint64_t sub_100111608(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, unsigned __int16 a12)
{
  v39 = a8;
  v38 = a7;
  v35 = a4;
  v34 = a3;
  v41 = a12;
  v37 = a10;
  v36 = a9;
  v40 = type metadata accessor for UUID();
  v16 = *(v40 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v40);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Goldilocks_ZoneID(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10011B14C(a2, v24, type metadata accessor for Goldilocks_ZoneID);
  v25 = *(type metadata accessor for Goldilocks_InitiateExitRequest(0) + 52);
  sub_1000CCDBC(a1 + v25, &qword_1002C4050, &qword_1002483C0);
  sub_10011B1B4(v24, a1 + v25, type metadata accessor for Goldilocks_ZoneID);
  (*(v21 + 56))(a1 + v25, 0, 1, v20);
  *(a1 + 32) = v34;
  *(a1 + 40) = v35 & 1;
  v26 = *(a1 + 48);

  *(a1 + 48) = a5;
  v27 = *(a1 + 56);

  *(a1 + 56) = a6;
  *(a1 + 16) = v38;
  *(a1 + 24) = v39 & 1;
  *(a1 + 72) = v36;
  *(a1 + 80) = v37 & 1;
  UUID.init()();
  v28 = UUID.uuidString.getter();
  v30 = v29;
  (*(v16 + 8))(v19, v40);
  v31 = *(a1 + 8);

  v33 = v41;
  *a1 = v28;
  *(a1 + 8) = v30;
  if ((v33 & 0x100) == 0)
  {
    *(a1 + 88) = a11;
    *(a1 + 96) = v33 & 1;
  }

  return result;
}

uint64_t sub_1001118C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a1[1];

  *a1 = a2;
  a1[1] = a3;
  v11 = a1[3];

  a1[2] = a4;
  a1[3] = a5;
  return result;
}

uint64_t sub_100111938(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v25 = a4;
  v9 = type metadata accessor for UUID();
  v24 = *(v9 - 8);
  v10 = *(v24 + 64);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Goldilocks_ZoneID(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10011B14C(a2, v17, type metadata accessor for Goldilocks_ZoneID);
  v18 = *(type metadata accessor for Goldilocks_ExitMoveBatchRequest(0) + 28);
  sub_1000CCDBC(a1 + v18, &qword_1002C4050, &qword_1002483C0);
  sub_10011B1B4(v17, a1 + v18, type metadata accessor for Goldilocks_ZoneID);
  (*(v14 + 56))(a1 + v18, 0, 1, v13);
  *(a1 + 16) = a3;
  if (a5)
  {
    v19 = *(a1 + 8);

    *a1 = v25;
  }

  else
  {
    UUID.init()();
    v21 = UUID.uuidString.getter();
    a5 = v22;
    (*(v24 + 8))(v12, v9);
    v23 = *(a1 + 8);

    *a1 = v21;
  }

  *(a1 + 8) = a5;
  return result;
}

uint64_t sub_100111B78(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v11 = a1[1];

    *a1 = a2;
    a1[1] = a3;
  }

  else
  {
    UUID.init()();
    v13 = UUID.uuidString.getter();
    v15 = v14;
    (*(v7 + 8))(v10, v6);
    v16 = a1[1];

    *a1 = v13;
    a1[1] = v15;
  }

  return result;
}

uint64_t sub_100111C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a1 + 8);

  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 48) = Int32.init(truncating:)();
  v12 = *(a1 + 40);

  *(a1 + 32) = a5;
  *(a1 + 40) = a6;
  return result;
}

uint64_t sub_100111D28(uint64_t *a1, void *a2)
{
  v4 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  v36 = *(v4 - 8);
  v5 = *(v36 + 64);
  v6 = __chkstk_darwin(v4);
  v35[0] = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = v35 - v8;
  v10 = [a2 originRecordID];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = a1[1];

  *a1 = v11;
  a1[1] = v13;
  v15 = [a2 destinationRecordID];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = a1[3];

  a1[2] = v16;
  a1[3] = v18;
  v20 = [a2 errorMessage];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v24 = [a2 errorCode];
  v25 = [a2 errorDomain];
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  *v9 = 0;
  *(v9 + 1) = 0xE000000000000000;
  *(v9 + 2) = 0;
  v9[24] = 1;
  *(v9 + 4) = 0;
  *(v9 + 5) = 0xE000000000000000;
  *(v9 + 12) = 0;
  *(v9 + 7) = &_swiftEmptyArrayStorage;
  *(v9 + 8) = 0;
  *(v9 + 9) = 0xE000000000000000;
  *(v9 + 10) = 0;
  *(v9 + 11) = 0xE000000000000000;
  v29 = &v9[*(v4 + 44)];
  UnknownStorage.init()();
  v30 = *(v4 + 48);
  v31 = type metadata accessor for Goldilocks_ErrorInfo.DatabaseFailure(0);
  (*(*(v31 - 8) + 56))(&v9[v30], 1, 1, v31);
  v35[4] = v21;
  v35[5] = v23;
  v35[6] = v24;
  v35[7] = v26;
  v35[8] = v28;
  sub_10011B09C(&qword_1002C4090, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
  v32 = v35[0];
  static Message.with(_:)();

  sub_10011B0EC(v9, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
  sub_10011B1B4(v32, v9, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
  v33 = *(type metadata accessor for Goldilocks_ExitMoveBatchFeedbackItem(0) + 28);
  sub_1000CCDBC(a1 + v33, &qword_1002C2900, &qword_1002483B0);
  sub_10011B1B4(v9, a1 + v33, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
  return (*(v36 + 56))(a1 + v33, 0, 1, v4);
}

size_t sub_100112098(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v64 = a5;
  v65 = a6;
  v63 = a2;
  v66 = type metadata accessor for Goldilocks_ExitMoveBatchFeedbackItem(0);
  v68 = *(v66 - 8);
  v9 = *(v68 + 64);
  v10 = __chkstk_darwin(v66);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v67 = &v62 - v14;
  __chkstk_darwin(v13);
  v16 = &v62 - v15;
  v17 = type metadata accessor for Goldilocks_ZoneID(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v62 - v23;
  v25 = *(a1 + 2);

  *(a1 + 1) = v63;
  *(a1 + 2) = a3;
  v26 = a4;
  v27 = *(a4 + 24);
  v28 = *(v26 + 32);
  v29 = *(a1 + 4);

  *(a1 + 3) = v27;
  *(a1 + 4) = v28;
  v70 = v64;
  sub_10011B09C(&qword_1002C2D28, type metadata accessor for Goldilocks_ZoneID);
  v30 = v69;
  static Message.with(_:)();
  v64 = v24;
  sub_10011B14C(v24, v22, type metadata accessor for Goldilocks_ZoneID);
  v31 = *(type metadata accessor for Goldilocks_ExitMoveBatchErrorFeedbackRequest(0) + 32);
  sub_1000CCDBC(&a1[v31], &qword_1002C4050, &qword_1002483C0);
  sub_10011B1B4(v22, &a1[v31], type metadata accessor for Goldilocks_ZoneID);
  (*(v18 + 56))(&a1[v31], 0, 1, v17);
  v32 = v65;
  if (!(v65 >> 62))
  {
    v33 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v33)
    {
      goto LABEL_3;
    }

LABEL_16:
    sub_10011B0EC(v64, type metadata accessor for Goldilocks_ZoneID);
    v36 = &_swiftEmptyArrayStorage;
LABEL_17:
    v61 = *a1;

    *a1 = v36;
    return result;
  }

  v59 = v65;
  v60 = _CocoaArrayWrapper.endIndex.getter();
  v32 = v59;
  v33 = v60;
  if (!v60)
  {
    goto LABEL_16;
  }

LABEL_3:
  v34 = v32;
  v71 = &_swiftEmptyArrayStorage;
  result = sub_100118A00(0, v33 & ~(v33 >> 63), 0);
  if ((v33 & 0x8000000000000000) == 0)
  {
    v69 = v30;
    v63 = a1;
    v36 = v71;
    if ((v34 & 0xC000000000000001) != 0)
    {
      v37 = 0;
      do
      {
        v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        *v16 = 0;
        *(v16 + 1) = 0xE000000000000000;
        *(v16 + 2) = 0;
        *(v16 + 3) = 0xE000000000000000;
        v39 = v66;
        v40 = &v16[*(v66 + 24)];
        UnknownStorage.init()();
        v41 = *(v39 + 28);
        v42 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
        v43 = (*(*(v42 - 8) + 56))(&v16[v41], 1, 1, v42);
        __chkstk_darwin(v43);
        *(&v62 - 2) = v38;
        sub_10011B09C(&qword_1002C2DA8, type metadata accessor for Goldilocks_ExitMoveBatchFeedbackItem);
        v44 = v67;
        v45 = v69;
        static Message.with(_:)();
        v69 = v45;
        swift_unknownObjectRelease();
        sub_10011B0EC(v16, type metadata accessor for Goldilocks_ExitMoveBatchFeedbackItem);
        sub_10011B1B4(v44, v16, type metadata accessor for Goldilocks_ExitMoveBatchFeedbackItem);
        v71 = v36;
        v47 = v36[2];
        v46 = v36[3];
        if (v47 >= v46 >> 1)
        {
          sub_100118A00(v46 > 1, v47 + 1, 1);
          v36 = v71;
        }

        ++v37;
        v36[2] = v47 + 1;
        sub_10011B1B4(v16, v36 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v47, type metadata accessor for Goldilocks_ExitMoveBatchFeedbackItem);
      }

      while (v33 != v37);
    }

    else
    {
      v48 = (v34 + 32);
      do
      {
        v49 = *v48;
        *v12 = 0;
        *(v12 + 1) = 0xE000000000000000;
        *(v12 + 2) = 0;
        *(v12 + 3) = 0xE000000000000000;
        v50 = v66;
        v51 = *(v66 + 24);
        swift_unknownObjectRetain();
        UnknownStorage.init()();
        v52 = *(v50 + 28);
        v53 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
        v54 = (*(*(v53 - 8) + 56))(&v12[v52], 1, 1, v53);
        __chkstk_darwin(v54);
        *(&v62 - 2) = v49;
        sub_10011B09C(&qword_1002C2DA8, type metadata accessor for Goldilocks_ExitMoveBatchFeedbackItem);
        v55 = v67;
        v56 = v69;
        static Message.with(_:)();
        v69 = v56;
        swift_unknownObjectRelease();
        sub_10011B0EC(v12, type metadata accessor for Goldilocks_ExitMoveBatchFeedbackItem);
        sub_10011B1B4(v55, v12, type metadata accessor for Goldilocks_ExitMoveBatchFeedbackItem);
        v71 = v36;
        v58 = v36[2];
        v57 = v36[3];
        if (v58 >= v57 >> 1)
        {
          sub_100118A00(v57 > 1, v58 + 1, 1);
          v36 = v71;
        }

        v36[2] = v58 + 1;
        sub_10011B1B4(v12, v36 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v58, type metadata accessor for Goldilocks_ExitMoveBatchFeedbackItem);
        ++v48;
        --v33;
      }

      while (v33);
    }

    sub_10011B0EC(v64, type metadata accessor for Goldilocks_ZoneID);
    a1 = v63;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001127F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v25 = a5;
  v9 = type metadata accessor for Goldilocks_ZoneID(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v23[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v16 = &v23[-v15];
  v17 = *(a1 + 8);

  *a1 = a2;
  *(a1 + 8) = a3;
  v24 = a4;
  sub_10011B09C(&qword_1002C2D28, type metadata accessor for Goldilocks_ZoneID);
  static Message.with(_:)();
  sub_10011B14C(v16, v14, type metadata accessor for Goldilocks_ZoneID);
  v18 = *(type metadata accessor for Goldilocks_ExitStatusFeedbackRequest(0) + 28);
  sub_1000CCDBC(a1 + v18, &qword_1002C4050, &qword_1002483C0);
  sub_10011B1B4(v14, a1 + v18, type metadata accessor for Goldilocks_ZoneID);
  (*(v10 + 56))(a1 + v18, 0, 1, v9);
  v19 = sub_100119028(v25);
  v21 = v20;
  result = sub_10011B0EC(v16, type metadata accessor for Goldilocks_ZoneID);
  if ((v21 & 0x100) == 0)
  {
    *(a1 + 16) = v19;
    *(a1 + 24) = v21 & 1;
  }

  return result;
}

uint64_t sub_100112A28(uint64_t *a1, id a2)
{
  v4 = [a2 zoneName];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = a1[1];

  *a1 = v5;
  a1[1] = v7;
  v9 = [a2 ownerName];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = a1[3];

  a1[2] = v10;
  a1[3] = v12;
  return result;
}

id sub_100112AD4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  sub_100118E2C(&_swiftEmptyArrayStorage);
  v61 = a8;
  if (a4 >= 1)
  {
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
    v66 = type metadata accessor for Date();
    sub_1000CC37C(&v65);
    Date.init(timeIntervalSinceNow:)();
    sub_10011AE44(&v65, v64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1001180E8(v64, v14, v16, isUniquelyReferenced_nonNull_native);
  }

  v18 = objc_opt_self();
  v19 = [v18 standardUserDefaults];
  v20 = String._bridgeToObjectiveC()();
  v21 = [v19 stringForKey:v20];

  if (v21)
  {
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;
    v66 = &type metadata for String;
    *&v65 = v22;
    *(&v65 + 1) = v24;
    sub_10011AE44(&v65, v64);
    v28 = swift_isUniquelyReferenced_nonNull_native();
    sub_1001180E8(v64, v25, v27, v28);
LABEL_9:

    goto LABEL_10;
  }

  v29 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x2000000000000000) == 0)
  {
    v29 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (v29)
  {
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;
    v66 = &type metadata for String;
    *&v65 = a5;
    *(&v65 + 1) = a6;
    sub_10011AE44(&v65, v64);

    v33 = swift_isUniquelyReferenced_nonNull_native();
    sub_1001180E8(v64, v30, v32, v33);
    goto LABEL_9;
  }

LABEL_10:
  v34 = [v18 standardUserDefaults];
  v35 = String._bridgeToObjectiveC()();
  v36 = [v34 stringForKey:v35];

  if (v36)
  {
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;
    v66 = &type metadata for String;
    *&v65 = v37;
    *(&v65 + 1) = v39;
    sub_10011AE44(&v65, v64);
    v43 = swift_isUniquelyReferenced_nonNull_native();
    sub_1001180E8(v64, v40, v42, v43);
LABEL_16:

    goto LABEL_17;
  }

  v44 = HIBYTE(v61) & 0xF;
  if ((v61 & 0x2000000000000000) == 0)
  {
    v44 = a7 & 0xFFFFFFFFFFFFLL;
  }

  if (v44)
  {
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;
    v66 = &type metadata for String;
    *&v65 = a7;
    *(&v65 + 1) = v61;
    sub_10011AE44(&v65, v64);

    v48 = swift_isUniquelyReferenced_nonNull_native();
    sub_1001180E8(v64, v45, v47, v48);
    goto LABEL_16;
  }

LABEL_17:
  v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v51 = v50;
  v52 = HIBYTE(a3) & 0xF;
  v53 = a2;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v52 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v52)
  {
  }

  else
  {
    a3 = 0xED0000726F727265;
    v53 = 0x206E776F6E6B6E55;
  }

  v66 = &type metadata for String;
  *&v65 = v53;
  *(&v65 + 1) = a3;
  sub_10011AE44(&v65, v64);
  v54 = swift_isUniquelyReferenced_nonNull_native();
  sub_1001180E8(v64, v49, v51, v54);

  v55 = CPLErrorDomain;
  v56 = objc_allocWithZone(NSError);
  v57 = v55;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v59 = [v56 initWithDomain:v57 code:a1 userInfo:isa];

  return v59;
}

id CPLCKPhotosSharedLibraryExitResponse.stagingZoneID.getter()
{
  v1 = OBJC_IVAR___CPLCKPhotosSharedLibraryExitResponse_stagingZoneID;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void CPLCKPhotosSharedLibraryExitResponse.stagingZoneID.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CPLCKPhotosSharedLibraryExitResponse_stagingZoneID;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t CPLCKPhotosSharedLibraryExitResponse.error.getter()
{
  v1 = OBJC_IVAR___CPLCKPhotosSharedLibraryExitResponse_error;
  swift_beginAccess();
  v2 = *(v0 + v1);
  swift_errorRetain();
  return v2;
}

uint64_t CPLCKPhotosSharedLibraryExitResponse.error.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CPLCKPhotosSharedLibraryExitResponse_error;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id CPLCKPhotosSharedLibraryExitMoveBatchFeedbackItem.errorCode.getter()
{
  v1 = OBJC_IVAR___CPLCKPhotosSharedLibraryExitMoveBatchFeedbackItem_errorCode;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void CPLCKPhotosSharedLibraryExitMoveBatchFeedbackItem.errorCode.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CPLCKPhotosSharedLibraryExitMoveBatchFeedbackItem_errorCode;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_100113850(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];

  v6 = String._bridgeToObjectiveC()();

  return v6;
}

uint64_t sub_1001138D4(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

uint64_t sub_100113934(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = (a1 + *a4);
  swift_beginAccess();
  v10 = v9[1];
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_1001139AC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;
}

id CPLCKPhotosSharedLibraryExitMoveBatchFeedbackItem.init()()
{
  v1 = &v0[OBJC_IVAR___CPLCKPhotosSharedLibraryExitMoveBatchFeedbackItem_originRecordID];
  *v1 = 0;
  *(v1 + 1) = 0xE000000000000000;
  v2 = &v0[OBJC_IVAR___CPLCKPhotosSharedLibraryExitMoveBatchFeedbackItem_destinationRecordID];
  *v2 = 0;
  *(v2 + 1) = 0xE000000000000000;
  v3 = &v0[OBJC_IVAR___CPLCKPhotosSharedLibraryExitMoveBatchFeedbackItem_errorMessage];
  *v3 = 0;
  *(v3 + 1) = 0xE000000000000000;
  v4 = OBJC_IVAR___CPLCKPhotosSharedLibraryExitMoveBatchFeedbackItem_errorCode;
  *&v0[v4] = [objc_allocWithZone(NSNumber) init];
  v5 = &v0[OBJC_IVAR___CPLCKPhotosSharedLibraryExitMoveBatchFeedbackItem_errorDomain];
  *v5 = 0;
  *(v5 + 1) = 0xE000000000000000;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for CPLCKPhotosSharedLibraryExitMoveBatchFeedbackItem();
  return objc_msgSendSuper2(&v7, "init");
}

uint64_t sub_100113C88(uint64_t (*a1)(char *, uint64_t, uint64_t), void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t, uint64_t, _DWORD, id), uint64_t a4)
{
  v75 = a4;
  v76 = a3;
  v72 = a2;
  v77 = a1;
  v74 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  v4 = *(v74 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v74);
  v7 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for Goldilocks_OperationControl(0);
  v73 = *(v71 - 8);
  v8 = *(v73 + 64);
  __chkstk_darwin(v71);
  v69 = (&v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1000BB130(&qword_1002C2CF8, &qword_100248A10);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v68 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v68 - v14;
  v16 = sub_1000BB130(&qword_1002C2900, &qword_1002483B0);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v70 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v68 - v20;
  v22 = sub_1000BB130(&qword_1002C4120, &qword_10024B818);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = &v68 - v24;
  v26 = type metadata accessor for Goldilocks_SilentMoverRampingResponse(0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = (&v68 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000CC794(v77, v25, &qword_1002C4120, &qword_10024B818);
  if ((*(v27 + 48))(v25, 1, v26) != 1)
  {
    sub_10011B1B4(v25, v30, type metadata accessor for Goldilocks_SilentMoverRampingResponse);
    v32 = *(v26 + 32);
    sub_1000CC794(v30 + v32, v21, &qword_1002C2900, &qword_1002483B0);
    v77 = *(v4 + 48);
    v33 = v77(v21, 1, v74);
    sub_1000CCDBC(v21, &qword_1002C2900, &qword_1002483B0);
    if (v33 != 1 || (v34 = *(v26 + 28), sub_1000CC794(v30 + v34, v15, &qword_1002C2CF8, &qword_100248A10), v35 = *(v73 + 48), v73 += 48, v36 = v35(v15, 1, v71), sub_1000CCDBC(v15, &qword_1002C2CF8, &qword_100248A10), v36 == 1))
    {
      v37 = *v30;
      v38 = v30[1];
      v39 = v30[2];
      v40 = v70;
      sub_1000CC794(v30 + v32, v70, &qword_1002C2900, &qword_1002483B0);
      v41 = v74;
      v42 = v77;
      if (v77(v40, 1, v74) == 1)
      {
        *v7 = 0;
        *(v7 + 1) = 0xE000000000000000;
        *(v7 + 2) = 0;
        v7[24] = 1;
        *(v7 + 4) = 0;
        *(v7 + 5) = 0xE000000000000000;
        *(v7 + 12) = 0;
        *(v7 + 7) = &_swiftEmptyArrayStorage;
        *(v7 + 8) = 0;
        *(v7 + 9) = 0xE000000000000000;
        *(v7 + 10) = 0;
        *(v7 + 11) = 0xE000000000000000;
        v43 = &v7[*(v41 + 44)];
        UnknownStorage.init()();
        v44 = *(v41 + 48);
        v45 = type metadata accessor for Goldilocks_ErrorInfo.DatabaseFailure(0);
        (*(*(v45 - 8) + 56))(&v7[v44], 1, 1, v45);
        result = v42(v40, 1, v41);
        if (result != 1)
        {
          result = sub_1000CCDBC(v40, &qword_1002C2900, &qword_1002483B0);
        }
      }

      else
      {
        result = sub_10011B1B4(v40, v7, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
      }

      if ((v39 * 1000) >> 64 == (1000 * v39) >> 63)
      {
        v47 = *(v7 + 1);
        v48 = *(v7 + 2);
        v49 = v7[24];
        v50 = *v7;
        v51 = HIBYTE(v47) & 0xF;
        if ((v47 & 0x2000000000000000) == 0)
        {
          v51 = *v7 & 0xFFFFFFFFFFFFLL;
        }

        if (v51)
        {
          v52 = *(v7 + 1);

          if (v49)
          {
LABEL_17:
            v53 = qword_10024B858[v48];
LABEL_20:
            v55 = sub_100112AD4(v53, v50, v47, 1000 * v39, *(v7 + 8), *(v7 + 9), *(v7 + 10), *(v7 + 11));

            sub_10011B0EC(v7, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
            v76(0, v37, v38, v39, 0, 0, 0, 0, 0, v55);

            return sub_10011B0EC(v30, type metadata accessor for Goldilocks_SilentMoverRampingResponse);
          }
        }

        else
        {
          v50 = sub_1001113B8(*(v7 + 2), v7[24]);
          v47 = v54;
          if (v49)
          {
            goto LABEL_17;
          }
        }

        v53 = 150;
        goto LABEL_20;
      }

      __break(1u);
      goto LABEL_34;
    }

    v56 = v68;
    sub_1000CC794(v30 + v34, v68, &qword_1002C2CF8, &qword_100248A10);
    v57 = v71;
    if (v35(v56, 1, v71) == 1)
    {
      v58 = v69;
      *v69 = 0;
      *(v58 + 8) = 1;
      *(v58 + 9) = 0;
      *(v58 + 13) = 0;
      v59 = v58 + *(v57 + 44);
      UnknownStorage.init()();
      result = v35(v56, 1, v57);
      if (result != 1)
      {
        result = sub_1000CCDBC(v56, &qword_1002C2CF8, &qword_100248A10);
      }
    }

    else
    {
      v58 = v69;
      result = sub_10011B1B4(v56, v69, type metadata accessor for Goldilocks_OperationControl);
    }

    v60 = *(v58 + 9);
    v61 = *(v58 + 10);
    v62 = *(v58 + 11);
    v63 = *(v58 + 12);
    v64 = *(v58 + 13);
    v65 = *(v58 + 14);
    v66 = v30[2];
    if (v58[1])
    {
      v76(1, *v30, v30[1], v66, 0, 0, v60, v61, *(v58 + 11), 0);
    }

    else
    {
      if ((~*v58 & 0x7FF0000000000000) == 0)
      {
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v67 = *v58;
      if (*v58 <= -2147483650.0)
      {
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      if (v67 >= 2147483650.0)
      {
LABEL_36:
        __break(1u);
        return result;
      }

      v76(1, *v30, v30[1], v66, 1, v67, v60, v61, *(v58 + 11), 0);
    }

    sub_10011B0EC(v58, type metadata accessor for Goldilocks_OperationControl);
    return sub_10011B0EC(v30, type metadata accessor for Goldilocks_SilentMoverRampingResponse);
  }

  sub_1000CCDBC(v25, &qword_1002C4120, &qword_10024B818);
  if (v72)
  {
    v31 = v72;
  }

  else
  {
    v31 = sub_100112AD4(150, 0xD00000000000001ALL, 0x8000000100203B10, 0, 0, 0xE000000000000000, 0, 0xE000000000000000);
  }

  swift_errorRetain();
  v76(0, 0, 0, 0, 0, 0, 0, 0, 0, v31);
}

void sub_100114600(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, unsigned int a6, char a7, char a8, int a9, uint64_t a10, uint64_t a11)
{
  if (a3)
  {
    v14 = String._bridgeToObjectiveC()();
    if (a10)
    {
LABEL_3:
      v15 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    v14 = 0;
    if (a10)
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
LABEL_6:
  v16 = v15;
  (*(a11 + 16))(a11, a1 & 1, v14, a4, a5 & 1, a6, a7 & 1, a8 & 1, a9 & 0x1010101, v15);
}

uint64_t sub_10011470C(uint64_t a1, void *a2, void (*a3)(void *, uint64_t, uint64_t, uint64_t, uint64_t, BOOL, id), uint64_t a4)
{
  v55 = a4;
  v56 = a3;
  v6 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  v53 = *(v6 - 8);
  v54 = v6;
  v7 = *(v53 + 64);
  __chkstk_darwin(v6);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BB130(&qword_1002C2900, &qword_1002483B0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v52 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v49 - v14;
  v16 = sub_1000BB130(&qword_1002C40F0, &qword_10024B7F0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v49 - v18;
  v20 = type metadata accessor for Goldilocks_ExitMoveBatchResponse(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CC794(a1, v19, &qword_1002C40F0, &qword_10024B7F0);
  if ((*(v21 + 48))(v19, 1, v20) != 1)
  {
    sub_10011B1B4(v19, v24, type metadata accessor for Goldilocks_ExitMoveBatchResponse);
    v26 = *(v20 + 40);
    sub_1000CC794(&v24[v26], v15, &qword_1002C2900, &qword_1002483B0);
    v27 = v54;
    v28 = *(v53 + 48);
    v29 = v28(v15, 1, v54);
    sub_1000CCDBC(v15, &qword_1002C2900, &qword_1002483B0);
    if (v29 == 1)
    {
      v30 = *(v24 + 5);
      if (!v30[2])
      {
        v30 = &_swiftEmptyArrayStorage;
      }

      v56(v30, *v24, *(v24 + 1), *(v24 + 3), *(v24 + 4), (v24[48] & 1) == 0, 0);
      return sub_10011B0EC(v24, type metadata accessor for Goldilocks_ExitMoveBatchResponse);
    }

    v31 = *(v24 + 1);
    v53 = *v24;
    v32 = *(v24 + 3);
    v50 = *(v24 + 4);
    v51 = v31;
    v33 = v52;
    sub_1000CC794(&v24[v26], v52, &qword_1002C2900, &qword_1002483B0);
    if (v28(v33, 1, v27) == 1)
    {
      *v9 = 0;
      *(v9 + 1) = 0xE000000000000000;
      *(v9 + 2) = 0;
      v9[24] = 1;
      *(v9 + 4) = 0;
      *(v9 + 5) = 0xE000000000000000;
      *(v9 + 12) = 0;
      *(v9 + 7) = &_swiftEmptyArrayStorage;
      *(v9 + 8) = 0;
      *(v9 + 9) = 0xE000000000000000;
      *(v9 + 10) = 0;
      *(v9 + 11) = 0xE000000000000000;
      v34 = &v9[*(v27 + 44)];
      UnknownStorage.init()();
      v35 = *(v27 + 48);
      v36 = type metadata accessor for Goldilocks_ErrorInfo.DatabaseFailure(0);
      (*(*(v36 - 8) + 56))(&v9[v35], 1, 1, v36);
      result = v28(v33, 1, v27);
      if (result != 1)
      {
        result = sub_1000CCDBC(v33, &qword_1002C2900, &qword_1002483B0);
      }
    }

    else
    {
      result = sub_10011B1B4(v33, v9, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
    }

    v38 = *(v24 + 2);
    v39 = 1000 * v38;
    if ((v38 * 1000) >> 64 != (1000 * v38) >> 63)
    {
      __break(1u);
      return result;
    }

    v40 = *(v9 + 1);
    v41 = *(v9 + 2);
    v42 = v9[24];
    v43 = *v9;
    v44 = HIBYTE(v40) & 0xF;
    if ((v40 & 0x2000000000000000) == 0)
    {
      v44 = *v9 & 0xFFFFFFFFFFFFLL;
    }

    if (v44)
    {
      v45 = *(v9 + 1);

      if (v42)
      {
LABEL_18:
        v46 = qword_10024B858[v41];
LABEL_23:
        v48 = sub_100112AD4(v46, v43, v40, v39, *(v9 + 8), *(v9 + 9), *(v9 + 10), *(v9 + 11));

        sub_10011B0EC(v9, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
        v56(0, v53, v51, v32, v50, 0, v48);

        return sub_10011B0EC(v24, type metadata accessor for Goldilocks_ExitMoveBatchResponse);
      }
    }

    else
    {
      v43 = sub_1001113B8(*(v9 + 2), v9[24]);
      v40 = v47;
      if (v42)
      {
        goto LABEL_18;
      }
    }

    v46 = 150;
    goto LABEL_23;
  }

  sub_1000CCDBC(v19, &qword_1002C40F0, &qword_10024B7F0);
  if (a2)
  {
    v25 = a2;
  }

  else
  {
    v25 = sub_100112AD4(150, 0xD00000000000001ALL, 0x8000000100203B10, 0, 0, 0xE000000000000000, 0, 0xE000000000000000);
  }

  swift_errorRetain();
  v56(0, 0, 0, 0, 0, 0, v25);
}

void sub_100114D80(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, NSString a5, char a6, uint64_t a7, uint64_t a8)
{
  v12 = a3;
  if (a1)
  {
    v13.super.isa = Array._bridgeToObjectiveC()().super.isa;
    if (!v12)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v13.super.isa = 0;
  if (a3)
  {
LABEL_3:
    v12 = String._bridgeToObjectiveC()();
  }

LABEL_4:
  if (a5)
  {
    a5 = String._bridgeToObjectiveC()();
  }

  if (a7)
  {
    v14 = _convertErrorToNSError(_:)();
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  (*(a8 + 16))(a8, v13.super.isa, v12, a5, a6 & 1);
}

uint64_t sub_100114E80(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, id), uint64_t a4)
{
  v57 = a4;
  v58 = a3;
  v6 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  v55 = *(v6 - 8);
  v56 = v6;
  v7 = *(v55 + 64);
  __chkstk_darwin(v6);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BB130(&qword_1002C2900, &qword_1002483B0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v54 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v49 - v14;
  v16 = sub_1000BB130(&qword_1002C40F0, &qword_10024B7F0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v49 - v18;
  v20 = type metadata accessor for Goldilocks_ExitMoveBatchResponse(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CC794(a1, v19, &qword_1002C40F0, &qword_10024B7F0);
  if ((*(v21 + 48))(v19, 1, v20) != 1)
  {
    sub_10011B1B4(v19, v24, type metadata accessor for Goldilocks_ExitMoveBatchResponse);
    v26 = *(v20 + 40);
    sub_1000CC794(&v24[v26], v15, &qword_1002C2900, &qword_1002483B0);
    v27 = v56;
    v28 = *(v55 + 48);
    v29 = v28(v15, 1, v56);
    sub_1000CCDBC(v15, &qword_1002C2900, &qword_1002483B0);
    v30 = v24[48];
    v31 = *v24;
    if (v29 == 1)
    {
      v58(1, v30, v31, *(v24 + 1), *(v24 + 3), *(v24 + 4), *(v24 + 2), *(v24 + 5), 0);
      return sub_10011B0EC(v24, type metadata accessor for Goldilocks_ExitMoveBatchResponse);
    }

    v55 = *(v24 + 1);
    v32 = *(v24 + 3);
    v52 = *(v24 + 2);
    v53 = v32;
    v33 = *(v24 + 5);
    v50 = *(v24 + 4);
    v51 = v33;
    v34 = &v24[v26];
    v35 = v54;
    sub_1000CC794(v34, v54, &qword_1002C2900, &qword_1002483B0);
    if (v28(v35, 1, v27) == 1)
    {
      *v9 = 0;
      *(v9 + 1) = 0xE000000000000000;
      *(v9 + 2) = 0;
      v9[24] = 1;
      *(v9 + 4) = 0;
      *(v9 + 5) = 0xE000000000000000;
      *(v9 + 12) = 0;
      *(v9 + 7) = &_swiftEmptyArrayStorage;
      *(v9 + 8) = 0;
      *(v9 + 9) = 0xE000000000000000;
      *(v9 + 10) = 0;
      *(v9 + 11) = 0xE000000000000000;
      v36 = &v9[*(v27 + 44)];
      UnknownStorage.init()();
      v37 = *(v27 + 48);
      v38 = type metadata accessor for Goldilocks_ErrorInfo.DatabaseFailure(0);
      (*(*(v38 - 8) + 56))(&v9[v37], 1, 1, v38);
      if (v28(v35, 1, v27) != 1)
      {
        sub_1000CCDBC(v35, &qword_1002C2900, &qword_1002483B0);
      }
    }

    else
    {
      sub_10011B1B4(v35, v9, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
    }

    v40 = *(v9 + 1);
    v41 = *(v9 + 2);
    v42 = v9[24];
    v43 = *v9;
    v44 = HIBYTE(v40) & 0xF;
    if ((v40 & 0x2000000000000000) == 0)
    {
      v44 = *v9 & 0xFFFFFFFFFFFFLL;
    }

    if (v44)
    {
      v45 = *(v9 + 1);

      if (v42)
      {
LABEL_16:
        v46 = qword_10024B858[v41];
LABEL_19:
        v48 = sub_100112AD4(v46, v43, v40, 0, *(v9 + 8), *(v9 + 9), *(v9 + 10), *(v9 + 11));

        sub_10011B0EC(v9, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
        v58(0, v30, v31, v55, v53, v50, v52, v51, v48);

        return sub_10011B0EC(v24, type metadata accessor for Goldilocks_ExitMoveBatchResponse);
      }
    }

    else
    {
      v43 = sub_1001113B8(*(v9 + 2), v9[24]);
      v40 = v47;
      if (v42)
      {
        goto LABEL_16;
      }
    }

    v46 = 150;
    goto LABEL_19;
  }

  sub_1000CCDBC(v19, &qword_1002C40F0, &qword_10024B7F0);
  if (a2)
  {
    v25 = a2;
  }

  else
  {
    v25 = sub_100112AD4(150, 0xD00000000000001ALL, 0x8000000100203B10, 0, 0, 0xE000000000000000, 0, 0xE000000000000000);
  }

  swift_errorRetain();
  v58(0, 0, 0, 0, 0, 0, 0, 0, v25);
}

void sub_10011550C(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, Class isa, uint64_t a9, uint64_t a10)
{
  v12 = a6;
  if (a4)
  {
    v15 = String._bridgeToObjectiveC()();
    if (!v12)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v15 = 0;
  if (a6)
  {
LABEL_3:
    v12 = String._bridgeToObjectiveC()();
  }

LABEL_4:
  if (isa)
  {
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  if (a9)
  {
    v16 = _convertErrorToNSError(_:)();
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;
  (*(a10 + 16))(a10, a1 & 1, a2 & 1, v15, v12, a7, isa);
}

uint64_t sub_100115628(uint64_t a1, char *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, void), uint64_t a4)
{
  v132 = a4;
  v133 = a3;
  v147 = a2;
  v145 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  v131 = *(v145 - 8);
  v5 = *(v131 + 64);
  v6 = __chkstk_darwin(v145);
  v130 = (&v125 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v134 = (&v125 - v8);
  v9 = sub_1000BB130(&qword_1002C2900, &qword_1002483B0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v127 = &v125 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v135 = &v125 - v14;
  v15 = __chkstk_darwin(v13);
  v144 = &v125 - v16;
  __chkstk_darwin(v15);
  v129 = &v125 - v17;
  v18 = sub_1000BB130(&qword_1002C4050, &qword_1002483C0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v143 = &v125 - v20;
  v142 = type metadata accessor for Goldilocks_ZoneID(0);
  v21 = *(v142 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v142);
  v24 = (&v125 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v148 = type metadata accessor for Goldilocks_ParticipantExitResult(0);
  v25 = *(v148 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v148);
  v136 = &v125 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1000BB130(&qword_1002C40C0, &qword_10024B7D0);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v31 = &v125 - v30;
  v32 = type metadata accessor for Goldilocks_InitiateExitResponse(0);
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  v36 = &v125 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CC794(a1, v31, &qword_1002C40C0, &qword_10024B7D0);
  v37 = *(v33 + 48);
  v128 = v32;
  if (v37(v31, 1, v32) != 1)
  {
    sub_10011B1B4(v31, v36, type metadata accessor for Goldilocks_InitiateExitResponse);
    v150 = &_swiftEmptyArrayStorage;
    v39 = *(v36 + 2);
    v40 = *(v39 + 16);
    v41 = v36;
    if (v40)
    {
      v126 = v36;
      v42 = sub_1000CC8B0(0, &qword_1002C40C8, CKRecordZoneID_ptr);
      v43 = v39 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
      v140 = *(v25 + 72);
      v141 = v42;
      v44 = (v21 + 48);
      v45 = (v131 + 48);
      v46 = v136;
      v138 = (v131 + 48);
      v139 = v44;
      v137 = v24;
      while (1)
      {
        v147 = v40;
        sub_10011B14C(v43, v46, type metadata accessor for Goldilocks_ParticipantExitResult);
        v47 = v143;
        sub_1000CC794(v46 + *(v148 + 28), v143, &qword_1002C4050, &qword_1002483C0);
        v48 = *v44;
        v49 = v142;
        if ((*v44)(v47, 1, v142) == 1)
        {
          *v24 = 0;
          v24[1] = 0xE000000000000000;
          v24[2] = 0;
          v24[3] = 0xE000000000000000;
          v50 = v24 + *(v49 + 24);
          UnknownStorage.init()();
          if (v48(v47, 1, v49) != 1)
          {
            sub_1000CCDBC(v47, &qword_1002C4050, &qword_1002483C0);
          }
        }

        else
        {
          sub_10011B1B4(v47, v24, type metadata accessor for Goldilocks_ZoneID);
        }

        v51 = *v24;
        v52 = v24[1];
        v53 = v24[2];
        v54 = v24[3];

        v55._countAndFlagsBits = v51;
        v55._object = v52;
        v56._countAndFlagsBits = v53;
        v56._object = v54;
        isa = CKRecordZoneID.init(zoneName:ownerName:)(v55, v56).super.isa;
        v57 = *(v148 + 24);
        v58 = v144;
        sub_1000CC794(v46 + v57, v144, &qword_1002C2900, &qword_1002483B0);
        v59 = *v45;
        v60 = v145;
        LODWORD(v51) = (*v45)(v58, 1, v145);
        sub_1000CCDBC(v58, &qword_1002C2900, &qword_1002483B0);
        if (v51 != 1)
        {
          break;
        }

        v61 = 0;
        v24 = v137;
LABEL_24:
        v79 = *v46;
        v78 = v46[1];
        v80 = v46;
        v81 = type metadata accessor for CPLCKPhotosSharedLibraryExitResponse();
        v82 = objc_allocWithZone(v81);
        v83 = &v82[OBJC_IVAR___CPLCKPhotosSharedLibraryExitResponse_participantUserID];
        *v83 = 0;
        *(v83 + 1) = 0xE000000000000000;
        v84 = OBJC_IVAR___CPLCKPhotosSharedLibraryExitResponse_error;
        *&v82[OBJC_IVAR___CPLCKPhotosSharedLibraryExitResponse_error] = 0;
        swift_beginAccess();
        *v83 = v79;
        *(v83 + 1) = v78;
        v85 = isa;
        *&v82[OBJC_IVAR___CPLCKPhotosSharedLibraryExitResponse_stagingZoneID] = isa;
        swift_beginAccess();
        *&v82[v84] = v61;
        v86 = v85;

        swift_errorRetain();
        v149.receiver = v82;
        v149.super_class = v81;
        v87 = objc_msgSendSuper2(&v149, "init");

        v88 = v87;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v150 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v150 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v89 = *((v150 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        sub_10011B0EC(v24, type metadata accessor for Goldilocks_ZoneID);
        sub_10011B0EC(v80, type metadata accessor for Goldilocks_ParticipantExitResult);
        v44 = v139;
        v43 += v140;
        v40 = v147 - 1;
        v46 = v80;
        v45 = v138;
        if (v147 == 1)
        {
          v90 = v150;
          v41 = v126;
          goto LABEL_31;
        }
      }

      v62 = v135;
      sub_1000CC794(v46 + v57, v135, &qword_1002C2900, &qword_1002483B0);
      if (v59(v62, 1, v60) == 1)
      {
        v63 = v134;
        *v134 = 0;
        v63[1] = 0xE000000000000000;
        v63[2] = 0;
        *(v63 + 24) = 1;
        v63[4] = 0;
        v63[5] = 0xE000000000000000;
        *(v63 + 12) = 0;
        v63[7] = &_swiftEmptyArrayStorage;
        v63[8] = 0;
        v63[9] = 0xE000000000000000;
        v63[10] = 0;
        v63[11] = 0xE000000000000000;
        v64 = v63 + *(v60 + 44);
        UnknownStorage.init()();
        v65 = *(v60 + 48);
        v66 = type metadata accessor for Goldilocks_ErrorInfo.DatabaseFailure(0);
        (*(*(v66 - 8) + 56))(v63 + v65, 1, 1, v66);
        v67 = v60;
        v68 = v63;
        v69 = v59(v62, 1, v67);
        v24 = v137;
        if (v69 != 1)
        {
          sub_1000CCDBC(v62, &qword_1002C2900, &qword_1002483B0);
        }
      }

      else
      {
        v68 = v134;
        sub_10011B1B4(v62, v134, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
        v24 = v137;
      }

      v70 = v68[1];
      v71 = v68[2];
      v72 = *(v68 + 24);
      v73 = *v68;
      v74 = HIBYTE(v70) & 0xF;
      if ((v70 & 0x2000000000000000) == 0)
      {
        v74 = *v68 & 0xFFFFFFFFFFFFLL;
      }

      if (v74)
      {
        v75 = v68[1];

        if (v72)
        {
LABEL_20:
          v76 = qword_10024B858[v71];
LABEL_23:
          v46 = v136;
          v61 = sub_100112AD4(v76, v73, v70, 0, v68[8], v68[9], v68[10], v68[11]);

          sub_10011B0EC(v68, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
          swift_errorRetain();
          goto LABEL_24;
        }
      }

      else
      {
        v73 = sub_1001113B8(v68[2], *(v68 + 24));
        v70 = v77;
        if (v72)
        {
          goto LABEL_20;
        }
      }

      v76 = 150;
      goto LABEL_23;
    }

    v90 = &_swiftEmptyArrayStorage;
LABEL_31:
    v92 = [objc_opt_self() standardUserDefaults];
    v93 = String._bridgeToObjectiveC()();
    v94 = [v92 BOOLForKey:v93];

    v95 = *(v128 + 28);
    v96 = v129;
    sub_1000CC794(v41 + v95, v129, &qword_1002C2900, &qword_1002483B0);
    v97 = *(v131 + 48);
    v98 = v97(v96, 1, v145);
    sub_1000CCDBC(v96, &qword_1002C2900, &qword_1002483B0);
    v99 = v130;
    if (v98 == 1)
    {
      if ((v94 & 1) == 0)
      {
        v100 = *v41;
        v101 = v41[1];

        if (v90 >> 62)
        {
          sub_1000BB130(&qword_1002C4010, &qword_10024B760);
          v124 = _bridgeCocoaArray<A>(_:)();
          swift_bridgeObjectRelease_n();
          v102 = v124;
        }

        else
        {
          dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();

          v102 = v90;
        }

        v133(1, v100, v101, v102, 0);

        return sub_10011B0EC(v41, type metadata accessor for Goldilocks_InitiateExitResponse);
      }
    }

    else if ((v94 & 1) == 0)
    {
      v119 = v127;
      sub_1000CC794(v41 + v95, v127, &qword_1002C2900, &qword_1002483B0);
      v120 = v145;
      if (v97(v119, 1, v145) == 1)
      {
        *v99 = 0;
        *(v99 + 8) = 0xE000000000000000;
        *(v99 + 16) = 0;
        *(v99 + 24) = 1;
        *(v99 + 32) = 0;
        *(v99 + 40) = 0xE000000000000000;
        *(v99 + 48) = 0;
        *(v99 + 56) = &_swiftEmptyArrayStorage;
        *(v99 + 64) = 0;
        *(v99 + 72) = 0xE000000000000000;
        *(v99 + 80) = 0;
        *(v99 + 88) = 0xE000000000000000;
        v121 = v99 + *(v120 + 44);
        UnknownStorage.init()();
        v122 = *(v120 + 48);
        v123 = type metadata accessor for Goldilocks_ErrorInfo.DatabaseFailure(0);
        (*(*(v123 - 8) + 56))(v99 + v122, 1, 1, v123);
        if (v97(v119, 1, v120) != 1)
        {
          sub_1000CCDBC(v119, &qword_1002C2900, &qword_1002483B0);
        }
      }

      else
      {
        sub_10011B1B4(v119, v99, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
      }

LABEL_38:
      v107 = *v41;
      v108 = v41[1];

      if (v90 >> 62)
      {
        sub_1000BB130(&qword_1002C4010, &qword_10024B760);
        v109 = _bridgeCocoaArray<A>(_:)();
      }

      else
      {
        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        v109 = v90;
      }

      v110 = *(v99 + 8);
      v111 = *(v99 + 16);
      v112 = *(v99 + 24);
      v113 = *v99;
      v114 = HIBYTE(v110) & 0xF;
      if ((v110 & 0x2000000000000000) == 0)
      {
        v114 = *v99 & 0xFFFFFFFFFFFFLL;
      }

      if (v114)
      {
        v115 = *(v99 + 8);

        if (v112)
        {
LABEL_44:
          v116 = qword_10024B858[v111];
LABEL_47:
          v118 = sub_100112AD4(v116, v113, v110, 0, *(v99 + 64), *(v99 + 72), *(v99 + 80), *(v99 + 88));

          v133(0, v107, v108, v109, v118);

          sub_10011B0EC(v99, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
          return sub_10011B0EC(v41, type metadata accessor for Goldilocks_InitiateExitResponse);
        }
      }

      else
      {
        v113 = sub_1001113B8(*(v99 + 16), *(v99 + 24));
        v110 = v117;
        if (v112)
        {
          goto LABEL_44;
        }
      }

      v116 = 150;
      goto LABEL_47;
    }

    *v130 = 0;
    *(v99 + 8) = 0xE000000000000000;
    *(v99 + 16) = 0;
    *(v99 + 24) = 1;
    *(v99 + 32) = 0;
    *(v99 + 40) = 0xE000000000000000;
    *(v99 + 48) = 0;
    *(v99 + 56) = &_swiftEmptyArrayStorage;
    *(v99 + 64) = 0;
    *(v99 + 72) = 0xE000000000000000;
    *(v99 + 80) = 0;
    *(v99 + 88) = 0xE000000000000000;
    v103 = v145;
    v104 = v99 + *(v145 + 44);
    UnknownStorage.init()();
    v105 = *(v103 + 48);
    v106 = type metadata accessor for Goldilocks_ErrorInfo.DatabaseFailure(0);
    (*(*(v106 - 8) + 56))(v99 + v105, 1, 1, v106);
    goto LABEL_38;
  }

  sub_1000CCDBC(v31, &qword_1002C40C0, &qword_10024B7D0);
  if (v147)
  {
    v38 = v147;
  }

  else
  {
    v38 = sub_100112AD4(150, 0xD00000000000001ALL, 0x8000000100203B10, 0, 0, 0xE000000000000000, 0, 0xE000000000000000);
  }

  swift_errorRetain();
  v133(0, 0, 0, 0, v38);
}

void sub_100116634(char a1, uint64_t a2, uint64_t a3, objc_class *a4, uint64_t a5, uint64_t a6)
{
  isa = a4;
  if (a3)
  {
    v10 = String._bridgeToObjectiveC()();
    if (!isa)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v10 = 0;
  if (a4)
  {
LABEL_3:
    sub_1000BB130(&qword_1002C4010, &qword_10024B760);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

LABEL_4:
  if (a5)
  {
    v11 = _convertErrorToNSError(_:)();
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  (*(a6 + 16))(a6, a1 & 1, v10, isa);
}

uint64_t sub_100116728(uint64_t a1, void *a2, void (*a3)(uint64_t, id), uint64_t a4)
{
  v48 = a4;
  v49 = a3;
  v6 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  v46 = *(v6 - 8);
  v47 = v6;
  v7 = *(v46 + 64);
  __chkstk_darwin(v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BB130(&qword_1002C2900, &qword_1002483B0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v45 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v44 - v14;
  v16 = sub_1000BB130(&unk_1002C4080, &qword_10024B7A8);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v44 - v18;
  v20 = type metadata accessor for Goldilocks_ExitMoveBatchErrorFeedbackResponse(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CC794(a1, v19, &unk_1002C4080, &qword_10024B7A8);
  if ((*(v21 + 48))(v19, 1, v20) != 1)
  {
    sub_10011B1B4(v19, v24, type metadata accessor for Goldilocks_ExitMoveBatchErrorFeedbackResponse);
    v26 = *(v20 + 20);
    sub_1000CC794(&v24[v26], v15, &qword_1002C2900, &qword_1002483B0);
    v27 = v47;
    v28 = *(v46 + 48);
    v29 = v28(v15, 1, v47);
    sub_1000CCDBC(v15, &qword_1002C2900, &qword_1002483B0);
    if (v29 == 1)
    {
      v49(1, 0);
      return sub_10011B0EC(v24, type metadata accessor for Goldilocks_ExitMoveBatchErrorFeedbackResponse);
    }

    v30 = v45;
    sub_1000CC794(&v24[v26], v45, &qword_1002C2900, &qword_1002483B0);
    if (v28(v30, 1, v27) == 1)
    {
      *v9 = 0;
      *(v9 + 1) = 0xE000000000000000;
      *(v9 + 2) = 0;
      v9[24] = 1;
      *(v9 + 4) = 0;
      *(v9 + 5) = 0xE000000000000000;
      *(v9 + 12) = 0;
      *(v9 + 7) = &_swiftEmptyArrayStorage;
      *(v9 + 8) = 0;
      *(v9 + 9) = 0xE000000000000000;
      *(v9 + 10) = 0;
      *(v9 + 11) = 0xE000000000000000;
      v31 = &v9[*(v27 + 44)];
      UnknownStorage.init()();
      v32 = *(v27 + 48);
      v33 = type metadata accessor for Goldilocks_ErrorInfo.DatabaseFailure(0);
      (*(*(v33 - 8) + 56))(&v9[v32], 1, 1, v33);
      if (v28(v30, 1, v27) != 1)
      {
        sub_1000CCDBC(v30, &qword_1002C2900, &qword_1002483B0);
      }
    }

    else
    {
      sub_10011B1B4(v30, v9, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
    }

    v35 = *(v9 + 1);
    v36 = *(v9 + 2);
    v37 = v9[24];
    v38 = *v9;
    v39 = HIBYTE(v35) & 0xF;
    if ((v35 & 0x2000000000000000) == 0)
    {
      v39 = *v9 & 0xFFFFFFFFFFFFLL;
    }

    if (v39)
    {
      v40 = *(v9 + 1);

      if (v37)
      {
LABEL_16:
        v41 = qword_10024B858[v36];
LABEL_19:
        v43 = sub_100112AD4(v41, v38, v35, 0, *(v9 + 8), *(v9 + 9), *(v9 + 10), *(v9 + 11));

        sub_10011B0EC(v9, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
        v49(0, v43);

        return sub_10011B0EC(v24, type metadata accessor for Goldilocks_ExitMoveBatchErrorFeedbackResponse);
      }
    }

    else
    {
      v38 = sub_1001113B8(*(v9 + 2), v9[24]);
      v35 = v42;
      if (v37)
      {
        goto LABEL_16;
      }
    }

    v41 = 150;
    goto LABEL_19;
  }

  sub_1000CCDBC(v19, &unk_1002C4080, &qword_10024B7A8);
  if (a2)
  {
    v25 = a2;
  }

  else
  {
    v25 = sub_100112AD4(150, 0xD00000000000001ALL, 0x8000000100203B10, 0, 0, 0xE000000000000000, 0, 0xE000000000000000);
  }

  swift_errorRetain();
  v49(0, v25);
}

uint64_t sub_100116DA4(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t, id))
{
  v6 = type metadata accessor for Goldilocks_ExitStatusFeedbackResponse(0);
  if ((*(*(v6 - 8) + 48))(a1, 1, v6) != 1)
  {
    return a3(1, 0);
  }

  if (a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = sub_100112AD4(150, 0xD00000000000001ALL, 0x8000000100203B10, 0, 0, 0xE000000000000000, 0, 0xE000000000000000);
  }

  swift_errorRetain();
  a3(0, v7);
}

id CPLCKPhotosSharedLibraryOperation.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CPLCKPhotosSharedLibraryOperation();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_100117014(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_10011704C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100117108(a1, a2, v6);
}

unint64_t sub_1001170C4(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_1001171C0(a1, v4);
}

unint64_t sub_100117108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1001171C0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1000CC8B0(0, &qword_1002C0DD0, CKRecordID_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_100117294(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000BB130(&unk_1002C4138, &qword_10024B830);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
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

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_100117538(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000BB130(&qword_1002C4148, &qword_10024B838);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = (*(v5 + 56) + 16 * v21);
      v24 = *v23;
      v25 = v23[1];
      if ((v36 & 1) == 0)
      {
        v26 = v22;
      }

      result = NSObject._rawHashValue(seed:)(*(v8 + 40));
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = (*(v8 + 56) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1001177BC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for ResponseItem(0);
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  __chkstk_darwin(v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  sub_1000BB130(&qword_1002C4158, &unk_10024B848);
  v44 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_10011B1B4(v31, v45, type metadata accessor for ResponseItem);
      }

      else
      {
        sub_10011B14C(v31, v45, type metadata accessor for ResponseItem);
      }

      v32 = *(v12 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_10011B1B4(v45, *(v12 + 56) + v30 * v20, type metadata accessor for ResponseItem);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_100117B34(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000BB130(&qword_1002C4038, &qword_10024B780);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_10011AE44(v25, v37);
      }

      else
      {
        sub_1000CC854(v25, v37);
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_10011AE44(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

void sub_100117DEC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10011704C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100117294(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_10011704C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1001182A4();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

id sub_100117F64(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_1001170C4(a3);
  v12 = *(v9 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v9 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 < v15 || (a4 & 1) != 0)
    {
      sub_100117538(v15, a4 & 1);
      v19 = *v5;
      v10 = sub_1001170C4(a3);
      if ((v16 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1000CC8B0(0, &qword_1002C0DD0, CKRecordID_ptr);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v18 = v10;
      sub_100118410();
      v10 = v18;
    }
  }

  v21 = *v5;
  if (v16)
  {
    v22 = (v21[7] + 16 * v10);
    v23 = v22[1];
    *v22 = a1;
    v22[1] = a2;
  }

  v21[(v10 >> 6) + 8] |= 1 << v10;
  *(v21[6] + 8 * v10) = a3;
  v25 = (v21[7] + 16 * v10);
  *v25 = a1;
  v25[1] = a2;
  v26 = v21[2];
  v14 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v14)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v27;

  return a3;
}

_OWORD *sub_1001180E8(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10011704C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1001187D8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_100117B34(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_10011704C(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_10011AE54(v23);

    return sub_10011AE44(a1, v23);
  }

  else
  {
    sub_100118238(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_100118238(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10011AE44(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

id sub_1001182A4()
{
  v1 = v0;
  sub_1000BB130(&unk_1002C4138, &qword_10024B830);
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
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

void *sub_100118410()
{
  v1 = v0;
  sub_1000BB130(&qword_1002C4148, &qword_10024B838);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = (*(v2 + 56) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        *(*(v4 + 48) + 8 * v17) = v18;
        v22 = (*(v4 + 56) + 16 * v17);
        *v22 = v20;
        v22[1] = v21;
        v23 = v18;
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

void *sub_100118580()
{
  v1 = v0;
  v2 = type metadata accessor for ResponseItem(0);
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  __chkstk_darwin(v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BB130(&qword_1002C4158, &unk_10024B848);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_10011B14C(*(v5 + 56) + v27, v31, type metadata accessor for ResponseItem);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_10011B1B4(v26, *(v28 + 56) + v27, type metadata accessor for ResponseItem);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_1001187D8()
{
  v1 = v0;
  sub_1000BB130(&qword_1002C4038, &qword_10024B780);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1000CC854(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_10011AE44(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

size_t sub_10011897C(size_t a1, int64_t a2, char a3)
{
  result = sub_100118C50(a1, a2, a3, *v3, &qword_1002C4130, &qword_10024B828, &type metadata accessor for Ckcode_RecordTransport);
  *v3 = result;
  return result;
}

char *sub_1001189C0(char *a1, int64_t a2, char a3)
{
  result = sub_100118A44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001189E0(char *a1, int64_t a2, char a3)
{
  result = sub_100118B50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100118A00(size_t a1, int64_t a2, char a3)
{
  result = sub_100118C50(a1, a2, a3, *v3, &qword_1002C4098, &qword_10024B7B0, type metadata accessor for Goldilocks_ExitMoveBatchFeedbackItem);
  *v3 = result;
  return result;
}

char *sub_100118A44(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BB130(&qword_1002C4150, &qword_10024B840);
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

char *sub_100118B50(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BB130(&qword_1002C4128, &qword_10024B820);
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
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

size_t sub_100118C50(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000BB130(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

unint64_t sub_100118E2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000BB130(&qword_1002C4038, &qword_10024B780);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000CC794(v4, &v13, &unk_1002C4040, &unk_100245070);
      v5 = v13;
      v6 = v14;
      result = sub_10011704C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10011AE44(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100118F5C(uint64_t result)
{
  if (result > 2)
  {
    switch(result)
    {
      case 3:
        return 4;
      case 4:
        return 5;
      case 5:
        return 6;
    }

    goto LABEL_14;
  }

  if (result)
  {
    if (result == 1)
    {
      return 2;
    }

    if (result == 2)
    {
      return 3;
    }

LABEL_14:
    type metadata accessor for CPLCKSharedLibraryExitStage(0);
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  return result;
}

unint64_t sub_100119028(unint64_t result)
{
  if (result >= 6)
  {
    type metadata accessor for CPLCKSharedLibraryExitStatus(0);
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  return result;
}

uint64_t _s22CloudKitImplementation33CPLCKPhotosSharedLibraryOperationC021silentMoverServerRampG004withG2ID17completionHandlerSo010CKDatabaseG0CSSSg_ySb_AIs5Int64VSbs5Int32VS6bs5Error_pSgtctFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v6 = sub_1000BB130(&qword_1002C40F8, &unk_10024B7F8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v29 - v9;
  v11 = sub_1000BB130(&unk_1002C4100, &qword_100248880);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v29 - v13;
  v15 = type metadata accessor for Goldilocks_SilentMoverRampingRequest(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = (&v29 - v22);
  *v23 = 0;
  v23[1] = 0xE000000000000000;
  v24 = &v29 + *(v21 + 20) - v22;
  UnknownStorage.init()();
  v31 = a1;
  v32 = a2;
  sub_10011B09C(&qword_1002C2AC8, type metadata accessor for Goldilocks_SilentMoverRampingRequest);
  static Message.with(_:)();
  sub_10011B0EC(v23, type metadata accessor for Goldilocks_SilentMoverRampingRequest);
  sub_10011B1B4(v20, v23, type metadata accessor for Goldilocks_SilentMoverRampingRequest);
  sub_10011B14C(v23, v14, type metadata accessor for Goldilocks_SilentMoverRampingRequest);
  (*(v16 + 56))(v14, 0, 1, v15);
  (*(v7 + 104))(v10, enum case for CodeOperation.DestinationServer.default<A, B>(_:), v6);
  v25 = objc_allocWithZone(sub_1000BB130(&unk_1002C4110, &unk_10024B808));
  v26 = CodeOperation.init(service:functionName:request:destinationServer:)();
  v27 = swift_allocObject();
  *(v27 + 16) = v29;
  *(v27 + 24) = v30;

  dispatch thunk of CodeOperation.codeOperationCompletionBlock.setter();
  sub_10011B0EC(v23, type metadata accessor for Goldilocks_SilentMoverRampingRequest);
  return v26;
}

void _s22CloudKitImplementation33CPLCKPhotosSharedLibraryOperationC18getNextBatchToMove4with9batchSize17completionHandlerSo010CKDatabaseG0CSo14CKRecordZoneIDC_SiySaySSGSg_SSSgANSbs5Error_pSgtctFZ_0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a3;
  v45 = a4;
  v6 = sub_1000BB130(&unk_1002C40D0, &unk_10024B7D8);
  v41 = *(v6 - 8);
  v42 = v6;
  v7 = *(v41 + 64);
  __chkstk_darwin(v6);
  v43 = &v37 - v8;
  v9 = sub_1000BB130(&qword_1002C2B00, &qword_100248870);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v40 = &v37 - v11;
  v12 = type metadata accessor for Goldilocks_ZoneID(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Goldilocks_ExitMoveBatchRequest(0);
  v39 = *(v17 - 8);
  v18 = *(v39 + 64);
  v19 = __chkstk_darwin(v17);
  v38 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v37 - v21;
  v23 = [a1 zoneName];
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26 = [a1 ownerName];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    *v22 = 0;
    *(v22 + 1) = 0xE000000000000000;
    *(v22 + 4) = 0;
    v30 = &v22[*(v17 + 24)];
    UnknownStorage.init()();
    v31 = (*(v13 + 56))(&v22[*(v17 + 28)], 1, 1, v12);
    __chkstk_darwin(v31);
    *(&v37 - 4) = v37;
    *(&v37 - 3) = v25;
    *(&v37 - 2) = v27;
    *(&v37 - 1) = v29;
    sub_10011B09C(&qword_1002C2D28, type metadata accessor for Goldilocks_ZoneID);
    static Message.with(_:)();

    __chkstk_darwin(v32);
    *(&v37 - 4) = v16;
    *(&v37 - 6) = a2;
    sub_10011B09C(&qword_1002C40E0, type metadata accessor for Goldilocks_ExitMoveBatchRequest);
    *(&v37 - 2) = 0;
    *(&v37 - 1) = 0;
    v33 = v38;
    static Message.with(_:)();
    sub_10011B0EC(v22, type metadata accessor for Goldilocks_ExitMoveBatchRequest);
    sub_10011B1B4(v33, v22, type metadata accessor for Goldilocks_ExitMoveBatchRequest);
    sub_10011B0EC(v16, type metadata accessor for Goldilocks_ZoneID);
    v34 = v40;
    sub_10011B14C(v22, v40, type metadata accessor for Goldilocks_ExitMoveBatchRequest);
    (*(v39 + 56))(v34, 0, 1, v17);
    (*(v41 + 104))(v43, enum case for CodeOperation.DestinationServer.default<A, B>(_:), v42);
    v35 = objc_allocWithZone(sub_1000BB130(&qword_1002C40E8, &qword_10024B7E8));
    CodeOperation.init(service:functionName:request:destinationServer:)();
    v36 = swift_allocObject();
    *(v36 + 16) = v44;
    *(v36 + 24) = v45;

    dispatch thunk of CodeOperation.codeOperationCompletionBlock.setter();
    sub_10011B0EC(v22, type metadata accessor for Goldilocks_ExitMoveBatchRequest);
    return;
  }

  __break(1u);
}

uint64_t _s22CloudKitImplementation33CPLCKPhotosSharedLibraryOperationC09moveBatchefG04with9batchSize11operationID17completionHandlerSo010CKDatabaseG0CSo012CKRecordZoneN0C_s5Int32VSSSgySb_SbA2Os5Int64VSaySSGSgs5Error_pSgtctFZ_0(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v49 = a5;
  v50 = a6;
  v43 = a3;
  v44 = a4;
  v42 = a2;
  v7 = sub_1000BB130(&unk_1002C40D0, &unk_10024B7D8);
  v47 = *(v7 - 8);
  v48 = v7;
  v8 = *(v47 + 64);
  __chkstk_darwin(v7);
  v46 = &v39 - v9;
  v10 = sub_1000BB130(&qword_1002C2B00, &qword_100248870);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v45 = &v39 - v12;
  v13 = type metadata accessor for Goldilocks_ZoneID(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Goldilocks_ExitMoveBatchRequest(0);
  v41 = *(v18 - 8);
  v19 = *(v41 + 64);
  v20 = __chkstk_darwin(v18);
  v40 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v39 - v22;
  v24 = [a1 zoneName];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v28 = [a1 ownerName];
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  *v23 = 0;
  *(v23 + 1) = 0xE000000000000000;
  *(v23 + 4) = 0;
  v32 = &v23[*(v18 + 24)];
  UnknownStorage.init()();
  (*(v14 + 56))(&v23[*(v18 + 28)], 1, 1, v13);
  v55 = v25;
  v56 = v27;
  v57 = v29;
  v58 = v31;
  sub_10011B09C(&qword_1002C2D28, type metadata accessor for Goldilocks_ZoneID);
  static Message.with(_:)();

  v51 = v17;
  v52 = v42;
  v53 = v43;
  v54 = v44;
  sub_10011B09C(&qword_1002C40E0, type metadata accessor for Goldilocks_ExitMoveBatchRequest);
  v33 = v40;
  static Message.with(_:)();
  sub_10011B0EC(v23, type metadata accessor for Goldilocks_ExitMoveBatchRequest);
  sub_10011B1B4(v33, v23, type metadata accessor for Goldilocks_ExitMoveBatchRequest);
  sub_10011B0EC(v17, type metadata accessor for Goldilocks_ZoneID);
  v34 = v45;
  sub_10011B14C(v23, v45, type metadata accessor for Goldilocks_ExitMoveBatchRequest);
  (*(v41 + 56))(v34, 0, 1, v18);
  (*(v47 + 104))(v46, enum case for CodeOperation.DestinationServer.default<A, B>(_:), v48);
  v35 = objc_allocWithZone(sub_1000BB130(&qword_1002C40E8, &qword_10024B7E8));
  v36 = CodeOperation.init(service:functionName:request:destinationServer:)();
  v37 = swift_allocObject();
  *(v37 + 16) = v49;
  *(v37 + 24) = v50;

  dispatch thunk of CodeOperation.codeOperationCompletionBlock.setter();
  sub_10011B0EC(v23, type metadata accessor for Goldilocks_ExitMoveBatchRequest);
  return v36;
}

void sub_100119F20(void *a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9)
{
  v69 = a8;
  v63 = a6;
  v64 = a7;
  v13 = sub_1000BB130(&unk_1002C40A0, &unk_10024B7B8);
  v66 = *(v13 - 8);
  v67 = v13;
  v14 = *(v66 + 64);
  __chkstk_darwin(v13);
  v68 = &v52 - v15;
  v16 = sub_1000BB130(&qword_1002C2AE0, &qword_100248850);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v65 = &v52 - v18;
  v19 = type metadata accessor for Goldilocks_ZoneID(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Goldilocks_InitiateExitRequest(0);
  v62 = *(v24 - 8);
  v25 = *(v62 + 64);
  v26 = __chkstk_darwin(v24);
  v61 = &v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = &v52 - v28;
  sub_10010C3DC();
  v60 = v30;
  v59 = v31;
  if ((v31 & 0x100) != 0)
  {
    __break(1u);
  }

  else
  {
    v58 = a9;
    v57 = a3 < 3;
    v54 = a2 < 3;
    v56 = sub_100118F5C(a5);
    v55 = v32;
    v33 = [a1 zoneName];
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = a2;
    v35 = v34;
    v37 = v36;

    v38 = [a1 ownerName];
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = a3;
    v40 = v39;
    v42 = v41;

    *v29 = 0;
    *(v29 + 1) = 0xE000000000000000;
    *(v29 + 2) = 0;
    v29[24] = 1;
    *(v29 + 4) = 0;
    v29[40] = 1;
    *(v29 + 6) = &_swiftEmptyArrayStorage;
    *(v29 + 7) = &_swiftEmptyArrayStorage;
    *(v29 + 8) = 0;
    *(v29 + 9) = 0;
    v29[80] = 1;
    *(v29 + 11) = 0;
    v29[96] = 1;
    v43 = &v29[*(v24 + 48)];
    UnknownStorage.init()();
    v44 = (*(v20 + 56))(&v29[*(v24 + 52)], 1, 1, v19);
    __chkstk_darwin(v44);
    *(&v52 - 4) = v35;
    *(&v52 - 3) = v37;
    *(&v52 - 2) = v40;
    *(&v52 - 1) = v42;
    sub_10011B09C(&qword_1002C2D28, type metadata accessor for Goldilocks_ZoneID);
    static Message.with(_:)();

    __chkstk_darwin(v45);
    v46 = v53;
    *(&v52 - 12) = v23;
    *(&v52 - 11) = v46;
    *(&v52 - 80) = v54;
    v47 = v64;
    *(&v52 - 9) = v63;
    *(&v52 - 8) = v47;
    *(&v52 - 7) = v52;
    *(&v52 - 48) = v57;
    *(&v52 - 5) = v60;
    *(&v52 - 32) = v59 & 1;
    *(&v52 - 3) = v56;
    BYTE1(v47) = BYTE1(v55);
    *(&v52 - 16) = v55;
    *(&v52 - 15) = BYTE1(v47) & 1;
    sub_10011B09C(&qword_1002C40B0, type metadata accessor for Goldilocks_InitiateExitRequest);
    v48 = v61;
    static Message.with(_:)();
    sub_10011B0EC(v29, type metadata accessor for Goldilocks_InitiateExitRequest);
    sub_10011B1B4(v48, v29, type metadata accessor for Goldilocks_InitiateExitRequest);
    sub_10011B0EC(v23, type metadata accessor for Goldilocks_ZoneID);
    v49 = v65;
    sub_10011B14C(v29, v65, type metadata accessor for Goldilocks_InitiateExitRequest);
    (*(v62 + 56))(v49, 0, 1, v24);
    (*(v66 + 104))(v68, enum case for CodeOperation.DestinationServer.default<A, B>(_:), v67);
    v50 = objc_allocWithZone(sub_1000BB130(&qword_1002C40B8, &qword_10024B7C8));
    CodeOperation.init(service:functionName:request:destinationServer:)();
    v51 = swift_allocObject();
    *(v51 + 16) = v69;
    *(v51 + 24) = v58;

    dispatch thunk of CodeOperation.codeOperationCompletionBlock.setter();
    sub_10011B0EC(v29, type metadata accessor for Goldilocks_InitiateExitRequest);
  }
}

uint64_t sub_10011A578(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a5;
  v38 = a6;
  v33 = a3;
  v34 = a4;
  v36 = sub_1000BB130(&qword_1002C4058, &unk_10024B788);
  v8 = *(v36 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v36);
  v35 = &v33 - v10;
  v11 = sub_1000BB130(&unk_1002C4060, &qword_100248890);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v33 - v13;
  v15 = type metadata accessor for Goldilocks_ExitMoveBatchErrorFeedbackRequest(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = &v33 - v22;
  if (a2)
  {
    v24 = a1;
  }

  else
  {
    v24 = 0;
  }

  if (a2)
  {
    v25 = a2;
  }

  else
  {
    v25 = 0xE000000000000000;
  }

  *v23 = &_swiftEmptyArrayStorage;
  *(v23 + 1) = 0;
  *(v23 + 2) = 0xE000000000000000;
  *(v23 + 3) = 0;
  *(v23 + 4) = 0xE000000000000000;
  v26 = *(v21 + 28);

  UnknownStorage.init()();
  v27 = *(v15 + 32);
  v28 = type metadata accessor for Goldilocks_ZoneID(0);
  (*(*(v28 - 8) + 56))(&v23[v27], 1, 1, v28);
  v39 = v24;
  v40 = v25;
  v41 = v23;
  v42 = v33;
  v43 = v34;
  sub_10011B09C(&qword_1002C2AD0, type metadata accessor for Goldilocks_ExitMoveBatchErrorFeedbackRequest);
  static Message.with(_:)();

  sub_10011AEE8(v20, v23);
  sub_10011B14C(v23, v14, type metadata accessor for Goldilocks_ExitMoveBatchErrorFeedbackRequest);
  (*(v16 + 56))(v14, 0, 1, v15);
  (*(v8 + 104))(v35, enum case for CodeOperation.DestinationServer.default<A, B>(_:), v36);
  v29 = objc_allocWithZone(sub_1000BB130(&unk_1002C4070, &unk_10024B798));
  v30 = CodeOperation.init(service:functionName:request:destinationServer:)();
  v31 = swift_allocObject();
  *(v31 + 16) = v37;
  *(v31 + 24) = v38;

  dispatch thunk of CodeOperation.codeOperationCompletionBlock.setter();
  sub_10011B0EC(v23, type metadata accessor for Goldilocks_ExitMoveBatchErrorFeedbackRequest);
  return v30;
}

uint64_t _s22CloudKitImplementation33CPLCKPhotosSharedLibraryOperationC22sendExitStatusFeedback04withG2ID5share6status17completionHandlerSo010CKDatabaseG0CSSSg_So012CKRecordZoneM0CSo011CPLCKSharedfiJ0VySb_s5Error_pSgtctFZ_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a5;
  v38 = a6;
  v33 = a3;
  v34 = a4;
  v36 = sub_1000BB130(&qword_1002C4018, &unk_10024B768);
  v8 = *(v36 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v36);
  v35 = &v33 - v10;
  v11 = sub_1000BB130(&unk_1002C4020, &qword_1002488A0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v33 - v13;
  v15 = type metadata accessor for Goldilocks_ExitStatusFeedbackRequest(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = &v33 - v22;
  if (a2)
  {
    v24 = a1;
  }

  else
  {
    v24 = 0;
  }

  if (a2)
  {
    v25 = a2;
  }

  else
  {
    v25 = 0xE000000000000000;
  }

  *v23 = 0;
  *(v23 + 1) = 0xE000000000000000;
  *(v23 + 2) = 0;
  v23[24] = 1;
  v26 = *(v21 + 24);

  UnknownStorage.init()();
  v27 = *(v15 + 28);
  v28 = type metadata accessor for Goldilocks_ZoneID(0);
  (*(*(v28 - 8) + 56))(&v23[v27], 1, 1, v28);
  v39 = v24;
  v40 = v25;
  v41 = v33;
  v42 = v34;
  sub_10011B09C(&qword_1002C2AD8, type metadata accessor for Goldilocks_ExitStatusFeedbackRequest);
  static Message.with(_:)();

  sub_10011B0EC(v23, type metadata accessor for Goldilocks_ExitStatusFeedbackRequest);
  sub_10011B1B4(v20, v23, type metadata accessor for Goldilocks_ExitStatusFeedbackRequest);
  sub_10011B14C(v23, v14, type metadata accessor for Goldilocks_ExitStatusFeedbackRequest);
  (*(v16 + 56))(v14, 0, 1, v15);
  (*(v8 + 104))(v35, enum case for CodeOperation.DestinationServer.default<A, B>(_:), v36);
  v29 = objc_allocWithZone(sub_1000BB130(&qword_1002C4030, &qword_10024B778));
  v30 = CodeOperation.init(service:functionName:request:destinationServer:)();
  v31 = swift_allocObject();
  *(v31 + 16) = v37;
  *(v31 + 24) = v38;

  dispatch thunk of CodeOperation.codeOperationCompletionBlock.setter();
  sub_10011B0EC(v23, type metadata accessor for Goldilocks_ExitStatusFeedbackRequest);
  return v30;
}

_OWORD *sub_10011AE44(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10011AE54(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10011AEE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Goldilocks_ExitMoveBatchErrorFeedbackRequest(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10011B09C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10011B0EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10011B14C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10011B1B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_10011B768()
{
  if (qword_1002D27F0 != -1)
  {
    sub_1001B2AA0();
  }

  v1 = qword_1002D27F8;

  return v1;
}

void sub_10011B7AC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v4 = sub_10011B768();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = *(a1 + 32);
        v6 = *(v5 + 96);
        *buf = 138412802;
        *&buf[4] = v5;
        *&buf[12] = 2112;
        *&buf[14] = v6;
        *&buf[22] = 2112;
        v49 = v3;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%@ failed to attach to %@: %@", buf, 0x20u);
      }
    }

    v8 = *(a1 + 32);
    v7 = a1 + 32;
    v9 = *(v8 + 104);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10011C178;
    v21[3] = &unk_100272350;
    v23 = *(v7 + 8);
    v22 = v3;
    v10 = v21;
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100002BB8;
    v49 = &unk_100271E98;
    v50 = v10;
    v11 = v9;
    v12 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, buf);
    dispatch_async(v11, v12);

    if (*(*v7 + 8) == 1)
    {
      sub_1001B2AB4(v7, *v7, v20);
    }

    v13 = v23;
  }

  else
  {
    sub_1001B2BBC(_CPLSilentLogging, a1);
    v14 = [*(*(a1 + 32) + 96) store];
    v15 = [v14 outgoingResources];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v49 = sub_100004550;
    v50 = sub_10000538C;
    v51 = 0;
    v47[0] = 0;
    v47[1] = v47;
    v47[2] = 0x2020000000;
    v47[3] = 0;
    v46[0] = 0;
    v46[1] = v46;
    v46[2] = 0x2020000000;
    v46[3] = 0;
    v45[0] = 0;
    v45[1] = v45;
    v45[2] = 0x2020000000;
    v45[3] = 0;
    v44[0] = 0;
    v44[1] = v44;
    v44[2] = 0x2020000000;
    v44[3] = 0;
    v43[0] = 0;
    v43[1] = v43;
    v43[2] = 0x2020000000;
    v43[3] = 0;
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_10011BC58;
    v32[3] = &unk_100279680;
    v36 = buf;
    v13 = v14;
    v33 = v13;
    v37 = v47;
    v38 = v46;
    v39 = v45;
    v16 = v15;
    v40 = v44;
    v41 = v43;
    v42 = *(a1 + 48);
    v17 = *(a1 + 32);
    v34 = v16;
    v35 = v17;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10011BD38;
    v24[3] = &unk_1002796D0;
    v18 = *(a1 + 40);
    v24[4] = *(a1 + 32);
    v25 = v18;
    v26 = v47;
    v27 = v46;
    v28 = v45;
    v29 = v44;
    v30 = v43;
    v31 = buf;
    v19 = [v13 performWriteTransactionWithBlock:v32 completionHandler:v24];

    _Block_object_dispose(v43, 8);
    _Block_object_dispose(v44, 8);
    _Block_object_dispose(v45, 8);
    _Block_object_dispose(v46, 8);
    _Block_object_dispose(v47, 8);
    _Block_object_dispose(buf, 8);
  }
}

void sub_10011BBFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose((v55 - 240), 8);
  _Block_object_dispose((v55 - 208), 8);
  _Block_object_dispose((v55 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_10011BC58(uint64_t a1, void *a2)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001B025C;
  v9[3] = &unk_100279658;
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  v12 = *(a1 + 64);
  v13 = *(a1 + 80);
  v6 = *(a1 + 40);
  v14 = *(a1 + 88);
  *&v7 = *(a1 + 48);
  *(&v7 + 1) = v4;
  v15 = *(a1 + 104);
  *&v8 = v5;
  *(&v8 + 1) = v6;
  v10 = v8;
  v11 = v7;
  [a2 do:v9];
}

void sub_10011BD38(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = sub_10011B768();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = [v3 error];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Unable to get initial library version: %@", &buf, 0xCu);
      }
    }

    v7 = *(a1 + 40);
    v8 = [v3 error];
    (*(v7 + 16))(v7, v8, 0, 0, 0, 0);

    v9 = *(a1 + 32);
    if (*(v9 + 8) == 1)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v10 = sub_10011B768();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v11 = *(*(a1 + 32) + 96);
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Closing %@ now", &buf, 0xCu);
        }

        v9 = *(a1 + 32);
      }

      v12 = *(v9 + 96);
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1001B03D8;
      v26[3] = &unk_100272468;
      v26[4] = v9;
      [v12 closeAndDeactivate:0 completionHandler:v26];
    }
  }

  else
  {
    v13 = *(a1 + 32);
    v14 = *(v13 + 104);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10011C064;
    v21[3] = &unk_1002796A8;
    v21[4] = v13;
    v15 = *(a1 + 72);
    v23 = *(a1 + 56);
    v24 = v15;
    v20 = *(a1 + 40);
    v16 = v20;
    v22 = v20;
    v25 = *(a1 + 88);
    v17 = v21;
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v28 = sub_100002BB8;
    v29 = &unk_100271E98;
    v30 = v17;
    v18 = v14;
    v19 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &buf);
    dispatch_async(v18, v19);
  }
}

void sub_10011C064(uint64_t a1)
{
  v2 = [*(a1 + 32) abstractObject];
  [v2 _setSizeOfResourcesToUpload:*(*(*(a1 + 48) + 8) + 24) sizeOfOriginalResourcesToUpload:*(*(*(a1 + 56) + 8) + 24) numberOfImages:*(*(*(a1 + 64) + 8) + 24) numberOfVideos:*(*(*(a1 + 72) + 8) + 24) numberOfOtherItems:*(*(*(a1 + 80) + 8) + 24)];

  v3 = *(*(*(a1 + 88) + 8) + 40);
  v4 = *(a1 + 40);
  v7 = [*(*(a1 + 32) + 96) libraryIdentifier];
  v5 = [*(*(a1 + 32) + 96) mainScopeIdentifier];
  v6 = [*(*(a1 + 32) + 96) clientLibraryBaseURL];
  (*(v4 + 16))(v4, 0, v3, v7, v5, v6);
}

void sub_10011C19C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    sub_1001B2C6C();
  }

  else
  {
    sub_1001B2D3C(_CPLSilentLogging, a1);
  }
}

id sub_10011C548(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  if (v3)
  {
    [v3 cancel];
    v4 = *(a1 + 32);
    v5 = *(v4 + 56);
    *(v4 + 56) = 0;

    v2 = *(a1 + 32);
  }

  v6 = *(v2 + 64);
  if (v6)
  {
    [v6 cancelTask];
    v7 = *(a1 + 32);
    v8 = *(v7 + 64);
    *(v7 + 64) = 0;

    v2 = *(a1 + 32);
  }

  [*(v2 + 72) makeObjectsPerformSelector:"cancel"];
  v9 = *(*(a1 + 32) + 72);

  return [v9 removeAllObjects];
}

void sub_10011C5EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 96);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001B0560;
  v8[3] = &unk_100276528;
  v8[4] = v4;
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  [v5 detachObject:v4 withCompletionHandler:v8];
}

uint64_t sub_10011C6B4(void *a1)
{
  v2 = a1[6];
  v3 = a1[4];
  if (!v3)
  {
    v3 = a1[5];
  }

  return (*(v2 + 16))(v2, v3);
}

void sub_10011C864(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  if (v3)
  {
    [v3 cancel];
    v4 = *(a1 + 32);
    v5 = *(v4 + 56);
    *(v4 + 56) = 0;

    v2 = *(a1 + 32);
  }

  v6 = *(v2 + 64);
  if (v6)
  {
    [v6 cancelTask];
    v7 = *(a1 + 32);
    v8 = *(v7 + 64);
    *(v7 + 64) = 0;
  }
}

void sub_10011C8EC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    sub_1001B2DE8();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_10011CA84(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) scopes];
  v5 = *(a1 + 32);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10011CBB0;
  v13[3] = &unk_100273588;
  v14 = v4;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10011CC48;
  v10[3] = &unk_100279770;
  v6 = *(a1 + 48);
  v10[4] = *(a1 + 40);
  v11 = v3;
  v12 = v6;
  v7 = v3;
  v8 = v4;
  v9 = [v5 performWriteTransactionByPassBlocker:v7 withBlock:v13 completionHandler:v10];
}

void sub_10011CBB0(uint64_t a1, void *a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10011CC3C;
  v3[3] = &unk_100279748;
  v4 = *(a1 + 32);
  [a2 do:v3];
}

void sub_10011CC48(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 104);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10011CD94;
  v9[3] = &unk_100272E20;
  v12 = *(a1 + 48);
  v10 = v3;
  v11 = *(a1 + 40);
  v5 = v9;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002BB8;
  block[3] = &unk_100271E98;
  v14 = v5;
  v6 = v4;
  v7 = v3;
  v8 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v6, v8);
}

id sub_10011CD94(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = [*(a1 + 32) error];
    (*(v2 + 16))(v2, v3);
  }

  v4 = *(a1 + 40);

  return [v4 unblock];
}

void sub_10011CECC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) scopes];
  v5 = *(a1 + 32);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10011CFF8;
  v13[3] = &unk_100273588;
  v14 = v4;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10011D090;
  v10[3] = &unk_100279770;
  v6 = *(a1 + 48);
  v10[4] = *(a1 + 40);
  v11 = v3;
  v12 = v6;
  v7 = v3;
  v8 = v4;
  v9 = [v5 performWriteTransactionByPassBlocker:v7 withBlock:v13 completionHandler:v10];
}

void sub_10011CFF8(uint64_t a1, void *a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10011D084;
  v3[3] = &unk_100279748;
  v4 = *(a1 + 32);
  [a2 do:v3];
}

void sub_10011D090(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 104);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10011D1DC;
  v9[3] = &unk_100272E20;
  v12 = *(a1 + 48);
  v10 = v3;
  v11 = *(a1 + 40);
  v5 = v9;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002BB8;
  block[3] = &unk_100271E98;
  v14 = v5;
  v6 = v4;
  v7 = v3;
  v8 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v6, v8);
}

id sub_10011D1DC(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = [*(a1 + 32) error];
    (*(v2 + 16))(v2, v3);
  }

  v4 = *(a1 + 40);

  return [v4 unblock];
}

void sub_10011D380(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) scopes];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10011D4D8;
  v13 = v12[3] = &unk_1002797C0;
  v4 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 32);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10011D63C;
  v9[3] = &unk_100279770;
  v5 = *(a1 + 56);
  v9[4] = *(a1 + 48);
  v10 = v3;
  v11 = v5;
  v6 = v3;
  v7 = v13;
  v8 = [v4 performWriteTransactionByPassBlocker:v6 withBlock:v12 completionHandler:v9];
}

void sub_10011D4D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_100004550;
  v13 = sub_10000538C;
  v14 = [*(a1 + 32) scopeWithIdentifier:*(a1 + 40)];
  if (v10[5])
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1001B08D0;
    v5[3] = &unk_1002735D8;
    v6 = *(a1 + 48);
    v8 = &v9;
    v7 = *(a1 + 32);
    [v3 do:v5];

    v4 = v6;
  }

  else
  {
    v4 = [CPLErrors invalidScopeErrorWithScopeIdentifier:*(a1 + 40)];
    [v3 setError:v4];
  }

  _Block_object_dispose(&v9, 8);
}

void sub_10011D624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10011D63C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 104);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10011D788;
  v9[3] = &unk_100272E20;
  v12 = *(a1 + 48);
  v10 = v3;
  v11 = *(a1 + 40);
  v5 = v9;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002BB8;
  block[3] = &unk_100271E98;
  v14 = v5;
  v6 = v4;
  v7 = v3;
  v8 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v6, v8);
}

id sub_10011D788(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = [*(a1 + 32) error];
    (*(v2 + 16))(v2, v3);
  }

  v4 = *(a1 + 40);

  return [v4 unblock];
}

void sub_10011D92C(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) scopes];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10011DA84;
  v13 = v12[3] = &unk_1002797C0;
  v4 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 32);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10011DBB0;
  v9[3] = &unk_100279770;
  v5 = *(a1 + 56);
  v9[4] = *(a1 + 48);
  v10 = v3;
  v11 = v5;
  v6 = v3;
  v7 = v13;
  v8 = [v4 performWriteTransactionByPassBlocker:v6 withBlock:v12 completionHandler:v9];
}

void sub_10011DA84(id *a1, void *a2)
{
  v3 = a2;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = sub_100004550;
  v9[4] = sub_10000538C;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001B09F8;
  v4[3] = &unk_100279810;
  v8 = v9;
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  [v3 do:v4];

  _Block_object_dispose(v9, 8);
}

void sub_10011DB98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10011DBB0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 104);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10011DCFC;
  v9[3] = &unk_100272E20;
  v12 = *(a1 + 48);
  v10 = v3;
  v11 = *(a1 + 40);
  v5 = v9;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002BB8;
  block[3] = &unk_100271E98;
  v14 = v5;
  v6 = v4;
  v7 = v3;
  v8 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v6, v8);
}

id sub_10011DCFC(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = [*(a1 + 32) error];
    (*(v2 + 16))(v2, v3);
  }

  v4 = *(a1 + 40);

  return [v4 unblock];
}

void sub_10011DEB0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) scopeWithIdentifier:*(a1 + 40)];
  if (v4)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10011DFB4;
    v6[3] = &unk_100279838;
    v7 = *(a1 + 32);
    v8 = v4;
    [v3 do:v6];
  }

  else
  {
    v5 = [CPLErrors cplErrorWithCode:2001 description:@"%@ is unknown", *(a1 + 40)];
    [v3 setError:v5];
  }
}

id sub_10011DFB4(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) flagsForScope:*(a1 + 40)];
  [v4 setValue:1 forFlag:0x20000];
  v5 = [*(a1 + 32) updateFlags:v4 forScope:*(a1 + 40) error:a2];

  return v5;
}

void sub_10011E01C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 error];
  (*(v2 + 16))(v2, v3);
}

void sub_10011E244(uint64_t a1, void *a2)
{
  v29 = a2;
  v3 = [*(a1 + 32) abstractObject];
  v4 = [v3 resourceProgressDelegate];
  if (objc_opt_respondsToSelector())
  {
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_10011E7A8;
    v47[3] = &unk_100279888;
    v47[4] = *(a1 + 32);
    v48 = v4;
    v49 = v3;
    v5 = objc_retainBlock(v47);
  }

  else
  {
    v5 = 0;
  }

  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = sub_100004550;
  v45 = sub_10000538C;
  v46 = 0;
  v6 = [*(a1 + 40) downloadQueue];
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_10011E90C;
  v38[3] = &unk_1002798B0;
  v38[4] = *(a1 + 32);
  v28 = v4;
  v39 = v28;
  v40 = v3;
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_10011EA64;
  v35[3] = &unk_100279900;
  v35[4] = *(a1 + 32);
  v11 = v40;
  v36 = v11;
  v37 = &v41;
  v12 = [v6 downloadTaskForLocalResource:v7 clientBundleID:v8 options:v9 proposedTaskIdentifier:v10 didStartHandler:v38 progressHandler:v5 completionHandler:v35];

  if (v12)
  {
    if ([*(a1 + 64) shouldKeepPower])
    {
      v13 = [CPLTransaction newTransactionWithIdentifier:@"cpl.downloadresource" description:@"client downloading resources" keepPower:1];
      v14 = v42[5];
      v42[5] = v13;
    }

    v15 = [*(*(a1 + 32) + 96) syncManager];
    [v15 beginClientWork:@"client downloading resources"];

    v16 = *(*(a1 + 32) + 104);
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_10011ECA4;
    v32[3] = &unk_100272350;
    v34 = *(a1 + 80);
    v17 = v12;
    v33 = v17;
    v18 = v32;
    *&block = _NSConcreteStackBlock;
    *(&block + 1) = 3221225472;
    v51 = sub_100002BB8;
    v52 = &unk_100271E98;
    v53 = v18;
    v19 = v16;
    v20 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
    dispatch_async(v19, v20);

    [v17 launch];
    v21 = &v34;
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v22 = sub_10011B768();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = *(a1 + 48);
        LODWORD(block) = 138412290;
        *(&block + 4) = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Can't get a task to download %@", &block, 0xCu);
      }
    }

    v24 = *(*(a1 + 32) + 104);
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10011ECB8;
    v30[3] = &unk_100271E98;
    v31 = *(a1 + 80);
    v25 = v30;
    *&block = _NSConcreteStackBlock;
    *(&block + 1) = 3221225472;
    v51 = sub_100002BB8;
    v52 = &unk_100271E98;
    v53 = v25;
    v26 = v24;
    v27 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
    dispatch_async(v26, v27);

    v21 = &v31;
  }

  _Block_object_dispose(&v41, 8);
}

void sub_10011E7A8(uint64_t a1, void *a2, float a3)
{
  v5 = a2;
  v6 = *(*(a1 + 32) + 104);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10011E8F8;
  v12[3] = &unk_100273128;
  v13 = *(a1 + 40);
  v7 = *(a1 + 48);
  v16 = a3;
  v14 = v7;
  v15 = v5;
  v8 = v12;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002BB8;
  block[3] = &unk_100271E98;
  v18 = v8;
  v9 = v6;
  v10 = v5;
  v11 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v9, v11);
}

void sub_10011E90C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 104);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10011EA54;
  v9[3] = &unk_1002721A0;
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = v3;
  v5 = v9;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002BB8;
  block[3] = &unk_100271E98;
  v14 = v5;
  v6 = v4;
  v7 = v3;
  v8 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v6, v8);
}

void sub_10011EA64(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(*(a1 + 32) + 96) syncManager];
  [v7 endClientWork:@"client downloading resources"];

  v8 = *(*(a1 + 32) + 104);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10011EBF4;
  v15[3] = &unk_1002798D8;
  v16 = *(a1 + 40);
  v17 = v5;
  v9 = *(a1 + 48);
  v18 = v6;
  v19 = v9;
  v10 = v15;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002BB8;
  block[3] = &unk_100271E98;
  v21 = v10;
  v11 = v8;
  v12 = v6;
  v13 = v5;
  v14 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v11, v14);
}

id sub_10011EBF4(void *a1)
{
  v2 = a1[4];
  v3 = [v2 resourceProgressDelegate];
  v4 = a1[5];
  v5 = [v4 resource];
  v6 = a1[6];
  v7 = v4;
  v8 = v2;
  [v3 libraryManager:v8 downloadDidFinishForResourceTransferTask:v7 finalResource:v5 withError:v6];

  v9 = *(*(a1[7] + 8) + 40);

  return [v9 endTransaction];
}

void sub_10011F108(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [CPLErrors cplErrorWithCode:1013 description:@"Network is constrained. We should avoid autoplay"];
  (*(v1 + 16))(v1, 0, 0, 0, 0, v2);
}

void sub_10011F188(uint64_t a1, void *a2)
{
  v3 = [a2 error];
  if (v3)
  {
    v4 = *(*(a1 + 32) + 104);
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_10011F610;
    v52[3] = &unk_100272E20;
    v55 = *(a1 + 88);
    v53 = v3;
    v54 = *(a1 + 40);
    *&block = _NSConcreteStackBlock;
    *(&block + 1) = 3221225472;
    *&v42 = sub_100002BB8;
    *(&v42 + 1) = &unk_100271E98;
    *&v43 = v52;
    v5 = v4;
    v6 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
    dispatch_async(v5, v6);

    v7 = v55;
  }

  else
  {
    v51 = 0;
    v8 = *(a1 + 56);
    v9 = *(a1 + 48);
    v10 = [v8 transactionTransportScopeMapping];
    v11 = *(a1 + 64);
    v49 = 0;
    v50 = v9;
    v48 = 0;
    v12 = [v11 cloudResourceForLocalResource:&v50 cloudRecord:0 target:&v49 shouldNotTrustCaches:&v51 allowUnsafeClientCache:1 transportScopeMapping:v10 error:&v48];
    v7 = v50;

    v13 = v49;
    v14 = v48;
    v15 = *(a1 + 32);
    if (v12)
    {
      v16 = [*(v15 + 96) transport];
      v33 = *(a1 + 96);
      v34 = v13;
      v18 = *(a1 + 72);
      v17 = *(a1 + 80);
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_10011F674;
      v44[3] = &unk_1002799D8;
      v19 = *(a1 + 88);
      v20 = *(a1 + 32);
      v47 = v19;
      v44[4] = v20;
      v45 = *(a1 + 48);
      v46 = *(a1 + 40);
      v21 = *(a1 + 120);
      block = *(a1 + 104);
      v42 = v21;
      v43 = *(a1 + 136);
      v22 = v18;
      v13 = v34;
      v23 = [v16 getStreamingURLTaskForResource:v12 intent:v33 hints:v22 timeRange:&block target:v34 transportScopeMapping:v10 clientBundleID:v17 completionHandler:v44];

      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_10011F868;
      v39[3] = &unk_1002720E0;
      v24 = *(a1 + 40);
      v39[4] = *(a1 + 32);
      v40 = v23;
      v25 = v23;
      v26 = &v47;
      v27 = v25;
      [v24 performAsCurrentWithPendingUnitCount:1 usingBlock:v39];

      v28 = v45;
    }

    else
    {
      v29 = *(v15 + 104);
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_10011F8C4;
      v35[3] = &unk_100272E20;
      v26 = &v38;
      v38 = *(a1 + 88);
      v36 = v14;
      v37 = *(a1 + 40);
      v30 = v35;
      *&block = _NSConcreteStackBlock;
      *(&block + 1) = 3221225472;
      *&v42 = sub_100002BB8;
      *(&v42 + 1) = &unk_100271E98;
      *&v43 = v30;
      v31 = v29;
      v32 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
      dispatch_async(v31, v32);

      v28 = v36;
    }
  }
}

id sub_10011F610(uint64_t a1)
{
  v2 = *(a1 + 32);
  (*(*(a1 + 48) + 16))();
  v3 = [*(a1 + 40) totalUnitCount];
  v4 = *(a1 + 40);

  return [v4 setCompletedUnitCount:v3];
}

void sub_10011F674(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = v15;
  if (*(a1 + 56))
  {
    v17 = *(*(a1 + 32) + 104);
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_1001B0B14;
    v24 = &unk_1002799B0;
    v25 = v15;
    v26 = *(a1 + 40);
    v31 = *(a1 + 56);
    v27 = v11;
    v28 = v12;
    v29 = v13;
    v30 = v14;
    v18 = &v21;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100002BB8;
    block[3] = &unk_100271E98;
    v33 = v18;
    v19 = v17;
    v20 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    dispatch_async(v19, v20);
  }

  [*(a1 + 48) setCompletedUnitCount:{objc_msgSend(*(a1 + 48), "totalUnitCount", v21, v22, v23, v24)}];
}

id sub_10011F868(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 96) syncManager];
  [v2 configureDirectTransportTask:*(a1 + 40)];

  v3 = *(a1 + 40);

  return [v3 runWithNoSyncSession];
}

id sub_10011F8C4(uint64_t a1)
{
  v2 = *(a1 + 32);
  (*(*(a1 + 48) + 16))();
  v3 = [*(a1 + 40) totalUnitCount];
  v4 = *(a1 + 40);

  return [v4 setCompletedUnitCount:v3];
}

void sub_10011F928(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [CPLErrors incorrectParametersErrorForParameter:@"itemScopedIdentifier"];
  (*(v1 + 16))(v1, 0, 0, 0, 0, v2);
}

void sub_10011FB68(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[7])
  {
    [v2[7] cancel];
    v3 = *(a1 + 32);
    v4 = *(v3 + 56);
    *(v3 + 56) = 0;

    v2 = *(a1 + 32);
  }

  v5 = [v2 engineLibrary];
  v6 = [v5 transport];

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_100004550;
  v22 = sub_10000538C;
  v23 = 0;
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10011FD64;
  v14[3] = &unk_100279A50;
  v14[4] = *(a1 + 32);
  v16 = *(a1 + 48);
  v17 = &v18;
  v15 = *(a1 + 40);
  v9 = [v6 rampingRequestTaskForResourceType:v7 numRequested:v8 completionHandler:v14];
  v10 = *(a1 + 32);
  v11 = *(v10 + 56);
  *(v10 + 56) = v9;

  objc_storeStrong(v19 + 5, *(*(a1 + 32) + 56));
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10011FF8C;
  v13[3] = &unk_100271F40;
  v12 = *(a1 + 40);
  v13[4] = *(a1 + 32);
  [v12 performAsCurrentWithPendingUnitCount:1 usingBlock:v13];

  _Block_object_dispose(&v18, 8);
}

void sub_10011FD4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10011FD64(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = *(*(a1 + 32) + 104);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10011FEEC;
  v18[3] = &unk_100279A28;
  v9 = *(a1 + 48);
  v23 = a2;
  v22 = a3;
  v19 = v7;
  v17 = *(a1 + 32);
  *&v10 = v9;
  *(&v10 + 1) = *(a1 + 56);
  v16 = v10;
  v11 = *(&v17 + 1);
  v21 = v16;
  v20 = v17;
  v12 = v18;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002BB8;
  block[3] = &unk_100271E98;
  v25 = v12;
  v13 = v8;
  v14 = v7;
  v15 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v13, v15);
}

id sub_10011FEEC(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 80), *(a1 + 72), *(a1 + 32));
  }

  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  v5 = *(a1 + 40);
  v6 = *(v5 + 56);
  if (v4 == v6)
  {
    *(v5 + 56) = 0;

    v3 = *(*(a1 + 64) + 8);
    v4 = *(v3 + 40);
  }

  *(v3 + 40) = 0;

  v7 = [*(a1 + 48) totalUnitCount];
  v8 = *(a1 + 48);

  return [v8 setCompletedUnitCount:v7];
}

id sub_10011FF8C(uint64_t a1)
{
  v2 = [*(a1 + 32) engineLibrary];
  v3 = [v2 syncManager];
  [v3 configureDirectTransportTask:*(*(a1 + 32) + 56)];

  v4 = *(*(a1 + 32) + 56);

  return [v4 runWithNoSyncSession];
}

void sub_100120148(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) abstractObject];
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = sub_100004550;
  v66 = sub_10000538C;
  v67 = 0;
  v60[0] = _NSConcreteStackBlock;
  v60[1] = 3221225472;
  v60[2] = sub_100120720;
  v60[3] = &unk_100279AC8;
  v60[4] = *(a1 + 32);
  v5 = v4;
  v61 = v5;
  v6 = objc_retainBlock(v60);
  v7 = [v3 error];
  if (!v7)
  {
    v41 = v3;
    LOBYTE(block[0]) = 0;
    v11 = *(a1 + 40);
    v12 = [*(a1 + 48) transactionTransportScopeMapping];
    v13 = *(a1 + 56);
    v58 = 0;
    v59 = v11;
    v56 = 0;
    v57 = 0;
    v14 = [v13 cloudResourceForLocalResource:&v59 cloudRecord:&v58 target:&v57 shouldNotTrustCaches:block allowUnsafeClientCache:0 transportScopeMapping:v12 error:&v56];
    v15 = v59;

    v16 = v58;
    v42 = v57;
    v10 = v56;
    v43 = v16;
    if (!v14 || v16)
    {
      if (v14)
      {
        v39 = v15;
        v40 = v12;
        v18 = [v14 itemScopedIdentifier];
        v19 = [v18 scopeIdentifier];
        v20 = [*(a1 + 48) scopes];
        v55 = 0;
        v21 = [v40 addTransportScopeForScopeIdentifier:v19 scopes:v20 useStagingScopeIfNecessary:1 error:&v55];
        v38 = v5;
        v22 = v55;

        if (v21)
        {
          v23 = v22;
          v5 = v38;
          v24 = [CPLInMemoryResourceDownloadTask alloc];
          v25 = +[NSUUID UUID];
          v26 = [v25 UUIDString];
          v51[0] = _NSConcreteStackBlock;
          v51[1] = 3221225472;
          v51[2] = sub_1001209A4;
          v51[3] = &unk_100279B18;
          v51[4] = *(a1 + 32);
          v52 = v42;
          v53 = v40;
          v54 = *(a1 + 64);
          v48[0] = _NSConcreteStackBlock;
          v48[1] = 3221225472;
          v48[2] = sub_100120AE0;
          v48[3] = &unk_100279B68;
          v48[4] = *(a1 + 32);
          v50 = &v62;
          v49 = v38;
          v27 = [v24 initWithResource:v39 taskIdentifier:v26 launchHandler:v51 completionHandler:v48];
          v28 = v63[5];
          v63[5] = v27;

          [v63[5] associateCloudResource:v14 ofRecord:v43];
          [v63[5] setHighPriority:0];
          [v63[5] setClientBundleID:*(a1 + 64)];
        }

        else
        {
          v31 = (v6[2])(v6, v22, v39);
          v23 = v22;
          v5 = v38;
          v32 = v63[5];
          v63[5] = v31;
        }

        v9 = 1;
        v15 = v39;
        v12 = v40;
LABEL_14:

        v3 = v41;
        goto LABEL_15;
      }
    }

    else
    {

      v17 = [CPLErrors cplErrorWithCode:25 description:@"Record is not found in storage"];

      v10 = v17;
    }

    v29 = v15;
    if (!v15)
    {
      v29 = *(a1 + 40);
    }

    v30 = (v6[2])(v6, v10, v29);
    v9 = 0;
    v14 = v63[5];
    v63[5] = v30;
    goto LABEL_14;
  }

  v8 = (v6[2])(v6, v7, *(a1 + 40));
  v9 = 0;
  v10 = v63[5];
  v63[5] = v8;
LABEL_15:

  v33 = *(a1 + 32);
  v34 = *(v33 + 104);
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_100120D00;
  v44[3] = &unk_100279B90;
  v47 = v9;
  v44[4] = v33;
  v46 = &v62;
  v45 = *(a1 + 72);
  v35 = v44;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002BB8;
  block[3] = &unk_100271E98;
  v69 = v35;
  v36 = v34;
  v37 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v36, v37);

  _Block_object_dispose(&v62, 8);
}

id sub_100120720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001207E8;
  v8[3] = &unk_100279AA0;
  v5 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v5;
  v6 = [CPLInMemoryResourceDownloadTask failedTaskForResource:a3 error:a2 completionHandler:v8];

  return v6;
}

void sub_1001207E8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = *(*(a1 + 32) + 104);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100120948;
  v14[3] = &unk_1002721A0;
  v15 = *(a1 + 40);
  v16 = v6;
  v17 = v7;
  v9 = v14;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002BB8;
  block[3] = &unk_100271E98;
  v19 = v9;
  v10 = v8;
  v11 = v7;
  v12 = v6;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v13);
}

void sub_100120948(uint64_t a1)
{
  v2 = [*(a1 + 32) resourceProgressDelegate];
  [v2 libraryManager:*(a1 + 32) inMemoryDownloadDidFinishForResourceTransferTask:*(a1 + 40) data:0 withError:*(a1 + 48)];
}

void sub_1001209A4(void *a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1[4] + 96) transport];
  v5 = [v3 cloudResource];
  v6 = [v3 cloudRecord];
  v7 = a1[5];
  v8 = a1[6];
  v9 = a1[7];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100120AD0;
  v12[3] = &unk_100279AF0;
  v13 = v3;
  v10 = v3;
  v11 = [v4 inMemoryDownloadTaskForResource:v5 record:v6 target:v7 transportScopeMapping:v8 clientBundleID:v9 completionHandler:v12];

  [v10 launchTransportTask:v11];
}

void sub_100120AE0(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = a1[4];
  v11 = a1[5];
  v12 = *(v10 + 104);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100120C68;
  v19[3] = &unk_100279B40;
  v24 = a1[6];
  v19[4] = v10;
  v20 = v11;
  v21 = v7;
  v22 = v8;
  v23 = v9;
  v13 = v19;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002BB8;
  block[3] = &unk_100271E98;
  v26 = v13;
  v14 = v12;
  v15 = v9;
  v16 = v8;
  v17 = v7;
  v18 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v14, v18);
}

void sub_100120C68(uint64_t a1)
{
  v2 = *(*(a1 + 72) + 8);
  v3 = *(v2 + 40);
  v4 = *(a1 + 32);
  v5 = *(v4 + 64);
  if (v3 == v5)
  {
    *(v4 + 64) = 0;

    v2 = *(*(a1 + 72) + 8);
    v3 = *(v2 + 40);
  }

  *(v2 + 40) = 0;

  v6 = [*(a1 + 40) resourceProgressDelegate];
  [v6 libraryManager:*(a1 + 40) inMemoryDownloadDidFinishForResourceTransferTask:*(a1 + 48) data:*(a1 + 56) withError:*(a1 + 64)];
}

id sub_100120D00(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 64);
    if (v3)
    {
      [v3 cancelTask];
      v2 = *(a1 + 32);
    }

    objc_storeStrong((v2 + 64), *(*(*(a1 + 48) + 8) + 40));
  }

  v4 = *(*(*(a1 + 48) + 8) + 40);
  (*(*(a1 + 40) + 16))();
  v5 = *(*(*(a1 + 48) + 8) + 40);

  return [v5 launch];
}

void sub_100120F18(id *a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100120FD0;
  v4[3] = &unk_100279BE0;
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  [a2 do:v4];
}

uint64_t sub_100120FD0(id *a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = a1[4];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = [a1[5] localScopedIdentifierForCloudScopedIdentifierIncludeRemappedRecords:{v7, v10}];
        if (v8)
        {
          [a1[6] setObject:v8 forKey:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  return 1;
}

void sub_1001210F4(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 error];

  v4 = *(a1 + 40);
  if (v3)
  {
    v5 = [v6 error];
    (*(v4 + 16))(v4, 0, v5);
  }

  else
  {
    (*(v4 + 16))(*(a1 + 40), *(a1 + 32), 0);
  }
}

void sub_1001212B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  if (!v4)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = *(a1 + 32);
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (!v8)
    {
      goto LABEL_17;
    }

    v9 = v8;
    v10 = *v18;
    while (1)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v16 = 0;
        v13 = *(a1 + 40);
        if (*(a1 + 56) != 1)
        {
          v15 = [v13 localScopedIdentifierForCloudScopedIdentifier:v12 isFinal:&v16];
          if (!v15)
          {
            continue;
          }

LABEL_13:
          [v6 setObject:v15 forKey:v12];
LABEL_14:

          continue;
        }

        v14 = [v13 cloudScopedIdentifierForLocalScopedIdentifier:v12 isFinal:&v16];
        v15 = v14;
        if ((v16 & 1) == 0)
        {
          goto LABEL_14;
        }

        if (v14)
        {
          goto LABEL_13;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (!v9)
      {
LABEL_17:

        (*(*(a1 + 48) + 16))(*(a1 + 48), v6, 0);
        goto LABEL_18;
      }
    }
  }

  v5 = *(a1 + 48);
  v6 = [v3 error];
  (*(v5 + 16))(v5, 0, v6);
LABEL_18:
}

void sub_100121788(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = +[CPLErrors readOnlyError];
    (*(v1 + 16))(v1, 0, v2);
  }
}

void sub_100121804(uint64_t a1, void *a2)
{
  v3 = a2;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100121A48;
  v25[3] = &unk_100279C58;
  v28 = *(a1 + 64);
  v4 = v3;
  v26 = v4;
  v27 = *(a1 + 32);
  v5 = objc_retainBlock(v25);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100121AA4;
  v18[3] = &unk_100279D70;
  v6 = *(a1 + 48);
  v18[4] = *(a1 + 40);
  v7 = v6;
  v8 = *(a1 + 72);
  v19 = v7;
  v24 = v8;
  v20 = *(a1 + 56);
  v9 = v4;
  v21 = v9;
  v10 = v5;
  v23 = v10;
  v22 = *(a1 + 32);
  v11 = objc_retainBlock(v18);
  if ([*(a1 + 48) scopeType] == 4)
  {
    v12 = *(a1 + 56);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1001225C8;
    v14[3] = &unk_100279D98;
    v15 = v12;
    v16 = v11;
    v17 = v10;
    v13 = [v15 performReadTransactionWithBlock:v14];
  }

  else
  {
    (v11[2])(v11);
  }
}

id sub_100121A48(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    (*(v2 + 16))();
  }

  [*(a1 + 32) unblock];
  v3 = [*(a1 + 40) totalUnitCount];
  v4 = *(a1 + 40);

  return [v4 setCompletedUnitCount:v3];
}

void sub_100121AA4(uint64_t a1)
{
  v10 = *(a1 + 32);
  v2 = *(v10 + 104);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100121C28;
  v11[3] = &unk_100279D70;
  v3 = *(&v10 + 1);
  v16 = *(a1 + 80);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v12 = v10;
  v13 = v6;
  v15 = *(a1 + 72);
  v14 = *(a1 + 64);
  v7 = v11;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002BB8;
  block[3] = &unk_100271E98;
  v18 = v7;
  v8 = v2;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v8, v9);
}

void sub_100121C28(uint64_t a1)
{
  v2 = [*(a1 + 32) engineLibrary];
  v3 = [v2 transport];

  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = sub_100004550;
  v17[4] = sub_10000538C;
  v18 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100121E04;
  v11[3] = &unk_100279D48;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v16 = *(a1 + 80);
  v11[4] = v4;
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v15 = v17;
  v14 = *(a1 + 72);
  v6 = [v3 createScopeTaskForScope:v5 completionHandler:v11];
  v7 = *(a1 + 64);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100122560;
  v9[3] = &unk_1002720E0;
  v9[4] = *(a1 + 32);
  v8 = v6;
  v10 = v8;
  [v7 performAsCurrentWithPendingUnitCount:1 usingBlock:v9];

  _Block_object_dispose(v17, 8);
}

void sub_100121E04(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = *(*(a1 + 32) + 104);
    v28 = _NSConcreteStackBlock;
    v29 = 3221225472;
    *&v30 = sub_100122548;
    *(&v30 + 1) = &unk_100272E20;
    v11 = &v33;
    v33 = *(a1 + 56);
    v12 = &v31;
    v31 = v7;
    v13 = &v32;
    v32 = v9;
    v14 = &v28;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100002BB8;
    block[3] = &unk_100271E98;
    v47 = v14;
    v15 = v10;
    v16 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    dispatch_async(v15, v16);
  }

  else
  {
    if ([v7 needsToSetScopeIdentifier])
    {
      sub_1001B2EA0(a1, v7, v17, v18, v19, v20, v21, v22, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
    }

    v23 = *(a1 + 40);
    v24 = *(a1 + 48);
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_1001220B0;
    v42[3] = &unk_100279CA8;
    v11 = &v43;
    v25 = v7;
    v43 = v25;
    v12 = &v44;
    v44 = *(a1 + 40);
    v13 = v45;
    v45[0] = v8;
    v34 = _NSConcreteStackBlock;
    v35 = 3221225472;
    v36 = sub_10012218C;
    v37 = &unk_100279D20;
    v26 = *(a1 + 64);
    v45[1] = *(a1 + 64);
    v41 = v26;
    v38 = *(a1 + 32);
    v39 = v25;
    v40 = *(a1 + 56);
    v27 = [v23 performWriteTransactionByPassBlocker:v24 withBlock:v42 completionHandler:&v34];
  }
}

void sub_1001220B0(id *a1, void *a2)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001B0BDC;
  v9[3] = &unk_100279C80;
  v4 = a1 + 7;
  v5 = a1[4];
  v6 = a1[5];
  *&v7 = a1[6];
  *(&v7 + 1) = *v4;
  *&v8 = v5;
  *(&v8 + 1) = v6;
  v10 = v8;
  v11 = v7;
  [a2 do:v9];
}

void sub_10012218C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 56) + 8) + 40);
  if (v4 && [v4 needsToSetScopeIdentifier])
  {
    sub_1001B2F78(a1, a1 + 56, v5, v6, v7, v8, v9, v10, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45);
  }

  v11 = [v3 error];

  if (v11)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v19 = sub_10011B768();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = *(a1 + 40);
        v21 = [v3 error];
        *buf = 138412546;
        *&buf[4] = v20;
        *&buf[12] = 2112;
        *&buf[14] = v21;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Unable to create %@: %@", buf, 0x16u);
      }
    }

    v22 = *(*(a1 + 32) + 104);
    v41 = _NSConcreteStackBlock;
    v42 = 3221225472;
    v43 = sub_1001224BC;
    v44 = &unk_100279CD0;
    v23 = v46;
    v24 = *(a1 + 48);
    v25 = *(a1 + 56);
    v46[0] = v24;
    v46[1] = v25;
    v45 = v3;
    v26 = &v41;
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100002BB8;
    v48 = &unk_100271E98;
    v49 = v26;
    v27 = v22;
    v28 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, buf);
    dispatch_async(v27, v28);
  }

  else
  {
    if (!*(*(*(a1 + 56) + 8) + 40))
    {
      sub_1001B3068(a1, v12, v13, v14, v15, v16, v17, v18, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45);
    }

    v29 = *(*(a1 + 32) + 104);
    v36 = _NSConcreteStackBlock;
    *&v37 = 3221225472;
    *(&v37 + 1) = sub_100122528;
    v38 = &unk_100279CF8;
    v23 = &v39;
    v30 = *(a1 + 48);
    v31 = *(a1 + 56);
    v39 = v30;
    v40 = v31;
    v32 = &v36;
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100002BB8;
    v48 = &unk_100271E98;
    v49 = v32;
    v33 = v29;
    v34 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, buf);
    dispatch_async(v33, v34);
  }
}

void sub_1001224BC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(*(a1 + 48) + 8) + 40);
  v3 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2, v3);
}

id sub_100122560(uint64_t a1)
{
  v2 = [*(a1 + 32) engineLibrary];
  v3 = [v2 syncManager];
  [v3 configureDirectTransportTask:*(a1 + 40)];

  v4 = *(a1 + 40);

  return [v4 runWithNoSyncSession];
}

void sub_1001225C8(uint64_t a1)
{
  v8 = [*(a1 + 32) scopes];
  v2 = [v8 primaryScope];
  v3 = @"iCPL scope has not been seen by CPL yet";
  if (v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = @"iCPL scope has not been seen by CPL yet";
  }

  v5 = v4;
  if (v2)
  {
    if ([v8 valueForFlag:16 forScope:v2])
    {
      v3 = @"iCPL has not been activated by client";
    }

    else
    {
      v6 = [v8 transportScopeForScope:v2];

      if (v6)
      {
        (*(*(a1 + 40) + 16))();
        goto LABEL_13;
      }

      v3 = @"iCPL zone has not been fetched or created yet";
    }
  }

  if ([*(a1 + 32) hasPendingResetSync])
  {
    v3 = [(__CFString *)v3 stringByAppendingString:@" - maybe because of a reset sync"];
  }

  v7 = [CPLErrors cplErrorWithCode:100 description:@"Can't create a Shared Library: %@", v3];
  (*(*(a1 + 48) + 16))();

LABEL_13:
}