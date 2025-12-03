@interface INIntent(CoreDuetContext)
- (id)contextMetadata;
@end

@implementation INIntent(CoreDuetContext)

- (id)contextMetadata
{
  v2 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
  _className = [self _className];
  v4 = +[_CDContextQueries intentClassKey];
  [v2 setObject:_className forKeyedSubscript:v4];

  domain = [self domain];

  if (domain)
  {
    domain2 = [self domain];
    v7 = [domain2 copy];
    v8 = +[_CDContextQueries intentTypeKey];
    [v2 setObject:v7 forKeyedSubscript:v8];
  }

  verb = [self verb];

  if (verb)
  {
    verb2 = [self verb];
    v11 = [verb2 copy];
    v12 = +[_CDContextQueries intentVerbKey];
    [v2 setObject:v11 forKeyedSubscript:v12];
  }

  return v2;
}

@end