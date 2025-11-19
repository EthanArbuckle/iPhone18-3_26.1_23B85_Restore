@interface PKMerchantToken
+ (id)extractCardArtFromArray:(id)a3 withPrefix:(id)a4;
- (PKMerchantToken)initWithDictionary:(id)a3;
- (PKMerchantToken)initWithMerchantTokenId:(id)a3 appleMerchantId:(id)a4 merchantName:(id)a5 merchantIconURL:(id)a6 merchantTokenManagementURL:(id)a7 tokenCategory:(id)a8 isDeferredPayment:(BOOL)a9;
- (PKMerchantToken)initWithMerchantTokenId:(id)a3 appleMerchantId:(id)a4 merchantName:(id)a5 merchantIconURL:(id)a6 merchantTokenManagementURL:(id)a7 tokenCategory:(id)a8 isDeferredPayment:(BOOL)a9 issuerServiceURL:(id)a10 disallowUserRevoke:(BOOL)a11;
- (PKMerchantToken)initWithMerchantTokenId:(id)a3 primaryAccountIdentifier:(id)a4 appleMerchantId:(id)a5 merchantName:(id)a6 merchantTokenManagementURL:(id)a7 tokenCategory:(id)a8 tokenIssuanceDate:(id)a9;
- (PKMerchantToken)initWithMerchantTokenId:(id)a3 primaryAccountIdentifier:(id)a4 primaryAccountDisplayName:(id)a5 primaryAccountSuffix:(id)a6 appleMerchantId:(id)a7 merchantName:(id)a8 merchantDomain:(id)a9 merchantApplicationIdentifier:(id)a10 merchantIconURL:(id)a11 merchantTokenManagementURL:(id)a12 tokenCategory:(id)a13 isDeferredPayment:(BOOL)a14 tokenIssuanceDate:(id)a15 issuerServiceURL:(id)a16 issuerName:(id)a17 disallowUserRevoke:(BOOL)a18;
@end

@implementation PKMerchantToken

- (PKMerchantToken)initWithMerchantTokenId:(id)a3 primaryAccountIdentifier:(id)a4 primaryAccountDisplayName:(id)a5 primaryAccountSuffix:(id)a6 appleMerchantId:(id)a7 merchantName:(id)a8 merchantDomain:(id)a9 merchantApplicationIdentifier:(id)a10 merchantIconURL:(id)a11 merchantTokenManagementURL:(id)a12 tokenCategory:(id)a13 isDeferredPayment:(BOOL)a14 tokenIssuanceDate:(id)a15 issuerServiceURL:(id)a16 issuerName:(id)a17 disallowUserRevoke:(BOOL)a18
{
  v55 = a3;
  v54 = a4;
  v22 = a5;
  v53 = a6;
  v58 = a7;
  v57 = a8;
  v23 = a9;
  v24 = a10;
  v52 = a11;
  v25 = a12;
  v26 = v22;
  v27 = a13;
  v28 = a15;
  v29 = a16;
  v30 = a17;
  v59.receiver = self;
  v59.super_class = PKMerchantToken;
  v31 = [(PKMerchantToken *)&v59 init];
  if (v31)
  {
    v32 = [v55 copy];
    merchantTokenId = v31->_merchantTokenId;
    v31->_merchantTokenId = v32;

    v34 = [v54 copy];
    primaryAccountIdentifier = v31->_primaryAccountIdentifier;
    v31->_primaryAccountIdentifier = v34;

    v36 = [v26 copy];
    primaryAccountDisplayName = v31->_primaryAccountDisplayName;
    v31->_primaryAccountDisplayName = v36;

    v38 = [v53 copy];
    primaryAccountSuffix = v31->_primaryAccountSuffix;
    v31->_primaryAccountSuffix = v38;

    v40 = [v58 copy];
    appleMerchantId = v31->_appleMerchantId;
    v31->_appleMerchantId = v40;

    v42 = [v57 copy];
    merchantName = v31->_merchantName;
    v31->_merchantName = v42;

    v44 = [v23 copy];
    merchantDomain = v31->_merchantDomain;
    v31->_merchantDomain = v44;

    v46 = [v24 copy];
    merchantApplicationIdentifier = v31->_merchantApplicationIdentifier;
    v31->_merchantApplicationIdentifier = v46;

    objc_storeStrong(&v31->_merchantIconURL, a11);
    objc_storeStrong(&v31->_merchantTokenManagementURL, a12);
    v48 = [v27 copy];
    tokenCategory = v31->_tokenCategory;
    v31->_tokenCategory = v48;

    v31->_isDeferredPayment = a14;
    objc_storeStrong(&v31->_tokenIssuanceDate, a15);
    objc_storeStrong(&v31->_issuerServiceURL, a16);
    objc_storeStrong(&v31->_issuerName, a17);
    v31->_disallowUserRevoke = a18;
  }

  return v31;
}

