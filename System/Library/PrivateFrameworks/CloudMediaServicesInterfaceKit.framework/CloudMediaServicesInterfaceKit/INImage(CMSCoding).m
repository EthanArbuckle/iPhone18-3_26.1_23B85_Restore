@interface INImage(CMSCoding)
+ (id)instanceFromCMSCoded:()CMSCoding;
- (id)cmsCoded;
@end

@implementation INImage(CMSCoding)

+ (id)instanceFromCMSCoded:()CMSCoding
{
  v3 = cmsSafeDictionary(a3);
  v4 = v3;
  if (v3)
  {
    v5 = [v3 cmsOptionalStringForKey:@"url"];
    if (v5 && ([MEMORY[0x277CBEBC0] URLWithString:v5], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v7 = v6;
      [v4 cmsDoubleForKey:@"width" withDefault:0.0];
      v9 = v8;
      [v4 cmsDoubleForKey:@"height" withDefault:0.0];
      if (v9 == 0.0 && v10 == 0.0)
      {
        v11 = [MEMORY[0x277CD3D10] imageWithURL:v7];
      }

      else
      {
        v11 = [MEMORY[0x277CD3D10] imageWithURL:v7 width:v9 height:v10];
      }

      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)cmsCoded
{
  v2 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
  [a1 _imageSize];
  v4 = v3;
  if (v5 != 0.0 || v3 != 0.0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    [v2 setObject:v6 forKey:@"width"];

    v7 = [MEMORY[0x277CCABB0] numberWithDouble:v4];
    [v2 setObject:v7 forKey:@"height"];
  }

  v8 = [a1 _uri];
  [v2 setObject:v8 forKey:@"url"];

  return v2;
}

@end