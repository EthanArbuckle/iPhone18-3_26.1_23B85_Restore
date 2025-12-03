@interface VoicemailDetailContainerViewModel
- (void)messageStoreDidUpdateMessages:(id)messages;
@end

@implementation VoicemailDetailContainerViewModel

- (void)messageStoreDidUpdateMessages:(id)messages
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  sub_1CFC9D698();
  v8 = sub_1CFC9F8A8();
  v9 = sub_1CFC9F998();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  sub_1CFC9F968();
  swift_retain_n();
  v10 = sub_1CFC9F958();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v8;
  v11[5] = self;
  sub_1CFBDC030(0, 0, v7, &unk_1CFCA4FA8, v11);
}

@end