- (PKMerchantToken)initWithMerchantTokenId:(id)a3 primaryAccountIdentifier:(id)a4 appleMerchantId:(id)a5 merchantName:(id)a6 merchantTokenManagementURL:(id)a7 tokenCategory:(id)a8 tokenIssuanceDate:(id)a9
{
  LOBYTE(v11) = 0;
  LOBYTE(v10) = 0;
  return [(PKMerchantToken *)self initWithMerchantTokenId:a3 primaryAccountIdentifier:a4 primaryAccountDisplayName:0 primaryAccountSuffix:0 appleMerchantId:a5 merchantName:a6 merchantDomain:0 merchantApplicationIdentifier:0 merchantIconURL:0 merchantTokenManagementURL:a7 tokenCategory:a8 isDeferredPayment:v10 tokenIssuanceDate:a9 issuerServiceURL:0 issuerName:0 disallowUserRevoke:v11];
}

- (PKMerchantToken)initWithMerchantTokenId:(id)a3 appleMerchantId:(id)a4 merchantName:(id)a5 merchantIconURL:(id)a6 merchantTokenManagementURL:(id)a7 tokenCategory:(id)a8 isDeferredPayment:(BOOL)a9 issuerServiceURL:(id)a10 disallowUserRevoke:(BOOL)a11
{
  v17 = MEMORY[0x1E695DF00];
  v18 = a10;
  v19 = a8;
  v20 = a7;
  v21 = a6;
  v22 = a5;
  v23 = a4;
  v24 = a3;
  v25 = [v17 date];
  LOBYTE(v29) = a11;
  LOBYTE(v28) = a9;
  v26 = [(PKMerchantToken *)self initWithMerchantTokenId:v24 primaryAccountIdentifier:@"unknown" primaryAccountDisplayName:0 primaryAccountSuffix:0 appleMerchantId:v23 merchantName:v22 merchantDomain:0 merchantApplicationIdentifier:0 merchantIconURL:v21 merchantTokenManagementURL:v20 tokenCategory:v19 isDeferredPayment:v28 tokenIssuanceDate:v25 issuerServiceURL:v18 issuerName:0 disallowUserRevoke:v29];

  return v26;
}

- (PKMerchantToken)initWithMerchantTokenId:(id)a3 appleMerchantId:(id)a4 merchantName:(id)a5 merchantIconURL:(id)a6 merchantTokenManagementURL:(id)a7 tokenCategory:(id)a8 isDeferredPayment:(BOOL)a9
{
  LOBYTE(v11) = 0;
  LOBYTE(v10) = a9;
  return [(PKMerchantToken *)self initWithMerchantTokenId:a3 appleMerchantId:a4 merchantName:a5 merchantIconURL:a6 merchantTokenManagementURL:a7 tokenCategory:a8 isDeferredPayment:v10 issuerServiceURL:0 disallowUserRevoke:v11];
}

