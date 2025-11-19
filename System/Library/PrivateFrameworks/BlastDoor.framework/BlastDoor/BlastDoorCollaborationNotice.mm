@interface BlastDoorCollaborationNotice
- (BlastDoorCollaborationNotice)init;
- (NSData)highlightEvent;
- (NSDate)noticeDate;
- (unint64_t)highlightEventType;
@end

@implementation BlastDoorCollaborationNotice

- (NSData)highlightEvent
{
  v3 = type metadata accessor for CollaborationHighlightEvent(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = self + OBJC_IVAR___BlastDoorCollaborationNotice_collaborationNotice;
  v8 = type metadata accessor for CollaborationNotice(0);
  sub_213FB568C(&v7[*(v8 + 24)], v6, type metadata accessor for CollaborationHighlightEvent);
  v9 = self;
  v10 = sub_214675854();
  v12 = v11;
  v13 = sub_2146D8A38();
  sub_213FB54FC(v10, v12);

  sub_213FB5844(v6, type metadata accessor for CollaborationHighlightEvent);

  return v13;
}

- (unint64_t)highlightEventType
{
  v2 = self;
  v3 = sub_214557444();

  return v3;
}

- (NSDate)noticeDate
{
  v3 = sub_2146D8B08();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = self + OBJC_IVAR___BlastDoorCollaborationNotice_collaborationNotice;
  v9 = type metadata accessor for CollaborationNotice(0);
  (*(v4 + 16))(v7, &v8[*(v9 + 28)], v3);
  v10 = sub_2146D8AD8();
  (*(v4 + 8))(v7, v3);

  return v10;
}

- (BlastDoorCollaborationNotice)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end