@interface _CNUIComponentBasedColorSerialization
+ (CGColorSpace)_createColorSpaceWithName:(id)name;
+ (id)colorFromDictionary:(id)dictionary;
+ (id)dictionaryForColor:(id)color;
+ (void)parseString:(id)string forComponents:(double *)components count:(int64_t *)count;
@end

@implementation _CNUIComponentBasedColorSerialization

+ (id)dictionaryForColor:(id)color
{
  colorCopy = color;
  v4 = objc_opt_new();
  [v4 setObject:&off_100008858 forKeyedSubscript:@"type"];
  v5 = objc_opt_new();
  NumberOfComponents = CGColorGetNumberOfComponents([colorCopy CGColor]);
  Components = CGColorGetComponents([colorCopy CGColor]);
  if (NumberOfComponents)
  {
    v8 = Components;
    do
    {
      v9 = *v8++;
      [v5 appendFormat:@"%02x", (v9 * 255.0)];
      --NumberOfComponents;
    }

    while (NumberOfComponents);
  }

  ColorSpace = CGColorGetColorSpace([colorCopy CGColor]);
  v11 = CGColorSpaceGetName(ColorSpace);
  uppercaseString = [v5 uppercaseString];
  [v4 setObject:uppercaseString forKeyedSubscript:@"hexComponents"];

  [v4 setObject:v11 forKeyedSubscript:@"colorSpaceName"];

  return v4;
}

+ (id)colorFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = objc_alloc_init(CNStack);
  v6 = [dictionaryCopy objectForKeyedSubscript:@"hexComponents"];
  if (v6)
  {
    v21 = 0;
    [self parseString:v6 forComponents:components count:&v21];
    v7 = [dictionaryCopy objectForKeyedSubscript:@"colorSpaceName"];
    v8 = [self _createColorSpaceWithName:v7];

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100002E38;
    v20[3] = &unk_1000084F8;
    v20[4] = v8;
    v9 = [v20 copy];
    v10 = objc_opt_self();
    v11 = objc_retainBlock(v10);
    [v5 push:v11];

    v12 = CGColorCreate(v8, components);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100002E40;
    v19[3] = &unk_1000084F8;
    v19[4] = v12;
    v13 = [v19 copy];
    v14 = objc_opt_self();
    v15 = objc_retainBlock(v14);
    [v5 push:v15];

    v16 = [UIColor colorWithCGColor:v12];
  }

  else
  {
    v16 = 0;
  }

  [v5 popAllWithHandler:&stru_100008538];
  v17 = objc_opt_self();

  return v16;
}

+ (CGColorSpace)_createColorSpaceWithName:(id)name
{
  nameCopy = name;
  v4 = nameCopy;
  if (nameCopy)
  {
    if (![(__CFString *)nameCopy length]|| (v5 = CGColorSpaceCreateWithName(v4)) == 0)
    {
      v5 = CGColorSpaceCreateWithName(kCGColorSpaceSRGB);
      if ([(__CFString *)v4 length])
      {
        v6 = +[CNUICoreLogProvider color_os_log];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          sub_100003774(v4, v6);
        }
      }
    }
  }

  else
  {
    v5 = CGColorSpaceCreateWithName(kCGColorSpaceSRGB);
  }

  return v5;
}

+ (void)parseString:(id)string forComponents:(double *)components count:(int64_t *)count
{
  stringCopy = string;
  v8 = [[NSScanner alloc] initWithString:stringCopy];
  if (*count <= 3)
  {
    do
    {
      v11 = 0;
      if (([v8 _cn_scanHexChar:&v11] & 1) == 0)
      {
        break;
      }

      LOBYTE(v9) = v11;
      v10 = *count;
      components[*count] = v9 / 255.0;
      *count = v10 + 1;
    }

    while (v10 < 3);
  }
}

@end