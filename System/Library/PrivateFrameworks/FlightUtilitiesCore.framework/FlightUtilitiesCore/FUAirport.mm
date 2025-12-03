@interface FUAirport
- (BOOL)isEqual:(id)equal;
- (CLLocationCoordinate2D)location;
- (FUAirport)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)fetchPlacemarkWithCompletionHandler:(id)handler;
@end

@implementation FUAirport

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    iATACode = [(FUAirport *)self IATACode];
    iATACode2 = [equalCopy IATACode];
    if (iATACode != iATACode2)
    {
      iATACode3 = [(FUAirport *)self IATACode];
      iATACode4 = [equalCopy IATACode];
      if (![iATACode3 isEqual:iATACode4])
      {
        v10 = 0;
        goto LABEL_35;
      }
    }

    name = [(FUAirport *)self name];
    name2 = [equalCopy name];
    v44 = name;
    if (name != name2)
    {
      name3 = [(FUAirport *)self name];
      name4 = [equalCopy name];
      if (![name3 isEqual:name4])
      {
        v10 = 0;
LABEL_33:

LABEL_34:
        if (iATACode == iATACode2)
        {
LABEL_36:

          goto LABEL_37;
        }

LABEL_35:

        goto LABEL_36;
      }

      v41 = name4;
      v42 = name3;
    }

    city = [(FUAirport *)self city];
    city2 = [equalCopy city];
    v17 = city2;
    v43 = iATACode4;
    if (city == city2)
    {
      v40 = city;
    }

    else
    {
      timeZone3 = city2;
      city3 = [(FUAirport *)self city];
      city4 = [equalCopy city];
      v38 = city3;
      if (![city3 isEqual:?])
      {
        v10 = 0;
        v17 = timeZone3;
LABEL_31:

LABEL_32:
        name4 = v41;
        name3 = v42;
        if (v44 == name2)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }

      v40 = city;
      v17 = timeZone3;
    }

    timeZone = [(FUAirport *)self timeZone];
    timeZone2 = [equalCopy timeZone];
    v39 = timeZone;
    v21 = timeZone == timeZone2;
    v22 = timeZone2;
    if (v21)
    {
      v36 = iATACode3;
    }

    else
    {
      timeZone3 = [(FUAirport *)self timeZone];
      timeZone4 = [equalCopy timeZone];
      v35 = timeZone3;
      if (![timeZone3 isEqual:?])
      {
        v10 = 0;
        v25 = v39;
LABEL_29:

LABEL_30:
        city = v40;
        if (v40 == v17)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }

      v36 = iATACode3;
    }

    placemark = [(FUAirport *)self placemark];
    placemark2 = [equalCopy placemark];
    if (placemark == placemark2 || (-[FUAirport placemark](self, "placemark"), timeZone3 = objc_claimAutoreleasedReturnValue(), [equalCopy placemark], v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend(timeZone3, "isEqual:")))
    {
      [(FUAirport *)self location];
      v27 = v26;
      [equalCopy location];
      if (v27 == v28)
      {
        [(FUAirport *)self location];
        v30 = v29;
        [equalCopy location];
        v10 = v30 == v31;
      }

      else
      {
        v10 = 0;
      }

      if (placemark == placemark2)
      {
LABEL_28:

        v25 = v39;
        iATACode3 = v36;
        iATACode4 = v43;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  iATACode = [(FUAirport *)self IATACode];
  v6 = [iATACode copy];
  [v4 setIATACode:v6];

  name = [(FUAirport *)self name];
  v8 = [name copy];
  [v4 setName:v8];

  city = [(FUAirport *)self city];
  v10 = [city copy];
  [v4 setCity:v10];

  timeZone = [(FUAirport *)self timeZone];
  v12 = [timeZone copy];
  [v4 setTimeZone:v12];

  [(FUAirport *)self location];
  [v4 setLocation:?];
  placemark = [(FUAirport *)self placemark];
  v14 = [placemark copy];
  [v4 setPlacemark:v14];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  iATACode = [(FUAirport *)self IATACode];
  name = [(FUAirport *)self name];
  [(FUAirport *)self location];
  v7 = v6;
  [(FUAirport *)self location];
  v9 = [v3 stringWithFormat:@"Airport: %@ (%@) [%f, %f]", iATACode, name, v7, v8];

  return v9;
}

- (void)fetchPlacemarkWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  placemark = [(FUAirport *)self placemark];

  if (placemark)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__FUAirport_fetchPlacemarkWithCompletionHandler___block_invoke;
    block[3] = &unk_279012C58;
    block[4] = self;
    v15 = handlerCopy;
    v6 = handlerCopy;
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
    v13 = handlerCopy;
    v11 = handlerCopy;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  iATACode = [(FUAirport *)self IATACode];

  if (iATACode)
  {
    iATACode2 = [(FUAirport *)self IATACode];
    [coderCopy encodeObject:iATACode2 forKey:@"IATACode"];
  }

  name = [(FUAirport *)self name];

  if (name)
  {
    name2 = [(FUAirport *)self name];
    [coderCopy encodeObject:name2 forKey:@"name"];
  }

  city = [(FUAirport *)self city];

  if (city)
  {
    city2 = [(FUAirport *)self city];
    [coderCopy encodeObject:city2 forKey:@"city"];
  }

  timeZone = [(FUAirport *)self timeZone];

  if (timeZone)
  {
    timeZone2 = [(FUAirport *)self timeZone];
    [coderCopy encodeObject:timeZone2 forKey:@"timeZone"];
  }

  placemark = [(FUAirport *)self placemark];

  if (placemark)
  {
    placemark2 = [(FUAirport *)self placemark];
    [coderCopy encodeObject:placemark2 forKey:@"placemark"];
  }

  v14 = MEMORY[0x277CCABB0];
  [(FUAirport *)self location];
  v15 = [v14 numberWithDouble:?];
  [coderCopy encodeObject:v15 forKey:@"location.latitude"];

  v16 = MEMORY[0x277CCABB0];
  [(FUAirport *)self location];
  v18 = [v16 numberWithDouble:v17];
  [coderCopy encodeObject:v18 forKey:@"location.longitude"];
}

- (FUAirport)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = FUAirport;
  v5 = [(FUAirport *)&v22 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IATACode"];
    IATACode = v5->_IATACode;
    v5->_IATACode = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"city"];
    city = v5->_city;
    v5->_city = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeZone"];
    timeZone = v5->_timeZone;
    v5->_timeZone = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"placemark"];
    placemark = v5->_placemark;
    v5->_placemark = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"location.latitude"];
    [v16 doubleValue];
    v5->_location.latitude = v17;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"location.longitude"];
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