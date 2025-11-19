@interface ChangeHistoryEventRetryDetails
+ (id)_predicateForEvent:(id)a3;
+ (id)_predicateForRecordUniqueID:(id)a3 recordType:(int64_t)a4;
+ (id)retryDateForEvent:(id)a3 inDatabase:(id)a4;
+ (void)deleteRetryDetailsForEventUniqueIdentifier:(id)a3 recordType:(int64_t)a4 inDatabase:(id)a5;
+ (void)increaseRetryIntervalForRecordUniqueIdenifier:(id)a3 recordType:(int64_t)a4 inDatabase:(id)a5;
- (ChangeHistoryEventRetryDetails)initWithRecordUniqueIdenifier:(id)a3 recordType:(int64_t)a4 inDatabase:(id)a5;
- (id)retryDate;
- (int64_t)retryInterval;
- (void)increaseRetryInterval;
@end

@implementation ChangeHistoryEventRetryDetails

- (ChangeHistoryEventRetryDetails)initWithRecordUniqueIdenifier:(id)a3 recordType:(int64_t)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = objc_alloc_init(NSMutableDictionary);
  [v10 setObjectOrNull:v9 forKey:@"event_unique_identifier"];

  v11 = [NSNumber numberWithInteger:a4];
  [v10 setObjectOrNull:v11 forKey:@"event_record_type"];

  v14.receiver = self;
  v14.super_class = ChangeHistoryEventRetryDetails;
  v12 = [(SQLiteEntity *)&v14 initWithPropertyValues:v10 inDatabase:v8];

  return v12;
}

- (void)increaseRetryInterval
{
  v3 = [(ChangeHistoryEventRetryDetails *)self retryInterval];
  if ((v3 + 1) < 9)
  {
    v4 = v3 + 1;
  }

  else
  {
    v4 = 9;
  }

  v8 = [NSDate dateWithTimeIntervalSinceNow:dbl_10068E010[v4]];
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = _SQLValueForDate();
  [v5 setObjectOrNull:v6 forKey:@"retry_date"];

  v7 = [NSNumber numberWithInteger:v4];
  [v5 setObjectOrNull:v7 forKey:@"retry_interval"];

  [(SQLiteEntity *)self setValuesWithDictionary:v5];
}

+ (void)increaseRetryIntervalForRecordUniqueIdenifier:(id)a3 recordType:(int64_t)a4 inDatabase:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [a1 _predicateForRecordUniqueID:v8 recordType:a4];
  v11 = [a1 anyInDatabase:v9 predicate:v10];

  if (!v11)
  {
    v11 = [[ChangeHistoryEventRetryDetails alloc] initWithRecordUniqueIdenifier:v8 recordType:a4 inDatabase:v9];
  }

  [(ChangeHistoryEventRetryDetails *)v11 increaseRetryInterval];
  v12 = [(ChangeHistoryEventRetryDetails *)v11 retryDate];
  v13 = [(ChangeHistoryEventRetryDetails *)v11 retryInterval];
  v14 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543874;
    v16 = v8;
    v17 = 2114;
    v18 = v12;
    v19 = 2050;
    v20 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Updating ChangeHistoryEventRetryDetails for recordUniqueID %{public}@ with retryDate %{public}@ and retryInterval %{public}ld", &v15, 0x20u);
  }
}

+ (id)retryDateForEvent:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForEvent:a3];
  v8 = [a1 anyInDatabase:v6 predicate:v7];

  v9 = [v8 retryDate];

  return v9;
}

+ (void)deleteRetryDetailsForEventUniqueIdentifier:(id)a3 recordType:(int64_t)a4 inDatabase:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [a1 _predicateForRecordUniqueID:v8 recordType:a4];
  v11 = [a1 anyInDatabase:v9 predicate:v10];

  if (v11)
  {
    v12 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543618;
      v14 = v8;
      v15 = 2050;
      v16 = a4;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Deleting ChangeHistoryEventRetryDetails for recordUniqueID %{public}@ and recordType %{public}ld", &v13, 0x16u);
    }

    [v11 deleteFromDatabase];
  }
}

+ (id)_predicateForEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 recordUniqueID];
  v6 = [v4 recordType];

  v7 = [a1 _predicateForRecordUniqueID:v5 recordType:v6];

  return v7;
}

+ (id)_predicateForRecordUniqueID:(id)a3 recordType:(int64_t)a4
{
  v5 = [SQLiteComparisonPredicate predicateWithProperty:@"event_unique_identifier" equalToValue:a3];
  v11[0] = v5;
  v6 = [NSNumber numberWithInteger:a4];
  v7 = [SQLiteComparisonPredicate predicateWithProperty:@"event_record_type" equalToValue:v6];
  v11[1] = v7;
  v8 = [NSArray arrayWithObjects:v11 count:2];
  v9 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v8];

  return v9;
}

- (int64_t)retryInterval
{
  v2 = [(SQLiteEntity *)self valueForProperty:@"retry_interval"];
  v3 = [v2 integerValue];

  return v3;
}

- (id)retryDate
{
  v2 = [(SQLiteEntity *)self valueForProperty:@"retry_date"];
  v3 = _DateForSQLValue();

  return v3;
}

@end