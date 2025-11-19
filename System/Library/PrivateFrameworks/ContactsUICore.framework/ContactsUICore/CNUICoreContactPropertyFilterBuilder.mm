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
  v3 = [MEMORY[0x1E695DF70] array];
  if ([(CNUICoreContactPropertyFilterBuilder *)self excludeNickname])
  {
    v4 = +[CNUICoreContactPropertyValueFilterFactory nicknameFilter];
    [v3 addObject:v4];
  }

  if ([(CNUICoreContactPropertyFilterBuilder *)self excludePhoto])
  {
    v5 = +[CNUICoreContactPropertyValueFilterFactory photoFilter];
    [v3 addObject:v5];
  }

  if ([(CNUICoreContactPropertyFilterBuilder *)self excludeNote])
  {
    v6 = +[CNUICoreContactPropertyValueFilterFactory noteFilter];
    [v3 addObject:v6];
  }

  if ([(CNUICoreContactPropertyFilterBuilder *)self excludeRelationships])
  {
    v7 = +[CNUICoreContactPropertyValueFilterFactory relationshipsFilter];
    [v3 addObject:v7];
  }

  v8 = [CNUICoreContactPropertyValueFilterFactory aggregatePropertyValueFilterWithValueFilters:v3];

  return v8;
}

@end