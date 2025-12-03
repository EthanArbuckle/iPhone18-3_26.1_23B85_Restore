@interface IMUrlToTransferMap
- (IMUrlToTransferMap)init;
- (IMUrlToTransferMap)initWithUrlToTransferGuids:(id)guids;
- (NSDictionary)urlToTransferGuids;
- (id)copyWithZone:(void *)zone;
- (id)dictionaryRepresentation;
- (id)relayDictionaryRepresentation;
- (id)transferGuidFromUrl:(id)url;
@end

@implementation IMUrlToTransferMap

- (NSDictionary)urlToTransferGuids
{

  v2 = sub_1A88C8188();

  return v2;
}

- (IMUrlToTransferMap)initWithUrlToTransferGuids:(id)guids
{
  *(self + OBJC_IVAR___IMUrlToTransferMap_urlToTransferGuids) = sub_1A88C81A8();
  v5.receiver = self;
  v5.super_class = IMUrlToTransferMap;
  return [(IMUrlToTransferMap *)&v5 init];
}

- (id)transferGuidFromUrl:(id)url
{
  if (url)
  {
    v4 = sub_1A88C82E8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_1A87BD024(v4, v6);
  v9 = v8;

  if (v9)
  {
    v10 = sub_1A88C82A8();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)dictionaryRepresentation
{
  sub_1A870CCE0(&qword_1EB303718);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A88E14F0;
  *(inited + 32) = sub_1A88C82E8();
  *(inited + 40) = v4;
  selfCopy = self;
  urlToTransferGuids = [(IMUrlToTransferMap *)selfCopy urlToTransferGuids];
  v7 = sub_1A88C81A8();

  *(inited + 72) = sub_1A870CCE0(&qword_1EB303B88);
  *(inited + 48) = v7;
  sub_1A8738AAC(inited);
  swift_setDeallocating();
  sub_1A8723F2C(inited + 32);

  v8 = sub_1A88C8188();

  return v8;
}

- (id)relayDictionaryRepresentation
{
  sub_1A870CCE0(&qword_1EB303718);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A88E14F0;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x80000001A891B1E0;
  selfCopy = self;
  urlToTransferGuids = [(IMUrlToTransferMap *)selfCopy urlToTransferGuids];
  v6 = sub_1A88C81A8();

  *(inited + 72) = sub_1A870CCE0(&qword_1EB303B88);
  *(inited + 48) = v6;
  sub_1A8738AAC(inited);
  swift_setDeallocating();
  sub_1A8723F2C(inited + 32);

  v7 = sub_1A88C8188();

  return v7;
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_1A87BD654(v6);

  sub_1A870C278(v6, v6[3]);
  v4 = sub_1A88C9388();
  sub_1A85F1084(v6);
  return v4;
}

- (IMUrlToTransferMap)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end