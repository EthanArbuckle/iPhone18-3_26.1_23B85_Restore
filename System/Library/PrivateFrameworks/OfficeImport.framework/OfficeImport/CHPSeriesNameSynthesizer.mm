@interface CHPSeriesNameSynthesizer
- (BOOL)isObjectSupported:(id)supported;
- (void)applyProcessorToObject:(id)object sheet:(id)sheet;
@end

@implementation CHPSeriesNameSynthesizer

- (BOOL)isObjectSupported:(id)supported
{
  supportedCopy = supported;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = supportedCopy;
    name = [v4 name];
    if (name)
    {
      v6 = 0;
    }

    else
    {
      lastCachedName = [v4 lastCachedName];
      v6 = lastCachedName == 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)applyProcessorToObject:(id)object sheet:(id)sheet
{
  objectCopy = object;
  v5 = [objectCopy defaultSeriesNameForIndex:{objc_msgSend(objectCopy, "styleIndex")}];
  EDValue::makeWithNSString(v5, &v7);

  v6 = [[CHDDataValue alloc] initWithIndex:-1 value:&v7];
  [objectCopy setLastCachedName:v6];

  EDValue::~EDValue(&v7);
}

@end