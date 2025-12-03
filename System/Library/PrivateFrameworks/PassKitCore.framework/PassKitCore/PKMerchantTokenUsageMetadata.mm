@interface PKMerchantTokenUsageMetadata
- (PKMerchantTokenUsageMetadata)initWithDictionary:(id)dictionary;
@end

@implementation PKMerchantTokenUsageMetadata

- (PKMerchantTokenUsageMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v33.receiver = self;
  v33.super_class = PKMerchantTokenUsageMetadata;
  v5 = [(PKMerchantTokenUsageMetadata *)&v33 init];
  if (!v5)
  {
LABEL_23:
    v6 = v5;
    goto LABEL_24;
  }

  v5->_updateSequenceNumber = [dictionaryCopy PKIntegerForKey:@"updateSequenceNumber"];
  v6 = [dictionaryCopy PKDateForKey:@"lastUpdatedByMerchant"];
  if (v6)
  {
    objc_storeStrong(&v5->_updateDate, v6);
    v7 = [dictionaryCopy PKDateForKey:@"defaultExpiryDate"];
    if (v7)
    {
      v8 = v7;
      objc_storeStrong(&v5->_defaultExpirationDate, v7);
      v9 = [dictionaryCopy PKDateForKey:@"maximumExpiryDate"];
      if (v9)
      {
        v10 = v9;
        objc_storeStrong(&v5->_maximumExpirationDate, v9);
        v11 = [dictionaryCopy PKStringForKey:@"ciphersuite"];
        if ([v11 isEqualToString:@"HPKE_AUTH_P384_SHA384_AES_GCM_256"])
        {
          objc_storeStrong(&v5->_ciphersuite, v11);
          v12 = [dictionaryCopy PKStringForKey:@"merchantTokenPublicKeyHash"];
          pk_decodeHexadecimal = [v12 pk_decodeHexadecimal];
          if (pk_decodeHexadecimal)
          {
            v14 = pk_decodeHexadecimal;
            v32 = v12;
            objc_storeStrong(&v5->_merchantTokenPublicKeyHash, pk_decodeHexadecimal);
            v15 = [dictionaryCopy PKStringForKey:@"ephemeralPublicKey"];
            v16 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v15 options:0];
            if (v16)
            {
              v17 = v16;
              v31 = v15;
              objc_storeStrong(&v5->_ephemeralPublicKey, v16);
              v18 = [dictionaryCopy PKStringForKey:@"merchantPublicKey"];
              v19 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v18 options:0];
              if (v19)
              {
                v29 = v17;
                v30 = v19;
                objc_storeStrong(&v5->_merchantPublicKey, v19);
                v20 = [dictionaryCopy PKStringForKey:@"infoHash"];
                pk_decodeHexadecimal2 = [v20 pk_decodeHexadecimal];
                v22 = pk_decodeHexadecimal2;
                if (pk_decodeHexadecimal2)
                {
                  v27 = pk_decodeHexadecimal2;
                  v28 = v18;
                  objc_storeStrong(&v5->_infoHash, pk_decodeHexadecimal2);
                  v26 = [dictionaryCopy PKStringForKey:@"data"];
                  v23 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v26 options:0];
                  v24 = v23 != 0;
                  if (v23)
                  {
                    objc_storeStrong(&v5->_data, v23);
                  }

                  v22 = v27;
                  v18 = v28;
                }

                else
                {
                  v24 = 0;
                }

                if (v24)
                {
                  goto LABEL_23;
                }

                goto LABEL_20;
              }
            }

            else
            {
            }
          }

          else
          {
          }
        }
      }
    }

LABEL_20:
    v6 = 0;
  }

LABEL_24:

  return v6;
}

@end