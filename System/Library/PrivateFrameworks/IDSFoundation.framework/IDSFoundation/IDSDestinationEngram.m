@interface IDSDestinationEngram
- (IDSDestinationEngram)initWithCoder:(id)a3;
- (IDSDestinationEngram)initWithENGroup:(id)a3;
- (id)description;
- (id)destinationURIs;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSDestinationEngram

- (IDSDestinationEngram)initWithENGroup:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IDSDestinationEngram;
  v6 = [(IDSDestinationEngram *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingGroup, a3);
  }

  return v7;
}

- (IDSDestinationEngram)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kIDSDestinationEngramENGroupKey"];

  v6 = [(IDSDestinationEngram *)self initWithENGroup:v5];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(IDSDestinationEngram *)self underlyingGroup];
  [v4 encodeObject:v5 forKey:@"kIDSDestinationEngramENGroupKey"];
}

- (id)destinationURIs
{
  v2 = [(IDSDestinationEngram *)self underlyingGroup];
  v3 = [v2 destinations];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(IDSDestinationEngram *)self destinationURIs];
  v6 = [v3 stringWithFormat:@"<%@: %p groupID: %@>", v4, self, v5];

  return v6;
}

@end