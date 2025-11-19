uint64_t sub_100148E28(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 28);
  sub_10008875C(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t PBPropertyBundle.propertyValues.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t PBPropertyBundle.deletedPropertyValueTimestamps.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t (*PBPropertyTimeSlice.startOfTimeSlice.modify(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100084528(&qword_1002705B8, &unk_1001F2BE0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = sub_1001C4EE8();
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for PBPropertyTimeSlice(0) + 24);
  *(v4 + 12) = v14;
  sub_10009ADF0(v1 + v14, v7, &qword_1002705B8, &unk_1001F2BE0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    sub_1001C4ED8();
    if (v15(v7, 1, v8) != 1)
    {
      sub_10008875C(v7, &qword_1002705B8, &unk_1001F2BE0);
    }
  }

  else
  {
    (*(v10 + 32))(v13, v7, v8);
  }

  return sub_1001534EC;
}

void sub_1001491C0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v7 + 16))((*a1)[4], v5, v6);
    sub_10008875C(v9 + v3, &qword_1002705B8, &unk_1001F2BE0);
    (*(v7 + 32))(v9 + v3, v4, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_10008875C(v9 + v3, &qword_1002705B8, &unk_1001F2BE0);
    (*(v7 + 32))(v9 + v3, v5, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

Swift::Void __swiftcall PBPropertyTimeSlice.clearStartOfTimeSlice()()
{
  v1 = *(type metadata accessor for PBPropertyTimeSlice(0) + 24);
  sub_10008875C(v0 + v1, &qword_1002705B8, &unk_1001F2BE0);
  v2 = sub_1001C4EE8();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_10014942C()
{
  v0 = sub_1001C5108();
  sub_100088824(v0, static MarkedAsFinishedMechanism._protobuf_nameMap);
  sub_100083274(v0, static MarkedAsFinishedMechanism._protobuf_nameMap);
  sub_100084528(&qword_100273100, &qword_1001F6A80);
  v1 = (sub_100084528(&qword_100273108, &qword_1001F6A88) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001F0680;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Unknown";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_1001C50D8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Manually";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "Automatically";
  *(v11 + 8) = 13;
  *(v11 + 16) = 2;
  v9();
  return sub_1001C50E8();
}

uint64_t sub_1001496D0()
{
  v0 = sub_1001C5108();
  sub_100088824(v0, static PBPropertyConfiguration._protobuf_nameMap);
  sub_100083274(v0, static PBPropertyConfiguration._protobuf_nameMap);
  sub_100084528(&qword_100273100, &qword_1001F6A80);
  v1 = (sub_100084528(&qword_100273108, &qword_1001F6A88) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001F0CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "ageToExpire";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_1001C50D8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "countLimit";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "eventName";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "recordType";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return sub_1001C50E8();
}

uint64_t PBPropertyConfiguration.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1001C4F78();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        sub_1001C4FE8();
      }

      else if (result == 4)
      {
        goto LABEL_2;
      }
    }

    else if (result == 1 || result == 2)
    {
LABEL_2:
      sub_1001C4FC8();
    }
  }
}

uint64_t PBPropertyConfiguration.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_1001C5098(), !v1))
  {
    if (!v0[1] || (result = sub_1001C5098(), !v1))
    {
      v3 = v0[3];
      v4 = HIBYTE(v3) & 0xF;
      if ((v3 & 0x2000000000000000) == 0)
      {
        v4 = v0[2] & 0xFFFFFFFFFFFFLL;
      }

      if (!v4 || (result = sub_1001C50A8(), !v1))
      {
        if (!v0[4] || (result = sub_1001C5098(), !v1))
        {
          v5 = v0 + *(type metadata accessor for PBPropertyConfiguration(0) + 32);
          return sub_1001C4EF8();
        }
      }
    }
  }

  return result;
}

uint64_t sub_100149B54@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = 0;
  v2 = a2 + *(a1 + 32);
  return _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
}

uint64_t sub_100149B84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_1001C4F18();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100149BF8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_1001C4F18();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_100149C6C(uint64_t a1, uint64_t a2))()
{
  result = MarkedAsFinishedMechanism.rawValue.getter;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t sub_100149CC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100151F14(&qword_1002730F0, type metadata accessor for PBPropertyConfiguration);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100149D60(uint64_t a1)
{
  v2 = sub_100151F14(&qword_1002729D8, type metadata accessor for PBPropertyConfiguration);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100149DCC()
{
  sub_100151F14(&qword_1002729D8, type metadata accessor for PBPropertyConfiguration);

  return sub_1001C5058();
}

uint64_t sub_100149E74()
{
  v0 = sub_1001C5108();
  sub_100088824(v0, static PBPropertyNoParams._protobuf_nameMap);
  sub_100083274(v0, static PBPropertyNoParams._protobuf_nameMap);
  return sub_1001C50F8();
}

uint64_t PBPropertyNoParams.decodeMessage<A>(decoder:)()
{
  do
  {
    result = sub_1001C4F78();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t sub_100149FDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100151F14(&qword_1002730E8, type metadata accessor for PBPropertyNoParams);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10014A07C(uint64_t a1)
{
  v2 = sub_100151F14(&qword_1002729F0, type metadata accessor for PBPropertyNoParams);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10014A0E8()
{
  sub_100151F14(&qword_1002729F0, type metadata accessor for PBPropertyNoParams);

  return sub_1001C5058();
}

uint64_t PBPropertySingleFloatParam.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1001C4F78();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1001C4FB8();
    }
  }

  return result;
}

uint64_t PBPropertySingleFloatParam.traverse<A>(visitor:)()
{
  if (*v0 == 0.0 || (result = sub_1001C5088(), !v1))
  {
    v2 = v0 + *(type metadata accessor for PBPropertySingleFloatParam(0) + 20);
    return sub_1001C4EF8();
  }

  return result;
}

uint64_t sub_10014A33C@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  *a2 = 0;
  v2 = a2 + *(a1 + 20);
  return _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
}

uint64_t (*sub_10014A360(uint64_t a1, uint64_t a2))()
{
  result = MarkedAsFinishedMechanism.rawValue.getter;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_10014A3B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100151F14(&qword_1002730E0, type metadata accessor for PBPropertySingleFloatParam);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10014A454(uint64_t a1)
{
  v2 = sub_100151F14(&qword_100272A08, type metadata accessor for PBPropertySingleFloatParam);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10014A4C0()
{
  sub_100151F14(&qword_100272A08, type metadata accessor for PBPropertySingleFloatParam);

  return sub_1001C5058();
}

uint64_t sub_10014A53C(float *a1, float *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a3 + 20);
  sub_1001C4F18();
  sub_100151F14(&qword_100272938, &type metadata accessor for UnknownStorage);
  return sub_1001C5FD8() & 1;
}

uint64_t sub_10014A608()
{
  v0 = sub_1001C5108();
  sub_100088824(v0, static PBPropertyBookReadParams._protobuf_nameMap);
  sub_100083274(v0, static PBPropertyBookReadParams._protobuf_nameMap);
  sub_100084528(&qword_100273100, &qword_1001F6A80);
  v1 = (sub_100084528(&qword_100273108, &qword_1001F6A88) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001F0660;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "isSample";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_1001C50D8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "progress";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_1001C50E8();
}

uint64_t PBPropertyBookReadParams.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1001C4F78();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1001C4F98();
    }

    else if (result == 2)
    {
      sub_1001C4FB8();
    }
  }

  return result;
}

uint64_t PBPropertyBookReadParams.traverse<A>(visitor:)()
{
  if (*v0 != 1 || (result = sub_1001C5068(), !v1))
  {
    if (*(v0 + 4) == 0.0 || (result = sub_1001C5088(), !v1))
    {
      v3 = v0 + *(type metadata accessor for PBPropertyBookReadParams(0) + 24);
      return sub_1001C4EF8();
    }
  }

  return result;
}

uint64_t sub_10014A9A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 4) = 0;
  v2 = a2 + *(a1 + 24);
  return _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
}

uint64_t (*sub_10014A9C8(uint64_t a1, uint64_t a2))()
{
  result = MarkedAsFinishedMechanism.rawValue.getter;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_10014AA1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100151F14(&qword_1002730D8, type metadata accessor for PBPropertyBookReadParams);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10014AABC(uint64_t a1)
{
  v2 = sub_100151F14(&qword_100272A20, type metadata accessor for PBPropertyBookReadParams);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10014AB28()
{
  sub_100151F14(&qword_100272A20, type metadata accessor for PBPropertyBookReadParams);

  return sub_1001C5058();
}

uint64_t sub_10014ABA4(float *a1, float *a2, uint64_t a3)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v3 = *(a3 + 24);
  sub_1001C4F18();
  sub_100151F14(&qword_100272938, &type metadata accessor for UnknownStorage);
  return sub_1001C5FD8() & 1;
}

uint64_t PBPropertyBookImpressionParam.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1001C4F78();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1001C4F98();
    }
  }

  return result;
}

uint64_t PBPropertyBookImpressionParam.traverse<A>(visitor:)()
{
  if (*v0 != 1 || (result = sub_1001C5068(), !v1))
  {
    v3 = &v0[*(type metadata accessor for PBPropertyBookImpressionParam(0) + 20)];
    return sub_1001C4EF8();
  }

  return result;
}

uint64_t sub_10014AE2C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = 0;
  v2 = &a2[*(a1 + 20)];
  return _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
}

uint64_t sub_10014AE80(uint64_t a1, uint64_t a2)
{
  v4 = sub_100151F14(&qword_1002730D0, type metadata accessor for PBPropertyBookImpressionParam);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10014AF20(uint64_t a1)
{
  v2 = sub_100151F14(&qword_100272A38, type metadata accessor for PBPropertyBookImpressionParam);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10014AF8C()
{
  sub_100151F14(&qword_100272A38, type metadata accessor for PBPropertyBookImpressionParam);

  return sub_1001C5058();
}

uint64_t sub_10014B008(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  sub_1001C4F18();
  sub_100151F14(&qword_100272938, &type metadata accessor for UnknownStorage);
  return sub_1001C5FD8() & 1;
}

uint64_t sub_10014B0EC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1001C5108();
  sub_100088824(v7, a2);
  sub_100083274(v7, a2);
  sub_100084528(&qword_100273100, &qword_1001F6A80);
  v8 = (sub_100084528(&qword_100273108, &qword_1001F6A88) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1001F0670;
  v12 = v11 + v10 + v8[14];
  *(v11 + v10) = 1;
  *v12 = a3;
  *(v12 + 8) = a4;
  *(v12 + 16) = 2;
  v13 = enum case for _NameMap.NameDescription.same(_:);
  v14 = sub_1001C50D8();
  (*(*(v14 - 8) + 104))(v12, v13, v14);
  return sub_1001C50E8();
}

uint64_t PBPropertyMarkedAsFinishedParam.decodeMessage<A>(decoder:)()
{
  result = sub_1001C4F78();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_100151F5C();
        sub_1001C4FA8();
      }

      result = sub_1001C4F78();
    }
  }

  return result;
}

uint64_t PBPropertyMarkedAsFinishedParam.traverse<A>(visitor:)()
{
  if (!*v0 || (v4 = *v0, v5 = *(v0 + 8), sub_100151F5C(), result = sub_1001C5078(), !v1))
  {
    v3 = v0 + *(type metadata accessor for PBPropertyMarkedAsFinishedParam(0) + 20);
    return sub_1001C4EF8();
  }

  return result;
}

uint64_t sub_10014B43C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  v2 = a2 + *(a1 + 20);
  return _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
}

uint64_t sub_10014B498(uint64_t a1, uint64_t a2)
{
  v4 = sub_100151F14(&qword_1002730C8, type metadata accessor for PBPropertyMarkedAsFinishedParam);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10014B538(uint64_t a1)
{
  v2 = sub_100151F14(&qword_100272A50, type metadata accessor for PBPropertyMarkedAsFinishedParam);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10014B5A4()
{
  sub_100151F14(&qword_100272A50, type metadata accessor for PBPropertyMarkedAsFinishedParam);

  return sub_1001C5058();
}

uint64_t sub_10014B650()
{
  v0 = sub_1001C5108();
  sub_100088824(v0, static PBPropertyValue._protobuf_nameMap);
  sub_100083274(v0, static PBPropertyValue._protobuf_nameMap);
  sub_100084528(&qword_100273100, &qword_1001F6A80);
  v1 = (sub_100084528(&qword_100273108, &qword_1001F6A88) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001F5AF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "createdAt";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_1001C50D8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "identifier";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "assetID";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "noParams";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "floatParam";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "bookReadParams";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "markedAsFinishedParam";
  *(v20 + 1) = 21;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "bookImpressionParam";
  *(v22 + 1) = 19;
  v22[16] = 2;
  v9();
  return sub_1001C50E8();
}

uint64_t PBPropertyValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1001C4F78();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 4)
    {
      if (result > 6)
      {
        if (result == 7)
        {
          sub_10014CD8C(v5, a1, a2, a3);
        }

        else if (result == 8)
        {
          sub_10014D354(v5, a1, a2, a3);
        }
      }

      else if (result == 5)
      {
        sub_10014C1FC(v5, a1, a2, a3);
      }

      else
      {
        sub_10014C7C4(v5, a1, a2, a3);
      }
    }

    else if (result > 2)
    {
      if (result == 3)
      {
        sub_1001C4FC8();
      }

      else
      {
        sub_10014BC34(v5, a1, a2, a3);
      }
    }

    else if (result == 1)
    {
      sub_10014BB80();
    }

    else if (result == 2)
    {
      v11 = *(type metadata accessor for PBPropertyValue(0) + 32);
      sub_1001C4FD8();
    }
  }

  return result;
}

uint64_t sub_10014BB80()
{
  v0 = *(type metadata accessor for PBPropertyValue(0) + 28);
  sub_1001C4EE8();
  sub_100151F14(&qword_100272988, &type metadata accessor for Google_Protobuf_Timestamp);
  return sub_1001C5008();
}

uint64_t sub_10014BC34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v54 = a2;
  v55 = a3;
  v5 = type metadata accessor for PBPropertyNoParams(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v49 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v48 = &v44 - v10;
  v11 = sub_100084528(&qword_1002705B0, &qword_1001F2BD8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v44 - v13;
  v15 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v44 - v21;
  v23 = sub_100084528(&qword_100273120, &qword_1001F6AA0);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v51 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v44 - v27;
  v50 = v6;
  v29 = *(v6 + 56);
  v53 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v44 - v27, 1, 1, v30);
  v32 = *(type metadata accessor for PBPropertyValue(0) + 20);
  v47 = a1;
  v45 = v32;
  sub_10009ADF0(a1 + v32, v14, &qword_1002705B0, &qword_1001F2BD8);
  v46 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_10008875C(v14, &qword_1002705B0, &qword_1001F2BD8);
    v34 = v15;
    v35 = v53;
  }

  else
  {
    sub_100146E08(v14, v22, type metadata accessor for PBPropertyValue.OneOf_Params);
    sub_100146E08(v22, v20, type metadata accessor for PBPropertyValue.OneOf_Params);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_100147104(v20, type metadata accessor for PBPropertyValue.OneOf_Params);
      v35 = v53;
    }

    else
    {
      sub_10008875C(v28, &qword_100273120, &qword_1001F6AA0);
      v36 = v20;
      v37 = v48;
      sub_100146E08(v36, v48, type metadata accessor for PBPropertyNoParams);
      sub_100146E08(v37, v28, type metadata accessor for PBPropertyNoParams);
      v35 = v53;
      v31(v28, 0, 1, v53);
    }
  }

  v38 = v51;
  sub_100151F14(&qword_1002729F0, type metadata accessor for PBPropertyNoParams);
  v39 = v52;
  sub_1001C5008();
  if (v39)
  {
    return sub_10008875C(v28, &qword_100273120, &qword_1001F6AA0);
  }

  sub_10009ADF0(v28, v38, &qword_100273120, &qword_1001F6AA0);
  if ((*(v50 + 48))(v38, 1, v35) == 1)
  {
    sub_10008875C(v28, &qword_100273120, &qword_1001F6AA0);
    return sub_10008875C(v38, &qword_100273120, &qword_1001F6AA0);
  }

  else
  {
    v41 = v49;
    sub_100146E08(v38, v49, type metadata accessor for PBPropertyNoParams);
    if (v33 != 1)
    {
      sub_1001C4F88();
    }

    sub_10008875C(v28, &qword_100273120, &qword_1001F6AA0);
    v42 = v47;
    v43 = v45;
    sub_10008875C(v47 + v45, &qword_1002705B0, &qword_1001F2BD8);
    sub_100146E08(v41, v42 + v43, type metadata accessor for PBPropertyNoParams);
    swift_storeEnumTagMultiPayload();
    return (*(v46 + 56))(v42 + v43, 0, 1, v34);
  }
}

uint64_t sub_10014C1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v54 = a2;
  v55 = a3;
  v5 = type metadata accessor for PBPropertySingleFloatParam(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v48 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v49 = &v44 - v10;
  v11 = sub_100084528(&qword_1002705B0, &qword_1001F2BD8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v44 - v13;
  v15 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v44 - v21;
  v23 = sub_100084528(&qword_100273128, &qword_1001F6AA8);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v51 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v44 - v27;
  v50 = v6;
  v29 = *(v6 + 56);
  v53 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v44 - v27, 1, 1, v30);
  v32 = *(type metadata accessor for PBPropertyValue(0) + 20);
  v47 = a1;
  v45 = v32;
  sub_10009ADF0(a1 + v32, v14, &qword_1002705B0, &qword_1001F2BD8);
  v46 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_10008875C(v14, &qword_1002705B0, &qword_1001F2BD8);
    v34 = v15;
  }

  else
  {
    sub_100146E08(v14, v22, type metadata accessor for PBPropertyValue.OneOf_Params);
    sub_100146E08(v22, v20, type metadata accessor for PBPropertyValue.OneOf_Params);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_10008875C(v28, &qword_100273128, &qword_1001F6AA8);
      v35 = v20;
      v36 = v49;
      sub_100146E08(v35, v49, type metadata accessor for PBPropertySingleFloatParam);
      sub_100146E08(v36, v28, type metadata accessor for PBPropertySingleFloatParam);
      v37 = v53;
      v31(v28, 0, 1, v53);
      goto LABEL_7;
    }

    sub_100147104(v20, type metadata accessor for PBPropertyValue.OneOf_Params);
  }

  v37 = v53;
LABEL_7:
  v38 = v51;
  sub_100151F14(&qword_100272A08, type metadata accessor for PBPropertySingleFloatParam);
  v39 = v52;
  sub_1001C5008();
  if (v39)
  {
    return sub_10008875C(v28, &qword_100273128, &qword_1001F6AA8);
  }

  sub_10009ADF0(v28, v38, &qword_100273128, &qword_1001F6AA8);
  if ((*(v50 + 48))(v38, 1, v37) == 1)
  {
    sub_10008875C(v28, &qword_100273128, &qword_1001F6AA8);
    return sub_10008875C(v38, &qword_100273128, &qword_1001F6AA8);
  }

  else
  {
    v41 = v48;
    sub_100146E08(v38, v48, type metadata accessor for PBPropertySingleFloatParam);
    if (v33 != 1)
    {
      sub_1001C4F88();
    }

    sub_10008875C(v28, &qword_100273128, &qword_1001F6AA8);
    v42 = v47;
    v43 = v45;
    sub_10008875C(v47 + v45, &qword_1002705B0, &qword_1001F2BD8);
    sub_100146E08(v41, v42 + v43, type metadata accessor for PBPropertySingleFloatParam);
    swift_storeEnumTagMultiPayload();
    return (*(v46 + 56))(v42 + v43, 0, 1, v34);
  }
}

uint64_t sub_10014C7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v54 = a2;
  v55 = a3;
  Params = type metadata accessor for PBPropertyBookReadParams(0);
  v6 = *(Params - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(Params);
  v48 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v49 = &v44 - v10;
  v11 = sub_100084528(&qword_1002705B0, &qword_1001F2BD8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v44 - v13;
  v15 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v44 - v21;
  v23 = sub_100084528(&qword_100273130, &qword_1001F6AB0);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v51 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v44 - v27;
  v50 = v6;
  v29 = *(v6 + 56);
  v53 = Params;
  v30 = Params;
  v31 = v29;
  v29(&v44 - v27, 1, 1, v30);
  v32 = *(type metadata accessor for PBPropertyValue(0) + 20);
  v47 = a1;
  v45 = v32;
  sub_10009ADF0(a1 + v32, v14, &qword_1002705B0, &qword_1001F2BD8);
  v46 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_10008875C(v14, &qword_1002705B0, &qword_1001F2BD8);
    v34 = v15;
  }

  else
  {
    sub_100146E08(v14, v22, type metadata accessor for PBPropertyValue.OneOf_Params);
    sub_100146E08(v22, v20, type metadata accessor for PBPropertyValue.OneOf_Params);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_10008875C(v28, &qword_100273130, &qword_1001F6AB0);
      v35 = v20;
      v36 = v49;
      sub_100146E08(v35, v49, type metadata accessor for PBPropertyBookReadParams);
      sub_100146E08(v36, v28, type metadata accessor for PBPropertyBookReadParams);
      v37 = v53;
      v31(v28, 0, 1, v53);
      goto LABEL_7;
    }

    sub_100147104(v20, type metadata accessor for PBPropertyValue.OneOf_Params);
  }

  v37 = v53;
LABEL_7:
  v38 = v51;
  sub_100151F14(&qword_100272A20, type metadata accessor for PBPropertyBookReadParams);
  v39 = v52;
  sub_1001C5008();
  if (v39)
  {
    return sub_10008875C(v28, &qword_100273130, &qword_1001F6AB0);
  }

  sub_10009ADF0(v28, v38, &qword_100273130, &qword_1001F6AB0);
  if ((*(v50 + 48))(v38, 1, v37) == 1)
  {
    sub_10008875C(v28, &qword_100273130, &qword_1001F6AB0);
    return sub_10008875C(v38, &qword_100273130, &qword_1001F6AB0);
  }

  else
  {
    v41 = v48;
    sub_100146E08(v38, v48, type metadata accessor for PBPropertyBookReadParams);
    if (v33 != 1)
    {
      sub_1001C4F88();
    }

    sub_10008875C(v28, &qword_100273130, &qword_1001F6AB0);
    v42 = v47;
    v43 = v45;
    sub_10008875C(v47 + v45, &qword_1002705B0, &qword_1001F2BD8);
    sub_100146E08(v41, v42 + v43, type metadata accessor for PBPropertyBookReadParams);
    swift_storeEnumTagMultiPayload();
    return (*(v46 + 56))(v42 + v43, 0, 1, v34);
  }
}

uint64_t sub_10014CD8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v54 = a2;
  v55 = a3;
  v5 = type metadata accessor for PBPropertyMarkedAsFinishedParam(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v48 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v49 = &v44 - v10;
  v11 = sub_100084528(&qword_1002705B0, &qword_1001F2BD8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v44 - v13;
  v15 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v44 - v21;
  v23 = sub_100084528(&qword_100273138, &qword_1001F6AB8);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v51 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v44 - v27;
  v50 = v6;
  v29 = *(v6 + 56);
  v53 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v44 - v27, 1, 1, v30);
  v32 = *(type metadata accessor for PBPropertyValue(0) + 20);
  v47 = a1;
  v45 = v32;
  sub_10009ADF0(a1 + v32, v14, &qword_1002705B0, &qword_1001F2BD8);
  v46 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_10008875C(v14, &qword_1002705B0, &qword_1001F2BD8);
    v34 = v15;
  }

  else
  {
    sub_100146E08(v14, v22, type metadata accessor for PBPropertyValue.OneOf_Params);
    sub_100146E08(v22, v20, type metadata accessor for PBPropertyValue.OneOf_Params);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_10008875C(v28, &qword_100273138, &qword_1001F6AB8);
      v35 = v20;
      v36 = v49;
      sub_100146E08(v35, v49, type metadata accessor for PBPropertyMarkedAsFinishedParam);
      sub_100146E08(v36, v28, type metadata accessor for PBPropertyMarkedAsFinishedParam);
      v37 = v53;
      v31(v28, 0, 1, v53);
      goto LABEL_7;
    }

    sub_100147104(v20, type metadata accessor for PBPropertyValue.OneOf_Params);
  }

  v37 = v53;
