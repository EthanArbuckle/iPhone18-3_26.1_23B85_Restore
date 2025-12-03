@interface CAFCoordinate
- (CAFCoordinate)initWithAltitude:(float)altitude latitude:(float)latitude longitude:(float)longitude;
- (CAFCoordinate)initWithDictionary:(id)dictionary;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
@end

@implementation CAFCoordinate

- (CAFCoordinate)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = CAFCoordinate;
  v5 = [(CAFCoordinate *)&v16 init];
  if (v5)
  {
    objc_opt_class();
    v6 = [dictionaryCopy objectForKey:@"altitude"];
    if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    [v7 floatValue];
    v5->_altitude = v8;

    objc_opt_class();
    v9 = [dictionaryCopy objectForKey:@"latitude"];
    if (v9 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    [v10 floatValue];
    v5->_latitude = v11;

    objc_opt_class();
    v12 = [dictionaryCopy objectForKey:@"longitude"];
    if (v12 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    [v13 floatValue];
    v5->_longitude = v14;
  }

  return v5;
}

- (CAFCoordinate)initWithAltitude:(float)altitude latitude:(float)latitude longitude:(float)longitude
{
  v9.receiver = self;
  v9.super_class = CAFCoordinate;
  result = [(CAFCoordinate *)&v9 init];
  if (result)
  {
    result->_altitude = altitude;
    result->_latitude = latitude;
    result->_longitude = longitude;
  }

  return result;
}

- (NSDictionary)dictionaryRepresentation
{
  v13[3] = *MEMORY[0x277D85DE8];
  v12[0] = @"altitude";
  v3 = MEMORY[0x277CCABB0];
  [(CAFCoordinate *)self altitude];
  v4 = [v3 numberWithFloat:?];
  v13[0] = v4;
  v12[1] = @"latitude";
  v5 = MEMORY[0x277CCABB0];
  [(CAFCoordinate *)self latitude];
  v6 = [v5 numberWithFloat:?];
  v13[1] = v6;
  v12[2] = @"longitude";
  v7 = MEMORY[0x277CCABB0];
  [(CAFCoordinate *)self longitude];
  v8 = [v7 numberWithFloat:?];
  v13[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  [(CAFCoordinate *)self altitude];
  v6 = v5;
  [(CAFCoordinate *)self latitude];
  v8 = v7;
  [(CAFCoordinate *)self longitude];
  return [v3 stringWithFormat:@"<%@: %p { %@: %g, %@: %g, %@: %g }>", v4, self, @"altitude", *&v6, @"latitude", *&v8, @"longitude", v9];
}

@end