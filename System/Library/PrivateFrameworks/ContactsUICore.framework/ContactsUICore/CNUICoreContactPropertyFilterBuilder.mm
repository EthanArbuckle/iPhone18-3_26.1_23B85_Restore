@interface CNUICoreContactPropertyFilterBuilder
+ (CNUICoreContactPropertyFilterBuilder)managedContactsFilterBuilder;
+ (CNUICoreContactPropertyFilterBuilder)whitelistedContactsFilterBuilder;
- (id)build;
@end

@implementation CNUICoreContactPropertyFilterBuilder

+ (CNUICoreContactPropertyFilterBuilder)managedContactsFilterBuilder
{
  v2 = objc_alloc_init(CNUICoreContactPropertyFilterBuilder);
  [(CNUICoreContactPropertyFilterBuilder *)v2 setExcludeNickname:1];
  [(CNUICoreContactPropertyFilterBuilder *)v2 setExcludePhoto:1];
  [(CNUICoreContactPropertyFilterBuilder *)v2 setExcludeNote:1];
  [(CNUICoreContactPropertyFilterBuilder *)v2 setExcludeRelationships:1];

  return v2;
}

+ (CNUICoreContactPropertyFilterBuilder)whitelistedContactsFilterBuilder
{
  v2 = objc_alloc_init(CNUICoreContactPropertyFilterBuilder);
  [(CNUICoreContactPropertyFilterBuilder *)v2 setExcludeNickname:1];
  [(CNUICoreContactPropertyFilterBuilder *)v2 setExcludePhoto:0];
  [(CNUICoreContactPropertyFilterBuilder *)v2 setExcludeNote:1];
  [(CNUICoreContactPropertyFilterBuilder *)v2 setExcludeRelationships:1];

  return v2;
}

- (id)build
{
  array = [MEMORY[0x1E695DF70] array];
  if ([(CNUICoreContactPropertyFilterBuilder *)self excludeNickname])
  {
    v4 = +[CNUICoreContactPropertyValueFilterFactory nicknameFilter];
    [array addObject:v4];
  }

  if ([(CNUICoreContactPropertyFilterBuilder *)self excludePhoto])
  {
    v5 = +[CNUICoreContactPropertyValueFilterFactory photoFilter];
    [array addObject:v5];
  }

  if ([(CNUICoreContactPropertyFilterBuilder *)self excludeNote])
  {
    v6 = +[CNUICoreContactPropertyValueFilterFactory noteFilter];
    [array addObject:v6];
  }

  if ([(CNUICoreContactPropertyFilterBuilder *)self excludeRelationships])
  {
    v7 = +[CNUICoreContactPropertyValueFilterFactory relationshipsFilter];
    [array addObject:v7];
  }

  v8 = [CNUICoreContactPropertyValueFilterFactory aggregatePropertyValueFilterWithValueFilters:array];

  return v8;
}

@end