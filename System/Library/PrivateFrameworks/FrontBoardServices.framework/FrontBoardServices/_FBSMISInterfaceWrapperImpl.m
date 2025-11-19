@interface _FBSMISInterfaceWrapperImpl
- (int)signatureVersion:(id)a3 version:(unsigned int *)a4;
- (int)validateSignatureForPath:(id)a3 options:(id)a4 userInfo:(id *)a5;
@end

@implementation _FBSMISInterfaceWrapperImpl

- (int)validateSignatureForPath:(id)a3 options:(id)a4 userInfo:(id *)a5
{
  v8 = 0;
  v6 = soft_MISValidateSignatureAndCopyInfo(a3, a4, &v8);
  if (a5)
  {
    *a5 = v8;
  }

  else if (v8)
  {
    CFRelease(v8);
  }

  return v6;
}

- (int)signatureVersion:(id)a3 version:(unsigned int *)a4
{
  v5 = a3;
  v9 = 0;
  v6 = soft_MISValidationCopySignatureVersion(v5, &v9);
  v7 = v9;
  if (v9)
  {
    v7 = [v9 unsignedIntValue];
  }

  if (a4)
  {
    *a4 = v7;
  }

  fbs_release(&v9);

  return v6;
}

@end