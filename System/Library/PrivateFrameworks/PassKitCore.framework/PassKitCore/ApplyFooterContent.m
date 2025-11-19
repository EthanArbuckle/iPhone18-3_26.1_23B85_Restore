@interface ApplyFooterContent
+ (id)_commonDictionary:(id)a3 type:(unint64_t)a4;
+ (id)_predicateForDynamicContentPagePID:(int64_t)a3 type:(unint64_t)a4;
+ (id)_predicateForInstallmentCriteriaPID:(int64_t)a3 type:(unint64_t)a4;
+ (id)_propertySettersForFooterContent;
+ (id)footerContentForDynamicContentPagePID:(int64_t)a3 type:(unint64_t)a4 inDatabase:(id)a5;
+ (id)footerContentForInstallmentCriteriaPID:(int64_t)a3 type:(unint64_t)a4 inDatabase:(id)a5;
+ (void)deleteFooterContentForDynamicContentPagePID:(int64_t)a3 type:(unint64_t)a4 inDatabase:(id)a5;
+ (void)deleteFooterContentForInstallmentCriteriaPID:(int64_t)a3 type:(unint64_t)a4 inDatabase:(id)a5;
+ (void)insertOrUpdateWithFooterContent:(id)a3 dynamicContentPagePID:(int64_t)a4 type:(unint64_t)a5 inDatabase:(id)a6;
+ (void)insertOrUpdateWithFooterContent:(id)a3 installmentCriteriaPID:(int64_t)a4 type:(unint64_t)a5 inDatabase:(id)a6;
- (BOOL)deleteFromDatabase;
- (id)footerContent;
- (unint64_t)type;
@end

@implementation ApplyFooterContent

+ (void)insertOrUpdateWithFooterContent:(id)a3 installmentCriteriaPID:(int64_t)a4 type:(unint64_t)a5 inDatabase:(id)a6
{
  v10 = a3;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100188D54;
  v13[3] = &unk_100846B70;
  v16 = a1;
  v17 = a4;
  v18 = a5;
  v14 = a6;
  v15 = v10;
  v11 = v10;
  v12 = v14;
  sub_1005D4424(v12, v13);
}

+ (void)insertOrUpdateWithFooterContent:(id)a3 dynamicContentPagePID:(int64_t)a4 type:(unint64_t)a5 inDatabase:(id)a6
{
  v10 = a3;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100188F1C;
  v13[3] = &unk_100846B70;
  v16 = a1;
  v17 = a4;
  v18 = a5;
  v14 = a6;
  v15 = v10;
  v11 = v10;
  v12 = v14;
  sub_1005D4424(v12, v13);
}

+ (void)deleteFooterContentForInstallmentCriteriaPID:(int64_t)a3 type:(unint64_t)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = [a1 _predicateForInstallmentCriteriaPID:a3 type:a4];
  v10 = [a1 anyInDatabase:v8 predicate:v9];

  [v10 deleteFromDatabase];
}

+ (void)deleteFooterContentForDynamicContentPagePID:(int64_t)a3 type:(unint64_t)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = [a1 _predicateForDynamicContentPagePID:a3 type:a4];
  v10 = [a1 anyInDatabase:v8 predicate:v9];

  [v10 deleteFromDatabase];
}

- (BOOL)deleteFromDatabase
{
  v3 = [(SQLiteEntity *)self persistentID];
  v4 = [(ApplyFooterContent *)self type];
  v5 = [(SQLiteEntity *)self database];
  [ApplyFooterContentLink deleteAllFooterContentLinksWithTablePID:v3 type:v4 inDatabase:v5];

  v7.receiver = self;
  v7.super_class = ApplyFooterContent;
  return [(SQLiteEntity *)&v7 deleteFromDatabase];
}

+ (id)_predicateForInstallmentCriteriaPID:(int64_t)a3 type:(unint64_t)a4
{
  v5 = [NSNumber numberWithLongLong:a3];
  v6 = [SQLiteComparisonPredicate predicateWithProperty:@"installment_criteria_pid" equalToValue:v5];
  v12[0] = v6;
  v7 = [NSNumber numberWithUnsignedInteger:a4];
  v8 = [SQLiteComparisonPredicate predicateWithProperty:@"type" equalToValue:v7];
  v12[1] = v8;
  v9 = [NSArray arrayWithObjects:v12 count:2];
  v10 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v9];

  return v10;
}

+ (id)_predicateForDynamicContentPagePID:(int64_t)a3 type:(unint64_t)a4
{
  v5 = [NSNumber numberWithLongLong:a3];
  v6 = [SQLiteComparisonPredicate predicateWithProperty:@"dynamic_content_page_pid" equalToValue:v5];
  v12[0] = v6;
  v7 = [NSNumber numberWithUnsignedInteger:a4];
  v8 = [SQLiteComparisonPredicate predicateWithProperty:@"type" equalToValue:v7];
  v12[1] = v8;
  v9 = [NSArray arrayWithObjects:v12 count:2];
  v10 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v9];

  return v10;
}

+ (id)footerContentForInstallmentCriteriaPID:(int64_t)a3 type:(unint64_t)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = [a1 _predicateForInstallmentCriteriaPID:a3 type:a4];
  v10 = [a1 anyInDatabase:v8 predicate:v9];

  v11 = [v10 footerContent];

  return v11;
}

+ (id)footerContentForDynamicContentPagePID:(int64_t)a3 type:(unint64_t)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = [a1 _predicateForDynamicContentPagePID:a3 type:a4];
  v10 = [a1 anyInDatabase:v8 predicate:v9];

  v11 = [v10 footerContent];

  return v11;
}

- (id)footerContent
{
  v3 = objc_alloc_init(PKApplyFooterContent);
  v4 = [objc_opt_class() _propertySettersForFooterContent];
  v5 = [v4 allKeys];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001896DC;
  v14[3] = &unk_10083BEE0;
  v14[4] = self;
  v15 = v4;
  v6 = v3;
  v16 = v6;
  v7 = v4;
  [(SQLiteEntity *)self getValuesForProperties:v5 withApplier:v14];

  v8 = [(SQLiteEntity *)self persistentID];
  v9 = [(ApplyFooterContent *)self type];
  v10 = [(SQLiteEntity *)self database];
  v11 = [ApplyFooterContentLink linksForTablePID:v8 type:v9 inDatabase:v10];

  [v6 setLinks:v11];
  v12 = v6;

  return v6;
}

- (unint64_t)type
{
  v2 = [(SQLiteEntity *)self valueForProperty:@"type"];
  v3 = [v2 integerValue];

  return v3;
}

+ (id)_commonDictionary:(id)a3 type:(unint64_t)a4
{
  v5 = a3;
  v6 = objc_alloc_init(NSMutableDictionary);
  v7 = [v5 footerText];

  [v6 setObjectOrNull:v7 forKey:@"footer_text"];
  v8 = [NSNumber numberWithUnsignedInteger:a4];
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