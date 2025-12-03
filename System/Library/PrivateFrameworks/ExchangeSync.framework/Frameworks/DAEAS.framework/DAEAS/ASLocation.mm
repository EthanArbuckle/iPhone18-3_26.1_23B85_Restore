@interface ASLocation
+ (ASLocation)locationWithCalLocation:(void *)location;
- (ASLocation)initWithApplicationData:(id)data;
- (ASLocation)initWithCalLocation:(void *)location;
- (ASLocation)initWithCoder:(id)coder;
- (ASLocation)initWithTitle:(id)title;
- (BOOL)isEmptyLocation;
- (BOOL)isEqualToLocation:(id)location;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASLocation

- (ASLocation)initWithCalLocation:(void *)location
{
  v11.receiver = self;
  v11.super_class = ASLocation;
  v3 = [(ASItem *)&v11 init];
  if (v3)
  {
    v4 = CalLocationCopyTitle();
    if (v4)
    {
      [(ASLocation *)v3 setDisplayName:v4];
    }

    v5 = CalLocationCopyAddress();
    if (v5)
    {
      [(ASLocation *)v3 setAnnotation:v5];
    }

    if (CalLocationGetCoordinates())
    {
      v6 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
      stringValue = [v6 stringValue];
      [(ASLocation *)v3 setLatitude:stringValue];

      v8 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
      stringValue2 = [v8 stringValue];
      [(ASLocation *)v3 setLongitude:stringValue2];
    }
  }

  return v3;
}

+ (ASLocation)locationWithCalLocation:(void *)location
{
  v3 = [[self alloc] initWithCalLocation:location];

  return v3;
}

- (ASLocation)initWithApplicationData:(id)data
{
  dataCopy = data;
  v31.receiver = self;
  v31.super_class = ASLocation;
  v5 = [(ASItem *)&v31 init];
  if (v5)
  {
    v6 = [dataCopy objectForKeyedSubscript:&unk_285D57FC0];
    displayName = v5->_displayName;
    v5->_displayName = v6;

    v8 = [dataCopy objectForKeyedSubscript:&unk_285D57FD8];
    annotation = v5->_annotation;
    v5->_annotation = v8;

    v10 = [dataCopy objectForKeyedSubscript:&unk_285D57FF0];
    street = v5->_street;
    v5->_street = v10;

    v12 = [dataCopy objectForKeyedSubscript:&unk_285D58008];
    city = v5->_city;
    v5->_city = v12;

    v14 = [dataCopy objectForKeyedSubscript:&unk_285D58020];
    state = v5->_state;
    v5->_state = v14;

    v16 = [dataCopy objectForKeyedSubscript:&unk_285D58038];
    postalCode = v5->_postalCode;
    v5->_postalCode = v16;

    v18 = [dataCopy objectForKeyedSubscript:&unk_285D58050];
    country = v5->_country;
    v5->_country = v18;

    v20 = [dataCopy objectForKeyedSubscript:&unk_285D58068];
    latitude = v5->_latitude;
    v5->_latitude = v20;

    v22 = [dataCopy objectForKeyedSubscript:&unk_285D58080];
    longitude = v5->_longitude;
    v5->_longitude = v22;

    v24 = [dataCopy objectForKeyedSubscript:&unk_285D58098];
    accuracy = v5->_accuracy;
    v5->_accuracy = v24;

    v26 = [dataCopy objectForKeyedSubscript:&unk_285D580B0];
    altitude = v5->_altitude;
    v5->_altitude = v26;

    v28 = [dataCopy objectForKeyedSubscript:&unk_285D580C8];
    altitudeAccuracy = v5->_altitudeAccuracy;
    v5->_altitudeAccuracy = v28;
  }

  return v5;
}

- (ASLocation)initWithTitle:(id)title
{
  titleCopy = title;
  v9.receiver = self;
  v9.super_class = ASLocation;
  v6 = [(ASItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_displayName, title);
  }

  return v7;
}

- (ASLocation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v32.receiver = self;
  v32.super_class = ASLocation;
  v6 = [(ASItem *)&v32 init];
  if (v6)
  {
    if (([coderCopy allowsKeyedCoding] & 1) == 0)
    {
      [(ASLocation *)a2 initWithCoder:v6];
    }

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    displayName = v6->_displayName;
    v6->_displayName = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"annotation"];
    annotation = v6->_annotation;
    v6->_annotation = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"street"];
    street = v6->_street;
    v6->_street = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"city"];
    city = v6->_city;
    v6->_city = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"state"];
    state = v6->_state;
    v6->_state = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"postalCode"];
    postalCode = v6->_postalCode;
    v6->_postalCode = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"country"];
    country = v6->_country;
    v6->_country = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"latitude"];
    latitude = v6->_latitude;
    v6->_latitude = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"longitude"];
    longitude = v6->_longitude;
    v6->_longitude = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accuracy"];
    accuracy = v6->_accuracy;
    v6->_accuracy = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"altitude"];
    altitude = v6->_altitude;
    v6->_altitude = v27;

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"altitudeAccuracy"];
    altitudeAccuracy = v6->_altitudeAccuracy;
    v6->_altitudeAccuracy = v29;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [(ASLocation *)a2 encodeWithCoder:?];
  }

  [coderCopy encodeObject:self->_displayName forKey:@"displayName"];
  [coderCopy encodeObject:self->_annotation forKey:@"annotation"];
  [coderCopy encodeObject:self->_street forKey:@"street"];
  [coderCopy encodeObject:self->_city forKey:@"city"];
  [coderCopy encodeObject:self->_state forKey:@"state"];
  [coderCopy encodeObject:self->_postalCode forKey:@"postalCode"];
  [coderCopy encodeObject:self->_country forKey:@"country"];
  [coderCopy encodeObject:self->_latitude forKey:@"latitude"];
  [coderCopy encodeObject:self->_longitude forKey:@"longitude"];
  [coderCopy encodeObject:self->_accuracy forKey:@"accuracy"];
  [coderCopy encodeObject:self->_altitude forKey:@"altitude"];
  [coderCopy encodeObject:self->_altitudeAccuracy forKey:@"altitudeAccuracy"];
}

