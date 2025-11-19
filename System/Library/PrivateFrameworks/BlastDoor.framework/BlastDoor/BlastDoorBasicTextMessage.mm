@interface BlastDoorBasicTextMessage
- (BlastDoorBasicTextMessage)init;
- (BlastDoorBasicTextMessageMessageTypeWrapper)messageSubType;
- (BlastDoorMetadata)metadata;
- (NSArray)replicatedFallbackGUIDs;
- (unint64_t)groupProtocolVersion;
@end

@implementation BlastDoorBasicTextMessage

- (BlastDoorMetadata)metadata
{
  v3 = type metadata accessor for Metadata();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(self + OBJC_IVAR___BlastDoorBasicTextMessage_basicTextMessage, v6, type metadata accessor for Metadata);
  v7 = type metadata accessor for _ObjCMetadataWrapper(0);
  v8 = objc_allocWithZone(v7);
  sub_213FB568C(v6, v8 + OBJC_IVAR___BlastDoorMetadata_metadata, type metadata accessor for Metadata);
  v11.receiver = v8;
  v11.super_class = v7;
  v9 = [(BlastDoorBasicTextMessage *)&v11 init];
  sub_213FB5844(v6, type metadata accessor for Metadata);

  return v9;
}

- (BlastDoorBasicTextMessageMessageTypeWrapper)messageSubType
{
  v2 = self + OBJC_IVAR___BlastDoorBasicTextMessage_basicTextMessage;
  v3 = &v2[*(type metadata accessor for BasicTextMessage() + 20)];
  v4 = *(v3 + 9);
  v32 = *(v3 + 8);
  v33[0] = v4;
  *(v33 + 9) = *(v3 + 153);
  v5 = *(v3 + 5);
  v28 = *(v3 + 4);
  v29 = v5;
  v6 = *(v3 + 7);
  v30 = *(v3 + 6);
  v31 = v6;
  v7 = *(v3 + 3);
  v26 = *(v3 + 2);
  v27 = v7;
  v8 = *(v3 + 1);
  v24 = *v3;
  v25 = v8;
  v9 = type metadata accessor for _ObjCEnumBasicTextMessageMessageTypeWrapper();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType];
  v13 = v25;
  v12 = v26;
  *v11 = v24;
  *(v11 + 1) = v13;
  *(v11 + 2) = v12;
  v14 = v30;
  v16 = v27;
  v15 = v28;
  *(v11 + 5) = v29;
  *(v11 + 6) = v14;
  *(v11 + 3) = v16;
  *(v11 + 4) = v15;
  v18 = v32;
  v17 = v33[0];
  v19 = v31;
  *(v11 + 153) = *(v33 + 9);
  *(v11 + 8) = v18;
  *(v11 + 9) = v17;
  *(v11 + 7) = v19;
  sub_21409C7E8(&v24, v23);
  v22.receiver = v10;
  v22.super_class = v9;
  v20 = [(BlastDoorBasicTextMessage *)&v22 init];

  return v20;
}

- (unint64_t)groupProtocolVersion
{
  v2 = self + OBJC_IVAR___BlastDoorBasicTextMessage_basicTextMessage;
  v3 = &v2[*(type metadata accessor for BasicTextMessage() + 44)];
  if (v3[8])
  {
    return 0;
  }

  else
  {
    return *v3;
  }
}

- (NSArray)replicatedFallbackGUIDs
{
  v2 = self + OBJC_IVAR___BlastDoorBasicTextMessage_basicTextMessage;
  if (*&v2[*(type metadata accessor for BasicTextMessage() + 52)])
  {

    v3 = sub_2146D98E8();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BlastDoorBasicTextMessage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end