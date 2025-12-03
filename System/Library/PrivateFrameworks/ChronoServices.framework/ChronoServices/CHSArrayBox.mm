@interface CHSArrayBox
+ (id)boxedValue:(id)value;
- (CHSArrayBox)initWithCoder:(id)coder;
- (CHSArrayBox)initWithValue:(id)value;
@end

@implementation CHSArrayBox

+ (id)boxedValue:(id)value
{
  valueCopy = value;
  v4 = [[CHSArrayBox alloc] initWithValue:valueCopy];

  return v4;
}

- (CHSArrayBox)initWithValue:(id)value
{
  valueCopy = value;
  v9.receiver = self;
  v9.super_class = CHSArrayBox;
  v6 = [(CHSArrayBox *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_value, value);
  }

  return v7;
}

- (CHSArrayBox)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = __plistableTypes();
  v6 = [coderCopy decodeObjectOfClasses:v5 forKey:@"arrayKey"];

  v7 = [(CHSArrayBox *)self initWithValue:v6];
  return v7;
}

@end