- (BOOL)isEqualToLocation:(id)location
{
  locationCopy = location;
  displayName = [(ASLocation *)self displayName];
  if (!displayName)
  {
    displayName2 = [locationCopy displayName];
    if (displayName2)
    {
      goto LABEL_30;
    }
  }

  displayName3 = [(ASLocation *)self displayName];
  if (displayName3)
  {
    displayName4 = [locationCopy displayName];
    if (!displayName4)
    {
      v8 = 1;
      goto LABEL_9;
    }
  }

  displayName5 = [(ASLocation *)self displayName];
  if (displayName5)
  {
    v11 = displayName5;
    displayName6 = [(ASLocation *)self displayName];
    displayName7 = [locationCopy displayName];
    v8 = [displayName6 compare:displayName7] != 0;

    if (!displayName3)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v8 = 0;
  if (displayName3)
  {
LABEL_9:
  }

LABEL_10:

  if (v8)
  {
    goto LABEL_31;
  }

  annotation = [(ASLocation *)self annotation];
  if (!annotation)
  {
    displayName2 = [locationCopy annotation];
    if (displayName2)
    {
      goto LABEL_30;
    }
  }

  annotation2 = [(ASLocation *)self annotation];
  if (annotation2)
  {
    displayName4 = [locationCopy annotation];
    if (!displayName4)
    {
      v16 = 1;
      goto LABEL_21;
    }
  }

  annotation3 = [(ASLocation *)self annotation];
  if (annotation3)
  {
    v18 = annotation3;
    annotation4 = [(ASLocation *)self annotation];
    annotation5 = [locationCopy annotation];
    v16 = [annotation4 compare:annotation5] != 0;

    if (!annotation2)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v16 = 0;
  if (annotation2)
  {
LABEL_21:
  }

LABEL_22:

  if (!v16)
  {
    latitude = [(ASLocation *)self latitude];
    if (!latitude)
    {
      displayName2 = [locationCopy latitude];
      if (displayName2)
      {
LABEL_30:

        goto LABEL_31;
      }
    }

    latitude2 = [(ASLocation *)self latitude];
    if (!latitude2 || ([locationCopy latitude], (displayName4 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      latitude3 = [(ASLocation *)self latitude];
      if (latitude3)
      {
        v27 = latitude3;
        latitude4 = [(ASLocation *)self latitude];
        latitude5 = [locationCopy latitude];
        v23 = [latitude4 compare:latitude5] != 0;

        if (!latitude2)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v23 = 0;
        if (!latitude2)
        {
LABEL_36:

          if (v23)
          {
            goto LABEL_31;
          }

          longitude = [(ASLocation *)self longitude];
          if (!longitude)
          {
            longitude2 = [locationCopy longitude];
            if (longitude2)
            {
              v32 = 1;
              goto LABEL_50;
            }
          }

          longitude3 = [(ASLocation *)self longitude];
          if (!longitude3 || ([locationCopy longitude], (displayName4 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            longitude4 = [(ASLocation *)self longitude];
            if (longitude4)
            {
              v35 = longitude4;
              longitude5 = [(ASLocation *)self longitude];
              longitude6 = [locationCopy longitude];
              v32 = [longitude5 compare:longitude6] != 0;

              if (!longitude3)
              {
LABEL_48:
                if (longitude)
                {
LABEL_51:

                  v24 = !v32;
                  goto LABEL_32;
                }

                longitude2 = 0;
LABEL_50:

                goto LABEL_51;
              }
            }

            else
            {
              v32 = 0;
              if (!longitude3)
              {
                goto LABEL_48;
              }
            }
          }

          else
          {
            v32 = 1;
          }

          goto LABEL_48;
        }
      }
    }

    else
    {
      v23 = 1;
    }

    goto LABEL_36;
  }

LABEL_31:
  v24 = 0;
LABEL_32:

  return v24;
}

- (BOOL)isEmptyLocation
{
  displayName = [(ASLocation *)self displayName];
  if (displayName)
  {
    v4 = 0;
  }

  else
  {
    annotation = [(ASLocation *)self annotation];
    if (annotation)
    {
      v4 = 0;
    }

    else
    {
      latitude = [(ASLocation *)self latitude];
      if (latitude)
      {
        longitude = [(ASLocation *)self longitude];
        v4 = longitude == 0;
      }

      else
      {
        v4 = 1;
      }
    }
  }

  return v4;
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ASLocation.m" lineNumber:74 description:@"We can't unarchive an event if the coder doesn't allow keyed coding"];
}

- (void)encodeWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ASLocation.m" lineNumber:93 description:@"We can't archive an event if the coder doesn't allow keyed coding"];
}

@end