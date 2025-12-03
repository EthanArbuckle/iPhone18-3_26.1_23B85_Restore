@interface MessageComposeViewController
- (_TtC14FamilyCircleUI28MessageComposeViewController)initWithCoder:(id)coder;
- (_TtC14FamilyCircleUI28MessageComposeViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)messageComposeViewController:(MFMessageComposeViewController *)controller shouldSendMessage:(NSString *)message toRecipients:(NSArray *)recipients completion:(id)completion;
- (void)messageComposeViewController:(id)controller didFinishWithResult:(int64_t)result;
@end

@implementation MessageComposeViewController

- (_TtC14FamilyCircleUI28MessageComposeViewController)initWithCoder:(id)coder
{
  v3 = type metadata accessor for MessageComposeViewController();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC14FamilyCircleUI28MessageComposeViewController_finalRecipients] = MEMORY[0x277D84F90];
  v5 = &v4[OBJC_IVAR____TtC14FamilyCircleUI28MessageComposeViewController_onDoneSharing];
  *v5 = nullsub_1;
  *(v5 + 1) = 0;
  v6 = &v4[OBJC_IVAR____TtC14FamilyCircleUI28MessageComposeViewController_onCancel];
  *v6 = nullsub_1;
  *(v6 + 1) = 0;
  v9.receiver = v4;
  v9.super_class = v3;
  v7 = [(MessageComposeViewController *)&v9 initWithNibName:0 bundle:0];
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v7;
}

- (void)messageComposeViewController:(MFMessageComposeViewController *)controller shouldSendMessage:(NSString *)message toRecipients:(NSArray *)recipients completion:(id)completion
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v24 - v13;
  v15 = _Block_copy(completion);
  v16 = swift_allocObject();
  v16[2] = controller;
  v16[3] = message;
  v16[4] = recipients;
  v16[5] = v15;
  v16[6] = self;
  v17 = sub_21BE28DAC();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_21BE4B5B8;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_21BE32A10;
  v19[5] = v18;
  controllerCopy = controller;
  messageCopy = message;
  recipientsCopy = recipients;
  selfCopy = self;
  sub_21BDC4F90(0, 0, v14, &unk_21BE391F0, v19);
}

- (void)messageComposeViewController:(id)controller didFinishWithResult:(int64_t)result
{
  controllerCopy = controller;
  selfCopy = self;
  sub_21BDA4064(result);
}

- (_TtC14FamilyCircleUI28MessageComposeViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end