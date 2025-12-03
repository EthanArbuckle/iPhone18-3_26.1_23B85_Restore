@interface HMBLocalZoneRawUpdateEntry
- (HMBLocalZoneRawUpdateEntry)initWithModel:(id)model encoded:(id)encoded;
@end

@implementation HMBLocalZoneRawUpdateEntry

- (HMBLocalZoneRawUpdateEntry)initWithModel:(id)model encoded:(id)encoded
{
  modelCopy = model;
  encodedCopy = encoded;
  v12.receiver = self;
  v12.super_class = HMBLocalZoneRawUpdateEntry;
  v9 = [(HMBLocalZoneRawUpdateEntry *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_model, model);
    objc_storeStrong(&v10->_encoded, encoded);
  }

  return v10;
}

@end