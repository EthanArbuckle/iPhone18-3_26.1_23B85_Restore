@interface ECDKIMMessageHeader
- (BOOL)_isValidDomain:(id)domain;
- (ECDKIMMessageHeader)initWithHeaderFieldName:(id)name headerBody:(id)body error:(id *)error;
- (id)_errorForInvalidOptionalKey:(id)key actualValue:(id)value expectedValue:(id)expectedValue;
- (id)_errorForInvalidRequiredKey:(id)key actualValue:(id)value expectedValue:(id)expectedValue;
- (id)_errorForMissingRequiredKey:(id)key;
- (id)_parseAgentOrUserIdentifierWithSigningDomainIdentifier:(id)identifier;
- (id)_parseBodyLength;
- (id)_parseCanonicalizedBodyHash;
- (id)_parseMessageCanonicalizationAlgorithm;
- (id)_parseSelector;
- (id)_parseSignatureDataWithHeaderBody:(id)body;
- (id)_parseSignatureExpiration;
- (id)_parseSignatureTimestamp;
- (id)_parseSignedHeaderFields;
- (id)_parseSigningAlgorithm;
- (id)_parseSigningDomainIdentifier;
- (id)_parseVersion;
@end

@implementation ECDKIMMessageHeader

- (ECDKIMMessageHeader)initWithHeaderFieldName:(id)name headerBody:(id)body error:(id *)error
{
  v39[7] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  bodyCopy = body;
  v37.receiver = self;
  v37.super_class = ECDKIMMessageHeader;
  v10 = [(ECDKIMMessageHeader *)&v37 init];
  if (!v10)
  {
    goto LABEL_63;
  }

  v11 = [nameCopy copy];
  headerNameForCanonicalization = v10->_headerNameForCanonicalization;
  v10->_headerNameForCanonicalization = v11;

  v36 = 0;
  v13 = [ECTagValueList tagValueListFromString:bodyCopy error:&v36];
  v14 = v36;
  tagValueList = v10->_tagValueList;
  v10->_tagValueList = v13;

  if (v14)
  {
    if (error)
    {
      v16 = v14;
      *error = v14;
    }

    goto LABEL_61;
  }

  v39[0] = @"v";
  v39[1] = @"a";
  v39[2] = @"b";
  v39[3] = @"bh";
  v39[4] = @"d";
  v39[5] = @"h";
  v39[6] = @"s";
  [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:7];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v17 = v33 = 0u;
  v18 = [v17 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v18)
  {
    v19 = *v33;
    while (2)
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v33 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = *(*(&v32 + 1) + 8 * i);
        v22 = [(ECTagValueList *)v10->_tagValueList objectForKeyedSubscript:v21, v32];
        v23 = v22 == 0;

        if (v23)
        {
          if (error)
          {
            *error = [(ECDKIMMessageHeader *)v10 _errorForMissingRequiredKey:v21];
          }

          v25 = 0;
          goto LABEL_60;
        }
      }

      v18 = [v17 countByEnumeratingWithState:&v32 objects:v38 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  _parseVersion = [(ECDKIMMessageHeader *)v10 _parseVersion];
  v25 = _parseVersion;
  if (_parseVersion)
  {
    if (error)
    {
      goto LABEL_58;
    }

    goto LABEL_60;
  }

  _parseVersion = [(ECDKIMMessageHeader *)v10 _parseSigningAlgorithm];
  v25 = _parseVersion;
  if (_parseVersion)
  {
    if (error)
    {
      goto LABEL_58;
    }

    goto LABEL_60;
  }

  _parseVersion = [(ECDKIMMessageHeader *)v10 _parseSignatureDataWithHeaderBody:bodyCopy];
  v25 = _parseVersion;
  if (_parseVersion)
  {
    if (error)
    {
      goto LABEL_58;
    }

    goto LABEL_60;
  }

  _parseVersion = [(ECDKIMMessageHeader *)v10 _parseCanonicalizedBodyHash];
  v25 = _parseVersion;
  if (_parseVersion)
  {
    if (error)
    {
      goto LABEL_58;
    }

    goto LABEL_60;
  }

  _parseVersion = [(ECDKIMMessageHeader *)v10 _parseMessageCanonicalizationAlgorithm];
  v25 = _parseVersion;
  if (_parseVersion)
  {
    if (error)
    {
      goto LABEL_58;
    }

    goto LABEL_60;
  }

  _parseVersion = [(ECDKIMMessageHeader *)v10 _parseSigningDomainIdentifier];
  v25 = _parseVersion;
  if (_parseVersion)
  {
    if (error)
    {
      goto LABEL_58;
    }

    goto LABEL_60;
  }

  _parseVersion = [(ECDKIMMessageHeader *)v10 _parseSignedHeaderFields];
  v25 = _parseVersion;
  if (_parseVersion)
  {
    if (error)
    {
      goto LABEL_58;
    }

    goto LABEL_60;
  }

  signingDomainIdentifier = [(ECDKIMMessageHeader *)v10 signingDomainIdentifier];
  v25 = [(ECDKIMMessageHeader *)v10 _parseAgentOrUserIdentifierWithSigningDomainIdentifier:signingDomainIdentifier];

  if (v25)
  {
    if (error)
    {
      v27 = v25;
LABEL_59:
      *error = v25;
      goto LABEL_60;
    }

    goto LABEL_60;
  }

  _parseVersion = [(ECDKIMMessageHeader *)v10 _parseBodyLength];
  v25 = _parseVersion;
  if (_parseVersion)
  {
    if (error)
    {
      goto LABEL_58;
    }

    goto LABEL_60;
  }

  _parseVersion = [(ECDKIMMessageHeader *)v10 _parseQueryMethod];
  v25 = _parseVersion;
  if (_parseVersion)
  {
    if (error)
    {
      goto LABEL_58;
    }

    goto LABEL_60;
  }

  _parseVersion = [(ECDKIMMessageHeader *)v10 _parseSelector];
  v25 = _parseVersion;
  if (_parseVersion)
  {
    if (error)
    {
      goto LABEL_58;
    }

    goto LABEL_60;
  }

  _parseVersion = [(ECDKIMMessageHeader *)v10 _parseSignatureTimestamp];
  v25 = _parseVersion;
  if (_parseVersion)
  {
    if (error)
    {
      goto LABEL_58;
    }

    goto LABEL_60;
  }

  _parseVersion = [(ECDKIMMessageHeader *)v10 _parseSignatureExpiration];
  v25 = _parseVersion;
  if (_parseVersion)
  {
    if (error)
    {
      goto LABEL_58;
    }

    goto LABEL_60;
  }

  _parseVersion = [(ECDKIMMessageHeader *)v10 _parseCopiedHeaderFields];
  v25 = _parseVersion;
  if (!_parseVersion)
  {

LABEL_63:
    v29 = v10;
    goto LABEL_64;
  }

  if (error)
  {
LABEL_58:
    v28 = _parseVersion;
    goto LABEL_59;
  }

LABEL_60:

LABEL_61:
  v29 = 0;
LABEL_64:

  v30 = *MEMORY[0x277D85DE8];
  return v29;
}

- (id)_parseVersion
{
  v3 = [(ECTagValueList *)self->_tagValueList objectForKeyedSubscript:@"v"];
  v4 = v3;
  if (v3)
  {
    if ([v3 isEqualToString:@"1"])
    {
      objc_storeStrong(&self->_version, v4);
      v5 = 0;
      goto LABEL_7;
    }

    v6 = [(ECDKIMMessageHeader *)self _errorForInvalidRequiredKey:@"v" actualValue:v4 expectedValue:@"1"];
  }

  else
  {
    v6 = [(ECDKIMMessageHeader *)self _errorForMissingRequiredKey:@"v"];
  }

  v5 = v6;
LABEL_7:

  return v5;
}

- (id)_parseSigningAlgorithm
{
  v3 = [(ECTagValueList *)self->_tagValueList objectForKeyedSubscript:@"a"];
  v4 = v3;
  if (!v3)
  {
    v8 = [(ECDKIMMessageHeader *)self _errorForMissingRequiredKey:@"a"];
    goto LABEL_19;
  }

  v5 = [v3 componentsSeparatedByString:@"-"];
  if ([v5 count] == 2)
  {
    firstObject = [v5 firstObject];
    if ([firstObject isEqualToString:@"rsa"])
    {
      v7 = 0;
    }

    else
    {
      if (([firstObject isEqualToString:@"ed25519"] & 1) == 0)
      {
        v8 = [(ECDKIMMessageHeader *)self _errorForInvalidRequiredKey:@"a" actualValue:firstObject expectedValue:@"rsa or ed25519"];
LABEL_17:

        goto LABEL_18;
      }

      v7 = 1;
    }

    self->_signingAlgorithm = v7;
    lastObject = [v5 lastObject];
    if ([lastObject isEqualToString:@"sha1"])
    {
      v10 = 0;
    }

    else
    {
      if (([lastObject isEqualToString:@"sha256"] & 1) == 0)
      {
        v8 = [(ECDKIMMessageHeader *)self _errorForInvalidRequiredKey:@"a" actualValue:lastObject expectedValue:@"sha1 or sha256"];
        goto LABEL_16;
      }

      v10 = 1;
    }

    v8 = 0;
    self->_hashingAlgorithm = v10;
LABEL_16:

    goto LABEL_17;
  }

  v8 = [(ECDKIMMessageHeader *)self _errorForInvalidRequiredKey:@"a" actualValue:v4 expectedValue:0];
LABEL_18:

LABEL_19:

  return v8;
}

- (id)_parseSignatureDataWithHeaderBody:(id)body
{
  bodyCopy = body;
  v5 = [(ECTagValueList *)self->_tagValueList objectForKeyedSubscript:@"b"];
  if ([v5 length])
  {
    v6 = [bodyCopy rangeOfString:v5];
    v8 = [bodyCopy stringByReplacingCharactersInRange:v6 withString:{v7, &stru_284041D88}];
    bodyForCanonicalization = self->_bodyForCanonicalization;
    self->_bodyForCanonicalization = v8;

    v10 = self->_bodyForCanonicalization;
    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v12 = [(NSString *)v10 ef_rangeOfCharactersFromSet:whitespaceAndNewlineCharacterSet options:12];
    v14 = v13;

    if (v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = self->_bodyForCanonicalization;
      newlineCharacterSet = [MEMORY[0x277CCA900] newlineCharacterSet];
      v17 = [(NSString *)v15 ef_rangeOfCharactersFromSet:newlineCharacterSet options:4 range:v12, v14];
      v19 = v18;

      if (v17 != v12 || v19 != v14)
      {
        v20 = [(NSString *)self->_bodyForCanonicalization substringWithRange:v17, v19];
        v21 = [(NSString *)self->_bodyForCanonicalization stringByReplacingCharactersInRange:v12 withString:v14, v20];
        v22 = self->_bodyForCanonicalization;
        self->_bodyForCanonicalization = v21;
      }
    }

    v23 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v5 options:1];
    if (v23)
    {
      objc_storeStrong(&self->_signatureData, v23);
      v24 = 0;
    }

    else
    {
      v24 = [(ECDKIMMessageHeader *)self _errorForInvalidRequiredKey:@"b" actualValue:v5 expectedValue:0];
    }
  }

  else
  {
    v24 = [(ECDKIMMessageHeader *)self _errorForMissingRequiredKey:@"b"];
  }

  return v24;
}

