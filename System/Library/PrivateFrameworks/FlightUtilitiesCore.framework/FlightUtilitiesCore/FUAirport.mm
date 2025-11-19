@interface FUAirport
- (BOOL)isEqual:(id)a3;
- (CLLocationCoordinate2D)location;
- (FUAirport)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)fetchPlacemarkWithCompletionHandler:(id)a3;
@end

@implementation FUAirport

- (BOOL)isEqual:(id)a3
{
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(FUAirport *)self IATACode];
    v9 = [v7 IATACode];
    if (v8 != v9)
    {
      v3 = [(FUAirport *)self IATACode];
      v5 = [v7 IATACode];
      if (![v3 isEqual:v5])
      {
        v10 = 0;
        goto LABEL_35;
      }
    }

    v11 = [(FUAirport *)self name];
    v12 = [v7 name];
    v44 = v11;
    if (v11 != v12)
    {
      v13 = [(FUAirport *)self name];
      v14 = [v7 name];
      if (![v13 isEqual:v14])
      {
        v10 = 0;
LABEL_33:

LABEL_34:
        if (v8 == v9)
        {
LABEL_36:

          goto LABEL_37;
        }

LABEL_35:

        goto LABEL_36;
      }

      v41 = v14;
      v42 = v13;
    }

    v15 = [(FUAirport *)self city];
    v16 = [v7 city];
    v17 = v16;
    v43 = v5;
    if (v15 == v16)
    {
      v40 = v15;
    }

    else
    {
      v4 = v16;
      v18 = [(FUAirport *)self city];
      v37 = [v7 city];
      v38 = v18;
      if (![v18 isEqual:?])
      {
        v10 = 0;
        v17 = v4;
LABEL_31:

LABEL_32:
        v14 = v41;
        v13 = v42;
        if (v44 == v12)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }

      v40 = v15;
      v17 = v4;
    }

    v19 = [(FUAirport *)self timeZone];
    v20 = [v7 timeZone];
    v39 = v19;
    v21 = v19 == v20;
    v22 = v20;
    if (v21)
    {
      v36 = v3;
    }

    else
    {
      v4 = [(FUAirport *)self timeZone];
      v34 = [v7 timeZone];
      v35 = v4;
      if (![v4 isEqual:?])
      {
        v10 = 0;
        v25 = v39;
LABEL_29:

LABEL_30:
        v15 = v40;
        if (v40 == v17)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }

      v36 = v3;
    }

    v23 = [(FUAirport *)self placemark];
    v24 = [v7 placemark];
    if (v23 == v24 || (-[FUAirport placemark](self, "placemark"), v4 = objc_claimAutoreleasedReturnValue(), [v7 placemark], v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "isEqual:")))
    {
      [(FUAirport *)self location];
      v27 = v26;
      [v7 location];
      if (v27 == v28)
      {
        [(FUAirport *)self location];
        v30 = v29;
        [v7 location];
        v10 = v30 == v31;
      }

      else
      {
        v10 = 0;
      }

      if (v23 == v24)
      {
LABEL_28:

        v25 = v39;
        v3 = v36;
        v5 = v43;
        if (v39 == v22)
        {
          goto LABEL_30;
        }

        goto LABEL_29;
      }
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_28;
  }

  v10 = 0;
LABEL_37:

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(FUAirport *)self IATACode];
  v6 = [v5 copy];
  [v4 setIATACode:v6];

  v7 = [(FUAirport *)self name];
  v8 = [v7 copy];
  [v4 setName:v8];

  v9 = [(FUAirport *)self city];
  v10 = [v9 copy];
  [v4 setCity:v10];

  v11 = [(FUAirport *)self timeZone];
  v12 = [v11 copy];
  [v4 setTimeZone:v12];

  [(FUAirport *)self location];
  [v4 setLocation:?];
  v13 = [(FUAirport *)self placemark];
  v14 = [v13 copy];
  [v4 setPlacemark:v14];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(FUAirport *)self IATACode];
  v5 = [(FUAirport *)self name];
  [(FUAirport *)self location];
  v7 = v6;
  [(FUAirport *)self location];
  v9 = [v3 stringWithFormat:@"Airport: %@ (%@) [%f, %f]", v4, v5, v7, v8];

  return v9;
}

