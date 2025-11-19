@interface HFDemoModeFaceRecognitionRecentsData
- (HFDemoModeFaceRecognitionRecentsData)initWithPerson:(id)a3 faceCrop:(id)a4;
@end

@implementation HFDemoModeFaceRecognitionRecentsData

- (HFDemoModeFaceRecognitionRecentsData)initWithPerson:(id)a3 faceCrop:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = HFDemoModeFaceRecognitionRecentsData;
  v9 = [(HFDemoModeFaceRecognitionRecentsData *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_person, a3);
    objc_storeStrong(&v10->_faceCrop, a4);
    v11 = [MEMORY[0x277CCAD78] UUID];
    uuid = v10->_uuid;
    v10->_uuid = v11;
  }

  return v10;
}

@end