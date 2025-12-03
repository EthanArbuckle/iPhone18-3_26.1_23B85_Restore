@interface BlastDoorRelayReachabilityHandleResult
- (BlastDoorMBDBrandLogo)brandLogo;
- (BlastDoorRelayReachabilityHandleResult)init;
- (NSDictionary)brandInfo;
- (NSDictionary)persistentMenu;
- (NSString)description;
- (NSString)handleID;
@end

@implementation BlastDoorRelayReachabilityHandleResult

- (NSString)description
{
  sub_214592C0C(self + OBJC_IVAR___BlastDoorRelayReachabilityHandleResult_relayReachabilityHandleResult, v4);
  sub_2146D9608();
  v2 = sub_2146D9588();

  return v2;
}

- (NSString)handleID
{
  sub_214592C0C(self + OBJC_IVAR___BlastDoorRelayReachabilityHandleResult_relayReachabilityHandleResult, v4);
  if (v5)
  {

    sub_2142FE798(v4);
    v2 = sub_2146D9588();

    return v2;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

- (NSDictionary)persistentMenu
{
  v3 = self + OBJC_IVAR___BlastDoorRelayReachabilityHandleResult_relayReachabilityHandleResult;
  if (*&self->relayReachabilityHandleResult[OBJC_IVAR___BlastDoorRelayReachabilityHandleResult_relayReachabilityHandleResult + 56] == 1)
  {
    v4 = 0;
  }

  else
  {
    v6 = *&self->relayReachabilityHandleResult[OBJC_IVAR___BlastDoorRelayReachabilityHandleResult_relayReachabilityHandleResult + 56];
    v8 = *(v3 + 88);
    v9 = *(v3 + 104);
    v10 = *(v3 + 120);
    v11 = *(v3 + 17);
    v7 = *(v3 + 72);
    v4 = sub_214093A24();
  }

  return v4;
}

- (NSDictionary)brandInfo
{
  v3 = self + OBJC_IVAR___BlastDoorRelayReachabilityHandleResult_relayReachabilityHandleResult;
  memcpy(__dst, &self->relayReachabilityHandleResult[OBJC_IVAR___BlastDoorRelayReachabilityHandleResult_relayReachabilityHandleResult + 136], sizeof(__dst));
  memcpy(__src, v3 + 144, sizeof(__src));
  if (get_enum_tag_for_layout_string_9BlastDoor23CSDMConversationMessageVSg_0(__src) == 1)
  {
    v4 = 0;
  }

  else
  {
    memcpy(v9, __src, sizeof(v9));
    selfCopy = self;
    sub_213FB2E54(__dst, &v8, &qword_27C908800, &qword_2146F51D8);
    MBDBrandInfo.dictionaryRepresentation.getter();
    v6 = sub_2146D9468();

    sub_213FB2DF4(__dst, &qword_27C908800, &qword_2146F51D8);

    v4 = v6;
  }

  return v4;
}

- (BlastDoorMBDBrandLogo)brandLogo
{
  selfCopy = self;
  v3 = sub_214573B48();

  return v3;
}

- (BlastDoorRelayReachabilityHandleResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end