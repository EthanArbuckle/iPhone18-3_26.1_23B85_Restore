@interface CHHandle
+ (id)normalizedEmailAddressHandleForValue:(id)a3;
+ (id)normalizedGenericHandleForValue:(id)a3;
+ (id)normalizedHandleWithType:(int64_t)a3 value:(id)a4 isoCountryCode:(id)a5;
+ (id)normalizedPhoneNumberHandleForValue:(id)a3 isoCountryCode:(id)a4;
+ (int64_t)handleTypeForValue:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToHandle:(id)a3;
- (BOOL)isPseudonym;
- (BOOL)isTemporary;
- (CHHandle)initWithCoder:(id)a3;
- (CHHandle)initWithHandle:(id)a3;
- (CHHandle)initWithType:(int64_t)a3 value:(id)a4;
- (CHHandle)initWithType:(int64_t)a3 value:(id)a4 normalizedValue:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CHHandle

- (unint64_t)hash
{
  v3 = [(CHHandle *)self type];
  v4 = [(CHHandle *)self value];
  v5 = [v4 hash];
  v6 = [(CHHandle *)self normalizedValue];
  [v6 hash];
  v14 = CHHash(3uLL, v7, v8, v9, v10, v11, v12, v13, v3, v5);

  return v14;
}

- (BOOL)isTemporary
{
  v2 = [(CHHandle *)self value];
  v3 = [v2 hasPrefix:@"temp:"];

  return v3;
}

- (BOOL)isPseudonym
{
  v2 = [(CHHandle *)self value];
  v3 = [v2 hasPrefix:@"pseud:"];

  return v3;
}

- (CHHandle)initWithHandle:(id)a3
{
  v4 = a3;
  v5 = [v4 type];
  v6 = [v4 value];
  v7 = [v4 normalizedValue];

  v8 = [(CHHandle *)self initWithType:v5 value:v6 normalizedValue:v7];
  return v8;
}

- (CHHandle)initWithType:(int64_t)a3 value:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = CHHandle;
  v7 = [(CHHandle *)&v12 init];
  if (v7)
  {
    if (!v6)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CHHandle initWithType:value:]", @"value"}];
    }

    if (a3 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = a3;
    }

    v7->_type = v8;
    v9 = [v6 copy];
    value = v7->_value;
    v7->_value = v9;
  }

  return v7;
}

- (CHHandle)initWithType:(int64_t)a3 value:(id)a4 normalizedValue:(id)a5
{
  v8 = a5;
  v9 = [(CHHandle *)self initWithType:a3 value:a4];
  if (v9)
  {
    v10 = [v8 copy];
    normalizedValue = v9->_normalizedValue;
    v9->_normalizedValue = v10;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CHHandle allocWithZone:a3];

  return [(CHHandle *)v4 initWithHandle:self];
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  v6 = NSStringFromSelector(sel_type);
  [v5 encodeInteger:type forKey:v6];

  value = self->_value;
  v8 = NSStringFromSelector(sel_value);
  [v5 encodeObject:value forKey:v8];

  normalizedValue = self->_normalizedValue;
  v10 = NSStringFromSelector(sel_normalizedValue);
  [v5 encodeObject:normalizedValue forKey:v10];
}

- (CHHandle)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CHHandle;
  v5 = [(CHHandle *)&v16 init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_type);
    v5->_type = [v4 decodeIntegerForKey:v6];

    v7 = objc_opt_class();
    v8 = NSStringFromSelector(sel_value);
    v9 = [v4 decodeObjectOfClass:v7 forKey:v8];
    value = v5->_value;
    v5->_value = v9;

    v11 = objc_opt_class();
    v12 = NSStringFromSelector(sel_normalizedValue);
    v13 = [v4 decodeObjectOfClass:v11 forKey:v12];
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
  v6 = [(CHHandle *)self value];
  [v3 appendFormat:@"%@=%@", v5, v6];

  [v3 appendFormat:@", "];
  v7 = NSStringFromSelector(sel_normalizedValue);
  v8 = [(CHHandle *)self normalizedValue];
  [v3 appendFormat:@"%@=%@", v7, v8];

  [v3 appendFormat:@">"];
  v9 = [v3 copy];

  return v9;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CHHandle *)self isEqualToHandle:v4];
  }

  return v5;
}

- (BOOL)isEqualToHandle:(id)a3
{
  v4 = a3;
  v5 = [(CHHandle *)self type];
  if (v5 == [v4 type])
  {
    v6 = [(CHHandle *)self value];
    v7 = [v4 value];
    v8 = v6;
    v9 = v7;
    v10 = v9;
    if (v8 | v9)
    {
      if (!v9)
      {
        v14 = 0;
        v12 = v8;
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

    v12 = [(CHHandle *)self normalizedValue];
    v13 = [v4 normalizedValue];
    v14 = (v12 | v13) == 0;
    if (v13)
    {
      v14 = [v12 isEqualToString:v13];
    }

    goto LABEL_10;
  }

  v14 = 0;
LABEL_12:

  return v14;
}

+ (id)normalizedHandleWithType:(int64_t)a3 value:(id)a4 isoCountryCode:(id)a5
{
  v7 = a4;
  v8 = a5;
  switch(a3)
  {
    case 1:
      v9 = [CHHandle normalizedGenericHandleForValue:v7];
      break;
    case 2:
      v9 = [CHHandle normalizedPhoneNumberHandleForValue:v7 isoCountryCode:v8];
      break;
    case 3:
      v9 = [CHHandle normalizedEmailAddressHandleForValue:v7];
      break;
    default:
      v9 = [[CHHandle alloc] initWithType:1 value:v7];
      break;
  }

  v10 = v9;

  return v10;
}

+ (id)normalizedEmailAddressHandleForValue:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = [CHHandle alloc];
    v5 = [v3 lowercaseString];
    v6 = [(CHHandle *)v4 initWithType:3 value:v3 normalizedValue:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)normalizedGenericHandleForValue:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = [CHHandle alloc];
    v5 = [v3 lowercaseString];
    v6 = [(CHHandle *)v4 initWithType:1 value:v3 normalizedValue:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)normalizedPhoneNumberHandleForValue:(id)a3 isoCountryCode:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 length])
  {
    v7 = v6;
    if (![v7 length])
    {
      v8 = PNCopyBestGuessCountryCodeForNumber();

      v7 = v8;
    }

    if ([v7 length])
    {
      v9 = CHPhoneNumberNormalizedPhoneNumberString(v5, v7);
      v10 = [[CHHandle alloc] initWithType:2 value:v5 normalizedValue:v9];
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

+ (int64_t)handleTypeForValue:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  if ([a3 containsString:@"@"])
  {
    return 3;
  }

  return 2;
}

@end