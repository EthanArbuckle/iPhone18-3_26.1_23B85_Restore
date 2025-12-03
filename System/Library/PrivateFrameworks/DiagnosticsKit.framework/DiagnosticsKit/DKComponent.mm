@interface DKComponent
+ (id)componentWithIdentity:(id)identity attributes:(id)attributes;
- (DKComponent)initWithCoder:(id)coder;
- (DKComponent)initWithIdentity:(id)identity attributes:(id)attributes;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryForJSON;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DKComponent

+ (id)componentWithIdentity:(id)identity attributes:(id)attributes
{
  attributesCopy = attributes;
  identityCopy = identity;
  v8 = [[self alloc] initWithIdentity:identityCopy attributes:attributesCopy];

  return v8;
}

- (DKComponent)initWithIdentity:(id)identity attributes:(id)attributes
{
  identityCopy = identity;
  attributesCopy = attributes;
  v12.receiver = self;
  v12.super_class = DKComponent;
  v9 = [(DKComponent *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identity, identity);
    objc_storeStrong(&v10->_attributes, attributes);
  }

  return v10;
}

- (id)dictionaryForJSON
{
  attributes = [(DKComponent *)self attributes];
  v4 = [attributes mutableCopy];

  identity = [(DKComponent *)self identity];
  version = [identity version];
  string = [version string];
  [v4 setObject:string forKeyedSubscript:@"version"];

  identity2 = [(DKComponent *)self identity];
  type = [identity2 type];
  [v4 setObject:type forKeyedSubscript:@"type"];

  identity3 = [(DKComponent *)self identity];
  identifier = [identity3 identifier];

  if (identifier)
  {
    identity4 = [(DKComponent *)self identity];
    identifier2 = [identity4 identifier];
    [v4 setObject:identifier2 forKeyedSubscript:@"identifier"];
  }

  return v4;
}

- (DKComponent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = DKComponent;
  v5 = [(DKComponent *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identity"];
    identity = v5->_identity;
    v5->_identity = v6;

    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v8 setWithObjects:{v9, v10, v11, v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"attributes"];
    attributes = v5->_attributes;
    v5->_attributes = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identity = [(DKComponent *)self identity];
  [coderCopy encodeObject:identity forKey:@"identity"];

  attributes = [(DKComponent *)self attributes];
  [coderCopy encodeObject:attributes forKey:@"attributes"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(DKComponentIdentity *)self->_identity copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSDictionary *)self->_attributes copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p identity: %@>", v5, self, self->_identity];;

  return v6;
}

@end