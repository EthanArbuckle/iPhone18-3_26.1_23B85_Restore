@interface ULServiceMetaInfo
+ (id)emptyServiceMetaInfo;
- (BOOL)isEqual:(id)a3;
- (ULServiceMetaInfo)initWithCoder:(id)a3;
- (ULServiceMetaInfo)initWithNumClustersLearnedInModel:(id)a3 numRecordingTriggersAtCurrentLOI:(id)a4 numInputValidFingerprints:(id)a5 numInputValidFingerprintsLabeled:(id)a6 numInputValidFingerprintsUnlabeled:(id)a7 numFingerprintsBeforePruning:(id)a8 numFingerprintsAfterPruning:(id)a9 numWiFiAccessPoints:(id)a10 numBLESources:(id)a11 numUWBSources:(id)a12;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ULServiceMetaInfo

+ (id)emptyServiceMetaInfo
{
  v2 = [[a1 alloc] initWithNumClustersLearnedInModel:&unk_286A52858 numRecordingTriggersAtCurrentLOI:&unk_286A52858 numInputValidFingerprints:&unk_286A52858 numInputValidFingerprintsLabeled:&unk_286A52858 numInputValidFingerprintsUnlabeled:&unk_286A52858 numFingerprintsBeforePruning:&unk_286A52858 numFingerprintsAfterPruning:&unk_286A52858 numWiFiAccessPoints:&unk_286A52858 numBLESources:&unk_286A52858 numUWBSources:&unk_286A52858];

  return v2;
}

- (ULServiceMetaInfo)initWithNumClustersLearnedInModel:(id)a3 numRecordingTriggersAtCurrentLOI:(id)a4 numInputValidFingerprints:(id)a5 numInputValidFingerprintsLabeled:(id)a6 numInputValidFingerprintsUnlabeled:(id)a7 numFingerprintsBeforePruning:(id)a8 numFingerprintsAfterPruning:(id)a9 numWiFiAccessPoints:(id)a10 numBLESources:(id)a11 numUWBSources:(id)a12
{
  v17 = a3;
  v30 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = a11;
  v25 = a12;
  v31.receiver = self;
  v31.super_class = ULServiceMetaInfo;
  v26 = [(ULServiceMetaInfo *)&v31 init];
  v27 = v26;
  if (v26)
  {
    [(ULServiceMetaInfo *)v26 setNumberOfClustersLearnedInModel:v17];
    [(ULServiceMetaInfo *)v27 setNumberOfRecordingTriggersAtCurrentLocationOfInterest:v30];
    [(ULServiceMetaInfo *)v27 setNumberOfInputValidFingerprints:v18];
    [(ULServiceMetaInfo *)v27 setNumberOfInputValidFingerprintsLabeled:v19];
    [(ULServiceMetaInfo *)v27 setNumberOfInputValidFingerprintsUnLabeled:v20];
    [(ULServiceMetaInfo *)v27 setNumberOfFingerprintsBeforePruning:v21];
    [(ULServiceMetaInfo *)v27 setNumberOfFingerprintsAfterPruning:v22];
    [(ULServiceMetaInfo *)v27 setNumberOfWiFiAccessPoints:v23];
    [(ULServiceMetaInfo *)v27 setNumberOfBLESources:v24];
    [(ULServiceMetaInfo *)v27 setNumberOfUWBSources:v25];
  }

  return v27;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc(objc_opt_class());
  v6 = [(NSNumber *)self->_numberOfClustersLearnedInModel copyWithZone:a3];
  v7 = [(NSNumber *)self->_numberOfRecordingTriggersAtCurrentLocationOfInterest copyWithZone:a3];
  v17 = [(NSNumber *)self->_numberOfInputValidFingerprints copyWithZone:a3];
  v16 = [(NSNumber *)self->_numberOfInputValidFingerprintsLabeled copyWithZone:a3];
  v8 = [(NSNumber *)self->_numberOfInputValidFingerprintsUnLabeled copyWithZone:a3];
  v9 = [(NSNumber *)self->_numberOfFingerprintsBeforePruning copyWithZone:a3];
  v10 = [(NSNumber *)self->_numberOfFingerprintsAfterPruning copyWithZone:a3];
  v11 = [(NSNumber *)self->_numberOfWiFiAccessPoints copyWithZone:a3];
  v12 = [(NSNumber *)self->_numberOfBLESources copyWithZone:a3];
  v13 = [(NSNumber *)self->_numberOfUWBSources copyWithZone:a3];
  v15 = [v5 initWithNumClustersLearnedInModel:v6 numRecordingTriggersAtCurrentLOI:v7 numInputValidFingerprints:v17 numInputValidFingerprintsLabeled:v16 numInputValidFingerprintsUnlabeled:v8 numFingerprintsBeforePruning:v9 numFingerprintsAfterPruning:v10 numWiFiAccessPoints:v11 numBLESources:v12 numUWBSources:v13];

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  numberOfClustersLearnedInModel = self->_numberOfClustersLearnedInModel;
  v5 = a3;
  [v5 encodeObject:numberOfClustersLearnedInModel forKey:@"numberOfClustersLearnedInModel"];
  [v5 encodeObject:self->_numberOfRecordingTriggersAtCurrentLocationOfInterest forKey:@"numberOfRecordingTriggersAtCurrentLocationOfInterest"];
  [v5 encodeObject:self->_numberOfInputValidFingerprints forKey:@"numberOfInputValidFingerprints"];
  [v5 encodeObject:self->_numberOfInputValidFingerprintsLabeled forKey:@"numberOfInputValidFingerprintsLabeled"];
  [v5 encodeObject:self->_numberOfInputValidFingerprintsUnLabeled forKey:@"numberOfInputValidFingerprintsUnLabeled"];
  [v5 encodeObject:self->_numberOfFingerprintsBeforePruning forKey:@"numberOfFingerprintsBeforePruning"];
  [v5 encodeObject:self->_numberOfFingerprintsAfterPruning forKey:@"numberOfFingerprintsAfterPruning"];
  [v5 encodeObject:self->_numberOfWiFiAccessPoints forKey:@"numberOfWiFiAccessPoints"];
  [v5 encodeObject:self->_numberOfBLESources forKey:@"numberOfBLESources"];
  [v5 encodeObject:self->_numberOfUWBSources forKey:@"numberOfUWBSources"];
}

