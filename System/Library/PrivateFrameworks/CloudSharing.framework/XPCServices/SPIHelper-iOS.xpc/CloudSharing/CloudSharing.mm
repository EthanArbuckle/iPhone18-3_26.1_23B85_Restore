int main(int argc, const char **argv, const char **envp)
{
  qword_1000CBA70 = [objc_allocWithZone(type metadata accessor for ServiceDelegate()) init];
  qword_1000CBA78 = [objc_opt_self() serviceListener];
  [qword_1000CBA78 setDelegate:qword_1000CBA70];
  [qword_1000CBA78 resume];
  return 0;
}

id sub_100002220()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServiceDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_1000022AC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1000022D4()
{
  v1 = *v0;
  sub_10009DD90();
  v2 = sub_10009DE50();

  return v2;
}

uint64_t sub_100002310()
{
  v1 = *v0;
  sub_10009DD90();
  sub_10009DDE0();
}

Swift::Int sub_100002364()
{
  v1 = *v0;
  sub_10009DD90();
  sub_10009E380();
  sub_10009DDE0();
  v2 = sub_10009E3A0();

  return v2;
}

uint64_t sub_1000023D8(uint64_t a1, id *a2)
{
  result = sub_10009DD70();
  *a2 = 0;
  return result;
}

