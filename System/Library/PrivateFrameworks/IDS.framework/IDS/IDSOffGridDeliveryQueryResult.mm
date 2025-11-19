@interface IDSOffGridDeliveryQueryResult
- (IDSOffGridDeliveryQueryResult)init;
- (IDSOffGridDeliveryQueryResult)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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
  v5 = [(IDSOffGridDeliveryQueryResult *)self shortHandle];
  v6 = [(IDSOffGridDeliveryQueryResult *)self status];
  v7 = [(IDSOffGridDeliveryQueryResult *)self hasUsableSenderKey];
  v8 = @"NO";
  if (v7)
  {
    v8 = @"YES";
  }

  v9 = [v3 stringWithFormat:@"<IDSOffGridDeliveryQueryResult %p>: uri %@ short handle %@ status %ld hasUsableSenderKey %@", self, v4, v5, v6, v8];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  uri = self->_uri;
  v6 = a3;
  [v6 encodeObject:uri forKey:@"uri"];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_status];
  [v6 encodeObject:v5 forKey:@"status"];

  [v6 encodeObject:self->_shortHandle forKey:@"shortHandle"];
  [v6 encodeBool:self->_hasUsableSenderKey forKey:@"hasUsableSenderKey"];
}

- (IDSOffGridDeliveryQueryResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(IDSOffGridDeliveryQueryResult);
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uri"];
  [(IDSOffGridDeliveryQueryResult *)v5 setUri:v6];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"status"];
  -[IDSOffGridDeliveryQueryResult setStatus:](v5, "setStatus:", [v7 intValue]);

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shortHandle"];
  [(IDSOffGridDeliveryQueryResult *)v5 setShortHandle:v8];

  v9 = [v4 decodeBoolForKey:@"hasUsableSenderKey"];
  [(IDSOffGridDeliveryQueryResult *)v5 setHasUsableSenderKey:v9];

  return v5;
}

@end