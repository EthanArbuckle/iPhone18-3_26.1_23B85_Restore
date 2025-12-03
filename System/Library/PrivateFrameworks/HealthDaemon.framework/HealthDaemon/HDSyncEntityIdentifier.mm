@interface HDSyncEntityIdentifier
+ (HDSyncEntityIdentifier)identifierWithSchema:(id)schema entity:(int64_t)entity;
- (BOOL)isEqual:(id)equal;
- (HDSyncEntityIdentifier)initWithCodableEntityIdentifier:(id)identifier;
- (HDSyncEntityIdentifier)initWithCoder:(id)coder;
- (HDSyncEntityIdentifier)initWithEntityIdentifier:(int64_t)identifier schemaIdentifier:(id)schemaIdentifier;
- (id)codableEntityIdentifier;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDSyncEntityIdentifier

+ (HDSyncEntityIdentifier)identifierWithSchema:(id)schema entity:(int64_t)entity
{
  schemaCopy = schema;
  v6 = [[HDSyncEntityIdentifier alloc] initWithEntityIdentifier:entity schemaIdentifier:schemaCopy];

  return v6;
}

- (HDSyncEntityIdentifier)initWithEntityIdentifier:(int64_t)identifier schemaIdentifier:(id)schemaIdentifier
{
  schemaIdentifierCopy = schemaIdentifier;
  v12.receiver = self;
  v12.super_class = HDSyncEntityIdentifier;
  v7 = [(HDSyncEntityIdentifier *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_entityIdentifier = identifier;
    v9 = [schemaIdentifierCopy copy];
    schemaIdentifier = v8->_schemaIdentifier;
    v8->_schemaIdentifier = v9;
  }

  return v8;
}

- (HDSyncEntityIdentifier)initWithCodableEntityIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy hasIdentifier])
  {
    schema = [identifierCopy schema];
    self = -[HDSyncEntityIdentifier initWithEntityIdentifier:schemaIdentifier:](self, "initWithEntityIdentifier:schemaIdentifier:", [identifierCopy identifier], schema);

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)codableEntityIdentifier
{
  v3 = objc_alloc_init(HDCodableEntityIdentifier);
  [(HDCodableEntityIdentifier *)v3 setSchema:self->_schemaIdentifier];
  [(HDCodableEntityIdentifier *)v3 setIdentifier:self->_entityIdentifier];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || self->_entityIdentifier != equalCopy[1])
  {
    goto LABEL_6;
  }

  schemaIdentifier = self->_schemaIdentifier;
  v6 = equalCopy[2];
  if (schemaIdentifier == v6)
  {
    v7 = 1;
    goto LABEL_7;
  }

  if (v6)
  {
    v7 = [(NSString *)schemaIdentifier isEqualToString:?];
  }

  else
  {
LABEL_6:
    v7 = 0;
  }

LABEL_7:

  return v7;
}

- (id)description
{
  schemaIdentifier = self->_schemaIdentifier;
  if (schemaIdentifier)
  {
    goto LABEL_2;
  }

  v6 = HDBuiltinSyncEntityClassForType(self->_entityIdentifier);
  if (!v6)
  {
    schemaIdentifier = self->_schemaIdentifier;
LABEL_2:
    if (!schemaIdentifier)
    {
      schemaIdentifier = @"HDSyncEntityType";
    }

    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@(%ld)", schemaIdentifier, self->_entityIdentifier];
    goto LABEL_5;
  }

  v4 = NSStringFromClass(v6);
  if ([v4 hasPrefix:@"HD"])
  {
    v7 = [v4 substringFromIndex:{objc_msgSend(@"HD", "length")}];

    v4 = v7;
  }

  if ([v4 hasSuffix:@"SyncEntity"])
  {
    v8 = [v4 substringToIndex:{objc_msgSend(v4, "length") - objc_msgSend(@"SyncEntity", "length")}];

    v4 = v8;
  }

LABEL_5:

  return v4;
}

- (HDSyncEntityIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"schema"];

  v7 = [(HDSyncEntityIdentifier *)self initWithEntityIdentifier:v5 schemaIdentifier:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  entityIdentifier = self->_entityIdentifier;
  coderCopy = coder;
  [coderCopy encodeInteger:entityIdentifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_schemaIdentifier forKey:@"schema"];
}

@end