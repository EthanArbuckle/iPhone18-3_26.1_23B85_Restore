@interface NSCoder(MSVAdditions)
- (id)decodeTCCIdentityForKey:()MSVAdditions;
- (void)encodeTCCIdentity:()MSVAdditions forKey:;
- (void)msv_userInfo;
@end

@implementation NSCoder(MSVAdditions)

- (id)decodeTCCIdentityForKey:()MSVAdditions
{
  [self decodeInt64ForKey:@"tccType"];
  v2 = [self decodeObjectOfClass:objc_opt_class() forKey:@"tccIdentifier"];
  v3 = v2;
  if (v2)
  {
    [v2 UTF8String];
    v4 = tcc_identity_create();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)encodeTCCIdentity:()MSVAdditions forKey:
{
  if (a3)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = a3;
    v7 = [v4 stringWithUTF8String:tcc_identity_get_identifier()];
    type = tcc_identity_get_type();

    [self encodeObject:v7 forKey:@"tccIdentifier"];
    [self encodeInt64:type forKey:@"tccType"];
  }
}

- (void)msv_userInfo
{
  v1 = objc_getAssociatedObject(self, _MSVCoderUserInfoKey);
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = MEMORY[0x1E695E0F8];
  }

  v4 = v3;

  return v3;
}

@end