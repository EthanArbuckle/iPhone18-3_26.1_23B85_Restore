@interface OADPresetTextWarp
+ (id)stringWithPresetTextWarpType:(unsigned __int8)type;
- (BOOL)isEqual:(id)equal;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (mPresetTextWarpType = self->mPresetTextWarpType, mPresetTextWarpType == [equalCopy presetTextWarpType]))
  {
    v8.receiver = self;
    v8.super_class = OADPresetTextWarp;
    v6 = [(OADTextWarp *)&v8 isEqual:equalCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)stringWithPresetTextWarpType:(unsigned __int8)type
{
  if (type > 0x27u)
  {
    return @"textPlain";
  }

  else
  {
    return *(&off_2799C7F60 + type);
  }
}

@end