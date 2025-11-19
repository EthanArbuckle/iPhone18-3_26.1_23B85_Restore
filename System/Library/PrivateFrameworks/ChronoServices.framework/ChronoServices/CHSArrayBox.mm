@interface CHSArrayBox
+ (id)boxedValue:(id)a3;
- (CHSArrayBox)initWithCoder:(id)a3;
- (CHSArrayBox)initWithValue:(id)a3;
@end

@implementation CHSArrayBox

+ (id)boxedValue:(id)a3
{
  v3 = a3;
  v4 = [[CHSArrayBox alloc] initWithValue:v3];

  return v4;
}

- (CHSArrayBox)initWithValue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CHSArrayBox;
  v6 = [(CHSArrayBox *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_value, a3);
  }

  return v7;
}

- (CHSArrayBox)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = __plistableTypes();
  v6 = [v4 decodeObjectOfClasses:v5 forKey:@"arrayKey"];

  v7 = [(CHSArrayBox *)self initWithValue:v6];
  return v7;
}

@end