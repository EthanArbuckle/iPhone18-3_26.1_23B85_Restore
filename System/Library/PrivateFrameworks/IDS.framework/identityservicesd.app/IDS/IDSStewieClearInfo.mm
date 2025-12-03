@interface IDSStewieClearInfo
+ (id)clearEverythingRequest;
- (IDSStewieClearInfo)initWithClearType:(int64_t)type;
- (id)description;
- (void)unionWithClearInfo:(id)info;
@end

@implementation IDSStewieClearInfo

- (IDSStewieClearInfo)initWithClearType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = IDSStewieClearInfo;
  result = [(IDSStewieClearInfo *)&v5 init];
  if (result)
  {
    result->_clearType = type;
  }

  return result;
}

+ (id)clearEverythingRequest
{
  v2 = [[self alloc] initWithClearType:0];

  return v2;
}

- (void)unionWithClearInfo:(id)info
{
  if (![info clearType])
  {

    [(IDSStewieClearInfo *)self setClearType:0];
  }
}

- (id)description
{
  v3 = objc_opt_class();
  clearType = [(IDSStewieClearInfo *)self clearType];
  objc_opt_self();
  v5 = @"Unknown";
  if (clearType == 1)
  {
    v5 = @"SessionKeys";
  }

  if (!clearType)
  {
    v5 = @"All";
  }

  return [NSString stringWithFormat:@"<%@: %p { type: %@ }>", v3, self, v5];
}

@end