@interface AgeRangeAlertFlowStore
- (void)initiationMessageWithAgeRangeRequestModel:(id)a3;
@end

@implementation AgeRangeAlertFlowStore

- (void)initiationMessageWithAgeRangeRequestModel:(id)a3
{
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = a3;
  v7 = a3;
  v8 = self;

  sub_21BDCEAC8(sub_21BDCEAC0, v6);
}

@end