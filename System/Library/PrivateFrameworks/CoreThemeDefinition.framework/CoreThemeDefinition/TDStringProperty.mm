@interface TDStringProperty
- (NSString)stringValue;
- (void)addToDictionary:(id)a3;
- (void)dealloc;
- (void)setStringValue:(id)a3;
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

- (void)setStringValue:(id)a3
{
  [(TDStringProperty *)self willChangeValueForKey:@"stringValue"];

  self->_stringValue = [a3 copy];

  [(TDStringProperty *)self didChangeValueForKey:@"stringValue"];
}

- (void)addToDictionary:(id)a3
{
  v5 = [(TDStringProperty *)self stringValue];
  v6 = [(TDProperty *)self name];

  [a3 setObject:v5 forKey:v6];
}

@end