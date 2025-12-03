@interface MEMessageActionFlagChange
- (BOOL)isEqual:(id)equal;
- (MEMessageActionFlagChange)initWithCoder:(id)coder;
- (MEMessageActionFlagChange)initWithFlag:(int64_t)flag;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MEMessageActionFlagChange

- (MEMessageActionFlagChange)initWithFlag:(int64_t)flag
{
  v5.receiver = self;
  v5.super_class = MEMessageActionFlagChange;
  result = [(MEMessageActionFlagChange *)&v5 init];
  if (result)
  {
    result->_flag = flag;
  }

  return result;
}

- (MEMessageActionFlagChange)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = -[MEMessageActionFlagChange initWithFlag:](self, "initWithFlag:", [coderCopy decodeIntegerForKey:@"EFPropertyKey_flag"]);

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[MEMessageActionFlagChange flag](self forKey:{"flag"), @"EFPropertyKey_flag"}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if ([v5 isEqual:objc_opt_class()])
  {
    v6 = equalCopy;
    flag = [(MEMessageActionFlagChange *)self flag];
    v8 = flag == [v6 flag];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end