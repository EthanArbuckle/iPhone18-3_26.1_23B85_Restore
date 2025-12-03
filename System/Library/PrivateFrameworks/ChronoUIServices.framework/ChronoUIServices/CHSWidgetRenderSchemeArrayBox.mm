@interface CHSWidgetRenderSchemeArrayBox
+ (id)boxWithValue:(id)value;
- (BOOL)isEqual:(id)equal;
- (CHSWidgetRenderSchemeArrayBox)initWithBSXPCCoder:(id)coder;
- (CHSWidgetRenderSchemeArrayBox)initWithCoder:(id)coder;
- (CHSWidgetRenderSchemeArrayBox)initWithValue:(id)value;
@end

@implementation CHSWidgetRenderSchemeArrayBox

+ (id)boxWithValue:(id)value
{
  valueCopy = value;
  v4 = [[CHSWidgetRenderSchemeArrayBox alloc] initWithValue:valueCopy];

  return v4;
}

- (CHSWidgetRenderSchemeArrayBox)initWithValue:(id)value
{
  valueCopy = value;
  v9.receiver = self;
  v9.super_class = CHSWidgetRenderSchemeArrayBox;
  v6 = [(CHSWidgetRenderSchemeArrayBox *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_value, value);
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(NSArray *)self->_value isEqual:equalCopy->_value];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (CHSWidgetRenderSchemeArrayBox)initWithCoder:(id)coder
{
  v14[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CHSWidgetRenderSchemeArrayBox;
  v5 = [(CHSWidgetRenderSchemeArrayBox *)&v13 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v14[0] = objc_opt_class();
    v14[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"_value"];
    value = v5->_value;
    v5->_value = v9;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

- (CHSWidgetRenderSchemeArrayBox)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = [coderCopy decodeCollectionOfClass:v5 containingClass:objc_opt_class() forKey:@"_value"];
  v7 = [(CHSWidgetRenderSchemeArrayBox *)self initWithValue:v6];

  return v7;
}

@end