@interface HMIPersonsModelPrediction
- (HMIPersonsModelPrediction)initWithSourceUUID:(id)d personUUID:(id)iD confidence:(id)confidence linkedEntityUUID:(id)uID;
@end

@implementation HMIPersonsModelPrediction

- (HMIPersonsModelPrediction)initWithSourceUUID:(id)d personUUID:(id)iD confidence:(id)confidence linkedEntityUUID:(id)uID
{
  dCopy = d;
  iDCopy = iD;
  confidenceCopy = confidence;
  uIDCopy = uID;
  v18.receiver = self;
  v18.super_class = HMIPersonsModelPrediction;
  v15 = [(HMIPersonsModelPrediction *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_sourceUUID, d);
    objc_storeStrong(&v16->_personUUID, iD);
    objc_storeStrong(&v16->_confidence, confidence);
    objc_storeStrong(&v16->_linkedEntityUUID, uID);
  }

  return v16;
}

@end