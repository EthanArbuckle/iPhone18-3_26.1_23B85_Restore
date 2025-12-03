@interface PKContinuityProximityVerification
+ (id)verificationWithDictionary:(id)dictionary;
- (PKContinuityProximityVerification)initWithCoder:(id)coder;
- (PKContinuityProximityVerification)initWithType:(unint64_t)type;
- (id)_dictionaryRepresentation;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKContinuityProximityVerification

- (PKContinuityProximityVerification)initWithType:(unint64_t)type
{
  v5.receiver = self;
  v5.super_class = PKContinuityProximityVerification;
  result = [(PKContinuityProximityVerification *)&v5 init];
  if (result)
  {
    result->_type = type;
  }

  return result;
}

+ (id)verificationWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy PKStringForKey:@"type"];
  v5 = v4;
  if (v4 && (v6 = PKContinuityProximityVerifierTypeFromString(v4)) != 0)
  {
    if (v6 == 1)
    {
      v7 = off_1E79BF8E8;
    }

    else
    {
      v7 = off_1E79BF8F8;
    }

    v8 = [objc_alloc(*v7) initWithDictionary:dictionaryCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)dictionaryRepresentation
{
  _dictionaryRepresentation = [(PKContinuityProximityVerification *)self _dictionaryRepresentation];
  v3 = [_dictionaryRepresentation copy];

  return v3;
}

- (id)_dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  type = self->_type;
  v6 = @"BLE";
  if (type != 1)
  {
    v6 = 0;
  }

  if (type == 2)
  {
    v7 = @"NW";
  }

  else
  {
    v7 = v6;
  }

  [v3 setObject:v7 forKeyedSubscript:@"type"];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  dictionaryRepresentation = [(PKContinuityProximityVerification *)self dictionaryRepresentation];
  [coderCopy encodeObject:dictionaryRepresentation forKey:@"dict"];
}

- (PKContinuityProximityVerification)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v4 setWithObjects:{v6, v7, v8, objc_opt_class(), 0}];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"dict"];

  if (v10)
  {
    v11 = [PKContinuityProximityVerification verificationWithDictionary:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end