@interface CHSWidgetRenderSchemeArrayBox
+ (id)boxWithValue:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CHSWidgetRenderSchemeArrayBox)initWithBSXPCCoder:(id)a3;
- (CHSWidgetRenderSchemeArrayBox)initWithCoder:(id)a3;
- (CHSWidgetRenderSchemeArrayBox)initWithValue:(id)a3;
@end

@implementation CHSWidgetRenderSchemeArrayBox

+ (id)boxWithValue:(id)a3
{
  v3 = a3;
  v4 = [[CHSWidgetRenderSchemeArrayBox alloc] initWithValue:v3];

  return v4;
}

- (CHSWidgetRenderSchemeArrayBox)initWithValue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CHSWidgetRenderSchemeArrayBox;
  v6 = [(CHSWidgetRenderSchemeArrayBox *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_value, a3);
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(NSArray *)self->_value isEqual:v4->_value];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (CHSWidgetRenderSchemeArrayBox)initWithCoder:(id)a3
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
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
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"_value"];
    value = v5->_value;
    v5->_value = v9;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

- (CHSWidgetRenderSchemeArrayBox)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 decodeCollectionOfClass:v5 containingClass:objc_opt_class() forKey:@"_value"];
  v7 = [(CHSWidgetRenderSchemeArrayBox *)self initWithValue:v6];

  return v7;
}

@end