LABEL_7:
  v38 = v51;
  sub_100151F14(&qword_100272A50, type metadata accessor for PBPropertyMarkedAsFinishedParam);
  v39 = v52;
  sub_1001C5008();
  if (v39)
  {
    return sub_10008875C(v28, &qword_100273138, &qword_1001F6AB8);
  }

  sub_10009ADF0(v28, v38, &qword_100273138, &qword_1001F6AB8);
  if ((*(v50 + 48))(v38, 1, v37) == 1)
  {
    sub_10008875C(v28, &qword_100273138, &qword_1001F6AB8);
    return sub_10008875C(v38, &qword_100273138, &qword_1001F6AB8);
  }

  else
  {
    v41 = v48;
    sub_100146E08(v38, v48, type metadata accessor for PBPropertyMarkedAsFinishedParam);
    if (v33 != 1)
    {
      sub_1001C4F88();
    }

    sub_10008875C(v28, &qword_100273138, &qword_1001F6AB8);
    v42 = v47;
    v43 = v45;
    sub_10008875C(v47 + v45, &qword_1002705B0, &qword_1001F2BD8);
    sub_100146E08(v41, v42 + v43, type metadata accessor for PBPropertyMarkedAsFinishedParam);
    swift_storeEnumTagMultiPayload();
    return (*(v46 + 56))(v42 + v43, 0, 1, v34);
  }
}

uint64_t sub_10014D354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v54 = a2;
  v55 = a3;
  v5 = type metadata accessor for PBPropertyBookImpressionParam(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v48 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v49 = &v44 - v10;
  v11 = sub_100084528(&qword_1002705B0, &qword_1001F2BD8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v44 - v13;
  v15 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v44 - v21;
  v23 = sub_100084528(&qword_100273140, &qword_1001F6AC0);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v51 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v44 - v27;
  v50 = v6;
  v29 = *(v6 + 56);
  v53 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v44 - v27, 1, 1, v30);
  v32 = *(type metadata accessor for PBPropertyValue(0) + 20);
  v47 = a1;
  v45 = v32;
  sub_10009ADF0(a1 + v32, v14, &qword_1002705B0, &qword_1001F2BD8);
  v46 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_10008875C(v14, &qword_1002705B0, &qword_1001F2BD8);
    v34 = v15;
  }

  else
  {
    sub_100146E08(v14, v22, type metadata accessor for PBPropertyValue.OneOf_Params);
    sub_100146E08(v22, v20, type metadata accessor for PBPropertyValue.OneOf_Params);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_10008875C(v28, &qword_100273140, &qword_1001F6AC0);
      v35 = v20;
      v36 = v49;
      sub_100146E08(v35, v49, type metadata accessor for PBPropertyBookImpressionParam);
      sub_100146E08(v36, v28, type metadata accessor for PBPropertyBookImpressionParam);
      v37 = v53;
      v31(v28, 0, 1, v53);
      goto LABEL_7;
    }

    sub_100147104(v20, type metadata accessor for PBPropertyValue.OneOf_Params);
  }

  v37 = v53;
LABEL_7:
  v38 = v51;
  sub_100151F14(&qword_100272A38, type metadata accessor for PBPropertyBookImpressionParam);
  v39 = v52;
  sub_1001C5008();
  if (v39)
  {
    return sub_10008875C(v28, &qword_100273140, &qword_1001F6AC0);
  }

  sub_10009ADF0(v28, v38, &qword_100273140, &qword_1001F6AC0);
  if ((*(v50 + 48))(v38, 1, v37) == 1)
  {
    sub_10008875C(v28, &qword_100273140, &qword_1001F6AC0);
    return sub_10008875C(v38, &qword_100273140, &qword_1001F6AC0);
  }

  else
  {
    v41 = v48;
    sub_100146E08(v38, v48, type metadata accessor for PBPropertyBookImpressionParam);
    if (v33 != 1)
    {
      sub_1001C4F88();
    }

    sub_10008875C(v28, &qword_100273140, &qword_1001F6AC0);
    v42 = v47;
    v43 = v45;
    sub_10008875C(v47 + v45, &qword_1002705B0, &qword_1001F2BD8);
    sub_100146E08(v41, v42 + v43, type metadata accessor for PBPropertyBookImpressionParam);
    swift_storeEnumTagMultiPayload();
    return (*(v46 + 56))(v42 + v43, 0, 1, v34);
  }
}

uint64_t PBPropertyValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = sub_100084528(&qword_1002705B0, &qword_1001F2BD8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v18 - v11;
  result = sub_10014DB6C(v3, a1, a2, a3);
  if (!v4)
  {
    sub_10014DD88(v3);
    if (*v3)
    {
      sub_1001C5098();
    }

    v14 = type metadata accessor for PBPropertyValue(0);
    sub_10009ADF0(v5 + *(v14 + 20), v12, &qword_1002705B0, &qword_1001F2BD8);
    v15 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
    if ((*(*(v15 - 8) + 48))(v12, 1, v15) != 1)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          sub_10014E040(v5, a1, a2, a3);
        }

        else
        {
          sub_10014DE00(v5, a1, a2, a3);
        }
      }

      else if (EnumCaseMultiPayload == 2)
      {
        sub_10014E284(v5, a1, a2, a3);
      }

      else if (EnumCaseMultiPayload == 3)
      {
        sub_10014E4C8(v5, a1, a2, a3);
      }

      else
      {
        sub_10014E70C(v5, a1, a2, a3);
      }

      sub_100147104(v12, type metadata accessor for PBPropertyValue.OneOf_Params);
    }

    v17 = v5 + *(v14 + 24);
    return sub_1001C4EF8();
  }

  return result;
}

uint64_t sub_10014DB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100084528(&qword_1002705B8, &unk_1001F2BE0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = sub_1001C4EE8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PBPropertyValue(0);
  sub_10009ADF0(a1 + *(v14 + 28), v8, &qword_1002705B8, &unk_1001F2BE0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_10008875C(v8, &qword_1002705B8, &unk_1001F2BE0);
  }

  (*(v10 + 32))(v13, v8, v9);
  sub_100151F14(&qword_100272988, &type metadata accessor for Google_Protobuf_Timestamp);
  sub_1001C50C8();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_10014DD88(uint64_t a1)
{
  result = type metadata accessor for PBPropertyValue(0);
  v3 = (a1 + *(result + 32));
  if (v3[1])
  {
    v4 = *v3;
    return sub_1001C50A8();
  }

  return result;
}

uint64_t sub_10014DE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = sub_100084528(&qword_1002705B0, &qword_1001F2BD8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBPropertyNoParams(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PBPropertyValue(0);
  sub_10009ADF0(a1 + *(v13 + 20), v8, &qword_1002705B0, &qword_1001F2BD8);
  v14 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_10008875C(v8, &qword_1002705B0, &qword_1001F2BD8);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_100146E08(v8, v12, type metadata accessor for PBPropertyNoParams);
    sub_100151F14(&qword_1002729F0, type metadata accessor for PBPropertyNoParams);
    sub_1001C50C8();
    return sub_100147104(v12, type metadata accessor for PBPropertyNoParams);
  }

  result = sub_100147104(v8, type metadata accessor for PBPropertyValue.OneOf_Params);
  __break(1u);
  return result;
}

uint64_t sub_10014E040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = sub_100084528(&qword_1002705B0, &qword_1001F2BD8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBPropertySingleFloatParam(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PBPropertyValue(0);
  sub_10009ADF0(a1 + *(v13 + 20), v8, &qword_1002705B0, &qword_1001F2BD8);
  v14 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_10008875C(v8, &qword_1002705B0, &qword_1001F2BD8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100146E08(v8, v12, type metadata accessor for PBPropertySingleFloatParam);
    sub_100151F14(&qword_100272A08, type metadata accessor for PBPropertySingleFloatParam);
    sub_1001C50C8();
    return sub_100147104(v12, type metadata accessor for PBPropertySingleFloatParam);
  }

  result = sub_100147104(v8, type metadata accessor for PBPropertyValue.OneOf_Params);
  __break(1u);
  return result;
}

uint64_t sub_10014E284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = sub_100084528(&qword_1002705B0, &qword_1001F2BD8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  Params = type metadata accessor for PBPropertyBookReadParams(0);
  v10 = *(*(Params - 8) + 64);
  __chkstk_darwin(Params);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PBPropertyValue(0);
  sub_10009ADF0(a1 + *(v13 + 20), v8, &qword_1002705B0, &qword_1001F2BD8);
  v14 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_10008875C(v8, &qword_1002705B0, &qword_1001F2BD8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_100146E08(v8, v12, type metadata accessor for PBPropertyBookReadParams);
    sub_100151F14(&qword_100272A20, type metadata accessor for PBPropertyBookReadParams);
    sub_1001C50C8();
    return sub_100147104(v12, type metadata accessor for PBPropertyBookReadParams);
  }

  result = sub_100147104(v8, type metadata accessor for PBPropertyValue.OneOf_Params);
  __break(1u);
  return result;
}

uint64_t sub_10014E4C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = sub_100084528(&qword_1002705B0, &qword_1001F2BD8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBPropertyMarkedAsFinishedParam(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PBPropertyValue(0);
  sub_10009ADF0(a1 + *(v13 + 20), v8, &qword_1002705B0, &qword_1001F2BD8);
  v14 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_10008875C(v8, &qword_1002705B0, &qword_1001F2BD8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_100146E08(v8, v12, type metadata accessor for PBPropertyMarkedAsFinishedParam);
    sub_100151F14(&qword_100272A50, type metadata accessor for PBPropertyMarkedAsFinishedParam);
    sub_1001C50C8();
    return sub_100147104(v12, type metadata accessor for PBPropertyMarkedAsFinishedParam);
  }

  result = sub_100147104(v8, type metadata accessor for PBPropertyValue.OneOf_Params);
  __break(1u);
  return result;
}

uint64_t sub_10014E70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = sub_100084528(&qword_1002705B0, &qword_1001F2BD8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBPropertyBookImpressionParam(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PBPropertyValue(0);
  sub_10009ADF0(a1 + *(v13 + 20), v8, &qword_1002705B0, &qword_1001F2BD8);
  v14 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_10008875C(v8, &qword_1002705B0, &qword_1001F2BD8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_100146E08(v8, v12, type metadata accessor for PBPropertyBookImpressionParam);
    sub_100151F14(&qword_100272A38, type metadata accessor for PBPropertyBookImpressionParam);
    sub_1001C50C8();
    return sub_100147104(v12, type metadata accessor for PBPropertyBookImpressionParam);
  }

  result = sub_100147104(v8, type metadata accessor for PBPropertyValue.OneOf_Params);
  __break(1u);
  return result;
}

uint64_t sub_10014E99C@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  v4 = a1[5];
  v5 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = &a2[a1[6]];
  _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
  v7 = a1[7];
  v8 = sub_1001C4EE8();
  result = (*(*(v8 - 8) + 56))(&a2[v7], 1, 1, v8);
  v10 = &a2[a1[8]];
  *v10 = 0;
  *(v10 + 1) = 0;
  return result;
}

uint64_t sub_10014EA9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100151F14(&qword_1002730C0, type metadata accessor for PBPropertyValue);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10014EB3C(uint64_t a1)
{
  v2 = sub_100151F14(&qword_100272980, type metadata accessor for PBPropertyValue);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10014EBA8()
{
  sub_100151F14(&qword_100272980, type metadata accessor for PBPropertyValue);

  return sub_1001C5058();
}

uint64_t sub_10014EC4C()
{
  v0 = sub_1001C5108();
  sub_100088824(v0, static PBPropertyBundle._protobuf_nameMap);
  sub_100083274(v0, static PBPropertyBundle._protobuf_nameMap);
  sub_100084528(&qword_100273100, &qword_1001F6A80);
  v1 = (sub_100084528(&qword_100273108, &qword_1001F6A88) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001F0680;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "configuration";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_1001C50D8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "propertyValues";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "deletedPropertyValueTimestamps";
  *(v11 + 8) = 30;
  *(v11 + 16) = 2;
  v9();
  return sub_1001C50E8();
}

uint64_t PBPropertyBundle.decodeMessage<A>(decoder:)()
{
  result = sub_1001C4F78();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result == 3)
      {
        break;
      }

      if (result == 2)
      {
        type metadata accessor for PBPropertyValue(0);
        sub_100151F14(&qword_100272980, type metadata accessor for PBPropertyValue);
LABEL_12:
        sub_1001C4FF8();
        goto LABEL_4;
      }

      if (result == 1)
      {
        sub_10014F00C();
      }

LABEL_4:
      result = sub_1001C4F78();
    }

    sub_1001C4EE8();
    sub_100151F14(&qword_100272988, &type metadata accessor for Google_Protobuf_Timestamp);
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_10014F00C()
{
  v0 = *(type metadata accessor for PBPropertyBundle(0) + 28);
  type metadata accessor for PBPropertyConfiguration(0);
  sub_100151F14(&qword_1002729D8, type metadata accessor for PBPropertyConfiguration);
  return sub_1001C5008();
}

uint64_t PBPropertyBundle.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_10014F238(v3, a1, a2, a3);
  if (!v4)
  {
    v7 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for PBPropertyValue(0);
      sub_100151F14(&qword_100272980, type metadata accessor for PBPropertyValue);
      sub_1001C50B8();
    }

    if (*(v5[1] + 16))
    {
      sub_1001C4EE8();
      sub_100151F14(&qword_100272988, &type metadata accessor for Google_Protobuf_Timestamp);
      sub_1001C50B8();
    }

    v8 = v5 + *(type metadata accessor for PBPropertyBundle(0) + 24);
    return sub_1001C4EF8();
  }

  return result;
}

uint64_t sub_10014F238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100084528(&qword_1002705A8, &unk_1001F5200);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBPropertyConfiguration(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PBPropertyBundle(0);
  sub_10009ADF0(a1 + *(v14 + 28), v8, &qword_1002705A8, &unk_1001F5200);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_10008875C(v8, &qword_1002705A8, &unk_1001F5200);
  }

  sub_100146E08(v8, v13, type metadata accessor for PBPropertyConfiguration);
  sub_100151F14(&qword_1002729D8, type metadata accessor for PBPropertyConfiguration);
  sub_1001C50C8();
  return sub_100147104(v13, type metadata accessor for PBPropertyConfiguration);
}

uint64_t sub_10014F4A0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = _swiftEmptyArrayStorage;
  *(a2 + 1) = _swiftEmptyArrayStorage;
  v4 = &a2[*(a1 + 24)];
  _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
  v5 = *(a1 + 28);
  v6 = type metadata accessor for PBPropertyConfiguration(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_10014F52C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1001C4F18();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10014F5A0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_1001C4F18();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_10014F644(uint64_t a1, uint64_t a2)
{
  v4 = sub_100151F14(&qword_1002730B8, type metadata accessor for PBPropertyBundle);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10014F6E4(uint64_t a1)
{
  v2 = sub_100151F14(&qword_100272998, type metadata accessor for PBPropertyBundle);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10014F750()
{
  sub_100151F14(&qword_100272998, type metadata accessor for PBPropertyBundle);

  return sub_1001C5058();
}

uint64_t sub_10014F7F4()
{
  v0 = sub_1001C5108();
  sub_100088824(v0, static PBPropertyTimeSlice._protobuf_nameMap);
  sub_100083274(v0, static PBPropertyTimeSlice._protobuf_nameMap);
  sub_100084528(&qword_100273100, &qword_1001F6A80);
  v1 = (sub_100084528(&qword_100273108, &qword_1001F6A88) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001F0660;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "startOfTimeSlice";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_1001C50D8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "propertyBundles";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_1001C50E8();
}

uint64_t sub_10014F9E0(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_1001C5108();

  return sub_100083274(v3, a2);
}

uint64_t sub_10014FA58@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1001C5108();
  v6 = sub_100083274(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t PBPropertyTimeSlice.decodeMessage<A>(decoder:)()
{
  result = sub_1001C4F78();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_10014FBF0();
      }

      else if (result == 2)
      {
        type metadata accessor for PBPropertyBundle(0);
        sub_100151F14(&qword_100272998, type metadata accessor for PBPropertyBundle);
        sub_1001C4FF8();
      }

      result = sub_1001C4F78();
    }
  }

  return result;
}

uint64_t sub_10014FBF0()
{
  v0 = *(type metadata accessor for PBPropertyTimeSlice(0) + 24);
  sub_1001C4EE8();
  sub_100151F14(&qword_100272988, &type metadata accessor for Google_Protobuf_Timestamp);
  return sub_1001C5008();
}

uint64_t PBPropertyTimeSlice.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_10014FDA0(v3, a1, a2, a3);
  if (!v4)
  {
    v7 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for PBPropertyBundle(0);
      sub_100151F14(&qword_100272998, type metadata accessor for PBPropertyBundle);
      sub_1001C50B8();
    }

    v8 = v5 + *(type metadata accessor for PBPropertyTimeSlice(0) + 20);
    return sub_1001C4EF8();
  }

  return result;
}

uint64_t sub_10014FDA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100084528(&qword_1002705B8, &unk_1001F2BE0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = sub_1001C4EE8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PBPropertyTimeSlice(0);
  sub_10009ADF0(a1 + *(v14 + 24), v8, &qword_1002705B8, &unk_1001F2BE0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_10008875C(v8, &qword_1002705B8, &unk_1001F2BE0);
  }

  (*(v10 + 32))(v13, v8, v9);
  sub_100151F14(&qword_100272988, &type metadata accessor for Google_Protobuf_Timestamp);
  sub_1001C50C8();
  return (*(v10 + 8))(v13, v9);
}

Swift::Int sub_100150008(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1001C6DF8();
  a1(0);
  sub_100151F14(a2, a3);
  sub_1001C5F98();
  return sub_1001C6E28();
}

uint64_t sub_100150090@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = _swiftEmptyArrayStorage;
  v4 = &a2[*(a1 + 20)];
  _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
  v5 = *(a1 + 24);
  v6 = sub_1001C4EE8();
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_10015011C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1001C4F18();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100150190(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_1001C4F18();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_100150234(uint64_t a1, uint64_t a2)
{
  v4 = sub_100151F14(&qword_1002730B0, type metadata accessor for PBPropertyTimeSlice);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1001502D4@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1001C5108();
  v6 = sub_100083274(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_100150370(uint64_t a1)
{
  v2 = sub_100151F14(&qword_1002721B8, type metadata accessor for PBPropertyTimeSlice);

  return Message.debugDescription.getter(a1, v2);
}

Swift::Int sub_1001503DC()
{
  sub_1001C6DF8();
  sub_1001C5F98();
  return sub_1001C6E28();
}

uint64_t sub_100150434()
{
  sub_100151F14(&qword_1002721B8, type metadata accessor for PBPropertyTimeSlice);

  return sub_1001C5058();
}

Swift::Int sub_1001504B0()
{
  sub_1001C6DF8();
  sub_1001C5F98();
  return sub_1001C6E28();
}

uint64_t _s14bookdatastored31PBPropertyMarkedAsFinishedParamV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        if (v2 != 1)
        {
          return 0;
        }
      }

      else if (v2 != 2)
      {
        return 0;
      }

LABEL_7:
      v4 = *(type metadata accessor for PBPropertyMarkedAsFinishedParam(0) + 20);
      sub_1001C4F18();
      sub_100151F14(&qword_100272938, &type metadata accessor for UnknownStorage);
      return sub_1001C5FD8() & 1;
    }

    if (!v2)
    {
      goto LABEL_7;
    }
  }

  else if (v2 == v3)
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t _s14bookdatastored19PBPropertyTimeSliceV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_1001C4EE8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v27 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100084528(&qword_1002705B8, &unk_1001F2BE0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v26 - v10;
  v12 = sub_100084528(&qword_1002730F8, &unk_1001F8320);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = &v26 - v15;
  v26 = type metadata accessor for PBPropertyTimeSlice(0);
  v17 = *(v26 + 24);
  v18 = *(v13 + 56);
  v28 = a1;
  sub_10009ADF0(a1 + v17, v16, &qword_1002705B8, &unk_1001F2BE0);
  v29 = a2;
  sub_10009ADF0(a2 + v17, &v16[v18], &qword_1002705B8, &unk_1001F2BE0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_10008875C(v16, &qword_1002705B8, &unk_1001F2BE0);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_10009ADF0(v16, v11, &qword_1002705B8, &unk_1001F2BE0);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v11, v4);
LABEL_6:
    sub_10008875C(v16, &qword_1002730F8, &unk_1001F8320);
LABEL_10:
    v24 = 0;
    return v24 & 1;
  }

  v20 = v27;
  (*(v5 + 32))(v27, &v16[v18], v4);
  sub_100151F14(&qword_1002721C0, &type metadata accessor for Google_Protobuf_Timestamp);
  v21 = sub_1001C5FD8();
  v22 = *(v5 + 8);
  v22(v20, v4);
  v22(v11, v4);
  sub_10008875C(v16, &qword_1002705B8, &unk_1001F2BE0);
  if ((v21 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((sub_100192D9C(*v28, *v29) & 1) == 0)
  {
    goto LABEL_10;
  }

  v23 = *(v26 + 20);
  sub_1001C4F18();
  sub_100151F14(&qword_100272938, &type metadata accessor for UnknownStorage);
  v24 = sub_1001C5FD8();
  return v24 & 1;
}

uint64_t _s14bookdatastored23PBPropertyConfigurationV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  if (a1[2] != a2[2] || a1[3] != a2[3])
  {
    v3 = a1;
    v4 = a1[2];
    v5 = a2;
    v6 = sub_1001C6D08();
    a2 = v5;
    v7 = v6;
    a1 = v3;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  if (a1[4] != a2[4])
  {
    return 0;
  }

  v8 = *(type metadata accessor for PBPropertyConfiguration(0) + 32);
  sub_1001C4F18();
  sub_100151F14(&qword_100272938, &type metadata accessor for UnknownStorage);
  return sub_1001C5FD8() & 1;
}

uint64_t _s14bookdatastored16PBPropertyBundleV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for PBPropertyConfiguration(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v28 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_100084528(&qword_1002705A8, &unk_1001F5200);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = (&v26 - v10);
  v12 = sub_100084528(&qword_100273110, &unk_1001F6A90);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = &v26 - v15;
  v27 = type metadata accessor for PBPropertyBundle(0);
  v17 = *(v27 + 28);
  v18 = *(v13 + 56);
  v29 = a1;
  sub_10009ADF0(a1 + v17, v16, &qword_1002705A8, &unk_1001F5200);
  sub_10009ADF0(a2 + v17, &v16[v18], &qword_1002705A8, &unk_1001F5200);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_10009ADF0(v16, v11, &qword_1002705A8, &unk_1001F5200);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v20 = v28;
      sub_100146E08(&v16[v18], v28, type metadata accessor for PBPropertyConfiguration);
      v21 = _s14bookdatastored23PBPropertyConfigurationV2eeoiySbAC_ACtFZ_0(v11, v20);
      sub_100147104(v20, type metadata accessor for PBPropertyConfiguration);
      sub_100147104(v11, type metadata accessor for PBPropertyConfiguration);
      sub_10008875C(v16, &qword_1002705A8, &unk_1001F5200);
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_11:
      v24 = 0;
      return v24 & 1;
    }

    sub_100147104(v11, type metadata accessor for PBPropertyConfiguration);
LABEL_6:
    sub_10008875C(v16, &qword_100273110, &unk_1001F6A90);
    goto LABEL_11;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_10008875C(v16, &qword_1002705A8, &unk_1001F5200);
LABEL_8:
  v22 = v29;
  if ((sub_100193E6C(*v29, *a2) & 1) == 0 || (sub_100194024(v22[1], a2[1]) & 1) == 0)
  {
    goto LABEL_11;
  }

  v23 = *(v27 + 24);
  sub_1001C4F18();
  sub_100151F14(&qword_100272938, &type metadata accessor for UnknownStorage);
  v24 = sub_1001C5FD8();
  return v24 & 1;
}

uint64_t _s14bookdatastored15PBPropertyValueV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  v58 = *(v4 - 8);
  v59 = v4;
  v5 = *(v58 + 64);
  __chkstk_darwin(v4);
  v55 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100084528(&qword_1002705B0, &qword_1001F2BD8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v56 = &v54 - v9;
  v57 = sub_100084528(&qword_100273118, &unk_1001F8310);
  v10 = *(*(v57 - 8) + 64);
  __chkstk_darwin(v57);
  v60 = &v54 - v11;
  v12 = sub_1001C4EE8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v61 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100084528(&qword_1002705B8, &unk_1001F2BE0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v54 - v18;
  v20 = sub_100084528(&qword_1002730F8, &unk_1001F8320);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v24 = &v54 - v23;
  v62 = type metadata accessor for PBPropertyValue(0);
  v63 = a1;
  v25 = *(v62 + 28);
  v26 = *(v21 + 56);
  sub_10009ADF0(a1 + v25, v24, &qword_1002705B8, &unk_1001F2BE0);
  sub_10009ADF0(a2 + v25, &v24[v26], &qword_1002705B8, &unk_1001F2BE0);
  v27 = *(v13 + 48);
  if (v27(v24, 1, v12) == 1)
  {
    if (v27(&v24[v26], 1, v12) == 1)
    {
      sub_10008875C(v24, &qword_1002705B8, &unk_1001F2BE0);
      goto LABEL_11;
    }

LABEL_6:
    v28 = &qword_1002730F8;
    v29 = &unk_1001F8320;
LABEL_7:
    sub_10008875C(v24, v28, v29);
    goto LABEL_8;
  }

  sub_10009ADF0(v24, v19, &qword_1002705B8, &unk_1001F2BE0);
  if (v27(&v24[v26], 1, v12) == 1)
  {
    (*(v13 + 8))(v19, v12);
    goto LABEL_6;
  }

  v32 = &v24[v26];
  v33 = v61;
  (*(v13 + 32))(v61, v32, v12);
  sub_100151F14(&qword_1002721C0, &type metadata accessor for Google_Protobuf_Timestamp);
  v34 = sub_1001C5FD8();
  v35 = *(v13 + 8);
  v35(v33, v12);
  v35(v19, v12);
  sub_10008875C(v24, &qword_1002705B8, &unk_1001F2BE0);
  if ((v34 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  v37 = v62;
  v36 = v63;
  v38 = *(v62 + 32);
  v39 = (v63 + v38);
  v40 = *(v63 + v38 + 8);
  v41 = (a2 + v38);
  v42 = v41[1];
  if (v40)
  {
    if (!v42 || (*v39 != *v41 || v40 != v42) && (sub_1001C6D08() & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (v42)
  {
    goto LABEL_8;
  }

  if (*v36 != *a2)
  {
    goto LABEL_8;
  }

  v43 = *(v37 + 20);
  v44 = *(v57 + 48);
  v45 = v60;
  sub_10009ADF0(v36 + v43, v60, &qword_1002705B0, &qword_1001F2BD8);
  v46 = a2 + v43;
  v24 = v45;
  sub_10009ADF0(v46, v45 + v44, &qword_1002705B0, &qword_1001F2BD8);
  v47 = v59;
  v48 = *(v58 + 48);
  if (v48(v45, 1, v59) == 1)
  {
    if (v48(v45 + v44, 1, v47) == 1)
    {
      sub_10008875C(v45, &qword_1002705B0, &qword_1001F2BD8);
LABEL_26:
      v53 = *(v37 + 24);
      sub_1001C4F18();
      sub_100151F14(&qword_100272938, &type metadata accessor for UnknownStorage);
      v30 = sub_1001C5FD8();
      return v30 & 1;
    }

    goto LABEL_24;
  }

  v49 = v56;
  sub_10009ADF0(v24, v56, &qword_1002705B0, &qword_1001F2BD8);
  if (v48(&v24[v44], 1, v47) == 1)
  {
    sub_100147104(v49, type metadata accessor for PBPropertyValue.OneOf_Params);
LABEL_24:
    v28 = &qword_100273118;
    v29 = &unk_1001F8310;
    goto LABEL_7;
  }

  v50 = &v24[v44];
  v51 = v55;
  sub_100146E08(v50, v55, type metadata accessor for PBPropertyValue.OneOf_Params);
  v52 = _s14bookdatastored15PBPropertyValueV12OneOf_ParamsO21__derived_enum_equalsySbAE_AEtFZ_0(v49, v51);
  sub_100147104(v51, type metadata accessor for PBPropertyValue.OneOf_Params);
  sub_100147104(v49, type metadata accessor for PBPropertyValue.OneOf_Params);
  sub_10008875C(v24, &qword_1002705B0, &qword_1001F2BD8);
  if (v52)
  {
    goto LABEL_26;
  }

LABEL_8:
  v30 = 0;
  return v30 & 1;
}

uint64_t _s14bookdatastored15PBPropertyValueV12OneOf_ParamsO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v69 = a1;
  v70 = a2;
  v63 = type metadata accessor for PBPropertyBookImpressionParam(0);
  v2 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v63);
  v65 = &Params - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for PBPropertyMarkedAsFinishedParam(0);
  v4 = *(*(v62 - 8) + 64);
  __chkstk_darwin(v62);
  v66 = &Params - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Params = type metadata accessor for PBPropertyBookReadParams(0);
  v6 = *(*(Params - 8) + 64);
  __chkstk_darwin(Params);
  v64 = (&Params - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for PBPropertySingleFloatParam(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&Params - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for PBPropertyNoParams(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &Params - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16);
  v67 = (&Params - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __chkstk_darwin(v18);
  v68 = (&Params - v21);
  v22 = __chkstk_darwin(v20);
  v24 = (&Params - v23);
  v25 = __chkstk_darwin(v22);
  v27 = (&Params - v26);
  __chkstk_darwin(v25);
  v29 = &Params - v28;
  v30 = sub_100084528(&qword_100273148, &qword_1001F6AC8);
  v31 = *(*(v30 - 8) + 64);
  v32 = __chkstk_darwin(v30 - 8);
  v34 = &Params - v33;
  v35 = *(v32 + 56);
  sub_10014756C(v69, &Params - v33, type metadata accessor for PBPropertyValue.OneOf_Params);
  sub_10014756C(v70, &v34[v35], type metadata accessor for PBPropertyValue.OneOf_Params);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_10014756C(v34, v24, type metadata accessor for PBPropertyValue.OneOf_Params);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v42 = v64;
        sub_100146E08(&v34[v35], v64, type metadata accessor for PBPropertyBookReadParams);
        if (*v24 == *v42 && v24[1] == v42[1])
        {
          v43 = *(Params + 24);
          sub_1001C4F18();
          sub_100151F14(&qword_100272938, &type metadata accessor for UnknownStorage);
          v44 = sub_1001C5FD8();
          sub_100147104(v42, type metadata accessor for PBPropertyBookReadParams);
          if (v44)
          {
            v45 = type metadata accessor for PBPropertyBookReadParams;
            goto LABEL_39;
          }
        }

        else
        {
          sub_100147104(v42, type metadata accessor for PBPropertyBookReadParams);
        }

        v53 = type metadata accessor for PBPropertyBookReadParams;
LABEL_47:
        v58 = v53;
        v59 = v24;
        goto LABEL_48;
      }

      v51 = type metadata accessor for PBPropertyBookReadParams;
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        v24 = v68;
        sub_10014756C(v34, v68, type metadata accessor for PBPropertyValue.OneOf_Params);
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v37 = v66;
          sub_100146E08(&v34[v35], v66, type metadata accessor for PBPropertyMarkedAsFinishedParam);
          v38 = *v24;
          v39 = *v37;
          if (*(v37 + 8) == 1)
          {
            if (v39)
            {
              if (v39 == 1)
              {
                if (v38 != 1)
                {
                  goto LABEL_45;
                }
              }

              else if (v38 != 2)
              {
                goto LABEL_45;
              }

              goto LABEL_35;
            }

            if (v38)
            {
LABEL_45:
              sub_100147104(v37, type metadata accessor for PBPropertyMarkedAsFinishedParam);
              goto LABEL_46;
            }
          }

          else if (v38 != v39)
          {
            goto LABEL_45;
          }

LABEL_35:
          v54 = *(v62 + 20);
          sub_1001C4F18();
          sub_100151F14(&qword_100272938, &type metadata accessor for UnknownStorage);
          v55 = sub_1001C5FD8();
          sub_100147104(v37, type metadata accessor for PBPropertyMarkedAsFinishedParam);
          if ((v55 & 1) == 0)
          {
LABEL_46:
            v53 = type metadata accessor for PBPropertyMarkedAsFinishedParam;
            goto LABEL_47;
          }

          v45 = type metadata accessor for PBPropertyMarkedAsFinishedParam;
          goto LABEL_39;
        }

        v51 = type metadata accessor for PBPropertyMarkedAsFinishedParam;
        goto LABEL_28;
      }

      v24 = v67;
      sub_10014756C(v34, v67, type metadata accessor for PBPropertyValue.OneOf_Params);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v46 = v65;
        sub_100146E08(&v34[v35], v65, type metadata accessor for PBPropertyBookImpressionParam);
        if (*v24 != *v46)
        {
          sub_100147104(v46, type metadata accessor for PBPropertyBookImpressionParam);
LABEL_41:
          v53 = type metadata accessor for PBPropertyBookImpressionParam;
          goto LABEL_47;
        }

        v56 = *(v63 + 20);
        sub_1001C4F18();
        sub_100151F14(&qword_100272938, &type metadata accessor for UnknownStorage);
        v57 = sub_1001C5FD8();
        sub_100147104(v46, type metadata accessor for PBPropertyBookImpressionParam);
        if ((v57 & 1) == 0)
        {
          goto LABEL_41;
        }

        v45 = type metadata accessor for PBPropertyBookImpressionParam;
LABEL_39:
        v49 = v45;
        v50 = v24;
        goto LABEL_40;
      }

      v51 = type metadata accessor for PBPropertyBookImpressionParam;
    }

LABEL_28:
    v40 = v51;
    v41 = v24;
    goto LABEL_30;
  }

  if (EnumCaseMultiPayload)
  {
    sub_10014756C(v34, v27, type metadata accessor for PBPropertyValue.OneOf_Params);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100146E08(&v34[v35], v11, type metadata accessor for PBPropertySingleFloatParam);
      if (*v27 == *v11)
      {
        v47 = *(v8 + 20);
        sub_1001C4F18();
        sub_100151F14(&qword_100272938, &type metadata accessor for UnknownStorage);
        v48 = sub_1001C5FD8();
        sub_100147104(v11, type metadata accessor for PBPropertySingleFloatParam);
        if (v48)
        {
          v49 = type metadata accessor for PBPropertySingleFloatParam;
          v50 = v27;
LABEL_40:
          sub_100147104(v50, v49);
          sub_100147104(v34, type metadata accessor for PBPropertyValue.OneOf_Params);
          v52 = 1;
          return v52 & 1;
        }
      }

      else
      {
        sub_100147104(v11, type metadata accessor for PBPropertySingleFloatParam);
      }

      v58 = type metadata accessor for PBPropertySingleFloatParam;
      v59 = v27;
LABEL_48:
      sub_100147104(v59, v58);
      sub_100147104(v34, type metadata accessor for PBPropertyValue.OneOf_Params);
      goto LABEL_49;
    }

    v40 = type metadata accessor for PBPropertySingleFloatParam;
    v41 = v27;
LABEL_30:
    sub_100147104(v41, v40);
    sub_10008875C(v34, &qword_100273148, &qword_1001F6AC8);
LABEL_49:
    v52 = 0;
    return v52 & 1;
  }

  sub_10014756C(v34, v29, type metadata accessor for PBPropertyValue.OneOf_Params);
  if (swift_getEnumCaseMultiPayload())
  {
    v40 = type metadata accessor for PBPropertyNoParams;
    v41 = v29;
    goto LABEL_30;
  }

  sub_100146E08(&v34[v35], v15, type metadata accessor for PBPropertyNoParams);
  sub_1001C4F18();
  sub_100151F14(&qword_100272938, &type metadata accessor for UnknownStorage);
  v52 = sub_1001C5FD8();
  sub_100147104(v15, type metadata accessor for PBPropertyNoParams);
  sub_100147104(v29, type metadata accessor for PBPropertyNoParams);
  sub_100147104(v34, type metadata accessor for PBPropertyValue.OneOf_Params);
  return v52 & 1;
}

uint64_t sub_100151F14(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100151F5C()
{
  result = qword_100272968;
  if (!qword_100272968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100272968);
  }

  return result;
}

unint64_t sub_100151FB4()
{
  result = qword_1002729A8;
  if (!qword_1002729A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002729A8);
  }

  return result;
}

