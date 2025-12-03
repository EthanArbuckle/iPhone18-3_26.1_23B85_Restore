@interface PKFlight
- (BOOL)isEqual:(id)equal;
- (BOOL)isValid;
- (PKFlight)initWithAirlineCode:(id)code airlineName:(id)name flightNumber:(unint64_t)number operatorAirlineCode:(id)airlineCode operatorFlightNumber:(unint64_t)flightNumber departure:(id)departure arrival:(id)arrival state:(unint64_t)self0 publishedDate:(id)self1 staleDate:(id)self2 isEstimated:(BOOL)self3 dataSource:(unint64_t)self4;
- (PKFlight)initWithCoder:(id)coder;
- (PKFlight)initWithMockFlightDictionary:(id)dictionary;
- (id)asDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKFlight

- (PKFlight)initWithAirlineCode:(id)code airlineName:(id)name flightNumber:(unint64_t)number operatorAirlineCode:(id)airlineCode operatorFlightNumber:(unint64_t)flightNumber departure:(id)departure arrival:(id)arrival state:(unint64_t)self0 publishedDate:(id)self1 staleDate:(id)self2 isEstimated:(BOOL)self3 dataSource:(unint64_t)self4
{
  codeCopy = code;
  nameCopy = name;
  airlineCodeCopy = airlineCode;
  departureCopy = departure;
  departureCopy2 = departure;
  arrivalCopy = arrival;
  dateCopy = date;
  staleDateCopy = staleDate;
  v37.receiver = self;
  v37.super_class = PKFlight;
  v23 = [(PKFlight *)&v37 init];
  if (v23)
  {
    [departureCopy2 scheduledGateTime];
    v24 = airlineCodeCopy;
    v26 = v25 = nameCopy;
    obj = arrival;
    v27 = PKGenerateFlightIdentifier(codeCopy, number, v26);
    identifier = v23->_identifier;
    v23->_identifier = v27;

    nameCopy = v25;
    airlineCodeCopy = v24;
    objc_storeStrong(&v23->_airlineCode, code);
    objc_storeStrong(&v23->_airlineName, name);
    v23->_flightNumber = number;
    objc_storeStrong(&v23->_operatorAirlineCode, airlineCode);
    v23->_operatorFlightNumber = flightNumber;
    objc_storeStrong(&v23->_departure, departureCopy);
    objc_storeStrong(&v23->_arrival, arrival);
    v23->_state = state;
    objc_storeStrong(&v23->_staleDate, staleDate);
    objc_storeStrong(&v23->_publishedDate, date);
    v23->_estimated = estimated;
    v23->_dataSource = source;
  }

  if (![(PKFlight *)v23 isValid])
  {

    v23 = 0;
  }

  return v23;
}

- (PKFlight)initWithMockFlightDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v30.receiver = self;
  v30.super_class = PKFlight;
  v5 = [(PKFlight *)&v30 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"airlineCode"];
    airlineCode = v5->_airlineCode;
    v5->_airlineCode = v6;

    v8 = [dictionaryCopy PKStringForKey:@"airlineName"];
    airlineName = v5->_airlineName;
    v5->_airlineName = v8;

    v10 = [dictionaryCopy PKNumberForKey:@"flightNumber"];
    v5->_flightNumber = [v10 unsignedIntegerValue];

    v11 = [dictionaryCopy PKStringForKey:@"operatorAirlineCode"];
    operatorAirlineCode = v5->_operatorAirlineCode;
    v5->_operatorAirlineCode = v11;

    v13 = [dictionaryCopy PKNumberForKey:@"operatorFlightNumber"];
    v5->_operatorFlightNumber = [v13 unsignedIntegerValue];

    v14 = [dictionaryCopy objectForKey:@"departure"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[PKFlightStep alloc] initWithMockFlightStepDictionary:v14];
      departure = v5->_departure;
      v5->_departure = v15;
    }

    v17 = [dictionaryCopy objectForKey:@"arrival"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [[PKFlightStep alloc] initWithMockFlightStepDictionary:v17];
      arrival = v5->_arrival;
      v5->_arrival = v18;
    }

    v20 = [dictionaryCopy PKStringForKey:@"state"];
    v5->_state = PKFlightStateFromString(v20);

    v21 = [dictionaryCopy PKDateForKey:@"staleDate"];
    staleDate = v5->_staleDate;
    v5->_staleDate = v21;

    v5->_estimated = [dictionaryCopy PKBoolForKey:@"estimated"];
    v23 = [dictionaryCopy PKStringForKey:@"dataSource"];
    v5->_dataSource = PKFlightDataSourceFromString(v23);

    v24 = v5->_airlineCode;
    flightNumber = v5->_flightNumber;
    scheduledGateTime = [(PKFlightStep *)v5->_departure scheduledGateTime];
    v27 = PKGenerateFlightIdentifier(v24, flightNumber, scheduledGateTime);
    identifier = v5->_identifier;
    v5->_identifier = v27;
  }

  if (![(PKFlight *)v5 isValid])
  {

    v5 = 0;
  }

  return v5;
}

