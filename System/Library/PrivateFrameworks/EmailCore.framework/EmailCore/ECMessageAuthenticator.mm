@interface ECMessageAuthenticator
- (ECMessageAuthenticator)init;
- (ECMessageAuthenticator)initWithDKIMVerifier:(id)a3 dmarcVerifier:(id)a4;
- (ECMessageAuthenticator)initWithDNSClient:(id)a3;
- (id)_onDeviceResultsForMessage:(id)a3 sender:(id)a4 dkimHeaders:(id)a5;
- (id)_resultForDKIMStatement:(id)a3;
- (id)_resultForDMARCStatement:(id)a3;
- (id)_signingDomainForDKIMStatement:(id)a3;
- (id)_verifyMessage:(id)a3 withDKIMSignatureHeaders:(id)a4 sender:(id)a5 identifierAlignment:(int64_t)a6 dkimVerifierOptions:(int64_t)a7;
- (id)_verifyMessage:(id)a3 withSender:(id)a4 strictlyAlignedDKIMSignatureHeaders:(id)a5 relaxedAlignedDKIMSignatureHeaders:(id)a6 dkimVerifierOptions:(int64_t)a7;
- (id)authenticateMessageData:(id)a3 onDevice:(BOOL)a4 sender:(id)a5;
- (void)_addServerResultsFromMessage:(id)a3 toResult:(id)a4;
@end

@implementation ECMessageAuthenticator

- (ECMessageAuthenticator)initWithDKIMVerifier:(id)a3 dmarcVerifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ECMessageAuthenticator;
  v9 = [(ECMessageAuthenticator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dkimVerifier, a3);
    objc_storeStrong(&v10->_dmarcVerifier, a4);
  }

  return v10;
}

- (ECMessageAuthenticator)initWithDNSClient:(id)a3
{
  v4 = a3;
  v5 = [[ECDKIMVerifier alloc] initWithPublicKeySource:v4];
  v6 = [[ECDMARCVerifier alloc] initWithRecordSource:v4];
  v7 = [(ECMessageAuthenticator *)self initWithDKIMVerifier:v5 dmarcVerifier:v6];

  return v7;
}

- (ECMessageAuthenticator)init
{
  v3 = objc_alloc_init(ECDNSClient);
  v4 = [(ECMessageAuthenticator *)self initWithDNSClient:v3];

  return v4;
}

- (id)authenticateMessageData:(id)a3 onDevice:(BOOL)a4 sender:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [v9 emailAddressValue];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v9;
  }

  v13 = v12;

  v14 = [(ECMessageAuthenticator *)self dkimVerifier];
  v21 = 0;
  v22 = 0;
  v15 = [v14 verifiableMessageForMessageData:v8 dkimSignatureHeaders:&v22 error:&v21];
  v16 = v22;
  v17 = v21;

  if (v15)
  {
    if (v6)
    {
      v18 = [(ECMessageAuthenticator *)self _onDeviceResultsForMessage:v15 sender:v13 dkimHeaders:v16];
    }

    else
    {
      v18 = objc_alloc_init(ECMessageAuthenticationResult);
    }

    v19 = v18;
    [(ECMessageAuthenticator *)self _addServerResultsFromMessage:v15 toResult:v18];
  }

  else
  {
    v19 = objc_alloc_init(ECMessageAuthenticationResult);
    [(ECMessageAuthenticationResult *)v19 setDkimAttemptedHeaderVerification:0];
    [(ECMessageAuthenticationResult *)v19 setDkimAttemptedBodyVerification:0];
    [(ECMessageAuthenticationResult *)v19 setBestDKIMSignatureHeader:0];
    [(ECMessageAuthenticationResult *)v19 setDkimError:v17];
  }

  return v19;
}

- (id)_onDeviceResultsForMessage:(id)a3 sender:(id)a4 dkimHeaders:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 emailAddressValue];

  if (v11)
  {
    v12 = [v9 emailAddressValue];
    v20 = 0;
    v21 = 0;
    [ECDMARCVerifier partitionDKIMSignatureHeadersByIdentifierAlignment:v10 forSender:v12 strictAligned:&v21 relaxedAligned:&v20 unaligned:0];
    v11 = v21;
    v13 = v20;
  }

  else
  {
    v13 = 0;
  }

  if (![v11 count] && !objc_msgSend(v13, "count"))
  {
    v14 = [(ECMessageAuthenticator *)self _verifyMessage:v8 withDKIMSignatureHeaders:v10 sender:v9 identifierAlignment:0 dkimVerifierOptions:7];
    if (![v10 count] || (objc_msgSend(v14, "dkimHeadersVerified") & 1) != 0)
    {
      goto LABEL_7;
    }

    v16 = [(ECMessageAuthenticator *)self _verifyMessage:v8 withDKIMSignatureHeaders:v10 sender:v9 identifierAlignment:0 dkimVerifierOptions:1];
LABEL_9:
    v15 = v16;

    goto LABEL_10;
  }

  v14 = [(ECMessageAuthenticator *)self _verifyMessage:v8 withSender:v9 strictlyAlignedDKIMSignatureHeaders:v11 relaxedAlignedDKIMSignatureHeaders:v13 dkimVerifierOptions:7];
  if (([v14 dkimHeadersVerified] & 1) == 0)
  {
    v16 = [(ECMessageAuthenticator *)self _verifyMessage:v8 withSender:v9 strictlyAlignedDKIMSignatureHeaders:v11 relaxedAlignedDKIMSignatureHeaders:v13 dkimVerifierOptions:1];
    goto LABEL_9;
  }

