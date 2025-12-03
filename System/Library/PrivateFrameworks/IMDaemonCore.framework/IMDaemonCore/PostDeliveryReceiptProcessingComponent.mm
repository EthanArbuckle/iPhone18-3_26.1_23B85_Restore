@interface PostDeliveryReceiptProcessingComponent
- (BOOL)validBundleID:(id)d;
- (PostDeliveryReceiptProcessingComponent)init;
- (id)runIndividuallyWithInput:(id)input;
@end

@implementation PostDeliveryReceiptProcessingComponent

- (id)runIndividuallyWithInput:(id)input
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = PostDeliveryReceiptProcessingComponent.runIndividually(withInput:)(input);
  swift_unknownObjectRelease();

  return v6;
}

- (BOOL)validBundleID:(id)d
{
  if (d)
  {
    v4 = sub_22B7DB6A8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  v8 = sub_22B7CDB5C(v4, v6);

  return v8;
}

- (PostDeliveryReceiptProcessingComponent)init
{
  v3.receiver = self;
  v3.super_class = PostDeliveryReceiptProcessingComponent;
  return [(PostDeliveryReceiptProcessingComponent *)&v3 init];
}

@end