@interface PostDeliveryReceiptProcessingComponent
- (BOOL)validBundleID:(id)a3;
- (PostDeliveryReceiptProcessingComponent)init;
- (id)runIndividuallyWithInput:(id)a3;
@end

@implementation PostDeliveryReceiptProcessingComponent

- (id)runIndividuallyWithInput:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  v6 = PostDeliveryReceiptProcessingComponent.runIndividually(withInput:)(a3);
  swift_unknownObjectRelease();

  return v6;
}

- (BOOL)validBundleID:(id)a3
{
  if (a3)
  {
    v4 = sub_22B7DB6A8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
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