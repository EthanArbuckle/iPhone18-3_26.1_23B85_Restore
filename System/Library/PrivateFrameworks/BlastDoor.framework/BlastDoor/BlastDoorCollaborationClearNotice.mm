@interface BlastDoorCollaborationClearNotice
- (BlastDoorCollaborationClearNotice)init;
- (NSDate)date;
- (NSString)collaborationId;
@end

@implementation BlastDoorCollaborationClearNotice

- (NSDate)date
{
  v3 = sub_2146D8B08();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = self + OBJC_IVAR___BlastDoorCollaborationClearNotice_collaborationClearNotice;
  v9 = type metadata accessor for CollaborationClearNotice();
  (*(v4 + 16))(v7, &v8[*(v9 + 24)], v3);
  v10 = sub_2146D8AD8();
  (*(v4 + 8))(v7, v3);

  return v10;
}

- (NSString)collaborationId
{
  v2 = self + OBJC_IVAR___BlastDoorCollaborationClearNotice_collaborationClearNotice;
  v3 = &v2[*(type metadata accessor for CollaborationClearNotice() + 28)];
  v4 = *v3;
  v5 = *(v3 + 1);

  v6 = sub_2146D9588();

  return v6;
}

- (BlastDoorCollaborationClearNotice)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end