@interface HDAppSubscriptionEntity
+ (BOOL)addSubscriptionWithBundleID:(id)d dataCode:(int64_t)code updateFrequency:(unint64_t)frequency profile:(id)profile error:(id *)error;
+ (BOOL)removeSubscriptionsWithBundleID:(id)d dataCode:(int64_t)code profile:(id)profile error:(id *)error;
+ (BOOL)setLastAnchor:(id)anchor lastAckTime:(id)time forBundleID:(id)d dataTypes:(id)types profile:(id)profile error:(id *)error;
+ (BOOL)setLaunchTimeHysteresis:(id)hysteresis forBundleID:(id)d dataTypes:(id)types profile:(id)profile error:(id *)error;
+ (id)_predicateForBundleID:(uint64_t)d dataCode:;
+ (id)_predicateForBundleID:(void *)d dataTypes:;
+ (id)_predicateForBundleIdentifier:(uint64_t)identifier;
+ (id)_predicateForDataCode:(uint64_t)code;
+ (id)_subscriptionsWithPredicate:(void *)predicate profile:(uint64_t)profile error:;
+ (id)allSubscriptionsForBundleID:(id)d profile:(id)profile error:(id *)error;
+ (id)allSubscriptionsForType:(int64_t)type profile:(id)profile error:(id *)error;
+ (id)subscriptionForBundleID:(id)d dataCode:(int64_t)code profile:(id)profile error:(id *)error;
+ (id)uniquedColumns;
@end

@implementation HDAppSubscriptionEntity

+ (BOOL)addSubscriptionWithBundleID:(id)d dataCode:(int64_t)code updateFrequency:(unint64_t)frequency profile:(id)profile error:(id *)error
{
  v27[3] = *MEMORY[0x277D85DE8];
  dCopy = d;
  profileCopy = profile;
  if (!dCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDAppSubscriptionEntity.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"bundleID != nil"}];

    if ((code & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDAppSubscriptionEntity.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"dataCode >= 0"}];

    goto LABEL_3;
  }

  if (code < 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  database = [profileCopy database];
  v27[0] = @"bundle_id";
  v27[1] = @"code";
  v27[2] = @"update_frequency";
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:3];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __94__HDAppSubscriptionEntity_addSubscriptionWithBundleID_dataCode_updateFrequency_profile_error___block_invoke;
  v23[3] = &unk_27862EDD8;
  v24 = dCopy;
  codeCopy = code;
  frequencyCopy = frequency;
  v17 = dCopy;
  v18 = [self insertOrReplaceEntity:1 healthDatabase:database properties:v16 error:error bindingHandler:v23];

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

+ (BOOL)removeSubscriptionsWithBundleID:(id)d dataCode:(int64_t)code profile:(id)profile error:(id *)error
{
  profileCopy = profile;
  v11 = [(HDAppSubscriptionEntity *)self _predicateForBundleID:d dataCode:code];
  database = [profileCopy database];

  LOBYTE(error) = [self deleteEntitiesWithPredicate:v11 healthDatabase:database error:error];
  return error;
}

+ (id)_predicateForBundleID:(uint64_t)d dataCode:
{
  v4 = a2;
  v5 = objc_opt_self();
  v6 = [(HDAppSubscriptionEntity *)v5 _predicateForBundleIdentifier:v4];

  v7 = [(HDAppSubscriptionEntity *)v5 _predicateForDataCode:d];
  v8 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v7 otherPredicate:v6];

  return v8;
}

+ (id)allSubscriptionsForType:(int64_t)type profile:(id)profile error:(id *)error
{
  profileCopy = profile;
  v9 = [(HDAppSubscriptionEntity *)self _predicateForDataCode:type];
  v10 = [(HDAppSubscriptionEntity *)self _subscriptionsWithPredicate:v9 profile:profileCopy error:error];

  return v10;
}

+ (id)_predicateForDataCode:(uint64_t)code
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

