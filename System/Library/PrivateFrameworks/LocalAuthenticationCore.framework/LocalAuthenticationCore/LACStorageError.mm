@interface LACStorageError
+ (BOOL)error:(id)error hasCode:(int64_t)code;
+ (id)errorWithCode:(int64_t)code userInfo:(id)info debugDescription:(id)description;
@end

@implementation LACStorageError

+ (id)errorWithCode:(int64_t)code userInfo:(id)info debugDescription:(id)description
{
  descriptionCopy = description;
  v8 = [info mutableCopy];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = objc_opt_new();
  }

  v11 = v10;

  if (descriptionCopy)
  {
    [v11 setObject:descriptionCopy forKey:*MEMORY[0x1E696A278]];
  }

  v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.LocalAuthentication.Storage" code:code userInfo:v11];

  return v12;
}

+ (BOOL)error:(id)error hasCode:(int64_t)code
{
  errorCopy = error;
  domain = [errorCopy domain];
  v7 = [domain isEqualToString:@"com.apple.LocalAuthentication.Storage"];

  if (v7)
  {
    v8 = [errorCopy code] == code;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end