- (id)_parseCanonicalizedBodyHash
{
  v3 = [(ECTagValueList *)self->_tagValueList objectForKeyedSubscript:@"bh"];
  v4 = v3;
  if (v3)
  {
    ef_stringByRFC5322Unfolding = [v3 ef_stringByRFC5322Unfolding];
    ef_rfc6376WhitespaceCharacterSet = [MEMORY[0x277CCA900] ef_rfc6376WhitespaceCharacterSet];
    v7 = [ef_stringByRFC5322Unfolding ef_stringByRemovingCharactersInSet:ef_rfc6376WhitespaceCharacterSet];

    if ([v7 length])
    {
      objc_storeStrong(&self->_canonicalizedBodyHash, v7);
      v8 = 0;
    }

    else
    {
      v8 = [(ECDKIMMessageHeader *)self _errorForInvalidRequiredKey:@"bh" actualValue:v7 expectedValue:0];
    }
  }

  else
  {
    v8 = [(ECDKIMMessageHeader *)self _errorForMissingRequiredKey:@"bh"];
  }

  return v8;
}

- (id)_parseMessageCanonicalizationAlgorithm
{
  self->_bodyCanonicalizationAlgorithm = 0;
  self->_headerCanonicalizationAlgorithm = 0;
  p_bodyCanonicalizationAlgorithm = &self->_bodyCanonicalizationAlgorithm;
  v4 = [(ECTagValueList *)self->_tagValueList objectForKeyedSubscript:@"c"];
  v5 = v4;
  if (!v4)
  {
    v7 = 0;
    goto LABEL_21;
  }

  v6 = [v4 componentsSeparatedByString:@"/"];
  if ([v6 count] < 3)
  {
    if ([v6 count])
    {
      firstObject = [v6 firstObject];
      if ([firstObject isEqualToString:@"simple"])
      {
        v9 = 0;
      }

      else
      {
        if (([firstObject isEqualToString:@"relaxed"] & 1) == 0)
        {
          goto LABEL_18;
        }

        v9 = 1;
      }

      self->_headerCanonicalizationAlgorithm = v9;
    }

    if ([v6 count] != 2)
    {
      v7 = 0;
      goto LABEL_20;
    }

    firstObject = [v6 lastObject];
    if ([firstObject isEqualToString:@"simple"])
    {
      v10 = 0;
LABEL_17:
      v7 = 0;
      *p_bodyCanonicalizationAlgorithm = v10;
LABEL_19:

      goto LABEL_20;
    }

    if ([firstObject isEqualToString:@"relaxed"])
    {
      v10 = 1;
      goto LABEL_17;
    }

LABEL_18:
    v7 = [(ECDKIMMessageHeader *)self _errorForInvalidOptionalKey:@"c" actualValue:firstObject expectedValue:@"simple or relaxed"];
    goto LABEL_19;
  }

  v7 = [(ECDKIMMessageHeader *)self _errorForInvalidOptionalKey:@"c" actualValue:v5 expectedValue:0];
LABEL_20:

LABEL_21:

  return v7;
}

