@interface IRProtocol
- (BOOL)isEqual:(id)equal;
- (IRProtocol)initWithCoder:(id)coder;
- (IRProtocol)initWithProtocolID:(unsigned __int8)d options:(unsigned __int8)options;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IRProtocol

- (IRProtocol)initWithProtocolID:(unsigned __int8)d options:(unsigned __int8)options
{
  v7.receiver = self;
  v7.super_class = IRProtocol;
  result = [(IRProtocol *)&v7 init];
  if (result)
  {
    result->_protocolID = d;
    result->_options = options;
  }

  return result;
}

- (IRProtocol)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = IRProtocol;
  v4 = [(IRProtocol *)&v6 init];
  if (v4)
  {
    v4->_protocolID = [coder decodeIntegerForKey:@"protocolProtocol"];
    v4->_options = [coder decodeIntegerForKey:@"protocolOptions"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeInt:self->_protocolID forKey:@"protocolProtocol"];
  options = self->_options;

  [coder encodeInt:options forKey:@"protocolOptions"];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = IRProtocol;
  v3 = [(IRProtocol *)&v7 description];
  protocolID = [(IRProtocol *)self protocolID];
  if (protocolID <= 0xF)
  {
    v5 = protocolID;
  }

  else
  {
    v5 = 0;
  }

  return [v3 stringByAppendingFormat:@" ID: %s; Options: %u;", IRProtocolName_names[v5], -[IRProtocol options](self, "options")];
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

  protocolID = [(IRProtocol *)self protocolID];
  if (protocolID != [equal protocolID])
  {
    return 0;
  }

  options = [(IRProtocol *)self options];
  return options == [equal options];
}

@end