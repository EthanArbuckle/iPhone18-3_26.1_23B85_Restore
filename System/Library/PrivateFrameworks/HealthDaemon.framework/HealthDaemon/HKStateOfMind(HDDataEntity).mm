@interface HKStateOfMind(HDDataEntity)
- (BOOL)hd_insertRelatedDataWithPersistentID:()HDDataEntity insertionContext:profile:transaction:error:;
@end

@implementation HKStateOfMind(HDDataEntity)

- (BOOL)hd_insertRelatedDataWithPersistentID:()HDDataEntity insertionContext:profile:transaction:error:
{
  v12 = a3;
  v13 = a6;
  v25.receiver = self;
  v25.super_class = &off_283D44F30;
  if (!objc_msgSendSuper2(&v25, sel_hd_insertRelatedDataWithPersistentID_insertionContext_profile_transaction_error_, v12, a4, a5, v13, a7))
  {
    goto LABEL_7;
  }

  labels = [self labels];
  v15 = [labels count];

  if (!v15 || (v16 = [v12 longLongValue], objc_msgSend(self, "labels"), v17 = objc_claimAutoreleasedReturnValue(), v18 = +[HDStateOfMindLabelEntity insertLabelsForObjectID:labels:transaction:error:](HDStateOfMindLabelEntity, "insertLabelsForObjectID:labels:transaction:error:", v16, v17, v13, a7), v17, v18))
  {
    domains = [self domains];
    v20 = [domains count];

    if (!v20 || (v21 = [v12 longLongValue], objc_msgSend(self, "domains"), v22 = objc_claimAutoreleasedReturnValue(), v23 = +[HDStateOfMindDomainEntity insertDomainsForObjectID:domains:transaction:error:](HDStateOfMindDomainEntity, "insertDomainsForObjectID:domains:transaction:error:", v21, v22, v13, a7), v22, v23))
    {
      v23 = 1;
    }
  }

  else
  {
LABEL_7:
    v23 = 0;
  }

  return v23;
}

@end