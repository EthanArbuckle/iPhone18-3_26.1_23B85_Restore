@interface CoreIRButton
- (BOOL)isEqual:(id)equal;
- (CoreIRButton)initWithCoder:(id)coder;
- (CoreIRButton)initWithUsagePage:(unsigned int)page usageID:(unsigned int)d;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CoreIRButton

- (CoreIRButton)initWithUsagePage:(unsigned int)page usageID:(unsigned int)d
{
  v7.receiver = self;
  v7.super_class = CoreIRButton;
  result = [(CoreIRButton *)&v7 init];
  if (result)
  {
    result->_usagePage = page;
    result->_usageID = d;
  }

  return result;
}

- (CoreIRButton)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CoreIRButton;
  v4 = [(CoreIRButton *)&v6 init];
  if (v4)
  {
    v4->_usagePage = [coder decodeInt32ForKey:@"UsagePage"];
    v4->_usageID = [coder decodeInt32ForKey:@"UsageID"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeInt32:self->_usagePage forKey:@"UsagePage"];
  usageID = self->_usageID;

  [coder encodeInt32:usageID forKey:@"UsageID"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  usagePage = [(CoreIRButton *)self usagePage];
  usageID = [(CoreIRButton *)self usageID];

  return [v4 initWithUsagePage:usagePage usageID:usageID];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = CoreIRButton;
  return [-[CoreIRButton description](&v3 description)];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  usagePage = [(CoreIRButton *)self usagePage];
  if (usagePage != [equal usagePage])
  {
    return 0;
  }

  usageID = [(CoreIRButton *)self usageID];
  return usageID == [equal usageID];
}

@end