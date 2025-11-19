@interface NSError
+ (id)debugHierarchyErrorFromException:(id)a3 caughtDuringRequest:(id)a4 forMethodSignature:(const char *)a5;
- (id)debugHierarchyResponseDataForRequest:(id)a3;
@end

@implementation NSError

+ (id)debugHierarchyErrorFromException:(id)a3 caughtDuringRequest:(id)a4 forMethodSignature:(const char *)a5
{
  v7 = a3;
  v8 = [a4 identifier];
  v9 = v8;
  v10 = @"<nil>";
  if (v8)
  {
    v10 = v8;
  }

  v11 = v10;

  v18[0] = @"errorDescription";
  v12 = [v7 description];
  v19[0] = v12;
  v18[1] = @"methodSignature";
  v13 = [NSString stringWithCString:a5 encoding:4];
  v19[1] = v13;
  v19[2] = v11;
  v18[2] = @"DebugHierarchyRequestIdentifier";
  v18[3] = @"backtrace";
  v14 = [v7 callStackSymbols];

  v19[3] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:4];

  v16 = [NSError errorWithDomain:@"DebugHierarchyErrorDomain" code:1 userInfo:v15];

  return v16;
}

- (id)debugHierarchyResponseDataForRequest:(id)a3
{
  v4 = a3;
  v5 = [(NSError *)self userInfo];
  v6 = [v5 description];

  v7 = DebugHierarchyResponseDataForGenericError(@"Debug Hierarchy Error", v6, v4, 0);

  return v7;
}

@end