@interface ASLocation
+ (ASLocation)locationWithCalLocation:(void *)a3;
- (ASLocation)initWithApplicationData:(id)a3;
- (ASLocation)initWithCalLocation:(void *)a3;
- (ASLocation)initWithCoder:(id)a3;
- (ASLocation)initWithTitle:(id)a3;
- (BOOL)isEmptyLocation;
- (BOOL)isEqualToLocation:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASLocation

- (ASLocation)initWithCalLocation:(void *)a3
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
      v7 = [v6 stringValue];
      [(ASLocation *)v3 setLatitude:v7];

      v8 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
      v9 = [v8 stringValue];
      [(ASLocation *)v3 setLongitude:v9];
    }
  }

  return v3;
}

+ (ASLocation)locationWithCalLocation:(void *)a3
{
  v3 = [[a1 alloc] initWithCalLocation:a3];

  return v3;
}

- (ASLocation)initWithApplicationData:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = ASLocation;
  v5 = [(ASItem *)&v31 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:&unk_285D57FC0];
    displayName = v5->_displayName;
    v5->_displayName = v6;

    v8 = [v4 objectForKeyedSubscript:&unk_285D57FD8];
    annotation = v5->_annotation;
    v5->_annotation = v8;

    v10 = [v4 objectForKeyedSubscript:&unk_285D57FF0];
    street = v5->_street;
    v5->_street = v10;

    v12 = [v4 objectForKeyedSubscript:&unk_285D58008];
    city = v5->_city;
    v5->_city = v12;

    v14 = [v4 objectForKeyedSubscript:&unk_285D58020];
    state = v5->_state;
    v5->_state = v14;

    v16 = [v4 objectForKeyedSubscript:&unk_285D58038];
    postalCode = v5->_postalCode;
    v5->_postalCode = v16;

    v18 = [v4 objectForKeyedSubscript:&unk_285D58050];
    country = v5->_country;
    v5->_country = v18;

    v20 = [v4 objectForKeyedSubscript:&unk_285D58068];
    latitude = v5->_latitude;
    v5->_latitude = v20;

    v22 = [v4 objectForKeyedSubscript:&unk_285D58080];
    longitude = v5->_longitude;
    v5->_longitude = v22;

    v24 = [v4 objectForKeyedSubscript:&unk_285D58098];
    accuracy = v5->_accuracy;
    v5->_accuracy = v24;

    v26 = [v4 objectForKeyedSubscript:&unk_285D580B0];
    altitude = v5->_altitude;
    v5->_altitude = v26;

    v28 = [v4 objectForKeyedSubscript:&unk_285D580C8];
    altitudeAccuracy = v5->_altitudeAccuracy;
    v5->_altitudeAccuracy = v28;
  }

  return v5;
}

- (ASLocation)initWithTitle:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ASLocation;
  v6 = [(ASItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_displayName, a3);
  }

  return v7;
}

- (ASLocation)initWithCoder:(id)a3
{
  v5 = a3;
  v32.receiver = self;
  v32.super_class = ASLocation;
  v6 = [(ASItem *)&v32 init];
  if (v6)
  {
    if (([v5 allowsKeyedCoding] & 1) == 0)
    {
      [(ASLocation *)a2 initWithCoder:v6];
    }

    v7 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    displayName = v6->_displayName;
    v6->_displayName = v7;

    v9 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"annotation"];
    annotation = v6->_annotation;
    v6->_annotation = v9;

    v11 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"street"];
    street = v6->_street;
    v6->_street = v11;

    v13 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"city"];
    city = v6->_city;
    v6->_city = v13;

    v15 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"state"];
    state = v6->_state;
    v6->_state = v15;

    v17 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"postalCode"];
    postalCode = v6->_postalCode;
    v6->_postalCode = v17;

    v19 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"country"];
    country = v6->_country;
    v6->_country = v19;

    v21 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"latitude"];
    latitude = v6->_latitude;
    v6->_latitude = v21;

    v23 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"longitude"];
    longitude = v6->_longitude;
    v6->_longitude = v23;

    v25 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"accuracy"];
    accuracy = v6->_accuracy;
    v6->_accuracy = v25;

    v27 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"altitude"];
    altitude = v6->_altitude;
    v6->_altitude = v27;

    v29 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"altitudeAccuracy"];
    altitudeAccuracy = v6->_altitudeAccuracy;
    v6->_altitudeAccuracy = v29;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  if (([v5 allowsKeyedCoding] & 1) == 0)
  {
    [(ASLocation *)a2 encodeWithCoder:?];
  }

  [v5 encodeObject:self->_displayName forKey:@"displayName"];
  [v5 encodeObject:self->_annotation forKey:@"annotation"];
  [v5 encodeObject:self->_street forKey:@"street"];
  [v5 encodeObject:self->_city forKey:@"city"];
  [v5 encodeObject:self->_state forKey:@"state"];
  [v5 encodeObject:self->_postalCode forKey:@"postalCode"];
  [v5 encodeObject:self->_country forKey:@"country"];
  [v5 encodeObject:self->_latitude forKey:@"latitude"];
  [v5 encodeObject:self->_longitude forKey:@"longitude"];
  [v5 encodeObject:self->_accuracy forKey:@"accuracy"];
  [v5 encodeObject:self->_altitude forKey:@"altitude"];
  [v5 encodeObject:self->_altitudeAccuracy forKey:@"altitudeAccuracy"];
}