- (id)asDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:self->_identifier forKeyedSubscript:@"identifier"];
  [v3 setObject:self->_airlineCode forKeyedSubscript:@"airlineCode"];
  [v3 setObject:self->_airlineName forKeyedSubscript:@"airlineName"];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_flightNumber];
  [v3 setObject:v4 forKeyedSubscript:@"flightNumber"];

  [v3 setObject:self->_operatorAirlineCode forKeyedSubscript:@"operatorAirlineCode"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_operatorFlightNumber];
  [v3 setObject:v5 forKeyedSubscript:@"operatorFlightNumber"];

  v6 = PKFlightStateToString(self->_state);
  [v3 setObject:v6 forKeyedSubscript:@"state"];

  asDictionary = [(PKFlightStep *)self->_departure asDictionary];
  [v3 setObject:asDictionary forKeyedSubscript:@"departure"];

  asDictionary2 = [(PKFlightStep *)self->_arrival asDictionary];
  [v3 setObject:asDictionary2 forKeyedSubscript:@"arrival"];

  v9 = PKW3CDateStringFromDate(self->_publishedDate);
  [v3 setObject:v9 forKeyedSubscript:@"publishedDate"];

  v10 = PKW3CDateStringFromDate(self->_staleDate);
  [v3 setObject:v10 forKeyedSubscript:@"staleDate"];

  v11 = PKW3CDateStringFromDate(self->_lastUpdatedDate);
  [v3 setObject:v11 forKeyedSubscript:@"lastUpdatedDate"];

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_dataSource];
  [v3 setObject:v12 forKeyedSubscript:@"dataSource"];

  v13 = [v3 copy];

  return v13;
}

- (BOOL)isValid
{
  if (![(NSString *)self->_identifier length]|| ![(NSString *)self->_airlineCode length]|| !self->_flightNumber || ![(NSString *)self->_operatorAirlineCode length]|| !self->_operatorFlightNumber || ![(PKFlightStep *)self->_departure isValid])
  {
    return 0;
  }

  arrival = self->_arrival;

  return [(PKFlightStep *)arrival isValid];
}

