@interface CNUICoreContactPropertyValueFilterFactory
+ (CNUICoreContactPropertyValueFilter)nicknameFilter;
+ (CNUICoreContactPropertyValueFilter)noteFilter;
+ (CNUICoreContactPropertyValueFilter)photoFilter;
+ (CNUICoreContactPropertyValueFilter)relationshipsFilter;
+ (id)aggregatePropertyValueFilterWithValueFilters:(id)a3;
@end

@implementation CNUICoreContactPropertyValueFilterFactory

+ (CNUICoreContactPropertyValueFilter)nicknameFilter
{
  v2 = objc_alloc_init(CNUICoreContactNicknameValueFilter);

  return v2;
}

+ (CNUICoreContactPropertyValueFilter)photoFilter
{
  v2 = objc_alloc_init(CNUICoreContactPhotoValueFilter);

  return v2;
}

+ (CNUICoreContactPropertyValueFilter)noteFilter
{
  v2 = objc_alloc_init(CNUICoreContactNoteValueFilter);

  return v2;
}

+ (CNUICoreContactPropertyValueFilter)relationshipsFilter
{
  v2 = objc_alloc_init(CNUICoreContactRelationshipsFilter);

  return v2;
}

+ (id)aggregatePropertyValueFilterWithValueFilters:(id)a3
{
  v3 = a3;
  v4 = [[CNUICoreContactAggregateValueFilter alloc] initWithValueFilters:v3];

  return v4;
}

@end