@interface INIntent(CoreDuetContext)
- (id)contextMetadata;
@end

@implementation INIntent(CoreDuetContext)

- (id)contextMetadata
{
  v2 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
  v3 = [a1 _className];
  v4 = +[_CDContextQueries intentClassKey];
  [v2 setObject:v3 forKeyedSubscript:v4];

  v5 = [a1 domain];

  if (v5)
  {
    v6 = [a1 domain];
    v7 = [v6 copy];
    v8 = +[_CDContextQueries intentTypeKey];
    [v2 setObject:v7 forKeyedSubscript:v8];
  }

  v9 = [a1 verb];

  if (v9)
  {
    v10 = [a1 verb];
    v11 = [v10 copy];
    v12 = +[_CDContextQueries intentVerbKey];
    [v2 setObject:v11 forKeyedSubscript:v12];
  }

  return v2;
}

@end