- (ULServiceMetaInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v38.receiver = self;
  v38.super_class = ULServiceMetaInfo;
  v5 = [(ULServiceMetaInfo *)&v38 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"numberOfClustersLearnedInModel"];
    v7 = objc_opt_self();

    numberOfClustersLearnedInModel = v5->_numberOfClustersLearnedInModel;
    v5->_numberOfClustersLearnedInModel = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"numberOfRecordingTriggersAtCurrentLocationOfInterest"];
    v10 = objc_opt_self();

    numberOfRecordingTriggersAtCurrentLocationOfInterest = v5->_numberOfRecordingTriggersAtCurrentLocationOfInterest;
    v5->_numberOfRecordingTriggersAtCurrentLocationOfInterest = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"numberOfInputValidFingerprints"];
    v13 = objc_opt_self();

    numberOfInputValidFingerprints = v5->_numberOfInputValidFingerprints;
    v5->_numberOfInputValidFingerprints = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"numberOfInputValidFingerprintsLabeled"];
    v16 = objc_opt_self();

    numberOfInputValidFingerprintsLabeled = v5->_numberOfInputValidFingerprintsLabeled;
    v5->_numberOfInputValidFingerprintsLabeled = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"numberOfInputValidFingerprintsUnLabeled"];
    v19 = objc_opt_self();

    numberOfInputValidFingerprintsUnLabeled = v5->_numberOfInputValidFingerprintsUnLabeled;
    v5->_numberOfInputValidFingerprintsUnLabeled = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"numberOfFingerprintsBeforePruning"];
    v22 = objc_opt_self();

    numberOfFingerprintsBeforePruning = v5->_numberOfFingerprintsBeforePruning;
    v5->_numberOfFingerprintsBeforePruning = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"numberOfFingerprintsAfterPruning"];
    v25 = objc_opt_self();

    numberOfFingerprintsAfterPruning = v5->_numberOfFingerprintsAfterPruning;
    v5->_numberOfFingerprintsAfterPruning = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"numberOfWiFiAccessPoints"];
    v28 = objc_opt_self();

    numberOfWiFiAccessPoints = v5->_numberOfWiFiAccessPoints;
    v5->_numberOfWiFiAccessPoints = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"numberOfBLESources"];
    v31 = objc_opt_self();

    numberOfBLESources = v5->_numberOfBLESources;
    v5->_numberOfBLESources = v31;

    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"numberOfUWBSources"];
    v34 = objc_opt_self();

    numberOfUWBSources = v5->_numberOfUWBSources;
    v5->_numberOfUWBSources = v34;

    v36 = v5;
  }

  return v5;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: ", v5];

  [v6 appendFormat:@", numberOfClustersLearnedInModel: %@", self->_numberOfClustersLearnedInModel];
  [v6 appendFormat:@", numberOfRecordingTriggersAtCurrentLocationOfInterest: %@", self->_numberOfRecordingTriggersAtCurrentLocationOfInterest];
  [v6 appendFormat:@", numberOfInputValidFingerprints: %@", self->_numberOfInputValidFingerprints];
  [v6 appendFormat:@", numberOfInputValidFingerprintsLabeled: %@", self->_numberOfInputValidFingerprintsLabeled];
  [v6 appendFormat:@", numberOfInputValidFingerprintsUnLabeled: %@", self->_numberOfInputValidFingerprintsUnLabeled];
  [v6 appendFormat:@", numberOfFingerprintsBeforePruning: %@", self->_numberOfFingerprintsBeforePruning];
  [v6 appendFormat:@", numberOfFingerprintsAfterPruning: %@", self->_numberOfFingerprintsAfterPruning];
  [v6 appendFormat:@", numberOfWiFiAccessPoints: %@", self->_numberOfWiFiAccessPoints];
  [v6 appendFormat:@", numberOfBLESources: %@", self->_numberOfBLESources];
  [v6 appendFormat:@", numberOfUWBSources: %@", self->_numberOfUWBSources];
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
    v6 = [(ULServiceMetaInfo *)self numberOfClustersLearnedInModel];
    v7 = [v5 numberOfClustersLearnedInModel];
    if ([v6 isEqual:v7])
    {
    }

    else
    {
      v9 = [(ULServiceMetaInfo *)self numberOfClustersLearnedInModel];
      v10 = [v5 numberOfClustersLearnedInModel];

      if (v9 != v10)
      {
        goto LABEL_30;
      }
    }

    v11 = [(ULServiceMetaInfo *)self numberOfRecordingTriggersAtCurrentLocationOfInterest];
    v12 = [v5 numberOfRecordingTriggersAtCurrentLocationOfInterest];
    if ([v11 isEqual:v12])
    {
    }

    else
    {
      v13 = [(ULServiceMetaInfo *)self numberOfRecordingTriggersAtCurrentLocationOfInterest];
      v14 = [v5 numberOfRecordingTriggersAtCurrentLocationOfInterest];

      if (v13 != v14)
      {
        goto LABEL_30;
      }
    }

    v15 = [(ULServiceMetaInfo *)self numberOfInputValidFingerprints];
    v16 = [v5 numberOfInputValidFingerprints];
    if ([v15 isEqual:v16])
    {
    }

    else
    {
      v17 = [(ULServiceMetaInfo *)self numberOfInputValidFingerprints];
      v18 = [v5 numberOfInputValidFingerprints];

      if (v17 != v18)
      {
        goto LABEL_30;
      }
    }

    v19 = [(ULServiceMetaInfo *)self numberOfInputValidFingerprintsLabeled];
    v20 = [v5 numberOfInputValidFingerprintsLabeled];
    if ([v19 isEqual:v20])
    {
    }

    else
    {
      v21 = [(ULServiceMetaInfo *)self numberOfInputValidFingerprintsLabeled];
      v22 = [v5 numberOfInputValidFingerprintsLabeled];

      if (v21 != v22)
      {
        goto LABEL_30;
      }
    }

    v23 = [(ULServiceMetaInfo *)self numberOfInputValidFingerprintsUnLabeled];
    v24 = [v5 numberOfInputValidFingerprintsUnLabeled];
    if ([v23 isEqual:v24])
    {
    }

    else
    {
      v25 = [(ULServiceMetaInfo *)self numberOfInputValidFingerprintsUnLabeled];
      v26 = [v5 numberOfInputValidFingerprintsUnLabeled];

      if (v25 != v26)
      {
        goto LABEL_30;
      }
    }

    v27 = [(ULServiceMetaInfo *)self numberOfFingerprintsBeforePruning];
    v28 = [v5 numberOfFingerprintsBeforePruning];
    if ([v27 isEqual:v28])
    {
    }

    else
    {
      v29 = [(ULServiceMetaInfo *)self numberOfFingerprintsBeforePruning];
      v30 = [v5 numberOfFingerprintsBeforePruning];

      if (v29 != v30)
      {
        goto LABEL_30;
      }
    }

    v31 = [(ULServiceMetaInfo *)self numberOfFingerprintsAfterPruning];
    v32 = [v5 numberOfFingerprintsAfterPruning];
    if ([v31 isEqual:v32])
    {
    }

    else
    {
      v33 = [(ULServiceMetaInfo *)self numberOfFingerprintsAfterPruning];
      v34 = [v5 numberOfFingerprintsAfterPruning];

      if (v33 != v34)
      {
        goto LABEL_30;
      }
    }

    v35 = [(ULServiceMetaInfo *)self numberOfWiFiAccessPoints];
    v36 = [v5 numberOfWiFiAccessPoints];
    if ([v35 isEqual:v36])
    {
    }

    else
    {
      v37 = [(ULServiceMetaInfo *)self numberOfWiFiAccessPoints];
      v38 = [v5 numberOfWiFiAccessPoints];

      if (v37 != v38)
      {
        goto LABEL_30;
      }
    }

    v39 = [(ULServiceMetaInfo *)self numberOfBLESources];
    v40 = [v5 numberOfBLESources];
    if ([v39 isEqual:v40])
    {

      goto LABEL_33;
    }

    v41 = [(ULServiceMetaInfo *)self numberOfBLESources];
    v42 = [v5 numberOfBLESources];

    if (v41 == v42)
    {
LABEL_33:
      v44 = [(ULServiceMetaInfo *)self numberOfUWBSources];
      v45 = [v5 numberOfUWBSources];
      if ([v44 isEqual:v45])
      {

        v8 = 1;
      }

      else
      {
        v46 = [(ULServiceMetaInfo *)self numberOfUWBSources];
        v47 = [v5 numberOfUWBSources];
        v8 = v46 == v47;
      }

      goto LABEL_31;
    }

LABEL_30:
    v8 = 0;
LABEL_31:

    goto LABEL_32;
  }

  v8 = 0;
LABEL_32:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSNumber *)self->_numberOfClustersLearnedInModel hash];
  v4 = [(NSNumber *)self->_numberOfRecordingTriggersAtCurrentLocationOfInterest hash]^ v3;
  v5 = [(NSNumber *)self->_numberOfInputValidFingerprints hash];
  v6 = v4 ^ v5 ^ [(NSNumber *)self->_numberOfInputValidFingerprintsLabeled hash];
  v7 = [(NSNumber *)self->_numberOfInputValidFingerprintsUnLabeled hash];
  v8 = v7 ^ [(NSNumber *)self->_numberOfFingerprintsBeforePruning hash];
  v9 = v6 ^ v8 ^ [(NSNumber *)self->_numberOfFingerprintsAfterPruning hash];
  v10 = [(NSNumber *)self->_numberOfWiFiAccessPoints hash];
  v11 = v10 ^ [(NSNumber *)self->_numberOfBLESources hash];
  return v9 ^ v11 ^ [(NSNumber *)self->_numberOfUWBSources hash];
}

@end