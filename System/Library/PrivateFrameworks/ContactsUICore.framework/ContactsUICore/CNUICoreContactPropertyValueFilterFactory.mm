@interface CNUICoreContactPropertyValueFilterFactory
+ (CNUICoreContactPropertyValueFilter)nicknameFilter;
+ (CNUICoreContactPropertyValueFilter)noteFilter;
+ (CNUICoreContactPropertyValueFilter)photoFilter;
+ (CNUICoreContactPropertyValueFilter)relationshipsFilter;
+ (id)aggregatePropertyValueFilterWithValueFilters:(id)filters;
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

+ (id)aggregatePropertyValueFilterWithValueFilters:(id)filters
{
  filtersCopy = filters;
  v4 = [[CNUICoreContactAggregateValueFilter alloc] initWithValueFilters:filtersCopy];

  return v4;
}

@end