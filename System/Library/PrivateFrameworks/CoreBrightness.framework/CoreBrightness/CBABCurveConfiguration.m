@interface CBABCurveConfiguration
- (void)dealloc;
@end

@implementation CBABCurveConfiguration

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  MEMORY[0x1E69E5920](self->_uuid);
  MEMORY[0x1E69E5920](v5->_vendorID);
  MEMORY[0x1E69E5920](v5->_productID);
  MEMORY[0x1E69E5920](v5->_maxBrightness);
  *&v2 = MEMORY[0x1E69E5920](v5->_minBrightness).n128_u64[0];
  v3.receiver = v5;
  v3.super_class = CBABCurveConfiguration;
  [(CBABCurveConfiguration *)&v3 dealloc];
}

@end