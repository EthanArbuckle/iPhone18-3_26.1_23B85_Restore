@interface CAMOverlayBooleanRange
- (BOOL)containsValue:(id)a3;
- (BOOL)isEqualToRange:(id)a3;
- (BOOL)isValueExpectedType:(id)a3;
- (NSString)description;
- (id)valueAtIndex:(unint64_t)a3;
- (unint64_t)count;
- (unint64_t)indexOfValue:(id)a3;
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
  v2 = [objc_opt_class() _values];
  v3 = [v2 count];

  return v3;
}

- (BOOL)containsValue:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() _values];
  v5 = [v4 containsObject:v3];

  return v5;
}

- (BOOL)isEqualToRange:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)isValueExpectedType:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (unint64_t)indexOfValue:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() _values];
  v5 = [v4 indexOfObject:v3];

  return v5;
}

- (id)valueAtIndex:(unint64_t)a3
{
  v4 = [objc_opt_class() _values];
  v5 = [v4 objectAtIndex:a3];

  return v5;
}

@end