unint64_t sub_10015200C()
{
  result = qword_1002729B0;
  if (!qword_1002729B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002729B0);
  }

  return result;
}

unint64_t sub_100152064()
{
  result = qword_1002729B8;
  if (!qword_1002729B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002729B8);
  }

  return result;
}

unint64_t sub_1001520BC()
{
  result = qword_1002729C0;
  if (!qword_1002729C0)
  {
    sub_1000885AC(&qword_1002729C8, &qword_1001F5CF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002729C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MarkedAsFinishedMechanism(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MarkedAsFinishedMechanism(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_100152B90(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100152BAC(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_100152C04()
{
  result = sub_1001C4F18();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100152CB4()
{
  result = sub_1001C4F18();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100152D7C()
{
  result = sub_1001C4F18();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100152E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1001C4F18();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_100152ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1001C4F18();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_100152F5C()
{
  result = sub_1001C4F18();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100152FF8()
{
  sub_10015311C(319, &qword_100272E70, type metadata accessor for PBPropertyValue.OneOf_Params, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_1001C4F18();
    if (v1 <= 0x3F)
    {
      sub_10015311C(319, &unk_100272E78, &type metadata accessor for Google_Protobuf_Timestamp, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1000B6A38();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10015311C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100153180()
{
  result = type metadata accessor for PBPropertyNoParams(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PBPropertySingleFloatParam(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for PBPropertyBookReadParams(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for PBPropertyMarkedAsFinishedParam(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for PBPropertyBookImpressionParam(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

void sub_100153258()
{
  sub_10015311C(319, &qword_100272FC8, type metadata accessor for PBPropertyValue, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_10015311C(319, &qword_100272FD0, &type metadata accessor for Google_Protobuf_Timestamp, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_1001C4F18();
      if (v2 <= 0x3F)
      {
        sub_10015311C(319, &unk_100272FD8, type metadata accessor for PBPropertyConfiguration, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1001533C4()
{
  sub_10015311C(319, &unk_100273078, type metadata accessor for PBPropertyBundle, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_1001C4F18();
    if (v1 <= 0x3F)
    {
      sub_10015311C(319, &unk_100272E78, &type metadata accessor for Google_Protobuf_Timestamp, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1001534F8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100084528(&unk_100273270, &qword_1001F6C08);
    v2 = sub_1001C6B78();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v14 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v14 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v14);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v16 = v15 | (v14 << 6);
        v17 = (*(a1 + 48) + 16 * v16);
        v19 = *v17;
        v18 = v17[1];
        v20 = *(*(a1 + 56) + 8 * v16);

        v21 = v20;
        result = sub_100187B3C(v19, v18);
        if (v22)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v19;
          v9[1] = v18;
          v11 = result;

          v12 = v2[7];
          v13 = *(v12 + 8 * v11);
          *(v12 + 8 * v11) = v21;
          result = swift_unknownObjectRelease();
          v8 = v14;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v23 = (v2[6] + 16 * result);
          *v23 = v19;
          v23[1] = v18;
          *(v2[7] + 8 * result) = v21;
          v24 = v2[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_21;
          }

          v2[2] = v26;
          v8 = v14;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v14 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_1001536D8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100084528(&qword_100273260, &qword_1001F4560);
    v2 = sub_1001C6B78();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        sub_100157880(*(a1 + 56) + 40 * v15, &v30);
        v28 = v18;
        v29 = v17;

        swift_dynamicCast();
        sub_10011A388(&v24, v26);
        sub_10011A388(v26, v27);
        sub_10011A388(v27, &v25);
        result = sub_100187B3C(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_10008E7BC(v12);
          result = sub_10011A388(&v25, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v18;
          v20[1] = v17;
          result = sub_10011A388(&v25, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_100153948(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100084528(&qword_100273250, &unk_1001F8060);
    v2 = sub_1001C6B78();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v14 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v14 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v14);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v16 = v15 | (v14 << 6);
        v17 = (*(a1 + 48) + 16 * v16);
        v19 = *v17;
        v18 = v17[1];
        v25 = *(*(a1 + 56) + 8 * v16);

        swift_unknownObjectRetain();
        sub_100084528(&qword_10026FF08, &qword_1001F1D78);
        sub_100084528(&qword_100271010, &unk_1001F1D60);
        swift_dynamicCast();
        result = sub_100187B3C(v19, v18);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v19;
          v9[1] = v18;
          v11 = result;

          v12 = v2[7];
          v13 = *(v12 + 8 * v11);
          *(v12 + 8 * v11) = v26;
          result = swift_unknownObjectRelease();
          v8 = v14;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v2[6] + 16 * result);
          *v21 = v19;
          v21[1] = v18;
          *(v2[7] + 8 * result) = v26;
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v14;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v14 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t ReadingGoalsDataStore.__allocating_init(localStore:syncStore:)(uint64_t *a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  ReadingGoalsDataStore.init(localStore:syncStore:)(a1, a2);
  return v4;
}

uint64_t sub_100153FD8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_1001C6408();
  v4 = 0;
  v15 = result;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v4;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_100178A6C(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(a1 + 64 + 8 * v9);
    ++v4;
    if (v7)
    {
      v4 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t ReadingGoalsDataStore.onRemoteChange.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  sub_1001575A0(v1);
  return v1;
}

uint64_t ReadingGoalsDataStore.onRemoteChange.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 96);
  v6 = *(v2 + 104);
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return sub_1000044D8(v5);
}

uint64_t ReadingGoalsDataStore.init(localStore:syncStore:)(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  sub_1000B3A90(a1, v2 + 16);
  sub_1000B3A90(a2, v2 + 56);
  sub_10009BB74(a2, a2[3]);
  DynamicType = swift_getDynamicType();
  v7 = a2[4];
  v8 = [objc_opt_self() defaultCenter];
  v9 = *(v7 + 16);

  v10 = v9(DynamicType, v7);
  v11 = a2[3];
  v12 = sub_10009BB74(a2, v11);
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16);
  v17 = sub_1001C6CF8();
  (*(v13 + 8))(v16, v11);
  [v8 addObserver:v3 selector:"handleCloudChangeNotification:" name:v10 object:v17];

  swift_unknownObjectRelease();
  v18 = a2[3];
  v19 = a2[4];
  sub_10009BB74(a2, v18);
  if ((*(v19 + 24))(v18, v19))
  {
    v22 = 0;
    sub_1001544F0(&v22, a2, a1);
    v22 = 1;
    sub_1001544F0(&v22, a2, a1);
  }

  else
  {
    sub_1001C6598();
    if (qword_10026EBE8 != -1)
    {
      swift_once();
    }

    sub_1001C5118();
  }

  sub_10008E7BC(a2);
  sub_10008E7BC(a1);
  return v3;
}

uint64_t sub_1001544F0(unsigned __int8 *a1, void *a2, void *a3)
{
  v4 = *a1;
  v5 = a2[3];
  v6 = a2[4];
  sub_10009BB74(a2, v5);
  v7 = v4 == 0;
  if (v4)
  {
    v8 = 0xD000000000000016;
  }

  else
  {
    v8 = 0xD00000000000001ALL;
  }

  if (v7)
  {
    v9 = "lly";
  }

  else
  {
    v9 = "ReadingGoals.BooksFinished";
  }

  v10 = v9 | 0x8000000000000000;
  v11 = (*(*(v6 + 8) + 8))(v8, v9 | 0x8000000000000000, v5);

  v12 = a3[3];
  v13 = a3[4];
  sub_10009BB74(a3, v12);
  (*(v13 + 16))(v11, v8, v10, v12, v13);

  sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1001F0660;
  *(v14 + 56) = &type metadata for String;
  v15 = sub_100084570();
  *(v14 + 64) = v15;
  *(v14 + 32) = v8;
  *(v14 + 40) = v10;
  if (v11)
  {
    v18 = sub_100084528(&qword_100273150, &unk_1001F6AF8);
    v19 = sub_10015753C();
    *&v17 = v11;
    sub_100100DF0(&v17, v14 + 72);
  }

  else
  {
    *(v14 + 96) = &type metadata for String;
    *(v14 + 104) = v15;
    *(v14 + 72) = 7104878;
    *(v14 + 80) = 0xE300000000000000;
  }

  sub_1001C5118();
}

uint64_t sub_1001546FC()
{
  v1 = v0;
  v2 = sub_1001C4858();
  if (!v2)
  {
LABEL_25:
    sub_1001C6598();
    if (qword_10026EBE8 != -1)
    {
      swift_once();
    }

    return sub_1001C5118();
  }

  v3 = v2;
  v35 = sub_1001C6018();
  sub_1001C6968();
  if (!*(v3 + 16) || (v4 = sub_100187A1C(v37), (v5 & 1) == 0))
  {

    sub_10008EB7C(v37);
    goto LABEL_25;
  }

  sub_10008EBD0(*(v3 + 56) + 32 * v4, v38);
  sub_10008EB7C(v37);
  v6 = &type metadata for Int;
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_25;
  }

  v7 = v35;
  sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
LABEL_40:
    swift_once();
  }

  sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1001F0670;
  *(v8 + 56) = v6;
  *(v8 + 64) = &protocol witness table for Int;
  *(v8 + 32) = v7;
  sub_1001C5118();

  if (v7 <= 1)
  {
    v36 = sub_1001C6018();
    sub_1001C6968();
    if (*(v3 + 16) && (v9 = sub_100187A1C(v37), (v10 & 1) != 0))
    {
      sub_10008EBD0(*(v3 + 56) + 32 * v9, v38);
      sub_10008EB7C(v37);

      sub_100084528(&unk_10026FED0, &unk_1001F1450);
      if (swift_dynamicCast())
      {
        v37[0] = _swiftEmptyArrayStorage;
        sub_1000D3898(0, 2, 0);
        v11 = v37[0];
        v13 = *(v37[0] + 16);
        v12 = *(v37[0] + 24);
        v14 = v12 >> 1;
        v15 = v13 + 1;
        if (v12 >> 1 <= v13)
        {
          sub_1000D3898((v12 > 1), v13 + 1, 1);
          v15 = v13 + 1;
          v11 = v37[0];
          v12 = *(v37[0] + 24);
          v14 = v12 >> 1;
        }

        *(v11 + 16) = v15;
        v16 = v11 + 16 * v13;
        *(v16 + 32) = 0xD00000000000001ALL;
        *(v16 + 40) = 0x80000001002035C0;
        v17 = v13 + 2;
        if (v14 <= v15)
        {
          v34 = v15;
          sub_1000D3898((v12 > 1), v17, 1);
          v15 = v34;
          v11 = v37[0];
        }

        *(v11 + 16) = v17;
        v18 = v11 + 16 * v15;
        *(v18 + 32) = 0xD000000000000016;
        *(v18 + 40) = 0x80000001002035E0;
        v6 = sub_100157694(v11);

        v19 = sub_100157694(v36);

        v3 = sub_100156E88(v19, v6);

        v38[0] = 0;
        v20 = 1 << *(v3 + 32);
        v21 = -1;
        if (v20 < 64)
        {
          v21 = ~(-1 << v20);
        }

        v7 = v21 & *(v3 + 56);
        v22 = (v20 + 63) >> 6;

        v23 = 0;
        if (v7)
        {
          while (1)
          {
            v24 = v23;
LABEL_22:
            v25 = (*(v3 + 48) + ((v24 << 10) | (16 * __clz(__rbit64(v7)))));
            v6 = v25[1];
            v7 &= v7 - 1;
            v37[0] = *v25;
            v37[1] = v6;

            sub_100154D68(v37, v1, v38);

            if (!v7)
            {
              goto LABEL_18;
            }
          }
        }

        while (1)
        {
LABEL_18:
          v24 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            __break(1u);
            goto LABEL_40;
          }

          if (v24 >= v22)
          {
            break;
          }

          v7 = *(v3 + 56 + 8 * v24);
          ++v23;
          if (v7)
          {
            v23 = v24;
            goto LABEL_22;
          }
        }

        if (v38[0] == 1)
        {
          result = swift_beginAccess();
          v31 = v1[12];
          if (v31)
          {
            v32 = v1[13];

            v31(v33);
            return sub_1000044D8(v31);
          }
        }

        return result;
      }
    }

    else
    {

      sub_10008EB7C(v37);
    }

    goto LABEL_32;
  }

  if (v7 == 3)
  {
    sub_1001C6588();
    sub_1001C5118();
    v27 = v1[5];
    v28 = v1[6];
    sub_10009BB74(v1 + 2, v27);
    (*(v28 + 16))(0, 0xD00000000000001ALL, 0x80000001002035C0, v27, v28);

    v29 = v1[5];
    v30 = v1[6];
    sub_10009BB74(v1 + 2, v29);
    (*(v30 + 16))(0, 0xD000000000000016, 0x80000001002035E0, v29, v30);
  }

  if (v7 == 2)
  {
LABEL_32:
    sub_1001C6598();
    return sub_1001C5118();
  }

  return result;
}

uint64_t sub_100154D68(uint64_t *a1, void *a2, _BYTE *a3)
{
  v6 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v62 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v54 - v10;
  v12 = sub_1001C4CA8();
  v64 = *(v12 - 8);
  v65 = v12;
  v13 = *(v64 + 64);
  v14 = __chkstk_darwin(v12);
  v61 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v63 = &v54 - v16;
  v18 = *a1;
  v17 = a1[1];
  v19 = a2[5];
  v20 = a2[6];
  sub_10009BB74(a2 + 2, v19);
  v21 = (*(v20 + 8))(v18, v17, v19, v20);
  v22 = a2[10];
  v23 = a2[11];
  sub_10009BB74(a2 + 7, v22);
  v24 = (*(*(v23 + 8) + 8))(v18, v17, v22);
  v25 = v24;
  if (!v21)
  {
LABEL_11:
    v32 = a2[5];
    v33 = a2[6];
    sub_10009BB74(a2 + 2, v32);
    (*(v33 + 16))(v25, v18, v17, v32, v33);

LABEL_13:
    *a3 = 1;
    return result;
  }

  if (!v24)
  {

    v35 = a2[5];
    v36 = a2[6];
    sub_10009BB74(a2 + 2, v35);
    result = (*(v36 + 16))(0, v18, v17, v35, v36);
    goto LABEL_13;
  }

  if (!*(v21 + 16) || (v26 = sub_100187B3C(1702125924, 0xE400000000000000), (v27 & 1) == 0))
  {

    (*(v64 + 56))(v11, 1, 1, v65);
    goto LABEL_8;
  }

  sub_10008EBD0(*(v21 + 56) + 32 * v26, v66);
  v28 = v65;
  v29 = swift_dynamicCast();
  v30 = v64;
  v59 = *(v64 + 56);
  v60 = v64 + 56;
  v59(v11, v29 ^ 1u, 1, v28);
  v57 = *(v30 + 48);
  v58 = v30 + 48;
  if (v57(v11, 1, v28) == 1)
  {

LABEL_8:
    sub_10015772C(v11);
    sub_1001C6598();
    if (qword_10026EBE8 != -1)
    {
      swift_once();
    }

    sub_100084528(&qword_10026FEE0, &unk_1001F0690);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1001F0670;
    *(v31 + 56) = &type metadata for String;
    *(v31 + 64) = sub_100084570();
    *(v31 + 32) = v18;
    *(v31 + 40) = v17;

    sub_1001C5118();

    goto LABEL_11;
  }

  v55 = *(v30 + 32);
  v56 = v30 + 32;
  v55(v63, v11, v28);
  if (!*(v25 + 16) || (v37 = sub_100187B3C(1702125924, 0xE400000000000000), (v38 & 1) == 0))
  {

    v39 = v62;
    v59(v62, 1, 1, v28);
    goto LABEL_19;
  }

  sub_10008EBD0(*(v25 + 56) + 32 * v37, v66);
  v39 = v62;
  v40 = swift_dynamicCast();
  v59(v39, v40 ^ 1u, 1, v28);
  if (v57(v39, 1, v28) == 1)
  {

LABEL_19:
    v41 = v63;
    sub_10015772C(v39);
    sub_1001C6598();
    if (qword_10026EBE8 != -1)
    {
      swift_once();
    }

    sub_100084528(&qword_10026FEE0, &unk_1001F0690);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1001F0670;
    *(v42 + 56) = &type metadata for String;
    *(v42 + 64) = sub_100084570();
    *(v42 + 32) = v18;
    *(v42 + 40) = v17;

    sub_1001C5118();

    v43 = a2[10];
    v44 = a2[11];
    sub_10009BB74(a2 + 7, v43);
    (*(*(v44 + 8) + 16))(v21, v18, v17, v43);

    return (*(v64 + 8))(v41, v65);
  }

  v55(v61, v39, v28);
  v45 = v63;
  if ((sub_1001C4C48() & 1) == 0)
  {

    v51 = a2[5];
    v50 = a2[6];
    sub_10009BB74(a2 + 2, v51);
    (*(v50 + 16))(v25, v18, v17, v51, v50);

    v52 = v65;
    v53 = *(v64 + 8);
    v53(v61, v65);
    result = (v53)(v45, v52);
    goto LABEL_13;
  }

  v46 = a2[10];
  v47 = a2[11];
  sub_10009BB74(a2 + 7, v46);
  (*(*(v47 + 8) + 16))(v21, v18, v17, v46);

  v48 = v65;
  v49 = *(v64 + 8);
  v49(v61, v65);
  return (v49)(v45, v48);
}

uint64_t *ReadingGoalsDataStore.deinit()
{
  sub_10008E7BC(v0 + 2);
  sub_10008E7BC(v0 + 7);
  v1 = v0[13];
  sub_1000044D8(v0[12]);
  return v0;
}

uint64_t ReadingGoalsDataStore.__deallocating_deinit()
{
  sub_10008E7BC(v0 + 2);
  sub_10008E7BC(v0 + 7);
  v1 = v0[13];
  sub_1000044D8(v0[12]);

  return swift_deallocClassInstance();
}

uint64_t sub_100155664(char a1)
{
  v3 = v1[5];
  v4 = v1[6];
  sub_10009BB74(v1 + 2, v3);
  if (a1)
  {
    v5 = 0xD000000000000016;
  }

  else
  {
    v5 = 0xD00000000000001ALL;
  }

  if (a1)
  {
    v6 = "ReadingGoals.BooksFinished";
  }

  else
  {
    v6 = "lly";
  }

  v7 = (*(v4 + 8))(v5, v6 | 0x8000000000000000, v3, v4);

  if (v7)
  {
    if (*(v7 + 16))
    {
      v8 = sub_100187B3C(1818324839, 0xE400000000000000);
      if (v9)
      {
        sub_10008EBD0(*(v7 + 56) + 32 * v8, v13);

        goto LABEL_13;
      }
    }
  }

  memset(v13, 0, sizeof(v13));
LABEL_13:
  sub_100084528(&qword_10026FCB0, &unk_1001F14E0);
  v10 = swift_dynamicCast();
  v11 = v14;
  if (!v10)
  {
    return 0;
  }

  return v11;
}

uint64_t ReadingGoalsDataStore.value<A>(for:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = v3[5];
  v8 = v3[6];
  sub_10009BB74(v3 + 2, v7);
  if (a1)
  {
    v9 = 0xD000000000000016;
  }

  else
  {
    v9 = 0xD00000000000001ALL;
  }

  if (a1)
  {
    v10 = "ReadingGoals.BooksFinished";
  }

  else
  {
    v10 = "lly";
  }

  v11 = (*(v8 + 8))(v9, v10 | 0x8000000000000000, v7, v8);

  if (!v11)
  {
    goto LABEL_12;
  }

  if (!*(v11 + 16) || (v12 = sub_100187B3C(1818324839, 0xE400000000000000), (v13 & 1) == 0))
  {

LABEL_12:
    memset(v16, 0, sizeof(v16));
    goto LABEL_13;
  }

  sub_10008EBD0(*(v11 + 56) + 32 * v12, v16);

LABEL_13:
  sub_100084528(&qword_10026FCB0, &unk_1001F14E0);
  v14 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v14 ^ 1u, 1, a2);
}

uint64_t sub_1001558FC(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_1001C4CA8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v25 - v12;
  sub_100084528(&qword_100273168, &qword_1001F6B08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001F0660;
  *(inited + 32) = 1818324839;
  *(inited + 40) = 0xE400000000000000;
  v25 = a1;
  sub_1001C6968();
  *(inited + 88) = 1702125924;
  *(inited + 96) = 0xE400000000000000;
  sub_1001C4C98();
  (*(v7 + 16))(v11, v13, v6);
  sub_1001406E8();
  sub_1001C6968();
  (*(v7 + 8))(v13, v6);
  v15 = sub_100118DE4(inited);
  swift_setDeallocating();
  sub_100084528(&qword_1002718A8, &qword_1001F6B10);
  swift_arrayDestroy();
  v16 = v3[5];
  v17 = v3[6];
  sub_10009BB74(v3 + 2, v16);
  v18 = sub_1001536D8(v15);
  if (a2)
  {
    v19 = 0xD000000000000016;
  }

  else
  {
    v19 = 0xD00000000000001ALL;
  }

  if (a2)
  {
    v20 = "ReadingGoals.BooksFinished";
  }

  else
  {
    v20 = "lly";
  }

  (*(v17 + 16))(v18, v19, v20 | 0x8000000000000000, v16, v17);

  v21 = v3[10];
  v22 = v3[11];
  sub_10009BB74(v3 + 7, v21);
  v23 = sub_1001536D8(v15);

  (*(*(v22 + 8) + 16))(v23, v19, v20 | 0x8000000000000000, v21);
}

uint64_t sub_100155BCC(char a1, double a2)
{
  v3 = v2;
  v6 = sub_1001C4CA8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v25 - v12;
  sub_100084528(&qword_100273168, &qword_1001F6B08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001F0660;
  *(inited + 32) = 1818324839;
  *(inited + 40) = 0xE400000000000000;
  *&v25[1] = a2;
  sub_1001C6968();
  *(inited + 88) = 1702125924;
  *(inited + 96) = 0xE400000000000000;
  sub_1001C4C98();
  (*(v7 + 16))(v11, v13, v6);
  sub_1001406E8();
  sub_1001C6968();
  (*(v7 + 8))(v13, v6);
  v15 = sub_100118DE4(inited);
  swift_setDeallocating();
  sub_100084528(&qword_1002718A8, &qword_1001F6B10);
  swift_arrayDestroy();
  v16 = v3[5];
  v17 = v3[6];
  sub_10009BB74(v3 + 2, v16);
  v18 = sub_1001536D8(v15);
  if (a1)
  {
    v19 = 0xD000000000000016;
  }

  else
  {
    v19 = 0xD00000000000001ALL;
  }

  if (a1)
  {
    v20 = "ReadingGoals.BooksFinished";
  }

  else
  {
    v20 = "lly";
  }

  (*(v17 + 16))(v18, v19, v20 | 0x8000000000000000, v16, v17);

  v21 = v3[10];
  v22 = v3[11];
  sub_10009BB74(v3 + 7, v21);
  v23 = sub_1001536D8(v15);

  (*(*(v22 + 8) + 16))(v23, v19, v20 | 0x8000000000000000, v21);
}

uint64_t ReadingGoalsDataStore.set<A>(value:forGoal:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v25[1] = a4;
  v26 = a2;
  v6 = sub_1001C4CA8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v25 - v12;
  sub_100084528(&qword_100273168, &qword_1001F6B08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001F0660;
  *(inited + 32) = 1818324839;
  *(inited + 40) = 0xE400000000000000;
  sub_1001C6B98();
  *(inited + 88) = 1702125924;
  *(inited + 96) = 0xE400000000000000;
  sub_1001C4C98();
  (*(v7 + 16))(v11, v13, v6);
  sub_1001406E8();
  sub_1001C6968();
  (*(v7 + 8))(v13, v6);
  v15 = sub_100118DE4(inited);
  swift_setDeallocating();
  sub_100084528(&qword_1002718A8, &qword_1001F6B10);
  swift_arrayDestroy();
  v16 = v5[5];
  v17 = v5[6];
  sub_10009BB74(v5 + 2, v16);
  v18 = sub_1001536D8(v15);
  if (v26)
  {
    v19 = 0xD000000000000016;
  }

  else
  {
    v19 = 0xD00000000000001ALL;
  }

  if (v26)
  {
    v20 = "ReadingGoals.BooksFinished";
  }

  else
  {
    v20 = "lly";
  }

  (*(v17 + 16))(v18, v19, v20 | 0x8000000000000000, v16, v17);

  v21 = v5[10];
  v22 = v5[11];
  sub_10009BB74(v5 + 7, v21);
  v23 = sub_1001536D8(v15);

  (*(*(v22 + 8) + 16))(v23, v19, v20 | 0x8000000000000000, v21);
}

Swift::Void __swiftcall ReadingGoalsDataStore.clearData()()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_10009BB74(v0 + 2, v1);
  (*(v2 + 16))(0, 0xD00000000000001ALL, 0x80000001002035C0, v1, v2);

  v3 = v0[10];
  v4 = v0[11];
  sub_10009BB74(v0 + 7, v3);
  (*(*(v4 + 8) + 16))(0, 0xD00000000000001ALL, 0x80000001002035C0, v3);

  v5 = v0[5];
  v6 = v0[6];
  sub_10009BB74(v0 + 2, v5);
  (*(v6 + 16))(0, 0xD000000000000016, 0x80000001002035E0, v5, v6);

  v7 = v0[10];
  v8 = v0[11];
  sub_10009BB74(v0 + 7, v7);
  (*(*(v8 + 8) + 16))(0, 0xD000000000000016, 0x80000001002035E0, v7);
}

uint64_t ReadingGoalsDataStore.state.getter()
{
  v0 = sub_100155664(0);
  if (v1)
  {
    v2 = 3;
  }

  else
  {
    v2 = v0;
  }

  sub_100155664(1);
  return v2;
}

uint64_t sub_100156398()
{
  v1 = *v0;
  v2 = sub_100155664(0);
  if (v3)
  {
    v4 = 3;
  }

  else
  {
    v4 = v2;
  }

  sub_100155664(1);
  return v4;
}

uint64_t sub_100156400()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 96);
  v3 = *(v1 + 104);
  sub_1001575A0(v2);
  return v2;
}

uint64_t sub_100156454(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  v6 = *(v5 + 96);
  v7 = *(v5 + 104);
  *(v5 + 96) = a1;
  *(v5 + 104) = a2;
  return sub_1000044D8(v6);
}

uint64_t (*sub_1001564AC())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess;
}

void *sub_100156574(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_10015704C(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_100156604(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100084528(&qword_100273268, &unk_1001F6BF8);
  result = sub_1001C69A8();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v9[5];
    sub_1001C6DF8();
    sub_1001C6E08(v17);
    sub_1001C6E08(v18);
    result = sub_1001C6E28();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (v9[6] + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_100156828(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100084528(&qword_100273240, qword_1001F6BC8);
  result = sub_1001C69A8();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(v4 + 48) + 24 * (v13 | (v11 << 6));
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    v20 = v9[5];
    sub_1001C6DF8();

    sub_1001C60E8();
    sub_1001C6E18(v19);
    result = sub_1001C6E28();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = v9[6] + 24 * v24;
    *v29 = v17;
    *(v29 + 8) = v18;
    *(v29 + 16) = v19;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v31;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_100156A70(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100084528(&unk_100273230, &qword_1001F6BC0);
  result = sub_1001C69A8();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v9[5];
    sub_1001C6DF8();

    sub_1001C60E8();
    result = sub_1001C6E28();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (v9[6] + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_100156C94(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100084528(&qword_100273258, &unk_1001F6BE8);
  result = sub_1001C69A8();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = v9[5];
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_1001C6798(v16);
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 8 * v21) = v17;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_100156E88(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    bzero(&v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_10015704C(&v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_100156574(v11, v6, a2, a1);
  }

  return v9;
}

uint64_t sub_10015704C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v52 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v55 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v53 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v53);
      v25 = *v23;
      v24 = v23[1];
      v26 = *(v4 + 40);
      sub_1001C6DF8();

      sub_1001C60E8();
      v27 = sub_1001C6E28();
      v28 = -1 << *(v4 + 32);
      v29 = v27 & ~v28;
      if ((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
      {
        v30 = ~v28;
        while (1)
        {
          v31 = (*(a4 + 48) + 16 * v29);
          v32 = *v31 == v25 && v31[1] == v24;
          if (v32 || (sub_1001C6D08() & 1) != 0)
          {
            break;
          }

          v29 = (v29 + 1) & v30;
          if (((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v52 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        if (v33)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_100156A70(v52, a2, v55, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v55 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v51 = v11;
    while (v10)
    {
      v34 = __clz(__rbit64(v10));
      v54 = (v10 - 1) & v10;
LABEL_41:
      v37 = (*(v4 + 48) + 16 * (v34 | (v6 << 6)));
      v39 = *v37;
      v38 = v37[1];
      v40 = *(v5 + 40);
      sub_1001C6DF8();

      sub_1001C60E8();
      v41 = sub_1001C6E28();
      v42 = -1 << *(v5 + 32);
      v43 = v41 & ~v42;
      v44 = v43 >> 6;
      v45 = 1 << v43;
      if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) != 0)
      {
        v46 = (*(v5 + 48) + 16 * v43);
        if (*v46 != v39 || v46[1] != v38)
        {
          v48 = ~v42;
          while ((sub_1001C6D08() & 1) == 0)
          {
            v43 = (v43 + 1) & v48;
            v44 = v43 >> 6;
            v45 = 1 << v43;
            if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v49 = (*(a3 + 48) + 16 * v43);
            if (*v49 == v39 && v49[1] == v38)
            {
              break;
            }
          }
        }

        v11 = v51;
        v52[v44] |= v45;
        v5 = a3;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        v10 = v54;
        if (v33)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v51;
        v10 = v54;
      }
    }

    v35 = v6;
    while (1)
    {
      v6 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v36 = *(v7 + 8 * v6);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v54 = (v36 - 1) & v36;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t _s14bookdatastored21ReadingGoalsDataStoreC011clearCachedD02inyAA0b4GoaldE8Protocol_p_tFZ_0(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  sub_10009BB74(a1, v2);
  (*(v3 + 16))(0, 0xD00000000000001ALL, 0x80000001002035C0, v2, v3);

  v4 = a1[3];
  v5 = a1[4];
  sub_10009BB74(a1, v4);
  (*(v5 + 16))(0, 0xD000000000000016, 0x80000001002035E0, v4, v5);
}

unint64_t sub_10015753C()
{
  result = qword_100273158;
  if (!qword_100273158)
  {
    sub_1000885AC(&qword_100273150, &unk_1001F6AF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100273158);
  }

  return result;
}

uint64_t sub_1001575A0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1001575F4(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100110100();
  result = sub_1001C6408();
  v9 = result;
  if (v2)
  {
    v4 = (a1 + 48);
    do
    {
      v5 = *v4;
      v7 = *(v4 - 2);
      v6 = *(v4 - 1);

      sub_1001788CC(&v8, v7, v6, v5);

      v4 += 24;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_100157694(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_1001C6408();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100178A6C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_10015772C(uint64_t a1)
{
  v2 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100157794(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_10015782C();
  result = sub_1001C6408();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100178BBC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_10015782C()
{
  result = qword_100273248;
  if (!qword_100273248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100273248);
  }

  return result;
}

uint64_t sub_1001578DC()
{
  v1 = v0;
  v2 = type metadata accessor for ReadingHistoryModel(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100084528(&unk_10026FC40, &qword_1001F0E90);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v14 - v8;
  sub_10009ADF0(v1, v14 - v8, &unk_10026FC40, &qword_1001F0E90);
  v10 = sub_100084528(&qword_100270A40, &unk_1001F0E60);
  v11 = (*(*(v10 - 8) + 48))(v9, 2, v10);
  if (v11)
  {
    if (v11 == 1)
    {
      return 0x6C61636F6CLL;
    }

    else
    {
      return 0x6465726F7473;
    }
  }

  else
  {
    sub_100159420(v9, v5, type metadata accessor for ReadingHistoryModel);
    v14[0] = 0x2865746F6D6572;
    v14[1] = 0xE700000000000000;
    v15._countAndFlagsBits = ReadingHistoryModel.description.getter();
    sub_1001C6138(v15);

    v16._countAndFlagsBits = 41;
    v16._object = 0xE100000000000000;
    sub_1001C6138(v16);
    v13 = v14[0];
    sub_100158988(v5, type metadata accessor for ReadingHistoryModel);
    return v13;
  }
}

uint64_t ReadingHistory.ModelSnapshot.ModelValues.init(readingDay:longestStreak:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues(0) + 20);
  v11 = type metadata accessor for ReadingHistory.Streak(0);
  (*(*(v11 - 8) + 56))(a5 + v10, 1, 1, v11);
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  return sub_1000B36A8(a4, a5 + v10, &qword_10026F508, &qword_1001F1150);
}

uint64_t ReadingHistory.ModelSnapshot.init(loaded:lastSource:modelValues:remoteModelValues:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v10 = type metadata accessor for ReadingHistory.ModelSnapshot(0);
  v11 = v10[7];
  v12 = type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues(0);
  (*(*(v12 - 8) + 56))(&a5[v11], 1, 1, v12);
  *a5 = a1 & 1;
  sub_100157CA4(a2, &a5[v10[5]]);
  sub_100159420(a3, &a5[v10[6]], type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues);
  return sub_1000B36A8(a4, &a5[v11], &unk_10026F520, &unk_1001F1160);
}

uint64_t sub_100157CA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100084528(&unk_10026FC40, &qword_1001F0E90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ReadingHistory.ModelSnapshot.ModelValues.readingDay.getter()
{
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

uint64_t ReadingHistory.ModelSnapshot.ModelValues.readingDay.setter(uint64_t result, uint64_t a2, char a3)
{
  *v3 = result;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3;
  return result;
}

uint64_t ReadingHistory.ModelSnapshot.ModelValues.description.getter()
{
  v1 = sub_100084528(&qword_10026F508, &qword_1001F1150);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v20 - v3;
  sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1001F0660;
  v6 = *(v0 + 16);
  if (v6 == 2)
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v7 = ReadingHistory.Day.description.getter(*v0, *(v0 + 8), v6 & 1);
    v8 = v9;
  }

  *(v5 + 56) = &type metadata for String;
  v10 = sub_100084570();
  *(v5 + 64) = v10;
  if (v8)
  {
    v11 = v7;
  }

  else
  {
    v11 = 7104878;
  }

  v12 = 0xE300000000000000;
  if (v8)
  {
    v12 = v8;
  }

  *(v5 + 32) = v11;
  *(v5 + 40) = v12;
  v13 = type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues(0);
  sub_10009ADF0(v0 + *(v13 + 20), v4, &qword_10026F508, &qword_1001F1150);
  v14 = type metadata accessor for ReadingHistory.Streak(0);
  if ((*(*(v14 - 8) + 48))(v4, 1, v14) == 1)
  {
    sub_10008875C(v4, &qword_10026F508, &qword_1001F1150);
    v15 = (v5 + 72);
    *(v5 + 96) = &type metadata for String;
    *(v5 + 104) = v10;
LABEL_13:
    *v15 = 7104878;
    v18 = 0xE300000000000000;
    goto LABEL_14;
  }

  v16 = ReadingHistory.Streak.description.getter();
  v18 = v17;
  sub_100158988(v4, type metadata accessor for ReadingHistory.Streak);
  v15 = (v5 + 72);
  *(v5 + 96) = &type metadata for String;
  *(v5 + 104) = v10;
  if (!v18)
  {
    goto LABEL_13;
  }

  *v15 = v16;
LABEL_14:
  *(v5 + 80) = v18;
  return sub_1001C6048();
}

uint64_t ReadingHistory.ModelSnapshot.modelValues.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ReadingHistory.ModelSnapshot(0) + 24);

  return sub_1001588C0(v3, a1);
}

uint64_t ReadingHistory.ModelSnapshot.modelValues.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ReadingHistory.ModelSnapshot(0) + 24);

  return sub_100158924(a1, v3);
}

uint64_t ReadingHistory.ModelSnapshot.description.getter()
{
  v1 = v0;
  v2 = sub_100084528(&unk_10026F520, &unk_1001F1160);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v25 - v4;
  sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v6 = swift_allocObject();
  v7 = v6;
  *(v6 + 16) = xmmword_1001F0CF0;
  v8 = *v0 == 0;
  if (*v0)
  {
    v9 = 0x7964616572;
  }

  else
  {
    v9 = 0x676E6964616F6CLL;
  }

  if (v8)
  {
    v10 = 0xE700000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  *(v6 + 56) = &type metadata for String;
  v11 = sub_100084570();
  v7[8] = v11;
  v7[4] = v9;
  v7[5] = v10;
  v12 = type metadata accessor for ReadingHistory.ModelSnapshot(0);
  v13 = &v1[v12[5]];
  v14 = sub_1001578DC();
  v7[12] = &type metadata for String;
  v7[13] = v11;
  v7[9] = v14;
  v7[10] = v15;
  v16 = &v1[v12[6]];
  v17 = ReadingHistory.ModelSnapshot.ModelValues.description.getter();
  v7[17] = &type metadata for String;
  v7[18] = v11;
  v7[14] = v17;
  v7[15] = v18;
  sub_10009ADF0(&v1[v12[7]], v5, &unk_10026F520, &unk_1001F1160);
  v19 = type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues(0);
  if ((*(*(v19 - 8) + 48))(v5, 1, v19) == 1)
  {
    sub_10008875C(v5, &unk_10026F520, &unk_1001F1160);
    v20 = v7 + 19;
    v7[22] = &type metadata for String;
    v7[23] = v11;
LABEL_11:
    *v20 = 7104878;
    v23 = 0xE300000000000000;
    goto LABEL_12;
  }

  v21 = ReadingHistory.ModelSnapshot.ModelValues.description.getter();
  v23 = v22;
  sub_100158988(v5, type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues);
  v20 = v7 + 19;
  v7[22] = &type metadata for String;
  v7[23] = v11;
  if (!v23)
  {
    goto LABEL_11;
  }

  *v20 = v21;
LABEL_12:
  v7[20] = v23;
  return sub_1001C6048();
}

BOOL _s14bookdatastored14ReadingHistoryO13ModelSnapshotV0D6ValuesV23__derived_struct_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingHistory.Streak(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100084528(&qword_10026F508, &qword_1001F1150);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v32 - v11;
  v13 = sub_100084528(&qword_100270580, &qword_1001F2BB8);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v32 - v16;
  v18 = *(a1 + 16);
  v19 = *(a2 + 16);
  if (v18 == 2)
  {
    if (v19 != 2)
    {
      return 0;
    }

    goto LABEL_8;
  }

  if (v19 == 2)
  {
    return 0;
  }

  v20 = 0;
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && ((v19 ^ v18) & 1) == 0)
  {
LABEL_8:
    v33 = v8;
    v21 = v15;
    v22 = *(type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues(0) + 20);
    v23 = *(v21 + 48);
    sub_10009ADF0(a1 + v22, v17, &qword_10026F508, &qword_1001F1150);
    sub_10009ADF0(a2 + v22, &v17[v23], &qword_10026F508, &qword_1001F1150);
    v24 = *(v5 + 48);
    if (v24(v17, 1, v4) == 1)
    {
      if (v24(&v17[v23], 1, v4) == 1)
      {
        sub_10008875C(v17, &qword_10026F508, &qword_1001F1150);
        return 1;
      }
    }

    else
    {
      sub_10009ADF0(v17, v12, &qword_10026F508, &qword_1001F1150);
      if (v24(&v17[v23], 1, v4) != 1)
      {
        v28 = v33;
        sub_100159420(&v17[v23], v33, type metadata accessor for ReadingHistory.Streak);
        if (sub_1001C4C68())
        {
          v29 = *(v4 + 20);
          v30 = *&v12[v29];
          v31 = *(v28 + v29);
          sub_100158988(v28, type metadata accessor for ReadingHistory.Streak);
          sub_100158988(v12, type metadata accessor for ReadingHistory.Streak);
          sub_10008875C(v17, &qword_10026F508, &qword_1001F1150);
          return v30 == v31;
        }

        sub_100158988(v28, type metadata accessor for ReadingHistory.Streak);
        sub_100158988(v12, type metadata accessor for ReadingHistory.Streak);
        v25 = &qword_10026F508;
        v26 = &qword_1001F1150;
        goto LABEL_15;
      }

      sub_100158988(v12, type metadata accessor for ReadingHistory.Streak);
    }

    v25 = &qword_100270580;
    v26 = &qword_1001F2BB8;
LABEL_15:
    sub_10008875C(v17, v25, v26);
    return 0;
  }

  return v20;
}

uint64_t sub_1001588C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100158924(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100158988(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL _s14bookdatastored14ReadingHistoryO13ModelSnapshotV23__derived_struct_equalsySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues(0);
  v60 = *(v4 - 8);
  v5 = *(v60 + 64);
  __chkstk_darwin(v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100084528(&unk_10026F520, &unk_1001F1160);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v57 = &v51 - v10;
  v59 = sub_100084528(&qword_1002733D8, &qword_1001F6C80);
  v11 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59);
  v13 = &v51 - v12;
  v58 = type metadata accessor for ReadingHistoryModel(0);
  v14 = *(*(v58 - 8) + 64);
  v15 = __chkstk_darwin(v58);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v51 - v18;
  v20 = sub_100084528(&unk_10026FC40, &qword_1001F0E90);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v51 - v22;
  v24 = sub_100084528(&qword_10026FAE8, &unk_1001F1940);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24);
  v27 = &v51 - v26;
  if (*a1 != *a2)
  {
    return 0;
  }

  v52 = v4;
  v53 = v13;
  v51 = v7;
  v54 = type metadata accessor for ReadingHistory.ModelSnapshot(0);
  v55 = a1;
  v28 = *(v54 + 20);
  v29 = *(v24 + 48);
  sub_10009ADF0(&a1[v28], v27, &unk_10026FC40, &qword_1001F0E90);
  v56 = a2;
  sub_10009ADF0(&a2[v28], &v27[v29], &unk_10026FC40, &qword_1001F0E90);
  v30 = sub_100084528(&qword_100270A40, &unk_1001F0E60);
  v31 = *(*(v30 - 8) + 48);
  v32 = v31(v27, 2, v30);
  if (v32)
  {
    if (v32 == 1)
    {
      if (v31(&v27[v29], 2, v30) != 1)
      {
        goto LABEL_14;
      }

      goto LABEL_9;
    }

    if (v31(&v27[v29], 2, v30) == 2)
    {
LABEL_9:
      sub_10008875C(v27, &unk_10026FC40, &qword_1001F0E90);
      goto LABEL_10;
    }

LABEL_14:
    v43 = &qword_10026FAE8;
    v44 = &unk_1001F1940;
LABEL_15:
    v45 = v27;
LABEL_16:
    sub_10008875C(v45, v43, v44);
    return 0;
  }

  sub_10009ADF0(v27, v23, &unk_10026FC40, &qword_1001F0E90);
  if (v31(&v27[v29], 2, v30))
  {
    sub_100158988(v23, type metadata accessor for ReadingHistoryModel);
    goto LABEL_14;
  }

  sub_100159420(v23, v19, type metadata accessor for ReadingHistoryModel);
  sub_100159420(&v27[v29], v17, type metadata accessor for ReadingHistoryModel);
  sub_100159488(&qword_10026F460);
  if (sub_1001C5C38())
  {
    sub_100158988(v17, type metadata accessor for ReadingHistoryModel);
    sub_100158988(v19, type metadata accessor for ReadingHistoryModel);
    v43 = &unk_10026FC40;
    v44 = &qword_1001F0E90;
    goto LABEL_15;
  }

  v47 = sub_1001C5C38();
  sub_100158988(v17, type metadata accessor for ReadingHistoryModel);
  sub_100158988(v19, type metadata accessor for ReadingHistoryModel);
  sub_10008875C(v27, &unk_10026FC40, &qword_1001F0E90);
  if (v47)
  {
    return 0;
  }

LABEL_10:
  v33 = v54;
  v34 = v55;
  v35 = v56;
  if (!_s14bookdatastored14ReadingHistoryO13ModelSnapshotV0D6ValuesV23__derived_struct_equalsySbAG_AGtFZ_0(&v55[*(v54 + 24)], &v56[*(v54 + 24)]))
  {
    return 0;
  }

  v36 = *(v33 + 28);
  v37 = *(v59 + 48);
  v38 = &v34[v36];
  v39 = v53;
  sub_10009ADF0(v38, v53, &unk_10026F520, &unk_1001F1160);
  sub_10009ADF0(&v35[v36], v39 + v37, &unk_10026F520, &unk_1001F1160);
  v40 = *(v60 + 48);
  v41 = v52;
  if (v40(v39, 1, v52) == 1)
  {
    if (v40(v39 + v37, 1, v41) == 1)
    {
      sub_10008875C(v39, &unk_10026F520, &unk_1001F1160);
      return 1;
    }

    goto LABEL_22;
  }

  v46 = v57;
  sub_10009ADF0(v39, v57, &unk_10026F520, &unk_1001F1160);
  if (v40(v39 + v37, 1, v41) == 1)
  {
    sub_100158988(v46, type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues);
LABEL_22:
    v43 = &qword_1002733D8;
    v44 = &qword_1001F6C80;
    v45 = v39;
    goto LABEL_16;
  }

  v48 = v39 + v37;
  v49 = v51;
  sub_100159420(v48, v51, type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues);
  v50 = _s14bookdatastored14ReadingHistoryO13ModelSnapshotV0D6ValuesV23__derived_struct_equalsySbAG_AGtFZ_0(v46, v49);
  sub_100158988(v49, type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues);
  sub_100158988(v46, type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues);
  sub_10008875C(v39, &unk_10026F520, &unk_1001F1160);
  return v50;
}

void sub_1001590F4()
{
  sub_1001591FC(319, &qword_1002732E8, type metadata accessor for ModelState.LoadedState);
  if (v0 <= 0x3F)
  {
    sub_1001591FC(319, &qword_100273300, type metadata accessor for ModelState.Source);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues(319);
      if (v2 <= 0x3F)
      {
        sub_1001593CC(319, &unk_100273308, type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1001591FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for ReadingHistoryModel(255);
    v7 = sub_100159488(&qword_1002732F0);
    v8 = sub_100159488(&qword_1002732F8);
    v9 = a3(a1, v6, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1001592DC()
{
  sub_10015937C();
  if (v0 <= 0x3F)
  {
    sub_1001593CC(319, &qword_10026F708, type metadata accessor for ReadingHistory.Streak);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10015937C()
{
  if (!qword_1002733A8)
  {
    v0 = sub_1001C67F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1002733A8);
    }
  }
}

void sub_1001593CC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1001C67F8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100159420(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100159488(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ReadingHistoryModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t MutableObservableContainer.__allocating_init(value:)(uint64_t a1)
{
  v3 = sub_10015C6B4(a1);
  (*(*(*(v1 + 264) - 8) + 8))(a1);
  return v3;
}

void *ObservableTransaction.__allocating_init(name:transactionProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();

  return sub_10015C2D0(a1, a2, a3);
}

uint64_t MutableObservableContainer.mutate(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 16);
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = v3;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_10015C6F0;
  *(v8 + 24) = v7;
  v11[4] = sub_1000B2E48;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1000906F4;
  v11[3] = &unk_10024A178;
  v9 = _Block_copy(v11);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t ObservableContainer.Event.currentValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(a1 - 8) + 64);
  __chkstk_darwin(a1);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *(a1 + 16);
  if (EnumCaseMultiPayload != 1)
  {
    return (*(*(v9 - 8) + 32))(a2, v6, v9);
  }

  v10 = *(swift_getTupleTypeMetadata2() + 48);
  v11 = *(v9 - 8);
  (*(v11 + 32))(a2, &v6[v10], v9);
  return (*(v11 + 8))(v6, v9);
}

uint64_t MutableObservableContainer.value.getter()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = *(v1 + 264);
  return sub_1001C6688();
}

uint64_t sub_1001598D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = *v3;

  sub_10015B73C(a1, sub_10015D200, v7);
}

uint64_t sub_10015996C(__int128 *a1, uint64_t (*a2)(__int128 *))
{
  v2 = a1[1];
  v4 = *a1;
  v5[0] = v2;
  *(v5 + 10) = *(a1 + 26);
  return a2(&v4);
}

Swift::Void __swiftcall ObservationToken.invalidate()()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v2(v1);
}

uint64_t ObservationToken.deinit()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v2(v1);

  return v1;
}

uint64_t ObservationToken.__deallocating_deinit()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v2(v1);
  v4 = *(v1 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_100159A6C(char *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  v6 = *(v4 + 88);
  v20 = type metadata accessor for ObservableContainer.Event();
  v22 = *(v20 - 8);
  v7 = *(v22 + 64);
  v8 = __chkstk_darwin(v20);
  v10 = &v20 - v9;
  v11 = *(v5 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  v14 = &v20 - v13;
  v15 = *(v4 + 120);
  swift_beginAccess();
  v16 = *(v11 + 16);
  v16(v14, &v2[v15], v5);
  v21 = a1;
  LOBYTE(v6) = sub_1001C5FD8();
  result = (*(v11 + 8))(v14, v5);
  if ((v6 & 1) == 0)
  {
    v18 = *(swift_getTupleTypeMetadata2() + 48);
    v16(v10, v21, v5);
    v16(&v10[v18], &v2[v15], v5);
    v19 = v20;
    swift_storeEnumTagMultiPayload();
    sub_10015A394(v10);
    return (*(v22 + 8))(v10, v19);
  }

  return result;
}

uint64_t ObservableContainer.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 120);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t ObservableContainer.delegate.getter()
{
  v1 = v0 + *(*v0 + 128);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t ObservableContainer.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + *(*v2 + 128);
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ObservableContainer.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(*v1 + 128);
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_100159EF8;
}

void sub_100159EF8(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t ObservableContainer.__allocating_init(value:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  ObservableContainer.init(value:)(a1);
  return v5;
}

char *ObservableContainer.init(value:)(uint64_t a1)
{
  v2 = v1;
  v20 = *v1;
  v21 = a1;
  v19 = sub_1001C6668();
  v3 = *(v19 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v19);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001C6638();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v9 = sub_1001C5688();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  v18[0] = "DataStoreService";
  v18[1] = v11;
  sub_1001C5668();
  v22 = &_swiftEmptyArrayStorage;
  sub_10015D3DC(&unk_10026ECC0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100084528(&unk_10026F2E0, &unk_1001F0D00);
  sub_1000CEAAC(&unk_10026ECD0, &unk_10026F2E0, &unk_1001F0D00);
  sub_1001C68C8();
  v12 = *(v3 + 104);
  v13 = v19;
  v12(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v19);
  *(v1 + 2) = sub_1001C66A8();
  sub_1001C5678();
  sub_1001C6628();
  v12(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v13);
  *(v1 + 3) = sub_1001C66A8();
  v14 = *(v20 + 80);
  v15 = *(v20 + 88);
  type metadata accessor for ObservableContainer.Event();
  swift_getFunctionTypeMetadata1();
  *(v2 + 4) = sub_1001C5EC8();
  v16 = &v2[*(*v2 + 128)];
  *(v16 + 1) = 0;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  *(v16 + 1) = 0;
  swift_unknownObjectWeakAssign();
  (*(*(v14 - 8) + 32))(&v2[*(*v2 + 120)], v21, v14);
  return v2;
}

uint64_t sub_10015A394(uint64_t a1)
{
  v35 = a1;
  v2 = *v1;
  v3 = *v1;
  v4 = sub_1001C5688();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001C5648();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v1 + *(v2 + 128);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = *(v14 + 1);
    ObjectType = swift_getObjectType();
    (*(v15 + 8))(v1, ObjectType, v15);
    swift_unknownObjectRelease();
  }

  v34 = v1[3];
  sub_1001C5638();
  v40 = MarkedAsFinishedMechanism.rawValue.getter;
  v41 = 0;
  aBlock = _NSConcreteStackBlock;
  v37 = 1107296256;
  v38 = sub_1000DD4AC;
  v39 = &unk_10024A4B0;
  v17 = _Block_copy(&aBlock);
  sub_1001C5668();
  sub_1001C6698();
  _Block_release(v17);
  v18 = *(v5 + 8);
  v30 = v5 + 8;
  v33 = v18;
  v18(v8, v4);
  v19 = *(v10 + 8);
  v31 = v10 + 8;
  v32 = v19;
  v19(v13, v9);
  swift_beginAccess();
  v20 = v1[4];
  v22 = *(v3 + 80);
  v21 = *(v3 + 88);
  type metadata accessor for ObservableContainer.Event();
  FunctionTypeMetadata1 = swift_getFunctionTypeMetadata1();
  aBlock = v20;
  __chkstk_darwin(FunctionTypeMetadata1);
  v29 = v4;
  *(&v28 - 4) = v22;
  *(&v28 - 3) = v21;
  *(&v28 - 2) = v35;
  sub_1001C5F58();
  v35 = v9;

  swift_getWitnessTable();
  sub_1001C6238();

  sub_1001C5638();
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  v25[2] = v22;
  v25[3] = v21;
  v25[4] = v24;
  v40 = sub_10015D1F4;
  v41 = v25;
  aBlock = _NSConcreteStackBlock;
  v37 = 1107296256;
  v38 = sub_1000DD4AC;
  v39 = &unk_10024A500;
  v26 = _Block_copy(&aBlock);

  sub_1001C5668();
  sub_1001C6698();
  _Block_release(v26);
  v33(v8, v29);
  v32(v13, v35);
}

uint64_t _s14bookdatastored19ObservableContainerC11addObserver_8callbackyyXl_yAC5EventOyx_GctF_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_10015D29C;
  *(v10 + 24) = v9;
  v13[4] = sub_1000B3DA0;
  v13[5] = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1000906F4;
  v13[3] = &unk_10024A708;
  v11 = _Block_copy(v13);

  swift_unknownObjectRetain();

  dispatch_sync(v8, v11);
  _Block_release(v11);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10015A9E4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v52 = a3;
  v55 = a2;
  v5 = *a1;
  v50 = sub_1001C5688();
  v49 = *(v50 - 8);
  v6 = *(v49 + 64);
  __chkstk_darwin(v50);
  v48 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1001C5648();
  v46 = *(v47 - 8);
  v8 = *(v46 + 64);
  __chkstk_darwin(v47);
  v10 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v5[10];
  v54 = v5[11];
  v12 = type metadata accessor for ObservableContainer.Event();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v16 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = v43 - v17;
  v19 = v5[15];
  swift_beginAccess();
  v20 = *(*(v11 - 8) + 16);
  v53 = v11;
  v20(v18, &a1[v19], v11);
  swift_storeEnumTagMultiPayload();
  v21 = &a1[*(*a1 + 128)];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v22 = *(v21 + 1);
    ObjectType = swift_getObjectType();
    (*(v22 + 8))(a1, ObjectType, v22);
    swift_unknownObjectRelease();
  }

  v43[1] = *(a1 + 3);
  sub_1001C5638();
  v24 = swift_allocObject();
  swift_weakInit();
  (*(v13 + 16))(v16, v18, v12);
  v25 = *(v13 + 80);
  v44 = v13;
  v45 = v18;
  v26 = (v25 + 48) & ~v25;
  v27 = v10;
  v28 = (v14 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  v30 = v54;
  *(v29 + 2) = v53;
  *(v29 + 3) = v30;
  v31 = v52;
  *(v29 + 4) = v55;
  *(v29 + 5) = v31;
  v32 = *(v13 + 32);
  v33 = v12;
  v32(&v29[v26], v16, v12);
  *&v29[v28] = v24;
  aBlock[4] = sub_10015D2A8;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = &unk_10024A758;
  v34 = _Block_copy(aBlock);

  v35 = v48;
  sub_1001C5668();
  sub_1001C6698();
  _Block_release(v34);
  (*(v49 + 8))(v35, v50);
  (*(v46 + 8))(v27, v47);

  v36 = swift_allocObject();
  swift_weakInit();
  v37 = swift_allocObject();
  v38 = v51;
  swift_unknownObjectWeakInit();
  v39 = swift_allocObject();
  v40 = v54;
  v39[2] = v53;
  v39[3] = v40;
  v39[4] = v36;
  v39[5] = v37;
  v41 = v55;
  v39[6] = v38;
  v39[7] = v41;
  v39[8] = v31;
  v57 = sub_10015D35C;
  v58 = v39;
  v56 = v38;
  swift_beginAccess();
  swift_getFunctionTypeMetadata1();
  sub_1001C5F68();

  sub_1001C5F78();
  swift_endAccess();
  (*(v44 + 8))(v45, v33);
}

uint64_t sub_10015B004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39 = a5;
  v40 = a6;
  v37 = a4;
  v38 = a1;
  v10 = sub_1001C5648();
  v43 = *(v10 - 8);
  v44 = v10;
  v11 = *(v43 + 64);
  __chkstk_darwin(v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1001C5688();
  v41 = *(v14 - 8);
  v42 = v14;
  v15 = *(v41 + 64);
  __chkstk_darwin(v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ObservableContainer.Event();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v37 - v21;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v24 = result;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      v37 = *(v24 + 24);
      (*(v19 + 16))(v22, v38, v18);
      v25 = *(v19 + 80);
      v38 = v24;
      v26 = (v25 + 48) & ~v25;
      v27 = swift_allocObject();
      *(v27 + 2) = a7;
      *(v27 + 3) = a8;
      v28 = v40;
      *(v27 + 4) = v39;
      *(v27 + 5) = v28;
      (*(v19 + 32))(&v27[v26], v22, v18);
      aBlock[4] = sub_10015D370;
      aBlock[5] = v27;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000DD4AC;
      aBlock[3] = &unk_10024A7F8;
      v29 = _Block_copy(aBlock);

      sub_1001C5668();
      v46 = _swiftEmptyArrayStorage;
      sub_10015D3DC(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags);
      sub_100084528(&unk_10026F360, &qword_1001F13F0);
      sub_1000CEAAC(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0);
      v30 = v44;
      sub_1001C68C8();
      sub_1001C6698();
      _Block_release(v29);
      (*(v43 + 8))(v13, v30);
      (*(v41 + 8))(v17, v42);
    }

    else
    {
      sub_1001C65B8();
      sub_100084528(&qword_10026FEE0, &unk_1001F0690);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1001F0670;
      v32 = v37;
      aBlock[0] = v37;
      v33 = sub_1001C6078();
      v35 = v34;
      *(v31 + 56) = &type metadata for String;
      *(v31 + 64) = sub_100084570();
      *(v31 + 32) = v33;
      *(v31 + 40) = v35;
      sub_100088714(0, &qword_10026F7C0, OS_os_log_ptr);
      v36 = sub_1001C67D8();
      sub_1001C5118();

      aBlock[6] = v32;
      swift_beginAccess();
      swift_getFunctionTypeMetadata1();
      sub_1001C5F68();
      sub_1001C5F28();
      swift_endAccess();

      return sub_1000044D8(v46);
    }
  }

  return result;
}

uint64_t ObservableContainer.observe(callback:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  v7[2] = *(v5 + 80);
  v7[3] = *(v5 + 88);
  v7[4] = v6;
  type metadata accessor for ObservationToken();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_10015C748;
  *(v8 + 24) = v7;

  _s14bookdatastored19ObservableContainerC11addObserver_8callbackyyXl_yAC5EventOyx_GctF_0(v9, a1, a2);

  return v8;
}

uint64_t sub_10015B650()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    type metadata accessor for ObservableContainer.Event();
    swift_getFunctionTypeMetadata1();
    sub_1001C5F68();
    sub_1001C5F28();
    swift_endAccess();

    return sub_1000044D8(v1);
  }

  return result;
}

uint64_t sub_10015B73C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1000B35B8;
  *(v10 + 24) = v9;
  v13[4] = sub_1000B3DA0;
  v13[5] = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1000906F4;
  v13[3] = &unk_10024A5A0;
  v11 = _Block_copy(v13);

  swift_unknownObjectRetain();

  dispatch_sync(v8, v11);
  _Block_release(v11);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

uint64_t ObservableContainer.removeObserver(_:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_10015C778;
  *(v5 + 24) = v4;
  v8[4] = sub_1000B3DA0;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1000906F4;
  v8[3] = &unk_10024A240;
  v6 = _Block_copy(v8);
  swift_unknownObjectRetain();

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10015BA24(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  swift_beginAccess();
  v3 = *(v2 + 80);
  v4 = *(v2 + 88);
  type metadata accessor for ObservableContainer.Event();
  swift_getFunctionTypeMetadata1();
  sub_1001C5F68();
  sub_1001C5F28();
  swift_endAccess();
  return sub_1000044D8(v6);
}

uint64_t *ObservableContainer.deinit()
{
  v1 = *v0;

  v2 = v0[4];

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 120));
  sub_1000CEB00(v0 + *(*v0 + 128));
  return v0;
}

uint64_t sub_10015BBAC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(*a1 + 120);
  swift_beginAccess();
  return (*(*(*(v4 + 264) - 8) + 16))(a2, a1 + v5);
}

uint64_t sub_10015BC60(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + 264);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(a1);
  v9 = &v13 - v8;
  v11 = *(v10 + 120);
  swift_beginAccess();
  (*(v6 + 16))(v9, a3 + v11, v5);
  a1(v9);
  sub_10015C8EC(v9);
  return (*(v6 + 8))(v9, v5);
}

uint64_t MutableObservableContainer.init(value:)(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_10015C5F4(a1);
  (*(*(*(v3 + 264) - 8) + 8))(a1);
  return v4;
}

uint64_t _s14bookdatastored19ObservableContainerCfD_0()
{
  ObservableContainer.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void *ObservableTransaction.init(name:transactionProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();

  return sub_10015C33C(a1, a2, a3, v3);
}

void sub_10015BED4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (!*(a1 + 32))
  {
    v6 = [*(a1 + 48) createTransactionWithName:sub_1001C60A8() + 32];

    v7 = *(a1 + 32);
    *(a1 + 32) = v6;

    oslog = sub_1001C5128();
    v8 = sub_1001C6578();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v12 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_1001874E8(a2, a3, &v12);
      _os_log_impl(&_mh_execute_header, oslog, v8, "[Transaction]: Created transaction %s", v9, 0xCu);
      sub_10008E7BC(v10);
    }

    else
    {
    }
  }
}

void sub_10015C068(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = *(a1 + 32);
  *(a1 + 32) = 0;

  oslog = sub_1001C5128();
  v6 = sub_1001C6578();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1001874E8(a2, a3, &v10);
    _os_log_impl(&_mh_execute_header, oslog, v6, "[Transaction]: Ended transaction %s", v7, 0xCu);
    sub_10008E7BC(v8);
  }
}

uint64_t ObservableTransaction.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);
  swift_unknownObjectRelease();
  v3 = OBJC_IVAR____TtC14bookdatastored21ObservableTransaction_logger;
  v4 = sub_1001C5148();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t ObservableTransaction.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);
  swift_unknownObjectRelease();
  v3 = OBJC_IVAR____TtC14bookdatastored21ObservableTransaction_logger;
  v4 = sub_1001C5148();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void *sub_10015C2D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ObservableTransaction();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();

  return sub_10015C33C(a1, a2, a3, v9);
}

void *sub_10015C33C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v18 = a2;
  v19 = a3;
  v17 = a1;
  v5 = sub_1001C6638();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = sub_1001C5688();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_1001C6668();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  a4[4] = 0;
  v16[1] = sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  (*(v10 + 104))(v13, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v9);
  sub_1001C5668();
  v20 = &_swiftEmptyArrayStorage;
  sub_10015D3DC(&unk_10026ECC0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100084528(&unk_10026F2E0, &unk_1001F0D00);
  sub_1000CEAAC(&unk_10026ECD0, &unk_10026F2E0, &unk_1001F0D00);
  sub_1001C68C8();
  a4[5] = sub_1001C66A8();
  sub_1001C5138();
  v14 = v18;
  a4[2] = v17;
  a4[3] = v14;
  a4[6] = v19;
  return a4;
}

uint64_t sub_10015C5F4(uint64_t a1)
{
  v2 = *(*(*(*v1 + 264) - 8) + 64);
  __chkstk_darwin(a1);
  v4 = &v7 - v3;
  (*(v5 + 16))(&v7 - v3);
  ObservableContainer.init(value:)(v4);
  return v1;
}

uint64_t sub_10015C6B4(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return sub_10015C5F4(a1);
}

uint64_t sub_10015C6FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10015C748()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_10015B650();
}

uint64_t _s14bookdatastored21ObservableTransactionC26observableCallbacksWillRun6targetyyXl_tF_0()
{
  v1 = v0;
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[5];
  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = v2;
  v5[4] = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_10015D290;
  *(v6 + 24) = v5;
  v9[4] = sub_1000B3DA0;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1000906F4;
  v9[3] = &unk_10024A690;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10015C8EC(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1);
  v7 = &v11[-v6];
  v9 = *(v8 + 120);
  swift_beginAccess();
  (*(v4 + 16))(v7, v1 + v9, v3);
  swift_beginAccess();
  (*(v4 + 24))(v1 + v9, a1, v3);
  swift_endAccess();
  sub_100159A6C(v7);
  return (*(v4 + 8))(v7, v3);
}

uint64_t _s14bookdatastored21ObservableTransactionC25observableCallbacksDidRun6targetyyXl_tF_0()
{
  v1 = v0;
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[5];
  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = v2;
  v5[4] = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_10015D244;
  *(v6 + 24) = v5;
  v9[4] = sub_1000B3DA0;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1000906F4;
  v9[3] = &unk_10024A618;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10015CBB4(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10015CC88(uint64_t a1)
{
  v1 = *(a1 + 16);
  TupleTypeMetadata2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return TupleTypeMetadata2;
}

uint64_t sub_10015CD1C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  v5 = ((v4 + *(v3 + 80)) & ~*(v3 + 80)) + v4;
  if (v5 <= v4)
  {
    v5 = v4;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if ((v5 + 1) <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v10 < 2)
    {
LABEL_25:
      v12 = *(a1 + v5);
      if (v12 >= 2)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_25;
  }

LABEL_14:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return (v6 | v11) + 255;
}

void sub_10015CE6C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 64);
  v7 = ((v6 + *(v5 + 80)) & ~*(v5 + 80)) + v6;
  if (v7 > v6)
  {
    v6 = v7;
  }

  v8 = v6 + 1;
  if (a3 < 0xFF)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 + ~(-1 << (8 * v8)) - 254) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFE)
  {
    v10 = a2 - 255;
    if (v8 >= 4)
    {
      bzero(a1, v6 + 1);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v11 = (v10 >> (8 * v8)) + 1;
    if (v6 != -1)
    {
      v14 = v10 & ~(-1 << (8 * v8));
      bzero(a1, v8);
      if (v8 != 3)
      {
        if (v8 == 2)
        {
          *a1 = v14;
          if (v9 > 1)
          {
LABEL_39:
            if (v9 == 2)
            {
              *&a1[v8] = v11;
            }

            else
            {
              *&a1[v8] = v11;
            }

            return;
          }
        }

        else
        {
          *a1 = v10;
          if (v9 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v9)
        {
          a1[v8] = v11;
        }

        return;
      }

      *a1 = v14;
      a1[2] = BYTE2(v14);
    }

    if (v9 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v9 <= 1)
  {
    if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v6] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v9 == 2)
  {
    *&a1[v8] = 0;
    goto LABEL_24;
  }

  *&a1[v8] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t type metadata accessor for ObservableTransaction()
{
  result = qword_100273638;
  if (!qword_100273638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10015D100()
{
  result = sub_1001C5148();
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

uint64_t sub_10015D1BC(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(a1 + 8);
  return (*a1)(v2);
}

uint64_t sub_10015D1F4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1000BAE40();
}

uint64_t sub_10015D200(__int128 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = a1[1];
  v6 = *a1;
  v7[0] = v4;
  *(v7 + 10) = *(a1 + 26);
  return v2(&v6);
}

uint64_t sub_10015D250()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10015D2A8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(type metadata accessor for ObservableContainer.Event() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000AC5A0(v5, v6, v0 + v4);
}

uint64_t sub_10015D370()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for ObservableContainer.Event() - 8);
  v4 = *(v0 + 40);
  return (*(v0 + 32))(v0 + ((*(v3 + 80) + 48) & ~*(v3 + 80)));
}

uint64_t sub_10015D3DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10015D470()
{
  v1 = v0;
  v44[0] = sub_1001C4B28();
  v2 = *(v44[0] - 1);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v44[0]);
  v6 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v44 - v7;
  v9 = [objc_opt_self() defaultManager];
  v10 = *(v0 + *(_s11PersistenceVMa() + 20));
  _s15PersistentStateOMa(0);
  sub_10015F270(&qword_1002714A8, _s15PersistentStateOMa);
  v11 = sub_1001C4808();
  v13 = v12;
  sub_1001C4AB8();
  sub_1001C4A88(v14);
  v16 = v15;
  v45 = 0;
  v17 = [v9 createDirectoryAtURL:v15 withIntermediateDirectories:1 attributes:0 error:&v45];

  if (v17)
  {
    v18 = v45;
    sub_1001C4BB8();
    if (qword_10026EBB8 != -1)
    {
      swift_once();
    }

    v34 = sub_1001C5148();
    sub_100083274(v34, qword_100281898);
    sub_10009AD9C(v11, v13);
    v35 = sub_1001C5128();
    v36 = sub_1001C65B8();
    if (!os_log_type_enabled(v35, v36))
    {

      sub_1000887D0(v11, v13);
LABEL_23:
      sub_1000887D0(v11, v13);
      return (*(v2 + 8))(v8, v44[0]);
    }

    v37 = swift_slowAlloc();
    *v37 = 134217984;
    v38 = v13 >> 62;
    if ((v13 >> 62) > 1)
    {
      if (v38 != 2)
      {
        v39 = 0;
        goto LABEL_22;
      }

      v41 = *(v11 + 16);
      v40 = *(v11 + 24);
      v42 = __OFSUB__(v40, v41);
      v39 = v40 - v41;
      if (!v42)
      {
        goto LABEL_22;
      }

      __break(1u);
    }

    else if (!v38)
    {
      v39 = BYTE6(v13);
LABEL_22:
      *(v37 + 4) = v39;
      v43 = v37;
      sub_1000887D0(v11, v13);
      _os_log_impl(&_mh_execute_header, v35, v36, "[Persistence] Saved (%ld bytes)", v43, 0xCu);

      goto LABEL_23;
    }

    LODWORD(v39) = HIDWORD(v11) - v11;
    if (__OFSUB__(HIDWORD(v11), v11))
    {
      __break(1u);
    }

    v39 = v39;
    goto LABEL_22;
  }

  v19 = v45;
  sub_1001C4A28();

  swift_willThrow();
  sub_1000887D0(v11, v13);
  v20 = v8;
  v21 = v44[0];
  (*(v2 + 8))(v20, v44[0]);
  if (qword_10026EBB8 != -1)
  {
    swift_once();
  }

  v22 = sub_1001C5148();
  sub_100083274(v22, qword_100281898);
  (*(v2 + 16))(v6, v1, v21);
  swift_errorRetain();
  v23 = sub_1001C5128();
  v24 = sub_1001C6598();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = v21;
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v44[0] = swift_slowAlloc();
    v45 = v44[0];
    *v26 = 136315394;
    sub_10015F270(qword_100272010, &type metadata accessor for URL);
    v28 = sub_1001C6CC8();
    v30 = v29;
    (*(v2 + 8))(v6, v25);
    v31 = sub_1001874E8(v28, v30, &v45);

    *(v26 + 4) = v31;
    *(v26 + 12) = 2112;
    swift_errorRetain();
    v32 = _swift_stdlib_bridgeErrorToNSError();
    *(v26 + 14) = v32;
    *v27 = v32;
    _os_log_impl(&_mh_execute_header, v23, v24, "[Persistence] Failed to store to url '%s', error: %@", v26, 0x16u);
    sub_1001279FC(v27);

    sub_10008E7BC(v44[0]);
  }

  else
  {

    return (*(v2 + 8))(v6, v21);
  }
}

uint64_t sub_10015DA94@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1001C4B28();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = [objc_opt_self() defaultManager];
  v7 = sub_10015EB10();
  if (v7 > 100000)
  {
    v8 = v7;
    if (qword_10026EBB8 != -1)
    {
      swift_once();
    }

    v9 = sub_1001C5148();
    sub_100083274(v9, qword_100281898);
    v10 = sub_1001C5128();
    v11 = sub_1001C6598();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134218240;
      *(v12 + 4) = v8;
      *(v12 + 12) = 2048;
      *(v12 + 14) = 100000;
      _os_log_impl(&_mh_execute_header, v10, v11, "[Persistence] Refusing to decode data from large file (%ld > %ld)", v12, 0x16u);
    }

    v13 = _s15PersistentStateOMa(0);
    v14 = *(*(v13 - 8) + 56);
    v15 = v13;
    v16 = a1;
    v17 = 1;
    goto LABEL_7;
  }

  v19 = sub_1001C4B48();
  v21 = v20;
  if (qword_10026EBB8 != -1)
  {
    swift_once();
  }

  v22 = a1;
  v23 = sub_1001C5148();
  sub_100083274(v23, qword_100281898);
  sub_10009AD9C(v19, v21);
  v24 = sub_1001C5128();
  v25 = sub_1001C65B8();
  if (os_log_type_enabled(v24, v25))
  {
    v34 = v25;
    result = swift_slowAlloc();
    v26 = result;
    *result = 134217984;
    v27 = v21 >> 62;
    if ((v21 >> 62) > 1)
    {
      if (v27 != 2)
      {
        v28 = 0;
        goto LABEL_24;
      }

      v30 = *(v19 + 16);
      v29 = *(v19 + 24);
      v31 = __OFSUB__(v29, v30);
      v28 = v29 - v30;
      if (!v31)
      {
        goto LABEL_24;
      }

      __break(1u);
    }

    else if (!v27)
    {
      v28 = BYTE6(v21);
LABEL_24:
      *(result + 4) = v28;
      sub_1000887D0(v19, v21);
      _os_log_impl(&_mh_execute_header, v24, v34, "[Persistence] Loaded %ld bytes", v26, 0xCu);

      goto LABEL_25;
    }

    LODWORD(v28) = HIDWORD(v19) - v19;
    if (__OFSUB__(HIDWORD(v19), v19))
    {
      __break(1u);
      return result;
    }

    v28 = v28;
    goto LABEL_24;
  }

  sub_1000887D0(v19, v21);
LABEL_25:

  v32 = *(v2 + *(_s11PersistenceVMa() + 24));
  v33 = _s15PersistentStateOMa(0);
  sub_10015F270(&qword_100273708, _s15PersistentStateOMa);
  sub_1001C4768();
  sub_1000887D0(v19, v21);

  v14 = *(*(v33 - 8) + 56);
  v16 = v22;
  v17 = 0;
  v15 = v33;
LABEL_7:

  return v14(v16, v17, 1, v15);
}

void sub_10015E17C()
{
  v1 = v0;
  v2 = sub_1001C4B28();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() defaultManager];
  sub_1001C4A88(v8);
  v10 = v9;
  v30 = 0;
  v11 = [v7 removeItemAtURL:v9 error:&v30];

  if (!v11)
  {
    v18 = v30;
    sub_1001C4A28();

    swift_willThrow();
    swift_getErrorValue();
    if (!sub_10015EF08(v29[2]))
    {
      if (qword_10026EBB8 != -1)
      {
        swift_once();
      }

      v19 = sub_1001C5148();
      sub_100083274(v19, qword_100281898);
      (*(v3 + 16))(v6, v1, v2);
      swift_errorRetain();
      v20 = sub_1001C5128();
      v21 = sub_1001C6598();

      if (!os_log_type_enabled(v20, v21))
      {

        (*(v3 + 8))(v6, v2);
        return;
      }

      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v29[0] = swift_slowAlloc();
      v30 = v29[0];
      *v22 = 136315394;
      sub_10015F270(qword_100272010, &type metadata accessor for URL);
      v24 = sub_1001C6CC8();
      v26 = v25;
      (*(v3 + 8))(v6, v2);
      v27 = sub_1001874E8(v24, v26, &v30);

      *(v22 + 4) = v27;
      *(v22 + 12) = 2112;
      swift_errorRetain();
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 14) = v28;
      *v23 = v28;
      _os_log_impl(&_mh_execute_header, v20, v21, "[Persistence] Failed to reset url '%s', error: %@", v22, 0x16u);
      sub_1001279FC(v23);

      sub_10008E7BC(v29[0]);
    }

    return;
  }

  v12 = qword_10026EBB8;
  v13 = v30;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = sub_1001C5148();
  sub_100083274(v14, qword_100281898);
  v15 = sub_1001C5128();
  v16 = sub_1001C65B8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "[Persistence] Deleted", v17, 2u);
  }
}

uint64_t sub_10015E5DC@<X0>(char *a1@<X0>, void (*a2)(uint64_t, char *, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1001C4B28();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v53 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001C47C8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v49 - v16;
  v54 = a1;
  if ((sub_1001C4A48() & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  v50 = v7;
  v51 = v6;
  v52 = a3;
  v18 = sub_1001C4828();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = sub_1001C4818();
  sub_100084528(&qword_1002712D8, &qword_1001F3A28);
  v22 = *(v11 + 72);
  v23 = a2;
  v24 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1001F0660;
  sub_1001C4798();
  sub_1001C47B8();
  v55[0] = v25;
  sub_10015F270(&qword_1002712E0, &type metadata accessor for JSONEncoder.OutputFormatting);
  sub_100084528(&qword_1002712E8, &qword_1001F3A30);
  sub_10015F2B8();
  sub_1001C68C8();
  v26 = sub_1001C47D8();
  sub_10010C034(v17, v15);
  v27 = *(v11 + 8);
  v27(v15, v10);
  v27(v17, v10);
  v26(v55, 0);
  if (v23)
  {
    sub_1001C47A8();
    v28 = sub_1001C47D8();
    sub_10010C034(v17, v15);
    v27(v15, v10);
    v27(v17, v10);
    v28(v55, 0);
  }

  v29 = sub_1001C4788();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  v32 = sub_1001C4778();
  v7 = v50;
  v6 = v51;
  a2 = *(v50 + 16);
  v33 = v52;
  v17 = v54;
  a2(v52, v54, v51);
  v34 = _s11PersistenceVMa();
  *(v33 + *(v34 + 20)) = v21;
  *(v33 + *(v34 + 24)) = v32;
  if (qword_10026EBB8 != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v35 = sub_1001C5148();
  sub_100083274(v35, qword_100281898);
  v36 = v53;
  a2(v53, v17, v6);
  v37 = sub_1001C5128();
  v38 = sub_1001C6578();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v55[0] = v40;
    *v39 = 136315138;
    v41 = sub_1001C4A58();
    v42 = v36;
    v44 = v43;
    v45 = *(v7 + 8);
    v45(v42, v6);
    v46 = sub_1001874E8(v41, v44, v55);

    *(v39 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v37, v38, "[Persistence] URL: '%s'", v39, 0xCu);
    sub_10008E7BC(v40);

    return (v45)(v17, v6);
  }

  else
  {

    v48 = *(v7 + 8);
    v48(v17, v6);
    return (v48)(v36, v6);
  }
}

uint64_t sub_10015EB10()
{
  sub_1001C4AE8(0);
  v1 = sub_1001C5FE8();

  v26[0] = 0;
  v2 = [v0 attributesOfItemAtPath:v1 error:v26];

  v3 = v26[0];
  if (v2)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_10015F270(&qword_10026F020, type metadata accessor for FileAttributeKey);
    v4 = sub_1001C5F08();
    v5 = v3;

    if (*(v4 + 16) && (v6 = sub_100187C04(NSFileSize), (v7 & 1) != 0))
    {
      sub_10008EBD0(*(v4 + 56) + 32 * v6, v27);

      sub_10008EBD0(v27, v26);
      sub_10015F224();
      if (swift_dynamicCast())
      {
        v8 = sub_1001C6438();

        sub_10008E7BC(v27);
        return v8;
      }

      if (qword_10026EBB8 != -1)
      {
        swift_once();
      }

      v15 = sub_1001C5148();
      sub_100083274(v15, qword_100281898);
      sub_10008EBD0(v27, v26);
      v16 = sub_1001C5128();
      v17 = sub_1001C6598();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v25 = v19;
        *v18 = 136446210;
        sub_10008EBD0(v26, v24);
        v20 = sub_1001C6078();
        v22 = v21;
        sub_10008E7BC(v26);
        v23 = sub_1001874E8(v20, v22, &v25);

        *(v18 + 4) = v23;
        _os_log_impl(&_mh_execute_header, v16, v17, "[Persistence] Unable to convert reported file size: %{public}s to NSNumber", v18, 0xCu);
        sub_10008E7BC(v19);
      }

      else
      {

        sub_10008E7BC(v26);
      }

      sub_10008E7BC(v27);
    }

    else
    {

      if (qword_10026EBB8 != -1)
      {
        swift_once();
      }

      v10 = sub_1001C5148();
      sub_100083274(v10, qword_100281898);
      v11 = sub_1001C5128();
      v12 = sub_1001C6598();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "[Persistence] No file size was returned", v13, 2u);
      }
    }

    return 0;
  }

  else
  {
    v14 = v26[0];
    sub_1001C4A28();

    return swift_willThrow();
  }
}

BOOL sub_10015EF08(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(a1);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v25 - v9;
  v11 = *(v4 + 16);
  v11(&v25 - v9, v2, a1);
  if (sub_1001C6CE8())
  {
    (*(v4 + 8))(v10, a1);
  }

  else
  {
    swift_allocError();
    (*(v4 + 32))(v12, v10, a1);
  }

  v13 = sub_1001C4A18();

  v14 = [v13 domain];

  v15 = sub_1001C6018();
  v17 = v16;

  v11(v8, v2, a1);
  if (sub_1001C6CE8())
  {
    (*(v4 + 8))(v8, a1);
  }

  else
  {
    swift_allocError();
    (*(v4 + 32))(v18, v8, a1);
  }

  v19 = sub_1001C4A18();

  v20 = [v19 code];

  if (v15 == sub_1001C6018() && v17 == v21)
  {

    return (v20 & 0xFFFFFFFFFFFFFEFFLL) == 4;
  }

  v23 = sub_1001C6D08();

  result = 0;
  if (v23)
  {
    return (v20 & 0xFFFFFFFFFFFFFEFFLL) == 4;
  }

  return result;
}

uint64_t _s11PersistenceVMa()
{
  result = qword_100273768;
  if (!qword_100273768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10015F224()
{
  result = qword_1002712A0;
  if (!qword_1002712A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002712A0);
  }

  return result;
}

uint64_t sub_10015F270(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10015F2B8()
{
  result = qword_1002712F0;
  if (!qword_1002712F0)
  {
    sub_1000885AC(&qword_1002712E8, &qword_1001F3A30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002712F0);
  }

  return result;
}

uint64_t sub_10015F344()
{
  result = sub_1001C4B28();
  if (v1 <= 0x3F)
  {
    result = sub_1001C4828();
    if (v2 <= 0x3F)
    {
      result = sub_1001C4788();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

__n128 sub_10015F460(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_10015F48C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_10015F4D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10015F540()
{
  result = qword_1002737A8;
  if (!qword_1002737A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002737A8);
  }

  return result;
}

unint64_t sub_10015F598()
{
  result = qword_1002737B0;
  if (!qword_1002737B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002737B0);
  }

  return result;
}

unint64_t sub_10015F5F0()
{
  result = qword_1002737B8;
  if (!qword_1002737B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002737B8);
  }

  return result;
}

unint64_t sub_10015F648()
{
  result = qword_1002737C0;
  if (!qword_1002737C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002737C0);
  }

  return result;
}

unint64_t sub_10015F69C()
{
  result = qword_1002737C8[0];
  if (!qword_1002737C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1002737C8);
  }

  return result;
}

void sub_10015F710()
{
  v1 = v0;
  v2 = sub_1001C5BD8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001C4B28();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100084528(&qword_1002739F0, &qword_1001F7680);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v39 - v14;
  v16 = *(*v0 + 168);
  v17 = *(v0 + v16);
  v18 = *(*v0 + 192);
  if (v17)
  {

    v19 = sub_1001C5128();
    v20 = sub_1001C65B8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v44[0] = v22;
      *v21 = 136315138;
      if (*(v1 + *(*v1 + 176)))
      {
        v23 = 0x657463656E6E6F63;
      }

      else
      {
        v23 = 0x697463656E6E6F63;
      }

      if (*(v1 + *(*v1 + 176)))
      {
        v24 = 0xE900000000000064;
      }

      else
      {
        v24 = 0xEA0000000000676ELL;
      }

      v25 = sub_1001874E8(v23, v24, v44);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "CRDTModelFileSyncTransport reconnect: Already %s", v21, 0xCu);
      sub_10008E7BC(v22);
    }

    if (*(v1 + v16))
    {
      v26 = *(v1 + v16);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v42 = v3;
    v43 = v2;
    v27 = sub_1001C5128();
    v28 = sub_1001C65B8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "CRDTModelFileSyncTransport reconnect: About to initialize file sync manager", v29, 2u);
    }

    v30 = sub_100084528(&qword_1002739F8, &qword_1001F7688);
    v40 = v1[4];
    v41 = v30;
    v31 = *(*v1 + 128);
    v32 = sub_100084528(&unk_100270A30, &qword_1001F3490);
    v33 = *(v32 - 8);
    (*(v33 + 16))(v15, v1 + v31, v32);
    (*(v33 + 56))(v15, 0, 1, v32);
    (*(v8 + 16))(v11, v1 + *(*v1 + 136), v7);
    (*(v42 + 104))(v6, enum case for CRCodableVersion.version3(_:), v43);
    v34 = v40;
    v35 = sub_1001C5C28();
    v36 = *(v1 + v16);
    *(v1 + v16) = v35;

    v37 = *(v1 + *(*v1 + 184));
    sub_1001C5BE8();
    v44[0] = sub_1001C5C08();
    swift_allocObject();
    swift_weakInit();
    swift_allocObject();
    swift_weakInit();
    sub_100084528(&qword_100273A00, &unk_1001F7690);
    sub_1000885F4(&qword_100273A08, &qword_100273A00, &unk_1001F7690);
    sub_1001C51A8();

    v38 = *(*v1 + 160);
    swift_beginAccess();
    sub_1001C5168();
    swift_endAccess();
  }
}

uint64_t sub_10015FD0C(uint64_t a1)
{
  v2 = sub_1001C5148();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      (*(v3 + 16))(v9, Strong + *(*Strong + 192), v2);

      swift_errorRetain();
      v11 = sub_1001C5128();
      v12 = sub_1001C6598();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v23 = v14;
        *v13 = 136315138;
        swift_getErrorValue();
        v15 = sub_1001C6D98();
        v17 = sub_1001874E8(v15, v16, &v23);

        *(v13 + 4) = v17;
        _os_log_impl(&_mh_execute_header, v11, v12, "CRDTModelFileSyncTransport sink: error: %s", v13, 0xCu);
        sub_10008E7BC(v14);
      }

      (*(v3 + 8))(v9, v2);
    }

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_100160060();
    }
  }

  else
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      (*(v3 + 16))(v7, result + *(*result + 192), v2);

      v19 = sub_1001C5128();
      v20 = sub_1001C65B8();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "CRDTModelFileSyncTransport sink: finished", v21, 2u);
      }

      return (*(v3 + 8))(v7, v2);
    }
  }

  return result;
}

uint64_t sub_100160060()
{
  v1 = sub_1001C5648();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1001C5688();
  v6 = *(v13 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v13);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *(v0 + *(*v0 + 152));
  aBlock[4] = sub_1000CEA24;
  v16 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = &unk_10024AD70;
  v10 = _Block_copy(aBlock);

  sub_1001C5668();
  v14 = &_swiftEmptyArrayStorage;
  sub_10016A258(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags);
  sub_100084528(&unk_10026F360, &qword_1001F13F0);
  sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0);
  sub_1001C68C8();
  sub_1001C6698();
  _Block_release(v10);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v13);
}

uint64_t sub_100160328(uint64_t a1)
{
  v2 = sub_1001C5148();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v3 + 16))(v6, Strong + *(*Strong + 192), v2);

    v8 = sub_1001C5128();
    v9 = sub_1001C6588();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "CRDTModelFileSyncTransport sink: receiveValue", v10, 2u);
    }

    (*(v3 + 8))(v6, v2);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1001604FC(a1);
  }

  return result;
}

uint64_t sub_1001604FC(uint64_t a1)
{
  v3 = sub_1001C5648();
  v23 = *(v3 - 8);
  v4 = *(v23 + 64);
  __chkstk_darwin(v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001C5688();
  v21 = *(v7 - 8);
  v22 = v7;
  v8 = *(v21 + 64);
  __chkstk_darwin(v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100084528(&unk_100270A30, &qword_1001F3490);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v20 - v14;
  v20[1] = *(v1 + *(*v1 + 152));
  (*(v12 + 16))(v20 - v14, a1, v11);
  v16 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v1;
  (*(v12 + 32))(v17 + v16, v15, v11);
  aBlock[4] = sub_10016A008;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = &unk_10024AD48;
  v18 = _Block_copy(aBlock);

  sub_1001C5668();
  v24 = &_swiftEmptyArrayStorage;
  sub_10016A258(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags);
  sub_100084528(&unk_10026F360, &qword_1001F13F0);
  sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0);
  sub_1001C68C8();
  sub_1001C6698();
  _Block_release(v18);
  (*(v23 + 8))(v6, v3);
  (*(v21 + 8))(v10, v22);
}

void sub_1001608B0(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 176);
  if ((*(v1 + v5) & 1) == 0)
  {
    if (*(v1 + *(v4 + 168)))
    {
      *(v1 + v5) = 1;
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1000CB7EC();
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v6 = v1 + *(v4 + 192);
      v7 = sub_1001C5128();
      v8 = sub_1001C6598();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "CRDTModelFileSyncTransport: got disconnected before load complete", v9, 2u);
      }
    }
  }

  v10 = v2 + *(*v2 + 144);
  v11 = *v10;
  if (*v10)
  {
    v12 = *(v10 + 8);

    v11(a1);

    sub_1000044D8(v11);
  }
}

uint64_t sub_100160A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a2;
  v30 = a3;
  v6 = sub_1001C5648();
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  __chkstk_darwin(v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001C5688();
  v26 = *(v10 - 8);
  v27 = v10;
  v11 = *(v26 + 64);
  __chkstk_darwin(v10);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100084528(&unk_100270A30, &qword_1001F3490);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = v25 - v17;
  if (*(v3 + *(*v3 + 168)))
  {

    sub_1001C5BF8();
  }

  else
  {
    v25[1] = *(v3 + *(*v3 + 152));
    (*(v15 + 16))(v18, a1, v14);
    v20 = (*(v15 + 80) + 24) & ~*(v15 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = v4;
    (*(v15 + 32))(v21 + v20, v18, v14);
    v22 = (v21 + ((v16 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
    v23 = v30;
    *v22 = v29;
    v22[1] = v23;
    aBlock[4] = sub_100169F20;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000DD4AC;
    aBlock[3] = &unk_10024ACD0;
    v24 = _Block_copy(aBlock);

    sub_1001C5668();
    v31 = &_swiftEmptyArrayStorage;
    sub_10016A258(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags);
    sub_100084528(&unk_10026F360, &qword_1001F13F0);
    sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0);
    sub_1001C68C8();
    sub_1001C6698();
    _Block_release(v24);
    (*(v28 + 8))(v9, v6);
    (*(v26 + 8))(v13, v27);
  }
}

uint64_t sub_100160E94(uint64_t a1)
{
  v2 = *(*v1 + 48);
  v3 = *(a1 + 80);
  return sub_1001C6688();
}

uint64_t CRDTModelFileSyncManager.model.getter()
{
  v1 = *v0;
  v2 = v0[6];
  v3 = *(v1 + 80);
  return sub_1001C6688();
}

uint64_t sub_100160F4C()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 80);
}

uint64_t sub_100160FC0(char a1)
{
  v3 = *v1;
  result = swift_beginAccess();
  *(v3 + 80) = a1;
  return result;
}

uint64_t CRDTModelFileSyncManager.enableCloudSync.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 80) = a1;
  return result;
}

uint64_t (*sub_100161044())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1001610E8()
{
  v1 = *(*v0 + 48);
  sub_100084528(&unk_10026F450, &qword_1001F76A0);
  sub_1001C6688();
  return v3;
}

uint64_t CRDTModelFileSyncManager.observable.getter()
{
  v1 = *v0;
  v2 = v0[6];
  v3 = v1[10];
  v4 = v1[11];
  v5 = v1[12];
  type metadata accessor for ModelState();
  swift_getWitnessTable();
  type metadata accessor for MutableObservableContainer();
  sub_1001C6688();
  return v7;
}

uint64_t sub_100161234(uint64_t a1)
{
  v3 = sub_1001C5648();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *v1;
  v9 = *(*v1 + 48);
  sub_1001C5638();
  v12 = v8;
  v13 = a1;
  v14 = 0;
  sub_1001C6678();
  return (*(v4 + 8))(v7, v3);
}

void *CRDTModelFileSyncManager.__allocating_init(clientName:groupContext:transactionProvider:delegate:)(uint64_t a1, uint64_t a2, char a3, char *a4, uint64_t a5, uint64_t a6)
{
  v6 = sub_100169580(a1, a2, a3, a4, a5, a6);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v6;
}

uint64_t CRDTModelFileSyncManager.modelSyncVersionObservable.getter()
{
  v1 = *(v0 + 48);
  sub_100084528(&unk_100270A20, &unk_1001F3480);
  sub_1001C6688();
  return v3;
}

uint64_t CRDTModelFileSyncManager.syncAfterLoaded(_:isRemote:completion:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1001C5648();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(v4 + 48);
  sub_1001C5638();
  v17 = v4;
  v18 = a1;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  sub_100084528(&unk_100270A90, &qword_1001F34D8);
  sub_1001C6678();
  return (*(v10 + 8))(v13, v9);
}

uint64_t CRDTModelFileSyncManager.modelSyncVersion.getter()
{
  v1 = *(v0 + 48);
  type metadata accessor for CRDTModelSyncVersion();
  return sub_1001C6688();
}

unint64_t sub_1001615D8()
{
  v1 = v0;
  v2 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v19 - v4;
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_1001C69C8(45);
  v6 = ReadingHistoryModel.description.getter();
  v8 = v7;

  v19 = v6;
  v20 = v8;
  v21._countAndFlagsBits = 0x646564616F6C202CLL;
  v21._object = 0xE90000000000003DLL;
  sub_1001C6138(v21);
  v9 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  if (*(v1 + v9[11]))
  {
    v10._countAndFlagsBits = 0x7964616572;
  }

  else
  {
    v10._countAndFlagsBits = 0x676E6964616F6CLL;
  }

  if (*(v1 + v9[11]))
  {
    v11 = 0xE500000000000000;
  }

  else
  {
    v11 = 0xE700000000000000;
  }

  v10._object = v11;
  sub_1001C6138(v10);

  v22._countAndFlagsBits = 0x6F537473616C202CLL;
  v22._object = 0xED00003D65637275;
  sub_1001C6138(v22);
  v12 = v1 + v9[12];
  v23._countAndFlagsBits = sub_1001578DC();
  sub_1001C6138(v23);

  v24._countAndFlagsBits = 0x697369766572202CLL;
  v24._object = 0xEF3D6F666E496E6FLL;
  sub_1001C6138(v24);
  sub_10009ADF0(v1 + v9[13], v5, &unk_10026F410, &unk_1001F0E40);
  v13 = type metadata accessor for CRDTModelRevisionInfo();
  if ((*(*(v13 - 8) + 48))(v5, 1, v13) == 1)
  {
    sub_10008875C(v5, &unk_10026F410, &unk_1001F0E40);
    v14 = 0xE300000000000000;
    v15._countAndFlagsBits = 7104878;
  }

  else
  {
    v16 = CRDTModelRevisionInfo.description.getter();
    v14 = v17;
    sub_10016A0CC(v5, type metadata accessor for CRDTModelRevisionInfo);
    v15._countAndFlagsBits = v16;
  }

  v15._object = v14;
  sub_1001C6138(v15);

  return v19;
}

uint64_t CRDTModelFileSyncInfo.additionalFields.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);
  v5 = *(v2 + v4);

  *(v2 + v4) = a1;
  return result;
}

