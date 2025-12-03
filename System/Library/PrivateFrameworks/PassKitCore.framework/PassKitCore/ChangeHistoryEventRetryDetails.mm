@interface ChangeHistoryEventRetryDetails
+ (id)_predicateForEvent:(id)event;
+ (id)_predicateForRecordUniqueID:(id)d recordType:(int64_t)type;
+ (id)retryDateForEvent:(id)event inDatabase:(id)database;
+ (void)deleteRetryDetailsForEventUniqueIdentifier:(id)identifier recordType:(int64_t)type inDatabase:(id)database;
+ (void)increaseRetryIntervalForRecordUniqueIdenifier:(id)idenifier recordType:(int64_t)type inDatabase:(id)database;
- (ChangeHistoryEventRetryDetails)initWithRecordUniqueIdenifier:(id)idenifier recordType:(int64_t)type inDatabase:(id)database;
- (id)retryDate;
- (int64_t)retryInterval;
- (void)increaseRetryInterval;
@end

@implementation ChangeHistoryEventRetryDetails

- (ChangeHistoryEventRetryDetails)initWithRecordUniqueIdenifier:(id)idenifier recordType:(int64_t)type inDatabase:(id)database
{
  databaseCopy = database;
  idenifierCopy = idenifier;
  v10 = objc_alloc_init(NSMutableDictionary);
  [v10 setObjectOrNull:idenifierCopy forKey:@"event_unique_identifier"];

  v11 = [NSNumber numberWithInteger:type];
  [v10 setObjectOrNull:v11 forKey:@"event_record_type"];

  v14.receiver = self;
  v14.super_class = ChangeHistoryEventRetryDetails;
  v12 = [(SQLiteEntity *)&v14 initWithPropertyValues:v10 inDatabase:databaseCopy];

  return v12;
}

- (void)increaseRetryInterval
{
  retryInterval = [(ChangeHistoryEventRetryDetails *)self retryInterval];
  if ((retryInterval + 1) < 9)
  {
    v4 = retryInterval + 1;
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

+ (void)increaseRetryIntervalForRecordUniqueIdenifier:(id)idenifier recordType:(int64_t)type inDatabase:(id)database
{
  idenifierCopy = idenifier;
  databaseCopy = database;
  v10 = [self _predicateForRecordUniqueID:idenifierCopy recordType:type];
  v11 = [self anyInDatabase:databaseCopy predicate:v10];

  if (!v11)
  {
    v11 = [[ChangeHistoryEventRetryDetails alloc] initWithRecordUniqueIdenifier:idenifierCopy recordType:type inDatabase:databaseCopy];
  }

  [(ChangeHistoryEventRetryDetails *)v11 increaseRetryInterval];
  retryDate = [(ChangeHistoryEventRetryDetails *)v11 retryDate];
  retryInterval = [(ChangeHistoryEventRetryDetails *)v11 retryInterval];
  v14 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543874;
    v16 = idenifierCopy;
    v17 = 2114;
    v18 = retryDate;
    v19 = 2050;
    v20 = retryInterval;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Updating ChangeHistoryEventRetryDetails for recordUniqueID %{public}@ with retryDate %{public}@ and retryInterval %{public}ld", &v15, 0x20u);
  }
}

+ (id)retryDateForEvent:(id)event inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForEvent:event];
  v8 = [self anyInDatabase:databaseCopy predicate:v7];

  retryDate = [v8 retryDate];

  return retryDate;
}

+ (void)deleteRetryDetailsForEventUniqueIdentifier:(id)identifier recordType:(int64_t)type inDatabase:(id)database
{
  identifierCopy = identifier;
  databaseCopy = database;
  v10 = [self _predicateForRecordUniqueID:identifierCopy recordType:type];
  v11 = [self anyInDatabase:databaseCopy predicate:v10];

  if (v11)
  {
    v12 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543618;
      v14 = identifierCopy;
      v15 = 2050;
      typeCopy = type;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Deleting ChangeHistoryEventRetryDetails for recordUniqueID %{public}@ and recordType %{public}ld", &v13, 0x16u);
    }

    [v11 deleteFromDatabase];
  }
}

+ (id)_predicateForEvent:(id)event
{
  eventCopy = event;
  recordUniqueID = [eventCopy recordUniqueID];
  recordType = [eventCopy recordType];

  v7 = [self _predicateForRecordUniqueID:recordUniqueID recordType:recordType];

  return v7;
}

+ (id)_predicateForRecordUniqueID:(id)d recordType:(int64_t)type
{
  v5 = [SQLiteComparisonPredicate predicateWithProperty:@"event_unique_identifier" equalToValue:d];
  v11[0] = v5;
  v6 = [NSNumber numberWithInteger:type];
  v7 = [SQLiteComparisonPredicate predicateWithProperty:@"event_record_type" equalToValue:v6];
  v11[1] = v7;
  v8 = [NSArray arrayWithObjects:v11 count:2];
  v9 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v8];

  return v9;
}

- (int64_t)retryInterval
{
  v2 = [(SQLiteEntity *)self valueForProperty:@"retry_interval"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (id)retryDate
{
  v2 = [(SQLiteEntity *)self valueForProperty:@"retry_date"];
  v3 = _DateForSQLValue();

  return v3;
}

@end