@interface ECAuthScheme
+ (NSArray)knownSchemes;
+ (id)allocWithZone:(_NSZone *)zone;
+ (id)schemeWithApplescriptScheme:(unsigned int)scheme;
+ (id)schemeWithName:(id)name;
- (NSString)humanReadableName;
- (NSString)name;
- (unsigned)applescriptScheme;
@end

@implementation ECAuthScheme

+ (id)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot directly allocate a %@ object, use +knownSchemes, +schemeWithName:, or +authSchemesForAccount:connection: instead.", self];
    v6 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
    objc_exception_throw(v6);
  }

  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___ECAuthScheme;
  return objc_msgSendSuper2(&v7, sel_allocWithZone_, zone);
}

+ (NSArray)knownSchemes
{
  v15[10] = *MEMORY[0x277D85DE8];
  v14 = +[ECExternalAuthScheme externalAuthScheme];
  v15[0] = v14;
  v2 = +[ECGSSAPIAuthScheme gssapiAuthScheme];
  v15[1] = v2;
  v3 = +[ECAppleTokenAuthScheme appleTokenAuthScheme];
  v15[2] = v3;
  v4 = +[ECAppleToken2AuthScheme appleToken2AuthScheme];
  v15[3] = v4;
  v5 = +[ECOAuth2AuthScheme oauth2AuthScheme];
  v15[4] = v5;
  v6 = +[ECNTLMAuthScheme ntlmAuthScheme];
  v15[5] = v6;
  v7 = +[ECDigestMD5AuthScheme digestMD5AuthScheme];
  v15[6] = v7;
  v8 = +[ECCramMD5AuthScheme cramMD5AuthScheme];
  v15[7] = v8;
  v9 = +[ECAPOPAuthScheme apopAuthScheme];
  v15[8] = v9;
  v10 = +[ECPlainAuthScheme plainAuthScheme];
  v15[9] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)schemeWithName:(id)name
{
  v21 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v5 = nameCopy;
  if (!nameCopy || [nameCopy isEqualToString:&stru_284041D88])
  {
    v6 = +[ECPlainAuthScheme plainAuthScheme];
LABEL_4:
    v7 = v6;
    goto LABEL_5;
  }

  if ([v5 isEqualToString:@"X-APOP"])
  {
    v6 = +[ECAPOPAuthScheme apopAuthScheme];
    goto LABEL_4;
  }

  if ([v5 isEqualToString:@"CRAM-MD5"])
  {
    v6 = +[ECCramMD5AuthScheme cramMD5AuthScheme];
    goto LABEL_4;
  }

  if ([v5 isEqualToString:@"DIGEST-MD5"])
  {
    v6 = +[ECDigestMD5AuthScheme digestMD5AuthScheme];
    goto LABEL_4;
  }

  if ([v5 isEqualToString:@"NTLM"])
  {
    v6 = +[ECNTLMAuthScheme ntlmAuthScheme];
    goto LABEL_4;
  }

  if ([v5 isEqualToString:@"ATOKEN"])
  {
    v6 = +[ECAppleTokenAuthScheme appleTokenAuthScheme];
    goto LABEL_4;
  }

  if ([v5 isEqualToString:@"ATOKEN2"])
  {
    v6 = +[ECAppleToken2AuthScheme appleToken2AuthScheme];
    goto LABEL_4;
  }

  if ([v5 isEqualToString:@"XOAUTH2"])
  {
    v6 = +[ECOAuth2AuthScheme oauth2AuthScheme];
    goto LABEL_4;
  }

  if ([v5 isEqualToString:@"GSSAPI"])
  {
    v6 = +[ECGSSAPIAuthScheme gssapiAuthScheme];
    goto LABEL_4;
  }

  if ([v5 isEqualToString:@"EXTERNAL"])
  {
    v6 = +[ECExternalAuthScheme externalAuthScheme];
    goto LABEL_4;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  knownSchemes = [self knownSchemes];
  v7 = [knownSchemes countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(knownSchemes);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        supportedSASLMechanisms = [v13 supportedSASLMechanisms];
        v15 = [supportedSASLMechanisms containsObject:v5];

        if (v15)
        {
          v7 = v13;
          goto LABEL_36;
        }
      }

      v7 = [knownSchemes countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_36:

LABEL_5:
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)schemeWithApplescriptScheme:(unsigned int)scheme
{
  v3 = 0;
  if (scheme <= 1635279731)
  {
    switch(scheme)
    {
      case 0x6161706Fu:
        v3 = +[ECAPOPAuthScheme apopAuthScheme];
        break;
      case 0x61746F32u:
        v3 = +[ECAppleToken2AuthScheme appleToken2AuthScheme];
        break;
      case 0x61746F6Bu:
        v3 = +[ECAppleTokenAuthScheme appleTokenAuthScheme];
        break;
    }
  }

  else if (scheme > 1635282275)
  {
    if (scheme == 1635282276)
    {
      v3 = +[ECCramMD5AuthScheme cramMD5AuthScheme];
    }

    else if (scheme == 1635282548)
    {
      v3 = +[ECNTLMAuthScheme ntlmAuthScheme];
    }
  }

  else if (scheme == 1635279732)
  {
    v3 = +[ECPlainAuthScheme plainAuthScheme];
  }

  else if (scheme == 1635281717)
  {
    v3 = +[ECGSSAPIAuthScheme gssapiAuthScheme];
  }

  return v3;
}

- (NSString)name
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ECAuthScheme.m" lineNumber:152 description:@"Subclass must implement."];

  return &stru_284041D88;
}

- (NSString)humanReadableName
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ECAuthScheme.m" lineNumber:157 description:@"Subclass must implement."];

  return &stru_284041D88;
}

- (unsigned)applescriptScheme
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ECAuthScheme.m" lineNumber:162 description:@"Subclass must implement."];

  return 1635284334;
}

@end