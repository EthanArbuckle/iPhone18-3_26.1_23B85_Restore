@interface FindMyTheftAndLossDisclaimerViewController
- (FindMyTheftAndLossDisclaimerViewController)init;
- (void)disclaimerLabelForContext:(id)context completion:(id)completion;
- (void)disclaimerViewControllerForContext:(id)context confirmActionHandler:(id)handler cancelActionHandler:(id)actionHandler completion:(id)completion;
@end

@implementation FindMyTheftAndLossDisclaimerViewController

- (void)disclaimerViewControllerForContext:(id)context confirmActionHandler:(id)handler cancelActionHandler:(id)actionHandler completion:(id)completion
{
  ObjectType = swift_getObjectType();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v25 - v12;
  v14 = _Block_copy(handler);
  v15 = _Block_copy(actionHandler);
  v16 = _Block_copy(completion);
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  if (v15)
  {
    v18 = swift_allocObject();
    *(v18 + 16) = v15;
    v15 = sub_24B2C65C4;
  }

  else
  {
    v18 = 0;
  }

  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  v20 = sub_24B2D56D4();
  (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
  sub_24B2D5694();
  contextCopy = context;

  sub_24AFD5880(v15);

  v22 = sub_24B2D5684();
  v23 = swift_allocObject();
  v24 = MEMORY[0x277D85700];
  v23[2] = v22;
  v23[3] = v24;
  v23[4] = contextCopy;
  v23[5] = sub_24B2C6380;
  v23[6] = v17;
  v23[7] = v15;
  v23[8] = v18;
  v23[9] = sub_24B2C6390;
  v23[10] = v19;
  v23[11] = ObjectType;
  sub_24B00A9A4(0, 0, v13, &unk_24B2F6088, v23);

  sub_24AFD5890(v15);
}

- (void)disclaimerLabelForContext:(id)context completion:(id)completion
{
  ObjectType = swift_getObjectType();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = sub_24B2D56D4();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  sub_24B2D5694();
  contextCopy = context;

  v14 = sub_24B2D5684();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = contextCopy;
  v15[5] = sub_24B2C6330;
  v15[6] = v11;
  v15[7] = ObjectType;
  sub_24B00A9A4(0, 0, v9, &unk_24B2F6080, v15);
}

- (FindMyTheftAndLossDisclaimerViewController)init
{
  v3.receiver = self;
  v3.super_class = FindMyTheftAndLossDisclaimerViewController;
  return [(FindMyTheftAndLossDisclaimerViewController *)&v3 init];
}

@end