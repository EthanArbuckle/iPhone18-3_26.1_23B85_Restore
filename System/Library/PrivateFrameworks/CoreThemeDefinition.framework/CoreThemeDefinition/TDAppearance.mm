@interface TDAppearance
- (NSString)name;
- (unsigned)identifier;
- (void)setIdentifier:(unsigned __int16)a3;
- (void)setName:(id)a3;
@end

@implementation TDAppearance

- (NSString)name
{
  [(TDAppearance *)self willAccessValueForKey:@"name"];
  v3 = [(NSString *)self->_name copy];
  [(TDAppearance *)self didAccessValueForKey:@"name"];
  return v3;
}

- (void)setName:(id)a3
{
  [(TDAppearance *)self willChangeValueForKey:@"name"];

  self->_name = [a3 copy];

  [(TDAppearance *)self didChangeValueForKey:@"name"];
}

- (unsigned)identifier
{
  [(TDAppearance *)self willAccessValueForKey:@"identifier"];
  identifier = self->_identifier;
  [(TDAppearance *)self didAccessValueForKey:@"identifier"];
  return identifier;
}

- (void)setIdentifier:(unsigned __int16)a3
{
  [(TDAppearance *)self willChangeValueForKey:@"identifier"];
  self->_identifier = a3;

  [(TDAppearance *)self didChangeValueForKey:@"identifier"];
}

@end