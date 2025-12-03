@interface HDRapportRequestIdentifier
- (HDRapportRequestIdentifier)initWithSchemaIdentifier:(int64_t)identifier name:(id)name;
- (id)description;
@end

@implementation HDRapportRequestIdentifier

- (HDRapportRequestIdentifier)initWithSchemaIdentifier:(int64_t)identifier name:(id)name
{
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = HDRapportRequestIdentifier;
  v7 = [(HDRapportRequestIdentifier *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_schemaIdentifier = identifier;
    v9 = [nameCopy copy];
    name = v8->_name;
    v8->_name = v9;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = NSStringForRapportSchemaIdentifier(self->_schemaIdentifier);
  v5 = [v3 stringWithFormat:@"<%@-%@>", v4, self->_name];

  return v5;
}

@end