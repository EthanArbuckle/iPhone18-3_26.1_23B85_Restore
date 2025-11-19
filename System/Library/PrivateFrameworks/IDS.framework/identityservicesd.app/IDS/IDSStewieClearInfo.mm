@interface IDSStewieClearInfo
+ (id)clearEverythingRequest;
- (IDSStewieClearInfo)initWithClearType:(int64_t)a3;
- (id)description;
- (void)unionWithClearInfo:(id)a3;
@end

@implementation IDSStewieClearInfo

- (IDSStewieClearInfo)initWithClearType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = IDSStewieClearInfo;
  result = [(IDSStewieClearInfo *)&v5 init];
  if (result)
  {
    result->_clearType = a3;
  }

  return result;
}

+ (id)clearEverythingRequest
{
  v2 = [[a1 alloc] initWithClearType:0];

  return v2;
}

- (void)unionWithClearInfo:(id)a3
{
  if (![a3 clearType])
  {

    [(IDSStewieClearInfo *)self setClearType:0];
  }
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(IDSStewieClearInfo *)self clearType];
  objc_opt_self();
  v5 = @"Unknown";
  if (v4 == 1)
  {
    v5 = @"SessionKeys";
  }

  if (!v4)
  {
    v5 = @"All";
  }

  return [NSString stringWithFormat:@"<%@: %p { type: %@ }>", v3, self, v5];
}

@end