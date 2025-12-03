@interface PKMerchantToken
+ (id)extractCardArtFromArray:(id)array withPrefix:(id)prefix;
- (PKMerchantToken)initWithDictionary:(id)dictionary;
- (PKMerchantToken)initWithMerchantTokenId:(id)id appleMerchantId:(id)merchantId merchantName:(id)name merchantIconURL:(id)l merchantTokenManagementURL:(id)rL tokenCategory:(id)category isDeferredPayment:(BOOL)payment;
- (PKMerchantToken)initWithMerchantTokenId:(id)id appleMerchantId:(id)merchantId merchantName:(id)name merchantIconURL:(id)l merchantTokenManagementURL:(id)rL tokenCategory:(id)category isDeferredPayment:(BOOL)payment issuerServiceURL:(id)self0 disallowUserRevoke:(BOOL)self1;
- (PKMerchantToken)initWithMerchantTokenId:(id)id primaryAccountIdentifier:(id)identifier appleMerchantId:(id)merchantId merchantName:(id)name merchantTokenManagementURL:(id)l tokenCategory:(id)category tokenIssuanceDate:(id)date;
- (PKMerchantToken)initWithMerchantTokenId:(id)id primaryAccountIdentifier:(id)identifier primaryAccountDisplayName:(id)name primaryAccountSuffix:(id)suffix appleMerchantId:(id)merchantId merchantName:(id)merchantName merchantDomain:(id)domain merchantApplicationIdentifier:(id)self0 merchantIconURL:(id)self1 merchantTokenManagementURL:(id)self2 tokenCategory:(id)self3 isDeferredPayment:(BOOL)self4 tokenIssuanceDate:(id)self5 issuerServiceURL:(id)self6 issuerName:(id)self7 disallowUserRevoke:(BOOL)self8;
@end

@implementation PKMerchantToken

- (PKMerchantToken)initWithMerchantTokenId:(id)id primaryAccountIdentifier:(id)identifier primaryAccountDisplayName:(id)name primaryAccountSuffix:(id)suffix appleMerchantId:(id)merchantId merchantName:(id)merchantName merchantDomain:(id)domain merchantApplicationIdentifier:(id)self0 merchantIconURL:(id)self1 merchantTokenManagementURL:(id)self2 tokenCategory:(id)self3 isDeferredPayment:(BOOL)self4 tokenIssuanceDate:(id)self5 issuerServiceURL:(id)self6 issuerName:(id)self7 disallowUserRevoke:(BOOL)self8
{
  idCopy = id;
  identifierCopy = identifier;
  nameCopy = name;
  suffixCopy = suffix;
  merchantIdCopy = merchantId;
  merchantNameCopy = merchantName;
  domainCopy = domain;
  applicationIdentifierCopy = applicationIdentifier;
  lCopy = l;
  rLCopy = rL;
  v26 = nameCopy;
  categoryCopy = category;
  dateCopy = date;
  uRLCopy = uRL;
  issuerNameCopy = issuerName;
  v59.receiver = self;
  v59.super_class = PKMerchantToken;
  v31 = [(PKMerchantToken *)&v59 init];
  if (v31)
  {
    v32 = [idCopy copy];
    merchantTokenId = v31->_merchantTokenId;
    v31->_merchantTokenId = v32;

    v34 = [identifierCopy copy];
    primaryAccountIdentifier = v31->_primaryAccountIdentifier;
    v31->_primaryAccountIdentifier = v34;

    v36 = [v26 copy];
    primaryAccountDisplayName = v31->_primaryAccountDisplayName;
    v31->_primaryAccountDisplayName = v36;

    v38 = [suffixCopy copy];
    primaryAccountSuffix = v31->_primaryAccountSuffix;
    v31->_primaryAccountSuffix = v38;

    v40 = [merchantIdCopy copy];
    appleMerchantId = v31->_appleMerchantId;
    v31->_appleMerchantId = v40;

    v42 = [merchantNameCopy copy];
    merchantName = v31->_merchantName;
    v31->_merchantName = v42;

    v44 = [domainCopy copy];
    merchantDomain = v31->_merchantDomain;
    v31->_merchantDomain = v44;

    v46 = [applicationIdentifierCopy copy];
    merchantApplicationIdentifier = v31->_merchantApplicationIdentifier;
    v31->_merchantApplicationIdentifier = v46;

    objc_storeStrong(&v31->_merchantIconURL, l);
    objc_storeStrong(&v31->_merchantTokenManagementURL, rL);
    v48 = [categoryCopy copy];
    tokenCategory = v31->_tokenCategory;
    v31->_tokenCategory = v48;

    v31->_isDeferredPayment = payment;
    objc_storeStrong(&v31->_tokenIssuanceDate, date);
    objc_storeStrong(&v31->_issuerServiceURL, uRL);
    objc_storeStrong(&v31->_issuerName, issuerName);
    v31->_disallowUserRevoke = revoke;
  }

  return v31;
}

