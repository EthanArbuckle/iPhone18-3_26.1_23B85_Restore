@interface CKInboxViewControllerFactory
+ (id)inboxViewControllerWithModel:(id)model;
@end

@implementation CKInboxViewControllerFactory

+ (id)inboxViewControllerWithModel:(id)model
{
  v4 = type metadata accessor for InboxModel(0);
  sub_215684A58();
  modelCopy = model;
  sub_215692E00();
  v6 = *(v4 + 48);
  v7 = *(v4 + 52);
  v8 = swift_allocObject();
  *(v8 + 16) = modelCopy;
  swift_beginAccess();
  v9 = modelCopy;
  sub_215692D50();
  swift_endAccess();
  [*(v8 + 16) setDelegate_];
  sub_215692D10();
  v10 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E1B8, &qword_215694208));
  v11 = sub_215692E80();

  return v11;
}

@end