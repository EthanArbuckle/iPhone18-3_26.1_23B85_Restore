@interface ECMessageAuthenticator
- (ECMessageAuthenticator)init;
- (ECMessageAuthenticator)initWithDKIMVerifier:(id)verifier dmarcVerifier:(id)dmarcVerifier;
- (ECMessageAuthenticator)initWithDNSClient:(id)client;
- (id)_onDeviceResultsForMessage:(id)message sender:(id)sender dkimHeaders:(id)headers;
- (id)_resultForDKIMStatement:(id)statement;
- (id)_resultForDMARCStatement:(id)statement;
- (id)_signingDomainForDKIMStatement:(id)statement;
- (id)_verifyMessage:(id)message withDKIMSignatureHeaders:(id)headers sender:(id)sender identifierAlignment:(int64_t)alignment dkimVerifierOptions:(int64_t)options;
- (id)_verifyMessage:(id)message withSender:(id)sender strictlyAlignedDKIMSignatureHeaders:(id)headers relaxedAlignedDKIMSignatureHeaders:(id)signatureHeaders dkimVerifierOptions:(int64_t)options;
- (id)authenticateMessageData:(id)data onDevice:(BOOL)device sender:(id)sender;
- (void)_addServerResultsFromMessage:(id)message toResult:(id)result;
@end

@implementation ECMessageAuthenticator

- (ECMessageAuthenticator)initWithDKIMVerifier:(id)verifier dmarcVerifier:(id)dmarcVerifier
{
  verifierCopy = verifier;
  dmarcVerifierCopy = dmarcVerifier;
  v12.receiver = self;
  v12.super_class = ECMessageAuthenticator;
  v9 = [(ECMessageAuthenticator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dkimVerifier, verifier);
    objc_storeStrong(&v10->_dmarcVerifier, dmarcVerifier);
  }

  return v10;
}

- (ECMessageAuthenticator)initWithDNSClient:(id)client
{
  clientCopy = client;
  v5 = [[ECDKIMVerifier alloc] initWithPublicKeySource:clientCopy];
  v6 = [[ECDMARCVerifier alloc] initWithRecordSource:clientCopy];
  v7 = [(ECMessageAuthenticator *)self initWithDKIMVerifier:v5 dmarcVerifier:v6];

  return v7;
}

- (ECMessageAuthenticator)init
{
  v3 = objc_alloc_init(ECDNSClient);
  v4 = [(ECMessageAuthenticator *)self initWithDNSClient:v3];

  return v4;
}

