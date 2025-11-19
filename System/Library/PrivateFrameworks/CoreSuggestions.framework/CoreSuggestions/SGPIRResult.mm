@interface SGPIRResult
- (SGPIRResult)initWithLabel:(id)a3 address:(id)a4 latitude:(id)a5 longitude:(id)a6 timezone:(id)a7;
@end

@implementation SGPIRResult

- (SGPIRResult)initWithLabel:(id)a3 address:(id)a4 latitude:(id)a5 longitude:(id)a6 timezone:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = SGPIRResult;
  v17 = [(SGPIRResult *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_label, a3);
    objc_storeStrong(&v18->_address, a4);
    objc_storeStrong(&v18->_latitude, a5);
    objc_storeStrong(&v18->_longitude, a6);
    objc_storeStrong(&v18->_timezone, a7);
  }

  return v18;
}

@end