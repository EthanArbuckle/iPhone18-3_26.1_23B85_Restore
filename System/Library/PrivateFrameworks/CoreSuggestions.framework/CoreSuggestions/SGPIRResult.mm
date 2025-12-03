@interface SGPIRResult
- (SGPIRResult)initWithLabel:(id)label address:(id)address latitude:(id)latitude longitude:(id)longitude timezone:(id)timezone;
@end

@implementation SGPIRResult

- (SGPIRResult)initWithLabel:(id)label address:(id)address latitude:(id)latitude longitude:(id)longitude timezone:(id)timezone
{
  labelCopy = label;
  addressCopy = address;
  latitudeCopy = latitude;
  longitudeCopy = longitude;
  timezoneCopy = timezone;
  v21.receiver = self;
  v21.super_class = SGPIRResult;
  v17 = [(SGPIRResult *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_label, label);
    objc_storeStrong(&v18->_address, address);
    objc_storeStrong(&v18->_latitude, latitude);
    objc_storeStrong(&v18->_longitude, longitude);
    objc_storeStrong(&v18->_timezone, timezone);
  }

  return v18;
}

@end