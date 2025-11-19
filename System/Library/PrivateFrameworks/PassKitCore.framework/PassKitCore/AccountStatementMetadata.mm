@interface AccountStatementMetadata
+ (id)_commonDictionaryForStatementMetadata:(id)a3;
+ (id)_predicateForPID:(int64_t)a3;
+ (id)_predicateForStatementIdentifier:(id)a3 accountIdentifier:(id)a4;
+ (id)_propertySettersForAccountStatementTransactionMetadata;
+ (id)_statementMetadataWithQuery:(id)a3;
+ (id)accountStatementMetadataForAccountIdentifier:(id)a3 inDatabase:(id)a4;
+ (id)anyInDatabase:(id)a3 forPID:(int64_t)a4;
+ (id)anyInDatabase:(id)a3 forStatementIdentifier:(id)a4 accountIdentifier:(id)a5;
+ (id)insertOrUpdateAccountStatementMetadata:(id)a3 inDatabase:(id)a4;
+ (id)latestStatementIdentifierThatNeedsMetadataProcessingForAccountIdentifier:(id)a3 tableName:(id)a4 statementIdentifierColumn:(id)a5 accountIdentifierColumn:(id)a6 openingDateColumn:(id)a7 maxProcessedAttemptCount:(int64_t)a8 inDatabase:(id)a9;
+ (void)addJoinClausesForProperty:(id)a3 toJoins:(id)a4;
+ (void)deleteAccountStatementMetadataForStatementIdentifier:(id)a3 accountIdentifier:(id)a4 inDatabase:(id)a5;
+ (void)openingDate:(id *)a3 closingDate:(id *)a4 statementIdentifier:(id)a5 accountIdentifier:(id)a6 accountType:(unint64_t)a7 inDatabase:(id)a8;
- (AccountStatementMetadata)initWithStatementMetadata:(id)a3 inDatabase:(id)a4;
- (BOOL)deleteFromDatabase;
- (id)accountStatementMetadata;
- (int64_t)reportCount;
- (unint64_t)accountType;
- (void)markStatementMetadataItems:(id)a3 processed:(BOOL)a4 error:(unint64_t)a5;
- (void)updateWithAccountStatementMetadata:(id)a3;
- (void)updateWithReport:(id)a3 reportDate:(id)a4;
@end

@implementation AccountStatementMetadata

+ (void)addJoinClausesForProperty:(id)a3 toJoins:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v5;
  v9 = v7;
  if (v7 == @"pears.c" || v7 && (v8 = [@"pears.c" isEqualToString:v7], v9, v8))
  {
    [v6 addObject:@"JOIN pears ON pears.a = account_statement_metadata.account_identifier"];
  }
}

- (AccountStatementMetadata)initWithStatementMetadata:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() _commonDictionaryForStatementMetadata:v7];

  v9 = [(SQLiteEntity *)self initWithPropertyValues:v8 inDatabase:v6];
  return v9;
}

+ (id)insertOrUpdateAccountStatementMetadata:(id)a3 inDatabase:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 statementIdentifier];
  v9 = [v6 accountIdentifier];
  v10 = [a1 anyInDatabase:v7 forStatementIdentifier:v8 accountIdentifier:v9];

  if (v10)
  {
    [v10 updateWithAccountStatementMetadata:v6];
  }

  else
  {
    v10 = [objc_alloc(objc_opt_class()) initWithStatementMetadata:v6 inDatabase:v7];
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100132DC0;
  v17[3] = &unk_100843068;
  v11 = v10;
  v18 = v11;
  v19 = v6;
  v20 = v7;
  v21 = a1;
  v12 = v7;
  v13 = v6;
  sub_1005D4424(v12, v17);
  v14 = v20;
  v15 = v11;

  return v11;
}

+ (void)deleteAccountStatementMetadataForStatementIdentifier:(id)a3 accountIdentifier:(id)a4 inDatabase:(id)a5
{
  v8 = a5;
  v10 = [a1 _predicateForStatementIdentifier:a3 accountIdentifier:a4];
  v9 = [a1 queryWithDatabase:v8 predicate:v10];

  [v9 deleteAllEntities];
}