uint64_t CRDTModelFileSyncInfo.init()@<X0>(uint64_t a1@<X8>)
{
  sub_1001C5B38();
  result = type metadata accessor for CRDTModelFileSyncInfo();
  *(a1 + *(result + 52)) = &_swiftEmptyDictionarySingleton;
  return result;
}

uint64_t CRDTModelFileSyncInfo.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1001C5B38();
  *(a3 + *(type metadata accessor for CRDTModelFileSyncInfo() + 52)) = &_swiftEmptyDictionarySingleton;
  return (*(*(a2 - 8) + 40))(a3, a1, a2);
}

uint64_t sub_100161A28(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  static CRDTModelFileSyncInfo.fields.getter();
  return 0x6C65646F6DLL;
}

uint64_t sub_100161A5C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return static CRStruct_1.fieldKeys.getter(a1, WitnessTable);
}

uint64_t sub_100161AB0@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  v3 = a2[2];
  v2 = a2[3];
  v4 = a2[4];
  v5 = a2[5];
  return CRDTModelFileSyncInfo.init()(a1);
}

uint64_t sub_100161AC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CRType.context.getter(a1, WitnessTable);
}

uint64_t sub_100161B14(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return CRStruct_1.newRefs(from:)(a1, a2, WitnessTable);
}

