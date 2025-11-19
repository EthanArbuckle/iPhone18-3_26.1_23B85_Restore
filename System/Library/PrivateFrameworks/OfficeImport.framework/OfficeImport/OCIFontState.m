@interface OCIFontState
- (OCIFontState)init;
@end

@implementation OCIFontState

- (OCIFontState)init
{
  v6.receiver = self;
  v6.super_class = OCIFontState;
  v2 = [(OCIFontState *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    replacedFontMap = v2->_replacedFontMap;
    v2->_replacedFontMap = v3;
  }

  return v2;
}

@end