- (PKFlight)initWithCoder:(id)coder
{
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = PKFlight;
  v5 = [(PKFlight *)&v29 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"airlineCode"];
    airlineCode = v5->_airlineCode;
    v5->_airlineCode = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"airlineName"];
    airlineName = v5->_airlineName;
    v5->_airlineName = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"flightNumber"];
    v5->_flightNumber = [v12 unsignedIntegerValue];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"operatorAirlineCode"];
    operatorAirlineCode = v5->_operatorAirlineCode;
    v5->_operatorAirlineCode = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"operatorFlightNumber"];
    v5->_operatorFlightNumber = [v15 unsignedIntegerValue];

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"departure"];
    departure = v5->_departure;
    v5->_departure = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"arrival"];
    arrival = v5->_arrival;
    v5->_arrival = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"state"];
    v5->_state = [v20 unsignedIntegerValue];

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"staleDate"];
    staleDate = v5->_staleDate;
    v5->_staleDate = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastUpdatedDate"];
    lastUpdatedDate = v5->_lastUpdatedDate;
    v5->_lastUpdatedDate = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"publishedDate"];
    publishedDate = v5->_publishedDate;
    v5->_publishedDate = v25;

    v5->_estimated = [coderCopy decodeBoolForKey:@"estimated"];
    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dataSource"];
    v5->_dataSource = [v27 unsignedIntegerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_airlineCode forKey:@"airlineCode"];
  [coderCopy encodeObject:self->_airlineName forKey:@"airlineName"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_flightNumber];
  [coderCopy encodeObject:v6 forKey:@"flightNumber"];

  [coderCopy encodeObject:self->_operatorAirlineCode forKey:@"operatorAirlineCode"];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_operatorFlightNumber];
  [coderCopy encodeObject:v7 forKey:@"operatorFlightNumber"];

  [coderCopy encodeObject:self->_departure forKey:@"departure"];
  [coderCopy encodeObject:self->_arrival forKey:@"arrival"];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_state];
  [coderCopy encodeObject:v8 forKey:@"state"];

  [coderCopy encodeObject:self->_staleDate forKey:@"staleDate"];
  [coderCopy encodeObject:self->_lastUpdatedDate forKey:@"lastUpdatedDate"];
  [coderCopy encodeObject:self->_publishedDate forKey:@"publishedDate"];
  [coderCopy encodeBool:self->_estimated forKey:@"estimated"];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_dataSource];
  [coderCopy encodeObject:v9 forKey:@"dataSource"];
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"airlineCode: '%@'; ", self->_airlineCode];
  [v3 appendFormat:@"airlineName: '%@'; ", self->_airlineName];
  [v3 appendFormat:@"flightNumber: '%lu'; ", self->_flightNumber];
  [v3 appendFormat:@"operatorAirlineCode: '%@'; ", self->_operatorAirlineCode];
  [v3 appendFormat:@"operatorFlightNumber: '%lu'; ", self->_operatorFlightNumber];
  [v3 appendFormat:@"departure: '%@'; ", self->_departure];
  [v3 appendFormat:@"arrival: '%@'; ", self->_arrival];
  v4 = PKFlightStateToString(self->_state);
  [v3 appendFormat:@"state: '%@'; ", v4];

  [v3 appendFormat:@"staleDate: '%@'; ", self->_staleDate];
  [v3 appendFormat:@"lastUpdatedDate: '%@'; ", self->_lastUpdatedDate];
  [v3 appendFormat:@"publishedDate: '%@'; ", self->_publishedDate];
  [v3 appendFormat:@"isEstimated: '%d'; ", self->_estimated];
  [v3 appendFormat:@"dataSource: '%lu'; ", self->_dataSource];
  [v3 appendFormat:@">"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        airlineCode = v6->_airlineCode;
        v8 = self->_airlineCode;
        v9 = airlineCode;
        v10 = v9;
        if (v8 == v9)
        {
        }

        else
        {
          if (!v8 || !v9)
          {
            goto LABEL_24;
          }

          v11 = [(NSString *)v8 isEqualToString:v9];

          if (!v11)
          {
            goto LABEL_25;
          }
        }

        airlineName = v6->_airlineName;
        v8 = self->_airlineName;
        v14 = airlineName;
        v10 = v14;
        if (v8 == v14)
        {
        }

        else
        {
          if (!v8 || !v14)
          {
            goto LABEL_24;
          }

          v15 = [(NSString *)v8 isEqualToString:v14];

          if (!v15)
          {
            goto LABEL_25;
          }
        }

        if (self->_flightNumber != v6->_flightNumber)
        {
          goto LABEL_25;
        }

        operatorAirlineCode = v6->_operatorAirlineCode;
        v8 = self->_operatorAirlineCode;
        v17 = operatorAirlineCode;
        v10 = v17;
        if (v8 == v17)
        {

LABEL_29:
          if (self->_operatorFlightNumber == v6->_operatorFlightNumber)
          {
            departure = self->_departure;
            v21 = v6->_departure;
            if (departure && v21)
            {
              if (![(PKFlightStep *)departure isEqual:?])
              {
                goto LABEL_25;
              }
            }

            else if (departure != v21)
            {
              goto LABEL_25;
            }

            arrival = self->_arrival;
            v23 = v6->_arrival;
            if (arrival && v23)
            {
              if (![(PKFlightStep *)arrival isEqual:?])
              {
                goto LABEL_25;
              }
            }

            else if (arrival != v23)
            {
              goto LABEL_25;
            }

            if (self->_state == v6->_state)
            {
              staleDate = self->_staleDate;
              v25 = v6->_staleDate;
              if (staleDate && v25)
              {
                if (([(NSDate *)staleDate isEqual:?]& 1) == 0)
                {
                  goto LABEL_25;
                }
              }

              else if (staleDate != v25)
              {
                goto LABEL_25;
              }

              lastUpdatedDate = self->_lastUpdatedDate;
              v27 = v6->_lastUpdatedDate;
              if (lastUpdatedDate && v27)
              {
                if (([(NSDate *)lastUpdatedDate isEqual:?]& 1) == 0)
                {
                  goto LABEL_25;
                }
              }

              else if (lastUpdatedDate != v27)
              {
                goto LABEL_25;
              }

              publishedDate = self->_publishedDate;
              v29 = v6->_publishedDate;
              if (publishedDate && v29)
              {
                if (([(NSDate *)publishedDate isEqual:?]& 1) == 0)
                {
                  goto LABEL_25;
                }
              }

              else if (publishedDate != v29)
              {
                goto LABEL_25;
              }

              if (self->_estimated == v6->_estimated)
              {
                v12 = self->_dataSource == v6->_dataSource;
                goto LABEL_26;
              }
            }
          }

LABEL_25:
          v12 = 0;
LABEL_26:

          goto LABEL_27;
        }

        if (v8 && v17)
        {
          v18 = [(NSString *)v8 isEqualToString:v17];

          if (!v18)
          {
            goto LABEL_25;
          }

          goto LABEL_29;
        }

LABEL_24:

        goto LABEL_25;
      }
    }

    v12 = 0;
  }

