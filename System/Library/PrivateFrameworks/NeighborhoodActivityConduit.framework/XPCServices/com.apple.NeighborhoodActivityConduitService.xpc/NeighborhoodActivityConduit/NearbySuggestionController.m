@interface NearbySuggestionController
- (_TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController)init;
- (void)conversationManager:(id)a3 avModeChangedForConversation:(id)a4;
- (void)conversationManager:(id)a3 presentationContextChangedForConversation:(id)a4;
- (void)conversationManager:(id)a3 stateChangedForConversation:(id)a4 fromOldConversation:(id)a5;
- (void)dealloc;
- (void)session:(id)a3 didFailWithError:(id)a4;
- (void)session:(id)a3 didUpdateContext:(id)a4;
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
  v9 = self;
  sub_100022960(0, 0, v6, &unk_1000F1690, v8);

  v10 = type metadata accessor for NearbySuggestionController();
  v11.receiver = v9;
  v11.super_class = v10;
  [(NearbySuggestionController *)&v11 dealloc];
}

- (_TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)conversationManager:(id)a3 stateChangedForConversation:(id)a4 fromOldConversation:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_10003AD34(v9);
}

- (void)conversationManager:(id)a3 presentationContextChangedForConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10003B20C(v7);
}

- (void)conversationManager:(id)a3 avModeChangedForConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10003B66C(v7);
}

- (void)session:(id)a3 didFailWithError:(id)a4
{
  v6 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v20 - v8;
  v10 = sub_1000E2538();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = qword_10011DC08;
  v12 = a4;
  v13 = self;
  v14 = v12;
  v16 = v13;
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

- (void)session:(id)a3 didUpdateContext:(id)a4
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
  v13 = self;
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
  v16[5] = v13;

  sub_100022960(0, 0, v8, &unk_1000F15B8, v16);
}

@end