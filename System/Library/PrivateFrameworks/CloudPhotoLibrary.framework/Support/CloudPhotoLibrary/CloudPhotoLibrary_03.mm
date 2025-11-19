uint64_t Rpcproto_ErrorInfo.decodeMessage<A>(decoder:)()
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

      if (result <= 4)
      {
        switch(result)
        {
          case 1:
LABEL_4:
            dispatch thunk of Decoder.decodeSingularStringField(value:)();
            goto LABEL_5;
          case 3:
            v3 = v0;
            sub_1000BA0CC();
            break;
          case 4:
            v3 = v0;
            sub_1000BA078();
            break;
          default:
            goto LABEL_5;
        }

        v0 = v3;
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else
      {
        if (result <= 6)
        {
          goto LABEL_4;
        }

        if (result == 7)
        {
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        }

        else if (result == 8)
        {
          type metadata accessor for Rpcproto_ErrorInfo.LoggingDetail(0);
          sub_1000BA290(&qword_1002C0820, type metadata accessor for Rpcproto_ErrorInfo.LoggingDetail);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Rpcproto_ErrorInfo.traverse<A>(visitor:)()
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
    v6 = v1;
    if (Rpcproto_ErrorInfo.Client.Code.rawValue.getter(v0[4], *(v0 + 40)))
    {
      sub_1000BA0CC();
      result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
      if (v1)
      {
        return result;
      }

      v6 = 0;
    }

    if (v0[6])
    {
      v13 = v0[6];
      v14 = *(v0 + 56);
      sub_1000BA078();
      v7 = v6;
      result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
      if (v6)
      {
        return result;
      }
    }

    else
    {
      v7 = v6;
    }

    v8 = v0[9];
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v0[8] & 0xFFFFFFFFFFFFLL;
    }

    if (!v9 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v7))
    {
      v10 = v0[3];
      v11 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v11 = v0[2] & 0xFFFFFFFFFFFFLL;
      }

      if (!v11 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v7))
      {
        if (!*(v0 + 20) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v7))
        {
          if (!*(v0[11] + 16) || (type metadata accessor for Rpcproto_ErrorInfo.LoggingDetail(0), sub_1000BA290(&qword_1002C0820, type metadata accessor for Rpcproto_ErrorInfo.LoggingDetail), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v7))
          {
            v12 = v0 + *(type metadata accessor for Rpcproto_ErrorInfo(0) + 44);
            return UnknownStorage.traverse<A>(visitor:)();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000B5D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0xE000000000000000;
  *(a2 + 80) = 0;
  *(a2 + 88) = &_swiftEmptyArrayStorage;
  v2 = a2 + *(a1 + 44);
  return UnknownStorage.init()();
}

uint64_t sub_1000B5DDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000B5E50(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1000B5EC4(uint64_t a1, uint64_t a2))()
{
  result = Goldilocks_RecordRetentionPolicy.rawValue.getter;
  v4 = v2 + *(a2 + 44);
  return result;
}

uint64_t sub_1000B5F18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BA290(&qword_1002C0C48, type metadata accessor for Rpcproto_ErrorInfo);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000B5FB8()
{
  sub_1000BA290(&qword_1002C08B8, type metadata accessor for Rpcproto_ErrorInfo);

  return Message.debugDescription.getter();
}

uint64_t sub_1000B6024()
{
  sub_1000BA290(&qword_1002C08B8, type metadata accessor for Rpcproto_ErrorInfo);

  return Message.hash(into:)();
}

void sub_1000B60A0(int a1)
{
  v1._countAndFlagsBits = 0x746E65696C432ELL;
  v1._object = 0xE700000000000000;
  sub_1000B8938(a1, v1, static Rpcproto_ErrorInfo.Client.protoMessageName, &static Rpcproto_ErrorInfo.Client.protoMessageName[1]);
}

void *Rpcproto_ErrorInfo.Client.protoMessageName.unsafeMutableAddressor()
{
  if (qword_1002C05A8 != -1)
  {
    swift_once();
  }

  return static Rpcproto_ErrorInfo.Client.protoMessageName;
}

uint64_t Rpcproto_ErrorInfo.Client.traverse<A>(visitor:)()
{
  if (!Rpcproto_ErrorInfo.Client.Code.rawValue.getter(*v0, *(v0 + 8)) || (sub_1000BA0CC(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Rpcproto_ErrorInfo.Client(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t static Rpcproto_ErrorInfo.Client.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = Rpcproto_ErrorInfo.Client.Code.rawValue.getter(*a1, *(a1 + 8));
  if (v4 != Rpcproto_ErrorInfo.Client.Code.rawValue.getter(v2, v3))
  {
    return 0;
  }

  v5 = *(type metadata accessor for Rpcproto_ErrorInfo.Client(0) + 20);
  type metadata accessor for UnknownStorage();
  sub_1000BA290(&qword_1002C0840, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t (*sub_1000B63CC(uint64_t a1, uint64_t a2))()
{
  result = Goldilocks_RecordRetentionPolicy.rawValue.getter;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_1000B6420(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BA290(&qword_1002C0C40, type metadata accessor for Rpcproto_ErrorInfo.Client);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000B64C0()
{
  sub_1000BA290(&qword_1002C08D0, type metadata accessor for Rpcproto_ErrorInfo.Client);

  return Message.debugDescription.getter();
}

uint64_t sub_1000B652C()
{
  sub_1000BA290(&qword_1002C08D0, type metadata accessor for Rpcproto_ErrorInfo.Client);

  return Message.hash(into:)();
}

uint64_t sub_1000B65A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = Rpcproto_ErrorInfo.Client.Code.rawValue.getter(*a1, *(a1 + 8));
  if (v6 != Rpcproto_ErrorInfo.Client.Code.rawValue.getter(v4, v5))
  {
    return 0;
  }

  v7 = *(a3 + 20);
  type metadata accessor for UnknownStorage();
  sub_1000BA290(&qword_1002C0840, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1000B6674()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static Rpcproto_ErrorInfo.Client.Code._protobuf_nameMap);
  sub_1000BA040(v0, static Rpcproto_ErrorInfo.Client.Code._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v177 = swift_allocObject();
  *(v177 + 16) = xmmword_1002440F0;
  v4 = v177 + v3;
  v5 = v177 + v3 + v1[14];
  *(v177 + v3) = 0;
  *v5 = "noerror";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v177 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "unknown";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v8();
  v10 = (v177 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "expiredAppConfig";
  *(v11 + 1) = 16;
  v11[16] = 2;
  v8();
  v12 = (v177 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "expiredGlobalConfig";
  *(v13 + 1) = 19;
  v13[16] = 2;
  v8();
  v14 = (v177 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "badSyntax";
  *(v15 + 1) = 9;
  v15[16] = 2;
  v8();
  v16 = (v177 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "forbidden";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v8();
  v18 = (v177 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "throttled";
  *(v19 + 1) = 9;
  v19[16] = 2;
  v8();
  v20 = (v177 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "refused";
  *(v21 + 1) = 7;
  v21[16] = 2;
  v8();
  v22 = v177 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "notSupported";
  *(v22 + 8) = 12;
  *(v22 + 16) = 2;
  v8();
  v23 = (v177 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "exists";
  *(v24 + 1) = 6;
  v24[16] = 2;
  v8();
  v25 = (v177 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "requestAlreadyProcessed";
  *(v26 + 1) = 23;
  v26[16] = 2;
  v8();
  v27 = (v177 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "badAuthToken";
  *(v28 + 1) = 12;
  v28[16] = 2;
  v8();
  v29 = (v177 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "needsAuthentication";
  *(v30 + 1) = 19;
  v30[16] = 2;
  v8();
  v31 = (v177 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "mescalSignatureMissing";
  *(v32 + 1) = 22;
  v32[16] = 2;
  v8();
  v33 = (v177 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "invalidMescalSignature";
  *(v34 + 1) = 22;
  v34[16] = 2;
  v8();
  v35 = (v177 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "opLockFailure";
  *(v36 + 1) = 13;
  v36[16] = 2;
  v8();
  v37 = v177 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 16;
  *v37 = "atomicFailure";
  *(v37 + 8) = 13;
  *(v37 + 16) = 2;
  v8();
  v38 = (v177 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "resetNeeded";
  *(v39 + 1) = 11;
  v39[16] = 2;
  v8();
  v40 = (v177 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "fieldsPerTypeLimitExceeded";
  *(v41 + 1) = 26;
  v41[16] = 2;
  v8();
  v42 = (v177 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 19;
  *v43 = "typeBusy";
  *(v43 + 1) = 8;
  v43[16] = 2;
  v8();
  v44 = (v177 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 20;
  *v45 = "numRecordTypesLimitExceeded";
  *(v45 + 1) = 27;
  v45[16] = 2;
  v8();
  v46 = (v177 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 21;
  *v47 = "invalidContainer";
  *(v47 + 1) = 16;
  v47[16] = 2;
  v8();
  v48 = (v177 + v3 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 22;
  *v49 = "invalidRecordTypeName";
  *(v49 + 1) = 21;
  v49[16] = 2;
  v8();
  v50 = (v177 + v3 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 23;
  *v51 = "invalidFieldName";
  *(v51 + 1) = 16;
  v51[16] = 2;
  v8();
  v52 = (v177 + v3 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 24;
  *v53 = "invalidFieldValue";
  *(v53 + 1) = 17;
  v53[16] = 2;
  v8();
  v54 = (v177 + v3 + 25 * v2);
  v55 = v54 + v1[14];
  *v54 = 25;
  *v55 = "invalidIdentifier";
  *(v55 + 1) = 17;
  v55[16] = 2;
  v8();
  v56 = (v177 + v3 + 26 * v2);
  v57 = v56 + v1[14];
  *v56 = 26;
  *v57 = "fieldNotQueryable";
  *(v57 + 1) = 17;
  v57[16] = 2;
  v8();
  v58 = (v177 + v3 + 27 * v2);
  v59 = v58 + v1[14];
  *v58 = 27;
  *v59 = "fieldNotSortable";
  *(v59 + 1) = 16;
  v59[16] = 2;
  v8();
  v60 = (v177 + v3 + 28 * v2);
  v61 = v60 + v1[14];
  *v60 = 28;
  *v61 = "queryFilterLimitExceeded";
  *(v61 + 1) = 24;
  v61[16] = 2;
  v8();
  v62 = (v177 + v3 + 29 * v2);
  v63 = v62 + v1[14];
  *v62 = 29;
  *v63 = "queryFilterValuesLimitExceeded";
  *(v63 + 1) = 30;
  v63[16] = 2;
  v8();
  v64 = (v177 + v3 + 30 * v2);
  v65 = v64 + v1[14];
  *v64 = 30;
  *v65 = "membershipQueryLimitExceeded";
  *(v65 + 1) = 28;
  v65[16] = 2;
  v8();
  v66 = (v177 + v3 + 31 * v2);
  v67 = v66 + v1[14];
  *v66 = 31;
  *v67 = "notificationAdditionalFieldLimitExceeded";
  *(v67 + 1) = 40;
  v67[16] = 2;
  v8();
  v68 = v177 + v3 + 32 * v2 + v1[14];
  *(v4 + 32 * v2) = 32;
  *v68 = "notificationAdditionalFieldInvalidType";
  *(v68 + 8) = 38;
  *(v68 + 16) = 2;
  v8();
  v69 = (v177 + v3 + 33 * v2);
  v70 = v69 + v1[14];
  *v69 = 33;
  *v70 = "subscriptionLimitExceeded";
  *(v70 + 1) = 25;
  v70[16] = 2;
  v8();
  v71 = (v177 + v3 + 34 * v2);
  v72 = v71 + v1[14];
  *v71 = 34;
  *v72 = "uniqueTriggerLimitExceeded";
  *(v72 + 1) = 26;
  v72[16] = 2;
  v8();
  v73 = (v177 + v3 + 35 * v2);
  v74 = v73 + v1[14];
  *v73 = 35;
  *v74 = "triggerSubscriptionBindingTypeMismatch";
  *(v74 + 1) = 38;
  v74[16] = 2;
  v8();
  v75 = (v177 + v3 + 36 * v2);
  v76 = v75 + v1[14];
  *v75 = 36;
  *v76 = "zoneSizeLimitExceeded";
  *(v76 + 1) = 21;
  v76[16] = 2;
  v8();
  v77 = (v177 + v3 + 37 * v2);
  v78 = v77 + v1[14];
  *v77 = 37;
  *v78 = "zoneCountLimitExceeded";
  *(v78 + 1) = 22;
  v78[16] = 2;
  v8();
  v79 = (v177 + v3 + 38 * v2);
  v80 = v79 + v1[14];
  *v79 = 38;
  *v80 = "uniqueFieldFailure";
  *(v80 + 1) = 18;
  v80[16] = 2;
  v8();
  v81 = (v177 + v3 + 39 * v2);
  v82 = v81 + v1[14];
  *v81 = 39;
  *v82 = "validatingReferenceError";
  *(v82 + 1) = 24;
  v82[16] = 2;
  v8();
  v83 = (v177 + v3 + 40 * v2);
  v84 = v83 + v1[14];
  *v83 = 40;
  *v84 = "fullResetNeeded";
  *(v84 + 1) = 15;
  v84[16] = 2;
  v8();
  v85 = (v177 + v3 + 41 * v2);
  v86 = v85 + v1[14];
  *v85 = 41;
  *v86 = "alreadyShared";
  *(v86 + 1) = 13;
  v86[16] = 2;
  v8();
  v87 = (v177 + v3 + 42 * v2);
  v88 = v87 + v1[14];
  *v87 = 42;
  *v88 = "emailOutOfNetwork";
  *(v88 + 1) = 17;
  v88[16] = 2;
  v8();
  v89 = (v177 + v3 + 43 * v2);
  v90 = v89 + v1[14];
  *v89 = 43;
  *v90 = "duplicateSubscription";
  *(v90 + 1) = 21;
  v90[16] = 2;
  v8();
  v91 = (v177 + v3 + 44 * v2);
  v92 = v91 + v1[14];
  *v91 = 46;
  *v92 = "expiredPutReceipt";
  *(v92 + 1) = 17;
  v92[16] = 2;
  v8();
  v93 = (v177 + v3 + 45 * v2);
  v94 = v93 + v1[14];
  *v93 = 47;
  *v94 = "quotaExceeded";
  *(v94 + 1) = 13;
  v94[16] = 2;
  v8();
  v95 = (v177 + v3 + 46 * v2);
  v96 = v95 + v1[14];
  *v95 = 48;
  *v96 = "zoneNotFound";
  *(v96 + 1) = 12;
  v96[16] = 2;
  v8();
  v97 = (v177 + v3 + 47 * v2);
  v98 = v97 + v1[14];
  *v97 = 49;
  *v98 = "invalidBundleId";
  *(v98 + 1) = 15;
  v98[16] = 2;
  v8();
  v99 = (v177 + v3 + 48 * v2);
  v100 = v99 + v1[14];
  *v99 = 50;
  *v100 = "unsupportedDevice";
  *(v100 + 1) = 17;
  v100[16] = 2;
  v8();
  v101 = (v177 + v3 + 49 * v2);
  v102 = v101 + v1[14];
  *v101 = 51;
  *v102 = "blacklisted";
  *(v102 + 1) = 11;
  v102[16] = 2;
  v8();
  v103 = (v177 + v3 + 50 * v2);
  v104 = v103 + v1[14];
  *v103 = 52;
  *v104 = "recordProtectionInfoTagMismatch";
  *(v104 + 1) = 31;
  v104[16] = 2;
  v8();
  v105 = (v177 + v3 + 51 * v2);
  v106 = v105 + v1[14];
  *v105 = 53;
  *v106 = "zoneProtectionInfoTagMismatch";
  *(v106 + 1) = 29;
  v106[16] = 2;
  v8();
  v107 = (v177 + v3 + 52 * v2);
  v108 = v107 + v1[14];
  *v107 = 54;
  *v108 = "assetSizeLimitExceeded";
  *(v108 + 1) = 22;
  v108[16] = 2;
  v8();
  v109 = (v177 + v3 + 53 * v2);
  v110 = v109 + v1[14];
  *v109 = 55;
  *v110 = "batchOperationLimitExceeded";
  *(v110 + 1) = 27;
  v110[16] = 2;
  v8();
  v111 = (v177 + v3 + 54 * v2);
  v112 = v111 + v1[14];
  *v111 = 56;
  *v112 = "requestSizeLimitExceeded";
  *(v112 + 1) = 24;
  v112[16] = 2;
  v8();
  v113 = (v177 + v3 + 55 * v2);
  v114 = v113 + v1[14];
  *v113 = 57;
  *v114 = "recordSizeLimitExceeded";
  *(v114 + 1) = 23;
  v114[16] = 2;
  v8();
  v115 = (v177 + v3 + 56 * v2);
  v116 = v115 + v1[14];
  *v115 = 58;
  *v116 = "databaseCommitSizeExceeded";
  *(v116 + 1) = 26;
  v116[16] = 2;
  v8();
  v117 = (v177 + v3 + 57 * v2);
  v118 = v117 + v1[14];
  *v117 = 59;
  *v118 = "userDeletedDataForZone";
  *(v118 + 1) = 22;
  v118[16] = 2;
  v8();
  v119 = (v177 + v3 + 58 * v2);
  v120 = v119 + v1[14];
  *v119 = 60;
  *v120 = "staleRecordUpdate";
  *(v120 + 1) = 17;
  v120[16] = 2;
  v8();
  v121 = (v177 + v3 + 59 * v2);
  v122 = v121 + v1[14];
  *v121 = 61;
  *v122 = "shareParticipantLimitExceeded";
  *(v122 + 1) = 29;
  v122[16] = 2;
  v8();
  v123 = (v177 + v3 + 60 * v2);
  v124 = v123 + v1[14];
  *v123 = 62;
  *v124 = "shareParticipantError";
  *(v124 + 1) = 21;
  v124[16] = 2;
  v8();
  v125 = (v177 + v3 + 61 * v2);
  v126 = v125 + v1[14];
  *v125 = 64;
  *v126 = "pcsChainingError";
  *(v126 + 1) = 16;
  v126[16] = 2;
  v8();
  v127 = (v177 + v3 + 62 * v2);
  v128 = v127 + v1[14];
  *v127 = 65;
  *v128 = "hierarchyAlreadyHasShare";
  *(v128 + 1) = 24;
  v128[16] = 2;
  v8();
  v129 = (v177 + v3 + 63 * v2);
  v130 = v129 + v1[14];
  *v129 = 66;
  *v130 = "u13Restricted";
  *(v130 + 1) = 13;
  v130[16] = 2;
  v8();
  v131 = v177 + v3 + (v2 << 6) + v1[14];
  *(v4 + (v2 << 6)) = 67;
  *v131 = "managedAppleIdRestricted";
  *(v131 + 8) = 24;
  *(v131 + 16) = 2;
  v8();
  v132 = (v177 + v3 + 65 * v2);
  v133 = v132 + v1[14];
  *v132 = 68;
  *v133 = "shareParticipantContactError";
  *(v133 + 1) = 28;
  v133[16] = 2;
  v8();
  v134 = (v177 + v3 + 66 * v2);
  v135 = v134 + v1[14];
  *v134 = 69;
  *v135 = "recordArchived";
  *(v135 + 1) = 14;
  v135[16] = 2;
  v8();
  v136 = (v177 + v3 + 67 * v2);
  v137 = v136 + v1[14];
  *v136 = 70;
  *v137 = "databaseAccessDenied";
  *(v137 + 1) = 20;
  v137[16] = 2;
  v8();
  v138 = (v177 + v3 + 68 * v2);
  v139 = v138 + v1[14];
  *v138 = 71;
  *v139 = "parentHierarchyDepthLimitExceeded";
  *(v139 + 1) = 33;
  v139[16] = 2;
  v8();
  v140 = (v177 + v3 + 69 * v2);
  v141 = v140 + v1[14];
  *v140 = 72;
  *v141 = "zonePcsUserIdentityUnknown";
  *(v141 + 1) = 26;
  v141[16] = 2;
  v8();
  v142 = (v177 + v3 + 70 * v2);
  v143 = v142 + v1[14];
  *v142 = 73;
  *v143 = "managedAppleIdBackupBlocked";
  *(v143 + 1) = 27;
  v143[16] = 2;
  v8();
  v144 = (v177 + v3 + 71 * v2);
  v145 = v144 + v1[14];
  *v144 = 74;
  *v145 = "assetReuploadNeeded";
  *(v145 + 1) = 19;
  v145[16] = 2;
  v8();
  v146 = (v177 + v3 + 72 * v2);
  v147 = v146 + v1[14];
  *v146 = 75;
  *v147 = "outOfNetworkUsersUnsupported";
  *(v147 + 1) = 28;
  v147[16] = 2;
  v8();
  v148 = (v177 + v3 + 73 * v2);
  v149 = v148 + v1[14];
  *v148 = 76;
  *v149 = "gameAssignmentNotFound";
  *(v149 + 1) = 22;
  v149[16] = 2;
  v8();
  v150 = (v177 + v3 + 74 * v2);
  v151 = v150 + v1[14];
  *v150 = 10011;
  *v151 = "containerQuotaGraced";
  *(v151 + 1) = 20;
  v151[16] = 2;
  v8();
  v152 = (v177 + v3 + 75 * v2);
  v153 = v152 + v1[14];
  *v152 = 100000;
  *v153 = "sessionContextOperationNotCalled";
  *(v153 + 1) = 32;
  v153[16] = 2;
  v8();
  v154 = (v177 + v3 + 76 * v2);
  v155 = v154 + v1[14];
  *v154 = 100001;
  *v155 = "invalidPartition";
  *(v155 + 1) = 16;
  v155[16] = 2;
  v8();
  v156 = (v177 + v3 + 77 * v2);
  v157 = v156 + v1[14];
  *v156 = 100002;
  *v157 = "containerDoesNotExist";
  *(v157 + 1) = 21;
  v157[16] = 2;
  v8();
  v158 = (v177 + v3 + 78 * v2);
  v159 = v158 + v1[14];
  *v158 = 100003;
  *v159 = "requestedAndCurrentContainerVersionsDiffer";
  *(v159 + 1) = 42;
  v159[16] = 2;
  v8();
  v160 = (v177 + v3 + 79 * v2);
  v161 = v160 + v1[14];
  *v160 = 100004;
  *v161 = "certificateDoesNotHaveContainerAccess";
  *(v161 + 1) = 37;
  v161[16] = 2;
  v8();
  v162 = (v177 + v3 + 80 * v2);
  v163 = v162 + v1[14];
  *v162 = 100005;
  *v163 = "earlierRequestIncomplete";
  *(v163 + 1) = 24;
  v163[16] = 2;
  v8();
  v164 = (v177 + v3 + 81 * v2);
  v165 = v164 + v1[14];
  *v164 = 100006;
  *v165 = "fdbStoreTransactionSizeLimitExceeded";
  *(v165 + 1) = 36;
  v165[16] = 2;
  v8();
  v166 = (v177 + v3 + 82 * v2);
  v167 = v166 + v1[14];
  *v166 = 100007;
  *v167 = "fdbStoreKeySizeLimitExceeded";
  *(v167 + 1) = 28;
  v167[16] = 2;
  v8();
  v168 = (v177 + v3 + 83 * v2);
  v169 = v168 + v1[14];
  *v168 = 100008;
  *v169 = "fdbStoreValueSizeLimitExceeded";
  *(v169 + 1) = 30;
  v169[16] = 2;
  v8();
  v170 = (v177 + v3 + 84 * v2);
  v171 = v170 + v1[14];
  *v170 = 100009;
  *v171 = "authorizeGetFailed";
  *(v171 + 1) = 18;
  v171[16] = 2;
  v8();
  v172 = (v177 + v3 + 85 * v2);
  v173 = v172 + v1[14];
  *v172 = 100010;
  *v173 = "queueInvalidLeaseUuid";
  *(v173 + 1) = 21;
  v173[16] = 2;
  v8();
  v174 = (v177 + v3 + 86 * v2);
  v175 = v174 + v1[14];
  *v174 = 100012;
  *v175 = "userThrottled";
  *(v175 + 1) = 13;
  v175[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

void sub_1000B7CF0(int a1)
{
  v1._countAndFlagsBits = 0x7265767265532ELL;
  v1._object = 0xE700000000000000;
  sub_1000B8938(a1, v1, static Rpcproto_ErrorInfo.Server.protoMessageName, &static Rpcproto_ErrorInfo.Server.protoMessageName[1]);
}

void *Rpcproto_ErrorInfo.Server.protoMessageName.unsafeMutableAddressor()
{
  if (qword_1002C05C0 != -1)
  {
    swift_once();
  }

  return static Rpcproto_ErrorInfo.Server.protoMessageName;
}

uint64_t sub_1000B7D98(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v3, a2);
  sub_1000BA040(v3, a2);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v4 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100244100;
  v8 = v7 + v6 + v4[14];
  *(v7 + v6) = 1;
  *v8 = "type";
  *(v8 + 8) = 4;
  *(v8 + 16) = 2;
  v9 = enum case for _NameMap.NameDescription.same(_:);
  v10 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v10 - 8) + 104))(v8, v9, v10);
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1000B7F7C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v7 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4();
      dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
    }
  }

  return result;
}

uint64_t Rpcproto_ErrorInfo.Server.traverse<A>(visitor:)()
{
  if (!*v0 || (v4 = *v0, v5 = *(v0 + 8), sub_1000BA078(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Rpcproto_ErrorInfo.Server(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_1000B8144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000B81B8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1000B825C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BA290(&qword_1002C0C38, type metadata accessor for Rpcproto_ErrorInfo.Server);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000B82FC()
{
  sub_1000BA290(&qword_1002C08E8, type metadata accessor for Rpcproto_ErrorInfo.Server);

  return Message.debugDescription.getter();
}

uint64_t sub_1000B8368()
{
  sub_1000BA290(&qword_1002C08E8, type metadata accessor for Rpcproto_ErrorInfo.Server);

  return Message.hash(into:)();
}

uint64_t sub_1000B83E4()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static Rpcproto_ErrorInfo.Server.Code._protobuf_nameMap);
  sub_1000BA040(v0, static Rpcproto_ErrorInfo.Server.Code._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_100244110;
  v4 = v34 + v3;
  v5 = v34 + v3 + v1[14];
  *(v34 + v3) = 0;
  *v5 = "noerror";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v34 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "unknown";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v8();
  v10 = (v34 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "overloaded";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v8();
  v12 = (v34 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "notFound";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v34 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "containerUnavailable";
  *(v15 + 1) = 20;
  v15[16] = 2;
  v8();
  v16 = (v34 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "mescalSignatureParseError";
  *(v17 + 1) = 25;
  v17[16] = 2;
  v8();
  v18 = (v34 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "zoneBusy";
  *(v19 + 1) = 8;
  v19[16] = 2;
  v8();
  v20 = (v34 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "zoneUnavailable";
  *(v21 + 1) = 15;
  v21[16] = 2;
  v8();
  v22 = v34 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "transactionTimeout";
  *(v22 + 8) = 18;
  *(v22 + 16) = 2;
  v8();
  v23 = (v34 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 200001;
  *v24 = "partitionLookupFailed";
  *(v24 + 1) = 21;
  v24[16] = 2;
  v8();
  v25 = (v34 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 200002;
  *v26 = "timeoutOnInternalBackends";
  *(v26 + 1) = 25;
  v26[16] = 2;
  v8();
  v27 = (v34 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 200003;
  *v28 = "solrError";
  *(v28 + 1) = 9;
  v28[16] = 2;
  v8();
  v29 = (v34 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 200004;
  *v30 = "userAssignmentLocked";
  *(v30 + 1) = 20;
  v30[16] = 2;
  v8();
  v31 = (v34 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 200005;
  *v32 = "quotaServiceUnavaible";
  *(v32 + 1) = 21;
  v32[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

void sub_1000B8908(int a1)
{
  v1._countAndFlagsBits = 0x676E6967676F4C2ELL;
  v1._object = 0xEE006C6961746544;
  sub_1000B8938(a1, v1, static Rpcproto_ErrorInfo.LoggingDetail.protoMessageName, &static Rpcproto_ErrorInfo.LoggingDetail.protoMessageName[1]);
}

void sub_1000B8938(int a1, Swift::String a2, void *a3, void *a4)
{
  String.append(_:)(a2);
  *a3 = 0xD000000000000012;
  *a4 = 0x8000000100200CE0;
}

void *Rpcproto_ErrorInfo.LoggingDetail.protoMessageName.unsafeMutableAddressor()
{
  if (qword_1002C05D8 != -1)
  {
    swift_once();
  }

  return static Rpcproto_ErrorInfo.LoggingDetail.protoMessageName;
}

uint64_t sub_1000B8A1C(void *a1, void *a2, void *a3)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a3;
    swift_once();
    a2 = v6;
    a3 = v7;
  }

  v3 = *a2;
  v4 = *a3;

  return v3;
}

uint64_t sub_1000B8A78()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static Rpcproto_ErrorInfo.LoggingDetail._protobuf_nameMap);
  sub_1000BA040(v0, static Rpcproto_ErrorInfo.LoggingDetail._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100244120;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1000B8C64(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for _NameMap();

  return sub_1000BA040(v3, a2);
}

uint64_t sub_1000B8CDC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for _NameMap();
  v6 = sub_1000BA040(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t Rpcproto_ErrorInfo.LoggingDetail.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }
  }

  return result;
}

uint64_t Rpcproto_ErrorInfo.LoggingDetail.traverse<A>(visitor:)()
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
      v8 = v0 + *(type metadata accessor for Rpcproto_ErrorInfo.LoggingDetail(0) + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

Swift::Int sub_1000B8F04(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a1(0);
  sub_1000BA290(a2, a3);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000B8F8C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  v2 = a2 + *(a1 + 24);
  return UnknownStorage.init()();
}

uint64_t sub_1000B8FE0(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  if (*a3 != -1)
  {
    v8 = a5;
    v9 = a4;
    swift_once();
    a4 = v9;
    a5 = v8;
  }

  v5 = *a4;
  v6 = *a5;

  return v5;
}

uint64_t sub_1000B9040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000B90B4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1000B9128(uint64_t a1, uint64_t a2))()
{
  result = Goldilocks_RecordRetentionPolicy.rawValue.getter;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_1000B917C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BA290(&qword_1002C0C30, type metadata accessor for Rpcproto_ErrorInfo.LoggingDetail);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000B921C@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for _NameMap();
  v6 = sub_1000BA040(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1000B92B8()
{
  sub_1000BA290(&qword_1002C0820, type metadata accessor for Rpcproto_ErrorInfo.LoggingDetail);

  return Message.debugDescription.getter();
}

Swift::Int sub_1000B9324()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000B937C()
{
  sub_1000BA290(&qword_1002C0820, type metadata accessor for Rpcproto_ErrorInfo.LoggingDetail);

  return Message.hash(into:)();
}

Swift::Int sub_1000B93F8()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t variable initialization expression of RequestItem._storage()
{
  if (qword_1002C06D0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1000B9570@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

id variable initialization expression of CPLCKPhotosSharedLibraryExitMoveBatchFeedbackItem.errorCode()
{
  v0 = objc_allocWithZone(NSNumber);

  return [v0 init];
}

Swift::Int sub_1000B961C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000B9690()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_1000B96DC(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_1000B9754(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000B97D4@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_1000B9818()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_1000B9854()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_1000B98A8()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

void *sub_1000B991C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1000B992C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_1000B99B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_1000B99FC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1000B9A28(uint64_t a1)
{
  v2 = sub_1000BA290(&qword_1002C0CA8, type metadata accessor for URLResourceKey);
  v3 = sub_1000BA290(&unk_1002C0CB0, type metadata accessor for URLResourceKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000B9AE4(uint64_t result)
{
  if (result > 10010)
  {
    if (result <= 100004)
    {
      if (result > 100001)
      {
        if (result == 100002)
        {
          return 76;
        }

        else if (result == 100003)
        {
          return 77;
        }

        else
        {
          return 78;
        }
      }

      else
      {
        switch(result)
        {
          case 10011:
            return 85;
          case 100000:
            return 74;
          case 100001:
            return 75;
        }
      }
    }

    else if (result <= 100007)
    {
      if (result == 100005)
      {
        return 79;
      }

      else if (result == 100006)
      {
        return 80;
      }

      else
      {
        return 81;
      }
    }

    else if (result > 100009)
    {
      if (result == 100010)
      {
        return 84;
      }

      else if (result == 100012)
      {
        return 86;
      }
    }

    else if (result == 100008)
    {
      return 82;
    }

    else
    {
      return 83;
    }
  }

  else
  {
    switch(result)
    {
      case '.':
        result = 44;
        break;
      case '/':
        result = 45;
        break;
      case '0':
        result = 46;
        break;
      case '1':
        result = 47;
        break;
      case '2':
        result = 48;
        break;
      case '3':
        result = 49;
        break;
      case '4':
        result = 50;
        break;
      case '5':
        result = 51;
        break;
      case '6':
        result = 52;
        break;
      case '7':
        result = 53;
        break;
      case '8':
        result = 54;
        break;
      case '9':
        result = 55;
        break;
      case ':':
        result = 56;
        break;
      case ';':
        result = 57;
        break;
      case '<':
        result = 58;
        break;
      case '=':
        result = 59;
        break;
      case '>':
        result = 60;
        break;
      case '@':
        result = 61;
        break;
      case 'A':
        result = 62;
        break;
      case 'B':
        result = 63;
        break;
      case 'C':
        result = 64;
        break;
      case 'D':
        result = 65;
        break;
      case 'E':
        result = 66;
        break;
      case 'F':
        result = 67;
        break;
      case 'G':
        result = 68;
        break;
      case 'H':
        result = 69;
        break;
      case 'I':
        result = 70;
        break;
      case 'J':
        result = 71;
        break;
      case 'K':
        result = 72;
        break;
      case 'L':
        result = 73;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1000B9E9C(uint64_t result)
{
  if (result > 7)
  {
    if (result <= 200001)
    {
      switch(result)
      {
        case 8:
          return 7;
        case 9:
          return 8;
        case 200001:
          return 9;
      }
    }

    else if (result > 200003)
    {
      if (result == 200004)
      {
        return 12;
      }

      else if (result == 200005)
      {
        return 13;
      }
    }

    else if (result == 200002)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }

  else if (result >= 5)
  {
    if (result == 6)
    {
      return 5;
    }

    else if (result == 7)
    {
      return 6;
    }
  }

  return result;
}

uint64_t sub_1000BA008(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000BA040(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1000BA078()
{
  result = qword_1002C0828;
  if (!qword_1002C0828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C0828);
  }

  return result;
}

unint64_t sub_1000BA0CC()
{
  result = qword_1002C0830;
  if (!qword_1002C0830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C0830);
  }

  return result;
}

uint64_t _s22CloudKitImplementation18Rpcproto_ErrorInfoV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
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

  if ((*(a1 + 64) != *(a2 + 64) || *(a1 + 72) != *(a2 + 72)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 80) != *(a2 + 80) || (sub_1000E911C(*(a1 + 88), *(a2 + 88)) & 1) == 0)
  {
    return 0;
  }

  v9 = *(type metadata accessor for Rpcproto_ErrorInfo(0) + 44);
  type metadata accessor for UnknownStorage();
  sub_1000BA290(&qword_1002C0840, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1000BA290(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s22CloudKitImplementation18Rpcproto_ErrorInfoV6ServerV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8) == 1)
  {
    v2 = qword_100244F70[v2];
  }

  v3 = *a2;
  if (*(a2 + 8))
  {
    switch(v3)
    {
      case 1:
        if (v2 != 1)
        {
          return 0;
        }

        goto LABEL_8;
      case 2:
        if (v2 != 2)
        {
          return 0;
        }

        goto LABEL_8;
      case 3:
        if (v2 != 3)
        {
          return 0;
        }

        goto LABEL_8;
      case 4:
        if (v2 != 4)
        {
          return 0;
        }

        goto LABEL_8;
      case 5:
        if (v2 != 6)
        {
          return 0;
        }

        goto LABEL_8;
      case 6:
        if (v2 != 7)
        {
          return 0;
        }

        goto LABEL_8;
      case 7:
        if (v2 != 8)
        {
          return 0;
        }

        goto LABEL_8;
      case 8:
        if (v2 != 9)
        {
          return 0;
        }

        goto LABEL_8;
      case 9:
        v6 = 200001;
        break;
      case 10:
        v6 = 200002;
        break;
      case 11:
        v6 = 200003;
        break;
      case 12:
        v6 = 200004;
        break;
      case 13:
        v6 = 200005;
        break;
      default:
        if (!v2)
        {
          goto LABEL_8;
        }

        return 0;
    }

    if (v2 != v6)
    {
      return 0;
    }

LABEL_8:
    v4 = *(type metadata accessor for Rpcproto_ErrorInfo.Server(0) + 20);
    type metadata accessor for UnknownStorage();
    sub_1000BA290(&qword_1002C0840, &type metadata accessor for UnknownStorage);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  if (v2 == v3)
  {
    goto LABEL_8;
  }

  return 0;
}

uint64_t _s22CloudKitImplementation18Rpcproto_ErrorInfoV13LoggingDetailV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
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

  v6 = *(type metadata accessor for Rpcproto_ErrorInfo.LoggingDetail(0) + 24);
  type metadata accessor for UnknownStorage();
  sub_1000BA290(&qword_1002C0840, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

unint64_t sub_1000BA560()
{
  result = qword_1002C0860;
  if (!qword_1002C0860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C0860);
  }

  return result;
}

unint64_t sub_1000BA5B8()
{
  result = qword_1002C0868;
  if (!qword_1002C0868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C0868);
  }

  return result;
}

unint64_t sub_1000BA610()
{
  result = qword_1002C0870;
  if (!qword_1002C0870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C0870);
  }

  return result;
}

unint64_t sub_1000BA668()
{
  result = qword_1002C0878;
  if (!qword_1002C0878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C0878);
  }

  return result;
}

unint64_t sub_1000BA6C0()
{
  result = qword_1002C0880;
  if (!qword_1002C0880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C0880);
  }

  return result;
}

unint64_t sub_1000BA718()
{
  result = qword_1002C0888;
  if (!qword_1002C0888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C0888);
  }

  return result;
}

uint64_t sub_1000BA79C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000BA814(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000BA79C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1000BAD10()
{
  sub_1000BADC8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000BADC8()
{
  if (!qword_1002C0970)
  {
    type metadata accessor for Rpcproto_ErrorInfo.LoggingDetail(255);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1002C0970);
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for Rpcproto_ErrorInfo.Client.Code(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1000BAE90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1000BAF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for UnknownStorage();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1000BAFA4()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000BB050()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t *sub_1000BB0CC(uint64_t a1, uint64_t *a2)
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

uint64_t sub_1000BB130(uint64_t *a1, uint64_t *a2)
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

void sub_1000BB1DC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void sub_1000BB3D0()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 stringForKey:v1];

  if (v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1000CC1A4();
    v3 = StringProtocol.components<A>(separatedBy:)();

    v4 = 0;
    v5 = *(v3 + 16);
    v6 = v3 + 40;
    v7 = &_swiftEmptyArrayStorage;
LABEL_3:
    v8 = (v6 + 16 * v4);
    while (1)
    {
      if (v5 == v4)
      {

        sub_1000C9AB0(v7);

        return;
      }

      if (v4 >= *(v3 + 16))
      {
        break;
      }

      ++v4;
      v9 = v8 + 2;
      v11 = *(v8 - 1);
      v10 = *v8;
      v12 = objc_opt_self();

      v13 = String._bridgeToObjectiveC()();

      v14 = [v12 resourceTypeFromShortDescription:v13];

      v8 = v9;
      if (v14)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1000C9148(0, *(v7 + 2) + 1, 1, v7);
        }

        v16 = *(v7 + 2);
        v15 = *(v7 + 3);
        if (v16 >= v15 >> 1)
        {
          v7 = sub_1000C9148((v15 > 1), v16 + 1, 1, v7);
        }

        *(v7 + 2) = v16 + 1;
        *&v7[8 * v16 + 32] = v14;
        v6 = v3 + 40;
        goto LABEL_3;
      }
    }

    __break(1u);
  }

  else
  {

    sub_1000C9B5C(&off_1002778C0);
  }
}

BOOL sub_1000BB634(Swift::UInt a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v5 = Hasher._finalize()();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + 8 * v7);
    result = v9 == a1;
    if (v9 == a1)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_1000BB700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

id sub_1000BB7F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = CPLErrorDomain;
  sub_1000BB130(&unk_1002C0E10, &qword_100245068);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100244100;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v8;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  v9 = v6;

  sub_100118E2C(inited);
  swift_setDeallocating();
  sub_1000CCDBC(inited + 32, &unk_1002C4040, &unk_100245070);
  v10 = objc_allocWithZone(NSError);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v12 = [v10 initWithDomain:v9 code:a3 userInfo:isa];

  return v12;
}

id sub_1000BB948(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  if (!String.count.getter())
  {
    v10 = *(a1 + 96);
    if (*(a1 + 104) != 1)
    {
      goto LABEL_12;
    }

    v8 = 0;
    v9 = 0;
LABEL_7:
    if (v10 > 3)
    {
      if (v10 > 5)
      {
        if (v10 == 6)
        {
          v14 = CPLErrorDomain;
          sub_1000BB130(&unk_1002C0E10, &qword_100245068);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_100244100;
          *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
          *(inited + 40) = v51;
          *(inited + 72) = &type metadata for String;
          v52 = v14;
          if (!v8)
          {
            _StringGuts.grow(_:)(34);

            v91 = [a2 description];
            v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v94 = v93;

            v95._countAndFlagsBits = v92;
            v95._object = v94;
            String.append(_:)(v95);

            v9 = 0xD000000000000020;
            v8 = 0x8000000100201BA0;
          }

          *(inited + 48) = v9;
          *(inited + 56) = v8;
          sub_100118E2C(inited);
          swift_setDeallocating();
          sub_1000CCDBC(inited + 32, &unk_1002C4040, &unk_100245070);
          v96 = objc_allocWithZone(NSError);
          v89.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

          v90 = [v96 initWithDomain:v14 code:80 userInfo:v89.super.isa];
          goto LABEL_46;
        }

        if (!v8)
        {
          _StringGuts.grow(_:)(37);

          v72._countAndFlagsBits = a3;
          v72._object = a4;
          String.append(_:)(v72);
          v73._countAndFlagsBits = 0xD000000000000018;
          v73._object = 0x8000000100201B80;
          String.append(_:)(v73);
          v74 = [a2 description];
          v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v77 = v76;

          v78._countAndFlagsBits = v75;
          v78._object = v77;
          String.append(_:)(v78);

          v9 = 0x656372756F736552;
          v8 = 0xE900000000000020;
        }

        v79 = CPLErrorDomain;
        sub_1000BB130(&unk_1002C0E10, &qword_100245068);
        v80 = swift_initStackObject();
        *(v80 + 16) = xmmword_100244100;
        *(v80 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v80 + 72) = &type metadata for String;
        *(v80 + 40) = v81;
        *(v80 + 48) = v9;
        *(v80 + 56) = v8;
        v37 = v79;
        sub_100118E2C(v80);
        swift_setDeallocating();
        sub_1000CCDBC(v80 + 32, &unk_1002C4040, &unk_100245070);
        v82 = objc_allocWithZone(NSError);
        v39.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v40 = [v82 initWithDomain:v37 code:51 userInfo:v39.super.isa];
      }

      else
      {
        if (v10 != 4)
        {
          if (!v8)
          {
            _StringGuts.grow(_:)(22);

            v56 = [a2 description];
            v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v59 = v58;

            v60._countAndFlagsBits = v57;
            v60._object = v59;
            String.append(_:)(v60);

            v9 = 0xD000000000000014;
            v8 = 0x8000000100201BD0;
          }

          v47 = v9;
          v48 = v8;
          v49 = 150;
          goto LABEL_32;
        }

        if (!v8)
        {
          _StringGuts.grow(_:)(26);

          v27._countAndFlagsBits = a3;
          v27._object = a4;
          String.append(_:)(v27);
          v28._countAndFlagsBits = 0x6C61747320736920;
          v28._object = 0xED0000206E692065;
          String.append(_:)(v28);
          v29 = [a2 description];
          v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v32 = v31;

          v33._countAndFlagsBits = v30;
          v33._object = v32;
          String.append(_:)(v33);

          v9 = 0x656372756F736552;
          v8 = 0xE900000000000020;
        }

        v34 = CPLErrorDomain;
        sub_1000BB130(&unk_1002C0E10, &qword_100245068);
        v35 = swift_initStackObject();
        *(v35 + 16) = xmmword_100244100;
        *(v35 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v35 + 72) = &type metadata for String;
        *(v35 + 40) = v36;
        *(v35 + 48) = v9;
        *(v35 + 56) = v8;
        v37 = v34;
        sub_100118E2C(v35);
        swift_setDeallocating();
        sub_1000CCDBC(v35 + 32, &unk_1002C4040, &unk_100245070);
        v38 = objc_allocWithZone(NSError);
        v39.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v40 = [v38 initWithDomain:v37 code:27 userInfo:v39.super.isa];
      }
    }

    else
    {
      if (v10 <= 1)
      {
        v14 = CPLErrorDomain;
        if (v10)
        {
          sub_1000BB130(&unk_1002C0E10, &qword_100245068);
          v53 = swift_initStackObject();
          *(v53 + 16) = xmmword_100244100;
          *(v53 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
          *(v53 + 40) = v54;
          *(v53 + 72) = &type metadata for String;
          v55 = v14;
          if (!v8)
          {
            _StringGuts.grow(_:)(17);

            v97 = [a2 zoneID];
            v98 = [v97 description];
            v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v101 = v100;

            v102._countAndFlagsBits = v99;
            v102._object = v101;
            String.append(_:)(v102);

            v103._countAndFlagsBits = 0x756F6620746F6E20;
            v103._object = 0xEA0000000000646ELL;
            String.append(_:)(v103);
            v9 = 0x20656E6F5ALL;
            v8 = 0xE500000000000000;
          }

          *(v53 + 48) = v9;
          *(v53 + 56) = v8;
          sub_100118E2C(v53);
          swift_setDeallocating();
          sub_1000CCDBC(v53 + 32, &unk_1002C4040, &unk_100245070);
          v104 = objc_allocWithZone(NSError);
          v89.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

          v90 = [v104 initWithDomain:v14 code:23 userInfo:v89.super.isa];
        }

        else
        {
          sub_1000BB130(&unk_1002C0E10, &qword_100245068);
          v15 = swift_initStackObject();
          *(v15 + 16) = xmmword_100244100;
          *(v15 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
          *(v15 + 40) = v16;
          *(v15 + 72) = &type metadata for String;
          v17 = v14;
          if (!v8)
          {
            _StringGuts.grow(_:)(38);

            v83 = [a2 description];
            v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v86 = v85;

            v87._countAndFlagsBits = v84;
            v87._object = v86;
            String.append(_:)(v87);

            v9 = 0xD000000000000024;
            v8 = 0x8000000100201BF0;
          }

          *(v15 + 48) = v9;
          *(v15 + 56) = v8;
          sub_100118E2C(v15);
          swift_setDeallocating();
          sub_1000CCDBC(v15 + 32, &unk_1002C4040, &unk_100245070);
          v88 = objc_allocWithZone(NSError);
          v89.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

          v90 = [v88 initWithDomain:v14 code:27 userInfo:v89.super.isa];
        }

LABEL_46:
        v26 = v90;

        return v26;
      }

      if (v10 == 2)
      {
        if (!v8)
        {
          _StringGuts.grow(_:)(19);

          v41 = [a2 description];
          v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v44 = v43;

          v45._countAndFlagsBits = v42;
          v45._object = v44;
          String.append(_:)(v45);

          v46._countAndFlagsBits = 0x756F6620746F6E20;
          v46._object = 0xEA0000000000646ELL;
          String.append(_:)(v46);
          v9 = 0x2064726F636552;
          v8 = 0xE700000000000000;
        }

        v47 = v9;
        v48 = v8;
        v49 = 25;
LABEL_32:
        v26 = sub_1000BB7F8(v47, v48, v49);
        goto LABEL_14;
      }

      if (!v8)
      {
        _StringGuts.grow(_:)(27);

        v61._countAndFlagsBits = a3;
        v61._object = a4;
        String.append(_:)(v61);
        v62._countAndFlagsBits = 0x756F6620746F6E20;
        v62._object = 0xEE00206E6920646ELL;
        String.append(_:)(v62);
        v63 = [a2 description];
        v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v66 = v65;

        v67._countAndFlagsBits = v64;
        v67._object = v66;
        String.append(_:)(v67);

        v9 = 0x656372756F736552;
        v8 = 0xE900000000000020;
      }

      v68 = CPLErrorDomain;
      sub_1000BB130(&unk_1002C0E10, &qword_100245068);
      v69 = swift_initStackObject();
      *(v69 + 16) = xmmword_100244100;
      *(v69 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v69 + 72) = &type metadata for String;
      *(v69 + 40) = v70;
      *(v69 + 48) = v9;
      *(v69 + 56) = v8;
      v37 = v68;
      sub_100118E2C(v69);
      swift_setDeallocating();
      sub_1000CCDBC(v69 + 32, &unk_1002C4040, &unk_100245070);
      v71 = objc_allocWithZone(NSError);
      v39.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v40 = [v71 initWithDomain:v37 code:26 userInfo:v39.super.isa];
    }

    v26 = v40;

    return v26;
  }

  v10 = *(a1 + 96);
  v11 = *(a1 + 104);

  if (v11)
  {
    goto LABEL_7;
  }

  if (!v8)
  {
LABEL_12:
    v106 = 0;
    v107 = 0xE000000000000000;
    _StringGuts.grow(_:)(51);
    v18._object = 0x8000000100201B20;
    v18._countAndFlagsBits = 0xD000000000000013;
    String.append(_:)(v18);
    v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v19);

    v20._countAndFlagsBits = 0xD00000000000001CLL;
    v20._object = 0x8000000100201B40;
    String.append(_:)(v20);
    v21 = [a2 description];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25._countAndFlagsBits = v22;
    v25._object = v24;
    String.append(_:)(v25);
    goto LABEL_13;
  }

  _StringGuts.grow(_:)(25);

  v106 = v9;
  v107 = v8;
  v12._countAndFlagsBits = 0xD000000000000015;
  v12._object = 0x8000000100201B60;
  String.append(_:)(v12);
  v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v13);
LABEL_13:

  v26 = sub_1000BB7F8(v106, v107, 150);
LABEL_14:

  return v26;
}

uint64_t sub_1000BC620(uint64_t a1)
{
  if (a1 < 1)
  {
    v3 = [objc_opt_self() standardUserDefaults];
    v4 = String._bridgeToObjectiveC()();
    [v3 doubleForKey:v4];
  }

  return Date.init(timeIntervalSinceNow:)();
}

id sub_1000BC70C(uint64_t a1, char a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v8 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v8 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = a4;
    v10 = a3;

    if ((a2 & 1) == 0)
    {
      if (v9)
      {
        _StringGuts.grow(_:)(25);

        v42 = v10;
        v43 = v9;
        v11._countAndFlagsBits = 0xD000000000000015;
        v11._object = 0x8000000100201B60;
        String.append(_:)(v11);
        v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v12);

LABEL_17:
        v24 = sub_1000BB7F8(v42, v43, 150);

        return v24;
      }

LABEL_16:
      _StringGuts.grow(_:)(44);

      v42 = 0xD000000000000013;
      v43 = 0x8000000100201B20;
      v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v22);

      v23._countAndFlagsBits = 0xD000000000000017;
      v23._object = 0x8000000100201C20;
      String.append(_:)(v23);
      goto LABEL_17;
    }
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      goto LABEL_16;
    }

    v9 = 0;
    v10 = 0;
  }

  v13 = CPLErrorDomain;
  sub_1000BB130(&unk_1002C0E10, &qword_100245068);
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100244120;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 72) = &type metadata for String;
      v27 = 0xD00000000000001CLL;
      if (v9)
      {
        v27 = v10;
      }

      v28 = 0x8000000100201C40;
      if (v9)
      {
        v28 = v9;
      }

      *(inited + 40) = v26;
      *(inited + 48) = v27;
      *(inited + 56) = v28;
      *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 88) = v29;
      *(inited + 120) = type metadata accessor for Date();
      sub_1000CC37C((inited + 96));
      v18 = v13;
      sub_1000BC620(a5);
      sub_100118E2C(inited);
      swift_setDeallocating();
      sub_1000BB130(&unk_1002C4040, &unk_100245070);
      swift_arrayDestroy();
      v30 = objc_allocWithZone(NSError);
      v20.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v21 = [v30 initWithDomain:v18 code:1004 userInfo:v20.super.isa];
    }

    else
    {
      v36 = swift_initStackObject();
      *(v36 + 16) = xmmword_100244100;
      *(v36 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v36 + 72) = &type metadata for String;
      v38 = 0xD00000000000001BLL;
      if (v9)
      {
        v38 = v10;
      }

      v39 = 0x8000000100201C60;
      if (v9)
      {
        v39 = v9;
      }

      *(v36 + 40) = v37;
      *(v36 + 48) = v38;
      *(v36 + 56) = v39;
      v18 = v13;
      sub_100118E2C(v36);
      swift_setDeallocating();
      sub_1000CCDBC(v36 + 32, &unk_1002C4040, &unk_100245070);
      v40 = objc_allocWithZone(NSError);
      v20.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v21 = [v40 initWithDomain:v18 code:80 userInfo:v20.super.isa];
    }
  }

  else if (a1)
  {
    v31 = swift_initStackObject();
    *(v31 + 16) = xmmword_100244100;
    *(v31 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v31 + 72) = &type metadata for String;
    v33 = 0xD00000000000001FLL;
    if (v9)
    {
      v33 = v10;
    }

    v34 = 0x8000000100201C80;
    if (v9)
    {
      v34 = v9;
    }

    *(v31 + 40) = v32;
    *(v31 + 48) = v33;
    *(v31 + 56) = v34;
    v18 = v13;
    sub_100118E2C(v31);
    swift_setDeallocating();
    sub_1000CCDBC(v31 + 32, &unk_1002C4040, &unk_100245070);
    v35 = objc_allocWithZone(NSError);
    v20.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v21 = [v35 initWithDomain:v18 code:2002 userInfo:v20.super.isa];
  }

  else
  {
    v14 = swift_initStackObject();
    *(v14 + 16) = xmmword_100244100;
    *(v14 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v14 + 72) = &type metadata for String;
    v16 = 0xD00000000000001FLL;
    if (v9)
    {
      v16 = v10;
    }

    v17 = 0x8000000100201CA0;
    if (v9)
    {
      v17 = v9;
    }

    *(v14 + 40) = v15;
    *(v14 + 48) = v16;
    *(v14 + 56) = v17;
    v18 = v13;
    sub_100118E2C(v14);
    swift_setDeallocating();
    sub_1000CCDBC(v14 + 32, &unk_1002C4040, &unk_100245070);
    v19 = objc_allocWithZone(NSError);
    v20.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v21 = [v19 initWithDomain:v18 code:150 userInfo:v20.super.isa];
  }

  v24 = v21;

  return v24;
}

uint64_t sub_1000BCCF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CMTime(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  UnknownStorage.init()();
  v9 = type metadata accessor for CMTimeRange(0);
  v10 = *(v9 + 20);
  v11 = *(v5 + 56);
  v11(a2 + v10, 1, 1, v4);
  v12 = *(v9 + 24);
  v11(a2 + v12, 1, 1, v4);
  v13 = *a1;
  v14 = *(a1 + 2);
  v15 = &v8[*(v4 + 24)];
  UnknownStorage.init()();
  *v8 = v13;
  *(v8 + 2) = v14;
  sub_1000CCDBC(a2 + v10, &qword_1002C0E90, &qword_1002450C0);
  sub_1000CCC3C(v8, a2 + v10, type metadata accessor for CMTime);
  v11(a2 + v10, 0, 1, v4);
  v16 = a1[3];
  LODWORD(a1) = *(a1 + 8);
  v17 = &v8[*(v4 + 24)];
  UnknownStorage.init()();
  *v8 = v16;
  *(v8 + 2) = a1;
  sub_1000CCDBC(a2 + v12, &qword_1002C0E90, &qword_1002450C0);
  sub_1000CCC3C(v8, a2 + v12, type metadata accessor for CMTime);
  return (v11)(a2 + v12, 0, 1, v4);
}

uint64_t sub_1000BCEE4(Swift::Int a1, unint64_t a2, uint64_t *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v12 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
  }

  else
  {
    v13 = v9;
    UUID.init()();
    a1 = UUID.uuidString.getter();
    a2 = v14;
    (*(v7 + 8))(v11, v13);
  }

  v15 = *a3;
  if (sub_1000BB700(a1, a2, *a3))
  {
    v34 = a3;
    v16 = v15 + 56;
    v17 = 2;
    v18 = &type metadata for Int;
    v19 = &protocol witness table for Int;
    v35 = a1;
    do
    {
      v36 = a1;
      v37 = a2;

      v22._countAndFlagsBits = 95;
      v22._object = 0xE100000000000000;
      String.append(_:)(v22);
      v38 = v17;
      v23 = v18;
      v24 = v19;
      v25._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v25);

      a1 = v36;
      v26 = v37;
      if (!*(v15 + 16) || (v27 = *(v15 + 40), Hasher.init(_seed:)(), String.hash(into:)(), v28 = Hasher._finalize()(), v29 = -1 << *(v15 + 32), v30 = v28 & ~v29, ((*(v16 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0))
      {
LABEL_18:

        sub_1000C8178(&v36, a1, v26);

        return a1;
      }

      v31 = ~v29;
      while (1)
      {
        v32 = (*(v15 + 48) + 16 * v30);
        v33 = *v32 == a1 && v32[1] == v26;
        if (v33 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v30 = (v30 + 1) & v31;
        if (((*(v16 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      v21 = __OFADD__(v17++, 1);
      v18 = v23;
      v19 = v24;
      a1 = v35;
    }

    while (!v21);
    __break(1u);
  }

  else
  {

    sub_1000C8178(&v36, a1, a2);

    return a1;
  }

  return result;
}

uint64_t sub_1000BD19C(uint64_t a1)
{
  v2 = sub_1000BB130(&qword_1002C0E58, &qword_100245090);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = sub_1000BB130(&qword_1002C0E60, &qword_100245098);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v20 - v10;
  v12 = sub_1000BB130(&qword_1002C0E68, &qword_1002450A0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v20 - v14;
  sub_1000CCBD4(a1, &v20 - v14, type metadata accessor for ResourceDownloadRequest);
  v16 = type metadata accessor for ResourceDownloadRequest(0);
  (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  (*(v8 + 104))(v11, enum case for CodeOperation.DestinationServer.default<A, B>(_:), v7);
  v17 = objc_allocWithZone(sub_1000BB130(&qword_1002C0E70, &qword_1002450A8));
  v18 = CodeOperation.init(service:functionName:request:destinationServer:)();
  dispatch thunk of CodeOperation.shouldSendRecordPCSKeys.setter();
  strcpy(v6, "cmp.icloud.com");
  v6[15] = -18;
  *(v6 + 2) = 0x2E342E332E322E31;
  *(v6 + 3) = 0xEB00000000362E35;
  (*(v3 + 104))(v6, enum case for CodeOperation.DataProtectionType.trustedTarget<A, B>(_:), v2);
  dispatch thunk of CodeOperation.dataProtectionType.setter();
  return v18;
}

id sub_1000BD494()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = [v0 dataForKey:CPLDropDerivativesTestRulesKey];

  if (v1)
  {
    v2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;

    v5 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v7 = [v5 unarchiveArrayOfCPLDropDerivativeRecipesFrom:isa];

    sub_1000CC8B0(0, &qword_1002C0EA8, CPLDropDerivativesRecipe_ptr);
    v1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1000CC444(v2, v4);
  }

  return v1;
}

void sub_1000BD5A4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 BOOLForKey:v1];

  byte_1002C0D28 = v2;
}

void sub_1000BD634()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 BOOLForKey:v1];

  byte_1002C0D29 = v2;
}

void sub_1000BD6D0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, int a7, void *a8, uint64_t a9, uint64_t a10, unint64_t a11, void *a12)
{
  v144 = a8;
  LODWORD(v143) = a7;
  v142 = a6;
  v147 = a4;
  v16 = sub_1000BB130(&qword_1002C0E88, &qword_1002450B8);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v140 = &v136 - v18;
  v19 = type metadata accessor for CMTimeRange(0);
  v138 = *(v19 - 8);
  v139 = v19;
  v20 = *(v138 + 64);
  __chkstk_darwin(v19);
  v22 = &v136 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(type metadata accessor for RequestItem(0) + 20);
  v24 = *(a1 + v23);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *(a1 + v23);
  v145 = v12;
  v137 = v22;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v27 = type metadata accessor for RequestItem._StorageClass(0);
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    v30 = sub_1000EA6A0(v26);

    *(a1 + v23) = v30;
    v26 = v30;
  }

  swift_beginAccess();
  v31 = *(v26 + 24);
  *(v26 + 16) = a2;
  *(v26 + 24) = a3;

  v32 = [v147 recordName];
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  v36 = *(a1 + v23);
  v37 = swift_isUniquelyReferenced_nonNull_native();
  v38 = *(a1 + v23);
  if ((v37 & 1) == 0)
  {
    v39 = type metadata accessor for RequestItem._StorageClass(0);
    v40 = *(v39 + 48);
    v41 = *(v39 + 52);
    swift_allocObject();
    v42 = sub_1000EA6A0(v38);

    *(a1 + v23) = v42;
    v38 = v42;
  }

  swift_beginAccess();
  v43 = *(v38 + 40);
  *(v38 + 32) = v33;
  *(v38 + 40) = v35;

  v44 = [v147 zoneID];
  v45 = [v44 zoneName];
  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v47;

  v49 = *(a1 + v23);
  v50 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *(a1 + v23);
  if ((v50 & 1) == 0)
  {
    v52 = type metadata accessor for RequestItem._StorageClass(0);
    v53 = *(v52 + 48);
    v54 = *(v52 + 52);
    swift_allocObject();
    v55 = sub_1000EA6A0(v51);

    *(a1 + v23) = v55;
    v51 = v55;
  }

  swift_beginAccess();
  v56 = *(v51 + 72);
  *(v51 + 64) = v46;
  *(v51 + 72) = v48;

  v57 = [v44 ownerName];
  v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v60 = v59;

  if (v58 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v60 == v61)
  {
  }

  else
  {
    v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v62)
    {
      goto LABEL_15;
    }

    v63 = [v44 ownerName];
    v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v66 = v65;

    v67 = *(a1 + v23);
    v68 = swift_isUniquelyReferenced_nonNull_native();
    v69 = *(a1 + v23);
    if ((v68 & 1) == 0)
    {
      v70 = type metadata accessor for RequestItem._StorageClass(0);
      v71 = *(v70 + 48);
      v72 = *(v70 + 52);
      swift_allocObject();
      v73 = sub_1000EA6A0(v69);

      *(a1 + v23) = v73;
      v69 = v73;
    }

    swift_beginAccess();
    v74 = *(v69 + 88);
    *(v69 + 80) = v64;
    *(v69 + 88) = v66;
  }

LABEL_15:
  v75 = String._bridgeToObjectiveC()();
  v76 = CPLCloudKitFingerPrintFromDynamicFingerPrint(v75);

  v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v79 = v78;

  v80 = *(a1 + v23);
  v81 = swift_isUniquelyReferenced_nonNull_native();
  v82 = *(a1 + v23);
  if ((v81 & 1) == 0)
  {
    v83 = type metadata accessor for RequestItem._StorageClass(0);
    v84 = *(v83 + 48);
    v85 = *(v83 + 52);
    swift_allocObject();
    v86 = sub_1000EA6A0(v82);

    *(a1 + v23) = v86;
    v82 = v86;
  }

  v87 = a12;
  swift_beginAccess();
  v88 = *(v82 + 120);
  *(v82 + 112) = v77;
  *(v82 + 120) = v79;

  v141 = v44;
  if (v143)
  {
    if (qword_1002C05F8 != -1)
    {
      swift_once();
    }

    if ((byte_1002C0D29 & 1) == 0)
    {
      v143 = a12;
      v89 = [v144 cloudRecord];
      if (v89)
      {
        v90 = v89;
        v91 = [v147 recordName];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v92 = v145;
        v93 = sub_1000BDFB4(v44);
        if (v92)
        {

          v145 = 0;
          v87 = v143;
        }

        else
        {
          v94 = v93;
          v145 = 0;

          v95 = *(a1 + v23);
          v96 = swift_isUniquelyReferenced_nonNull_native();
          v97 = *(a1 + v23);
          if ((v96 & 1) == 0)
          {
            v98 = type metadata accessor for RequestItem._StorageClass(0);
            v99 = *(v98 + 48);
            v100 = *(v98 + 52);
            swift_allocObject();
            v101 = sub_1000EA6A0(v97);

            *(a1 + v23) = v101;
            v97 = v101;
          }

          v87 = v143;
          swift_beginAccess();
          v102 = *(v97 + 128);
          *(v97 + 128) = v94;
        }
      }

      else
      {
        v87 = v143;
      }
    }
  }

  v103 = a11;
  v104 = *(a1 + v23);
  v105 = swift_isUniquelyReferenced_nonNull_native();
  v106 = *(a1 + v23);
  if ((v105 & 1) == 0)
  {
    v107 = type metadata accessor for RequestItem._StorageClass(0);
    v108 = *(v107 + 48);
    v109 = *(v107 + 52);
    swift_allocObject();
    v110 = sub_1000EA6A0(v106);

    *(a1 + v23) = v110;
    v106 = v110;
  }

  swift_beginAccess();
  v111 = *(v106 + 56);
  *(v106 + 48) = a9;
  *(v106 + 56) = a10;

  v112 = [v87 resourceType];
  if (a11 >= 2)
  {
    v113 = v144;
    v114 = v141;
    if (a11 != 2)
    {
      type metadata accessor for CPLCKResourceDownloadType(0);
      v146[6] = a11;
      _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      return;
    }

    if (qword_1002C05E8 != -1)
    {
      v135 = v112;
      swift_once();
      v112 = v135;
    }

    if (sub_1000BB634(v112, qword_1002C0D20))
    {
      v103 = 2;
    }

    else
    {
      v103 = 0;
    }
  }

  else
  {
    v113 = v144;
    v114 = v141;
  }

  v115 = *(a1 + v23);
  v116 = swift_isUniquelyReferenced_nonNull_native();
  v117 = *(a1 + v23);
  if ((v116 & 1) == 0)
  {
    v118 = type metadata accessor for RequestItem._StorageClass(0);
    v119 = *(v118 + 48);
    v120 = *(v118 + 52);
    swift_allocObject();
    v121 = sub_1000EA6A0(v117);

    *(a1 + v23) = v121;
    v117 = v121;
  }

  swift_beginAccess();
  *(v117 + 96) = v103;
  *(v117 + 104) = 1;
  v122 = [v113 options];
  [v122 timeRange];

  if (CMTimeRange.isValid.getter())
  {
    v123 = v114;
    v124 = [v113 options];
    [v124 timeRange];

    v125 = v137;
    sub_1000BCCF8(v146, v137);
    v126 = *(a1 + v23);
    if (swift_isUniquelyReferenced_nonNull_native())
    {

      v127 = *(a1 + v23);
    }

    else
    {
      v128 = *(a1 + v23);
      v129 = type metadata accessor for RequestItem._StorageClass(0);
      v130 = *(v129 + 48);
      v131 = *(v129 + 52);
      swift_allocObject();

      v127 = sub_1000EA6A0(v132);

      *(a1 + v23) = v127;
    }

    v133 = v140;
    sub_1000CCC3C(v125, v140, type metadata accessor for CMTimeRange);
    (*(v138 + 56))(v133, 0, 1, v139);
    v134 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__timeRange;
    swift_beginAccess();
    sub_1000CC968(v133, v127 + v134, &qword_1002C0E88, &qword_1002450B8);
    swift_endAccess();
  }

  else
  {
  }
}

void *sub_1000BDFB4(uint64_t a1)
{
  v22 = type metadata accessor for Ckcode_RecordTransport();
  v4 = *(v22 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v22);
  v23 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = String._bridgeToObjectiveC()();
  v8 = [v1 allRelatedCKRecordsInZoneID:a1 identifier:v7];

  sub_1000CC8B0(0, &qword_1002C0E40, CKRecord_ptr);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v9 >> 62)
  {
    goto LABEL_18;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v10)
  {
    while (1)
    {
      v24 = &_swiftEmptyArrayStorage;
      result = sub_10011897C(0, v10 & ~(v10 >> 63), 0);
      if (v10 < 0)
      {
        break;
      }

      v12 = 0;
      v13 = v24;
      v19 = v9 & 0xFFFFFFFFFFFFFF8;
      v20 = v4 + 32;
      v21 = v9 & 0xC000000000000001;
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v21)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v12 >= *(v19 + 16))
          {
            goto LABEL_17;
          }

          v15 = *(v9 + 8 * v12 + 32);
        }

        Ckcode_RecordTransport.init(_:)();
        if (v2)
        {

          return v13;
        }

        v24 = v13;
        v17 = v13[2];
        v16 = v13[3];
        if (v17 >= v16 >> 1)
        {
          sub_10011897C(v16 > 1, v17 + 1, 1);
          v13 = v24;
        }

        v13[2] = v17 + 1;
        (*(v4 + 32))(v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v17, v23, v22);
        ++v12;
        if (v14 == v10)
        {

          return v13;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      v10 = _CocoaArrayWrapper.endIndex.getter();
      if (!v10)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    return &_swiftEmptyArrayStorage;
  }

  return result;
}

void sub_1000BE260(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_1000BE2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v76 = a6;
  v77 = a7;
  v74[1] = a4;
  v75 = a5;
  v74[0] = a3;
  v11 = type metadata accessor for ResponseItem(0);
  v84 = *(v11 - 8);
  v12 = *(v84 + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v80 = v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = (v74 - v15);
  v17 = sub_1000BB130(&qword_1002C0E38, &qword_100245088);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = v74 - v19;
  v21 = type metadata accessor for ResourceDownloadResponse(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = (v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000CC794(a1, v20, &qword_1002C0E38, &qword_100245088);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    return sub_1000CCDBC(v20, &qword_1002C0E38, &qword_100245088);
  }

  sub_1000CCC3C(v20, v25, type metadata accessor for ResourceDownloadResponse);
  v83 = *v25;
  v27 = v25;
  v82 = *(v83 + 16);
  if (!v82)
  {
    return sub_1000CCD5C(v27, type metadata accessor for ResourceDownloadResponse);
  }

  v28 = 0;
  v81 = v83 + ((*(v84 + 80) + 32) & ~*(v84 + 80));
  v78 = a2;
  v79 = v27;
  while (v28 < *(v83 + 16))
  {
    v29 = *(v84 + 72);
    sub_1000CCBD4(v81 + v29 * v28, v16, type metadata accessor for ResponseItem);
    v31 = *v16;
    v30 = v16[1];
    if (!v16[12])
    {
      swift_beginAccess();
      sub_1000CCBD4(v16, v80, type metadata accessor for ResponseItem);
      v57 = *(a8 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v85 = *(a8 + 16);
      v59 = v85;
      *(a8 + 16) = 0x8000000000000000;
      v61 = sub_10011704C(v31, v30);
      v62 = v59[2];
      v63 = (v60 & 1) == 0;
      v64 = v62 + v63;
      if (__OFADD__(v62, v63))
      {
        goto LABEL_34;
      }

      v65 = v60;
      if (v59[3] >= v64)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100118580();
        }
      }

      else
      {
        sub_1001177BC(v64, isUniquelyReferenced_nonNull_native);
        v66 = sub_10011704C(v31, v30);
        if ((v65 & 1) != (v67 & 1))
        {
          goto LABEL_36;
        }

        v61 = v66;
      }

      a2 = v78;
      v68 = v85;
      if (v65)
      {
        sub_1000CCE1C(v80, v85[7] + v61 * v29, type metadata accessor for ResponseItem);
      }

      else
      {
        v85[(v61 >> 6) + 8] |= 1 << v61;
        v69 = (v68[6] + 16 * v61);
        *v69 = v31;
        v69[1] = v30;
        sub_1000CCC3C(v80, v68[7] + v61 * v29, type metadata accessor for ResponseItem);
        v70 = v68[2];
        v71 = __OFADD__(v70, 1);
        v72 = v70 + 1;
        if (v71)
        {
          goto LABEL_35;
        }

        v68[2] = v72;
      }

      v73 = *(a8 + 16);
      *(a8 + 16) = v68;

      swift_endAccess();
      goto LABEL_31;
    }

    swift_beginAccess();
    v32 = *(a2 + 16);
    if (*(v32 + 16))
    {
      v33 = sub_10011704C(v31, v30);
      if (v34)
      {
        v35 = *(*(v32 + 56) + 8 * v33);
        swift_endAccess();
        v36 = v35;
        v37 = sub_1000BB948(v16, v36, v75, v76);
        (v74[0])(0, 0, 0, 0, 0, v36, 0, v37);

        v38 = v77;
        swift_beginAccess();
        v39 = *(v38 + 16);
        v40 = sub_1001170C4(v36);
        if (v41)
        {
          v42 = v40;
          v43 = v77;
          v44 = *(v77 + 16);
          v45 = swift_isUniquelyReferenced_nonNull_native();
          v46 = *(v43 + 16);
          v85 = v46;
          *(v43 + 16) = 0x8000000000000000;
          if (!v45)
          {
            sub_100118410();
            v46 = v85;
          }

          v47 = *(*(v46 + 56) + 16 * v42 + 8);
          sub_1000C9924(v42, v46);
          *(v43 + 16) = v46;

          a2 = v78;
        }

        swift_endAccess();
        swift_beginAccess();
        v48 = *(a2 + 16);
        v49 = sub_10011704C(v31, v30);
        if (v50)
        {
          v51 = v49;
          v52 = *(a2 + 16);
          v53 = swift_isUniquelyReferenced_nonNull_native();
          v54 = *(a2 + 16);
          v85 = v54;
          *(a2 + 16) = 0x8000000000000000;
          if (!v53)
          {
            sub_1001182A4();
            v54 = v85;
          }

          v55 = *(*(v54 + 48) + 16 * v51 + 8);

          v56 = *(*(v54 + 56) + 8 * v51);
          sub_1000C9774(v51, v54);
          *(a2 + 16) = v54;
        }

        swift_endAccess();

LABEL_31:
        v27 = v79;
        goto LABEL_6;
      }
    }

    swift_endAccess();
LABEL_6:
    ++v28;
    sub_1000CCD5C(v16, type metadata accessor for ResponseItem);
    if (v82 == v28)
    {
      return sub_1000CCD5C(v27, type metadata accessor for ResourceDownloadResponse);
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_1000BE928(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = __CocoaDictionary.lookup(_:)();

    if (v4)
    {
      sub_1000CC8B0(0, &qword_1002C0DD8, CPLEngineResourceDownloadTask_ptr);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_1001170C4(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

uint64_t sub_1000BE9EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, double), double a4)
{
  swift_beginAccess();
  if (!*(*(a2 + 16) + 16))
  {
    return swift_endAccess();
  }

  sub_1001170C4(a1);
  if ((v8 & 1) == 0)
  {
    return swift_endAccess();
  }

  swift_endAccess();
  return a3(a1, a4);
}

void sub_1000BEA88(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(id, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, id), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v116 = a8;
  v120 = a7;
  v121 = a6;
  v122 = a5;
  v13 = type metadata accessor for ResponseItem(0);
  v115 = *(v13 - 8);
  v14 = *(v115 + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v114 = &v108 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v108 - v21;
  __chkstk_darwin(v20);
  v24 = (&v108 - v23);
  v25 = sub_1000BB130(&qword_1002C0F48, &qword_100245130);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = &v108 - v27;
  v29 = type metadata accessor for URL();
  v117 = *(v29 - 8);
  v118 = v29;
  v30 = *(v117 + 64);
  v31 = __chkstk_darwin(v29);
  v33 = &v108 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v119 = &v108 - v34;
  swift_beginAccess();
  v35 = *(a4 + 16);
  if (!*(v35 + 16) || (v36 = sub_1001170C4(a2), (v37 & 1) == 0))
  {
    swift_endAccess();
    return;
  }

  v113 = a4;
  v38 = a2;
  v39 = (*(v35 + 56) + 16 * v36);
  v41 = *v39;
  v40 = v39[1];
  swift_endAccess();
  if (!a3)
  {
    v112 = v41;
    if (!a1)
    {

      v64 = sub_1000BB7F8(0xD000000000000022, 0x8000000100202120, 150);
      v42 = v40;
      v121(0, 0, 0, 0, 0, v38, 0, v64);

      swift_beginAccess();
      sub_1000C96CC(v38);
      swift_endAccess();

      swift_beginAccess();
      v43 = v112;
      goto LABEL_40;
    }

    sub_1000CC8B0(0, &qword_1002C0E40, CKRecord_ptr);
    sub_1000CC8B0(0, &qword_1002C0E48, CKAsset_ptr);
    v111 = v40;

    v44 = a1;
    CKRecordKeyValueSetting.subscript.getter();
    v45 = v123;
    v46 = v38;
    if (v123)
    {
      v47 = [v123 fileURL];
      if (v47)
      {
        v110 = v44;
        v48 = v47;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v117 + 32))(v119, v33, v118);
        sub_1000BB130(&qword_1002C0F50, &qword_100245138);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100244100;
        *(inited + 32) = NSURLFileSizeKey;
        v50 = NSURLFileSizeKey;
        sub_1000CAA5C(inited);
        swift_setDeallocating();
        sub_1000CCD5C(inited + 32, type metadata accessor for URLResourceKey);
        URL.resourceValues(forKeys:)();

        v73 = type metadata accessor for URLResourceValues();
        v74 = v45;
        v75 = *(v73 - 8);
        (*(v75 + 56))(v28, 0, 1, v73);
        v76 = URLResourceValues.fileSize.getter();
        v78 = v77;
        (*(v75 + 8))(v28, v73);
        v79 = v74;
        if ((v78 & 1) == 0 && !v76)
        {
          v80 = v116;
          swift_beginAccess();
          v81 = *(v80 + 16);
          if (*(v81 + 16) && (v82 = sub_10011704C(v112, v111), (v83 & 1) != 0))
          {
            sub_1000CCBD4(*(v81 + 56) + *(v115 + 72) * v82, v22, type metadata accessor for ResponseItem);
            sub_1000CCC3C(v22, v24, type metadata accessor for ResponseItem);
            swift_endAccess();
            if (v24[11] > 0)
            {
              v84 = sub_1000BB7F8(0xD000000000000021, 0x80000001002021C0, 150);
              v121(0, 0, 0, 0, 0, v46, 0, v84);

              v85 = [objc_opt_self() defaultManager];
              URL._bridgeToObjectiveC()(v86);
              v88 = v87;
              v123 = 0;
              v89 = [v85 removeItemAtURL:v87 error:&v123];

              if (v89)
              {
                v90 = v123;

                v91 = v112;
                v79 = v110;
              }

              else
              {
                v107 = v123;
                _convertNSErrorToError(_:)();

                swift_willThrow();

                v91 = v112;
              }

              sub_1000CCD5C(v24, type metadata accessor for ResponseItem);
              (*(v117 + 8))(v119, v118);
              swift_beginAccess();
              sub_1000C96CC(v46);
              swift_endAccess();

              swift_beginAccess();
              v43 = v91;
              goto LABEL_39;
            }

            sub_1000CCD5C(v24, type metadata accessor for ResponseItem);
          }

          else
          {
            swift_endAccess();
          }
        }

        v51 = sub_1000BE928(v46, a9);
        if (v51)
        {
          v52 = v51;
          v53 = [v51 resource];
          v54 = [v53 identity];

          v55 = v116;
          swift_beginAccess();
          v56 = *(v55 + 16);
          v57 = *(v56 + 16);
          v58 = v112;
          v109 = v46;
          if (v57 && (v59 = sub_10011704C(v112, v111), (v60 & 1) != 0))
          {
            sub_1000CCBD4(*(v56 + 56) + *(v115 + 72) * v59, v17, type metadata accessor for ResponseItem);
            v61 = v114;
            sub_1000CCC3C(v17, v114, type metadata accessor for ResponseItem);
            swift_endAccess();
            v62 = *(v61 + 72);
            if (*(v61 + 80) == 1)
            {
              if (v62 >= 2)
              {
LABEL_15:
                v63 = *(v61 + 64);
                sub_1000CCD5C(v61, type metadata accessor for ResponseItem);
LABEL_21:
                v67 = v79;
                if (v54)
                {
                  v68 = [v54 fingerPrint];
                  if (v68)
                  {
                    v69 = v68;
                    v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v72 = v71;
                  }

                  else
                  {
                    v70 = 0;
                    v72 = 0;
                  }

                  v98 = v79;
                  v101 = [v54 fileUTI];
                  if (v101)
                  {
                    v102 = v101;
                    v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v100 = v103;

                    v58 = v112;
                  }

                  else
                  {
                    v99 = 0;
                    v100 = 0;
                  }
                }

                else
                {
                  v98 = v79;
                  v99 = 0;
                  v100 = 0;
                  v70 = 0;
                  v72 = 0;
                }

                v104 = v99;
                v105 = v109;
                v121(v98, v70, v72, v104, v100, v109, v63, 0);

                (*(v117 + 8))(v119, v118);
                swift_beginAccess();
                sub_1000C96CC(v105);
                swift_endAccess();

                swift_beginAccess();
                v43 = v58;
                goto LABEL_39;
              }
            }

            else if (v62 == 2)
            {
              goto LABEL_15;
            }

            sub_1000CCD5C(v61, type metadata accessor for ResponseItem);
          }

          else
          {
            swift_endAccess();
          }

          v63 = 0;
          goto LABEL_21;
        }

        v123 = 0;
        v124 = 0xE000000000000000;
        _StringGuts.grow(_:)(30);

        v123 = 0xD00000000000001CLL;
        v124 = 0x80000001002021A0;
        v92 = [v46 description];
        v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v95 = v94;

        v96._countAndFlagsBits = v93;
        v96._object = v95;
        String.append(_:)(v96);

        v97 = sub_1000BB7F8(v123, v124, 27);

        v121(0, 0, 0, 0, 0, v46, 0, v97);

        (*(v117 + 8))(v119, v118);
      }

      else
      {
        v66 = sub_1000BB7F8(0xD000000000000020, 0x8000000100202170, 27);
        v121(0, 0, 0, 0, 0, v38, 0, v66);
      }
    }

    else
    {
      v65 = sub_1000BB7F8(0xD00000000000001ELL, 0x8000000100202150, 27);
      v121(0, 0, 0, 0, 0, v38, 0, v65);
    }

    swift_beginAccess();
    sub_1000C96CC(v46);
    swift_endAccess();

    swift_beginAccess();
    v43 = v112;
LABEL_39:
    v42 = v111;
    goto LABEL_40;
  }

  swift_errorRetain();
  v42 = v40;
  v121(0, 0, 0, 0, 0, v38, 0, a3);

  swift_beginAccess();
  sub_1000C96CC(v38);
  swift_endAccess();

  swift_beginAccess();
  v43 = v41;
LABEL_40:
  v106 = sub_1000C9634(v43, v42);
  swift_endAccess();
}

uint64_t sub_1000BF88C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11)
{
  v106 = a8;
  v103 = a4;
  v104 = a5;
  v102 = a3;
  v15 = type metadata accessor for ResponseItem(0);
  v100 = *(v15 - 8);
  v16 = *(v100 + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = (&v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v21 = &v91 - v20;
  v22 = sub_1000BB130(&qword_1002C0E38, &qword_100245088);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v26 = &v91 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v91 - v27;
  v29 = type metadata accessor for ResourceDownloadResponse(0);
  v105 = *(v29 - 8);
  v30 = *(v105 + 64);
  v31 = __chkstk_darwin(v29);
  v33 = &v91 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v35 = &v91 - v34;
  if (qword_1002C05F0 != -1)
  {
    v101 = &v91 - v34;
    swift_once();
    v35 = v101;
  }

  if (byte_1002C0D28 == 1)
  {
    v101 = v35;
    sub_1000CC794(a1, v28, &qword_1002C0E38, &qword_100245088);
    v36 = (*(v105 + 48))(v28, 1, v29);
    v98 = v29;
    if (v36 == 1)
    {
      v99 = a6;
      sub_1000CCDBC(v28, &qword_1002C0E38, &qword_100245088);
      type metadata accessor for ResourceDownloadRequest(0);
      sub_1000CC224(&unk_1002C0E20, type metadata accessor for ResourceDownloadRequest);
      Message.debugDescription.getter();
      v37 = String._bridgeToObjectiveC()();

      v38 = v26;
      if (a2)
      {
        v39 = _convertErrorToNSError(_:)();
      }

      else
      {
        v39 = 0;
      }

      v66 = a7;
      v67 = v103;
      swift_beginAccess();
      if (*(v67 + 16))
      {
        v68 = *(v67 + 16);

        v69.super.isa = Array._bridgeToObjectiveC()().super.isa;
      }

      else
      {
        v69.super.isa = 0;
      }

      CPLTaskLogCKCodeRequestAndResponse();

      a7 = v66;
      a6 = v99;
      v26 = v38;
    }

    else
    {
      v93 = v26;
      v94 = a1;
      v95 = a7;
      v97 = v33;
      v40 = v28;
      v41 = v101;
      sub_1000CCC3C(v40, v101, type metadata accessor for ResourceDownloadResponse);
      v42 = *v41;
      v43 = *(*v41 + 16);
      v44 = &_swiftEmptyArrayStorage;
      if (v43)
      {
        v92 = v19;
        v96 = a2;
        v99 = a6;
        v109 = &_swiftEmptyArrayStorage;
        sub_1001189C0(0, v43, 0);
        v44 = v109;
        v45 = v42 + ((*(v100 + 80) + 32) & ~*(v100 + 80));
        v46 = *(v100 + 72);
        do
        {
          v47 = sub_1000CCBD4(v45, v21, type metadata accessor for ResponseItem);
          v48 = sub_1000C029C(v47);
          v50 = v49;
          sub_1000CCD5C(v21, type metadata accessor for ResponseItem);
          v109 = v44;
          v52 = v44[2];
          v51 = v44[3];
          if (v52 >= v51 >> 1)
          {
            sub_1001189C0((v51 > 1), v52 + 1, 1);
            v44 = v109;
          }

          v44[2] = v52 + 1;
          v53 = &v44[2 * v52];
          v53[4] = v48;
          v53[5] = v50;
          v45 += v46;
          --v43;
        }

        while (v43);
        a6 = v99;
        a2 = v96;
        v19 = v92;
      }

      v109 = v44;
      sub_1000BB130(&qword_1002C0F30, &qword_100245128);
      sub_1000CCCA4();
      v54 = BidirectionalCollection<>.joined(separator:)();
      v56 = v55;

      v57 = *(v101 + 1);
      if (v57)
      {
        v58 = v101[16];
        v59 = v101;

        v109 = 0;
        v110 = 0xE000000000000000;
        _StringGuts.grow(_:)(30);
        v60._countAndFlagsBits = 0x646F43726F727265;
        v60._object = 0xEB00000000203A65;
        String.append(_:)(v60);
        v107 = v57;
        v108 = v58;
        _print_unlocked<A, B>(_:_:)();
        v61._countAndFlagsBits = 0x654D726F7272650ALL;
        v61._object = 0xEF203A6567617373;
        String.append(_:)(v61);
        String.append(_:)(*(v59 + 24));
        v54 = v109;
        v56 = v110;
      }

      v26 = v93;
      type metadata accessor for ResourceDownloadRequest(0);
      sub_1000CC224(&unk_1002C0E20, type metadata accessor for ResourceDownloadRequest);
      Message.debugDescription.getter();
      v62 = String._bridgeToObjectiveC()();

      v109 = 0xD00000000000001ALL;
      v110 = 0x8000000100202010;
      v63._countAndFlagsBits = v54;
      v63._object = v56;
      String.append(_:)(v63);

      v64 = String._bridgeToObjectiveC()();

      if (a2)
      {
        v65 = _convertErrorToNSError(_:)();
      }

      else
      {
        v65 = 0;
      }

      v70 = v19;
      v71 = v103;
      swift_beginAccess();
      if (*(v71 + 16))
      {

        v72.super.isa = Array._bridgeToObjectiveC()().super.isa;
      }

      else
      {
        v72.super.isa = 0;
      }

      a7 = v95;
      CPLTaskLogCKCodeRequestAndResponse();

      sub_1000CCD5C(v101, type metadata accessor for ResourceDownloadResponse);
      v19 = v70;
      v33 = v97;
      a1 = v94;
    }

    v29 = v98;
  }

  sub_1000CC794(a1, v26, &qword_1002C0E38, &qword_100245088);
  if ((*(v105 + 48))(v26, 1, v29) == 1)
  {
    sub_1000CCDBC(v26, &qword_1002C0E38, &qword_100245088);
    if (a2)
    {
      v73 = a2;
    }

    else
    {
      v73 = sub_1000BB7F8(0xD000000000000022, 0x8000000100201A50, 150);
    }

    swift_errorRetain();
    (v104)(v73);
  }

  else
  {
    sub_1000CCC3C(v26, v33, type metadata accessor for ResourceDownloadResponse);
    v74 = *(v33 + 1);
    if (v74)
    {
      sub_1000BC70C(v74, v33[16], *(v33 + 3), *(v33 + 4), *(v33 + 5));
      v104();

      v75 = v33;
    }

    else
    {
      v96 = a2;
      v97 = v33;
      v99 = a6;
      swift_beginAccess();
      if (*(*(a7 + 16) + 16))
      {
        v77 = *v97;
        v78 = *(*v97 + 16);
        if (v78)
        {
          v105 = a11;
          v79 = v77 + ((*(v100 + 80) + 32) & ~*(v100 + 80));
          v80 = *(v100 + 72);
          do
          {
            sub_1000CCBD4(v79, v19, type metadata accessor for ResponseItem);
            v81 = v19;
            v82 = *v19;
            v83 = v19[1];
            v84 = v106;
            swift_beginAccess();
            v85 = *(v84 + 16);
            if (*(v85 + 16) && (v86 = sub_10011704C(v82, v83), (v87 & 1) != 0))
            {
              v88 = *(*(v85 + 56) + 8 * v86);
              swift_endAccess();
              v89 = v88;
              v90 = sub_1000BB948(v81, v89, a9, a10);
              (v105)(0, 0, 0, 0, 0, v89, 0, v90);
            }

            else
            {
              swift_endAccess();
            }

            v19 = v81;
            sub_1000CCD5C(v81, type metadata accessor for ResponseItem);
            v79 += v80;
            --v78;
          }

          while (v78);
        }
      }

      (v104)(v96);
      v75 = v97;
    }

    return sub_1000CCD5C(v75, type metadata accessor for ResourceDownloadResponse);
  }
}

void sub_1000C0E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = a5;
  if (a3)
  {
    v14 = String._bridgeToObjectiveC()();
    if (!v12)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v14 = 0;
  if (a5)
  {
LABEL_3:
    v12 = String._bridgeToObjectiveC()();
  }

LABEL_4:
  if (a8)
  {
    v15 = _convertErrorToNSError(_:)();
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  (*(a9 + 16))(a9, a1, v14, v12, a6, a7);
}

void sub_1000C0EFC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_1000C0F6C(uint64_t *a1)
{
  sub_1000BB130(&qword_1002C0E78, &qword_1002450B0);
  v2 = *(type metadata accessor for RequestItem(0) - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100244100;
  sub_1000CC224(&qword_1002C0E80, type metadata accessor for RequestItem);
  static Message.with(_:)();
  v6 = *a1;

  *a1 = v5;
  return result;
}

void sub_1000C10E8(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t *a7)
{
  v331 = a7;
  v332 = a5;
  v333 = a6;
  v329 = a3;
  v10 = sub_1000BB130(&qword_1002C0E88, &qword_1002450B8);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v327 = &v316 - v12;
  v13 = type metadata accessor for CMTimeRange(0);
  v325 = *(v13 - 8);
  v326 = v13;
  v14 = *(v325 + 64);
  __chkstk_darwin(v13);
  v328 = &v316 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000BB130(&qword_1002C0E90, &qword_1002450C0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v322 = &v316 - v18;
  v324 = type metadata accessor for CMTime(0);
  v321 = *(v324 - 8);
  v19 = *(v321 + 64);
  __chkstk_darwin(v324);
  v323 = &v316 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000BB130(&qword_1002C0F00, &qword_100246410);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v318 = &v316 - v23;
  v320 = type metadata accessor for VideoHEVCProfileTierLevelInformation(0);
  v317 = *(v320 - 8);
  v24 = *(v317 + 64);
  __chkstk_darwin(v320);
  v319 = &v316 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for UUID();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = &v316 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v31 = UUID.uuidString.getter();
  v33 = v32;
  (*(v27 + 8))(v30, v26);
  v34 = *(type metadata accessor for RequestItem(0) + 20);
  v35 = *&v34[a1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = *&v34[a1];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v38 = type metadata accessor for RequestItem._StorageClass(0);
    v39 = *(v38 + 48);
    v40 = *(v38 + 52);
    swift_allocObject();
    v41 = sub_1000EA6A0(v37);

    *&v34[a1] = v41;
    v37 = v41;
  }

  swift_beginAccess();
  v42 = *(v37 + 24);
  *(v37 + 16) = v31;
  *(v37 + 24) = v33;

  v43 = [a2 recordName];
  v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = v45;

  v47 = *&v34[a1];
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *&v34[a1];
  if ((v48 & 1) == 0)
  {
    v50 = type metadata accessor for RequestItem._StorageClass(0);
    v51 = *(v50 + 48);
    v52 = *(v50 + 52);
    swift_allocObject();
    v53 = sub_1000EA6A0(v49);

    *&v34[a1] = v53;
    v49 = v53;
  }

  swift_beginAccess();
  v54 = *(v49 + 40);
  *(v49 + 32) = v44;
  *(v49 + 40) = v46;

  v335 = [a2 zoneID];
  v55 = [v335 zoneName];
  v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v58 = v57;

  v59 = *&v34[a1];
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *&v34[a1];
  v336 = a1;
  v62 = v34;
  if ((v60 & 1) == 0)
  {
    v63 = type metadata accessor for RequestItem._StorageClass(0);
    v64 = *(v63 + 48);
    v65 = *(v63 + 52);
    swift_allocObject();
    v66 = sub_1000EA6A0(v61);

    *&v34[a1] = v66;
    v61 = v66;
  }

  v67 = v331;
  swift_beginAccess();
  v68 = *(v61 + 72);
  *(v61 + 64) = v56;
  *(v61 + 72) = v58;

  v69 = [v335 ownerName];
  v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v72 = v71;

  v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v334 = v34;
  if (v70 == v73 && v72 == v74)
  {
  }

  else
  {
    v75 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v75)
    {
      goto LABEL_15;
    }

    v76 = [v335 ownerName];
    v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v79 = v78;

    v80 = v336;
    v81 = *&v34[v336];
    v82 = swift_isUniquelyReferenced_nonNull_native();
    v83 = *&v34[v80];
    if ((v82 & 1) == 0)
    {
      v84 = type metadata accessor for RequestItem._StorageClass(0);
      v85 = *(v84 + 48);
      v86 = *(v84 + 52);
      swift_allocObject();
      v87 = sub_1000EA6A0(v83);

      *&v34[v80] = v87;
      v83 = v87;
    }

    swift_beginAccess();
    v88 = *(v83 + 88);
    *(v83 + 80) = v77;
    *(v83 + 88) = v79;
    v62 = v334;
  }

LABEL_15:
  v89 = v336;
  v90 = *&v62[v336];
  v91 = swift_isUniquelyReferenced_nonNull_native();
  v92 = *&v62[v89];
  if ((v91 & 1) == 0)
  {
    v93 = type metadata accessor for RequestItem._StorageClass(0);
    v94 = *(v93 + 48);
    v95 = *(v93 + 52);
    swift_allocObject();
    v96 = sub_1000EA6A0(v92);

    *&v62[v89] = v96;
    v92 = v96;
  }

  v97 = v333;
  swift_beginAccess();
  v98 = *(v92 + 56);
  *(v92 + 48) = v329;
  *(v92 + 56) = a4;

  v99 = v332;
  if (v332 >= 3)
  {
    type metadata accessor for CPLCKResourceDownloadType(0);
    v339.value = v99;

    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return;
  }

  v100 = *&v62[v89];
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v102 = *&v62[v89];
  if ((v101 & 1) == 0)
  {
    v103 = type metadata accessor for RequestItem._StorageClass(0);
    v104 = *(v103 + 48);
    v105 = *(v103 + 52);
    swift_allocObject();
    v106 = sub_1000EA6A0(v102);

    *&v62[v89] = v106;
    v102 = v106;
  }

  swift_beginAccess();
  *(v102 + 96) = v99;
  *(v102 + 104) = 1;
  if (v97)
  {
    if (*(v97 + 16))
    {
      v107 = sub_10011704C(0x707954616964656DLL, 0xEA00000000007365);
      if (v108)
      {
        sub_1000CC854(*(v97 + 56) + 32 * v107, &v339);
        sub_1000BB130(&qword_1002C0F18, &qword_100245110);
        if (swift_dynamicCast())
        {
          v332 = v337;
          if (v337 >> 62)
          {
            goto LABEL_40;
          }

          for (i = *((v332 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
          {
            v110 = 0;
            v329 = v332 & 0xC000000000000001;
            v111 = v332 & 0xFFFFFFFFFFFFFF8;
            v112 = &_swiftEmptyArrayStorage;
            while (1)
            {
              if (v329)
              {
                v113 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v110 >= *(v111 + 16))
                {
                  goto LABEL_39;
                }

                v113 = *(v332 + 8 * v110 + 32);
              }

              v62 = v113;
              v114 = v110 + 1;
              if (__OFADD__(v110, 1))
              {
                break;
              }

              v115 = [v113 integerValue];

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v112 = sub_1000C9358(0, *(v112 + 2) + 1, 1, v112);
              }

              v117 = *(v112 + 2);
              v116 = *(v112 + 3);
              if (v117 >= v116 >> 1)
              {
                v112 = sub_1000C9358((v116 > 1), v117 + 1, 1, v112);
              }

              *(v112 + 2) = v117 + 1;
              v118 = &v112[16 * v117];
              *(v118 + 4) = v115;
              v118[40] = v115 < 3;
              ++v110;
              v89 = v336;
              v62 = v334;
              if (v114 == i)
              {
                goto LABEL_42;
              }
            }

            __break(1u);
LABEL_39:
            __break(1u);
LABEL_40:
            ;
          }

          v112 = &_swiftEmptyArrayStorage;
LABEL_42:

          v119 = *&v62[v89];
          v120 = swift_isUniquelyReferenced_nonNull_native();
          v121 = *&v62[v89];
          if ((v120 & 1) == 0)
          {
            v122 = type metadata accessor for RequestItem._StorageClass(0);
            v123 = *(v122 + 48);
            v124 = *(v122 + 52);
            swift_allocObject();
            v125 = sub_1000EA6A0(v121);

            *&v62[v89] = v125;
            v121 = v125;
          }

          v67 = v331;
          v97 = v333;
          v126 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__mediaTypeHint;
          swift_beginAccess();
          v127 = *(v121 + v126);
          *(v121 + v126) = v112;
        }
      }
    }

    if (!*(v97 + 16))
    {
      goto LABEL_58;
    }

    v128 = sub_10011704C(0x666F725063766568, 0xEB00000000656C69);
    if ((v129 & 1) == 0)
    {
      goto LABEL_58;
    }

    sub_1000CC854(*(v97 + 56) + 32 * v128, &v339);
    sub_1000CC8B0(0, &qword_1002C0EA0, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v130 = v337;
      if (*(v97 + 16))
      {
        v131 = sub_10011704C(0x7265695463766568, 0xE800000000000000);
        if (v132)
        {
          sub_1000CC854(*(v97 + 56) + 32 * v131, &v339);
          if (swift_dynamicCast())
          {
            v133 = v97;
            v134 = v337;
            if (*(v133 + 16) && (v135 = sub_10011704C(0x6576654C63766568, 0xE90000000000006CLL), (v136 & 1) != 0))
            {
              sub_1000CC854(*(v133 + 56) + 32 * v135, &v339);
              v137 = swift_dynamicCast();
              if (v137)
              {
                v138 = v337;
                __chkstk_darwin(v137);
                *(&v316 - 4) = v130;
                *(&v316 - 3) = v134;
                *(&v316 - 2) = v138;
                sub_1000CC224(&qword_1002C0F10, type metadata accessor for VideoHEVCProfileTierLevelInformation);
                v139 = v330;
                static Message.with(_:)();
                v330 = v139;
                v140 = v336;
                v141 = *&v62[v336];
                if (swift_isUniquelyReferenced_nonNull_native())
                {

                  v142 = *&v62[v140];
                }

                else
                {
                  v309 = *&v62[v140];
                  v310 = type metadata accessor for RequestItem._StorageClass(0);
                  v311 = *(v310 + 48);
                  v312 = *(v310 + 52);
                  swift_allocObject();

                  v142 = sub_1000EA6A0(v313);

                  *&v62[v140] = v142;
                }

                v89 = v140;
                v314 = v318;
                sub_1000CCC3C(v319, v318, type metadata accessor for VideoHEVCProfileTierLevelInformation);
                (*(v317 + 56))(v314, 0, 1, v320);
                v315 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoProfileTierLevelInformation;
                swift_beginAccess();
                sub_1000CC968(v314, v142 + v315, &qword_1002C0F00, &qword_100246410);
                swift_endAccess();
              }

              else
              {

                v89 = v336;
              }

              v97 = v333;
            }

            else
            {

              v89 = v336;
              v97 = v133;
            }

            goto LABEL_58;
          }
        }
      }
    }

    v89 = v336;
LABEL_58:
    if (*(v97 + 16))
    {
      v143 = sub_10011704C(0xD00000000000001ALL, 0x8000000100201EC0);
      if (v144)
      {
        sub_1000CC854(*(v97 + 56) + 32 * v143, &v339);
        sub_1000CC8B0(0, &qword_1002C0EA0, NSNumber_ptr);
        if (swift_dynamicCast())
        {
          v145 = v337;
          v146 = [v337 unsignedIntValue];
          v147 = *&v62[v89];
          if (swift_isUniquelyReferenced_nonNull_native())
          {

            v148 = *&v62[v89];
          }

          else
          {
            v149 = *&v62[v89];
            v150 = type metadata accessor for RequestItem._StorageClass(0);
            v151 = *(v150 + 48);
            v152 = *(v150 + 52);
            swift_allocObject();

            v148 = sub_1000EA6A0(v153);

            v97 = v333;

            *&v62[v89] = v148;
          }

          v154 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__apacAudioTrackChannelCount;
          swift_beginAccess();
          *(v148 + v154) = v146;
        }
      }
    }

    if (*(v97 + 16))
    {
      v155 = sub_10011704C(0xD00000000000001DLL, 0x8000000100201EE0);
      if (v156)
      {
        sub_1000CC854(*(v97 + 56) + 32 * v155, &v339);
        sub_1000CC8B0(0, &qword_1002C0EA0, NSNumber_ptr);
        if (swift_dynamicCast())
        {
          v157 = v337;
          v158 = [v337 unsignedIntValue];
          v159 = *&v62[v89];
          if (swift_isUniquelyReferenced_nonNull_native())
          {

            v160 = *&v62[v89];
          }

          else
          {
            v161 = *&v62[v89];
            v162 = type metadata accessor for RequestItem._StorageClass(0);
            v163 = *(v162 + 48);
            v164 = *(v162 + 52);
            swift_allocObject();

            v160 = sub_1000EA6A0(v165);

            v97 = v333;

            *&v62[v89] = v160;
          }

          v166 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__apacAudioTrackHoachannelCount;
          swift_beginAccess();
          *(v160 + v166) = v158;
        }
      }
    }

    if (*(v97 + 16))
    {
      v167 = sub_10011704C(0xD00000000000001DLL, 0x8000000100201F00);
      if (v168)
      {
        sub_1000CC854(*(v97 + 56) + 32 * v167, &v339);
        sub_1000CC8B0(0, &qword_1002C0EA0, NSNumber_ptr);
        if (swift_dynamicCast())
        {
          v169 = v337;
          v170 = [v337 unsignedIntValue];
          v171 = *&v62[v89];
          if (swift_isUniquelyReferenced_nonNull_native())
          {

            v172 = *&v62[v89];
          }

          else
          {
            v173 = *&v62[v89];
            v174 = type metadata accessor for RequestItem._StorageClass(0);
            v175 = *(v174 + 48);
            v176 = *(v174 + 52);
            swift_allocObject();

            v172 = sub_1000EA6A0(v177);

            v97 = v333;

            *&v62[v89] = v172;
          }

          v178 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__apacAudioTrackBedchannelCount;
          swift_beginAccess();
          *(v172 + v178) = v170;
        }
      }
    }

    if (*(v97 + 16))
    {
      v179 = sub_10011704C(0xD00000000000002ALL, 0x8000000100201F20);
      if (v180)
      {
        sub_1000CC854(*(v97 + 56) + 32 * v179, &v339);
        if (swift_dynamicCast())
        {
          v181 = v89;
          v182 = v337;
          v183 = v338;
          v184 = *&v62[v181];
          v185 = swift_isUniquelyReferenced_nonNull_native();
          v186 = *&v62[v181];
          if ((v185 & 1) == 0)
          {
            v187 = type metadata accessor for RequestItem._StorageClass(0);
            v188 = *(v187 + 48);
            v189 = *(v187 + 52);
            swift_allocObject();
            v190 = sub_1000EA6A0(v186);

            *&v62[v181] = v190;
            v186 = v190;
          }

          v191 = (v186 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__apacAudioTrackCodecProfileLevelDescription);
          swift_beginAccess();
          v192 = v191[1];
          *v191 = v182;
          v191[1] = v183;

          v89 = v336;
          v97 = v333;
        }
      }
    }

    if (*(v97 + 16))
    {
      v193 = sub_10011704C(0xD000000000000017, 0x8000000100201F50);
      if (v194)
      {
        sub_1000CC854(*(v97 + 56) + 32 * v193, &v339);
        if (swift_dynamicCast())
        {
          v195 = v89;
          v196 = v337;
          v197 = v338;
          v198 = *&v62[v195];
          v199 = swift_isUniquelyReferenced_nonNull_native();
          v200 = *&v62[v195];
          if ((v199 & 1) == 0)
          {
            v201 = type metadata accessor for RequestItem._StorageClass(0);
            v202 = *(v201 + 48);
            v203 = *(v201 + 52);
            swift_allocObject();
            v204 = sub_1000EA6A0(v200);

            *&v62[v195] = v204;
            v200 = v204;
          }

          v205 = (v200 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__cameraMake);
          swift_beginAccess();
          v206 = v205[1];
          *v205 = v196;
          v205[1] = v197;

          v89 = v336;
          v97 = v333;
        }
      }
    }

    if (*(v97 + 16))
    {
      v207 = sub_10011704C(0xD000000000000018, 0x8000000100201F70);
      if (v208)
      {
        sub_1000CC854(*(v97 + 56) + 32 * v207, &v339);
        if (swift_dynamicCast())
        {
          v209 = v89;
          v210 = v337;
          v211 = v338;
          v212 = *&v62[v209];
          v213 = swift_isUniquelyReferenced_nonNull_native();
          v214 = *&v62[v209];
          if ((v213 & 1) == 0)
          {
            v215 = type metadata accessor for RequestItem._StorageClass(0);
            v216 = *(v215 + 48);
            v217 = *(v215 + 52);
            swift_allocObject();
            v218 = sub_1000EA6A0(v214);

            *&v62[v209] = v218;
            v214 = v218;
          }

          v219 = (v214 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__cameraModel);
          swift_beginAccess();
          v220 = v219[1];
          *v219 = v210;
          v219[1] = v211;

          v89 = v336;
          v97 = v333;
        }
      }
    }

    if (*(v97 + 16))
    {
      v221 = sub_10011704C(0xD00000000000001ELL, 0x8000000100201F90);
      if (v222)
      {
        sub_1000CC854(*(v97 + 56) + 32 * v221, &v339);
        sub_1000CC8B0(0, &qword_1002C0EA0, NSNumber_ptr);
        if (swift_dynamicCast())
        {
          v223 = v337;
          v224 = [v337 BOOLValue];
          v225 = *&v62[v89];
          if (swift_isUniquelyReferenced_nonNull_native())
          {

            v226 = *&v62[v89];
          }

          else
          {
            v227 = *&v62[v89];
            v228 = type metadata accessor for RequestItem._StorageClass(0);
            v229 = *(v228 + 48);
            v230 = *(v228 + 52);
            swift_allocObject();

            v226 = sub_1000EA6A0(v231);

            v97 = v333;

            *&v62[v89] = v226;
          }

          v232 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__clientSupportsProMotionDisplay;
          swift_beginAccess();
          *(v226 + v232) = v224;
        }
      }
    }

    if (*(v97 + 16))
    {
      v233 = sub_10011704C(0x7275446F65646976, 0xED00006E6F697461);
      if (v234)
      {
        sub_1000CC854(*(v97 + 56) + 32 * v233, &v339);
        sub_1000CC8B0(0, &qword_1002C0F08, NSDictionary_ptr);
        if (swift_dynamicCast())
        {
          v235 = v67;
          v236 = v337;
          CMTimeMakeFromDictionary(&v339, v337);
          value = v339.value;
          timescale = v339.timescale;
          v239 = v323;
          v240 = v323 + *(v324 + 24);
          UnknownStorage.init()();
          *v239 = value;
          *(v239 + 8) = timescale;
          v241 = *&v62[v89];
          if (swift_isUniquelyReferenced_nonNull_native())
          {

            v242 = *&v62[v89];
          }

          else
          {
            v243 = *&v62[v89];
            v244 = type metadata accessor for RequestItem._StorageClass(0);
            v245 = *(v244 + 48);
            v246 = *(v244 + 52);
            swift_allocObject();

            v242 = sub_1000EA6A0(v247);

            *&v62[v89] = v242;
          }

          v67 = v235;
          v248 = v322;
          sub_1000CCC3C(v323, v322, type metadata accessor for CMTime);
          (*(v321 + 56))(v248, 0, 1, v324);
          v249 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoDuration;
          swift_beginAccess();
          sub_1000CC968(v248, v242 + v249, &qword_1002C0E90, &qword_1002450C0);
          swift_endAccess();
        }
      }
    }

    if (*(v97 + 16))
    {
      v250 = sub_10011704C(0xD000000000000015, 0x8000000100201FB0);
      if (v251)
      {
        sub_1000CC854(*(v97 + 56) + 32 * v250, &v339);
        sub_1000CC8B0(0, &qword_1002C0EA0, NSNumber_ptr);
        if (swift_dynamicCast())
        {
          v252 = v337;
          [v337 doubleValue];
          v254 = v253;
          v255 = *&v62[v89];
          if (swift_isUniquelyReferenced_nonNull_native())
          {

            v256 = *&v62[v89];
          }

          else
          {
            v257 = *&v62[v89];
            v258 = type metadata accessor for RequestItem._StorageClass(0);
            v259 = *(v258 + 48);
            v260 = *(v258 + 52);
            swift_allocObject();

            v256 = sub_1000EA6A0(v261);

            *&v62[v89] = v256;
          }

          v262 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoNominalFrameRate;
          swift_beginAccess();
          *(v256 + v262) = v254;
        }
      }
    }

    if (*(v97 + 16))
    {
      v263 = sub_10011704C(0xD000000000000012, 0x8000000100201FD0);
      if (v264)
      {
        sub_1000CC854(*(v97 + 56) + 32 * v263, &v339);
        sub_1000CC8B0(0, &qword_1002C0EA0, NSNumber_ptr);
        if (swift_dynamicCast())
        {
          v265 = v337;
          v266 = [v337 unsignedIntValue];
          v267 = *&v62[v89];
          if (swift_isUniquelyReferenced_nonNull_native())
          {

            v268 = *&v62[v89];
          }

          else
          {
            v269 = *&v62[v89];
            v270 = type metadata accessor for RequestItem._StorageClass(0);
            v271 = *(v270 + 48);
            v272 = *(v270 + 52);
            swift_allocObject();

            v268 = sub_1000EA6A0(v273);

            v97 = v333;

            *&v62[v89] = v268;
          }

          v274 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoOrientedWidth;
          swift_beginAccess();
          *(v268 + v274) = v266;
        }
      }
    }

    if (*(v97 + 16))
    {
      v275 = sub_10011704C(0xD000000000000013, 0x8000000100201FF0);
      if (v276)
      {
        sub_1000CC854(*(v97 + 56) + 32 * v275, &v339);
        sub_1000CC8B0(0, &qword_1002C0EA0, NSNumber_ptr);
        if (swift_dynamicCast())
        {
          v277 = v337;
          v278 = [v337 unsignedIntValue];
          v279 = *&v62[v89];
          if (swift_isUniquelyReferenced_nonNull_native())
          {

            v280 = *&v62[v89];
          }

          else
          {
            v281 = *&v62[v89];
            v282 = type metadata accessor for RequestItem._StorageClass(0);
            v283 = *(v282 + 48);
            v284 = *(v282 + 52);
            swift_allocObject();

            v280 = sub_1000EA6A0(v285);

            v97 = v333;

            *&v62[v89] = v280;
          }

          v286 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoOrientedHeight;
          swift_beginAccess();
          *(v280 + v286) = v278;
        }
      }
    }

    if (*(v97 + 16))
    {
      v287 = sub_10011704C(0x646F436F65646976, 0xEA00000000006365);
      if (v288)
      {
        sub_1000CC854(*(v97 + 56) + 32 * v287, &v339);
        sub_1000CC8B0(0, &qword_1002C0EA0, NSNumber_ptr);
        if (swift_dynamicCast())
        {
          v289 = v337;
          v290 = [v337 unsignedIntValue];
          v291 = *&v62[v89];
          if (swift_isUniquelyReferenced_nonNull_native())
          {

            v292 = *&v62[v89];
          }

          else
          {
            v293 = *&v62[v89];
            v294 = type metadata accessor for RequestItem._StorageClass(0);
            v295 = *(v294 + 48);
            v296 = *(v294 + 52);
            swift_allocObject();

            v292 = sub_1000EA6A0(v297);

            *&v62[v89] = v292;
          }

          v298 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoCodec;
          swift_beginAccess();
          *(v292 + v298) = v290;
        }
      }
    }
  }

  if (CMTimeRange.isValid.getter())
  {
    sub_1000BCCF8(v67, v328);
    v299 = *&v62[v89];
    if (swift_isUniquelyReferenced_nonNull_native())
    {

      v300 = *&v62[v89];
    }

    else
    {
      v301 = *&v62[v89];
      v302 = type metadata accessor for RequestItem._StorageClass(0);
      v303 = *(v302 + 48);
      v304 = *(v302 + 52);
      swift_allocObject();

      v300 = sub_1000EA6A0(v305);

      *&v62[v89] = v300;
    }

    v306 = v326;
    v307 = v327;
    sub_1000CCC3C(v328, v327, type metadata accessor for CMTimeRange);
    (*(v325 + 56))(v307, 0, 1, v306);
    v308 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__timeRange;
    swift_beginAccess();
    sub_1000CC968(v307, v300 + v308, &qword_1002C0E88, &qword_1002450B8);
    swift_endAccess();
  }

  else
  {
  }
}

uint64_t sub_1000C2B28(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void, void), uint64_t a6, void *a7, uint64_t a8, void *a9)
{
  v113 = a7;
  v114 = a8;
  v119 = a1;
  v13 = type metadata accessor for Date();
  v123 = *(v13 - 8);
  v124 = v13;
  v14 = *(v123 + 64);
  v15 = __chkstk_darwin(v13);
  v104 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v112 = &v102 - v17;
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  v120 = v18;
  v121 = v19;
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v106 = &v102 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1000BB130(&qword_1002C0E30, &qword_100245080);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v111 = &v102 - v24;
  v25 = type metadata accessor for Ckcode_RecordTransport();
  v109 = *(v25 - 8);
  v110 = v25;
  v26 = *(v109 + 64);
  __chkstk_darwin(v25);
  v115 = &v102 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for ResponseItem(0);
  v116 = *(v108 - 8);
  v28 = v116[8];
  __chkstk_darwin(v108);
  v117 = &v102 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1000BB130(&qword_1002C0DC0, &qword_100245038);
  v31 = *(*(v30 - 8) + 64);
  v32 = __chkstk_darwin(v30 - 8);
  v105 = &v102 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v122 = &v102 - v34;
  v35 = sub_1000BB130(&qword_1002C0DC8, &qword_100245040);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35 - 8);
  v38 = &v102 - v37;
  v39 = type metadata accessor for ResourceStreamResponse(0);
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  __chkstk_darwin(v39);
  v118 = &v102 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1000BB130(&qword_1002C0EF0, &unk_100245100);
  v44 = *(*(v43 - 8) + 64);
  v45 = __chkstk_darwin(v43 - 8);
  v47 = &v102 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v49 = &v102 - v48;
  if (qword_1002C05F0 != -1)
  {
    swift_once();
  }

  if (byte_1002C0D28 == 1)
  {
    v107 = a6;
    v103 = a5;
    type metadata accessor for ResourceStreamRequest(0);
    sub_1000CC224(&qword_1002C0EE0, type metadata accessor for ResourceStreamRequest);
    Message.debugDescription.getter();
    v50 = String._bridgeToObjectiveC()();

    sub_1000CC794(v119, v49, &qword_1002C0EF0, &unk_100245100);
    if ((*(v40 + 48))(v49, 1, v39) == 1)
    {
      sub_1000CCDBC(v49, &qword_1002C0EF0, &unk_100245100);
      v51 = 0;
      if (a2)
      {
LABEL_6:
        v52 = _convertErrorToNSError(_:)();
LABEL_9:
        swift_beginAccess();
        if (*(a4 + 16))
        {
          v53 = *(a4 + 16);

          v54.super.isa = Array._bridgeToObjectiveC()().super.isa;
        }

        else
        {
          v54.super.isa = 0;
        }

        CPLTaskLogCKCodeRequestAndResponse();

        a5 = v103;
        a6 = v107;
        goto LABEL_13;
      }
    }

    else
    {
      sub_1000CC224(&qword_1002C0EF8, type metadata accessor for ResourceStreamResponse);
      Message.debugDescription.getter();
      sub_1000CCD5C(v49, type metadata accessor for ResourceStreamResponse);
      v51 = String._bridgeToObjectiveC()();

      if (a2)
      {
        goto LABEL_6;
      }
    }

    v52 = 0;
    goto LABEL_9;
  }

LABEL_13:
  if (a2)
  {
    (*(v121 + 56))(v38, 1, 1, v120);
    v55 = v122;
    (*(v123 + 56))(v122, 1, 1, v124);
    swift_errorRetain();
    a5(v38, v55, a2);

    v56 = v55;
LABEL_17:
    sub_1000CCDBC(v56, &qword_1002C0DC0, &qword_100245038);
    return sub_1000CCDBC(v38, &qword_1002C0DC8, &qword_100245040);
  }

  sub_1000CC794(v119, v47, &qword_1002C0EF0, &unk_100245100);
  if ((*(v40 + 48))(v47, 1, v39) == 1)
  {
    sub_1000CCDBC(v47, &qword_1002C0EF0, &unk_100245100);
    (*(v121 + 56))(v38, 1, 1, v120);
    v57 = v122;
    (*(v123 + 56))(v122, 1, 1, v124);
    v58 = sub_1000BB7F8(0xD000000000000020, 0x8000000100201E40, 150);
    a5(v38, v57, v58);

    v56 = v57;
    goto LABEL_17;
  }

  v60 = v118;
  sub_1000CCC3C(v47, v118, type metadata accessor for ResourceStreamResponse);
  v61 = *(v60 + 8);
  v63 = v123;
  v62 = v124;
  if (!v61)
  {
    if (!*(*v60 + 16))
    {
      (*(v121 + 56))(v38, 1, 1, v120);
      v65 = v122;
      (*(v63 + 56))(v122, 1, 1, v62);
      v66 = sub_1000BB7F8(0xD00000000000001CLL, 0x8000000100201EA0, 150);
      goto LABEL_20;
    }

    v67 = v117;
    sub_1000CCBD4(*v60 + ((*(v116 + 80) + 32) & ~*(v116 + 80)), v117, type metadata accessor for ResponseItem);
    if (*(v67 + 96))
    {
      v68 = sub_1000BB948(v67, v113, v114, a9);
      (*(v121 + 56))(v38, 1, 1, v120);
      v69 = v122;
      (*(v63 + 56))(v122, 1, 1, v62);
      a5(v38, v69, v68);

      sub_1000CCDBC(v69, &qword_1002C0DC0, &qword_100245038);
      v70 = v38;
LABEL_25:
      sub_1000CCDBC(v70, &qword_1002C0DC8, &qword_100245040);
      sub_1000CCD5C(v67, type metadata accessor for ResponseItem);
      return sub_1000CCD5C(v60, type metadata accessor for ResourceStreamResponse);
    }

    v71 = v111;
    sub_1000CC794(v67 + *(v108 + 52), v111, &qword_1002C0E30, &qword_100245080);
    v72 = v109;
    v73 = v110;
    v119 = *(v109 + 48);
    if (v119(v71, 1, v110) == 1)
    {
      Ckcode_RecordTransport.init()();
      v74 = v119(v71, 1, v73);
      v75 = v112;
      if (v74 != 1)
      {
        sub_1000CCDBC(v71, &qword_1002C0E30, &qword_100245080);
      }
    }

    else
    {
      (*(v72 + 32))(v115, v71, v73);
      v75 = v112;
    }

    sub_1000CC8B0(0, &qword_1002C0E40, CKRecord_ptr);
    v76 = CKRecord.init(_:)();
    if (v76)
    {
      v77 = v76;
      sub_1000CC8B0(0, &qword_1002C0E48, CKAsset_ptr);
      CKRecordKeyValueSetting.subscript.getter();
      v78 = v125;
      v67 = v117;
      if (!v125)
      {
        (*(v121 + 56))(v38, 1, 1, v120);
        v91 = v122;
        (*(v63 + 56))(v122, 1, 1, v124);
        v92 = sub_1000BB7F8(0xD000000000000020, 0x8000000100201AB0, 27);
        a5(v38, v91, v92);

        sub_1000CCDBC(v91, &qword_1002C0DC0, &qword_100245038);
        v70 = v38;
        goto LABEL_25;
      }

      v107 = a6;
      v79 = v38;
      v80 = String._bridgeToObjectiveC()();
      v81 = [v78 downloadURLWithFileName:v80];

      if (!v81)
      {
        v93 = v79;
        (*(v121 + 56))(v79, 1, 1, v120);
        v94 = v122;
        (*(v63 + 56))(v122, 1, 1, v124);
        v95 = sub_1000BB7F8(0xD000000000000024, 0x8000000100201E70, 27);
        a5(v93, v94, v95);

        sub_1000CCDBC(v94, &qword_1002C0DC0, &qword_100245038);
        v70 = v93;
        goto LABEL_25;
      }

      v119 = v77;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v116 = v78;
      v82 = [v78 downloadURLExpiration];
      if (v82)
      {
        v83 = v104;
        v84 = v82;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v85 = *(v63 + 32);
        v86 = v105;
        v87 = v124;
        v85(v105, v83, v124);
        v115 = *(v63 + 56);
        (v115)(v86, 0, 1, v87);
        v85(v75, v86, v87);
        v88 = v75;
      }

      else
      {
        v96 = v105;
        v97 = v124;
        v115 = *(v63 + 56);
        (v115)(v105, 1, 1, v124);
        Date.init(timeIntervalSinceNow:)();
        if ((*(v63 + 48))(v96, 1, v97) != 1)
        {
          sub_1000CCDBC(v96, &qword_1002C0DC0, &qword_100245038);
        }

        v63 = v123;
        v87 = v124;
        v88 = v112;
      }

      v98 = v120;
      v99 = v121;
      v100 = v79;
      (*(v121 + 16))(v79, v106, v120);
      (*(v99 + 56))(v79, 0, 1, v98);
      v101 = v122;
      (*(v63 + 16))(v122, v88, v87);
      (v115)(v101, 0, 1, v87);
      a5(v100, v101, 0);

      sub_1000CCDBC(v101, &qword_1002C0DC0, &qword_100245038);
      sub_1000CCDBC(v100, &qword_1002C0DC8, &qword_100245040);
      (*(v63 + 8))(v88, v87);
      (*(v99 + 8))(v106, v98);
    }

    else
    {
      (*(v121 + 56))(v38, 1, 1, v120);
      v89 = v122;
      (*(v63 + 56))(v122, 1, 1, v62);
      v90 = sub_1000BB7F8(0xD000000000000022, 0x8000000100201A80, 25);
      a5(v38, v89, v90);

      sub_1000CCDBC(v89, &qword_1002C0DC0, &qword_100245038);
      sub_1000CCDBC(v38, &qword_1002C0DC8, &qword_100245040);
    }

    sub_1000CCD5C(v117, type metadata accessor for ResponseItem);
    return sub_1000CCD5C(v60, type metadata accessor for ResourceStreamResponse);
  }

  v64 = *(v60 + 16);
  (*(v121 + 56))(v38, 1, 1, v120);
  v65 = v122;
  (*(v63 + 56))(v122, 1, 1, v62);
  v66 = sub_1000BC70C(v61, v64, *(v60 + 24), *(v60 + 32), *(v60 + 40));
LABEL_20:
  a5(v38, v65, v66);

  sub_1000CCDBC(v65, &qword_1002C0DC0, &qword_100245038);
  sub_1000CCDBC(v38, &qword_1002C0DC8, &qword_100245040);
  return sub_1000CCD5C(v60, type metadata accessor for ResourceStreamResponse);
}

void sub_1000C3DB4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_1000BB130(&qword_1002C0DC0, &qword_100245038);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v24 - v10;
  v12 = sub_1000BB130(&qword_1002C0DC8, &qword_100245040);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v24 - v14;
  sub_1000CC794(a1, &v24 - v14, &qword_1002C0DC8, &qword_100245040);
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v19 = 0;
  if ((*(v17 + 48))(v15, 1, v16) != 1)
  {
    URL._bridgeToObjectiveC()(v18);
    v19 = v20;
    (*(v17 + 8))(v15, v16);
  }

  sub_1000CC794(a2, v11, &qword_1002C0DC0, &qword_100245038);
  v21 = type metadata accessor for Date();
  v22 = *(v21 - 8);
  isa = 0;
  if ((*(v22 + 48))(v11, 1, v21) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v22 + 8))(v11, v21);
  }

  if (a3)
  {
    a3 = _convertErrorToNSError(_:)();
  }

  (*(a4 + 16))(a4, v19, isa, a3);
}

uint64_t sub_1000C400C(uint64_t *a1)
{
  sub_1000BB130(&qword_1002C0E78, &qword_1002450B0);
  v2 = *(type metadata accessor for RequestItem(0) - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100244100;
  sub_1000CC224(&qword_1002C0E80, type metadata accessor for RequestItem);
  static Message.with(_:)();
  v6 = *a1;

  *a1 = v5;
  return result;
}

uint64_t sub_1000C4180(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v119 = a5;
  v118[1] = a4;
  v123 = a3;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v14 = UUID.uuidString.getter();
  v16 = v15;
  (*(v10 + 8))(v13, v9);
  v17 = *(type metadata accessor for RequestItem(0) + 20);
  v18 = *(a1 + v17);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(a1 + v17);
  v120 = a6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = type metadata accessor for RequestItem._StorageClass(0);
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    v24 = sub_1000EA6A0(v20);

    *(a1 + v17) = v24;
    v20 = v24;
  }

  swift_beginAccess();
  v25 = *(v20 + 24);
  *(v20 + 16) = v14;
  *(v20 + 24) = v16;

  v26 = [a2 recordName];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v30 = *(a1 + v17);
  v31 = swift_isUniquelyReferenced_nonNull_native();
  v32 = *(a1 + v17);
  if ((v31 & 1) == 0)
  {
    v33 = type metadata accessor for RequestItem._StorageClass(0);
    v34 = *(v33 + 48);
    v35 = *(v33 + 52);
    swift_allocObject();
    v36 = sub_1000EA6A0(v32);

    *(a1 + v17) = v36;
    v32 = v36;
  }

  swift_beginAccess();
  v37 = *(v32 + 40);
  *(v32 + 32) = v27;
  *(v32 + 40) = v29;

  v38 = [a2 zoneID];
  v39 = [v38 zoneName];
  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;

  v43 = *(a1 + v17);
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *(a1 + v17);
  if ((v44 & 1) == 0)
  {
    v46 = type metadata accessor for RequestItem._StorageClass(0);
    v47 = *(v46 + 48);
    v48 = *(v46 + 52);
    swift_allocObject();
    v49 = sub_1000EA6A0(v45);

    *(a1 + v17) = v49;
    v45 = v49;
  }

  swift_beginAccess();
  v50 = *(v45 + 72);
  *(v45 + 64) = v40;
  *(v45 + 72) = v42;

  v51 = &selRef_isFakeDerivative_;
  v52 = [v38 ownerName];
  v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = v54;

  if (v53 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v55 == v56)
  {
  }

  else
  {
    v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v57)
    {
      goto LABEL_15;
    }

    v58 = [v38 ownerName];
    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v60 = v59;

    v61 = *(a1 + v17);
    v62 = swift_isUniquelyReferenced_nonNull_native();
    v63 = *(a1 + v17);
    if ((v62 & 1) == 0)
    {
      v64 = type metadata accessor for RequestItem._StorageClass(0);
      v65 = *(v64 + 48);
      v66 = *(v64 + 52);
      swift_allocObject();
      v67 = sub_1000EA6A0(v63);

      *(a1 + v17) = v67;
      v63 = v67;
    }

    swift_beginAccess();
    v68 = *(v63 + 88);
    *(v63 + 80) = v51;
    *(v63 + 88) = v60;
  }

LABEL_15:
  v69 = [v123 identity];
  if (!v69)
  {
    __break(1u);
    goto LABEL_43;
  }

  v70 = v69;

  v71 = [v70 fingerPrint];

  if (v71)
  {
    v72 = CPLCloudKitFingerPrintFromDynamicFingerPrint(v71);
    v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v75 = v74;

    v76 = *(a1 + v17);
    v77 = swift_isUniquelyReferenced_nonNull_native();
    v78 = *(a1 + v17);
    if ((v77 & 1) == 0)
    {
      v79 = type metadata accessor for RequestItem._StorageClass(0);
      v80 = *(v79 + 48);
      v81 = *(v79 + 52);
      swift_allocObject();
      v82 = sub_1000EA6A0(v78);

      *(a1 + v17) = v82;
      v78 = v82;
    }

    swift_beginAccess();
    v83 = *(v78 + 120);
    *(v78 + 112) = v73;
    *(v78 + 120) = v75;

    if (qword_1002C05F8 != -1)
    {
      swift_once();
    }

    if ((byte_1002C0D29 & 1) == 0)
    {
      v84 = [a2 recordName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v85 = v121;
      v86 = sub_1000BDFB4(v38);
      if (v85)
      {
      }

      else
      {
        v87 = v86;

        v88 = *(a1 + v17);
        v89 = swift_isUniquelyReferenced_nonNull_native();
        v90 = *(a1 + v17);
        if ((v89 & 1) == 0)
        {
          v91 = type metadata accessor for RequestItem._StorageClass(0);
          v92 = *(v91 + 48);
          v93 = *(v91 + 52);
          swift_allocObject();
          v94 = sub_1000EA6A0(v90);

          *(a1 + v17) = v94;
          v90 = v94;
        }

        swift_beginAccess();
        v95 = *(v90 + 128);
        *(v90 + 128) = v87;
      }
    }
  }

  v96 = sub_1001A8CE0(v119);
  v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v99 = v98;

  v100 = *(a1 + v17);
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v102 = *(a1 + v17);
  if ((v101 & 1) == 0)
  {
    v103 = type metadata accessor for RequestItem._StorageClass(0);
    v104 = *(v103 + 48);
    v105 = *(v103 + 52);
    swift_allocObject();
    v106 = sub_1000EA6A0(v102);

    *(a1 + v17) = v106;
    v102 = v106;
  }

  swift_beginAccess();
  v107 = *(v102 + 56);
  *(v102 + 48) = v97;
  *(v102 + 56) = v99;

  v108 = [v123 resourceType];
  v51 = v120;
  if (v120 < 2)
  {
    goto LABEL_38;
  }

  if (v120 != 2)
  {
LABEL_43:
    type metadata accessor for CPLCKResourceDownloadType(0);
    v122 = v51;
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return result;
  }

  if (qword_1002C05E8 != -1)
  {
    v117 = v108;
    swift_once();
    v108 = v117;
  }

  if (sub_1000BB634(v108, qword_1002C0D20))
  {
    v51 = 2;
  }

  else
  {
    v51 = 0;
  }

LABEL_38:
  v109 = *(a1 + v17);
  if (swift_isUniquelyReferenced_nonNull_native())
  {

    v110 = *(a1 + v17);
  }

  else
  {
    v111 = *(a1 + v17);
    v112 = type metadata accessor for RequestItem._StorageClass(0);
    v113 = *(v112 + 48);
    v114 = *(v112 + 52);
    swift_allocObject();

    v110 = sub_1000EA6A0(v115);

    *(a1 + v17) = v110;
  }

  result = swift_beginAccess();
  *(v110 + 96) = v51;
  *(v110 + 104) = 1;
  return result;
}

uint64_t sub_1000C490C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BB130(&qword_1002C0E38, &qword_100245088);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = (&v22 - v6);
  v8 = sub_1000BB130(&qword_1002C0EB0, &qword_1002450D0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v22 - v10;
  v12 = type metadata accessor for ResponseItem(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CC794(a1, v7, &qword_1002C0E38, &qword_100245088);
  v17 = type metadata accessor for ResourceDownloadResponse(0);
  if ((*(*(v17 - 8) + 48))(v7, 1, v17) == 1)
  {
    sub_1000CCDBC(v7, &qword_1002C0E38, &qword_100245088);
    (*(v13 + 56))(v11, 1, 1, v12);
    return sub_1000CCDBC(v11, &qword_1002C0EB0, &qword_1002450D0);
  }

  v18 = *v7;

  sub_1000CCD5C(v7, type metadata accessor for ResourceDownloadResponse);
  if (*(v18 + 16))
  {
    sub_1000CCBD4(v18 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v11, type metadata accessor for ResponseItem);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  (*(v13 + 56))(v11, v19, 1, v12);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_1000CCDBC(v11, &qword_1002C0EB0, &qword_1002450D0);
  }

  sub_1000CCC3C(v11, v16, type metadata accessor for ResponseItem);
  v21 = *(v16 + 9);
  sub_1000CCD5C(v16, type metadata accessor for ResponseItem);
  result = swift_beginAccess();
  *(a2 + 16) = v21 == 2;
  return result;
}

void sub_1000C4C38(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, unint64_t, uint64_t, uint64_t, void, void), uint64_t a7, void *a8, uint64_t a9)
{
  swift_beginAccess();
  if ((*(a4 + 16) & 1) == 0)
  {
    swift_beginAccess();
    if (!*(a5 + 16))
    {
      if (a3)
      {
        swift_beginAccess();
        *(a5 + 16) = a3;
        swift_errorRetain();
        return;
      }

      if (a1)
      {
        sub_1000CC8B0(0, &qword_1002C0E40, CKRecord_ptr);
        sub_1000CC8B0(0, &qword_1002C0E48, CKAsset_ptr);
        v15 = a1;
        CKRecordKeyValueSetting.subscript.getter();
        if (v29)
        {
          v16 = [v29 assetContent];
          if (v16)
          {
            v17 = v16;
            v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v20 = v19;

            swift_beginAccess();
            *(a4 + 16) = 1;
            sub_1000CC5D0(v18, v20);
            v21 = [a8 identity];
            if (v21)
            {
              v22 = v21;
              v23 = [v21 fileUTI];

              if (v23)
              {
                v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v26 = v25;
              }

              else
              {
                v24 = 0;
                v26 = 0;
              }

              swift_beginAccess();
              a6(v18, v20, v24, v26, *(a9 + 16), 0);

              sub_1000CC444(v18, v20);
              sub_1000CC444(v18, v20);
            }

            else
            {
              __break(1u);
            }

            return;
          }

          v27 = sub_1000BB7F8(0xD00000000000001CLL, 0x8000000100201DB0, 27);
        }

        else
        {
          v27 = sub_1000BB7F8(0xD000000000000020, 0x8000000100201AB0, 27);
        }

        swift_beginAccess();
        v28 = *(a5 + 16);
        *(a5 + 16) = v27;
      }
    }
  }
}

uint64_t sub_1000C4F0C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, void, void, void, void, void), uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  v50 = a8;
  v54 = a2;
  v15 = type metadata accessor for ResponseItem(0);
  v51 = *(v15 - 8);
  v16 = *(v51 + 64);
  __chkstk_darwin(v15 - 8);
  v52 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ResourceDownloadResponse(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v53 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1000BB130(&qword_1002C0E38, &qword_100245088);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v26 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v48 - v27;
  if (qword_1002C05F0 != -1)
  {
    swift_once();
  }

  if (byte_1002C0D28 == 1)
  {
    v48 = a7;
    v49 = a6;
    type metadata accessor for ResourceDownloadRequest(0);
    sub_1000CC224(&unk_1002C0E20, type metadata accessor for ResourceDownloadRequest);
    Message.debugDescription.getter();
    v29 = String._bridgeToObjectiveC()();

    sub_1000CC794(a1, v28, &qword_1002C0E38, &qword_100245088);
    if ((*(v19 + 48))(v28, 1, v18) == 1)
    {
      sub_1000CCDBC(v28, &qword_1002C0E38, &qword_100245088);
      v30 = 0;
      if (v54)
      {
LABEL_6:
        v31 = _convertErrorToNSError(_:)();
LABEL_9:
        swift_beginAccess();
        if (*(a4 + 16))
        {
          v32 = *(a4 + 16);

          v33.super.isa = Array._bridgeToObjectiveC()().super.isa;
        }

        else
        {
          v33.super.isa = 0;
        }

        a6 = v49;
        CPLTaskLogCKCodeRequestAndResponse();

        goto LABEL_13;
      }
    }

    else
    {
      sub_1000CC224(&qword_1002C0E50, type metadata accessor for ResourceDownloadResponse);
      Message.debugDescription.getter();
      sub_1000CCD5C(v28, type metadata accessor for ResourceDownloadResponse);
      v30 = String._bridgeToObjectiveC()();

      if (v54)
      {
        goto LABEL_6;
      }
    }

    v31 = 0;
    goto LABEL_9;
  }

LABEL_13:
  result = swift_beginAccess();
  if (*(a5 + 16))
  {
    return result;
  }

  sub_1000CC794(a1, v26, &qword_1002C0E38, &qword_100245088);
  if ((*(v19 + 48))(v26, 1, v18) != 1)
  {
    v36 = v53;
    sub_1000CCC3C(v26, v53, type metadata accessor for ResourceDownloadResponse);
    v37 = *(v36 + 8);
    if (v37)
    {
      v38 = sub_1000BC70C(v37, *(v36 + 16), *(v36 + 24), *(v36 + 32), *(v36 + 40));
    }

    else
    {
      if (*(*v36 + 16))
      {
        v39 = v52;
        sub_1000CCBD4(*v36 + ((*(v51 + 80) + 32) & ~*(v51 + 80)), v52, type metadata accessor for ResponseItem);
        if (*(v39 + 96))
        {
          v40 = sub_1001A8CE0(a10);
          v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v43 = v42;

          v44 = sub_1000BB948(v39, a9, v41, v43);

          swift_errorRetain();
          a6(0, 0xF000000000000000, 0, 0, 0, v44);
        }

        else
        {
          v46 = v50;
          swift_beginAccess();
          if (*(v46 + 16))
          {
            v47 = *(v46 + 16);
          }

          else
          {
            if (v54)
            {
              v47 = v54;
            }

            else
            {
              v47 = sub_1000BB7F8(0xD00000000000001BLL, 0x8000000100201D60, 150);
            }

            swift_errorRetain();
          }

          swift_errorRetain();
          a6(0, 0xF000000000000000, 0, 0, 0, v47);
        }

        sub_1000CCD5C(v39, type metadata accessor for ResponseItem);
        return sub_1000CCD5C(v36, type metadata accessor for ResourceDownloadResponse);
      }

      v45 = v50;
      swift_beginAccess();
      if (*(v45 + 16))
      {
        v38 = *(v45 + 16);
      }

      else
      {
        if (v54)
        {
          v38 = v54;
        }

        else
        {
          v38 = sub_1000BB7F8(0xD000000000000028, 0x8000000100201D80, 150);
        }

        swift_errorRetain();
      }

      swift_errorRetain();
    }

    a6(0, 0xF000000000000000, 0, 0, 0, v38);

    return sub_1000CCD5C(v36, type metadata accessor for ResourceDownloadResponse);
  }

  sub_1000CCDBC(v26, &qword_1002C0E38, &qword_100245088);
  if (v54)
  {
    v35 = v54;
  }

  else
  {
    v35 = sub_1000BB7F8(0xD00000000000002CLL, 0x8000000100201D30, 150);
  }

  swift_errorRetain();
  a6(0, 0xF000000000000000, 0, 0, 0, v35);
}

void sub_1000C5738(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, char a5, uint64_t a6, uint64_t a7)
{
  v10 = a4;
  if (a2 >> 60 != 15)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    if (!v10)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  isa = 0;
  if (a4)
  {
LABEL_5:
    v10 = String._bridgeToObjectiveC()();
  }

LABEL_6:
  if (a6)
  {
    v12 = _convertErrorToNSError(_:)();
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  (*(a7 + 16))(a7, isa, v10, a5 & 1);
}

uint64_t sub_1000C580C@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for UploadResource(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4 - 8);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v31 - v10;
  v12 = type metadata accessor for UploadResourcesRequest(0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = (&v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  *a2 = &_swiftEmptyArrayStorage;
  v17 = a2 + *(v13 + 28);
  UnknownStorage.init()();
  *v16 = &_swiftEmptyArrayStorage;
  v18 = v16 + *(v13 + 28);
  UnknownStorage.init()();
  result = sub_1000CCE1C(v16, a2, type metadata accessor for UploadResourcesRequest);
  v20 = a1;
  if (!(a1 >> 62))
  {
    v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v31 = a2;
    if (v21)
    {
      goto LABEL_3;
    }

LABEL_15:
    v23 = &_swiftEmptyArrayStorage;
LABEL_16:

    v29 = v31;
    v30 = *v31;

    *v29 = v23;
    return result;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v20 = a1;
  v21 = result;
  v31 = a2;
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (v21 >= 1)
  {
    v22 = 0;
    v32 = v20 & 0xC000000000000001;
    v23 = &_swiftEmptyArrayStorage;
    v24 = v20;
    do
    {
      if (v32)
      {
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v25 = *(v20 + 8 * v22 + 32);
      }

      v26 = v25;
      sub_1000C7D44(v26, v11);
      sub_1000CCBD4(v11, v9, type metadata accessor for UploadResource);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1000C9458(0, v23[2] + 1, 1, v23, &qword_1002C0E98, &qword_1002450C8, type metadata accessor for UploadResource);
      }

      v28 = v23[2];
      v27 = v23[3];
      if (v28 >= v27 >> 1)
      {
        v23 = sub_1000C9458(v27 > 1, v28 + 1, 1, v23, &qword_1002C0E98, &qword_1002450C8, type metadata accessor for UploadResource);
      }

      ++v22;

      sub_1000CCD5C(v11, type metadata accessor for UploadResource);
      v23[2] = v28 + 1;
      sub_1000CCC3C(v9, v23 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v28, type metadata accessor for UploadResource);
      v20 = v24;
    }

    while (v21 != v22);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

unint64_t sub_1000C5B5C(uint64_t a1, void *a2, void (*a3)(id, id))
{
  v6 = sub_1000BB130(&qword_1002C0E00, &qword_100245060);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for UploadResourcesResponse(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CC794(a1, v9, &qword_1002C0E00, &qword_100245060);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    sub_1000CCC3C(v9, v14, type metadata accessor for UploadResourcesResponse);
    v16 = [objc_allocWithZone(CPLDerivativesFilter) init];
    result = sub_1000C5E3C();
    v18 = result;
    if (result >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v19 = result;
      if (result)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v19 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19)
      {
LABEL_6:
        if (v19 < 1)
        {
          __break(1u);
          return result;
        }

        for (i = 0; i != v19; ++i)
        {
          if ((v18 & 0xC000000000000001) != 0)
          {
            v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v21 = *(v18 + 8 * i + 32);
          }

          v22 = v21;
          [v16 addServerDropDerivativesRecipe:v21];
        }
      }
    }

    v23 = v16;
    a3(v16, 0);

    return sub_1000CCD5C(v14, type metadata accessor for UploadResourcesResponse);
  }

  sub_1000CCDBC(v9, &qword_1002C0E00, &qword_100245060);
  if (a2)
  {
    v15 = a2;
  }

  else
  {
    v15 = sub_1000BB7F8(0xD000000000000038, 0x80000001002019D0, 150);
  }

  swift_errorRetain();
  a3(0, v15);
}

uint64_t sub_1000C5E3C()
{
  v1 = type metadata accessor for UploadResource(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  result = __chkstk_darwin(v1 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 8);
  v8 = &_swiftEmptyArrayStorage;
  v33 = &_swiftEmptyArrayStorage;
  v29 = *(v7 + 16);
  if (!v29)
  {
    return v8;
  }

  v9 = 0;
  v10 = *(v2 + 80);
  v27 = v7;
  v28 = v7 + ((v10 + 32) & ~v10);
  v26 = v2;
  while (v9 < *(v7 + 16))
  {
    result = sub_1000CCBD4(v28 + *(v2 + 72) * v9, v6, type metadata accessor for UploadResource);
    if ((v6[8] & 1) == 0 && (*v6 & 0x8000000000000000) != 0)
    {
      goto LABEL_18;
    }

    v11 = *(v6 + 2);
    v12 = *(v6 + 3);
    v13 = *(v6 + 4);
    if ((v6[40] & 1) == 0 && v13 < 0)
    {
      goto LABEL_19;
    }

    v31 = *v6;
    v14 = *(v6 + 6);
    v15 = *(v14 + 16);
    if (v15)
    {
      v30 = v11;
      v32 = &_swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      sub_1000CC8B0(0, &qword_1002C0EA0, NSNumber_ptr);
      v16 = (v14 + 32);
      do
      {
        v17 = *v16;
        v16 += 2;
        NSNumber.init(integerLiteral:)(v17);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v18 = v32[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        --v15;
      }

      while (v15);
      v2 = v26;
    }

    v19 = objc_allocWithZone(CPLDropDerivativesRecipe);
    v20 = String._bridgeToObjectiveC()();
    sub_1000CC8B0(0, &qword_1002C0EA0, NSNumber_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v22 = [v19 initWithSourceResourceType:v13 uti:v20 changeType:v31 droppingDerivativeTypes:isa];

    v23 = v22;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v25 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    ++v9;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v24 = v33;
    result = sub_1000CCD5C(v6, type metadata accessor for UploadResource);
    v7 = v27;
    if (v9 == v29)
    {
      return v24;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1000C6174(uint64_t *a1)
{
  sub_1000BB130(&qword_1002C0E78, &qword_1002450B0);
  v2 = *(type metadata accessor for RequestItem(0) - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100244100;
  sub_1000CC224(&qword_1002C0E80, type metadata accessor for RequestItem);
  static Message.with(_:)();
  v6 = *a1;

  *a1 = v5;
  return result;
}

void sub_1000C62F4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t *a8)
{
  v122 = a8;
  v121 = a7;
  v120 = a5;
  v119 = a4;
  v118 = a3;
  v11 = sub_1000BB130(&qword_1002C0E88, &qword_1002450B8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v115 - v13;
  v117 = type metadata accessor for CMTimeRange(0);
  v116 = *(v117 - 8);
  v15 = *(v116 + 64);
  __chkstk_darwin(v117);
  v123 = &v115 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v115 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v22 = UUID.uuidString.getter();
  v24 = v23;
  (*(v18 + 8))(v21, v17);
  v25 = *(type metadata accessor for RequestItem(0) + 20);
  v26 = *(a1 + v25);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = *(a1 + v25);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v29 = type metadata accessor for RequestItem._StorageClass(0);
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    v32 = sub_1000EA6A0(v28);

    *(a1 + v25) = v32;
    v28 = v32;
  }

  swift_beginAccess();
  v33 = *(v28 + 24);
  *(v28 + 16) = v22;
  *(v28 + 24) = v24;

  v34 = [a2 recordName];
  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  v38 = *(a1 + v25);
  v39 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *(a1 + v25);
  if ((v39 & 1) == 0)
  {
    v41 = type metadata accessor for RequestItem._StorageClass(0);
    v42 = *(v41 + 48);
    v43 = *(v41 + 52);
    swift_allocObject();
    v44 = sub_1000EA6A0(v40);

    *(a1 + v25) = v44;
    v40 = v44;
  }

  swift_beginAccess();
  v45 = *(v40 + 40);
  *(v40 + 32) = v35;
  *(v40 + 40) = v37;

  v46 = [a2 zoneID];
  v47 = [v46 zoneName];
  v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v50 = v49;

  v51 = *(a1 + v25);
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v53 = *(a1 + v25);
  if ((v52 & 1) == 0)
  {
    v54 = type metadata accessor for RequestItem._StorageClass(0);
    v55 = *(v54 + 48);
    v56 = *(v54 + 52);
    swift_allocObject();
    v57 = sub_1000EA6A0(v53);

    *(a1 + v25) = v57;
    v53 = v57;
  }

  swift_beginAccess();
  v58 = *(v53 + 72);
  *(v53 + 64) = v48;
  *(v53 + 72) = v50;

  v59 = [v46 ownerName];
  v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v62 = v61;

  if (v60 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v62 == v63)
  {
  }

  else
  {
    v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v64)
    {
      goto LABEL_15;
    }

    v65 = [v46 ownerName];
    v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v68 = v67;

    v69 = *(a1 + v25);
    v70 = swift_isUniquelyReferenced_nonNull_native();
    v71 = *(a1 + v25);
    if ((v70 & 1) == 0)
    {
      v72 = type metadata accessor for RequestItem._StorageClass(0);
      v73 = *(v72 + 48);
      v74 = *(v72 + 52);
      swift_allocObject();
      v75 = sub_1000EA6A0(v71);

      *(a1 + v25) = v75;
      v71 = v75;
    }

    swift_beginAccess();
    v76 = *(v71 + 88);
    *(v71 + 80) = v66;
    *(v71 + 88) = v68;
  }

LABEL_15:
  v77 = String._bridgeToObjectiveC()();
  v78 = CPLCloudKitFingerPrintFromDynamicFingerPrint(v77);

  v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v81 = v80;

  v82 = *(a1 + v25);
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v84 = *(a1 + v25);
  if ((v83 & 1) == 0)
  {
    v85 = type metadata accessor for RequestItem._StorageClass(0);
    v86 = *(v85 + 48);
    v87 = *(v85 + 52);
    swift_allocObject();
    v88 = sub_1000EA6A0(v84);

    *(a1 + v25) = v88;
    v84 = v88;
  }

  swift_beginAccess();
  v89 = *(v84 + 120);
  *(v84 + 112) = v79;
  *(v84 + 120) = v81;

  v90 = *(a1 + v25);
  v91 = swift_isUniquelyReferenced_nonNull_native();
  v92 = *(a1 + v25);
  if ((v91 & 1) == 0)
  {
    v93 = type metadata accessor for RequestItem._StorageClass(0);
    v94 = *(v93 + 48);
    v95 = *(v93 + 52);
    swift_allocObject();
    v96 = sub_1000EA6A0(v92);

    *(a1 + v25) = v96;
    v92 = v96;
  }

  v97 = v121;
  swift_beginAccess();
  v98 = *(v92 + 56);
  *(v92 + 48) = v120;
  *(v92 + 56) = a6;

  if (v97 >= 3)
  {
    type metadata accessor for CPLCKResourceDownloadType(0);
    v124 = v97;
    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
    v99 = *(a1 + v25);
    v100 = swift_isUniquelyReferenced_nonNull_native();
    v101 = *(a1 + v25);
    if ((v100 & 1) == 0)
    {
      v102 = type metadata accessor for RequestItem._StorageClass(0);
      v103 = *(v102 + 48);
      v104 = *(v102 + 52);
      swift_allocObject();
      v105 = sub_1000EA6A0(v101);

      *(a1 + v25) = v105;
      v101 = v105;
    }

    swift_beginAccess();
    *(v101 + 96) = v97;
    *(v101 + 104) = 1;
    v106 = v122;
    if (CMTimeRange.isValid.getter())
    {
      sub_1000BCCF8(v106, v123);
      v107 = *(a1 + v25);
      if (swift_isUniquelyReferenced_nonNull_native())
      {

        v108 = *(a1 + v25);
      }

      else
      {
        v109 = *(a1 + v25);
        v110 = type metadata accessor for RequestItem._StorageClass(0);
        v111 = *(v110 + 48);
        v112 = *(v110 + 52);
        swift_allocObject();

        v108 = sub_1000EA6A0(v113);

        *(a1 + v25) = v108;
      }

      sub_1000CCC3C(v123, v14, type metadata accessor for CMTimeRange);
      (*(v116 + 56))(v14, 0, 1, v117);
      v114 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__timeRange;
      swift_beginAccess();
      sub_1000CC968(v14, v108 + v114, &qword_1002C0E88, &qword_1002450B8);
      swift_endAccess();
    }

    else
    {
    }
  }
}

void *sub_1000C6A74(void *result, uint64_t a2)
{
  if (result)
  {
    v3 = [result requestUUID];
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    swift_beginAccess();
    v7 = *(a2 + 16);
    if (v7)
    {
      v8 = *(a2 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a2 + 16) = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v7 = sub_1000C924C(0, *(v7 + 2) + 1, 1, v7);
        *(a2 + 16) = v7;
      }

      v11 = *(v7 + 2);
      v10 = *(v7 + 3);
      if (v11 >= v10 >> 1)
      {
        v7 = sub_1000C924C((v10 > 1), v11 + 1, 1, v7);
      }

      *(v7 + 2) = v11 + 1;
      v12 = &v7[16 * v11];
      *(v12 + 4) = v4;
      *(v12 + 5) = v6;
      *(a2 + 16) = v7;
      return swift_endAccess();
    }

    else
    {
      swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_1000C6B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void), uint64_t a6, void *a7, uint64_t a8, void *a9)
{
  v72 = a7;
  v73 = a8;
  v77 = a1;
  v13 = sub_1000BB130(&qword_1002C0DC8, &qword_100245040);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v67 = v65 - v15;
  v16 = sub_1000BB130(&qword_1002C0E30, &qword_100245080);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v71 = v65 - v18;
  v19 = type metadata accessor for Ckcode_RecordTransport();
  v68 = *(v19 - 8);
  v69 = v19;
  v20 = *(v68 + 64);
  __chkstk_darwin(v19);
  v70 = v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for ResponseItem(0);
  v74 = *(v22 - 8);
  v23 = *(v74 + 64);
  __chkstk_darwin(v22);
  v75 = v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for ResourceDownloadResponse(0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v76 = v65 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1000BB130(&qword_1002C0E38, &qword_100245088);
  v30 = *(*(v29 - 8) + 64);
  v31 = __chkstk_darwin(v29 - 8);
  v33 = v65 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v35 = v65 - v34;
  if (qword_1002C05F0 != -1)
  {
    swift_once();
  }

  if (byte_1002C0D28 == 1)
  {
    v65[1] = a6;
    v66 = a5;
    type metadata accessor for ResourceDownloadRequest(0);
    sub_1000CC224(&unk_1002C0E20, type metadata accessor for ResourceDownloadRequest);
    Message.debugDescription.getter();
    v36 = String._bridgeToObjectiveC()();

    sub_1000CC794(v77, v35, &qword_1002C0E38, &qword_100245088);
    if ((*(v26 + 48))(v35, 1, v25) == 1)
    {
      sub_1000CCDBC(v35, &qword_1002C0E38, &qword_100245088);
      v37 = 0;
      if (a2)
      {
LABEL_6:
        v38 = _convertErrorToNSError(_:)();
LABEL_9:
        swift_beginAccess();
        if (*(a4 + 16))
        {
          v39 = *(a4 + 16);

          v40.super.isa = Array._bridgeToObjectiveC()().super.isa;
        }

        else
        {
          v40.super.isa = 0;
        }

        a5 = v66;
        CPLTaskLogCKCodeRequestAndResponse();

        goto LABEL_13;
      }
    }

    else
    {
      sub_1000CC224(&qword_1002C0E50, type metadata accessor for ResourceDownloadResponse);
      Message.debugDescription.getter();
      sub_1000CCD5C(v35, type metadata accessor for ResourceDownloadResponse);
      v37 = String._bridgeToObjectiveC()();

      if (a2)
      {
        goto LABEL_6;
      }
    }

    v38 = 0;
    goto LABEL_9;
  }

LABEL_13:
  if (a2)
  {
    return a5(0, a2);
  }

  sub_1000CC794(v77, v33, &qword_1002C0E38, &qword_100245088);
  if ((*(v26 + 48))(v33, 1, v25) == 1)
  {
    sub_1000CCDBC(v33, &qword_1002C0E38, &qword_100245088);
    v42 = sub_1000BB7F8(0xD000000000000022, 0x8000000100201A50, 150);
    a5(0, v42);
  }

  v43 = v76;
  sub_1000CCC3C(v33, v76, type metadata accessor for ResourceDownloadResponse);
  v44 = *(v43 + 8);
  if (!v44)
  {
    if (!*(*v43 + 16))
    {
      v45 = sub_1000BB7F8(0xD00000000000001ELL, 0x8000000100201B00, 150);
      goto LABEL_19;
    }

    v46 = v75;
    sub_1000CCBD4(*v43 + ((*(v74 + 80) + 32) & ~*(v74 + 80)), v75, type metadata accessor for ResponseItem);
    if (*(v46 + 96))
    {
      v47 = sub_1000BB948(v46, v72, v73, a9);
    }

    else
    {
      v48 = v46 + *(v22 + 52);
      v49 = v71;
      sub_1000CC794(v48, v71, &qword_1002C0E30, &qword_100245080);
      v51 = v68;
      v50 = v69;
      v52 = *(v68 + 48);
      if (v52(v49, 1, v69) == 1)
      {
        Ckcode_RecordTransport.init()();
        if (v52(v49, 1, v50) != 1)
        {
          sub_1000CCDBC(v49, &qword_1002C0E30, &qword_100245080);
        }
      }

      else
      {
        (*(v51 + 32))(v70, v49, v50);
      }

      sub_1000CC8B0(0, &qword_1002C0E40, CKRecord_ptr);
      v53 = CKRecord.init(_:)();
      if (v53)
      {
        v54 = v53;
        sub_1000CC8B0(0, &qword_1002C0E48, CKAsset_ptr);
        CKRecordKeyValueSetting.subscript.getter();
        v55 = v78;
        if (v78)
        {
          v56 = [v78 fileURL];
          if (!v56)
          {
            v62 = type metadata accessor for URL();
            v63 = v67;
            (*(*(v62 - 8) + 56))(v67, 1, 1, v62);
            sub_1000CCDBC(v63, &qword_1002C0DC8, &qword_100245040);
            v64 = sub_1000BB7F8(0xD00000000000001DLL, 0x8000000100201AE0, 27);
            a5(0, v64);

            goto LABEL_24;
          }

          v57 = v67;
          v58 = v56;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v59 = type metadata accessor for URL();
          (*(*(v59 - 8) + 56))(v57, 0, 1, v59);
          sub_1000CCDBC(v57, &qword_1002C0DC8, &qword_100245040);
          v60 = v55;
          a5(v55, 0);
        }

        else
        {
          v61 = sub_1000BB7F8(0xD000000000000020, 0x8000000100201AB0, 27);
          a5(0, v61);
        }

LABEL_24:
        sub_1000CCD5C(v46, type metadata accessor for ResponseItem);
        return sub_1000CCD5C(v43, type metadata accessor for ResourceDownloadResponse);
      }

      v47 = sub_1000BB7F8(0xD000000000000022, 0x8000000100201A80, 25);
    }

    a5(0, v47);

    goto LABEL_24;
  }

  v45 = sub_1000BC70C(v44, *(v43 + 16), *(v43 + 24), *(v43 + 32), *(v43 + 40));
LABEL_19:
  a5(0, v45);

  return sub_1000CCD5C(v43, type metadata accessor for ResourceDownloadResponse);
}

void sub_1000C7688(uint64_t a1, uint64_t a2, uint64_t a3)
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
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_1000C76FC(uint64_t a1, void *a2, void (*a3)(void, void, id))
{
  v25 = a3;
  v5 = sub_1000BB130(&qword_1002C0E00, &qword_100245060);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v24 - v7;
  v9 = type metadata accessor for UploadResourcesResponse(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v24 - v15;
  sub_1000CC794(a1, v8, &qword_1002C0E00, &qword_100245060);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    v17 = v25;
    sub_1000CCDBC(v8, &qword_1002C0E00, &qword_100245060);
    if (a2)
    {
      v18 = a2;
    }

    else
    {
      v18 = sub_1000BB7F8(0xD000000000000038, 0x80000001002019D0, 150);
    }

    swift_errorRetain();
    v17(0, 0, v18);
  }

  else
  {
    sub_1000CCC3C(v8, v16, type metadata accessor for UploadResourcesResponse);
    sub_1000CCBD4(v16, v14, type metadata accessor for UploadResourcesResponse);
    v30 = String.init<A>(describing:)();
    v31 = v19;
    v28 = 0xD000000000000017;
    v29 = 0x8000000100201A10;
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_1000CC1A4();
    v20 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v22 = v21;

    v25(v20, v22, 0);

    return sub_1000CCD5C(v16, type metadata accessor for UploadResourcesResponse);
  }
}

id sub_1000C7A30(int a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  v8 = _Block_copy(aBlock);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a6(a5, v9);

  return v10;
}

void sub_1000C7AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
    if (a3)
    {
LABEL_3:
      v7 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

id CPLCKResourceDownloadOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CPLCKResourceDownloadOperation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::String __swiftcall CKOperation.cplOperationClassDescription()()
{
  swift_getObjectType();
  sub_1000BB130(&qword_1002C0D30, &unk_100244FF0);
  v0 = String.init<A>(describing:)();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

unint64_t sub_1000C7D44@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UploadResource(0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = &_swiftEmptyArrayStorage;
  v9 = a2 + *(v5 + 40);
  UnknownStorage.init()();
  *v8 = 0;
  v8[8] = 1;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0xE000000000000000;
  *(v8 + 4) = 0;
  v8[40] = 1;
  *(v8 + 6) = &_swiftEmptyArrayStorage;
  v10 = &v8[*(v5 + 40)];
  UnknownStorage.init()();
  sub_1000CCE1C(v8, a2, type metadata accessor for UploadResource);
  result = [a1 changeType];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  *a2 = result;
  *(a2 + 8) = result < 3;
  v12 = [a1 uti];
  if (v12)
  {
    v13 = v12;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = *(a2 + 24);

    *(a2 + 16) = v14;
    *(a2 + 24) = v16;
  }

  result = [a1 sourceResourceType];
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_27;
  }

  sub_1000EB1A4();
  if ((v19 & 0x100) == 0)
  {
    *(a2 + 32) = v18;
    *(a2 + 40) = v19 & 1;
  }

  v20 = [a1 derivativeTypes];
  if (v20)
  {
    v21 = v20;
    sub_1000CC8B0(0, &qword_1002C0EA0, NSNumber_ptr);
    v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v22 >> 62))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v22 = &_swiftEmptyArrayStorage;
    if (!(&_swiftEmptyArrayStorage >> 62))
    {
LABEL_9:
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v23)
      {
        goto LABEL_10;
      }

LABEL_24:

      v25 = &_swiftEmptyArrayStorage;
LABEL_25:
      v36 = *(a2 + 48);

      *(a2 + 48) = v25;
      return result;
    }
  }

  v23 = _CocoaArrayWrapper.endIndex.getter();
  if (!v23)
  {
    goto LABEL_24;
  }

LABEL_10:
  v40 = &_swiftEmptyArrayStorage;
  result = sub_1001189E0(0, v23 & ~(v23 >> 63), 0);
  if ((v23 & 0x8000000000000000) == 0)
  {
    v38 = a1;
    v39 = a2;
    v24 = 0;
    v25 = v40;
    do
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v26 = *(v22 + 8 * v24 + 32);
      }

      v27 = v26;
      [v26 integerValue];

      sub_1000EB1A4();
      v30 = HIBYTE(v29) & 1;
      if ((v29 & 0x100) != 0)
      {
        v31 = 0;
      }

      else
      {
        v31 = v28;
      }

      v40 = v25;
      v33 = v25[2];
      v32 = v25[3];
      if (v33 >= v32 >> 1)
      {
        v35 = v29;
        sub_1001189E0((v32 > 1), v33 + 1, 1);
        LOBYTE(v29) = v35;
        v25 = v40;
      }

      ++v24;
      v25[2] = v33 + 1;
      v34 = &v25[2 * v33];
      v34[4] = v31;
      *(v34 + 40) = (v29 | v30) & 1;
    }

    while (v23 != v24);

    a2 = v39;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1000C8080(Swift::UInt *a1, Swift::UInt a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_1000C8778(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1000C8178(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1000C88D4(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1000C82C8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BB130(&qword_1002C0EC0, &qword_1002450D8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
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
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v18);
      result = Hasher._finalize()();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1000C8518(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BB130(&qword_1002C0F28, &qword_100245120);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
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
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
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

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

void sub_1000C8778(Swift::UInt a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1000C82C8(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_1000C8A54();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1000C8CF0(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v10 = Hasher._finalize()();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    v13 = v10 & ~v11;
    type metadata accessor for CPLResourceType(0);
    a2 = v13;
    while (*(*(v8 + 48) + 8 * a2) != a1)
    {
      a2 = (a2 + 1) & v12;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

Swift::Int sub_1000C88D4(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1000C8518(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1000C8B94();
      goto LABEL_16;
    }

    sub_1000C8F10(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_1000C8A54()
{
  v1 = v0;
  sub_1000BB130(&qword_1002C0EC0, &qword_1002450D8);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_1000C8B94()
{
  v1 = v0;
  sub_1000BB130(&qword_1002C0F28, &qword_100245120);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

uint64_t sub_1000C8CF0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BB130(&qword_1002C0EC0, &qword_1002450D8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
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
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v17);
      result = Hasher._finalize()();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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

uint64_t sub_1000C8F10(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BB130(&qword_1002C0F28, &qword_100245120);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
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
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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

char *sub_1000C9148(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BB130(&qword_1002C0EC8, &qword_1002450E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1000C924C(char *result, int64_t a2, char a3, char *a4)
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

char *sub_1000C9358(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BB130(&qword_1002C0F20, &qword_100245118);
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

size_t sub_1000C9458(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

uint64_t sub_1000C9634(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_10011704C(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v14 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1001182A4();
    v10 = v14;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = *(*(v10 + 56) + 8 * v7);
  sub_1000C9774(v7, v10);
  *v3 = v10;
  return v12;
}

uint64_t sub_1000C96CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_1001170C4(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v14 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100118410();
    v9 = v14;
  }

  v10 = (*(v9 + 56) + 16 * v6);
  v11 = *v10;
  v12 = v10[1];
  sub_1000C9924(v6, v9);
  *v2 = v9;
  return v11;
}

uint64_t sub_1000C9774(uint64_t result, uint64_t a2)
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
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
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

void sub_1000C9924(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = NSObject._rawHashValue(seed:)(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 16 * v3);
          v20 = (v18 + 16 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

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
}

uint64_t sub_1000C9AB0(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for CPLResourceType(0);
  sub_1000CC224(&qword_1002C0EB8, type metadata accessor for CPLResourceType);
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1000C8080(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

Swift::Int sub_1000C9B5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000BB130(&qword_1002C0EC0, &qword_1002450D8);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      v11 = *(v3 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 8 * v14) != v10)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 8 * v14) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void sub_1000C9C98(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v134 = a5;
  v133 = a4;
  v126 = a3;
  v131 = type metadata accessor for ResourceDownloadRequest(0);
  v135 = *(v131 - 8);
  v14 = *(v135 + 64);
  v15 = __chkstk_darwin(v131);
  v137 = v122 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = v16;
  __chkstk_darwin(v15);
  v149 = v122 - v17;
  v125 = type metadata accessor for RequestItem(0);
  v124 = *(v125 - 8);
  v18 = *(v124 + 64);
  v19 = __chkstk_darwin(v125);
  v129 = v122 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v128 = v122 - v21;
  v22 = a1 & 0xC000000000000001;
  v143 = a7;
  v144 = a1;
  v142 = a6;
  v138 = a8;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v23 = __CocoaDictionary.count.getter();
  }

  else
  {
    v23 = *(a1 + 16);
  }

  v24 = swift_allocObject();
  v25 = sub_1000CC8B0(0, &qword_1002C0DD0, CKRecordID_ptr);
  sub_1000CC0F0();
  v26 = Dictionary.init(minimumCapacity:)();
  v148 = v24;
  *(v24 + 16) = v26;
  v27 = swift_allocObject();
  v139 = v25;
  v28 = Dictionary.init(minimumCapacity:)();
  v147 = v27;
  *(v27 + 16) = v28;
  v29 = swift_allocObject();
  type metadata accessor for ResponseItem(0);
  v30 = Dictionary.init(minimumCapacity:)();
  v141 = v29;
  *(v29 + 16) = v30;
  v127 = sub_1000C9458(0, v23 & ~(v23 >> 63), 0, &_swiftEmptyArrayStorage, &qword_1002C0E78, &qword_1002450B0, type metadata accessor for RequestItem);
  v157 = v127;
  v31 = sub_1001A8CE0(a2);
  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v145 = v33;
  v146 = v32;

  v156 = Set.init(minimumCapacity:)();
  if (v22)
  {
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v38 = -1 << *(v144 + 32);
    v35 = ~v38;
    v34 = v144 + 64;
    v39 = -v38;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    else
    {
      v40 = -1;
    }

    v36 = v40 & *(v144 + 64);
    v37 = v144;
  }

  v132 = a9;

  v41 = 0;
  v140 = 0;
  v130 = v35;
  v42 = (v35 + 64) >> 6;
  v151 = v37;
  v152 = v34;
  v150 = v42;
LABEL_11:
  v43 = v41;
  if ((v37 & 0x8000000000000000) != 0)
  {
    while (1)
    {
      v51 = __CocoaDictionary.Iterator.next()();
      if (!v51)
      {
        break;
      }

      v53 = v52;
      v154 = v51;
      swift_dynamicCast();
      v49 = aBlock[0];
      v154 = v53;
      sub_1000CC8B0(0, &qword_1002C0DD8, CPLEngineResourceDownloadTask_ptr);
      swift_dynamicCast();
      v50 = aBlock[0];
      v41 = v43;
      v46 = v36;
      if (!v49)
      {
        break;
      }

LABEL_20:
      v153 = v46;
      v54 = v50;
      v35 = v49;
      v55 = [v54 taskIdentifier];
      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;

      v59 = sub_1000BCEE4(v56, v58, &v156);
      v61 = v60;

      v62 = [v54 cloudResource];
      if (!v62)
      {
        goto LABEL_36;
      }

      v63 = v62;
      v64 = [v62 identity];
      if (!v64)
      {
        goto LABEL_37;
      }

      v65 = v64;
      v66 = [v64 fingerPrint];

      if (!v66)
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        return;
      }

      v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v69 = v68;

      v70 = [v54 cloudRecord];
      if (v70)
      {

        v71 = v35;

        v72 = v148;
        v73 = *(v148 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v73;
        *(v72 + 16) = 0x8000000000000000;
        sub_100117F64(v59, v61, v71, isUniquelyReferenced_nonNull_native);

        *(v72 + 16) = aBlock[0];
        v75 = v71;

        v76 = v147;
        v77 = *(v147 + 16);
        v78 = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v77;
        *(v76 + 16) = 0x8000000000000000;
        sub_100117DEC(v75, v59, v61, v78);

        v122[1] = v122;
        *(v76 + 16) = aBlock[0];
        __chkstk_darwin(v79);
        v122[-12] = v59;
        v122[-11] = v61;
        v123 = v75;
        v122[-10] = v75;
        v122[-9] = v67;
        v122[-8] = v69;
        LOBYTE(v122[-7]) = 1;
        v81 = v145;
        v80 = v146;
        v122[-6] = v54;
        v122[-5] = v80;
        v82 = v126;
        v122[-4] = v81;
        v122[-3] = v82;
        v122[-2] = v63;
        sub_1000CC224(&qword_1002C0E80, type metadata accessor for RequestItem);
        v83 = v128;
        v84 = v140;
        static Message.with(_:)();
        v140 = v84;

        sub_1000CCBD4(v83, v129, type metadata accessor for RequestItem);
        v85 = v127;
        v87 = v127[2];
        v86 = v127[3];
        v35 = v87 + 1;
        if (v87 >= v86 >> 1)
        {
          v85 = sub_1000C9458(v86 > 1, v87 + 1, 1, v127, &qword_1002C0E78, &qword_1002450B0, type metadata accessor for RequestItem);
        }

        v34 = v152;
        v42 = v150;
        v88 = v123;

        sub_1000CCD5C(v128, type metadata accessor for RequestItem);
        v85[2] = v35;
        sub_1000CCC3C(v129, v85 + ((*(v124 + 80) + 32) & ~*(v124 + 80)) + *(v124 + 72) * v87, type metadata accessor for RequestItem);
        v127 = v85;
        v157 = v85;
        v37 = v151;
        v36 = v153;
        goto LABEL_11;
      }

      v43 = v41;
      v34 = v152;
      v36 = v153;
      v42 = v150;
      v37 = v151;
      if ((v151 & 0x8000000000000000) == 0)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v44 = v43;
    v45 = v36;
    v41 = v43;
    if (!v36)
    {
      while (1)
      {
        v41 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          break;
        }

        if (v41 >= v42)
        {
          goto LABEL_29;
        }

        v45 = *(v34 + 8 * v41);
        ++v44;
        if (v45)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_34;
    }

LABEL_16:
    v46 = (v45 - 1) & v45;
    v47 = (v41 << 9) | (8 * __clz(__rbit64(v45)));
    v48 = *(*(v37 + 56) + v47);
    v49 = *(*(v37 + 48) + v47);
    v50 = v48;
    if (v49)
    {
      goto LABEL_20;
    }
  }

LABEL_29:
  v89 = sub_1000CC9D0();
  __chkstk_darwin(v89);
  v122[-2] = &v157;
  sub_1000CC224(&unk_1002C0E20, type metadata accessor for ResourceDownloadRequest);
  v90 = v149;
  static Message.with(_:)();

  v35 = sub_1000BD19C(v90);
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  if (qword_1002C05F0 != -1)
  {
LABEL_34:
    swift_once();
  }

  if (byte_1002C0D28 == 1)
  {
    *(v43 + 16) = &_swiftEmptyArrayStorage;

    aBlock[4] = sub_1000CCEA0;
    aBlock[5] = v43;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000BE260;
    aBlock[3] = &unk_100278788;
    v91 = _Block_copy(aBlock);
    v92 = v35;

    [v92 setRequestCompletedBlock:v91];
    _Block_release(v91);
  }

  v93 = swift_allocObject();
  v94 = v147;
  v95 = v148;
  v96 = v142;
  v93[2] = v147;
  v93[3] = v96;
  v97 = v96;
  v98 = v143;
  v100 = v145;
  v99 = v146;
  v93[4] = v143;
  v93[5] = v99;
  v93[6] = v100;
  v93[7] = v95;
  v101 = v141;
  v93[8] = v141;
  v102 = v94;

  dispatch thunk of CodeOperation.incompleteResponsePreviewBlock.setter();
  v103 = swift_allocObject();
  v104 = v133;
  v103[2] = v95;
  v103[3] = v104;
  v103[4] = v134;

  v153 = v35;
  dispatch thunk of CodeOperation.perRecordProgressBlock.setter();
  v105 = swift_allocObject();
  v105[2] = v95;
  v105[3] = v102;
  v105[4] = v97;
  v105[5] = v98;
  v105[6] = v101;
  v105[7] = v144;

  dispatch thunk of CodeOperation.perRecordCompletionBlock.setter();
  v106 = v137;
  sub_1000CCBD4(v149, v137, type metadata accessor for ResourceDownloadRequest);
  v107 = (*(v135 + 80) + 16) & ~*(v135 + 80);
  v108 = (v136 + v107 + 7) & 0xFFFFFFFFFFFFFFF8;
  v109 = v43;
  v110 = (v108 + 15) & 0xFFFFFFFFFFFFFFF8;
  v111 = (v110 + 23) & 0xFFFFFFFFFFFFFFF8;
  v112 = (v111 + 15) & 0xFFFFFFFFFFFFFFF8;
  v113 = (v112 + 15) & 0xFFFFFFFFFFFFFFF8;
  v114 = swift_allocObject();
  sub_1000CCC3C(v106, v114 + v107, type metadata accessor for ResourceDownloadRequest);
  *(v114 + v108) = v109;
  v115 = (v114 + v110);
  v116 = v132;
  *v115 = v138;
  v115[1] = v116;
  v117 = v147;
  *(v114 + v111) = v148;
  *(v114 + v112) = v117;
  v118 = (v114 + v113);
  v119 = v145;
  *v118 = v146;
  v118[1] = v119;
  v120 = (v114 + ((v113 + 23) & 0xFFFFFFFFFFFFFFF8));
  v121 = v143;
  *v120 = v142;
  v120[1] = v121;

  dispatch thunk of CodeOperation.codeOperationCompletionBlock.setter();
  sub_1000CCD5C(v149, type metadata accessor for ResourceDownloadRequest);
}

void *sub_1000CAA5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000BB130(&qword_1002C0F58, &unk_100245140);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v29 = v7;
      String.hash(into:)();
      v9 = Hasher._finalize()();

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
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;
        if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

void *sub_1000CAC50(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v51 = a8;
  v53 = a7;
  v59 = a6;
  v56 = a5;
  v50 = a4;
  v52 = sub_1000BB130(&qword_1002C0ED0, &qword_1002450E8);
  v13 = *(v52 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v52);
  v16 = &v50 - v15;
  v17 = sub_1000BB130(&qword_1002C0ED8, &qword_1002450F0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v50 - v19;
  v21 = type metadata accessor for ResourceStreamRequest(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v54 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v50 - v25;
  v57 = a1;
  v58 = a3;
  v60 = a1;
  v61 = a2;
  v55 = a2;
  v62 = a3;
  v63 = v50;
  v64 = v51;
  v65 = v53;
  sub_1000CC224(&qword_1002C0EE0, type metadata accessor for ResourceStreamRequest);
  static Message.with(_:)();
  sub_1000CCBD4(v26, v20, type metadata accessor for ResourceStreamRequest);
  v53 = v22;
  (*(v22 + 56))(v20, 0, 1, v21);
  (*(v13 + 104))(v16, enum case for CodeOperation.DestinationServer.default<A, B>(_:), v52);
  v27 = objc_allocWithZone(sub_1000BB130(&qword_1002C0EE8, &qword_1002450F8));
  v28 = CodeOperation.init(service:functionName:request:destinationServer:)();
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  if (qword_1002C05F0 != -1)
  {
    swift_once();
  }

  v52 = a10;
  v51 = a9;
  if (byte_1002C0D28 == 1)
  {
    *(v29 + 16) = &_swiftEmptyArrayStorage;

    aBlock[4] = sub_1000CCEA0;
    aBlock[5] = v29;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000BE260;
    aBlock[3] = &unk_100278648;
    v30 = _Block_copy(aBlock);
    v31 = v28;

    [v31 setRequestCompletedBlock:v30];
    _Block_release(v30);
  }

  v32 = v54;
  sub_1000CCBD4(v26, v54, type metadata accessor for ResourceStreamRequest);
  v33 = (v53[80] + 16) & ~v53[80];
  v34 = (v23 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
  v53 = v26;
  v38 = v28;
  v39 = swift_allocObject();
  sub_1000CCC3C(v32, v39 + v33, type metadata accessor for ResourceStreamRequest);
  *(v39 + v34) = v29;
  v40 = (v39 + v35);
  v41 = v52;
  *v40 = v51;
  v40[1] = v41;
  v43 = v57;
  v42 = v58;
  *(v39 + v36) = v57;
  v44 = (v39 + v37);
  v45 = v56;
  *v44 = v55;
  v44[1] = v42;
  v46 = (v39 + ((v37 + 23) & 0xFFFFFFFFFFFFFFF8));
  v47 = v59;
  *v46 = v45;
  v46[1] = v47;

  v48 = v43;

  dispatch thunk of CodeOperation.codeOperationCompletionBlock.setter();
  sub_1000CCD5C(v53, type metadata accessor for ResourceStreamRequest);

  return v38;
}

void *_s22CloudKitImplementation30CPLCKResourceDownloadOperationC08inMemoryeF03for8resource6record4keys12downloadType15completionBlockSo010CKDatabaseF0CSo10CKRecordIDC_So11CPLResourceCSo20CPLPlaceholderRecordCSo08CPLCloudB12ResourceKeysCSo0deN0Vy10Foundation4DataVSg_SSSgSbs5Error_pSgtctFZ_0(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v53 = a6;
  v13 = type metadata accessor for ResourceDownloadRequest(0);
  v48 = *(v13 - 8);
  v14 = *(v48 + 64);
  v15 = __chkstk_darwin(v13);
  v49 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v44 - v16;
  v50 = a1;
  v51 = a4;
  v54 = a1;
  v55 = a2;
  v56 = a3;
  v57 = a4;
  v58 = a5;
  sub_1000CC224(&unk_1002C0E20, type metadata accessor for ResourceDownloadRequest);
  static Message.with(_:)();
  v52 = v17;
  v18 = sub_1000BD19C(v17);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  if (qword_1002C05F0 != -1)
  {
    swift_once();
  }

  if (byte_1002C0D28 == 1)
  {
    *(v19 + 16) = &_swiftEmptyArrayStorage;

    aBlock[4] = sub_1000CCEA0;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000BE260;
    aBlock[3] = &unk_1002785F8;
    v20 = _Block_copy(aBlock);
    v21 = v18;

    [v21 setRequestCompletedBlock:v20];
    _Block_release(v20);
  }

  dispatch thunk of CodeOperation.shouldFetchAssetContentInMemory.setter();
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  v23 = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  v25 = swift_allocObject();
  *(v25 + 16) = 0;

  v46 = v18;
  dispatch thunk of CodeOperation.incompleteResponsePreviewBlock.setter();
  v26 = swift_allocObject();
  v45 = v23;
  v26[2] = v23;
  v26[3] = v24;
  v44 = v24;
  v26[4] = v53;
  v26[5] = a7;
  v26[6] = a2;
  v26[7] = v25;
  v47 = v25;

  v27 = a2;
  dispatch thunk of CodeOperation.perRecordCompletionBlock.setter();
  v28 = v49;
  sub_1000CCBD4(v52, v49, type metadata accessor for ResourceDownloadRequest);
  v29 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v30 = (v14 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = v19;
  v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = a7;
  v33 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 23) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  sub_1000CCC3C(v28, v36 + v29, type metadata accessor for ResourceDownloadRequest);
  *(v36 + v30) = v48;
  *(v36 + v31) = v45;
  v37 = (v36 + v33);
  *v37 = v53;
  v37[1] = v32;
  *(v36 + v34) = v44;
  v39 = v50;
  v38 = v51;
  *(v36 + v35) = v50;
  *(v36 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8)) = v38;

  v40 = v39;
  v41 = v38;
  v42 = v46;
  dispatch thunk of CodeOperation.codeOperationCompletionBlock.setter();
  sub_1000CCD5C(v52, type metadata accessor for ResourceDownloadRequest);

  return v42;
}