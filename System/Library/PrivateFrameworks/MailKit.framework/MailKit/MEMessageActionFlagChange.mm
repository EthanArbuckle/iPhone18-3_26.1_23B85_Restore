@interface MEMessageActionFlagChange
- (BOOL)isEqual:(id)a3;
- (MEMessageActionFlagChange)initWithCoder:(id)a3;
- (MEMessageActionFlagChange)initWithFlag:(int64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MEMessageActionFlagChange

- (MEMessageActionFlagChange)initWithFlag:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = MEMessageActionFlagChange;
  result = [(MEMessageActionFlagChange *)&v5 init];
  if (result)
  {
    result->_flag = a3;
  }

  return result;
}

- (MEMessageActionFlagChange)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = -[MEMessageActionFlagChange initWithFlag:](self, "initWithFlag:", [v4 decodeIntegerForKey:@"EFPropertyKey_flag"]);

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[MEMessageActionFlagChange flag](self forKey:{"flag"), @"EFPropertyKey_flag"}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if ([v5 isEqual:objc_opt_class()])
  {
    v6 = v4;
    v7 = [(MEMessageActionFlagChange *)self flag];
    v8 = v7 == [v6 flag];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end