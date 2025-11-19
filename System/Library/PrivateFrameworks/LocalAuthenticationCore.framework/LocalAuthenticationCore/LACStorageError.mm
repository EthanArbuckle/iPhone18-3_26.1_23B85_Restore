@interface LACStorageError
+ (BOOL)error:(id)a3 hasCode:(int64_t)a4;
+ (id)errorWithCode:(int64_t)a3 userInfo:(id)a4 debugDescription:(id)a5;
@end

@implementation LACStorageError

+ (id)errorWithCode:(int64_t)a3 userInfo:(id)a4 debugDescription:(id)a5
{
  v7 = a5;
  v8 = [a4 mutableCopy];
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

  if (v7)
  {
    [v11 setObject:v7 forKey:*MEMORY[0x1E696A278]];
  }

  v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.LocalAuthentication.Storage" code:a3 userInfo:v11];

  return v12;
}

+ (BOOL)error:(id)a3 hasCode:(int64_t)a4
{
  v5 = a3;
  v6 = [v5 domain];
  v7 = [v6 isEqualToString:@"com.apple.LocalAuthentication.Storage"];

  if (v7)
  {
    v8 = [v5 code] == a4;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end