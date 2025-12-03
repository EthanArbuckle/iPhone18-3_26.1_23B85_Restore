@interface MEDecodeContext
- (MEDecodeContext)initWithCoder:(id)coder;
- (MEDecodeContext)initWithDecodeReason:(int64_t)reason;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MEDecodeContext

- (MEDecodeContext)initWithDecodeReason:(int64_t)reason
{
  v5.receiver = self;
  v5.super_class = MEDecodeContext;
  result = [(MEDecodeContext *)&v5 init];
  if (result)
  {
    result->_decodeReason = reason;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[MEDecodeContext decodeReason](self forKey:{"decodeReason"), @"EFPropertyKey_decodeReason"}];
}

- (MEDecodeContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = MEDecodeContext;
  v5 = [(MEDecodeContext *)&v7 init];
  if (v5)
  {
    v5->_decodeReason = [coderCopy decodeIntegerForKey:@"EFPropertyKey_decodeReason"];
  }

  return v5;
}

@end