@interface CAMOverlayBooleanRange
- (BOOL)containsValue:(id)value;
- (BOOL)isEqualToRange:(id)range;
- (BOOL)isValueExpectedType:(id)type;
- (NSString)description;
- (id)valueAtIndex:(unint64_t)index;
- (unint64_t)count;
- (unint64_t)indexOfValue:(id)value;
@end

@implementation CAMOverlayBooleanRange

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p>", v5, self];

  return v6;
}

- (unint64_t)count
{
  _values = [objc_opt_class() _values];
  v3 = [_values count];

  return v3;
}

- (BOOL)containsValue:(id)value
{
  valueCopy = value;
  _values = [objc_opt_class() _values];
  v5 = [_values containsObject:valueCopy];

  return v5;
}

- (BOOL)isEqualToRange:(id)range
{
  rangeCopy = range;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)isValueExpectedType:(id)type
{
  typeCopy = type;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (unint64_t)indexOfValue:(id)value
{
  valueCopy = value;
  _values = [objc_opt_class() _values];
  v5 = [_values indexOfObject:valueCopy];

  return v5;
}

- (id)valueAtIndex:(unint64_t)index
{
  _values = [objc_opt_class() _values];
  v5 = [_values objectAtIndex:index];

  return v5;
}

@end