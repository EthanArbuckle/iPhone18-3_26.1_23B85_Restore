@interface AccountStatementMetadata
+ (id)_commonDictionaryForStatementMetadata:(id)metadata;
+ (id)_predicateForPID:(int64_t)d;
+ (id)_predicateForStatementIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier;
+ (id)_propertySettersForAccountStatementTransactionMetadata;
+ (id)_statementMetadataWithQuery:(id)query;
+ (id)accountStatementMetadataForAccountIdentifier:(id)identifier inDatabase:(id)database;
+ (id)anyInDatabase:(id)database forPID:(int64_t)d;
+ (id)anyInDatabase:(id)database forStatementIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier;
+ (id)insertOrUpdateAccountStatementMetadata:(id)metadata inDatabase:(id)database;
+ (id)latestStatementIdentifierThatNeedsMetadataProcessingForAccountIdentifier:(id)identifier tableName:(id)name statementIdentifierColumn:(id)column accountIdentifierColumn:(id)identifierColumn openingDateColumn:(id)dateColumn maxProcessedAttemptCount:(int64_t)count inDatabase:(id)database;
+ (void)addJoinClausesForProperty:(id)property toJoins:(id)joins;
+ (void)deleteAccountStatementMetadataForStatementIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier inDatabase:(id)database;
+ (void)openingDate:(id *)date closingDate:(id *)closingDate statementIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier accountType:(unint64_t)type inDatabase:(id)database;
- (AccountStatementMetadata)initWithStatementMetadata:(id)metadata inDatabase:(id)database;
- (BOOL)deleteFromDatabase;
- (id)accountStatementMetadata;
- (int64_t)reportCount;
- (unint64_t)accountType;
- (void)markStatementMetadataItems:(id)items processed:(BOOL)processed error:(unint64_t)error;
- (void)updateWithAccountStatementMetadata:(id)metadata;
- (void)updateWithReport:(id)report reportDate:(id)date;
@end

@implementation AccountStatementMetadata

+ (void)addJoinClausesForProperty:(id)property toJoins:(id)joins
{
  propertyCopy = property;
  joinsCopy = joins;
  v7 = propertyCopy;
  v9 = v7;
  if (v7 == @"pears.c" || v7 && (v8 = [@"pears.c" isEqualToString:v7], v9, v8))
  {
    [joinsCopy addObject:@"JOIN pears ON pears.a = account_statement_metadata.account_identifier"];
  }
}

- (AccountStatementMetadata)initWithStatementMetadata:(id)metadata inDatabase:(id)database
{
  databaseCopy = database;
  metadataCopy = metadata;
  v8 = [objc_opt_class() _commonDictionaryForStatementMetadata:metadataCopy];

  v9 = [(SQLiteEntity *)self initWithPropertyValues:v8 inDatabase:databaseCopy];
  return v9;
}

+ (id)insertOrUpdateAccountStatementMetadata:(id)metadata inDatabase:(id)database
{
  metadataCopy = metadata;
  databaseCopy = database;
  statementIdentifier = [metadataCopy statementIdentifier];
  accountIdentifier = [metadataCopy accountIdentifier];
  v10 = [self anyInDatabase:databaseCopy forStatementIdentifier:statementIdentifier accountIdentifier:accountIdentifier];

  if (v10)
  {
    [v10 updateWithAccountStatementMetadata:metadataCopy];
  }

  else
  {
    v10 = [objc_alloc(objc_opt_class()) initWithStatementMetadata:metadataCopy inDatabase:databaseCopy];
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100132DC0;
  v17[3] = &unk_100843068;
  v11 = v10;
  v18 = v11;
  v19 = metadataCopy;
  v20 = databaseCopy;
  selfCopy = self;
  v12 = databaseCopy;
  v13 = metadataCopy;
  sub_1005D4424(v12, v17);
  v14 = v20;
  v15 = v11;

  return v11;
}

+ (void)deleteAccountStatementMetadataForStatementIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier inDatabase:(id)database
{
  databaseCopy = database;
  v10 = [self _predicateForStatementIdentifier:identifier accountIdentifier:accountIdentifier];
  v9 = [self queryWithDatabase:databaseCopy predicate:v10];

  [v9 deleteAllEntities];
}

- (BOOL)deleteFromDatabase
{
  persistentID = [(SQLiteEntity *)self persistentID];
  database = [(SQLiteEntity *)self database];
  [AccountStatementMetadataItem deleteAccountStatementMetadataItemsForStatementMetadataPID:persistentID inDatabase:database];

  v6.receiver = self;
  v6.super_class = AccountStatementMetadata;
  return [(SQLiteEntity *)&v6 deleteFromDatabase];
}

+ (id)anyInDatabase:(id)database forStatementIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier
{
  databaseCopy = database;
  v9 = [self _predicateForStatementIdentifier:identifier accountIdentifier:accountIdentifier];
  v10 = [self anyInDatabase:databaseCopy predicate:v9];

  return v10;
}

+ (id)anyInDatabase:(id)database forPID:(int64_t)d
{
  databaseCopy = database;
  v7 = [self _predicateForPID:d];
  v8 = [self anyInDatabase:databaseCopy predicate:v7];

  return v8;
}

+ (id)accountStatementMetadataForAccountIdentifier:(id)identifier inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForAccountIdentifier:identifier];
  v8 = [self queryWithDatabase:databaseCopy predicate:v7];

  v9 = [self _statementMetadataWithQuery:v8];

  return v9;
}

