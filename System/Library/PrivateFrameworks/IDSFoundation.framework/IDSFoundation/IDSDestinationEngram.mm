@interface IDSDestinationEngram
- (IDSDestinationEngram)initWithCoder:(id)coder;
- (IDSDestinationEngram)initWithENGroup:(id)group;
- (id)description;
- (id)destinationURIs;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSDestinationEngram

- (IDSDestinationEngram)initWithENGroup:(id)group
{
  groupCopy = group;
  v9.receiver = self;
  v9.super_class = IDSDestinationEngram;
  v6 = [(IDSDestinationEngram *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingGroup, group);
  }

  return v7;
}

- (IDSDestinationEngram)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kIDSDestinationEngramENGroupKey"];

  v6 = [(IDSDestinationEngram *)self initWithENGroup:v5];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  underlyingGroup = [(IDSDestinationEngram *)self underlyingGroup];
  [coderCopy encodeObject:underlyingGroup forKey:@"kIDSDestinationEngramENGroupKey"];
}

- (id)destinationURIs
{
  underlyingGroup = [(IDSDestinationEngram *)self underlyingGroup];
  destinations = [underlyingGroup destinations];

  return destinations;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  destinationURIs = [(IDSDestinationEngram *)self destinationURIs];
  v6 = [v3 stringWithFormat:@"<%@: %p groupID: %@>", v4, self, destinationURIs];

  return v6;
}

@end