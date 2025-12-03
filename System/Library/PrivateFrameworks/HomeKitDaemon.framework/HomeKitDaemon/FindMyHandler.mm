@interface FindMyHandler
- (BOOL)isThisDesignatedFMFDevice;
- (void)queryFMFStatusWithCompletion:(id)completion;
@end

@implementation FindMyHandler

- (void)queryFMFStatusWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_22A4DD9DC();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22A57B4B0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22A57B590;
  v13[5] = v12;

  sub_229859F70(0, 0, v8, &unk_22A581CC0, v13);
}

- (BOOL)isThisDesignatedFMFDevice
{

  os_unfair_lock_lock(v3 + 32);
  v4 = *&self->fmfStatus[7] == 2;
  os_unfair_lock_unlock(&self->findMySession[7]);

  return v4;
}

@end