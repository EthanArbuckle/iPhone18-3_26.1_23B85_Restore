@interface CKAppInteractionsContext
- (id)copyWithZone:(void *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)updateDiscardedDonations:(double)a3 forIntentType:(id)a4 andBundleId:(id)a5;
@end

@implementation CKAppInteractionsContext

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1C868805C(v4);
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  sub_1C868868C(v6);

  __swift_project_boxed_opaque_existential_0(v6, v6[3]);
  v4 = sub_1C86F947C();
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v4;
}

- (void)updateDiscardedDonations:(double)a3 forIntentType:(id)a4 andBundleId:(id)a5
{
  v7 = sub_1C86F8EFC();
  v9 = v8;
  v10 = sub_1C86F8EFC();
  v12 = v11;
  v13 = self;
  sub_1C8688C54(v7, v9, v10, v12, a3);
}

@end