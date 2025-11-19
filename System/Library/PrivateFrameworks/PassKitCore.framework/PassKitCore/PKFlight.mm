@interface PKFlight
- (BOOL)isEqual:(id)a3;
- (BOOL)isValid;
- (PKFlight)initWithAirlineCode:(id)a3 airlineName:(id)a4 flightNumber:(unint64_t)a5 operatorAirlineCode:(id)a6 operatorFlightNumber:(unint64_t)a7 departure:(id)a8 arrival:(id)a9 state:(unint64_t)a10 publishedDate:(id)a11 staleDate:(id)a12 isEstimated:(BOOL)a13 dataSource:(unint64_t)a14;
- (PKFlight)initWithCoder:(id)a3;
- (PKFlight)initWithMockFlightDictionary:(id)a3;
- (id)asDictionary;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKFlight

- (PKFlight)initWithAirlineCode:(id)a3 airlineName:(id)a4 flightNumber:(unint64_t)a5 operatorAirlineCode:(id)a6 operatorFlightNumber:(unint64_t)a7 departure:(id)a8 arrival:(id)a9 state:(unint64_t)a10 publishedDate:(id)a11 staleDate:(id)a12 isEstimated:(BOOL)a13 dataSource:(unint64_t)a14
{
  v36 = a3;
  v19 = a4;
  v20 = a6;
  v33 = a8;
  v21 = a8;
  v35 = a9;
  v34 = a11;
  v22 = a12;
  v37.receiver = self;
  v37.super_class = PKFlight;
  v23 = [(PKFlight *)&v37 init];
  if (v23)
  {
    [v21 scheduledGateTime];
    v24 = v20;
    v26 = v25 = v19;
    obj = a9;
    v27 = PKGenerateFlightIdentifier(v36, a5, v26);
    identifier = v23->_identifier;
    v23->_identifier = v27;

    v19 = v25;
    v20 = v24;
    objc_storeStrong(&v23->_airlineCode, a3);
    objc_storeStrong(&v23->_airlineName, a4);
    v23->_flightNumber = a5;
    objc_storeStrong(&v23->_operatorAirlineCode, a6);
    v23->_operatorFlightNumber = a7;
    objc_storeStrong(&v23->_departure, v33);
    objc_storeStrong(&v23->_arrival, a9);
    v23->_state = a10;
    objc_storeStrong(&v23->_staleDate, a12);
    objc_storeStrong(&v23->_publishedDate, a11);
    v23->_estimated = a13;
    v23->_dataSource = a14;
  }

  if (![(PKFlight *)v23 isValid])
  {

    v23 = 0;
  }

  return v23;
}

- (PKFlight)initWithMockFlightDictionary:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = PKFlight;
  v5 = [(PKFlight *)&v30 init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"airlineCode"];
    airlineCode = v5->_airlineCode;
    v5->_airlineCode = v6;

    v8 = [v4 PKStringForKey:@"airlineName"];
    airlineName = v5->_airlineName;
    v5->_airlineName = v8;

    v10 = [v4 PKNumberForKey:@"flightNumber"];
    v5->_flightNumber = [v10 unsignedIntegerValue];

    v11 = [v4 PKStringForKey:@"operatorAirlineCode"];
    operatorAirlineCode = v5->_operatorAirlineCode;
    v5->_operatorAirlineCode = v11;

    v13 = [v4 PKNumberForKey:@"operatorFlightNumber"];
    v5->_operatorFlightNumber = [v13 unsignedIntegerValue];

    v14 = [v4 objectForKey:@"departure"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[PKFlightStep alloc] initWithMockFlightStepDictionary:v14];
      departure = v5->_departure;
      v5->_departure = v15;
    }

    v17 = [v4 objectForKey:@"arrival"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [[PKFlightStep alloc] initWithMockFlightStepDictionary:v17];
      arrival = v5->_arrival;
      v5->_arrival = v18;
    }

    v20 = [v4 PKStringForKey:@"state"];
    v5->_state = PKFlightStateFromString(v20);

    v21 = [v4 PKDateForKey:@"staleDate"];
    staleDate = v5->_staleDate;
    v5->_staleDate = v21;

    v5->_estimated = [v4 PKBoolForKey:@"estimated"];
    v23 = [v4 PKStringForKey:@"dataSource"];
    v5->_dataSource = PKFlightDataSourceFromString(v23);

    v24 = v5->_airlineCode;
    flightNumber = v5->_flightNumber;
    v26 = [(PKFlightStep *)v5->_departure scheduledGateTime];
    v27 = PKGenerateFlightIdentifier(v24, flightNumber, v26);
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

  v7 = [(PKFlightStep *)self->_departure asDictionary];
  [v3 setObject:v7 forKeyedSubscript:@"departure"];

  v8 = [(PKFlightStep *)self->_arrival asDictionary];
  [v3 setObject:v8 forKeyedSubscript:@"arrival"];

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