+ (id)_subscriptionsWithPredicate:(void *)predicate profile:(uint64_t)profile error:
{
  v18[7] = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
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
  database = [predicateCopy database];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __69__HDAppSubscriptionEntity__subscriptionsWithPredicate_profile_error___block_invoke;
  v16[3] = &unk_278615128;
  v12 = v9;
  v17 = v12;
  LODWORD(profile) = [v8 enumerateProperties:v10 withPredicate:v7 healthDatabase:database error:profile enumerationHandler:v16];

  if (profile)
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

+ (id)allSubscriptionsForBundleID:(id)d profile:(id)profile error:(id *)error
{
  dCopy = d;
  profileCopy = profile;
  if (!dCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDAppSubscriptionEntity.m" lineNumber:92 description:{@"Invalid parameter not satisfying: %@", @"bundleID != nil"}];
  }

  v11 = [(HDAppSubscriptionEntity *)self _predicateForBundleIdentifier:dCopy];
  v12 = [(HDAppSubscriptionEntity *)self _subscriptionsWithPredicate:v11 profile:profileCopy error:error];

  return v12;
}

+ (id)_predicateForBundleIdentifier:(uint64_t)identifier
{
  v2 = a2;
  objc_opt_self();
  v3 = [MEMORY[0x277D10B18] predicateWithProperty:@"bundle_id" equalToValue:v2];

  return v3;
}

+ (id)subscriptionForBundleID:(id)d dataCode:(int64_t)code profile:(id)profile error:(id *)error
{
  profileCopy = profile;
  v11 = [(HDAppSubscriptionEntity *)self _predicateForBundleID:d dataCode:code];
  v12 = [(HDAppSubscriptionEntity *)self _subscriptionsWithPredicate:v11 profile:profileCopy error:error];

  firstObject = [v12 firstObject];

  return firstObject;
}

+ (BOOL)setLastAnchor:(id)anchor lastAckTime:(id)time forBundleID:(id)d dataTypes:(id)types profile:(id)profile error:(id *)error
{
  anchorCopy = anchor;
  timeCopy = time;
  profileCopy = profile;
  v17 = [(HDAppSubscriptionEntity *)self _predicateForBundleID:d dataTypes:types];
  v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{@"last_ack_time", 0}];
  dataAnchor = [anchorCopy dataAnchor];

  if (dataAnchor)
  {
    [v18 addObject:@"last_anchor"];
  }

  associationAnchor = [anchorCopy associationAnchor];

  if (associationAnchor)
  {
    [v18 addObject:@"last_association_anchor"];
  }

  database = [profileCopy database];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __89__HDAppSubscriptionEntity_setLastAnchor_lastAckTime_forBundleID_dataTypes_profile_error___block_invoke;
  v26[3] = &unk_278613DE8;
  v27 = anchorCopy;
  v28 = timeCopy;
  v22 = timeCopy;
  v23 = anchorCopy;
  v24 = [self updateProperties:v18 predicate:v17 healthDatabase:database error:error bindingHandler:v26];

  return v24;
}

+ (id)_predicateForBundleID:(void *)d dataTypes:
{
  dCopy = d;
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
  [dCopy enumerateObjectsUsingBlock:&v13];

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

+ (BOOL)setLaunchTimeHysteresis:(id)hysteresis forBundleID:(id)d dataTypes:(id)types profile:(id)profile error:(id *)error
{
  v22[1] = *MEMORY[0x277D85DE8];
  hysteresisCopy = hysteresis;
  profileCopy = profile;
  v14 = [(HDAppSubscriptionEntity *)self _predicateForBundleID:d dataTypes:types];
  v22[0] = @"launch_time_hysteresis";
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  database = [profileCopy database];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __87__HDAppSubscriptionEntity_setLaunchTimeHysteresis_forBundleID_dataTypes_profile_error___block_invoke;
  v20[3] = &unk_278614508;
  v21 = hysteresisCopy;
  v17 = hysteresisCopy;
  LOBYTE(error) = [self updateProperties:v15 predicate:v14 healthDatabase:database error:error bindingHandler:v20];

  v18 = *MEMORY[0x277D85DE8];
  return error;
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