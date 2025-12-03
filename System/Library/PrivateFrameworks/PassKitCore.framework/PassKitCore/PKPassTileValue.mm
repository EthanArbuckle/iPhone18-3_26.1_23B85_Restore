@interface PKPassTileValue
+ (id)_createForDictionary:(id)dictionary;
+ (id)_createForType:(int64_t)type resolved:(BOOL)resolved;
- (BOOL)isEqual:(id)equal;
- (PKPassTileValue)initWithCoder:(id)coder;
- (PKPassTileValueDate)valueTypeDate;
- (PKPassTileValueForeignReference)valueTypeForeignReference;
- (PKPassTileValueNumber)valueTypeNumber;
- (PKPassTileValueText)valueTypeText;
- (id)createResolvedValueWithBundle:(id)bundle privateBundle:(id)privateBundle;
- (id)displayableStringWithPassState:(id)state inContext:(int64_t)context;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassTileValue

+ (id)_createForType:(int64_t)type resolved:(BOOL)resolved
{
  if (type >= 4)
  {
    v7 = 0;
    goto LABEL_6;
  }

  v6 = objc_alloc(*off_1E79E18F0[type]);
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
    *(v8 + 2) = type;
    *(v8 + 8) = resolved;
  }

LABEL_7:

  return v9;
}

+ (id)_createForDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = dictionaryCopy;
  if (dictionaryCopy)
  {
    v6 = [dictionaryCopy PKStringForKey:@"type"];
    v7 = PKPassTileValueTypeFromString(v6);

    v8 = [self _createForType:v7 resolved:0];
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

- (id)createResolvedValueWithBundle:(id)bundle privateBundle:(id)privateBundle
{
  if (self->_resolved)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"PKPassTileValue attempting double resolution."];
  }

  type = self->_type;

  return [PKPassTileValue _createForType:type resolved:1];
}

- (PKPassTileValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
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
    selfCopy = self;
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PKPassTileValue" code:0 userInfo:0];
    [coderCopy failWithError:v9];

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
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

  [coderCopy encodeObject:v5 forKey:@"type"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = 0;
  if (equalCopy && (isKindOfClass & 1) != 0)
  {
    v6 = [(PKPassTileValue *)self _isEqual:equalCopy];
  }

  return v6;
}

- (id)displayableStringWithPassState:(id)state inContext:(int64_t)context
{
  result = state;
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