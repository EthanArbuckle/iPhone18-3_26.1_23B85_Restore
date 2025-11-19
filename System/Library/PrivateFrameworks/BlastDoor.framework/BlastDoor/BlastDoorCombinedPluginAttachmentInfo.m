@interface BlastDoorCombinedPluginAttachmentInfo
- (BlastDoorCombinedPluginAttachmentInfo)init;
- (NSData)encryptionKey;
- (NSData)signature;
- (NSString)ownerID;
@end

@implementation BlastDoorCombinedPluginAttachmentInfo

- (NSData)signature
{
  v2 = self + OBJC_IVAR___BlastDoorCombinedPluginAttachmentInfo_combinedPluginAttachmentInfo;
  v3 = &v2[*(type metadata accessor for CombinedPluginAttachmentInfo() + 20)];
  v4 = *v3;
  v5 = v3[1];
  sub_21402D9F8(*v3, v5);
  v6 = sub_2146D8A38();
  sub_213FB54FC(v4, v5);

  return v6;
}

- (NSString)ownerID
{
  v3 = type metadata accessor for CombinedPluginAttachmentInfo();
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(self + OBJC_IVAR___BlastDoorCombinedPluginAttachmentInfo_combinedPluginAttachmentInfo, v7, type metadata accessor for CombinedPluginAttachmentInfo);
  v8 = &v7[*(v4 + 32)];
  if (*(v8 + 3))
  {
    v9 = *(v8 + 2);
    v10 = *(v8 + 3);

    sub_213FB5844(v7, type metadata accessor for CombinedPluginAttachmentInfo);
    v11 = sub_2146D9588();

    return v11;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

- (NSData)encryptionKey
{
  v2 = self + OBJC_IVAR___BlastDoorCombinedPluginAttachmentInfo_combinedPluginAttachmentInfo;
  v3 = &v2[*(type metadata accessor for CombinedPluginAttachmentInfo() + 32)];
  v4 = *v3;
  v5 = v3[1];
  sub_21402D9F8(*v3, v5);
  v6 = sub_2146D8A38();
  sub_213FB54FC(v4, v5);

  return v6;
}

- (BlastDoorCombinedPluginAttachmentInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end