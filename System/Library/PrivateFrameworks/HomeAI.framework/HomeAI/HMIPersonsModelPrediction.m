@interface HMIPersonsModelPrediction
- (HMIPersonsModelPrediction)initWithSourceUUID:(id)a3 personUUID:(id)a4 confidence:(id)a5 linkedEntityUUID:(id)a6;
@end

@implementation HMIPersonsModelPrediction

- (HMIPersonsModelPrediction)initWithSourceUUID:(id)a3 personUUID:(id)a4 confidence:(id)a5 linkedEntityUUID:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = HMIPersonsModelPrediction;
  v15 = [(HMIPersonsModelPrediction *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_sourceUUID, a3);
    objc_storeStrong(&v16->_personUUID, a4);
    objc_storeStrong(&v16->_confidence, a5);
    objc_storeStrong(&v16->_linkedEntityUUID, a6);
  }

  return v16;
}

@end