- (id)_parseSigningDomainIdentifier
{
  v3 = [(ECTagValueList *)self->_tagValueList objectForKeyedSubscript:@"d"];
  if (v3)
  {
    if ([(ECDKIMMessageHeader *)self _isValidDomain:v3])
    {
      objc_storeStrong(&self->_signingDomainIdentifier, v3);
      v4 = 0;
      goto LABEL_7;
    }

    v5 = [(ECDKIMMessageHeader *)self _errorForInvalidRequiredKey:@"d" actualValue:v3 expectedValue:0];
  }

  else
  {
    v5 = [(ECDKIMMessageHeader *)self _errorForMissingRequiredKey:@"d"];
  }

  v4 = v5;
LABEL_7:

  return v4;
}

- (BOOL)_isValidDomain:(id)domain
{
  domainCopy = domain;
  if ([domainCopy length] < 3)
  {
LABEL_2:
    v4 = 0;
    goto LABEL_3;
  }

  v6 = [domainCopy rangeOfString:@"."];
  v7 = [domainCopy characterAtIndex:0];
  v8 = [domainCopy characterAtIndex:{objc_msgSend(domainCopy, "length") - 1}];
  v4 = 0;
  if (v6 != 0x7FFFFFFFFFFFFFFFLL && (v7 - 47) <= 0xFFFDu && (v8 - 47) <= 0xFFFDu)
  {
    if ([domainCopy rangeOfString:@".-"] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(domainCopy, "rangeOfString:", @"-.") == 0x7FFFFFFFFFFFFFFFLL)
    {
      v4 = [ECEmailAddressParser validateDomain:domainCopy];
      goto LABEL_3;
    }

    goto LABEL_2;
  }

LABEL_3:

  return v4;
}

