@interface ConversationStreamAIMLIS
- (void)streamConversationsWithBookmark:(_TtC26DeepThoughtBiomeFoundation15StreamsBookmark *)a3 completionHandler:(id)a4;
@end

@implementation ConversationStreamAIMLIS

- (void)streamConversationsWithBookmark:(_TtC26DeepThoughtBiomeFoundation15StreamsBookmark *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA66E8, &qword_2487356D8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v19 - v10;
  v12 = _Block_copy(a4);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = v12;
  v13[4] = self;
  v14 = sub_248731340();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2487356E8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_2487356F8;
  v16[5] = v15;
  v17 = a3;
  v18 = self;
  sub_24870CE40(0, 0, v11, &unk_248735708, v16);
}

@end