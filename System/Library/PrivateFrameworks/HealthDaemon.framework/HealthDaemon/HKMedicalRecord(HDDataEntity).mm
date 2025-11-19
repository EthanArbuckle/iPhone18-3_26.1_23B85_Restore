@interface HKMedicalRecord(HDDataEntity)
- (uint64_t)hd_insertRelatedDataWithPersistentID:()HDDataEntity insertionContext:profile:transaction:error:;
@end

@implementation HKMedicalRecord(HDDataEntity)

- (uint64_t)hd_insertRelatedDataWithPersistentID:()HDDataEntity insertionContext:profile:transaction:error:
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v24.receiver = a1;
  v24.super_class = &off_283D35CB8;
  v16 = objc_msgSendSuper2(&v24, sel_hd_insertRelatedDataWithPersistentID_insertionContext_profile_transaction_error_, v12, v13, v14, v15, a7);
  v17 = [v14 daemon];
  v18 = [v17 behavior];

  if ([v18 supportsOntology])
  {
    v20 = v12;
    v21 = v13;
    v22 = v14;
    v23 = v15;
    v16 = HKWithAutoreleasePool();
  }

  return v16;
}

@end