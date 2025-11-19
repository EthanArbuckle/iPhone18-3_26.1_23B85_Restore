@interface EMObject
- (BOOL)isEqual:(id)a3;
- (EMObject)initWithCoder:(id)a3;
- (EMObject)initWithObjectID:(id)a3;
- (NSString)debugDescription;
- (NSString)ef_publicDescription;
- (unint64_t)hash;
- (void)_commonInitWithObjectID:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EMObject

- (NSString)ef_publicDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(EMObject *)self objectID];
  v6 = [v5 stringHash];
  v7 = [v6 ef_publicDescription];
  v8 = [v3 stringWithFormat:@"<%@: %p: %@>", v4, self, v7];

  return v8;
}

- (unint64_t)hash
{
  v2 = [(EMObject *)self objectID];
  v3 = [v2 hash];

  return v3;
}

- (EMObject)initWithObjectID:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = EMObject;
  v5 = [(EMObject *)&v7 init];
  if (v5)
  {
    if (!v4)
    {
      v4 = [[EMObjectID alloc] initAsEphemeralID:1];
    }

    [(EMObject *)v5 _commonInitWithObjectID:v4];
  }

  return v5;
}

- (void)_commonInitWithObjectID:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  objectID = self->_objectID;
  self->_objectID = v4;
}

- (EMObject)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = EMObject;
  v5 = [(EMObject *)&v8 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_objectID"];
    [(EMObject *)v5 _commonInitWithObjectID:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(EMObject *)self objectID];
  [v5 encodeObject:v4 forKey:@"EFPropertyKey_objectID"];
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(EMObject *)self objectID];
  v6 = [v3 stringWithFormat:@"<%@: %p>\n\tObjectID: %@", v4, self, v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(EMObject *)self objectID];
      v7 = [(EMObject *)v5 objectID];
      v8 = [v6 isEqual:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end