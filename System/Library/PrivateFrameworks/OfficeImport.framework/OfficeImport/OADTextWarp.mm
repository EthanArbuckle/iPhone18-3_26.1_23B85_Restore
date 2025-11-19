@interface OADTextWarp
+ (id)nullWarp;
- (BOOL)isEqual:(id)a3;
- (id)description;
@end

@implementation OADTextWarp

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

+ (id)nullWarp
{
  v2 = objc_alloc_init(OADPresetTextWarp);
  [(OADPresetTextWarp *)v2 setPresetTextWarpType:28];

  return v2;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADTextWarp;
  v2 = [(OADTextWarp *)&v4 description];

  return v2;
}

@end