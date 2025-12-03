@interface PQLConnection
+ (id)cplInjectionFor:(id)for isInIndexSet:(id)set;
+ (id)cplInjectionFor:(id)for isNotInIndexSet:(id)set;
- (BOOL)cplRegisterDeterministicFunction:(id)function nArgs:(int)args handler:(id)handler;
- (id)lastCPLError;
@end

@implementation PQLConnection

- (id)lastCPLError
{
  lastError = [(PQLConnection *)self lastError];
  domain = [lastError domain];
  v4 = [domain isEqualToString:PQLSqliteErrorDomain];

  if (v4 && [lastError code] == 11)
  {
    v5 = [CPLErrors cplErrorWithCode:3 underlyingError:lastError description:@"Library database is corrupted"];
  }

  else
  {
    v5 = lastError;
  }

  v6 = v5;

  return v6;
}

- (BOOL)cplRegisterDeterministicFunction:(id)function nArgs:(int)args handler:(id)handler
{
  handlerCopy = handler;
  functionCopy = function;
  dbHandle = [(PQLConnection *)self dbHandle];
  uTF8String = [functionCopy UTF8String];

  v12 = [handlerCopy copy];
  v13 = v12;
  function_v2 = sqlite3_create_function_v2(dbHandle, uTF8String, args, 2053, v13, sub_10016225C, 0, 0, j__CFRelease);

  if (function_v2)
  {
    v15 = [NSError errorForDB:[(PQLConnection *)self dbHandle]];
    [(PQLConnection *)self setLastError:v15];

    sqliteErrorHandler = [(PQLConnection *)self sqliteErrorHandler];

    if (sqliteErrorHandler)
    {
      sqliteErrorHandler2 = [(PQLConnection *)self sqliteErrorHandler];
      lastError = [(PQLConnection *)self lastError];
      (sqliteErrorHandler2)[2](sqliteErrorHandler2, self, 0, lastError);
    }
  }

  return function_v2 == 0;
}

+ (id)cplInjectionFor:(id)for isInIndexSet:(id)set
{
  setCopy = set;
  forCopy = for;
  v7 = [[_CPLIsInIndexSetInject alloc] initWithInjection:forCopy indexSet:setCopy exclude:0];

  return v7;
}

+ (id)cplInjectionFor:(id)for isNotInIndexSet:(id)set
{
  setCopy = set;
  forCopy = for;
  v7 = [[_CPLIsInIndexSetInject alloc] initWithInjection:forCopy indexSet:setCopy exclude:1];

  return v7;
}

@end