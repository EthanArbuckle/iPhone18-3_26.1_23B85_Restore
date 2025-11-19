@interface CWFRangingResult
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRangingResult:(id)a3;
- (CWFRangingResult)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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

- (BOOL)isEqualToRangingResult:(id)a3
{
  v4 = a3;
  MACAddress = self->_MACAddress;
  v6 = [v4 MACAddress];
  if (MACAddress != v6)
  {
    if (!self->_MACAddress || ([v4 MACAddress], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v11 = 0;
      goto LABEL_40;
    }

    v8 = v7;
    v9 = self->_MACAddress;
    v10 = [v4 MACAddress];
    if (![(NSString *)v9 isEqual:v10])
    {
      v11 = 0;
LABEL_39:

      goto LABEL_40;
    }

    v39 = v10;
    v40 = v8;
  }

  identifier = self->_identifier;
  v13 = [v4 identifier];
  if (identifier == v13)
  {
LABEL_12:
    v18 = [MEMORY[0x1E696AD98] numberWithDouble:self->_distance];
    v19 = MEMORY[0x1E696AD98];
    [v4 distance];
    v20 = [v19 numberWithDouble:?];
    if ([v18 isEqualToNumber:v20])
    {
      v37 = v18;
      v21 = [MEMORY[0x1E696AD98] numberWithDouble:self->_standardDeviation];
      v22 = MEMORY[0x1E696AD98];
      [v4 standardDeviation];
      v23 = [v22 numberWithDouble:?];
      v38 = v21;
      if ([v21 isEqualToNumber:v23])
      {
        status = self->_status;
        v25 = v37;
        if (status == [v4 status] && (numberOfValidMeasurements = self->_numberOfValidMeasurements, numberOfValidMeasurements == objc_msgSend(v4, "numberOfValidMeasurements")))
        {
          measurements = self->_measurements;
          v28 = [v4 measurements];
          if (measurements == v28)
          {
            v11 = 1;
          }

          else if (self->_measurements)
          {
            v34 = v28;
            v29 = [v4 measurements];
            if (v29)
            {
              v30 = self->_measurements;
              v33 = v29;
              v31 = [v4 measurements];
              v11 = [(NSArray *)v30 isEqual:v31];

              v29 = v33;
            }

            else
            {
              v11 = 0;
            }

            v28 = v34;
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

    if (identifier != v13)
    {

LABEL_35:
      v10 = v39;
      v8 = v40;

      if (MACAddress == v6)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }

    goto LABEL_37;
  }

  if (self->_identifier)
  {
    v14 = [v4 identifier];
    if (!v14)
    {
      v11 = 0;
      goto LABEL_35;
    }

    v15 = v14;
    v16 = self->_identifier;
    v17 = [v4 identifier];
    if (([(NSData *)v16 isEqual:v17]& 1) == 0)
    {

      v11 = 0;
      goto LABEL_38;
    }

    v35 = v17;
    v36 = v15;
    goto LABEL_12;
  }

  v11 = 0;
LABEL_37:

LABEL_38:
  v10 = v39;
  v8 = v40;
  if (MACAddress != v6)
  {
    goto LABEL_39;
  }

LABEL_40:

  return v11;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFRangingResult *)self isEqualToRangingResult:v5];
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

- (id)copyWithZone:(_NSZone *)a3
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

- (void)encodeWithCoder:(id)a3
{
  MACAddress = self->_MACAddress;
  v5 = a3;
  [v5 encodeObject:MACAddress forKey:@"_MACAddress"];
  [v5 encodeObject:self->_identifier forKey:@"_identifier"];
  [v5 encodeDouble:@"_distance" forKey:self->_distance];
  [v5 encodeDouble:@"_standardDeviation" forKey:self->_standardDeviation];
  [v5 encodeInteger:self->_status forKey:@"_status"];
  [v5 encodeObject:self->_measurements forKey:@"_measurements"];
}

- (CWFRangingResult)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = CWFRangingResult;
  v5 = [(CWFRangingResult *)&v18 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_MACAddress"];
    MACAddress = v5->_MACAddress;
    v5->_MACAddress = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    [v4 decodeDoubleForKey:@"_distance"];
    v5->_distance = v10;
    [v4 decodeDoubleForKey:@"_standardDeviation"];
    v5->_standardDeviation = v11;
    v5->_status = [v4 decodeIntegerForKey:@"_status"];
    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"_measurements"];
    measurements = v5->_measurements;
    v5->_measurements = v15;
  }

  return v5;
}

@end