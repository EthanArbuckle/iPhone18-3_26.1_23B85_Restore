@interface EMObject
- (BOOL)isEqual:(id)equal;
- (EMObject)initWithCoder:(id)coder;
- (EMObject)initWithObjectID:(id)d;
- (NSString)debugDescription;
- (NSString)ef_publicDescription;
- (unint64_t)hash;
- (void)_commonInitWithObjectID:(id)d;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EMObject

- (NSString)ef_publicDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  objectID = [(EMObject *)self objectID];
  stringHash = [objectID stringHash];
  ef_publicDescription = [stringHash ef_publicDescription];
  v8 = [v3 stringWithFormat:@"<%@: %p: %@>", v4, self, ef_publicDescription];

  return v8;
}

- (unint64_t)hash
{
  objectID = [(EMObject *)self objectID];
  v3 = [objectID hash];

  return v3;
}

- (EMObject)initWithObjectID:(id)d
{
  dCopy = d;
  v7.receiver = self;
  v7.super_class = EMObject;
  v5 = [(EMObject *)&v7 init];
  if (v5)
  {
    if (!dCopy)
    {
      dCopy = [[EMObjectID alloc] initAsEphemeralID:1];
    }

    [(EMObject *)v5 _commonInitWithObjectID:dCopy];
  }

  return v5;
}

- (void)_commonInitWithObjectID:(id)d
{
  dCopy = d;
  v4 = [dCopy copy];
  objectID = self->_objectID;
  self->_objectID = v4;
}

- (EMObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = EMObject;
  v5 = [(EMObject *)&v8 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_objectID"];
    [(EMObject *)v5 _commonInitWithObjectID:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objectID = [(EMObject *)self objectID];
  [coderCopy encodeObject:objectID forKey:@"EFPropertyKey_objectID"];
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  objectID = [(EMObject *)self objectID];
  v6 = [v3 stringWithFormat:@"<%@: %p>\n\tObjectID: %@", v4, self, objectID];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      objectID = [(EMObject *)self objectID];
      objectID2 = [(EMObject *)v5 objectID];
      v8 = [objectID isEqual:objectID2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end