+ (id)_statementMetadataWithQuery:(id)query
{
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_1001332F0;
  v10 = &unk_10083ED50;
  queryCopy = query;
  v3 = objc_alloc_init(NSMutableArray);
  v12 = v3;
  v4 = queryCopy;
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

+ (id)latestStatementIdentifierThatNeedsMetadataProcessingForAccountIdentifier:(id)identifier tableName:(id)name statementIdentifierColumn:(id)column accountIdentifierColumn:(id)identifierColumn openingDateColumn:(id)dateColumn maxProcessedAttemptCount:(int64_t)count inDatabase:(id)database
{
  identifierCopy = identifier;
  nameCopy = name;
  columnCopy = column;
  identifierColumnCopy = identifierColumn;
  dateColumnCopy = dateColumn;
  databaseCopy = database;
  v20 = objc_alloc_init(PDSQLiteDatabaseBinding);
  dateColumnCopy = [NSString stringWithFormat:@"    SELECT DISTINCT        %@ AS statement_identifier    FROM        %@    LEFT JOIN       account_statement_metadata       ON account_statement_metadata.statement_identifier = %@       AND account_statement_metadata.account_identifier = ?       AND account_statement_metadata.account_identifier = %@    LEFT JOIN       account_statement_metadata_item       ON account_statement_metadata_item.account_statement_metadata_pid = account_statement_metadata.pid    WHERE        account_statement_metadata.statement_identifier IS NULL        OR account_statement_metadata_item.has_been_processed = 0        OR account_statement_metadata_item.has_been_processed IS NULL        AND       (           account_statement_metadata_item.processed_attempt_count < ?            OR account_statement_metadata_item.processed_attempt_count IS NULL       )        AND       (           account_statement_metadata.has_been_processed = 0            OR account_statement_metadata.has_been_processed IS NULL       )    ORDER BY %@ DESC    LIMIT 1    ", columnCopy, nameCopy, columnCopy, identifierColumnCopy, dateColumnCopy];
  [(PDSQLiteDatabaseBinding *)v20 addTextBinding:identifierCopy];
  [(PDSQLiteDatabaseBinding *)v20 addIntBinding:count];
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
  v22 = databaseCopy;
  v28 = v22;
  v23 = dateColumnCopy;
  v29 = v23;
  v24 = v20;
  v30 = v24;
  v31 = &v32;
  sub_1005D4424(v22, v27);
  v25 = v33[5];

  _Block_object_dispose(&v32, 8);

  return v25;
}

- (void)updateWithAccountStatementMetadata:(id)metadata
{
  metadataCopy = metadata;
  v5 = [objc_opt_class() _commonDictionaryForStatementMetadata:metadataCopy];

  [(SQLiteEntity *)self setValuesWithDictionary:v5];
}

- (void)markStatementMetadataItems:(id)items processed:(BOOL)processed error:(unint64_t)error
{
  itemsCopy = items;
  [(SQLiteEntity *)self database];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100133804;
  v11[3] = &unk_100847D00;
  v11[4] = self;
  v12 = itemsCopy;
  v13 = v15 = processed;
  errorCopy = error;
  v9 = v13;
  v10 = itemsCopy;
  sub_1005D4424(v9, v11);
}

- (void)updateWithReport:(id)report reportDate:(id)date
{
  reportCopy = report;
  dateCopy = date;
  [(SQLiteEntity *)self database];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10013398C;
  v11[3] = &unk_100841768;
  v11[4] = self;
  v12 = dateCopy;
  v14 = v13 = reportCopy;
  v8 = v14;
  v9 = reportCopy;
  v10 = dateCopy;
  sub_1005D4424(v8, v11);
}

- (id)accountStatementMetadata
{
  _propertySettersForAccountStatementTransactionMetadata = [objc_opt_class() _propertySettersForAccountStatementTransactionMetadata];
  v4 = objc_alloc_init(PKAccountStatementMetadata);
  allKeys = [_propertySettersForAccountStatementTransactionMetadata allKeys];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100133BB0;
  v14[3] = &unk_10083BEE0;
  v14[4] = self;
  v15 = _propertySettersForAccountStatementTransactionMetadata;
  v6 = v4;
  v16 = v6;
  v7 = _propertySettersForAccountStatementTransactionMetadata;
  [(SQLiteEntity *)self getValuesForProperties:allKeys withApplier:v14];

  persistentID = [(SQLiteEntity *)self persistentID];
  database = [(SQLiteEntity *)self database];
  v10 = [AccountStatementMetadataItem accountStatementMetadataItemsForStatementMetadataPID:persistentID inDatabase:database];
  [v6 setItems:v10];

  v11 = v16;
  v12 = v6;

  return v6;
}

- (unint64_t)accountType
{
  v2 = [(SQLiteEntity *)self valueForProperty:@"pears.c"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (int64_t)reportCount
{
  v2 = [(SQLiteEntity *)self valueForProperty:@"report_count"];
  integerValue = [v2 integerValue];

  return integerValue;
}

+ (void)openingDate:(id *)date closingDate:(id *)closingDate statementIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier accountType:(unint64_t)type inDatabase:(id)database
{
  identifierCopy = identifier;
  accountIdentifierCopy = accountIdentifier;
  databaseCopy = database;
  if (type == 4)
  {
    v15 = [SavingsAccountStatement anyInDatabase:databaseCopy withStatementIdentifier:identifierCopy accountIdentifier:accountIdentifierCopy];
LABEL_5:
    v16 = v15;
    openingDate = [v15 openingDate];
    closingDate = [v16 closingDate];

    if (!date)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (type == 1)
  {
    v15 = [CreditAccountStatement creditAccountStatementWithIdentifier:identifierCopy inDatabase:databaseCopy];
    goto LABEL_5;
  }

  closingDate = 0;
  openingDate = 0;
  if (date)
  {
LABEL_6:
    v19 = openingDate;
    *date = openingDate;
  }

LABEL_7:
  if (closingDate)
  {
    v20 = closingDate;
    *closingDate = closingDate;
  }
}

+ (id)_predicateForPID:(int64_t)d
{
  v3 = [NSNumber numberWithLongLong:d];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"pid" equalToValue:v3];

  return v4;
}

+ (id)_predicateForStatementIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier
{
  identifierCopy = identifier;
  v7 = [self _predicateForAccountIdentifier:accountIdentifier];
  v12[0] = v7;
  v8 = [self _predicateForStatementIdentifier:identifierCopy];

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

+ (id)_commonDictionaryForStatementMetadata:(id)metadata
{
  metadataCopy = metadata;
  v4 = objc_alloc_init(NSMutableDictionary);
  accountIdentifier = [metadataCopy accountIdentifier];
  [v4 setObjectOrNull:accountIdentifier forKey:@"account_identifier"];

  statementIdentifier = [metadataCopy statementIdentifier];
  [v4 setObjectOrNull:statementIdentifier forKey:@"statement_identifier"];

  lastReportDate = [metadataCopy lastReportDate];
  v8 = _SQLValueForDate();
  [v4 setObjectOrNull:v8 forKey:@"last_report_date"];

  reportCount = [metadataCopy reportCount];
  v10 = [NSNumber numberWithInteger:reportCount];
  [v4 setObjectOrNull:v10 forKey:@"report_count"];

  return v4;
}

@end