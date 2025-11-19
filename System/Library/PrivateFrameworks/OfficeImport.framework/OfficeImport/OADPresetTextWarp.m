@interface OADPresetTextWarp
+ (id)stringWithPresetTextWarpType:(unsigned __int8)a3;
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation OADPresetTextWarp

- (unint64_t)hash
{
  mPresetTextWarpType = self->mPresetTextWarpType;
  v4.receiver = self;
  v4.super_class = OADPresetTextWarp;
  return [(OADTextWarp *)&v4 hash]^ mPresetTextWarpType;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (mPresetTextWarpType = self->mPresetTextWarpType, mPresetTextWarpType == [v4 presetTextWarpType]))
  {
    v8.receiver = self;
    v8.super_class = OADPresetTextWarp;
    v6 = [(OADTextWarp *)&v8 isEqual:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)stringWithPresetTextWarpType:(unsigned __int8)a3
{
  if (a3 > 0x27u)
  {
    return @"textPlain";
  }

  else
  {
    return *(&off_2799C7F60 + a3);
  }
}

@end