- (PKMerchantToken)initWithMerchantTokenId:(id)id primaryAccountIdentifier:(id)identifier appleMerchantId:(id)merchantId merchantName:(id)name merchantTokenManagementURL:(id)l tokenCategory:(id)category tokenIssuanceDate:(id)date
{
  LOBYTE(v11) = 0;
  LOBYTE(v10) = 0;
  return [(PKMerchantToken *)self initWithMerchantTokenId:id primaryAccountIdentifier:identifier primaryAccountDisplayName:0 primaryAccountSuffix:0 appleMerchantId:merchantId merchantName:name merchantDomain:0 merchantApplicationIdentifier:0 merchantIconURL:0 merchantTokenManagementURL:l tokenCategory:category isDeferredPayment:v10 tokenIssuanceDate:date issuerServiceURL:0 issuerName:0 disallowUserRevoke:v11];
}

- (PKMerchantToken)initWithMerchantTokenId:(id)id appleMerchantId:(id)merchantId merchantName:(id)name merchantIconURL:(id)l merchantTokenManagementURL:(id)rL tokenCategory:(id)category isDeferredPayment:(BOOL)payment issuerServiceURL:(id)self0 disallowUserRevoke:(BOOL)self1
{
  v17 = MEMORY[0x1E695DF00];
  uRLCopy = uRL;
  categoryCopy = category;
  rLCopy = rL;
  lCopy = l;
  nameCopy = name;
  merchantIdCopy = merchantId;
  idCopy = id;
  date = [v17 date];
  LOBYTE(v29) = revoke;
  LOBYTE(v28) = payment;
  v26 = [(PKMerchantToken *)self initWithMerchantTokenId:idCopy primaryAccountIdentifier:@"unknown" primaryAccountDisplayName:0 primaryAccountSuffix:0 appleMerchantId:merchantIdCopy merchantName:nameCopy merchantDomain:0 merchantApplicationIdentifier:0 merchantIconURL:lCopy merchantTokenManagementURL:rLCopy tokenCategory:categoryCopy isDeferredPayment:v28 tokenIssuanceDate:date issuerServiceURL:uRLCopy issuerName:0 disallowUserRevoke:v29];

  return v26;
}

- (PKMerchantToken)initWithMerchantTokenId:(id)id appleMerchantId:(id)merchantId merchantName:(id)name merchantIconURL:(id)l merchantTokenManagementURL:(id)rL tokenCategory:(id)category isDeferredPayment:(BOOL)payment
{
  LOBYTE(v11) = 0;
  LOBYTE(v10) = payment;
  return [(PKMerchantToken *)self initWithMerchantTokenId:id appleMerchantId:merchantId merchantName:name merchantIconURL:l merchantTokenManagementURL:rL tokenCategory:category isDeferredPayment:v10 issuerServiceURL:0 disallowUserRevoke:v11];
}

