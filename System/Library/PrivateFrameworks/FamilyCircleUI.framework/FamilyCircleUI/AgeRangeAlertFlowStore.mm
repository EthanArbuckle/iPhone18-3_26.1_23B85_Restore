@interface AgeRangeAlertFlowStore
- (void)initiationMessageWithAgeRangeRequestModel:(id)model;
@end

@implementation AgeRangeAlertFlowStore

- (void)initiationMessageWithAgeRangeRequestModel:(id)model
{
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = model;
  modelCopy = model;
  selfCopy = self;

  sub_21BDCEAC8(sub_21BDCEAC0, v6);
}

@end