@interface CBABCurveConfiguration
- (void)dealloc;
@end

@implementation CBABCurveConfiguration

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  MEMORY[0x1E69E5920](self->_uuid);
  MEMORY[0x1E69E5920](selfCopy->_vendorID);
  MEMORY[0x1E69E5920](selfCopy->_productID);
  MEMORY[0x1E69E5920](selfCopy->_maxBrightness);
  *&v2 = MEMORY[0x1E69E5920](selfCopy->_minBrightness).n128_u64[0];
  v3.receiver = selfCopy;
  v3.super_class = CBABCurveConfiguration;
  [(CBABCurveConfiguration *)&v3 dealloc];
}

@end