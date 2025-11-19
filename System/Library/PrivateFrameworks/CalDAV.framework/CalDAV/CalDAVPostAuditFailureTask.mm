@interface CalDAVPostAuditFailureTask
+ (id)_stringForReason:(unint64_t)a3;
- (CalDAVPostAuditFailureTask)initWithResourceURL:(id)a3 reason:(unint64_t)a4;
@end

@implementation CalDAVPostAuditFailureTask

- (CalDAVPostAuditFailureTask)initWithResourceURL:(id)a3 reason:(unint64_t)a4
{
  v6 = [MEMORY[0x277CCACE0] componentsWithURL:a3 resolvingAgainstBaseURL:1];
  v7 = [v6 queryItems];
  v8 = [v7 mutableCopy];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = objc_opt_new();
  }

  v11 = v10;

  v12 = [MEMORY[0x277CCAD18] queryItemWithName:@"action" value:@"audit-failure"];
  [v11 addObject:v12];

  v13 = MEMORY[0x277CCAD18];
  v14 = [objc_opt_class() _stringForReason:a4];
  v15 = [v13 queryItemWithName:@"reason" value:v14];
  [v11 addObject:v15];

  [v6 setQueryItems:v11];
  v16 = [v6 URL];
  v19.receiver = self;
  v19.super_class = CalDAVPostAuditFailureTask;
  v17 = [(CoreDAVPostOrPutTask *)&v19 initWithURL:v16];

  return v17;
}

+ (id)_stringForReason:(unint64_t)a3
{
  if (a3)
  {
    v6 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Unexpected value for reason argument." userInfo:{0, v3, v4}];
    objc_exception_throw(v6);
  }

  return @"junk";
}

@end