- (PKMerchantToken)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v51.receiver = self;
  v51.super_class = PKMerchantToken;
  v5 = [(PKMerchantToken *)&v51 init];
  if (!v5)
  {
LABEL_23:
    v6 = v5;
    goto LABEL_24;
  }

  v6 = [dictionaryCopy PKStringForKey:@"fpanId"];
  if (v6)
  {
    objc_storeStrong(&v5->_primaryAccountIdentifier, v6);
    v7 = [dictionaryCopy PKStringForKey:@"cardName"];
    primaryAccountDisplayName = v5->_primaryAccountDisplayName;
    v5->_primaryAccountDisplayName = v7;

    v9 = [dictionaryCopy PKStringForKey:@"fpanSuffix"];
    pk_stringIfNotEmpty = [v9 pk_stringIfNotEmpty];
    primaryAccountSuffix = v5->_primaryAccountSuffix;
    v5->_primaryAccountSuffix = pk_stringIfNotEmpty;

    v12 = [dictionaryCopy PKStringForKey:@"merchantTokenId"];
    if (v12)
    {
      v13 = v12;
      objc_storeStrong(&v5->_merchantTokenId, v12);
      v14 = [dictionaryCopy PKStringForKey:@"appleMerchantId"];
      if (v14)
      {
        v15 = v14;
        objc_storeStrong(&v5->_appleMerchantId, v14);
        v16 = [dictionaryCopy PKStringForKey:@"merchantName"];
        if (v16)
        {
          v17 = v16;
          objc_storeStrong(&v5->_merchantName, v16);
          v18 = [dictionaryCopy PKStringForKey:@"merchantDomain"];
          merchantDomain = v5->_merchantDomain;
          v5->_merchantDomain = v18;

          v20 = [dictionaryCopy PKStringForKey:@"merchantAppId"];
          merchantApplicationIdentifier = v5->_merchantApplicationIdentifier;
          v5->_merchantApplicationIdentifier = v20;

          v22 = [dictionaryCopy PKStringForKey:@"merchantIconURL"];
          v23 = [v22 length];

          if (v23)
          {
            v24 = [dictionaryCopy PKURLForKey:@"merchantIconURL"];
            merchantIconURL = v5->_merchantIconURL;
            v5->_merchantIconURL = v24;
          }

          v26 = [dictionaryCopy PKURLForKey:@"merchantTokenManagementURL"];
          if (v26)
          {
            v27 = v26;
            objc_storeStrong(&v5->_merchantTokenManagementURL, v26);
            v28 = [dictionaryCopy PKStringForKey:@"tokenCategory"];
            if (v28)
            {
              v29 = v28;
              objc_storeStrong(&v5->_tokenCategory, v28);
              v30 = [dictionaryCopy PKDateForKey:@"merchantTokenIssuanceDate"];
              if (v30)
              {
                v50 = v30;
                objc_storeStrong(&v5->_tokenIssuanceDate, v30);
                v31 = [dictionaryCopy PKDictionaryForKey:@"tokenRequestAttributes"];
                v5->_isDeferredPayment = [v31 PKBoolForKey:@"deferredPayment"];
                v32 = [v31 PKURLForKey:@"issuerServiceURL"];
                issuerServiceURL = v5->_issuerServiceURL;
                v5->_issuerServiceURL = v32;

                v34 = [dictionaryCopy PKStringForKey:@"issuerName"];
                issuerName = v5->_issuerName;
                v5->_issuerName = v34;

                v49 = v31;
                v5->_disallowUserRevoke = [v31 PKBoolForKey:@"disallowUserRevoke"];
                v48 = [dictionaryCopy PKStringForKey:@"currentMerchantTokenPublicKeyHash"];
                pk_decodeHexadecimal = [v48 pk_decodeHexadecimal];
                currentMerchantTokenPublicKeyHash = v5->_currentMerchantTokenPublicKeyHash;
                v5->_currentMerchantTokenPublicKeyHash = pk_decodeHexadecimal;

                v5->_needsMerchantTokenPublicKey = [dictionaryCopy PKBoolForKey:@"needsMerchantTokenPublicKey"];
                v38 = [dictionaryCopy PKArrayForKey:@"cardArt"];
                v39 = [PKMerchantToken extractCardArtFromArray:v38 withPrefix:@"cardBackgroundCombined"];
                v40 = v39;
                v47 = v38;
                if (v39)
                {
                  v41 = v39;
                }

                else
                {
                  v41 = [PKMerchantToken extractCardArtFromArray:v38 withPrefix:@"cardBackground", v38];
                }

                primaryAccountPassArtURL = v5->_primaryAccountPassArtURL;
                v5->_primaryAccountPassArtURL = v41;

                v43 = [dictionaryCopy PKDictionaryForKey:@"merchantTokenUsageMetadata"];
                if (v43)
                {
                  v44 = [[PKMerchantTokenUsageMetadata alloc] initWithDictionary:v43];
                  usageMetadata = v5->_usageMetadata;
                  v5->_usageMetadata = v44;
                }

                goto LABEL_23;
              }
            }
          }
        }
      }
    }

    v6 = 0;
  }

LABEL_24:

  return v6;
}

+ (id)extractCardArtFromArray:(id)array withPrefix:(id)prefix
{
  prefixCopy = prefix;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__PKMerchantToken_extractCardArtFromArray_withPrefix___block_invoke;
  v10[3] = &unk_1E79C9078;
  v11 = prefixCopy;
  v6 = prefixCopy;
  v7 = [array pk_firstObjectPassingTest:v10];
  v8 = [v7 PKURLForKey:@"url"];

  return v8;
}

uint64_t __54__PKMerchantToken_extractCardArtFromArray_withPrefix___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 PKStringForKey:@"name"];
    v5 = [v4 hasPrefix:*(a1 + 32)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end