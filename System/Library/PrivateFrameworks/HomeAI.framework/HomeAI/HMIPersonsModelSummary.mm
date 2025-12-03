@interface HMIPersonsModelSummary
- (HMIPersonsModelSummary)initWithSourceUUID:(id)d externalLibrary:(BOOL)library faceCountsByPerson:(id)person;
@end

@implementation HMIPersonsModelSummary

- (HMIPersonsModelSummary)initWithSourceUUID:(id)d externalLibrary:(BOOL)library faceCountsByPerson:(id)person
{
  dCopy = d;
  personCopy = person;
  v14.receiver = self;
  v14.super_class = HMIPersonsModelSummary;
  v11 = [(HMIPersonsModelSummary *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_sourceUUID, d);
    v12->_externalLibrary = library;
    objc_storeStrong(&v12->_faceCountsByPerson, person);
  }

  return v12;
}

@end