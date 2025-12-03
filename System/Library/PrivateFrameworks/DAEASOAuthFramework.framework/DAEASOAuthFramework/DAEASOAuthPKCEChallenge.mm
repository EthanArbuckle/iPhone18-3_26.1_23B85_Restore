@interface DAEASOAuthPKCEChallenge
+ (id)base64URLEncode:(id)encode;
+ (id)convertToString:(int64_t)string;
+ (id)newCodeVerifier;
- (DAEASOAuthPKCEChallenge)initWithCodeChallengeMethod:(int64_t)method;
- (id)codeChallengeFromVerifier:(id)verifier withCodeChallengeMethod:(int64_t)method;
@end

@implementation DAEASOAuthPKCEChallenge

- (DAEASOAuthPKCEChallenge)initWithCodeChallengeMethod:(int64_t)method
{
  v9.receiver = self;
  v9.super_class = DAEASOAuthPKCEChallenge;
  v4 = [(DAEASOAuthPKCEChallenge *)&v9 init];
  [(DAEASOAuthPKCEChallenge *)v4 setCodeChallengeMethod:method];
  v5 = +[DAEASOAuthPKCEChallenge newCodeVerifier];
  [(DAEASOAuthPKCEChallenge *)v4 setCodeVerifier:v5];

  codeVerifier = [(DAEASOAuthPKCEChallenge *)v4 codeVerifier];
  v7 = [(DAEASOAuthPKCEChallenge *)v4 codeChallengeFromVerifier:codeVerifier withCodeChallengeMethod:[(DAEASOAuthPKCEChallenge *)v4 codeChallengeMethod]];
  [(DAEASOAuthPKCEChallenge *)v4 setCodeChallenge:v7];

  return v4;
}

+ (id)newCodeVerifier
{
  v2 = [MEMORY[0x277CBEB28] dataWithLength:32];
  if (SecRandomCopyBytes(*MEMORY[0x277CDC540], 0x20uLL, [v2 mutableBytes]))
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAD78]);
    uUIDString = [v3 UUIDString];
  }

  else
  {
    uUIDString = [DAEASOAuthPKCEChallenge base64URLEncode:v2];
  }

  return uUIDString;
}

- (id)codeChallengeFromVerifier:(id)verifier withCodeChallengeMethod:(int64_t)method
{
  v13 = *MEMORY[0x277D85DE8];
  verifierCopy = verifier;
  v6 = verifierCopy;
  if (method == 1)
  {
    v7 = [verifierCopy dataUsingEncoding:{4, 0, 0, 0, 0}];
    CC_SHA256([v7 bytes], objc_msgSend(v7, "length"), &v12);
    v8 = [MEMORY[0x277CBEA90] dataWithBytes:&v12 length:32];
    v9 = [DAEASOAuthPKCEChallenge base64URLEncode:v8];
  }

  else
  {
    v9 = verifierCopy;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)convertToString:(int64_t)string
{
  if (string == 1)
  {
    return @"S256";
  }

  else
  {
    return @"plain";
  }
}

+ (id)base64URLEncode:(id)encode
{
  v3 = [encode base64EncodedStringWithOptions:0];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"+" withString:@"-"];

  v5 = [v4 stringByReplacingOccurrencesOfString:@"/" withString:@"_"];

  v6 = [v5 stringByReplacingOccurrencesOfString:@"=" withString:&stru_2859ED5C8];

  return v6;
}

@end