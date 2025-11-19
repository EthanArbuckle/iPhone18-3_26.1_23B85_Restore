@interface TestModeMetadata
- (TestModeMetadata)initWithMode:(unint64_t)a3 testSpecificValidationData:(id)a4;
@end

@implementation TestModeMetadata

- (TestModeMetadata)initWithMode:(unint64_t)a3 testSpecificValidationData:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = TestModeMetadata;
  v8 = [(TestModeMetadata *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_mode = a3;
    objc_storeStrong(&v8->_testSpecificValidationData, a4);
  }

  return v9;
}

@end