@interface MissingRemoteAssetsItem
+ (id)_predicateForMaximumRetriesCount:(unint64_t)count;
+ (id)_propertySettersForItem;
+ (id)associationPropertyForEntityClass:(Class)class;
+ (id)insertOrReplaceMissingRemoteAssetsItemForUniqueID:(id)d inDataBase:(id)base;
+ (id)itemsInDataBase:(id)base withMaximumDownloadRetriesCount:(unint64_t)count;
+ (unint64_t)itemsCountInDataBase:(id)base withMaximumDownloadRetriesCount:(unint64_t)count;
+ (void)incrementDownloadRetriesCountForUniqueID:(id)d inDataBase:(id)base;
+ (void)removeMissingRemoteAssetsItemForUniqueID:(id)d inDataBase:(id)base;
- (id)initMissingRemoteAssetsItemWithUniqueID:(id)d inDatabase:(id)database;
@end

@implementation MissingRemoteAssetsItem

+ (id)insertOrReplaceMissingRemoteAssetsItemForUniqueID:(id)d inDataBase:(id)base
{
  baseCopy = base;
  dCopy = d;
  v7 = [objc_alloc(objc_opt_class()) initMissingRemoteAssetsItemWithUniqueID:dCopy inDatabase:baseCopy];

  return v7;
}

+ (unint64_t)itemsCountInDataBase:(id)base withMaximumDownloadRetriesCount:(unint64_t)count
{
  baseCopy = base;
  v7 = [self _predicateForMaximumRetriesCount:count];
  v8 = [(SQLiteEntity *)MissingRemoteAssetsItem countInDatabase:baseCopy predicate:v7];

  return v8;
}

+ (id)itemsInDataBase:(id)base withMaximumDownloadRetriesCount:(unint64_t)count
{
  baseCopy = base;
  v7 = +[NSMutableSet set];
  v8 = [self _predicateForMaximumRetriesCount:count];
  v9 = [(SQLiteEntity *)MissingRemoteAssetsItem queryWithDatabase:baseCopy predicate:v8];

  _propertySettersForItem = [self _propertySettersForItem];
  allKeys = [_propertySettersForItem allKeys];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100072B94;
  v17[3] = &unk_10083C998;
  selfCopy = self;
  v18 = _propertySettersForItem;
  v12 = v7;
  v19 = v12;
  v13 = _propertySettersForItem;
  [v9 enumeratePersistentIDsAndProperties:allKeys usingBlock:v17];

  v14 = v19;
  v15 = v12;

  return v12;
}

+ (void)incrementDownloadRetriesCountForUniqueID:(id)d inDataBase:(id)base
{
  baseCopy = base;
  dCopy = d;
  databaseTable = [self databaseTable];
  dCopy = [NSString stringWithFormat:@"UPDATE %@ SET %@ = %@ + 1 WHERE %@ = '%@'", databaseTable, @"download_retries_count", @"download_retries_count", @"unique_id", dCopy];

  sub_10035E1C0(baseCopy, dCopy);
}

+ (void)removeMissingRemoteAssetsItemForUniqueID:(id)d inDataBase:(id)base
{
  baseCopy = base;
  v8 = [self _predicateForUniqueID:d];
  v7 = [self queryWithDatabase:baseCopy predicate:v8];

  [v7 deleteAllEntities];
}

- (id)initMissingRemoteAssetsItemWithUniqueID:(id)d inDatabase:(id)database
{
  v11 = @"unique_id";
  dCopy = d;
  databaseCopy = database;
  dCopy2 = d;
  v8 = [NSDictionary dictionaryWithObjects:&dCopy forKeys:&v11 count:1];

  v9 = [(SQLiteEntity *)self initWithPropertyValues:v8 inDatabase:databaseCopy];
  return v9;
}

+ (id)associationPropertyForEntityClass:(Class)class
{
  if (objc_opt_class() == class)
  {
    return @"pid";
  }

  else
  {
    return 0;
  }
}

+ (id)_predicateForMaximumRetriesCount:(unint64_t)count
{
  v3 = [NSNumber numberWithUnsignedLongLong:count];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"download_retries_count" lessThanOrEqualToValue:v3];

  return v4;
}

+ (id)_propertySettersForItem
{
  v4[0] = @"unique_id";
  v4[1] = @"download_retries_count";
  v5[0] = &stru_1008403F8;
  v5[1] = &stru_100840418;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

@end