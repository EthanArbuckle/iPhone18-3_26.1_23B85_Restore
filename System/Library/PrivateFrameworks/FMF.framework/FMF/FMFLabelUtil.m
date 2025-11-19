@interface FMFLabelUtil
+ (BOOL)isDefaultLabel:(id)a3;
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

+ (BOOL)isDefaultLabel:(id)a3
{
  v4 = a3;
  v5 = [a1 defaultLabelKeys];
  v6 = [v4 lowercaseString];

  LOBYTE(v4) = [v5 containsObject:v6];
  return v4;
}

@end