@interface MEDecodeContext
- (MEDecodeContext)initWithCoder:(id)a3;
- (MEDecodeContext)initWithDecodeReason:(int64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MEDecodeContext

- (MEDecodeContext)initWithDecodeReason:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = MEDecodeContext;
  result = [(MEDecodeContext *)&v5 init];
  if (result)
  {
    result->_decodeReason = a3;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[MEDecodeContext decodeReason](self forKey:{"decodeReason"), @"EFPropertyKey_decodeReason"}];
}

- (MEDecodeContext)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = MEDecodeContext;
  v5 = [(MEDecodeContext *)&v7 init];
  if (v5)
  {
    v5->_decodeReason = [v4 decodeIntegerForKey:@"EFPropertyKey_decodeReason"];
  }

  return v5;
}

@end