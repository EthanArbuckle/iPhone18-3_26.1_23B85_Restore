@interface PKAppleBalanceInStoreTopUpToken
- (BOOL)isEqual:(id)equal;
- (BOOL)isExpired;
- (PKAppleBalanceInStoreTopUpToken)initWithCoder:(id)coder;
- (PKAppleBalanceInStoreTopUpToken)initWithDictionary:(id)dictionary accountIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)displayableToken;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKAppleBalanceInStoreTopUpToken

- (PKAppleBalanceInStoreTopUpToken)initWithDictionary:(id)dictionary accountIdentifier:(id)identifier
{
  v81 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  identifierCopy = identifier;
  v75.receiver = self;
  v75.super_class = PKAppleBalanceInStoreTopUpToken;
  v8 = [(PKAppleBalanceInStoreTopUpToken *)&v75 init];
  if (!v8)
  {
    goto LABEL_56;
  }

  v9 = identifierCopy;
  v10 = dictionaryCopy;
  v69 = [dictionaryCopy PKDictionaryForKey:@"token"];
  v11 = [v69 PKStringForKey:@"payload"];
  v12 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v11 options:0];
  v74 = 0;
  v13 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v12 options:0 error:&v74];
  v14 = v74;
  if (v14)
  {
    v15 = v13;
    p_super = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      [v14 description];
      v18 = v17 = v14;
      *buf = 138412290;
      v78 = v18;
      _os_log_impl(&dword_1AD337000, p_super, OS_LOG_TYPE_DEFAULT, "Top Up Token failed to initialize: error decoding payload %@", buf, 0xCu);

      v14 = v17;
    }
  }

  else
  {
    v19 = [v13 PKStringForKey:@"token"];
    token = v8->_token;
    v8->_token = v19;

    v15 = v13;
    v21 = [v13 PKDateForKey:@"expirationDate"];
    expirationDate = v8->_expirationDate;
    v8->_expirationDate = v21;

    sHA256Hash = [v12 SHA256Hash];
    p_super = &v8->_payload->super;
    v8->_payload = sHA256Hash;
  }

  if (!v8->_token)
  {
    v30 = PKLogFacilityTypeGetObject(0xFuLL);
    v24 = v15;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v30, OS_LOG_TYPE_DEFAULT, "Top Up Token failed to initialize: missing token", buf, 2u);
    }

    dictionaryCopy = v10;
    goto LABEL_19;
  }

  v24 = v15;
  if (!v8->_expirationDate)
  {
    v30 = PKLogFacilityTypeGetObject(0xFuLL);
    dictionaryCopy = v10;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v30, OS_LOG_TYPE_DEFAULT, "Top Up Token failed to initialize: missing expiration date", buf, 2u);
    }

LABEL_19:
    identifierCopy = v9;
LABEL_20:
    v31 = v69;

    goto LABEL_21;
  }

  dictionaryCopy = v10;
  if (!v8->_payload)
  {
    v30 = PKLogFacilityTypeGetObject(0xFuLL);
    identifierCopy = v9;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v30, OS_LOG_TYPE_DEFAULT, "Top Up Token failed to initialize: missing payload", buf, 2u);
    }

    goto LABEL_20;
  }

  v68 = v14;
  v25 = [v24 PKStringForKey:@"accountId"];
  identifierCopy = v9;
  v26 = v9;
  v27 = v25;
  v28 = v27;
  v67 = v24;
  if (v27 == v26)
  {
  }

  else
  {
    if (!v26 || !v27)
    {

      goto LABEL_44;
    }

    v29 = [v26 isEqualToString:v27];

    if ((v29 & 1) == 0)
    {
LABEL_44:
      v56 = PKLogFacilityTypeGetObject(0xFuLL);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v78 = v28;
        v79 = 2112;
        v80 = v26;
        v57 = "Top Up Token failed to initialize: response account ID %@ did not match device account ID %@";
        v58 = v56;
        v59 = 22;
LABEL_48:
        _os_log_impl(&dword_1AD337000, v58, OS_LOG_TYPE_DEFAULT, v57, buf, v59);
        goto LABEL_49;
      }

      goto LABEL_49;
    }
  }

  v33 = [dictionaryCopy PKStringForKey:@"tokenIdentifier"];
  tokenIdentifier = v8->_tokenIdentifier;
  v8->_tokenIdentifier = v33;

  if (!v8->_tokenIdentifier)
  {
    v56 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v57 = "Top Up Token failed to initialize: missing token identifier";
      v58 = v56;
      v59 = 2;
      goto LABEL_48;
    }

