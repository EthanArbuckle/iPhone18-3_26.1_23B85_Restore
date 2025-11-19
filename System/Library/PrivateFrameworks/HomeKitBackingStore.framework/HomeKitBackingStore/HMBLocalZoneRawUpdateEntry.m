@interface HMBLocalZoneRawUpdateEntry
- (HMBLocalZoneRawUpdateEntry)initWithModel:(id)a3 encoded:(id)a4;
@end

@implementation HMBLocalZoneRawUpdateEntry

- (HMBLocalZoneRawUpdateEntry)initWithModel:(id)a3 encoded:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMBLocalZoneRawUpdateEntry;
  v9 = [(HMBLocalZoneRawUpdateEntry *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_model, a3);
    objc_storeStrong(&v10->_encoded, a4);
  }

  return v10;
}

@end