@interface IMPollHelper
- (IMPollHelper)init;
- (int64_t)synchronousPollOptionCountFromChatItem:(id)item;
- (void)pollOptionsFromChatItem:(IMTranscriptPluginChatItem *)item completionHandler:(id)handler;
- (void)pollOptionsFromPluginPayload:(IMPluginPayload *)payload completionHandler:(id)handler;
- (void)pollResponseFromChatItem:(IMTranscriptPluginChatItem *)item completionHandler:(id)handler;
@end

@implementation IMPollHelper

- (int64_t)synchronousPollOptionCountFromChatItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  v6 = sub_1A84B8EE8(itemCopy);

  return v6;
}

- (void)pollOptionsFromChatItem:(IMTranscriptPluginChatItem *)item completionHandler:(id)handler
{
  v7 = sub_1A83EA2FC(&qword_1EB2E6600, &qword_1A8507BA0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = item;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_1A84E60BC();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1A850A988;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1A850A990;
  v15[5] = v14;
  itemCopy = item;
  selfCopy = self;
  sub_1A84CF9DC(0, 0, v10, &unk_1A850A998, v15);
}

- (void)pollOptionsFromPluginPayload:(IMPluginPayload *)payload completionHandler:(id)handler
{
  v7 = sub_1A83EA2FC(&qword_1EB2E6600, &qword_1A8507BA0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = payload;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_1A84E60BC();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1A850A918;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1A850A920;
  v15[5] = v14;
  payloadCopy = payload;
  selfCopy = self;
  sub_1A84CF9DC(0, 0, v10, &unk_1A850A928, v15);
}

- (void)pollResponseFromChatItem:(IMTranscriptPluginChatItem *)item completionHandler:(id)handler
{
  v7 = sub_1A83EA2FC(&qword_1EB2E6600, &qword_1A8507BA0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = item;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_1A84E60BC();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1A850A8F0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1A85008C0;
  v15[5] = v14;
  itemCopy = item;
  selfCopy = self;
  sub_1A84CF9DC(0, 0, v10, &unk_1A8507BC0, v15);
}

- (IMPollHelper)init
{
  v3.receiver = self;
  v3.super_class = IMPollHelper;
  return [(IMPollHelper *)&v3 init];
}

@end