@interface NPKPeerPaymentQuickTypeParser
- (NPKPeerPaymentQuickTypeParser)initWithSupportedCurrencyCodes:(id)a3 allowedPayloadIDs:(id)a4;
- (id)parsePayload:(id)a3 payloadID:(id)a4 maxCount:(unint64_t)a5;
@end

@implementation NPKPeerPaymentQuickTypeParser

- (NPKPeerPaymentQuickTypeParser)initWithSupportedCurrencyCodes:(id)a3 allowedPayloadIDs:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = NPKPeerPaymentQuickTypeParser;
  v8 = [(NPKPeerPaymentQuickTypeParser *)&v14 init];
  if (v8)
  {
    v9 = [MEMORY[0x277CBEB98] setWithArray:v6];
    supportedCurrencyCodes = v8->_supportedCurrencyCodes;
    v8->_supportedCurrencyCodes = v9;

    v11 = [MEMORY[0x277CBEB98] setWithArray:v7];
    allowedPayloadIDs = v8->_allowedPayloadIDs;
    v8->_allowedPayloadIDs = v11;
  }

  return v8;
}

- (id)parsePayload:(id)a3 payloadID:(id)a4 maxCount:(unint64_t)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = pk_General_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = pk_General_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v39 = v9;
      v40 = 2112;
      v41 = v8;
      _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: Starting Parse payload for PayloadID:%@ payload:%@", buf, 0x16u);
    }
  }

  v13 = [MEMORY[0x277CBEB18] array];
  v14 = [(NPKPeerPaymentQuickTypeParser *)self allowedPayloadIDs];
  v15 = v9;
  v16 = v14;
  if (![v16 count])
  {

    goto LABEL_10;
  }

  if (!v15)
  {

    goto LABEL_16;
  }

  v17 = [v16 containsObject:v15];

  if (v17)
  {
LABEL_10:
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = [(NPKPeerPaymentQuickTypeParser *)self supportedCurrencyCodes];
    v21 = [v8 npk_objectForKey:@"DirectlyInitiate" class:objc_opt_class()];
    v22 = pk_General_log();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);

    if (v23)
    {
      v24 = pk_General_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v39 = v21;
        _os_log_impl(&dword_25B300000, v24, OS_LOG_TYPE_DEFAULT, "Notice: Value for directly initiate:%@", buf, 0xCu);
      }
    }

    v25 = [v8 npk_objectForKey:@"Currency" class:objc_opt_class()];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __65__NPKPeerPaymentQuickTypeParser_parsePayload_payloadID_maxCount___block_invoke;
    v32[3] = &unk_279945EC8;
    v35 = v18;
    v36 = v19;
    v33 = v20;
    v34 = v13;
    v37 = a5;
    v26 = v20;
    [v25 enumerateObjectsUsingBlock:v32];

    goto LABEL_20;
  }

LABEL_16:
  v27 = pk_General_log();
  v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);

  if (v28)
  {
    v25 = pk_General_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v39 = v15;
      _os_log_impl(&dword_25B300000, v25, OS_LOG_TYPE_DEFAULT, "Warning: PayloadID:%@ Not allowed", buf, 0xCu);
    }

    v21 = 0;
LABEL_20:

    goto LABEL_22;
  }

  v21 = 0;
LABEL_22:
  v29 = [[NPKPeerPaymentQuickTypeParserData alloc] initWithCurrenciesData:v13 directlyInitiate:v21];

  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

void __65__NPKPeerPaymentQuickTypeParser_parsePayload_payloadID_maxCount___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = *(a1 + 48);
  if (objc_opt_isKindOfClass())
  {
    v8 = [v6 npk_objectForKey:@"CurrencyType" class:*(a1 + 56)];
    v9 = *(a1 + 32);
    v10 = v8;
    v11 = v9;
    v12 = v11;
    if (v10)
    {
      if (![v11 count])
      {

        goto LABEL_14;
      }

      v13 = [v12 containsObject:v10];

      if (v13)
      {
LABEL_14:
        v18 = [v6 npk_objectForKey:@"CurrencyValue" class:*(a1 + 56)];
        if (v18)
        {
          v19 = [MEMORY[0x277CCA980] decimalNumberWithString:v18];
          if (v19)
          {
            v20 = [MEMORY[0x277CCA980] notANumber];
            v21 = [(NSDecimalNumber *)v19 isEqual:v20];

            if ((v21 & 1) == 0)
            {
              v22 = PKCurrencyAmountCreate(v19, &v10->isa);
              if (v22)
              {
                v23 = pk_General_log();
                v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);

                if (v24)
                {
                  v25 = pk_General_log();
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                  {
                    v35 = 138412290;
                    v36 = v22;
                    _os_log_impl(&dword_25B300000, v25, OS_LOG_TYPE_DEFAULT, "Notice: found valid amount:%@", &v35, 0xCu);
                  }
                }

                v26 = [v6 npk_objectForKey:@"SenderHandle" class:*(a1 + 56)];
                if ([v26 length])
                {
                  v27 = pk_General_log();
                  v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);

                  if (v28)
                  {
                    v29 = pk_General_log();
                    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                    {
                      v35 = 138412290;
                      v36 = v26;
                      _os_log_impl(&dword_25B300000, v29, OS_LOG_TYPE_DEFAULT, "Notice: found sender handle:%@", &v35, 0xCu);
                    }
                  }
                }

                v30 = [[NPKPeerPaymentQuickTypeParserCurrencyData alloc] initWithCurrencyAmount:v22 senderHandle:v26];
                [*(a1 + 40) addObject:v30];
              }

              v31 = *(a1 + 64);
              if (v31)
              {
                LOBYTE(v31) = [*(a1 + 40) count] == *(a1 + 64);
              }

              *a4 = v31;
              goto LABEL_35;
            }
          }
        }

        else
        {
          v19 = 0;
        }

        v32 = pk_General_log();
        v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);

        if (!v33)
        {
LABEL_36:

          goto LABEL_37;
        }

        v22 = pk_General_log();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v35 = 138412290;
          v36 = v6;
          _os_log_impl(&dword_25B300000, v22, OS_LOG_TYPE_DEFAULT, "Warning: Not supported value from info:%@", &v35, 0xCu);
        }

LABEL_35:

        goto LABEL_36;
      }
    }

    else
    {
    }

    v16 = pk_General_log();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

    if (!v17)
    {
LABEL_38:

      goto LABEL_39;
    }

    v18 = pk_General_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v35 = 138412290;
      v36 = v6;
      _os_log_impl(&dword_25B300000, v18, OS_LOG_TYPE_DEFAULT, "Warning: Not supported currency code from info:%@", &v35, 0xCu);
    }

LABEL_37:

    goto LABEL_38;
  }

  v14 = pk_General_log();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

  if (v15)
  {
    v10 = pk_General_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v35 = 138412290;
      v36 = v6;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Warning: Not supported currency value from info:%@", &v35, 0xCu);
    }

    goto LABEL_38;
  }

LABEL_39:

  v34 = *MEMORY[0x277D85DE8];
}

@end