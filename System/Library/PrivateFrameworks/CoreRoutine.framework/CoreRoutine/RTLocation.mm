@interface RTLocation
+ (id)sourceAccuracyToString:(unint64_t)string;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToLocation:(id)location;
- (RTLocation)initWithCoder:(id)coder;
- (RTLocation)initWithDictionary:(id)dictionary;
- (RTLocation)initWithFirstJSONDictionary:(id)dictionary;
- (RTLocation)initWithLatitude:(double)latitude longitude:(double)longitude horizontalUncertainty:(double)uncertainty altitude:(double)altitude verticalUncertainty:(double)verticalUncertainty date:(id)date referenceFrame:(int)frame speed:(double)self0 sourceAccuracy:(unint64_t)self1;
- (id)coordinateToString;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)outputToDictionaryReadableDate:(BOOL)date;
- (id)outputToFirstJSONDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTLocation

- (RTLocation)initWithLatitude:(double)latitude longitude:(double)longitude horizontalUncertainty:(double)uncertainty altitude:(double)altitude verticalUncertainty:(double)verticalUncertainty date:(id)date referenceFrame:(int)frame speed:(double)self0 sourceAccuracy:(unint64_t)self1
{
  dateCopy = date;
  v26.receiver = self;
  v26.super_class = RTLocation;
  v21 = [(RTLocation *)&v26 init];
  v22 = v21;
  if (v21)
  {
    v21->_latitude = latitude;
    v21->_longitude = longitude;
    v21->_horizontalUncertainty = uncertainty;
    v21->_altitude = altitude;
    v21->_verticalUncertainty = verticalUncertainty;
    v23 = [dateCopy copy];
    date = v22->_date;
    v22->_date = v23;

    v22->_referenceFrame = frame;
    v22->_speed = speed;
    v22->_sourceAccuracy = accuracy;
  }

  return v22;
}

- (RTLocation)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"latitude"];
  v6 = v5;
  [coderCopy decodeDoubleForKey:@"longitude"];
  v8 = v7;
  [coderCopy decodeDoubleForKey:@"horizontalUncertainty"];
  v10 = v9;
  [coderCopy decodeDoubleForKey:@"altitude"];
  v12 = v11;
  [coderCopy decodeDoubleForKey:@"verticalUncertainty"];
  v14 = v13;
  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
  v16 = [coderCopy decodeIntForKey:@"referenceFrame"];
  [coderCopy decodeDoubleForKey:@"speed"];
  v18 = v17;
  v19 = [coderCopy decodeIntegerForKey:@"sourceAccuracy"];

  v20 = [(RTLocation *)self initWithLatitude:v15 longitude:v16 horizontalUncertainty:v19 altitude:v6 verticalUncertainty:v8 date:v10 referenceFrame:v12 speed:v14 sourceAccuracy:v18];
  return v20;
}

- (void)encodeWithCoder:(id)coder
{
  latitude = self->_latitude;
  coderCopy = coder;
  [coderCopy encodeDouble:@"latitude" forKey:latitude];
  [coderCopy encodeDouble:@"longitude" forKey:self->_longitude];
  [coderCopy encodeDouble:@"horizontalUncertainty" forKey:self->_horizontalUncertainty];
  [coderCopy encodeDouble:@"altitude" forKey:self->_altitude];
  [coderCopy encodeDouble:@"verticalUncertainty" forKey:self->_verticalUncertainty];
  [coderCopy encodeObject:self->_date forKey:@"date"];
  [coderCopy encodeInt:self->_referenceFrame forKey:@"referenceFrame"];
  [coderCopy encodeDouble:@"speed" forKey:self->_speed];
  [coderCopy encodeInteger:self->_sourceAccuracy forKey:@"sourceAccuracy"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
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

- (RTLocation)initWithFirstJSONDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy valueForKey:@"lat"];
  v6 = [dictionaryCopy valueForKey:@"lng"];
  v7 = [dictionaryCopy valueForKey:@"uncertainty"];

  selfCopy = 0;
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

    selfCopy = self;
  }

  return selfCopy;
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

- (RTLocation)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy valueForKey:@"latitude"];
  v6 = [dictionaryCopy valueForKey:@"longitude"];
  v7 = [dictionaryCopy valueForKey:@"horizontalUncertainty"];
  v8 = [dictionaryCopy valueForKey:@"altitude"];
  v9 = [dictionaryCopy valueForKey:@"verticalUncertainty"];
  v10 = [dictionaryCopy valueForKey:@"date"];
  v11 = [dictionaryCopy valueForKey:@"referenceFrame"];
  v12 = [dictionaryCopy valueForKey:@"speed"];

  v13 = 0;
  if (v5 && v6 && v7 && v8 && v9 && v10 && v11 && v12)
  {
    selfCopy = self;
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
    intValue = [v11 intValue];
    [v12 doubleValue];
    v13 = [(RTLocation *)selfCopy initWithLatitude:v15 longitude:intValue horizontalUncertainty:v17 altitude:v19 verticalUncertainty:v21 date:v23 referenceFrame:v25 speed:v27];

    self = v13;
  }

  return v13;
}

- (id)outputToDictionaryReadableDate:(BOOL)date
{
  dateCopy = date;
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
  date = [(RTLocation *)self date];
  [date timeIntervalSince1970];
  v18 = [v16 numberWithDouble:?];
  [v5 setObject:v18 forKey:@"date"];

  if (dateCopy)
  {
    date2 = [(RTLocation *)self date];
    getFormattedDateString = [date2 getFormattedDateString];
    [v5 setObject:getFormattedDateString forKey:@"dateAsString"];
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
  date = [(RTLocation *)self date];
  stringFromDate = [date stringFromDate];
  referenceFrame = [(RTLocation *)self referenceFrame];
  v17 = [objc_opt_class() sourceAccuracyToString:self->_sourceAccuracy];
  v18 = [v3 stringWithFormat:@"<%f, %f> +/- %f, alt, %f +/- %f, date, %@, referenceFrame, %d, sourceAccuracy, %@", v5, v7, v9, v11, v13, stringFromDate, referenceFrame, v17];

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

+ (id)sourceAccuracyToString:(unint64_t)string
{
  v3 = @"Unknown";
  if (string == 2)
  {
    v3 = @"High";
  }

  if (string == 1)
  {
    return @"Low";
  }

  else
  {
    return v3;
  }
}

- (BOOL)isEqualToLocation:(id)location
{
  locationCopy = location;
  latitude = self->_latitude;
  [locationCopy latitude];
  if (latitude != v7)
  {
    goto LABEL_15;
  }

  longitude = self->_longitude;
  [locationCopy longitude];
  if (longitude != v9 || (horizontalUncertainty = self->_horizontalUncertainty, [locationCopy horizontalUncertainty], horizontalUncertainty != v11) || (altitude = self->_altitude, objc_msgSend(locationCopy, "altitude"), altitude != v13) || (verticalUncertainty = self->_verticalUncertainty, objc_msgSend(locationCopy, "verticalUncertainty"), verticalUncertainty != v15))
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
    date = [locationCopy date];
    [(NSDate *)v17 timeIntervalSinceDate:date];
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

  date2 = [locationCopy date];
  if (date2)
  {
    v17 = self->_date;
    goto LABEL_9;
  }

LABEL_12:
  referenceFrame = self->_referenceFrame;
  if (referenceFrame == [locationCopy referenceFrame])
  {
    speed = self->_speed;
    [locationCopy speed];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTLocation *)self isEqualToLocation:v5];
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