- (PKFlight)initWithCoder:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = PKFlight;
  v5 = [(PKFlight *)&v29 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"airlineCode"];
    airlineCode = v5->_airlineCode;
    v5->_airlineCode = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"airlineName"];
    airlineName = v5->_airlineName;
    v5->_airlineName = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"flightNumber"];
    v5->_flightNumber = [v12 unsignedIntegerValue];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"operatorAirlineCode"];
    operatorAirlineCode = v5->_operatorAirlineCode;
    v5->_operatorAirlineCode = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"operatorFlightNumber"];
    v5->_operatorFlightNumber = [v15 unsignedIntegerValue];

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"departure"];
    departure = v5->_departure;
    v5->_departure = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"arrival"];
    arrival = v5->_arrival;
    v5->_arrival = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"state"];
    v5->_state = [v20 unsignedIntegerValue];

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"staleDate"];
    staleDate = v5->_staleDate;
    v5->_staleDate = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastUpdatedDate"];
    lastUpdatedDate = v5->_lastUpdatedDate;
    v5->_lastUpdatedDate = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"publishedDate"];
    publishedDate = v5->_publishedDate;
    v5->_publishedDate = v25;

    v5->_estimated = [v4 decodeBoolForKey:@"estimated"];
    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dataSource"];
    v5->_dataSource = [v27 unsignedIntegerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_airlineCode forKey:@"airlineCode"];
  [v5 encodeObject:self->_airlineName forKey:@"airlineName"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_flightNumber];
  [v5 encodeObject:v6 forKey:@"flightNumber"];

  [v5 encodeObject:self->_operatorAirlineCode forKey:@"operatorAirlineCode"];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_operatorFlightNumber];
  [v5 encodeObject:v7 forKey:@"operatorFlightNumber"];

  [v5 encodeObject:self->_departure forKey:@"departure"];
  [v5 encodeObject:self->_arrival forKey:@"arrival"];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_state];
  [v5 encodeObject:v8 forKey:@"state"];

  [v5 encodeObject:self->_staleDate forKey:@"staleDate"];
  [v5 encodeObject:self->_lastUpdatedDate forKey:@"lastUpdatedDate"];
  [v5 encodeObject:self->_publishedDate forKey:@"publishedDate"];
  [v5 encodeBool:self->_estimated forKey:@"estimated"];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_dataSource];
  [v5 encodeObject:v9 forKey:@"dataSource"];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    if (v4)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKFlight allocWithZone:](PKFlight init];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  identifier = v5->_identifier;
  v5->_identifier = v6;

  v8 = [(NSString *)self->_airlineCode copyWithZone:a3];
  airlineCode = v5->_airlineCode;
  v5->_airlineCode = v8;

  v10 = [(NSString *)self->_airlineName copyWithZone:a3];
  airlineName = v5->_airlineName;
  v5->_airlineName = v10;

  v5->_flightNumber = self->_flightNumber;
  v12 = [(NSString *)self->_operatorAirlineCode copyWithZone:a3];
  operatorAirlineCode = v5->_operatorAirlineCode;
  v5->_operatorAirlineCode = v12;

  v5->_operatorFlightNumber = self->_operatorFlightNumber;
  v14 = [(PKFlightStep *)self->_departure copyWithZone:a3];
  departure = v5->_departure;
  v5->_departure = v14;

  v16 = [(PKFlightStep *)self->_arrival copyWithZone:a3];
  arrival = v5->_arrival;
  v5->_arrival = v16;

  v5->_state = self->_state;
  v18 = [(NSDate *)self->_staleDate copyWithZone:a3];
  staleDate = v5->_staleDate;
  v5->_staleDate = v18;

  v20 = [(NSDate *)self->_lastUpdatedDate copyWithZone:a3];
  lastUpdatedDate = v5->_lastUpdatedDate;
  v5->_lastUpdatedDate = v20;

  v22 = [(NSDate *)self->_publishedDate copyWithZone:a3];
  publishedDate = v5->_publishedDate;
  v5->_publishedDate = v22;

  v5->_dataSource = self->_dataSource;
  return v5;
}

@end