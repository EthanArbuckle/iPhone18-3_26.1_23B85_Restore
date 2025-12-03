@interface NSError
+ (id)debugHierarchyErrorFromException:(id)exception caughtDuringRequest:(id)request forMethodSignature:(const char *)signature;
- (id)debugHierarchyResponseDataForRequest:(id)request;
@end

@implementation NSError

+ (id)debugHierarchyErrorFromException:(id)exception caughtDuringRequest:(id)request forMethodSignature:(const char *)signature
{
  exceptionCopy = exception;
  identifier = [request identifier];
  v9 = identifier;
  v10 = @"<nil>";
  if (identifier)
  {
    v10 = identifier;
  }

  v11 = v10;

  v18[0] = @"errorDescription";
  v12 = [exceptionCopy description];
  v19[0] = v12;
  v18[1] = @"methodSignature";
  v13 = [NSString stringWithCString:signature encoding:4];
  v19[1] = v13;
  v19[2] = v11;
  v18[2] = @"DebugHierarchyRequestIdentifier";
  v18[3] = @"backtrace";
  callStackSymbols = [exceptionCopy callStackSymbols];

  v19[3] = callStackSymbols;
  v15 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:4];

  v16 = [NSError errorWithDomain:@"DebugHierarchyErrorDomain" code:1 userInfo:v15];

  return v16;
}

- (id)debugHierarchyResponseDataForRequest:(id)request
{
  requestCopy = request;
  userInfo = [(NSError *)self userInfo];
  v6 = [userInfo description];

  v7 = DebugHierarchyResponseDataForGenericError(@"Debug Hierarchy Error", v6, requestCopy, 0);

  return v7;
}

@end