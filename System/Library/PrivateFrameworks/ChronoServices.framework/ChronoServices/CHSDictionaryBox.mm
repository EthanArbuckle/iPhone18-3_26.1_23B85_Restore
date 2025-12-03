@interface CHSDictionaryBox
+ (id)boxedValue:(id)value;
- (CHSDictionaryBox)initWithCoder:(id)coder;
- (CHSDictionaryBox)initWithValue:(id)value;
@end

@implementation CHSDictionaryBox

+ (id)boxedValue:(id)value
{
  valueCopy = value;
  v4 = [[CHSDictionaryBox alloc] initWithValue:valueCopy];

  return v4;
}

- (CHSDictionaryBox)initWithValue:(id)value
{
  valueCopy = value;
  v9.receiver = self;
  v9.super_class = CHSDictionaryBox;
  v6 = [(CHSDictionaryBox *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_value, value);
  }

  return v7;
}

- (CHSDictionaryBox)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = __plistableTypes();
  v6 = [coderCopy decodeObjectOfClasses:v5 forKey:@"dictKey"];

  v7 = [(CHSDictionaryBox *)self initWithValue:v6];
  return v7;
}

@end