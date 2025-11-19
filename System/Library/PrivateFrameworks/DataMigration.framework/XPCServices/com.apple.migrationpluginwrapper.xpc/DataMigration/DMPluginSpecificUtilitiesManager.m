@interface DMPluginSpecificUtilitiesManager
+ (id)_uniqueNameFromPluginIdentifier:(id)a3;
+ (id)utilitiesForPluginIdentifier:(id)a3;
@end

@implementation DMPluginSpecificUtilitiesManager

+ (id)utilitiesForPluginIdentifier:(id)a3
{
  v4 = a3;
  v5 = [a1 _uniqueNameFromPluginIdentifier:v4];
  if (v5)
  {
    v6 = [@"DMPlugin" stringByAppendingString:v5];
    v7 = NSClassFromString(v6);
    if (v7 && (v8 = v7, ([(objc_class *)v7 conformsToProtocol:&OBJC_PROTOCOL___DMPluginSpecificUtilities]& 1) != 0))
    {
      v9 = objc_alloc_init(v8);
      v10 = v9;
      if (v9)
      {
        v11 = v9;
      }

      else
      {
        _DMLogFunc();
      }
    }

    else
    {
      _DMLogFunc();
      v10 = 0;
    }
  }

  else
  {
    _DMLogFunc();
    v10 = 0;
  }

  return v10;
}

+ (id)_uniqueNameFromPluginIdentifier:(id)a3
{
  v3 = [a3 componentsSeparatedByString:@"."];
  if ([v3 count] >= 3)
  {
    v5 = [v3 subarrayWithRange:{2, objc_msgSend(v3, "count") - 2}];

    v6 = [v5 componentsJoinedByString:&stru_10000C490];
    v4 = [v6 stringByReplacingOccurrencesOfString:@"-0" withString:&stru_10000C490];

    v3 = v5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end