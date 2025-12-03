@interface FMFLabelUtil
+ (BOOL)isDefaultLabel:(id)label;
+ (id)defaultLabelKeys;
@end

@implementation FMFLabelUtil

+ (id)defaultLabelKeys
{
  v2 = _defaultLabelKeys;
  if (!_defaultLabelKeys)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"_$!<home>!$_", @"_$!<work>!$_", @"_$!<school>!$_", @"_$!<gym>!$_", 0}];
    v4 = _defaultLabelKeys;
    _defaultLabelKeys = v3;

    v2 = _defaultLabelKeys;
  }

  return v2;
}

+ (BOOL)isDefaultLabel:(id)label
{
  labelCopy = label;
  defaultLabelKeys = [self defaultLabelKeys];
  lowercaseString = [labelCopy lowercaseString];

  LOBYTE(labelCopy) = [defaultLabelKeys containsObject:lowercaseString];
  return labelCopy;
}

@end