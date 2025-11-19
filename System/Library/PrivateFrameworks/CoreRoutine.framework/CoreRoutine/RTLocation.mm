@interface RTLocation
+ (id)sourceAccuracyToString:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToLocation:(id)a3;
- (RTLocation)initWithCoder:(id)a3;
- (RTLocation)initWithDictionary:(id)a3;
- (RTLocation)initWithFirstJSONDictionary:(id)a3;
- (RTLocation)initWithLatitude:(double)a3 longitude:(double)a4 horizontalUncertainty:(double)a5 altitude:(double)a6 verticalUncertainty:(double)a7 date:(id)a8 referenceFrame:(int)a9 speed:(double)a10 sourceAccuracy:(unint64_t)a11;
- (id)coordinateToString;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)outputToDictionaryReadableDate:(BOOL)a3;
- (id)outputToFirstJSONDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTLocation

- (RTLocation)initWithLatitude:(double)a3 longitude:(double)a4 horizontalUncertainty:(double)a5 altitude:(double)a6 verticalUncertainty:(double)a7 date:(id)a8 referenceFrame:(int)a9 speed:(double)a10 sourceAccuracy:(unint64_t)a11
{
  v20 = a8;
  v26.receiver = self;
  v26.super_class = RTLocation;
  v21 = [(RTLocation *)&v26 init];
  v22 = v21;
  if (v21)
  {
    v21->_latitude = a3;
    v21->_longitude = a4;
    v21->_horizontalUncertainty = a5;
    v21->_altitude = a6;
    v21->_verticalUncertainty = a7;
    v23 = [v20 copy];
    date = v22->_date;
    v22->_date = v23;

    v22->_referenceFrame = a9;
    v22->_speed = a10;
    v22->_sourceAccuracy = a11;
  }

  return v22;
}

- (RTLocation)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeDoubleForKey:@"latitude"];
  v6 = v5;
  [v4 decodeDoubleForKey:@"longitude"];
  v8 = v7;
  [v4 decodeDoubleForKey:@"horizontalUncertainty"];
  v10 = v9;
  [v4 decodeDoubleForKey:@"altitude"];
  v12 = v11;
  [v4 decodeDoubleForKey:@"verticalUncertainty"];
  v14 = v13;
  v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
  v16 = [v4 decodeIntForKey:@"referenceFrame"];
  [v4 decodeDoubleForKey:@"speed"];
  v18 = v17;
  v19 = [v4 decodeIntegerForKey:@"sourceAccuracy"];

  v20 = [(RTLocation *)self initWithLatitude:v15 longitude:v16 horizontalUncertainty:v19 altitude:v6 verticalUncertainty:v8 date:v10 referenceFrame:v12 speed:v14 sourceAccuracy:v18];
  return v20;
}

- (void)encodeWithCoder:(id)a3
{
  latitude = self->_latitude;
  v5 = a3;
  [v5 encodeDouble:@"latitude" forKey:latitude];
  [v5 encodeDouble:@"longitude" forKey:self->_longitude];
  [v5 encodeDouble:@"horizontalUncertainty" forKey:self->_horizontalUncertainty];
  [v5 encodeDouble:@"altitude" forKey:self->_altitude];
  [v5 encodeDouble:@"verticalUncertainty" forKey:self->_verticalUncertainty];
  [v5 encodeObject:self->_date forKey:@"date"];
  [v5 encodeInt:self->_referenceFrame forKey:@"referenceFrame"];
  [v5 encodeDouble:@"speed" forKey:self->_speed];
  [v5 encodeInteger:self->_sourceAccuracy forKey:@"sourceAccuracy"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  latitude = self->_latitude;
  longitude = self->_longitude;
  horizontalUncertainty = self->_horizontalUncertainty;
  altitude = self->_altitude;
  verticalUncertainty = self->_verticalUncertainty;
  referenceFrame = self->_referenceFrame;
  speed = self->_speed;
  date = self->_date;
  sourceAccuracy = self->_sourceAccuracy;

  return [v4 initWithLatitude:date longitude:referenceFrame horizontalUncertainty:sourceAccuracy altitude:latitude verticalUncertainty:longitude date:horizontalUncertainty referenceFrame:altitude speed:verticalUncertainty sourceAccuracy:speed];
}

- (RTLocation)initWithFirstJSONDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 valueForKey:@"lat"];
  v6 = [v4 valueForKey:@"lng"];
  v7 = [v4 valueForKey:@"uncertainty"];

  v8 = 0;
  if (v5 && v6 && v7)
  {
    [v5 doubleValue];
    v10 = v9;
    [v6 doubleValue];
    v12 = v11;
    [v7 doubleValue];
    v14 = v13;
    v15 = [MEMORY[0x1E695DF00] now];
    self = [(RTLocation *)self initWithLatitude:v15 longitude:v10 horizontalUncertainty:v12 date:v14];

    v8 = self;
  }

  return v8;
}

