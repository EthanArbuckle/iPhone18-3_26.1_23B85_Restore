@interface PQLConnection
+ (id)cplInjectionFor:(id)a3 isInIndexSet:(id)a4;
+ (id)cplInjectionFor:(id)a3 isNotInIndexSet:(id)a4;
- (BOOL)cplRegisterDeterministicFunction:(id)a3 nArgs:(int)a4 handler:(id)a5;
- (id)lastCPLError;
@end

@implementation PQLConnection

- (id)lastCPLError
{
  v2 = [(PQLConnection *)self lastError];
  v3 = [v2 domain];
  v4 = [v3 isEqualToString:PQLSqliteErrorDomain];

  if (v4 && [v2 code] == 11)
  {
    v5 = [CPLErrors cplErrorWithCode:3 underlyingError:v2 description:@"Library database is corrupted"];
  }

  else
  {
    v5 = v2;
  }

  v6 = v5;

  return v6;
}

- (BOOL)cplRegisterDeterministicFunction:(id)a3 nArgs:(int)a4 handler:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(PQLConnection *)self dbHandle];
  v11 = [v9 UTF8String];

  v12 = [v8 copy];
  v13 = v12;
  function_v2 = sqlite3_create_function_v2(v10, v11, a4, 2053, v13, sub_10016225C, 0, 0, j__CFRelease);

  if (function_v2)
  {
    v15 = [NSError errorForDB:[(PQLConnection *)self dbHandle]];
    [(PQLConnection *)self setLastError:v15];

    v16 = [(PQLConnection *)self sqliteErrorHandler];

    if (v16)
    {
      v17 = [(PQLConnection *)self sqliteErrorHandler];
      v18 = [(PQLConnection *)self lastError];
      (v17)[2](v17, self, 0, v18);
    }
  }

  return function_v2 == 0;
}

+ (id)cplInjectionFor:(id)a3 isInIndexSet:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[_CPLIsInIndexSetInject alloc] initWithInjection:v6 indexSet:v5 exclude:0];

  return v7;
}

+ (id)cplInjectionFor:(id)a3 isNotInIndexSet:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[_CPLIsInIndexSetInject alloc] initWithInjection:v6 indexSet:v5 exclude:1];

  return v7;
}

@end