LABEL_49:

    goto LABEL_22;
  }

  v63 = v28;
  v64 = v12;
  v65 = v11;
  v66 = identifierCopy;
  v62 = [v69 PKDictionaryForKey:@"header"];
  v35 = [v62 PKArrayContaining:objc_opt_class() forKey:@"x5c"];
  v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v37 = v35;
  v38 = [v37 countByEnumeratingWithState:&v70 objects:v76 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v71;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v71 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v42 = *(*(&v70 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v43 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v42 options:0];
          if (v43)
          {
            [v36 addObject:v43];
          }
        }
      }

      v39 = [v37 countByEnumeratingWithState:&v70 objects:v76 count:16];
    }

    while (v39);
  }

  v44 = [v36 copy];
  certificateChain = v8->_certificateChain;
  v8->_certificateChain = v44;

  v46 = v68;
  if ([(NSArray *)v8->_certificateChain count])
  {
    v47 = [v69 PKStringForKey:@"signature"];
    v48 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v47 options:0];
    signature = v8->_signature;
    v8->_signature = v48;

    v50 = v8->_signature;
    identifierCopy = v66;
    if (v50)
    {
      v51 = [dictionaryCopy PKURLForKey:@"termsURL"];
      termsURL = v8->_termsURL;
      v8->_termsURL = v51;

      v53 = [dictionaryCopy PKStringForKey:@"tokenType"];
      v8->_tokenType = PKAppleBalanceInStoreTopUpTokenTypeFromString(v53);

      v54 = [dictionaryCopy PKStringForKey:@"state"];
      v55 = v54;
      if (v54)
      {
        v54 = PKAppleBalanceInStoreTopUpTokenStateFromString(v54);
      }

      v46 = v68;
      v8->_state = v54;
    }

    else
    {
      v55 = PKLogFacilityTypeGetObject(0xFuLL);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v78 = dictionaryCopy;
        _os_log_impl(&dword_1AD337000, v55, OS_LOG_TYPE_DEFAULT, "Top Up Token failed to initialize: missing signature %@", buf, 0xCu);
      }
    }

    if (!v50)
    {
      goto LABEL_22;
    }

LABEL_56:
    v32 = v8;
    goto LABEL_57;
  }

  v60 = PKLogFacilityTypeGetObject(0xFuLL);
  identifierCopy = v66;
  v31 = v69;
  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v78 = dictionaryCopy;
    _os_log_impl(&dword_1AD337000, v60, OS_LOG_TYPE_DEFAULT, "Top Up Token failed to initialize: missing or invalid certificate data %@", buf, 0xCu);
  }

LABEL_21:
LABEL_22:
  v32 = 0;
LABEL_57:

  return v32;
}

- (BOOL)isExpired
{
  expirationDate = self->_expirationDate;
  date = [MEMORY[0x1E695DF00] date];
  LOBYTE(expirationDate) = [(NSDate *)expirationDate compare:date]== NSOrderedAscending;

  return expirationDate;
}

- (id)displayableToken
{
  string = [MEMORY[0x1E696AD60] string];
  token = self->_token;
  v5 = [(NSString *)token length];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__PKAppleBalanceInStoreTopUpToken_displayableToken__block_invoke;
  v8[3] = &unk_1E79C4288;
  v6 = string;
  v9 = v6;
  [(NSString *)token enumerateSubstringsInRange:0 options:v5 usingBlock:2, v8];

  return v6;
}

void __51__PKAppleBalanceInStoreTopUpToken_displayableToken__block_invoke(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v6 = v5;
  if ((a3 & 3) == 0)
  {
    [*(a1 + 32) appendString:@" "];
    v5 = v6;
  }

  [*(a1 + 32) appendString:v5];
}

