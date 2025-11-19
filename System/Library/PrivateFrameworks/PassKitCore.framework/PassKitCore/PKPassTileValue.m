@interface PKPassTileValue
+ (id)_createForDictionary:(id)a3;
+ (id)_createForType:(int64_t)a3 resolved:(BOOL)a4;
- (BOOL)isEqual:(id)a3;
- (PKPassTileValue)initWithCoder:(id)a3;
- (PKPassTileValueDate)valueTypeDate;
- (PKPassTileValueForeignReference)valueTypeForeignReference;
- (PKPassTileValueNumber)valueTypeNumber;
- (PKPassTileValueText)valueTypeText;
- (id)createResolvedValueWithBundle:(id)a3 privateBundle:(id)a4;
- (id)displayableStringWithPassState:(id)a3 inContext:(int64_t)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassTileValue

+ (id)_createForType:(int64_t)a3 resolved:(BOOL)a4
{
  if (a3 >= 4)
  {
    v7 = 0;
    goto LABEL_6;
  }

  v6 = objc_alloc(*off_1E79E18F0[a3]);
  v7 = v6;
  if (!v6)
  {
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  v11.receiver = v6;
  v11.super_class = PKPassTileValue;
  v8 = objc_msgSendSuper2(&v11, sel_init);
  v9 = v8;
  if (v8)
  {
    *(v8 + 2) = a3;
    *(v8 + 8) = a4;
  }

LABEL_7:

  return v9;
}

+ (id)_createForDictionary:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 PKStringForKey:@"type"];
    v7 = PKPassTileValueTypeFromString(v6);

    v8 = [a1 _createForType:v7 resolved:0];
    v9 = v8;
    if (v8 && [v8 _setUpWithDictionary:v5])
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)createResolvedValueWithBundle:(id)a3 privateBundle:(id)a4
{
  if (self->_resolved)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"PKPassTileValue attempting double resolution."];
  }

  type = self->_type;

  return [PKPassTileValue _createForType:type resolved:1];
}

- (PKPassTileValue)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
  v6 = PKPassTileValueTypeFromString(v5);

  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    if (self)
    {
      v11.receiver = self;
      v11.super_class = PKPassTileValue;
      v7 = [(PKPassTileValue *)&v11 init];
      if (v7)
      {
        v7->_type = v6;
        v7->_resolved = 1;
      }
    }

    else
    {
      v7 = 0;
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PKPassTileValue" code:0 userInfo:0];
    [v4 failWithError:v9];

    v8 = 0;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  if (!self->_resolved)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"PKPassTileValue %@ attempting unresolved XPC transfer.", objc_opt_class()}];
  }

  v4 = self->_type - 1;
  if (v4 > 2)
  {
    v5 = @"text";
  }

  else
  {
    v5 = off_1E79E1910[v4];
  }

  [v6 encodeObject:v5 forKey:@"type"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = 0;
  if (v4 && (isKindOfClass & 1) != 0)
  {
    v6 = [(PKPassTileValue *)self _isEqual:v4];
  }

  return v6;
}

- (id)displayableStringWithPassState:(id)a3 inContext:(int64_t)a4
{
  result = a3;
  __break(1u);
  return result;
}

- (PKPassTileValueText)valueTypeText
{
  if (self->_type)
  {
    self = 0;
  }

  return self;
}

- (PKPassTileValueDate)valueTypeDate
{
  if (self->_type != 1)
  {
    self = 0;
  }

  return self;
}

- (PKPassTileValueNumber)valueTypeNumber
{
  if (self->_type != 2)
  {
    self = 0;
  }

  return self;
}

- (PKPassTileValueForeignReference)valueTypeForeignReference
{
  if (self->_type != 3)
  {
    self = 0;
  }

  return self;
}

@end