- (BOOL)deleteFromDatabase
{
  v3 = [(SQLiteEntity *)self persistentID];
  v4 = [(SQLiteEntity *)self database];
  [AccountStatementMetadataItem deleteAccountStatementMetadataItemsForStatementMetadataPID:v3 inDatabase:v4];

  v6.receiver = self;
  v6.super_class = AccountStatementMetadata;
  return [(SQLiteEntity *)&v6 deleteFromDatabase];
}

+ (id)anyInDatabase:(id)a3 forStatementIdentifier:(id)a4 accountIdentifier:(id)a5
{
  v8 = a3;
  v9 = [a1 _predicateForStatementIdentifier:a4 accountIdentifier:a5];
  v10 = [a1 anyInDatabase:v8 predicate:v9];

  return v10;
}

+ (id)anyInDatabase:(id)a3 forPID:(int64_t)a4
{
  v6 = a3;
  v7 = [a1 _predicateForPID:a4];
  v8 = [a1 anyInDatabase:v6 predicate:v7];

  return v8;
}

+ (id)accountStatementMetadataForAccountIdentifier:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForAccountIdentifier:a3];
  v8 = [a1 queryWithDatabase:v6 predicate:v7];

  v9 = [a1 _statementMetadataWithQuery:v8];

  return v9;
}

+ (id)_statementMetadataWithQuery:(id)a3
{
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_1001332F0;
  v10 = &unk_10083ED50;
  v11 = a3;
  v3 = objc_alloc_init(NSMutableArray);
  v12 = v3;
  v4 = v11;
  [v4 enumeratePersistentIDsUsingBlock:&v7];
  if ([v3 count])
  {
    v5 = [v3 copy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)latestStatementIdentifierThatNeedsMetadataProcessingForAccountIdentifier:(id)a3 tableName:(id)a4 statementIdentifierColumn:(id)a5 accountIdentifierColumn:(id)a6 openingDateColumn:(id)a7 maxProcessedAttemptCount:(int64_t)a8 inDatabase:(id)a9
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a9;
  v20 = objc_alloc_init(PDSQLiteDatabaseBinding);
  v21 = [NSString stringWithFormat:@"    SELECT DISTINCT        %@ AS statement_identifier    FROM        %@    LEFT JOIN       account_statement_metadata       ON account_statement_metadata.statement_identifier = %@       AND account_statement_metadata.account_identifier = ?       AND account_statement_metadata.account_identifier = %@    LEFT JOIN       account_statement_metadata_item       ON account_statement_metadata_item.account_statement_metadata_pid = account_statement_metadata.pid    WHERE        account_statement_metadata.statement_identifier IS NULL        OR account_statement_metadata_item.has_been_processed = 0        OR account_statement_metadata_item.has_been_processed IS NULL        AND       (           account_statement_metadata_item.processed_attempt_count < ?            OR account_statement_metadata_item.processed_attempt_count IS NULL       )        AND       (           account_statement_metadata.has_been_processed = 0            OR account_statement_metadata.has_been_processed IS NULL       )    ORDER BY %@ DESC    LIMIT 1    ", v16, v15, v16, v17, v18];
  [(PDSQLiteDatabaseBinding *)v20 addTextBinding:v14];
  [(PDSQLiteDatabaseBinding *)v20 addIntBinding:a8];
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_100005B20;
  v36 = sub_10000B19C;
  v37 = 0;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1001335A8;
  v27[3] = &unk_100847CD8;
  v22 = v19;
  v28 = v22;
  v23 = v21;
  v29 = v23;
  v24 = v20;
  v30 = v24;
  v31 = &v32;
  sub_1005D4424(v22, v27);
  v25 = v33[5];

  _Block_object_dispose(&v32, 8);

  return v25;
}

- (void)updateWithAccountStatementMetadata:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _commonDictionaryForStatementMetadata:v4];

  [(SQLiteEntity *)self setValuesWithDictionary:v5];
}

- (void)markStatementMetadataItems:(id)a3 processed:(BOOL)a4 error:(unint64_t)a5
{
  v8 = a3;
  [(SQLiteEntity *)self database];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100133804;
  v11[3] = &unk_100847D00;
  v11[4] = self;
  v12 = v8;
  v13 = v15 = a4;
  v14 = a5;
  v9 = v13;
  v10 = v8;
  sub_1005D4424(v9, v11);
}

- (void)updateWithReport:(id)a3 reportDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(SQLiteEntity *)self database];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10013398C;
  v11[3] = &unk_100841768;
  v11[4] = self;
  v12 = v7;
  v14 = v13 = v6;
  v8 = v14;
  v9 = v6;
  v10 = v7;
  sub_1005D4424(v8, v11);
}

