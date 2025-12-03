@interface _FBSMISInterfaceWrapperImpl
- (int)signatureVersion:(id)version version:(unsigned int *)a4;
- (int)validateSignatureForPath:(id)path options:(id)options userInfo:(id *)info;
@end

@implementation _FBSMISInterfaceWrapperImpl

- (int)validateSignatureForPath:(id)path options:(id)options userInfo:(id *)info
{
  v8 = 0;
  v6 = soft_MISValidateSignatureAndCopyInfo(path, options, &v8);
  if (info)
  {
    *info = v8;
  }

  else if (v8)
  {
    CFRelease(v8);
  }

  return v6;
}

- (int)signatureVersion:(id)version version:(unsigned int *)a4
{
  versionCopy = version;
  v9 = 0;
  v6 = soft_MISValidationCopySignatureVersion(versionCopy, &v9);
  unsignedIntValue = v9;
  if (v9)
  {
    unsignedIntValue = [v9 unsignedIntValue];
  }

  if (a4)
  {
    *a4 = unsignedIntValue;
  }

  fbs_release(&v9);

  return v6;
}

@end