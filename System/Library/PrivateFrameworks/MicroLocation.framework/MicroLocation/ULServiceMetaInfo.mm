@interface ULServiceMetaInfo
+ (id)emptyServiceMetaInfo;
- (BOOL)isEqual:(id)equal;
- (ULServiceMetaInfo)initWithCoder:(id)coder;
- (ULServiceMetaInfo)initWithNumClustersLearnedInModel:(id)model numRecordingTriggersAtCurrentLOI:(id)i numInputValidFingerprints:(id)fingerprints numInputValidFingerprintsLabeled:(id)labeled numInputValidFingerprintsUnlabeled:(id)unlabeled numFingerprintsBeforePruning:(id)pruning numFingerprintsAfterPruning:(id)afterPruning numWiFiAccessPoints:(id)self0 numBLESources:(id)self1 numUWBSources:(id)self2;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ULServiceMetaInfo

+ (id)emptyServiceMetaInfo
{
  v2 = [[self alloc] initWithNumClustersLearnedInModel:&unk_286A52858 numRecordingTriggersAtCurrentLOI:&unk_286A52858 numInputValidFingerprints:&unk_286A52858 numInputValidFingerprintsLabeled:&unk_286A52858 numInputValidFingerprintsUnlabeled:&unk_286A52858 numFingerprintsBeforePruning:&unk_286A52858 numFingerprintsAfterPruning:&unk_286A52858 numWiFiAccessPoints:&unk_286A52858 numBLESources:&unk_286A52858 numUWBSources:&unk_286A52858];

  return v2;
}

