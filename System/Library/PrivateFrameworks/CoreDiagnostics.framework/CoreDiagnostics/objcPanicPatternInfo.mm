@interface objcPanicPatternInfo
- (objcPanicPatternInfo)initWithPatternInfo:(id)info;
- (objcPanicPatternInfo)initWithSwiftPanicPatternInfo:(id)info;
@end

@implementation objcPanicPatternInfo

- (objcPanicPatternInfo)initWithPatternInfo:(id)info
{
  infoCopy = info;
  v5 = [[_SwiftPanicPatternInfo alloc] initWithPatternInfo:infoCopy];

  swiftPanicPatternInfo = self->_swiftPanicPatternInfo;
  self->_swiftPanicPatternInfo = v5;

  return self;
}

- (objcPanicPatternInfo)initWithSwiftPanicPatternInfo:(id)info
{
  infoCopy = info;
  v9.receiver = self;
  v9.super_class = objcPanicPatternInfo;
  v6 = [(objcPanicPatternInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_swiftPanicPatternInfo, info);
  }

  return v7;
}

@end