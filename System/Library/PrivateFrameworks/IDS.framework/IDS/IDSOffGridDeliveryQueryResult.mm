@interface IDSOffGridDeliveryQueryResult
- (IDSOffGridDeliveryQueryResult)init;
- (IDSOffGridDeliveryQueryResult)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSOffGridDeliveryQueryResult

- (IDSOffGridDeliveryQueryResult)init
{
  v3.receiver = self;
  v3.super_class = IDSOffGridDeliveryQueryResult;
  return [(IDSOffGridDeliveryQueryResult *)&v3 init];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(IDSOffGridDeliveryQueryResult *)self uri];
  shortHandle = [(IDSOffGridDeliveryQueryResult *)self shortHandle];
  status = [(IDSOffGridDeliveryQueryResult *)self status];
  hasUsableSenderKey = [(IDSOffGridDeliveryQueryResult *)self hasUsableSenderKey];
  v8 = @"NO";
  if (hasUsableSenderKey)
  {
    v8 = @"YES";
  }

  v9 = [v3 stringWithFormat:@"<IDSOffGridDeliveryQueryResult %p>: uri %@ short handle %@ status %ld hasUsableSenderKey %@", self, v4, shortHandle, status, v8];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  uri = self->_uri;
  coderCopy = coder;
  [coderCopy encodeObject:uri forKey:@"uri"];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_status];
  [coderCopy encodeObject:v5 forKey:@"status"];

  [coderCopy encodeObject:self->_shortHandle forKey:@"shortHandle"];
  [coderCopy encodeBool:self->_hasUsableSenderKey forKey:@"hasUsableSenderKey"];
}

- (IDSOffGridDeliveryQueryResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_alloc_init(IDSOffGridDeliveryQueryResult);
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uri"];
  [(IDSOffGridDeliveryQueryResult *)v5 setUri:v6];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"status"];
  -[IDSOffGridDeliveryQueryResult setStatus:](v5, "setStatus:", [v7 intValue]);

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shortHandle"];
  [(IDSOffGridDeliveryQueryResult *)v5 setShortHandle:v8];

  v9 = [coderCopy decodeBoolForKey:@"hasUsableSenderKey"];
  [(IDSOffGridDeliveryQueryResult *)v5 setHasUsableSenderKey:v9];

  return v5;
}

@end