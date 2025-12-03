@interface HFDemoModeFaceRecognitionRecentsData
- (HFDemoModeFaceRecognitionRecentsData)initWithPerson:(id)person faceCrop:(id)crop;
@end

@implementation HFDemoModeFaceRecognitionRecentsData

- (HFDemoModeFaceRecognitionRecentsData)initWithPerson:(id)person faceCrop:(id)crop
{
  personCopy = person;
  cropCopy = crop;
  v14.receiver = self;
  v14.super_class = HFDemoModeFaceRecognitionRecentsData;
  v9 = [(HFDemoModeFaceRecognitionRecentsData *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_person, person);
    objc_storeStrong(&v10->_faceCrop, crop);
    uUID = [MEMORY[0x277CCAD78] UUID];
    uuid = v10->_uuid;
    v10->_uuid = uUID;
  }

  return v10;
}

@end