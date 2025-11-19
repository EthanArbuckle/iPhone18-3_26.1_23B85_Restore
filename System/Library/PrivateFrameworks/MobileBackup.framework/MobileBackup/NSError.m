@interface NSError
- (BOOL)isNotFound;
- (NSError)excludingNotFound;
- (id)_errorWithSQL:(id)a3;
- (id)_summaryWithLength:(unint64_t)a3;
@end

@implementation NSError

- (id)_summaryWithLength:(unint64_t)a3
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
  if (v12 > a3)
  {
    [v6 deleteCharactersInRange:{a3, v12}];
    [v6 appendString:@"…"];
  }

  v13 = [v6 copy];

  return v13;
}

- (NSError)excludingNotFound
{
  if ([(NSError *)self isNotFound])
  {
    v3 = 0;
  }

  else
  {
    v3 = self;
  }

  return v3;
}

- (BOOL)isNotFound
{
  if ([(NSError *)self code]!= 12)
  {
    return 0;
  }

  v3 = [(NSError *)self domain];
  v4 = [v3 isEqualToString:PQLSqliteErrorDomain];

  return v4;
}

- (id)_errorWithSQL:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(NSError *)self userInfo];
    v6 = [v5 mutableCopy];
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

    [v10 setObject:v4 forKeyedSubscript:@"ExpandedSQL"];
    v11 = [NSError alloc];
    v12 = [(NSError *)self domain];
    v9 = [v11 initWithDomain:v12 code:-[NSError code](self userInfo:{"code"), v10}];
  }

  else
  {
    v9 = self;
  }

  return v9;
}

@end