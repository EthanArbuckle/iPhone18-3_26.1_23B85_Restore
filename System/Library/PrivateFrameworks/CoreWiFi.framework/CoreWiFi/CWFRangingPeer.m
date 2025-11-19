@interface CWFRangingPeer
+ (id)rangingPeerWithMACAddress:(id)a3 PMK:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRangingPeer:(id)a3;
- (CWFRangingPeer)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CWFRangingPeer

+ (id)rangingPeerWithMACAddress:(id)a3 PMK:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(CWFRangingPeer);
  [(CWFRangingPeer *)v7 setIdentifier:0];
  [(CWFRangingPeer *)v7 setMACAddress:v6];

  [(CWFRangingPeer *)v7 setPMK:v5];

  return v7;
}

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
  v9 = [v3 stringWithFormat:@"mac=%@, id='%@' (%@)", v4, v6, v8];

  if (identifier)
  {
  }

  return v9;
}

- (BOOL)isEqualToRangingPeer:(id)a3
{
  v5 = a3;
  numberOfMeasurements = self->_numberOfMeasurements;
  if (numberOfMeasurements == [v5 numberOfMeasurements])
  {
    useCoreRotation = self->_useCoreRotation;
    if (useCoreRotation == [v5 useCoreRotation])
    {
      MACAddress = self->_MACAddress;
      v9 = [v5 MACAddress];
      if (MACAddress != v9)
      {
        if (!self->_MACAddress || ([v5 MACAddress], (v10 = objc_claimAutoreleasedReturnValue()) == 0))
        {
          v14 = 0;
          goto LABEL_31;
        }

        v11 = v10;
        v12 = self->_MACAddress;
        v13 = [v5 MACAddress];
        if (![(NSString *)v12 isEqual:v13])
        {
          v14 = 0;
LABEL_30:

          goto LABEL_31;
        }

        v30 = v13;
        v31 = v11;
      }

      PMK = self->_PMK;
      v16 = [v5 PMK];
      if (PMK != v16)
      {
        if (!self->_PMK || ([v5 PMK], (v17 = objc_claimAutoreleasedReturnValue()) == 0))
        {
LABEL_27:
          v14 = 0;
          goto LABEL_28;
        }

        v3 = v17;
        v18 = self->_PMK;
        v19 = [v5 PMK];
        if (([(NSData *)v18 isEqual:v19]& 1) == 0)
        {

          v14 = 0;
LABEL_25:
          v27 = MACAddress == v9;
          v11 = v31;
          goto LABEL_29;
        }

        v29 = v19;
      }

      identifier = self->_identifier;
      v21 = [v5 identifier];
      v22 = v21;
      v14 = identifier == v21;
      if (identifier == v21 || !self->_identifier)
      {

        if (PMK == v16)
        {
LABEL_28:
          v11 = v31;

          v27 = MACAddress == v9;
LABEL_29:
          v13 = v30;
          if (!v27)
          {
            goto LABEL_30;
          }

LABEL_31:

          goto LABEL_32;
        }
      }

      else
      {
        v23 = [v5 identifier];
        if (v23)
        {
          v24 = v23;
          v25 = self->_identifier;
          v26 = [v5 identifier];
          v14 = [(NSData *)v25 isEqual:v26];

          if (PMK != v16)
          {
          }

          goto LABEL_25;
        }

        if (PMK == v16)
        {
          goto LABEL_27;
        }
      }

      goto LABEL_28;
    }
  }

  v14 = 0;
LABEL_32:

  return v14;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFRangingPeer *)self isEqualToRangingPeer:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  numberOfMeasurements = self->_numberOfMeasurements;
  v4 = [(NSString *)self->_MACAddress hash]^ numberOfMeasurements;
  v5 = [(NSData *)self->_PMK hash];
  v6 = v4 ^ v5 ^ [(NSData *)self->_identifier hash];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_useCoreRotation];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[CWFRangingPeer allocWithZone:?]];
  [(CWFRangingPeer *)v4 setMACAddress:self->_MACAddress];
  [(CWFRangingPeer *)v4 setPMK:self->_PMK];
  [(CWFRangingPeer *)v4 setNumberOfMeasurements:self->_numberOfMeasurements];
  [(CWFRangingPeer *)v4 setIdentifier:self->_identifier];
  [(CWFRangingPeer *)v4 setUseCoreRotation:self->_useCoreRotation];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  MACAddress = self->_MACAddress;
  v5 = a3;
  [v5 encodeObject:MACAddress forKey:@"_MACAddress"];
  [v5 encodeObject:self->_PMK forKey:@"_PMK"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_numberOfMeasurements];
  [v5 encodeObject:v6 forKey:@"_numberOfMeasurements"];

  [v5 encodeObject:self->_identifier forKey:@"_identifier"];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_useCoreRotation];
  [v5 encodeObject:v7 forKey:@"_useCoreRotation"];
}

- (CWFRangingPeer)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CWFRangingPeer;
  v5 = [(CWFRangingPeer *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_MACAddress"];
    MACAddress = v5->_MACAddress;
    v5->_MACAddress = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_PMK"];
    PMK = v5->_PMK;
    v5->_PMK = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_numberOfMeasurements"];
    v5->_numberOfMeasurements = [v10 unsignedIntegerValue];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_useCoreRotation"];
    v5->_useCoreRotation = [v13 BOOLValue];
  }

  return v5;
}

@end