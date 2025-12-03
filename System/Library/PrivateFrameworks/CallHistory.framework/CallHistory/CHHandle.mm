@interface CHHandle
+ (id)normalizedEmailAddressHandleForValue:(id)value;
+ (id)normalizedGenericHandleForValue:(id)value;
+ (id)normalizedHandleWithType:(int64_t)type value:(id)value isoCountryCode:(id)code;
+ (id)normalizedPhoneNumberHandleForValue:(id)value isoCountryCode:(id)code;
+ (int64_t)handleTypeForValue:(id)value;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToHandle:(id)handle;
- (BOOL)isPseudonym;
- (BOOL)isTemporary;
- (CHHandle)initWithCoder:(id)coder;
- (CHHandle)initWithHandle:(id)handle;
- (CHHandle)initWithType:(int64_t)type value:(id)value;
- (CHHandle)initWithType:(int64_t)type value:(id)value normalizedValue:(id)normalizedValue;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHHandle

- (unint64_t)hash
{
  type = [(CHHandle *)self type];
  value = [(CHHandle *)self value];
  v5 = [value hash];
  normalizedValue = [(CHHandle *)self normalizedValue];
  [normalizedValue hash];
  v14 = CHHash(3uLL, v7, v8, v9, v10, v11, v12, v13, type, v5);

  return v14;
}

- (BOOL)isTemporary
{
  value = [(CHHandle *)self value];
  v3 = [value hasPrefix:@"temp:"];

  return v3;
}

- (BOOL)isPseudonym
{
  value = [(CHHandle *)self value];
  v3 = [value hasPrefix:@"pseud:"];

  return v3;
}

- (CHHandle)initWithHandle:(id)handle
{
  handleCopy = handle;
  type = [handleCopy type];
  value = [handleCopy value];
  normalizedValue = [handleCopy normalizedValue];

  v8 = [(CHHandle *)self initWithType:type value:value normalizedValue:normalizedValue];
  return v8;
}

- (CHHandle)initWithType:(int64_t)type value:(id)value
{
  valueCopy = value;
  v12.receiver = self;
  v12.super_class = CHHandle;
  v7 = [(CHHandle *)&v12 init];
  if (v7)
  {
    if (!valueCopy)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CHHandle initWithType:value:]", @"value"}];
    }

    if (type <= 1)
    {
      typeCopy = 1;
    }

    else
    {
      typeCopy = type;
    }

    v7->_type = typeCopy;
    v9 = [valueCopy copy];
    value = v7->_value;
    v7->_value = v9;
  }

  return v7;
}

- (CHHandle)initWithType:(int64_t)type value:(id)value normalizedValue:(id)normalizedValue
{
  normalizedValueCopy = normalizedValue;
  v9 = [(CHHandle *)self initWithType:type value:value];
  if (v9)
  {
    v10 = [normalizedValueCopy copy];
    normalizedValue = v9->_normalizedValue;
    v9->_normalizedValue = v10;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CHHandle allocWithZone:zone];

  return [(CHHandle *)v4 initWithHandle:self];
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_type);
  [coderCopy encodeInteger:type forKey:v6];

  value = self->_value;
  v8 = NSStringFromSelector(sel_value);
  [coderCopy encodeObject:value forKey:v8];

  normalizedValue = self->_normalizedValue;
  v10 = NSStringFromSelector(sel_normalizedValue);
  [coderCopy encodeObject:normalizedValue forKey:v10];
}

