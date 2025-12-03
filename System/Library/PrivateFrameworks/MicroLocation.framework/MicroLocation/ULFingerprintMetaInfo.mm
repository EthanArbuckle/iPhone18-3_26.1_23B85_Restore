@interface ULFingerprintMetaInfo
- (BOOL)isEqual:(id)equal;
- (ULFingerprintMetaInfo)initWithCoder:(id)coder;
- (ULFingerprintMetaInfo)initWithNumWiFiAccessPoints:(id)points numBLESources:(id)sources numUWBSources:(id)bSources requestIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ULFingerprintMetaInfo

- (ULFingerprintMetaInfo)initWithNumWiFiAccessPoints:(id)points numBLESources:(id)sources numUWBSources:(id)bSources requestIdentifier:(id)identifier
{
  pointsCopy = points;
  sourcesCopy = sources;
  bSourcesCopy = bSources;
  identifierCopy = identifier;
  v18.receiver = self;
  v18.super_class = ULFingerprintMetaInfo;
  v15 = [(ULFingerprintMetaInfo *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_numberOfWiFiAccessPoints, points);
    objc_storeStrong(&v16->_numberOfBLESources, sources);
    objc_storeStrong(&v16->_numberOfUWBSources, bSources);
    objc_storeStrong(&v16->_requestIdentifier, identifier);
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc(objc_opt_class());
  numberOfWiFiAccessPoints = [(ULFingerprintMetaInfo *)self numberOfWiFiAccessPoints];
  v7 = [numberOfWiFiAccessPoints copyWithZone:zone];
  numberOfBLESources = [(ULFingerprintMetaInfo *)self numberOfBLESources];
  v9 = [numberOfBLESources copyWithZone:zone];
  numberOfUWBSources = [(ULFingerprintMetaInfo *)self numberOfUWBSources];
  v11 = [numberOfUWBSources copyWithZone:zone];
  requestIdentifier = [(ULFingerprintMetaInfo *)self requestIdentifier];
  v13 = [requestIdentifier copyWithZone:zone];
  v14 = [v5 initWithNumWiFiAccessPoints:v7 numBLESources:v9 numUWBSources:v11 requestIdentifier:v13];

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  numberOfWiFiAccessPoints = self->_numberOfWiFiAccessPoints;
  coderCopy = coder;
  [coderCopy encodeObject:numberOfWiFiAccessPoints forKey:@"numberOfWiFiAccessPoints"];
  [coderCopy encodeObject:self->_numberOfBLESources forKey:@"numberOfBLESources"];
  [coderCopy encodeObject:self->_numberOfUWBSources forKey:@"numberOfUWBSources"];
  [coderCopy encodeObject:self->_requestIdentifier forKey:@"requestIdentifier"];
}

- (ULFingerprintMetaInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = ULFingerprintMetaInfo;
  v5 = [(ULFingerprintMetaInfo *)&v20 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"numberOfWiFiAccessPoints"];
    v7 = objc_opt_self();

    numberOfWiFiAccessPoints = v5->_numberOfWiFiAccessPoints;
    v5->_numberOfWiFiAccessPoints = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"numberOfBLESources"];
    v10 = objc_opt_self();

    numberOfBLESources = v5->_numberOfBLESources;
    v5->_numberOfBLESources = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"numberOfUWBSources"];
    v13 = objc_opt_self();

    numberOfUWBSources = v5->_numberOfUWBSources;
    v5->_numberOfUWBSources = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestIdentifier"];
    v16 = objc_opt_self();

    requestIdentifier = v5->_requestIdentifier;
    v5->_requestIdentifier = v16;

    v18 = v5;
  }

  return v5;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: ", v5];

  numberOfWiFiAccessPoints = [(ULFingerprintMetaInfo *)self numberOfWiFiAccessPoints];
  [v6 appendFormat:@", numberOfWiFiAccessPoints: %@", numberOfWiFiAccessPoints];

  numberOfBLESources = [(ULFingerprintMetaInfo *)self numberOfBLESources];
  [v6 appendFormat:@", numberOfBLESources: %@", numberOfBLESources];

  numberOfUWBSources = [(ULFingerprintMetaInfo *)self numberOfUWBSources];
  [v6 appendFormat:@", numberOfUWBSources: %@", numberOfUWBSources];

  requestIdentifier = [(ULFingerprintMetaInfo *)self requestIdentifier];
  [v6 appendFormat:@", requestIdentifier: %@", requestIdentifier];

  [v6 appendString:@">"];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    numberOfWiFiAccessPoints = [(ULFingerprintMetaInfo *)self numberOfWiFiAccessPoints];
    numberOfWiFiAccessPoints2 = [v5 numberOfWiFiAccessPoints];
    if ([numberOfWiFiAccessPoints isEqual:numberOfWiFiAccessPoints2])
    {
    }

    else
    {
      numberOfWiFiAccessPoints3 = [(ULFingerprintMetaInfo *)self numberOfWiFiAccessPoints];
      numberOfWiFiAccessPoints4 = [v5 numberOfWiFiAccessPoints];

      if (numberOfWiFiAccessPoints3 != numberOfWiFiAccessPoints4)
      {
        goto LABEL_12;
      }
    }

    numberOfBLESources = [(ULFingerprintMetaInfo *)self numberOfBLESources];
    numberOfBLESources2 = [v5 numberOfBLESources];
    if ([numberOfBLESources isEqual:numberOfBLESources2])
    {
    }

    else
    {
      numberOfBLESources3 = [(ULFingerprintMetaInfo *)self numberOfBLESources];
      numberOfBLESources4 = [v5 numberOfBLESources];

      if (numberOfBLESources3 != numberOfBLESources4)
      {
        goto LABEL_12;
      }
    }

    numberOfUWBSources = [(ULFingerprintMetaInfo *)self numberOfUWBSources];
    numberOfUWBSources2 = [v5 numberOfUWBSources];
    if ([numberOfUWBSources isEqual:numberOfUWBSources2])
    {

      goto LABEL_15;
    }

    numberOfUWBSources3 = [(ULFingerprintMetaInfo *)self numberOfUWBSources];
    numberOfUWBSources4 = [v5 numberOfUWBSources];

    if (numberOfUWBSources3 == numberOfUWBSources4)
    {
LABEL_15:
      requestIdentifier = [(ULFingerprintMetaInfo *)self requestIdentifier];
      requestIdentifier2 = [v5 requestIdentifier];
      if ([requestIdentifier isEqual:requestIdentifier2])
      {

        v8 = 1;
      }

      else
      {
        requestIdentifier3 = [(ULFingerprintMetaInfo *)self requestIdentifier];
        requestIdentifier4 = [v5 requestIdentifier];
        v8 = requestIdentifier3 == requestIdentifier4;
      }

      goto LABEL_13;
    }

LABEL_12:
    v8 = 0;
LABEL_13:

    goto LABEL_14;
  }

  v8 = 0;
LABEL_14:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSNumber *)self->_numberOfWiFiAccessPoints hash];
  v4 = [(NSNumber *)self->_numberOfBLESources hash]^ v3;
  v5 = [(NSNumber *)self->_numberOfUWBSources hash];
  return v4 ^ v5 ^ [(NSUUID *)self->_requestIdentifier hash];
}

@end