- (id)accountStatementMetadata
{
  v3 = [objc_opt_class() _propertySettersForAccountStatementTransactionMetadata];
  v4 = objc_alloc_init(PKAccountStatementMetadata);
  v5 = [v3 allKeys];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100133BB0;
  v14[3] = &unk_10083BEE0;
  v14[4] = self;
  v15 = v3;
  v6 = v4;
  v16 = v6;
  v7 = v3;
  [(SQLiteEntity *)self getValuesForProperties:v5 withApplier:v14];

  v8 = [(SQLiteEntity *)self persistentID];
  v9 = [(SQLiteEntity *)self database];
  v10 = [AccountStatementMetadataItem accountStatementMetadataItemsForStatementMetadataPID:v8 inDatabase:v9];
  [v6 setItems:v10];

  v11 = v16;
  v12 = v6;

  return v6;
}

- (unint64_t)accountType
{
  v2 = [(SQLiteEntity *)self valueForProperty:@"pears.c"];
  v3 = [v2 integerValue];

  return v3;
}

- (int64_t)reportCount
{
  v2 = [(SQLiteEntity *)self valueForProperty:@"report_count"];
  v3 = [v2 integerValue];

  return v3;
}

+ (void)openingDate:(id *)a3 closingDate:(id *)a4 statementIdentifier:(id)a5 accountIdentifier:(id)a6 accountType:(unint64_t)a7 inDatabase:(id)a8
{
  v21 = a5;
  v13 = a6;
  v14 = a8;
  if (a7 == 4)
  {
    v15 = [SavingsAccountStatement anyInDatabase:v14 withStatementIdentifier:v21 accountIdentifier:v13];
LABEL_5:
    v16 = v15;
    v17 = [v15 openingDate];
    v18 = [v16 closingDate];

    if (!a3)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (a7 == 1)
  {
    v15 = [CreditAccountStatement creditAccountStatementWithIdentifier:v21 inDatabase:v14];
    goto LABEL_5;
  }

  v18 = 0;
  v17 = 0;
  if (a3)
  {
LABEL_6:
    v19 = v17;
    *a3 = v17;
  }

LABEL_7:
  if (a4)
  {
    v20 = v18;
    *a4 = v18;
  }
}

+ (id)_predicateForPID:(int64_t)a3
{
  v3 = [NSNumber numberWithLongLong:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"pid" equalToValue:v3];

  return v4;
}

+ (id)_predicateForStatementIdentifier:(id)a3 accountIdentifier:(id)a4
{
  v6 = a3;
  v7 = [a1 _predicateForAccountIdentifier:a4];
  v12[0] = v7;
  v8 = [a1 _predicateForStatementIdentifier:v6];

  v12[1] = v8;
  v9 = [NSArray arrayWithObjects:v12 count:2];
  v10 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v9];

  return v10;
}

+ (id)_propertySettersForAccountStatementTransactionMetadata
{
  v4[0] = @"statement_identifier";
  v4[1] = @"account_identifier";
  v5[0] = &stru_100847D40;
  v5[1] = &stru_100847D60;
  v4[2] = @"opening_date";
  v4[3] = @"closing_date";
  v5[2] = &stru_100847D80;
  v5[3] = &stru_100847DA0;
  v4[4] = @"has_been_processed";
  v4[5] = @"last_report_date";
  v5[4] = &stru_100847DC0;
  v5[5] = &stru_100847DE0;
  v4[6] = @"report_count";
  v4[7] = @"pears.c";
  v5[6] = &stru_100847E00;
  v5[7] = &stru_100847E20;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:8];

  return v2;
}

+ (id)_commonDictionaryForStatementMetadata:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = [v3 accountIdentifier];
  [v4 setObjectOrNull:v5 forKey:@"account_identifier"];

  v6 = [v3 statementIdentifier];
  [v4 setObjectOrNull:v6 forKey:@"statement_identifier"];

  v7 = [v3 lastReportDate];
  v8 = _SQLValueForDate();
  [v4 setObjectOrNull:v8 forKey:@"last_report_date"];

  v9 = [v3 reportCount];
  v10 = [NSNumber numberWithInteger:v9];
  [v4 setObjectOrNull:v10 forKey:@"report_count"];

  return v4;
}

@end