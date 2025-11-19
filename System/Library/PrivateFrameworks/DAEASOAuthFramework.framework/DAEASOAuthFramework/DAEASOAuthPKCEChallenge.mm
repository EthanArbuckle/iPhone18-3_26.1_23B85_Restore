@interface DAEASOAuthPKCEChallenge
+ (id)base64URLEncode:(id)a3;
+ (id)convertToString:(int64_t)a3;
+ (id)newCodeVerifier;
- (DAEASOAuthPKCEChallenge)initWithCodeChallengeMethod:(int64_t)a3;
- (id)codeChallengeFromVerifier:(id)a3 withCodeChallengeMethod:(int64_t)a4;
@end

@implementation DAEASOAuthPKCEChallenge

- (DAEASOAuthPKCEChallenge)initWithCodeChallengeMethod:(int64_t)a3
{
  v9.receiver = self;
  v9.super_class = DAEASOAuthPKCEChallenge;
  v4 = [(DAEASOAuthPKCEChallenge *)&v9 init];
  [(DAEASOAuthPKCEChallenge *)v4 setCodeChallengeMethod:a3];
  v5 = +[DAEASOAuthPKCEChallenge newCodeVerifier];
  [(DAEASOAuthPKCEChallenge *)v4 setCodeVerifier:v5];

  v6 = [(DAEASOAuthPKCEChallenge *)v4 codeVerifier];
  v7 = [(DAEASOAuthPKCEChallenge *)v4 codeChallengeFromVerifier:v6 withCodeChallengeMethod:[(DAEASOAuthPKCEChallenge *)v4 codeChallengeMethod]];
  [(DAEASOAuthPKCEChallenge *)v4 setCodeChallenge:v7];

  return v4;
}

+ (id)newCodeVerifier
{
  v2 = [MEMORY[0x277CBEB28] dataWithLength:32];
  if (SecRandomCopyBytes(*MEMORY[0x277CDC540], 0x20uLL, [v2 mutableBytes]))
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAD78]);
    v4 = [v3 UUIDString];
  }

  else
  {
    v4 = [DAEASOAuthPKCEChallenge base64URLEncode:v2];
  }

  return v4;
}

- (id)codeChallengeFromVerifier:(id)a3 withCodeChallengeMethod:(int64_t)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a4 == 1)
  {
    v7 = [v5 dataUsingEncoding:{4, 0, 0, 0, 0}];
    CC_SHA256([v7 bytes], objc_msgSend(v7, "length"), &v12);
    v8 = [MEMORY[0x277CBEA90] dataWithBytes:&v12 length:32];
    v9 = [DAEASOAuthPKCEChallenge base64URLEncode:v8];
  }

  else
  {
    v9 = v5;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)convertToString:(int64_t)a3
{
  if (a3 == 1)
  {
    return @"S256";
  }

  else
  {
    return @"plain";
  }
}

+ (id)base64URLEncode:(id)a3
{
  v3 = [a3 base64EncodedStringWithOptions:0];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"+" withString:@"-"];

  v5 = [v4 stringByReplacingOccurrencesOfString:@"/" withString:@"_"];

  v6 = [v5 stringByReplacingOccurrencesOfString:@"=" withString:&stru_2859ED5C8];

  return v6;
}

@end