- (PKAppleBalanceInStoreTopUpToken)initWithCoder:(id)coder
{
  v24[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [(PKAppleBalanceInStoreTopUpToken *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"token"];
    token = v5->_token;
    v5->_token = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tokenIdentifier"];
    tokenIdentifier = v5->_tokenIdentifier;
    v5->_tokenIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v10;

    v5->_tokenType = [coderCopy decodeIntegerForKey:@"tokenType"];
    v5->_state = [coderCopy decodeIntegerForKey:@"state"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"termsURL"];
    termsURL = v5->_termsURL;
    v5->_termsURL = v12;

    v14 = MEMORY[0x1E695DFD8];
    v24[0] = objc_opt_class();
    v24[1] = objc_opt_class();
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
    v16 = [v14 setWithArray:v15];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"certificateChain"];
    certificateChain = v5->_certificateChain;
    v5->_certificateChain = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"payload"];
    payload = v5->_payload;
    v5->_payload = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signature"];
    signature = v5->_signature;
    v5->_signature = v21;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  token = self->_token;
  coderCopy = coder;
  [coderCopy encodeObject:token forKey:@"token"];
  [coderCopy encodeObject:self->_tokenIdentifier forKey:@"tokenIdentifier"];
  [coderCopy encodeObject:self->_expirationDate forKey:@"expirationDate"];
  [coderCopy encodeInteger:self->_tokenType forKey:@"tokenType"];
  [coderCopy encodeInteger:self->_state forKey:@"state"];
  [coderCopy encodeObject:self->_termsURL forKey:@"termsURL"];
  [coderCopy encodeObject:self->_certificateChain forKey:@"certificateChain"];
  [coderCopy encodeObject:self->_payload forKey:@"payload"];
  [coderCopy encodeObject:self->_signature forKey:@"signature"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_36;
  }

  token = self->_token;
  v6 = equalCopy[1];
  if (token && v6)
  {
    if (([(NSString *)token isEqual:?]& 1) == 0)
    {
      goto LABEL_36;
    }
  }

  else if (token != v6)
  {
    goto LABEL_36;
  }

  tokenIdentifier = self->_tokenIdentifier;
  v8 = equalCopy[3];
  if (tokenIdentifier && v8)
  {
    if (([(NSString *)tokenIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_36;
    }
  }

  else if (tokenIdentifier != v8)
  {
    goto LABEL_36;
  }

  expirationDate = self->_expirationDate;
  v10 = equalCopy[4];
  if (expirationDate && v10)
  {
    if (([(NSDate *)expirationDate isEqual:?]& 1) == 0)
    {
      goto LABEL_36;
    }
  }

  else if (expirationDate != v10)
  {
    goto LABEL_36;
  }

  if (self->_tokenType != equalCopy[2] || self->_state != equalCopy[5])
  {
    goto LABEL_36;
  }

  termsURL = self->_termsURL;
  v12 = equalCopy[6];
  if (termsURL && v12)
  {
    if (([(NSURL *)termsURL isEqual:?]& 1) == 0)
    {
      goto LABEL_36;
    }
  }

  else if (termsURL != v12)
  {
    goto LABEL_36;
  }

  certificateChain = self->_certificateChain;
  v14 = equalCopy[7];
  if (certificateChain && v14)
  {
    if (([(NSArray *)certificateChain isEqual:?]& 1) == 0)
    {
      goto LABEL_36;
    }
  }

  else if (certificateChain != v14)
  {
    goto LABEL_36;
  }

  payload = self->_payload;
  v16 = equalCopy[8];
  if (!payload || !v16)
  {
    if (payload == v16)
    {
      goto LABEL_32;
    }

LABEL_36:
    v19 = 0;
    goto LABEL_37;
  }

  if (([(NSData *)payload isEqual:?]& 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_32:
  signature = self->_signature;
  v18 = equalCopy[9];
  if (signature && v18)
  {
    v19 = [(NSData *)signature isEqual:?];
  }

  else
  {
    v19 = signature == v18;
  }

LABEL_37:

  return v19;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_token];
  [array safelyAddObject:self->_tokenIdentifier];
  [array safelyAddObject:self->_expirationDate];
  [array safelyAddObject:self->_termsURL];
  [array safelyAddObject:self->_certificateChain];
  [array safelyAddObject:self->_payload];
  [array safelyAddObject:self->_signature];
  v4 = PKCombinedHash(17, array);
  v5 = self->_tokenType - v4 + 32 * v4;
  v6 = self->_state - v5 + 32 * v5;

  return v6;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"token: '%@'; ", self->_token];
  [v3 appendFormat:@"identifier: '%@'; ", self->_tokenIdentifier];
  if (self->_tokenType)
  {
    v4 = @"unknown";
  }

  else
  {
    v4 = @"barcode";
  }

  [v3 appendFormat:@"type: '%@'; ", v4];
  v5 = [(NSDate *)self->_expirationDate description];
  [v3 appendFormat:@"expirationDate: '%@'; ", v5];

  state = self->_state;
  v7 = @"valid";
  if (state == 1)
  {
    v7 = @"invalid";
  }

  if (state == 2)
  {
    v8 = @"unknown";
  }

  else
  {
    v8 = v7;
  }

  [v3 appendFormat:@"state: '%@'; ", v8];
  v9 = [(NSURL *)self->_termsURL description];
  [v3 appendFormat:@"termsURL: '%@'; ", v9];

  v10 = [(NSArray *)self->_certificateChain description];
  [v3 appendFormat:@"certificateChain: '%@'; ", v10];

  [v3 appendFormat:@"payload: '%@'; ", self->_payload];
  [v3 appendFormat:@"signature: '%@'; ", self->_signature];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKAppleBalanceInStoreTopUpToken allocWithZone:](PKAppleBalanceInStoreTopUpToken init];
  v6 = [(NSString *)self->_token copyWithZone:zone];
  token = v5->_token;
  v5->_token = v6;

  v8 = [(NSString *)self->_tokenIdentifier copyWithZone:zone];
  tokenIdentifier = v5->_tokenIdentifier;
  v5->_tokenIdentifier = v8;

  v10 = [(NSDate *)self->_expirationDate copyWithZone:zone];
  expirationDate = v5->_expirationDate;
  v5->_expirationDate = v10;

  v5->_tokenType = self->_tokenType;
  v5->_state = self->_state;
  v12 = [(NSURL *)self->_termsURL copyWithZone:zone];
  termsURL = v5->_termsURL;
  v5->_termsURL = v12;

  v14 = [(NSArray *)self->_certificateChain copyWithZone:zone];
  certificateChain = v5->_certificateChain;
  v5->_certificateChain = v14;

  v16 = [(NSData *)self->_payload copyWithZone:zone];
  payload = v5->_payload;
  v5->_payload = v16;

  v18 = [(NSData *)self->_signature copyWithZone:zone];
  signature = v5->_signature;
  v5->_signature = v18;

  return v5;
}

@end