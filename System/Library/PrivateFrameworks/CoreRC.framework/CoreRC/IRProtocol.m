@interface IRProtocol
- (BOOL)isEqual:(id)a3;
- (IRProtocol)initWithCoder:(id)a3;
- (IRProtocol)initWithProtocolID:(unsigned __int8)a3 options:(unsigned __int8)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IRProtocol

- (IRProtocol)initWithProtocolID:(unsigned __int8)a3 options:(unsigned __int8)a4
{
  v7.receiver = self;
  v7.super_class = IRProtocol;
  result = [(IRProtocol *)&v7 init];
  if (result)
  {
    result->_protocolID = a3;
    result->_options = a4;
  }

  return result;
}

- (IRProtocol)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = IRProtocol;
  v4 = [(IRProtocol *)&v6 init];
  if (v4)
  {
    v4->_protocolID = [a3 decodeIntegerForKey:@"protocolProtocol"];
    v4->_options = [a3 decodeIntegerForKey:@"protocolOptions"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeInt:self->_protocolID forKey:@"protocolProtocol"];
  options = self->_options;

  [a3 encodeInt:options forKey:@"protocolOptions"];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = IRProtocol;
  v3 = [(IRProtocol *)&v7 description];
  v4 = [(IRProtocol *)self protocolID];
  if (v4 <= 0xF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return [v3 stringByAppendingFormat:@" ID: %s; Options: %u;", IRProtocolName_names[v5], -[IRProtocol options](self, "options")];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [(IRProtocol *)self protocolID];
  if (v5 != [a3 protocolID])
  {
    return 0;
  }

  v6 = [(IRProtocol *)self options];
  return v6 == [a3 options];
}

@end