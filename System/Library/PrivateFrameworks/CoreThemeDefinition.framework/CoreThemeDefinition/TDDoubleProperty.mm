@interface TDDoubleProperty
- (double)doubleValue;
- (void)addToDictionary:(id)dictionary;
- (void)dealloc;
- (void)setDoubleValue:(double)value;
@end

@implementation TDDoubleProperty

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = TDDoubleProperty;
  [(TDProperty *)&v2 dealloc];
}

- (double)doubleValue
{
  [(TDDoubleProperty *)self willAccessValueForKey:@"doubleValue"];
  doubleValue = self->_doubleValue;
  [(TDDoubleProperty *)self didAccessValueForKey:@"doubleValue"];
  return doubleValue;
}

- (void)setDoubleValue:(double)value
{
  [(TDDoubleProperty *)self willChangeValueForKey:@"doubleValue"];
  self->_doubleValue = value;

  [(TDDoubleProperty *)self didChangeValueForKey:@"doubleValue"];
}

- (void)addToDictionary:(id)dictionary
{
  v5 = MEMORY[0x277CCABB0];
  [(TDDoubleProperty *)self doubleValue];
  v6 = [v5 numberWithDouble:?];
  name = [(TDProperty *)self name];

  [dictionary setObject:v6 forKey:name];
}

@end