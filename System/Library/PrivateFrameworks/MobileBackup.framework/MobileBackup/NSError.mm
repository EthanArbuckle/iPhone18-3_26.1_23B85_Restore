@interface NSError
- (BOOL)isNotFound;
- (NSError)excludingNotFound;
- (id)_errorWithSQL:(id)l;
- (id)_summaryWithLength:(unint64_t)length;
@end

@implementation NSError

- (id)_summaryWithLength:(unint64_t)length
{
  v19 = 0;
  v4 = MBSerializeErrors(self, &v19);
  v5 = v19;
  v6 = +[NSMutableString string];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [v6 appendFormat:@"%@\n", *(*(&v15 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v9);
  }

  v12 = [v6 length];
  if (v12 > length)
  {
    [v6 deleteCharactersInRange:{length, v12}];
    [v6 appendString:@"…"];
  }

  v13 = [v6 copy];

  return v13;
}

- (NSError)excludingNotFound
{
  if ([(NSError *)self isNotFound])
  {
    selfCopy = 0;
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (BOOL)isNotFound
{
  if ([(NSError *)self code]!= 12)
  {
    return 0;
  }

  domain = [(NSError *)self domain];
  v4 = [domain isEqualToString:PQLSqliteErrorDomain];

  return v4;
}

- (id)_errorWithSQL:(id)l
{
  if (l)
  {
    lCopy = l;
    userInfo = [(NSError *)self userInfo];
    v6 = [userInfo mutableCopy];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = +[NSMutableDictionary dictionary];
    }

    v10 = v8;

    [v10 setObject:lCopy forKeyedSubscript:@"ExpandedSQL"];
    v11 = [NSError alloc];
    domain = [(NSError *)self domain];
    selfCopy = [v11 initWithDomain:domain code:-[NSError code](self userInfo:{"code"), v10}];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

@end