- (void)fetchPlacemarkWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(FUAirport *)self placemark];

  if (v5)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__FUAirport_fetchPlacemarkWithCompletionHandler___block_invoke;
    block[3] = &unk_279012C58;
    block[4] = self;
    v15 = v4;
    v6 = v4;
    dispatch_async(MEMORY[0x277D85CD0], block);
    v7 = v15;
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277CBFBE8]);
    v8 = objc_alloc(MEMORY[0x277CE41F8]);
    [(FUAirport *)self location];
    v10 = v9;
    [(FUAirport *)self location];
    v7 = [v8 initWithLatitude:v10 longitude:?];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __49__FUAirport_fetchPlacemarkWithCompletionHandler___block_invoke_2;
    v12[3] = &unk_279012C30;
    v12[4] = self;
    v13 = v4;
    v11 = v4;
    [v6 reverseGeocodeLocation:v7 completionHandler:v12];
  }
}

void __49__FUAirport_fetchPlacemarkWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) placemark];
  (*(v1 + 16))(v1, v2);
}

void __49__FUAirport_fetchPlacemarkWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  if (!a3 && [v8 count])
  {
    v5 = [v8 firstObject];
    [*(a1 + 32) setPlacemark:v5];
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) placemark];
  (*(v6 + 16))(v6, v7);
}

- (void)encodeWithCoder:(id)a3
{
  v19 = a3;
  v4 = [(FUAirport *)self IATACode];

  if (v4)
  {
    v5 = [(FUAirport *)self IATACode];
    [v19 encodeObject:v5 forKey:@"IATACode"];
  }

  v6 = [(FUAirport *)self name];

  if (v6)
  {
    v7 = [(FUAirport *)self name];
    [v19 encodeObject:v7 forKey:@"name"];
  }

  v8 = [(FUAirport *)self city];

  if (v8)
  {
    v9 = [(FUAirport *)self city];
    [v19 encodeObject:v9 forKey:@"city"];
  }

  v10 = [(FUAirport *)self timeZone];

  if (v10)
  {
    v11 = [(FUAirport *)self timeZone];
    [v19 encodeObject:v11 forKey:@"timeZone"];
  }

  v12 = [(FUAirport *)self placemark];

  if (v12)
  {
    v13 = [(FUAirport *)self placemark];
    [v19 encodeObject:v13 forKey:@"placemark"];
  }

  v14 = MEMORY[0x277CCABB0];
  [(FUAirport *)self location];
  v15 = [v14 numberWithDouble:?];
  [v19 encodeObject:v15 forKey:@"location.latitude"];

  v16 = MEMORY[0x277CCABB0];
  [(FUAirport *)self location];
  v18 = [v16 numberWithDouble:v17];
  [v19 encodeObject:v18 forKey:@"location.longitude"];
}

- (FUAirport)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = FUAirport;
  v5 = [(FUAirport *)&v22 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IATACode"];
    IATACode = v5->_IATACode;
    v5->_IATACode = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"city"];
    city = v5->_city;
    v5->_city = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timeZone"];
    timeZone = v5->_timeZone;
    v5->_timeZone = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"placemark"];
    placemark = v5->_placemark;
    v5->_placemark = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"location.latitude"];
    [v16 doubleValue];
    v5->_location.latitude = v17;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"location.longitude"];
    [v18 doubleValue];
    v5->_location.longitude = v19;

    v20 = v5;
  }

  return v5;
}

- (CLLocationCoordinate2D)location
{
  objc_copyStruct(v4, &self->_location, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

@end