LABEL_7:
  v15 = v14;
LABEL_10:
  if (([v15 dkimAttemptedBodyVerification] & 1) == 0)
  {
    v17 = [v8 bodyData];
    v18 = [v17 length];

    if (v18)
    {
      [v15 setDkimAttemptedBodyVerification:1];
    }
  }

  return v15;
}

- (id)_verifyMessage:(id)a3 withSender:(id)a4 strictlyAlignedDKIMSignatureHeaders:(id)a5 relaxedAlignedDKIMSignatureHeaders:(id)a6 dkimVerifierOptions:(int64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if ([v14 count])
  {
    v16 = [(ECMessageAuthenticator *)self _verifyMessage:v12 withDKIMSignatureHeaders:v14 sender:v13 identifierAlignment:2 dkimVerifierOptions:a7];
    v17 = v16;
    if ([v16 dmarcStatus] == 2)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v17 = 0;
  }

  if ([v15 count])
  {
    v18 = [(ECMessageAuthenticator *)self _verifyMessage:v12 withDKIMSignatureHeaders:v15 sender:v13 identifierAlignment:1 dkimVerifierOptions:a7];
    v19 = v18;
    if (v17)
    {
      v20 = [v18 dmarcStatus];
      if (v20 == 2 || v20 == 3 && (v21 = [v17 dmarcStatus], v21 <= 5) && ((1 << v21) & 0x33) != 0)
      {
        v22 = v19;

        v17 = v22;
      }
    }

    else
    {
      v17 = v18;
    }
  }

  v16 = v17;
LABEL_15:
  v23 = v16;

  return v16;
}

- (id)_verifyMessage:(id)a3 withDKIMSignatureHeaders:(id)a4 sender:(id)a5 identifierAlignment:(int64_t)a6 dkimVerifierOptions:(int64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v24 = v12;
  v15 = objc_alloc_init(ECMessageAuthenticationResult);
  if ([v13 count])
  {
    v16 = [(ECMessageAuthenticator *)self dkimVerifier];
    v26 = 0;
    v17 = [v16 verifyMessage:v12 withDKIMSignatureHeaders:v13 options:a7 error:&v26];
    v18 = v26;
  }

  else
  {
    v18 = 0;
    v17 = 0;
  }

  v25 = 0;
  v19 = [v14 emailAddressValue];

  if (v19)
  {
    v20 = [(ECMessageAuthenticator *)self dmarcVerifier];
    v21 = [v14 emailAddressValue];
    v22 = [v20 dmarcStatusForSender:v21 dkimResult:v17 != 0 identifierAlignment:a6 receiverPolicy:&v25];

    if ((a7 & 1) == 0)
    {
LABEL_6:
      [(ECMessageAuthenticationResult *)v15 setDkimAttemptedHeaderVerification:0];
      goto LABEL_9;
    }
  }

  else
  {
    v22 = 5;
    if ((a7 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  [(ECMessageAuthenticationResult *)v15 setDkimAttemptedHeaderVerification:1];
  [(ECMessageAuthenticationResult *)v15 setDkimHeadersVerified:v17 != 0];
LABEL_9:
  if ((a7 & 2) != 0)
  {
    [(ECMessageAuthenticationResult *)v15 setDkimAttemptedBodyVerification:1];
    [(ECMessageAuthenticationResult *)v15 setDkimBodyVerified:v17 != 0];
  }

  else
  {
    [(ECMessageAuthenticationResult *)v15 setDkimAttemptedBodyVerification:0];
  }

  [(ECMessageAuthenticationResult *)v15 setBestDKIMSignatureHeader:v17];
  [(ECMessageAuthenticationResult *)v15 setDkimError:v18];
  [(ECMessageAuthenticationResult *)v15 setDmarcStatus:v22];
  [(ECMessageAuthenticationResult *)v15 setDmarcReceiverPolicy:v25];
  [(ECMessageAuthenticationResult *)v15 setDmarcIdentifierAlignment:a6];

  return v15;
}

- (void)_addServerResultsFromMessage:(id)a3 toResult:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [a3 headers];
  v8 = [ECHeaderAuthenticationResults authenticationResultsForRawHeaders:v7];

  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__2;
  v26 = __Block_byref_object_dispose__2;
  v27 = 0;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v9)
  {
    v10 = *v19;
    do
    {
      v11 = 0;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = [*(*(&v18 + 1) + 8 * v11) statements];
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __64__ECMessageAuthenticator__addServerResultsFromMessage_toResult___block_invoke;
        v15[3] = &unk_27874BBF8;
        v15[4] = self;
        v17 = &v22;
        v16 = v6;
        [v12 enumerateObjectsUsingBlock:v15];

        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v18 objects:v28 count:16];
    }

    while (v9);
  }

  [v6 setDkimServerStatements:v23[5]];
  _Block_object_dispose(&v22, 8);

  v13 = *MEMORY[0x277D85DE8];
}

