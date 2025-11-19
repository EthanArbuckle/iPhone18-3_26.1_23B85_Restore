@interface TDDoubleProperty
- (double)doubleValue;
- (void)addToDictionary:(id)a3;
- (void)dealloc;
- (void)setDoubleValue:(double)a3;
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

- (void)setDoubleValue:(double)a3
{
  [(TDDoubleProperty *)self willChangeValueForKey:@"doubleValue"];
  self->_doubleValue = a3;

  [(TDDoubleProperty *)self didChangeValueForKey:@"doubleValue"];
}

- (void)addToDictionary:(id)a3
{
  v5 = MEMORY[0x277CCABB0];
  [(TDDoubleProperty *)self doubleValue];
  v6 = [v5 numberWithDouble:?];
  v7 = [(TDProperty *)self name];

  [a3 setObject:v6 forKey:v7];
}

@end