- (id)_parseSignedHeaderFields
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [(ECTagValueList *)self->_tagValueList objectForKeyedSubscript:@"h"];
  v19 = v2;
  if (v2)
  {
    v18 = [v2 componentsSeparatedByString:@":"];
    if ([v18 count])
    {
      v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v18, "count")}];
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v4 = v18;
      v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v5)
      {
        v6 = *v21;
        do
        {
          for (i = 0; i != v5; ++i)
          {
            if (*v21 != v6)
            {
              objc_enumerationMutation(v4);
            }

            v8 = *(*(&v20 + 1) + 8 * i);
            whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
            v10 = [v8 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
            lowercaseString = [v10 lowercaseString];
            ef_stringByRFC5322Unfolding = [lowercaseString ef_stringByRFC5322Unfolding];

            [(NSArray *)v3 addObject:ef_stringByRFC5322Unfolding];
          }

          v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v5);
      }

      signedHeaderFields = self->_signedHeaderFields;
      self->_signedHeaderFields = v3;

      v14 = 0;
    }

    else
    {
      v14 = [(ECDKIMMessageHeader *)self _errorForInvalidRequiredKey:@"h" actualValue:v19 expectedValue:0];
    }
  }

  else
  {
    v14 = [(ECDKIMMessageHeader *)self _errorForMissingRequiredKey:@"h"];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)_parseAgentOrUserIdentifierWithSigningDomainIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(ECTagValueList *)self->_tagValueList objectForKeyedSubscript:@"i"];
  v6 = v5;
  if (v5)
  {
    identifierCopy = v5;
LABEL_5:
    agentOrUserIdentifier = self->_agentOrUserIdentifier;
    self->_agentOrUserIdentifier = identifierCopy;

    goto LABEL_6;
  }

  if (identifierCopy)
  {
    identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"@%@", identifierCopy];
    goto LABEL_5;
  }

