@interface CKAppInteractionsContext
- (id)copyWithZone:(void *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)updateDiscardedDonations:(double)donations forIntentType:(id)type andBundleId:(id)id;
@end

@implementation CKAppInteractionsContext

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1C868805C(coderCopy);
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_1C868868C(v6);

  __swift_project_boxed_opaque_existential_0(v6, v6[3]);
  v4 = sub_1C86F947C();
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v4;
}

- (void)updateDiscardedDonations:(double)donations forIntentType:(id)type andBundleId:(id)id
{
  v7 = sub_1C86F8EFC();
  v9 = v8;
  v10 = sub_1C86F8EFC();
  v12 = v11;
  selfCopy = self;
  sub_1C8688C54(v7, v9, v10, v12, donations);
}

@end