LABEL_27:

  return v12;
}

- (unint64_t)hash
{
  [(NSString *)self->_airlineCode hash];
  [(NSString *)self->_airlineName hash];
  [(NSString *)self->_operatorAirlineCode hash];
  [(PKFlightStep *)self->_departure hash];
  [(PKFlightStep *)self->_arrival hash];
  [(NSDate *)self->_lastUpdatedDate hash];
  [(NSDate *)self->_publishedDate hash];
  [(NSDate *)self->_staleDate hash];
  v3 = SipHash();
  v4 = self->_flightNumber - v3 + 32 * v3;
  v5 = self->_operatorFlightNumber - v4 + 32 * v4;
  v6 = self->_state - v5 + 32 * v5;
  v7 = self->_dataSource - v6 + 32 * v6;
  return self->_estimated - v7 + 32 * v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKFlight allocWithZone:](PKFlight init];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  identifier = v5->_identifier;
  v5->_identifier = v6;

  v8 = [(NSString *)self->_airlineCode copyWithZone:zone];
  airlineCode = v5->_airlineCode;
  v5->_airlineCode = v8;

  v10 = [(NSString *)self->_airlineName copyWithZone:zone];
  airlineName = v5->_airlineName;
  v5->_airlineName = v10;

  v5->_flightNumber = self->_flightNumber;
  v12 = [(NSString *)self->_operatorAirlineCode copyWithZone:zone];
  operatorAirlineCode = v5->_operatorAirlineCode;
  v5->_operatorAirlineCode = v12;

  v5->_operatorFlightNumber = self->_operatorFlightNumber;
  v14 = [(PKFlightStep *)self->_departure copyWithZone:zone];
  departure = v5->_departure;
  v5->_departure = v14;

  v16 = [(PKFlightStep *)self->_arrival copyWithZone:zone];
  arrival = v5->_arrival;
  v5->_arrival = v16;

  v5->_state = self->_state;
  v18 = [(NSDate *)self->_staleDate copyWithZone:zone];
  staleDate = v5->_staleDate;
  v5->_staleDate = v18;

  v20 = [(NSDate *)self->_lastUpdatedDate copyWithZone:zone];
  lastUpdatedDate = v5->_lastUpdatedDate;
  v5->_lastUpdatedDate = v20;

  v22 = [(NSDate *)self->_publishedDate copyWithZone:zone];
  publishedDate = v5->_publishedDate;
  v5->_publishedDate = v22;

  v5->_dataSource = self->_dataSource;
  return v5;
}

@end