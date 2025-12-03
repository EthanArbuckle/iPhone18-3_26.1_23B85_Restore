@interface PKPassTileAccessory
+ (id)_createForDictionary:(id)dictionary;
+ (id)_createForType:(int64_t)type resolved:(BOOL)resolved;
- (BOOL)isEqual:(id)equal;
- (PKPassTileAccessory)initWithCoder:(id)coder;
- (PKPassTileAccessoryButton)accessoryTypeButton;
- (PKPassTileAccessoryImage)accessoryTypeImage;
- (PKPassTileAccessorySpinner)accessoryTypeSpinner;
- (id)createResolvedAccessoryWithBundle:(id)bundle privateBundle:(id)privateBundle;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassTileAccessory

+ (id)_createForType:(int64_t)type resolved:(BOOL)resolved
{
  if (type >= 3)
  {
    v7 = 0;
    goto LABEL_6;
  }

  v6 = objc_alloc(*off_1E79CA110[type]);
  v7 = v6;
  if (!v6)
  {
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  v11.receiver = v6;
  v11.super_class = PKPassTileAccessory;
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
    v12 = 0;
    v6 = [dictionaryCopy PKStringForKey:@"type"];
    v7 = PKPassTileAccessoryTypeFromString(v6, &v12);

    v8 = 0;
    if (v7)
    {
      v9 = [self _createForType:v12 resolved:0];
      v10 = v9;
      if (v9 && [v9 _setUpWithDictionary:v5])
      {
        v8 = v10;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)createResolvedAccessoryWithBundle:(id)bundle privateBundle:(id)privateBundle
{
  if (self->_resolved)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"PKPassTileAccessory attempting double resolution."];
  }

  type = self->_type;

  return [PKPassTileAccessory _createForType:type resolved:1];
}

- (PKPassTileAccessory)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12 = 0;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
  v6 = PKPassTileAccessoryTypeFromString(v5, &v12);

  if (v6 & 1) != 0 && v12 <= 2 && objc_opt_class() && (objc_opt_isKindOfClass())
  {
    if (self)
    {
      v7 = v12;
      v13.receiver = self;
      v13.super_class = PKPassTileAccessory;
      v8 = [(PKPassTileAccessory *)&v13 init];
      if (v8)
      {
        v8->_type = v7;
        v8->_resolved = 1;
      }
    }

    else
    {
      v8 = 0;
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PKPassTileAccessory" code:0 userInfo:0];
    [coderCopy failWithError:v10];

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (!self->_resolved)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"PKPassTileAccessory %@ attempting unresolved XPC transfer.", objc_opt_class()}];
  }

  type = self->_type;
  if (type > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_1E79CA128[type];
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
    v6 = [(PKPassTileAccessory *)self _isEqual:equalCopy];
  }

  return v6;
}

- (PKPassTileAccessoryButton)accessoryTypeButton
{
  if (self->_type)
  {
    self = 0;
  }

  return self;
}

- (PKPassTileAccessorySpinner)accessoryTypeSpinner
{
  if (self->_type != 1)
  {
    self = 0;
  }

  return self;
}

- (PKPassTileAccessoryImage)accessoryTypeImage
{
  if (self->_type != 2)
  {
    self = 0;
  }

  return self;
}

@end