@interface DSBlockingController
+ (_TtC19DigitalSeparationUI20DSBlockingController)sharedInstance;
- (_TtC19DigitalSeparationUI20DSBlockingController)init;
- (void)blockWithContact:(CNContact *)contact completionHandler:(id)handler;
- (void)blockWithContacts:(NSArray *)contacts completionHandler:(id)handler;
- (void)prefetchSharingWithCompletionHandler:(id)handler;
- (void)safetyCheckControllerFor:(NSArray *)for completionHandler:(id)handler;
@end

@implementation DSBlockingController

+ (_TtC19DigitalSeparationUI20DSBlockingController)sharedInstance
{
  if (qword_2810DDFA0 != -1)
  {
    swift_once();
  }

  return v2;
}

- (void)prefetchSharingWithCompletionHandler:(id)handler
{
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB368, &qword_248CDE7F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_248CD46CC();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_248CDEA88;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_248CDEA90;
  v12[5] = v11;

  sub_248CC6CC0(0, 0, v7, &unk_248CDEA98, v12);
}

- (void)blockWithContact:(CNContact *)contact completionHandler:(id)handler
{
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB368, &qword_248CDE7F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = contact;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_248CD46CC();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_248CDEA68;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_248CDEA70;
  v14[5] = v13;
  contactCopy = contact;

  sub_248CC6CC0(0, 0, v9, &unk_248CDEA78, v14);
}

- (void)blockWithContacts:(NSArray *)contacts completionHandler:(id)handler
{
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB368, &qword_248CDE7F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = contacts;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_248CD46CC();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_248CDEA48;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_248CDEA50;
  v14[5] = v13;
  contactsCopy = contacts;

  sub_248CC6CC0(0, 0, v9, &unk_248CDEA58, v14);
}

- (void)safetyCheckControllerFor:(NSArray *)for completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB368, &qword_248CDE7F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = for;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_248CD46CC();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_248CDEA00;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_248CDEA10;
  v15[5] = v14;
  forCopy = for;

  sub_248CC6CC0(0, 0, v10, &unk_248CDEA20, v15);
}

- (_TtC19DigitalSeparationUI20DSBlockingController)init
{
  swift_defaultActor_initialize();
  sub_248CD435C();
  v3 = OBJC_IVAR____TtC19DigitalSeparationUI20DSBlockingController_viewProvider;
  *(&self->super.super.isa + v3) = [objc_allocWithZone(DSSafetyCheckWhenBlocking) init];
  *(&self->super.super.isa + OBJC_IVAR____TtC19DigitalSeparationUI20DSBlockingController_fetchTask) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for DSBlockingController();
  return [(DSBlockingController *)&v5 init];
}

@end