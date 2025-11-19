@interface HDAppSubscriptionEntity
+ (BOOL)addSubscriptionWithBundleID:(id)a3 dataCode:(int64_t)a4 updateFrequency:(unint64_t)a5 profile:(id)a6 error:(id *)a7;
+ (BOOL)removeSubscriptionsWithBundleID:(id)a3 dataCode:(int64_t)a4 profile:(id)a5 error:(id *)a6;
+ (BOOL)setLastAnchor:(id)a3 lastAckTime:(id)a4 forBundleID:(id)a5 dataTypes:(id)a6 profile:(id)a7 error:(id *)a8;
+ (BOOL)setLaunchTimeHysteresis:(id)a3 forBundleID:(id)a4 dataTypes:(id)a5 profile:(id)a6 error:(id *)a7;
+ (id)_predicateForBundleID:(uint64_t)a3 dataCode:;
+ (id)_predicateForBundleID:(void *)a3 dataTypes:;
+ (id)_predicateForBundleIdentifier:(uint64_t)a1;
+ (id)_predicateForDataCode:(uint64_t)a1;
+ (id)_subscriptionsWithPredicate:(void *)a3 profile:(uint64_t)a4 error:;
+ (id)allSubscriptionsForBundleID:(id)a3 profile:(id)a4 error:(id *)a5;
+ (id)allSubscriptionsForType:(int64_t)a3 profile:(id)a4 error:(id *)a5;
+ (id)subscriptionForBundleID:(id)a3 dataCode:(int64_t)a4 profile:(id)a5 error:(id *)a6;
+ (id)uniquedColumns;
@end

@implementation HDAppSubscriptionEntity

+ (BOOL)addSubscriptionWithBundleID:(id)a3 dataCode:(int64_t)a4 updateFrequency:(unint64_t)a5 profile:(id)a6 error:(id *)a7
{
  v27[3] = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a6;
  if (!v13)
  {
    v21 = [MEMORY[0x277CCA890] currentHandler];
    [v21 handleFailureInMethod:a2 object:a1 file:@"HDAppSubscriptionEntity.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"bundleID != nil"}];

    if ((a4 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v22 = [MEMORY[0x277CCA890] currentHandler];
    [v22 handleFailureInMethod:a2 object:a1 file:@"HDAppSubscriptionEntity.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"dataCode >= 0"}];

    goto LABEL_3;
  }

  if (a4 < 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v15 = [v14 database];
  v27[0] = @"bundle_id";
  v27[1] = @"code";
  v27[2] = @"update_frequency";
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:3];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __94__HDAppSubscriptionEntity_addSubscriptionWithBundleID_dataCode_updateFrequency_profile_error___block_invoke;
  v23[3] = &unk_27862EDD8;
  v24 = v13;
  v25 = a4;
  v26 = a5;
  v17 = v13;
  v18 = [a1 insertOrReplaceEntity:1 healthDatabase:v15 properties:v16 error:a7 bindingHandler:v23];

  v19 = *MEMORY[0x277D85DE8];
  return v18 != 0;
}

void __94__HDAppSubscriptionEntity_addSubscriptionWithBundleID_dataCode_updateFrequency_profile_error___block_invoke(void *a1, uint64_t a2)
{
  MEMORY[0x22AAC6BD0](a2, @"bundle_id", a1[4]);
  MEMORY[0x22AAC6B90](a2, @"code", a1[5]);
  v4 = a1[6];

  JUMPOUT(0x22AAC6B90);
}

+ (BOOL)removeSubscriptionsWithBundleID:(id)a3 dataCode:(int64_t)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = [(HDAppSubscriptionEntity *)a1 _predicateForBundleID:a3 dataCode:a4];
  v12 = [v10 database];

  LOBYTE(a6) = [a1 deleteEntitiesWithPredicate:v11 healthDatabase:v12 error:a6];
  return a6;
}

+ (id)_predicateForBundleID:(uint64_t)a3 dataCode:
{
  v4 = a2;
  v5 = objc_opt_self();
  v6 = [(HDAppSubscriptionEntity *)v5 _predicateForBundleIdentifier:v4];

  v7 = [(HDAppSubscriptionEntity *)v5 _predicateForDataCode:a3];
  v8 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v7 otherPredicate:v6];

  return v8;
}

+ (id)allSubscriptionsForType:(int64_t)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [(HDAppSubscriptionEntity *)a1 _predicateForDataCode:a3];
  v10 = [(HDAppSubscriptionEntity *)a1 _subscriptionsWithPredicate:v9 profile:v8 error:a5];

  return v10;
}

+ (id)_predicateForDataCode:(uint64_t)a1
{
  objc_opt_self();
  if (_HKValidDataTypeCode())
  {
    v3 = MEMORY[0x277D10B18];
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
    v5 = [v3 predicateWithProperty:@"code" equalToValue:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_subscriptionsWithPredicate:(void *)a3 profile:(uint64_t)a4 error:
{
  v18[7] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a2;
  v8 = objc_opt_self();
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18[0] = @"bundle_id";
  v18[1] = @"code";
  v18[2] = @"update_frequency";
  v18[3] = @"last_anchor";
  v18[4] = @"last_ack_time";
  v18[5] = @"launch_time_hysteresis";
  v18[6] = @"last_association_anchor";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:7];
  v11 = [v6 database];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __69__HDAppSubscriptionEntity__subscriptionsWithPredicate_profile_error___block_invoke;
  v16[3] = &unk_278615128;
  v12 = v9;
  v17 = v12;
  LODWORD(a4) = [v8 enumerateProperties:v10 withPredicate:v7 healthDatabase:v11 error:a4 enumerationHandler:v16];

  if (a4)
  {
    v13 = [v12 copy];
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)allSubscriptionsForBundleID:(id)a3 profile:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  if (!v9)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"HDAppSubscriptionEntity.m" lineNumber:92 description:{@"Invalid parameter not satisfying: %@", @"bundleID != nil"}];
  }

  v11 = [(HDAppSubscriptionEntity *)a1 _predicateForBundleIdentifier:v9];
  v12 = [(HDAppSubscriptionEntity *)a1 _subscriptionsWithPredicate:v11 profile:v10 error:a5];

  return v12;
}

+ (id)_predicateForBundleIdentifier:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = [MEMORY[0x277D10B18] predicateWithProperty:@"bundle_id" equalToValue:v2];

  return v3;
}

