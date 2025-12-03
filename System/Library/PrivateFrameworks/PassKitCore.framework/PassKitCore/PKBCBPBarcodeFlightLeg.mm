@interface PKBCBPBarcodeFlightLeg
- (BOOL)isEqual:(id)equal;
- (PKBCBPBarcodeFlightLeg)initWithCoder:(id)coder;
- (PKBCBPBarcodeFlightLeg)initWithPassengerNameRecordNumber:(id)number departureAirportCode:(id)code destinationAirportCode:(id)airportCode airlineCode:(id)airlineCode flightNumber:(unint64_t)flightNumber dayOfYear:(unint64_t)year seatNumber:(id)seatNumber;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKBCBPBarcodeFlightLeg

- (PKBCBPBarcodeFlightLeg)initWithPassengerNameRecordNumber:(id)number departureAirportCode:(id)code destinationAirportCode:(id)airportCode airlineCode:(id)airlineCode flightNumber:(unint64_t)flightNumber dayOfYear:(unint64_t)year seatNumber:(id)seatNumber
{
  numberCopy = number;
  codeCopy = code;
  airportCodeCopy = airportCode;
  airlineCodeCopy = airlineCode;
  seatNumberCopy = seatNumber;
  v24.receiver = self;
  v24.super_class = PKBCBPBarcodeFlightLeg;
  v18 = [(PKBCBPBarcodeFlightLeg *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_passengerNameRecordNumber, number);
    objc_storeStrong(&v19->_departureAirportCode, code);
    objc_storeStrong(&v19->_destinationAirportCode, airportCode);
    objc_storeStrong(&v19->_airlineCode, airlineCode);
    v19->_flightNumber = flightNumber;
    v19->_dayOfYear = year;
    objc_storeStrong(&v19->_seatNumber, seatNumber);
  }

  return v19;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"PNR: '%@'; ", self->_passengerNameRecordNumber];
  [v3 appendFormat:@"departureAirportCode: '%@'; ", self->_departureAirportCode];
  [v3 appendFormat:@"destinationAirportCode: '%@'; ", self->_destinationAirportCode];
  [v3 appendFormat:@"airlineCode: '%@'; ", self->_airlineCode];
  [v3 appendFormat:@"flightNumber: '%lu'; ", self->_flightNumber];
  [v3 appendFormat:@"dayOfYear: '%lu'; ", self->_dayOfYear];
  [v3 appendFormat:@"seatNumber: '%@'; ", self->_seatNumber];
  [v3 appendFormat:@">"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        passengerNameRecordNumber = v6->_passengerNameRecordNumber;
        v8 = self->_passengerNameRecordNumber;
        v9 = passengerNameRecordNumber;
        v10 = v9;
        if (v8 == v9)
        {
        }

        else
        {
          LOBYTE(v11) = 0;
          if (!v8 || !v9)
          {
            goto LABEL_38;
          }

          v11 = [(NSString *)v8 isEqualToString:v9];

          if (!v11)
          {
            goto LABEL_39;
          }
        }

        departureAirportCode = v6->_departureAirportCode;
        v8 = self->_departureAirportCode;
        v13 = departureAirportCode;
        v10 = v13;
        if (v8 == v13)
        {
        }

        else
        {
          LOBYTE(v11) = 0;
          if (!v8 || !v13)
          {
            goto LABEL_38;
          }

          v11 = [(NSString *)v8 isEqualToString:v13];

          if (!v11)
          {
            goto LABEL_39;
          }
        }

        destinationAirportCode = v6->_destinationAirportCode;
        v8 = self->_destinationAirportCode;
        v15 = destinationAirportCode;
        v10 = v15;
        if (v8 == v15)
        {
        }

        else
        {
          LOBYTE(v11) = 0;
          if (!v8 || !v15)
          {
            goto LABEL_38;
          }

          v11 = [(NSString *)v8 isEqualToString:v15];

          if (!v11)
          {
            goto LABEL_39;
          }
        }

        airlineCode = v6->_airlineCode;
        v8 = self->_airlineCode;
        v17 = airlineCode;
        v10 = v17;
        if (v8 == v17)
        {
        }

        else
        {
          LOBYTE(v11) = 0;
          if (!v8 || !v17)
          {
            goto LABEL_38;
          }

          v11 = [(NSString *)v8 isEqualToString:v17];

          if (!v11)
          {
            goto LABEL_39;
          }
        }

        if (self->_flightNumber != v6->_flightNumber || self->_dayOfYear != v6->_dayOfYear)
        {
          LOBYTE(v11) = 0;
LABEL_39:

          goto LABEL_40;
        }

        seatNumber = self->_seatNumber;
        v19 = v6->_seatNumber;
        v8 = seatNumber;
        v20 = v19;
        v10 = v20;
        if (v8 == v20)
        {
          LOBYTE(v11) = 1;
        }

        else
        {
          LOBYTE(v11) = 0;
          if (v8 && v20)
          {
            LOBYTE(v11) = [(NSString *)v8 isEqualToString:v20];
          }
        }

LABEL_38:

        goto LABEL_39;
      }
    }

    LOBYTE(v11) = 0;
  }

LABEL_40:

  return v11;
}

- (unint64_t)hash
{
  [(NSString *)self->_passengerNameRecordNumber hash];
  [(NSString *)self->_departureAirportCode hash];
  [(NSString *)self->_destinationAirportCode hash];
  [(NSString *)self->_seatNumber hash];
  return SipHash();
}

- (PKBCBPBarcodeFlightLeg)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = PKBCBPBarcodeFlightLeg;
  v5 = [(PKBCBPBarcodeFlightLeg *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pnr"];
    passengerNameRecordNumber = v5->_passengerNameRecordNumber;
    v5->_passengerNameRecordNumber = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"departureAirportCode"];
    departureAirportCode = v5->_departureAirportCode;
    v5->_departureAirportCode = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"destinationAirportCode"];
    destinationAirportCode = v5->_destinationAirportCode;
    v5->_destinationAirportCode = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"airlineCode"];
    airlineCode = v5->_airlineCode;
    v5->_airlineCode = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"flightNumber"];
    v5->_flightNumber = [v14 unsignedIntegerValue];

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dayOfYear"];
    v5->_dayOfYear = [v15 unsignedIntegerValue];

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"seatNumber"];
    seatNumber = v5->_seatNumber;
    v5->_seatNumber = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  passengerNameRecordNumber = self->_passengerNameRecordNumber;
  coderCopy = coder;
  [coderCopy encodeObject:passengerNameRecordNumber forKey:@"pnr"];
  [coderCopy encodeObject:self->_departureAirportCode forKey:@"departureAirportCode"];
  [coderCopy encodeObject:self->_destinationAirportCode forKey:@"destinationAirportCode"];
  [coderCopy encodeObject:self->_airlineCode forKey:@"airlineCode"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_flightNumber];
  [coderCopy encodeObject:v5 forKey:@"flightNumber"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_dayOfYear];
  [coderCopy encodeObject:v6 forKey:@"dayOfYear"];

  [coderCopy encodeObject:self->_seatNumber forKey:@"seatNumber"];
}

@end