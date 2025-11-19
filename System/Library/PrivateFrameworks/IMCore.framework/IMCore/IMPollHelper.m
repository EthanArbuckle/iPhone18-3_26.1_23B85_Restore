@interface IMPollHelper
- (IMPollHelper)init;
- (int64_t)synchronousPollOptionCountFromChatItem:(id)a3;
- (void)pollOptionsFromChatItem:(IMTranscriptPluginChatItem *)a3 completionHandler:(id)a4;
- (void)pollOptionsFromPluginPayload:(IMPluginPayload *)a3 completionHandler:(id)a4;
- (void)pollResponseFromChatItem:(IMTranscriptPluginChatItem *)a3 completionHandler:(id)a4;
@end

@implementation IMPollHelper

- (int64_t)synchronousPollOptionCountFromChatItem:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1A84B8EE8(v4);

  return v6;
}

- (void)pollOptionsFromChatItem:(IMTranscriptPluginChatItem *)a3 completionHandler:(id)a4
{
  v7 = sub_1A83EA2FC(&qword_1EB2E6600, &qword_1A8507BA0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
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
  v16 = a3;
  v17 = self;
  sub_1A84CF9DC(0, 0, v10, &unk_1A850A998, v15);
}

- (void)pollOptionsFromPluginPayload:(IMPluginPayload *)a3 completionHandler:(id)a4
{
  v7 = sub_1A83EA2FC(&qword_1EB2E6600, &qword_1A8507BA0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
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
  v16 = a3;
  v17 = self;
  sub_1A84CF9DC(0, 0, v10, &unk_1A850A928, v15);
}

- (void)pollResponseFromChatItem:(IMTranscriptPluginChatItem *)a3 completionHandler:(id)a4
{
  v7 = sub_1A83EA2FC(&qword_1EB2E6600, &qword_1A8507BA0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
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
  v16 = a3;
  v17 = self;
  sub_1A84CF9DC(0, 0, v10, &unk_1A8507BC0, v15);
}

- (IMPollHelper)init
{
  v3.receiver = self;
  v3.super_class = IMPollHelper;
  return [(IMPollHelper *)&v3 init];
}

@end