+ (id)subscriptionForBundleID:(id)a3 dataCode:(int64_t)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = [(HDAppSubscriptionEntity *)a1 _predicateForBundleID:a3 dataCode:a4];
  v12 = [(HDAppSubscriptionEntity *)a1 _subscriptionsWithPredicate:v11 profile:v10 error:a6];

  v13 = [v12 firstObject];

  return v13;
}

+ (BOOL)setLastAnchor:(id)a3 lastAckTime:(id)a4 forBundleID:(id)a5 dataTypes:(id)a6 profile:(id)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a7;
  v17 = [(HDAppSubscriptionEntity *)a1 _predicateForBundleID:a5 dataTypes:a6];
  v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{@"last_ack_time", 0}];
  v19 = [v14 dataAnchor];

  if (v19)
  {
    [v18 addObject:@"last_anchor"];
  }

  v20 = [v14 associationAnchor];

  if (v20)
  {
    [v18 addObject:@"last_association_anchor"];
  }

  v21 = [v16 database];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __89__HDAppSubscriptionEntity_setLastAnchor_lastAckTime_forBundleID_dataTypes_profile_error___block_invoke;
  v26[3] = &unk_278613DE8;
  v27 = v14;
  v28 = v15;
  v22 = v15;
  v23 = v14;
  v24 = [a1 updateProperties:v18 predicate:v17 healthDatabase:v21 error:a8 bindingHandler:v26];

  return v24;
}

+ (id)_predicateForBundleID:(void *)a3 dataTypes:
{
  v4 = a3;
  v5 = a2;
  v6 = objc_opt_self();
  v7 = [(HDAppSubscriptionEntity *)v6 _predicateForBundleIdentifier:v5];

  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __59__HDAppSubscriptionEntity__predicateForBundleID_dataTypes___block_invoke;
  v16 = &unk_27862EE00;
  v17 = v8;
  v18 = v6;
  v9 = v8;
  [v4 enumerateObjectsUsingBlock:&v13];

  v10 = [MEMORY[0x277D10B20] predicateMatchingAnyPredicates:{v9, v13, v14, v15, v16}];
  v11 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v10 otherPredicate:v7];

  return v11;
}

void __89__HDAppSubscriptionEntity_setLastAnchor_lastAckTime_forBundleID_dataTypes_profile_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) dataAnchor];

  if (v4)
  {
    v5 = [*(a1 + 32) dataAnchor];
    MEMORY[0x22AAC6BB0](a2, @"last_anchor", v5);
  }

  v6 = [*(a1 + 32) associationAnchor];

  if (v6)
  {
    v7 = [*(a1 + 32) associationAnchor];
    MEMORY[0x22AAC6BB0](a2, @"last_association_anchor", v7);
  }

  v8 = *(a1 + 40);

  JUMPOUT(0x22AAC6BB0);
}

+ (BOOL)setLaunchTimeHysteresis:(id)a3 forBundleID:(id)a4 dataTypes:(id)a5 profile:(id)a6 error:(id *)a7
{
  v22[1] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a6;
  v14 = [(HDAppSubscriptionEntity *)a1 _predicateForBundleID:a4 dataTypes:a5];
  v22[0] = @"launch_time_hysteresis";
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v16 = [v13 database];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __87__HDAppSubscriptionEntity_setLaunchTimeHysteresis_forBundleID_dataTypes_profile_error___block_invoke;
  v20[3] = &unk_278614508;
  v21 = v12;
  v17 = v12;
  LOBYTE(a7) = [a1 updateProperties:v15 predicate:v14 healthDatabase:v16 error:a7 bindingHandler:v20];

  v18 = *MEMORY[0x277D85DE8];
  return a7;
}

uint64_t __69__HDAppSubscriptionEntity__subscriptionsWithPredicate_profile_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [HDAppSubscription alloc];
  v7 = MEMORY[0x22AAC6C90](a4, 0);
  v8 = [(HDAppSubscription *)v6 initWithBundleIdentifier:v7 dataCode:HDSQLiteColumnAsInt64()];

  [(HDAppSubscription *)v8 setUpdateFrequency:HDSQLiteColumnAsInt64()];
  [(HDAppSubscription *)v8 setLastAnchor:HDSQLiteColumnAsInt64()];
  [(HDAppSubscription *)v8 setLastAckTime:HDSQLiteColumnAsInt64()];
  [(HDAppSubscription *)v8 setLaunchTimeHysteresis:HDSQLiteColumnAsInt64()];
  [(HDAppSubscription *)v8 setLastAssociationAnchor:HDSQLiteColumnAsInt64()];
  [*(a1 + 32) addObject:v8];

  return 1;
}

void __59__HDAppSubscriptionEntity__predicateForBundleID_dataTypes___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = +[HDAppSubscriptionEntity _predicateForDataCode:](*(a1 + 40), [a2 code]);
  [v2 addObject:v3];
}

+ (id)uniquedColumns
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"bundle_id";
  v5[1] = @"code";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end