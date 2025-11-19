@interface TDThemeConstant
- (id)constantName;
- (id)copyDataFromAttributes;
- (id)displayName;
- (unsigned)identifier;
- (void)setAttributesFromCopyData:(id)a3;
- (void)setConstantName:(id)a3;
- (void)setDisplayName:(id)a3;
- (void)setIdentifier:(unsigned int)a3;
@end

@implementation TDThemeConstant

- (void)setIdentifier:(unsigned int)a3
{
  [(TDThemeConstant *)self willChangeValueForKey:@"identifier"];
  self->_identifier = a3;

  [(TDThemeConstant *)self didChangeValueForKey:@"identifier"];
}

- (unsigned)identifier
{
  [(TDThemeConstant *)self willAccessValueForKey:@"identifier"];
  identifier = self->_identifier;
  [(TDThemeConstant *)self didAccessValueForKey:@"identifier"];
  return identifier;
}

- (void)setDisplayName:(id)a3
{
  if (a3)
  {
    [(TDThemeConstant *)self willChangeValueForKey:@"displayName"];
    [(TDThemeConstant *)self setPrimitiveValue:a3 forKey:@"displayName"];

    [(TDThemeConstant *)self didChangeValueForKey:@"displayName"];
  }
}

- (id)displayName
{
  [(TDThemeConstant *)self willAccessValueForKey:@"displayName"];
  v3 = [(TDThemeConstant *)self primitiveValueForKey:@"displayName"];
  [(TDThemeConstant *)self didAccessValueForKey:@"displayName"];
  return v3;
}

- (void)setConstantName:(id)a3
{
  if (a3)
  {
    [(TDThemeConstant *)self willChangeValueForKey:@"constantName"];
    [(TDThemeConstant *)self setPrimitiveValue:a3 forKey:@"constantName"];

    [(TDThemeConstant *)self didChangeValueForKey:@"constantName"];
  }
}

- (id)constantName
{
  [(TDThemeConstant *)self willAccessValueForKey:@"constantName"];
  v3 = [(TDThemeConstant *)self primitiveValueForKey:@"constantName"];
  [(TDThemeConstant *)self didAccessValueForKey:@"constantName"];
  return v3;
}

- (id)copyDataFromAttributes
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
  v4 = [(TDThemeConstant *)self valueForKey:@"constantName"];
  if (v4)
  {
    [v3 setObject:v4 forKey:@"constantName"];
  }

  v5 = [(TDThemeConstant *)self valueForKey:@"displayName"];
  if (v5)
  {
    [v3 setObject:v5 forKey:@"displayName"];
  }

  v6 = [(TDThemeConstant *)self valueForKey:@"identifier"];
  if (v6)
  {
    [v3 setObject:v6 forKey:@"identifier"];
  }

  v7 = [MEMORY[0x277CCAC58] dataWithPropertyList:v3 format:200 options:0 error:0];

  return [v7 copy];
}

- (void)setAttributesFromCopyData:(id)a3
{
  v4 = [MEMORY[0x277CCAC58] propertyListWithData:a3 options:0 format:0 error:0];
  v5 = [v4 objectForKey:@"constantName"];
  if (v5)
  {
    [(TDThemeConstant *)self setValue:v5 forKey:@"constantName"];
  }

  v6 = [v4 objectForKey:@"displayName"];
  if (v6)
  {
    [(TDThemeConstant *)self setValue:v6 forKey:@"displayName"];
  }

  v7 = [v4 objectForKey:@"identifier"];
  if (v7)
  {

    [(TDThemeConstant *)self setValue:v7 forKey:@"identifier"];
  }
}

@end