uint64_t sub_100161B74(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return CRStruct_1.actionUndoingDifference(from:)(a1, a2, WitnessTable);
}

uint64_t sub_100161BDC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return CRStruct_1.apply(_:)(a1, a2, WitnessTable);
}

uint64_t sub_100161C3C()
{
  swift_getWitnessTable();

  return sub_1001C5818();
}

uint64_t sub_100161C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return CRStruct_1.delta(_:from:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_100161D18(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return CRStruct_1.canMerge(delta:)(a1, a2, WitnessTable);
}

uint64_t sub_100161D78(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return CRStruct_1.merge(delta:)(a1, a2, WitnessTable);
}

uint64_t sub_100161DD8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return CRStruct_1.copy(renamingReferences:)(a1, a2, WitnessTable);
}

uint64_t sub_100161E40(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return CRStruct_1.copy(renamingReferences:)(a1, a2, WitnessTable);
}

uint64_t sub_100161EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return CRStruct_1.observableDifference(from:with:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_100161F24(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return CRStruct_1.visitReferences(_:)(a1, a2, WitnessTable);
}

BOOL sub_100161F84()
{
  swift_getWitnessTable();

  return CRStruct_1.needToFinalizeTimestamps()();
}

uint64_t sub_100161FD8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return CRStruct_1.finalizeTimestamps(_:)(a1, a2, WitnessTable);
}