- (id)authenticateMessageData:(id)data onDevice:(BOOL)device sender:(id)sender
{
  deviceCopy = device;
  dataCopy = data;
  senderCopy = sender;
  emailAddressValue = [senderCopy emailAddressValue];
  v11 = emailAddressValue;
  if (emailAddressValue)
  {
    v12 = emailAddressValue;
  }

  else
  {
    v12 = senderCopy;
  }

  v13 = v12;

  dkimVerifier = [(ECMessageAuthenticator *)self dkimVerifier];
  v21 = 0;
  v22 = 0;
  v15 = [dkimVerifier verifiableMessageForMessageData:dataCopy dkimSignatureHeaders:&v22 error:&v21];
  v16 = v22;
  v17 = v21;

  if (v15)
  {
    if (deviceCopy)
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

- (id)_onDeviceResultsForMessage:(id)message sender:(id)sender dkimHeaders:(id)headers
{
  messageCopy = message;
  senderCopy = sender;
  headersCopy = headers;
  emailAddressValue = [senderCopy emailAddressValue];

  if (emailAddressValue)
  {
    emailAddressValue2 = [senderCopy emailAddressValue];
    v20 = 0;
    v21 = 0;
    [ECDMARCVerifier partitionDKIMSignatureHeadersByIdentifierAlignment:headersCopy forSender:emailAddressValue2 strictAligned:&v21 relaxedAligned:&v20 unaligned:0];
    emailAddressValue = v21;
    v13 = v20;
  }

  else
  {
    v13 = 0;
  }

  if (![emailAddressValue count] && !objc_msgSend(v13, "count"))
  {
    v14 = [(ECMessageAuthenticator *)self _verifyMessage:messageCopy withDKIMSignatureHeaders:headersCopy sender:senderCopy identifierAlignment:0 dkimVerifierOptions:7];
    if (![headersCopy count] || (objc_msgSend(v14, "dkimHeadersVerified") & 1) != 0)
    {
      goto LABEL_7;
    }

    v16 = [(ECMessageAuthenticator *)self _verifyMessage:messageCopy withDKIMSignatureHeaders:headersCopy sender:senderCopy identifierAlignment:0 dkimVerifierOptions:1];
LABEL_9:
    v15 = v16;

    goto LABEL_10;
  }

  v14 = [(ECMessageAuthenticator *)self _verifyMessage:messageCopy withSender:senderCopy strictlyAlignedDKIMSignatureHeaders:emailAddressValue relaxedAlignedDKIMSignatureHeaders:v13 dkimVerifierOptions:7];
  if (([v14 dkimHeadersVerified] & 1) == 0)
  {
    v16 = [(ECMessageAuthenticator *)self _verifyMessage:messageCopy withSender:senderCopy strictlyAlignedDKIMSignatureHeaders:emailAddressValue relaxedAlignedDKIMSignatureHeaders:v13 dkimVerifierOptions:1];
    goto LABEL_9;
  }

LABEL_7:
  v15 = v14;
LABEL_10:
  if (([v15 dkimAttemptedBodyVerification] & 1) == 0)
  {
    bodyData = [messageCopy bodyData];
    v18 = [bodyData length];

    if (v18)
    {
      [v15 setDkimAttemptedBodyVerification:1];
    }
  }

  return v15;
}

- (id)_verifyMessage:(id)message withSender:(id)sender strictlyAlignedDKIMSignatureHeaders:(id)headers relaxedAlignedDKIMSignatureHeaders:(id)signatureHeaders dkimVerifierOptions:(int64_t)options
{
  messageCopy = message;
  senderCopy = sender;
  headersCopy = headers;
  signatureHeadersCopy = signatureHeaders;
  if ([headersCopy count])
  {
    v16 = [(ECMessageAuthenticator *)self _verifyMessage:messageCopy withDKIMSignatureHeaders:headersCopy sender:senderCopy identifierAlignment:2 dkimVerifierOptions:options];
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

  if ([signatureHeadersCopy count])
  {
    v18 = [(ECMessageAuthenticator *)self _verifyMessage:messageCopy withDKIMSignatureHeaders:signatureHeadersCopy sender:senderCopy identifierAlignment:1 dkimVerifierOptions:options];
    v19 = v18;
    if (v17)
    {
      dmarcStatus = [v18 dmarcStatus];
      if (dmarcStatus == 2 || dmarcStatus == 3 && (v21 = [v17 dmarcStatus], v21 <= 5) && ((1 << v21) & 0x33) != 0)
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

- (id)_verifyMessage:(id)message withDKIMSignatureHeaders:(id)headers sender:(id)sender identifierAlignment:(int64_t)alignment dkimVerifierOptions:(int64_t)options
{
  messageCopy = message;
  headersCopy = headers;
  senderCopy = sender;
  v24 = messageCopy;
  v15 = objc_alloc_init(ECMessageAuthenticationResult);
  if ([headersCopy count])
  {
    dkimVerifier = [(ECMessageAuthenticator *)self dkimVerifier];
    v26 = 0;
    v17 = [dkimVerifier verifyMessage:messageCopy withDKIMSignatureHeaders:headersCopy options:options error:&v26];
    v18 = v26;
  }

  else
  {
    v18 = 0;
    v17 = 0;
  }

  v25 = 0;
  emailAddressValue = [senderCopy emailAddressValue];

  if (emailAddressValue)
  {
    dmarcVerifier = [(ECMessageAuthenticator *)self dmarcVerifier];
    emailAddressValue2 = [senderCopy emailAddressValue];
    v22 = [dmarcVerifier dmarcStatusForSender:emailAddressValue2 dkimResult:v17 != 0 identifierAlignment:alignment receiverPolicy:&v25];

    if ((options & 1) == 0)
    {
LABEL_6:
      [(ECMessageAuthenticationResult *)v15 setDkimAttemptedHeaderVerification:0];
      goto LABEL_9;
    }
  }

  else
  {
    v22 = 5;
    if ((options & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  [(ECMessageAuthenticationResult *)v15 setDkimAttemptedHeaderVerification:1];
  [(ECMessageAuthenticationResult *)v15 setDkimHeadersVerified:v17 != 0];
LABEL_9:
  if ((options & 2) != 0)
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
  [(ECMessageAuthenticationResult *)v15 setDmarcIdentifierAlignment:alignment];

  return v15;
}

- (void)_addServerResultsFromMessage:(id)message toResult:(id)result
{
  v29 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  headers = [message headers];
  v8 = [ECHeaderAuthenticationResults authenticationResultsForRawHeaders:headers];

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

        statements = [*(*(&v18 + 1) + 8 * v11) statements];
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __64__ECMessageAuthenticator__addServerResultsFromMessage_toResult___block_invoke;
        v15[3] = &unk_27874BBF8;
        v15[4] = self;
        v17 = &v22;
        v16 = resultCopy;
        [statements enumerateObjectsUsingBlock:v15];

        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v18 objects:v28 count:16];
    }

    while (v9);
  }

  [resultCopy setDkimServerStatements:v23[5]];
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

- (id)_resultForDKIMStatement:(id)statement
{
  statementCopy = statement;
  if (_resultForDKIMStatement__onceToken != -1)
  {
    [ECMessageAuthenticator _resultForDKIMStatement:];
  }

  v4 = _resultForDKIMStatement__kDKIMResultByResultString;
  result = [statementCopy result];
  v6 = [v4 objectForKeyedSubscript:result];

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

- (id)_signingDomainForDKIMStatement:(id)statement
{
  statementCopy = statement;
  domain = [statementCopy valueForPropertyType:@"header" property:@"d"];
  if (!domain)
  {
    v5 = [statementCopy valueForPropertyType:@"header" property:@"i"];
    if ([v5 length] && objc_msgSend(v5, "characterAtIndex:", 0) == 64)
    {
      domain = [v5 substringFromIndex:1];
    }

    else
    {
      emailAddressValue = [v5 emailAddressValue];
      domain = [emailAddressValue domain];
    }
  }

  return domain;
}

- (id)_resultForDMARCStatement:(id)statement
{
  statementCopy = statement;
  if (_resultForDMARCStatement__onceToken != -1)
  {
    [ECMessageAuthenticator _resultForDMARCStatement:];
  }

  v4 = _resultForDMARCStatement__kDMARCStatusByResultString;
  result = [statementCopy result];
  v6 = [v4 objectForKeyedSubscript:result];

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