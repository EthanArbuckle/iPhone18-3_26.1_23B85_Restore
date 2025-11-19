@interface HDSyncEntityIdentifier
+ (HDSyncEntityIdentifier)identifierWithSchema:(id)a3 entity:(int64_t)a4;
- (BOOL)isEqual:(id)a3;
- (HDSyncEntityIdentifier)initWithCodableEntityIdentifier:(id)a3;
- (HDSyncEntityIdentifier)initWithCoder:(id)a3;
- (HDSyncEntityIdentifier)initWithEntityIdentifier:(int64_t)a3 schemaIdentifier:(id)a4;
- (id)codableEntityIdentifier;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDSyncEntityIdentifier

+ (HDSyncEntityIdentifier)identifierWithSchema:(id)a3 entity:(int64_t)a4
{
  v5 = a3;
  v6 = [[HDSyncEntityIdentifier alloc] initWithEntityIdentifier:a4 schemaIdentifier:v5];

  return v6;
}

- (HDSyncEntityIdentifier)initWithEntityIdentifier:(int64_t)a3 schemaIdentifier:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = HDSyncEntityIdentifier;
  v7 = [(HDSyncEntityIdentifier *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_entityIdentifier = a3;
    v9 = [v6 copy];
    schemaIdentifier = v8->_schemaIdentifier;
    v8->_schemaIdentifier = v9;
  }

  return v8;
}

- (HDSyncEntityIdentifier)initWithCodableEntityIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 hasIdentifier])
  {
    v5 = [v4 schema];
    self = -[HDSyncEntityIdentifier initWithEntityIdentifier:schemaIdentifier:](self, "initWithEntityIdentifier:schemaIdentifier:", [v4 identifier], v5);

    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)codableEntityIdentifier
{
  v3 = objc_alloc_init(HDCodableEntityIdentifier);
  [(HDCodableEntityIdentifier *)v3 setSchema:self->_schemaIdentifier];
  [(HDCodableEntityIdentifier *)v3 setIdentifier:self->_entityIdentifier];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || self->_entityIdentifier != v4[1])
  {
    goto LABEL_6;
  }

  schemaIdentifier = self->_schemaIdentifier;
  v6 = v4[2];
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

- (HDSyncEntityIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"schema"];

  v7 = [(HDSyncEntityIdentifier *)self initWithEntityIdentifier:v5 schemaIdentifier:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  entityIdentifier = self->_entityIdentifier;
  v5 = a3;
  [v5 encodeInteger:entityIdentifier forKey:@"identifier"];
  [v5 encodeObject:self->_schemaIdentifier forKey:@"schema"];
}

@end