uint64_t sub_100162038()
{
  swift_getWitnessTable();

  return sub_1001C57C8();
}

uint64_t sub_1001620A0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return CRStruct_1.merge(_:)(a1, a2, WitnessTable);
}

uint64_t sub_1001621E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static CRDT.== infix(_:_:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_10016230C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CRStruct_1.minEncodingVersion.getter(a1, WitnessTable);
}

uint64_t CRDTModelFileSyncInfo.description.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 32);
  return sub_1001C6CC8();
}

uint64_t static CRDTModelFileSyncInfo.modelName.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(a4 + 8))();
  v6._countAndFlagsBits = 0x666E49636E79532DLL;
  v6._object = 0xE90000000000006FLL;
  sub_1001C6138(v6);
  return v5;
}

uint64_t CRDTModelFileSyncManager.DefaultConfig.storeDirectory.getter()
{
  v0 = sub_1001C4B28();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() books];
  v6 = [v5 containerURL];

  sub_1001C4AD8();
  sub_1001C4AA8();

  return (*(v1 + 8))(v4, v0);
}

void (*CRDTModelFileSyncManager.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_100122ED8;
}

uint64_t sub_1001625D4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 96);
  v6 = type metadata accessor for ModelState();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  v11 = v1[4];

  MutableObservableContainer.value.getter();

  (*(*(v3 - 8) + 16))(a1, v10, v3);
  return (*(v7 + 8))(v10, v6);
}