- (BOOL)isEqualToLocation:(id)a3
{
  v5 = a3;
  v6 = [(ASLocation *)self displayName];
  if (!v6)
  {
    v9 = [v5 displayName];
    if (v9)
    {
      goto LABEL_30;
    }
  }

  v7 = [(ASLocation *)self displayName];
  if (v7)
  {
    v3 = [v5 displayName];
    if (!v3)
    {
      v8 = 1;
      goto LABEL_9;
    }
  }

  v10 = [(ASLocation *)self displayName];
  if (v10)
  {
    v11 = v10;
    v12 = [(ASLocation *)self displayName];
    v13 = [v5 displayName];
    v8 = [v12 compare:v13] != 0;

    if (!v7)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v8 = 0;
  if (v7)
  {
LABEL_9:
  }

LABEL_10:

  if (v8)
  {
    goto LABEL_31;
  }

  v14 = [(ASLocation *)self annotation];
  if (!v14)
  {
    v9 = [v5 annotation];
    if (v9)
    {
      goto LABEL_30;
    }
  }

  v15 = [(ASLocation *)self annotation];
  if (v15)
  {
    v3 = [v5 annotation];
    if (!v3)
    {
      v16 = 1;
      goto LABEL_21;
    }
  }

  v17 = [(ASLocation *)self annotation];
  if (v17)
  {
    v18 = v17;
    v19 = [(ASLocation *)self annotation];
    v20 = [v5 annotation];
    v16 = [v19 compare:v20] != 0;

    if (!v15)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v16 = 0;
  if (v15)
  {
LABEL_21:
  }

LABEL_22:

  if (!v16)
  {
    v21 = [(ASLocation *)self latitude];
    if (!v21)
    {
      v9 = [v5 latitude];
      if (v9)
      {
LABEL_30:

        goto LABEL_31;
      }
    }

    v22 = [(ASLocation *)self latitude];
    if (!v22 || ([v5 latitude], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v26 = [(ASLocation *)self latitude];
      if (v26)
      {
        v27 = v26;
        v28 = [(ASLocation *)self latitude];
        v29 = [v5 latitude];
        v23 = [v28 compare:v29] != 0;

        if (!v22)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v23 = 0;
        if (!v22)
        {
LABEL_36:

          if (v23)
          {
            goto LABEL_31;
          }

          v30 = [(ASLocation *)self longitude];
          if (!v30)
          {
            v33 = [v5 longitude];
            if (v33)
            {
              v32 = 1;
              goto LABEL_50;
            }
          }

          v31 = [(ASLocation *)self longitude];
          if (!v31 || ([v5 longitude], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v34 = [(ASLocation *)self longitude];
            if (v34)
            {
              v35 = v34;
              v36 = [(ASLocation *)self longitude];
              v37 = [v5 longitude];
              v32 = [v36 compare:v37] != 0;

              if (!v31)
              {
LABEL_48:
                if (v30)
                {
LABEL_51:

                  v24 = !v32;
                  goto LABEL_32;
                }

                v33 = 0;
LABEL_50:

                goto LABEL_51;
              }
            }

            else
            {
              v32 = 0;
              if (!v31)
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
  v3 = [(ASLocation *)self displayName];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [(ASLocation *)self annotation];
    if (v5)
    {
      v4 = 0;
    }

    else
    {
      v6 = [(ASLocation *)self latitude];
      if (v6)
      {
        v7 = [(ASLocation *)self longitude];
        v4 = v7 == 0;
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