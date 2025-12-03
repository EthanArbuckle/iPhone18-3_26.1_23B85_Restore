@interface TestModeMetadata
- (TestModeMetadata)initWithMode:(unint64_t)mode testSpecificValidationData:(id)data;
@end

@implementation TestModeMetadata

- (TestModeMetadata)initWithMode:(unint64_t)mode testSpecificValidationData:(id)data
{
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = TestModeMetadata;
  v8 = [(TestModeMetadata *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_mode = mode;
    objc_storeStrong(&v8->_testSpecificValidationData, data);
  }

  return v9;
}

@end