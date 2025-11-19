@interface PKContinuityProximityAdvertisement
+ (id)advertisementWithDictionary:(id)a3;
- (PKContinuityProximityAdvertisement)initWithCoder:(id)a3;
- (PKContinuityProximityAdvertisement)initWithType:(unint64_t)a3;
- (id)_dictionaryRepresentation;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKContinuityProximityAdvertisement

- (PKContinuityProximityAdvertisement)initWithType:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = PKContinuityProximityAdvertisement;
  result = [(PKContinuityProximityAdvertisement *)&v5 init];
  if (result)
  {
    result->_type = a3;
  }

  return result;
}

+ (id)advertisementWithDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 PKStringForKey:@"type"];
  v5 = v4;
  if (v4 && (v6 = PKContinuityProximityVerifierTypeFromString(v4)) != 0)
  {
    if (v6 == 1)
    {
      v7 = off_1E79BF8E0;
    }

    else
    {
      v7 = off_1E79BF8F0;
    }

    v8 = [objc_alloc(*v7) initWithDictionary:v3];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)dictionaryRepresentation
{
  v2 = [(PKContinuityProximityAdvertisement *)self _dictionaryRepresentation];
  v3 = [v2 copy];

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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PKContinuityProximityAdvertisement *)self dictionaryRepresentation];
  [v4 encodeObject:v5 forKey:@"dict"];
}

- (PKContinuityProximityAdvertisement)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v4 setWithObjects:{v6, v7, v8, objc_opt_class(), 0}];
  v10 = [v5 decodeObjectOfClasses:v9 forKey:@"dict"];

  if (v10)
  {
    v11 = [PKContinuityProximityAdvertisement advertisementWithDictionary:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end