- (CHHandle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = CHHandle;
  v5 = [(CHHandle *)&v16 init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_type);
    v5->_type = [coderCopy decodeIntegerForKey:v6];

    v7 = objc_opt_class();
    v8 = NSStringFromSelector(sel_value);
    v9 = [coderCopy decodeObjectOfClass:v7 forKey:v8];
    value = v5->_value;
    v5->_value = v9;

    v11 = objc_opt_class();
    v12 = NSStringFromSelector(sel_normalizedValue);
    v13 = [coderCopy decodeObjectOfClass:v11 forKey:v12];
    normalizedValue = v5->_normalizedValue;
    v5->_normalizedValue = v13;
  }

  return v5;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@ %p ", objc_opt_class(), self];
  v4 = NSStringFromSelector(sel_type);
  [v3 appendFormat:@"%@=%ld", v4, -[CHHandle type](self, "type")];

  [v3 appendFormat:@", "];
  v5 = NSStringFromSelector(sel_value);
  value = [(CHHandle *)self value];
  [v3 appendFormat:@"%@=%@", v5, value];

  [v3 appendFormat:@", "];
  v7 = NSStringFromSelector(sel_normalizedValue);
  normalizedValue = [(CHHandle *)self normalizedValue];
  [v3 appendFormat:@"%@=%@", v7, normalizedValue];

  [v3 appendFormat:@">"];
  v9 = [v3 copy];

  return v9;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CHHandle *)self isEqualToHandle:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToHandle:(id)handle
{
  handleCopy = handle;
  type = [(CHHandle *)self type];
  if (type == [handleCopy type])
  {
    value = [(CHHandle *)self value];
    value2 = [handleCopy value];
    v8 = value;
    v9 = value2;
    v10 = v9;
    if (v8 | v9)
    {
      if (!v9)
      {
        v14 = 0;
        normalizedValue = v8;
LABEL_10:

LABEL_11:
        goto LABEL_12;
      }

      v11 = [v8 isEqualToString:v9];

      if (!v11)
      {
        v14 = 0;
        goto LABEL_11;
      }
    }

    normalizedValue = [(CHHandle *)self normalizedValue];
    normalizedValue2 = [handleCopy normalizedValue];
    v14 = (normalizedValue | normalizedValue2) == 0;
    if (normalizedValue2)
    {
      v14 = [normalizedValue isEqualToString:normalizedValue2];
    }

    goto LABEL_10;
  }

  v14 = 0;
LABEL_12:

  return v14;
}

+ (id)normalizedHandleWithType:(int64_t)type value:(id)value isoCountryCode:(id)code
{
  valueCopy = value;
  codeCopy = code;
  switch(type)
  {
    case 1:
      v9 = [CHHandle normalizedGenericHandleForValue:valueCopy];
      break;
    case 2:
      v9 = [CHHandle normalizedPhoneNumberHandleForValue:valueCopy isoCountryCode:codeCopy];
      break;
    case 3:
      v9 = [CHHandle normalizedEmailAddressHandleForValue:valueCopy];
      break;
    default:
      v9 = [[CHHandle alloc] initWithType:1 value:valueCopy];
      break;
  }

  v10 = v9;

  return v10;
}

+ (id)normalizedEmailAddressHandleForValue:(id)value
{
  valueCopy = value;
  if ([valueCopy length])
  {
    v4 = [CHHandle alloc];
    lowercaseString = [valueCopy lowercaseString];
    v6 = [(CHHandle *)v4 initWithType:3 value:valueCopy normalizedValue:lowercaseString];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)normalizedGenericHandleForValue:(id)value
{
  valueCopy = value;
  if ([valueCopy length])
  {
    v4 = [CHHandle alloc];
    lowercaseString = [valueCopy lowercaseString];
    v6 = [(CHHandle *)v4 initWithType:1 value:valueCopy normalizedValue:lowercaseString];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)normalizedPhoneNumberHandleForValue:(id)value isoCountryCode:(id)code
{
  valueCopy = value;
  codeCopy = code;
  if ([valueCopy length])
  {
    v7 = codeCopy;
    if (![v7 length])
    {
      v8 = PNCopyBestGuessCountryCodeForNumber();

      v7 = v8;
    }

    if ([v7 length])
    {
      v9 = CHPhoneNumberNormalizedPhoneNumberString(valueCopy, v7);
      v10 = [[CHHandle alloc] initWithType:2 value:valueCopy normalizedValue:v9];
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

+ (int64_t)handleTypeForValue:(id)value
{
  if (!value)
  {
    return 0;
  }

  if ([value containsString:@"@"])
  {
    return 3;
  }

  return 2;
}

@end