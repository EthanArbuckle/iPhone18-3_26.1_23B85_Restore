@interface NSError(MIME)
+ (id)mf_decodeFailedErrorWithUserInfo:()MIME;
@end

@implementation NSError(MIME)

+ (id)mf_decodeFailedErrorWithUserInfo:()MIME
{
  v3 = [self errorWithDomain:@"MFMIMEErrorDomain" code:2000000 userInfo:a3];

  return v3;
}

@end