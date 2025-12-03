@interface ApplyFooterContent
+ (id)_commonDictionary:(id)dictionary type:(unint64_t)type;
+ (id)_predicateForDynamicContentPagePID:(int64_t)d type:(unint64_t)type;
+ (id)_predicateForInstallmentCriteriaPID:(int64_t)d type:(unint64_t)type;
+ (id)_propertySettersForFooterContent;
+ (id)footerContentForDynamicContentPagePID:(int64_t)d type:(unint64_t)type inDatabase:(id)database;
+ (id)footerContentForInstallmentCriteriaPID:(int64_t)d type:(unint64_t)type inDatabase:(id)database;
+ (void)deleteFooterContentForDynamicContentPagePID:(int64_t)d type:(unint64_t)type inDatabase:(id)database;
+ (void)deleteFooterContentForInstallmentCriteriaPID:(int64_t)d type:(unint64_t)type inDatabase:(id)database;
+ (void)insertOrUpdateWithFooterContent:(id)content dynamicContentPagePID:(int64_t)d type:(unint64_t)type inDatabase:(id)database;
+ (void)insertOrUpdateWithFooterContent:(id)content installmentCriteriaPID:(int64_t)d type:(unint64_t)type inDatabase:(id)database;
- (BOOL)deleteFromDatabase;
- (id)footerContent;
- (unint64_t)type;
@end

@implementation ApplyFooterContent

+ (void)insertOrUpdateWithFooterContent:(id)content installmentCriteriaPID:(int64_t)d type:(unint64_t)type inDatabase:(id)database
{
  contentCopy = content;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100188D54;
  v13[3] = &unk_100846B70;
  selfCopy = self;
  dCopy = d;
  typeCopy = type;
  databaseCopy = database;
  v15 = contentCopy;
  v11 = contentCopy;
  v12 = databaseCopy;
  sub_1005D4424(v12, v13);
}

+ (void)insertOrUpdateWithFooterContent:(id)content dynamicContentPagePID:(int64_t)d type:(unint64_t)type inDatabase:(id)database
{
  contentCopy = content;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100188F1C;
  v13[3] = &unk_100846B70;
  selfCopy = self;
  dCopy = d;
  typeCopy = type;
  databaseCopy = database;
  v15 = contentCopy;
  v11 = contentCopy;
  v12 = databaseCopy;
  sub_1005D4424(v12, v13);
}

+ (void)deleteFooterContentForInstallmentCriteriaPID:(int64_t)d type:(unint64_t)type inDatabase:(id)database
{
  databaseCopy = database;
  v9 = [self _predicateForInstallmentCriteriaPID:d type:type];
  v10 = [self anyInDatabase:databaseCopy predicate:v9];

  [v10 deleteFromDatabase];
}

+ (void)deleteFooterContentForDynamicContentPagePID:(int64_t)d type:(unint64_t)type inDatabase:(id)database
{
  databaseCopy = database;
  v9 = [self _predicateForDynamicContentPagePID:d type:type];
  v10 = [self anyInDatabase:databaseCopy predicate:v9];

  [v10 deleteFromDatabase];
}

- (BOOL)deleteFromDatabase
{
  persistentID = [(SQLiteEntity *)self persistentID];
  type = [(ApplyFooterContent *)self type];
  database = [(SQLiteEntity *)self database];
  [ApplyFooterContentLink deleteAllFooterContentLinksWithTablePID:persistentID type:type inDatabase:database];

  v7.receiver = self;
  v7.super_class = ApplyFooterContent;
  return [(SQLiteEntity *)&v7 deleteFromDatabase];
}

+ (id)_predicateForInstallmentCriteriaPID:(int64_t)d type:(unint64_t)type
{
  v5 = [NSNumber numberWithLongLong:d];
  v6 = [SQLiteComparisonPredicate predicateWithProperty:@"installment_criteria_pid" equalToValue:v5];
  v12[0] = v6;
  v7 = [NSNumber numberWithUnsignedInteger:type];
  v8 = [SQLiteComparisonPredicate predicateWithProperty:@"type" equalToValue:v7];
  v12[1] = v8;
  v9 = [NSArray arrayWithObjects:v12 count:2];
  v10 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v9];

  return v10;
}

+ (id)_predicateForDynamicContentPagePID:(int64_t)d type:(unint64_t)type
{
  v5 = [NSNumber numberWithLongLong:d];
  v6 = [SQLiteComparisonPredicate predicateWithProperty:@"dynamic_content_page_pid" equalToValue:v5];
  v12[0] = v6;
  v7 = [NSNumber numberWithUnsignedInteger:type];
  v8 = [SQLiteComparisonPredicate predicateWithProperty:@"type" equalToValue:v7];
  v12[1] = v8;
  v9 = [NSArray arrayWithObjects:v12 count:2];
  v10 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v9];

  return v10;
}

+ (id)footerContentForInstallmentCriteriaPID:(int64_t)d type:(unint64_t)type inDatabase:(id)database
{
  databaseCopy = database;
  v9 = [self _predicateForInstallmentCriteriaPID:d type:type];
  v10 = [self anyInDatabase:databaseCopy predicate:v9];

  footerContent = [v10 footerContent];

  return footerContent;
}

+ (id)footerContentForDynamicContentPagePID:(int64_t)d type:(unint64_t)type inDatabase:(id)database
{
  databaseCopy = database;
  v9 = [self _predicateForDynamicContentPagePID:d type:type];
  v10 = [self anyInDatabase:databaseCopy predicate:v9];

  footerContent = [v10 footerContent];

  return footerContent;
}

- (id)footerContent
{
  v3 = objc_alloc_init(PKApplyFooterContent);
  _propertySettersForFooterContent = [objc_opt_class() _propertySettersForFooterContent];
  allKeys = [_propertySettersForFooterContent allKeys];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001896DC;
  v14[3] = &unk_10083BEE0;
  v14[4] = self;
  v15 = _propertySettersForFooterContent;
  v6 = v3;
  v16 = v6;
  v7 = _propertySettersForFooterContent;
  [(SQLiteEntity *)self getValuesForProperties:allKeys withApplier:v14];

  persistentID = [(SQLiteEntity *)self persistentID];
  type = [(ApplyFooterContent *)self type];
  database = [(SQLiteEntity *)self database];
  v11 = [ApplyFooterContentLink linksForTablePID:persistentID type:type inDatabase:database];

  [v6 setLinks:v11];
  v12 = v6;

  return v6;
}

- (unint64_t)type
{
  v2 = [(SQLiteEntity *)self valueForProperty:@"type"];
  integerValue = [v2 integerValue];

  return integerValue;
}

+ (id)_commonDictionary:(id)dictionary type:(unint64_t)type
{
  dictionaryCopy = dictionary;
  v6 = objc_alloc_init(NSMutableDictionary);
  footerText = [dictionaryCopy footerText];

  [v6 setObjectOrNull:footerText forKey:@"footer_text"];
  v8 = [NSNumber numberWithUnsignedInteger:type];
  [v6 setObjectOrNull:v8 forKey:@"type"];

  return v6;
}

+ (id)_propertySettersForFooterContent
{
  v4 = @"footer_text";
  v5 = &stru_10084A3C0;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

@end