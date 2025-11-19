@interface objcPanicPatternInfo
- (objcPanicPatternInfo)initWithPatternInfo:(id)a3;
- (objcPanicPatternInfo)initWithSwiftPanicPatternInfo:(id)a3;
@end

@implementation objcPanicPatternInfo

- (objcPanicPatternInfo)initWithPatternInfo:(id)a3
{
  v4 = a3;
  v5 = [[_SwiftPanicPatternInfo alloc] initWithPatternInfo:v4];

  swiftPanicPatternInfo = self->_swiftPanicPatternInfo;
  self->_swiftPanicPatternInfo = v5;

  return self;
}

- (objcPanicPatternInfo)initWithSwiftPanicPatternInfo:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = objcPanicPatternInfo;
  v6 = [(objcPanicPatternInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_swiftPanicPatternInfo, a3);
  }

  return v7;
}

@end