- (id)outputToFirstJSONDictionary
{
  v3 = objc_opt_new();
  v4 = MEMORY[0x1E696AD98];
  [(RTLocation *)self latitude];
  v5 = [v4 numberWithDouble:?];
  [v3 setObject:v5 forKey:@"lat"];

  v6 = MEMORY[0x1E696AD98];
  [(RTLocation *)self longitude];
  v7 = [v6 numberWithDouble:?];
  [v3 setObject:v7 forKey:@"lng"];

  v8 = MEMORY[0x1E696AD98];
  [(RTLocation *)self horizontalUncertainty];
  v9 = [v8 numberWithDouble:?];
  [v3 setObject:v9 forKey:@"uncertainty"];

  return v3;
}

- (RTLocation)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 valueForKey:@"latitude"];
  v6 = [v4 valueForKey:@"longitude"];
  v7 = [v4 valueForKey:@"horizontalUncertainty"];
  v8 = [v4 valueForKey:@"altitude"];
  v9 = [v4 valueForKey:@"verticalUncertainty"];
  v10 = [v4 valueForKey:@"date"];
  v11 = [v4 valueForKey:@"referenceFrame"];
  v12 = [v4 valueForKey:@"speed"];

  v13 = 0;
  if (v5 && v6 && v7 && v8 && v9 && v10 && v11 && v12)
  {
    v29 = self;
    v14 = MEMORY[0x1E695DF00];
    [v10 doubleValue];
    v15 = [v14 dateWithTimeIntervalSince1970:?];
    [v5 doubleValue];
    v17 = v16;
    [v6 doubleValue];
    v19 = v18;
    [v7 doubleValue];
    v21 = v20;
    [v8 doubleValue];
    v23 = v22;
    [v9 doubleValue];
    v25 = v24;
    v26 = [v11 intValue];
    [v12 doubleValue];
    v13 = [(RTLocation *)v29 initWithLatitude:v15 longitude:v26 horizontalUncertainty:v17 altitude:v19 verticalUncertainty:v21 date:v23 referenceFrame:v25 speed:v27];

    self = v13;
  }

  return v13;
}

- (id)outputToDictionaryReadableDate:(BOOL)a3
{
  v3 = a3;
  v5 = objc_opt_new();
  v6 = MEMORY[0x1E696AD98];
  [(RTLocation *)self latitude];
  v7 = [v6 numberWithDouble:?];
  [v5 setObject:v7 forKey:@"latitude"];

  v8 = MEMORY[0x1E696AD98];
  [(RTLocation *)self longitude];
  v9 = [v8 numberWithDouble:?];
  [v5 setObject:v9 forKey:@"longitude"];

  v10 = MEMORY[0x1E696AD98];
  [(RTLocation *)self horizontalUncertainty];
  v11 = [v10 numberWithDouble:?];
  [v5 setObject:v11 forKey:@"horizontalUncertainty"];

  v12 = MEMORY[0x1E696AD98];
  [(RTLocation *)self altitude];
  v13 = [v12 numberWithDouble:?];
  [v5 setObject:v13 forKey:@"altitude"];

  v14 = MEMORY[0x1E696AD98];
  [(RTLocation *)self verticalUncertainty];
  v15 = [v14 numberWithDouble:?];
  [v5 setObject:v15 forKey:@"verticalUncertainty"];

  v16 = MEMORY[0x1E696AD98];
  v17 = [(RTLocation *)self date];
  [v17 timeIntervalSince1970];
  v18 = [v16 numberWithDouble:?];
  [v5 setObject:v18 forKey:@"date"];

  if (v3)
  {
    v19 = [(RTLocation *)self date];
    v20 = [v19 getFormattedDateString];
    [v5 setObject:v20 forKey:@"dateAsString"];
  }

  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[RTLocation referenceFrame](self, "referenceFrame")}];
  [v5 setObject:v21 forKey:@"referenceFrame"];

  v22 = MEMORY[0x1E696AD98];
  [(RTLocation *)self speed];
  v23 = [v22 numberWithDouble:?];
  [v5 setObject:v23 forKey:@"speed"];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  [(RTLocation *)self latitude];
  v5 = v4;
  [(RTLocation *)self longitude];
  v7 = v6;
  [(RTLocation *)self horizontalUncertainty];
  v9 = v8;
  [(RTLocation *)self altitude];
  v11 = v10;
  [(RTLocation *)self verticalUncertainty];
  v13 = v12;
  v14 = [(RTLocation *)self date];
  v15 = [v14 stringFromDate];
  v16 = [(RTLocation *)self referenceFrame];
  v17 = [objc_opt_class() sourceAccuracyToString:self->_sourceAccuracy];
  v18 = [v3 stringWithFormat:@"<%f, %f> +/- %f, alt, %f +/- %f, date, %@, referenceFrame, %d, sourceAccuracy, %@", v5, v7, v9, v11, v13, v15, v16, v17];

  return v18;
}