BOOL sub_100162728()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 96);
  v4 = type metadata accessor for ModelState();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = v0[4];

  MutableObservableContainer.value.getter();

  LODWORD(v9) = v8[*(v4 + 44)];
  (*(v5 + 8))(v8, v4);
  return static CRDTModelLocalFileManager.SyncError.__derived_enum_equals(_:_:)(v9, 1);
}

uint64_t sub_100162878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  v8 = *(*(a1 + 32) + 16);

  sub_1001C6688();

  sub_10016A1E0(v7, a2, type metadata accessor for ReadingHistoryModel);
  return sub_10008875C(v7, &unk_10026F420, &unk_1001F0E50);
}

uint64_t sub_100162990@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 88);
  v6 = *(*a1 + 96);
  v7 = type metadata accessor for ModelState();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v14 - v10;
  v12 = a1[4];

  MutableObservableContainer.value.getter();

  (*(*(v4 - 8) + 16))(a2, v11, v4);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_100162B40(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 16);
  type metadata accessor for CRDTModelSyncVersion();

  sub_1001C6688();
}

uint64_t (*CRDTModelFileSyncManager.disableReadingInBackground.modify(uint64_t a1))(char *a1)
{
  *a1 = v1;
  v2 = *(v1 + 88);
  *(a1 + 8) = sub_1000CE390() & 1;
  return sub_100162C58;
}

uint64_t sub_100162CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = a5();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_100162D08(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100162D68(a1);
  }

  return result;
}