- (ULServiceMetaInfo)initWithNumClustersLearnedInModel:(id)model numRecordingTriggersAtCurrentLOI:(id)i numInputValidFingerprints:(id)fingerprints numInputValidFingerprintsLabeled:(id)labeled numInputValidFingerprintsUnlabeled:(id)unlabeled numFingerprintsBeforePruning:(id)pruning numFingerprintsAfterPruning:(id)afterPruning numWiFiAccessPoints:(id)self0 numBLESources:(id)self1 numUWBSources:(id)self2
{
  modelCopy = model;
  iCopy = i;
  fingerprintsCopy = fingerprints;
  labeledCopy = labeled;
  unlabeledCopy = unlabeled;
  pruningCopy = pruning;
  afterPruningCopy = afterPruning;
  pointsCopy = points;
  sourcesCopy = sources;
  bSourcesCopy = bSources;
  v31.receiver = self;
  v31.super_class = ULServiceMetaInfo;
  v26 = [(ULServiceMetaInfo *)&v31 init];
  v27 = v26;
  if (v26)
  {
    [(ULServiceMetaInfo *)v26 setNumberOfClustersLearnedInModel:modelCopy];
    [(ULServiceMetaInfo *)v27 setNumberOfRecordingTriggersAtCurrentLocationOfInterest:iCopy];
    [(ULServiceMetaInfo *)v27 setNumberOfInputValidFingerprints:fingerprintsCopy];
    [(ULServiceMetaInfo *)v27 setNumberOfInputValidFingerprintsLabeled:labeledCopy];
    [(ULServiceMetaInfo *)v27 setNumberOfInputValidFingerprintsUnLabeled:unlabeledCopy];
    [(ULServiceMetaInfo *)v27 setNumberOfFingerprintsBeforePruning:pruningCopy];
    [(ULServiceMetaInfo *)v27 setNumberOfFingerprintsAfterPruning:afterPruningCopy];
    [(ULServiceMetaInfo *)v27 setNumberOfWiFiAccessPoints:pointsCopy];
    [(ULServiceMetaInfo *)v27 setNumberOfBLESources:sourcesCopy];
    [(ULServiceMetaInfo *)v27 setNumberOfUWBSources:bSourcesCopy];
  }

  return v27;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc(objc_opt_class());
  v6 = [(NSNumber *)self->_numberOfClustersLearnedInModel copyWithZone:zone];
  v7 = [(NSNumber *)self->_numberOfRecordingTriggersAtCurrentLocationOfInterest copyWithZone:zone];
  v17 = [(NSNumber *)self->_numberOfInputValidFingerprints copyWithZone:zone];
  v16 = [(NSNumber *)self->_numberOfInputValidFingerprintsLabeled copyWithZone:zone];
  v8 = [(NSNumber *)self->_numberOfInputValidFingerprintsUnLabeled copyWithZone:zone];
  v9 = [(NSNumber *)self->_numberOfFingerprintsBeforePruning copyWithZone:zone];
  v10 = [(NSNumber *)self->_numberOfFingerprintsAfterPruning copyWithZone:zone];
  v11 = [(NSNumber *)self->_numberOfWiFiAccessPoints copyWithZone:zone];
  v12 = [(NSNumber *)self->_numberOfBLESources copyWithZone:zone];
  v13 = [(NSNumber *)self->_numberOfUWBSources copyWithZone:zone];
  v15 = [v5 initWithNumClustersLearnedInModel:v6 numRecordingTriggersAtCurrentLOI:v7 numInputValidFingerprints:v17 numInputValidFingerprintsLabeled:v16 numInputValidFingerprintsUnlabeled:v8 numFingerprintsBeforePruning:v9 numFingerprintsAfterPruning:v10 numWiFiAccessPoints:v11 numBLESources:v12 numUWBSources:v13];

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  numberOfClustersLearnedInModel = self->_numberOfClustersLearnedInModel;
  coderCopy = coder;
  [coderCopy encodeObject:numberOfClustersLearnedInModel forKey:@"numberOfClustersLearnedInModel"];
  [coderCopy encodeObject:self->_numberOfRecordingTriggersAtCurrentLocationOfInterest forKey:@"numberOfRecordingTriggersAtCurrentLocationOfInterest"];
  [coderCopy encodeObject:self->_numberOfInputValidFingerprints forKey:@"numberOfInputValidFingerprints"];
  [coderCopy encodeObject:self->_numberOfInputValidFingerprintsLabeled forKey:@"numberOfInputValidFingerprintsLabeled"];
  [coderCopy encodeObject:self->_numberOfInputValidFingerprintsUnLabeled forKey:@"numberOfInputValidFingerprintsUnLabeled"];
  [coderCopy encodeObject:self->_numberOfFingerprintsBeforePruning forKey:@"numberOfFingerprintsBeforePruning"];
  [coderCopy encodeObject:self->_numberOfFingerprintsAfterPruning forKey:@"numberOfFingerprintsAfterPruning"];
  [coderCopy encodeObject:self->_numberOfWiFiAccessPoints forKey:@"numberOfWiFiAccessPoints"];
  [coderCopy encodeObject:self->_numberOfBLESources forKey:@"numberOfBLESources"];
  [coderCopy encodeObject:self->_numberOfUWBSources forKey:@"numberOfUWBSources"];
}

