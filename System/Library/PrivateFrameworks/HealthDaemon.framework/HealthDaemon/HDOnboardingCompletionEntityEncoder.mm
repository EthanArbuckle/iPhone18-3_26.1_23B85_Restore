@interface HDOnboardingCompletionEntityEncoder
- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
@end

@implementation HDOnboardingCompletionEntityEncoder

- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  v5 = objc_alloc_init(HDCodableOnboardingCompletion);
  v6 = HDSQLiteColumnWithNameAsUUID();
  hk_dataForUUIDBytes = [v6 hk_dataForUUIDBytes];
  [(HDCodableOnboardingCompletion *)v5 setUuid:hk_dataForUUIDBytes];

  v8 = HDSQLiteColumnWithNameAsString();
  if (([v8 isEqualToString:&stru_283BF39C8] & 1) == 0)
  {
    [(HDCodableOnboardingCompletion *)v5 setFeatureIdentifier:v8];
  }

  v9 = HDSQLiteColumnWithNameAsInt64();
  if (v9 >= 1)
  {
    [(HDCodableOnboardingCompletion *)v5 setVersion:v9];
  }

  HDSQLiteColumnWithNameAsDouble();
  [(HDCodableOnboardingCompletion *)v5 setCompletionDate:?];
  v10 = HDSQLiteColumnWithNameAsString();
  [(HDCodableOnboardingCompletion *)v5 setCountryCode:v10];

  [(HDCodableOnboardingCompletion *)v5 setCountryCodeProvenance:HDSQLiteColumnWithNameAsInt64()];
  HDSQLiteColumnWithNameAsDouble();
  [(HDCodableOnboardingCompletion *)v5 setModificationDate:?];
  [(HDCodableOnboardingCompletion *)v5 setDeleted:HDSQLiteColumnWithNameAsBoolean()];

  return v5;
}

@end