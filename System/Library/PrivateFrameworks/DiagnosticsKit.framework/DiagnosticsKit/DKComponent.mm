@interface DKComponent
+ (id)componentWithIdentity:(id)a3 attributes:(id)a4;
- (DKComponent)initWithCoder:(id)a3;
- (DKComponent)initWithIdentity:(id)a3 attributes:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryForJSON;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DKComponent

+ (id)componentWithIdentity:(id)a3 attributes:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithIdentity:v7 attributes:v6];

  return v8;
}

- (DKComponent)initWithIdentity:(id)a3 attributes:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = DKComponent;
  v9 = [(DKComponent *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identity, a3);
    objc_storeStrong(&v10->_attributes, a4);
  }

  return v10;
}

- (id)dictionaryForJSON
{
  v3 = [(DKComponent *)self attributes];
  v4 = [v3 mutableCopy];

  v5 = [(DKComponent *)self identity];
  v6 = [v5 version];
  v7 = [v6 string];
  [v4 setObject:v7 forKeyedSubscript:@"version"];

  v8 = [(DKComponent *)self identity];
  v9 = [v8 type];
  [v4 setObject:v9 forKeyedSubscript:@"type"];

  v10 = [(DKComponent *)self identity];
  v11 = [v10 identifier];

  if (v11)
  {
    v12 = [(DKComponent *)self identity];
    v13 = [v12 identifier];
    [v4 setObject:v13 forKeyedSubscript:@"identifier"];
  }

  return v4;
}

- (DKComponent)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = DKComponent;
  v5 = [(DKComponent *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identity"];
    identity = v5->_identity;
    v5->_identity = v6;

    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v8 setWithObjects:{v9, v10, v11, v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"attributes"];
    attributes = v5->_attributes;
    v5->_attributes = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DKComponent *)self identity];
  [v4 encodeObject:v5 forKey:@"identity"];

  v6 = [(DKComponent *)self attributes];
  [v4 encodeObject:v6 forKey:@"attributes"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(DKComponentIdentity *)self->_identity copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSDictionary *)self->_attributes copyWithZone:a3];
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