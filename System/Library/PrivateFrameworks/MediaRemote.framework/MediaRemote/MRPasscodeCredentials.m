@interface MRPasscodeCredentials
+ (id)_randomPasscode;
+ (id)standardCredentials;
@end

@implementation MRPasscodeCredentials

+ (id)standardCredentials
{
  v2 = objc_alloc_init(MRPasscodeCredentials);
  [(MRPasscodeCredentials *)v2 setType:1];
  [(MRPasscodeCredentials *)v2 setCharacterCount:4];
  v3 = +[MRPasscodeCredentials _randomPasscode];
  [(MRPasscodeCredentials *)v2 setPasscode:v3];

  return v2;
}

+ (id)_randomPasscode
{
  v5 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  SecRandomCopyBytes(*MEMORY[0x1E697B308], 0x20uLL, bytes);
  v0 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:4];
  for (i = 0; i != 32; i += 8)
  {
    [v0 appendFormat:@"%.1u", *&bytes[i] % 0xAuLL];
  }

  v2 = *MEMORY[0x1E69E9840];

  return v0;
}

@end