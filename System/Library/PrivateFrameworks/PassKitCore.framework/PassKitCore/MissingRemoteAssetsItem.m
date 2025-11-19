@interface MissingRemoteAssetsItem
+ (id)_predicateForMaximumRetriesCount:(unint64_t)a3;
+ (id)_propertySettersForItem;
+ (id)associationPropertyForEntityClass:(Class)a3;
+ (id)insertOrReplaceMissingRemoteAssetsItemForUniqueID:(id)a3 inDataBase:(id)a4;
+ (id)itemsInDataBase:(id)a3 withMaximumDownloadRetriesCount:(unint64_t)a4;
+ (unint64_t)itemsCountInDataBase:(id)a3 withMaximumDownloadRetriesCount:(unint64_t)a4;
+ (void)incrementDownloadRetriesCountForUniqueID:(id)a3 inDataBase:(id)a4;
+ (void)removeMissingRemoteAssetsItemForUniqueID:(id)a3 inDataBase:(id)a4;
- (id)initMissingRemoteAssetsItemWithUniqueID:(id)a3 inDatabase:(id)a4;
@end

@implementation MissingRemoteAssetsItem

+ (id)insertOrReplaceMissingRemoteAssetsItemForUniqueID:(id)a3 inDataBase:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(objc_opt_class()) initMissingRemoteAssetsItemWithUniqueID:v6 inDatabase:v5];

  return v7;
}

+ (unint64_t)itemsCountInDataBase:(id)a3 withMaximumDownloadRetriesCount:(unint64_t)a4
{
  v6 = a3;
  v7 = [a1 _predicateForMaximumRetriesCount:a4];
  v8 = [(SQLiteEntity *)MissingRemoteAssetsItem countInDatabase:v6 predicate:v7];

  return v8;
}

+ (id)itemsInDataBase:(id)a3 withMaximumDownloadRetriesCount:(unint64_t)a4
{
  v6 = a3;
  v7 = +[NSMutableSet set];
  v8 = [a1 _predicateForMaximumRetriesCount:a4];
  v9 = [(SQLiteEntity *)MissingRemoteAssetsItem queryWithDatabase:v6 predicate:v8];

  v10 = [a1 _propertySettersForItem];
  v11 = [v10 allKeys];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100072B94;
  v17[3] = &unk_10083C998;
  v20 = a1;
  v18 = v10;
  v12 = v7;
  v19 = v12;
  v13 = v10;
  [v9 enumeratePersistentIDsAndProperties:v11 usingBlock:v17];

  v14 = v19;
  v15 = v12;

  return v12;
}

+ (void)incrementDownloadRetriesCountForUniqueID:(id)a3 inDataBase:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 databaseTable];
  v9 = [NSString stringWithFormat:@"UPDATE %@ SET %@ = %@ + 1 WHERE %@ = '%@'", v8, @"download_retries_count", @"download_retries_count", @"unique_id", v7];

  sub_10035E1C0(v6, v9);
}

+ (void)removeMissingRemoteAssetsItemForUniqueID:(id)a3 inDataBase:(id)a4
{
  v6 = a4;
  v8 = [a1 _predicateForUniqueID:a3];
  v7 = [a1 queryWithDatabase:v6 predicate:v8];

  [v7 deleteAllEntities];
}

- (id)initMissingRemoteAssetsItemWithUniqueID:(id)a3 inDatabase:(id)a4
{
  v11 = @"unique_id";
  v12 = a3;
  v6 = a4;
  v7 = a3;
  v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];

  v9 = [(SQLiteEntity *)self initWithPropertyValues:v8 inDatabase:v6];
  return v9;
}

+ (id)associationPropertyForEntityClass:(Class)a3
{
  if (objc_opt_class() == a3)
  {
    return @"pid";
  }

  else
  {
    return 0;
  }
}

+ (id)_predicateForMaximumRetriesCount:(unint64_t)a3
{
  v3 = [NSNumber numberWithUnsignedLongLong:a3];
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