@interface ULFingerprintMetaInfo
- (BOOL)isEqual:(id)a3;
- (ULFingerprintMetaInfo)initWithCoder:(id)a3;
- (ULFingerprintMetaInfo)initWithNumWiFiAccessPoints:(id)a3 numBLESources:(id)a4 numUWBSources:(id)a5 requestIdentifier:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ULFingerprintMetaInfo

- (ULFingerprintMetaInfo)initWithNumWiFiAccessPoints:(id)a3 numBLESources:(id)a4 numUWBSources:(id)a5 requestIdentifier:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = ULFingerprintMetaInfo;
  v15 = [(ULFingerprintMetaInfo *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_numberOfWiFiAccessPoints, a3);
    objc_storeStrong(&v16->_numberOfBLESources, a4);
    objc_storeStrong(&v16->_numberOfUWBSources, a5);
    objc_storeStrong(&v16->_requestIdentifier, a6);
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc(objc_opt_class());
  v6 = [(ULFingerprintMetaInfo *)self numberOfWiFiAccessPoints];
  v7 = [v6 copyWithZone:a3];
  v8 = [(ULFingerprintMetaInfo *)self numberOfBLESources];
  v9 = [v8 copyWithZone:a3];
  v10 = [(ULFingerprintMetaInfo *)self numberOfUWBSources];
  v11 = [v10 copyWithZone:a3];
  v12 = [(ULFingerprintMetaInfo *)self requestIdentifier];
  v13 = [v12 copyWithZone:a3];
  v14 = [v5 initWithNumWiFiAccessPoints:v7 numBLESources:v9 numUWBSources:v11 requestIdentifier:v13];

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  numberOfWiFiAccessPoints = self->_numberOfWiFiAccessPoints;
  v5 = a3;
  [v5 encodeObject:numberOfWiFiAccessPoints forKey:@"numberOfWiFiAccessPoints"];
  [v5 encodeObject:self->_numberOfBLESources forKey:@"numberOfBLESources"];
  [v5 encodeObject:self->_numberOfUWBSources forKey:@"numberOfUWBSources"];
  [v5 encodeObject:self->_requestIdentifier forKey:@"requestIdentifier"];
}

- (ULFingerprintMetaInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = ULFingerprintMetaInfo;
  v5 = [(ULFingerprintMetaInfo *)&v20 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"numberOfWiFiAccessPoints"];
    v7 = objc_opt_self();

    numberOfWiFiAccessPoints = v5->_numberOfWiFiAccessPoints;
    v5->_numberOfWiFiAccessPoints = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"numberOfBLESources"];
    v10 = objc_opt_self();

    numberOfBLESources = v5->_numberOfBLESources;
    v5->_numberOfBLESources = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"numberOfUWBSources"];
    v13 = objc_opt_self();

    numberOfUWBSources = v5->_numberOfUWBSources;
    v5->_numberOfUWBSources = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestIdentifier"];
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

  v7 = [(ULFingerprintMetaInfo *)self numberOfWiFiAccessPoints];
  [v6 appendFormat:@", numberOfWiFiAccessPoints: %@", v7];

  v8 = [(ULFingerprintMetaInfo *)self numberOfBLESources];
  [v6 appendFormat:@", numberOfBLESources: %@", v8];

  v9 = [(ULFingerprintMetaInfo *)self numberOfUWBSources];
  [v6 appendFormat:@", numberOfUWBSources: %@", v9];

  v10 = [(ULFingerprintMetaInfo *)self requestIdentifier];
  [v6 appendFormat:@", requestIdentifier: %@", v10];

  [v6 appendString:@">"];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(ULFingerprintMetaInfo *)self numberOfWiFiAccessPoints];
    v7 = [v5 numberOfWiFiAccessPoints];
    if ([v6 isEqual:v7])
    {
    }

    else
    {
      v9 = [(ULFingerprintMetaInfo *)self numberOfWiFiAccessPoints];
      v10 = [v5 numberOfWiFiAccessPoints];

      if (v9 != v10)
      {
        goto LABEL_12;
      }
    }

    v11 = [(ULFingerprintMetaInfo *)self numberOfBLESources];
    v12 = [v5 numberOfBLESources];
    if ([v11 isEqual:v12])
    {
    }

    else
    {
      v13 = [(ULFingerprintMetaInfo *)self numberOfBLESources];
      v14 = [v5 numberOfBLESources];

      if (v13 != v14)
      {
        goto LABEL_12;
      }
    }

    v15 = [(ULFingerprintMetaInfo *)self numberOfUWBSources];
    v16 = [v5 numberOfUWBSources];
    if ([v15 isEqual:v16])
    {

      goto LABEL_15;
    }

    v17 = [(ULFingerprintMetaInfo *)self numberOfUWBSources];
    v18 = [v5 numberOfUWBSources];

    if (v17 == v18)
    {
LABEL_15:
      v20 = [(ULFingerprintMetaInfo *)self requestIdentifier];
      v21 = [v5 requestIdentifier];
      if ([v20 isEqual:v21])
      {

        v8 = 1;
      }

      else
      {
        v22 = [(ULFingerprintMetaInfo *)self requestIdentifier];
        v23 = [v5 requestIdentifier];
        v8 = v22 == v23;
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