@interface CWFRangingResult
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRangingResult:(id)result;
- (CWFRangingResult)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CWFRangingResult

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = CWFCorrectEthernetAddressString(self->_MACAddress);
  identifier = self->_identifier;
  if (identifier)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:self->_identifier encoding:4];
    v7 = self->_identifier;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = CWFHexadecimalStringFromData(v7);
  v9 = [v3 stringWithFormat:@"mac=%@, id='%@' (%@), dist=%f, stddev=%f, measurements=[%@]", v4, v6, v8, *&self->_distance, *&self->_standardDeviation, self->_measurements];

  if (identifier)
  {
  }

  return v9;
}

- (BOOL)isEqualToRangingResult:(id)result
{
  resultCopy = result;
  MACAddress = self->_MACAddress;
  mACAddress = [resultCopy MACAddress];
  if (MACAddress != mACAddress)
  {
    if (!self->_MACAddress || ([resultCopy MACAddress], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v11 = 0;
      goto LABEL_40;
    }

    v8 = v7;
    v9 = self->_MACAddress;
    mACAddress2 = [resultCopy MACAddress];
    if (![(NSString *)v9 isEqual:mACAddress2])
    {
      v11 = 0;
LABEL_39:

      goto LABEL_40;
    }

    v39 = mACAddress2;
    v40 = v8;
  }

  identifier = self->_identifier;
  identifier = [resultCopy identifier];
  if (identifier == identifier)
  {
LABEL_12:
    v18 = [MEMORY[0x1E696AD98] numberWithDouble:self->_distance];
    v19 = MEMORY[0x1E696AD98];
    [resultCopy distance];
    v20 = [v19 numberWithDouble:?];
    if ([v18 isEqualToNumber:v20])
    {
      v37 = v18;
      v21 = [MEMORY[0x1E696AD98] numberWithDouble:self->_standardDeviation];
      v22 = MEMORY[0x1E696AD98];
      [resultCopy standardDeviation];
      v23 = [v22 numberWithDouble:?];
      v38 = v21;
      if ([v21 isEqualToNumber:v23])
      {
        status = self->_status;
        v25 = v37;
        if (status == [resultCopy status] && (numberOfValidMeasurements = self->_numberOfValidMeasurements, numberOfValidMeasurements == objc_msgSend(resultCopy, "numberOfValidMeasurements")))
        {
          measurements = self->_measurements;
          measurements = [resultCopy measurements];
          if (measurements == measurements)
          {
            v11 = 1;
          }

          else if (self->_measurements)
          {
            v34 = measurements;
            measurements2 = [resultCopy measurements];
            if (measurements2)
            {
              v30 = self->_measurements;
              v33 = measurements2;
              measurements3 = [resultCopy measurements];
              v11 = [(NSArray *)v30 isEqual:measurements3];

              measurements2 = v33;
            }

            else
            {
              v11 = 0;
            }

            measurements = v34;
          }

          else
          {
            v11 = 0;
          }
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
        v25 = v37;
      }
    }

    else
    {

      v11 = 0;
    }

    if (identifier != identifier)
    {

LABEL_35:
      mACAddress2 = v39;
      v8 = v40;

      if (MACAddress == mACAddress)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }

    goto LABEL_37;
  }

  if (self->_identifier)
  {
    identifier2 = [resultCopy identifier];
    if (!identifier2)
    {
      v11 = 0;
      goto LABEL_35;
    }

    v15 = identifier2;
    v16 = self->_identifier;
    identifier3 = [resultCopy identifier];
    if (([(NSData *)v16 isEqual:identifier3]& 1) == 0)
    {

      v11 = 0;
      goto LABEL_38;
    }

    v35 = identifier3;
    v36 = v15;
    goto LABEL_12;
  }

  v11 = 0;
LABEL_37:

LABEL_38:
  mACAddress2 = v39;
  v8 = v40;
  if (MACAddress != mACAddress)
  {
    goto LABEL_39;
  }

LABEL_40:

  return v11;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFRangingResult *)self isEqualToRangingResult:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_MACAddress hash];
  v4 = [(NSData *)self->_identifier hash]^ v3;
  v5 = v4 ^ [(NSArray *)self->_measurements hash]^ self->_status;
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_distance];
  v7 = v5 ^ [v6 hash];
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_standardDeviation];
  v9 = [v8 hash] ^ self->_numberOfValidMeasurements;

  return v7 ^ v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[CWFRangingResult allocWithZone:?]];
  [(CWFRangingResult *)v4 setMACAddress:self->_MACAddress];
  [(CWFRangingResult *)v4 setIdentifier:self->_identifier];
  [(CWFRangingResult *)v4 setDistance:self->_distance];
  [(CWFRangingResult *)v4 setStandardDeviation:self->_standardDeviation];
  [(CWFRangingResult *)v4 setStatus:self->_status];
  [(CWFRangingResult *)v4 setMeasurements:self->_measurements];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  MACAddress = self->_MACAddress;
  coderCopy = coder;
  [coderCopy encodeObject:MACAddress forKey:@"_MACAddress"];
  [coderCopy encodeObject:self->_identifier forKey:@"_identifier"];
  [coderCopy encodeDouble:@"_distance" forKey:self->_distance];
  [coderCopy encodeDouble:@"_standardDeviation" forKey:self->_standardDeviation];
  [coderCopy encodeInteger:self->_status forKey:@"_status"];
  [coderCopy encodeObject:self->_measurements forKey:@"_measurements"];
}

- (CWFRangingResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = CWFRangingResult;
  v5 = [(CWFRangingResult *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_MACAddress"];
    MACAddress = v5->_MACAddress;
    v5->_MACAddress = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    [coderCopy decodeDoubleForKey:@"_distance"];
    v5->_distance = v10;
    [coderCopy decodeDoubleForKey:@"_standardDeviation"];
    v5->_standardDeviation = v11;
    v5->_status = [coderCopy decodeIntegerForKey:@"_status"];
    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"_measurements"];
    measurements = v5->_measurements;
    v5->_measurements = v15;
  }

  return v5;
}

@end