@interface TDAppearance
- (NSString)name;
- (unsigned)identifier;
- (void)setIdentifier:(unsigned __int16)identifier;
- (void)setName:(id)name;
@end

@implementation TDAppearance

- (NSString)name
{
  [(TDAppearance *)self willAccessValueForKey:@"name"];
  v3 = [(NSString *)self->_name copy];
  [(TDAppearance *)self didAccessValueForKey:@"name"];
  return v3;
}

- (void)setName:(id)name
{
  [(TDAppearance *)self willChangeValueForKey:@"name"];

  self->_name = [name copy];

  [(TDAppearance *)self didChangeValueForKey:@"name"];
}

- (unsigned)identifier
{
  [(TDAppearance *)self willAccessValueForKey:@"identifier"];
  identifier = self->_identifier;
  [(TDAppearance *)self didAccessValueForKey:@"identifier"];
  return identifier;
}

- (void)setIdentifier:(unsigned __int16)identifier
{
  [(TDAppearance *)self willChangeValueForKey:@"identifier"];
  self->_identifier = identifier;

  [(TDAppearance *)self didChangeValueForKey:@"identifier"];
}

@end