uint64_t sub_100162D68(uint64_t a1)
{
  v3 = sub_1001C5648();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v1 + 48);
  sub_1001C5638();
  v11 = v1;
  v12 = a1;
  sub_1001C6678();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_100162E74(uint64_t a1)
{
  v2 = v1;
  v3.isa = v1->isa;
  v150 = a1;
  isa = v3.isa;
  v4 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v139 = v118 - v6;
  v147 = *(v3.isa + 5);
  v7 = *(v3.isa + 12);
  v8 = v147;
  v141 = type metadata accessor for ModelState();
  v140 = *(v141 - 8);
  v9 = *(v140 + 64);
  __chkstk_darwin(v141);
  v138 = v118 - v10;
  v136 = *(&v8 + 1);
  v132 = type metadata accessor for ModelState.Source();
  v131 = *(v132 - 8);
  v11 = *(v131 + 64);
  v12 = __chkstk_darwin(v132);
  v135 = v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v130 = v118 - v15;
  v149 = v8;
  v148 = *(v8 - 8);
  v16 = *(v148 + 64);
  v17 = __chkstk_darwin(v14);
  v134 = v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v145 = v118 - v19;
  v128 = sub_1001C5AC8();
  v127 = *(v128 - 8);
  v20 = *(v127 + 64);
  __chkstk_darwin(v128);
  v125 = v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = v7;
  *&v22 = v7;
  *(&v22 + 1) = *(v3.isa + 13);
  v154 = v22;
  v153 = v147;
  v23 = type metadata accessor for CRDTModelFileSyncInfo();
  swift_getWitnessTable();
  v24 = sub_1001C5D68();
  v25 = *(v24 - 8);
  v26 = v25[8];
  v27 = __chkstk_darwin(v24);
  v29 = v118 - v28;
  v30 = *(v23 - 8);
  v31 = *(v30 + 8);
  v32 = __chkstk_darwin(v27);
  v121 = v118 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v142 = v118 - v35;
  v36 = __chkstk_darwin(v34);
  v124 = v118 - v37;
  v38 = __chkstk_darwin(v36);
  v143 = v118 - v39;
  v40 = __chkstk_darwin(v38);
  v42 = v118 - v41;
  v43 = __chkstk_darwin(v40);
  v45 = v118 - v44;
  __chkstk_darwin(v43);
  v47 = v118 - v46;
  v48 = *(isa + 24);
  swift_beginAccess();
  v49 = v25[2];
  v144 = v48;
  v123 = v25 + 2;
  v122 = v49;
  v49(v29, v48 + v2, v24);
  sub_1001C5D38();
  v50 = v25[1];
  v126 = v29;
  v129 = v25 + 1;
  v50(v29, v24);
  sub_1001C5D38();
  v146 = sub_100162728();
  swift_getWitnessTable();
  v51 = sub_1001C5818();
  v52 = *(v2->isa + 25);
  isa = v30;
  v53 = *(v30 + 2);
  if (v51)
  {
    *&v147 = v45;
    v53(v42, v45, v23);
    v133 = v47;
    v53(v143, v47, v23);
    v54 = sub_1001C5128();
    v55 = sub_1001C65B8();
    v56 = os_log_type_enabled(v54, v55);
    v120 = v23;
    v119 = v50;
    if (v56)
    {
      v57 = swift_slowAlloc();
      v150 = swift_slowAlloc();
      v152 = v150;
      *v57 = 136315394;
      v121 = *(v23 + 16);
      v118[1] = *(v23 + 32);
      LODWORD(v142) = v55;
      v58 = sub_1001C6CC8();
      v60 = v59;
      v61 = *(isa + 1);
      v61(v42, v23);
      v62 = sub_1001874E8(v58, v60, &v152);

      *(v57 + 4) = v62;
      *(v57 + 12) = 2080;
      v63 = v143;
      v64 = sub_1001C6CC8();
      v66 = v65;
      v61(v63, v23);
      v67 = v61;
      v68 = sub_1001874E8(v64, v66, &v152);

      *(v57 + 14) = v68;
      _os_log_impl(&_mh_execute_header, v54, v142, "CRDTModelFileSyncManager q_handle -- incoming=%s and existing=%s", v57, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v67 = *(isa + 1);
      v67(v143, v23);
      v69 = (v67)(v42, v23);
    }

    v88 = v145;
    __chkstk_darwin(v69);
    v89 = v147;
    v118[-2] = v147;
    swift_beginAccess();
    v90 = v125;
    v91 = v128;
    sub_1001C5D48();
    swift_endAccess();
    (*(v127 + 8))(v90, v91);
    v92 = v148;
    v93 = *(v148 + 16);
    v94 = v89;
    v95 = v149;
    v93(v88, v94, v149);
    if (sub_100162728())
    {
      v96 = v130;
      v93(v130, v88, v95);
      v97 = 0;
    }

    else
    {
      v97 = 2;
      v96 = v130;
    }

    (*(v92 + 56))(v96, v97, 2, v95);
    v106 = v126;
    v122(v126, &v144[v2], v24);
    v107 = v124;
    v144 = v2;
    v108 = v96;
    sub_1001C5D38();
    v119(v106, v24);
    v109 = v134;
    v93(v134, v107, v95);
    v73 = v120;
    v150 = v67;
    v67(v107, v120);
    v110 = v131;
    v111 = v135;
    v112 = v132;
    (*(v131 + 16))(v135, v96, v132);
    v113 = type metadata accessor for CRDTModelRevisionInfo();
    v114 = v139;
    (*(*(v113 - 8) + 56))(v139, 1, 1, v113);
    v115 = v138;
    ModelState.init(model:loaded:source:revisionInfo:)(v109, 1, v111, v114, v95, v138);
    sub_100164144(v115, 0x656C646E61685F71, 0xE800000000000000);
    (*(v140 + 8))(v115, v141);
    sub_100164580();
    (*(v110 + 8))(v108, v112);
    (*(v92 + 8))(v145, v95);
    if (v146)
    {
      v45 = v147;
      v47 = v133;
      v80 = v150;
      goto LABEL_20;
    }

    v116 = sub_100162728();
    v45 = v147;
    v47 = v133;
    v80 = v150;
    if (!v116)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_100167608();
    goto LABEL_20;
  }

  v53(v142, v45, v23);
  v70 = v121;
  v53(v121, v47, v23);
  v71 = sub_1001C5128();
  v72 = sub_1001C65B8();
  v73 = v23;
  if (os_log_type_enabled(v71, v72))
  {
    v74 = swift_slowAlloc();
    v145 = swift_slowAlloc();
    v152 = v145;
    *v74 = 136315394;
    v132 = *(v23 + 16);
    v133 = v47;
    v75 = *(v23 + 32);
    v76 = v142;
    v144 = v71;
    v77 = sub_1001C6CC8();
    *&v147 = v45;
    v79 = v78;
    LODWORD(v143) = v72;
    v80 = *(isa + 1);
    (v80)(v76, v73);
    v81 = sub_1001874E8(v77, v79, &v152);
    v45 = v147;

    *(v74 + 4) = v81;
    *(v74 + 12) = 2080;
    v47 = v133;
    v82 = sub_1001C6CC8();
    v83 = v70;
    v85 = v84;
    (v80)(v83, v73);
    v86 = sub_1001874E8(v82, v85, &v152);

    *(v74 + 14) = v86;
    v87 = v144;
    _os_log_impl(&_mh_execute_header, v144, v143, "CRDTModelFileSyncManager q_handle -- no delta, incoming=%s and existing=%s", v74, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v80 = *(isa + 1);
    (v80)(v70, v23);
    (v80)(v142, v23);
  }

  v98 = v148;
  v99 = sub_100162728();
  v100 = v149;
  if (!v99)
  {
    v101 = v134;
    sub_1001625D4(v134);
    v102 = v135;
    (*(v98 + 56))(v135, 2, 2, v100);
    v103 = type metadata accessor for CRDTModelRevisionInfo();
    v104 = v139;
    (*(*(v103 - 8) + 56))(v139, 1, 1, v103);
    v105 = v138;
    ModelState.init(model:loaded:source:revisionInfo:)(v101, 1, v102, v104, v100, v138);
    sub_100164144(v105, 0xD000000000000012, 0x8000000100200E30);
    (*(v140 + 8))(v105, v141);
  }

  sub_100164478(v150);
  if (!v146 && sub_100162728())
  {
    goto LABEL_19;
  }

LABEL_20:
  (v80)(v47, v73);
  return (v80)(v45, v73);
}

uint64_t sub_100163DC0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = aBlock - v10;
  v12 = *(*v3 + 200);
  sub_10009ADF0(a1, aBlock - v10, &unk_10026F420, &unk_1001F0E50);

  v13 = sub_1001C5128();
  v14 = sub_1001C65B8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v15 = 136315394;
    *(v15 + 4) = sub_1001874E8(a2, a3, aBlock);
    *(v15 + 12) = 2080;
    v16 = sub_1001615D8();
    v18 = v17;
    sub_10008875C(v11, &unk_10026F420, &unk_1001F0E50);
    v19 = sub_1001874E8(v16, v18, aBlock);

    *(v15 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v13, v14, "CRDTModelFileSyncManager q_updateState (%s) -- newState=%s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v20 = sub_10008875C(v11, &unk_10026F420, &unk_1001F0E50);
  }

  v21 = *(v4 + 32);
  __chkstk_darwin(v20);
  aBlock[-2] = a1;
  v22 = *(v21 + 16);
  v23 = swift_allocObject();
  v23[2] = sub_10009B018;
  v23[3] = &aBlock[-4];
  v23[4] = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_10009AD7C;
  *(v24 + 24) = v23;
  aBlock[4] = sub_1000B3DA0;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000906F4;
  aBlock[3] = &unk_10024AE60;
  v25 = _Block_copy(aBlock);
  swift_retain_n();

  dispatch_sync(v22, v25);
  _Block_release(v25);
  LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

  if (v22)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100164144(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v30 = a2;
  v34 = *v3;
  v7 = v34[10];
  v8 = v34[12];
  v32 = v34[11];
  v33 = v7;
  v31 = v8;
  v9 = type metadata accessor for ModelState();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v28 - v12;
  v14 = v34[25];
  (*(v10 + 16))(&v28 - v12, a1, v9);

  v15 = sub_1001C5128();
  v16 = sub_1001C65B8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v29 = a1;
    v35 = v18;
    *v17 = 136315394;
    *(v17 + 4) = sub_1001874E8(v30, a3, &v35);
    *(v17 + 12) = 2080;
    v19 = ModelState.description.getter(v9);
    v21 = v20;
    (*(v10 + 8))(v13, v9);
    v22 = sub_1001874E8(v19, v21, &v35);

    *(v17 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "CRDTModelFileSyncManager q_updateState (%s) -- newState=%s", v17, 0x16u);
    swift_arrayDestroy();
    a1 = v29;
  }

  else
  {

    v23 = (*(v10 + 8))(v13, v9);
  }

  v24 = v4[4];
  __chkstk_darwin(v23);
  v25 = v32;
  *(&v28 - 6) = v33;
  *(&v28 - 5) = v25;
  v26 = v34[13];
  *(&v28 - 4) = v31;
  *(&v28 - 3) = v26;
  *(&v28 - 2) = a1;

  MutableObservableContainer.mutate(_:)(sub_100127A64, (&v28 - 8));
}

uint64_t sub_100164478(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 192);
  swift_beginAccess();
  v7 = *(v3 + 80);
  v8 = *(v3 + 96);
  type metadata accessor for CRDTModelFileSyncInfo();
  swift_getWitnessTable();
  v5 = sub_1001C5D68();
  (*(*(v5 - 8) + 24))(v1 + v4, a1, v5);
  swift_endAccess();
  return sub_100164580();
}

uint64_t sub_100164580()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[12];
  v4 = *(*v0 + 192);
  swift_beginAccess();
  v5 = *(v2 + 96);
  v12 = *(v2 + 80);
  v13 = v5;
  type metadata accessor for CRDTModelFileSyncInfo();
  swift_getWitnessTable();
  sub_1001C5D68();
  sub_1001C5D18();
  swift_endAccess();
  v6 = v1[5];
  v7 = *(v6 + 16);
  v8 = swift_allocObject();
  v8[2] = sub_10016A0C4;
  v8[3] = v1;
  v8[4] = v6;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1000F51E4;
  *(v9 + 24) = v8;
  v14 = sub_1000B3DA0;
  v15 = v9;
  *&v12 = _NSConcreteStackBlock;
  *(&v12 + 1) = 1107296256;
  *&v13 = sub_1000906F4;
  *(&v13 + 1) = &unk_10024ADE8;
  v10 = _Block_copy(&v12);
  swift_retain_n();

  dispatch_sync(v7, v10);
  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001647AC(void *a1, char *a2)
{
  v4 = sub_100084528(&unk_100270A30, &qword_1001F3490);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  sub_10016A0CC(a1, type metadata accessor for CRDTModelSyncVersion);
  v9 = *(a2 + 12);
  v10 = *(*a2 + 192);
  swift_beginAccess();
  (*(v5 + 16))(v8, &a2[v10], v4);
  LODWORD(a2) = *(type metadata accessor for CRDTModelSyncVersion() + 20);
  v11 = v9;
  sub_1001C5D58();
  result = (*(v5 + 8))(v8, v4);
  *a1 = v11;
  return result;
}

uint64_t sub_100164918(void *a1, char *a2)
{
  v2 = a2;
  v4 = *(*a2 + 96);
  v14[0] = *(*a2 + 80);
  v14[1] = v4;
  type metadata accessor for CRDTModelFileSyncInfo();
  swift_getWitnessTable();
  v5 = sub_1001C5D68();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v14 - v8;
  sub_10016A0CC(a1, type metadata accessor for CRDTModelSyncVersion);
  v10 = *(v2 + 12);
  v11 = *(*v2 + 192);
  swift_beginAccess();
  (*(v6 + 16))(v9, &v2[v11], v5);
  LODWORD(v2) = *(type metadata accessor for CRDTModelSyncVersion() + 20);
  v12 = v10;
  sub_1001C5D58();
  result = (*(v6 + 8))(v9, v5);
  *a1 = v12;
  return result;
}

uint64_t CRDTModelFileSyncManager.sync(_:isRemote:)(uint64_t a1, char a2)
{
  v5 = sub_1001C5648();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v2 + 48);
  sub_1001C5638();
  v13 = v2;
  v14 = a1;
  v15 = a2;
  sub_1001C6678();
  return (*(v6 + 8))(v9, v5);
}

void sub_100164C00(uint64_t a1, int a2, void *a3)
{
  v145 = a1;
  v139 = a2;
  v4 = sub_100084528(&unk_10026FC40, &qword_1001F0E90);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v130 = &v122 - v6;
  v7 = sub_1001C5BD8();
  v137 = *(v7 - 8);
  v138 = v7;
  v8 = *(v137 + 64);
  __chkstk_darwin(v7);
  v136 = &v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_1001C5AC8();
  v134 = *(v135 - 8);
  v10 = *(v134 + 64);
  __chkstk_darwin(v135);
  v133 = &v122 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_100084528(&unk_1002739E0, &qword_1001F3498);
  v12 = *(*(v132 - 8) + 64);
  v13 = __chkstk_darwin(v132);
  v129 = &v122 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v141 = &v122 - v15;
  v16 = sub_100084528(&unk_100270A30, &qword_1001F3490);
  v143 = *(v16 - 8);
  v144 = v16;
  v17 = *(v143 + 64);
  v18 = __chkstk_darwin(v16);
  v128 = &v122 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v147 = &v122 - v20;
  v21 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = &v122 - v23;
  v25 = type metadata accessor for ReadingHistoryModel(0);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25);
  v29 = &v122 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v27);
  v32 = &v122 - v31;
  __chkstk_darwin(v30);
  v34 = &v122 - v33;
  v142 = [a3[8] createTransactionWithName:"com.apple.ibooks.CRDTModelFileSyncManager.q_sync"];
  v35 = *(a3[4] + 16);

  v140 = v21;
  v37 = v145;
  v36 = v146;
  sub_1001C6688();
  v146 = v36;

  sub_10016A1E0(v24, v34, type metadata accessor for ReadingHistoryModel);
  sub_10008875C(v24, &unk_10026F420, &unk_1001F0E50);
  sub_10016A258(&qword_10026F460, type metadata accessor for ReadingHistoryModel);
  v131 = v25;
  v38 = sub_1001C5C38();
  sub_10016A0CC(v34, type metadata accessor for ReadingHistoryModel);
  v39 = *(*a3 + 200);
  if (v38)
  {
    sub_10016A1E0(v37, v32, type metadata accessor for ReadingHistoryModel);

    v124 = v39;
    v40 = sub_1001C5128();
    v41 = sub_1001C65B8();

    v42 = os_log_type_enabled(v40, v41);
    v127 = v24;
    if (v42)
    {
      v43 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      aBlock[0] = v126;
      *v43 = 67109634;
      *(v43 + 4) = v139 & 1;
      *(v43 + 8) = 2080;
      LODWORD(v125) = v41;
      v44 = ReadingHistoryModel.description.getter();
      v45 = v37;
      v47 = v46;
      v123 = type metadata accessor for ReadingHistoryModel;
      sub_10016A0CC(v32, type metadata accessor for ReadingHistoryModel);
      v48 = sub_1001874E8(v44, v47, aBlock);
      v37 = v45;

      *(v43 + 10) = v48;
      *(v43 + 18) = 2080;
      v49 = *(a3[4] + 16);

      v50 = v146;
      sub_1001C6688();
      v146 = v50;

      sub_10016A1E0(v24, v34, type metadata accessor for ReadingHistoryModel);
      sub_10008875C(v24, &unk_10026F420, &unk_1001F0E50);
      v51 = ReadingHistoryModel.description.getter();
      v53 = v52;
      sub_10016A0CC(v34, v123);
      v54 = sub_1001874E8(v51, v53, aBlock);

      *(v43 + 20) = v54;
      _os_log_impl(&_mh_execute_header, v40, v125, "CRDTModelFileSyncManager q_sync: isRemote=%{BOOL}d, incoming=%s and existing=%s", v43, 0x1Cu);
      swift_arrayDestroy();
    }

    else
    {

      sub_10016A0CC(v32, type metadata accessor for ReadingHistoryModel);
    }

    v68 = v144;
    v69 = *(*a3 + 192);
    swift_beginAccess();
    v70 = *(v143 + 16);
    v123 = v69;
    v126 = v143 + 16;
    v125 = v70;
    v70(v147, v69 + a3, v68);
    sub_10016A1E0(v37, v34, type metadata accessor for ReadingHistoryModel);
    sub_100084528(&unk_10026ED30, &unk_1001F1490);
    sub_1000885F4(&unk_10026F430, &unk_10026ED30, &unk_1001F1490);
    sub_1000885F4(&unk_10026ED40, &unk_10026ED30, &unk_1001F1490);
    v71 = v141;
    sub_1001C5B58();
    v72 = v131;
    v73 = *(v131 + 20);
    sub_1001C4CA8();
    sub_10016A258(&unk_10026F440, &type metadata accessor for Date);
    v74 = v144;
    sub_1001C5B58();
    *(v71 + *(v72 + 24)) = &_swiftEmptyDictionarySingleton;
    *(v71 + *(v132 + 52)) = &_swiftEmptyDictionarySingleton;
    v75 = sub_1000B385C(v34, v71);
    v76 = v34;
    __chkstk_darwin(v75);
    *(&v122 - 2) = v71;
    v77 = v133;
    v78 = v135;
    v79 = v146;
    sub_1001C5D48();
    (*(v134 + 8))(v77, v78);
    v80 = a3[12];
    v82 = v136;
    v81 = v137;
    v83 = v138;
    (*(v137 + 104))(v136, enum case for CRCodableVersion.version3(_:), v138);
    v84 = sub_1001C5D08();
    if (v79)
    {

      (*(v81 + 8))(v82, v83);
      v86 = sub_1001C5128();
      v87 = sub_1001C6598();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v149 = v89;
        *v88 = 136315138;
        v90 = v147;
        swift_beginAccess();
        v91 = v129;
        sub_1001C5D38();
        v92 = ReadingHistoryModel.description.getter();
        v94 = v93;
        sub_10008875C(v91, &unk_1002739E0, &qword_1001F3498);
        v95 = sub_1001874E8(v92, v94, &v149);

        *(v88 + 4) = v95;
        _os_log_impl(&_mh_execute_header, v86, v87, "CRDTModelFileSyncManager q_sync: couldn't serialize model to sync: %s", v88, 0xCu);
        sub_10008E7BC(v89);
      }

      else
      {

        v90 = v147;
      }

      sub_100084528(&qword_100270AA0, &qword_1001F34E0);
      sub_1000885F4(&qword_100270AA8, &qword_100270AA0, &qword_1001F34E0);
      swift_allocError();
      *v101 = 1;
      swift_willThrow();

      sub_10008875C(v141, &unk_1002739E0, &qword_1001F3498);
      (*(v143 + 8))(v90, v74);
    }

    else
    {
      v135 = v80;
      v97 = v145;
      v146 = v76;
      v134 = v85;
      v133 = v84;
      (*(v81 + 8))(v82, v83);
      if (v139)
      {
        v98 = v130;
        sub_10016A1E0(v97, v130, type metadata accessor for ReadingHistoryModel);
        v99 = 0;
        v100 = v127;
      }

      else
      {
        v99 = 1;
        v100 = v127;
        v98 = v130;
      }

      v102 = sub_100084528(&qword_100270A40, &unk_1001F0E60);
      (*(*(v102 - 8) + 56))(v98, v99, 2, v102);
      v103 = *(a3[4] + 16);

      v104 = v140;
      sub_1001C6688();

      v105 = v129;
      v106 = v147;
      sub_1001C5D38();
      v107 = v146;
      sub_10016A1E0(v105, v146, type metadata accessor for ReadingHistoryModel);
      sub_10008875C(v105, &unk_1002739E0, &qword_1001F3498);
      sub_1000B385C(v107, v100);
      sub_1000F4D64(v98, v100 + *(v104 + 48));
      sub_100163DC0(v100, 0x636E79735F71, 0xE600000000000000);
      v108 = v128;
      v125(v128, v106, v74);
      v109 = v123;
      swift_beginAccess();
      (*(v143 + 24))(v109 + a3, v108, v74);
      sub_1001C5D18();
      swift_endAccess();
      v110 = a3[5];
      v111 = *(v110 + 16);
      v112 = swift_allocObject();
      v112[2] = sub_1000F4A08;
      v112[3] = a3;
      v112[4] = v110;
      v113 = swift_allocObject();
      *(v113 + 16) = sub_1000F4A10;
      *(v113 + 24) = v112;
      aBlock[4] = sub_1000B2E48;
      aBlock[5] = v113;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000906F4;
      aBlock[3] = &unk_10024AC58;
      v114 = _Block_copy(aBlock);
      swift_retain_n();

      dispatch_sync(v111, v114);
      _Block_release(v114);
      LOBYTE(v111) = swift_isEscapingClosureAtFileLocation();

      if (v111)
      {
        __break(1u);
      }

      else
      {
        v115 = v144;
        v116 = *(v143 + 8);
        v116(v108, v144);
        v117 = a3[11];
        v125(v108, v109 + a3, v115);
        v118 = swift_allocObject();
        v118[2] = a3;
        v118[3] = MarkedAsFinishedMechanism.rawValue.getter;
        v119 = v142;
        v118[4] = 0;
        v118[5] = v119;
        v120 = *(v117 + 16);

        v121 = v119;
        sub_100160A38(v108, sub_100169EEC, v118);

        sub_1000887D0(v133, v134);

        v116(v108, v115);
        sub_10008875C(v130, &unk_10026FC40, &qword_1001F0E90);
        sub_10008875C(v127, &unk_10026F420, &unk_1001F0E50);
        sub_10008875C(v141, &unk_1002739E0, &qword_1001F3498);
        v116(v147, v115);
      }
    }
  }

  else
  {
    sub_10016A1E0(v37, v29, type metadata accessor for ReadingHistoryModel);

    v55 = sub_1001C5128();
    v56 = sub_1001C65B8();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = v34;
      v58 = swift_slowAlloc();
      v147 = swift_slowAlloc();
      aBlock[0] = v147;
      *v58 = 67109634;
      *(v58 + 4) = v139 & 1;
      *(v58 + 8) = 2080;
      LODWORD(v145) = v56;
      v59 = ReadingHistoryModel.description.getter();
      v61 = v60;
      sub_10016A0CC(v29, type metadata accessor for ReadingHistoryModel);
      v62 = sub_1001874E8(v59, v61, aBlock);

      *(v58 + 10) = v62;
      *(v58 + 18) = 2080;
      v63 = *(a3[4] + 16);

      sub_1001C6688();

      sub_10016A1E0(v24, v57, type metadata accessor for ReadingHistoryModel);
      sub_10008875C(v24, &unk_10026F420, &unk_1001F0E50);
      v64 = ReadingHistoryModel.description.getter();
      v66 = v65;
      sub_10016A0CC(v57, type metadata accessor for ReadingHistoryModel);
      v67 = sub_1001874E8(v64, v66, aBlock);

      *(v58 + 20) = v67;
      _os_log_impl(&_mh_execute_header, v55, v145, "CRDTModelFileSyncManager q_sync -- no delta: isRemote=%{BOOL}d, incoming=%s and existing=%s", v58, 0x1Cu);
      swift_arrayDestroy();
    }

    else
    {

      sub_10016A0CC(v29, type metadata accessor for ReadingHistoryModel);
    }

    sub_100084528(&qword_100270AA0, &qword_1001F34E0);
    sub_1000885F4(&qword_100270AA8, &qword_100270AA0, &qword_1001F34E0);
    swift_allocError();
    *v96 = 0;
    swift_willThrow();
  }
}