- (id)coordinateToString
{
  v3 = MEMORY[0x1E696AEC0];
  [(RTLocation *)self latitude];
  v5 = v4;
  [(RTLocation *)self longitude];
  return [v3 stringWithFormat:@"<%+.6f, %+.6f>", v5, v6];
}

+ (id)sourceAccuracyToString:(unint64_t)a3
{
  v3 = @"Unknown";
  if (a3 == 2)
  {
    v3 = @"High";
  }

  if (a3 == 1)
  {
    return @"Low";
  }

  else
  {
    return v3;
  }
}

- (BOOL)isEqualToLocation:(id)a3
{
  v5 = a3;
  latitude = self->_latitude;
  [v5 latitude];
  if (latitude != v7)
  {
    goto LABEL_15;
  }

  longitude = self->_longitude;
  [v5 longitude];
  if (longitude != v9 || (horizontalUncertainty = self->_horizontalUncertainty, [v5 horizontalUncertainty], horizontalUncertainty != v11) || (altitude = self->_altitude, objc_msgSend(v5, "altitude"), altitude != v13) || (verticalUncertainty = self->_verticalUncertainty, objc_msgSend(v5, "verticalUncertainty"), verticalUncertainty != v15))
  {
LABEL_15:
    v26 = 0;
    goto LABEL_16;
  }

  date = self->_date;
  v17 = date;
  if (date)
  {
LABEL_9:
    v18 = [v5 date];
    [(NSDate *)v17 timeIntervalSinceDate:v18];
    v20 = v19;

    v21 = -v20;
    if (v20 >= 0.0)
    {
      v21 = v20;
    }

    if (v21 >= 0.01)
    {
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  v3 = [v5 date];
  if (v3)
  {
    v17 = self->_date;
    goto LABEL_9;
  }

LABEL_12:
  referenceFrame = self->_referenceFrame;
  if (referenceFrame == [v5 referenceFrame])
  {
    speed = self->_speed;
    [v5 speed];
    v25 = speed == v24;
    v26 = speed == v24;
    if (!date)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

LABEL_17:
  v25 = 0;
  v26 = 0;
  if (!date)
  {
LABEL_18:

    v26 = v25;
  }

LABEL_16:

  return v26;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTLocation *)self isEqualToLocation:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v20 = [MEMORY[0x1E696AD98] numberWithDouble:self->_latitude];
  v3 = [v20 hash];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_longitude];
  v5 = [v4 hash] ^ v3;
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_horizontalUncertainty];
  v7 = [v6 hash];
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_altitude];
  v9 = v5 ^ v7 ^ [v8 hash];
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:self->_verticalUncertainty];
  v11 = [v10 hash];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_referenceFrame];
  v13 = v11 ^ [v12 hash];
  v14 = v9 ^ v13 ^ [(NSDate *)self->_date hash];
  v15 = [MEMORY[0x1E696AD98] numberWithDouble:self->_speed];
  v16 = [v15 hash];
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_sourceAccuracy];
  v18 = v16 ^ [v17 hash];

  return v14 ^ v18;
}

@end