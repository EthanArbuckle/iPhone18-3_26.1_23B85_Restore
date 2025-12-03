@interface IdentityProofingSession
- (void)cancelProofingWithState:(NSString *)state country:(NSString *)country completionHandler:(id)handler;
@end

@implementation IdentityProofingSession

- (void)cancelProofingWithState:(NSString *)state country:(NSString *)country completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE19190, &qword_21CD8E260);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v22 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = state;
  v15[3] = country;
  v15[4] = v14;
  v15[5] = self;
  v16 = sub_21CD83D74();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_21CD8E270;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_21CD8E390;
  v18[5] = v17;
  stateCopy = state;
  countryCopy = country;
  selfCopy = self;
  sub_21CD01F00(0, 0, v13, &unk_21CD8E280, v18);
}

@end