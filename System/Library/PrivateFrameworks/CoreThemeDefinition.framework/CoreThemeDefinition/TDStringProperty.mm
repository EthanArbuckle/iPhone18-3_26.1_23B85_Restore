@interface TDStringProperty
- (NSString)stringValue;
- (void)addToDictionary:(id)dictionary;
- (void)dealloc;
- (void)setStringValue:(id)value;
@end

@implementation TDStringProperty

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TDStringProperty;
  [(TDProperty *)&v3 dealloc];
}

- (NSString)stringValue
{
  [(TDStringProperty *)self willAccessValueForKey:@"stringValue"];
  v3 = [(NSString *)self->_stringValue copy];
  [(TDStringProperty *)self didAccessValueForKey:@"stringValue"];
  return v3;
}

- (void)setStringValue:(id)value
{
  [(TDStringProperty *)self willChangeValueForKey:@"stringValue"];

  self->_stringValue = [value copy];

  [(TDStringProperty *)self didChangeValueForKey:@"stringValue"];
}

- (void)addToDictionary:(id)dictionary
{
  stringValue = [(TDStringProperty *)self stringValue];
  name = [(TDProperty *)self name];

  [dictionary setObject:stringValue forKey:name];
}

@end