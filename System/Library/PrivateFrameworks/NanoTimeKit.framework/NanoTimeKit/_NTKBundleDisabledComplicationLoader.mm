@interface _NTKBundleDisabledComplicationLoader
- (BOOL)isEqual:(id)equal;
@end

@implementation _NTKBundleDisabledComplicationLoader

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    isKindOfClass = 1;
  }

  else
  {
    equalCopy = equal;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

@end