void __64__ECMessageAuthenticator__addServerResultsFromMessage_toResult___block_invoke(uint64_t a1, void *a2)
{
  v17 = a2;
  v3 = [v17 method];
  v4 = [v3 isEqualToString:@"dkim"];

  if (v4)
  {
    v5 = [*(a1 + 32) _resultForDKIMStatement:v17];
    if (v5)
    {
      v6 = objc_alloc_init(ECDKIMServerStatement);
      -[ECDKIMServerStatement setDkimServerResult:](v6, "setDkimServerResult:", [v5 integerValue]);
      v7 = [*(a1 + 32) _signingDomainForDKIMStatement:v17];
      [(ECDKIMServerStatement *)v6 setDkimServerSigningDomain:v7];

      v8 = [v17 valueForPropertyType:@"header" property:@"s"];
      [(ECDKIMServerStatement *)v6 setDkimServerResultSelector:v8];

      v9 = *(*(*(a1 + 48) + 8) + 40);
      if (v9)
      {
        [v9 addObject:v6];
      }

      else
      {
        v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v6, 0}];
        v15 = *(*(a1 + 48) + 8);
        v16 = *(v15 + 40);
        *(v15 + 40) = v14;
      }
    }

    goto LABEL_13;
  }

  if (![*(a1 + 40) dmarcServerStatus])
  {
    v10 = [v17 method];
    v11 = [v10 isEqualToString:@"dmarc"];

    if (v11)
    {
      v12 = [*(a1 + 32) _resultForDMARCStatement:v17];
      v5 = v12;
      if (v12)
      {
        v13 = [v12 integerValue];
      }

      else
      {
        v13 = 0;
      }

      [*(a1 + 40) setDmarcServerStatus:v13];
LABEL_13:
    }
  }
}

- (id)_resultForDKIMStatement:(id)a3
{
  v3 = a3;
  if (_resultForDKIMStatement__onceToken != -1)
  {
    [ECMessageAuthenticator _resultForDKIMStatement:];
  }

  v4 = _resultForDKIMStatement__kDKIMResultByResultString;
  v5 = [v3 result];
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

void __50__ECMessageAuthenticator__resultForDKIMStatement___block_invoke()
{
  v4[7] = *MEMORY[0x277D85DE8];
  v3[0] = @"none";
  v3[1] = @"pass";
  v4[0] = &unk_284050908;
  v4[1] = &unk_284050920;
  v3[2] = @"fail";
  v3[3] = @"policy";
  v4[2] = &unk_284050938;
  v4[3] = &unk_284050950;
  v3[4] = @"neutral";
  v3[5] = @"temperror";
  v4[4] = &unk_284050968;
  v4[5] = &unk_284050980;
  v3[6] = @"permerror";
  v4[6] = &unk_284050998;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:7];
  v1 = _resultForDKIMStatement__kDKIMResultByResultString;
  _resultForDKIMStatement__kDKIMResultByResultString = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (id)_signingDomainForDKIMStatement:(id)a3
{
  v3 = a3;
  v4 = [v3 valueForPropertyType:@"header" property:@"d"];
  if (!v4)
  {
    v5 = [v3 valueForPropertyType:@"header" property:@"i"];
    if ([v5 length] && objc_msgSend(v5, "characterAtIndex:", 0) == 64)
    {
      v4 = [v5 substringFromIndex:1];
    }

    else
    {
      v6 = [v5 emailAddressValue];
      v4 = [v6 domain];
    }
  }

  return v4;
}

- (id)_resultForDMARCStatement:(id)a3
{
  v3 = a3;
  if (_resultForDMARCStatement__onceToken != -1)
  {
    [ECMessageAuthenticator _resultForDMARCStatement:];
  }

  v4 = _resultForDMARCStatement__kDMARCStatusByResultString;
  v5 = [v3 result];
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

void __51__ECMessageAuthenticator__resultForDMARCStatement___block_invoke()
{
  v4[5] = *MEMORY[0x277D85DE8];
  v3[0] = @"none";
  v3[1] = @"pass";
  v4[0] = &unk_284050920;
  v4[1] = &unk_284050938;
  v3[2] = @"fail";
  v3[3] = @"temperror";
  v4[2] = &unk_284050950;
  v4[3] = &unk_284050968;
  v3[4] = @"permerror";
  v4[4] = &unk_284050980;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:5];
  v1 = _resultForDMARCStatement__kDMARCStatusByResultString;
  _resultForDMARCStatement__kDMARCStatusByResultString = v0;

  v2 = *MEMORY[0x277D85DE8];
}

@end