uint64_t sub_100002450(uint64_t a1, id *a2)
{
  v3 = sub_10009DD80();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000024D0@<X0>(void *a1@<X8>)
{
  sub_10009DD90();
  v2 = sub_10009DD50();

  *a1 = v2;
  return result;
}

uint64_t sub_100002514(uint64_t a1)
{
  v2 = sub_100002F20(&qword_1000C9FB8, type metadata accessor for BRError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100002580(uint64_t a1)
{
  v2 = sub_100002F20(&qword_1000C9FB8, type metadata accessor for BRError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000025F0(uint64_t a1)
{
  v2 = sub_100002F20(&qword_1000C9FF0, type metadata accessor for BRError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_10000265C(uint64_t a1)
{
  v2 = sub_100002F20(&qword_1000C9FF8, type metadata accessor for CKError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000026C8(uint64_t a1)
{
  v2 = sub_100002F20(&qword_1000C9FF8, type metadata accessor for CKError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100002734(uint64_t a1)
{
  v2 = sub_100002F20(&qword_1000CA028, type metadata accessor for CKError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000027B0()
{
  sub_100002F20(&qword_1000C9FF0, type metadata accessor for BRError);

  return sub_10009D790();
}

uint64_t sub_10000281C(uint64_t a1)
{
  v2 = sub_100002F20(&qword_1000C9FF0, type metadata accessor for BRError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100002888(void *a1, uint64_t a2)
{
  v4 = sub_100002F20(&qword_1000C9FF0, type metadata accessor for BRError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_10000293C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002F20(&qword_1000C9FF0, type metadata accessor for BRError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000029CC()
{
  sub_100002F20(&qword_1000CA028, type metadata accessor for CKError);

  return sub_10009D790();
}

uint64_t sub_100002A38(uint64_t a1)
{
  v2 = sub_100002F20(&qword_1000CA028, type metadata accessor for CKError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100002AA4(void *a1, uint64_t a2)
{
  v4 = sub_100002F20(&qword_1000CA028, type metadata accessor for CKError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100002B34(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002F20(&qword_1000CA028, type metadata accessor for CKError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100002BB0()
{
  v2 = *v0;
  sub_10009E380();
  sub_10009DD30();
  return sub_10009E3A0();
}

uint64_t sub_100002C14(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_10009DD90();
  v6 = v5;
  if (v4 == sub_10009DD90() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_10009E2E0();
  }

  return v9 & 1;
}

uint64_t sub_100002C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002F20(&qword_1000C9FF0, type metadata accessor for BRError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_100002D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002F20(&qword_1000CA028, type metadata accessor for CKError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_100002DA8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_10009DD90();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_100002DD4(uint64_t a1)
{
  v2 = sub_100002F20(&qword_1000C9E90, type metadata accessor for URLResourceKey);
  v3 = sub_100002F20(&qword_1000C9E98, type metadata accessor for URLResourceKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100002F20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100002FB0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_10009DD50();

  *a2 = v5;
  return result;
}

uint64_t sub_100002FF8(uint64_t a1)
{
  v2 = sub_100002F20(&qword_1000CA030, type metadata accessor for NSFileProviderServiceName);
  v3 = sub_100002F20(&qword_1000CA038, type metadata accessor for NSFileProviderServiceName);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000030B4(void *a1)
{
  v2 = sub_10009D9F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10009DD50();
  v8 = [a1 valueForEntitlement:v7];

  if (v8)
  {
    sub_10009E180();
    swift_unknownObjectRelease();
  }

  else
  {
    v37 = 0u;
    v36 = 0u;
  }

  v38[0] = v36;
  v38[1] = v37;
  sub_1000036A4(v38, &v36);
  if (*(&v37 + 1))
  {
    if (swift_dynamicCast() & 1) != 0 && (v35)
    {
      [a1 processIdentifier];
      v9 = objc_allocWithZone(type metadata accessor for SPIHelper());
      v10 = sub_10004D13C();
      v11 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP13SPIHelper_iOS17SPIHelperProtocol_];
      sub_100003714(&qword_1000C9F08, &qword_10009F4C0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10009F250;
      *(inited + 32) = "startFileSharingWithURLWrapper:emailAddresses:phoneNumbers:optionsGroups:withReply:";
      *(inited + 40) = 3;
      *(inited + 48) = "addToCloudKitSharing:containerSetupInfo:emailAddresses:phoneNumbers:optionsGroups:withReply:";
      *(inited + 56) = 4;
      v32 = "addParticipantsToShareWithURLWrapper:share:emailAddresses:phoneNumbers:optionsGroups:withReply:";
      *(inited + 64) = "addParticipantsToShareWithURLWrapper:share:emailAddresses:phoneNumbers:optionsGroups:withReply:";
      *(inited + 72) = 4;
      v33 = "addParticipantsToShare:containerSetupInfo:emailAddresses:phoneNumbers:optionsGroups:withReply:";
      *(inited + 80) = "addParticipantsToShare:containerSetupInfo:emailAddresses:phoneNumbers:optionsGroups:withReply:";
      *(inited + 88) = 4;
      v34 = "forciblyShareFolder:emailAddresses:phoneNumbers:optionsGroups:withReply:";
      *(inited + 96) = "forciblyShareFolder:emailAddresses:phoneNumbers:optionsGroups:withReply:";
      *(inited + 104) = 3;
      sub_100003714(&qword_1000C9F10, &qword_10009F4C8);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_10009F260;
      v14 = sub_1000037C4(0, &qword_1000C9F18, _SWCollaborationOptionsPickerGroup_ptr);
      *(v13 + 56) = sub_100003714(&qword_1000C9F20, &qword_10009F4D0);
      *(v13 + 32) = v14;
      v15 = sub_1000037C4(0, &qword_1000C9F28, _SWCollaborationOptionsGroup_ptr);
      *(v13 + 88) = sub_100003714(&qword_1000C9F30, &qword_10009F4D8);
      *(v13 + 64) = v15;
      v16 = sub_1000037C4(0, &qword_1000C9F38, NSArray_ptr);
      *(v13 + 120) = sub_100003714(&qword_1000C9F40, &unk_10009F4E0);
      *(v13 + 96) = v16;
      v17 = objc_allocWithZone(NSSet);
      isa = sub_10009DE90().super.isa;

      v19 = [v17 initWithArray:isa];

      *&v36 = 0;
      sub_10009DF80();

      if (v36)
      {
        v20 = sub_10009DF70().super.isa;
        v31 = v10;
        [v11 setClasses:v20 forSelector:"startFileSharingWithURLWrapper:emailAddresses:phoneNumbers:optionsGroups:withReply:" argumentIndex:3 ofReply:0];

        v21 = sub_10009DF70().super.isa;
        [v11 setClasses:v21 forSelector:"addToCloudKitSharing:containerSetupInfo:emailAddresses:phoneNumbers:optionsGroups:withReply:" argumentIndex:4 ofReply:0];

        v22 = sub_10009DF70().super.isa;
        [v11 setClasses:v22 forSelector:v32 argumentIndex:4 ofReply:0];

        v23 = sub_10009DF70().super.isa;
        [v11 setClasses:v23 forSelector:v33 argumentIndex:4 ofReply:0];

        v24 = sub_10009DF70().super.isa;

        v10 = v31;
        [v11 setClasses:v24 forSelector:v34 argumentIndex:3 ofReply:0];
      }

      else
      {
      }

      [a1 setExportedInterface:v11];
      [a1 setExportedObject:v10];
      [a1 resume];

      v28 = 1;
      goto LABEL_13;
    }
  }

  else
  {
    sub_10000375C(&v36);
  }

  sub_10009D9D0();
  v25 = sub_10009D9E0();
  v26 = sub_10009DFD0();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "CloudSharing SPI: Attempted connection without entitlement. Denied.", v27, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v28 = 0;
LABEL_13:
  sub_10000375C(v38);
  return v28;
}

uint64_t sub_1000036A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003714(&qword_1000C9F00, &qword_10009F4B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100003714(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10000375C(uint64_t a1)
{
  v2 = sub_100003714(&qword_1000C9F00, &qword_10009F4B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000037C4(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

__n128 sub_100003834(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100003844(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100003864(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

unint64_t sub_100003C68()
{
  result = qword_1000C9FE0;
  if (!qword_1000C9FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C9FE0);
  }

  return result;
}

void sub_100003E80(uint64_t a1, unint64_t *a2)
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

void sub_100003FF4(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t, id), uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    v13 = sub_10009D7A0();
    a4(0, v13);
  }

  else
  {
    swift_beginAccess();
    if (*(a3 + 16))
    {
      swift_errorRetain();
      v11 = sub_10009D7A0();
      a4(0, v11);
    }

    else
    {
      swift_beginAccess();
      if (*(a6 + 16))
      {
        swift_errorRetain();
        v12 = sub_10009D7A0();
        a4(0, v12);
      }

      else
      {
        a4(a7, 0);
      }
    }
  }
}

void sub_100004134(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v11 = sub_100003714(&qword_1000CA1F0, &qword_10009FD58);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v27 - v14;
  (*(v12 + 16))(&v27 - v14, a1, v11);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = swift_allocObject();
  (*(v12 + 32))(v17 + v16, v15, v11);
  sub_100005A34();
  sub_100003714(&qword_1000CA200, &qword_10009FD60);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10009FCD0;
  *(v18 + 32) = a3;
  v19 = a3;
  v28.value._rawValue = v18;
  v28.is_nil = 0;
  v20.super.super.super.super.isa = sub_10009E070(v28, v29).super.super.super.super.isa;
  [(objc_class *)v20.super.super.super.super.isa setQualityOfService:25];
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  v22 = swift_allocObject();
  *(v22 + 16) = 0;

  sub_10009E080();

  sub_10009E090();
  v23 = swift_allocObject();
  v23[2] = v21;
  v23[3] = sub_1000059A8;
  v23[4] = v17;
  v23[5] = v22;
  v23[6] = v19;
  v24 = v19;

  sub_10009E060();
  v25 = &selRef_sharedCloudDatabase;
  if ((a4 & 0x10000000000) != 0)
  {
    v25 = &selRef_privateCloudDatabase;
  }

  v26 = [a7 *v25];
  [v26 addOperation:v20.super.super.super.super.isa];
}

uint64_t sub_100004420(void *a1, void *a2)
{
  if (!a1 || a2)
  {
    sub_100005B1C();
    swift_allocError();
    *v5 = 0xD000000000000029;
    *(v5 + 8) = 0x80000001000A47D0;
    *(v5 + 24) = 0;
    *(v5 + 32) = 0;
    *(v5 + 16) = a2;
    *(v5 + 40) = 4;
    v6 = a2;
    sub_100003714(&qword_1000CA1F0, &qword_10009FD58);
    return sub_10009DEE0();
  }

  else
  {
    v3 = a1;
    sub_100003714(&qword_1000CA1F0, &qword_10009FD58);
    return sub_10009DEF0();
  }
}

void sub_1000044F8(int a1, id a2, char a3, void (*a4)(void))
{
  if (a3)
  {
    v7 = sub_10009D7A0();
    (a4)(0, 0, 0);
  }

  else
  {
    v6 = [a2 share];
    v7 = [a2 containerID];
    a4(v6);
  }
}

uint64_t sub_1000045C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_100003714(&qword_1000CA208, &qword_10009FD68);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  sub_100005D7C(a3, a4, sub_100005B84, v13);
}

uint64_t sub_100004718(void *a1, void *a2, void *a3, void *a4)
{
  if (a1 && a2 && a3 && !a4)
  {
    v7 = a1;
    v8 = a2;
    v9 = a3;
    sub_100003714(&qword_1000CA208, &qword_10009FD68);
    return sub_10009DEF0();
  }

  else
  {
    sub_100005B1C();
    swift_allocError();
    *v11 = 0xD00000000000002DLL;
    *(v11 + 8) = 0x80000001000A4820;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0;
    *(v11 + 16) = a4;
    *(v11 + 40) = 5;
    v12 = a4;
    sub_100003714(&qword_1000CA208, &qword_10009FD68);
    return sub_10009DEE0();
  }
}

void sub_10000480C(uint64_t a1, uint64_t a2, void *a3, char a4, void *a5)
{
  v9 = sub_100003714(&qword_1000CA228, &qword_10009FDA8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v23 - v12;
  (*(v10 + 16))(&v23 - v12, a1, v9);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v13, v9);
  sub_100005A34();
  sub_100003714(&qword_1000CA200, &qword_10009FD60);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10009FCD0;
  *(v16 + 32) = [a3 recordID];
  v24.value._rawValue = _swiftEmptyArrayStorage;
  v24.is_nil = v16;
  v17.super.super.super.super.isa = sub_10009E070(v24, v25).super.super.super.super.isa;
  [(objc_class *)v17.super.super.super.super.isa setQualityOfService:25];
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  v19 = swift_allocObject();
  *(v19 + 16) = 0;

  sub_10009E080();

  sub_10009E090();
  v20 = swift_allocObject();
  v20[2] = v18;
  v20[3] = sub_1000068A4;
  v20[4] = v15;
  v20[5] = v19;

  sub_10009E060();
  v21 = &selRef_privateCloudDatabase;
  if ((a4 & 1) == 0)
  {
    v21 = &selRef_sharedCloudDatabase;
  }

  v22 = [a5 *v21];
  [v22 addOperation:v17.super.super.super.super.isa];
}

uint64_t sub_100004B04(void *a1)
{
  if (a1)
  {
    sub_100005B1C();
    swift_allocError();
    *v2 = 0xD000000000000030;
    *(v2 + 8) = 0x80000001000A48B0;
    *(v2 + 24) = 0;
    *(v2 + 32) = 0;
    *(v2 + 16) = a1;
    *(v2 + 40) = 8;
    v3 = a1;
    sub_100003714(&qword_1000CA228, &qword_10009FDA8);
    return sub_10009DEE0();
  }

  else
  {
    sub_100003714(&qword_1000CA228, &qword_10009FDA8);
    return sub_10009DEF0();
  }
}

uint64_t sub_100004BD8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    swift_beginAccess();
    v6 = *(a4 + 16);
    *(a4 + 16) = a2;
    swift_errorRetain();
  }

  return result;
}

void sub_100004C40(uint64_t a1, char a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v11 = sub_10009D7A0();
    a4();
  }

  else
  {
    swift_beginAccess();
    if (*(a3 + 16))
    {
      swift_errorRetain();
      v9 = sub_10009D7A0();
      a4();
    }

    else
    {
      swift_beginAccess();
      if (*(a6 + 16))
      {
        swift_errorRetain();
        v10 = sub_10009D7A0();
        a4();
      }

      else
      {
        (a4)(0);
      }
    }
  }
}

uint64_t sub_100004D54(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  v3 = sub_10009D9F0();
  v2[20] = v3;
  v4 = *(v3 - 8);
  v2[21] = v4;
  v5 = *(v4 + 64) + 15;
  v2[22] = swift_task_alloc();
  v6 = sub_100003714(&qword_1000CA218, &qword_10009FD90);
  v2[23] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();

  return _swift_task_switch(sub_100004E5C, 0, 0);
}

uint64_t sub_100004E5C()
{
  v1 = v0[25];
  v2 = v0[19];
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = sub_100004F78;
  v3 = swift_continuation_init();
  v0[17] = sub_100003714(&qword_1000CA220, &qword_10009FD98);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100005C28;
  v0[13] = &unk_1000C2078;
  v0[14] = v3;
  [v2 fetchFullNameAndFormattedUsernameOfAccountWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100004F78()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  if (v2)
  {
    v3 = sub_100005274;
  }

  else
  {
    v3 = sub_100005088;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100005088()
{
  v23 = v0;
  v1 = v0[24];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[18];
  sub_100006758(v0[25], v1);
  v5 = (v1 + *(v2 + 48));
  v6 = *v5;
  v7 = v5[1];
  v8 = sub_10009D720();
  (*(*(v8 - 8) + 32))(v4, v1, v8);
  sub_10009D9D0();

  v9 = sub_10009D9E0();
  v10 = sub_10009DFF0();

  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[21];
  v12 = v0[22];
  v14 = v0[20];
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_1000307A4(v6, v7, &v22);
    _os_log_impl(&_mh_execute_header, v9, v10, "Username: %s", v15, 0xCu);
    sub_10000670C(v16);
  }

  (*(v13 + 8))(v12, v14);
  v18 = v0[24];
  v17 = v0[25];
  v19 = v0[22];

  v20 = v0[1];

  return v20(v6, v7);
}

uint64_t sub_100005274()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  v4 = v0[22];
  swift_willThrow();

  v5 = v0[1];
  v6 = v0[26];

  return v5();
}

uint64_t sub_100005308(uint64_t a1)
{
  v1[18] = a1;
  v2 = sub_100003714(&qword_1000CA218, &qword_10009FD90);
  v1[19] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();

  return _swift_task_switch(sub_1000053B4, 0, 0);
}

uint64_t sub_1000053B4()
{
  v1 = v0[21];
  v2 = v0[18];
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = sub_1000054D0;
  v3 = swift_continuation_init();
  v0[17] = sub_100003714(&qword_1000CA220, &qword_10009FD98);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100005C28;
  v0[13] = &unk_1000C2050;
  v0[14] = v3;
  [v2 fetchFullNameAndPrimaryEmailOnAccountWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000054D0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_1000056B4;
  }

  else
  {
    v3 = sub_1000055E0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000055E0()
{
  v1 = v0[20];
  v2 = v0[19];
  sub_100006758(v0[21], v1);
  v3 = (v1 + *(v2 + 48));
  v4 = *v3;
  v5 = v3[1];
  v6 = sub_10009D720();
  (*(*(v6 - 8) + 8))(v1, v6);

  v7 = v0[1];

  return v7(v4, v5);
}

uint64_t sub_1000056B4()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[22];

  return v4();
}

uint64_t sub_100005734()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  v3 = *(v0 + 7);

  v4 = OBJC_IVAR____TtC13SPIHelper_iOS18CloudKitOperations__ckSourceAppBundleID;
  v5 = sub_100003714(&qword_1000CA230, &qword_10009FDB0);
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CloudKitOperations()
{
  result = qword_1000CA0E0;
  if (!qword_1000CA0E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100005848()
{
  sub_1000058E8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1000058E8()
{
  if (!qword_1000CA0F0)
  {
    sub_10000594C(&qword_1000CA6A0, &qword_10009FD50);
    v0 = sub_10009DB10();
    if (!v1)
    {
      atomic_store(v0, &qword_1000CA0F0);
    }
  }
}

uint64_t sub_10000594C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000059A8(void *a1, void *a2)
{
  v4 = *(*(sub_100003714(&qword_1000CA1F0, &qword_10009FD58) - 8) + 80);

  return sub_100004420(a1, a2);
}

unint64_t sub_100005A34()
{
  result = qword_1000CA1F8;
  if (!qword_1000CA1F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000CA1F8);
  }

  return result;
}

uint64_t sub_100005A80()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100005AB8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_100005B1C()
{
  result = qword_1000CA8D0;
  if (!qword_1000CA8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA8D0);
  }

  return result;
}

uint64_t sub_100005B84(void *a1, void *a2, void *a3, void *a4)
{
  v8 = *(*(sub_100003714(&qword_1000CA208, &qword_10009FD68) - 8) + 80);

  return sub_100004718(a1, a2, a3, a4);
}

uint64_t sub_100005C28(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_100003714(&qword_1000CA218, &qword_10009FD90);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v17 - v8;
  v10 = *sub_1000067C8((a1 + 32), *(a1 + 56));
  if (a4)
  {
    sub_100003714(&qword_1000CB840, &qword_10009FDA0);
    v11 = swift_allocError();
    *v12 = a4;
    v13 = a4;

    return _swift_continuation_throwingResumeWithError(v10, v11);
  }

  else
  {
    sub_10009D710();
    v14 = &v9[*(v6 + 48)];
    *v14 = sub_10009DD90();
    v14[1] = v15;
    sub_100006758(v9, *(*(v10 + 64) + 40));
    return swift_continuation_throwingResume();
  }
}

void sub_100005D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = [objc_allocWithZone(CKContainer) initWithContainerSetupInfo:a2];
  }

  else
  {
    v8 = objc_allocWithZone(CKContainerID);
    v9 = sub_10009DD50();
    v10 = [v8 initWithContainerIdentifier:v9 environment:1];

    v7 = [objc_allocWithZone(CKContainer) initWithContainerID:v10];
  }

  sub_100003714(&qword_1000CA210, &qword_10009FD70);
  v11 = sub_10009D860();
  v12 = *(v11 - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10009FCE0;
  (*(v12 + 16))(v15 + v14, a1, v11);
  v16 = objc_allocWithZone(CKFetchShareMetadataOperation);
  v20 = v7;
  isa = sub_10009DE90().super.isa;

  v18 = [v16 initWithShareURLs:isa];

  [v18 setShouldFetchRootRecord:0];
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  *(v19 + 24) = a4;

  sub_10009E0C0();
  [v20 addOperation:v18];
}

uint64_t sub_100005FEC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100006030(uint64_t a1)
{
  v1[6] = a1;
  v3 = sub_10009D720();
  v1[7] = v3;
  v4 = *(v3 - 8);
  v1[8] = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  v1[9] = v6;
  v1[10] = swift_task_alloc();
  v7 = swift_task_alloc();
  v1[11] = v7;
  *v7 = v1;
  v7[1] = sub_100006144;

  return sub_100004D54(v6, a1);
}

uint64_t sub_100006144(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[2] = v3;
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = v2;
  v6 = v4[11];
  v9 = *v3;
  v5[12] = a2;
  v5[13] = v2;

  if (v2)
  {
    v7 = sub_1000065A8;
  }

  else
  {
    v7 = sub_100006260;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100006260()
{
  (*(v0[8] + 32))(v0[10], v0[9], v0[7]);
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_10000630C;
  v2 = v0[6];

  return sub_100005308(v2);
}

uint64_t sub_10000630C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 112);
  v8 = *v3;
  *(*v3 + 120) = v2;

  if (v2)
  {
    v9 = v6[12];

    v10 = sub_100006614;
  }

  else
  {
    v11 = v6[3];
    v6[16] = a2;
    v6[17] = a1;
    v6[18] = v11;
    v10 = sub_100006450;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_100006450()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  v4 = v0[12];
  v5 = v0[9];
  v6 = v0[10];
  v7 = v0[7];
  v8 = v0[8];
  v18._object = 0x80000001000A4850;
  v18._countAndFlagsBits = 0xD000000000000017;
  if (sub_10009DE40(v18))
  {
    v1 = v2;
    v3 = v4;
  }

  v9 = objc_opt_self();
  v10 = sub_10009D700();
  v11 = [v9 localizedStringFromPersonNameComponents:v10 style:2 options:0];

  v12 = sub_10009DD90();
  v14 = v13;

  (*(v8 + 8))(v6, v7);

  v15 = v0[1];

  return v15(v12, v14, v1, v3);
}

uint64_t sub_1000065A8()
{
  v1 = v0[13];
  v3 = v0[9];
  v2 = v0[10];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100006614()
{
  (*(v0[8] + 8))(v0[10], v0[7]);
  v1 = v0[15];
  v3 = v0[9];
  v2 = v0[10];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000066A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000670C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100006758(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003714(&qword_1000CA218, &qword_10009FD90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1000067C8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100006820(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_100003714(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t sub_1000068A4(void *a1)
{
  v2 = *(*(sub_100003714(&qword_1000CA228, &qword_10009FDA8) - 8) + 80);

  return sub_100004B04(a1);
}

uint64_t sub_100006940()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000069A4(uint64_t a1, uint64_t a2)
{
  v2[93] = a2;
  v2[87] = a1;
  v3 = sub_100003714(&unk_1000CA240, &qword_1000A0380);
  v2[94] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[95] = swift_task_alloc();
  v2[96] = swift_task_alloc();
  v2[97] = swift_task_alloc();
  v2[98] = swift_task_alloc();

  return _swift_task_switch(sub_100006A6C, 0, 0);
}

uint64_t sub_100006A6C()
{
  v1 = *(v0 + 776);
  v2 = *(v0 + 752);
  v3 = *(v0 + 744);
  *(v0 + 816) = *(v2 + 48);
  *(v0 + 820) = *(v2 + 64);
  v4 = swift_task_alloc();
  *(v0 + 792) = v4;
  *(v4 + 16) = v3;
  swift_asyncLet_begin();
  v5 = *(v0 + 776);

  return _swift_asyncLet_get(v0 + 16, v5, sub_100006B30, v0 + 656);
}

uint64_t sub_100006B4C()
{
  v1 = *(v0 + 816);
  v2 = *(v0 + 784);
  v3 = *(v0 + 768);
  v4 = *(v0 + 752);
  sub_100008658(*(v0 + 776), v3, &unk_1000CA240, &qword_1000A0380);
  *(v0 + 800) = *v3;
  v5 = *(v4 + 48);
  *(v0 + 808) = *(v3 + *(v4 + 64));
  sub_1000086C0(v3 + v5, v2 + v1, &qword_1000CA250, &qword_10009FDF8);
  v6 = *(v0 + 776);

  return _swift_asyncLet_finish(v0 + 16, v6, sub_100006C18, v0 + 704);
}

uint64_t sub_100006C34()
{
  v1 = *(v0 + 808);
  v2 = *(v0 + 800);
  v3 = *(v0 + 792);
  v4 = *(v0 + 820);
  v5 = *(v0 + 784);
  v6 = *(v0 + 760);
  v7 = *(v0 + 752);

  *v5 = v2;
  *(v5 + v4) = v1;
  sub_100008658(v5, v6, &unk_1000CA240, &qword_1000A0380);

  v8 = *(v6 + *(v7 + 64));
  sub_100008728(v6 + *(v7 + 48), &qword_1000CA250, &qword_10009FDF8);
  v9 = *(v0 + 784);
  v10 = *(v0 + 776);
  v11 = *(v0 + 768);
  v12 = *(v0 + 760);
  if (v8)
  {
    sub_100005B1C();
    swift_allocError();
    *v13 = 0xD000000000000010;
    *(v13 + 8) = 0x80000001000A4A10;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0;
    *(v13 + 16) = v8;
    *(v13 + 40) = 5;
    swift_willThrow();
    sub_100008728(v9, &unk_1000CA240, &qword_1000A0380);

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    v16 = *(v0 + 752);
    v20 = *(v0 + 696);
    sub_100008658(v9, v10, &unk_1000CA240, &qword_1000A0380);
    v21 = *v10;
    v17 = *(v16 + 48);

    sub_1000086C0(v9, v11, &unk_1000CA240, &qword_1000A0380);
    v18 = *(v16 + 48);

    sub_1000086C0(v11 + v18, v20, &qword_1000CA250, &qword_10009FDF8);
    sub_100008728(v10 + v17, &qword_1000CA250, &qword_10009FDF8);

    v19 = *(v0 + 8);

    return v19(v21);
  }
}

uint64_t sub_100006ED0(unsigned __int8 a1)
{
  if (a1 == 8)
  {
    return 0x6E776F6E6B6E752ELL;
  }

  if (a1 == 9)
  {
    return 0x6E656D75636F642ELL;
  }

  sub_10009E1E0(19);

  v3 = 0xEC00000064656966;
  v4 = 0x69636570736E752ELL;
  v5 = 0xE600000000000000;
  v6 = 0x726568746F2ELL;
  if (a1 != 6)
  {
    v6 = 2037276974;
    v5 = 0xE400000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x6972616661732ELL;
  if (a1 != 4)
  {
    v8 = 0x726F66656572662ELL;
    v7 = 0xE90000000000006DLL;
  }

  if (a1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEC0000007265646CLL;
  v10 = 0x6F467365746F6E2ELL;
  if (a1 != 2)
  {
    v10 = 0x65646E696D65722ELL;
    v9 = 0xEA00000000007372;
  }

  if (a1)
  {
    v4 = 0x7365746F6E2ELL;
    v3 = 0xE600000000000000;
  }

  if (a1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  if (a1 <= 3u)
  {
    v11._countAndFlagsBits = v4;
  }

  else
  {
    v11._countAndFlagsBits = v6;
  }

  if (a1 <= 3u)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  v11._object = v12;
  sub_10009DE10(v11);

  v13._countAndFlagsBits = 41;
  v13._object = 0xE100000000000000;
  sub_10009DE10(v13);
  return 0xD000000000000010;
}

uint64_t sub_1000070A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  *(v6 + 976) = a6;
  *(v6 + 808) = a5;
  *(v6 + 800) = a4;
  *(v6 + 792) = a3;
  *(v6 + 784) = a2;
  *(v6 + 776) = a1;
  v7 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  *(v6 + 816) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v6 + 824) = swift_task_alloc();
  *(v6 + 832) = swift_task_alloc();
  *(v6 + 840) = swift_task_alloc();
  v9 = sub_10009D9F0();
  *(v6 + 848) = v9;
  v10 = *(v9 - 8);
  *(v6 + 856) = v10;
  v11 = *(v10 + 64) + 15;
  *(v6 + 864) = swift_task_alloc();
  *(v6 + 872) = swift_task_alloc();
  *(v6 + 880) = swift_task_alloc();
  *(v6 + 888) = swift_task_alloc();
  *(v6 + 896) = swift_task_alloc();

  return _swift_task_switch(sub_100007200, 0, 0);
}

uint64_t sub_100007200()
{
  v85 = v0;
  v1 = *(v0 + 784);
  v2 = sub_10009DD50();
  v3 = NSSelectorFromString(v2);

  if ([v1 respondsToSelector:v3])
  {
    v4 = [*(v0 + 784) br_isCloudDocsShare];
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v0 + 896);
  v6 = *(v0 + 808);
  sub_10009D9D0();

  v7 = sub_10009D9E0();
  v8 = sub_10009DFF0();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 896);
  v11 = *(v0 + 856);
  v12 = *(v0 + 848);
  if (v9)
  {
    v83 = v4;
    v13 = *(v0 + 801);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v84 = v15;
    *v14 = 136315394;
    v16 = sub_100006ED0(v13);
    v18 = sub_1000307A4(v16, v17, &v84);
    LOBYTE(v4) = v83;

    *(v14 + 4) = v18;
    *(v14 + 12) = 1024;
    *(v14 + 14) = v83;
    _os_log_impl(&_mh_execute_header, v7, v8, "saveShare attr.sharingType: %s, isCloudDocsShare: %{BOOL}d", v14, 0x12u);
    sub_10000670C(v15);
  }

  v19 = *(v11 + 8);
  v19(v10, v12);
  *(v0 + 904) = v19;
  if ((*(v0 + 800) & 0xFE00) == 0x800)
  {
    v20 = 1;
  }

  else
  {
    v20 = v4;
  }

  if (v20)
  {
    v21 = *(v0 + 872);
    v22 = *(v0 + 840);
    v23 = *(v0 + 784);
    v24 = (v0 + 776);
    v25 = *(v0 + 776);
    sub_10009D9D0();
    sub_100008658(v25, v22, &qword_1000CA250, &qword_10009FDF8);
    v26 = v23;
    v27 = sub_10009D9E0();
    v28 = sub_10009DFF0();
    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v0 + 872);
    v31 = *(v0 + 856);
    v32 = *(v0 + 848);
    v33 = *(v0 + 840);
    if (v29)
    {
      v34 = *(v0 + 832);
      v79 = *(v0 + 816);
      v35 = *(v0 + 784);
      v81 = *(v0 + 848);
      v36 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v84 = v78;
      *v36 = 136315650;
      sub_100008658(v33, v34, &qword_1000CA250, &qword_10009FDF8);
      v37 = sub_10009DDA0();
      v39 = v38;
      sub_100008728(v33, &qword_1000CA250, &qword_10009FDF8);
      v40 = sub_1000307A4(v37, v39, &v84);
      v24 = (v0 + 776);

      *(v36 + 4) = v40;
      *(v36 + 12) = 2112;
      *(v36 + 14) = v35;
      *v77 = v35;
      *(v36 + 22) = 1024;
      *(v36 + 24) = [v35 allowsAccessRequests];

      _os_log_impl(&_mh_execute_header, v27, v28, "saveShare performing CloudDocs (fileURL) operation %s -- %@\n allowsAccessRequests: %{BOOL}d", v36, 0x1Cu);
      sub_100008728(v77, &qword_1000CA8E0, &qword_10009FE08);

      sub_10000670C(v78);

      v41 = v81;
      v42 = v30;
    }

    else
    {
      v74 = *(v0 + 784);

      sub_100008728(v33, &qword_1000CA250, &qword_10009FDF8);
      v42 = v30;
      v41 = v32;
    }

    v19(v42, v41);
    v75 = swift_task_alloc();
    *(v0 + 952) = v75;
    v75[1] = vextq_s8(*v24, *v24, 8uLL);
    sub_100003714(&qword_1000CA238, &qword_1000A0330);
    swift_asyncLet_begin();

    return _swift_asyncLet_get(v0 + 16, v0 + 696, sub_100007E34, v0 + 656);
  }

  else
  {
    v43 = *(v0 + 888);
    v44 = *(v0 + 784);
    v45 = type metadata accessor for CloudKitOperations();
    v46 = *(v45 + 48);
    v47 = *(v45 + 52);
    v48 = swift_allocObject();
    *(v0 + 912) = v48;
    v48[2] = 0xD000000000000021;
    v48[3] = 0x80000001000A4980;
    v48[4] = 0xD000000000000016;
    v48[5] = 0x80000001000A49B0;
    v48[6] = 0xD00000000000001DLL;
    v48[7] = 0x80000001000A49D0;
    *(v0 + 712) = 0;
    *(v0 + 720) = 0;
    sub_100003714(&qword_1000CA6A0, &qword_10009FD50);
    sub_10009DAC0();
    sub_10009D9D0();
    v49 = v44;
    v50 = sub_10009D9E0();
    v51 = sub_10009DFF0();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = *(v0 + 784);
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v53 = 138412290;
      *(v53 + 4) = v52;
      *v54 = v52;
      v55 = v52;
      _os_log_impl(&_mh_execute_header, v50, v51, "saveShare performing CloudKit operation %@", v53, 0xCu);
      sub_100008728(v54, &qword_1000CA8E0, &qword_10009FE08);
    }

    v56 = *(v0 + 888);
    v57 = *(v0 + 856);
    v58 = *(v0 + 848);
    v59 = *(v0 + 792);

    *(v0 + 920) = (v57 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v60 = (v19)(v56, v58);
    if (v59)
    {
      v68 = *(v0 + 976);
      v69 = *(v0 + 800);
      v80 = *(v0 + 808);
      v82 = *(v0 + 792);
      v70 = *(v0 + 784);
      v71 = swift_task_alloc();
      *(v0 + 928) = v71;
      *(v71 + 16) = v48;
      *(v71 + 24) = v70;
      *(v71 + 32) = v69;
      *(v71 + 34) = BYTE2(v69);
      *(v71 + 35) = BYTE3(v69);
      *(v71 + 36) = BYTE4(v69);
      *(v71 + 37) = BYTE5(v69) & 1;
      *(v71 + 38) = BYTE6(v69) & 1;
      *(v71 + 40) = v80;
      *(v71 + 48) = v68 & 1;
      *(v71 + 49) = HIBYTE(v68) & 1;
      *(v71 + 56) = v82;
      v72 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
      v73 = swift_task_alloc();
      *(v0 + 936) = v73;
      v67 = sub_10000856C();
      *v73 = v0;
      v73[1] = sub_1000079BC;
      v65 = sub_100008510;
      v60 = v0 + 728;
      v63 = 0xD000000000000029;
      v64 = 0x80000001000A47D0;
      v61 = 0;
      v62 = 0;
      v66 = v71;
    }

    else
    {
      __break(1u);
    }

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v60, v61, v62, v63, v64, v65, v66, v67);
  }
}

uint64_t sub_1000079BC()
{
  v2 = *v1;
  v3 = *(*v1 + 936);
  v7 = *v1;
  *(*v1 + 944) = v0;

  if (v0)
  {
    v4 = sub_100007CB8;
  }

  else
  {
    v5 = *(v2 + 928);

    v4 = sub_100007AD8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100007AD8()
{
  v1 = *(v0 + 880);
  v2 = *(v0 + 784);
  v3 = *(v0 + 728);
  sub_10009D9D0();
  v4 = v2;
  v5 = sub_10009D9E0();
  v6 = sub_10009DFF0();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 912);
  if (v7)
  {
    v9 = *(v0 + 784);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v9;
    *v11 = v9;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "saveShare completed CloudKit operation %@", v10, 0xCu);
    sub_100008728(v11, &qword_1000CA8E0, &qword_10009FE08);
  }

  else
  {
    v13 = *(v0 + 912);
  }

  v14 = *(v0 + 920);
  (*(v0 + 904))(*(v0 + 880), *(v0 + 848));
  v15 = *(v0 + 896);
  v16 = *(v0 + 888);
  v17 = *(v0 + 880);
  v18 = *(v0 + 872);
  v19 = *(v0 + 864);
  v20 = *(v0 + 840);
  v21 = *(v0 + 832);
  v22 = *(v0 + 824);

  v23 = *(v0 + 8);

  return v23(v3);
}

uint64_t sub_100007CB8()
{
  v1 = v0[116];
  v2 = v0[114];

  swift_setDeallocating();
  v3 = *(v2 + 3);

  v4 = *(v2 + 5);

  v5 = *(v2 + 7);

  v6 = OBJC_IVAR____TtC13SPIHelper_iOS18CloudKitOperations__ckSourceAppBundleID;
  v7 = sub_100003714(&qword_1000CA230, &qword_10009FDB0);
  (*(*(v7 - 8) + 8))(&v2[v6], v7);
  v8 = *(*v2 + 48);
  v9 = *(*v2 + 52);
  swift_deallocClassInstance();
  v10 = v0[118];
  v11 = v0[112];
  v12 = v0[111];
  v13 = v0[110];
  v14 = v0[109];
  v15 = v0[108];
  v16 = v0[105];
  v17 = v0[104];
  v18 = v0[103];

  v19 = v0[1];

  return v19();
}

uint64_t sub_100007E34()
{
  v1 = v0[87];
  v0[120] = v1;
  v2 = v0[88];
  v0[121] = v2;
  v3 = v2;
  v4 = v1;

  return _swift_asyncLet_finish(v0 + 2, v0 + 87, sub_100007EB0, v0 + 92);
}

uint64_t sub_100007ECC()
{
  v53 = v0;
  v1 = v0[119];
  v2 = v0[108];
  v3 = v0[103];
  v4 = v0[98];
  v5 = v0[97];

  sub_10009D9D0();
  sub_100008658(v5, v3, &qword_1000CA250, &qword_10009FDF8);
  v6 = v4;
  v7 = sub_10009D9E0();
  v8 = sub_10009DFF0();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[113];
  v11 = v0[108];
  v12 = v0[106];
  if (v9)
  {
    v13 = v0[104];
    v14 = v0[103];
    v48 = v0[102];
    v51 = v0[107];
    v15 = v0[98];
    v50 = v0[113];
    v16 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v52 = v47;
    *v16 = 136315650;
    sub_100008658(v14, v13, &qword_1000CA250, &qword_10009FDF8);
    v17 = sub_10009DDA0();
    v49 = v12;
    v19 = v18;
    sub_100008728(v14, &qword_1000CA250, &qword_10009FDF8);
    v20 = sub_1000307A4(v17, v19, &v52);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2112;
    *(v16 + 14) = v15;
    *v46 = v15;
    *(v16 + 22) = 1024;
    *(v16 + 24) = [v15 allowsAccessRequests];

    _os_log_impl(&_mh_execute_header, v7, v8, "saveShare completed CloudDocs (fileURL) operation %s\n %@\n allowsAccessRequests: %{BOOL}d", v16, 0x1Cu);
    sub_100008728(v46, &qword_1000CA8E0, &qword_10009FE08);

    sub_10000670C(v47);

    v50(v11, v49);
  }

  else
  {
    v21 = v0[103];
    v22 = v0[98];

    sub_100008728(v21, &qword_1000CA250, &qword_10009FDF8);
    v10(v11, v12);
  }

  v23 = v0[121];
  v24 = v0[120];
  if (v23)
  {
    sub_100005B1C();
    swift_allocError();
    *v25 = 0xD000000000000032;
    *(v25 + 8) = 0x80000001000A4910;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0;
    *(v25 + 16) = v23;
    *(v25 + 40) = 4;
    swift_willThrow();

LABEL_6:
    v26 = v0[112];
    v27 = v0[111];
    v28 = v0[110];
    v29 = v0[109];
    v30 = v0[108];
    v31 = v0[105];
    v32 = v0[104];
    v33 = v0[103];

    v34 = v0[1];

    return v34();
  }

  if (!v24)
  {
    sub_100005B1C();
    swift_allocError();
    *v45 = 0xD000000000000032;
    *(v45 + 8) = 0x80000001000A4910;
    *(v45 + 16) = xmmword_10009FDD0;
    *(v45 + 32) = 0x80000001000A4950;
    *(v45 + 40) = 11;
    swift_willThrow();
    goto LABEL_6;
  }

  v36 = v0[112];
  v37 = v0[111];
  v38 = v0[110];
  v39 = v0[109];
  v40 = v0[108];
  v41 = v0[105];
  v42 = v0[104];
  v43 = v0[103];

  v44 = v0[1];

  return v44(v24);
}

uint64_t sub_100008370(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000841C;

  return sub_100012B94(a1, v5, v4);
}

uint64_t sub_10000841C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_100008510(uint64_t a1)
{
  v2 = 0x10000000000;
  if (!*(v1 + 37))
  {
    v2 = 0;
  }

  v3 = 0x1000000000000;
  if (!*(v1 + 38))
  {
    v3 = 0;
  }

  v4 = *(v1 + 32) | (*(v1 + 36) << 32) | v2;
  if (*(v1 + 49))
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  sub_100004134(a1, *(v1 + 16), *(v1 + 24), v4 | v3, *(v1 + 40), v5 | *(v1 + 48), *(v1 + 56));
}

unint64_t sub_10000856C()
{
  result = qword_1000CA900;
  if (!qword_1000CA900)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000CA900);
  }

  return result;
}

uint64_t sub_1000085B8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000093DC;

  return sub_100012E00(a1, v4);
}

uint64_t sub_100008658(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003714(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000086C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003714(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100008728(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003714(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100008788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v5 = sub_10009D9F0();
  v4[8] = v5;
  v6 = *(v5 - 8);
  v4[9] = v6;
  v7 = *(v6 + 64) + 15;
  v4[10] = swift_task_alloc();
  v8 = *(*(sub_100003714(&qword_1000CA250, &qword_10009FDF8) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v9 = sub_10009D860();
  v4[12] = v9;
  v10 = *(v9 - 8);
  v4[13] = v10;
  v11 = *(v10 + 64) + 15;
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_1000088E0, 0, 0);
}

uint64_t sub_1000088E0()
{
  if ((*(v0 + 56) & 0xFE00) != 0x800)
  {
    v10 = *(v0 + 48);
    v11 = type metadata accessor for CloudKitOperations();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    v14 = swift_allocObject();
    *(v0 + 16) = 0;
    *(v0 + 120) = v14;
    v14[2] = 0xD000000000000021;
    v14[3] = 0x80000001000A4980;
    v14[4] = 0xD000000000000016;
    v14[5] = 0x80000001000A49B0;
    v14[6] = 0xD00000000000001DLL;
    v14[7] = 0x80000001000A49D0;
    *(v0 + 24) = 0;
    sub_100003714(&qword_1000CA6A0, &qword_10009FD50);
    v15 = sub_10009DAC0();
    if (!v10)
    {
      __break(1u);
      return withCheckedThrowingContinuation<A>(isolation:function:_:)(v15, v16, v17, v18, v19, v20, v21, v22);
    }

    v23 = *(v0 + 61);
    v25 = *(v0 + 40);
    v24 = *(v0 + 48);
    v26 = swift_task_alloc();
    *(v0 + 128) = v26;
    *(v26 + 16) = v14;
    *(v26 + 24) = v25;
    *(v26 + 32) = v23 & 1;
    *(v26 + 40) = v24;
    v27 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v28 = swift_task_alloc();
    *(v0 + 136) = v28;
    *v28 = v0;
    v28[1] = sub_100008C84;
    v22 = &type metadata for Bool;
    v20 = sub_1000093CC;
    v15 = (v0 + 176);
    v18 = 0xD000000000000030;
    v19 = 0x80000001000A48B0;
LABEL_9:
    v16 = 0;
    v17 = 0;
    v21 = v26;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v15, v16, v17, v18, v19, v20, v21, v22);
  }

  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  sub_100008658(*(v0 + 32), v3, &qword_1000CA250, &qword_10009FDF8);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v29 = *(v0 + 112);
    v30 = *(v0 + 40);
    (*(*(v0 + 104) + 32))(v29, *(v0 + 88), *(v0 + 96));
    v26 = swift_task_alloc();
    *(v0 + 152) = v26;
    *(v26 + 16) = v29;
    *(v26 + 24) = v30;
    v31 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v15 = swift_task_alloc();
    *(v0 + 160) = v15;
    *v15 = v0;
    v15[1] = sub_100008FE4;
    v20 = sub_1000093C4;
    v18 = 0xD00000000000001ELL;
    v19 = 0x80000001000A4AA0;
    v22 = &type metadata for () + 8;
    goto LABEL_9;
  }

  sub_100008728(*(v0 + 88), &qword_1000CA250, &qword_10009FDF8);
  sub_100005B1C();
  swift_allocError();
  *v4 = 0xD000000000000034;
  *(v4 + 8) = 0x80000001000A4A30;
  *(v4 + 16) = xmmword_10009FDE0;
  *(v4 + 32) = 0x80000001000A4A70;
  *(v4 + 40) = 11;
  swift_willThrow();
  v5 = *(v0 + 112);
  v7 = *(v0 + 80);
  v6 = *(v0 + 88);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100008C84()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v7 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_100008EBC;
  }

  else
  {
    v5 = *(v2 + 128);

    v4 = sub_100008DA0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100008DA0()
{
  v1 = v0[15];
  swift_setDeallocating();
  v2 = *(v1 + 3);

  v3 = *(v1 + 5);

  v4 = *(v1 + 7);

  v5 = OBJC_IVAR____TtC13SPIHelper_iOS18CloudKitOperations__ckSourceAppBundleID;
  v6 = sub_100003714(&qword_1000CA230, &qword_10009FDB0);
  (*(*(v6 - 8) + 8))(&v1[v5], v6);
  v7 = *(*v1 + 48);
  v8 = *(*v1 + 52);
  swift_deallocClassInstance();
  v9 = v0[14];
  v10 = v0[10];
  v11 = v0[11];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100008EBC()
{
  v2 = v0[15];
  v1 = v0[16];

  swift_setDeallocating();
  v3 = *(v2 + 3);

  v4 = *(v2 + 5);

  v5 = *(v2 + 7);

  v6 = OBJC_IVAR____TtC13SPIHelper_iOS18CloudKitOperations__ckSourceAppBundleID;
  v7 = sub_100003714(&qword_1000CA230, &qword_10009FDB0);
  (*(*(v7 - 8) + 8))(&v2[v6], v7);
  v8 = *(*v2 + 48);
  v9 = *(*v2 + 52);
  swift_deallocClassInstance();
  v10 = v0[18];
  v11 = v0[14];
  v13 = v0[10];
  v12 = v0[11];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100008FE4()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v7 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = sub_100009190;
  }

  else
  {
    v5 = *(v2 + 152);

    v4 = sub_100009100;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100009100()
{
  (*(v0[13] + 8))(v0[14], v0[12]);
  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[11];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100009190()
{
  v1 = v0[21];
  v2 = v0[19];
  v3 = v0[10];

  sub_10009D9D0();
  swift_errorRetain();
  v4 = sub_10009D9E0();
  v5 = sub_10009DFD0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[21];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "stopSharing failed with error: %@", v7, 0xCu);
    sub_100008728(v8, &qword_1000CA8E0, &qword_10009FE08);
  }

  v10 = v0[21];
  v12 = v0[13];
  v11 = v0[14];
  v13 = v0[12];
  v15 = v0[9];
  v14 = v0[10];
  v16 = v0[8];

  (*(v15 + 8))(v14, v16);
  v17 = sub_10009D7A0();
  sub_100005B1C();
  swift_allocError();
  *v18 = 0xD000000000000034;
  *(v18 + 8) = 0x80000001000A4A30;
  *(v18 + 24) = 0;
  *(v18 + 32) = 0;
  *(v18 + 16) = v17;
  *(v18 + 40) = 8;
  swift_willThrow();

  (*(v12 + 8))(v11, v13);
  v19 = v0[14];
  v20 = v0[10];
  v21 = v0[11];

  v22 = v0[1];

  return v22();
}

uint64_t sub_1000093E0()
{
  v1[62] = v0;
  v2 = *(*(sub_100003714(&qword_1000CA250, &qword_10009FDF8) - 8) + 64) + 15;
  v1[63] = swift_task_alloc();
  v3 = sub_10009D860();
  v1[64] = v3;
  v4 = *(v3 - 8);
  v1[65] = v4;
  v5 = *(v4 + 64) + 15;
  v1[66] = swift_task_alloc();
  sub_10009DF10();
  v1[67] = sub_10009DF00();
  v7 = sub_10009DED0();
  v1[68] = v7;
  v1[69] = v6;

  return _swift_task_switch(sub_100009510, v7, v6);
}

uint64_t sub_100009510()
{
  v1 = v0[65];
  v2 = v0[63];
  v3 = v0[64];
  v4 = *(v0[62] + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  if ((*(v1 + 48))(v2, 1, v3) == 1)
  {
    v5 = v0[67];
    v6 = v0[63];

    sub_10000AF84(v6);
    sub_100005B1C();
    swift_allocError();
    *v7 = xmmword_10009FE50;
    *(v7 + 16) = xmmword_10009FE60;
    *(v7 + 32) = 0x80000001000A4BE0;
    *(v7 + 40) = 11;
    swift_willThrow();
    v8 = v0[66];
    v9 = v0[63];

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = v0[62];
    (*(v0[65] + 32))(v0[66], v0[63], v0[64]);
    v13 = [objc_allocWithZone(LPiCloudSharingMetadata) init];
    v0[70] = v13;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10009DAF0();

    if (v0[59])
    {
      v14 = v0[58];
      v15 = v0[59];
      v16 = sub_10009DD50();
    }

    else
    {
      v16 = 0;
    }

    v17 = v0[66];
    v18 = v0[62];
    [v13 setApplicationBundleIdenfier:v16];

    sub_10000AFEC();
    v19 = sub_10009DD50();

    [v13 setApplication:v19];

    sub_10000A33C();
    v20 = sub_10009DD50();

    [v13 setTitle:v20];

    v21 = sub_10000A5D0();
    [v13 setIcon:v21];

    v22 = [objc_allocWithZone(LPLinkMetadata) init];
    v0[71] = v22;
    sub_10009D800(v23);
    v25 = v24;
    [v22 setURL:v24];

    [v22 setSpecialization:v13];
    v26 = objc_allocWithZone(LPLinkHTMLTextGenerator);
    sub_10009D800(v27);
    v29 = v28;
    v30 = [v26 initWithURL:v28];
    v0[72] = v30;

    [v30 setMetadata:v22];
    v0[2] = v0;
    v0[7] = v0 + 60;
    v0[3] = sub_100009974;
    v31 = swift_continuation_init();
    v0[57] = sub_100003714(&qword_1000CA280, &qword_10009FFC0);
    v0[50] = _NSConcreteStackBlock;
    v0[51] = 1107296256;
    v0[52] = sub_10000A9C0;
    v0[53] = &unk_1000C20F0;
    v0[54] = v31;
    [v30 generateHTMLFragmentString:v0 + 50];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_100009974()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 584) = v3;
  v4 = *(v1 + 552);
  v5 = *(v1 + 544);
  if (v3)
  {
    v6 = sub_10000A268;
  }

  else
  {
    v6 = sub_100009AA4;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_100009AA4()
{
  v86 = v0[72];
  v87 = v0[71];
  v1 = v0[67];
  v88 = v0[70];
  v89 = v0[65];
  v90 = v0[64];
  v91 = v0[66];
  v92 = v0[63];
  v83 = v0[62];

  v84 = v0[61];
  v85 = v0[60];
  sub_100003714(&qword_1000CA288, &qword_10009FFC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10009FE70;
  *(inited + 32) = 7;
  v3 = objc_opt_self();
  v4 = [v3 mainBundle];
  v71._countAndFlagsBits = 0x80000001000A4C60;
  v94._object = 0x80000001000A4C30;
  v94._countAndFlagsBits = 0xD00000000000002FLL;
  v106.value._countAndFlagsBits = 0;
  v106.value._object = 0;
  v5.super.isa = v4;
  v118._countAndFlagsBits = 0;
  v118._object = 0xE000000000000000;
  v6 = sub_10009D680(v94, v106, v5, v118, v71);
  v8 = v7;

  *(inited + 40) = v6;
  *(inited + 48) = v8;
  *(inited + 56) = 8;
  v72._object = " '<br>' indicates blank line";
  v9 = [v3 mainBundle];
  v72._countAndFlagsBits = 0x80000001000A4CE0;
  v95._countAndFlagsBits = 0xD000000000000031;
  v95._object = 0x80000001000A4CA0;
  v107.value._countAndFlagsBits = 0;
  v107.value._object = 0;
  v10.super.isa = v9;
  v119._countAndFlagsBits = 0;
  v119._object = 0xE000000000000000;
  v11 = sub_10009D680(v95, v107, v10, v119, v72);
  v13 = v12;

  *(inited + 64) = v11;
  *(inited + 72) = v13;
  *(inited + 80) = 9;
  v14 = [v3 mainBundle];
  v73._countAndFlagsBits = 0x80000001000A4D50;
  v96._object = 0x80000001000A4D20;
  v96._countAndFlagsBits = 0xD00000000000002FLL;
  v108.value._countAndFlagsBits = 0;
  v108.value._object = 0;
  v15.super.isa = v14;
  v120._countAndFlagsBits = 0;
  v120._object = 0xE000000000000000;
  v16 = sub_10009D680(v96, v108, v15, v120, v73);
  v18 = v17;

  *(inited + 88) = v16;
  *(inited + 96) = v18;
  *(inited + 104) = 11;
  v19 = [v3 mainBundle];
  v74._countAndFlagsBits = 0x80000001000A4DD0;
  v97._object = 0x80000001000A4D90;
  v97._countAndFlagsBits = 0xD000000000000030;
  v109.value._countAndFlagsBits = 0;
  v109.value._object = 0;
  v20.super.isa = v19;
  v121._countAndFlagsBits = 0;
  v121._object = 0xE000000000000000;
  v21 = sub_10009D680(v97, v109, v20, v121, v74);
  v23 = v22;

  *(inited + 112) = v21;
  *(inited + 120) = v23;
  *(inited + 128) = 0;
  v24 = [v3 mainBundle];
  v75._countAndFlagsBits = 0x80000001000A4CE0;
  v98._countAndFlagsBits = 0xD000000000000031;
  v98._object = (v75._object | 0x8000000000000000);
  v110.value._countAndFlagsBits = 0;
  v110.value._object = 0;
  v25.super.isa = v24;
  v122._countAndFlagsBits = 0;
  v122._object = 0xE000000000000000;
  v26 = sub_10009D680(v98, v110, v25, v122, v75);
  v28 = v27;

  *(inited + 136) = v26;
  *(inited + 144) = v28;
  *(inited + 152) = 1;
  v29 = [v3 mainBundle];
  v76._countAndFlagsBits = 0x80000001000A4E50;
  v99._countAndFlagsBits = 0xD000000000000033;
  v99._object = 0x80000001000A4E10;
  v111.value._countAndFlagsBits = 0;
  v111.value._object = 0;
  v30.super.isa = v29;
  v123._countAndFlagsBits = 0;
  v123._object = 0xE000000000000000;
  v31 = sub_10009D680(v99, v111, v30, v123, v76);
  v33 = v32;

  *(inited + 160) = v31;
  *(inited + 168) = v33;
  *(inited + 176) = 2;
  v34 = [v3 mainBundle];
  v77._countAndFlagsBits = 0x80000001000A4EE0;
  v100._countAndFlagsBits = 0xD000000000000036;
  v100._object = 0x80000001000A4EA0;
  v112.value._countAndFlagsBits = 0;
  v112.value._object = 0;
  v35.super.isa = v34;
  v124._countAndFlagsBits = 0;
  v124._object = 0xE000000000000000;
  v36 = sub_10009D680(v100, v112, v35, v124, v77);
  v38 = v37;

  *(inited + 184) = v36;
  *(inited + 192) = v38;
  *(inited + 200) = 3;
  v39 = [v3 mainBundle];
  v78._countAndFlagsBits = 0x80000001000A4F70;
  v101._countAndFlagsBits = 0xD000000000000037;
  v101._object = 0x80000001000A4F30;
  v113.value._countAndFlagsBits = 0;
  v113.value._object = 0;
  v40.super.isa = v39;
  v125._countAndFlagsBits = 0;
  v125._object = 0xE000000000000000;
  v41 = sub_10009D680(v101, v113, v40, v125, v78);
  v43 = v42;

  *(inited + 208) = v41;
  *(inited + 216) = v43;
  *(inited + 224) = 4;
  v44 = [v3 mainBundle];
  v79._countAndFlagsBits = 0x80000001000A5000;
  v102._object = 0x80000001000A4FC0;
  v102._countAndFlagsBits = 0xD000000000000030;
  v114.value._countAndFlagsBits = 0;
  v114.value._object = 0;
  v45.super.isa = v44;
  v126._countAndFlagsBits = 0;
  v126._object = 0xE000000000000000;
  v46 = sub_10009D680(v102, v114, v45, v126, v79);
  v48 = v47;

  *(inited + 232) = v46;
  *(inited + 240) = v48;
  *(inited + 248) = 5;
  v49 = [v3 mainBundle];
  v80._countAndFlagsBits = 0x80000001000A5080;
  v103._object = 0x80000001000A5040;
  v103._countAndFlagsBits = 0xD000000000000030;
  v115.value._countAndFlagsBits = 0;
  v115.value._object = 0;
  v50.super.isa = v49;
  v127._countAndFlagsBits = 0;
  v127._object = 0xE000000000000000;
  v51 = sub_10009D680(v103, v115, v50, v127, v80);
  v53 = v52;

  *(inited + 256) = v51;
  *(inited + 264) = v53;
  *(inited + 272) = 6;
  v54 = [v3 mainBundle];
  v104._countAndFlagsBits = 0xD00000000000002ELL;
  v81._countAndFlagsBits = 0x80000001000A50F0;
  v104._object = 0x80000001000A50C0;
  v116.value._countAndFlagsBits = 0;
  v116.value._object = 0;
  v55.super.isa = v54;
  v128._countAndFlagsBits = 0;
  v128._object = 0xE000000000000000;
  v56 = sub_10009D680(v104, v116, v55, v128, v81);
  v58 = v57;

  *(inited + 280) = v56;
  *(inited + 288) = v58;
  *(inited + 296) = 13;
  v59 = [v3 mainBundle];
  v105._countAndFlagsBits = 0xD000000000000017;
  v82._countAndFlagsBits = 0x80000001000A5150;
  v105._object = 0x80000001000A5130;
  v117.value._countAndFlagsBits = 0;
  v117.value._object = 0;
  v60.super.isa = v59;
  v129._countAndFlagsBits = 0;
  v129._object = 0xE000000000000000;
  v61 = sub_10009D680(v105, v117, v60, v129, v82);
  v63 = v62;

  *(inited + 304) = v61;
  *(inited + 312) = v63;
  v64 = sub_100031504(inited);
  swift_setDeallocating();
  sub_100003714(qword_1000CA290, &qword_10009FFD0);
  swift_arrayDestroy();
  sub_100018F60(v64);

  sub_100003714(&qword_1000CA258, &qword_10009FE80);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_10009FCE0;
  *(v65 + 56) = &type metadata for String;
  *(v65 + 64) = sub_10000AF28();
  *(v65 + 32) = v85;
  *(v65 + 40) = v84;
  v66 = sub_10009DD60();
  v68 = v67;

  (*(v89 + 8))(v91, v90);

  v69 = v0[1];

  return v69(v66, v68);
}

uint64_t sub_10000A268()
{
  v1 = v0[73];
  v2 = v0[72];
  v3 = v0[71];
  v4 = v0[70];
  v5 = v0[67];
  v6 = v0[66];
  v7 = v0[65];
  v8 = v0[64];

  swift_willThrow();

  (*(v7 + 8))(v6, v8);
  v9 = v0[73];
  v10 = v0[66];
  v11 = v0[63];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10000A33C()
{
  v1 = sub_10009D860();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v15 - v8;
  v10 = *(v0 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  v11 = v16;
  if (v16)
  {
    sub_10009E0E0();
    v12 = sub_10009E100();

    if (v12)
    {
      v17 = v12;
      sub_100003714(&unk_1000CA270, &qword_10009FF68);
      if (swift_dynamicCast())
      {
        return v16;
      }
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  if ((*(v2 + 48))(v9, 1, v1))
  {
    sub_10000AF84(v9);
    return 0;
  }

  else
  {
    (*(v2 + 16))(v5, v9, v1);
    sub_10000AF84(v9);
    v14 = sub_10009D7D0();
    (*(v2 + 8))(v5, v1);
    return v14;
  }
}

id sub_10000A5D0()
{
  v1 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v24 - v3;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  if (v25 != 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10009DAF0();

    v12 = sub_10009D860();
    v13 = (*(*(v12 - 8) + 48))(v4, 1, v12);
    sub_10000AF84(v4);
    if (v13 == 1 || (v14 = *(sub_1000194F8() + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_appIcon), v11 = v14, swift_unknownObjectRelease(), !v14))
    {
      v15 = *(v0 + 24);
      swift_getKeyPath();
      swift_getKeyPath();

      sub_10009DAF0();

      if (v24)
      {
        v16 = v24;
        sub_10009E0D0();
        v17 = sub_10009E100();

        if (v17)
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            swift_unknownObjectRetain();
            v18 = sub_10009D880();
            v20 = v19;
            swift_unknownObjectRelease();
            v21 = objc_allocWithZone(UIImage);
            isa = sub_10009D870().super.isa;
            v11 = [v21 initWithData:isa];

            sub_10000B230(v18, v20);
            swift_unknownObjectRelease();

            if (!v11)
            {
              return v11;
            }

            goto LABEL_14;
          }

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      v23 = *(sub_1000194F8() + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_appIcon);
      v11 = v23;
      swift_unknownObjectRelease();
      if (!v23)
      {
        return 0;
      }
    }

LABEL_14:
    v8 = v11;
    v11 = [objc_allocWithZone(LPImage) initWithPlatformImage:v8];
    v9 = v8;
    goto LABEL_15;
  }

  v5 = sub_10009DD50();
  v6 = [objc_opt_self() imageNamed:v5];

  v7 = objc_allocWithZone(LPImageProperties);
  v8 = v6;
  v9 = [v7 init];
  result = [v9 setType:5];
  if (v8)
  {
    v11 = [objc_allocWithZone(LPImage) initWithPlatformImage:v8 properties:v9];

LABEL_15:
    return v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_10000A9C0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_1000067C8((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100003714(&qword_1000CB840, &qword_10009FDA0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = sub_10009DD90();
    v9 = *(*(v4 + 64) + 40);
    *v9 = v8;
    v9[1] = v10;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_10000AA94(char a1)
{
  v3 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v35 - v5;
  v7 = sub_10009D860();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A33C();
  v14 = v13;
  v15 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v15 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {

    v22 = *(v1 + 24);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10009DAF0();

    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_10000AF84(v6);
    }

    else
    {
      (*(v8 + 32))(v11, v6, v7);
      v25 = sub_10000AFEC();
      v27 = v26;
      v28 = HIBYTE(v26) & 0xF;
      if ((v26 & 0x2000000000000000) == 0)
      {
        v28 = v25 & 0xFFFFFFFFFFFFLL;
      }

      if (v28)
      {
        v29 = v25;
        v30 = [objc_opt_self() mainBundle];
        v34._countAndFlagsBits = 0x80000001000A4B60;
        v36._countAndFlagsBits = 0x6620646572616853;
        v36._object = 0xEE004025206D6F72;
        v37.value._countAndFlagsBits = 0;
        v37.value._object = 0;
        v31.super.isa = v30;
        v38._countAndFlagsBits = 0;
        v38._object = 0xE000000000000000;
        sub_10009D680(v36, v37, v31, v38, v34);

        sub_100003714(&qword_1000CA258, &qword_10009FE80);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_10009FCE0;
        *(v32 + 56) = &type metadata for String;
        *(v32 + 64) = sub_10000AF28();
        *(v32 + 32) = v29;
        *(v32 + 40) = v27;
        v24 = sub_10009DD60();

        (*(v8 + 8))(v11, v7);
        return v24;
      }

      (*(v8 + 8))(v11, v7);
    }

    return 0;
  }

  v16 = v12;
  v17 = [objc_opt_self() mainBundle];
  if (a1)
  {
    v34._countAndFlagsBits = 0x80000001000A4B30;
    v18._object = 0x80000001000A4B10;
    v18._countAndFlagsBits = 0xD000000000000014;
    v19.value._countAndFlagsBits = 0;
    v19.value._object = 0;
    v20.super.isa = v17;
    v21._countAndFlagsBits = 16421;
    v21._object = 0xE200000000000000;
  }

  else
  {
    v34._countAndFlagsBits = 0x80000001000A4AE0;
    v21._countAndFlagsBits = 0x9D80E240259C80E2;
    v18._object = 0x80000001000A4AC0;
    v18._countAndFlagsBits = 0x1000000000000019;
    v19.value._countAndFlagsBits = 0;
    v19.value._object = 0;
    v20.super.isa = v17;
    v21._object = 0xA800000000000000;
  }

  sub_10009D680(v18, v19, v20, v21, v34);

  sub_100003714(&qword_1000CA258, &qword_10009FE80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10009FCE0;
  *(v23 + 56) = &type metadata for String;
  *(v23 + 64) = sub_10000AF28();
  *(v23 + 32) = v16;
  *(v23 + 40) = v14;
  v24 = sub_10009DD60();

  return v24;
}

unint64_t sub_10000AF28()
{
  result = qword_1000CA260;
  if (!qword_1000CA260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA260);
  }

  return result;
}

uint64_t sub_10000AF84(uint64_t a1)
{
  v2 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000AFEC()
{
  sub_10009D840();
  sub_10000B1A4();
  v0 = sub_10009E160();

  if (v0[2] <= 1uLL)
  {

    v1 = 0;
    goto LABEL_3;
  }

  v3 = v0[6];
  v2 = v0[7];

  v1 = sub_10009E170();
  v5 = v4;

  if (v1 != 0x726464756F6C6349 || v5 != 0xEB00000000657669)
  {
LABEL_3:
    if ((sub_10009E2E0() & 1) == 0)
    {
      return v1;
    }
  }

  v6 = [objc_opt_self() mainBundle];
  v9._countAndFlagsBits = 0x80000001000A4B90;
  v10._countAndFlagsBits = 0x442064756F6C4369;
  v10._object = 0xEC00000065766972;
  v11.value._countAndFlagsBits = 0;
  v11.value._object = 0;
  v7.super.isa = v6;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v1 = sub_10009D680(v10, v11, v7, v12, v9);

  return v1;
}

unint64_t sub_10000B1A4()
{
  result = qword_1000CA268;
  if (!qword_1000CA268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA268);
  }

  return result;
}

uint64_t sub_10000B230(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t *sub_10000B284()
{
  v113 = sub_10009D9F0();
  v115 = *(v113 - 8);
  v1 = *(v115 + 64);
  v2 = __chkstk_darwin(v113);
  v111 = &v104 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v109 = &v104 - v5;
  v6 = __chkstk_darwin(v4);
  v110 = &v104 - v7;
  v8 = __chkstk_darwin(v6);
  v10 = (&v104 - v9);
  v11 = __chkstk_darwin(v8);
  v13 = &v104 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = (&v104 - v15);
  v17 = __chkstk_darwin(v14);
  v19 = &v104 - v18;
  __chkstk_darwin(v17);
  v21 = &v104 - v20;
  v112 = v0;
  v22 = *(v0 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  v23 = v116;
  if (v116)
  {
    return v23;
  }

  v108 = v19;
  v104 = v13;
  v105 = v10;
  v106 = v16;
  v24 = v115;
  sub_10009D9D0();
  v25 = sub_10009D9E0();
  v26 = sub_10009DFF0();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "configuredContainer needsBundleIDOverride initially true", v27, 2u);
  }

  v28 = *(v24 + 8);
  v29 = v21;
  v30 = v113;
  v115 = v24 + 8;
  v28(v29, v113);
  v31 = v112;
  v32 = *(v112 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  v33 = v116;
  v107 = v28;
  v34 = v108;
  if (v116)
  {
    sub_10009D9D0();
    v35 = v33;
    v36 = sub_10009D9E0();
    v37 = sub_10009DFF0();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v116 = v106;
      *v38 = 136315138;
      v39 = v35;
      v40 = [v39 description];
      v41 = sub_10009DD90();
      LODWORD(v105) = v37;
      v42 = v30;
      v43 = v41;
      v45 = v44;

      v46 = sub_1000307A4(v43, v45, &v116);

      *(v38 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v36, v105, "configuredContainer using setupInfo: %s", v38, 0xCu);
      sub_10000670C(v106);

      v31 = v112;

      v107(v34, v42);
    }

    else
    {

      v28(v34, v30);
    }

    v56 = [v35 containerOptions];
    v57 = [v56 applicationBundleIdentifierOverrideForContainerAccess];

    v23 = v114;
    if (v57)
    {

      v58 = 0;
    }

    else
    {

      v58 = 1;
    }
  }

  else
  {
    v47 = *(v31 + 24);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10009DAF0();

    v48 = v116;
    if (v116)
    {
      v49 = v106;
      sub_10009D9D0();
      v50 = v48;
      v51 = sub_10009D9E0();
      v52 = sub_10009DFF0();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *v53 = 138412290;
        *(v53 + 4) = v50;
        *v54 = v48;
        v55 = v50;
        _os_log_impl(&_mh_execute_header, v51, v52, "configuredContainer with id: %@", v53, 0xCu);
        sub_10000C2B0(v54);
        v28 = v107;

        v49 = v106;
      }

      else
      {
        v55 = v51;
        v51 = v50;
      }
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10009DAF0();

      if (v116 != 9)
      {
        v97 = v104;
        sub_10009D9D0();
        v98 = sub_10009D9E0();
        v99 = sub_10009DFD0();
        if (os_log_type_enabled(v98, v99))
        {
          v100 = swift_slowAlloc();
          *v100 = 0;
          _os_log_impl(&_mh_execute_header, v98, v99, "configuredContainer throwing as it can't build a container", v100, 2u);
        }

        v28(v97, v30);
        v96 = "configuredContainer()";
        v86 = 0xD000000000000019;
        goto LABEL_36;
      }

      v59 = *(v31 + 24);
      sub_10009DD90();
      sub_10009DDB0();

      v60 = objc_allocWithZone(CKContainerID);
      v61 = sub_10009DD50();

      v62 = [v60 initWithContainerIdentifier:v61 environment:1];

      sub_1000983D8(v62, 0);

      v49 = v105;
      sub_10009D9D0();

      v51 = sub_10009D9E0();
      v63 = sub_10009DFF0();

      if (os_log_type_enabled(v51, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        *v64 = 138412290;
        v66 = *(v31 + 24);
        swift_getKeyPath();
        swift_getKeyPath();

        sub_10009DAF0();

        v28 = v107;

        v49 = v105;

        v67 = v116;
        *(v64 + 4) = v116;
        *v65 = v67;
        _os_log_impl(&_mh_execute_header, v51, v63, "configuredContainer with containerID: %@", v64, 0xCu);
        sub_10000C2B0(v65);
      }
    }

    v28(v49, v30);
    v58 = 1;
    v23 = v114;
  }

  v68 = *(v31 + 24);

  sub_1000987EC();

  if (v23)
  {
    return v23;
  }

  v69 = *(v31 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  v23 = v116;
  if (!v116)
  {
LABEL_29:
    v86 = 0xD000000000000033;
    v87 = v111;
    sub_10009D9D0();

    v88 = sub_10009D9E0();
    v89 = sub_10009DFF0();

    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v118 = v91;
      *v90 = 136315138;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10009DAF0();

      sub_100003714(&qword_1000CA6A0, &qword_10009FD50);
      v92 = sub_10009DDA0();
      v94 = sub_1000307A4(v92, v93, &v118);

      *(v90 + 4) = v94;
      _os_log_impl(&_mh_execute_header, v88, v89, "configuredContainer throwing as it doesn't have a container or nil sourceAppBundleID: %s", v90, 0xCu);
      sub_10000670C(v91);

      v95 = v111;
    }

    else
    {

      v95 = v87;
    }

    v107(v95, v113);
    v96 = "can't build a CKContainer";
LABEL_36:
    v23 = 0x80000001000A5180;
    v101 = v96 | 0x8000000000000000;
    sub_100005B1C();
    swift_allocError();
    *v102 = 0xD000000000000015;
    *(v102 + 8) = 0x80000001000A5180;
    *(v102 + 16) = 0;
    *(v102 + 24) = v86;
    *(v102 + 32) = v101;
    *(v102 + 40) = 10;
    swift_willThrow();
    return v23;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  v70 = v117;
  if (!v117)
  {

    goto LABEL_29;
  }

  v114 = 0;
  v71 = v113;
  v72 = v116;
  v73 = v110;
  sub_10009D9D0();
  v74 = sub_10009D9E0();
  v75 = sub_10009DFF0();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    *v76 = 67109120;
    *(v76 + 4) = v58;
    _os_log_impl(&_mh_execute_header, v74, v75, "configuredContainer about to return container, needsBundleIDOverride: %{BOOL}d", v76, 8u);
    v73 = v110;
  }

  v107(v73, v71);
  if (v58)
  {
    v77 = [v23 options];
    v78 = sub_10009DD50();
    [v77 setApplicationBundleIdentifierOverride:v78];

    v79 = v109;
    sub_10009D9D0();

    v80 = sub_10009D9E0();
    v81 = sub_10009DFF0();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v116 = v83;
      *v82 = 136315138;
      v84 = sub_1000307A4(v72, v70, &v116);

      *(v82 + 4) = v84;
      _os_log_impl(&_mh_execute_header, v80, v81, "configuredContainer options applicationBundleIDOverride set to: %s", v82, 0xCu);
      sub_10000670C(v83);

      v85 = v109;
    }

    else
    {

      v85 = v79;
    }

    v107(v85, v71);
  }

  else
  {
  }

  return v23;
}

uint64_t sub_10000C0AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  *a2 = v5;
  return result;
}

uint64_t sub_10000C13C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;

  return sub_10009DB00();
}

uint64_t sub_10000C2B0(uint64_t a1)
{
  v2 = sub_100003714(&qword_1000CA8E0, &qword_10009FE08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Publishers.CSCombineLatest5.init(_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  (*(*(a6 - 8) + 32))(a9, a1, a6);
  v17 = type metadata accessor for Publishers.CSCombineLatest5();
  (*(*(a7 - 8) + 32))(a9 + v17[25], a2, a7);
  (*(*(a8 - 8) + 32))(a9 + v17[26], a3, a8);
  (*(*(a10 - 8) + 32))(a9 + v17[27], a4, a10);
  return (*(*(a11 - 8) + 32))(a9 + v17[28], a5, a11);
}

uint64_t Publishers.CSCombineLatest5.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v85 = a3;
  v86 = a4;
  v87 = a1;
  v95 = *(a2 + 32);
  AssociatedTypeWitness = v95;
  v100 = *(a2 + 72);
  v92 = v100;
  v93 = *(a2 + 16);
  v64[1] = *(&v93 + 1);
  v71 = v93;
  v97 = v93;
  v94 = *(a2 + 56);
  v76 = v94;
  v99 = v94;
  v73 = *(&v94 + 1);
  v96 = sub_10009DA10();
  v5 = *(a2 + 40);
  v89 = *(a2 + 48);
  v90 = &protocol conformance descriptor for Publishers.CombineLatest3<A, B, C>;
  WitnessTable = swift_getWitnessTable();
  v6 = *(a2 + 80);
  v100 = *(a2 + 88);
  v78 = v6;
  v75 = v100;
  v91 = sub_10009DA10();
  *&v97 = swift_getAssociatedTypeWitness();
  v7 = *(&v93 + 1);
  *(&v97 + 1) = swift_getAssociatedTypeWitness();
  v8 = v95;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v69 = v5;
  *&v99 = swift_getAssociatedTypeWitness();
  *(&v99 + 1) = swift_getAssociatedTypeWitness();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v9 = v91;
  v80 = swift_getWitnessTable();
  v82 = sub_10009DA60();
  v83 = *(v82 - 8);
  v10 = *(v83 + 64);
  v11 = __chkstk_darwin(v82);
  v77 = v64 - v12;
  v72 = *(v89 - 8);
  v13 = *(v72 + 64);
  v14 = __chkstk_darwin(v11);
  v70 = v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = *(v5 - 8);
  v16 = *(v68 + 64);
  v17 = __chkstk_darwin(v14);
  v67 = v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = *(v9 - 8);
  v19 = *(v74 + 64);
  v20 = __chkstk_darwin(v17);
  v90 = v64 - v21;
  v22 = *(v8 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v20);
  v66 = v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v7;
  v27 = *(v7 - 8);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v24);
  v31 = v64 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v71;
  v33 = *(*(v71 - 8) + 64);
  v34 = __chkstk_darwin(v29);
  v36 = v64 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = *(v96 - 8);
  v37 = *(v88 + 64);
  v38 = __chkstk_darwin(v34);
  v40 = v64 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v42 = v64 - v41;
  v44 = v79;
  (*(v43 + 16))(v36, v79, v32);
  (*(v27 + 16))(v31, v44 + *(a2 + 100), v26);
  (*(v22 + 16))(v66, v44 + *(a2 + 104), v95);
  v65 = v42;
  sub_10009DA20();
  (*(v88 + 16))(v40, v42, v96);
  v45 = v69;
  (*(v68 + 16))(v67, v44 + *(a2 + 108), v69);
  v46 = v44 + *(a2 + 112);
  v47 = v89;
  (*(v72 + 16))(v70, v46, v89);
  v48 = v75;
  v49 = v45;
  v50 = v78;
  sub_10009DA20();
  v51 = swift_allocObject();
  v52 = v95;
  *&v53 = v95;
  *(&v53 + 1) = v49;
  *(v51 + 32) = v53;
  *(v51 + 16) = v93;
  v55 = v85;
  v54 = v86;
  *(v51 + 48) = v47;
  *(v51 + 56) = v55;
  v56 = v92;
  *&v53 = v92;
  *(&v53 + 1) = v50;
  *(v51 + 80) = v53;
  *(v51 + 64) = v94;
  *(v51 + 96) = v48;
  *(v51 + 104) = v54;
  v57 = swift_allocObject();
  v58 = v94;
  *(v57 + 16) = v93;
  *(v57 + 32) = v52;
  *(v57 + 40) = v49;
  *(v57 + 48) = v47;
  *(v57 + 56) = v55;
  *(v57 + 64) = v58;
  *(v57 + 80) = v56;
  *(v57 + 88) = v50;
  *(v57 + 96) = v48;
  *(v57 + 104) = v54;
  *(v57 + 112) = sub_10000D398;
  *(v57 + 120) = v51;
  v59 = v77;
  v61 = v90;
  v60 = v91;
  sub_10009DB30();

  v62 = v82;
  sub_10009DA50();
  (*(v83 + 8))(v59, v62);
  (*(v74 + 8))(v61, v60);
  return (*(v88 + 8))(v65, v96);
}

uint64_t sub_10000CEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v66 = a7;
  v67 = a8;
  v68 = a1;
  v69 = a2;
  v76 = a21;
  v74 = a4;
  v75 = a15;
  v77 = a10;
  v78 = a5;
  v72 = a3;
  v73 = a9;
  v70 = a14;
  v71 = a20;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = swift_getAssociatedTypeWitness();
  v24 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v26 = *(TupleTypeMetadata3 - 8);
  v27 = *(v26 + 64);
  v28 = __chkstk_darwin(TupleTypeMetadata3);
  v64 = &v61 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v79 = &v61 - v31;
  v32 = __chkstk_darwin(v30);
  v34 = &v61 - v33;
  __chkstk_darwin(v32);
  v36 = &v61 - v35;
  v37 = *(AssociatedTypeWitness - 8);
  v38 = *(v37 + 16);
  v63 = AssociatedTypeWitness;
  v38(&v61 - v35, a6, AssociatedTypeWitness);
  v39 = *(TupleTypeMetadata3 + 48);
  v61 = v23;
  v40 = *(v23 - 8);
  (*(v40 + 16))(&v36[v39], v66, v23);
  v41 = *(TupleTypeMetadata3 + 64);
  v62 = v24;
  v42 = *(v24 - 8);
  (*(v42 + 16))(&v36[v41], v67, v24);
  v43 = *(v26 + 16);
  v65 = v34;
  v43(v34, v36, TupleTypeMetadata3);
  v44 = *(TupleTypeMetadata3 + 48);
  v66 = *(TupleTypeMetadata3 + 64);
  v67 = v44;
  (*(v37 + 32))(v68, v34, AssociatedTypeWitness);
  v45 = v79;
  v43(v79, v36, TupleTypeMetadata3);
  v46 = *(TupleTypeMetadata3 + 48);
  v68 = *(TupleTypeMetadata3 + 64);
  v47 = v61;
  (*(v40 + 32))(v69, &v45[v46], v61);
  v48 = v64;
  (*(v26 + 32))(v64, v36, TupleTypeMetadata3);
  v49 = *(TupleTypeMetadata3 + 48);
  v50 = v62;
  (*(v42 + 32))(v72, &v48[*(TupleTypeMetadata3 + 64)], v62);
  v51 = swift_getAssociatedTypeWitness();
  (*(*(v51 - 8) + 16))(v74, v73, v51);
  v52 = swift_getAssociatedTypeWitness();
  (*(*(v52 - 8) + 16))(v78, v77, v52);
  v53 = *(v40 + 8);
  v54 = v47;
  v53(&v48[v49], v47);
  v55 = *(v37 + 8);
  v56 = v63;
  v55(v48, v63);
  v57 = *(v42 + 8);
  v58 = v79;
  v57(&v79[v68], v50);
  v55(v58, v56);
  v59 = v65;
  v57(&v65[v66], v50);
  return (v53)(&v59[v67], v54);
}

uint64_t sub_10000D3E0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v6 = *(TupleTypeMetadata3 + 48);
  v12 = *(TupleTypeMetadata3 + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v7 = swift_getTupleTypeMetadata3();
  v8 = a1 + *(v7 + 48);
  v9 = a1 + *(v7 + 64);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  return a2(a3, a3 + TupleTypeMetadata[12], a3 + TupleTypeMetadata[16], a3 + TupleTypeMetadata[20], a3 + TupleTypeMetadata[24], a1, a1 + v6, a1 + v12, v8, v9);
}

uint64_t sub_10000D5A8()
{
  v1 = *(v0 + 120);

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t sub_10000D5E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v8 = *(v2 + 120);
  v13 = *(v2 + 104);
  v11 = *(v2 + 72);
  v12 = *(v2 + 88);
  v10 = *(v2 + 56);
  return sub_10000D3E0(a1, *(v2 + 112), a2);
}

uint64_t Publishers.CSCombineLatest6.init(_:_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  (*(*(a7 - 8) + 32))(a9, a1, a7);
  v16 = type metadata accessor for Publishers.CSCombineLatest6();
  (*(*(a8 - 8) + 32))(a9 + v16[29], a2, a8);
  (*(*(a10 - 8) + 32))(a9 + v16[30], a3, a10);
  (*(*(a11 - 8) + 32))(a9 + v16[31], a4, a11);
  (*(*(a12 - 8) + 32))(a9 + v16[32], a5, a12);
  return (*(*(a13 - 8) + 32))(a9 + v16[33], a6, a13);
}

uint64_t Publishers.CSCombineLatest6.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v91 = a4;
  v90 = a3;
  v92 = a1;
  v100 = *(a2 + 16);
  v77 = v100;
  v103 = v100;
  v67[1] = *(&v100 + 1);
  v93 = *(a2 + 32);
  AssociatedTypeWitness = v93;
  v99 = *(a2 + 64);
  v81 = v99;
  v105 = v99;
  v80 = *(&v99 + 1);
  v106 = *(a2 + 80);
  *&v98 = v106;
  v97 = sub_10009DA10();
  v5 = *(a2 + 40);
  v102 = *(a2 + 48);
  WitnessTable = swift_getWitnessTable();
  v6 = *(a2 + 88);
  v7 = *(a2 + 96);
  *v95 = v102;
  v83 = v6;
  v101 = v7;
  v107 = v7;
  v94 = *(&v7 + 1);
  v96 = sub_10009DA30();
  *&v103 = swift_getAssociatedTypeWitness();
  v8 = *(&v100 + 1);
  *(&v103 + 1) = swift_getAssociatedTypeWitness();
  v9 = v93;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = v5;
  v73 = v5;
  *&v105 = swift_getAssociatedTypeWitness();
  v11 = v102;
  *(&v105 + 1) = swift_getAssociatedTypeWitness();
  v106 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v12 = v96;
  v85 = swift_getWitnessTable();
  v87 = sub_10009DA60();
  v88 = *(v87 - 8);
  v13 = *(v88 + 64);
  v14 = __chkstk_darwin(v87);
  v82 = v67 - v15;
  v78 = *(*(&v102 + 1) - 8);
  v16 = *(v78 + 64);
  v17 = __chkstk_darwin(v14);
  v76 = v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = *(v11 - 8);
  v19 = *(v75 + 64);
  v20 = __chkstk_darwin(v17);
  v74 = v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = *(v10 - 8);
  v22 = *(v72 + 64);
  v23 = __chkstk_darwin(v20);
  v71 = v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = *(v12 - 8);
  v25 = *(v79 + 64);
  v26 = __chkstk_darwin(v23);
  v94 = v67 - v27;
  v28 = *(v9 - 8);
  v29 = *(v28 + 64);
  v30 = __chkstk_darwin(v26);
  v68 = v67 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v8;
  v33 = *(v8 - 8);
  v34 = *(v33 + 64);
  v35 = __chkstk_darwin(v30);
  v37 = v67 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v77;
  v39 = *(*(v77 - 8) + 64);
  v40 = __chkstk_darwin(v35);
  v42 = v67 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = *(v97 - 8);
  v43 = v70;
  v44 = *(v70 + 64);
  v45 = __chkstk_darwin(v40);
  v67[0] = v67 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v48 = v67 - v47;
  v50 = v84;
  (*(v49 + 16))(v42, v84, v38);
  (*(v33 + 16))(v37, v50 + *(a2 + 116), v32);
  v51 = v93;
  (*(v28 + 16))(v68, v50 + *(a2 + 120), v93);
  v69 = v48;
  sub_10009DA20();
  v52 = v97;
  (*(v43 + 16))(v67[0], v48, v97);
  v53 = v73;
  (*(v72 + 16))(v71, v50 + *(a2 + 124), v73);
  (*(v75 + 16))(v74, v50 + *(a2 + 128), *v95);
  (*(v78 + 16))(v76, v50 + *(a2 + 132), *&v95[8]);
  v54 = v83;
  v55 = v53;
  sub_10009DA40();
  v56 = swift_allocObject();
  *&v57 = v51;
  *(&v57 + 1) = v55;
  *&v95[8] = v57;
  *(v56 + 32) = v57;
  *(v56 + 16) = v100;
  *(v56 + 48) = v102;
  v58 = v90;
  *(v56 + 64) = v90;
  *&v57 = v98;
  *(&v57 + 1) = v54;
  v98 = v57;
  *(v56 + 88) = v57;
  *(v56 + 72) = v99;
  *(v56 + 104) = v101;
  v59 = v91;
  *(v56 + 120) = v91;
  v60 = swift_allocObject();
  v61 = v102;
  *(v60 + 16) = v100;
  *(v60 + 32) = *&v95[8];
  *(v60 + 48) = v61;
  *(v60 + 64) = v58;
  *(v60 + 72) = v99;
  *(v60 + 104) = v101;
  *(v60 + 88) = v98;
  *(v60 + 120) = v59;
  *(v60 + 128) = sub_10000E948;
  *(v60 + 136) = v56;
  v62 = v82;
  v63 = v96;
  v64 = v94;
  sub_10009DB30();

  v65 = v87;
  sub_10009DA50();
  (*(v88 + 8))(v62, v65);
  (*(v79 + 8))(v64, v63);
  return (*(v70 + 8))(v69, v52);
}

uint64_t sub_10000E3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v72 = a8;
  v73 = a1;
  v74 = a2;
  v86 = a12;
  v87 = a6;
  v81 = a4;
  v82 = a11;
  v84 = a25;
  v85 = a5;
  v83 = a18;
  v79 = a17;
  v80 = a24;
  v77 = a3;
  v78 = a10;
  v71 = a9;
  v75 = a16;
  v76 = a23;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = swift_getAssociatedTypeWitness();
  v28 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v30 = *(TupleTypeMetadata3 - 8);
  v31 = *(v30 + 64);
  v32 = __chkstk_darwin(TupleTypeMetadata3);
  v68 = &v65 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v67 = &v65 - v35;
  v36 = __chkstk_darwin(v34);
  v38 = &v65 - v37;
  __chkstk_darwin(v36);
  v40 = &v65 - v39;
  v41 = AssociatedTypeWitness;
  v42 = *(AssociatedTypeWitness - 8);
  v43 = *(v42 + 16);
  v69 = v41;
  v43(&v65 - v39, a7, v41);
  v44 = *(TupleTypeMetadata3 + 48);
  v65 = v27;
  v45 = *(v27 - 8);
  (*(v45 + 16))(&v40[v44], v72, v27);
  v46 = *(TupleTypeMetadata3 + 64);
  v66 = v28;
  v47 = *(v28 - 8);
  (*(v47 + 16))(&v40[v46], v71, v28);
  v48 = *(v30 + 16);
  v70 = v38;
  v48(v38, v40, TupleTypeMetadata3);
  v49 = *(TupleTypeMetadata3 + 48);
  v71 = *(TupleTypeMetadata3 + 64);
  v72 = v49;
  (*(v42 + 32))(v73, v38, v41);
  v50 = v67;
  v48(v67, v40, TupleTypeMetadata3);
  v51 = *(TupleTypeMetadata3 + 48);
  v73 = *(TupleTypeMetadata3 + 64);
  v52 = v65;
  (*(v45 + 32))(v74, &v50[v51], v65);
  v53 = v68;
  (*(v30 + 32))(v68, v40, TupleTypeMetadata3);
  v74 = *(TupleTypeMetadata3 + 48);
  v54 = v66;
  (*(v47 + 32))(v77, &v53[*(TupleTypeMetadata3 + 64)], v66);
  v55 = swift_getAssociatedTypeWitness();
  (*(*(v55 - 8) + 16))(v81, v78, v55);
  v56 = swift_getAssociatedTypeWitness();
  (*(*(v56 - 8) + 16))(v85, v82, v56);
  v57 = swift_getAssociatedTypeWitness();
  (*(*(v57 - 8) + 16))(v87, v86, v57);
  v58 = *(v45 + 8);
  v59 = v52;
  v58(&v53[v74], v52);
  v60 = *(v42 + 8);
  v61 = v69;
  v60(v53, v69);
  v62 = *(v47 + 8);
  v62(&v50[v73], v54);
  v60(v50, v61);
  v63 = v70;
  v62(&v70[v71], v54);
  return (v58)(&v63[v72], v59);
}

uint64_t sub_10000E998@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v12 = a1 + *(TupleTypeMetadata3 + 64);
  v13 = *(TupleTypeMetadata3 + 48);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v7 = a1 + TupleTypeMetadata[12];
  v8 = a1 + TupleTypeMetadata[16];
  v9 = a1 + TupleTypeMetadata[20];
  v10 = swift_getTupleTypeMetadata();
  return a2(a3, a3 + v10[12], a3 + v10[16], a3 + v10[20], a3 + v10[24], a3 + v10[28], a1, a1 + v13, v12, v7, v8, v9);
}

uint64_t sub_10000EBAC()
{
  v1 = *(v0 + 136);

  return _swift_deallocObject(v0, 144, 7);
}

uint64_t sub_10000EBE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v8 = *(v2 + 136);
  v14 = *(v2 + 120);
  v12 = *(v2 + 88);
  v13 = *(v2 + 104);
  v10 = *(v2 + 56);
  v11 = *(v2 + 72);
  return sub_10000E998(a1, *(v2 + 128), a2);
}

uint64_t Publishers.CSCombineLatest7.init(_:_:_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  (*(*(a8 - 8) + 32))(a9, a1, a8);
  v17 = type metadata accessor for Publishers.CSCombineLatest7();
  (*(*(a10 - 8) + 32))(a9 + v17[33], a2, a10);
  (*(*(a11 - 8) + 32))(a9 + v17[34], a3, a11);
  (*(*(a12 - 8) + 32))(a9 + v17[35], a4, a12);
  (*(*(a13 - 8) + 32))(a9 + v17[36], a5, a13);
  (*(*(a14 - 8) + 32))(a9 + v17[37], a6, a14);
  return (*(*(a15 - 8) + 32))(a9 + v17[38], a7, a15);
}

uint64_t Publishers.CSCombineLatest7.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v107 = a4;
  v106 = a3;
  v108 = a1;
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 72);
  v10 = *(a2 + 80);
  v11 = *(a2 + 96);
  v125 = *(a2 + 88);
  v126 = v7;
  v124 = v11;
  v127 = v6;
  AssociatedTypeWitness = v6;
  v129 = v5;
  v130 = v7;
  v120 = v5;
  v131 = v8;
  v132 = v9;
  v117 = v9;
  v118 = v8;
  v133 = v10;
  v134 = v125;
  v116 = v10;
  v135 = v11;
  v12 = sub_10009DA30();
  v13 = *(a2 + 56);
  v119 = *(a2 + 48);
  v121 = v13;
  v122 = *(a2 + 64);
  v123 = v12;
  v112 = &protocol conformance descriptor for Publishers.CombineLatest4<A, B, C, D>;
  WitnessTable = swift_getWitnessTable();
  v14 = *(a2 + 112);
  v15 = *(a2 + 120);
  v98 = *(a2 + 104);
  v135 = v15;
  v115 = v14;
  v114 = v15;
  v113 = sub_10009DA30();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v129 = swift_getAssociatedTypeWitness();
  v16 = v126;
  v130 = swift_getAssociatedTypeWitness();
  v17 = v118;
  v131 = swift_getAssociatedTypeWitness();
  v18 = v119;
  v132 = swift_getAssociatedTypeWitness();
  v133 = swift_getAssociatedTypeWitness();
  v134 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v19 = v113;
  v101 = swift_getWitnessTable();
  v103 = sub_10009DA60();
  v104 = *(v103 - 8);
  v20 = *(v104 + 64);
  v21 = __chkstk_darwin(v103);
  v99 = &v89 - v22;
  v96 = *(v122 - 8);
  v23 = *(v96 + 64);
  v24 = __chkstk_darwin(v21);
  v95 = &v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = *(v13 - 8);
  v26 = *(v94 + 64);
  v27 = __chkstk_darwin(v24);
  v93 = &v89 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = *(v18 - 8);
  v29 = *(v92 + 64);
  v30 = __chkstk_darwin(v27);
  v91 = &v89 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = *(v19 - 8);
  v32 = *(v97 + 64);
  v33 = __chkstk_darwin(v30);
  v112 = &v89 - v34;
  v89 = *(v17 - 8);
  v35 = *(v89 + 64);
  v36 = __chkstk_darwin(v33);
  v90 = &v89 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(v16 - 8);
  v39 = *(v38 + 64);
  v40 = __chkstk_darwin(v36);
  v42 = &v89 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v120;
  v44 = *(v120 - 8);
  v45 = *(v44 + 64);
  v46 = __chkstk_darwin(v40);
  v48 = &v89 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *(*(v127 - 8) + 64);
  v50 = __chkstk_darwin(v46);
  v52 = &v89 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = *(v123 - 8);
  v53 = *(v111 + 64);
  v54 = __chkstk_darwin(v50);
  v109 = &v89 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v110 = &v89 - v56;
  v58 = v100;
  (*(v57 + 16))(v52, v100);
  (*(v44 + 16))(v48, v58 + *(a2 + 132), v43);
  (*(v38 + 16))(v42, v58 + *(a2 + 136), v126);
  (*(v89 + 16))(v90, v58 + *(a2 + 140), v118);
  v59 = v110;
  sub_10009DA40();
  (*(v111 + 16))(v109, v59, v123);
  v60 = v119;
  (*(v92 + 16))(v91, v58 + *(a2 + 144), v119);
  v61 = v121;
  (*(v94 + 16))(v93, v58 + *(a2 + 148), v121);
  v62 = v58 + *(a2 + 152);
  v63 = v122;
  (*(v96 + 16))(v95, v62, v122);
  v64 = v114;
  v65 = v115;
  v66 = v98;
  v67 = v60;
  v68 = v61;
  v69 = v63;
  sub_10009DA40();
  v70 = swift_allocObject();
  v71 = v120;
  v70[2] = v127;
  v70[3] = v71;
  v72 = v125;
  v73 = v118;
  v70[4] = v126;
  v70[5] = v73;
  v70[6] = v67;
  v70[7] = v68;
  v74 = v106;
  v70[8] = v69;
  v70[9] = v74;
  v76 = v116;
  v75 = v117;
  v70[10] = v117;
  v70[11] = v76;
  v77 = v124;
  v70[12] = v72;
  v70[13] = v77;
  v70[14] = v66;
  v70[15] = v65;
  v70[16] = v64;
  v78 = v107;
  v70[17] = v107;
  v79 = swift_allocObject();
  v80 = v120;
  v79[2] = v127;
  v79[3] = v80;
  v79[4] = v126;
  v79[5] = v73;
  v82 = v121;
  v81 = v122;
  v79[6] = v119;
  v79[7] = v82;
  v79[8] = v81;
  v79[9] = v74;
  v79[10] = v75;
  v79[11] = v76;
  v79[12] = v72;
  v79[13] = v77;
  v83 = v115;
  v79[14] = v66;
  v79[15] = v83;
  v79[16] = v114;
  v79[17] = v78;
  v79[18] = sub_100010388;
  v79[19] = v70;
  v84 = v99;
  v85 = v113;
  v86 = v112;
  sub_10009DB30();

  v87 = v103;
  sub_10009DA50();
  (*(v104 + 8))(v84, v87);
  (*(v97 + 8))(v86, v85);
  return (*(v111 + 8))(v110, v123);
}

uint64_t sub_10000FB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(char *, uint64_t), void (*a7)(char *, uint64_t), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v118 = a8;
  v111 = a7;
  v109 = a6;
  v105 = a5;
  v101 = a4;
  v98 = a3;
  v97 = a2;
  v96 = a1;
  v107 = a21;
  v108 = a29;
  v110 = a14;
  v106 = a13;
  v104 = a28;
  v100 = a27;
  v103 = a20;
  v99 = a19;
  v102 = a12;
  v95 = a11;
  v94 = a10;
  v92 = a9;
  v91 = a26;
  v88 = a25;
  v90 = a18;
  v87 = a17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v120 = swift_getAssociatedTypeWitness();
  v121 = swift_getAssociatedTypeWitness();
  v122 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v89 = *(TupleTypeMetadata - 1);
  v30 = *(v89 + 64);
  v31 = __chkstk_darwin(TupleTypeMetadata);
  v93 = &v86 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v113 = &v86 - v34;
  v35 = __chkstk_darwin(v33);
  v112 = &v86 - v36;
  v37 = __chkstk_darwin(v35);
  v114 = &v86 - v38;
  __chkstk_darwin(v37);
  v40 = &v86 - v39;
  v41 = swift_getAssociatedTypeWitness();
  v42 = *(v41 - 8);
  v115 = v41;
  v116 = v42;
  (*(v42 + 16))(v40, v118, v41);
  v43 = TupleTypeMetadata[12];
  v44 = swift_getAssociatedTypeWitness();
  v45 = *(v44 - 8);
  v117 = v44;
  v118 = v45;
  (*(v45 + 16))(&v40[v43], v92, v44);
  v46 = TupleTypeMetadata[16];
  v47 = swift_getAssociatedTypeWitness();
  v48 = *(v47 - 8);
  v49 = &v40[v46];
  v50 = v47;
  (*(v48 + 16))(v49, v94);
  v51 = TupleTypeMetadata[20];
  v52 = swift_getAssociatedTypeWitness();
  v53 = *(v52 - 8);
  v88 = v53;
  v54 = *(v53 + 16);
  v87 = v52;
  v54(&v40[v51], v95, v52);
  v55 = v89;
  v56 = *(v89 + 16);
  v57 = v114;
  v56(v114, v40, TupleTypeMetadata);
  v95 = TupleTypeMetadata[12];
  v94 = TupleTypeMetadata[16];
  v92 = TupleTypeMetadata[20];
  (*(v116 + 32))(v96, v57, v115);
  v58 = v112;
  v56(v112, v40, TupleTypeMetadata);
  v59 = TupleTypeMetadata[12];
  v96 = TupleTypeMetadata[16];
  v91 = TupleTypeMetadata[20];
  (*(v118 + 32))(v97, &v58[v59], v117);
  v60 = v113;
  v56(v113, v40, TupleTypeMetadata);
  v97 = TupleTypeMetadata[12];
  v61 = TupleTypeMetadata[16];
  v90 = TupleTypeMetadata[20];
  v62 = *(v48 + 32);
  v86 = v50;
  v62(v98, &v60[v61], v50);
  v63 = v93;
  (*(v55 + 32))(v93, v40, TupleTypeMetadata);
  v64 = TupleTypeMetadata[12];
  v65 = TupleTypeMetadata[16];
  (*(v53 + 32))(v101, &v63[TupleTypeMetadata[20]], v52);
  v66 = swift_getAssociatedTypeWitness();
  (*(*(v66 - 8) + 16))(v105, v102, v66);
  v67 = swift_getAssociatedTypeWitness();
  (*(*(v67 - 8) + 16))(v109, v106, v67);
  v68 = swift_getAssociatedTypeWitness();
  (*(*(v68 - 8) + 16))(v111, v110, v68);
  v69 = *(v48 + 8);
  v110 = v48 + 8;
  v111 = v69;
  v69(&v63[v65], v50);
  v70 = v117;
  v72 = v118 + 8;
  v71 = *(v118 + 8);
  v71(&v63[v64], v117);
  v73 = v71;
  v109 = v71;
  v118 = v72;
  v74 = v115;
  v75 = *(v116 + 8);
  v75(v63, v115);
  v76 = *(v88 + 8);
  v77 = v113;
  v78 = v87;
  v76(&v113[v90], v87);
  v73(&v77[v97], v70);
  v79 = v77;
  v80 = v74;
  v75(v79, v74);
  v81 = v112;
  v76(&v112[v91], v78);
  v82 = v86;
  v83 = v111;
  v111(&v81[v96], v86);
  v75(v81, v80);
  v84 = v114;
  v76(&v114[v92], v78);
  v83(&v84[v94], v82);
  return v109(&v84[v95], v117);
}

uint64_t sub_1000103E0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v14 = a1 + TupleTypeMetadata[12];
  v13 = a1 + TupleTypeMetadata[16];
  v12 = a1 + TupleTypeMetadata[20];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v6 = swift_getTupleTypeMetadata();
  v7 = a1 + v6[12];
  v8 = a1 + v6[16];
  v9 = a1 + v6[20];
  v10 = swift_getTupleTypeMetadata();
  return a2(a3, a3 + v10[12], a3 + v10[16], a3 + v10[20], a3 + v10[24], a3 + v10[28], a3 + v10[32], a1, v14, v13, v12, v7, v8, v9);
}

uint64_t sub_10001064C()
{
  v1 = *(v0 + 152);

  return _swift_deallocObject(v0, 160, 7);
}

uint64_t sub_100010684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v8 = *(v2 + 152);
  v15 = *(v2 + 136);
  v13 = *(v2 + 104);
  v14 = *(v2 + 120);
  v11 = *(v2 + 72);
  v12 = *(v2 + 88);
  v10 = *(v2 + 56);
  return sub_1000103E0(a1, *(v2 + 144), a2);
}

uint64_t sub_100010758(void *a1)
{
  v2 = a1[2];
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = a1[3];
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v7 = a1[4];
      result = swift_checkMetadataState();
      if (v8 <= 0x3F)
      {
        v9 = a1[5];
        result = swift_checkMetadataState();
        if (v10 <= 0x3F)
        {
          v11 = a1[6];
          result = swift_checkMetadataState();
          if (v12 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100010838(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v42 = *(a3[2] - 8);
  v4 = *(v42 + 84);
  v5 = *(a3[3] - 8);
  v6 = *(v5 + 84);
  if (v6 <= v4)
  {
    v7 = *(v42 + 84);
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = a3[5];
  v9 = *(a3[4] - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v8 - 8);
  v13 = *(v12 + 84);
  if (v13 <= v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  v15 = *(a3[6] - 8);
  v16 = *(v15 + 84);
  v17 = *(v5 + 80);
  v18 = *(*(a3[3] - 8) + 64);
  v19 = *(v9 + 80);
  v20 = *(*(a3[4] - 8) + 64);
  v21 = *(v12 + 80);
  v22 = *(v15 + 80);
  if (v16 <= v14)
  {
    v23 = v14;
  }

  else
  {
    v23 = *(v15 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v24 = *(*(a3[2] - 8) + 64) + v17;
  v25 = *(*(v8 - 8) + 64) + v22;
  v26 = a2 - v23;
  if (a2 > v23)
  {
    v27 = ((v25 + ((v20 + v21 + ((v18 + v19 + (v24 & ~v17)) & ~v19)) & ~v21)) & ~v22) + *(*(a3[6] - 8) + 64);
    v28 = 8 * v27;
    if (v27 <= 3)
    {
      v30 = ((v26 + ~(-1 << v28)) >> v28) + 1;
      if (HIWORD(v30))
      {
        v29 = *(a1 + v27);
        if (!v29)
        {
          goto LABEL_36;
        }

        goto LABEL_23;
      }

      if (v30 > 0xFF)
      {
        v29 = *(a1 + v27);
        if (!*(a1 + v27))
        {
          goto LABEL_36;
        }

        goto LABEL_23;
      }

      if (v30 < 2)
      {
LABEL_36:
        if (v23)
        {
          goto LABEL_37;
        }

        return 0;
      }
    }

    v29 = *(a1 + v27);
    if (!*(a1 + v27))
    {
      goto LABEL_36;
    }

LABEL_23:
    v31 = (v29 - 1) << v28;
    if (v27 > 3)
    {
      v31 = 0;
    }

    if (v27)
    {
      if (v27 <= 3)
      {
        v32 = ((v25 + ((v20 + v21 + ((v18 + v19 + (v24 & ~v17)) & ~v19)) & ~v21)) & ~v22) + *(*(a3[6] - 8) + 64);
      }

      else
      {
        v32 = 4;
      }

      if (v32 > 2)
      {
        if (v32 == 3)
        {
          v33 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v33 = *a1;
        }
      }

      else if (v32 == 1)
      {
        v33 = *a1;
      }

      else
      {
        v33 = *a1;
      }
    }

    else
    {
      v33 = 0;
    }

    return v23 + (v33 | v31) + 1;
  }

LABEL_37:
  if (v4 == v23)
  {
    v34 = *(v42 + 48);

    return v34();
  }

  v36 = (a1 + v24) & ~v17;
  if (v6 == v23)
  {
    v37 = *(v5 + 48);
    v38 = *(v5 + 84);
    v39 = a3[3];

    return v37(v36, v38, v39);
  }

  v36 = (v36 + v18 + v19) & ~v19;
  if (v10 == v23)
  {
    v37 = *(v9 + 48);
    v38 = *(v9 + 84);
    v39 = a3[4];

    return v37(v36, v38, v39);
  }

  v36 = (v36 + v20 + v21) & ~v21;
  if (v13 == v23)
  {
    v37 = *(v12 + 48);
    v38 = *(v12 + 84);
    v39 = a3[5];

    return v37(v36, v38, v39);
  }

  v40 = *(v15 + 48);
  v41 = (v25 + v36) & ~v22;

  return v40(v41, v16);
}

char *sub_100010CD8(char *result, unsigned int a2, unsigned int a3, void *a4)
{
  v42 = a4[3];
  v43 = *(a4[2] - 8);
  v5 = *(v43 + 84);
  v6 = *(v42 - 8);
  v7 = *(v6 + 84);
  if (v7 <= v5)
  {
    v8 = *(v43 + 84);
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = a4[5];
  v41 = a4[4];
  v10 = *(v41 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v9 - 8);
  v14 = *(v13 + 84);
  if (v14 <= v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = *(v13 + 84);
  }

  v16 = *(a4[6] - 8);
  v17 = *(*(a4[2] - 8) + 64);
  v18 = *(v6 + 80);
  v19 = *(*(v42 - 8) + 64);
  v20 = *(v10 + 80);
  v21 = *(*(v41 - 8) + 64);
  v22 = *(v13 + 80);
  v23 = *(*(v9 - 8) + 64);
  v24 = *(v16 + 80);
  if (*(v16 + 84) <= v15)
  {
    v25 = v15;
  }

  else
  {
    v25 = *(v16 + 84);
  }

  v26 = v23 + v24;
  v27 = ((v23 + v24 + ((v21 + v22 + ((v19 + v20 + ((v17 + v18) & ~v18)) & ~v20)) & ~v22)) & ~v24) + *(*(a4[6] - 8) + 64);
  v28 = a3 >= v25;
  v29 = a3 - v25;
  if (v29 != 0 && v28)
  {
    if (v27 <= 3)
    {
      v34 = ((v29 + ~(-1 << (8 * v27))) >> (8 * v27)) + 1;
      if (HIWORD(v34))
      {
        v30 = 4;
      }

      else
      {
        if (v34 < 0x100)
        {
          v35 = 1;
        }

        else
        {
          v35 = 2;
        }

        if (v34 >= 2)
        {
          v30 = v35;
        }

        else
        {
          v30 = 0;
        }
      }
    }

    else
    {
      v30 = 1;
    }
  }

  else
  {
    v30 = 0;
  }

  if (v25 < a2)
  {
    v31 = ~v25 + a2;
    if (v27 < 4)
    {
      v33 = (v31 >> (8 * v27)) + 1;
      if (v27)
      {
        v36 = v31 & ~(-1 << (8 * v27));
        v37 = result;
        bzero(result, v27);
        result = v37;
        if (v27 != 3)
        {
          if (v27 == 2)
          {
            *v37 = v36;
            if (v30 > 1)
            {
LABEL_60:
              if (v30 == 2)
              {
                *&result[v27] = v33;
              }

              else
              {
                *&result[v27] = v33;
              }

              return result;
            }
          }

          else
          {
            *v37 = v31;
            if (v30 > 1)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_57;
        }

        *v37 = v36;
        v37[2] = BYTE2(v36);
      }

      if (v30 > 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v32 = result;
      bzero(result, v27);
      result = v32;
      *v32 = v31;
      v33 = 1;
      if (v30 > 1)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    if (v30)
    {
      result[v27] = v33;
    }

    return result;
  }

  if (v30 > 1)
  {
    if (v30 != 2)
    {
      *&result[v27] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_40;
    }

    *&result[v27] = 0;
LABEL_39:
    if (!a2)
    {
      return result;
    }

    goto LABEL_40;
  }

  if (!v30)
  {
    goto LABEL_39;
  }

  result[v27] = 0;
  if (!a2)
  {
    return result;
  }

LABEL_40:
  if (v5 == v25)
  {
    v38 = *(v43 + 56);

    return v38();
  }

  else
  {
    v39 = &result[v17 + v18] & ~v18;
    if (v7 == v25)
    {
      v40 = *(v6 + 56);
    }

    else
    {
      v39 = (v39 + v19 + v20) & ~v20;
      if (v11 == v25)
      {
        v40 = *(v10 + 56);
      }

      else
      {
        v39 = (v39 + v21 + v22) & ~v22;
        if (v14 == v25)
        {
          v40 = *(v13 + 56);
        }

        else
        {
          v40 = *(v16 + 56);
          v39 = (v26 + v39) & ~v24;
        }
      }
    }

    return v40(v39);
  }
}

uint64_t sub_1000111F8(void *a1)
{
  v2 = a1[2];
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = a1[3];
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v7 = a1[4];
      result = swift_checkMetadataState();
      if (v8 <= 0x3F)
      {
        v9 = a1[5];
        result = swift_checkMetadataState();
        if (v10 <= 0x3F)
        {
          v11 = a1[6];
          result = swift_checkMetadataState();
          if (v12 <= 0x3F)
          {
            v13 = a1[7];
            result = swift_checkMetadataState();
            if (v14 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000112F4(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v4 = *(a3[2] - 8);
  v61 = a3[3];
  v62 = v4;
  v5 = *(v4 + 84);
  v6 = *(v61 - 8);
  v7 = *(v6 + 84);
  if (v7 <= v5)
  {
    v8 = *(v4 + 84);
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = a3[5];
  v59 = v9;
  v60 = a3[4];
  v10 = *(v60 - 8);
  v11 = *(v10 + 84);
  if (v11 > v8)
  {
    v8 = *(v10 + 84);
  }

  v12 = *(v9 - 8);
  v13 = *(v12 + 84);
  v15 = a3[6];
  v14 = a3[7];
  v57 = v14;
  v58 = v15;
  v16 = *(v15 - 8);
  if (v13 <= v8)
  {
    v17 = v8;
  }

  else
  {
    v17 = *(v12 + 84);
  }

  v18 = *(v15 - 8);
  v19 = *(v16 + 84);
  if (v19 <= v17)
  {
    v20 = v17;
  }

  else
  {
    v20 = *(v16 + 84);
  }

  v21 = *(v14 - 8);
  v22 = *(v21 + 84);
  v23 = *(v4 + 64);
  v24 = *(v6 + 80);
  v25 = *(*(v61 - 8) + 64);
  v26 = *(v10 + 80);
  v27 = *(*(v60 - 8) + 64);
  v28 = *(v12 + 80);
  v29 = *(*(v9 - 8) + 64);
  v30 = *(v16 + 80);
  v31 = *(v16 + 64);
  v32 = *(v21 + 80);
  v33 = *(v21 + 64);
  if (v22 <= v20)
  {
    v34 = v20;
  }

  else
  {
    v34 = *(v21 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v35 = *(*(v60 - 8) + 64);
  v36 = v23 + v24;
  v37 = v29 + v30;
  v38 = v31 + v32;
  v39 = a2 - v34;
  if (a2 > v34)
  {
    v40 = (v38 + ((v37 + ((v27 + v28 + ((v25 + v26 + (v36 & ~v24)) & ~v26)) & ~v28)) & ~v30)) & ~v32;
    v41 = v40 + v33;
    v42 = 8 * (v40 + v33);
    if (v41 <= 3)
    {
      v44 = ((v39 + ~(-1 << v42)) >> v42) + 1;
      if (HIWORD(v44))
      {
        v43 = *(a1 + v41);
        if (!v43)
        {
          goto LABEL_38;
        }

        goto LABEL_25;
      }

      if (v44 > 0xFF)
      {
        v43 = *(a1 + v41);
        if (!*(a1 + v41))
        {
          goto LABEL_38;
        }

        goto LABEL_25;
      }

      if (v44 < 2)
      {
LABEL_38:
        if (v34)
        {
          goto LABEL_39;
        }

        return 0;
      }
    }

    v43 = *(a1 + v41);
    if (!*(a1 + v41))
    {
      goto LABEL_38;
    }

LABEL_25:
    v45 = (v43 - 1) << v42;
    if (v41 > 3)
    {
      v45 = 0;
    }

    if (v41)
    {
      if (v41 <= 3)
      {
        v46 = v41;
      }

      else
      {
        v46 = 4;
      }

      if (v46 > 2)
      {
        if (v46 == 3)
        {
          v47 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v47 = *a1;
        }
      }

      else if (v46 == 1)
      {
        v47 = *a1;
      }

      else
      {
        v47 = *a1;
      }
    }

    else
    {
      v47 = 0;
    }

    return v34 + (v47 | v45) + 1;
  }

LABEL_39:
  if (v5 == v34)
  {
    v48 = *(v62 + 48);

    return v48(a1);
  }

  v50 = (a1 + v36) & ~v24;
  if (v7 == v34)
  {
    v51 = *(v6 + 48);
    v52 = (a1 + v36) & ~v24;
    v53 = *(v6 + 84);
    v54 = v61;

    return v51(v52, v53, v54);
  }

  if (v11 == v34)
  {
    v51 = *(v10 + 48);
    v52 = (v50 + v25 + v26) & ~v26;
    v53 = *(v10 + 84);
    v54 = v60;

    return v51(v52, v53, v54);
  }

  v52 = (((v50 + v25 + v26) & ~v26) + v27 + v28) & ~v28;
  if (v13 == v34)
  {
    v51 = *(v12 + 48);
    v53 = *(v12 + 84);
    v54 = v59;

    return v51(v52, v53, v54);
  }

  v52 = (v37 + v52) & ~v30;
  if (v19 == v34)
  {
    v51 = *(v18 + 48);
    v53 = v19;
    v54 = v58;

    return v51(v52, v53, v54);
  }

  v55 = *(v21 + 48);
  v56 = (v38 + v52) & ~v32;

  return v55(v56, v22, v57);
}

unsigned int *sub_100011858(unsigned int *result, unsigned int a2, unsigned int a3, void *a4)
{
  v6 = *(a4[2] - 8);
  v55 = v6;
  v7 = *(v6 + 84);
  v8 = *(a4[3] - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10 <= v7)
  {
    v11 = *(v6 + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = a4[5];
  v53 = a4[4];
  v13 = *(v53 - 8);
  v54 = *(v13 + 84);
  if (v54 > v11)
  {
    v11 = *(v13 + 84);
  }

  v51 = a4[5];
  v14 = *(v12 - 8);
  v52 = *(v14 + 84);
  if (v52 <= v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = *(v14 + 84);
  }

  v50 = a4[6];
  v16 = *(v50 - 8);
  v17 = *(v16 + 84);
  if (v17 <= v15)
  {
    v18 = v15;
  }

  else
  {
    v18 = *(v16 + 84);
  }

  v19 = *(a4[7] - 8);
  v20 = *(v6 + 64);
  v21 = *(v8 + 80);
  v22 = *(v8 + 64);
  v23 = *(v13 + 80);
  v24 = *(*(v53 - 8) + 64);
  v25 = *(v14 + 80);
  v26 = *(*(v12 - 8) + 64);
  v27 = *(v16 + 80);
  v28 = *(*(v50 - 8) + 64);
  v29 = *(v19 + 80);
  v30 = v26 + v27;
  v31 = v28 + v29;
  v32 = ((v28 + v29 + ((v26 + v27 + ((v24 + v25 + ((v22 + v23 + ((v20 + v21) & ~v21)) & ~v23)) & ~v25)) & ~v27)) & ~v29) + *(v19 + 64);
  if (*(v19 + 84) <= v18)
  {
    v33 = v18;
  }

  else
  {
    v33 = *(v19 + 84);
  }

  if (a3 <= v33)
  {
    v34 = 0;
  }

  else if (v32 <= 3)
  {
    v38 = ((a3 - v33 + ~(-1 << (8 * v32))) >> (8 * v32)) + 1;
    if (HIWORD(v38))
    {
      v34 = 4;
    }

    else
    {
      if (v38 < 0x100)
      {
        v39 = 1;
      }

      else
      {
        v39 = 2;
      }

      if (v38 >= 2)
      {
        v34 = v39;
      }

      else
      {
        v34 = 0;
      }
    }
  }

  else
  {
    v34 = 1;
  }

  if (v33 < a2)
  {
    v35 = ~v33 + a2;
    if (v32 >= 4)
    {
      v36 = result;
      bzero(result, v32);
      result = v36;
      *v36 = v35;
      v37 = 1;
      if (v34 > 1)
      {
        goto LABEL_22;
      }

      goto LABEL_59;
    }

    v37 = (v35 >> (8 * v32)) + 1;
    if (v32)
    {
      v40 = v35 & ~(-1 << (8 * v32));
      v41 = result;
      bzero(result, v32);
      result = v41;
      if (v32 != 3)
      {
        if (v32 == 2)
        {
          *v41 = v40;
          if (v34 > 1)
          {
            goto LABEL_22;
          }
        }

        else
        {
          *v41 = v35;
          if (v34 > 1)
          {
LABEL_22:
            if (v34 == 2)
            {
              *(result + v32) = v37;
            }

            else
            {
              *(result + v32) = v37;
            }

            return result;
          }
        }

LABEL_59:
        if (v34)
        {
          *(result + v32) = v37;
        }

        return result;
      }

      *v41 = v40;
      *(v41 + 2) = BYTE2(v40);
    }

    if (v34 > 1)
    {
      goto LABEL_22;
    }

    goto LABEL_59;
  }

  if (v34 > 1)
  {
    if (v34 != 2)
    {
      *(result + v32) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_43;
    }

    *(result + v32) = 0;
  }

  else if (v34)
  {
    *(result + v32) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_43;
  }

  if (!a2)
  {
    return result;
  }

LABEL_43:
  if (v7 == v33)
  {
    v42 = v55;
LABEL_45:
    v43 = *(v42 + 56);
LABEL_48:

    return v43();
  }

  v44 = (result + v20 + v21) & ~v21;
  if (v10 == v33)
  {
    v43 = *(v9 + 56);
    goto LABEL_48;
  }

  v45 = (v44 + v22 + v23) & ~v23;
  if (v54 == v33)
  {
    v42 = v13;
    goto LABEL_45;
  }

  v46 = (v45 + v24 + v25) & ~v25;
  if (v52 == v33)
  {
    v47 = *(v14 + 56);

    return v47(v46);
  }

  v46 = (v30 + v46) & ~v27;
  if (v17 == v33)
  {
    v47 = *(v16 + 56);

    return v47(v46);
  }

  v48 = *(v19 + 56);
  v49 = (v31 + v46) & ~v29;

  return v48(v49);
}

uint64_t sub_100011DD8(void *a1)
{
  v2 = a1[2];
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = a1[3];
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v7 = a1[4];
      result = swift_checkMetadataState();
      if (v8 <= 0x3F)
      {
        v9 = a1[5];
        result = swift_checkMetadataState();
        if (v10 <= 0x3F)
        {
          v11 = a1[6];
          result = swift_checkMetadataState();
          if (v12 <= 0x3F)
          {
            v13 = a1[7];
            result = swift_checkMetadataState();
            if (v14 <= 0x3F)
            {
              v15 = a1[8];
              result = swift_checkMetadataState();
              if (v16 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100011EF0(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v55 = a3[2];
  v54 = a3[3];
  v5 = *(*(v55 - 8) + 84);
  v6 = *(v54 - 8);
  v7 = *(v6 + 84);
  v8 = a3[5];
  v52 = a3[4];
  v9 = *(v52 - 8);
  if (v7 <= v5)
  {
    v10 = *(*(v55 - 8) + 84);
  }

  else
  {
    v10 = *(v6 + 84);
  }

  v11 = *(v52 - 8);
  v53 = *(v9 + 84);
  if (v53 > v10)
  {
    v10 = *(v9 + 84);
  }

  v50 = a3[5];
  v51 = *(*(v8 - 8) + 84);
  if (v51 > v10)
  {
    v10 = *(*(v8 - 8) + 84);
  }

  v12 = *(a3[6] - 8);
  if (*(v12 + 84) <= v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = *(v12 + 84);
  }

  v49 = a3[7];
  v14 = *(v49 - 8);
  v15 = *(v14 + 84);
  if (v15 <= v13)
  {
    v16 = v13;
  }

  else
  {
    v16 = *(v14 + 84);
  }

  v48 = a3[8];
  v17 = *(v48 - 8);
  v18 = *(v6 + 80);
  v56 = *(*(v54 - 8) + 64);
  v19 = *(v9 + 80);
  v20 = *(v8 - 8);
  v21 = *(v9 + 64);
  v22 = *(v20 + 80);
  v23 = *(v12 + 80);
  v24 = *(v14 + 80);
  v25 = *(v17 + 80);
  if (*(v17 + 84) <= v16)
  {
    v26 = v16;
  }

  else
  {
    v26 = *(v17 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v27 = *(*(v55 - 8) + 64) + v18;
  v28 = *(v20 + 64) + v23;
  v29 = *(v12 + 64) + v24;
  v30 = *(*(v49 - 8) + 64) + v25;
  v31 = a2 >= v26;
  v32 = a2 - v26;
  if (v32 == 0 || !v31)
  {
    goto LABEL_42;
  }

  v33 = ((v30 + ((v29 + ((v28 + ((v21 + v22 + ((v56 + v19 + (v27 & ~v18)) & ~v19)) & ~v22)) & ~v23)) & ~v24)) & ~v25) + *(*(v48 - 8) + 64);
  v34 = 8 * v33;
  if (v33 > 3)
  {
    goto LABEL_21;
  }

  v36 = ((v32 + ~(-1 << v34)) >> v34) + 1;
  if (HIWORD(v36))
  {
    v35 = *(a1 + v33);
    if (!v35)
    {
      goto LABEL_41;
    }

    goto LABEL_28;
  }

  if (v36 > 0xFF)
  {
    v35 = *(a1 + v33);
    if (!*(a1 + v33))
    {
      goto LABEL_41;
    }

    goto LABEL_28;
  }

  if (v36 >= 2)
  {
LABEL_21:
    v35 = *(a1 + v33);
    if (!*(a1 + v33))
    {
      goto LABEL_41;
    }

LABEL_28:
    v37 = (v35 - 1) << v34;
    if (v33 > 3)
    {
      v37 = 0;
    }

    if (v33)
    {
      if (v33 <= 3)
      {
        v38 = ((v30 + ((v29 + ((v28 + ((v21 + v22 + ((v56 + v19 + (v27 & ~v18)) & ~v19)) & ~v22)) & ~v23)) & ~v24)) & ~v25) + *(*(v48 - 8) + 64);
      }

      else
      {
        v38 = 4;
      }

      if (v38 > 2)
      {
        if (v38 == 3)
        {
          v39 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v39 = *a1;
        }
      }

      else if (v38 == 1)
      {
        v39 = *a1;
      }

      else
      {
        v39 = *a1;
      }
    }

    else
    {
      v39 = 0;
    }

    return v26 + (v39 | v37) + 1;
  }

LABEL_41:
  if (!v26)
  {
    return 0;
  }

LABEL_42:
  if (v5 == v26)
  {
    v41 = *(v55 - 8);
    v40 = v55;
LABEL_44:
    v42 = *(v41 + 48);
    goto LABEL_48;
  }

  if (v7 == v26)
  {
    v40 = v54;
    v42 = *(*(v54 - 8) + 48);
    a1 = ((a1 + v27) & ~v18);
    v5 = v7;
LABEL_48:

    return v42(a1, v5, v40);
  }

  a1 = ((((a1 + v27) & ~v18) + v56 + v19) & ~v19);
  v5 = v53;
  if (v53 == v26)
  {
    v41 = *(v52 - 8);
    v40 = v52;
    goto LABEL_44;
  }

  v44 = (a1 + v21 + v22) & ~v22;
  if (v51 == v26)
  {
    v45 = *(v20 + 48);

    return v45(v44);
  }

  else
  {
    v46 = (v28 + v44) & ~v23;
    if (*(v12 + 84) != v26)
    {
      a1 = ((v29 + v46) & ~v24);
      if (v15 == v26)
      {
        v42 = *(v14 + 48);
        v5 = *(v14 + 84);
        v40 = v49;
      }

      else
      {
        v42 = *(v17 + 48);
        a1 = ((a1 + v30) & ~v25);
        v5 = *(v17 + 84);
        v40 = v48;
      }

      return v42(a1, v5, v40);
    }

    v47 = *(v12 + 48);

    return v47(v46);
  }
}

uint64_t sub_1000124D4(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v52 = *(a4[2] - 8);
  v4 = *(v52 + 84);
  v5 = *(a4[3] - 8);
  v6 = *(v5 + 84);
  if (v6 <= v4)
  {
    v7 = *(v52 + 84);
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = a4[5];
  v9 = *(a4[4] - 8);
  v50 = *(v9 + 84);
  if (v50 > v7)
  {
    v7 = *(v9 + 84);
  }

  v47 = a4[5];
  v10 = *(v8 - 8);
  v48 = *(v10 + 84);
  if (v48 > v7)
  {
    v7 = *(v10 + 84);
  }

  v11 = a4[7];
  v12 = *(a4[6] - 8);
  v45 = *(v12 + 84);
  if (v45 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = *(v12 + 84);
  }

  v14 = *(v11 - 8);
  v15 = *(v14 + 84);
  if (v15 <= v13)
  {
    v16 = v13;
  }

  else
  {
    v16 = *(v14 + 84);
  }

  v17 = *(a4[8] - 8);
  v18 = *(*(a4[2] - 8) + 64);
  v51 = *(a4[3] - 8);
  v19 = *(v5 + 80);
  v20 = *(v51 + 64);
  v49 = *(a4[4] - 8);
  v21 = *(v9 + 80);
  v22 = *(v49 + 64);
  v46 = *(v8 - 8);
  v23 = *(v10 + 80);
  v24 = *(v46 + 64);
  v25 = *(v12 + 80);
  v26 = *(*(a4[6] - 8) + 64);
  v27 = *(v14 + 80);
  v28 = *(*(v11 - 8) + 64);
  v29 = *(v17 + 80);
  v30 = v18 + v19;
  v31 = v26 + v27;
  v32 = ((v28 + v29 + ((v26 + v27 + ((v24 + v25 + ((v22 + v23 + ((v20 + v21 + ((v18 + v19) & ~v19)) & ~v21)) & ~v23)) & ~v25)) & ~v27)) & ~v29) + *(v17 + 64);
  if (*(v17 + 84) <= v16)
  {
    v33 = v16;
  }

  else
  {
    v33 = *(v17 + 84);
  }

  if (a3 <= v33)
  {
    v34 = 0;
  }

  else if (v32 <= 3)
  {
    v38 = ((a3 - v33 + ~(-1 << (8 * v32))) >> (8 * v32)) + 1;
    if (HIWORD(v38))
    {
      v34 = 4;
    }

    else
    {
      if (v38 < 0x100)
      {
        v39 = 1;
      }

      else
      {
        v39 = 2;
      }

      if (v38 >= 2)
      {
        v34 = v39;
      }

      else
      {
        v34 = 0;
      }
    }
  }

  else
  {
    v34 = 1;
  }

  result = a1;
  if (v33 < a2)
  {
    v36 = ~v33 + a2;
    if (v32 >= 4)
    {
      bzero(a1, v32);
      result = a1;
      *a1 = v36;
      v37 = 1;
      if (v34 > 1)
      {
        goto LABEL_24;
      }

      goto LABEL_57;
    }

    v37 = (v36 >> (8 * v32)) + 1;
    if (v32)
    {
      v40 = v36 & ~(-1 << (8 * v32));
      bzero(a1, v32);
      result = a1;
      if (v32 != 3)
      {
        if (v32 == 2)
        {
          *a1 = v40;
          if (v34 > 1)
          {
            goto LABEL_24;
          }
        }

        else
        {
          *a1 = v36;
          if (v34 > 1)
          {
LABEL_24:
            if (v34 == 2)
            {
              *(result + v32) = v37;
            }

            else
            {
              *(result + v32) = v37;
            }

            return result;
          }
        }

LABEL_57:
        if (v34)
        {
          *(result + v32) = v37;
        }

        return result;
      }

      *a1 = v40;
      a1[2] = BYTE2(v40);
    }

    if (v34 > 1)
    {
      goto LABEL_24;
    }

    goto LABEL_57;
  }

  if (v34 > 1)
  {
    if (v34 != 2)
    {
      *&a1[v32] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_45;
    }

    *&a1[v32] = 0;
  }

  else if (v34)
  {
    a1[v32] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_45;
  }

  if (!a2)
  {
    return result;
  }

LABEL_45:
  if (v4 == v33)
  {
    v41 = *(v52 + 56);
    goto LABEL_65;
  }

  if (v6 == v33)
  {
    v41 = *(v51 + 56);
    result = &a1[v30] & ~v19;
    goto LABEL_65;
  }

  result = ((&a1[v30] & ~v19) + v20 + v21) & ~v21;
  if (v50 == v33)
  {
    v42 = v49;
LABEL_64:
    v41 = *(v42 + 56);
LABEL_65:

    return v41(result);
  }

  result = (result + v22 + v23) & ~v23;
  if (v48 == v33)
  {
    v42 = v46;
    goto LABEL_64;
  }

  v43 = (v24 + v25 + result) & ~v25;
  if (v45 != v33)
  {
    result = (v31 + v43) & ~v27;
    if (v15 == v33)
    {
      v41 = *(v14 + 56);
    }

    else
    {
      v41 = *(v17 + 56);
      result = (v28 + v29 + result) & ~v29;
    }

    return v41(result);
  }

  v44 = *(v12 + 56);

  return v44(v43);
}

void sub_100012B0C()
{
  v0 = [objc_allocWithZone(NSOperationQueue) init];
  [v0 setQualityOfService:25];
  v1 = sub_10009DD50();
  [v0 setName:v1];

  qword_1000CA418 = v0;
}

uint64_t sub_100012B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return _swift_task_switch(sub_100012BB8, 0, 0);
}

uint64_t sub_100012BB8()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v1[1] = vextq_s8(*(v0 + 40), *(v0 + 40), 8uLL);
  v2 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v4 = sub_100003714(&qword_1000CA238, &qword_1000A0330);
  *v3 = v0;
  v3[1] = sub_100012CC4;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD00000000000002BLL, 0x80000001000A5260, sub_1000181F0, v1, v4);
}

uint64_t sub_100012CC4()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return _swift_task_switch(sub_100012DDC, 0, 0);
}

uint64_t sub_100012E00(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v3 = sub_100003714(&unk_1000CA240, &qword_1000A0380);
  *(v2 + 32) = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  *(v2 + 40) = swift_task_alloc();
  *(v2 + 64) = *(v3 + 48);
  *(v2 + 68) = *(v3 + 64);

  return _swift_task_switch(sub_100012EB8, 0, 0);
}

uint64_t sub_100012EB8()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[6] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_100012FA8;
  v6 = v0[4];
  v5 = v0[5];

  return withCheckedContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD000000000000026, 0x80000001000A5370, sub_100018800, v2, v6);
}

uint64_t sub_100012FA8()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_1000130C0, 0, 0);
}

uint64_t sub_1000130C0()
{
  v1 = *(v0 + 68);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  v5 = *v3;
  v6 = *(v3 + *(v2 + 64));
  sub_100017C10(v3 + *(v2 + 48), v4 + *(v0 + 64));
  *v4 = v5;
  *(v4 + v1) = v6;

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100013164(uint64_t a1, uint64_t a2)
{
  v2[101] = a2;
  v2[95] = a1;
  v3 = sub_10009D860();
  v2[107] = v3;
  v4 = *(v3 - 8);
  v2[108] = v4;
  v2[109] = *(v4 + 64);
  v2[110] = swift_task_alloc();

  return _swift_task_switch(sub_100013230, 0, 0);
}

uint64_t sub_100013230()
{
  v1 = v0[110];
  v2 = v0[109];
  v3 = v0[108];
  v4 = v0[107];
  (*(v3 + 16))(v1, v0[101], v4);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[111] = v6;
  (*(v3 + 32))(v6 + v5, v1, v4);
  sub_100003714(&qword_1000CA478, &qword_1000A03E0);
  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 2, v0 + 87, sub_100013358, v0 + 82);
}

uint64_t sub_100013374()
{
  v1 = v0[87];
  v2 = v0[88];
  v3 = v0[89];
  v4 = v0[90];
  v0[112] = v4;
  v5 = v0[91];
  v0[113] = v5;
  v6 = v0[94];
  v0[114] = v6;
  if (v6 || !v1)
  {
    v9 = v6;

    v10 = sub_1000135CC;
    v11 = v0 + 2;
    v12 = v0 + 87;
    v13 = v0 + 96;
    goto LABEL_11;
  }

  if (v3)
  {
    if (v5)
    {
      swift_bridgeObjectRetain_n();
      v7 = v1;

      v21._object = 0x80000001000A4850;
      v21._countAndFlagsBits = 0xD000000000000017;
      v8 = sub_10009DE40(v21);

      if (v8)
      {
        v4 = v2;
        v5 = v3;
      }

      goto LABEL_10;
    }
  }

  else
  {
  }

  v14 = v1;
LABEL_10:
  v0[116] = v5;
  v0[115] = v4;
  v15 = [objc_opt_self() localizedStringFromPersonNameComponents:v1 style:2 options:0];
  v16 = sub_10009DD90();
  v18 = v17;

  v0[117] = v16;
  v0[118] = v18;
  v10 = sub_100013514;
  v11 = v0 + 2;
  v12 = v0 + 87;
  v13 = v0 + 102;
LABEL_11:

  return _swift_asyncLet_finish(v11, v12, v10, v13);
}

uint64_t sub_100013530()
{
  v7 = *(v0 + 920);
  v8 = *(v0 + 936);
  v1 = *(v0 + 912);
  v2 = *(v0 + 888);
  v3 = *(v0 + 880);
  v4 = *(v0 + 760);

  *v4 = v8;
  *(v4 + 16) = v7;
  *(v4 + 32) = v1;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000135E8()
{
  v7 = *(v0 + 896);
  v1 = *(v0 + 912);
  v2 = *(v0 + 888);
  v3 = *(v0 + 880);
  v4 = *(v0 + 760);

  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = v7;
  *(v4 + 32) = v1;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10001367C(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return _swift_task_switch(sub_10001369C, 0, 0);
}

uint64_t sub_10001369C()
{
  v1 = v0[11];
  v2 = swift_task_alloc();
  v0[12] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[13] = v4;
  v5 = sub_100003714(&qword_1000CA478, &qword_1000A03E0);
  *v4 = v0;
  v4[1] = sub_1000137A4;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD00000000000003ALL, 0x80000001000A5410, sub_100018C4C, v2, v5);
}

uint64_t sub_1000137A4()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return _swift_task_switch(sub_1000138BC, 0, 0);
}

uint64_t sub_1000138BC()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  v4 = *(v0 + 64);
  *v1 = *(v0 + 16);
  v1[1] = v2;
  v1[2] = v3;
  v1[3] = v4;
  return (*(v0 + 8))();
}

uint64_t sub_100013908()
{
  sub_100003714(&qword_1000CA450, &qword_1000A03A8);
  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 16, v0 + 696, sub_1000139AC, v0 + 656);
}

uint64_t sub_1000139C8()
{
  v1 = v0[87];
  v0[92] = v0[88];
  v0[93] = v0[89];
  v2 = v0[90];
  v0[94] = v2;
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = v1 == 0;
  }

  if (v3)
  {
    v4 = v2;

    v11 = sub_100013B38;
  }

  else
  {
    v5 = objc_opt_self();

    v6 = v1;
    v7 = [v5 localizedStringFromPersonNameComponents:v6 style:2 options:0];
    v8 = sub_10009DD90();
    v10 = v9;

    v0[95] = v8;
    v0[96] = v10;
    v11 = sub_100013AE8;
  }

  return _swift_asyncLet_finish(v0 + 2, v0 + 87, v11, v0 + 82);
}

uint64_t sub_100013B04()
{
  v1 = *(v0 + 768);
  v2 = *(v0 + 752);
  v3 = *(v0 + 728);
  v4 = *(v0 + 736);
  *v3 = *(v0 + 760);
  *(v3 + 8) = v1;
  *(v3 + 16) = v4;
  *(v3 + 32) = v2;
  return (*(v0 + 8))();
}

uint64_t sub_100013B54()
{
  v1 = *(v0 + 752);
  v2 = *(v0 + 728);
  v3 = *(v0 + 736);
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = v3;
  *(v2 + 32) = v1;
  return (*(v0 + 8))();
}

uint64_t sub_100013B80(uint64_t a1)
{
  *(v1 + 48) = a1;
  v2 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v3 = swift_task_alloc();
  *(v1 + 56) = v3;
  v4 = sub_100003714(&qword_1000CA458, &qword_1000A03B0);
  *v3 = v1;
  v3[1] = sub_100013C6C;

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 16, 0, 0, 0xD000000000000030, 0x80000001000A53D0, sub_1000171AC, 0, v4);
}

uint64_t sub_100013C6C()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return _swift_task_switch(sub_100013D68, 0, 0);
}

uint64_t sub_100013D68()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  *v1 = *(v0 + 16);
  v1[1] = v2;
  return (*(v0 + 8))();
}

uint64_t sub_100013D8C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v3 = sub_100003714(&qword_1000CA420, &unk_1000A0310);
  *(v2 + 32) = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  *(v2 + 40) = swift_task_alloc();
  *(v2 + 64) = *(v3 + 48);

  return _swift_task_switch(sub_100013E3C, 0, 0);
}

uint64_t sub_100013E3C()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[6] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_100013F2C;
  v6 = v0[4];
  v5 = v0[5];

  return withCheckedContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD00000000000001FLL, 0x80000001000A5200, sub_100017C08, v2, v6);
}

uint64_t sub_100013F2C()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_100014044, 0, 0);
}

uint64_t sub_100014044()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 16);
  v3 = *(*(v0 + 40) + *(*(v0 + 32) + 48));
  sub_100017C10(*(v0 + 40), v2);
  *(v2 + v1) = v3;

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000140D4(uint64_t a1, char a2)
{
  *(v2 + 1704) = a2;
  *(v2 + 1336) = a1;
  v3 = sub_10009D9F0();
  *(v2 + 1384) = v3;
  v4 = *(v3 - 8);
  *(v2 + 1432) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 1480) = swift_task_alloc();
  *(v2 + 1528) = swift_task_alloc();
  v6 = sub_10009D860();
  *(v2 + 1576) = v6;
  v7 = *(v6 - 8);
  *(v2 + 1624) = v7;
  *(v2 + 1632) = *(v7 + 64);
  *(v2 + 1640) = swift_task_alloc();
  *(v2 + 1648) = swift_task_alloc();

  return _swift_task_switch(sub_100014214, 0, 0);
}

uint64_t sub_100014214()
{
  v1 = *(v0 + 1648);
  v2 = *(v0 + 1632);
  v3 = *(v0 + 1624);
  v4 = *(v0 + 1576);
  v5 = *(v0 + 1704);
  v26 = *(v3 + 16);
  v26(v1, *(v0 + 1336), v4);
  v6 = *(v3 + 80);
  v7 = swift_allocObject();
  *(v0 + 1656) = v7;
  v25 = *(v3 + 32);
  v25(v7 + ((v6 + 16) & ~v6), v1, v4);
  swift_asyncLet_begin();
  if (v5)
  {
    *(v0 + 1680) = 0u;
    v9 = sub_100014538;
    v10 = v0 + 16;
    v11 = v0 + 1488;
  }

  else
  {
    v12 = *(v0 + 1528);
    sub_10009D9D0();
    v13 = sub_10009D9E0();
    v14 = sub_10009DFF0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "isForcedFolderSharing is false, so call doBRSharingRunCleanFolder", v15, 2u);
    }

    v16 = *(v0 + 1640);
    v17 = *(v0 + 1576);
    v18 = *(v0 + 1528);
    v19 = v13;
    v20 = *(v0 + 1432);
    v21 = *(v0 + 1384);
    v22 = *(v0 + 1336);

    (*(v20 + 8))(v18, v21);
    v26(v16, v22, v17);
    v23 = swift_allocObject();
    *(v0 + 1664) = v23;
    v25(v23 + ((v6 + 16) & ~v6), v16, v17);
    swift_asyncLet_begin();
    v9 = sub_1000144A4;
    v10 = v0 + 656;
    v11 = v0 + 1296;
  }

  return _swift_asyncLet_get_throwing(v10, v8, v9, v11);
}

uint64_t sub_1000144A4(uint64_t a1, uint64_t a2)
{
  *(v3 + 1672) = v2;
  if (v2)
  {
    v4 = sub_10001464C;
    v5 = v3 + 656;
    v6 = v3 + 1344;
  }

  else
  {
    v4 = sub_1000144E4;
    v5 = v3 + 656;
    v6 = v3 + 1440;
  }

  return _swift_asyncLet_finish(v5, a2, v4, v6);
}

uint64_t sub_100014500(uint64_t a1, uint64_t a2)
{
  v2[211] = v2[208];
  v2[210] = &unk_1000A0360;
  return _swift_asyncLet_get_throwing(v2 + 2, a2, sub_100014538, v2 + 186);
}

uint64_t sub_100014538(uint64_t a1, uint64_t a2)
{
  *(v3 + 1696) = v2;
  if (v2)
  {
    v4 = sub_1000148E8;
    v5 = v3 + 16;
    v6 = v3 + 1536;
  }

  else
  {
    v4 = sub_100014578;
    v5 = v3 + 16;
    v6 = v3 + 1584;
  }

  return _swift_asyncLet_finish(v5, a2, v4, v6);
}

uint64_t sub_100014594()
{
  v1 = v0[211];
  v2 = v0[210];
  v3 = v0[207];
  v4 = v0[206];
  v5 = v0[205];
  v6 = v0[191];
  v7 = v0[185];

  sub_1000186F4(v2);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000146A0()
{
  v1 = v0[209];
  v19 = v0[208];
  v2 = v0[185];
  sub_10009D9D0();
  swift_errorRetain();
  v3 = sub_10009D9E0();
  v4 = sub_10009DFD0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "runFolderSharingPrepOperations clean or prep error: %@", v5, 0xCu);
    sub_100008728(v6, &qword_1000CA8E0, &qword_10009FE08);
  }

  v8 = v0[207];
  v9 = v0[206];
  v10 = v0[205];
  v11 = v0[191];
  v12 = v0[185];
  v13 = v0[179];
  v14 = v0[173];

  (*(v13 + 8))(v12, v14);
  v15 = sub_10009D7A0();
  sub_100005B1C();
  swift_allocError();
  *v16 = 0xD000000000000041;
  *(v16 + 8) = 0x80000001000A52B0;
  *(v16 + 24) = 0;
  *(v16 + 32) = 0;
  *(v16 + 16) = v15;
  *(v16 + 40) = 3;
  swift_willThrow();

  sub_1000186F4(&unk_1000A0360);

  v17 = v0[1];

  return v17();
}

uint64_t sub_100014904()
{
  v1 = v0[212];
  v19 = v0[210];
  v20 = v0[211];
  v2 = v0[185];
  sub_10009D9D0();
  swift_errorRetain();
  v3 = sub_10009D9E0();
  v4 = sub_10009DFD0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "runFolderSharingPrepOperations clean or prep error: %@", v5, 0xCu);
    sub_100008728(v6, &qword_1000CA8E0, &qword_10009FE08);
  }

  v8 = v0[207];
  v9 = v0[206];
  v10 = v0[205];
  v11 = v0[191];
  v12 = v0[185];
  v13 = v0[179];
  v14 = v0[173];

  (*(v13 + 8))(v12, v14);
  v15 = sub_10009D7A0();
  sub_100005B1C();
  swift_allocError();
  *v16 = 0xD000000000000041;
  *(v16 + 8) = 0x80000001000A52B0;
  *(v16 + 24) = 0;
  *(v16 + 32) = 0;
  *(v16 + 16) = v15;
  *(v16 + 40) = 3;
  swift_willThrow();

  sub_1000186F4(v19);

  v17 = v0[1];

  return v17();
}

uint64_t sub_100014B58()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_100014C4C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)();
}

uint64_t sub_100014C4C()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v4 = sub_100018F48;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_100018F24;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100014D88()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = 1;
  v3 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_100014E80;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)();
}

uint64_t sub_100014E80()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v4 = sub_100014FB4;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_100014F9C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100014FB4()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

void sub_100015018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a1;
  v28 = sub_100003714(&qword_1000CA440, &qword_1000A0370);
  v26 = *(v28 - 8);
  v5 = *(v26 + 64);
  __chkstk_darwin(v28);
  v7 = &v24[-v6];
  v8 = sub_10009D860();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v24[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = sub_10009D830();
  v12 = objc_allocWithZone(BRShareUnshareOperation);
  sub_10009D800(v13);
  v15 = v14;
  v16 = [v12 initWithShare:a3 fileURL:v14];

  if (v16)
  {
    [v16 setQualityOfService:25];
    (*(v9 + 16))(&v24[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v8);
    v17 = v26;
    v18 = v28;
    (*(v26 + 16))(v7, v27, v28);
    v19 = v16;
    v20 = (*(v9 + 80) + 17) & ~*(v9 + 80);
    v21 = (v10 + *(v17 + 80) + v20) & ~*(v17 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = v25;
    (*(v9 + 32))(v22 + v20, v11, v8);
    (*(v17 + 32))(v22 + v21, v7, v18);
    aBlock[4] = sub_100018EF4;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000153A0;
    aBlock[3] = &unk_1000C2600;
    v23 = _Block_copy(aBlock);

    [v19 setUnshareCompletionBlock:v23];
    _Block_release(v23);
    if (qword_1000C9DD0 != -1)
    {
      swift_once();
    }

    [qword_1000CA418 addOperation:v19];
  }

  else
  {
    aBlock[0] = [objc_allocWithZone(NSError) initWithDomain:BRCloudDocsErrorDomain code:80 userInfo:0];
    sub_10009DEE0();
  }
}

void sub_1000153A0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_10001540C(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v27 = sub_100003714(&qword_1000CA440, &qword_1000A0370);
  v3 = *(v27 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v27);
  v6 = &v24 - v5;
  v7 = sub_10009D860();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10009D830();
  v11 = objc_allocWithZone(BRSharePrepFolderForSharing);
  sub_10009D800(v12);
  v14 = v13;
  v15 = [v11 initWithURL:v13];

  if (v15)
  {
    [v15 setQualityOfService:25];
    (*(v8 + 16))(&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v7);
    v24 = v15;
    v16 = v3;
    v17 = *(v3 + 16);
    v18 = v27;
    v17(v6, v26, v27);
    v19 = (*(v8 + 80) + 17) & ~*(v8 + 80);
    v20 = (v9 + *(v16 + 80) + v19) & ~*(v16 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = v25;
    (*(v8 + 32))(v21 + v19, v10, v7);
    (*(v16 + 32))(v21 + v20, v6, v18);
    v22 = v24;
    aBlock[4] = sub_100018F44;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000153A0;
    aBlock[3] = &unk_1000C2448;
    v23 = _Block_copy(aBlock);

    [v22 setPrepFolderSharingCompletionBlock:v23];
    _Block_release(v23);
    if (qword_1000C9DD0 != -1)
    {
      swift_once();
    }

    [qword_1000CA418 addOperation:v22];
  }

  else
  {
    aBlock[0] = [objc_allocWithZone(NSError) initWithDomain:BRCloudDocsErrorDomain code:80 userInfo:0];
    sub_10009DEE0();
  }
}

void sub_10001578C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v26 = sub_100003714(&qword_1000CA440, &qword_1000A0370);
  v5 = *(v26 - 8);
  v24 = *(v5 + 64);
  __chkstk_darwin(v26);
  v7 = &v22[-v6];
  v8 = sub_10009D860();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = sub_10009D830();
  v12 = objc_allocWithZone(BRShareProcessSubitems);
  sub_10009D800(v13);
  v15 = v14;
  v16 = [v12 initWithURL:v14 processType:a3];

  if (v16)
  {
    [v16 setQualityOfService:25];
    [v16 setMaxSharedSubitemsBeforeFailure:4];
    (*(v9 + 16))(&v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v8);
    v17 = v26;
    (*(v5 + 16))(v7, v25, v26);
    v18 = (*(v9 + 80) + 17) & ~*(v9 + 80);
    v19 = (v10 + *(v5 + 80) + v18) & ~*(v5 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = v23;
    (*(v9 + 32))(v20 + v18, v11, v8);
    (*(v5 + 32))(v20 + v19, v7, v17);
    aBlock[4] = sub_100018F44;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000153A0;
    aBlock[3] = &unk_1000C2498;
    v21 = _Block_copy(aBlock);

    [v16 setProcessSubitemsCompletionBlock:v21];
    _Block_release(v21);
    if (qword_1000C9DD0 != -1)
    {
      swift_once();
    }

    [qword_1000CA418 addOperation:v16];
  }

  else
  {
    aBlock[0] = [objc_allocWithZone(NSError) initWithDomain:BRCloudDocsErrorDomain code:80 userInfo:0];
    sub_10009DEE0();
  }
}

uint64_t sub_100015B20(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    sub_10009D810();
    a1 = v2;
  }

  if (a1)
  {
    swift_errorRetain();
    sub_100003714(&qword_1000CA440, &qword_1000A0370);
    return sub_10009DEE0();
  }

  else
  {
    sub_100003714(&qword_1000CA440, &qword_1000A0370);
    return sub_10009DEF0();
  }
}

void sub_100015BB8(uint64_t a1, uint64_t a2, void *a3)
{
  v49 = a1;
  v5 = sub_100003714(&qword_1000CA438, &qword_1000A0338);
  v44 = *(v5 - 8);
  v42 = *(v44 + 64);
  (__chkstk_darwin)();
  v43 = &v38 - v6;
  v7 = sub_10009D9F0();
  v46 = *(v7 - 8);
  v47 = v7;
  v8 = *(v46 + 64);
  (__chkstk_darwin)();
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(sub_100003714(&qword_1000CA250, &qword_10009FDF8) - 8);
  v11 = *(v40 + 64);
  v12 = (__chkstk_darwin)();
  v41 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v15 = &v38 - v14;
  __chkstk_darwin(v13);
  v17 = &v38 - v16;
  v48 = a2;
  sub_100008658(a2, &v38 - v16, &qword_1000CA250, &qword_10009FDF8);
  v18 = sub_10009D860();
  v19 = *(v18 - 8);
  v45 = *(v19 + 48);
  if (v45(v17, 1, v18) == 1)
  {
    sub_100008728(v17, &qword_1000CA250, &qword_10009FDF8);
    v39 = 0;
  }

  else
  {
    v39 = sub_10009D830();
    (*(v19 + 8))(v17, v18);
  }

  sub_10009D9D0();
  v20 = a3;
  v21 = sub_10009D9E0();
  v22 = sub_10009DFF0();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v38 = v5;
    v24 = v23;
    *v23 = 67109120;
    *(v23 + 1) = [v20 allowsAccessRequests];

    _os_log_impl(&_mh_execute_header, v21, v22, "doBRSharingFileOrFolderSave about to save share with allowsAccessRequests: %{BOOL}d", v24, 8u);
    v5 = v38;
  }

  else
  {

    v21 = v20;
  }

  (*(v46 + 8))(v10, v47);
  v25 = v48;
  sub_100008658(v48, v15, &qword_1000CA250, &qword_10009FDF8);
  if (v45(v15, 1, v18) == 1)
  {
    v27 = 0;
  }

  else
  {
    sub_10009D800(v26);
    v27 = v28;
    (*(v19 + 8))(v15, v18);
  }

  v29 = [objc_allocWithZone(BRShareSaveOperation) initWithShare:v20 fileURL:v27];

  if (v29)
  {
    [v29 setQualityOfService:25];
    v30 = v41;
    sub_100008658(v25, v41, &qword_1000CA250, &qword_10009FDF8);
    v32 = v43;
    v31 = v44;
    (*(v44 + 16))(v43, v49, v5);
    v33 = (*(v40 + 80) + 17) & ~*(v40 + 80);
    v34 = (v11 + *(v31 + 80) + v33) & ~*(v31 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = v39;
    sub_100017C10(v30, v35 + v33);
    (*(v31 + 32))(v35 + v34, v32, v5);
    v54 = sub_1000183A8;
    v55 = v35;
    aBlock = _NSConcreteStackBlock;
    v51 = 1107296256;
    v52 = sub_100016360;
    v53 = &unk_1000C23A8;
    v36 = _Block_copy(&aBlock);

    [v29 setShareSaveCompletionBlock:v36];
    _Block_release(v36);
    if (qword_1000C9DD0 != -1)
    {
      swift_once();
    }

    [qword_1000CA418 addOperation:v29];
  }

  else
  {
    v37 = [objc_allocWithZone(NSError) initWithDomain:BRCloudDocsErrorDomain code:80 userInfo:0];
    aBlock = 0;
    v51 = v37;
    sub_10009DEF0();
  }
}

uint64_t sub_1000161D8(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = (*(*(sub_100003714(&qword_1000CA250, &qword_10009FDF8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = v16 - v9;
  if (a3)
  {
    sub_100008658(a4, v16 - v9, &qword_1000CA250, &qword_10009FDF8);
    v11 = sub_10009D860();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      sub_10009D810();
      (*(v12 + 8))(v10, v11);
      if (a2)
      {
        goto LABEL_5;
      }

LABEL_7:
      v13 = 0;
      goto LABEL_8;
    }

    sub_100008728(v10, &qword_1000CA250, &qword_10009FDF8);
  }

  if (!a2)
  {
    goto LABEL_7;
  }

LABEL_5:
  v13 = sub_10009D7A0();
LABEL_8:
  v16[0] = a1;
  v16[1] = v13;
  v14 = a1;
  sub_100003714(&qword_1000CA438, &qword_1000A0338);
  return sub_10009DEF0();
}

void sub_100016360(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_1000163EC(uint64_t a1, uint64_t a2)
{
  v38 = a1;
  v39 = sub_100003714(&qword_1000CA448, &qword_1000A0388);
  v37 = *(v39 - 8);
  v3 = *(v37 + 64);
  __chkstk_darwin(v39);
  v36 = &v33[-v4];
  v5 = sub_10009D860();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v35 = v8;
  v9 = &v33[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_100003714(&unk_1000CA240, &qword_1000A0380);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v33[-v12];
  v14 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v33[-v16];
  v34 = sub_10009D830();
  v18 = objc_allocWithZone(BRShareCopyOperation);
  sub_10009D800(v19);
  v21 = v20;
  v22 = [v18 initWithURL:v20];

  if (v22)
  {
    [v22 setQualityOfService:25];
    (*(v6 + 16))(v9, a2, v5);
    v23 = v37;
    v24 = v36;
    v25 = v39;
    (*(v37 + 16))(v36, v38, v39);
    v26 = (*(v6 + 80) + 17) & ~*(v6 + 80);
    v27 = (v35 + *(v23 + 80) + v26) & ~*(v23 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = v34;
    (*(v6 + 32))(v28 + v26, v9, v5);
    (*(v23 + 32))(v28 + v27, v24, v25);
    aBlock[4] = sub_10001881C;
    aBlock[5] = v28;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000169CC;
    aBlock[3] = &unk_1000C24E8;
    v29 = _Block_copy(aBlock);

    [v22 setRootShareCopyCompletionBlock:v29];
    _Block_release(v29);
    if (qword_1000C9DD0 != -1)
    {
      swift_once();
    }

    [qword_1000CA418 addOperation:v22];
  }

  else
  {
    (*(v6 + 56))(v17, 1, 1, v5);
    v30 = [objc_allocWithZone(NSError) initWithDomain:BRCloudDocsErrorDomain code:80 userInfo:0];
    v31 = *(v10 + 48);
    v32 = *(v10 + 64);
    *v13 = 0;
    sub_100017C10(v17, v13 + v31);
    *(v13 + v32) = v30;
    sub_10009DEF0();
  }
}

uint64_t sub_100016854(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = sub_100003714(&unk_1000CA240, &qword_1000A0380);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v21 - v10);
  v12 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v21 - v14;
  if (a4)
  {
    sub_10009D810();
  }

  sub_100008658(a2, v15, &qword_1000CA250, &qword_10009FDF8);
  if (a3)
  {
    v16 = sub_10009D7A0();
  }

  else
  {
    v16 = 0;
  }

  v17 = *(v8 + 48);
  v18 = *(v8 + 64);
  *v11 = a1;
  sub_100017C10(v15, v11 + v17);
  *(v11 + v18) = v16;
  v19 = a1;
  sub_100003714(&qword_1000CA448, &qword_1000A0388);
  return sub_10009DEF0();
}

uint64_t sub_1000169CC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v19 - v10;
  v13 = *(a1 + 32);
  v12 = *(a1 + 40);
  if (a3)
  {
    sub_10009D820();
    v14 = sub_10009D860();
    (*(*(v14 - 8) + 56))(v11, 0, 1, v14);
  }

  else
  {
    v15 = sub_10009D860();
    (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  }

  v16 = a2;
  v17 = a4;
  v13(a2, v11, a4);

  return sub_100008728(v11, &qword_1000CA250, &qword_10009FDF8);
}

void sub_100016B40(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v3 = sub_100003714(&unk_1000CA480, &unk_1000A03E8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v20[-v6];
  v8 = sub_10009D860();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_10009D830();
  sub_10009D800(v12);
  v23 = v13;
  (*(v9 + 16))(v11, a2, v8);
  v14 = v3;
  (*(v4 + 16))(v7, v22, v3);
  v15 = (*(v9 + 80) + 17) & ~*(v9 + 80);
  v16 = (v10 + *(v4 + 80) + v15) & ~*(v4 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v21;
  (*(v9 + 32))(v17 + v15, v11, v8);
  (*(v4 + 32))(v17 + v16, v7, v14);
  aBlock[4] = sub_100018C68;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100016FA8;
  aBlock[3] = &unk_1000C25B0;
  v18 = _Block_copy(aBlock);

  v19 = v23;
  BRSharingCopyCurrentUserNameAndDisplayHandleForURL();
  _Block_release(v18);
}

uint64_t sub_100016DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v24 = a4;
  v25 = a6;
  v15 = sub_100003714(&qword_1000CA470, &qword_1000A03C0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v24 - v17;
  if (a9)
  {
    sub_10009D810();
  }

  sub_100008658(a1, v18, &qword_1000CA470, &qword_1000A03C0);
  v19 = sub_10009D720();
  v20 = *(v19 - 8);
  v21 = 0;
  if ((*(v20 + 48))(v18, 1, v19) != 1)
  {
    v21 = sub_10009D700();
    (*(v20 + 8))(v18, v19);
  }

  if (a8)
  {
    v22 = sub_10009D7A0();
  }

  else
  {
    v22 = 0;
  }

  v26 = v21;
  v27 = a2;
  v28 = a3;
  v29 = v24;
  v30 = a5;
  v31 = v25;
  v32 = a7;
  v33 = v22;

  sub_100003714(&unk_1000CA480, &unk_1000A03E8);
  return sub_10009DEF0();
}

uint64_t sub_100016FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = sub_100003714(&qword_1000CA470, &qword_1000A03C0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v28 - v14;
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v29 = v16;
  if (a2)
  {
    sub_10009D710();
    v18 = sub_10009D720();
    (*(*(v18 - 8) + 56))(v15, 0, 1, v18);
  }

  else
  {
    v19 = sub_10009D720();
    (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
  }

  if (a3)
  {
    v20 = sub_10009DD90();
    a3 = v21;
    if (a4)
    {
      goto LABEL_6;
    }

LABEL_9:
    v22 = 0;
    if (a5)
    {
      goto LABEL_7;
    }

LABEL_10:
    v24 = 0;
    goto LABEL_11;
  }

  v20 = 0;
  if (!a4)
  {
    goto LABEL_9;
  }

LABEL_6:
  v22 = sub_10009DD90();
  a4 = v23;
  if (!a5)
  {
    goto LABEL_10;
  }

LABEL_7:
  v24 = sub_10009DD90();
  a5 = v25;
LABEL_11:

  v26 = a6;
  v29(v15, v20, a3, v22, a4, v24, a5, a6);

  return sub_100008728(v15, &qword_1000CA470, &qword_1000A03C0);
}

void sub_1000171AC(uint64_t a1)
{
  v2 = sub_100003714(&qword_1000CA460, &qword_1000A03B8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = aBlock - v5;
  sub_1000037C4(0, &qword_1000CA468, OS_dispatch_queue_ptr);
  v7 = sub_10009E030();
  (*(v3 + 16))(v6, a1, v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v6, v2);
  aBlock[4] = sub_100018A44;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000174F8;
  aBlock[3] = &unk_1000C2538;
  v10 = _Block_copy(aBlock);

  BRSharingCopyCurrentUserNameAndDisplayHandle();
  _Block_release(v10);
}

uint64_t sub_100017378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100003714(&qword_1000CA470, &qword_1000A03C0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v17 - v10;
  sub_100008658(a1, v17 - v10, &qword_1000CA470, &qword_1000A03C0);
  v12 = sub_10009D720();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    v14 = sub_10009D700();
    (*(v13 + 8))(v11, v12);
  }

  if (a4)
  {
    v15 = sub_10009D7A0();
  }

  else
  {
    v15 = 0;
  }

  v17[0] = v14;
  v17[1] = a2;
  v17[2] = a3;
  v17[3] = v15;

  sub_100003714(&qword_1000CA460, &qword_1000A03B8);
  return sub_10009DEF0();
}

uint64_t sub_1000174F8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_100003714(&qword_1000CA470, &qword_1000A03C0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v20 - v10;
  v13 = *(a1 + 32);
  v12 = *(a1 + 40);
  if (a2)
  {
    sub_10009D710();
    v14 = sub_10009D720();
    (*(*(v14 - 8) + 56))(v11, 0, 1, v14);
  }

  else
  {
    v15 = sub_10009D720();
    (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  }

  if (a3)
  {
    v16 = sub_10009DD90();
    a3 = v17;
  }

  else
  {
    v16 = 0;
  }

  v18 = a4;
  v13(v11, v16, a3, a4);

  return sub_100008728(v11, &qword_1000CA470, &qword_1000A03C0);
}

void sub_100017684(uint64_t a1, uint64_t a2)
{
  v52 = a1;
  v3 = sub_100003714(&qword_1000CA428, &qword_1000A0320);
  v51 = *(v3 - 8);
  v4 = *(v51 + 64);
  __chkstk_darwin(v3);
  v50 = &v43 - v5;
  v6 = sub_10009D860();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v48 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v9;
  v10 = sub_100003714(&qword_1000CA420, &unk_1000A0310);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v43 - v12;
  v14 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v43 - v16;
  v47 = sub_10009D830();
  sub_10009D800(v18);
  v20 = v19;
  aBlock[0] = 0;
  v21 = [v19 br_typeIdentifierWithError:aBlock];

  v22 = aBlock[0];
  if (v21)
  {
    v44 = v10;
    v45 = v4;
    v46 = v3;
    sub_10009DD90();
    v23 = v22;

    v24 = objc_allocWithZone(BRShareCopyShareURLOperation);
    sub_10009D800(v25);
    v27 = v26;
    v28 = sub_10009DD50();

    v29 = [v24 initWithFileURL:v27 documentType:v28];

    if (v29)
    {
      [v29 setQualityOfService:25];
      v30 = v48;
      (*(v7 + 16))(v48, a2, v6);
      v32 = v50;
      v31 = v51;
      v33 = v46;
      (*(v51 + 16))(v50, v52, v46);
      v34 = (*(v7 + 80) + 17) & ~*(v7 + 80);
      v35 = (v49 + *(v31 + 80) + v34) & ~*(v31 + 80);
      v36 = swift_allocObject();
      v36[16] = v47;
      (*(v7 + 32))(&v36[v34], v30, v6);
      (*(v31 + 32))(&v36[v35], v32, v33);
      aBlock[4] = sub_100017DF4;
      aBlock[5] = v36;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100017EE8;
      aBlock[3] = &unk_1000C2358;
      v37 = _Block_copy(aBlock);

      [v29 setCopyShareURLCompletionBlock:v37];
      _Block_release(v37);
      if (qword_1000C9DD0 != -1)
      {
        swift_once();
      }

      [qword_1000CA418 addOperation:v29];
    }

    else
    {
      (*(v7 + 56))(v17, 1, 1, v6);
      v41 = [objc_allocWithZone(NSError) initWithDomain:BRCloudDocsErrorDomain code:80 userInfo:0];
      v42 = *(v44 + 48);
      sub_100017C10(v17, v13);
      *&v13[v42] = v41;
      sub_10009DEF0();
    }
  }

  else
  {
    v38 = aBlock[0];
    sub_10009D7B0();

    swift_willThrow();
    (*(v7 + 56))(v17, 1, 1, v6);
    v39 = sub_10009D7A0();
    v40 = *(v10 + 48);
    sub_100017C10(v17, v13);
    *&v13[v40] = v39;
    sub_10009DEF0();
  }
}

uint64_t sub_100017C10(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100017C80(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_100003714(&qword_1000CA420, &unk_1000A0310);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v17 - v8;
  v10 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v17 - v12;
  if (a3)
  {
    sub_10009D810();
  }

  sub_100008658(a1, v13, &qword_1000CA250, &qword_10009FDF8);
  if (a2)
  {
    v14 = sub_10009D7A0();
  }

  else
  {
    v14 = 0;
  }

  v15 = *(v6 + 48);
  sub_100017C10(v13, v9);
  *&v9[v15] = v14;
  sub_100003714(&qword_1000CA428, &qword_1000A0320);
  return sub_10009DEF0();
}

uint64_t sub_100017DF4(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_10009D860() - 8);
  v6 = ((*(v5 + 80) + 17) & ~*(v5 + 80)) + *(v5 + 64);
  v7 = *(*(sub_100003714(&qword_1000CA428, &qword_1000A0320) - 8) + 80);
  v8 = *(v2 + 16);

  return sub_100017C80(a1, a2, v8);
}

uint64_t sub_100017EE8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v16 - v8;
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  if (a2)
  {
    sub_10009D820();
    v12 = sub_10009D860();
    (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  }

  else
  {
    v13 = sub_10009D860();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  }

  v14 = a3;
  v11(v9, a3);

  return sub_100008728(v9, &qword_1000CA250, &qword_10009FDF8);
}

uint64_t sub_10001803C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100018054()
{
  v0 = objc_opt_self();
  if (![v0 mightHaveDataSeparatedAccountDescriptor])
  {
    return 0;
  }

  result = [v0 allLoggedInAccountDescriptors];
  if (!result)
  {
    return result;
  }

  v2 = result;
  sub_1000037C4(0, &qword_1000CA430, BRAccountDescriptor_ptr);
  v3 = sub_10009DEA0();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  v4 = sub_10009E260();
  if (!v4)
  {
LABEL_19:

    return 0;
  }

LABEL_5:
  v5 = 0;
  while (1)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = sub_10009E1F0();
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v6 = *(v3 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if ([v6 isDataSeparated])
    {
      break;
    }

    ++v5;
    if (v8 == v4)
    {
      goto LABEL_19;
    }
  }

  v9 = [v7 accountIdentifier];

  if (!v9)
  {
    return 0;
  }

  v10 = sub_10009DD90();

  return v10;
}

uint64_t sub_1000181F8()
{
  v1 = *(sub_100003714(&qword_1000CA250, &qword_10009FDF8) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 17) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_100003714(&qword_1000CA438, &qword_1000A0338);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = sub_10009D860();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3, 1, v9))
  {
    (*(v10 + 8))(v0 + v3, v9);
  }

  v11 = v2 | v7;
  v12 = (v3 + v4 + v7) & ~v7;
  (*(v6 + 8))(v0 + v12, v5);

  return _swift_deallocObject(v0, v12 + v8, v11 | 7);
}

uint64_t sub_1000183A8(void *a1, uint64_t a2)
{
  v5 = *(sub_100003714(&qword_1000CA250, &qword_10009FDF8) - 8);
  v6 = (*(v5 + 80) + 17) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_100003714(&qword_1000CA438, &qword_1000A0338) - 8);
  v9 = *(v2 + 16);
  v10 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_1000161D8(a1, a2, v9, v2 + v6);
}

id sub_1000184A8()
{
  sub_10009D800(__stack_chk_guard);
  v1 = v0;
  v2 = BRSharingCreateShareForItemAtURL();

  if (!v2)
  {
    v3 = 0;
  }

  return v2;
}

uint64_t sub_10001853C(uint64_t a1)
{
  v4 = *(sub_10009D860() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000093DC;

  return sub_100014B38(a1, v1 + v5);
}

uint64_t sub_100018618(uint64_t a1)
{
  v4 = *(sub_10009D860() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000841C;

  return sub_100014D68(a1, v1 + v5);
}

uint64_t sub_1000186F4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100018728(uint64_t a1)
{
  v3 = *(sub_10009D860() - 8);
  v4 = ((*(v3 + 80) + 17) & ~*(v3 + 80)) + *(v3 + 64);
  v5 = *(*(sub_100003714(&qword_1000CA440, &qword_1000A0370) - 8) + 80);
  return sub_100015B20(a1, *(v1 + 16));
}

uint64_t sub_10001881C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_10009D860() - 8);
  v8 = ((*(v7 + 80) + 17) & ~*(v7 + 80)) + *(v7 + 64);
  v9 = *(*(sub_100003714(&qword_1000CA448, &qword_1000A0388) - 8) + 80);
  v10 = *(v3 + 16);

  return sub_100016854(a1, a2, a3, v10);
}

uint64_t sub_100018918(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000093DC;

  return sub_100013B80(a1);
}

uint64_t sub_1000189B0()
{
  v1 = sub_100003714(&qword_1000CA460, &qword_1000A03B8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100018A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(sub_100003714(&qword_1000CA460, &qword_1000A03B8) - 8) + 80);

  return sub_100017378(a1, a2, a3, a4);
}

uint64_t sub_100018AE8()
{
  v1 = sub_10009D860();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100018B70(uint64_t a1)
{
  v4 = *(sub_10009D860() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000093DC;

  return sub_10001367C(a1, v1 + v5);
}

uint64_t sub_100018C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *(sub_10009D860() - 8);
  v17 = ((*(v16 + 80) + 17) & ~*(v16 + 80)) + *(v16 + 64);
  v18 = *(sub_100003714(&unk_1000CA480, &unk_1000A03E8) - 8);
  v20 = v8 + ((v17 + *(v18 + 80)) & ~*(v18 + 80));
  return sub_100016DE4(a1, a2, a3, a4, a5, a6, a7, a8, *(v8 + 16));
}

uint64_t sub_100018DA0(uint64_t *a1, uint64_t *a2)
{
  v5 = sub_10009D860();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + 17) & ~v7;
  v9 = *(v6 + 64);
  v10 = sub_100003714(a1, a2);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = (v8 + v9 + v12) & ~v12;
  v14 = *(v11 + 64);
  v15 = v7 | v12;
  (*(v6 + 8))(v2 + v8, v5);
  (*(v11 + 8))(v2 + v13, v10);

  return _swift_deallocObject(v2, v13 + v14, v15 | 7);
}

uint64_t sub_100018F60(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v39 - v9;
  v11 = sub_10009D860();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  v16 = v40;
  if (v40 > 4u)
  {
    if (v40 <= 6u)
    {
      if (v40 == 5)
      {
        if (!*(a1 + 16))
        {
          goto LABEL_25;
        }

        v17 = 11;
        goto LABEL_24;
      }

      goto LABEL_22;
    }

    if (v40 == 7 || v40 == 8)
    {
      goto LABEL_22;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10009DAF0();

    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      (*(v12 + 32))(v15, v10, v11);
      v27 = *(v2 + 24);
      swift_getKeyPath();
      swift_getKeyPath();

      sub_10009DAF0();

      v28 = v39;
      v29 = sub_1000959C0(v15, v39);
      v31 = v30;

      (*(v12 + 16))(v8, v15, v11);
      (*(v12 + 56))(v8, 0, 1, v11);
      LOBYTE(v28) = sub_100096298(v29, v31, v8);

      sub_100008728(v8, &qword_1000CA250, &qword_10009FDF8);
      v32 = *(a1 + 16);
      switch(v28)
      {
        case 1:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 1;
          break;
        case 2:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 2;
          break;
        case 3:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 3;
          break;
        case 4:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 4;
          break;
        case 5:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 5;
          break;
        case 6:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 6;
          break;
        case 7:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 7;
          break;
        case 8:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 8;
          break;
        case 9:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 9;
          break;
        case 10:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 10;
          break;
        case 11:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 11;
          break;
        case 12:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 12;
          break;
        case 13:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 13;
          break;
        default:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 0;
          break;
      }

      v34 = sub_100030D4C(v33);
      if (v35)
      {
        v36 = (*(a1 + 56) + 16 * v34);
        v24 = *v36;
        v37 = v36[1];
        v38 = *(v12 + 8);

        v38(v15, v11);
        return v24;
      }

LABEL_64:
      (*(v12 + 8))(v15, v11);
      goto LABEL_25;
    }

    sub_100008728(v10, &qword_1000CA250, &qword_10009FDF8);
    if (!*(a1 + 16))
    {
      goto LABEL_67;
    }

    v18 = sub_100030D4C(1);
    if (v19)
    {
      goto LABEL_27;
    }

    if (!*(a1 + 16))
    {
      goto LABEL_67;
    }

    v18 = sub_100030D4C(13);
    if (v20)
    {
      goto LABEL_27;
    }

    __break(1u);
LABEL_16:
    if (v16)
    {
      if (!*(a1 + 16))
      {
        goto LABEL_25;
      }

      v17 = 7;
      goto LABEL_24;
    }

LABEL_22:
    if (!*(a1 + 16))
    {
      goto LABEL_25;
    }

    v17 = 13;
    goto LABEL_24;
  }

  if (v40 <= 1u)
  {
    goto LABEL_16;
  }

  if (v40 == 2)
  {
    if (!*(a1 + 16))
    {
      goto LABEL_25;
    }

    v17 = 8;
  }

  else
  {
    if (v40 == 3)
    {
      if (*(a1 + 16))
      {
        v17 = 9;
        goto LABEL_24;
      }

LABEL_25:
      if (*(a1 + 16))
      {
        v18 = sub_100030D4C(13);
        if (v22)
        {
          goto LABEL_27;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_67:
      __break(1u);
      JUMPOUT(0x100019498);
    }

    if (!*(a1 + 16))
    {
      goto LABEL_25;
    }

    v17 = 10;
  }

LABEL_24:
  v18 = sub_100030D4C(v17);
  if ((v21 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_27:
  v23 = (*(a1 + 56) + 16 * v18);
  v24 = *v23;
  v25 = v23[1];

  return v24;
}

uint64_t sub_1000194F8()
{
  v1 = v0;
  v2 = sub_10009D9F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  else
  {
    sub_10009D9D0();
    v7 = sub_10009D9E0();
    v8 = sub_10009DFF0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "ext computed property--extensionController is nil--will assert", v9, 2u);
    }

    (*(v3 + 8))(v6, v2);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(v1 + 48);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100019674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a1;
  v9 = sub_100003714(&qword_1000CAD50, &qword_1000A0EF8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v13 = &v23 - v12;
  v14 = sub_100003714(&qword_1000CA8F0, &qword_1000A09C8);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v23 - v16;
  v18 = sub_10009DF40();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  sub_100008658(a5, v13, &qword_1000CAD50, &qword_1000A0EF8);
  v19 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = a3;
  v20[5] = a4;
  sub_1000086C0(v13, v20 + v19, &qword_1000CAD50, &qword_1000A0EF8);
  v21 = (v20 + ((v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v21 = v24;
  v21[1] = a2;

  sub_100019B10(0, 0, v17, &unk_1000A0F08, v20);
}

uint64_t sub_100019884(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a7;
  v8[4] = a8;
  v13 = (a4 + *a4);
  v10 = a4[1];
  v11 = swift_task_alloc();
  v8[5] = v11;
  *v11 = v8;
  v11[1] = sub_100019988;

  return (v13)(v8 + 2, a6);
}

uint64_t sub_100019988()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return _swift_task_switch(sub_100019A84, 0, 0);
}

uint64_t sub_100019A84()
{
  v8 = v0;
  v2 = v0[3];
  v1 = v0[4];
  v6 = v0[2];
  v7 = 0;
  v3 = v6;
  v2(&v6);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100019B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003714(&qword_1000CA8F0, &qword_1000A09C8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100008658(a3, v27 - v11, &qword_1000CA8F0, &qword_1000A09C8);
  v13 = sub_10009DF40();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100008728(v12, &qword_1000CA8F0, &qword_1000A09C8);
  }

  else
  {
    sub_10009DF30();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_10009DED0();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_10009DDC0() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_100008728(a3, &qword_1000CA8F0, &qword_1000A09C8);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100008728(a3, &qword_1000CA8F0, &qword_1000A09C8);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

BOOL sub_100019E10()
{
  v1 = *(v0 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  if (!v6)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  if (!v5)
  {
    return 0;
  }

  v2 = *(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  return v4 != 0;
}

uint64_t sub_100019F64(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v68 = a2;
  v69 = a3;
  v10 = sub_10009D9F0();
  v11 = *(v10 - 8);
  v70 = v10;
  v71 = v11;
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v67 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v67 - v20;
  __chkstk_darwin(v19);
  v23 = &v67 - v22;
  v24 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = &v67 - v26;
  if ((a6 & 1) == 0)
  {
    return 8;
  }

  if (!a5)
  {
    sub_100008658(a1, &v67 - v26, &qword_1000CA250, &qword_10009FDF8);
    v46 = sub_10009D860();
    v47 = (*(*(v46 - 8) + 48))(v27, 1, v46);
    sub_100008728(v27, &qword_1000CA250, &qword_10009FDF8);
    if (v47 != 1)
    {
      return 9;
    }

    v48 = sub_10001A8A0();
    if ((v48 & 0xFE) != 8 && (v48 > 7u || ((1 << v48) & 0xC1) == 0))
    {
      v58 = v48;
      sub_10009D9D0();
      v59 = sub_10009D9E0();
      v60 = sub_10009DFF0();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v72[0] = v62;
        *v61 = 136315138;
        v63 = sub_100006ED0(v58);
        v65 = sub_1000307A4(v63, v64, v72);

        *(v61 + 4) = v65;
        _os_log_impl(&_mh_execute_header, v59, v60, "Combine for sharingType specific CK sharingType: %s.", v61, 0xCu);
        sub_10000670C(v62);
      }

      (*(v71 + 8))(v18, v70);
      return v58;
    }

    sub_10009D9D0();
    v49 = v69;

    v50 = sub_10009D9E0();
    v51 = sub_10009DFF0();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v72[1] = v49;
      v73 = v53;
      *v52 = 136315138;
      v54 = v68;
      v72[0] = v68;
      sub_100003714(&qword_1000CA6A0, &qword_10009FD50);
      v55 = sub_10009E140();
      v57 = sub_1000307A4(v55, v56, &v73);

      *(v52 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v50, v51, "Combine for sharingType sourceAppBundleID: %s.", v52, 0xCu);
      sub_10000670C(v53);

      (*(v71 + 8))(v15, v70);
      if (!v49)
      {
        return 0;
      }
    }

    else
    {

      (*(v71 + 8))(v15, v70);
      v54 = v68;
      if (!v49)
      {
        return 0;
      }
    }

    if (v54 == 0x6C7070612E6D6F63 && v49 == 0xEF7365746F4E2E65 || (sub_10009E2E0() & 1) != 0 || v54 == 0xD000000000000015 && 0x80000001000A66F0 == v49 || (sub_10009E2E0() & 1) != 0)
    {
      return 1;
    }

    if (v54 == 0xD000000000000013 && 0x80000001000A66D0 == v49 || (sub_10009E2E0() & 1) != 0)
    {
      return 3;
    }

    if (v54 == 0xD000000000000010 && 0x80000001000A66B0 == v49 || (sub_10009E2E0() & 1) != 0 || v54 == 0xD000000000000016 && 0x80000001000A6690 == v49 || (sub_10009E2E0() & 1) != 0)
    {
      return 4;
    }

    if (v54 == 0xD000000000000010 && 0x80000001000A6670 == v69 || (sub_10009E2E0() & 1) != 0 || v68 == 0xD000000000000012 && 0x80000001000A6650 == v69 || (sub_10009E2E0() & 1) != 0)
    {
      return 5;
    }

    v66 = HIBYTE(v69) & 0xF;
    if ((v69 & 0x2000000000000000) == 0)
    {
      v66 = v68 & 0xFFFFFFFFFFFFLL;
    }

    if (v66)
    {
      return 6;
    }

    return 0;
  }

  v28 = sub_100096298(a4, a5, a1);
  v29 = sub_100094C94(v28);
  if ((v29 & 0xFE) != 8 && (v29 == 7 || !v29) && v69)
  {
    v30 = HIBYTE(v69) & 0xF;
    if ((v69 & 0x2000000000000000) == 0)
    {
      v30 = v68 & 0xFFFFFFFFFFFFLL;
    }

    if (v30)
    {
      v31 = v29;
      sub_10009D9D0();

      v32 = sub_10009D9E0();
      v33 = sub_10009DFF0();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v72[0] = swift_slowAlloc();
        *v34 = 136315394;
        *(v34 + 4) = sub_1000307A4(a4, a5, v72);
        *(v34 + 12) = 2080;
        v35 = sub_100006ED0(v31);
        v37 = sub_1000307A4(v35, v36, v72);

        *(v34 + 14) = v37;
        _os_log_impl(&_mh_execute_header, v32, v33, "Combine for sharingType itemUTI: %s, sharingType: %s--return .other for unspecified.", v34, 0x16u);
        swift_arrayDestroy();
      }

      (*(v71 + 8))(v23, v70);
      return 6;
    }
  }

  v39 = v29;
  sub_10009D9D0();

  v40 = sub_10009D9E0();
  v41 = sub_10009DFF0();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v72[0] = swift_slowAlloc();
    *v42 = 136315394;
    *(v42 + 4) = sub_1000307A4(a4, a5, v72);
    *(v42 + 12) = 2080;
    v43 = sub_100006ED0(v39);
    v45 = sub_1000307A4(v43, v44, v72);

    *(v42 + 14) = v45;
    _os_log_impl(&_mh_execute_header, v40, v41, "Combine for sharingType itemUTI: %s, sharingType: %s.", v42, 0x16u);
    swift_arrayDestroy();
  }

  (*(v71 + 8))(v21, v70);
  return v39;
}

uint64_t sub_10001A8A0()
{
  v1 = sub_10009D9F0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v36 - v8;
  __chkstk_darwin(v7);
  v11 = &v36 - v10;
  v12 = *(v0 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  if (!v39[0])
  {
    sub_10009D9D0();
    v33 = sub_10009D9E0();
    v34 = sub_10009DFF0();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "ckSharingTypeFromShare on model--no CKShare yet so return .cloudKit(type: .other).", v35, 2u);
    }

    (*(v2 + 8))(v6, v1);
    return 6;
  }

  v13 = v39[0];
  sub_10009E0F0();
  v14 = sub_10009E100();

  if (!v14 || (v39[2] = v14, sub_100003714(&unk_1000CA270, &qword_10009FF68), (swift_dynamicCast() & 1) == 0))
  {
    sub_10009D9D0();
    v30 = sub_10009D9E0();
    v31 = sub_10009DFF0();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "ckSharingTypeFromShare on model--couldn't get a string from CKShare.shareType so return .cloudKit(type: .other).", v32, 2u);
    }

    else
    {
    }

    (*(v2 + 8))(v9, v1);
    return 6;
  }

  v15 = sub_1000951B4(v39[0], v39[1]);
  v17 = v16;

  sub_10009D9D0();

  v18 = sub_10009D9E0();
  v19 = sub_10009DFF0();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v37 = v20;
    v38 = swift_slowAlloc();
    v39[0] = v38;
    *v20 = 136315138;
    v21 = sub_100096888(v15, v17);
    v22 = sub_100094C94(v21);
    v23 = sub_100006ED0(v22);
    LOBYTE(v20) = v19;
    v25 = v15;
    v26 = sub_1000307A4(v23, v24, v39);

    v27 = v37;
    *(v37 + 1) = v26;
    v15 = v25;
    _os_log_impl(&_mh_execute_header, v18, v20, "ckSharingTypeFromShare on model--CKShare converts to: %s.", v27, 0xCu);
    sub_10000670C(v38);
  }

  (*(v2 + 8))(v11, v1);
  v28 = sub_100096888(v15, v17);

  return sub_100094C94(v28);
}

uint64_t sub_10001ACE0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, void, void, void, void, void)@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_100003714(&qword_1000CAD78, &qword_1000A11C8);
  result = a2(a1, *(a1 + v6[12]), *(a1 + v6[12] + 8), *(a1 + v6[16]), *(a1 + v6[16] + 8), *(a1 + v6[20]));
  *a3 = result;
  return result;
}

_BYTE *sub_10001AD58(_BYTE *result)
{
  if (*result == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_10009DB00();
  }

  return result;
}

_UNKNOWN **sub_10001ADDC(char a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return &off_1000C1870;
  }

  if (!a2)
  {

    return &off_1000C1870;
  }

  v5 = Strong;
  v6 = a2;
  v7 = [v6 participants];
  sub_1000037C4(0, &qword_1000CAD70, CKShareParticipant_ptr);
  v8 = sub_10009DEA0();

  v9 = *(v5 + 24);
  v10 = v6;

  sub_100098F14(a2);
  v27 = v11;

  if (v8 >> 62)
  {
    goto LABEL_54;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10009E260())
  {
    if (i)
    {
      v13 = 0;
      do
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v14 = sub_10009E1F0();
        }

        else
        {
          if (v13 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_51;
          }

          v14 = *(v8 + 8 * v13 + 32);
        }

        v15 = v14;
        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        if ([v14 role] != 1 && objc_msgSend(v15, "role") == 2 && objc_msgSend(v15, "permission") == 3)
        {
          sub_10009E210();
          v17 = _swiftEmptyArrayStorage[2];
          sub_10009E230();
          sub_10009E240();
          sub_10009E220();
        }

        else
        {
        }

        ++v13;
      }

      while (v16 != i);
      if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0)
      {
        goto LABEL_23;
      }
    }

    else if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0)
    {
LABEL_23:
      if ((_swiftEmptyArrayStorage & 0x4000000000000000) == 0)
      {
        v19 = _swiftEmptyArrayStorage[2];
        goto LABEL_25;
      }
    }

    v19 = sub_10009E260();
LABEL_25:

    if (!i)
    {
      break;
    }

    v26 = v19;
    v20 = 0;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v21 = sub_10009E1F0();
      }

      else
      {
        if (v20 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_53;
        }

        v21 = *(v8 + 8 * v20 + 32);
      }

      v22 = v21;
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if ([v21 role] == 1 || objc_msgSend(v22, "role") == 2 && objc_msgSend(v22, "permission") != 2)
      {
      }

      else
      {
        sub_10009E210();
        v24 = _swiftEmptyArrayStorage[2];
        sub_10009E230();
        sub_10009E240();
        sub_10009E220();
      }

      ++v20;
      if (v23 == i)
      {
        v19 = v26;
        goto LABEL_39;
      }
    }

LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    ;
  }

LABEL_39:

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    goto LABEL_57;
  }

  for (j = _swiftEmptyArrayStorage[2]; ; j = sub_10009E260())
  {

    if (!__OFSUB__(j, v27))
    {
      break;
    }

    __break(1u);
LABEL_57:
    ;
  }

  if (v19 <= 0)
  {

    return &off_1000C17D0;
  }

  else if (j - v27 < 1)
  {

    return &off_1000C1848;
  }

  else
  {

    if (a1 == 3)
    {
      return &off_1000C17F8;
    }

    else
    {
      return &off_1000C1820;
    }
  }
}

uint64_t sub_10001B1E8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_10009D9F0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v59 - v15;
  v17 = __chkstk_darwin(v14);
  v66 = &v59 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v59 - v20;
  __chkstk_darwin(v19);
  v23 = &v59 - v22;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = result;
    if (a1)
    {
      v60 = v13;
      v61 = v16;
      v63 = v9;
      v64 = v8;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10009DAF0();

      v62 = v67;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10009DAF0();

      v26 = v67;
      v27 = *(v25 + 24);
      swift_getKeyPath();
      swift_getKeyPath();

      sub_10009DAF0();

      v28 = v67;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10009DAF0();

      v29 = v67 == 1 && (a1 == 1) | v28 & 1 && v62 != 2 && v26 == 2;
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v67) = v29;

      sub_10009DB00();
      sub_10009D9D0();

      v30 = sub_10009D9E0();
      v31 = sub_10009DFF0();
      v32 = os_log_type_enabled(v30, v31);
      v65 = v25;
      v59 = a6;
      if (v32)
      {
        v33 = v62 == 2;
        v34 = swift_slowAlloc();
        *v34 = 67241216;
        *(v34 + 4) = 1;
        *(v34 + 8) = 1026;
        *(v34 + 10) = v33;
        *(v34 + 14) = 1026;
        *(v34 + 16) = v26 == 2;
        *(v34 + 20) = 1026;
        *(v34 + 22) = a1 == 1;
        *(v34 + 26) = 1026;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_10009DAF0();

        *(v34 + 28) = v67;

        _os_log_impl(&_mh_execute_header, v30, v31, "executionMode is set. appIsOKForCoOwners: %{BOOL,public}d, R/O: %{BOOL,public}d, private: %{BOOL,public}d, isPreShare: %{BOOL,public}d, allowCoOwnersEditing: %{BOOL,public}d", v34, 0x20u);
      }

      else
      {
      }

      v35 = v64;
      v36 = *(v63 + 8);
      v36(v23, v64);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10009DAF0();

      if (v67)
      {
        if (a1 != 1)
        {
          v37 = *(v65 + 24);
          swift_getKeyPath();
          swift_getKeyPath();

          sub_10009DAF0();

          v38 = v67;
          if (v67)
          {
            v39 = [v67 participants];
            sub_1000037C4(0, &qword_1000CAD70, CKShareParticipant_ptr);
            v40 = sub_10009DEA0();

            if (v40 >> 62)
            {
              v41 = sub_10009E260();
            }

            else
            {
              v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v42 = v61;

            if (v41 > 1)
            {
              sub_10009D9D0();
              v43 = sub_10009D9E0();
              v44 = sub_10009DFB0();
              if (os_log_type_enabled(v43, v44))
              {
                v45 = swift_slowAlloc();
                *v45 = 0;
                _os_log_impl(&_mh_execute_header, v43, v44, "Do allow co-owner editing with participants.", v45, 2u);
              }

              v36(v66, v35);
              v46 = *(v65 + 24);
              swift_getKeyPath();
              swift_getKeyPath();

              sub_10009DAF0();

              if (v67 == 1)
              {
                v47 = v59;
              }

              else
              {
                swift_getKeyPath();
                swift_getKeyPath();
                sub_10009DAF0();

                v47 = v67;
              }

              sub_100047B6C(v47);

              sub_10009D9D0();

              v56 = sub_10009D9E0();
              v57 = sub_10009DFF0();
              if (os_log_type_enabled(v56, v57))
              {
                v58 = swift_slowAlloc();
                *v58 = 67109120;
                *(v58 + 4) = sub_10004834C() & 1;

                _os_log_impl(&_mh_execute_header, v56, v57, "Setting newParticipantsCanBeCoOwners from CKShare state: %{BOOL}d.", v58, 8u);
                v42 = v61;
              }

              else
              {
              }

              v55 = v42;
              return (v36)(v55, v35);
            }
          }

          else
          {
          }

          v51 = v60;
          sub_10009D9D0();
          v52 = sub_10009D9E0();
          v53 = sub_10009DFB0();
          if (os_log_type_enabled(v52, v53))
          {
            v54 = swift_slowAlloc();
            *v54 = 0;
            _os_log_impl(&_mh_execute_header, v52, v53, "Do allow co-owner editing without participants.", v54, 2u);
          }

          else
          {
          }

          v55 = v51;
          return (v36)(v55, v35);
        }
      }

      else
      {
        sub_10009D9D0();
        v48 = sub_10009D9E0();
        v49 = sub_10009DFB0();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          *v50 = 0;
          _os_log_impl(&_mh_execute_header, v48, v49, "Do not allow co-owner editing. Updating state.", v50, 2u);
        }

        v36(v21, v35);
        sub_100047B6C(&off_1000C1898);
      }
    }
  }

  return result;
}

void sub_10001BB5C(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (v1)
    {
      v2 = v1;
      sub_10009E0F0();
      v3 = sub_10009E100();

      if (v3)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          sub_10009DD90();
          swift_getKeyPath();
          swift_getKeyPath();
          sub_10009DB00();

          swift_unknownObjectRelease();
          return;
        }

        swift_unknownObjectRelease();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_10009DB00();
    }

    else
    {
    }
  }
}

uint64_t sub_10001BCA0(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if (swift_unknownObjectWeakLoadStrong())
    {
      if (v1 == 8)
      {
LABEL_4:

        return swift_unknownObjectRelease();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_10009DAF0();

      if (v5 != 8)
      {
        if (v5 == 9)
        {
          if (v1 > 6)
          {
            goto LABEL_4;
          }

LABEL_16:
          if (v1 == 4)
          {
            v4 = *(v3 + 16);
            swift_getKeyPath();
            swift_getKeyPath();

            sub_10009DB00();
          }

          goto LABEL_4;
        }

        if (v1 == 9 || v5 == 7 || v1 == 7 || v5 == v1)
        {
          goto LABEL_4;
        }
      }

      if (v1 > 6)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_10001BE24(_BYTE *a1)
{
  v2 = sub_100003714(&qword_1000CA8F0, &qword_1000A09C8);
  v3 = *(*(v2 - 8) + 64);
  result = __chkstk_darwin(v2 - 8);
  v6 = &v11[-v5];
  if (*a1 == 2)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v7 = result;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10009DAF0();

      if (v11[7] == 3)
      {
        sub_10009DF20();
        v8 = sub_10009DF40();
        (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
        sub_10009DF10();

        v9 = sub_10009DF00();
        v10 = swift_allocObject();
        v10[2] = v9;
        v10[3] = &protocol witness table for MainActor;
        v10[4] = v7;
        sub_100019B10(0, 0, v6, &unk_1000A10E8, v10);
      }
    }
  }

  return result;
}

uint64_t sub_10001BFF4()
{
  v0[2] = sub_10009DF10();
  v0[3] = sub_10009DF00();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10001C0A4;

  return sub_10001C240(1500);
}

uint64_t sub_10001C0A4()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_10009DED0();

  return _swift_task_switch(sub_10001C1E0, v5, v4);
}

uint64_t sub_10001C1E0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10001C240(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_10009D9F0();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  sub_10009DF10();
  v2[15] = sub_10009DF00();
  v7 = sub_10009DED0();
  v2[16] = v7;
  v2[17] = v6;

  return _swift_task_switch(sub_10001C340, v7, v6);
}

uint64_t sub_10001C340(uint64_t a1)
{
  v2 = *(v1 + 72);
  if (v2 < 1)
  {
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(a1);
  }

  *(v1 + 144) = BRCloudDocsErrorDomain;
  *(v1 + 152) = CKErrorDomain;
  *(v1 + 160) = v2;
  v3 = *(v1 + 80);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  v4 = *(v1 + 57);
  if (v4 > 2)
  {
    if (v4 - 4 < 2)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (v4 == 1)
    {
      v5 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
      v6 = swift_task_alloc();
      *(v1 + 168) = v6;
      *v6 = v1;
      v6[1] = sub_10001C62C;
      a1 = 1000000000;

      return static Task<>.sleep(nanoseconds:)(a1);
    }

    v7 = *(v1 + 80);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v1 + 63) = 3;

    sub_10009DB00();
  }

  v8 = *(v1 + 80);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  v9 = *(v1 + 58);
  if (v9 == 4 || v9 == 2)
  {
    v10 = *(v1 + 80);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v1 + 59) = 1;

    sub_10009DB00();
    v11 = swift_task_alloc();
    *(v1 + 176) = v11;
    *v11 = v1;
    v11[1] = sub_10001CA28;
    v12 = *(v1 + 80);

    return sub_100022220();
  }

LABEL_15:
  v15 = *(v1 + 112);
  v14 = *(v1 + 120);
  v16 = *(v1 + 104);

  v17 = *(v1 + 8);

  return v17();
}

uint64_t sub_10001C62C()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;

  if (v0)
  {

    v5 = *(v2 + 128);
    v6 = *(v2 + 136);
    v7 = sub_10003A8A4;
  }

  else
  {
    v5 = *(v2 + 128);
    v6 = *(v2 + 136);
    v7 = sub_10001C750;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10001C750(uint64_t a1)
{
  v2 = *(v1 + 160);
  if (v2 == 1)
  {
    goto LABEL_16;
  }

  if (v2 < 2)
  {
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(a1);
  }

  *(v1 + 160) = v2 - 1;
  v3 = *(v1 + 80);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  v4 = *(v1 + 57);
  if (v4 > 2)
  {
    if (v4 - 4 < 2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v4 == 1)
    {
      v5 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
      v6 = swift_task_alloc();
      *(v1 + 168) = v6;
      *v6 = v1;
      v6[1] = sub_10001C62C;
      a1 = 1000000000;

      return static Task<>.sleep(nanoseconds:)(a1);
    }

    v7 = *(v1 + 80);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v1 + 63) = 3;

    sub_10009DB00();
  }

  v8 = *(v1 + 80);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  v9 = *(v1 + 58);
  if (v9 == 4 || v9 == 2)
  {
    v10 = *(v1 + 80);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v1 + 59) = 1;

    sub_10009DB00();
    v11 = swift_task_alloc();
    *(v1 + 176) = v11;
    *v11 = v1;
    v11[1] = sub_10001CA28;
    v12 = *(v1 + 80);

    return sub_100022220();
  }

LABEL_16:
  v15 = *(v1 + 112);
  v14 = *(v1 + 120);
  v16 = *(v1 + 104);

  v17 = *(v1 + 8);

  return v17();
}