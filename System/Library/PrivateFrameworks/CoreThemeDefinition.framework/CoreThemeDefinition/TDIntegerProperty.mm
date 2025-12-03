@interface TDIntegerProperty
- (int64_t)integerValue;
- (void)addToDictionary:(id)dictionary;
- (void)dealloc;
- (void)setIntegerValue:(int64_t)value;
@end

@implementation TDIntegerProperty

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = TDIntegerProperty;
  [(TDProperty *)&v2 dealloc];
}

- (int64_t)integerValue
{
  [(TDIntegerProperty *)self willAccessValueForKey:@"integerValue"];
  integerValue = self->_integerValue;
  [(TDIntegerProperty *)self didAccessValueForKey:@"integerValue"];
  return integerValue;
}

- (void)setIntegerValue:(int64_t)value
{
  [(TDIntegerProperty *)self willChangeValueForKey:@"integerValue"];
  self->_integerValue = value;

  [(TDIntegerProperty *)self didChangeValueForKey:@"integerValue"];
}

- (void)addToDictionary:(id)dictionary
{
  v5 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[TDIntegerProperty integerValue](self, "integerValue")}];
  name = [(TDProperty *)self name];

  [dictionary setObject:v5 forKey:name];
}

@end