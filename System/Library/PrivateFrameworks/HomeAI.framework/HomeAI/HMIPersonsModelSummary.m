@interface HMIPersonsModelSummary
- (HMIPersonsModelSummary)initWithSourceUUID:(id)a3 externalLibrary:(BOOL)a4 faceCountsByPerson:(id)a5;
@end

@implementation HMIPersonsModelSummary

- (HMIPersonsModelSummary)initWithSourceUUID:(id)a3 externalLibrary:(BOOL)a4 faceCountsByPerson:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = HMIPersonsModelSummary;
  v11 = [(HMIPersonsModelSummary *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_sourceUUID, a3);
    v12->_externalLibrary = a4;
    objc_storeStrong(&v12->_faceCountsByPerson, a5);
  }

  return v12;
}

@end