@interface NearbySuggestionController
- (_TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController)init;
- (void)conversationManager:(id)manager avModeChangedForConversation:(id)conversation;
- (void)conversationManager:(id)manager presentationContextChangedForConversation:(id)conversation;
- (void)conversationManager:(id)manager stateChangedForConversation:(id)conversation fromOldConversation:(id)oldConversation;
- (void)dealloc;
- (void)session:(id)session didFailWithError:(id)error;
- (void)session:(id)session didUpdateContext:(id)context;
@end

@implementation NearbySuggestionController

- (void)dealloc
{
  v3 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v11 - v5;
  v7 = sub_1000E2538();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = self;
  selfCopy = self;
  sub_100022960(0, 0, v6, &unk_1000F1690, v8);

  v10 = type metadata accessor for NearbySuggestionController();
  v11.receiver = selfCopy;
  v11.super_class = v10;
  [(NearbySuggestionController *)&v11 dealloc];
}

- (_TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)conversationManager:(id)manager stateChangedForConversation:(id)conversation fromOldConversation:(id)oldConversation
{
  managerCopy = manager;
  conversationCopy = conversation;
  oldConversationCopy = oldConversation;
  selfCopy = self;
  sub_10003AD34(conversationCopy);
}

- (void)conversationManager:(id)manager presentationContextChangedForConversation:(id)conversation
{
  managerCopy = manager;
  conversationCopy = conversation;
  selfCopy = self;
  sub_10003B20C(conversationCopy);
}

- (void)conversationManager:(id)manager avModeChangedForConversation:(id)conversation
{
  managerCopy = manager;
  conversationCopy = conversation;
  selfCopy = self;
  sub_10003B66C(conversationCopy);
}

- (void)session:(id)session didFailWithError:(id)error
{
  v6 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v20 - v8;
  v10 = sub_1000E2538();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = qword_10011DC08;
  errorCopy = error;
  selfCopy = self;
  v14 = errorCopy;
  v16 = selfCopy;
  if (v11 != -1)
  {
    swift_once();
  }

  v17 = qword_1001230D0;
  v18 = sub_10003BB3C(&unk_10011F010, v15, type metadata accessor for NearbySuggestionActor);
  v19 = swift_allocObject();
  v19[2] = v17;
  v19[3] = v18;
  v19[4] = v14;
  v19[5] = v16;

  sub_100022960(0, 0, v9, &unk_1000F15E0, v19);
}

- (void)session:(id)session didUpdateContext:(id)context
{
  v5 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v17 - v7;
  sub_10000CAAC(0, &unk_10011F030, IRContext_ptr);
  v9 = sub_1000E22B8();
  v10 = sub_1000E2538();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = qword_10011DC08;
  selfCopy = self;
  if (v11 != -1)
  {
    swift_once();
  }

  v14 = qword_1001230D0;
  v15 = sub_10003BB3C(&unk_10011F010, v12, type metadata accessor for NearbySuggestionActor);
  v16 = swift_allocObject();
  v16[2] = v14;
  v16[3] = v15;
  v16[4] = v9;
  v16[5] = selfCopy;

  sub_100022960(0, 0, v8, &unk_1000F15B8, v16);
}

@end