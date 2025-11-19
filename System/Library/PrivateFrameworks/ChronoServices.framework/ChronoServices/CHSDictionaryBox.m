@interface CHSDictionaryBox
+ (id)boxedValue:(id)a3;
- (CHSDictionaryBox)initWithCoder:(id)a3;
- (CHSDictionaryBox)initWithValue:(id)a3;
@end

@implementation CHSDictionaryBox

+ (id)boxedValue:(id)a3
{
  v3 = a3;
  v4 = [[CHSDictionaryBox alloc] initWithValue:v3];

  return v4;
}

- (CHSDictionaryBox)initWithValue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CHSDictionaryBox;
  v6 = [(CHSDictionaryBox *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_value, a3);
  }

  return v7;
}

- (CHSDictionaryBox)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = __plistableTypes();
  v6 = [v4 decodeObjectOfClasses:v5 forKey:@"dictKey"];

  v7 = [(CHSDictionaryBox *)self initWithValue:v6];
  return v7;
}

@end