@interface ControlHomeIntentHandler
- (_TtC22HomeAutomationInternal24ControlHomeIntentHandler)init;
- (void)confirmControlHome:(ControlHomeIntent *)home completion:(id)completion;
- (void)resolveTimeForControlHome:(id)home withCompletion:(id)completion;
@end

@implementation ControlHomeIntentHandler

- (void)resolveTimeForControlHome:(id)home withCompletion:(id)completion
{
  v5 = _Block_copy(completion);
  homeCopy = home;
  time = [homeCopy time];
  if (time)
  {
    v8 = time;
    successWithResolvedDateComponentsRange_ = [objc_opt_self() successWithResolvedDateComponentsRange_];
    v5[2](v5);

    _Block_release(v5);
  }

  else
  {
    sub_25293F638(0, &qword_27F545500, 0x277CD3B70);
    successWithResolvedDateComponentsRange_ = [swift_getObjCClassFromMetadata() notRequired];
    v5[2](v5);

    _Block_release(v5);
  }
}

- (void)confirmControlHome:(ControlHomeIntent *)home completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CB8, &qword_252E3F8D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = home;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_252E37344();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_252E5B428;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_252E4BCE0;
  v15[5] = v14;
  homeCopy = home;
  selfCopy = self;
  sub_252CD45A0(0, 0, v10, &unk_252E46600, v15);
}

- (_TtC22HomeAutomationInternal24ControlHomeIntentHandler)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ControlHomeIntentHandler();
  return [(ControlHomeIntentHandler *)&v3 init];
}

@end