LABEL_6:

  return 0;
}

- (id)_parseBodyLength
{
  v3 = [(ECTagValueList *)self->_tagValueList objectForKeyedSubscript:@"l"];
  v4 = v3;
  if (v3)
  {
    if ([v3 length] >= 0x4D)
    {
      v5 = [(ECDKIMMessageHeader *)self _errorForInvalidOptionalKey:@"l" actualValue:v4 expectedValue:0];
      goto LABEL_9;
    }

    v6 = objc_opt_new();
    [v6 setNumberStyle:0];
    [v6 setGeneratesDecimalNumbers:0];
    v7 = [v6 numberFromString:v4];
    bodyLength = self->_bodyLength;
    self->_bodyLength = v7;

    if (self->_bodyLength)
    {
      v5 = 0;
    }

    else
    {
      v5 = [(ECDKIMMessageHeader *)self _errorForInvalidOptionalKey:@"l" actualValue:v4 expectedValue:0];
    }
  }

  else
  {
    v5 = 0;
    v6 = self->_bodyLength;
    self->_bodyLength = 0;
  }

LABEL_9:

  return v5;
}

- (id)_parseSelector
{
  v3 = [(ECTagValueList *)self->_tagValueList objectForKeyedSubscript:@"s"];
  if (v3)
  {
    objc_storeStrong(&self->_selector, v3);
  }

  return 0;
}

- (id)_parseSignatureTimestamp
{
  v3 = [(ECTagValueList *)self->_tagValueList objectForKeyedSubscript:@"t"];
  v4 = v3;
  v5 = 0.0;
  if (v3 && [v3 length] <= 0xC)
  {
    [v4 doubleValue];
    v5 = v6;
  }

  self->_signatureTimestamp = v5;

  return 0;
}

- (id)_parseSignatureExpiration
{
  v3 = [(ECTagValueList *)self->_tagValueList objectForKeyedSubscript:@"x"];
  v4 = v3;
  v5 = 0.0;
  if (v3 && [v3 length] <= 0xC)
  {
    [v4 doubleValue];
    v5 = v6;
  }

  self->_signatureExpiration = v5;

  return 0;
}

- (id)_errorForMissingRequiredKey:(id)key
{
  v10[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"DKIM signature is missing required key '%@'", keyCopy, *MEMORY[0x277CCA470]];
  v10[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ECDKIMMessageHeaderParseError" code:100 userInfo:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_errorForInvalidRequiredKey:(id)key actualValue:(id)value expectedValue:(id)expectedValue
{
  v14[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  valueCopy = value;
  v13 = *MEMORY[0x277CCA470];
  valueCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"DKIM signature required key '%@' has invalid value '%@'", keyCopy, valueCopy];
  v14[0] = valueCopy;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];

  v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ECDKIMMessageHeaderParseError" code:101 userInfo:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_errorForInvalidOptionalKey:(id)key actualValue:(id)value expectedValue:(id)expectedValue
{
  v14[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  valueCopy = value;
  v13 = *MEMORY[0x277CCA470];
  valueCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"DKIM signature optional key '%@' has invalid value '%@'", keyCopy, valueCopy];
  v14[0] = valueCopy;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];

  v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ECDKIMMessageHeaderParseError" code:102 userInfo:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end