- (ULServiceMetaInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v38.receiver = self;
  v38.super_class = ULServiceMetaInfo;
  v5 = [(ULServiceMetaInfo *)&v38 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"numberOfClustersLearnedInModel"];
    v7 = objc_opt_self();

    numberOfClustersLearnedInModel = v5->_numberOfClustersLearnedInModel;
    v5->_numberOfClustersLearnedInModel = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"numberOfRecordingTriggersAtCurrentLocationOfInterest"];
    v10 = objc_opt_self();

    numberOfRecordingTriggersAtCurrentLocationOfInterest = v5->_numberOfRecordingTriggersAtCurrentLocationOfInterest;
    v5->_numberOfRecordingTriggersAtCurrentLocationOfInterest = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"numberOfInputValidFingerprints"];
    v13 = objc_opt_self();

    numberOfInputValidFingerprints = v5->_numberOfInputValidFingerprints;
    v5->_numberOfInputValidFingerprints = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"numberOfInputValidFingerprintsLabeled"];
    v16 = objc_opt_self();

    numberOfInputValidFingerprintsLabeled = v5->_numberOfInputValidFingerprintsLabeled;
    v5->_numberOfInputValidFingerprintsLabeled = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"numberOfInputValidFingerprintsUnLabeled"];
    v19 = objc_opt_self();

    numberOfInputValidFingerprintsUnLabeled = v5->_numberOfInputValidFingerprintsUnLabeled;
    v5->_numberOfInputValidFingerprintsUnLabeled = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"numberOfFingerprintsBeforePruning"];
    v22 = objc_opt_self();

    numberOfFingerprintsBeforePruning = v5->_numberOfFingerprintsBeforePruning;
    v5->_numberOfFingerprintsBeforePruning = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"numberOfFingerprintsAfterPruning"];
    v25 = objc_opt_self();

    numberOfFingerprintsAfterPruning = v5->_numberOfFingerprintsAfterPruning;
    v5->_numberOfFingerprintsAfterPruning = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"numberOfWiFiAccessPoints"];
    v28 = objc_opt_self();

    numberOfWiFiAccessPoints = v5->_numberOfWiFiAccessPoints;
    v5->_numberOfWiFiAccessPoints = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"numberOfBLESources"];
    v31 = objc_opt_self();

    numberOfBLESources = v5->_numberOfBLESources;
    v5->_numberOfBLESources = v31;

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"numberOfUWBSources"];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    numberOfClustersLearnedInModel = [(ULServiceMetaInfo *)self numberOfClustersLearnedInModel];
    numberOfClustersLearnedInModel2 = [v5 numberOfClustersLearnedInModel];
    if ([numberOfClustersLearnedInModel isEqual:numberOfClustersLearnedInModel2])
    {
    }

    else
    {
      numberOfClustersLearnedInModel3 = [(ULServiceMetaInfo *)self numberOfClustersLearnedInModel];
      numberOfClustersLearnedInModel4 = [v5 numberOfClustersLearnedInModel];

      if (numberOfClustersLearnedInModel3 != numberOfClustersLearnedInModel4)
      {
        goto LABEL_30;
      }
    }

    numberOfRecordingTriggersAtCurrentLocationOfInterest = [(ULServiceMetaInfo *)self numberOfRecordingTriggersAtCurrentLocationOfInterest];
    numberOfRecordingTriggersAtCurrentLocationOfInterest2 = [v5 numberOfRecordingTriggersAtCurrentLocationOfInterest];
    if ([numberOfRecordingTriggersAtCurrentLocationOfInterest isEqual:numberOfRecordingTriggersAtCurrentLocationOfInterest2])
    {
    }

    else
    {
      numberOfRecordingTriggersAtCurrentLocationOfInterest3 = [(ULServiceMetaInfo *)self numberOfRecordingTriggersAtCurrentLocationOfInterest];
      numberOfRecordingTriggersAtCurrentLocationOfInterest4 = [v5 numberOfRecordingTriggersAtCurrentLocationOfInterest];

      if (numberOfRecordingTriggersAtCurrentLocationOfInterest3 != numberOfRecordingTriggersAtCurrentLocationOfInterest4)
      {
        goto LABEL_30;
      }
    }

    numberOfInputValidFingerprints = [(ULServiceMetaInfo *)self numberOfInputValidFingerprints];
    numberOfInputValidFingerprints2 = [v5 numberOfInputValidFingerprints];
    if ([numberOfInputValidFingerprints isEqual:numberOfInputValidFingerprints2])
    {
    }

    else
    {
      numberOfInputValidFingerprints3 = [(ULServiceMetaInfo *)self numberOfInputValidFingerprints];
      numberOfInputValidFingerprints4 = [v5 numberOfInputValidFingerprints];

      if (numberOfInputValidFingerprints3 != numberOfInputValidFingerprints4)
      {
        goto LABEL_30;
      }
    }

    numberOfInputValidFingerprintsLabeled = [(ULServiceMetaInfo *)self numberOfInputValidFingerprintsLabeled];
    numberOfInputValidFingerprintsLabeled2 = [v5 numberOfInputValidFingerprintsLabeled];
    if ([numberOfInputValidFingerprintsLabeled isEqual:numberOfInputValidFingerprintsLabeled2])
    {
    }

    else
    {
      numberOfInputValidFingerprintsLabeled3 = [(ULServiceMetaInfo *)self numberOfInputValidFingerprintsLabeled];
      numberOfInputValidFingerprintsLabeled4 = [v5 numberOfInputValidFingerprintsLabeled];

      if (numberOfInputValidFingerprintsLabeled3 != numberOfInputValidFingerprintsLabeled4)
      {
        goto LABEL_30;
      }
    }

    numberOfInputValidFingerprintsUnLabeled = [(ULServiceMetaInfo *)self numberOfInputValidFingerprintsUnLabeled];
    numberOfInputValidFingerprintsUnLabeled2 = [v5 numberOfInputValidFingerprintsUnLabeled];
    if ([numberOfInputValidFingerprintsUnLabeled isEqual:numberOfInputValidFingerprintsUnLabeled2])
    {
    }

    else
    {
      numberOfInputValidFingerprintsUnLabeled3 = [(ULServiceMetaInfo *)self numberOfInputValidFingerprintsUnLabeled];
      numberOfInputValidFingerprintsUnLabeled4 = [v5 numberOfInputValidFingerprintsUnLabeled];

      if (numberOfInputValidFingerprintsUnLabeled3 != numberOfInputValidFingerprintsUnLabeled4)
      {
        goto LABEL_30;
      }
    }

    numberOfFingerprintsBeforePruning = [(ULServiceMetaInfo *)self numberOfFingerprintsBeforePruning];
    numberOfFingerprintsBeforePruning2 = [v5 numberOfFingerprintsBeforePruning];
    if ([numberOfFingerprintsBeforePruning isEqual:numberOfFingerprintsBeforePruning2])
    {
    }

    else
    {
      numberOfFingerprintsBeforePruning3 = [(ULServiceMetaInfo *)self numberOfFingerprintsBeforePruning];
      numberOfFingerprintsBeforePruning4 = [v5 numberOfFingerprintsBeforePruning];

      if (numberOfFingerprintsBeforePruning3 != numberOfFingerprintsBeforePruning4)
      {
        goto LABEL_30;
      }
    }

    numberOfFingerprintsAfterPruning = [(ULServiceMetaInfo *)self numberOfFingerprintsAfterPruning];
    numberOfFingerprintsAfterPruning2 = [v5 numberOfFingerprintsAfterPruning];
    if ([numberOfFingerprintsAfterPruning isEqual:numberOfFingerprintsAfterPruning2])
    {
    }

    else
    {
      numberOfFingerprintsAfterPruning3 = [(ULServiceMetaInfo *)self numberOfFingerprintsAfterPruning];
      numberOfFingerprintsAfterPruning4 = [v5 numberOfFingerprintsAfterPruning];

      if (numberOfFingerprintsAfterPruning3 != numberOfFingerprintsAfterPruning4)
      {
        goto LABEL_30;
      }
    }

    numberOfWiFiAccessPoints = [(ULServiceMetaInfo *)self numberOfWiFiAccessPoints];
    numberOfWiFiAccessPoints2 = [v5 numberOfWiFiAccessPoints];
    if ([numberOfWiFiAccessPoints isEqual:numberOfWiFiAccessPoints2])
    {
    }

    else
    {
      numberOfWiFiAccessPoints3 = [(ULServiceMetaInfo *)self numberOfWiFiAccessPoints];
      numberOfWiFiAccessPoints4 = [v5 numberOfWiFiAccessPoints];

      if (numberOfWiFiAccessPoints3 != numberOfWiFiAccessPoints4)
      {
        goto LABEL_30;
      }
    }

    numberOfBLESources = [(ULServiceMetaInfo *)self numberOfBLESources];
    numberOfBLESources2 = [v5 numberOfBLESources];
    if ([numberOfBLESources isEqual:numberOfBLESources2])
    {

      goto LABEL_33;
    }

    numberOfBLESources3 = [(ULServiceMetaInfo *)self numberOfBLESources];
    numberOfBLESources4 = [v5 numberOfBLESources];

    if (numberOfBLESources3 == numberOfBLESources4)
    {
LABEL_33:
      numberOfUWBSources = [(ULServiceMetaInfo *)self numberOfUWBSources];
      numberOfUWBSources2 = [v5 numberOfUWBSources];
      if ([numberOfUWBSources isEqual:numberOfUWBSources2])
      {

        v8 = 1;
      }

      else
      {
        numberOfUWBSources3 = [(ULServiceMetaInfo *)self numberOfUWBSources];
        numberOfUWBSources4 = [v5 numberOfUWBSources];
        v8 = numberOfUWBSources3 == numberOfUWBSources4;
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