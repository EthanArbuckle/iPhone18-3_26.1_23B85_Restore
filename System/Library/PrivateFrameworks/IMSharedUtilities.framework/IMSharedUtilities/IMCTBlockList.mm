@interface IMCTBlockList
+ (id)sharedBlockList;
- (IMCTBlockList)init;
- (void)blockContact:(CNContact *)contact completion:(id)completion;
- (void)unblockContact:(CNContact *)contact completion:(id)completion;
@end

@implementation IMCTBlockList

+ (id)sharedBlockList
{
  if (qword_1EB3022D8 != -1)
  {
    swift_once();
  }

  v3 = qword_1EB307A60;

  return v3;
}

- (void)blockContact:(CNContact *)contact completion:(id)completion
{
  v7 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = contact;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1A88C87A8();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1A88F4638;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1A88F4640;
  v14[5] = v13;
  contactCopy = contact;
  selfCopy = self;
  sub_1A885323C(0, 0, v9, &unk_1A88F4648, v14);
}

- (void)unblockContact:(CNContact *)contact completion:(id)completion
{
  v7 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = contact;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1A88C87A8();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1A88F45E8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1A88F45F8;
  v14[5] = v13;
  contactCopy = contact;
  selfCopy = self;
  sub_1A885323C(0, 0, v9, &unk_1A88F4608, v14);
}

- (IMCTBlockList)init
{
  v3.receiver = self;
  v3.super_class = IMCTBlockList;
  return [(IMCTBlockList *)&v3 init];
}

@end