- (PKMerchantToken)initWithDictionary:(id)a3
{
  v4 = a3;
  v51.receiver = self;
  v51.super_class = PKMerchantToken;
  v5 = [(PKMerchantToken *)&v51 init];
  if (!v5)
  {
LABEL_23:
    v6 = v5;
    goto LABEL_24;
  }

  v6 = [v4 PKStringForKey:@"fpanId"];
  if (v6)
  {
    objc_storeStrong(&v5->_primaryAccountIdentifier, v6);
    v7 = [v4 PKStringForKey:@"cardName"];
    primaryAccountDisplayName = v5->_primaryAccountDisplayName;
    v5->_primaryAccountDisplayName = v7;

    v9 = [v4 PKStringForKey:@"fpanSuffix"];
    v10 = [v9 pk_stringIfNotEmpty];
    primaryAccountSuffix = v5->_primaryAccountSuffix;
    v5->_primaryAccountSuffix = v10;

    v12 = [v4 PKStringForKey:@"merchantTokenId"];
    if (v12)
    {
      v13 = v12;
      objc_storeStrong(&v5->_merchantTokenId, v12);
      v14 = [v4 PKStringForKey:@"appleMerchantId"];
      if (v14)
      {
        v15 = v14;
        objc_storeStrong(&v5->_appleMerchantId, v14);
        v16 = [v4 PKStringForKey:@"merchantName"];
        if (v16)
        {
          v17 = v16;
          objc_storeStrong(&v5->_merchantName, v16);
          v18 = [v4 PKStringForKey:@"merchantDomain"];
          merchantDomain = v5->_merchantDomain;
          v5->_merchantDomain = v18;

          v20 = [v4 PKStringForKey:@"merchantAppId"];
          merchantApplicationIdentifier = v5->_merchantApplicationIdentifier;
          v5->_merchantApplicationIdentifier = v20;

          v22 = [v4 PKStringForKey:@"merchantIconURL"];
          v23 = [v22 length];

          if (v23)
          {
            v24 = [v4 PKURLForKey:@"merchantIconURL"];
            merchantIconURL = v5->_merchantIconURL;
            v5->_merchantIconURL = v24;
          }

          v26 = [v4 PKURLForKey:@"merchantTokenManagementURL"];
          if (v26)
          {
            v27 = v26;
            objc_storeStrong(&v5->_merchantTokenManagementURL, v26);
            v28 = [v4 PKStringForKey:@"tokenCategory"];
            if (v28)
            {
              v29 = v28;
              objc_storeStrong(&v5->_tokenCategory, v28);
              v30 = [v4 PKDateForKey:@"merchantTokenIssuanceDate"];
              if (v30)
              {
                v50 = v30;
                objc_storeStrong(&v5->_tokenIssuanceDate, v30);
                v31 = [v4 PKDictionaryForKey:@"tokenRequestAttributes"];
                v5->_isDeferredPayment = [v31 PKBoolForKey:@"deferredPayment"];
                v32 = [v31 PKURLForKey:@"issuerServiceURL"];
                issuerServiceURL = v5->_issuerServiceURL;
                v5->_issuerServiceURL = v32;

                v34 = [v4 PKStringForKey:@"issuerName"];
                issuerName = v5->_issuerName;
                v5->_issuerName = v34;

                v49 = v31;
                v5->_disallowUserRevoke = [v31 PKBoolForKey:@"disallowUserRevoke"];
                v48 = [v4 PKStringForKey:@"currentMerchantTokenPublicKeyHash"];
                v36 = [v48 pk_decodeHexadecimal];
                currentMerchantTokenPublicKeyHash = v5->_currentMerchantTokenPublicKeyHash;
                v5->_currentMerchantTokenPublicKeyHash = v36;

                v5->_needsMerchantTokenPublicKey = [v4 PKBoolForKey:@"needsMerchantTokenPublicKey"];
                v38 = [v4 PKArrayForKey:@"cardArt"];
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

                v43 = [v4 PKDictionaryForKey:@"merchantTokenUsageMetadata"];
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

+ (id)extractCardArtFromArray:(id)a3 withPrefix:(id)a4
{
  v5 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__PKMerchantToken_extractCardArtFromArray_withPrefix___block_invoke;
  v10[3] = &unk_1E79C9078;
  v11 = v5;
  v6 = v5;
  v7 = [a3 pk_firstObjectPassingTest:v10];
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